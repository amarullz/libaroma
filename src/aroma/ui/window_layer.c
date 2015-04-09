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
 * Filename    : window_layer.c
 * Description : multi layer window
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 07/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_window_layer_c__
#define __libaroma_window_layer_c__
#include <aroma_internal.h>
#include "ui_internal.h"

#define _LIBAROMA_WINDOW_LAYER_HISTORY 10

/* root window client data */
typedef struct{
  LIBAROMA_WINDOWP win;
  LIBAROMA_WINDOWP sidebar;
  byte sidebar_showed;
  int sidebar_xpos;
  int sidebar_req_x;
  byte redraw;
  
  LIBAROMA_MUTEX mutex;
  LIBAROMA_CANVASP tdc;
  byte on_direct_canvas;
  byte (*ori_ui_thread)(LIBAROMA_WINDOWP);
  
  byte touched;
  int touch_x;
  int touch_y;
  
  int prevn;
  int prev_point[_LIBAROMA_WINDOW_LAYER_HISTORY];
  long prev_time[_LIBAROMA_WINDOW_LAYER_HISTORY];
} _LIBAROMA_WINDOW_LAYER, *_LIBAROMA_WINDOW_LAYERP;

/* window handler */
byte _libaroma_window_layer_sync(LIBAROMA_WINDOWP win,
  int x,int y,int w,int h);
void _libaroma_window_layer_postfree(LIBAROMA_WINDOWP win);
LIBAROMA_CANVASP _libaroma_window_layer_control_draw_begin(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl
);
byte _libaroma_window_layer_message_hooker(
    LIBAROMA_WINDOWP win, LIBAROMA_MSGP msg, dwordp retval
);
byte _libaroma_window_layer_updatedc(LIBAROMA_WINDOWP win);
static LIBAROMA_WINDOW_HANDLER _libaroma_window_layer_handler={
  prefree:NULL,
  postfree:_libaroma_window_layer_postfree,
  updatebg:NULL,
  invalidate:NULL,
  sync:_libaroma_window_layer_sync,
  message_hooker:_libaroma_window_layer_message_hooker,
  control_draw_flush:NULL,
  control_erasebg:NULL,
  control_isvisible:NULL,
  control_draw_begin:_libaroma_window_layer_control_draw_begin
};

/*
 * Function    : _libaroma_window_layer_check
 * Return Value: _LIBAROMA_WINDOW_LAYERP
 * Descriptions: get root window client data
 */
static inline _LIBAROMA_WINDOW_LAYERP _libaroma_window_layer_check(
    LIBAROMA_WINDOWP win){
  if (!win){
    return NULL;
  }
  if (win->parent!=NULL){
    return NULL;
  }
  if (win->handler!=&_libaroma_window_layer_handler){
    return NULL;
  }
  return (_LIBAROMA_WINDOW_LAYERP) win->client_data;
} /* End of _libaroma_window_layer_check */

/*
 * Function    : _libaroma_window_layer_postfree
 * Return Value: void
 * Descriptions: postfree client_data
 */
void _libaroma_window_layer_postfree(LIBAROMA_WINDOWP win){
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win);
  if (!me){
    return;
  }
  
  if (me->sidebar){
    if (me->sidebar->active){
      me->sidebar->active=0;
      LIBAROMA_MSG msgia;
      msgia.msg=LIBAROMA_MSG_WIN_INACTIVE;
      int i;
      for (i=0;i<me->sidebar->childn;i++){
        if (me->sidebar->childs[i]->handler->message){
          me->sidebar->childs[i]->handler->message(
            me->sidebar->childs[i], &msgia
          );
        }
      }
    }
    libaroma_mutex_lock(me->mutex);
    libaroma_window_free(me->sidebar);
    libaroma_mutex_unlock(me->mutex);
  }
  libaroma_mutex_lock(me->mutex);
  if (me->tdc){
    libaroma_canvas_free(me->tdc);
  }
  win->ui_thread=me->ori_ui_thread;
  win->handler = NULL;
  win->client_data = NULL;
  libaroma_mutex_unlock(me->mutex);
  libaroma_mutex_free(me->mutex);
  free(me);
} /* End of _libaroma_window_layer_postfree */

/*
 * Function    : _libaroma_window_layer_updatedc
 * Return Value: byte
 * Descriptions: update nondirect dc
 */
