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
 * Filename    : arm_neon_color.h
 * Description : vector color engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 08/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_arm_neon_color_h__
#define __libaroma_arm_neon_color_h__

/*
 * memset color 16bit
 */
#ifndef libaroma_memset16
static inline void libaroma_color_set(
  wordp __restrict dst,
  word color,
  int n
){  
  int i,left=n%32;
  if (n>=32){
    uint16x8x4_t t_clr;
    t_clr.val[0]=t_clr.val[1]=t_clr.val[2]=t_clr.val[3]=vdupq_n_u16(color);
    for (i=0;i<n-left;i+=32) {
      vst4q_u16(dst+i, t_clr);
    }
  }
  if (left>0){
    for (i=n-left;i<n;i++) {
      dst[i]=color;
    }
  }
}
#endif

/*
 * 16 to 32bit
 */
static inline void libaroma_color_copy32(
  dwordp __restrict dst,
  wordp __restrict src, 
  int n,
  bytep __restrict rgb_pos
) {
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    uint16x8_t msk_r = vdupq_n_u16(0xF800);
    uint16x8_t msk_g = vdupq_n_u16(0x07E0);
    uint16x8_t msk_b = vdupq_n_u16(0x001F);
    for (i=0;i<n-left;i+=8) {
      /* load source color */
      uint16x8_t psrc = vld1q_u16(src+i);
      uint8x8x4_t n_dst;
#ifdef LIBAROMA_CONFIG_USE_HICOLOR_BIT
      uint8x8_t r = vshrn_n_u16(vandq_u16(psrc,msk_r),8);
      uint8x8_t g = vshrn_n_u16(vandq_u16(psrc,msk_g),3);
      uint8x8_t b = vmovn_u16(vshlq_n_u16(vandq_u16(psrc,msk_b),3));
      n_dst.val[rgb_pos[3]] = vorr_u8(r,vshr_n_u8(r,5));
      n_dst.val[rgb_pos[4]] = vorr_u8(g,vshr_n_u8(g,6));
      n_dst.val[rgb_pos[5]] = vorr_u8(b,vshr_n_u8(b,5));
#else
      n_dst.val[rgb_pos[3]] = vshrn_n_u16(vandq_u16(psrc,msk_r),8);
      n_dst.val[rgb_pos[4]] = vshrn_n_u16(vandq_u16(psrc,msk_g),3);
      n_dst.val[rgb_pos[5]] = vmovn_u16(vshlq_n_u16(vandq_u16(psrc,msk_b),3));
#endif
      /* dump it */
      vst4_u8((uint8_t *) (dst+i), n_dst);
    }
  }
  
  /* leftover */
  if (left>0){
    word cl;
    for (i=n-left;i<n;i++) {
      cl = src[i];
#ifdef LIBAROMA_CONFIG_USE_HICOLOR_BIT
      dst[i] = (
        (libaroma_color_hi_r(libaroma_color_r(cl)) << rgb_pos[0]) |
        (libaroma_color_hi_g(libaroma_color_g(cl)) << rgb_pos[1]) |
        (libaroma_color_hi_b(libaroma_color_b(cl)) << rgb_pos[2])
      );
#else
      dst[i] = (
        (libaroma_color_r(cl) << rgb_pos[0]) |
        (libaroma_color_g(cl) << rgb_pos[1]) |
        (libaroma_color_b(cl) << rgb_pos[2])
      );
#endif
    }
  }
}

/*
 * 32 to 16bit
 */
static inline void libaroma_color_copy16(
  wordp __restrict dst,
  dwordp __restrict src,
  int n,
  bytep __restrict rgb_pos
){
  int i,left=n%8;
  if (n>=8) {
    for (i=0;i<n-left;i+=8) {
      uint8x8x4_t psrc = vld4_u8((uint8_t *) (src+i));
      vst1q_u16(
        dst+i, 
        vorrq_u16(
          vorrq_u16(
            vshlq_n_u16(vmovl_u8(vshr_n_u8(psrc.val[rgb_pos[3]], 3)), 11),
            vshlq_n_u16(vmovl_u8(vshr_n_u8(psrc.val[rgb_pos[4]], 2)), 5)
          ),
          vmovl_u8(vshr_n_u8(psrc.val[rgb_pos[5]], 3))
        )
      );
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++) {
      dword cl = src[i];
      dst[i] = libaroma_rgb(
        (byte) ((cl>>rgb_pos[0])&0xff),
        (byte) ((cl>>rgb_pos[1])&0xff),
        (byte) ((cl>>rgb_pos[2])&0xff)
      );
    }
  }
}

/*
 * 16 to rgb888 (24bit)
 */
static inline void libaroma_color_copy_rgb24(
  bytep __restrict dst,
  wordp __restrict src,
  int n
){
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    uint16x8_t maskr = vdupq_n_u16(0xF800);
    uint16x8_t maskg = vdupq_n_u16(0x07E0);
    uint16x8_t maskb = vdupq_n_u16(0x001F);
    for (i=0;i<n-left;i+=8){
      uint16x8_t psrc = vld1q_u16(src+i);
      volatile uint8x8x3_t pdst;
      pdst.val[0] = vshrn_n_u16(vandq_u16(psrc,maskr),8);
      pdst.val[1] = vshrn_n_u16(vandq_u16(psrc,maskg),3);
      pdst.val[2] = vmovn_u16(vshlq_n_u16(vandq_u16(psrc,maskb),3));
      /* dump it */
      vst3_u8(dst+i*3, pdst);
    }
  }
  /* leftover */
  if (left>0){
    int j = (n-left) * 3;
    for (i=n-left;i<n;i++) {
      word cl = src[i];
      dst[j++] = libaroma_color_r(cl);
      dst[j++] = libaroma_color_g(cl);
      dst[j++] = libaroma_color_b(cl);
    }
  }
}

/*
 * 16 to bgr888 (24bit)
 */
static inline void libaroma_color_copy_bgr24(
  bytep __restrict dst,
  wordp __restrict src,
  int n
){
  int i,left=n%8;
  /* neon */
  if (n>=8){
    uint16x8_t maskr = vdupq_n_u16(0xF800);
    uint16x8_t maskg = vdupq_n_u16(0x07E0);
    uint16x8_t maskb = vdupq_n_u16(0x001F);
    for (i=0;i<n-left;i+=8){
      uint16x8_t psrc = vld1q_u16(src+i);
      uint8x8x3_t pdst;
      pdst.val[2] = vshrn_n_u16(vandq_u16(psrc,maskr),8);
      pdst.val[1] = vshrn_n_u16(vandq_u16(psrc,maskg),3);
      pdst.val[0] = vmovn_u16(vshlq_n_u16(vandq_u16(psrc,maskb),3));
      /* dump it */
      vst3_u8(dst+i*3, pdst);
    }
  }
  /* leftover */
  if (left>0){
    int j = (n-left) * 3;
    for (i=n-left;i<n;i++) {
      word cl = src[i];
      dst[j++] = libaroma_color_b(cl);
      dst[j++] = libaroma_color_g(cl);
      dst[j++] = libaroma_color_r(cl);
    }
  }
}

#endif /* __libaroma_arm_neon_color_h__ */

