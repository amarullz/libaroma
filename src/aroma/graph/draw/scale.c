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
 * Filename    : scale.c
 * Description : scale drawing
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 06/04/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_scale_c__
#define __libaroma_scale_c__
#include <aroma_internal.h>

/*
 * Function    : libaroma_draw_scale_nearest
 * Return Value: byte
 * Descriptions: scale nearest
 */
byte libaroma_draw_scale_nearest(
  LIBAROMA_CANVASP dst, LIBAROMA_CANVASP src,
  int dx, int dy, int dw, int dh,
  int sx, int sy, int sw, int sh
) {
  if (dst == NULL) {
    dst = libaroma_fb()->canvas;
  }
  if (src == NULL) {
    ALOGW("libaroma_draw_scale_nearest src = NULL");
    return 0;
  }
  if ((dh < 1) || (dw < 1) || (sh < 1) || (sw < 1)) {
    return 0;
  }
  if ((sx >= src->w) || (sy >= src->h)) {
    return 0;
  }
  if (sx + sw > src->w) {
    sw = src->w - sx;
  }
  if (sy + sh > src->h) {
    sw = src->h - sy;
  }
  int x_ratio = (int)((sw << 16) / dw) + 1;
  int y_ratio = (int)((sh << 16) / dh) + 1;
  int x2, y2, z, v;
  int i, j;
  if (src->alpha == NULL) {
    if (src->hicolor != NULL) {
      for (i = 0; i < dh; i++) {
        y2 = ((i * y_ratio) >> 16);
        z = (y2 + sy) * src->l + sx;
        v = (i + dy) * dst->l + dx;
        wordp t = dst->data + v;
        wordp p = src->data + z;
        bytep h = src->hicolor + z;
        int rat = 0;
        for (j = 0; j < dw; j++) {
          x2   = (rat >> 16);
          *t++ = libaroma_dither(j, i, libaroma_color_merge(p[x2], h[x2]));
          if (dst->alpha) {
            dst->alpha[v + j] = 0xff;
          }
          rat += x_ratio;
        }
      }
    }
    else {
      for (i = 0; i < dh; i++) {
        y2 = ((i * y_ratio) >> 16);
        v = (i + dy) * dst->l + dx;
        wordp t = dst->data + v;
        wordp p = src->data + (y2 + sy) * src->l + sx;
        int rat = 0;
        for (j = 0; j < dw; j++) {
          x2   = (rat >> 16);
          *t++ = p[x2];
          if (dst->alpha) {
            dst->alpha[v + j] = 0xff;
          }
          rat += x_ratio;
        }
      }
    }
  }
  else {
    if (src->hicolor != NULL) {
      for (i = 0; i < dh; i++) {
        y2 = ((i * y_ratio) >> 16);
        z = (y2 + sy) * src->l + sx;
        v = (i + dy) * dst->l + dx;
        wordp t = dst->data + v;
        wordp p = src->data + z ;
        bytep h = src->hicolor + z;
        bytep a = src->alpha + z;
        int rat = 0;
        for (j = 0; j < dw; j++) {
          x2   = (rat >> 16);
          word merge = libaroma_dither(
            dx+j, dy+i,
            libaroma_color_merge(p[x2], h[x2])
          );
          if (dst->alpha) {
            *t = libaroma_alpha(
              libaroma_alpha(merge, *t, dst->alpha[v + j]), merge, a[x2]);
            dst->alpha[v + j] = MIN(dst->alpha[v + j] + a[x2], 0xff);
          }
          else {
            *t = libaroma_alpha(*t, merge, a[x2]);
          }
          t++;
          rat += x_ratio;
        }
      }
    }
    else {
      for (i = 0; i < dh; i++) {
        y2 = ((i * y_ratio) >> 16);
        z = (y2 + sy) * src->l + sx;
        v = (i + dy) * dst->l + dx;
        wordp t = dst->data + v;
        wordp p = src->data + z;
        bytep a = src->alpha + z;
        int rat = 0;
        for (j = 0; j < dw; j++) {
          x2   = (rat >> 16);
          if (dst->alpha) {
            *t = libaroma_alpha(
                libaroma_alpha(p[x2], *t, dst->alpha[v + j]),
              p[x2], a[x2]);
            dst->alpha[v + j] = MIN(dst->alpha[v + j] + a[x2], 0xff);
          }
          else {
            *t = libaroma_alpha(*t, p[x2], a[x2]);
          }
          t++;
          rat += x_ratio;
        }
      }
    }
  }
  return 1;
} /* End of libaroma_draw_scale_nearest */

