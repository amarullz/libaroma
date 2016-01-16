/********************************************************************[libaroma]*
 * Copyright (C) 2011-2015 Ahmad Amarullah (http://amarullz.com/)
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *______________________________________________________________________________
 *
 * Filename    : ctl_scroll.c
 * Description : scroll control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 12/02/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_ctl_scroll_c__
#define __libaroma_ctl_scroll_c__
#include <aroma_internal.h>
#include "../ui/ui_internal.h"

/* HANDLER */
dword _libaroma_ctl_scroll_msg(LIBAROMA_CONTROLP, LIBAROMA_MSGP);
void _libaroma_ctl_scroll_draw (LIBAROMA_CONTROLP, LIBAROMA_CANVASP);
void _libaroma_ctl_scroll_destroy(LIBAROMA_CONTROLP);
byte _libaroma_ctl_scroll_thread(LIBAROMA_CONTROLP);
static LIBAROMA_CONTROL_HANDLER _libaroma_ctl_scroll_handler={
  message:_libaroma_ctl_scroll_msg,
  draw:_libaroma_ctl_scroll_draw,
  focus:NULL,
  destroy:_libaroma_ctl_scroll_destroy,
  thread:_libaroma_ctl_scroll_thread
};

/*
 * SCROLL CONTROL BEHAVIOUR CONFIGURATIONS
 *
 */
/* max cache height size */
#define _LIBAROMA_CTL_SCROLL_MAX_CACHE          (libaroma_fb()->h * 10)
/* size of touch handle */
#define _LIBAROMA_CTL_SCROLL_HANDLE_DP                  36
/* wait ms before it send down event to client */
#define _LIBAROMA_CTL_SCROLL_TOUCH_CLIENT_WAIT          120
/* minimal touch y-move in dp if client request touch message */
#define _LIBAROMA_CTL_SCROLL_MIN_ALOWSCROLL_DP          24
/* minimal touch y-move in dp if client doesn't request touch message */
#define _LIBAROMA_CTL_SCROLL_MIN_ALOWSCROLL_DP_NOITEM   5

/*
  #define LIBAROMA_CTL_SCROLL_WITH_MAX_CACHE 1
  #define LIBAROMA_CTL_SCROLL_WITH_CACHE_THREAD 1
*/

/*
 * Structure   : __LIBAROMA_CTL_SCROLL
 * Typedef     : _LIBAROMA_CTL_SCROLL, * _LIBAROMA_CTL_SCROLLP
 * Descriptions: button control internal structure
 */
typedef struct __LIBAROMA_CTL_SCROLL _LIBAROMA_CTL_SCROLL;
typedef struct __LIBAROMA_CTL_SCROLL * _LIBAROMA_CTL_SCROLLP;
struct __LIBAROMA_CTL_SCROLL{
  /* drawing & canvas */
  LIBAROMA_CANVASP client_canvas;
  word color_bg;
  byte flags;
  
  /* threads */
  byte active;
#ifdef LIBAROMA_CTL_SCROLL_WITH_CACHE_THREAD
  LIBAROMA_THREAD cache_thread;
#endif
  LIBAROMA_THREAD calc_thread;
  
  /* scrolling values */
  int request_new_height;
  int scroll_y;
  int client_h;
  int max_scroll_y;
  int request_scroll_y;
  long scroll_tick;
  int scroll_state;
  
  /* cache values */
  byte cache_state;
  byte move_state;
  int cache_y;
  int draw_y;
  int synced_y;
  long scroll_handle_time;
  
  /* touch event */
  byte touched;
  byte handle_touched;
  byte allow_scroll;
  int touch_x;
  int touch_y;
  int touch_scroll_y;
  
  /* client touch event */
  long client_touch_start;
  byte client_touched;
  
  /* overshoot */
  byte ovs_bounce;
  long ovs_start;
  float ovs_state;
  float ovs_ustate;
  long ovs_ustart;
  int ovs_x;
  int ovs_y;
  
  /* fling items */
  int bounce_velocity;
  int velocity;
  LIBAROMA_FLING fling;
  
  /* client data */
  LIBAROMA_CTL_SCROLL_CLIENT client;
  LIBAROMA_MUTEX mutex;
  LIBAROMA_MUTEX fmutex;
  LIBAROMA_MUTEX blitmutex;
  
  LIBAROMA_COND_MUTEX  cmutex;
  LIBAROMA_COND   ccond;
  
  /* minscroll handler */
  LIBAROMA_CTL_SCROLL_MINSCROLL_HANDLER minscroll_cb;
  int minscroll_y;
};

/*
 * Function    : _libaroma_ctl_scroll_client_msg
 * Return Value: dword
 * Descriptions: send client message
 */
dword _libaroma_ctl_scroll_client_msg(
    LIBAROMA_CONTROLP ctl, byte message, int x, int y
){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client.handler->message){
    LIBAROMA_MSG msgc;
    libaroma_wm_compose(
      &msgc,
      LIBAROMA_CTL_SCROLL_MSG,
      NULL,
      message,
      0
    );
    return me->client.handler->message(
      ctl, &me->client, &msgc, x, y
    );
  }
  return 0;
} /* End of _libaroma_ctl_scroll_client_msg */

/*
 * Function    : _libaroma_ctl_scroll_updatecache
 * Return Value: byte
 * Descriptions: update cache drawing
 */
