# 1 "../../../libs/jpeg/jsimd_arm_neon.S"
# 1 "<command-line>"
# 1 "d:\\devtools\\linaro\\arm-linux-gnueabihf\\libc\\usr\\include\\stdc-predef.h" 1 3 4
# 1 "<command-line>" 2
# 1 "../../../libs/jpeg/jsimd_arm_neon.S"
# 54 "../../../libs/jpeg/jsimd_arm_neon.S"
.section .note.GNU-stack,"",%progbits


.text
.fpu neon
.arch armv7a
.object_arch armv7a
.arm







.macro asm_function fname
    .func \fname
    .global \fname

    .hidden \fname
    .type \fname, %function

\fname:
.endm


.macro transpose_4x4 x0, x1, x2, x3
    vtrn.16 \x0, \x1
    vtrn.16 \x2, \x3
    vtrn.32 \x0, \x2
    vtrn.32 \x1, \x3
.endm
# 105 "../../../libs/jpeg/jsimd_arm_neon.S"
.balign 16
jsimd_idct_ifast_neon_consts:
    .short (277 * 128 - 256 * 128)
    .short (362 * 128 - 256 * 128)
    .short (473 * 128 - 256 * 128)
    .short (669 * 128 - 512 * 128)



.macro idct_helper x0, x1, x2, x3, x4, x5, x6, x7, t10, t11, t12, t13, t14


    vsub.s16 \t10, \x0, \x4
    vadd.s16 \x4, \x0, \x4
    vswp.s16 \t10, \x0
    vsub.s16 \t11, \x2, \x6
    vadd.s16 \x6, \x2, \x6
    vswp.s16 \t11, \x2
    vsub.s16 \t10, \x3, \x5
    vadd.s16 \x5, \x3, \x5
    vswp.s16 \t10, \x3
    vsub.s16 \t11, \x1, \x7
    vadd.s16 \x7, \x1, \x7
    vswp.s16 \t11, \x1

    vqdmulh.s16 \t13, \x2, d0[1]
    vadd.s16 \t12, \x3, \x3
    vadd.s16 \x2, \x2, \t13
    vqdmulh.s16 \t13, \x3, d0[3]
    vsub.s16 \t10, \x1, \x3
    vadd.s16 \t12, \t12, \t13
    vqdmulh.s16 \t13, \t10, d0[2]
    vsub.s16 \t11, \x7, \x5
    vadd.s16 \t10, \t10, \t13
    vqdmulh.s16 \t13, \t11, d0[1]
    vadd.s16 \t11, \t11, \t13

    vqdmulh.s16 \t13, \x1, d0[0]
    vsub.s16 \x2, \x6, \x2
    vsub.s16 \t14, \x0, \x2
    vadd.s16 \x2, \x0, \x2
    vadd.s16 \x0, \x4, \x6
    vsub.s16 \x4, \x4, \x6
    vadd.s16 \x1, \x1, \t13
    vadd.s16 \t13, \x7, \x5
    vsub.s16 \t12, \t13, \t12
    vsub.s16 \t12, \t12, \t10
    vadd.s16 \t11, \t12, \t11
    vsub.s16 \t10, \x1, \t10
    vadd.s16 \t10, \t10, \t11

    vsub.s16 \x7, \x0, \t13
    vadd.s16 \x0, \x0, \t13
    vadd.s16 \x6, \t14, \t12
    vsub.s16 \x1, \t14, \t12
    vsub.s16 \x5, \x2, \t11
    vadd.s16 \x2, \x2, \t11
    vsub.s16 \x3, \x4, \t10
    vadd.s16 \x4, \x4, \t10
.endm

asm_function jsimd_idct_ifast_neon

    DCT_TABLE .req r0
    COEF_BLOCK .req r1
    OUTPUT_BUF .req r2
    OUTPUT_COL .req r3
    TMP .req ip

    vpush {d8-d15}


    adr TMP, jsimd_idct_ifast_neon_consts
    vld1.16 {d0}, [TMP, :64]
