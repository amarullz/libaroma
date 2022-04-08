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
	.file	"jcparam.c"
	.section	.text.jpeg_add_quant_table,"ax",%progbits
	.align	2
	.global	jpeg_add_quant_table
	.thumb
	.thumb_func
	.type	jpeg_add_quant_table, %function
jpeg_add_quant_table:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r1
	ldr	r1, [r0, #20]
	mov	r5, r0
	mov	r7, r2
	mov	r8, r3
	cmp	r1, #100
	beq	.L2
	ldr	r3, [r0]
	movs	r4, #20
	str	r1, [r3, #24]
	ldr	r2, [r0]
	str	r4, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L2:
	cmp	r6, #3
	bhi	.L13
.L3:
	add	r6, r5, r6, lsl #2
	ldr	r3, [r6, #72]
	cmp	r3, #0
	beq	.L14
.L4:
	ldr	r2, [sp, #32]
	movw	r0, #34079
	sub	lr, r7, #4
	movt	r0, 20971
	movs	r1, #0
	movw	r7, #32766
	adds	ip, r2, #0
	movw	r5, #32767
	it	ne
	movne	ip, #1
.L6:
	ldr	r4, [lr, #4]!
	mul	r4, r4, r8
	adds	r4, r4, #50
	smull	r6, r2, r0, r4
	asrs	r4, r4, #31
	rsb	r2, r4, r2, asr #5
	subs	r6, r2, #1
	cmp	r2, #255
	ite	le
	movle	r9, #0
	andgt	r9, ip, #1
	cmp	r6, r7
	it	hi
	movhi	r9, #0
	cmp	r2, r5
	ite	gt
	movgt	r4, #0
	movle	r4, #1
	cmp	r4, #0
	it	eq
	moveq	r9, ip
	cmp	r6, r7
	ite	ls
	movls	r6, r2
	movhi	r6, #1
	eor	r9, r9, #1
	cmp	r2, r5
	ite	le
	movle	r2, r4
	orrgt	r2, r4, #1
	cmp	r4, #0
	ite	ne
	movne	r4, r6
	moveq	r4, r5
	tst	r9, r2
	it	eq
	moveq	r4, #255
	strh	r4, [r3, r1]	@ movhi
	adds	r1, r1, #2
	cmp	r1, #128
	bne	.L6
	movs	r2, #0
	str	r2, [r3, #128]
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L13:
	ldr	r3, [r5]
	movs	r1, #31
	mov	r0, r5
	str	r6, [r3, #24]
	ldr	r2, [r5]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L3
.L14:
	mov	r0, r5
	bl	jpeg_alloc_quant_table(PLT)
	mov	r3, r0
	str	r0, [r6, #72]
	b	.L4
	.size	jpeg_add_quant_table, .-jpeg_add_quant_table
	.section	.text.jpeg_set_linear_quality,"ax",%progbits
	.align	2
	.global	jpeg_set_linear_quality
	.thumb
	.thumb_func
	.type	jpeg_set_linear_quality, %function
jpeg_set_linear_quality:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	mov	r5, r2
	str	r2, [sp]
	mov	r4, r1
	mov	r3, r1
	ldr	r2, .L17
	movs	r1, #0
	mov	r6, r0
.LPIC16:
	add	r2, pc
	bl	jpeg_add_quant_table(PLT)
	ldr	r2, .L17+4
	mov	r0, r6
	str	r5, [sp]
	mov	r3, r4
	movs	r1, #1
.LPIC17:
	add	r2, pc
	bl	jpeg_add_quant_table(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L18:
	.align	2
.L17:
	.word	.LANCHOR0-(.LPIC16+4)
	.word	.LANCHOR1-(.LPIC17+4)
	.size	jpeg_set_linear_quality, .-jpeg_set_linear_quality
	.global	__aeabi_idiv
	.section	.text.jpeg_quality_scaling,"ax",%progbits
	.align	2
	.global	jpeg_quality_scaling
	.thumb
	.thumb_func
	.type	jpeg_quality_scaling, %function
jpeg_quality_scaling:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	subs	r1, r0, #0
	ble	.L24
	cmp	r1, #100
	ble	.L28
	movs	r0, #0
	bx	lr
.L24:
	movw	r0, #5000
	bx	lr
.L28:
	cmp	r1, #49
	bgt	.L29
	push	{r3, lr}
	movw	r0, #5000
	bl	__aeabi_idiv(PLT)
	pop	{r3, pc}
.L29:
	rsb	r1, r1, #100
	lsls	r0, r1, #1
	bx	lr
	.size	jpeg_quality_scaling, .-jpeg_quality_scaling
	.section	.text.jpeg_set_quality,"ax",%progbits
	.align	2
	.global	jpeg_set_quality
	.thumb
	.thumb_func
	.type	jpeg_set_quality, %function
jpeg_set_quality:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	mov	r5, r2
	mov	r0, r1
	bl	jpeg_quality_scaling(PLT)
	mov	r2, r5
	mov	r1, r0
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	jpeg_set_linear_quality(PLT)
	.size	jpeg_set_quality, .-jpeg_set_quality
	.section	.text.jpeg_set_colorspace,"ax",%progbits
	.align	2
	.global	jpeg_set_colorspace
	.thumb
	.thumb_func
	.type	jpeg_set_colorspace, %function
jpeg_set_colorspace:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r5, r1
	cmp	r3, #100
	beq	.L33
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L33:
	movs	r3, #0
	str	r5, [r4, #64]
	str	r3, [r4, #208]
	str	r3, [r4, #220]
	cmp	r5, #5
	bhi	.L34
	tbb	[pc, r5]
.L36:
	.byte	(.L35-.L36)/2
	.byte	(.L37-.L36)/2
	.byte	(.L38-.L36)/2
	.byte	(.L39-.L36)/2
	.byte	(.L40-.L36)/2
	.byte	(.L41-.L36)/2
	.align	1
.L41:
	ldr	r3, [r4, #68]
	movs	r2, #1
	movs	r1, #0
	movs	r0, #2
	movs	r5, #4
	movs	r6, #3
	str	r2, [r4, #220]
	str	r5, [r4, #60]
	str	r2, [r3]
	str	r2, [r3, #92]
	str	r2, [r3, #96]
	str	r2, [r3, #100]
	str	r2, [r3, #104]
	str	r2, [r3, #108]
	str	r2, [r3, #176]
	str	r2, [r3, #180]
	str	r2, [r3, #184]
	str	r2, [r3, #188]
	str	r2, [r3, #192]
	str	r5, [r3, #252]
	str	r6, [r3, #168]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r0, [r3, #84]
	str	r0, [r3, #260]
	str	r0, [r3, #264]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	str	r1, [r3, #268]
	str	r1, [r3, #272]
	str	r1, [r3, #276]
	pop	{r4, r5, r6, r7, r8, pc}
.L35:
	ldr	r5, [r4, #36]
	subs	r3, r5, #1
	str	r5, [r4, #60]
	cmp	r3, #9
	bhi	.L51
.L43:
	ldr	r3, [r4, #68]
	movs	r2, #0
	mov	r1, r2
	movs	r0, #1
.L45:
	str	r2, [r3]
	adds	r2, r2, #1
	cmp	r2, r5
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	add	r3, r3, #84
	str	r1, [r3, #-68]
	str	r1, [r3, #-64]
	str	r1, [r3, #-60]
	bne	.L45
	pop	{r4, r5, r6, r7, r8, pc}
.L37:
	ldr	r3, [r4, #68]
	movs	r2, #1
	movs	r1, #0
	str	r2, [r4, #208]
	str	r2, [r4, #60]
	str	r2, [r3]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	pop	{r4, r5, r6, r7, r8, pc}
.L39:
	ldr	r3, [r4, #68]
	movs	r2, #1
	movs	r0, #2
	movs	r1, #0
	movs	r5, #3
	str	r2, [r4, #208]
	str	r5, [r4, #60]
	str	r2, [r3]
	str	r2, [r3, #92]
	str	r2, [r3, #96]
	str	r2, [r3, #100]
	str	r2, [r3, #104]
	str	r2, [r3, #108]
	str	r5, [r3, #168]
	str	r2, [r3, #176]
	str	r2, [r3, #180]
	str	r2, [r3, #184]
	str	r2, [r3, #188]
	str	r2, [r3, #192]
	str	r0, [r3, #8]
	str	r0, [r3, #12]
	str	r0, [r3, #84]
	str	r1, [r3, #16]
	str	r1, [r3, #20]
	str	r1, [r3, #24]
	pop	{r4, r5, r6, r7, r8, pc}
.L40:
	ldr	r3, [r4, #68]
	movs	r2, #0
	movs	r1, #1
	mov	lr, #4
	movs	r7, #67
	movs	r6, #77
	movs	r5, #89
	movs	r0, #75
	str	r1, [r4, #220]
	str	lr, [r4, #60]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #92]
	str	r1, [r3, #96]
	str	r1, [r3, #176]
	str	r1, [r3, #180]
	str	r1, [r3, #260]
	str	r1, [r3, #264]
	str	r7, [r3]
	str	r6, [r3, #84]
	str	r5, [r3, #168]
	str	r0, [r3, #252]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #100]
	str	r2, [r3, #104]
	str	r2, [r3, #108]
	str	r2, [r3, #184]
	str	r2, [r3, #188]
	str	r2, [r3, #192]
	str	r2, [r3, #268]
	str	r2, [r3, #272]
	str	r2, [r3, #276]
	pop	{r4, r5, r6, r7, r8, pc}
.L38:
	ldr	r3, [r4, #68]
	movs	r2, #0
	movs	r1, #1
	movs	r7, #3
	movs	r6, #82
	movs	r5, #71
	movs	r0, #66
	str	r1, [r4, #220]
	str	r7, [r4, #60]
	str	r1, [r3, #8]
	str	r1, [r3, #12]
	str	r1, [r3, #92]
	str	r1, [r3, #96]
	str	r1, [r3, #176]
	str	r1, [r3, #180]
	str	r6, [r3]
	str	r5, [r3, #84]
	str	r0, [r3, #168]
	str	r2, [r3, #16]
	str	r2, [r3, #20]
	str	r2, [r3, #24]
	str	r2, [r3, #100]
	str	r2, [r3, #104]
	str	r2, [r3, #108]
	str	r2, [r3, #184]
	str	r2, [r3, #188]
	str	r2, [r3, #192]
	pop	{r4, r5, r6, r7, r8, pc}
.L34:
	ldr	r3, [r4]
	movs	r2, #10
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L51:
	ldr	r3, [r4]
	movs	r1, #10
	movs	r6, #26
	mov	r0, r4
	str	r5, [r3, #24]
	ldr	r2, [r4]
	str	r6, [r3, #20]
	str	r1, [r2, #28]
	ldr	r3, [r4]
	ldr	r3, [r3]
	blx	r3
	ldr	r5, [r4, #60]
	cmp	r5, #0
	bgt	.L43
	pop	{r4, r5, r6, r7, r8, pc}
	.size	jpeg_set_colorspace, .-jpeg_set_colorspace
	.section	.text.jpeg_default_colorspace,"ax",%progbits
	.align	2
	.global	jpeg_default_colorspace
	.thumb
	.thumb_func
	.type	jpeg_default_colorspace, %function
jpeg_default_colorspace:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #40]
	cmp	r3, #5
	bhi	.L53
	tbb	[pc, r3]
.L55:
	.byte	(.L54-.L55)/2
	.byte	(.L56-.L55)/2
	.byte	(.L58-.L55)/2
	.byte	(.L58-.L55)/2
	.byte	(.L59-.L55)/2
	.byte	(.L60-.L55)/2
	.align	1
.L58:
	movs	r1, #3
	b	jpeg_set_colorspace(PLT)
.L60:
	movs	r1, #5
	b	jpeg_set_colorspace(PLT)
.L59:
	movs	r1, #4
	b	jpeg_set_colorspace(PLT)
.L54:
	movs	r1, #0
	b	jpeg_set_colorspace(PLT)
.L56:
	movs	r1, #1
	b	jpeg_set_colorspace(PLT)
.L53:
	ldr	r3, [r0]
	movs	r2, #9
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
	.size	jpeg_default_colorspace, .-jpeg_default_colorspace
	.section	.text.jpeg_set_defaults,"ax",%progbits
	.align	2
	.global	jpeg_set_defaults
	.thumb
	.thumb_func
	.type	jpeg_set_defaults, %function
jpeg_set_defaults:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cmp	r3, #100
	beq	.L62
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L62:
	ldr	r1, [r4, #68]
	cmp	r1, #0
	beq	.L77
.L63:
	movs	r3, #8
	mov	r0, r4
	str	r3, [r4, #56]
	movs	r1, #75
	movs	r2, #1
	bl	jpeg_set_quality(PLT)
	ldr	r6, [r4, #88]
	cmp	r6, #0
	beq	.L78
.L64:
	ldr	r3, .L82
.LPIC18:
	add	r3, pc
	mov	r5, r3
	vldr	d16, [r3, #8]
	ldmia	r5!, {r0, r1, r2, r3}
	vmovl.u8 q8, d16
	vmovl.u16 q9, d16
	str	r2, [r6, #8]	@ unaligned
	vmovl.u16 q8, d17
	ldrb	r5, [r5]	@ zero_extendqisi2
	vadd.i32	d18, d19, d18
	str	r3, [r6, #12]	@ unaligned
	vadd.i32	d18, d18, d16
	strb	r5, [r6, #16]
	vadd.i32	d16, d18, d17
	str	r0, [r6]	@ unaligned
	str	r1, [r6, #4]	@ unaligned
	vpadd.i32	d16, d16, d16
	vmov.32	r2, d16[0]
	add	r3, r2, #9
	add	r5, r2, #10
	cmp	r3, #255
	bls	.L65
	ldr	r3, [r4]
	movs	r2, #8
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L65:
	ldr	r0, [r4, #88]
	mov	r2, r5
	ldr	r1, .L82+4
	adds	r0, r0, #17
.LPIC20:
	add	r1, pc
	bl	memcpy(PLT)
	ldr	r6, [r4, #104]
	movs	r2, #0
	ldr	r3, [r4, #88]
	str	r2, [r3, #276]
	cmp	r6, #0
	beq	.L79
.L66:
	ldr	r3, .L82+8
.LPIC21:
	add	r3, pc
	mov	r5, r3
	vldr	d16, [r3, #8]
	ldmia	r5!, {r0, r1, r2, r3}
	vmovl.u8 q8, d16
	vmovl.u16 q9, d16
	str	r2, [r6, #8]	@ unaligned
	vmovl.u16 q8, d17
	ldrb	r5, [r5]	@ zero_extendqisi2
	vadd.i32	d18, d19, d18
	str	r3, [r6, #12]	@ unaligned
	vadd.i32	d18, d18, d16
	strb	r5, [r6, #16]
	vadd.i32	d16, d18, d17
	str	r0, [r6]	@ unaligned
	str	r1, [r6, #4]	@ unaligned
	vpadd.i32	d16, d16, d16
	vmov.32	r2, d16[0]
	add	r3, r2, #139
	add	r5, r2, #140
	cmp	r3, #255
	bls	.L67
	ldr	r3, [r4]
	movs	r2, #8
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L67:
	ldr	r0, [r4, #104]
	mov	r2, r5
	ldr	r1, .L82+12
	adds	r0, r0, #17
.LPIC23:
	add	r1, pc
	bl	memcpy(PLT)
	ldr	r6, [r4, #92]
	movs	r2, #0
	ldr	r3, [r4, #104]
	str	r2, [r3, #276]
	cmp	r6, #0
	beq	.L80
.L68:
	ldr	r3, .L82+16
.LPIC24:
	add	r3, pc
	mov	r5, r3
	vldr	d16, [r3, #8]
	ldmia	r5!, {r0, r1, r2, r3}
	vmovl.u8 q8, d16
	vmovl.u16 q9, d16
	str	r2, [r6, #8]	@ unaligned
	vmovl.u16 q8, d17
	ldrb	r5, [r5]	@ zero_extendqisi2
	vadd.i32	d18, d19, d18
	str	r3, [r6, #12]	@ unaligned
	vadd.i32	d18, d18, d16
	strb	r5, [r6, #16]
	vadd.i32	d16, d18, d17
	str	r0, [r6]	@ unaligned
	str	r1, [r6, #4]	@ unaligned
	vpadd.i32	d16, d16, d16
	vmov.32	r2, d16[0]
	adds	r3, r2, #7
	add	r5, r2, #8
	cmp	r3, #255
	bls	.L69
	ldr	r3, [r4]
	movs	r2, #8
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L69:
	ldr	r0, [r4, #92]
	mov	r2, r5
	ldr	r1, .L82+20
	adds	r0, r0, #17
.LPIC26:
	add	r1, pc
	bl	memcpy(PLT)
	ldr	r6, [r4, #108]
	movs	r2, #0
	ldr	r3, [r4, #92]
	str	r2, [r3, #276]
	cmp	r6, #0
	beq	.L81
.L70:
	ldr	r3, .L82+24
.LPIC27:
	add	r3, pc
	mov	r5, r3
	vldr	d16, [r3, #8]
	ldmia	r5!, {r0, r1, r2, r3}
	vmovl.u8 q8, d16
	vmovl.u16 q9, d16
	str	r2, [r6, #8]	@ unaligned
	vmovl.u16 q8, d17
	ldrb	r5, [r5]	@ zero_extendqisi2
	vadd.i32	d18, d18, d19
	str	r3, [r6, #12]	@ unaligned
	vadd.i32	d18, d18, d16
	strb	r5, [r6, #16]
	vadd.i32	d16, d18, d17
	str	r0, [r6]	@ unaligned
	str	r1, [r6, #4]	@ unaligned
	vpadd.i32	d16, d16, d16
	vmov.32	r2, d16[0]
	add	r3, r2, #134
	add	r5, r2, #135
	cmp	r3, #255
	bls	.L71
	ldr	r3, [r4]
	movs	r2, #8
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L71:
	ldr	r0, [r4, #108]
	mov	r2, r5
	ldr	r1, .L82+28
	movs	r5, #0
	adds	r0, r0, #17
.LPIC29:
	add	r1, pc
	bl	memcpy(PLT)
	ldr	r3, [r4, #108]
	mov	r1, r5
	add	r0, r4, #120
	movs	r2, #16
	str	r5, [r3, #276]
	bl	memset(PLT)
	add	r0, r4, #136
	movs	r1, #1
	movs	r2, #16
	bl	memset(PLT)
	add	r0, r4, #152
	movs	r2, #16
	movs	r1, #5
	bl	memset(PLT)
	ldr	r3, [r4, #56]
	movs	r2, #1
	str	r5, [r4, #184]
	mov	r0, r4
	str	r5, [r4, #172]
	cmp	r3, #8
	str	r5, [r4, #168]
	it	gt
	movgt	r3, #1
	str	r5, [r4, #176]
	it	gt
	strgt	r3, [r4, #184]
	movs	r3, #0
	str	r5, [r4, #180]
	str	r3, [r4, #188]
	str	r3, [r4, #192]
	str	r3, [r4, #196]
	str	r3, [r4, #200]
	str	r3, [r4, #204]
	strb	r3, [r4, #214]
	strb	r2, [r4, #212]
	strb	r2, [r4, #213]
	strh	r2, [r4, #216]	@ movhi
	strh	r2, [r4, #218]	@ movhi
	pop	{r4, r5, r6, lr}
	b	jpeg_default_colorspace(PLT)
.L81:
	mov	r0, r4
	bl	jpeg_alloc_huff_table(PLT)
	mov	r6, r0
	str	r0, [r4, #108]
	b	.L70
.L77:
	ldr	r3, [r4, #4]
	mov	r0, r4
	mov	r2, #840
	ldr	r3, [r3]
	blx	r3
	str	r0, [r4, #68]
	b	.L63
.L78:
	mov	r0, r4
	bl	jpeg_alloc_huff_table(PLT)
	mov	r6, r0
	str	r0, [r4, #88]
	b	.L64
.L79:
	mov	r0, r4
	bl	jpeg_alloc_huff_table(PLT)
	mov	r6, r0
	str	r0, [r4, #104]
	b	.L66
.L80:
	mov	r0, r4
	bl	jpeg_alloc_huff_table(PLT)
	mov	r6, r0
	str	r0, [r4, #92]
	b	.L68
.L83:
	.align	2
.L82:
	.word	.LANCHOR2-(.LPIC18+4)
	.word	.LANCHOR3-(.LPIC20+4)
	.word	.LANCHOR4-(.LPIC21+4)
	.word	.LANCHOR5-(.LPIC23+4)
	.word	.LANCHOR6-(.LPIC24+4)
	.word	.LANCHOR7-(.LPIC26+4)
	.word	.LANCHOR8-(.LPIC27+4)
	.word	.LANCHOR9-(.LPIC29+4)
	.size	jpeg_set_defaults, .-jpeg_set_defaults
	.section	.text.jpeg_simple_progression,"ax",%progbits
	.align	2
	.global	jpeg_simple_progression
	.thumb
	.thumb_func
	.type	jpeg_simple_progression, %function
jpeg_simple_progression:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r4, [r0, #60]
	cmp	r3, #100
	beq	.L85
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L85:
	cmp	r4, #3
	beq	.L133
	cmp	r4, #4
	ble	.L88
	add	r6, r4, r4, lsl #1
	lsls	r6, r6, #1
.L87:
	ldr	r3, [r5, #368]
	cbz	r3, .L89
	ldr	r2, [r5, #372]
	cmp	r6, r2
	ble	.L90
.L89:
	movs	r3, #10
	ldr	r1, [r5, #4]
	cmp	r3, r6
	mov	r0, r5
	it	lt
	movlt	r3, r6
	add	r2, r3, r3, lsl #3
	str	r3, [r5, #372]
	ldr	r3, [r1]
	movs	r1, #0
	lsls	r2, r2, #2
	blx	r3
	mov	r3, r0
	str	r0, [r5, #368]
.L90:
	cmp	r4, #3
	str	r3, [r5, #172]
	str	r6, [r5, #168]
	bne	.L91
	ldr	r2, [r5, #64]
	movs	r1, #0
	cmp	r2, #3
	mov	r2, #1
	ittt	ne
	strne	r4, [r3]
	strne	r1, [r3, #4]
	strne	r2, [r3, #8]
	beq	.L134
.L115:
	movs	r2, #2
	cmp	r4, #3
	str	r2, [r3, #12]
	itt	gt
	movgt	r2, #3
	strgt	r2, [r3, #16]
.L97:
	add	r2, r3, #20
	vldr	d16, .L138
	vldr	d17, .L138+8
	adds	r3, r3, #36
	vst1.32	{q8}, [r2]
.L96:
	cmp	r4, #0
	ble	.L100
	movs	r1, #0
	add	r2, r3, #36
	mov	r7, r1
	movs	r0, #1
	movs	r6, #5
	movs	r5, #2
.L102:
	str	r1, [r2, #-32]
	adds	r1, r1, #1
	cmp	r1, r4
	str	r0, [r2, #-36]
	str	r0, [r2, #-16]
	add	r2, r2, #36
	str	r6, [r2, #-48]
	str	r7, [r2, #-44]
	str	r5, [r2, #-40]
	bne	.L102
	add	lr, r4, r4, lsl #3
	movs	r1, #0
	mov	r7, r1
	lsl	lr, lr, #2
	movs	r6, #1
	movs	r5, #6
	add	ip, r3, lr
	movs	r0, #2
	movs	r3, #63
	add	r2, ip, #36
.L104:
	str	r1, [r2, #-32]
	adds	r1, r1, #1
	cmp	r1, r4
	str	r6, [r2, #-36]
	str	r5, [r2, #-16]
	add	r2, r2, #36
	str	r3, [r2, #-48]
	str	r7, [r2, #-44]
	str	r0, [r2, #-40]
	bne	.L104
	add	r3, ip, lr
	movs	r1, #0
	add	r2, r3, #36
	movs	r0, #1
	movs	r7, #63
	movs	r6, #2
.L106:
	str	r1, [r2, #-32]
	adds	r1, r1, #1
	cmp	r1, r4
	str	r0, [r2, #-36]
	str	r0, [r2, #-16]
	mov	r5, #1
	str	r7, [r2, #-12]
	mov	r8, #2
	str	r6, [r2, #-8]
	add	r2, r2, #36
	str	r0, [r2, #-40]
	bne	.L106
	cmp	r4, #4
	add	r3, r3, lr
	ble	.L135
	movs	r1, #0
	add	r2, r3, #36
	mov	r0, r1
.L113:
	str	r1, [r2, #-32]
	adds	r1, r1, #1
	cmp	r1, r4
	str	r5, [r2, #-36]
	str	r0, [r2, #-16]
	add	r2, r2, #36
	str	r0, [r2, #-48]
	str	r5, [r2, #-44]
	str	r0, [r2, #-40]
	bne	.L113
	add	r3, r3, lr
.L109:
	movs	r2, #0
	adds	r3, r3, #36
	mov	r5, r2
	movs	r1, #1
	movs	r0, #63
.L114:
	str	r2, [r3, #-32]
	adds	r2, r2, #1
	cmp	r2, r4
	str	r1, [r3, #-36]
	str	r1, [r3, #-16]
	stmdb	r3, {r0, r1, r5}
	add	r3, r3, #36
	bne	.L114
	pop	{r4, r5, r6, r7, r8, pc}
.L133:
	ldr	r3, [r5, #64]
	cmp	r3, #3
	beq	.L136
.L88:
	lsls	r6, r4, #2
	adds	r6, r6, #2
	b	.L87
.L91:
	cmp	r4, #4
	itttt	gt
	movgt	r1, #0
	addgt	r2, r3, #36
	movgt	r0, r1
	movgt	r5, #1
	ble	.L137
.L99:
	str	r1, [r2, #-32]
	adds	r1, r1, #1
	cmp	r1, r4
	str	r5, [r2, #-36]
	str	r0, [r2, #-16]
	str	r0, [r2, #-12]
	stmdb	r2, {r0, r5}
	add	r2, r2, #36
	bne	.L99
	add	r2, r4, r4, lsl #3
	add	r3, r3, r2, lsl #2
	b	.L96
.L135:
	cmp	r4, #1
	mov	r2, #0
	str	r4, [ip, lr, lsl #1]
	str	r2, [r3, #4]
	ble	.L111
	cmp	r4, #2
	str	r5, [r3, #8]
	ble	.L111
	cmp	r4, #3
	str	r8, [r3, #12]
	ble	.L111
	movs	r2, #3
	str	r2, [r3, #16]
.L111:
	add	r2, r3, #20
	vldr	d16, .L138+16
	vldr	d17, .L138+24
	cmp	r4, #0
	add	r3, r3, #36
	vst1.32	{q8}, [r2]
	bgt	.L109
	pop	{r4, r5, r6, r7, r8, pc}
.L136:
	movs	r6, #10
	b	.L87
.L100:
	str	r4, [r3]
	b	.L111
.L137:
	cmp	r4, #0
	str	r4, [r3]
	ble	.L97
	cmp	r4, #1
	mov	r2, #0
	str	r2, [r3, #4]
	ble	.L97
	cmp	r4, #2
	mov	r2, #1
	str	r2, [r3, #8]
	ble	.L97
	b	.L115
.L134:
	movs	r5, #2
	movs	r0, #63
	movs	r7, #5
	movs	r6, #6
	str	r4, [r3]
	str	r1, [r3, #4]
	str	r1, [r3, #24]
	str	r1, [r3, #20]
	str	r1, [r3, #28]
	str	r1, [r3, #40]
	str	r1, [r3, #64]
	str	r1, [r3, #100]
	str	r1, [r3, #136]
	str	r1, [r3, #148]
	str	r1, [r3, #172]
	str	r2, [r3, #8]
	str	r2, [r3, #32]
	str	r2, [r3, #36]
	str	r2, [r3, #56]
	str	r2, [r3, #72]
	str	r2, [r3, #92]
	str	r2, [r3, #104]
	str	r2, [r3, #108]
	str	r2, [r3, #112]
	str	r2, [r3, #128]
	str	r2, [r3, #140]
	str	r2, [r3, #144]
	str	r2, [r3, #180]
	str	r5, [r3, #12]
	str	r5, [r3, #68]
	str	r5, [r3, #76]
	str	r5, [r3, #176]
	str	r7, [r3, #60]
	str	r0, [r3, #96]
	str	r0, [r3, #132]
	str	r0, [r3, #168]
	str	r6, [r3, #164]
	str	r1, [r3, #184]
	str	r2, [r3, #200]
	str	r0, [r3, #204]
	str	r5, [r3, #208]
	str	r2, [r3, #212]
	str	r1, [r3, #220]
	str	r2, [r3, #224]
	str	r5, [r3, #228]
	str	r1, [r3, #240]
	str	r1, [r3, #236]
	str	r2, [r3, #244]
	str	r1, [r3, #248]
	str	r2, [r3, #252]
	str	r5, [r3, #256]
	str	r2, [r3, #272]
	str	r0, [r3, #276]
	str	r2, [r3, #280]
	str	r1, [r3, #284]
	str	r2, [r3, #288]
	str	r2, [r3, #292]
	str	r2, [r3, #308]
	str	r0, [r3, #312]
	str	r2, [r3, #316]
	str	r1, [r3, #320]
	str	r2, [r3, #324]
	str	r1, [r3, #328]
	str	r2, [r3, #344]
	str	r0, [r3, #348]
	str	r2, [r3, #352]
	str	r1, [r3, #356]
	str	r4, [r3, #216]
	pop	{r4, r5, r6, r7, r8, pc}
.L139:
	.align	3
.L138:
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	0
	.word	1
	.word	0
	.size	jpeg_simple_progression, .-jpeg_simple_progression
	.section	.rodata.val_ac_luminance.7487,"a",%progbits
	.align	3
.LANCHOR5 = . + 0
	.type	val_ac_luminance.7487, %object
	.size	val_ac_luminance.7487, 162
val_ac_luminance.7487:
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	4
	.byte	17
	.byte	5
	.byte	18
	.byte	33
	.byte	49
	.byte	65
	.byte	6
	.byte	19
	.byte	81
	.byte	97
	.byte	7
	.byte	34
	.byte	113
	.byte	20
	.byte	50
	.byte	-127
	.byte	-111
	.byte	-95
	.byte	8
	.byte	35
	.byte	66
	.byte	-79
	.byte	-63
	.byte	21
	.byte	82
	.byte	-47
	.byte	-16
	.byte	36
	.byte	51
	.byte	98
	.byte	114
	.byte	-126
	.byte	9
	.byte	10
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.section	.rodata.val_dc_luminance.7483,"a",%progbits
	.align	3
.LANCHOR3 = . + 0
	.type	val_dc_luminance.7483, %object
	.size	val_dc_luminance.7483, 12
val_dc_luminance.7483:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.section	.rodata.bits_ac_luminance.7486,"a",%progbits
	.align	3
.LANCHOR4 = . + 0
	.type	bits_ac_luminance.7486, %object
	.size	bits_ac_luminance.7486, 17
bits_ac_luminance.7486:
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	3
	.byte	3
	.byte	2
	.byte	4
	.byte	3
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	125
	.section	.rodata.bits_dc_luminance.7482,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	bits_dc_luminance.7482, %object
	.size	bits_dc_luminance.7482, 17
bits_dc_luminance.7482:
	.byte	0
	.byte	0
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.val_ac_chrominance.7489,"a",%progbits
	.align	3
.LANCHOR9 = . + 0
	.type	val_ac_chrominance.7489, %object
	.size	val_ac_chrominance.7489, 162
val_ac_chrominance.7489:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	17
	.byte	4
	.byte	5
	.byte	33
	.byte	49
	.byte	6
	.byte	18
	.byte	65
	.byte	81
	.byte	7
	.byte	97
	.byte	113
	.byte	19
	.byte	34
	.byte	50
	.byte	-127
	.byte	8
	.byte	20
	.byte	66
	.byte	-111
	.byte	-95
	.byte	-79
	.byte	-63
	.byte	9
	.byte	35
	.byte	51
	.byte	82
	.byte	-16
	.byte	21
	.byte	98
	.byte	114
	.byte	-47
	.byte	10
	.byte	22
	.byte	36
	.byte	52
	.byte	-31
	.byte	37
	.byte	-15
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	-126
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.section	.rodata.std_chrominance_quant_tbl.7459,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	std_chrominance_quant_tbl.7459, %object
	.size	std_chrominance_quant_tbl.7459, 256
std_chrominance_quant_tbl.7459:
	.word	17
	.word	18
	.word	24
	.word	47
	.word	99
	.word	99
	.word	99
	.word	99
	.word	18
	.word	21
	.word	26
	.word	66
	.word	99
	.word	99
	.word	99
	.word	99
	.word	24
	.word	26
	.word	56
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	47
	.word	66
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.section	.rodata.std_luminance_quant_tbl.7458,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	std_luminance_quant_tbl.7458, %object
	.size	std_luminance_quant_tbl.7458, 256
std_luminance_quant_tbl.7458:
	.word	16
	.word	11
	.word	10
	.word	16
	.word	24
	.word	40
	.word	51
	.word	61
	.word	12
	.word	12
	.word	14
	.word	19
	.word	26
	.word	58
	.word	60
	.word	55
	.word	14
	.word	13
	.word	16
	.word	24
	.word	40
	.word	57
	.word	69
	.word	56
	.word	14
	.word	17
	.word	22
	.word	29
	.word	51
	.word	87
	.word	80
	.word	62
	.word	18
	.word	22
	.word	37
	.word	56
	.word	68
	.word	109
	.word	103
	.word	77
	.word	24
	.word	35
	.word	55
	.word	64
	.word	81
	.word	104
	.word	113
	.word	92
	.word	49
	.word	64
	.word	78
	.word	87
	.word	103
	.word	121
	.word	120
	.word	101
	.word	72
	.word	92
	.word	95
	.word	98
	.word	112
	.word	100
	.word	103
	.word	99
	.section	.rodata.bits_ac_chrominance.7488,"a",%progbits
	.align	3
.LANCHOR8 = . + 0
	.type	bits_ac_chrominance.7488, %object
	.size	bits_ac_chrominance.7488, 17
bits_ac_chrominance.7488:
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	4
	.byte	4
	.byte	3
	.byte	4
	.byte	7
	.byte	5
	.byte	4
	.byte	4
	.byte	0
	.byte	1
	.byte	2
	.byte	119
	.section	.rodata.bits_dc_chrominance.7484,"a",%progbits
	.align	3
.LANCHOR6 = . + 0
	.type	bits_dc_chrominance.7484, %object
	.size	bits_dc_chrominance.7484, 17
bits_dc_chrominance.7484:
	.byte	0
	.byte	0
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.section	.rodata.val_dc_chrominance.7485,"a",%progbits
	.align	3
.LANCHOR7 = . + 0
	.type	val_dc_chrominance.7485, %object
	.size	val_dc_chrominance.7485, 12
val_dc_chrominance.7485:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
