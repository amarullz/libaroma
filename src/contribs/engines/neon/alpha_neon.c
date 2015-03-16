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

/* constants neon variables */
static byte __neon_const_initialized=0;
static uint16x8_t __neon_const_xalph;
static uint16x8_t __neon_const_zalph;
static uint16x8_t __neon_const_falph;
static uint16x8_t __neon_const_msk_r;
static uint16x8_t __neon_const_msk_g;
static uint16x8_t __neon_const_msk_b;

/* init constants */
inline void __neon_alpha_const_init(){
  if (!__neon_const_initialized){
    __neon_const_xalph = vdupq_n_u16(0xff);   /* max value */
    __neon_const_zalph = vdupq_n_u16(0);      /* zero value */
    __neon_const_falph = vdupq_n_u16(0x100);  /* reverse value */
    __neon_const_msk_r = vdupq_n_u16(0xf800); /* red mask */
    __neon_const_msk_g = vdupq_n_u16(0x07e0); /* green mask */
    __neon_const_msk_b = vdupq_n_u16(0x001f); /* blue mask */
    __neon_const_initialized=1;
  }
}

/* init dither table */
inline void __neon_dither_table(
    int y, uint16x8_t *r, uint16x8_t *g, uint16x8_t *b
){
  uint8x8_t tr,tg,tb;
  _libaroma_neon_dither_table(y, &tr, &tg, &tb);
  *r = vmovl_u8(tr);
  *g = vmovl_u8(tg);
  *b = vmovl_u8(tb);
}

