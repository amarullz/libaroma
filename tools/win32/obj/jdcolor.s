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
	.file	"jdcolor.c"
	.section	.text.build_ycc_rgb_table,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	build_ycc_rgb_table, %function
build_ycc_rgb_table:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r1, #1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r2, #1024
	mov	r4, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #60
	ldr	r3, [r3]
	ldr	r5, [r0, #468]
	blx	r3
	ldr	r3, [r4, #4]
	movs	r1, #1
	str	r0, [r5, #8]
	mov	r2, #1024
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #4]
	movs	r1, #1
	str	r0, [r5, #12]
	mov	r2, #1024
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #4]
	movs	r1, #1
	str	r0, [r5, #16]
	mov	r2, #1024
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	str	r0, [sp, #20]
	ldr	r0, [r5, #16]
	ldr	r2, [r5, #8]
	ldr	r6, [sp, #20]
	str	r0, [sp, #12]
	mov	r1, r0
	adds	r1, r1, #16
	ldr	r7, [sp, #12]
	ldr	r4, [r5, #12]
	cmp	r2, r1
	mov	r0, r2
	str	r6, [r5, #20]
	add	r0, r0, #16
	str	r2, [sp, #16]
	ite	cc
	movcc	r5, #0
	movcs	r5, #1
	cmp	r0, r7
	it	ls
	orrls	r5, r5, #1
	ldr	r7, [sp, #16]
	mov	r2, r4
	str	r4, [sp, #8]
	adds	r2, r2, #16
	ldr	r3, [sp, #20]
	cmp	r0, r4
	it	hi
	cmphi	r2, r7
	ldr	r7, [sp, #12]
	ite	ls
	movls	r6, #1
	movhi	r6, #0
	ands	r5, r5, r6
	ldr	r6, [sp, #20]
	cmp	r2, r7
	ldr	r7, [sp, #8]
	ite	hi
	movhi	r4, #0
	movls	r4, #1
	cmp	r0, r6
	ldr	r6, [sp, #16]
	add	r3, r3, #16
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	cmp	r7, r1
	it	cs
	orrcs	r4, r4, #1
	cmp	r6, r3
	it	cs
	orrcs	r0, r0, #1
	ands	r4, r4, r5
	ldr	r7, [sp, #20]
	ands	r0, r0, r4
	ldr	r4, [sp, #8]
	ldr	r5, [sp, #12]
	cmp	r7, r1
	ite	cc
	movcc	r1, #0
	movcs	r1, #1
	cmp	r2, r7
	it	hi
	cmphi	r3, r4
	ite	ls
	movls	r2, #1
	movhi	r2, #0
	ands	r2, r2, r0
	cmp	r3, r5
	ite	hi
	movhi	r3, r1
	orrls	r3, r1, #1
	ands	r2, r2, r3
	beq	.L2
	vmov.i32	q14, #4  @ v4si
	mov	r0, r6
	mov	lr, r7
	vmov.i32	q10, #32768  @ v4si
	mov	r7, r5
	mov	r6, r4
	add	r8, r0, #992
	vmov	q1, q14  @ v4si
	mov	r2, r0
	movs	r3, #0
	vldr	d16, .L17
	vldr	d17, .L17+8
	b	.L4
.L16:
	mov	r2, ip
.L4:
	vadd.i32	q9, q8, q1
	add	ip, r2, #32
	vshl.i32	q12, q8, #4
	mov	r4, r6
	vshl.i32	q0, q8, #17
	mov	r0, r7
	vshl.i32	q11, q9, #4
	mov	r1, lr
	vsub.i32	q12, q12, q8
	mov	r5, r2
	vshl.i32	q5, q9, #17
	cmp	r8, ip
	vsub.i32	q11, q11, q9
	add	r3, r3, #2
	vshl.i32	q13, q12, #8
	add	r6, r6, #32
	vsub.i32	q0, q0, q8
	add	r7, r7, #32
	vshl.i32	q4, q11, #8
	add	lr, lr, #32
	vsub.i32	q5, q5, q9
	vadd.i32	q13, q12, q13
	vadd.i32	q4, q11, q4
	vshl.i32	q0, q0, #2
	vshl.i32	q5, q5, #2
	vadd.i32	q0, q0, q8
	vshl.i32	q13, q13, #6
	vshl.i32	q4, q4, #6
	vadd.i32	q5, q5, q9
	vadd.i32	q13, q13, q8
	vadd.i32	q4, q4, q9
	vshl.i32	q3, q8, #2
	vshl.i32	q0, q0, #2
	vshl.i32	q15, q9, #2
	vshl.i32	q5, q5, #2
	vadd.i32	q3, q3, q8
	vshl.i32	q6, q12, #7
	vadd.i32	q0, q0, q8
	vshl.i32	q2, q11, #7
	vshl.i32	q4, q4, #4
	vshl.i32	q13, q13, #4
	vadd.i32	q15, q15, q9
	vadd.i32	q5, q5, q9
	vadd.i32	q13, q13, q8
	vadd.i32	q12, q12, q6
	vadd.i32	q2, q11, q2
	vadd.i32	q11, q4, q9
	vshl.i32	q3, q3, #6
	vshl.i32	q0, q0, #6
	vshl.i32	q15, q15, #6
	vshl.i32	q5, q5, #6
	vshl.i32	q13, q13, #2
	vshl.i32	q12, q12, #1
	vshl.i32	q2, q2, #1
	vshl.i32	q11, q11, #2
	vsub.i32	q3, q3, q8
	vsub.i32	q0, q0, q8
	vsub.i32	q15, q15, q9
	vsub.i32	q5, q5, q9
	vadd.i32	q12, q12, q8
	vadd.i32	q13, q13, q8
	vadd.i32	q2, q2, q9
	vadd.i32	q11, q11, q9
	vshl.i32	q3, q3, #5
	vshl.i32	q0, q0, #3
	vshl.i32	q15, q15, #5
	vshl.i32	q5, q5, #3
	vshl.i32	q4, q12, #4
	vshl.i32	q6, q2, #4
	vshl.i32	q13, q13, #3
	vshl.i32	q11, q11, #3
	vadd.i32	q3, q3, q8
	vadd.i32	q0, q0, q8
	vadd.i32	q15, q15, q9
	vadd.i32	q5, q5, q9
	vsub.i32	q13, q13, q8
	vsub.i32	q12, q4, q12
	vsub.i32	q2, q6, q2
	vsub.i32	q11, q11, q9
	vshl.i32	q4, q3, #3
	vshl.i32	q7, q5, #1
	vshl.i32	q0, q0, #1
	vshl.i32	q6, q15, #3
	vadd.i32	q3, q3, q4
	vshl.i32	q12, q12, #1
	vadd.i32	q0, q0, q8
	vshl.i32	q5, q13, #4
	vshl.i32	q8, q11, #4
	vadd.i32	q15, q15, q6
	vshl.i32	q2, q2, #1
	vadd.i32	q7, q7, q9
	vadd.i32	q4, q12, q10
	vadd.i32	q11, q11, q8
	vadd.i32	q13, q13, q5
	vadd.i32	q3, q3, q10
	vadd.i32	q15, q15, q10
	vadd.i32	q2, q2, q10
	vshl.i32	q0, q0, #1
	vshl.i32	q7, q7, #1
	vshl.i32	q13, q13, #1
	vshr.s32	q3, q3, #16
	vshr.s32	q4, q4, #16
	vadd.i32	q0, q0, q10
	vshr.s32	q15, q15, #16
	vshr.s32	q2, q2, #16
	vshl.i32	q11, q11, #1
	vadd.i32	q12, q7, q10
	pld	[r2, #160]
	vadd.i32	q8, q9, q1
	vst1.32	{q3}, [r5]!
	vst1.32	{q4}, [r4]!
	vst1.32	{q13}, [r0]!
	vst1.32	{q0}, [r1]!
	vst1.32	{q15}, [r5]
	vst1.32	{q2}, [r4]
	vst1.32	{q11}, [r0]
	vst1.32	{q12}, [r1]
	bne	.L16
	vmov.i32	q10, #32768  @ v4si
	mov	r4, r8
	mov	r0, r6
	mov	r1, r7
	mov	r2, lr
.L6:
	vshl.i32	q9, q8, #4
	adds	r3, r3, #1
	vshl.i32	q15, q8, #17
	cmp	r3, #64
	vshl.i32	q12, q8, #2
	vsub.i32	q9, q9, q8
	vsub.i32	q15, q15, q8
	vadd.i32	q12, q12, q8
	vshl.i32	q11, q9, #8
	vshl.i32	q15, q15, #2
	vadd.i32	q11, q9, q11
	vadd.i32	q15, q15, q8
	vshl.i32	q13, q9, #7
	vshl.i32	q11, q11, #6
	vshl.i32	q15, q15, #2
	vadd.i32	q11, q11, q8
	vadd.i32	q15, q15, q8
	vadd.i32	q9, q9, q13
	vshl.i32	q11, q11, #4
	vshl.i32	q12, q12, #6
	vadd.i32	q11, q11, q8
	vshl.i32	q15, q15, #6
	vshl.i32	q9, q9, #1
	vshl.i32	q11, q11, #2
	vsub.i32	q12, q12, q8
	vsub.i32	q15, q15, q8
	vadd.i32	q9, q9, q8
	vadd.i32	q11, q11, q8
	vshl.i32	q12, q12, #5
	vshl.i32	q15, q15, #3
	vshl.i32	q13, q9, #4
	vshl.i32	q11, q11, #3
	vadd.i32	q12, q12, q8
	vadd.i32	q15, q15, q8
	vsub.i32	q11, q11, q8
	vsub.i32	q13, q13, q9
	vshl.i32	q3, q12, #3
	vshl.i32	q9, q15, #1
	vadd.i32	q12, q12, q3
	vadd.i32	q9, q9, q8
	vshl.i32	q15, q11, #4
	vshl.i32	q13, q13, #1
	vadd.i32	q11, q11, q15
	vadd.i32	q12, q12, q10
	vadd.i32	q13, q13, q10
	vshl.i32	q9, q9, #1
	vshl.i32	q11, q11, #1
	vshr.s32	q12, q12, #16
	vshr.s32	q13, q13, #16
	vadd.i32	q9, q9, q10
	vst1.32	{q12}, [r4]!
	vadd.i32	q8, q8, q14
	vst1.32	{q13}, [r0]!
	vst1.32	{q11}, [r1]!
	vst1.32	{q9}, [r2]!
	bcc	.L6
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L18:
	.align	3
.L17:
	.word	-128
	.word	-127
	.word	-126
	.word	-125
.L2:
	mov	r3, r7
	ldr	r7, [sp, #8]
	mov	r0, r5
	mov	r4, r6
	mov	r1, r2
	mov	r9, r2
	mov	r5, r2
	mov	fp, r2
	adds	r4, r4, #36
	adds	r7, r7, #36
	adds	r0, r0, #36
	str	r2, [sp, #4]
	str	r4, [sp, #44]
	str	r7, [sp, #48]
	str	r0, [sp, #52]
.L8:
	movw	r4, #29289
	movw	r0, #42788
	movt	r4, 65358
	movt	r0, 65362
	add	r4, r4, fp
	add	r0, r0, fp
	asrs	r4, r4, #16
	asrs	r0, r0, #16
	pld	[r3, #36]
	str	r4, [sp, #40]
	mov	r7, #2944
	ldr	r4, [sp, #44]
	movt	r7, 65357
	str	r0, [sp, #24]
	movw	r0, #50568
	movt	r0, 65316
	add	r7, r7, fp
	pld	[r4, r5]
	add	r0, r0, r9
	ldr	r4, [sp, #4]
	asrs	r0, r0, #16
	asrs	r7, r7, #16
	movw	r10, #29858
	movt	r10, 65311
	adds	r4, r4, #8
	add	r10, r10, r9
	str	r4, [sp, #4]
	asr	r10, r10, #16
	ldr	r4, [sp, #48]
	movw	r8, #55634
	movw	ip, #14916
	movt	r8, 65359
	movt	ip, 65313
	add	r8, r8, fp
	pld	[r4, r5]
	add	ip, ip, r9
	ldr	r4, [sp, #52]
	asr	r8, r8, #16
	asr	ip, ip, #16
	movw	lr, #16443
	movt	lr, 65361
	pld	[r4, r5]
	add	lr, lr, fp
	str	r0, [sp, #28]
	asr	lr, lr, #16
	ldr	r0, [sp, #16]
	adds	r6, r6, #32
	ldr	r4, [sp, #8]
	adds	r3, r3, #32
	str	r7, [r0, r5]
	movw	r0, #3597
	movt	r0, 65364
	sub	r7, r9, #14811136
	add	r0, r0, fp
	sub	r7, r7, #20736
	asrs	r0, r0, #16
	asrs	r7, r7, #16
	str	r0, [sp, #32]
	movw	r0, #35626
	movt	r0, 65318
	str	r7, [r4, r5]
	add	r0, r0, r9
	ldr	r4, [sp, #12]
	asrs	r0, r0, #16
	add	r7, r1, #5963776
	add	r7, r7, #26880
	str	r0, [sp, #36]
	ldr	r0, [sp, #40]
	str	r7, [r4, r5]
	add	r7, r2, #2916352
	add	r7, r7, #3328
	ldr	r4, [sp, #8]
	str	r7, [r3, #-32]
	movw	r7, #45614
	str	r0, [r6, #-28]
	movt	r7, 90
	ldr	r0, [sp, #12]
	add	r4, r4, r5
	add	r7, r7, r1
	str	r10, [r4, #4]
	str	r4, [sp]
	movw	r10, #29942
	add	r0, r0, r5
	movt	r10, 65365
	str	r7, [r0, #4]
	movw	r7, #13542
	movt	r7, 44
	add	r10, r10, fp
	add	r7, r7, r2
	asr	r10, r10, #16
	str	r7, [r3, #-28]
	movw	r7, #64348
	movt	r7, 89
	str	r8, [r6, #-24]
	add	r7, r7, r1
	str	ip, [r4, #8]
	str	r7, [r0, #8]
	movw	r7, #56524
	movt	r7, 43
	movw	r8, #20684
	add	r7, r7, r2
	movt	r8, 65320
	str	r7, [r3, #-24]
	movw	r7, #56287
	movt	r7, 65366
	str	lr, [r6, #-20]
	add	r7, r7, fp
	sub	lr, r9, #14483456
	asrs	r7, r7, #16
	sub	lr, lr, #26
	add	r8, r8, r9
	str	r7, [sp, #40]
	asr	r7, lr, #16
	ldr	lr, [sp]
	asr	r8, r8, #16
	str	r7, [r4, #12]
	movw	r7, #17546
	movt	r7, 89
	movw	ip, #5742
	add	r7, r7, r1
	movt	ip, 65322
	str	r7, [r0, #12]
	add	r7, r2, #2850816
	addw	r7, r7, #1202
	add	ip, ip, r9
	str	r7, [r3, #-20]
	asr	ip, ip, #16
	ldr	r7, [sp, #24]
	add	fp, fp, #733184
	add	r9, r9, #925696
	adds	r5, r5, #32
	add	fp, fp, #1864
	add	r9, r9, #3344
	str	r7, [r6, #-16]
	ldr	r7, [sp, #28]
	str	r7, [r4, #16]
	add	r7, r1, #5799936
	addw	r7, r7, #3512
	ldr	r4, [sp, #32]
	str	r7, [r0, #16]
	movw	r7, #11416
	movt	r7, 43
	add	r7, r7, r2
	str	r7, [r3, #-16]
	movw	r7, #55014
	str	r4, [r6, #-12]
	movt	r7, 87
	ldr	r4, [sp, #36]
	add	r7, r7, r1
	str	r4, [lr, #20]
	movw	lr, #54398
	ldr	r4, [sp]
	movt	lr, 42
	add	lr, lr, r2
	str	r7, [r0, #20]
	str	lr, [r3, #-12]
	movw	r7, #8212
	str	r10, [r6, #-8]
	movt	r7, 87
	str	r8, [r4, #24]
	movw	r8, #31844
	ldr	r4, [sp, #40]
	movt	r8, 42
	add	r7, r7, r1
	add	r8, r8, r2
	str	r7, [r0, #24]
	movw	lr, #26946
	str	r8, [r3, #-8]
	movt	lr, 86
	str	r4, [r6, #-4]
	add	lr, lr, r1
	ldr	r4, [sp]
	movw	r7, #9290
	movt	r7, 42
	sub	r1, r1, #372736
	add	r7, r7, r2
	sub	r2, r2, #180224
	str	ip, [r4, #28]
	sub	r1, r1, #1680
	str	lr, [r0, #28]
	subs	r2, r2, #208
	ldr	lr, [sp, #4]
	str	r7, [r3, #-4]
	mov	r7, lr
	sub	r0, lr, #128
	cmp	r7, #248
	rsb	r4, lr, #256
	bne	.L8
	ldr	r5, [sp, #16]
	movw	r2, #42982
	movt	r2, 65535
	movw	lr, #26345
	mul	r8, r2, r0
	movw	r1, #50594
	ldr	r2, [sp, #12]
	add	r7, r5, #992
	ldr	r5, [sp, #8]
	movt	lr, 1
	movt	r1, 1
	mul	lr, lr, r0
	movw	r3, #18734
	lsls	r4, r4, #2
	mul	r1, r1, r0
	add	r6, r5, #992
	add	r5, r2, #992
	ldr	r2, [sp, #20]
	movt	r3, 65535
	mul	r0, r3, r0
	add	lr, lr, #32768
	add	r1, r1, #32768
	movs	r3, #0
	add	ip, r2, #992
	add	r2, r8, #32768
.L9:
	asr	r9, lr, #16
	asr	r8, r1, #16
	str	r9, [r7, r3]
	add	lr, lr, #91648
	str	r8, [r6, r3]
	add	r1, r1, #115712
	str	r0, [r5, r3]
	sub	r0, r0, #46592
	str	r2, [ip, r3]
	adds	r3, r3, #4
	cmp	r3, r4
	sub	r2, r2, #22528
	add	lr, lr, #233
	add	r1, r1, #418
	sub	r0, r0, #210
	sub	r2, r2, #26
	bne	.L9
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	build_ycc_rgb_table, .-build_ycc_rgb_table
	.section	.text.ycc_rgb_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ycc_rgb_convert, %function
ycc_rgb_convert:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r3, [sp, #12]
	ldr	r3, [r0, #468]
	ldr	r4, [sp, #12]
	ldr	r7, [r0, #120]
	ldr	r10, [r3, #8]
	ldr	r0, [r0, #336]
	ldr	fp, [r3, #12]
	rsb	r2, r4, r2, lsl #2
	ldr	r9, [r3, #20]
	ldr	r5, [r3, #16]
	str	r2, [sp, #20]
	str	r1, [sp, #16]
	str	r5, [sp, #8]
.L20:
	ldr	r1, [sp, #64]
	subs	r1, r1, #1
	str	r1, [sp, #64]
	bmi	.L28
.L25:
	ldr	ip, [sp, #16]
	ldr	r4, [sp, #12]
	ldr	r2, [sp, #20]
	ldr	r3, [ip, #8]
	ldr	r1, [ip]
	add	r4, r4, r2
	ldr	r2, [ip, #4]
	ldr	ip, [r3, r4]
	ldr	r3, [sp, #12]
	ldr	lr, [r2, r4]
	ldr	r8, [r1, r4]
	ldr	r2, [r3], #4
	str	r3, [sp, #12]
	cmp	r7, #0
	beq	.L20
	str	ip, [sp, #4]
	movs	r3, #0
	ldr	ip, [sp, #8]
.L24:
	ldr	r4, [sp, #4]
	adds	r2, r2, #3
	ldrb	r1, [r8, r3]	@ zero_extendqisi2
	ldrb	r5, [r4, r3]	@ zero_extendqisi2
	ldrb	r4, [lr, r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	cmp	r3, r7
	ldr	r6, [r10, r5, lsl #2]
	sxth	r4, r4
	add	r6, r6, r0
	ldrb	r6, [r6, r1]	@ zero_extendqisi2
	strb	r6, [r2, #-3]
	ldr	r6, [ip, r5, lsl #2]
	ldr	r5, [r9, r4, lsl #2]
	add	r5, r5, r6
	add	r5, r0, r5, asr #16
	ldrb	r5, [r5, r1]	@ zero_extendqisi2
	strb	r5, [r2, #-2]
	ldr	r4, [fp, r4, lsl #2]
	add	r4, r4, r0
	ldrb	r1, [r4, r1]	@ zero_extendqisi2
	strb	r1, [r2, #-1]
	bne	.L24
	ldr	r1, [sp, #64]
	subs	r1, r1, #1
	str	r1, [sp, #64]
	bpl	.L25
.L28:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	ycc_rgb_convert, .-ycc_rgb_convert
	.section	.text.ycc_rgba_8888_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ycc_rgba_8888_convert, %function
ycc_rgba_8888_convert:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r3, [sp, #12]
	ldr	r4, [sp, #12]
	ldr	r3, [r0, #468]
	ldr	r7, [r0, #120]
	ldr	r0, [r0, #336]
	rsb	r2, r4, r2, lsl #2
	ldr	r10, [r3, #8]
	ldr	r9, [r3, #20]
	str	r2, [sp, #20]
	ldr	r5, [r3, #12]
	ldr	r2, [r3, #16]
	str	r1, [sp, #16]
	str	r5, [sp, #4]
	str	r2, [sp, #8]
.L30:
	ldr	r5, [sp, #64]
	subs	r5, r5, #1
	str	r5, [sp, #64]
	bmi	.L38
.L35:
	ldr	r3, [sp, #16]
	ldr	r4, [sp, #12]
	ldr	r5, [sp, #20]
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	ldr	fp, [sp, #12]
	add	r4, r4, r5
	ldr	r3, [r3, #8]
	ldr	r8, [r1, r4]
	ldr	lr, [r2, r4]
	ldr	ip, [r3, r4]
	ldr	r3, [fp], #4
	str	fp, [sp, #12]
	cmp	r7, #0
	beq	.L30
	ldr	fp, [sp, #8]
	movs	r2, #0
.L34:
	ldrb	r5, [ip, r2]	@ zero_extendqisi2
	adds	r3, r3, #4
	ldrb	r1, [r8, r2]	@ zero_extendqisi2
	ldrb	r4, [lr, r2]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldr	r6, [r10, r5, lsl #2]
	cmp	r2, r7
	add	r6, r6, r0
	sxth	r4, r4
	ldrb	r6, [r6, r1]	@ zero_extendqisi2
	strb	r6, [r3, #-4]
	ldr	r6, [fp, r5, lsl #2]
	ldr	r5, [r9, r4, lsl #2]
	add	r5, r5, r6
	add	r5, r0, r5, asr #16
	ldrb	r5, [r5, r1]	@ zero_extendqisi2
	strb	r5, [r3, #-3]
	ldr	r5, [sp, #4]
	ldr	r4, [r5, r4, lsl #2]
	add	r4, r4, r0
	ldrb	r1, [r4, r1]	@ zero_extendqisi2
	mov	r4, #-1
	strb	r4, [r3, #-1]
	strb	r1, [r3, #-2]
	bne	.L34
	ldr	r5, [sp, #64]
	subs	r5, r5, #1
	str	r5, [sp, #64]
	bpl	.L35
.L38:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	ycc_rgba_8888_convert, .-ycc_rgba_8888_convert
	.section	.text.ycc_rgb_565_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ycc_rgb_565_convert, %function
ycc_rgb_565_convert:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #68
	str	r3, [sp, #52]
	ldr	r4, [sp, #52]
	ldr	r3, [r0, #468]
	ldr	r5, [r0, #120]
	ldr	r7, [r0, #336]
	rsb	r2, r4, r2, lsl #2
	ldr	r10, [r3, #20]
	ldr	r0, [r3, #8]
	str	r2, [sp, #60]
	ldr	r4, [r3, #16]
	ldr	r2, [r3, #12]
	str	r1, [sp, #56]
	str	r5, [sp, #48]
	str	r0, [sp, #12]
	str	r2, [sp, #16]
	str	r4, [sp, #20]
.L40:
	ldr	r0, [sp, #104]
	subs	r0, r0, #1
	str	r0, [sp, #104]
	bmi	.L58
.L46:
	ldr	r0, [sp, #52]
	ldr	r5, [sp, #60]
	ldr	r8, [sp, #56]
	add	r0, r0, r5
	ldr	r5, [sp, #52]
	ldmia	r8, {r1, r2, r3}
	ldr	r4, [r5], #4
	ldr	r1, [r1, r0]
	ldr	r2, [r2, r0]
	ldr	r3, [r3, r0]
	lsls	r0, r4, #30
	str	r5, [sp, #52]
	str	r4, [sp, #32]
	str	r1, [sp, #36]
	str	r2, [sp, #40]
	str	r3, [sp, #44]
	beq	.L41
	mov	r4, r1
	ldr	r0, [sp, #48]
	ldrb	r1, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	str	r3, [sp, #44]
	ldr	r3, [sp, #40]
	subs	r0, r0, #1
	ldr	r5, [sp, #12]
	str	r0, [sp, #48]
	adds	r3, r3, #1
	ldr	r0, [sp, #36]
	ldrb	r2, [r2]	@ zero_extendqisi2
	str	r3, [sp, #40]
	ldrb	r3, [r4]	@ zero_extendqisi2
	adds	r0, r0, #1
	ldr	r4, [r5, r1, lsl #2]
	ldr	r5, [sp, #20]
	ldr	r8, [sp, #16]
	str	r0, [sp, #36]
	add	r4, r4, r7
	ldr	r0, [r10, r2, lsl #2]
	ldr	r1, [r5, r1, lsl #2]
	ldr	r2, [r8, r2, lsl #2]
	ldrb	r4, [r4, r3]	@ zero_extendqisi2
	add	r1, r1, r0
	ldr	r9, [sp, #32]
	add	r1, r7, r1, asr #16
	add	r2, r2, r7
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	lsls	r4, r4, #8
	and	r4, r4, #63488
	orr	r2, r4, r2, lsr #3
	lsls	r3, r3, #3
	and	r3, r3, #2016
	orrs	r2, r2, r3
	strh	r2, [r9], #2	@ movhi
	str	r9, [sp, #32]
.L41:
	ldr	r0, [sp, #48]
	lsrs	r0, r0, #1
	str	r0, [sp, #28]
	beq	.L42
	ldr	r1, [sp, #36]
	movs	r6, #0
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #44]
	ldr	r4, [sp, #32]
	adds	r1, r1, #2
	adds	r2, r2, #2
	adds	r3, r3, #2
	str	r4, [sp, #24]
.L44:
	ldrb	r0, [r3, #-2]	@ zero_extendqisi2
	adds	r6, r6, #1
	ldr	r8, [sp, #12]
	adds	r3, r3, #2
	ldrb	r5, [r2, #-2]	@ zero_extendqisi2
	adds	r1, r1, #2
	ldr	r9, [sp, #20]
	adds	r2, r2, #2
	ldr	lr, [r8, r0, lsl #2]
	ldrb	ip, [r3, #-3]	@ zero_extendqisi2
	ldr	fp, [r9, r0, lsl #2]
	add	lr, lr, r7
	ldr	r0, [r10, r5, lsl #2]
	str	lr, [sp, #8]
	ldr	lr, [sp, #20]
	ldr	r9, [r8, ip, lsl #2]
	add	fp, fp, r0
	ldrb	r4, [r2, #-3]	@ zero_extendqisi2
	add	fp, r7, fp, asr #16
	ldrb	r0, [r1, #-4]	@ zero_extendqisi2
	ldr	ip, [lr, ip, lsl #2]
	add	r9, r9, r7
	ldr	lr, [sp, #8]
	str	r9, [sp, #4]
	ldr	r9, [sp, #16]
	ldr	r8, [r10, r4, lsl #2]
	ldrb	lr, [lr, r0]	@ zero_extendqisi2
	ldr	r5, [r9, r5, lsl #2]
	add	ip, ip, r8
	ldrb	r8, [r1, #-3]	@ zero_extendqisi2
	str	lr, [sp, #8]
	add	ip, r7, ip, asr #16
	ldr	lr, [sp, #4]
	add	r5, r5, r7
	ldr	r4, [r9, r4, lsl #2]
	ldrb	fp, [fp, r0]	@ zero_extendqisi2
	ldrb	r9, [lr, r8]	@ zero_extendqisi2
	ldrb	r0, [r5, r0]	@ zero_extendqisi2
	add	r4, r4, r7
	ldr	r5, [sp, #8]
	ldrb	ip, [ip, r8]	@ zero_extendqisi2
	lsl	fp, fp, #3
	ldrb	r4, [r4, r8]	@ zero_extendqisi2
	lsl	r9, r9, #8
	and	fp, fp, #2016
	ldr	r8, [sp, #24]
	lsl	lr, r5, #8
	and	r9, r9, #63488
	lsl	ip, ip, #3
	and	lr, lr, #63488
	orr	r9, r9, r4, lsr #3
	orr	lr, lr, r0, lsr #3
	and	ip, ip, #2016
	orr	r9, r9, ip
	orr	fp, lr, fp
	orr	r0, fp, r9, lsl #16
	ldr	r9, [sp, #28]
	str	r0, [r8], #4
	cmp	r6, r9
	str	r8, [sp, #24]
	bne	.L44
	ldr	r0, [sp, #32]
	lsls	r3, r6, #1
	ldr	r2, [sp, #36]
	ldr	r4, [sp, #40]
	ldr	r5, [sp, #44]
	add	r0, r0, r6, lsl #2
	add	r2, r2, r3
	add	r4, r4, r3
	str	r2, [sp, #36]
	add	r5, r5, r3
	str	r0, [sp, #32]
	str	r4, [sp, #40]
	str	r5, [sp, #44]
.L42:
	ldr	r0, [sp, #48]
	lsls	r3, r0, #31
	bpl	.L40
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #40]
	ldr	r4, [sp, #36]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r5, [sp, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r8, [sp, #20]
	ldr	r9, [sp, #16]
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r0, [r5, r1, lsl #2]
	ldr	r4, [r10, r2, lsl #2]
	ldr	r1, [r8, r1, lsl #2]
	ldr	r2, [r9, r2, lsl #2]
	add	r0, r0, r7
	ldrb	r0, [r0, r3]	@ zero_extendqisi2
	add	r1, r1, r4
	ldr	lr, [sp, #32]
	add	r1, r7, r1, asr #16
	add	r2, r2, r7
	ldrb	r4, [r2, r3]	@ zero_extendqisi2
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	lsls	r2, r0, #8
	ldr	r0, [sp, #104]
	and	r2, r2, #63488
	orr	r2, r2, r4, lsr #3
	lsls	r3, r3, #3
	subs	r0, r0, #1
	str	r0, [sp, #104]
	and	r3, r3, #2016
	orr	r3, r3, r2
	strh	r3, [lr]	@ movhi
	bpl	.L46
.L58:
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	ycc_rgb_565_convert, .-ycc_rgb_565_convert
	.section	.text.ycc_rgb_565D_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ycc_rgb_565D_convert, %function
ycc_rgb_565D_convert:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #84
	str	r3, [sp, #68]
	ldr	r6, [sp, #68]
	ldr	r3, [r0, #468]
	ldr	r4, [r0, #148]
	ldr	r5, .L79
	ldr	r7, [r0, #120]
	rsb	r2, r6, r2, lsl #2
	ldr	r0, [r0, #336]
	and	r4, r4, #3
	ldr	r10, [r3, #20]
.LPIC16:
	add	r5, pc
	str	r2, [sp, #76]
	str	r1, [sp, #72]
	str	r0, [sp, #24]
	mov	fp, r10
	ldr	r4, [r5, r4, lsl #2]
	ldr	r0, [r3, #8]
	ldr	r1, [r3, #12]
	ldr	r2, [r3, #16]
	str	r7, [sp, #64]
	str	r4, [sp, #20]
	str	r0, [sp, #28]
	str	r1, [sp, #32]
	str	r2, [sp, #36]
.L60:
	ldr	r1, [sp, #120]
	subs	r1, r1, #1
	str	r1, [sp, #120]
	bmi	.L78
.L66:
	ldr	r4, [sp, #72]
	ldr	r0, [sp, #68]
	ldr	r3, [sp, #76]
	ldr	r6, [sp, #68]
	add	r0, r0, r3
	ldmia	r4, {r1, r2, r3}
	ldr	r5, [r6], #4
	ldr	r1, [r1, r0]
	ldr	r2, [r2, r0]
	ldr	r3, [r3, r0]
	str	r1, [sp, #52]
	lsls	r1, r5, #30
	str	r6, [sp, #68]
	str	r5, [sp, #48]
	str	r2, [sp, #56]
	str	r3, [sp, #60]
	beq	.L61
	ldr	r1, [sp, #64]
	mov	r5, r3
	ldrb	r4, [r3]	@ zero_extendqisi2
	mov	r9, r2
	ldr	r3, [sp, #52]
	adds	r5, r5, #1
	ldr	r7, [sp, #20]
	subs	r1, r1, #1
	ldr	r6, [sp, #36]
	str	r1, [sp, #64]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [r6, r4, lsl #2]
	uxtb	r2, r7
	ldr	r6, [sp, #52]
	mov	r7, r9
	ldrb	r0, [r9]	@ zero_extendqisi2
	adds	r7, r7, #1
	str	r7, [sp, #56]
	adds	r6, r6, #1
	ldr	r7, [sp, #28]
	str	r6, [sp, #52]
	ldr	r6, [sp, #24]
	str	r5, [sp, #60]
	ldr	r5, [fp, r0, lsl #2]
	ldr	r4, [r7, r4, lsl #2]
	add	r1, r1, r6
	ldr	r7, [sp, #32]
	add	r5, r5, r3
	adds	r3, r1, r2
	ldrb	r4, [r3, r4]	@ zero_extendqisi2
	add	r1, r1, r5, asr #16
	ldr	r0, [r7, r0, lsl #2]
	asrs	r2, r2, #1
	ldr	r9, [sp, #48]
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
	lsls	r4, r4, #8
	and	r4, r4, #63488
	lsls	r2, r2, #3
	orr	r4, r4, r3, lsr #3
	and	r2, r2, #2016
	orrs	r2, r2, r4
	strh	r2, [r9], #2	@ movhi
	str	r9, [sp, #48]
.L61:
	ldr	r0, [sp, #64]
	lsrs	r0, r0, #1
	str	r0, [sp, #44]
	beq	.L62
	ldr	r2, [sp, #56]
	movs	r5, #0
	ldr	r1, [sp, #52]
	ldr	r3, [sp, #60]
	adds	r2, r2, #2
	ldr	r4, [sp, #48]
	adds	r1, r1, #2
	mov	r10, r2
	adds	r3, r3, #2
	str	r5, [sp, #16]
	str	r4, [sp, #40]
.L64:
	ldr	r7, [sp, #20]
	adds	r3, r3, #2
	ldr	r6, [sp, #20]
	add	r10, r10, #2
	ldrb	lr, [r1, #-2]	@ zero_extendqisi2
	adds	r1, r1, #2
	ldrb	r9, [r3, #-4]	@ zero_extendqisi2
	uxtb	r5, r7
	ldr	r7, [sp, #16]
	ror	r0, r6, #8
	ldrb	r6, [r10, #-4]	@ zero_extendqisi2
	ldrb	r8, [r3, #-3]	@ zero_extendqisi2
	adds	r7, r7, #1
	uxtb	r2, r0
	str	r7, [sp, #16]
	ror	r0, r0, #8
	ldr	r7, [sp, #24]
	str	r0, [sp, #20]
	ldr	r0, [sp, #36]
	add	lr, lr, r7
	ldr	r7, [sp, #28]
	ldrb	r4, [r10, #-3]	@ zero_extendqisi2
	ldr	ip, [r0, r9, lsl #2]
	ldr	r7, [r7, r9, lsl #2]
	ldr	r9, [sp, #28]
	ldrb	r0, [r1, #-3]	@ zero_extendqisi2
	str	r7, [sp, #12]
	ldr	r7, [fp, r6, lsl #2]
	add	ip, ip, r7
	ldr	r7, [sp, #36]
	add	ip, lr, ip, asr #16
	add	lr, lr, r5
	asrs	r5, r5, #1
	ldr	r7, [r7, r8, lsl #2]
	ldr	r8, [r9, r8, lsl #2]
	ldr	r9, [sp, #32]
	str	r7, [sp, #4]
	ldr	r7, [sp, #24]
	ldr	r6, [r9, r6, lsl #2]
	ldrb	r5, [ip, r5]	@ zero_extendqisi2
	add	r0, r0, r7
	ldr	r7, [sp, #4]
	str	r6, [sp, #8]
	ldr	r6, [sp, #12]
	lsls	r5, r5, #3
	ldrb	r9, [lr, r6]	@ zero_extendqisi2
	and	r5, r5, #2016
	ldr	r6, [fp, r4, lsl #2]
	add	r7, r7, r6
	ldr	r6, [sp, #32]
	add	r7, r0, r7, asr #16
	add	r0, r0, r2
	asrs	r2, r2, #1
	ldrb	r8, [r0, r8]	@ zero_extendqisi2
	ldr	r4, [r6, r4, lsl #2]
	lsl	r9, r9, #8
	ldrb	r2, [r7, r2]	@ zero_extendqisi2
	ldr	r7, [sp, #8]
	and	r9, r9, #63488
	ldrb	r0, [r0, r4]	@ zero_extendqisi2
	lsl	r8, r8, #8
	ldrb	r6, [lr, r7]	@ zero_extendqisi2
	and	r8, r8, #63488
	lsls	r2, r2, #3
	orr	r8, r8, r0, lsr #3
	and	r2, r2, #2016
	orr	r9, r9, r6, lsr #3
	orr	r2, r8, r2
	orr	r9, r9, r5
	orr	r2, r9, r2, lsl #16
	ldr	r9, [sp, #40]
	str	r2, [r9], #4
	ldr	r0, [sp, #16]
	ldr	r2, [sp, #44]
	str	r9, [sp, #40]
	cmp	r0, r2
	bne	.L64
	ldr	r4, [sp, #48]
	lsls	r3, r0, #1
	ldr	r5, [sp, #52]
	ldr	r6, [sp, #56]
	ldr	r7, [sp, #60]
	add	r4, r4, r0, lsl #2
	add	r5, r5, r3
	add	r6, r6, r3
	str	r5, [sp, #52]
	add	r7, r7, r3
	str	r4, [sp, #48]
	str	r6, [sp, #56]
	str	r7, [sp, #60]
.L62:
	ldr	r0, [sp, #64]
	lsls	r3, r0, #31
	bpl	.L60
	ldr	r2, [sp, #60]
	ldr	r3, [sp, #20]
	ldr	r4, [sp, #56]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r5, [sp, #52]
	ldr	r7, [sp, #36]
	uxtb	r2, r3
	ldr	r9, [sp, #28]
	ldrb	r3, [r4]	@ zero_extendqisi2
	asrs	r0, r2, #1
	ldr	r4, [r7, r1, lsl #2]
	ldrb	r6, [r5]	@ zero_extendqisi2
	ldr	r7, [sp, #24]
	ldr	r1, [r9, r1, lsl #2]
	ldr	r9, [sp, #32]
	ldr	r5, [fp, r3, lsl #2]
	add	r6, r6, r7
	add	r2, r2, r6
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	ldr	r3, [r9, r3, lsl #2]
	add	r4, r4, r5
	add	r4, r6, r4, asr #16
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	lsls	r1, r1, #8
	ldrb	r2, [r4, r0]	@ zero_extendqisi2
	and	r1, r1, #63488
	ldr	r0, [sp, #48]
	orr	r3, r1, r3, lsr #3
	ldr	r1, [sp, #120]
	lsls	r2, r2, #3
	subs	r1, r1, #1
	and	r2, r2, #2016
	orr	r3, r3, r2
	str	r1, [sp, #120]
	strh	r3, [r0]	@ movhi
	bpl	.L66
.L78:
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L80:
	.align	2
.L79:
	.word	.LANCHOR0-(.LPIC16+4)
	.size	ycc_rgb_565D_convert, .-ycc_rgb_565D_convert
	.section	.text.rgb_rgba_8888_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	rgb_rgba_8888_convert, %function
rgb_rgba_8888_convert:
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	rsb	r2, r3, r2, lsl #2
	ldr	r10, [r0, #120]
	sub	sp, sp, #60
	mov	fp, r1
	mov	ip, #255
	str	r3, [sp]
	str	r2, [sp, #12]
	lsr	r0, r10, #4
	lsl	r2, r10, #2
	subs	r3, r0, #3
	lsl	r9, r0, #4
	bic	r3, r3, #1
	lsls	r7, r0, #6
	adds	r3, r3, #2
	str	r0, [sp, #8]
	str	r2, [sp, #16]
	str	r7, [sp, #52]
	str	r3, [sp, #20]
.L82:
	ldr	r0, [sp, #96]
	subs	r0, r0, #1
	str	r0, [sp, #96]
	bmi	.L105
.L97:
	ldr	r0, [sp]
	ldr	r2, [sp, #12]
	ldr	r7, [sp]
	ldr	r1, [fp]
	add	r0, r0, r2
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #8]
	ldr	lr, [r7], #4
	ldr	r1, [r1, r0]
	ldr	r3, [r3, r0]
	ldr	r2, [r2, r0]
	str	r7, [sp]
	cmp	r10, #0
	beq	.L82
	ldr	r4, [sp, #16]
	add	r7, r3, r10
	add	r0, r1, r10
	add	r4, r4, lr
	cmp	r4, r1
	ite	hi
	movhi	r5, #0
	movls	r5, #1
	cmp	r4, r3
	ite	hi
	movhi	r6, #0
	movls	r6, #1
	cmp	lr, r7
	it	cs
	orrcs	r6, r6, #1
	cmp	lr, r0
	it	cs
	orrcs	r5, r5, #1
	cmp	r4, r2
	and	r6, r6, r5
	ite	hi
	movhi	r7, #0
	movls	r7, #1
	add	r4, r2, r10
	cmp	r10, #15
	ite	ls
	movls	r6, #0
	andhi	r6, r6, #1
	cmp	lr, r4
	ite	cc
	movcc	r4, r7
	orrcs	r4, r7, #1
	tst	r6, r4
	beq	.L85
	cmp	r9, #0
	beq	.L86
	ldr	r0, [sp, #8]
	cmp	r0, #2
	bls	.L99
	mov	r0, lr
	str	lr, [sp, #40]
	mov	r6, r3
	mov	r4, r1
	movs	r7, #0
	mov	lr, r2
	str	r10, [sp, #24]
	str	r9, [sp, #28]
	str	r3, [sp, #32]
	str	r2, [sp, #36]
	str	r1, [sp, #44]
	str	fp, [sp, #48]
.L92:
	vmov.i32	q11, #4294967295  @ v16qi
	mov	r2, r6
	mov	r8, r0
	mov	r5, r4
	mov	r3, lr
	pld	[r4, #96]
	vld1.8	{q9}, [r2]!
	adds	r7, r7, #2
	add	r10, r0, #64
	add	r9, r0, #96
	vld1.8	{q8}, [r5]!
	add	fp, r4, #32
	add	r1, r6, #32
	add	lr, lr, #32
	vld1.8	{q10}, [r3]!
	mov	r4, fp
	str	lr, [sp, #4]
	mov	r6, r1
	vst4.8	{d16, d18, d20, d22}, [r8]!
	vst4.8	{d17, d19, d21, d23}, [r8]
	add	r8, r0, #128
	mov	r0, r8
	vld1.8	{q9}, [r2]
	ldr	r2, [sp, #20]
	vld1.8	{q8}, [r5]
	cmp	r7, r2
	vld1.8	{q10}, [r3]
	vst4.8	{d16, d18, d20, d22}, [r10]
	vst4.8	{d17, d19, d21, d23}, [r9]
	bne	.L92
	mov	r0, lr
	mov	r4, r1
	mov	r5, fp
	ldr	r10, [sp, #24]
	ldr	r9, [sp, #28]
	ldr	r3, [sp, #32]
	ldr	r2, [sp, #36]
	ldr	lr, [sp, #40]
	ldr	r1, [sp, #44]
	ldr	fp, [sp, #48]
.L87:
	mov	r6, r0
	mov	r0, r7
.L94:
	vmov.i32	q11, #4294967295  @ v16qi
	mov	r7, r8
	vld1.8	{q8}, [r5]!
	adds	r0, r0, #1
	add	r8, r8, #64
	vld1.8	{q9}, [r4]!
	vld1.8	{q10}, [r6]!
	vst4.8	{d16, d18, d20, d22}, [r7]!
	vst4.8	{d17, d19, d21, d23}, [r7]
	ldr	r7, [sp, #8]
	cmp	r7, r0
	bhi	.L94
	ldr	r7, [sp, #52]
	cmp	r10, r9
	add	r1, r1, r9
	add	r3, r3, r9
	add	r2, r2, r9
	add	lr, lr, r7
	beq	.L82
.L86:
	mov	r0, lr
	mov	r4, r1
.L90:
	ldrb	r5, [r4], #1	@ zero_extendqisi2
	adds	r0, r0, #4
	strb	r5, [r0, #-4]
	add	r5, r4, r9
	ldrb	r6, [r3], #1	@ zero_extendqisi2
	subs	r5, r5, r1
	cmp	r10, r5
	strb	r6, [r0, #-3]
	ldrb	r6, [r2], #1	@ zero_extendqisi2
	strb	ip, [r0, #-1]
	strb	r6, [r0, #-2]
	bhi	.L90
	ldr	r0, [sp, #96]
	subs	r0, r0, #1
	str	r0, [sp, #96]
	bpl	.L97
.L105:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L85:
	mov	r4, lr
.L96:
	ldrb	r5, [r1], #1	@ zero_extendqisi2
	adds	r4, r4, #4
	strb	r5, [r4, #-4]
	cmp	r0, r1
	ldrb	r5, [r3], #1	@ zero_extendqisi2
	strb	r5, [r4, #-3]
	ldrb	r5, [r2], #1	@ zero_extendqisi2
	strb	ip, [r4, #-1]
	strb	r5, [r4, #-2]
	bne	.L96
	b	.L82
.L99:
	mov	r8, lr
	mov	r0, r2
	mov	r4, r3
	mov	r5, r1
	movs	r7, #0
	b	.L87
	.size	rgb_rgba_8888_convert, .-rgb_rgba_8888_convert
	.section	.text.rgb_rgb_565_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	rgb_rgb_565_convert, %function
rgb_rgb_565_convert:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, [r0, #120]
	vmov.i32	q12, #63488  @ v4si
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	rsb	r2, r3, r2, lsl #2
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r10, r1
	sub	sp, sp, #84
	vldr	d10, .L133
	vldr	d11, .L133+8
	str	r3, [sp, #4]
	str	r2, [sp, #52]
	str	r0, [sp]
.L107:
	ldr	r0, [sp, #184]
	subs	r0, r0, #1
	str	r0, [sp, #184]
	bmi	.L132
.L119:
	ldr	r5, [sp, #4]
	ldr	r0, [sp, #4]
	ldr	r1, [sp, #52]
	ldr	r4, [r5], #4
	ldr	r3, [r10]
	add	r0, r0, r1
	ldr	r1, [r10, #8]
	ldr	r2, [r10, #4]
	str	r5, [sp, #4]
	ldr	r5, [r1, r0]
	lsls	r1, r4, #30
	ldr	r3, [r3, r0]
	ldr	r2, [r2, r0]
	beq	.L108
	ldrb	r6, [r3]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldrb	r1, [r2, #-1]	@ zero_extendqisi2
	adds	r3, r3, #1
	ldrb	r0, [r5]	@ zero_extendqisi2
	adds	r5, r5, #1
	ldr	r7, [sp]
	lsls	r6, r6, #8
	lsls	r1, r1, #3
	and	r6, r6, #63488
	and	r1, r1, #2016
	subs	r7, r7, #1
	orrs	r1, r1, r6
	str	r7, [sp]
	orr	r1, r1, r0, lsr #3
	strh	r1, [r4], #2	@ movhi
.L108:
	ldr	r0, [sp]
	lsrs	r9, r0, #1
	beq	.L120
	lsl	r6, r9, #1
	add	fp, r4, r9, lsl #2
	adds	r1, r2, r6
	adds	r7, r5, r6
	cmp	r2, fp
	it	cc
	cmpcc	r4, r1
	str	r1, [sp, #12]
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	cmp	r5, fp
	it	cc
	cmpcc	r4, r7
	add	r6, r3, r6
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	ands	r0, r0, r1
	str	r6, [sp, #8]
	cmp	r9, #15
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r3, fp
	it	cc
	cmpcc	r4, r6
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	ands	r0, r0, r6
	str	r7, [sp, #48]
	beq	.L110
	ldr	r0, [sp]
	mov	lr, r5
	mov	r7, r2
	mov	r6, r3
	mov	r1, r4
	mov	r8, #0
	str	r4, [sp, #56]
	lsr	ip, r0, #5
	str	r3, [sp, #60]
	lsl	r0, ip, #4
.L115:
	vld2.8	{d6-d9}, [r6]!
	add	r3, sp, #16
	pld	[r1, #128]
	add	r4, r1, #16
	vld2.8	{d12-d15}, [r7]!
	add	r8, r8, #1
	vmovl.u8 q9, d8
	cmp	r8, ip
	vld2.8	{d0-d3}, [lr]!
	vmovl.u8 q8, d14
	vst1.64	{d0-d3}, [r3:64]
	add	r3, r1, #48
	vmovl.u8 q11, d6
	vldr	d0, [sp, #32]
	vldr	d1, [sp, #40]
	vshll.u16 q10, d16, #3
	vmovl.u8 q14, d0
	vshll.u16 q15, d17, #3
	vshll.u16 q0, d18, #8
	vmovl.u8 q8, d7
	vshll.u16 q9, d19, #8
	vldr	d6, [sp, #32]
	vldr	d7, [sp, #40]
	vmovl.u8 q1, d15
	vmovl.u8 q13, d7
	vand	q3, q9, q12
	vmovl.u8 q2, d9
	vand	q0, q0, q12
	vstr	d6, [sp, #64]
	vstr	d7, [sp, #72]
	vand	q3, q10, q5
	vand	q15, q15, q5
	vorr	q3, q3, q0
	vldr	d0, [sp, #64]
	vldr	d1, [sp, #72]
	vmovl.u8 q10, d12
	vmovl.u8 q9, d13
	vorr	q15, q15, q0
	vshll.u16 q4, d4, #8
	vshll.u16 q6, d2, #3
	vmovl.u16 q0, d28
	vshll.u16 q2, d5, #8
	vshll.u16 q1, d3, #3
	vmovl.u16 q14, d29
	vand	q1, q1, q5
	vand	q2, q2, q12
	vand	q6, q6, q5
	vand	q4, q4, q12
	vshr.u32	q0, q0, #3
	vshr.u32	q14, q14, #3
	vorr	q2, q1, q2
	vldr	d2, [sp, #16]
	vldr	d3, [sp, #24]
	vorr	q4, q6, q4
	vorr	q0, q3, q0
	vmovl.u16 q6, d26
	vshll.u16 q3, d22, #8
	vorr	q14, q15, q14
	vmovl.u16 q13, d27
	vshll.u16 q15, d20, #3
	vmovl.u8 q7, d2
	vand	q3, q3, q12
	vshll.u16 q11, d23, #8
	vshll.u16 q10, d21, #3
	vand	q15, q15, q5
	vmovl.u8 q1, d3
	vshr.u32	q13, q13, #3
	vshr.u32	q6, q6, #3
	vand	q11, q11, q12
	vorr	q15, q15, q3
	vand	q10, q10, q5
	vmovl.u16 q3, d14
	vmovl.u16 q7, d15
	vorr	q6, q4, q6
	vorr	q2, q2, q13
	vshll.u16 q4, d18, #3
	vshll.u16 q13, d16, #8
	vshll.u16 q9, d19, #3
	vshll.u16 q8, d17, #8
	vorr	q10, q10, q11
	vmovl.u16 q11, d2
	vmovl.u16 q1, d3
	vand	q4, q4, q5
	vand	q9, q9, q5
	vand	q13, q13, q12
	vand	q8, q8, q12
	vshr.u32	q3, q3, #3
	vshr.u32	q7, q7, #3
	vorr	q13, q4, q13
	vorr	q8, q9, q8
	vshr.u32	q4, q11, #3
	vshr.u32	q1, q1, #3
	vshl.i32	q0, q0, #16
	vshl.i32	q14, q14, #16
	vorr	q3, q15, q3
	vorr	q10, q10, q7
	vshl.i32	q6, q6, #16
	vshl.i32	q2, q2, #16
	vorr	q13, q13, q4
	vorr	q8, q8, q1
	vorr	q11, q3, q0
	vorr	q10, q10, q14
	vorr	q9, q13, q6
	vorr	q8, q8, q2
	pld	[r1, #144]
	vst1.32	{q11}, [r1]
	vst1.32	{q10}, [r4]
	add	r4, r1, #32
	add	r1, r1, #64
	vst1.32	{q9}, [r4]
	vst1.32	{q8}, [r3]
	bcc	.L115
	ldr	r4, [sp, #56]
	lsls	r1, r0, #1
	ldr	r3, [sp, #60]
	cmp	r9, r0
	add	r2, r2, r1
	add	r3, r3, r1
	add	r4, r4, r0, lsl #2
	add	r1, r1, r5
	beq	.L109
	adds	r1, r1, #2
	adds	r2, r2, #2
	adds	r3, r3, #2
.L114:
	ldrb	r8, [r2, #-2]	@ zero_extendqisi2
	adds	r0, r0, #1
	ldrb	r6, [r3, #-2]	@ zero_extendqisi2
	cmp	r9, r0
	ldrb	r5, [r2, #-1]	@ zero_extendqisi2
	add	r3, r3, #2
	ldrb	r7, [r3, #-3]	@ zero_extendqisi2
	add	r2, r2, #2
	ldrb	ip, [r1, #-2]	@ zero_extendqisi2
	lsl	r8, r8, #3
	ldrb	lr, [r1, #-1]	@ zero_extendqisi2
	lsl	r6, r6, #8
	lsl	r5, r5, #3
	and	r8, r8, #2016
	lsl	r7, r7, #8
	and	r6, r6, #63488
	and	r5, r5, #2016
	and	r7, r7, #63488
	orr	r6, r8, r6
	orr	r7, r7, r5
	orr	r6, r6, ip, lsr #3
	orr	r5, r7, lr, lsr #3
	add	r1, r1, #2
	orr	r5, r6, r5, lsl #16
	str	r5, [r4], #4
	bhi	.L114
.L109:
	ldr	r0, [sp]
	lsls	r3, r0, #31
	bpl	.L107
	ldr	r2, [sp, #8]
	ldr	r5, [sp, #12]
	ldr	r7, [sp, #48]
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldrb	r2, [r7]	@ zero_extendqisi2
	ldr	r0, [sp, #184]
	lsls	r1, r1, #8
	lsls	r3, r3, #3
	and	r1, r1, #63488
	and	r3, r3, #2016
	subs	r0, r0, #1
	orr	r3, r3, r1
	str	r0, [sp, #184]
	orr	r3, r3, r2, lsr #3
	strh	r3, [fp]	@ movhi
	bpl	.L119
.L132:
	add	sp, sp, #84
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L134:
	.align	3
.L133:
	.word	2016
	.word	2016
	.word	2016
	.word	2016
.L110:
	adds	r1, r5, #2
	adds	r2, r2, #2
	adds	r3, r3, #2
.L117:
	ldrb	r8, [r2, #-2]	@ zero_extendqisi2
	adds	r0, r0, #1
	ldrb	r6, [r3, #-2]	@ zero_extendqisi2
	cmp	r0, r9
	ldrb	ip, [r2, #-1]	@ zero_extendqisi2
	add	r3, r3, #2
	ldrb	r7, [r3, #-3]	@ zero_extendqisi2
	add	r2, r2, #2
	ldrb	lr, [r1, #-2]	@ zero_extendqisi2
	lsl	r8, r8, #3
	ldrb	r5, [r1, #-1]	@ zero_extendqisi2
	lsl	r6, r6, #8
	lsl	ip, ip, #3
	and	r8, r8, #2016
	lsl	r7, r7, #8
	and	r6, r6, #63488
	and	ip, ip, #2016
	and	r7, r7, #63488
	orr	r6, r8, r6
	orr	r7, ip, r7
	orr	r6, r6, lr, lsr #3
	orr	r5, r7, r5, lsr #3
	add	r1, r1, #2
	orr	r5, r6, r5, lsl #16
	str	r5, [r4], #4
	bne	.L117
	b	.L109
.L120:
	str	r5, [sp, #48]
	mov	fp, r4
	str	r2, [sp, #12]
	str	r3, [sp, #8]
	b	.L109
	.size	rgb_rgb_565_convert, .-rgb_rgb_565_convert
	.section	.text.rgb_rgb_565D_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	rgb_rgb_565D_convert, %function
rgb_rgb_565D_convert:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	rsb	r2, r3, r2, lsl #2
	ldr	r4, [r0, #148]
	sub	sp, sp, #52
	ldr	r5, .L155
	and	r4, r4, #3
	ldr	r7, [r0, #336]
	ldr	r0, [r0, #120]
.LPIC17:
	add	r5, pc
	str	r3, [sp, #36]
	ldr	r10, [r5, r4, lsl #2]
	str	r2, [sp, #44]
	str	r1, [sp, #40]
	str	r0, [sp, #32]
.L136:
	ldr	r2, [sp, #88]
	subs	r2, r2, #1
	str	r2, [sp, #88]
	bmi	.L154
.L142:
	ldr	r3, [sp, #40]
	ldr	r0, [sp, #36]
	ldr	r2, [sp, #44]
	ldr	r5, [sp, #36]
	add	r0, r0, r2
	ldmia	r3, {r1, r2, r3}
	ldr	r4, [r5], #4
	ldr	r1, [r1, r0]
	ldr	r2, [r2, r0]
	ldr	r3, [r3, r0]
	lsls	r0, r4, #30
	str	r5, [sp, #36]
	str	r4, [sp, #16]
	str	r1, [sp, #20]
	str	r2, [sp, #24]
	str	r3, [sp, #28]
	beq	.L137
	uxtb	r3, r10
	mov	r0, r1
	ldrb	r1, [r2]	@ zero_extendqisi2
	mov	r5, r2
	ldr	r4, [sp, #32]
	adds	r5, r5, #1
	ldrb	r2, [r0]	@ zero_extendqisi2
	add	r0, r7, r3, lsr #1
	add	r3, r3, r7
	str	r5, [sp, #24]
	ldrb	r1, [r0, r1]	@ zero_extendqisi2
	subs	r4, r4, #1
	ldr	r0, [sp, #20]
	str	r4, [sp, #32]
	ldr	r4, [sp, #28]
	adds	r0, r0, #1
	lsls	r1, r1, #3
	str	r0, [sp, #20]
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	and	r1, r1, #2016
	ldrb	r2, [r4]	@ zero_extendqisi2
	adds	r4, r4, #1
	ldr	r5, [sp, #16]
	str	r4, [sp, #28]
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	lsls	r0, r0, #8
	and	r3, r0, #63488
	orrs	r3, r3, r1
	orr	r3, r3, r2, lsr #3
	strh	r3, [r5], #2	@ movhi
	str	r5, [sp, #16]
.L137:
	ldr	r0, [sp, #32]
	lsrs	r0, r0, #1
	str	r0, [sp, #12]
	beq	.L138
	ldr	r1, [sp, #20]
	mov	fp, #0
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	ldr	r4, [sp, #16]
	adds	r1, r1, #2
	adds	r2, r2, #2
	adds	r3, r3, #2
	str	r4, [sp, #4]
.L140:
	ror	r5, r10, #8
	ldrb	r0, [r1, #-1]	@ zero_extendqisi2
	uxtb	r10, r10
	ldrb	r9, [r2, #-2]	@ zero_extendqisi2
	uxtb	r8, r5
	ldrb	r6, [r1, #-2]	@ zero_extendqisi2
	ldrb	ip, [r2, #-1]	@ zero_extendqisi2
	add	fp, fp, #1
	add	r4, r7, r8
	add	r8, r7, r8, lsr #1
	ldrb	lr, [r4, r0]	@ zero_extendqisi2
	add	r0, r7, r10, lsr #1
	ldrb	ip, [r8, ip]	@ zero_extendqisi2
	adds	r2, r2, #2
	str	r0, [sp, #8]
	add	r0, r7, r10
	ror	r10, r5, #8
	ldr	r5, [sp, #8]
	ldrb	r6, [r0, r6]	@ zero_extendqisi2
	lsl	lr, lr, #8
	ldrb	r8, [r3, #-1]	@ zero_extendqisi2
	lsl	ip, ip, #3
	ldrb	r9, [r5, r9]	@ zero_extendqisi2
	and	lr, lr, #63488
	ldrb	r5, [r3, #-2]	@ zero_extendqisi2
	and	ip, ip, #2016
	ldrb	r4, [r4, r8]	@ zero_extendqisi2
	lsls	r6, r6, #8
	adds	r1, r1, #2
	ldrb	r0, [r0, r5]	@ zero_extendqisi2
	lsl	r9, r9, #3
	and	r6, r6, #63488
	and	r9, r9, #2016
	orr	r4, lr, r4, lsr #3
	orr	r9, r6, r9
	orr	r0, r9, r0, lsr #3
	orr	r4, r4, ip
	adds	r3, r3, #2
	orr	r4, r0, r4, lsl #16
	ldr	r0, [sp, #4]
	str	r4, [r0], #4
	ldr	r4, [sp, #12]
	str	r0, [sp, #4]
	cmp	fp, r4
	bne	.L140
	ldr	r5, [sp, #16]
	lsl	r3, fp, #1
	ldr	r0, [sp, #20]
	ldr	r2, [sp, #24]
	ldr	r4, [sp, #28]
	add	r5, r5, fp, lsl #2
	add	r0, r0, r3
	add	r2, r2, r3
	str	r0, [sp, #20]
	add	r4, r4, r3
	str	r5, [sp, #16]
	str	r2, [sp, #24]
	str	r4, [sp, #28]
.L138:
	ldr	r5, [sp, #32]
	lsls	r3, r5, #31
	bpl	.L136
	ldr	r0, [sp, #20]
	uxtb	r3, r10
	ldr	r4, [sp, #24]
	ldr	r5, [sp, #28]
	ldrb	r1, [r0]	@ zero_extendqisi2
	add	r0, r7, r3, lsr #1
	ldrb	r2, [r4]	@ zero_extendqisi2
	add	r3, r3, r7
	ldrb	r1, [r3, r1]	@ zero_extendqisi2
	ldrb	r0, [r0, r2]	@ zero_extendqisi2
	ldrb	r2, [r5]	@ zero_extendqisi2
	lsls	r1, r1, #8
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	lsls	r0, r0, #3
	and	r1, r1, #63488
	and	r3, r0, #2016
	ldr	r0, [sp, #16]
	orrs	r3, r3, r1
	orr	r3, r3, r2, lsr #3
	ldr	r2, [sp, #88]
	strh	r3, [r0]	@ movhi
	subs	r2, r2, #1
	str	r2, [sp, #88]
	bpl	.L142
.L154:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L156:
	.align	2
.L155:
	.word	.LANCHOR0-(.LPIC17+4)
	.size	rgb_rgb_565D_convert, .-rgb_rgb_565D_convert
	.section	.text.null_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	null_convert, %function
null_convert:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	ip, r1
	ldr	r5, [sp, #28]
	ldr	r4, [r0, #40]
	subs	r9, r5, #1
	ldr	r1, [r0, #120]
	bmi	.L157
	sub	r8, r3, r2, lsl #2
	lsls	r7, r2, #2
.L159:
	cmp	r4, #0
	ble	.L162
	sub	lr, ip, #4
	movs	r6, #0
.L165:
	ldr	r3, [lr, #4]!
	ldr	r2, [r8, r7]
	ldr	r3, [r3, r7]
	add	r2, r2, r6
	adds	r5, r3, r1
	cbz	r1, .L163
.L164:
	ldrb	r0, [r3], #1	@ zero_extendqisi2
	cmp	r3, r5
	strb	r0, [r2]
	add	r2, r2, r4
	bne	.L164
.L163:
	adds	r6, r6, #1
	cmp	r6, r4
	bne	.L165
.L162:
	add	r9, r9, #-1
	adds	r7, r7, #4
	cmp	r9, #-1
	bne	.L159
.L157:
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	null_convert, .-null_convert
	.section	.text.gray_rgb_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_rgb_convert, %function
gray_rgb_convert:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	rsb	r2, r3, r2, lsl #2
	ldr	r4, [r0, #120]
	sub	sp, sp, #36
	mov	r9, r1
	str	r2, [sp, #8]
	ldr	r10, [sp, #72]
	lsrs	r0, r4, #4
	add	r2, r4, r4, lsl #1
	lsls	r6, r0, #4
	str	r2, [sp, #12]
	subs	r2, r0, #3
	str	r0, [sp, #4]
	bic	r2, r2, #1
	add	r0, r6, r0, lsl #5
	str	r6, [sp]
	adds	r2, r2, #2
	adds	r6, r6, #1
	str	r2, [sp, #16]
	str	r0, [sp, #20]
	str	r6, [sp, #28]
.L173:
	subs	r10, r10, #1
	bmi	.L196
.L188:
	ldr	r0, [sp, #8]
	ldr	r1, [r9]
	add	r0, r0, r3
	ldr	r2, [r3], #4
	ldr	r1, [r1, r0]
	cmp	r4, #0
	beq	.L173
	ldr	r0, [sp, #12]
	adds	r5, r1, r4
	add	r0, r0, r2
	cmp	r1, r0
	it	cc
	cmpcc	r2, r5
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	cmp	r4, #15
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	beq	.L187
	ldr	r6, [sp]
	cmp	r6, #0
	beq	.L177
	ldr	r0, [sp, #4]
	cmp	r0, #2
	bls	.L190
	mov	r6, r2
	mov	r0, r1
	movs	r7, #0
	str	r4, [sp, #24]
.L183:
	mov	r4, r0
	mov	r5, r6
	vld1.8	{q8}, [r0]
	adds	r7, r7, #2
	pld	[r0, #112]
	add	fp, r6, #48
	vld1.8	{q10}, [r4]!
	add	lr, r6, #72
	add	r8, r6, #96
	add	ip, r0, #32
	vld1.8	{q9}, [r0]
	mov	r6, r8
	mov	r0, ip
	vst3.8	{d16, d18, d20}, [r5]!
	vst3.8	{d17, d19, d21}, [r5]
	vld1.8	{q8}, [r4]
	vld1.8	{q9}, [r4]
	vld1.8	{q10}, [r4]
	ldr	r4, [sp, #16]
	vst3.8	{d16, d18, d20}, [fp]
	cmp	r7, r4
	vst3.8	{d17, d19, d21}, [lr]
	bne	.L183
	ldr	r4, [sp, #24]
	ldr	r6, [sp, #4]
.L185:
	adds	r7, r7, #1
	mov	r0, r8
	cmp	r6, r7
	vld1.8	{q8}, [ip]
	add	r8, r8, #48
	vld1.8	{q9}, [ip]
	vld1.8	{q10}, [ip]!
	vst3.8	{d16, d18, d20}, [r0]!
	vst3.8	{d17, d19, d21}, [r0]
	bhi	.L185
	ldr	r0, [sp]
	ldr	r6, [sp, #20]
	cmp	r4, r0
	add	r6, r6, r2
	beq	.L173
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	adds	r0, r6, #3
	ldr	r5, [sp, #28]
	strb	r7, [r6, #2]
	strb	r7, [r6, #1]
	cmp	r4, r5
	ldr	r6, [sp, #20]
	strb	r7, [r2, r6]
	bls	.L173
.L189:
	ldrb	r2, [r1, r5]	@ zero_extendqisi2
	adds	r6, r5, #1
	cmp	r4, r6
	strb	r2, [r0, #2]
	strb	r2, [r0, #1]
	strb	r2, [r0]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	adds	r6, r5, #2
	cmp	r4, r6
	strb	r2, [r0, #5]
	strb	r2, [r0, #4]
	strb	r2, [r0, #3]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	adds	r6, r5, #3
	cmp	r4, r6
	strb	r2, [r0, #8]
	strb	r2, [r0, #7]
	strb	r2, [r0, #6]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	adds	r6, r5, #4
	cmp	r4, r6
	strb	r2, [r0, #11]
	strb	r2, [r0, #10]
	strb	r2, [r0, #9]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	adds	r6, r5, #5
	cmp	r4, r6
	strb	r2, [r0, #14]
	strb	r2, [r0, #13]
	strb	r2, [r0, #12]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	adds	r6, r5, #6
	cmp	r4, r6
	strb	r2, [r0, #17]
	strb	r2, [r0, #16]
	strb	r2, [r0, #15]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	adds	r6, r5, #7
	cmp	r4, r6
	strb	r2, [r0, #20]
	strb	r2, [r0, #19]
	strb	r2, [r0, #18]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	add	r6, r5, #8
	cmp	r4, r6
	strb	r2, [r0, #23]
	strb	r2, [r0, #22]
	strb	r2, [r0, #21]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	add	r6, r5, #9
	cmp	r4, r6
	strb	r2, [r0, #26]
	strb	r2, [r0, #25]
	strb	r2, [r0, #24]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	add	r6, r5, #10
	cmp	r4, r6
	strb	r2, [r0, #29]
	strb	r2, [r0, #28]
	strb	r2, [r0, #27]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	add	r6, r5, #11
	cmp	r4, r6
	strb	r2, [r0, #32]
	strb	r2, [r0, #31]
	strb	r2, [r0, #30]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	add	r6, r5, #12
	cmp	r4, r6
	strb	r2, [r0, #35]
	strb	r2, [r0, #34]
	strb	r2, [r0, #33]
	bls	.L173
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	adds	r5, r5, #13
	cmp	r4, r5
	strb	r2, [r0, #38]
	strb	r2, [r0, #37]
	strb	r2, [r0, #36]
	bls	.L173
	ldrb	r2, [r1, r5]	@ zero_extendqisi2
	subs	r10, r10, #1
	strb	r2, [r0, #41]
	strb	r2, [r0, #40]
	strb	r2, [r0, #39]
	bpl	.L188
.L196:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L187:
	ldrb	r0, [r1], #1	@ zero_extendqisi2
	cmp	r1, r5
	strb	r0, [r2, #2]
	strb	r0, [r2, #1]
	strb	r0, [r2], #3
	beq	.L173
	ldrb	r0, [r1], #1	@ zero_extendqisi2
	cmp	r1, r5
	strb	r0, [r2, #2]
	strb	r0, [r2, #1]
	strb	r0, [r2], #3
	bne	.L187
	b	.L173
.L177:
	ldrb	r6, [r1]	@ zero_extendqisi2
	mov	r0, r2
	movs	r5, #1
	strb	r6, [r2, #2]
	strb	r6, [r2, #1]
	strb	r6, [r0], #3
	b	.L189
.L190:
	mov	r8, r2
	mov	ip, r1
	movs	r7, #0
	ldr	r6, [sp, #4]
	b	.L185
	.size	gray_rgb_convert, .-gray_rgb_convert
	.section	.text.gray_rgba_8888_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_rgba_8888_convert, %function
gray_rgba_8888_convert:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, [r0, #120]
	rsb	r2, r3, r2, lsl #2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	mov	fp, r1
	movs	r4, #255
	lsrs	r1, r0, #4
	str	r2, [sp, #12]
	lsls	r2, r0, #2
	ldr	r10, [sp, #80]
	lsls	r5, r1, #4
	lsl	ip, r1, #6
	str	r2, [sp, #16]
	subs	r2, r1, #3
	str	r5, [sp, #4]
	bic	r2, r2, #1
	adds	r5, r5, #1
	adds	r2, r2, #2
	str	r1, [sp, #8]
	str	r2, [sp, #20]
	mov	r2, r10
	mov	r10, fp
	mov	fp, r2
	str	ip, [sp, #24]
	str	r5, [sp, #36]
.L198:
	subs	fp, fp, #1
	bmi	.L220
.L213:
	ldr	r5, [sp, #12]
	ldr	r1, [r10]
	add	r5, r5, r3
	ldr	r2, [r3], #4
	ldr	r1, [r1, r5]
	cmp	r0, #0
	beq	.L198
	ldr	r5, [sp, #16]
	adds	r6, r1, r0
	add	r5, r5, r2
	cmp	r1, r5
	it	cc
	cmpcc	r2, r6
	ite	cs
	movcs	r5, #1
	movcc	r5, #0
	cmp	r0, #15
	ite	ls
	movls	r5, #0
	andhi	r5, r5, #1
	cmp	r5, #0
	beq	.L212
	ldr	r5, [sp, #4]
	cmp	r5, #0
	beq	.L202
	ldr	r5, [sp, #8]
	cmp	r5, #2
	bls	.L215
	mov	r7, r2
	mov	r5, r1
	mov	lr, #0
	str	r0, [sp, #28]
	str	r1, [sp, #32]
.L208:
	vmov.i32	q11, #4294967295  @ v16qi
	mov	r1, r5
	mov	r0, r7
	add	ip, r7, #64
	vld1.8	{q10}, [r1]!
	add	lr, lr, #2
	pld	[r5, #112]
	add	r6, r7, #96
	vld1.8	{q8}, [r5]
	add	r8, r5, #32
	add	r9, r7, #128
	vld1.8	{q9}, [r5]
	mov	r7, r9
	mov	r5, r8
	vst4.8	{d16, d18, d20, d22}, [r0]!
	vst4.8	{d17, d19, d21, d23}, [r0]
	vld1.8	{q8}, [r1]
	vld1.8	{q9}, [r1]
	vld1.8	{q10}, [r1]
	vst4.8	{d16, d18, d20, d22}, [ip]
	ldr	ip, [sp, #20]
	cmp	lr, ip
	vst4.8	{d17, d19, d21, d23}, [r6]
	bne	.L208
	ldr	r0, [sp, #28]
	ldr	r1, [sp, #32]
.L210:
	vmov.i32	q11, #4294967295  @ v16qi
	mov	r5, r9
	vld1.8	{q8}, [r8]
	add	lr, lr, #1
	add	r9, r9, #64
	vld1.8	{q9}, [r8]
	vld1.8	{q10}, [r8]!
	vst4.8	{d16, d18, d20, d22}, [r5]!
	vst4.8	{d17, d19, d21, d23}, [r5]
	ldr	r5, [sp, #8]
	cmp	r5, lr
	bhi	.L210
	ldr	r5, [sp, #4]
	ldr	r7, [sp, #24]
	cmp	r0, r5
	add	r7, r7, r2
	beq	.L198
	ldr	r6, [sp, #36]
	ldrb	lr, [r1, r5]	@ zero_extendqisi2
	adds	r5, r7, #4
	ldr	ip, [sp, #24]
	cmp	r0, r6
	strb	lr, [r7, #2]
	strb	lr, [r7, #1]
	strb	lr, [r2, ip]
	strb	r4, [r7, #3]
	bls	.L198
.L214:
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	adds	r7, r6, #1
	cmp	r0, r7
	strb	r4, [r5, #3]
	strb	r2, [r5, #2]
	strb	r2, [r5, #1]
	strb	r2, [r5]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	adds	r7, r6, #2
	cmp	r0, r7
	strb	r4, [r5, #7]
	strb	r2, [r5, #6]
	strb	r2, [r5, #5]
	strb	r2, [r5, #4]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	adds	r7, r6, #3
	cmp	r0, r7
	strb	r4, [r5, #11]
	strb	r2, [r5, #10]
	strb	r2, [r5, #9]
	strb	r2, [r5, #8]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	adds	r7, r6, #4
	cmp	r0, r7
	strb	r4, [r5, #15]
	strb	r2, [r5, #14]
	strb	r2, [r5, #13]
	strb	r2, [r5, #12]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	adds	r7, r6, #5
	cmp	r0, r7
	strb	r4, [r5, #19]
	strb	r2, [r5, #18]
	strb	r2, [r5, #17]
	strb	r2, [r5, #16]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	adds	r7, r6, #6
	cmp	r0, r7
	strb	r4, [r5, #23]
	strb	r2, [r5, #22]
	strb	r2, [r5, #21]
	strb	r2, [r5, #20]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	adds	r7, r6, #7
	cmp	r0, r7
	strb	r4, [r5, #27]
	strb	r2, [r5, #26]
	strb	r2, [r5, #25]
	strb	r2, [r5, #24]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	add	r7, r6, #8
	cmp	r0, r7
	strb	r4, [r5, #31]
	strb	r2, [r5, #30]
	strb	r2, [r5, #29]
	strb	r2, [r5, #28]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	add	r7, r6, #9
	cmp	r0, r7
	strb	r4, [r5, #35]
	strb	r2, [r5, #34]
	strb	r2, [r5, #33]
	strb	r2, [r5, #32]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	add	r7, r6, #10
	cmp	r0, r7
	strb	r4, [r5, #39]
	strb	r2, [r5, #38]
	strb	r2, [r5, #37]
	strb	r2, [r5, #36]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	add	r7, r6, #11
	cmp	r0, r7
	strb	r4, [r5, #43]
	strb	r2, [r5, #42]
	strb	r2, [r5, #41]
	strb	r2, [r5, #40]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	add	r7, r6, #12
	cmp	r0, r7
	strb	r4, [r5, #47]
	strb	r2, [r5, #46]
	strb	r2, [r5, #45]
	strb	r2, [r5, #44]
	bls	.L198
	ldrb	r2, [r1, r7]	@ zero_extendqisi2
	adds	r6, r6, #13
	cmp	r0, r6
	strb	r4, [r5, #51]
	strb	r2, [r5, #50]
	strb	r2, [r5, #49]
	strb	r2, [r5, #48]
	bls	.L198
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	subs	fp, fp, #1
	strb	r4, [r5, #55]
	strb	r2, [r5, #54]
	strb	r2, [r5, #53]
	strb	r2, [r5, #52]
	bpl	.L213
.L220:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L212:
	ldrb	r5, [r1], #1	@ zero_extendqisi2
	adds	r2, r2, #4
	strb	r4, [r2, #-1]
	cmp	r1, r6
	strb	r5, [r2, #-2]
	strb	r5, [r2, #-3]
	strb	r5, [r2, #-4]
	bne	.L212
	b	.L198
.L202:
	ldrb	r7, [r1]	@ zero_extendqisi2
	adds	r5, r2, #4
	strb	r4, [r2, #3]
	movs	r6, #1
	strb	r7, [r2, #2]
	strb	r7, [r2, #1]
	strb	r7, [r2]
	b	.L214
.L215:
	mov	r9, r2
	mov	r8, r1
	mov	lr, #0
	b	.L210
	.size	gray_rgba_8888_convert, .-gray_rgba_8888_convert
	.section	.text.gray_rgb_565_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_rgb_565_convert, %function
gray_rgb_565_convert:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	ip, [r0, #120]
	vmov.i32	q11, #63488  @ v4si
	rsb	r2, r3, r2, lsl #2
	vldr	d20, .L251
	vldr	d21, .L251+8
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #28
	str	r1, [sp, #16]
	str	r2, [sp, #12]
	str	r3, [sp]
.L222:
	ldr	r2, [sp, #128]
	subs	r2, r2, #1
	str	r2, [sp, #128]
	bmi	.L250
.L236:
	ldr	r1, [sp, #16]
	ldr	r2, [sp]
	ldr	r3, [r1]
	ldr	r1, [sp, #12]
	add	r2, r2, r1
	ldr	r1, [sp]
	ldr	r6, [r3, r2]
	ldr	r0, [r1], #4
	lsls	r3, r0, #30
	str	r1, [sp]
	beq	.L223
	ldrb	r3, [r6]	@ zero_extendqisi2
	add	ip, ip, #-1
	adds	r6, r6, #1
	lsls	r1, r3, #8
	lsls	r2, r3, #3
	and	r1, r1, #63488
	and	r2, r2, #2016
	orrs	r2, r2, r1
	orr	r3, r2, r3, lsr #3
	strh	r3, [r0], #2	@ movhi
.L223:
	lsrs	r2, ip, #1
	beq	.L237
	add	r3, r6, r2, lsl #1
	add	r1, r0, r2, lsl #2
	cmp	r6, r1
	it	cc
	cmpcc	r0, r3
	str	r3, [sp, #4]
	ite	cs
	movcs	r5, #1
	movcc	r5, #0
	cmp	r2, #15
	ite	ls
	movls	r5, #0
	andhi	r5, r5, #1
	str	r1, [sp, #8]
	cmp	r5, #0
	beq	.L225
	lsr	r4, ip, #5
	mov	r5, r6
	mov	r1, r0
	lsls	r3, r4, #4
	mov	r9, #0
.L230:
	vld2.8	{d16-d19}, [r5]!
	add	r9, r9, #1
	add	r8, r1, #16
	add	lr, r1, #32
	vmovl.u8 q14, d18
	add	r7, r1, #48
	vmovl.u8 q13, d19
	cmp	r9, r4
	vmovl.u8 q12, d16
	vshll.u16 q5, d28, #3
	vshll.u16 q4, d28, #8
	vshll.u16 q0, d29, #3
	vshll.u16 q1, d29, #8
	vshll.u16 q7, d26, #3
	vshll.u16 q6, d26, #8
	vshll.u16 q2, d27, #3
	vshll.u16 q3, d27, #8
	vmovl.u16 q15, d28
	vmovl.u16 q9, d26
	vand	q5, q5, q10
	vand	q0, q0, q10
	vand	q7, q7, q10
	vand	q2, q2, q10
	vmovl.u16 q14, d29
	vmovl.u16 q13, d27
	vand	q4, q4, q11
	vand	q1, q1, q11
	vand	q6, q6, q11
	vand	q3, q3, q11
	vmovl.u8 q8, d17
	vorr	q4, q5, q4
	vorr	q1, q0, q1
	vshll.u16 q5, d24, #8
	vshll.u16 q0, d24, #3
	vorr	q6, q7, q6
	vorr	q3, q2, q3
	vshll.u16 q7, d25, #8
	vshll.u16 q2, d25, #3
	vshr.u32	q14, q14, #3
	vshr.u32	q9, q9, #3
	vshr.u32	q13, q13, #3
	vshr.u32	q15, q15, #3
	vand	q5, q5, q11
	vand	q7, q7, q11
	vand	q0, q0, q10
	vand	q2, q2, q10
	vorr	q15, q4, q15
	vorr	q1, q1, q14
	vshll.u16 q4, d16, #3
	vshll.u16 q14, d16, #8
	vorr	q6, q6, q9
	vorr	q3, q3, q13
	vshll.u16 q9, d17, #3
	vshll.u16 q13, d17, #8
	vorr	q0, q5, q0
	vorr	q2, q7, q2
	vmovl.u16 q5, d24
	vmovl.u16 q7, d16
	vmovl.u16 q12, d25
	vmovl.u16 q8, d17
	vand	q14, q14, q11
	vand	q9, q9, q10
	vand	q4, q4, q10
	vand	q13, q13, q11
	vorr	q4, q4, q14
	vorr	q13, q9, q13
	vshr.u32	q5, q5, #3
	vshr.u32	q12, q12, #3
	vshr.u32	q7, q7, #3
	vshr.u32	q8, q8, #3
	vshl.i32	q15, q15, #16
	vorr	q8, q13, q8
	vorr	q5, q0, q5
	vshl.i32	q1, q1, #16
	vorr	q12, q2, q12
	vshl.i32	q6, q6, #16
	vorr	q4, q4, q7
	vshl.i32	q14, q3, #16
	vorr	q13, q5, q15
	vorr	q12, q12, q1
	vorr	q9, q4, q6
	vorr	q8, q8, q14
	pld	[r1, #128]
	pld	[r1, #144]
	vst1.32	{q13}, [r1]
	add	r1, r1, #64
	vst1.32	{q12}, [r8]
	vst1.32	{q9}, [lr]
	vst1.32	{q8}, [r7]
	bcc	.L230
	add	r6, r6, r3, lsl #1
	cmp	r2, r3
	add	r0, r0, r3, lsl #2
	it	ne
	addne	r6, r6, #2
	beq	.L224
.L229:
	ldrb	r4, [r6, #-2]	@ zero_extendqisi2
	adds	r3, r3, #1
	ldrb	r1, [r6, #-1]	@ zero_extendqisi2
	cmp	r2, r3
	add	r6, r6, #2
	lsl	r8, r4, #3
	lsl	r7, r4, #8
	lsl	lr, r1, #3
	lsl	r5, r1, #8
	and	r8, r8, #2016
	and	r7, r7, #63488
	and	lr, lr, #2016
	and	r5, r5, #63488
	orr	r7, r8, r7
	orr	r5, lr, r5
	orr	r4, r7, r4, lsr #3
	orr	r1, r5, r1, lsr #3
	orr	r1, r4, r1, lsl #16
	str	r1, [r0], #4
	bhi	.L229
.L224:
	tst	ip, #1
	beq	.L222
	ldr	r2, [sp, #4]
	ldrb	r3, [r2]	@ zero_extendqisi2
	lsls	r1, r3, #8
	lsls	r2, r3, #3
	and	r1, r1, #63488
	and	r2, r2, #2016
	orrs	r2, r2, r1
	ldr	r1, [sp, #8]
	orr	r3, r2, r3, lsr #3
	ldr	r2, [sp, #128]
	strh	r3, [r1]	@ movhi
	subs	r2, r2, #1
	str	r2, [sp, #128]
	bpl	.L236
.L250:
	add	sp, sp, #28
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L252:
	.align	3
.L251:
	.word	2016
	.word	2016
	.word	2016
	.word	2016
.L225:
	cmp	r2, #8
	sub	r8, r2, #7
	bls	.L231
	add	r1, r0, #32
	add	r3, r6, #16
	adds	r4, r6, #1
	str	ip, [sp, #20]
.L232:
	ldrb	r6, [r3, #-16]	@ zero_extendqisi2
	add	ip, r5, #9
	ldrb	r0, [r4]	@ zero_extendqisi2
	cmp	r8, ip
	pld	[r3, #2]
	add	r5, r5, #8
	pld	[r3, #3]
	add	r4, r4, #16
	lsl	r10, r6, #3
	lsl	lr, r6, #8
	lsl	r9, r0, #3
	lsl	r7, r0, #8
	pld	[r1, #4]
	and	r10, r10, #2016
	and	r9, r9, #2016
	and	lr, lr, #63488
	and	r7, r7, #63488
	orr	lr, r10, lr
	orr	r7, r9, r7
	orr	r6, lr, r6, lsr #3
	orr	r0, r7, r0, lsr #3
	orr	r0, r6, r0, lsl #16
	mov	r6, r3
	add	r3, r3, #16
	str	r0, [r1, #-32]
	mov	r0, r1
	ldrb	lr, [r3, #-30]	@ zero_extendqisi2
	add	r1, r1, #32
	ldrb	r7, [r4, #-14]	@ zero_extendqisi2
	lsl	fp, lr, #8
	lsl	r10, lr, #3
	lsl	r9, r7, #8
	and	r10, r10, #2016
	and	fp, fp, #63488
	and	r9, r9, #63488
	orr	fp, fp, r10
	lsl	r10, r7, #3
	orr	lr, fp, lr, lsr #3
	and	r10, r10, #2016
	orr	r9, r9, r10
	orr	r7, r9, r7, lsr #3
	orr	r7, lr, r7, lsl #16
	str	r7, [r1, #-60]
	ldrb	lr, [r3, #-28]	@ zero_extendqisi2
	ldrb	r7, [r4, #-12]	@ zero_extendqisi2
	lsl	fp, lr, #8
	lsl	r10, lr, #3
	lsl	r9, r7, #8
	and	r10, r10, #2016
	and	fp, fp, #63488
	and	r9, r9, #63488
	orr	fp, fp, r10
	lsl	r10, r7, #3
	orr	lr, fp, lr, lsr #3
	and	r10, r10, #2016
	orr	r9, r9, r10
	orr	r7, r9, r7, lsr #3
	orr	r7, lr, r7, lsl #16
	str	r7, [r1, #-56]
	ldrb	lr, [r3, #-26]	@ zero_extendqisi2
	ldrb	r7, [r4, #-10]	@ zero_extendqisi2
	lsl	fp, lr, #8
	lsl	r10, lr, #3
	lsl	r9, r7, #8
	and	r10, r10, #2016
	and	fp, fp, #63488
	and	r9, r9, #63488
	orr	fp, fp, r10
	lsl	r10, r7, #3
	orr	lr, fp, lr, lsr #3
	and	r10, r10, #2016
	orr	r9, r9, r10
	orr	r7, r9, r7, lsr #3
	orr	r7, lr, r7, lsl #16
	str	r7, [r1, #-52]
	ldrb	lr, [r3, #-24]	@ zero_extendqisi2
	ldrb	r7, [r4, #-8]	@ zero_extendqisi2
	lsl	fp, lr, #8
	lsl	r10, lr, #3
	lsl	r9, r7, #8
	and	r10, r10, #2016
	and	fp, fp, #63488
	and	r9, r9, #63488
	orr	fp, fp, r10
	lsl	r10, r7, #3
	orr	lr, fp, lr, lsr #3
	and	r10, r10, #2016
	orr	r9, r9, r10
	orr	r7, r9, r7, lsr #3
	orr	r7, lr, r7, lsl #16
	str	r7, [r1, #-48]
	ldrb	lr, [r3, #-22]	@ zero_extendqisi2
	ldrb	r7, [r4, #-6]	@ zero_extendqisi2
	lsl	fp, lr, #8
	lsl	r10, lr, #3
	lsl	r9, r7, #8
	and	r10, r10, #2016
	and	fp, fp, #63488
	and	r9, r9, #63488
	orr	fp, fp, r10
	lsl	r10, r7, #3
	orr	lr, fp, lr, lsr #3
	and	r10, r10, #2016
	orr	r9, r9, r10
	orr	r7, r9, r7, lsr #3
	orr	r7, lr, r7, lsl #16
	str	r7, [r1, #-44]
	ldrb	lr, [r3, #-20]	@ zero_extendqisi2
	ldrb	r7, [r4, #-4]	@ zero_extendqisi2
	lsl	fp, lr, #8
	lsl	r10, lr, #3
	lsl	r9, r7, #8
	and	r10, r10, #2016
	and	fp, fp, #63488
	and	r9, r9, #63488
	orr	fp, fp, r10
	lsl	r10, r7, #3
	orr	lr, fp, lr, lsr #3
	and	r10, r10, #2016
	orr	r9, r9, r10
	orr	r7, r9, r7, lsr #3
	orr	r7, lr, r7, lsl #16
	str	r7, [r1, #-40]
	ldrb	lr, [r3, #-18]	@ zero_extendqisi2
	ldrb	r7, [r4, #-2]	@ zero_extendqisi2
	lsl	fp, lr, #8
	lsl	r10, lr, #3
	lsl	r9, r7, #8
	and	r10, r10, #2016
	and	fp, fp, #63488
	and	r9, r9, #63488
	orr	fp, fp, r10
	lsl	r10, r7, #3
	orr	lr, fp, lr, lsr #3
	and	r10, r10, #2016
	orr	r9, r9, r10
	orr	r7, r9, r7, lsr #3
	orr	r7, lr, r7, lsl #16
	str	r7, [r1, #-36]
	bhi	.L232
	ldr	ip, [sp, #20]
.L231:
	adds	r6, r6, #2
.L234:
	ldrb	r1, [r6, #-2]	@ zero_extendqisi2
	adds	r5, r5, #1
	ldrb	r3, [r6, #-1]	@ zero_extendqisi2
	cmp	r2, r5
	add	r6, r6, #2
	lsl	r8, r1, #8
	lsl	r7, r1, #3
	lsl	lr, r3, #8
	lsl	r4, r3, #3
	and	r8, r8, #63488
	and	r7, r7, #2016
	and	lr, lr, #63488
	and	r4, r4, #2016
	orr	r7, r8, r7
	orr	r4, lr, r4
	orr	r1, r7, r1, lsr #3
	orr	r3, r4, r3, lsr #3
	orr	r3, r1, r3, lsl #16
	str	r3, [r0], #4
	bhi	.L234
	b	.L224
.L237:
	str	r0, [sp, #8]
	str	r6, [sp, #4]
	b	.L224
	.size	gray_rgb_565_convert, .-gray_rgb_565_convert
	.section	.text.gray_rgb_565D_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gray_rgb_565D_convert, %function
gray_rgb_565D_convert:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	rsb	r2, r3, r2, lsl #2
	ldr	r4, [r0, #148]
	sub	sp, sp, #20
	ldr	r6, .L273
	and	r4, r4, #3
	ldr	r5, [r0, #336]
	ldr	r0, [r0, #120]
.LPIC18:
	add	r6, pc
	str	r3, [sp, #4]
	ldr	r4, [r6, r4, lsl #2]
	str	r2, [sp, #8]
	str	r1, [sp, #12]
	str	r0, [sp]
.L254:
	ldr	r1, [sp, #56]
	subs	r1, r1, #1
	str	r1, [sp, #56]
	bmi	.L272
.L260:
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #4]
	ldr	r3, [r1]
	ldr	r1, [sp, #8]
	add	r2, r2, r1
	ldr	r1, [sp, #4]
	ldr	fp, [r3, r2]
	ldr	r10, [r1], #4
	tst	r10, #3
	str	r1, [sp, #4]
	beq	.L255
	ldrb	r3, [fp]	@ zero_extendqisi2
	uxtab	r2, r5, r4
	ldr	r1, [sp]
	add	fp, fp, #1
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	subs	r1, r1, #1
	str	r1, [sp]
	lsls	r2, r3, #3
	lsls	r1, r3, #8
	and	r2, r2, #2016
	and	r1, r1, #63488
	orrs	r2, r2, r1
	orr	r3, r2, r3, lsr #3
	strh	r3, [r10], #2	@ movhi
.L255:
	ldr	r2, [sp]
	lsrs	r9, r2, #1
	beq	.L256
	add	r3, fp, #2
	mov	r6, r10
	movs	r0, #0
.L258:
	ror	r1, r4, #8
	ldrb	r7, [r3, #-1]	@ zero_extendqisi2
	ldrb	r2, [r3, #-2]	@ zero_extendqisi2
	uxtab	r4, r5, r4
	uxtab	lr, r5, r1
	adds	r0, r0, #1
	cmp	r0, r9
	ldrb	r2, [r4, r2]	@ zero_extendqisi2
	ror	r4, r1, #8
	ldrb	r1, [lr, r7]	@ zero_extendqisi2
	add	r3, r3, #2
	lsl	ip, r2, #8
	lsl	r7, r2, #3
	lsl	r8, r1, #8
	lsl	lr, r1, #3
	and	r8, r8, #63488
	and	lr, lr, #2016
	and	ip, ip, #63488
	and	r7, r7, #2016
	orr	lr, r8, lr
	orr	r7, ip, r7
	orr	r1, lr, r1, lsr #3
	orr	r2, r7, r2, lsr #3
	orr	r2, r2, r1, lsl #16
	str	r2, [r6], #4
	bne	.L258
	add	fp, fp, r0, lsl #1
	add	r10, r10, r0, lsl #2
.L256:
	ldr	r3, [sp]
	lsls	r3, r3, #31
	bpl	.L254
	ldrb	r3, [fp]	@ zero_extendqisi2
	uxtab	r2, r5, r4
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	lsls	r1, r3, #8
	lsls	r2, r3, #3
	and	r1, r1, #63488
	and	r2, r2, #2016
	orrs	r2, r2, r1
	ldr	r1, [sp, #56]
	orr	r3, r2, r3, lsr #3
	subs	r1, r1, #1
	strh	r3, [r10]	@ movhi
	str	r1, [sp, #56]
	bpl	.L260
.L272:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L274:
	.align	2
.L273:
	.word	.LANCHOR0-(.LPIC18+4)
	.size	gray_rgb_565D_convert, .-gray_rgb_565D_convert
	.section	.text.ycck_cmyk_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ycck_cmyk_convert, %function
ycck_cmyk_convert:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r3, [sp, #16]
	ldr	r3, [r0, #468]
	ldr	r4, [sp, #16]
	ldr	fp, [r0, #120]
	ldr	r10, [r3, #8]
	ldr	r0, [r0, #336]
	ldr	r9, [r3, #20]
	rsb	r2, r4, r2, lsl #2
	ldr	r5, [r3, #12]
	ldr	r6, [r3, #16]
	str	r2, [sp, #20]
	str	r1, [sp, #12]
	str	r5, [sp, #4]
	str	r6, [sp, #8]
.L276:
	ldr	r2, [sp, #64]
	subs	r2, r2, #1
	str	r2, [sp, #64]
	bmi	.L284
.L281:
	ldr	ip, [sp, #12]
	ldr	r5, [sp, #16]
	ldr	r2, [sp, #20]
	add	r1, ip, #4
	ldr	r4, [ip]
	add	r5, r5, r2
	ldmia	r1, {r1, r2, r3}
	ldr	r8, [r4, r5]
	ldr	ip, [r3, r5]
	ldr	r3, [sp, #16]
	ldr	lr, [r2, r5]
	ldr	r7, [r1, r5]
	ldr	r2, [r3], #4
	str	r3, [sp, #16]
	cmp	fp, #0
	beq	.L276
	str	ip, [sp]
	movs	r3, #0
	ldr	ip, [sp, #8]
.L280:
	ldrb	r5, [lr, r3]	@ zero_extendqisi2
	adds	r2, r2, #4
	ldrb	r1, [r8, r3]	@ zero_extendqisi2
	ldrb	r4, [r7, r3]	@ zero_extendqisi2
	ldr	r6, [r10, r5, lsl #2]
	add	r6, r6, r1
	sxth	r4, r4
	rsb	r6, r6, #255
	ldrb	r6, [r0, r6]	@ zero_extendqisi2
	strb	r6, [r2, #-4]
	ldr	r6, [ip, r5, lsl #2]
	ldr	r5, [r9, r4, lsl #2]
	add	r5, r5, r6
	ldr	r6, [sp]
	add	r5, r1, r5, asr #16
	rsb	r5, r5, #255
	ldrb	r5, [r0, r5]	@ zero_extendqisi2
	strb	r5, [r2, #-3]
	ldr	r5, [sp, #4]
	ldr	r4, [r5, r4, lsl #2]
	add	r1, r1, r4
	rsb	r1, r1, #255
	ldrb	r1, [r0, r1]	@ zero_extendqisi2
	strb	r1, [r2, #-2]
	ldrb	r1, [r6, r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	cmp	r3, fp
	strb	r1, [r2, #-1]
	bne	.L280
	ldr	r2, [sp, #64]
	subs	r2, r2, #1
	str	r2, [sp, #64]
	bpl	.L281
.L284:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	ycck_cmyk_convert, .-ycck_cmyk_convert
	.section	.text.start_pass_dcolor,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_dcolor, %function
start_pass_dcolor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	start_pass_dcolor, .-start_pass_dcolor
	.section	.text.grayscale_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	grayscale_convert, %function
grayscale_convert:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, [sp, #24]
	ldr	r5, [r1]
	mov	r1, r2
	str	r4, [sp]
	mov	r2, r3
	ldr	r4, [r0, #120]
	movs	r3, #0
	mov	r0, r5
	str	r4, [sp, #4]
	bl	jcopy_sample_rows(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
	.size	grayscale_convert, .-grayscale_convert
	.section	.text.jinit_color_deconverter,"ax",%progbits
	.align	2
	.global	jinit_color_deconverter
	.thumb
	.thumb_func
	.type	jinit_color_deconverter, %function
jinit_color_deconverter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r1, #1
	ldr	r3, [r0, #4]
	mov	r4, r0
	movs	r2, #24
	ldr	r6, .L352
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #44]
.LPIC19:
	add	r6, pc
	ldr	r1, .L352+4
	mov	r5, r0
	str	r0, [r4, #468]
	subs	r2, r3, #1
.LPIC22:
	add	r1, pc
	str	r1, [r0]
	cmp	r2, #4
	bhi	.L289
	tbb	[pc, r2]
.L291:
	.byte	(.L290-.L291)/2
	.byte	(.L292-.L291)/2
	.byte	(.L292-.L291)/2
	.byte	(.L293-.L291)/2
	.byte	(.L293-.L291)/2
	.align	1
.L293:
	ldr	r2, [r4, #40]
	cmp	r2, #4
	beq	.L294
.L340:
	ldr	r3, [r4]
	movs	r2, #10
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #44]
.L294:
	ldr	r1, [r4, #48]
	subs	r2, r1, #1
	cmp	r2, #6
	bhi	.L295
	tbb	[pc, r2]
.L297:
	.byte	(.L296-.L297)/2
	.byte	(.L298-.L297)/2
	.byte	(.L295-.L297)/2
	.byte	(.L299-.L297)/2
	.byte	(.L295-.L297)/2
	.byte	(.L300-.L297)/2
	.byte	(.L301-.L297)/2
	.align	1
.L292:
	ldr	r2, [r4, #40]
	cmp	r2, #3
	bne	.L340
	b	.L294
.L290:
	ldr	r2, [r4, #40]
	cmp	r2, #1
	bne	.L340
	b	.L294
.L289:
	ldr	r2, [r4, #40]
	cmp	r2, #0
	bgt	.L294
	b	.L340
.L301:
	ldr	r2, [r4, #96]
	movs	r1, #3
	str	r1, [r4, #128]
	cmp	r2, #0
	bne	.L314
	cmp	r3, r1
	beq	.L341
	cmp	r3, #1
	beq	.L342
	cmp	r3, #2
	beq	.L343
.L324:
	ldr	r3, [r4]
	movs	r2, #27
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #92]
	cbz	r3, .L344
.L328:
	movs	r3, #1
	str	r3, [r4, #132]
	pop	{r3, r4, r5, r6, r7, pc}
.L300:
	cmp	r3, #3
	mov	r2, #4
	str	r2, [r4, #128]
	beq	.L345
	cmp	r3, #1
	beq	.L346
	cmp	r3, #2
	bne	.L324
	ldr	r3, .L352+8
.LPIC28:
	add	r3, pc
	str	r3, [r5, #4]
.L304:
	ldr	r3, [r4, #92]
	cmp	r3, #0
	bne	.L328
.L344:
	ldr	r3, [r4, #128]
	str	r3, [r4, #132]
	pop	{r3, r4, r5, r6, r7, pc}
.L299:
	cmp	r3, #5
	mov	r2, #4
	str	r2, [r4, #128]
	beq	.L347
	cmp	r3, #4
	bne	.L324
	ldr	r3, .L352+12
.LPIC35:
	add	r3, pc
	str	r3, [r5, #4]
	b	.L304
.L296:
	movs	r2, #1
	bic	r3, r3, #2
	cmp	r3, r2
	str	r2, [r4, #128]
	bne	.L324
	ldr	r0, [r4, #40]
	ldr	r3, .L352+16
	cmp	r0, r2
.LPIC23:
	add	r3, pc
	str	r3, [r5, #4]
	ble	.L304
	ldr	r3, [r4, #224]
	movs	r5, #84
	movs	r1, #0
	sub	r2, r3, #84
	mla	r2, r5, r0, r2
.L306:
	str	r1, [r3, #132]
	adds	r3, r3, #84
	cmp	r3, r2
	bne	.L306
	b	.L304
.L298:
	movs	r2, #3
	cmp	r3, r2
	str	r2, [r4, #128]
	beq	.L348
	cmp	r3, #1
	beq	.L349
	cmp	r3, #2
	bne	.L324
	ldr	r3, .L352+20
.LPIC26:
	add	r3, pc
	str	r3, [r5, #4]
	b	.L304
.L295:
	cmp	r3, r1
	bne	.L324
	ldr	r2, .L352+24
	ldr	r3, [r4, #40]
.LPIC36:
	add	r2, pc
	str	r3, [r4, #128]
	str	r2, [r5, #4]
	b	.L304
.L314:
	cmp	r3, #3
	beq	.L350
	cmp	r3, #1
	beq	.L351
	cmp	r3, #2
	bne	.L324
	ldr	r3, .L352+28
.LPIC33:
	add	r3, pc
	str	r3, [r5, #4]
	b	.L304
.L343:
	ldr	r3, .L352+32
.LPIC30:
	add	r3, pc
	str	r3, [r5, #4]
	b	.L304
.L349:
	ldr	r3, .L352+36
.LPIC25:
	add	r3, pc
	str	r3, [r5, #4]
	b	.L304
.L346:
	ldr	r3, .L352+40
.LPIC27:
	add	r3, pc
	str	r3, [r5, #4]
	b	.L304
.L347:
	ldr	r3, .L352+44
	mov	r0, r4
.LPIC34:
	add	r3, pc
	str	r3, [r5, #4]
	bl	build_ycc_rgb_table(PLT)
	b	.L304
.L345:
	bl	cap_neon_ycc_rgb(PLT)
	ldr	r3, .L352+48
.LPIC20:
	add	r3, pc
	cbz	r0, .L316
	ldr	r3, .L352+52
	ldr	r3, [r6, r3]
.L316:
	str	r3, [r5, #4]
	mov	r0, r4
	bl	build_ycc_rgb_table(PLT)
	b	.L304
.L348:
	ldr	r3, .L352+56
	mov	r0, r4
.LPIC24:
	add	r3, pc
	str	r3, [r5, #4]
	bl	build_ycc_rgb_table(PLT)
	b	.L304
.L351:
	ldr	r3, .L352+60
.LPIC32:
	add	r3, pc
	str	r3, [r5, #4]
	b	.L304
.L342:
	ldr	r3, .L352+64
.LPIC29:
	add	r3, pc
	str	r3, [r5, #4]
	b	.L304
.L350:
	ldr	r3, .L352+68
	mov	r0, r4
.LPIC31:
	add	r3, pc
	str	r3, [r5, #4]
	bl	build_ycc_rgb_table(PLT)
	b	.L304
.L341:
	bl	cap_neon_ycc_rgb(PLT)
	ldr	r3, .L352+72
.LPIC21:
	add	r3, pc
	cmp	r0, #0
	beq	.L316
	ldr	r3, .L352+76
	ldr	r3, [r6, r3]
	b	.L316
.L353:
	.align	2
.L352:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+4)
	.word	start_pass_dcolor-(.LPIC22+4)
	.word	rgb_rgba_8888_convert-(.LPIC28+4)
	.word	null_convert-(.LPIC35+4)
	.word	grayscale_convert-(.LPIC23+4)
	.word	null_convert-(.LPIC26+4)
	.word	null_convert-(.LPIC36+4)
	.word	rgb_rgb_565D_convert-(.LPIC33+4)
	.word	rgb_rgb_565_convert-(.LPIC30+4)
	.word	gray_rgb_convert-(.LPIC25+4)
	.word	gray_rgba_8888_convert-(.LPIC27+4)
	.word	ycck_cmyk_convert-(.LPIC34+4)
	.word	ycc_rgba_8888_convert-(.LPIC20+4)
	.word	jsimd_ycc_rgba8888_convert(GOT)
	.word	ycc_rgb_convert-(.LPIC24+4)
	.word	gray_rgb_565D_convert-(.LPIC32+4)
	.word	gray_rgb_565_convert-(.LPIC29+4)
	.word	ycc_rgb_565D_convert-(.LPIC31+4)
	.word	ycc_rgb_565_convert-(.LPIC21+4)
	.word	jsimd_ycc_rgb565_convert(GOT)
	.size	jinit_color_deconverter, .-jinit_color_deconverter
	.section	.rodata.dither_matrix,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	dither_matrix, %object
	.size	dither_matrix, 16
dither_matrix:
	.word	524810
	.word	201592326
	.word	51052809
	.word	252120325
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
