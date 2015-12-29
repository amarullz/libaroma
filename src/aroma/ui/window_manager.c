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
 * Filename    : window_manager.c
 * Description : window manager
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_window_manager_c__
#define __libaroma_window_manager_c__
#include <aroma_internal.h>
#include "ui_internal.h"

/*
 * Variable    : _libaroma_wm
 * Type        : LIBAROMA_WMP
 * Descriptions: window manager storage
 */
static LIBAROMA_WMP _libaroma_wm=NULL;
static LIBAROMA_THREAD _libaroma_wm_message_thread_var;
static LIBAROMA_THREAD _libaroma_wm_ui_thread_var;
static LIBAROMA_COND_MUTEX  _libaroma_wm_mutex;
static LIBAROMA_COND  _libaroma_wm_cond;
static LIBAROMA_MUTEX _libaroma_wm_ui_mutex;
static LIBAROMA_MUTEX _libaroma_wm_sync_mutex;
static byte _libaroma_wm_onprocessing=0;

/*
 * Function    : libaroma_wm
 * Return Value: LIBAROMA_WMP
 * Descriptions: get window manager instance
 */
LIBAROMA_WMP libaroma_wm(){
  return _libaroma_wm;
} /* End of libaroma_wm */

/*
 * Function    : _libaroma_wm_theme_release
 * Return Value: void
 * Descriptions: string array theme release callback
 */
void _libaroma_wm_theme_release(void * val) {
  LIBAROMA_WM_THEMEP theme = (LIBAROMA_WM_THEMEP) val;
  if (theme->theme_flags&LIBAROMA_WM_FLAG_THEME_WMFREE){
    if (theme->canvas){
      libaroma_canvas_free(theme->canvas);
    }
  }
} /* End of _libaroma_wm_theme_release */

/*
 * Function    : _libaroma_wm_default_set
 * Return Value: void
 * Descriptions: default theme/colorset
 */
void _libaroma_wm_default_set(byte set_flags){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return;
  }
  libaroma_colorset(&_libaroma_wm->colorset, 0);
  
  if (set_flags&LIBAROMA_WM_FLAG_RESET_COLOR){
    /*
     * primitive colorset - use lollipop
     */
    /* window */
    libaroma_wm_set_color("window",RGB(37474F));
    libaroma_wm_set_color("window_gradient",RGB(37474F));
    libaroma_wm_set_color("window_text",RGB(ffffff));
    libaroma_wm_set_color("window_text_shadow",RGB(000000));
    
    /* actionbar & title */
    libaroma_wm_set_color("actionbar",RGB(263238));
    libaroma_wm_set_color("actionbar_gradient",RGB(263238));
    libaroma_wm_set_color("actionbar_text",RGB(ffffff));
    libaroma_wm_set_color("actionbar_text_shadow",RGB(000000));
    
    /* default control */
    libaroma_wm_set_color("control",RGB(384248));
    libaroma_wm_set_color("control_gradient",RGB(384248));
    libaroma_wm_set_color("control_text",RGB(cccccc));
    libaroma_wm_set_color("control_text_shadow",RGB(000000));
    
    /* highlight */
    libaroma_wm_set_color("highlight",RGB(80CBC4));
    libaroma_wm_set_color("highlight_gradient",RGB(80CBC4));
    libaroma_wm_set_color("highlight_text",RGB(ffffff));
    libaroma_wm_set_color("highlight_text_shadow",RGB(000000));
  }
  if (set_flags&LIBAROMA_WM_FLAG_RESET_THEME){
    /* TODO: Default themeset */
  }
} /* End of _libaroma_wm_default_set */

/*
 * Function    : _libaroma_wm_workspace_canvas_update
 * Return Value: byte
 * Descriptions: update workspace canvas content
 */
byte _libaroma_wm_workspace_canvas_update(){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if (_libaroma_wm->workspace_bg){
    libaroma_draw_ex(
      _libaroma_wm->workspace_bg,
      libaroma_fb()->canvas,
      0, 0,
      _libaroma_wm->x, _libaroma_wm->y,
      _libaroma_wm->w, _libaroma_wm->h,
      0, 0xff
    );
    return 1;
  }
  return 0;
} /* End of _libaroma_wm_workspace_canvas_update */

