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
 * Filename    : ctl_fragment.c
 * Description : Fragment Control Source
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_ctl_fragment_c__
#define __libaroma_ctl_fragment_c__
#include <aroma_internal.h>
#include "../ui/ui_internal.h"

/*************************** CONTROL HANDLERS *********************************/
dword _libaroma_ctl_fragment_msg(LIBAROMA_CONTROLP, LIBAROMA_MSGP);
void _libaroma_ctl_fragment_draw(LIBAROMA_CONTROLP, LIBAROMA_CANVASP);
void _libaroma_ctl_fragment_destroy(LIBAROMA_CONTROLP);
byte _libaroma_ctl_fragment_thread(LIBAROMA_CONTROLP);
static LIBAROMA_CONTROL_HANDLER _libaroma_ctl_fragment_handler={
  message:_libaroma_ctl_fragment_msg,
  draw:_libaroma_ctl_fragment_draw,
  focus:NULL,
  destroy:_libaroma_ctl_fragment_destroy,
  thread:_libaroma_ctl_fragment_thread
};

/**************************** WINDOW HANDLERS *********************************/
byte _libaroma_ctl_fragment_window_invalidate(LIBAROMA_WINDOWP win, byte sync);
byte _libaroma_ctl_fragment_window_sync(LIBAROMA_WINDOWP win,
  int x,int y,int w,int h);
byte _libaroma_ctl_fragment_window_updatebg(LIBAROMA_WINDOWP win);
byte _libaroma_ctl_fragment_window_control_isvisible(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl
);
LIBAROMA_CANVASP _libaroma_ctl_fragment_window_control_draw_begin(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl
);
void _libaroma_ctl_fragment_window_postfree(LIBAROMA_WINDOWP win);
static LIBAROMA_WINDOW_HANDLER _libaroma_ctl_fragment_win_handler={
  prefree:NULL,
  postfree:_libaroma_ctl_fragment_window_postfree,
  updatebg:_libaroma_ctl_fragment_window_updatebg,
  invalidate:_libaroma_ctl_fragment_window_invalidate,
  sync:_libaroma_ctl_fragment_window_sync,
  message_hooker:NULL,
  control_draw_flush:NULL,
  control_erasebg:NULL,
  control_isvisible:_libaroma_ctl_fragment_window_control_isvisible,
  control_draw_begin:_libaroma_ctl_fragment_window_control_draw_begin
};

/************************** FRAGMENT STRUCTURE ********************************/
/*
 * Structure   : __LIBAROMA_CTL_FRAGMENT
 * Typedef     : _LIBAROMA_CTL_FRAGMENT, * _LIBAROMA_CTL_FRAGMENTP
 * Descriptions: button control internal structure
 */
typedef struct __LIBAROMA_CTL_FRAGMENT _LIBAROMA_CTL_FRAGMENT;
typedef struct __LIBAROMA_CTL_FRAGMENT * _LIBAROMA_CTL_FRAGMENTP;
struct __LIBAROMA_CTL_FRAGMENT{
  LIBAROMA_WINDOWP * wins;
  int win_n;
  int win_pos;
  int win_pos_out;
  byte win_cleanup;
  long transition_start;
  long transition_duration;
  float transition_state;
  byte transition_type;
  byte transision_delprev;
  LIBAROMA_TRANSITION_CB transition_cb;
  LIBAROMA_RECTP transition_rs;
  LIBAROMA_RECTP transition_re;
  
  byte redraw;
  byte on_direct_canvas;
  byte need_direct_canvas;
  LIBAROMA_MUTEX mutex;
  LIBAROMA_MUTEX dmutex;
  int win_next_del_id;
};
typedef struct{
  int id;
  byte active_state;
  LIBAROMA_CONTROLP ctl;
} _LIBAROMA_CTL_FRAGMENT_WIN, * _LIBAROMA_CTL_FRAGMENT_WINP;
    
