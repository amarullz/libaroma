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
	.file	"jquant1.c"
	.global	__aeabi_idiv
	.section	.text.create_colorindex,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	create_colorindex, %function
create_colorindex:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #96]
	ldr	r1, [r0, #472]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	cmp	r3, #1
	ldr	r4, [r0, #4]
	it	ne
	movne	r3, #0
	mov	r10, r0
	str	r1, [sp, #4]
	ittt	eq
	moveq	r1, #510
	streq	r1, [sp, #8]
	movweq	r2, #766
	ldr	r1, [sp, #4]
	itt	ne
	movne	r2, #256
	strne	r3, [sp, #8]
	ldr	r4, [r4, #8]
	str	r3, [r1, #28]
	movs	r1, #1
	ldr	r3, [r10, #128]
	blx	r4
	ldr	r2, [sp, #4]
	mov	r6, r0
	ldr	r3, [r10, #128]
	str	r0, [r2, #24]
	ldr	r2, [r2, #20]
	cmp	r3, #0
	str	r2, [sp, #12]
	ble	.L1
	movs	r3, #0
	str	r10, [sp, #20]
	str	r3, [sp]
	str	r3, [sp, #16]
	ldr	r3, [sp, #4]
.L16:
	ldr	r2, [sp]
	ldr	r0, [sp, #12]
	add	r3, r3, r2
	ldr	r4, [r3, #32]
	mov	r1, r4
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #8]
	str	r0, [sp, #12]
	cbz	r3, .L5
	ldr	r2, [sp]
	ldr	r3, [r6, r2]
	adds	r3, r3, #255
	str	r3, [r6, r2]
	ldr	r3, [sp, #4]
	ldr	r6, [r3, #24]
.L5:
	add	r8, r4, #-1
	ldr	r3, [sp, #12]
	lsl	r5, r8, #1
	ldr	r2, [sp]
	add	r0, r4, #254
	mov	r1, r5
	movs	r4, #0
	ldr	r6, [r6, r2]
	mov	fp, r4
	uxtb	r7, r3
	bl	__aeabi_idiv(PLT)
.L6:
	cmp	r0, r4
	bge	.L9
	add	r9, fp, #1
	rsb	r10, r9, r9, lsl #8
	add	r10, r8, r10, lsl #1
	add	r10, r10, #255
.L10:
	mov	r0, r10
	mov	r1, r5
	bl	__aeabi_idiv(PLT)
	cmp	r0, r4
	mov	fp, r9
	add	r10, r10, #510
	add	r9, r9, #1
	blt	.L10
.L9:
	smulbb	r3, fp, r7
	strb	r3, [r6, r4]
	adds	r4, r4, #1
	cmp	r4, #256
	bne	.L6
	ldr	r1, [sp, #8]
	cbz	r1, .L14
	mov	r3, r6
	add	r2, r6, #255
	sub	r0, r6, #255
.L15:
	ldrb	r1, [r6]	@ zero_extendqisi2
	strb	r1, [r3, #-1]!
	cmp	r3, r0
	ldrb	r1, [r6, #255]	@ zero_extendqisi2
	strb	r1, [r2, #1]!
	bne	.L15
.L14:
	ldr	r2, [sp, #20]
	ldr	r3, [r2, #128]
	ldr	r2, [sp, #16]
	adds	r2, r2, #1
	str	r2, [sp, #16]
	ldr	r2, [sp]
	adds	r2, r2, #4
	str	r2, [sp]
	ldr	r2, [sp, #16]
	cmp	r3, r2
	ble	.L1
	ldr	r3, [sp, #4]
	ldr	r6, [r3, #24]
	b	.L16
.L1:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	create_colorindex, .-create_colorindex
	.section	.text.color_quantize,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	color_quantize, %function
color_quantize:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	str	r1, [sp, #28]
	cmp	r3, #0
	ldr	r1, [r0, #472]
	str	r2, [sp, #32]
	ldr	r2, [r0, #120]
	ldr	r1, [r1, #24]
	ldr	r4, [r0, #128]
	str	r2, [sp, #24]
	str	r1, [sp, #12]
	str	r3, [sp, #36]
	ble	.L21
	sub	r3, r4, #9
	movs	r5, #0
	bic	r3, r3, #7
	str	r5, [sp, #16]
	add	ip, r3, #8
	str	r5, [sp, #20]
.L33:
	ldr	r5, [sp, #28]
	ldr	r2, [sp, #16]
	ldr	r7, [r5, r2]
	ldr	r5, [sp, #32]
	ldr	r2, [r5, r2]
	str	r2, [sp, #8]
	ldr	r2, [sp, #24]
	cmp	r2, #0
	beq	.L23
	mov	lr, r2
.L24:
	cmp	r4, #0
	ble	.L34
	cmp	r4, #8
	mov	r1, #0
	itt	le
	movle	r0, r7
	movle	r8, r1
	ble	.L29
	ldr	r3, [sp, #12]
	add	r2, r7, #8
	mov	r8, r1
	add	r6, r7, #19
	str	r4, [sp, #4]
	adds	r3, r3, #76
.L25:
	ldrb	r9, [r2, #-8]	@ zero_extendqisi2
	mov	r0, r2
	ldr	r5, [r3, #-76]
	adds	r2, r2, #8
	ldrb	r10, [r2, #-15]	@ zero_extendqisi2
	ldr	r4, [r3, #-68]
	ldrb	fp, [r5, r9]	@ zero_extendqisi2
	ldr	r5, [r3, #-72]
	ldrb	r9, [r2, #-14]	@ zero_extendqisi2
	add	fp, fp, r8
	ldrb	r8, [r2, #-13]	@ zero_extendqisi2
	ldrb	r10, [r5, r10]	@ zero_extendqisi2
	pld	[r6, r1]
	adds	r1, r1, #8
	cmp	r1, ip
	pld	[r3]
	add	fp, fp, r10
	ldrb	r10, [r4, r9]	@ zero_extendqisi2
	ldr	r4, [r3, #-64]
	add	r3, r3, #32
	ldrb	r9, [r2, #-12]	@ zero_extendqisi2
	add	r10, r10, fp
	ldrb	fp, [r2, #-11]	@ zero_extendqisi2
	ldrb	r5, [r4, r8]	@ zero_extendqisi2
	ldr	r4, [r3, #-92]
	add	r10, r10, r5
	ldr	r5, [r3, #-88]
	ldrb	r8, [r4, r9]	@ zero_extendqisi2
	ldrb	r9, [r2, #-10]	@ zero_extendqisi2
	ldr	r4, [r3, #-84]
	ldrb	fp, [r5, fp]	@ zero_extendqisi2
	add	r8, r8, r10
	ldr	r5, [r3, #-80]
	ldrb	r10, [r2, #-9]	@ zero_extendqisi2
	ldrb	r9, [r4, r9]	@ zero_extendqisi2
	add	r8, r8, fp
	ldrb	r5, [r5, r10]	@ zero_extendqisi2
	add	r8, r8, r9
	add	r8, r8, r5
	bne	.L25
	ldr	r4, [sp, #4]
.L29:
	ldr	r5, [sp, #12]
	add	r2, r1, #1073741824
	subs	r2, r2, #1
	mov	r3, r0
	mov	r9, r1
	add	r2, r5, r2, lsl #2
.L27:
	ldrb	r6, [r3], #1	@ zero_extendqisi2
	ldr	r1, [r2, #4]!
	add	r5, r3, r9
	ldrb	r6, [r1, r6]	@ zero_extendqisi2
	subs	r5, r5, r0
	cmp	r4, r5
	add	r8, r8, r6
	bgt	.L27
	uxtb	r8, r8
	add	r7, r7, r4
.L30:
	ldr	r5, [sp, #8]
	subs	lr, lr, #1
	strb	r8, [r5], #1
	str	r5, [sp, #8]
	bne	.L24
.L23:
	ldr	r2, [sp, #20]
	ldr	r5, [sp, #36]
	ldr	r3, [sp, #16]
	adds	r2, r2, #1
	cmp	r2, r5
	str	r2, [sp, #20]
	add	r3, r3, #4
	str	r3, [sp, #16]
	bne	.L33
.L21:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L34:
	mov	r8, #0
	b	.L30
	.size	color_quantize, .-color_quantize
	.section	.text.color_quantize3,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	color_quantize3, %function
color_quantize3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r2
	ldr	r4, [r0, #472]
	cmp	r3, #0
	ldr	r2, [r0, #120]
	ldr	r0, [r4, #24]
	ldmia	r0, {r7, lr}
	ldr	ip, [r0, #8]
	ble	.L46
	lsl	r10, r3, #2
	mov	r8, #0
.L53:
	ldr	r0, [r9, r8]
	ldr	r3, [r1, r8]
	adds	r6, r0, r2
	cbz	r2, .L51
.L52:
	ldrb	r4, [r3]	@ zero_extendqisi2
	adds	r3, r3, #3
	ldrb	fp, [r3, #-2]	@ zero_extendqisi2
	ldrb	r5, [r3, #-1]	@ zero_extendqisi2
	ldrb	r4, [r7, r4]	@ zero_extendqisi2
	ldrb	fp, [lr, fp]	@ zero_extendqisi2
	ldrb	r5, [ip, r5]	@ zero_extendqisi2
	add	r4, r4, fp
	add	r4, r4, r5
	strb	r4, [r0], #1
	cmp	r0, r6
	bne	.L52
.L51:
	add	r8, r8, #4
	cmp	r8, r10
	bne	.L53
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L46:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	color_quantize3, .-color_quantize3
	.section	.text.quantize3_ord_dither,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	quantize3_ord_dither, %function
quantize3_ord_dither:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	str	r1, [sp, #32]
	cmp	r3, #0
	ldr	r1, [r0, #472]
	str	r2, [sp, #36]
	ldr	r0, [r0, #120]
	ldr	r2, [r1, #24]
	str	r1, [sp, #16]
	str	r0, [sp, #24]
	ldr	r4, [r2]
	ldr	r0, [r2, #4]
	ldr	r10, [r2, #8]
	str	r4, [sp, #4]
	str	r0, [sp, #8]
	ble	.L56
	ldr	r1, [r1, #48]
	lsls	r3, r3, #2
	movs	r2, #0
	str	r3, [sp, #28]
	mov	r0, r1
	str	r1, [sp, #20]
	str	r2, [sp, #12]
.L63:
	ldr	r4, [sp, #16]
	lsl	r9, r0, #6
	ldr	r0, [sp, #32]
	ldr	r2, [r4, #52]
	ldr	r1, [r4, #56]
	ldr	r3, [r4, #60]
	ldr	r4, [sp, #12]
	add	ip, r2, r9
	add	r8, r1, r9
	add	r9, r9, r3
	movs	r3, #0
	ldr	r2, [r0, r4]
	ldr	r0, [sp, #36]
	ldr	r1, [r0, r4]
	ldr	r4, [sp, #24]
	mov	fp, r4
	add	fp, fp, r1
	cbz	r4, .L61
.L62:
	ldrb	lr, [r2]	@ zero_extendqisi2
	adds	r6, r3, #1
	ldr	r0, [sp, #4]
	adds	r2, r2, #3
	ldrb	r5, [r2, #-2]	@ zero_extendqisi2
	ldr	r7, [ip, r3, lsl #2]
	ldr	r4, [r8, r3, lsl #2]
	add	lr, lr, r0
	ldr	r0, [r9, r3, lsl #2]
	ldr	r3, [sp, #8]
	ldrb	r7, [lr, r7]	@ zero_extendqisi2
	add	r5, r5, r3
	and	r3, r6, #15
	ldrb	r6, [r2, #-1]	@ zero_extendqisi2
	ldrb	r4, [r5, r4]	@ zero_extendqisi2
	add	r6, r6, r10
	ldrb	r0, [r6, r0]	@ zero_extendqisi2
	add	r7, r7, r4
	add	r7, r7, r0
	strb	r7, [r1], #1
	cmp	r1, fp
	bne	.L62
.L61:
	ldr	r0, [sp, #12]
	ldr	r3, [sp, #20]
	ldr	r2, [sp, #28]
	adds	r0, r0, #4
	ldr	r1, [sp, #16]
	adds	r3, r3, #1
	str	r0, [sp, #12]
	cmp	r0, r2
	and	r3, r3, #15
	str	r3, [r1, #48]
	beq	.L56
	str	r3, [sp, #20]
	mov	r0, r3
	b	.L63
.L56:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	quantize3_ord_dither, .-quantize3_ord_dither
	.section	.text.finish_pass_1_quant,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	finish_pass_1_quant, %function
finish_pass_1_quant:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	finish_pass_1_quant, .-finish_pass_1_quant
	.section	.text.new_color_map_1_quant,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	new_color_map_1_quant, %function
new_color_map_1_quant:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0]
	movs	r2, #46
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
	.size	new_color_map_1_quant, .-new_color_map_1_quant
	.section	.text.start_pass_1_quant,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_1_quant, %function
start_pass_1_quant:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r5, [r0, #472]
	sub	sp, sp, #12
	ldr	r3, [r0, #96]
	ldr	r1, [r5, #16]
	ldr	r2, [r5, #20]
	cmp	r3, #1
	str	r1, [r0, #144]
	str	r2, [r0, #140]
	beq	.L70
	bcc	.L71
	cmp	r3, #2
	bne	.L105
	ldr	r2, .L108
	movs	r1, #0
	ldr	r3, [r5, #68]
	str	r1, [r5, #84]
.LPIC21:
	add	r2, pc
	str	r2, [r5, #4]
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r0, #128]
.L85:
	ldr	r7, [r4, #120]
	cmp	r3, #0
	add	r7, r7, #2
	lsl	r7, r7, #1
	ble	.L68
	movs	r6, #0
.L87:
	ldr	r0, [r5, #68]
	mov	r1, r7
	bl	jzero_far(PLT)
	ldr	r3, [r4, #128]
	adds	r6, r6, #1
	adds	r5, r5, #4
	cmp	r3, r6
	bgt	.L87
.L68:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L105:
	ldr	r3, [r0]
	movs	r2, #48
	str	r2, [r3, #20]
	ldr	r3, [r3]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	r3	@ indirect register sibling call
.L71:
	ldr	r3, [r0, #128]
	cmp	r3, #3
	beq	.L106
	ldr	r3, .L108+4
.LPIC19:
	add	r3, pc
	str	r3, [r5, #4]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L70:
	ldr	r3, [r0, #128]
	ldr	r1, .L108+8
	cmp	r3, #3
.LPIC16:
	add	r1, pc
	beq	.L75
	ldr	r1, .L108+12
.LPIC17:
	add	r1, pc
.L75:
	ldr	r3, [r5, #28]
	movs	r2, #0
	str	r1, [r5, #4]
	str	r2, [r5, #48]
	cmp	r3, #0
	beq	.L107
.L76:
	ldr	r3, [r5, #52]
	cmp	r3, #0
	bne	.L68
	ldr	r2, [r4, #128]
	ldr	r10, [r4, #472]
	cmp	r2, #0
	ble	.L68
	ldr	r2, .L108+16
	mov	r8, r3
	mov	r9, r10
.LPIC20:
	add	r2, pc
	str	r2, [sp, #4]
.L83:
	ldr	r5, [r9, #32]
	cmp	r8, #0
	beq	.L79
	ldr	r3, [r10, #32]
	cmp	r5, r3
	beq	.L89
	cmp	r8, #1
	beq	.L79
	ldr	r3, [r10, #36]
	cmp	r5, r3
	beq	.L90
	cmp	r8, #2
	beq	.L79
	ldr	r3, [r10, #40]
	cmp	r5, r3
	it	eq
	moveq	r3, #2
	beq	.L80
.L79:
	ldr	r3, [r4, #4]
	subs	r7, r5, #1
	mov	r0, r4
	movs	r1, #1
	mov	r2, #1024
	lsls	r7, r7, #9
	ldr	r3, [r3]
	mov	fp, #0
	ldr	r6, [sp, #4]
	blx	r3
	mov	r5, r0
	str	r0, [sp]
.L82:
	ldrb	r3, [r6]	@ zero_extendqisi2
	mov	r1, r7
	add	fp, fp, #1
	adds	r6, r6, #16
	adds	r5, r5, #64
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-64]
	mov	r1, r7
	ldrb	r3, [r6, #-15]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-60]
	mov	r1, r7
	ldrb	r3, [r6, #-14]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-56]
	mov	r1, r7
	ldrb	r3, [r6, #-13]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-52]
	mov	r1, r7
	ldrb	r3, [r6, #-12]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-48]
	mov	r1, r7
	ldrb	r3, [r6, #-11]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-44]
	mov	r1, r7
	ldrb	r3, [r6, #-10]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-40]
	mov	r1, r7
	ldrb	r3, [r6, #-9]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-36]
	mov	r1, r7
	ldrb	r3, [r6, #-8]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-32]
	mov	r1, r7
	ldrb	r3, [r6, #-7]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-28]
	mov	r1, r7
	ldrb	r3, [r6, #-6]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-24]
	mov	r1, r7
	ldrb	r3, [r6, #-5]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-20]
	mov	r1, r7
	ldrb	r3, [r6, #-4]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-16]
	mov	r1, r7
	ldrb	r3, [r6, #-3]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-12]
	mov	r1, r7
	ldrb	r3, [r6, #-2]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	str	r0, [r5, #-8]
	mov	r1, r7
	ldrb	r3, [r6, #-1]	@ zero_extendqisi2
	sub	r3, r3, r3, lsl #8
	lsls	r0, r3, #1
	add	r0, r0, #65024
	adds	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	cmp	fp, #16
	str	r0, [r5, #-4]
	bne	.L82
.L81:
	ldr	r3, [sp]
	add	r8, r8, #1
	add	r9, r9, #4
	str	r3, [r9, #48]
	ldr	r3, [r4, #128]
	cmp	r8, r3
	blt	.L83
	b	.L68
.L107:
	mov	r0, r4
	bl	create_colorindex(PLT)
	b	.L76
.L106:
	ldr	r3, .L108+20
.LPIC18:
	add	r3, pc
	str	r3, [r5, #4]
	b	.L68
.L90:
	movs	r3, #1
.L80:
	add	r3, r10, r3, lsl #2
	ldr	r3, [r3, #52]
	str	r3, [sp]
	cmp	r3, #0
	bne	.L81
	b	.L79
.L84:
	ldr	r2, [r0, #128]
	ldr	r1, [r0, #120]
	cmp	r2, #0
	add	r1, r1, #2
	lsl	r8, r1, #1
	ble	.L68
	mov	r7, r3
	mov	r6, r5
.L86:
	ldr	r3, [r4, #4]
	movs	r1, #1
	mov	r0, r4
	mov	r2, r8
	add	r7, r7, r1
	adds	r6, r6, #4
	ldr	r3, [r3, #4]
	blx	r3
	str	r0, [r6, #64]
	ldr	r3, [r4, #128]
	cmp	r7, r3
	blt	.L86
	b	.L85
.L89:
	movs	r3, #0
	b	.L80
.L109:
	.align	2
.L108:
	.word	quantize_fs_dither-(.LPIC21+4)
	.word	color_quantize-(.LPIC19+4)
	.word	quantize3_ord_dither-(.LPIC16+4)
	.word	quantize_ord_dither-(.LPIC17+4)
	.word	.LANCHOR0-(.LPIC20+4)
	.word	color_quantize3-(.LPIC18+4)
	.size	start_pass_1_quant, .-start_pass_1_quant
	.section	.text.quantize_fs_dither,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	quantize_fs_dither, %function
quantize_fs_dither:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #84
	ldr	r5, [r0, #472]
	cmp	r3, #0
	ldr	r6, [r0, #128]
	str	r5, [sp, #28]
	ldr	r5, [r0, #120]
	ldr	r0, [r0, #336]
	str	r1, [sp, #52]
	str	r6, [sp, #40]
	str	r5, [sp, #36]
	str	r0, [sp, #16]
	str	r3, [sp, #76]
	ble	.L110
	subs	r6, r5, #1
	mov	r3, r5
	ldr	r5, [sp, #40]
	adds	r3, r3, #1
	str	r6, [sp, #56]
	lsls	r3, r3, #1
	str	r2, [sp, #44]
	negs	r2, r5
	str	r3, [sp, #64]
	mul	r6, r6, r5
	str	r2, [sp, #68]
	str	r6, [sp, #60]
	movs	r6, #0
	str	r6, [sp, #72]
.L121:
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #36]
	ldr	r0, [r3], #4
	str	r3, [sp, #44]
	bl	jzero_far(PLT)
	ldr	r5, [sp, #40]
	cmp	r5, #0
	ble	.L126
	ldr	r10, [sp, #28]
	movs	r3, #0
	ldr	r1, [sp, #72]
	str	r3, [sp, #20]
	ldr	r0, [r10, #84]
	str	r10, [sp, #32]
	lsls	r1, r1, #2
	str	r1, [sp, #48]
.L119:
	ldr	r6, [sp, #52]
	ldr	r5, [sp, #48]
	ldr	r10, [sp, #44]
	ldr	r1, [sp, #20]
	ldr	r4, [r6, r5]
	ldr	r2, [r10, #-4]
	add	r4, r4, r1
	cmp	r0, #0
	beq	.L114
	ldr	r5, [sp, #32]
	mvn	lr, #1
	ldr	r10, [sp, #56]
	mov	fp, #-1
	ldr	r6, [sp, #60]
	ldr	r3, [r5, #68]
	add	r2, r2, r10
	ldr	r5, [sp, #64]
	ldr	r10, [sp, #68]
	add	r4, r4, r6
	add	r5, r5, r3
	str	r5, [sp, #24]
.L115:
	ldr	r5, [sp, #28]
	ldr	r6, [sp, #20]
	ldr	r1, [r5, #24]
	ldr	r3, [r5, #16]
	ldr	r5, [sp, #36]
	ldr	r1, [r1, r6, lsl #2]
	ldr	r3, [r3, r6, lsl #2]
	str	r1, [sp, #8]
	str	r3, [sp, #12]
	cmp	r5, #0
	beq	.L122
	ldr	r3, [sp, #24]
	movs	r7, #0
	add	r2, r2, fp
	mov	r8, r7
	mov	r0, r7
	rsb	ip, fp, #0
	str	r10, [sp, #4]
.L118:
	ldr	r1, [sp, #4]
	subs	r5, r5, #1
	ldrsh	r6, [r3, lr]
	add	r9, r3, lr
	ldrb	r10, [r4]	@ zero_extendqisi2
	add	r4, r4, r1
	ldr	r1, [sp, #16]
	add	r0, r0, r6
	ldrb	r6, [r2, ip]	@ zero_extendqisi2
	add	r0, r0, #8
	add	r0, r1, r0, asr #4
	ldrb	r1, [r0, r10]	@ zero_extendqisi2
	ldr	r10, [sp, #8]
	ldrb	r0, [r10, r1]	@ zero_extendqisi2
	add	r6, r6, r0
	strb	r6, [r2, ip]
	add	r2, r2, fp
	ldr	r6, [sp, #12]
	ldrb	r0, [r6, r0]	@ zero_extendqisi2
	sub	r1, r1, r0
	lsl	r0, r1, #1
	add	r6, r1, r0
	add	r7, r7, r6
	add	r6, r6, r0
	strh	r7, [r3]	@ movhi
	add	r0, r0, r6
	add	r7, r8, r6
	mov	r3, r9
	mov	r8, r1
	bne	.L118
	ldr	r3, [sp, #24]
	uxth	r7, r7
	ldr	r2, [sp, #36]
	ldr	r5, [sp, #28]
	mla	r3, r2, lr, r3
	ldr	r0, [r5, #84]
	mov	r10, r3
	str	r3, [sp, #24]
.L116:
	ldr	r6, [sp, #20]
	ldr	r2, [sp, #40]
	ldr	r1, [sp, #32]
	adds	r6, r6, #1
	strh	r7, [r10]	@ movhi
	cmp	r6, r2
	str	r6, [sp, #20]
	add	r1, r1, #4
	str	r1, [sp, #32]
	bne	.L119
.L113:
	ldr	r3, [sp, #72]
	clz	r0, r0
	ldr	r6, [sp, #76]
	lsrs	r0, r0, #5
	ldr	r5, [sp, #28]
	adds	r3, r3, #1
	cmp	r3, r6
	str	r3, [sp, #72]
	str	r0, [r5, #84]
	bne	.L121
.L110:
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L114:
	ldr	r6, [sp, #32]
	mov	lr, #2
	ldr	r10, [sp, #40]
	mov	fp, #1
	ldr	r6, [r6, #68]
	str	r6, [sp, #24]
	b	.L115
.L122:
	mov	r7, r5
	ldr	r10, [sp, #24]
	b	.L116
.L126:
	ldr	r6, [sp, #28]
	ldr	r0, [r6, #84]
	b	.L113
	.size	quantize_fs_dither, .-quantize_fs_dither
	.section	.text.quantize_ord_dither,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	quantize_ord_dither, %function
quantize_ord_dither:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r3, #0
	ldr	r10, [r0, #472]
	sub	sp, sp, #36
	ldr	fp, [r0, #128]
	ldr	r0, [r0, #120]
	str	r1, [sp, #16]
	str	r3, [sp, #28]
	str	r0, [sp, #4]
	ble	.L127
	str	r2, [sp, #8]
	movs	r2, #0
	str	r2, [sp, #20]
.L138:
	ldr	r3, [sp, #8]
	ldr	r1, [sp, #4]
	ldr	r0, [r3], #4
	str	r3, [sp, #8]
	bl	jzero_far(PLT)
	ldr	r0, [r10, #48]
	cmp	fp, #0
	str	r0, [sp, #24]
	ble	.L134
	ldr	r2, [sp, #20]
	lsls	r0, r0, #6
	mov	r8, r10
	mov	ip, #0
	str	r0, [sp, #12]
	lsl	r9, r2, #2
.L137:
	ldr	r3, [sp, #16]
	ldr	r0, [sp, #8]
	ldr	r1, [r10, #24]
	ldr	r2, [r3, r9]
	ldr	r3, [r0, #-4]
	ldr	r0, [sp, #4]
	ldr	r7, [r8, #52]
	add	r2, r2, ip
	ldr	r6, [r1, ip, lsl #2]
	ldr	r1, [sp, #12]
	add	r7, r7, r1
	cbz	r0, .L135
	mov	lr, r0
	movs	r1, #0
	add	lr, lr, r3
.L136:
	ldrb	r5, [r2]	@ zero_extendqisi2
	add	r2, r2, fp
	ldr	r0, [r7, r1, lsl #2]
	adds	r1, r1, #1
	ldrb	r4, [r3]	@ zero_extendqisi2
	and	r1, r1, #15
	add	r5, r5, r6
	ldrb	r0, [r5, r0]	@ zero_extendqisi2
	add	r0, r0, r4
	strb	r0, [r3], #1
	cmp	r3, lr
	bne	.L136
.L135:
	add	ip, ip, #1
	add	r8, r8, #4
	cmp	ip, fp
	bne	.L137
.L134:
	ldr	r3, [sp, #24]
	ldr	r2, [sp, #20]
	adds	r3, r3, #1
	and	r3, r3, #15
	adds	r2, r2, #1
	str	r3, [r10, #48]
	ldr	r3, [sp, #28]
	str	r2, [sp, #20]
	cmp	r2, r3
	bne	.L138
.L127:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	quantize_ord_dither, .-quantize_ord_dither
	.section	.text.jinit_1pass_quantizer,"ax",%progbits
	.align	2
	.global	jinit_1pass_quantizer
	.thumb
	.thumb_func
	.type	jinit_1pass_quantizer, %function
jinit_1pass_quantizer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r1, #1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r2, #88
	mov	r10, r0
	sub	sp, sp, #36
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r10, #128]
	movs	r3, #0
	ldr	r5, .L190
	ldr	r4, .L190+4
	ldr	r1, .L190+8
	cmp	r2, #4
.LPIC22:
	add	r5, pc
	str	r0, [r10, #472]
.LPIC23:
	add	r4, pc
	str	r5, [r0]
.LPIC24:
	add	r1, pc
	str	r4, [r0, #8]
	str	r1, [r0, #12]
	str	r3, [r0, #68]
	str	r3, [r0, #52]
	ble	.L142
	ldr	r3, [r10]
	movs	r2, #4
	movs	r1, #55
	mov	r0, r10
	str	r2, [r3, #24]
	ldr	r2, [r10]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L142:
	ldr	r6, [r10, #104]
	cmp	r6, #256
	ble	.L143
	ldr	r3, [r10]
	mov	r2, #256
	movs	r1, #57
	mov	r0, r10
	str	r2, [r3, #24]
	ldr	r2, [r10]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	ldr	r6, [r10, #104]
.L143:
	ldr	r4, [r10, #472]
	movs	r5, #1
	str	r4, [sp, #12]
	ldr	r7, [sp, #12]
	ldr	r4, [r10, #128]
	adds	r7, r7, #32
.L147:
	cmp	r4, #1
	add	r1, r5, #1
	mov	r2, r1
	ble	.L144
	movs	r3, #1
.L145:
	adds	r3, r3, #1
	mul	r2, r1, r2
	cmp	r3, r4
	bne	.L145
.L144:
	cmp	r2, r6
	bgt	.L146
	mov	r5, r1
	b	.L147
.L146:
	cmp	r5, #1
	beq	.L185
	cmp	r4, #0
	ble	.L175
.L189:
	cmp	r4, #8
	ble	.L176
	ldr	r2, [sp, #12]
	sub	r1, r4, #9
	bic	r1, r1, #7
	mov	r8, #1
	adds	r1, r1, #8
	movs	r3, #0
	adds	r2, r2, #148
.L151:
	mul	r8, r8, r5
	adds	r3, r3, #8
	cmp	r3, r1
	pld	[r2]
	str	r5, [r2, #-116]
	add	r2, r2, #32
	str	r5, [r2, #-144]
	mul	r8, r5, r8
	str	r5, [r2, #-140]
	str	r5, [r2, #-136]
	str	r5, [r2, #-132]
	str	r5, [r2, #-128]
	mul	r8, r5, r8
	str	r5, [r2, #-124]
	str	r5, [r2, #-120]
	mul	r8, r5, r8
	mul	r8, r5, r8
	mul	r8, r5, r8
	mul	r8, r5, r8
	mul	r8, r8, r5
	bne	.L151
.L150:
	add	r2, r3, #1073741824
	subs	r2, r2, #1
	add	r2, r7, r2, lsl #2
.L152:
	adds	r3, r3, #1
	str	r5, [r2, #4]!
	cmp	r4, r3
	mul	r8, r5, r8
	bgt	.L152
.L149:
	ldr	ip, .L190+12
	mov	r9, #0
	mov	r2, r10
	mov	r5, r9
	mov	r10, r6
.LPIC25:
	add	ip, pc
.L153:
	cmp	r4, r5
	ble	.L155
.L156:
	ldr	r3, [r2, #48]
	mov	fp, r5
	mov	r0, r8
	cmp	r3, #2
	it	eq
	ldreq	fp, [ip, r5, lsl #2]
	adds	r5, r5, #1
	ldr	r6, [r7, fp, lsl #2]
	str	r2, [sp, #8]
	str	ip, [sp, #4]
	mov	r1, r6
	bl	__aeabi_idiv(PLT)
	adds	r3, r6, #1
	ldr	r2, [sp, #8]
	mul	r0, r3, r0
	ldr	ip, [sp, #4]
	cmp	r0, r10
	bgt	.L155
	cmp	r4, r5
	str	r3, [r7, fp, lsl #2]
	mov	r8, r0
	mov	r9, #1
	bgt	.L156
.L155:
	cmp	r9, #0
	beq	.L186
	mov	r9, #0
	mov	r5, r9
	b	.L153
.L186:
	ldr	r3, [r2, #128]
	mov	r10, r2
	mov	fp, r8
	cmp	r3, #3
	ldr	r3, [r2]
	beq	.L187
	str	r8, [r3, #24]
	mov	r0, r2
	ldr	r2, [r2]
	movs	r4, #95
	str	r4, [r3, #20]
	movs	r1, #1
	ldr	r3, [r2, #4]
	blx	r3
.L159:
	ldr	r4, [r10, #4]
	mov	r0, r10
	movs	r1, #1
	mov	r2, r8
	ldr	r3, [r10, #128]
	ldr	r4, [r4, #8]
	blx	r4
	ldr	r6, [r10, #128]
	mov	r5, r0
	cmp	r6, #0
	ble	.L171
	ldr	r4, [sp, #12]
	movs	r3, #0
	str	r3, [sp, #20]
	str	r10, [sp, #28]
	mov	r3, r4
	str	r4, [sp, #24]
.L172:
	ldr	r4, [r3, #32]
	mov	r0, r8
	mov	r1, r4
	bl	__aeabi_idiv(PLT)
	cmp	r4, #0
	mov	r7, r0
	ble	.L163
	subs	r6, r4, #1
	ldr	r3, [sp, #20]
	rsb	r9, r4, r4, lsl #8
	asr	r10, r6, #1
	add	r9, r10, r9
	lsls	r4, r3, #2
	str	r9, [sp, #16]
	mov	r3, r6
	mov	r9, #0
	mov	r6, r9
	mov	r9, r8
	mov	r8, r3
.L170:
	mov	r0, r10
	mov	r1, r8
	bl	__aeabi_idiv(PLT)
	cmp	r6, fp
	mov	lr, r6
	bge	.L164
	uxtb	r0, r0
.L165:
	cmp	r7, #0
	ble	.L167
	mov	r3, lr
	add	r1, lr, r7
.L168:
	ldr	r2, [r5, r4]
	strb	r0, [r2, r3]
	adds	r3, r3, #1
	cmp	r1, r3
	bne	.L168
.L167:
	add	lr, lr, r9
	cmp	lr, fp
	blt	.L165
.L164:
	ldr	r3, [sp, #16]
	add	r10, r10, #255
	add	r6, r6, r7
	cmp	r10, r3
	bne	.L170
	ldr	r4, [sp, #28]
	ldr	r6, [r4, #128]
.L163:
	ldr	r3, [sp, #20]
	ldr	r4, [sp, #24]
	adds	r3, r3, #1
	cmp	r3, r6
	add	r4, r4, #4
	str	r3, [sp, #20]
	str	r4, [sp, #24]
	bge	.L183
	mov	r8, r7
	ldr	r3, [sp, #24]
	b	.L172
.L183:
	ldr	r10, [sp, #28]
.L171:
	ldr	r4, [sp, #12]
	mov	r0, r10
	str	r5, [r4, #16]
	str	fp, [r4, #20]
	bl	create_colorindex(PLT)
	ldr	r3, [r10, #96]
	cmp	r3, #2
	beq	.L188
.L141:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L187:
	ldr	r6, [sp, #12]
	mov	r0, r2
	str	r8, [r3, #24]
	movs	r5, #94
	movs	r1, #1
	ldr	r4, [r3, #4]
	ldr	r2, [r6, #32]
	str	r2, [r3, #28]
	ldr	r2, [r6, #36]
	str	r2, [r3, #32]
	ldr	r2, [r6, #40]
	str	r5, [r3, #20]
	str	r2, [r3, #36]
	blx	r4
	b	.L159
.L185:
	ldr	r3, [r10]
	movs	r1, #56
	mov	r0, r10
	str	r2, [r3, #24]
	ldr	r2, [r10]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	cmp	r4, #0
	bgt	.L189
.L175:
	mov	r8, #1
	b	.L149
.L188:
	ldr	r3, [r10, #128]
	ldr	r2, [r10, #120]
	ldr	r5, [r10, #472]
	cmp	r3, #0
	add	r2, r2, #2
	lsl	r6, r2, #1
	ble	.L141
	movs	r4, #0
.L173:
	ldr	r3, [r10, #4]
	movs	r1, #1
	mov	r0, r10
	mov	r2, r6
	add	r4, r4, r1
	adds	r5, r5, #4
	ldr	r3, [r3, #4]
	blx	r3
	str	r0, [r5, #64]
	ldr	r3, [r10, #128]
	cmp	r4, r3
	blt	.L173
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L176:
	mov	r8, #1
	movs	r3, #0
	b	.L150
.L191:
	.align	2
.L190:
	.word	start_pass_1_quant-(.LPIC22+4)
	.word	finish_pass_1_quant-(.LPIC23+4)
	.word	new_color_map_1_quant-(.LPIC24+4)
	.word	.LANCHOR1-(.LPIC25+4)
	.size	jinit_1pass_quantizer, .-jinit_1pass_quantizer
	.section	.rodata.base_dither_matrix,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	base_dither_matrix, %object
	.size	base_dither_matrix, 256
base_dither_matrix:
	.byte	0
	.byte	-64
	.byte	48
	.byte	-16
	.byte	12
	.byte	-52
	.byte	60
	.byte	-4
	.byte	3
	.byte	-61
	.byte	51
	.byte	-13
	.byte	15
	.byte	-49
	.byte	63
	.byte	-1
	.byte	-128
	.byte	64
	.byte	-80
	.byte	112
	.byte	-116
	.byte	76
	.byte	-68
	.byte	124
	.byte	-125
	.byte	67
	.byte	-77
	.byte	115
	.byte	-113
	.byte	79
	.byte	-65
	.byte	127
	.byte	32
	.byte	-32
	.byte	16
	.byte	-48
	.byte	44
	.byte	-20
	.byte	28
	.byte	-36
	.byte	35
	.byte	-29
	.byte	19
	.byte	-45
	.byte	47
	.byte	-17
	.byte	31
	.byte	-33
	.byte	-96
	.byte	96
	.byte	-112
	.byte	80
	.byte	-84
	.byte	108
	.byte	-100
	.byte	92
	.byte	-93
	.byte	99
	.byte	-109
	.byte	83
	.byte	-81
	.byte	111
	.byte	-97
	.byte	95
	.byte	8
	.byte	-56
	.byte	56
	.byte	-8
	.byte	4
	.byte	-60
	.byte	52
	.byte	-12
	.byte	11
	.byte	-53
	.byte	59
	.byte	-5
	.byte	7
	.byte	-57
	.byte	55
	.byte	-9
	.byte	-120
	.byte	72
	.byte	-72
	.byte	120
	.byte	-124
	.byte	68
	.byte	-76
	.byte	116
	.byte	-117
	.byte	75
	.byte	-69
	.byte	123
	.byte	-121
	.byte	71
	.byte	-73
	.byte	119
	.byte	40
	.byte	-24
	.byte	24
	.byte	-40
	.byte	36
	.byte	-28
	.byte	20
	.byte	-44
	.byte	43
	.byte	-21
	.byte	27
	.byte	-37
	.byte	39
	.byte	-25
	.byte	23
	.byte	-41
	.byte	-88
	.byte	104
	.byte	-104
	.byte	88
	.byte	-92
	.byte	100
	.byte	-108
	.byte	84
	.byte	-85
	.byte	107
	.byte	-101
	.byte	91
	.byte	-89
	.byte	103
	.byte	-105
	.byte	87
	.byte	2
	.byte	-62
	.byte	50
	.byte	-14
	.byte	14
	.byte	-50
	.byte	62
	.byte	-2
	.byte	1
	.byte	-63
	.byte	49
	.byte	-15
	.byte	13
	.byte	-51
	.byte	61
	.byte	-3
	.byte	-126
	.byte	66
	.byte	-78
	.byte	114
	.byte	-114
	.byte	78
	.byte	-66
	.byte	126
	.byte	-127
	.byte	65
	.byte	-79
	.byte	113
	.byte	-115
	.byte	77
	.byte	-67
	.byte	125
	.byte	34
	.byte	-30
	.byte	18
	.byte	-46
	.byte	46
	.byte	-18
	.byte	30
	.byte	-34
	.byte	33
	.byte	-31
	.byte	17
	.byte	-47
	.byte	45
	.byte	-19
	.byte	29
	.byte	-35
	.byte	-94
	.byte	98
	.byte	-110
	.byte	82
	.byte	-82
	.byte	110
	.byte	-98
	.byte	94
	.byte	-95
	.byte	97
	.byte	-111
	.byte	81
	.byte	-83
	.byte	109
	.byte	-99
	.byte	93
	.byte	10
	.byte	-54
	.byte	58
	.byte	-6
	.byte	6
	.byte	-58
	.byte	54
	.byte	-10
	.byte	9
	.byte	-55
	.byte	57
	.byte	-7
	.byte	5
	.byte	-59
	.byte	53
	.byte	-11
	.byte	-118
	.byte	74
	.byte	-70
	.byte	122
	.byte	-122
	.byte	70
	.byte	-74
	.byte	118
	.byte	-119
	.byte	73
	.byte	-71
	.byte	121
	.byte	-123
	.byte	69
	.byte	-75
	.byte	117
	.byte	42
	.byte	-22
	.byte	26
	.byte	-38
	.byte	38
	.byte	-26
	.byte	22
	.byte	-42
	.byte	41
	.byte	-23
	.byte	25
	.byte	-39
	.byte	37
	.byte	-27
	.byte	21
	.byte	-43
	.byte	-86
	.byte	106
	.byte	-102
	.byte	90
	.byte	-90
	.byte	102
	.byte	-106
	.byte	86
	.byte	-87
	.byte	105
	.byte	-103
	.byte	89
	.byte	-91
	.byte	101
	.byte	-107
	.byte	85
	.section	.rodata.RGB_order.7471,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	RGB_order.7471, %object
	.size	RGB_order.7471, 12
RGB_order.7471:
	.word	1
	.word	0
	.word	2
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