/*
 * Function    : libaroma_wm_clean_workspace
 * Return Value: byte
 * Descriptions: update workspace content before window resize
 */
byte libaroma_wm_clean_workspace(){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if (_libaroma_wm->workspace_bg){
    libaroma_draw_ex(
      libaroma_fb()->canvas,
      _libaroma_wm->workspace_bg,
      _libaroma_wm->x, _libaroma_wm->y,
      0, 0,
      _libaroma_wm->w, _libaroma_wm->h,
      0, 0xff
    );
    libaroma_wm_sync(0,0,_libaroma_wm->w, _libaroma_wm->h);
    return 1;
  }
  return 0;
} /* End of libaroma_wm_clean_workspace */

/*
 * Function    : _libaroma_wm_workspace_canvas
 * Return Value: byte
 * Descriptions: update workspace canvas size
 */
byte _libaroma_wm_workspace_canvas(){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if (_libaroma_wm->workspace_bg){
    libaroma_canvas_free(_libaroma_wm->workspace_bg);
  }
  _libaroma_wm->workspace_bg = libaroma_canvas(
    _libaroma_wm->w,
    _libaroma_wm->h
  );
  _libaroma_wm_workspace_canvas_update();
  return 1;
} /* End of _libaroma_wm_workspace_canvas */

/*
 * Function    : libaroma_wm_init
 * Return Value: byte
 * Descriptions: init window manager
 */
byte libaroma_wm_init(){
  if (_libaroma_wm){
    ALOGW("libaroma_wm_init window manager already initialized");
    return 0;
  }
  ALOGV("libaroma_wm_init init window manager");
  _libaroma_wm = (LIBAROMA_WMP) calloc(sizeof(LIBAROMA_WM),1);
  if (!_libaroma_wm){
    ALOGW("libaroma_wm_init alloc window manager memory failed");
    return 0;
  }
  libaroma_cond_init(&_libaroma_wm_cond, &_libaroma_wm_mutex);
  libaroma_mutex_init(_libaroma_wm_ui_mutex);
  libaroma_mutex_init(_libaroma_wm_sync_mutex);
  _libaroma_wm_onprocessing=0;
  _libaroma_wm->theme = libaroma_sarray(_libaroma_wm_theme_release);
  _libaroma_wm->color = libaroma_sarray(NULL);
  _libaroma_wm->w = libaroma_fb()->w;
  _libaroma_wm->h = libaroma_fb()->h;
  _libaroma_wm_default_set(
    LIBAROMA_WM_FLAG_RESET_COLOR|
    LIBAROMA_WM_FLAG_RESET_THEME);
  _libaroma_wm_workspace_canvas();
  return 1;
} /* End of libaroma_wm_init */

/*
 * Function    : libaroma_wm_release
 * Return Value: byte
 * Descriptions: release window manager
 */
byte libaroma_wm_release(){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  libaroma_mutex_lock(_libaroma_wm_ui_mutex);
  _libaroma_wm_onprocessing=1;
  if (_libaroma_wm->client_started){
    libaroma_mutex_unlock(_libaroma_wm_ui_mutex);
    libaroma_wm_client_stop();
    libaroma_mutex_lock(_libaroma_wm_ui_mutex);
  }
  ALOGV("libaroma_wm_release release window manager");
  libaroma_sarray_free(_libaroma_wm->color);
  libaroma_sarray_free(_libaroma_wm->theme);
  if (_libaroma_wm->workspace_bg){
    libaroma_canvas_free(_libaroma_wm->workspace_bg);
  }
  _libaroma_wm_onprocessing=0;
  libaroma_mutex_unlock(_libaroma_wm_ui_mutex);
  libaroma_mutex_free(_libaroma_wm_sync_mutex);
  libaroma_mutex_free(_libaroma_wm_ui_mutex);
  libaroma_cond_free(&_libaroma_wm_cond, &_libaroma_wm_mutex);
  free(_libaroma_wm);
  _libaroma_wm=NULL;
  return 1;
} /* End of libaroma_wm_release */


/*
 * Function    : libaroma_wm_compose
 * Return Value: LIBAROMA_MSGP
 * Descriptions: compose window message
 */
