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
	.file	"listitem_menu.c"
	.section	.text._libaroma_listitem_menu_message,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_menu_message
	.thumb
	.thumb_func
	.type	_libaroma_listitem_menu_message, %function
_libaroma_listitem_menu_message:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r1
	ldr	r5, .L11
	sub	sp, sp, #12
	ldr	r1, [r1, #20]
.LPIC0:
	add	r5, pc
	cmp	r1, r5
	beq	.L10
.L2:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L10:
	cmp	r2, #2
	beq	.L3
	cmp	r2, #5
	bne	.L2
	ldrh	r0, [r0]
	movs	r1, #0
	ldr	r2, [r4, #8]
	mov	r3, r1
	str	r4, [sp]
	orr	r0, r0, #33554432
	bl	libaroma_window_post_command_ex(PLT)
	b	.L2
.L3:
	cmp	r3, #16
	beq	.L2
	ldrh	r0, [r0]
	movs	r1, #0
	ldr	r2, [r4, #8]
	mov	r3, r1
	str	r4, [sp]
	orr	r0, r0, #16777216
	bl	libaroma_window_post_command_ex(PLT)
	b	.L2
.L12:
	.align	2
.L11:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_listitem_menu_message, .-_libaroma_listitem_menu_message
	.section	.text._libaroma_listitem_menu_draw,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_menu_draw
	.thumb
	.thumb_func
	.type	_libaroma_listitem_menu_draw, %function
_libaroma_listitem_menu_draw:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r1
	ldr	r6, .L63+8
	sub	sp, sp, #92
	ldr	r1, [r1, #20]
.LPIC1:
	add	r6, pc
	ldrb	r9, [sp, #128]	@ zero_extendqisi2
	cmp	r1, r6
	beq	.L58
.L13:
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L58:
	mov	r5, r0
	mov	r0, r3
	mov	r4, r2
	ldr	r6, [r10, #12]
	bl	libaroma_color_isdark(PLT)
	and	r3, r9, #16
	mov	r8, r0
	ldrh	r7, [r10, #16]
	and	r1, r3, #255
	cmp	r3, #0
	bne	.L13
	and	r3, r7, #4096
	and	fp, r7, #512
	uxth	r3, r3
	ubfx	r2, r7, #2, #1
	uxth	fp, fp
	str	r2, [sp, #72]
	cmp	r3, #0
	ite	eq
	moveq	ip, #16
	movne	ip, #14
	str	r3, [sp, #60]
	tst	r9, #1
	str	ip, [sp, #52]
	bne	.L59
	cmp	r0, #0
	movw	r1, #35921
	movw	r2, #29614
	movw	r3, #65535
	ite	ne
	movne	r2, r1
	moveq	r3, #0
	str	r2, [sp, #76]
	str	r3, [sp, #64]
.L21:
	ldr	r0, [r10, #28]
	cbz	r0, .L23
	ldr	r3, [sp, #72]
	cmp	r3, #0
	bne	.L60
.L23:
	ldr	lr, [sp, #52]
	ldr	ip, [sp, #72]
	add	ip, ip, lr
	mov	r0, ip
	str	ip, [sp, #80]
	bl	libaroma_dp(PLT)
	ldr	r8, [r4]
	mov	r9, r0
	movs	r0, #52
	bl	libaroma_dp(PLT)
	rsb	r8, r0, r8
	movs	r0, #16
	bl	libaroma_dp(PLT)
	str	r0, [sp, #68]
	cmp	fp, #0
	ite	eq
	moveq	r0, #40
	movne	r0, #24
	bl	libaroma_dp(PLT)
	ldr	r3, [r6, #8]
	str	r0, [sp, #56]
	cmp	r3, #0
	beq	.L28
	add	r9, r9, r0
.L37:
	movs	r0, #56
	bl	libaroma_dp(PLT)
	rsb	r8, r0, r8
	movs	r0, #56
	bl	libaroma_dp(PLT)
	ldr	ip, [sp, #68]
	add	ip, ip, r0
	str	ip, [sp, #68]
.L38:
	ldr	r0, [sp, #52]
	bl	libaroma_dp(PLT)
	mov	fp, r0
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.L44
	ldr	ip, [sp, #60]
	mov	lr, #64
	movs	r3, #48
	movt	lr, 145
	movs	r2, #137
	movt	r3, 145
	ldr	r1, [sp, #64]
	cmp	ip, #0
	it	eq
	moveq	r3, lr
	str	r2, [sp]
	mov	r2, r8
	bl	libaroma_text(PLT)
	str	r0, [sp, #60]
	bl	libaroma_text_height(PLT)
	add	fp, fp, r0
	str	r0, [sp, #52]
.L29:
	ldr	r0, [r6, #4]
	cmp	r0, #0
	beq	.L46
	mov	lr, #143
	movs	r3, #48
	mov	ip, #4
	mov	r2, r8
	movt	r3, 145
	ldr	r1, [sp, #76]
	str	lr, [sp]
	str	ip, [sp, #84]
	bl	libaroma_text(PLT)
	str	r0, [sp, #64]
	bl	libaroma_text_height(PLT)
	mov	r8, r0
	movs	r0, #3
	bl	libaroma_font_size_px(PLT)
	fmsr	s15, r8	@ int
	fsitod	d16, s15
	fmsr	s15, r0	@ int
	fsitod	d18, s15
	fldd	d17, .L63
	ldr	ip, [sp, #52]
	fnmacd	d16, d18, d17
	ftosizd	s15, d16
	fmrs	r3, s15	@ int
	add	fp, fp, r3
	add	ip, ip, r3
	str	ip, [sp, #76]
.L31:
	ldr	r0, [sp, #80]
	bl	libaroma_dp(PLT)
	ldr	r3, [r6, #8]
	add	r8, r0, fp
	cmp	r8, r9
	it	lt
	movlt	r8, r9
	asr	fp, r8, #1
	cbz	r3, .L33
	and	r7, r7, #3072
	movs	r0, #16
	cmp	r7, #1024
	asr	fp, r8, #1
	beq	.L34
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #56]
	mov	lr, #0
	ldr	r1, [r6, #8]
	mov	r9, #1
	str	lr, [sp]
	mov	r2, r0
	str	lr, [sp, #4]
	mov	r0, r4
	sub	r3, fp, r7, asr #1
	ldr	r7, [r1]
	str	r7, [sp, #8]
	ldr	r7, [r1, #4]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	mov	lr, #255
	str	r7, [sp, #12]
	str	r9, [sp, #16]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L33:
	ldr	r0, [sp, #72]
	ldr	ip, [sp, #84]
	add	r0, r0, ip
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #76]
	ldr	r1, [sp, #60]
	add	r0, r0, r7, asr #1
	rsb	r7, r0, fp
	cbz	r1, .L35
	ldr	ip, [sp, #52]
	mov	lr, #0
	mov	r3, r7
	mov	r0, r4
	str	lr, [sp]
	str	lr, [sp, #4]
	add	r7, r7, ip
	ldr	r2, [sp, #68]
	str	lr, [sp, #8]
	str	lr, [sp, #12]
	str	lr, [sp, #16]
	str	lr, [sp, #20]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	str	lr, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	ldr	r0, [sp, #60]
	bl	libaroma_text_free(PLT)
.L35:
	ldr	r1, [sp, #64]
	cbz	r1, .L36
	mov	lr, #0
	mov	r0, r4
	ldr	r2, [sp, #68]
	mov	r3, r7
	str	lr, [sp]
	str	lr, [sp, #4]
	str	lr, [sp, #8]
	str	lr, [sp, #12]
	str	lr, [sp, #16]
	str	lr, [sp, #20]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	str	lr, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	ldr	r0, [sp, #64]
	bl	libaroma_text_free(PLT)
.L36:
	ldr	r3, [r6, #12]
	cmp	r8, r3
	beq	.L13
	str	r8, [r6, #12]
	mov	r0, r5
	mov	r1, r10
	mov	r2, r8
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	libaroma_ctl_list_item_setheight(PLT)
.L59:
	cbz	r0, .L61
	ldr	r3, [r4, #4]
	movw	ip, #35921
	movs	r0, #1
	ldr	r9, [r4]
	str	ip, [sp, #76]
	str	r1, [sp, #48]
	str	r3, [sp, #44]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #48]
	subs	r3, r3, r0
	movw	r0, #16936
	str	r0, [sp, #4]
	movs	r0, #255
	str	r3, [sp]
	mov	r2, r1
	str	r0, [sp, #8]
	mov	r3, r9
	mov	r0, r4
	bl	libaroma_draw_rect(PLT)
	movw	ip, #65535
	str	ip, [sp, #64]
	b	.L21
.L46:
	ldr	r1, [sp, #52]
	mov	ip, #2
	str	r0, [sp, #64]
	str	ip, [sp, #84]
	str	r1, [sp, #76]
	b	.L31
.L61:
	ldr	r3, [r4, #4]
	movw	ip, #29614
	movs	r0, #1
	ldr	r9, [r4]
	str	ip, [sp, #76]
	str	r3, [sp, #44]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #44]
	movw	r2, #48599
	movs	r1, #255
	str	r2, [sp, #4]
	str	r1, [sp, #8]
	mov	r2, r8
	subs	r0, r3, r0
	mov	r1, r8
	str	r0, [sp]
	mov	r3, r9
	mov	r0, r4
	bl	libaroma_draw_rect(PLT)
	str	r8, [sp, #64]
	b	.L21
.L60:
	bl	libaroma_listitem_nonitem(PLT)
	cmp	r0, #0
	bne	.L23
	and	r3, r7, #8
	uxth	r3, r3
	cmp	r3, #0
	bne	.L62
	str	r3, [sp, #68]
.L25:
	movs	r0, #1
	ldr	r9, [r4, #4]
	bl	libaroma_dp(PLT)
	ldr	r3, [r4]
	ldr	r2, [sp, #68]
	rsb	r9, r0, r9
	movs	r0, #1
	subs	r1, r3, r2
	str	r1, [sp, #48]
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #48]
	movw	r2, #57083
	movw	r3, #21162
	mov	lr, #255
	cmp	r8, #0
	ite	eq
	moveq	r8, r2
	movne	r8, r3
	str	r0, [sp]
	mov	r3, r1
	mov	r2, r9
	ldr	r1, [sp, #68]
	mov	r0, r4
	str	r8, [sp, #4]
	str	lr, [sp, #8]
	bl	libaroma_draw_rect(PLT)
	b	.L23
.L34:
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #56]
	movs	r1, #0
	ldr	lr, [r6, #8]
	mov	r2, r0
	str	r1, [sp, #8]
	mov	r0, r4
	str	r1, [sp, #12]
	str	r7, [sp]
	sub	r3, fp, r7, asr #1
	str	r7, [sp, #4]
	mov	r1, lr
	ldr	r7, [lr]
	str	r7, [sp, #16]
	ldr	r7, [lr, #4]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	b	.L33
.L44:
	str	r0, [sp, #52]
	str	r0, [sp, #60]
	b	.L29
.L28:
	ldrh	r3, [r10, #16]
	lsls	r3, r3, #23
	bmi	.L37
	b	.L38
.L62:
	movs	r0, #72
	bl	libaroma_dp(PLT)
	str	r0, [sp, #68]
	b	.L25
.L64:
	.align	3
.L63:
	.word	-1840700270
	.word	1070745892
	.word	.LANCHOR0-(.LPIC1+4)
	.size	_libaroma_listitem_menu_draw, .-_libaroma_listitem_menu_draw
	.section	.text._libaroma_listitem_menu_release_internal,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_menu_release_internal
	.thumb
	.thumb_func
	.type	_libaroma_listitem_menu_release_internal, %function
_libaroma_listitem_menu_release_internal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0]
	mov	r5, r1
	cbz	r0, .L66
	bl	free(PLT)
.L66:
	ldr	r0, [r4, #4]
	cbz	r0, .L67
	bl	free(PLT)
.L67:
	ldr	r3, [r4, #8]
	cbz	r3, .L68
	and	r5, r5, #3072
	cmp	r5, #1024
	beq	.L68
	add	r0, r4, #8
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L68:
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	free(PLT)
	.size	_libaroma_listitem_menu_release_internal, .-_libaroma_listitem_menu_release_internal
	.section	.text._libaroma_listitem_menu_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_menu_destroy
	.thumb
	.thumb_func
	.type	_libaroma_listitem_menu_destroy, %function
_libaroma_listitem_menu_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L85
	ldr	r3, [r1, #20]
.LPIC2:
	add	r2, pc
	cmp	r3, r2
	beq	.L84
	bx	lr
.L84:
	ldr	r0, [r1, #12]
	ldrh	r1, [r1, #16]
	b	_libaroma_listitem_menu_release_internal(PLT)
.L86:
	.align	2
.L85:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_listitem_menu_destroy, .-_libaroma_listitem_menu_destroy
	.section	.text.libaroma_listitem_menu,"ax",%progbits
	.align	2
	.global	libaroma_listitem_menu
	.thumb
	.thumb_func
	.type	libaroma_listitem_menu, %function
libaroma_listitem_menu:
	@ args = 12, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	str	r1, [sp, #32]
	mov	r7, r2
	mov	r8, r0
	str	r3, [sp, #24]
	ldrh	r5, [sp, #84]
	bl	libaroma_ctl_list_is_valid(PLT)
	cmp	r0, #0
	beq	.L90
	movs	r0, #16
	movs	r1, #1
	bl	calloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L90
	ldr	r3, [sp, #80]
	tst	r5, #4096
	mov	fp, #0
	ubfx	r6, r5, #2, #1
	ite	eq
	moveq	r10, #16
	movne	r10, #14
	str	fp, [r0, #8]
	mov	r9, r3
	str	r6, [sp, #36]
	cmp	r3, #0
	beq	.L92
	tst	r5, #512
	ite	eq
	moveq	r0, #40
	movne	r0, #24
	bl	libaroma_dp(PLT)
	and	r3, r5, #3072
	mov	r9, r0
	cmp	r3, #1024
	beq	.L94
	mov	r3, fp
	str	fp, [sp]
	mov	r1, r0
	movs	r2, #1
	bl	libaroma_canvas_new_ex(PLT)
	mov	r3, r0
	str	r0, [r4, #8]
	cbz	r0, .L95
	ldr	r2, [r3, #12]
	mov	r1, fp
	ldr	r0, [r0, #20]
	orr	r5, r5, #256
	bl	memset(PLT)
	ldr	lr, [sp, #80]
	mov	r2, fp
	ldr	r0, [r4, #8]
	mov	r3, fp
	str	r9, [sp]
	str	r9, [sp, #4]
	mov	r1, lr
	str	fp, [sp, #8]
	str	fp, [sp, #12]
	ldr	r6, [lr]
	str	r6, [sp, #16]
	ldr	r6, [lr, #4]
	str	r6, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
.L95:
	lsls	r2, r5, #20
	bmi	.L129
.L92:
	mov	r0, r7
	cbz	r7, .L96
	bl	__strdup(PLT)
.L96:
	ldr	r6, [sp, #24]
	str	r0, [r4]
	mov	r0, r6
	cbz	r6, .L97
	bl	__strdup(PLT)
.L97:
	str	r0, [r4, #4]
	movs	r0, #52
	ldr	r6, [r8, #24]
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #8]
	subs	r6, r6, r0
	cmp	r3, #0
	beq	.L130
.L98:
	movs	r0, #56
	bl	libaroma_dp(PLT)
	subs	r6, r6, r0
.L99:
	mov	r0, r10
	bl	libaroma_dp(PLT)
	cmp	r6, #0
	mov	r7, r0
	ble	.L100
	ldr	r0, [r4]
	cbz	r0, .L101
	movs	r2, #64
	tst	r5, #4096
	movt	r2, 145
	mov	r1, #137
	mov	r3, #48
	str	r1, [sp]
	movt	r3, 145
	mov	r1, #0
	it	eq
	moveq	r3, r2
	mov	r2, r6
	bl	libaroma_text(PLT)
	str	r0, [sp, #28]
	bl	libaroma_text_height(PLT)
	ldr	r3, [sp, #28]
	add	r7, r7, r0
	mov	r0, r3
	bl	libaroma_text_free(PLT)
.L101:
	ldr	r0, [r4, #4]
	cbz	r0, .L100
	movs	r1, #143
	movs	r3, #48
	mov	r2, r6
	movt	r3, 145
	str	r1, [sp]
	movs	r1, #0
	bl	libaroma_text(PLT)
	mov	r6, r0
	bl	libaroma_text_height(PLT)
	mov	r3, r0
	movs	r0, #3
	str	r3, [sp, #28]
	bl	libaroma_font_size_px(PLT)
	ldr	r3, [sp, #28]
	fmsr	s15, r0	@ int
	mov	r0, r6
	fsitod	d18, s15
	add	r7, r7, r3
	fldd	d17, .L132
	fmsr	s15, r7	@ int
	fsitod	d16, s15
	fnmacd	d16, d18, d17
	ftosizd	s15, d16
	fmrs	r7, s15	@ int
	bl	libaroma_text_free(PLT)
.L100:
	ldr	r0, [sp, #36]
	cmp	r7, r9
	it	lt
	movlt	r7, r9
	add	r0, r0, r10
	bl	libaroma_dp(PLT)
	ldr	r3, .L132+8
	adds	r2, r7, r0
	ldr	r1, [sp, #88]
	mov	r0, r8
	str	r2, [r4, #12]
.LPIC3:
	add	r3, pc
	str	r4, [sp]
	str	r1, [sp, #8]
	str	r3, [sp, #4]
	orr	r3, r5, #1
	ldr	r1, [sp, #32]
	bl	libaroma_ctl_list_add_item_internal(PLT)
	mov	r6, r0
	cbz	r6, .L131
.L89:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L94:
	ldr	r3, [sp, #80]
	str	r3, [r4, #8]
	b	.L92
.L130:
	lsls	r3, r5, #23
	bpl	.L99
	b	.L98
.L90:
	movs	r0, #0
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L129:
	add	r0, sp, #80
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L92
.L131:
	mov	r0, r4
	mov	r1, r5
	bl	_libaroma_listitem_menu_release_internal(PLT)
	mov	r0, r6
	b	.L89
.L133:
	.align	3
.L132:
	.word	-1840700270
	.word	1070745892
	.word	.LANCHOR0-(.LPIC3+4)
	.size	libaroma_listitem_menu, .-libaroma_listitem_menu
	.section	.data.rel._libaroma_listitem_menu_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_listitem_menu_handler, %object
	.size	_libaroma_listitem_menu_handler, 12
_libaroma_listitem_menu_handler:
	.word	_libaroma_listitem_menu_message
	.word	_libaroma_listitem_menu_draw
	.word	_libaroma_listitem_menu_destroy
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