/************************** INTERNAL FUNCTIONS ********************************/
/*
 * Function    : _libaroma_ctl_fragment_get_win_index
 * Return Value: int 
 * Descriptions: get window index
 */
inline int _libaroma_ctl_fragment_get_win_index(
    _LIBAROMA_CTL_FRAGMENTP me,
    LIBAROMA_WINDOWP win){
  int i;
  for (i=0;i<me->win_n;i++){
    if (me->wins[i]==win){
      return i;
    }
  }
  return -1;
} /* End of _libaroma_ctl_fragment_get_win_index */

/* FRAGMENT VALIDATOR MACRO */
#define _VALIDATE_FRAGMENT(error_ret) \
  _LIBAROMA_CTL_FRAGMENT_WINP wind = (_LIBAROMA_CTL_FRAGMENT_WINP) \
    win->client_data; \
  if (!wind){ return error_ret; } \
  LIBAROMA_CONTROLP ctl=wind->ctl; \
  _LIBAROMA_CTL_CHECK( \
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, error_ret); \
  int win_index = _libaroma_ctl_fragment_get_win_index(me,win); \
  if (win_index==-1){ return error_ret; }
    
/*
 * Function    : _libaroma_ctl_fragment_direct_canvas
 * Return Value: byte
 * Descriptions: set as direct canvas
 */
byte _libaroma_ctl_fragment_direct_canvas(LIBAROMA_CONTROLP ctl, byte state){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, 0
  );
  libaroma_mutex_lock(me->dmutex);
  if ((me->win_n<1)||(me->win_pos==-1)) {
    libaroma_mutex_unlock(me->dmutex);
    return 0;
  }
  LIBAROMA_WINDOWP win = me->wins[me->win_pos];
  if (state){
    me->on_direct_canvas=1;
  }
  else{
    if (me->on_direct_canvas){
      LIBAROMA_CANVASP ccv = libaroma_control_draw_begin(ctl);
      if (ccv) {
        libaroma_draw(win->dc,ccv,0,0,0);
        libaroma_canvas_free(ccv);
      }
    }
    me->on_direct_canvas=0;
  }
  libaroma_mutex_unlock(me->dmutex);
  return 1;
} /* End of _libaroma_ctl_fragment_direct_canvas */

/*
 * Function    : _libaroma_ctl_fragment_window_invalidate
 * Return Value: byte
 * Descriptions: window invalidate
 */
byte _libaroma_ctl_fragment_window_invalidate(LIBAROMA_WINDOWP win, byte sync){
  _VALIDATE_FRAGMENT(0);
  if ((win->dc)&&(win->bg)){
    libaroma_draw(win->dc,win->bg,0,0,0);
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
    return _libaroma_ctl_fragment_window_sync(win,0,0,win->w,win->h);
  }
  return 1;
} /* End of _libaroma_ctl_fragment_window_invalidate */

void _libaroma_ctl_fragment_measure(LIBAROMA_WINDOWP win){
  _VALIDATE_FRAGMENT();
  libaroma_mutex_lock(me->dmutex);
  win->x = 0;
  win->y = 0;
  win->ax=ctl->x;
  win->ay=ctl->y;
  win->w = ctl->w;
  win->h = ctl->h;
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
  _libaroma_ctl_fragment_window_updatebg(win);
  int i;
  #ifdef LIBAROMA_CONFIG_OPENMP
    #pragma omp parallel for
  #endif
  for (i=0;i<win->childn;i++){
    libaroma_window_measure(win,win->childs[i]);
  }
  libaroma_mutex_unlock(me->dmutex);
}

