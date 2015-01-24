/*
 * Copyright (C) 2011-2012 Ahmad Amarullah ( http://amarullz.com/ )
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
 */

/*
 * UNIVERSAL DEVICE - FRAMEBUFFER 16BIT DRIVER
 *
 */
#ifndef __AROMA_CORE_UNIVERSAL_FRAMEBUFFER_16BIT_DRIVER__
#define __AROMA_CORE_UNIVERSAL_FRAMEBUFFER_16BIT_DRIVER__

/*
 * Function : Init Framebuffer Colorspace
 *
 */
void FBDR_init_16bit(LIBAROMA_FBP me) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return;
  }
  
  /* Show Info */
  ALOGS("FBDRIVER Init 16bit Colorspace");
  /* Get Internal Data */
  FBDR_INTERNALP mi = (FBDR_INTERNALP) me->internal;
  
  /* Fix not standard 16bit framebuffer */
  if (mi->line / 4 == me->w) {
    mi->line = mi->line / 2;
  }
  
  /* Calculate Stride Size */
  mi->stride = mi->line - (me->w * 2);
}

/*
 * Function : Save display canvas into framebuffer
 *
 */
void FBDR_sync_16bit(LIBAROMA_FBP me, wordp src, int x, int y, int w, int h) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return;
  }
  
  /* Get Internal Data */
  FBDR_INTERNALP mi = (FBDR_INTERNALP) me->internal;
  
  /*fsync(mi->fb);*/
  
  /* Defined Area Only */
  if ((w > 0) && (h > 0)) {
    int     copy_stride = me->w - w;
    wordp   copy_dst    = (wordp)  (((bytep) mi->buffer) + (mi->line * y) + (x * mi->pixsz));
    wordp   copy_src    = (wordp) (src + (me->w * y) + x);
    /* Align Copy */
    libaroma_blt_align16(copy_dst, copy_src, w, h,
                mi->stride + (copy_stride * mi->pixsz),
                copy_stride * 2
               );
  }
  else {
    /* Need alignment */
    libaroma_blt_align16((wordp) mi->buffer,
                (wordp) src,
                me->w, me->h, mi->stride, 0);
  }
  
  fsync(mi->fb);
}

/*
 * Function : Save framebuffer into display canvas
 *
 */
byte FBDR_snapshoot_16bit(LIBAROMA_FBP me, wordp dst) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return 0;
  }
  
  /* Get Internal Data */
  FBDR_INTERNALP mi = (FBDR_INTERNALP) me->internal;
  /* Copy Current Screen into Display Canvas*/
  libaroma_blt_align16(dst, (wordp) mi->buffer, me->w, me->h, 0, mi->stride);
  return 1;
}

#endif // __AROMA_CORE_UNIVERSAL_FRAMEBUFFER_16BIT_DRIVER__ 