void libaroma_alpha_const_asm(
    int n,
    wordp dst,
    wordp bottom,
    wordp top,
    byte alpha){
  asm volatile(
    "lsr	      %0,   %0, #3    \n" /* div 16 */
    "mov        r5,   #2016     \n"
  	"vmov.i16	  q11,  #256      \n"
  	"vdup.16    q12,  r5        \n"
  	"vmov.i16	  q13,  #31       \n"
  	"vmov.i16   q14,  #63488    \n"
  	"vdup.16    q10,  %4        \n" /* vdupq_n_u16(alpha) */
  	"vsub.i16	  q11, q11, q10   \n" /* q11=ro */
    
    ".libaroma_alpha_const_asm_loop: \n"
    "vld1.16	{d18-d19}, [%2]!  \n" /* vld1q_u16(bottom) */
  	"vld1.16	{d16-d17}, [%3]!  \n" /* vld1q_u16(top) */
  	
    /* bottom */
    "vand	      q1, q8, q14     \n" /* red */
    "vrshr.u16	q1, q1, #8      \n"
    "vmul.i16	  q1, q1, q10     \n"
    
    "vand	      q15, q8, q12    \n" /* green */
    "vrshr.u16	q15, q15, #3    \n"
    "vmul.i16	  q15, q15, q10   \n"
    
    "vand	      q3, q8, q13     \n" /* blue */
    "vshl.i16 	q3, q3, #3      \n"
    "vmul.i16	  q3, q3, q10     \n"
    
    /* top */
    "vand	      q0, q9, q14     \n" /* red */
    "vrshr.u16	q0, q0, #8      \n"
    "vmul.i16	  q0, q0, q11     \n"
    
    "vand	      q2, q9, q12     \n" /* green */
    "vrshr.u16	q2, q2, #3      \n"
    "vmul.i16	  q2, q2, q11     \n"
    
    "vand	      q9, q9, q13     \n" /* blue */
    "vshl.i16 	q9, q9, #3      \n"
    "vmul.i16	  q9, q9, q11     \n"
    
    /* calc */
    "vadd.i16	q8, q0, q1        \n"
	  "vadd.i16	q15, q2, q15      \n"
	  "vadd.i16	q9, q9, q3        \n"
	  
  	"vshr.u16	q8, q8, #11       \n" /* r */
  	"vshr.u16	q15, q15, #10     \n" /* g */
  	"vshr.u16	q9, q9, #11       \n" /* b */
  	
  	"vshl.i16	q8, q8, #11       \n"
  	"vshl.i16	q15, q15, #5      \n"
	
  	"vorr	q8, q8, q15           \n" /* r|g|b */
  	"vorr	q8, q8, q9            \n"
	  
  	"vst1.16	{d16-d17}, [%1]!  \n" /* store */
  	
  	"subs	    %0, %0, #1        \n" /* n-- */
  	"bne	.libaroma_alpha_const_asm_loop  \n"
  	:
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(bottom),  /* r2 - 2 */
      "r"(top),     /* r3 - 3 */
      "r"(alpha)    /* r4 - 4 */
    : "r5"
  );
}
void libaroma_alpha_px_asm(
    int n,
    wordp dst,
    wordp bottom,
    wordp top,
    bytep alpha){
  asm volatile(
    "lsr	      %0,   %0, #3    \n" /* div 16 */
    "mov        r5,   #2016     \n"
  	"vmov.i16   q0,   #255      \n"
  	"vmov.i16	  q1,   #256      \n"
  	"vmov.i16	  q12,  #31       \n"
  	"vmov.i16   q13,  #63488    \n"
  	"vdup.16    q14,  r5        \n"
  	
    
    ".libaroma_alpha_px_asm_loop: \n"
  	"vld1.8 {d16}, [%4]!        \n" /* vld1_u8(alpha) */
  	"vmovl.u8 q8, d16           \n" /* q8=op */
  	"vsub.i16	q11, q1, q8       \n" /* q11=ro */
  	"vld1.16	{d18-d19}, [%2]!  \n" /* vld1q_u16(bottom) */
  	"vld1.16	{d20-d21}, [%3]!  \n" /* vld1q_u16(top) */
    
    /* bottom */
    "vand	      q6, q9, q13     \n" /* red */
    "vrshr.u16	q6, q6, #8      \n"
    "vmul.i16	  q6, q6, q11     \n"
    
    "vand	      q5, q9, q14     \n" /* green */
    "vrshr.u16	q5, q5, #3      \n"
    "vmul.i16	  q5, q5, q11     \n"
    
    "vand	      q4, q9, q12     \n" /* blue */
    "vshl.i16 	q4, q4, #3      \n"
    "vmul.i16	  q4, q4, q11     \n"
    
    /* top */
    "vand	      q15, q10, q13   \n" /* red */
    "vrshr.u16	q15, q15, #8    \n"
    "vmul.i16	  q15, q15, q8    \n"
    "vand	      q2, q10, q14    \n" /* green */
    "vrshr.u16	q2, q2, #3      \n"
    "vmul.i16	  q2, q2, q8      \n"
    "vand	      q3, q10, q12    \n" /* blue */
    "vshl.i16 	q3, q3, #3      \n"
    "vmul.i16	  q3, q3, q8      \n"
    
    /* non-dithering blend result */
    "vadd.i16	  q15, q6, q15    \n" /* r */
    "vadd.i16	  q2,  q5, q2     \n" /* g */
    "vadd.i16	  q3,  q4, q3     \n" /* b */
    
    "vshr.u16	  q15, q15, #11   \n" /* r */
    "vshr.u16	  q2,  q2,  #10   \n" /* g */
    "vshr.u16	  q3,  q3,  #11   \n" /* b */
    
    "vshl.i16	  q15, q15, #11   \n"
	  "vshl.i16	  q2, q2, #5      \n"
	  
	  "vorr	      q15, q15, q2    \n" /* r|g|b */
	  "vorr	      q15, q15, q3    \n"
	  
	  "vceq.i16	  q11, q8, q0     \n" /* o == 255 */
	  "vceq.i16	  q8, q8, #0      \n" /* o == 0 */
    
  	"vbsl	      q11, q10, q15   \n"
	  "vbsl	      q8, q9, q11     \n"
  	
  	"vst1.16	{d16-d17}, [%1]!  \n" /* store */
  	
  	"subs	    %0, %0, #1        \n" /* n-- */
  	"bne	.libaroma_alpha_px_asm_loop  \n"
  	:
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(bottom),  /* r2 - 2 */
      "r"(top),     /* r3 - 3 */
      "r"(alpha)    /* r4 - 4 */
    : "r5"
  );
}

