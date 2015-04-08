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
 * Filename    : arm_neon_dither.h
 * Description : vector dithering
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 08/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_arm_neon_dither_h__
#define __libaroma_arm_neon_dither_h__

/*
 * dithered table 16x8_t
 */
static inline void _libaroma_neon_dither_table16x8(
  int y,
  uint16x8_t * __restrict r,
  uint16x8_t * __restrict g,
  uint16x8_t * __restrict b
){
  byte table_p = ((y & 7) << 3);
  *r = vmovl_u8(vld1_u8(libaroma_dither_table_r()+table_p));
  *g = vmovl_u8(vld1_u8(libaroma_dither_table_g()+table_p));
  *b = vmovl_u8(vld1_u8(libaroma_dither_table_b()+table_p));
}

/*
 * dithered table 8x8_t
 */
static inline void _libaroma_neon_dither_table(
  int y,
  uint8x8_t * __restrict r,
  uint8x8_t * __restrict g,
  uint8x8_t * __restrict b
){
  byte table_p = ((y & 7) << 3);
  *r = vld1_u8(libaroma_dither_table_r() + table_p);
  *g = vld1_u8(libaroma_dither_table_g() + table_p);
  *b = vld1_u8(libaroma_dither_table_b() + table_p);
}

/*
 * dithered line
 */
static inline void libaroma_dither_line(
  int y,
  int w,
  wordp __restrict dst,
  const dwordp __restrict src
){
  int i,left=w%8;
  
  if (w>=8){
    uint8x8_t table_r, table_g, table_b;
    _libaroma_neon_dither_table(y,&table_r,&table_g,&table_b);
    uint16x8_t ff = vmovq_n_u16(255);
    uint8_t * nsrc = (uint8_t *) src;
    for (i=0;i<w-left;i+=8){
      uint8x8x4_t rgba = vld4_u8(nsrc + i*4);
      uint16x8_t r = vminq_u16(vaddl_u8(rgba.val[2], table_r),ff);
      uint16x8_t g = vminq_u16(vaddl_u8(rgba.val[1], table_g),ff);
      uint16x8_t b = vminq_u16(vaddl_u8(rgba.val[0], table_b),ff);
      r = vqshlq_n_u16(vshrq_n_u16(r,3),11);
      g = vqshlq_n_u16(vshrq_n_u16(g,2),5);
      b = vshrq_n_u16(b, 3);
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(r,g),b));
    }
  }
  /* leftover */
  if (left>0){
    for (i=w-left;i<w;i++){
      dst[i] = libaroma_dither(i, y, src[i]);
    }
  }
}

/*
 * dithered constant line
 */
static inline void libaroma_dither_line_const(
  int y,
  int w,
  wordp __restrict dst,
  const dword src
){
  int i,left=w%8;
  
  if (w>=8){
    uint8x8_t table_r, table_g, table_b;
    _libaroma_neon_dither_table(y,&table_r,&table_g,&table_b);
    uint16x8_t ff = vmovq_n_u16(255);
    uint8x8_t src_r = vmov_n_u8(libaroma_color_r32(src));
    uint8x8_t src_g = vmov_n_u8(libaroma_color_g32(src));
    uint8x8_t src_b = vmov_n_u8(libaroma_color_b32(src));
    for (i=0;i<w-left;i+=8){
      uint16x8_t r = vminq_u16(vaddl_u8(src_r, table_r),ff);
      uint16x8_t g = vminq_u16(vaddl_u8(src_g, table_g),ff);
      uint16x8_t b = vminq_u16(vaddl_u8(src_b, table_b),ff);
      r = vqshlq_n_u16(vshrq_n_u16(r,3),11);
      g = vqshlq_n_u16(vshrq_n_u16(g,2),5);
      b = vshrq_n_u16(b, 3);
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(r,g),b));
    }
  }
  /* leftover */
  if (left>0){
    for (i=w-left;i<w;i++){
      dst[i] = libaroma_dither(i,y,src);
    }
  }
}

#endif /* __libaroma_arm_neon_dither_h__ */

