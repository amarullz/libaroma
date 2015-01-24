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
 * Filename    : blur.c
 * Description : blur processor
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 19/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_blur_c__
#define __libaroma_blur_c__

float * _libaroma_blur_kernel(const int inRadius) {
  int mem_amount = (inRadius * 2) + 1;
  float * gaussian_kernel = (float *) malloc(mem_amount * sizeof(float));
  float twoRadiusSquaredRecip = 1.0 / (2.0 * inRadius * inRadius);
  float sqrtTwoPiTimesRadiusRecip = 1.0 / (sqrt(2.0 * __PI) * inRadius);
  int r = -inRadius;
  float sum = 0.0f;
  int i;
  for (i = 0; i < mem_amount; i++) {
    float x = r * r;
    float v = sqrtTwoPiTimesRadiusRecip * exp(-x * twoRadiusSquaredRecip);
    gaussian_kernel[i] = v;
    sum += v;
    r++;
  }
  float div = sum;
  for (i = 0; i < mem_amount; i++) {
    gaussian_kernel[i] /= div;
  }
  return gaussian_kernel;
}

/*
 * Function    : libaroma_blur_ex
 * Return Value: LIBAROMA_CANVASP
 * Descriptions: create new blur-ed canvas - extended
 */
LIBAROMA_CANVASP libaroma_blur_ex(
  LIBAROMA_CANVASP src,
  const int inRadius,
  byte isMask,
  word maskColor
) {
  if (inRadius < 1) {
    return NULL;
  }
  byte usealpha = (src->alpha ? 1 : 0);
  if (isMask && !usealpha) {
    return NULL;
  }
  float * kernel = _libaroma_blur_kernel(inRadius);
  int radius2 = inRadius * 2;
  int pixels_on_row = radius2 + 1;
  int height = src->h;
  int width = src->w;
  int height_clamp = height - 1;
  int width_clamp = width - 1;
  int x, y, o;
  int nwidth = width + pixels_on_row;
  int nheight = height + pixels_on_row;
  LIBAROMA_CANVASP t1 = libaroma_canvas_ex(nwidth, nheight, usealpha);
  LIBAROMA_CANVASP t2 = libaroma_canvas_ex(nwidth, nheight, usealpha);
  int sz = nwidth * nheight;
  if (usealpha) {
    memset(t1->alpha, 0, sz);
    memset(t2->alpha, 0, sz);
  }
  int r, g, b, a;
  /* X PASS */
  for (y = 0; y < height; y++) {
    int row = y * src->l;
    int drw = (y + inRadius) * t1->l;
    for (x = 0; x < nwidth; x++) {
      r = g = b = a = 0;
      for (o = 0; o < pixels_on_row; o++) {
        int sx = (x - radius2) + o;
        if (!libaroma_draw_limited(sx, width)) {
          int pos = row + sx;
          if (!isMask) {
            word c = src->data[pos];
            r += libaroma_color_r(c) * kernel[o];
            g += libaroma_color_g(c) * kernel[o];
            b += libaroma_color_b(c) * kernel[o];
          }
          if (usealpha) {
            a += src->alpha[pos] * kernel[o];
          }
        }
      }
      int dpos = drw + x;
      if (!isMask) {
        r = max(min(r, 0xff), 0);
        g = max(min(g, 0xff), 0);
        b = max(min(b, 0xff), 0);
        t1->data[dpos] = libaroma_dither_rgb(x, y, r, g, b);
        if (usealpha) {
          a = max(min(a, 0xff), 0);
          t1->alpha[dpos] = a;
        }
      }
      else {
        a = max(min(a, 0xff), 0);
        t1->alpha[dpos] = a;
      }
    }
  }
  /* Y PASS */
  for (y = 0; y < nheight; y++) {
    int row = y * t1->l;
    
    for (x = 0; x < nwidth; x++) {
      r = g = b = a = 0;
      
      for (o = 0; o < pixels_on_row; o++) {
        int sy = (y - radius2) + o;
        
        if (!libaroma_draw_limited(sy, nheight)) {
          int pos = (sy * t1->l) + x;
          if (!isMask) {
            word c = t1->data[pos];
            r += libaroma_color_r(c) * kernel[o];
            g += libaroma_color_g(c) * kernel[o];
            b += libaroma_color_b(c) * kernel[o];
          }
          if (usealpha) {
            a += t1->alpha[pos] * kernel[o];
          }
        }
      }
      int dpos = row + x;
      if (!isMask) {
        r = max(min(r, 0xff), 0);
        g = max(min(g, 0xff), 0);
        b = max(min(b, 0xff), 0);
        t2->data[dpos] = libaroma_dither_rgb(x, y, r, g, b);
        if (usealpha) {
          a = max(min(a, 0xff), 0);
          t2->alpha[dpos] = a;
        }
      }
      else {
        a = max(min(a, 0xff), 0);
        t2->alpha[dpos] = a;
        t2->data[dpos] = maskColor;
      }
    }
  }
  free(kernel);
  libaroma_canvas_free(t1);
  return t2;
} /* End of libaroma_blur_ex */

#endif /* __libaroma_blur_c__ */