void libaroma_alpha_multi_line_asm(
    int n,
    wordp dst,
    wordp bottom,
    byte topr,
    byte topg,
    byte topb,
    bytep alpha){
  asm volatile(
    "lsr	      %0,   %0, #3    \n" /* div 16 */
    "mov        r7,   #2016     \n" 
    "vdup.16    q1,   r7        \n"
    "vmov.i16	  q11,  #256      \n"
  	"vmov.i16	  q5,   #63488    \n"
  	"vmov.i16	  q4,   #31       \n"
  	
  	"vdup.16	  q2,   %3        \n" /* topr */
  	"vdup.16    q6,   %4        \n" /* topg */
  	"vdup.16    q0,   %5        \n" /* topb */
    
    ".libaroma_alpha_multi_line_asm_loop: \n"
    
    "vld3.8	{d16-d18}, [%6]!    \n"
    "vld1.16	{d20-d21}, [%2]!  \n"
    "vmovl.u8	q13, d16 \n"
  	"vmovl.u8	q12, d17 \n"
  	"vand	q3, q10, q5 \n"
  	"vand	q14, q10, q1 \n"
  	"vsub.i16	q7, q11, q13 \n"
  	"vsub.i16	q15, q11, q12 \n"
  	"vrshr.u16	q3, q3, #8 \n"
  	"vrshr.u16	q14, q14, #3 \n"
  	"vmovl.u8	q8, d18 \n"
  	"vmul.i16	q13, q2, q13 \n"
  	"vmul.i16	q3, q3, q7 \n"
  	"vmul.i16	q12, q6, q12 \n"
  	"vmul.i16	q14, q14, q15 \n"
  	"vand	q10, q10, q4 \n"
  	"vsub.i16	q9, q11, q8 \n"
  	"vmul.i16	q8, q0, q8 \n"
  	"vshl.i16	q10, q10, #3 \n"
  	"vadd.i16	q13, q3, q13 \n"
  	"vmul.i16	q9, q10, q9 \n"
  	"vadd.i16	q12, q14, q12 \n"
  	"vshr.u16	q13, q13, #11 \n"
  	"vshr.u16	q12, q12, #10 \n"
  	"vadd.i16	q9, q9, q8 \n"
  	"vshl.i16	q8, q13, #11 \n"
  	"vshl.i16	q12, q12, #5 \n"
  	"vshr.u16	q9, q9, #11 \n"
  	"vorr	q8, q8, q12 \n"
  	"vorr	q8, q8, q9 \n"
  	"vst1.16	{d16-d17}, [%1]! \n"
  	"subs	    %0, %0, #1        \n" /* n-- */
  	"bne	.libaroma_alpha_multi_line_asm_loop  \n"
  	:
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(bottom),  /* r2 - 2 */
      "r"(topr),    /* r3 - 3 */
      "r"(topg),    /* r4 - 4 */
      "r"(topb),    /* r5 - 5 */
      "r"(alpha)    /* r6 - 6 */
    : "r7"
  );
}


