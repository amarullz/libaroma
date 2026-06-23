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
 * Filename    : ctl_pager.c
 * Description : pager control
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_ctl_pager_c__
#define __libaroma_ctl_pager_c__
#include <aroma_internal.h>
#include "../ui/ui_internal.h"

#define _LIBAROMA_CTL_PAGER_HOLD_TIMING 300
#define _LIBAROMA_CTL_PAGER_ANI_TIMING 500
#define _LIBAROMA_CTL_PAGER_TOUCH_CLIENT_WAIT 120

/* HANDLER */
dword _libaroma_ctl_pager_msg(LIBAROMA_CONTROLP, LIBAROMA_MSGP);
void _libaroma_ctl_pager_draw (LIBAROMA_CONTROLP, LIBAROMA_CANVASP);
void _libaroma_ctl_pager_destroy(LIBAROMA_CONTROLP);
byte _libaroma_ctl_pager_thread(LIBAROMA_CONTROLP);
static LIBAROMA_CONTROL_HANDLER _libaroma_ctl_pager_handler={
  message:_libaroma_ctl_pager_msg,
  draw:_libaroma_ctl_pager_draw,
  focus:NULL,
  destroy:_libaroma_ctl_pager_destroy,
  thread:_libaroma_ctl_pager_thread
};

/* window handler */
byte _libaroma_ctl_pager_window_invalidate(LIBAROMA_WINDOWP win, byte sync);
byte _libaroma_ctl_pager_window_sync(LIBAROMA_WINDOWP win,
  int x,int y,int w,int h);
byte _libaroma_ctl_pager_window_updatebg(LIBAROMA_WINDOWP win);
/*
byte _libaroma_ctl_pager_window_control_draw_flush(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl,
  LIBAROMA_CANVASP canvas,byte sync
);
byte _libaroma_ctl_pager_window_control_erasebg(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl,
  LIBAROMA_CANVASP canvas
);
*/
byte _libaroma_ctl_pager_window_control_isvisible(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl
);
LIBAROMA_CANVASP _libaroma_ctl_pager_window_control_draw_begin(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl
);
static LIBAROMA_WINDOW_HANDLER _libaroma_ctl_pager_win_handler={
  prefree:NULL,
  postfree:NULL,
  updatebg:_libaroma_ctl_pager_window_updatebg,
  invalidate:_libaroma_ctl_pager_window_invalidate,
  sync:_libaroma_ctl_pager_window_sync,
  message_hooker:NULL,
    
  control_draw_flush:NULL /*_libaroma_ctl_pager_window_control_draw_flush*/,
  control_erasebg:NULL /*_libaroma_ctl_pager_window_control_erasebg*/,
  control_isvisible:_libaroma_ctl_pager_window_control_isvisible,
  control_draw_begin:_libaroma_ctl_pager_window_control_draw_begin
};

/*
 * Structure   : __LIBAROMA_CTL_PAGER
 * Typedef     : _LIBAROMA_CTL_PAGER, * _LIBAROMA_CTL_PAGERP
 * Descriptions: button control internal structure
 */
typedef struct __LIBAROMA_CTL_PAGER _LIBAROMA_CTL_PAGER;
typedef struct __LIBAROMA_CTL_PAGER * _LIBAROMA_CTL_PAGERP;
struct __LIBAROMA_CTL_PAGER{
  LIBAROMA_WINDOWP win;
  int pagen;
  int page_position;
  
  long scroll_target_start;
  int scroll_target_from_x;
  int scroll_x;
  int req_scroll_x;
  int max_scroll_x;
  
  byte allow_scroll;
  int touch_x;
  int touch_y;
  long client_touch_start;
  LIBAROMA_MSG pretouched_msg;
  LIBAROMA_CONTROLP pretouched;
  
  int scroll_duration;
  LIBAROMA_FLING fling;
  
  byte redraw;
  LIBAROMA_MUTEX mutex;
  byte on_direct_canvas;
  byte need_direct_canvas;
  
  LIBAROMA_CTL_PAGER_CONTROLLERP controller;
};

/*
 * Function    : _libaroma_ctl_pager_direct_canvas
 * Return Value: byte
 * Descriptions: set as direct canvas
 */
