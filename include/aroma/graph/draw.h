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
 * Filename    : draw.h
 * Description : drawing operations
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_draw_h__
#define __libaroma_draw_h__

/*
 * Typedef     : LIBAROMA_DRAW_FILTER
 * Descriptions: Filter Callback
 */
typedef word (*LIBAROMA_DRAW_FILTER)(word color, dword param);

/*
 * Function    : libaroma_draw_limit
 * Return Value: int
 * Descriptions: get limit position
 */
int libaroma_draw_limit(
    int x, int max);

/*
 * Function    : libaroma_draw_limited
 * Return Value: byte
 * Descriptions: is draw position limited/overflow
 */
byte libaroma_draw_limited(
    int x, int max);

/*
 * Function    : libaroma_draw_ex1
 * Return Value: byte
 * Descriptions: canvas drawing
 */
byte libaroma_draw_ex1(
  LIBAROMA_CANVASP dst,
  LIBAROMA_CANVASP src,
  int dx, int dy,
  int sx, int sy,
  int sw, int sh,
  byte useAlpha,
  byte opacity,
  LIBAROMA_DRAW_FILTER filter_callback,
  dword filter_param
);

/*
 * Function    : libaroma_draw_rect
 * Return Value: byte
 * Descriptions: draw rectangle
 */
byte libaroma_draw_rect(
    LIBAROMA_CANVASP dst,
    int x, int y, int w, int h,
    word color, byte alpha);

/*
 * Function    : libaroma_draw_scale_nearest
 * Return Value: byte
 * Descriptions: scale nearest
 */
byte libaroma_draw_scale_nearest(
  LIBAROMA_CANVASP dst, LIBAROMA_CANVASP src,
  int dx, int dy, int dw, int dh,
  int sx, int sy, int sw, int sh
);

/*
 * Function    : libaroma_draw_scale_smooth
 * Return Value: byte
 * Descriptions: scale smooth
 */
byte libaroma_draw_scale_smooth(
  LIBAROMA_CANVASP dst, LIBAROMA_CANVASP src,
  int dx, int dy, int dw, int dh,
  int sx, int sy, int sw, int sh
);

/*
 * Function    : libaroma_draw_scale
 * Return Value: byte
 * Descriptions: scale drawinf
 */
byte libaroma_draw_scale(
  LIBAROMA_CANVASP dst,
  LIBAROMA_CANVASP src,
  int dx, int dy, int dw, int dh,
  int sx, int sy, int sw, int sh,
  byte smooth
);

/*
 * Function    : libaroma_gradient_ex
 * Return Value: byte
 * Descriptions: draw gradient rectangle
 */
byte libaroma_gradient_ex(
    LIBAROMA_CANVASP dst,
    int x, int y, int w, int h,
    word startColor, word endColor,
    int roundSize, word roundFlag,
    byte startAlpha, byte endAlpha);

/*
 * Function    : libaroma_blur_ex
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: create new blur-ed canvas - extended
 */
LIBAROMA_CANVASP libaroma_blur_ex(
  LIBAROMA_CANVASP src,
  const int inRadius,
  byte isMask,
  word maskColor
);

/*
 * Function    : libaroma_draw_filter_saturation
 * Return Value: word
 * Descriptions: saturation filter
 */
word libaroma_draw_filter_saturation(
    word color, dword param);

/*
 * Function    : libaroma_art_busy_progress
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: create busy progress sprite canvas
 */
LIBAROMA_CANVASP libaroma_art_busy_progress(
    word basecolor);

/* libaroma_draw_ex1 aliases */
#define libaroma_draw_filter(dst,src,dx,dy,a,fcb,fparam) \
  libaroma_draw_ex1(dst,src,dx,dy,0,0,src->w, \
  src->h,a,0xff,fcb,fparam)
#define libaroma_draw_filter_opacity(dst,src,dx,dy,a,o,fcb,fparam) \
  libaroma_draw_ex1(dst,src,dx,dy,0,0,src->w,src->h,a,o,fcb,fparam)
#define libaroma_draw_ex(dst,src,dx,dy,sx,sy,sw,sh,useAlpha,opacity) \
  libaroma_draw_ex1(dst,src,dx,dy,sx,sy,sw,sh,useAlpha,opacity,NULL,0)
#define libaroma_draw(dst,src,dx,dy,useAlpha) \
  libaroma_draw_ex(dst,src,dx,dy,0,0,src->w,src->h,useAlpha,0xff)
#define libaroma_draw_opacity(dst,src,dx,dy,useAlpha,opacity) \
  libaroma_draw_ex(dst,src,dx,dy,0,0,src->w,src->h,useAlpha,opacity)

/* libaroma_gradient_ex aliases */
#define libaroma_gradient(dst,x,y,w,h,sc,ec,rs,rf) \
  libaroma_gradient_ex(dst,x,y,w,h,sc,ec,rs,rf,0xff,0xff)
#define libaroma_grad(dst,x,y,w,h,sc,ec) \
  libaroma_gradient_ex(dst,x,y,w,h,sc,ec,-1,0,0xff,0xff)

/* libaroma_blur_ex aliases */
#define libaroma_blur(dst,r) \
  libaroma_blur_ex(dst,r,0,0)

#endif /* __libaroma_draw_h__ */
