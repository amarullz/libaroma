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
	.file	"jfdctfst.c"
	.section	.text.jpeg_fdct_ifast,"ax",%progbits
	.align	2
	.global	jpeg_fdct_ifast
	.thumb
	.thumb_func
	.type	jpeg_fdct_ifast, %function
jpeg_fdct_ifast:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r1, r0, #96
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	add	lr, r0, #16
	sub	sp, sp, #44
	add	r7, r0, #32
	add	r6, r0, #48
	add	r5, r0, #64
	add	r4, r0, #80
	add	r2, r0, #112
	add	ip, r0, #256
	mov	r3, r0
.L3:
	vld1.32	{q5}, [r3]
	vld1.32	{q1}, [lr]
	vld1.32	{q15}, [r7]
	vld1.32	{q2}, [r6]
	vld1.32	{q12}, [r5]
	vld1.32	{q14}, [r4]
	vld1.32	{q4}, [r1]
	vld1.32	{q3}, [r2]
	vuzp.32	q5, q1
	vuzp.32	q15, q2
	vuzp.32	q12, q14
	vuzp.32	q4, q3
	vuzp.32	q5, q15
	vuzp.32	q1, q2
	vuzp.32	q12, q4
	vuzp.32	q14, q3
	vuzp.32	q5, q12
	vuzp.32	q15, q4
	vuzp.32	q1, q14
	vuzp.32	q2, q3
	vsub.i32	q10, q1, q4
	vsub.i32	q13, q15, q14
	vsub.i32	q11, q5, q3
	vsub.i32	q8, q2, q12
	vadd.i32	q9, q10, q11
	vadd.i32	q0, q5, q3
	vadd.i32	q1, q1, q4
	vshl.i32	q6, q9, #1
	vadd.i32	q3, q15, q14
	vadd.i32	q2, q2, q12
	vadd.i32	q8, q8, q13
	vadd.i32	q6, q6, q9
	vadd.i32	q13, q13, q10
	vsub.i32	q12, q1, q3
	vsub.i32	q10, q0, q2
	vsub.i32	q14, q8, q9
	vshl.i32	q5, q6, #3
	vadd.i32	q12, q12, q10
	vshl.i32	q15, q13, #1
	vshl.i32	q4, q14, #3
	vadd.i32	q15, q15, q13
	vshl.i32	q7, q8, #4
	vsub.i32	q6, q5, q6
	vshl.i32	q5, q12, #1
	vadd.i32	q7, q7, q8
	vsub.i32	q14, q4, q14
	vadd.i32	q5, q5, q12
	vshl.i32	q4, q15, #4
	vshl.i32	q6, q6, #3
	vshl.i32	q7, q7, #2
	vsub.i32	q15, q4, q15
	vsub.i32	q6, q6, q9
	vshl.i32	q4, q14, #3
	vshl.i32	q9, q5, #4
	vadd.i32	q7, q7, q8
	vsub.i32	q4, q4, q14
	vshl.i32	q15, q15, #2
	vsub.i32	q5, q9, q5
	vshl.i32	q7, q7, #1
	vadd.i32	q13, q15, q13
	vadd.i32	q8, q7, q8
	vshl.i32	q15, q6, #1
	vshl.i32	q4, q4, #1
	vshl.i32	q5, q5, #2
	vshr.s32	q13, q13, #8
	vadd.i32	q12, q5, q12
	vshr.s32	q4, q4, #8
	vshr.s32	q14, q8, #8
	vshr.s32	q15, q15, #8
	vadd.i32	q8, q11, q13
	vadd.i32	q15, q15, q4
	vadd.i32	q14, q14, q4
	vadd.i32	q9, q1, q3
	vsub.i32	q11, q11, q13
	vadd.i32	q2, q0, q2
	vshr.s32	q12, q12, #8
	vadd.i32	q3, q8, q15
	vadd.i32	q13, q11, q14
	vsub.i32	q8, q8, q15
	vsub.i32	q11, q11, q14
	vadd.i32	q15, q2, q9
	vadd.i32	q14, q10, q12
	vsub.i32	q9, q2, q9
	vsub.i32	q10, q10, q12
	vzip.32	q3, q13
	vzip.32	q11, q8
	vzip.32	q14, q10
	vzip.32	q15, q9
	vzip.32	q3, q11
	vzip.32	q15, q14
	vzip.32	q13, q8
	vzip.32	q9, q10
	vzip.32	q15, q3
	vzip.32	q14, q11
	vzip.32	q9, q13
	vzip.32	q10, q8
	vst1.32	{q15}, [r3]
	adds	r3, r3, #128
	cmp	r3, ip
	vst1.32	{q3}, [lr]
	add	lr, lr, #128
	vst1.32	{q14}, [r7]
	add	r7, r7, #128
	vst1.32	{q11}, [r6]
	add	r6, r6, #128
	vst1.32	{q9}, [r5]
	add	r5, r5, #128
	vst1.32	{q13}, [r4]
	add	r4, r4, #128
	vst1.32	{q10}, [r1]
	add	r1, r1, #128
	vst1.32	{q8}, [r2]
	add	r2, r2, #128
	bne	.L3
	sbfx	r3, r0, #2, #1
	ands	r3, r3, #3
	str	r3, [sp, #16]
	beq	.L11
	lsls	r2, r3, #2
	movs	r5, #7
	add	fp, r0, #4
	str	r5, [sp, #8]
	mov	r3, r0
	mov	r6, r5
	str	r2, [sp, #4]
	add	r2, r2, r0
	str	r2, [sp, #12]
	str	r0, [sp, #20]
.L5:
	ldr	r7, [fp, #-4]
	subs	r6, r6, #1
	ldr	r0, [r3, #224]
	mov	r10, #181
	ldr	r2, [r3, #192]
	adds	r3, r3, #4
	ldr	ip, [r3, #92]
	add	fp, fp, #4
	ldr	r5, [r3, #28]
	subs	r1, r7, r0
	ldr	r4, [r3, #60]
	add	lr, r7, r0
	str	r6, [sp, #28]
	ldr	r7, [r3, #124]
	rsb	r9, r2, r5
	ldr	r6, [r3, #156]
	add	r5, r5, r2
	add	r0, r9, r1
	subs	r2, r4, r6
	add	r4, r4, r6
	rsb	r6, r7, ip
	add	r7, r7, ip
	add	r6, r6, r2
	mov	ip, #98
	rsb	r8, r0, r6
	add	r9, r9, r2
	mul	r8, ip, r8
	rsb	r2, r7, lr
	rsb	ip, r4, r5
	add	r4, r4, r5
	mul	r9, r10, r9
	mov	r5, #334
	mov	r10, #139
	add	r7, r7, lr
	add	ip, ip, r2
	mul	lr, r10, r6
	movs	r6, #181
	asr	r8, r8, #8
	mul	r0, r5, r0
	asr	r9, r9, #8
	mul	ip, r6, ip
	add	r6, r8, lr, asr #8
	rsb	r5, r9, r1
	add	r0, r8, r0, asr #8
	add	r9, r9, r1
	adds	r1, r5, r6
	asr	ip, ip, #8
	subs	r6, r5, r6
	adds	r5, r7, r4
	subs	r7, r7, r4
	add	r4, r9, r0
	rsb	r0, r0, r9
	ldr	r9, [sp, #12]
	str	r5, [fp, #-8]
	add	r5, r2, ip
	rsb	r2, ip, r2
	str	r1, [r3, #156]
	str	r6, [r3, #92]
	str	r7, [r3, #124]
	str	r4, [r3, #28]
	str	r0, [r3, #220]
	str	r5, [r3, #60]
	str	r2, [r3, #188]
	cmp	r3, r9
	beq	.L12
	ldr	r0, [sp, #28]
	str	r0, [sp, #8]
	mov	r6, r0
	b	.L5
.L12:
	ldr	r0, [sp, #20]
	ldr	r6, [sp, #16]
	ldr	r9, [sp, #4]
.L4:
	mov	r2, r9
	rsb	r6, r6, #8
	adds	r2, r2, #128
	lsr	r10, r6, #2
	add	r8, r0, r2
	ldr	r2, [sp, #4]
	mov	r7, r9
	mov	r1, r9
	mov	r5, r9
	mov	r4, r9
	str	r6, [sp, #28]
	mov	r6, r9
	lsl	ip, r10, #2
	add	lr, r9, #224
	adds	r4, r4, #96
	str	r10, [sp, #20]
	adds	r7, r7, #32
	adds	r6, r6, #192
	adds	r1, r1, #64
	adds	r5, r5, #160
	add	r9, r0, r4
	add	lr, lr, r0
	add	r7, r7, r0
	add	r6, r6, r0
	add	r1, r1, r0
	add	r5, r5, r0
	add	r0, r0, r2
	str	ip, [sp, #24]
	str	r3, [sp, #36]
	mov	fp, lr
	mov	r10, r7
	mov	ip, r6
	mov	r4, r0
	movs	r2, #0
	mov	r3, r9
	str	r1, [sp, #12]
	str	r5, [sp, #16]
	str	r9, [sp, #32]
	str	r8, [sp, #4]
	str	r0, [sp]
.L10:
	ldr	r0, [sp]
	adds	r2, r2, #1
	vld1.32	{q8}, [lr]!
	vld1.32	{q14}, [r6]!
	vld1.64	{d2-d3}, [r0:64]!
	vld1.32	{q12}, [r8]!
	vsub.i32	q11, q1, q8
	vld1.32	{q15}, [r7]!
	vadd.i32	q1, q1, q8
	vld1.32	{q3}, [r9]!
	vsub.i32	q10, q15, q14
	vld1.32	{q2}, [r1]!
	vsub.i32	q8, q3, q12
	vadd.i32	q3, q3, q12
	vld1.32	{q12}, [r5]!
	vsub.i32	q13, q2, q12
	vadd.i32	q9, q10, q11
	vadd.i32	q8, q8, q13
	vadd.i32	q15, q15, q14
	vadd.i32	q2, q2, q12
	vadd.i32	q13, q13, q10
	vsub.i32	q14, q8, q9
	vshl.i32	q5, q9, #1
	vsub.i32	q10, q1, q3
	vsub.i32	q12, q15, q2
	vadd.i32	q5, q5, q9
	vadd.i32	q12, q12, q10
	vshl.i32	q4, q13, #1
	vshl.i32	q0, q14, #3
	vadd.i32	q4, q4, q13
	vshl.i32	q7, q5, #3
	vsub.i32	q14, q0, q14
	vshl.i32	q0, q12, #1
	vsub.i32	q5, q7, q5
	vadd.i32	q0, q0, q12
	vshl.i32	q7, q4, #4
	vshl.i32	q6, q8, #4
	vshl.i32	q5, q5, #3
	vsub.i32	q4, q7, q4
	vshl.i32	q7, q0, #4
	vadd.i32	q6, q6, q8
	vsub.i32	q9, q5, q9
	vsub.i32	q0, q7, q0
	vshl.i32	q6, q6, #2
	vshl.i32	q5, q14, #3
	vshl.i32	q0, q0, #2
	vadd.i32	q6, q6, q8
	vadd.i32	q12, q0, q12
	vadd.i32	q3, q1, q3
	vadd.i32	q15, q15, q2
	vshr.s32	q12, q12, #8
	vshl.i32	q4, q4, #2
	vsub.i32	q14, q5, q14
	str	r0, [sp]
	vshl.i32	q6, q6, #1
	ldr	r0, [sp, #4]
	vadd.i32	q1, q10, q12
	vadd.i32	q13, q4, q13
	vsub.i32	q10, q10, q12
	vadd.i32	q12, q3, q15
	vsub.i32	q15, q3, q15
	vshl.i32	q14, q14, #1
	vadd.i32	q8, q6, q8
	vshl.i32	q9, q9, #1
	vst1.64	{d24-d25}, [r4:64]!
	vshr.s32	q13, q13, #8
	vst1.32	{q15}, [r0]!
	str	r0, [sp, #4]
	ldr	r0, [sp, #12]
	vshr.s32	q14, q14, #8
	vshr.s32	q8, q8, #8
	vshr.s32	q9, q9, #8
	vadd.i32	q8, q8, q14
	vadd.i32	q9, q9, q14
	vsub.i32	q14, q11, q13
	vst1.32	{q1}, [r0]!
	str	r0, [sp, #12]
	ldr	r0, [sp, #16]
	vadd.i32	q2, q14, q8
	vadd.i32	q11, q11, q13
	vst1.32	{q10}, [ip]!
	vadd.i32	q13, q11, q9
	vst1.32	{q2}, [r0]!
	str	r0, [sp, #16]
	ldr	r0, [sp, #20]
	vsub.i32	q8, q14, q8
	vsub.i32	q11, q11, q9
	cmp	r2, r0
	vst1.32	{q8}, [r3]!
	vst1.32	{q13}, [r10]!
	vst1.32	{q11}, [fp]!
	bcc	.L10
	ldr	r0, [sp, #24]
	ldr	r5, [sp, #28]
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #8]
	cmp	r0, r5
	add	r3, r3, r0, lsl #2
	sub	r1, r2, r0
	beq	.L1
	add	r1, r3, r1, lsl #2
	adds	r2, r3, #4
	str	r1, [sp, #4]
	mov	r1, r2
.L9:
	ldr	r5, [r1, #-4]
	adds	r1, r1, #4
	ldr	r0, [r3, #224]
	ldr	fp, [r3, #32]
	ldr	r10, [r3, #64]
	ldr	r6, [r3, #128]
	subs	r4, r5, r0
	ldr	lr, [r3, #192]
	add	r8, r5, r0
	ldr	r7, [r3, #160]
	ldr	ip, [r3, #96]
	rsb	r9, lr, fp
	add	lr, lr, fp
	rsb	r0, r7, r10
	add	r7, r7, r10
	rsb	r10, r6, ip
	add	r5, r9, r4
	add	r10, r10, r0
	add	ip, ip, r6
	add	r9, r9, r0
	rsb	fp, r5, r10
	rsb	r0, ip, r8
	str	r10, [sp, #8]
	add	ip, ip, r8
	rsb	r10, r7, lr
	add	r7, r7, lr
	mov	lr, #181
	str	r9, [sp, #12]
	mul	r9, lr, r9
	add	lr, ip, r7
	rsb	r7, r7, ip
	ldr	ip, [sp, #8]
	movs	r6, #98
	mul	fp, r6, fp
	movs	r6, #139
	str	lr, [r1, #-8]
	asr	r9, r9, #8
	str	r7, [r3, #128]
	mul	lr, r6, ip
	mov	r6, #334
	asr	fp, fp, #8
	add	r10, r10, r0
	mul	r5, r6, r5
	mov	ip, #181
	rsb	r7, r9, r4
	add	r6, fp, lr, asr #8
	mul	r10, ip, r10
	add	r4, r4, r9
	rsb	lr, r6, r7
	add	r5, fp, r5, asr #8
	str	lr, [r3, #96]
	add	ip, r7, r6
	ldr	lr, [sp, #4]
	asr	r10, r10, #8
	adds	r6, r4, r5
	str	ip, [r3, #160]
	add	r7, r0, r10
	subs	r4, r4, r5
	cmp	r2, lr
	rsb	r0, r10, r0
	str	r6, [r3, #32]
	str	r4, [r3, #224]
	str	r7, [r3, #64]
	str	r0, [r3, #192]
	mov	r3, r2
	add	r2, r2, #4
	bne	.L9
.L1:
	add	sp, sp, #44
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L11:
	mov	r5, r3
	movs	r2, #8
	mov	r3, r0
	str	r2, [sp, #8]
	str	r5, [sp, #4]
	mov	r6, r5
	mov	r9, r5
	b	.L4
	.size	jpeg_fdct_ifast, .-jpeg_fdct_ifast
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
