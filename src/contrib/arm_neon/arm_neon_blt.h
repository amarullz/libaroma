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
 * Filename    : arm_neon_blt.h
 * Description : vector blitting
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 08/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_arm_neon_blt_h__
#define __libaroma_arm_neon_blt_h__

/*
 * blitting 32bit to 16bit
 */
static inline void libaroma_btl16(
  int n,
  wordp __restrict dst,
  const dwordp __restrict src
){
  int i,left=n%8;
  
  if (n>=8){
    uint8_t *p888 = (uint8_t *) src;
    for (i=0;i<n-left;i+=8){
      uint8x8x4_t rgba = vld4_u8(p888+i*4);
      vst1q_u16(dst+i, vorrq_u16(
        vorrq_u16(
          vshlq_n_u16(vmovl_u8(vshr_n_u8(rgba.val[2],3)),11),
          vshlq_n_u16(vmovl_u8(vshr_n_u8(rgba.val[1],2)),5)
        ),
        vmovl_u8(vshr_n_u8(rgba.val[0], 3))
      ));
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++){
      dst[i] = libaroma_rgb_to16(src[i]);
    }
  }
}

/* NEON SIMD 16bit to 32bit BLT */
/*
 * blitting 16bit to 32bit
 */
static inline void libaroma_btl32(
  int n,
  dwordp dst,
  const wordp src
) {
  int i,left=n%8;
  if (n>=8){
    uint8x8_t mask5 = vmov_n_u8(0xf8);
    uint8x8_t mask6 = vmov_n_u8(0xfc);
    uint8x8_t alp   = vmov_n_u8(0xff);
    uint8_t * p888  = (uint8_t *) dst;
    for (i=0;i<n-left;i+=8) {
      uint16x8_t pix = vld1q_u16(src+i); /* load 8 pixel */
      uint8x8x4_t rgb;
#ifdef LIBAROMA_CONFIG_USE_HICOLOR_BIT
      /* right shift */
      uint8x8_t r = vand_u8(vshrn_n_u16(pix, 8),mask5);
      uint8x8_t g = vand_u8(vshrn_n_u16(pix, 3),mask6);
      uint8x8_t b = vshl_n_u8(vmovn_u16(pix), 3);
      rgb.val[3] = alp;
      rgb.val[2] = vorr_u8(r, vshr_n_u8(r, 5));
      rgb.val[1] = vorr_u8(g, vshr_n_u8(g, 6));
      rgb.val[0] = vorr_u8(b, vshr_n_u8(b, 5));
#else
      rgb.val[3] = alp;
      rgb.val[2] = vand_u8(vshrn_n_u16(pix, 8),mask5);
      rgb.val[1] = vand_u8(vshrn_n_u16(pix, 3),mask6);
      rgb.val[0] = vshl_n_u8(vmovn_u16(pix), 3);
#endif
      vst4_u8(p888+4*i, rgb);
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_rgb_to32(src[i]);
    }
  }
}

#endif /* __libaroma_arm_neon_blt_h__ */

