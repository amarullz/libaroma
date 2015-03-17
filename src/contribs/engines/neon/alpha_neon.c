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
 * + 17/03/15 - Add asm optimizer (Ahmad Amarullah)
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_alpha_neon_c__
#define __libaroma_alpha_neon_c__
#ifdef __ARM_HAVE_NEON


#define __ALPHA_NEON_USE_ASM 1

#ifdef __ALPHA_NEON_USE_ASM

/* asm alpha px */
void libaroma_alpha_px_asm(
    int n,
    wordp dst,
    wordp bottom,
    wordp top,
    bytep alpha){
  asm volatile(
    "lsr        %0,   %0, #3    \n" /* div 8 */
    "mov        r5,   #2016     \n"
    "vmov.i16   q0,   #255      \n"
    "vmov.i16   q1,   #256      \n"
    "vmov.i16   q12,  #31       \n"
    "vmov.i16   q13,  #63488    \n"
    "vdup.16    q14,  r5        \n"
    
    
    ".libaroma_alpha_px_asm_loop: \n"
    "vld1.8 {d16}, [%4]!        \n" /* vld1_u8(alpha) */
    "vmovl.u8 q8, d16           \n" /* q8=op */
    "vsub.i16 q11, q1, q8       \n" /* q11=ro */
    "vld1.16  {d18-d19}, [%2]!  \n" /* vld1q_u16(bottom) */
    "vld1.16  {d20-d21}, [%3]!  \n" /* vld1q_u16(top) */
    
    /* bottom */
    "vand       q6, q9, q13     \n" /* red */
    "vrshr.u16  q6, q6, #8      \n"
    "vmul.i16   q6, q6, q11     \n"
    "vand       q5, q9, q14     \n" /* green */
    "vrshr.u16  q5, q5, #3      \n"
    "vmul.i16   q5, q5, q11     \n"
    "vand       q4, q9, q12     \n" /* blue */
    "vshl.i16   q4, q4, #3      \n"
    "vmul.i16   q4, q4, q11     \n"
    
    /* top */
    "vand       q15, q10, q13   \n" /* red */
    "vrshr.u16  q15, q15, #8    \n"
    "vmul.i16   q15, q15, q8    \n"
    "vand       q2, q10, q14    \n" /* green */
    "vrshr.u16  q2, q2, #3      \n"
    "vmul.i16   q2, q2, q8      \n"
    "vand       q3, q10, q12    \n" /* blue */
    "vshl.i16   q3, q3, #3      \n"
    "vmul.i16   q3, q3, q8      \n"
    
    /* non-dithering blend result */
    "vadd.i16   q15, q6, q15    \n" /* r */
    "vadd.i16   q2,  q5, q2     \n" /* g */
    "vadd.i16   q3,  q4, q3     \n" /* b */
    "vshr.u16   q15, q15, #11   \n" /* r */
    "vshr.u16   q2,  q2,  #10   \n" /* g */
    "vshr.u16   q3,  q3,  #11   \n" /* b */
    
    "vshl.i16   q15, q15, #11   \n"
    "vshl.i16   q2, q2, #5      \n"
    
    "vorr       q15, q15, q2    \n" /* r|g|b */
    "vorr       q15, q15, q3    \n"
    
    "vceq.i16   q11, q8, q0     \n" /* o == 255 */
    "vceq.i16   q8, q8, #0      \n" /* o == 0 */
    "vbsl       q11, q10, q15   \n"
    "vbsl       q8, q9, q11     \n"
    
    "vst1.16  {d16-d17}, [%1]!  \n" /* store */
    
    "subs     %0, %0, #1        \n" /* n-- */
    "bne  .libaroma_alpha_px_asm_loop  \n"
    :
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(bottom),  /* r2 - 2 */
      "r"(top),     /* r3 - 3 */
      "r"(alpha)    /* r4 - 4 */
    : "r5"
  );
}

