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
	.file	"listitem_check.c"
	.section	.text._libaroma_listitem_check_draw,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_check_draw
	.thumb
	.thumb_func
	.type	_libaroma_listitem_check_draw, %function
_libaroma_listitem_check_draw:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	ldr	lr, .L149+16
	ldr	r1, [r1, #20]
	fstmfdd	sp!, {d8}
	sub	sp, sp, #124
.LPIC0:
	add	lr, pc
	ldrb	r5, [sp, #168]	@ zero_extendqisi2
	cmp	r1, lr
	str	r5, [sp, #40]
	beq	.L135
.L1:
	add	sp, sp, #124
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L135:
	mov	r7, r0
	mov	r0, r3
	mov	r6, r3
	mov	fp, r2
	ldr	r8, [r4, #12]
	bl	libaroma_color_isdark(PLT)
	and	r3, r5, #16
	ldrh	r5, [r4, #16]
	str	r0, [sp, #64]
	and	r1, r3, #255
	str	r5, [sp, #56]
	cmp	r3, #0
	bne	.L5
	and	r9, r5, #512
	ubfx	r5, r5, #2, #1
	str	r5, [sp, #80]
	uxth	r9, r9
	ldr	r5, [sp, #40]
	lsls	r5, r5, #31
	bmi	.L136
	ldr	r5, [sp, #64]
	movw	r1, #29614
	movw	r2, #35921
	movw	r3, #65535
	cmp	r5, #0
	itt	eq
	moveq	r2, r1
	moveq	r3, #0
	str	r2, [sp, #76]
	str	r3, [sp, #72]
.L9:
	ldr	r0, [r4, #28]
	cbz	r0, .L11
	ldr	r5, [sp, #80]
	cmp	r5, #0
	bne	.L137
.L11:
	ldr	r5, [sp, #80]
	adds	r5, r5, #16
	mov	r0, r5
	str	r5, [sp, #92]
	bl	libaroma_dp(PLT)
	ldr	lr, [sp, #56]
	mov	r5, r0
	ldr	r10, [fp]
	tst	lr, #8192
	ite	eq
	moveq	r0, #88
	movne	r0, #52
	bl	libaroma_dp(PLT)
	rsb	r10, r0, r10
	movs	r0, #16
	bl	libaroma_dp(PLT)
	str	r0, [sp, #60]
	cmp	r9, #0
	ite	eq
	moveq	r0, #40
	movne	r0, #24
	bl	libaroma_dp(PLT)
	ldr	r3, [r8, #12]
	str	r0, [sp, #88]
	cmp	r3, #0
	beq	.L17
	add	r5, r5, r0
.L66:
	movs	r0, #56
	bl	libaroma_dp(PLT)
	rsb	r10, r0, r10
	movs	r0, #56
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #60]
	add	r1, r1, r0
	str	r1, [sp, #60]
.L67:
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r9, r0
	ldr	r0, [r8, #4]
	cmp	r0, #0
	beq	.L80
	movs	r2, #137
	movs	r3, #64
	ldr	r1, [sp, #72]
	movt	r3, 145
	str	r2, [sp]
	mov	r2, r10
	bl	libaroma_text(PLT)
	str	r0, [sp, #84]
	bl	libaroma_text_height(PLT)
	add	r9, r9, r0
	str	r0, [sp, #72]
.L18:
	ldr	r0, [r8, #8]
	cmp	r0, #0
	beq	.L81
	mov	lr, #143
	movs	r3, #48
	mov	r2, r10
	ldr	r1, [sp, #76]
	movt	r3, 145
	str	lr, [sp]
	mov	lr, #4
	str	lr, [sp, #96]
	bl	libaroma_text(PLT)
	str	r0, [sp, #76]
	bl	libaroma_text_height(PLT)
	mov	r10, r0
	movs	r0, #3
	bl	libaroma_font_size_px(PLT)
	fmsr	s13, r10	@ int
	fmsr	s15, r0	@ int
	fsitod	d16, s13
	fsitod	d18, s15
	fldd	d17, .L149
	ldr	r0, [sp, #72]
	fnmacd	d16, d18, d17
	ftosizd	s13, d16
	fmrs	r10, s13	@ int
	add	r9, r9, r10
	add	r0, r0, r10
	str	r0, [sp, #100]
.L19:
	ldr	r0, [sp, #92]
	bl	libaroma_dp(PLT)
	ldr	r3, [r8, #12]
	add	r9, r9, r0
	cmp	r9, r5
	it	lt
	movlt	r9, r5
	asr	r10, r9, #1
	cbz	r3, .L21
	ldr	r5, [sp, #56]
	movs	r0, #16
	asr	r10, r9, #1
	and	r3, r5, #3072
	cmp	r3, #1024
	beq	.L22
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #88]
	mov	lr, #0
	ldr	r5, [r8, #12]
	mov	ip, #1
	str	lr, [sp]
	mov	r2, r0
	str	lr, [sp, #4]
	mov	r0, fp
	sub	r3, r10, r1, asr #1
	ldr	r1, [r5]
	str	r1, [sp, #8]
	ldr	r1, [r5, #4]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	mov	lr, #255
	str	r1, [sp, #12]
	mov	r1, r5
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L21:
	ldr	r5, [sp, #96]
	ldr	r0, [sp, #80]
	add	r0, r0, r5
	bl	libaroma_dp(PLT)
	ldr	r5, [sp, #100]
	add	r0, r0, r5, asr #1
	ldr	r5, [sp, #84]
	rsb	r10, r0, r10
	cbz	r5, .L23
	mov	lr, #0
	mov	r1, r5
	ldr	r5, [sp, #72]
	mov	r3, r10
	mov	r0, fp
	str	lr, [sp]
	str	lr, [sp, #4]
	ldr	r2, [sp, #60]
	add	r10, r10, r5
	str	lr, [sp, #8]
	str	lr, [sp, #12]
	str	lr, [sp, #16]
	str	lr, [sp, #20]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	str	lr, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	ldr	r0, [sp, #84]
	bl	libaroma_text_free(PLT)
.L23:
	ldr	r5, [sp, #76]
	cbz	r5, .L24
	mov	lr, #0
	ldr	r2, [sp, #60]
	mov	r3, r10
	str	lr, [sp]
	str	lr, [sp, #4]
	mov	r0, fp
	str	lr, [sp, #8]
	mov	r1, r5
	str	lr, [sp, #12]
	str	lr, [sp, #16]
	str	lr, [sp, #20]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	str	lr, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	ldr	r0, [sp, #76]
	bl	libaroma_text_free(PLT)
.L24:
	ldr	r3, [r8, #16]
	cmp	r9, r3
	beq	.L5
	str	r9, [r8, #16]
	mov	r2, r9
	mov	r0, r7
	mov	r1, r4
	bl	libaroma_ctl_list_item_setheight(PLT)
.L5:
	ldr	r5, [sp, #40]
	lsls	r1, r5, #29
	bmi	.L1
	ldr	lr, [sp, #56]
	ldr	r3, [r4, #24]
	and	r5, lr, #4096
	uxth	r5, r5
	cbz	r3, .L29
	ldrb	r2, [r8, #1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L138
.L29:
	fconsts	s16, #112
.L28:
	movs	r0, #36
	ldr	r9, [fp]
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #56]
	lsls	r2, r1, #18
	bmi	.L35
	rsb	r10, r0, r9
.L36:
	ldr	r3, [fp, #4]
	asrs	r3, r3, #1
	str	r3, [sp, #60]
	cmp	r5, #0
	bne	.L139
	ldr	r1, [sp, #56]
	ldr	r2, [sp, #64]
	ubfx	r1, r1, #14, #1
	str	r1, [sp, #56]
	cmp	r2, #0
	beq	.L43
	mov	r1, r5
	mov	r0, r7
	bl	libaroma_colorget(PLT)
	ldrh	r9, [r0, #6]
.L44:
	movs	r1, #0
	mov	r0, r7
	bl	libaroma_colorget(PLT)
	ldrh	r0, [r0, #18]
	str	r0, [sp, #64]
	movs	r0, #18
	bl	libaroma_dp(PLT)
	movs	r3, #0
	mov	r5, r0
	str	r3, [sp, #112]
	ldrb	r3, [r8]	@ zero_extendqisi2
	ldr	r2, [r4, #24]
	cmp	r3, #0
	bne	.L45
	cmp	r2, #0
	beq	.L140
.L46:
	ldr	r2, [r2, #164]
	cmp	r2, #0
	beq	.L48
	movs	r4, #0
	str	r2, [sp, #112]
.L49:
	fconsts	s15, #112
	fcmpes	s16, s15
	fmstat
	bmi	.L74
	cmp	r3, #0
	bne	.L141
.L62:
	ldr	r1, [sp, #56]
	asrs	r7, r5, #1
	ldr	r0, [sp, #60]
	rsb	r9, r7, r10
	subs	r7, r0, r7
	cmp	r1, #0
	beq	.L142
	mov	r0, r5
	movw	r8, #4369
	bl	libaroma_dp(PLT)
	ldr	r2, [sp, #64]
	mov	lr, #255
	mov	ip, #0
	mov	r3, r5
	str	r0, [sp, #12]
	mov	r1, r9
	str	r2, [sp, #4]
	mov	r2, r7
	ldr	r7, [sp, #64]
	mov	r0, fp
	str	r5, [sp]
	str	r8, [sp, #16]
	str	r7, [sp, #8]
	str	lr, [sp, #20]
	str	lr, [sp, #24]
	str	ip, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	movs	r0, #14
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #60]
	asr	r8, r0, #1
	mov	r5, r0
	rsb	r10, r8, r10
	rsb	r8, r8, r7
.L73:
	bl	libaroma_dp(PLT)
	movs	r7, #255
	movw	ip, #4369
	mov	lr, #0
	str	r0, [sp, #12]
	str	r5, [sp]
	mov	r0, fp
	str	r6, [sp, #4]
	mov	r1, r10
	str	r6, [sp, #8]
	mov	r2, r8
	mov	r3, r5
	str	ip, [sp, #16]
	str	r7, [sp, #20]
	str	r7, [sp, #24]
	str	lr, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
.L61:
	cmp	r4, #0
	beq	.L1
	add	r0, sp, #112
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L1
.L138:
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	cmp	r2, #2
	beq	.L31
	ldr	r2, [r3, #152]
	add	r3, r3, r2, lsl #2
	ldr	r2, [r3, #80]
	cmp	r2, #0
	beq	.L29
	flds	s15, [r3, #56]
	fconsts	s14, #80
	fcmpes	s15, s14
	fmstat
	bmi	.L31
	fconsts	s14, #104
	fcmpes	s15, s14
	fmstat
	bgt	.L29
	fcvtds	d18, s15
	fconstd	d16, #208
	fconstd	d17, #112
	faddd	d16, d18, d16
	faddd	d16, d16, d16
	fcmpd	d16, d17
	fmstat
	it	pl
	fconstspl	s4, #112
	bpl	.L32
	fcmpezd	d16
	fmstat
	ite	gt
	fcvtsdgt	s4, d16
	fldsle	s4, .L149+24
.L32:
	flds	s0, .L149+8
	flds	s1, .L149+24
	flds	s2, .L149+12
	fconsts	s3, #112
	bl	libaroma_cubic_bezier(PLT)
	fconsts	s15, #112
	fcmpezs	s0
	fmstat
	fcmpes	s0, s15
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	fmstat
	it	gt
	orrgt	r3, r3, #1
	fcpys	s16, s0
	cmp	r3, #0
	beq	.L31
	fcmps	s0, s15
	fmstat
	bgt	.L29
	b	.L28
.L150:
	.align	3
.L149:
	.word	-1840700270
	.word	1070745892
	.word	1053699762
	.word	1046938544
	.word	.LANCHOR0-(.LPIC0+4)
	.word	1132396544
	.word	0
.L136:
	cmp	r0, #0
	beq	.L143
	ldr	r3, [fp, #4]
	movw	r5, #35921
	movs	r0, #1
	ldr	r10, [fp]
	str	r5, [sp, #76]
	movw	r5, #65535
	str	r1, [sp, #48]
	str	r3, [sp, #52]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #52]
	ldr	r1, [sp, #48]
	subs	r3, r3, r0
	movw	r0, #16936
	str	r0, [sp, #4]
	movs	r0, #255
	str	r3, [sp]
	mov	r2, r1
	str	r0, [sp, #8]
	mov	r3, r10
	mov	r0, fp
	bl	libaroma_draw_rect(PLT)
	str	r5, [sp, #72]
	b	.L9
.L45:
	cmp	r2, #0
	bne	.L46
.L48:
	movs	r7, #0
	mov	r1, r5
	mov	r3, r7
	movs	r2, #1
	mov	r0, r5
	str	r7, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	mov	r1, r7
	str	r0, [sp, #112]
	mul	r2, r5, r5
	ldr	r0, [r0, #20]
	bl	memset(PLT)
	ldr	r0, [sp, #56]
	cmp	r0, #0
	beq	.L144
	asrs	r3, r5, #1
	mov	ip, #255
	mov	r2, r7
	str	ip, [sp, #20]
	mov	r1, r7
	str	r3, [sp, #12]
	movs	r7, #2
	movw	r3, #4369
	str	ip, [sp, #24]
	str	r3, [sp, #16]
	mov	r3, r5
	str	r7, [sp, #28]
	ldr	r0, [sp, #112]
	str	r5, [sp]
	str	r9, [sp, #4]
	str	r9, [sp, #8]
	str	ip, [sp, #44]
	bl	libaroma_gradient_ex1(PLT)
	movs	r0, #4
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #112]
	subs	r0, r5, r0
	str	r0, [sp, #68]
	mov	r0, r7
	str	r3, [sp, #52]
	bl	libaroma_dp(PLT)
	mov	r1, r0
	mov	r0, r7
	str	r1, [sp, #48]
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #68]
	mov	r2, r0
	ldr	r3, [sp, #52]
	ldr	ip, [sp, #44]
	str	r7, [sp]
	asr	lr, r7, #1
	mov	r0, r3
	movw	r3, #4369
	str	ip, [sp, #20]
	str	r3, [sp, #16]
	mov	r3, r7
	movs	r7, #10
	str	ip, [sp, #24]
	str	lr, [sp, #12]
	ldr	r1, [sp, #48]
	str	r7, [sp, #28]
	str	r6, [sp, #4]
	str	r6, [sp, #8]
	bl	libaroma_gradient_ex1(PLT)
	movs	r0, #4
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #68]
	subs	r3, r7, r0
	movs	r0, #4
	ldr	r7, [sp, #112]
	str	r3, [sp, #52]
	bl	libaroma_dp(PLT)
	mov	r1, r0
	movs	r0, #4
	str	r1, [sp, #48]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #52]
	mov	r2, r0
	ldr	ip, [sp, #44]
	mov	r0, r7
	movw	r7, #4369
	ldr	r1, [sp, #48]
	str	r7, [sp, #16]
	movs	r7, #10
	asr	lr, r3, #1
	str	r3, [sp]
	str	ip, [sp, #20]
	str	ip, [sp, #24]
	str	r7, [sp, #28]
	str	r9, [sp, #4]
	str	r9, [sp, #8]
	str	lr, [sp, #12]
	bl	libaroma_gradient_ex1(PLT)
.L50:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L145
	ldr	r2, [sp, #112]
	movs	r4, #0
	str	r2, [r3, #164]
	ldrb	r3, [r8]	@ zero_extendqisi2
	b	.L49
.L43:
	mov	r1, r2
	mov	r0, r7
	bl	libaroma_colorget(PLT)
	ldrh	r9, [r0]
	b	.L44
.L139:
	mov	r0, r7
	movs	r1, #0
	bl	libaroma_colorget(PLT)
	movs	r1, #0
	ldrh	r5, [r0]
	mov	r0, r7
	movw	r7, #61309
	bl	libaroma_colorget(PLT)
	ldrb	r3, [r8]	@ zero_extendqisi2
	movw	r1, #46486
	ldrh	r0, [r0, #6]
	cbz	r3, .L38
	mov	r1, r0
	mov	r7, r5
	movw	r0, #46486
	movw	r5, #61309
.L38:
	flds	s15, .L149+20
	fmuls	s15, s16, s15
	ftouizs	s15, s15
	fmrs	r6, s15	@ int
	uxtb	r6, r6
	mov	r2, r6
	bl	libaroma_alpha(PLT)
	mov	r1, r7
	mov	r2, r6
	str	r0, [sp, #56]
	mov	r0, r5
	bl	libaroma_alpha(PLT)
	mov	r9, r0
	movs	r0, #34
	bl	libaroma_dp(PLT)
	mov	r7, r0
	movs	r0, #14
	bl	libaroma_dp(PLT)
	ldrb	r2, [r8]	@ zero_extendqisi2
	mov	r3, r0
	cbnz	r2, .L39
	fconsts	s15, #112
	fsubs	s16, s15, s16
.L39:
	sub	r1, r10, r7, asr #1
	movs	r0, #20
	str	r3, [sp, #52]
	movs	r6, #0
	str	r1, [sp, #48]
	bl	libaroma_dp(PLT)
	subs	r2, r7, r0
	ldr	lr, [sp, #60]
	asr	r8, r0, #1
	mov	r5, r0
	fmsr	s0, r2	@ int
	rsb	r10, r8, lr
	fsitos	s0, s0
	fmuls	s0, s0, s16
	bl	roundf(PLT)
	ldr	r1, [sp, #48]
	movw	ip, #4369
	ldr	r3, [sp, #52]
	mov	lr, #255
	fcvtds	d0, s0
	ldr	r0, [sp, #60]
	fmsr	s13, r1	@ int
	fsitod	d16, s13
	asrs	r2, r3, #1
	str	r3, [sp]
	ldr	r3, [sp, #56]
	str	ip, [sp, #16]
	faddd	d16, d0, d16
	str	r3, [sp, #4]
	mov	r3, r7
	ldr	r7, [sp, #56]
	str	r2, [sp, #12]
	subs	r2, r0, r2
	str	lr, [sp, #20]
	mov	r0, fp
	str	lr, [sp, #24]
	str	r7, [sp, #8]
	str	r6, [sp, #28]
	ftosizd	s16, d16
	bl	libaroma_gradient_ex1(PLT)
	movs	r0, #1
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #24]
	mov	ip, r0
	cmp	r3, #0
	beq	.L40
	ldr	r7, [r3, #164]
	cmp	r7, #0
	beq	.L40
	str	r6, [sp]
	mov	r1, r7
	str	r6, [sp, #4]
	mov	lr, #3
	ldr	r3, [r7]
	movs	r4, #48
	fmrs	r0, s16	@ int
	rsb	r2, ip, r0
	mov	r0, fp
	str	r3, [sp, #8]
	mov	r3, r10
	ldr	r7, [r7, #4]
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	str	r7, [sp, #12]
	str	lr, [sp, #16]
	str	r4, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L41:
	movs	r4, #255
	movw	r7, #4369
	movs	r6, #0
	stmia	sp, {r5, r9}
	mov	r0, fp
	str	r9, [sp, #8]
	fmrs	r1, s16	@ int
	mov	r2, r10
	str	r8, [sp, #12]
	mov	r3, r5
	str	r7, [sp, #16]
	str	r4, [sp, #20]
	str	r4, [sp, #24]
	str	r6, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	b	.L1
.L35:
	movs	r0, #36
	bl	libaroma_dp(PLT)
	mov	r10, r0
	b	.L36
.L80:
	str	r0, [sp, #72]
	str	r0, [sp, #84]
	b	.L18
.L81:
	ldr	r1, [sp, #72]
	movs	r2, #2
	str	r0, [sp, #76]
	str	r2, [sp, #96]
	str	r1, [sp, #100]
	b	.L19
.L31:
	flds	s16, .L149+24
	b	.L28
.L143:
	ldr	r3, [fp, #4]
	movw	r5, #29614
	movs	r0, #1
	ldr	r10, [fp]
	str	r5, [sp, #76]
	str	r3, [sp, #52]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #52]
	movs	r1, #255
	str	r1, [sp, #8]
	movw	r2, #48599
	ldr	r1, [sp, #64]
	subs	r0, r3, r0
	str	r2, [sp, #4]
	str	r0, [sp]
	mov	r3, r10
	mov	r0, fp
	mov	r2, r1
	bl	libaroma_draw_rect(PLT)
	ldr	r5, [sp, #64]
	str	r5, [sp, #72]
	b	.L9
.L137:
	bl	libaroma_listitem_nonitem(PLT)
	cmp	r0, #0
	bne	.L11
	ldr	r5, [sp, #56]
	and	r3, r5, #8
	uxth	r3, r3
	mov	r5, r3
	cmp	r3, #0
	bne	.L146
.L13:
	movs	r0, #1
	ldr	r10, [fp, #4]
	bl	libaroma_dp(PLT)
	ldr	r3, [fp]
	rsb	r10, r0, r10
	movs	r0, #1
	subs	r1, r3, r5
	str	r1, [sp, #48]
	bl	libaroma_dp(PLT)
	ldr	r2, [sp, #64]
	movw	r3, #21162
	ldr	r1, [sp, #48]
	movw	lr, #57083
	mov	ip, #255
	str	r0, [sp]
	cmp	r2, #0
	it	ne
	movne	lr, r3
	mov	r0, fp
	mov	r3, r1
	mov	r2, r10
	mov	r1, r5
	str	lr, [sp, #4]
	str	ip, [sp, #8]
	bl	libaroma_draw_rect(PLT)
	b	.L11
.L22:
	bl	libaroma_dp(PLT)
	ldr	r5, [sp, #88]
	movs	r1, #0
	ldr	lr, [r8, #12]
	mov	r2, r0
	str	r1, [sp, #8]
	mov	r0, fp
	str	r1, [sp, #12]
	str	r5, [sp]
	sub	r3, r10, r5, asr #1
	str	r5, [sp, #4]
	mov	r1, lr
	ldr	r5, [lr]
	str	r5, [sp, #16]
	ldr	r5, [lr, #4]
	str	r5, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	b	.L21
.L87:
	mov	r4, r3
.L74:
	fconsts	s15, #112
	fmsr	s13, r5	@ int
	fsubs	s14, s15, s16
	fsitos	s15, s13
	cmp	r3, #0
	beq	.L147
	fmuls	s13, s15, s16
	fcpys	s16, s14
	ftosizs	s13, s13
	fmrs	r9, s13	@ int
.L72:
	fmuls	s15, s16, s15
	ftosizs	s15, s15
	fmrs	r8, s15	@ int
	cmp	r8, #0
	ble	.L57
	ldr	r7, [sp, #56]
	asr	r2, r8, #1
	rsb	r1, r2, r10
	cmp	r7, #0
	ite	ne
	movne	r0, r8
	moveq	r0, #2
	ldr	r7, [sp, #60]
	str	r1, [sp, #48]
	subs	r2, r7, r2
	str	r2, [sp, #52]
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #64]
	mov	r3, r8
	ldr	r1, [sp, #48]
	str	r0, [sp, #12]
	mov	r0, fp
	str	r7, [sp, #4]
	str	r7, [sp, #8]
	movw	r7, #4369
	str	r7, [sp, #16]
	movs	r7, #255
	str	r7, [sp, #20]
	str	r7, [sp, #24]
	movs	r7, #0
	ldr	r2, [sp, #52]
	str	r8, [sp]
	str	r7, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	movs	r0, #4
	bl	libaroma_dp(PLT)
	rsb	r8, r0, r8
	cmp	r8, r7
	ble	.L57
	ldr	r7, [sp, #56]
	asr	r3, r8, #1
	rsb	r1, r3, r10
	cmp	r7, #0
	ite	ne
	movne	r0, r8
	moveq	r0, #1
	ldr	r7, [sp, #60]
	str	r1, [sp, #48]
	subs	r2, r7, r3
	movs	r7, #255
	str	r2, [sp, #52]
	bl	libaroma_dp(PLT)
	str	r6, [sp, #4]
	mov	r3, r8
	str	r6, [sp, #8]
	movw	r6, #4369
	str	r6, [sp, #16]
	movs	r6, #0
	str	r0, [sp, #12]
	mov	r0, fp
	ldr	r1, [sp, #48]
	ldr	r2, [sp, #52]
	str	r8, [sp]
	str	r7, [sp, #20]
	str	r7, [sp, #24]
	str	r6, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
.L57:
	cmp	r9, #0
	ble	.L61
	ldr	r7, [sp, #60]
	asr	r3, r9, #1
	movs	r6, #0
	ldr	r1, [sp, #112]
	rsb	r2, r3, r10
	str	r9, [sp]
	str	r9, [sp, #4]
	subs	r3, r7, r3
	str	r5, [sp, #16]
	mov	r0, fp
	str	r5, [sp, #20]
	str	r6, [sp, #8]
	str	r6, [sp, #12]
	bl	libaroma_draw_scale_nearest(PLT)
	b	.L61
.L142:
	movs	r0, #2
	bl	libaroma_dp(PLT)
	mov	r2, r7
	mov	r3, r5
	ldr	r7, [sp, #64]
	mov	lr, #255
	str	r5, [sp]
	movw	ip, #4369
	ldr	r5, [sp, #56]
	mov	r1, r9
	str	r0, [sp, #12]
	mov	r0, fp
	str	r7, [sp, #4]
	str	r7, [sp, #8]
	str	r5, [sp, #28]
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	str	lr, [sp, #24]
	bl	libaroma_gradient_ex1(PLT)
	movs	r0, #14
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #60]
	asr	r8, r0, #1
	mov	r5, r0
	rsb	r10, r8, r10
	movs	r0, #1
	rsb	r8, r8, r7
	b	.L73
.L141:
	ldr	lr, [sp, #112]
	asrs	r3, r5, #1
	ldr	r5, [sp, #60]
	movs	r7, #0
	str	r7, [sp]
	rsb	r2, r3, r10
	str	r7, [sp, #4]
	movs	r6, #1
	subs	r3, r5, r3
	ldr	r5, [lr]
	mov	ip, #255
	mov	r0, fp
	mov	r1, lr
	str	r5, [sp, #8]
	ldr	r5, [lr, #4]
	str	r7, [sp, #24]
	str	r7, [sp, #28]
	str	r5, [sp, #12]
	str	r6, [sp, #16]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L61
.L17:
	ldrh	r3, [r4, #16]
	lsls	r3, r3, #23
	bmi	.L66
	b	.L67
.L40:
	movs	r6, #0
	mov	r1, r5
	mov	r3, r6
	str	r6, [sp]
	movs	r2, #1
	mov	r0, r5
	str	ip, [sp, #44]
	movs	r7, #255
	bl	libaroma_canvas_new_ex(PLT)
	mov	r1, r6
	mov	r2, r6
	str	r0, [sp, #104]
	bl	libaroma_canvas_setcolor(PLT)
	movw	r3, #4369
	mov	r1, r6
	mov	r2, r6
	str	r6, [sp, #4]
	str	r6, [sp, #8]
	str	r6, [sp, #28]
	str	r3, [sp, #16]
	mov	r3, r5
	str	r7, [sp, #20]
	str	r7, [sp, #24]
	ldr	r0, [sp, #104]
	str	r5, [sp]
	str	r8, [sp, #12]
	bl	libaroma_gradient_ex1(PLT)
	ldr	ip, [sp, #44]
	mov	r3, r6
	movs	r2, #1
	ldr	r0, [sp, #104]
	fmrs	r7, s16	@ int
	mov	r1, ip
	bl	libaroma_blur_ex(PLT)
	mov	r1, r6
	str	r0, [sp, #112]
	add	r0, sp, #104
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r3, [sp, #112]
	mov	lr, #3
	ldr	ip, [sp, #44]
	mov	r0, fp
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r1, r3
	rsb	r2, ip, r7
	ldr	r7, [r3]
	str	r7, [sp, #8]
	ldr	r7, [r3, #4]
	mov	r3, r10
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	movs	r6, #48
	str	r7, [sp, #12]
	str	lr, [sp, #16]
	str	r6, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r1, [r4, #24]
	cmp	r1, #0
	beq	.L148
	ldr	r3, [sp, #112]
	str	r3, [r1, #164]
	b	.L41
.L147:
	fmuls	s14, s15, s14
	ftosizs	s14, s14
	fmrs	r9, s14	@ int
	b	.L72
.L144:
	ldr	r2, [sp, #112]
	movs	r0, #2
	movs	r7, #255
	str	r2, [sp, #52]
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #56]
	mov	ip, #2
	ldr	r2, [sp, #52]
	movw	r3, #4369
	str	ip, [sp, #28]
	str	r0, [sp, #12]
	str	r9, [sp, #4]
	mov	r0, r2
	str	r9, [sp, #8]
	mov	r2, r1
	str	r3, [sp, #16]
	mov	r3, r5
	str	r7, [sp, #20]
	str	r7, [sp, #24]
	str	r5, [sp]
	str	ip, [sp, #44]
	bl	libaroma_gradient_ex1(PLT)
	add	r3, r5, r5, lsl #1
	lsl	r9, r3, #2
	add	r3, r3, r3, lsl #3
	asr	lr, r9, #6
	asrs	r3, r3, #6
	add	r9, r9, r5
	fmsr	s0, lr	@ int
	asr	r9, r9, #6
	fmsr	s1, r3	@ int
	fsitos	s0, s0
	fsitos	s1, s1
	bl	libaroma_path(PLT)
	add	r3, r5, r5, lsl #2
	mov	r7, r0
	add	r2, r3, r3, lsl #2
	sbfx	r3, r3, #3, #26
	asrs	r2, r2, #6
	fmsr	s1, r3	@ int
	fsitos	s1, s1
	fmsr	s13, r2	@ int
	fsitos	s17, s13
	fcpys	s0, s17
	bl	libaroma_path_add(PLT)
	movs	r3, #52
	fmsr	s1, r9	@ int
	mul	r3, r3, r5
	mov	r0, r7
	fsitos	s1, s1
	asrs	r3, r3, #6
	fmsr	s0, r3	@ int
	fsitos	s0, s0
	bl	libaroma_path_add(PLT)
	lsls	r2, r5, #3
	mov	r0, r7
	rsb	r9, r5, r2
	add	r2, r2, r5
	add	r3, r5, r9, lsl #3
	sbfx	r2, r2, #5, #26
	asr	r9, r9, #6
	asrs	r3, r3, #6
	fmsr	s1, r2	@ int
	fsitos	s1, s1
	fmsr	s0, r3	@ int
	fsitos	s0, s0
	bl	libaroma_path_add(PLT)
	movs	r3, #50
	mov	r0, r7
	mul	r3, r3, r5
	fcpys	s0, s17
	asrs	r3, r3, #6
	fmsr	s1, r3	@ int
	fsitos	s1, s1
	bl	libaroma_path_add(PLT)
	sbfx	r3, r5, #1, #26
	fmsr	s0, r9	@ int
	mov	r0, r7
	fmsr	s1, r3	@ int
	fsitos	s0, s0
	fsitos	s1, s1
	bl	libaroma_path_add(PLT)
	ldr	ip, [sp, #44]
	mov	r1, r7
	ldr	r2, [sp, #56]
	ldr	r0, [sp, #112]
	str	ip, [sp]
	mov	r3, r2
	fconsts	s0, #96
	bl	libaroma_path_draw(PLT)
	mov	r0, r7
	bl	libaroma_path_free(PLT)
	b	.L50
.L145:
	ldrb	r3, [r8]	@ zero_extendqisi2
	movs	r4, #1
	b	.L49
.L146:
	movs	r0, #72
	bl	libaroma_dp(PLT)
	mov	r5, r0
	b	.L13
.L148:
	add	r0, sp, #112
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L41
.L140:
	fconsts	s15, #112
	fcmpes	s16, s15
	fmstat
	bmi	.L87
	mov	r4, r2
	b	.L62
	.size	_libaroma_listitem_check_draw, .-_libaroma_listitem_check_draw
	.section	.text.libaroma_listitem_set_selected,"ax",%progbits
	.align	2
	.global	libaroma_listitem_set_selected
	.thumb
	.thumb_func
	.type	libaroma_listitem_set_selected, %function
libaroma_listitem_set_selected:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r1
	ldr	r1, .L170
	sub	sp, sp, #12
	ldr	r3, [r4, #20]
.LPIC1:
	add	r1, pc
	cmp	r3, r1
	beq	.L152
.L157:
	movs	r0, #0
.L168:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L152:
	cmp	r2, #9
	mov	r5, r2
	it	hi
	subhi	r5, r2, #10
	mov	r6, r0
	it	hi
	uxtbhi	r5, r5
	ldr	r7, [r4, #12]
	ite	hi
	movhi	r8, #1
	movls	r8, #0
	cbnz	r5, .L155
	ldr	ip, [r7, #20]
	cmp	ip, #0
	beq	.L156
	ldr	lr, [r7, #24]
	mov	r1, r4
	ldr	r2, [r4, #8]
	ldrb	r3, [r7]	@ zero_extendqisi2
	str	r5, [sp, #4]
	str	lr, [sp]
	blx	ip
	cmp	r0, #0
	beq	.L157
.L156:
	movs	r3, #1
	strb	r5, [r7]
	strb	r3, [r7, #1]
.L158:
	cmp	r8, #0
	beq	.L160
	movs	r0, #1
	b	.L168
.L155:
	ldr	r5, [r7, #20]
	cbz	r5, .L159
	ldr	lr, [r7, #24]
	mov	r9, #1
	ldr	r2, [r4, #8]
	mov	r1, r4
	ldrb	r3, [r7]	@ zero_extendqisi2
	str	r9, [sp, #4]
	str	lr, [sp]
	blx	r5
	cmp	r0, #0
	beq	.L157
	strb	r9, [r7]
	strb	r9, [r7, #1]
	b	.L158
.L160:
	mov	r0, r6
	mov	r1, r4
	bl	_libaroma_ctl_list_dodraw_item(PLT)
	movs	r0, #1
	b	.L168
.L159:
	movs	r3, #1
	strb	r3, [r7]
	strb	r3, [r7, #1]
	b	.L158
.L171:
	.align	2
.L170:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	libaroma_listitem_set_selected, .-libaroma_listitem_set_selected
	.section	.text._libaroma_listitem_check_message,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_check_message
	.thumb
	.thumb_func
	.type	_libaroma_listitem_check_message, %function
_libaroma_listitem_check_message:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r1
	ldr	r5, .L187
	sub	sp, sp, #12
	ldr	r1, [r1, #20]
.LPIC2:
	add	r5, pc
	cmp	r1, r5
	beq	.L186
.L181:
	movs	r0, #0
.L173:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L186:
	subs	r2, r2, #1
	mov	r6, r0
	ldr	r5, [r4, #12]
	cmp	r2, #4
	bhi	.L181
	adr	r0, .L176
	ldr	r1, [r0, r2, lsl #2]
	add	r0, r0, r1
	bx	r0
	.p2align 2
.L176:
	.word	.L175+1-.L176
	.word	.L177+1-.L176
	.word	.L181+1-.L176
	.word	.L178+1-.L176
	.word	.L179+1-.L176
.L179:
	movs	r7, #0
	ldrb	r1, [r5]	@ zero_extendqisi2
	strb	r7, [r5, #1]
	mov	r3, r7
	ldrh	r0, [r6]
	ldr	r2, [r4, #8]
	str	r4, [sp]
	orr	r0, r0, #33554432
	bl	libaroma_window_post_command_ex(PLT)
	mov	r0, r7
	b	.L173
.L175:
	movs	r3, #0
	movs	r0, #8
	strb	r3, [r5, #1]
	b	.L173
.L177:
	cmp	r3, #16
	mov	r7, #0
	strb	r7, [r5, #1]
	beq	.L181
	ldrb	r2, [r5]	@ zero_extendqisi2
	mov	r1, r4
	mov	r0, r6
	cmp	r2, r7
	ite	eq
	moveq	r2, #11
	movne	r2, #10
	bl	libaroma_listitem_set_selected(PLT)
	ldrh	r0, [r6]
	mov	r3, r7
	ldrb	r1, [r5]	@ zero_extendqisi2
	ldr	r2, [r4, #8]
	orr	r0, r0, #16777216
	str	r4, [sp]
	bl	libaroma_window_post_command_ex(PLT)
	mov	r0, r7
	b	.L173
.L178:
	movs	r0, #0
	strb	r0, [r5, #1]
	b	.L173
.L188:
	.align	2
.L187:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_listitem_check_message, .-_libaroma_listitem_check_message
	.section	.text._libaroma_listitem_check_release_internal,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_check_release_internal
	.thumb
	.thumb_func
	.type	_libaroma_listitem_check_release_internal, %function
_libaroma_listitem_check_release_internal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0, #4]
	mov	r5, r1
	cbz	r0, .L190
	bl	free(PLT)
.L190:
	ldr	r0, [r4, #8]
	cbz	r0, .L191
	bl	free(PLT)
.L191:
	ldr	r3, [r4, #12]
	cbz	r3, .L192
	and	r5, r5, #3072
	cmp	r5, #1024
	beq	.L192
	add	r0, r4, #12
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L192:
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	free(PLT)
	.size	_libaroma_listitem_check_release_internal, .-_libaroma_listitem_check_release_internal
	.section	.text._libaroma_listitem_check_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_check_destroy
	.thumb
	.thumb_func
	.type	_libaroma_listitem_check_destroy, %function
_libaroma_listitem_check_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L214
	ldr	r3, [r1, #20]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r1
.LPIC3:
	add	r2, pc
	sub	sp, sp, #12
	cmp	r3, r2
	beq	.L213
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L213:
	ldr	r5, [r1, #12]
	ldr	r6, [r5, #20]
	cbz	r6, .L208
	ldr	r7, [r5, #24]
	mov	lr, #2
	ldr	r2, [r1, #8]
	ldrb	r3, [r5]	@ zero_extendqisi2
	stmia	sp, {r7, lr}
	blx	r6
.L208:
	mov	r0, r5
	ldrh	r1, [r4, #16]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	_libaroma_listitem_check_release_internal(PLT)
.L215:
	.align	2
.L214:
	.word	.LANCHOR0-(.LPIC3+4)
	.size	_libaroma_listitem_check_destroy, .-_libaroma_listitem_check_destroy
	.section	.text.libaroma_listitem_check_set_cb,"ax",%progbits
	.align	2
	.global	libaroma_listitem_check_set_cb
	.thumb
	.thumb_func
	.type	libaroma_listitem_check_set_cb, %function
libaroma_listitem_check_set_cb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	ldr	r6, .L226
	ldr	r5, [r1, #20]
.LPIC4:
	add	r6, pc
	cmp	r5, r6
	it	ne
	movne	r0, #0
	beq	.L225
.L217:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L225:
	ldr	r5, [r1, #12]
	mov	r7, r2
	mov	r8, r3
	ldr	r6, [r5, #20]
	cbz	r6, .L218
	ldr	r4, [r5, #24]
	mov	lr, #2
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldr	r2, [r1, #8]
	stmia	sp, {r4, lr}
	blx	r6
	movs	r3, #0
	str	r3, [r5, #20]
	str	r3, [r5, #24]
.L218:
	cbz	r7, .L220
	movs	r0, #1
	str	r7, [r5, #20]
	str	r8, [r5, #24]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L220:
	movs	r0, #1
	b	.L217
.L227:
	.align	2
.L226:
	.word	.LANCHOR0-(.LPIC4+4)
	.size	libaroma_listitem_check_set_cb, .-libaroma_listitem_check_set_cb
	.section	.text.libaroma_listitem_check,"ax",%progbits
	.align	2
	.global	libaroma_listitem_check
	.thumb
	.thumb_func
	.type	libaroma_listitem_check, %function
libaroma_listitem_check:
	@ args = 16, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	mov	r9, r1
	str	r3, [sp, #24]
	mov	r6, r0
	ldrh	r5, [sp, #80]
	bl	libaroma_ctl_list_is_valid(PLT)
	cmp	r0, #0
	beq	.L231
	movs	r0, #28
	movs	r1, #1
	bl	calloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L231
	ldr	r2, [sp, #76]
	movs	r3, #0
	strb	r3, [r0]
	ubfx	fp, r5, #2, #1
	str	r3, [r0, #12]
	cmp	r2, #0
	beq	.L277
	lsls	r1, r5, #18
	bpl	.L234
	bic	r5, r5, #8192
	lsls	r5, r5, #16
	lsrs	r5, r5, #16
.L234:
	tst	r5, #512
	ite	ne
	movne	r0, #24
	moveq	r0, #40
	bl	libaroma_dp(PLT)
	and	r3, r5, #3072
	mov	r8, r0
	cmp	r3, #1024
	beq	.L278
	mov	r10, #0
	mov	r1, r8
	mov	r3, r10
	str	r10, [sp]
	movs	r2, #1
	bl	libaroma_canvas_new_ex(PLT)
	mov	r3, r0
	str	r0, [r4, #12]
	cbz	r0, .L236
	ldr	r2, [r3, #12]
	mov	r1, r10
	ldr	r0, [r0, #20]
	orr	r5, r5, #256
	bl	memset(PLT)
	ldr	lr, [sp, #76]
	mov	r2, r10
	ldr	r0, [r4, #12]
	mov	r3, r10
	str	r8, [sp]
	str	r8, [sp, #4]
	mov	r1, lr
	str	r10, [sp, #8]
	str	r10, [sp, #12]
	ldr	r7, [lr]
	str	r7, [sp, #16]
	ldr	r7, [lr, #4]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
.L236:
	lsls	r2, r5, #20
	bmi	.L237
.L276:
	and	r10, r5, #8192
	uxth	r10, r10
.L238:
	ldr	r7, [sp, #24]
	mov	r0, r7
	cbz	r7, .L239
	bl	__strdup(PLT)
.L239:
	ldr	r7, [sp, #72]
	str	r0, [r4, #4]
	mov	r0, r7
	cbz	r7, .L240
	bl	__strdup(PLT)
.L240:
	str	r0, [r4, #8]
	cmp	r10, #0
	ite	ne
	movne	r0, #52
	moveq	r0, #88
	ldr	r7, [r6, #24]
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #12]
	subs	r7, r7, r0
	cmp	r3, #0
	beq	.L279
.L242:
	movs	r0, #56
	bl	libaroma_dp(PLT)
	subs	r7, r7, r0
.L243:
	movs	r0, #16
	bl	libaroma_dp(PLT)
	cmp	r7, #0
	mov	r10, r0
	ble	.L244
	ldr	r0, [r4, #4]
	cbz	r0, .L245
	movs	r2, #137
	movs	r3, #64
	movt	r3, 145
	str	r2, [sp]
	movs	r1, #0
	mov	r2, r7
	bl	libaroma_text(PLT)
	str	r0, [sp, #28]
	bl	libaroma_text_height(PLT)
	ldr	r3, [sp, #28]
	add	r10, r10, r0
	mov	r0, r3
	bl	libaroma_text_free(PLT)
.L245:
	ldr	r0, [r4, #8]
	cbz	r0, .L244
	movs	r1, #143
	movs	r3, #48
	mov	r2, r7
	movt	r3, 145
	str	r1, [sp]
	movs	r1, #0
	bl	libaroma_text(PLT)
	mov	r7, r0
	bl	libaroma_text_height(PLT)
	mov	r3, r0
	movs	r0, #3
	str	r3, [sp, #28]
	bl	libaroma_font_size_px(PLT)
	ldr	r3, [sp, #28]
	fmsr	s15, r0	@ int
	mov	r0, r7
	fsitod	d18, s15
	add	r10, r10, r3
	fldd	d17, .L281
	fmsr	s15, r10	@ int
	fsitod	d16, s15
	fnmacd	d16, d18, d17
	ftosizd	s15, d16
	fmrs	r10, s15	@ int
	bl	libaroma_text_free(PLT)
.L244:
	cmp	r8, r10
	add	r0, fp, #16
	it	lt
	movlt	r8, r10
	bl	libaroma_dp(PLT)
	ldr	r3, .L281+8
	add	r2, r8, r0
	ldr	r1, [sp, #84]
	mov	r0, r6
	str	r2, [r4, #16]
.LPIC5:
	add	r3, pc
	str	r4, [sp]
	str	r1, [sp, #8]
	mov	r1, r9
	str	r3, [sp, #4]
	orr	r3, r5, #1
	bl	libaroma_ctl_list_add_item_internal(PLT)
	mov	r6, r0
	cbz	r6, .L280
.L273:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L278:
	ldr	r3, [sp, #76]
	and	r10, r5, #8192
	uxth	r10, r10
	str	r3, [r4, #12]
	b	.L238
.L279:
	lsls	r3, r5, #23
	bpl	.L243
	b	.L242
.L231:
	movs	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L277:
	and	r10, r5, #8192
	uxth	r10, r10
	cmp	r10, #0
	beq	.L233
	orr	r5, r5, #256
.L233:
	mov	r8, #0
	b	.L238
.L237:
	add	r0, sp, #76
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L276
.L280:
	mov	r0, r4
	mov	r1, r5
	bl	_libaroma_listitem_check_release_internal(PLT)
	mov	r0, r6
	b	.L273
.L282:
	.align	3
.L281:
	.word	-1840700270
	.word	1070745892
	.word	.LANCHOR0-(.LPIC5+4)
	.size	libaroma_listitem_check, .-libaroma_listitem_check
	.section	.data.rel._libaroma_listitem_check_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_listitem_check_handler, %object
	.size	_libaroma_listitem_check_handler, 12
_libaroma_listitem_check_handler:
	.word	_libaroma_listitem_check_message
	.word	_libaroma_listitem_check_draw
	.word	_libaroma_listitem_check_destroy
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