byte _libaroma_ctl_pager_direct_canvas(LIBAROMA_CONTROLP ctl, byte state){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 0
  );
  //libaroma_mutex_lock(me->mutex);
  int xt = me->scroll_x; // me->page_position * ctl->w;
  if (state){
    if (!me->on_direct_canvas){
      me->on_direct_canvas=1;
    }
  }
  else{
    if (me->on_direct_canvas){
      LIBAROMA_CANVASP ccv = libaroma_control_draw_begin(ctl);
      if (ccv) {
        // libaroma_draw_ex(me->win->dc,ccv,0,0,xt,0,ccv->w,ccv->h,0,0xff);
        libaroma_draw_ex(me->win->dc,ccv,xt,0,0,0,ccv->w,ccv->h,0,0xff);
        libaroma_canvas_free(ccv);
      }
      me->on_direct_canvas=0;
    }
  }
  //libaroma_mutex_unlock(me->mutex);
  return 1;
} /* End of _libaroma_ctl_pager_direct_canvas */

/*
 * Function    : _libaroma_ctl_pager_window_invalidate
 * Return Value: byte
 * Descriptions: window invalidate
 */
byte _libaroma_ctl_pager_window_invalidate(LIBAROMA_WINDOWP win, byte sync){
  LIBAROMA_CONTROLP ctl=(LIBAROMA_CONTROLP) win->client_data;
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 0
  );
  if (me->win!=win){
    return 0;
  }
  if ((me->win->dc)&&(me->win->bg)){
    libaroma_draw(me->win->dc,me->win->bg,0,0,0);
    /* draw childs */
    int i;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (i=0;i<win->childn;i++){
      /* draw no sync */
      libaroma_control_draw(win->childs[i], 0);
    }
  }
  if (sync){
    return _libaroma_ctl_pager_window_sync(win,0,0,win->w,win->h);
  }
  return 1;
} /* End of _libaroma_ctl_pager_window_invalidate */

/*
 * Function    : _libaroma_ctl_pager_window_sync
 * Return Value: byte
 * Descriptions: window sync
 */
byte _libaroma_ctl_pager_window_sync(LIBAROMA_WINDOWP win,
  int x,int y,int w,int h){
  LIBAROMA_CONTROLP ctl=(LIBAROMA_CONTROLP) win->client_data;
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 0
  );
  if (me->win!=win){
    return 0;
  }
  me->redraw=1;
  return 1;
} /* End of _libaroma_ctl_pager_window_sync */

/*
 * Function    : _libaroma_ctl_pager_window_control_isvisible
 * Return Value: byte
 * Descriptions: check if control is visible
 */
byte _libaroma_ctl_pager_window_control_isvisible(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl
){
  LIBAROMA_CONTROLP ctl=(LIBAROMA_CONTROLP) win->client_data;
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 0
  );
  libaroma_mutex_lock(me->mutex);
  int xt = me->scroll_x; /*me->page_position * ctl->w;*/
  int ww = ctl->w;
  if (!win->active){
    xt=0;
    ww=win->w;
  }
  int sx = cctl->x-xt;
  int sy = cctl->y;
  libaroma_mutex_unlock(me->mutex);
  if (sx+cctl->w<0){
    return 0;
  }
  if (sx>ww){
    return 0;
  }
  if (sy+cctl->h<0){
    return 0;
  }
  if (sy>win->h){
    return 0;
  }
  return 1;
} /* End of _libaroma_ctl_pager_window_control_isvisible */

/*
 * Function    : _libaroma_ctl_pager_window_control_draw_begin
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: get canvas for child control
 */
LIBAROMA_CANVASP _libaroma_ctl_pager_window_control_draw_begin(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl
){
  LIBAROMA_CONTROLP ctl=(LIBAROMA_CONTROLP) win->client_data;
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, NULL
  );
  LIBAROMA_CANVASP c=NULL;
  libaroma_mutex_lock(me->mutex);
  if (!me->on_direct_canvas){
    if (win->dc==NULL){
      libaroma_mutex_unlock(me->mutex);
      return NULL;
    }
    c = libaroma_canvas_area(
      win->dc,
      cctl->x, cctl->y, cctl->w, cctl->h
    );
  }
  else{
    int xt = me->scroll_x;
    int x = cctl->x - xt;
    int y = cctl->y;
    int w = cctl->w;
    int h = cctl->h;
    LIBAROMA_CANVASP ccv = libaroma_control_draw_begin(ctl);
    if (ccv){
      if ((ccv->w>x)&&(ccv->h>y)){
        c = libaroma_canvas_area(
          ccv,x,y,w,h
        );
      }
      libaroma_canvas_free(ccv);
    }
    else{
      libaroma_mutex_unlock(me->mutex);
      return NULL;
    }
  }
  libaroma_mutex_unlock(me->mutex);
  return c;
} /* End of _libaroma_ctl_pager_window_control_draw_begin */

