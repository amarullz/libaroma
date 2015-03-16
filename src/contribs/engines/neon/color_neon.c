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
 * Filename    : color_neon.c
 * Description : neon simd color engine
 *
 * + This is part of libaroma, an embedded ui toolkit.
 * + 26/01/15 - Author(s): Ahmad Amarullah
 *
 */
#ifndef __libaroma_aroma_c__
  #error "Should be inside aroma.c."
#endif
#ifndef __libaroma_color_neon_c__
#define __libaroma_color_neon_c__
#ifdef __ARM_HAVE_NEON


/* assembler version of libaroma_color_copy32 */
void libaroma_color_set_asm(wordp dst, word color, int n){
  asm volatile(
    "lsr	    %2,   %2, #4 \n"
  	"vdup.16	q8,   %1 \n"
  	"vmov   	q9,   q8 \n"
  	"vmov   	q10,  q8 \n"
  	"vmov   	q11,  q8 \n"
    ".libaroma_color_set_asm_loop: \n"
  	"vst4.16	{d16, d18, d20, d22}, [%0]! \n"
  	"subs	    %2, %2, #1 \n"
  	"bne	.libaroma_color_set_asm_loop  \n"
  	:
    : "r"(dst), "r"(color), "r"(n)
    :
  );
}

/* set color buffer */
/* 512 & 256bit vector */
void libaroma_color_set(wordp dst, word color, int n) {
  int i,left=n%16;
  if (n>=16){
    libaroma_color_set_asm(dst,color,n-left);
  }
  if (left>0){
    for (i=n-left;i<n;i++) {
      dst[i]=color;
    }
  }
  
#if 0
  /* c */
  int i,left=n%32;
  if (n>=32){
    /* use 512bit vector */
    uint16x8x4_t t_clr;
    t_clr.val[0]= t_clr.val[1]= t_clr.val[2]= t_clr.val[3]=vdupq_n_u16(color);
    for (i=0;i<n-left;i+=32) {
      vst4q_u16(dst+i, t_clr);
    }
  }
  if (left>0){
    for (i=n-left;i<n;i++) {
      dst[i]=color;
    }
  }
#endif

}

/* assembler version of libaroma_color_copy32 */
void libaroma_color_copy32_asm(dwordp dst, wordp src, int n, byte rgb){
  asm volatile(
    "lsr	      %2,   %2, #3      \n"
    "mov        r4,   #2016       \n"
    "vmov.i16	  q15,  #63488      \n" /* red mask */
    "vdup.16	  q14,  r4          \n" /* green mask */
    "vmov.i16	  q13,  #31         \n" /* blue mask */
    
    /* color space position */
    "cmp        r3, #8 \n"
    "beq	      .libaroma_color_copy32_asm_loop_xbgr \n"
    "cmp        r3, #16 \n"
    "beq	      .libaroma_color_copy32_asm_loop_bgrx \n"
    "cmp        r3, #24 \n"
    "beq	      .libaroma_color_copy32_asm_loop_xrgb \n"
    
    ".libaroma_color_copy32_asm_loop: \n" /* rgbx */
    "vld1.16	  {d20-d21}, [r1]!  \n"
  	"vand	      q12, q10, q15     \n"
  	"vand	      q11, q10, q14     \n"
  	"vand	      q10, q10, q13     \n"
  	"vshrn.i16	d16, q12, #8      \n"
  	"vshrn.i16	d17, q11, #3      \n"
  	"vshl.i16	  q10, q10, #3      \n"
  	"vmovn.i16	d18, q10          \n"
  	"vst4.8	{d16-d19}, [r0]!      \n"
  	"subs	%2, %2, #1              \n"
  	"bne      .libaroma_color_copy32_asm_loop \n"
  	"b        .libaroma_color_copy32_asm_end \n"
  	
  	".libaroma_color_copy32_asm_loop_bgrx: \n" /* bgrx */
    "vld1.16	  {d20-d21}, [r1]!  \n"
  	"vand	      q12, q10, q15     \n"
  	"vand	      q11, q10, q14     \n"
  	"vand	      q10, q10, q13     \n"
  	"vshrn.i16	d18, q12, #8      \n"
  	"vshrn.i16	d17, q11, #3      \n"
  	"vshl.i16	  q10, q10, #3      \n"
  	"vmovn.i16	d16, q10          \n"
  	"vst4.8	{d16-d19}, [r0]!      \n"
  	"subs	%2, %2, #1              \n"
  	"bne      .libaroma_color_copy32_asm_loop_bgrx \n"
  	"b        .libaroma_color_copy32_asm_end \n"
  	
  	".libaroma_color_copy32_asm_loop_xbgr: \n" /* xbgr */
    "vld1.16	  {d20-d21}, [r1]!  \n"
  	"vand	      q12, q10, q15     \n"
  	"vand	      q11, q10, q14     \n"
  	"vand	      q10, q10, q13     \n"
  	"vshrn.i16	d19, q12, #8      \n"
  	"vshrn.i16	d18, q11, #3      \n"
  	"vshl.i16	  q10, q10, #3      \n"
  	"vmovn.i16	d17, q10          \n"
  	"vst4.8	{d16-d19}, [r0]!      \n"
  	"subs	%2, %2, #1              \n"
  	"bne      .libaroma_color_copy32_asm_loop_xbgr \n"
  	"b        .libaroma_color_copy32_asm_end \n"
  	
  	".libaroma_color_copy32_asm_loop_xrgb: \n" /* xrgb */
    "vld1.16	  {d20-d21}, [r1]!  \n"
  	"vand	      q12, q10, q15     \n"
  	"vand	      q11, q10, q14     \n"
  	"vand	      q10, q10, q13     \n"
  	"vshrn.i16	d17, q12, #8      \n"
  	"vshrn.i16	d18, q11, #3      \n"
  	"vshl.i16	  q10, q10, #3      \n"
  	"vmovn.i16	d19, q10          \n"
  	"vst4.8	{d16-d19}, [r0]!      \n"
  	"subs	%2, %2, #1              \n"
  	"bne      .libaroma_color_copy32_asm_loop_xrgb \n"
  	"b        .libaroma_color_copy32_asm_end \n"
  	
  	".libaroma_color_copy32_asm_end: \n"
    :
    : "r"(dst), "r"(src), "r"(n), "r"(rgb)
    : "r4"
  );
}

