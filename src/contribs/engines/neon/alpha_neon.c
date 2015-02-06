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
 * Filename    : alpha_neon.c
 * Description : neon simd alpha blend engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_alpha_neon_c__
#define __libaroma_alpha_neon_c__
#ifdef __ARM_HAVE_NEON

/* NEON SIMD Alphablending With Dynamic Alpha Line */
void libaroma_alpha_px_line(int _Y, int n, wordp dst,
    wordp bottom, wordp top, bytep alpha){
  int i;
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dst[i] = libaroma_dither(
        i, _Y, libaroma_alpha32(bottom[i], top[i], alpha[i]));
    }
    
    return;
  }
  
  uint16x8_t falph = vdupq_n_u16(0xff);   /* Reverse Value */
  uint16x8_t msk_r = vdupq_n_u16(0xF800); /* Red Mask */
  uint16x8_t msk_g = vdupq_n_u16(0x07E0); /* Green Mask */
  uint16x8_t msk_b = vdupq_n_u16(0x001F); /* Blue Mask */
  /* dithering data */
  uint8x8_t table_r, table_g, table_b;
  _libaroma_neon_dither_table(_Y, &table_r, &table_g, &table_b);
  uint16x8_t table_r16 = vmovl_u8(table_r);
  uint16x8_t table_g16 = vmovl_u8(table_g);
  uint16x8_t table_b16 = vmovl_u8(table_b);
  uint16x8_t max_255 = vmovq_n_u16(255);
  /* neon loop */
  int nn = n / 8, left = n % 8;
  for (i = 0; i < nn; i++) {
    /* prepare opacity and reversed opacity value */
    uint8x8_t   od = vld1_u8(alpha + 8 * i);
    uint16x8_t  op = vmovl_u8(od);

    uint16x8_t  ro = vsubq_u16(falph, op);
    /* get 8 pixels data from top & bottom layer */
    uint16x8_t pxb = vld1q_u16(bottom + 8 * i); /* bottom layer pixels */
    uint16x8_t pxt = vld1q_u16(top + 8 * i); /* top layer pixels */
    /* get subpixels of bottom layer */
    uint8x8_t rb = vshrn_n_u16(vandq_u16(pxb, msk_r), 8);
    uint8x8_t gb = vshrn_n_u16(vandq_u16(pxb, msk_g), 3);
    uint8x8_t bb = vmovn_u16(vshlq_n_u16(vandq_u16(pxb, msk_b), 3));

    /* Get Subpixels of Top Layer */
    uint8x8_t rt = vshrn_n_u16(vandq_u16(pxt, msk_r), 8);
    uint8x8_t gt = vshrn_n_u16(vandq_u16(pxt, msk_g), 3);
    uint8x8_t bt = vmovn_u16(vshlq_n_u16(vandq_u16(pxt, msk_b), 3));

    /* Bottom Blend */
    uint16x8_t rbl = vmulq_u16(vmovl_u8(rb), ro);
    uint16x8_t gbl = vmulq_u16(vmovl_u8(gb), ro);
    uint16x8_t bbl = vmulq_u16(vmovl_u8(bb), ro);
    /* Top Blend */
    uint16x8_t rtl = vmulq_u16(vmovl_u8(rt), op);
    uint16x8_t gtl = vmulq_u16(vmovl_u8(gt), op);
    uint16x8_t btl = vmulq_u16(vmovl_u8(bt), op);
    /* Blend Result */
    uint16x8_t r  = vshrq_n_u16(vaddq_u16(rbl, rtl), 8);
    uint16x8_t g  = vshrq_n_u16(vaddq_u16(gbl, gtl), 8);
    uint16x8_t b  = vshrq_n_u16(vaddq_u16(bbl, btl), 8);
    /* Dithering */
    r = vminq_u16(vaddq_u16(r, table_r16), max_255); /* red */
    g = vminq_u16(vaddq_u16(g, table_g16), max_255); /* green */
    b = vminq_u16(vaddq_u16(b, table_b16), max_255); /* blue */
    /* Calculate & Output */
    r = vqshlq_n_u16(vshrq_n_u16(r, 3), 11);
    g = vqshlq_n_u16(vshrq_n_u16(g, 2), 5);
    b = vshrq_n_u16(b, 3);
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + (8 * i), o);
    
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      for (i = n - left; i < n; i++) {
        dst[i] = libaroma_dither(
          i, _Y, libaroma_alpha32(bottom[i], top[i], alpha[i]));
      }
      
      return;
    }
  }
}

