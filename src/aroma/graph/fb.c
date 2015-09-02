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
 * Filename    : fb.c
 * Description : framebuffer handler
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_fb_c__
#define __libaroma_fb_c__
#include <aroma_internal.h>

byte LIBAROMA_FB_INIT_FUNCTION(
    LIBAROMA_FBP);
/*
 * Variable    : _libaroma_fb
 * Type        : LIBAROMA_FBP
 * Descriptions: framebuffer instance storage
 */
static LIBAROMA_FBP _libaroma_fb=NULL;
static LIBAROMA_FB_INITIALIZER _libaroma_fb_initializer=NULL;
static LIBAROMA_MUTEX _libaroma_fb_onpost_mutex;

/*
 * Function    : libaroma_fb_set_initializer
 * Return Value: byte
 * Descriptions: Set framebuffer initializer callback
 */
byte libaroma_fb_set_initializer(LIBAROMA_FB_INITIALIZER cb){
  if (_libaroma_fb != NULL) {
    ALOGE("libaroma_fb_set_initializer framebuffer already initialized");
    return 0;
  }
  _libaroma_fb_initializer = cb;
  if (cb){
    return 1;
  }
  return 0;
} /* end of libaroma_fb_set_initializer */

/*
 * Function    : libaroma_fb
 * Return Value: LIBAROMA_FBP
 * Descriptions: get framebuffer instance
 */
LIBAROMA_FBP libaroma_fb() {
  return _libaroma_fb;
} /* End of libaroma_fb */


/*
 * Function    : libaroma_fb_init
 * Return Value: byte
 * Descriptions: init framebuffer
 */
byte libaroma_fb_init() {
  if (_libaroma_fb != NULL) {
    ALOGE("libaroma_fb_init framebuffer already initialized");
    return 0;
  }
  
  /* allocating instance memory */
  ALOGV("libaroma_fb_init allocating framebuffer instance");
  _libaroma_fb = (LIBAROMA_FBP) calloc(sizeof(LIBAROMA_FB),1);
  if (!_libaroma_fb){
    ALOGE("libaroma_fb_init allocating framebuffer instance failed");
    return 0;
  }
  
  if (_libaroma_fb_initializer!=NULL){
    ALOGV("Init framebuffer driver - runtime");
    if (_libaroma_fb_initializer(_libaroma_fb) == 0){
      free(_libaroma_fb);
      _libaroma_fb = NULL;
      ALOGE("libaroma_fb_init driver error");
      return 0;
    }
  }
  else{
    ALOGV("Init framebuffer driver - default");
    if (LIBAROMA_FB_INIT_FUNCTION(_libaroma_fb) == 0) {
      free(_libaroma_fb);
      _libaroma_fb = NULL;
      ALOGE("libaroma_fb_init driver error");
      return 0;
    }
  }
  
  /* check callbacks */
  if (
    (_libaroma_fb->release == NULL) ||
    (_libaroma_fb->start_post == NULL) ||
    (_libaroma_fb->end_post == NULL) ||
    (_libaroma_fb->post == NULL)
  ) {
    free(_libaroma_fb);
    _libaroma_fb = NULL;
    ALOGE("libaroma_fb_init driver doesn't set the callbacks");
    return 0;
  }
  
  /* check dpi */
  if ((_libaroma_fb->dpi < 160)||(_libaroma_fb->dpi > 960)) {
    /* use phone dpi */
    _libaroma_fb->dpi = floor(MIN(_libaroma_fb->w, _libaroma_fb->h)/160) * 80;
    ALOGW("libaroma_fb_init driver doesn't set dpi. set as : %i dpi",
      _libaroma_fb->dpi);
  }
  
  /* make sure the dpi is valid */
  if ((_libaroma_fb->dpi < 160)||(_libaroma_fb->dpi > 960)) {
    _libaroma_fb->dpi = 160;
  }
  
  /* check big screen */
  int dpMinWH = MIN(libaroma_width_dp(), libaroma_height_dp());
  _libaroma_fb->bigscreen = (dpMinWH >= 600); 
  
  /* create framebuffer canvas */
  if ((!_libaroma_fb->internal_canvas)||(!_libaroma_fb->canvas)){
    _libaroma_fb->internal_canvas=0;
    _libaroma_fb->canvas  =
      libaroma_canvas_shmem(
        _libaroma_fb->w,
        _libaroma_fb->h,
        0,
        (libaroma_config()->fb_shm_name[0]!=0)?
          libaroma_config()->fb_shm_name:NULL
      );
  }

  /* Show Information */
  ALOGI("Framebuffer Initialized (%ix%ipx - %i dpi - %s)",
    _libaroma_fb->w,
    _libaroma_fb->h,
    _libaroma_fb->dpi,
    _libaroma_fb->double_buffer?"Double Buffer":"Single Buffer"
  );
  
  /* Copy Current Framebuffer Into Display Canvas */
  if (libaroma_config()->snapshoot_fb){
    if (_libaroma_fb->snapshoot!=NULL){
      ALOGV("Copy framebuffer pixels into canvas");
      libaroma_fb_snapshoot();
    }
  }
  
  _libaroma_fb->onpost=0;
  libaroma_mutex_init(_libaroma_fb_onpost_mutex);
  return 1;
} /* End of libaroma_fb_init */

