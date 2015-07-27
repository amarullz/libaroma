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
 * Filename    : fb_16bit.c
 * Description : linux framebuffer driver for 16bit framebuffer
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_linux_fb16bit_driver_c__
#define __libaroma_linux_fb16bit_driver_c__

/*
 * Function    : LINUXFBDR_post_16bit
 * Return Value: byte
 * Descriptions: post data
 */
byte LINUXFBDR_post_16bit(
  LIBAROMA_FBP me, wordp __restrict src,
  int dx, int dy, int dw, int dh,
  int sx, int sy, int sw, int sh
  ){
  if (me == NULL) {
    return 0;
  }
  LINUXFBDR_INTERNALP mi = (LINUXFBDR_INTERNALP) me->internal;
  int sstride = (sw - dw) * 2;
  int dstride = (mi->line - (dw * mi->pixsz));
  wordp copy_dst =
    (wordp) (((bytep) mi->current_buffer)+(mi->line * dy)+(dx * mi->pixsz));
  wordp copy_src = 
    (wordp) (src + (sw * sy) + sx);
  libaroma_blt_align16(
    copy_dst,
    copy_src,
    dw, dh,
    dstride,
    sstride
  );
  return 1;
}

/*
 * Function    : LINUXFBDR_snapshoot_16bit
 * Return Value: byte
 * Descriptions: get snapshoot
 */
byte LINUXFBDR_snapshoot_16bit(LIBAROMA_FBP me, wordp dst) {
  if (me == NULL) {
    return 0;
  }
  LINUXFBDR_INTERNALP mi = (LINUXFBDR_INTERNALP) me->internal;
  libaroma_blt_align16(
    dst, (wordp) mi->buffer, me->w, me->h, 0, mi->stride);
  return 1;
}

/*
 * Function    : LINUXFBDR_init_16bit
 * Return Value: void
 * Descriptions: init 16bit colorspace
 */
void LINUXFBDR_init_16bit(LIBAROMA_FBP me) {
  if (me == NULL) {
    return;
  }
  ALOGS("LINUXFBDR Init 16bit Colorspace");
  LINUXFBDR_INTERNALP mi = (LINUXFBDR_INTERNALP) me->internal;
  /* fix not standard 16bit framebuffer */
  if (mi->line / 4 == me->w) {
    mi->line = mi->line / 2;
  }
  mi->stride = mi->line - (me->w * 2); /* calculate stride size */
  
  /* set sync callbacks */
  me->start_post  = &LINUXFBDR_start_post;
  me->end_post    = &LINUXFBDR_end_post;
  me->post        = &LINUXFBDR_post_16bit;
  me->snapshoot   = &LINUXFBDR_snapshoot_16bit;
}
#endif /* __libaroma_linux_fb16bit_driver_c__ */