/*
 * Function    : _libaroma_ctl_pager_window_updatebg
 * Return Value: byte
 * Descriptions: window update background
 */
byte _libaroma_ctl_pager_window_updatebg(LIBAROMA_WINDOWP win){
  LIBAROMA_CONTROLP ctl=(LIBAROMA_CONTROLP) win->client_data;
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 0
  );
  if (me->win!=win){
    return 0;
  }
  int w = win->w;
  int h = win->h;
  /* draw background */
  if (win->bg!=NULL){
    if ((win->bg->w==w)&&(win->bg->h==h)){
      /* not need recreate background */
      return 1;
    }
    libaroma_canvas_free(win->bg);
  }
  win->bg = libaroma_canvas(w,h);
  libaroma_canvas_setcolor(
    win->bg,
    libaroma_colorget(ctl,NULL)->window_bg,
    0xff
  );
  
  return 1;
} /* End of _libaroma_ctl_pager_window_sync */

/*
 * Function    : _libaroma_ctl_pager_draw
 * Return Value: void
 * Descriptions: draw callback
 */
void _libaroma_ctl_pager_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CANVASP c){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 
  );
  
  if (!me->win->active){
    if (!me->redraw){
      _libaroma_ctl_pager_window_invalidate(me->win,0);
    }
  }

  /* draw window canvas */
  libaroma_mutex_lock(me->mutex);
  if (!me->on_direct_canvas){
    if (me->win->dc){
      libaroma_draw_ex(c,me->win->dc,0,0,me->scroll_x,0,
      c->w,c->h,0,0xff);
    }
    else{
      /* just erase background */
      libaroma_control_erasebg(ctl,c);
    }
    
    /* need revert to direct canvas */
    if (me->need_direct_canvas){
      me->need_direct_canvas=0;
      //libaroma_mutex_unlock(me->mutex);
      _libaroma_ctl_pager_direct_canvas(ctl, 1);
      //libaroma_mutex_lock(me->mutex);
    }
  }
  libaroma_mutex_unlock(me->mutex);
  me->redraw=0;
} /* End of _libaroma_ctl_pager_draw */

/*
 * Function    : _libaroma_ctl_pager_thread
 * Return Value: byte
 * Descriptions: control thread callback
 */
