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
	.file	"pngrutil.c"
	.section	.text.png_read_filter_row_sub,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_read_filter_row_sub, %function
png_read_filter_row_sub:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldrb	r2, [r0, #11]	@ zero_extendqisi2
	ldr	r4, [r0, #4]
	adds	r2, r2, #7
	asrs	r2, r2, #3
	cmp	r4, r2
	add	r3, r1, r2
	bls	.L1
	add	r6, r1, #16
	add	r0, r3, #16
	cmp	r1, r0
	it	cc
	cmpcc	r3, r6
	sub	r5, r4, r2
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	cmp	r5, #15
	ite	ls
	movls	r6, #0
	andhi	r6, r6, #1
	negs	r0, r2
	cmp	r6, #0
	beq	.L3
	lsrs	r6, r5, #4
	lsls	r7, r6, #4
	cbz	r6, .L4
	mov	r8, r3
	mov	ip, r3
	mov	lr, #0
.L10:
	vld1.8	{q9}, [r1]!
	add	lr, lr, #1
	cmp	lr, r6
	vld1.8	{q8}, [r8]!
	vadd.i8	q8, q9, q8
	vst1.8	{q8}, [ip]!
	bcc	.L10
	cmp	r5, r7
	add	r2, r2, r7
	add	r3, r3, r7
	beq	.L1
.L4:
	ldrb	r7, [r3, r0]	@ zero_extendqisi2
	adds	r5, r2, #1
	ldrb	r6, [r3]	@ zero_extendqisi2
	cmp	r4, r5
	mov	r1, r3
	add	r6, r6, r7
	strb	r6, [r1], #1
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	adds	r5, r2, #2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #2
	add	r6, r6, r7
	strb	r6, [r3, #1]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	adds	r5, r2, #3
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #3
	add	r6, r6, r7
	strb	r6, [r3, #2]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	adds	r5, r2, #4
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #4
	add	r6, r6, r7
	strb	r6, [r3, #3]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	adds	r5, r2, #5
	ldrb	r6, [r3, #4]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #5
	add	r6, r6, r7
	strb	r6, [r3, #4]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	adds	r5, r2, #6
	ldrb	r6, [r3, #5]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #6
	add	r6, r6, r7
	strb	r6, [r3, #5]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	adds	r5, r2, #7
	ldrb	r6, [r3, #6]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #7
	add	r6, r6, r7
	strb	r6, [r3, #6]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	add	r5, r2, #8
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #8
	add	r6, r6, r7
	strb	r6, [r3, #7]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	add	r5, r2, #9
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #9
	add	r6, r6, r7
	strb	r6, [r3, #8]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	add	r5, r2, #10
	ldrb	r6, [r3, #9]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #10
	add	r6, r6, r7
	strb	r6, [r3, #9]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	add	r5, r2, #11
	ldrb	r6, [r3, #10]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #11
	add	r6, r6, r7
	strb	r6, [r3, #10]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	add	r5, r2, #12
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #12
	add	r6, r6, r7
	strb	r6, [r3, #11]
	bls	.L1
	ldrb	r7, [r1, r0]	@ zero_extendqisi2
	add	r5, r2, #13
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	cmp	r4, r5
	add	r1, r3, #13
	add	r6, r6, r7
	strb	r6, [r3, #12]
	bls	.L1
	ldrb	r5, [r1, r0]	@ zero_extendqisi2
	adds	r2, r2, #14
	ldrb	r1, [r3, #13]	@ zero_extendqisi2
	cmp	r4, r2
	add	r6, r3, #14
	add	r1, r1, r5
	strb	r1, [r3, #13]
	bls	.L20
	ldrb	r1, [r6, r0]	@ zero_extendqisi2
	ldrb	r2, [r3, #14]	@ zero_extendqisi2
	add	r2, r2, r1
	strb	r2, [r3, #14]
	pop	{r4, r5, r6, r7, r8, pc}
.L3:
	add	r5, r5, r3
.L12:
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	adds	r2, r3, r0
	cmp	r3, r5
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	add	r2, r2, r1
	strb	r2, [r3, #-1]
	bne	.L12
.L1:
	pop	{r4, r5, r6, r7, r8, pc}
.L20:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	png_read_filter_row_sub, .-png_read_filter_row_sub
	.section	.text.png_read_filter_row_up,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_read_filter_row_up, %function
png_read_filter_row_up:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.L36
	add	r3, r1, #16
	push	{r4, r5, r6, r7}
	add	r4, r2, #16
	cmp	r1, r4
	it	cc
	cmpcc	r2, r3
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	cmp	r0, #15
	ite	ls
	movls	r3, #0
	andhi	r3, r3, #1
	cmp	r3, #0
	beq	.L23
	lsrs	r3, r0, #4
	mov	r6, r1
	mov	r7, r2
	lsls	r4, r3, #4
	movs	r5, #0
.L29:
	vld1.8	{q9}, [r7]!
	adds	r5, r5, #1
	cmp	r5, r3
	vld1.8	{q8}, [r6]
	vadd.i8	q8, q9, q8
	vst1.8	{q8}, [r6]!
	bcc	.L29
	cmp	r0, r4
	add	r3, r1, r4
	add	r5, r2, r4
	beq	.L21
	ldrb	r6, [r2, r4]	@ zero_extendqisi2
	adds	r2, r4, #1
	ldrb	r7, [r1, r4]	@ zero_extendqisi2
	cmp	r0, r2
	add	r6, r6, r7
	strb	r6, [r1, r4]
	bls	.L21
	ldrb	r6, [r5, #1]	@ zero_extendqisi2
	adds	r2, r4, #2
	ldrb	r1, [r3, #1]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #1]
	bls	.L21
	ldrb	r6, [r5, #2]	@ zero_extendqisi2
	adds	r2, r4, #3
	ldrb	r1, [r3, #2]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #2]
	bls	.L21
	ldrb	r6, [r5, #3]	@ zero_extendqisi2
	adds	r2, r4, #4
	ldrb	r1, [r3, #3]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #3]
	bls	.L21
	ldrb	r6, [r5, #4]	@ zero_extendqisi2
	adds	r2, r4, #5
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #4]
	bls	.L21
	ldrb	r6, [r5, #5]	@ zero_extendqisi2
	adds	r2, r4, #6
	ldrb	r1, [r3, #5]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #5]
	bls	.L21
	ldrb	r6, [r5, #6]	@ zero_extendqisi2
	adds	r2, r4, #7
	ldrb	r1, [r3, #6]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #6]
	bls	.L21
	ldrb	r6, [r5, #7]	@ zero_extendqisi2
	add	r2, r4, #8
	ldrb	r1, [r3, #7]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #7]
	bls	.L21
	ldrb	r6, [r5, #8]	@ zero_extendqisi2
	add	r2, r4, #9
	ldrb	r1, [r3, #8]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #8]
	bls	.L21
	ldrb	r6, [r5, #9]	@ zero_extendqisi2
	add	r2, r4, #10
	ldrb	r1, [r3, #9]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #9]
	bls	.L21
	ldrb	r6, [r5, #10]	@ zero_extendqisi2
	add	r2, r4, #11
	ldrb	r1, [r3, #10]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #10]
	bls	.L21
	ldrb	r6, [r5, #11]	@ zero_extendqisi2
	add	r2, r4, #12
	ldrb	r1, [r3, #11]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #11]
	bls	.L21
	ldrb	r6, [r5, #12]	@ zero_extendqisi2
	add	r2, r4, #13
	ldrb	r1, [r3, #12]	@ zero_extendqisi2
	cmp	r0, r2
	add	r1, r1, r6
	strb	r1, [r3, #12]
	bls	.L21
	ldrb	r1, [r5, #13]	@ zero_extendqisi2
	adds	r4, r4, #14
	ldrb	r2, [r3, #13]	@ zero_extendqisi2
	cmp	r0, r4
	add	r2, r2, r1
	strb	r2, [r3, #13]
	bls	.L21
	ldrb	r1, [r5, #14]	@ zero_extendqisi2
	ldrb	r2, [r3, #14]	@ zero_extendqisi2
	add	r2, r2, r1
	strb	r2, [r3, #14]
.L21:
	pop	{r4, r5, r6, r7}
.L36:
	bx	lr
.L23:
	add	r0, r0, r2
.L31:
	ldrb	r3, [r2], #1	@ zero_extendqisi2
	ldrb	r4, [r1]	@ zero_extendqisi2
	cmp	r2, r0
	add	r3, r3, r4
	strb	r3, [r1], #1
	bne	.L31
	b	.L21
	.size	png_read_filter_row_up, .-png_read_filter_row_up
	.section	.text.png_read_filter_row_avg,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_read_filter_row_avg, %function
png_read_filter_row_avg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldrb	r4, [r0, #11]	@ zero_extendqisi2
	ldr	r3, [r0, #4]
	adds	r4, r4, #7
	asrs	r4, r4, #3
	subs	r3, r3, r4
	cmp	r4, #0
	beq	.L38
	add	r0, r1, #16
	add	r5, r2, #16
	cmp	r1, r5
	it	cc
	cmpcc	r2, r0
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	cmp	r4, #15
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	beq	.L39
	lsrs	r0, r4, #4
	mov	r7, r1
	mov	lr, r2
	lsls	r5, r0, #4
	movs	r6, #0
.L44:
	vld1.8	{q9}, [lr]!
	adds	r6, r6, #1
	vshr.u8	q9, q9, #1
	cmp	r6, r0
	vld1.8	{q8}, [r7]
	vadd.i8	q8, q9, q8
	vst1.8	{q8}, [r7]!
	bcc	.L44
	cmp	r4, r5
	add	r0, r1, r5
	add	r6, r2, r5
	beq	.L45
	ldrb	ip, [r2, r5]	@ zero_extendqisi2
	adds	r7, r5, #1
	ldrb	lr, [r1, r5]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r1, r5]
	bls	.L97
	ldrb	ip, [r6, #1]	@ zero_extendqisi2
	adds	r7, r5, #2
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #1]
	bls	.L97
	ldrb	ip, [r6, #2]	@ zero_extendqisi2
	adds	r7, r5, #3
	ldrb	lr, [r0, #2]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #2]
	bls	.L97
	ldrb	ip, [r6, #3]	@ zero_extendqisi2
	adds	r7, r5, #4
	ldrb	lr, [r0, #3]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #3]
	bls	.L97
	ldrb	ip, [r6, #4]	@ zero_extendqisi2
	adds	r7, r5, #5
	ldrb	lr, [r0, #4]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #4]
	bls	.L97
	ldrb	ip, [r6, #5]	@ zero_extendqisi2
	adds	r7, r5, #6
	ldrb	lr, [r0, #5]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #5]
	bls	.L97
	ldrb	ip, [r6, #6]	@ zero_extendqisi2
	adds	r7, r5, #7
	ldrb	lr, [r0, #6]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #6]
	bls	.L97
	ldrb	ip, [r6, #7]	@ zero_extendqisi2
	add	r7, r5, #8
	ldrb	lr, [r0, #7]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #7]
	bls	.L97
	ldrb	ip, [r6, #8]	@ zero_extendqisi2
	add	r7, r5, #9
	ldrb	lr, [r0, #8]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #8]
	bls	.L97
	ldrb	ip, [r6, #9]	@ zero_extendqisi2
	add	r7, r5, #10
	ldrb	lr, [r0, #9]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #9]
	bls	.L97
	ldrb	ip, [r6, #10]	@ zero_extendqisi2
	add	r7, r5, #11
	ldrb	lr, [r0, #10]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #10]
	bls	.L97
	ldrb	ip, [r6, #11]	@ zero_extendqisi2
	add	r7, r5, #12
	ldrb	lr, [r0, #11]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #11]
	bls	.L97
	ldrb	ip, [r6, #12]	@ zero_extendqisi2
	add	r7, r5, #13
	ldrb	lr, [r0, #12]	@ zero_extendqisi2
	cmp	r4, r7
	add	lr, lr, ip, lsr #1
	strb	lr, [r0, #12]
	bls	.L97
	ldrb	lr, [r6, #13]	@ zero_extendqisi2
	adds	r5, r5, #14
	ldrb	r7, [r0, #13]	@ zero_extendqisi2
	cmp	r4, r5
	add	r7, r7, lr, lsr #1
	strb	r7, [r0, #13]
	bls	.L97
	ldrb	r5, [r6, #14]	@ zero_extendqisi2
	adds	r6, r2, r4
	ldrb	r2, [r0, #14]	@ zero_extendqisi2
	add	r2, r2, r5, lsr #1
	strb	r2, [r0, #14]
.L45:
	mov	r2, r6
	add	r1, r1, r4
.L38:
	cmp	r3, #0
	beq	.L37
	negs	r4, r4
	add	r5, r1, #16
	add	r8, r1, r4
	add	r6, r2, #16
	cmp	r5, r8
	add	r7, r8, #16
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	cmp	r2, r5
	it	cc
	cmpcc	r1, r6
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	cmp	r3, #15
	ite	ls
	movls	r6, #0
	andhi	r6, r6, #1
	cmp	r1, r7
	it	cs
	orrcs	r0, r0, #1
	tst	r6, r0
	beq	.L48
	lsr	r9, r3, #4
	cmp	r9, #2
	lsl	r10, r9, #4
	bls	.L59
	sub	r0, r9, #3
	mov	ip, r2
	bic	r0, r0, #1
	movs	r6, #0
	adds	r0, r0, #2
	str	r3, [sp, #8]
	str	r0, [sp, #4]
	mov	r0, r1
	str	r2, [sp, #12]
.L54:
	mov	r7, r8
	mov	lr, ip
	vld1.8	{q12}, [r0]
	adds	r6, r6, #2
	add	r3, ip, #32
	add	r2, r8, #32
	vld1.8	{q8}, [r7]!
	add	fp, r0, #32
	vmovl.u8 q10, d16
	mov	ip, r3
	vld1.8	{q9}, [lr]!
	mov	r8, r2
	vmovl.u8 q11, d18
	vmovl.u8 q8, d17
	vmovl.u8 q9, d19
	vmovl.u16 q3, d22
	vmovl.u16 q13, d16
	vmovl.u16 q11, d23
	vmovl.u16 q15, d20
	vmovl.u16 q14, d18
	vmovl.u16 q10, d21
	vmovl.u16 q9, d19
	vmovl.u16 q8, d17
	vadd.i32	q10, q11, q10
	vadd.i32	q14, q14, q13
	vadd.i32	q8, q9, q8
	vadd.i32	q15, q3, q15
	vshr.s32	q10, q10, #1
	vshr.s32	q14, q14, #1
	vshr.s32	q15, q15, #1
	vshr.s32	q8, q8, #1
	pld	[r0, #96]
	vmovn.i32	d26, q15
	vmovn.i32	d27, q10
	vmovn.i32	d20, q14
	vmovn.i32	d21, q8
	vmovn.i16	d16, q13
	vmovn.i16	d17, q10
	vadd.i8	q8, q8, q12
	vst1.8	{q8}, [r0]
	mov	r0, fp
	vld1.8	{q8}, [r7]
	vmovl.u8 q10, d16
	vld1.8	{q9}, [lr]
	vmovl.u8 q8, d17
	vmovl.u8 q11, d18
	vmovl.u8 q9, d19
	vmovl.u16 q12, d16
	vmovl.u16 q15, d22
	vmovl.u16 q14, d20
	vmovl.u16 q11, d23
	vmovl.u16 q13, d18
	vmovl.u16 q10, d21
	vmovl.u16 q9, d19
	vmovl.u16 q8, d17
	vadd.i32	q10, q11, q10
	vadd.i32	q13, q13, q12
	vadd.i32	q14, q15, q14
	vadd.i32	q8, q9, q8
	vshr.s32	q10, q10, #1
	vshr.s32	q14, q14, #1
	vshr.s32	q8, q8, #1
	vshr.s32	q13, q13, #1
	vmovn.i32	d24, q14
	vmovn.i32	d25, q10
	ldr	r7, [sp, #4]
	vld1.8	{q10}, [r5]
	vmovn.i32	d22, q13
	vmovn.i32	d23, q8
	vmovn.i16	d16, q12
	vmovn.i16	d17, q11
	cmp	r6, r7
	vadd.i8	q8, q8, q10
	vst1.8	{q8}, [r5]
	add	r5, r5, #32
	bne	.L54
	mov	r5, r3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
.L49:
	mov	r0, fp
.L56:
	vld1.8	{q9}, [r5]!
	adds	r6, r6, #1
	vmovl.u8 q11, d18
	cmp	r9, r6
	vld1.8	{q8}, [r8]!
	vmovl.u8 q9, d19
	vmovl.u8 q10, d16
	vmovl.u8 q8, d17
	vmovl.u16 q15, d22
	vmovl.u16 q13, d20
	vmovl.u16 q11, d23
	vmovl.u16 q14, d18
	vmovl.u16 q12, d16
	vmovl.u16 q10, d21
	vmovl.u16 q8, d17
	vmovl.u16 q9, d19
	vadd.i32	q10, q11, q10
	vadd.i32	q9, q9, q8
	vadd.i32	q13, q15, q13
	vadd.i32	q12, q14, q12
	vshr.s32	q10, q10, #1
	vshr.s32	q9, q9, #1
	vshr.s32	q13, q13, #1
	vshr.s32	q12, q12, #1
	vld1.8	{q8}, [fp]!
	vmovn.i32	d22, q13
	vmovn.i32	d23, q10
	vmovn.i32	d20, q12
	vmovn.i32	d21, q9
	vmovn.i16	d18, q11
	vmovn.i16	d19, q10
	vadd.i8	q8, q9, q8
	vst1.8	{q8}, [r0]!
	bhi	.L56
	cmp	r3, r10
	add	r1, r1, r10
	add	r2, r2, r10
	beq	.L37
	rsb	r4, r10, r4
	rsb	r0, r10, r1
	add	r1, r1, r4
.L52:
	ldrb	r4, [r1, r10]	@ zero_extendqisi2
	ldrb	r5, [r0, r10]	@ zero_extendqisi2
	ldrb	r6, [r2], #1	@ zero_extendqisi2
	add	r4, r4, r6
	add	r4, r5, r4, lsr #1
	strb	r4, [r0, r10]
	add	r10, r10, #1
	cmp	r3, r10
	bhi	.L52
.L37:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L97:
	adds	r6, r2, r4
	b	.L45
.L39:
	mov	r0, r1
	adds	r6, r2, r4
.L46:
	ldrb	r7, [r2], #1	@ zero_extendqisi2
	ldrb	r5, [r0]	@ zero_extendqisi2
	cmp	r2, r6
	add	r5, r5, r7, lsr #1
	strb	r5, [r0], #1
	bne	.L46
	b	.L45
.L48:
	add	r3, r3, r2
.L58:
	ldrb	r5, [r1], #1	@ zero_extendqisi2
	ldrb	r6, [r2], #1	@ zero_extendqisi2
	adds	r0, r1, r4
	ldrb	r0, [r0, #-1]	@ zero_extendqisi2
	cmp	r2, r3
	add	r0, r0, r6
	add	r0, r5, r0, lsr #1
	strb	r0, [r1, #-1]
	bne	.L58
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L59:
	mov	r5, r2
	mov	fp, r1
	movs	r6, #0
	b	.L49
	.size	png_read_filter_row_avg, .-png_read_filter_row_avg
	.section	.text.png_read_filter_row_paeth_1byte_pixel,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_read_filter_row_paeth_1byte_pixel, %function
png_read_filter_row_paeth_1byte_pixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	adds	r2, r2, #1
	ldrb	r3, [r2, #-1]	@ zero_extendqisi2
	ldr	r5, [r0, #4]
	mov	r0, r1
	ldrb	r4, [r1]	@ zero_extendqisi2
	add	r8, r1, r5
	add	r4, r4, r3
	strb	r4, [r0], #1
	cmp	r8, r0
	bls	.L98
	add	r8, r8, #-1
.L101:
	uxtb	r7, r4
	ldrb	r0, [r2], #1	@ zero_extendqisi2
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
	rsb	lr, r3, r7
	eor	r6, lr, lr, asr #31
	subs	r5, r0, r3
	cmp	r5, #0
	sub	r6, r6, lr, asr #31
	add	lr, lr, r5
	it	lt
	rsblt	r5, r5, #0
	cmp	r5, r6
	it	gt
	movgt	r7, r0
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	lr, #0
	it	lt
	rsblt	lr, lr, #0
	cmp	r5, lr
	ite	gt
	movgt	r5, r3
	movle	r5, r7
	mov	r3, r0
	add	r4, ip, r5
	strb	r4, [r1, #1]!
	cmp	r1, r8
	bne	.L101
.L98:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	png_read_filter_row_paeth_1byte_pixel, .-png_read_filter_row_paeth_1byte_pixel
	.section	.text.png_read_filter_row_paeth_multibyte_pixel,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_read_filter_row_paeth_multibyte_pixel, %function
png_read_filter_row_paeth_multibyte_pixel:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r1
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	mov	fp, r2
	sub	sp, sp, #76
	ldrb	r4, [r0, #11]	@ zero_extendqisi2
	adds	r4, r4, #7
	asrs	r4, r4, #3
	adds	r3, r1, r4
	cmp	r1, r3
	bcs	.L105
	add	r5, r1, #16
	add	r1, r2, #16
	cmp	r10, r1
	it	cc
	cmpcc	r2, r5
	rsb	r2, r10, r3
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	cmp	r2, #15
	ite	ls
	movls	r1, #0
	andhi	r1, r1, #1
	cmp	r1, #0
	beq	.L106
	lsr	r8, r2, #4
	cmp	r8, #2
	lsl	r6, r8, #4
	bls	.L128
	sub	r1, r8, #3
	mov	ip, fp
	bic	r1, r1, #1
	movs	r7, #0
	adds	r1, r1, #2
	str	r3, [sp]
	str	r1, [sp, #48]
	mov	r1, r10
.L111:
	mov	lr, ip
	vld1.8	{q8}, [r1]
	vmovl.u8 q10, d16
	adds	r7, r7, #2
	vld1.8	{q9}, [lr]!
	add	r3, ip, #32
	vmovl.u8 q11, d18
	add	r9, r1, #32
	vmovl.u8 q9, d19
	mov	ip, r3
	vmovl.u8 q8, d17
	vmovl.u16 q15, d20
	vmovl.u16 q12, d18
	vmovl.u16 q14, d22
	vmovl.u16 q9, d19
	vmovl.u16 q11, d23
	vmovl.u16 q13, d16
	vmovl.u16 q10, d21
	vmovl.u16 q8, d17
	vadd.i32	q14, q15, q14
	vadd.i32	q10, q10, q11
	vadd.i32	q13, q13, q12
	vadd.i32	q8, q8, q9
	vmovn.i32	d24, q14
	vmovn.i32	d25, q10
	pld	[r1, #128]
	vmovn.i32	d20, q13
	vmovn.i32	d21, q8
	vmovn.i16	d16, q12
	vmovn.i16	d17, q10
	vst1.8	{q8}, [r1]
	mov	r1, r9
	vld1.8	{q9}, [r5]
	vmovl.u8 q11, d18
	vld1.8	{q8}, [lr]
	vmovl.u8 q9, d19
	vmovl.u8 q10, d16
	vmovl.u8 q8, d17
	vmovl.u16 q15, d22
	vmovl.u16 q14, d20
	vmovl.u16 q12, d16
	vmovl.u16 q13, d18
	vmovl.u16 q11, d23
	vmovl.u16 q10, d21
	vmovl.u16 q9, d19
	vmovl.u16 q8, d17
	vadd.i32	q10, q11, q10
	vadd.i32	q13, q13, q12
	vadd.i32	q8, q9, q8
	vadd.i32	q14, q15, q14
	ldr	lr, [sp, #48]
	vmovn.i32	d24, q14
	vmovn.i32	d25, q10
	vmovn.i32	d20, q13
	vmovn.i32	d21, q8
	vmovn.i16	d16, q12
	vmovn.i16	d17, q10
	cmp	r7, lr
	vst1.8	{q8}, [r5]
	add	r5, r5, #32
	bne	.L111
	mov	r1, r3
	ldr	r3, [sp]
.L107:
	mov	r5, r1
	mov	r1, r9
.L113:
	vld1.8	{q9}, [r9]!
	adds	r7, r7, #1
	vmovl.u8 q11, d18
	cmp	r8, r7
	vld1.8	{q8}, [r5]!
	vmovl.u8 q9, d19
	vmovl.u8 q10, d16
	vmovl.u8 q8, d17
	vmovl.u16 q15, d22
	vmovl.u16 q14, d20
	vmovl.u16 q12, d16
	vmovl.u16 q13, d18
	vmovl.u16 q11, d23
	vmovl.u16 q10, d21
	vmovl.u16 q9, d19
	vmovl.u16 q8, d17
	vadd.i32	q10, q11, q10
	vadd.i32	q13, q13, q12
	vadd.i32	q8, q9, q8
	vadd.i32	q14, q15, q14
	vmovn.i32	d24, q14
	vmovn.i32	d25, q10
	vmovn.i32	d20, q13
	vmovn.i32	d21, q8
	vmovn.i16	d16, q12
	vmovn.i16	d17, q10
	vst1.8	{q8}, [r1]!
	bhi	.L113
	cmp	r2, r6
	add	r1, r10, r6
	add	r5, fp, r6
	beq	.L114
	ldrb	ip, [r10, r6]	@ zero_extendqisi2
	adds	r7, r1, #1
	ldrb	lr, [fp, r6]	@ zero_extendqisi2
	cmp	r3, r7
	add	lr, lr, ip
	strb	lr, [r10, r6]
	bls	.L114
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	adds	r6, r1, #2
	ldrb	r7, [r5, #1]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #1]
	bls	.L114
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	adds	r6, r1, #3
	ldrb	r7, [r5, #2]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #2]
	bls	.L114
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	adds	r6, r1, #4
	ldrb	r7, [r5, #3]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #3]
	bls	.L114
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	adds	r6, r1, #5
	ldrb	r7, [r5, #4]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #4]
	bls	.L114
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	adds	r6, r1, #6
	ldrb	r7, [r5, #5]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #5]
	bls	.L114
	ldrb	lr, [r1, #6]	@ zero_extendqisi2
	adds	r6, r1, #7
	ldrb	r7, [r5, #6]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #6]
	bls	.L114
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	add	r6, r1, #8
	ldrb	r7, [r5, #7]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #7]
	bls	.L114
	ldrb	lr, [r1, #8]	@ zero_extendqisi2
	add	r6, r1, #9
	ldrb	r7, [r5, #8]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #8]
	bls	.L114
	ldrb	lr, [r1, #9]	@ zero_extendqisi2
	add	r6, r1, #10
	ldrb	r7, [r5, #9]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #9]
	bls	.L114
	ldrb	lr, [r1, #10]	@ zero_extendqisi2
	add	r6, r1, #11
	ldrb	r7, [r5, #10]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #10]
	bls	.L114
	ldrb	lr, [r1, #11]	@ zero_extendqisi2
	add	r6, r1, #12
	ldrb	r7, [r5, #11]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #11]
	bls	.L114
	ldrb	lr, [r1, #12]	@ zero_extendqisi2
	add	r6, r1, #13
	ldrb	r7, [r5, #12]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #12]
	bls	.L114
	ldrb	lr, [r1, #13]	@ zero_extendqisi2
	add	r6, r1, #14
	ldrb	r7, [r5, #13]	@ zero_extendqisi2
	cmp	r3, r6
	add	r7, r7, lr
	strb	r7, [r1, #13]
	bls	.L114
	ldrb	r5, [r5, #14]	@ zero_extendqisi2
	ldrb	r6, [r1, #14]	@ zero_extendqisi2
	add	r5, r5, r6
	strb	r5, [r1, #14]
.L114:
	add	fp, fp, r2
	add	r10, r10, r2
.L105:
	ldr	r2, [r0, #4]
	subs	r2, r2, r4
	add	r3, r3, r2
	cmp	r3, r10
	bls	.L104
	negs	r4, r4
	add	r2, r10, #16
	add	r5, fp, r4
	add	r6, r10, r4
	cmp	r2, r5
	add	r0, r6, #16
	ite	hi
	movhi	r7, #0
	movls	r7, #1
	cmp	r2, r6
	add	lr, r5, #16
	ite	hi
	movhi	r1, #0
	movls	r1, #1
	cmp	r10, r0
	ite	cc
	movcc	r0, r1
	orrcs	r0, r1, #1
	add	r1, fp, #16
	cmp	r10, lr
	it	cs
	orrcs	r7, r7, #1
	cmp	fp, r2
	it	cc
	cmpcc	r10, r1
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	ands	r0, r0, r7
	rsb	r8, r10, r3
	ands	r0, r0, r1
	add	r1, r10, #1
	cmp	r8, #15
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	beq	.L127
	lsr	r0, r8, #4
	lsls	r1, r0, #4
	cmp	r0, #2
	str	r0, [sp, #48]
	str	r1, [sp, #52]
	bls	.L129
	subs	r1, r0, #3
	mov	r9, fp
	bic	r1, r1, #1
	mov	r0, r10
	adds	r1, r1, #2
	str	r1, [sp, #68]
	movs	r1, #0
.L123:
	mov	ip, r5
	mov	lr, r9
	mov	r7, r6
	vld1.8	{q12}, [r0]
	vmovl.u8 q5, d24
	add	r9, r9, #32
	vld1.8	{q8}, [ip]!
	adds	r1, r1, #2
	vmovl.u8 q10, d16
	vld1.8	{q11}, [lr]!
	vmovl.u8 q2, d22
	vld1.8	{q0}, [r7]!
	vmovl.u8 q1, d0
	vmovl.u8 q11, d23
	vmovl.u16 q14, d20
	vmovl.u16 q15, d4
	vmovl.u16 q4, d2
	vmovl.u16 q6, d22
	vsub.i32	q3, q15, q14
	vsub.i32	q13, q4, q14
	vstr	d12, [sp, #16]
	vstr	d13, [sp, #24]
	vmovl.u16 q7, d23
	vabs.s32	q6, q3
	vabs.s32	q11, q13
	vmovl.u8 q0, d1
	vadd.i32	q3, q3, q13
	vstr	d14, [sp, #32]
	vstr	d15, [sp, #40]
	vmovl.u16 q13, d0
	vmovl.u16 q7, d1
	vabs.s32	q3, q3
	vcgt.s32	q0, q6, q11
	vmin.s32	q11, q11, q6
	vmovl.u16 q10, d21
	vmovl.u16 q2, d5
	vmovl.u16 q1, d3
	vmovl.u8 q8, d17
	vbsl	q0, q15, q4
	vst1.64	{d14-d15}, [sp:64]
	vcgt.s32	q11, q11, q3
	vsub.i32	q6, q2, q10
	vsub.i32	q4, q1, q10
	vmovl.u16 q9, d16
	vmovl.u16 q8, d17
	vbsl	q11, q14, q0
	vldr	d14, [sp, #32]
	vldr	d15, [sp, #40]
	vabs.s32	q0, q6
	vadd.i32	q6, q6, q4
	vabs.s32	q4, q4
	vsub.i32	q14, q7, q8
	vmovl.u16 q7, d10
	vabs.s32	q6, q6
	vadd.i32	q7, q7, q11
	vcgt.s32	q11, q0, q4
	vmin.s32	q0, q4, q0
	vldr	d30, [sp, #16]
	vldr	d31, [sp, #24]
	vbsl	q11, q2, q1
	vld1.64	{d2-d3}, [sp:64]
	vsub.i32	q3, q15, q9
	vcgt.s32	q0, q0, q6
	vsub.i32	q15, q13, q9
	vsub.i32	q2, q1, q8
	vabs.s32	q1, q3
	vadd.i32	q3, q3, q15
	vabs.s32	q15, q15
	vbsl	q0, q10, q11
	vldr	d12, [sp, #16]
	vldr	d13, [sp, #24]
	vabs.s32	q10, q14
	vadd.i32	q14, q14, q2
	vabs.s32	q2, q2
	vmin.s32	q11, q15, q1
	vabs.s32	q3, q3
	vcgt.s32	q15, q1, q15
	vabs.s32	q14, q14
	vmin.s32	q1, q2, q10
	vcgt.s32	q2, q10, q2
	vcgt.s32	q3, q11, q3
	vldr	d20, [sp, #32]
	vldr	d21, [sp, #40]
	vbsl	q15, q6, q13
	vld1.64	{d22-d23}, [sp:64]
	vbsl	q2, q10, q11
	pld	[r5, #48]
	vcgt.s32	q14, q1, q14
	vmovl.u8 q12, d25
	vbsl	q3, q9, q15
	pld	[r6, #48]
	vbsl	q14, q8, q2
	str	r9, [sp, #60]
	add	r9, r5, #32
	vmovl.u16 q11, d24
	add	r5, r0, #32
	vmovl.u16 q5, d11
	vmovl.u16 q12, d25
	vadd.i32	q0, q5, q0
	vadd.i32	q3, q11, q3
	vadd.i32	q14, q12, q14
	vmovn.i32	d20, q7
	vmovn.i32	d21, q0
	str	r9, [sp, #56]
	str	r5, [sp, #64]
	add	r9, r6, #32
	vmovn.i32	d18, q3
	vmovn.i32	d19, q14
	vmovn.i16	d16, q10
	vmovn.i16	d17, q9
	vst1.8	{q8}, [r0]
	ldr	r0, [sp, #68]
	vld1.8	{q8}, [ip]
	vmovl.u8 q10, d16
	vld1.8	{q13}, [lr]
	cmp	r1, r0
	vmovl.u8 q2, d26
	vld1.8	{q11}, [r7]
	vmovl.u8 q13, d27
	vmovl.u8 q1, d22
	vmovl.u16 q14, d20
	vmovl.u16 q12, d4
	vmovl.u16 q0, d2
	vmovl.u16 q15, d26
	vmovl.u8 q11, d23
	vsub.i32	q4, q12, q14
	vstr	d30, [sp, #16]
	vstr	d31, [sp, #24]
	vsub.i32	q15, q0, q14
	vabs.s32	q3, q4
	vmovl.u16 q6, d27
	vmovl.u16 q7, d23
	vmovl.u16 q13, d22
	vabs.s32	q11, q15
	vadd.i32	q15, q4, q15
	vmovl.u8 q8, d17
	vabs.s32	q15, q15
	vcgt.s32	q5, q3, q11
	vmin.s32	q11, q11, q3
	vmovl.u16 q10, d21
	vmovl.u16 q2, d5
	vmovl.u16 q1, d3
	vbsl	q5, q12, q0
	vstr	d12, [sp, #32]
	vstr	d13, [sp, #40]
	vcgt.s32	q11, q11, q15
	vmovl.u16 q9, d16
	vsub.i32	q6, q2, q10
	vsub.i32	q4, q1, q10
	vst1.64	{d14-d15}, [sp:64]
	vmovl.u16 q8, d17
	vldr	d14, [sp, #16]
	vldr	d15, [sp, #24]
	vbsl	q11, q14, q5
	vld1.8	{q12}, [r2]
	vmovl.u8 q5, d24
	vsub.i32	q3, q7, q9
	vabs.s32	q0, q6
	vldr	d14, [sp, #32]
	vldr	d15, [sp, #40]
	vadd.i32	q6, q6, q4
	vabs.s32	q4, q4
	vsub.i32	q14, q7, q8
	vmovl.u16 q7, d10
	vabs.s32	q6, q6
	vadd.i32	q7, q7, q11
	vcgt.s32	q11, q0, q4
	vmin.s32	q0, q4, q0
	vsub.i32	q15, q13, q9
	vbsl	q11, q2, q1
	vld1.64	{d2-d3}, [sp:64]
	vcgt.s32	q0, q0, q6
	vsub.i32	q2, q1, q8
	vabs.s32	q1, q3
	vadd.i32	q3, q3, q15
	vabs.s32	q15, q15
	vbsl	q0, q10, q11
	vldr	d12, [sp, #16]
	vldr	d13, [sp, #24]
	vabs.s32	q10, q14
	vadd.i32	q14, q14, q2
	vabs.s32	q2, q2
	vmin.s32	q11, q15, q1
	vabs.s32	q3, q3
	vcgt.s32	q15, q1, q15
	vabs.s32	q14, q14
	vmin.s32	q1, q2, q10
	vcgt.s32	q2, q10, q2
	vcgt.s32	q3, q11, q3
	vldr	d20, [sp, #32]
	vldr	d21, [sp, #40]
	vbsl	q15, q6, q13
	vld1.64	{d22-d23}, [sp:64]
	vbsl	q2, q10, q11
	vcgt.s32	q14, q1, q14
	vmovl.u8 q12, d25
	vbsl	q3, q9, q15
	vbsl	q14, q8, q2
	vmovl.u16 q11, d24
	vmovl.u16 q5, d11
	vmovl.u16 q12, d25
	vadd.i32	q0, q5, q0
	vadd.i32	q3, q11, q3
	vadd.i32	q14, q12, q14
	vmovn.i32	d20, q7
	vmovn.i32	d21, q0
	vmovn.i32	d18, q3
	vmovn.i32	d19, q14
	vmovn.i16	d16, q10
	vmovn.i16	d17, q9
	vst1.8	{q8}, [r2]
	add	r2, r2, #32
	bne	.L119
	mov	r2, r5
	ldr	r0, [sp, #60]
	ldr	r5, [sp, #56]
	mov	r6, r9
.L118:
	ldr	r9, [sp, #48]
	mov	r7, r2
.L125:
	vld1.8	{q8}, [r5]!
	adds	r1, r1, #1
	vmovl.u8 q10, d16
	cmp	r9, r1
	vld1.8	{q13}, [r0]!
	vmovl.u8 q2, d26
	vld1.8	{q11}, [r6]!
	vmovl.u8 q1, d22
	vmovl.u8 q11, d23
	vmovl.u16 q14, d20
	vmovl.u16 q12, d4
	vmovl.u16 q0, d2
	vmovl.u16 q15, d23
	vmovl.u8 q13, d27
	vsub.i32	q4, q12, q14
	vst1.64	{d30-d31}, [sp:64]
	vsub.i32	q15, q0, q14
	vabs.s32	q3, q4
	vmovl.u16 q6, d26
	vmovl.u16 q7, d27
	vmovl.u16 q13, d22
	vabs.s32	q11, q15
	vadd.i32	q15, q4, q15
	vmovl.u8 q8, d17
	vabs.s32	q15, q15
	vcgt.s32	q5, q3, q11
	vmin.s32	q11, q11, q3
	vmovl.u16 q10, d21
	vmovl.u16 q2, d5
	vmovl.u16 q1, d3
	vbsl	q5, q12, q0
	vstr	d12, [sp, #16]
	vstr	d13, [sp, #24]
	vcgt.s32	q11, q11, q15
	vmovl.u16 q9, d16
	vsub.i32	q6, q2, q10
	vsub.i32	q4, q1, q10
	vstr	d14, [sp, #32]
	vstr	d15, [sp, #40]
	vmovl.u16 q8, d17
	vldr	d14, [sp, #16]
	vldr	d15, [sp, #24]
	vbsl	q11, q14, q5
	vld1.8	{q12}, [r7]!
	vmovl.u8 q5, d24
	vsub.i32	q3, q7, q9
	vabs.s32	q0, q6
	vldr	d14, [sp, #32]
	vldr	d15, [sp, #40]
	vadd.i32	q6, q6, q4
	vabs.s32	q4, q4
	vsub.i32	q14, q7, q8
	vmovl.u16 q7, d10
	vabs.s32	q6, q6
	vadd.i32	q7, q7, q11
	vcgt.s32	q11, q0, q4
	vmin.s32	q0, q4, q0
	vsub.i32	q15, q13, q9
	vbsl	q11, q2, q1
	vld1.64	{d2-d3}, [sp:64]
	vcgt.s32	q0, q0, q6
	vsub.i32	q2, q1, q8
	vabs.s32	q1, q3
	vadd.i32	q3, q3, q15
	vabs.s32	q15, q15
	vbsl	q0, q10, q11
	vldr	d12, [sp, #16]
	vldr	d13, [sp, #24]
	vabs.s32	q10, q14
	vadd.i32	q14, q14, q2
	vabs.s32	q2, q2
	vmin.s32	q11, q15, q1
	vabs.s32	q3, q3
	vcgt.s32	q15, q1, q15
	vabs.s32	q14, q14
	vmin.s32	q1, q2, q10
	vcgt.s32	q2, q10, q2
	vcgt.s32	q3, q11, q3
	vldr	d20, [sp, #32]
	vldr	d21, [sp, #40]
	vbsl	q15, q6, q13
	vld1.64	{d22-d23}, [sp:64]
	vbsl	q2, q10, q11
	vcgt.s32	q14, q1, q14
	vmovl.u8 q12, d25
	vbsl	q3, q9, q15
	vbsl	q14, q8, q2
	vmovl.u16 q5, d11
	vmovl.u16 q8, d24
	vmovl.u16 q12, d25
	vadd.i32	q3, q8, q3
	vadd.i32	q0, q5, q0
	vadd.i32	q14, q12, q14
	vmovn.i32	d20, q7
	vmovn.i32	d21, q0
	vmovn.i32	d18, q3
	vmovn.i32	d19, q14
	vmovn.i16	d16, q10
	vmovn.i16	d17, q9
	vst1.8	{q8}, [r2]!
	bhi	.L125
	ldr	r1, [sp, #52]
	ldr	r2, [sp, #52]
	ldr	r0, [sp, #52]
	cmp	r8, r1
	add	r2, r2, r10
	add	r0, r0, fp
	beq	.L104
.L121:
	ldrb	r1, [r0, r4]	@ zero_extendqisi2
	ldrb	r7, [r2, r4]	@ zero_extendqisi2
	ldrb	lr, [r0], #1	@ zero_extendqisi2
	ldrb	r9, [r2]	@ zero_extendqisi2
	rsb	ip, r1, r7
	rsb	r8, r1, lr
	eor	r5, ip, ip, asr #31
	eor	r6, r8, r8, asr #31
	sub	r5, r5, ip, asr #31
	add	ip, ip, r8
	sub	r6, r6, r8, asr #31
	cmp	r6, r5
	it	gt
	movgt	r7, lr
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	ip, #0
	it	lt
	rsblt	ip, ip, #0
	cmp	r5, ip
	it	le
	movle	r1, r7
	add	r1, r1, r9
	strb	r1, [r2], #1
	cmp	r3, r2
	bhi	.L121
.L104:
	add	sp, sp, #76
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L127:
	ldrb	r2, [fp, r4]	@ zero_extendqisi2
	ldrb	r6, [r10, r4]	@ zero_extendqisi2
	ldrb	r7, [fp], #1	@ zero_extendqisi2
	ldrb	r8, [r10]	@ zero_extendqisi2
	mov	r10, r1
	rsb	lr, r2, r6
	rsb	ip, r2, r7
	eor	r0, lr, lr, asr #31
	eor	r5, ip, ip, asr #31
	sub	r0, r0, lr, asr #31
	add	lr, lr, ip
	sub	r5, r5, ip, asr #31
	cmp	r5, r0
	it	gt
	movgt	r6, r7
	cmp	r0, r5
	it	ge
	movge	r0, r5
	cmp	lr, #0
	it	lt
	rsblt	lr, lr, #0
	cmp	r0, lr
	it	le
	movle	r2, r6
	cmp	r1, r3
	add	r2, r2, r8
	add	r1, r1, #1
	strb	r2, [r1, #-2]
	bne	.L127
	b	.L104
.L119:
	mov	r0, r5
	mov	r6, r9
	ldr	r5, [sp, #56]
	ldr	r9, [sp, #60]
	b	.L123
.L106:
	mov	r5, fp
	mov	r1, r10
.L115:
	ldrb	r7, [r1]	@ zero_extendqisi2
	ldrb	r6, [r5], #1	@ zero_extendqisi2
	add	r6, r6, r7
	strb	r6, [r1], #1
	cmp	r1, r3
	bne	.L115
	b	.L114
.L128:
	mov	r1, fp
	mov	r9, r10
	movs	r7, #0
	b	.L107
.L129:
	mov	r2, r10
	mov	r0, fp
	movs	r1, #0
	b	.L118
	.size	png_read_filter_row_paeth_multibyte_pixel, .-png_read_filter_row_paeth_multibyte_pixel
	.section	.text.png_inflate.constprop.5,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_inflate.constprop.5, %function
png_inflate.constprop.5:
	@ args = 8, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #1024
	ldr	r5, [r0, #460]
	mov	r4, r0
	ldr	r9, [sp, #1060]
	cmp	r5, r1
	ldr	r0, [sp, #1056]
	bne	.L140
	movs	r1, #0
	ldr	r5, [r9]
	mov	r8, r3
	ldr	r3, [r3]
	str	r1, [r4, #468]
	str	r1, [r4, #480]
	str	r2, [r4, #464]
	cmp	r0, #0
	beq	.L141
	mov	r2, r1
	add	r7, r4, #464
	str	r0, [r4, #476]
	b	.L144
.L161:
	ldr	r1, [r4, #468]
	ldr	r2, [r4, #480]
.L144:
	add	r5, r5, r2
	mov	r2, #-1
	cmp	r2, r5
	add	r3, r3, r1
	it	cs
	movcs	r2, r5
	str	r3, [r4, #468]
	cmp	r5, r2
	ite	eq
	moveq	r1, #4
	movne	r1, #0
	str	r2, [r4, #480]
	mov	r0, r7
	subs	r5, r5, r2
	bl	inflate(PLT)
	mov	r6, r0
	mov	r3, r0
	cmp	r0, #0
	beq	.L161
.L143:
	ldr	r2, [r4, #480]
	ldr	r3, [r4, #468]
	adds	r5, r5, r2
	ittt	ne
	ldrne	r2, [r9]
	subne	r2, r2, r5
	strne	r2, [r9]
	cbz	r3, .L149
	ldr	r2, [r8]
	subs	r3, r2, r3
	str	r3, [r8]
.L149:
	mov	r0, r4
	mov	r1, r6
	bl	png_zstream_error(PLT)
	mov	r0, r6
.L159:
	add	sp, sp, #1024
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L141:
	mov	r2, r0
	add	r10, r4, #464
	mov	r1, r0
	mov	r7, sp
	b	.L147
.L162:
	ldr	r1, [r4, #468]
	ldr	r2, [r4, #480]
.L147:
	mov	r6, #1024
	add	r5, r5, r2
	cmp	r6, r5
	add	r3, r3, r1
	it	cs
	movcs	r6, r5
	str	r3, [r4, #468]
	cmp	r5, r6
	ite	eq
	moveq	r1, #4
	movne	r1, #0
	str	r6, [r4, #480]
	str	r7, [r4, #476]
	mov	r0, r10
	bl	inflate(PLT)
	subs	r5, r5, r6
	mov	r3, r0
	mov	r6, r0
	cmp	r0, #0
	beq	.L162
	movs	r3, #0
	str	r3, [r4, #476]
	b	.L143
.L140:
	ldr	r3, .L163
	mvn	r0, #1
.LPIC8:
	add	r3, pc
	str	r3, [r4, #488]
	b	.L159
.L164:
	.align	2
.L163:
	.word	.LC2-(.LPIC8+4)
	.size	png_inflate.constprop.5, .-png_inflate.constprop.5
	.section	.text.png_decompress_chunk.constprop.4,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_decompress_chunk.constprop.4, %function
png_decompress_chunk.constprop.4:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r3
	ldr	r6, [r0, #1000]
	sub	sp, sp, #92
	mov	r4, r0
	mov	r8, r1
	mov	r5, r2
	subs	r3, r6, #1
	adds	r3, r3, #3
	add	r3, r2, #1
	bhi	.L166
	cmp	r6, r3
	bcc	.L167
.L184:
	subs	r6, r6, r3
	adds	r2, r6, #1
	it	ne
	strne	r6, [r7]
	ldr	r2, [r4, #460]
	ldr	r10, [r4, #616]
	cmp	r2, #0
	bne	.L204
.L169:
	ldr	r2, [r4, #452]
	movs	r3, #0
	str	r3, [r4, #464]
	add	r9, r4, #464
	str	r3, [r4, #468]
	str	r3, [r4, #476]
	str	r3, [r4, #480]
	lsls	r3, r2, #30
	bmi	.L205
	ldr	r1, .L209
	mov	r0, r9
	movs	r2, #56
.LPIC10:
	add	r1, pc
	bl	inflateInit_(PLT)
	mov	r6, r0
	cbnz	r0, .L172
	ldr	r3, [r4, #452]
	orr	r3, r3, #2
	str	r3, [r4, #452]
.L171:
	ldr	r2, [r4, #1028]
	add	r6, sp, #88
	movs	r0, #0
	rsb	r8, r5, r8
	str	r10, [r4, #460]
	ldr	r1, [r4, #616]
	add	r2, r2, r5
	str	r7, [sp, #4]
	str	r8, [r6, #-64]!
	mov	r3, r6
	str	r0, [sp]
	mov	r0, r4
	bl	png_inflate.constprop.5(PLT)
	cmp	r0, #1
	mov	r10, r0
	beq	.L206
	cmp	r0, #0
	it	eq
	mvneq	r10, #6
.L182:
	mov	r0, r10
	movs	r2, #0
	str	r2, [r4, #460]
.L202:
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L166:
	mov	r6, #-1
	b	.L184
.L205:
	mov	r0, r9
	bl	inflateReset(PLT)
	mov	r6, r0
	cmp	r0, #0
	beq	.L171
.L172:
	mov	r0, r4
	mov	r1, r6
	bl	png_zstream_error(PLT)
	cmp	r6, #1
	ite	ne
	movne	r0, r6
	mvneq	r0, #6
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L204:
	ldr	r3, .L209+4
	lsr	ip, r2, #16
	lsr	lr, r2, #8
	lsr	r9, r2, #24
	strb	r2, [sp, #27]
	add	r6, sp, #24
.LPIC9:
	add	r3, pc
	movs	r1, #64
	movs	r2, #4
	mov	r0, r6
	strb	ip, [sp, #25]
	strb	lr, [sp, #26]
	strb	r9, [sp, #24]
	bl	png_safecat(PLT)
	mov	r0, r4
	mov	r1, r6
	bl	png_chunk_warning(PLT)
	movs	r3, #0
	str	r3, [r4, #460]
	b	.L169
.L167:
	mvn	r1, #3
	bl	png_zstream_error(PLT)
	mvn	r0, #3
	b	.L202
.L206:
	mov	r0, r9
	bl	inflateReset(PLT)
	mov	r9, r0
	cbnz	r0, .L176
	ldr	r3, [r7]
	mov	r0, r4
	mov	fp, r3
	str	r3, [sp, #16]
	add	fp, fp, r5
	add	r3, fp, #1
	mov	r1, r3
	str	r3, [sp, #20]
	bl	png_malloc_base(PLT)
	mov	ip, r0
	cmp	r0, #0
	beq	.L177
	ldr	r2, [r4, #1028]
	add	lr, r0, r5
	ldr	r1, [r4, #616]
	mov	r3, r6
	str	r7, [sp, #4]
	mov	r0, r4
	str	lr, [sp]
	add	r2, r2, r5
	str	ip, [sp, #12]
	bl	png_inflate.constprop.5(PLT)
	cmp	r0, #1
	mov	r10, r0
	ldr	ip, [sp, #12]
	beq	.L207
	cmp	r0, #0
	it	eq
	mvneq	r10, #6
.L179:
	mov	r1, ip
	mov	r0, r4
	bl	png_free(PLT)
	b	.L182
.L176:
	mov	r1, r10
	mov	r0, r4
	bl	png_zstream_error(PLT)
	mvn	r10, #6
	b	.L182
.L207:
	ldr	r2, [r7]
	ldr	r3, [sp, #16]
	cmp	r3, r2
	it	ne
	mvnne	r10, #6
	bne	.L179
	strb	r9, [ip, fp]
	cbnz	r5, .L208
.L180:
	ldr	r3, [sp, #20]
	mov	r0, r4
	ldr	r1, [r4, #1028]
	str	ip, [r4, #1028]
	str	r3, [r4, #1032]
	bl	png_free(PLT)
	ldr	r2, [sp, #24]
	cmp	r8, r2
	beq	.L182
	ldr	r1, .L209+8
	mov	r0, r4
.LPIC11:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L182
.L177:
	mov	r0, r4
	mvn	r1, #3
	bl	png_zstream_error(PLT)
	mvn	r10, #3
	b	.L182
.L208:
	mov	r0, ip
	mov	r2, r5
	ldr	r1, [r4, #1028]
	bl	memcpy(PLT)
	mov	ip, r0
	b	.L180
.L210:
	.align	2
.L209:
	.word	.LC4-(.LPIC10+4)
	.word	.LC3-(.LPIC9+4)
	.word	.LC5-(.LPIC11+4)
	.size	png_decompress_chunk.constprop.4, .-png_decompress_chunk.constprop.4
	.section	.text.png_get_uint_31,"ax",%progbits
	.align	2
	.global	png_get_uint_31
	.thumb
	.thumb_func
	.type	png_get_uint_31, %function
png_get_uint_31:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [r1]	@ zero_extendqisi2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	add	r3, r3, r5, lsl #24
	add	r3, r3, r4
	adds	r3, r3, r2, lsl #8
	bmi	.L214
	mov	r0, r3
	pop	{r3, r4, r5, pc}
.L214:
	ldr	r1, .L215
.LPIC12:
	add	r1, pc
	bl	png_error(PLT)
.L216:
	.align	2
.L215:
	.word	.LC6-(.LPIC12+4)
	.size	png_get_uint_31, .-png_get_uint_31
	.section	.text.png_get_uint_32,"ax",%progbits
	.align	2
	.global	png_get_uint_32
	.thumb
	.thumb_func
	.type	png_get_uint_32, %function
png_get_uint_32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrb	r1, [r0]	@ zero_extendqisi2
	ldrb	r2, [r0, #3]	@ zero_extendqisi2
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r3, r3, r1, lsl #24
	add	r3, r3, r2
	add	r0, r3, r0, lsl #8
	bx	lr
	.size	png_get_uint_32, .-png_get_uint_32
	.section	.text.png_get_int_32,"ax",%progbits
	.align	2
	.global	png_get_int_32
	.thumb
	.thumb_func
	.type	png_get_int_32, %function
png_get_int_32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrb	r1, [r0]	@ zero_extendqisi2
	ldrb	r2, [r0, #3]	@ zero_extendqisi2
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r3, r3, r1, lsl #24
	add	r3, r3, r2
	adds	r0, r3, r0, lsl #8
	bx	lr
	.size	png_get_int_32, .-png_get_int_32
	.section	.text.png_get_uint_16,"ax",%progbits
	.align	2
	.global	png_get_uint_16
	.thumb
	.thumb_func
	.type	png_get_uint_16, %function
png_get_uint_16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r2, [r0]	@ zero_extendqisi2
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	add	r0, r3, r2, lsl #8
	uxth	r0, r0
	bx	lr
	.size	png_get_uint_16, .-png_get_uint_16
	.section	.text.png_read_sig,"ax",%progbits
	.align	2
	.global	png_read_sig
	.thumb
	.thumb_func
	.type	png_read_sig, %function
png_read_sig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	ldrb	r4, [r0, #681]	@ zero_extendqisi2
	cmp	r4, #7
	bls	.L232
	pop	{r3, r4, r5, r6, r7, pc}
.L232:
	mov	r6, r1
	movs	r3, #17
	rsb	r7, r4, #8
	add	r1, r4, #32
	str	r3, [r0, #1040]
	add	r1, r1, r6
	mov	r2, r7
	adds	r6, r6, #32
	bl	png_read_data(PLT)
	movs	r3, #8
	mov	r2, r7
	mov	r0, r6
	strb	r3, [r5, #681]
	mov	r1, r4
	bl	png_sig_cmp(PLT)
	cbz	r0, .L225
	cmp	r4, #3
	bhi	.L226
	mov	r1, r4
	mov	r0, r6
	rsb	r2, r4, #4
	bl	png_sig_cmp(PLT)
	cbnz	r0, .L233
.L226:
	ldr	r1, .L234
	mov	r0, r5
.LPIC14:
	add	r1, pc
	bl	png_error(PLT)
.L225:
	cmp	r4, #2
	ittt	ls
	ldrls	r3, [r5, #448]
	orrls	r3, r3, #4096
	strls	r3, [r5, #448]
	pop	{r3, r4, r5, r6, r7, pc}
.L233:
	ldr	r1, .L234+4
	mov	r0, r5
.LPIC13:
	add	r1, pc
	bl	png_error(PLT)
.L235:
	.align	2
.L234:
	.word	.LC8-(.LPIC14+4)
	.word	.LC7-(.LPIC13+4)
	.size	png_read_sig, .-png_read_sig
	.section	.text.png_crc_read,"ax",%progbits
	.align	2
	.global	png_crc_read
	.thumb
	.thumb_func
	.type	png_crc_read, %function
png_crc_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L239
	push	{r4, r5, r6, lr}
	mov	r5, r1
	mov	r4, r2
	mov	r6, r0
	bl	png_read_data(PLT)
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	pop	{r4, r5, r6, lr}
	b	png_calculate_crc(PLT)
.L239:
	bx	lr
	.size	png_crc_read, .-png_crc_read
	.section	.text.png_inflate_read.constprop.3,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_inflate_read.constprop.3, %function
png_inflate_read.constprop.3:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r1
	mov	r7, r2
	ldr	r1, [r0, #460]
	mov	r4, r0
	ldr	r2, [r0, #616]
	ldr	r6, [sp, #32]
	cmp	r1, r2
	bne	.L241
	movs	r2, #0
	str	r3, [r0, #476]
	str	r2, [r0, #480]
	add	r9, r0, #464
	ldr	r0, [sp, #36]
	mov	r8, #1024
	cbnz	r0, .L243
.L252:
	ldr	r3, [r4, #468]
	cbnz	r3, .L244
	ldr	r3, [r7]
	cmp	r8, r3
	it	cs
	movcs	r8, r3
	rsb	r3, r8, r3
	str	r3, [r7]
	cmp	r8, #0
	bne	.L245
.L246:
	str	r10, [r4, #464]
	str	r8, [r4, #468]
.L244:
	ldr	r3, [r4, #480]
	mov	r0, r9
	cbnz	r3, .L247
	ldr	r2, [r6]
	str	r3, [r6]
	str	r2, [r4, #480]
.L247:
	ldr	r1, [r7]
	cmp	r1, #0
	ite	eq
	moveq	r1, #2
	movne	r1, #0
	bl	inflate(PLT)
	mov	r5, r0
	cmp	r0, #0
	bne	.L249
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L252
	ldr	r3, [r4, #480]
	cmp	r3, #0
	bne	.L252
	movs	r3, #0
	mov	r2, r3
	mov	r5, r3
	b	.L258
.L243:
	ldr	r3, [r4, #468]
	cbnz	r3, .L253
	ldr	r3, [r7]
	cmp	r8, r3
	it	cs
	movcs	r8, r3
	rsb	r3, r8, r3
	str	r3, [r7]
	cmp	r8, #0
	bne	.L270
.L254:
	str	r10, [r4, #464]
	str	r8, [r4, #468]
.L253:
	ldr	r3, [r4, #480]
	mov	r0, r9
	cbnz	r3, .L255
	ldr	r2, [r6]
	str	r3, [r6]
	str	r2, [r4, #480]
.L255:
	ldr	r1, [r7]
	cmp	r1, #0
	ite	eq
	moveq	r1, #4
	movne	r1, #0
	bl	inflate(PLT)
	mov	r5, r0
	cbnz	r0, .L249
	ldr	r3, [r6]
	cmp	r3, #0
	bne	.L243
	ldr	r3, [r4, #480]
	cmp	r3, #0
	bne	.L243
	movs	r3, #0
	mov	r2, r3
	mov	r5, r3
	b	.L258
.L270:
	mov	r0, r4
	mov	r1, r10
	mov	r2, r8
	bl	png_crc_read(PLT)
	b	.L254
.L245:
	mov	r0, r4
	mov	r1, r10
	mov	r2, r8
	bl	png_crc_read(PLT)
	b	.L246
.L249:
	ldr	r2, [r6]
	ldr	r3, [r4, #480]
.L258:
	add	r3, r3, r2
	movs	r2, #0
	str	r3, [r6]
	mov	r0, r4
	str	r2, [r4, #480]
	mov	r1, r5
	bl	png_zstream_error(PLT)
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L241:
	ldr	r3, .L271
	mvn	r0, #1
.LPIC15:
	add	r3, pc
	str	r3, [r4, #488]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L272:
	.align	2
.L271:
	.word	.LC2-(.LPIC15+4)
	.size	png_inflate_read.constprop.3, .-png_inflate_read.constprop.3
	.section	.text.png_crc_error,"ax",%progbits
	.align	2
	.global	png_crc_error
	.thumb
	.thumb_func
	.type	png_crc_error, %function
png_crc_error:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #616]
	push	{r4, r5, lr}
	mov	r4, r0
	sub	sp, sp, #12
	tst	r3, #536870912
	ldr	r3, [r0, #452]
	beq	.L274
	and	r3, r3, #768
	cmp	r3, #768
	beq	.L275
.L276:
	movs	r3, #129
	mov	r0, r4
	str	r3, [r4, #1040]
	add	r1, sp, #4
	movs	r2, #4
	bl	png_read_data(PLT)
	ldrb	r0, [sp, #5]	@ zero_extendqisi2
	ldrb	r5, [sp, #4]	@ zero_extendqisi2
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	lsls	r0, r0, #16
	ldr	r3, [r4, #652]
	add	r0, r0, r5, lsl #24
	add	r0, r0, r1
	add	r0, r0, r2, lsl #8
	subs	r0, r3, r0
	it	ne
	movne	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L274:
	lsls	r3, r3, #20
	bpl	.L276
.L275:
	movs	r3, #129
	mov	r0, r4
	str	r3, [r4, #1040]
	add	r1, sp, #4
	movs	r2, #4
	bl	png_read_data(PLT)
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
	.size	png_crc_error, .-png_crc_error
	.section	.text.png_crc_finish,"ax",%progbits
	.align	2
	.global	png_crc_finish
	.thumb
	.thumb_func
	.type	png_crc_finish, %function
png_crc_finish:
	@ args = 0, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r1
	sub	sp, sp, #1024
	mov	r5, r0
	cbz	r1, .L285
	cmp	r4, #1024
	bcc	.L286
.L302:
	sub	r4, r4, #1024
	mov	r0, r5
	mov	r1, sp
	mov	r2, #1024
	bl	png_crc_read(PLT)
	cbz	r4, .L285
	cmp	r4, #1024
	bcs	.L302
.L286:
	mov	r1, sp
	mov	r2, r4
	mov	r0, r5
	bl	png_crc_read(PLT)
.L285:
	mov	r0, r5
	bl	png_crc_error(PLT)
	cbz	r0, .L295
	ldr	r3, [r5, #616]
	mov	r0, r5
	tst	r3, #536870912
	ldr	r3, [r5, #452]
	itet	ne
	eorne	r3, r3, #512
	ubfxeq	r3, r3, #10, #1
	ubfxne	r3, r3, #9, #1
	cbz	r3, .L292
	ldr	r1, .L303
.LPIC16:
	add	r1, pc
	bl	png_chunk_warning(PLT)
	movs	r0, #1
.L295:
	add	sp, sp, #1024
	@ sp needed
	pop	{r4, r5, r6, pc}
.L292:
	ldr	r1, .L303+4
.LPIC17:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L304:
	.align	2
.L303:
	.word	.LC9-(.LPIC16+4)
	.word	.LC9-(.LPIC17+4)
	.size	png_crc_finish, .-png_crc_finish
	.section	.text.png_opt_crc_finish,"ax",%progbits
	.align	2
	.global	png_opt_crc_finish
	.thumb
	.thumb_func
	.type	png_opt_crc_finish, %function
png_opt_crc_finish:
	@ args = 0, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r1
	sub	sp, sp, #1024
	mov	r5, r0
	cbz	r1, .L307
	cmp	r4, #1024
	mov	r0, r5
	mov	r1, sp
	mov	r2, #1024
	bcc	.L308
.L321:
	sub	r4, r4, #1024
	bl	png_crc_read(PLT)
	cbz	r4, .L307
	cmp	r4, #1024
	mov	r0, r5
	mov	r1, sp
	mov	r2, #1024
	bcs	.L321
.L308:
	mov	r1, sp
	mov	r2, r4
	mov	r0, r5
	bl	png_crc_read(PLT)
.L307:
	mov	r0, r5
	bl	png_crc_error(PLT)
	cbz	r0, .L314
	ldr	r1, .L322
	mov	r0, r5
.LPIC18:
	add	r1, pc
	bl	png_chunk_warning(PLT)
	movs	r0, #1
.L314:
	add	sp, sp, #1024
	@ sp needed
	pop	{r4, r5, r6, pc}
.L323:
	.align	2
.L322:
	.word	.LC9-(.LPIC18+4)
	.size	png_opt_crc_finish, .-png_opt_crc_finish
	.section	.text.png_handle_IHDR,"ax",%progbits
	.align	2
	.global	png_handle_IHDR
	.thumb
	.thumb_func
	.type	png_handle_IHDR, %function
png_handle_IHDR:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	sub	sp, sp, #44
	ands	r6, r3, #1
	bne	.L335
	cmp	r2, #13
	mov	r8, r1
	bne	.L336
	orr	r3, r3, #1
	add	r5, sp, #24
	str	r3, [r0, #448]
	mov	r1, r5
	bl	png_crc_read(PLT)
	mov	r1, r6
	mov	r0, r4
	bl	png_crc_finish(PLT)
	mov	r1, r5
	mov	r0, r4
	bl	png_get_uint_31(PLT)
	add	r1, sp, #28
	mov	r7, r0
	mov	r0, r4
	bl	png_get_uint_31(PLT)
	ldrb	r5, [sp, #33]	@ zero_extendqisi2
	mov	r3, r0
	ldrb	r6, [sp, #32]	@ zero_extendqisi2
	ldrb	ip, [sp, #34]	@ zero_extendqisi2
	ldrb	lr, [sp, #35]	@ zero_extendqisi2
	cmp	r5, #4
	ldrb	r9, [sp, #36]	@ zero_extendqisi2
	str	r7, [r4, #588]
	str	r0, [r4, #592]
	strb	r6, [r4, #676]
	strb	r5, [r4, #675]
	strb	ip, [r4, #984]
	strb	lr, [r4, #952]
	strb	r9, [r4, #672]
	beq	.L328
	cmp	r5, #6
	beq	.L329
	cmp	r5, #2
	ite	ne
	movne	r2, #1
	moveq	r2, #3
	strb	r2, [r4, #679]
.L331:
	smulbb	r2, r2, r6
	mov	r0, r4
	mov	r1, r8
	uxtb	r2, r2
	cmp	r2, #7
	strb	r2, [r4, #678]
	iteet	ls
	mulls	r2, r7, r2
	lsrhi	r2, r2, #3
	mulhi	r2, r7, r2
	addls	r2, r2, #7
	it	ls
	lsrls	r2, r2, #3
	str	r2, [r4, #604]
	mov	r2, r7
	str	r6, [sp]
	str	r5, [sp, #4]
	str	r9, [sp, #8]
	str	ip, [sp, #12]
	str	lr, [sp, #16]
	bl	png_set_IHDR(PLT)
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L329:
	movs	r1, #4
	mov	r2, r1
	strb	r1, [r4, #679]
	b	.L331
.L328:
	movs	r2, #2
	strb	r2, [r4, #679]
	b	.L331
.L336:
	ldr	r1, .L337
.LPIC20:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L335:
	ldr	r1, .L337+4
.LPIC19:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L338:
	.align	2
.L337:
	.word	.LC11-(.LPIC20+4)
	.word	.LC10-(.LPIC19+4)
	.size	png_handle_IHDR, .-png_handle_IHDR
	.section	.text.png_handle_PLTE,"ax",%progbits
	.align	2
	.global	png_handle_PLTE
	.thumb
	.thumb_func
	.type	png_handle_PLTE, %function
png_handle_PLTE:
	@ args = 0, pretend = 0, frame = 776
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0
	ldr	r4, [r0, #448]
	sub	sp, sp, #776
	lsls	r3, r4, #31
	bpl	.L370
	lsls	r7, r4, #30
	bmi	.L371
	lsls	r6, r4, #29
	bmi	.L372
	ldrb	r3, [r0, #675]	@ zero_extendqisi2
	orr	r4, r4, #2
	str	r4, [r0, #448]
	lsls	r4, r3, #30
	bpl	.L373
	cmp	r2, #768
	bhi	.L345
	movw	r3, #43691
	mov	r9, r1
	movt	r3, 43690
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #1
	add	r3, r3, r3, lsl #1
	cmp	r2, r3
	beq	.L346
.L345:
	mov	r1, r2
	mov	r0, r5
	bl	png_crc_finish(PLT)
	ldrb	r3, [r5, #675]	@ zero_extendqisi2
	mov	r0, r5
	cmp	r3, #3
	beq	.L347
	ldr	r1, .L376
.LPIC25:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L339:
	add	sp, sp, #776
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L372:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L376+4
	mov	r0, r5
.LPIC23:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #776
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L373:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L376+8
	mov	r0, r5
.LPIC24:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #776
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L346:
	movw	r10, #21846
	movt	r10, 21845
	smull	r3, r10, r10, r2
	subs	r10, r10, r2, asr #31
	itttt	ne
	addne	r8, r10, r10, lsl #1
	addne	r4, sp, #11
	addne	r6, sp, #4
	addne	r8, r8, r4
	beq	.L351
.L352:
	mov	r0, r5
	mov	r1, r6
	movs	r2, #3
	adds	r4, r4, #3
	bl	png_crc_read(PLT)
	ldrb	r3, [r6]	@ zero_extendqisi2
	ldrb	r7, [r6, #1]	@ zero_extendqisi2
	ldrb	r0, [r6, #2]	@ zero_extendqisi2
	strb	r3, [r4, #-6]
	strb	r7, [r4, #-5]
	strb	r0, [r4, #-4]
	cmp	r4, r8
	bne	.L352
.L351:
	movs	r1, #0
	mov	r0, r5
	bl	png_crc_finish(PLT)
	add	r2, sp, #8
	mov	r0, r5
	mov	r1, r9
	mov	r3, r10
	bl	png_set_PLTE(PLT)
	ldrh	r2, [r5, #668]
	cbz	r2, .L374
	movs	r3, #0
	strh	r3, [r5, #668]	@ movhi
	cmp	r9, #0
	beq	.L356
.L359:
	ldr	r1, .L376+12
	movs	r3, #0
	strh	r3, [r9, #22]	@ movhi
	mov	r0, r5
.LPIC27:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	ldr	r3, [r9, #8]
.L355:
	lsls	r2, r3, #25
	bmi	.L375
.L357:
	lsls	r3, r3, #26
	bpl	.L339
	ldr	r1, .L376+16
	mov	r0, r5
.LPIC29:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L339
.L374:
	cmp	r9, #0
	beq	.L339
	ldr	r3, [r9, #8]
	lsls	r1, r3, #27
	bpl	.L355
	strh	r2, [r5, #668]	@ movhi
	b	.L359
.L375:
	ldr	r1, .L376+20
	mov	r0, r5
.LPIC28:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	ldr	r3, [r9, #8]
	b	.L357
.L356:
	ldr	r1, .L376+24
	mov	r0, r5
.LPIC30:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L339
.L371:
	ldr	r1, .L376+28
.LPIC22:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L370:
	ldr	r1, .L376+32
.LPIC21:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L347:
	ldr	r1, .L376+36
.LPIC26:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L377:
	.align	2
.L376:
	.word	.LC11-(.LPIC25+4)
	.word	.LC10-(.LPIC23+4)
	.word	.LC14-(.LPIC24+4)
	.word	.LC15-(.LPIC27+4)
	.word	.LC17-(.LPIC29+4)
	.word	.LC16-(.LPIC28+4)
	.word	.LC15-(.LPIC30+4)
	.word	.LC13-(.LPIC22+4)
	.word	.LC12-(.LPIC21+4)
	.word	.LC11-(.LPIC26+4)
	.size	png_handle_PLTE, .-png_handle_PLTE
	.section	.text.png_handle_IEND,"ax",%progbits
	.align	2
	.global	png_handle_IEND
	.thumb
	.thumb_func
	.type	png_handle_IEND, %function
png_handle_IEND:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r2
	ldr	r3, [r0, #448]
	mov	r4, r0
	and	r2, r3, #5
	cmp	r2, #5
	bne	.L382
	orr	r3, r3, #24
	mov	r1, r5
	str	r3, [r0, #448]
	bl	png_crc_finish(PLT)
	cbnz	r5, .L383
	pop	{r3, r4, r5, pc}
.L383:
	ldr	r1, .L384
	mov	r0, r4
	pop	{r3, r4, r5, lr}
.LPIC32:
	add	r1, pc
	b	png_chunk_benign_error(PLT)
.L382:
	ldr	r1, .L384+4
.LPIC31:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L385:
	.align	2
.L384:
	.word	.LC11-(.LPIC32+4)
	.word	.LC10-(.LPIC31+4)
	.size	png_handle_IEND, .-png_handle_IEND
	.section	.text.png_handle_gAMA,"ax",%progbits
	.align	2
	.global	png_handle_gAMA
	.thumb
	.thumb_func
	.type	png_handle_gAMA, %function
png_handle_gAMA:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #12
	lsls	r5, r3, #31
	bpl	.L395
	ands	r6, r3, #6
	mov	r7, r1
	mov	r1, r2
	bne	.L396
	cmp	r2, #4
	beq	.L390
	bl	png_crc_finish(PLT)
	ldr	r1, .L397
	mov	r0, r4
.LPIC35:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L386:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L396:
	bl	png_crc_finish(PLT)
	ldr	r1, .L397+4
	mov	r0, r4
.LPIC34:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L390:
	mov	r1, sp
	bl	png_crc_read(PLT)
	mov	r0, r4
	mov	r1, r6
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L386
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	mov	r0, r4
	ldrb	r6, [sp]	@ zero_extendqisi2
	add	r1, r4, #1064
	ldrb	r5, [sp, #3]	@ zero_extendqisi2
	ldrb	r2, [sp, #2]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r3, r3, r6, lsl #24
	add	r3, r3, r5
	adds	r2, r3, r2, lsl #8
	it	mi
	movmi	r2, #-1
	bl	png_colorspace_set_gamma(PLT)
	mov	r0, r4
	mov	r1, r7
	bl	png_colorspace_sync(PLT)
	b	.L386
.L395:
	ldr	r1, .L397+8
.LPIC33:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L398:
	.align	2
.L397:
	.word	.LC11-(.LPIC35+4)
	.word	.LC10-(.LPIC34+4)
	.word	.LC12-(.LPIC33+4)
	.size	png_handle_gAMA, .-png_handle_gAMA
	.section	.text.png_handle_sBIT,"ax",%progbits
	.align	2
	.global	png_handle_sBIT
	.thumb
	.thumb_func
	.type	png_handle_sBIT, %function
png_handle_sBIT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	sub	sp, sp, #12
	lsls	r7, r3, #31
	bpl	.L435
	tst	r3, #6
	mov	r5, r2
	bne	.L436
	mov	r7, r1
	cbz	r1, .L403
	ldr	r3, [r1, #8]
	lsls	r6, r3, #30
	bmi	.L437
.L403:
	ldrb	r6, [r4, #675]	@ zero_extendqisi2
	cmp	r6, #3
	itet	ne
	ldrbne	r6, [r4, #679]	@ zero_extendqisi2
	moveq	r8, #8
	ldrbne	r8, [r4, #676]	@ zero_extendqisi2
	cmp	r5, #4
	it	ls
	cmpls	r5, r6
	ite	ne
	movne	r9, #1
	moveq	r9, #0
	beq	.L405
	ldr	r1, .L439
	mov	r0, r4
.LPIC39:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	png_crc_finish(PLT)
.L399:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L405:
	add	r1, sp, #8
	mov	r0, r4
	strb	r8, [r1, #-8]!
	mov	r2, r6
	mov	r1, sp
	strb	r8, [sp, #3]
	strb	r8, [sp, #2]
	strb	r8, [sp, #1]
	bl	png_crc_read(PLT)
	mov	r0, r4
	mov	r1, r9
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L399
	ldrb	r3, [sp]	@ zero_extendqisi2
	ldrb	r2, [sp, #1]	@ zero_extendqisi2
	cbz	r6, .L407
	cmp	r3, #0
	beq	.L408
	cmp	r8, r3
	bcc	.L408
	cmp	r6, #1
	ldrb	r2, [sp, #1]	@ zero_extendqisi2
	bls	.L407
	cbz	r2, .L408
	cmp	r8, r2
	bcc	.L408
	cmp	r6, #2
	bls	.L407
	ldrb	r1, [sp, #2]	@ zero_extendqisi2
	cbz	r1, .L408
	cmp	r8, r1
	bcc	.L408
	cmp	r6, #3
	bls	.L407
	ldrb	r1, [sp, #3]	@ zero_extendqisi2
	cbz	r1, .L408
	cmp	r8, r1
	bcc	.L408
.L407:
	ldrb	r1, [r4, #675]	@ zero_extendqisi2
	lsls	r1, r1, #30
	bmi	.L438
	strb	r3, [r4, #759]
	strb	r3, [r4, #756]
	strb	r3, [r4, #757]
	strb	r3, [r4, #758]
	strb	r2, [r4, #760]
.L411:
	mov	r0, r4
	mov	r1, r7
	add	r2, r4, #756
	bl	png_set_sBIT(PLT)
	b	.L399
.L436:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L439+4
	mov	r0, r4
.LPIC37:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L437:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L439+8
	mov	r0, r4
.LPIC38:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L408:
	ldr	r1, .L439+12
	mov	r0, r4
.LPIC40:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L399
.L438:
	ldrb	r0, [sp, #2]	@ zero_extendqisi2
	ldrb	r1, [sp, #3]	@ zero_extendqisi2
	strb	r3, [r4, #756]
	strb	r2, [r4, #757]
	strb	r0, [r4, #758]
	strb	r1, [r4, #760]
	b	.L411
.L435:
	ldr	r1, .L439+16
.LPIC36:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L440:
	.align	2
.L439:
	.word	.LC11-(.LPIC39+4)
	.word	.LC10-(.LPIC37+4)
	.word	.LC13-(.LPIC38+4)
	.word	.LC11-(.LPIC40+4)
	.word	.LC12-(.LPIC36+4)
	.size	png_handle_sBIT, .-png_handle_sBIT
	.section	.text.png_handle_cHRM,"ax",%progbits
	.align	2
	.global	png_handle_cHRM
	.thumb
	.thumb_func
	.type	png_handle_cHRM, %function
png_handle_cHRM:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #68
	lsls	r5, r3, #31
	bpl	.L489
	ands	r6, r3, #6
	mov	r7, r1
	mov	r1, r2
	bne	.L490
	cmp	r2, #32
	beq	.L445
	bl	png_crc_finish(PLT)
	ldr	r1, .L491
	mov	r0, r4
.LPIC43:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L441:
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L490:
	bl	png_crc_finish(PLT)
	ldr	r1, .L491+4
	mov	r0, r4
.LPIC42:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L445:
	mov	r1, sp
	bl	png_crc_read(PLT)
	mov	r0, r4
	mov	r1, r6
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L441
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	ldrb	r5, [sp]	@ zero_extendqisi2
	ldrb	r2, [sp, #5]	@ zero_extendqisi2
	ldrb	r6, [sp, #4]	@ zero_extendqisi2
	lsls	r3, r3, #16
	ldrb	lr, [sp, #3]	@ zero_extendqisi2
	ldrb	r1, [sp, #2]	@ zero_extendqisi2
	ldrb	r0, [sp, #9]	@ zero_extendqisi2
	add	r3, r3, r5, lsl #24
	lsls	r2, r2, #16
	ldrb	r5, [sp, #8]	@ zero_extendqisi2
	ldrb	ip, [sp, #13]	@ zero_extendqisi2
	add	r3, r3, lr
	ldrb	lr, [sp, #7]	@ zero_extendqisi2
	add	r2, r2, r6, lsl #24
	ldrb	r6, [sp, #6]	@ zero_extendqisi2
	adds	r3, r3, r1, lsl #8
	ldrb	r8, [sp, #12]	@ zero_extendqisi2
	lsl	r0, r0, #16
	ldrb	r1, [sp, #17]	@ zero_extendqisi2
	add	r2, r2, lr
	ldrb	fp, [sp, #11]	@ zero_extendqisi2
	add	r5, r0, r5, lsl #24
	ldrb	lr, [sp, #10]	@ zero_extendqisi2
	lsl	ip, ip, #16
	ldrb	r10, [sp, #16]	@ zero_extendqisi2
	it	mi
	movmi	r3, #-1
	ldrb	r9, [sp, #15]	@ zero_extendqisi2
	adds	r6, r2, r6, lsl #8
	ldrb	r0, [sp, #21]	@ zero_extendqisi2
	add	r5, r5, fp
	add	ip, ip, r8, lsl #24
	ldrb	fp, [sp, #14]	@ zero_extendqisi2
	lsl	r1, r1, #16
	ldrb	r8, [sp, #20]	@ zero_extendqisi2
	ldrb	r2, [sp, #25]	@ zero_extendqisi2
	it	mi
	movmi	r6, #-1
	adds	lr, r5, lr, lsl #8
	ldrb	r5, [sp, #19]	@ zero_extendqisi2
	add	ip, ip, r9
	add	r1, r1, r10, lsl #24
	ldrb	r9, [sp, #18]	@ zero_extendqisi2
	lsl	r0, r0, #16
	ldrb	r10, [sp, #24]	@ zero_extendqisi2
	add	r1, r1, r5
	it	mi
	movmi	lr, #-1
	ldrb	r5, [sp, #22]	@ zero_extendqisi2
	adds	ip, ip, fp, lsl #8
	ldrb	fp, [sp, #23]	@ zero_extendqisi2
	add	r0, r0, r8, lsl #24
	lsl	r2, r2, #16
	ldrb	r8, [sp, #27]	@ zero_extendqisi2
	it	mi
	movmi	ip, #-1
	adds	r9, r1, r9, lsl #8
	ldrb	r1, [sp, #26]	@ zero_extendqisi2
	add	r2, r2, r10, lsl #24
	add	r0, r0, fp
	str	r3, [sp, #56]
	it	mi
	movmi	r9, #-1
	adds	r0, r0, r5, lsl #8
	add	r2, r2, r8
	str	r6, [sp, #60]
	it	mi
	movmi	r0, #-1
	adds	r2, r2, r1, lsl #8
	str	lr, [sp, #32]
	it	pl
	movpl	r5, r2
	str	ip, [sp, #36]
	str	r9, [sp, #40]
	it	mi
	movmi	r5, #-1
	str	r0, [sp, #44]
	ldrb	r2, [sp, #29]	@ zero_extendqisi2
	ldrb	r10, [sp, #28]	@ zero_extendqisi2
	ldrb	r8, [sp, #31]	@ zero_extendqisi2
	ldrb	r1, [sp, #30]	@ zero_extendqisi2
	lsls	r2, r2, #16
	str	r5, [sp, #48]
	add	r2, r2, r10, lsl #24
	add	r2, r2, r8
	adds	r2, r2, r1, lsl #8
	it	mi
	movmi	r2, #-1
	adds	r3, r3, #1
	str	r2, [sp, #52]
	beq	.L455
	adds	r6, r6, #1
	beq	.L455
	cmp	lr, #-1
	beq	.L455
	cmp	ip, #-1
	beq	.L455
	cmp	r9, #-1
	beq	.L455
	adds	r0, r0, #1
	beq	.L455
	adds	r5, r5, #1
	beq	.L455
	adds	r2, r2, #1
	beq	.L455
	ldrh	r3, [r4, #1138]
	lsls	r1, r3, #16
	bmi	.L441
	lsls	r2, r3, #27
	bpl	.L457
	mvn	r3, r3, lsl #17
	mov	r1, r7
	mov	r0, r4
	mvn	r3, r3, lsr #17
	strh	r3, [r4, #1138]	@ movhi
	bl	png_colorspace_sync(PLT)
	ldr	r1, .L491+8
	mov	r0, r4
.LPIC45:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L441
.L455:
	ldr	r1, .L491+12
	mov	r0, r4
.LPIC44:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L441
.L457:
	orr	r3, r3, #16
	add	r1, r4, #1064
	strh	r3, [r4, #1138]	@ movhi
	mov	r0, r4
	add	r2, sp, #32
	movs	r3, #1
	bl	png_colorspace_set_chromaticities(PLT)
	mov	r0, r4
	mov	r1, r7
	bl	png_colorspace_sync(PLT)
	b	.L441
.L489:
	ldr	r1, .L491+16
.LPIC41:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L492:
	.align	2
.L491:
	.word	.LC11-(.LPIC43+4)
	.word	.LC10-(.LPIC42+4)
	.word	.LC13-(.LPIC45+4)
	.word	.LC18-(.LPIC44+4)
	.word	.LC12-(.LPIC41+4)
	.size	png_handle_cHRM, .-png_handle_cHRM
	.section	.text.png_handle_sRGB,"ax",%progbits
	.align	2
	.global	png_handle_sRGB
	.thumb
	.thumb_func
	.type	png_handle_sRGB, %function
png_handle_sRGB:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #8
	lsls	r6, r3, #31
	bpl	.L501
	ands	r6, r3, #6
	mov	r7, r1
	mov	r1, r2
	bne	.L502
	cmp	r2, #1
	beq	.L497
	bl	png_crc_finish(PLT)
	ldr	r1, .L503
	mov	r0, r4
.LPIC48:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L493:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r6, r7, pc}
.L502:
	bl	png_crc_finish(PLT)
	ldr	r1, .L503+4
	mov	r0, r4
.LPIC47:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r6, r7, pc}
.L497:
	mov	r1, sp
	bl	png_crc_read(PLT)
	mov	r0, r4
	mov	r1, r6
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L493
	ldrh	r3, [r4, #1138]
	lsls	r1, r3, #16
	bmi	.L493
	lsls	r2, r3, #29
	bpl	.L498
	mvn	r3, r3, lsl #17
	mov	r1, r7
	mov	r0, r4
	mvn	r3, r3, lsr #17
	strh	r3, [r4, #1138]	@ movhi
	bl	png_colorspace_sync(PLT)
	ldr	r1, .L503+8
	mov	r0, r4
.LPIC49:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L493
.L498:
	add	r1, r4, #1064
	mov	r0, r4
	ldrb	r2, [sp]	@ zero_extendqisi2
	bl	png_colorspace_set_sRGB(PLT)
	mov	r0, r4
	mov	r1, r7
	bl	png_colorspace_sync(PLT)
	b	.L493
.L501:
	ldr	r1, .L503+12
.LPIC46:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L504:
	.align	2
.L503:
	.word	.LC11-(.LPIC48+4)
	.word	.LC10-(.LPIC47+4)
	.word	.LC19-(.LPIC49+4)
	.word	.LC12-(.LPIC46+4)
	.size	png_handle_sRGB, .-png_handle_sRGB
	.section	.text.png_handle_iCCP,"ax",%progbits
	.align	2
	.global	png_handle_iCCP
	.thumb
	.thumb_func
	.type	png_handle_iCCP, %function
png_handle_iCCP:
	@ args = 0, pretend = 0, frame = 1280
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subw	sp, sp, #1292
	add	r6, sp, #28
	mov	r4, r0
	lsls	r7, r3, #31
	str	r2, [r6]
	bpl	.L588
	tst	r3, #6
	bne	.L589
	cmp	r2, #8
	mov	fp, r2
	bls	.L590
	ldrh	r3, [r0, #1138]
	lsls	r5, r3, #16
	bmi	.L591
	mov	r7, r1
	lsls	r1, r3, #29
	bpl	.L592
	ldr	r5, .L604
	mov	r1, r2
.LPIC50:
	add	r5, pc
.L511:
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldrh	r3, [r4, #1138]
	mov	r1, r7
	mov	r0, r4
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	strh	r3, [r4, #1138]	@ movhi
	bl	png_colorspace_sync(PLT)
	cbz	r5, .L505
.L544:
	mov	r0, r4
	mov	r1, r5
	bl	png_chunk_benign_error(PLT)
.L505:
	addw	sp, sp, #1292
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L592:
	cmp	r2, #80
	add	r5, sp, #40
	bls	.L593
	movs	r2, #81
	mov	r1, r5
	mov	fp, r2
	bl	png_crc_read(PLT)
	ldr	r1, [r6]
	subs	r1, r1, #81
	str	r1, [r6]
.L546:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L550
	mov	r9, #0
	b	.L516
.L514:
	ldrb	r2, [r5, r3]	@ zero_extendqisi2
	cbz	r2, .L515
	mov	r9, r3
.L516:
	add	r3, r9, #1
	cmp	fp, r3
	ite	hi
	movhi	r2, #1
	movls	r2, #0
	cmp	r3, #79
	it	hi
	movhi	r2, #0
	cmp	r2, #0
	bne	.L514
	cmp	r9, #78
	bls	.L515
	ldr	r5, .L604+4
.LPIC54:
	add	r5, pc
	b	.L511
.L589:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L604+8
	mov	r0, r4
.LPIC61:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	addw	sp, sp, #1292
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L593:
	mov	r1, r5
	bl	png_crc_read(PLT)
	ldr	r3, [r6]
	rsb	r3, fp, r3
	mov	r1, r3
	str	r3, [r6]
	b	.L546
.L590:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L604+12
	mov	r0, r4
.LPIC62:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	addw	sp, sp, #1292
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L515:
	add	r8, r9, #2
	cmp	r8, fp
	bcs	.L551
	ldrb	r10, [r5, r8]	@ zero_extendqisi2
	cmp	r10, #0
	beq	.L594
	ldr	r5, .L604+16
.LPIC55:
	add	r5, pc
	b	.L511
.L551:
	ldr	r5, .L604+20
.LPIC53:
	add	r5, pc
	b	.L511
.L591:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	b	.L505
.L594:
	ldr	r0, [r4, #460]
	cmp	r0, #0
	bne	.L595
.L517:
	ldr	r2, [r4, #452]
	movs	r3, #0
	str	r3, [r4, #464]
	add	r10, r4, #464
	str	r3, [r4, #468]
	lsls	r2, r2, #30
	str	r3, [r4, #476]
	str	r3, [r4, #480]
	bpl	.L518
	mov	r0, r10
	bl	inflateReset(PLT)
	cmp	r0, #0
	bne	.L520
.L519:
	sub	r2, fp, #3
	add	lr, r9, #3
	rsb	r2, r9, r2
	movs	r0, #132
	add	r9, sp, #32
	str	r0, [r9]
	ldr	r0, [r4, #616]
	movw	r3, #17232
	movt	r3, 26947
	add	r1, r5, lr
	str	r2, [r4, #468]
	cmp	r0, r3
	str	r1, [r4, #464]
	str	r3, [r4, #460]
	bne	.L596
	movs	r3, #0
	add	r1, sp, #128
	mov	fp, #1024
	str	r1, [r4, #476]
	str	r3, [r4, #480]
	mov	r1, r7
	add	r3, sp, #264
	str	r8, [sp, #12]
	mov	r7, fp
	mov	r8, r9
	mov	fp, r1
	mov	r9, r5
	mov	r5, r3
.L523:
	cbz	r2, .L524
	ldr	r1, [r6]
.L525:
	ldr	r2, [r4, #480]
	cbnz	r2, .L527
	ldr	r3, [r8]
	str	r2, [r8]
	str	r3, [r4, #480]
.L527:
	cmp	r1, #0
	ite	eq
	moveq	r1, #2
	movne	r1, #0
	mov	r0, r10
	bl	inflate(PLT)
	cmp	r0, #0
	bne	.L597
	ldr	r3, [r8]
	cbnz	r3, .L531
	ldr	r2, [r4, #480]
	cmp	r2, #0
	beq	.L598
.L531:
	ldr	r2, [r4, #468]
	b	.L523
.L524:
	ldr	r3, [r6]
	cmp	r7, r3
	it	cs
	movcs	r7, r3
	subs	r1, r3, r7
	str	r1, [r6]
	cbnz	r7, .L599
.L526:
	str	r5, [r4, #464]
	str	r7, [r4, #468]
	b	.L525
.L550:
	ldr	r5, .L604+24
.LPIC52:
	add	r5, pc
	b	.L511
.L599:
	mov	r1, r5
	mov	r0, r4
	mov	r2, r7
	bl	png_crc_read(PLT)
	ldr	r1, [r6]
	b	.L526
.L518:
	ldr	r1, .L604+28
	mov	r0, r10
	movs	r2, #56
.LPIC64:
	add	r1, pc
	bl	inflateInit_(PLT)
	cbnz	r0, .L520
	ldr	r3, [r4, #452]
	orr	r3, r3, #2
	str	r3, [r4, #452]
	b	.L519
.L520:
	mov	r1, r0
	mov	r0, r4
	bl	png_zstream_error(PLT)
	ldr	r1, [r6]
	ldr	r5, [r4, #488]
	b	.L511
.L595:
	ldr	r3, .L604+32
	lsrs	r1, r0, #24
	lsrs	r2, r0, #16
	lsr	lr, r0, #8
	strb	r0, [sp, #267]
	add	ip, sp, #264
.LPIC63:
	add	r3, pc
	mov	r0, ip
	strb	r1, [sp, #264]
	strb	r2, [sp, #265]
	movs	r1, #64
	movs	r2, #4
	strb	lr, [sp, #266]
	str	ip, [sp, #8]
	bl	png_safecat(PLT)
	ldr	ip, [sp, #8]
	mov	r0, r4
	mov	r1, ip
	bl	png_chunk_warning(PLT)
	str	r10, [r4, #460]
	b	.L517
.L597:
	mov	r5, r9
	mov	r9, r8
	ldr	r3, [r9]
	mov	r7, fp
	ldr	r8, [sp, #12]
	ldr	r2, [r4, #480]
.L530:
	mov	lr, #0
	add	r3, r3, r2
	mov	r1, r0
	str	lr, [r4, #480]
	mov	r0, r4
	str	r3, [r9]
	bl	png_zstream_error(PLT)
.L532:
	ldr	r1, [r9]
	str	r1, [sp, #16]
	cbz	r1, .L600
.L533:
	ldr	r5, [r4, #488]
.L535:
	movs	r3, #0
	ldr	r1, [r6]
	str	r3, [r4, #460]
	b	.L511
.L598:
	mov	r5, r9
	mov	r7, fp
	mov	r9, r8
	mov	r3, r2
	ldr	r8, [sp, #12]
	b	.L530
.L600:
	add	fp, sp, #128
	ldrb	lr, [fp, #1]	@ zero_extendqisi2
	ldrb	r10, [fp]	@ zero_extendqisi2
	add	r2, r4, #1064
	ldrb	ip, [fp, #3]	@ zero_extendqisi2
	mov	r1, r2
	ldrb	r3, [fp, #2]	@ zero_extendqisi2
	mov	r0, r4
	lsl	lr, lr, #16
	str	r2, [sp, #20]
	mov	r2, r5
	add	lr, lr, r10, lsl #24
	add	lr, lr, ip
	add	r3, lr, r3, lsl #8
	str	r3, [sp, #12]
	bl	png_icc_check_length(PLT)
	cbnz	r0, .L534
.L536:
	movs	r5, #0
	b	.L535
.L596:
	ldr	r3, .L604+36
.LPIC65:
	add	r3, pc
	str	r3, [r4, #488]
	b	.L532
.L534:
	ldrb	lr, [r4, #675]	@ zero_extendqisi2
	mov	r0, r4
	str	fp, [sp]
	mov	r2, r5
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #12]
	str	lr, [sp, #4]
	bl	png_icc_check_header(PLT)
	cmp	r0, #0
	beq	.L536
	ldrb	r2, [fp, #129]	@ zero_extendqisi2
	ldrb	r1, [fp, #128]	@ zero_extendqisi2
	ldrb	r3, [fp, #131]	@ zero_extendqisi2
	ldrb	r0, [fp, #130]	@ zero_extendqisi2
	lsls	r2, r2, #16
	ldr	r10, [r4, #1028]
	add	r2, r2, r1, lsl #24
	add	r3, r3, r2
	add	r0, r3, r0, lsl #8
	str	r0, [sp, #24]
	cmp	r10, #0
	beq	.L537
	ldr	r3, [r4, #1032]
	ldr	r0, [sp, #12]
	cmp	r0, r3
	bhi	.L601
.L538:
	mov	r1, fp
	add	r3, sp, #264
	movs	r2, #132
	mov	r0, r10
	str	r3, [sp, #16]
	bl	memcpy(PLT)
	ldr	r0, [sp, #24]
	movs	r2, #12
	movs	r3, #0
	str	r9, [sp]
	str	r3, [sp, #4]
	add	r1, sp, #264
	add	r3, r10, #132
	mul	fp, r2, r0
	mov	r0, r4
	mov	r2, r6
	str	fp, [r9]
	bl	png_inflate_read.constprop.3(PLT)
	ldr	r3, [r9]
	cmp	r3, #0
	bne	.L533
	str	r10, [sp]
	mov	r0, r4
	ldr	r1, [sp, #20]
	mov	r2, r5
	ldr	r3, [sp, #12]
	bl	png_icc_check_tag_table(PLT)
	cmp	r0, #0
	beq	.L536
	ldr	r1, [sp, #12]
	add	r3, fp, #132
	movs	r2, #1
	str	r9, [sp]
	str	r2, [sp, #4]
	add	r3, r3, r10
	sub	r0, r1, #132
	mov	r2, r6
	rsb	fp, fp, r0
	add	r1, sp, #264
	mov	r0, r4
	str	fp, [r9]
	bl	png_inflate_read.constprop.3(PLT)
	ldr	r3, [r6]
	cbz	r3, .L540
	ldr	r3, [r4, #452]
	lsls	r3, r3, #11
	bmi	.L602
	ldr	r5, .L604+40
.LPIC57:
	add	r5, pc
	b	.L535
.L588:
	ldr	r1, .L604+44
.LPIC60:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L602:
	ldr	r3, [r9]
	cbz	r3, .L547
	ldr	r5, .L604+48
.LPIC56:
	add	r5, pc
	b	.L535
.L540:
	ldr	r3, [r9]
	cbz	r3, .L548
	ldr	r5, .L604+52
.LPIC58:
	add	r5, pc
	b	.L535
.L547:
	ldr	r1, .L604+56
	mov	r0, r4
.LPIC66:
	add	r1, pc
	bl	png_chunk_warning(PLT)
.L548:
	ldr	r1, [r6]
	mov	r0, r4
	bl	png_crc_finish(PLT)
	mov	r0, r4
	ldr	r1, [sp, #20]
	mov	r2, r10
	ldr	r3, [r4, #512]
	bl	png_icc_set_sRGB(PLT)
	cbz	r7, .L542
	mov	r0, r4
	mov	r1, r7
	movs	r2, #16
	movs	r3, #0
	bl	png_free_data(PLT)
	mov	r0, r4
	mov	r1, r8
	bl	png_malloc_base(PLT)
	mov	r6, r0
	str	r0, [r7, #116]
	cbz	r0, .L543
	mov	r1, r5
	mov	r2, r8
	bl	memcpy(PLT)
	ldr	r2, [r7, #232]
	movs	r5, #0
	ldr	r3, [r7, #8]
	mov	r1, r7
	ldr	r0, [sp, #12]
	orr	r2, r2, #16
	str	r10, [r7, #120]
	orr	r3, r3, #4096
	str	r2, [r7, #232]
	str	r0, [r7, #124]
	mov	r0, r4
	str	r3, [r7, #8]
	str	r5, [r4, #1028]
	bl	png_colorspace_sync(PLT)
.L542:
	movs	r3, #0
	str	r3, [r4, #460]
	b	.L505
.L543:
	ldrh	r3, [r4, #1138]
	mov	r0, r4
	mov	r1, r7
	ldr	r5, .L604+60
	mvn	r3, r3, lsl #17
.LPIC51:
	add	r5, pc
	mvn	r3, r3, lsr #17
	strh	r3, [r4, #1138]	@ movhi
	bl	png_colorspace_sync(PLT)
	ldrh	r3, [r4, #1138]
	mov	r1, r7
	str	r6, [r4, #460]
	mov	r0, r4
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	strh	r3, [r4, #1138]	@ movhi
	bl	png_colorspace_sync(PLT)
	b	.L544
.L601:
	ldr	r1, [sp, #16]
	mov	r0, r4
	ldr	r2, [sp, #16]
	str	r1, [r4, #1028]
	mov	r1, r10
	str	r2, [r4, #1032]
	bl	png_free(PLT)
.L537:
	mov	r0, r4
	ldr	r1, [sp, #12]
	bl	png_malloc_base(PLT)
	mov	r10, r0
	cbz	r0, .L603
	ldr	r3, [sp, #12]
	str	r10, [r4, #1028]
	str	r3, [r4, #1032]
	b	.L538
.L603:
	ldr	r5, .L604+64
.LPIC59:
	add	r5, pc
	b	.L535
.L605:
	.align	2
.L604:
	.word	.LC19-(.LPIC50+4)
	.word	.LC21-(.LPIC54+4)
	.word	.LC10-(.LPIC61+4)
	.word	.LC24-(.LPIC62+4)
	.word	.LC22-(.LPIC55+4)
	.word	.LC22-(.LPIC53+4)
	.word	.LC21-(.LPIC52+4)
	.word	.LC4-(.LPIC64+4)
	.word	.LC3-(.LPIC63+4)
	.word	.LC2-(.LPIC65+4)
	.word	.LC5-(.LPIC57+4)
	.word	.LC12-(.LPIC60+4)
	.word	.LC23-(.LPIC56+4)
	.word	.LC23-(.LPIC58+4)
	.word	.LC5-(.LPIC66+4)
	.word	.LC20-(.LPIC51+4)
	.word	.LC20-(.LPIC59+4)
	.size	png_handle_iCCP, .-png_handle_iCCP
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.section	.text.png_handle_sPLT,"ax",%progbits
	.align	2
	.global	png_handle_sPLT
	.thumb
	.thumb_func
	.type	png_handle_sPLT, %function
png_handle_sPLT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #996]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	sub	sp, sp, #16
	mov	r7, r1
	mov	r6, r2
	cbz	r3, .L607
	cmp	r3, #1
	beq	.L645
	subs	r3, r3, #1
	cmp	r3, #1
	str	r3, [r0, #996]
	beq	.L646
.L607:
	ldr	r3, [r4, #448]
	lsls	r2, r3, #31
	bpl	.L647
	ands	r3, r3, #4
	bne	.L648
	ldr	r8, [r4, #1028]
	adds	r5, r6, #1
	cmp	r8, #0
	beq	.L612
	ldr	r2, [r4, #1032]
	cmp	r5, r2
	bhi	.L649
.L613:
	mov	r0, r4
	mov	r1, r8
	mov	r2, r6
	bl	png_crc_read(PLT)
	mov	r0, r4
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L606
	strb	r0, [r8, r6]
	mov	r5, r8
	ldrb	r3, [r8]	@ zero_extendqisi2
	cbz	r3, .L614
.L615:
	ldrb	r3, [r5, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L615
.L614:
	subs	r3, r6, #2
	adds	r2, r5, #1
	add	r3, r3, r8
	cmp	r2, r3
	bhi	.L650
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	adds	r5, r5, #2
	rsb	r2, r5, r8
	add	r6, r6, r2
	cmp	r3, #8
	ite	ne
	movne	r9, #10
	moveq	r9, #6
	mov	r0, r6
	mov	r1, r9
	strb	r3, [sp, #4]
	bl	__aeabi_uidivmod(PLT)
	mov	r10, r1
	cmp	r1, #0
	bne	.L651
	mov	r0, r6
	mov	r1, r9
	bl	__aeabi_uidiv(PLT)
	movw	r2, #39321
	mov	r3, r0
	movt	r2, 6553
	cmp	r0, r2
	bhi	.L652
	add	r1, r0, r0, lsl #2
	mov	r0, r4
	str	r3, [sp, #12]
	lsls	r1, r1, #1
	bl	png_malloc_warn(PLT)
	str	r0, [sp, #8]
	cmp	r0, #0
	beq	.L620
	ldr	r6, [sp, #12]
	cmp	r6, #0
	ble	.L625
	ldrb	r2, [sp, #4]	@ zero_extendqisi2
	add	r3, r0, #8
	mov	r1, r10
	cmp	r2, #8
	beq	.L643
.L626:
	ldrb	r0, [r5]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	cmp	r1, r6
	add	r5, r5, #10
	add	r2, r2, r0, lsl #8
	strh	r2, [r3, #-8]	@ movhi
	ldrb	r0, [r5, #-8]	@ zero_extendqisi2
	ldrb	r2, [r5, #-7]	@ zero_extendqisi2
	add	r2, r2, r0, lsl #8
	strh	r2, [r3, #-6]	@ movhi
	ldrb	r0, [r5, #-6]	@ zero_extendqisi2
	ldrb	r2, [r5, #-5]	@ zero_extendqisi2
	add	r2, r2, r0, lsl #8
	strh	r2, [r3, #-4]	@ movhi
	ldrb	r0, [r5, #-4]	@ zero_extendqisi2
	ldrb	r2, [r5, #-3]	@ zero_extendqisi2
	add	r2, r2, r0, lsl #8
	strh	r2, [r3, #-2]	@ movhi
	ldrb	r0, [r5, #-2]	@ zero_extendqisi2
	ldrb	r2, [r5, #-1]	@ zero_extendqisi2
	add	r2, r2, r0, lsl #8
	strh	r2, [r3], #10	@ movhi
	blt	.L626
.L625:
	add	r2, sp, #16
	mov	r1, r7
	str	r8, [r2, #-16]!
	mov	r0, r4
	mov	r2, sp
	movs	r3, #1
	bl	png_set_sPLT(PLT)
	mov	r0, r4
	ldr	r1, [sp, #8]
	bl	png_free(PLT)
	b	.L606
.L648:
	mov	r1, r6
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L654
	mov	r0, r4
.LPIC77:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L606:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L646:
	ldr	r1, .L654+4
.LPIC75:
	add	r1, pc
	bl	png_warning(PLT)
	mov	r0, r4
.L645:
	mov	r1, r6
	bl	png_crc_finish(PLT)
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L649:
	str	r3, [r4, #1028]
	mov	r1, r8
	str	r3, [r4, #1032]
	mov	r0, r4
	bl	png_free(PLT)
.L612:
	mov	r0, r4
	mov	r1, r5
	bl	png_malloc_base(PLT)
	mov	r8, r0
	cbz	r0, .L653
	str	r8, [r4, #1028]
	str	r5, [r4, #1032]
	b	.L613
.L650:
	ldr	r1, .L654+8
	mov	r0, r4
.LPIC78:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L606
.L643:
	ldrb	r2, [r5]	@ zero_extendqisi2
	adds	r1, r1, #1
	cmp	r1, r6
	add	r5, r5, #6
	strh	r2, [r3, #-8]	@ movhi
	ldrb	r2, [r5, #-5]	@ zero_extendqisi2
	strh	r2, [r3, #-6]	@ movhi
	ldrb	r2, [r5, #-4]	@ zero_extendqisi2
	strh	r2, [r3, #-4]	@ movhi
	ldrb	r2, [r5, #-3]	@ zero_extendqisi2
	strh	r2, [r3, #-2]	@ movhi
	ldrb	r0, [r5, #-2]	@ zero_extendqisi2
	ldrb	r2, [r5, #-1]	@ zero_extendqisi2
	add	r2, r2, r0, lsl #8
	strh	r2, [r3], #10	@ movhi
	blt	.L643
	b	.L625
.L652:
	ldr	r1, .L654+12
	mov	r0, r4
.LPIC80:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L606
.L651:
	ldr	r1, .L654+16
	mov	r0, r4
.LPIC79:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L606
.L653:
	mov	r1, r6
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L654+20
	mov	r0, r4
.LPIC82:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L606
.L620:
	ldr	r1, .L654+24
	mov	r0, r4
.LPIC81:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L606
.L647:
	ldr	r1, .L654+28
	mov	r0, r4
.LPIC76:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L655:
	.align	2
.L654:
	.word	.LC10-(.LPIC77+4)
	.word	.LC25-(.LPIC75+4)
	.word	.LC26-(.LPIC78+4)
	.word	.LC28-(.LPIC80+4)
	.word	.LC27-(.LPIC79+4)
	.word	.LC20-(.LPIC82+4)
	.word	.LC29-(.LPIC81+4)
	.word	.LC12-(.LPIC76+4)
	.size	png_handle_sPLT, .-png_handle_sPLT
	.section	.text.png_handle_tRNS,"ax",%progbits
	.align	2
	.global	png_handle_tRNS
	.thumb
	.thumb_func
	.type	png_handle_tRNS, %function
png_handle_tRNS:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #268
	lsls	r7, r3, #31
	bpl	.L682
	lsls	r6, r3, #29
	mov	r5, r2
	bmi	.L667
	mov	r6, r1
	cbz	r1, .L660
	ldr	r2, [r1, #8]
	lsls	r2, r2, #27
	bmi	.L683
.L660:
	ldrb	r2, [r4, #675]	@ zero_extendqisi2
	cbnz	r2, .L661
	cmp	r5, #2
	beq	.L662
	mov	r1, r5
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L685
	mov	r0, r4
.LPIC86:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L661:
	cmp	r2, #2
	beq	.L684
	cmp	r2, #3
	bne	.L666
	lsls	r3, r3, #30
	bpl	.L667
	ldrh	r3, [r4, #660]
	cmp	r5, r3
	bhi	.L668
	subs	r3, r5, #1
	cmp	r3, #255
	bhi	.L668
	add	r7, sp, #8
	mov	r0, r4
	mov	r1, r7
	mov	r2, r5
	bl	png_crc_read(PLT)
	strh	r5, [r4, #668]	@ movhi
	b	.L663
.L667:
	mov	r1, r5
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L685+4
	mov	r0, r4
.LPIC84:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L656:
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L683:
	mov	r1, r5
	bl	png_crc_finish(PLT)
	ldr	r1, .L685+8
	mov	r0, r4
.LPIC85:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L662:
	add	r7, sp, #8
	mov	r2, r5
	mov	r1, r7
	mov	r0, r4
	bl	png_crc_read(PLT)
	ldrb	r2, [r7]	@ zero_extendqisi2
	movs	r1, #1
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	strh	r1, [r4, #668]	@ movhi
	add	r3, r3, r2, lsl #8
	strh	r3, [r4, #780]	@ movhi
.L663:
	mov	r0, r4
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cbz	r0, .L670
	movs	r3, #0
	strh	r3, [r4, #668]	@ movhi
	b	.L656
.L684:
	cmp	r5, #6
	beq	.L665
	mov	r1, r5
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L685+12
	mov	r0, r4
.LPIC87:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L656
.L668:
	mov	r1, r5
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L685+16
	mov	r0, r4
.LPIC88:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L656
.L666:
	mov	r1, r5
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L685+20
	mov	r0, r4
.LPIC89:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L656
.L670:
	add	r0, r4, #772
	ldrh	r3, [r4, #668]
	mov	r1, r6
	str	r0, [sp]
	mov	r2, r7
	mov	r0, r4
	bl	png_set_tRNS(PLT)
	b	.L656
.L665:
	add	r7, sp, #8
	mov	r2, r5
	mov	r1, r7
	mov	r0, r4
	bl	png_crc_read(PLT)
	ldrb	ip, [r7]	@ zero_extendqisi2
	mov	lr, #1
	ldrb	r0, [r7, #1]	@ zero_extendqisi2
	ldrb	r5, [r7, #2]	@ zero_extendqisi2
	ldrb	r2, [r7, #3]	@ zero_extendqisi2
	ldrb	r1, [r7, #4]	@ zero_extendqisi2
	ldrb	r3, [r7, #5]	@ zero_extendqisi2
	add	r0, r0, ip, lsl #8
	strh	lr, [r4, #668]	@ movhi
	add	r2, r2, r5, lsl #8
	strh	r0, [r4, #774]	@ movhi
	add	r3, r3, r1, lsl #8
	strh	r2, [r4, #776]	@ movhi
	strh	r3, [r4, #778]	@ movhi
	b	.L663
.L682:
	ldr	r1, .L685+24
.LPIC83:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L686:
	.align	2
.L685:
	.word	.LC11-(.LPIC86+4)
	.word	.LC10-(.LPIC84+4)
	.word	.LC13-(.LPIC85+4)
	.word	.LC11-(.LPIC87+4)
	.word	.LC11-(.LPIC88+4)
	.word	.LC30-(.LPIC89+4)
	.word	.LC12-(.LPIC83+4)
	.size	png_handle_tRNS, .-png_handle_tRNS
	.section	.text.png_handle_bKGD,"ax",%progbits
	.align	2
	.global	png_handle_bKGD
	.thumb
	.thumb_func
	.type	png_handle_bKGD, %function
png_handle_bKGD:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #28
	lsls	r5, r3, #31
	bpl	.L717
	lsls	r7, r3, #29
	bmi	.L689
	mov	r5, r1
	ldrb	r1, [r0, #675]	@ zero_extendqisi2
	cmp	r1, #3
	beq	.L718
.L690:
	cbz	r5, .L692
	ldr	r3, [r5, #8]
	lsls	r0, r3, #26
	bmi	.L719
.L692:
	cmp	r1, #3
	it	eq
	moveq	r3, #1
	beq	.L693
	tst	r1, #2
	ite	eq
	moveq	r3, #2
	movne	r3, #6
.L693:
	cmp	r2, r3
	beq	.L694
	mov	r1, r2
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L722
	mov	r0, r4
.LPIC93:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L687:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L718:
	lsls	r6, r3, #30
	bmi	.L690
.L689:
	mov	r1, r2
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L722+4
	mov	r0, r4
.LPIC91:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L719:
	mov	r1, r2
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L722+8
	mov	r0, r4
.LPIC92:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L694:
	mov	r0, r4
	mov	r1, sp
	bl	png_crc_read(PLT)
	mov	r0, r4
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L687
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L720
	and	r3, r3, #2
	and	r2, r3, #255
	cbnz	r3, .L700
	ldrb	r1, [sp]	@ zero_extendqisi2
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	strb	r2, [sp, #8]
	add	r3, r3, r1, lsl #8
	uxth	r3, r3
	strh	r3, [sp, #16]	@ movhi
	strh	r3, [sp, #14]	@ movhi
	strh	r3, [sp, #12]	@ movhi
	strh	r3, [sp, #10]	@ movhi
.L699:
	mov	r0, r4
	mov	r1, r5
	add	r2, sp, #8
	bl	png_set_bKGD(PLT)
	b	.L687
.L720:
	ldrb	r3, [sp]	@ zero_extendqisi2
	strb	r3, [sp, #8]
	cbz	r5, .L696
	ldrh	r2, [r5, #20]
	cbz	r2, .L696
	cmp	r2, r3
	bls	.L721
	ldr	r2, [r4, #656]
	add	r3, r3, r3, lsl #1
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	add	r3, r3, r2
	strh	r1, [sp, #10]	@ movhi
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	strh	r2, [sp, #12]	@ movhi
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	strh	r3, [sp, #14]	@ movhi
.L698:
	movs	r3, #0
	strh	r3, [sp, #16]	@ movhi
	b	.L699
.L700:
	ldrb	lr, [sp]	@ zero_extendqisi2
	ldrb	r6, [sp, #1]	@ zero_extendqisi2
	ldrb	r7, [sp, #2]	@ zero_extendqisi2
	ldrb	r2, [sp, #3]	@ zero_extendqisi2
	ldrb	r1, [sp, #4]	@ zero_extendqisi2
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	add	r6, r6, lr, lsl #8
	strb	r0, [sp, #8]
	add	r2, r2, r7, lsl #8
	strh	r0, [sp, #16]	@ movhi
	strh	r6, [sp, #10]	@ movhi
	add	r3, r3, r1, lsl #8
	strh	r2, [sp, #12]	@ movhi
	strh	r3, [sp, #14]	@ movhi
	b	.L699
.L696:
	movs	r3, #0
	strh	r3, [sp, #14]	@ movhi
	strh	r3, [sp, #12]	@ movhi
	strh	r3, [sp, #10]	@ movhi
	b	.L698
.L721:
	ldr	r1, .L722+12
	mov	r0, r4
.LPIC94:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L687
.L717:
	ldr	r1, .L722+16
.LPIC90:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L723:
	.align	2
.L722:
	.word	.LC11-(.LPIC93+4)
	.word	.LC10-(.LPIC91+4)
	.word	.LC13-(.LPIC92+4)
	.word	.LC31-(.LPIC94+4)
	.word	.LC12-(.LPIC90+4)
	.size	png_handle_bKGD, .-png_handle_bKGD
	.section	.text.png_handle_hIST,"ax",%progbits
	.align	2
	.global	png_handle_hIST
	.thumb
	.thumb_func
	.type	png_handle_hIST, %function
png_handle_hIST:
	@ args = 0, pretend = 0, frame = 520
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	sub	sp, sp, #524
	lsls	r4, r3, #31
	bpl	.L746
	and	r3, r3, #6
	cmp	r3, #2
	beq	.L726
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L750
	mov	r0, r6
.LPIC96:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L724:
	add	sp, sp, #524
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L726:
	mov	r9, r1
	cbz	r1, .L728
	ldr	r3, [r1, #8]
	lsls	r3, r3, #25
	bmi	.L747
.L728:
	ldrh	r8, [r6, #660]
	cmp	r8, r2, lsr #1
	beq	.L748
.L729:
	mov	r1, r2
	mov	r0, r6
	bl	png_crc_finish(PLT)
	ldr	r1, .L750+4
	mov	r0, r6
.LPIC98:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #524
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L748:
	cmp	r8, #256
	bhi	.L729
	cmp	r8, #0
	beq	.L734
	cmp	r8, #16
	sub	fp, r8, #15
	bls	.L737
	add	r7, sp, #28
	mov	r10, #0
	add	r4, sp, #4
	b	.L733
.L749:
	mov	r10, r5
.L733:
	mov	r0, r6
	mov	r1, r4
	movs	r2, #2
	pld	[r7]
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r5, r10, #16
	add	r10, r10, #17
	adds	r7, r7, #32
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-52]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-50]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-48]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-46]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-44]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-42]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-40]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-38]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-36]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-34]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-32]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-30]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-28]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r4
	movs	r2, #2
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-26]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	lr, [r4]	@ zero_extendqisi2
	movs	r2, #2
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r0, r6
	mov	r1, r4
	add	r3, r3, lr, lsl #8
	strh	r3, [r7, #-24]	@ movhi
	bl	png_crc_read(PLT)
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	fp, r10
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	add	r3, r3, r2, lsl #8
	strh	r3, [r7, #-22]	@ movhi
	bhi	.L749
.L732:
	add	r3, sp, #520
	add	r7, r3, r5, lsl #1
	subw	r7, r7, #514
.L735:
	movs	r2, #2
	mov	r0, r6
	mov	r1, r4
	adds	r5, r5, #1
	bl	png_crc_read(PLT)
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r8, r5
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	add	r3, r3, r2, lsl #8
	strh	r3, [r7, #2]!	@ movhi
	bhi	.L735
.L734:
	mov	r0, r6
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L724
	mov	r0, r6
	mov	r1, r9
	add	r2, sp, #8
	bl	png_set_hIST(PLT)
	b	.L724
.L747:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L750+8
	mov	r0, r6
.LPIC97:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #524
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L737:
	movs	r5, #0
	add	r4, sp, #4
	b	.L732
.L746:
	ldr	r1, .L750+12
.LPIC95:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L751:
	.align	2
.L750:
	.word	.LC10-(.LPIC96+4)
	.word	.LC11-(.LPIC98+4)
	.word	.LC13-(.LPIC97+4)
	.word	.LC12-(.LPIC95+4)
	.size	png_handle_hIST, .-png_handle_hIST
	.section	.text.png_handle_pHYs,"ax",%progbits
	.align	2
	.global	png_handle_pHYs
	.thumb
	.thumb_func
	.type	png_handle_pHYs, %function
png_handle_pHYs:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #28
	lsls	r6, r3, #31
	bpl	.L766
	lsls	r5, r3, #29
	bmi	.L767
	mov	r5, r1
	cbz	r1, .L756
	ldr	r3, [r1, #8]
	lsls	r3, r3, #24
	bmi	.L768
.L756:
	cmp	r2, #9
	beq	.L757
	mov	r1, r2
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L769
	mov	r0, r4
.LPIC102:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L752:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L767:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L769+4
	mov	r0, r4
.LPIC100:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L768:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L769+8
	mov	r0, r4
.LPIC101:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L757:
	mov	r0, r4
	add	r1, sp, #8
	bl	png_crc_read(PLT)
	mov	r0, r4
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L752
	ldrb	r2, [sp, #9]	@ zero_extendqisi2
	mov	r1, r5
	ldrb	r3, [sp, #13]	@ zero_extendqisi2
	mov	r0, r4
	ldrb	r5, [sp, #8]	@ zero_extendqisi2
	ldrb	r4, [sp, #12]	@ zero_extendqisi2
	lsls	r2, r2, #16
	ldrb	lr, [sp, #11]	@ zero_extendqisi2
	lsls	r3, r3, #16
	ldrb	r6, [sp, #10]	@ zero_extendqisi2
	ldrb	r7, [sp, #15]	@ zero_extendqisi2
	add	r2, r2, r5, lsl #24
	ldrb	r5, [sp, #14]	@ zero_extendqisi2
	add	r3, r3, r4, lsl #24
	ldrb	r4, [sp, #16]	@ zero_extendqisi2
	add	r2, r2, lr
	add	r3, r3, r7
	add	r2, r2, r6, lsl #8
	add	r3, r3, r5, lsl #8
	str	r4, [sp]
	bl	png_set_pHYs(PLT)
	b	.L752
.L766:
	ldr	r1, .L769+12
.LPIC99:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L770:
	.align	2
.L769:
	.word	.LC11-(.LPIC102+4)
	.word	.LC10-(.LPIC100+4)
	.word	.LC13-(.LPIC101+4)
	.word	.LC12-(.LPIC99+4)
	.size	png_handle_pHYs, .-png_handle_pHYs
	.section	.text.png_handle_oFFs,"ax",%progbits
	.align	2
	.global	png_handle_oFFs
	.thumb
	.thumb_func
	.type	png_handle_oFFs, %function
png_handle_oFFs:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	sub	sp, sp, #24
	lsls	r6, r3, #31
	bpl	.L789
	lsls	r5, r3, #29
	bmi	.L790
	mov	r5, r1
	cbz	r1, .L775
	ldr	r3, [r1, #8]
	lsls	r3, r3, #23
	bmi	.L791
.L775:
	cmp	r2, #9
	beq	.L776
	mov	r1, r2
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L792
	mov	r0, r4
.LPIC106:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L771:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L790:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L792+4
	mov	r0, r4
.LPIC104:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L791:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L792+8
	mov	r0, r4
.LPIC105:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L776:
	mov	r0, r4
	add	r1, sp, #8
	bl	png_crc_read(PLT)
	mov	r0, r4
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L771
	ldrb	r0, [sp, #9]	@ zero_extendqisi2
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	ldrb	r1, [sp, #11]	@ zero_extendqisi2
	ldrb	r6, [sp, #13]	@ zero_extendqisi2
	lsls	r0, r0, #16
	ldrb	r2, [sp, #10]	@ zero_extendqisi2
	add	r3, r0, r3, lsl #24
	ldrb	r0, [sp, #15]	@ zero_extendqisi2
	lsls	r6, r6, #16
	add	r3, r3, r1
	ldrb	r1, [sp, #12]	@ zero_extendqisi2
	add	r2, r3, r2, lsl #8
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	add	r1, r6, r1, lsl #24
	ldrb	r6, [sp, #16]	@ zero_extendqisi2
	add	r1, r1, r0
	mov	r0, r4
	add	r3, r1, r3, lsl #8
	str	r6, [sp]
	mov	r1, r5
	bl	png_set_oFFs(PLT)
	b	.L771
.L789:
	ldr	r1, .L792+12
.LPIC103:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L793:
	.align	2
.L792:
	.word	.LC11-(.LPIC106+4)
	.word	.LC10-(.LPIC104+4)
	.word	.LC13-(.LPIC105+4)
	.word	.LC12-(.LPIC103+4)
	.size	png_handle_oFFs, .-png_handle_oFFs
	.section	.text.png_handle_pCAL,"ax",%progbits
	.align	2
	.global	png_handle_pCAL
	.thumb
	.thumb_func
	.type	png_handle_pCAL, %function
png_handle_pCAL:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	sub	sp, sp, #44
	lsls	r4, r3, #31
	bpl	.L848
	mov	r9, r2
	lsls	r2, r3, #29
	bmi	.L849
	mov	r8, r1
	cbz	r1, .L797
	ldr	r3, [r1, #8]
	lsls	r3, r3, #21
	bmi	.L850
.L797:
	ldr	r7, [r6, #1028]
	add	r4, r9, #1
	cmp	r7, #0
	beq	.L798
	ldr	r3, [r6, #1032]
	cmp	r4, r3
	bhi	.L851
.L799:
	mov	r0, r6
	mov	r1, r7
	mov	r2, r9
	bl	png_crc_read(PLT)
	mov	r0, r6
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L794
	strb	r0, [r7, r9]
	mov	r4, r7
	ldrb	r3, [r7]	@ zero_extendqisi2
	add	r9, r9, r7
	cbz	r3, .L801
.L802:
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L802
.L801:
	add	r3, r4, #12
	ldr	r1, .L855
	cmp	r9, r3
	mov	r0, r6
.LPIC118:
	add	r1, pc
	bls	.L847
	ldrb	r0, [r4, #2]	@ zero_extendqisi2
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldrb	r2, [r4, #3]	@ zero_extendqisi2
	lsls	r0, r0, #16
	ldrb	ip, [r4, #7]	@ zero_extendqisi2
	ldrb	r10, [r4, #10]	@ zero_extendqisi2
	add	r3, r0, r3, lsl #24
	add	r3, r3, r1
	ldrb	r1, [r4, #6]	@ zero_extendqisi2
	add	r2, r3, r2, lsl #8
	ldrb	r3, [r4, #5]	@ zero_extendqisi2
	str	r2, [sp, #32]
	lsls	r1, r1, #16
	ldrb	r2, [r4, #8]	@ zero_extendqisi2
	add	r3, r1, r3, lsl #24
	add	r3, r3, r2
	ldrb	r2, [r4, #9]	@ zero_extendqisi2
	add	ip, r3, ip, lsl #8
	subs	r3, r10, #2
	it	ne
	movne	r3, #1
	cmp	r2, #0
	it	ne
	movne	r3, #0
	cmp	r3, #0
	bne	.L808
	subs	r3, r2, #1
	cmp	r3, #1
	ite	hi
	movhi	r3, #0
	movls	r3, #1
	cmp	r10, #3
	it	eq
	moveq	r3, #0
	cmp	r3, #0
	bne	.L808
	subs	r3, r10, #4
	it	ne
	movne	r3, #1
	cmp	r2, #3
	it	ne
	movne	r3, #0
	cmp	r3, #0
	bne	.L808
	cmp	r2, #3
	bhi	.L852
.L810:
	ldrb	r3, [r4, #11]	@ zero_extendqisi2
	adds	r4, r4, #11
	str	r4, [sp, #36]
	cbz	r3, .L811
.L812:
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L812
.L811:
	mov	r0, r6
	lsl	r1, r10, #2
	str	r2, [sp, #24]
	str	ip, [sp, #28]
	bl	png_malloc_warn(PLT)
	ldr	r2, [sp, #24]
	mov	fp, r0
	ldr	ip, [sp, #28]
	cmp	r0, #0
	beq	.L813
	subs	r0, r0, #4
	mov	lr, #0
	add	r1, r9, #1
	cmp	r10, #0
	beq	.L815
.L820:
	adds	r3, r4, #1
	cmp	r9, r3
	str	r3, [r0, #4]!
	bcc	.L816
	ldrb	r5, [r4, #1]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L823
	adds	r3, r4, #2
	b	.L818
.L853:
	ldrb	r5, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	cmp	r5, #0
	beq	.L817
.L818:
	cmp	r3, r1
	mov	r4, r3
	bne	.L853
.L816:
	mov	r1, fp
	mov	r0, r6
	bl	png_free(PLT)
	ldr	r1, .L855+4
	mov	r0, r6
.LPIC123:
	add	r1, pc
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_chunk_benign_error(PLT)
.L808:
	ldr	r1, .L855+8
	mov	r0, r6
.LPIC119:
	add	r1, pc
.L847:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_chunk_benign_error(PLT)
.L851:
	movs	r3, #0
	mov	r1, r7
	str	r3, [r6, #1028]
	mov	r0, r6
	str	r3, [r6, #1032]
	bl	png_free(PLT)
.L798:
	mov	r0, r6
	mov	r1, r4
	bl	png_malloc_base(PLT)
	mov	r7, r0
	cbz	r0, .L854
	str	r7, [r6, #1028]
	str	r4, [r6, #1032]
	b	.L799
.L849:
	mov	r1, r9
	bl	png_crc_finish(PLT)
	ldr	r1, .L855+12
	mov	r0, r6
.LPIC116:
	add	r1, pc
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_chunk_benign_error(PLT)
.L854:
	mov	r1, r9
	mov	r0, r6
	bl	png_crc_finish(PLT)
	ldr	r1, .L855+16
	mov	r0, r6
.LPIC122:
	add	r1, pc
	b	.L847
.L850:
	mov	r1, r9
	bl	png_crc_finish(PLT)
	ldr	r1, .L855+20
	mov	r0, r6
.LPIC117:
	add	r1, pc
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_chunk_benign_error(PLT)
.L794:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L852:
	ldr	r1, .L855+24
	mov	r0, r6
	str	r2, [sp, #24]
	str	ip, [sp, #28]
.LPIC120:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	ldr	ip, [sp, #28]
	ldr	r2, [sp, #24]
	b	.L810
.L813:
	ldr	r1, .L855+28
	mov	r0, r6
.LPIC121:
	add	r1, pc
	b	.L847
.L823:
	mov	r4, r3
.L817:
	add	lr, lr, #1
	cmp	lr, r10
	blt	.L820
.L815:
	ldr	r0, [sp, #36]
	mov	r1, r8
	str	r2, [sp, #4]
	mov	r2, r7
	str	ip, [sp]
	str	r0, [sp, #12]
	mov	r0, r6
	str	r10, [sp, #8]
	ldr	r3, [sp, #32]
	str	fp, [sp, #16]
	bl	png_set_pCAL(PLT)
	mov	r0, r6
	mov	r1, fp
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_free(PLT)
.L848:
	ldr	r1, .L855+32
.LPIC115:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L856:
	.align	2
.L855:
	.word	.LC11-(.LPIC118+4)
	.word	.LC34-(.LPIC123+4)
	.word	.LC32-(.LPIC119+4)
	.word	.LC10-(.LPIC116+4)
	.word	.LC20-(.LPIC122+4)
	.word	.LC13-(.LPIC117+4)
	.word	.LC33-(.LPIC120+4)
	.word	.LC20-(.LPIC121+4)
	.word	.LC12-(.LPIC115+4)
	.size	png_handle_pCAL, .-png_handle_pCAL
	.section	.text.png_handle_sCAL,"ax",%progbits
	.align	2
	.global	png_handle_sCAL
	.thumb
	.thumb_func
	.type	png_handle_sCAL, %function
png_handle_sCAL:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	sub	sp, sp, #24
	lsls	r5, r3, #31
	bpl	.L888
	mov	r5, r2
	lsls	r2, r3, #29
	bmi	.L889
	mov	r6, r1
	cbz	r1, .L861
	ldr	r3, [r1, #8]
	lsls	r3, r3, #17
	bmi	.L890
.L861:
	cmp	r5, #3
	bhi	.L862
	mov	r1, r5
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L893
	mov	r0, r4
.LPIC127:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L857:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L862:
	ldr	r7, [r4, #1028]
	add	r8, r5, #1
	cmp	r7, #0
	beq	.L863
	ldr	r3, [r4, #1032]
	cmp	r8, r3
	bhi	.L891
.L864:
	mov	r0, r4
	mov	r1, r7
	mov	r2, r5
	bl	png_crc_read(PLT)
	movs	r1, #0
	mov	r0, r4
	strb	r1, [r7, r5]
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L857
	ldrb	r3, [r7]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #1
	bls	.L865
	ldr	r1, .L893+4
	mov	r0, r4
.LPIC128:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L857
.L889:
	mov	r1, r5
	bl	png_crc_finish(PLT)
	ldr	r1, .L893+8
	mov	r0, r4
.LPIC125:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L890:
	mov	r1, r5
	bl	png_crc_finish(PLT)
	ldr	r1, .L893+12
	mov	r0, r4
.LPIC126:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L891:
	movs	r3, #0
	mov	r1, r7
	str	r3, [r4, #1028]
	mov	r0, r4
	str	r3, [r4, #1032]
	bl	png_free(PLT)
.L863:
	mov	r0, r4
	mov	r1, r8
	bl	png_malloc_base(PLT)
	mov	r7, r0
	cbz	r0, .L892
	str	r7, [r4, #1028]
	str	r8, [r4, #1032]
	b	.L864
.L865:
	add	r8, sp, #24
	add	r9, sp, #8
	str	r0, [r8, #-8]!
	mov	lr, #1
	mov	r3, r9
	mov	r2, r8
	mov	r0, r7
	mov	r1, r5
	str	lr, [sp, #8]
	bl	png_check_fp_number(PLT)
	cbz	r0, .L868
	ldr	r2, [sp, #8]
	cmp	r5, r2
	bls	.L868
	add	r10, r2, #1
	str	r10, [sp, #8]
	ldrb	lr, [r7, r2]	@ zero_extendqisi2
	cmp	lr, #0
	bne	.L868
	ldr	r3, [sp, #16]
	and	r3, r3, #392
	cmp	r3, #264
	beq	.L869
	ldr	r1, .L893+16
	mov	r0, r4
.LPIC130:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L857
.L868:
	ldr	r1, .L893+20
	mov	r0, r4
.LPIC129:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L857
.L892:
	ldr	r1, .L893+24
	mov	r0, r4
.LPIC133:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	png_crc_finish(PLT)
	b	.L857
.L869:
	mov	r2, r8
	mov	r3, r9
	mov	r0, r7
	mov	r1, r5
	str	lr, [sp, #16]
	bl	png_check_fp_number(PLT)
	cbz	r0, .L870
	ldr	r3, [sp, #8]
	cmp	r3, r5
	beq	.L871
.L870:
	ldr	r1, .L893+28
	mov	r0, r4
.LPIC131:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L857
.L888:
	ldr	r1, .L893+32
.LPIC124:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L871:
	ldr	r3, [sp, #16]
	and	r3, r3, #392
	cmp	r3, #264
	beq	.L872
	ldr	r1, .L893+36
	mov	r0, r4
.LPIC132:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L857
.L872:
	mov	r3, r7
	add	r7, r7, r10
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	mov	r0, r4
	mov	r1, r6
	str	r7, [sp]
	bl	png_set_sCAL_s(PLT)
	b	.L857
.L894:
	.align	2
.L893:
	.word	.LC11-(.LPIC127+4)
	.word	.LC35-(.LPIC128+4)
	.word	.LC10-(.LPIC125+4)
	.word	.LC13-(.LPIC126+4)
	.word	.LC37-(.LPIC130+4)
	.word	.LC36-(.LPIC129+4)
	.word	.LC20-(.LPIC133+4)
	.word	.LC38-(.LPIC131+4)
	.word	.LC12-(.LPIC124+4)
	.word	.LC39-(.LPIC132+4)
	.size	png_handle_sCAL, .-png_handle_sCAL
	.section	.text.png_handle_tIME,"ax",%progbits
	.align	2
	.global	png_handle_tIME
	.thumb
	.thumb_func
	.type	png_handle_tIME, %function
png_handle_tIME:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #20
	lsls	r7, r3, #31
	bpl	.L912
	mov	r5, r1
	cbz	r1, .L897
	ldr	r1, [r1, #8]
	lsls	r6, r1, #22
	bmi	.L913
.L897:
	lsls	r1, r3, #29
	itt	mi
	orrmi	r3, r3, #8
	strmi	r3, [r4, #448]
	cmp	r2, #7
	beq	.L900
	mov	r1, r2
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L914
	mov	r0, r4
.LPIC136:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L895:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L913:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L914+4
	mov	r0, r4
.LPIC135:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L900:
	mov	r0, r4
	mov	r1, sp
	bl	png_crc_read(PLT)
	mov	r0, r4
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cmp	r0, #0
	bne	.L895
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	mov	r0, r4
	ldrb	lr, [sp]	@ zero_extendqisi2
	mov	r1, r5
	ldrb	r7, [sp, #6]	@ zero_extendqisi2
	add	r2, sp, #16
	ldrb	r6, [sp, #5]	@ zero_extendqisi2
	ldrb	r5, [sp, #4]	@ zero_extendqisi2
	add	lr, r3, lr, lsl #8
	ldrb	r4, [sp, #3]	@ zero_extendqisi2
	ldrb	r3, [sp, #2]	@ zero_extendqisi2
	strh	lr, [r2, #-8]!	@ movhi
	strb	r7, [sp, #14]
	strb	r6, [sp, #13]
	strb	r5, [sp, #12]
	strb	r4, [sp, #11]
	strb	r3, [sp, #10]
	bl	png_set_tIME(PLT)
	b	.L895
.L912:
	ldr	r1, .L914+8
.LPIC134:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L915:
	.align	2
.L914:
	.word	.LC11-(.LPIC136+4)
	.word	.LC13-(.LPIC135+4)
	.word	.LC12-(.LPIC134+4)
	.size	png_handle_tIME, .-png_handle_tIME
	.section	.text.png_handle_tEXt,"ax",%progbits
	.align	2
	.global	png_handle_tEXt
	.thumb
	.thumb_func
	.type	png_handle_tEXt, %function
png_handle_tEXt:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #996]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	sp, sp, #32
	mov	r7, r1
	mov	r5, r2
	cbz	r3, .L917
	cmp	r3, #1
	beq	.L949
	subs	r3, r3, #1
	cmp	r3, #1
	str	r3, [r0, #996]
	beq	.L950
.L917:
	ldr	r3, [r4, #448]
	lsls	r1, r3, #31
	bpl	.L951
	ldr	r6, [r4, #1028]
	lsls	r2, r3, #29
	it	mi
	orrmi	r3, r3, #8
	add	r8, r5, #1
	it	mi
	strmi	r3, [r4, #448]
	cmp	r6, #0
	beq	.L922
	ldr	r3, [r4, #1032]
	cmp	r8, r3
	bhi	.L952
.L923:
	mov	r0, r4
	mov	r1, r6
	mov	r2, r5
	bl	png_crc_read(PLT)
	mov	r0, r4
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cbnz	r0, .L916
	strb	r0, [r6, r5]
	adds	r2, r6, r5
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L931
	mov	r3, r6
.L925:
	ldrb	r5, [r3, #1]!	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L925
.L924:
	cmp	r3, r2
	mov	r1, #-1
	it	ne
	addne	r3, r3, #1
	movs	r2, #0
	mov	r0, r3
	str	r3, [sp, #8]
	str	r1, [sp]
	str	r2, [sp, #20]
	str	r2, [sp, #24]
	str	r2, [sp, #16]
	str	r6, [sp, #4]
	bl	strlen(PLT)
	mov	r1, r7
	str	r0, [sp, #12]
	mov	r2, sp
	mov	r0, r4
	movs	r3, #1
	bl	png_set_text_2(PLT)
	cbnz	r0, .L953
.L916:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L952:
	movs	r3, #0
	mov	r1, r6
	str	r3, [r4, #1028]
	mov	r0, r4
	str	r3, [r4, #1032]
	bl	png_free(PLT)
.L922:
	mov	r0, r4
	mov	r1, r8
	bl	png_malloc_base(PLT)
	mov	r6, r0
	cbz	r0, .L954
	str	r6, [r4, #1028]
	str	r8, [r4, #1032]
	b	.L923
.L953:
	ldr	r1, .L955
	mov	r0, r4
.LPIC141:
	add	r1, pc
	bl	png_warning(PLT)
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L949:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	b	.L916
.L950:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L955+4
	mov	r0, r4
.LPIC137:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L916
.L931:
	mov	r3, r6
	b	.L924
.L954:
	ldr	r1, .L955+8
	mov	r0, r4
.LPIC139:
	add	r1, pc
	bl	png_chunk_warning(PLT)
	ldr	r1, .L955+12
	mov	r0, r4
.LPIC140:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L916
.L951:
	ldr	r1, .L955+16
	mov	r0, r4
.LPIC138:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L956:
	.align	2
.L955:
	.word	.LC42-(.LPIC141+4)
	.word	.LC40-(.LPIC137+4)
	.word	.LC41-(.LPIC139+4)
	.word	.LC20-(.LPIC140+4)
	.word	.LC12-(.LPIC138+4)
	.size	png_handle_tEXt, .-png_handle_tEXt
	.section	.text.png_handle_zTXt,"ax",%progbits
	.align	2
	.global	png_handle_zTXt
	.thumb
	.thumb_func
	.type	png_handle_zTXt, %function
png_handle_zTXt:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #996]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r0
	sub	sp, sp, #32
	mov	r10, r1
	mov	r7, r2
	cbz	r3, .L958
	cmp	r3, #1
	beq	.L1002
	subs	r3, r3, #1
	cmp	r3, #1
	str	r3, [r0, #996]
	beq	.L1003
.L958:
	ldr	r3, [r8, #448]
	lsls	r1, r3, #31
	bpl	.L1004
	ldr	r9, [r8, #1028]
	lsls	r2, r3, #29
	itt	mi
	orrmi	r3, r3, #8
	strmi	r3, [r8, #448]
	cmp	r9, #0
	beq	.L963
	ldr	r3, [r8, #1032]
	cmp	r7, r3
	bhi	.L1005
.L964:
	mov	r0, r8
	mov	r1, r9
	mov	r2, r7
	bl	png_crc_read(PLT)
	mov	r0, r8
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cbnz	r0, .L957
	cmp	r7, #0
	beq	.L978
	ldrb	r3, [r9]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L979
	mov	r3, r0
	mov	r5, r9
	b	.L970
.L967:
	ldrb	r6, [r5, #1]!	@ zero_extendqisi2
	cbz	r6, .L969
	mov	r3, r4
.L970:
	adds	r4, r3, #1
	cmp	r4, r7
	bne	.L967
.L969:
	cmp	r3, #78
	bhi	.L1006
	adds	r2, r3, #4
	cmp	r7, r2
	bcs	.L1007
	ldr	r1, .L1010
	mov	r0, r8
.LPIC144:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L957:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L1005:
	movs	r3, #0
	mov	r1, r9
	str	r3, [r8, #1028]
	mov	r0, r8
	str	r3, [r8, #1032]
	bl	png_free(PLT)
.L963:
	mov	r0, r8
	mov	r1, r7
	bl	png_malloc_base(PLT)
	mov	r9, r0
	cbz	r0, .L1008
	str	r9, [r8, #1028]
	str	r7, [r8, #1032]
	b	.L964
.L1006:
	ldr	r1, .L1010+4
.LPIC147:
	add	r1, pc
.L977:
	mov	r0, r8
	bl	png_chunk_benign_error(PLT)
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L1007:
	add	r9, r9, r3
	ldr	r1, .L1010+8
	ldrb	r5, [r9, #2]	@ zero_extendqisi2
.LPIC143:
	add	r1, pc
	cmp	r5, #0
	bne	.L977
	add	r9, r3, #3
	mov	r2, #-1
	add	r3, sp, #32
	mov	r1, r7
	str	r2, [r3, #-32]!
	mov	r0, r8
	mov	r2, r9
	mov	r3, sp
	bl	png_decompress_chunk.constprop.4(PLT)
	cmp	r0, #1
	beq	.L1009
	ldr	r1, [r8, #488]
	cmp	r1, #0
	beq	.L957
	b	.L977
.L1008:
	mov	r1, r7
	mov	r0, r8
	bl	png_crc_finish(PLT)
	ldr	r1, .L1010+12
	mov	r0, r8
.LPIC150:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L957
.L1002:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	b	.L957
.L1003:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L1010+16
	mov	r0, r8
.LPIC148:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L957
.L978:
	ldr	r1, .L1010+20
.LPIC146:
	add	r1, pc
	b	.L977
.L979:
	ldr	r1, .L1010+24
.LPIC145:
	add	r1, pc
	b	.L977
.L1009:
	ldr	r7, [r8, #1028]
	mov	r1, r10
	ldr	r6, [sp]
	mov	r3, r0
	add	r2, sp, #4
	mov	r0, r8
	add	r4, r4, r7
	add	r9, r9, r7
	add	r6, r6, r4
	strb	r5, [r6, #2]
	ldr	r4, [sp]
	str	r9, [sp, #12]
	str	r7, [sp, #8]
	str	r5, [sp, #4]
	str	r5, [sp, #20]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	r4, [sp, #16]
	bl	png_set_text_2(PLT)
	ldr	r1, .L1010+28
.LPIC142:
	add	r1, pc
	cmp	r0, #0
	bne	.L977
	b	.L957
.L1004:
	ldr	r1, .L1010+32
	mov	r0, r8
.LPIC149:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L1011:
	.align	2
.L1010:
	.word	.LC23-(.LPIC144+4)
	.word	.LC21-(.LPIC147+4)
	.word	.LC44-(.LPIC143+4)
	.word	.LC20-(.LPIC150+4)
	.word	.LC40-(.LPIC148+4)
	.word	.LC21-(.LPIC146+4)
	.word	.LC21-(.LPIC145+4)
	.word	.LC43-(.LPIC142+4)
	.word	.LC12-(.LPIC149+4)
	.size	png_handle_zTXt, .-png_handle_zTXt
	.section	.text.png_handle_iTXt,"ax",%progbits
	.align	2
	.global	png_handle_iTXt
	.thumb
	.thumb_func
	.type	png_handle_iTXt, %function
png_handle_iTXt:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #996]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	sub	sp, sp, #44
	mov	r9, r1
	mov	r5, r2
	cbz	r3, .L1013
	cmp	r3, #1
	beq	.L1080
	subs	r3, r3, #1
	cmp	r3, #1
	str	r3, [r0, #996]
	beq	.L1081
.L1013:
	ldr	r3, [r7, #448]
	lsls	r1, r3, #31
	bpl	.L1082
	ldr	r8, [r7, #1028]
	lsls	r2, r3, #29
	it	mi
	orrmi	r3, r3, #8
	add	r4, r5, #1
	it	mi
	strmi	r3, [r7, #448]
	cmp	r8, #0
	beq	.L1018
	ldr	r3, [r7, #1032]
	cmp	r4, r3
	bhi	.L1083
.L1019:
	mov	r0, r7
	mov	r1, r8
	mov	r2, r5
	bl	png_crc_read(PLT)
	mov	r0, r7
	movs	r1, #0
	bl	png_crc_finish(PLT)
	cbnz	r0, .L1012
	cmp	r5, #0
	beq	.L1043
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1044
	mov	r4, r0
	mov	r2, r8
	b	.L1025
.L1022:
	ldrb	r6, [r2, #1]!	@ zero_extendqisi2
	cbz	r6, .L1024
	mov	r4, r3
.L1025:
	adds	r3, r4, #1
	cmp	r3, r5
	bne	.L1022
.L1024:
	cmp	r4, #78
	bhi	.L1084
	adds	r3, r4, #6
	cmp	r5, r3
	bcc	.L1046
	add	r2, r8, r4
	ldrb	r3, [r2, #2]	@ zero_extendqisi2
	cbz	r3, .L1026
	ldr	r1, .L1090
	cmp	r3, #1
.LPIC157:
	add	r1, pc
	bne	.L1041
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	cbz	r2, .L1026
	ldr	r1, .L1090+4
.LPIC152:
	add	r1, pc
	b	.L1041
.L1084:
	ldr	r1, .L1090+8
.LPIC156:
	add	r1, pc
.L1041:
	mov	r0, r7
	bl	png_chunk_benign_error(PLT)
.L1012:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1083:
	movs	r3, #0
	mov	r1, r8
	str	r3, [r7, #1028]
	mov	r0, r7
	str	r3, [r7, #1032]
	bl	png_free(PLT)
.L1018:
	mov	r0, r7
	mov	r1, r4
	bl	png_malloc_base(PLT)
	mov	r8, r0
	cmp	r0, #0
	beq	.L1085
	str	r8, [r7, #1028]
	str	r4, [r7, #1032]
	b	.L1019
.L1046:
	ldr	r1, .L1090+12
.LPIC154:
	add	r1, pc
	b	.L1041
.L1026:
	movs	r2, #0
	adds	r4, r4, #4
	subs	r10, r3, r2
	str	r2, [sp]
	it	ne
	movne	r10, #1
	cmp	r5, r4
	bls	.L1050
	ldrb	r3, [r8, r4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1050
	mov	r3, r4
	b	.L1028
.L1086:
	ldrb	r2, [r8, r3]	@ zero_extendqisi2
	cbz	r2, .L1027
.L1028:
	adds	r3, r3, #1
	cmp	r5, r3
	bhi	.L1086
.L1027:
	adds	r6, r3, #1
	cmp	r5, r6
	bls	.L1052
	ldrb	r3, [r8, r6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1052
	mov	r3, r6
	b	.L1030
.L1087:
	ldrb	r2, [r8, r3]	@ zero_extendqisi2
	cbz	r2, .L1029
.L1030:
	adds	r3, r3, #1
	cmp	r5, r3
	bhi	.L1087
.L1029:
	add	fp, r3, #1
	eor	r3, r10, #1
	cmp	fp, r5
	ite	hi
	movhi	r3, #0
	andls	r3, r3, #1
	cmp	r3, #0
	bne	.L1088
	ldr	r1, .L1090+16
	cmp	fp, r5
	ite	cs
	movcs	r3, #0
	andcc	r3, r10, #1
.LPIC158:
	add	r1, pc
	cmp	r3, #0
	beq	.L1041
	mov	r2, #-1
	add	r3, sp, #40
	str	r2, [r3, #-40]!
	mov	r1, r5
	mov	r0, r7
	mov	r3, sp
	mov	r2, fp
	bl	png_decompress_chunk.constprop.4(PLT)
	cmp	r0, #1
	beq	.L1089
	ldr	r1, [r7, #488]
	cmp	r1, #0
	bne	.L1041
	ldr	r3, [sp]
	add	fp, fp, r8
	strb	r1, [fp, r3]
.L1039:
	movs	r5, #1
.L1040:
	str	r5, [sp, #8]
	add	ip, r8, r4
	ldr	r5, [sp]
	add	r6, r6, r8
	movs	r4, #0
	mov	r1, r9
	mov	r0, r7
	add	r2, sp, #8
	movs	r3, #1
	str	ip, [sp, #28]
	str	r6, [sp, #32]
	str	r8, [sp, #12]
	str	fp, [sp, #16]
	str	r5, [sp, #24]
	str	r4, [sp, #20]
	bl	png_set_text_2(PLT)
	cmp	r0, #0
	beq	.L1012
	ldr	r1, .L1090+20
.LPIC151:
	add	r1, pc
	b	.L1041
.L1080:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	b	.L1012
.L1081:
	mov	r1, r2
	bl	png_crc_finish(PLT)
	ldr	r1, .L1090+24
	mov	r0, r7
.LPIC159:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L1012
.L1088:
	rsb	r5, fp, r5
	str	r5, [sp]
.L1032:
	add	fp, fp, r8
	movs	r3, #0
	strb	r3, [fp, r5]
	movs	r5, #2
	cmp	r10, #0
	beq	.L1040
	b	.L1039
.L1043:
	ldr	r1, .L1090+28
.LPIC155:
	add	r1, pc
	b	.L1041
.L1044:
	ldr	r1, .L1090+32
.LPIC153:
	add	r1, pc
	b	.L1041
.L1085:
	ldr	r1, .L1090+36
	mov	r0, r7
.LPIC161:
	add	r1, pc
	bl	png_chunk_warning(PLT)
	mov	r1, r5
	mov	r0, r7
	bl	png_crc_finish(PLT)
	ldr	r1, .L1090+40
	mov	r0, r7
.LPIC162:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L1012
.L1052:
	mov	r3, r6
	b	.L1029
.L1050:
	mov	r3, r4
	b	.L1027
.L1089:
	ldr	r8, [r7, #1028]
	ldr	r5, [sp]
	b	.L1032
.L1082:
	ldr	r1, .L1090+44
	mov	r0, r7
.LPIC160:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L1091:
	.align	2
.L1090:
	.word	.LC45-(.LPIC157+4)
	.word	.LC45-(.LPIC152+4)
	.word	.LC21-(.LPIC156+4)
	.word	.LC23-(.LPIC154+4)
	.word	.LC23-(.LPIC158+4)
	.word	.LC43-(.LPIC151+4)
	.word	.LC40-(.LPIC159+4)
	.word	.LC21-(.LPIC155+4)
	.word	.LC21-(.LPIC153+4)
	.word	.LC41-(.LPIC161+4)
	.word	.LC20-(.LPIC162+4)
	.word	.LC12-(.LPIC160+4)
	.size	png_handle_iTXt, .-png_handle_iTXt
	.section	.text.png_handle_unknown,"ax",%progbits
	.align	2
	.global	png_handle_unknown
	.thumb
	.thumb_func
	.type	png_handle_unknown, %function
png_handle_unknown:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r7, [r0, #924]
	mov	r8, r1
	mov	r6, r2
	mov	r5, r3
	cmp	r7, #0
	beq	.L1093
	ldr	r1, [r0, #1012]
	cbz	r1, .L1094
	bl	png_free(PLT)
	movs	r3, #0
	str	r3, [r4, #1012]
.L1094:
	ldr	r3, [r4, #1000]
	subs	r2, r3, #1
	adds	r2, r2, #3
	bhi	.L1095
	cmp	r6, r3
	bls	.L1095
.L1119:
	mov	r1, r6
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r1, .L1159
	mov	r0, r4
	movs	r6, #0
.LPIC163:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
.L1112:
	ldr	r1, [r4, #1012]
	cbz	r1, .L1116
	mov	r0, r4
	bl	png_free(PLT)
.L1116:
	movs	r3, #0
	str	r3, [r4, #1012]
	cbnz	r6, .L1092
	ldr	r3, [r4, #616]
	lsls	r3, r3, #2
	bpl	.L1154
.L1092:
	pop	{r4, r5, r6, r7, r8, pc}
.L1095:
	ldr	r3, [r4, #616]
	movs	r1, #0
	ldr	r2, [r4, #448]
	str	r6, [r4, #1016]
	strb	r3, [r4, #1007]
	lsrs	r7, r3, #24
	lsrs	r0, r3, #16
	lsrs	r3, r3, #8
	strb	r2, [r4, #1020]
	strb	r7, [r4, #1004]
	strb	r0, [r4, #1005]
	strb	r3, [r4, #1006]
	strb	r1, [r4, #1008]
	cmp	r6, #0
	bne	.L1097
	str	r6, [r4, #1012]
.L1098:
	movs	r1, #0
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r3, [r4, #924]
	mov	r0, r4
	add	r1, r4, #1004
	blx	r3
	subs	r6, r0, #0
	blt	.L1155
	it	ne
	movne	r6, #1
	bne	.L1112
	cmp	r5, #1
	ble	.L1156
.L1102:
	cmp	r5, #3
	mov	r6, #0
	bne	.L1118
	b	.L1111
.L1093:
	cbz	r3, .L1157
.L1103:
	cmp	r5, #3
	beq	.L1104
	cmp	r5, #2
	beq	.L1158
.L1105:
	mov	r1, r6
	movs	r6, #0
	mov	r0, r4
	bl	png_crc_finish(PLT)
.L1118:
	cmp	r5, #2
	bne	.L1112
.L1151:
	ldr	r3, [r4, #616]
	lsls	r2, r3, #2
	bpl	.L1112
.L1111:
	ldr	r3, [r4, #996]
	cmp	r3, #1
	beq	.L1112
	bcc	.L1114
	cmp	r3, #2
	bne	.L1152
	ldr	r1, .L1159+4
	movs	r3, #1
	mov	r0, r4
	str	r3, [r4, #996]
.LPIC167:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L1112
.L1157:
	ldr	r5, [r0, #928]
	b	.L1103
.L1158:
	ldr	r3, [r4, #616]
	lsls	r1, r3, #2
	bpl	.L1105
.L1104:
	ldr	r1, [r4, #1012]
	cbz	r1, .L1106
	mov	r0, r4
	bl	png_free(PLT)
	movs	r3, #0
	str	r3, [r4, #1012]
.L1106:
	ldr	r3, [r4, #1000]
	subs	r2, r3, #1
	adds	r2, r2, #3
	bhi	.L1107
	cmp	r6, r3
	bhi	.L1119
.L1107:
	ldr	r3, [r4, #616]
	movs	r1, #0
	ldr	r2, [r4, #448]
	str	r6, [r4, #1016]
	strb	r3, [r4, #1007]
	lsrs	r7, r3, #24
	lsrs	r0, r3, #16
	lsrs	r3, r3, #8
	strb	r2, [r4, #1020]
	strb	r7, [r4, #1004]
	strb	r0, [r4, #1005]
	strb	r3, [r4, #1006]
	strb	r1, [r4, #1008]
	cbnz	r6, .L1109
	str	r6, [r4, #1012]
.L1110:
	mov	r0, r4
	movs	r1, #0
	bl	png_crc_finish(PLT)
	b	.L1102
.L1152:
	subs	r3, r3, #1
	str	r3, [r4, #996]
.L1114:
	movs	r6, #1
	mov	r1, r8
	mov	r0, r4
	add	r2, r4, #1004
	mov	r3, r6
	bl	png_set_unknown_chunks(PLT)
	b	.L1112
.L1097:
	mov	r1, r6
	mov	r0, r4
	bl	png_malloc_warn(PLT)
	mov	r1, r0
	str	r0, [r4, #1012]
	cmp	r0, #0
	beq	.L1119
	mov	r2, r6
	mov	r0, r4
	bl	png_crc_read(PLT)
	b	.L1098
.L1109:
	mov	r1, r6
	mov	r0, r4
	bl	png_malloc_warn(PLT)
	mov	r1, r0
	str	r0, [r4, #1012]
	cmp	r0, #0
	beq	.L1119
	mov	r2, r6
	mov	r0, r4
	bl	png_crc_read(PLT)
	b	.L1110
.L1156:
	ldr	r3, [r4, #928]
	cmp	r3, #1
	bgt	.L1151
	ldr	r1, .L1159+8
	mov	r0, r4
.LPIC165:
	add	r1, pc
	bl	png_chunk_warning(PLT)
	ldr	r1, .L1159+12
	mov	r0, r4
.LPIC166:
	add	r1, pc
	bl	png_app_warning(PLT)
	b	.L1151
.L1154:
	ldr	r1, .L1159+16
	mov	r0, r4
.LPIC168:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L1155:
	ldr	r1, .L1159+20
	mov	r0, r4
.LPIC164:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L1160:
	.align	2
.L1159:
	.word	.LC46-(.LPIC163+4)
	.word	.LC40-(.LPIC167+4)
	.word	.LC48-(.LPIC165+4)
	.word	.LC49-(.LPIC166+4)
	.word	.LC50-(.LPIC168+4)
	.word	.LC47-(.LPIC164+4)
	.size	png_handle_unknown, .-png_handle_unknown
	.section	.text.png_check_chunk_name,"ax",%progbits
	.align	2
	.global	png_check_chunk_name
	.thumb
	.thumb_func
	.type	png_check_chunk_name, %function
png_check_chunk_name:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	uxtb	r3, r1
	sub	r2, r3, #91
	subs	r3, r3, #65
	cmp	r2, #5
	ite	hi
	movhi	r2, #0
	movls	r2, #1
	cmp	r3, #57
	ite	ls
	movls	r3, r2
	orrhi	r3, r2, #1
	cbnz	r3, .L1162
	ubfx	r3, r1, #8, #8
	sub	r2, r3, #91
	subs	r3, r3, #65
	cmp	r2, #5
	ite	hi
	movhi	r2, #0
	movls	r2, #1
	cmp	r3, #57
	ite	ls
	movls	r3, r2
	orrhi	r3, r2, #1
	cbnz	r3, .L1162
	ubfx	r3, r1, #16, #8
	sub	r2, r3, #65
	subs	r3, r3, #91
	cmp	r2, #57
	ite	ls
	movls	r2, #0
	movhi	r2, #1
	cmp	r3, #5
	ite	hi
	movhi	r3, r2
	orrls	r3, r2, #1
	cbnz	r3, .L1162
	lsrs	r1, r1, #24
	sub	r3, r1, #65
	subs	r1, r1, #91
	cmp	r3, #57
	ite	ls
	movls	r3, #0
	movhi	r3, #1
	cmp	r1, #5
	ite	hi
	movhi	r1, r3
	orrls	r1, r3, #1
	cbnz	r1, .L1162
	pop	{r3, pc}
.L1162:
	ldr	r1, .L1165
.LPIC169:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L1166:
	.align	2
.L1165:
	.word	.LC51-(.LPIC169+4)
	.size	png_check_chunk_name, .-png_check_chunk_name
	.section	.text.png_read_chunk_header,"ax",%progbits
	.align	2
	.global	png_read_chunk_header
	.thumb
	.thumb_func
	.type	png_read_chunk_header, %function
png_read_chunk_header:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r3, #33
	sub	sp, sp, #8
	mov	r4, r0
	mov	r1, sp
	movs	r2, #8
	str	r3, [r0, #1040]
	bl	png_read_data(PLT)
	mov	r1, sp
	mov	r0, r4
	bl	png_get_uint_31(PLT)
	ldrb	r3, [sp, #5]	@ zero_extendqisi2
	mov	r5, r0
	ldrb	r6, [sp, #4]	@ zero_extendqisi2
	mov	r0, r4
	ldrb	r1, [sp, #7]	@ zero_extendqisi2
	ldrb	r2, [sp, #6]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orr	r3, r3, r6, lsl #24
	orrs	r3, r3, r1
	orr	r3, r3, r2, lsl #8
	str	r3, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	add	r1, sp, #4
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	mov	r0, r4
	ldr	r1, [r4, #616]
	bl	png_check_chunk_name(PLT)
	movs	r3, #65
	mov	r0, r5
	str	r3, [r4, #1040]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	png_read_chunk_header, .-png_read_chunk_header
	.section	.text.png_combine_row,"ax",%progbits
	.align	2
	.global	png_combine_row
	.thumb
	.thumb_func
	.type	png_combine_row, %function
png_combine_row:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, r0
	ldrb	r4, [r0, #683]	@ zero_extendqisi2
	mov	r8, r1
	sub	sp, sp, #12
	ldr	r9, [r0, #624]
	ldr	r5, [r0, #588]
	ldrb	fp, [r0, #673]	@ zero_extendqisi2
	add	r1, r9, #1
	cmp	r4, #0
	beq	.L1259
	ldr	r0, [r0, #644]
	cmp	r0, #0
	bne	.L1260
.L1171:
	cmp	r5, #0
	beq	.L1261
	mul	lr, r5, r4
	ands	r6, lr, #7
	itt	eq
	moveq	r10, r6
	moveq	r7, r6
	beq	.L1175
	cmp	r4, #7
	ldr	r0, [r3, #456]
	iteet	hi
	lsrhi	ip, r4, #3
	addls	ip, lr, #7
	lsrls	ip, ip, #3
	mulhi	ip, r5, ip
	tst	r0, #65536
	mov	r0, #255
	ite	ne
	lslne	r6, r0, r6
	asreq	r6, r0, r6
	add	ip, ip, #-1
	ldrb	r10, [r8, ip]	@ zero_extendqisi2
	add	r7, r8, ip
.L1175:
	ldrb	r0, [r3, #672]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L1179
	ldr	ip, [r3, #456]
	tst	ip, #2
	beq	.L1179
	cmp	fp, #5
	bhi	.L1179
	cmp	r2, #0
	bne	.L1180
	and	lr, fp, #1
.L1181:
	add	r0, fp, #1
	lsrs	r0, r0, #1
	rsb	r0, r0, #3
	lsl	r0, lr, r0
	and	r0, r0, #7
	cmp	r5, r0
	bls	.L1169
	cmp	r4, #7
	bhi	.L1184
	movs	r0, #8
	mov	r1, r4
	stmia	sp, {r2, ip}
	bl	__aeabi_uidiv(PLT)
	ldr	ip, [sp, #4]
	ldr	r2, [sp]
	ands	ip, ip, #65536
	beq	.L1185
	cmp	r2, #0
	beq	.L1186
	cmp	r4, #1
	it	eq
	moveq	r4, #0
	beq	.L1187
	cmp	r4, #2
	ite	ne
	movne	r4, #2
	moveq	r4, #1
.L1187:
	add	r4, r4, r4, lsl #1
	ldr	r3, .L1267
	add	fp, r4, fp, lsr #1
.LPIC173:
	add	r3, pc
	ldr	r3, [r3, fp, lsl #2]
.L1190:
	add	r8, r8, #1
	add	r9, r9, #2
	b	.L1188
.L1262:
	subs	r5, r5, r0
	mov	r3, r2
.L1188:
	ror	r2, r3, #8
	ands	r3, r3, #255
	beq	.L1194
	cmp	r3, #255
	ittte	ne
	ldrbne	r1, [r8, #-1]	@ zero_extendqisi2
	uxtbne	r3, r3
	ldrbne	r4, [r9, #-1]	@ zero_extendqisi2
	ldrbeq	r3, [r9, #-1]	@ zero_extendqisi2
	ittt	ne
	bicne	r1, r1, r3
	andne	r3, r3, r4
	orrne	r3, r3, r1
	strb	r3, [r8, #-1]
.L1194:
	cmp	r5, r0
	add	r8, r8, #1
	add	r9, r9, #1
	bhi	.L1262
.L1196:
	cbz	r7, .L1169
	ldrb	r3, [r7]	@ zero_extendqisi2
	uxtb	r6, r6
	and	r10, r6, r10
	bic	r6, r3, r6
	orr	r6, r6, r10
	strb	r6, [r7]
.L1169:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1180:
	cmp	r2, #1
	beq	.L1263
.L1179:
	cmp	r4, #7
	mov	r0, r8
	iteet	hi
	lsrhi	r4, r4, #3
	addls	lr, lr, #7
	lsrls	r2, lr, #3
	mulhi	r2, r5, r4
	bl	memcpy(PLT)
	b	.L1196
.L1260:
	cmp	r4, #7
	iteet	ls
	mulls	r6, r5, r4
	lsrhi	r6, r4, #3
	mulhi	r6, r5, r6
	addls	r6, r6, #7
	it	ls
	lsrls	r6, r6, #3
	cmp	r6, r0
	beq	.L1171
	ldr	r1, .L1267+4
	mov	r0, r3
.LPIC171:
	add	r1, pc
	bl	png_error(PLT)
.L1263:
	tst	fp, #1
	beq	.L1179
	mov	lr, r2
	b	.L1181
.L1184:
	lsls	r6, r4, #29
	bne	.L1264
	lsrs	r4, r4, #3
	mul	r0, r4, r0
	mov	r7, r4
	mul	r5, r5, r4
	add	r3, r8, r0
	adds	r6, r1, r0
	subs	r5, r5, r0
	cbz	r2, .L1198
	rsb	r7, fp, #6
	lsrs	r7, r7, #1
	lsl	r7, r4, r7
	cmp	r7, r5
	it	cs
	movcs	r7, r5
.L1198:
	rsb	fp, fp, #7
	cmp	r7, #2
	lsr	fp, fp, #1
	lsl	r4, r4, fp
	beq	.L1207
	cmp	r7, #3
	beq	.L1201
	cmp	r7, #1
	beq	.L1265
	cmp	r7, #15
	bhi	.L1211
	orr	r2, r6, r3
	lsls	r1, r2, #31
	bmi	.L1211
	orr	r1, r7, r4
	lsls	r0, r1, #31
	bmi	.L1211
	lsls	r0, r2, #30
	bne	.L1212
	lsls	r2, r1, #30
	bne	.L1212
	subs	r1, r4, r7
	bic	r1, r1, #3
.L1216:
	mov	r2, r7
.L1214:
	ldr	r0, [r6], #4
	subs	r2, r2, #4
	str	r0, [r3], #4
	bne	.L1214
	cmp	r5, r4
	bls	.L1169
	subs	r5, r5, r4
	add	r3, r3, r1
	cmp	r7, r5
	add	r6, r6, r1
	bls	.L1216
.L1217:
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	strb	r1, [r3, r2]
	adds	r2, r2, #1
	cmp	r2, r5
	bne	.L1217
	b	.L1169
.L1207:
	ldrb	r2, [r6]	@ zero_extendqisi2
	cmp	r5, r4
	strb	r2, [r3]
	ldrb	r2, [r6, #1]	@ zero_extendqisi2
	strb	r2, [r3, #1]
	bls	.L1169
	subs	r5, r5, r4
	add	r6, r6, r4
	cmp	r5, #1
	add	r3, r3, r4
	bhi	.L1207
	ldrb	r2, [r6]	@ zero_extendqisi2
	strb	r2, [r3]
	b	.L1169
.L1266:
	subs	r5, r5, r4
	add	r6, r6, r4
	cmp	r7, r5
	add	r3, r3, r4
	it	cs
	movcs	r7, r5
.L1211:
	mov	r0, r3
	mov	r1, r6
	mov	r2, r7
	bl	memcpy(PLT)
	cmp	r5, r4
	mov	r3, r0
	bhi	.L1266
	b	.L1169
.L1185:
	cbz	r2, .L1191
	cmp	r4, #1
	it	eq
	moveq	r4, ip
	beq	.L1192
	cmp	r4, #2
	ite	ne
	movne	r4, #2
	moveq	r4, #1
.L1192:
	add	r4, r4, r4, lsl #1
	ldr	r3, .L1267+8
	add	r2, r4, fp, lsr #1
.LPIC175:
	add	r3, pc
	adds	r2, r2, #9
	ldr	r3, [r3, r2, lsl #2]
	b	.L1190
.L1191:
	cmp	r4, #1
	beq	.L1193
	cmp	r4, #2
	ite	ne
	movne	r2, #2
	moveq	r2, #1
.L1193:
	add	r2, r2, r2, lsl #1
	ldr	r3, .L1267+12
	add	r2, fp, r2, lsl #1
.LPIC176:
	add	r3, pc
	adds	r2, r2, #18
	ldr	r3, [r3, r2, lsl #2]
	b	.L1190
.L1186:
	cmp	r4, #1
	beq	.L1189
	cmp	r4, #2
	ite	ne
	movne	r2, #2
	moveq	r2, #1
.L1189:
	add	r2, r2, r2, lsl #1
	ldr	r3, .L1267+16
	add	fp, fp, r2, lsl #1
.LPIC174:
	add	r3, pc
	ldr	r3, [r3, fp, lsl #2]
	b	.L1190
.L1265:
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r5, r4
	strb	r2, [r8, r0]
	bls	.L1169
	add	r6, r6, r4
	add	r3, r3, r4
	movs	r2, #0
.L1205:
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	subs	r5, r5, r4
	cmp	r4, r5
	strb	r1, [r3, r2]
	add	r2, r2, r4
	bcc	.L1205
	b	.L1169
.L1201:
	ldrb	r2, [r1, r0]	@ zero_extendqisi2
	cmp	r5, r4
	strb	r2, [r8, r0]
	ldrb	r2, [r6, #1]	@ zero_extendqisi2
	strb	r2, [r3, #1]
	ldrb	r2, [r6, #2]	@ zero_extendqisi2
	strb	r2, [r3, #2]
	bls	.L1169
.L1208:
	ldrb	r0, [r6, r4]	@ zero_extendqisi2
	adds	r1, r6, r4
	adds	r2, r3, r4
	subs	r5, r5, r4
	mov	r6, r1
	cmp	r4, r5
	strb	r0, [r3, r4]
	mov	r3, r2
	ldrb	r0, [r1, #1]	@ zero_extendqisi2
	strb	r0, [r2, #1]
	ldrb	r1, [r1, #2]	@ zero_extendqisi2
	strb	r1, [r2, #2]
	bcc	.L1208
	b	.L1169
.L1259:
	ldr	r1, .L1267+20
.LPIC170:
	add	r1, pc
	bl	png_error(PLT)
.L1261:
	ldr	r1, .L1267+24
	mov	r0, r3
.LPIC172:
	add	r1, pc
	bl	png_error(PLT)
.L1212:
	subs	r0, r4, r7
	bic	r0, r0, #1
.L1221:
	mov	r2, r7
.L1219:
	ldrh	r1, [r6], #2
	subs	r2, r2, #2
	strh	r1, [r3], #2	@ movhi
	bne	.L1219
	cmp	r5, r4
	bls	.L1169
	subs	r5, r5, r4
	add	r3, r3, r0
	cmp	r7, r5
	add	r6, r6, r0
	bls	.L1221
.L1222:
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	strb	r1, [r3, r2]
	adds	r2, r2, #1
	cmp	r2, r5
	bne	.L1222
	b	.L1169
.L1264:
	ldr	r1, .L1267+28
	mov	r0, r3
.LPIC177:
	add	r1, pc
	bl	png_error(PLT)
.L1268:
	.align	2
.L1267:
	.word	.LANCHOR0-(.LPIC173+4)
	.word	.LC53-(.LPIC171+4)
	.word	.LANCHOR0-(.LPIC175+4)
	.word	.LANCHOR1-(.LPIC176+4)
	.word	.LANCHOR1-(.LPIC174+4)
	.word	.LC52-(.LPIC170+4)
	.word	.LC54-(.LPIC172+4)
	.word	.LC55-(.LPIC177+4)
	.size	png_combine_row, .-png_combine_row
	.section	.text.png_do_read_interlace,"ax",%progbits
	.align	2
	.global	png_do_read_interlace
	.thumb
	.thumb_func
	.type	png_do_read_interlace, %function
png_do_read_interlace:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r0, [sp, #4]
	beq	.L1269
	ldr	r4, .L1336
	ldr	ip, [r0]
	ldrb	r0, [r0, #11]	@ zero_extendqisi2
.LPIC178:
	add	r4, pc
	ldr	r4, [r4, r2, lsl #2]
	cmp	r0, #2
	mul	r5, ip, r4
	str	r5, [sp, #8]
	beq	.L1272
	cmp	r0, #4
	beq	.L1273
	cmp	r0, #1
	beq	.L1335
	ldr	r6, [sp, #8]
	lsrs	r5, r0, #3
	add	r9, ip, #-1
	mla	r9, r9, r5, r1
	add	r10, r6, #-1
	mla	r10, r5, r10, r1
	str	r10, [sp]
	cmp	ip, #0
	beq	.L1284
	negs	r6, r5
	mov	r8, #0
	mul	r3, r6, r4
	add	r7, sp, #16
	mov	fp, ip
	str	r3, [sp, #12]
.L1309:
	mov	r0, r7
	mov	r1, r9
	mov	r2, r5
	bl	memcpy(PLT)
	cmp	r4, #0
	ble	.L1305
	ldr	r10, [sp]
	mov	fp, #0
.L1307:
	mov	r0, r10
	add	fp, fp, #1
	mov	r1, r7
	mov	r2, r5
	bl	memcpy(PLT)
	cmp	fp, r4
	add	r10, r10, r6
	bne	.L1307
	ldr	r0, [sp, #4]
	ldr	r3, [sp]
	ldr	fp, [r0]
	ldr	r0, [sp, #12]
	add	r3, r3, r0
	str	r3, [sp]
.L1305:
	add	r8, r8, #1
	add	r9, r9, r6
	cmp	r8, fp
	bcc	.L1309
	ldr	r5, [sp, #4]
	ldr	r6, [sp, #8]
	ldrb	r0, [r5, #11]	@ zero_extendqisi2
.L1284:
	ldr	r5, [sp, #4]
	cmp	r0, #7
	str	r6, [r5]
	bls	.L1310
	lsrs	r0, r0, #3
	mul	r0, r6, r0
.L1311:
	ldr	r5, [sp, #4]
	str	r0, [r5, #4]
.L1269:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1277:
	ldr	r6, [sp, #8]
	ldr	r5, [sp, #4]
	str	r6, [r5]
.L1310:
	mul	r0, r6, r0
	adds	r0, r0, #7
	lsrs	r0, r0, #3
	b	.L1311
.L1272:
	mov	r6, r5
	add	r5, ip, #-1
	add	r5, r1, r5, lsr #2
	ands	r8, r3, #65536
	add	r2, r6, #-1
	str	r5, [sp]
	add	r2, r1, r2, lsr #2
	beq	.L1286
	mov	r3, r6
	add	r10, ip, #3
	adds	r3, r3, #3
	and	r10, r10, #3
	and	r3, r3, #3
	lsl	r10, r10, #1
	lsls	r3, r3, #1
	mvn	lr, #1
	movs	r6, #0
	mov	r8, #6
.L1287:
	cmp	ip, #0
	beq	.L1277
	mov	r1, ip
	mov	fp, #0
	movw	r9, #16191
	mov	ip, lr
.L1294:
	ldr	r0, [sp]
	cmp	r4, #0
	ldrb	lr, [r0]	@ zero_extendqisi2
	asr	lr, lr, r10
	and	lr, lr, #3
	ble	.L1288
	movs	r1, #0
.L1290:
	ldrb	r7, [r2]	@ zero_extendqisi2
	rsb	r5, r3, #6
	asr	r5, r9, r5
	lsl	r0, lr, r3
	ands	r5, r5, r7
	cmp	r6, r3
	orr	r5, r5, r0
	add	r1, r1, #1
	mov	r0, r2
	add	r3, r3, ip
	strb	r5, [r0], #-1
	itt	eq
	moveq	r3, r8
	moveq	r2, r0
	cmp	r1, r4
	bne	.L1290
	ldr	r5, [sp, #4]
	ldr	r1, [r5]
.L1288:
	cmp	r10, r6
	add	fp, fp, #1
	ittet	eq
	ldreq	r0, [sp]
	moveq	r10, r8
	addne	r10, r10, ip
	addeq	r0, r0, #-1
	it	eq
	streq	r0, [sp]
	cmp	fp, r1
	bcc	.L1294
	ldr	r5, [sp, #4]
	ldr	r6, [sp, #8]
	ldrb	r0, [r5, #11]	@ zero_extendqisi2
	b	.L1284
.L1335:
	ldr	r6, [sp, #8]
	add	r5, ip, #-1
	add	r5, r1, r5, lsr #3
	ands	r8, r3, #65536
	add	r2, r6, #-1
	str	r5, [sp]
	add	r2, r1, r2, lsr #3
	beq	.L1275
	mov	r3, r6
	add	r10, ip, #7
	adds	r3, r3, #7
	and	r10, r10, #7
	and	r3, r3, #7
	mov	lr, #-1
	movs	r6, #0
	mov	r8, #7
.L1276:
	cmp	ip, #0
	beq	.L1277
	mov	r1, ip
	mov	fp, #0
	movw	r9, #32639
	mov	ip, lr
.L1285:
	ldr	r0, [sp]
	cmp	r4, #0
	ldrb	lr, [r0]	@ zero_extendqisi2
	asr	lr, lr, r10
	and	lr, lr, #1
	ble	.L1278
	movs	r1, #0
.L1280:
	ldrb	r7, [r2]	@ zero_extendqisi2
	rsb	r5, r3, #7
	asr	r5, r9, r5
	lsl	r0, lr, r3
	ands	r5, r5, r7
	cmp	r6, r3
	orr	r5, r5, r0
	add	r1, r1, #1
	mov	r0, r2
	add	r3, r3, ip
	strb	r5, [r0], #-1
	itt	eq
	moveq	r3, r8
	moveq	r2, r0
	cmp	r1, r4
	bne	.L1280
	ldr	r5, [sp, #4]
	ldr	r1, [r5]
.L1278:
	cmp	r10, r6
	add	fp, fp, #1
	ittet	eq
	ldreq	r0, [sp]
	moveq	r10, r8
	addne	r10, r10, ip
	addeq	r0, r0, #-1
	it	eq
	streq	r0, [sp]
	cmp	fp, r1
	bcc	.L1285
	ldr	r5, [sp, #4]
	ldr	r6, [sp, #8]
	ldrb	r0, [r5, #11]	@ zero_extendqisi2
	b	.L1284
.L1273:
	ldr	r6, [sp, #8]
	add	r5, ip, #-1
	add	r5, r1, r5, lsr #1
	ands	r3, r3, #65536
	add	r2, r6, #-1
	str	r5, [sp]
	add	r2, r1, r2, lsr #1
	beq	.L1295
	mov	r3, r6
	add	r10, ip, #1
	adds	r3, r3, #1
	and	r10, r10, #1
	and	r3, r3, #1
	lsl	r10, r10, #2
	lsls	r3, r3, #2
	mvn	lr, #3
	movs	r6, #0
	mov	r8, r0
.L1296:
	cmp	ip, #0
	beq	.L1277
	mov	r1, ip
	mov	fp, #0
	movw	r9, #3855
	mov	ip, lr
.L1304:
	ldr	r0, [sp]
	cmp	r4, #0
	ldrb	lr, [r0]	@ zero_extendqisi2
	asr	lr, lr, r10
	and	lr, lr, #15
	ble	.L1298
	movs	r1, #0
.L1300:
	ldrb	r7, [r2]	@ zero_extendqisi2
	rsb	r5, r3, #4
	asr	r5, r9, r5
	lsl	r0, lr, r3
	ands	r5, r5, r7
	cmp	r6, r3
	orr	r5, r5, r0
	add	r1, r1, #1
	mov	r0, r2
	add	r3, r3, ip
	strb	r5, [r0], #-1
	itt	eq
	moveq	r3, r8
	moveq	r2, r0
	cmp	r1, r4
	bne	.L1300
	ldr	r5, [sp, #4]
	ldr	r1, [r5]
.L1298:
	cmp	r10, r6
	add	fp, fp, #1
	ittet	eq
	ldreq	r0, [sp]
	moveq	r10, r8
	addne	r10, r10, ip
	addeq	r0, r0, #-1
	it	eq
	streq	r0, [sp]
	cmp	fp, r1
	bcc	.L1304
	ldr	r5, [sp, #4]
	ldr	r6, [sp, #8]
	ldrb	r0, [r5, #11]	@ zero_extendqisi2
	b	.L1284
.L1295:
	mov	r1, r6
	tst	ip, #1
	add	r1, r1, #1
	ite	eq
	moveq	r10, #0
	movne	r10, #4
	ands	r8, r1, #1
	iteee	ne
	movne	r8, r3
	moveq	lr, r0
	moveq	r6, r0
	moveq	r3, r0
	ittt	ne
	movne	lr, r0
	movne	r3, r8
	movne	r6, r0
	b	.L1296
.L1275:
	mov	r3, r6
	add	r10, ip, #7
	adds	r3, r3, #7
	mvn	r10, r10
	mvns	r3, r3
	and	r10, r10, #7
	and	r3, r3, #7
	mov	lr, r0
	movs	r6, #7
	b	.L1276
.L1286:
	mov	r3, r6
	add	r10, ip, #3
	adds	r3, r3, #3
	mvn	r10, r10
	mvns	r3, r3
	and	r10, r10, #3
	and	r3, r3, #3
	lsl	r10, r10, #1
	lsls	r3, r3, #1
	mov	lr, r0
	movs	r6, #6
	b	.L1287
.L1337:
	.align	2
.L1336:
	.word	.LANCHOR2-(.LPIC178+4)
	.size	png_do_read_interlace, .-png_do_read_interlace
	.section	.text.png_read_filter_row,"ax",%progbits
	.align	2
	.global	png_read_filter_row
	.thumb
	.thumb_func
	.type	png_read_filter_row, %function
png_read_filter_row:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	ldr	r4, [sp, #32]
	subs	r6, r4, #1
	cmp	r6, #3
	bhi	.L1338
	mov	r7, r1
	ldr	r1, [r0, #1048]
	mov	r5, r0
	cbz	r1, .L1344
.L1340:
	addw	r4, r4, #261
	mov	r1, r2
	ldr	r4, [r5, r4, lsl #2]
	mov	r2, r3
	mov	r0, r7
	mov	r3, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	r3	@ indirect register sibling call
.L1338:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1344:
	ldrb	r1, [r0, #678]	@ zero_extendqisi2
	ldr	lr, .L1345
	ldr	r6, .L1345+4
	adds	r1, r1, #7
	ldr	r0, .L1345+8
	asrs	r1, r1, #3
.LPIC181:
	add	lr, pc
.LPIC182:
	add	r6, pc
	str	lr, [r5, #1048]
	cmp	r1, #1
.LPIC183:
	add	r0, pc
	str	r6, [r5, #1052]
	str	r0, [r5, #1056]
	beq	.L1342
	ldr	r0, .L1345+12
.LPIC180:
	add	r0, pc
.L1341:
	str	r0, [r5, #1060]
	mov	r0, r5
	str	r2, [sp, #4]
	str	r3, [sp]
	bl	png_init_filter_functions_neon(PLT)
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	b	.L1340
.L1342:
	ldr	r0, .L1345+16
.LPIC179:
	add	r0, pc
	b	.L1341
.L1346:
	.align	2
.L1345:
	.word	png_read_filter_row_sub-(.LPIC181+4)
	.word	png_read_filter_row_up-(.LPIC182+4)
	.word	png_read_filter_row_avg-(.LPIC183+4)
	.word	png_read_filter_row_paeth_multibyte_pixel-(.LPIC180+4)
	.word	png_read_filter_row_paeth_1byte_pixel-(.LPIC179+4)
	.size	png_read_filter_row, .-png_read_filter_row
	.section	.text.png_read_IDAT_data,"ax",%progbits
	.align	2
	.global	png_read_IDAT_data
	.thumb
	.thumb_func
	.type	png_read_IDAT_data, %function
png_read_IDAT_data:
	@ args = 0, pretend = 0, frame = 1032
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r3, #0
	movw	r5, #16724
	subw	sp, sp, #1036
	mov	r7, r1
	add	r9, r0, #464
	mov	r8, r3
	movt	r5, 18756
	mov	r4, r0
	cmp	r1, r3
	ite	ne
	movne	r6, r2
	moveq	r6, r3
	add	r2, sp, #8
	str	r1, [r4, #476]
	str	r2, [sp, #4]
	str	r3, [r0, #480]
.L1367:
	ldr	r3, [r4, #468]
	cbnz	r3, .L1350
	ldr	r1, [r4, #648]
	cbnz	r1, .L1390
.L1355:
	ldr	r3, [r4, #1140]
	mov	r0, r4
	cmp	r3, #0
	beq	.L1351
	bl	png_opt_crc_finish(PLT)
	ldr	r3, [r4, #1140]
	ldr	r2, [r4, #1144]
	str	r2, [r3]
.L1352:
	mov	r0, r4
	bl	png_read_chunk_header(PLT)
	ldr	r3, [r4, #616]
	str	r0, [r4, #648]
	cmp	r3, r5
	bne	.L1353
	mov	r1, r0
	cmp	r1, #0
	beq	.L1355
.L1390:
	ldr	fp, [r4, #1036]
	ldr	r10, [r4, #1028]
	cmp	fp, r1
	it	cs
	movcs	fp, r1
	cmp	r10, #0
	beq	.L1356
	ldr	r2, [r4, #1032]
	cmp	r2, fp
	bcc	.L1391
.L1357:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r10
	bl	png_crc_read(PLT)
	ldr	r2, [r4, #648]
	str	r10, [r4, #464]
	str	fp, [r4, #468]
	rsb	r3, fp, r2
	str	r3, [r4, #648]
.L1350:
	cbz	r7, .L1358
	str	r6, [r4, #480]
	mov	r0, r9
	movs	r1, #0
	bl	inflate(PLT)
	cmp	r0, #1
	ldr	r6, [r4, #480]
	mov	r3, #0
	str	r8, [r4, #480]
	beq	.L1392
.L1360:
	cbz	r0, .L1363
	ldr	r3, [r4, #1140]
	cbz	r3, .L1363
	ldr	r2, [r4, #592]
	ldr	r3, [r4, #612]
	subs	r2, r2, #1
	cmp	r3, r2
	bne	.L1393
.L1363:
	cmp	r6, #0
	bne	.L1367
.L1347:
	addw	sp, sp, #1036
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1351:
	bl	png_crc_finish(PLT)
	b	.L1352
.L1391:
	str	r8, [r4, #1028]
	mov	r1, r10
	str	r8, [r4, #1032]
	mov	r0, r4
	bl	png_free(PLT)
.L1356:
	mov	r0, r4
	mov	r1, fp
	bl	png_malloc_base(PLT)
	mov	r10, r0
	cmp	r0, #0
	beq	.L1394
	str	r10, [r4, #1028]
	str	fp, [r4, #1032]
	b	.L1357
.L1358:
	add	r3, sp, #8
	mov	r2, #1024
	str	r3, [r4, #476]
	mov	r0, r9
	str	r2, [r4, #480]
	mov	r1, r7
	bl	inflate(PLT)
	ldr	r3, [r4, #480]
	cmp	r0, #1
	str	r8, [r4, #480]
	rsb	r3, r3, #1024
	add	r6, r6, r3
	mov	r3, #0
	bne	.L1360
.L1392:
	vldr	d16, [r4, #448]
	ldr	r2, [r4, #468]
	vorr.i32	d16, #8
	str	r3, [r4, #476]
	vstr	d16, [r4, #448]
	cbnz	r2, .L1361
	ldr	r3, [r4, #648]
	cbnz	r3, .L1361
.L1362:
	cmp	r6, #0
	beq	.L1347
	cbnz	r7, .L1353
	ldr	r1, .L1395
	mov	r0, r4
.LPIC187:
	add	r1, pc
.L1389:
	bl	png_chunk_benign_error(PLT)
	addw	sp, sp, #1036
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1361:
	ldr	r1, .L1395+4
	mov	r0, r4
.LPIC186:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	b	.L1362
.L1393:
	mov	r1, r0
	mov	r0, r4
	bl	png_zstream_error(PLT)
	mov	r0, r4
	ldr	r1, [r4, #488]
	cmp	r7, #0
	beq	.L1389
	bl	png_chunk_error(PLT)
.L1394:
	ldr	r1, .L1395+8
	mov	r0, r4
.LPIC185:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L1353:
	ldr	r1, .L1395+12
	mov	r0, r4
.LPIC184:
	add	r1, pc
	bl	png_error(PLT)
.L1396:
	.align	2
.L1395:
	.word	.LC58-(.LPIC187+4)
	.word	.LC57-(.LPIC186+4)
	.word	.LC41-(.LPIC185+4)
	.word	.LC56-(.LPIC184+4)
	.size	png_read_IDAT_data, .-png_read_IDAT_data
	.section	.text.png_read_finish_IDAT,"ax",%progbits
	.align	2
	.global	png_read_finish_IDAT
	.thumb
	.thumb_func
	.type	png_read_finish_IDAT, %function
png_read_finish_IDAT:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #452]
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ands	r5, r2, #8
	beq	.L1403
	ldr	r2, [r4, #460]
	movw	r3, #16724
	movt	r3, 18756
	cmp	r2, r3
	beq	.L1404
.L1397:
	pop	{r3, r4, r5, pc}
.L1403:
	mov	r2, r5
	mov	r1, r5
	bl	png_read_IDAT_data(PLT)
	ldr	r3, [r4, #452]
	str	r5, [r4, #476]
	lsls	r2, r3, #28
	ittt	pl
	ldrpl	r2, [r4, #448]
	orrpl	r3, r3, #8
	strpl	r3, [r4, #452]
	movw	r3, #16724
	movt	r3, 18756
	itt	pl
	orrpl	r2, r2, #8
	strpl	r2, [r4, #448]
	ldr	r2, [r4, #460]
	cmp	r2, r3
	bne	.L1397
.L1404:
	movs	r3, #0
	mov	r0, r4
	str	r3, [r4, #464]
	str	r3, [r4, #468]
	str	r3, [r4, #460]
	ldr	r1, [r4, #648]
	pop	{r3, r4, r5, lr}
	b	png_crc_finish(PLT)
	.size	png_read_finish_IDAT, .-png_read_finish_IDAT
	.section	.text.png_set_interlaced_pass,"ax",%progbits
	.align	2
	.global	png_set_interlaced_pass
	.thumb
	.thumb_func
	.type	png_set_interlaced_pass, %function
png_set_interlaced_pass:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	uxtb	ip, r1
	ldr	r5, .L1407
	mov	r8, r0
	mov	r9, r1
	sub	sp, sp, #56
	ldr	r7, [r0, #588]
	mov	r6, sp
.LPIC188:
	add	r5, pc
	add	r4, sp, #28
	mov	lr, r5
	adds	r5, r5, #28
	ldmia	lr!, {r0, r1, r2, r3}
	add	r10, sp, #56
	add	ip, r10, ip, lsl #2
	subs	r7, r7, #1
	strb	r9, [r8, #673]
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2}
	stmia	r6, {r0, r1, r2}
	ldr	r6, [ip, #-56]
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2}
	stmia	r4, {r0, r1, r2}
	ldr	r1, [ip, #-28]
	adds	r0, r7, r1
	subs	r0, r0, r6
	bl	__aeabi_uidiv(PLT)
	str	r0, [r8, #608]
	add	sp, sp, #56
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L1408:
	.align	2
.L1407:
	.word	.LANCHOR3-(.LPIC188+4)
	.size	png_set_interlaced_pass, .-png_set_interlaced_pass
	.section	.text.png_read_finish_row,"ax",%progbits
	.align	2
	.global	png_read_finish_row
	.thumb
	.thumb_func
	.type	png_read_finish_row, %function
png_read_finish_row:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #612]
	ldr	r2, [r0, #596]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0
	adds	r3, r3, #1
	cmp	r3, r2
	str	r3, [r0, #612]
	bcc	.L1409
	ldrb	r3, [r0, #672]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1411
	ldr	r2, [r0, #604]
	movs	r1, #0
	str	r1, [r0, #612]
	ldr	r7, .L1428
	ldr	r0, [r0, #620]
	adds	r2, r2, #1
	ldr	r6, .L1428+4
	ldr	r9, .L1428+8
.LPIC190:
	add	r7, pc
	ldr	r8, .L1428+12
	bl	memset(PLT)
	ldrb	r4, [r5, #673]	@ zero_extendqisi2
.LPIC191:
	add	r6, pc
.LPIC192:
	add	r9, pc
.LPIC193:
	add	r8, pc
.L1412:
	adds	r4, r4, #1
	uxtb	r4, r4
	cmp	r4, #6
	bhi	.L1427
	ldr	r3, [r5, #588]
	ldrb	r1, [r7, r4]	@ zero_extendqisi2
	ldrb	r0, [r6, r4]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	r3, r3, r1
	subs	r0, r3, r0
	bl	__aeabi_uidiv(PLT)
	ldr	r3, [r5, #456]
	mov	r10, r0
	str	r0, [r5, #608]
	lsls	r3, r3, #30
	bmi	.L1414
	ldr	r3, [r5, #592]
	ldrb	r1, [r9, r4]	@ zero_extendqisi2
	ldrb	r0, [r8, r4]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	r3, r3, r1
	subs	r0, r3, r0
	bl	__aeabi_uidiv(PLT)
	str	r0, [r5, #596]
	cmp	r0, #0
	beq	.L1412
	cmp	r10, #0
	beq	.L1412
.L1414:
	strb	r4, [r5, #673]
.L1409:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L1427:
	strb	r4, [r5, #673]
.L1411:
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	png_read_finish_IDAT(PLT)
.L1429:
	.align	2
.L1428:
	.word	.LANCHOR4-(.LPIC190+4)
	.word	.LANCHOR5-(.LPIC191+4)
	.word	.LANCHOR6-(.LPIC192+4)
	.word	.LANCHOR7-(.LPIC193+4)
	.size	png_read_finish_row, .-png_read_finish_row
	.section	.text.png_read_start_row,"ax",%progbits
	.align	2
	.global	png_read_start_row
	.thumb
	.thumb_func
	.type	png_read_start_row, %function
png_read_start_row:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #68
	bl	png_init_read_transformations(PLT)
	ldrb	r3, [r4, #672]	@ zero_extendqisi2
	ldr	r5, [r4, #456]
	cmp	r3, #0
	beq	.L1431
	lsls	r1, r5, #30
	ldr	r1, .L1508
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	ldr	r0, .L1508+4
	ldr	r2, [r4, #592]
.LPIC194:
	add	r1, pc
	ldr	r6, [r4, #588]
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
.LPIC195:
	add	r0, pc
	it	pl
	addpl	r2, r2, #7
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	it	pl
	lsrpl	r2, r2, #3
	subs	r0, r6, #1
	add	r0, r0, r1
	str	r2, [r4, #596]
	subs	r0, r0, r3
	bl	__aeabi_uidiv(PLT)
	str	r0, [r4, #608]
.L1434:
	lsls	r2, r5, #29
	ldrb	r3, [r4, #678]	@ zero_extendqisi2
	bpl	.L1435
	ldrb	r2, [r4, #676]	@ zero_extendqisi2
	cmp	r2, #7
	it	ls
	movls	r3, #8
.L1435:
	lsls	r7, r5, #19
	bmi	.L1500
	lsls	r2, r5, #22
	bmi	.L1463
.L1442:
	ands	r2, r5, #32768
	beq	.L1443
	ldrb	r1, [r4, #675]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L1444
	cmp	r3, #8
	ite	gt
	movgt	r3, #32
	movle	r3, #16
.L1443:
	lsls	r0, r5, #17
	bpl	.L1445
	ldrh	r1, [r4, #668]
	cmp	r1, #0
	beq	.L1446
	lsls	r1, r5, #19
	bpl	.L1446
.L1447:
	cmp	r3, #16
	ite	gt
	movgt	r3, #64
	movle	r3, #32
.L1445:
	lsls	r7, r5, #11
	bpl	.L1450
	ldrb	r1, [r4, #444]	@ zero_extendqisi2
	ldrb	r2, [r4, #445]	@ zero_extendqisi2
	smulbb	r2, r1, r2
	cmp	r3, r2
	it	lt
	movlt	r3, r2
.L1450:
	adds	r6, r6, #7
	cmp	r3, #7
	bic	r6, r6, #7
	ite	gt
	lsrgt	r5, r3, #3
	mulle	r5, r6, r3
	mov	r2, #0
	strb	r3, [r4, #682]
	add	r3, r3, #7
	it	gt
	mulgt	r5, r6, r5
	strb	r2, [r4, #683]
	ldr	r2, [r4, #1024]
	it	le
	lsrle	r5, r5, #3
	adds	r5, r5, #1
	add	r5, r5, r3, asr #3
	adds	r5, r5, #48
	cmp	r5, r2
	bhi	.L1501
.L1453:
	ldr	r2, [r4, #604]
	adds	r6, r2, #1
	beq	.L1502
	movs	r1, #0
	adds	r2, r2, #1
	ldr	r0, [r4, #620]
	bl	memset(PLT)
	ldr	r1, [r4, #1028]
	cbz	r1, .L1457
	movs	r3, #0
	mov	r0, r4
	str	r3, [r4, #1032]
	str	r3, [r4, #1028]
	bl	png_free(PLT)
.L1457:
	ldr	r2, [r4, #460]
	cmp	r2, #0
	bne	.L1503
.L1458:
	ldr	r2, [r4, #452]
	movs	r3, #0
	str	r3, [r4, #464]
	add	r0, r4, #464
	str	r3, [r4, #468]
	lsls	r5, r2, #30
	str	r3, [r4, #476]
	str	r3, [r4, #480]
	bmi	.L1504
	ldr	r1, .L1508+8
	movs	r2, #56
.LPIC198:
	add	r1, pc
	bl	inflateInit_(PLT)
	cmp	r0, #0
	bne	.L1460
	ldr	r2, [r4, #452]
	orr	r2, r2, #2
.L1461:
	movw	r3, #16724
	orr	r2, r2, #64
	movt	r3, 18756
	str	r2, [r4, #452]
	str	r3, [r4, #460]
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1500:
	ldrb	r2, [r4, #675]	@ zero_extendqisi2
	cmp	r2, #3
	beq	.L1505
	cmp	r2, #0
	bne	.L1440
	ldrh	r2, [r4, #668]
	cmp	r3, #8
	it	lt
	movlt	r3, #8
	cmp	r2, #0
	beq	.L1439
	lsls	r3, r3, #1
	b	.L1439
.L1431:
	ldr	r3, [r4, #592]
	ldr	r6, [r4, #588]
	str	r3, [r4, #596]
	str	r6, [r4, #608]
	b	.L1434
.L1504:
	bl	inflateReset(PLT)
	cbnz	r0, .L1460
	ldr	r2, [r4, #452]
	b	.L1461
.L1446:
	cmp	r2, #0
	bne	.L1447
	ldrb	r2, [r4, #675]	@ zero_extendqisi2
	cmp	r2, #4
	beq	.L1447
	cmp	r3, #8
	bgt	.L1449
	cmp	r2, #6
	ite	ne
	movne	r3, #24
	moveq	r3, #32
	b	.L1445
.L1444:
	subs	r1, r1, #2
	cmp	r1, #1
	bhi	.L1443
	cmp	r3, #32
	ite	gt
	movgt	r3, #64
	movle	r3, #32
	b	.L1443
.L1460:
	mov	r1, r0
	mov	r0, r4
	bl	png_zstream_error(PLT)
	mov	r0, r4
	ldr	r1, [r4, #488]
	bl	png_error(PLT)
.L1501:
	mov	r0, r4
	ldr	r1, [r4, #968]
	bl	png_free(PLT)
	mov	r0, r4
	ldr	r1, [r4, #1044]
	bl	png_free(PLT)
	ldrb	r3, [r4, #672]	@ zero_extendqisi2
	mov	r0, r4
	mov	r1, r5
	cmp	r3, #0
	bne	.L1506
	bl	png_malloc(PLT)
	str	r0, [r4, #968]
.L1455:
	mov	r1, r5
	mov	r0, r4
	bl	png_malloc(PLT)
	ldr	r3, [r4, #968]
	add	r2, r0, #32
	and	r1, r2, #15
	str	r0, [r4, #1044]
	mvns	r1, r1
	str	r5, [r4, #1024]
	adds	r3, r3, #32
	add	r2, r2, r1
	and	r1, r3, #15
	str	r2, [r4, #620]
	mvns	r2, r1
	add	r3, r3, r2
	str	r3, [r4, #624]
	b	.L1453
.L1503:
	ldr	r3, .L1508+12
	lsr	lr, r2, #24
	lsrs	r7, r2, #16
	lsrs	r6, r2, #8
	strb	r2, [sp, #3]
.LPIC197:
	add	r3, pc
	movs	r1, #64
	movs	r2, #4
	mov	r0, sp
	strb	lr, [sp]
	strb	r7, [sp, #1]
	strb	r6, [sp, #2]
	bl	png_safecat(PLT)
	mov	r0, r4
	mov	r1, sp
	bl	png_chunk_warning(PLT)
	movs	r3, #0
	str	r3, [r4, #460]
	b	.L1458
.L1463:
	bic	r5, r5, #512
	str	r5, [r4, #456]
	b	.L1442
.L1440:
	cmp	r2, #2
	beq	.L1507
.L1439:
	lsls	r1, r5, #22
	bpl	.L1442
	ldrb	r2, [r4, #676]	@ zero_extendqisi2
	cmp	r2, #15
	it	ls
	lslls	r3, r3, #1
	b	.L1442
.L1506:
	bl	png_calloc(PLT)
	str	r0, [r4, #968]
	b	.L1455
.L1505:
	ldrh	r3, [r4, #668]
	cmp	r3, #0
	ite	ne
	movne	r3, #32
	moveq	r3, #24
	b	.L1439
.L1449:
	cmp	r2, #6
	ite	ne
	movne	r3, #48
	moveq	r3, #64
	b	.L1445
.L1507:
	ldrh	r2, [r4, #668]
	cmp	r2, #0
	beq	.L1439
	lsls	r3, r3, #2
	movw	r2, #21846
	movt	r2, 21845
	smull	r1, r2, r2, r3
	sub	r3, r2, r3, asr #31
	b	.L1439
.L1502:
	ldr	r1, .L1508+16
	mov	r0, r4
.LPIC196:
	add	r1, pc
	bl	png_error(PLT)
.L1509:
	.align	2
.L1508:
	.word	.LANCHOR8-(.LPIC194+4)
	.word	.LANCHOR9-(.LPIC195+4)
	.word	.LC4-(.LPIC198+4)
	.word	.LC3-(.LPIC197+4)
	.word	.LC59-(.LPIC196+4)
	.size	png_read_start_row, .-png_read_start_row
	.section	.rodata
	.align	2
.LANCHOR3 = . + 0
.LC0:
	.word	0
	.word	4
	.word	0
	.word	2
	.word	0
	.word	1
	.word	0
.LC1:
	.word	8
	.word	8
	.word	4
	.word	4
	.word	2
	.word	2
	.word	1
	.section	.rodata.png_pass_yinc.9374,"a",%progbits
	.align	3
.LANCHOR6 = . + 0
	.type	png_pass_yinc.9374, %object
	.size	png_pass_yinc.9374, 7
png_pass_yinc.9374:
	.byte	8
	.byte	8
	.byte	8
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.section	.rodata.png_pass_inc.9372,"a",%progbits
	.align	3
.LANCHOR4 = . + 0
	.type	png_pass_inc.9372, %object
	.size	png_pass_inc.9372, 7
png_pass_inc.9372:
	.byte	8
	.byte	8
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	1
	.section	.rodata.png_pass_inc.9381,"a",%progbits
	.align	3
.LANCHOR8 = . + 0
	.type	png_pass_inc.9381, %object
	.size	png_pass_inc.9381, 7
png_pass_inc.9381:
	.byte	8
	.byte	8
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	1
	.section	.rodata.png_pass_ystart.9373,"a",%progbits
	.align	3
.LANCHOR7 = . + 0
	.type	png_pass_ystart.9373, %object
	.size	png_pass_ystart.9373, 7
png_pass_ystart.9373:
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC2:
	.ascii	"zstream unclaimed\000"
	.space	2
.LC3:
	.ascii	" using zstream\000"
	.space	1
.LC4:
	.ascii	"1.2.8\000"
	.space	2
.LC5:
	.ascii	"extra compressed data\000"
	.space	2
.LC6:
	.ascii	"PNG unsigned integer out of range\000"
	.space	2
.LC7:
	.ascii	"Not a PNG file\000"
	.space	1
.LC8:
	.ascii	"PNG file corrupted by ASCII conversion\000"
	.space	1
.LC9:
	.ascii	"CRC error\000"
	.space	2
.LC10:
	.ascii	"out of place\000"
	.space	3
.LC11:
	.ascii	"invalid\000"
.LC12:
	.ascii	"missing IHDR\000"
	.space	3
.LC13:
	.ascii	"duplicate\000"
	.space	2
.LC14:
	.ascii	"ignored in grayscale PNG\000"
	.space	3
.LC15:
	.ascii	"tRNS must be after\000"
	.space	1
.LC16:
	.ascii	"hIST must be after\000"
	.space	1
.LC17:
	.ascii	"bKGD must be after\000"
	.space	1
.LC18:
	.ascii	"invalid values\000"
	.space	1
.LC19:
	.ascii	"too many profiles\000"
	.space	2
.LC20:
	.ascii	"out of memory\000"
	.space	2
.LC21:
	.ascii	"bad keyword\000"
.LC22:
	.ascii	"bad compression method\000"
	.space	1
.LC23:
	.ascii	"truncated\000"
	.space	2
.LC24:
	.ascii	"too short\000"
	.space	2
.LC25:
	.ascii	"No space in chunk cache for sPLT\000"
	.space	3
.LC26:
	.ascii	"malformed sPLT chunk\000"
	.space	3
.LC27:
	.ascii	"sPLT chunk has bad length\000"
	.space	2
.LC28:
	.ascii	"sPLT chunk too long\000"
.LC29:
	.ascii	"sPLT chunk requires too much memory\000"
.LC30:
	.ascii	"invalid with alpha channel\000"
	.space	1
.LC31:
	.ascii	"invalid index\000"
	.space	2
.LC32:
	.ascii	"invalid parameter count\000"
.LC33:
	.ascii	"unrecognized equation type\000"
	.space	1
.LC34:
	.ascii	"invalid data\000"
	.space	3
.LC35:
	.ascii	"invalid unit\000"
	.space	3
.LC36:
	.ascii	"bad width format\000"
	.space	3
.LC37:
	.ascii	"non-positive width\000"
	.space	1
.LC38:
	.ascii	"bad height format\000"
	.space	2
.LC39:
	.ascii	"non-positive height\000"
.LC40:
	.ascii	"no space in chunk cache\000"
.LC41:
	.ascii	"insufficient memory to read chunk\000"
	.space	2
.LC42:
	.ascii	"Insufficient memory to process text chunk\000"
	.space	2
.LC43:
	.ascii	"insufficient memory\000"
.LC44:
	.ascii	"unknown compression type\000"
	.space	3
.LC45:
	.ascii	"bad compression info\000"
	.space	3
.LC46:
	.ascii	"unknown chunk exceeds memory limits\000"
.LC47:
	.ascii	"error in user chunk\000"
.LC48:
	.ascii	"Saving unknown chunk:\000"
	.space	2
.LC49:
	.ascii	"forcing save of an unhandled chunk; please call png"
	.ascii	"_set_keep_unknown_chunks\000"
.LC50:
	.ascii	"unhandled critical chunk\000"
	.space	3
.LC51:
	.ascii	"invalid chunk type\000"
	.space	1
.LC52:
	.ascii	"internal row logic error\000"
	.space	3
.LC53:
	.ascii	"internal row size calculation error\000"
.LC54:
	.ascii	"internal row width error\000"
	.space	3
.LC55:
	.ascii	"invalid user transform pixel depth\000"
	.space	1
.LC56:
	.ascii	"Not enough image data\000"
	.space	2
.LC57:
	.ascii	"Extra compressed data\000"
	.space	2
.LC58:
	.ascii	"Too much image data\000"
.LC59:
	.ascii	"Row has too many bytes to allocate in memory\000"
	.section	.rodata.png_pass_inc.9180,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	png_pass_inc.9180, %object
	.size	png_pass_inc.9180, 28
png_pass_inc.9180:
	.word	8
	.word	8
	.word	4
	.word	4
	.word	2
	.word	2
	.word	1
	.section	.rodata.display_mask.9136,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	display_mask.9136, %object
	.size	display_mask.9136, 72
display_mask.9136:
	.word	-252645136
	.word	1145324612
	.word	-1431655766
	.word	-16711936
	.word	808464432
	.word	-858993460
	.word	-65536
	.word	251662080
	.word	-252645136
	.word	252645135
	.word	572662306
	.word	1431655765
	.word	-16711936
	.word	202116108
	.word	858993459
	.word	-65536
	.word	-268374016
	.word	252645135
	.section	.rodata.png_pass_start.9380,"a",%progbits
	.align	3
.LANCHOR9 = . + 0
	.type	png_pass_start.9380, %object
	.size	png_pass_start.9380, 7
png_pass_start.9380:
	.byte	0
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.section	.rodata.row_mask.9135,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	row_mask.9135, %object
	.size	row_mask.9135, 144
row_mask.9135:
	.word	16843009
	.word	269488144
	.word	286331153
	.word	1145324612
	.word	1431655765
	.word	-1431655766
	.word	196611
	.word	50332416
	.word	50529027
	.word	808464432
	.word	858993459
	.word	-858993460
	.word	15
	.word	983040
	.word	983055
	.word	251662080
	.word	252645135
	.word	-252645136
	.word	-2139062144
	.word	134744072
	.word	-2004318072
	.word	572662306
	.word	-1431655766
	.word	1431655765
	.word	12583104
	.word	-1073692672
	.word	-1061109568
	.word	202116108
	.word	-858993460
	.word	858993459
	.word	240
	.word	15728640
	.word	15728880
	.word	-268374016
	.word	-252645136
	.word	252645135
	.section	.rodata.png_pass_start.9371,"a",%progbits
	.align	3
.LANCHOR5 = . + 0
	.type	png_pass_start.9371, %object
	.size	png_pass_start.9371, 7
png_pass_start.9371:
	.byte	0
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