/* send activate event */
void _libaroma_ctl_fragment_activate_win(LIBAROMA_WINDOWP win, byte active){
  _VALIDATE_FRAGMENT();
  LIBAROMA_MSG msg;
  if (!active){
    if (win->active){
      wind->active_state=0;
        
      libaroma_wm_compose(
        &msg, LIBAROMA_MSG_WIN_INACTIVE, NULL, 0, 0
      );
    
      win->active=0;
      int i;
      #ifdef LIBAROMA_CONFIG_OPENMP
        #pragma omp parallel for
      #endif
      for (i=0;i<win->childn;i++){
        if (win->childs[i]->handler->message){
          win->childs[i]->handler->message(win->childs[i], &msg);
        }
      }
    }
  }
  else{
    if (!win->active){
      wind->active_state=1;
      
      if (!win->dc){
        _libaroma_ctl_fragment_measure(win);
      }
      
      libaroma_wm_compose(
        &msg, LIBAROMA_MSG_WIN_ACTIVE, NULL, 0, 0
      );
      
      int i;
      win->active=1;
      #ifdef LIBAROMA_CONFIG_OPENMP
        #pragma omp parallel for
      #endif
      for (i=0;i<win->childn;i++){
        if (win->childs[i]->handler->message){
          win->childs[i]->handler->message(win->childs[i], &msg);
        }
      }
    }
  }
}

/*
 * Function    : _libaroma_ctl_fragment_window_postfree
 * Return Value: void
 * Descriptions: post free window
 */
void _libaroma_ctl_fragment_window_postfree(LIBAROMA_WINDOWP win){
  _VALIDATE_FRAGMENT();
  if (wind){
    free(wind);
    win->client_data=NULL;
  }
} /* End of _libaroma_ctl_fragment_window_postfree */

/*
 * Function    : _libaroma_ctl_fragment_window_sync
 * Return Value: byte
 * Descriptions: window sync
 */
byte _libaroma_ctl_fragment_window_sync(LIBAROMA_WINDOWP win,
  int x,int y,int w,int h){
  _VALIDATE_FRAGMENT(0);
  if (!wind->active_state){
    return 0;
  }
  me->redraw=1;
  return 1;
} /* End of _libaroma_ctl_fragment_window_sync */

/*
 * Function    : _libaroma_ctl_fragment_window_control_isvisible
 * Return Value: byte
 * Descriptions: check if control is visible
 */
byte _libaroma_ctl_fragment_window_control_isvisible(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl
){
  _VALIDATE_FRAGMENT(0);
  if (!wind->active_state){
    return 0;
  }
  return 1;
} /* End of _libaroma_ctl_fragment_window_control_isvisible */

/*
 * Function    : _libaroma_ctl_fragment_window_control_draw_begin
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: get canvas for child control
 */
LIBAROMA_CANVASP _libaroma_ctl_fragment_window_control_draw_begin(
  LIBAROMA_WINDOWP win,LIBAROMA_CONTROLP cctl
){
  _VALIDATE_FRAGMENT(NULL);
  if (!wind->active_state){
    return NULL;
  }
  LIBAROMA_CANVASP c=NULL;
  libaroma_mutex_lock(me->dmutex);
  if (me->on_direct_canvas){
    int x = cctl->x;
    int y = cctl->y;
    int w = cctl->w;
    int h = cctl->h;
    LIBAROMA_CANVASP ccv = libaroma_control_draw_begin(ctl);
    if (ccv){
      if ((ccv->w>x)&&(ccv->h>y)){
        c = libaroma_canvas_area(ccv,x,y,w,h);
      }
      libaroma_canvas_free(ccv);
    }
  }
  else {
    if (win->dc!=NULL){
      c = libaroma_canvas_area(
        win->dc,
        cctl->x, cctl->y, cctl->w, cctl->h
      );
    }
  }
  libaroma_mutex_unlock(me->dmutex);
  return c;
} /* End of _libaroma_ctl_fragment_window_control_draw_begin */

/*
 * Function    : _libaroma_ctl_fragment_window_updatebg
 * Return Value: byte
 * Descriptions: window update background
 */
