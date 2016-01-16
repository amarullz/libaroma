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

typedef struct{
  int x;
  int y;
  int w;
  int h;
} LIBAROMA_RECT, * LIBAROMA_RECTP;

/*
 * Typedef     : LIBAROMA_DRAW_FILTER
 * Descriptions: Filter Callback
 */
typedef word (*LIBAROMA_DRAW_FILTER)(word color, dword param);

/* drawing flags */
#define LIBAROMA_DRAW_WITH_ALPHA    0x1
#define LIBAROMA_DRAW_NODITHER      0x2
#define LIBAROMA_DRAW_TO_BLACK      0x4
#define LIBAROMA_DRAW_NO_DST_ALPHA  0x8

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
 * Function    : libaroma_draw_mask_circle
 * Return Value: byte
 * Descriptions: draw masked circle
 */
byte libaroma_draw_mask_circle(
    LIBAROMA_CANVASP dst, 
    LIBAROMA_CANVASP src,
    int dx, int dy, 
    int sx, int sy,
    int sz,
    byte alpha);

/*
 * Function    : libaroma_draw_circle
 * Return Value: byte
 * Descriptions: draw filled circle
 */
byte libaroma_draw_circle(
    LIBAROMA_CANVASP dst, 
    word color,
    int dx, int dy,
    int sz,
    byte alpha);
    
/*
 * Function    : libaroma_draw_ex2
 * Return Value: byte
 * Descriptions: canvas drawing
 */