LIBAROMA_MSGP libaroma_wm_compose(
    LIBAROMA_MSGP msg,
    byte m,
    voidp data,
    int param1,
    int param2){
  msg->msg    = m;
  msg->state  = 0;
  msg->key    = 0;
  msg->x      = param1;
  msg->y      = param2;
  msg->d      = data;
  msg->sent   = libaroma_tick();
  return msg;
} /* End of libaroma_wm_compose */

/*
 * Function    : libaroma_wm_updatesync
 * Return Value: void
 * Descriptions: update sync location
 */
void libaroma_wm_updatesync(int x, int y, int w, int h, byte all){
  if ((_libaroma_wm==NULL)||(libaroma_fb()->double_buffer)){
    return;
  }
  libaroma_mutex_lock(_libaroma_wm_sync_mutex);
  if (all){
    _libaroma_wm->sync_all=1;
  }
  else{
    int x2=_libaroma_wm->sync_w+_libaroma_wm->sync_x;
    int y2=_libaroma_wm->sync_h+_libaroma_wm->sync_y;
    _libaroma_wm->sync_x=(_libaroma_wm->sync_x>x)?x:_libaroma_wm->sync_x;
    _libaroma_wm->sync_y=(_libaroma_wm->sync_y>y)?y:_libaroma_wm->sync_y;
    _libaroma_wm->sync_w=(_libaroma_wm->sync_w<x2)?x2:_libaroma_wm->sync_w;
    _libaroma_wm->sync_h=(_libaroma_wm->sync_h<y2)?y2:_libaroma_wm->sync_h;
  }
  libaroma_mutex_unlock(_libaroma_wm_sync_mutex);
} /* End of libaroma_wn_updatesync */

/*
 * Function    : libaroma_wm_resetsync
 * Return Value: void
 * Descriptions: reset sync
 */
void libaroma_wm_resetsync(){
  if ((_libaroma_wm==NULL)||(libaroma_fb()->double_buffer)){
    return;
  }
  libaroma_mutex_lock(_libaroma_wm_sync_mutex);
  _libaroma_wm->sync_all=0;
  _libaroma_wm->sync_x=_libaroma_wm->w;
  _libaroma_wm->sync_y=_libaroma_wm->h;
  _libaroma_wm->sync_w=0;
  _libaroma_wm->sync_h=0;
  libaroma_mutex_unlock(_libaroma_wm_sync_mutex);
} /* End of libaroma_wm_resetsync */

/*
 * Function    : libaroma_wm_syncarea
 * Return Value: void
 * Descriptions: sync area thread
 */
void libaroma_wm_syncarea(){
  if (libaroma_fb()->double_buffer){
    libaroma_sync();
    return;
  }
  
  libaroma_mutex_lock(_libaroma_wm_sync_mutex);
  if (_libaroma_wm->sync_all){
    libaroma_sync();
  }
  else{
    int mx = (libaroma_fb()->w * libaroma_fb()->h) >> 1;
    int dw = _libaroma_wm->sync_w-_libaroma_wm->sync_x;
    int dh = _libaroma_wm->sync_h-_libaroma_wm->sync_y;
    int cx = (dw*dh);
    if (mx>cx){
      libaroma_wm_sync(
        _libaroma_wm->sync_x,
        _libaroma_wm->sync_y,
        dw,
        dh
      );
    }
    else{
      libaroma_sync();
    }
  }
  libaroma_mutex_unlock(_libaroma_wm_sync_mutex);
  libaroma_wm_resetsync();
} /* End of libaroma_wm_syncarea */

/*
 * Function    : libaroma_wm_reset
 * Return Value: byte
 * Descriptions: reset theme and colorset
 */
byte libaroma_wm_reset(byte reset_flag){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  /* reinit theme and colorset */
  if (reset_flag&LIBAROMA_WM_FLAG_RESET_COLOR){
    libaroma_sarray_free(_libaroma_wm->color);
    _libaroma_wm->color = libaroma_sarray(NULL);
  }
  if (reset_flag&LIBAROMA_WM_FLAG_RESET_THEME){
    libaroma_sarray_free(_libaroma_wm->theme);
    _libaroma_wm->theme = libaroma_sarray(_libaroma_wm_theme_release);
  }
  _libaroma_wm_default_set(reset_flag);
  if (_libaroma_wm->reset_handler!=NULL){
    _libaroma_wm->reset_handler(_libaroma_wm, reset_flag);
  }
  return 1;
} /* End of libaroma_wm_reset */