/* dithered alpha blending */
void libaroma_alpha_px_line(
    int _Y, int n, wordp dst,
    wordp bottom, wordp top, bytep alpha){
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    __neon_alpha_const_init();
    uint16x8_t pxb, pxt, rbl, gbl, bbl, rtl, gtl, btl, o, op, ro;
    
    /* dithering data */
    uint16x8_t table_r16,table_g16,table_b16;
    __neon_dither_table(
      _Y, &table_r16, &table_g16, &table_b16
    );
    for (i=0;i<n-left;i+=8) {
      /* prepare opacity and reversed opacity value */
      op = vmovl_u8(vld1_u8(alpha+i));
      ro = vsubq_u16(__neon_const_falph, op);
      
      /* get 8 pixels data from top & bottom layer */
      pxb = vld1q_u16(bottom+i); /* bottom */
      pxt = vld1q_u16(top+i); /* top */
  
      /* bottom blend */
      rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_r),8),ro);
      gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_g),3),ro);
      bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,__neon_const_msk_b),3),ro);
      
      /* top blend */
      rtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,__neon_const_msk_r),8),op);
      gtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,__neon_const_msk_g),3),op);
      btl = vmulq_u16(vshlq_n_u16(vandq_u16(pxt,__neon_const_msk_b),3),op);
      
      /* dither blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 8);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 8);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 8);
      
      /* dithering */
      rbl = vminq_u16(vaddq_u16(rbl,table_r16),__neon_const_xalph);
      gbl = vminq_u16(vaddq_u16(gbl,table_g16),__neon_const_xalph);
      bbl = vminq_u16(vaddq_u16(bbl,table_b16),__neon_const_xalph);
      rbl = vqshlq_n_u16(vshrq_n_u16(rbl,3),11);
      gbl = vqshlq_n_u16(vshrq_n_u16(gbl,2),5);
      bbl = vshrq_n_u16(bbl,3);
      
      /* out value */
      o = vorrq_u16(vorrq_u16(rbl,gbl),bbl);
      
      /* comparison opaque/transparent */
      o = vbslq_u16(vceqq_u16(op,__neon_const_xalph),pxt,o); /*opacity*/
      o = vbslq_u16(vceqq_u16(op,__neon_const_zalph),pxb,o); /*transparent*/
      
      vst1q_u16(dst+i,o);
    }
  }
  /* leftover */
  if (left>0) {
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_dither(
        i, _Y, libaroma_alpha32(bottom[i], top[i], alpha[i]));
    }
  }
}

/* non-dithered alpha blending */
void libaroma_alpha_px(
    int n, wordp dst,
    wordp bottom, wordp top, bytep alpha) {
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    libaroma_alpha_px_asm(n-left,dst,bottom,top,alpha);
#if 0
    __neon_alpha_const_init();
    uint16x8_t pxb, pxt, rbl, gbl, bbl, rtl, gtl, btl, o, op, ro;
    for (i=0;i<n-left;i+=8) {
      /* prepare opacity and reversed opacity value */
      op = vmovl_u8(vld1_u8(alpha+i));
      ro = vsubq_u16(__neon_const_falph, op);
      
      /* get 8 pixels data from top & bottom layer */
      pxb = vld1q_u16(bottom+i); /* bottom */
      pxt = vld1q_u16(top+i); /* top */
  
      /* bottom blend */
      rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_r),8),ro);
      gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_g),3),ro);
      bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,__neon_const_msk_b),3),ro);
      
      /* top blend */
      rtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,__neon_const_msk_r),8),op);
      gtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,__neon_const_msk_g),3),op);
      btl = vmulq_u16(vshlq_n_u16(vandq_u16(pxt,__neon_const_msk_b),3),op);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
      rbl = vshlq_n_u16(rbl, 11);
      gbl = vshlq_n_u16(gbl, 5);
      
      /* out value */
      o = vorrq_u16(vorrq_u16(rbl,gbl),bbl);
      
      /* comparison opaque/transparent */
      o = vbslq_u16(vceqq_u16(op,__neon_const_xalph),pxt,o); /*opacity*/
      o = vbslq_u16(vceqq_u16(op,__neon_const_zalph),pxb,o); /*transparent*/
      
      vst1q_u16(dst+i,o);
    }
#endif

  }
  /* leftover */
  if (left>0) {
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_alpha(bottom[i], top[i], alpha[i]);
    }
  }
}

