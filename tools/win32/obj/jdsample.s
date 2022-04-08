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
	.file	"jdsample.c"
	.section	.text.start_pass_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_upsample, %function
start_pass_upsample:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #464]
	ldr	r1, [r0, #324]
	ldr	r2, [r0, #124]
	str	r1, [r3, #92]
	str	r2, [r3, #96]
	bx	lr
	.size	start_pass_upsample, .-start_pass_upsample
	.section	.text.sep_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sep_upsample, %function
sep_upsample:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r9, [r0, #464]
	sub	sp, sp, #20
	mov	r10, r2
	ldr	r7, [r0, #324]
	ldr	r0, [r9, #92]
	cmp	r0, r7
	bge	.L3
	add	r6, r9, #12
	mov	r2, r0
	mov	r1, r6
	str	r6, [sp, #12]
.L4:
	ldr	r6, [sp, #60]
	subs	r7, r7, r0
	ldr	r0, [sp, #64]
	ldr	ip, [r5, #468]
	ldr	lr, [r6]
	ldr	r6, [r9, #96]
	rsb	r4, lr, r0
	mov	r0, r5
	cmp	r4, r6
	it	cs
	movcs	r4, r6
	ldr	r6, [sp, #56]
	cmp	r4, r7
	it	cs
	movcs	r4, r7
	str	r4, [sp]
	add	r3, r6, lr, lsl #2
	ldr	r6, [ip, #4]
	blx	r6
	ldr	r6, [sp, #60]
	ldr	r3, [r6]
	add	r3, r3, r4
	str	r3, [r6]
	ldr	r3, [r9, #92]
	ldr	r2, [r9, #96]
	ldr	r1, [r5, #324]
	subs	r2, r2, r4
	add	r4, r4, r3
	cmp	r4, r1
	str	r2, [r9, #96]
	str	r4, [r9, #92]
	ittt	ge
	ldrge	r3, [r10]
	addge	r3, r3, #1
	strge	r3, [r10]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3:
	ldr	r3, [r5, #40]
	ldr	r6, [r5, #224]
	cmp	r3, #0
	ble	.L12
	add	r0, r9, #12
	sub	r8, r1, #4
	mov	r4, r0
	movs	r7, #0
	str	r0, [sp, #12]
.L7:
	ldr	r3, [r10]
	mov	r1, r6
	ldr	lr, [r4, #88]
	mov	r0, r5
	ldr	r2, [r8, #4]!
	adds	r7, r7, #1
	ldr	ip, [r4, #40]
	adds	r6, r6, #84
	lsl	fp, r3, #2
	mov	r3, r4
	adds	r4, r4, #4
	mla	r2, lr, fp, r2
	blx	ip
	ldr	r3, [r5, #40]
	cmp	r3, r7
	bgt	.L7
	ldr	r7, [r5, #324]
.L6:
	movs	r3, #0
	ldr	r1, [sp, #12]
	mov	r2, r3
	str	r3, [r9, #92]
	mov	r0, r3
	b	.L4
.L12:
	add	r6, r9, #12
	str	r6, [sp, #12]
	b	.L6
	.size	sep_upsample, .-sep_upsample
	.section	.text.fullsize_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fullsize_upsample, %function
fullsize_upsample:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	str	r2, [r3]
	bx	lr
	.size	fullsize_upsample, .-fullsize_upsample
	.section	.text.noop_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	noop_upsample, %function
noop_upsample:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, #0
	str	r2, [r3]
	bx	lr
	.size	noop_upsample, .-noop_upsample
	.section	.text.h2v1_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v1_upsample, %function
h2v1_upsample:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r0, [sp, #8]
	ldr	r0, [r0, #324]
	ldr	r3, [r3]
	str	r2, [sp, #20]
	cmp	r0, #0
	str	r3, [sp, #16]
	ble	.L15
	mov	ip, #0
	mov	r8, ip
.L29:
	ldr	r2, [sp, #16]
	ldr	r4, [sp, #8]
	ldr	r5, [sp, #20]
	ldr	r1, [r2, ip]
	ldr	r3, [r4, #120]
	ldr	r2, [r5, ip]
	add	r3, r3, r1
	cmp	r1, r3
	bcs	.L17
	mvns	r0, r1
	add	r0, r0, r3
	lsrs	r0, r0, #1
	adds	r0, r0, #1
	add	r5, r1, r0, lsl #1
	adds	r4, r2, r0
	cmp	r1, r4
	it	cc
	cmpcc	r2, r5
	ite	cs
	movcs	r4, #1
	movcc	r4, #0
	cmp	r0, #15
	ite	ls
	movls	r4, #0
	andhi	r4, r4, #1
	cmp	r4, #0
	beq	.L27
	lsrs	r4, r0, #4
	cmp	r4, #2
	str	r4, [sp, #4]
	lsl	r7, r4, #4
	bls	.L30
	subs	r5, r4, #3
	mov	lr, r1
	bic	r5, r5, #1
	mov	r4, r2
	mov	r9, #0
	adds	r5, r5, #2
	str	r5, [sp, #12]
.L23:
	mov	r5, r4
	mov	r6, lr
	vld1.8	{q8}, [r4]
	add	r9, r9, #2
	pld	[r4, #112]
	add	r10, r4, #32
	vld1.8	{q9}, [r5]!
	add	fp, lr, #64
	mov	r4, r10
	mov	lr, fp
	vst2.8	{d16-d19}, [r6]!
	vld1.8	{q8}, [r5]
	vld1.8	{q9}, [r5]
	ldr	r5, [sp, #12]
	vst2.8	{d16-d19}, [r6]
	cmp	r9, r5
	bne	.L23
.L19:
	ldr	r5, [sp, #4]
	mov	r4, r9
.L25:
	adds	r4, r4, #1
	vld1.8	{q8}, [r10]
	cmp	r5, r4
	vld1.8	{q9}, [r10]!
	vst2.8	{d16-d19}, [fp]!
	bhi	.L25
	cmp	r0, r7
	add	r5, r2, r7
	add	r4, r1, r7, lsl #1
	beq	.L26
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	adds	r0, r4, #2
	cmp	r3, r0
	strb	r2, [r1, r7, lsl #1]
	strb	r2, [r4, #1]
	bls	.L26
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	adds	r1, r4, #4
	cmp	r3, r1
	strb	r2, [r4, #2]
	strb	r2, [r4, #3]
	bls	.L26
	ldrb	r2, [r5, #2]	@ zero_extendqisi2
	adds	r1, r4, #6
	cmp	r3, r1
	strb	r2, [r4, #4]
	strb	r2, [r4, #5]
	bls	.L26
	ldrb	r2, [r5, #3]	@ zero_extendqisi2
	add	r1, r4, #8
	cmp	r3, r1
	strb	r2, [r4, #6]
	strb	r2, [r4, #7]
	bls	.L26
	ldrb	r2, [r5, #4]	@ zero_extendqisi2
	add	r1, r4, #10
	cmp	r3, r1
	strb	r2, [r4, #8]
	strb	r2, [r4, #9]
	bls	.L26
	ldrb	r2, [r5, #5]	@ zero_extendqisi2
	add	r1, r4, #12
	cmp	r3, r1
	strb	r2, [r4, #10]
	strb	r2, [r4, #11]
	bls	.L26
	ldrb	r2, [r5, #6]	@ zero_extendqisi2
	add	r1, r4, #14
	cmp	r3, r1
	strb	r2, [r4, #12]
	strb	r2, [r4, #13]
	bls	.L26
	ldrb	r2, [r5, #7]	@ zero_extendqisi2
	add	r1, r4, #16
	cmp	r3, r1
	strb	r2, [r4, #14]
	strb	r2, [r4, #15]
	bls	.L26
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	add	r1, r4, #18
	cmp	r3, r1
	strb	r2, [r4, #16]
	strb	r2, [r4, #17]
	bls	.L26
	ldrb	r2, [r5, #9]	@ zero_extendqisi2
	add	r1, r4, #20
	cmp	r3, r1
	strb	r2, [r4, #18]
	strb	r2, [r4, #19]
	bls	.L26
	ldrb	r2, [r5, #10]	@ zero_extendqisi2
	add	r1, r4, #22
	cmp	r3, r1
	strb	r2, [r4, #20]
	strb	r2, [r4, #21]
	bls	.L26
	ldrb	r2, [r5, #11]	@ zero_extendqisi2
	add	r1, r4, #24
	cmp	r3, r1
	strb	r2, [r4, #22]
	strb	r2, [r4, #23]
	bls	.L26
	ldrb	r2, [r5, #12]	@ zero_extendqisi2
	add	r1, r4, #26
	cmp	r3, r1
	strb	r2, [r4, #24]
	strb	r2, [r4, #25]
	bls	.L26
	ldrb	r2, [r5, #13]	@ zero_extendqisi2
	add	r1, r4, #28
	cmp	r3, r1
	strb	r2, [r4, #26]
	strb	r2, [r4, #27]
	bls	.L26
	ldrb	r3, [r5, #14]	@ zero_extendqisi2
	strb	r3, [r4, #28]
	strb	r3, [r4, #29]
.L26:
	ldr	r4, [sp, #8]
	ldr	r0, [r4, #324]
.L17:
	add	r8, r8, #1
	add	ip, ip, #4
	cmp	r8, r0
	blt	.L29
.L15:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L27:
	ldrb	r0, [r2], #1	@ zero_extendqisi2
	adds	r1, r1, #2
	strb	r0, [r1, #-2]
	strb	r0, [r1, #-1]
	cmp	r3, r1
	bls	.L26
	ldrb	r0, [r2], #1	@ zero_extendqisi2
	adds	r1, r1, #2
	strb	r0, [r1, #-2]
	strb	r0, [r1, #-1]
	cmp	r3, r1
	bhi	.L27
	b	.L26
.L30:
	mov	fp, r1
	mov	r10, r2
	mov	r9, #0
	b	.L19
	.size	h2v1_upsample, .-h2v1_upsample
	.section	.text.h2v1_fancy_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v1_fancy_upsample, %function
h2v1_fancy_upsample:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #44
	str	r1, [sp, #28]
	ldr	r1, [r0, #324]
	ldr	r3, [r3]
	str	r0, [sp, #20]
	cmp	r1, #0
	str	r2, [sp, #32]
	str	r3, [sp, #24]
	ble	.L34
	vmov.i16	q12, #3  @ v8hi
	mov	fp, #3
	vmov.i32	q11, #1  @ v4si
	movs	r5, #0
	vmov.i32	q10, #2  @ v4si
	str	r5, [sp]
.L48:
	ldr	r0, [sp, #32]
	ldr	r2, [sp, #24]
	ldr	r1, [r0, r5]
	ldr	lr, [r2, r5]
	ldrb	r0, [r1]	@ zero_extendqisi2
	adds	r3, r1, #1
	mov	r2, lr
	strb	r0, [r2], #2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	smlabb	r0, fp, r0, r4
	adds	r0, r0, #2
	asrs	r0, r0, #2
	strb	r0, [lr, #1]
	ldr	r0, [sp, #28]
	ldr	r7, [r0, #40]
	subs	r0, r7, #2
	beq	.L49
	add	r4, r2, r7, lsl #1
	adds	r6, r3, r0
	add	ip, r1, r0
	subs	r4, r4, #4
	add	r9, r1, #2
	cmp	r3, r4
	it	cc
	cmpcc	r2, r6
	add	r10, r9, r0
	ite	cs
	movcs	r8, #1
	movcc	r8, #0
	cmp	r1, r4
	it	cc
	cmpcc	r2, ip
	ite	cs
	movcs	ip, #1
	movcc	ip, #0
	cmp	r4, r9
	and	ip, r8, ip
	ite	hi
	movhi	r8, #0
	movls	r8, #1
	cmp	r2, r10
	it	cs
	orrcs	r8, r8, #1
	cmp	r0, #15
	ite	ls
	movls	ip, #0
	andhi	ip, ip, #1
	tst	ip, r8
	beq	.L37
	lsr	r10, r0, #4
	lsl	r7, r10, #4
	cmp	r10, #2
	str	r7, [sp, #4]
	bls	.L50
	sub	r7, r10, #3
	mov	r8, r1
	bic	r7, r7, #1
	mov	ip, r2
	adds	r7, r7, #2
	mov	r1, r3
	str	r7, [sp, #16]
	movs	r7, #0
	str	r2, [sp, #36]
.L42:
	vld1.8	{q13}, [r1]
	mov	r2, ip
	vmovl.u8 q15, d26
	add	lr, r1, #16
	vld1.8	{q0}, [r8]
	add	ip, ip, #64
	vmull.s16 q2, d30, d24
	add	r8, r8, #32
	vld1.8	{q3}, [r9]
	adds	r7, r7, #2
	vmovl.u8 q4, d0
	add	r9, r9, #32
	vmovl.u8 q1, d6
	vmovl.u8 q13, d27
	vmull.s16 q15, d31, d25
	vmull.s16 q14, d26, d24
	vmovl.u8 q0, d1
	vmull.s16 q13, d27, d25
	vmovl.u8 q3, d7
	vmovl.u16 q5, d2
	vmovl.u16 q7, d8
	vmovl.u16 q6, d0
	vmovl.u16 q1, d3
	vadd.i32	q7, q7, q2
	vmovl.u16 q4, d9
	vadd.i32	q2, q5, q2
	vmovl.u16 q0, d1
	vmovl.u16 q5, d6
	vmovl.u16 q3, d7
	vadd.i32	q4, q4, q15
	vadd.i32	q6, q6, q14
	vadd.i32	q0, q0, q13
	vadd.i32	q15, q1, q15
	vadd.i32	q14, q5, q14
	vadd.i32	q13, q3, q13
	vadd.i32	q0, q0, q11
	vadd.i32	q7, q7, q11
	vadd.i32	q4, q4, q11
	vadd.i32	q6, q6, q11
	vadd.i32	q2, q2, q10
	vadd.i32	q15, q15, q10
	vadd.i32	q14, q14, q10
	vadd.i32	q13, q13, q10
	vshr.s32	q3, q0, #2
	vshr.s32	q7, q7, #2
	vshr.s32	q4, q4, #2
	vshr.s32	q6, q6, #2
	vshr.s32	q2, q2, #2
	vshr.s32	q15, q15, #2
	vmovn.i32	d0, q7
	vmovn.i32	d1, q4
	vshr.s32	q14, q14, #2
	vmovn.i32	d2, q6
	vmovn.i32	d3, q3
	vshr.s32	q13, q13, #2
	vmovn.i16	d16, q0
	vmovn.i16	d17, q1
	vmovn.i32	d6, q2
	vmovn.i32	d7, q15
	pld	[r1, #48]
	pld	[r1, #47]
	vmovn.i32	d30, q14
	vmovn.i32	d31, q13
	str	ip, [sp, #12]
	vmovn.i16	d18, q3
	vmovn.i16	d19, q15
	add	ip, r1, #15
	str	r8, [sp, #8]
	add	r8, r1, #17
	vst2.8	{d16-d19}, [r2]!
	adds	r1, r1, #32
	vld1.8	{q13}, [lr]
	vmovl.u8 q15, d26
	vld1.8	{q0}, [ip]
	vmull.s16 q2, d30, d24
	vmovl.u8 q4, d0
	vld1.8	{q3}, [r8]
	vmovl.u8 q13, d27
	vmovl.u8 q1, d6
	vmull.s16 q14, d26, d24
	vmull.s16 q15, d31, d25
	vmovl.u8 q0, d1
	vmull.s16 q13, d27, d25
	vmovl.u8 q3, d7
	vmovl.u16 q5, d2
	vmovl.u16 q7, d8
	vmovl.u16 q6, d0
	vmovl.u16 q1, d3
	vadd.i32	q7, q7, q2
	vmovl.u16 q4, d9
	vadd.i32	q2, q5, q2
	vmovl.u16 q0, d1
	vmovl.u16 q5, d6
	vmovl.u16 q3, d7
	vadd.i32	q4, q4, q15
	vadd.i32	q6, q6, q14
	vadd.i32	q0, q0, q13
	vadd.i32	q15, q1, q15
	vadd.i32	q13, q3, q13
	vadd.i32	q14, q5, q14
	vadd.i32	q0, q0, q11
	vadd.i32	q7, q7, q11
	vadd.i32	q4, q4, q11
	vadd.i32	q6, q6, q11
	vadd.i32	q2, q2, q10
	vadd.i32	q15, q15, q10
	vadd.i32	q14, q14, q10
	vadd.i32	q13, q13, q10
	vshr.s32	q3, q0, #2
	vshr.s32	q15, q15, #2
	vshr.s32	q7, q7, #2
	vshr.s32	q4, q4, #2
	vshr.s32	q6, q6, #2
	vshr.s32	q2, q2, #2
	vshr.s32	q14, q14, #2
	vmovn.i32	d0, q7
	vmovn.i32	d1, q4
	vshr.s32	q13, q13, #2
	vmovn.i32	d2, q6
	vmovn.i32	d3, q3
	vmovn.i32	d6, q2
	vmovn.i32	d7, q15
	vmovn.i16	d16, q0
	vmovn.i16	d17, q1
	vmovn.i32	d30, q14
	vmovn.i32	d31, q13
	vmovn.i16	d18, q3
	vmovn.i16	d19, q15
	vst2.8	{d16-d19}, [r2]
	ldr	r2, [sp, #16]
	cmp	r7, r2
	bne	.L39
	ldr	r2, [sp, #36]
	ldr	ip, [sp, #12]
	ldr	r8, [sp, #8]
.L44:
	vld1.8	{q13}, [r1]!
	adds	r7, r7, #1
	vmovl.u8 q15, d26
	cmp	r10, r7
	vmovl.u8 q13, d27
	vmull.s16 q2, d30, d24
	vld1.8	{q0}, [r8]!
	vmovl.u8 q4, d0
	vld1.8	{q3}, [r9]!
	vmovl.u8 q1, d6
	vmull.s16 q15, d31, d25
	vmull.s16 q14, d26, d24
	vmovl.u8 q0, d1
	vmull.s16 q13, d27, d25
	vmovl.u8 q3, d7
	vmovl.u16 q5, d2
	vmovl.u16 q7, d8
	vmovl.u16 q6, d0
	vmovl.u16 q4, d9
	vmovl.u16 q0, d1
	vadd.i32	q7, q7, q2
	vmovl.u16 q1, d3
	vadd.i32	q2, q5, q2
	vmovl.u16 q5, d6
	vmovl.u16 q3, d7
	vadd.i32	q4, q4, q15
	vadd.i32	q6, q6, q14
	vadd.i32	q0, q0, q13
	vadd.i32	q1, q1, q15
	vadd.i32	q14, q5, q14
	vadd.i32	q15, q3, q13
	vadd.i32	q7, q7, q11
	vadd.i32	q13, q0, q11
	vadd.i32	q4, q4, q11
	vadd.i32	q6, q6, q11
	vadd.i32	q0, q1, q10
	vadd.i32	q3, q14, q10
	vadd.i32	q2, q2, q10
	vadd.i32	q15, q15, q10
	vshr.s32	q13, q13, #2
	vshr.s32	q7, q7, #2
	vshr.s32	q4, q4, #2
	vshr.s32	q6, q6, #2
	vshr.s32	q2, q2, #2
	vshr.s32	q0, q0, #2
	vmovn.i32	d2, q7
	vmovn.i32	d3, q4
	vshr.s32	q3, q3, #2
	vmovn.i32	d28, q6
	vmovn.i32	d29, q13
	vshr.s32	q15, q15, #2
	vmovn.i16	d16, q1
	vmovn.i16	d17, q14
	vmovn.i32	d28, q2
	vmovn.i32	d29, q0
	vmovn.i32	d26, q3
	vmovn.i32	d27, q15
	vmovn.i16	d18, q14
	vmovn.i16	d19, q13
	vst2.8	{d16-d19}, [ip]!
	bhi	.L44
	ldr	r7, [sp, #4]
	cmp	r0, r7
	add	r3, r3, r7
	add	r2, r2, r7, lsl #1
	sub	r1, r0, r7
	beq	.L36
	adds	r2, r2, #2
	adds	r0, r3, r1
.L41:
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	adds	r2, r2, #2
	ldrb	r7, [r3, #-2]	@ zero_extendqisi2
	cmp	r3, r0
	smlabb	r7, fp, r1, r7
	add	r7, r7, #1
	asr	r7, r7, #2
	strb	r7, [r2, #-4]
	ldrb	r7, [r3]	@ zero_extendqisi2
	smlabb	r1, fp, r1, r7
	add	r1, r1, #2
	asr	r1, r1, #2
	strb	r1, [r2, #-3]
	bne	.L41
.L36:
	ldrb	r3, [r6]	@ zero_extendqisi2
	adds	r5, r5, #4
	ldrb	r2, [r6, #-1]	@ zero_extendqisi2
	ldr	r7, [sp, #20]
	strb	r3, [r4, #1]
	ldr	r0, [sp]
	smlabb	r3, fp, r3, r2
	adds	r0, r0, #1
	adds	r3, r3, #1
	str	r0, [sp]
	asrs	r3, r3, #2
	strb	r3, [r4]
	ldr	r3, [r7, #324]
	cmp	r3, r0
	bgt	.L48
.L34:
	add	sp, sp, #44
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L39:
	ldr	r8, [sp, #8]
	ldr	ip, [sp, #12]
	b	.L42
.L37:
	subs	r7, r7, #1
	add	lr, lr, #4
	add	r1, r1, r7
.L46:
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	add	lr, lr, #2
	ldrb	r0, [r3, #-2]	@ zero_extendqisi2
	cmp	r3, r1
	smlabb	r0, fp, r2, r0
	add	r0, r0, #1
	asr	r0, r0, #2
	strb	r0, [lr, #-4]
	ldrb	r0, [r3]	@ zero_extendqisi2
	smlabb	r2, fp, r2, r0
	add	r2, r2, #2
	asr	r2, r2, #2
	strb	r2, [lr, #-3]
	bne	.L46
	b	.L36
.L49:
	mov	r4, r2
	mov	r6, r3
	b	.L36
.L50:
	mov	r8, r1
	mov	ip, r2
	mov	r1, r3
	movs	r7, #0
	b	.L44
	.size	h2v1_fancy_upsample, .-h2v1_fancy_upsample
	.section	.text.h2v2_fancy_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v2_fancy_upsample, %function
h2v2_fancy_upsample:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r1, [sp, #16]
	ldr	r1, [r0, #324]
	str	r0, [sp, #20]
	ldr	r3, [r3]
	cmp	r1, #0
	ble	.L55
	sub	r10, r2, #4
	mov	fp, #3
	subs	r3, r3, #4
	movs	r0, #0
	str	r3, [sp, #8]
	str	r0, [sp, #12]
.L57:
	ldr	r3, [sp, #8]
	mov	r9, #0
	str	r3, [sp, #4]
.L64:
	ldr	r3, [r10, #4]
	cmp	r9, #0
	beq	.L68
	ldr	r2, [r10, #8]
.L59:
	mov	r1, r3
	mov	r5, r2
	ldrb	r6, [r1], #2	@ zero_extendqisi2
	ldrb	r4, [r5], #2	@ zero_extendqisi2
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	ldr	r7, [sp, #4]
	smlabb	r4, fp, r6, r4
	smlabb	r3, fp, r0, r3
	ldr	r2, [r7, #4]!
	add	r0, r4, r4, lsl #1
	adds	r6, r4, #2
	lsrs	r6, r6, #2
	add	r0, r0, r3
	str	r7, [sp, #4]
	adds	r0, r0, #7
	mov	r8, r2
	asrs	r0, r0, #4
	strb	r6, [r8], #2
	strb	r0, [r2, #1]
	ldr	r0, [sp, #16]
	ldr	r0, [r0, #40]
	subs	ip, r0, #2
	str	r0, [sp]
	beq	.L65
	adds	r2, r2, #4
	add	ip, ip, r1
	b	.L62
.L69:
	mov	r3, r7
.L62:
	ldrb	lr, [r1], #1	@ zero_extendqisi2
	add	r0, r3, r3, lsl #1
	ldrb	r7, [r5], #1	@ zero_extendqisi2
	adds	r2, r2, #2
	adds	r6, r0, r4
	mov	r4, r3
	adds	r6, r6, #8
	cmp	r1, ip
	asr	r6, r6, #4
	smlabb	r7, fp, lr, r7
	strb	r6, [r2, #-4]
	add	r0, r0, r7
	add	r0, r0, #7
	asr	r0, r0, #4
	strb	r0, [r2, #-3]
	bne	.L69
	ldr	r2, [sp]
	add	r8, r8, r2, lsl #1
	sub	r8, r8, #4
.L60:
	add	r2, r7, r7, lsl #1
	lsls	r7, r7, #2
	add	r3, r3, r2
	adds	r7, r7, #7
	adds	r3, r3, #8
	add	r9, r9, #1
	asrs	r7, r7, #4
	asrs	r3, r3, #4
	cmp	r9, #2
	strb	r7, [r8, #1]
	strb	r3, [r8]
	bne	.L64
	ldr	r7, [sp, #20]
	add	r10, r10, #4
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #8]
	ldr	r3, [r7, #324]
	adds	r0, r0, #2
	adds	r2, r2, #8
	str	r0, [sp, #12]
	cmp	r3, r0
	str	r2, [sp, #8]
	bgt	.L57
.L55:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L65:
	mov	r7, r3
	mov	r3, r4
	b	.L60
.L68:
	ldr	r2, [r10]
	b	.L59
	.size	h2v2_fancy_upsample, .-h2v2_fancy_upsample
	.section	.text.int_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	int_upsample, %function
int_upsample:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	ldr	r4, [r1, #4]
	sub	sp, sp, #20
	ldr	r1, [r0, #464]
	ldr	r0, [r0, #324]
	ldr	r3, [r3]
	cmp	r0, #0
	str	r3, [sp, #8]
	add	r3, r1, r4
	ldrb	r4, [r3, #140]	@ zero_extendqisi2
	ldrb	r8, [r3, #150]	@ zero_extendqisi2
	ble	.L70
	sub	r9, r2, #4
	movs	r5, #0
	add	r3, r8, #-1
	str	r3, [sp, #12]
.L79:
	ldr	r3, [sp, #8]
	ldr	r7, [r6, #120]
	ldr	r10, [r9, #4]!
	ldr	fp, [r3, r5, lsl #2]
	add	r7, r7, fp
	cmp	fp, r7
	bcs	.L76
	cbz	r4, .L77
.L87:
	mov	r0, fp
	ldrb	r1, [r10], #1	@ zero_extendqisi2
	add	fp, fp, r4
	mov	r2, r4
	bl	memset(PLT)
	cmp	r7, fp
	bhi	.L87
.L76:
	cmp	r8, #1
	ble	.L74
	ldr	r7, [r6, #120]
	mov	r1, r5
	ldr	r3, [sp, #12]
	ldr	r0, [sp, #8]
	str	r7, [sp, #4]
	str	r3, [sp]
	adds	r3, r5, #1
	mov	r2, r0
	bl	jcopy_sample_rows(PLT)
.L74:
	ldr	r3, [r6, #324]
	add	r5, r5, r8
	cmp	r3, r5
	bgt	.L79
.L70:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L77:
	cmp	r7, fp
	bls	.L76
	cmp	r7, fp
	bhi	.L77
	b	.L76
	.size	int_upsample, .-int_upsample
	.section	.text.h2v2_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v2_upsample, %function
h2v2_upsample:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #324]
	ldr	r3, [r3]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
	cmp	r1, #0
	fstmfdd	sp!, {d8, d9, d10, d11}
	sub	sp, sp, #36
	str	r3, [sp, #16]
	ble	.L90
	mov	r7, r3
	mov	r8, #0
	adds	r7, r7, #8
	subs	r2, r2, #4
	str	r2, [sp, #20]
.L104:
	ldr	r0, [r7, #-8]
	ldr	r4, [sp, #20]
	ldr	r1, [fp, #120]
	pld	[r7]
	ldr	r2, [r4, #4]!
	adds	r3, r0, r1
	cmp	r0, r3
	str	r4, [sp, #20]
	bcs	.L92
	mvns	r1, r0
	add	r1, r1, r3
	lsrs	r1, r1, #1
	adds	r1, r1, #1
	add	r5, r0, r1, lsl #1
	adds	r4, r2, r1
	cmp	r0, r4
	it	cc
	cmpcc	r2, r5
	ite	cs
	movcs	r4, #1
	movcc	r4, #0
	cmp	r1, #15
	ite	ls
	movls	r4, #0
	andhi	r4, r4, #1
	cmp	r4, #0
	beq	.L102
	lsrs	r5, r1, #4
	cmp	r5, #2
	str	r5, [sp, #12]
	lsl	lr, r5, #4
	bls	.L105
	subs	r5, r5, #3
	mov	r9, r0
	bic	r5, r5, #1
	mov	r4, r2
	mov	ip, #0
	adds	r5, r5, #2
	str	r5, [sp, #24]
	str	r3, [sp, #28]
.L98:
	mov	r5, r4
	mov	r6, r9
	vld1.8	{q4}, [r4]
	add	ip, ip, #2
	pld	[r4, #112]
	add	r3, r4, #32
	vld1.8	{q5}, [r5]!
	add	r10, r9, #64
	mov	r4, r3
	mov	r9, r10
	vst2.8	{d8-d11}, [r6]!
	vld1.8	{q4}, [r5]
	vld1.8	{q5}, [r5]
	ldr	r5, [sp, #24]
	vst2.8	{d8-d11}, [r6]
	cmp	ip, r5
	bne	.L98
	mov	r9, r3
	ldr	r3, [sp, #28]
.L94:
	ldr	r5, [sp, #12]
	mov	r4, ip
.L100:
	adds	r4, r4, #1
	vld1.8	{q4}, [r9]
	cmp	r5, r4
	vld1.8	{q5}, [r9]!
	vst2.8	{d8-d11}, [r10]!
	bhi	.L100
	cmp	r1, lr
	add	r5, r2, lr
	add	r4, r0, lr, lsl #1
	beq	.L101
	ldrb	r2, [r2, lr]	@ zero_extendqisi2
	adds	r1, r4, #2
	cmp	r3, r1
	strb	r2, [r0, lr, lsl #1]
	strb	r2, [r4, #1]
	bls	.L101
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	adds	r1, r4, #4
	cmp	r3, r1
	strb	r2, [r4, #2]
	strb	r2, [r4, #3]
	bls	.L101
	ldrb	r2, [r5, #2]	@ zero_extendqisi2
	adds	r1, r4, #6
	cmp	r3, r1
	strb	r2, [r4, #4]
	strb	r2, [r4, #5]
	bls	.L101
	ldrb	r2, [r5, #3]	@ zero_extendqisi2
	add	r1, r4, #8
	cmp	r3, r1
	strb	r2, [r4, #6]
	strb	r2, [r4, #7]
	bls	.L101
	ldrb	r2, [r5, #4]	@ zero_extendqisi2
	add	r1, r4, #10
	cmp	r3, r1
	strb	r2, [r4, #8]
	strb	r2, [r4, #9]
	bls	.L101
	ldrb	r2, [r5, #5]	@ zero_extendqisi2
	add	r1, r4, #12
	cmp	r3, r1
	strb	r2, [r4, #10]
	strb	r2, [r4, #11]
	bls	.L101
	ldrb	r2, [r5, #6]	@ zero_extendqisi2
	add	r1, r4, #14
	cmp	r3, r1
	strb	r2, [r4, #12]
	strb	r2, [r4, #13]
	bls	.L101
	ldrb	r2, [r5, #7]	@ zero_extendqisi2
	add	r1, r4, #16
	cmp	r3, r1
	strb	r2, [r4, #14]
	strb	r2, [r4, #15]
	bls	.L101
	ldrb	r2, [r5, #8]	@ zero_extendqisi2
	add	r1, r4, #18
	cmp	r3, r1
	strb	r2, [r4, #16]
	strb	r2, [r4, #17]
	bls	.L101
	ldrb	r2, [r5, #9]	@ zero_extendqisi2
	add	r1, r4, #20
	cmp	r3, r1
	strb	r2, [r4, #18]
	strb	r2, [r4, #19]
	bls	.L101
	ldrb	r2, [r5, #10]	@ zero_extendqisi2
	add	r1, r4, #22
	cmp	r3, r1
	strb	r2, [r4, #20]
	strb	r2, [r4, #21]
	bls	.L101
	ldrb	r2, [r5, #11]	@ zero_extendqisi2
	add	r1, r4, #24
	cmp	r3, r1
	strb	r2, [r4, #22]
	strb	r2, [r4, #23]
	bls	.L101
	ldrb	r2, [r5, #12]	@ zero_extendqisi2
	add	r1, r4, #26
	cmp	r3, r1
	strb	r2, [r4, #24]
	strb	r2, [r4, #25]
	bls	.L101
	ldrb	r2, [r5, #13]	@ zero_extendqisi2
	add	r1, r4, #28
	cmp	r3, r1
	strb	r2, [r4, #26]
	strb	r2, [r4, #27]
	bls	.L101
	ldrb	r3, [r5, #14]	@ zero_extendqisi2
	strb	r3, [r4, #28]
	strb	r3, [r4, #29]
.L101:
	ldr	r1, [fp, #120]
.L92:
	ldr	r0, [sp, #16]
	movs	r3, #1
	str	r3, [sp]
	add	r3, r8, r3
	str	r1, [sp, #4]
	mov	r1, r8
	mov	r2, r0
	add	r8, r8, #2
	bl	jcopy_sample_rows(PLT)
	ldr	r3, [fp, #324]
	adds	r7, r7, #8
	cmp	r3, r8
	bgt	.L104
.L90:
	add	sp, sp, #36
	@ sp needed
	fldmfdd	sp!, {d8-d11}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L102:
	ldrb	r1, [r2], #1	@ zero_extendqisi2
	adds	r0, r0, #2
	strb	r1, [r0, #-2]
	strb	r1, [r0, #-1]
	cmp	r3, r0
	bls	.L101
	ldrb	r1, [r2], #1	@ zero_extendqisi2
	adds	r0, r0, #2
	strb	r1, [r0, #-2]
	strb	r1, [r0, #-1]
	cmp	r3, r0
	bhi	.L102
	b	.L101
.L105:
	mov	r10, r0
	mov	r9, r2
	mov	ip, #0
	b	.L94
	.size	h2v2_upsample, .-h2v2_upsample
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text.jinit_upsampler,"ax",%progbits
	.align	2
	.global	jinit_upsampler
	.thumb
	.thumb_func
	.type	jinit_upsampler, %function
jinit_upsampler:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r1, #1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r2, #160
	sub	sp, sp, #44
	mov	r4, r0
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #312]
	movs	r2, #0
	str	r0, [sp, #8]
	ldr	r1, .L140
	ldr	r0, .L140+4
	ldr	r5, [sp, #8]
.LPIC17:
	add	r1, pc
.LPIC16:
	add	r0, pc
	str	r5, [r4, #464]
	stmia	r5, {r0, r1, r2}
	cmp	r3, #0
	bne	.L136
.L110:
	ldr	r3, [r4, #84]
	cmp	r3, #0
	beq	.L125
	ldr	r3, [r4, #328]
	cmp	r3, #1
	ite	le
	movle	r3, #0
	movgt	r3, #1
	str	r3, [sp, #20]
.L111:
	ldr	r3, [r4, #40]
	ldr	r5, [r4, #224]
	cmp	r3, #0
	ble	.L109
	ldr	r0, .L140+8
	mov	r8, #0
	ldr	r1, .L140+12
	ldr	r2, .L140+16
.LPIC24:
	add	r0, pc
	ldr	r3, .L140+20
.LPIC23:
	add	r1, pc
	str	r0, [sp, #16]
	str	r1, [sp, #28]
.LPIC22:
	add	r2, pc
	ldr	r0, .L140+24
.LPIC21:
	add	r3, pc
	ldr	r1, .L140+28
	ldr	r6, [sp, #8]
.LPIC20:
	add	r0, pc
	str	r2, [sp, #32]
.LPIC19:
	add	r1, pc
	str	r3, [sp, #24]
	mov	r10, r6
	str	r0, [sp, #36]
	str	r1, [sp, #12]
	b	.L123
.L137:
	ldr	r3, .L140+32
.LPIC18:
	add	r3, pc
	str	r3, [r6, #52]
.L124:
	ldr	r3, [r4, #40]
	add	r8, r8, #1
	adds	r5, r5, #84
	adds	r6, r6, #4
	add	r10, r10, #1
	cmp	r3, r8
	ble	.L109
.L123:
	ldr	r3, [r5, #36]
	ldr	r0, [r5, #12]
	ldr	r9, [r4, #328]
	ldr	r2, [r5, #8]
	str	r3, [sp]
	mul	r0, r0, r3
	mov	r1, r9
	str	r2, [sp, #4]
	bl	__aeabi_idiv(PLT)
	ldr	r2, [r4, #320]
	mov	r7, r0
	ldr	fp, [r4, #324]
	str	r0, [r6, #100]
	ldr	r1, [r5, #48]
	ldr	r3, [sp]
	cmp	r1, #0
	beq	.L137
	ldr	r0, [sp, #4]
	mov	r1, r9
	str	r2, [sp]
	mul	r0, r3, r0
	bl	__aeabi_idiv(PLT)
	ldr	r2, [sp]
	rsb	r3, fp, r7
	mov	r9, r0
	clz	r3, r3
	lsrs	r3, r3, #5
	cmp	r0, r2
	it	eq
	cmpeq	r7, fp
	bne	.L115
	ldr	r3, [sp, #12]
	str	r3, [r6, #52]
	b	.L124
.L115:
	cmp	r2, r0, lsl #1
	beq	.L138
.L116:
	mov	r0, r2
	mov	r1, r9
	str	r2, [sp]
	bl	__aeabi_idivmod(PLT)
	cbnz	r1, .L121
	mov	r0, fp
	mov	r1, r7
	bl	__aeabi_idivmod(PLT)
	ldr	r2, [sp]
	cbnz	r1, .L121
	ldr	r3, [sp, #16]
	mov	r0, r2
	mov	r1, r9
	str	r3, [r6, #52]
	bl	__aeabi_idiv(PLT)
	mov	r1, r7
	strb	r0, [r10, #140]
	mov	r0, fp
	bl	__aeabi_idiv(PLT)
	strb	r0, [r10, #150]
.L119:
	ldr	r3, [r4, #4]
	ldr	r1, [r4, #320]
	ldr	r0, [r4, #120]
	ldr	r7, [r3, #8]
	bl	jround_up(PLT)
	movs	r1, #1
	mov	r2, r0
	ldr	r3, [r4, #324]
	mov	r0, r4
	blx	r7
	str	r0, [r6, #12]
	b	.L124
.L121:
	ldr	r3, [r4]
	movs	r2, #38
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L119
.L109:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L138:
	cbnz	r3, .L139
	cmp	fp, r7, lsl #1
	bne	.L116
	ldr	r3, [sp, #20]
	cbz	r3, .L120
	ldr	r3, [r5, #40]
	cmp	r3, #2
	bls	.L120
	ldr	r0, [sp, #32]
	movs	r3, #1
	ldr	r1, [sp, #8]
	str	r0, [r6, #52]
	str	r3, [r1, #8]
	b	.L119
.L125:
	str	r3, [sp, #20]
	b	.L111
.L136:
	ldr	r3, [r4]
	movs	r2, #25
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L110
.L120:
	ldr	r2, [sp, #28]
	str	r2, [r6, #52]
	b	.L119
.L139:
	ldr	r0, [sp, #20]
	cbz	r0, .L118
	ldr	r3, [r5, #40]
	cmp	r3, #2
	bls	.L118
	ldr	r1, [sp, #36]
	str	r1, [r6, #52]
	b	.L119
.L118:
	ldr	r2, [sp, #24]
	str	r2, [r6, #52]
	b	.L119
.L141:
	.align	2
.L140:
	.word	sep_upsample-(.LPIC17+4)
	.word	start_pass_upsample-(.LPIC16+4)
	.word	int_upsample-(.LPIC24+4)
	.word	h2v2_upsample-(.LPIC23+4)
	.word	h2v2_fancy_upsample-(.LPIC22+4)
	.word	h2v1_upsample-(.LPIC21+4)
	.word	h2v1_fancy_upsample-(.LPIC20+4)
	.word	fullsize_upsample-(.LPIC19+4)
	.word	noop_upsample-(.LPIC18+4)
	.size	jinit_upsampler, .-jinit_upsampler
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