/* 16bit to 32bit */
void libaroma_color_copy32(dwordp dst, wordp src, int n, bytep rgb_pos) {
  int i,left=n%8;
  
  /* neon */
  if (n>=8){
#ifdef LIBAROMA_CONFIG_USE_HICOLOR_BIT
    uint16x8_t msk_r = vdupq_n_u16(0xF800); /* Red Mask */
    uint16x8_t msk_g = vdupq_n_u16(0x07E0); /* Green Mask */
    uint16x8_t msk_b = vdupq_n_u16(0x001F); /* Blue Mask */
    uint16x8_t psrc;
    uint8x8x4_t n_dst;
    uint8x8_t r, g, b;
    for (i=0;i<n-left;i+=8) {
      /* load source color */
      psrc = vld1q_u16(src+i);
      /* get subpixels of source color */
      r = vshrn_n_u16(vandq_u16(psrc,msk_r),8);
      g = vshrn_n_u16(vandq_u16(psrc,msk_g),3);
      b = vmovn_u16(vshlq_n_u16(vandq_u16(psrc,msk_b),3));
      /* small byte left : 11111xxx 111111xx 11111xxx */
      n_dst.val[rgb_pos[3]] = vorr_u8(r,vshr_n_u8(r,5));
      n_dst.val[rgb_pos[4]] = vorr_u8(g,vshr_n_u8(g,6));
      n_dst.val[rgb_pos[5]] = vorr_u8(b,vshr_n_u8(b,5));
      /* dump it */
      vst4_u8((uint8_t *) (dst+i), n_dst);
    }
#else
    /* use assembler version */
    libaroma_color_copy32_asm(dst,src,n-left,rgb_pos[0]);
#endif
  }
  
  /* leftover */
  if (left>0){
    word cl;
    for (i=n-left;i<n;i++) {
      cl = src[i];
#ifdef LIBAROMA_CONFIG_USE_HICOLOR_BIT
      dst[i] = (
        (libaroma_color_hi_r(libaroma_color_r(cl)) << rgb_pos[0]) |
        (libaroma_color_hi_g(libaroma_color_g(cl)) << rgb_pos[1]) |
        (libaroma_color_hi_b(libaroma_color_b(cl)) << rgb_pos[2])
      );
#else
      dst[i] = (
        (libaroma_color_r(cl) << rgb_pos[0]) |
        (libaroma_color_g(cl) << rgb_pos[1]) |
        (libaroma_color_b(cl) << rgb_pos[2])
      );
#endif
    }
  }
}


/* 32bit to 26bit */
void libaroma_color_copy16(wordp dst, dwordp src, int n, bytep rgb_pos) {
  int i,left=n%8;
  /* neon */
  if (n>=8) {
    uint8x8x4_t psrc;
    for (i=0;i<n-left;i+=8) {
      psrc = vld4_u8((uint8_t *) (src+i));
      vst1q_u16(
        dst+i, 
        vorrq_u16(
          vorrq_u16(
            vshlq_n_u16(vmovl_u8(vshr_n_u8(psrc.val[rgb_pos[3]], 3)), 11),
            vshlq_n_u16(vmovl_u8(vshr_n_u8(psrc.val[rgb_pos[4]], 2)), 5)
          ),
          vmovl_u8(vshr_n_u8(psrc.val[rgb_pos[5]], 3))
        )
      );
    }
  }
  
  /* leftover */
  if (left>0){
    dword cl;
    for (i=n-left;i<n;i++) {
      cl = src[i];
      dst[i] = libaroma_rgb(
        (byte) ((cl>>rgb_pos[0])&0xff),
        (byte) ((cl>>rgb_pos[1])&0xff),
        (byte) ((cl>>rgb_pos[2])&0xff)
      );
    }
  }
}

/* set available engine */
#define __engine_have_libaroma_color_set 1
#define __engine_have_libaroma_color_copy32 1
#define __engine_have_libaroma_color_copy16 1

/* TODO: __engine_have_libaroma_color_set32 */

#endif /* __ARM_HAVE_NEON */
#endif /* __libaroma_color_neon_c__ */
