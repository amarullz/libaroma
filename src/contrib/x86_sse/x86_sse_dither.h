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
 * Filename    : x86_sse_dither.h
 * Description : vector dithering
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 08/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_x86_sse_dither_h__
#define __libaroma_x86_sse_dither_h__


/* load table */
#define __SSE_LOAD_DITHER_TABLE(y) \
__m128i table_r, table_g, table_b; { \
  int __tp = ((y & 7) << 3); \
  byte * LP = libaroma_dither_table_r()+__tp; \
  table_r = _mm_setr_epi16(LP[0],LP[1],LP[2],LP[3],LP[4],LP[5],LP[6],LP[7]); \
  LP = libaroma_dither_table_g()+__tp; \
  table_g = _mm_setr_epi16(LP[0],LP[1],LP[2],LP[3],LP[4],LP[5],LP[6],LP[7]); \
  LP = libaroma_dither_table_b()+__tp; \
  table_b = _mm_setr_epi16(LP[0],LP[1],LP[2],LP[3],LP[4],LP[5],LP[6],LP[7]); \
}

/*
 * dithered line
 */
#define __engine_have_libaroma_dither_line 1
static inline void libaroma_dither_line(
  int y,
  int w,
  wordp __restrict dst,
  const dwordp __restrict src
){
  int i,left=w%8;
  if (w>=8){
    __SSE_LOAD_DITHER_TABLE(y)
    __m128i ff = _mm_set1_epi16(255);
    uint8_t * nsrc = (uint8_t *) src;
    for (i=0;i<w-left;i+=8){
      uint8_t * lowb = nsrc + i * 4;
      __m128i b = _mm_setr_epi16(
        lowb[0], lowb[4], lowb[8], lowb[12],
        lowb[16], lowb[20], lowb[24], lowb[28]
      );
      ++lowb;
      __m128i g = _mm_setr_epi16(
        lowb[0], lowb[4], lowb[8], lowb[12],
        lowb[16], lowb[20], lowb[24], lowb[28]
      );
      ++lowb;
      __m128i r = _mm_setr_epi16(
        lowb[0], lowb[4], lowb[8], lowb[12],
        lowb[16], lowb[20], lowb[24], lowb[28]
      );
      r = _mm_slli_epi16(_mm_srli_epi16(_mm_min_epi16(_mm_add_epi16(r,table_r),ff),3),11);
      g = _mm_slli_epi16(_mm_srli_epi16(_mm_min_epi16(_mm_add_epi16(g,table_g),ff),2),5);
      b = _mm_srli_epi16(_mm_min_epi16(_mm_add_epi16(b,table_b),ff),3);
      r = _mm_or_si128(_mm_or_si128(r,g),b);
      _mm_store_si128((__m128i*) (dst+i), r);
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
#define __engine_have_libaroma_dither_line_const 1
static inline void libaroma_dither_line_const(
  int y,
  int w,
  wordp __restrict dst,
  const dword src
){
  int i,left=w%8;
  
  if (w>=8){
    __SSE_LOAD_DITHER_TABLE(y)
    __m128i ff = _mm_set1_epi16(255);
    __m128i sr = _mm_set1_epi16(libaroma_color_r32(src));
    __m128i sg = _mm_set1_epi16(libaroma_color_g32(src));
    __m128i sb = _mm_set1_epi16(libaroma_color_b32(src));
    for (i=0;i<w-left;i+=8){
      __m128i r = _mm_slli_epi16(_mm_srli_epi16(_mm_min_epi16(_mm_add_epi16(sr,table_r),ff),3),11);
      __m128i g = _mm_slli_epi16(_mm_srli_epi16(_mm_min_epi16(_mm_add_epi16(sg,table_g),ff),2),5);
      __m128i b = _mm_srli_epi16(_mm_min_epi16(_mm_add_epi16(sb,table_b),ff),3);
      r = _mm_or_si128(_mm_or_si128(r,g),b);
      _mm_store_si128((__m128i*) (dst+i), r);
    }
  }
  /* leftover */
  if (left>0){
    for (i=w-left;i<w;i++){
      dst[i] = libaroma_dither(i,y,src);
    }
  }
}

#define __engine_have_libaroma_dither_24to16 1
static inline void libaroma_dither_24to16(
  int y,
  int w,
  wordp __restrict dst,
  bytep __restrict src
) {
  int v,i,left=w%8;
  if (w>=8){
    __SSE_LOAD_DITHER_TABLE(y)
    __m128i ff = _mm_set1_epi16(255);
    for (i=0,v=i*3;i<w-left;i+=8,v+=24){
      uint8_t * lowb = src+v;
      __m128i r = _mm_setr_epi16(
        lowb[0], lowb[3], lowb[6], lowb[9],
        lowb[12], lowb[15], lowb[18], lowb[21]
      );
      ++lowb;
      __m128i g = _mm_setr_epi16(
        lowb[0], lowb[3], lowb[6], lowb[9],
        lowb[12], lowb[15], lowb[18], lowb[21]
      );
      ++lowb;
      __m128i b = _mm_setr_epi16(
        lowb[0], lowb[3], lowb[6], lowb[9],
        lowb[12], lowb[15], lowb[18], lowb[21]
      );
      r = _mm_slli_epi16(_mm_srli_epi16(_mm_min_epi16(_mm_add_epi16(r,table_r),ff),3),11);
      g = _mm_slli_epi16(_mm_srli_epi16(_mm_min_epi16(_mm_add_epi16(g,table_g),ff),2),5);
      b = _mm_srli_epi16(_mm_min_epi16(_mm_add_epi16(b,table_b),ff),3);
      r = _mm_or_si128(_mm_or_si128(r,g),b);
      _mm_store_si128((__m128i*) (dst+i), r);
    }
  }
  if (left>0){
    int m=0;
    for (i=w-left,v=i*3;i<w;i++,v+=3){
      dst[i] = libaroma_dither_rgb(m++, y, src[v], src[v+1], src[v+2]);
    }
  }
}

#endif /* __libaroma_x86_sse_dither_h__ */