byte _libaroma_ctl_fragment_window_updatebg(LIBAROMA_WINDOWP win){
  _VALIDATE_FRAGMENT(0);
  libaroma_mutex_lock(me->dmutex);
  int w = win->w;
  int h = win->h;
  if (win->bg!=NULL){
    if ((win->bg->w==w)&&(win->bg->h==h)){
      libaroma_mutex_unlock(me->dmutex);
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
  libaroma_mutex_unlock(me->dmutex);
  return 1;
} /* End of _libaroma_ctl_fragment_window_sync */

/*
 * Function    : _libaroma_ctl_fragment_draw
 * Return Value: void
 * Descriptions: draw callback
 */
void _libaroma_ctl_fragment_draw(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_CANVASP c){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, 
  );
  libaroma_mutex_lock(me->mutex);
  if ((me->win_n<1)||(me->win_pos==-1)) {
    libaroma_control_erasebg(ctl,c);
    me->redraw=0;
    libaroma_mutex_unlock(me->mutex);
    return;
  }
  
  if (!me->redraw){
    int i;
    #ifdef LIBAROMA_CONFIG_OPENMP
      #pragma omp parallel for
    #endif
    for (i=0;i<me->win_n;i++){
      _LIBAROMA_CTL_FRAGMENT_WINP wind =
        (_LIBAROMA_CTL_FRAGMENT_WINP) me->wins[i]->client_data;
      if (wind->active_state){
        if (!me->wins[i]->active){
          _libaroma_ctl_fragment_window_invalidate(me->wins[i],0);
        }
      }
    }
  }

  /* draw window canvas */
  libaroma_mutex_lock(me->dmutex);
  if (!me->on_direct_canvas){
    if (me->win_pos_out==-1){
      LIBAROMA_WINDOWP awin = me->wins[me->win_pos];
      if (awin->dc){
        libaroma_draw(c,awin->dc,0,0,0);
      }
      else{
        libaroma_control_erasebg(ctl,c);
      }
    }
    else{
      LIBAROMA_WINDOWP awin = me->wins[me->win_pos];
      LIBAROMA_WINDOWP owin = me->wins[me->win_pos_out];
      if (me->transition_state==1){
        if (awin->dc){
          libaroma_draw(c,awin->dc,0,0,0);
        }
        else{
          libaroma_control_erasebg(ctl,c);
        }
        me->transition_state=0;
      }
      else if ((me->transition_cb)&&(owin->dc)&&(awin->dc)){
        me->transition_cb(
          c,
          owin->dc,
          awin->dc,
          me->transition_state,
          me->transition_rs,
          me->transition_re
        );
      }
      else{
        /* simple alpha transition */
        if (owin->dc){
          libaroma_draw(c,owin->dc,0,0,0);
        }
        else{
          libaroma_control_erasebg(ctl,c);
        }
        if (awin->dc){
          libaroma_draw_opacity(c,awin->dc,0,0,0,0xff*me->transition_state);
        }
      }
    }
  }
  libaroma_mutex_unlock(me->dmutex);
  
  /* need revert to direct canvas */
  if (me->need_direct_canvas){
    me->need_direct_canvas=0;
    _libaroma_ctl_fragment_direct_canvas(ctl, 1);
  }
  me->redraw=0;
  libaroma_mutex_unlock(me->mutex);
} /* End of _libaroma_ctl_fragment_draw */

byte libaroma_ctl_fragment_del_window_nomutex(
  LIBAROMA_CONTROLP ctl, int id);

/*
 * Function    : _libaroma_ctl_fragment_thread
 * Return Value: byte
 * Descriptions: control thread callback
 */
byte _libaroma_ctl_fragment_thread(LIBAROMA_CONTROLP ctl) {
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, 0
  );
  if ((me->win_n<1)||(me->win_pos==-1)) {
    return 0;
  }
  
  libaroma_mutex_lock(me->mutex);
  if (me->win_next_del_id!=-1){
    libaroma_ctl_fragment_del_window_nomutex(ctl,me->win_next_del_id);
    me->win_next_del_id=-1;
  }
  byte is_draw = me->redraw;
  {
    int j;
    #ifdef LIBAROMA_CONFIG_OPENMP
      #pragma omp parallel for
    #endif
    for (j=0;j<me->win_n;j++){
      LIBAROMA_WINDOWP win = me->wins[j];
      _LIBAROMA_CTL_FRAGMENT_WINP wind =
        (_LIBAROMA_CTL_FRAGMENT_WINP) win->client_data;
      if (wind->active_state){
        if (win->active){
          int i;
          #ifdef LIBAROMA_CONFIG_OPENMP
            #pragma omp parallel for
          #endif
          for (i=0;i<win->childn;i++){
            LIBAROMA_CONTROLP c=win->childs[i];
            if (c->handler->thread!=NULL){
              if (c->handler->thread(c)){
                if (libaroma_control_draw(c,0)){
                  is_draw=1;
                }
              }
            }
          }
        }
      }
    }
  }
  {
    if ((me->transition_start!=0)&&(me->win_pos_out!=-1)){
      float nowstate=libaroma_duration_state(
        me->transition_start, me->transition_duration
      );
      if (nowstate!=me->transition_state){
        if (nowstate>=1){
          me->transition_start=0;
          me->transition_state=1;
          me->need_direct_canvas=1;
          if (me->transision_delprev){
            _LIBAROMA_CTL_FRAGMENT_WINP windd=
              (_LIBAROMA_CTL_FRAGMENT_WINP) 
                me->wins[me->win_pos_out]->client_data;
            me->win_next_del_id=windd->id;
          }
          _libaroma_ctl_fragment_activate_win(
            me->wins[me->win_pos_out], 0
          );
          me->win_pos_out=-1;
          me->transision_delprev=0;
        }
        else{
          me->transition_state=nowstate;
        }
        is_draw=1;
      }
    }
  }
  libaroma_mutex_unlock(me->mutex);
  return is_draw;
} /* End of _libaroma_ctl_fragment_thread */