# 192 "../../../libs/jpeg/jsimd_arm_neon.S"
    vld1.16 {d4, d5, d6, d7}, [COEF_BLOCK]!
    vld1.16 {d8, d9, d10, d11}, [COEF_BLOCK]!
    vld1.16 {d12, d13, d14, d15}, [COEF_BLOCK]!
    vld1.16 {d16, d17, d18, d19}, [COEF_BLOCK]!

    vld1.16 {d20, d21, d22, d23}, [DCT_TABLE]!
    vmul.s16 q2, q2, q10
    vld1.16 {d24, d25, d26, d27}, [DCT_TABLE]!
    vmul.s16 q3, q3, q11
    vmul.s16 q4, q4, q12
    vld1.16 {d28, d29, d30, d31}, [DCT_TABLE]!
    vmul.s16 q5, q5, q13
    vmul.s16 q6, q6, q14
    vld1.16 {d20, d21, d22, d23}, [DCT_TABLE]!
    vmul.s16 q7, q7, q15
    vmul.s16 q8, q8, q10
    vmul.s16 q9, q9, q11


    idct_helper q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14

    vtrn.16 q2, q3
    vtrn.16 q4, q5
    vtrn.32 q2, q4
    vtrn.32 q3, q5

    vtrn.16 q6, q7
    vtrn.16 q8, q9
    vtrn.32 q6, q8
    vtrn.32 q7, q9

    vswp d12, d5
    vswp d14, d7
    vswp d16, d9
    vswp d18, d11


    idct_helper q2, q3, q4, q5, q6, q7, q8, q9, q10, q11, q12, q13, q14


    vtrn.16 q2, q3
    vtrn.16 q4, q5
    vtrn.32 q2, q4
    vtrn.32 q3, q5

    vtrn.16 q6, q7
    vtrn.16 q8, q9
    vtrn.32 q6, q8
    vtrn.32 q7, q9

    vswp d12, d5
    vswp d14, d7
    vswp d16, d9
    vswp d18, d11


    vmov.s16 q15, #(0x80 << 5)
    vqadd.s16 q2, q2, q15
    vqadd.s16 q3, q3, q15
    vqadd.s16 q4, q4, q15
    vqadd.s16 q5, q5, q15
    vqadd.s16 q6, q6, q15
    vqadd.s16 q7, q7, q15
    vqadd.s16 q8, q8, q15
    vqadd.s16 q9, q9, q15
    vqshrun.s16 d4, q2, #5
    vqshrun.s16 d6, q3, #5
    vqshrun.s16 d8, q4, #5
    vqshrun.s16 d10, q5, #5
    vqshrun.s16 d12, q6, #5
    vqshrun.s16 d14, q7, #5
    vqshrun.s16 d16, q8, #5
    vqshrun.s16 d18, q9, #5


    .irp x, d4, d6, d8, d10, d12, d14, d16, d18
    ldr TMP, [OUTPUT_BUF], #4
    add TMP, TMP, OUTPUT_COL
    vst1.8 {\x}, [TMP]!
    .endr

    vpop {d8-d15}
    bx lr

    .unreq DCT_TABLE
    .unreq COEF_BLOCK
    .unreq OUTPUT_BUF
    .unreq OUTPUT_COL
    .unreq TMP
.endfunc

.purgem idct_helper
# 322 "../../../libs/jpeg/jsimd_arm_neon.S"
.balign 16
jsimd_idct_4x4_neon_consts:
    .short (15137)
    .short -(6270)
    .short -(1730)
    .short (11893)
    .short -(17799)
    .short (8697)
    .short -(4176)
    .short -(4926)
    .short (7373)
    .short (20995)
    .short 1 << (13 +1)
    .short 0

.macro idct_helper x4, x6, x8, x10, x12, x14, x16, shift, y26, y27, y28, y29
    vmull.s16 q14, \x4, d2[2]
    vmlal.s16 q14, \x8, d0[0]
    vmlal.s16 q14, \x14, d0[1]

    vmull.s16 q13, \x16, d1[2]
    vmlal.s16 q13, \x12, d1[3]
    vmlal.s16 q13, \x10, d2[0]
    vmlal.s16 q13, \x6, d2[1]

    vmull.s16 q15, \x4, d2[2]
    vmlsl.s16 q15, \x8, d0[0]
    vmlsl.s16 q15, \x14, d0[1]

    vmull.s16 q12, \x16, d0[2]
    vmlal.s16 q12, \x12, d0[3]
    vmlal.s16 q12, \x10, d1[0]
    vmlal.s16 q12, \x6, d1[1]

    vadd.s32 q10, q14, q13
    vsub.s32 q14, q14, q13

.if \shift > 16
    vrshr.s32 q10, q10, #\shift
    vrshr.s32 q14, q14, #\shift
    vmovn.s32 \y26, q10
    vmovn.s32 \y29, q14