/* asm alpha mono */
void libaroma_alpha_mono_asm(
    int n,
    wordp dst,
    wordp bottom,
    word  top,
    bytep alpha){
  asm volatile(
    "lsr        %0,   %0, #3    \n" /* div 8 */
    "mov        r5,   #2016     \n"
    "vmov.i16   q0,   #255      \n"
    "vmov.i16   q1,   #256      \n"
    "vmov.i16   q12,  #31       \n"
    "vmov.i16   q13,  #63488    \n"
    "vdup.16    q14,  r5        \n"
    
    /* top color */
    "vdup.16    q10,  %3        \n"
    "vand       q6, q10, q13    \n" /* red */
    "vrshr.u16  q6, q6, #8      \n"
    "vand       q5, q10, q14    \n" /* green */
    "vrshr.u16  q5, q5, #3      \n"
    "vand       q4, q10, q12    \n" /* blue */
    "vshl.i16   q4, q4, #3      \n"
    
    ".libaroma_alpha_mono_asm_loop: \n"
    "vld1.8 {d16}, [%4]!        \n" /* vld1_u8(alpha) */
    "vmovl.u8 q8, d16           \n" /* q8=op */
    "vsub.i16 q11, q1, q8       \n" /* q11=ro */
    "vld1.16  {d18-d19}, [%2]!  \n" /* vld1q_u16(bottom) */
    
    /* bottom */
    "vand       q15, q9, q13     \n" /* red */
    "vrshr.u16  q15, q15, #8     \n"
    "vmul.i16   q15, q15, q11    \n"
    "vmul.i16   q7, q6, q8      \n"
    "vadd.i16   q15,q7, q15     \n"
    "vand       q2, q9, q14      \n" /* green */
    "vrshr.u16  q2, q2, #3       \n"
    "vmul.i16   q2, q2, q11      \n"
    "vmul.i16   q7,q5, q8       \n"
    "vadd.i16   q2,q7, q2       \n"
    "vand       q3, q9, q12      \n" /* blue */
    "vshl.i16   q3, q3, #3       \n"
    "vmul.i16   q3, q3, q11      \n"
    "vmul.i16   q7,q4, q8       \n"
    "vadd.i16   q3,q7, q3       \n"
    
    /* non-dithering blend result */
    "vshr.u16   q15, q15, #11   \n" /* r */
    "vshr.u16   q2,  q2,  #10   \n" /* g */
    "vshr.u16   q3,  q3,  #11   \n" /* b */
    "vshl.i16   q15, q15, #11   \n"
    "vshl.i16   q2, q2, #5      \n"
    "vorr       q15, q15, q2    \n" /* r|g|b */
    "vorr       q15, q15, q3    \n"
    "vceq.i16   q11, q8, q0     \n" /* o == 255 */
    "vceq.i16   q8, q8, #0      \n" /* o == 0 */
    "vbsl       q11, q10, q15   \n"
    "vbsl       q8, q9, q11     \n"
    
    "vst1.16  {d16-d17}, [%1]!  \n" /* store */
    "subs     %0, %0, #1        \n" /* n-- */
    "bne  .libaroma_alpha_mono_asm_loop  \n"
    :
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(bottom),  /* r2 - 2 */
      "r"(top),     /* r3 - 3 */
      "r"(alpha)    /* r4 - 4 */
    : "r5"
  );
}

/* asm alpha rgba fill */
void libaroma_alpha_rgba_fill_asm(
    int n,
    wordp dst,
    wordp bottom,
    word topr,
    word topg,
    word topb,
    word falpha){
  asm volatile(
    "lsr        %0,   %0, #3    \n" /* div 8 */
    "mov        r7,   #2016     \n"
    "vdup.16    q13,  r7        \n"
    "vmov.i16   q15,  #31       \n"
    "vmov.i16   q2,   #63488    \n"
    
    "vdup.16    q12,  %3        \n" /* r */
    "vdup.16    q3,   %4        \n" /* g */
    "vdup.16    q14,  %5        \n" /* b */
    "vdup.16    q9,   %6        \n" /* a */
    
    ".libaroma_alpha_rgba_fill_asm_loop: \n"
    "vld1.16	{d16-d17}, [%2]!  \n" /* vld1q_u16(bottom) */
    "vand       q1, q8, q2      \n" /* r */
    "vand       q11,q8, q13     \n" /* g */
    "vand       q10,q8, q15     \n" /* b */
    
    "vrshr.u16  q8,  q1,  #8    \n"
    "vrshr.u16  q11, q11, #3    \n"
    "vshl.i16   q10, q10, #3    \n"
    
    "vmul.i16   q8,  q8,  q9    \n"
    "vmul.i16   q11, q11, q9    \n"
    "vmul.i16   q10, q10, q9    \n"
    
    "vadd.i16   q8,  q8,  q12   \n"
    "vadd.i16   q11, q11, q3    \n"
    "vadd.i16   q10, q10, q14   \n"
  	
  	"vshr.u16   q8,  q8, #11   \n"
  	"vshr.u16   q11, q11,#10   \n"
  	"vshr.u16   q10, q10,#11   \n"
  	
  	"vshl.i16   q8,  q8,  #11  \n"
  	"vshl.i16   q11, q11, #5   \n"
  	
  	"vorr       q8, q8, q11    \n" /* r|g|b */
  	"vorr       q8, q8, q10    \n"
  	
    "vst1.16  {d16-d17}, [%1]!  \n" /* store */
    "subs     %0, %0, #1        \n" /* n-- */
    "bne  .libaroma_alpha_rgba_fill_asm_loop  \n"
    :
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(bottom),  /* r2 - 2 */
      "r"(topr),    /* r3 - 3 */
      "r"(topg),    /* r4 - 4 */
      "r"(topb),    /* r5 - 5 */
      "r"(falpha)   /* r6 - 6 */
    : "r7"
  );
}