/*
 * Function    : _libaroma_ctl_fragment_destroy
 * Return Value: void
 * Descriptions: destroy callback
 */
void _libaroma_ctl_fragment_destroy(
    LIBAROMA_CONTROLP ctl){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, 
  );
  libaroma_mutex_lock(me->mutex);
  if (me->win_n>0){
    int i;
    #ifdef LIBAROMA_CONFIG_OPENMP
      #pragma omp parallel for
    #endif
    for (i=0;i<me->win_n;i++){
      libaroma_window_free(me->wins[i]);
    }
    free(me->wins);
    me->wins=NULL;
    me->win_n=0;
  }
  libaroma_mutex_unlock(me->mutex);
  libaroma_mutex_free(me->mutex);
  libaroma_mutex_free(me->dmutex);
  free(me);
} /* End of _libaroma_ctl_fragment_destroy */

/*
 * Function    : _libaroma_ctl_fragment_msg
 * Return Value: byte
 * Descriptions: message callback
 */
dword _libaroma_ctl_fragment_msg(
    LIBAROMA_CONTROLP ctl,
    LIBAROMA_MSGP msg){
  /* internal check */
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, 0
  );
  
  dword ret = 0;
  
  switch(msg->msg){
    case LIBAROMA_MSG_WIN_RESIZE:
      {
        libaroma_mutex_lock(me->mutex);
        int z;
        for (z=0;z<me->win_n;z++){
          LIBAROMA_WINDOWP win = me->wins[z];
          _LIBAROMA_CTL_FRAGMENT_WINP windn = (_LIBAROMA_CTL_FRAGMENT_WINP)
            win->client_data;
          if (!windn->active_state){
            continue;
          }
          int i;
          #ifdef LIBAROMA_CONFIG_OPENMP
            #pragma omp parallel for
          #endif
          for (i=0;i<win->childn;i++){
            if (win->childs[i]->handler->message){
              win->childs[i]->handler->message(win->childs[i], msg);
            }
          }
        }
        libaroma_mutex_unlock(me->mutex);
      }
      break;
    case LIBAROMA_MSG_WIN_MEASURED:
      {
        int z;
        libaroma_mutex_lock(me->mutex);
        for (z=0;z<me->win_n;z++){
          LIBAROMA_WINDOWP win = me->wins[z];
          _LIBAROMA_CTL_FRAGMENT_WINP windn = (_LIBAROMA_CTL_FRAGMENT_WINP)
            win->client_data;
          if (windn->active_state){
            _libaroma_ctl_fragment_measure(win);
          }
        }
        libaroma_mutex_unlock(me->mutex);
      }
      break;
    case LIBAROMA_MSG_TOUCH:
      {
        libaroma_mutex_lock(me->mutex);
        if ((me->win_n<1)||(me->win_pos==-1)) {
          libaroma_mutex_unlock(me->mutex);
          return 0;
        }
        LIBAROMA_WINDOWP win = me->wins[me->win_pos];
        
        if (me->win_pos_out!=-1){
          me->win_cleanup=1;
          libaroma_mutex_unlock(me->mutex);
          return 0;
        }
        if ((msg->state!=LIBAROMA_HID_EV_STATE_DOWN)&&(me->win_cleanup)){
          libaroma_mutex_unlock(me->mutex);
          return 0;
        }
        me->win_cleanup=0;
        
        int x = msg->x;
        int y = msg->y;
        libaroma_window_calculate_pos(NULL,ctl,&x,&y);
        msg->x = x;
        msg->y = y;
        
        /* touch handler */
        if (msg->state==LIBAROMA_HID_EV_STATE_DOWN){
          win->touched = NULL;
          int i;
          for (i=0;i<win->childn;i++){
            if (_libaroma_window_is_inside(win->childs[i],x,y)){
              win->touched = win->childs[i];
              break;
            }
          }
          if (win->touched!=NULL){
            if (win->touched->handler->message){
              ret=win->touched->handler->message(win->touched, msg);
            }
          }
        }
        else if (win->touched!=NULL){
          if (win->touched->handler->message){
            ret=win->touched->handler->message(win->touched, msg);
          }
          if (msg->state==LIBAROMA_HID_EV_STATE_UP){
            win->touched=NULL;
          }
        }
        libaroma_mutex_unlock(me->mutex);
      }
      break;
  }
  return ret;
} /* End of _libaroma_ctl_fragment_msg */