/*
 * Function    : libaroma_wm_set_workspace
 * Return Value: byte
 * Descriptions: set window workspace size
 */
byte libaroma_wm_set_workspace(int x, int y, int w, int h){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if ((x<0)||(y<0)){
    ALOGW("workspace x/y should be >= 0");
    return 0;
  }
  if ((x+w>libaroma_fb()->w)||(y+h>libaroma_fb()->h)){
    ALOGW("workspace size should smaller than fb size");
    return 0;
  }
  _libaroma_wm->x = x;
  _libaroma_wm->y = y;
  _libaroma_wm->w = w;
  _libaroma_wm->h = h;
  _libaroma_wm_workspace_canvas();
  
  if (_libaroma_wm->active_window!=NULL){
    /* send refresh event */
    LIBAROMA_MSG _msg;
    libaroma_window_process_event(
      _libaroma_wm->active_window,
      libaroma_wm_compose(
        &_msg, LIBAROMA_MSG_WIN_RESIZE, NULL, 0, 0)
    );
  }
  return 1;
} /* End of libaroma_wm_set_workspace */

/*
 * Function    : libaroma_wm_erasebg_workspace
 * Return Value: byte
 * Descriptions: erase workspace background
 */
byte libaroma_wm_erasebg_workspace(int x, int y, int w, int h){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  return libaroma_draw_ex(
    libaroma_fb()->canvas, _libaroma_wm->workspace_bg,
    x+_libaroma_wm->x, y+_libaroma_wm->y, x, y, w, h, 0, 0xff
  );
} /* End of libaroma_wm_erasebg_workspace */

/*
 * Function    : libaroma_wm_set_message_handler
 * Return Value: byte
 * Descriptions: set message handler
 */
byte libaroma_wm_set_message_handler(
    LIBAROMA_WMCB_MESSAGE_HANDLER callback){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  _libaroma_wm->message_handler = callback;
  return 1;
} /* End of libaroma_wm_set_message_handler */

/*
 * Function    : libaroma_wm_set_reset_handler
 * Return Value: byte
 * Descriptions: set theme reset handler
 */
byte libaroma_wm_set_reset_handler(
    LIBAROMA_WMCB_RESET_HANDLER callback){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  _libaroma_wm->reset_handler = callback;
  return 1;
} /* End of libaroma_wm_set_reset_handler */

/*
 * Function    : libaroma_wm_set_ui_thread
 * Return Value: byte
 * Descriptions: set theme reset handler
 */
byte libaroma_wm_set_ui_thread(
    LIBAROMA_WMCB_UI_THREAD callback){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  libaroma_mutex_lock(_libaroma_wm_ui_mutex);
  _libaroma_wm->ui_thread = callback;
  if (_libaroma_wm->ui_thread){
    if (!_libaroma_wm->client_started){
      libaroma_wm_client_start();
    }
  }
  else{
    if ((_libaroma_wm->client_started)&&(!_libaroma_wm->active_window)){
      libaroma_mutex_unlock(_libaroma_wm_ui_mutex);
      libaroma_wm_client_stop();
      libaroma_mutex_lock(_libaroma_wm_ui_mutex);
    }
  }
  libaroma_mutex_unlock(_libaroma_wm_ui_mutex);
  return 1;
} /* End of libaroma_wm_set_ui_thread */

/*
 * Function    : libaroma_wm_sync
 * Return Value: byte
 * Descriptions: sync window workspace
 */
byte libaroma_wm_sync(int x, int y, int w, int h){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  int x2 = x+_libaroma_wm->x;
  int y2 = y+_libaroma_wm->y;
  int w2 = w;
  int h2 = h;
  if (x2<_libaroma_wm->x){
    w2 -= x2-_libaroma_wm->x;
    x2 = 0;
  }
  if (y2<_libaroma_wm->y){
    h2 -= y2-_libaroma_wm->y;
    y2 = 0;
  }
  if ((w2<1)||(h2<1)){
    /* sync doesn't needed */
    return 1;
  }
  if (w2+x2>_libaroma_wm->x+_libaroma_wm->w){
    w2=(_libaroma_wm->x+_libaroma_wm->w)-x2;
  }
  if (h2+y2>_libaroma_wm->y+_libaroma_wm->h){
    h2=(_libaroma_wm->y+_libaroma_wm->h)-y2;
  }
  /* now sync fb */
  return libaroma_sync_ex(x2,y2,w2,h2);
} /* End of libaroma_wm_sync */