/* NEON SIMD Alphablending With Dynamic Alpha */
void libaroma_alpha_px(int n, wordp dst, wordp bottom,
    wordp top, bytep alpha) {
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dst[i] = libaroma_alpha(bottom[i], top[i], alpha[i]);
    }
    
    return;
  }
  
  uint16x8_t falph = vdupq_n_u16(0xff);   /* Reverse Value */
  uint16x8_t msk_r = vdupq_n_u16(0xF800); /* Red Mask */
  uint16x8_t msk_g = vdupq_n_u16(0x07E0); /* Green Mask */
  uint16x8_t msk_b = vdupq_n_u16(0x001F); /* Blue Mask */
  /* Neon Loop */
  int nn = n / 8, left = n % 8;
  
  for (i = 0; i < nn; i++) {
    /* Prepare Opacity and Reversed Opacity Value */
    uint8x8_t   od = vld1_u8(alpha + 8 * i);
    uint16x8_t  op = vmovl_u8(od);
    // op = vaddq_u16(op, vshrq_n_u16(op, 7));
    uint16x8_t  ro = vsubq_u16(falph, op);
    /* Get 8 pixels data from Top & Bottom layer */
    uint16x8_t pxb = vld1q_u16(bottom + 8 * i); /* Bottom Layer Pixels */
    uint16x8_t pxt = vld1q_u16(top + 8 * i); /* Top Layer Pixels */
    /* Get Subpixels of Bottom Layer */
    uint8x8_t rb = vshrn_n_u16(vandq_u16(pxb, msk_r), 8);
    uint8x8_t gb = vshrn_n_u16(vandq_u16(pxb, msk_g), 3);
    uint8x8_t bb = vmovn_u16(vshlq_n_u16(vandq_u16(pxb, msk_b), 3));

    /* Get Subpixels of Top Layer */
    uint8x8_t rt = vshrn_n_u16(vandq_u16(pxt, msk_r), 8);
    uint8x8_t gt = vshrn_n_u16(vandq_u16(pxt, msk_g), 3);
    uint8x8_t bt = vmovn_u16(vshlq_n_u16(vandq_u16(pxt, msk_b), 3));

    /* Bottom Blend */
    uint16x8_t rbl = vmulq_u16(vmovl_u8(rb), ro);
    uint16x8_t gbl = vmulq_u16(vmovl_u8(gb), ro);
    uint16x8_t bbl = vmulq_u16(vmovl_u8(bb), ro);
    /* Top Blend */
    uint16x8_t rtl = vmulq_u16(vmovl_u8(rt), op);
    uint16x8_t gtl = vmulq_u16(vmovl_u8(gt), op);
    uint16x8_t btl = vmulq_u16(vmovl_u8(bt), op);
    /* Blend Result */
    uint16x8_t r  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
    uint16x8_t g  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
    uint16x8_t b  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
    /* Set Result Position in 16bit */
    r = vshlq_n_u16(r, 11);
    g = vshlq_n_u16(g, 5);
    b = vshrq_n_u16(b, 3);
    /* Final */
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + (8 * i), o);
    
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      for (i = n - left; i < n; i++) {
        dst[i] = libaroma_alpha(bottom[i], top[i], alpha[i]);
      }
      
      return;
    }
  }
}