byte _libaroma_ctl_scroll_updatecache(LIBAROMA_CONTROLP ctl, int move_sz){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client_canvas==NULL){
    return 0;
  }
  
  libaroma_mutex_lock(me->fmutex);
  int move_value=0;
  int cvhsz = (me->client_canvas->h / 2);
  
  if (move_sz<0){
    /* draw top */
    move_value = 0-cvhsz;
    if (move_value>move_sz){
      move_value=move_sz;
    }
    if (me->draw_y+move_value<0){
      move_value=0-me->draw_y;
    }
  }
  else if (move_sz>0){
    /* draw bottom */
    move_value = cvhsz;
    if (move_value<move_sz){
      move_value=move_sz;
    }
    if (me->draw_y+move_value>me->max_scroll_y){
      move_value=me->max_scroll_y-me->draw_y;
    }
    if (move_value<0){
      move_value=0;
    }
  }
  
  if ((me->cache_state==10)||(me->cache_state==11)){
    me->cache_state=0;
    int client_y=me->draw_y;
    /* force redraw all */
    if (me->client.handler->draw!=NULL){
      me->client.handler->draw(
        ctl, &me->client, me->client_canvas,
        0,client_y,me->client_canvas->w,me->client_canvas->h
      );
    }
    else{
      libaroma_canvas_setcolor(me->client_canvas,me->color_bg,0xff);
    }
    me->cache_y=0;
    me->synced_y=-1;
    libaroma_mutex_unlock(me->fmutex);
    return 1;
  }
  me->cache_state=0;
  if (move_value!=0){
    byte is_top = (move_value<0)?1:0;
    int cache_h = abs(move_value);
    int cache_y = me->cache_y+move_value;
    int client_y= me->draw_y+(is_top?move_value:me->client_canvas->h);
    
    if (cache_y<0){
      cache_y = me->client_canvas->h + cache_y;
    }
    else if (cache_y>=me->client_canvas->h){
      cache_y = cache_y-me->client_canvas->h;
    }
    
    /* redrawing client */
    LIBAROMA_CANVASP redraw_canvas;
    
    int top_y=is_top?cache_y:cache_y-cache_h;
    int top_h=cache_h;
    int bottom_h=0;
    
    if (top_y<0){
      top_h = abs(top_y);
      bottom_h = cache_h - top_h;
      top_y = me->client_canvas->h-top_h;
    }
    else if (top_y+top_h>me->client_canvas->h){
      top_h = me->client_canvas->h - top_y;
      bottom_h = cache_h - top_h;
    }
    
    /* top section */
    if (top_h>0){
      redraw_canvas = libaroma_canvas_area(
        me->client_canvas, 0, top_y, me->client_canvas->w, top_h
      );
      if (me->client.handler->draw){
        me->client.handler->draw(
          ctl, &me->client, redraw_canvas,
          0, client_y, redraw_canvas->w, redraw_canvas->h
        );
      }
      else{
        libaroma_canvas_setcolor(redraw_canvas,me->color_bg,0xff);
      }
      libaroma_canvas_free(redraw_canvas);
    }
      
    /* bottom section */
    if (bottom_h>0){
      redraw_canvas = libaroma_canvas_area(
        me->client_canvas,
        0, 0, me->client_canvas->w, bottom_h
      );
      if (me->client.handler->draw){
        me->client.handler->draw(
          ctl, &me->client, redraw_canvas,
          0, client_y+top_h, redraw_canvas->w, redraw_canvas->h
        );
      }
      else{
        libaroma_canvas_setcolor(redraw_canvas,me->color_bg,0xff);
      }
      libaroma_canvas_free(redraw_canvas);
    }
    
    /* update info */
    me->cache_y=cache_y;
    me->draw_y+=move_value;
    me->synced_y=-1;
    libaroma_mutex_unlock(me->fmutex);
    return 1;
  }
  libaroma_mutex_unlock(me->fmutex);
  return 0;
} /* End of _libaroma_ctl_scroll_updatecache */

/*
 * Function    : _libaroma_ctl_scroll_check_update
 * Return Value: byte
 * Descriptions: check for cache update
 */
#ifdef LIBAROMA_CTL_SCROLL_WITH_MAX_CACHE
byte _libaroma_ctl_scroll_check_update(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  if ((me->client.handler)&&(me->client_canvas!=NULL)){
    if ((me->cache_state)&&(me->cache_state!=10)){
      int cvhsz = (me->client_canvas->h / 4);
      int draw_top = me->draw_y;
      int draw_bottom = draw_top+me->client_canvas->h;
      if (me->scroll_y<draw_top+me->cache_y){
        _libaroma_ctl_scroll_updatecache(ctl,-cvhsz);
        return 1;
      }
      else if (me->scroll_y>draw_bottom+me->cache_y){
        _libaroma_ctl_scroll_updatecache(ctl,cvhsz);
        return 1;
      }
      else if (me->move_state==1){
        if ((me->scroll_y<draw_top+cvhsz)&&(draw_top>0)){
          _libaroma_ctl_scroll_updatecache(ctl,-cvhsz);
          return 1;
        }
      }
      else if (me->move_state==2){
        if ((me->scroll_y>draw_bottom-cvhsz)&&(draw_bottom<me->client_h)){
          _libaroma_ctl_scroll_updatecache(ctl,cvhsz);
          return 1;
        }
      }
    }
  }
  return 0;
} /* End of _libaroma_ctl_scroll_check_update */
#endif

/*
 * Function    : _libaroma_ctl_scroll_cache_thread
 * Return Value: static void *
 * Descriptions: background cache updater
 */
#ifdef LIBAROMA_CTL_SCROLL_WITH_CACHE_THREAD
static void * _libaroma_ctl_scroll_cache_thread(void * cookie){
  LIBAROMA_CONTROLP ctl = (LIBAROMA_CONTROLP) cookie;
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  ALOGV("Start scroll updater thread");
  while (me->active){
    /* update new height */
    if (me->client.handler){
      if (me->request_new_height!=-1){
        libaroma_ctl_scroll_set_height(ctl,me->request_new_height);
        libaroma_mutex_lock(me->fmutex);
        me->request_new_height=-1;
        libaroma_mutex_unlock(me->fmutex);
      }
      if (me->cache_state==10){
        _libaroma_ctl_scroll_updatecache(ctl, 0);
      }
#ifdef LIBAROMA_CTL_SCROLL_WITH_MAX_CACHE
      else if (me->client_canvas!=NULL){
        if ((me->client_h>me->client_canvas->h)&&(me->request_new_height==-1)){
          _libaroma_ctl_scroll_check_update(ctl);
        }
      }
#endif
    }
    libaroma_sleep(1);
  }
  ALOGV("End scroll updater thread");
  return NULL;
} /* End of _libaroma_ctl_scroll_cache_thread */
#endif

/*
 * Function    : _libaroma_ctl_scroll_calc_thread
 * Return Value: static void *
 * Descriptions: background calculation updater
 */
static void * _libaroma_ctl_scroll_calc_thread(void * cookie){
  LIBAROMA_CONTROLP ctl = (LIBAROMA_CONTROLP) cookie;
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  ALOGI("Start scroll calculation thread");
  byte need_drawing = 0;
  while (me->active){
    libaroma_cond_lock(&me->cmutex);
    libaroma_cond_wait(&me->ccond, &me->cmutex);
    libaroma_cond_unlock(&me->cmutex);
    if (!me->active){
      break;
    }
    
    if (me->client.handler){
      /* run client thread */
      libaroma_mutex_lock(me->mutex);
      if ((me->client_touch_start!=0)&&
          (libaroma_tick()-me->client_touch_start>
          _LIBAROMA_CTL_SCROLL_TOUCH_CLIENT_WAIT)){
        me->client_touch_start=0;
        /* send touch down message to client */
        if (me->client.handler->message){
          int client_x = me->touch_x;
          int client_y = me->touch_y + me->scroll_y;
          if (_libaroma_ctl_scroll_client_msg(
            ctl,LIBAROMA_CTL_SCROLL_MSG_TOUCH_DOWN,
            client_x, client_y
          )==LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW){
            need_drawing=1;
          }
          me->client_touched=1;
        }
      }
      libaroma_mutex_unlock(me->mutex);
      
      /* client thread */
      if (me->client.handler->thread!=NULL){
        if (me->client.handler->thread(ctl,&me->client)){
          need_drawing=1;
        }
      }
      
      /* drawing handler */
      if (need_drawing){
        me->synced_y=-1;
        need_drawing=0;
      }
    }
  }
  ALOGI("End scroll calculation thread");
  return NULL;
} /* End of _libaroma_ctl_scroll_calc_thread */

/*
 * Function    : _libaroma_ctl_scroll_thread
 * Return Value: byte
 * Descriptions: control thread callback
 */