/*
 * Function    : libaroma_wm_canvas
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: request window drawing canvas
 */
LIBAROMA_CANVASP libaroma_wm_canvas(int x, int y, int w, int h){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return NULL;
  }
  int x2 = x+_libaroma_wm->x;
  int y2 = y+_libaroma_wm->y;
  int w2 = w;
  int h2 = h;
  if (x2<_libaroma_wm->x){
    w2 -= x2-_libaroma_wm->x;
    x2 = 0;
  }
  if (y2<_libaroma_wm->y){
    h2 -= y2-_libaroma_wm->y;
    y2 = 0;
  }
  if ((w2<1)||(h2<1)){
    /* sync doesn't needed */
    ALOGW("libaroma_wm_canvas invalid requested size (%ix%i)", w2, h2);
    return NULL;
  }
  if (w2>_libaroma_wm->w){
    w2=_libaroma_wm->w;
  }
  if (h2>_libaroma_wm->h){
    h2=_libaroma_wm->h;
  }
  return libaroma_canvas_area(
    libaroma_fb()->canvas,
    x2, y2, w2, h2
  );
} /* End of libaroma_wm_canvas */

/*
 * Function    : libaroma_wm_getmessage
 * Return Value: byte
 * Descriptions: get window manager client message
 */
byte libaroma_wm_getmessage(LIBAROMA_MSGP msg){
  if (!_libaroma_wm->client_started){
    return LIBAROMA_MSG_NONE;
  }
  /* mutex lock */
  libaroma_cond_lock(&_libaroma_wm_mutex);
  while (_libaroma_wm->queue->n < 1) {
    libaroma_cond_wait(&_libaroma_wm_cond, &_libaroma_wm_mutex);
    if (!_libaroma_wm->client_started) {
      libaroma_cond_unlock(&_libaroma_wm_mutex);
      return LIBAROMA_MSG_NONE;
    }
  }
  byte ret = LIBAROMA_MSG_NONE;
  /* shift stack */
  LIBAROMA_MSGP shift_event =
    (LIBAROMA_MSGP) libaroma_stack_shift(_libaroma_wm->queue);
  if (shift_event != NULL) {
    memcpy(msg, shift_event, sizeof(LIBAROMA_MSG));
    ret = shift_event->msg;
    free(shift_event);
  }
  libaroma_cond_unlock(&_libaroma_wm_mutex);
  return ret;
} /* End of libaroma_wm_getmessage */

/*
 * Function    : _libaroma_wm_message_thread
 * Return Value: static void *
 * Descriptions: window manager message thread
 */
static void * _libaroma_wm_message_thread(void * cookie) {
  ALOGV("starting wm messaging");
  while (_libaroma_wm->client_started){
    LIBAROMA_MSG msg;
    byte ret=libaroma_msg(&msg);
    if (ret){
      if (_libaroma_wm->message_handler!=NULL){
        ret = _libaroma_wm->message_handler(_libaroma_wm,&msg);
        if (ret==LIBAROMA_WM_MSG_HANDLED){
          continue;
        }
        else if (ret==LIBAROMA_WM_MSG_EXIT){
          break;
        }
      }
      /* send to window */
      if (_libaroma_wm->active_window!=NULL){
        libaroma_cond_lock(&_libaroma_wm_mutex);
        if (msg.msg==LIBAROMA_MSG_TOUCH){
          /* update touch coordinate */
          msg.x-=libaroma_wm()->x;
          msg.y-=libaroma_wm()->y;
        }
        if (libaroma_stack_push(
          _libaroma_wm->queue,&msg,
          sizeof(LIBAROMA_MSG))){
          libaroma_cond_signal(&_libaroma_wm_cond);
        }
        libaroma_cond_unlock(&_libaroma_wm_mutex);
      }
    }
  }
  ALOGV("wm messaging ended");
  return NULL;
}

/*
 * Function    : _libaroma_wm_ui_thread
 * Return Value: static void *
 * Descriptions: window manager ui manager
 */
