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
	.file	"jcsample.c"
	.section	.text.start_pass_downsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_downsample, %function
start_pass_downsample:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	start_pass_downsample, .-start_pass_downsample
	.section	.text.sep_downsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sep_downsample, %function
sep_downsample:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldr	r0, [r0, #60]
	ldr	r6, [r7, #356]
	cmp	r0, #0
	ldr	r4, [r7, #68]
	ble	.L2
	lsl	fp, r2, #2
	ldr	r2, [sp, #40]
	sub	r9, r1, #4
	sub	r8, r3, #4
	movs	r5, #0
	lsl	r10, r2, #2
.L5:
	ldr	lr, [r4, #12]
	mov	r1, r4
	ldr	r3, [r8, #4]!
	mov	r0, r7
	ldr	r2, [r9, #4]!
	adds	r5, r5, #1
	ldr	ip, [r6, #12]
	adds	r4, r4, #84
	adds	r6, r6, #4
	mla	r3, lr, r10, r3
	add	r2, r2, fp
	blx	ip
	ldr	r3, [r7, #60]
	cmp	r3, r5
	bgt	.L5
.L2:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	sep_downsample, .-sep_downsample
	.global	__aeabi_idiv
	.section	.text.int_downsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	int_downsample, %function
int_downsample:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r4, [r1, #28]
	mov	fp, r3
	fstmfdd	sp!, {d8, d9}
	sub	sp, sp, #52
	str	r1, [sp, #28]
	lsls	r4, r4, #3
	ldr	r1, [r1, #8]
	ldr	r0, [r0, #232]
	str	r2, [sp, #8]
	str	r4, [sp, #32]
	bl	__aeabi_idiv(PLT)
	ldr	r1, [sp, #28]
	mov	r9, r0
	ldr	r7, [r5, #236]
	ldr	r4, [r1, #12]
	mov	r0, r7
	mov	r1, r4
	bl	__aeabi_idiv(PLT)
	mul	r3, r0, r9
	ldr	r5, [r5, #28]
	str	r0, [sp, #4]
	str	r3, [sp, #12]
	ldr	r3, [sp, #32]
	ldr	r1, [sp, #12]
	mul	r6, r3, r9
	add	r3, r1, r1, lsr #31
	asrs	r3, r3, #1
	subs	r6, r6, r5
	cmp	r6, #0
	str	r3, [sp, #20]
	ble	.L9
	cmp	r7, #0
	ble	.L9
	cmp	r7, #8
	ble	.L37
	ldr	r4, [sp, #8]
	sub	r10, r7, #9
	bic	r10, r10, #7
	mov	r8, #0
	add	r10, r10, #8
	adds	r4, r4, #32
.L11:
	ldr	r3, [r4, #-32]
	mov	r2, r6
	pld	[r4]
	add	r8, r8, #8
	adds	r4, r4, #32
	adds	r0, r3, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r3, [r4, #-60]
	mov	r2, r6
	adds	r0, r3, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r3, [r4, #-56]
	mov	r2, r6
	adds	r0, r3, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r3, [r4, #-52]
	mov	r2, r6
	adds	r0, r3, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r3, [r4, #-48]
	mov	r2, r6
	adds	r0, r3, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r3, [r4, #-44]
	mov	r2, r6
	adds	r0, r3, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r3, [r4, #-40]
	mov	r2, r6
	adds	r0, r3, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r4, #-36]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r8, r10
	bne	.L11
.L10:
	ldr	r2, [sp, #8]
	add	r4, r8, #1073741824
	subs	r4, r4, #1
	add	r4, r2, r4, lsl #2
.L13:
	ldr	r0, [r4, #4]!
	add	r8, r8, #1
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r7, r8
	bgt	.L13
	ldr	r3, [sp, #28]
	ldr	r4, [r3, #12]
.L9:
	cmp	r4, #0
	ble	.L8
	ldr	r2, [sp, #4]
	sub	fp, fp, #4
	ldr	r3, [sp, #8]
	str	fp, [sp, #40]
	lsls	r2, r2, #2
	subs	r3, r3, #4
	str	r3, [sp, #16]
	str	r2, [sp, #44]
	movs	r2, #0
	str	r2, [sp, #36]
.L36:
	ldr	r2, [sp, #40]
	ldr	r3, [r2, #4]!
	str	r3, [sp, #8]
	ldr	r3, [sp, #32]
	str	r2, [sp, #40]
	cmp	r3, #0
	beq	.L15
	ldr	r2, [sp, #8]
	mov	r8, #0
	add	r2, r2, r3
	str	r2, [sp, #24]
.L16:
	ldr	r3, [sp, #4]
	movs	r0, #0
	cmp	r3, #0
	ble	.L33
	ldr	lr, [sp, #16]
	mov	r6, r0
.L34:
	ldr	r4, [lr, #4]!
	cmp	r9, #0
	add	r4, r4, r8
	ble	.L17
	and	r1, r4, #7
	negs	r1, r1
	and	r1, r1, #15
	cmp	r1, r9
	it	cs
	movcs	r1, r9
	cmp	r9, #17
	it	ls
	movls	r1, r9
	bhi	.L66
.L18:
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r1, #1
	add	r3, r4, #1
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	cmp	r1, #2
	add	r3, r4, #2
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	cmp	r1, #3
	add	r3, r4, #3
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #3]	@ zero_extendqisi2
	cmp	r1, #4
	add	r3, r4, #4
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	cmp	r1, #5
	add	r3, r4, #5
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #5]	@ zero_extendqisi2
	cmp	r1, #6
	add	r3, r4, #6
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #6]	@ zero_extendqisi2
	cmp	r1, #7
	add	r3, r4, #7
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #7]	@ zero_extendqisi2
	cmp	r1, #8
	add	r3, r4, #8
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #8]	@ zero_extendqisi2
	cmp	r1, #9
	add	r3, r4, #9
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #9]	@ zero_extendqisi2
	cmp	r1, #10
	add	r3, r4, #10
	add	r0, r0, r2
	beq	.L49
	ldrb	r2, [r4, #10]	@ zero_extendqisi2
	cmp	r1, #11
	add	r3, r4, #11
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #11]	@ zero_extendqisi2
	cmp	r1, #12
	add	r3, r4, #12
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #12]	@ zero_extendqisi2
	cmp	r1, #13
	add	r3, r4, #13
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #13]	@ zero_extendqisi2
	cmp	r1, #14
	add	r3, r4, #14
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #14]	@ zero_extendqisi2
	cmp	r1, #15
	add	r3, r4, #15
	add	r0, r0, r2
	beq	.L54
	ldrb	r2, [r4, #15]	@ zero_extendqisi2
	cmp	r1, #17
	add	r3, r4, #16
	add	r0, r0, r2
	bne	.L55
	ldrb	r5, [r4, #16]	@ zero_extendqisi2
	add	r3, r4, #17
	mov	r2, r1
	add	r0, r0, r5
.L20:
	cmp	r9, r1
	beq	.L17
.L19:
	rsb	ip, r1, r9
	lsr	r5, ip, #4
	lsls	r7, r5, #4
	cmp	r5, #0
	beq	.L22
	cmp	r5, #2
	add	r1, r1, r4
	bls	.L56
	sub	fp, r5, #3
	vmov.i32	q8, #0  @ v4si
	bic	fp, fp, #1
	adds	r1, r1, #32
	add	fp, fp, #2
	movs	r4, #0
.L28:
	vldr	d22, [r1, #-32]
	vldr	d23, [r1, #-24]
	adds	r4, r4, #2
	cmp	r4, fp
	pld	[r1, #192]
	vmovl.u8 q10, d22
	mov	r10, r1
	vmovl.u8 q11, d23
	add	r1, r1, #32
	vldr	d18, [r1, #-48]
	vldr	d19, [r1, #-40]
	vmovl.u16 q12, d20
	vmovl.u16 q10, d21
	vadd.i32	q8, q12, q8
	vmovl.u16 q12, d22
	vadd.i32	q8, q10, q8
	vmovl.u8 q10, d18
	vadd.i32	q8, q12, q8
	vmovl.u16 q11, d23
	vmovl.u16 q12, d20
	vadd.i32	q11, q11, q8
	vmovl.u8 q9, d19
	vadd.i32	q11, q11, q12
	vmovl.u16 q10, d21
	vmovl.u16 q8, d18
	vadd.i32	q10, q10, q11
	vmovl.u16 q9, d19
	vadd.i32	q8, q8, q10
	vadd.i32	q8, q9, q8
	bne	.L28
.L30:
	vld1.64	{d18-d19}, [r10:64]!
	adds	r4, r4, #1
	cmp	r5, r4
	vmovl.u8 q10, d18
	vmovl.u8 q9, d19
	vmovl.u16 q11, d20
	vmovl.u16 q10, d21
	vadd.i32	q8, q11, q8
	vmovl.u16 q11, d18
	vadd.i32	q8, q10, q8
	vmovl.u16 q9, d19
	vadd.i32	q8, q11, q8
	vadd.i32	q8, q9, q8
	bhi	.L30
	vadd.i32	d16, d16, d17
	cmp	r7, ip
	add	r2, r2, r7
	add	r3, r3, r7
	vpadd.i32	d8, d16, d16
	vmov.32	r1, d8[0]
	add	r0, r0, r1
	beq	.L17
.L22:
	ldrb	r4, [r3]	@ zero_extendqisi2
	adds	r1, r2, #1
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	adds	r1, r2, #2
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #2]	@ zero_extendqisi2
	adds	r1, r2, #3
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #3]	@ zero_extendqisi2
	adds	r1, r2, #4
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #4]	@ zero_extendqisi2
	adds	r1, r2, #5
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	adds	r1, r2, #6
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #6]	@ zero_extendqisi2
	adds	r1, r2, #7
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #7]	@ zero_extendqisi2
	add	r1, r2, #8
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #8]	@ zero_extendqisi2
	add	r1, r2, #9
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #9]	@ zero_extendqisi2
	add	r1, r2, #10
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #10]	@ zero_extendqisi2
	add	r1, r2, #11
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #11]	@ zero_extendqisi2
	add	r1, r2, #12
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	ldrb	r4, [r3, #12]	@ zero_extendqisi2
	add	r1, r2, #13
	cmp	r9, r1
	add	r0, r0, r4
	ble	.L17
	adds	r2, r2, #14
	ldrb	r1, [r3, #13]	@ zero_extendqisi2
	cmp	r9, r2
	it	gt
	ldrbgt	r3, [r3, #14]	@ zero_extendqisi2
	add	r0, r0, r1
	it	gt
	addgt	r0, r0, r3
.L17:
	ldr	r3, [sp, #4]
	adds	r6, r6, #1
	cmp	r6, r3
	bne	.L34
.L33:
	ldr	r3, [sp, #20]
	add	r8, r8, r9
	ldr	r1, [sp, #12]
	add	r0, r0, r3
	bl	__aeabi_idiv(PLT)
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #24]
	strb	r0, [r2], #1
	cmp	r2, r3
	str	r2, [sp, #8]
	bne	.L16
	ldr	r1, [sp, #28]
	ldr	r4, [r1, #12]
.L15:
	ldr	r2, [sp, #36]
	ldr	r3, [sp, #16]
	adds	r2, r2, #1
	str	r2, [sp, #36]
	ldr	r2, [sp, #44]
	add	r3, r3, r2
	str	r3, [sp, #16]
	ldr	r3, [sp, #36]
	cmp	r3, r4
	blt	.L36
.L8:
	add	sp, sp, #52
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L54:
	mov	r2, r1
	b	.L20
.L66:
	mov	r3, r4
	mov	r2, r1
	cmp	r1, #0
	beq	.L19
	b	.L18
.L49:
	movs	r2, #10
	b	.L20
.L55:
	movs	r2, #16
	b	.L20
.L56:
	vmov.i32	q8, #0  @ v4si
	mov	r10, r1
	movs	r4, #0
	b	.L30
.L37:
	mov	r8, #0
	b	.L10
	.size	int_downsample, .-int_downsample
	.section	.text.h2v1_downsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v1_downsample, %function
h2v1_downsample:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldr	r6, [r1, #28]
	ldr	r5, [r0, #28]
	str	r1, [sp, #8]
	lsls	r4, r6, #3
	str	r2, [sp, #4]
	str	r3, [sp, #12]
	rsb	r6, r5, r6, lsl #4
	ldr	r7, [r0, #236]
	cmp	r6, #0
	ble	.L71
	cmp	r7, #0
	ble	.L71
	cmp	r7, #8
	ble	.L81
	ldr	r2, [sp, #4]
	sub	r8, r7, #9
	bic	r8, r8, #7
	mov	r10, #0
	add	r8, r8, #8
	add	r9, r2, #32
.L73:
	ldr	r0, [r9, #-32]
	mov	r2, r6
	pld	[r9]
	add	r10, r10, #8
	add	r9, r9, #32
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r9, #-60]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r9, #-56]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r9, #-52]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r9, #-48]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r9, #-44]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r9, #-40]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r9, #-36]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r10, r8
	bne	.L73
.L72:
	ldr	r3, [sp, #4]
	add	r8, r10, #1073741824
	add	r8, r8, #-1
	add	r8, r3, r8, lsl #2
.L74:
	ldr	r0, [r8, #4]!
	add	r10, r10, #1
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r7, r10
	bgt	.L74
.L71:
	ldr	r1, [sp, #8]
	ldr	r3, [r1, #12]
	cmp	r3, #0
	ittt	gt
	movgt	r10, #0
	subgt	r9, r4, #15
	movgt	fp, r10
	ble	.L67
.L80:
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #4]
	ldr	lr, [r1, r10]
	ldr	r6, [r2, r10]
	cmp	r4, #0
	beq	.L75
	cmp	r4, #16
	bls	.L82
	movw	r7, #65521
	add	r3, lr, #16
	movt	r7, 65535
	add	r2, r6, #32
	rsb	r7, lr, r7
	adds	r1, r6, #1
.L77:
	ldrb	r5, [r2, #-32]	@ zero_extendqisi2
	mov	ip, r3
	ldrb	r0, [r1]	@ zero_extendqisi2
	rsb	r8, lr, r3
	pld	[r2, #2]
	mov	r6, r2
	pld	[r2, #3]
	adds	r1, r1, #32
	add	r0, r0, r5
	pld	[r3, #1]
	asrs	r0, r0, #1
	adds	r3, r3, #16
	adds	r2, r2, #32
	strb	r0, [r3, #-32]
	ldrb	r5, [r2, #-62]	@ zero_extendqisi2
	ldrb	r0, [r1, #-30]	@ zero_extendqisi2
	add	r0, r0, r5
	adds	r0, r0, #1
	asrs	r0, r0, #1
	strb	r0, [r3, #-31]
	ldrb	r5, [r2, #-60]	@ zero_extendqisi2
	ldrb	r0, [r1, #-28]	@ zero_extendqisi2
	add	r0, r0, r5
	asrs	r0, r0, #1
	strb	r0, [r3, #-30]
	ldrb	r5, [r2, #-58]	@ zero_extendqisi2
	ldrb	r0, [r1, #-26]	@ zero_extendqisi2
	add	r0, r0, r5
	adds	r0, r0, #1
	asrs	r0, r0, #1
	strb	r0, [r3, #-29]
	ldrb	r5, [r2, #-56]	@ zero_extendqisi2
	ldrb	r0, [r1, #-24]	@ zero_extendqisi2
	add	r0, r0, r5
	asrs	r0, r0, #1
	strb	r0, [r3, #-28]
	ldrb	r5, [r2, #-54]	@ zero_extendqisi2
	ldrb	r0, [r1, #-22]	@ zero_extendqisi2
	add	r0, r0, r5
	adds	r0, r0, #1
	asrs	r0, r0, #1
	strb	r0, [r3, #-27]
	ldrb	r5, [r2, #-52]	@ zero_extendqisi2
	ldrb	r0, [r1, #-20]	@ zero_extendqisi2
	add	r0, r0, r5
	asrs	r0, r0, #1
	strb	r0, [r3, #-26]
	ldrb	r5, [r2, #-50]	@ zero_extendqisi2
	ldrb	r0, [r1, #-18]	@ zero_extendqisi2
	add	r0, r0, r5
	adds	r0, r0, #1
	asrs	r0, r0, #1
	strb	r0, [r3, #-25]
	ldrb	r5, [r2, #-48]	@ zero_extendqisi2
	ldrb	r0, [r1, #-16]	@ zero_extendqisi2
	add	r0, r0, r5
	asrs	r0, r0, #1
	strb	r0, [r3, #-24]
	ldrb	r5, [r2, #-46]	@ zero_extendqisi2
	ldrb	r0, [r1, #-14]	@ zero_extendqisi2
	add	r0, r0, r5
	adds	r0, r0, #1
	asrs	r0, r0, #1
	strb	r0, [r3, #-23]
	ldrb	r5, [r2, #-44]	@ zero_extendqisi2
	ldrb	r0, [r1, #-12]	@ zero_extendqisi2
	add	r0, r0, r5
	asrs	r0, r0, #1
	strb	r0, [r3, #-22]
	ldrb	r5, [r2, #-42]	@ zero_extendqisi2
	ldrb	r0, [r1, #-10]	@ zero_extendqisi2
	add	r0, r0, r5
	adds	r0, r0, #1
	asrs	r0, r0, #1
	strb	r0, [r3, #-21]
	ldrb	r5, [r2, #-40]	@ zero_extendqisi2
	ldrb	r0, [r1, #-8]	@ zero_extendqisi2
	add	r0, r0, r5
	asrs	r0, r0, #1
	strb	r0, [r3, #-20]
	ldrb	r5, [r2, #-38]	@ zero_extendqisi2
	ldrb	r0, [r1, #-6]	@ zero_extendqisi2
	add	r0, r0, r5
	adds	r0, r0, #1
	asrs	r0, r0, #1
	strb	r0, [r3, #-19]
	ldrb	r5, [r2, #-36]	@ zero_extendqisi2
	ldrb	r0, [r1, #-4]	@ zero_extendqisi2
	add	r0, r0, r5
	asrs	r0, r0, #1
	strb	r0, [r3, #-18]
	ldrb	r5, [r2, #-34]	@ zero_extendqisi2
	ldrb	r0, [r1, #-2]	@ zero_extendqisi2
	add	r0, r0, r5
	adds	r0, r0, #1
	asrs	r0, r0, #1
	strb	r0, [r3, #-17]
	adds	r0, r7, r3
	cmp	r9, r0
	bhi	.L77
.L76:
	adds	r6, r6, #2
	rsb	ip, r8, ip
	movs	r3, #0
.L79:
	ldrb	r1, [r6, #-2]	@ zero_extendqisi2
	adds	r6, r6, #2
	ldrb	r2, [r6, #-3]	@ zero_extendqisi2
	add	r2, r2, r1
	add	r2, r2, r3
	eor	r3, r3, #1
	asrs	r2, r2, #1
	strb	r2, [ip, r8]
	add	r8, r8, #1
	cmp	r4, r8
	bhi	.L79
	ldr	r1, [sp, #8]
	ldr	r3, [r1, #12]
.L75:
	add	fp, fp, #1
	add	r10, r10, #4
	cmp	fp, r3
	blt	.L80
.L67:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L82:
	mov	ip, lr
	mov	r8, #0
	b	.L76
.L81:
	mov	r10, #0
	b	.L72
	.size	h2v1_downsample, .-h2v1_downsample
	.section	.text.h2v2_downsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v2_downsample, %function
h2v2_downsample:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r5, [r1, #28]
	mov	r7, r1
	ldr	r4, [r0, #28]
	str	r2, [sp]
	lsls	r6, r5, #3
	str	r3, [sp, #4]
	ldr	r8, [r0, #236]
	rsb	r5, r4, r5, lsl #4
	cmp	r5, #0
	ble	.L92
	cmp	r8, #0
	ble	.L92
	cmp	r8, #8
	ble	.L100
	ldr	r3, [sp]
	sub	r10, r8, #9
	bic	r10, r10, #7
	mov	r9, #0
	add	r10, r10, #8
	add	fp, r3, #32
.L94:
	ldr	r0, [fp, #-32]
	mov	r2, r5
	pld	[fp]
	add	r9, r9, #8
	add	fp, fp, #32
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-60]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-56]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-52]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-48]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-44]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-40]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-36]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r9, r10
	bne	.L94
.L93:
	ldr	r3, [sp]
	add	r10, r9, #1073741824
	add	r10, r10, #-1
	add	r10, r3, r10, lsl #2
.L95:
	ldr	r0, [r10, #4]!
	add	r9, r9, #1
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r8, r9
	bgt	.L95
.L92:
	ldr	r1, [r7, #12]
	cmp	r1, #0
	ble	.L88
	ldr	r3, [sp, #4]
	mov	r8, #0
	sub	r9, r3, #4
	ldr	r3, [sp]
	add	ip, r3, #52
.L99:
	pld	[ip]
	ldr	r0, [r9, #4]!
	ldr	r2, [ip, #-52]
	ldr	r3, [ip, #-48]
	cbz	r6, .L96
	adds	r2, r2, #2
	adds	r3, r3, #2
	add	lr, r0, r6
	movs	r4, #1
.L98:
	ldrb	fp, [r2, #-2]	@ zero_extendqisi2
	adds	r3, r3, #2
	ldrb	r5, [r2, #-1]	@ zero_extendqisi2
	adds	r2, r2, #2
	ldrb	r10, [r3, #-4]	@ zero_extendqisi2
	ldrb	r1, [r3, #-3]	@ zero_extendqisi2
	add	r5, r5, fp
	add	r5, r5, r10
	add	r5, r5, r1
	add	r5, r5, r4
	eor	r4, r4, #3
	asrs	r5, r5, #2
	strb	r5, [r0], #1
	cmp	r0, lr
	bne	.L98
	ldr	r1, [r7, #12]
.L96:
	add	r8, r8, #1
	add	ip, ip, #8
	cmp	r8, r1
	blt	.L99
.L88:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L100:
	mov	r9, #0
	b	.L93
	.size	h2v2_downsample, .-h2v2_downsample
	.section	.text.h2v2_smooth_downsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v2_smooth_downsample, %function
h2v2_smooth_downsample:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	ldr	r5, [r1, #28]
	mov	fp, r0
	ldr	r4, [r0, #28]
	str	r3, [sp, #8]
	lsls	r7, r5, #3
	str	r1, [sp, #36]
	str	r2, [sp, #4]
	rsb	r5, r4, r5, lsl #4
	ldr	r3, [r0, #236]
	cmp	r5, #0
	ble	.L110
	adds	r6, r3, #2
	cmp	r6, #0
	ble	.L110
	cmp	r3, #6
	ble	.L117
	ldr	lr, [sp, #4]
	sub	r10, r3, #7
	bic	r10, r10, #7
	mov	r9, #0
	add	r10, r10, #8
	add	r8, lr, #28
.L112:
	ldr	r0, [r8, #-32]
	mov	r2, r5
	pld	[r8]
	add	r9, r9, #8
	add	r8, r8, #32
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r8, #-60]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r8, #-56]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r8, #-52]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r8, #-48]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r8, #-44]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r8, #-40]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r8, #-36]
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r9, r10
	bne	.L112
.L111:
	ldr	r0, [sp, #4]
	add	r10, r9, #1073741824
	add	r10, r10, #-1
	add	r10, r0, r10, lsl #2
.L113:
	ldr	r0, [r10], #4
	add	r9, r9, #1
	mov	r2, r5
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r6, r9
	bgt	.L113
.L110:
	ldr	r3, [fp, #192]
	mvn	r1, #79
	ldr	r6, [sp, #36]
	ldr	r2, [r6, #12]
	mul	r1, r1, r3
	lsl	fp, r3, #4
	cmp	r2, #0
	add	r10, r1, #16384
	ble	.L106
	ldr	r6, [sp, #4]
	lsls	r3, r7, #1
	ldr	r1, [sp, #8]
	sub	lr, r7, #2
	subs	r3, r3, #4
	subs	r7, r7, #1
	add	r9, r6, #24
	movs	r0, #0
	subs	r1, r1, #4
	str	r3, [sp, #4]
	str	r1, [sp, #32]
	str	lr, [sp, #44]
	str	r7, [sp, #40]
	str	r0, [sp, #28]
.L116:
	ldr	r2, [r9, #-28]
	ldr	r3, [r9, #-16]
	ldr	r1, [r9, #-24]
	str	r2, [sp, #8]
	ldr	r7, [sp, #8]
	ldrb	r6, [r2]	@ zero_extendqisi2
	ldrb	lr, [r2, #1]	@ zero_extendqisi2
	adds	r2, r1, #2
	ldrb	r5, [r3]	@ zero_extendqisi2
	ldrb	ip, [r7, #2]!	@ zero_extendqisi2
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	add	lr, lr, r6
	ldrb	r4, [r1]	@ zero_extendqisi2
	add	lr, lr, r5
	str	r7, [sp, #8]
	add	r6, r6, ip
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	add	lr, lr, r0
	str	r3, [sp, #12]
	add	lr, lr, r4
	ldr	r3, [r9, #-20]
	add	r6, r6, r5
	add	r7, r7, lr
	ldr	lr, [sp, #12]
	ldrb	r1, [r1, #1]	@ zero_extendqisi2
	ldrb	r0, [r3]	@ zero_extendqisi2
	adds	r3, r3, #2
	ldrb	r8, [lr, #2]!	@ zero_extendqisi2
	ldrb	ip, [r3, #-1]	@ zero_extendqisi2
	add	r1, r1, r4
	add	r7, r7, r0
	adds	r4, r1, r0
	str	lr, [sp, #12]
	add	r6, r6, r8
	ldrb	lr, [r3]	@ zero_extendqisi2
	add	r4, r4, ip
	ldr	r0, [sp, #32]
	ldr	r8, [sp, #40]
	add	r7, r7, lr
	pld	[r9]
	add	r6, r6, r7, lsl #1
	ldr	r5, [r0, #4]!
	str	r2, [sp, #16]
	mul	r6, fp, r6
	str	r3, [sp, #20]
	adds	r1, r5, #1
	add	r8, r8, r5
	str	r1, [sp, #24]
	str	r0, [sp, #32]
	mla	r6, r10, r4, r6
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #8]
	ldr	r4, [sp, #24]
	add	r6, r6, #32768
	asrs	r6, r6, #16
	strb	r6, [r5]
.L115:
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	adds	r2, r2, #2
	ldrb	r7, [r1]	@ zero_extendqisi2
	adds	r3, r3, #2
	ldrb	lr, [r0]	@ zero_extendqisi2
	ldrb	r6, [r0, #1]	@ zero_extendqisi2
	add	r7, r7, r5
	ldrb	r5, [r2, #-3]	@ zero_extendqisi2
	add	r7, r7, lr
	ldrb	lr, [r2]	@ zero_extendqisi2
	add	r7, r7, r6
	ldrb	r6, [r1, #-1]	@ zero_extendqisi2
	add	r7, r7, r5
	ldrb	r5, [r1, #2]!	@ zero_extendqisi2
	add	r7, r7, lr
	ldrb	lr, [r3, #-3]	@ zero_extendqisi2
	ldrb	ip, [r0, #-1]	@ zero_extendqisi2
	add	r6, r6, r5
	ldrb	r5, [r3]	@ zero_extendqisi2
	add	r7, r7, lr
	ldrb	lr, [r0, #2]!	@ zero_extendqisi2
	add	r6, r6, ip
	ldrb	ip, [r2, #-1]	@ zero_extendqisi2
	add	r7, r7, r5
	ldrb	r5, [r2, #-2]	@ zero_extendqisi2
	add	r6, r6, lr
	ldrb	lr, [r3, #-2]	@ zero_extendqisi2
	add	r6, r6, r7, lsl #1
	ldrb	r7, [r3, #-1]	@ zero_extendqisi2
	add	r5, r5, ip
	mul	r6, fp, r6
	add	r5, r5, lr
	add	r5, r5, r7
	mla	r5, r10, r5, r6
	add	r5, r5, #32768
	asrs	r5, r5, #16
	strb	r5, [r4], #1
	cmp	r4, r8
	bne	.L115
	ldr	r2, [sp, #4]
	add	r9, r9, #8
	ldr	r3, [sp, #8]
	ldr	r0, [sp, #8]
	ldr	r6, [sp, #4]
	ldrb	r4, [r3, r2]	@ zero_extendqisi2
	ldr	r7, [sp, #12]
	add	r0, r0, r2
	ldr	r1, [sp, #12]
	ldr	r3, [sp, #16]
	ldrb	r5, [r7, r6]	@ zero_extendqisi2
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	add	r1, r1, r6
	add	r3, r3, r6
	ldrb	r0, [r0, #-1]	@ zero_extendqisi2
	ldr	r6, [sp, #28]
	ldr	lr, [sp, #16]
	add	r4, r4, r2
	ldr	r7, [sp, #4]
	add	r2, r2, r0
	adds	r6, r6, #1
	ldr	r0, [sp, #4]
	ldr	ip, [sp, #20]
	add	r4, r4, r5
	str	r6, [sp, #28]
	ldrb	r6, [lr, r7]	@ zero_extendqisi2
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	add	ip, ip, r0
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	ldrb	r1, [r1, #-1]	@ zero_extendqisi2
	add	r4, r4, r7
	ldrb	r8, [ip, #-1]	@ zero_extendqisi2
	add	r4, r4, lr
	ldrb	r5, [ip, #1]	@ zero_extendqisi2
	add	r4, r4, r3
	add	r2, r2, r1
	ldr	r1, [sp, #20]
	add	r4, r4, r8
	add	r2, r2, r7
	add	r4, r4, r5
	add	r6, r6, r3
	add	r2, r2, r4, lsl #1
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	ldr	r7, [sp, #36]
	mul	r2, fp, r2
	ldr	lr, [sp, #28]
	adds	r3, r6, r0
	ldr	r6, [sp, #24]
	add	r3, r3, r5
	mla	r3, r10, r3, r2
	ldr	r2, [sp, #44]
	add	r3, r3, #32768
	asrs	r3, r3, #16
	strb	r3, [r6, r2]
	ldr	r3, [r7, #12]
	cmp	r3, lr
	bgt	.L116
.L106:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L117:
	mov	r9, #0
	b	.L111
	.size	h2v2_smooth_downsample, .-h2v2_smooth_downsample
	.section	.text.fullsize_smooth_downsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fullsize_smooth_downsample, %function
fullsize_smooth_downsample:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	ldr	r5, [r1, #28]
	mov	r10, r0
	ldr	r4, [r0, #28]
	str	r3, [sp, #4]
	lsls	r5, r5, #3
	str	r1, [sp, #24]
	str	r2, [sp]
	subs	r6, r5, r4
	ldr	r3, [r0, #236]
	cmp	r6, #0
	ble	.L124
	add	r8, r3, #2
	cmp	r8, #0
	ble	.L124
	cmp	r3, #6
	ble	.L131
	ldr	ip, [sp]
	subs	r3, r3, #7
	bic	r9, r3, #7
	movs	r7, #0
	add	r9, r9, #8
	add	fp, ip, #28
.L126:
	ldr	r0, [fp, #-32]
	mov	r2, r6
	pld	[fp]
	adds	r7, r7, #8
	add	fp, fp, #32
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-60]
	mov	r2, r6
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-56]
	mov	r2, r6
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-52]
	mov	r2, r6
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-48]
	mov	r2, r6
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-44]
	mov	r2, r6
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-40]
	mov	r2, r6
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [fp, #-36]
	mov	r2, r6
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r9, r7
	bne	.L126
.L125:
	ldr	ip, [sp]
	add	r9, r7, #1073741824
	add	r9, r9, #-1
	add	r9, ip, r9, lsl #2
.L127:
	ldr	r0, [r9], #4
	adds	r7, r7, #1
	mov	r2, r6
	add	r0, r0, r4
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r8, r7
	bgt	.L127
.L124:
	ldr	ip, [sp, #24]
	ldr	r3, [r10, #192]
	ldr	r2, [ip, #12]
	rsb	r1, r3, #128
	lsl	r10, r1, #9
	lsl	fp, r3, #6
	cmp	r2, #0
	ble	.L120
	ldr	r0, [sp, #4]
	subs	r2, r5, #2
	ldr	r1, [sp]
	subs	r5, r5, #1
	movs	r3, #0
	str	r2, [sp, #20]
	subs	r0, r0, #4
	str	r5, [sp, #28]
	subs	r1, r1, #4
	str	r0, [sp, #16]
	str	r1, [sp, #4]
	str	r3, [sp, #12]
.L130:
	ldr	ip, [sp, #4]
	ldr	r0, [sp, #16]
	ldr	r9, [ip, #4]
	ldr	r1, [r0, #4]!
	ldr	r6, [ip], #4
	mov	r2, r9
	str	r0, [sp, #16]
	ldr	r0, [ip, #4]
	adds	r6, r6, #1
	ldrb	r7, [r2], #1	@ zero_extendqisi2
	ldrb	lr, [r6, #-1]	@ zero_extendqisi2
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldrb	r5, [r6]	@ zero_extendqisi2
	str	r2, [sp]
	ldrb	r2, [r0, #1]!	@ zero_extendqisi2
	add	lr, lr, r3
	ldrb	r3, [r9, #1]	@ zero_extendqisi2
	add	r4, lr, r7
	add	lr, lr, r4
	str	ip, [sp, #4]
	add	r2, r2, r5
	ldr	ip, [sp, #28]
	add	r2, r2, r3
	adds	r3, r1, #1
	add	lr, lr, r2
	str	r3, [sp, #8]
	mul	lr, fp, lr
	add	r9, r9, ip
	ldr	r3, [sp]
	ldr	r5, [sp, #8]
	mla	r7, r7, r10, lr
	add	r7, r7, #32768
	asrs	r7, r7, #16
	strb	r7, [r1]
	b	.L129
.L134:
	mov	r2, ip
.L129:
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	ldrb	r8, [r6, #1]!	@ zero_extendqisi2
	ldrb	ip, [r0, #1]!	@ zero_extendqisi2
	ldrb	lr, [r3]	@ zero_extendqisi2
	subs	r7, r2, r1
	add	r7, r7, r4
	cmp	r3, r9
	add	ip, ip, r8
	mov	r4, r2
	add	ip, ip, lr
	add	r7, r7, ip
	mul	r7, fp, r7
	mla	r1, r10, r1, r7
	add	r1, r1, #32768
	asr	r1, r1, #16
	strb	r1, [r5], #1
	bne	.L134
	ldr	r1, [sp]
	ldr	r0, [sp, #20]
	ldrb	r3, [r1, r0]	@ zero_extendqisi2
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #12]
	rsb	ip, r3, ip, lsl #1
	adds	r0, r0, #1
	add	r2, r2, ip
	ldr	ip, [sp, #24]
	mul	r2, fp, r2
	str	r0, [sp, #12]
	mla	r3, r10, r3, r2
	ldr	r2, [sp, #8]
	add	r3, r3, #32768
	asrs	r3, r3, #16
	strb	r3, [r2, r1]
	ldr	r3, [ip, #12]
	cmp	r3, r0
	bgt	.L130
.L120:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L131:
	movs	r7, #0
	b	.L125
	.size	fullsize_smooth_downsample, .-fullsize_smooth_downsample
	.section	.text.fullsize_downsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fullsize_downsample, %function
fullsize_downsample:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r1
	ldr	r5, [r0, #236]
	sub	sp, sp, #8
	mov	r10, r3
	movs	r1, #0
	ldr	r7, [r0, #28]
	mov	r4, r0
	str	r5, [sp]
	mov	r0, r2
	mov	r3, r1
	mov	r2, r10
	str	r7, [sp, #4]
	bl	jcopy_sample_rows(PLT)
	ldr	r6, [r6, #28]
	ldr	r5, [r4, #28]
	ldr	r8, [r4, #236]
	rsb	r6, r5, r6, lsl #3
	cmp	r6, #0
	ble	.L135
	cmp	r8, #0
	ble	.L135
	cmp	r8, #8
	ble	.L141
	sub	r9, r8, #9
	add	r4, r10, #32
	bic	r9, r9, #7
	movs	r7, #0
	add	r9, r9, #8
.L139:
	ldr	r0, [r4, #-32]
	mov	r2, r6
	pld	[r4]
	adds	r7, r7, #8
	adds	r4, r4, #32
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r4, #-60]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r4, #-56]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r4, #-52]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r4, #-48]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r4, #-44]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r4, #-40]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	ldr	r0, [r4, #-36]
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r7, r9
	bne	.L139
.L138:
	add	r4, r7, #1073741824
	subs	r4, r4, #1
	add	r4, r10, r4, lsl #2
.L140:
	ldr	r0, [r4, #4]!
	adds	r7, r7, #1
	mov	r2, r6
	add	r0, r0, r5
	ldrb	r1, [r0, #-1]	@ zero_extendqisi2
	bl	memset(PLT)
	cmp	r8, r7
	bgt	.L140
.L135:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L141:
	movs	r7, #0
	b	.L138
	.size	fullsize_downsample, .-fullsize_downsample
	.global	__aeabi_idivmod
	.section	.text.jinit_downsampler,"ax",%progbits
	.align	2
	.global	jinit_downsampler
	.thumb
	.thumb_func
	.type	jinit_downsampler, %function
jinit_downsampler:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r1, #1
	ldr	r4, [r0, #4]
	mov	r10, r0
	movs	r2, #52
	sub	sp, sp, #20
	ldr	r4, [r4]
	blx	r4
	ldr	r2, [r10, #188]
	mov	r6, r0
	ldr	r4, .L168
	movs	r1, #0
	ldr	r0, .L168+4
	str	r6, [r10, #356]
.LPIC24:
	add	r4, pc
	str	r1, [r6, #8]
.LPIC25:
	add	r0, pc
	str	r4, [r6]
	str	r0, [r6, #4]
	cmp	r2, #0
	bne	.L164
.L144:
	ldr	r1, [r10, #60]
	ldr	fp, [r10, #68]
	cmp	r1, #0
	ble	.L143
	ldr	r3, .L168+8
	mov	r5, r6
	ldr	r2, .L168+12
	movs	r7, #1
	ldr	r8, .L168+16
	movs	r4, #0
.LPIC29:
	add	r3, pc
	ldr	r9, .L168+20
.LPIC30:
	add	r2, pc
	str	r3, [sp, #12]
	ldr	r3, .L168+24
.LPIC31:
	add	r8, pc
	str	r2, [sp, #8]
.LPIC28:
	add	r9, pc
	ldr	r2, .L168+28
.LPIC26:
	add	r3, pc
	str	r3, [sp, #4]
	mov	r3, r8
.LPIC27:
	add	r2, pc
	mov	r8, r6
	str	r2, [sp]
	mov	r6, r3
	b	.L155
.L147:
	cmp	r0, r1, lsl #1
	beq	.L165
.L150:
	bl	__aeabi_idivmod(PLT)
	cbnz	r1, .L153
	ldr	r0, [r10, #236]
	ldr	r1, [fp, #12]
	bl	__aeabi_idivmod(PLT)
	cbnz	r1, .L153
	mov	r7, r1
	str	r6, [r5, #12]
.L149:
	ldr	r3, [r10, #60]
	adds	r4, r4, #1
	add	fp, fp, #84
	adds	r5, r5, #4
	cmp	r3, r4
	ble	.L166
.L155:
	ldr	r1, [fp, #8]
	ldr	r0, [r10, #232]
	cmp	r1, r0
	bne	.L147
	ldr	r2, [fp, #12]
	ldr	r3, [r10, #236]
	cmp	r2, r3
	bne	.L147
	ldr	r3, [r10, #192]
	cbz	r3, .L148
	ldr	r2, [sp, #4]
	movs	r3, #1
	str	r2, [r5, #12]
	str	r3, [r8, #8]
	b	.L149
.L153:
	ldr	r3, [r10]
	movs	r2, #38
	mov	r0, r10
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L149
.L165:
	ldr	r2, [fp, #12]
	ldr	r3, [r10, #236]
	cmp	r2, r3
	itt	eq
	streq	r9, [r5, #12]
	moveq	r7, #0
	beq	.L149
	cmp	r3, r2, lsl #1
	bne	.L150
	ldr	r3, [r10, #192]
	cbz	r3, .L152
	ldr	r2, [sp, #12]
	movs	r3, #1
	str	r2, [r5, #12]
	str	r3, [r8, #8]
	b	.L149
.L166:
	ldr	r2, [r10, #192]
	cbz	r2, .L143
	cbz	r7, .L167
.L143:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L148:
	ldr	r3, [sp]
	str	r3, [r5, #12]
	b	.L149
.L152:
	ldr	r3, [sp, #8]
	str	r3, [r5, #12]
	b	.L149
.L167:
	ldr	r2, [r10]
	movs	r4, #99
	mov	r1, r7
	mov	r0, r10
	str	r4, [r2, #20]
	ldr	r3, [r2, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	r3	@ indirect register sibling call
.L164:
	ldr	r2, [r10]
	movs	r1, #25
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	b	.L144
.L169:
	.align	2
.L168:
	.word	start_pass_downsample-(.LPIC24+4)
	.word	sep_downsample-(.LPIC25+4)
	.word	h2v2_smooth_downsample-(.LPIC29+4)
	.word	h2v2_downsample-(.LPIC30+4)
	.word	int_downsample-(.LPIC31+4)
	.word	h2v1_downsample-(.LPIC28+4)
	.word	fullsize_smooth_downsample-(.LPIC26+4)
	.word	fullsize_downsample-(.LPIC27+4)
	.size	jinit_downsampler, .-jinit_downsampler
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