byte _libaroma_window_layer_updatedc(LIBAROMA_WINDOWP win){
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win);
  if (!me){
    return 0;
  }
  if (win->active!=1){
    return 0;
  }
  libaroma_mutex_lock(me->mutex);
  if (!me->on_direct_canvas){
    if (me->tdc){
      byte sidebar_draw=0;
      if (win->active==1){
        if (me->sidebar_showed){
          if (me->sidebar){
            if (me->sidebar_xpos>0){
              libaroma_draw_ex(
                win->dc,
                me->sidebar->dc,
                0, me->sidebar->y,
                me->sidebar->w-me->sidebar_xpos, 0,
                me->sidebar_xpos,
                me->sidebar->h,
                0,0xff
              );
              libaroma_draw_ex(win->dc,me->tdc,
                me->sidebar_xpos,0,
                me->sidebar_xpos,0,
                win->dc->w-me->sidebar_xpos,win->dc->h,
                0,0xff);
              libaroma_draw_rect(
                win->dc, 
                me->sidebar_xpos, 0, win->dc->w-me->sidebar_xpos, me->sidebar->h
                ,0,(150*me->sidebar_xpos/me->sidebar->w)+10
              );
              sidebar_draw=1;
            }
          }
        }
      }
      if (!sidebar_draw){
        libaroma_draw(win->dc,me->tdc,0,0,0);
      }
    }
  }
  libaroma_mutex_unlock(me->mutex);
  return 1;
} /* End of _libaroma_window_layer_updatedc */

/*
 * Function    : _libaroma_window_layer_sync
 * Return Value: byte
 * Descriptions: window sync
 */
byte _libaroma_window_layer_sync(LIBAROMA_WINDOWP win,
  int x,int y,int w,int h){
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win);
  if (!me){
    return 0;
  }
  if (!win->lock_sync){
    if (!libaroma_window_isactive(win)){
      ALOGW("libaroma_window_sync win is not active window");
      return 0;
    }
    if (win->dc==NULL){
      ALOGW("window_invalidate dc is null");
      return 0;
    }
    _libaroma_window_layer_updatedc(win);
    /* sync workspace */
    libaroma_wm_sync(win->x+x,win->y+y,w,h);
  }
  return 1;
} /* End of _libaroma_window_layer_sync */

/*
 * Function    : _libaroma_window_layer_control_draw_begin
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: get canvas for child control
 */
LIBAROMA_CANVASP _libaroma_window_layer_control_draw_begin(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl
){
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win);
  if (!me){
    return NULL;
  }
  LIBAROMA_CANVASP c=NULL;
  libaroma_mutex_lock(me->mutex);
  LIBAROMA_CANVASP dc = (me->on_direct_canvas)?win->dc:me->tdc;
  if (!dc){
    libaroma_mutex_unlock(me->mutex);
    return NULL;
  }
  c = libaroma_canvas_area(
    dc, cctl->x, cctl->y, cctl->w, cctl->h
  );
  libaroma_mutex_unlock(me->mutex);
  return c;
} /* End of _libaroma_window_layer_control_draw_begin */

/*
 * Function    : libaroma_window_layer_direct_canvas
 * Return Value: byte
 * Descriptions: set as direct canvas
 */
byte libaroma_window_layer_direct_canvas(LIBAROMA_WINDOWP win, byte state){
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win);
  if (!me){
    return 0;
  }
  libaroma_mutex_lock(me->mutex);
  if (state){
    if (!me->on_direct_canvas){
      if ((win->dc)&&(me->tdc)) {
        libaroma_draw(win->dc,me->tdc,0,0,0);
      }
      if (me->tdc){
        libaroma_canvas_free(me->tdc);
        me->tdc=NULL;
      }
      me->on_direct_canvas=1;
    }
  }
  else{
    if (me->on_direct_canvas){
      if (win->dc){
        if (!me->tdc){
          me->tdc = libaroma_canvas(
            win->dc->w, win->dc->h
          );
        }
        if (me->tdc) {
          libaroma_draw(me->tdc,win->dc,0,0,0);
        }
      }
      me->on_direct_canvas=0;
    }
  }
  libaroma_mutex_unlock(me->mutex);
  return 1;
} /* End of libaroma_window_layer_direct_canvas */

/*
 * Function    : _libaroma_window_layer_set_sidebar_pos
 * Return Value: byte
 * Descriptions: set sidebar position
 */
