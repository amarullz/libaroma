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
 * Description : aligned blt engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_alignblt_c__
#define __libaroma_alignblt_c__

void libaroma_blt_align16(wordp dst, wordp src,
    int w, int h, int dst_stride, int src_stride) {
  bytep d = (bytep) dst;
  bytep s = (bytep) src;
  int i;
  int w2 = w * 2;
  int ds = w2 + dst_stride;
  int ss = w2 + src_stride;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    memcpy(d, s, w2);
    d += ds;
    s += ss;
  }
}
void libaroma_blt_align32_to16(wordp dst, dwordp src,
    int w, int h, int dst_stride, int src_stride) {
  bytep d = (bytep) dst;
  bytep s = (bytep) src;
  int i;
  int ds = (w * 2) + dst_stride;
  int ss = (w * 4) + src_stride;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    libaroma_dither_line(i, w, (wordp) d, (dwordp) s);
    d += ds;
    s += ss;
  }
}
void libaroma_blt_align16_to32(dwordp dst, wordp src,
    int w, int h, int dst_stride, int src_stride) {
  bytep d = (bytep) dst;
  bytep s = (bytep) src;
  int i;
  int ds = (w * 4) + dst_stride;
  int ss = (w * 2) + src_stride;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    libaroma_btl32(w, (dwordp) d, (wordp) s);
    d += ds;
    s += ss;
  }
}
void libaroma_blt_align32(dwordp dst, dwordp src,
    int w, int h, int dst_stride, int src_stride) {
  bytep d = (bytep) dst;
  bytep s = (bytep) src;
  int i;
  int w4 = w * 4;
  int ds = w4 + dst_stride;
  int ss = w4 + src_stride;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    memcpy(d, s, w4);
    d += ds;
    s += ss;
  }
}
void libaroma_blt_align_to32_pos(dwordp dst, wordp src,
    int w, int h, int dst_stride, int src_stride,
    bytep rgb_pos) {
  bytep d = (bytep) dst;
  bytep s = (bytep) src;
  int i;
  int ds = w * 4 + dst_stride;
  int ss = w * 2 + src_stride;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    libaroma_color_copy32((dwordp) d, (wordp) s, w, rgb_pos);
    d += ds;
    s += ss;
  }
}
void libaroma_blt_align_to16_pos(wordp dst, dwordp src,
    int w, int h, int dst_stride, int src_stride,
    bytep rgb_pos) {
  bytep d = (bytep) dst;
  bytep s = (bytep) src;
  int i;
  int ds = w * 2 + dst_stride;
  int ss = w * 4 + src_stride;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (i = 0; i < h; i++) {
    libaroma_color_copy16((wordp) d, (dwordp) s, w, rgb_pos);
    d += ds;
    s += ss;
  }
}

#endif /* __libaroma_alignblt_c__ */
