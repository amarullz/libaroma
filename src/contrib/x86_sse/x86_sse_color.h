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
 * Filename    : x86_sse_color.h
 * Description : vector color engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 08/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_internal_h__
  #error "Include <aroma_internal.h> instead."
#endif
#ifndef __libaroma_x86_sse_color_h__
#define __libaroma_x86_sse_color_h__

#ifndef libaroma_memset16
#define __engine_have_libaroma_color_set 1
static inline void libaroma_color_set(wordp dst, word color, int n) {
  int i,left=n%32;
  if (n>=32){
    for (i=0;i<32;i++){
      dst[i]=color;
    }
    for (i=32;i<n-left;i+=32){
      memcpy(dst+i,dst,64);
    }
  }
  if (left>0){
    for (i=n-left;i<n;i++) {
      dst[i]=color;
    }
  }
}
#endif

#define __engine_have_libaroma_color_24to16 1
static inline void libaroma_color_24to16(
  wordp __restrict dst,
  bytep __restrict src,
  int w
) {
  int v,i,left=w%8;
  if (w>=8){
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
      r = _mm_slli_epi16(_mm_srli_epi16(r,3),11);
      g = _mm_slli_epi16(_mm_srli_epi16(g,2),5);
      b = _mm_srli_epi16(b,3);
      r = _mm_or_si128(_mm_or_si128(r,g),b);
      _mm_store_si128((__m128i*) (dst+i), r);
    }
  }
  if (left>0){
    for (i=w-left,v=i*3;i<w;i++,v+=3){
      dst[i] = libaroma_rgb(src[v], src[v+1], src[v+2]);
    }
  }
}

#endif /* __libaroma_x86_sse_color_h__ */