static void * _libaroma_wm_ui_thread(void * cookie) {
  ALOGV("starting wm ui thread");
  byte need_sync = 0;
  while(_libaroma_wm->client_started){
    need_sync=0;
    
    /* run child thread process */
    if (_libaroma_wm->client_started){
      libaroma_mutex_lock(_libaroma_wm_ui_mutex);
      if (!_libaroma_wm_onprocessing){
	      if (_libaroma_wm->active_window!=NULL){
	        if (_libaroma_wm->active_window->ui_thread!=NULL){
	          if (_libaroma_wm->active_window->ui_thread(
	            _libaroma_wm->active_window
	          )){
	            need_sync=1;
	          }
	        }
	      }
	      if (_libaroma_wm->ui_thread!=NULL){
	        if (_libaroma_wm->ui_thread()){
	          need_sync=1;
	        }
	      }
	    }
      libaroma_mutex_unlock(_libaroma_wm_ui_mutex);
      if (need_sync){
        libaroma_wm_syncarea();
        need_sync=0;
        continue;
      }
    }
    libaroma_sleep(16);
  }
  ALOGV("wm ui thread ended");
  return NULL;
} /* End of _libaroma_wm_ui_thread */

/*
 * Function    : libaroma_wm_client_start
 * Return Value: void
 * Descriptions: start window client message
 */
byte libaroma_wm_client_start(){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if (!_libaroma_wm->client_started){
    /* start message queue */
    libaroma_msg_start();
    
    /* start message thread */
    _libaroma_wm->client_started = 1;
    _libaroma_wm->queue = libaroma_stack(NULL);
    
    libaroma_wm_resetsync();
    
    /* start message thread */
    libaroma_thread_create(&_libaroma_wm_message_thread_var,
      _libaroma_wm_message_thread, NULL);
    
    /* start ui thread */
    libaroma_thread_create(&_libaroma_wm_ui_thread_var,
      _libaroma_wm_ui_thread, NULL);
    
    /* high priority thread */
    libaroma_thread_set_hiprio(_libaroma_wm_ui_thread_var);
    return 1;
  }
  return 0;
} /* End of libaroma_wm_client_start */

/*
 * Function    : libaroma_wm_client_stop
 * Return Value: byte
 * Descriptions: stop window client message
 */
byte libaroma_wm_client_stop(){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if (_libaroma_wm->client_started){
    /* set exit state */
    _libaroma_wm->client_started = 0;
    
    /* post exit message */
    libaroma_msg_post(LIBAROMA_MSG_NONE,0,0,0,0,NULL);
    
    /* wait message thread */
    libaroma_thread_join(_libaroma_wm_ui_thread_var);
    libaroma_thread_join(_libaroma_wm_message_thread_var);
    _libaroma_wm_message_thread_var=0;
    _libaroma_wm_ui_thread_var=0;
    
    /* cleanup queue */
    libaroma_stack_free(_libaroma_wm->queue);
    
    /* stop message queue */
    libaroma_msg_stop();
    return 1;
  }
  return 0;
} /* End of libaroma_wm_client_stop */

/*
 * Function    : libaroma_wm_message_clear
 * Return Value: void
 * Descriptions: clear window message
 */
void libaroma_wm_message_clear() {
  if (_libaroma_wm->client_started) {
    libaroma_cond_lock(&_libaroma_wm_mutex);
    libaroma_stack_free(_libaroma_wm->queue);
    _libaroma_wm->queue = libaroma_stack(NULL);
    libaroma_cond_unlock(&_libaroma_wm_mutex);
  }
} /* End of libaroma_wm_message_clear */

/*
 * Function    : libaroma_wm_set_theme
 * Return Value: byte
 * Descriptions: set theme
 */
byte libaroma_wm_set_theme(
    char * name,
    LIBAROMA_CANVASP canvas,
    byte theme_flags,
    int dpi){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  LIBAROMA_WM_THEME save_data;
  save_data.canvas = canvas;
  save_data.theme_flags = theme_flags;
  if (dpi==0){
    dpi=libaroma_fb()->dpi;
  }
  save_data.dpi = dpi;
  if (libaroma_sarray_set(
      _libaroma_wm->theme,
      name,
      &save_data,
      sizeof(LIBAROMA_WM_THEME),
      1)){
    return 1;
  }
  return 0;
} /* End of libaroma_wm_set_theme */

/*
 * Function    : libaroma_wm_set_theme_stream
 * Return Value: byte
 * Descriptions: set theme from stream
 */
