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
 * Filename    : arm_neon_alpha.h
 * Description : vector alphablend
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 08/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_arm_neon_alpha_h__
#define __libaroma_arm_neon_alpha_h__

/*
 * dithered alpha blending
 */
static inline void libaroma_alpha_px_line(
  int _Y,
  int n,
  wordp __restrict dst,
  wordp __restrict bottom,
  wordp __restrict top, 
  bytep __restrict alpha
){
  int i,left=n%8;
  
  if (n>=8){
    /* vectorized constant */
    uint16x8_t c_xalph = vdupq_n_u16(0xff);
    uint16x8_t c_zalph = vdupq_n_u16(0);
    uint16x8_t c_falph = vdupq_n_u16(0x100);
    uint16x8_t c_msk_r = vdupq_n_u16(0xf800);
    uint16x8_t c_msk_g = vdupq_n_u16(0x07e0);
    uint16x8_t c_msk_b = vdupq_n_u16(0x001f);
    
    /* dithering data */
    uint16x8_t table_r16,table_g16,table_b16;
    _libaroma_neon_dither_table16x8(
      _Y, &table_r16, &table_g16, &table_b16
    );
    
    for (i=0;i<n-left;i+=8){
      uint16x8_t op = vmovl_u8(vld1_u8(alpha+i));
      uint16x8_t ro = vsubq_u16(c_falph, op);
      
      uint16x8_t pxb = vld1q_u16(bottom+i); /* bottom */
      uint16x8_t pxt = vld1q_u16(top+i); /* top */
  
      /* bottom blend */
      uint16x8_t rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_r),8),ro);
      uint16x8_t gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_g),3),ro);
      uint16x8_t bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,c_msk_b),3),ro);
      
      /* top blend */
      uint16x8_t rtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,c_msk_r),8),op);
      uint16x8_t gtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,c_msk_g),3),op);
      uint16x8_t btl = vmulq_u16(vshlq_n_u16(vandq_u16(pxt,c_msk_b),3),op);
      
      /* dither blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 8);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 8);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 8);
      
      /* dithering */
      rbl = vminq_u16(vaddq_u16(rbl,table_r16),c_xalph);
      gbl = vminq_u16(vaddq_u16(gbl,table_g16),c_xalph);
      bbl = vminq_u16(vaddq_u16(bbl,table_b16),c_xalph);
      rbl = vqshlq_n_u16(vshrq_n_u16(rbl,3),11);
      gbl = vqshlq_n_u16(vshrq_n_u16(gbl,2),5);
      bbl = vshrq_n_u16(bbl,3);
      
      /* out value */
      uint16x8_t o = vorrq_u16(vorrq_u16(rbl,gbl),bbl);
      
      /* comparison opaque/transparent */
      o = vbslq_u16(vceqq_u16(op,c_xalph),pxt,o); /*opacity*/
      o = vbslq_u16(vceqq_u16(op,c_zalph),pxb,o); /*transparent*/
      
      vst1q_u16(dst+i,o);
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++){
      dst[i] = libaroma_dither(
        i, _Y, libaroma_alpha32(bottom[i], top[i], alpha[i])
      );
    }
  }
}

/*
 * non-dithered alpha blending
 */