/* NEON SIMD Alphablending With Constant Alpha - PERLINE */
void libaroma_alpha_const_line(int _Y, int n, wordp dst,
    wordp bottom, wordp top, byte alpha) {
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dst[i] = libaroma_dither(
        i, _Y, libaroma_alpha32(bottom[i], top[i], alpha));
    }
    
    return;
  }
  
  uint16x8_t msk_r = vdupq_n_u16(0xF800); /* Red Mask */
  uint16x8_t msk_g = vdupq_n_u16(0x07E0); /* Green Mask */
  uint16x8_t msk_b = vdupq_n_u16(0x001F); /* Blue Mask */
  /* Dithering Data */
  uint8x8_t table_r, table_g, table_b;
  _libaroma_neon_dither_table(_Y, &table_r, &table_g, &table_b);
  uint16x8_t table_r16 = vmovl_u8(table_r);
  uint16x8_t table_g16 = vmovl_u8(table_g);
  uint16x8_t table_b16 = vmovl_u8(table_b);
  uint16x8_t max_255 = vmovq_n_u16(255);
  /* Prepare Opacity and Reversed Opacity Value */
  word od        = alpha;
  uint16x8_t  op = vdupq_n_u16(od);
  uint16x8_t  ro = vdupq_n_u16(0xff - od);
  /* Neon Loop */
  int nn = n / 8, left = n % 8;
  
  for (i = 0; i < nn; i++) {
    /* Get 8 pixels data from Top & Bottom layer */
    uint16x8_t pxb = vld1q_u16(bottom + 8 * i); /* Bottom Layer Pixels */
    uint16x8_t pxt = vld1q_u16(top + 8 * i); /* Top Layer Pixels */
    /* Get Subpixels of Bottom Layer */
    uint8x8_t rb = vshrn_n_u16(vandq_u16(pxb, msk_r), 8);
    uint8x8_t gb = vshrn_n_u16(vandq_u16(pxb, msk_g), 3);
    uint8x8_t bb = vmovn_u16(vshlq_n_u16(vandq_u16(pxb, msk_b), 3));

    /* Get Subpixels of Top Layer */
    uint8x8_t rt = vshrn_n_u16(vandq_u16(pxt, msk_r), 8);
    uint8x8_t gt = vshrn_n_u16(vandq_u16(pxt, msk_g), 3);
    uint8x8_t bt = vmovn_u16(vshlq_n_u16(vandq_u16(pxt, msk_b), 3));

    /* Bottom Blend */
    uint16x8_t rbl = vmulq_u16(vmovl_u8(rb), ro);
    uint16x8_t gbl = vmulq_u16(vmovl_u8(gb), ro);
    uint16x8_t bbl = vmulq_u16(vmovl_u8(bb), ro);
    /* Top Blend */
    uint16x8_t rtl = vmulq_u16(vmovl_u8(rt), op);
    uint16x8_t gtl = vmulq_u16(vmovl_u8(gt), op);
    uint16x8_t btl = vmulq_u16(vmovl_u8(bt), op);
    /* Blend Result */
    uint16x8_t r  = vshrq_n_u16(vaddq_u16(rbl, rtl), 8);
    uint16x8_t g  = vshrq_n_u16(vaddq_u16(gbl, gtl), 8);
    uint16x8_t b  = vshrq_n_u16(vaddq_u16(bbl, btl), 8);
    /* Dithering */
    r = vminq_u16(vaddq_u16(r, table_r16), max_255); /* red */
    g = vminq_u16(vaddq_u16(g, table_g16), max_255); /* green */
    b = vminq_u16(vaddq_u16(b, table_b16), max_255); /* blue */
    /* Calculate & Output */
    r = vqshlq_n_u16(vshrq_n_u16(r, 3), 11);
    g = vqshlq_n_u16(vshrq_n_u16(g, 2), 5);
    b = vshrq_n_u16(b, 3);
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + (8 * i), o);
    
    
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      for (i = n - left; i < n; i++) {
        dst[i] = libaroma_dither(
          i, _Y, libaroma_alpha32(bottom[i], top[i], alpha));
      }
      
      return;
    }
  }
}

