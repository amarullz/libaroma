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
 * Filename    : fb.h
 * Description : framebuffer
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_fb_h__
#define __libaroma_fb_h__

#ifndef LIBAROMA_CONFIG_SHMEMFB
#define LIBAROMA_FB_SHMEM_NAME NULL
#else
#define LIBAROMA_FB_SHMEM_NAME "@fb_main_canvas"
#endif

/*
 * Typedef     : LIBAROMA_FB
 * Descriptions: Framebuffer type structure
 */
typedef struct _LIBAROMA_FB LIBAROMA_FB;
typedef struct _LIBAROMA_FB * LIBAROMA_FBP;

/*
 * Typedef     : LIBAROMA_FB_INITIALIZER
 * Descriptions: Runtime HID Initializer Callback
 */
typedef byte (*LIBAROMA_FB_INITIALIZER)(LIBAROMA_FBP);

/*
 * Function    : libaroma_fb_set_initializer
 * Return Value: byte
 * Descriptions: Set framebuffer initializer callback
 */
byte libaroma_fb_set_initializer(LIBAROMA_FB_INITIALIZER cb);

/*
 * Structure   : _LIBAROMA_FB
 * Typedef     : LIBAROMA_FB, * LIBAROMA_FBP
 * Descriptions: Framebuffer Structure
 */
struct _LIBAROMA_FB{
  /* main info */
  int w;              /* width */
  int h;              /* height */
  int sz;             /* width x height */
  byte double_buffer; /* is double buffer driver */
  voidp internal;     /* driver internal data */
  
  /* callbacks */
  void (*release)(LIBAROMA_FBP);
  byte (*snapshoot)(LIBAROMA_FBP, wordp);
  byte (*config)(LIBAROMA_FBP, const char *, const char *, dword);
  
  /* post callbacks */
  byte (*start_post)(LIBAROMA_FBP);
  byte (*post)(LIBAROMA_FBP, wordp __restrict,
    int, int, int, int, int, int, int, int);
  byte (*end_post)(LIBAROMA_FBP);
  
  /* Optional - DPI */
  int dpi;
  byte bigscreen;
  
  /* post flag */
  byte onpost;
  
  /* AROMA CORE Runtime Data */
  LIBAROMA_CANVASP canvas;
  byte internal_canvas;
};
  
/*
 * Function    : libaroma_fb
 * Return Value: LIBAROMA_FBP
 * Descriptions: get framebuffer instance
 */
LIBAROMA_FBP libaroma_fb();

/*
 * Function    : libaroma_fb_sync
 * Return Value: byte
 * Descriptions: sync framebuffer
 */
byte libaroma_fb_sync();

/*
 * Function    : libaroma_fb_sync_area
 * Return Value: byte
 * Descriptions: sync framebuffer area
 */
byte libaroma_fb_sync_area(
  int x,
  int y,
  int w,
  int h);

/*
 * Function    : libaroma_fb_config
 * Return Value: byte
 * Descriptions: set driver runtime config
 */
byte libaroma_fb_config(
    char * name,
    char * svalue,
    dword dvalue);

/*
 * Function    : libaroma_fb_is_landscape
 * Return Value: byte
 * Descriptions: is landscape?
 */
byte libaroma_fb_is_landscape();

/*
 * Function    : libaroma_dp
 * Return Value: int
 * Descriptions: convert px to dp
 */
int libaroma_dp(
    int dp);

/*
 * Function    : libaroma_px
 * Return Value: int
 * Descriptions: convert dp to px
 */
int libaroma_px(
    int px);

/*
 * Function    : libaroma_width_dp
 * Return Value: int
 * Descriptions: display width in dp
 */
int libaroma_width_dp();

/*
 * Function    : libaroma_height_dp
 * Return Value: int
 * Descriptions: display height in dp
 */
int libaroma_height_dp();

/*
 * Function    : libaroma_fb_snapshoot
 * Return Value: byte
 * Descriptions: copy display into framebuffer canvas
 */
byte libaroma_fb_snapshoot();

/*
 * Function    : libaroma_fb_snapshoot
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: copy display into canvas
 */
LIBAROMA_CANVASP libaroma_fb_snapshoot_canvas();

/*
 * Function    : libaroma_fb_start_post
 * Return Value: byte
 * Descriptions: start post
 */
byte libaroma_fb_start_post();

/*
 * Function    : libaroma_fb_end_post
 * Return Value: byte
 * Descriptions: end post
 */
byte libaroma_fb_end_post();

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
);

/* sync & refresh aliases */
#define libaroma_sync() \
    libaroma_fb_sync()
#define libaroma_sync_ex(x,y,w,h) \
    libaroma_fb_sync_area(x,y,w,h)

/* fb info shortcuts */
#define _LIBAROMA_FB_VALUE(X,ifnull) (libaroma_fb()?(libaroma_fb()->X):ifnull)
#define LIBAROMA_FB_CANVAS _LIBAROMA_FB_VALUE(canvas,NULL)
#define LIBAROMA_FB_W _LIBAROMA_FB_VALUE(w,0)
#define LIBAROMA_FB_H _LIBAROMA_FB_VALUE(h,0)
#define LIBAROMA_FB_DPI _LIBAROMA_FB_VALUE(dpi,0)

#endif /* __libaroma_fb_h__ */