static inline void libaroma_alpha_px(
  int n,
  wordp __restrict dst,
  wordp __restrict bottom,
  wordp __restrict top, 
  bytep __restrict alpha
){
  int i,left=n%8;
  
  if (n>=8){
    /* vectorized constant */
    uint16x8_t c_xalph = vdupq_n_u16(0xff);
    uint16x8_t c_zalph = vdupq_n_u16(0);
    uint16x8_t c_falph = vdupq_n_u16(0x100);
    uint16x8_t c_msk_r = vdupq_n_u16(0xf800);
    uint16x8_t c_msk_g = vdupq_n_u16(0x07e0);
    uint16x8_t c_msk_b = vdupq_n_u16(0x001f);
    
    for (i=0;i<n-left;i+=8){
      uint16x8_t op = vmovl_u8(vld1_u8(alpha+i));
      uint16x8_t ro = vsubq_u16(c_falph, op);
      
      uint16x8_t pxb = vld1q_u16(bottom+i); /* bottom */
      uint16x8_t pxt = vld1q_u16(top+i); /* top */
  
      /* bottom blend */
      uint16x8_t rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_r),8),ro);
      uint16x8_t gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_g),3),ro);
      uint16x8_t bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,c_msk_b),3),ro);
      
      /* top blend */
      uint16x8_t rtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,c_msk_r),8),op);
      uint16x8_t gtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,c_msk_g),3),op);
      uint16x8_t btl = vmulq_u16(vshlq_n_u16(vandq_u16(pxt,c_msk_b),3),op);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
      rbl = vshlq_n_u16(rbl, 11);
      gbl = vshlq_n_u16(gbl, 5);
      
      /* out value */
      uint16x8_t o = vorrq_u16(vorrq_u16(rbl,gbl),bbl);
      
      /* comparison opaque/transparent */
      o = vbslq_u16(vceqq_u16(op,c_xalph),pxt,o); /*opacity*/
      o = vbslq_u16(vceqq_u16(op,c_zalph),pxb,o); /*transparent*/
      
      vst1q_u16(dst+i,o);
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++){
      dst[i] = libaroma_alpha(bottom[i], top[i], alpha[i]);
    }
  }
}

/*
 * dithered alpha blending with constant alpha
 */
static inline void libaroma_alpha_const_line(
  int _Y,
  int n,
  wordp __restrict dst,
  wordp __restrict bottom, 
  wordp __restrict top,
  byte alpha
){
  if (alpha==0xff){
    if (dst!=top){
      memcpy(dst,top,n*2);
    }
    return;
  }
  else if (alpha==0){
    if (dst!=bottom){
      memcpy(dst,bottom,n*2);
    }
    return;
  }
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    /* vectorized constant */
    uint16x8_t c_xalph = vdupq_n_u16(0xff);
    uint16x8_t c_msk_r = vdupq_n_u16(0xf800);
    uint16x8_t c_msk_g = vdupq_n_u16(0x07e0);
    uint16x8_t c_msk_b = vdupq_n_u16(0x001f);
    
    /* dithering data */
    uint16x8_t table_r16,table_g16,table_b16;
    _libaroma_neon_dither_table16x8(
      _Y, &table_r16, &table_g16, &table_b16
    );
    
    /* constant alpha */
    uint16x8_t op = vdupq_n_u16((word) alpha);
    uint16x8_t ro = vdupq_n_u16(0x100-alpha);
    
    for (i=0;i<n-left;i+=8){
      uint16x8_t pxb = vld1q_u16(bottom+i); /* bottom */
      uint16x8_t pxt = vld1q_u16(top+i); /* top */
  
      /* bottom blend */
      uint16x8_t rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_r),8),ro);
      uint16x8_t gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_g),3),ro);
      uint16x8_t bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,c_msk_b),3),ro);
      
      /* top blend */
      uint16x8_t rtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,c_msk_r),8),op);
      uint16x8_t gtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,c_msk_g),3),op);
      uint16x8_t btl = vmulq_u16(vshlq_n_u16(vandq_u16(pxt,c_msk_b),3),op);
      
      /* dither blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 8);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 8);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 8);
      
      /* dithering */
      rbl = vminq_u16(vaddq_u16(rbl,table_r16),c_xalph);
      gbl = vminq_u16(vaddq_u16(gbl,table_g16),c_xalph);
      bbl = vminq_u16(vaddq_u16(bbl,table_b16),c_xalph);
      rbl = vqshlq_n_u16(vshrq_n_u16(rbl,3),11);
      gbl = vqshlq_n_u16(vshrq_n_u16(gbl,2),5);
      bbl = vshrq_n_u16(bbl,3);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rbl,gbl),bbl));
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++){
      dst[i] = libaroma_dither(
        i, _Y, libaroma_alpha32(bottom[i], top[i], alpha));
    }
  }
}

/*
 * non-dithered alpha blending with constant alpha
 */