/* asm alpha rgba fill */
void libaroma_alpha_rgba_fill_line_asm(
    int n,
    wordp dst,
    wordp bottom,
    word topr,
    word topg,
    word topb,
    word falpha,
    const byte * dither_r,
    const byte * dither_g,
    const byte * dither_b){
  asm volatile(
    "lsr        %0,   %0, #3    \n" /* div 8 */
    /* loads dither data */
    "vld1.8     {d10},  [%7]    \n" /* dither_r */
    "vld1.8     {d8},   [%8]    \n" /* dither_g */
    "vld1.8     {d16},  [%9]    \n" /* dither_b */
    "vmovl.u8   q0, d10         \n" /* dr = q0 */
    "vmovl.u8   q4, d8          \n" /* dg = q4 */
    "vmovl.u8   q5, d16         \n" /* db = q5 */
    
    "mov        r10,  #2016     \n"
    "vdup.16    q13,  r10       \n"
    "vmov.i16   q15,  #31       \n"
    "vmov.i16   q2,   #63488    \n"
    "vmov.i16   q6,   #255      \n"
    
    "vdup.16    q12,  %3        \n" /* r */
    "vdup.16    q3,   %4        \n" /* g */
    "vdup.16    q14,  %5        \n" /* b */
    "vdup.16    q9,   %6        \n" /* a */
    
    ".libaroma_alpha_rgba_fill_line_asm_loop: \n"
    "vld1.16	{d16-d17}, [%2]!  \n" /* vld1q_u16(bottom) */
    "vand       q1, q8, q2      \n" /* r */
    "vand       q11,q8, q13     \n" /* g */
    "vand       q10,q8, q15     \n" /* b */
    
    "vrshr.u16  q8,  q1,  #8    \n"
    "vrshr.u16  q11, q11, #3    \n"
    "vshl.i16   q10, q10, #3    \n"
    
    "vmul.i16   q8,  q8,  q9    \n"
    "vmul.i16   q11, q11, q9    \n"
    "vmul.i16   q10, q10, q9    \n"
    
    "vadd.i16   q8,  q8,  q12   \n"
    "vadd.i16   q11, q11, q3    \n"
    "vadd.i16   q10, q10, q14   \n"
  	
  	"vshr.u16   q8,  q8, #8     \n"
  	"vshr.u16   q11, q11,#8     \n"
  	"vshr.u16   q10, q10,#8     \n"
  	
  	"vadd.i16   q8 ,q8, q0  \n"
  	"vmin.u16   q8, q8, q6  \n"
  	"vshr.u16   q8, q8, #3  \n"
  	"vshl.i16   q8, q8, #11 \n"
  	
  	"vadd.i16   q11 ,q11, q4  \n"
  	"vmin.u16   q11, q11, q6  \n"
  	"vshr.u16   q11, q11, #2  \n"
  	"vshl.i16   q11, q11, #5  \n"
  	
  	"vadd.i16   q10 ,q10, q5  \n"
  	"vmin.u16   q10, q10, q6  \n"
  	"vshr.u16   q10, q10, #3  \n"
  	
  	"vorr       q8, q8, q11    \n" /* r|g|b */
  	"vorr       q8, q8, q10    \n"
  	
    "vst1.16  {d16-d17}, [%1]!  \n" /* store */
    "subs     %0, %0, #1        \n" /* n-- */
    "bne  .libaroma_alpha_rgba_fill_line_asm_loop  \n"
    :
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(bottom),  /* r2 - 2 */
      "r"(topr),    /* r3 - 3 */
      "r"(topg),    /* r4 - 4 */
      "r"(topb),    /* r5 - 5 */
      "r"(falpha),  /* r6 - 6 */
      "r"(dither_r),/* r7 - 7 */
      "r"(dither_g),/* r8 - 8 */
      "r"(dither_b) /* r9 - 9 */
    : "r10"
  );
}