byte _libaroma_ctl_pager_thread(LIBAROMA_CONTROLP ctl) {
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 0
  );
  byte is_draw = me->redraw;
  
  if (me->win->active==1){
    #ifdef LIBAROMA_CONFIG_OPENMP
    #pragma omp parallel sections
    {
      #pragma omp section
      {
      #endif
        /* pretouched */
        libaroma_mutex_lock(me->mutex);
        if ((me->client_touch_start!=0)&&
            (libaroma_tick()-me->client_touch_start>
            _LIBAROMA_CTL_PAGER_TOUCH_CLIENT_WAIT)){
          me->client_touch_start=0;
          if (me->pretouched!=NULL){
            me->win->touched=me->pretouched;
            me->pretouched=NULL;
            if (me->win->touched->handler->message){
              me->win->touched->handler->message(
                me->win->touched,&me->pretouched_msg);
            }
          }
        }
        
        if (me->req_scroll_x!=-1){
          /* direct request */
          if (me->req_scroll_x!=me->scroll_x){
            int move_sz = ((me->req_scroll_x-me->scroll_x)*64)>>8;
            if (abs(move_sz)<2){
              if (move_sz<0){
                move_sz=-1;
              }
              else{
                move_sz=1;
              }
            }
            int target_sz = me->scroll_x+move_sz;
            if (target_sz==me->req_scroll_x){
              target_sz=me->req_scroll_x;
              me->req_scroll_x=-1;
            }
            me->scroll_x=target_sz;
            is_draw=1;
            /* onscroll controller message */
            if (me->controller){
              if ((me->controller->pager==ctl)&&
                (me->controller->controller)) {
                if (me->controller->handler){
                  if (me->controller->handler->onscroll){
                    int scrollx=me->scroll_x;
                    libaroma_mutex_unlock(me->mutex);
                    me->controller->handler->onscroll(
                      me->controller->controller,
                      me->controller->pager,
                      scrollx,
                      me->win->w,
                      ctl->w,
                      me->page_position
                    );
                    libaroma_mutex_lock(me->mutex);
                  }
                }
              }
            }
          }
          else{
            me->req_scroll_x=-1;
          }
        }
        libaroma_mutex_unlock(me->mutex);
        /* fling */
        if (me->scroll_target_start>0){
          me->req_scroll_x=-1;
          int xt = me->page_position * ctl->w;
          int dxt= (xt - me->scroll_target_from_x);
          float state = libaroma_control_state(
            me->scroll_target_start,
            MAX(100,me->scroll_duration)
          );
          state = libaroma_motion_fluid(state);
          
          int difxt = dxt * (1.0-state);
          libaroma_mutex_lock(me->mutex);
          me->scroll_x = xt-difxt;
          libaroma_mutex_unlock(me->mutex);
          /* onscroll controller message */
          if (me->controller){
            if ((me->controller->pager==ctl)&&(me->controller->controller)) {
              if (me->controller->handler){
                if (me->controller->handler->onscroll){
                  me->controller->handler->onscroll(
                    me->controller->controller,
                    me->controller->pager,
                    me->scroll_x,
                    me->win->w,
                    ctl->w,
                    me->page_position
                  );
                }
              }
            }
          }
          
          
          if (state>=1.0){
            libaroma_mutex_lock(me->mutex);
            me->scroll_x = xt;
            me->scroll_target_start=0;
            me->need_direct_canvas=1;
            libaroma_mutex_unlock(me->mutex);
            
            /* onscroll finish controller message */
            if (me->controller){
              if ((me->controller->pager==ctl)&&(me->controller->controller)) {
                if (me->controller->handler){
                  if (me->controller->handler->onscroll_finish){
                    me->controller->handler->onscroll_finish(
                      me->controller->controller,
                      me->controller->pager,
                      me->page_position
                    );
                  }
                }
              }
            }
          }
          is_draw=1;
        }
      #ifdef LIBAROMA_CONFIG_OPENMP
      }
      #pragma omp section
      {
      #endif
        int i;
        #ifdef LIBAROMA_CONFIG_OPENMP
          #pragma omp parallel for
        #endif
        for (i=0;i<me->win->childn;i++){
          LIBAROMA_CONTROLP c=me->win->childs[i];
          if (c->handler->thread!=NULL){
            if (c->handler->thread(c)){
              if (libaroma_control_draw(c,0)){
                is_draw=1;
              }
            }
          }
        }
      #ifdef LIBAROMA_CONFIG_OPENMP
      }
    }
    #endif
  }
  return is_draw;
} /* End of _libaroma_ctl_pager_thread */

/*
 * Function    : _libaroma_ctl_pager_destroy
 * Return Value: void
 * Descriptions: destroy callback
 */
void _libaroma_ctl_pager_destroy(
    LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 
  );
  
  if (me->controller){
    if (me->controller->pager==ctl){
      me->controller->pager=NULL;
    }
  }
  
  libaroma_window_free(me->win);
  libaroma_mutex_free(me->mutex);
  free(me);
} /* End of _libaroma_ctl_pager_destroy */

/*
 * Function    : _libaroma_ctl_pager_msg
 * Return Value: byte
 * Descriptions: message callback
 */