byte _libaroma_ctl_scroll_thread(LIBAROMA_CONTROLP ctl) {
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  
  byte need_drawing=0;
  if (me->client.handler){
    libaroma_cond_lock(&me->cmutex);
    libaroma_cond_signal(&me->ccond);
    libaroma_cond_unlock(&me->cmutex);
    if (!me->active){
      return 0;
    }
    #ifdef LIBAROMA_CONFIG_OPENMP
      #pragma omp parallel sections
      {
        #pragma omp section
        {
        #endif
          /* overshoot */
          if (me->ovs_ustart>1){
            float nowstate=
              libaroma_control_state(me->ovs_ustart,
                me->ovs_bounce==2?1000:400);
            if (nowstate<1){
              if (nowstate!=me->ovs_ustate){
                me->ovs_ustate=nowstate;
                need_drawing=1;
              }
            }
            if ((nowstate>=1)&&(me->ovs_ustate<1)){
              me->ovs_state=0;
              me->ovs_start=0;
              me->ovs_ustart=0;
              me->ovs_ustate=0;
              need_drawing=1;
            }
          }
          else if ((me->ovs_start>0)||(me->ovs_state)){
            float nowstate=
              libaroma_control_state(me->ovs_start,(me->ovs_bounce==1)?800:1600);
            if (nowstate<1){
              if (nowstate!=me->ovs_state){
                me->ovs_state=nowstate;
                need_drawing=1;
              }
            }
            if ((me->ovs_state<1)&&((nowstate>=1)||
                ((nowstate>=0.2)&&(me->ovs_ustart==1)&&(me->ovs_state<1)))
               ){
              me->ovs_state=0.5;
              me->ovs_ustart=libaroma_tick();
              me->ovs_ustate=0;
              if (!me->ovs_bounce){
                me->ovs_bounce=2;
              }
              need_drawing=1;
            }
          }
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
        #pragma omp section
        {
        #endif
          /* fling handler */
          if ((me->velocity!=0)&&(!me->touched)){
            /* onfling */
            me->velocity=(me->velocity*246)>>8;
            if ((abs(me->velocity)<256)||(me->touched)) {
              /* ended */
              me->velocity = 0;
              need_drawing=1;
            }
            else{
              /* still on fling */
              int scroll_y = (me->velocity>>8) + me->scroll_y;
              if (scroll_y>=me->max_scroll_y){
                scroll_y=me->max_scroll_y;
                if (me->scroll_y!=scroll_y){
                  me->bounce_velocity=MAX(-libaroma_dp(3840),
                    MIN(libaroma_dp(3840),(me->velocity*153)>>8));
                  me->ovs_bounce=1;
                  me->ovs_state=0;
                  me->ovs_y=0;
                  me->ovs_y=MIN(ctl->w*0.4,me->bounce_velocity>>4);
                  me->ovs_ustate=0;
                  me->ovs_ustart=1;
                  me->ovs_start=libaroma_tick()-16;
                }
                me->velocity = 0;
                need_drawing=1;
              }
              if (scroll_y<=0){
                scroll_y=0;
                if (me->scroll_y!=scroll_y){
                  me->bounce_velocity=MAX(-libaroma_dp(3840),
                    MIN(libaroma_dp(3840),(me->velocity*153)>>8));
                  me->ovs_bounce=1;
                  me->ovs_state=0;
                  me->ovs_y=0;
                  me->ovs_y=MAX(0-ctl->w*0.4,me->bounce_velocity>>4);
                  me->ovs_ustate=0;
                  me->ovs_ustart=1;
                  me->ovs_start=libaroma_tick()-16;
                }
                me->velocity = 0;
                need_drawing=1;
              }
              if (scroll_y!=me->scroll_y){
                libaroma_ctl_scroll_set_pos(ctl, scroll_y);
              }
            }
          }
          else if (me->request_scroll_y!=-1){
            /* direct request */
            if (me->request_scroll_y!=me->scroll_y){
              int move_sz = ((me->request_scroll_y-me->scroll_y)*64)>>8;
              if (abs(move_sz)<2){
                if (move_sz<0){
                  move_sz=-1;
                }
                else{
                  move_sz=1;
                }
              }
              int target_sz = me->scroll_y+move_sz;
              if (target_sz==me->request_scroll_y){
                target_sz=me->request_scroll_y;
                me->request_scroll_y=-1;
              }
              libaroma_ctl_scroll_set_pos(ctl,target_sz);
            }
          }
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
        #pragma omp section
        {
        #endif
          /* bounce handler */
          if (me->bounce_velocity!=0){
            /* bounce */
            me->bounce_velocity=(me->bounce_velocity*153)>>8;
            if (abs(me->bounce_velocity)<256){
              me->bounce_velocity=0;
            }
            need_drawing=1;
          }
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
        #pragma omp section
        {
        #endif
          /* scroll indicator handler */
          if (me->scroll_tick!=0){
            /* scroll indicator */
            if (!(me->flags&LIBAROMA_CTL_SCROLL_NO_INDICATOR)){
              long diff= libaroma_tick()-me->scroll_tick;
              if ((diff>1000)&&(me->scroll_state>0)){
                int nowstate=round(256.0*(1.0-libaroma_control_state(
                  me->scroll_tick+1000,400)));
                if (nowstate!=me->scroll_state){
                  me->scroll_state=nowstate;
                  need_drawing=1;
                }
                if (me->scroll_state<=0){
                  me->scroll_state=0;
                  me->scroll_tick=0;
                  me->scroll_handle_time=0;
                }
              }
              else if ((diff<500)&&(me->scroll_state<256)){
                if (!me->scroll_handle_time){
                  me->scroll_handle_time=me->scroll_tick;
                }
                int nowstate=round(256.0*
                  libaroma_control_state(me->scroll_handle_time,400));
                if (nowstate!=me->scroll_state){
                  me->scroll_state=nowstate;
                  need_drawing=1;
                }
                if (me->scroll_state>=256){
                  me->scroll_state=256;
                }
              }
            }
            else{
              me->scroll_tick=0;
            }
          }
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
      }
    #endif
    if (need_drawing){
      me->synced_y=-1;
    }
    if (me->request_new_height!=-1){
#ifndef LIBAROMA_CTL_SCROLL_WITH_CACHE_THREAD
      libaroma_ctl_scroll_set_height(ctl,me->request_new_height);
      libaroma_mutex_lock(me->fmutex);
      me->request_new_height=-1;
      libaroma_mutex_unlock(me->fmutex);
#else
      return 0;
#endif
    }
#ifndef LIBAROMA_CTL_SCROLL_WITH_CACHE_THREAD
    if (me->cache_state==10){
      _libaroma_ctl_scroll_updatecache(ctl, 0);
    }
#endif
    if (me->synced_y!=me->scroll_y){
      return 1;
    }
  }
  return 0;
} /* End of _libaroma_ctl_scroll_thread */

/*
 * Function    : _libaroma_ctl_scroll_draw
 * Return Value: void
 * Descriptions: draw callback
 */
void _libaroma_ctl_scroll_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CANVASP c){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 
  );
  if (me->client.handler){
    if (!me->active){
      libaroma_mutex_lock(me->mutex);
      if (me->request_new_height!=-1){
        int nrq=me->request_new_height;
        libaroma_mutex_unlock(me->mutex);
        libaroma_ctl_scroll_set_height(ctl,nrq);
        libaroma_mutex_lock(me->mutex);
        me->request_new_height=-1;
        libaroma_mutex_unlock(me->mutex);
      }
      else{
        libaroma_mutex_unlock(me->mutex);
      }
      if (me->cache_state==10){
        _libaroma_ctl_scroll_updatecache(ctl, 0);
      }
    }
    
    if (me->client_canvas!=NULL){
      libaroma_mutex_lock(me->mutex);
      int scroll_y = me->scroll_y;
      int draw_y = (scroll_y-me->draw_y+me->cache_y)%me->client_canvas->h;
      int draw_h = ctl->h;
      if (me->client_canvas->h<=ctl->h){
        /* no scroll */
        if ((me->minscroll_cb)&&(me->minscroll_y)){
          LIBAROMA_CANVASP mscv=libaroma_canvas(c->w,me->minscroll_y);
          if (mscv){
            libaroma_draw(mscv,me->client_canvas,0,0,0);
            me->minscroll_cb(ctl, mscv, me->scroll_y);
            libaroma_canvas_free(mscv);
          }
        }
        libaroma_canvas_setcolor(c,me->color_bg,0xff);
        libaroma_draw_ex(
          c, me->client_canvas,
          0,0,
          0,me->minscroll_y,
          me->client_canvas->w, me->client_canvas->h-me->minscroll_y,
          0,0xff);
        me->synced_y=me->scroll_y;
      }
      else{
        if ((me->minscroll_cb)&&(me->minscroll_y)){
          int draw_yv = ((scroll_y-me->minscroll_y)-me->draw_y+me->cache_y)
            %me->client_canvas->h;
          LIBAROMA_CANVASP mscv=libaroma_canvas(c->w,me->minscroll_y);
          if (mscv){
            libaroma_draw_ex(
              mscv,me->client_canvas,
              0,0,
              0,draw_yv,
              mscv->w,mscv->h,
              0,0xff
            );
            me->minscroll_cb(ctl, mscv, me->scroll_y);
            libaroma_canvas_free(mscv);
          }
        }
        
        
        LIBAROMA_CANVASP tc=c;
        int bvel=me->bounce_velocity;
        if (bvel!=0){
          libaroma_canvas_setcolor(tc,me->color_bg,0xff);
          c=libaroma_canvas(tc->w,tc->h);
        }
        if (draw_y<0){
          draw_y=me->client_canvas->h+draw_y;
        }
        if (draw_y+draw_h>me->client_canvas->h){
          int top_h = (me->client_canvas->h - draw_y);
          int bottom_h = draw_h - top_h;
          int bottom_y = 0;
          if (top_h<1){
            bottom_h+=top_h;
            bottom_y=abs(top_h);
          }
          
          #ifdef LIBAROMA_CONFIG_OPENMP
          #pragma omp parallel sections
          {
            #pragma omp section
            {
            #endif
              if (top_h>0){
                if (!libaroma_draw_ex(
                    c,me->client_canvas,
                    0,0,
                    0,draw_y,
                    c->w,top_h,
                    0,0xff
                  )){
                  ALOGV("Error top_h: %i,%i",draw_y,draw_h);
                }
              }
            #ifdef LIBAROMA_CONFIG_OPENMP
            }
            #pragma omp section
            {
            #endif
              if (bottom_h>0){
                if (!libaroma_draw_ex(
                    c,me->client_canvas,
                    0,top_h,
                    0,bottom_y,
                    c->w,bottom_h,
                    0,0xff
                  )){
                  ALOGV("Error bottom_h: %i,%i - %i",
                    bottom_y,bottom_h,c->h);
                }
              }
            #ifdef LIBAROMA_CONFIG_OPENMP
            }
          }
          #endif
          me->synced_y=me->scroll_y;
        }
        else if ((draw_y<me->client_canvas->h)&&(draw_y>=0)){
          if (!libaroma_draw_ex(
              c,me->client_canvas,
              0,0,
              0,draw_y,
              c->w,draw_h,
              0,0xff
            )){
            ALOGV("Error draw_h: %i,%i",draw_y,draw_h);
          }
          me->synced_y=me->scroll_y;
        }
        
        if (bvel!=0){
          int y_i = (int) bvel>>8;
          libaroma_draw_ex(tc,c,0,0,0,y_i,tc->w,tc->h,0,0xff);
          libaroma_canvas_free(c);
          c=tc;
        }
      }
      libaroma_mutex_unlock(me->mutex);
      
      #ifdef LIBAROMA_CONFIG_OPENMP
      #pragma omp parallel sections
      {
        #pragma omp section
        {
        #endif
          if (me->active){
            if ((!(me->flags&LIBAROMA_CTL_SCROLL_NO_INDICATOR))&&
                (me->max_scroll_y>me->minscroll_y)){
              if ((me->scroll_state>0)||(me->handle_touched)){
                int hdl_w,hdl_r,ctl_y,ctl_h;
                byte handle_opa=180;
                byte is_dark = libaroma_color_isdark(me->color_bg);
                word indicator_color = is_dark?RGB(cccccc):RGB(666666);
                int vss=(me->handle_touched)?256:me->scroll_state;
                if (me->flags&LIBAROMA_CTL_SCROLL_WITH_HANDLE){
                  hdl_w = libaroma_dp(5);
                  hdl_r = hdl_w*2;
                  if (!me->handle_touched){
                    hdl_r=(hdl_r * me->scroll_state) >> 8;
                  }
                  /* track */
                  ctl_y = libaroma_dp(18);
                  ctl_h = ctl->h - (ctl_y*2);
                  libaroma_draw_rect(
                    c, 
                    ctl->w-(hdl_r+libaroma_dp(3)),
                    ctl_y,
                    libaroma_dp(1),
                    ctl_h,
                    libaroma_alpha(me->color_bg,indicator_color,(80*vss)>>8),
                    0xff
                  );
                  if (me->handle_touched){
                    handle_opa=0xff;
                    indicator_color=libaroma_colorget(ctl,NULL)->primary;
                  }
                  else{
                    handle_opa=220;
                  }
                }
                else{
                  ctl_y = libaroma_dp(2);
                  hdl_w = ctl_y*2;
                  hdl_r = libaroma_dp(5);
                  ctl_h = ctl->h - hdl_w;
                  handle_opa = 120;
                }
                int hdl_ch= (ctl->h * ctl_h)/me->client_h;
                int hdl_h = MAX(hdl_ch,libaroma_dp(36));
                hdl_ch = hdl_h-hdl_ch;
                int hdl_y = ((scroll_y * (ctl_h-hdl_ch))/me->client_h)+ctl_y;
                libaroma_draw_rect(
                    c, 
                    ctl->w-(hdl_r+hdl_w),
                    hdl_y,
                    hdl_w,
                    hdl_h,
                    libaroma_alpha(me->color_bg,indicator_color,
                      (handle_opa*vss)>>8),
                    0xff
                  );
              }
            }
          }
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
        #pragma omp section
        {
        #endif
          /* vertical border */
          if (me->flags&LIBAROMA_CTL_SCROLL_WITH_VBORDER){
            if (me->max_scroll_y>me->minscroll_y){
              word divcolor = libaroma_color_isdark(me->color_bg)?RGB(cccccc):RGB(666666);
              divcolor=libaroma_alpha(me->color_bg,divcolor,50);
              if (scroll_y>me->minscroll_y){
                libaroma_draw_rect(
                  c, 
                  0,
                  0,
                  c->w,
                  libaroma_dp(1),
                  divcolor,
                  0xff
                );
              }
              if (scroll_y<me->max_scroll_y){
                libaroma_draw_rect(
                  c, 
                  0,
                  c->h-libaroma_dp(1),
                  c->w,
                  libaroma_dp(1),
                  divcolor,
                  0xff
                );
              }
            }
          }
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
        #pragma omp section
        {
        #endif
          /* shadow */
          if (me->flags&LIBAROMA_CTL_SCROLL_WITH_SHADOW){
            libaroma_gradient_ex1(c, 0, 0, ctl->w,
              libaroma_dp(5),0,0,0,0,80,0,2);
          }
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
      }
      #endif
      
      /* overshoot draw */
      if ((me->max_scroll_y>me->minscroll_y)&&(me->ovs_state>0)&&(me->ovs_state<1)){
        int max_ovsz = MIN(c->h/4,libaroma_dp(100));
        int overshoot_sz = MIN(abs(me->ovs_y)/3,max_ovsz);
        if (overshoot_sz>0){
          float opa = 0;
          if (me->ovs_state<0.25){
            opa = libaroma_cubic_bezier_easein(me->ovs_state*4);
          }
          else{
            opa = 1;
          }
          if (me->ovs_ustate>0){
            opa*=1-libaroma_cubic_bezier_swiftout(me->ovs_ustate);
          }
          opa = MAX(0,MIN(1,opa));
          if (me->ovs_ustate>0){
            overshoot_sz = overshoot_sz * opa;
          }
          else{
            overshoot_sz = overshoot_sz * MIN(1,opa*2);
          }
          float opacity=((float) overshoot_sz) / max_ovsz;
          overshoot_sz = MIN(MIN(overshoot_sz,c->h/5),libaroma_dp(80));
          if (overshoot_sz>1){
            LIBAROMA_CANVASP ovshot = libaroma_canvas_ex(
              c->w, overshoot_sz, 1);
            libaroma_canvas_setcolor(ovshot,
              libaroma_colorget(ctl,NULL)->primary,0);
            int vw = c->w>>2;
            if (me->ovs_x<0){
              me->ovs_x=0;
            }
            else if (me->ovs_x>ctl->w){
              me->ovs_x=ctl->w;
            }
            int vx = me->ovs_x>>2;
            int ovw= overshoot_sz>>1;
            int x1 = 0-(vw-vx);
            int x2 = x1+c->w+vw;
            if (me->ovs_y<0){
              LIBAROMA_PATHP path=libaroma_path(x1,0);
              libaroma_path_curve(
                path, overshoot_sz, 
                x1+ovw, overshoot_sz,
                x2-ovw, overshoot_sz,
                x2, 0
              );
              libaroma_path_draw(ovshot, path, 0, 0x60*opacity, 1, 0.33);
              libaroma_path_free(path);
              libaroma_draw(c,ovshot,0,0,1);
            }
            else{
              LIBAROMA_PATHP path=libaroma_path(x1,overshoot_sz-1);
              libaroma_path_curve(
                path, overshoot_sz, 
                x1+ovw, 0,
                x2-ovw, 0,
                x2,overshoot_sz-1
              );
              libaroma_path_draw(ovshot, path, 0, 0x60*opacity, 1, 0.33);
              libaroma_path_free(path);
              libaroma_draw(c,ovshot,0,c->h-overshoot_sz,1);
            }
            libaroma_canvas_free(ovshot);
          }
        }
      }
    }
    else{
      if ((me->minscroll_cb)&&(me->minscroll_y)){
        LIBAROMA_CANVASP mscv=libaroma_canvas(c->w,me->minscroll_y);
        if (mscv){
          libaroma_canvas_setcolor(mscv,me->color_bg,0xff);
          me->minscroll_cb(ctl, mscv, me->scroll_y);
          libaroma_canvas_free(mscv);
        }
      }
      libaroma_canvas_setcolor(c,me->color_bg,0xff);
    }
  }
  else{
    if ((me->minscroll_cb)&&(me->minscroll_y)){
      LIBAROMA_CANVASP mscv=libaroma_canvas(c->w,me->minscroll_y);
      if (mscv){
        libaroma_canvas_setcolor(mscv,me->color_bg,0xff);
        me->minscroll_cb(ctl, mscv, me->scroll_y);
        libaroma_canvas_free(mscv);
      }
    }
    libaroma_canvas_setcolor(c,me->color_bg,0xff);
  }
} /* End of _libaroma_ctl_scroll_draw */

/*
 * Function    : _libaroma_ctl_scroll_touch_handler
 * Return Value: dword
 * Descriptions: touch message handler
 */
dword _libaroma_ctl_scroll_touch_handler(
    LIBAROMA_CONTROLP ctl, LIBAROMA_MSGP msg,int x, int y, byte state){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  switch(state){
    case LIBAROMA_HID_EV_STATE_DOWN:{
      ALOGT("scroll_message - touch down: %i, %i",x, y);
      byte is_have_velocity=(
        (abs(me->velocity)>
          libaroma_dp(2)*255
        )||
        me->bounce_velocity)?1:0;
      byte is_direct_handle = 0;
      if (me->flags&LIBAROMA_CTL_SCROLL_WITH_HANDLE){
        me->handle_touched=
          (x>ctl->w-libaroma_dp(_LIBAROMA_CTL_SCROLL_HANDLE_DP))?1:0;
        is_direct_handle = 
        ((me->handle_touched)&&(me->scroll_state)&&(me->max_scroll_y>0))?1:0;
      }
      else{
        me->handle_touched=0;
      }
      
      /* set fling value */
      me->bounce_velocity=0;
      me->velocity=0;
      me->allow_scroll=1;
      me->touched=1;
      
      /* check client message */
      libaroma_mutex_lock(me->mutex);
      me->client_touch_start=0;
      me->client_touched=0;
      if ((!is_have_velocity)&&(!is_direct_handle)&&
          (me->client.handler->message)){
        int client_x = x;
        int client_y = y + me->scroll_y;
        if (_libaroma_ctl_scroll_client_msg(
              ctl,LIBAROMA_CTL_SCROLL_MSG_ISNEED_TOUCH,
              client_x, client_y
            )==LIBAROMA_CTL_SCROLL_MSG_HANDLED){
          me->client_touch_start=msg->sent; /*libaroma_tick();*/
          me->allow_scroll=2;
        }
      }
      libaroma_mutex_unlock(me->mutex);
      
      if (is_direct_handle){
        me->allow_scroll=1;
        int ctl_h = ctl->h-libaroma_dp(36);
        int sarea = ctl_h - ((ctl->h * ctl_h) / me->client_h);
        int scr_y = y-(ctl->h/2)+(sarea/2);
        int req_y = (scr_y * me->max_scroll_y) / sarea;
        libaroma_ctl_scroll_request_pos(ctl,req_y);
      }
      else if (me->flags&LIBAROMA_CTL_SCROLL_WITH_HANDLE){
        me->request_scroll_y=-1;
      }
      
      libaroma_fling_down(&me->fling, y);
      
      /* save touch value */
      me->touch_x=x;
      me->touch_y=y;
      me->touch_scroll_y = me->scroll_y;
      me->ovs_x=x;
    }
    break;
    case LIBAROMA_HID_EV_STATE_MOVE:
    case LIBAROMA_HID_EV_STATE_UP:{
      ALOGT("scroll_message - touch move: %i, %i",x, y);
      me->ovs_x=x;
      
      me->bounce_velocity=0;
      byte is_first_allowed = 0;
      if (me->allow_scroll==2){
        libaroma_mutex_lock(me->mutex);
        int move_sz = me->touch_y - y;
        int client_message_param = LIBAROMA_CTL_SCROLL_MSG_TOUCH_MOVE;
        int scrdp=libaroma_dp(
          me->client_touched?
          _LIBAROMA_CTL_SCROLL_MIN_ALOWSCROLL_DP:
          _LIBAROMA_CTL_SCROLL_MIN_ALOWSCROLL_DP_NOITEM
        );
        if (abs(move_sz)>=scrdp){
          is_first_allowed = 1;
          me->allow_scroll=1;
          me->client_touch_start=0;
          client_message_param = LIBAROMA_CTL_SCROLL_MSG_TOUCH_CANCEL;
        }
        
        /* send client message */
        if ((me->client_touched)&&(me->client.handler->message)){
          int client_x = x;
          int client_y = y + me->scroll_y;
          if (_libaroma_ctl_scroll_client_msg(
            ctl,client_message_param,
            client_x, client_y
          )==LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW){
            me->synced_y=-1;
          }
          if (client_message_param==LIBAROMA_CTL_SCROLL_MSG_TOUCH_CANCEL){
            me->client_touched=0;
          }
        }
        libaroma_mutex_unlock(me->mutex);
      }
      
      /* scrolling move handler */
      if ((me->allow_scroll==1)&&(me->touch_y!=y)){
        int move_sz = me->touch_y - y;
        if (!me->handle_touched){
          
          if (me->scroll_y+move_sz<me->minscroll_y){
            if (!me->ovs_start){
              me->ovs_start=msg->sent; /*libaroma_tick();*/
              me->ovs_bounce=0;
              me->ovs_state=0;
              me->ovs_ustate=0;
              me->ovs_ustart=0;
              me->ovs_y=0;
            }
            me->ovs_y+=move_sz;
          }
          else if (me->scroll_y+move_sz>me->max_scroll_y){
            if (!me->ovs_start){
              me->ovs_start=msg->sent; /*libaroma_tick();*/
              me->ovs_bounce=0;
              me->ovs_state=0;
              me->ovs_ustate=0;
              me->ovs_ustart=0;
              me->ovs_y=0;
            }
            me->ovs_y+=move_sz;
          }
          else if (!me->ovs_ustart){
            me->ovs_ustate=0;
            me->ovs_ustart=1;
            me->ovs_bounce=3;
          }
          
          /* normal scroll */
          if (is_first_allowed){
            libaroma_ctl_scroll_request_pos(ctl, me->touch_scroll_y+move_sz);
          }
          else{
            me->request_scroll_y=-1;
            libaroma_ctl_scroll_set_pos(ctl, me->touch_scroll_y+move_sz);
          }
          me->touch_scroll_y = me->scroll_y;
          
          /* set history */
          libaroma_fling_move(&me->fling, y);
        }
        else if (me->max_scroll_y>0){
          int ctl_h = ctl->h-libaroma_dp(36);
          int sarea = ctl_h - ((ctl->h * ctl_h) / me->client_h);
          int scr_y = y-(ctl->h/2)+(sarea/2);
          int req_y = (scr_y * me->max_scroll_y) / sarea;
          libaroma_ctl_scroll_request_pos(ctl,req_y);
        }
        me->touch_y=y;
      }
      if (state==LIBAROMA_HID_EV_STATE_UP){
        ALOGT("scroll_message - touch up: %i, %i",x, y);
        me->bounce_velocity=0;
        if (!me->handle_touched){
          if (me->allow_scroll){
            me->velocity=(libaroma_fling_up(&me->fling, y)*
                libaroma_px(18))/libaroma_dp(4);
            if (me->velocity){
              me->touched=0;
            }
          }
        }
        else if (me->allow_scroll==1){
          if (!(me->flags&LIBAROMA_CTL_SCROLL_NO_INDICATOR)){
            me->scroll_tick = msg->sent; /*libaroma_tick();*/
            me->scroll_state=256;
            me->synced_y=-1;
          }
        }
        
        /* clear item touch if initialized */
        libaroma_mutex_lock(me->mutex);
        if ((me->client_touch_start||me->client_touched)&&
          (me->client.handler->message)){
          int client_x = x;
          int client_y = y + me->scroll_y;
          if (me->client_touch_start){
            if (_libaroma_ctl_scroll_client_msg(
                ctl,LIBAROMA_CTL_SCROLL_MSG_TOUCH_DOWN,
                client_x, client_y
              )==LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW){
              me->synced_y=-1;
            }
          }
          if (_libaroma_ctl_scroll_client_msg(
              ctl,LIBAROMA_CTL_SCROLL_MSG_TOUCH_UP,
              client_x, client_y
            )==LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW){
            me->synced_y=-1;
          }
        }
        me->client_touch_start=0;
        me->client_touched=0;
        libaroma_mutex_unlock(me->mutex);
        
        /* reset */
        me->handle_touched=0;
        me->allow_scroll=0;
        me->touched=0;
        me->touch_x=0;
        me->touch_y=0;
        
        me->ovs_x=x;
        if (!me->ovs_ustart){
          me->ovs_ustate=0;
          me->ovs_ustart=1;
          me->ovs_bounce=3;
        }
      }
    }
    break;
  }
  return 0;
} /* End of _libaroma_ctl_scroll_touch_handler */

/*
 * Function    : libaroma_ctl_scroll_isactive
 * Return Value: byte
 * Descriptions: check if control is active
 */
byte libaroma_ctl_scroll_isactive(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  return me->active;
} /* End of libaroma_ctl_scroll_isactive */

/*
 * Function    : _libaroma_ctl_scroll_msg
 * Return Value: byte
 * Descriptions: message callback
 */
dword _libaroma_ctl_scroll_msg(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_MSGP msg){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  switch(msg->msg){
    case LIBAROMA_MSG_TOUCH:
      {
        /* touch handler */
        int x = msg->x;
        int y = msg->y;
        libaroma_window_calculate_pos(NULL,ctl,&x,&y);
        return _libaroma_ctl_scroll_touch_handler(
          ctl,msg,x,y,msg->state
        );
      }
      break;
    case LIBAROMA_MSG_WIN_ACTIVE:
      {
        /* start updater thread*/
        me->active=1;
        me->client_touch_start=0;
        me->client_touched=0;
        me->synced_y = -1;
        
        /* start cache thread */
#ifdef LIBAROMA_CTL_SCROLL_WITH_CACHE_THREAD
        libaroma_thread_create(
          &me->cache_thread,
          _libaroma_ctl_scroll_cache_thread,
          (voidp) ctl);
#endif
        libaroma_thread_create(
          &me->calc_thread,
          _libaroma_ctl_scroll_calc_thread,
          (voidp) ctl);
      }
      break;
    case LIBAROMA_MSG_WIN_INACTIVE:
      {
        /* stop updater thread */
        me->active=0;
        libaroma_sleep(30);
        libaroma_cond_lock(&me->cmutex);
        libaroma_cond_signal(&me->ccond);
        libaroma_cond_unlock(&me->cmutex);
        
        libaroma_mutex_lock(me->mutex);
        libaroma_thread_join(me->calc_thread);
#ifdef LIBAROMA_CTL_SCROLL_WITH_CACHE_THREAD
        libaroma_thread_join(me->cache_thread);
        me->cache_thread=0;
#endif
        me->calc_thread=0;
        me->client_touch_start=0;
        me->client_touched=0;
        me->synced_y = -1;
        libaroma_mutex_unlock(me->mutex);
      }
      break;
  }
  return 0;
} /* End of _libaroma_ctl_scroll_msg */

/*
 * Function    : _libaroma_ctl_scroll_destroy
 * Return Value: void
 * Descriptions: destroy callback
 */
void _libaroma_ctl_scroll_destroy(
    LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 
  );
  /* destroy client */
  if (me->client.handler->destroy!=NULL){
    me->client.handler->destroy(ctl,&me->client);
  }
  if (me->client_canvas!=NULL){
    libaroma_canvas_free(me->client_canvas);
    me->client_canvas=NULL;
  }
  libaroma_cond_free(&me->ccond, &me->cmutex);
  libaroma_mutex_free(me->blitmutex);
  libaroma_mutex_free(me->fmutex);
  libaroma_mutex_free(me->mutex);
  free(me);
} /* End of _libaroma_ctl_scroll_destroy */

/*
 * Function    : libaroma_ctl_scroll
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create scroll control
 */
LIBAROMA_CONTROLP libaroma_ctl_scroll(
    LIBAROMA_WINDOWP win, word id,
    int x, int y, int w, int h,
    word bg_color, byte flags
){
  /* init internal data */
  _LIBAROMA_CTL_SCROLLP me = (_LIBAROMA_CTL_SCROLLP)
      calloc(sizeof(_LIBAROMA_CTL_SCROLL),1);
  if (!me){
    ALOGW("libaroma_ctl_scroll alloc scroll memory failed");
    return NULL;
  }
  
  libaroma_mutex_init(me->blitmutex); /* blit drawing mutex */
  libaroma_mutex_init(me->fmutex); /* cache drawing mutex */
  libaroma_mutex_init(me->mutex);  /* control drawing mutex */
  libaroma_cond_init(&me->ccond, &me->cmutex);
        
  /* set internal data */
  me->flags = flags;
  me->color_bg = bg_color;
  me->request_new_height=-1;
  me->request_scroll_y=-1;
  me->synced_y = -1;
  
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      id,
      x, y, w, h,
      libaroma_dp(96),libaroma_dp(96), /* min size */
      me,
      &_libaroma_ctl_scroll_handler,
      win
    );
  
  if (!ctl){
    free(me);
  }
  return ctl;
} /* End of libaroma_ctl_scroll */

/*
 * Function    : libaroma_ctl_scroll_request_height
 * Return Value: byte
 * Descriptions: request height
 */
byte libaroma_ctl_scroll_request_height(LIBAROMA_CONTROLP ctl, int h){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  libaroma_mutex_lock(me->fmutex);
  me->request_new_height=h;
  libaroma_mutex_unlock(me->fmutex);
  return 1;
} /* End of libaroma_ctl_scroll_request_height */

/*
 * Function    : libaroma_ctl_scroll_get_scroll
 * Return Value: int
 * Descriptions: get scroll position
 */
int libaroma_ctl_scroll_get_scroll(LIBAROMA_CONTROLP ctl, int * scroll_h){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (scroll_h!=NULL){
    *scroll_h=me->max_scroll_y;
  }
  return me->scroll_y;
} /* End of libaroma_ctl_scroll_get_scroll */

/*
 * Function    : libaroma_ctl_scroll_get_height
 * Return Value: int
 * Descriptions: get scroll height
 */
int libaroma_ctl_scroll_get_height(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  int ret=me->client_h;
  libaroma_mutex_lock(me->fmutex);
  if (me->request_new_height!=-1){
    ret=me->request_new_height;
  }
  libaroma_mutex_unlock(me->fmutex);
  return ret;
} /* End of libaroma_ctl_scroll_get_height */

/*
 * Function    : libaroma_ctl_scroll_set_height
 * Return Value: byte
 * Descriptions: set scroll height
 */
byte libaroma_ctl_scroll_set_height(LIBAROMA_CONTROLP ctl, int h){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client_h==h){
    return 0;
  }
  libaroma_mutex_lock(me->blitmutex);
  libaroma_mutex_lock(me->fmutex);
  me->max_scroll_y = h-ctl->h;
  if (me->max_scroll_y<me->minscroll_y){
    me->max_scroll_y=me->minscroll_y;
  }
  if (h<1){
    if (me->client_canvas!=NULL){
      me->client_h = h;
      libaroma_mutex_lock(me->mutex);
      libaroma_canvas_free(me->client_canvas);
      me->client_canvas=NULL;
      libaroma_mutex_unlock(me->mutex);
    }
  }
  else{
    /* max 3x control height */
    int valid_height = h;
#ifdef LIBAROMA_CTL_SCROLL_WITH_MAX_CACHE
    if (valid_height>_LIBAROMA_CTL_SCROLL_MAX_CACHE){
      valid_height=_LIBAROMA_CTL_SCROLL_MAX_CACHE;
    }
#endif
    LIBAROMA_CANVASP c=me->client_canvas;
    if (me->client_canvas){
      if (valid_height!=c->h){
        int ns = c->l * valid_height;
        if (ns>c->s){
          libaroma_mutex_lock(me->mutex);
          c->data=realloc(c->data,ns*2);
          libaroma_mutex_unlock(me->mutex);
          c->s=ns;
          c->h=valid_height;
          me->client_h = h;
        }
        else{
          me->client_h = h;
          c->s=ns;
          c->h=valid_height;
          libaroma_mutex_lock(me->mutex);
          c->data=realloc(c->data,ns*2);
          libaroma_mutex_unlock(me->mutex);
        }
      }
      else{
        me->client_h = h;
      }
    }
    else{
      libaroma_mutex_lock(me->mutex);
      c = libaroma_canvas(ctl->w,valid_height);
      libaroma_canvas_setcolor(c,me->color_bg,0xff);
      me->client_canvas = c;
      libaroma_mutex_unlock(me->mutex);
      me->client_h = h;
    }
  }
  me->synced_y=-1;
  libaroma_mutex_unlock(me->fmutex);
  libaroma_mutex_unlock(me->blitmutex);
  libaroma_ctl_scroll_set_pos(ctl,me->scroll_y);
  me->cache_state = 10; /* force recalculate */
  return 1;
} /* End of libaroma_ctl_scroll_set_height */

/*
 * Function    : libaroma_ctl_scroll_set_pos
 * Return Value: byte
 * Descriptions: set scroll position - directly
 */
byte libaroma_ctl_scroll_set_pos(LIBAROMA_CONTROLP ctl, int scroll_y){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  int req_scroll_y = scroll_y;
  if (req_scroll_y>me->max_scroll_y){
    req_scroll_y = me->max_scroll_y;
  }
  if (req_scroll_y<me->minscroll_y){
    req_scroll_y=me->minscroll_y;
  }
  if (me->scroll_y!=req_scroll_y){
    me->move_state=(req_scroll_y<me->scroll_y)?1:2;
    me->scroll_y=req_scroll_y;
    if (!me->cache_state){
      me->cache_state=1;
    }
    if (!(me->flags&LIBAROMA_CTL_SCROLL_NO_INDICATOR)){
      me->scroll_tick = libaroma_tick();
    }
  }
  return 1;
} /* End of libaroma_ctl_scroll_set_pos */

/*
 * Function    : libaroma_ctl_scroll_request_pos
 * Return Value: byte
 * Descriptions: request to change scroll position - nicely
 */
byte libaroma_ctl_scroll_request_pos(LIBAROMA_CONTROLP ctl, int req_y){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (req_y>me->max_scroll_y){
    me->request_scroll_y=me->max_scroll_y;
  }
  else if (req_y<me->minscroll_y){
    me->request_scroll_y=me->minscroll_y;
  }
  else{
    me->request_scroll_y=req_y;
  }
  return 1;
} /* End of libaroma_ctl_scroll_request_pos */

/*
 * Function    : libaroma_ctl_scroll_get_bg_color
 * Return Value: byte
 * Descriptions: request to change scroll position - nicely
 */
word libaroma_ctl_scroll_get_bg_color(LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  return me->color_bg;
} /* End of libaroma_ctl_scroll_get_bg_color */

/*
 * Function    : libaroma_ctl_scroll_set_client
 * Return Value: byte
 * Descriptions: set client handler
 */
byte libaroma_ctl_scroll_set_client(
    LIBAROMA_CONTROLP ctl,
    voidp internal,
    LIBAROMA_CTL_SCROLL_CLIENT_HANDLERP handler
){
  if (handler==NULL){
    return 0;
  }
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client.handler){
    if (me->client.handler->destroy!=NULL){
      me->client.handler->destroy(ctl,&me->client);
    }
  }
  me->client.handler=handler;
  me->client.internal=internal;
  me->synced_y=-1;
  me->cache_state = 10; /* force recalculate */
  return 1;
} /* End of libaroma_ctl_scroll_set_client */

/*
 * Function    : libaroma_ctl_scroll_get_client
 * Return Value: LIBAROMA_CTL_SCROLL_CLIENTP
 * Descriptions: get scroll client data
 */
LIBAROMA_CTL_SCROLL_CLIENTP libaroma_ctl_scroll_get_client(
    LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, NULL
  );
  if (!me->client.handler){
    return NULL;
  }
  return &me->client;
} /* End of libaroma_ctl_scroll_get_client */

