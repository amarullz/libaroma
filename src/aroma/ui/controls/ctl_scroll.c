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
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_ctl_scroll_c__
#define __libaroma_ctl_scroll_c__

#define _LIBAROMA_CTL_SCROLL_SIGNATURE          0x40
#define _LIBAROMA_CTL_SCROLL_HISTORY            10
#define _LIBAROMA_CTL_SCROLL_MAX_CACHE          (libaroma_fb()->h * 6)
#define _LIBAROMA_CTL_SCROLL_HANDLE_DP          36
#define _LIBAROMA_CTL_SCROLL_TOUCH_CLIENT_WAIT  200
#define _LIBAROMA_CTL_SCROLL_MIN_ALOWSCROLL_DP  15
#define _LIBAROMA_CTL_SCROLL_MIN_ALOWSCROLL_DP_NOITEM  5

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
  pthread_t cache_thread;
  pthread_t calc_thread;
  
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
  
  /* fling items */
  int bounce_velocity;
  int velocity;
  int prevn;
  int prev_point[_LIBAROMA_CTL_SCROLL_HISTORY];
  long prev_time[_LIBAROMA_CTL_SCROLL_HISTORY];
  
  /* client data */
  LIBAROMA_CTL_SCROLL_CLIENT client;
  LIBAROMA_MUTEX mutex;
};

/*
 * Function    : _libaroma_ctl_scroll_updatecache
 * Return Value: byte
 * Descriptions: update cache drawing
 */