static inline void libaroma_alpha_const(
  int n,
  wordp __restrict dst,
  wordp __restrict bottom,
  wordp __restrict top, 
  byte alpha
){
  if (alpha==0xff){
    if (dst!=top){
      memcpy(dst,top,n*2);
    }
    return;
  }
  else if (alpha==0){
    if (dst!=bottom){
      memcpy(dst,bottom,n*2);
    }
    return;
  }
  
  int i,left=n%8;
  if (n>=8){
    /* vectorized constant */
    uint16x8_t c_msk_r = vdupq_n_u16(0xf800);
    uint16x8_t c_msk_g = vdupq_n_u16(0x07e0);
    uint16x8_t c_msk_b = vdupq_n_u16(0x001f);
    
    /* constant alpha */
    uint16x8_t op = vdupq_n_u16((word) alpha);
    uint16x8_t ro = vdupq_n_u16(0x100-alpha);
    
    for (i=0;i<n-left;i+=8){
      uint16x8_t pxb = vld1q_u16(bottom+i); /* bottom */
      uint16x8_t pxt = vld1q_u16(top+i); /* top */
  
      /* bottom blend */
      uint16x8_t rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_r),8),ro);
      uint16x8_t gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_g),3),ro);
      uint16x8_t bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,c_msk_b),3),ro);
      
      /* top blend */
      uint16x8_t rtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,c_msk_r),8),op);
      uint16x8_t gtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,c_msk_g),3),op);
      uint16x8_t btl = vmulq_u16(vshlq_n_u16(vandq_u16(pxt,c_msk_b),3),op);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
      rbl = vshlq_n_u16(rbl, 11);
      gbl = vshlq_n_u16(gbl, 5);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rbl,gbl),bbl));
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++){
      dst[i] = libaroma_alpha(bottom[i], top[i], alpha);
    }
  }
}

/*
 * non-dithered alpha blending with black
 */
static inline void libaroma_alpha_black(
  int n,
  wordp __restrict dst,
  wordp __restrict top,
  byte alpha
){
  if (alpha==0xff){
    if (dst!=top){
      memcpy(dst,top,n*2);
    }
    return;
  }
  else if (alpha==0){
    memset(dst,0,n*2);
    return;
  }
  
  int i,left=n%8;
  
  if (n>=8){
    /* vectorized constant */
    uint16x8_t c_msk_r = vdupq_n_u16(0xf800);
    uint16x8_t c_msk_g = vdupq_n_u16(0x07e0);
    uint16x8_t c_msk_b = vdupq_n_u16(0x001f);
    
    uint16x8_t op = vdupq_n_u16(alpha);
    for (i=0;i<n-left;i+=8){
      uint16x8_t pxt = vld1q_u16(top+i); /* top */
      /* top blend */
      uint16x8_t rtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,c_msk_r),8),op);
      uint16x8_t gtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,c_msk_g),3),op);
      uint16x8_t btl = vmulq_u16(vshlq_n_u16(vandq_u16(pxt,c_msk_b),3),op);
      
      /* non-dithering blend result */
      rtl  = vshrq_n_u16(rtl, 11);
      gtl  = vshrq_n_u16(gtl, 10);
      btl  = vshrq_n_u16(btl, 11);
      rtl = vshlq_n_u16(rtl, 11);
      gtl = vshlq_n_u16(gtl, 5);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rtl,gtl),btl));
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++){
      dst[i] = libaroma_alphab(top[i], alpha);
    }
  }
}

/*
 * non-dithered alpha blending with constant top & alpha
 */
static inline void libaroma_alpha_rgba_fill(
  int n,
  wordp __restrict dst,
  wordp __restrict bottom,
  word top,
  byte alpha
){
  if (alpha==0xff){
    libaroma_color_set(dst,top,n);
    return;
  }
  else if (alpha==0){
    if (dst!=bottom){
      memcpy(dst,bottom,n*2);
    }
    return;
  }
  
  int i,left=n%8;
  
  if (n>=8){
    /* vectorized constant */
    uint16x8_t c_msk_r = vdupq_n_u16(0xf800);
    uint16x8_t c_msk_g = vdupq_n_u16(0x07e0);
    uint16x8_t c_msk_b = vdupq_n_u16(0x001f);
    
    /* constant top & alpha */
    uint16x8_t rtl = vdupq_n_u16(libaroma_color_r(top)*alpha);
    uint16x8_t gtl = vdupq_n_u16(libaroma_color_g(top)*alpha);
    uint16x8_t btl = vdupq_n_u16(libaroma_color_b(top)*alpha);
    uint16x8_t ro  = vdupq_n_u16(0x100-alpha);
    
    for (i=0;i<n-left;i+=8){
      uint16x8_t pxb = vld1q_u16(bottom+i); /* bottom */
  
      /* bottom blend */
      uint16x8_t rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_r),8),ro);
      uint16x8_t gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_g),3),ro);
      uint16x8_t bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,c_msk_b),3),ro);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
      rbl = vshlq_n_u16(rbl, 11);
      gbl = vshlq_n_u16(gbl, 5);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rbl,gbl),bbl));
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++){
      dst[i] = libaroma_alpha(bottom[i], top, alpha);
    }
  }
}

