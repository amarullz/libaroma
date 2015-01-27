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
 * Filename    : commondraw.c
 * Description : common drawing operation
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_commondraw_c__
#define __libaroma_commondraw_c__

/*
 * Function    : libaroma_draw_limit
 * Return Value: int
 * Descriptions: get limit position
 */
int libaroma_draw_limit(
    int x, int max) {
  if (x<0) {
    return 0;
  }  
  if (x>=max) {
    return max-1;
  }
  return x;
} /* End of libaroma_draw_limit */

/*
 * Function    : libaroma_draw_limited
 * Return Value: byte
 * Descriptions: is draw position limited/overflow
 */
byte libaroma_draw_limited(
    int x, int max) {
  return ((x < 0) || (x >= max) ? 1 : 0);
} /* End of libaroma_draw_limited */

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
) {
  if (src == NULL) {
    ALOGW("libaroma_draw_ex1 src = NULL");
    return 0;
  }
  if (dst == NULL) {
    dst = libaroma_fb()->canvas;
  }
  if ((dx >= dst->w) || (dy >= dst->h)) {
    ALOGW("libaroma_draw_ex1 dx/dy bigger that destination size");
    return 0;
  }
  if (opacity==0) {
    return 1; /* No Need Any Process */
  }
  
  /* fix positions */
  if (sx < 0) {
    dx += abs(sx);
    sw -= abs(sx);
    sx = 0;
  }
  if (sy < 0) {
    dy += abs(sy);
    sh -= abs(sy);
    sy = 0;
  }
  
  /* fix size */
  if (sw + sx >= src->w) {
    sw -= (sw + sx) - src->w;
  }
  if (sh + sy >= src->h) {
    sh -= (sh + sy) - src->h;
  }
  if ((sw <= 0) || (sh <= 0)) {
    ALOGW("libaroma_draw_ex1 calculated sw/sh < 1");
    return 0;
  }
  
  /* set calculated units */
  int sr_w = sw;
  int sr_h = sh;
  int sr_x = sx;
  int sr_y = sy;
  int ds_x = dx;
  int ds_y = dy;
  
  /* fix destination */
  if (dx < 0) {
    int ndx = abs(dx);
    sr_x += abs(ndx);
    sr_w -= ndx;
    ds_x = 0;
  }
  if (dy < 0) {
    int ndy = abs(dy);
    sr_y += ndy;
    sr_h -= ndy;
    ds_y = 0;
  }
  /* fix source size */
  if (sr_w + dx > dst->w) {
    sr_w -= (sr_w + dx) - dst->w;
  }
  if (sr_h + dy > dst->h) {
    sr_h -= (sr_h + dy) - dst->h;
  }
  
  /* prepare loop data */
  int y;
  int pos_sr_x = sr_x * 2;
  int pos_ds_x = ds_x * 2;
  int pos_sc_w = src->l * 2;
  int pos_dc_w = dst->l * 2;
  int copy_sz  = sr_w * 2;
  byte * src_data   = ((byte *) src->data);
  byte * dst_data   = ((byte *) dst->data);
  if (useAlpha) {
    if (src->alpha == NULL) {
      useAlpha = 0;
    }
  }
  if (filter_callback != NULL) {
    int x;
    bytep alpha_mem;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (y = 0; y < sr_h; y++) {
      wordp dst_mem = (wordp) (dst_data + ((ds_y + y) * pos_dc_w) + pos_ds_x);
      wordp src_mem = (wordp) (src_data + ((sr_y + y) * pos_sc_w) + pos_sr_x);
      if (useAlpha) {
        alpha_mem = src->alpha + (y * src->l) + sr_x;
      }
      for (x = 0; x < sr_w; x++) {
        word scrfilter = filter_callback(src_mem[x], filter_param);
        if (useAlpha) {
          scrfilter = libaroma_alpha(dst_mem[x], scrfilter, alpha_mem[x]);
        }
        if (opacity != 0xff) {
          scrfilter = libaroma_alpha(dst_mem[x], scrfilter, opacity);
        }
        dst_mem[x] = scrfilter;
      }
    }
  }
  else if (opacity == 0xff) {
    if (useAlpha) {
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
      for (y = 0; y < sr_h; y++) {
        wordp dst_mem = (wordp) (dst_data + ((ds_y + y) * pos_dc_w) + pos_ds_x);
        wordp src_mem = (wordp) (src_data + ((sr_y + y) * pos_sc_w) + pos_sr_x);
        libaroma_alpha_px_line(
          y, sr_w, dst_mem, dst_mem,
          src_mem, (bytep) (src->alpha + (y * src->l) + sr_x)
        );
      }
    }
    else {
      /* Copy Data Directly */
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
      for (y = 0; y < sr_h; y++) {
        memcpy(
          dst_data + ((ds_y + y)*pos_dc_w) + pos_ds_x,
          src_data + ((sr_y + y)*pos_sc_w) + pos_sr_x,
          copy_sz
        );
      }
    }
  }
  else {
    if (useAlpha) {
      /* Blend Destination with Source */
      wordp tmp_dst = (wordp) malloc(sr_w * 2);
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
      for (y = 0; y < sr_h; y++) {
        wordp dst_mem = (wordp) (dst_data + ((ds_y + y) * pos_dc_w) + pos_ds_x);
        wordp src_mem = (wordp) (src_data + ((sr_y + y) * pos_sc_w) + pos_sr_x);
        libaroma_alpha_px_line(
          y, sr_w, tmp_dst, dst_mem, src_mem,
          (bytep) (src->alpha + (y * src->l) + sr_x)
        );
        libaroma_alpha_const_line(
          y, sr_w, dst_mem, dst_mem, tmp_dst, opacity
        );
      }
      free(tmp_dst);
    }
    else {
      /* Blend Data Directly */
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
      for (y = 0; y < sr_h; y++) {
        wordp dst_mem = (wordp) (dst_data + ((ds_y + y) * pos_dc_w) + pos_ds_x);
        wordp src_mem = (wordp) (src_data + ((sr_y + y) * pos_sc_w) + pos_sr_x);
        libaroma_alpha_const_line(
          y, sr_w, dst_mem, dst_mem, src_mem, opacity
        );
      }
    }
  }
  return 1;
} /* End of libaroma_draw_ex1 */