dword _libaroma_ctl_pager_msg(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_MSGP msg){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 0
  );
  dword ret = 0;
  LIBAROMA_WINDOWP win = me->win;
  switch(msg->msg){
    case LIBAROMA_MSG_WIN_ACTIVE:
      {
        if (!win->active){
          int i;
          win->active=1;
          for (i=0;i<win->childn;i++){
            if (win->childs[i]->handler->message){
              win->childs[i]->handler->message(win->childs[i], msg);
            }
          }
          libaroma_mutex_lock(me->mutex);
          me->need_direct_canvas=1;
          libaroma_mutex_unlock(me->mutex);
        }
      }
      break;
    case LIBAROMA_MSG_WIN_RESIZE:
      {
        int i;
        for (i=0;i<win->childn;i++){
          if (win->childs[i]->handler->message){
            win->childs[i]->handler->message(win->childs[i], msg);
          }
        }
      }
      break;
    case LIBAROMA_MSG_WIN_INACTIVE:
      {
        if (win->active){
          libaroma_mutex_lock(me->mutex);
          _libaroma_ctl_pager_direct_canvas(ctl, 0);
          libaroma_mutex_unlock(me->mutex);
          win->active=0;
          int i;
          for (i=0;i<win->childn;i++){
            if (win->childs[i]->handler->message){
              win->childs[i]->handler->message(win->childs[i], msg);
            }
          }
        }
      }
      break;
    case LIBAROMA_MSG_WIN_MEASURED:
      {
        libaroma_mutex_lock(me->mutex);
        win->x = 0;
        win->y = 0;
        win->ax=ctl->x;
        win->ay=ctl->y;
        win->w = ctl->w*me->pagen;
        win->h = ctl->h;
        me->max_scroll_x = win->w-ctl->w;
        if (win->dc){
          if ((win->dc->w!=win->w)||(win->dc->h!=win->h)){
            libaroma_canvas_free(win->dc);
            win->dc=NULL;
          }
        }
        if (!win->dc){
          win->dc = libaroma_canvas(
            win->w,
            win->h
          );
        }
        libaroma_mutex_unlock(me->mutex);
        _libaroma_ctl_pager_window_updatebg(win);
        
        /* remeasured all childs */
        int i;
        for (i=0;i<win->childn;i++){
          libaroma_window_measure(win,win->childs[i]);
        }
      }
      break;
    case LIBAROMA_MSG_TOUCH:
      {
        int x = msg->x;
        int y = msg->y;
        libaroma_window_calculate_pos(NULL,ctl,&x,&y);
        int xt=me->page_position * ctl->w;
        msg->x = x;
        msg->y = y;
        
        /* touch handler */
        if (msg->state==LIBAROMA_HID_EV_STATE_DOWN){
          libaroma_mutex_lock(me->mutex);
          memcpy(&me->pretouched_msg,msg,sizeof(LIBAROMA_MSG));
          me->pretouched_msg.x=x+xt;
          win->touched = NULL;
          me->pretouched=NULL;
          libaroma_mutex_unlock(me->mutex);
          if (me->scroll_target_start==0){
            int i;
            for (i=0;i<win->childn;i++){
              if (_libaroma_window_is_inside(win->childs[i],x+xt,y)){
                libaroma_mutex_lock(me->mutex);
                me->pretouched = win->childs[i];
                libaroma_mutex_unlock(me->mutex);
                break;
              }
            }
          }
          libaroma_mutex_lock(me->mutex);
          if (me->pretouched!=NULL){
            if (me->pretouched->handler->message){
              if (me->max_scroll_x>0){
                me->client_touch_start=msg->sent; /*libaroma_tick();*/
              }
              else{
                me->client_touch_start=msg->sent-
                  _LIBAROMA_CTL_PAGER_TOUCH_CLIENT_WAIT;
                /*libaroma_tick()-_LIBAROMA_CTL_PAGER_TOUCH_CLIENT_WAIT;*/
              }
            }
            else{
              me->pretouched=NULL;
            }
          }
          if (me->scroll_target_start==0){
            if (me->max_scroll_x>0){
              me->allow_scroll=2;
            }
            else{
              me->allow_scroll=1;
            }
          }
          else{
            me->scroll_target_start=0;
            me->allow_scroll=1;
          }
          me->touch_x=x;
          me->touch_y=y;
          libaroma_fling_down(&me->fling, x);
          libaroma_mutex_unlock(me->mutex);
        }
        else if (win->touched!=NULL){
          x+=xt;
          msg->x=x;
          if (win->touched->handler->message){
            ret=win->touched->handler->message(win->touched, msg);
          }
          if (msg->state==LIBAROMA_HID_EV_STATE_UP){
            win->touched=NULL;
          }
        }
        else{
          if (msg->state==LIBAROMA_HID_EV_STATE_MOVE){
            libaroma_mutex_lock(me->mutex);
            if (me->max_scroll_x>0){
              byte is_first_scroll=0;
              if (me->allow_scroll==2){
                int move_sz = me->touch_x - x;
                int move_sz_y = me->touch_y - y;
                int scrdp=libaroma_dp(24);
                if ((abs(move_sz_y)>=scrdp)&&(abs(move_sz_y)>=abs(move_sz))){
                  /* halt the scroll and send to control */
                  if (me->pretouched){
                    if (me->pretouched->handler->message){
                      msg->x=x+xt;
                      
                      me->client_touch_start=0;
                      win->touched=me->pretouched;
                      me->pretouched=NULL;
                      
                      /* send down & move message */
                      win->touched->handler->message(
                        win->touched,&me->pretouched_msg);
                      win->touched->handler->message(
                        win->touched,msg);
                    }
                    else{
                      me->pretouched=NULL;
                    }
                    me->client_touch_start=0;
                    me->allow_scroll=0;
                    me->touch_x=x;
                    me->touch_y=y;
                    me->redraw=1;
                  }
                }
                else if (abs(move_sz)>=scrdp){
                  is_first_scroll=1;
                  me->allow_scroll=1;
                  me->client_touch_start=0;
                  me->pretouched=NULL;
                  win->touched=NULL;
                }
              }
              if ((me->allow_scroll==1)&&(me->touch_x!=x)){
                if (me->max_scroll_x>0){
                  _libaroma_ctl_pager_direct_canvas(ctl, 0);
                  int move_sz = me->touch_x - x;
                  if ((is_first_scroll)||(me->req_scroll_x!=-1)){
                    if (me->req_scroll_x==-1){
                      me->req_scroll_x=me->scroll_x;
                    }
                    int scroll_x = me->req_scroll_x + move_sz;
                    if (scroll_x<0){
                      scroll_x=0;
                    }
                    if (scroll_x>me->max_scroll_x){
                      scroll_x=me->max_scroll_x;
                    }
                    me->req_scroll_x=scroll_x;
                  }
                  else{
                    int scroll_x = me->scroll_x + move_sz;
                    if (scroll_x<0){
                      scroll_x=0;
                    }
                    if (scroll_x>me->max_scroll_x){
                      scroll_x=me->max_scroll_x;
                    }
                    if (scroll_x!=me->scroll_x){
                      me->scroll_x=scroll_x;
                      /* onscroll controller message */
                      if (me->controller){
                        if ((me->controller->pager==ctl)&&
                          (me->controller->controller)) {
                          if (me->controller->handler){
                            if (me->controller->handler->onscroll){
                              me->controller->handler->onscroll(
                                me->controller->controller,
                                me->controller->pager,
                                scroll_x,
                                me->win->w,
                                ctl->w,
                                me->page_position
                              );
                            }
                          }
                        }
                      }
                      me->redraw=1;
                    }
                  }
                  
                  me->touch_x=x;
                  libaroma_fling_move(&me->fling, x);
                }
              }
            }
            libaroma_mutex_unlock(me->mutex);
          }
          else if (msg->state==LIBAROMA_HID_EV_STATE_UP){
            libaroma_mutex_lock(me->mutex);
            if (me->allow_scroll){
              int vel = libaroma_fling_up(&me->fling, x);
              int target_x = me->page_position;
              double velocity = 0;
              if (vel) {
                if (me->page_position*ctl->w<me->scroll_x){
                  if (vel>0){
                    target_x++;
                    velocity = ((float) vel) / 800.0;
                  }
                }
                else if (me->page_position*ctl->w>me->scroll_x){
                  if (vel<0){
                    target_x--;
                    velocity = ((float) vel) / 800.0;
                  }
                }
              }
              libaroma_mutex_unlock(me->mutex);
              libaroma_ctl_pager_set_active_page(
                ctl, target_x, velocity
              );
              libaroma_mutex_lock(me->mutex);
            }
            if (me->client_touch_start||me->pretouched){
              if (me->pretouched->handler->message){
                msg->x=x+xt;
                /* send down & up message */
                me->pretouched->handler->message(
                  me->pretouched,&me->pretouched_msg);
                me->pretouched->handler->message(
                  me->pretouched,msg);
              }
            }
            me->client_touch_start=0;
            me->pretouched=NULL;
            me->touch_x=x;
            me->touch_y=y;
            me->redraw=1;
            libaroma_mutex_unlock(me->mutex);
          }
        }
      }
      break;
  }
  return ret;
} /* End of _libaroma_ctl_pager_msg */