/*
 * dithered alpha blending with constant top & alpha
 */
static inline void libaroma_alpha_rgba_fill_line(
  int _Y,
  int n,
  wordp __restrict dst,
  wordp __restrict bottom,
  word top,
  byte alpha
){
  if (alpha==0xff){
    libaroma_color_set(dst,top,n);
    return;
  }
  else if (alpha==0){
    if (dst!=bottom){
      memcpy(dst,bottom,n*2);
    }
    return;
  }
  
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    /* vectorized constant */
    uint16x8_t c_xalph = vdupq_n_u16(0xff);
    uint16x8_t c_msk_r = vdupq_n_u16(0xf800);
    uint16x8_t c_msk_g = vdupq_n_u16(0x07e0);
    uint16x8_t c_msk_b = vdupq_n_u16(0x001f);
    
    /* dithering data */
    uint16x8_t table_r16,table_g16,table_b16;
    _libaroma_neon_dither_table16x8(
      _Y, &table_r16, &table_g16, &table_b16
    );
    
    /* constant top & alpha */
    uint16x8_t rtl = vdupq_n_u16(libaroma_color_r(top)*alpha);
    uint16x8_t gtl = vdupq_n_u16(libaroma_color_g(top)*alpha);
    uint16x8_t btl = vdupq_n_u16(libaroma_color_b(top)*alpha);
    uint16x8_t ro  = vdupq_n_u16(0x100-alpha);
    for (i=0;i<n-left;i+=8){
      uint16x8_t pxb = vld1q_u16(bottom+i); /* bottom */
  
      /* bottom blend */
      uint16x8_t rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_r),8),ro);
      uint16x8_t gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_g),3),ro);
      uint16x8_t bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,c_msk_b),3),ro);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 8);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 8);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 8);
      
      /* dithering */
      rbl = vminq_u16(vaddq_u16(rbl,table_r16),c_xalph);
      gbl = vminq_u16(vaddq_u16(gbl,table_g16),c_xalph);
      bbl = vminq_u16(vaddq_u16(bbl,table_b16),c_xalph);
      rbl = vqshlq_n_u16(vshrq_n_u16(rbl,3),11);
      gbl = vqshlq_n_u16(vshrq_n_u16(gbl,2),5);
      bbl = vshrq_n_u16(bbl,3);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rbl,gbl),bbl));
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++){
      dst[i] = libaroma_dither(i, _Y,
        libaroma_alpha32(bottom[i], top, alpha)
      );
    }
  }
}

/*
 * dithered alpha blending with constant top
 */
