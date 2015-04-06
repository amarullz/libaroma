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
 * Filename    : alpha.c
 * Description : alpha blend engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_alpha_c__
#define __libaroma_alpha_c__
#include <aroma_internal.h>

word libaroma_alpha(word dcl, word scl, byte l) {
  if (scl == dcl) {
    return scl;
  }
  else if (l == 0) {
    return dcl;
  }
  else if (l == 0xff) {
    return scl;
  }
  word na = l;
  word fa = 256 - na;
  return
    (word) (
      (((libaroma_color_r(dcl) * fa) + 
        (libaroma_color_r(scl) * na)) >> 11 << 11) |
      (((libaroma_color_g(dcl) * fa) + 
        (libaroma_color_g(scl) * na)) >> 10 << 5) |
      (((libaroma_color_b(dcl) * fa) + 
        (libaroma_color_b(scl) * na)) >> 11)
    );
}
dword libaroma_alpha32(word dcl, word scl, byte l) {
  if (scl == dcl) {
    return libaroma_rgb_to32(scl);
  }
  else if (l == 0) {
    return libaroma_rgb_to32(dcl);
  }
  else if (l == 0xff) {
    return libaroma_rgb_to32(scl);
  }
  word na = l;
  word fa = 256 - na;
  return
    (dword) (
      (((libaroma_color_r(dcl) * fa) + 
        (libaroma_color_r(scl) * na)) >> 8 << 16) |
      (((libaroma_color_g(dcl) * fa) + 
        (libaroma_color_g(scl) * na)) >> 8 << 8) |
      (((libaroma_color_b(dcl) * fa) + 
        (libaroma_color_b(scl) * na)) >> 8) |
      (0xff << 24)
    );
}
word libaroma_alpha_multi(word dcl, word scl, byte lr, byte lg, byte lb) {
  if (scl == dcl) {
    return scl;
  }
  else if (lr + lg + lb == 0) {
    return dcl;
  }
  else if (lr + lg + lb == 765) {
    return scl;
  }
  word  rr = 256 - lr;
  word  rg = 256 - lg;
  word  rb = 256 - lb;
  return
    (word) (
      (((libaroma_color_r(dcl) * rr) + 
        (libaroma_color_r(scl) * lr)) >> 11 << 11) |
      (((libaroma_color_g(dcl) * rg) + 
        (libaroma_color_g(scl) * lg)) >> 10 << 5) |
      (((libaroma_color_b(dcl) * rb) + 
        (libaroma_color_b(scl) * lb)) >> 11)
    );
}
word libaroma_alphab(word scl, byte l) {
  if (l == 0) {
    return 0;
  }
  else if (l == 255) {
    return scl;
  }
  word na = l;
  return
    (word) (
      ((libaroma_color_r(scl) * na) >> 11 << 11) |
      ((libaroma_color_g(scl) * na) >> 10 << 5) |
      ((libaroma_color_b(scl) * na) >> 11)
    );
}

#ifndef __engine_have_libaroma_alpha_black
void libaroma_alpha_black(int n, wordp dst, wordp top, byte alpha) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = libaroma_alphab(top[i], alpha);
  }
}
#endif

#ifndef __engine_have_libaroma_alpha_const
void libaroma_alpha_const(int n, wordp dst,
    wordp bottom, wordp top, byte alpha) {
  int i;

  for (i = 0; i < n; i++) {
    dst[i] = libaroma_alpha(bottom[i], top[i], alpha);
  }
}
#endif

#ifndef __engine_have_libaroma_alpha_const_line
void libaroma_alpha_const_line(int _Y, int n, wordp dst,
    wordp bottom, wordp top, byte alpha) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = libaroma_dither(i, _Y, libaroma_alpha32(bottom[i], top[i], alpha));
  }
}
#endif

#ifndef __engine_have_libaroma_alpha_px
void libaroma_alpha_px(int n, wordp dst, wordp bottom,
    wordp top, bytep alpha) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = libaroma_alpha(bottom[i], top[i], alpha[i]);
  }
}
#endif

#ifndef __engine_have_libaroma_alpha_px_line
void libaroma_alpha_px_line(int _Y, int n, wordp dst,
    wordp bottom, wordp top, bytep alpha) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = libaroma_dither(i, _Y, 
      libaroma_alpha32(bottom[i], top[i], alpha[i]));
  }
}
#endif

#ifndef __engine_have_libaroma_alpha_rgba_fill
void libaroma_alpha_rgba_fill(int n, wordp dst, wordp bottom,
    word top, byte alpha) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = libaroma_alpha(bottom[i], top, alpha);
  }
}
#endif

#ifndef __engine_have_libaroma_alpha_rgba_fill_line
void libaroma_alpha_rgba_fill_line(int _Y, int n, wordp dst, wordp bottom,
    word top, byte alpha) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = libaroma_dither(i, _Y,
      libaroma_alpha32(bottom[i], top, alpha)
    );
  }
}
#endif

#ifndef __engine_have_libaroma_alpha_mono
void libaroma_alpha_mono(int n, wordp dst, wordp bottom,
    word top, bytep alpha) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = libaroma_alpha(bottom[i], top, alpha[i]);
  }
}
#endif

#ifndef __engine_have_libaroma_alpha_multi_line
void libaroma_alpha_multi_line(int n, wordp dst, wordp bottom,
    word top, bytep alphargb) {
  int i;

  for (i = 0; i < n; i++) {
    int j = i * 3;
    dst[i] = libaroma_alpha_multi(bottom[i], top, alphargb[j],
      alphargb[j + 1],  alphargb[j + 2]);
  }
}
#endif


#endif /* __libaroma_alpha_c__ */