/*
 * Function    : libaroma_ctl_pager_set_active_page
 * Return Value: byte
 * Descriptions: set active page
 */
byte libaroma_ctl_pager_set_active_page(
  LIBAROMA_CONTROLP ctl, int page_id, double velocity){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 0
  );
  if ((page_id<0)||(page_id>=me->pagen)){
    return 0;
  }
  libaroma_mutex_lock(me->mutex);
  /* calculate slide duration */
  int dx = (page_id * ctl->w) - me->scroll_x;
  if (dx!=0) {
    int width = ctl->w;
    int halfWidth = width / 2;
    float distanceRatio = MIN(1.0, 1.0 * abs(dx) / width);
    distanceRatio -= 0.5;
    distanceRatio *= 0.3;
    distanceRatio = sin(distanceRatio);
    float distance = halfWidth + halfWidth * distanceRatio;
    int duration = 0;
    if (velocity > 0) {
        duration = round(15 * fabs(distance/velocity));
    }
    else{
      float pageWidth = width;
      float pageDelta = abs(dx)/pageWidth;
      duration = (int) ((pageDelta + 1) * 300);
    }
    duration = MAX(100,MIN(duration, 600));
    _libaroma_ctl_pager_direct_canvas(ctl, 0);
    me->page_position = page_id;
    me->scroll_duration = duration;
    me->scroll_target_from_x = me->scroll_x;
    me->scroll_target_start=libaroma_tick();
  }
  libaroma_mutex_unlock(me->mutex);
  return 1;
} /* End of libaroma_ctl_pager_set_active_page */