/* dithered alpha blending - constant alpha */
void libaroma_alpha_const_line(
    int _Y, int n, wordp dst,
    wordp bottom, wordp top, byte alpha) {
  if (alpha==0xff){
    if (dst!=top){
      memcpy(dst,top,n*2);
    }
    return;
  }
  else if (alpha==0){
    if (dst!=bottom){
      memcpy(dst,bottom,n*2);
    }
    return;
  }
  
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    __neon_alpha_const_init();
    uint16x8_t pxb, pxt, rbl, gbl, bbl, rtl, gtl, btl, op, ro;
    
    /* dithering data */
    uint16x8_t table_r16,table_g16,table_b16;
    __neon_dither_table(
      _Y, &table_r16, &table_g16, &table_b16
    );
    
    /* constant alpha */
    op = vdupq_n_u16(alpha);
    ro = vsubq_u16(__neon_const_falph, op);
    for (i=0;i<n-left;i+=8) {
      /* get 8 pixels data from top & bottom layer */
      pxb = vld1q_u16(bottom+i); /* bottom */
      pxt = vld1q_u16(top+i); /* top */
  
      /* bottom blend */
      rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_r),8),ro);
      gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_g),3),ro);
      bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,__neon_const_msk_b),3),ro);
      
      /* top blend */
      rtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,__neon_const_msk_r),8),op);
      gtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,__neon_const_msk_g),3),op);
      btl = vmulq_u16(vshlq_n_u16(vandq_u16(pxt,__neon_const_msk_b),3),op);
      
      /* dither blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 8);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 8);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 8);
      
      /* dithering */
      rbl = vminq_u16(vaddq_u16(rbl,table_r16),__neon_const_xalph);
      gbl = vminq_u16(vaddq_u16(gbl,table_g16),__neon_const_xalph);
      bbl = vminq_u16(vaddq_u16(bbl,table_b16),__neon_const_xalph);
      rbl = vqshlq_n_u16(vshrq_n_u16(rbl,3),11);
      gbl = vqshlq_n_u16(vshrq_n_u16(gbl,2),5);
      bbl = vshrq_n_u16(bbl,3);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rbl,gbl),bbl));
    }
  }
  /* leftover */
  if (left>0) {
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_dither(
        i, _Y, libaroma_alpha32(bottom[i], top[i], alpha));
    }
  }
}

/* non-dithered alpha blending - constant alpha */
void libaroma_alpha_const(
    int n, wordp dst,
    wordp bottom, wordp top, byte alpha) {
  if (alpha==0xff){
    if (dst!=top){
      memcpy(dst,top,n*2);
    }
    return;
  }
  else if (alpha==0){
    if (dst!=bottom){
      memcpy(dst,bottom,n*2);
    }
    return;
  }
  
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    libaroma_alpha_const_asm(n-left,dst,bottom,top,alpha);
#if 0
    __neon_alpha_const_init();
    uint16x8_t pxb, pxt, rbl, gbl, bbl, rtl, gtl, btl, op, ro;
    /* constant alpha */
    op = vdupq_n_u16(alpha);
    ro = vsubq_u16(__neon_const_falph, op);
    for (i=0;i<n-left;i+=8) {  
      /* get 8 pixels data from top & bottom layer */
      pxb = vld1q_u16(bottom+i); /* bottom */
      pxt = vld1q_u16(top+i); /* top */
  
      /* bottom blend */
      rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_r),8),ro);
      gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_g),3),ro);
      bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,__neon_const_msk_b),3),ro);
      
      /* top blend */
      rtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,__neon_const_msk_r),8),op);
      gtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,__neon_const_msk_g),3),op);
      btl = vmulq_u16(vshlq_n_u16(vandq_u16(pxt,__neon_const_msk_b),3),op);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
      rbl = vshlq_n_u16(rbl, 11);
      gbl = vshlq_n_u16(gbl, 5);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rbl,gbl),bbl));
    }
