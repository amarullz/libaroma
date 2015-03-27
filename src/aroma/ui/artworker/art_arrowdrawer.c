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
 * Filename    : art_arrowdrawer.c
 * Description : animated drawer arrow ( = to <- )
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 25/03/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_art_arrowdrawer_c__
#define __libaroma_art_arrowdrawer_c__

/*
 * Variable    : __libaroma_art_arrowdrawer_curves_*
 * Type        : float *
 * Descriptions: arrow drawer curves
 */
static const float __libaroma_art_arrowdrawer_curves_top[]={
   18, 70, 54,  4,160,-19,208, 60, /* top */
  208, 60,239, 99,214,211,127,207,
  222, 70,240,126,221,202,147,214,
  147,214, 97,228, 31,193, 30,113
};
static const float __libaroma_art_arrowdrawer_curves_mid[]={
   18,120, 18, 66, 66, 23,120, 23, /* middle */
  120, 23,168, 23,211, 72,211,120,
  222,120,222,175,175,210,120,210,
  120,210, 76,210, 38,164, 38,120
};
static const float __libaroma_art_arrowdrawer_curves_bot[]={
   18,170,  7,148,  2, 84, 31, 60, /* bottom */
   31, 60, 45, 45, 98, 18,127, 32,
  222,170,208,194,163,240, 96,216,
   96,216, 61,200, 30,162, 30,127
};

/*
 * Function    : _libaroma_art_arrowdrawer_line
 * Return Value: void
 * Descriptions: internal draw arrow drawer data into canvas
 */
void _libaroma_art_arrowdrawer_line(
    LIBAROMA_CANVASP canvas,
    const float * cb,
    float t,
    int dx, int dy,
    int size,
    byte swap,
    word color,
    byte alpha,
    byte is_mask,
    float aliasing){
  if (!canvas){
    return;
  }
  if (swap){
    t=1-t;
  }
  int pos = (t<=0.5)?0:8;
  if (t<=0.5){
    t*=2;
  }
  else{
    t=(t-0.5) * 2;
  }
  const float * a  = cb + pos;
  const float * b  = cb + pos + 16;
  float x, y, x2, y2;
  libaroma_path_curve_calc(
    t, &x, &y, a[0],a[1],a[2],a[3],a[4],a[5],a[6],a[7]
  );
  libaroma_path_curve_calc(
    t, &x2,&y2,b[0],b[1],b[2],b[3],b[4],b[5],b[6],b[7]
  );
  if (swap){
    y=240-y;
    y2=240-y2;
  }
  
  /* scaling */
  float scaling = ((float) size) / 240.0;
  x*=scaling;
  y*=scaling;
  x2*=scaling;
  y2*=scaling;
  
  /* draw polygonal line */
  libaroma_draw_line_width(
    canvas,
    dx+x, dy+y, dx+x2, dy+y2,
    20*scaling,
    color, alpha, is_mask, aliasing
  );
} /* End of _libaroma_art_arrowdrawer_line */

/*
 * Function    : libaroma_art_arrowdrawer
 * Return Value: byte
 * Descriptions: draw arrow drawer
 */
byte libaroma_art_arrowdrawer(
  LIBAROMA_CANVASP dest,
  float t,
  byte from_arrow,
  int dx,
  int dy,
  int size,
  word color,
  byte alpha,
  byte is_mask,
  float aliasing){
  if ((t<0)||(t>1)){
    return 0;
  }
  if (!dest){
    dest=libaroma_fb()->canvas;
  }
  if ((is_mask)&&(dest->alpha==NULL)){
    return 0;
  }
  if ((!is_mask)&&(alpha<1)){
    return 1;
  }
  
  /* top line */
  _libaroma_art_arrowdrawer_line(
    dest,
    __libaroma_art_arrowdrawer_curves_top,
    t, dx, dy, size,
    from_arrow, color, alpha, is_mask, aliasing
  );
  
  /* middle line */
  _libaroma_art_arrowdrawer_line(
    dest,
    __libaroma_art_arrowdrawer_curves_mid,
    t, dx, dy, size,
    from_arrow, color, alpha, is_mask, aliasing
  );
  
  /* bottom line */
  _libaroma_art_arrowdrawer_line(
    dest,
    __libaroma_art_arrowdrawer_curves_bot,
    t, dx, dy, size,
    from_arrow, color, alpha, is_mask, aliasing
  );
  
  return 1;
} /* End of libaroma_art_arrowdrawer */



#endif /* __libaroma_art_arrowdrawer_c__ */
