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
 * Filename    : engine_internal.h
 * Description : internal engine headers
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 08/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_engine_internal_h__
#define __libaroma_engine_internal_h__

/*
 * blitting
 */
#ifndef __engine_have_libaroma_btl16
  void libaroma_btl16(int n, wordp dst, const dwordp src);
#endif
#ifndef __engine_have_libaroma_btl32
  void libaroma_btl32(int n, dwordp dst, const wordp src);
#endif

/*
 * vector color functions
 */
#ifndef __engine_have_libaroma_color_set
  void libaroma_color_set(wordp __restrict dst, word color, int n);
#endif
#ifndef __engine_have_libaroma_color_set32
  void libaroma_color_set32(dwordp dst, dword color, int n);
#endif
#ifndef __engine_have_libaroma_color_copy32
  void libaroma_color_copy32(
    dwordp __restrict dst, wordp __restrict src,
    int n, bytep __restrict rgb_pos);
#endif
#ifndef __engine_have_libaroma_color_copy16
  void libaroma_color_copy16(
    wordp dst, dwordp src, int n, bytep rgb_pos);
#endif
#ifndef __engine_have_libaroma_color_copy_rgb24
  void libaroma_color_copy_rgb24(
    bytep __restrict dst, wordp __restrict src, int n);
#endif
#ifndef __engine_have_libaroma_color_copy_bgr24
  void libaroma_color_copy_bgr24(
    bytep __restrict dst, wordp __restrict src, int n);
#endif

#ifndef __engine_have_libaroma_color_24to16
  void libaroma_color_24to16(wordp dst, bytep src, int n);
#endif

/*
 * vector dithering
 */
#ifndef __engine_have_libaroma_dither_line
  void libaroma_dither_line(int y, int w, wordp dst, const dwordp src);
#endif
#ifndef __engine_have_libaroma_dither_line_const
  void libaroma_dither_line_const(int y, int w, wordp dst, dword src);
#endif
#ifndef __engine_have_libaroma_dither_24to16
  void libaroma_dither_24to16(int y, int n, wordp dst, bytep src);
#endif

/*
 * vector alpha blend
 */
#ifndef __engine_have_libaroma_alpha_black
  void libaroma_alpha_black(int n, wordp __restrict dst, 
      wordp __restrict top, byte alpha);
#endif
#ifndef __engine_have_libaroma_alpha_const
  void libaroma_alpha_const(int n, wordp __restrict dst,
      wordp __restrict bottom, wordp __restrict top, byte alpha);
#endif
#ifndef __engine_have_libaroma_alpha_const_line
  void libaroma_alpha_const_line(int _Y, int n, wordp __restrict dst,
      wordp __restrict bottom, wordp __restrict top, byte alpha);
#endif
#ifndef __engine_have_libaroma_alpha_px
  void libaroma_alpha_px(int n, wordp __restrict dst, wordp __restrict bottom,
      wordp __restrict top, bytep __restrict alpha);
#endif
#ifndef __engine_have_libaroma_alpha_px_line
  void libaroma_alpha_px_line(int _Y, int n, wordp __restrict dst,
      wordp __restrict bottom, wordp __restrict top, bytep __restrict alpha);
#endif
#ifndef __engine_have_libaroma_alpha_rgba_fill
  void libaroma_alpha_rgba_fill(int n, wordp __restrict dst,
      wordp __restrict bottom,
      word top, byte alpha);
#endif
#ifndef __engine_have_libaroma_alpha_rgba_fill_line
  void libaroma_alpha_rgba_fill_line(int _Y, int n, wordp __restrict dst,
      wordp __restrict bottom,
      word top, byte alpha);
#endif
#ifndef __engine_have_libaroma_alpha_mono
  void libaroma_alpha_mono(int n, wordp __restrict dst, wordp __restrict bottom,
      word top, bytep __restrict alpha);
#endif
#ifndef __engine_have_libaroma_alpha_multi_line
  void libaroma_alpha_multi_line(int n, wordp __restrict dst, 
      wordp __restrict bottom,
      word top, bytep __restrict alphargb);
#endif

/*
 * vector blitting
 */
#ifndef __engine_have_libaroma_blt_align16
  void libaroma_blt_align16(wordp __restrict dst, wordp __restrict src,
      int w, int h, int dst_stride, int src_stride);
#endif
#ifndef __engine_have_libaroma_blt_align32_to16
  void libaroma_blt_align32_to16(wordp __restrict dst, dwordp __restrict src,
      int w, int h, int dst_stride, int src_stride);
#endif
#ifndef __engine_have_libaroma_blt_align16_to32
  void libaroma_blt_align16_to32(dwordp __restrict dst, wordp __restrict src,
      int w, int h, int dst_stride, int src_stride);
#endif
#ifndef __engine_have_libaroma_blt_align32
  void libaroma_blt_align32(dwordp __restrict dst, dwordp __restrict src,
      int w, int h, int dst_stride, int src_stride);
#endif
#ifndef __engine_have_libaroma_blt_align_to32_pos
  void libaroma_blt_align_to32_pos(dwordp __restrict dst, wordp __restrict src,
      int w, int h, int dst_stride, int src_stride,
      bytep rgb_pos);
#endif
#ifndef __engine_have_libaroma_blt_align_to16_pos
  void libaroma_blt_align_to16_pos(wordp __restrict dst, dwordp __restrict src,
      int w, int h, int dst_stride, int src_stride,
      bytep __restrict rgb_pos);
#endif

#endif /* __libaroma_engine_internal_h__ */

