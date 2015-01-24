/*
 * Copyright (C) 2011-2013 Ahmad Amarullah ( http://amarullz.com/ )
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
 * UNIVERSAL DEVICE - FRAMEBUFFER 32BIT DRIVER
 *
 */
#ifndef __AROMA_CORE_UNIVERSAL_FRAMEBUFFER_32BIT_DRIVER__
#define __AROMA_CORE_UNIVERSAL_FRAMEBUFFER_32BIT_DRIVER__

/*
 * Function : Set Framebuffer RGB Position
 *
 */
void FBDR_setrgbpos(LIBAROMA_FBP me, byte r, byte g, byte b) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return;
  }
  
  /* Get Internal Data */
  FBDR_INTERNALP mi = (FBDR_INTERNALP) me->internal;
  
  /* Check Normal RGB Position */
  if ((r == 16) && (g == 8) && (b == 0)) {
    mi->rgb_pos_normal = 1;
  }
  
  /* Save Color Position */
  mi->rgb_pos[0] = r;
  mi->rgb_pos[1] = g;
  mi->rgb_pos[2] = b;
  mi->rgb_pos[3] = r >> 3;
  mi->rgb_pos[4] = g >> 3;
  mi->rgb_pos[5] = b >> 3;
}

/*
 * Function : Init Framebuffer Colorspace
 *
 */
void FBDR_init_32bit(LIBAROMA_FBP me) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return;
  }
  
  /* Show Info */
  ALOGS("FBDRIVER Init 32bit Colorspace");
  /* Get Internal Data */
  FBDR_INTERNALP mi = (FBDR_INTERNALP) me->internal;
  /* Calculate Stride Size */
  mi->stride = mi->line - (me->w * mi->pixsz);
  /* Save Color Position */
  FBDR_setrgbpos(me,
                 mi->var.red.offset,
                 mi->var.green.offset,
                 mi->var.blue.offset);
}

/*
 * Function : Save display canvas into framebuffer
 *
 */
void FBDR_sync_32bit(LIBAROMA_FBP me, wordp src, int x, int y, int w, int h) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return;
  }
  
  /* Get Internal Data */
  FBDR_INTERNALP mi = (FBDR_INTERNALP) me->internal;
  
  /* Defined Area Only */
  if ((w > 0) && (h > 0)) {
    int     copy_stride = me->w - w;
    dwordp  copy_dst    = (dwordp) (((bytep) mi->buffer) + (mi->line * y) + (x * mi->pixsz));
    wordp  copy_src     = (wordp) (src + (me->w * y) + x);
    
    /* is 32bit framebuffer - with alignment */
    if (mi->rgb_pos_normal) {
      /* Normal RGB Position */
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
      /* Normal RGB Position */
      libaroma_blt_align16_to32((dwordp) mi->buffer,
                      src, me->w, me->h, mi->stride, 0);
    }
    else {
      /* Different RGB Position */
      libaroma_blt_align_to32_pos((dwordp) mi->buffer,
                       src, me->w, me->h,
                       mi->stride, 0, mi->rgb_pos);
    }
  }
}

/*
 * Function : Save framebuffer into display canvas
 *
 */
byte FBDR_snapshoot_32bit(LIBAROMA_FBP me, wordp dst) {
  /* Is Framebuffer Initialized ? */
  if (me == NULL) {
    return 0;
  }
  
  /* Get Internal Data */
  FBDR_INTERNALP mi = (FBDR_INTERNALP) me->internal;
  
  /* is 32bit framebuffer - with alignment */
  if (mi->rgb_pos_normal) {
    /* Normal RGB Position */
    libaroma_blt_align32_to16(dst, (dwordp) mi->buffer, me->w, me->h, 0, mi->stride);
  }
  else {
    /* Different RGB Position */
    libaroma_blt_align_to16_pos(dst, (dwordp) mi->buffer, me->w, me->h,
                     0, mi->stride, mi->rgb_pos);
  }
  
  return 1;
}

#endif // __AROMA_CORE_UNIVERSAL_FRAMEBUFFER_32BIT_DRIVER__ 
