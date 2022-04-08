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
	.file	"pngread.c"
	.section	.text.png_image_memory_read,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_memory_read, %function
png_image_memory_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L15
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	ldr	r3, [r0, #428]
	cbz	r3, .L3
	ldr	r4, [r3]
	cbz	r4, .L3
	ldr	r7, [r4, #16]
	mov	r5, r2
	ldr	r6, [r4, #12]
	cmp	r7, r2
	ite	cc
	movcc	r3, #0
	movcs	r3, #1
	cmp	r6, #0
	it	eq
	moveq	r3, #0
	cbz	r3, .L4
	mov	r0, r1
	mov	r1, r6
	add	r6, r6, r5
	subs	r5, r7, r5
	bl	memcpy(PLT)
	str	r6, [r4, #12]
	str	r5, [r4, #16]
	pop	{r3, r4, r5, r6, r7, pc}
.L15:
	bx	lr
.L3:
	ldr	r1, .L17
	mov	r0, r6
.LPIC1:
	add	r1, pc
	bl	png_error(PLT)
.L4:
	ldr	r1, .L17+4
.LPIC0:
	add	r1, pc
	bl	png_error(PLT)
.L18:
	.align	2
.L17:
	.word	.LC2-(.LPIC1+4)
	.word	.LC1-(.LPIC0+4)
	.size	png_image_memory_read, .-png_image_memory_read
	.section	.text.png_create_colormap_entry.constprop.7,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_create_colormap_entry.constprop.7, %function
png_create_colormap_entry.constprop.7:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	ldr	r6, [r0]
	ldr	r7, .L67
	ldr	r4, [r6, #16]
	ldr	r8, [sp, #72]
.LPIC3:
	add	r7, pc
	ldr	r10, [sp, #76]
	tst	r4, #4
	ite	eq
	moveq	lr, #1
	movne	lr, #2
	tst	r4, #2
	it	ne
	movne	ip, #0
	bne	.L21
	cmp	r3, r8
	it	eq
	cmpeq	r2, r3
	ite	ne
	movne	ip, #1
	moveq	ip, #0
.L21:
	cmp	r1, #255
	bhi	.L61
	sub	r5, lr, #2
	clz	r5, r5
	lsrs	r5, r5, #5
	orrs	r9, r5, ip
	bne	.L62
.L23:
	ldr	r6, [r6, #16]
	and	r7, r4, #16
	cmp	r7, #0
	ite	eq
	moveq	lr, #2
	movne	lr, #0
	and	r6, r6, #33
	it	eq
	moveq	r7, #0
	sub	r6, #33
	it	ne
	movne	r7, #2
	clz	r6, r6
	lsrs	r6, r6, #5
	cbnz	r5, .L63
	ldr	r0, [r0, #12]
	and	r4, r4, #3
	adds	r4, r4, #1
	cmp	r4, #3
	mla	r1, r4, r1, r0
	beq	.L40
	cmp	r4, #4
	beq	.L41
	cmp	r4, #2
	beq	.L64
.L39:
	strb	r3, [r1, r6]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L41:
	cmp	r6, #0
	ite	eq
	moveq	r0, #3
	movne	r0, #0
	strb	r10, [r1, r0]
.L40:
	add	r1, r1, r6
	strb	r8, [r1, lr]
	strb	r3, [r1, #1]
	strb	r2, [r1, r7]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L63:
	and	r4, r4, #3
	ldr	r0, [r0, #12]
	adds	r4, r4, #1
	lsls	r5, r4, #1
	cmp	r4, #3
	mla	r1, r1, r5, r0
	beq	.L30
	cmp	r4, #4
	beq	.L31
	cmp	r4, #2
	bne	.L29
	eor	r2, r6, #1
	strh	r10, [r1, r2, lsl #1]	@ movhi
.L29:
	movw	r2, #65534
	cmp	r10, r2
	it	hi
	uxthhi	r10, r3
	bhi	.L38
	cmp	r10, #0
	beq	.L38
	mul	r3, r3, r10
	movw	r2, #32769
	movt	r2, 32768
	add	r3, r3, #32640
	adds	r3, r3, #127
	umull	r7, r3, r2, r3
	ubfx	r10, r3, #15, #16
.L38:
	strh	r10, [r1, r6, lsl #1]	@ movhi
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L62:
	ldr	r9, .L67+4
	add	r10, r10, r10, lsl #8
	ldr	r9, [r7, r9]
	ldrh	r2, [r9, r2, lsl #1]
	ldrh	r3, [r9, r3, lsl #1]
	ldrh	r8, [r9, r8, lsl #1]
	cmp	ip, #0
	beq	.L24
	movw	lr, #2366
	movw	r9, #23434
	mul	r8, lr, r8
	movw	lr, #6968
	mla	r3, r9, r3, r8
	mla	r2, lr, r2, r3
	cmp	r5, #0
	bne	.L65
	add	r3, r2, #128
	ldr	r2, .L67+8
	lsrs	r3, r3, #8
	ldr	lr, .L67+12
	rsb	r3, r3, r3, lsl #8
	ldr	r2, [r7, r2]
	ldr	r7, [r7, lr]
	adds	r3, r3, #64
	lsr	lr, r3, #22
	ubfx	r3, r3, #7, #15
	ldrb	ip, [r2, lr]	@ zero_extendqisi2
	ldrh	r2, [r7, lr, lsl #1]
	mul	r3, r3, ip
	add	r3, r2, r3, lsr #12
	ubfx	r3, r3, #8, #8
	mov	r8, r3
	mov	r2, r3
	b	.L23
.L64:
	eor	r2, r6, #1
	strb	r10, [r1, r2]
	b	.L39
.L31:
	cmp	r6, #0
	ite	eq
	moveq	r0, #6
	movne	r0, #0
	strh	r10, [r1, r0]	@ movhi
.L30:
	movw	r0, #65534
	cmp	r10, r0
	bhi	.L66
	cmp	r10, #0
	beq	.L48
	mul	r8, r8, r10
	movw	r0, #32769
	movt	r0, 32768
	mul	r3, r3, r10
	mul	r10, r2, r10
	add	r8, r8, #32640
	add	r8, r8, #127
	add	r3, r3, #32640
	umull	r9, r8, r0, r8
	adds	r3, r3, #127
	add	r10, r10, #32640
	add	r10, r10, #127
	umull	fp, r3, r0, r3
	ubfx	r8, r8, #15, #16
	umull	r2, r10, r0, r10
	ubfx	r3, r3, #15, #16
	ubfx	r10, r10, #15, #16
.L35:
	add	lr, lr, r6
	add	r7, r7, r6
	adds	r6, r6, #1
	strh	r8, [r1, lr, lsl #1]	@ movhi
	strh	r3, [r1, r6, lsl #1]	@ movhi
	strh	r10, [r1, r7, lsl #1]	@ movhi
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L24:
	cmp	lr, #1
	bne	.L23
	ldr	lr, .L67+8
	rsb	r9, r3, r3, lsl #8
	rsb	r8, r8, r8, lsl #8
	rsb	r2, r2, r2, lsl #8
	ldr	fp, .L67+12
	rsb	r10, r10, r10, lsl #8
	ldr	r3, [r7, lr]
	lsr	ip, r2, #15
	lsr	lr, r9, #15
	ubfx	r2, r2, #0, #15
	ubfx	r9, r9, #0, #15
	str	r2, [sp, #28]
	str	r3, [sp, #20]
	lsr	r3, r8, #15
	str	r9, [sp, #12]
	ubfx	r8, r8, #0, #15
	str	r3, [sp, #24]
	add	r10, r10, #32768
	ldr	r7, [r7, fp]
	add	r10, r10, #127
	ldr	r3, [sp, #20]
	lsr	r10, r10, #16
	str	r8, [sp, #4]
	str	r7, [sp, #8]
	ldr	r7, [sp, #24]
	ldrb	r8, [r3, lr]	@ zero_extendqisi2
	ldrb	r2, [r3, ip]	@ zero_extendqisi2
	ldr	fp, [sp, #12]
	ldrb	r3, [r3, r7]	@ zero_extendqisi2
	ldr	r7, [sp, #28]
	ldr	r9, [sp, #8]
	mul	r2, r7, r2
	ldrh	ip, [r9, ip, lsl #1]
	ldrh	lr, [r9, lr, lsl #1]
	ldr	r7, [sp, #24]
	mul	r9, fp, r8
	ldr	r8, [sp, #8]
	add	r2, ip, r2, lsr #12
	ldrh	fp, [r8, r7, lsl #1]
	add	r9, lr, r9, lsr #12
	ldr	r7, [sp, #4]
	ubfx	r2, r2, #8, #8
	mul	r8, r7, r3
	ubfx	r3, r9, #8, #8
	add	r8, fp, r8, lsr #12
	ubfx	r8, r8, #8, #8
	b	.L23
.L48:
	mov	r3, r10
	mov	r8, r10
	b	.L35
.L66:
	uxth	r8, r8
	uxth	r3, r3
	uxth	r10, r2
	b	.L35
.L65:
	add	r2, r2, #16384
	lsrs	r3, r2, #15
	mov	r8, r3
	mov	r2, r3
	b	.L23
.L61:
	ldr	r3, [r6]
	ldr	r1, .L67+16
	ldr	r0, [r3]
.LPIC2:
	add	r1, pc
	bl	png_error(PLT)
.L68:
	.align	2
.L67:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	png_sRGB_table(GOT)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.word	.LC3-(.LPIC2+4)
	.size	png_create_colormap_entry.constprop.7, .-png_create_colormap_entry.constprop.7
	.section	.text.png_colormap_compose,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_colormap_compose, %function
png_colormap_compose:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #3
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	it	eq
	ldreq	r2, [r0, #32]
	mov	r4, r0
	mov	r6, r1
	mov	r9, r3
	ldr	r5, .L111
	ldr	r8, [sp, #32]
	ldr	r7, [sp, #36]
.LPIC4:
	add	r5, pc
	cmp	r2, #0
	beq	.L106
.L71:
	subs	r2, r2, #1
	cmp	r2, #3
	bhi	.L77
	tbb	[pc, r2]
.L79:
	.byte	(.L78-.L79)/2
	.byte	(.L80-.L79)/2
	.byte	(.L81-.L79)/2
	.byte	(.L82-.L79)/2
	.align	1
.L78:
	ldr	r3, .L111+4
	ldr	r3, [r5, r3]
	ldrh	r6, [r3, r6, lsl #1]
.L80:
	cmp	r7, #3
	ite	eq
	ldreq	r2, [r4, #32]
	movne	r2, r7
	cbz	r2, .L107
.L84:
	subs	r2, r2, #1
	cmp	r2, #3
	bhi	.L90
	tbb	[pc, r2]
.L92:
	.byte	(.L91-.L92)/2
	.byte	(.L93-.L92)/2
	.byte	(.L94-.L92)/2
	.byte	(.L95-.L92)/2
	.align	1
.L91:
	ldr	r3, .L111+4
	ldr	r3, [r5, r3]
	ldrh	r8, [r3, r8, lsl #1]
.L93:
	mul	r6, r9, r6
	cmp	r7, #2
	rsb	r9, r9, #255
	mla	r8, r9, r8, r6
	beq	.L108
.L96:
	ldr	r1, .L111+8
	lsr	r3, r8, #15
	ldr	r2, .L111+12
	ubfx	r8, r8, #0, #15
	ldr	r1, [r5, r1]
	ldr	r2, [r5, r2]
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	ldrh	r3, [r2, r3, lsl #1]
	mul	r0, r8, r1
	add	r0, r3, r0, lsr #12
	ubfx	r0, r0, #8, #8
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L82:
	cmp	r7, #3
	add	r6, r6, r6, lsl #8
	ite	eq
	ldreq	r2, [r4, #32]
	movne	r2, r7
	cmp	r2, #0
	bne	.L84
.L107:
	ldr	r3, [r4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r10, [r3, #1064]
	mov	r0, r10
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	beq	.L85
	movw	r3, #34463
	movt	r3, 1
	cmp	r10, r3
	ble	.L86
.L89:
	movs	r3, #3
	mov	r0, r10
	str	r3, [r4, #32]
	bl	png_reciprocal(PLT)
	ldr	r2, [r4, #32]
	str	r0, [r4, #36]
	b	.L84
.L81:
	add	r0, r6, r6, lsl #8
	ldr	r1, [r4, #36]
	bl	png_gamma_16bit_correct(PLT)
	mov	r6, r0
	b	.L80
.L106:
	ldr	r3, [r0]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r10, [r3, #1064]
	mov	r0, r10
	bl	png_gamma_significant(PLT)
	cbz	r0, .L72
	movw	r3, #34463
	movt	r3, 1
	cmp	r10, r3
	ble	.L73
.L76:
	movs	r3, #3
	mov	r0, r10
	str	r3, [r4, #32]
	bl	png_reciprocal(PLT)
	ldr	r2, [r4, #32]
	str	r0, [r4, #36]
	b	.L71
.L77:
	ldr	r3, [r4]
	ldr	r1, .L111+16
	ldr	r3, [r3]
.LPIC5:
	add	r1, pc
	ldr	r0, [r3]
	bl	png_error(PLT)
.L95:
	mul	r6, r9, r6
	add	r8, r8, r8, lsl #8
	cmp	r7, #2
	rsb	r9, r9, #255
	mla	r8, r9, r8, r6
	bne	.L96
.L108:
	add	r8, r8, r8, lsl #8
	add	r0, r8, #32768
	add	r8, r0, r8, lsr #16
	lsr	r0, r8, #16
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L94:
	add	r0, r8, r8, lsl #8
	ldr	r1, [r4, #36]
	bl	png_gamma_16bit_correct(PLT)
	mov	r8, r0
	b	.L93
.L72:
	movs	r3, #4
	mov	r2, r3
	str	r3, [r4, #32]
	b	.L71
.L85:
	movs	r3, #4
	mov	r2, r3
	str	r3, [r4, #32]
	b	.L84
.L90:
	ldr	r3, [r4]
	ldr	r1, .L111+20
	ldr	r3, [r3]
.LPIC6:
	add	r1, pc
	ldr	r0, [r3]
	bl	png_error(PLT)
.L73:
	cmp	r10, #0
	bne	.L109
.L75:
	movs	r2, #1
	str	r2, [r4, #32]
	b	.L71
.L86:
	cmp	r10, #0
	bne	.L110
.L88:
	movs	r2, #1
	str	r2, [r4, #32]
	b	.L84
.L110:
	add	r3, r10, r10, lsl #2
	movw	r2, #26215
	movt	r2, 26214
	add	r3, r10, r3, lsl #1
	adds	r3, r3, #2
	smull	r1, r2, r2, r3
	asrs	r0, r3, #31
	rsb	r0, r0, r2, asr #1
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	beq	.L88
	b	.L89
.L109:
	add	r3, r10, r10, lsl #2
	movw	r2, #26215
	movt	r2, 26214
	add	r3, r10, r3, lsl #1
	adds	r3, r3, #2
	smull	r1, r2, r2, r3
	asrs	r0, r3, #31
	rsb	r0, r0, r2, asr #1
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	beq	.L75
	b	.L76
.L112:
	.align	2
.L111:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC4+4)
	.word	png_sRGB_table(GOT)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.word	.LC4-(.LPIC5+4)
	.word	.LC4-(.LPIC6+4)
	.size	png_colormap_compose, .-png_colormap_compose
	.section	.text.png_create_colormap_entry.constprop.6,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_create_colormap_entry.constprop.6, %function
png_create_colormap_entry.constprop.6:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r2
	ldr	r8, [r0]
	mov	r9, r1
	sub	sp, sp, #28
	mov	r4, r3
	ldr	fp, .L180
	mov	r7, r0
	ldr	r2, [r8, #16]
	ldr	r6, [sp, #64]
.LPIC8:
	add	fp, pc
	ldr	r3, [sp, #68]
	tst	r2, #4
	ite	eq
	moveq	r10, #1
	movne	r10, #2
	lsls	r1, r2, #30
	it	mi
	movmi	r2, #0
	bmi	.L115
	cmp	r4, r6
	it	eq
	cmpeq	r5, r4
	ite	ne
	movne	r2, #1
	moveq	r2, #0
.L115:
	cmp	r9, #255
	bhi	.L170
	cmp	r3, #3
	beq	.L171
.L117:
	cmp	r3, #4
	beq	.L168
	cmp	r3, #1
	beq	.L167
	cmp	r3, #2
	beq	.L172
.L128:
	ldr	r3, [r8]
	ldr	r1, .L180+4
	ldr	r0, [r3]
.LPIC9:
	add	r1, pc
	bl	png_error(PLT)
.L171:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L173
.L118:
	cmp	r3, #3
	bne	.L117
	ldr	r3, [r7, #36]
	add	r0, r5, r5, lsl #8
	str	r2, [sp, #8]
	mov	r1, r3
	str	r3, [sp, #12]
	bl	png_gamma_16bit_correct(PLT)
	ldr	r3, [sp, #12]
	mov	r5, r0
	add	r0, r4, r4, lsl #8
	mov	r1, r3
	bl	png_gamma_16bit_correct(PLT)
	ldr	r3, [sp, #12]
	mov	r4, r0
	add	r0, r6, r6, lsl #8
	mov	r1, r3
	bl	png_gamma_16bit_correct(PLT)
	ldr	r2, [sp, #8]
	mov	r6, r0
	cmp	r10, #2
	ite	ne
	movne	r3, r2
	orreq	r3, r2, #1
	cmp	r3, #0
	bne	.L124
	ldr	r2, .L180+8
	rsb	r6, r0, r0, lsl #8
	rsb	r5, r5, r5, lsl #8
	rsb	r4, r4, r4, lsl #8
	ldr	r3, .L180+12
	lsrs	r1, r6, #15
	ldr	r2, [fp, r2]
	lsr	lr, r5, #15
	lsrs	r0, r4, #15
	ubfx	r5, r5, #0, #15
	ldr	r3, [fp, r3]
	ubfx	r4, r4, #0, #15
	ldrb	ip, [r2, lr]	@ zero_extendqisi2
	ubfx	r6, r6, #0, #15
	ldrb	fp, [r2, r0]	@ zero_extendqisi2
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	ldrh	lr, [r3, lr, lsl #1]
	ldrh	r0, [r3, r0, lsl #1]
	mul	r5, r5, ip
	ldrh	r3, [r3, r1, lsl #1]
	mul	r4, r4, fp
	mul	r6, r6, r2
	add	r5, lr, r5, lsr #12
	add	r4, r0, r4, lsr #12
	ubfx	r5, r5, #8, #8
	add	r6, r3, r6, lsr #12
	ubfx	r4, r4, #8, #8
	ubfx	r6, r6, #8, #8
.L125:
	cmp	r10, #1
	bne	.L128
	mov	lr, #255
	b	.L147
.L173:
	ldr	r3, [r8]
	ldr	r3, [r3]
	ldr	r3, [r3, #1064]
	str	r2, [sp, #8]
	mov	r0, r3
	str	r3, [sp, #12]
	bl	png_gamma_significant(PLT)
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r0, #0
	bne	.L174
	movs	r3, #4
	str	r3, [r7, #32]
.L168:
	add	r5, r5, r5, lsl #8
	add	r4, r4, r4, lsl #8
	add	r6, r6, r6, lsl #8
.L124:
	movs	r3, #255
	movw	lr, #65535
	cmp	r2, #0
	bne	.L175
.L129:
	cmp	r10, #1
	beq	.L176
.L147:
	ldr	r3, [r8, #16]
	and	r1, r3, #16
	and	r2, r3, #33
	cmp	r1, #0
	sub	r2, #33
	itete	eq
	moveq	ip, #2
	movne	ip, #0
	moveq	r0, #0
	movne	r0, #2
	cmp	r10, #2
	clz	r2, r2
	lsr	r2, r2, #5
	beq	.L177
	ldr	r1, [r7, #12]
	and	r3, r3, #3
	adds	r3, r3, #1
	cmp	r3, #3
	mla	r9, r3, r9, r1
	beq	.L143
	cmp	r3, #4
	beq	.L144
	cmp	r3, #2
	bne	.L142
	eor	r3, r2, #1
	strb	lr, [r9, r3]
.L142:
	strb	r4, [r9, r2]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L120:
	cmp	r3, #0
	bne	.L178
.L121:
	movs	r3, #1
	str	r3, [r7, #32]
.L167:
	cmp	r10, #2
	ite	ne
	movne	r3, r2
	orreq	r3, r2, #1
	cmp	r3, #0
	beq	.L125
	ldr	r3, .L180+16
	ldr	r3, [fp, r3]
	ldrh	r5, [r3, r5, lsl #1]
	ldrh	r4, [r3, r4, lsl #1]
	ldrh	r6, [r3, r6, lsl #1]
	b	.L124
.L175:
	movw	r2, #6968
	movw	r3, #23434
	mul	r5, r2, r5
	cmp	r10, #2
	movw	r0, #2366
	mla	r4, r3, r4, r5
	mla	r6, r0, r6, r4
	beq	.L179
	adds	r6, r6, #128
	ldr	r2, .L180+8
	lsrs	r0, r6, #8
	ldr	r3, .L180+12
	rsb	r0, r0, r0, lsl #8
	ldr	r2, [fp, r2]
	ldr	r1, [fp, r3]
	adds	r0, r0, #64
	lsrs	r3, r0, #22
	ubfx	r4, r0, #7, #15
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldrh	r3, [r1, r3, lsl #1]
	mul	r4, r4, r2
	add	r4, r3, r4, lsr #12
	ubfx	r4, r4, #8, #8
	mov	r6, r4
	mov	r5, r4
	b	.L147
.L144:
	cmp	r2, #0
	ite	eq
	moveq	r3, #3
	movne	r3, #0
	strb	lr, [r9, r3]
.L143:
	add	r9, r9, r2
	strb	r6, [r9, ip]
	strb	r4, [r9, #1]
	strb	r5, [r9, r0]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L177:
	ldr	r1, [r7, #12]
	and	r3, r3, #3
	adds	r3, r3, #1
	lsls	r7, r3, #1
	cmp	r3, #3
	mla	r9, r9, r7, r1
	beq	.L135
	cmp	r3, #4
	beq	.L136
	cmp	r3, #2
	bne	.L134
	eor	r3, r2, #1
	strh	lr, [r9, r3, lsl #1]	@ movhi
.L134:
	movw	r3, #65535
	cmp	lr, r3
	beq	.L141
	mul	r4, lr, r4
	movw	r3, #32769
	movt	r3, 32768
	add	r4, r4, #32640
	adds	r4, r4, #127
	umull	r1, r4, r3, r4
	lsrs	r4, r4, #15
.L141:
	strh	r4, [r9, r2, lsl #1]	@ movhi
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L136:
	cmp	r2, #0
	ite	eq
	moveq	r3, #6
	movne	r3, #0
	strh	lr, [r9, r3]	@ movhi
.L135:
	movw	r3, #65535
	cmp	lr, r3
	beq	.L139
	mul	r6, lr, r6
	movw	r3, #32769
	movt	r3, 32768
	mul	r4, lr, r4
	mul	r5, lr, r5
	add	r6, r6, #32640
	adds	r6, r6, #127
	add	r4, r4, #32640
	umull	lr, r6, r3, r6
	adds	r4, r4, #127
	add	r5, r5, #32640
	adds	r5, r5, #127
	umull	r1, r4, r3, r4
	lsrs	r6, r6, #15
	umull	lr, r5, r3, r5
	lsrs	r4, r4, #15
	lsrs	r5, r5, #15
.L139:
	add	ip, ip, r2
	add	r0, r0, r2
	adds	r2, r2, #1
	strh	r6, [r9, ip, lsl #1]	@ movhi
	strh	r4, [r9, r2, lsl #1]	@ movhi
	strh	r5, [r9, r0, lsl #1]	@ movhi
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L174:
	movw	r1, #34463
	movt	r1, 1
	cmp	r3, r1
	ble	.L120
.L122:
	movs	r1, #3
	mov	r0, r3
	str	r1, [r7, #32]
	str	r2, [sp, #8]
	bl	png_reciprocal(PLT)
	ldr	r3, [r7, #32]
	str	r0, [r7, #36]
	ldr	r2, [sp, #8]
	b	.L118
.L179:
	add	r6, r6, #16384
	lsrs	r4, r6, #15
	mov	r6, r4
	mov	r5, r4
	b	.L147
.L176:
	rsb	r5, r5, r5, lsl #8
	ldr	lr, .L180+12
	ldr	r2, .L180+8
	rsb	r6, r6, r6, lsl #8
	lsrs	r0, r5, #15
	rsb	r4, r4, r4, lsl #8
	lsrs	r1, r6, #15
	ubfx	r5, r5, #0, #15
	ldr	r2, [fp, r2]
	str	r5, [sp, #4]
	lsr	ip, r4, #15
	ldr	r5, [fp, lr]
	ubfx	r4, r4, #0, #15
	str	r4, [sp, #20]
	ubfx	fp, r6, #0, #15
	ldrb	r4, [r2, r0]	@ zero_extendqisi2
	mov	lr, r3
	str	r5, [sp, #16]
	ldrb	r3, [r2, r1]	@ zero_extendqisi2
	ldrb	r6, [r2, ip]	@ zero_extendqisi2
	ldrh	r2, [r5, r0, lsl #1]
	ldr	r5, [sp, #4]
	mul	r3, fp, r3
	mul	r5, r5, r4
	ldr	r4, [sp, #16]
	ldrh	r0, [r4, ip, lsl #1]
	ldrh	r1, [r4, r1, lsl #1]
	add	r5, r2, r5, lsr #12
	ldr	r4, [sp, #20]
	ubfx	r5, r5, #8, #8
	mul	r6, r4, r6
	add	r0, r0, r6, lsr #12
	add	r6, r1, r3, lsr #12
	ubfx	r4, r0, #8, #8
	ubfx	r6, r6, #8, #8
	b	.L147
.L178:
	add	r1, r3, r3, lsl #2
	movw	r0, #26215
	movt	r0, 26214
	str	r2, [sp, #8]
	add	r1, r3, r1, lsl #1
	str	r3, [sp, #12]
	adds	r1, r1, #2
	smull	lr, r0, r0, r1
	asrs	r1, r1, #31
	rsb	r0, r1, r0, asr #1
	bl	png_gamma_significant(PLT)
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #12]
	cmp	r0, #0
	beq	.L121
	b	.L122
.L170:
	ldr	r3, [r8]
	ldr	r1, .L180+20
	ldr	r0, [r3]
.LPIC7:
	add	r1, pc
	bl	png_error(PLT)
.L172:
	movs	r3, #1
	mov	lr, #255
	cmp	r2, #0
	beq	.L129
	b	.L175
.L181:
	.align	2
.L180:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	.LC5-(.LPIC9+4)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.word	png_sRGB_table(GOT)
	.word	.LC3-(.LPIC7+4)
	.size	png_create_colormap_entry.constprop.6, .-png_create_colormap_entry.constprop.6
	.section	.text.png_create_colormap_entry,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_create_colormap_entry, %function
png_create_colormap_entry:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r2
	ldr	r6, [r0]
	mov	r7, r1
	sub	sp, sp, #28
	mov	r10, r3
	ldr	r9, .L255
	mov	r4, r0
	ldr	r2, [r6, #16]
	ldr	ip, [sp, #64]
.LPIC11:
	add	r9, pc
	ldr	r5, [sp, #68]
	tst	r2, #4
	ldr	r3, [sp, #72]
	ite	eq
	moveq	r8, #1
	movne	r8, #2
	lsls	r1, r2, #30
	it	mi
	movmi	r2, #0
	bmi	.L184
	cmp	r10, ip
	it	eq
	cmpeq	fp, r10
	ite	ne
	movne	r2, #1
	moveq	r2, #0
.L184:
	cmp	r7, #255
	bhi	.L245
	cmp	r3, #3
	beq	.L246
.L186:
	cmp	r3, #4
	beq	.L242
	cmp	r3, #1
	beq	.L241
	cmp	r3, #2
	beq	.L220
.L198:
	ldr	r3, [r6]
	ldr	r1, .L255+4
	ldr	r0, [r3]
.LPIC12:
	add	r1, pc
	bl	png_error(PLT)
.L246:
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L247
.L187:
	cmp	r3, #3
	bne	.L186
	ldr	r3, [r4, #36]
	add	r0, fp, fp, lsl #8
	str	r2, [sp, #8]
	str	ip, [sp, #12]
	mov	r1, r3
	str	r3, [sp, #16]
	bl	png_gamma_16bit_correct(PLT)
	ldr	r3, [sp, #16]
	mov	fp, r0
	add	r0, r10, r10, lsl #8
	mov	r1, r3
	bl	png_gamma_16bit_correct(PLT)
	ldr	ip, [sp, #12]
	mov	r10, r0
	ldr	r3, [sp, #16]
	add	r0, ip, ip, lsl #8
	mov	r1, r3
	bl	png_gamma_16bit_correct(PLT)
	ldr	r2, [sp, #8]
	mov	ip, r0
	cmp	r8, #2
	ite	ne
	movne	r3, r2
	orreq	r3, r2, #1
	cmp	r3, #0
	bne	.L244
	ldr	r1, .L255+8
	rsb	r3, r10, r10, lsl #8
	ldr	r2, .L255+12
	rsb	r10, r0, r0, lsl #8
	lsr	lr, r3, #15
	rsb	fp, fp, fp, lsl #8
	ldr	r1, [r9, r1]
	lsr	r0, r10, #15
	ubfx	r10, r10, #0, #15
	ldr	r2, [r9, r2]
	str	r10, [sp, #20]
	lsr	ip, fp, #15
	ldrb	r10, [r1, lr]	@ zero_extendqisi2
	ubfx	r3, r3, #0, #15
	ldrb	r9, [r1, ip]	@ zero_extendqisi2
	ubfx	fp, fp, #0, #15
	ldrb	r1, [r1, r0]	@ zero_extendqisi2
	ldrh	ip, [r2, ip, lsl #1]
	mul	r10, r3, r10
	ldr	r3, [sp, #20]
	ldrh	lr, [r2, lr, lsl #1]
	mul	fp, fp, r9
	ldrh	r2, [r2, r0, lsl #1]
	mul	r1, r3, r1
	add	lr, lr, r10, lsr #12
	add	fp, ip, fp, lsr #12
	ubfx	r10, lr, #8, #8
	add	ip, r2, r1, lsr #12
	ubfx	fp, fp, #8, #8
	ubfx	ip, ip, #8, #8
.L195:
	cmp	r8, #1
	beq	.L219
	b	.L198
.L247:
	ldr	r3, [r6]
	ldr	r3, [r3]
	ldr	r3, [r3, #1064]
	str	r2, [sp, #8]
	str	ip, [sp, #12]
	mov	r0, r3
	str	r3, [sp, #16]
	bl	png_gamma_significant(PLT)
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #16]
	ldr	ip, [sp, #12]
	cmp	r0, #0
	bne	.L248
	movs	r3, #4
	str	r3, [r4, #32]
.L242:
	add	fp, fp, fp, lsl #8
	add	r10, r10, r10, lsl #8
	add	ip, ip, ip, lsl #8
.L244:
	add	r5, r5, r5, lsl #8
.L220:
	cmp	r2, #0
	bne	.L249
.L199:
	cmp	r8, #1
	beq	.L250
.L219:
	ldr	r3, [r6, #16]
	and	r1, r3, #16
	and	r2, r3, #33
	cmp	r1, #0
	sub	r2, #33
	itete	eq
	moveq	r0, #2
	movne	r0, #0
	moveq	r6, #0
	movne	r6, #2
	cmp	r8, #2
	clz	r2, r2
	lsr	r2, r2, #5
	beq	.L251
	ldr	r1, [r4, #12]
	and	r3, r3, #3
	adds	r3, r3, #1
	cmp	r3, #3
	mla	r7, r3, r7, r1
	beq	.L215
	cmp	r3, #4
	beq	.L216
	cmp	r3, #2
	bne	.L214
	eor	r3, r2, #1
	strb	r5, [r7, r3]
.L214:
	strb	r10, [r7, r2]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L189:
	cmp	r3, #0
	bne	.L252
.L190:
	movs	r3, #1
	str	r3, [r4, #32]
.L241:
	cmp	r8, #2
	ite	ne
	movne	r3, r2
	orreq	r3, r2, #1
	cmp	r3, #0
	beq	.L195
	ldr	r3, .L255+16
	add	r5, r5, r5, lsl #8
	ldr	r3, [r9, r3]
	ldrh	fp, [r3, fp, lsl #1]
	ldrh	r10, [r3, r10, lsl #1]
	ldrh	ip, [r3, ip, lsl #1]
	cmp	r2, #0
	beq	.L199
.L249:
	movw	r2, #6968
	movw	r3, #23434
	mul	fp, r2, fp
	cmp	r8, #2
	movw	r0, #2366
	mla	r10, r3, r10, fp
	mla	ip, r0, ip, r10
	beq	.L253
	add	ip, ip, #128
	ldr	r2, .L255+8
	lsr	r0, ip, #8
	ldr	r3, .L255+12
	rsb	r0, r0, r0, lsl #8
	ldr	r2, [r9, r2]
	ldr	r1, [r9, r3]
	adds	r0, r0, #64
	lsrs	r3, r0, #22
	ubfx	r10, r0, #7, #15
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	ldrh	r3, [r1, r3, lsl #1]
	mul	r10, r10, r2
	add	r10, r3, r10, lsr #12
	ubfx	r10, r10, #8, #8
	mov	ip, r10
	mov	fp, r10
	b	.L219
.L216:
	cmp	r2, #0
	ite	eq
	moveq	r3, #3
	movne	r3, #0
	strb	r5, [r7, r3]
.L215:
	add	r6, r6, r7
	add	r7, r7, r2
	strb	ip, [r7, r0]
	strb	r10, [r7, #1]
	strb	fp, [r6, r2]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L251:
	ldr	r1, [r4, #12]
	and	r3, r3, #3
	adds	r3, r3, #1
	lsls	r4, r3, #1
	cmp	r3, #3
	mla	r7, r7, r4, r1
	beq	.L205
	cmp	r3, #4
	beq	.L206
	cmp	r3, #2
	bne	.L204
	eor	r3, r2, #1
	strh	r5, [r7, r3, lsl #1]	@ movhi
.L204:
	movw	r3, #65534
	cmp	r5, r3
	it	hi
	uxthhi	r5, r10
	bhi	.L213
	cbz	r5, .L213
	mul	r5, r10, r5
	movw	r1, #32769
	movt	r1, 32768
	add	r5, r5, #32640
	adds	r5, r5, #127
	umull	r3, r5, r1, r5
	ubfx	r5, r5, #15, #16
.L213:
	strh	r5, [r7, r2, lsl #1]	@ movhi
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L206:
	cmp	r2, #0
	ite	eq
	moveq	r3, #6
	movne	r3, #0
	strh	r5, [r7, r3]	@ movhi
.L205:
	movw	r3, #65534
	cmp	r5, r3
	bhi	.L254
	cmp	r5, #0
	beq	.L226
	mul	ip, r5, ip
	movw	r1, #32769
	movt	r1, 32768
	mul	r10, r10, r5
	mul	r5, fp, r5
	add	ip, ip, #32640
	add	ip, ip, #127
	add	r10, r10, #32640
	umull	lr, ip, r1, ip
	add	r10, r10, #127
	add	r5, r5, #32640
	adds	r5, r5, #127
	umull	r3, r10, r1, r10
	ubfx	ip, ip, #15, #16
	umull	lr, r5, r1, r5
	ubfx	r10, r10, #15, #16
	ubfx	r5, r5, #15, #16
.L210:
	add	r0, r0, r2
	add	r6, r6, r2
	adds	r2, r2, #1
	strh	ip, [r7, r0, lsl #1]	@ movhi
	strh	r10, [r7, r2, lsl #1]	@ movhi
	strh	r5, [r7, r6, lsl #1]	@ movhi
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L248:
	movw	r1, #34463
	movt	r1, 1
	cmp	r3, r1
	ble	.L189
.L191:
	movs	r1, #3
	mov	r0, r3
	str	r1, [r4, #32]
	str	r2, [sp, #8]
	str	ip, [sp, #12]
	bl	png_reciprocal(PLT)
	ldr	r3, [r4, #32]
	str	r0, [r4, #36]
	ldr	r2, [sp, #8]
	ldr	ip, [sp, #12]
	b	.L187
.L226:
	mov	r10, r5
	mov	ip, r5
	b	.L210
.L254:
	uxth	ip, ip
	uxth	r10, r10
	uxth	r5, fp
	b	.L210
.L253:
	add	ip, ip, #16384
	lsr	r10, ip, #15
	mov	ip, r10
	mov	fp, r10
	b	.L219
.L250:
	ldr	r3, .L255+8
	rsb	fp, fp, fp, lsl #8
	ldr	lr, .L255+12
	rsb	r10, r10, r10, lsl #8
	rsb	ip, ip, ip, lsl #8
	lsr	r0, fp, #15
	ldr	r3, [r9, r3]
	rsb	r5, r5, r5, lsl #8
	lsr	r1, ip, #15
	ubfx	fp, fp, #0, #15
	add	r5, r5, #32768
	str	r3, [sp, #4]
	lsr	r3, r10, #15
	ldr	r2, [r9, lr]
	ubfx	r10, r10, #0, #15
	ldr	lr, [sp, #4]
	adds	r5, r5, #127
	lsrs	r5, r5, #16
	str	r2, [sp, #20]
	ldr	r2, [sp, #4]
	ldrb	r9, [lr, r0]	@ zero_extendqisi2
	ubfx	lr, ip, #0, #15
	ldr	ip, [sp, #4]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	mul	fp, fp, r9
	str	r2, [sp]
	ldrb	r2, [ip, r1]	@ zero_extendqisi2
	ldr	ip, [sp, #20]
	ldrh	r0, [ip, r0, lsl #1]
	mul	r2, lr, r2
	ldrh	r3, [ip, r3, lsl #1]
	ldrh	r1, [ip, r1, lsl #1]
	ldr	ip, [sp]
	add	fp, r0, fp, lsr #12
	add	r1, r1, r2, lsr #12
	ubfx	fp, fp, #8, #8
	mul	r10, r10, ip
	ubfx	ip, r1, #8, #8
	add	r3, r3, r10, lsr #12
	ubfx	r10, r3, #8, #8
	b	.L219
.L252:
	add	r1, r3, r3, lsl #2
	movw	r0, #26215
	movt	r0, 26214
	str	r2, [sp, #8]
	add	r1, r3, r1, lsl #1
	str	r3, [sp, #16]
	str	ip, [sp, #12]
	adds	r1, r1, #2
	smull	lr, r0, r0, r1
	asrs	r1, r1, #31
	rsb	r0, r1, r0, asr #1
	bl	png_gamma_significant(PLT)
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #16]
	ldr	ip, [sp, #12]
	cmp	r0, #0
	beq	.L190
	b	.L191
.L245:
	ldr	r3, [r6]
	ldr	r1, .L255+20
	ldr	r0, [r3]
.LPIC10:
	add	r1, pc
	bl	png_error(PLT)
.L256:
	.align	2
.L255:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.word	.LC5-(.LPIC12+4)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.word	png_sRGB_table(GOT)
	.word	.LC3-(.LPIC10+4)
	.size	png_create_colormap_entry, .-png_create_colormap_entry
	.section	.text.make_rgb_colormap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	make_rgb_colormap, %function
make_rgb_colormap:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L308
	movs	r1, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r2, #32769
	mov	r8, r1
	mov	ip, r1
	sub	sp, sp, #52
	movt	r2, 32768
.LPIC22:
	add	r3, pc
	str	r1, [sp, #4]
	str	r3, [sp, #12]
	str	r2, [sp, #20]
.L258:
	lsl	ip, ip, #1
	movs	r6, #0
	mov	r10, r0
	str	ip, [sp, #32]
	mov	ip, r6
.L285:
	lsl	r9, ip, #1
	movs	r6, #0
	mov	fp, ip
	str	r9, [sp, #16]
.L283:
	ldr	r7, [r10]
	add	r4, r8, #1
	ldr	r3, [r7, #16]
	tst	r3, #4
	ite	eq
	moveq	r1, #1
	movne	r1, #2
	lsls	r0, r3, #30
	it	mi
	movmi	ip, #0
	bmi	.L260
	ldr	r5, [sp, #4]
	cmp	fp, r5
	it	eq
	cmpeq	fp, r6
	ite	ne
	movne	ip, #1
	moveq	ip, #0
.L260:
	cmp	r8, #255
	bhi	.L303
	sub	r2, r1, #2
	clz	r2, r2
	lsrs	r2, r2, #5
	orrs	r9, r2, ip
	beq	.L288
	ldr	r0, .L308+4
	ldr	r5, [sp, #12]
	ldr	r9, [sp, #32]
	ldr	lr, [r5, r0]
	ldrh	r5, [r9, lr]
	ldr	r9, [sp, #16]
	ldrh	r0, [r9, lr]
	ldrh	lr, [lr, r6, lsl #1]
	cmp	ip, #0
	beq	.L263
	movw	r1, #6968
	movw	r9, #23434
	mul	r5, r1, r5
	movw	ip, #2366
	mla	r0, r9, r0, r5
	mla	lr, ip, lr, r0
	cmp	r2, #0
	bne	.L304
	add	ip, lr, #128
	ldr	r5, .L308+8
	lsr	ip, ip, #8
	ldr	lr, [sp, #12]
	ldr	r1, .L308+12
	movw	r9, #65535
	rsb	ip, ip, ip, lsl #8
	ldr	r0, [lr, r5]
	add	ip, ip, #64
	ldr	r1, [lr, r1]
	lsr	r5, ip, #22
	ubfx	ip, ip, #7, #15
	ldrb	lr, [r0, r5]	@ zero_extendqisi2
	ldrh	r1, [r1, r5, lsl #1]
	mul	r0, ip, lr
	add	r0, r1, r0, lsr #12
	ubfx	r0, r0, #8, #8
	mov	lr, r0
	mov	r5, r0
.L262:
	ldr	r1, [r7, #16]
	and	r7, r3, #16
	cmp	r7, #0
	ite	eq
	moveq	ip, #2
	movne	ip, #0
	and	r1, r1, #33
	it	eq
	moveq	r7, #0
	sub	r1, #33
	it	ne
	movne	r7, #2
	clz	r1, r1
	lsrs	r1, r1, #5
	cbnz	r2, .L305
	ldr	r2, [r10, #12]
	and	r3, r3, #3
	adds	r3, r3, #1
	cmp	r3, #3
	mla	r2, r3, r8, r2
	beq	.L277
	cmp	r3, #4
	beq	.L278
	cmp	r3, #2
	beq	.L306
.L276:
	strb	r0, [r2, r1]
.L274:
	adds	r6, r6, #51
	cmp	r6, #306
	beq	.L307
.L281:
	mov	r8, r4
	b	.L283
.L306:
	eor	r3, r1, #1
	mov	r5, #-1
	strb	r5, [r2, r3]
	b	.L276
.L288:
	ldr	r5, [sp, #4]
	mov	r0, fp
	mov	lr, r6
	mov	r9, #255
	b	.L262
.L278:
	cmp	r1, #0
	ite	eq
	moveq	r8, #3
	movne	r8, #0
	mov	r3, #-1
	strb	r3, [r2, r8]
.L277:
	adds	r6, r6, #51
	add	ip, ip, r2
	cmp	r6, #306
	add	r2, r2, r1
	strb	lr, [ip, r1]
	strb	r0, [r2, #1]
	strb	r5, [r2, r7]
	bne	.L281
.L307:
	add	r3, fp, #51
	cmp	r3, #306
	beq	.L282
	mov	ip, r3
	mov	r8, r4
	b	.L285
.L305:
	and	r3, r3, #3
	adds	r3, r3, #1
	lsls	r2, r3, #1
	str	r3, [sp, #24]
	ldr	r3, [r10, #12]
	mla	r8, r8, r2, r3
	ldr	r2, [sp, #24]
	cmp	r2, #3
	beq	.L269
	cmp	r2, #4
	beq	.L270
	cmp	r2, #2
	bne	.L268
	eor	r3, r1, #1
	strh	r9, [r8, r3, lsl #1]	@ movhi
.L268:
	movw	r5, #65535
	cmp	r9, r5
	beq	.L275
	mul	r0, r0, r9
	ldr	r9, [sp, #20]
	add	r0, r0, #32640
	adds	r0, r0, #127
	umull	r9, r0, r9, r0
	lsrs	r0, r0, #15
.L275:
	strh	r0, [r8, r1, lsl #1]	@ movhi
	b	.L274
.L263:
	cmp	r1, #1
	it	ne
	movwne	r9, #65535
	bne	.L262
	rsb	r5, r5, r5, lsl #8
	ldr	r1, .L308+8
	ldr	ip, .L308+12
	rsb	lr, lr, lr, lsl #8
	lsr	r9, r5, #15
	ubfx	r5, r5, #0, #15
	rsb	r0, r0, r0, lsl #8
	str	r9, [sp, #28]
	ldr	r9, [sp, #12]
	ldr	r1, [r9, r1]
	lsr	r9, lr, #15
	str	r5, [sp, #36]
	ubfx	lr, lr, #0, #15
	ldr	r5, [sp, #12]
	str	r1, [sp, #8]
	lsrs	r1, r0, #15
	ubfx	r0, r0, #0, #15
	ldr	r5, [r5, ip]
	str	r0, [sp, #40]
	str	lr, [sp, #44]
	str	r5, [sp, #24]
	ldr	r5, [sp, #8]
	ldr	r0, [sp, #28]
	ldrb	lr, [r5, r9]	@ zero_extendqisi2
	ldrb	ip, [r5, r0]	@ zero_extendqisi2
	ldrb	r0, [r5, r1]	@ zero_extendqisi2
	str	lr, [sp]
	ldr	r5, [sp, #28]
	ldr	lr, [sp, #24]
	ldrh	r5, [lr, r5, lsl #1]
	ldrh	r1, [lr, r1, lsl #1]
	ldrh	r9, [lr, r9, lsl #1]
	str	r5, [sp, #28]
	ldr	r5, [sp, #36]
	str	r1, [sp, #36]
	ldr	r1, [sp, #40]
	str	r9, [sp, #8]
	mov	r9, #255
	mul	ip, r5, ip
	ldr	r5, [sp, #44]
	mul	r0, r1, r0
	ldr	r1, [sp]
	mul	lr, r5, r1
	ldr	r1, [sp, #28]
	add	r5, r1, ip, lsr #12
	ldr	ip, [sp, #36]
	ldr	r1, [sp, #8]
	ubfx	r5, r5, #8, #8
	add	r0, ip, r0, lsr #12
	add	lr, r1, lr, lsr #12
	ubfx	r0, r0, #8, #8
	ubfx	lr, lr, #8, #8
	b	.L262
.L270:
	cmp	r1, #0
	ite	eq
	moveq	r3, #6
	movne	r3, #0
	strh	r9, [r8, r3]	@ movhi
.L269:
	movw	r3, #65535
	cmp	r9, r3
	beq	.L273
	mul	lr, lr, r9
	ldr	r2, [sp, #20]
	ldr	r3, [sp, #20]
	mul	r0, r0, r9
	mul	r5, r5, r9
	ldr	r9, [sp, #20]
	add	lr, lr, #32640
	add	r0, r0, #32640
	add	lr, lr, #127
	adds	r0, r0, #127
	add	r5, r5, #32640
	umull	r9, lr, r9, lr
	adds	r5, r5, #127
	umull	r2, r0, r2, r0
	lsr	lr, lr, #15
	umull	r3, r5, r3, r5
	lsrs	r0, r0, #15
	lsrs	r5, r5, #15
.L273:
	add	ip, ip, r1
	add	r7, r7, r1
	adds	r1, r1, #1
	strh	lr, [r8, ip, lsl #1]	@ movhi
	strh	r0, [r8, r1, lsl #1]	@ movhi
	strh	r5, [r8, r7, lsl #1]	@ movhi
	b	.L274
.L304:
	add	lr, lr, #16384
	movw	r9, #65535
	lsr	r0, lr, #15
	mov	lr, r0
	mov	r5, r0
	b	.L262
.L282:
	ldr	r3, [sp, #4]
	mov	r0, r10
	mov	r10, r4
	adds	r3, r3, #51
	cmp	r3, #306
	beq	.L295
	str	r3, [sp, #4]
	mov	r8, r4
	mov	ip, r3
	b	.L258
.L295:
	mov	r0, r10
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L303:
	ldr	r3, [r7]
	ldr	r1, .L308+16
	ldr	r0, [r3]
.LPIC21:
	add	r1, pc
	bl	png_error(PLT)
.L309:
	.align	2
.L308:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	png_sRGB_table(GOT)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.word	.LC3-(.LPIC21+4)
	.size	make_rgb_colormap, .-make_rgb_colormap
	.section	.text.make_ga_colormap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	make_ga_colormap, %function
make_ga_colormap:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r2, #32769
	ldr	fp, .L349
	sub	sp, sp, #20
	movw	ip, #41989
	movt	r2, 32768
	mov	r7, r0
	movt	ip, 7092
	str	r2, [sp, #12]
	movs	r3, #115
	movs	r4, #0
.LPIC23:
	add	fp, pc
.L328:
	umull	r6, r0, ip, r3
	ldr	lr, [r7]
	adds	r1, r4, #1
	ldr	r2, [lr, #16]
	subs	r5, r3, r0
	add	r0, r0, r5, lsr #1
	lsls	r5, r2, #29
	lsr	r0, r0, #7
	bmi	.L311
	movs	r6, #255
	mov	r10, #1
	mov	r9, r6
.L333:
	ldr	r5, [lr, #16]
	and	lr, r2, #16
	cmp	lr, #0
	itete	eq
	moveq	r8, #2
	movne	r8, #0
	moveq	lr, #0
	movne	lr, #2
	cmp	r10, #2
	and	r5, r5, #33
	sub	r5, #33
	clz	r5, r5
	lsr	r5, r5, #5
	beq	.L346
	ldr	r6, [r7, #12]
	and	r2, r2, #3
	adds	r2, r2, #1
	cmp	r2, #3
	mla	r4, r2, r4, r6
	beq	.L323
	cmp	r2, #4
	beq	.L324
	cmp	r2, #2
	beq	.L347
.L322:
	strb	r0, [r4, r5]
.L320:
	cmp	r1, #231
	add	r3, r3, #256
	beq	.L327
.L348:
	mov	r4, r1
	b	.L328
.L347:
	eor	r2, r5, #1
	mov	r6, #-1
	strb	r6, [r4, r2]
	b	.L322
.L311:
	ldr	r5, .L349+4
	movw	r6, #65535
	mov	r9, r6
	mov	r10, #2
	ldr	r5, [fp, r5]
	ldrh	r0, [r5, r0, lsl #1]
	b	.L333
.L324:
	cmp	r5, #0
	ite	eq
	moveq	r2, #3
	movne	r2, #0
	mov	r6, #-1
	strb	r6, [r4, r2]
.L323:
	uxtb	r0, r0
	cmp	r1, #231
	add	r8, r8, r4
	add	r4, r4, r5
	strb	r0, [r8, r5]
	add	r3, r3, #256
	strb	r0, [r4, #1]
	strb	r0, [r4, lr]
	bne	.L348
.L327:
	movs	r3, #255
	movs	r0, #0
	movs	r6, #51
	mov	r8, #232
	str	r0, [sp, #4]
	mov	r2, r3
	str	r3, [sp]
	mov	r0, r7
	bl	png_create_colormap_entry.constprop.7(PLT)
.L329:
	mov	r5, r8
	movs	r4, #0
.L332:
	str	r4, [sp]
	mov	r1, r5
	mov	r2, r4
	mov	r3, r4
	mov	r0, r7
	str	r6, [sp, #4]
	adds	r4, r4, #51
	adds	r5, r5, #1
	bl	png_create_colormap_entry.constprop.7(PLT)
	cmp	r4, #306
	bne	.L332
	add	r8, r8, #6
	adds	r6, r6, #51
	cmp	r8, #256
	bne	.L329
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L346:
	and	r10, r2, #3
	ldr	r2, [r7, #12]
	add	r10, r10, #1
	str	r10, [sp, #8]
	lsl	r10, r10, #1
	mla	r4, r4, r10, r2
	ldr	r2, [sp, #8]
	cmp	r2, #3
	beq	.L315
	cmp	r2, #4
	beq	.L316
	cmp	r2, #2
	bne	.L314
	eor	r2, r5, #1
	strh	r6, [r4, r2, lsl #1]	@ movhi
.L314:
	movw	r6, #65535
	cmp	r9, r6
	beq	.L321
	mul	r0, r9, r0
	ldr	r2, [sp, #12]
	add	r0, r0, #32640
	adds	r0, r0, #127
	umull	r2, r0, r2, r0
	lsrs	r0, r0, #15
.L321:
	strh	r0, [r4, r5, lsl #1]	@ movhi
	b	.L320
.L316:
	cmp	r5, #0
	ite	eq
	moveq	r2, #6
	movne	r2, #0
	strh	r6, [r4, r2]	@ movhi
.L315:
	movw	r6, #65535
	cmp	r9, r6
	beq	.L319
	mul	r0, r9, r0
	ldr	r2, [sp, #12]
	add	r0, r0, #32640
	adds	r0, r0, #127
	umull	r2, r0, r2, r0
	lsrs	r0, r0, #15
.L319:
	uxth	r0, r0
	add	r8, r8, r5
	add	lr, lr, r5
	adds	r5, r5, #1
	strh	r0, [r4, r8, lsl #1]	@ movhi
	strh	r0, [r4, r5, lsl #1]	@ movhi
	strh	r0, [r4, lr, lsl #1]	@ movhi
	b	.L320
.L350:
	.align	2
.L349:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
	.word	png_sRGB_table(GOT)
	.size	make_ga_colormap, .-make_ga_colormap
	.global	__aeabi_uidiv
	.section	.text.png_image_read_colormap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_read_colormap, %function
png_image_read_colormap:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #140
	ldr	r4, [r0]
	mov	fp, r0
	ldr	r9, .L654
	ldr	r3, [r4]
	ldr	r5, [r4, #16]
.LPIC35:
	add	r9, pc
	str	r4, [sp, #32]
	ldr	r3, [r3]
	ands	r1, r5, #4
	ite	eq
	moveq	r6, #1
	movne	r6, #2
	str	r3, [sp, #20]
	ldrb	r3, [r3, #675]	@ zero_extendqisi2
	str	r6, [sp, #24]
	lsls	r6, r3, #29
	bmi	.L353
	ldr	r7, [sp, #20]
	ldrh	r2, [r7, #668]
	cbz	r2, .L354
.L353:
	ands	r2, r5, #1
	bne	.L354
	ldr	r4, [sp, #24]
	cmp	r4, #2
	beq	.L523
	ldr	r2, [fp, #16]
	cmp	r2, #0
	beq	.L616
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	lsls	r4, r5, #30
	str	r6, [sp, #36]
	bpl	.L524
	ldrb	r7, [r2]	@ zero_extendqisi2
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	str	r7, [sp, #40]
	str	r2, [sp, #28]
	b	.L355
.L354:
	ldr	r4, [sp, #24]
	cmp	r4, #2
	beq	.L617
	movs	r4, #255
	str	r4, [sp, #28]
	str	r4, [sp, #36]
	str	r4, [sp, #40]
.L355:
	ldr	r6, [sp, #20]
	ldrh	r2, [r6, #1138]
	lsls	r0, r2, #31
	bmi	.L357
	ldrb	r0, [r6, #676]	@ zero_extendqisi2
	cmp	r0, #16
	it	ne
	movwne	r0, #45455
	beq	.L618
.L358:
	ldr	r8, [sp, #20]
	orr	r2, r2, #1
	str	r0, [r8, #1064]
	strh	r2, [r8, #1138]	@ movhi
.L357:
	cmp	r3, #6
	bhi	.L359
	tbh	[pc, r3, lsl #1]
.L361:
	.2byte	(.L360-.L361)/2
	.2byte	(.L359-.L361)/2
	.2byte	(.L362-.L361)/2
	.2byte	(.L363-.L361)/2
	.2byte	(.L364-.L361)/2
	.2byte	(.L359-.L361)/2
	.2byte	(.L362-.L361)/2
.L364:
	lsls	r6, r5, #31
	bpl	.L380
	ldr	r6, [sp, #32]
	ldr	r3, [r6, #24]
	cmp	r3, #255
	bls	.L619
	mov	r0, fp
	mov	r10, #231
	bl	make_ga_colormap(PLT)
	movs	r6, #1
	mov	r4, r0
	b	.L501
.L363:
	ldr	r10, [sp, #20]
	ldrh	r7, [r10, #668]
	cmp	r7, #0
	bne	.L620
	ldr	r6, [r10, #656]
.L487:
	mov	r9, #0
	mov	r8, r9
	mov	r7, r9
.L520:
	ldr	ip, [sp, #20]
	ldr	r5, [sp, #32]
	ldrh	r4, [ip, #660]
	ldr	r3, [r5, #24]
	cmp	r4, #256
	it	cs
	movcs	r4, #256
	cmp	r3, r4
	bcc	.L488
	movs	r5, #0
	mov	r10, #3
	cbnz	r4, .L498
	b	.L497
.L621:
	ldrb	r3, [r8, r5]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L491
	cmp	r3, #0
	bne	.L492
	ldr	r0, [sp, #28]
	mov	r1, r5
	ldr	r2, [sp, #24]
	str	r3, [sp, #4]
	str	r0, [sp]
	mov	r0, fp
	str	r2, [sp, #8]
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #40]
	bl	png_create_colormap_entry(PLT)
.L493:
	adds	r5, r5, #1
	adds	r6, r6, #3
	cmp	r5, r4
	beq	.L497
.L498:
	cmp	r5, r7
	ite	cs
	movcs	r3, #0
	andcc	r3, r9, #1
	cmp	r3, #0
	bne	.L621
.L491:
	cmp	r7, r5
	ldrb	r0, [r6, #2]	@ zero_extendqisi2
	ite	hi
	ldrbhi	r1, [r8, r5]	@ zero_extendqisi2
	movls	r1, #255
	ldrb	r2, [r6]	@ zero_extendqisi2
	adds	r6, r6, #3
	ldrb	r3, [r6, #-2]	@ zero_extendqisi2
	stmia	sp, {r0, r1, r10}
	mov	r1, r5
	mov	r0, fp
	adds	r5, r5, #1
	bl	png_create_colormap_entry(PLT)
	cmp	r5, r4
	bne	.L498
.L497:
	ldr	r6, [sp, #20]
	ldrb	r3, [r6, #676]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L531
	mov	r0, r6
	mov	r10, #256
	bl	png_set_packing(PLT)
	ldr	r5, [sp, #20]
	movs	r6, #0
	ldrb	r3, [r5, #676]	@ zero_extendqisi2
	b	.L502
.L362:
	lsls	r4, r5, #30
	bpl	.L622
	cmp	r3, #6
	beq	.L459
	ldr	r8, [sp, #20]
	ldrh	r7, [r8, #668]
	cmp	r7, #0
	bne	.L459
	ldr	r8, [sp, #32]
	ldr	r3, [r8, #24]
	cmp	r3, #215
	bls	.L480
	mov	r8, #1
	mov	r4, r7
.L481:
	mov	r10, r4
	mov	r9, #0
.L485:
	mov	r6, r10
	movs	r5, #0
.L484:
	str	r5, [sp]
	mov	r1, r6
	mov	r0, fp
	str	r8, [sp, #4]
	adds	r5, r5, #51
	mov	r2, r7
	mov	r3, r9
	adds	r6, r6, #1
	bl	png_create_colormap_entry.constprop.6(PLT)
	cmp	r5, #306
	bne	.L484
	add	r9, r9, #51
	add	r10, r10, #6
	cmp	r9, #306
	bne	.L485
	adds	r4, r4, #36
	adds	r7, r7, #51
	cmp	r4, #216
	bne	.L481
	mov	r10, #256
	movs	r6, #3
.L501:
	movw	r2, #23392
	ldr	r0, [sp, #20]
	movt	r2, 3
	movs	r1, #0
	bl	png_set_alpha_mode_fixed(PLT)
	ldr	ip, [sp, #20]
	ldrb	r3, [ip, #676]	@ zero_extendqisi2
.L502:
	cmp	r3, #8
	bhi	.L623
.L503:
	cmp	r4, #256
	bhi	.L504
	ldr	r5, [sp, #32]
	ldr	r3, [r5, #24]
	cmp	r3, r4
	bcc	.L504
	subs	r3, r6, #1
	str	r4, [r5, #24]
	cmp	r3, #3
	bhi	.L510
	tbh	[pc, r3, lsl #1]
.L508:
	.2byte	(.L507-.L508)/2
	.2byte	(.L509-.L508)/2
	.2byte	(.L510-.L508)/2
	.2byte	(.L511-.L508)/2
.L360:
	ldr	r4, [sp, #20]
	ldrb	r3, [r4, #676]	@ zero_extendqisi2
	cmp	r3, #8
	bhi	.L365
	ldr	r6, [sp, #32]
	movs	r4, #1
	lsls	r4, r4, r3
	ldr	r2, [r6, #24]
	cmp	r4, r2
	bhi	.L624
	movs	r0, #255
	subs	r1, r4, #1
	bl	__aeabi_uidiv(PLT)
	ldr	r8, [sp, #20]
	mov	r7, r0
	mov	r6, #256
	ldrh	r3, [r8, #668]
	mov	r10, r3
	cbz	r3, .L367
	lsls	r3, r5, #31
	ldrh	r6, [r8, #780]
	it	mi
	movmi	r10, #0
	bpl	.L625
.L367:
	movs	r5, #0
	mov	r8, #3
	mov	r9, r5
.L371:
	cmp	r9, r6
	beq	.L368
	str	r5, [sp]
	mov	r0, fp
	str	r8, [sp, #4]
	mov	r1, r9
	mov	r2, r5
	mov	r3, r5
	bl	png_create_colormap_entry.constprop.6(PLT)
.L369:
	add	r9, r9, #1
	add	r5, r5, r7
	cmp	r4, r9
	bhi	.L371
	ldr	r5, [sp, #20]
	ldrb	r3, [r5, #676]	@ zero_extendqisi2
	cmp	r3, #7
	bls	.L626
.L531:
	cmp	r3, #8
	mov	r10, #256
	mov	r6, #0
	bls	.L503
.L623:
	ldr	r0, [sp, #20]
	bl	png_set_scale_16(PLT)
	b	.L503
.L359:
	ldr	r1, .L654+4
	ldr	r0, [sp, #20]
.LPIC46:
	add	r1, pc
	bl	png_error(PLT)
.L617:
	movw	r6, #65535
	str	r6, [sp, #28]
	str	r6, [sp, #36]
	str	r6, [sp, #40]
	b	.L355
.L510:
	cmp	r10, #256
	bne	.L512
.L513:
	movs	r0, #1
	str	r6, [fp, #40]
	add	sp, sp, #140
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L524:
	mov	r7, r6
	str	r6, [sp, #28]
	str	r6, [sp, #40]
	b	.L355
.L509:
	cmp	r10, r4
	ite	cc
	movcc	r3, #0
	movcs	r3, #1
	cmp	r10, #254
	it	ne
	orrne	r3, r3, #1
	cmp	r3, #0
	beq	.L513
.L512:
	ldr	r1, .L654+8
	ldr	r0, [sp, #20]
.LPIC49:
	add	r1, pc
	bl	png_error(PLT)
.L507:
	cmp	r10, #231
	beq	.L513
	b	.L512
.L620:
	ldr	r8, [r10, #768]
	ldr	r6, [r10, #656]
	cmp	r8, #0
	beq	.L487
	and	r5, r5, #1
	eor	r9, r5, #1
	b	.L520
.L380:
	lsls	r5, r5, #30
	bpl	.L382
	ldr	r7, [sp, #36]
	ldr	r4, [sp, #28]
	ldr	r5, [sp, #40]
	cmp	r7, r4
	it	eq
	cmpeq	r5, r7
	ite	eq
	moveq	r1, #1
	movne	r1, #0
	beq	.L382
	ldr	r7, [sp, #32]
	ldr	r3, [r7, #24]
	cmp	r3, #255
	itttt	hi
	movwhi	r4, #41989
	movhi	r7, #115
	movthi	r4, 7092
	movhi	r6, #1
	bhi	.L390
	b	.L653
.L628:
	mov	r1, r10
.L390:
	umull	r8, r3, r4, r7
	add	r10, r1, #1
	str	r6, [sp, #4]
	mov	r0, fp
	movs	r5, #1
	subs	r2, r7, r3
	add	r7, r7, #256
	add	r3, r3, r2, lsr #1
	lsrs	r3, r3, #7
	mov	r2, r3
	str	r3, [sp]
	bl	png_create_colormap_entry.constprop.6(PLT)
	cmp	r10, #231
	bne	.L628
	ldr	r4, [sp, #24]
	cmp	r4, #2
	beq	.L629
	ldr	r4, [sp, #28]
	movs	r3, #255
	str	r5, [sp, #8]
	mov	r0, fp
	str	r3, [sp, #4]
	mov	r1, r10
	ldr	r3, [sp, #36]
	str	r4, [sp]
	ldr	r2, [sp, #40]
	bl	png_create_colormap_entry(PLT)
	ldr	r3, .L654+12
	ldr	r6, [sp, #36]
	ldr	r5, [sp, #40]
	ldr	r3, [r9, r3]
	ldrh	r6, [r3, r6, lsl #1]
	ldrh	r7, [r3, r4, lsl #1]
	ldrh	r5, [r3, r5, lsl #1]
	str	r3, [sp, #44]
	str	r7, [sp, #28]
	mov	r7, r6
	str	r5, [sp, #40]
	str	r6, [sp, #36]
.L514:
	ldr	r4, [sp, #28]
	mvn	r2, #50
	mul	r5, r2, r5
	ldr	r0, .L654+16
	ldr	r1, .L654+20
	movs	r6, #1
	mul	r7, r2, r7
	str	r6, [sp, #56]
	ldr	r6, [sp, #40]
	movs	r3, #204
	mul	r4, r2, r4
	str	r5, [sp, #64]
	ldr	r5, [r9, r0]
	ldr	r8, [r9, r1]
	str	r7, [sp, #60]
	mul	r6, r3, r6
	str	r4, [sp, #68]
	ldr	r7, [sp, #36]
	ldr	r4, [sp, #28]
	str	r6, [sp, #40]
	str	r10, [sp, #72]
	mul	r7, r3, r7
	str	fp, [sp, #52]
	mul	r4, r3, r4
	str	r7, [sp, #24]
	str	r4, [sp, #28]
.L395:
	ldr	r6, [sp, #56]
	movs	r4, #0
	add	r3, r6, r6, lsl #1
	lsls	r2, r3, #1
	add	r3, r3, r3, lsl #4
	add	r1, r2, #226
	adds	r2, r2, #232
	str	r3, [sp, #36]
	mov	r7, r3
	str	r2, [sp, #48]
	b	.L394
.L630:
	ldr	r7, [sp, #36]
	mov	r1, r6
.L394:
	ldr	r10, [sp, #44]
	movs	r0, #1
	ldr	r9, [sp, #28]
	adds	r6, r1, r0
	ldr	fp, [sp, #40]
	ldrh	lr, [r10, r4]
	adds	r4, r4, #102
	ldr	r10, [sp, #24]
	str	r0, [sp, #4]
	ldr	r0, [sp, #52]
	mul	lr, r7, lr
	add	r9, r9, lr
	add	fp, fp, lr
	lsr	ip, r9, #15
	add	lr, lr, r10
	lsr	r2, fp, #15
	lsr	r3, lr, #15
	ldrb	r7, [r5, ip]	@ zero_extendqisi2
	ubfx	r9, r9, #0, #15
	ldrb	r10, [r5, r2]	@ zero_extendqisi2
	ldrh	ip, [r8, ip, lsl #1]
	ubfx	lr, lr, #0, #15
	ubfx	fp, fp, #0, #15
	ldrh	r2, [r8, r2, lsl #1]
	mul	r9, r9, r7
	ldrb	r7, [r5, r3]	@ zero_extendqisi2
	ldrh	r3, [r8, r3, lsl #1]
	mul	r10, fp, r10
	mul	r7, lr, r7
	add	ip, ip, r9, lsr #12
	add	r2, r2, r10, lsr #12
	ubfx	ip, ip, #8, #8
	str	ip, [sp]
	add	r3, r3, r7, lsr #12
	ubfx	r2, r2, #8, #8
	ubfx	r3, r3, #8, #8
	bl	png_create_colormap_entry.constprop.6(PLT)
	ldr	ip, [sp, #48]
	cmp	r6, ip
	bne	.L630
	ldr	r4, [sp, #56]
	ldr	r6, [sp, #40]
	ldr	r7, [sp, #64]
	adds	r4, r4, #1
	ldr	r10, [sp, #24]
	str	r4, [sp, #56]
	add	r6, r6, r7
	ldr	r7, [sp, #56]
	ldr	r4, [sp, #28]
	str	r6, [sp, #40]
	ldr	ip, [sp, #60]
	cmp	r7, #5
	ldr	r6, [sp, #68]
	add	r10, r10, ip
	add	r4, r4, r6
	str	r10, [sp, #24]
	str	r4, [sp, #28]
	bne	.L395
	ldr	r10, [sp, #72]
	movs	r6, #1
	ldr	fp, [sp, #52]
	mov	r4, #256
	b	.L501
.L365:
	ldr	r6, [sp, #32]
	ldr	r3, [r6, #24]
	cmp	r3, #255
	itt	hi
	movhi	r6, #0
	movhi	r4, #1
	bls	.L631
.L375:
	str	r6, [sp]
	mov	r1, r6
	mov	r2, r6
	mov	r3, r6
	mov	r0, fp
	str	r4, [sp, #4]
	adds	r6, r6, #1
	bl	png_create_colormap_entry.constprop.6(PLT)
	cmp	r6, #256
	bne	.L375
	ldr	r7, [sp, #20]
	ldrh	r3, [r7, #668]
	cmp	r3, #0
	beq	.L532
	lsls	r7, r5, #31
	bmi	.L533
	ldr	r4, [sp, #36]
	ldr	r5, [sp, #28]
	ldr	r6, [sp, #40]
	cmp	r4, r5
	it	eq
	cmpeq	r6, r4
	bne	.L377
	ldr	r5, [sp, #24]
	cmp	r5, #2
	bne	.L387
	ldr	r0, .L654+16
	rsb	r3, r4, r4, lsl #8
	ldr	r1, .L654+20
	mov	r2, r4
.L615:
	ldr	r4, [r9, r0]
	lsrs	r5, r3, #15
	ldr	r1, [r9, r1]
	ubfx	r6, r3, #0, #15
	movw	r7, #65535
	mov	r3, r2
	ldrb	r4, [r4, r5]	@ zero_extendqisi2
	mov	r0, fp
	ldrh	r1, [r1, r5, lsl #1]
	ldr	r5, [sp, #24]
	str	r2, [sp]
	mul	r6, r6, r4
	str	r7, [sp, #4]
	str	r5, [sp, #8]
	add	r1, r1, r6, lsr #12
	ubfx	r1, r1, #8, #8
	str	r1, [sp, #36]
	bl	png_create_colormap_entry(PLT)
	b	.L387
.L622:
	mov	r2, #-1
	ldr	r0, [sp, #20]
	mov	r3, r2
	movs	r1, #1
	bl	png_set_rgb_to_gray_fixed(PLT)
	ldr	r8, [sp, #20]
	ldrb	r3, [r8, #675]	@ zero_extendqisi2
	cmp	r3, #6
	beq	.L397
	ldrh	r2, [r8, #668]
	cmp	r2, #0
	bne	.L397
	ldr	r10, [sp, #32]
	ldr	r3, [r10, #24]
	cmp	r3, #255
	bls	.L518
.L405:
	movw	r5, #32769
	movs	r3, #0
	movw	r10, #65535
	mov	lr, #255
	movt	r5, 32768
	str	r5, [sp, #28]
.L403:
	ldr	r6, [fp]
	ldr	r2, [r6, #16]
	lsls	r1, r2, #29
	bmi	.L438
	movs	r0, #255
	mov	r5, r3
	mov	ip, r0
	movs	r4, #1
.L519:
	ldr	r1, [r6, #16]
	and	r6, r2, #16
	cmp	r6, #0
	itete	eq
	moveq	r7, #2
	movne	r7, #0
	moveq	r6, #0
	movne	r6, #2
	cmp	r4, #2
	and	r1, r1, #33
	sub	r1, #33
	clz	r1, r1
	lsr	r1, r1, #5
	beq	.L632
	ldr	r0, [fp, #12]
	and	r2, r2, #3
	adds	r2, r2, #1
	cmp	r2, #3
	mla	r0, r2, r3, r0
	beq	.L450
	cmp	r2, #4
	beq	.L451
	cmp	r2, #2
	beq	.L633
.L449:
	strb	r5, [r0, r1]
.L447:
	adds	r3, r3, #1
	cmp	r3, #256
	bne	.L403
	movs	r5, #1
.L436:
	ldr	r4, [sp, #20]
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
	cmp	r3, #6
	beq	.L455
	ldrh	r6, [r4, #668]
	mov	r10, #256
	mov	r4, r10
	cbz	r6, .L499
.L455:
	cmp	r5, #3
	ldr	r6, [sp, #24]
	beq	.L634
	cmp	r6, #2
	beq	.L635
.L458:
	ldr	r6, [sp, #36]
	add	r7, sp, #122
	mov	r10, #256
	ldr	r0, [sp, #20]
	add	r1, sp, #120
	movs	r2, #1
	mov	r4, r10
	vdup.32	d18, r6
	movs	r6, #0
	str	r6, [sp]
	mov	r3, r6
	vmov	d16, d18  @ v2si
	strb	r6, [sp, #120]
	vmov	d17, d18  @ v2si
	vmovn.i32	d16, q8
	vst1.16	{d16}, [r7]
	bl	png_set_background_fixed(PLT)
.L379:
	ldr	r8, [sp, #20]
	ldrh	r3, [r8, #668]
	cbz	r3, .L499
	ldrb	r3, [r8, #675]	@ zero_extendqisi2
	lsls	r3, r3, #29
	bpl	.L636
.L499:
	cmp	r5, #1
	beq	.L501
	cmp	r5, #3
	bne	.L611
	ldr	r8, [sp, #20]
	ldrb	r3, [r8, #676]	@ zero_extendqisi2
	b	.L502
.L382:
	ldr	r8, [sp, #32]
	ldr	r3, [r8, #24]
	cmp	r3, #255
	itt	hi
	movhi	r4, #0
	movhi	r5, #1
	bls	.L637
.L386:
	str	r4, [sp]
	mov	r1, r4
	mov	r2, r4
	mov	r3, r4
	mov	r0, fp
	str	r5, [sp, #4]
	adds	r4, r4, #1
	bl	png_create_colormap_entry.constprop.6(PLT)
	cmp	r4, #256
	bne	.L386
	ldr	r4, [sp, #24]
	cmp	r4, #2
	beq	.L638
.L387:
	ldr	r6, [sp, #36]
	add	r5, sp, #122
	ldr	r0, [sp, #20]
	mov	r10, #256
	add	r1, sp, #120
	movs	r2, #1
	mov	r4, r10
	vdup.32	d18, r6
	movs	r6, #0
	str	r6, [sp]
	mov	r3, r6
	vmov	d16, d18  @ v2si
	strb	r6, [sp, #120]
	vmov	d17, d18  @ v2si
	vmovn.i32	d16, q8
	vst1.16	{d16}, [r5]
	bl	png_set_background_fixed(PLT)
	b	.L501
.L492:
	ldr	r0, [sp, #40]
	ldr	r2, [sp, #24]
	ldrb	r1, [r6]	@ zero_extendqisi2
	str	r0, [sp]
	mov	r0, fp
	str	r2, [sp, #4]
	movs	r2, #3
	bl	png_colormap_compose(PLT)
	ldr	r3, [sp, #36]
	movs	r2, #3
	ldrb	lr, [r8, r5]	@ zero_extendqisi2
	ldrb	r1, [r6, #1]	@ zero_extendqisi2
	str	r3, [sp]
	ldr	r3, [sp, #24]
	str	r0, [sp, #44]
	mov	r0, fp
	str	r3, [sp, #4]
	mov	r3, lr
	bl	png_colormap_compose(PLT)
	ldr	r3, [sp, #28]
	mov	ip, r0
	ldrb	r1, [r6, #2]	@ zero_extendqisi2
	mov	r0, fp
	ldrb	lr, [r8, r5]	@ zero_extendqisi2
	movs	r2, #3
	str	r3, [sp]
	ldr	r3, [sp, #24]
	str	ip, [sp, #16]
	str	r3, [sp, #4]
	mov	r3, lr
	bl	png_colormap_compose(PLT)
	ldrb	r3, [r8, r5]	@ zero_extendqisi2
	ldr	r1, [sp, #24]
	ldr	ip, [sp, #16]
	str	r0, [sp]
	cmp	r1, #2
	ldr	r0, [sp, #24]
	it	eq
	addeq	r3, r3, r3, lsl #8
	ldr	r2, [sp, #44]
	mov	r1, r5
	str	r3, [sp, #4]
	mov	r3, ip
	str	r0, [sp, #8]
	mov	r0, fp
	bl	png_create_colormap_entry(PLT)
	b	.L493
.L618:
	ldr	r7, [sp, #32]
	movw	r0, #34464
	movw	r6, #45455
	movt	r0, 1
	ldr	r4, [r7, #20]
	tst	r4, #4
	it	ne
	movne	r0, r6
	b	.L358
.L523:
	str	r2, [sp, #28]
	str	r2, [sp, #36]
	str	r2, [sp, #40]
	b	.L355
.L459:
	ands	r6, r5, #1
	bne	.L639
	ldr	r7, [sp, #32]
	and	r5, r5, #3
	lsrs	r1, r1, #2
	adds	r5, r5, #1
	ldr	r3, [r7, #24]
	mla	r5, r1, r5, r5
	cmp	r3, #243
	bls	.L640
	mov	r0, fp
	bl	make_rgb_colormap(PLT)
	ldr	r7, [sp, #28]
	mov	r4, r0
	str	r6, [sp, #4]
	mov	r0, fp
	ldr	r6, [sp, #24]
	mov	r1, r4
	str	r7, [sp]
	ldr	r2, [sp, #40]
	str	r6, [sp, #8]
	ldr	r3, [sp, #36]
	bl	png_create_colormap_entry(PLT)
	cmp	r6, #2
	beq	.L641
	ldr	r3, [sp, #36]
	ldr	r0, [sp, #40]
	mov	r2, r3
.L469:
	add	r6, r0, r0, lsl #2
	add	r1, r2, r2, lsl #2
	add	r3, r3, r3, lsl #2
	ldr	r0, [fp, #12]
	add	r2, r6, #130
	lsrs	r2, r2, #8
	adds	r1, r1, #130
	lsrs	r6, r1, #8
	adds	r3, r3, #130
	add	r2, r2, r2, lsl #1
	lsrs	r1, r3, #8
	add	r3, r6, r2, lsl #1
	mov	r2, r5
	add	r3, r3, r3, lsl #1
	add	r1, r1, r3, lsl #1
	uxtb	r1, r1
	mla	r1, r5, r1, r0
	mla	r0, r5, r4, r0
	bl	memcmp(PLT)
	mov	r5, r0
	cmp	r0, #0
	beq	.L470
	ldr	r5, [sp, #40]
	add	r8, r4, #31
	ldr	r6, [sp, #36]
	add	r10, r4, #4
	ldr	r3, .L654+12
	ldr	r7, [sp, #28]
	rsb	r5, r5, r5, lsl #7
	str	r8, [sp, #64]
	rsb	r6, r6, r6, lsl #7
	mov	r8, #0
	str	r5, [sp, #76]
	str	r6, [sp, #80]
	rsb	r7, r7, r7, lsl #7
	ldr	r3, [r9, r3]
	str	r7, [sp, #84]
	str	r4, [sp, #88]
	str	r3, [sp, #44]
	str	fp, [sp, #60]
.L471:
	ldr	ip, [sp, #44]
	movs	r4, #3
	str	r10, [sp, #52]
	movs	r5, #0
	str	r10, [sp, #100]
	ldrh	r3, [ip, r8, lsl #1]
	mov	r10, ip
	str	r4, [sp, #56]
	str	r5, [sp, #48]
	str	r8, [sp, #96]
	lsls	r3, r3, #7
	str	r3, [sp, #68]
	ldr	r6, [sp, #68]
	ldr	r3, [sp, #76]
	add	r3, r3, r6
	add	r3, r3, r3, lsl #8
	add	r7, r3, #32768
	str	r3, [sp, #72]
	str	r7, [sp, #92]
.L479:
	ldr	r6, [sp, #52]
	movs	r4, #0
	subs	r5, r6, #3
	ldr	r6, [sp, #24]
	cmp	r6, #2
	bne	.L642
.L473:
	ldr	ip, [sp, #48]
	ldr	r8, [sp, #80]
	ldrh	r1, [r10, r4, lsl #1]
	ldrh	r3, [r10, ip, lsl #1]
	ldr	ip, [sp, #84]
	ldr	r6, [sp, #92]
	ldr	r7, [sp, #72]
	add	r3, r8, r3, lsl #7
	add	r1, ip, r1, lsl #7
	add	r3, r3, r3, lsl #8
	add	r1, r1, r1, lsl #8
	add	r2, r6, r7, lsr #16
	add	r0, r3, #32768
	lsrs	r2, r2, #16
	add	r3, r0, r3, lsr #16
	add	r0, r1, #32768
	add	r1, r0, r1, lsr #16
	lsrs	r3, r3, #16
	lsrs	r1, r1, #16
.L475:
	ldr	r7, [sp, #24]
	movs	r0, #0
	str	r1, [sp]
	mov	r1, r5
	str	r0, [sp, #4]
	lsls	r4, r4, #1
	str	r7, [sp, #8]
	ldr	r0, [sp, #60]
	orr	r4, r4, #127
	bl	png_create_colormap_entry(PLT)
	ldr	r8, [sp, #52]
	adds	r3, r5, #1
	cmp	r3, r8
	beq	.L643
	ldr	r6, [sp, #24]
	mov	r5, r3
	cmp	r6, #2
	beq	.L473
.L642:
	ldr	r8, [sp, #28]
	ldr	r7, [sp, #36]
	ldr	r6, [sp, #40]
	ldrh	ip, [r10, r8, lsl #1]
	ldr	r8, [sp, #48]
	ldrh	fp, [r10, r7, lsl #1]
	ldrh	r7, [r10, r6, lsl #1]
	ldrh	r1, [r10, r8, lsl #1]
	rsb	ip, ip, ip, lsl #7
	ldrh	r2, [r10, r4, lsl #1]
	ldr	r3, .L654+16
	rsb	fp, fp, fp, lsl #7
	ldr	r6, [sp, #68]
	rsb	r7, r7, r7, lsl #7
	add	fp, fp, r1, lsl #7
	add	ip, ip, r2, lsl #7
	ldr	r2, [r9, r3]
	add	r7, r7, r6
	ldr	r3, .L654+20
	lsrs	r1, r7, #15
	lsr	r6, fp, #15
	lsr	r0, ip, #15
	ldrb	r8, [r2, r6]	@ zero_extendqisi2
	ubfx	ip, ip, #0, #15
	ldrb	lr, [r2, r0]	@ zero_extendqisi2
	ubfx	fp, fp, #0, #15
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	ubfx	r7, r7, #0, #15
	ldr	r3, [r9, r3]
	mul	r8, fp, r8
	ldrh	r0, [r3, r0, lsl #1]
	mul	lr, ip, lr
	ldrh	r6, [r3, r6, lsl #1]
	ldrh	ip, [r3, r1, lsl #1]
	mul	r2, r7, r2
	add	r1, r0, lr, lsr #12
	add	r3, r6, r8, lsr #12
	add	r2, ip, r2, lsr #12
	ubfx	r1, r1, #8, #8
	ubfx	r3, r3, #8, #8
	ubfx	r2, r2, #8, #8
	b	.L475
.L511:
	cmp	r10, #216
	beq	.L513
	b	.L512
.L532:
	mov	r10, r6
	mov	r6, r3
	mov	r4, r10
	b	.L501
.L639:
	ldr	r10, [sp, #32]
	ldr	r3, [r10, #24]
	cmp	r3, #243
	bls	.L644
	mov	r0, fp
	movs	r7, #0
	bl	make_rgb_colormap(PLT)
	mov	r8, #128
	mov	r10, r0
	movs	r3, #255
	add	ip, r10, #28
	mov	r0, fp
	mov	r1, r10
	mov	r2, r3
	stmia	sp, {r3, r7}
	add	r4, r10, #1
	str	ip, [sp, #28]
	bl	png_create_colormap_entry.constprop.7(PLT)
	str	r4, [sp, #24]
	str	r10, [sp, #36]
.L463:
	ldr	ip, [sp, #24]
	mov	r10, #3
	movs	r6, #0
.L467:
	add	r9, ip, #3
	movs	r5, #0
	mov	r4, ip
.L466:
	str	r5, [sp]
	mov	r1, r4
	mov	r0, fp
	str	r8, [sp, #4]
	mov	r2, r7
	mov	r3, r6
	adds	r4, r4, #1
	lsls	r5, r5, #1
	bl	png_create_colormap_entry.constprop.7(PLT)
	cmp	r4, r9
	orr	r5, r5, #127
	bne	.L466
	lsls	r6, r6, #1
	subs	r10, r10, #1
	orr	r6, r6, #127
	beq	.L465
	mov	ip, r9
	b	.L467
.L633:
	eor	r2, r1, #1
	strb	lr, [r0, r2]
	b	.L449
.L625:
	ldr	r5, [sp, #24]
	movw	r3, #65535
	cmp	r5, #2
	ite	eq
	moveq	r10, r3
	movne	r10, #255
	b	.L367
.L397:
	lsls	r0, r5, #31
	bpl	.L399
	ldr	r10, [sp, #32]
	ldr	r3, [r10, #24]
	cmp	r3, #255
	bls	.L645
	mov	r0, fp
	movs	r5, #1
	bl	make_ga_colormap(PLT)
	mov	r6, r5
	mov	r4, r0
	mov	r10, #231
	b	.L379
.L533:
	ldr	r5, [sp, #24]
	movs	r3, #0
.L376:
	ldr	r4, [sp, #28]
	movs	r1, #254
	str	r3, [sp, #4]
	mov	r0, fp
	str	r5, [sp, #8]
	mov	r10, r1
	str	r4, [sp]
	movs	r5, #1
	ldr	r2, [sp, #40]
	movs	r6, #2
	ldr	r3, [sp, #36]
	mov	r4, #256
	bl	png_create_colormap_entry(PLT)
	b	.L379
.L438:
	ldr	r1, .L654+12
	movw	r0, #65535
	mov	ip, r0
	movs	r4, #2
	ldr	r1, [r9, r1]
	ldrh	r5, [r1, r3, lsl #1]
	b	.L519
.L451:
	cmp	r1, #0
	ite	eq
	moveq	r2, #3
	movne	r2, #0
	strb	lr, [r0, r2]
.L450:
	uxtb	r5, r5
	add	r0, r0, r1
	strb	r5, [r0, r7]
	strb	r5, [r0, #1]
	strb	r5, [r0, r6]
	b	.L447
.L632:
	and	r2, r2, #3
	ldr	r4, [fp, #12]
	adds	r2, r2, #1
	lsl	r8, r2, #1
	cmp	r2, #3
	mla	r4, r3, r8, r4
	beq	.L442
	cmp	r2, #4
	beq	.L443
	cmp	r2, #2
	bne	.L441
	eor	r2, r1, #1
	strh	r0, [r4, r2, lsl #1]	@ movhi
.L441:
	cmp	ip, r10
	beq	.L448
	mul	r2, ip, r5
	ldr	ip, [sp, #28]
	add	r2, r2, #32640
	adds	r2, r2, #127
	umull	ip, r2, ip, r2
	lsrs	r5, r2, #15
.L448:
	strh	r5, [r4, r1, lsl #1]	@ movhi
	b	.L447
.L443:
	cmp	r1, #0
	ite	eq
	moveq	r2, #6
	movne	r2, #0
	strh	r0, [r4, r2]	@ movhi
.L442:
	cmp	ip, r10
	beq	.L446
	mul	r2, ip, r5
	ldr	r8, [sp, #28]
	add	r2, r2, #32640
	adds	r2, r2, #127
	umull	r8, r2, r8, r2
	lsrs	r5, r2, #15
.L446:
	uxth	r5, r5
	add	r7, r7, r1
	add	r6, r6, r1
	adds	r1, r1, #1
	strh	r5, [r4, r7, lsl #1]	@ movhi
	strh	r5, [r4, r1, lsl #1]	@ movhi
	strh	r5, [r4, r6, lsl #1]	@ movhi
	b	.L447
.L611:
	ldr	r1, .L654+24
	ldr	r0, [sp, #20]
.LPIC47:
	add	r1, pc
	bl	png_error(PLT)
.L465:
	ldr	r5, [sp, #24]
	lsls	r7, r7, #1
	ldr	r6, [sp, #28]
	orr	r7, r7, #127
	adds	r5, r5, #9
	cmp	r5, r6
	str	r5, [sp, #24]
	bne	.L463
	ldr	r10, [sp, #36]
	movs	r5, #1
	movs	r6, #4
	b	.L379
.L636:
	mov	r0, r8
	bl	png_set_tRNS_to_alpha(PLT)
	b	.L499
.L399:
	ldr	ip, [sp, #32]
	ldr	r2, [ip, #24]
	cmp	r2, #255
	bls	.L518
	cmp	r3, #6
	beq	.L402
	ldr	r4, [sp, #20]
	ldrh	r3, [r4, #668]
	cmp	r3, #0
	beq	.L405
.L402:
	ldr	r6, [sp, #20]
	movw	r2, #34463
	movt	r2, 1
	ldr	r3, [r6, #1064]
	cmp	r3, r2
	bgt	.L404
	cmp	r3, #0
	beq	.L405
	add	r1, r3, r3, lsl #2
	movw	r2, #26215
	movt	r2, 26214
	add	r3, r3, r1, lsl #1
	adds	r3, r3, #2
	smull	r7, r2, r2, r3
	asrs	r0, r3, #31
	rsb	r0, r0, r2, asr #1
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	beq	.L405
.L404:
	mov	r8, #0
	movw	r10, #34463
	movw	r2, #32769
	movw	r3, #26215
	str	r9, [sp, #28]
	mov	r4, r8
	mov	r9, r8
	movt	r10, 1
	movt	r3, 26214
	movt	r2, 32768
	str	r10, [sp, #40]
	str	r3, [sp, #56]
	str	r2, [sp, #48]
.L437:
	ldr	r5, [fp]
	ldr	r3, [fp, #32]
	ldr	r2, [r5, #16]
	tst	r2, #4
	ite	eq
	moveq	r6, #1
	movne	r6, #2
	cbz	r3, .L646
.L407:
	cmp	r3, #3
	beq	.L647
	cmp	r3, #4
	beq	.L413
	cmp	r3, #1
	beq	.L412
	cmp	r3, #2
	beq	.L648
.L419:
	ldr	r3, [r5]
	ldr	r1, .L654+28
	ldr	r0, [r3]
.LPIC41:
	add	r1, pc
	bl	png_error(PLT)
.L646:
	ldr	r3, [r5]
	ldr	r3, [r3]
	ldr	r7, [r3, #1064]
	mov	r0, r7
	bl	png_gamma_significant(PLT)
	cbz	r0, .L408
	ldr	r8, [sp, #40]
	cmp	r7, r8
	ble	.L409
.L411:
	movs	r3, #3
	mov	r0, r7
	str	r3, [fp, #32]
	bl	png_reciprocal(PLT)
	ldr	r3, [fp, #32]
	str	r0, [fp, #36]
	b	.L407
.L655:
	.align	2
.L654:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC35+4)
	.word	.LC18-(.LPIC46+4)
	.word	.LC21-(.LPIC49+4)
	.word	png_sRGB_table(GOT)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.word	.LC19-(.LPIC47+4)
	.word	.LC5-(.LPIC41+4)
.L408:
	movs	r3, #4
	str	r3, [fp, #32]
.L413:
	mov	r0, r9
	mov	r8, r9
	mov	r10, r9
.L415:
	movs	r3, #255
	movw	r2, #65535
.L516:
	cmp	r6, #1
	beq	.L649
.L515:
	ldr	lr, [r5, #16]
	and	r3, lr, #16
	and	r1, lr, #33
	cmp	r3, #0
	sub	r1, #33
	itete	eq
	moveq	r7, #2
	movne	r7, #0
	moveq	r5, #0
	movne	r5, #2
	cmp	r6, #2
	clz	r1, r1
	lsr	r1, r1, #5
	beq	.L650
	ldr	r3, [fp, #12]
	and	lr, lr, #3
	add	lr, lr, #1
	cmp	lr, #3
	mla	r3, lr, r4, r3
	beq	.L432
	cmp	lr, #4
	beq	.L433
	cmp	lr, #2
	bne	.L431
	eor	r0, r1, #1
	strb	r2, [r3, r0]
.L431:
	strb	r8, [r3, r1]
.L429:
	adds	r4, r4, #1
	addw	r3, r9, #257
	cmp	r4, #256
	beq	.L541
	mov	r9, r3
	b	.L437
.L433:
	cmp	r1, #0
	ite	eq
	moveq	r6, #3
	movne	r6, #0
	strb	r2, [r3, r6]
.L432:
	add	r3, r3, r1
	strb	r0, [r3, r7]
	strb	r8, [r3, #1]
	strb	r10, [r3, r5]
	b	.L429
.L650:
	and	r6, lr, #3
	ldr	r3, [fp, #12]
	adds	r6, r6, #1
	lsl	lr, r6, #1
	cmp	r6, #3
	mla	r3, r4, lr, r3
	beq	.L424
	cmp	r6, #4
	beq	.L425
	cmp	r6, #2
	bne	.L423
	eor	r0, r1, #1
	strh	r2, [r3, r0, lsl #1]	@ movhi
.L423:
	movw	lr, #65535
	cmp	r2, lr
	beq	.L430
	mul	r2, r2, r8
	ldr	r5, [sp, #48]
	add	r2, r2, #32640
	adds	r2, r2, #127
	umull	r5, r2, r5, r2
	lsr	r8, r2, #15
.L430:
	strh	r8, [r3, r1, lsl #1]	@ movhi
	b	.L429
.L409:
	cmp	r7, #0
	bne	.L651
.L410:
	movs	r0, #1
	str	r0, [fp, #32]
.L412:
	cmp	r6, #2
	bne	.L537
	ldr	r8, [sp, #28]
	ldr	r3, .L656
	ldr	r3, [r8, r3]
	ldrh	r10, [r3, r4, lsl #1]
	mov	r0, r10
	mov	r8, r10
	b	.L415
.L647:
	ldr	r7, [fp, #36]
	mov	r0, r9
	mov	r1, r7
	bl	png_gamma_16bit_correct(PLT)
	mov	r1, r7
	mov	r10, r0
	mov	r0, r9
	bl	png_gamma_16bit_correct(PLT)
	mov	r1, r7
	mov	r8, r0
	mov	r0, r9
	bl	png_gamma_16bit_correct(PLT)
	cmp	r6, #2
	beq	.L415
	ldr	ip, [sp, #28]
	rsb	lr, r0, r0, lsl #8
	ldr	r2, .L656+4
	rsb	r10, r10, r10, lsl #8
	ldr	r3, .L656+8
	rsb	r8, r8, r8, lsl #8
	lsr	r0, r10, #15
	ubfx	r10, r10, #0, #15
	ldr	r7, [ip, r2]
	lsr	r1, r8, #15
	ldr	r3, [ip, r3]
	lsr	r2, lr, #15
	ubfx	r8, r8, #0, #15
	str	r8, [sp, #60]
	ubfx	lr, lr, #0, #15
	ldrb	r8, [r7, r0]	@ zero_extendqisi2
	ldrb	ip, [r7, r1]	@ zero_extendqisi2
	ldrh	r0, [r3, r0, lsl #1]
	ldrb	r7, [r7, r2]	@ zero_extendqisi2
	ldrh	r1, [r3, r1, lsl #1]
	mul	r10, r10, r8
	str	r3, [sp, #52]
	ldrh	r3, [r3, r2, lsl #1]
	ldr	r2, [sp, #60]
	mul	r7, lr, r7
	add	r0, r0, r10, lsr #12
	ubfx	r10, r0, #8, #8
	mul	ip, r2, ip
	add	r3, r3, r7, lsr #12
	ubfx	r0, r3, #8, #8
	add	r1, r1, ip, lsr #12
	ubfx	r8, r1, #8, #8
.L416:
	cmp	r6, #1
	bne	.L419
	movs	r2, #255
	b	.L515
.L425:
	cmp	r1, #0
	ite	eq
	moveq	r6, #6
	movne	r6, #0
	strh	r2, [r3, r6]	@ movhi
.L424:
	movw	ip, #65535
	cmp	r2, ip
	beq	.L428
	mul	r6, r2, r8
	ldr	ip, [sp, #48]
	ldr	r8, [sp, #48]
	mul	r0, r0, r2
	mul	r2, r2, r10
	ldr	r10, [sp, #48]
	add	r6, r6, #32640
	add	r0, r0, #32640
	adds	r0, r0, #127
	adds	r6, r6, #127
	add	r2, r2, #32640
	umull	r8, r0, r8, r0
	adds	r2, r2, #127
	umull	r10, r6, r10, r6
	lsrs	r0, r0, #15
	umull	ip, r2, ip, r2
	lsr	r8, r6, #15
	lsr	r10, r2, #15
.L428:
	add	r7, r7, r1
	add	r5, r5, r1
	adds	r1, r1, #1
	strh	r0, [r3, r7, lsl #1]	@ movhi
	strh	r8, [r3, r1, lsl #1]	@ movhi
	strh	r10, [r3, r5, lsl #1]	@ movhi
	b	.L429
.L537:
	mov	r0, r4
	mov	r8, r4
	mov	r10, r4
	b	.L416
.L626:
	mov	r0, r5
	mov	r10, #256
	bl	png_set_packing(PLT)
	movs	r6, #0
	ldrb	r3, [r5, #676]	@ zero_extendqisi2
	b	.L502
.L649:
	ldr	r1, [sp, #28]
	rsb	r8, r8, r8, lsl #8
	ldr	r2, .L656+4
	rsb	r10, r10, r10, lsl #8
	ldr	lr, .L656+8
	lsr	r7, r8, #15
	ubfx	r8, r8, #0, #15
	lsr	ip, r10, #15
	ldr	r2, [r1, r2]
	rsb	r0, r0, r0, lsl #8
	ubfx	r10, r10, #0, #15
	lsrs	r1, r0, #15
	ubfx	r0, r0, #0, #15
	str	r2, [sp, #44]
	ldr	r2, [sp, #28]
	ldr	r2, [r2, lr]
	str	r8, [sp, #60]
	ldr	r8, [sp, #44]
	str	r0, [sp, #64]
	ldr	r0, [sp, #44]
	ldrb	lr, [r8, ip]	@ zero_extendqisi2
	str	r2, [sp, #52]
	mov	r2, r3
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
	ldrb	r8, [r8, r7]	@ zero_extendqisi2
	mul	lr, r10, lr
	ldr	r10, [sp, #60]
	ldr	r3, [sp, #52]
	str	r0, [sp, #44]
	ldrh	r7, [r3, r7, lsl #1]
	mul	r8, r10, r8
	ldrh	r0, [r3, ip, lsl #1]
	ldr	r10, [sp, #44]
	ldrh	r3, [r3, r1, lsl #1]
	ldr	r1, [sp, #64]
	add	r8, r7, r8, lsr #12
	add	r0, r0, lr, lsr #12
	ubfx	r8, r8, #8, #8
	mul	ip, r1, r10
	ubfx	r10, r0, #8, #8
	add	r3, r3, ip, lsr #12
	ubfx	r0, r3, #8, #8
	b	.L515
.L377:
	ldr	r7, [sp, #24]
	movw	r3, #65535
	cmp	r7, #2
	it	ne
	movne	r3, #255
	mov	r5, r7
	b	.L376
.L470:
	ldr	r6, [sp, #40]
	mov	r3, r0
	ldr	r7, [sp, #36]
	add	r1, sp, #120
	strb	r5, [sp, #120]
	add	r5, sp, #122
	str	r6, [sp, #112]
	movs	r2, #1
	ldr	r6, [sp, #28]
	mov	r10, #256
	str	r7, [sp, #116]
	vldr	d18, [sp, #112]
	str	r6, [sp, #104]
	movs	r6, #3
	str	r7, [sp, #108]
	vmov	d16, d18  @ v2si
	vldr	d17, [sp, #104]
	str	r0, [sp]
	vmovn.i32	d16, q8
	ldr	r0, [sp, #20]
	vst1.16	{d16}, [r5]
	bl	png_set_background_fixed(PLT)
	b	.L501
.L651:
	add	r3, r7, r7, lsl #2
	ldr	r10, [sp, #56]
	add	r3, r7, r3, lsl #1
	adds	r3, r3, #2
	smull	r10, r0, r10, r3
	asrs	r3, r3, #31
	rsb	r0, r3, r0, asr #1
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	beq	.L410
	b	.L411
.L641:
	ldr	r7, [sp, #40]
	ldr	r3, .L656+4
	rsb	r6, r7, r7, lsl #8
	ldr	r7, [sp, #36]
	ldr	r8, [r9, r3]
	lsr	r10, r6, #15
	ubfx	r6, r6, #0, #15
	rsb	r0, r7, r7, lsl #8
	ldr	r7, [sp, #28]
	lsrs	r2, r0, #15
	ubfx	lr, r0, #0, #15
	ldrb	r0, [r8, r10]	@ zero_extendqisi2
	rsb	r1, r7, r7, lsl #8
	ldr	r7, .L656+8
	lsrs	r3, r1, #15
	ubfx	ip, r1, #0, #15
	ldrb	r1, [r8, r2]	@ zero_extendqisi2
	mul	r0, r6, r0
	ldrb	r8, [r8, r3]	@ zero_extendqisi2
	ldr	r7, [r9, r7]
	mul	r1, lr, r1
	ldrh	r10, [r7, r10, lsl #1]
	ldrh	r2, [r7, r2, lsl #1]
	mul	ip, ip, r8
	ldrh	r3, [r7, r3, lsl #1]
	add	r0, r10, r0, lsr #12
	add	r2, r2, r1, lsr #12
	add	r3, r3, ip, lsr #12
	ubfx	r0, r0, #8, #8
	ubfx	r2, r2, #8, #8
	ubfx	r3, r3, #8, #8
	b	.L469
.L638:
	ldr	r5, [sp, #36]
	ldr	r0, .L656+4
	ldr	r1, .L656+8
	mov	r2, r5
	rsb	r3, r5, r5, lsl #8
	b	.L615
.L629:
	ldr	r5, [sp, #24]
	movw	r3, #65535
	ldr	r4, [sp, #28]
	mov	r0, fp
	str	r3, [sp, #4]
	mov	r1, r10
	str	r5, [sp, #8]
	ldr	r3, [sp, #36]
	str	r4, [sp]
	ldr	r2, [sp, #40]
	bl	png_create_colormap_entry(PLT)
	ldr	r3, .L656
	ldr	r5, [sp, #40]
	ldr	r7, [sp, #36]
	ldr	r3, [r9, r3]
	str	r3, [sp, #44]
	b	.L514
.L541:
	ldr	r9, [sp, #28]
	movs	r5, #3
	b	.L436
.L634:
	cmp	r6, #1
	it	ne
	ldrne	r0, [sp, #36]
	beq	.L652
.L457:
	ldr	r8, [sp, #20]
	movs	r6, #0
	ldr	r1, [r8, #1064]
	bl	png_gamma_16bit_correct(PLT)
	rsb	r0, r0, r0, lsl #8
	ldr	r4, [sp, #24]
	ldr	r2, [sp, #36]
	add	r1, r0, #32768
	str	r6, [sp, #4]
	adds	r1, r1, #127
	str	r4, [sp, #8]
	lsrs	r4, r1, #16
	str	r2, [sp]
	mov	r3, r2
	mov	r0, fp
	mov	r1, r4
	str	r4, [sp, #36]
	bl	png_create_colormap_entry(PLT)
	b	.L458
.L643:
	ldr	ip, [sp, #48]
	adds	r5, r5, #4
	ldr	r4, [sp, #56]
	str	r5, [sp, #52]
	lsl	r2, ip, #1
	subs	r4, r4, #1
	str	r4, [sp, #56]
	orr	r2, r2, #127
	str	r2, [sp, #48]
	bne	.L479
	ldr	r8, [sp, #96]
	ldr	r10, [sp, #100]
	ldr	r7, [sp, #64]
	add	r10, r10, #9
	lsl	r2, r8, #1
	cmp	r10, r7
	orr	r8, r2, #127
	bne	.L471
	ldr	r4, [sp, #88]
	movs	r5, #1
	ldr	fp, [sp, #60]
	movs	r6, #4
	mov	r10, r4
	mov	r4, r3
	b	.L379
.L635:
	ldr	r1, .L656+4
	mov	r0, fp
	ldr	r7, [sp, #36]
	ldr	r3, .L656+8
	ldr	r1, [r9, r1]
	mov	r2, r7
	rsb	r6, r7, r7, lsl #8
	movs	r7, #0
	str	r1, [sp, #28]
	ldr	r8, [sp, #28]
	lsrs	r4, r6, #15
	ldr	r1, [r9, r3]
	ubfx	r6, r6, #0, #15
	mov	r3, r2
	str	r2, [sp]
	ldrb	lr, [r8, r4]	@ zero_extendqisi2
	ldrh	r1, [r1, r4, lsl #1]
	ldr	r4, [sp, #24]
	str	r7, [sp, #4]
	mul	r6, r6, lr
	str	r4, [sp, #8]
	add	r1, r1, r6, lsr #12
	ubfx	r1, r1, #8, #8
	str	r1, [sp, #36]
	bl	png_create_colormap_entry(PLT)
	b	.L458
.L652:
	ldr	r3, .L656
	ldr	r7, [sp, #36]
	ldr	r3, [r9, r3]
	ldrh	r0, [r3, r7, lsl #1]
	b	.L457
.L648:
	mov	r0, r4
	mov	r8, r4
	mov	r10, r4
	movs	r3, #1
	movs	r2, #255
	b	.L516
.L644:
	ldr	r1, .L656+12
	ldr	r0, [sp, #20]
.LPIC42:
	add	r1, pc
	bl	png_error(PLT)
.L368:
	ldr	r0, [sp, #28]
	mov	r1, r9
	ldr	r2, [sp, #24]
	str	r10, [sp, #4]
	str	r0, [sp]
	mov	r0, fp
	str	r2, [sp, #8]
	ldr	r3, [sp, #36]
	ldr	r2, [sp, #40]
	bl	png_create_colormap_entry(PLT)
	b	.L369
.L640:
	ldr	r1, .L656+16
	ldr	r0, [sp, #20]
.LPIC43:
	add	r1, pc
	bl	png_error(PLT)
.L637:
	ldr	r1, .L656+20
	ldr	r0, [sp, #20]
.LPIC37:
	add	r1, pc
	bl	png_error(PLT)
.L518:
	ldr	r1, .L656+24
	ldr	r0, [sp, #20]
.LPIC40:
	add	r1, pc
	bl	png_error(PLT)
.L624:
	ldr	r1, .L656+28
	ldr	r0, [sp, #20]
.LPIC33:
	add	r1, pc
	bl	png_error(PLT)
.L645:
	ldr	r1, .L656+32
	ldr	r0, [sp, #20]
.LPIC39:
	add	r1, pc
	bl	png_error(PLT)
.L653:
	ldr	r1, .L656+36
	ldr	r0, [sp, #20]
.LPIC38:
	add	r1, pc
	bl	png_error(PLT)
.L631:
	ldr	r1, .L656+40
	ldr	r0, [sp, #20]
.LPIC34:
	add	r1, pc
	bl	png_error(PLT)
.L619:
	ldr	r1, .L656+44
	ldr	r0, [sp, #20]
.LPIC36:
	add	r1, pc
	bl	png_error(PLT)
.L488:
	ldr	r1, .L656+48
	mov	r0, ip
.LPIC45:
	add	r1, pc
	bl	png_error(PLT)
.L504:
	ldr	r1, .L656+52
	ldr	r0, [sp, #20]
.LPIC48:
	add	r1, pc
	bl	png_error(PLT)
.L480:
	ldr	r1, .L656+56
	ldr	r0, [sp, #20]
.LPIC44:
	add	r1, pc
	bl	png_error(PLT)
.L616:
	ldr	r1, .L656+60
	ldr	r0, [sp, #20]
.LPIC32:
	add	r1, pc
	bl	png_error(PLT)
.L657:
	.align	2
.L656:
	.word	png_sRGB_table(GOT)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.word	.LC14-(.LPIC42+4)
	.word	.LC15-(.LPIC43+4)
	.word	.LC10-(.LPIC37+4)
	.word	.LC13-(.LPIC40+4)
	.word	.LC7-(.LPIC33+4)
	.word	.LC12-(.LPIC39+4)
	.word	.LC11-(.LPIC38+4)
	.word	.LC8-(.LPIC34+4)
	.word	.LC9-(.LPIC36+4)
	.word	.LC17-(.LPIC45+4)
	.word	.LC20-(.LPIC48+4)
	.word	.LC16-(.LPIC44+4)
	.word	.LC6-(.LPIC32+4)
	.size	png_image_read_colormap, .-png_image_read_colormap
	.section	.text.png_create_read_struct_2,"ax",%progbits
	.align	2
	.global	png_create_read_struct_2
	.thumb
	.thumb_func
	.type	png_create_read_struct_2, %function
png_create_read_struct_2:
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
	cbz	r0, .L659
	ldr	r3, [r0, #452]
	mov	r2, #32768
	movs	r1, #0
	mov	r5, #8192
	str	r2, [r0, #448]
	mov	r2, r1
	orr	r3, r3, #3145728
	str	r5, [r0, #1036]
	str	r3, [r0, #452]
	bl	png_set_read_fn(PLT)
	movs	r3, #0
	str	r3, [r4, #1140]
.L659:
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	png_create_read_struct_2, .-png_create_read_struct_2
	.section	.text.png_create_read_struct,"ax",%progbits
	.align	2
	.global	png_create_read_struct
	.thumb
	.thumb_func
	.type	png_create_read_struct, %function
png_create_read_struct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, #0
	sub	sp, sp, #16
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	bl	png_create_read_struct_2(PLT)
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
	.size	png_create_read_struct, .-png_create_read_struct
	.section	.text.png_read_info,"ax",%progbits
	.align	2
	.global	png_read_info
	.thumb
	.thumb_func
	.type	png_read_info, %function
png_read_info:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	bne	.L708
	bx	lr
.L708:
	movw	r3, #18244
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movt	r3, 25163
	sub	sp, sp, #12
	movw	r5, #16724
	movw	r8, #21573
	str	r3, [sp]
	movw	r3, #21069
	movw	r7, #17490
	movw	r9, #20036
	movt	r3, 25416
	mov	fp, r0
	mov	r6, r1
	movt	r5, 18756
	movt	r8, 20556
	movt	r7, 18760
	movt	r9, 18757
	str	r3, [sp, #4]
	bl	png_read_sig(PLT)
.L668:
	mov	r0, fp
	bl	png_read_chunk_header(PLT)
	ldr	r4, [fp, #616]
	mov	r10, r0
	ldr	r3, [fp, #448]
	cmp	r4, r5
	beq	.L709
	lsls	r2, r3, #29
	itt	mi
	orrmi	r3, r3, #8
	strmi	r3, [fp, #448]
	cmp	r4, r7
	beq	.L710
	cmp	r4, r9
	beq	.L711
	mov	r0, fp
	mov	r1, r4
	bl	png_chunk_unknown_handling(PLT)
	cmp	r0, #0
	bne	.L673
	cmp	r4, r8
	beq	.L712
	cmp	r4, r5
	beq	.L674
	ldr	r3, [sp]
	cmp	r4, r3
	beq	.L713
	ldr	r3, [sp, #4]
	cmp	r4, r3
	beq	.L714
	movw	r3, #19777
	movt	r3, 26433
	cmp	r4, r3
	beq	.L715
	movw	r3, #21332
	movt	r3, 26697
	cmp	r4, r3
	beq	.L716
	movw	r3, #18035
	movt	r3, 28486
	cmp	r4, r3
	beq	.L717
	movw	r3, #16716
	movt	r3, 28739
	cmp	r4, r3
	beq	.L718
	movw	r3, #16716
	movt	r3, 29507
	cmp	r4, r3
	beq	.L719
	movw	r3, #22899
	movt	r3, 28744
	cmp	r4, r3
	beq	.L720
	movw	r3, #18772
	movt	r3, 29506
	cmp	r4, r3
	beq	.L721
	movw	r3, #18242
	movt	r3, 29522
	cmp	r4, r3
	beq	.L722
	movw	r3, #17232
	movt	r3, 26947
	cmp	r4, r3
	beq	.L723
	movw	r3, #19540
	movt	r3, 29520
	cmp	r4, r3
	beq	.L724
	movw	r3, #22644
	movt	r3, 29765
	cmp	r4, r3
	beq	.L725
	movw	r3, #19781
	movt	r3, 29769
	cmp	r4, r3
	beq	.L726
	movw	r3, #20051
	movt	r3, 29778
	cmp	r4, r3
	beq	.L727
	movw	r3, #22644
	movt	r3, 31316
	cmp	r4, r3
	beq	.L728
	movw	r3, #22644
	mov	r2, r10
	movt	r3, 26964
	mov	r0, fp
	cmp	r4, r3
	mov	r1, r6
	beq	.L729
	movs	r3, #0
	bl	png_handle_unknown(PLT)
	b	.L668
.L709:
	lsls	r2, r3, #31
	bpl	.L730
	ldrb	r1, [fp, #675]	@ zero_extendqisi2
	cmp	r1, #3
	beq	.L731
.L671:
	lsls	r1, r3, #28
	bmi	.L732
.L672:
	orr	r3, r3, #4
	mov	r0, fp
	str	r3, [fp, #448]
	mov	r1, r4
	bl	png_chunk_unknown_handling(PLT)
	cbnz	r0, .L673
.L674:
	str	r10, [fp, #648]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L711:
	mov	r2, r0
	mov	r1, r6
	mov	r0, fp
	bl	png_handle_IEND(PLT)
	b	.L668
.L673:
	mov	r3, r0
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_unknown(PLT)
	cmp	r4, r8
	beq	.L733
	cmp	r4, r5
	bne	.L668
	movs	r3, #0
	str	r3, [fp, #648]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L710:
	mov	r2, r0
	mov	r1, r6
	mov	r0, fp
	bl	png_handle_IHDR(PLT)
	b	.L668
.L732:
	ldr	r1, .L734
	mov	r0, fp
.LPIC52:
	add	r1, pc
	bl	png_chunk_benign_error(PLT)
	ldr	r3, [fp, #448]
	b	.L672
.L731:
	lsls	r0, r3, #30
	bmi	.L671
	ldr	r1, .L734+4
	mov	r0, fp
.LPIC51:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L712:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_PLTE(PLT)
	b	.L668
.L713:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_bKGD(PLT)
	b	.L668
.L733:
	ldr	r3, [fp, #448]
	orr	r3, r3, #2
	str	r3, [fp, #448]
	b	.L668
.L714:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_cHRM(PLT)
	b	.L668
.L715:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_gAMA(PLT)
	b	.L668
.L716:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_hIST(PLT)
	b	.L668
.L717:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_oFFs(PLT)
	b	.L668
.L718:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_pCAL(PLT)
	b	.L668
.L719:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_sCAL(PLT)
	b	.L668
.L720:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_pHYs(PLT)
	b	.L668
.L721:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_sBIT(PLT)
	b	.L668
.L722:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_sRGB(PLT)
	b	.L668
.L723:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_iCCP(PLT)
	b	.L668
.L724:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_sPLT(PLT)
	b	.L668
.L729:
	bl	png_handle_iTXt(PLT)
	b	.L668
.L725:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_tEXt(PLT)
	b	.L668
.L726:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_tIME(PLT)
	b	.L668
.L727:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_tRNS(PLT)
	b	.L668
.L728:
	mov	r2, r10
	mov	r0, fp
	mov	r1, r6
	bl	png_handle_zTXt(PLT)
	b	.L668
.L730:
	ldr	r1, .L734+8
	mov	r0, fp
.LPIC50:
	add	r1, pc
	bl	png_chunk_error(PLT)
.L735:
	.align	2
.L734:
	.word	.LC24-(.LPIC52+4)
	.word	.LC23-(.LPIC51+4)
	.word	.LC22-(.LPIC50+4)
	.size	png_read_info, .-png_read_info
	.section	.text.png_image_read_header,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_read_header, %function
png_image_read_header:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]
	movs	r1, #1
	push	{r4, r5, r6, lr}
	mov	r5, r0
	ldmia	r3, {r4, r6}
	mov	r0, r4
	bl	png_set_benign_errors(PLT)
	mov	r0, r4
	mov	r1, r6
	bl	png_read_info(PLT)
	ldr	r2, [r4, #588]
	ldr	r3, [r4, #592]
	str	r2, [r5, #8]
	str	r3, [r5, #12]
	ldrb	r2, [r4, #675]	@ zero_extendqisi2
	ldrh	r6, [r4, #668]
	ldrb	r1, [r4, #676]	@ zero_extendqisi2
	and	r3, r2, #2
	cmp	r3, #0
	itete	ne
	movne	r3, #3
	moveq	r3, #1
	movne	r0, #2
	moveq	r0, #0
	tst	r2, #4
	bne	.L738
	cmp	r6, #0
	it	eq
	moveq	r3, r0
.L738:
	cmp	r1, #16
	it	eq
	orreq	r3, r3, #4
	lsls	r2, r2, #31
	it	mi
	orrmi	r3, r3, #8
	str	r3, [r5, #16]
	lsls	r3, r3, #30
	bpl	.L741
	ldrh	r2, [r4, #1138]
	movw	r3, #32834
	ands	r3, r3, r2
	cmp	r3, #2
	ittt	eq
	ldreq	r3, [r5, #20]
	orreq	r3, r3, #1
	streq	r3, [r5, #20]
.L741:
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
	cbz	r3, .L743
	cmp	r3, #3
	bne	.L759
	ldrh	r3, [r4, #660]
.L745:
	cmp	r3, #256
	mov	r0, #1
	it	cs
	movcs	r3, #256
	str	r3, [r5, #24]
	pop	{r4, r5, r6, pc}
.L759:
	mov	r3, #256
	movs	r0, #1
	str	r3, [r5, #24]
	pop	{r4, r5, r6, pc}
.L743:
	ldrb	r3, [r4, #676]	@ zero_extendqisi2
	movs	r2, #1
	lsl	r3, r2, r3
	b	.L745
	.size	png_image_read_header, .-png_image_read_header
	.section	.text.png_read_update_info,"ax",%progbits
	.align	2
	.global	png_read_update_info
	.thumb
	.thumb_func
	.type	png_read_update_info, %function
png_read_update_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L769
	push	{r3, r4, r5, lr}
	mov	r5, r1
	ldr	r3, [r0, #1140]
	mov	r4, r0
	cbz	r3, .L763
	bl	png_read_start_row(PLT)
.L763:
	ldr	r3, [r4, #452]
	lsls	r3, r3, #25
	bpl	.L770
	pop	{r3, r4, r5, pc}
.L770:
	mov	r0, r4
	bl	png_read_start_row(PLT)
	mov	r0, r4
	mov	r1, r5
	pop	{r3, r4, r5, lr}
	b	png_read_transform_info(PLT)
.L769:
	bx	lr
	.size	png_read_update_info, .-png_read_update_info
	.section	.text.png_start_read_image,"ax",%progbits
	.align	2
	.global	png_start_read_image
	.thumb
	.thumb_func
	.type	png_start_read_image, %function
png_start_read_image:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L771
	ldr	r3, [r0, #452]
	lsls	r3, r3, #25
	bpl	.L774
	ldr	r1, .L775
.LPIC53:
	add	r1, pc
	b	png_app_error(PLT)
.L774:
	b	png_read_start_row(PLT)
.L771:
	bx	lr
.L776:
	.align	2
.L775:
	.word	.LC25-(.LPIC53+4)
	.size	png_start_read_image, .-png_start_read_image
	.section	.text.png_read_row,"ax",%progbits
	.align	2
	.global	png_read_row
	.thumb
	.thumb_func
	.type	png_read_row, %function
png_read_row:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L884
	ldr	r3, [r0, #452]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r1
	sub	sp, sp, #28
	mov	r6, r2
	lsls	r5, r3, #25
	mov	r4, r0
	bpl	.L886
.L779:
	ldr	r0, [r4, #608]
	ldrb	r3, [r4, #678]	@ zero_extendqisi2
	ldrb	r2, [r4, #679]	@ zero_extendqisi2
	str	r0, [sp, #8]
	cmp	r3, #7
	strb	r3, [sp, #19]
	ite	ls
	mulls	r0, r0, r3
	lsrhi	r3, r3, #3
	ldrb	r5, [r4, #675]	@ zero_extendqisi2
	it	hi
	mulhi	r0, r0, r3
	ldrb	r3, [r4, #672]	@ zero_extendqisi2
	ldrb	r1, [r4, #676]	@ zero_extendqisi2
	it	ls
	addls	r0, r0, #7
	strb	r2, [sp, #18]
	it	ls
	lsrls	r0, r0, #3
	strb	r5, [sp, #16]
	strb	r1, [sp, #17]
	str	r0, [sp, #12]
	ldr	r2, [r4, #612]
	cmp	r3, #0
	bne	.L887
.L782:
	ldr	r3, [r4, #448]
	lsls	r3, r3, #29
	bpl	.L888
	adds	r2, r0, #1
	ldr	r1, [r4, #624]
	mov	r0, r4
	bl	png_read_IDAT_data(PLT)
	ldr	r1, [r4, #624]
	ldrb	r5, [r1]	@ zero_extendqisi2
	cbz	r5, .L797
	cmp	r5, #4
	bhi	.L798
	ldr	r3, [r4, #620]
	adds	r2, r1, #1
	str	r5, [sp]
	add	r1, sp, #8
	mov	r0, r4
	adds	r3, r3, #1
	bl	png_read_filter_row(PLT)
	ldr	r1, [r4, #624]
.L797:
	ldr	r2, [sp, #12]
	ldr	r0, [r4, #620]
	adds	r2, r2, #1
	bl	memcpy(PLT)
	ldr	r3, [r4, #948]
	lsls	r5, r3, #29
	bmi	.L799
.L802:
	ldr	r3, [r4, #456]
	cmp	r3, #0
	bne	.L889
.L801:
	ldrb	r3, [r4, #683]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L890
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L891
.L809:
	ldrb	r3, [r4, #672]	@ zero_extendqisi2
	cbz	r3, .L810
	ldr	r3, [r4, #456]
	lsls	r2, r3, #30
	bmi	.L892
.L810:
	cbz	r7, .L815
	mov	r1, r7
	mov	r0, r4
	mov	r2, #-1
	bl	png_combine_row(PLT)
.L815:
	cbz	r6, .L814
	mov	r1, r6
	mov	r0, r4
	mov	r2, #-1
	bl	png_combine_row(PLT)
.L814:
	mov	r0, r4
	bl	png_read_finish_row(PLT)
	ldr	r3, [r4, #784]
	cbz	r3, .L777
	mov	r0, r4
	ldr	r1, [r4, #612]
	ldrb	r2, [r4, #673]	@ zero_extendqisi2
	blx	r3
.L777:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L887:
	ldr	r3, [r4, #456]
	lsls	r1, r3, #30
	bpl	.L782
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #5
	bhi	.L783
	tbb	[pc, r3]
.L785:
	.byte	(.L784-.L785)/2
	.byte	(.L786-.L785)/2
	.byte	(.L787-.L785)/2
	.byte	(.L788-.L785)/2
	.byte	(.L789-.L785)/2
	.byte	(.L790-.L785)/2
	.align	1
.L890:
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	ldrb	r2, [r4, #682]	@ zero_extendqisi2
	strb	r3, [r4, #683]
	cmp	r2, r3
	bcs	.L809
	ldr	r1, .L895
	mov	r0, r4
.LPIC56:
	add	r1, pc
	bl	png_error(PLT)
.L799:
	ldrb	r3, [r4, #952]	@ zero_extendqisi2
	cmp	r3, #64
	bne	.L802
	ldrb	r1, [sp, #16]	@ zero_extendqisi2
	ldr	r2, [r4, #624]
	lsls	r0, r1, #30
	bpl	.L802
	ldrb	r0, [sp, #17]	@ zero_extendqisi2
	adds	r3, r2, #1
	ldr	lr, [sp, #8]
	cmp	r0, #8
	beq	.L893
	cmp	r0, #16
	bne	.L802
	cmp	r1, #2
	beq	.L820
	cmp	r1, #6
	it	eq
	moveq	ip, #8
	bne	.L802
.L806:
	cmp	lr, #0
	beq	.L802
	movs	r1, #0
.L807:
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r9, [r3, #4]	@ zero_extendqisi2
	cmp	r1, lr
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r3, #5]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	ldrb	r0, [r3, #3]	@ zero_extendqisi2
	orr	r5, r5, r10, lsl #8
	orr	r8, r8, r9, lsl #8
	orr	r0, r0, fp, lsl #8
	add	r5, r5, r0
	add	r0, r0, r8
	uxth	r5, r5
	uxth	r0, r0
	lsr	r9, r5, #8
	lsr	r8, r0, #8
	strb	r9, [r2, #1]
	add	r2, r2, ip
	strb	r5, [r3, #1]
	strb	r0, [r3, #5]
	strb	r8, [r3, #4]
	add	r3, r3, ip
	bne	.L807
	b	.L802
.L886:
	bl	png_read_start_row(PLT)
	b	.L779
.L889:
	mov	r0, r4
	add	r1, sp, #8
	bl	png_do_read_transformations(PLT)
	b	.L801
.L892:
	ldrb	r2, [r4, #673]	@ zero_extendqisi2
	cmp	r2, #5
	bls	.L894
.L811:
	cbz	r6, .L812
	mov	r1, r6
	mov	r0, r4
	movs	r2, #1
	bl	png_combine_row(PLT)
.L812:
	cmp	r7, #0
	beq	.L814
	mov	r1, r7
	mov	r0, r4
	movs	r2, #0
	bl	png_combine_row(PLT)
	b	.L814
.L894:
	ldr	r1, [r4, #624]
	add	r0, sp, #8
	adds	r1, r1, #1
	bl	png_do_read_interlace(PLT)
	b	.L811
.L884:
	bx	lr
.L784:
	lsls	r2, r2, #29
	beq	.L782
.L885:
	cbnz	r6, .L793
	b	.L791
.L787:
	and	r3, r2, #7
	cmp	r3, #4
	beq	.L782
	cbz	r6, .L791
	lsls	r7, r2, #29
	bmi	.L793
.L791:
	mov	r0, r4
	bl	png_read_finish_row(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L786:
	lsls	r3, r2, #29
	bne	.L885
	ldr	r3, [r4, #588]
	cmp	r3, #4
	bhi	.L782
	cbnz	r6, .L793
	b	.L791
.L789:
	and	r3, r2, #3
	cmp	r3, #2
	beq	.L782
	cmp	r6, #0
	beq	.L791
	lsls	r0, r2, #30
	bpl	.L791
.L793:
	mov	r1, r6
	mov	r0, r4
	movs	r2, #1
	bl	png_combine_row(PLT)
	b	.L791
.L790:
	lsls	r1, r2, #31
	bmi	.L885
	ldr	r3, [r4, #588]
	cmp	r3, #1
	bhi	.L782
	cmp	r6, #0
	bne	.L793
	b	.L791
.L788:
	lsls	r5, r2, #30
	bne	.L885
	ldr	r3, [r4, #588]
	cmp	r3, #2
	bhi	.L782
	cmp	r6, #0
	bne	.L793
	b	.L791
.L783:
	lsls	r2, r2, #31
	bpl	.L791
	b	.L782
.L893:
	cmp	r1, #2
	beq	.L819
	cmp	r1, #6
	it	eq
	moveq	r5, #4
	bne	.L802
.L804:
	cmp	lr, #0
	beq	.L802
	movs	r1, #0
.L805:
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	ip, [r2, #1]	@ zero_extendqisi2
	cmp	r1, lr
	add	ip, ip, r0
	strb	ip, [r2, #1]
	add	r2, r2, r5
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	add	r0, r0, ip
	strb	r0, [r3, #2]
	add	r3, r3, r5
	bne	.L805
	b	.L802
.L819:
	movs	r5, #3
	b	.L804
.L820:
	mov	ip, #6
	b	.L806
.L888:
	ldr	r1, .L895+4
	mov	r0, r4
.LPIC54:
	add	r1, pc
	bl	png_error(PLT)
.L798:
	ldr	r1, .L895+8
	mov	r0, r4
.LPIC55:
	add	r1, pc
	bl	png_error(PLT)
.L891:
	ldr	r1, .L895+12
	mov	r0, r4
.LPIC57:
	add	r1, pc
	bl	png_error(PLT)
.L896:
	.align	2
.L895:
	.word	.LC28-(.LPIC56+4)
	.word	.LC26-(.LPIC54+4)
	.word	.LC27-(.LPIC55+4)
	.word	.LC29-(.LPIC57+4)
	.size	png_read_row, .-png_read_row
	.section	.text.png_image_read_direct,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_read_direct, %function
png_image_read_direct:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	sub	sp, sp, #92
	ldr	r3, [r1]
	ldr	r8, [r1, #16]
	str	r1, [sp, #12]
	ldr	r4, [r3]
	ldr	r3, [r3, #4]
	ubfx	r7, r8, #2, #1
	str	r7, [sp, #16]
	mov	r0, r4
	str	r3, [sp, #20]
	bl	png_set_expand(PLT)
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
	ldrh	r0, [r4, #668]
	ldrb	r2, [r4, #676]	@ zero_extendqisi2
	and	r1, r3, #2
	cmp	r1, #0
	itete	ne
	movne	r10, #3
	moveq	r10, #1
	movne	r1, #2
	moveq	r1, #0
	lsls	r7, r3, #29
	bmi	.L899
	cmp	r0, #0
	it	eq
	moveq	r10, r1
.L899:
	cmp	r2, #16
	it	eq
	orreq	r10, r10, #4
	lsls	r5, r3, #31
	it	mi
	orrmi	r10, r10, #8
	bic	r5, r10, #8
	eor	r5, r5, r8
	ands	r9, r5, #2
	beq	.L902
	tst	r8, #2
	bne	.L1003
	mov	r2, #-1
	movs	r1, #1
	mov	r0, r4
	mov	r3, r2
	and	r9, r10, r1
	bl	png_set_rgb_to_gray_fixed(PLT)
.L904:
	bic	r5, r5, #2
.L902:
	tst	r10, #4
	it	eq
	moveq	r2, #-1
	beq	.L905
	ldr	r1, [sp, #12]
	movw	r2, #34464
	movt	r2, 1
	ldr	r3, [r1, #20]
	tst	r3, #4
	it	ne
	movne	r2, #-1
.L905:
	mov	r0, r4
	movs	r1, #0
	bl	png_set_alpha_mode_fixed(PLT)
	ldr	r7, [sp, #16]
	cmp	r7, #0
	beq	.L955
	movw	fp, #34464
	and	r7, r10, #1
	str	r7, [sp, #24]
	movt	fp, 1
	cmp	r9, #0
	bne	.L1004
.L907:
	lsls	r0, r5, #29
	bpl	.L911
	ldr	r7, [sp, #16]
	mov	r0, r4
	cmp	r7, #0
	bne	.L1005
	bl	png_set_scale_16(PLT)
.L913:
	bic	r5, r5, #4
.L911:
	ands	r3, r5, #1
	it	eq
	streq	r3, [sp, #28]
	beq	.L914
	ands	r10, r10, #1
	bne	.L1006
	ldr	r7, [sp, #16]
	movw	r1, #65535
	mov	r0, r4
	cmp	r7, #0
	it	eq
	moveq	r1, #255
	tst	r8, #32
	mov	r7, #0
	itet	ne
	movne	r2, r10
	moveq	r2, #1
	bicne	r5, r5, #32
	str	r7, [sp, #28]
	bl	png_set_add_alpha(PLT)
.L916:
	bic	r5, r5, #1
.L914:
	ldr	r1, [sp, #24]
	mov	r2, fp
	mov	r0, r4
	bl	png_set_alpha_mode_fixed(PLT)
	lsls	r1, r5, #27
	bpl	.L920
	tst	r8, #2
	it	eq
	biceq	r8, r8, #16
	bne	.L1007
.L922:
	bic	r5, r5, #16
.L920:
	lsls	r2, r5, #26
	bpl	.L923
	tst	r8, #1
	it	eq
	biceq	r8, r8, #32
	bne	.L1008
.L925:
	bic	r5, r5, #32
.L923:
	ldr	r7, [sp, #16]
	cmp	r7, #0
	bne	.L1009
.L926:
	mov	r0, r4
	cmp	r5, #0
	bne	.L1010
	movs	r1, #1
	mov	r2, r5
	mov	r3, #-1
	ldr	r7, [sp, #28]
	bl	png_set_keep_unknown_chunks(PLT)
	clz	r10, r7
	ldr	r2, .L1021
	mov	r0, r4
	mov	r1, r5
	movs	r3, #6
	lsr	r10, r10, #5
.LPIC59:
	add	r2, pc
	bl	png_set_keep_unknown_chunks(PLT)
	subs	fp, r9, #2
	it	ne
	movne	fp, #1
	tst	fp, r10
	bne	.L1011
.L928:
	ldr	r1, [sp, #20]
	mov	r0, r4
	bl	png_read_update_info(PLT)
	ldr	r7, [sp, #20]
	ldrb	r3, [r7, #25]	@ zero_extendqisi2
	and	r2, r3, #2
	cmp	r2, #0
	ite	ne
	movne	r2, #54
	moveq	r2, #52
	str	r2, [sp, #24]
	itete	ne
	movne	r7, #22
	moveq	r7, #20
	movne	r2, #35
	moveq	r2, #33
	str	r7, [sp, #36]
	str	r2, [sp, #44]
	itete	ne
	movne	r7, #51
	moveq	r7, #49
	movne	r2, #19
	moveq	r2, #17
	str	r7, [sp, #48]
	str	r2, [sp, #68]
	itete	ne
	movne	r7, #39
	moveq	r7, #37
	movne	r2, #55
	moveq	r2, #53
	str	r7, [sp, #64]
	str	r2, [sp, #56]
	itete	ne
	movne	r1, #38
	moveq	r1, #36
	movne	r7, #23
	moveq	r7, #21
	ite	ne
	movne	r2, #3
	moveq	r2, #1
	str	r1, [sp, #32]
	str	r7, [sp, #60]
	it	ne
	movne	ip, #34
	str	r2, [sp, #52]
	itete	eq
	moveq	ip, #32
	movne	lr, #50
	moveq	lr, #48
	movne	r0, #18
	itete	eq
	moveq	r0, #16
	movne	r1, #6
	moveq	r1, #4
	movne	r7, #7
	itet	eq
	moveq	r7, #5
	movne	r2, #2
	moveq	r2, #0
	lsls	r3, r3, #29
	bpl	.L930
	cmp	r10, #0
	bne	.L1012
.L931:
	ldr	r7, [sp, #20]
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	cmp	r3, #16
	ldr	r3, [r4, #456]
	itttt	eq
	ldreq	ip, [sp, #32]
	moveq	r2, r1
	ldreq	lr, [sp, #24]
	ldreq	r0, [sp, #36]
	lsls	r1, r3, #31
	itte	pl
	movpl	r1, ip
	movpl	r0, r2
	movmi	r1, lr
	cmp	r9, #2
	beq	.L1013
.L935:
	lsls	r7, r3, #14
	bmi	.L936
	lsls	r2, r3, #7
	bpl	.L972
	ldr	r3, [r4, #452]
	lsls	r3, r3, #24
	bmi	.L972
.L936:
	cmp	r9, #2
	beq	.L1014
.L937:
	cmp	r1, r8
	bne	.L1015
	ldr	r7, [sp, #16]
	ldr	r3, [r6, #4]
	ldr	r8, [r6, #8]
	cbz	r7, .L939
	lsl	r8, r8, #1
.L939:
	cmp	r8, #0
	ldr	r7, [sp, #28]
	itt	lt
	ldrlt	r1, [sp, #12]
	ldrlt	r2, [r1, #12]
	str	r8, [r6, #28]
	itt	lt
	rsblt	r2, r2, #1
	mlalt	r3, r2, r8, r3
	str	r3, [r6, #24]
	cmp	r7, #0
	bne	.L1016
	cmp	r9, #2
	it	ne
	ldrne	r7, [sp, #12]
	beq	.L1017
.L944:
	subs	r5, r5, #1
	bmi	.L1018
.L949:
	ldr	r3, [r7, #12]
	ldr	r9, [r6, #24]
	cmp	r3, #0
	beq	.L944
	mov	r10, r3
.L948:
	mov	r1, r9
	mov	r0, r4
	movs	r2, #0
	add	r9, r9, r8
	bl	png_read_row(PLT)
	subs	r10, r10, #1
	bne	.L948
	subs	r5, r5, #1
	bpl	.L949
.L1018:
	movs	r0, #1
.L942:
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L930:
	ldr	r7, [sp, #28]
	cmp	r7, #0
	beq	.L931
	ldr	r1, .L1021+4
	mov	r0, r4
.LPIC60:
	add	r1, pc
	bl	png_error(PLT)
.L955:
	str	r7, [sp, #24]
	mov	fp, #-1
	cmp	r9, #0
	beq	.L907
.L1004:
	movw	r3, #34464
	add	r0, sp, #72
	movt	r3, 1
	mov	r1, fp
	ldr	r2, [r4, #1064]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	bne	.L908
.L910:
	ldr	r7, [sp, #24]
	cmp	r7, #1
	mov	r7, #0
	str	r7, [sp, #24]
	it	ne
	movne	r9, #1
	bne	.L907
	mov	r9, #2
	b	.L907
.L972:
	mov	r1, r0
	b	.L937
.L1012:
	cmp	fp, #0
	beq	.L1019
.L966:
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #56]
	ldr	r3, [sp, #60]
	str	r1, [sp, #32]
	mov	r1, r7
	str	r2, [sp, #24]
	ldr	ip, [sp, #44]
	ldr	lr, [sp, #48]
	ldr	r0, [sp, #68]
	str	r3, [sp, #36]
	ldr	r2, [sp, #52]
	b	.L931
.L1008:
	cmp	r9, #2
	beq	.L925
	mov	r0, r4
	bl	png_set_swap_alpha(PLT)
	b	.L925
.L1006:
	cmp	r9, #0
	bne	.L958
	ldr	r7, [sp, #16]
	cmp	r7, #0
	bne	.L1020
	ldr	r10, [r6, #16]
	cmp	r10, #0
	beq	.L959
	ldr	r7, [sp, #16]
	mov	r0, r4
	add	r1, sp, #72
	movs	r2, #1
	strb	r7, [sp, #72]
	mov	r3, r7
	ldrb	lr, [r10]	@ zero_extendqisi2
	str	r7, [sp, #28]
	strh	lr, [sp, #74]	@ movhi
	ldrb	ip, [r10, #1]	@ zero_extendqisi2
	strh	ip, [sp, #76]	@ movhi
	ldrb	lr, [r10, #2]	@ zero_extendqisi2
	str	r7, [sp]
	strh	ip, [sp, #80]	@ movhi
	strh	lr, [sp, #78]	@ movhi
	bl	png_set_background_fixed(PLT)
	b	.L916
.L1005:
	bl	png_set_expand_16(PLT)
	b	.L913
.L1009:
	mov	r0, r4
	bl	png_set_swap(PLT)
	b	.L926
.L1011:
	mov	r0, r4
	bl	png_set_interlace_handling(PLT)
	mov	r5, r0
	b	.L928
.L1013:
	tst	r8, #32
	it	ne
	movne	r0, r1
	b	.L935
.L1016:
	ldr	r1, [sp, #20]
	mov	r0, r4
	bl	png_get_rowbytes(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	png_malloc(PLT)
	ldr	r1, .L1021+8
	mov	r5, r0
	mov	r2, r6
	ldr	r0, [sp, #12]
	str	r5, [r6, #20]
.LPIC63:
	add	r1, pc
	bl	png_safe_execute(PLT)
	movs	r3, #0
	mov	r7, r0
	mov	r1, r5
	mov	r0, r4
	str	r3, [r6, #20]
	bl	png_free(PLT)
	mov	r0, r7
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1007:
	mov	r0, r4
	bl	png_set_bgr(PLT)
	b	.L922
.L1003:
	mov	r0, r4
	mov	r9, #0
	bl	png_set_gray_to_rgb(PLT)
	b	.L904
.L958:
	movs	r7, #0
	mov	r9, #2
	str	r7, [sp, #28]
	b	.L916
.L1019:
	tst	r8, #1
	bne	.L966
	b	.L931
.L908:
	ldr	r0, [sp, #72]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L910
	mov	r9, r0
	b	.L907
.L1017:
	ldr	r1, [sp, #20]
	mov	r0, r4
	bl	png_get_rowbytes(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	png_malloc(PLT)
	ldr	r1, .L1021+12
	mov	r5, r0
	mov	r2, r6
	ldr	r0, [sp, #12]
	str	r5, [r6, #20]
.LPIC64:
	add	r1, pc
	bl	png_safe_execute(PLT)
	ldr	r2, [sp, #28]
	mov	r7, r0
	mov	r1, r5
	mov	r0, r4
	str	r2, [r6, #20]
	bl	png_free(PLT)
	mov	r0, r7
	b	.L942
.L1020:
	mov	r0, r4
	str	r9, [sp, #28]
	bl	png_set_strip_alpha(PLT)
	b	.L916
.L959:
	movs	r7, #2
	str	r7, [sp, #24]
	movs	r7, #1
	str	r7, [sp, #28]
	b	.L916
.L1015:
	ldr	r1, .L1021+16
	mov	r0, r4
.LPIC62:
	add	r1, pc
	bl	png_error(PLT)
.L1014:
	ldr	r1, .L1021+20
	mov	r0, r4
.LPIC61:
	add	r1, pc
	bl	png_error(PLT)
.L1010:
	ldr	r1, .L1021+24
.LPIC58:
	add	r1, pc
	bl	png_error(PLT)
.L1022:
	.align	2
.L1021:
	.word	.LANCHOR0-(.LPIC59+4)
	.word	.LC31-(.LPIC60+4)
	.word	png_image_read_composite-(.LPIC63+4)
	.word	png_image_read_background-(.LPIC64+4)
	.word	.LC33-(.LPIC62+4)
	.word	.LC32-(.LPIC61+4)
	.word	.LC30-(.LPIC58+4)
	.size	png_image_read_direct, .-png_image_read_direct
	.section	.text.png_image_read_background,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_read_background, %function
png_image_read_background:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	ldr	r4, [r0]
	ldr	r8, .L1110
	ldr	r3, [r4]
	ldr	r5, [r4, #12]
	ldr	r6, [r4, #8]
.LPIC71:
	add	r8, pc
	ldr	r7, [r3]
	str	r5, [sp, #24]
	ldr	r5, [r3, #4]
	ldr	r3, [r7, #456]
	str	r0, [sp, #20]
	str	r6, [sp, #44]
	tst	r3, #6291456
	str	r7, [sp, #16]
	beq	.L1100
	lsls	r3, r3, #24
	ldr	r0, [sp, #16]
	bmi	.L1101
	mov	r1, r5
	bl	png_get_channels(PLT)
	cmp	r0, #2
	bne	.L1102
	ldr	r3, [r4, #16]
	and	r3, r3, #5
	cmp	r3, #1
	beq	.L1103
	ldr	ip, [sp, #16]
	ldrb	r3, [ip, #672]	@ zero_extendqisi2
	cbz	r3, .L1076
	cmp	r3, #1
	itt	eq
	moveq	r6, #7
	streq	r6, [sp, #48]
	beq	.L1029
	ldr	r1, .L1110+4
	ldr	r0, [sp, #16]
.LPIC69:
	add	r1, pc
	bl	png_error(PLT)
.L1076:
	movs	r7, #1
	str	r7, [sp, #48]
.L1029:
	ldrb	r2, [r5, #24]	@ zero_extendqisi2
	cmp	r2, #8
	beq	.L1032
	cmp	r2, #16
	beq	.L1033
	ldr	r1, .L1110+8
	ldr	r0, [sp, #16]
.LPIC70:
	add	r1, pc
	bl	png_error(PLT)
.L1032:
	ldr	r5, [sp, #20]
	mov	r4, r3
	ldr	r6, [sp, #20]
	cmp	r4, #1
	mov	r2, #0
	ldr	r5, [r5, #24]
	ldr	r6, [r6, #28]
	str	r5, [sp, #52]
	str	r6, [sp, #40]
	beq	.L1034
.L1105:
	ldr	r6, [sp, #20]
	movs	r7, #1
	add	r2, r2, r7
	movs	r1, #0
	str	r2, [sp, #36]
	mov	r3, r1
	ldr	r2, [r6, #16]
	mov	r5, r7
	str	r7, [sp, #28]
	cmp	r2, #0
	beq	.L1104
.L1038:
	ldr	r0, .L1110+12
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	ldr	r7, [r8, r0]
	ldr	r0, [sp, #24]
	ldrh	r9, [r7, r6, lsl #1]
	cmp	r1, r0
	bcs	.L1037
	ldr	r2, [sp, #40]
	ldr	r0, [sp, #44]
	mla	r4, r2, r1, r0
	ldr	r0, [sp, #28]
	mov	r10, r0
	mul	r2, r2, r0
	add	r10, r10, r1
	str	r2, [sp, #32]
	ldr	r2, [sp, #44]
	subs	r3, r3, r2
	str	r3, [sp, #12]
	ldr	r3, [sp, #52]
	add	r4, r4, r3
.L1053:
	ldr	ip, [sp, #20]
	movs	r2, #0
	ldr	r0, [sp, #16]
	ldr	fp, [ip, #20]
	mov	r1, fp
	bl	png_read_row(PLT)
	ldr	ip, [sp, #12]
	adds	r3, ip, r4
	itt	cs
	addcs	r1, fp, #2
	strcs	r7, [sp]
	bcc	.L1051
.L1052:
	ldrb	r2, [r1, #-1]	@ zero_extendqisi2
	cbz	r2, .L1048
	cmp	r2, #255
	ldrb	r0, [r1, #-2]	@ zero_extendqisi2
	beq	.L1049
	ldr	r7, [sp]
	rsb	lr, r2, #255
	mul	lr, lr, r9
	ldr	fp, .L1110+16
	ldrh	ip, [r7, r0, lsl #1]
	ldr	r0, .L1110+20
	ldr	r7, [r8, fp]
	mla	r2, r2, ip, lr
	ldr	r0, [r8, r0]
	str	r0, [sp, #8]
	lsr	lr, r2, #15
	ubfx	r2, r2, #0, #15
	ldrb	r0, [r7, lr]	@ zero_extendqisi2
	ldr	r7, [sp, #8]
	mul	r0, r2, r0
	ldrh	lr, [r7, lr, lsl #1]
	add	r0, lr, r0, lsr #12
	ubfx	r0, r0, #8, #8
.L1049:
	strb	r0, [r3]
.L1050:
	add	r3, r3, r5
	adds	r1, r1, #2
	cmp	r4, r3
	bhi	.L1052
	ldr	r7, [sp]
.L1051:
	ldr	r3, [sp, #32]
	ldr	r0, [sp, #24]
	add	r4, r4, r3
	ldr	r3, [sp, #28]
	cmp	r0, r10
	add	r3, r3, r10
	bls	.L1037
	mov	r10, r3
	b	.L1053
.L1048:
	strb	r6, [r3]
	b	.L1050
.L1037:
	ldr	r2, [sp, #36]
	ldr	ip, [sp, #48]
	cmp	ip, r2
	ble	.L1092
	ldr	r3, [sp, #16]
	ldrb	r4, [r3, #672]	@ zero_extendqisi2
	cmp	r4, #1
	bne	.L1105
.L1034:
	cmp	r2, #1
	ble	.L1036
	adds	r3, r2, #1
	rsb	r0, r2, #7
	str	r3, [sp, #36]
	asrs	r3, r3, #1
	asrs	r0, r0, #1
	and	r1, r2, #1
	rsb	r3, r3, #3
	ldr	r5, [sp, #44]
	lsl	r3, r1, r3
	lsls	r4, r4, r0
	and	r3, r3, #7
	subs	r4, r4, #1
	subs	r4, r4, r3
	add	r4, r4, r5
.L1074:
	lsrs	r4, r4, r0
	beq	.L1037
	rsb	r4, r2, #7
	cmp	r2, #2
	asr	r5, r4, #1
	asr	r0, r2, #1
	mov	r6, #1
	itt	gt
	addgt	r2, r2, #-1
	asrgt	r2, r2, r6
	lsl	r5, r6, r5
	ldr	r6, [sp, #20]
	it	gt
	movgt	r7, #8
	eor	r1, r1, #1
	it	gt
	asrgt	r7, r7, r2
	rsb	r0, r0, #3
	ldr	r2, [r6, #16]
	lsl	r1, r1, r0
	ite	le
	movle	ip, #8
	strgt	r7, [sp, #28]
	and	r1, r1, #7
	it	le
	strle	ip, [sp, #28]
	cmp	r2, #0
	bne	.L1038
.L1104:
	ldr	r7, [sp, #24]
	cmp	r1, r7
	bcs	.L1037
	ldr	r6, [sp, #40]
	ldr	r7, [sp, #44]
	ldr	ip, [sp, #28]
	subs	r3, r3, r7
	mla	r4, r6, r1, r7
	str	r3, [sp, #12]
	ldr	r3, [sp, #52]
	ldr	r7, [sp, #12]
	mul	fp, r6, ip
	mov	r6, ip
	add	r6, r6, r1
	add	r4, r4, r3
.L1045:
	ldr	ip, [sp, #20]
	movs	r2, #0
	ldr	r0, [sp, #16]
	ldr	r9, [ip, #20]
	mov	r1, r9
	bl	png_read_row(PLT)
	adds	r3, r7, r4
	itt	cs
	addcs	r2, r9, #2
	strcs	r6, [sp, #12]
	bcc	.L1043
.L1044:
	ldrb	r1, [r2, #-1]	@ zero_extendqisi2
	cbz	r1, .L1041
	cmp	r1, #255
	ldrb	r0, [r2, #-2]	@ zero_extendqisi2
	beq	.L1042
	ldr	r9, .L1110+12
	rsb	ip, r1, #255
	ldrb	lr, [r3]	@ zero_extendqisi2
	ldr	r10, [r8, r9]
	ldr	r9, .L1110+16
	ldrh	lr, [r10, lr, lsl #1]
	ldrh	r0, [r10, r0, lsl #1]
	ldr	r6, [r8, r9]
	mul	lr, ip, lr
	ldr	ip, .L1110+20
	str	r6, [sp, #4]
	ldr	r6, [r8, ip]
	mla	r1, r1, r0, lr
	str	r6, [sp, #8]
	ldr	r6, [sp, #4]
	lsrs	r0, r1, #15
	ubfx	r1, r1, #0, #15
	ldrb	ip, [r6, r0]	@ zero_extendqisi2
	ldr	r6, [sp, #8]
	ldrh	lr, [r6, r0, lsl #1]
	mul	r0, r1, ip
	add	r0, lr, r0, lsr #12
	ubfx	r0, r0, #8, #8
.L1042:
	strb	r0, [r3]
.L1041:
	add	r3, r3, r5
	adds	r2, r2, #2
	cmp	r4, r3
	bhi	.L1044
	ldr	r6, [sp, #12]
.L1043:
	ldr	r0, [sp, #24]
	add	r4, r4, fp
	ldr	r3, [sp, #28]
	cmp	r0, r6
	add	r3, r3, r6
	bls	.L1037
	mov	r6, r3
	b	.L1045
.L1092:
	movs	r0, #1
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1033:
	ldr	r5, [sp, #20]
	ldr	r6, [r4, #16]
	ldr	r7, [r5, #24]
	ldr	r2, [r5, #28]
	and	r5, r6, #1
	str	r5, [sp, #12]
	adds	r5, r5, #1
	str	r7, [sp, #52]
	ubfx	r6, r6, #5, #1
	ldr	r7, [sp, #12]
	add	r2, r2, r2, lsr #31
	str	r5, [sp, #40]
	asrs	r1, r2, #1
	cmp	r7, #0
	beq	.L1106
.L1056:
	ldr	r5, [sp, #44]
	mov	r4, r3
	ldr	r7, [sp, #40]
	lsls	r1, r1, #1
	cmp	r4, #1
	eor	fp, r6, #1
	movw	r9, #32769
	lsl	r2, r5, #1
	str	r1, [sp, #32]
	lsl	fp, fp, #1
	lsl	r6, r6, #1
	mul	r7, r7, r2
	movt	r9, 32768
	mov	r2, #0
	movw	r10, #65535
	str	r7, [sp, #36]
	beq	.L1057
.L1109:
	ldr	r5, [sp, #40]
	mov	ip, #0
	mov	r3, ip
	movs	r7, #1
	adds	r2, r2, #1
	str	r2, [sp, #28]
.L1058:
	ldr	r1, [sp, #24]
	cmp	r1, ip
	bls	.L1060
	ldr	r2, [sp, #32]
	add	r8, r7, ip
	ldr	r0, [sp, #36]
	lsls	r5, r5, #1
	mla	r4, r2, ip, r0
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #32]
	ldr	r1, [r2, #20]
	ldr	r2, [sp, #36]
	mul	r0, r0, r7
	rsb	r3, r2, r3, lsl #1
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	ldr	r3, [sp, #52]
	add	r4, r4, r3
	mov	r3, r7
	mov	r7, r8
	mov	r8, r3
.L1071:
	ldr	r0, [sp, #16]
	movs	r2, #0
	bl	png_read_row(PLT)
	ldr	ip, [sp, #20]
	ldr	r1, [ip, #20]
	ldr	ip, [sp, #4]
	adds	r3, ip, r4
	bcc	.L1066
	ldr	r2, [sp, #12]
	cbnz	r2, .L1063
	adds	r2, r1, #4
	b	.L1067
.L1107:
	cmp	r0, r10
	beq	.L1064
	mul	lr, lr, r0
	add	lr, lr, #32640
	add	lr, lr, #127
	umull	ip, lr, r9, lr
	ubfx	lr, lr, #15, #16
.L1064:
	strh	lr, [r3, r6]	@ movhi
	add	r3, r3, r5
	cmp	r4, r3
	add	r2, r2, #4
	bls	.L1066
.L1067:
	ldrh	r0, [r2, #-2]
	ldrh	lr, [r2, #-4]
	cmp	r0, #0
	bne	.L1107
	mov	lr, r0
	adds	r2, r2, #4
	strh	lr, [r3, r6]	@ movhi
	add	r3, r3, r5
	cmp	r4, r3
	bhi	.L1067
.L1066:
	ldr	r0, [sp, #24]
	ldr	r3, [sp, #8]
	cmp	r0, r7
	add	r4, r4, r3
	add	r3, r7, r8
	bls	.L1060
	mov	r7, r3
	b	.L1071
.L1063:
	adds	r0, r1, #4
	b	.L1070
.L1108:
	cmp	r2, r10
	beq	.L1068
	mul	lr, lr, r2
	add	lr, lr, #32640
	add	lr, lr, #127
	umull	ip, lr, r9, lr
	ubfx	lr, lr, #15, #16
.L1068:
	strh	lr, [r3, r6]	@ movhi
	adds	r0, r0, #4
	strh	r2, [fp, r3]	@ movhi
	add	r3, r3, r5
	cmp	r4, r3
	bls	.L1066
.L1070:
	ldrh	r2, [r0, #-2]
	ldrh	lr, [r0, #-4]
	cmp	r2, #0
	bne	.L1108
	mov	lr, r2
	b	.L1068
.L1060:
	ldr	r2, [sp, #28]
	ldr	r3, [sp, #48]
	cmp	r3, r2
	ble	.L1092
	ldr	r5, [sp, #16]
	ldrb	r4, [r5, #672]	@ zero_extendqisi2
	cmp	r4, #1
	bne	.L1109
.L1057:
	cmp	r2, #1
	add	r3, r2, #1
	str	r3, [sp, #28]
	ble	.L1059
	rsb	r0, r2, #7
	asrs	r3, r3, #1
	asrs	r0, r0, #1
	and	r1, r2, #1
	rsb	r3, r3, #3
	ldr	r5, [sp, #44]
	lsl	r3, r1, r3
	lsls	r4, r4, r0
	and	r3, r3, #7
	subs	r4, r4, #1
	subs	r4, r4, r3
	add	r4, r4, r5
.L1075:
	lsrs	r4, r4, r0
	beq	.L1060
	ldr	r7, [sp, #40]
	asrs	r0, r2, #1
	rsb	r4, r2, #7
	cmp	r2, #2
	asr	r5, r4, #1
	rsb	r0, r0, #3
	eor	r1, r1, #1
	it	gt
	addgt	r2, r2, #-1
	mul	r3, r7, r3
	lsl	r5, r7, r5
	lsl	r1, r1, r0
	itt	gt
	movgt	r0, #8
	asrgt	r7, r2, #1
	and	ip, r1, #7
	ite	gt
	asrgt	r7, r0, r7
	movle	r7, #8
	b	.L1058
.L1106:
	mov	r6, r7
	b	.L1056
.L1036:
	adds	r6, r2, #1
	movs	r0, #3
	asrs	r3, r6, #1
	and	r1, r2, #1
	ldr	r7, [sp, #44]
	subs	r3, r0, r3
	str	r6, [sp, #36]
	lsl	r3, r1, r3
	and	r3, r3, #7
	rsb	r4, r3, #7
	add	r4, r4, r7
	b	.L1074
.L1059:
	asrs	r3, r3, #1
	movs	r0, #3
	and	r1, r2, #1
	ldr	r5, [sp, #44]
	subs	r3, r0, r3
	lsl	r3, r1, r3
	and	r3, r3, #7
	rsb	r4, r3, #7
	add	r4, r4, r5
	b	.L1075
.L1103:
	ldr	r1, .L1110+24
	ldr	r0, [sp, #16]
.LPIC68:
	add	r1, pc
	bl	png_error(PLT)
.L1102:
	ldr	r1, .L1110+28
	ldr	r0, [sp, #16]
.LPIC67:
	add	r1, pc
	bl	png_error(PLT)
.L1101:
	ldr	r1, .L1110+32
.LPIC66:
	add	r1, pc
	bl	png_error(PLT)
.L1100:
	ldr	r1, .L1110+36
	mov	r0, r7
.LPIC65:
	add	r1, pc
	bl	png_error(PLT)
.L1111:
	.align	2
.L1110:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC71+4)
	.word	.LC38-(.LPIC69+4)
	.word	.LC39-(.LPIC70+4)
	.word	png_sRGB_table(GOT)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.word	.LC37-(.LPIC68+4)
	.word	.LC36-(.LPIC67+4)
	.word	.LC35-(.LPIC66+4)
	.word	.LC34-(.LPIC65+4)
	.size	png_image_read_background, .-png_image_read_background
	.section	.text.png_image_read_composite,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_read_composite, %function
png_image_read_composite:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	ldr	r9, .L1150
	ldr	r3, [r2]
.LPIC73:
	add	r9, pc
	str	r0, [sp, #12]
	ldr	r3, [r3]
	ldrb	r4, [r3, #672]	@ zero_extendqisi2
	str	r3, [sp, #20]
	cbz	r4, .L1135
	cmp	r4, #1
	itt	eq
	moveq	r3, #7
	streq	r3, [sp, #44]
	beq	.L1114
	ldr	r1, .L1150+4
	ldr	r0, [sp, #20]
.LPIC72:
	add	r1, pc
	bl	png_error(PLT)
.L1135:
	movs	r5, #1
	str	r5, [sp, #44]
.L1114:
	ldr	r5, [r2, #8]
	movs	r3, #0
	ldr	r1, [r2, #16]
	ldr	r2, [r2, #12]
	str	r5, [sp, #48]
	ldr	r5, [sp, #12]
	tst	r1, #2
	ite	eq
	moveq	r8, #1
	movne	r8, #3
	cmp	r4, #1
	str	r2, [sp, #24]
	ldr	r5, [r5, #28]
	str	r5, [sp, #52]
	ldr	r5, [sp, #48]
	mul	r5, r5, r8
	str	r5, [sp, #32]
	add	r5, r8, #1
	str	r5, [sp]
	beq	.L1117
.L1149:
	adds	r3, r3, #1
	mov	r7, r8
	movs	r2, #0
	str	r3, [sp, #40]
	movs	r3, #1
	str	r2, [sp, #28]
	str	r3, [sp, #16]
.L1118:
	ldr	r5, [sp, #24]
	cmp	r5, r2
	bls	.L1120
	ldr	r5, [sp, #16]
	ldr	r3, [sp, #52]
	mul	r3, r3, r5
	add	r5, r5, r2
	str	r5, [sp, #8]
	str	r3, [sp, #36]
	ldr	r3, [sp, #52]
	mul	r3, r3, r2
	str	r3, [sp, #4]
.L1131:
	ldr	r5, [sp, #12]
	movs	r2, #0
	ldr	r0, [sp, #20]
	ldr	r6, [r5, #20]
	mov	r1, r6
	bl	png_read_row(PLT)
	ldr	r0, [r5, #24]
	ldr	r3, [sp, #4]
	ldr	fp, [sp, #32]
	ldr	r5, [sp, #28]
	add	r0, r0, r3
	add	fp, fp, r0
	add	r0, r0, r5
	cmp	fp, r0
	it	hi
	movhi	r10, r7
	bls	.L1125
.L1130:
	ldrb	r3, [r6, r8]	@ zero_extendqisi2
	cbz	r3, .L1127
	cmp	r3, #255
	beq	.L1147
	ldr	r4, .L1150+8
	rsb	ip, r3, #255
	ldr	r1, .L1150+12
	movs	r3, #0
	ldr	r2, .L1150+16
	ldr	lr, [r9, r4]
	ldr	r7, [r9, r1]
	ldr	r5, [r9, r2]
.L1129:
	ldrb	r1, [r0, r3]	@ zero_extendqisi2
	ldrb	r2, [r6, r3]	@ zero_extendqisi2
	ldrh	r1, [lr, r1, lsl #1]
	rsb	r2, r2, r2, lsl #16
	mla	r1, r1, ip, r2
	lsrs	r2, r1, #15
	ubfx	r1, r1, #0, #15
	ldrb	r4, [r7, r2]	@ zero_extendqisi2
	ldrh	r2, [r5, r2, lsl #1]
	mul	r1, r1, r4
	add	r1, r2, r1, lsr #12
	ubfx	r1, r1, #8, #8
	strb	r1, [r0, r3]
	adds	r3, r3, #1
	cmp	r8, r3
	bhi	.L1129
.L1127:
	add	r0, r0, r10
	ldr	r3, [sp]
	cmp	fp, r0
	add	r6, r6, r3
	bhi	.L1130
.L1148:
	ldr	r3, [sp, #4]
	mov	r7, r10
.L1125:
	ldr	r5, [sp, #36]
	ldr	r0, [sp, #8]
	add	r3, r3, r5
	ldr	r5, [sp, #16]
	str	r3, [sp, #4]
	ldr	r3, [sp, #8]
	add	r3, r3, r5
	ldr	r5, [sp, #24]
	cmp	r5, r0
	bls	.L1120
	str	r3, [sp, #8]
	b	.L1131
.L1147:
	movs	r3, #0
.L1128:
	ldrb	r2, [r6, r3]	@ zero_extendqisi2
	strb	r2, [r0, r3]
	adds	r3, r3, #1
	cmp	r8, r3
	bhi	.L1128
	add	r0, r0, r10
	ldr	r3, [sp]
	cmp	fp, r0
	add	r6, r6, r3
	bhi	.L1130
	b	.L1148
.L1120:
	ldr	r3, [sp, #40]
	ldr	r5, [sp, #44]
	cmp	r5, r3
	ble	.L1140
	ldr	r5, [sp, #20]
	ldrb	r4, [r5, #672]	@ zero_extendqisi2
	cmp	r4, #1
	bne	.L1149
.L1117:
	cmp	r3, #1
	add	r5, r3, #1
	str	r5, [sp, #40]
	ble	.L1119
	asrs	r2, r5, #1
	rsb	r0, r3, #7
	asrs	r0, r0, #1
	and	r1, r3, #1
	rsb	r2, r2, #3
	ldr	r5, [sp, #48]
	lsl	r2, r1, r2
	lsls	r4, r4, r0
	and	r2, r2, #7
	subs	r4, r4, #1
	subs	r4, r4, r2
	add	r4, r4, r5
.L1134:
	lsrs	r4, r4, r0
	beq	.L1120
	mul	r2, r8, r2
	cmp	r3, #2
	asr	r0, r3, #1
	rsb	r4, r3, #7
	asr	r7, r4, #1
	ittt	gt
	addgt	r3, r3, #-1
	asrgt	r3, r3, #1
	movgt	r5, #8
	eor	r1, r1, #1
	str	r2, [sp, #28]
	rsb	r2, r0, #3
	it	gt
	asrgt	r5, r5, r3
	lsl	r2, r1, r2
	it	le
	movle	r3, #8
	lsl	r7, r8, r7
	it	gt
	strgt	r5, [sp, #16]
	and	r2, r2, #7
	it	le
	strle	r3, [sp, #16]
	b	.L1118
.L1140:
	movs	r0, #1
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1119:
	asrs	r2, r5, #1
	movs	r0, #3
	and	r1, r3, #1
	ldr	r5, [sp, #48]
	subs	r2, r0, r2
	lsl	r2, r1, r2
	and	r2, r2, #7
	rsb	r4, r2, #7
	add	r4, r4, r5
	b	.L1134
.L1151:
	.align	2
.L1150:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC73+4)
	.word	.LC38-(.LPIC72+4)
	.word	png_sRGB_table(GOT)
	.word	png_sRGB_delta(GOT)
	.word	png_sRGB_base(GOT)
	.size	png_image_read_composite, .-png_image_read_composite
	.section	.text.png_image_read_colormapped,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_read_colormapped, %function
png_image_read_colormapped:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, r0
	ldr	r10, [r0]
	movs	r1, #1
	movs	r2, #0
	mov	r3, #-1
	mov	r8, #0
	ldr	r0, [r10]
	ldr	r6, [r0]
	ldr	r4, [r0, #4]
	mov	r0, r6
	bl	png_set_keep_unknown_chunks(PLT)
	ldr	r2, .L1193
	movs	r3, #6
	mov	r0, r6
	movs	r1, #0
.LPIC74:
	add	r2, pc
	bl	png_set_keep_unknown_chunks(PLT)
	ldr	r3, [r9, #40]
	cmp	r3, #0
	beq	.L1190
.L1153:
	mov	r0, r6
	mov	r1, r4
	bl	png_read_update_info(PLT)
	ldr	r3, [r9, #40]
	cmp	r3, #4
	bhi	.L1154
	tbb	[pc, r3]
.L1156:
	.byte	(.L1155-.L1156)/2
	.byte	(.L1157-.L1156)/2
	.byte	(.L1157-.L1156)/2
	.byte	(.L1158-.L1156)/2
	.byte	(.L1159-.L1156)/2
	.align	1
.L1159:
	ldrh	r3, [r4, #24]
	cmp	r3, #1544
	bne	.L1154
	ldr	r2, [r6, #728]
	movw	r3, #23392
	movt	r3, 3
	cmp	r2, r3
	bne	.L1154
	ldr	r3, [r10, #24]
	cmp	r3, #244
	bne	.L1154
.L1160:
	ldr	r7, [r9, #8]
	ldr	r3, [r9, #4]
	cmp	r7, #0
	it	lt
	ldrlt	r2, [r10, #12]
	str	r7, [r9, #28]
	itt	lt
	rsblt	r2, r2, #1
	mlalt	r3, r7, r2, r3
	str	r3, [r9, #24]
	cmp	r8, #0
	beq	.L1191
.L1164:
	subs	r8, r8, #1
	bmi	.L1192
.L1169:
	ldr	r5, [r10, #12]
	ldr	r4, [r9, #24]
	cmp	r5, #0
	beq	.L1164
.L1168:
	mov	r1, r4
	mov	r0, r6
	movs	r2, #0
	add	r4, r4, r7
	bl	png_read_row(PLT)
	subs	r5, r5, #1
	bne	.L1168
	subs	r8, r8, #1
	bpl	.L1169
.L1192:
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L1158:
	ldrh	r3, [r4, #24]
	cmp	r3, #520
	bne	.L1154
	ldr	r2, [r6, #728]
	movw	r3, #23392
	movt	r3, 3
	cmp	r2, r3
	bne	.L1154
	ldr	r3, [r10, #24]
	cmp	r3, #216
	beq	.L1160
.L1154:
	ldr	r1, .L1193+4
	mov	r0, r6
.LPIC75:
	add	r1, pc
	bl	png_error(PLT)
.L1157:
	ldrh	r3, [r4, #24]
	cmp	r3, #1032
	bne	.L1154
	ldr	r2, [r6, #728]
	movw	r3, #23392
	movt	r3, 3
	cmp	r2, r3
	bne	.L1154
	ldr	r3, [r10, #24]
	cmp	r3, #256
	beq	.L1160
	b	.L1154
.L1155:
	ldrb	r3, [r4, #25]	@ zero_extendqisi2
	cmp	r3, #3
	it	ne
	cmpne	r3, #0
	bne	.L1154
	ldrb	r3, [r4, #24]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L1160
	b	.L1154
.L1190:
	mov	r0, r6
	bl	png_set_interlace_handling(PLT)
	mov	r8, r0
	b	.L1153
.L1191:
	mov	r1, r4
	mov	r0, r6
	bl	png_get_rowbytes(PLT)
	mov	r1, r0
	mov	r0, r6
	bl	png_malloc(PLT)
	ldr	r1, .L1193+8
	mov	r4, r0
	mov	r2, r9
	mov	r0, r10
	str	r4, [r9, #20]
.LPIC76:
	add	r1, pc
	bl	png_safe_execute(PLT)
	mov	r1, r4
	mov	r5, r0
	str	r8, [r9, #20]
	mov	r0, r6
	bl	png_free(PLT)
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L1194:
	.align	2
.L1193:
	.word	.LANCHOR0-(.LPIC74+4)
	.word	.LC40-(.LPIC75+4)
	.word	png_image_read_and_map-(.LPIC76+4)
	.size	png_image_read_colormapped, .-png_image_read_colormapped
	.section	.text.png_image_read_and_map,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_read_and_map, %function
png_image_read_and_map:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	str	r0, [sp, #28]
	ldr	r3, [r1]
	ldr	r3, [r3]
	ldrb	r4, [r3, #672]	@ zero_extendqisi2
	str	r3, [sp, #12]
	cmp	r4, #0
	beq	.L1235
	cmp	r4, #1
	itt	eq
	moveq	r3, #7
	streq	r3, [sp, #48]
	bne	.L1255
.L1197:
	ldr	r5, [r1, #12]
	cmp	r4, #1
	ldr	r3, [sp, #28]
	mov	r8, #5
	ldr	r1, [r1, #8]
	mov	fp, #130
	str	r5, [sp, #16]
	ldr	r5, [sp, #28]
	ldr	r2, [r3, #40]
	mov	r3, #0
	str	r1, [sp, #44]
	ldr	r5, [r5, #24]
	add	r2, r2, #-1
	str	r2, [sp, #4]
	str	r5, [sp, #52]
	ldr	r5, [sp, #28]
	ldr	r5, [r5, #28]
	str	r5, [sp, #40]
	beq	.L1199
.L1260:
	movs	r5, #1
	movs	r2, #0
	mov	r1, r2
	mov	r6, r5
	add	r3, r3, r5
	str	r5, [sp, #8]
	str	r3, [sp, #36]
.L1200:
	ldr	r5, [sp, #16]
	cmp	r5, r2
	bls	.L1202
	ldr	r5, [sp, #8]
	adds	r7, r6, r1
	ldr	r3, [sp, #40]
	rsb	r10, r6, #0
	mov	r9, r5
	add	r9, r9, r2
	mul	r3, r3, r5
	ldr	r5, [sp, #40]
	str	r3, [sp, #20]
	mla	r2, r5, r2, r7
	ldr	r3, [sp, #44]
	ldr	r7, [sp, #52]
	subs	r1, r3, r1
	subs	r1, r1, r6
	add	r7, r7, r2
	mov	r5, r1
	str	r1, [sp, #24]
.L1231:
	ldr	r3, [sp, #28]
	movs	r2, #0
	ldr	r0, [sp, #12]
	add	r5, r5, r7
	ldr	r4, [r3, #20]
	mov	r1, r4
	bl	png_read_row(PLT)
	ldr	lr, [sp, #4]
	subs	r3, r7, r6
	cmp	lr, #3
	bhi	.L1203
	tbb	[pc, lr]
.L1205:
	.byte	(.L1204-.L1205)/2
	.byte	(.L1206-.L1205)/2
	.byte	(.L1254-.L1205)/2
	.byte	(.L1208-.L1205)/2
	.align	1
.L1220:
	ldrb	r1, [r4]	@ zero_extendqisi2
	adds	r4, r4, #3
	ldrb	lr, [r4, #-2]	@ zero_extendqisi2
	ldrb	r0, [r4, #-1]	@ zero_extendqisi2
	smlabb	r1, r8, r1, fp
	smlabb	lr, r8, lr, fp
	asrs	r1, r1, #8
	asr	lr, lr, #8
	add	r1, r1, r1, lsl #1
	smlabb	r0, r8, r0, fp
	add	r2, lr, r1, lsl #1
	asrs	r1, r0, #8
	add	r2, r2, r2, lsl #1
	add	r2, r1, r2, lsl #1
	strb	r2, [r3]
	add	r3, r3, r6
.L1254:
	cmp	r3, r5
	bcc	.L1220
.L1203:
	ldr	r3, [sp, #20]
	ldr	r5, [sp, #16]
	add	r7, r7, r3
	ldr	r3, [sp, #8]
	cmp	r5, r9
	add	r3, r3, r9
	bls	.L1202
	mov	r9, r3
	ldr	r5, [sp, #24]
	b	.L1231
.L1206:
	cmp	r3, r5
	itttt	cc
	addcc	r4, r4, #2
	movcc	r3, r7
	movcc	lr, #255
	movcc	r0, #254
	bcc	.L1219
	b	.L1203
.L1256:
	strb	r0, [r3, r10]
.L1217:
	cmp	r5, r3
	add	r4, r4, #2
	add	r2, r3, r6
	bls	.L1203
	mov	r3, r2
.L1219:
	ldrb	r2, [r4, #-1]	@ zero_extendqisi2
	ldrb	r1, [r4, #-2]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L1256
	cmp	r1, #254
	ite	ne
	strbne	r1, [r3, r10]
	strbeq	lr, [r3, r10]
	b	.L1217
.L1204:
	cmp	r3, r5
	bcs	.L1203
	adds	r4, r4, #2
	b	.L1215
.L1257:
	mov	r0, #231	@ movhi
	mov	lr, #128
	smlabb	r2, r0, r1, lr
	ubfx	r2, r2, #8, #8
.L1214:
	strb	r2, [r3]
	add	r3, r3, r6
	cmp	r3, r5
	add	r4, r4, #2
	bcs	.L1203
.L1215:
	ldrb	r2, [r4, #-1]	@ zero_extendqisi2
	ldrb	r1, [r4, #-2]	@ zero_extendqisi2
	cmp	r2, #229
	bhi	.L1257
	cmp	r2, #25
	itett	hi
	smlabbhi	r2, r8, r2, fp
	movls	r2, #231
	smlabbhi	r1, r8, r1, fp
	lsrhi	r2, r2, #8
	itttt	hi
	lsrhi	r1, r1, #8
	addhi	r2, r2, r2, lsl #1
	addhi	r1, r1, #226
	addhi	r2, r1, r2, lsl #1
	it	hi
	uxtbhi	r2, r2
	b	.L1214
.L1208:
	cmp	r3, r5
	bcs	.L1203
	adds	r2, r4, #4
	str	r9, [sp, #32]
	mov	r3, r7
	mov	r1, r2
	mov	r9, r7
	b	.L1230
.L1258:
	ldrb	r0, [r1, #-4]	@ zero_extendqisi2
	ldrb	lr, [r4, #1]	@ zero_extendqisi2
	ldrb	r7, [r4, #2]	@ zero_extendqisi2
	smlabb	r4, r8, r0, fp
	smlabb	lr, r8, lr, fp
	asrs	r4, r4, #8
	asr	lr, lr, #8
	add	r4, r4, r4, lsl #1
	smlabb	r7, r8, r7, fp
	add	r0, lr, r4, lsl #1
	asrs	r4, r7, #8
	add	r0, r0, r0, lsl #1
	add	r0, r4, r0, lsl #1
	strb	r0, [r3, r10]
.L1222:
	cmp	r5, r3
	add	r1, r1, #4
	mov	r4, r2
	add	r0, r3, r6
	bls	.L1252
.L1259:
	mov	r3, r0
	adds	r2, r2, #4
.L1230:
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	cmp	r0, #195
	bhi	.L1258
	cmp	r0, #63
	itt	ls
	mvnls	r0, #39
	strbls	r0, [r3, r10]
	bls	.L1222
	ldrb	r4, [r1, #-4]	@ zero_extendqisi2
	and	lr, r4, #64
	sxtb	r4, r4
	and	r7, lr, #255
	cmp	r4, #0
	itete	lt
	movlt	r0, #235
	movge	r0, #226
	movlt	ip, #226
	movge	ip, #217
	cmp	lr, #0
	it	eq
	moveq	r0, ip
	cmp	r4, #0
	it	lt
	addlt	r0, r0, #3
	cbz	r7, .L1227
	adds	r0, r0, #3
.L1227:
	cmp	r4, #0
	it	lt
	addlt	r0, r0, #1
	cbz	r7, .L1229
	adds	r0, r0, #1
.L1229:
	cmp	r5, r3
	strb	r0, [r3, r10]
	add	r1, r1, #4
	mov	r4, r2
	add	r0, r3, r6
	bhi	.L1259
.L1252:
	mov	r7, r9
	ldr	r9, [sp, #32]
	b	.L1203
.L1202:
	ldr	r3, [sp, #36]
	ldr	r5, [sp, #48]
	cmp	r5, r3
	ble	.L1245
	ldr	r5, [sp, #12]
	ldrb	r4, [r5, #672]	@ zero_extendqisi2
	cmp	r4, #1
	bne	.L1260
.L1199:
	cmp	r3, #1
	add	r5, r3, #1
	str	r5, [sp, #36]
	ble	.L1201
	asrs	r1, r5, #1
	rsb	r2, r3, #7
	asrs	r2, r2, #1
	and	r0, r3, #1
	rsb	r1, r1, #3
	ldr	r5, [sp, #44]
	lsl	r1, r0, r1
	lsls	r4, r4, r2
	and	r1, r1, #7
	subs	r4, r4, #1
	subs	r4, r4, r1
	add	r4, r4, r5
.L1234:
	lsrs	r4, r4, r2
	beq	.L1202
	cmp	r3, #2
	asr	r2, r3, #1
	rsb	r4, r3, #7
	it	gt
	addgt	r3, r3, #-1
	eor	r0, r0, #1
	rsb	r2, r2, #3
	it	gt
	asrgt	r3, r3, #1
	lsl	r2, r0, r2
	it	gt
	movgt	r0, #8
	asr	r4, r4, #1
	it	gt
	asrgt	r0, r0, r3
	mov	r6, #1
	it	le
	movle	r3, #8
	lsl	r6, r6, r4
	and	r2, r2, #7
	ite	gt
	strgt	r0, [sp, #8]
	strle	r3, [sp, #8]
	b	.L1200
.L1245:
	movs	r0, #1
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1255:
	ldr	r1, .L1261
	ldr	r0, [sp, #12]
.LPIC77:
	add	r1, pc
	bl	png_error(PLT)
.L1235:
	movs	r5, #1
	str	r5, [sp, #48]
	b	.L1197
.L1201:
	asrs	r1, r5, #1
	movs	r2, #3
	and	r0, r3, #1
	ldr	r5, [sp, #44]
	subs	r1, r2, r1
	lsl	r1, r0, r1
	and	r1, r1, #7
	rsb	r4, r1, #7
	add	r4, r4, r5
	b	.L1234
.L1262:
	.align	2
.L1261:
	.word	.LC38-(.LPIC77+4)
	.size	png_image_read_and_map, .-png_image_read_and_map
	.section	.text.png_read_rows,"ax",%progbits
	.align	2
	.global	png_read_rows
	.thumb
	.thumb_func
	.type	png_read_rows, %function
png_read_rows:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #12
	cmp	r0, #0
	beq	.L1263
	mov	r9, r3
	adds	r3, r1, #0
	it	ne
	movne	r3, #1
	mov	r10, r2
	adds	r2, r2, #0
	mov	r7, r1
	it	ne
	movne	r2, #1
	ands	r8, r3, r2
	bne	.L1293
	cmp	r3, #0
	beq	.L1270
	cmp	r9, #0
	beq	.L1263
	cmp	r9, #8
	sub	r10, r9, #7
	bls	.L1278
	add	r5, r1, #32
.L1272:
	ldr	r1, [r5, #-32]
	mov	r0, r4
	movs	r2, #0
	pld	[r5, #16]
	bl	png_read_row(PLT)
	ldr	r1, [r5, #-28]
	mov	r0, r4
	movs	r2, #0
	add	r6, r8, #8
	bl	png_read_row(PLT)
	ldr	r1, [r5, #-24]
	mov	r0, r4
	movs	r2, #0
	mov	r7, r5
	bl	png_read_row(PLT)
	ldr	r1, [r5, #-20]
	mov	r0, r4
	movs	r2, #0
	adds	r5, r5, #32
	bl	png_read_row(PLT)
	ldr	r1, [r5, #-48]
	mov	r0, r4
	movs	r2, #0
	bl	png_read_row(PLT)
	ldr	r1, [r5, #-44]
	mov	r0, r4
	movs	r2, #0
	bl	png_read_row(PLT)
	ldr	r1, [r5, #-40]
	mov	r0, r4
	movs	r2, #0
	bl	png_read_row(PLT)
	ldr	r1, [r5, #-36]
	mov	r0, r4
	movs	r2, #0
	bl	png_read_row(PLT)
	add	r3, r8, #9
	mov	r8, r6
	cmp	r3, r10
	bcc	.L1272
.L1273:
	adds	r6, r6, #1
	mov	r0, r4
	ldr	r1, [r7], #4
	movs	r2, #0
	bl	png_read_row(PLT)
	cmp	r9, r6
	bhi	.L1273
.L1263:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1293:
	cmp	r9, #0
	beq	.L1263
	cmp	r9, #8
	sub	r3, r9, #7
	str	r3, [sp, #4]
	bls	.L1277
	add	r6, r1, #32
	add	r5, r10, #32
	mov	fp, #0
.L1268:
	ldr	r1, [r6, #-32]
	mov	r0, r4
	ldr	r2, [r5, #-32]
	add	r8, fp, #8
	pld	[r6, #8]
	mov	r7, r6
	pld	[r5, #8]
	mov	r10, r5
	bl	png_read_row(PLT)
	ldr	r1, [r6, #-28]
	mov	r0, r4
	ldr	r2, [r5, #-28]
	adds	r6, r6, #32
	bl	png_read_row(PLT)
	ldr	r1, [r6, #-56]
	mov	r0, r4
	ldr	r2, [r5, #-24]
	adds	r5, r5, #32
	bl	png_read_row(PLT)
	ldr	r1, [r6, #-52]
	mov	r0, r4
	ldr	r2, [r5, #-52]
	bl	png_read_row(PLT)
	ldr	r1, [r6, #-48]
	mov	r0, r4
	ldr	r2, [r5, #-48]
	bl	png_read_row(PLT)
	ldr	r1, [r6, #-44]
	mov	r0, r4
	ldr	r2, [r5, #-44]
	bl	png_read_row(PLT)
	ldr	r1, [r6, #-40]
	mov	r0, r4
	ldr	r2, [r5, #-40]
	bl	png_read_row(PLT)
	ldr	r2, [r5, #-36]
	mov	r0, r4
	ldr	r1, [r6, #-36]
	bl	png_read_row(PLT)
	ldr	r3, [sp, #4]
	add	r2, fp, #9
	mov	fp, r8
	cmp	r3, r2
	bhi	.L1268
.L1269:
	add	r8, r8, #1
	mov	r0, r4
	ldr	r1, [r7], #4
	ldr	r2, [r10], #4
	bl	png_read_row(PLT)
	cmp	r9, r8
	bhi	.L1269
	b	.L1263
.L1270:
	cmp	r2, #0
	beq	.L1263
	cmp	r9, #0
	beq	.L1263
	cmp	r9, #8
	sub	r8, r9, #7
	bls	.L1279
	add	r5, r10, #32
	mov	r7, r3
.L1275:
	ldr	r2, [r5, #-32]
	mov	r0, r4
	movs	r1, #0
	pld	[r5, #16]
	bl	png_read_row(PLT)
	ldr	r2, [r5, #-28]
	mov	r0, r4
	movs	r1, #0
	add	r6, r7, #8
	bl	png_read_row(PLT)
	ldr	r2, [r5, #-24]
	mov	r0, r4
	movs	r1, #0
	adds	r7, r7, #9
	bl	png_read_row(PLT)
	ldr	r2, [r5, #-20]
	mov	r0, r4
	movs	r1, #0
	mov	r10, r5
	bl	png_read_row(PLT)
	ldr	r2, [r5, #-16]
	mov	r0, r4
	movs	r1, #0
	adds	r5, r5, #32
	bl	png_read_row(PLT)
	ldr	r2, [r5, #-44]
	mov	r0, r4
	movs	r1, #0
	bl	png_read_row(PLT)
	ldr	r2, [r5, #-40]
	mov	r0, r4
	movs	r1, #0
	bl	png_read_row(PLT)
	ldr	r2, [r5, #-36]
	mov	r0, r4
	movs	r1, #0
	bl	png_read_row(PLT)
	cmp	r7, r8
	mov	r7, r6
	bcc	.L1275
.L1276:
	adds	r6, r6, #1
	mov	r0, r4
	movs	r1, #0
	ldr	r2, [r10], #4
	bl	png_read_row(PLT)
	cmp	r9, r6
	bhi	.L1276
	b	.L1263
.L1279:
	mov	r6, r3
	b	.L1276
.L1277:
	mov	r8, #0
	b	.L1269
.L1278:
	mov	r6, r8
	b	.L1273
	.size	png_read_rows, .-png_read_rows
	.section	.text.png_set_read_offset,"ax",%progbits
	.align	2
	.global	png_set_read_offset
	.thumb
	.thumb_func
	.type	png_set_read_offset, %function
png_set_read_offset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r2
	mov	r6, r1
	subs	r6, r6, r5
	bl	png_seek_data(PLT)
	mov	r0, r4
	bl	png_read_chunk_header(PLT)
	add	r1, r6, #8
	mov	r3, r0
	str	r3, [r4, #648]
	mov	r0, r4
	add	r1, r1, r3
	bl	png_seek_data(PLT)
	str	r5, [r4, #648]
	pop	{r4, r5, r6, pc}
	.size	png_set_read_offset, .-png_set_read_offset
	.section	.text.png_configure_decoder,"ax",%progbits
	.align	2
	.global	png_configure_decoder
	.thumb
	.thumb_func
	.type	png_configure_decoder, %function
png_configure_decoder:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r5, [r0, #1140]
	mov	r6, r1
	mov	r8, r2
	ldr	r0, [r1]
	add	r5, r5, r2, lsl #2
	ldr	r7, [r5, #32]
	mov	r1, r7
	bl	__aeabi_uidiv(PLT)
	mul	r7, r7, r0
	ldr	r3, [r5, #60]
	ldr	r5, [r3, r0, lsl #2]
	str	r7, [r6]
	ldrb	r3, [r4, #672]	@ zero_extendqisi2
	str	r7, [r4, #612]
	cbnz	r3, .L1304
.L1297:
	ldrb	r3, [r4, #678]	@ zero_extendqisi2
	add	r6, r4, #464
	mov	r0, r6
	cmp	r3, #7
	iteet	ls
	ldrls	r7, [r4, #608]
	lsrhi	r7, r3, #3
	ldrhi	r2, [r4, #608]
	mulls	r7, r7, r3
	itee	hi
	mulhi	r7, r2, r7
	addls	r7, r7, #7
	lsrls	r7, r7, #3
	bl	inflateEnd(PLT)
	ldr	r1, [r5]
	mov	r0, r6
	bl	inflateCopy(PLT)
	adds	r7, r7, #1
	mov	r0, r4
	ldr	r1, [r5, #4]
	ldr	r2, [r5, #8]
	bl	png_set_read_offset(PLT)
	ldr	r1, [r5, #12]
	mov	r2, r7
	ldr	r0, [r4, #620]
	bl	memcpy(PLT)
	movs	r3, #0
	str	r3, [r4, #468]
	pop	{r4, r5, r6, r7, r8, pc}
.L1304:
	mov	r1, r8
	mov	r0, r4
	bl	png_set_interlaced_pass(PLT)
	b	.L1297
	.size	png_configure_decoder, .-png_configure_decoder
	.global	__aeabi_idiv
	.section	.text.png_build_index,"ax",%progbits
	.align	2
	.global	png_build_index
	.thumb
	.thumb_func
	.type	png_build_index, %function
png_build_index:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r6, .L1325
	sub	sp, sp, #52
	add	r5, sp, #16
.LPIC86:
	add	r6, pc
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r6, {r0, r1, r2}
	stmia	r5, {r0, r1, r2}
	mov	r0, r4
	bl	png_set_interlace_handling(PLT)
	str	r0, [sp, #12]
	cmp	r4, #0
	beq	.L1305
	mov	r0, r4
	bl	png_read_start_row(PLT)
	ldrb	r3, [r4, #672]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1323
.L1307:
	ldr	r1, [r4, #604]
	mov	r0, r4
	bl	png_malloc(PLT)
	movs	r1, #88
	mov	r6, r0
	mov	r0, r4
	bl	png_malloc(PLT)
	ldr	r3, [r4, #1144]
	mov	r9, r0
	str	r9, [r4, #1140]
	movs	r1, #0
	movs	r2, #28
	subs	r3, r3, #8
	str	r3, [r0], #4
	bl	memset(PLT)
	ldr	r3, [sp, #12]
	cmp	r3, #0
	ble	.L1313
	add	r3, sp, #12
	add	fp, r9, #32
	str	r3, [sp, #8]
	movs	r3, #0
	str	r3, [sp, #4]
	add	r3, r4, #464
	str	r3, [sp]
.L1320:
	ldr	r3, [sp, #8]
	movs	r0, #8
	movs	r5, #0
	ldr	r1, [r3, #4]!
	str	r3, [sp, #8]
	bl	__aeabi_idiv(PLT)
	ldr	r2, [r4, #592]
	rsb	r0, r0, r0, lsl #7
	lsls	r3, r0, #1
	subs	r0, r2, #1
	mov	r1, r3
	str	r3, [fp], #4
	add	r0, r0, r3
	bl	__aeabi_uidiv(PLT)
	mov	r8, r0
	mov	r0, r4
	lsl	r1, r8, #2
	bl	png_malloc(PLT)
	ldrb	r3, [r4, #678]	@ zero_extendqisi2
	str	r0, [fp, #24]
	ldr	r2, [r4, #608]
	cmp	r3, #7
	itete	hi
	lsrhi	r3, r3, #3
	mulls	r3, r2, r3
	mulhi	r2, r2, r3
	addls	r7, r3, #7
	itet	ls
	lsrls	r7, r7, #3
	addhi	r7, r2, #1
	addls	r7, r7, #1
	cmp	r8, #0
	beq	.L1316
.L1319:
	movs	r1, #16
	mov	r0, r4
	bl	png_malloc(PLT)
	ldr	r2, [fp, #24]
	mov	r10, r0
	movs	r1, #56
	mov	r0, r4
	str	r10, [r2, r5, lsl #2]
	bl	png_malloc(PLT)
	ldr	r1, [sp]
	str	r0, [r10]
	bl	inflateCopy(PLT)
	mov	r1, r7
	mov	r0, r4
	bl	png_malloc(PLT)
	ldr	r1, [r4, #620]
	mov	r2, r7
	str	r0, [r10, #12]
	bl	memcpy(PLT)
	ldr	r0, [r4, #468]
	ldr	r1, [r4, #648]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-4]
	add	r1, r1, r0
	str	r1, [r10, #8]
	adds	r2, r2, #1
	ldr	r1, [r9]
	str	r2, [fp, #-32]
	str	r1, [r10, #4]
	cbz	r3, .L1317
	mul	lr, r3, r5
	ldr	r3, [r4, #592]
	cmp	r3, lr
	bls	.L1317
	mov	r10, #0
	b	.L1318
.L1324:
	ldr	r2, [r4, #592]
	cmp	r3, r2
	bcs	.L1317
.L1318:
	mov	r0, r4
	mov	r1, r6
	movs	r2, #0
	add	r10, r10, #1
	bl	png_read_row(PLT)
	ldr	r3, [fp, #-4]
	cmp	r3, r10
	mla	r3, r3, r5, r10
	bhi	.L1324
.L1317:
	adds	r5, r5, #1
	cmp	r5, r8
	bne	.L1319
.L1316:
	ldr	r3, [sp, #4]
	ldr	r1, [sp, #12]
	adds	r3, r3, #1
	cmp	r3, r1
	str	r3, [sp, #4]
	bne	.L1320
.L1313:
	mov	r0, r4
	mov	r1, r6
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_free(PLT)
.L1323:
	movs	r3, #8
	str	r3, [sp, #16]
	b	.L1307
.L1305:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1326:
	.align	2
.L1325:
	.word	.LANCHOR1-(.LPIC86+4)
	.size	png_build_index, .-png_build_index
	.section	.text.png_read_image,"ax",%progbits
	.align	2
	.global	png_read_image
	.thumb
	.thumb_func
	.type	png_read_image, %function
png_read_image:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	str	r1, [sp, #4]
	cmp	r0, #0
	beq	.L1327
	ldr	r3, [r0, #452]
	mov	r5, r0
	lsls	r2, r3, #25
	bpl	.L1349
	ldrb	r3, [r0, #672]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1350
.L1331:
	mov	r0, r5
	bl	png_set_interlace_handling(PLT)
	mov	r3, r0
	str	r0, [sp]
.L1330:
	cmp	r3, #0
	ldr	r7, [r5, #592]
	ble	.L1327
	mov	r9, #0
	sub	r8, r7, #7
.L1332:
	cmp	r7, #0
	beq	.L1334
	cmp	r7, #8
	itt	ls
	ldrls	fp, [sp, #4]
	movls	r6, #0
	bls	.L1335
	ldr	r4, [sp, #4]
	mov	r10, #0
	adds	r4, r4, #32
.L1333:
	ldr	r1, [r4, #-32]
	mov	r0, r5
	movs	r2, #0
	pld	[r4, #16]
	bl	png_read_row(PLT)
	ldr	r1, [r4, #-28]
	mov	r0, r5
	movs	r2, #0
	add	r6, r10, #8
	bl	png_read_row(PLT)
	ldr	r1, [r4, #-24]
	mov	r0, r5
	movs	r2, #0
	mov	fp, r4
	bl	png_read_row(PLT)
	ldr	r1, [r4, #-20]
	mov	r0, r5
	movs	r2, #0
	adds	r4, r4, #32
	bl	png_read_row(PLT)
	ldr	r1, [r4, #-48]
	mov	r0, r5
	movs	r2, #0
	bl	png_read_row(PLT)
	ldr	r1, [r4, #-44]
	mov	r0, r5
	movs	r2, #0
	bl	png_read_row(PLT)
	ldr	r1, [r4, #-40]
	mov	r0, r5
	movs	r2, #0
	bl	png_read_row(PLT)
	ldr	r1, [r4, #-36]
	movs	r2, #0
	mov	r0, r5
	bl	png_read_row(PLT)
	add	r2, r10, #9
	mov	r10, r6
	cmp	r8, r2
	bhi	.L1333
.L1335:
	adds	r6, r6, #1
	mov	r0, r5
	ldr	r1, [fp], #4
	movs	r2, #0
	bl	png_read_row(PLT)
	cmp	r6, r7
	bcc	.L1335
.L1334:
	ldr	r3, [sp]
	add	r9, r9, #1
	cmp	r9, r3
	bne	.L1332
.L1327:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1350:
	ldr	r3, [r0, #456]
	lsls	r3, r3, #30
	bmi	.L1331
	ldr	r1, .L1351
.LPIC87:
	add	r1, pc
	bl	png_warning(PLT)
	ldr	r3, [r5, #592]
	str	r3, [r5, #596]
	b	.L1331
.L1349:
	bl	png_set_interlace_handling(PLT)
	str	r0, [sp]
	mov	r0, r5
	bl	png_start_read_image(PLT)
	ldr	r3, [sp]
	b	.L1330
.L1352:
	.align	2
.L1351:
	.word	.LC41-(.LPIC87+4)
	.size	png_read_image, .-png_read_image
	.section	.text.png_read_end,"ax",%progbits
	.align	2
	.global	png_read_end
	.thumb
	.thumb_func
	.type	png_read_end, %function
png_read_end:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L1396
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r1
	movw	r1, #16724
	sub	sp, sp, #20
	movt	r1, 18756
	mov	r4, r0
	bl	png_chunk_unknown_handling(PLT)
	cmp	r0, #0
	beq	.L1397
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L1398
.L1356:
	movw	r3, #18244
	movw	r6, #20036
	movt	r3, 25163
	movw	r7, #17490
	str	r3, [sp, #8]
	movw	r3, #21069
	movw	r8, #16724
	movw	r9, #21573
	movt	r3, 25416
	movt	r6, 18757
	movt	r7, 18760
	movt	r8, 18756
	movt	r9, 20556
	str	r3, [sp, #12]
	b	.L1388
.L1403:
	cmp	r10, r8
	beq	.L1399
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_unknown(PLT)
	ldr	r3, [r4, #448]
	cmp	r10, r9
	itt	eq
	orreq	r3, r3, #2
	streq	r3, [r4, #448]
.L1358:
	lsls	r3, r3, #27
	bmi	.L1400
.L1388:
	mov	r0, r4
	bl	png_read_chunk_header(PLT)
	ldr	r10, [r4, #616]
	mov	fp, r0
	cmp	r10, r6
	beq	.L1401
	cmp	r10, r7
	beq	.L1402
	cmp	r5, #0
	beq	.L1368
	mov	r0, r4
	mov	r1, r10
	bl	png_chunk_unknown_handling(PLT)
	mov	r3, r0
	cmp	r0, #0
	bne	.L1403
	cmp	r10, r8
	beq	.L1404
	cmp	r10, r9
	beq	.L1405
	ldr	r3, [sp, #8]
	cmp	r10, r3
	beq	.L1406
	ldr	r3, [sp, #12]
	cmp	r10, r3
	beq	.L1407
	movw	r3, #19777
	movt	r3, 26433
	cmp	r10, r3
	beq	.L1408
	movw	r3, #21332
	movt	r3, 26697
	cmp	r10, r3
	beq	.L1409
	movw	r3, #18035
	movt	r3, 28486
	cmp	r10, r3
	beq	.L1410
	movw	r3, #16716
	movt	r3, 28739
	cmp	r10, r3
	beq	.L1411
	movw	r3, #16716
	movt	r3, 29507
	cmp	r10, r3
	beq	.L1412
	movw	r3, #22899
	movt	r3, 28744
	cmp	r10, r3
	beq	.L1413
	movw	r3, #18772
	movt	r3, 29506
	cmp	r10, r3
	beq	.L1414
	movw	r3, #18242
	movt	r3, 29522
	cmp	r10, r3
	beq	.L1415
	movw	r3, #17232
	movt	r3, 26947
	cmp	r10, r3
	beq	.L1416
	movw	r3, #19540
	movt	r3, 29520
	cmp	r10, r3
	beq	.L1417
	movw	r3, #22644
	movt	r3, 29765
	cmp	r10, r3
	beq	.L1418
	movw	r3, #19781
	movt	r3, 29769
	cmp	r10, r3
	beq	.L1419
	movw	r3, #20051
	movt	r3, 29778
	cmp	r10, r3
	beq	.L1420
	movw	r3, #22644
	movt	r3, 31316
	cmp	r10, r3
	beq	.L1421
	movw	r3, #22644
	mov	r2, fp
	movt	r3, 26964
	mov	r0, r4
	cmp	r10, r3
	mov	r1, r5
	beq	.L1422
	movs	r3, #0
	bl	png_handle_unknown(PLT)
	ldr	r3, [r4, #448]
	lsls	r3, r3, #27
	bpl	.L1388
.L1400:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1404:
	cmp	fp, #0
	bne	.L1367
	ldr	r3, [r4, #448]
	lsls	r2, r3, #18
	bpl	.L1368
.L1367:
	ldr	r1, .L1423
	mov	r0, r4
.LPIC90:
	add	r1, pc
	bl	png_benign_error(PLT)
.L1368:
	mov	r1, fp
	mov	r0, r4
	bl	png_crc_finish(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1401:
	mov	r2, r0
	mov	r1, r5
	mov	r0, r4
	bl	png_handle_IEND(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1402:
	mov	r2, r0
	mov	r1, r5
	mov	r0, r4
	bl	png_handle_IHDR(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1399:
	cmp	fp, #0
	bne	.L1363
	ldr	r1, [r4, #448]
	lsls	r1, r1, #18
	bpl	.L1364
.L1363:
	ldr	r1, .L1423+4
	mov	r0, r4
	str	r3, [sp, #4]
.LPIC89:
	add	r1, pc
	bl	png_benign_error(PLT)
	ldr	r3, [sp, #4]
.L1364:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_unknown(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1405:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_PLTE(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1406:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_bKGD(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1397:
	mov	r0, r4
	bl	png_read_finish_IDAT(PLT)
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L1356
.L1398:
	ldrh	r2, [r4, #660]
	ldr	r3, [r4, #664]
	cmp	r3, r2
	ble	.L1356
	ldr	r1, .L1423+8
	mov	r0, r4
.LPIC88:
	add	r1, pc
	bl	png_benign_error(PLT)
	b	.L1356
.L1396:
	bx	lr
.L1407:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_cHRM(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1414:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_sBIT(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1408:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_gAMA(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1409:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_hIST(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1410:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_oFFs(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1411:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_pCAL(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1412:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_sCAL(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1413:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_pHYs(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1415:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_sRGB(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1416:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_iCCP(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1420:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_tRNS(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1417:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_sPLT(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1422:
	bl	png_handle_iTXt(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1418:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_tEXt(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1419:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_tIME(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1421:
	mov	r2, fp
	mov	r0, r4
	mov	r1, r5
	bl	png_handle_zTXt(PLT)
	ldr	r3, [r4, #448]
	b	.L1358
.L1424:
	.align	2
.L1423:
	.word	.LC24-(.LPIC90+4)
	.word	.LC24-(.LPIC89+4)
	.word	.LC42-(.LPIC88+4)
	.size	png_read_end, .-png_read_end
	.section	.text.png_destroy_read_struct,"ax",%progbits
	.align	2
	.global	png_destroy_read_struct
	.thumb
	.thumb_func
	.type	png_destroy_read_struct, %function
png_destroy_read_struct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	cmp	r0, #0
	beq	.L1425
	ldr	r6, [r0]
	cmp	r6, #0
	beq	.L1425
	mov	r5, r1
	mov	r0, r6
	mov	r1, r2
	bl	png_destroy_info_struct(PLT)
	mov	r1, r5
	mov	r0, r6
	bl	png_destroy_info_struct(PLT)
	movs	r3, #0
	mov	r0, r6
	str	r3, [r4]
	bl	png_destroy_gamma_table(PLT)
	mov	r0, r6
	ldr	r1, [r6, #968]
	bl	png_free(PLT)
	mov	r0, r6
	ldr	r1, [r6, #1044]
	bl	png_free(PLT)
	mov	r0, r6
	ldr	r1, [r6, #1028]
	bl	png_free(PLT)
	mov	r0, r6
	ldr	r1, [r6, #852]
	bl	png_free(PLT)
	mov	r0, r6
	ldr	r1, [r6, #856]
	bl	png_free(PLT)
	ldr	r3, [r6, #916]
	lsls	r2, r3, #19
	bmi	.L1456
	bic	r2, r3, #4096
	lsls	r3, r3, #18
	str	r2, [r6, #916]
	bmi	.L1457
.L1428:
	bic	r2, r2, #8192
	add	r0, r6, #464
	str	r2, [r6, #916]
	bl	inflateEnd(PLT)
	mov	r0, r6
	ldr	r1, [r6, #808]
	bl	png_free(PLT)
	mov	r0, r6
	ldr	r1, [r6, #1012]
	bl	png_free(PLT)
	mov	r0, r6
	ldr	r1, [r6, #936]
	bl	png_free(PLT)
	ldr	r8, [r6, #1140]
	cmp	r8, #0
	beq	.L1429
	mov	r5, r8
	movs	r7, #7
.L1430:
	ldr	r3, [r5, #4]!
	cbz	r3, .L1433
	movs	r4, #0
.L1436:
	ldr	r3, [r5, #56]
	ldr	r3, [r3, r4, lsl #2]
	ldr	r0, [r3]
	bl	inflateEnd(PLT)
	ldr	r3, [r5, #56]
	mov	r0, r6
	ldr	r3, [r3, r4, lsl #2]
	ldr	r1, [r3]
	bl	png_free(PLT)
	ldr	r3, [r5, #56]
	mov	r0, r6
	ldr	r3, [r3, r4, lsl #2]
	ldr	r1, [r3, #12]
	bl	png_free(PLT)
	ldr	r3, [r5, #56]
	mov	r0, r6
	ldr	r1, [r3, r4, lsl #2]
	adds	r4, r4, #1
	bl	png_free(PLT)
	ldr	r3, [r5]
	cmp	r4, r3
	bcc	.L1436
	cbnz	r3, .L1458
.L1433:
	subs	r7, r7, #1
	bne	.L1430
	mov	r1, r8
	mov	r0, r6
	bl	png_free(PLT)
.L1429:
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, lr}
	b	png_destroy_png_struct(PLT)
.L1458:
	mov	r0, r6
	ldr	r1, [r5, #56]
	bl	png_free(PLT)
	b	.L1433
.L1456:
	mov	r0, r6
	ldr	r1, [r6, #656]
	bl	png_zfree(PLT)
	ldr	r3, [r6, #916]
	bic	r2, r3, #4096
	lsls	r3, r3, #18
	str	r2, [r6, #916]
	bpl	.L1428
.L1457:
	mov	r0, r6
	ldr	r1, [r6, #768]
	bl	png_free(PLT)
	ldr	r2, [r6, #916]
	b	.L1428
.L1425:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	png_destroy_read_struct, .-png_destroy_read_struct
	.section	.text.png_image_read_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_read_init, %function
png_image_read_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r5, [r0]
	sub	sp, sp, #12
	ldr	r3, .L1474
.LPIC92:
	add	r3, pc
	cbz	r5, .L1473
	ldr	r1, .L1474+4
.LPIC94:
	add	r1, pc
	bl	png_image_error(PLT)
.L1465:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1473:
	mov	r1, r0
	ldr	r6, .L1474+8
	ldr	r2, .L1474+12
	movs	r7, #1
	ldr	r0, .L1474+16
	ldr	r2, [r3, r2]
.LPIC91:
	add	r0, pc
	ldr	r3, [r3, r6]
	bl	png_create_read_struct(PLT)
	mov	r6, r0
	mov	r1, r5
	mov	r0, r4
	movs	r2, #96
	str	r6, [sp]
	bl	memset(PLT)
	str	r7, [r4, #4]
	cbz	r6, .L1461
	mov	r0, r6
	bl	png_create_info_struct(PLT)
	str	r0, [sp, #4]
	cbz	r0, .L1462
	ldr	r0, [sp]
	movs	r1, #24
	bl	png_malloc_warn(PLT)
	mov	r6, r0
	cbz	r0, .L1463
	mov	r1, r5
	movs	r2, #24
	bl	memset(PLT)
	ldrb	r3, [r6, #20]	@ zero_extendqisi2
	mov	r0, r7
	ldmia	sp, {r1, r2}
	bfi	r3, r5, #0, #1
	strb	r3, [r6, #20]
	stmia	r6, {r1, r2}
	str	r6, [r4]
	b	.L1465
.L1463:
	ldr	r0, [sp]
	add	r1, sp, #4
	bl	png_destroy_info_struct(PLT)
.L1462:
	movs	r1, #0
	mov	r0, sp
	mov	r2, r1
	bl	png_destroy_read_struct(PLT)
.L1461:
	ldr	r1, .L1474+20
	mov	r0, r4
.LPIC93:
	add	r1, pc
	bl	png_image_error(PLT)
	b	.L1465
.L1475:
	.align	2
.L1474:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC92+4)
	.word	.LC45-(.LPIC94+4)
	.word	png_safe_warning(GOT)
	.word	png_safe_error(GOT)
	.word	.LC43-(.LPIC91+4)
	.word	.LC44-(.LPIC93+4)
	.size	png_image_read_init, .-png_image_read_init
	.section	.text.png_set_read_status_fn,"ax",%progbits
	.align	2
	.global	png_set_read_status_fn
	.thumb
	.thumb_func
	.type	png_set_read_status_fn, %function
png_set_read_status_fn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L1476
	str	r1, [r0, #784]
.L1476:
	bx	lr
	.size	png_set_read_status_fn, .-png_set_read_status_fn
	.section	.text.png_read_png,"ax",%progbits
	.align	2
	.global	png_read_png
	.thumb
	.thumb_func
	.type	png_read_png, %function
png_read_png:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	bne	.L1552
	bx	lr
.L1552:
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r1
	mov	r4, r2
	mov	r6, r0
	bl	png_read_info(PLT)
	ldr	r3, [r5, #4]
	cmp	r3, #1073741824
	bcs	.L1553
	lsls	r7, r4, #16
	bmi	.L1554
.L1484:
	lsls	r0, r4, #31
	bmi	.L1555
.L1485:
	lsls	r1, r4, #30
	bmi	.L1556
.L1486:
	lsls	r2, r4, #29
	bmi	.L1557
.L1487:
	lsls	r3, r4, #28
	bmi	.L1558
.L1488:
	lsls	r7, r4, #27
	bmi	.L1559
.L1489:
	lsls	r0, r4, #26
	bmi	.L1560
.L1490:
	lsls	r1, r4, #25
	bmi	.L1561
.L1491:
	lsls	r3, r4, #24
	bmi	.L1562
.L1492:
	lsls	r7, r4, #23
	bmi	.L1563
.L1493:
	lsls	r0, r4, #22
	bmi	.L1564
.L1494:
	lsls	r1, r4, #21
	bmi	.L1565
.L1495:
	lsls	r2, r4, #18
	bmi	.L1566
.L1496:
	lsls	r3, r4, #17
	bmi	.L1567
.L1497:
	mov	r0, r6
	bl	png_set_interlace_handling(PLT)
	mov	r0, r6
	mov	r1, r5
	bl	png_read_update_info(PLT)
	mov	r0, r6
	mov	r1, r5
	movs	r2, #64
	movs	r3, #0
	bl	png_free_data(PLT)
	ldr	r4, [r5, #264]
	cmp	r4, #0
	beq	.L1568
.L1498:
	mov	r1, r4
	mov	r0, r6
	bl	png_read_image(PLT)
	ldr	r3, [r5, #8]
	mov	r0, r6
	mov	r1, r5
	orr	r3, r3, #32768
	str	r3, [r5, #8]
	pop	{r3, r4, r5, r6, r7, lr}
	b	png_read_end(PLT)
.L1561:
	ldr	r3, [r5, #8]
	lsls	r2, r3, #30
	bpl	.L1491
	mov	r0, r6
	add	r1, r5, #148
	bl	png_set_shift(PLT)
	b	.L1491
.L1560:
	mov	r0, r6
	bl	png_set_invert_mono(PLT)
	b	.L1490
.L1559:
	mov	r0, r6
	bl	png_set_expand(PLT)
	b	.L1489
.L1558:
	mov	r0, r6
	bl	png_set_packswap(PLT)
	b	.L1488
.L1557:
	mov	r0, r6
	bl	png_set_packing(PLT)
	b	.L1487
.L1556:
	mov	r0, r6
	bl	png_set_strip_alpha(PLT)
	b	.L1486
.L1555:
	mov	r0, r6
	bl	png_set_strip_16(PLT)
	b	.L1485
.L1554:
	mov	r0, r6
	bl	png_set_scale_16(PLT)
	b	.L1484
.L1567:
	mov	r0, r6
	bl	png_set_expand_16(PLT)
	b	.L1497
.L1566:
	mov	r0, r6
	bl	png_set_gray_to_rgb(PLT)
	b	.L1496
.L1565:
	mov	r0, r6
	bl	png_set_invert_alpha(PLT)
	b	.L1495
.L1564:
	mov	r0, r6
	bl	png_set_swap(PLT)
	b	.L1494
.L1563:
	mov	r0, r6
	bl	png_set_swap_alpha(PLT)
	b	.L1493
.L1562:
	mov	r0, r6
	bl	png_set_bgr(PLT)
	b	.L1492
.L1568:
	ldr	r1, [r5, #4]
	mov	r0, r6
	lsls	r1, r1, #2
	bl	png_malloc(PLT)
	ldr	r3, [r5, #4]
	str	r0, [r5, #264]
	cbz	r3, .L1499
	mov	r2, r4
	b	.L1501
.L1569:
	ldr	r0, [r5, #264]
.L1501:
	str	r2, [r0, r4, lsl #2]
	adds	r4, r4, #1
	cmp	r4, r3
	bne	.L1569
	ldr	r3, [r5, #232]
	movs	r4, #0
	ldr	r7, [r5, #264]
	orr	r3, r3, #64
	str	r3, [r5, #232]
	b	.L1503
.L1570:
	ldr	r7, [r5, #264]
.L1503:
	mov	r0, r6
	ldr	r1, [r5, #12]
	bl	png_malloc(PLT)
	ldr	r3, [r5, #4]
	str	r0, [r7, r4, lsl #2]
	adds	r4, r4, #1
	cmp	r3, r4
	bhi	.L1570
	ldr	r4, [r5, #264]
	b	.L1498
.L1499:
	ldr	r3, [r5, #232]
	mov	r4, r0
	orr	r3, r3, #64
	str	r3, [r5, #232]
	b	.L1498
.L1553:
	ldr	r1, .L1571
	mov	r0, r6
.LPIC95:
	add	r1, pc
	bl	png_error(PLT)
.L1572:
	.align	2
.L1571:
	.word	.LC46-(.LPIC95+4)
	.size	png_read_png, .-png_read_png
	.section	.text.png_image_begin_read_from_stdio,"ax",%progbits
	.align	2
	.global	png_image_begin_read_from_stdio
	.thumb
	.thumb_func
	.type	png_image_begin_read_from_stdio, %function
png_image_begin_read_from_stdio:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L1583
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0, #4]
	cmp	r3, #1
	beq	.L1584
	ldr	r1, .L1586
	pop	{r3, r4, r5, lr}
.LPIC98:
	add	r1, pc
	b	png_image_error(PLT)
.L1584:
	mov	r5, r1
	cbz	r1, .L1577
	bl	png_image_read_init(PLT)
	cbnz	r0, .L1585
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L1585:
	ldr	r3, [r4]
	mov	r0, r4
	ldr	r1, .L1586+4
	mov	r2, r4
	ldr	r3, [r3]
.LPIC96:
	add	r1, pc
	str	r5, [r3, #428]
	pop	{r3, r4, r5, lr}
	b	png_safe_execute(PLT)
.L1583:
	movs	r0, #0
	bx	lr
.L1577:
	ldr	r1, .L1586+8
	pop	{r3, r4, r5, lr}
.LPIC97:
	add	r1, pc
	b	png_image_error(PLT)
.L1587:
	.align	2
.L1586:
	.word	.LC48-(.LPIC98+4)
	.word	png_image_read_header-(.LPIC96+4)
	.word	.LC47-(.LPIC97+4)
	.size	png_image_begin_read_from_stdio, .-png_image_begin_read_from_stdio
	.section	.text.png_image_begin_read_from_file,"ax",%progbits
	.align	2
	.global	png_image_begin_read_from_file
	.thumb
	.thumb_func
	.type	png_image_begin_read_from_file, %function
png_image_begin_read_from_file:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L1597
	ldr	r3, [r0, #4]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cmp	r3, #1
	beq	.L1598
	ldr	r1, .L1599
	pop	{r4, r5, r6, lr}
.LPIC102:
	add	r1, pc
	b	png_image_error(PLT)
.L1598:
	cbz	r1, .L1591
	mov	r0, r1
	ldr	r1, .L1599+4
.LPIC99:
	add	r1, pc
	bl	fopen(PLT)
	mov	r5, r0
	cbz	r0, .L1592
	mov	r0, r4
	bl	png_image_read_init(PLT)
	cbz	r0, .L1593
	ldr	r3, [r4]
	mov	r0, r4
	mov	r2, r4
	ldr	r1, .L1599+8
	ldrb	r6, [r3, #20]	@ zero_extendqisi2
	ldr	r4, [r3]
.LPIC100:
	add	r1, pc
	orr	r6, r6, #2
	str	r5, [r4, #428]
	strb	r6, [r3, #20]
	pop	{r4, r5, r6, lr}
	b	png_safe_execute(PLT)
.L1597:
	movs	r0, #0
	bx	lr
.L1593:
	mov	r0, r5
	bl	fclose(PLT)
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L1592:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, r0
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	png_image_error(PLT)
.L1591:
	ldr	r1, .L1599+12
	pop	{r4, r5, r6, lr}
.LPIC101:
	add	r1, pc
	b	png_image_error(PLT)
.L1600:
	.align	2
.L1599:
	.word	.LC51-(.LPIC102+4)
	.word	.LC49-(.LPIC99+4)
	.word	png_image_read_header-(.LPIC100+4)
	.word	.LC50-(.LPIC101+4)
	.size	png_image_begin_read_from_file, .-png_image_begin_read_from_file
	.section	.text.png_image_begin_read_from_memory,"ax",%progbits
	.align	2
	.global	png_image_begin_read_from_memory
	.thumb
	.thumb_func
	.type	png_image_begin_read_from_memory, %function
png_image_begin_read_from_memory:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L1611
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, [r0, #4]
	cmp	r3, #1
	beq	.L1612
	ldr	r1, .L1614
	pop	{r3, r4, r5, r6, r7, lr}
.LPIC106:
	add	r1, pc
	b	png_image_error(PLT)
.L1612:
	cmp	r1, #0
	it	ne
	cmpne	r2, #0
	mov	r6, r1
	mov	r5, r2
	beq	.L1605
	bl	png_image_read_init(PLT)
	cbnz	r0, .L1613
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L1605:
	ldr	r1, .L1614+4
	pop	{r3, r4, r5, r6, r7, lr}
.LPIC105:
	add	r1, pc
	b	png_image_error(PLT)
.L1611:
	movs	r0, #0
	bx	lr
.L1613:
	ldr	r3, [r4]
	mov	r0, r4
	ldr	lr, .L1614+8
	mov	r2, r4
	ldr	r1, .L1614+12
	ldr	r7, [r3]
.LPIC103:
	add	lr, pc
	str	r6, [r3, #12]
	str	r5, [r3, #16]
.LPIC104:
	add	r1, pc
	str	r4, [r7, #428]
	str	lr, [r7, #420]
	pop	{r3, r4, r5, r6, r7, lr}
	b	png_safe_execute(PLT)
.L1615:
	.align	2
.L1614:
	.word	.LC53-(.LPIC106+4)
	.word	.LC52-(.LPIC105+4)
	.word	png_image_memory_read-(.LPIC103+4)
	.word	png_image_read_header-(.LPIC104+4)
	.size	png_image_begin_read_from_memory, .-png_image_begin_read_from_memory
	.section	.text.png_image_finish_read,"ax",%progbits
	.align	2
	.global	png_image_finish_read
	.thumb
	.thumb_func
	.type	png_image_finish_read, %function
png_image_finish_read:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	sp, sp, #48
	cmp	r0, #0
	beq	.L1631
	ldr	r5, [r0, #4]
	cmp	r5, #1
	beq	.L1644
	ldr	r1, .L1647
.LPIC110:
	add	r1, pc
	bl	png_image_error(PLT)
.L1642:
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1644:
	mov	r7, r1
	mov	r6, r2
	cmp	r3, #0
	beq	.L1645
.L1619:
	ldr	r2, [r4]
	eor	r1, r3, r3, asr #31
	sub	r1, r1, r3, asr #31
	cmp	r2, #0
	beq	.L1623
	cmp	r6, #0
	beq	.L1623
	ldr	r2, [r4, #16]
	ands	r5, r2, #8
	beq	.L1646
	ldr	r2, [r4, #8]
	cmp	r1, r2
	bcc	.L1623
	ldr	r2, [r4, #24]
	cmp	r2, #0
	beq	.L1626
	ldr	r2, [sp, #72]
	cmp	r2, #0
	beq	.L1626
	ldr	r1, .L1647+4
	add	r8, sp, #4
	str	r3, [sp, #12]
	movs	r5, #0
	ldr	r3, [sp, #72]
	mov	r2, r8
	mov	r0, r4
.LPIC112:
	add	r1, pc
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	r5, [sp, #32]
	str	r5, [sp, #36]
	str	r5, [sp, #40]
	str	r5, [sp, #44]
	str	r4, [sp, #4]
	str	r6, [sp, #8]
	str	r3, [sp, #16]
	str	r7, [sp, #20]
	bl	png_safe_execute(PLT)
	mov	r5, r0
	cbz	r0, .L1628
	ldr	r1, .L1647+8
	mov	r2, r8
	mov	r0, r4
.LPIC107:
	add	r1, pc
	bl	png_safe_execute(PLT)
	adds	r5, r0, #0
	it	ne
	movne	r5, #1
.L1628:
	mov	r0, r4
	bl	png_image_free(PLT)
	mov	r0, r5
	b	.L1642
.L1645:
	ldr	r3, [r0, #16]
	lsls	r2, r3, #28
	ldr	r2, [r0, #8]
	itt	pl
	andpl	r3, r3, #3
	addpl	r5, r3, #1
	mul	r3, r2, r5
	b	.L1619
.L1646:
	ldr	r0, [r4, #8]
	and	r2, r2, #3
	mla	r0, r2, r0, r0
	cmp	r1, r0
	bcc	.L1623
	ldr	r1, .L1647+12
	mov	r0, r4
	str	r3, [sp, #12]
	add	r2, sp, #4
	ldr	r3, [sp, #72]
.LPIC111:
	add	r1, pc
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	r5, [sp, #32]
	str	r5, [sp, #36]
	str	r5, [sp, #40]
	str	r5, [sp, #44]
	str	r4, [sp, #4]
	str	r6, [sp, #8]
	str	r3, [sp, #16]
	str	r7, [sp, #20]
	bl	png_safe_execute(PLT)
	mov	r5, r0
	b	.L1628
.L1631:
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1623:
	ldr	r1, .L1647+16
	mov	r0, r4
.LPIC109:
	add	r1, pc
	bl	png_image_error(PLT)
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1626:
	ldr	r1, .L1647+20
	mov	r0, r4
.LPIC108:
	add	r1, pc
	bl	png_image_error(PLT)
	b	.L1642
.L1648:
	.align	2
.L1647:
	.word	.LC56-(.LPIC110+4)
	.word	png_image_read_colormap-(.LPIC112+4)
	.word	png_image_read_colormapped-(.LPIC107+4)
	.word	png_image_read_direct-(.LPIC111+4)
	.word	.LC55-(.LPIC109+4)
	.word	.LC54-(.LPIC108+4)
	.size	png_image_finish_read, .-png_image_finish_read
	.section	.rodata
	.align	2
.LANCHOR1 = . + 0
.LC0:
	.word	1
	.word	1
	.word	1
	.word	2
	.word	2
	.word	4
	.word	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"read beyond end of data\000"
.LC2:
	.ascii	"invalid memory read\000"
.LC3:
	.ascii	"color-map index out of range\000"
	.space	3
.LC4:
	.ascii	"unexpected encoding (internal error)\000"
	.space	3
.LC5:
	.ascii	"bad encoding (internal error)\000"
	.space	2
.LC6:
	.ascii	"a background color must be supplied to remove alpha"
	.ascii	"/transparency\000"
	.space	3
.LC7:
	.ascii	"gray[8] color-map: too few entries\000"
	.space	1
.LC8:
	.ascii	"gray[16] color-map: too few entries\000"
.LC9:
	.ascii	"gray+alpha color-map: too few entries\000"
	.space	2
.LC10:
	.ascii	"gray-alpha color-map: too few entries\000"
	.space	2
.LC11:
	.ascii	"ga-alpha color-map: too few entries\000"
.LC12:
	.ascii	"rgb[ga] color-map: too few entries\000"
	.space	1
.LC13:
	.ascii	"rgb[gray] color-map: too few entries\000"
	.space	3
.LC14:
	.ascii	"rgb+alpha color-map: too few entries\000"
	.space	3
.LC15:
	.ascii	"rgb-alpha color-map: too few entries\000"
	.space	3
.LC16:
	.ascii	"rgb color-map: too few entries\000"
	.space	1
.LC17:
	.ascii	"palette color-map: too few entries\000"
	.space	1
.LC18:
	.ascii	"invalid PNG color type\000"
	.space	1
.LC19:
	.ascii	"bad data option (internal error)\000"
	.space	3
.LC20:
	.ascii	"color map overflow (BAD internal error)\000"
.LC21:
	.ascii	"bad background index (internal error)\000"
	.space	2
.LC22:
	.ascii	"Missing IHDR before IDAT\000"
	.space	3
.LC23:
	.ascii	"Missing PLTE before IDAT\000"
	.space	3
.LC24:
	.ascii	"Too many IDATs found\000"
	.space	3
.LC25:
	.ascii	"png_start_read_image/png_read_update_info: duplicat"
	.ascii	"e call\000"
	.space	2
.LC26:
	.ascii	"Invalid attempt to read row data\000"
	.space	3
.LC27:
	.ascii	"bad adaptive filter value\000"
	.space	2
.LC28:
	.ascii	"sequential row overflow\000"
.LC29:
	.ascii	"internal sequential row size calculation error\000"
	.space	1
.LC30:
	.ascii	"png_read_image: unsupported transformation\000"
	.space	1
.LC31:
	.ascii	"png_image_read: alpha channel lost\000"
	.space	1
.LC32:
	.ascii	"unexpected alpha swap transformation\000"
	.space	3
.LC33:
	.ascii	"png_read_image: invalid transformations\000"
.LC34:
	.ascii	"lost rgb to gray\000"
	.space	3
.LC35:
	.ascii	"unexpected compose\000"
	.space	1
.LC36:
	.ascii	"lost/gained channels\000"
	.space	3
.LC37:
	.ascii	"unexpected 8-bit transformation\000"
.LC38:
	.ascii	"unknown interlace type\000"
	.space	1
.LC39:
	.ascii	"unexpected bit depth\000"
	.space	3
.LC40:
	.ascii	"bad color-map processing (internal error)\000"
	.space	2
.LC41:
	.ascii	"Interlace handling should be turned on when using p"
	.ascii	"ng_read_image\000"
	.space	3
.LC42:
	.ascii	"Read palette index exceeding num_palette\000"
	.space	3
.LC43:
	.ascii	"1.6.10\000"
	.space	1
.LC44:
	.ascii	"png_image_read: out of memory\000"
	.space	2
.LC45:
	.ascii	"png_image_read: opaque pointer not NULL\000"
.LC46:
	.ascii	"Image is too high to process with png_read_png()\000"
	.space	3
.LC47:
	.ascii	"png_image_begin_read_from_stdio: invalid argument\000"
	.space	2
.LC48:
	.ascii	"png_image_begin_read_from_stdio: incorrect PNG_IMAG"
	.ascii	"E_VERSION\000"
	.space	3
.LC49:
	.ascii	"rb\000"
	.space	1
.LC50:
	.ascii	"png_image_begin_read_from_file: invalid argument\000"
	.space	3
.LC51:
	.ascii	"png_image_begin_read_from_file: incorrect PNG_IMAGE"
	.ascii	"_VERSION\000"
.LC52:
	.ascii	"png_image_begin_read_from_memory: invalid argument\000"
	.space	1
.LC53:
	.ascii	"png_image_begin_read_from_memory: incorrect PNG_IMA"
	.ascii	"GE_VERSION\000"
	.space	2
.LC54:
	.ascii	"png_image_finish_read[color-map]: no color-map\000"
	.space	1
.LC55:
	.ascii	"png_image_finish_read: invalid argument\000"
.LC56:
	.ascii	"png_image_finish_read: damaged PNG_IMAGE_VERSION\000"
	.section	.rodata.chunks_to_process.8987,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	chunks_to_process.8987, %object
	.size	chunks_to_process.8987, 30
chunks_to_process.8987:
	.byte	98
	.byte	75
	.byte	71
	.byte	68
	.byte	0
	.byte	99
	.byte	72
	.byte	82
	.byte	77
	.byte	0
	.byte	103
	.byte	65
	.byte	77
	.byte	65
	.byte	0
	.byte	105
	.byte	67
	.byte	67
	.byte	80
	.byte	0
	.byte	115
	.byte	66
	.byte	73
	.byte	84
	.byte	0
	.byte	115
	.byte	82
	.byte	71
	.byte	66
	.byte	0
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
