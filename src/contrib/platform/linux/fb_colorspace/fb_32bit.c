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
#ifndef __libaroma_linux_fb32bit_driver_c__
#define __libaroma_linux_fb32bit_driver_c__

/*
 * Function    : LINUXFBDR_setrgbpos
 * Return Value: void
 * Descriptions: set rgbx position
 */
void LINUXFBDR_setrgbpos(LIBAROMA_FBP me, byte r, byte g, byte b) {
  if (me == NULL) {
    return;
  }
  LINUXFBDR_INTERNALP mi = (LINUXFBDR_INTERNALP) me->internal;
  /* save color position */
  mi->rgb_pos[0] = r;
  mi->rgb_pos[1] = g;
  mi->rgb_pos[2] = b;
  mi->rgb_pos[3] = r >> 3;
  mi->rgb_pos[4] = g >> 3;
  mi->rgb_pos[5] = b >> 3;
}

/*
 * Function    : LINUXFBDR_post_32bit
 * Return Value: byte
 * Descriptions: post data
 */
byte LINUXFBDR_post_32bit(
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
  dwordp copy_dst =
    (dwordp) (((bytep) mi->current_buffer)+(mi->line * dy)+(dx * mi->pixsz));
  wordp copy_src = 
    (wordp) (src + (sw * sy) + sx);
  libaroma_blt_align_to32_pos(
    copy_dst,
    copy_src,
    dw, dh,
    dstride, 
    sstride,
    mi->rgb_pos
  );
  return 1;
}

/*
 * Function    : LINUXFBDR_snapshoot_32bit
 * Return Value: byte
 * Descriptions: get snapshoot
 */
byte LINUXFBDR_snapshoot_32bit(LIBAROMA_FBP me, wordp dst) {
  if (me == NULL) {
    return 0;
  }
  LINUXFBDR_INTERNALP mi = (LINUXFBDR_INTERNALP) me->internal;
  libaroma_blt_align_to16_pos(
    dst, (dwordp) mi->buffer, me->w, me->h,
    0, mi->stride, mi->rgb_pos);
  return 1;
}

/*
 * Function    : LINUXFBDR_init_32bit
 * Return Value: void
 * Descriptions: init 32bit colorspace
 */
void LINUXFBDR_init_32bit(LIBAROMA_FBP me) {
  if (me == NULL) {
    return;
  }
  ALOGS("LINUXFBDR Init 32bit Colorspace");
  LINUXFBDR_INTERNALP mi = (LINUXFBDR_INTERNALP) me->internal;
  
  /* calculate stride size */
  mi->stride = mi->line - (me->w * mi->pixsz);

  /* gralloc framebuffer subpixel position style */
  if (mi->var.transp.offset){
    LINUXFBDR_setrgbpos(me,16,8,0);
  }
  else{
    LINUXFBDR_setrgbpos(me,0,8,16);
  }
  
  /* set sync callbacks */
  me->start_post  = &LINUXFBDR_start_post;
  me->end_post    = &LINUXFBDR_end_post;
  me->post        = &LINUXFBDR_post_32bit;
  me->snapshoot   = &LINUXFBDR_snapshoot_32bit;
}

#endif /* __libaroma_linux_fb32bit_driver_c__ */ 