byte libaroma_wm_set_theme_stream(
    char * name,
    LIBAROMA_STREAMP stream,
    byte freestream,
    int dpi){
  if (!stream){
    ALOGW("libaroma_wm_set_theme_stream stream is NULL");
    return 0;
  }
  if (_libaroma_wm==NULL){
    if (freestream){
      libaroma_stream_close(stream);
    }
    ALOGW("window manager uninitialized");
    return 0;
  }
  /* check 9patch png from filename */
  int png9pos = strlen(stream->uri)-6;
  byte png9p_flag = 0;
  if (png9pos>0){
    char * ext_uri = (char *) (stream->uri+png9pos);
    png9p_flag=(strcmp(ext_uri,".9.png")==0)?LIBAROMA_WM_FLAG_THEME_PNG9P:0;
  }
  /* load image */
  LIBAROMA_CANVASP cv = libaroma_image_ex(stream, freestream, 1);
  if (!cv){
    ALOGW("libaroma_wm_set_theme_stream cannot load image '%s'", stream->uri);
    return 0;
  }
  return libaroma_wm_set_theme(
    name, cv, LIBAROMA_WM_FLAG_THEME_WMFREE|png9p_flag, dpi);
} /* End of libaroma_wm_set_theme_stream */

/*
 * Function    : libaroma_wm_get_theme
 * Return Value: LIBAROMA_WM_THEMEP
 * Descriptions: get theme
 */
LIBAROMA_WM_THEMEP libaroma_wm_get_theme(char * name){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return NULL;
  }
  return (LIBAROMA_WM_THEMEP)
    libaroma_sarray_get(_libaroma_wm->theme, name);
} /* End of libaroma_wm_get_theme */

/*
 * Function    : libaroma_wm_theme_exists
 * Return Value: byte
 * Descriptions: is theme exists
 */
byte libaroma_wm_theme_exists(char * name){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if(libaroma_sarray_get(_libaroma_wm->theme, name)==NULL){
    return 0;
  }
  return 1;
} /* End of libaroma_wm_theme_exists */

/*
 * Function    : libaroma_wm_del_theme
 * Return Value: byte
 * Descriptions: delete theme item
 */
byte libaroma_wm_del_theme(char * name){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  return libaroma_sarray_delete(_libaroma_wm->theme, name);
} /* End of libaroma_wm_del_theme */

/*
 * Function    : libaroma_wm_draw_themep
 * Return Value: byte
 * Descriptions: draw theme struct into canvas
 */
byte libaroma_wm_draw_themep(
    LIBAROMA_CANVASP dest, LIBAROMA_WM_THEMEP th,
    int dx, int dy, int dw, int dh,
    LIBAROMA_PNG9_PADP padding){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if (!th){
    ALOGV("libaroma_wm_draw_theme theme is null");
    return 0;
  }
  if (!dest){
    dest=libaroma_fb()->canvas;
  }
  if (th->theme_flags&LIBAROMA_WM_FLAG_THEME_PNG9P){
    if (dw<1){
      dw = th->canvas->w - 2;
    }
    if (dh<1){
      dh = th->canvas->h - 2;
    }
    return libaroma_png9p_draw(
      dest,
      th->canvas,
      dx,dy,dw,dh,th->dpi,
      padding
    );
  }
  if (padding!=NULL){
    memset(padding,0,sizeof(LIBAROMA_PNG9_PAD));
  }
  if (dw<1){
    dw = th->canvas->w;
  }
  if (dh<1){
    dh = th->canvas->h;
  }
  if ((th->canvas->w==dw)&&(th->canvas->h==dh)){
    if (!th->canvas->hicolor){
      return libaroma_draw(
        dest, th->canvas, dx, dy, 1
      );
    }
    else{
      return libaroma_draw_scale_nearest(
        dest, th->canvas,
        dx, dy, dw, dh,
        0, 0, th->canvas->w, th->canvas->h
      );
    }
  }
  return libaroma_draw_scale_smooth(
    dest, th->canvas,
    dx, dy, dw, dh,
    0, 0, th->canvas->w, th->canvas->h
  );
} /* End of libaroma_wm_draw_themep */

/*
 * Function    : libaroma_wm_draw_theme
 * Return Value: byte
 * Descriptions: draw theme into canvas
 */
