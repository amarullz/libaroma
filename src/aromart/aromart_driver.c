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
 * Filename    : aromart_driver.c
 * Description : AROMA Runtime client driver
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 27/06/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaromart_driver_c__
#define __libaromart_driver_c__
#include "aromart_internal.h"

/* hid event message */
typedef struct{
  byte  type;
  int   key;
  byte  state;
  int   x;
  int   y;
  byte ret;
} LART_HID_EVENT;

/* static driver variable */
static int _lart_hid_rfd   =0;
static int _lart_hid_wfd   =0;
static int _lart_hid_active=0;

/* Framebuffer Driver */
void lart_fb_release(LIBAROMA_FBP me){ }
byte lart_fb_start_post(LIBAROMA_FBP me){ return 1; }
byte lart_fb_post(
  LIBAROMA_FBP me, wordp __restrict src,
  int dx, int dy, int dw, int dh,
  int sx, int sy, int sw, int sh
  ){
  return 1;
}
byte lart_fb_end_post(LIBAROMA_FBP me){
  return lart_app_command(LART_REQ_CMD_FB_SYNC,0,NULL,0,NULL,NULL,NULL);
}
byte lart_fb_init(LIBAROMA_FBP me){
  me->internal        = NULL;
  me->release         = &lart_fb_release;
  me->w               = lart_app()->cfb->w;
  me->h               = lart_app()->cfb->h;
  me->sz              = me->w*me->h;
  me->start_post      = &lart_fb_start_post;
  me->end_post        = &lart_fb_end_post;
  me->post            = &lart_fb_post;
  me->snapshoot       = NULL;
  me->config          = NULL;
  me->dpi             = lart_app()->dpi;
  me->double_buffer   = 1;
  me->internal_canvas = 1;
  me->canvas          = lart_app()->cfb;
  return 1;
}

/* HID Driver */
void lart_hid_post(
  byte  type,
  int   key,
  byte  state,
  int   x,
  int   y,
  byte ret){
  if (_lart_hid_active){
    LART_HID_EVENT ev={0};
    ev.type=type;
    ev.key=key;
    ev.state=state;
    ev.x=x;
    ev.y=y;
    ev.ret=ret;
    write(_lart_hid_wfd,&ev,sizeof(LART_HID_EVENT));
  }
}
void lart_hid_release(LIBAROMA_HIDP me){
  if (_lart_hid_active){
    _lart_hid_active=0;
    lart_hid_post(0,0,0,0,0,LIBAROMA_HID_EV_RET_EXIT);
    close(_lart_hid_wfd);
  }
}
byte lart_hid_getinput(LIBAROMA_HIDP me, LIBAROMA_HID_EVENTP dest_ev){
  if (!lart_application_is_run()){
    usleep(10000);
    return LIBAROMA_HID_EV_RET_EXIT;
  }
  LART_HID_EVENT ev;
  while(_lart_hid_active){
    if (read(_lart_hid_rfd,&ev,sizeof(LART_HID_EVENT))==sizeof(LART_HID_EVENT)){
      if (ev.ret==LIBAROMA_HID_EV_RET_EXIT){
        break;
      }
      dest_ev->type=ev.type;
      dest_ev->key=ev.key;
      dest_ev->state=ev.state;
      dest_ev->x=ev.x;
      dest_ev->y=ev.y;
      return ev.ret;
    }
  }
  close(_lart_hid_rfd);
  return LIBAROMA_HID_EV_RET_EXIT;
}
byte lart_hid_init(LIBAROMA_HIDP me){
  if (_lart_hid_active){
    return 0;
  }
  int pipes[2];
  pipe(pipes);
  me->internal    = NULL;
  me->release     = &lart_hid_release;
  me->getinput    = &lart_hid_getinput;
  _lart_hid_rfd    = pipes[0];
  _lart_hid_wfd    = pipes[1];
  _lart_hid_active = 1;
  return 1;
}

/* init & release function */
byte libaroma_hid_init();
void libaroma_hid_release();
byte libaroma_fb_init();
byte libaroma_fb_release();
byte libaroma_msg_init();
void libaroma_msg_release();
byte libaroma_wm_init();
byte libaroma_wm_release();
void libaroma_runtime_init();
void libaroma_runtime_activate_cores(int num_cores);
void libaroma_runtime_mute_parent();
void libaroma_runtime_rollback_cores();
byte libaroma_lang_init();
byte libaroma_lang_release();
byte libaroma_timer_init();
byte libaroma_timer_release();
byte libaroma_font_init();
byte libaroma_font_release();

/* libaroma app scope start & end function */
byte lart_libaroma_start(){
  /* set custom initializer */
  libaroma_fb_set_initializer(lart_fb_init);
  libaroma_hid_set_initializer(lart_hid_init);
  
  if (!libaroma_fb_init()) {
    LARTLOGE("lart_libaroma_start cannot start framebuffer...");
    return 0;
  }
  if (!libaroma_font_init()) {
    LARTLOGE("lart_libaroma_start cannot start font engine...");
    return 0;
  }
  if (!libaroma_hid_init()) {
    LARTLOGE("lart_libaroma_start cannot start hid engine...");
    return 0;
  }
  if (!libaroma_msg_init()) {
    LARTLOGE("lart_libaroma_start cannot start message queue...");
    return 0;
  }
  if (!libaroma_lang_init()) {
    LARTLOGE("lart_libaroma_start cannot start language engine...");
    return 0;
  }
  if (!libaroma_timer_init()) {
    LARTLOGE("lart_libaroma_start cannot start timer engine...");
    return 0;
  }
  if (!libaroma_wm_init()){
    LARTLOGE("lart_libaroma_start cannot start window manager...");
    return 0;
  }
  return 1;
}
void lart_libaroma_end(){
  libaroma_wm_release();
  libaroma_timer_release();
  libaroma_lang_release();
  libaroma_msg_release();
  libaroma_hid_release();
  libaroma_font_release();
  libaroma_fb_release();
}

#endif /* __libaromart_driver_c__ */