/* NEON SIMD Alphablending With Constant Alpha */
void libaroma_alpha_const(int n, wordp dst,
    wordp bottom, wordp top, byte alpha) {
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dst[i] = libaroma_alpha(bottom[i], top[i], alpha);
    }
    
    return;
  }
  
  uint16x8_t msk_r = vdupq_n_u16(0xF800); /* Red Mask */
  uint16x8_t msk_g = vdupq_n_u16(0x07E0); /* Green Mask */
  uint16x8_t msk_b = vdupq_n_u16(0x001F); /* Blue Mask */
  /* Prepare Opacity and Reversed Opacity Value */
  word od        = alpha;
  uint16x8_t  op = vdupq_n_u16(od);
  uint16x8_t  ro = vdupq_n_u16(0xff - od);
  /* Neon Loop */
  int nn = n / 8, left = n % 8;
  
  for (i = 0; i < nn; i++) {
    /* Get 8 pixels data from Top & Bottom layer */
    uint16x8_t pxb = vld1q_u16(bottom + 8 * i); /* Bottom Layer Pixels */
    uint16x8_t pxt = vld1q_u16(top + 8 * i); /* Top Layer Pixels */
    /* Get Subpixels of Bottom Layer */
    uint8x8_t rb = vshrn_n_u16(vandq_u16(pxb, msk_r), 8);
    uint8x8_t gb = vshrn_n_u16(vandq_u16(pxb, msk_g), 3);
    uint8x8_t bb = vmovn_u16(vshlq_n_u16(vandq_u16(pxb, msk_b), 3));

    /* Get Subpixels of Top Layer */
    uint8x8_t rt = vshrn_n_u16(vandq_u16(pxt, msk_r), 8);
    uint8x8_t gt = vshrn_n_u16(vandq_u16(pxt, msk_g), 3);
    uint8x8_t bt = vmovn_u16(vshlq_n_u16(vandq_u16(pxt, msk_b), 3));

    /* Bottom Blend */
    uint16x8_t rbl = vmulq_u16(vmovl_u8(rb), ro);
    uint16x8_t gbl = vmulq_u16(vmovl_u8(gb), ro);
    uint16x8_t bbl = vmulq_u16(vmovl_u8(bb), ro);
    /* Top Blend */
    uint16x8_t rtl = vmulq_u16(vmovl_u8(rt), op);
    uint16x8_t gtl = vmulq_u16(vmovl_u8(gt), op);
    uint16x8_t btl = vmulq_u16(vmovl_u8(bt), op);
    /* Blend Result */
    uint16x8_t r  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
    uint16x8_t g  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
    uint16x8_t b  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
    /* Set Result Position in 16bit */
    r = vshlq_n_u16(r, 11);
    g = vshlq_n_u16(g, 5);
    /* Final */
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + (8 * i), o);
    
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      for (i = n - left; i < n; i++) {
        dst[i] = libaroma_alpha(bottom[i], top[i], alpha);
      }
      
      return;
    }
  }
}

/* NEON SIMD Alphablending With Black */
void libaroma_alpha_black(int n, wordp dst, wordp top, byte alpha) {
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dst[i] = libaroma_alphab(top[i], alpha);
    }
    
    return;
  }
  
  uint16x8_t msk_r = vdupq_n_u16(0xF800); /* Red Mask */
  uint16x8_t msk_g = vdupq_n_u16(0x07E0); /* Green Mask */
  uint16x8_t msk_b = vdupq_n_u16(0x001F); /* Blue Mask */
  /* Prepare Opacity and Reversed Opacity Value */
  word od        = alpha;
  uint16x8_t  op = vdupq_n_u16(od);
  /* Neon Loop */
  int nn = n / 8, left = n % 8;
  
  for (i = 0; i < nn; i++) {
    /* Get 8 pixels data from Top layer */
    uint16x8_t pxt = vld1q_u16(top + 8 * i); /* Top Layer Pixels */
    /* Get Subpixels of Top Layer */
    uint8x8_t rt = vshrn_n_u16(vandq_u16(pxt, msk_r), 8);
    uint8x8_t gt = vshrn_n_u16(vandq_u16(pxt, msk_g), 3);
    uint8x8_t bt = vmovn_u16(vshlq_n_u16(vandq_u16(pxt, msk_b), 3));

    /* Top Blend Only */
    uint16x8_t r = vshrq_n_u16(vmulq_u16(vmovl_u8(rt), op), 11);
    uint16x8_t g = vshrq_n_u16(vmulq_u16(vmovl_u8(gt), op), 10);
    uint16x8_t b = vshrq_n_u16(vmulq_u16(vmovl_u8(bt), op), 11);
    /* Set Result Position in 16bit */
    r = vshlq_n_u16(r, 11);
    g = vshlq_n_u16(g, 5);
    /* Final */
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + (8 * i), o);
    
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      for (i = n - left; i < n; i++) {
        dst[i] = libaroma_alphab(top[i], alpha);
      }
      
      return;
    }
  }
}