/*
 * Function    : libaroma_fb_start_post
 * Return Value: byte
 * Descriptions: start post
 */
byte libaroma_fb_start_post(){
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_fb_start_post framebuffer uninitialized");
    return 0;
  }
  libaroma_mutex_lock(_libaroma_fb_onpost_mutex);
  if (_libaroma_fb->start_post(_libaroma_fb)){
  	_libaroma_fb->onpost=1;
    return 1;
  }
  libaroma_mutex_unlock(_libaroma_fb_onpost_mutex);
  return 0;
} /* End of libaroma_fb_start_post */

/*
 * Function    : libaroma_fb_end_post
 * Return Value: byte
 * Descriptions: end post
 */
byte libaroma_fb_end_post(){
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_fb_end_post framebuffer uninitialized");
    return 0;
  }
  if (!_libaroma_fb->onpost){
    ALOGW("libaroma_fb_end_post start_post not called");
    return 0;
  }
  _libaroma_fb->end_post(_libaroma_fb);
  _libaroma_fb->onpost=0;
  libaroma_mutex_unlock(_libaroma_fb_onpost_mutex);
  return 1;
} /* End of libaroma_fb_end_post */

/*
 * Function    : libaroma_fb_post
 * Return Value: byte
 * Descriptions: post canvas into display directly
 */
byte libaroma_fb_post(
  LIBAROMA_CANVASP canvas,
  int dx, int dy,
  int sx, int sy,
  int w,  int h
){
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_fb_post framebuffer uninitialized");
    return 0;
  }
  if (!_libaroma_fb->onpost){
    ALOGW("libaroma_fb_post start_post not called");
    return 0;
  }
  
  /* check x position */
  if ((sx>canvas->w)||(sy>canvas->h)||
      (dx>_libaroma_fb->w)||(dy>_libaroma_fb->h)||
      (sx<0)||(sy<0)||(dx<0)||(dy<0)){
    ALOGW("libaroma_fb_post x,y position is invalid");
    return 0;
  }
  if (sx+w>canvas->w){
    w = canvas->w-sx;
  }
  if (sy+h>canvas->h){
    h = canvas->h-sy;
  }
  if (dx+w>_libaroma_fb->w){
    w = _libaroma_fb->w-dx;
  }
  if (dy+h>_libaroma_fb->h){
    h = _libaroma_fb->h-dy;
  }
  if ((w<1)||(h<1)){
    /* no need to post */
    return 1;
  }
  return
    _libaroma_fb->post(
      _libaroma_fb, 
      canvas->data,
      dx, dy, w, h,
      sx, sy, canvas->l, canvas->h
    );
} /* End of libaroma_fb_post */



/*
 * Function    : libaroma_fb_release
 * Return Value: byte
 * Descriptions: release framebuffer
 */
byte libaroma_fb_release() {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_fb_release framebuffer uninitialized");
    return 0;
  }
  
  /* Free display canvas */
  if (!_libaroma_fb->internal_canvas){
    ALOGV("Releasing Canvas");
    libaroma_canvas_delete(_libaroma_fb->canvas);
  }
  
  /* Release Framebuffer Driver */
  ALOGV("Releasing Framebuffer Driver");
  _libaroma_fb->release(_libaroma_fb);
  
  /* Show Information */
  ALOGS("Framebuffer Released");
  
  /* cleanup post event */
  if (_libaroma_fb->onpost){
  	libaroma_fb_end_post();
  }
  _libaroma_fb->onpost=0;
  libaroma_mutex_free(_libaroma_fb_onpost_mutex);
  
  /* Free Framebuffer Instance */
  free(_libaroma_fb);
  
  /* Set Null */
  _libaroma_fb = NULL;
  return 1;
} /* End of libaroma_fb_release */

/*
 * Function    : libaroma_fb_sync
 * Return Value: byte
 * Descriptions: sync framebuffer
 */
byte libaroma_fb_sync() {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_fb_sync framebuffer uninitialized");
    return 0;
  }
  
  byte ret=0;
  if (libaroma_fb_start_post()){
    if (_libaroma_fb->post(_libaroma_fb, _libaroma_fb->canvas->data,
        0, 0, _libaroma_fb->w, _libaroma_fb->h,
        0, 0, _libaroma_fb->w, _libaroma_fb->h)){
      ret = 1;
    }
    libaroma_fb_end_post();
  }
  return ret;
} /* End of libaroma_fb_sync */

/*
 * Function    : libaroma_fb_sync_area
 * Return Value: byte
 * Descriptions: sync framebuffer area
 */
