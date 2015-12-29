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
 * Filename    : x86_sse_alpha.h
 * Description : vector alphablend
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 08/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_x86_sse_alpha_h__
#define __libaroma_x86_sse_alpha_h__

#define __mm_cmpselect(mask,b,a) \
  _mm_xor_si128(a, _mm_and_si128(mask, _mm_xor_si128(b, a)))
 
/*
 * dithered alpha blending
 */
#define __engine_have_libaroma_alpha_px_line 1
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
    __SSE_LOAD_DITHER_TABLE(_Y)
    __m128i c_xalph = _mm_set1_epi16(0xff);
    __m128i c_zalph = _mm_set1_epi16(0);
    __m128i c_falph = _mm_set1_epi16(0x100);
    __m128i c_msk_r = _mm_set1_epi16(0xf800);
    __m128i c_msk_g = _mm_set1_epi16(0x07e0);
    __m128i c_msk_b = _mm_set1_epi16(0x001f);
    
    
    for (i=0;i<n-left;i+=8){
      bytep av=alpha+i;
      __m128i op = _mm_setr_epi16(
        av[0],av[1],av[2],av[3],av[4],av[5],av[6],av[7]
      );
      __m128i ro = _mm_sub_epi16(c_falph, op);
      
      __m128i pxb = _mm_loadu_si128((__m128i const*) (bottom+i)); /* bottom */
      __m128i pxt = _mm_loadu_si128((__m128i const*) (top+i)); /* top */
  
      /* bottom blend */
      __m128i rbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_r),8),ro);
      __m128i gbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_g),3),ro);
      __m128i bbl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxb,c_msk_b),3),ro);
      
      /* top blend */
      __m128i rtl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxt,c_msk_r),8),op);
      __m128i gtl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxt,c_msk_g),3),op);
      __m128i btl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxt,c_msk_b),3),op);
      
      /* dither blend result */
      rbl  = _mm_srli_epi16(_mm_add_epi16(rbl, rtl), 8);
      gbl  = _mm_srli_epi16(_mm_add_epi16(gbl, gtl), 8);
      bbl  = _mm_srli_epi16(_mm_add_epi16(bbl, btl), 8);
      
      /* dithering */
      rbl = _mm_min_epi16(_mm_add_epi16(rbl,table_r),c_xalph);
      gbl = _mm_min_epi16(_mm_add_epi16(gbl,table_g),c_xalph);
      bbl = _mm_min_epi16(_mm_add_epi16(bbl,table_b),c_xalph);
      rbl = _mm_slli_epi16(_mm_srli_epi16(rbl,3),11);
      gbl = _mm_slli_epi16(_mm_srli_epi16(gbl,2),5);
      bbl = _mm_srli_epi16(bbl,3);
      
      /* out value */
     __m128i o = _mm_or_si128(_mm_or_si128(rbl,gbl),bbl);
      
      /* comparison opaque/transparent */
      o=__mm_cmpselect(_mm_cmpeq_epi16(op,c_xalph),pxt,o);
      o=__mm_cmpselect(_mm_cmpeq_epi16(op,c_zalph),pxb,o);
      
      _mm_store_si128((__m128i*) (dst+i), o);
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
#define __engine_have_libaroma_alpha_px 1
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
    __m128i c_xalph = _mm_set1_epi16(0xff);
    __m128i c_zalph = _mm_set1_epi16(0);
    __m128i c_falph = _mm_set1_epi16(0x100);
    __m128i c_msk_r = _mm_set1_epi16(0xf800);
    __m128i c_msk_g = _mm_set1_epi16(0x07e0);
    __m128i c_msk_b = _mm_set1_epi16(0x001f);
    
    for (i=0;i<n-left;i+=8){
      bytep av=alpha+i;
      __m128i op = _mm_setr_epi16(
        av[0],av[1],av[2],av[3],av[4],av[5],av[6],av[7]
      );
      __m128i ro = _mm_sub_epi16(c_falph, op);
      
      __m128i pxb = _mm_loadu_si128((__m128i const*) (bottom+i)); /* bottom */
      __m128i pxt = _mm_loadu_si128((__m128i const*) (top+i)); /* top */
  
      /* bottom blend */
      __m128i rbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_r),8),ro);
      __m128i gbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_g),3),ro);
      __m128i bbl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxb,c_msk_b),3),ro);
      
      /* top blend */
      __m128i rtl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxt,c_msk_r),8),op);
      __m128i gtl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxt,c_msk_g),3),op);
      __m128i btl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxt,c_msk_b),3),op);
      
      /* non-dithering blend result */
      rbl  = _mm_srli_epi16(_mm_add_epi16(rbl, rtl), 11);
      gbl  = _mm_srli_epi16(_mm_add_epi16(gbl, gtl), 10);
      bbl  = _mm_srli_epi16(_mm_add_epi16(bbl, btl), 11);
      rbl = _mm_slli_epi16(rbl, 11);
      gbl = _mm_slli_epi16(gbl, 5);
      
      /* out value */
      __m128i o = _mm_or_si128(_mm_or_si128(rbl,gbl),bbl);
      
      /* comparison opaque/transparent */
      o=__mm_cmpselect(_mm_cmpeq_epi16(op,c_xalph),pxt,o);
      o=__mm_cmpselect(_mm_cmpeq_epi16(op,c_zalph),pxb,o);
      _mm_store_si128((__m128i*) (dst+i), o);
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
#define __engine_have_libaroma_alpha_const_line 1
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
    __SSE_LOAD_DITHER_TABLE(_Y)
    __m128i c_xalph = _mm_set1_epi16(0xff);
    __m128i c_msk_r = _mm_set1_epi16(0xf800);
    __m128i c_msk_g = _mm_set1_epi16(0x07e0);
    __m128i c_msk_b = _mm_set1_epi16(0x001f);
    
    /* constant alpha */
    __m128i op = _mm_set1_epi16((word) alpha);
    __m128i ro = _mm_set1_epi16(0x100-alpha);
    
    for (i=0;i<n-left;i+=8){
      __m128i pxb = _mm_loadu_si128((__m128i const*) (bottom+i)); /* bottom */
      __m128i pxt = _mm_loadu_si128((__m128i const*) (top+i)); /* top */
  
      /* bottom blend */
      __m128i rbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_r),8),ro);
      __m128i gbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_g),3),ro);
      __m128i bbl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxb,c_msk_b),3),ro);
      
      /* top blend */
      __m128i rtl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxt,c_msk_r),8),op);
      __m128i gtl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxt,c_msk_g),3),op);
      __m128i btl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxt,c_msk_b),3),op);
      
      /* dither blend result */
      rbl  = _mm_srli_epi16(_mm_add_epi16(rbl, rtl), 8);
      gbl  = _mm_srli_epi16(_mm_add_epi16(gbl, gtl), 8);
      bbl  = _mm_srli_epi16(_mm_add_epi16(bbl, btl), 8);
      
      /* dithering */
      rbl = _mm_min_epi16(_mm_add_epi16(rbl,table_r),c_xalph);
      gbl = _mm_min_epi16(_mm_add_epi16(gbl,table_g),c_xalph);
      bbl = _mm_min_epi16(_mm_add_epi16(bbl,table_b),c_xalph);
      rbl = _mm_slli_epi16(_mm_srli_epi16(rbl,3),11);
      gbl = _mm_slli_epi16(_mm_srli_epi16(gbl,2),5);
      bbl = _mm_srli_epi16(bbl,3);
      
      /* out value */
      _mm_store_si128((__m128i*) (dst+i), _mm_or_si128(_mm_or_si128(rbl,gbl),bbl));
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
#define __engine_have_libaroma_alpha_const 1
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
    __m128i c_msk_r = _mm_set1_epi16(0xf800);
    __m128i c_msk_g = _mm_set1_epi16(0x07e0);
    __m128i c_msk_b = _mm_set1_epi16(0x001f);
    
    /* constant alpha */
    __m128i op = _mm_set1_epi16((word) alpha);
    __m128i ro = _mm_set1_epi16(0x100-alpha);
    
    for (i=0;i<n-left;i+=8){
      __m128i pxb = _mm_loadu_si128((__m128i const*) (bottom+i)); /* bottom */
      __m128i pxt = _mm_loadu_si128((__m128i const*) (top+i)); /* top */
  
      /* bottom blend */
      __m128i rbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_r),8),ro);
      __m128i gbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_g),3),ro);
      __m128i bbl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxb,c_msk_b),3),ro);
      
      /* top blend */
      __m128i rtl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxt,c_msk_r),8),op);
      __m128i gtl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxt,c_msk_g),3),op);
      __m128i btl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxt,c_msk_b),3),op);
      
      /* non-dithering blend result */
      rbl  = _mm_srli_epi16(_mm_add_epi16(rbl, rtl), 11);
      gbl  = _mm_srli_epi16(_mm_add_epi16(gbl, gtl), 10);
      bbl  = _mm_srli_epi16(_mm_add_epi16(bbl, btl), 11);
      rbl = _mm_slli_epi16(rbl, 11);
      gbl = _mm_slli_epi16(gbl, 5);
      
      /* out value */
      _mm_store_si128((__m128i*) (dst+i), _mm_or_si128(_mm_or_si128(rbl,gbl),bbl));
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
#define __engine_have_libaroma_alpha_black 1
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
    __m128i c_msk_r = _mm_set1_epi16(0xf800);
    __m128i c_msk_g = _mm_set1_epi16(0x07e0);
    __m128i c_msk_b = _mm_set1_epi16(0x001f);
    __m128i op = _mm_set1_epi16((word) alpha);
    
    for (i=0;i<n-left;i+=8){
      __m128i pxt = _mm_loadu_si128((__m128i const*) (top+i)); /* top */
      /* top blend */
      __m128i rtl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxt,c_msk_r),8),op);
      __m128i gtl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxt,c_msk_g),3),op);
      __m128i btl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxt,c_msk_b),3),op);
      
      /* non-dithering blend result */
      rtl  = _mm_srli_epi16(rtl, 11);
      gtl  = _mm_srli_epi16(gtl, 10);
      btl  = _mm_srli_epi16(btl, 11);
      rtl = _mm_slli_epi16(rtl, 11);
      gtl = _mm_slli_epi16(gtl, 5);
      
      /* out value */
      _mm_store_si128((__m128i*) (dst+i), _mm_or_si128(_mm_or_si128(rtl,gtl),btl));
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
#define __engine_have_libaroma_alpha_rgba_fill 1
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
    __m128i c_msk_r = _mm_set1_epi16(0xf800);
    __m128i c_msk_g = _mm_set1_epi16(0x07e0);
    __m128i c_msk_b = _mm_set1_epi16(0x001f);
    
    /* constant top & alpha */
    __m128i rtl = _mm_set1_epi16(libaroma_color_r(top)*alpha);
    __m128i gtl = _mm_set1_epi16(libaroma_color_g(top)*alpha);
    __m128i btl = _mm_set1_epi16(libaroma_color_b(top)*alpha);
    __m128i ro  = _mm_set1_epi16(0x100-alpha);
    
    for (i=0;i<n-left;i+=8){
      __m128i pxb = _mm_loadu_si128((__m128i const*) (bottom+i)); /* bottom */
  
      /* bottom blend */
      __m128i rbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_r),8),ro);
      __m128i gbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_g),3),ro);
      __m128i bbl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxb,c_msk_b),3),ro);
      
      /* non-dithering blend result */
      rbl  = _mm_srli_epi16(_mm_add_epi16(rbl, rtl), 11);
      gbl  = _mm_srli_epi16(_mm_add_epi16(gbl, gtl), 10);
      bbl  = _mm_srli_epi16(_mm_add_epi16(bbl, btl), 11);
      rbl = _mm_slli_epi16(rbl, 11);
      gbl = _mm_slli_epi16(gbl, 5);
      
      /* out value */
      _mm_store_si128((__m128i*) (dst+i), _mm_or_si128(_mm_or_si128(rbl,gbl),bbl));
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
#define __engine_have_libaroma_alpha_rgba_fill_line 1
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
    __SSE_LOAD_DITHER_TABLE(_Y)
    __m128i c_xalph = _mm_set1_epi16(0xff);
    __m128i c_msk_r = _mm_set1_epi16(0xf800);
    __m128i c_msk_g = _mm_set1_epi16(0x07e0);
    __m128i c_msk_b = _mm_set1_epi16(0x001f);
    
    /* constant top & alpha */
    __m128i rtl = _mm_set1_epi16(libaroma_color_r(top)*alpha);
    __m128i gtl = _mm_set1_epi16(libaroma_color_g(top)*alpha);
    __m128i btl = _mm_set1_epi16(libaroma_color_b(top)*alpha);
    __m128i ro  = _mm_set1_epi16(0x100-alpha);
    for (i=0;i<n-left;i+=8){
      __m128i pxb = _mm_loadu_si128((__m128i const*) (bottom+i)); /* bottom */
  
      /* bottom blend */
      __m128i rbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_r),8),ro);
      __m128i gbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_g),3),ro);
      __m128i bbl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxb,c_msk_b),3),ro);
      
      /* non-dithering blend result */
      rbl  = _mm_srli_epi16(_mm_add_epi16(rbl, rtl), 8);
      gbl  = _mm_srli_epi16(_mm_add_epi16(gbl, gtl), 8);
      bbl  = _mm_srli_epi16(_mm_add_epi16(bbl, btl), 8);
      
      /* dithering */
      rbl = _mm_min_epi16(_mm_add_epi16(rbl,table_r),c_xalph);
      gbl = _mm_min_epi16(_mm_add_epi16(gbl,table_g),c_xalph);
      bbl = _mm_min_epi16(_mm_add_epi16(bbl,table_b),c_xalph);
      rbl = _mm_slli_epi16(_mm_srli_epi16(rbl,3),11);
      gbl = _mm_slli_epi16(_mm_srli_epi16(gbl,2),5);
      bbl = _mm_srli_epi16(bbl,3);
      
      /* out value */
      _mm_store_si128((__m128i*) (dst+i), _mm_or_si128(_mm_or_si128(rbl,gbl),bbl));
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
#define __engine_have_libaroma_alpha_mono 1
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
    __m128i c_xalph = _mm_set1_epi16(0xff);
    __m128i c_zalph = _mm_set1_epi16(0);
    __m128i c_falph = _mm_set1_epi16(0x100);
    __m128i c_msk_r = _mm_set1_epi16(0xf800);
    __m128i c_msk_g = _mm_set1_epi16(0x07e0);
    __m128i c_msk_b = _mm_set1_epi16(0x001f);
    
    /* constants */
    __m128i pxt = _mm_set1_epi16(top);
    __m128i rts = _mm_set1_epi16(libaroma_color_r(top));
    __m128i gts = _mm_set1_epi16(libaroma_color_g(top));
    __m128i bts = _mm_set1_epi16(libaroma_color_b(top));
    
    for (i=0;i<n-left;i+=8){
      bytep av=alpha+i;
      __m128i op = _mm_setr_epi16(
        av[0],av[1],av[2],av[3],av[4],av[5],av[6],av[7]
      );
      __m128i ro = _mm_sub_epi16(c_falph, op);
      
      __m128i pxb = _mm_loadu_si128((__m128i const*) (bottom+i)); /* bottom */
  
      /* bottom blend */
      __m128i rbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_r),8),ro);
      __m128i gbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_g),3),ro);
      __m128i bbl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxb,c_msk_b),3),ro);
      
      /* top blend */
      __m128i rtl = _mm_mullo_epi16(rts,op);
      __m128i gtl = _mm_mullo_epi16(gts,op);
      __m128i btl = _mm_mullo_epi16(bts,op);
      
      /* non-dithering blend result */
      rbl  = _mm_srli_epi16(_mm_add_epi16(rbl, rtl), 11);
      gbl  = _mm_srli_epi16(_mm_add_epi16(gbl, gtl), 10);
      bbl  = _mm_srli_epi16(_mm_add_epi16(bbl, btl), 11);
      rbl = _mm_slli_epi16(rbl, 11);
      gbl = _mm_slli_epi16(gbl, 5);
      
      /* out value */
      __m128i o = _mm_or_si128(_mm_or_si128(rbl,gbl),bbl);
      
      /* comparison opaque/transparent */
      o=__mm_cmpselect(_mm_cmpeq_epi16(op,c_xalph),pxt,o);
      o=__mm_cmpselect(_mm_cmpeq_epi16(op,c_zalph),pxb,o);
      _mm_store_si128((__m128i*) (dst+i), o);
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
#define __engine_have_libaroma_alpha_multi_line 1
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
    __m128i c_falph = _mm_set1_epi16(0x100);
    __m128i c_msk_r = _mm_set1_epi16(0xf800);
    __m128i c_msk_g = _mm_set1_epi16(0x07e0);
    __m128i c_msk_b = _mm_set1_epi16(0x001f);
    
    __m128i rts = _mm_set1_epi16(libaroma_color_r(top));
    __m128i gts = _mm_set1_epi16(libaroma_color_g(top));
    __m128i bts = _mm_set1_epi16(libaroma_color_b(top));
    for (i=0;i<n-left;i+=8){
      /* 24bit opacity */
      bytep av = alphargb+(i*3);
      /* prepare opacity and reversed opacity value */
      __m128i op_r = _mm_setr_epi16(
        av[0],av[3],av[6],av[9],av[12],av[15],av[18],av[21]
      );
      ++av;
      __m128i op_g = _mm_setr_epi16(
        av[0],av[3],av[6],av[9],av[12],av[15],av[18],av[21]
      );
      ++av;
      __m128i op_b = _mm_setr_epi16(
        av[0],av[3],av[6],av[9],av[12],av[15],av[18],av[21]
      );
      __m128i ro_r = _mm_sub_epi16(c_falph, op_r);
      __m128i ro_g = _mm_sub_epi16(c_falph, op_g);
      __m128i ro_b = _mm_sub_epi16(c_falph, op_b);
      
      __m128i pxb = _mm_loadu_si128((__m128i const*) (bottom+i)); /* bottom */
  
      /* bottom blend */
      __m128i rbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_r),8),ro_r);
      __m128i gbl = _mm_mullo_epi16(_mm_srli_epi16(_mm_and_si128(pxb,c_msk_g),3),ro_g);
      __m128i bbl = _mm_mullo_epi16(_mm_slli_epi16(_mm_and_si128(pxb,c_msk_b),3),ro_b);
      
      /* top blend */
      __m128i rtl = _mm_mullo_epi16(rts,op_r);
      __m128i gtl = _mm_mullo_epi16(gts,op_g);
      __m128i btl = _mm_mullo_epi16(bts,op_b);
      
      /* non-dithering blend result */
      rbl  = _mm_srli_epi16(_mm_add_epi16(rbl, rtl), 11);
      gbl  = _mm_srli_epi16(_mm_add_epi16(gbl, gtl), 10);
      bbl  = _mm_srli_epi16(_mm_add_epi16(bbl, btl), 11);
      rbl = _mm_slli_epi16(rbl, 11);
      gbl = _mm_slli_epi16(gbl, 5);
      
      /* out value */
      _mm_store_si128((__m128i*) (dst+i),_mm_or_si128(_mm_or_si128(rbl,gbl),bbl));
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

#endif /* __libaroma_x86_sse_alpha_h__ */