static inline void libaroma_alpha_mono(
  int n,
  wordp __restrict dst, 
  wordp __restrict bottom,
  word top,
  bytep __restrict alpha
){
  int i,left=n%8;
  
  if (n>=8){
    /* vectorized constant */
    uint16x8_t c_xalph = vdupq_n_u16(0xff);
    uint16x8_t c_zalph = vdupq_n_u16(0);
    uint16x8_t c_falph = vdupq_n_u16(0x100);
    uint16x8_t c_msk_r = vdupq_n_u16(0xf800);
    uint16x8_t c_msk_g = vdupq_n_u16(0x07e0);
    uint16x8_t c_msk_b = vdupq_n_u16(0x001f);
    
    /* constants */
    uint16x8_t pxt = vdupq_n_u16(top);
    uint16x8_t rts = vdupq_n_u16(libaroma_color_r(top));
    uint16x8_t gts = vdupq_n_u16(libaroma_color_g(top));
    uint16x8_t bts = vdupq_n_u16(libaroma_color_b(top));
    
    for (i=0;i<n-left;i+=8){
      uint16x8_t op = vmovl_u8(vld1_u8(alpha+i));
      uint16x8_t ro = vsubq_u16(c_falph, op);
      
      uint16x8_t pxb = vld1q_u16(bottom+i); /* bottom */
  
      /* bottom blend */
      uint16x8_t rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_r),8),ro);
      uint16x8_t gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_g),3),ro);
      uint16x8_t bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,c_msk_b),3),ro);
      
      /* top blend */
      uint16x8_t rtl = vmulq_u16(rts,op);
      uint16x8_t gtl = vmulq_u16(gts,op);
      uint16x8_t btl = vmulq_u16(bts,op);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
      rbl = vshlq_n_u16(rbl, 11);
      gbl = vshlq_n_u16(gbl, 5);
      
      /* out value */
      uint16x8_t o = vorrq_u16(vorrq_u16(rbl,gbl),bbl);
      
      /* comparison opaque/transparent */
      o = vbslq_u16(vceqq_u16(op,c_xalph),pxt,o); /*opacity*/
      o = vbslq_u16(vceqq_u16(op,c_zalph),pxb,o); /*transparent*/
      
      vst1q_u16(dst+i,o);
    }
  }
  /* leftover */
  if (left>0){
    for (i=n-left;i<n;i++){
      dst[i] = libaroma_alpha(bottom[i], top, alpha[i]);
    }
  }
}

/*
 * dithered alpha blending with constant top and supersampling alpha
 */
static inline void libaroma_alpha_multi_line(
  int n,
  wordp __restrict dst,
  wordp __restrict bottom,
  word top,
  bytep __restrict alphargb
){
  int i,left=n%8;
  
  if (n>=8){
    /* vectorized constant */
    uint16x8_t c_falph = vdupq_n_u16(0x100);
    uint16x8_t c_msk_r = vdupq_n_u16(0xf800);
    uint16x8_t c_msk_g = vdupq_n_u16(0x07e0);
    uint16x8_t c_msk_b = vdupq_n_u16(0x001f);
    
    uint16x8_t rts = vdupq_n_u16(libaroma_color_r(top));
    uint16x8_t gts = vdupq_n_u16(libaroma_color_g(top));
    uint16x8_t bts = vdupq_n_u16(libaroma_color_b(top));
    for (i=0;i<n-left;i+=8){
      /* 24bit opacity */
      uint8x8x3_t alphabuf = vld3_u8(alphargb+(i*3));
      
      /* prepare opacity and reversed opacity value */
      uint16x8_t op_r = vmovl_u8(alphabuf.val[0]);
      uint16x8_t op_g = vmovl_u8(alphabuf.val[1]);
      uint16x8_t op_b = vmovl_u8(alphabuf.val[2]);
      uint16x8_t ro_r = vsubq_u16(c_falph, op_r);
      uint16x8_t ro_g = vsubq_u16(c_falph, op_g);
      uint16x8_t ro_b = vsubq_u16(c_falph, op_b);
      
      uint16x8_t pxb = vld1q_u16(bottom+i); /* bottom */
  
      /* bottom blend */
      uint16x8_t rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_r),8),ro_r);
      uint16x8_t gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,c_msk_g),3),ro_g);
      uint16x8_t bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,c_msk_b),3),ro_b);
      
      /* top blend */
      uint16x8_t rtl = vmulq_u16(rts,op_r);
      uint16x8_t gtl = vmulq_u16(gts,op_g);
      uint16x8_t btl = vmulq_u16(bts,op_b);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
      rbl = vshlq_n_u16(rbl, 11);
      gbl = vshlq_n_u16(gbl, 5);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rbl,gbl),bbl));
    }
  }
  /* leftover */
  if (left>0){
    int j;
    for (i=n-left;i<n;i++){
      j=i*3;
      dst[i] = libaroma_alpha_multi(
        bottom[i],
        top,
        alphargb[j],
        alphargb[j+1],
        alphargb[j+2]
      );
    }
  }
}

#endif /* __libaroma_arm_neon_alpha_h__ */

