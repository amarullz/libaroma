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
	.file	"jccolor.c"
	.section	.text.rgb_ycc_start,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	rgb_ycc_start, %function
rgb_ycc_start:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r1, #1
	ldr	r5, [r0, #4]
	mov	r2, #8192
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #44
	ldr	r3, [r5]
	ldr	r4, [r0, #352]
	blx	r3
	sbfx	r1, r0, #2, #1
	ands	r1, r1, #3
	str	r0, [r4, #8]
	beq	.L9
	movw	r7, #32767
	cmp	r1, #1
	mov	r3, #0
	add	r2, r0, #7168
	mov	lr, #32768
	add	r6, r0, #4096
	movt	r7, 128
	add	r5, r0, #5120
	add	r4, r0, #6144
	str	r3, [r0]
	str	r3, [r0, #1024]
	str	r3, [r0, #3072]
	str	lr, [r0, #2048]
	str	r2, [sp]
	str	r3, [r6]
	str	r7, [r5]
	str	r3, [r4]
	str	r3, [r2]
	bls	.L10
	movw	r8, #54477
	movw	ip, #43827
	movw	lr, #65535
	movw	r7, #38097
	movw	r3, #60207
	cmp	r1, #2
	movt	r8, 65535
	movt	ip, 65535
	movw	fp, #19595
	movw	r10, #38470
	movt	lr, 128
	movt	r7, 65535
	movt	r3, 65535
	movw	r9, #40239
	str	r8, [r0, #3076]
	str	fp, [r0, #4]
	str	r10, [r0, #1028]
	str	r9, [r0, #2052]
	str	ip, [r6, #4]
	str	lr, [r5, #4]
	str	r7, [r4, #4]
	str	r3, [r2, #4]
	bls	.L11
	movw	fp, #11404
	movw	r10, #43418
	movw	ip, #22118
	movw	lr, #32767
	movw	r7, #10658
	movt	fp, 1
	movt	r10, 65535
	movt	ip, 65535
	movw	r9, #39190
	movt	lr, 129
	movt	r7, 65535
	movw	r8, #47710
	str	fp, [r0, #1032]
	movs	r2, #3
	str	r10, [r0, #3080]
	movw	r3, #54878
	str	r9, [r0, #8]
	movt	r3, 65535
	str	r8, [r0, #2056]
	mov	fp, #253
	str	ip, [r6, #8]
	str	lr, [r5, #8]
	str	r7, [r4, #8]
	ldr	r4, [sp]
	str	r2, [sp, #4]
	str	fp, [sp, #16]
	str	r3, [r4, #8]
	mov	r4, r2
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #4]
.L2:
	rsb	r10, r1, #256
	adds	r4, r4, #1
	lsr	lr, r10, #2
	lsls	r1, r1, #2
	str	r4, [sp, #28]
	vmov.i32	q1, #4  @ v4si
	lsl	r4, lr, #2
	adds	r2, r2, #2
	str	r3, [sp, #24]
	adds	r3, r3, #3
	str	r4, [sp, #8]
	add	r4, r1, #6144
	str	r2, [sp, #32]
	adds	r4, r0, r4
	add	r2, r1, #7168
	str	r3, [sp, #36]
	add	fp, r1, #1024
	add	r9, r1, #3072
	add	r8, r1, #4096
	add	ip, r1, #5120
	str	r10, [sp, #12]
	movs	r3, #0
	add	r10, r1, #2048
	str	r4, [sp]
	vmov.i32	q2, #32768  @ v4si
	adds	r4, r0, r2
	vmov.i32	q3, #4294967295  @ v4si
	vldr	d16, [sp, #24]
	vldr	d17, [sp, #32]
	add	fp, fp, r0
	add	r10, r10, r0
	add	r9, r9, r0
	add	r8, r8, r0
	add	ip, ip, r0
	add	r1, r1, r0
	mov	r2, r3
	vldr	d30, .L19
	vldr	d31, .L19+8
	mov	r7, r4
	str	r0, [sp, #20]
.L8:
	vshl.i32	q9, q8, #1
	add	r5, fp, r3
	vshl.i32	q11, q8, #5
	add	r4, r10, r3
	vadd.i32	q9, q9, q8
	add	r0, r9, r3
	vadd.i32	q10, q11, q8
	adds	r2, r2, #1
	vsub.i32	q11, q11, q8
	add	r6, r8, r3
	vshl.i32	q12, q9, #12
	cmp	lr, r2
	vshl.i32	q14, q10, #10
	vadd.i32	q9, q9, q12
	vshl.i32	q12, q11, #10
	vshl.i32	q0, q8, #20
	vadd.i32	q12, q11, q12
	vshl.i32	q9, q9, #4
	vadd.i32	q14, q10, q14
	vshl.i32	q12, q12, #4
	vsub.i32	q9, q9, q8
	vshl.i32	q11, q8, #2
	vsub.i32	q12, q12, q8
	vadd.i32	q11, q11, q8
	vsub.i32	q0, q0, q8
	vshl.i32	q12, q12, #3
	vshl.i32	q10, q9, #3
	vshl.i32	q14, q14, #2
	vshl.i32	q13, q8, #4
	vadd.i32	q12, q12, q8
	vsub.i32	q10, q10, q9
	vshl.i32	q0, q0, #2
	vsub.i32	q9, q14, q8
	vshl.i32	q14, q11, #3
	vsub.i32	q13, q13, q8
	vshl.i32	q12, q12, #2
	vsub.i32	q11, q14, q11
	vsub.i32	q0, q0, q8
	vadd.i32	q12, q12, q8
	vshl.i32	q14, q13, #5
	vshl.i32	q4, q11, #3
	vadd.i32	q14, q14, q8
	vshl.i32	q10, q10, #3
	vshl.i32	q9, q9, #2
	vshl.i32	q0, q0, #2
	vshl.i32	q12, q12, #1
	vadd.i32	q10, q10, q8
	vadd.i32	q9, q9, q8
	vadd.i32	q12, q12, q8
	vsub.i32	q0, q0, q8
	vsub.i32	q11, q4, q11
	vshl.i32	q14, q14, #3
	vshl.i32	q13, q13, #4
	vshl.i32	q5, q10, #6
	vshl.i32	q9, q9, #4
	vshl.i32	q12, q12, #2
	vsub.i32	q14, q14, q8
	vadd.i32	q13, q13, q8
	vshl.i32	q0, q0, #3
	vshl.i32	q11, q11, #4
	vadd.i32	q12, q12, q8
	vadd.i32	q10, q10, q5
	vadd.i32	q9, q9, q8
	vadd.i32	q0, q0, q8
	vsub.i32	q11, q11, q8
	vshl.i32	q4, q14, #2
	vshl.i32	q6, q13, #5
	vshl.i32	q7, q12, #5
	vshl.i32	q10, q10, #1
	vshl.i32	q9, q9, #4
	vadd.i32	q14, q14, q4
	vshl.i32	q0, q0, #1
	vsub.i32	q13, q6, q13
	vadd.i32	q12, q12, q7
	vshl.i32	q7, q11, #2
	vsub.i32	q10, q10, q8
	vsub.i32	q9, q9, q8
	vadd.i32	q0, q0, q8
	vadd.i32	q5, q8, q15
	vshl.i32	q14, q14, #1
	vadd.i32	q11, q11, q7
	vadd.i32	q13, q13, q2
	vshl.i32	q4, q10, #2
	vshl.i32	q0, q0, #4
	vshl.i32	q6, q9, #5
	vst1.64	{d22-d23}, [r1:64]!
	vshl.i32	q5, q5, #15
	vst1.32	{q14}, [r5]
	add	r5, ip, r3
	vsub.i32	q0, q0, q8
	vst1.32	{q13}, [r4]
	ldr	r4, [sp]
	vsub.i32	q10, q4, q10
	vsub.i32	q9, q6, q9
	vadd.i32	q5, q5, q3
	add	r4, r4, r3
	vst1.32	{q12}, [r0]
	add	r0, r7, r3
	vadd.i32	q8, q8, q1
	add	r3, r3, #16
	vst1.32	{q10}, [r6]
	vst1.32	{q5}, [r5]
	vst1.32	{q9}, [r4]
	vst1.32	{q0}, [r0]
	bhi	.L8
	ldr	r4, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #4]
	cmp	r2, r4
	ldr	r0, [sp, #20]
	sub	r1, r1, r4
	add	r3, r3, r4
	str	r1, [sp]
	beq	.L1
	movw	lr, #19595
	movw	ip, #7471
	mul	r2, lr, r3
	movw	r7, #54477
	movw	r6, #43827
	movt	r7, 65535
	mul	r1, ip, r3
	movw	r8, #38470
	movt	r6, 65535
	movw	r5, #38097
	mul	r10, r7, r3
	str	r2, [r0, r3, lsl #2]
	add	r2, r0, r3, lsl #2
	movt	r5, 65535
	mul	fp, r8, r3
	add	r1, r1, #32768
	addw	r8, r3, #257
	mul	r9, r6, r3
	str	r1, [r2, #2048]
	lsl	r8, r8, #15
	str	r10, [r2, #3072]
	mul	r1, r5, r3
	str	fp, [r2, #1024]
	add	r10, r2, #4096
	add	r8, r8, #-1
	str	r9, [r10]
	add	r10, r2, #5120
	str	r8, [r10]
	movw	r4, #60207
	add	r10, r2, #6144
	movt	r4, 65535
	str	r1, [r10]
	mul	r9, r4, r3
	ldr	r1, [sp]
	add	r8, r2, #7168
	str	r4, [sp, #12]
	adds	r2, r3, #1
	cmp	r1, #1
	str	r9, [r8]
	beq	.L1
	add	r1, r0, r2, lsl #2
	mul	r10, lr, r2
	add	fp, r3, #258
	add	r4, r1, #4096
	mul	r9, ip, r2
	str	r4, [sp, #4]
	movw	r4, #38470
	mul	r4, r4, r2
	str	r10, [r0, r2, lsl #2]
	lsl	fp, fp, #15
	mul	r10, r7, r2
	add	r9, r9, #32768
	add	fp, fp, #-1
	str	r4, [r1, #1024]
	mul	r8, r5, r2
	ldr	r4, [sp, #12]
	str	r9, [r1, #2048]
	mul	r9, r6, r2
	str	r10, [r1, #3072]
	ldr	r10, [sp, #4]
	mul	r2, r4, r2
	str	r9, [r10]
	add	r10, r1, #5120
	add	r9, r1, #6144
	add	r1, r1, #7168
	str	fp, [r10]
	str	r8, [r9]
	add	r8, r3, #2
	str	r2, [r1]
	ldr	r1, [sp]
	cmp	r1, #2
	beq	.L1
	mul	ip, ip, r8
	movw	fp, #38470
	addw	r3, r3, #259
	mul	r2, lr, r8
	lsl	r9, r3, #15
	add	r3, r0, r8, lsl #2
	mul	r10, fp, r8
	add	fp, ip, #32768
	add	r1, r3, #5120
	mul	r7, r7, r8
	str	r2, [r0, r8, lsl #2]
	add	ip, r3, #4096
	str	fp, [r3, #2048]
	str	r10, [r3, #1024]
	add	r0, r3, #6144
	add	r2, r3, #7168
	mul	r6, r6, r8
	str	r7, [r3, #3072]
	add	r9, r9, #-1
	ldr	r3, [sp, #12]
	mul	r5, r5, r8
	str	r6, [ip]
	str	r9, [r1]
	mul	r4, r3, r8
	str	r5, [r0]
	str	r4, [r2]
.L1:
	add	sp, sp, #44
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L9:
	mov	r8, #256
	str	r1, [sp, #4]
	str	r8, [sp, #16]
	mov	r4, r1
	mov	r2, r1
	mov	r3, r1
	b	.L2
.L10:
	movs	r2, #1
	mov	r8, #255
	str	r2, [sp, #4]
	mov	r4, r2
	str	r8, [sp, #16]
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #4]
	b	.L2
.L11:
	movs	r4, #2
	movs	r3, #254
	str	r3, [sp, #16]
	mov	r2, r4
	str	r4, [sp, #4]
	mov	r3, r4
	b	.L2
.L20:
	.align	3
.L19:
	.word	257
	.word	257
	.word	257
	.word	257
	.size	rgb_ycc_start, .-rgb_ycc_start
	.section	.text.rgb_ycc_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	rgb_ycc_convert, %function
rgb_ycc_convert:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r1, [sp, #12]
	movs	r6, #4
	ldr	r4, [sp, #12]
	ldr	r1, [r0, #352]
	ldr	r9, [r0, #28]
	str	r2, [sp, #16]
	rsb	r3, r4, r3, lsl #2
	subs	r3, r3, #4
	str	r3, [sp, #20]
	ldr	r3, [r1, #8]
.L22:
	ldr	r2, [sp, #64]
	subs	r2, r2, #1
	str	r2, [sp, #64]
	bmi	.L30
.L27:
	ldr	r5, [sp, #12]
	ldr	r7, [sp, #16]
	ldr	r10, [sp, #20]
	ldr	r1, [r5], #4
	ldr	r4, [r7]
	ldr	r0, [r7, #4]
	str	r5, [sp, #12]
	add	r5, r5, r10
	ldr	r2, [r7, #8]
	ldr	r4, [r4, r5]
	ldr	r10, [r0, r5]
	ldr	fp, [r2, r5]
	str	r4, [sp, #8]
	cmp	r9, #0
	beq	.L22
	movs	r2, #0
	str	r10, [sp, #4]
.L26:
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	mov	r10, #3072
	ldrb	r0, [r1]	@ zero_extendqisi2
	adds	r1, r1, #3
	ldrb	r7, [r1, #-1]	@ zero_extendqisi2
	add	r5, r5, #256
	ldr	r8, [r3, r5, lsl #2]
	add	r5, r3, r5, lsl #2
	add	r4, r7, #512
	ldr	r7, [r3, r0, lsl #2]
	ldr	lr, [r3, r4, lsl #2]
	add	r4, r3, r4, lsl #2
	add	ip, r5, #5120
	add	r8, r8, r7
	add	r7, r8, lr
	add	lr, r4, #5120
	smlabb	r8, r6, r0, r10
	ldr	r10, [sp, #8]
	asrs	r7, r7, #16
	strb	r7, [r10, r2]
	mov	r7, #5120
	ldr	r5, [r5, #3072]
	smlabb	r0, r6, r0, r7
	ldr	r7, [r3, r8]
	ldr	r4, [r4, #3072]
	ldr	r10, [sp, #4]
	add	r5, r5, r7
	add	r4, r4, r5
	asrs	r4, r4, #16
	strb	r4, [r10, r2]
	ldr	r5, [r3, r0]
	ldr	r0, [ip]
	ldr	r4, [lr]
	add	r0, r0, r5
	add	r0, r0, r4
	asrs	r0, r0, #16
	strb	r0, [fp, r2]
	adds	r2, r2, #1
	cmp	r2, r9
	bne	.L26
	ldr	r2, [sp, #64]
	subs	r2, r2, #1
	str	r2, [sp, #64]
	bpl	.L27
.L30:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	rgb_ycc_convert, .-rgb_ycc_convert
	.section	.text.rgb_gray_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	rgb_gray_convert, %function
rgb_gray_convert:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	rsb	ip, r1, r3, lsl #2
	ldr	r4, [r0, #352]
	mov	r8, r2
	ldr	r10, [r0, #28]
	ldr	r3, [sp, #32]
	ldr	r5, [r4, #8]
.L32:
	subs	r3, r3, #1
	bmi	.L40
.L37:
	ldr	r0, [r1], #4
	ldr	r4, [r8]
	add	r4, r4, r1
	add	r4, r4, ip
	ldr	r4, [r4, #-4]
	cmp	r10, #0
	beq	.L32
	add	lr, r4, r10
.L36:
	ldrb	r6, [r0, #1]	@ zero_extendqisi2
	adds	r0, r0, #3
	ldrb	r9, [r0, #-3]	@ zero_extendqisi2
	ldrb	r7, [r0, #-1]	@ zero_extendqisi2
	add	r6, r6, #256
	ldr	r6, [r5, r6, lsl #2]
	ldr	r2, [r5, r9, lsl #2]
	add	r7, r7, #512
	ldr	r7, [r5, r7, lsl #2]
	add	r6, r6, r2
	add	r6, r6, r7
	asrs	r6, r6, #16
	strb	r6, [r4], #1
	cmp	r4, lr
	bne	.L36
	subs	r3, r3, #1
	bpl	.L37
.L40:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	rgb_gray_convert, .-rgb_gray_convert
	.section	.text.cmyk_ycck_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cmyk_ycck_convert, %function
cmyk_ycck_convert:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r1, [sp, #16]
	ldr	r4, [sp, #16]
	ldr	r1, [r0, #352]
	ldr	r8, [r0, #28]
	str	r2, [sp, #12]
	ldr	r1, [r1, #8]
	rsb	r3, r4, r3, lsl #2
	subs	r3, r3, #4
	str	r3, [sp, #20]
.L42:
	ldr	r7, [sp, #64]
	subs	r7, r7, #1
	str	r7, [sp, #64]
	bmi	.L50
.L47:
	ldr	r7, [sp, #16]
	ldr	r9, [sp, #12]
	ldr	r3, [sp, #20]
	ldr	r2, [r7], #4
	ldr	r5, [r9]
	ldr	r0, [r9, #8]
	mov	r6, r7
	ldr	r4, [r9, #4]
	add	r6, r6, r3
	ldr	r3, [r9, #12]
	ldr	r5, [r5, r6]
	str	r7, [sp, #16]
	ldr	r9, [r4, r6]
	str	r5, [sp, #8]
	ldr	r10, [r0, r6]
	ldr	fp, [r3, r6]
	cmp	r8, #0
	beq	.L42
	str	r9, [sp, #4]
	movs	r3, #0
	ldr	r9, [sp, #8]
.L46:
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	adds	r2, r2, #4
	ldrb	r5, [r2, #-4]	@ zero_extendqisi2
	ldrb	r0, [r2, #-2]	@ zero_extendqisi2
	ldrb	r7, [r2, #-1]	@ zero_extendqisi2
	rsb	r6, r6, #255
	add	r6, r6, #256
	rsb	r5, r5, #255
	rsb	r0, r0, #255
	add	r4, r1, r6, lsl #2
	strb	r7, [fp, r3]
	add	r0, r0, #512
	ldr	r7, [r1, r6, lsl #2]
	ldr	ip, [r1, r5, lsl #2]
	add	r5, r1, r5, lsl #2
	ldr	r6, [r1, r0, lsl #2]
	add	r0, r1, r0, lsl #2
	add	lr, r5, #5120
	add	ip, ip, r7
	add	r7, r4, #5120
	add	ip, ip, r6
	add	r6, r0, #5120
	asr	ip, ip, #16
	strb	ip, [r9, r3]
	ldr	r4, [r4, #3072]
	ldr	r5, [r5, #3072]
	ldr	r0, [r0, #3072]
	add	r5, r5, r4
	ldr	r4, [sp, #4]
	add	r0, r0, r5
	asrs	r0, r0, #16
	strb	r0, [r4, r3]
	ldr	r0, [r7]
	ldr	r5, [lr]
	ldr	r4, [r6]
	add	r0, r0, r5
	add	r0, r0, r4
	asrs	r0, r0, #16
	strb	r0, [r10, r3]
	adds	r3, r3, #1
	cmp	r3, r8
	bne	.L46
	ldr	r7, [sp, #64]
	subs	r7, r7, #1
	str	r7, [sp, #64]
	bpl	.L47
.L50:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	cmyk_ycck_convert, .-cmyk_ycck_convert
	.section	.text.grayscale_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	grayscale_convert, %function
grayscale_convert:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	ip, r2
	rsb	lr, r1, r3, lsl #2
	ldr	r2, [r0, #28]
	ldr	r7, [r0, #36]
	ldr	r3, [sp, #20]
.L52:
	subs	r3, r3, #1
	bmi	.L60
.L57:
	ldr	r4, [r1], #4
	ldr	r0, [ip]
	add	r0, r0, r1
	add	r0, r0, lr
	ldr	r0, [r0, #-4]
	cmp	r2, #0
	beq	.L52
	adds	r6, r0, r2
.L56:
	ldrb	r5, [r4]	@ zero_extendqisi2
	add	r4, r4, r7
	strb	r5, [r0], #1
	cmp	r0, r6
	bne	.L56
	subs	r3, r3, #1
	bpl	.L57
.L60:
	pop	{r4, r5, r6, r7, pc}
	.size	grayscale_convert, .-grayscale_convert
	.section	.text.null_convert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	null_convert, %function
null_convert:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #44
	ldr	r6, [r0, #60]
	ldr	r4, [sp, #144]
	ldr	r0, [r0, #28]
	cmp	r4, #1
	it	eq
	cmpeq	r6, #3
	beq	.L62
.L63:
	subs	r9, r4, #1
	bmi	.L61
.L64:
	sub	r8, r1, r3, lsl #2
	lsl	lr, r3, #2
.L67:
	cmp	r6, #0
	ble	.L93
	sub	ip, r2, #4
	movs	r5, #0
.L96:
	ldr	r3, [ip, #4]!
	ldr	r1, [r8, lr]
	ldr	r3, [r3, lr]
	adds	r7, r3, r0
	cbz	r0, .L94
.L95:
	ldrb	r4, [r1, r5]	@ zero_extendqisi2
	add	r1, r1, r6
	strb	r4, [r3], #1
	cmp	r3, r7
	bne	.L95
.L94:
	adds	r5, r5, #1
	cmp	r5, r6
	bne	.L96
.L93:
	subs	r9, r9, #1
	add	lr, lr, #4
	bpl	.L67
.L61:
	add	sp, sp, #44
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L62:
	cmp	r0, #0
	beq	.L119
	ldr	r6, [r2, #8]
	asrs	r4, r0, #2
	ldr	r7, [r2, #4]
	mov	r5, r0
	ldr	lr, [r2]
	str	r4, [sp, #8]
	ldr	r4, [r1]
	ldr	r2, [lr, r3, lsl #2]
	ldr	r1, [r7, r3, lsl #2]
	ldr	r3, [r6, r3, lsl #2]
	ldr	r6, [sp, #8]
	cmp	r6, #0
	ble	.L68
	orr	r6, r2, r4
	lsls	r6, r6, #30
	bne	.L68
	orr	r6, r1, r3
	ands	r9, r6, #3
	bne	.L68
	ldr	r7, [sp, #8]
	lsl	r8, r7, #2
	add	r5, r7, r7, lsl #1
	mov	ip, r8
	add	r5, r4, r5, lsl #2
	add	ip, ip, r2
	str	r8, [sp, #24]
	mov	r6, r8
	cmp	r2, r5
	it	cc
	cmpcc	r4, ip
	add	r6, r6, r1
	ite	cs
	movcs	ip, #1
	movcc	ip, #0
	cmp	r1, r5
	it	cc
	cmpcc	r4, r6
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	and	ip, ip, r6
	mov	r6, r8
	add	r6, r6, r3
	cmp	r7, #3
	ite	ls
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	r3, r5
	it	cc
	cmpcc	r4, r6
	add	r7, r2, #16
	add	r5, r1, #16
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	cmp	r1, r7
	it	cc
	cmpcc	r2, r5
	and	ip, ip, r6
	add	r6, r3, #16
	ite	cs
	movcs	lr, #1
	movcc	lr, #0
	cmp	r3, r7
	it	cc
	cmpcc	r2, r6
	and	lr, ip, lr
	ite	cs
	movcs	r7, #1
	movcc	r7, #0
	cmp	r3, r5
	it	cc
	cmpcc	r1, r6
	and	r6, lr, r7
	ite	cs
	movcs	r5, #1
	movcc	r5, #0
	tst	r6, r5
	beq	.L69
	ldr	ip, [sp, #8]
	lsr	r10, ip, #2
	cmp	r10, #2
	lsl	fp, r10, #2
	bls	.L97
	sub	r5, r10, #3
	vmov.i32	q15, #16711680  @ v4si
	bic	r5, r5, #1
	vmov.i32	q11, #255  @ v4si
	adds	r5, r5, #2
	vmov.i32	q14, #65535  @ v4si
	vmov.i32	q13, #4278190080  @ v4si
	str	r5, [sp, #12]
	vmov.i32	q12, #65280  @ v4si
	mov	lr, r3
	mov	r7, r1
	mov	r6, r2
	mov	r5, r4
	mov	r8, r2
	mov	ip, r1
	str	r0, [sp, #20]
	str	r4, [sp, #28]
	str	r3, [sp, #32]
.L74:
	mov	r4, r5
	mov	r0, r6
	mov	r1, r7
	mov	r2, lr
	vld3.32	{d16, d18, d20}, [r4]!
	add	r3, r5, #48
	pld	[r6, #64]
	add	r9, r9, #2
	pld	[r7, #64]
	adds	r6, r6, #32
	adds	r7, r7, #32
	add	lr, lr, #32
	vld3.32	{d17, d19, d21}, [r4]
	add	r4, r5, #72
	adds	r5, r5, #96
	vand	q4, q15, q9
	vshl.i32	q7, q9, #8
	vshr.u32	q6, q8, #8
	vand	q7, q7, q14
	vand	q6, q6, q11
	vand	q2, q13, q10
	vshr.u32	q5, q9, #24
	vshr.u32	q1, q8, #24
	vand	q0, q11, q8
	vand	q3, q12, q9
	vorr	q6, q7, q6
	vshr.u32	q7, q8, #16
	vorr	q0, q4, q0
	vorr	q3, q2, q3
	vshr.u32	q4, q10, #16
	vshr.u32	q2, q10, #8
	vand	q8, q11, q10
	vand	q7, q7, q11
	vshl.i32	q5, q5, #16
	vshl.i32	q1, q1, #8
	vorr	q5, q6, q5
	vorr	q1, q0, q1
	vorr	q3, q3, q7
	vshl.i32	q9, q4, #24
	vshl.i32	q10, q2, #24
	vshl.i32	q8, q8, #16
	vorr	q9, q5, q9
	vorr	q10, q1, q10
	vorr	q8, q3, q8
	vst1.32	{q10}, [r0]!
	vst1.32	{q9}, [r1]!
	vst1.32	{q8}, [r2]!
	vld3.32	{d16, d18, d20}, [r3]
	vld3.32	{d17, d19, d21}, [r4]
	ldr	r4, [sp, #12]
	vand	q7, q15, q9
	cmp	r9, r4
	vshl.i32	q4, q9, #8
	vshr.u32	q0, q8, #8
	vand	q6, q11, q8
	vand	q2, q13, q10
	vshr.u32	q5, q8, #24
	vshr.u32	q1, q9, #24
	vand	q4, q4, q14
	vand	q3, q12, q9
	vand	q0, q0, q11
	vorr	q6, q7, q6
	vshr.u32	q7, q8, #16
	vorr	q0, q4, q0
	vorr	q3, q2, q3
	vand	q8, q11, q10
	vshr.u32	q2, q10, #16
	vshr.u32	q4, q10, #8
	vshl.i32	q5, q5, #8
	vshl.i32	q1, q1, #16
	vand	q7, q7, q11
	vorr	q5, q6, q5
	vshl.i32	q10, q4, #24
	vorr	q1, q0, q1
	vshl.i32	q9, q2, #24
	vorr	q3, q3, q7
	vshl.i32	q8, q8, #16
	vorr	q10, q5, q10
	vorr	q9, q1, q9
	vorr	q8, q3, q8
	vst1.32	{q10}, [r0]
	vst1.32	{q9}, [r1]
	vst1.32	{q8}, [r2]
	bne	.L74
	ldr	r0, [sp, #20]
	mov	r2, r8
	ldr	r4, [sp, #28]
	mov	r1, ip
	ldr	r3, [sp, #32]
	mov	ip, r7
	mov	r8, r6
.L70:
	vmov.i32	q15, #16711680  @ v4si
	mov	r6, r5
	vmov.i32	q11, #255  @ v4si
	mov	r5, r9
	vmov.i32	q14, #65535  @ v4si
	vmov.i32	q13, #4278190080  @ v4si
	vmov.i32	q12, #65280  @ v4si
.L76:
	mov	r7, r6
	adds	r5, r5, #1
	cmp	r10, r5
	add	r6, r6, #48
	vld3.32	{d16, d18, d20}, [r7]!
	vld3.32	{d17, d19, d21}, [r7]
	vand	q4, q15, q9
	vshl.i32	q7, q9, #8
	vshr.u32	q6, q8, #8
	vand	q7, q7, q14
	vand	q6, q6, q11
	vand	q2, q13, q10
	vshr.u32	q5, q9, #24
	vshr.u32	q1, q8, #24
	vand	q0, q11, q8
	vand	q3, q12, q9
	vorr	q6, q7, q6
	vshr.u32	q7, q8, #16
	vorr	q0, q4, q0
	vorr	q3, q2, q3
	vshr.u32	q4, q10, #16
	vand	q8, q11, q10
	vshr.u32	q2, q10, #8
	vshl.i32	q5, q5, #16
	vshl.i32	q1, q1, #8
	vand	q7, q7, q11
	vorr	q5, q6, q5
	vshl.i32	q9, q4, #24
	vorr	q1, q0, q1
	vshl.i32	q10, q2, #24
	vorr	q3, q3, q7
	vshl.i32	q8, q8, #16
	vorr	q9, q5, q9
	vorr	q10, q1, q10
	vorr	q8, q3, q8
	vst1.32	{q10}, [r8]!
	vst1.32	{q9}, [ip]!
	vst1.32	{q8}, [lr]!
	bhi	.L76
	lsl	r7, fp, #2
	ldr	r8, [sp, #8]
	add	r6, fp, fp, lsl #1
	adds	r5, r2, r7
	str	r5, [sp, #12]
	adds	r5, r1, r7
	adds	r7, r3, r7
	lsls	r6, r6, #2
	str	r7, [sp, #20]
	cmp	r8, fp
	ldr	r7, [sp, #8]
	str	r5, [sp, #16]
	add	r5, r4, r6
	rsb	r7, fp, r7
	str	r7, [sp, #28]
	beq	.L79
	ldr	r8, [r5, #4]
	ldr	r6, [r4, r6]
	ldr	r9, [r5, #8]
	and	r7, r8, #16711680
	and	r10, r8, #65280
	lsr	lr, r8, #24
	lsl	r8, r8, #8
	uxtb	ip, r6
	uxth	r8, r8
	lsl	lr, lr, #16
	str	r8, [sp, #32]
	lsr	r8, r6, #24
	orr	r7, ip, r7
	lsr	ip, r9, #16
	orr	r7, r7, r8, lsl #8
	lsr	r8, r9, #8
	orr	ip, lr, ip, lsl #24
	uxtb	lr, r9
	orr	r7, r7, r8, lsl #24
	ldr	r8, [sp, #32]
	and	r9, r9, #-16777216
	str	r7, [r2, fp, lsl #2]
	orr	r9, r9, r10
	orr	ip, ip, r8
	ubfx	r8, r6, #16, #8
	ubfx	r6, r6, #8, #8
	orr	r8, r9, r8
	orr	r6, ip, r6
	orr	lr, r8, lr, lsl #16
	str	r6, [r1, fp, lsl #2]
	ldr	r6, [sp, #28]
	str	lr, [r3, fp, lsl #2]
	cmp	r6, #1
	beq	.L79
	ldr	r7, [r5, #16]
	ldr	r10, [r5, #12]
	ldr	r6, [r5, #20]
	and	lr, r7, #16711680
	and	fp, r7, #65280
	lsl	r9, r7, #8
	lsr	ip, r7, #24
	uxtb	r7, r10
	uxth	r9, r9
	ubfx	r8, r10, #8, #8
	orr	r7, lr, r7
	lsr	lr, r10, #24
	orr	r8, r9, r8
	ldr	r9, [sp, #12]
	orr	ip, r8, ip, lsl #16
	orr	r7, r7, lr, lsl #8
	lsr	r8, r6, #16
	lsr	lr, r6, #8
	orr	ip, ip, r8, lsl #24
	orr	r7, r7, lr, lsl #24
	uxtb	r8, r6
	ldr	lr, [sp, #16]
	and	r6, r6, #-16777216
	str	r7, [r9, #4]
	ubfx	r10, r10, #16, #8
	orr	r6, r6, fp
	orr	r6, r6, r10
	ldr	r7, [sp, #20]
	orr	r6, r6, r8, lsl #16
	str	ip, [lr, #4]
	str	r6, [r7, #4]
	ldr	r6, [sp, #28]
	cmp	r6, #2
	beq	.L79
	ldr	r7, [r5, #28]
	ldr	r6, [r5, #24]
	ldr	r5, [r5, #32]
	and	ip, r7, #16711680
	and	r10, r7, #65280
	lsl	r8, r7, #8
	ubfx	lr, r6, #8, #8
	uxtb	r9, r6
	lsrs	r7, r7, #24
	uxth	r8, r8
	orr	ip, ip, r9
	lsr	r9, r6, #24
	orr	lr, r8, lr
	lsr	r8, r5, #8
	orr	r7, lr, r7, lsl #16
	lsr	lr, r5, #16
	orr	ip, ip, r9, lsl #8
	ldr	r9, [sp, #20]
	orr	r7, r7, lr, lsl #24
	uxtb	lr, r5
	orr	ip, ip, r8, lsl #24
	ldr	r8, [sp, #16]
	and	r5, r5, #-16777216
	ubfx	r6, r6, #16, #8
	orr	r5, r5, r10
	orrs	r5, r5, r6
	ldr	r6, [sp, #12]
	orr	r5, r5, lr, lsl #16
	str	ip, [r6, #8]
	str	r7, [r8, #8]
	str	r5, [r9, #8]
.L79:
	ands	r5, r0, #3
	beq	.L61
	ldr	r6, [sp, #24]
	ldr	r7, [sp, #8]
	add	r2, r2, r6
	add	r1, r1, r6
	add	r3, r3, r6
	add	r0, r6, r7, lsl #3
	add	r4, r4, r0
.L68:
	add	r7, r3, #16
	add	r6, r2, #16
	cmp	r2, r7
	it	cc
	cmpcc	r3, r6
	add	r0, r1, #16
	ite	cs
	movcs	ip, #1
	movcc	ip, #0
	cmp	r1, r7
	it	cc
	cmpcc	r3, r0
	add	lr, r5, r5, lsl #1
	ite	cs
	movcs	r7, #1
	movcc	r7, #0
	and	ip, r7, ip
	cmp	r5, #15
	ite	ls
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	r2, r0
	it	cc
	cmpcc	r1, r6
	mov	r0, lr
	add	r6, r3, r5
	add	r0, r0, r4
	ite	cs
	movcs	r7, #1
	movcc	r7, #0
	cmp	r4, r6
	it	cc
	cmpcc	r3, r0
	ite	cs
	movcs	lr, #1
	movcc	lr, #0
	and	ip, ip, r7
	adds	r7, r1, r5
	cmp	r4, r7
	it	cc
	cmpcc	r1, r0
	and	ip, ip, lr
	add	lr, r2, r5
	ite	cs
	movcs	r7, #1
	movcc	r7, #0
	cmp	r4, lr
	it	cc
	cmpcc	r2, r0
	and	r7, ip, r7
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	tst	r7, r0
	beq	.L90
	lsr	fp, r5, #4
	cmp	fp, #2
	lsl	r0, fp, #4
	bls	.L99
	sub	r6, fp, #3
	mov	r7, r2
	bic	r6, r6, #1
	mov	r10, #0
	adds	r6, r6, #2
	str	r3, [sp, #12]
	str	r6, [sp, #28]
	mov	r6, r4
	str	r1, [sp, #8]
	str	r0, [sp, #36]
	str	r3, [sp, #4]
.L86:
	ldr	r0, [sp, #12]
	mov	r8, r6
	ldr	lr, [sp, #8]
	mov	ip, r7
	pld	[r7, #96]
	adds	r7, r7, #32
	vld3.8	{d16, d18, d20}, [r8]!
	add	r9, r6, #48
	str	r7, [sp, #24]
	mov	r7, r0
	mov	r3, lr
	adds	r7, r7, #32
	adds	r3, r3, #32
	str	r7, [sp, #20]
	str	r3, [sp, #16]
	add	r10, r10, #2
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	vld3.8	{d17, d19, d21}, [r8]
	add	r8, r6, #72
	str	r9, [sp, #32]
	add	r9, r6, #96
	str	r3, [sp, #12]
	mov	r6, r9
	ldr	r3, [sp, #32]
	ldr	r7, [sp, #24]
	vst1.8	{q8}, [ip]!
	vst1.8	{q9}, [lr]!
	vst1.8	{q10}, [r0]!
	vld3.8	{d16, d18, d20}, [r3]
	vld3.8	{d17, d19, d21}, [r8]
	ldr	r8, [sp, #28]
	cmp	r10, r8
	vst1.8	{q8}, [ip]
	vst1.8	{q9}, [lr]
	vst1.8	{q10}, [r0]
	bne	.L86
	ldr	r0, [sp, #36]
	mov	r8, r7
	ldr	r3, [sp, #4]
	mov	r7, r9
	ldr	r6, [sp, #20]
	ldr	ip, [sp, #16]
.L82:
	mov	r9, r6
	mov	r6, r10
.L88:
	mov	lr, r7
	adds	r6, r6, #1
	cmp	fp, r6
	add	r7, r7, #48
	vld3.8	{d16, d18, d20}, [lr]!
	vld3.8	{d17, d19, d21}, [lr]
	vst1.8	{q8}, [r8]!
	vst1.8	{q9}, [ip]!
	vst1.8	{q10}, [r9]!
	bhi	.L88
	add	r6, r0, r0, lsl #1
	cmp	r0, r5
	add	r2, r2, r0
	add	r4, r4, r6
	add	r1, r1, r0
	add	r3, r3, r0
	sub	r6, r5, r0
	beq	.L61
	mov	r0, r4
	adds	r5, r1, r6
.L85:
	ldrb	r4, [r0]	@ zero_extendqisi2
	adds	r0, r0, #3
	strb	r4, [r2], #1
	ldrb	r4, [r0, #-2]	@ zero_extendqisi2
	strb	r4, [r1], #1
	cmp	r1, r5
	ldrb	r4, [r0, #-1]	@ zero_extendqisi2
	strb	r4, [r3], #1
	bne	.L85
	add	sp, sp, #44
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L119:
	mov	r9, r0
	b	.L64
.L90:
	ldrb	r0, [r4]	@ zero_extendqisi2
	adds	r4, r4, #3
	strb	r0, [r2], #1
	ldrb	r0, [r4, #-2]	@ zero_extendqisi2
	strb	r0, [r1], #1
	ldrb	r0, [r4, #-1]	@ zero_extendqisi2
	strb	r0, [r3], #1
	cmp	r3, r6
	bne	.L90
	b	.L61
.L99:
	mov	r6, r3
	mov	ip, r1
	mov	r8, r2
	mov	r7, r4
	mov	r10, #0
	b	.L82
.L97:
	mov	lr, r3
	mov	ip, r1
	mov	r8, r2
	mov	r5, r4
	b	.L70
.L69:
	ldr	r7, [sp, #8]
	cmp	r7, #2
	ble	.L98
	subs	r5, r7, #3
	add	r6, r3, #8
	bic	r5, r5, #1
	add	lr, r1, #8
	subs	r5, r7, r5
	add	fp, r2, #8
	subs	r5, r5, #2
	str	r2, [sp, #32]
	str	r5, [sp, #28]
	mov	r2, r6
	str	r3, [sp, #36]
	mov	r5, r4
	mov	r3, lr
	mov	r8, r7
	str	r7, [sp, #12]
.L78:
	ldr	lr, [r5, #4]
	sub	r8, r8, #2
	ldr	r7, [r5]
	ldr	r6, [r5, #8]
	and	r10, lr, #16711680
	str	r8, [sp, #12]
	lsl	r9, lr, #8
	ubfx	r8, r7, #8, #8
	uxtb	ip, r7
	pld	[r5, #60]
	uxth	r9, r9
	adds	r5, r5, #24
	orr	ip, r10, ip
	lsr	r10, lr, #24
	orr	r9, r9, r8
	lsr	r8, r7, #24
	orr	r9, r9, r10, lsl #16
	lsr	r10, r6, #16
	orr	ip, ip, r8, lsl #8
	lsr	r8, r6, #8
	orr	r9, r9, r10, lsl #24
	str	fp, [sp, #16]
	and	r10, r6, #-16777216
	uxtb	r6, r6
	and	lr, lr, #65280
	orr	ip, ip, r8, lsl #24
	orr	lr, r10, lr
	str	r2, [sp, #20]
	ubfx	r7, r7, #16, #8
	str	ip, [fp, #-8]
	orr	r7, lr, r7
	str	r9, [r3, #-8]
	orr	r6, r7, r6, lsl #16
	add	fp, fp, #8
	adds	r2, r2, #8
	str	r6, [r2, #-16]
	ldr	lr, [r5, #-8]
	ldr	r7, [r5, #-12]
	and	r10, lr, #16711680
	lsl	r9, lr, #8
	ldr	r6, [r5, #-4]
	uxtb	ip, r7
	ubfx	r8, r7, #8, #8
	uxth	r9, r9
	orr	ip, r10, ip
	lsr	r10, lr, #24
	orr	r9, r9, r8
	lsr	r8, r7, #24
	and	lr, lr, #65280
	orr	r9, r9, r10, lsl #16
	ubfx	r7, r7, #16, #8
	orr	ip, ip, r8, lsl #8
	lsr	r10, r6, #16
	orr	r7, r7, lr
	lsr	lr, r6, #8
	uxtb	r8, r6
	orr	r9, r9, r10, lsl #24
	orr	lr, ip, lr, lsl #24
	ldr	ip, [sp, #28]
	and	r6, r6, #-16777216
	str	lr, [fp, #-12]
	orrs	r6, r6, r7
	str	r9, [r3, #-4]
	orr	r6, r6, r8, lsl #16
	ldr	r9, [sp, #12]
	mov	lr, r3
	str	r6, [r2, #-12]
	adds	r3, r3, #8
	cmp	r9, ip
	bne	.L120
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #36]
.L77:
	str	r3, [sp, #32]
.L80:
	ldmia	r5, {r6, r9}
	adds	r5, r5, #12
	ldr	r7, [r5, #-4]
	and	ip, r9, #65280
	and	r8, r9, #16711680
	lsl	fp, r9, #8
	str	ip, [sp, #28]
	ubfx	r10, r6, #8, #8
	uxtb	ip, r6
	uxth	fp, fp
	lsr	r9, r9, #24
	ldr	r3, [sp, #28]
	orr	r10, fp, r10
	orr	ip, r8, ip
	orr	r9, r10, r9, lsl #16
	lsr	r8, r6, #24
	lsr	r10, r7, #16
	orr	ip, ip, r8, lsl #8
	lsr	r8, r7, #8
	orr	r9, r9, r10, lsl #24
	uxtb	r10, r7
	orr	ip, ip, r8, lsl #24
	ldr	r8, [sp, #20]
	and	r7, r7, #-16777216
	orrs	r7, r7, r3
	ldr	r3, [sp, #12]
	ubfx	r6, r6, #16, #8
	orrs	r6, r6, r7
	ldr	r7, [sp, #16]
	orr	r6, r6, r10, lsl #16
	subs	r3, r3, #1
	str	r3, [sp, #12]
	str	ip, [r7], #4
	str	r9, [lr], #4
	str	r7, [sp, #16]
	str	r6, [r8], #4
	str	r8, [sp, #20]
	bne	.L80
	ldr	r3, [sp, #32]
	b	.L79
.L98:
	str	r7, [sp, #12]
	mov	lr, r1
	str	r3, [sp, #20]
	mov	r5, r4
	str	r2, [sp, #16]
	b	.L77
.L120:
	ldr	r8, [sp, #12]
	b	.L78
	.size	null_convert, .-null_convert
	.section	.text.null_method,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	null_method, %function
null_method:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	null_method, .-null_method
	.section	.text.jinit_color_converter,"ax",%progbits
	.align	2
	.global	jinit_color_converter
	.thumb
	.thumb_func
	.type	jinit_color_converter, %function
jinit_color_converter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r2, #12
	push	{r4, r5, r6, lr}
	movs	r1, #1
	mov	r4, r0
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #40]
	mov	r5, r0
	ldr	r2, .L183
	str	r0, [r4, #352]
	subs	r3, r3, #1
.LPIC24:
	add	r2, pc
	str	r2, [r0]
	cmp	r3, #4
	bhi	.L123
	tbb	[pc, r3]
.L125:
	.byte	(.L124-.L125)/2
	.byte	(.L126-.L125)/2
	.byte	(.L126-.L125)/2
	.byte	(.L127-.L125)/2
	.byte	(.L127-.L125)/2
	.align	1
.L127:
	ldr	r3, [r4, #36]
	cmp	r3, #4
	beq	.L128
.L178:
	ldr	r3, [r4]
	movs	r2, #9
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L128:
	ldr	r2, [r4, #64]
	subs	r3, r2, #1
	cmp	r3, #4
	bhi	.L129
	tbb	[pc, r3]
.L131:
	.byte	(.L130-.L131)/2
	.byte	(.L132-.L131)/2
	.byte	(.L133-.L131)/2
	.byte	(.L134-.L131)/2
	.byte	(.L135-.L131)/2
	.align	1
.L126:
	ldr	r3, [r4, #36]
	cmp	r3, #3
	bne	.L178
	b	.L128
.L124:
	ldr	r3, [r4, #36]
	cmp	r3, #1
	bne	.L178
	b	.L128
.L123:
	ldr	r3, [r4, #36]
	cmp	r3, #0
	bgt	.L128
	b	.L178
.L135:
	ldr	r3, [r4, #60]
	cmp	r3, #4
	beq	.L148
	ldr	r3, [r4]
	movs	r2, #10
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L148:
	ldr	r3, [r4, #40]
	cmp	r3, #4
	beq	.L179
	cmp	r3, #5
	bne	.L150
	ldr	r3, .L183+4
.LPIC36:
	add	r3, pc
	str	r3, [r5, #4]
	pop	{r4, r5, r6, pc}
.L134:
	ldr	r3, [r4, #60]
	cmp	r3, #4
	beq	.L146
	ldr	r3, [r4]
	movs	r2, #10
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L146:
	ldr	r3, [r4, #40]
	cmp	r3, #4
	bne	.L150
	ldr	r3, .L183+8
.LPIC33:
	add	r3, pc
	str	r3, [r5, #4]
	pop	{r4, r5, r6, pc}
.L133:
	ldr	r3, [r4, #60]
	cmp	r3, #3
	beq	.L143
	ldr	r3, [r4]
	movs	r2, #10
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L143:
	ldr	r3, [r4, #40]
	cmp	r3, #2
	beq	.L180
	cmp	r3, #3
	bne	.L150
	ldr	r3, .L183+12
.LPIC32:
	add	r3, pc
	str	r3, [r5, #4]
	pop	{r4, r5, r6, pc}
.L132:
	ldr	r3, [r4, #60]
	cmp	r3, #3
	beq	.L141
	ldr	r3, [r4]
	movs	r2, #10
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L141:
	ldr	r3, [r4, #40]
	cmp	r3, #2
	bne	.L150
	ldr	r3, .L183+16
.LPIC29:
	add	r3, pc
	str	r3, [r5, #4]
	pop	{r4, r5, r6, pc}
.L130:
	ldr	r3, [r4, #60]
	cmp	r3, #1
	beq	.L136
	ldr	r3, [r4]
	movs	r2, #10
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L136:
	ldr	r3, [r4, #40]
	cmp	r3, #1
	beq	.L181
	cmp	r3, #2
	beq	.L182
	cmp	r3, #3
	bne	.L150
	ldr	r3, .L183+20
.LPIC28:
	add	r3, pc
	str	r3, [r5, #4]
	pop	{r4, r5, r6, pc}
.L150:
	ldr	r3, [r4]
	movs	r2, #27
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L129:
	ldr	r3, [r4, #40]
	cmp	r2, r3
	bne	.L151
	ldr	r2, [r4, #60]
	ldr	r3, [r4, #36]
	cmp	r2, r3
	beq	.L152
.L151:
	ldr	r3, [r4]
	movs	r2, #27
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L152:
	ldr	r3, .L183+24
.LPIC37:
	add	r3, pc
	str	r3, [r5, #4]
	pop	{r4, r5, r6, pc}
.L179:
	ldr	r2, .L183+28
	ldr	r3, .L183+32
.LPIC34:
	add	r2, pc
.LPIC35:
	add	r3, pc
	stmia	r5, {r2, r3}
	pop	{r4, r5, r6, pc}
.L181:
	ldr	r3, .L183+36
.LPIC25:
	add	r3, pc
	str	r3, [r5, #4]
	pop	{r4, r5, r6, pc}
.L180:
	ldr	r2, .L183+40
	ldr	r3, .L183+44
.LPIC30:
	add	r2, pc
.LPIC31:
	add	r3, pc
	stmia	r5, {r2, r3}
	pop	{r4, r5, r6, pc}
.L182:
	ldr	r2, .L183+48
	ldr	r3, .L183+52
.LPIC26:
	add	r2, pc
.LPIC27:
	add	r3, pc
	stmia	r5, {r2, r3}
	pop	{r4, r5, r6, pc}
.L184:
	.align	2
.L183:
	.word	null_method-(.LPIC24+4)
	.word	null_convert-(.LPIC36+4)
	.word	null_convert-(.LPIC33+4)
	.word	null_convert-(.LPIC32+4)
	.word	null_convert-(.LPIC29+4)
	.word	grayscale_convert-(.LPIC28+4)
	.word	null_convert-(.LPIC37+4)
	.word	rgb_ycc_start-(.LPIC34+4)
	.word	cmyk_ycck_convert-(.LPIC35+4)
	.word	grayscale_convert-(.LPIC25+4)
	.word	rgb_ycc_start-(.LPIC30+4)
	.word	rgb_ycc_convert-(.LPIC31+4)
	.word	rgb_ycc_start-(.LPIC26+4)
	.word	rgb_gray_convert-(.LPIC27+4)
	.size	jinit_color_converter, .-jinit_color_converter
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
