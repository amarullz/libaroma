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
 * AROMA CORE - Framebuffer Dithering Engine Module (NEON)
 *    - For 16bit only
 *
 */

/* Get Dither Table */
void aNeon_DitherTable(int y, uint8x8_t * table_r, uint8x8_t * table_g, uint8x8_t * table_b) {
  byte table_p = ((y & 7) << 3);
  /* Gather Dither Table */
  *table_r = vld1_u8((uint8_t *)
                     (aDither_tresshold_r + table_p));
  *table_g = vld1_u8((uint8_t *)
                     (aDither_tresshold_g + table_p));
  *table_b = vld1_u8((uint8_t *)
                     (aDither_tresshold_b + table_p));
}

/* NEON SIMD Line Dither */
void aDitherLine(int y, int w, wordp dst, const dwordp src) {
  int i;
  
  /* leftover */
  if (w < 8) {
    for (i = 0; i < w; i++) {
      dst[i] = aDither(i, y, src[i]);
    }
    
    return;
  }
  
  /* Gather Dither Table */
  uint8x8_t table_r, table_g, table_b;
  aNeon_DitherTable(y, &table_r, &table_g, &table_b);
  uint16x8_t max_255 = vmovq_n_u16(255);
  /* Change Types */
  int nn = w / 8, left = w % 8;
  
  for (i = 0; i < nn; i++) {
    /* Get Source */
    uint8x8x4_t rgba = vld4_u8(((uint8_t *)src) + (32 * i));
    /* Get Channels */
    uint16x8_t r = vminq_u16(vaddl_u8(
                               rgba.val[2], table_r), max_255); /* red */
    uint16x8_t g = vminq_u16(vaddl_u8(
                               rgba.val[1], table_g), max_255); /* green */
    uint16x8_t b = vminq_u16(vaddl_u8(
                               rgba.val[0], table_b), max_255); /* blue */
    r = vqshlq_n_u16(vshrq_n_u16(r, 3), 11);
    g = vqshlq_n_u16(vshrq_n_u16(g, 2), 5);
    b = vshrq_n_u16(b, 3);
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + 8 * i, o);
  }
  
  /* leftover */
  if (left > 0) {
    word * ldst = dst + w - left;
    const dword * lsrc = src + w - left;
    
    for (i = 0; i < left; i++) {
      ldst[i] = aDither(i, y, lsrc[i]);
    }
  }
}

/* NEON SIMD Constant Line Dither */
void aDitherLineConst(int y, int w, wordp dst, const dword src) {
  int i;
  
  /* leftover */
  if (w < 8) {
    for (i = 0; i < w; i++) {
      dst[i] = aDither(i, y, src);
    }
    
    return;
  }
  
  /* Gather Dither Table */
  uint8x8_t table_r, table_g, table_b;
  aNeon_DitherTable(y, &table_r, &table_g, &table_b);
  uint16x8_t max_255 = vmovq_n_u16(255);
  /* Get Source Color Channels */
  uint8x8_t src_r   = vmov_n_u8(aR32(src));
  uint8x8_t src_g   = vmov_n_u8(aG32(src));
  uint8x8_t src_b   = vmov_n_u8(aB32(src));
  /* Change Types */
  int nn = w / 8, left = w % 8;
  
  for (i = 0; i < nn; i++) {
    /* Get Channels */
    uint16x8_t r = vminq_u16(vaddl_u8(
                               src_r, table_r), max_255); /* red */
    uint16x8_t g = vminq_u16(vaddl_u8(
                               src_g, table_g), max_255); /* green */
    uint16x8_t b = vminq_u16(vaddl_u8(
                               src_b, table_b), max_255); /* blue */
    r = vqshlq_n_u16(vshrq_n_u16(r, 3), 11);
    g = vqshlq_n_u16(vshrq_n_u16(g, 2), 5);
    b = vshrq_n_u16(b, 3);
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + 8 * i, o);
  }
  
  /* leftover */
  if (left > 0) {
    word * ldst = dst + w - left;
    
    for (i = 0; i < left; i++) {
      ldst[i] = aDither(i, y, src);
    }
  }
}
