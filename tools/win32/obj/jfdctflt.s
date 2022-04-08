	.syntax unified
	.arch armv7-a
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu neon
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"jfdctflt.c"
	.section	.text.jpeg_fdct_float,"ax",%progbits
	.align	2
	.global	jpeg_fdct_float
	.thumb
	.thumb_func
	.type	jpeg_fdct_float, %function
jpeg_fdct_float:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	r1, r0, #96
	vldr	d6, .L15
	vldr	d7, .L15+8
	add	lr, r0, #16
	add	r7, r0, #32
	add	r6, r0, #48
	add	r5, r0, #64
	add	r4, r0, #80
	add	r2, r0, #112
	add	ip, r0, #256
	mov	r3, r0
	vldr	d0, .L15+16
	vldr	d1, .L15+24
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	vldr	d2, .L15+32
	vldr	d3, .L15+40
.L3:
	vld1.32	{q8}, [r3]
	vld1.32	{q12}, [lr]
	vld1.32	{q5}, [r7]
	vld1.32	{q13}, [r6]
	vld1.32	{q6}, [r5]
	vld1.32	{q14}, [r4]
	vld1.32	{q11}, [r1]
	vld1.32	{q4}, [r2]
	vuzp.32	q8, q12
	vuzp.32	q5, q13
	vuzp.32	q6, q14
	vuzp.32	q11, q4
	vuzp.32	q8, q5
	vuzp.32	q12, q13
	vuzp.32	q14, q4
	vuzp.32	q6, q11
	vuzp.32	q12, q14
	vuzp.32	q5, q11
	vsub.f32	q9, q5, q14
	vsub.f32	q7, q12, q11
	vuzp.32	q8, q6
	vadd.f32	q5, q5, q14
	vadd.f32	q10, q9, q7
	vuzp.32	q13, q4
	vsub.f32	q14, q9, q6
	vsub.f32	q9, q8, q4
	vadd.f32	q6, q13, q6
	vadd.f32	q13, q14, q13
	vadd.f32	q7, q7, q9
	vadd.f32	q11, q11, q12
	vadd.f32	q4, q4, q8
	vsub.f32	q12, q13, q7
	vmul.f32	q10, q10, q3
	vsub.f32	q8, q4, q6
	vmul.f32	q12, q12, q0
	vsub.f32	q15, q9, q10
	vsub.f32	q14, q8, q5
	vadd.f32	q9, q10, q9
	vmov	q2, q12  @ v4sf
	vmla.f32	q2, q13, q1
	vadd.f32	q14, q14, q11
	vadd.f32	q10, q5, q11
	vadd.f32	q4, q6, q4
	vmul.f32	q14, q14, q3
	vmov	q13, q2  @ v4sf
	vldr	d4, .L15+48
	vldr	d5, .L15+56
	vmla.f32	q12, q7, q2
	vadd.f32	q11, q13, q15
	vsub.f32	q13, q15, q13
	vadd.f32	q15, q12, q9
	vsub.f32	q9, q9, q12
	vadd.f32	q12, q14, q8
	vsub.f32	q8, q8, q14
	vzip.32	q15, q11
	vadd.f32	q14, q10, q4
	vsub.f32	q10, q4, q10
	vzip.32	q13, q9
	vzip.32	q12, q8
	vzip.32	q14, q10
	vzip.32	q15, q13
	vzip.32	q14, q12
	vzip.32	q11, q9
	vzip.32	q10, q8
	vzip.32	q14, q15
	vzip.32	q12, q13
	vzip.32	q10, q11
	vzip.32	q8, q9
	vst1.32	{q14}, [r3]
	adds	r3, r3, #128
	cmp	r3, ip
	vst1.32	{q15}, [lr]
	add	lr, lr, #128
	vst1.32	{q12}, [r7]
	add	r7, r7, #128
	vst1.32	{q13}, [r6]
	add	r6, r6, #128
	vst1.32	{q10}, [r5]
	add	r5, r5, #128
	vst1.32	{q11}, [r4]
	add	r4, r4, #128
	vst1.32	{q8}, [r1]
	add	r1, r1, #128
	vst1.32	{q9}, [r2]
	add	r2, r2, #128
	bne	.L3
	sbfx	r3, r0, #2, #1
	ands	ip, r3, #3
	beq	.L9
	lsl	r1, ip, #2
	flds	s3, .L15+64
	flds	s0, .L15+68
	adds	r2, r0, #4
	flds	s1, .L15+72
	adds	r6, r0, r1
	flds	s2, .L15+76
	mov	r3, r0
	movs	r4, #7
