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
 * Filename    : engine.h
 * Description : graph engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_h__
  #error "Include <aroma.h> instead."
#endif
#ifndef __libaroma_engine_h__
#define __libaroma_engine_h__

/*
 * color macros
 */
#ifdef RGB
#undef RGB
#endif
#define RGB(X) libaroma_rgb_to16(0x##X)
#define libaroma_color_hi_b libaroma_color_hi_r
#define libaroma_color_close_b libaroma_color_close_r

/*
 * inline color functions
 */
static inline byte libaroma_color_r(word rgb) {
  return ((byte) (((((word)(rgb)) & 0xF800)) >> 8));
}
static inline byte libaroma_color_g(word rgb) {
  return ((byte) (((((word)(rgb)) & 0x07E0)) >> 3));
}
static inline byte libaroma_color_b(word rgb) {
  return ((byte) (((((word)(rgb)) & 0x001F)) << 3));
}
static inline byte libaroma_color_hi_r(byte v){
  return (v | (v >> 5));
}
static inline byte libaroma_color_hi_g(byte v){
  return (v | (v >> 6));
}
static inline byte libaroma_color_r32(dword rgb) {
  return (byte) ((rgb >> 16) & 0xff);
}
static inline byte libaroma_color_g32(dword rgb) {
  return (byte) ((rgb >> 8) & 0xff);
}
static inline byte libaroma_color_b32(dword rgb) {
  return (byte) (rgb & 0xff);
}
static inline byte libaroma_color_a32(dword rgb) {
  return (byte) ((rgb >> 24) & 0xff);
}
static inline byte libaroma_color_close_r(byte c) {
  return (((byte) c) >> 3 << 3);
}
static inline byte libaroma_color_close_g(byte c) {
  return (((byte) c) >> 2 << 2);
}
static inline byte libaroma_color_left(byte r, byte g, byte b) {
  return (
    (((r - libaroma_color_close_r(r)) & 7) << 5) |
    (((g - libaroma_color_close_g(g)) & 3) << 3) |
    ((b - libaroma_color_close_b(b)) & 7)
  );
}
static inline word libaroma_rgb(byte r, byte g, byte b) {
  return ((word)((r >> 3) << 11)|((g >> 2) << 5) | (b >> 3));
}
static inline dword libaroma_rgba(byte r, byte g, byte b, byte a) {
  return (dword)
  (
    ((r & 0xff)<<16)|((g & 0xff)<<8)|(b & 0xff)|((a & 0xff) << 24)
  );
}
static inline dword libaroma_rgb32(byte r, byte g, byte b) {
  return libaroma_rgba(r, g, b, 0xff);
}
static inline word libaroma_rgb_to16(dword rgb) {
  return libaroma_rgb(
    libaroma_color_r32(rgb), 
    libaroma_color_g32(rgb), 
    libaroma_color_b32(rgb));
}
static inline dword libaroma_color_merge(word color, byte hicolor) {
  return libaroma_rgba(
    libaroma_color_r(color) + (hicolor >> 5),
    libaroma_color_g(color) + ((hicolor >> 3) & 3),
    libaroma_color_b(color) + (hicolor & 7),
    0xff
  );
}
static inline byte libaroma_color_merge_r(word color, byte hicolor) {
  return ((byte) (((((word)(color)) & 0xF800)) >> 8)) + (hicolor >> 5);
}
static inline byte libaroma_color_merge_g(word color, byte hicolor) {
  return ((byte) (((((word)(color)) & 0x07E0)) >> 3)) + ((hicolor >> 3) & 3);
}
static inline byte libaroma_color_merge_b(word color, byte hicolor) {
  return ((byte) (((((word)(color)) & 0x001F)) << 3)) + (hicolor & 7);
}

/*
 * scalar color functions
 */
word libaroma_rgb_from_string(const char * c);
byte libaroma_color_luminance(word rgb);
byte libaroma_color_isdark(word rgb);

/* HUE SATURATION */
word libaroma_color_hsv(int h, int s, int v);
int libaroma_color_hue(word color, int * saturation, int * luminance);

dword libaroma_rgb_to32(word rgb);
dword libaroma_rgb_to_rgba(word rgb, byte alpha);

/*
 * scalar dithering
 */
byte * libaroma_dither_table_r();
byte * libaroma_dither_table_g();
byte * libaroma_dither_table_b();
byte libaroma_dither_table_pos(int x, int y);
byte libaroma_dither_r(byte p);
byte libaroma_dither_g(byte p);
byte libaroma_dither_b(byte p);
word libaroma_dither_rgb(int x, int y, byte sr, byte sg, byte sb);
word libaroma_dither_mono_rgb(int x, int y, byte sr, byte sg, byte sb);
word libaroma_dither_mono(int x, int y, dword col);
word libaroma_dither(int x, int y, dword col);

/*
 * scalar alpha blend
 */
word libaroma_alpha(word dcl, word scl, byte l);
dword libaroma_alpha32(word dcl, word scl, byte l);
word libaroma_alpha_multi(word dcl, word scl, byte lr, byte lg, byte lb);
word libaroma_alphab(word scl, byte l);

#endif /* __libaroma_engine_h__ */
