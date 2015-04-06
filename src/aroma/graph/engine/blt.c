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
 * Filename    : blt.c
 * Description : blit engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_blt_c__
#define __libaroma_blt_c__
#include <aroma_internal.h>


#ifndef __engine_have_libaroma_btl16
void libaroma_btl16(int n, wordp dst, const dwordp src) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = libaroma_rgb_to16(src[i]);
  }
}
#endif

#ifndef __engine_have_libaroma_btl32
void libaroma_btl32(int n, dwordp dst, const wordp src) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = libaroma_rgb_to32(src[i]);
  }
}
#endif

#endif /* __libaroma_blt_c__ */

