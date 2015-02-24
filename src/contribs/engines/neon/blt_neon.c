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
 * Filename    : blt_neon.c
 * Description : neon simd blit engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_blt_neon_c__
#define __libaroma_blt_neon_c__
#ifdef __ARM_HAVE_NEON

/* NEON SIMD 32bit to 16bit BLT */
void libaroma_btl16(int n, wordp dst, const dwordp src) {
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    uint8_t *p888 = (uint8_t *) src;
    uint8x8x4_t rgba;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (i=0;i<n-left;i+=8) {
      rgba = vld4_u8(p888+i*4);
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
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_rgb_to16(src[i]);
    }
  }
}

/* NEON SIMD 16bit to 32bit BLT */
void libaroma_btl32(int n, dwordp dst, const wordp src) {
  int i,left=n%8;
  /* neon */
  if (n>=8){
    uint8x8_t mask5, mask6, alp, r, g, b;
    mask5 = vmov_n_u8(0xf8); /* 5 mask - red */
    mask6 = vmov_n_u8(0xfc); /* 6 mask - green */
    alp   = vmov_n_u8(0xff); /* Alpha constant */
    uint8_t * p888  = (uint8_t *) dst;
    uint8x8x4_t rgb;
    uint16x8_t pix;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
    for (i=0;i<n-left;i+=8) {
      pix = vld1q_u16(src+i); /* load 8 pixel */
      /* right shift */
      r = vand_u8(vshrn_n_u16(pix, 8),mask5);
      g = vand_u8(vshrn_n_u16(pix, 3),mask6);
      b = vshl_n_u8(vmovn_u16(pix), 3);
      /* Small Byte Left : 11111xxx 111111xx 11111xxx */
      r = vorr_u8(r, vshr_n_u8(r, 5));
      g = vorr_u8(g, vshr_n_u8(g, 6));
      b = vorr_u8(b, vshr_n_u8(b, 5));
      /* dump */
      rgb.val[3] = alp;
      rgb.val[2] = r;
      rgb.val[1] = g;
      rgb.val[0] = b;
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

/* set available engine */
#define __engine_have_libaroma_btl16 1
#define __engine_have_libaroma_btl32 1

#endif /* __ARM_HAVE_NEON */
#endif /* __libaroma_blt_neon_c__ */