byte _libaroma_window_layer_set_sidebar_pos(LIBAROMA_WINDOWP win, int x){
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win);
  if (!me){
    return 0;
  }
  libaroma_mutex_lock(me->mutex);
  if (!me->sidebar){
    libaroma_mutex_unlock(me->mutex);
    return 0;
  }
  if (x>0){
    if (x>me->sidebar->w){
      x=me->sidebar->w;
    }
    if (!me->sidebar_showed){
      if (!me->sidebar->active){
        /* activate sidebar */
        LIBAROMA_MSG msgr;
        dword rv=0;
        msgr.msg=LIBAROMA_MSG_WIN_MEASURED;
        libaroma_mutex_unlock(me->mutex);
        me->sidebar->handler->message_hooker(me->sidebar,&msgr,&rv);
        msgr.msg=LIBAROMA_MSG_WIN_ACTIVE;
        me->sidebar->handler->message_hooker(me->sidebar,&msgr,&rv);
        libaroma_window_invalidate(me->sidebar,0);
        libaroma_mutex_lock(me->mutex);
      }
      libaroma_mutex_unlock(me->mutex);
      libaroma_window_layer_direct_canvas(win,0);
      libaroma_mutex_lock(me->mutex);
      me->sidebar_showed=1;
      printf("side state = 1 - init\n");
    }
    if (me->sidebar_xpos!=x){
      me->redraw=1;
    }
    if (x==me->sidebar->w){
      if (me->sidebar_showed!=2){
        me->sidebar_showed=2;
        printf("side state = 2\n");
      }
    }
    else if (me->sidebar_showed==2){
      me->sidebar_showed=1;
      printf("side state = 1\n");
    }
    me->sidebar_xpos=x;
  }
  else{
    if (me->sidebar_showed){
      me->sidebar_showed=0;
      printf("side state = 0\n");
      libaroma_mutex_unlock(me->mutex);
      libaroma_window_layer_direct_canvas(win,1);
      libaroma_mutex_lock(me->mutex);
    }
    if (me->sidebar_xpos!=0){
      me->redraw=1;
    }
    me->sidebar_xpos=0;
  }
  libaroma_mutex_unlock(me->mutex);
  return 1;
} /* End of _libaroma_window_layer_set_sidebar_pos */

byte _libaroma_window_layer_message_hooker(
    LIBAROMA_WINDOWP win, LIBAROMA_MSGP msg, dwordp retval){
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win);
  if (!me){
    return 0;
  }
  if (win->active==1){
    if (me->sidebar_showed==2){
      if (me->sidebar){
        if (me->sidebar->handler->message_hooker(
            me->sidebar, msg, retval
          )){
          return 1;
        }
      }
    }
    else if (me->touched==10){
      /* cancel any touch event */
      if (msg->msg==LIBAROMA_MSG_TOUCH){
        return 1;
      }
    }
    else if (me->sidebar){
      switch (msg->msg){
        case LIBAROMA_MSG_TOUCH:
          {
            int x = msg->x;
            int y = msg->y;
            libaroma_window_calculate_pos(win,NULL,&x,&y);
            if (msg->state==LIBAROMA_HID_EV_STATE_DOWN){
              if (x<libaroma_dp(20)){
                printf("start sidebar reveal\n");
                libaroma_mutex_lock(me->mutex);
                me->sidebar_req_x=x;
                me->touched=1;
                me->touch_x=x;
                me->touch_y=y;
                
                me->prevn=1;
                me->prev_point[0]=x;
                me->prev_time[0]=libaroma_tick();
                libaroma_mutex_unlock(me->mutex);
                return 1;
              }
            }
            else if (me->touched){
              if (msg->state==LIBAROMA_HID_EV_STATE_MOVE){
                libaroma_mutex_lock(me->mutex);
                me->sidebar_req_x=x;
                
                /* set history */
                long ctick = libaroma_tick();
                me->prevn++;
                if (me->prevn>_LIBAROMA_WINDOW_LAYER_HISTORY){
                  int i;
                  for (i=1;i<_LIBAROMA_WINDOW_LAYER_HISTORY;i++){
                    me->prev_point[i-1]=me->prev_point[i];
                    me->prev_time[i-1]=me->prev_time[i];
                  }
                  me->prevn--;
                }
                me->prev_point[me->prevn-1]=x;
                me->prev_time[me->prevn-1]=ctick;
                libaroma_mutex_unlock(me->mutex);
              }
              else if (msg->state==LIBAROMA_HID_EV_STATE_UP){
                libaroma_mutex_lock(me->mutex);
                int current_point = (x==0)?me->prev_point[me->prevn-1]:x;
                long current_time = libaroma_tick();
                int first_point   = me->prev_point[0];
                long first_time   = me->prev_time[0];
                if (current_time-first_time<1) {
                  first_time--;
                }
                int velocity=0;
                if (current_time-first_time<=300) {
                  int diff = first_point - current_point;
                  int time = current_time - first_time;
                  velocity = round(((double) diff/(time>>4))*360);
                }
                if (velocity>=0){
                  me->sidebar_req_x=0;
                }
                else{
                  me->sidebar_req_x=me->sidebar->w;
                }
                me->touched=0;
                libaroma_mutex_unlock(me->mutex);
              }
              return 1;
            }
          }
          break;
      }
    }
  }
  return 0;
}


