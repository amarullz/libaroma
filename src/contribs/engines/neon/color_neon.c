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
 * Filename    : color_neon.c
 * Description : neon simd color engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_color_neon_c__
#define __libaroma_color_neon_c__
#ifdef __ARM_HAVE_NEON

/* Set Color Buffer */
void libaroma_color_set(wordp dst, word color, int n) {
  int i;
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dst[i] = color;
    }
    return;
  }
  /* Change Types */
  uint16_t * u_dst = (uint16_t *) dst;
  uint16x8_t t_clr = vdupq_n_u16(color);
  /* Loop Variables */
  int nn = n / 8, left = n % 8;
  for (i = 0; i < nn; i++) {
    /* Copy Data */
    vst1q_u16(u_dst + (8 * i), t_clr);
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      u_dst = ((uint16_t *) dst) - (8 - left);
      nn++;
      left = 0;
    }
  }
}

/* Set Color Buffer */
void libaroma_color_copy32(dwordp dst, wordp src, int n, bytep rgb_pos) {
  int i;
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      word cl = src[i];
      dst[i] = (
                 (libaroma_color_hi_r(libaroma_color_r(cl)) << rgb_pos[0]) |
                 (libaroma_color_hi_g(libaroma_color_g(cl)) << rgb_pos[1]) |
                 (libaroma_color_hi_b(libaroma_color_b(cl)) << rgb_pos[2])
               );
    }
    return;
  }
  uint16x8_t msk_r = vdupq_n_u16(0xF800); /* Red Mask */
  uint16x8_t msk_g = vdupq_n_u16(0x07E0); /* Green Mask */
  uint16x8_t msk_b = vdupq_n_u16(0x001F); /* Blue Mask */
  /* Loop Variables */
  int nn = n / 8, left = n % 8;
  for (i = 0; i < nn; i++) {
    /* Load Source Color */
    uint16x8_t  psrc = vld1q_u16(src + 8 * i);
    /* Get Subpixels of Source Color */
    uint8x8_t r = vshrn_n_u16(vandq_u16(psrc, msk_r), 8);
    uint8x8_t g = vshrn_n_u16(vandq_u16(psrc, msk_g), 3);
    uint8x8_t b = vmovn_u16(vshlq_n_u16(vandq_u16(psrc, msk_b), 3));
    
    /* Small Byte Left : 11111xxx 111111xx 11111xxx */
    r = vorr_u8(r, vshr_n_u8(r, 5));
    g = vorr_u8(g, vshr_n_u8(g, 6));
    b = vorr_u8(b, vshr_n_u8(b, 5));
    
    /* Copy to 32bit */
    uint8x8x4_t n_dst;
    n_dst.val[rgb_pos[3]] = r;
    n_dst.val[rgb_pos[4]] = g;
    n_dst.val[rgb_pos[5]] = b;
    /* Dump it */
    vst4_u8(((uint8_t *)dst) + 32 * i, n_dst);
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      for (i = n - left; i < n; i++) {
        word cl = src[i];
        dst[i] = (
                   (libaroma_color_hi_r(libaroma_color_r(cl)) << rgb_pos[0]) |
                   (libaroma_color_hi_g(libaroma_color_g(cl)) << rgb_pos[1]) |
                   (libaroma_color_hi_b(libaroma_color_b(cl)) << rgb_pos[2])
                 );
      }
      return;
    }
  }
}

/* Set Color Buffer */
void libaroma_color_copy16(wordp dst, dwordp src, int n, bytep rgb_pos) {
  int i;
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dword cl = src[i];
      dst[i] = libaroma_rgb(
                 (byte) ((cl >> rgb_pos[0]) & 0xff),
                 (byte) ((cl >> rgb_pos[1]) & 0xff),
                 (byte) ((cl >> rgb_pos[2]) & 0xff)
               );
    }
    
    return;
  }
  /* Loop Variables */
  int nn = n / 8, left = n % 8;
  for (i = 0; i < nn; i++) {
    /* Move Layers Data */
    uint8x8x4_t psrc = vld4_u8(((uint8_t *)src) + (32 * i));
    uint16x8_t r = vshlq_n_u16(vmovl_u8(vshr_n_u8(psrc.val[rgb_pos[3]], 3)), 11);
    uint16x8_t g = vshlq_n_u16(vmovl_u8(vshr_n_u8(psrc.val[rgb_pos[4]], 2)), 5);
    uint16x8_t b = vmovl_u8(vshr_n_u8(psrc.val[rgb_pos[5]], 3));
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + 8 * i, o);
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      for (i = n - left; i < n; i++) {
        dword cl = src[i];
        dst[i] = libaroma_rgb(
                   (byte) ((cl >> rgb_pos[0]) & 0xff),
                   (byte) ((cl >> rgb_pos[1]) & 0xff),
                   (byte) ((cl >> rgb_pos[2]) & 0xff)
                 );
      }
      
      return;
    }
  }
}

/* set available engine */
#define __engine_have_libaroma_color_set 1
#define __engine_have_libaroma_color_copy32 1
#define __engine_have_libaroma_color_copy16 1

/* TODO: __engine_have_libaroma_color_set32 */

#endif /* __ARM_HAVE_NEON */
#endif /* __libaroma_color_neon_c__ */
