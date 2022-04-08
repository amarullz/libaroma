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
	.file	"listitem_option.c"
	.section	.text._libaroma_listitem_option_message,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_option_message
	.thumb
	.thumb_func
	.type	_libaroma_listitem_option_message, %function
_libaroma_listitem_option_message:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	ldr	r4, .L16
	ldr	r0, [r1, #20]
.LPIC0:
	add	r4, pc
	cmp	r0, r4
	beq	.L15
.L11:
	movs	r0, #0
.L2:
	ldr	r4, [sp], #4
	bx	lr
.L15:
	subs	r2, r2, #1
	ldr	r1, [r1, #12]
	cmp	r2, #4
	bhi	.L11
	adr	r0, .L5
	ldr	r4, [r0, r2, lsl #2]
	add	r0, r0, r4
	bx	r0
	.p2align 2
.L5:
	.word	.L4+1-.L5
	.word	.L6+1-.L5
	.word	.L11+1-.L5
	.word	.L7+1-.L5
	.word	.L7+1-.L5
.L7:
	movs	r0, #0
	strb	r0, [r1, #1]
	b	.L2
.L6:
	cmp	r3, #16
	beq	.L7
	ldrb	r0, [r1]	@ zero_extendqisi2
	movs	r3, #1
	strb	r3, [r1, #1]
	cbz	r0, .L10
	movs	r0, #0
	strb	r0, [r1]
	b	.L2
.L4:
	movs	r3, #0
	movs	r0, #8
	strb	r3, [r1, #1]
	b	.L2
.L10:
	strb	r3, [r1]
	b	.L2
.L17:
	.align	2
.L16:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_listitem_option_message, .-_libaroma_listitem_option_message
	.section	.text._libaroma_listitem_option_draw,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_option_draw
	.thumb
	.thumb_func
	.type	_libaroma_listitem_option_draw, %function
_libaroma_listitem_option_draw:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	ldr	lr, .L142
	ldr	r1, [r1, #20]
	fstmfdd	sp!, {d8}
	sub	sp, sp, #124
.LPIC1:
	add	lr, pc
	ldrb	r6, [sp, #168]	@ zero_extendqisi2
	cmp	r1, lr
	str	r6, [sp, #44]
	beq	.L133
.L18:
	add	sp, sp, #124
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L143:
	.align	2
.L142:
	.word	.LANCHOR0-(.LPIC1+4)
.L133:
	mov	r7, r0
	mov	r0, r3
	mov	r5, r3
	mov	r10, r2
	ldr	fp, [r4, #12]
	bl	libaroma_color_isdark(PLT)
	and	r3, r6, #16
	ldrh	r6, [r4, #16]
	mov	r9, r0
	and	r1, r3, #255
	str	r6, [sp, #60]
	cmp	r3, #0
	bne	.L22
	and	r8, r6, #512
	ubfx	r6, r6, #2, #1
	str	r6, [sp, #80]
	uxth	r8, r8
	ldr	r6, [sp, #44]
	lsls	r0, r6, #31
	bmi	.L134
	cmp	r9, #0
	movw	r1, #35921
	movw	r2, #29614
	movw	r3, #65535
	ite	ne
	movne	r2, r1
	moveq	r3, #0
	str	r2, [sp, #76]
	str	r3, [sp, #72]
.L26:
	ldr	r0, [r4, #28]
	cbz	r0, .L28
	ldr	r6, [sp, #80]
	cmp	r6, #0
	bne	.L135
.L28:
	ldr	r6, [sp, #80]
	adds	r6, r6, #16
	mov	r0, r6
	str	r6, [sp, #92]
	bl	libaroma_dp(PLT)
	ldr	r9, [r10]
	mov	r6, r0
	movs	r0, #88
	bl	libaroma_dp(PLT)
	rsb	r9, r0, r9
	movs	r0, #16
	bl	libaroma_dp(PLT)
	str	r0, [sp, #68]
	cmp	r8, #0
	ite	eq
	moveq	r0, #40
	movne	r0, #24
	bl	libaroma_dp(PLT)
	ldr	r3, [fp, #12]
	str	r0, [sp, #88]
	cmp	r3, #0
	beq	.L33
	add	r6, r6, r0
.L72:
	movs	r0, #56
	bl	libaroma_dp(PLT)
	rsb	r9, r0, r9
	movs	r0, #56
	bl	libaroma_dp(PLT)
	ldr	lr, [sp, #68]
	add	lr, lr, r0
	str	lr, [sp, #68]
.L73:
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r8, r0
	ldr	r0, [fp, #4]
	cmp	r0, #0
	beq	.L83
	movs	r2, #137
	movs	r3, #64
	ldr	r1, [sp, #72]
	movt	r3, 145
	str	r2, [sp]
	mov	r2, r9
	bl	libaroma_text(PLT)
	str	r0, [sp, #84]
	bl	libaroma_text_height(PLT)
	add	r8, r8, r0
	str	r0, [sp, #72]
.L34:
	ldr	r0, [fp, #8]
	cmp	r0, #0
	beq	.L84
	mov	lr, #143
	movs	r3, #48
	mov	r2, r9
	ldr	r1, [sp, #76]
	movt	r3, 145
	str	lr, [sp]
	mov	lr, #4
	str	lr, [sp, #100]
	bl	libaroma_text(PLT)
	str	r0, [sp, #76]
	bl	libaroma_text_height(PLT)
	mov	r9, r0
	movs	r0, #3
	bl	libaroma_font_size_px(PLT)
	fmsr	s13, r9	@ int
	fmsr	s15, r0	@ int
	fsitod	d16, s13
	fsitod	d18, s15
	fldd	d17, .L144
	ldr	r0, [sp, #72]
	fnmacd	d16, d18, d17
	ftosizd	s13, d16
	fmrs	r9, s13	@ int
	add	r8, r8, r9
	add	r0, r0, r9
	str	r0, [sp, #96]
.L35:
	ldr	r0, [sp, #92]
	bl	libaroma_dp(PLT)
	ldr	r3, [fp, #12]
	add	r8, r8, r0
	cmp	r8, r6
	it	lt
	movlt	r8, r6
	asr	r9, r8, #1
	cbz	r3, .L37
	ldr	r6, [sp, #60]
	movs	r0, #16
	asr	r9, r8, #1
	and	r3, r6, #3072
	cmp	r3, #1024
	beq	.L38
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #88]
	mov	lr, #0
	ldr	r6, [fp, #12]
	mov	ip, #1
	str	lr, [sp]
	mov	r2, r0
	str	lr, [sp, #4]
	mov	r0, r10
	sub	r3, r9, r1, asr #1
	ldr	r1, [r6]
	str	r1, [sp, #8]
	ldr	r1, [r6, #4]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	mov	lr, #255
	str	r1, [sp, #12]
	mov	r1, r6
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L37:
	ldr	r6, [sp, #100]
	ldr	r0, [sp, #80]
	add	r0, r0, r6
	bl	libaroma_dp(PLT)
	ldr	r6, [sp, #96]
	add	r0, r0, r6, asr #1
	ldr	r6, [sp, #84]
	rsb	r9, r0, r9
	cbz	r6, .L39
	mov	lr, #0
	mov	r1, r6
	ldr	r6, [sp, #72]
	mov	r3, r9
	mov	r0, r10
	str	lr, [sp]
	str	lr, [sp, #4]
	ldr	r2, [sp, #68]
	add	r9, r9, r6
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
.L39:
	ldr	r6, [sp, #76]
	cbz	r6, .L40
	mov	lr, #0
	ldr	r2, [sp, #68]
	mov	r3, r9
	str	lr, [sp]
	str	lr, [sp, #4]
	mov	r0, r10
	str	lr, [sp, #8]
	mov	r1, r6
	str	lr, [sp, #12]
	str	lr, [sp, #16]
	str	lr, [sp, #20]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	str	lr, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	ldr	r0, [sp, #76]
	bl	libaroma_text_free(PLT)
.L40:
	ldr	r3, [fp, #16]
	cmp	r8, r3
	beq	.L22
	str	r8, [fp, #16]
	mov	r0, r7
	mov	r2, r8
	mov	r1, r4
	bl	libaroma_ctl_list_item_setheight(PLT)
.L22:
	ldr	r7, [sp, #44]
	lsls	r2, r7, #29
	bmi	.L18
	ldr	r6, [sp, #60]
	ldr	r3, [r4, #24]
	and	r8, r6, #4096
	uxth	r8, r8
	cmp	r3, #0
	beq	.L45
	ldrb	r2, [fp, #1]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L45
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	cmp	r2, #2
	beq	.L47
	ldr	r2, [r3, #152]
	add	r3, r3, r2, lsl #2
	ldr	r2, [r3, #80]
	cmp	r2, #0
	beq	.L45
	flds	s15, [r3, #56]
	fconsts	s14, #80
	fcmpes	s15, s14
	fmstat
	bmi	.L47
	fconsts	s14, #104
	fcmpes	s15, s14
	fmstat
	bgt	.L45
	fcvtds	d18, s15
	fconstd	d16, #208
	fconstd	d17, #112
	faddd	d16, d18, d16
	faddd	d16, d16, d16
	fcmpd	d16, d17
	fmstat
	it	pl
	fconstspl	s4, #112
	bpl	.L48
	fcmpezd	d16
	fmstat
	ite	gt
	fcvtsdgt	s4, d16
	fldsle	s4, .L144+20
.L48:
	flds	s0, .L144+8
	flds	s1, .L144+20
	flds	s2, .L144+12
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
	beq	.L47
	fcmps	s0, s15
	fmstat
	ble	.L44
.L45:
	fconsts	s16, #112
.L44:
	movs	r0, #36
	ldr	r6, [r10]
	bl	libaroma_dp(PLT)
	ldr	r3, [r10, #4]
	subs	r6, r6, r0
	asr	r9, r3, #1
	cmp	r8, #0
	beq	.L51
	flds	s15, .L144+16
	movw	r3, #46843
	ldrb	r2, [fp]	@ zero_extendqisi2
	movw	r7, #61309
	movw	r1, #46486
	fmuls	s15, s16, s15
	cmp	r2, #0
	itttt	ne
	movne	r8, r7
	movne	r0, r1
	movne	r7, #1168
	movne	r1, r3
	itt	eq
	moveq	r8, #1168
	moveq	r0, r3
	ftouizs	s15, s15
	fmrs	r5, s15	@ int
	uxtb	r5, r5
	mov	r2, r5
	bl	libaroma_alpha(PLT)
	mov	r1, r7
	mov	r2, r5
	str	r0, [sp, #60]
	mov	r0, r8
	bl	libaroma_alpha(PLT)
	str	r0, [sp, #68]
	movs	r0, #34
	bl	libaroma_dp(PLT)
	mov	r7, r0
	movs	r0, #14
	bl	libaroma_dp(PLT)
	ldrb	r2, [fp]	@ zero_extendqisi2
	mov	r3, r0
	cbnz	r2, .L53
	fconsts	s15, #112
	fsubs	s16, s15, s16
.L53:
	sub	r1, r6, r7, asr #1
	movs	r0, #20
	str	r3, [sp, #52]
	movs	r6, #0
	str	r1, [sp, #48]
	bl	libaroma_dp(PLT)
	mov	r5, r0
	subs	r0, r7, r0
	asr	r8, r5, #1
	fmsr	s0, r0	@ int
	rsb	fp, r8, r9
	fsitos	s0, s0
	fmuls	s0, s0, s16
	bl	roundf(PLT)
	ldr	r1, [sp, #48]
	mov	lr, #255
	fcvtds	d0, s0
	movw	ip, #4369
	ldr	r3, [sp, #52]
	ldr	r0, [sp, #60]
	fmsr	s13, r1	@ int
	fsitod	d16, s13
	asrs	r2, r3, #1
	str	r3, [sp]
	str	r0, [sp, #4]
	mov	r3, r7
	str	r2, [sp, #12]
	rsb	r2, r2, r9
	faddd	d16, d0, d16
	str	r0, [sp, #8]
	mov	r0, r10
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	str	lr, [sp, #24]
	str	r6, [sp, #28]
	ftosizd	s16, d16
	bl	libaroma_gradient_ex1(PLT)
	movs	r0, #1
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #24]
	mov	r9, r0
	cmp	r3, #0
	beq	.L54
	ldr	r7, [r3, #164]
	cmp	r7, #0
	beq	.L54
	str	r6, [sp]
	mov	lr, #3
	str	r6, [sp, #4]
	movs	r4, #48
	ldr	r3, [r7]
	fmrs	r1, s16	@ int
	subs	r2, r1, r0
	mov	r1, r7
	str	r3, [sp, #8]
	mov	r0, r10
	ldr	r7, [r7, #4]
	mov	r3, fp
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	str	r7, [sp, #12]
	str	lr, [sp, #16]
	str	r4, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L145
.L146:
	.align	3
.L144:
	.word	-1840700270
	.word	1070745892
	.word	1053699762
	.word	1046938544
	.word	1132396544
	.word	0
.L145:
.L55:
	ldr	r2, [sp, #68]
	movs	r4, #255
	movw	r7, #4369
	movs	r6, #0
	str	r5, [sp]
	mov	r0, r10
	str	r2, [sp, #4]
	mov	r3, r5
	str	r2, [sp, #8]
	mov	r2, fp
	fmrs	r1, s16	@ int
	str	r8, [sp, #12]
	str	r7, [sp, #16]
	str	r4, [sp, #20]
	str	r4, [sp, #24]
	str	r6, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	b	.L18
.L134:
	cmp	r9, #0
	beq	.L136
	ldr	r3, [r10, #4]
	movw	r6, #35921
	ldr	r2, [r10]
	movs	r0, #1
	str	r6, [sp, #76]
	movw	r6, #65535
	str	r1, [sp, #48]
	str	r2, [sp, #56]
	str	r3, [sp, #52]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #52]
	ldr	r2, [sp, #56]
	ldr	r1, [sp, #48]
	subs	r3, r3, r0
	movw	r0, #12974
	str	r0, [sp, #4]
	movs	r0, #255
	str	r3, [sp]
	mov	r3, r2
	str	r0, [sp, #8]
	mov	r2, r1
	mov	r0, r10
	bl	libaroma_draw_rect(PLT)
	str	r6, [sp, #72]
	b	.L26
.L54:
	movs	r6, #0
	mov	r1, r5
	mov	r3, r6
	movs	r2, #1
	mov	r0, r5
	str	r6, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	mov	r1, r6
	mov	r2, r6
	movs	r7, #255
	str	r0, [sp, #104]
	bl	libaroma_canvas_setcolor(PLT)
	movw	r3, #4369
	mov	r1, r6
	mov	r2, r6
	str	r3, [sp, #16]
	str	r7, [sp, #20]
	mov	r3, r5
	str	r7, [sp, #24]
	ldr	r0, [sp, #104]
	str	r6, [sp, #4]
	str	r6, [sp, #8]
	str	r6, [sp, #28]
	str	r5, [sp]
	str	r8, [sp, #12]
	bl	libaroma_gradient_ex1(PLT)
	mov	r3, r6
	movs	r2, #1
	mov	r1, r9
	ldr	r0, [sp, #104]
	bl	libaroma_blur_ex(PLT)
	mov	r1, r6
	str	r0, [sp, #112]
	add	r0, sp, #104
	fmrs	r7, s16	@ int
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r3, [sp, #112]
	rsb	r2, r9, r7
	str	r6, [sp]
	mov	lr, #3
	str	r6, [sp, #4]
	mov	ip, #48
	ldr	r7, [r3]
	mov	r1, r3
	mov	r0, r10
	str	r7, [sp, #8]
	ldr	r7, [r3, #4]
	mov	r3, fp
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	str	r7, [sp, #12]
	str	lr, [sp, #16]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r1, [r4, #24]
	cmp	r1, #0
	beq	.L137
	ldr	r3, [sp, #112]
	str	r3, [r1, #164]
	b	.L55
.L51:
	movs	r0, #18
	bl	libaroma_dp(PLT)
	str	r8, [sp, #112]
	ldrb	r3, [fp]	@ zero_extendqisi2
	str	r0, [sp, #60]
	ldr	r2, [r4, #24]
	cmp	r3, #0
	bne	.L57
	cmp	r2, #0
	beq	.L138
.L58:
	ldr	r2, [r2, #164]
	cmp	r2, #0
	beq	.L60
	movs	r4, #0
	str	r2, [sp, #112]
	str	r4, [sp, #64]
.L61:
	fconsts	s15, #112
	fcmpes	s16, s15
	fmstat
	bmi	.L78
	cmp	r3, #0
	beq	.L70
	ldr	ip, [sp, #112]
	mov	lr, #0
	ldr	r7, [sp, #60]
	movs	r5, #1
	str	lr, [sp]
	mov	r0, r10
	str	lr, [sp, #4]
	mov	r1, ip
	ldr	r4, [ip]
	asrs	r3, r7, #1
	movs	r7, #255
	subs	r2, r6, r3
	str	r4, [sp, #8]
	ldr	r6, [ip, #4]
	rsb	r3, r3, r9
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	str	r6, [sp, #12]
	str	r5, [sp, #16]
	str	r7, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L69:
	ldr	r6, [sp, #64]
	cmp	r6, #0
	beq	.L18
	add	r0, sp, #112
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L18
.L83:
	str	r0, [sp, #72]
	str	r0, [sp, #84]
	b	.L34
.L84:
	ldr	r1, [sp, #72]
	movs	r2, #2
	str	r0, [sp, #76]
	str	r2, [sp, #100]
	str	r1, [sp, #96]
	b	.L35
.L47:
	flds	s16, .L144+20
	b	.L44
.L136:
	ldr	r1, [r10, #4]
	movs	r0, #1
	ldr	r3, [r10]
	movw	r6, #29614
	str	r6, [sp, #76]
	str	r1, [sp, #48]
	str	r3, [sp, #52]
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #48]
	movw	r2, #44405
	str	r2, [sp, #4]
	mov	r2, r9
	ldr	r3, [sp, #52]
	subs	r0, r1, r0
	movs	r1, #255
	str	r0, [sp]
	mov	r0, r10
	str	r1, [sp, #8]
	mov	r1, r9
	bl	libaroma_draw_rect(PLT)
	str	r9, [sp, #72]
	b	.L26
.L135:
	bl	libaroma_listitem_nonitem(PLT)
	cmp	r0, #0
	bne	.L28
	ldr	r6, [sp, #60]
	and	r3, r6, #8
	uxth	r3, r3
	mov	r6, r3
	cmp	r3, #0
	bne	.L139
.L30:
	ldr	r2, [r10, #4]
	movs	r0, #1
	str	r2, [sp, #56]
	bl	libaroma_dp(PLT)
	ldr	r3, [r10]
	ldr	r2, [sp, #56]
	subs	r1, r3, r6
	rsb	ip, r0, r2
	movs	r0, #1
	str	r1, [sp, #48]
	str	ip, [sp, #56]
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #48]
	movw	r2, #57083
	ldr	ip, [sp, #56]
	movw	r3, #21162
	cmp	r9, #0
	ite	eq
	moveq	r9, r2
	movne	r9, r3
	mov	lr, #255
	str	r0, [sp]
	mov	r3, r1
	mov	r2, ip
	mov	r1, r6
	str	r9, [sp, #4]
	mov	r0, r10
	str	lr, [sp, #8]
	bl	libaroma_draw_rect(PLT)
	b	.L28
.L38:
	bl	libaroma_dp(PLT)
	ldr	r6, [sp, #88]
	movs	r1, #0
	ldr	lr, [fp, #12]
	mov	r2, r0
	str	r1, [sp, #8]
	mov	r0, r10
	str	r1, [sp, #12]
	str	r6, [sp]
	sub	r3, r9, r6, asr #1
	str	r6, [sp, #4]
	mov	r1, lr
	ldr	r6, [lr]
	str	r6, [sp, #16]
	ldr	r6, [lr, #4]
	str	r6, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	b	.L37
.L57:
	cmp	r2, #0
	bne	.L58
.L60:
	ldr	r0, [sp, #60]
	mov	ip, #0
	mov	r3, ip
	str	ip, [sp]
	movs	r2, #1
	str	ip, [sp, #56]
	mov	r1, r0
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r2, [sp, #60]
	ldr	ip, [sp, #56]
	str	r0, [sp, #112]
	mov	r7, r2
	ldr	r0, [r0, #20]
	mov	r1, ip
	mul	r2, r2, r2
	bl	memset(PLT)
	movs	r0, #2
	ldr	r8, [sp, #112]
	bl	libaroma_dp(PLT)
	ldr	ip, [sp, #56]
	mov	lr, #1200
	movw	r3, #4369
	str	r7, [sp]
	str	lr, [sp, #4]
	movs	r7, #2
	str	lr, [sp, #8]
	mov	lr, #255
	mov	r1, ip
	mov	r2, ip
	str	r0, [sp, #12]
	mov	r0, r8
	str	r3, [sp, #16]
	str	lr, [sp, #20]
	ldr	r3, [sp, #60]
	str	lr, [sp, #24]
	str	r7, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	ldr	r7, [sp, #60]
	add	r3, r7, r7, lsl #1
	lsls	r1, r3, #2
	add	r3, r3, r3, lsl #3
	asr	lr, r1, #6
	asrs	r3, r3, #6
	str	r1, [sp, #48]
	fmsr	s0, lr	@ int
	fmsr	s1, r3	@ int
	fsitos	s0, s0
	fsitos	s1, s1
	bl	libaroma_path(PLT)
	add	r3, r7, r7, lsl #2
	mov	r8, r0
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
	ldr	r1, [sp, #48]
	mul	r3, r3, r7
	mov	r2, r7
	mov	r0, r8
	add	r2, r2, r1
	asrs	r2, r2, #6
	asrs	r3, r3, #6
	fmsr	s1, r2	@ int
	fmsr	s0, r3	@ int
	fsitos	s1, s1
	fsitos	s0, s0
	bl	libaroma_path_add(PLT)
	lsls	r3, r7, #3
	mov	r0, r8
	subs	r1, r3, r7
	add	r3, r3, r7
	add	r2, r7, r1, lsl #3
	sbfx	r3, r3, #5, #26
	str	r1, [sp, #48]
	asrs	r2, r2, #6
	fmsr	s1, r3	@ int
	fsitos	s1, s1
	fmsr	s0, r2	@ int
	fsitos	s0, s0
	bl	libaroma_path_add(PLT)
	movs	r3, #50
	mov	r0, r8
	mul	r3, r3, r7
	fcpys	s0, s17
	asrs	r3, r3, #6
	fmsr	s1, r3	@ int
	fsitos	s1, s1
	bl	libaroma_path_add(PLT)
	ldr	r1, [sp, #48]
	sbfx	r3, r7, #1, #26
	mov	r0, r8
	fmsr	s1, r3	@ int
	asrs	r1, r1, #6
	fsitos	s1, s1
	fmsr	s0, r1	@ int
	fsitos	s0, s0
	bl	libaroma_path_add(PLT)
	ldr	ip, [sp, #56]
	movs	r2, #2
	mov	r1, r8
	str	r2, [sp]
	ldr	r0, [sp, #112]
	mov	r3, ip
	mov	r2, ip
	fconsts	s0, #96
	bl	libaroma_path_draw(PLT)
	mov	r0, r8
	bl	libaroma_path_free(PLT)
	ldr	r3, [r4, #24]
	ldr	ip, [sp, #56]
	cmp	r3, #0
	beq	.L140
	ldr	r2, [sp, #112]
	str	ip, [sp, #64]
	str	r2, [r3, #164]
	ldrb	r3, [fp]	@ zero_extendqisi2
	b	.L61
.L33:
	ldrh	r3, [r4, #16]
	lsls	r3, r3, #23
	bmi	.L72
	b	.L73
.L138:
	fconsts	s15, #112
	fcmpes	s16, s15
	fmstat
	str	r8, [sp, #64]
	bmi	.L78
.L70:
	ldr	r7, [sp, #60]
	movs	r0, #2
	mov	r8, #255
	movw	r4, #4369
	asr	fp, r7, #1
	rsb	r1, fp, r6
	rsb	fp, fp, r9
	str	r1, [sp, #48]
	bl	libaroma_dp(PLT)
	movw	lr, #52857
	str	r7, [sp]
	movs	r7, #0
	ldr	r1, [sp, #48]
	mov	r2, fp
	ldr	r3, [sp, #60]
	str	lr, [sp, #4]
	str	lr, [sp, #8]
	str	r0, [sp, #12]
	mov	r0, r10
	str	r4, [sp, #16]
	str	r7, [sp, #28]
	str	r8, [sp, #20]
	str	r8, [sp, #24]
	bl	libaroma_gradient_ex1(PLT)
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r7, r0
	movs	r0, #1
	asr	r3, r7, r0
	subs	r6, r6, r3
	rsb	fp, r3, r9
	bl	libaroma_dp(PLT)
	str	r4, [sp, #16]
	movs	r4, #0
	str	r0, [sp, #12]
	mov	r1, r6
	mov	r2, fp
	str	r7, [sp]
	mov	r3, r7
	str	r8, [sp, #20]
	mov	r0, r10
	str	r8, [sp, #24]
	str	r4, [sp, #28]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	bl	libaroma_gradient_ex1(PLT)
	b	.L69
.L78:
	flds	s13, [sp, #60]	@ int
	fconsts	s14, #112
	fsubs	s14, s14, s16
	fsitos	s15, s13
	cmp	r3, #0
	beq	.L141
	fmuls	s13, s15, s16
	fcpys	s16, s14
	ftosizs	s13, s13
	fmrs	ip, s13	@ int
.L77:
	fmuls	s15, s16, s15
	ftosizs	s15, s15
	fmrs	r8, s15	@ int
	cmp	r8, #0
	ble	.L67
	asr	fp, r8, #1
	movw	r4, #4369
	movs	r0, #2
	str	ip, [sp, #56]
	rsb	r1, fp, r6
	movs	r7, #255
	str	r1, [sp, #48]
	rsb	fp, fp, r9
	bl	libaroma_dp(PLT)
	movw	lr, #52857
	str	r4, [sp, #16]
	movs	r4, #0
	mov	r3, r8
	str	r0, [sp, #12]
	mov	r2, fp
	ldr	r1, [sp, #48]
	mov	r0, r10
	str	r8, [sp]
	str	lr, [sp, #4]
	str	lr, [sp, #8]
	str	r7, [sp, #20]
	str	r7, [sp, #24]
	str	r4, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	movs	r0, #2
	bl	libaroma_dp(PLT)
	rsb	r8, r0, r8
	ldr	ip, [sp, #56]
	cmp	r8, r4
	ble	.L67
	asr	fp, r8, #1
	movs	r0, #1
	movw	r4, #4369
	rsb	r1, fp, r6
	rsb	fp, fp, r9
	str	r1, [sp, #48]
	bl	libaroma_dp(PLT)
	str	r7, [sp, #20]
	mov	r2, fp
	str	r7, [sp, #24]
	movs	r7, #0
	str	r0, [sp, #12]
	mov	r3, r8
	ldr	r1, [sp, #48]
	mov	r0, r10
	str	r8, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r4, [sp, #16]
	str	r7, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	ldr	ip, [sp, #56]
.L67:
	cmp	ip, #0
	ble	.L69
	ldr	r4, [sp, #60]
	asr	r3, ip, #1
	movs	r5, #0
	ldr	r1, [sp, #112]
	subs	r2, r6, r3
	str	ip, [sp]
	str	ip, [sp, #4]
	rsb	r3, r3, r9
	str	r4, [sp, #16]
	mov	r0, r10
	str	r4, [sp, #20]
	str	r5, [sp, #8]
	str	r5, [sp, #12]
	bl	libaroma_draw_scale_nearest(PLT)
	b	.L69
.L141:
	fmuls	s14, s15, s14
	ftosizs	s14, s14
	fmrs	ip, s14	@ int
	b	.L77
.L139:
	movs	r0, #72
	bl	libaroma_dp(PLT)
	mov	r6, r0
	b	.L30
.L137:
	add	r0, sp, #112
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L55
.L140:
	movs	r4, #1
	ldrb	r3, [fp]	@ zero_extendqisi2
	str	r4, [sp, #64]
	b	.L61
	.size	_libaroma_listitem_option_draw, .-_libaroma_listitem_option_draw
	.section	.text._libaroma_listitem_option_release_internal,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_option_release_internal
	.thumb
	.thumb_func
	.type	_libaroma_listitem_option_release_internal, %function
_libaroma_listitem_option_release_internal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0, #4]
	mov	r5, r1
	cbz	r0, .L148
	bl	free(PLT)
.L148:
	ldr	r0, [r4, #8]
	cbz	r0, .L149
	bl	free(PLT)
.L149:
	ldr	r3, [r4, #12]
	cbz	r3, .L150
	and	r5, r5, #3072
	cmp	r5, #1024
	beq	.L150
	add	r0, r4, #12
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L150:
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	free(PLT)
	.size	_libaroma_listitem_option_release_internal, .-_libaroma_listitem_option_release_internal
	.section	.text._libaroma_listitem_option_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_option_destroy
	.thumb
	.thumb_func
	.type	_libaroma_listitem_option_destroy, %function
_libaroma_listitem_option_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L167
	ldr	r3, [r1, #20]
.LPIC2:
	add	r2, pc
	cmp	r3, r2
	beq	.L166
	bx	lr
.L166:
	ldr	r0, [r1, #12]
	ldrh	r1, [r1, #16]
	b	_libaroma_listitem_option_release_internal(PLT)
.L168:
	.align	2
.L167:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_listitem_option_destroy, .-_libaroma_listitem_option_destroy
	.section	.text.libaroma_listitem_option,"ax",%progbits
	.align	2
	.global	libaroma_listitem_option
	.thumb
	.thumb_func
	.type	libaroma_listitem_option, %function
libaroma_listitem_option:
	@ args = 16, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	mov	r10, r1
	mov	r8, r3
	mov	r6, r0
	ldrh	r5, [sp, #80]
	bl	libaroma_ctl_list_is_valid(PLT)
	cmp	r0, #0
	beq	.L172
	movs	r0, #20
	movs	r1, #1
	bl	calloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L172
	ldr	r3, [sp, #76]
	movs	r7, #0
	strb	r7, [r0]
	ubfx	fp, r5, #2, #1
	str	r7, [r0, #12]
	mov	r9, r3
	cmp	r3, #0
	beq	.L173
	tst	r5, #512
	ite	eq
	moveq	r0, #40
	movne	r0, #24
	bl	libaroma_dp(PLT)
	and	r3, r5, #3072
	mov	r9, r0
	cmp	r3, #1024
	beq	.L175
	mov	r3, r7
	str	r7, [sp]
	mov	r1, r0
	movs	r2, #1
	bl	libaroma_canvas_new_ex(PLT)
	mov	r3, r0
	str	r0, [r4, #12]
	cbz	r0, .L176
	mov	r1, r7
	ldr	r2, [r3, #12]
	ldr	r0, [r0, #20]
	orr	r5, r5, #256
	bl	memset(PLT)
	ldr	lr, [sp, #76]
	mov	r2, r7
	ldr	r0, [r4, #12]
	mov	r3, r7
	str	r9, [sp]
	str	r9, [sp, #4]
	mov	r1, lr
	str	r7, [sp, #8]
	str	r7, [sp, #12]
	ldr	r7, [lr]
	str	r7, [sp, #16]
	ldr	r7, [lr, #4]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
.L176:
	lsls	r2, r5, #20
	bmi	.L207
.L173:
	mov	r0, r8
	cmp	r8, #0
	beq	.L177
	bl	__strdup(PLT)
.L177:
	ldr	r7, [sp, #72]
	str	r0, [r4, #4]
	mov	r0, r7
	cbz	r7, .L178
	bl	__strdup(PLT)
.L178:
	str	r0, [r4, #8]
	movs	r0, #88
	ldr	r7, [r6, #24]
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #12]
	rsb	r8, r0, r7
	cmp	r3, #0
	beq	.L208
.L179:
	movs	r0, #56
	bl	libaroma_dp(PLT)
	rsb	r8, r0, r8
.L180:
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r7, r0
	ldr	r0, [r4, #4]
	cbz	r0, .L181
	movs	r2, #137
	movs	r3, #64
	movt	r3, 145
	str	r2, [sp]
	movs	r1, #0
	mov	r2, r8
	bl	libaroma_text(PLT)
	str	r0, [sp, #28]
	bl	libaroma_text_height(PLT)
	ldr	r3, [sp, #28]
	add	r7, r7, r0
	mov	r0, r3
	bl	libaroma_text_free(PLT)
.L181:
	ldr	r0, [r4, #8]
	cbz	r0, .L182
	movs	r1, #143
	movs	r3, #48
	mov	r2, r8
	movt	r3, 145
	str	r1, [sp]
	movs	r1, #0
	bl	libaroma_text(PLT)
	mov	r8, r0
	bl	libaroma_text_height(PLT)
	mov	r3, r0
	movs	r0, #3
	str	r3, [sp, #28]
	bl	libaroma_font_size_px(PLT)
	ldr	r3, [sp, #28]
	fmsr	s15, r0	@ int
	mov	r0, r8
	fsitod	d18, s15
	add	r7, r7, r3
	fldd	d17, .L210
	fmsr	s15, r7	@ int
	fsitod	d16, s15
	fnmacd	d16, d18, d17
	ftosizd	s15, d16
	fmrs	r7, s15	@ int
	bl	libaroma_text_free(PLT)
.L182:
	cmp	r9, r7
	add	r0, fp, #16
	it	lt
	movlt	r9, r7
	bl	libaroma_dp(PLT)
	ldr	r3, .L210+8
	add	r2, r9, r0
	ldr	r1, [sp, #84]
	mov	r0, r6
	str	r2, [r4, #16]
.LPIC3:
	add	r3, pc
	str	r4, [sp]
	str	r1, [sp, #8]
	mov	r1, r10
	str	r3, [sp, #4]
	orr	r3, r5, #1
	bl	libaroma_ctl_list_add_item_internal(PLT)
	mov	r6, r0
	cbz	r6, .L209
.L171:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L175:
	ldr	r3, [sp, #76]
	str	r3, [r4, #12]
	b	.L173
.L208:
	lsls	r3, r5, #23
	bpl	.L180
	b	.L179
.L172:
	movs	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L207:
	add	r0, sp, #76
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L173
.L209:
	mov	r0, r4
	mov	r1, r5
	bl	_libaroma_listitem_option_release_internal(PLT)
	mov	r0, r6
	b	.L171
.L211:
	.align	3
.L210:
	.word	-1840700270
	.word	1070745892
	.word	.LANCHOR0-(.LPIC3+4)
	.size	libaroma_listitem_option, .-libaroma_listitem_option
	.section	.data.rel._libaroma_listitem_option_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_listitem_option_handler, %object
	.size	_libaroma_listitem_option_handler, 12
_libaroma_listitem_option_handler:
	.word	_libaroma_listitem_option_message
	.word	_libaroma_listitem_option_draw
	.word	_libaroma_listitem_option_destroy
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