/* asm alpha multiline */
void libaroma_alpha_multi_line_asm(
    int n,
    wordp dst,
    wordp bottom,
    byte topr,
    byte topg,
    byte topb,
    bytep alpha){
  asm volatile(
    "lsr        %0,   %0, #3      \n" /* div 8 */
    "mov        r7,   #2016       \n" 
    "vdup.16    q1,   r7          \n"
    "vmov.i16   q11,  #256        \n"
    "vmov.i16   q5,   #63488      \n"
    "vmov.i16   q4,   #31         \n"
    
    "vdup.16    q2,   %3          \n" /* topr */
    "vdup.16    q6,   %4          \n" /* topg */
    "vdup.16    q0,   %5          \n" /* topb */
    
    ".libaroma_alpha_multi_line_asm_loop: \n"
    
    "vld3.8     {d16-d18}, [%6]!  \n"
    "vld1.16    {d20-d21}, [%2]!  \n"
    "vmovl.u8   q13,  d16         \n"
    "vmovl.u8   q12,  d17         \n"
    "vand       q3,   q10,  q5    \n"
    "vand q14,  q10,  q1          \n"
    "vsub.i16   q7,   q11,  q13   \n"
    "vsub.i16   q15,  q11,  q12   \n"
    "vrshr.u16  q3,   q3,   #8    \n"
    "vrshr.u16  q14,  q14,  #3    \n"
    "vmovl.u8   q8,   d18         \n"
    "vmul.i16   q13,  q2,   q13   \n"
    "vmul.i16   q3,   q3,   q7    \n"
    "vmul.i16   q12,  q6,   q12   \n"
    "vmul.i16   q14,  q14,  q15   \n"
    "vand       q10,  q10,  q4    \n"
    "vsub.i16   q9,   q11,  q8    \n"
    "vmul.i16   q8,   q0,   q8    \n"
    "vshl.i16   q10,  q10,  #3    \n"
    "vadd.i16   q13,  q3,   q13   \n"
    "vmul.i16   q9,   q10,  q9    \n"
    "vadd.i16   q12,  q14,  q12   \n"
    "vshr.u16   q13,  q13,  #11   \n"
    "vshr.u16   q12,  q12,  #10   \n"
    "vadd.i16   q9,   q9,   q8    \n"
    "vshl.i16   q8,   q13,  #11   \n"
    "vshl.i16   q12,  q12,  #5    \n"
    "vshr.u16   q9,   q9,   #11   \n"
    "vorr       q8,   q8,   q12   \n"
    "vorr       q8,   q8,   q9    \n"
    "vst1.16    {d16-d17}, [%1]!  \n"
    
    "subs       %0, %0, #1        \n" /* n-- */
    "bne  .libaroma_alpha_multi_line_asm_loop  \n"
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

/* asm alpha line px */
void libaroma_alpha_px_line_asm(
    int n,
    wordp dst,
    wordp bottom,
    wordp top,
    bytep alpha,
    const byte * dither_r,
    const byte * dither_g,
    const byte * dither_b){
  asm volatile(
    "lsr        %0,   %0, #3    \n" /* div 8 */
    
    /* loads dither data */
    "vld1.8     {d10},  [%5]    \n" /* dither_r */
    "vld1.8     {d8},   [%6]    \n" /* dither_g */
    "vld1.8     {d16},  [%7]    \n" /* dither_b */
    "vmovl.u8   q0, d10         \n" /* dr = q0 */
    "vmovl.u8   q1, d8          \n" /* dg = q1 */
    "vmovl.u8   q2, d16         \n" /* db = q2 */
    
    /* color masks */
    "mov        r8,   #2016     \n"
    "vmov.i16   q15,  #63488    \n" /* mask r */
    "vdup.16    q13,  r8        \n" /* mask g */
    "vmov.i16   q14,  #31       \n" /* mask b */
    
    /* alpha consts */
    "vmov.i16   q11,  #255      \n" /* xalpha */
    "vmov.i16   q6,   #256      \n" /* falpha */
    
    ".libaroma_alpha_px_line_asm_loop: \n"
    
    "vld1.8     {d16},  [%4]!   \n" /* load alpha */
    "vmovl.u8   q8, d16         \n" /* q8=op */
    "vsub.i16   q12, q6, q8     \n" /* q12=ro */
    
    "vld1.16    {d18-d19},[%2]! \n" /* bottom */
    "vld1.16    {d20-d21},[%3]! \n" /* top */
    
    /* red */
    "vand       q3, q9, q15 \n"
    "vrshr.u16  q3, q3, #8  \n"
    "vmul.i16   q3, q3, q12 \n"
    "vand       q4, q10,q15 \n"
    "vrshr.u16  q4, q4, #8  \n"
    "vmul.i16   q4, q4, q8  \n"
    "vadd.i16   q4, q3, q4  \n"
    "vshr.u16   q4, q4, #8  \n"
    
    /* green */    
    "vand       q3, q9, q13 \n"
    "vrshr.u16  q3, q3, #3  \n"
    "vmul.i16   q3, q3, q12 \n"
    "vand       q5, q10,q13 \n"
    "vrshr.u16  q5, q5, #3  \n"
    "vmul.i16   q5, q5, q8  \n"
    "vadd.i16   q5, q3, q5  \n"
    "vshr.u16   q5, q5, #8  \n"
    
    "vadd.i16   q4 ,q4, q0  \n" /* r */
    "vmin.u16   q4, q4, q11 \n"
    "vshr.u16   q4, q4, #3  \n"
    "vqshl.u16  q4, q4, #11 \n"
    
    "vadd.i16   q5, q5, q1  \n" /* g */
    "vmin.u16   q5, q5, q11 \n"
    "vshr.u16   q5, q5, #2  \n"
    "vqshl.u16  q5, q5, #5  \n"
    
    "vorr       q4, q4, q5  \n" /* r|g */
    
    /* blue */
    "vand       q3, q9, q14 \n"
    "vshl.i16   q3, q3, #3  \n"
    "vmul.i16   q3, q3, q12 \n"
    "vand       q5, q10,q14 \n"
    "vshl.i16   q5, q5, #3  \n"
    "vmul.i16   q5, q5, q8  \n"
    "vadd.i16   q5, q3, q5  \n"
    "vshr.u16   q5, q5, #8  \n"
    "vadd.i16   q5, q5, q2  \n"
    "vmin.u16   q5, q5, q11 \n"
    "vshr.u16   q5, q5, #3  \n"
    
    "vorr       q4, q4, q5  \n" /* rg | b */
    
    "vceq.i16   q5, q8, q11 \n" /* op==255 */
    "vceq.i16   q8, q8, #0  \n" /* op==0 */
    
    "vbsl       q5, q10, q4  \n"
    "vbsl       q8, q9,  q5 \n"
    
    "vst1.16    {d16-d17}, [%1]! \n" /* store */
    
    "subs     %0, %0, #1        \n" /* n-- */
    "bne  .libaroma_alpha_px_line_asm_loop  \n"
    :
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(bottom),  /* r2 - 2 */
      "r"(top),     /* r3 - 3 */
      "r"(alpha),   /* r4 - 4 */
      "r"(dither_r),/* r5 - 5 */
      "r"(dither_g),/* r6 - 6 */
      "r"(dither_b) /* r7 - 7 */
    : "r8"
  );
}

/* asm alpha const */
void libaroma_alpha_const_asm(
    int n,
    wordp dst,
    wordp bottom,
    wordp top,
    word alpha){
  asm volatile(
    "lsr        %0,   %0,   #3    \n" /* div 8 */
    "mov        r5,   #2016       \n"
    "vmov.i16   q11,  #256        \n"
    "vdup.16    q12,  r5          \n"
    "vmov.i16   q13,  #31         \n"
    "vmov.i16   q14,  #63488      \n"
    "vdup.16    q10,  %4          \n" /* vdupq_n_u16(alpha) */
    "vsub.i16   q11,  q11,  q10   \n" /* q11=ro */
    
    ".libaroma_alpha_const_asm_loop: \n"
    
    /* load */
    "vld1.16  {d18-d19},  [%2]!   \n" /* vld1q_u16(bottom) */
    "vld1.16  {d16-d17},  [%3]!   \n" /* vld1q_u16(top) */
    
    /* bottom */
    "vand       q1,   q8,   q14   \n" /* red */
    "vrshr.u16  q1,   q1,   #8    \n"
    "vmul.i16   q1,   q1,   q10   \n"
    "vand       q15,  q8,   q12   \n" /* green */
    "vrshr.u16  q15,  q15,  #3    \n"
    "vmul.i16   q15,  q15,  q10   \n"
    "vand       q3,   q8,   q13   \n" /* blue */
    "vshl.i16   q3,   q3,   #3    \n"
    "vmul.i16   q3,   q3,   q10   \n"
    
    /* top */
    "vand       q0,   q9,   q14   \n" /* red */
    "vrshr.u16  q0,   q0,   #8    \n"
    "vmul.i16   q0,   q0,   q11   \n"
    "vand       q2,   q9,   q12   \n" /* green */
    "vrshr.u16  q2,   q2,   #3    \n"
    "vmul.i16   q2,   q2,   q11   \n"
    "vand       q9,   q9,   q13   \n" /* blue */
    "vshl.i16   q9,   q9,   #3    \n"
    "vmul.i16   q9,   q9,   q11   \n"
    
    /* calc */
    "vadd.i16   q8,   q0,   q1    \n"
    "vadd.i16   q15,  q2,   q15   \n"
    "vadd.i16   q9,   q9,   q3    \n"
    
    "vshr.u16   q8,   q8,   #11   \n" /* r */
    "vshr.u16   q15,  q15,  #10   \n" /* g */
    "vshr.u16   q9,   q9,   #11   \n" /* b */
    
    "vshl.i16   q8,   q8,   #11   \n"
    "vshl.i16   q15,  q15,  #5    \n"
  
    "vorr       q8, q8, q15       \n" /* r|g|b */
    "vorr       q8, q8, q9        \n"
    
    "vst1.16    {d16-d17}, [%1]!  \n" /* store */
    
    "subs     %0, %0, #1          \n" /* n-- */
    "bne  .libaroma_alpha_const_asm_loop  \n"
    :
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(bottom),  /* r2 - 2 */
      "r"(top),     /* r3 - 3 */
      "r"(alpha)    /* r4 - 4 */
    : "r5"
  );
}

/* asm alpha line px */
void libaroma_alpha_const_line_asm(
    int n,
    wordp dst,
    wordp bottom,
    wordp top,
    word alpha,
    const byte * dither_r,
    const byte * dither_g,
    const byte * dither_b){
  asm volatile(
    "lsr        %0,   %0, #3    \n" /* div 8 */
    
    /* loads dither data */
    "vld1.8     {d10},  [%5]    \n" /* dither_r */
    "vld1.8     {d8},   [%6]    \n" /* dither_g */
    "vld1.8     {d16},  [%7]    \n" /* dither_b */
    "vmovl.u8   q0, d10         \n" /* dr = q0 */
    "vmovl.u8   q1, d8          \n" /* dg = q1 */
    "vmovl.u8   q2, d16         \n" /* db = q2 */
    
    /* color masks */
    "mov        r8,   #2016     \n"
    "vmov.i16   q15,  #63488    \n" /* mask r */
    "vdup.16    q13,  r8        \n" /* mask g */
    "vmov.i16   q14,  #31       \n" /* mask b */
    
    /* alpha consts */
    "vmov.i16   q6,   #255      \n" /* xalpha */
    "vmov.i16   q12,  #256      \n" /* falpha */
    "vdup.16    q11,  %4        \n" /* vdupq_n_u16(alpha) */
    "vsub.i16   q12,  q12,  q11 \n" /* q11=ro */
    
    ".libaroma_alpha_const_line_asm_loop: \n"
    
    "vld1.16    {d18-d19},[%2]! \n" /* bottom */
    "vld1.16    {d20-d21},[%3]! \n" /* top */
    
    /* red */
    "vand       q3, q9, q15 \n"
    "vrshr.u16  q3, q3, #8  \n"
    "vmul.i16   q3, q3, q12 \n"
    "vand       q4, q10,q15 \n"
    "vrshr.u16  q4, q4, #8  \n"
    "vmul.i16   q4, q4, q11 \n"
    "vadd.i16   q4, q3, q4  \n"
    "vshr.u16   q4, q4, #8  \n"
    
    /* green */    
    "vand       q3, q9, q13 \n"
    "vrshr.u16  q3, q3, #3  \n"
    "vmul.i16   q3, q3, q12 \n"
    "vand       q5, q10,q13 \n"
    "vrshr.u16  q5, q5, #3  \n"
    "vmul.i16   q5, q5, q11 \n"
    "vadd.i16   q5, q3, q5  \n"
    "vshr.u16   q5, q5, #8  \n"
    
    "vadd.i16   q4 ,q4, q0  \n" /* r */
    "vmin.u16   q4, q4, q6  \n"
    "vshr.u16   q4, q4, #3  \n"
    "vqshl.u16  q4, q4, #11 \n"
    
    "vadd.i16   q5, q5, q1  \n" /* g */
    "vmin.u16   q5, q5, q6  \n"
    "vshr.u16   q5, q5, #2  \n"
    "vqshl.u16  q5, q5, #5  \n"
    
    "vorr       q4, q4, q5  \n" /* r|g */
    
    /* blue */
    "vand       q3, q9, q14 \n"
    "vshl.i16   q3, q3, #3  \n"
    "vmul.i16   q3, q3, q12 \n"
    "vand       q5, q10,q14 \n"
    "vshl.i16   q5, q5, #3  \n"
    "vmul.i16   q5, q5, q11 \n"
    "vadd.i16   q5, q3, q5  \n"
    "vshr.u16   q5, q5, #8  \n"
    "vadd.i16   q5, q5, q2  \n"
    "vmin.u16   q5, q5, q6  \n"
    "vshr.u16   q5, q5, #3  \n"
    
    "vorr       q8, q4, q5  \n" /* rg | b */
    "vst1.16    {d16-d17}, [%1]! \n" /* store */
    
    "subs     %0, %0, #1        \n" /* n-- */
    "bne  .libaroma_alpha_const_line_asm_loop  \n"
    :
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(bottom),  /* r2 - 2 */
      "r"(top),     /* r3 - 3 */
      "r"(alpha),   /* r4 - 4 */
      "r"(dither_r),/* r5 - 5 */
      "r"(dither_g),/* r6 - 6 */
      "r"(dither_b) /* r7 - 7 */
    : "r8"
  );
}

/* asm alpha const */
void libaroma_alpha_black_asm(
    int n,
    wordp dst,
    wordp top,
    word alpha){
  asm volatile(
    "lsr        %0,   %0,   #3    \n" /* div 8 */
    "mov        r4,   #2016       \n"
    "vdup.16    q12,  r4          \n"
    "vmov.i16   q13,  #31         \n"
    "vmov.i16   q14,  #63488      \n"
    "vdup.16    q11,  %3          \n" /* vdupq_n_u16(alpha) */
    
    ".libaroma_alpha_black_asm_loop: \n"
    /* load */
    "vld1.16  {d16-d17},  [%2]!   \n" /* vld1q_u16(top) */
    
    /* top */
    "vand       q0,   q9,   q14   \n" /* red */
    "vrshr.u16  q0,   q0,   #8    \n"
    "vmul.i16   q0,   q0,   q11   \n"
    "vand       q2,   q9,   q12   \n" /* green */
    "vrshr.u16  q2,   q2,   #3    \n"
    "vmul.i16   q2,   q2,   q11   \n"
    "vand       q9,   q9,   q13   \n" /* blue */
    "vshl.i16   q9,   q9,   #3    \n"
    "vmul.i16   q9,   q9,   q11   \n"
    
    "vshr.u16   q8,   q0,   #11   \n" /* r */
    "vshr.u16   q15,  q2,   #10   \n" /* g */
    "vshr.u16   q9,   q9,   #11   \n" /* b */
    "vshl.i16   q8,   q8,   #11   \n"
    "vshl.i16   q15,  q15,  #5    \n"
  
    "vorr       q8, q8, q15       \n" /* r|g|b */
    "vorr       q8, q8, q9        \n"
    
    "vst1.16    {d16-d17}, [%1]!  \n" /* store */
    
    "subs     %0, %0, #1          \n" /* n-- */
    "bne  .libaroma_alpha_black_asm_loop  \n"
    :
    : "r"(n),       /* r0 - 0 */
      "r"(dst),     /* r1 - 1 */
      "r"(top),     /* r2 - 2 */
      "r"(alpha)    /* r3 - 3 */
    : "r4"
  );
}

#else

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


#endif /* __ALPHA_NEON_USE_ASM */



/* dithered alpha blending */
void libaroma_alpha_px_line(
    int _Y, int n, wordp dst,
    wordp bottom, wordp top, bytep alpha){
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
#ifdef __ALPHA_NEON_USE_ASM
    byte table_p = ((_Y & 7) << 3);
    libaroma_alpha_px_line_asm(
      n-left,
      dst,
      bottom,
      top,
      alpha,
      libaroma_dither_tresshold_r+table_p,
      libaroma_dither_tresshold_g+table_p,
      libaroma_dither_tresshold_b+table_p
    );
    
#else
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
#endif
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
#ifdef __ALPHA_NEON_USE_ASM
    libaroma_alpha_px_asm(n-left,dst,bottom,top,alpha);
#else
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
#ifdef __ALPHA_NEON_USE_ASM
    byte table_p = ((_Y & 7) << 3);
    libaroma_alpha_const_line_asm(
      n-left,
      dst,
      bottom,
      top,
      (word) alpha,
      libaroma_dither_tresshold_r+table_p,
      libaroma_dither_tresshold_g+table_p,
      libaroma_dither_tresshold_b+table_p
    );
#else
    __neon_alpha_const_init();
    uint16x8_t pxb, pxt, rbl, gbl, bbl, rtl, gtl, btl, op, ro;
    
    /* dithering data */
    uint16x8_t table_r16,table_g16,table_b16;
    __neon_dither_table(
      _Y, &table_r16, &table_g16, &table_b16
    );
    
    /* constant alpha */
    op = vdupq_n_u16((word) alpha);
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
#endif
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
#ifdef __ALPHA_NEON_USE_ASM
    libaroma_alpha_const_asm(n-left,dst,bottom,top,(word) alpha);
#else
    __neon_alpha_const_init();
    uint16x8_t pxb, pxt, rbl, gbl, bbl, rtl, gtl, btl, op, ro;
    /* constant alpha */
    op = vdupq_n_u16((word) alpha);
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
#ifdef __ALPHA_NEON_USE_ASM
    libaroma_alpha_black_asm(n-left,dst,top,alpha);
#else
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
#endif
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
#ifdef __ALPHA_NEON_USE_ASM
    libaroma_alpha_rgba_fill_asm(n-left,dst,bottom,
      libaroma_color_r(top)*alpha,
      libaroma_color_g(top)*alpha,
      libaroma_color_b(top)*alpha,
      0x100-alpha
    );
#else
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
#endif
  }
  /* leftover */
  if (left>0) {
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_alpha(bottom[i], top, alpha);
    }
  }
}