#endif
  }
  /* leftover */
  if (left>0) {
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_alpha(bottom[i], top[i], alpha);
    }
  }
}

/* alpha blending with black */
void libaroma_alpha_black(
    int n, wordp dst,
    wordp top, byte alpha) {
  if (alpha==0xff){
    if (dst!=top){
      memcpy(dst,top,n*2);
    }
    return;
  }
  else if (alpha==0){
    memset(dst,0,n*2);
    return;
  }
  
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    __neon_alpha_const_init();
    uint16x8_t pxt, rtl, gtl, btl, op;
    /* constant alpha */
    op = vdupq_n_u16(alpha);
    for (i=0;i<n-left;i+=8) {  
      /* get 8 pixels data from top & bottom layer */
      pxt = vld1q_u16(top+i); /* top */
      /* top blend */
      rtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,__neon_const_msk_r),8),op);
      gtl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxt,__neon_const_msk_g),3),op);
      btl = vmulq_u16(vshlq_n_u16(vandq_u16(pxt,__neon_const_msk_b),3),op);
      
      /* non-dithering blend result */
      rtl  = vshrq_n_u16(rtl, 11);
      gtl  = vshrq_n_u16(gtl, 10);
      btl  = vshrq_n_u16(btl, 11);
      rtl = vshlq_n_u16(rtl, 11);
      gtl = vshlq_n_u16(gtl, 5);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rtl,gtl),btl));
    }
  }
  /* leftover */
  if (left>0) {
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_alphab(top[i], alpha);
    }
  }
}

/* alphablending - constant top & alpha */
void libaroma_alpha_rgba_fill(
    int n, wordp dst,
    wordp bottom, word top, byte alpha) {
  if (alpha==0xff){
    libaroma_color_set(dst,top,n);
    return;
  }
  else if (alpha==0){
    if (dst!=bottom){
      memcpy(dst,bottom,n*2);
    }
    return;
  }
  
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    __neon_alpha_const_init();
    uint16x8_t pxb, rbl, gbl, bbl, rtl, gtl, btl, ro;
    
    /* constant top & alpha */
    rtl = vdupq_n_u16(libaroma_color_r(top)*alpha);
    gtl = vdupq_n_u16(libaroma_color_g(top)*alpha);
    btl = vdupq_n_u16(libaroma_color_b(top)*alpha);
    ro  = vdupq_n_u16(0x100-alpha);
    for (i=0;i<n-left;i+=8) {
      /* get 8 pixels data from top & bottom layer */
      pxb = vld1q_u16(bottom+i); /* bottom */
  
      /* bottom blend */
      rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_r),8),ro);
      gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_g),3),ro);
      bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,__neon_const_msk_b),3),ro);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
      rbl = vshlq_n_u16(rbl, 11);
      gbl = vshlq_n_u16(gbl, 5);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rbl,gbl),bbl));
    }
  }
  /* leftover */
  if (left>0) {
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_alpha(bottom[i], top, alpha);
    }
  }
}

