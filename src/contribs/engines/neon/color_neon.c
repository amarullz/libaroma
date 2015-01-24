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
 * AROMA CORE - Framebuffer Color Bitwise Engine Module NEON
 *    - WITH NEON SIMD
 *    - Set Color Buffer
 *
 */

/* Set Color Buffer */
void aMemsetColor(wordp dst, word color, int n) {
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
void aMemcpyTo32(dwordp dst, wordp src, int n, bytep rgb_pos) {
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      word cl = src[i];
      dst[i] = (
                 (aR(cl) << rgb_pos[0]) |
                 (aG(cl) << rgb_pos[1]) |
                 (aB(cl) << rgb_pos[2])
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
#ifdef AROMA_CORE_COLOR_FILL_LOWER_BITS
    r = vorr_u8(r, vshr_n_u8(r, 5));
    g = vorr_u8(g, vshr_n_u8(g, 6));
    b = vorr_u8(b, vshr_n_u8(b, 5));
#endif
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
                   (aR(cl) << rgb_pos[0]) |
                   (aG(cl) << rgb_pos[1]) |
                   (aB(cl) << rgb_pos[2])
                 );
      }
      
      return;
    }
  }
}

/* Set Color Buffer */
void aMemcpyTo16(wordp dst, dwordp src, int n, bytep rgb_pos) {
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dword cl = src[i];
      dst[i] = aRGB(
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
        dst[i] = aRGB(
                   (byte) ((cl >> rgb_pos[0]) & 0xff),
                   (byte) ((cl >> rgb_pos[1]) & 0xff),
                   (byte) ((cl >> rgb_pos[2]) & 0xff)
                 );
      }
      
      return;
    }
  }
}
