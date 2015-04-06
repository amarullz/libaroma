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
 * Filename    : fb_32bit.c
 * Description : linux framebuffer driver for 32bit framebuffer
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_linux_rpi_fb32bit_driver_c__
#define __libaroma_linux_rpi_fb32bit_driver_c__

/*
 * function : set framebuffer rgb position
 */
void LINUXRPIDR_setrgbpos(LIBAROMA_FBP me, byte r, byte g, byte b) {
  /* is framebuffer initialized ? */
  if (me == NULL) {
    return;
  }
  /* get internal data */
  LINUXRPIDR_INTERNALP mi = (LINUXRPIDR_INTERNALP) me->internal;
  /* check normal rgb position */
  if ((r == 16) && (g == 8) && (b == 0)) {
    mi->rgb_pos_normal = 1;
  }
  /* save color position */
  mi->rgb_pos[0] = r;
  mi->rgb_pos[1] = g;
  mi->rgb_pos[2] = b;
  mi->rgb_pos[3] = r >> 3;
  mi->rgb_pos[4] = g >> 3;
  mi->rgb_pos[5] = b >> 3;
}

/*
 * function : init framebuffer colorspace
 */
void LINUXRPIDR_init_32bit(LIBAROMA_FBP me) {
  /* is framebuffer initialized ? */
  if (me == NULL) {
    return;
  }
  /* show info */
  ALOGS("FBDRIVER Init 32bit Colorspace");
  /* get internal data */
  LINUXRPIDR_INTERNALP mi = (LINUXRPIDR_INTERNALP) me->internal;
  /* calculate stride size */
  mi->stride = mi->line - (me->w * mi->pixsz);
  /* save color position */
  LINUXRPIDR_setrgbpos(me,
                 mi->var.red.offset,
                 mi->var.green.offset,
                 mi->var.blue.offset);
  /* refresh framebuffer */
  LINUXRPIDR_refresh(me);
}

/*
 * function : save display canvas into framebuffer
 */
byte LINUXRPIDR_sync_32bit(
    LIBAROMA_FBP me,
    wordp src,
    int x,
    int y,
    int w,
    int h) {
  /* is framebuffer initialized ? */
  if (me == NULL) {
    return 0;
  }
  /* get internal data */
  LINUXRPIDR_INTERNALP mi = (LINUXRPIDR_INTERNALP) me->internal;
  
  /* defined area only */
  if ((w > 0) && (h > 0)) {
    int copy_stride = me->w - w;
    dwordp copy_dst =
      (dwordp) (((bytep) mi->buffer) + (mi->line * y) + (x * mi->pixsz));
    wordp copy_src =
      (wordp) (src + (me->w * y) + x);
    
    /* is 32bit framebuffer - with alignment */
    if (mi->rgb_pos_normal) {
      /* normal rgb position */
      libaroma_blt_align16_to32(copy_dst, copy_src, w, h,
        mi->stride + (copy_stride * mi->pixsz),
        copy_stride * 2
      );
    }
    else {
      libaroma_blt_align_to32_pos(copy_dst, copy_src, w, h,
        mi->stride + (copy_stride * mi->pixsz),
        copy_stride * 2, mi->rgb_pos
      );
    }
  }
  else {
    /* is 32bit framebuffer - with alignment */
    if (mi->rgb_pos_normal) {
      /* normal rgb position */
      libaroma_blt_align16_to32((dwordp) mi->buffer,
        src, me->w, me->h, mi->stride, 0);
    }
    else {
      /* different rgb position */
      libaroma_blt_align_to32_pos((dwordp) mi->buffer,
        src, me->w, me->h,
        mi->stride, 0, mi->rgb_pos);
    }
  }
  return 1;
}

/*
 * function : save framebuffer into display canvas
 */
byte LINUXRPIDR_snapshoot_32bit(LIBAROMA_FBP me, wordp dst) {
  /* is framebuffer initialized ? */
  if (me == NULL) {
    return 0;
  }
  /* get internal data */
  LINUXRPIDR_INTERNALP mi = (LINUXRPIDR_INTERNALP) me->internal;
  /* is 32bit framebuffer - with alignment */
  if (mi->rgb_pos_normal) {
    /* normal rgb position */
    libaroma_blt_align32_to16(
      dst, (dwordp) mi->buffer, me->w, me->h, 0, mi->stride);
  }
  else {
    /* different rgb position */
    libaroma_blt_align_to16_pos(
      dst, (dwordp) mi->buffer, me->w, me->h,
      0, mi->stride, mi->rgb_pos);
  }
  return 1;
}

#endif /* __libaroma_linux_rpi_fb32bit_driver_c__ */ 