byte libaroma_fb_sync_area(
  int x,
  int y,
  int w,
  int h) {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_fb_sync_area framebuffer uninitialized");
    return 0;
  }
  if (_libaroma_fb->double_buffer){
    /* should copy whole data */
    return libaroma_fb_sync();
  }
  
  if (x < 0) {
    w -= x;
    x = 0;
  }
  if (y < 0) {
    h -= y;
    y = 0;
  }
  if (x + w > _libaroma_fb->w) {
    w = _libaroma_fb->w - x;
  }
  if (y + h > _libaroma_fb->h) {
    h = _libaroma_fb->h - x;
  }
  if ((w < 1) || (h < 1)) {
    ALOGV("libaroma_fb_sync_area calculated width/height < 0 (%i,%i)", w, h);
    return 0;
  }
  
  byte ret=0;
  if (libaroma_fb_start_post()){
    if (_libaroma_fb->post(_libaroma_fb, _libaroma_fb->canvas->data,
        x, y, w, h,
        x, y, _libaroma_fb->w, _libaroma_fb->h)){
      ret = 1;
    }
    libaroma_fb_end_post();
  }
  return ret;
} /* End of libaroma_fb_sync_area */

/*
 * Function    : libaroma_fb_config
 * Return Value: byte
 * Descriptions: set driver runtime config
 */
byte libaroma_fb_config(
    char * name,
    char * svalue,
    dword dvalue) {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_fb_config framebuffer uninitialized");
    return 0;
  }
  if (_libaroma_fb->config == NULL) {
    ALOGW("framebuffer driver do not support runtimr configuration");
    return 0;
  }
  ALOGV("framebuffer driver Set Config %s=%s,(%x)", name, svalue, dvalue);
  return _libaroma_fb->config(_libaroma_fb, name, svalue, dvalue);
} /* End of libaroma_fb_config */

/*
 * Function    : libaroma_fb_is_landscape
 * Return Value: byte
 * Descriptions: is landscape?
 */
byte libaroma_fb_is_landscape() {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_fb_is_landscape framebuffer uninitialized");
    return 0;
  }
  if (_libaroma_fb->w > _libaroma_fb->h) {
    return 1;
  }
  return 0;
} /* End of libaroma_fb_is_landscape */

/*
 * Function    : libaroma_dp
 * Return Value: int
 * Descriptions: convert px to dp
 */
int libaroma_dp(
    int dp) {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_dp framebuffer uninitialized");
    return 0;
  }
  return ((dp * _libaroma_fb->dpi) / 160);
} /* End of libaroma_dp */

/*
 * Function    : libaroma_px
 * Return Value: int
 * Descriptions: convert dp to px
 */
int libaroma_px(
    int px) {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_px framebuffer uninitialized");
    return 0;
  }
  return (px * 160 / _libaroma_fb->dpi);
} /* End of libaroma_px */

/*
 * Function    : libaroma_width_dp
 * Return Value: int
 * Descriptions: display width in dp
 */
int libaroma_width_dp() {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_width_dp framebuffer uninitialized");
    return 0;
  }
  return libaroma_px(_libaroma_fb->w);
} /* End of libaroma_width_dp */

/*
 * Function    : libaroma_height_dp
 * Return Value: int
 * Descriptions: display height in dp
 */
int libaroma_height_dp() {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_height_dp framebuffer uninitialized");
    return 0;
  }
  return libaroma_px(_libaroma_fb->h);
} /* End of libaroma_height_dp */

/*
 * Function    : libaroma_fb_snapshoot
 * Return Value: byte
 * Descriptions: copy display into framebuffer canvas
 */
byte libaroma_fb_snapshoot() {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_fb_snapshoot framebuffer uninitialized");
    return 0;
  }
  if (_libaroma_fb->snapshoot == NULL) {
    ALOGW("framebuffer driver do not support snapshoot");
    return 0;
  }
  /* get */
  return _libaroma_fb->snapshoot(
    _libaroma_fb,
    _libaroma_fb->canvas->data
  );
} /* End of libaroma_fb_snapshoot */

/*
 * Function    : libaroma_fb_snapshoot
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: copy display into canvas
 */
LIBAROMA_CANVASP libaroma_fb_snapshoot_canvas() {
  if (_libaroma_fb == NULL) {
    ALOGW("libaroma_fb_snapshoot_canvas framebuffer uninitialized");
    return 0;
  }
  
  if (_libaroma_fb->snapshoot == NULL) {
    ALOGW("framebuffer driver do not support snapshoot");
    return 0;
  }
  
  /* Create Framebuffer Canvas */
  LIBAROMA_CANVASP new_canvas = libaroma_canvas(
    _libaroma_fb->w, _libaroma_fb->h);
  if (!new_canvas) {
    ALOGW("libaroma_fb_snapshoot_canvas create canvas failed");
    return NULL;
  }
  
  /* get */
  if (_libaroma_fb->snapshoot(
    _libaroma_fb,
    new_canvas->data
  )){
    return new_canvas;
  }
  libaroma_canvas_free(new_canvas);
  ALOGW("framebuffer driver snapshoot not successed");
  return NULL;
} /* End of libaroma_fb_snapshoot */


#endif /* __libaroma_fb_c__ */