/* NEON SIMD Alphablending With Static Alpha & Color */
void libaroma_alpha_rgba_fill(int n, wordp dst, wordp bottom,
    word top, byte alpha) {
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dst[i] = libaroma_alpha(bottom[i], top, alpha);
    }
    
    return;
  }
  
  uint16x8_t msk_r = vdupq_n_u16(0xF800); /* Red Mask */
  uint16x8_t msk_g = vdupq_n_u16(0x07E0); /* Green Mask */
  uint16x8_t msk_b = vdupq_n_u16(0x001F); /* Blue Mask */
  /* Prepare Opacity and Reversed Opacity Value */
  word od        = alpha;
  uint16x8_t  op = vdupq_n_u16(od);
  uint16x8_t  ro = vdupq_n_u16(0xff - od);
  /* Same Value data from Top layer */
  uint16x8_t pxt = vdupq_n_u16(top);
  /* Get Subpixels of Top Layer */
  uint8x8_t rt = vshrn_n_u16(vandq_u16(pxt, msk_r), 8);
  uint8x8_t gt = vshrn_n_u16(vandq_u16(pxt, msk_g), 3);
  uint8x8_t bt = vmovn_u16(vshlq_n_u16(vandq_u16(pxt, msk_b), 3));

  /* Top Blend */
  uint16x8_t rtl = vmulq_u16(vmovl_u8(rt), op);
  uint16x8_t gtl = vmulq_u16(vmovl_u8(gt), op);
  uint16x8_t btl = vmulq_u16(vmovl_u8(bt), op);
  /* Neon Loop */
  int nn = n / 8, left = n % 8;
  
  for (i = 0; i < nn; i++) {
    /* Get 8 pixels data from Top & Bottom layer */
    uint16x8_t pxb = vld1q_u16(bottom + 8 * i); /* Bottom Layer Pixels */
    /* Get Subpixels of Bottom Layer */
    uint8x8_t rb = vshrn_n_u16(vandq_u16(pxb, msk_r), 8);
    uint8x8_t gb = vshrn_n_u16(vandq_u16(pxb, msk_g), 3);
    uint8x8_t bb = vmovn_u16(vshlq_n_u16(vandq_u16(pxb, msk_b), 3));

    /* Bottom Blend */
    uint16x8_t rbl = vmulq_u16(vmovl_u8(rb), ro);
    uint16x8_t gbl = vmulq_u16(vmovl_u8(gb), ro);
    uint16x8_t bbl = vmulq_u16(vmovl_u8(bb), ro);
    /* Blend Result */
    uint16x8_t r  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
    uint16x8_t g  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
    uint16x8_t b  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
    /* Set Result Position in 16bit */
    r = vshlq_n_u16(r, 11);
    g = vshlq_n_u16(g, 5);
    /* Final */
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + (8 * i), o);
    
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      for (i = n - left; i < n; i++) {
        dst[i] = libaroma_alpha(bottom[i], top, alpha);
      }
      
      return;
    }
  }
}

