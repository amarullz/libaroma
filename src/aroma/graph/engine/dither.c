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
 * Filename    : dither.c
 * Description : dither engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_dither_c__
#define __libaroma_dither_c__

byte libaroma_dither_table_pos(int x, int y) {
  return ((y & 7) << 3) + (x & 7);
}
byte libaroma_dither_r(byte p) {
  return libaroma_dither_tresshold_r[p];
}
byte libaroma_dither_g(byte p) {
  return libaroma_dither_tresshold_g[p];
}
byte libaroma_dither_b(byte p) {
  return libaroma_dither_tresshold_b[p];
}
word libaroma_dither_rgb(int x, int y, byte sr, byte sg, byte sb) {
  byte dither_xy = ((y & 7) << 3) + (x & 7);
  byte r = libaroma_color_close_r(min(sr +
                    libaroma_dither_tresshold_r[dither_xy], 0xff));
  byte g = libaroma_color_close_g(min(sg +
                    libaroma_dither_tresshold_g[dither_xy], 0xff));
  byte b = libaroma_color_close_b(min(sb +
                    libaroma_dither_tresshold_b[dither_xy], 0xff));
  return libaroma_rgb(r, g, b);
}
word libaroma_dither_mono_rgb(int x, int y, byte sr, byte sg, byte sb) {
  byte dither_xy = libaroma_dither_tresshold_g[((y & 7) << 3) + (x & 7)];
  byte dither_xyrb = dither_xy * 2;
  byte r = libaroma_color_close_r(min(sr + dither_xyrb, 0xff));
  byte g = libaroma_color_close_g(min(sg + dither_xy, 0xff));
  byte b = libaroma_color_close_b(min(sb + dither_xyrb, 0xff));
  return libaroma_rgb(r, g, b);
}
word libaroma_dither_mono(int x, int y, dword col) {
  return libaroma_dither_mono_rgb(x, y, 
    libaroma_color_r32(col), 
    libaroma_color_g32(col), 
    libaroma_color_b32(col));
}
word libaroma_dither(int x, int y, dword col) {
  return libaroma_dither_rgb(x, y, 
    libaroma_color_r32(col), 
    libaroma_color_g32(col), 
    libaroma_color_b32(col));
}

#ifdef LIBAROMA_CONFIG_ENGINE_DITHER
#include LIBAROMA_CONFIG_ENGINE_DITHER
#endif

#ifndef __engine_have_libaroma_dither_line
void libaroma_dither_line(int y, int w, wordp dst, const dwordp src) {
  int i;

  for (i = 0; i < w; i++) {
    dst[i] = libaroma_dither(i, y, src[i]);
  }
}
#endif

#ifndef __engine_have_libaroma_dither_line_const
void libaroma_dither_line_const(int y, int w, wordp dst, dword src) {
  int i;
  for (i = 0; i < w; i++) {
    dst[i] = libaroma_dither(i, y, src);
  }
}
#endif

#endif /* __libaroma_dither_c__ */
