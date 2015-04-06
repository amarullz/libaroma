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
 * Filename    : alignblt.c
 * Description : align blit
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_alignblt_c__
#define __libaroma_alignblt_c__
#include <aroma_internal.h>

void libaroma_blt_align16(wordp __restrict dst, wordp __restrict src,
    int w, int h, int dst_stride, int src_stride) {
  int i;
  int w2 = w<<1;
  int ds = w2 + dst_stride;
  int ss = w2 + src_stride;
  bytep d = (bytep) dst;
  bytep s = (bytep) src;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    memcpy(
      d+ds*i, s+ss*i, w2
    );
  }
}
void libaroma_blt_align32_to16(wordp __restrict dst, dwordp __restrict src,
    int w, int h, int dst_stride, int src_stride) {
  int i;
  int dline = w+(dst_stride>>1);
  int sline = w+(src_stride>>2);
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    libaroma_dither_line(
      i, w, dst+dline*i, src+sline*i
    );
  }
}
void libaroma_blt_align16_to32(dwordp __restrict dst, wordp __restrict src,
    int w, int h, int dst_stride, int src_stride) {
  int i;
  int dline = w+(dst_stride>>2);
  int sline = w+(src_stride>>1);
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    libaroma_btl32(
      w,dst+dline*i,src+sline*i
    );
  }
}
void libaroma_blt_align32(dwordp __restrict dst, dwordp __restrict src,
    int w, int h, int dst_stride, int src_stride) {
  int i;
  int w4 = w<<2;
  int ds = w4 + dst_stride;
  int ss = w4 + src_stride;
  bytep d = (bytep) dst;
  bytep s = (bytep) src;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    memcpy(
      d+ds*i, s+ss*i, w4
    );
  }
}
void libaroma_blt_align_to32_pos(dwordp __restrict dst, wordp __restrict src,
    int w, int h, int dst_stride, int src_stride,
    bytep rgb_pos) {
  int i;
  int dline = w+(dst_stride>>2);
  int sline = w+(src_stride>>1);
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    libaroma_color_copy32(
      dst+dline*i, src+sline*i, w, rgb_pos
    );
  }
}
void libaroma_blt_align_to16_pos(wordp __restrict dst, dwordp __restrict src,
    int w, int h, int dst_stride, int src_stride,
    bytep __restrict rgb_pos) {
  int i;
  int dline = w+(dst_stride>>1);
  int sline = w+(src_stride>>2);
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    libaroma_color_copy16(
      dst+dline*i, src+sline*i, w, rgb_pos
    );
  }
}


#endif /* __libaroma_alignblt_c__ */