/*
 * Function    : libaroma_ctl_pager_get_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: get window
 */
LIBAROMA_WINDOWP libaroma_ctl_pager_get_window(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, NULL
  );
  return me->win;
} /* End of libaroma_ctl_pager_get_window */

/*
 * Function    : libaroma_ctl_pager_get_active_page
 * Return Value: int
 * Descriptions: get active page index
 */
int libaroma_ctl_pager_get_active_page(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, -1
  );
  return me->page_position;
} /* End of libaroma_ctl_pager_get_active_page */

/*
 * Function    : libaroma_ctl_pager_get_pages
 * Return Value: int
 * Descriptions: get number of pages
 */
int libaroma_ctl_pager_get_pages(LIBAROMA_CONTROLP ctl){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 0
  );
  return me->pagen;
} /* End of libaroma_ctl_pager_get_pages */

/*
 * Function    : libaroma_ctl_pager_set_controller
 * Return Value: byte
 * Descriptions: set tab controller
 */
byte libaroma_ctl_pager_set_controller(
  LIBAROMA_CONTROLP ctl, 
  LIBAROMA_CTL_PAGER_CONTROLLERP controller){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_pager_handler, _LIBAROMA_CTL_PAGERP, 0
  );
  
  libaroma_mutex_lock(me->mutex);
  
  /* cleanup previeous controller */
  if (me->controller){
    if (me->controller->pager==ctl){
      me->controller->pager=NULL;
    }
  }
  
  me->controller = controller;
  if (controller){
    if (me->controller->pager!=ctl){
      me->controller->pager=ctl;
    }
  }
  
  libaroma_mutex_unlock(me->mutex);
  
  return 1;
} /* End of libaroma_ctl_pager_set_controller */



/*
 * Function    : libaroma_ctl_pager
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_pager(
    LIBAROMA_WINDOWP win,
    word id, int pager_number,
    int x, int y, int w, int h
){
  if (!win){
    ALOGW("pager need direct window attach");
    return NULL;
  }
  
  /* init internal data */
  _LIBAROMA_CTL_PAGERP me = (_LIBAROMA_CTL_PAGERP)
      calloc(sizeof(_LIBAROMA_CTL_PAGER),1);
  if (!me){
    ALOGW("libaroma_ctl_pager alloc pager memory failed");
    return NULL;
  }
  me->pagen=pager_number;
  me->req_scroll_x=-1;
  me->win = (LIBAROMA_WINDOWP) calloc(sizeof(LIBAROMA_WINDOW),1);
  if (!me->win){
    ALOGW("libaroma_ctl_pager alloc window data failed");
    free(me);
    return NULL;
  }
  me->win->handler=&_libaroma_ctl_pager_win_handler;
  me->win->parent=win;
  
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      id,
      x, y, w, h,
      libaroma_dp(48),libaroma_dp(48), /* min size */
      (voidp) me,
      &_libaroma_ctl_pager_handler,
      NULL
    );
  
  if (!ctl){
    free(me->win);
    free(me);
    return NULL;
  }
  
  me->win->client_data=ctl;
  libaroma_mutex_init(me->mutex);
  return libaroma_window_attach(win,ctl);
} /* End of libaroma_ctl_pager */


#endif /* __libaroma_ctl_pager_c__ */
