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
	.file	"pngwrite.c"
	.section	.text.png_init_filter_heuristics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_init_filter_heuristics, %function
png_init_filter_heuristics:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	cbz	r0, .L41
	mov	r6, r1
	ldr	r1, [r0, #864]
	mov	r5, r2
	movs	r3, #0
	movs	r2, #1
	strb	r3, [r0, #861]
	strb	r2, [r0, #860]
	cbz	r1, .L3
	str	r3, [r0, #864]
	bl	png_free(PLT)
.L3:
	ldr	r1, [r4, #868]
	cbz	r1, .L4
	movs	r3, #0
	mov	r0, r4
	str	r3, [r4, #868]
	bl	png_free(PLT)
.L4:
	ldr	r1, [r4, #872]
	cbz	r1, .L5
	movs	r3, #0
	mov	r0, r4
	str	r3, [r4, #872]
	bl	png_free(PLT)
.L5:
	cmp	r6, #2
	beq	.L43
	cmp	r6, #1
	bls	.L26
	ldr	r1, .L45
	mov	r0, r4
.LPIC8:
	add	r1, pc
	bl	png_warning(PLT)
.L41:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L26:
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L43:
	cmp	r5, #0
	ble	.L7
	mov	r1, r5
	mov	r0, r4
	bl	png_malloc(PLT)
	movs	r3, #0
	mov	r2, r0
	movs	r1, #255
	str	r0, [r4, #864]
	b	.L9
.L44:
	ldr	r2, [r4, #864]
.L9:
	strb	r1, [r2, r3]
	adds	r3, r3, #1
	cmp	r3, r5
	bne	.L44
	lsls	r6, r5, #1
	mov	r0, r4
	mov	r1, r6
	bl	png_malloc(PLT)
	mov	r1, r6
	str	r0, [r4, #868]
	mov	r0, r4
	bl	png_malloc(PLT)
	ldr	r7, [r4, #868]
	add	r6, r0, #16
	str	r0, [r4, #872]
	add	r3, r7, #16
	cmp	r0, r3
	it	cc
	cmpcc	r7, r6
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	cmp	r5, #10
	ite	ls
	movls	r6, #0
	andhi	r6, r6, #1
	cmp	r6, #0
	beq	.L10
	lsrs	r1, r5, #3
	vmov.i16	q8, #256  @ v8hi
	mov	lr, r7
	lsls	r2, r1, #3
	mov	r6, r0
	movs	r3, #0
.L15:
	adds	r3, r3, #1
	vst1.16	{q8}, [lr]!
	cmp	r1, r3
	vst1.16	{q8}, [r6]!
	bhi	.L15
	cmp	r5, r2
	beq	.L18
	adds	r1, r2, #1
	mov	r3, #256
	cmp	r5, r1
	strh	r3, [r7, r2, lsl #1]	@ movhi
	strh	r3, [r0, r2, lsl #1]	@ movhi
	ble	.L18
	adds	r6, r2, #2
	strh	r3, [r7, r1, lsl #1]	@ movhi
	cmp	r5, r6
	strh	r3, [r0, r1, lsl #1]	@ movhi
	ble	.L18
	adds	r1, r2, #3
	strh	r3, [r7, r6, lsl #1]	@ movhi
	cmp	r5, r1
	strh	r3, [r0, r6, lsl #1]	@ movhi
	ble	.L18
	adds	r6, r2, #4
	strh	r3, [r7, r1, lsl #1]	@ movhi
	cmp	r5, r6
	strh	r3, [r0, r1, lsl #1]	@ movhi
	ble	.L18
	adds	r1, r2, #5
	strh	r3, [r7, r6, lsl #1]	@ movhi
	cmp	r5, r1
	strh	r3, [r0, r6, lsl #1]	@ movhi
	ble	.L18
	adds	r2, r2, #6
	strh	r3, [r7, r1, lsl #1]	@ movhi
	cmp	r5, r2
	strh	r3, [r0, r1, lsl #1]	@ movhi
	itt	gt
	strhgt	r3, [r7, r2, lsl #1]	@ movhi
	strhgt	r3, [r0, r2, lsl #1]	@ movhi
.L18:
	strb	r5, [r4, #861]
.L7:
	ldr	r3, [r4, #876]
	cmp	r3, #0
	beq	.L20
	ldr	r2, [r4, #880]
.L21:
	add	r0, r3, #8
	add	r1, r2, #8
	cmp	r3, r1
	it	cc
	cmpcc	r2, r0
	bcc	.L22
	vmov.i16	d16, #0x8  @ v4hi
	movs	r1, #8
	vst1.16	{d16}, [r3]
	vst1.16	{d16}, [r2]
	strh	r1, [r3, #8]	@ movhi
	strh	r1, [r2, #8]	@ movhi
.L23:
	movs	r3, #2
	movs	r0, #1
	strb	r3, [r4, #860]
	pop	{r3, r4, r5, r6, r7, pc}
.L22:
	movs	r1, #8
	strh	r1, [r3]	@ movhi
	strh	r1, [r2]	@ movhi
	strh	r1, [r3, #2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	strh	r1, [r3, #4]	@ movhi
	strh	r1, [r2, #4]	@ movhi
	strh	r1, [r3, #6]	@ movhi
	strh	r1, [r2, #6]	@ movhi
	strh	r1, [r3, #8]	@ movhi
	strh	r1, [r2, #8]	@ movhi
	b	.L23
.L10:
	cmp	r5, #16
	ble	.L16
	sub	lr, r5, #17
	mov	r1, r7
	bic	lr, lr, #15
	mov	r2, r0
	add	lr, lr, #16
	mov	r3, #256
.L17:
	adds	r6, r6, #16
	pld	[r1, #50]
	cmp	r6, lr
	strh	r3, [r1]	@ movhi
	pld	[r2, #50]
	add	r1, r1, #32
	strh	r3, [r2]	@ movhi
	add	r2, r2, #32
	strh	r3, [r1, #-30]	@ movhi
	strh	r3, [r2, #-30]	@ movhi
	strh	r3, [r1, #-28]	@ movhi
	strh	r3, [r2, #-28]	@ movhi
	strh	r3, [r1, #-26]	@ movhi
	strh	r3, [r2, #-26]	@ movhi
	strh	r3, [r1, #-24]	@ movhi
	strh	r3, [r2, #-24]	@ movhi
	strh	r3, [r1, #-22]	@ movhi
	strh	r3, [r2, #-22]	@ movhi
	strh	r3, [r1, #-20]	@ movhi
	strh	r3, [r2, #-20]	@ movhi
	strh	r3, [r1, #-18]	@ movhi
	strh	r3, [r2, #-18]	@ movhi
	strh	r3, [r1, #-16]	@ movhi
	strh	r3, [r2, #-16]	@ movhi
	strh	r3, [r1, #-14]	@ movhi
	strh	r3, [r2, #-14]	@ movhi
	strh	r3, [r1, #-12]	@ movhi
	strh	r3, [r2, #-12]	@ movhi
	strh	r3, [r1, #-10]	@ movhi
	strh	r3, [r2, #-10]	@ movhi
	strh	r3, [r1, #-8]	@ movhi
	strh	r3, [r2, #-8]	@ movhi
	strh	r3, [r1, #-6]	@ movhi
	strh	r3, [r2, #-6]	@ movhi
	strh	r3, [r1, #-4]	@ movhi
	strh	r3, [r2, #-4]	@ movhi
	strh	r3, [r1, #-2]	@ movhi
	strh	r3, [r2, #-2]	@ movhi
	bne	.L17
.L16:
	lsls	r1, r6, #1
	movs	r3, #0
	mov	r2, #256
	add	r7, r7, r1
	add	r0, r0, r1
.L19:
	adds	r6, r6, #1
	strh	r2, [r7, r3]	@ movhi
	cmp	r5, r6
	strh	r2, [r0, r3]	@ movhi
	add	r3, r3, #2
	bgt	.L19
	b	.L18
.L20:
	movs	r1, #10
	mov	r0, r4
	bl	png_malloc(PLT)
	movs	r1, #10
	str	r0, [r4, #876]
	mov	r0, r4
	bl	png_malloc(PLT)
	ldr	r3, [r4, #876]
	mov	r2, r0
	str	r0, [r4, #880]
	b	.L21
.L46:
	.align	2
.L45:
	.word	.LC0-(.LPIC8+4)
	.size	png_init_filter_heuristics, .-png_init_filter_heuristics
	.global	__aeabi_idiv
	.section	.text.png_image_set_PLTE.isra.4,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_set_PLTE.isra.4, %function
png_image_set_PLTE.isra.4:
	@ args = 0, pretend = 0, frame = 1136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subw	sp, sp, #1148
	ldr	r3, .L106
	mov	r2, #256
	ldr	r5, [r0, #16]
	str	r0, [sp, #64]
.LPIC17:
	add	r3, pc
	ldr	r0, [r0, #24]
	str	r3, [sp, #44]
	and	r3, r5, #33
	sub	r3, #33
	clz	r3, r3
	cmp	r0, #256
	lsr	r3, r3, #5
	it	cs
	movcs	r0, #256
	str	r1, [sp, #20]
	ands	r9, r5, #16
	str	r3, [sp, #40]
	it	ne
	movne	r10, #0
	str	r9, [sp, #72]
	it	eq
	moveq	r8, r9
	add	r9, sp, #120
	ittte	ne
	strne	r10, [sp, #88]
	movne	ip, #4
	movne	r7, r10
	moveq	r3, #4
	str	r0, [sp, #28]
	mov	r1, #255
	mov	r0, r9
	add	r10, sp, #376
	ittee	ne
	strne	ip, [sp, #72]
	movne	r8, #2
	streq	r3, [sp, #88]
	moveq	r7, #2
	str	r9, [sp, #60]
	and	r6, r5, #3
	str	r10, [sp, #24]
	adds	r4, r6, #1
	bl	memset(PLT)
	add	r0, sp, #376
	movs	r1, #0
	mov	r2, #768
	bl	memset(PLT)
	ldr	r0, [sp, #28]
	cmp	r0, #0
	beq	.L49
	ldr	r0, [sp, #40]
	add	ip, r4, #-1
	ldr	r3, [sp, #40]
	lsl	ip, ip, #1
	ldr	r10, [sp, #40]
	and	r5, r5, #4
	add	r0, r0, r7
	ldr	lr, [sp, #20]
	add	r3, r3, r8
	lsl	r9, r0, #1
	lsls	r2, r3, #1
	ldr	r8, [sp, #40]
	str	r9, [sp, #92]
	add	lr, lr, r4
	ldr	r9, [sp, #20]
	cmp	r10, #0
	it	ne
	movne	ip, #0
	str	r2, [sp, #100]
	eor	r1, r10, #1
	ldr	r2, [sp, #40]
	add	lr, lr, r10
	add	r8, r8, r6
	str	r5, [sp, #32]
	add	r9, r9, r10, lsl #1
	ldr	r10, [sp, #20]
	adds	r2, r2, #1
	ldr	r5, [sp, #20]
	lsls	r2, r2, #1
	str	r9, [sp, #104]
	add	r10, r10, r8
	ldr	r9, [sp, #20]
	str	r2, [sp, #96]
	lsls	r2, r4, #1
	str	r10, [sp, #16]
	add	r5, r5, ip
	ldr	r10, [sp, #20]
	add	r9, r9, r0
	str	r2, [sp, #36]
	movs	r6, #0
	ldr	r2, [sp, #20]
	add	lr, lr, r7
	add	r10, r10, r3
	str	r9, [sp, #80]
	ldr	ip, [sp, #20]
	mov	r8, r6
	ldr	r3, [sp, #20]
	adds	r2, r2, #2
	ldr	r9, [sp, #40]
	adds	r2, r1, r2
	str	r2, [sp, #108]
	add	ip, ip, r1
	and	r2, r4, #1
	str	r5, [sp, #68]
	add	r3, r3, r9
	str	lr, [sp, #76]
	str	r10, [sp, #84]
	mov	r5, r6
	mov	fp, r6
	str	r6, [sp, #48]
	str	ip, [sp, #112]
	movs	r7, #1
	str	r2, [sp, #56]
	str	r3, [sp, #12]
	b	.L80
.L100:
	ldr	r3, [sp, #56]
	cmp	r3, #0
	beq	.L51
	cmp	r4, #2
	ldr	r3, [sp, #20]
	ble	.L52
	ldr	r9, [sp, #88]
	add	lr, sp, #376
	ldr	r10, [sp, #44]
	add	lr, lr, r5
	ldr	r2, .L106+4
	add	r3, r3, r9
	ldr	ip, [sp, #72]
	ldrh	r9, [r3, r8]
	ldr	r2, [r10, r2]
	ldr	r1, [sp, #20]
	ldr	r3, .L106+8
	str	r2, [sp, #52]
	rsb	r9, r9, r9, lsl #8
	add	r1, r1, ip
	ldr	ip, [sp, #52]
	ldr	r2, [r10, r3]
	asr	r3, r9, #15
	ubfx	r9, r9, #0, #15
	ldr	r0, [sp, #20]
	ldrb	r10, [ip, r3]	@ zero_extendqisi2
	ldrh	ip, [r2, r3, lsl #1]
	mov	r3, r7
	add	r0, r0, r8
	mul	r9, r10, r9
	ldr	r10, [sp, #52]
	add	ip, ip, r9, lsr #12
	asr	ip, ip, #8
	strb	ip, [lr, #2]
	ldrh	ip, [r0, #2]
	rsb	ip, ip, ip, lsl #8
	asr	r0, ip, #15
	ubfx	ip, ip, #0, #15
	ldrb	r9, [r10, r0]	@ zero_extendqisi2
	ldrh	r0, [r2, r0, lsl #1]
	mul	ip, r9, ip
	ldr	r9, [sp, #16]
	add	ip, r0, ip, lsr #12
	asr	ip, ip, #8
	strb	ip, [lr, #1]
	add	ip, sp, #376
	ldrh	r0, [r1, r8]
	rsb	r0, r0, r0, lsl #8
	asrs	r1, r0, #15
	ubfx	r0, r0, #0, #15
	ldrb	lr, [r10, r1]	@ zero_extendqisi2
	ldrh	r2, [r2, r1, lsl #1]
	ldr	r10, [sp, #12]
	mul	r0, lr, r0
	add	r0, r2, r0, lsr #12
	asrs	r0, r0, #8
	strb	r0, [ip, r5]
.L53:
	ldr	r0, [sp, #28]
	add	r9, r9, r4
	ldr	r2, [sp, #36]
	add	r10, r10, r4
	add	fp, fp, #1
	adds	r7, r7, #1
	cmp	r0, r3
	add	r5, r5, #3
	add	r8, r8, r2
	add	r6, r6, r4
	str	r9, [sp, #16]
	str	r10, [sp, #12]
	ble	.L99
.L80:
	ldr	r2, [sp, #32]
	cmp	r2, #0
	bne	.L100
	ldr	r2, [sp, #20]
	cmp	r4, #3
	add	r2, r2, r6
	beq	.L71
	cmp	r4, #4
	beq	.L72
	cmp	r4, #2
	it	ne
	movne	r3, r7
	bne	.L75
	ldr	ip, [sp, #112]
	mov	r3, r7
	ldr	r0, [sp, #48]
	add	r1, sp, #120
	ldr	r9, [sp, #108]
	ldrb	r2, [ip, r6]	@ zero_extendqisi2
	pld	[r9, r6]
	cmp	r2, #255
	it	ne
	movne	r0, r7
	strb	r2, [r1, fp]
	str	r0, [sp, #48]
.L75:
	ldr	r9, [sp, #12]
	add	r1, sp, #376
	ldr	r10, [sp, #16]
	add	r1, r1, r5
	add	ip, sp, #376
	ldrb	r2, [r9]	@ zero_extendqisi2
	pld	[r10, #1]
	mov	r9, r10
	ldr	r10, [sp, #12]
	strb	r2, [r1, #1]
	strb	r2, [ip, r5]
	strb	r2, [r1, #2]
	b	.L53
.L51:
	ldr	r2, [sp, #68]
	ldrh	r9, [r2, r8]
	rsb	r10, r9, r9, lsl #8
	add	r10, r10, #32768
	add	r10, r10, #127
	ubfx	r10, r10, #16, #8
	add	r3, r10, #-1
	uxtb	r3, r3
	cmp	r3, #253
	bhi	.L54
	lsr	r3, r9, #1
	movw	r0, #32896
	movt	r0, 32639
	add	r0, r0, r3
	mov	r1, r9
	bl	__aeabi_idiv(PLT)
	mov	ip, r0
	add	r3, sp, #120
	strb	r10, [r3, fp]
.L55:
	cmp	r4, #2
	str	r7, [sp, #48]
	mov	r3, r7
	ble	.L57
.L104:
	ldr	r10, [sp, #92]
	cmp	r9, #127
	ldr	r2, [sp, #20]
	add	r2, r2, r10
	it	hi
	movhi	r10, #0
	ldrh	r0, [r2, r8]
	it	ls
	movls	r10, #1
	cmp	r9, #127
	it	hi
	cmphi	r9, r0
	it	ls
	movls	r0, #255
	bhi	.L101
.L58:
	ldr	r2, [sp, #20]
	add	r1, sp, #376
	ldr	lr, [sp, #96]
	add	r1, r1, r5
	strb	r0, [r1, #2]
	add	r2, r2, lr
	ldrh	r2, [r2, r8]
	cmp	r9, r2
	ite	hi
	movhi	r0, r10
	orrls	r0, r10, #1
	cmp	r0, #0
	beq	.L102
	movs	r2, #255
.L61:
	ldr	r0, [sp, #100]
	ldr	lr, [sp, #20]
	strb	r2, [r1, #1]
	add	lr, lr, r0
	ldrh	r0, [lr, r8]
	cmp	r9, r0
	ite	hi
	movhi	r2, r10
	orrls	r2, r10, #1
	cmp	r2, #0
	beq	.L103
	movs	r0, #255
.L64:
	add	r10, sp, #376
	ldr	r9, [sp, #16]
	strb	r0, [r10, r5]
	ldr	r10, [sp, #12]
	b	.L53
.L54:
	cmp	r10, #255
	add	ip, sp, #120
	strb	r10, [ip, fp]
	bne	.L83
	cmp	r4, #2
	mov	r3, r7
	ldr	ip, [sp, #56]
	bgt	.L104
.L57:
	ldr	r2, [sp, #104]
	ldrh	r0, [r2, r8]
	cmp	r9, r0
	it	hi
	cmphi	r9, #127
	it	ls
	movls	r0, #255
	bhi	.L105
.L67:
	add	r2, sp, #376
	add	r10, sp, #376
	add	r2, r2, r5
	ldr	r9, [sp, #16]
	strb	r0, [r2, #1]
	strb	r0, [r10, r5]
	strb	r0, [r2, #2]
	ldr	r10, [sp, #12]
	b	.L53
.L52:
	ldrh	lr, [r3, r8]
	add	r0, sp, #376
	ldr	r9, [sp, #44]
	add	r0, r0, r5
	ldr	r2, .L106+4
	mov	r3, r7
	ldr	r10, [sp, #44]
	rsb	lr, lr, lr, lsl #8
	ldr	r2, [r9, r2]
	asr	r1, lr, #15
	ldr	r9, .L106+8
	ubfx	lr, lr, #0, #15
	ldrb	ip, [r2, r1]	@ zero_extendqisi2
	ldr	r2, [r10, r9]
	ldr	r9, [sp, #16]
	ldr	r10, [sp, #12]
	mul	lr, ip, lr
	ldrh	ip, [r2, r1, lsl #1]
	add	lr, ip, lr, lsr #12
	add	ip, sp, #376
	ubfx	lr, lr, #8, #8
	strb	lr, [r0, #1]
	strb	lr, [ip, r5]
	strb	lr, [r0, #2]
	b	.L53
.L72:
	ldr	ip, [sp, #40]
	mov	r3, r7
	ldr	r0, [sp, #48]
	cmp	ip, #0
	ite	eq
	moveq	r1, #3
	movne	r1, #0
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	add	r1, sp, #120
	cmp	r2, #255
	it	ne
	movne	r0, r7
	strb	r2, [r1, fp]
	str	r0, [sp, #48]
.L74:
	ldr	r2, [sp, #80]
	ldr	r9, [sp, #76]
	ldr	r10, [sp, #16]
	ldrb	r1, [r2, r6]	@ zero_extendqisi2
	add	r2, sp, #376
	ldr	ip, [sp, #12]
	add	r2, r2, r5
	pld	[r9, r6]
	pld	[r10, #2]
	add	r10, sp, #376
	strb	r1, [r2, #2]
	ldr	r9, [sp, #84]
	ldrb	r1, [ip, #1]	@ zero_extendqisi2
	strb	r1, [r2, #1]
	ldrb	r2, [r9, r6]	@ zero_extendqisi2
	ldr	r9, [sp, #16]
	strb	r2, [r10, r5]
	mov	r10, ip
	b	.L53
.L71:
	mov	r3, r7
	b	.L74
.L99:
	ldr	r5, [sp, #64]
	mov	r3, r0
	add	r2, sp, #376
	ldr	r1, [r5]
	ldmia	r1, {r0, r1}
	bl	png_set_PLTE(PLT)
	ldr	r5, [sp, #48]
	cbz	r5, .L81
	ldr	r9, [sp, #64]
	movs	r4, #0
	add	r2, sp, #120
	mov	r3, r5
	ldr	r1, [r9]
	ldmia	r1, {r0, r1}
	str	r4, [sp]
	bl	png_set_tRNS(PLT)
.L81:
	ldr	r5, [sp, #28]
	ldr	r9, [sp, #64]
	str	r5, [r9, #24]
	addw	sp, sp, #1148
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L83:
	ldr	ip, [sp, #56]
	b	.L55
.L101:
	cmp	r0, #0
	beq	.L58
	movw	r2, #65406
	ldr	lr, .L106+4
	cmp	r9, r2
	ldr	r2, .L106+8
	itett	ls
	mulls	r0, r0, ip
	rsbhi	r0, r0, r0, lsl #8
	addls	r0, r0, #64
	lsrls	r0, r0, #7
	lsrs	r1, r0, #15
	ubfx	r0, r0, #0, #15
	str	r0, [sp, #116]
	ldr	r0, [sp, #44]
	ldr	r0, [r0, lr]
	ldr	lr, [sp, #44]
	ldr	r2, [lr, r2]
	ldrb	lr, [r0, r1]	@ zero_extendqisi2
	ldrh	r2, [r2, r1, lsl #1]
	ldr	r1, [sp, #116]
	mul	r0, r1, lr
	add	r0, r2, r0, lsr #12
	ubfx	r0, r0, #8, #8
	b	.L58
.L105:
	cmp	r0, #0
	beq	.L67
	movw	r2, #65406
	ldr	lr, .L106+4
	cmp	r9, r2
	ldr	r2, .L106+8
	ite	ls
	mulls	r0, r0, ip
	rsbhi	r0, r0, r0, lsl #8
	ldr	r9, [sp, #44]
	it	ls
	addls	r0, r0, #64
	ldr	r2, [r9, r2]
	it	ls
	lsrls	r0, r0, #7
	lsrs	r1, r0, #15
	ubfx	ip, r0, #0, #15
	ldr	r0, [sp, #44]
	ldrh	r2, [r2, r1, lsl #1]
	ldr	r0, [r0, lr]
	ldrb	lr, [r0, r1]	@ zero_extendqisi2
	mul	r0, ip, lr
	add	r0, r2, r0, lsr #12
	ubfx	r0, r0, #8, #8
	b	.L67
.L103:
	cmp	r0, #0
	beq	.L64
	movw	r2, #65406
	ldr	lr, .L106+4
	cmp	r9, r2
	ldr	r2, .L106+8
	ite	ls
	mulls	r0, r0, ip
	rsbhi	r0, r0, r0, lsl #8
	ldr	r9, [sp, #44]
	it	ls
	addls	r0, r0, #64
	ldr	r2, [r9, r2]
	it	ls
	lsrls	r0, r0, #7
	lsrs	r1, r0, #15
	ubfx	ip, r0, #0, #15
	ldr	r0, [sp, #44]
	ldrh	r2, [r2, r1, lsl #1]
	ldr	r0, [r0, lr]
	ldrb	lr, [r0, r1]	@ zero_extendqisi2
	mul	r0, ip, lr
	add	r0, r2, r0, lsr #12
	ubfx	r0, r0, #8, #8
	b	.L64
.L102:
	cmp	r2, #0
	beq	.L61
	movw	r0, #65406
	ldr	lr, .L106+8
	cmp	r9, r0
	ite	ls
	mulls	r2, r2, ip
	rsbhi	r2, r2, r2, lsl #8
	str	lr, [sp, #8]
	ldr	lr, [sp, #44]
	itt	ls
	addls	r2, r2, #64
	lsrls	r2, r2, #7
	lsrs	r0, r2, #15
	ubfx	r2, r2, #0, #15
	str	r2, [sp, #116]
	ldr	r2, .L106+4
	ldr	r2, [lr, r2]
	ldr	lr, [sp, #8]
	str	r2, [sp, #52]
	ldr	r2, [sp, #44]
	ldr	r2, [r2, lr]
	str	r2, [sp, #8]
	ldr	r2, [sp, #52]
	ldrb	lr, [r2, r0]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	ldrh	r0, [r2, r0, lsl #1]
	ldr	r2, [sp, #116]
	mul	lr, r2, lr
	add	r2, r0, lr, lsr #12
	ubfx	r2, r2, #8, #8
	b	.L61
.L49:
	ldr	r10, [sp, #64]
	mov	r3, r0
	add	r2, sp, #376
	ldr	r1, [r10]
	ldmia	r1, {r0, r1}
	bl	png_set_PLTE(PLT)
	b	.L81
.L107:
	.align	2
.L106:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC17+4)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.size	png_image_set_PLTE.isra.4, .-png_image_set_PLTE.isra.4
	.section	.text.png_write_info_before_PLTE,"ax",%progbits
	.align	2
	.global	png_write_info_before_PLTE
	.thumb
	.thumb_func
	.type	png_write_info_before_PLTE, %function
png_write_info_before_PLTE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r1
	sub	sp, sp, #20
	beq	.L108
	ldr	r3, [r0, #448]
	mov	r6, r0
	ands	r5, r3, #1024
	beq	.L160
.L108:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L160:
	bl	png_write_sig(PLT)
	ldr	r3, [r6, #448]
	lsls	r3, r3, #19
	bpl	.L110
	ldr	r3, [r6, #948]
	cmp	r3, #0
	bne	.L161
.L110:
	ldrb	r5, [r4, #25]	@ zero_extendqisi2
	mov	r0, r6
	ldrb	r3, [r4, #24]	@ zero_extendqisi2
	ldmia	r4, {r1, r2}
	str	r5, [sp]
	ldrb	r5, [r4, #26]	@ zero_extendqisi2
	str	r5, [sp, #4]
	ldrb	r5, [r4, #27]	@ zero_extendqisi2
	str	r5, [sp, #8]
	ldrb	r5, [r4, #28]	@ zero_extendqisi2
	str	r5, [sp, #12]
	bl	png_write_IHDR(PLT)
	ldrh	r3, [r4, #114]
	lsls	r7, r3, #16
	bmi	.L158
	tst	r3, #8
	ldr	r3, [r4, #8]
	beq	.L114
	lsls	r5, r3, #31
	bmi	.L162
.L114:
	lsls	r0, r3, #19
	bpl	.L116
	lsls	r1, r3, #20
	bmi	.L163
.L117:
	mov	r0, r6
	ldr	r1, [r4, #116]
	ldr	r2, [r4, #120]
	bl	png_write_iCCP(PLT)
	ldr	r3, [r4, #8]
.L112:
	lsls	r7, r3, #30
	bmi	.L164
.L118:
	ldrh	r3, [r4, #114]
	lsls	r5, r3, #16
	bmi	.L119
	lsls	r0, r3, #27
	bpl	.L119
	ldr	r3, [r4, #8]
	lsls	r1, r3, #29
	bmi	.L165
.L119:
	ldr	r3, [r4, #240]
	cbnz	r3, .L120
.L121:
	ldr	r3, [r6, #448]
	orr	r3, r3, #1024
	str	r3, [r6, #448]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L116:
	lsls	r2, r3, #20
	bpl	.L112
	mov	r0, r6
	ldrh	r1, [r4, #112]
	bl	png_write_sRGB(PLT)
.L158:
	ldr	r3, [r4, #8]
	b	.L112
.L120:
	ldr	r5, [r4, #236]
	add	r2, r3, r3, lsl #2
	add	r2, r5, r2, lsl #2
	cmp	r5, r2
	bcs	.L121
	ldr	r7, .L167
	mov	r1, r5
.LPIC28:
	add	r7, pc
	b	.L127
.L122:
	add	r2, r3, r3, lsl #2
	adds	r5, r5, #20
	add	r2, r1, r2, lsl #2
	cmp	r5, r2
	bcs	.L121
.L127:
	ldrb	r2, [r5, #16]	@ zero_extendqisi2
	lsls	r2, r2, #31
	bpl	.L122
	mov	r0, r6
	mov	r1, r5
	bl	png_handle_as_unknown(PLT)
	cmp	r0, #1
	beq	.L159
	ldrb	r3, [r5, #3]	@ zero_extendqisi2
	lsls	r3, r3, #26
	bmi	.L124
	cmp	r0, #3
	beq	.L124
	cbnz	r0, .L159
	ldr	r3, [r6, #928]
	cmp	r3, #3
	beq	.L124
.L159:
	ldr	r1, [r4, #236]
	ldr	r3, [r4, #240]
	b	.L122
.L124:
	ldr	r3, [r5, #12]
	pld	[r5, #72]
	cbz	r3, .L166
.L126:
	mov	r1, r5
	mov	r0, r6
	ldr	r2, [r5, #8]
	bl	png_write_chunk(PLT)
	ldr	r1, [r4, #236]
	ldr	r3, [r4, #240]
	b	.L122
.L164:
	mov	r0, r6
	add	r1, r4, #148
	ldrb	r2, [r4, #25]	@ zero_extendqisi2
	bl	png_write_sBIT(PLT)
	b	.L118
.L161:
	ldr	r1, .L167+4
	mov	r0, r6
.LPIC26:
	add	r1, pc
	bl	png_warning(PLT)
	str	r5, [r6, #948]
	b	.L110
.L166:
	mov	r0, r6
	mov	r1, r7
	bl	png_warning(PLT)
	ldr	r3, [r5, #12]
	b	.L126
.L162:
	mov	r0, r6
	ldr	r1, [r4, #40]
	bl	png_write_gAMA_fixed(PLT)
	ldrsh	r3, [r4, #114]
	cmp	r3, #0
	ldr	r3, [r4, #8]
	bge	.L114
	b	.L112
.L165:
	mov	r0, r6
	add	r1, r4, #44
	bl	png_write_cHRM_fixed(PLT)
	b	.L119
.L163:
	ldr	r1, .L167+8
	mov	r0, r6
.LPIC27:
	add	r1, pc
	bl	png_app_warning(PLT)
	b	.L117
.L168:
	.align	2
.L167:
	.word	.LC3-(.LPIC28+4)
	.word	.LC1-(.LPIC26+4)
	.word	.LC2-(.LPIC27+4)
	.size	png_write_info_before_PLTE, .-png_write_info_before_PLTE
	.section	.text.png_write_info,"ax",%progbits
	.align	2
	.global	png_write_info
	.thumb
	.thumb_func
	.type	png_write_info, %function
png_write_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	bne	.L239
	bx	lr
.L239:
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r1
	sub	sp, sp, #16
	mov	r7, r0
	bl	png_write_info_before_PLTE(PLT)
	ldr	r3, [r5, #8]
	lsls	r2, r3, #28
	bmi	.L240
	ldrb	r2, [r5, #25]	@ zero_extendqisi2
	cmp	r2, #3
	beq	.L241
.L172:
	lsls	r6, r3, #27
	bmi	.L242
	lsls	r4, r3, #26
	bmi	.L243
.L179:
	lsls	r0, r3, #25
	bmi	.L244
.L180:
	lsls	r1, r3, #23
	bmi	.L245
.L181:
	lsls	r2, r3, #21
	bmi	.L246
.L182:
	lsls	r6, r3, #17
	bmi	.L247
.L183:
	lsls	r4, r3, #24
	bmi	.L248
.L184:
	lsls	r0, r3, #22
	bmi	.L249
.L185:
	lsls	r1, r3, #18
	bmi	.L186
.L189:
	ldr	r2, [r5, #128]
	cmp	r2, #0
	ble	.L188
	movs	r4, #0
	ldr	r3, [r5, #136]
	mov	r10, r4
	mvn	r8, #2
	mvn	r9, #1
	b	.L196
.L250:
	ldr	r3, [r6, #24]
	mov	r0, r7
	ldr	r2, [r6, #4]
	ldr	lr, [r6, #20]
	str	r3, [sp]
	ldr	r6, [r6, #8]
	mov	r3, lr
	str	r6, [sp, #4]
	bl	png_write_iTXt(PLT)
	ldr	r3, [r5, #136]
	ldr	r2, [r5, #128]
	str	r8, [r3, r4]
.L194:
	add	r10, r10, #1
	adds	r4, r4, #28
	cmp	r10, r2
	bge	.L188
.L196:
	ldr	r1, [r3, r4]
	adds	r6, r3, r4
	cmp	r1, #0
	bgt	.L250
	beq	.L251
	adds	r1, r1, #1
	bne	.L194
	ldr	r1, [r6, #4]
	movs	r3, #0
	ldr	r2, [r6, #8]
	mov	r0, r7
	bl	png_write_tEXt(PLT)
	ldr	r2, [r5, #128]
	add	r10, r10, #1
	ldr	r1, [r5, #136]
	cmp	r10, r2
	str	r8, [r1, r4]
	mov	r3, r1
	add	r4, r4, #28
	blt	.L196
.L188:
	ldr	r3, [r5, #240]
	cmp	r3, #0
	bne	.L252
.L169:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L251:
	ldr	lr, [r6, #4]
	mov	r3, r1
	ldr	r2, [r6, #8]
	mov	r0, r7
	str	r1, [sp]
	mov	r1, lr
	bl	png_write_zTXt(PLT)
	ldr	r3, [r5, #136]
	ldr	r2, [r5, #128]
	str	r9, [r3, r4]
	b	.L194
.L186:
	ldr	r3, [r5, #248]
	cmp	r3, #0
	ble	.L189
	movs	r4, #0
.L190:
	ldr	r1, [r5, #244]
	mov	r0, r7
	add	r1, r1, r4, lsl #4
	adds	r4, r4, #1
	bl	png_write_sPLT(PLT)
	ldr	r3, [r5, #248]
	cmp	r4, r3
	blt	.L190
	b	.L189
.L242:
	ldr	r3, [r7, #456]
	ldrb	r2, [r5, #25]	@ zero_extendqisi2
	tst	r3, #524288
	ldrh	r3, [r5, #22]
	beq	.L175
	cmp	r2, #3
	beq	.L253
.L175:
	ldr	r1, [r5, #156]
	mov	r0, r7
	str	r2, [sp]
	add	r2, r5, #160
	bl	png_write_tRNS(PLT)
	ldr	r3, [r5, #8]
	lsls	r4, r3, #26
	bpl	.L179
.L243:
	mov	r0, r7
	add	r1, r5, #170
	ldrb	r2, [r5, #25]	@ zero_extendqisi2
	bl	png_write_bKGD(PLT)
	ldr	r3, [r5, #8]
	lsls	r0, r3, #25
	bpl	.L180
.L244:
	ldr	r1, [r5, #204]
	mov	r0, r7
	ldrh	r2, [r5, #20]
	bl	png_write_hIST(PLT)
	ldr	r3, [r5, #8]
	lsls	r1, r3, #23
	bpl	.L181
.L245:
	ldr	r2, [r5, #184]
	mov	r0, r7
	ldrb	r3, [r5, #188]	@ zero_extendqisi2
	ldr	r1, [r5, #180]
	bl	png_write_oFFs(PLT)
	ldr	r3, [r5, #8]
	lsls	r2, r3, #21
	bpl	.L182
.L246:
	ldrb	r4, [r5, #228]	@ zero_extendqisi2
	add	r1, r5, #208
	ldmia	r1, {r1, r2, r3}
	mov	r0, r7
	str	r4, [sp]
	ldrb	r4, [r5, #229]	@ zero_extendqisi2
	str	r4, [sp, #4]
	ldr	r4, [r5, #220]
	str	r4, [sp, #8]
	ldr	r4, [r5, #224]
	str	r4, [sp, #12]
	bl	png_write_pCAL(PLT)
	ldr	r3, [r5, #8]
	lsls	r6, r3, #17
	bpl	.L183
.L247:
	ldr	r3, [r5, #260]
	mov	r0, r7
	ldrb	r1, [r5, #252]	@ zero_extendqisi2
	ldr	r2, [r5, #256]
	bl	png_write_sCAL_s(PLT)
	ldr	r3, [r5, #8]
	lsls	r4, r3, #24
	bpl	.L184
.L248:
	mov	r0, r7
	ldrb	r3, [r5, #200]	@ zero_extendqisi2
	ldr	r1, [r5, #192]
	ldr	r2, [r5, #196]
	bl	png_write_pHYs(PLT)
	ldr	r3, [r5, #8]
	lsls	r0, r3, #22
	bpl	.L185
.L249:
	mov	r0, r7
	add	r1, r5, #140
	bl	png_write_tIME(PLT)
	ldr	r2, [r7, #448]
	ldr	r3, [r5, #8]
	orr	r2, r2, #512
	str	r2, [r7, #448]
	b	.L185
.L252:
	ldr	r4, [r5, #236]
	add	r2, r3, r3, lsl #2
	add	r2, r4, r2, lsl #2
	cmp	r4, r2
	bcs	.L169
	ldr	r6, .L255
	mov	r1, r4
.LPIC30:
	add	r6, pc
	b	.L202
.L197:
	add	r2, r3, r3, lsl #2
	adds	r4, r4, #20
	add	r2, r1, r2, lsl #2
	cmp	r4, r2
	bcs	.L169
.L202:
	ldrb	r2, [r4, #16]	@ zero_extendqisi2
	lsls	r2, r2, #30
	bpl	.L197
	mov	r0, r7
	mov	r1, r4
	bl	png_handle_as_unknown(PLT)
	cmp	r0, #1
	beq	.L238
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	lsls	r3, r3, #26
	bmi	.L199
	cmp	r0, #3
	beq	.L199
	cbnz	r0, .L238
	ldr	r3, [r7, #928]
	cmp	r3, #3
	beq	.L199
.L238:
	ldr	r1, [r5, #236]
	ldr	r3, [r5, #240]
	b	.L197
.L199:
	ldr	r3, [r4, #12]
	pld	[r4, #72]
	cbz	r3, .L254
.L201:
	mov	r1, r4
	mov	r0, r7
	ldr	r2, [r4, #8]
	bl	png_write_chunk(PLT)
	ldr	r1, [r5, #236]
	ldr	r3, [r5, #240]
	b	.L197
.L240:
	mov	r0, r7
	ldr	r1, [r5, #16]
	ldrh	r2, [r5, #20]
	bl	png_write_PLTE(PLT)
	ldr	r3, [r5, #8]
	b	.L172
.L254:
	mov	r0, r7
	mov	r1, r6
	bl	png_warning(PLT)
	ldr	r3, [r4, #12]
	b	.L201
.L253:
	cmp	r3, #0
	beq	.L175
	movs	r2, #0
.L178:
	ldr	r3, [r5, #156]
	ldrb	r1, [r3, r2]	@ zero_extendqisi2
	mvns	r1, r1
	strb	r1, [r3, r2]
	adds	r2, r2, #1
	ldrh	r3, [r5, #22]
	cmp	r2, r3
	blt	.L178
	ldrb	r2, [r5, #25]	@ zero_extendqisi2
	b	.L175
.L241:
	ldr	r1, .L255+4
	mov	r0, r7
.LPIC29:
	add	r1, pc
	bl	png_error(PLT)
.L256:
	.align	2
.L255:
	.word	.LC3-(.LPIC30+4)
	.word	.LC4-(.LPIC29+4)
	.size	png_write_info, .-png_write_info
	.section	.text.png_write_end,"ax",%progbits
	.align	2
	.global	png_write_end
	.thumb
	.thumb_func
	.type	png_write_end, %function
png_write_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L288
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r0
	sub	sp, sp, #8
	lsls	r4, r3, #29
	bpl	.L290
	ldrh	r2, [r0, #660]
	mov	r7, r1
	ldr	r3, [r0, #664]
	cmp	r3, r2
	bgt	.L291
.L260:
	cmp	r7, #0
	beq	.L265
	ldr	r3, [r7, #8]
	lsls	r0, r3, #22
	bmi	.L292
.L262:
	ldr	r3, [r7, #128]
	cmp	r3, #0
	ble	.L269
	movs	r4, #0
	ldr	r2, [r7, #136]
	mov	r6, r4
	mvn	r8, #2
	mvn	r9, #1
	b	.L270
.L293:
	ldr	r3, [r5, #24]
	mov	r0, r10
	ldr	r2, [r5, #4]
	ldr	lr, [r5, #20]
	str	r3, [sp]
	ldr	r5, [r5, #8]
	mov	r3, lr
	str	r5, [sp, #4]
	bl	png_write_iTXt(PLT)
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #128]
	str	r8, [r2, r4]
.L267:
	adds	r6, r6, #1
	adds	r4, r4, #28
	cmp	r6, r3
	bge	.L269
.L270:
	ldr	r1, [r2, r4]
	adds	r5, r2, r4
	cmp	r1, #0
	bgt	.L293
	bne	.L268
	ldr	lr, [r5, #4]
	mov	r3, r1
	ldr	r2, [r5, #8]
	mov	r0, r10
	str	r1, [sp]
	adds	r6, r6, #1
	mov	r1, lr
	bl	png_write_zTXt(PLT)
	ldr	r3, [r7, #128]
	ldr	r2, [r7, #136]
	cmp	r6, r3
	str	r9, [r2, r4]
	add	r4, r4, #28
	blt	.L270
.L269:
	ldr	r3, [r7, #240]
	cbnz	r3, .L294
.L265:
	ldr	r3, [r10, #448]
	mov	r0, r10
	orr	r3, r3, #8
	str	r3, [r10, #448]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	png_write_IEND(PLT)
.L268:
	adds	r1, r1, #1
	bne	.L267
	ldr	r2, [r5, #8]
	movs	r3, #0
	mov	r0, r10
	ldr	r1, [r5, #4]
	bl	png_write_tEXt(PLT)
	ldr	r2, [r7, #136]
	ldr	r3, [r7, #128]
	str	r8, [r2, r4]
	b	.L267
.L292:
	ldr	r3, [r10, #448]
	lsls	r1, r3, #22
	bmi	.L262
	mov	r0, r10
	add	r1, r7, #140
	bl	png_write_tIME(PLT)
	b	.L262
.L291:
	ldr	r1, .L296
.LPIC32:
	add	r1, pc
	bl	png_benign_error(PLT)
	b	.L260
.L294:
	ldr	r4, [r7, #236]
	add	r2, r3, r3, lsl #2
	add	r2, r4, r2, lsl #2
	cmp	r4, r2
	bcs	.L265
	ldr	r5, .L296+4
	mov	r1, r4
.LPIC33:
	add	r5, pc
	b	.L276
.L271:
	add	r2, r3, r3, lsl #2
	adds	r4, r4, #20
	add	r2, r1, r2, lsl #2
	cmp	r4, r2
	bcs	.L265
.L276:
	ldrb	r2, [r4, #16]	@ zero_extendqisi2
	lsls	r2, r2, #28
	bpl	.L271
	mov	r0, r10
	mov	r1, r4
	bl	png_handle_as_unknown(PLT)
	cmp	r0, #1
	beq	.L289
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	lsls	r3, r3, #26
	bmi	.L273
	cmp	r0, #3
	beq	.L273
	cbnz	r0, .L289
	ldr	r3, [r10, #928]
	cmp	r3, #3
	bne	.L289
.L273:
	ldr	r3, [r4, #12]
	pld	[r4, #72]
	cbz	r3, .L295
.L275:
	mov	r0, r10
	mov	r1, r4
	ldr	r2, [r4, #8]
	bl	png_write_chunk(PLT)
.L289:
	ldr	r1, [r7, #236]
	ldr	r3, [r7, #240]
	b	.L271
.L288:
	bx	lr
.L295:
	mov	r0, r10
	mov	r1, r5
	bl	png_warning(PLT)
	ldr	r3, [r4, #12]
	b	.L275
.L290:
	ldr	r1, .L296+8
.LPIC31:
	add	r1, pc
	bl	png_error(PLT)
.L297:
	.align	2
.L296:
	.word	.LC6-(.LPIC32+4)
	.word	.LC3-(.LPIC33+4)
	.word	.LC5-(.LPIC31+4)
	.size	png_write_end, .-png_write_end
	.section	.text.png_convert_from_struct_tm,"ax",%progbits
	.align	2
	.global	png_convert_from_struct_tm
	.thumb
	.thumb_func
	.type	png_convert_from_struct_tm, %function
png_convert_from_struct_tm:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #16]
	ldr	r2, [r1, #20]
	adds	r3, r3, #1
	strb	r3, [r0, #2]
	addw	r2, r2, #1900
	ldr	r3, [r1, #12]
	strh	r2, [r0]	@ movhi
	strb	r3, [r0, #3]
	ldr	r3, [r1, #8]
	strb	r3, [r0, #4]
	ldr	r3, [r1, #4]
	strb	r3, [r0, #5]
	ldr	r3, [r1]
	strb	r3, [r0, #6]
	bx	lr
	.size	png_convert_from_struct_tm, .-png_convert_from_struct_tm
	.section	.text.png_convert_from_time_t,"ax",%progbits
	.align	2
	.global	png_convert_from_time_t
	.thumb
	.thumb_func
	.type	png_convert_from_time_t, %function
png_convert_from_time_t:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	add	r3, sp, #8
	mov	r4, r0
	str	r1, [r3, #-4]!
	mov	r0, r3
	bl	gmtime(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	png_convert_from_struct_tm(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	png_convert_from_time_t, .-png_convert_from_time_t
	.section	.text.png_create_write_struct_2,"ax",%progbits
	.align	2
	.global	png_create_write_struct_2
	.thumb
	.thumb_func
	.type	png_create_write_struct_2, %function
png_create_write_struct_2:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #16
	ldr	r4, [sp, #40]
	ldr	r6, [sp, #32]
	ldr	r5, [sp, #36]
	str	r4, [sp, #8]
	str	r6, [sp]
	str	r5, [sp, #4]
	bl	png_create_png_struct(PLT)
	mov	r4, r0
	cbz	r0, .L302
	ldr	r3, [r0, #452]
	mov	r2, #8192
	vldr	d20, .L307
	movs	r1, #0
	str	r2, [r0, #524]
	mov	r2, r1
	vldr	d19, .L307+8
	orr	r3, r3, #2097152
	str	r3, [r0, #452]
	mov	r3, r1
	vldr	d18, .L307+16
	vldr	d17, .L307+24
	vldr	d16, .L307+32
	vstr	d20, [r0, #528]
	vstr	d19, [r0, #536]
	vstr	d18, [r0, #544]
	vstr	d17, [r0, #552]
	vstr	d16, [r0, #560]
	bl	png_set_write_fn(PLT)
.L302:
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L308:
	.align	3
.L307:
	.word	-1
	.word	8
	.word	15
	.word	8
	.word	1
	.word	-1
	.word	8
	.word	15
	.word	8
	.word	0
	.size	png_create_write_struct_2, .-png_create_write_struct_2
	.section	.text.png_create_write_struct,"ax",%progbits
	.align	2
	.global	png_create_write_struct
	.thumb
	.thumb_func
	.type	png_create_write_struct, %function
png_create_write_struct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, #0
	sub	sp, sp, #16
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	bl	png_create_write_struct_2(PLT)
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
	.size	png_create_write_struct, .-png_create_write_struct
	.section	.text.png_write_row,"ax",%progbits
	.align	2
	.global	png_write_row
	.thumb
	.thumb_func
	.type	png_write_row, %function
png_write_row:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L392
	ldr	r3, [r0, #612]
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	sub	sp, sp, #28
	cbnz	r3, .L313
	ldrb	r3, [r0, #673]	@ zero_extendqisi2
	cbnz	r3, .L313
	ldr	r3, [r0, #448]
	lsls	r5, r3, #21
	bpl	.L394
	str	r1, [sp, #4]
	bl	png_write_start_row(PLT)
	ldr	r1, [sp, #4]
.L313:
	ldrb	r3, [r4, #672]	@ zero_extendqisi2
	cbz	r3, .L315
	ldr	r3, [r4, #456]
	lsls	r0, r3, #30
	bpl	.L315
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #6
	bhi	.L315
	tbh	[pc, r3, lsl #1]
.L317:
	.2byte	(.L316-.L317)/2
	.2byte	(.L318-.L317)/2
	.2byte	(.L319-.L317)/2
	.2byte	(.L320-.L317)/2
	.2byte	(.L321-.L317)/2
	.2byte	(.L322-.L317)/2
	.2byte	(.L323-.L317)/2
.L322:
	ldr	r3, [r4, #612]
	lsls	r6, r3, #31
	bmi	.L324
	ldr	r3, [r4, #588]
	cmp	r3, #1
	bls	.L324
.L315:
	ldrb	r0, [r4, #677]	@ zero_extendqisi2
	ldrb	r3, [r4, #680]	@ zero_extendqisi2
	ldr	r2, [r4, #600]
	strb	r0, [sp, #17]
	strb	r3, [sp, #18]
	smulbb	r3, r0, r3
	ldr	r0, [r4, #624]
	ldrb	r5, [r4, #675]	@ zero_extendqisi2
	str	r2, [sp, #8]
	uxtb	r3, r3
	adds	r0, r0, #1
	strb	r5, [sp, #16]
	cmp	r3, #7
	strb	r3, [sp, #19]
	iteet	ls
	mulls	r3, r2, r3
	lsrhi	r3, r3, #3
	mulhi	r3, r2, r3
	addls	r3, r3, #7
	it	ls
	lsrls	r3, r3, #3
	mov	r2, r3
	str	r3, [sp, #12]
	bl	memcpy(PLT)
	ldrb	r3, [r4, #672]	@ zero_extendqisi2
	cbz	r3, .L327
	ldrb	r2, [r4, #673]	@ zero_extendqisi2
	cmp	r2, #5
	bhi	.L327
	ldr	r3, [r4, #456]
	lsls	r0, r3, #30
	bpl	.L328
	ldr	r1, [r4, #624]
	add	r0, sp, #8
	adds	r1, r1, #1
	bl	png_do_write_interlace(PLT)
	ldr	r3, [sp, #8]
	cmp	r3, #0
	beq	.L324
.L327:
	ldr	r3, [r4, #456]
.L328:
	cmp	r3, #0
	bne	.L395
.L329:
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	ldrb	r3, [r4, #678]	@ zero_extendqisi2
	cmp	r3, r2
	bne	.L330
	ldrb	r2, [r4, #683]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L330
	ldr	r3, [r4, #948]
	lsls	r1, r3, #29
	bmi	.L332
.L393:
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
.L333:
	cmp	r3, #3
	it	ne
	addne	r5, sp, #8
	beq	.L396
.L342:
	mov	r1, r5
	mov	r0, r4
	bl	png_write_find_filter(PLT)
	ldr	r3, [r4, #788]
	cbz	r3, .L311
	mov	r0, r4
	ldr	r1, [r4, #612]
	ldrb	r2, [r4, #673]	@ zero_extendqisi2
	blx	r3
.L311:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L332:
	ldrb	r3, [r4, #952]	@ zero_extendqisi2
	cmp	r3, #64
	bne	.L393
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
	ldr	r1, [r4, #624]
	lsls	r2, r3, #30
	bpl	.L333
	ldrb	r0, [sp, #17]	@ zero_extendqisi2
	adds	r2, r1, #1
	ldr	r6, [sp, #8]
	cmp	r0, #8
	beq	.L397
	cmp	r0, #16
	bne	.L333
	cmp	r3, #2
	beq	.L346
	cmp	r3, #6
	it	eq
	moveq	r7, #8
	bne	.L333
.L339:
	cmp	r6, #0
	beq	.L333
	mov	r3, r1
	movs	r1, #0
.L341:
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	ip, [r2, #4]	@ zero_extendqisi2
	cmp	r1, r6
	ldrb	r5, [r2, #1]	@ zero_extendqisi2
	ldrb	lr, [r2, #5]	@ zero_extendqisi2
	ldrb	r9, [r2, #2]	@ zero_extendqisi2
	ldrb	r0, [r2, #3]	@ zero_extendqisi2
	orr	r5, r5, r8, lsl #8
	orr	lr, lr, ip, lsl #8
	orr	r0, r0, r9, lsl #8
	sub	r5, r5, r0
	rsb	r0, r0, lr
	uxth	r5, r5
	uxth	r0, r0
	lsr	ip, r5, #8
	lsr	lr, r0, #8
	strb	ip, [r3, #1]
	add	r3, r3, r7
	strb	r5, [r2, #1]
	strb	r0, [r2, #5]
	strb	lr, [r2, #4]
	add	r2, r2, r7
	bne	.L341
	b	.L393
.L395:
	mov	r0, r4
	add	r1, sp, #8
	bl	png_do_write_transformations(PLT)
	b	.L329
.L396:
	ldr	r3, [r4, #664]
	add	r5, sp, #8
	cmp	r3, #0
	blt	.L342
	mov	r0, r4
	mov	r1, r5
	bl	png_do_check_palette_indexes(PLT)
	b	.L342
.L319:
	ldr	r3, [r4, #612]
	and	r3, r3, #7
	cmp	r3, #4
	beq	.L315
.L324:
	mov	r0, r4
	bl	png_write_finish_row(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L392:
	bx	lr
.L316:
	ldr	r3, [r4, #612]
	lsls	r2, r3, #29
	beq	.L315
	b	.L324
.L318:
	ldr	r3, [r4, #612]
	lsls	r3, r3, #29
	bne	.L324
	ldr	r3, [r4, #588]
	cmp	r3, #4
	bls	.L324
	b	.L315
.L320:
	ldr	r3, [r4, #612]
	lsls	r7, r3, #30
	bne	.L324
	ldr	r3, [r4, #588]
	cmp	r3, #2
	bls	.L324
	b	.L315
.L321:
	ldr	r3, [r4, #612]
	and	r3, r3, #3
	cmp	r3, #2
	bne	.L324
	b	.L315
.L323:
	ldr	r3, [r4, #612]
	lsls	r5, r3, #31
	bpl	.L324
	b	.L315
.L397:
	cmp	r3, #2
	beq	.L345
	cmp	r3, #6
	it	eq
	moveq	r5, #4
	bne	.L333
.L336:
	cmp	r6, #0
	beq	.L333
	mov	r3, r1
	movs	r1, #0
.L338:
	ldrb	r0, [r2, #1]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r7, [r3, #1]	@ zero_extendqisi2
	cmp	r1, r6
	sub	r7, r7, r0
	strb	r7, [r3, #1]
	add	r3, r3, r5
	ldrb	r7, [r2, #2]	@ zero_extendqisi2
	sub	r0, r7, r0
	strb	r0, [r2, #2]
	add	r2, r2, r5
	bne	.L338
	b	.L393
.L345:
	movs	r5, #3
	b	.L336
.L346:
	movs	r7, #6
	b	.L339
.L330:
	ldr	r1, .L398
	mov	r0, r4
.LPIC35:
	add	r1, pc
	bl	png_error(PLT)
.L394:
	ldr	r1, .L398+4
.LPIC34:
	add	r1, pc
	bl	png_error(PLT)
.L399:
	.align	2
.L398:
	.word	.LC8-(.LPIC35+4)
	.word	.LC7-(.LPIC34+4)
	.size	png_write_row, .-png_write_row
	.section	.text.png_write_rows,"ax",%progbits
	.align	2
	.global	png_write_rows
	.thumb
	.thumb_func
	.type	png_write_rows, %function
png_write_rows:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0
	cmp	r0, #0
	beq	.L400
	mov	r9, r2
	cmp	r2, #0
	beq	.L400
	cmp	r2, #8
	mov	r7, r1
	sub	r10, r2, #7
	bls	.L406
	add	r4, r1, #32
	mov	r8, #0
.L404:
	ldr	r1, [r4, #-32]
	mov	r0, r5
	pld	[r4, #16]
	add	r6, r8, #8
	bl	png_write_row(PLT)
	ldr	r1, [r4, #-28]
	mov	r0, r5
	bl	png_write_row(PLT)
	ldr	r1, [r4, #-24]
	mov	r0, r5
	bl	png_write_row(PLT)
	ldr	r1, [r4, #-20]
	mov	r0, r5
	bl	png_write_row(PLT)
	ldr	r1, [r4, #-16]
	mov	r0, r5
	bl	png_write_row(PLT)
	ldr	r1, [r4, #-12]
	mov	r0, r5
	bl	png_write_row(PLT)
	ldr	r1, [r4, #-8]
	mov	r0, r5
	bl	png_write_row(PLT)
	ldr	r1, [r4, #-4]
	mov	r0, r5
	bl	png_write_row(PLT)
	add	r3, r8, #9
	mov	r7, r4
	cmp	r10, r3
	add	r4, r4, #32
	mov	r8, r6
	bhi	.L404
.L405:
	adds	r6, r6, #1
	mov	r0, r5
	ldr	r1, [r7], #4
	bl	png_write_row(PLT)
	cmp	r6, r9
	bcc	.L405
.L400:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L406:
	movs	r6, #0
	b	.L405
	.size	png_write_rows, .-png_write_rows
	.section	.text.png_write_image,"ax",%progbits
	.align	2
	.global	png_write_image
	.thumb
	.thumb_func
	.type	png_write_image, %function
png_write_image:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L424
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r9, r1
	mov	r6, r0
	bl	png_set_interlace_handling(PLT)
	subs	r8, r0, #0
	ble	.L411
	ldr	r3, [r6, #592]
	movs	r7, #0
.L413:
	cbz	r3, .L415
	sub	r5, r9, #4
	movs	r4, #0
.L416:
	mov	r0, r6
	ldr	r1, [r5, #4]!
	bl	png_write_row(PLT)
	ldr	r3, [r6, #592]
	adds	r4, r4, #1
	cmp	r3, r4
	bhi	.L416
.L415:
	adds	r7, r7, #1
	cmp	r7, r8
	bne	.L413
.L411:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L424:
	bx	lr
	.size	png_write_image, .-png_write_image
	.section	.text.png_write_image_8bit,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_write_image_8bit, %function
png_write_image_8bit:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #20]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	ldr	r3, [r0]
	str	r2, [sp, #28]
	ldr	r2, [r0, #28]
	ldr	r1, [r3]
	ldr	r9, .L474
	str	r2, [sp, #36]
	ldr	r2, [r3, #16]
	ldr	r1, [r1]
.LPIC36:
	add	r9, pc
	str	r0, [sp, #40]
	lsls	r4, r2, #30
	ldr	r5, [r3, #12]
	str	r1, [sp, #44]
	bpl	.L445
	movs	r1, #4
	movs	r7, #3
	mov	r8, #6
	str	r7, [sp, #16]
	str	r8, [sp, #20]
	str	r7, [sp, #24]
.L426:
	lsls	r0, r2, #31
	bpl	.L427
	lsls	r2, r2, #26
	bpl	.L428
	ldr	r2, [sp, #28]
	mvn	r7, #1
	mov	r8, #-1
	str	r7, [sp, #20]
	str	r8, [sp, #16]
	adds	r2, r2, #2
	str	r2, [sp, #28]
	ldr	r2, [sp, #36]
	adds	r2, r2, #1
	str	r2, [sp, #36]
.L428:
	ldr	r3, [r3, #8]
	ldr	r2, [sp, #36]
	mla	r8, r3, r1, r2
	cmp	r5, #0
	beq	.L429
	str	r5, [sp, #32]
.L430:
	ldr	r2, [sp, #36]
	cmp	r2, r8
	bcs	.L439
	ldr	r5, [sp, #28]
	mov	r4, r2
.L440:
	ldr	r3, [sp, #20]
	ldr	r7, [sp, #16]
	ldrh	r6, [r5, r3]
	rsb	r3, r6, r6, lsl #8
	add	r3, r3, #32768
	adds	r3, r3, #127
	ubfx	r3, r3, #16, #8
	subs	r2, r3, #1
	strb	r3, [r4, r7]
	uxtb	r3, r2
	cmp	r3, #253
	it	hi
	movhi	r0, #0
	bhi	.L431
	movw	r0, #32896
	lsrs	r3, r6, #1
	movt	r0, 32639
	add	r0, r0, r3
	mov	r1, r6
	bl	__aeabi_idiv(PLT)
.L431:
	cmp	r6, #127
	movw	r1, #65406
	ite	hi
	movhi	lr, #0
	movls	lr, #1
	cmp	r6, r1
	bls	.L432
	ldr	r1, [sp, #24]
	mov	ip, r6
	b	.L435
.L433:
	subs	r1, r1, #1
	strb	r7, [r0, #-1]
	cmp	r1, #0
	ble	.L434
.L472:
	mov	r5, r3
	mov	r4, r0
.L435:
	mov	r3, r5
	adds	r0, r4, #1
	ldrh	r2, [r3], #2
	movs	r7, #255
	cmp	ip, r2
	ite	hi
	movhi	r6, lr
	orrls	r6, lr, #1
	cmp	r6, #0
	bne	.L433
	ldr	r6, .L474+4
	rsb	fp, r2, r2, lsl #8
	ldr	r7, .L474+8
	cmp	r2, #0
	beq	.L448
	ldr	r6, [r9, r6]
	lsr	r10, fp, #15
	ldr	r2, [r9, r7]
	ubfx	fp, fp, #0, #15
	subs	r1, r1, #1
	ldrb	r7, [r6, r10]	@ zero_extendqisi2
	cmp	r1, #0
	ldrh	r2, [r2, r10, lsl #1]
	mul	r7, fp, r7
	add	r7, r2, r7, lsr #12
	ubfx	r7, r7, #8, #8
	strb	r7, [r0, #-1]
	bgt	.L472
.L434:
	adds	r4, r4, #2
	adds	r5, r5, #4
	cmp	r8, r4
	bhi	.L440
.L439:
	ldr	r2, [sp, #40]
	ldr	r0, [sp, #44]
	ldr	r1, [r2, #28]
	bl	png_write_row(PLT)
	ldr	r2, [sp, #40]
	ldr	r3, [r2, #24]
	ldr	r2, [sp, #28]
	bic	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [sp, #32]
	str	r2, [sp, #28]
	subs	r3, r3, #1
	str	r3, [sp, #32]
	bne	.L430
.L429:
	movs	r0, #1
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L427:
	ldr	r4, [r3, #8]
	ldr	r7, [sp, #16]
	ldr	r3, [sp, #36]
	mla	r4, r4, r7, r3
	cmp	r5, #0
	beq	.L429
	ldr	r7, [sp, #28]
	mov	fp, r3
	ldr	r8, [sp, #44]
	ldr	r10, [sp, #40]
.L441:
	cmp	fp, r4
	bcs	.L443
	ldr	r0, .L474+4
	mov	r3, fp
	ldr	r2, .L474+8
	mov	r1, r7
	ldr	lr, [r9, r0]
	ldr	r0, [r9, r2]
.L444:
	ldrh	r6, [r1], #2
	rsb	r6, r6, r6, lsl #8
	lsrs	r2, r6, #15
	ubfx	r6, r6, #0, #15
	ldrb	ip, [lr, r2]	@ zero_extendqisi2
	ldrh	r2, [r0, r2, lsl #1]
	mul	r6, r6, ip
	add	r2, r2, r6, lsr #12
	lsrs	r2, r2, #8
	strb	r2, [r3], #1
	cmp	r3, r4
	bne	.L444
.L443:
	mov	r0, r8
	mov	r1, fp
	bl	png_write_row(PLT)
	ldr	r3, [r10, #24]
	subs	r5, r5, #1
	bic	r3, r3, #1
	add	r7, r7, r3
	bne	.L441
	movs	r0, #1
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L445:
	movs	r7, #2
	mov	r8, #1
	str	r7, [sp, #20]
	mov	r1, r7
	str	r8, [sp, #16]
	str	r8, [sp, #24]
	b	.L426
.L448:
	mov	r7, r2
	b	.L433
.L432:
	ldr	r2, [sp, #24]
	str	r8, [sp, #4]
	b	.L437
.L436:
	subs	r2, r2, #1
	strb	ip, [r1, #-1]
	cmp	r2, #0
	ble	.L469
.L473:
	mov	r5, r3
	mov	r4, r1
.L437:
	mov	r3, r5
	adds	r1, r4, #1
	ldrh	r7, [r3], #2
	mov	ip, #255
	cmp	r6, r7
	ite	hi
	movhi	r10, lr
	orrls	r10, lr, #1
	cmp	r10, #0
	bne	.L436
	mul	r10, r0, r7
	ldr	fp, .L474+4
	ldr	ip, .L474+8
	cbz	r7, .L450
	ldr	r7, [r9, fp]
	add	r10, r10, #64
	subs	r2, r2, #1
	cmp	r2, #0
	str	r7, [sp, #12]
	ldr	r7, [r9, ip]
	lsr	ip, r10, #22
	ubfx	r10, r10, #7, #15
	str	r7, [sp, #8]
	ldr	r7, [sp, #12]
	ldr	r8, [sp, #8]
	ldrb	fp, [r7, ip]	@ zero_extendqisi2
	ldrh	r7, [r8, ip, lsl #1]
	mul	ip, r10, fp
	add	ip, r7, ip, lsr #12
	ubfx	ip, ip, #8, #8
	strb	ip, [r1, #-1]
	bgt	.L473
.L469:
	ldr	r8, [sp, #4]
	adds	r4, r4, #2
	adds	r5, r5, #4
	cmp	r8, r4
	bhi	.L440
	b	.L439
.L450:
	mov	ip, r7
	b	.L436
.L475:
	.align	2
.L474:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.size	png_write_image_8bit, .-png_write_image_8bit
	.section	.text.png_write_image_16bit,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_write_image_16bit, %function
png_write_image_16bit:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	str	r0, [sp, #16]
	ldr	r2, [r3]
	ldr	r10, [r0, #20]
	ldr	r1, [r0, #28]
	ldr	r0, [r3, #16]
	ldr	r2, [r2]
	ldr	r4, [r3, #12]
	lsls	r7, r0, #30
	str	r2, [sp, #24]
	itete	pl
	movpl	r8, #2
	movmi	r2, #3
	movpl	r2, #1
	movmi	r8, #6
	ittee	mi
	movmi	r5, #4
	strmi	r2, [sp, #4]
	movpl	r5, r8
	strpl	r2, [sp, #4]
	lsls	r6, r0, #31
	bpl	.L478
	lsls	r2, r0, #26
	it	pl
	strpl	r1, [sp]
	bpl	.L479
	add	r10, r10, #2
	mvn	r8, #1
	adds	r2, r1, #2
	str	r2, [sp]
.L479:
	ldr	r3, [r3, #8]
	subs	r2, r4, #1
	str	r2, [sp, #28]
	lsl	r9, r3, #1
	ldr	r3, [sp]
	mla	r9, r5, r9, r3
	cmp	r4, #0
	beq	.L480
	ldr	r3, [sp, #4]
	movs	r2, #0
	str	r2, [sp, #12]
	mov	fp, r8
	ldr	r2, [sp, #4]
	movw	r7, #65535
	adds	r3, r3, #1
	mov	r8, r10
	lsls	r3, r3, #1
	str	r1, [sp, #20]
	cmp	r2, #0
	it	eq
	moveq	r3, #4
	str	r3, [sp, #8]
.L481:
	ldr	r2, [sp]
	cmp	r2, r9
	bcs	.L487
	mov	r10, #0
.L488:
	add	r5, r8, r10
	ldr	r4, [sp]
	ldrh	r6, [r5, fp]
	movw	r2, #65533
	add	r4, r4, r10
	subs	r3, r6, #1
	strh	r6, [r4, fp]	@ movhi
	uxth	r3, r3
	cmp	r3, r2
	it	hi
	movhi	r0, #0
	bhi	.L482
	lsrs	r0, r6, #1
	mov	r1, r6
	sub	r0, r0, #-2147450880
	bl	__aeabi_idiv(PLT)
.L482:
	ldr	lr, [sp, #4]
	b	.L485
.L501:
	mov	r4, r2
.L485:
	ldrh	r3, [r5], #2
	cmp	r6, r3
	it	ls
	movwls	r3, #65535
	bls	.L483
	cmp	r3, #0
	it	ne
	cmpne	r6, r7
	ittt	ne
	mulne	r3, r0, r3
	addne	r3, r3, #16384
	ubfxne	r3, r3, #15, #16
.L483:
	add	lr, lr, #-1
	mov	r2, r4
	cmp	lr, #0
	strh	r3, [r2], #2	@ movhi
	bgt	.L501
	adds	r4, r4, #4
	ldr	r3, [sp, #8]
	cmp	r9, r4
	add	r10, r10, r3
	bhi	.L488
.L487:
	ldr	r1, [sp, #20]
	ldr	r0, [sp, #24]
	bl	png_write_row(PLT)
	ldr	r2, [sp, #16]
	ldr	r3, [r2, #24]
	ldr	r2, [sp, #12]
	bic	r3, r3, #1
	add	r8, r8, r3
	ldr	r3, [sp, #28]
	cmp	r3, r2
	beq	.L480
	ldr	r3, [sp, #16]
	adds	r2, r2, #1
	str	r2, [sp, #12]
	ldr	r3, [r3, #28]
	str	r3, [sp, #20]
	b	.L481
.L480:
	movs	r0, #1
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L478:
	ldr	r1, .L502
	ldr	r0, [sp, #24]
.LPIC37:
	add	r1, pc
	bl	png_error(PLT)
.L503:
	.align	2
.L502:
	.word	.LC9-(.LPIC37+4)
	.size	png_write_image_16bit, .-png_write_image_16bit
	.section	.text.png_set_flush,"ax",%progbits
	.align	2
	.global	png_set_flush
	.thumb
	.thumb_func
	.type	png_set_flush, %function
png_set_flush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L504
	bic	r1, r1, r1, asr #31
	str	r1, [r0, #716]
.L504:
	bx	lr
	.size	png_set_flush, .-png_set_flush
	.section	.text.png_write_flush,"ax",%progbits
	.align	2
	.global	png_write_flush
	.thumb
	.thumb_func
	.type	png_write_flush, %function
png_write_flush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L515
	ldr	r2, [r0, #612]
	ldr	r3, [r0, #596]
	push	{r4, lr}
	mov	r4, r0
	cmp	r2, r3
	bcc	.L516
	pop	{r4, pc}
.L516:
	movs	r1, #0
	movs	r3, #2
	mov	r2, r1
	bl	png_compress_IDAT(PLT)
	movs	r3, #0
	mov	r0, r4
	str	r3, [r4, #720]
	pop	{r4, lr}
	b	png_flush(PLT)
.L515:
	bx	lr
	.size	png_write_flush, .-png_write_flush
	.section	.text.png_destroy_write_struct,"ax",%progbits
	.align	2
	.global	png_destroy_write_struct
	.thumb
	.thumb_func
	.type	png_destroy_write_struct, %function
png_destroy_write_struct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	cmp	r0, #0
	beq	.L517
	ldr	r4, [r0]
	cmp	r4, #0
	beq	.L517
	mov	r0, r4
	bl	png_destroy_info_struct(PLT)
	ldr	r3, [r4, #452]
	movs	r2, #0
	str	r2, [r5]
	lsls	r3, r3, #30
	bmi	.L542
.L519:
	mov	r0, r4
	add	r1, r4, #520
	bl	png_free_buffer_list(PLT)
	mov	r0, r4
	ldr	r1, [r4, #624]
	bl	png_free(PLT)
	mov	r0, r4
	ldr	r1, [r4, #620]
	bl	png_free(PLT)
	mov	r0, r4
	ldr	r1, [r4, #628]
	bl	png_free(PLT)
	mov	r0, r4
	ldr	r1, [r4, #632]
	bl	png_free(PLT)
	mov	r0, r4
	ldr	r1, [r4, #636]
	bl	png_free(PLT)
	ldr	r1, [r4, #640]
	mov	r0, r4
	bl	png_free(PLT)
	ldr	r1, [r4, #864]
	movs	r3, #0
	movs	r2, #1
	strb	r3, [r4, #861]
	strb	r2, [r4, #860]
	cbz	r1, .L520
	str	r3, [r4, #864]
	mov	r0, r4
	bl	png_free(PLT)
.L520:
	ldr	r1, [r4, #868]
	cbz	r1, .L521
	movs	r3, #0
	mov	r0, r4
	str	r3, [r4, #868]
	bl	png_free(PLT)
.L521:
	ldr	r1, [r4, #872]
	cbz	r1, .L522
	movs	r3, #0
	mov	r0, r4
	str	r3, [r4, #872]
	bl	png_free(PLT)
.L522:
	mov	r0, r4
	ldr	r1, [r4, #876]
	bl	png_free(PLT)
	mov	r0, r4
	ldr	r1, [r4, #880]
	bl	png_free(PLT)
	mov	r0, r4
	ldr	r1, [r4, #936]
	bl	png_free(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	png_destroy_png_struct(PLT)
.L542:
	add	r0, r4, #464
	bl	deflateEnd(PLT)
	b	.L519
.L517:
	pop	{r3, r4, r5, pc}
	.size	png_destroy_write_struct, .-png_destroy_write_struct
	.section	.text.png_set_filter,"ax",%progbits
	.align	2
	.global	png_set_filter
	.thumb
	.thumb_func
	.type	png_set_filter, %function
png_set_filter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cmp	r0, #0
	beq	.L543
	ldr	r3, [r0, #948]
	lsls	r0, r3, #29
	bmi	.L587
.L545:
	cmp	r1, #0
	bne	.L547
.L546:
	uxtb	r2, r2
	cmp	r2, #7
	bhi	.L548
	tbb	[pc, r2]
.L550:
	.byte	(.L549-.L550)/2
	.byte	(.L551-.L550)/2
	.byte	(.L552-.L550)/2
	.byte	(.L553-.L550)/2
	.byte	(.L554-.L550)/2
	.byte	(.L555-.L550)/2
	.byte	(.L555-.L550)/2
	.byte	(.L555-.L550)/2
	.align	1
.L555:
	ldr	r1, .L595
	mov	r0, r4
.LPIC38:
	add	r1, pc
	bl	png_app_error(PLT)
.L549:
	movs	r2, #8
	strb	r2, [r4, #674]
.L556:
	ldr	r3, [r4, #624]
	cbz	r3, .L543
	lsls	r3, r2, #27
	bpl	.L557
	ldr	r3, [r4, #628]
	cmp	r3, #0
	beq	.L588
.L557:
	lsls	r0, r2, #26
	bpl	.L558
	ldr	r3, [r4, #632]
	cmp	r3, #0
	beq	.L589
.L558:
	lsls	r1, r2, #25
	bpl	.L560
	ldr	r3, [r4, #636]
	cbz	r3, .L590
.L560:
	lsls	r3, r2, #24
	bpl	.L562
	ldr	r3, [r4, #640]
	cbz	r3, .L591
.L543:
	pop	{r4, pc}
.L587:
	cmp	r1, #64
	bne	.L545
	b	.L546
.L591:
	ldr	r3, [r4, #620]
	cmp	r3, #0
	beq	.L592
	ldr	r1, [r4, #604]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_malloc(PLT)
	ldrb	r2, [r4, #674]	@ zero_extendqisi2
	movs	r3, #4
	str	r0, [r4, #640]
	strb	r3, [r0]
.L562:
	cmp	r2, #0
	bne	.L543
	movs	r3, #8
	strb	r3, [r4, #674]
	pop	{r4, pc}
.L551:
	movs	r2, #16
	strb	r2, [r4, #674]
	b	.L556
.L552:
	movs	r2, #32
	strb	r2, [r4, #674]
	b	.L556
.L553:
	movs	r2, #64
	strb	r2, [r4, #674]
	b	.L556
.L554:
	movs	r2, #128
	strb	r2, [r4, #674]
	b	.L556
.L548:
	strb	r2, [r4, #674]
	b	.L556
.L590:
	ldr	r3, [r4, #620]
	cbz	r3, .L593
	ldr	r1, [r4, #604]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_malloc(PLT)
	movs	r3, #3
	ldrb	r2, [r4, #674]	@ zero_extendqisi2
	str	r0, [r4, #636]
	strb	r3, [r0]
	b	.L560
.L589:
	ldr	r3, [r4, #620]
	cbz	r3, .L594
	ldr	r1, [r4, #604]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_malloc(PLT)
	movs	r3, #2
	ldrb	r2, [r4, #674]	@ zero_extendqisi2
	str	r0, [r4, #632]
	strb	r3, [r0]
	b	.L558
.L588:
	ldr	r1, [r4, #604]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_malloc(PLT)
	movs	r3, #1
	ldrb	r2, [r4, #674]	@ zero_extendqisi2
	str	r0, [r4, #628]
	strb	r3, [r0]
	b	.L557
.L594:
	ldr	r1, .L595+4
	mov	r0, r4
.LPIC39:
	add	r1, pc
	bl	png_warning(PLT)
	ldrb	r2, [r4, #674]	@ zero_extendqisi2
	and	r2, r2, #223
	strb	r2, [r4, #674]
	b	.L558
.L593:
	ldr	r1, .L595+8
	mov	r0, r4
.LPIC40:
	add	r1, pc
	bl	png_warning(PLT)
	ldrb	r2, [r4, #674]	@ zero_extendqisi2
	and	r2, r2, #191
	strb	r2, [r4, #674]
	b	.L560
.L592:
	ldr	r1, .L595+12
	mov	r0, r4
.LPIC41:
	add	r1, pc
	bl	png_warning(PLT)
	ldrb	r2, [r4, #674]	@ zero_extendqisi2
	and	r2, r2, #127
	strb	r2, [r4, #674]
	b	.L562
.L547:
	ldr	r1, .L595+16
	mov	r0, r4
.LPIC42:
	add	r1, pc
	bl	png_error(PLT)
.L596:
	.align	2
.L595:
	.word	.LC10-(.LPIC38+4)
	.word	.LC11-(.LPIC39+4)
	.word	.LC12-(.LPIC40+4)
	.word	.LC13-(.LPIC41+4)
	.word	.LC14-(.LPIC42+4)
	.size	png_set_filter, .-png_set_filter
	.section	.text.png_set_filter_heuristics,"ax",%progbits
	.align	2
	.global	png_set_filter_heuristics
	.thumb
	.thumb_func
	.type	png_set_filter_heuristics, %function
png_set_filter_heuristics:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r3
	mov	r6, r0
	mov	r4, r1
	mov	r8, r2
	ldr	r5, [sp, #24]
	bl	png_init_filter_heuristics(PLT)
	cbz	r0, .L597
	cmp	r4, #2
	beq	.L623
.L597:
	pop	{r4, r5, r6, r7, r8, pc}
.L623:
	cmp	r8, #0
	ble	.L600
	mov	r3, r7
	ldr	r0, [r6, #868]
	ldr	r7, [r6, #872]
	add	r2, r3, r8, lsl #3
	fldd	d17, .L624
	movs	r1, #0
	fconstd	d18, #96
	mov	lr, #256
.L604:
	fldmiad	r3!, {d16}
	fcpyd	d7, d18
	fdivd	d19, d17, d16
	fmacd	d7, d16, d17
	fcmpezd	d16
	fmstat
	ittee	ls
	strhls	lr, [r0, r1]	@ movhi
	strhls	lr, [r7, r1]	@ movhi
	ftouizdhi	s11, d7
	fmrshi	r4, s11	@ int
	itttt	hi
	strhhi	r4, [r7, r1]	@ movhi
	fadddhi	d7, d19, d18
	ftouizdhi	s13, d7
	fmrshi	r4, s13	@ int
	it	hi
	strhhi	r4, [r0, r1]	@ movhi
	cmp	r3, r2
	add	r1, r1, #2
	bne	.L604
.L600:
	fldd	d16, [r5]
	fconstd	d17, #112
	fcmped	d16, d17
	fmstat
	blt	.L605
	fconstd	d18, #32
	fconstd	d17, #96
	fdivd	d7, d18, d16
	fcpyd	d6, d17
	ldr	r3, [r6, #880]
	fmacd	d6, d16, d18
	ldr	r2, [r6, #876]
	ftouizd	s11, d6
	fmrs	r1, s11	@ int
	faddd	d7, d7, d17
	ftouizd	s13, d7
	fmrs	r0, s13	@ int
	strh	r0, [r3]	@ movhi
	strh	r1, [r2]	@ movhi
.L605:
	fldd	d16, [r5, #8]
	fconstd	d17, #112
	fcmped	d16, d17
	fmstat
	blt	.L607
	fconstd	d18, #32
	fconstd	d17, #96
	fdivd	d7, d18, d16
	fcpyd	d6, d17
	ldr	r3, [r6, #880]
	fmacd	d6, d16, d18
	ldr	r2, [r6, #876]
	ftouizd	s11, d6
	fmrs	r1, s11	@ int
	faddd	d7, d7, d17
	ftouizd	s13, d7
	fmrs	r0, s13	@ int
	strh	r0, [r3, #2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
.L607:
	fldd	d16, [r5, #16]
	fconstd	d17, #112
	fcmped	d16, d17
	fmstat
	blt	.L609
	fconstd	d18, #32
	fconstd	d17, #96
	fdivd	d7, d18, d16
	fcpyd	d6, d17
	ldr	r3, [r6, #880]
	fmacd	d6, d16, d18
	ldr	r2, [r6, #876]
	ftouizd	s11, d6
	fmrs	r1, s11	@ int
	faddd	d7, d7, d17
	ftouizd	s13, d7
	fmrs	r0, s13	@ int
	strh	r0, [r3, #4]	@ movhi
	strh	r1, [r2, #4]	@ movhi
.L609:
	fldd	d16, [r5, #24]
	fconstd	d17, #112
	fcmped	d16, d17
	fmstat
	blt	.L611
	fconstd	d18, #32
	fconstd	d17, #96
	fdivd	d7, d18, d16
	fcpyd	d6, d17
	ldr	r3, [r6, #880]
	fmacd	d6, d16, d18
	ldr	r2, [r6, #876]
	ftouizd	s11, d6
	fmrs	r1, s11	@ int
	faddd	d7, d7, d17
	ftouizd	s13, d7
	fmrs	r0, s13	@ int
	strh	r0, [r3, #6]	@ movhi
	strh	r1, [r2, #6]	@ movhi
.L611:
	fldd	d16, [r5, #32]
	fconstd	d17, #112
	fcmped	d16, d17
	fmstat
	blt	.L597
	fconstd	d18, #32
	fconstd	d17, #96
	fdivd	d7, d18, d16
	fcpyd	d6, d17
	ldr	r1, [r6, #880]
	fmacd	d6, d16, d18
	ldr	r3, [r6, #876]
	ftouizd	s11, d6
	fmrs	r2, s11	@ int
	faddd	d7, d7, d17
	ftouizd	s13, d7
	fmrs	r0, s13	@ int
	strh	r0, [r1, #8]	@ movhi
	strh	r2, [r3, #8]	@ movhi
	pop	{r4, r5, r6, r7, r8, pc}
.L625:
	.align	3
.L624:
	.word	0
	.word	1081081856
	.size	png_set_filter_heuristics, .-png_set_filter_heuristics
	.global	__aeabi_uidiv
	.section	.text.png_set_filter_heuristics_fixed,"ax",%progbits
	.align	2
	.global	png_set_filter_heuristics_fixed
	.thumb
	.thumb_func
	.type	png_set_filter_heuristics_fixed, %function
png_set_filter_heuristics_fixed:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r3
	mov	r5, r0
	mov	r4, r1
	mov	r6, r2
	bl	png_init_filter_heuristics(PLT)
	cbz	r0, .L626
	cmp	r4, #2
	beq	.L640
.L626:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L640:
	cmp	r6, #0
	ble	.L629
	ldr	r9, [r5, #872]
	movw	r10, #46473
	ldr	r8, [r5, #868]
	lsls	r6, r6, #1
	sub	r7, fp, #4
	movt	r10, 5368
	movs	r4, #0
	mov	fp, #256
.L632:
	ldr	r2, [r7, #4]!
	cmp	r2, #0
	mov	r1, r2
	lsl	lr, r2, #8
	it	le
	strhle	fp, [r8, r4]	@ movhi
	asr	r2, r2, #1
	it	le
	strhle	fp, [r9, r4]	@ movhi
	ble	.L631
	add	lr, lr, #49920
	add	r0, r2, #25559040
	add	lr, lr, #80
	add	r0, r0, #40960
	smull	r3, r2, r10, lr
	asr	lr, lr, #31
	rsb	lr, lr, r2, asr #13
	strh	lr, [r9, r4]	@ movhi
	bl	__aeabi_idiv(PLT)
	strh	r0, [r8, r4]	@ movhi
.L631:
	adds	r4, r4, #2
	cmp	r4, r6
	bne	.L632
.L629:
	ldr	r3, [sp, #40]
	ldr	r4, [r3]
	movw	r3, #34463
	movt	r3, 1
	cmp	r4, r3
	ble	.L633
	asrs	r0, r4, #1
	mov	r1, r4
	add	r4, r4, #6240
	ldr	r6, [r5, #880]
	add	r0, r0, #798720
	adds	r4, r4, #10
	add	r0, r0, #1280
	ubfx	r4, r4, #2, #27
	bl	__aeabi_uidiv(PLT)
	movw	r3, #23237
	ldr	r2, [r5, #876]
	movt	r3, 2684
	strh	r0, [r6]	@ movhi
	umull	r1, r3, r3, r4
	lsrs	r3, r3, #7
	strh	r3, [r2]	@ movhi
.L633:
	ldr	r3, [sp, #40]
	ldr	r4, [r3, #4]
	movw	r3, #34463
	movt	r3, 1
	cmp	r4, r3
	ble	.L634
	asrs	r0, r4, #1
	mov	r1, r4
	add	r4, r4, #6240
	ldr	r6, [r5, #880]
	add	r0, r0, #798720
	adds	r4, r4, #10
	add	r0, r0, #1280
	ubfx	r4, r4, #2, #27
	bl	__aeabi_uidiv(PLT)
	movw	r3, #23237
	ldr	r2, [r5, #876]
	movt	r3, 2684
	strh	r0, [r6, #2]	@ movhi
	umull	r1, r3, r3, r4
	lsrs	r3, r3, #7
	strh	r3, [r2, #2]	@ movhi
.L634:
	ldr	r3, [sp, #40]
	ldr	r4, [r3, #8]
	movw	r3, #34463
	movt	r3, 1
	cmp	r4, r3
	ble	.L635
	asrs	r0, r4, #1
	mov	r1, r4
	add	r4, r4, #6240
	ldr	r6, [r5, #880]
	add	r0, r0, #798720
	adds	r4, r4, #10
	add	r0, r0, #1280
	ubfx	r4, r4, #2, #27
	bl	__aeabi_uidiv(PLT)
	movw	r3, #23237
	ldr	r2, [r5, #876]
	movt	r3, 2684
	strh	r0, [r6, #4]	@ movhi
	umull	r1, r3, r3, r4
	lsrs	r3, r3, #7
	strh	r3, [r2, #4]	@ movhi
.L635:
	ldr	r3, [sp, #40]
	ldr	r4, [r3, #12]
	movw	r3, #34463
	movt	r3, 1
	cmp	r4, r3
	ble	.L636
	asrs	r0, r4, #1
	mov	r1, r4
	add	r4, r4, #6240
	ldr	r6, [r5, #880]
	add	r0, r0, #798720
	adds	r4, r4, #10
	add	r0, r0, #1280
	ubfx	r4, r4, #2, #27
	bl	__aeabi_uidiv(PLT)
	movw	r3, #23237
	ldr	r2, [r5, #876]
	movt	r3, 2684
	strh	r0, [r6, #6]	@ movhi
	umull	r1, r3, r3, r4
	lsrs	r3, r3, #7
	strh	r3, [r2, #6]	@ movhi
.L636:
	ldr	r3, [sp, #40]
	ldr	r4, [r3, #16]
	movw	r3, #34463
	movt	r3, 1
	cmp	r4, r3
	ble	.L626
	asrs	r0, r4, #1
	mov	r1, r4
	add	r4, r4, #6240
	ldr	r6, [r5, #880]
	add	r0, r0, #798720
	adds	r4, r4, #10
	add	r0, r0, #1280
	ubfx	r4, r4, #2, #27
	bl	__aeabi_uidiv(PLT)
	movw	r3, #23237
	ldr	r2, [r5, #876]
	movt	r3, 2684
	strh	r0, [r6, #8]	@ movhi
	umull	r1, r3, r3, r4
	lsrs	r3, r3, #7
	strh	r3, [r2, #8]	@ movhi
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	png_set_filter_heuristics_fixed, .-png_set_filter_heuristics_fixed
	.section	.text.png_set_compression_level,"ax",%progbits
	.align	2
	.global	png_set_compression_level
	.thumb
	.thumb_func
	.type	png_set_compression_level, %function
png_set_compression_level:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L641
	str	r1, [r0, #528]
.L641:
	bx	lr
	.size	png_set_compression_level, .-png_set_compression_level
	.section	.text.png_image_write_main,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_write_main, %function
png_image_write_main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r6, [r0]
	sub	sp, sp, #36
	ldr	fp, [r6, #16]
	ldr	r3, [r6]
	ubfx	r7, fp, #3, #1
	ldmia	r3, {r4, r8}
	cmp	r7, #0
	bne	.L678
	ubfx	r9, fp, #2, #1
	and	r2, fp, #1
	str	r2, [sp, #28]
	str	r9, [sp, #24]
	cmp	r9, #0
	beq	.L679
	ldr	r3, [r0, #16]
	mov	r10, #1
	cmp	r3, #0
	bne	.L647
.L648:
	mov	r0, r4
	movs	r1, #0
	bl	png_set_benign_errors(PLT)
	ldr	r3, [r5, #8]
	cbnz	r3, .L649
	ldr	r3, [r6, #16]
	lsls	r2, r3, #28
	ldr	r2, [r6, #8]
	itet	pl
	andpl	r3, r3, #3
	movmi	r3, #1
	addpl	r3, r3, #1
	mul	r2, r2, r3
	str	r2, [r5, #8]
.L649:
	cmp	r7, #0
	beq	.L651
	ldr	r3, [r5, #12]
	cmp	r3, #0
	beq	.L652
	ldr	r1, [r6, #24]
	cmp	r1, #0
	beq	.L652
	cmp	r1, #16
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #12]
	it	hi
	movhi	r1, #8
	bhi	.L653
	cmp	r1, #4
	it	hi
	movhi	r1, #4
	bhi	.L653
	cmp	r1, #2
	ite	ls
	movls	r1, #1
	movhi	r1, #2
.L653:
	mov	lr, #0
	movs	r0, #3
	str	r1, [sp]
	mov	r1, r8
	str	r0, [sp, #4]
	mov	r0, r4
	str	lr, [sp, #8]
	str	lr, [sp, #12]
	str	lr, [sp, #16]
	bl	png_set_IHDR(PLT)
	ldr	r0, [r5]
	ldr	r1, [r5, #12]
	bl	png_image_set_PLTE.isra.4(PLT)
	cmp	r10, #0
	bne	.L726
.L657:
	ldr	r3, [r6, #20]
	mov	r0, r4
	mov	r1, r8
	lsls	r2, r3, #31
	bpl	.L727
	movw	r2, #45455
	bl	png_set_gAMA_fixed(PLT)
.L660:
	mov	r0, r4
	mov	r1, r8
	bl	png_write_info(PLT)
.L677:
	tst	fp, #16
	beq	.L661
	cbnz	r7, .L662
	tst	fp, #2
	bne	.L728
.L662:
	bic	fp, fp, #16
.L661:
	tst	fp, #32
	beq	.L663
	cbnz	r7, .L664
	tst	fp, #1
	bne	.L729
.L664:
	bic	fp, fp, #32
.L663:
	cbz	r7, .L665
	ldr	r3, [r6, #24]
	cmp	r3, #16
	bls	.L730
.L665:
	bics	r3, fp, #15
	bne	.L731
	ldr	r2, [r5, #4]
	ldr	r3, [r5, #8]
	cmp	r9, #0
	beq	.L667
	lsls	r3, r3, #1
.L667:
	cmp	r3, #0
	ittt	lt
	ldrlt	r1, [r6, #12]
	rsblt	r1, r1, #1
	mlalt	r2, r1, r3, r2
	ldr	r1, [r6, #20]
	str	r3, [r5, #24]
	lsls	r3, r1, #30
	str	r2, [r5, #20]
	bmi	.L732
.L669:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #28]
	tst	r2, r3
	bne	.L670
	cmp	r7, #0
	bne	.L671
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L671
.L670:
	mov	r1, r8
	mov	r0, r4
	bl	png_get_rowbytes(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	png_malloc(PLT)
	mov	r7, r0
	str	r0, [r5, #28]
	mov	r0, r6
	cmp	r10, #0
	beq	.L672
	ldr	r1, .L734
	mov	r2, r5
.LPIC53:
	add	r1, pc
	bl	png_safe_execute(PLT)
	mov	r6, r0
.L673:
	movs	r3, #0
	mov	r0, r4
	mov	r1, r7
	str	r3, [r5, #28]
	bl	png_free(PLT)
	mov	r0, r6
	cbz	r6, .L724
.L675:
	mov	r0, r4
	mov	r1, r8
	bl	png_write_end(PLT)
	movs	r0, #1
.L724:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L679:
	str	r9, [sp, #24]
.L647:
	mov	r10, #0
	b	.L648
.L678:
	mov	r9, #0
	mov	r10, #0
	str	r9, [sp, #24]
	str	r9, [sp, #28]
	b	.L648
.L651:
	cmp	r10, #0
	ite	eq
	moveq	r1, #8
	movne	r1, #16
	tst	fp, #1
	ite	eq
	moveq	r0, #0
	movne	r0, #4
	and	lr, fp, #2
	ldr	r2, [r6, #8]
	add	lr, lr, r0
	ldr	r3, [r6, #12]
	mov	r0, r4
	str	r1, [sp]
	str	r7, [sp, #8]
	mov	r1, r8
	str	r7, [sp, #12]
	str	r7, [sp, #16]
	str	lr, [sp, #4]
	bl	png_set_IHDR(PLT)
	cmp	r10, #0
	beq	.L657
.L726:
	movw	r2, #34464
	mov	r1, r8
	mov	r0, r4
	movt	r2, 1
	bl	png_set_gAMA_fixed(PLT)
	ldr	r3, [r6, #20]
	lsls	r1, r3, #31
	bpl	.L733
.L658:
	mov	r0, r4
	mov	r1, r8
	bl	png_write_info(PLT)
	mov	r0, r4
	bl	png_set_swap(PLT)
	b	.L677
.L727:
	mov	r2, r10
	bl	png_set_sRGB(PLT)
	b	.L660
.L671:
	ldr	r3, [r6, #12]
	ldr	r7, [r5, #24]
	ldr	r6, [r5, #20]
	cmp	r3, #0
	beq	.L675
	mov	r5, r3
.L676:
	mov	r1, r6
	mov	r0, r4
	bl	png_write_row(PLT)
	subs	r5, r5, #1
	add	r6, r6, r7
	bne	.L676
	b	.L675
.L732:
	movs	r1, #0
	mov	r0, r4
	mov	r2, r1
	bl	png_set_filter(PLT)
	mov	r0, r4
	movs	r1, #3
	bl	png_set_compression_level(PLT)
	b	.L669
.L672:
	ldr	r1, .L734+4
	mov	r2, r5
.LPIC54:
	add	r1, pc
	bl	png_safe_execute(PLT)
	mov	r6, r0
	b	.L673
.L728:
	mov	r0, r4
	bl	png_set_bgr(PLT)
	b	.L662
.L729:
	mov	r0, r4
	bl	png_set_swap_alpha(PLT)
	b	.L664
.L730:
	mov	r0, r4
	bl	png_set_packing(PLT)
	b	.L665
.L733:
	mov	r3, #64000
	movw	lr, #33000
	movw	r0, #30000
	movw	r1, #60000
	movw	r2, #15000
	str	r3, [sp]
	movw	r3, #6000
	str	r0, [sp, #8]
	str	r1, [sp, #12]
	mov	r0, r4
	str	r2, [sp, #16]
	mov	r1, r8
	str	r3, [sp, #20]
	movw	r2, #31270
	str	lr, [sp, #4]
	movw	r3, #32900
	bl	png_set_cHRM_fixed(PLT)
	b	.L658
.L731:
	ldr	r1, .L734+8
	mov	r0, r4
.LPIC52:
	add	r1, pc
	bl	png_error(PLT)
.L652:
	ldr	r3, [r6]
	ldr	r1, .L734+12
	ldr	r0, [r3]
.LPIC51:
	add	r1, pc
	bl	png_error(PLT)
.L735:
	.align	2
.L734:
	.word	png_write_image_16bit-(.LPIC53+4)
	.word	png_write_image_8bit-(.LPIC54+4)
	.word	.LC16-(.LPIC52+4)
	.word	.LC15-(.LPIC51+4)
	.size	png_image_write_main, .-png_image_write_main
	.section	.text.png_set_compression_mem_level,"ax",%progbits
	.align	2
	.global	png_set_compression_mem_level
	.thumb
	.thumb_func
	.type	png_set_compression_mem_level, %function
png_set_compression_mem_level:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L736
	str	r1, [r0, #540]
.L736:
	bx	lr
	.size	png_set_compression_mem_level, .-png_set_compression_mem_level
	.section	.text.png_set_compression_strategy,"ax",%progbits
	.align	2
	.global	png_set_compression_strategy
	.thumb
	.thumb_func
	.type	png_set_compression_strategy, %function
png_set_compression_strategy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L741
	ldr	r3, [r0, #452]
	str	r1, [r0, #544]
	orr	r3, r3, #1
	str	r3, [r0, #452]
.L741:
	bx	lr
	.size	png_set_compression_strategy, .-png_set_compression_strategy
	.section	.text.png_set_compression_window_bits,"ax",%progbits
	.align	2
	.global	png_set_compression_window_bits
	.thumb
	.thumb_func
	.type	png_set_compression_window_bits, %function
png_set_compression_window_bits:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L754
	cmp	r1, #15
	push	{r4, lr}
	mov	r4, r0
	bgt	.L755
	cmp	r1, #7
	ble	.L756
	str	r1, [r4, #536]
	pop	{r4, pc}
.L755:
	ldr	r1, .L757
.LPIC55:
	add	r1, pc
	bl	png_warning(PLT)
	movs	r1, #15
	str	r1, [r4, #536]
	pop	{r4, pc}
.L756:
	ldr	r1, .L757+4
.LPIC56:
	add	r1, pc
	bl	png_warning(PLT)
	movs	r1, #8
	str	r1, [r4, #536]
	pop	{r4, pc}
.L754:
	bx	lr
.L758:
	.align	2
.L757:
	.word	.LC17-(.LPIC55+4)
	.word	.LC18-(.LPIC56+4)
	.size	png_set_compression_window_bits, .-png_set_compression_window_bits
	.section	.text.png_set_compression_method,"ax",%progbits
	.align	2
	.global	png_set_compression_method
	.thumb
	.thumb_func
	.type	png_set_compression_method, %function
png_set_compression_method:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L769
	cmp	r1, #8
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	beq	.L761
	ldr	r1, .L770
.LPIC57:
	add	r1, pc
	bl	png_warning(PLT)
.L761:
	str	r4, [r5, #532]
	pop	{r3, r4, r5, pc}
.L769:
	bx	lr
.L771:
	.align	2
.L770:
	.word	.LC19-(.LPIC57+4)
	.size	png_set_compression_method, .-png_set_compression_method
	.section	.text.png_set_text_compression_level,"ax",%progbits
	.align	2
	.global	png_set_text_compression_level
	.thumb
	.thumb_func
	.type	png_set_text_compression_level, %function
png_set_text_compression_level:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L772
	str	r1, [r0, #548]
.L772:
	bx	lr
	.size	png_set_text_compression_level, .-png_set_text_compression_level
	.section	.text.png_set_text_compression_mem_level,"ax",%progbits
	.align	2
	.global	png_set_text_compression_mem_level
	.thumb
	.thumb_func
	.type	png_set_text_compression_mem_level, %function
png_set_text_compression_mem_level:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L777
	str	r1, [r0, #560]
.L777:
	bx	lr
	.size	png_set_text_compression_mem_level, .-png_set_text_compression_mem_level
	.section	.text.png_set_text_compression_strategy,"ax",%progbits
	.align	2
	.global	png_set_text_compression_strategy
	.thumb
	.thumb_func
	.type	png_set_text_compression_strategy, %function
png_set_text_compression_strategy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L782
	str	r1, [r0, #564]
.L782:
	bx	lr
	.size	png_set_text_compression_strategy, .-png_set_text_compression_strategy
	.section	.text.png_set_text_compression_window_bits,"ax",%progbits
	.align	2
	.global	png_set_text_compression_window_bits
	.thumb
	.thumb_func
	.type	png_set_text_compression_window_bits, %function
png_set_text_compression_window_bits:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L795
	cmp	r1, #15
	push	{r4, lr}
	mov	r4, r0
	bgt	.L796
	cmp	r1, #7
	ble	.L797
	str	r1, [r4, #556]
	pop	{r4, pc}
.L796:
	ldr	r1, .L798
.LPIC58:
	add	r1, pc
	bl	png_warning(PLT)
	movs	r1, #15
	str	r1, [r4, #556]
	pop	{r4, pc}
.L797:
	ldr	r1, .L798+4
.LPIC59:
	add	r1, pc
	bl	png_warning(PLT)
	movs	r1, #8
	str	r1, [r4, #556]
	pop	{r4, pc}
.L795:
	bx	lr
.L799:
	.align	2
.L798:
	.word	.LC17-(.LPIC58+4)
	.word	.LC18-(.LPIC59+4)
	.size	png_set_text_compression_window_bits, .-png_set_text_compression_window_bits
	.section	.text.png_set_text_compression_method,"ax",%progbits
	.align	2
	.global	png_set_text_compression_method
	.thumb
	.thumb_func
	.type	png_set_text_compression_method, %function
png_set_text_compression_method:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L810
	cmp	r1, #8
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	beq	.L802
	ldr	r1, .L811
.LPIC60:
	add	r1, pc
	bl	png_warning(PLT)
.L802:
	str	r4, [r5, #552]
	pop	{r3, r4, r5, pc}
.L810:
	bx	lr
.L812:
	.align	2
.L811:
	.word	.LC19-(.LPIC60+4)
	.size	png_set_text_compression_method, .-png_set_text_compression_method
	.section	.text.png_set_write_status_fn,"ax",%progbits
	.align	2
	.global	png_set_write_status_fn
	.thumb
	.thumb_func
	.type	png_set_write_status_fn, %function
png_set_write_status_fn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L813
	str	r1, [r0, #788]
.L813:
	bx	lr
	.size	png_set_write_status_fn, .-png_set_write_status_fn
	.section	.text.png_set_write_user_transform_fn,"ax",%progbits
	.align	2
	.global	png_set_write_user_transform_fn
	.thumb
	.thumb_func
	.type	png_set_write_user_transform_fn, %function
png_set_write_user_transform_fn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L818
	ldr	r3, [r0, #456]
	str	r1, [r0, #436]
	orr	r3, r3, #1048576
	str	r3, [r0, #456]
.L818:
	bx	lr
	.size	png_set_write_user_transform_fn, .-png_set_write_user_transform_fn
	.section	.text.png_write_png,"ax",%progbits
	.align	2
	.global	png_write_png
	.thumb
	.thumb_func
	.type	png_write_png, %function
png_write_png:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	beq	.L874
	ldr	r3, [r1, #8]
	push	{r4, r5, r6, lr}
	mov	r6, r1
	lsls	r4, r3, #16
	bpl	.L875
	mov	r4, r2
	mov	r5, r0
	bl	png_write_info(PLT)
	lsls	r1, r4, #26
	bmi	.L876
.L826:
	lsls	r2, r4, #25
	bmi	.L877
.L827:
	lsls	r0, r4, #29
	bmi	.L878
.L828:
	lsls	r1, r4, #23
	bmi	.L879
.L829:
	tst	r4, #6144
	bne	.L880
.L830:
	lsls	r0, r4, #24
	bmi	.L881
.L833:
	lsls	r1, r4, #22
	bmi	.L882
.L834:
	lsls	r2, r4, #28
	bmi	.L883
.L835:
	lsls	r3, r4, #21
	bmi	.L884
.L836:
	mov	r0, r5
	ldr	r1, [r6, #264]
	bl	png_write_image(PLT)
	mov	r0, r5
	mov	r1, r6
	pop	{r4, r5, r6, lr}
	b	png_write_end(PLT)
.L875:
	ldr	r1, .L886
	pop	{r4, r5, r6, lr}
.LPIC61:
	add	r1, pc
	b	png_app_error(PLT)
.L874:
	bx	lr
.L880:
	ands	r1, r4, #4096
	beq	.L831
	lsls	r2, r4, #20
	bmi	.L885
.L832:
	mov	r0, r5
	movs	r1, #0
	movs	r2, #1
	bl	png_set_filler(PLT)
	b	.L830
.L877:
	ldr	r3, [r6, #8]
	lsls	r3, r3, #30
	bpl	.L827
	mov	r0, r5
	add	r1, r6, #148
	bl	png_set_shift(PLT)
	b	.L827
.L884:
	mov	r0, r5
	bl	png_set_invert_alpha(PLT)
	b	.L836
.L883:
	mov	r0, r5
	bl	png_set_packswap(PLT)
	b	.L835
.L882:
	mov	r0, r5
	bl	png_set_swap(PLT)
	b	.L834
.L881:
	mov	r0, r5
	bl	png_set_bgr(PLT)
	b	.L833
.L879:
	mov	r0, r5
	bl	png_set_swap_alpha(PLT)
	b	.L829
.L878:
	mov	r0, r5
	bl	png_set_packing(PLT)
	b	.L828
.L876:
	mov	r0, r5
	bl	png_set_invert_mono(PLT)
	b	.L826
.L831:
	lsls	r3, r4, #20
	bpl	.L830
	mov	r0, r5
	mov	r2, r1
	bl	png_set_filler(PLT)
	b	.L830
.L885:
	ldr	r1, .L886+4
	mov	r0, r5
.LPIC62:
	add	r1, pc
	bl	png_app_error(PLT)
	b	.L832
.L887:
	.align	2
.L886:
	.word	.LC20-(.LPIC61+4)
	.word	.LC21-(.LPIC62+4)
	.size	png_write_png, .-png_write_png
	.section	.text.png_image_write_to_stdio,"ax",%progbits
	.align	2
	.global	png_image_write_to_stdio
	.thumb
	.thumb_func
	.type	png_image_write_to_stdio, %function
png_image_write_to_stdio:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r9, lr}
	sub	sp, sp, #40
	ldr	r5, .L910
.LPIC64:
	add	r5, pc
	cbz	r0, .L897
	mov	r9, r3
	ldr	r3, [r0, #4]
	mov	r4, r0
	cmp	r3, #1
	beq	.L908
	ldr	r1, .L910+4
.LPIC68:
	add	r1, pc
	bl	png_image_error(PLT)
.L890:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r9, pc}
.L895:
	ldr	r0, [sp]
	add	r1, sp, #8
	bl	png_destroy_info_struct(PLT)
.L894:
	mov	r0, sp
	movs	r1, #0
	bl	png_destroy_write_struct(PLT)
.L893:
	ldr	r1, .L910+8
	mov	r0, r4
.LPIC65:
	add	r1, pc
	bl	png_image_error(PLT)
	cmp	r0, #0
	bne	.L909
.L897:
	movs	r0, #0
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r9, pc}
.L908:
	mov	r7, r1
	cmp	r1, #0
	beq	.L892
	mov	r1, r0
	mov	r6, r2
	ldr	r3, .L910+12
	ldr	r2, .L910+16
	ldr	r0, .L910+20
	ldr	r3, [r5, r3]
	ldr	r2, [r5, r2]
.LPIC63:
	add	r0, pc
	bl	png_create_write_struct(PLT)
	str	r0, [sp]
	cmp	r0, #0
	beq	.L893
	bl	png_create_info_struct(PLT)
	str	r0, [sp, #8]
	cmp	r0, #0
	beq	.L894
	ldr	r0, [sp]
	movs	r1, #24
	bl	png_malloc_warn(PLT)
	mov	r5, r0
	cmp	r0, #0
	beq	.L895
	movs	r1, #0
	movs	r2, #24
	bl	memset(PLT)
	ldrb	r1, [r5, #20]	@ zero_extendqisi2
	mov	r0, r5
	ldr	r2, [sp]
	ldr	r3, [sp, #8]
	orr	r1, r1, #1
	strb	r1, [r5, #20]
	stmia	r5, {r2, r3}
	str	r5, [r4]
.L896:
	ldr	r5, [r0]
	movs	r3, #0
	ldr	r1, .L910+24
	add	r2, sp, #8
	mov	r0, r4
	str	r7, [r5, #428]
	ldr	r5, [sp, #64]
.LPIC66:
	add	r1, pc
	str	r3, [sp, #28]
	str	r3, [sp, #32]
	str	r5, [sp, #16]
	ldr	r5, [sp, #68]
	str	r3, [sp, #36]
	str	r4, [sp, #8]
	str	r5, [sp, #20]
	str	r9, [sp, #12]
	str	r6, [sp, #24]
	bl	png_safe_execute(PLT)
	mov	r5, r0
	mov	r0, r4
	bl	png_image_free(PLT)
	mov	r0, r5
	b	.L890
.L892:
	ldr	r1, .L910+28
.LPIC67:
	add	r1, pc
	bl	png_image_error(PLT)
	b	.L890
.L909:
	ldr	r0, [r4]
	b	.L896
.L911:
	.align	2
.L910:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC64+4)
	.word	.LC25-(.LPIC68+4)
	.word	.LC23-(.LPIC65+4)
	.word	png_safe_warning(GOT)
	.word	png_safe_error(GOT)
	.word	.LC22-(.LPIC63+4)
	.word	png_image_write_main-(.LPIC66+4)
	.word	.LC24-(.LPIC67+4)
	.size	png_image_write_to_stdio, .-png_image_write_to_stdio
	.section	.text.png_image_write_to_file,"ax",%progbits
	.align	2
	.global	png_image_write_to_file
	.thumb
	.thumb_func
	.type	png_image_write_to_file, %function
png_image_write_to_file:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #20
	ldr	r8, [sp, #48]
	mov	r4, r0
	ldr	r7, [sp, #52]
	cmp	r0, #0
	beq	.L920
	ldr	r5, [r0, #4]
	cmp	r5, #1
	beq	.L924
	ldr	r1, .L926
.LPIC71:
	add	r1, pc
.L923:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	png_image_error(PLT)
.L924:
	mov	r6, r1
	cmp	r1, #0
	beq	.L915
	mov	r0, r1
	ldr	r1, .L926+4
	str	r2, [sp, #12]
	str	r3, [sp, #8]
.LPIC69:
	add	r1, pc
	bl	fopen(PLT)
	ldr	r2, [sp, #12]
	mov	r9, r0
	ldr	r3, [sp, #8]
	cbz	r0, .L916
	str	r7, [sp, #4]
	mov	r0, r4
	str	r8, [sp]
	mov	r1, r9
	bl	png_image_write_to_stdio(PLT)
	mov	r7, r0
	mov	r0, r9
	cbz	r7, .L917
	bl	fflush(PLT)
	cbnz	r0, .L918
	mov	r0, r9
	bl	ferror(PLT)
	cbz	r0, .L925
.L918:
	bl	__errno_location(PLT)
	ldr	r5, [r0]
	mov	r0, r9
	bl	fclose(PLT)
.L919:
	mov	r0, r6
	bl	remove(PLT)
	mov	r0, r5
	bl	strerror(PLT)
	mov	r1, r0
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	png_image_error(PLT)
.L920:
	mov	r7, r0
.L913:
	mov	r0, r7
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L917:
	bl	fclose(PLT)
	mov	r0, r6
	bl	remove(PLT)
	b	.L913
.L916:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, r0
	mov	r0, r4
	b	.L923
.L925:
	mov	r0, r9
	bl	fclose(PLT)
	cbz	r0, .L921
	bl	__errno_location(PLT)
	ldr	r5, [r0]
	b	.L919
.L915:
	ldr	r1, .L926+8
.LPIC70:
	add	r1, pc
	b	.L923
.L921:
	mov	r7, r5
	b	.L913
.L927:
	.align	2
.L926:
	.word	.LC28-(.LPIC71+4)
	.word	.LC26-(.LPIC69+4)
	.word	.LC27-(.LPIC70+4)
	.size	png_image_write_to_file, .-png_image_write_to_file
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Unknown filter heuristic method\000"
.LC1:
	.ascii	"MNG features are not allowed in a PNG datastream\000"
	.space	3
.LC2:
	.ascii	"profile matches sRGB but writing iCCP instead\000"
	.space	2
.LC3:
	.ascii	"Writing zero-length unknown chunk\000"
	.space	2
.LC4:
	.ascii	"Valid palette required for paletted images\000"
	.space	1
.LC5:
	.ascii	"No IDATs written into file\000"
	.space	1
.LC6:
	.ascii	"Wrote palette index exceeding num_palette\000"
	.space	2
.LC7:
	.ascii	"png_write_info was never called before png_write_ro"
	.ascii	"w\000"
	.space	3
.LC8:
	.ascii	"internal write transform logic error\000"
	.space	3
.LC9:
	.ascii	"png_write_image: internal call error\000"
	.space	3
.LC10:
	.ascii	"Unknown row filter for method 0\000"
.LC11:
	.ascii	"Can't add Up filter after starting\000"
	.space	1
.LC12:
	.ascii	"Can't add Average filter after starting\000"
.LC13:
	.ascii	"Can't add Paeth filter after starting\000"
	.space	2
.LC14:
	.ascii	"Unknown custom filter method\000"
	.space	3
.LC15:
	.ascii	"no color-map for color-mapped image\000"
.LC16:
	.ascii	"png_write_image: unsupported transformation\000"
.LC17:
	.ascii	"Only compression windows <= 32k supported by PNG\000"
	.space	3
.LC18:
	.ascii	"Only compression windows >= 256 supported by PNG\000"
	.space	3
.LC19:
	.ascii	"Only compression method 8 is supported by PNG\000"
	.space	2
.LC20:
	.ascii	"no rows for png_write_image to write\000"
	.space	3
.LC21:
	.ascii	"PNG_TRANSFORM_STRIP_FILLER: BEFORE+AFTER not suppor"
	.ascii	"ted\000"
	.space	1
.LC22:
	.ascii	"1.6.10\000"
	.space	1
.LC23:
	.ascii	"png_image_write_: out of memory\000"
.LC24:
	.ascii	"png_image_write_to_stdio: invalid argument\000"
	.space	1
.LC25:
	.ascii	"png_image_write_to_stdio: incorrect PNG_IMAGE_VERSI"
	.ascii	"ON\000"
	.space	2
.LC26:
	.ascii	"wb\000"
	.space	1
.LC27:
	.ascii	"png_image_write_to_file: invalid argument\000"
	.space	2
.LC28:
	.ascii	"png_image_write_to_file: incorrect PNG_IMAGE_VERSIO"
	.ascii	"N\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
