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
	.file	"inffast.c"
	.section	.text.inflate_fast,"ax",%progbits
	.align	2
	.global	inflate_fast
	.thumb
	.thumb_func
	.type	inflate_fast, %function
inflate_fast:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
	ldr	r10, [r0, #28]
	sub	sp, sp, #124
	movs	r6, #1
	ldr	r3, [r0]
	mov	ip, r6
	ldr	r2, [r0, #4]
	add	r4, r10, #7104
	ldr	r0, [r10, #48]
	subs	r7, r3, #1
	ldr	r5, [r10, #84]
	subs	r2, r2, #5
	str	r4, [sp, #76]
	str	r0, [sp, #20]
	adds	r2, r7, r2
	str	r2, [sp, #36]
	ldr	r2, [sp, #20]
	lsl	r5, r6, r5
	ldr	r0, [r10, #52]
	str	r5, [sp, #24]
	ldr	r5, [r10, #40]
	lsrs	r2, r2, #4
	str	r0, [sp, #28]
	ldr	r4, [fp, #16]
	lsls	r0, r2, #4
	str	r5, [sp, #48]
	ldr	r5, [sp, #28]
	str	r0, [sp, #32]
	subs	r1, r4, r1
	ldr	r0, [fp, #12]
	subs	r5, r5, #1
	ldr	r3, [r10, #88]
	str	r5, [sp, #44]
	add	r8, r0, #-1
	mvn	r0, #256
	add	r4, r4, r0
	ldr	r5, [sp, #20]
	ldr	r0, [sp, #32]
	lsls	r6, r6, r3
	str	r2, [sp, #52]
	add	r4, r8, r4
	ldr	r2, [r10, #44]
	subs	r6, r6, #1
	subs	r5, r5, r0
	ldr	r3, [r10, #56]
	str	r5, [sp, #92]
	ldr	r5, [sp, #44]
	str	r2, [sp, #68]
	ldr	r9, [r10, #76]
	add	r5, r5, r0
	ldr	r0, [sp, #24]
	str	r5, [sp, #88]
	ldr	r2, [r10, #60]
	subs	r0, r0, #1
	ldr	lr, [r10, #80]
	str	r0, [sp, #40]
	ldr	r5, [sp, #48]
	str	r6, [sp, #60]
	ldr	r6, [sp, #20]
	ldr	r0, [sp, #28]
	str	r4, [sp, #24]
	add	r6, r6, r5
	ldr	r5, [fp, #12]
	adds	r0, r0, #16
	str	r6, [sp, #84]
	str	r0, [sp, #96]
	add	r5, r5, r1
	add	r1, r8, r1
	str	r5, [sp, #72]
	str	r1, [sp, #64]
.L67:
	cmp	r2, #14
	bhi	.L2
	ldrb	r0, [r7, #1]	@ zero_extendqisi2
	add	r4, r2, #8
	ldrb	r1, [r7, #2]	@ zero_extendqisi2
	adds	r7, r7, #2
	lsls	r0, r0, r2
	adds	r2, r2, #16
	lsls	r1, r1, r4
	add	r1, r1, r0
	add	r3, r3, r1
.L2:
	ldr	r1, [sp, #40]
	ands	r1, r1, r3
	add	r4, r9, r1, lsl #2
	ldrb	r1, [r9, r1, lsl #2]	@ zero_extendqisi2
	ldrb	r0, [r4, #1]	@ zero_extendqisi2
	ldrh	r4, [r4, #2]
	subs	r2, r2, r0
	lsrs	r3, r3, r0
	cbnz	r1, .L260
	b	.L3
.L8:
	lsls	r0, r1, #25
	bmi	.L5
	lsl	r1, ip, r1
	subs	r1, r1, #1
	ands	r1, r1, r3
	add	r4, r4, r1
	add	r5, r9, r4, lsl #2
	ldrb	r1, [r9, r4, lsl #2]	@ zero_extendqisi2
	ldrb	r0, [r5, #1]	@ zero_extendqisi2
	ldrh	r4, [r5, #2]
	subs	r2, r2, r0
	lsrs	r3, r3, r0
	cmp	r1, #0
	beq	.L3
.L260:
	lsls	r5, r1, #27
	bpl	.L8
	ands	r1, r1, #15
	mov	r0, r4
	beq	.L9
	cmp	r1, r2
	itttt	hi
	ldrbhi	r0, [r7, #1]	@ zero_extendqisi2
	addhi	r7, r7, #1
	lslhi	r0, r0, r2
	addhi	r2, r2, #8
	sub	r2, r2, r1
	it	hi
	addhi	r3, r3, r0
	lsl	r0, ip, r1
	subs	r0, r0, #1
	ands	r0, r0, r3
	lsrs	r3, r3, r1
	add	r0, r0, r4
.L9:
	cmp	r2, #14
	bls	.L303
.L11:
	ldr	r4, [sp, #60]
	ands	r4, r4, r3
	add	r1, lr, r4, lsl #2
	ldrb	r5, [lr, r4, lsl #2]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrh	r1, [r1, #2]
	subs	r2, r2, r4
	lsrs	r3, r3, r4
	lsls	r4, r5, #27
	str	r1, [sp, #8]
	bmi	.L12
	lsls	r1, r5, #25
	bmi	.L13
	ldr	r1, [sp, #8]
	b	.L14
.L259:
	lsls	r6, r5, #25
	bmi	.L13
.L14:
	lsl	r5, ip, r5
	subs	r5, r5, #1
	ands	r5, r5, r3
	add	r1, r1, r5
	add	r6, lr, r1, lsl #2
	ldrb	r5, [lr, r1, lsl #2]	@ zero_extendqisi2
	ldrb	r4, [r6, #1]	@ zero_extendqisi2
	ldrh	r1, [r6, #2]
	subs	r2, r2, r4
	lsrs	r3, r3, r4
	lsls	r4, r5, #27
	bpl	.L259
	str	r1, [sp, #8]
.L12:
	and	r5, r5, #15
	cmp	r5, r2
	bls	.L15
	ldrb	r6, [r7, #1]	@ zero_extendqisi2
	add	r4, r2, #8
	cmp	r5, r4
	it	ls
	addls	r7, r7, #1
	lsl	r6, r6, r2
	ite	ls
	movls	r2, r4
	addhi	r2, r2, #16
	add	r3, r3, r6
	itttt	hi
	ldrbhi	r6, [r7, #2]	@ zero_extendqisi2
	addhi	r7, r7, #2
	lslhi	r4, r6, r4
	addhi	r3, r3, r4
.L15:
	lsl	r1, ip, r5
	ldr	r6, [sp, #64]
	subs	r2, r2, r5
	subs	r1, r1, #1
	ands	r1, r1, r3
	lsrs	r3, r3, r5
	ldr	r5, [sp, #8]
	rsb	r4, r6, r8
	str	r1, [sp, #100]
	add	r1, r1, r5
	cmp	r1, r4
	str	r1, [sp, #80]
	bls	.L17
	ldr	r6, [sp, #68]
	subs	r4, r1, r4
	str	r4, [sp, #56]
	cmp	r6, r4
	bcs	.L18
	ldr	r5, [sp, #76]
	ldr	r4, [r5]
	cmp	r4, #0
	bne	.L304
.L18:
	ldr	r6, [sp, #20]
	cmp	r6, #0
	bne	.L20
	ldr	r5, [sp, #48]
	ldr	r6, [sp, #56]
	subs	r4, r5, r6
	ldr	r5, [sp, #44]
	cmp	r0, r6
	add	r5, r5, r4
	str	r5, [sp, #4]
	bls	.L21
	ldr	r6, [sp, #72]
	add	r4, r8, #1
	rsb	r5, r8, r6
	ldr	r6, [sp, #56]
	mov	r1, r5
	ldr	r5, [sp, #48]
	subs	r0, r0, r6
	add	r6, r8, #17
	subs	r1, r5, r1
	ldr	r5, [sp, #8]
	subs	r1, r1, r5
	ldr	r5, [sp, #100]
	subs	r1, r1, r5
	ldr	r5, [sp, #28]
	add	r1, r1, r5
	adds	r5, r1, #1
	adds	r1, r1, #17
	str	r5, [sp, #100]
	mov	r5, r6
	ldr	r6, [sp, #100]
	cmp	r6, r5
	it	cc
	cmpcc	r4, r1
	ite	cs
	movcs	r5, #1
	movcc	r5, #0
	mov	r1, r5
	ldr	r5, [sp, #56]
	cmp	r5, #15
	ite	ls
	movls	r1, #0
	andhi	r1, r1, #1
	cmp	r1, #0
	beq	.L22
	lsrs	r6, r5, #4
	ldr	r5, [sp, #20]
	str	r3, [sp, #112]
	str	r6, [sp, #104]
	mov	r6, r4
	ldr	r1, [sp, #104]
	ldr	r4, [sp, #4]
	lsls	r1, r1, #4
	str	r1, [sp, #108]
.L27:
	ldr	r3, [sp, #100]
	adds	r5, r5, #1
	vld1.8	{q8}, [r3]!
	str	r3, [sp, #100]
	ldr	r3, [sp, #104]
	vst1.8	{q8}, [r6]!
	cmp	r3, r5
	bhi	.L27
.L268:
	ldr	r6, [sp, #56]
	mov	r5, r1
	str	r4, [sp, #4]
	add	r5, r5, r8
	ldr	r3, [sp, #112]
	add	r4, r4, r1
	subs	r6, r6, r1
	str	r1, [sp, #108]
	str	r6, [sp, #100]
	ldr	r6, [sp, #56]
	cmp	r6, r1
	beq	.L56
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	strb	r1, [r5, #1]
	ldr	r1, [sp, #100]
	cmp	r1, #1
	beq	.L56
	mov	r6, r1
	ldrb	r1, [r4, #2]	@ zero_extendqisi2
	cmp	r6, #2
	strb	r1, [r5, #2]
	beq	.L56
	ldrb	r1, [r4, #3]	@ zero_extendqisi2
	cmp	r6, #3
	strb	r1, [r5, #3]
	beq	.L56
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	cmp	r6, #4
	strb	r1, [r5, #4]
	beq	.L56
	ldrb	r1, [r4, #5]	@ zero_extendqisi2
	cmp	r6, #5
	strb	r1, [r5, #5]
	beq	.L56
	ldrb	r1, [r4, #6]	@ zero_extendqisi2
	cmp	r6, #6
	strb	r1, [r5, #6]
	beq	.L56
	ldrb	r1, [r4, #7]	@ zero_extendqisi2
	cmp	r6, #7
	strb	r1, [r5, #7]
	beq	.L56
	ldrb	r1, [r4, #8]	@ zero_extendqisi2
	cmp	r6, #8
	strb	r1, [r5, #8]
	beq	.L56
	ldrb	r1, [r4, #9]	@ zero_extendqisi2
	cmp	r6, #9
	strb	r1, [r5, #9]
	beq	.L56
	ldrb	r1, [r4, #10]	@ zero_extendqisi2
	cmp	r6, #10
	strb	r1, [r5, #10]
	beq	.L56
	ldrb	r1, [r4, #11]	@ zero_extendqisi2
	cmp	r6, #11
	strb	r1, [r5, #11]
	beq	.L56
	ldrb	r1, [r4, #12]	@ zero_extendqisi2
	cmp	r6, #12
	strb	r1, [r5, #12]
	beq	.L56
	ldrb	r1, [r4, #13]	@ zero_extendqisi2
	cmp	r6, #13
	strb	r1, [r5, #13]
	beq	.L56
	ldrb	r1, [r4, #14]	@ zero_extendqisi2
	cmp	r6, #14
	strb	r1, [r5, #14]
	itt	ne
	ldrbne	r1, [r4, #15]	@ zero_extendqisi2
	strbne	r1, [r5, #15]
.L56:
	ldr	r1, [sp, #56]
	ldr	r4, [sp, #80]
	add	r8, r8, r1
	rsb	r4, r4, r8
	str	r4, [sp, #4]
.L21:
	cmp	r0, #2
	it	hi
	ldrhi	r4, [sp, #4]
	bls	.L31
.L58:
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	subs	r0, r0, #3
	cmp	r0, #2
	strb	r1, [r8, #1]
	ldrb	r1, [r4, #2]	@ zero_extendqisi2
	strb	r1, [r8, #2]
	ldrb	r1, [r4, #3]!	@ zero_extendqisi2
	strb	r1, [r8, #3]!
	bhi	.L58
	str	r4, [sp, #4]
.L31:
	cbz	r0, .L7
	ldr	r5, [sp, #4]
	cmp	r0, #2
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	it	eq
	moveq	r6, r5
	strb	r1, [r8, #1]
	iteee	ne
	addne	r8, r8, #1
	ldrbeq	r1, [r6, #2]	@ zero_extendqisi2
	strbeq	r1, [r8, #2]
	addeq	r8, r8, #2
	b	.L7
.L3:
	strb	r4, [r8, #1]
	add	r8, r8, #1
.L7:
	ldr	r6, [sp, #24]
	ldr	r5, [sp, #36]
	cmp	r8, r6
	it	cc
	cmpcc	r7, r5
	bcc	.L67
.L19:
	lsrs	r1, r2, #3
	movs	r0, #1
	add	r5, r8, r0
	ldr	r6, [sp, #36]
	sub	r2, r2, r1, lsl #3
	subs	r1, r7, r1
	str	r5, [fp, #12]
	lsls	r0, r0, r2
	subs	r4, r6, r1
	adds	r4, r4, #5
	subs	r0, r0, #1
	adds	r1, r1, #1
	ands	r3, r3, r0
	ldr	r0, [sp, #24]
	str	r4, [fp, #4]
	str	r1, [fp]
	cmp	r8, r0
	itet	cs
	movcs	r4, r0
	rsbcc	r1, r8, r0
	rsbcs	r1, r8, r4
	addw	r1, r1, #257
	str	r1, [fp, #16]
	str	r3, [r10, #56]
	str	r2, [r10, #60]
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L5:
	lsls	r1, r1, #26
	itt	mi
	movmi	r1, #11
	strmi	r1, [r10]
	bmi	.L19
	ldr	r0, .L306
	movs	r1, #29
.LPIC10:
	add	r0, pc
	str	r0, [fp, #24]
	str	r1, [r10]
	b	.L19
.L303:
	ldrb	r4, [r7, #1]	@ zero_extendqisi2
	add	r1, r2, #8
	ldrb	r5, [r7, #2]	@ zero_extendqisi2
	adds	r7, r7, #2
	lsls	r4, r4, r2
	adds	r2, r2, #16
	lsl	r1, r5, r1
	add	r1, r1, r4
	add	r3, r3, r1
	b	.L11
.L13:
	ldr	r0, .L306+4
	movs	r1, #29
.LPIC9:
	add	r0, pc
	str	r0, [fp, #24]
	str	r1, [r10]
	b	.L19
.L17:
	rsb	r1, r1, r8
	b	.L61
.L305:
	mov	r8, r5
.L61:
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	mov	r6, r1
	subs	r0, r0, #3
	add	r5, r8, #3
	cmp	r0, #2
	strb	r4, [r8, #1]
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	strb	r4, [r8, #2]
	ldrb	r4, [r1, #3]!	@ zero_extendqisi2
	strb	r4, [r8, #3]
	bhi	.L305
	cmp	r0, #0
	beq	.L74
	ldrb	r1, [r6, #4]	@ zero_extendqisi2
	cmp	r0, #2
	strb	r1, [r8, #4]
	iteee	ne
	addne	r8, r8, #4
	ldrbeq	r1, [r6, #5]	@ zero_extendqisi2
	strbeq	r1, [r8, #5]
	addeq	r8, r8, #5
	b	.L7
.L20:
	ldr	r1, [sp, #56]
	cmp	r6, r1
	bcs	.L32
	ldr	r5, [sp, #84]
	subs	r6, r1, r6
	cmp	r0, r6
	str	r6, [sp, #104]
	sub	r4, r5, r1
	ldr	r5, [sp, #44]
	add	r5, r5, r4
	str	r5, [sp, #4]
	bls	.L21
	ldr	r6, [sp, #72]
	add	r1, r8, #1
	ldr	r4, [sp, #84]
	add	r5, r8, #17
	str	r1, [sp, #56]
	rsb	r6, r8, r6
	str	r5, [sp, #16]
	subs	r1, r4, r6
	ldr	r4, [sp, #8]
	str	r6, [sp, #116]
	ldr	r5, [sp, #104]
	subs	r6, r1, r4
	ldr	r1, [sp, #100]
	ldr	r4, [sp, #28]
	subs	r0, r0, r5
	subs	r6, r6, r1
	ldr	r1, [sp, #56]
	add	r6, r6, r4
	ldr	r4, [sp, #16]
	adds	r5, r6, #1
	adds	r6, r6, #17
	str	r5, [sp, #108]
	cmp	r5, r4
	it	cc
	cmpcc	r1, r6
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	mov	r5, r6
	ldr	r6, [sp, #104]
	cmp	r6, #15
	ite	ls
	movls	r5, #0
	andhi	r5, r5, #1
	cmp	r5, #0
	beq	.L33
	lsrs	r1, r6, #4
	movs	r5, #0
	str	r3, [sp, #12]
	lsls	r4, r1, #4
	str	r1, [sp, #112]
	ldr	r1, [sp, #8]
	str	r4, [sp, #16]
	ldr	r6, [sp, #16]
	ldr	r4, [sp, #4]
.L38:
	ldr	r3, [sp, #108]
	adds	r5, r5, #1
	vld1.8	{q8}, [r3]!
	str	r3, [sp, #108]
	ldr	r3, [sp, #56]
	vst1.8	{q8}, [r3]!
	str	r3, [sp, #56]
	ldr	r3, [sp, #112]
	cmp	r3, r5
	bhi	.L38
	str	r6, [sp, #16]
	mov	r5, r6
	str	r1, [sp, #8]
	add	r5, r5, r4
	ldr	r1, [sp, #16]
	str	r4, [sp, #4]
	mov	r4, r6
	ldr	r6, [sp, #104]
	add	r4, r4, r8
	ldr	r3, [sp, #12]
	subs	r6, r6, r1
	str	r6, [sp, #56]
	ldr	r6, [sp, #104]
	cmp	r6, r1
	beq	.L39
	ldr	r1, [sp, #56]
	ldrb	r6, [r5, #1]	@ zero_extendqisi2
	cmp	r1, #1
	strb	r6, [r4, #1]
	beq	.L39
	ldrb	r6, [r5, #2]	@ zero_extendqisi2
	cmp	r1, #2
	strb	r6, [r4, #2]
	beq	.L39
	ldrb	r6, [r5, #3]	@ zero_extendqisi2
	cmp	r1, #3
	strb	r6, [r4, #3]
	beq	.L39
	ldrb	r6, [r5, #4]	@ zero_extendqisi2
	cmp	r1, #4
	strb	r6, [r4, #4]
	beq	.L39
	ldrb	r6, [r5, #5]	@ zero_extendqisi2
	cmp	r1, #5
	strb	r6, [r4, #5]
	beq	.L39
	ldrb	r6, [r5, #6]	@ zero_extendqisi2
	cmp	r1, #6
	strb	r6, [r4, #6]
	beq	.L39
	ldrb	r6, [r5, #7]	@ zero_extendqisi2
	cmp	r1, #7
	strb	r6, [r4, #7]
	beq	.L39
	ldrb	r6, [r5, #8]	@ zero_extendqisi2
	cmp	r1, #8
	strb	r6, [r4, #8]
	beq	.L39
	ldrb	r6, [r5, #9]	@ zero_extendqisi2
	cmp	r1, #9
	strb	r6, [r4, #9]
	beq	.L39
	ldrb	r6, [r5, #10]	@ zero_extendqisi2
	cmp	r1, #10
	strb	r6, [r4, #10]
	beq	.L39
	ldrb	r6, [r5, #11]	@ zero_extendqisi2
	cmp	r1, #11
	strb	r6, [r4, #11]
	beq	.L39
	ldrb	r6, [r5, #12]	@ zero_extendqisi2
	cmp	r1, #12
	strb	r6, [r4, #12]
	beq	.L39
	ldrb	r6, [r5, #13]	@ zero_extendqisi2
	cmp	r1, #13
	strb	r6, [r4, #13]
	beq	.L39
	ldrb	r6, [r5, #14]	@ zero_extendqisi2
	cmp	r1, #14
	strb	r6, [r4, #14]
	itt	ne
	ldrbne	r5, [r5, #15]	@ zero_extendqisi2
	strbne	r5, [r4, #15]
	b	.L39
.L74:
	mov	r8, r5
	b	.L7
.L32:
	mov	r5, r6
	ldr	r6, [sp, #56]
	subs	r4, r5, r6
	ldr	r5, [sp, #44]
	cmp	r0, r6
	add	r5, r5, r4
	str	r5, [sp, #4]
	bls	.L21
	mov	r4, r6
	ldr	r6, [sp, #72]
	ldr	r1, [sp, #20]
	subs	r0, r0, r4
	add	r4, r8, #17
	rsb	r5, r8, r6
	str	r4, [sp, #108]
	subs	r1, r1, r5
	ldr	r5, [sp, #8]
	str	r1, [sp, #104]
	add	r6, r8, #1
	ldr	r4, [sp, #28]
	subs	r1, r1, r5
	ldr	r5, [sp, #100]
	subs	r1, r1, r5
	add	r1, r1, r4
	adds	r5, r1, #1
	adds	r1, r1, #17
	str	r5, [sp, #100]
	ldr	r4, [sp, #100]
	ldr	r5, [sp, #108]
	cmp	r4, r5
	it	cc
	cmpcc	r6, r1
	ldr	r4, [sp, #56]
	ite	cs
	movcs	r5, #1
	movcc	r5, #0
	cmp	r4, #15
	ite	ls
	movls	r1, #0
	andhi	r1, r5, #1
	cbz	r1, .L50
	lsrs	r5, r4, #4
	ldr	r4, [sp, #4]
	str	r3, [sp, #112]
	lsls	r1, r5, #4
	str	r5, [sp, #104]
	movs	r5, #0
	str	r1, [sp, #108]
.L55:
	ldr	r3, [sp, #100]
	adds	r5, r5, #1
	vld1.8	{q8}, [r3]!
	str	r3, [sp, #100]
	ldr	r3, [sp, #104]
	vst1.8	{q8}, [r6]!
	cmp	r3, r5
	bhi	.L55
	b	.L268
.L22:
	ldr	r4, [sp, #4]
	mov	r6, r5
	mov	r1, r8
	add	r6, r6, r4
.L29:
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	cmp	r4, r6
	strb	r5, [r1, #1]!
	bne	.L29
	b	.L56
.L50:
	mov	r6, r4
	ldr	r4, [sp, #4]
	mov	r1, r8
	add	r6, r6, r4
.L57:
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	cmp	r4, r6
	strb	r5, [r1, #1]!
	bne	.L57
	b	.L56
.L33:
	ldr	r4, [sp, #4]
	mov	r5, r8
	ldr	r1, [sp, #8]
	add	r6, r6, r4
	str	r6, [sp, #56]
.L40:
	ldrb	r6, [r4, #1]!	@ zero_extendqisi2
	strb	r6, [r5, #1]!
	ldr	r6, [sp, #56]
	cmp	r4, r6
	bne	.L40
	str	r1, [sp, #8]
.L39:
	ldr	r4, [sp, #20]
	ldr	r1, [sp, #104]
	cmp	r4, r0
	add	r1, r1, r8
	str	r1, [sp, #56]
	bcs	.L72
	ldr	r5, [sp, #116]
	mov	r6, r4
	ldr	r1, [sp, #8]
	subs	r0, r0, r6
	ldr	r6, [sp, #28]
	subs	r4, r5, r4
	add	r1, r1, r4
	ldr	r4, [sp, #100]
	add	r1, r1, r4
	ldr	r4, [sp, #96]
	add	r5, r8, r1
	add	r1, r5, #16
	cmp	r5, r4
	it	cc
	cmpcc	r6, r1
	ldr	r6, [sp, #20]
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	cmp	r6, #15
	ite	ls
	movls	r1, #0
	andhi	r1, r1, #1
	cmp	r1, #0
	beq	.L41
	ldr	r4, [sp, #32]
	cmp	r4, #0
	beq	.L73
	ldr	r4, [sp, #28]
	movs	r1, #0
	ldr	r6, [sp, #52]
.L47:
	adds	r1, r1, #1
	vld1.8	{q8}, [r4]!
	cmp	r6, r1
	vst1.8	{q8}, [r5]!
	bhi	.L47
	ldr	r6, [sp, #32]
	ldr	r4, [sp, #20]
	ldr	r1, [sp, #56]
	cmp	r4, r6
	add	r1, r1, r6
	it	eq
	moveq	r6, r1
	beq	.L48
	ldr	r4, [sp, #88]
	ldr	r5, [sp, #92]
.L42:
	ldrb	r6, [r4, #1]	@ zero_extendqisi2
	cmp	r5, #1
	strb	r6, [r1, #1]
	beq	.L270
	ldrb	r6, [r4, #2]	@ zero_extendqisi2
	cmp	r5, #2
	strb	r6, [r1, #2]
	beq	.L271
	ldrb	r6, [r4, #3]	@ zero_extendqisi2
	cmp	r5, #3
	strb	r6, [r1, #3]
	beq	.L272
	ldrb	r6, [r4, #4]	@ zero_extendqisi2
	cmp	r5, #4
	strb	r6, [r1, #4]
	beq	.L270
	ldrb	r6, [r4, #5]	@ zero_extendqisi2
	cmp	r5, #5
	strb	r6, [r1, #5]
	beq	.L271
	ldrb	r6, [r4, #6]	@ zero_extendqisi2
	cmp	r5, #6
	strb	r6, [r1, #6]
	beq	.L272
	ldrb	r6, [r4, #7]	@ zero_extendqisi2
	cmp	r5, #7
	strb	r6, [r1, #7]
	beq	.L270
	ldrb	r6, [r4, #8]	@ zero_extendqisi2
	cmp	r5, #8
	strb	r6, [r1, #8]
	beq	.L271
	ldrb	r6, [r4, #9]	@ zero_extendqisi2
	cmp	r5, #9
	strb	r6, [r1, #9]
	beq	.L272
	ldrb	r6, [r4, #10]	@ zero_extendqisi2
	cmp	r5, #10
	strb	r6, [r1, #10]
	beq	.L270
	ldrb	r6, [r4, #11]	@ zero_extendqisi2
	cmp	r5, #11
	strb	r6, [r1, #11]
	beq	.L271
	ldrb	r6, [r4, #12]	@ zero_extendqisi2
	cmp	r5, #12
	strb	r6, [r1, #12]
	beq	.L272
	ldrb	r6, [r4, #13]	@ zero_extendqisi2
	cmp	r5, #13
	strb	r6, [r1, #13]
	beq	.L270
	ldrb	r6, [r4, #14]	@ zero_extendqisi2
	cmp	r5, #14
	strb	r6, [r1, #14]
	beq	.L271
	ldr	r6, [sp, #20]
	ldr	r5, [sp, #56]
	ldrb	r4, [r4, #15]	@ zero_extendqisi2
	add	r6, r6, r5
	strb	r4, [r1, #15]
.L48:
	ldr	r4, [sp, #80]
	mov	r8, r6
	subs	r4, r6, r4
	str	r4, [sp, #4]
	b	.L21
.L72:
	ldr	r5, [sp, #44]
	mov	r8, r1
	str	r5, [sp, #4]
	b	.L21
.L304:
	ldr	r0, .L306+8
	movs	r1, #29
.LPIC8:
	add	r0, pc
	str	r0, [fp, #24]
	str	r1, [r10]
	b	.L19
.L73:
	ldr	r4, [sp, #44]
	ldr	r5, [sp, #20]
	ldr	r1, [sp, #56]
	b	.L42
.L41:
	ldr	r1, [sp, #56]
	ldr	r4, [sp, #44]
	add	r6, r6, r1
.L49:
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	strb	r5, [r1, #1]!
	cmp	r1, r6
	bne	.L49
	b	.L48
.L271:
	ldr	r6, [sp, #20]
	ldr	r1, [sp, #56]
	add	r6, r6, r1
	b	.L48
.L270:
	ldr	r6, [sp, #20]
	ldr	r5, [sp, #56]
	add	r6, r6, r5
	b	.L48
.L272:
	ldr	r6, [sp, #20]
	ldr	r4, [sp, #56]
	add	r6, r6, r4
	b	.L48
.L307:
	.align	2
.L306:
	.word	.LC2-(.LPIC10+4)
	.word	.LC1-(.LPIC9+4)
	.word	.LC0-(.LPIC8+4)
	.size	inflate_fast, .-inflate_fast
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"invalid distance too far back\000"
	.space	2
.LC1:
	.ascii	"invalid distance code\000"
	.space	2
.LC2:
	.ascii	"invalid literal/length code\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
