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
 * Filename    : gradient.c
 * Description : gradient drawing
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_gradient_c__
#define __libaroma_gradient_c__
#include <aroma_internal.h>


bytep _libaroma_gradient_corner(
    int r) {
  if (r < 1) {
    ALOGW("_libaroma_gradient_corner radius<1");
    return NULL;
  }
  /* Allocating Memory */
  int i, n;
  int sz    = r * r;
  bytep out = calloc(sz,1);
  /* Pythagoras Based */
  for (i = 1; i <= r; i++) {
    float w   = sqrt(sz - i * i);
    int fw    = (int) floor(w);
    byte t    = (byte) MIN(round((w - ((float) fw)) * 0xff), 0xff);
    int idx   = ((r - i)   * r) + (r - fw - 1);
    out[idx]  = (byte) MAX(t, out[idx]);
    idx       = ((r - fw - 1) * r) + (r - i);
    out[idx]  = (byte) MAX(t, out[idx]);
    /* Set opaque for leftover pixels */
    for (n = 1; n <= fw; n++) {
      idx = ((r - i) * r) + (r - n);
      out[idx] = 0xff;
    }
  }
  return out;
}

static inline void _libaroma_gradient_draw_rounded(
    wordp __restrict line_mem, bytep __restrict line_alpha,
    wordp __restrict roundTmp,
    bytep __restrict roundData, int roundSize, byte isRight, int y) {
  int i;
  if (line_alpha != NULL) {
    if (isRight) {
      for (i = 0; i < roundSize; i++) {
        line_alpha[i] = MAX(line_alpha[i] +
          roundData[y * roundSize + (roundSize - i) - 1] - 0xff, 0);
      }
    }
    else {
      for (i = 0; i < roundSize; i++) {
        line_alpha[i] = MAX(line_alpha[i] +
          roundData[y * roundSize + i] - 0xff, 0);
      }
    }
  }
  else {
    if (isRight) {
      for (i = 0; i < roundSize; i++) {
        line_mem[i] = libaroma_alpha(roundTmp[i],
          line_mem[i], roundData[y * roundSize + (roundSize - i) - 1]);
      }
    }
    else {
      libaroma_alpha_px(
        roundSize,
        line_mem,
        roundTmp,
        line_mem,
        roundData+y*roundSize
      );/*
      for (i = 0; i < roundSize; i++) {
        line_mem[i] = libaroma_alpha(roundTmp[i],
          line_mem[i], roundData[y * roundSize + i]);
      }*/
    }
  }
}

/*
 * Function    : libaroma_gradient_ex1
 * Return Value: byte
 * Descriptions: draw gradient rectangle
 */