/* NEON SIMD Alphablending With Dynamic Alpha Fixed Color */
void libaroma_alpha_mono(int n, wordp dst, wordp bottom,
    word top, bytep alpha){
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      dst[i] = libaroma_alpha(bottom[i], top, alpha[i]);
    }
    
    return;
  }
  
  uint16x8_t falph = vdupq_n_u16(0xff);   /* Reverse Value */
  uint16x8_t msk_r = vdupq_n_u16(0xF800); /* Red Mask */
  uint16x8_t msk_g = vdupq_n_u16(0x07E0); /* Green Mask */
  uint16x8_t msk_b = vdupq_n_u16(0x001F); /* Blue Mask */
  /* Same Value data from Top layer */
  uint16x8_t pxt = vdupq_n_u16(top);
  /* Get Subpixels of Top Layer */
  uint8x8_t rt = vshrn_n_u16(vandq_u16(pxt, msk_r), 8);
  uint8x8_t gt = vshrn_n_u16(vandq_u16(pxt, msk_g), 3);
  uint8x8_t bt = vmovn_u16(vshlq_n_u16(vandq_u16(pxt, msk_b), 3));

  uint16x8_t rt16 = vmovl_u8(rt);
  uint16x8_t gt16 = vmovl_u8(gt);
  uint16x8_t bt16 = vmovl_u8(bt);
  /* Neon Loop */
  int nn = n / 8, left = n % 8;
  
  for (i = 0; i < nn; i++) {
    /* Prepare Opacity and Reversed Opacity Value */
    uint8x8_t   od = vld1_u8(alpha + 8 * i);
    uint16x8_t  op = vmovl_u8(od);
    // op = vaddq_u16(op, vshrq_n_u16(op, 7));
    uint16x8_t  ro = vsubq_u16(falph, op);
    /* Get 8 pixels data from Bottom layer */
    uint16x8_t pxb = vld1q_u16(bottom + 8 * i); /* Bottom Layer Pixels */
    /* Get Subpixels of Bottom Layer */
    uint8x8_t rb = vshrn_n_u16(vandq_u16(pxb, msk_r), 8);
    uint8x8_t gb = vshrn_n_u16(vandq_u16(pxb, msk_g), 3);
    uint8x8_t bb = vmovn_u16(vshlq_n_u16(vandq_u16(pxb, msk_b), 3));

    /* Bottom Blend */
    uint16x8_t rbl = vmulq_u16(vmovl_u8(rb), ro);
    uint16x8_t gbl = vmulq_u16(vmovl_u8(gb), ro);
    uint16x8_t bbl = vmulq_u16(vmovl_u8(bb), ro);
    /* Top Blend */
    uint16x8_t rtl = vmulq_u16(rt16, op);
    uint16x8_t gtl = vmulq_u16(gt16, op);
    uint16x8_t btl = vmulq_u16(bt16, op);
    /* Blend Result */
    uint16x8_t r  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
    uint16x8_t g  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
    uint16x8_t b  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
    /* Set Result Position in 16bit */
    r = vshlq_n_u16(r, 11);
    g = vshlq_n_u16(g, 5);
    /* Final */
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + (8 * i), o);
    
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      for (i = n - left; i < n; i++) {
        dst[i] = libaroma_alpha(bottom[i], top, alpha[i]);
      }
      
      return;
    }
  }
}

