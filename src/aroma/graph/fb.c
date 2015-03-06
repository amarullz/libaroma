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
 * Description : framebuffer
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_fb_c__
#define __libaroma_fb_c__

/*
 * Variable    : _libaroma_fb
 * Type        : LIBAROMA_FBP
 * Descriptions: framebuffer instance storage
 */
static LIBAROMA_FBP _libaroma_fb=NULL;

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
 * Return Value: LIBAROMA_FBP
 * Descriptions: init framebuffer
 */
LIBAROMA_FBP libaroma_fb_init() {
  if (_libaroma_fb != NULL) {
    ALOGE("libaroma_fb_init framebuffer already initialized");
    return NULL;
  }
  
  /* allocating instance memory */
  ALOGV("libaroma_fb_init allocating framebuffer instance");
  _libaroma_fb = (LIBAROMA_FBP) malloc(sizeof(LIBAROMA_FB));
  if (!_libaroma_fb){
    ALOGE("libaroma_fb_init allocating framebuffer instance failed");
    return NULL;
  }
  memset(_libaroma_fb, 0, sizeof(LIBAROMA_FB));
  
  /* init driver */
  ALOGV("Init framebuffer driver");
  if (LIBAROMA_FB_INIT_FUNCTION(_libaroma_fb) == 0) {
    free(_libaroma_fb);
    _libaroma_fb = NULL;
    ALOGE("libaroma_fb_init driver error");
    return NULL;
  }
  
  /* check callbacks */
  if (
    (_libaroma_fb->release == NULL) ||
    (_libaroma_fb->sync == NULL)
  ) {
    free(_libaroma_fb);
    _libaroma_fb = NULL;
    ALOGE("libaroma_fb_init driver doesn't set the callbacks");
    return NULL;
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
  _libaroma_fb->canvas  =
    libaroma_canvas_shmem(
      _libaroma_fb->w,
      _libaroma_fb->h,
      0,
      (libaroma_config()->fb_shm_name[0]!=0)?
        libaroma_config()->fb_shm_name:NULL
    );

  /* Show Information */
  ALOGI("Framebuffer Initialized (%ix%ipx - %i dpi)",
    _libaroma_fb->w,
    _libaroma_fb->h,
    _libaroma_fb->dpi
  );
  
  /* Copy Current Framebuffer Into Display Canvas */
  if (libaroma_config()->snapshoot_fb){
    if (_libaroma_fb->snapshoot!=NULL){
      ALOGV("Copy framebuffer pixels into canvas");
      libaroma_fb_snapshoot();
    }
  }
  
  /* Return The Instance */
  return _libaroma_fb;
} /* End of libaroma_fb_init */

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
  ALOGV("Releasing Canvas");
  libaroma_canvas_delete(_libaroma_fb->canvas);
  
  /* Release Framebuffer Driver */
  ALOGV("Releasing Framebuffer Driver");
  _libaroma_fb->release(_libaroma_fb);
  
  /* Show Information */
  ALOGS("Framebuffer Released");
  
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
  
  /* sync */
  return _libaroma_fb->sync(
    _libaroma_fb,
    _libaroma_fb->canvas->data,
    0,
    0,
    0,
    0);
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
  
  /* sync */
  return _libaroma_fb->sync(
    _libaroma_fb,
    _libaroma_fb->canvas->data,
    x,
    y,
    w,
    h);
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