byte libaroma_draw_ex2(
  LIBAROMA_CANVASP dst,
  LIBAROMA_CANVASP src,
  int dx, int dy,
  int sx, int sy,
  int sw, int sh,
  byte draw_flags,
  byte opacity,
  byte ismask,
  word maskcolor
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
 * Function    : libaroma_gradient_ex1
 * Return Value: byte
 * Descriptions: draw gradient rectangle
 */
byte libaroma_gradient_ex1(
    LIBAROMA_CANVASP dst,
    int x, int y, int w, int h,
    word startColor, word endColor,
    int roundSize, word roundFlag,
    byte startAlpha, byte endAlpha,
    byte flags);

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
 * Function    : libaroma_art_busy_progress
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: create busy progress sprite canvas
 */
LIBAROMA_CANVASP libaroma_art_busy_progress(
    word basecolor);

/*
 * Function    : libaroma_draw_pixel
 * Return Value: byte
 * Descriptions: draw pixel
 */
byte libaroma_draw_pixel(
    LIBAROMA_CANVASP dest,
    int dx, int dy,
    word color,
    byte alpha
  );

/*
 * Function    : libaroma_draw_alphapixel
 * Return Value: byte
 * Descriptions: set alpha pixel
 */
byte libaroma_draw_alphapixel(
    LIBAROMA_CANVASP dest,
    int dx, int dy,
    byte alpha
  );
  
/*
 * Function    : libaroma_draw_line
 * Return Value: byte
 * Descriptions: draw line
 */
byte libaroma_draw_line(
  LIBAROMA_CANVASP dest,
  int x0, int y0, int x1, int y1,
  float wd,
  word color,
  byte alpha,
  byte is_mask);

/*
 * Function    : libaroma_draw_subpixel
 * Return Value: byte
 * Descriptions: draw subpixel
 */
byte libaroma_draw_subpixel(
    LIBAROMA_CANVASP dest,
    float dx, float dy, float tickness,
    word color,
    byte alpha);

/*
 * Function    : libaroma_draw_line_width
 * Return Value: byte
 * Descriptions: draw line with width
 */
byte libaroma_draw_line_width(
  LIBAROMA_CANVASP dest,
  float x1, float y1, float x2, float y2,
  float wd,
  word color,
  byte alpha,
  byte is_mask,
  float aliasing);

/*
 * Function    : libaroma_draw_arc
 * Return Value: byte
 * Descriptions: draw arc into canvas
 */
byte libaroma_draw_arc(
  LIBAROMA_CANVASP dest,
  float dx, float dy,
  float radius_w, float radius_h, float width,
  float start_angle, float end_angle,
  word color,byte alpha,byte is_mask,float aliasing
);
  
/* libaroma_draw_ex1 aliases */
#define libaroma_draw_mask(dst,src,dx,dy,cl,op) \
  libaroma_draw_ex2(dst,src,dx,dy,0,0,src->w,src->h,1,op,1,cl)
#define libaroma_draw_mask_ex(dst,src,dx,dy,sx,sy,sw,sh,cl,op) \
  libaroma_draw_ex2(dst,src,dx,dy,sx,sy,sw,sh,1,op,1,cl)
#define libaroma_draw_ex1(dst,src,dx,dy,sx,sy,sw,sh,a,op) \
  libaroma_draw_ex2(dst,src,dx,dy,sx,sy,sw,sh,a,op,0,0)
#define libaroma_draw_ex(dst,src,dx,dy,sx,sy,sw,sh,useAlpha,opacity) \
  libaroma_draw_ex1(dst,src,dx,dy,sx,sy,sw,sh,useAlpha,opacity)
#define libaroma_draw(dst,src,dx,dy,useAlpha) \
  libaroma_draw_ex(dst,src,dx,dy,0,0,src->w,src->h,useAlpha,0xff)
#define libaroma_draw_opacity(dst,src,dx,dy,useAlpha,opacity) \
  libaroma_draw_ex(dst,src,dx,dy,0,0,src->w,src->h,useAlpha,opacity)

/* libaroma_gradient_ex1 aliases */
#define libaroma_gradient_ex(dst,x,y,w,h,sc,ec,rs,rf,sa,ea) \
  libaroma_gradient_ex1(dst,x,y,w,h,sc,ec,rs,rf,sa,ea,0)    
#define libaroma_gradient(dst,x,y,w,h,sc,ec,rs,rf) \
  libaroma_gradient_ex(dst,x,y,w,h,sc,ec,rs,rf,0xff,0xff)
#define libaroma_grad(dst,x,y,w,h,sc,ec) \
  libaroma_gradient_ex(dst,x,y,w,h,sc,ec,-1,0,0xff,0xff)

/* libaroma_blur_ex aliases */
#define libaroma_blur(dst,r) \
  libaroma_blur_ex(dst,r,0,0)


/**** PATH DRAWING ****/
typedef struct _LIBAROMA_PATH_POINT{
  float x;
  float y;
} LIBAROMA_PATH_POINT, * LIBAROMA_PATH_POINTP;

typedef struct _LIBAROMA_PATH LIBAROMA_PATH;
typedef struct _LIBAROMA_PATH * LIBAROMA_PATHP;
struct _LIBAROMA_PATH{
  LIBAROMA_PATH_POINT * p;
  int n;
  LIBAROMA_PATH_POINT min;
  LIBAROMA_PATH_POINT max;
};

/*
 * Function    : libaroma_path
 * Return Value: LIBAROMA_PATHP
 * Descriptions: create new path
 */
LIBAROMA_PATHP libaroma_path(float x, float y);

/*
 * Function    : libaroma_path_free
 * Return Value: byte
 * Descriptions: free path
 */
byte libaroma_path_free(LIBAROMA_PATHP path);

/*
 * Function    : libaroma_path_add
 * Return Value: byte
 * Descriptions: add point into path
 */
byte libaroma_path_add(LIBAROMA_PATHP path, float x, float y);

/*
 * Function    : libaroma_path_curve_calc
 * Return Value: void
 * Descriptions: calculating bezier curve
 */
void libaroma_path_curve_calc(
  float t,
  float *x, float *y,
  float x0, float y0,
  float x1, float y1,
  float x2, float y2,
  float x3, float y3);
  
/*
 * Function    : libaroma_path_curve
 * Return Value: byte
 * Descriptions: add curve point
 */
byte libaroma_path_curve(
  LIBAROMA_PATHP path,
  int resolution,
  float x1, float y1,
  float x2, float y2,
  float x3, float y3
);

/*
 * Function    : libaroma_path_draw
 * Return Value: byte
 * Descriptions: draw path
 */
byte libaroma_path_draw(
  LIBAROMA_CANVASP dest,
  LIBAROMA_PATHP path,
  word color,
  byte alpha,
  byte is_mask,
  float aliasing);

/*
 * Function    : libaroma_draw_zshadow
 * Return Value: byte
 * Descriptions: draw zshadow
 */
byte libaroma_draw_zshadow(
  LIBAROMA_CANVASP dst,
  LIBAROMA_CANVASP mask,
  int x, int y, byte zindex);

/*
 * Function    : libaroma_draw_shadow
 * Return Value: byte
 * Descriptions: draw rectangle shadow
 */
byte libaroma_draw_shadow(
  LIBAROMA_CANVASP dst,
  int dx, int dy, int w, int h,
  int radiusx, int radiusy,
  byte alphamax, byte fill
);

#endif /* __libaroma_draw_h__ */