.else
    vrshrn.s32 \y26, q10, #\shift
    vrshrn.s32 \y29, q14, #\shift
.endif

    vadd.s32 q10, q15, q12
    vsub.s32 q15, q15, q12

.if \shift > 16
    vrshr.s32 q10, q10, #\shift
    vrshr.s32 q15, q15, #\shift
    vmovn.s32 \y27, q10
    vmovn.s32 \y28, q15
.else
    vrshrn.s32 \y27, q10, #\shift
    vrshrn.s32 \y28, q15, #\shift
.endif

.endm

asm_function jsimd_idct_4x4_neon

    DCT_TABLE .req r0
    COEF_BLOCK .req r1
    OUTPUT_BUF .req r2
    OUTPUT_COL .req r3
    TMP1 .req r0
    TMP2 .req r1
    TMP3 .req r2
    TMP4 .req ip

    vpush {d8-d15}


    adr TMP4, jsimd_idct_4x4_neon_consts
    vld1.16 {d0, d1, d2, d3}, [TMP4, :128]
# 413 "../../../libs/jpeg/jsimd_arm_neon.S"
    vld1.16 {d4, d5, d6, d7}, [COEF_BLOCK]!
    vld1.16 {d8, d9, d10, d11}, [COEF_BLOCK]!
    add COEF_BLOCK, COEF_BLOCK, #16
    vld1.16 {d12, d13, d14, d15}, [COEF_BLOCK]!
    vld1.16 {d16, d17}, [COEF_BLOCK]!

    vld1.16 {d18, d19, d20, d21}, [DCT_TABLE]!
    vmul.s16 q2, q2, q9
    vld1.16 {d22, d23, d24, d25}, [DCT_TABLE]!
    vmul.s16 q3, q3, q10
    vmul.s16 q4, q4, q11
    add DCT_TABLE, DCT_TABLE, #16
    vld1.16 {d26, d27, d28, d29}, [DCT_TABLE]!
    vmul.s16 q5, q5, q12
    vmul.s16 q6, q6, q13
    vld1.16 {d30, d31}, [DCT_TABLE]!
    vmul.s16 q7, q7, q14
    vmul.s16 q8, q8, q15



    idct_helper d4, d6, d8, d10, d12, d14, d16, 12, d4, d6, d8, d10
    transpose_4x4 d4, d6, d8, d10
    idct_helper d5, d7, d9, d11, d13, d15, d17, 12, d5, d7, d9, d11
    transpose_4x4 d5, d7, d9, d11


    idct_helper d4, d6, d8, d10, d7, d9, d11, 19, d26, d27, d28, d29
    transpose_4x4 d26, d27, d28, d29


    vmov.u16 q15, #0x80
    vadd.s16 q13, q13, q15
    vadd.s16 q14, q14, q15
    vqmovun.s16 d26, q13
    vqmovun.s16 d27, q14


    ldmia OUTPUT_BUF, {TMP1, TMP2, TMP3, TMP4}
    add TMP1, TMP1, OUTPUT_COL
    add TMP2, TMP2, OUTPUT_COL
    add TMP3, TMP3, OUTPUT_COL
    add TMP4, TMP4, OUTPUT_COL
# 466 "../../../libs/jpeg/jsimd_arm_neon.S"
    vst1.8 {d26[0]}, [TMP1]!
    vst1.8 {d27[0]}, [TMP3]!
    vst1.8 {d26[1]}, [TMP1]!
    vst1.8 {d27[1]}, [TMP3]!
    vst1.8 {d26[2]}, [TMP1]!
    vst1.8 {d27[2]}, [TMP3]!
    vst1.8 {d26[3]}, [TMP1]!
    vst1.8 {d27[3]}, [TMP3]!

    vst1.8 {d26[4]}, [TMP2]!
    vst1.8 {d27[4]}, [TMP4]!
    vst1.8 {d26[5]}, [TMP2]!
    vst1.8 {d27[5]}, [TMP4]!
    vst1.8 {d26[6]}, [TMP2]!
    vst1.8 {d27[6]}, [TMP4]!
    vst1.8 {d26[7]}, [TMP2]!
    vst1.8 {d27[7]}, [TMP4]!


    vpop {d8-d15}
    bx lr

    .unreq DCT_TABLE
    .unreq COEF_BLOCK
    .unreq OUTPUT_BUF
    .unreq OUTPUT_COL
    .unreq TMP1
    .unreq TMP2
    .unreq TMP3
    .unreq TMP4
.endfunc