byte libaroma_gradient_ex1(
    LIBAROMA_CANVASP dst,
    int x, int y, int w, int h,
    word startColor, word endColor,
    int roundSize, word roundFlag,
    byte startAlpha, byte endAlpha,
    byte flags) {
  if (dst == NULL) {
    dst = libaroma_fb()->canvas;
  }
  
  byte noDither = (flags&LIBAROMA_DRAW_NODITHER)?1:0;
    
  /* fix position */
  int x2 = x + w;
  int y2 = y + h;
  if (x2 > dst->w) {
    x2 = dst->w;
  }
  if (y2 > dst->h) {
    y2 = dst->h;
  }
  if (x < 0) {
    x = 0;
  }
  if (y < 0) {
    y = 0;
  }
  byte samecolor = (startColor==endColor)?1:0;
  
  /* alpha handling */
  byte useAlpha       = 1;
  byte useCanvasAlpha = 0;
  byte ignoreAlpha    = (roundSize < 0) ? 1 : 0;
  if ((startAlpha == 0xff) && (endAlpha == 0xff)) {
    useAlpha = 0;
  }
  if (!(flags&LIBAROMA_DRAW_NO_DST_ALPHA)){
    if (dst->alpha != NULL) {
      useCanvasAlpha = 1;
      useAlpha = 0;
    }
  }
  if (ignoreAlpha) {
    roundSize = 0;
    useAlpha = 0;
    useCanvasAlpha = 0;
  }
  
  /* prepare */
  w = x2 - x;
  h = y2 - y;
  if (roundSize > h / 2) {
    roundSize = h / 2;
  }
  if (roundSize > w / 2) {
    roundSize = w / 2;
  }
  byte  roundCorners[4] = { 0, 0, 0, 0 };
  bytep roundData = NULL;
  if ((roundSize > 0) && (roundFlag != 0)) {
    roundCorners[0]  = ((roundFlag & 0x1000) == 0x1000) ? 1 : 0;
    roundCorners[1]  = ((roundFlag & 0x0100) == 0x0100) ? 1 : 0;
    roundCorners[2]  = ((roundFlag & 0x0010) == 0x0010) ? 1 : 0;
    roundCorners[3]  = ((roundFlag & 0x0001) == 0x0001) ? 1 : 0;
    roundData = _libaroma_gradient_corner(roundSize);
  }
  
  /* draw */
  int _Y;
#ifdef LIBAROMA_CONFIG_OPENMP
  #pragma omp parallel for
#endif
  for (_Y = 0; _Y < h; _Y++) {
    bytep line_alpha = NULL;
    wordp roundTmp  = NULL;
    if (roundData!=NULL){
      roundTmp  = (wordp) malloc(roundSize * 2 * 2);
    }
    int ypos = y + _Y;
    byte cR=0,cG=0,cB=0;
#ifdef LIBAROMA_CONFIG_GRADIENT_FLOAT
    float intensity   = ((float) _Y) / ((float) h);
    float r_intensity = 1.0 - intensity;
    if (!samecolor){
      cR = ((byte) MIN(((libaroma_color_r(startColor) * r_intensity) +
        (libaroma_color_r(endColor) * intensity)), 0xff) );
      cG = ((byte) MIN(((libaroma_color_g(startColor) * r_intensity) +
        (libaroma_color_g(endColor) * intensity)), 0xff) );
      cB = ((byte) MIN(((libaroma_color_b(startColor) * r_intensity) +
        (libaroma_color_b(endColor) * intensity)), 0xff) );
    }
#else
    word intensity   = (_Y * 0x100) / h;
    word r_intensity = 0x100 - intensity;
    if (!samecolor){
      cR = ((byte) MIN((((libaroma_color_r(startColor) * r_intensity)>>8)+
        ((libaroma_color_r(endColor) * intensity) >> 8)), 0xff) );
      cG = ((byte) MIN((((libaroma_color_g(startColor) * r_intensity)>>8)+
        ((libaroma_color_g(endColor) * intensity) >> 8)), 0xff) );
      cB = ((byte) MIN((((libaroma_color_b(startColor) * r_intensity)>>8)+
        ((libaroma_color_b(endColor) * intensity) >> 8)), 0xff) );
    }
#endif
    int data_posxy = (ypos * dst->l) + x;
    wordp line_mem = (wordp) dst->data + data_posxy;
    if (useCanvasAlpha) {
      line_alpha = dst->alpha+data_posxy;
    }
    /* Save Bg Data */
    byte drawRound = 0;
    if (roundData != NULL) {
      if (_Y < roundSize) {
        if (roundCorners[0]) {
          memcpy(roundTmp, line_mem, roundSize * 2);
          drawRound = 1;
        }
        if (roundCorners[1]) {
          memcpy(roundTmp + roundSize, 
            line_mem + w - roundSize, roundSize * 2);
          drawRound = 1;
        }
      }
      else if (_Y >= h - roundSize) {
        if (roundCorners[2]) {
          memcpy(roundTmp, line_mem, roundSize * 2);
          drawRound = 1;
        }
        if (roundCorners[3]) {
          memcpy(roundTmp + roundSize, 
            line_mem + w - roundSize, roundSize * 2);
          drawRound = 1;
        }
      }
    }
    
    /* Draw Now */
    if (useAlpha) {
      byte cA = startAlpha;
      if (startAlpha!=endAlpha){
#ifdef LIBAROMA_CONFIG_GRADIENT_FLOAT
      cA = ((byte) MIN(
        ((startAlpha * r_intensity) + (endAlpha * intensity)), 0xff));
#else
      cA = ((byte) MIN(
        (((startAlpha * r_intensity) >> 8) +
        ((endAlpha * intensity) >> 8)), 0xff));
#endif
      }
      if (!samecolor){
        if (noDither){
          /*
          libaroma_color_set(alphaTmpLine, libaroma_rgb(cR, cG, cB), w);
          libaroma_alpha_const(w,
            line_mem, line_mem, alphaTmpLine, cA);
          */
          libaroma_alpha_rgba_fill(w,
            line_mem,
            line_mem,
            libaroma_rgb(cR, cG, cB),
            cA
          );
        }
        else{
          libaroma_alpha_rgba_fill_line(_Y,w,
            line_mem,
            line_mem,
            libaroma_rgb(cR, cG, cB),
            cA
          );
          /*
          libaroma_dither_line_const(_Y, w,
            alphaTmpLine, libaroma_rgb32(cR, cG, cB));
          libaroma_alpha_const_line(_Y, w,
            line_mem, line_mem, alphaTmpLine, cA);*/
        }
      }
      else{
        libaroma_alpha_rgba_fill(w,line_mem,line_mem,startColor,cA);
      }
    }
    else {
      if (!samecolor){
        if (noDither){
          libaroma_color_set(line_mem, libaroma_rgb(cR, cG, cB), w);
        }
        else{
          libaroma_dither_line_const(_Y, w, 
            line_mem, libaroma_rgb32(cR, cG, cB));
        }
      }
      else{
        libaroma_color_set(line_mem, startColor, w);
      }
      
      if (useCanvasAlpha) {
        byte cA = startAlpha;
        if (startAlpha!=endAlpha){
#ifdef LIBAROMA_CONFIG_GRADIENT_FLOAT
          cA = ((byte) MIN(((startAlpha * r_intensity) +
            (endAlpha * intensity)), 0xff));
#else
          cA = ((byte) MIN((((startAlpha * r_intensity) >> 8) +
            ((endAlpha * intensity) >> 8)), 0xff));
#endif
        }
        memset(line_alpha, cA, w);
      }
    }
    /* corners */
    if (drawRound) {
      if (_Y < roundSize) {
        if (roundCorners[0]) {
          _libaroma_gradient_draw_rounded(line_mem, line_alpha, roundTmp,
            roundData, roundSize, 0, _Y);
        }
        if (roundCorners[1]) {
          if (line_alpha != NULL) {
            line_alpha = line_alpha + w - (roundSize);
          }
          _libaroma_gradient_draw_rounded(line_mem + w - roundSize,
            line_alpha, roundTmp + roundSize, roundData, roundSize, 1, _Y);
        }
      }
      else if (_Y >= h - roundSize) {
        if (roundCorners[2]) {
          _libaroma_gradient_draw_rounded(line_mem, line_alpha, roundTmp,
            roundData, roundSize, 0, h - _Y - 1);
        }
        if (roundCorners[3]) {
          if (line_alpha != NULL) {
            line_alpha = line_alpha + w - (roundSize);
          }
          _libaroma_gradient_draw_rounded(line_mem + w - roundSize,
            line_alpha, roundTmp + roundSize,
            roundData, roundSize, 1, h - _Y - 1);
        }
      }
    }
    /*
    if (useAlpha) {
      free(alphaTmpLine);
    }*/
    if (roundData != NULL) {
      free(roundTmp);
    }
  }
  if (roundData != NULL) {
    free(roundData);
    //free(roundTmp);
  }
  return 1;
} /* End of libaroma_gradient_ex1 */


#endif /* __libaroma_gradient_c__ */