.L5:
	flds	s4, [r3, #64]
	adds	r3, r3, #4
	flds	s7, [r3, #156]
	subs	r5, r4, #1
	flds	s10, [r2, #-4]
	adds	r2, r2, #4
	flds	s12, [r3, #220]
	flds	s13, [r3, #188]
	flds	s8, [r3, #124]
	flds	s11, [r3, #28]
	fsubs	s15, s4, s7
	flds	s5, [r3, #92]
	fsubs	s14, s10, s12
	fsubs	s6, s11, s13
	fsubs	s9, s15, s8
	fadds	s8, s5, s8
	fadds	s10, s10, s12
	fadds	s7, s4, s7
	fadds	s9, s9, s5
	fadds	s5, s14, s6
	fadds	s11, s11, s13
	fadds	s6, s6, s15
	fsubs	s15, s10, s8
	fsubs	s12, s9, s5
	fsubs	s13, s11, s7
	fmuls	s6, s6, s3
	fadds	s10, s10, s8
	fmuls	s12, s12, s0
	fadds	s13, s13, s15
	fsubs	s8, s14, s6
	fadds	s11, s11, s7
	fcpys	s24, s12
	fmacs	s12, s5, s2
	fmacs	s24, s9, s1
	fadds	s14, s6, s14
	fmuls	s13, s13, s3
	fadds	s4, s10, s11
	fadds	s7, s13, s15
	fadds	s6, s12, s14
	fadds	s5, s24, s8
	fsubs	s9, s8, s24
	fsubs	s11, s10, s11
	fsubs	s14, s14, s12
	fsubs	s15, s15, s13
	fsts	s4, [r2, #-8]
	fsts	s5, [r3, #156]
	fsts	s9, [r3, #92]
	fsts	s11, [r3, #124]
	fsts	s6, [r3, #28]
	fsts	s14, [r3, #220]
	fsts	s7, [r3, #60]
	fsts	s15, [r3, #188]
	cmp	r3, r6
	beq	.L4
	mov	r4, r5
	b	.L5
.L16:
	.align	3
.L15:
	.word	1060439283
	.word	1060439283
	.word	1060439283
	.word	1060439283
	.word	1053028117
	.word	1053028117
	.word	1053028117
	.word	1053028117
	.word	1057655764
	.word	1057655764
	.word	1057655764
	.word	1057655764
	.word	1067924853
	.word	1067924853
	.word	1067924853
	.word	1067924853
	.word	1060439283
	.word	1053028117
	.word	1057655764
	.word	1067924853
.L9:
	mov	r3, r0
	movs	r4, #8
	mov	r1, ip
.L4:
	add	r9, r1, #64
	add	r8, r1, #160
	add	r9, r9, r0
	add	r8, r8, r0
	adds	r2, r0, r1
	add	lr, r1, #224
	vld1.32	{q9}, [r9]
	add	r7, r1, #128
	add	r6, r1, #32
	add	r5, r1, #192
	vld1.32	{q15}, [r8]
	add	lr, lr, r0
	vsub.f32	q2, q9, q15
	add	r7, r7, r0
	add	r6, r6, r0
	add	r5, r5, r0
	vld1.64	{d16-d17}, [r2:64]
	adds	r1, r1, #96
	add	r0, r0, r1
	vadd.f32	q15, q15, q9
	vld1.32	{q11}, [r6]
	rsb	ip, ip, #8
	lsr	r1, ip, #2
	vld1.32	{q6}, [lr]
	vsub.f32	q10, q8, q6
	cmp	r1, #1
	vld1.32	{q3}, [r7]
	lsl	r10, r1, #2
	vld1.32	{q13}, [r5]
	vsub.f32	q12, q2, q3
	vsub.f32	q14, q11, q13
	vldr	d8, .L17
	vldr	d9, .L17+8
	vadd.f32	q6, q6, q8
	vld1.32	{q8}, [r0]
	vadd.f32	q5, q14, q10
	vadd.f32	q12, q12, q8
	vldr	d0, .L17+16
	vldr	d1, .L17+24
	vadd.f32	q3, q3, q8
	vadd.f32	q13, q13, q11
	vldr	d16, .L17+32
	vldr	d17, .L17+40
	vsub.f32	q11, q12, q5
	vsub.f32	q9, q6, q3
	vldr	d2, .L17+48
	vldr	d3, .L17+56
	vadd.f32	q2, q2, q14
	vmul.f32	q11, q11, q4
	vsub.f32	q14, q9, q15
	vmul.f32	q2, q2, q8
	vadd.f32	q3, q3, q6
	vmov	q6, q11  @ v4sf
	vadd.f32	q15, q15, q13
	vadd.f32	q14, q14, q13
	vsub.f32	q13, q10, q2
	vmla.f32	q11, q5, q1
	vmla.f32	q6, q12, q0
	vadd.f32	q10, q2, q10
	vadd.f32	q2, q15, q3
	vsub.f32	q15, q3, q15
	vmul.f32	q14, q14, q8
	vst1.64	{d4-d5}, [r2:64]
	vsub.f32	q12, q13, q6
	vadd.f32	q2, q6, q13
	vst1.32	{q15}, [r7]
	vadd.f32	q5, q14, q9
	vadd.f32	q15, q11, q10
	vsub.f32	q9, q9, q14
	vsub.f32	q10, q10, q11
	vst1.32	{q5}, [r9]
	vst1.32	{q9}, [r5]
	vst1.32	{q2}, [r8]
	vst1.32	{q12}, [r0]
	vst1.32	{q15}, [r6]
	vst1.32	{q10}, [lr]
	bls	.L6
	add	r9, r9, #16
	add	r8, r8, #16
	add	lr, lr, #16
	adds	r7, r7, #16
	vld1.32	{q6}, [r8]
	adds	r6, r6, #16
	adds	r5, r5, #16
	adds	r0, r0, #16
	vld1.32	{q13}, [r9]
	vsub.f32	q2, q13, q6
	vldr	d18, [r2, #16]
	vldr	d19, [r2, #24]
	vld1.32	{q3}, [lr]
	vsub.f32	q10, q9, q3
	vld1.32	{q14}, [r7]
	vld1.32	{q12}, [r6]
	vsub.f32	q11, q2, q14
	vld1.32	{q7}, [r5]
	vsub.f32	q15, q12, q7
	vadd.f32	q3, q3, q9
	vld1.32	{q9}, [r0]
	vadd.f32	q11, q11, q9
	vadd.f32	q5, q15, q10
	vadd.f32	q14, q14, q9
	vadd.f32	q13, q6, q13
	vsub.f32	q6, q11, q5
	vsub.f32	q9, q3, q14
	vadd.f32	q12, q7, q12
	vmul.f32	q4, q6, q4
	vadd.f32	q15, q2, q15
	vsub.f32	q2, q9, q13
	vmov	q6, q4  @ v4sf
	vadd.f32	q14, q14, q3
	vmul.f32	q15, q15, q8
	vadd.f32	q13, q13, q12
	vadd.f32	q2, q2, q12
	vmla.f32	q6, q11, q0
	vmla.f32	q4, q5, q1
	vsub.f32	q12, q10, q15
	vadd.f32	q10, q15, q10
	vadd.f32	q15, q13, q14
	vsub.f32	q13, q14, q13
	vmul.f32	q8, q2, q8
	vsub.f32	q11, q12, q6
	vstr	d30, [r2, #16]
	vstr	d31, [r2, #24]
	vst1.32	{q13}, [r7]
	vadd.f32	q3, q8, q9
	vadd.f32	q13, q4, q10
	vsub.f32	q8, q9, q8
	vadd.f32	q15, q6, q12
	vst1.32	{q3}, [r9]
	vsub.f32	q10, q10, q4
	vst1.32	{q8}, [r5]
	vst1.32	{q15}, [r8]
	vst1.32	{q11}, [r0]
	vst1.32	{q13}, [r6]
	vst1.32	{q10}, [lr]
.L6:
	cmp	r10, ip
	add	r3, r3, r10, lsl #2
	rsb	r4, r10, r4
	beq	.L1
	flds	s3, .L17+64
	adds	r2, r3, #4
	flds	s0, .L17+68
	add	r4, r3, r4, lsl #2
	flds	s1, .L17+72
	mov	r1, r2
	flds	s2, .L17+76
.L8:
	flds	s4, [r3, #64]
	cmp	r2, r4
	flds	s7, [r3, #160]
	add	r1, r1, #4
	flds	s10, [r1, #-8]
	flds	s12, [r3, #224]
	flds	s13, [r3, #192]
	flds	s8, [r3, #128]
	fsubs	s15, s4, s7
	flds	s11, [r3, #32]
	flds	s5, [r3, #96]
	fsubs	s14, s10, s12
	fsubs	s9, s15, s8
	fsubs	s6, s11, s13
	fadds	s8, s5, s8
	fadds	s10, s10, s12
	fadds	s9, s9, s5
	fadds	s5, s14, s6
	fadds	s7, s4, s7
	fadds	s11, s11, s13
	fadds	s6, s6, s15
	fsubs	s12, s9, s5
	fsubs	s15, s10, s8
	fsubs	s13, s11, s7
	fmuls	s6, s6, s3
	fmuls	s12, s12, s0
	fadds	s10, s10, s8
	fadds	s13, s13, s15
	fsubs	s8, s14, s6
	fcpys	s25, s12
	fmacs	s12, s5, s2
	fmacs	s25, s9, s1
	fadds	s11, s11, s7
	fadds	s14, s6, s14
	fmuls	s13, s13, s3
	fadds	s4, s10, s11
	fadds	s6, s12, s14
	fadds	s5, s25, s8
	fadds	s7, s13, s15
	fsubs	s9, s8, s25
	fsubs	s11, s10, s11
	fsubs	s14, s14, s12
	fsubs	s15, s15, s13
	fsts	s4, [r1, #-8]
	fsts	s5, [r3, #160]
	fsts	s9, [r3, #96]
	fsts	s11, [r3, #128]
	fsts	s6, [r3, #32]
	fsts	s14, [r3, #224]
	fsts	s7, [r3, #64]
	fsts	s15, [r3, #192]
	mov	r3, r2
	add	r2, r2, #4
	bne	.L8
.L1:
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L18:
	.align	3
.L17:
	.word	1053028117
	.word	1053028117
	.word	1053028117
	.word	1053028117
	.word	1057655764
	.word	1057655764
	.word	1057655764
	.word	1057655764
	.word	1060439283
	.word	1060439283
	.word	1060439283
	.word	1060439283
	.word	1067924853
	.word	1067924853
	.word	1067924853
	.word	1067924853
	.word	1060439283
	.word	1053028117
	.word	1057655764
	.word	1067924853
	.size	jpeg_fdct_float, .-jpeg_fdct_float
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