/* alphablending - constant top & alpha */
void libaroma_alpha_rgba_fill_line(
    int _Y,
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
#ifdef __ALPHA_NEON_USE_ASM
    byte table_p = ((_Y & 7) << 3);
    libaroma_alpha_rgba_fill_line_asm(n-left,dst,bottom,
      libaroma_color_r(top)*alpha,
      libaroma_color_g(top)*alpha,
      libaroma_color_b(top)*alpha,
      0x100-alpha,
      libaroma_dither_tresshold_r+table_p,
      libaroma_dither_tresshold_g+table_p,
      libaroma_dither_tresshold_b+table_p
    );
#else
    __neon_alpha_const_init();
    uint16x8_t pxb, rbl, gbl, bbl, rtl, gtl, btl, ro;
    
    /* dithering data */
    uint16x8_t table_r16,table_g16,table_b16;
    __neon_dither_table(
      _Y, &table_r16, &table_g16, &table_b16
    );
    
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
#endif
  }
  /* leftover */
  if (left>0) {
    for (i=n-left;i<n;i++) {
      dst[i] = libaroma_dither(i, _Y,
        libaroma_alpha32(bottom[i], top, alpha)
      );
    }
  }
}

/* alphablending - constant top dynamic alpha */
void libaroma_alpha_mono(int n, wordp dst, wordp bottom,
    word top, bytep alpha){
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
#ifdef __ALPHA_NEON_USE_ASM
    libaroma_alpha_mono_asm(n-left,dst,bottom,top,alpha);
#else
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
#endif
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
#ifdef __ALPHA_NEON_USE_ASM
    libaroma_alpha_multi_line_asm(
      n-left,
      dst,
      bottom,
      libaroma_color_r(top),
      libaroma_color_g(top),
      libaroma_color_b(top),
      alphargb);
#else
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
#define __engine_have_libaroma_alpha_rgba_fill_line 1
#define __engine_have_libaroma_alpha_mono 1
#define __engine_have_libaroma_alpha_multi_line 1

#endif /* __ARM_HAVE_NEON */
#endif /* __libaroma_alpha_neon_c__ */