/* NEON SIMD Alphablending With Dynamic Alpha Fixed Color */
void libaroma_alpha_multi_line(int n, wordp dst, wordp bottom,
    word top, bytep alphargb) {
  int i;
  
  /* use non simd */
  if (n < 8) {
    for (i = 0; i < n; i++) {
      int j = i * 3;
      dst[i] = libaroma_alpha_multi(
        bottom[i],
        top,
        alphargb[j],
        alphargb[j + 1],
        alphargb[j + 2]);
    }
    
    return;
  }
  
  uint16x8_t falph = vdupq_n_u16(0xff);   /* Reverse Value */
  uint16x8_t msk_r = vdupq_n_u16(0xF800); /* Red Mask */
  uint16x8_t msk_g = vdupq_n_u16(0x07E0); /* Green Mask */
  uint16x8_t msk_b = vdupq_n_u16(0x001F); /* Blue Mask */
  /* Same Value data from Top layer */
  uint16x8_t pxt = vdupq_n_u16(top);
  /* Get Subpixels of Top Layer */
  uint8x8_t rt = vshrn_n_u16(vandq_u16(pxt, msk_r), 8);
  uint8x8_t gt = vshrn_n_u16(vandq_u16(pxt, msk_g), 3);
  uint8x8_t bt = vmovn_u16(vshlq_n_u16(vandq_u16(pxt, msk_b), 3));

  uint16x8_t rt16 = vmovl_u8(rt);
  uint16x8_t gt16 = vmovl_u8(gt);
  uint16x8_t bt16 = vmovl_u8(bt);
  /* Neon Loop */
  int nn = n / 8, left = n % 8;
  
  for (i = 0; i < nn; i++) {
    /* 24bit opacity */
    uint8x8x3_t rgbAlpha = vld3_u8(alphargb + (24 * i));
    uint16x8_t  op_r = vmovl_u8(rgbAlpha.val[0]);
    uint16x8_t  ro_r = vsubq_u16(falph, op_r);
    uint16x8_t  op_g = vmovl_u8(rgbAlpha.val[1]);
    uint16x8_t  ro_g = vsubq_u16(falph, op_g);
    uint16x8_t  op_b = vmovl_u8(rgbAlpha.val[2]);
    uint16x8_t  ro_b = vsubq_u16(falph, op_b);
    /* Get 8 pixels data from Bottom layer */
    uint16x8_t pxb = vld1q_u16(bottom + 8 * i); /* Bottom Layer Pixels */
    /* Get Subpixels of Bottom Layer */
    uint8x8_t rb = vshrn_n_u16(vandq_u16(pxb, msk_r), 8);
    uint8x8_t gb = vshrn_n_u16(vandq_u16(pxb, msk_g), 3);
    uint8x8_t bb = vmovn_u16(vshlq_n_u16(vandq_u16(pxb, msk_b), 3));

    /* Bottom Blend */
    uint16x8_t rbl = vmulq_u16(vmovl_u8(rb), ro_r);
    uint16x8_t gbl = vmulq_u16(vmovl_u8(gb), ro_g);
    uint16x8_t bbl = vmulq_u16(vmovl_u8(bb), ro_b);
    /* Top Blend */
    uint16x8_t rtl = vmulq_u16(rt16, op_r);
    uint16x8_t gtl = vmulq_u16(gt16, op_g);
    uint16x8_t btl = vmulq_u16(bt16, op_b);
    /* Blend Result */
    uint16x8_t r  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
    uint16x8_t g  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
    uint16x8_t b  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
    /* Set Result Position in 16bit */
    r = vshlq_n_u16(r, 11);
    g = vshlq_n_u16(g, 5);
    /* Final */
    uint16x8_t o = vorrq_u16(vorrq_u16(r, g), b);
    vst1q_u16(dst + (8 * i), o);
    
    /* leftover */
    if ((i + 1 == nn) && (left > 0)) {
      for (i = n - left; i < n; i++) {
        int j = i * 3;
        dst[i] = libaroma_alpha_multi(
          bottom[i],
          top,
          alphargb[j],
          alphargb[j + 1],
          alphargb[j + 2]);
      }
      
      return;
    }
  }
}

/* set available engine */
#define __engine_have_libaroma_alpha_black 1
#define __engine_have_libaroma_alpha_const 1
#define __engine_have_libaroma_alpha_const_line 1
#define __engine_have_libaroma_alpha_px 1
#define __engine_have_libaroma_alpha_px_line 1
#define __engine_have_libaroma_alpha_rgba_fill 1
#define __engine_have_libaroma_alpha_mono 1
#define __engine_have_libaroma_alpha_multi_line 1

#endif /* __ARM_HAVE_NEON */
#endif /* __libaroma_alpha_neon_c__ */