/*
 * Function    : _libaroma_window_layer_ui_thread
 * Return Value: byte
 * Descriptions: layered window ui thread
 */
byte _libaroma_window_layer_ui_thread(LIBAROMA_WINDOWP win) {
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win);
  if (!me){
    return 0;
  }
  byte need_sync=0;
  if (win->active==1){
    libaroma_mutex_lock(me->mutex);
    if ((me->sidebar)&&(me->sidebar_req_x!=-1)){
      /* show - hide sidebar */
      if (!me->sidebar->active){
        libaroma_mutex_unlock(me->mutex);
        _libaroma_window_layer_set_sidebar_pos(win,1);
        libaroma_mutex_lock(me->mutex);
        printf("sidebar width: %i\n",me->sidebar->w);
      }
      else if (me->sidebar->w<=0){
        /* invalid sidebar */
        me->sidebar_req_x=-1;
      }
      else if (me->sidebar_req_x!=me->sidebar_xpos){
        int move_sz = ((me->sidebar_req_x-me->sidebar_xpos)*64)>>8;
        if (abs(move_sz)<2){
          if (move_sz<0){
            move_sz=-1;
          }
          else{
            move_sz=1;
          }
        }
        int target_sz = me->sidebar_xpos+move_sz;
        if (target_sz>=me->sidebar->w){
          if ((me->touched)&&(me->touched!=10)){
            target_sz=me->sidebar->w-1;
          }
          else{
            if (me->touched==10){
              me->touched=0;
            }
            target_sz=me->sidebar->w;
            me->sidebar_req_x=-1;
          }
        }
        else if (target_sz<=0){
          if ((me->touched)&&(me->touched!=10)){
            target_sz=1;
          }
          else{
            if (me->touched==10){
              me->touched=0;
            }
            target_sz=0;
            me->sidebar_req_x=-1;
          }
        }
        libaroma_mutex_unlock(me->mutex);
        _libaroma_window_layer_set_sidebar_pos(win,target_sz);
        libaroma_mutex_lock(me->mutex);
      }
    }
    libaroma_mutex_unlock(me->mutex);
    
    if (me->sidebar_showed){
      if (me->sidebar){  
        if (me->sidebar->ui_thread){
          if (me->sidebar->ui_thread(me->sidebar)){
            need_sync=1;
          }
        }
      }
    }
  }
  
  if (me->ori_ui_thread){
    if (me->ori_ui_thread(win)){
      need_sync = 1;
    }
  }
  
  libaroma_mutex_lock(me->mutex);
  if (me->redraw){
    need_sync=1;
    me->redraw=0;
  }
  libaroma_mutex_unlock(me->mutex);
  if (need_sync){
    if (win->active==1){
      _libaroma_window_layer_updatedc(win);
    }
  }
  return need_sync;
} /* End of _libaroma_window_layer_ui_thread */

/*
 * Function    : libaroma_window_layer_init
 * Return Value: byte
 * Descriptions: init window as layered window
 */
byte libaroma_window_layer_init(LIBAROMA_WINDOWP win){
  if (!win){
    ALOGW("window_root_register win is not valid pointer");
    return 0;
  }
  if (win->parent){
    ALOGW("window_root_register win is not root window");
    return 0;
  }
  if (win->client_data){
    if (win->handler!=&_libaroma_window_layer_handler){
      ALOGW("window_root_register window is not valid root window");
      return 0;
    }
    return 1;
  }
  _LIBAROMA_WINDOW_LAYERP me =
    (_LIBAROMA_WINDOW_LAYERP) calloc(sizeof(_LIBAROMA_WINDOW_LAYER),1);
  if (!me){
    ALOGW("window_root_register cannot alloc internal data");
    return 0;
  }
  libaroma_mutex_init(me->mutex);
  libaroma_mutex_lock(me->mutex);
  me->win = win;
  me->on_direct_canvas=1;
  me->ori_ui_thread=win->ui_thread;
  me->sidebar_req_x=-1;
  win->handler = &_libaroma_window_layer_handler;
  win->client_data = me;
  win->ui_thread=_libaroma_window_layer_ui_thread;
  libaroma_mutex_unlock(me->mutex);
  return 1;
} /* End of libaroma_window_layer_init */