byte libaroma_wm_draw_theme(
    LIBAROMA_CANVASP dest, char * name,
    int dx, int dy, int dw, int dh,
    LIBAROMA_PNG9_PADP padding){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if (!name){
    ALOGW("libaroma_wm_draw_theme invalid name");
    return 0;
  }
  LIBAROMA_WM_THEMEP th=libaroma_wm_get_theme(name);
  if (!th){
    ALOGV("libaroma_wm_draw_theme '%s' theme not found", name);
    return 0;
  }
  return libaroma_wm_draw_themep(dest, th, dx, dy, dw, dh, padding);
} /* End of libaroma_wm_draw_theme */

/*
 * Function    : libaroma_wm_set_color
 * Return Value: byte
 * Descriptions: set colorset
 */
byte libaroma_wm_set_color(char * name, word color){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  return libaroma_sarray_set(
    _libaroma_wm->color,
    name,
    &color,
    sizeof(word),
    0);
} /* End of libaroma_wm_set_color */

/*
 * Function    : libaroma_wm_get_color
 * Return Value: word
 * Descriptions: get colorset
 */
word libaroma_wm_get_color(char * name) {
  wordp color = (wordp) libaroma_sarray_get(
    _libaroma_wm->color,
    name);
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  if (color == NULL) {
    return 0;
  }
  return *color;
} /* End of libaroma_wm_get_color */

/*
 * Function    : libaroma_wm_del_color
 * Return Value: byte
 * Descriptions: delete color item
 */
byte libaroma_wm_del_color(char * name){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  return libaroma_sarray_delete(_libaroma_wm->color, name);
} /* End of libaroma_wm_del_color */

/*
 * Function    : libaroma_wm_set_active_window
 * Return Value: byte
 * Descriptions: get current active window
 */
byte libaroma_wm_set_active_window(LIBAROMA_WINDOWP win){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return 0;
  }
  
  libaroma_mutex_lock(_libaroma_wm_ui_mutex);
  _libaroma_wm_onprocessing=1;
  if (_libaroma_wm->active_window==win){
  	_libaroma_wm_onprocessing=0;
    libaroma_mutex_unlock(_libaroma_wm_ui_mutex);
    return 1;
  }
  
  LIBAROMA_MSG _msg;
  if (_libaroma_wm->active_window!=NULL){
    /* send inactive event */
    LIBAROMA_WINDOWP cwin=_libaroma_wm->active_window;
    _libaroma_wm->active_window=NULL;
    libaroma_window_process_event(
      cwin,
      libaroma_wm_compose(
        &_msg, LIBAROMA_MSG_WIN_INACTIVE, (voidp) win, 0, 0)
    );
  }
  
  _libaroma_wm_workspace_canvas_update();
  
  if (win!=NULL){
    /* send active event */
    libaroma_wm_compose(
        &_msg, LIBAROMA_MSG_WIN_ACTIVE, 
        (voidp) _libaroma_wm->active_window, 0, 0);
    _libaroma_wm->active_window = win;
    libaroma_window_process_event(
      win,
      &_msg
    );
    if ((!_libaroma_wm->client_started)&&(win)){
      /* start message client if not started yet */
      libaroma_wm_client_start();
    }
    libaroma_wm_message_clear();
  }
  else{
    _libaroma_wm->active_window = NULL;
    if ((_libaroma_wm->client_started)&&(!_libaroma_wm->ui_thread)){
      /* start message client if not started yet */
      libaroma_mutex_unlock(_libaroma_wm_ui_mutex);
      libaroma_wm_client_stop();
      libaroma_mutex_lock(_libaroma_wm_ui_mutex);
    }
  }
  _libaroma_wm_onprocessing=0;
  libaroma_mutex_unlock(_libaroma_wm_ui_mutex);
  return 1;
} /* End of libaroma_wm_set_active_window */

/*
 * Function    : libaroma_wm_get_active_window
 * Return Value: LIBAROMA_WINDOWP
 * Descriptions: get current active window
 */
LIBAROMA_WINDOWP libaroma_wm_get_active_window(){
  if (_libaroma_wm==NULL){
    ALOGW("window manager uninitialized");
    return NULL;
  }
  return _libaroma_wm->active_window;
} /* End of libaroma_wm_get_active_window */


#endif /* __libaroma_window_manager_c__ */