/*
 * Function    : libaroma_ctl_fragment
 * Return Value: LIBAROMA_CONTROLP
 * Descriptions: create button control
 */
LIBAROMA_CONTROLP libaroma_ctl_fragment(
    LIBAROMA_WINDOWP win,
    word id, int x, int y, int w, int h
){
  if (!win){
    ALOGW("pager need direct window attach");
    return NULL;
  }
  
  /* init internal data */
  _LIBAROMA_CTL_FRAGMENTP me = (_LIBAROMA_CTL_FRAGMENTP)
      calloc(sizeof(_LIBAROMA_CTL_FRAGMENT),1);
  if (!me){
    ALOGW("libaroma_ctl_fragment alloc pager memory failed");
    return NULL;
  }
  me->win_pos_out=-1;
  me->win_pos=-1;
  me->wins = NULL;
  me->on_direct_canvas = 1;
  me->win_next_del_id=-1;
  /* init control */
  LIBAROMA_CONTROLP ctl =
    libaroma_control_new(
      id,
      x, y, w, h,
      libaroma_dp(48),libaroma_dp(48), /* min size */
      (voidp) me,
      &_libaroma_ctl_fragment_handler,
      NULL
    );
  
  if (!ctl){
    free(me);
    return NULL;
  }
  
  libaroma_mutex_init(me->mutex);
  libaroma_mutex_init(me->dmutex);
  return libaroma_window_attach(win,ctl);
} /* End of libaroma_ctl_fragment */

/*
 * Function    : libaroma_ctl_fragment_new_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: new window
 */
