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
 * Description : color engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_color_c__
#define __libaroma_color_c__
#include <aroma_internal.h>


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

/* calculate color luminance */
byte libaroma_color_luminance(word rgb){
  return (byte) MIN(0xff,MAX(0,
    ((
      libaroma_color_r(rgb)*306+
      libaroma_color_g(rgb)*602+
      libaroma_color_b(rgb)*116
    )>>10)
  ));
}

/* is dark color */
byte libaroma_color_isdark(word rgb){
  if (libaroma_color_luminance(rgb)>128){
    return 0;
  }
  return 1;
}

/* hsv to rgb */
word libaroma_color_hsv(int h, int s, int v){
  float hue = (float) h;
  float sat = ((float) s)/100.0;
  float lum = ((float) v)/100.0;
  float hh, p, q, t, ff;
  
  if(sat<=0.0){
    byte lv = MIN(MAX((int) round(lum*255),0),255);
    return libaroma_rgb(lv,lv,lv);
  }
  hh = hue;
  if(hh >= 360.0){
    hh = 0.0;
  }
  hh /= 60.0;
  long i = (long) hh;
  ff = hh - i;
  p = lum * (1.0 - sat);
  q = lum * (1.0 - (sat * ff));
  t = lum * (1.0 - (sat * (1.0 - ff)));
  float o_r;
  float o_g;
  float o_b;
  switch(i) {
    case 0:
        o_r = lum;
        o_g = t;
        o_b = p;
        break;
    case 1:
        o_r = q;
        o_g = lum;
        o_b = p;
        break;
    case 2:
        o_r = p;
        o_g = lum;
        o_b = t;
        break;
  
    case 3:
        o_r = p;
        o_g = q;
        o_b = lum;
        break;
    case 4:
        o_r = t;
        o_g = p;
        o_b = lum;
        break;
    case 5:
    default:
        o_r = lum;
        o_g = p;
        o_b = q;
        break;
  }
  byte lr = MIN(MAX((int) round(o_r*255),0),255);
  byte lg = MIN(MAX((int) round(o_g*255),0),255);
  byte lb = MIN(MAX((int) round(o_b*255),0),255);
  return libaroma_rgb(lr,lg,lb);
}

/* Get HSV from RGB - return HUE */
int libaroma_color_hue(word color, int * saturation, int * luminance){
  float red = (float) libaroma_color_r(color);
  float green = (float) libaroma_color_g(color);
  float blue = (float) libaroma_color_b(color);
  red/=255;
  green/=255;
  blue/=255;
  float mn = MIN(MIN(red, green), blue);
  float mx = MIN(MIN(red, green), blue);

  float hue = 0.0;
  if (mx == red) {
    hue = (green - blue) / (mx - mn);
  }
  else if (mx == green) {
    hue = 2.0 + (blue - red) / (mx - mn);
  }
  else {
    hue = 4.0 + (red - green) / (mx - mn);
  }
  hue = hue * 60;
  if (hue < 0){
    hue = hue + 360;
  }
  float lum = mx;
  float sat = 0;
  if (mn!=mx){
    sat = (mx-mn) / mx;
  }
  if (luminance!=NULL){
    *luminance = (int) round(lum*100);
  }
  if (saturation!=NULL){
    *saturation= (int) round(sat*100);
  }
  return (int) round(hue);
}

/* Convert 16bit color to 32bit color */
dword libaroma_rgb_to32(word rgb) {
#ifdef LIBAROMA_CONFIG_USE_HICOLOR_BIT
  return libaroma_rgb32(
    libaroma_color_hi_r(libaroma_color_r(rgb)), 
    libaroma_color_hi_g(libaroma_color_g(rgb)), 
    libaroma_color_hi_b(libaroma_color_b(rgb))
  );
#else
return libaroma_rgb32(
    libaroma_color_r(rgb), 
    libaroma_color_g(rgb), 
    libaroma_color_b(rgb)
  );
#endif
}

/* Convert 16bit color to RGBA */
dword libaroma_rgb_to_rgba(word rgb, byte alpha) {
#ifdef LIBAROMA_CONFIG_USE_HICOLOR_BIT
  return libaroma_rgba(
    libaroma_color_hi_r(libaroma_color_r(rgb)),
    libaroma_color_hi_g(libaroma_color_g(rgb)),
    libaroma_color_hi_b(libaroma_color_b(rgb)),
    alpha
  );
#else
return libaroma_rgba(
    libaroma_color_r(rgb), 
    libaroma_color_g(rgb), 
    libaroma_color_b(rgb),
    alpha
  );
#endif
}

#ifndef __engine_have_libaroma_color_set
void libaroma_color_set(wordp dst, word color, int n) {
#ifdef libaroma_memset16
  libaroma_memset16(dst,color,n);
#else
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
#endif
}
#endif

#ifndef __engine_have_libaroma_color_set32
void libaroma_color_set32(dwordp dst, dword color, int n) {
#ifdef libaroma_memcpy32
  libaroma_memcpy32(dst,color,n);
#else
  int i;
  for (i = 0; i < n; i++) {
    dst[i] = color;
  }
#endif
}
#endif

#ifndef __engine_have_libaroma_color_copy32
void libaroma_color_copy32(dwordp dst, wordp src, int n, bytep rgb_pos) {
  int i;
  for (i = 0; i < n; i++) {
    word cl = src[i];
#ifdef LIBAROMA_CONFIG_USE_HICOLOR_BIT
    dst[i] = (
       ((libaroma_color_hi_r(libaroma_color_r(cl)) & 0xff) << rgb_pos[0]) |
       ((libaroma_color_hi_g(libaroma_color_g(cl)) & 0xff) << rgb_pos[1]) |
       ((libaroma_color_hi_b(libaroma_color_b(cl)) & 0xff) << rgb_pos[2])
     );
#else
    dst[i] = (
       ((libaroma_color_r(cl) & 0xff) << rgb_pos[0]) |
       ((libaroma_color_g(cl) & 0xff) << rgb_pos[1]) |
       ((libaroma_color_b(cl) & 0xff) << rgb_pos[2])
     );
#endif
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

#ifndef __engine_have_libaroma_color_copy_rgb24
/* copy to rgb24 */
void libaroma_color_copy_rgb24(
  bytep __restrict dst, wordp __restrict src, int n){
  int i;
  int j = 0;
  for (i=0;i<n;i++) {
    word cl = src[i];
    dst[j++] = libaroma_color_r(cl);
    dst[j++] = libaroma_color_g(cl);
    dst[j++] = libaroma_color_b(cl);
  }
}
#endif

#ifndef __engine_have_libaroma_color_copy_bgr24
/* copy to bgr24 */
void libaroma_color_copy_bgr24(
  bytep __restrict dst, wordp __restrict src, int n){
  int i;
  int j = 0;
  for (i=0;i<n;i++) {
    word cl = src[i];
    dst[j++] = libaroma_color_b(cl);
    dst[j++] = libaroma_color_g(cl);
    dst[j++] = libaroma_color_r(cl);
  }
}
#endif


#ifndef __engine_have_libaroma_color_24to16
void libaroma_color_24to16(wordp dst, bytep src, int n) {
  int x, z;
  for (x=0,z=n*3;x<z;x+=3) {
    *dst++ = libaroma_rgb(src[x], src[x+1], src[x+2]);
  }
}
#endif


#endif /* __libaroma_color_c__ */