/*
 * Function    : libaroma_window_layer_release
 * Return Value: byte
 * Descriptions: release layer window
 */
byte libaroma_window_layer_release(LIBAROMA_WINDOWP win){
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win);
  if (!me){
    return 0;
  }
  _libaroma_window_layer_postfree(win);
  libaroma_window_invalidate(win,1);
  return 1;
} /* End of libaroma_window_layer_release */


/******************************* SIDEBAR **************************************/

/* sidebar window handler */
byte _libaroma_window_sidebar_invalidate(LIBAROMA_WINDOWP win, byte sync);
byte _libaroma_window_sidebar_sync(LIBAROMA_WINDOWP win,
  int x,int y,int w,int h);
byte _libaroma_window_sidebar_message_hooker(
    LIBAROMA_WINDOWP win, LIBAROMA_MSGP msg, dwordp retval
);
static LIBAROMA_WINDOW_HANDLER _libaroma_window_sidebar_handler={
  prefree:NULL,
  postfree:NULL,
  updatebg:NULL,
  invalidate:_libaroma_window_sidebar_invalidate,
  sync:_libaroma_window_sidebar_sync,
  message_hooker:_libaroma_window_sidebar_message_hooker,
  control_draw_flush:NULL,
  control_erasebg:NULL,
  control_isvisible:NULL,
  control_draw_begin:NULL
};

/*
 * Function    : _libaroma_window_sidebar_invalidate
 * Return Value: byte
 * Descriptions: invalidate
 */
byte _libaroma_window_sidebar_invalidate(LIBAROMA_WINDOWP win, byte sync){
  if (win->handler!=&_libaroma_window_sidebar_handler){
    return 0;
  }
  if ((win->dc)&&(win->bg)){
    libaroma_draw(win->dc,win->bg,0,0,0);
    /* draw childs */
    int i;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (i=0;i<win->childn;i++){
      libaroma_control_draw(win->childs[i], 0);
    }
  }
  if (sync){
    return _libaroma_window_sidebar_sync(win,0,0,win->w,win->h);
  }
  return 1;
} /* End of _libaroma_window_sidebar_invalidate */

/*
 * Function    : _libaroma_window_sidebar_sync
 * Return Value: byte
 * Descriptions: sync sidebar
 */
byte _libaroma_window_sidebar_sync(LIBAROMA_WINDOWP win,
  int x,int y,int w,int h){
  if (win->handler!=&_libaroma_window_sidebar_handler){
    return 0;
  }
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win->parent);
  if (!me){
    return 0;
  }
  if (me->sidebar_showed){
    me->redraw=1;
  }
  return 1;
} /* End of _libaroma_window_sidebar_sync */

/*
 * Function    : _libaroma_window_sidebar_message_hooker
 * Return Value: byte
 * Descriptions: sidebar message hooker
 */