LIBAROMA_WINDOWP libaroma_ctl_fragment_new_window(
  LIBAROMA_CONTROLP ctl, int id){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, NULL
  );
  if (!ctl->window){
    ALOGW("libaroma_ctl_fragment_new_window fragment should append to "
      "window first");
    return NULL;
  }
  
  libaroma_mutex_lock(me->mutex);
  int new_pos = me->win_n;
  if (me->win_n==0){
    me->wins=(LIBAROMA_WINDOWP *) calloc(sizeof(LIBAROMA_WINDOWP),1);
    if (!me->wins){
      libaroma_mutex_unlock(me->mutex);
      ALOGW("libaroma_ctl_fragment_new_window calloc window holder failed");
      return NULL;
    }
    me->win_n=1;
  }
  else{
    int i;
    for (i=0;i<me->win_n;i++){
      _LIBAROMA_CTL_FRAGMENT_WINP windn = (_LIBAROMA_CTL_FRAGMENT_WINP)
        me->wins[i]->client_data;
      if (id==windn->id){
        ALOGW("libaroma_ctl_fragment_new_window id already exist");
        return NULL;
      }
    }
    
    LIBAROMA_WINDOWP * newins =(LIBAROMA_WINDOWP *) realloc(
      me->wins, sizeof(LIBAROMA_WINDOWP)*(me->win_n+1));
    if (newins){
      me->wins=newins;
      me->win_n++;
    }
    else{
      libaroma_mutex_unlock(me->mutex);
      ALOGW("libaroma_ctl_fragment_new_window realloc window holder failed");
      return NULL;
    }
  }
  
  me->wins[new_pos] = (LIBAROMA_WINDOWP) calloc(sizeof(LIBAROMA_WINDOW),1);
  if (!me->wins[new_pos]){
    ALOGW("libaroma_ctl_fragment_new_window alloc window data failed");
    if (me->win_n==1){
      free(me->wins);
      me->win_n=0;
      me->wins=NULL;
    }
    else{
      me->wins =(LIBAROMA_WINDOWP *) realloc(me->wins,
        sizeof(LIBAROMA_WINDOWP)*(me->win_n-1));
      me->win_n--;
    }
    libaroma_mutex_unlock(me->mutex);
    return NULL;
  }
  
  LIBAROMA_WINDOWP nwin = me->wins[new_pos];
  nwin->handler=&_libaroma_ctl_fragment_win_handler;
  nwin->parent=ctl->window;
  
  _LIBAROMA_CTL_FRAGMENT_WINP wind = (_LIBAROMA_CTL_FRAGMENT_WINP) calloc(
    sizeof(_LIBAROMA_CTL_FRAGMENT_WIN), 1);
  wind->id = id;
  wind->active_state = 0;
  wind->ctl = ctl;
  nwin->client_data = (voidp) wind;
  libaroma_mutex_unlock(me->mutex);
  return me->wins[new_pos];
} /* End of libaroma_ctl_fragment_new_window */

/*
 * Function    : libaroma_ctl_fragment_get_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: get window
 */
LIBAROMA_WINDOWP libaroma_ctl_fragment_get_window(
  LIBAROMA_CONTROLP ctl, int id){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, NULL
  );
  int i;
  libaroma_mutex_lock(me->mutex);
  for (i=0;i<me->win_n;i++){
    _LIBAROMA_CTL_FRAGMENT_WINP windn = (_LIBAROMA_CTL_FRAGMENT_WINP)
      me->wins[i]->client_data;
    if (id==windn->id){
      libaroma_mutex_unlock(me->mutex);
      return me->wins[i];
    }
  }
  libaroma_mutex_unlock(me->mutex);
  return NULL;
}

/*
 * Function    : libaroma_ctl_fragment_del_window
 * Return Value: byte
 * Descriptions: delete window
 */