.purgem idct_helper
# 516 "../../../libs/jpeg/jsimd_arm_neon.S"
.balign 8
jsimd_idct_2x2_neon_consts:
    .short -(5906)
    .short (6967)
    .short -(10426)
    .short (29692)

.macro idct_helper x4, x6, x10, x12, x16, shift, y26, y27
    vshll.s16 q14, \x4, #15
    vmull.s16 q13, \x6, d0[3]
    vmlal.s16 q13, \x10, d0[2]
    vmlal.s16 q13, \x12, d0[1]
    vmlal.s16 q13, \x16, d0[0]

    vadd.s32 q10, q14, q13
    vsub.s32 q14, q14, q13

.if \shift > 16
    vrshr.s32 q10, q10, #\shift
    vrshr.s32 q14, q14, #\shift
    vmovn.s32 \y26, q10
    vmovn.s32 \y27, q14
.else
    vrshrn.s32 \y26, q10, #\shift
    vrshrn.s32 \y27, q14, #\shift
.endif

.endm

asm_function jsimd_idct_2x2_neon

    DCT_TABLE .req r0
    COEF_BLOCK .req r1
    OUTPUT_BUF .req r2
    OUTPUT_COL .req r3
    TMP1 .req r0
    TMP2 .req ip

    vpush {d8-d15}


    adr TMP2, jsimd_idct_2x2_neon_consts
    vld1.16 {d0}, [TMP2, :64]
# 573 "../../../libs/jpeg/jsimd_arm_neon.S"
    vld1.16 {d4, d5, d6, d7}, [COEF_BLOCK]!
    add COEF_BLOCK, COEF_BLOCK, #16
    vld1.16 {d10, d11}, [COEF_BLOCK]!
    add COEF_BLOCK, COEF_BLOCK, #16
    vld1.16 {d12, d13}, [COEF_BLOCK]!
    add COEF_BLOCK, COEF_BLOCK, #16
    vld1.16 {d16, d17}, [COEF_BLOCK]!

    vld1.16 {d18, d19, d20, d21}, [DCT_TABLE]!
    vmul.s16 q2, q2, q9
    vmul.s16 q3, q3, q10
    add DCT_TABLE, DCT_TABLE, #16
    vld1.16 {d24, d25}, [DCT_TABLE]!
    vmul.s16 q5, q5, q12
    add DCT_TABLE, DCT_TABLE, #16
    vld1.16 {d26, d27}, [DCT_TABLE]!
    vmul.s16 q6, q6, q13
    add DCT_TABLE, DCT_TABLE, #16
    vld1.16 {d30, d31}, [DCT_TABLE]!
    vmul.s16 q8, q8, q15


    vmull.s16 q13, d6, d0[3]
    vmlal.s16 q13, d10, d0[2]
    vmlal.s16 q13, d12, d0[1]
    vmlal.s16 q13, d16, d0[0]
    vmull.s16 q12, d7, d0[3]
    vmlal.s16 q12, d11, d0[2]
    vmlal.s16 q12, d13, d0[1]
    vmlal.s16 q12, d17, d0[0]
    vshll.s16 q14, d4, #15
    vshll.s16 q15, d5, #15
    vadd.s32 q10, q14, q13
    vsub.s32 q14, q14, q13
    vrshrn.s32 d4, q10, #13
    vrshrn.s32 d6, q14, #13
    vadd.s32 q10, q15, q12
    vsub.s32 q14, q15, q12
    vrshrn.s32 d5, q10, #13
    vrshrn.s32 d7, q14, #13
    vtrn.16 q2, q3
    vtrn.32 q3, q5


    idct_helper d4, d6, d10, d7, d11, 20, d26, d27


    vmov.u16 q15, #0x80
    vadd.s16 q13, q13, q15
    vqmovun.s16 d26, q13
    vqmovun.s16 d27, q13


    ldmia OUTPUT_BUF, {TMP1, TMP2}
    add TMP1, TMP1, OUTPUT_COL
    add TMP2, TMP2, OUTPUT_COL

    vst1.8 {d26[0]}, [TMP1]!
    vst1.8 {d27[4]}, [TMP1]!
    vst1.8 {d26[1]}, [TMP2]!
    vst1.8 {d27[5]}, [TMP2]!

    vpop {d8-d15}
    bx lr

    .unreq DCT_TABLE
    .unreq COEF_BLOCK
    .unreq OUTPUT_BUF
    .unreq OUTPUT_COL
    .unreq TMP1
    .unreq TMP2
