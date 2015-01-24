/*
 * Copyright (C) 2011-2013 Ahmad Amarullah ( http://amarullz.com/ )
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
 */

/*
 * AROMA CORE - Framebuffer BitBlt Engine Module (NEON)
 *    - WITH NEON SIMD
 *    - 32bit depth to 16bit depth
 *    - 16bit depth to 32bit depth
 *
 */

/* NEON SIMD 32bit to 16bit BLT */
void aBlt16(int n, wordp dst, const dwordp src) {
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dst[i] = aRGBto16(src[i]);
    }
    
    return;
  }
  
  /* Change Types */
  uint16_t * p565 = (uint16_t *) dst;
  uint8_t  * p888 = (uint8_t *)  src;
  int nn = n / 8, left = n % 8;
  
  for (i = 0; i < nn; i++) {
    uint8x8x4_t rgba = vld4_u8(p888 + (32 * i));
    uint16x8_t r = vshlq_n_u16(vmovl_u8(
                                 vshr_n_u8(rgba.val[2], 3)), 11);
    uint16x8_t g = vshlq_n_u16(vmovl_u8(
                                 vshr_n_u8(rgba.val[1], 2)), 5);
    uint16x8_t b = vshlq_n_u16(vmovl_u8(
                                 vshr_n_u8(rgba.val[0], 3)), 0);
    uint16x8_t o = vorrq_u16(r, g);
    o = vorrq_u16(o, b);
    vst1q_u16(p565 + (8 * i), o);
    
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      p565  = ((uint16_t *) dst) - (8 - left);
      p888  = ((uint8_t *)  src) - ((8 - left) * 4);
      nn++;
      left = 0;
    }
  }
}

/* NEON SIMD 16bit to 32bit BLT */
void aBlt32(int n, dwordp dst, const wordp src) {
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dst[i] = aRGBto32(src[i]);
    }
    
    return;
  }
  
  uint8x8_t mask5, mask6, alp;
  mask5 = vmov_n_u8(0xf8); /* 5 mask - red */
  mask6 = vmov_n_u8(0xfc); /* 6 mask - green */
  alp   = vmov_n_u8(0xff); /* Alpha constant */
  /* Change Types */
  uint16_t * p565 = (uint16_t *) src;
  uint8_t * p888  = (uint8_t *) dst;
  int nn = n / 8, left = n % 8;
  
  for (i = 0; i < nn; i++) { /* Loop per 8 pixels */
    uint8x8_t red, grn, blu;
    uint16x8_t pix;
    uint8x8x4_t rgb;
    pix = vld1q_u16(p565 + 8 * i); /* load 8 pixel */
    /* right shift */
    red = vshrn_n_u16(pix, 8);
    grn = vshrn_n_u16(pix, 3);
    blu = vmovn_u16(pix);
    /* and mask */
    red = vand_u8(red, mask5);
    grn = vand_u8(grn, mask6);
    blu = vshl_n_u8(blu, 3);
    /* Small Byte Left : 11111xxx 111111xx 11111xxx */
#ifdef AROMA_CORE_COLOR_FILL_LOWER_BITS
    red = vorr_u8(red, vshr_n_u8(red, 5));
    grn = vorr_u8(grn, vshr_n_u8(grn, 6));
    blu = vorr_u8(blu, vshr_n_u8(blu, 5));
#endif
    /* dump */
    rgb.val[3] = alp;
    rgb.val[2] = red;
    rgb.val[1] = grn;
    rgb.val[0] = blu;
    vst4_u8(p888 + 32 * i, rgb);
    
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      p565  = ((uint16_t *) src) - (8 - left);
      p888  = ((uint8_t *)  dst) - ((8 - left) * 4);
      nn++;
      left = 0;
    }
  }
}