/*
 * Function    : libaroma_draw_rect
 * Return Value: byte
 * Descriptions: draw rectangle
 */
byte libaroma_draw_rect(
    LIBAROMA_CANVASP dst,
    int x, int y, int w, int h,
    word color, byte alpha) {
  if (dst == NULL) {
    dst = libaroma_fb()->canvas;
  }
  
  /* fix position */
  int x2 = x + w;
  int y2 = y + h;
  if (x2 > dst->w) {
    x2 = dst->w;
  }
  if (y2 > dst->h) {
    y2 = dst->h;
  }
  if (x < 0) {
    x = 0;
  }
  if (y < 0) {
    y = 0;
  }
  
  /* fixed size */
  w = x2 - x;
  h = y2 - y;
  
  /* draw */
  int dy;
  
  if (alpha == 0xff) {
#ifdef LIBAROMA_CONFIG_OPENMP
    #pragma omp parallel for
#endif
    for (dy = y; dy < y2; dy++) {
      wordp linepos = dst->data + (dy * dst->l) + x;
      libaroma_color_set(linepos, color, w);
    }
  }
  else {
#ifdef LIBAROMA_CONFIG_OPENMP
    #pragma omp parallel for
#endif
    for (dy = y; dy < y2; dy++) {
      wordp linepos = dst->data + (dy * dst->l) + x;
      libaroma_alpha_rgba_fill(w, linepos, linepos, color, alpha);
    }
  }
  return 1;
} /* End of libaroma_draw_rect */



#endif /* __libaroma_commondraw_c__ */