/*
 * Function    : libaroma_draw_scale_smooth
 * Return Value: byte
 * Descriptions: scale smooth
 */
byte libaroma_draw_scale_smooth(
  LIBAROMA_CANVASP dst, LIBAROMA_CANVASP src,
  int dx, int dy, int dw, int dh,
  int sx, int sy, int sw, int sh
) {
  if (dst == NULL) {
    dst = libaroma_fb()->canvas;
  }
  if (src == NULL) {
    ALOGW("libaroma_draw_scale_smooth src = NULL");
    return 0;
  }
  if ((dh < 1) || (dw < 1) || (sh < 1) || (sw < 1)) {
    return 0;
  }
  if ((sx >= src->w) || (sy >= src->h)) {
    return 0;
  }
  if (sw + sx >= src->w) {
    sw -= (sw + sx) - src->w;
  }
  if (sh + sy >= src->h) {
    sh -= (sh + sy) - src->h;
  }
  if ((dh < 2) || (dw < 2)) {
    /* Use Nearest */
    return libaroma_draw_scale_nearest(
      dst, src, dx, dy, dw, dh, sx, sy, sw, sh);
  }
  dword wStepFixed16b, hStepFixed16b, wCoef, hCoef, x, y;
  dword wc1, wc2, offsetX, offsetY, line1, line2, dline, p1, p2, p3, p4;
  word  pixel1, pixel2, pixel3, pixel4;
  dword  hc1, hc2;
  wStepFixed16b = ((sw - 1) << 16) / (dw - 1);
  hStepFixed16b = ((sh - 1) << 16) / (dh - 1);
  hCoef         = 0;
  for (y = 0 ; y < (dword)dh ; y++) {
    dline   = (dy + y) * dst->l;
    if (dline > (dword)(dst->l*dst->h)) {
      break;
    }
    offsetY = (hCoef >> 16);
    hc2     = (hCoef >> 9) & 127;
    hc1     = 128 - hc2;
    wCoef   = 0;
    line1   = (offsetY + sy) * src->l;
    line2   = libaroma_draw_limit(offsetY+sy+1, sy+sh) * src->l;
    for (x = 0 ; x < (dword)dw ; x++) {
      int dst_pos  = dline + dx + x;
      if (dst_pos > (dst->l*dst->h)) {
        break;
      }
      wordp dstp = dst->data + dst_pos;
      offsetX = (wCoef >> 16);
      wc2 = (wCoef >> 9) & 127;
      wc1 = 128 - wc2;
      int sx1 = libaroma_draw_limit(sx+offsetX+1, sx+sw);
      p1 = line1 + offsetX + sx;
      p2 = line2 + offsetX + sx;
      p3 = line1 + sx1;
      p4 = line2 + sx1;
      /*
      if (p4>(dword)(dst->l*dst->h)) {
        break;
      }*/
      pixel1 = src->data[p1];
      pixel2 = src->data[p2];
      pixel3 = src->data[p3];
      pixel4 = src->data[p4];
      word res;
      if (src->hicolor != NULL) {
        res = libaroma_dither_rgb(x, y,
         ((libaroma_color_merge_r(pixel1, src->hicolor[p1]) * hc1 + 
            libaroma_color_merge_r(pixel2, src->hicolor[p2]) * hc2) *
          wc1 + (libaroma_color_merge_r(pixel3, src->hicolor[p3]) * 
            hc1 + libaroma_color_merge_r(pixel4, src->hicolor[p4]) * hc2) *
            wc2) >> 14,
         ((libaroma_color_merge_g(pixel1, src->hicolor[p1]) * hc1 + 
            libaroma_color_merge_g(pixel2, src->hicolor[p2]) * hc2) *
          wc1 + (libaroma_color_merge_g(pixel3, src->hicolor[p3]) * 
            hc1 + libaroma_color_merge_g(pixel4, src->hicolor[p4]) * hc2) *
            wc2) >> 14,
         ((libaroma_color_merge_b(pixel1, src->hicolor[p1]) * hc1 + 
            libaroma_color_merge_b(pixel2, src->hicolor[p2]) * hc2) *
          wc1 + (libaroma_color_merge_b(pixel3, src->hicolor[p3]) * 
            hc1 + libaroma_color_merge_b(pixel4, src->hicolor[p4]) * hc2) *
            wc2) >> 14
        );
      }
      else {
        res = libaroma_dither_rgb(x, y,
         ((libaroma_color_r(pixel1) * hc1 + libaroma_color_r(pixel2) * hc2) *
            wc1 + (libaroma_color_r(pixel3) * hc1 +
            libaroma_color_r(pixel4) * hc2) * wc2) >> 14,
         ((libaroma_color_g(pixel1) * hc1 + libaroma_color_g(pixel2) * hc2) *
            wc1 + (libaroma_color_g(pixel3) * hc1 +
            libaroma_color_g(pixel4) * hc2) * wc2) >> 14,
         ((libaroma_color_b(pixel1) * hc1 + libaroma_color_b(pixel2) * hc2) *
            wc1 + (libaroma_color_b(pixel3) * hc1 +
            libaroma_color_b(pixel4) * hc2) * wc2) >> 14
        );
      }
      if (src->alpha != NULL) {
        byte al1 = src->alpha[p1];
        byte al2 = src->alpha[p2];
        byte al3 = src->alpha[p3];
        byte al4 = src->alpha[p4];
        if (dst->alpha != NULL) {
          byte asz = (((al1 * hc1 + al2 * hc2) *
            wc1 + (al3 * hc1 + al4 * hc2) * wc2) >> 14);
          *dstp = libaroma_alpha(
              libaroma_alpha(res, *dstp, dst->alpha[dst_pos]), res, asz);
          dst->alpha[dst_pos] = MIN(dst->alpha[dst_pos]+asz, 0xff);
        }
        else {
          *dstp = libaroma_dither(y, x,
            libaroma_alpha32(
              *dstp, res, (((al1 * hc1 + al2 * hc2) *
              wc1 + (al3 * hc1 + al4 * hc2) * wc2) >> 14)
            )
          );
          /*
          *dstp = libaroma_alpha(*dstp, res, (((al1 * hc1 + al2 * hc2) *
              wc1 + (al3 * hc1 + al4 * hc2) * wc2) >> 14));
          */
        }
      }
      else if (dst->alpha != NULL) {
        *dstp = res;
        dst->alpha[dst_pos] = 0xff;
      }
      else {
        *dstp = res;
      }
      wCoef += wStepFixed16b;
    }
    hCoef += hStepFixed16b;
  }
  return 1;
} /* End of libaroma_draw_scale_smooth */

/*
 * Function    : libaroma_draw_scale
 * Return Value: byte
 * Descriptions: scale drawinf
 */
byte libaroma_draw_scale(
  LIBAROMA_CANVASP dst,
  LIBAROMA_CANVASP src,
  int dx, int dy, int dw, int dh,
  int sx, int sy, int sw, int sh,
  byte smooth
) {
  if (smooth) {
    return libaroma_draw_scale_smooth(
             dst, src,
             dx, dy, dw, dh,
             sx, sy, sw, sh
           );
  }
  return libaroma_draw_scale_nearest(
           dst, src,
           dx, dy, dw, dh,
           sx, sy, sw, sh
         );
} /* End of function_name */


#endif /* __libaroma_scale_c__ */