byte _libaroma_window_sidebar_message_hooker(
    LIBAROMA_WINDOWP win, LIBAROMA_MSGP msg, dwordp retval
){
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win->parent);
  if (!me){
    return 0;
  }
  byte return_state=0;
  libaroma_mutex_lock(me->mutex);
  switch (msg->msg){
    case LIBAROMA_MSG_TOUCH:
      {
        if (win->parent->active!=1){
          return_state=0;
          goto end_message;
        }
        /* touch handler */
        if (msg->state==LIBAROMA_HID_EV_STATE_DOWN){
          win->touched = NULL;
          int x = msg->x;
          int y = msg->y;
          libaroma_window_calculate_pos(win->parent,NULL,&x,&y);
          if (x<win->w){
            int i;
            for (i=0;i<win->childn;i++){
              if (_libaroma_window_is_inside(win->childs[i],x,y)){
                win->touched = win->childs[i];
                break;
              }
            }
            if (win->touched!=NULL){
              if (win->touched->handler->message){
                *retval=win->touched->handler->message(win->touched, msg);
              }
            }
          }
          else{
            libaroma_mutex_unlock(me->mutex);
            _libaroma_window_layer_set_sidebar_pos(win->parent,win->w-1);
            libaroma_mutex_lock(me->mutex);
            me->sidebar_req_x=0;
            me->touched=10;
          }
        }
        else if (win->touched!=NULL){
          if (msg->state==LIBAROMA_HID_EV_STATE_MOVE){
            if (win->touched->handler->message){
              *retval=win->touched->handler->message(win->touched, msg);
            }
          }
          else if (msg->state==LIBAROMA_HID_EV_STATE_UP){
            if (win->touched->handler->message){
              *retval=win->touched->handler->message(win->touched, msg);
            }
            win->touched=NULL;
          }
        }
        return_state=1;
        goto end_message;
      }
      break;
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
    case LIBAROMA_MSG_WIN_MEASURED:
      {
        int target_w  = libaroma_window_usedp(2)?win->rw:libaroma_dp(win->rw);
        if (target_w==0){
          target_w=win->parent->w-libaroma_dp(56);
        }
        target_w = libaroma_window_measure_calculate(
          target_w,win->rw,win->parent->w,1,0
        );
    
        win->x=win->y=win->rx=win->ry=win->left=win->top=0;
        win->w  = target_w;
        win->h  = win->parent->h;
        if (libaroma_window_usedp(2)){
          win->rw=win->width=libaroma_px(win->w);
          win->rh=win->height=libaroma_px(win->h);
        }
        else{
          win->rw=win->width= win->w;
          win->rh=win->height= win->h;
        }
        if (win->dc){
          if ((win->dc->w!=win->w)||(win->dc->h!=win->h)){
            libaroma_canvas_free(win->dc);
            if (win->bg){
              libaroma_canvas_free(win->bg);
            }
            win->dc=NULL;
            win->bg=NULL;
          }
        }
        if (!win->dc){
          win->dc = libaroma_canvas(win->w,win->h);
          win->bg = libaroma_canvas(win->w,win->h);
          libaroma_canvas_setcolor(win->dc,0xffff,0);
          libaroma_canvas_setcolor(win->bg,0xffff,0);
        }
        
        /* remeasured all childs */
        int i;
        for (i=0;i<win->childn;i++){
          libaroma_window_measure(win,win->childs[i]);
        }
      }
      break;
  }
end_message:
  libaroma_mutex_unlock(me->mutex);
  return return_state;
} /* End of _libaroma_window_sidebar_message_hooker */

/*
 * Function    : _libaroma_window_sidebar_ui_thread
 * Return Value: byte
 * Descriptions: window sidebar ui thread
 */
byte _libaroma_window_sidebar_ui_thread(LIBAROMA_WINDOWP win) {
  int i;
  byte need_sync = 0;
  if (win->active==1){
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (i=0;i<win->childn;i++){
      LIBAROMA_CONTROLP c=win->childs[i];
      if (c->handler->thread!=NULL){
        if (c->handler->thread(c)){
          libaroma_control_draw(c,0);
          need_sync=1;
        }
      }
    }
  }
  return need_sync;
} /* End of _libaroma_window_sidebar_ui_thread */

/*
 * Function    : libaroma_window_sidebar
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: new or get sidebar window
 */
LIBAROMA_WINDOWP libaroma_window_sidebar(LIBAROMA_WINDOWP win, int width){
  if (!libaroma_window_layer_init(win)){
    return NULL;
  }
  _LIBAROMA_WINDOW_LAYERP me = _libaroma_window_layer_check(win);
  if (!me){
    return NULL;
  }
  if (me->sidebar){
    return me->sidebar;
  }
  
  libaroma_mutex_lock(me->mutex);
  LIBAROMA_WINDOWP sidebar = (LIBAROMA_WINDOWP)
    calloc(sizeof(LIBAROMA_WINDOW),1);
  if (!sidebar){
    libaroma_mutex_unlock(me->mutex);
    ALOGW("window_sidebar alloc sidebar data failed");
    return NULL;
  }
  sidebar->rw = width;
  sidebar->handler=&_libaroma_window_sidebar_handler;
  sidebar->parent=win;
  sidebar->ui_thread=_libaroma_window_sidebar_ui_thread;
  me->sidebar=sidebar;
  me->redraw=1;
  libaroma_mutex_unlock(me->mutex);
  return sidebar;
} /* End of libaroma_window_sidebar */




#endif /* __libaroma_window_layer_c__ */

