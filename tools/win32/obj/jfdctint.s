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
	.file	"jfdctint.c"
	.section	.text.jpeg_fdct_islow,"ax",%progbits
	.align	2
	.global	jpeg_fdct_islow
	.thumb
	.thumb_func
	.type	jpeg_fdct_islow, %function
jpeg_fdct_islow:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	vmov.i32	q4, #1024  @ v4si
	add	r7, r0, #16
	add	r6, r0, #32
	add	r5, r0, #48
	add	r4, r0, #64
	sub	sp, sp, #140
	adds	r0, r0, #80
	add	r1, r8, #96
	add	r2, r8, #112
	add	lr, r8, #256
	mov	r3, r8
.L3:
	vld1.32	{q6}, [r3]
	vld1.32	{q13}, [r7]
	vld1.32	{q12}, [r6]
	vld1.32	{q1}, [r5]
	vld1.32	{q2}, [r4]
	vld1.32	{q10}, [r0]
	vld1.32	{q8}, [r1]
	vld1.32	{q11}, [r2]
	vuzp.32	q6, q13
	vuzp.32	q12, q1
	vuzp.32	q2, q10
	vuzp.32	q8, q11
	vuzp.32	q6, q12
	vuzp.32	q13, q1
	vuzp.32	q2, q8
	vuzp.32	q10, q11
	vuzp.32	q6, q2
	vuzp.32	q1, q11
	vuzp.32	q13, q10
	vsub.i32	q14, q6, q11
	vsub.i32	q15, q1, q2
	vuzp.32	q12, q8
	vadd.i32	q9, q15, q14
	vadd.i32	q3, q13, q8
	vadd.i32	q7, q12, q10
	vshl.i32	q5, q9, #19
	vstr	d6, [sp, #48]
	vstr	d7, [sp, #56]
	vsub.i32	q3, q13, q8
	vsub.i32	q5, q5, q9
	vsub.i32	q8, q12, q10
	vstr	d14, [sp, #64]
	vstr	d15, [sp, #72]
	vshl.i32	q5, q5, #4
	vadd.i32	q12, q8, q3
	vadd.i32	q10, q5, q9
	vldr	d10, [sp, #48]
	vldr	d11, [sp, #56]
	vshl.i32	q0, q12, #18
	vstr	d20, [sp, #32]
	vstr	d21, [sp, #40]
	vsub.i32	q10, q5, q7
	vldr	d14, [sp, #32]
	vldr	d15, [sp, #40]
	vsub.i32	q0, q0, q12
	vshl.i32	q5, q7, #1
	vadd.i32	q7, q6, q11
	vadd.i32	q5, q5, q9
	vadd.i32	q13, q15, q3
	vstr	d14, [sp, #32]
	vstr	d15, [sp, #40]
	vshl.i32	q7, q3, #3
	vshl.i32	q5, q5, #3
	vshl.i32	q0, q0, #2
	vsub.i32	q7, q7, q3
	vadd.i32	q5, q5, q9
	vsub.i32	q0, q0, q12
	vshl.i32	q7, q7, #2
	vshl.i32	q5, q5, #1
	vadd.i32	q7, q7, q3
	vshl.i32	q3, q10, #18
	vadd.i32	q5, q5, q9
	vadd.i32	q6, q1, q2
	vsub.i32	q3, q3, q10
	vshl.i32	q2, q13, #6
	vshl.i32	q0, q0, #3
	vshl.i32	q5, q5, #3
	vshl.i32	q3, q3, #4
	vadd.i32	q2, q2, q13
	vshl.i32	q1, q15, #3
	vadd.i32	q5, q5, q9
	vadd.i32	q3, q3, q10
	vsub.i32	q0, q0, q12
	vadd.i32	q1, q1, q15
	vshl.i32	q2, q2, #6
	vshl.i32	q5, q5, #1
	vshl.i32	q3, q3, #2
	vadd.i32	q2, q2, q13
	vshl.i32	q0, q0, #7
	vadd.i32	q5, q5, q9
	vstr	d12, [sp, #80]
	vstr	d13, [sp, #88]
	vshl.i32	q9, q1, #4
	vshl.i32	q6, q8, #5
	vadd.i32	q3, q3, q10
	vadd.i32	q6, q6, q8
	vsub.i32	q0, q0, q12
	vadd.i32	q1, q1, q9
	vshl.i32	q2, q2, #12
	vshl.i32	q9, q14, #1
	vshl.i32	q3, q3, #3
	vadd.i32	q9, q9, q14
	vadd.i32	q2, q2, q13
	vshl.i32	q6, q6, #3
	vshl.i32	q0, q0, #2
	vadd.i32	q11, q8, q14
	vsub.i32	q3, q3, q10
	vshl.i32	q1, q1, #3
	vadd.i32	q0, q0, q12
	vshl.i32	q2, q2, #2
	vshl.i32	q12, q9, #10
	vsub.i32	q6, q6, q8
	vadd.i32	q2, q2, q13
	vsub.i32	q1, q1, q15
	vadd.i32	q13, q13, q11
	vadd.i32	q9, q9, q12
	vshl.i32	q15, q11, #20
	vshl.i32	q12, q3, #5
	vshl.i32	q6, q6, #2
	vsub.i32	q15, q15, q11
	vstr	d24, [sp, #16]
	vstr	d25, [sp, #24]
	vshl.i32	q9, q9, #2
	vshl.i32	q12, q13, #2
	vsub.i32	q6, q6, q8
	vadd.i32	q12, q12, q13
	vshl.i32	q1, q1, #1
	vsub.i32	q9, q9, q14
	vshl.i32	q15, q15, #2
	vadd.i32	q14, q1, q5
	vadd.i32	q15, q15, q11
	vadd.i32	q9, q9, q5
	vshl.i32	q6, q6, #3
	vshl.i32	q5, q12, #4
	vadd.i32	q6, q6, q8
	vshl.i32	q15, q15, #3
	vsub.i32	q12, q5, q12
	vshl.i32	q6, q6, #1
	vst1.64	{d28-d29}, [sp:64]
	vshl.i32	q12, q12, #2
	vsub.i32	q14, q15, q11
	vldr	d2, [sp, #32]
	vldr	d3, [sp, #40]
	vadd.i32	q6, q6, q8
	vldr	d6, [sp, #80]
	vldr	d7, [sp, #88]
	vshl.i32	q8, q2, #6
	vsub.i32	q15, q1, q3
	vadd.i32	q12, q12, q13
	vshl.i32	q14, q14, #5
	vsub.i32	q2, q8, q2
	vadd.i32	q8, q10, q15
	vadd.i32	q14, q14, q11
	vldr	d10, [sp, #16]
	vldr	d11, [sp, #24]
	vshl.i32	q11, q15, #1
	vshl.i32	q12, q12, #5
	vldr	d2, [sp, #48]
	vldr	d3, [sp, #56]
	vadd.i32	q13, q12, q13
	vldr	d6, [sp, #64]
	vldr	d7, [sp, #72]
	vsub.i32	q10, q5, q10
	vadd.i32	q11, q11, q15
	vadd.i32	q5, q1, q3
	vshl.i32	q12, q8, #3
	vshl.i32	q3, q7, #3
	vadd.i32	q12, q12, q8
	vshl.i32	q11, q11, #5
	vsub.i32	q7, q3, q7
	vshl.i32	q12, q12, #4
	vsub.i32	q11, q11, q15
	vshl.i32	q3, q7, #5
	vsub.i32	q8, q12, q8
	vshl.i32	q14, q14, #2
	vshl.i32	q15, q11, #5
	vsub.i32	q7, q3, q7
	vadd.i32	q2, q2, q13
	vadd.i32	q11, q11, q15
	vadd.i32	q13, q14, q13
	vshl.i32	q14, q8, #5
	vshl.i32	q7, q7, #2
	vadd.i32	q6, q6, q0
	vsub.i32	q8, q14, q8
	vadd.i32	q0, q7, q0
	vshl.i32	q11, q11, #1
	vldr	d14, [sp, #32]
	vldr	d15, [sp, #40]
	vadd.i32	q10, q10, q8
	vldr	d24, [sp, #80]
	vldr	d25, [sp, #88]
	vadd.i32	q15, q7, q12
	vld1.64	{d28-d29}, [sp:64]
	vadd.i32	q1, q14, q2
	vadd.i32	q8, q11, q8
	vadd.i32	q2, q0, q2
	vadd.i32	q9, q9, q13
	vadd.i32	q6, q6, q13
	vadd.i32	q11, q15, q5
	vadd.i32	q1, q1, q4
	vadd.i32	q2, q2, q4
	vadd.i32	q9, q9, q4
	vadd.i32	q6, q6, q4
	vadd.i32	q10, q10, q4
	vadd.i32	q8, q8, q4
	vsub.i32	q5, q15, q5
	vshr.s32	q1, q1, #11
	vshr.s32	q2, q2, #11
	vshr.s32	q9, q9, #11
	vshr.s32	q6, q6, #11
	vshr.s32	q10, q10, #11
	vshr.s32	q8, q8, #11
	vshl.i32	q11, q11, #2
	vshl.i32	q5, q5, #2
	vzip.32	q2, q1
	vzip.32	q9, q6
	vzip.32	q8, q10
	vzip.32	q11, q5
	vzip.32	q9, q2
	vzip.32	q11, q8
	vzip.32	q6, q1
	vzip.32	q5, q10
	vzip.32	q11, q9
	vzip.32	q8, q2
	vzip.32	q5, q6
	vzip.32	q10, q1
	vst1.32	{q11}, [r3]
	adds	r3, r3, #128
	cmp	r3, lr
	vst1.32	{q9}, [r7]
	add	r7, r7, #128
	vst1.32	{q8}, [r6]
	add	r6, r6, #128
	vst1.32	{q2}, [r5]
	add	r5, r5, #128
	vst1.32	{q5}, [r4]
	add	r4, r4, #128
	vst1.32	{q6}, [r0]
	add	r0, r0, #128
	vst1.32	{q10}, [r1]
	add	r1, r1, #128
	vst1.32	{q1}, [r2]
	add	r2, r2, #128
	bne	.L3
	sbfx	r3, r8, #2, #1
	ands	r3, r3, #3
	str	r3, [sp, #128]
	beq	.L11
	lsls	r0, r3, #2
	add	r6, r8, #4
	movs	r7, #7
	str	r6, [sp, #32]
	movw	r1, #50399
	movw	r2, #58163
	movw	r3, #44541
	movw	r4, #49467
	movw	r5, #62340
	mov	fp, r8
	mov	r10, r6
	mov	ip, r7
	str	r0, [sp, #64]
	movt	r1, 65535
	add	r0, r0, r8
	movt	r2, 65535
	movt	r3, 65535
	movt	r4, 65535
	movt	r5, 65535
	str	r0, [sp, #124]
	str	r1, [sp, #104]
	str	r2, [sp, #108]
	str	r3, [sp, #112]
	str	r4, [sp, #116]
	str	r5, [sp, #120]
	str	r7, [sp, #80]
	str	r8, [sp, #132]
.L5:
	ldr	r7, [r10, #-4]
	add	ip, ip, #-1
	ldr	r2, [fp, #224]
	add	fp, fp, #4
	ldr	r3, [fp, #156]
	ldr	r4, [fp, #60]
	ldr	r0, [fp, #124]
	rsb	lr, r2, r7
	ldr	r6, [fp, #28]
	add	r7, r7, r2
	ldr	r1, [fp, #188]
	subs	r2, r4, r3
	ldr	r5, [fp, #92]
	add	r4, r4, r3
	str	r4, [sp, #96]
	add	r10, r2, lr
	ldr	r4, [sp, #108]
	subs	r3, r6, r1
	add	r6, r6, r1
	subs	r1, r5, r0
	add	r8, r1, lr
	add	r5, r5, r0
	adds	r0, r1, r3
	str	ip, [sp, #100]
	mul	r8, r4, r8
	subs	r4, r7, r5
	add	r7, r7, r5
	str	r4, [sp, #48]
	str	r7, [sp, #16]
	add	r9, r0, r10
	ldr	r7, [sp, #96]
	movw	r5, #9633
	ldr	r4, [sp, #112]
	mul	r9, r5, r9
	add	ip, r2, r3
	subs	r5, r6, r7
	add	r6, r6, r7
	ldr	r7, [sp, #48]
	mul	ip, r4, ip
	movw	r4, #4433
	add	r7, r7, r5
	mul	r4, r4, r7
	ldr	r7, [sp, #116]
	str	r4, [sp, #96]
	mla	r0, r7, r0, r9
	ldr	r4, [sp, #120]
	movw	r7, #2446
	mla	r1, r7, r1, r8
	ldr	r7, [sp, #48]
	mla	r9, r4, r10, r9
	movw	r4, #25172
	mla	r3, r4, r3, ip
	ldr	r4, [sp, #96]
	movw	r10, #12299
	mla	r8, r10, lr, r8
	ldr	r10, [sp, #16]
	movw	lr, #16819
	mla	r2, lr, r2, ip
	movw	ip, #6270
	mla	lr, ip, r7, r4
	ldr	ip, [sp, #104]
	ldr	r7, [sp, #16]
	add	r1, r1, r0
	add	r10, r10, r6
	add	r1, r1, #16384
	mla	r4, ip, r5, r4
	add	lr, lr, #16384
	asrs	r1, r1, #15
	subs	r6, r7, r6
	asr	r7, lr, #15
	add	r10, r10, #2
	ldr	lr, [sp, #32]
	add	r8, r8, r9
	add	r3, r3, r0
	add	r9, r9, r2
	asr	r5, r10, #2
	add	r8, r8, #16384
	adds	r6, r6, #2
	add	r9, r9, #16384
	add	r3, r3, #16384
	add	r4, r4, #16384
	str	r5, [lr, #-4]
	asr	r2, r9, #15
	str	r1, [fp, #220]
	asr	r0, r8, #15
	asrs	r6, r6, #2
	asrs	r3, r3, #15
	asrs	r4, r4, #15
	str	r2, [fp, #156]
	mov	r1, lr
	str	r0, [fp, #28]
	adds	r1, r1, #4
	str	r6, [fp, #124]
	str	r3, [fp, #92]
	str	r7, [fp, #60]
	str	r1, [sp, #32]
	str	r4, [fp, #188]
	ldr	r2, [sp, #124]
	cmp	fp, r2
	beq	.L12
	ldr	r3, [sp, #100]
	ldr	r10, [sp, #32]
	str	r3, [sp, #80]
	mov	ip, r3
	b	.L5
.L12:
	ldr	r8, [sp, #132]
	ldr	r6, [sp, #128]
	ldr	r7, [sp, #64]
	ldr	r4, [sp, #64]
	ldr	r0, [sp, #64]
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #64]
.L4:
	rsb	r6, r6, #8
	ldr	r5, [sp, #64]
	lsr	r10, r6, #2
	str	r6, [sp, #116]
	ldr	r6, [sp, #64]
	add	lr, r7, #64
	lsl	ip, r10, #2
	adds	r7, r7, #192
	adds	r5, r5, #224
	str	r10, [sp, #108]
	adds	r6, r6, #32
	add	r2, r2, r8
	add	lr, lr, r8
	add	r7, r7, r8
	add	r5, r5, r8
	adds	r4, r4, #160
	adds	r0, r0, #96
	adds	r1, r1, #128
	add	r6, r6, r8
	add	r4, r4, r8
	add	r0, r0, r8
	add	r1, r1, r8
	str	ip, [sp, #112]
	mov	r10, lr
	str	fp, [sp, #120]
	mov	r9, r7
	mov	r8, r6
	mov	ip, r5
	movs	r3, #0
	mov	fp, r2
	str	r4, [sp, #100]
	str	r0, [sp, #104]
	str	r1, [sp, #64]
	str	r2, [sp, #32]
	str	r2, [sp, #124]
.L10:
	ldr	r2, [sp, #124]
	adds	r3, r3, #1
	vld1.32	{q8}, [r5]!
	vld1.32	{q4}, [r0]!
	vld1.64	{d4-d5}, [r2:64]!
	vld1.32	{q0}, [r1]!
	vsub.i32	q14, q2, q8
	vsub.i32	q3, q4, q0
	vld1.32	{q10}, [r4]!
	vadd.i32	q9, q3, q14
	vld1.32	{q6}, [r6]!
	vadd.i32	q2, q2, q8
	vshl.i32	q5, q9, #19
	vld1.32	{q8}, [r7]!
	vsub.i32	q15, q6, q8
	vld1.32	{q1}, [lr]!
	vadd.i32	q6, q6, q8
	vsub.i32	q8, q1, q10
	vsub.i32	q5, q5, q9
	vadd.i32	q12, q8, q15
	vadd.i32	q7, q4, q0
	vshl.i32	q5, q5, #4
	vshl.i32	q4, q12, #18
	vadd.i32	q5, q5, q9
	vadd.i32	q1, q1, q10
	vsub.i32	q4, q4, q12
	vshl.i32	q5, q5, #1
	vadd.i32	q13, q3, q15
	vshl.i32	q4, q4, #2
	vadd.i32	q5, q5, q9
	vsub.i32	q10, q6, q1
	vsub.i32	q4, q4, q12
	vshl.i32	q5, q5, #3
	vstr	d14, [sp, #32]
	vstr	d15, [sp, #40]
	vadd.i32	q5, q5, q9
	vshl.i32	q4, q4, #3
	vadd.i32	q7, q6, q1
	vshl.i32	q5, q5, #1
	vsub.i32	q4, q4, q12
	vadd.i32	q5, q5, q9
	vshl.i32	q6, q8, #5
	vshl.i32	q4, q4, #7
	vshl.i32	q5, q5, #3
	vshl.i32	q0, q3, #3
	vsub.i32	q4, q4, q12
	vadd.i32	q5, q5, q9
	vadd.i32	q6, q6, q8
	vshl.i32	q1, q13, #6
	vadd.i32	q0, q0, q3
	vshl.i32	q4, q4, #2
	vadd.i32	q1, q1, q13
	vshl.i32	q5, q5, #1
	vadd.i32	q12, q4, q12
	vshl.i32	q6, q6, #3
	vshl.i32	q4, q15, #3
	vadd.i32	q9, q5, q9
	vshl.i32	q5, q0, #4
	vshl.i32	q1, q1, #6
	vsub.i32	q6, q6, q8
	vadd.i32	q0, q0, q5
	vsub.i32	q4, q4, q15
	vadd.i32	q1, q1, q13
	vshl.i32	q5, q14, #1
	vadd.i32	q11, q8, q14
	vadd.i32	q5, q5, q14
	vstr	d14, [sp, #48]
	vstr	d15, [sp, #56]
	vshl.i32	q6, q6, #2
	vshl.i32	q7, q10, #18
	vshl.i32	q0, q0, #3
	vshl.i32	q4, q4, #2
	vshl.i32	q1, q1, #12
	vadd.i32	q4, q4, q15
	vshl.i32	q15, q11, #20
	vsub.i32	q6, q6, q8
	vadd.i32	q1, q1, q13
	vsub.i32	q7, q7, q10
	vsub.i32	q0, q0, q3
	vshl.i32	q3, q5, #10
	vsub.i32	q15, q15, q11
	vadd.i32	q5, q5, q3
	vshl.i32	q6, q6, #3
	vshl.i32	q1, q1, #2
	vshl.i32	q7, q7, #4
	vadd.i32	q1, q1, q13
	vadd.i32	q6, q6, q8
	vadd.i32	q13, q13, q11
	vadd.i32	q7, q7, q10
	vshl.i32	q5, q5, #2
	vshl.i32	q15, q15, #2
	vshl.i32	q6, q6, #1
	vadd.i32	q15, q15, q11
	vsub.i32	q5, q5, q14
	vshl.i32	q7, q7, #2
	vshl.i32	q14, q13, #2
	vadd.i32	q7, q7, q10
	vadd.i32	q14, q14, q13
	vadd.i32	q6, q6, q8
	vshl.i32	q15, q15, #3
	vshl.i32	q8, q1, #6
	vldr	d6, [sp, #32]
	vldr	d7, [sp, #40]
	vshl.i32	q0, q0, #1
	vadd.i32	q5, q5, q9
	vadd.i32	q0, q0, q9
	vsub.i32	q1, q8, q1
	vsub.i32	q9, q15, q11
	vshl.i32	q8, q14, #4
	vsub.i32	q15, q2, q3
	vshl.i32	q7, q7, #3
	vsub.i32	q14, q8, q14
	vshl.i32	q8, q15, #1
	vsub.i32	q7, q7, q10
	vadd.i32	q8, q8, q15
	vadd.i32	q2, q2, q3
	vshl.i32	q7, q7, #5
	vadd.i32	q3, q10, q15
	vshl.i32	q8, q8, #5
	vsub.i32	q7, q7, q10
	vshl.i32	q10, q3, #3
	vsub.i32	q8, q8, q15
	vadd.i32	q10, q10, q3
	vshl.i32	q15, q4, #3
	vshl.i32	q14, q14, #2
	vshl.i32	q9, q9, #5
	vadd.i32	q14, q14, q13
	vsub.i32	q4, q15, q4
	vshl.i32	q10, q10, #4
	vadd.i32	q9, q9, q11
	vshl.i32	q14, q14, #5
	vsub.i32	q3, q10, q3
	vshl.i32	q10, q4, #5
	vshl.i32	q9, q9, #2
	vadd.i32	q13, q14, q13
	vshl.i32	q15, q8, #5
	vadd.i32	q1, q1, q13
	vsub.i32	q4, q10, q4
	vadd.i32	q13, q9, q13
	vadd.i32	q8, q8, q15
	vshl.i32	q9, q3, #5
	vshl.i32	q4, q4, #2
	vshl.i32	q8, q8, #1
	vsub.i32	q3, q9, q3
	vmov.i32	q9, #16384  @ v4si
	vadd.i32	q6, q6, q12
	vadd.i32	q7, q7, q3
	vadd.i32	q12, q4, q12
	vadd.i32	q3, q8, q3
	vldr	d16, [sp, #48]
	vldr	d17, [sp, #56]
	vadd.i32	q10, q2, q8
	vadd.i32	q0, q0, q1
	vsub.i32	q2, q2, q8
	vadd.i32	q1, q12, q1
	vmov.i32	q12, #2  @ v4si
	vadd.i32	q8, q6, q13
	vadd.i32	q10, q10, q12
	vadd.i32	q2, q2, q12
	str	r2, [sp, #124]
	ldr	r2, [sp, #64]
	vshr.s32	q10, q10, #2
	vshr.s32	q2, q2, #2
	vadd.i32	q0, q0, q9
	vadd.i32	q7, q7, q9
	vadd.i32	q3, q3, q9
	vadd.i32	q8, q8, q9
	vst1.64	{d20-d21}, [fp:64]!
	vshr.s32	q0, q0, #15
	vst1.32	{q2}, [r2]!
	str	r2, [sp, #64]
	ldr	r2, [sp, #100]
	vshr.s32	q7, q7, #15
	vshr.s32	q3, q3, #15
	vshr.s32	q8, q8, #15
	vadd.i32	q1, q1, q9
	vst1.32	{q3}, [r10]!
	vadd.i32	q13, q5, q13
	vst1.32	{q7}, [r9]!
	vshr.s32	q1, q1, #15
	vst1.32	{q0}, [ip]!
	vadd.i32	q13, q13, q9
	vst1.32	{q8}, [r2]!
	str	r2, [sp, #100]
	ldr	r2, [sp, #104]
	vshr.s32	q13, q13, #15
	vst1.32	{q1}, [r2]!
	str	r2, [sp, #104]
	ldr	r2, [sp, #108]
	vst1.32	{q13}, [r8]!
	cmp	r3, r2
	bcc	.L10
	ldr	r5, [sp, #112]
	ldr	r7, [sp, #116]
	ldr	fp, [sp, #120]
	ldr	r6, [sp, #80]
	cmp	r5, r7
	add	r8, fp, r5, lsl #2
	sub	r3, r6, r5
	beq	.L1
	add	r3, r8, r3, lsl #2
	movw	r0, #44541
	add	r10, r8, #4
	movt	r0, 65535
	movw	ip, #50399
	movw	lr, #58163
	movw	r1, #49467
	movw	r2, #62340
	str	r3, [sp, #120]
	mov	r7, r0
	mov	r3, r10
	movt	ip, 65535
	movt	lr, 65535
	movt	r1, 65535
	movt	r2, 65535
	str	r10, [sp, #32]
	str	r10, [sp, #48]
	str	ip, [sp, #100]
	str	lr, [sp, #104]
	str	r0, [sp, #108]
	str	r1, [sp, #112]
	str	r2, [sp, #116]
.L9:
	ldr	r0, [r3, #-4]
	ldr	r6, [r8, #64]
	ldr	r3, [r8, #160]
	ldr	r5, [r8, #32]
	ldr	r2, [r8, #192]
	rsb	lr, r3, r6
	add	r9, r6, r3
	ldr	r1, [r8, #224]
	subs	r3, r5, r2
	add	fp, r5, r2
	add	r5, lr, r3
	ldr	r4, [r8, #96]
	mul	r7, r7, r5
	rsb	r10, r1, r0
	add	r6, lr, r10
	add	r0, r0, r1
	ldr	r1, [r8, #128]
	str	r6, [sp, #64]
	str	r7, [sp, #124]
	mov	r7, r6
	ldr	r6, [sp, #104]
	subs	r2, r4, r1
	add	r5, r2, r10
	add	ip, r2, r3
	add	r1, r1, r4
	add	r7, r7, ip
	movw	r4, #9633
	mul	r6, r6, r5
	mul	r7, r4, r7
	subs	r4, r0, r1
	add	r0, r0, r1
	rsb	r1, r9, fp
	adds	r5, r1, r4
	str	r6, [sp, #128]
	movw	r6, #4433
	add	r9, r9, fp
	mul	fp, r6, r5
	ldr	r5, [sp, #112]
	ldr	r6, [sp, #64]
	mla	ip, r5, ip, r7
	ldr	r5, [sp, #116]
	mla	r7, r5, r6, r7
	ldr	r5, [sp, #128]
	movw	r6, #2446
	mla	r2, r6, r2, r5
	movw	r6, #12299
	mla	r10, r6, r10, r5
	ldr	r6, [sp, #124]
	movw	r5, #16819
	add	r2, r2, ip
	mla	lr, r5, lr, r6
	ldr	r5, [sp, #124]
	add	r6, r10, r7
	movw	r10, #25172
	add	r2, r2, #16384
	mla	r3, r10, r3, r5
	add	r10, r0, r9
	asrs	r2, r2, #15
	rsb	r9, r9, r0
	ldr	r0, [sp, #100]
	movw	r5, #6270
	add	ip, ip, r3
	mla	r4, r5, r4, fp
	add	r10, r10, #2
	mla	fp, r0, r1, fp
	add	r7, r7, lr
	asr	r5, r10, #2
	add	r6, r6, #16384
	ldr	r10, [sp, #48]
	add	r9, r9, #2
	add	r7, r7, #16384
	add	ip, ip, #16384
	add	r4, r4, #16384
	add	fp, fp, #16384
	asr	r3, ip, #15
	asrs	r4, r4, #15
	asrs	r6, r6, #15
	asr	r0, r9, #2
	asrs	r7, r7, #15
	asr	r1, fp, #15
	str	r5, [r10, #-4]
	str	r2, [r8, #224]
	mov	r2, r10
	str	r3, [r8, #96]
	adds	r2, r2, #4
	str	r4, [r8, #64]
	str	r6, [r8, #32]
	str	r0, [r8, #128]
	str	r7, [r8, #160]
	str	r1, [r8, #192]
	ldr	r3, [sp, #120]
	ldr	r8, [sp, #32]
	str	r2, [sp, #48]
	mov	r4, r8
	cmp	r8, r3
	add	r4, r4, #4
	str	r4, [sp, #32]
	beq	.L1
	ldr	r3, [sp, #48]
	ldr	r7, [sp, #108]
	b	.L9
.L11:
	movs	r4, #8
	mov	fp, r8
	str	r4, [sp, #80]
	mov	r6, r3
	str	r3, [sp, #64]
	mov	r7, r3
	mov	r4, r3
	mov	r0, r3
	mov	r1, r3
	mov	r2, r3
	b	.L4
.L1:
	add	sp, sp, #140
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	jpeg_fdct_islow, .-jpeg_fdct_islow
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
