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
 * Filename    : filters.c
 * Description : draw filter
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_filters_c__
#define __libaroma_filters_c__
#include <aroma_internal.h>

/*
 * Function    : libaroma_draw_filter_saturation
 * Return Value: word
 * Descriptions: saturation filter
 */
word libaroma_draw_filter_saturation(
    word color, dword param) {
  byte r = libaroma_color_r(color);
  byte g = libaroma_color_g(color);
  byte b = libaroma_color_b(color);
  double P = sqrt(
               r * r * 0.299 +
               g * g * 0.587 +
               b * b * 0.114
             );
  double ch = ((double) param) / 255.0;
  r = MAX(0, MIN(0xff, P + (r - P) * ch));
  g = MAX(0, MIN(0xff, P + (g - P) * ch));
  b = MAX(0, MIN(0xff, P + (b - P) * ch));
  return libaroma_rgb(r, g, b);
} /* End of libaroma_draw_filter_saturation */

/*
 * Function    : libaroma_draw_zshadow
 * Return Value: byte
 * Descriptions: draw zshadow
 */
byte libaroma_draw_zshadow(
  LIBAROMA_CANVASP dst,
  LIBAROMA_CANVASP mask,
  int x, int y, byte zindex){
  int cast_r, cast_y, amb_r, amb_y;
  byte cast_a, amb_a;
  
  if (zindex==1){
    amb_r   = 2;
    amb_y   = 0;
    amb_a   = 30;
    cast_r  = 1;
    cast_y  = 1;
    cast_a  = 50;
  }
  else if (zindex==2){
    amb_r   = 3;
    amb_y   = 1;
    amb_a   = 30;
    cast_r  = 2;
    cast_y  = 2;
    cast_a  = 53;
  }
  else if (zindex==3){
    amb_r   = 4;
    amb_y   = 2;
    amb_a   = 30;
    cast_r  = 3;
    cast_y  = 3;
    cast_a  = 56;
  }
  else if (zindex==4){
    amb_r   = 5;
    amb_y   = 2;
    amb_a   = 30;
    cast_r  = 4;
    cast_y  = 4;
    cast_a  = 59;
  }
  else{
    /* invalid zindex */
    return 0;
  }
  
  cast_r = libaroma_dp(cast_r);
  cast_y = libaroma_dp(cast_y);
  amb_r = libaroma_dp(amb_r);
  amb_y = libaroma_dp(amb_y);
  
  /* cast shadow */
  LIBAROMA_CANVASP cc = libaroma_blur_ex(mask, cast_r, 1, 0);
  if (cc){
    int dx = x-cast_r;
    int dy = y-cast_r+cast_y;
    int sx = 0;
    int sy = 0;
    int sw = cc->w;
    int sh = cc->h;
    if (dx<0){
      sx-=dx;
      dx=0;
      if (sw>dst->w){
        sw=dst->w;
      }
    }
    if (dy<0){
      sy-=dy;
      dy=0;
      if (sh>dst->h){
        sh=dst->h;
      }
    }
    libaroma_draw_ex(
      dst,cc,
      dx, dy,
      sx, sy,
      sw, sh,
      1, cast_a
    );
    libaroma_canvas_free(cc);
  }
  
  /* ambient shadow */
  LIBAROMA_CANVASP ac = libaroma_blur_ex(mask, amb_r, 1, 0);
  if (ac){
    int dx = x-amb_r;
    int dy = y-amb_r+amb_y;
    int sx = 0;
    int sy = 0;
    int sw = ac->w;
    int sh = ac->h;
    if (dx<0){
      sx-=dx;
      dx=0;
      if (sw>dst->w){
        sw=dst->w;
      }
    }
    if (dy<0){
      sy-=dy;
      dy=0;
      if (sh>dst->h){
        sh=dst->h;
      }
    }
    libaroma_draw_ex(
      dst,ac,
      dx, dy,
      sx, sy,
      sw, sh,
      1, amb_a
    );
    libaroma_canvas_free(ac);
  }
  
  return 1;
} /* End of libaroma_draw_zshadow */



#endif /* __libaroma_filters_c__ */