byte libaroma_ctl_fragment_del_window_nomutex(
  LIBAROMA_CONTROLP ctl, int id){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, 0
  );
  /* wait for transition */
  while(me->win_pos_out!=-1){
    libaroma_sleep(16);
  }
  
  int i;
  int did = -1;
  LIBAROMA_WINDOWP win=NULL;
  for (i=0;i<me->win_n;i++){
    _LIBAROMA_CTL_FRAGMENT_WINP windn = (_LIBAROMA_CTL_FRAGMENT_WINP)
      me->wins[i]->client_data;
    if (id==windn->id){
      win=me->wins[i];
      did=i;
      break;
    }
  }
  byte ret=0;
  if (me->win_pos==did){
    ALOGW("libaroma_ctl_fragment_del_window cannot delete active window");
  }
  else if (win){
    int newn = me->win_n-1;
    if (newn<1){
      if (me->wins){
        free(me->wins);
        me->wins=NULL;
      }
      me->win_n=0;
    }
    else{
      LIBAROMA_WINDOWP * newins = calloc(sizeof(LIBAROMA_WINDOWP),newn);
      int n=0;
      for (i=0;i<me->win_n;i++){
        if (i!=did){
          newins[n++]=me->wins[i];
        }
      }
      free(me->wins);
      me->wins=newins;
      me->win_n=newn;
    }
    libaroma_window_free(win);
  }
  else{
    ALOGW("libaroma_ctl_fragment_del_window window id not found");
  }
  return ret;
}
byte libaroma_ctl_fragment_del_window(
  LIBAROMA_CONTROLP ctl, int id){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, 0
  );
  libaroma_mutex_lock(me->mutex);
  byte ret=libaroma_ctl_fragment_del_window_nomutex(ctl,id);
  libaroma_mutex_unlock(me->mutex);
  return ret;
}

/*
 * Function    : libaroma_ctl_fragment_set_active_window
 * Return Value: byte
 * Descriptions: set active page
 */
byte libaroma_ctl_fragment_set_active_window(
  LIBAROMA_CONTROLP ctl, int id,
  byte anitype, long duration, byte remove_prev,
  LIBAROMA_TRANSITION_CB transcb,
  LIBAROMA_RECTP rect_start,
  LIBAROMA_RECTP rect_end
  ){
  _LIBAROMA_CTL_CHECK(
    _libaroma_ctl_fragment_handler, _LIBAROMA_CTL_FRAGMENTP, 0
  );
  /* wait for transition */
  while(me->win_pos_out!=-1){
    libaroma_sleep(16);
  }
  
  byte ret=0;
  int i;
  int did = -1;
  libaroma_mutex_lock(me->mutex);
  LIBAROMA_WINDOWP win=NULL;
  for (i=0;i<me->win_n;i++){
    _LIBAROMA_CTL_FRAGMENT_WINP windn = (_LIBAROMA_CTL_FRAGMENT_WINP)
      me->wins[i]->client_data;
    if (id==windn->id){
      win=me->wins[i];
      did=i;
      break;
    }
  }
  if (did!=-1){
    if (me->win_pos!=did){
      _libaroma_ctl_fragment_activate_win(win,1);
      libaroma_sleep(120);
      if (me->win_pos!=-1){
        me->transition_start=libaroma_tick();
        me->transition_duration=duration;
        me->transition_type=anitype;
        me->transition_state=0;
        me->transision_delprev=remove_prev;
        
        me->transition_cb=transcb;
        me->transition_rs=rect_start;
        me->transition_re=rect_end;
        
        _LIBAROMA_CTL_FRAGMENT_WINP windid =
        (_LIBAROMA_CTL_FRAGMENT_WINP) me->wins[did]->client_data;
        windid->active_state=2;
        me->win_pos_out=me->win_pos;
        me->win_pos=did;
        _libaroma_ctl_fragment_direct_canvas(ctl,0);
      }
      else{
        me->win_pos_out=me->win_pos;
        me->win_pos=did;
      }
      
      ret=1;
      me->redraw=1;
    }
    else{
      ALOGW("libaroma_ctl_fragment_set_active_window "
        "cannot reactivate active window");
    }
  }
  else{
    ALOGW("libaroma_ctl_fragment_set_active_window window id not found");
  }
  libaroma_mutex_unlock(me->mutex);
  return ret;
}

#endif /* __libaroma_ctl_fragment_c__ */