byte _libaroma_ctl_scroll_updatecache(LIBAROMA_CONTROLP ctl, int move_sz){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client_canvas==NULL){
    return 0;
  }
  
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
    /* force redraw all */
    if (me->client.draw!=NULL){
      me->client.draw(
        ctl, &me->client, me->client_canvas,
        0,me->draw_y,me->client_canvas->w,me->client_canvas->h
      );
    }
    else{
      libaroma_canvas_setcolor(me->client_canvas,me->color_bg,0xff);
    }
    me->cache_y=0;
    me->synced_y=-1;
    return 1;
  }
  me->cache_state=0;
  if (move_value!=0){
    byte is_top = (move_value<0)?1:0;
    int cache_h = abs(move_value);
    int cache_y = me->cache_y+move_value;
    int client_y= me->draw_y+(is_top?move_value:me->client_canvas->h);
    
    if (cache_y<0){
      cache_y = me->client_canvas->h - abs(cache_y);
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
      if (me->client.draw){
        me->client.draw(
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
      if (me->client.draw){
        me->client.draw(
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
    return 1;
  }
  return 0;
} /* End of _libaroma_ctl_scroll_updatecache */

/*
 * Function    : _libaroma_ctl_scroll_check_update
 * Return Value: byte
 * Descriptions: check for cache update
 */
byte _libaroma_ctl_scroll_check_update(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  if ((me->client.signature)&&(me->client_canvas!=NULL)){
    if ((me->cache_state)&&(me->cache_state!=10)){
      int cvhsz = (me->client_canvas->h / 4);
      int draw_top = me->draw_y;
      int draw_bottom = draw_top+me->client_canvas->h;
      if (me->scroll_y<draw_top){
        _libaroma_ctl_scroll_updatecache(ctl,-cvhsz);
        return 1;
      }
      else if (me->scroll_y>draw_bottom){
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

/*
 * Function    : _libaroma_ctl_scroll_cache_thread
 * Return Value: static void *
 * Descriptions: background cache updater
 */
static void * _libaroma_ctl_scroll_cache_thread(void * cookie){
  LIBAROMA_CONTROLP ctl = (LIBAROMA_CONTROLP) cookie;
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  ALOGV("Start scroll updater thread");
  while (me->active){
    if ((me->client.signature)&&(me->client_canvas!=NULL)){
      if ((me->client_h>me->client_canvas->h)&&(me->request_new_height==-1)){
        if (_libaroma_ctl_scroll_check_update(ctl)){
          usleep(16);
          continue;
        }
      }
    }
    usleep(16000);
  }
  ALOGV("End scroll updater thread");
  return NULL;
} /* End of _libaroma_ctl_scroll_cache_thread */

/*
 * Function    : _libaroma_ctl_scroll_calc_thread
 * Return Value: static void *
 * Descriptions: background calculation updater
 */
static void * _libaroma_ctl_scroll_calc_thread(void * cookie){
  LIBAROMA_CONTROLP ctl = (LIBAROMA_CONTROLP) cookie;
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  ALOGV("Start scroll calculation thread");
  byte need_drawing = 0;
  LIBAROMA_SLEEPER sleeper_s;
  while (me->active){
    libaroma_sleeper_start(&sleeper_s);
    /* run client thread */
    if (me->client.signature){
      /* client touch down event */
      #ifdef LIBAROMA_CONFIG_OPENMP
      #pragma omp parallel sections
      { 
        #pragma omp section
        {
        #endif
          if ((me->client_touch_start!=0)&&
              (libaroma_tick()-me->client_touch_start>
              _LIBAROMA_CTL_SCROLL_TOUCH_CLIENT_WAIT)){
            me->client_touch_start=0;
            /* send touch down message to client */
            if (me->client.message){
              int client_x = me->touch_x;
              int client_y = me->touch_y + me->scroll_y;
              LIBAROMA_MSG msgc;
              libaroma_wm_compose(
                &msgc,
                LIBAROMA_CTL_SCROLL_MSG,
                NULL,
                LIBAROMA_CTL_SCROLL_MSG_TOUCH_DOWN,
                0
              );
              if (me->client.message(
                  ctl, &me->client, &msgc,
                  client_x, client_y
                )==LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW){
                need_drawing=1;
              }
              me->client_touched=1;
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
        #pragma omp section
        {
        #endif
          /* client thread */
          if (me->client.thread!=NULL){
            if (me->client.thread(ctl,&me->client)){
              need_drawing=1;
            }
          }
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
      }
      #endif
      
      /* drawing handler */
      if (need_drawing){
        me->synced_y=-1;
        need_drawing=0;
      }
    }
    libaroma_sleeper(&sleeper_s,16000);
  }
  ALOGV("End scroll calculation thread");
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  byte need_drawing=0;
  if (me->client.signature){
    #ifdef LIBAROMA_CONFIG_OPENMP
      #pragma omp parallel sections
      {
        #pragma omp section
        {
        #endif
          if (me->request_new_height!=-1){
            libaroma_ctl_scroll_set_height(ctl,me->request_new_height);
            me->request_new_height=-1;
          }
          if (me->cache_state==10){
            _libaroma_ctl_scroll_updatecache(ctl, 0);
            need_drawing=1;
          }
          me->request_new_height=-1;
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
        #pragma omp section
        {
        #endif
          /* fling handler */
          if ((me->velocity!=0)&&(!me->touched)){
            /* onfling */
            me->velocity=(me->velocity*244)>>8;
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
                }
                me->velocity = 0;
                need_drawing=1;
              }
              if (scroll_y<=0){
                scroll_y=0;
                if (me->scroll_y!=scroll_y){
                  me->bounce_velocity=MAX(-libaroma_dp(3840),
                    MIN(libaroma_dp(3840),(me->velocity*153)>>8));
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
              int move_sz = ((me->request_scroll_y-me->scroll_y)*51)>>8;
              int target_sz = me->scroll_y+move_sz;
              if (abs(move_sz)<2){
                target_sz=me->request_scroll_y;
                me->request_scroll_y=-1;
              }
              libaroma_ctl_scroll_set_pos(ctl,target_sz);
            }
          }
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
      }
    #endif
    if (need_drawing){
      me->synced_y=-1;
    }
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 
  );
  if (me->client.signature){
    if (!me->active){
      if (me->request_new_height!=-1){
        int nrq=me->request_new_height;
        libaroma_ctl_scroll_set_height(ctl,nrq);
      }
      if (me->cache_state==10){
        _libaroma_ctl_scroll_updatecache(ctl, 0);
      }
      me->request_new_height=-1;
    }
    
    if (me->client_canvas!=NULL){
      int scroll_y = me->scroll_y;
      int draw_y = (scroll_y-me->draw_y+me->cache_y)%me->client_canvas->h;
      int draw_h = ctl->h;
      if (me->client_canvas->h<=ctl->h){
        /* no scroll */
        libaroma_canvas_setcolor(c,me->color_bg,0xff);
        libaroma_draw(c,me->client_canvas,0,0,0);
        me->synced_y=me->scroll_y;
      }
      else{
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
          int top_y = top_h;
          if (top_h<1){
            bottom_h+=top_h;
            bottom_y=abs(top_h);
            top_y=0;
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
                  ALOGV("Error bottom_h: %i,%i,%i - %i",
                    top_y,bottom_y,bottom_h,c->h);
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
          libaroma_draw(tc,c,0,-y_i,0);
          libaroma_canvas_free(c);
          c=tc;
        }
      }
      
      #ifdef LIBAROMA_CONFIG_OPENMP
      #pragma omp parallel sections
      {
        #pragma omp section
        {
        #endif
          if (me->active){
            if (!(me->flags&LIBAROMA_CTL_SCROLL_NO_INDICATOR)){
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
                    indicator_color=RGB(6699dd);
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
                }
                int hdl_h = (ctl->h * ctl_h) / me->client_h;
                int hdl_y = ((scroll_y * ctl_h) / me->client_h)+ctl_y;
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
          /* shadow */
          if (me->flags&LIBAROMA_CTL_SCROLL_WITH_SHADOW){
            libaroma_gradient_ex1(c, 0, 0, ctl->w,
              libaroma_dp(4),0,0,0,0,120,0,2);
          }
        #ifdef LIBAROMA_CONFIG_OPENMP
        }
      }
      #endif
    }
    else{
      libaroma_canvas_setcolor(c,me->color_bg,0xff);
    }
  }
  else{
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  switch(state){
    case LIBAROMA_HID_EV_STATE_DOWN:{
      ALOGT("scroll_message - touch down: %i, %i",x, y);
      byte is_have_velocity=(me->velocity||me->bounce_velocity)?1:0;
      me->handle_touched=
          (x>ctl->w-libaroma_dp(_LIBAROMA_CTL_SCROLL_HANDLE_DP))?1:0;
      byte is_direct_handle = 
        (me->flags&LIBAROMA_CTL_SCROLL_WITH_HANDLE) &&
        (me->handle_touched)&&(me->scroll_state)&&(me->max_scroll_y>0);
      
      /* set fling value */
      me->bounce_velocity=0;
      me->velocity=0;
      me->allow_scroll=1;
      me->touched=1;
      
      /* check client message */
      me->client_touch_start=0;
      me->client_touched=0;
      if ((!is_have_velocity)&&(!is_direct_handle)&&(me->client.message)){
        int client_x = x;
        int client_y = y + me->scroll_y;
        LIBAROMA_MSG msgc;
        libaroma_wm_compose(
          &msgc,
          LIBAROMA_CTL_SCROLL_MSG,
          NULL,
          LIBAROMA_CTL_SCROLL_MSG_ISNEED_TOUCH,
          0
        );
        if (me->client.message(
            ctl, &me->client, &msgc,
            client_x, client_y
          )==LIBAROMA_CTL_SCROLL_MSG_HANDLED){
          me->client_touch_start=libaroma_tick();
          me->allow_scroll=2;
        }
      }
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
      
      me->prevn=1;
      me->prev_point[0]=y;
      me->prev_time[0]=libaroma_tick();
      
      /* save touch value */
      me->touch_x=x;
      me->touch_y=y;
      me->touch_scroll_y = me->scroll_y;
    }
    break;
    case LIBAROMA_HID_EV_STATE_UP:{
      ALOGT("scroll_message - touch up: %i, %i",x, y);
      me->bounce_velocity=0;
      if (!me->handle_touched){
        if (me->allow_scroll){
          int current_point = (y==0)?me->prev_point[me->prevn-1]:y;
          long current_time = libaroma_tick();
          int first_point   = me->prev_point[0];
          long first_time   = me->prev_time[0];
          if (current_time-first_time<1) {
            first_time--;
          }
          if (current_time-first_time<=300) {
            int diff = first_point - current_point;
            int time = current_time - first_time;
            me->touched=0;
            me->velocity = round(((double) diff/(time>>4))*382);
          }
        }
      }
      else if (me->allow_scroll==1){
        if (!(me->flags&LIBAROMA_CTL_SCROLL_NO_INDICATOR)){
          me->scroll_tick = libaroma_tick();
          me->scroll_state=256;
          me->synced_y=-1;
        }
      }
      
      /* clear item touch if initialized */
      if ((me->client_touch_start||me->client_touched)&&(me->client.message)){
        int client_x = x;
        int client_y = y + me->scroll_y;
        LIBAROMA_MSG msgc;
        if (me->client_touch_start){
          /* direct touch down & up */
          libaroma_wm_compose(
            &msgc,
            LIBAROMA_CTL_SCROLL_MSG,
            NULL,
            LIBAROMA_CTL_SCROLL_MSG_TOUCH_DOWN,
            0
          );
          if (me->client.message(
              ctl, &me->client, &msgc,
              client_x, client_y
            )==LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW){
            me->synced_y=-1;
          }
        }
        libaroma_wm_compose(
          &msgc,
          LIBAROMA_CTL_SCROLL_MSG,
          NULL,
          LIBAROMA_CTL_SCROLL_MSG_TOUCH_UP,
          0
        );
        if (me->client.message(
            ctl, &me->client, &msgc,
            client_x, client_y
          )==LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW){
          me->synced_y=-1;
        }
      }
      me->client_touch_start=0;
      me->client_touched=0;
      
      /* reset */
      me->handle_touched=0;
      me->allow_scroll=0;
      me->touched=0;
      me->touch_x=0;
      me->touch_y=0;
    }
    break;
    case LIBAROMA_HID_EV_STATE_MOVE:{
      ALOGT("scroll_message - touch move: %i, %i",x, y);
      me->bounce_velocity=0;
      int move_sz = me->touch_y - y;
      byte is_first_allowed = 0;
      if (me->allow_scroll==2){
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
        if ((me->client_touched)&&(me->client.message)){
          int client_x = x;
          int client_y = y + me->scroll_y;
          LIBAROMA_MSG msgc;
          libaroma_wm_compose(
            &msgc,
            LIBAROMA_CTL_SCROLL_MSG,
            NULL,
            client_message_param,
            0
          );
          if (me->client.message(
              ctl, &me->client, &msgc,
              client_x, client_y
            )==LIBAROMA_CTL_SCROLL_MSG_NEED_DRAW){
            me->synced_y=-1;
          }
          if (client_message_param==LIBAROMA_CTL_SCROLL_MSG_TOUCH_CANCEL){
            me->client_touched=0;
          }
        }
      }
      
      /* scrolling move handler */
      if (me->allow_scroll==1){
        if (!me->handle_touched){
          /* normal scroll */
          if (is_first_allowed){
            libaroma_ctl_scroll_request_pos(ctl, me->touch_scroll_y+move_sz);
          }
          else{
            me->request_scroll_y=-1;
            libaroma_ctl_scroll_set_pos(ctl, me->touch_scroll_y+move_sz);
          }
          me->touch_y=y;
          me->touch_scroll_y = me->scroll_y;
          
          /* set history */
          long ctick = libaroma_tick();
          me->prevn++;
          if (me->prevn>_LIBAROMA_CTL_SCROLL_HISTORY){
            int i;
            for (i=1;i<_LIBAROMA_CTL_SCROLL_HISTORY;i++){
              me->prev_point[i-1]=me->prev_point[i];
              me->prev_time[i-1]=me->prev_time[i];
            }
            me->prevn--;
          }
          me->prev_point[me->prevn-1]=y;
          me->prev_time[me->prevn-1]=ctick;
        }
        else if (me->max_scroll_y>0){
          int ctl_h = ctl->h-libaroma_dp(36);
          int sarea = ctl_h - ((ctl->h * ctl_h) / me->client_h);
          int scr_y = y-(ctl->h/2)+(sarea/2);
          int req_y = (scr_y * me->max_scroll_y) / sarea;
          libaroma_ctl_scroll_request_pos(ctl,req_y);
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
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
        
        /* send message to child */
        if (me->client.message!=NULL){
          LIBAROMA_MSG msgc;
          libaroma_wm_compose(
            &msgc,
            LIBAROMA_CTL_SCROLL_MSG,
            NULL,
            LIBAROMA_CTL_SCROLL_MSG_ACTIVATED,
            0
          );
          me->client.message(
              ctl, &me->client, &msgc,
              0, 0
            );
        }
        
        /* start cache thread */
        pthread_create(
          &me->cache_thread,
          NULL,
          _libaroma_ctl_scroll_cache_thread,
          (voidp) ctl);
        pthread_create(
          &me->calc_thread,
          NULL,
          _libaroma_ctl_scroll_calc_thread,
          (voidp) ctl);
      }
      break;
    case LIBAROMA_MSG_WIN_INACTIVE:
      {
        /* stop updater thread */
        me->active=0;
        pthread_join(me->calc_thread, NULL);
        pthread_join(me->cache_thread, NULL);
        me->cache_thread=0;
        me->calc_thread=0;
        
        /* send message to child */
        if (me->client.message!=NULL){
          LIBAROMA_MSG msgc;
          libaroma_wm_compose(
            &msgc,
            LIBAROMA_CTL_SCROLL_MSG,
            NULL,
            LIBAROMA_CTL_SCROLL_MSG_INACTIVATED,
            0
          );
          me->client.message(
              ctl, &me->client, &msgc,
              0, 0
            );
        }
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 
  );
  /* destroy client */
  if (me->client.destroy!=NULL){
    me->client.destroy(ctl,&me->client);
  }
  if (me->client_canvas!=NULL){
    libaroma_canvas_free(me->client_canvas);
    me->client_canvas=NULL;
  }
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
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      _LIBAROMA_CTL_SCROLL_SIGNATURE, id,
      x, y, w, h,
      libaroma_dp(96),libaroma_dp(96), /* min size */
      _libaroma_ctl_scroll_msg,
      _libaroma_ctl_scroll_draw,
      NULL,
      _libaroma_ctl_scroll_destroy,
      _libaroma_ctl_scroll_thread
    );
  
  /* init internal data */
  _LIBAROMA_CTL_SCROLLP me = (_LIBAROMA_CTL_SCROLLP)
      malloc(sizeof(_LIBAROMA_CTL_SCROLL));
  
  /* set internal data */
  me->flags = flags;
  me->color_bg = bg_color;
  me->client_canvas = NULL;
  
  /* client */
  me->client.signature=0;
  me->client.internal=NULL;
  me->client.message=NULL;
  me->client.draw=NULL;
  me->client.destroy=NULL;
  me->client.thread=NULL;
  
  /* threads */
  me->active=0;
  me->cache_thread=0;
  me->request_new_height=-1;
  
  /* scrolls */
  me->request_scroll_y=-1;
  me->scroll_y = 0;
  me->cache_y = 0;
  me->client_h = 0;
  me->max_scroll_y=0;
  me->scroll_handle_time=0;
  
  /* caches */
  me->draw_y=0;
  me->cache_state = 0;
  me->move_state = 0;
  me->synced_y = -1;
  
  /* last scroll */
  me->scroll_tick = 0;
  me->scroll_state = 0;
  
  /* touch state */
  me->touch_x=0;
  me->touch_y=0;
  me->touched=0;
  me->touch_scroll_y=0;
  me->handle_touched=0;
  
  /* client touch */
  me->client_touched=0;
  me->client_touch_start=0;
  
  libaroma_mutex_init(me->mutex);
  
  /* reset fling */
  me->bounce_velocity = 0;
  me->velocity = 0;
  me->prevn = 0;
  me->allow_scroll = 0;
  me->prev_point[0] = 0;
  me->prev_time[0] = 0;
  
  /* attach internal data & return*/
  ctl->internal = (voidp) me;
  return libaroma_window_attach(win,ctl);
} /* End of libaroma_ctl_scroll */

/*
 * Function    : libaroma_ctl_scroll_request_height
 * Return Value: byte
 * Descriptions: request height
 */
byte libaroma_ctl_scroll_request_height(LIBAROMA_CONTROLP ctl, int h){
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  //libaroma_mutex_lock(me->mutex);
  me->request_new_height=h;
  //libaroma_mutex_unlock(me->mutex);
  return 1;
} /* End of libaroma_ctl_scroll_request_height */

/*
 * Function    : libaroma_ctl_scroll_set_height
 * Return Value: byte
 * Descriptions: set scroll height
 */
byte libaroma_ctl_scroll_set_height(LIBAROMA_CONTROLP ctl, int h){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  me->max_scroll_y = h-ctl->h;
  if (me->max_scroll_y<0){
    me->max_scroll_y=0;
  }
  me->client_h = h;
  
  if (me->client_h<1){
    if (me->client_canvas!=NULL){
      libaroma_canvas_free(me->client_canvas);
      me->client_canvas=NULL;
    }
  }
  else{
    /* max 3x control height */
    int valid_height = h;
    if (valid_height>_LIBAROMA_CTL_SCROLL_MAX_CACHE){
      valid_height=_LIBAROMA_CTL_SCROLL_MAX_CACHE;
    }
    LIBAROMA_CANVASP new_client_canvas = libaroma_canvas(ctl->w,valid_height);
    LIBAROMA_CANVASP old_canvas = me->client_canvas;
    me->client_canvas = new_client_canvas;
    if (old_canvas!=NULL){
      libaroma_canvas_free(old_canvas);
    }
  }
  me->synced_y=-1;
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  int req_scroll_y = scroll_y;
  if (req_scroll_y>me->max_scroll_y){
    req_scroll_y = me->max_scroll_y;
  }
  if (req_scroll_y<0){
    req_scroll_y=0;
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (req_y>me->max_scroll_y){
    me->request_scroll_y=me->max_scroll_y;
  }
  else if (req_y<0){
    me->request_scroll_y=0;
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
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
    byte signature,
    LIBAROMA_CTL_SCROLLCB_MESSAGE message,
    LIBAROMA_CTL_SCROLLCB_DRAW draw,
    LIBAROMA_CTL_SCROLLCB_DESTROY destroy,
    LIBAROMA_CTL_SCROLLCB_THREAD thread
){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  //libaroma_mutex_lock(me->mutex);
  if (me->client.destroy!=NULL){
    me->client.destroy(ctl,&me->client);
  }
  me->client.signature=signature;
  me->client.internal=internal;
  me->client.message=message;
  me->client.draw=draw;
  me->client.destroy=destroy;
  me->client.thread=thread;
  me->synced_y=-1;
  me->cache_state = 10; /* force recalculate */
  //libaroma_mutex_unlock(me->mutex);
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, NULL
  );
  if (!me->client.signature){
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
  );
  if (me->client_canvas==NULL){
    return 0;
  }
  if (!me->active){
    return 0;
  }
  int scroll_y=me->scroll_y;
  int bottom = y+h;
  if ((bottom>scroll_y)&&(y<scroll_y+ctl->h)){
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
    _LIBAROMA_CTL_SCROLL_SIGNATURE, _LIBAROMA_CTL_SCROLLP, 0
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
  
  //libaroma_mutex_lock(me->mutex);
  int top=y;
  int bottom = y+h;
  int client_top = me->scroll_y - me->draw_y;
  int client_bottom = client_top + me->client_canvas->h;
  int start_y = 0;
  if (top<client_top){
    start_y = client_top-top;
    top = client_top;
  }
  if (bottom>client_bottom){
    bottom=client_bottom;
  }
  int dy = top - client_top;
  int dh = (bottom - client_bottom) - dy;
  if (dh>0){
    if (erase){
      libaroma_draw_rect(
        me->client_canvas, x, dy, w, dh,
        me->color_bg, 0xff
      );
    }
    libaroma_draw_ex(
      me->client_canvas, canvas,
      x, dy, 0, start_y, w, dh, 1, 0xff
    );
    //libaroma_mutex_unlock(me->mutex);
    return 1;
  }
  //libaroma_mutex_unlock(me->mutex);
  return 0;
} /* End of libaroma_ctl_scroll_blit */









byte ______draw_n = 0;
/* TEST SCROLL CONTROL */
void _libaroma_ctl_testscroll_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CTL_SCROLL_CLIENTP client,
    LIBAROMA_CANVASP cv,
    int x, int y, int w, int h){
  int pos = floor(y/80);
  int cnt = ceil(h/80.0 + ceil(y/80.0) - pos);
  int i;
  ______draw_n=______draw_n?0:1;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i=0;i<cnt;i++){
    int item_y = (i+pos) * 80;
    int ddy=item_y-y;
    if (ddy>=cv->h){
      continue;
    }
    char text[128];
    snprintf(text,128,"Scrolling Test %i", i+pos);
    LIBAROMA_CANVASP item_cv = libaroma_canvas(w,80);
    libaroma_canvas_setcolor(item_cv,
      /*(______draw_n?RGB(ffcccc):RGB(ccffcc))*/
      RGB(ffffff)
    ,255);

    libaroma_draw_text(
      item_cv,
      text,
      20,
      5,
      RGB(557799),
      w-40,
      LIBAROMA_FONT(0,4)|
      LIBAROMA_TEXT_SINGLELINE|
      LIBAROMA_TEXT_CENTER|
      LIBAROMA_TEXT_FIXED_INDENT|
      LIBAROMA_TEXT_FIXED_COLOR|
      LIBAROMA_TEXT_NOHR,
      120);

    if (ddy<0){
      if (ddy+item_cv->h>0){
        libaroma_draw_ex(cv,
          item_cv,
          0,0,
          0,abs(ddy),
          item_cv->w,
          item_cv->h+ddy,0,0xff);
      }
    }
    else if (ddy<cv->h){
      libaroma_draw_ex(cv,item_cv,
        0,ddy,
        0,0,
        item_cv->w,
        item_cv->h,
        0,0xff);
    }
    libaroma_canvas_free(item_cv);
  }
}

LIBAROMA_CONTROLP libaroma_ctl_testscroll(
    LIBAROMA_WINDOWP win, word id,
    int x, int y, int w, int h,
    word bg_color, byte flags
){
  LIBAROMA_CONTROLP ctl = libaroma_ctl_scroll(
    win, id, x, y, w, h, bg_color, flags
  );
  libaroma_ctl_scroll_set_client(
    ctl, NULL, 1,
    NULL,
    _libaroma_ctl_testscroll_draw,
    NULL,
    NULL
  );
  libaroma_ctl_scroll_set_height(ctl, 10000);
  return ctl;
}

#endif /* __libaroma_ctl_scroll_c__ */