.endfunc

.purgem idct_helper
# 657 "../../../libs/jpeg/jsimd_arm_neon.S"
.macro do_load size
    .if \size == 8
        vld1.8 {d4}, [U]!
        vld1.8 {d5}, [V]!
        vld1.8 {d0}, [Y]!
        pld [Y, #64]
        pld [U, #64]
        pld [V, #64]
    .elseif \size == 4
        vld1.8 {d4[0]}, [U]!
        vld1.8 {d4[1]}, [U]!
        vld1.8 {d4[2]}, [U]!
        vld1.8 {d4[3]}, [U]!
        vld1.8 {d5[0]}, [V]!
        vld1.8 {d5[1]}, [V]!
        vld1.8 {d5[2]}, [V]!
        vld1.8 {d5[3]}, [V]!
        vld1.8 {d0[0]}, [Y]!
        vld1.8 {d0[1]}, [Y]!
        vld1.8 {d0[2]}, [Y]!
        vld1.8 {d0[3]}, [Y]!
    .elseif \size == 2
        vld1.8 {d4[4]}, [U]!
        vld1.8 {d4[5]}, [U]!
        vld1.8 {d5[4]}, [V]!
        vld1.8 {d5[5]}, [V]!
        vld1.8 {d0[4]}, [Y]!
        vld1.8 {d0[5]}, [Y]!
    .elseif \size == 1
        vld1.8 {d4[6]}, [U]!
        vld1.8 {d5[6]}, [V]!
        vld1.8 {d0[6]}, [Y]!
    .else
        .error unsupported macroblock size
    .endif
.endm





.macro do_store bpp, size
    .if \bpp == 16

            vmov d27, d10
            vsri.u8 d27, d11, #5
            vsli.u8 d26, d11, #3
            vsri.u8 d26, d12, #3

        .if \size == 8
            vst2.8 {d26, d27}, [RGB]!
        .elseif \size == 4
            vst2.8 {d26[0], d27[0]}, [RGB]!
            vst2.8 {d26[1], d27[1]}, [RGB]!
            vst2.8 {d26[2], d27[2]}, [RGB]!
            vst2.8 {d26[3], d27[3]}, [RGB]!
        .elseif \size == 2
            vst2.8 {d26[4], d27[4]}, [RGB]!
            vst2.8 {d26[5], d27[5]}, [RGB]!
        .elseif \size == 1
            vst2.8 {d26[6], d27[6]}, [RGB]!
        .else
            .error unsupported macroblock size
        .endif
    .elseif \bpp == 24
        .if \size == 8
            vst3.8 {d10, d11, d12}, [RGB]!
        .elseif \size == 4
            vst3.8 {d10[0], d11[0], d12[0]}, [RGB]!
            vst3.8 {d10[1], d11[1], d12[1]}, [RGB]!
            vst3.8 {d10[2], d11[2], d12[2]}, [RGB]!
            vst3.8 {d10[3], d11[3], d12[3]}, [RGB]!
        .elseif \size == 2
            vst3.8 {d10[4], d11[4], d12[4]}, [RGB]!
            vst3.8 {d10[5], d11[5], d12[5]}, [RGB]!
        .elseif \size == 1
            vst3.8 {d10[6], d11[6], d12[6]}, [RGB]!
        .else
            .error unsupported macroblock size
        .endif
    .elseif \bpp == 32
        .if \size == 8
            vst4.8 {d10, d11, d12, d13}, [RGB]!
        .elseif \size == 4
            vst4.8 {d10[0], d11[0], d12[0], d13[0]}, [RGB]!
            vst4.8 {d10[1], d11[1], d12[1], d13[1]}, [RGB]!
            vst4.8 {d10[2], d11[2], d12[2], d13[2]}, [RGB]!
            vst4.8 {d10[3], d11[3], d12[3], d13[3]}, [RGB]!
        .elseif \size == 2
            vst4.8 {d10[4], d11[4], d12[4], d13[4]}, [RGB]!
            vst4.8 {d10[5], d11[5], d12[5], d13[5]}, [RGB]!
        .elseif \size == 1
            vst4.8 {d10[6], d11[6], d12[6], d13[6]}, [RGB]!
        .else
            .error unsupported macroblock size
        .endif
    .else
        .error unsupported bpp
    .endif
.endm

.macro generate_jsimd_ycc_rgb_convert_neon colorid, bpp, r_offs, g_offs, b_offs

.macro do_yuv_to_rgb
    vaddw.u8 q3, q1, d4
    vaddw.u8 q4, q1, d5
    vmull.s16 q10, d6, d1[1]
    vmlal.s16 q10, d8, d1[2]
    vmull.s16 q11, d7, d1[1]
    vmlal.s16 q11, d9, d1[2]
    vmull.s16 q12, d8, d1[0]
    vmull.s16 q13, d9, d1[0]
    vmull.s16 q14, d6, d1[3]
    vmull.s16 q15, d7, d1[3]
    vrshrn.s32 d20, q10, #15
    vrshrn.s32 d21, q11, #15
    vrshrn.s32 d24, q12, #14
    vrshrn.s32 d25, q13, #14
    vrshrn.s32 d28, q14, #14
    vrshrn.s32 d29, q15, #14
    vaddw.u8 q10, q10, d0
    vaddw.u8 q12, q12, d0
    vaddw.u8 q14, q14, d0
    vqmovun.s16 d1\g_offs, q10
    vqmovun.s16 d1\r_offs, q12
    vqmovun.s16 d1\b_offs, q14
.endm





.balign 16
jsimd_ycc_\colorid\()_neon_consts:
    .short 0, 0, 0, 0
    .short 22971, -11277, -23401, 29033
    .short -128, -128, -128, -128
    .short -128, -128, -128, -128

asm_function jsimd_ycc_\colorid\()_convert_neon
    OUTPUT_WIDTH .req r0
    INPUT_BUF .req r1
    INPUT_ROW .req r2
    OUTPUT_BUF .req r3
    NUM_ROWS .req r4

    INPUT_BUF0 .req r5
    INPUT_BUF1 .req r6
    INPUT_BUF2 .req INPUT_BUF

    RGB .req r7
    Y .req r8
    U .req r9
    V .req r10
    N .req ip


    adr ip, jsimd_ycc_\colorid\()_neon_consts
    vld1.16 {d0, d1, d2, d3}, [ip, :128]


    push {r4, r5, r6, r7, r8, r9, r10, lr}
    ldr NUM_ROWS, [sp, #(4 * 8)]
    ldr INPUT_BUF0, [INPUT_BUF]
    ldr INPUT_BUF1, [INPUT_BUF, #4]
    ldr INPUT_BUF2, [INPUT_BUF, #8]
    .unreq INPUT_BUF


    vpush {d8-d15}


    vmov.u8 q5, #255
    vmov.u8 q6, #255


    cmp NUM_ROWS, #1
    blt 9f
0:
    ldr Y, [INPUT_BUF0, INPUT_ROW, lsl #2]
    ldr U, [INPUT_BUF1, INPUT_ROW, lsl #2]
    mov N, OUTPUT_WIDTH
    ldr V, [INPUT_BUF2, INPUT_ROW, lsl #2]
    add INPUT_ROW, INPUT_ROW, #1
    ldr RGB, [OUTPUT_BUF], #4


    subs N, N, #8
    blt 2f
1:
    do_load 8
    do_yuv_to_rgb
    do_store \bpp, 8
    subs N, N, #8
    bge 1b
    tst N, #7
    beq 8f
2:
    tst N, #4
    beq 3f
    do_load 4
3:
    tst N, #2
    beq 4f
    do_load 2
4:
    tst N, #1
    beq 5f
    do_load 1
5:
    do_yuv_to_rgb
    tst N, #4
    beq 6f
    do_store \bpp, 4
6:
    tst N, #2
    beq 7f
    do_store \bpp, 2
7:
    tst N, #1
    beq 8f
    do_store \bpp, 1
8:
    subs NUM_ROWS, NUM_ROWS, #1
    bgt 0b
9:

    vpop {d8-d15}
    pop {r4, r5, r6, r7, r8, r9, r10, pc}

    .unreq OUTPUT_WIDTH
    .unreq INPUT_ROW
    .unreq OUTPUT_BUF
    .unreq NUM_ROWS
    .unreq INPUT_BUF0
    .unreq INPUT_BUF1
    .unreq INPUT_BUF2
    .unreq RGB
    .unreq Y
    .unreq U
    .unreq V
    .unreq N
.endfunc

.purgem do_yuv_to_rgb

.endm


generate_jsimd_ycc_rgb_convert_neon rgba8888, 32, 0, 1, 2
generate_jsimd_ycc_rgb_convert_neon rgb565, 16, 0, 1, 2


.purgem do_load
.purgem do_store