/*
 * Function    : libaroma_ctl_scroll_is_visible
 * Return Value: byte
 * Descriptions: is this area visible?
 */
byte libaroma_ctl_scroll_is_visible(
   LIBAROMA_CONTROLP ctl, int y, int h
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client_canvas==NULL){
    return 0;
  }
  if (!me->active){
    return 0;
  }
  int draw_t=me->draw_y;
  int draw_b=draw_t+me->client_canvas->h;
  int bottom = y+h;
  if ((bottom>draw_t)&&(y<draw_b)){
    return 1;
  }
  return 0;
} /* End of libaroma_ctl_scroll_is_visible */

/*
 * Function    : libaroma_ctl_scroll_blit
 * Return Value: byte
 * Descriptions: blit canvas into client canvas
 */
byte libaroma_ctl_scroll_blit(
   LIBAROMA_CONTROLP ctl, 
   LIBAROMA_CANVASP canvas,
   int x, int y, int w, int h,
   byte erase
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client_canvas==NULL){
    return 0;
  }
  if (!me->active){
    return 0;
  }
  if (x<0){
    x=0;
  }
  
  if ((w<1)||(x+w>me->client_canvas->w)){
    w=me->client_canvas->w-x;
  }
  int bottom = y+h;
  int draw_t = me->draw_y;
  int draw_b = draw_t+me->client_canvas->h;
  if ((bottom>draw_t)&&(y<draw_b)){
    int dy = (y-draw_t+me->cache_y)%me->client_canvas->h;
    int split_h = (dy+h)-me->client_canvas->h;
    byte is_split=((dy+h>me->client_canvas->h)&&(me->cache_y)&&(split_h>0));
    libaroma_mutex_lock(me->blitmutex);
    if (erase){
      libaroma_draw_rect(
        me->client_canvas, x, dy, w, h, me->color_bg, 0xff
      );
      if (is_split){
        libaroma_draw_rect(
          me->client_canvas, x, 0, w, split_h, me->color_bg, 0xff
        );
      }
    }
    libaroma_draw_ex(
      me->client_canvas,
      canvas,
      x, dy, 0, 0, w, h,
      1,
      0xff
    );
    if (is_split){
      libaroma_draw_ex(
        me->client_canvas,
        canvas,
        x, 0, 0, h-split_h, w, split_h,
        1,
        0xff
      );
    }
    libaroma_mutex_unlock(me->blitmutex);
    return 1;
  }
  return 0;
} /* End of libaroma_ctl_scroll_blit */

/*
 * Function    : libaroma_ctl_scroll_set_min_scroll
 * Return Value: byte
 * Descriptions: set minimal scroll y
 */
byte libaroma_ctl_scroll_set_min_scroll(
   LIBAROMA_CONTROLP ctl, LIBAROMA_CTL_SCROLL_MINSCROLL_HANDLER cb, int y
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_scroll_handler, _LIBAROMA_CTL_SCROLLP, 0
  );
  
  if (y<0){
    return 0;
  }
  libaroma_mutex_lock(me->fmutex);
  me->minscroll_cb=cb;
  me->minscroll_y=y;
  me->synced_y=-1;
  libaroma_mutex_unlock(me->fmutex);
  return 1;
}
#endif /* __libaroma_ctl_scroll_c__ */