/* alphablending - constant top dynamic alpha */
void libaroma_alpha_mono(int n, wordp dst, wordp bottom,
    word top, bytep alpha){
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    __neon_alpha_const_init();
    uint16x8_t pxb, pxt, rbl, gbl, bbl, rtl, gtl, btl, o, op, ro,rts,gts,bts;
    pxt = vdupq_n_u16(top);
    rts = vdupq_n_u16(libaroma_color_r(top));
    gts = vdupq_n_u16(libaroma_color_g(top));
    bts = vdupq_n_u16(libaroma_color_b(top));
    for (i=0;i<n-left;i+=8) {
      /* prepare opacity and reversed opacity value */
      op = vmovl_u8(vld1_u8(alpha+i));
      ro = vsubq_u16(__neon_const_falph, op);
      
      /* get 8 pixels data from top & bottom layer */
      pxb = vld1q_u16(bottom+i); /* bottom */
  
      /* bottom blend */
      rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_r),8),ro);
      gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_g),3),ro);
      bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,__neon_const_msk_b),3),ro);
      
      /* top blend */
      rtl = vmulq_u16(rts,op);
      gtl = vmulq_u16(gts,op);
      btl = vmulq_u16(bts,op);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
      rbl = vshlq_n_u16(rbl, 11);
      gbl = vshlq_n_u16(gbl, 5);
      
      /* out value */
      o = vorrq_u16(vorrq_u16(rbl,gbl),bbl);
      
      /* comparison opaque/transparent */
      o = vbslq_u16(vceqq_u16(op,__neon_const_xalph),pxt,o); /*opacity*/
      o = vbslq_u16(vceqq_u16(op,__neon_const_zalph),pxb,o); /*transparent*/
      
      vst1q_u16(dst+i,o);
    }
  }
  /* leftover */
  if (left>0) {
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_alpha(bottom[i], top, alpha[i]);
    }
  }
}

/* subpixel alphablending  */
void libaroma_alpha_multi_line(int n, wordp dst, wordp bottom,
    word top, bytep alphargb) {
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
    libaroma_alpha_multi_line_asm(
      n-left,
      dst,
      bottom,
      libaroma_color_r(top),
      libaroma_color_g(top),
      libaroma_color_b(top),
      alphargb);
#if 0
    __neon_alpha_const_init();
    uint8x8x3_t alphabuf;
    uint16x8_t pxb, rbl, gbl, bbl, rtl, gtl, btl, rts, gts, bts,
      op_r,op_g,op_b,ro_r,ro_g,ro_b;
    rts = vdupq_n_u16(libaroma_color_r(top));
    gts = vdupq_n_u16(libaroma_color_g(top));
    bts = vdupq_n_u16(libaroma_color_b(top));
    for (i=0;i<n-left;i+=8) {
      /* 24bit opacity */
      alphabuf = vld3_u8(alphargb+(i*3));
      
      /* prepare opacity and reversed opacity value */
      op_r = vmovl_u8(alphabuf.val[0]);
      op_g = vmovl_u8(alphabuf.val[1]);
      op_b = vmovl_u8(alphabuf.val[2]);
      ro_r = vsubq_u16(__neon_const_falph, op_r);
      ro_g = vsubq_u16(__neon_const_falph, op_g);
      ro_b = vsubq_u16(__neon_const_falph, op_b);
      
      /* get 8 pixels data from top & bottom layer */
      pxb = vld1q_u16(bottom+i); /* bottom */
  
      /* bottom blend */
      rbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_r),8),ro_r);
      gbl = vmulq_u16(vrshrq_n_u16(vandq_u16(pxb,__neon_const_msk_g),3),ro_g);
      bbl = vmulq_u16(vshlq_n_u16(vandq_u16(pxb,__neon_const_msk_b),3),ro_b);
      
      /* top blend */
      rtl = vmulq_u16(rts,op_r);
      gtl = vmulq_u16(gts,op_g);
      btl = vmulq_u16(bts,op_b);
      
      /* non-dithering blend result */
      rbl  = vshrq_n_u16(vaddq_u16(rbl, rtl), 11);
      gbl  = vshrq_n_u16(vaddq_u16(gbl, gtl), 10);
      bbl  = vshrq_n_u16(vaddq_u16(bbl, btl), 11);
      rbl = vshlq_n_u16(rbl, 11);
      gbl = vshlq_n_u16(gbl, 5);
      
      /* out value */
      vst1q_u16(dst+i,vorrq_u16(vorrq_u16(rbl,gbl),bbl));
    }
#endif
  }
  /* leftover */
  if (left>0) {
    int j;
    for (i=n-left;i<n;i++) {
      j=i*3;
      dst[i] = libaroma_alpha_multi(
        bottom[i],
        top,
        alphargb[j],
        alphargb[j+1],
        alphargb[j+2]
      );
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
