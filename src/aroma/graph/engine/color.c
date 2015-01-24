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
 * Filename    : color.c
 * Description : color graph engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_color_c__
#define __libaroma_color_c__

word libaroma_rgb_from_string(const char * c) {
  if (c[0] != '#') {
    return 0;
  }
  char out[9] = {'0', 'x'};
  int  i;
  if (strlen(c) == 7) {
    for (i = 1; i < 7; i++) {
      out[i + 1] = c[i];
    }
  }
  else if (strlen(c) == 4) {
    for (i = 0; i < 3; i++) {
      out[(i * 2) + 2] = c[i + 1];
      out[(i * 2) + 3] = c[i + 1];
    }
  }
  else {
    return 0;
  }
  out[8] = 0;
  return libaroma_rgb_to16(strtoul(out, NULL, 0));
}

/* 16bit color channel */
byte libaroma_color_r(word rgb) {
  return ((byte) (((((word)(rgb)) & 0xF800)) >> 8));
}
byte libaroma_color_g(word rgb) {
  return ((byte) (((((word)(rgb)) & 0x07E0)) >> 3));
}
byte libaroma_color_b(word rgb) {
  return ((byte) (((((word)(rgb)) & 0x001F)) << 3));
}

/* 32bit color channel */
byte libaroma_color_r32(dword rgb) {
  return (byte) ((rgb >> 16) & 0xff);
}
byte libaroma_color_g32(dword rgb) {
  return (byte) ((rgb >> 8) & 0xff);
}
byte libaroma_color_b32(dword rgb) {
  return (byte) (rgb & 0xff);
}
byte libaroma_color_a32(dword rgb) {
  return (byte) ((rgb >> 24) & 0xff);
}

/* 16bit closest color channel */
byte libaroma_color_close_r(byte c) { /* red & blue */
  return (((byte) c) >> 3 << 3);
}
byte libaroma_color_close_g(byte c) {
  return (((byte) c) >> 2 << 2);
}

/* hi color left */
byte libaroma_color_left(byte r, byte g, byte b) {
  return (
    (((r - libaroma_color_close_r(r)) & 7) << 5) |
    (((g - libaroma_color_close_g(g)) & 3) << 3) |
    ((b - libaroma_color_close_b(b)) & 7)
  );
}

/* merge hi color & main color */
dword libaroma_color_merge(word color, byte hicolor) {
  return libaroma_rgba(
    libaroma_color_r(color) + (hicolor >> 5),
    libaroma_color_g(color) + ((hicolor >> 3) & 3),
    libaroma_color_b(color) + (hicolor & 7),
    0xff
  );
}
byte libaroma_color_merge_r(word color, byte hicolor) {
  return ((byte) (((((word)(color)) & 0xF800)) >> 8)) + (hicolor >> 5);
}
byte libaroma_color_merge_g(word color, byte hicolor) {
  return ((byte) (((((word)(color)) & 0x07E0)) >> 3)) + ((hicolor >> 3) & 3);
}
byte libaroma_color_merge_b(word color, byte hicolor) {
  return ((byte) (((((word)(color)) & 0x001F)) << 3)) + (hicolor & 7);
}

/* 16bit rgb */
word libaroma_rgb(byte r, byte g, byte b) {
  return ((word)((r >> 3) << 11)|((g >> 2) << 5) | (b >> 3));
}
/* 32bit rgba */
dword libaroma_rgba(byte r, byte g, byte b, byte a) {
  return (dword)
  (
    ((r & 0xff) << 16) |
    ((g & 0xff) << 8) |
    (b & 0xff) |
    ((a & 0xff) << 24)
  );
}
/* 32bit rgb */
dword libaroma_rgb32(byte r, byte g, byte b) {
  return libaroma_rgba(r, g, b, 0xff);
}

/* Convert 32bit color to 16bit color */
word libaroma_rgb_to16(dword rgb) {
  return libaroma_rgb(
    libaroma_color_r32(rgb), 
    libaroma_color_g32(rgb), 
    libaroma_color_b32(rgb));
}

/* Convert 16bit color to 32bit color */
dword libaroma_rgb_to32(word rgb) {
  return libaroma_rgb32(
    libaroma_color_r(rgb), 
    libaroma_color_g(rgb), 
    libaroma_color_b(rgb)
  );
}

/* Convert 16bit color to RGBA */
dword libaroma_rgb_to_rgba(word rgb, byte alpha) {
  return libaroma_rgba(
    libaroma_color_r(rgb),
    libaroma_color_g(rgb),
    libaroma_color_b(rgb),
    alpha
  );
}

#ifdef LIBAROMA_CONFIG_ENGINE_COLOR
#include LIBAROMA_CONFIG_ENGINE_COLOR
#endif

#ifndef __engine_have_libaroma_color_set
void libaroma_color_set(wordp dst, word color, int n) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = color;
  }
}
#endif

#ifndef __engine_have_libaroma_color_set32
void libaroma_color_set32(dwordp dst, dword color, int n) {
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = color;
  }
}
#endif

#ifndef __engine_have_libaroma_color_copy32
void libaroma_color_copy32(dwordp dst, wordp src, int n, bytep rgb_pos) {
  int i;
  for (i = 0; i < n; i++) {
    word cl = src[i];
    dst[i] = (
       ((libaroma_color_r(cl) & 0xff) << rgb_pos[0]) |
       ((libaroma_color_g(cl) & 0xff) << rgb_pos[1]) |
       ((libaroma_color_b(cl) & 0xff) << rgb_pos[2])
     );
  }
}
#endif

#ifndef __engine_have_libaroma_color_copy16
void libaroma_color_copy16(wordp dst, dwordp src, int n, bytep rgb_pos) {
  int i;
  for (i = 0; i < n; i++) {
    dword cl = src[i];
    dst[i] = libaroma_rgb(
       (byte) ((cl >> rgb_pos[0]) & 0xff),
       (byte) ((cl >> rgb_pos[1]) & 0xff),
       (byte) ((cl >> rgb_pos[2]) & 0xff)
     );
  }
}
#endif

#endif /* __libaroma_color_c__ */
