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
	.file	"listitem_image.c"
	.global	__aeabi_idiv
	.section	.text._libaroma_listitem_image_message,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_image_message
	.thumb
	.thumb_func
	.type	_libaroma_listitem_image_message, %function
_libaroma_listitem_image_message:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r1
	ldr	r5, .L18
	sub	sp, sp, #8
	ldr	r1, [r1, #20]
.LPIC0:
	add	r5, pc
	cmp	r1, r5
	beq	.L17
.L9:
	movs	r3, #0
.L2:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L17:
	cmp	r2, #5
	mov	r6, r0
	ldr	r5, [r4, #12]
	beq	.L4
	cmp	r2, #16
	beq	.L5
	cmp	r2, #2
	bne	.L9
	cmp	r3, #16
	beq	.L9
	ldrh	r0, [r0]
	movs	r1, #0
	ldr	r2, [r4, #8]
	mov	r3, r1
	str	r4, [sp]
	orr	r0, r0, #16777216
	bl	libaroma_window_post_command_ex(PLT)
	movs	r3, #0
	b	.L2
.L4:
	ldrh	r0, [r0]
	movs	r1, #0
	ldr	r2, [r4, #8]
	mov	r3, r1
	str	r4, [sp]
	orr	r0, r0, #33554432
	bl	libaroma_window_post_command_ex(PLT)
	movs	r3, #0
	b	.L2
.L5:
	ldrh	r3, [r4, #16]
	lsls	r3, r3, #30
	bpl	.L9
	movs	r1, #0
	bl	libaroma_ctl_scroll_get_scroll(PLT)
	ldr	r3, [r5, #8]
	cmp	r0, r3
	beq	.L9
	ldr	r1, [r6, #28]
	ldr	r3, [r4]
	str	r0, [r5, #8]
	adds	r2, r0, r1
	cmp	r2, r3
	blt	.L9
	ldr	r4, [r4, #4]
	adds	r6, r3, r4
	cmp	r0, r6
	bge	.L9
	subs	r0, r2, r3
	mul	r0, r0, r4
	bl	__aeabi_idiv(PLT)
	movs	r3, #1
	str	r0, [r5, #12]
	b	.L2
.L19:
	.align	2
.L18:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_listitem_image_message, .-_libaroma_listitem_image_message
	.section	.text._libaroma_listitem_image_draw,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_image_draw
	.thumb
	.thumb_func
	.type	_libaroma_listitem_image_draw, %function
_libaroma_listitem_image_draw:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	fstmfdd	sp!, {d8}
	sub	sp, sp, #60
	ldrb	r4, [sp, #104]	@ zero_extendqisi2
	lsls	r5, r4, #27
	bmi	.L20
	mov	r6, r2
	ldr	r2, .L63
	mov	r7, r3
	ldr	r3, [r1, #20]
	mov	r5, r1
.LPIC1:
	add	r2, pc
	cmp	r3, r2
	beq	.L60
.L20:
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L60:
	ldr	r9, [r1, #12]
	mov	r8, r0
	mov	r0, r7
	bl	libaroma_color_isdark(PLT)
	ldrh	r10, [r5, #16]
	ldr	lr, [r9, #4]
	str	r0, [sp, #40]
	and	fp, r10, #4096
	uxth	fp, fp
	cmp	lr, #0
	beq	.L24
	cmp	fp, #0
	bne	.L61
	ldr	r2, [lr]
	ldr	r3, [r6]
	cmp	r2, r3
	bne	.L29
	ldr	r2, [lr, #4]
	ldr	r3, [r6, #4]
	cmp	r2, r3
	beq	.L30
.L29:
	add	r0, r9, #4
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r9, #4]
.L31:
	movs	r3, #0
	ldr	r0, [r6]
	ldr	r1, [r6, #4]
	mov	r2, r3
	str	r3, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r9, #4]
.L32:
	ldr	r2, [r0, #4]
	movs	r1, #0
	mov	r8, #255
	ldr	r3, [r0]
	stmia	sp, {r2, r7, r8}
	mov	r2, r1
	bl	libaroma_draw_rect(PLT)
	ldr	r1, [r9, #4]
	cmp	r1, #0
	beq	.L34
	and	lr, r10, #256
	uxth	lr, lr
	cmp	lr, #0
	beq	.L35
	and	lr, r10, #512
	uxth	lr, lr
	cmp	lr, #0
	beq	.L36
	ldr	r0, [r9]
	mov	r8, #0
	flds	s17, [r1]	@ int
	ldr	r3, [r1, #4]
	flds	s0, [r0]	@ int
	flds	s14, [r0, #4]	@ int
	fsitos	s15, s17
	str	r3, [sp, #32]
	fsitos	s0, s0
	fsitos	s14, s14
	fdivs	s15, s15, s0
	fmuls	s16, s15, s14
	ftosizs	s13, s16
	fmrs	r2, s13	@ int
	cmp	r3, r2
	ittt	gt
	fmsrgt	s13, r3	@ int
	fsitosgt	s15, s13
	fdivsgt	s15, s15, s14
	fmuls	s0, s15, s0
	it	gt
	fmulsgt	s16, s15, s14
	bl	ceilf(PLT)
	ftosizs	s0, s0
	fsts	s0, [sp, #36]	@ int
	fcpys	s0, s16
	bl	ceilf(PLT)
	ldr	r0, [sp, #36]
	fmrs	r1, s17	@ int
	ftosizs	s0, s0
	subs	r2, r0, r1
	add	r2, r2, r2, lsr #31
	asrs	r2, r2, #1
	fsts	s0, [sp, #44]	@ int
	fmsr	s0, r2	@ int
	fsitod	d0, s0
	bl	floor(PLT)
	ldr	r2, [sp, #44]
	ldr	r3, [sp, #32]
	ftosizd	s17, d0
	subs	r3, r2, r3
	add	r3, r3, r3, lsr #31
	asrs	r3, r3, #1
	fmsr	s0, r3	@ int
	fsitod	d0, s0
	bl	floor(PLT)
	ldr	r0, [sp, #36]
	mov	r2, r8
	ldr	r1, [sp, #44]
	mov	r3, r8
	str	r8, [sp]
	ftosizd	s16, d0
	bl	libaroma_canvas_new_ex(PLT)
	mov	lr, r0
	str	r0, [sp, #48]
	cmp	r0, #0
	beq	.L38
	mov	r1, r7
	movs	r2, #255
	bl	libaroma_canvas_setcolor(PLT)
	ldr	r7, [sp, #36]
	mov	r2, r8
	ldr	lr, [r9]
	mov	r3, r8
	str	r8, [sp, #8]
	str	r7, [sp]
	ldr	r7, [sp, #44]
	mov	r1, lr
	str	r8, [sp, #12]
	str	r7, [sp, #4]
	add	r7, sp, #56
	ldr	r0, [lr]
	str	r7, [sp, #36]
	ldr	r7, [sp, #48]
	str	r0, [sp, #16]
	ldr	r0, [lr, #4]
	str	r0, [sp, #20]
	mov	r0, r7
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r7, [sp, #36]
	mov	ip, #255
	ldr	lr, [r9, #4]
	mov	r2, r8
	fsts	s17, [sp]	@ int
	mov	r3, r8
	fsts	s16, [sp, #4]	@ int
	ldr	r1, [r7, #-8]!
	mov	r0, lr
	str	r7, [sp, #36]
	ldr	r7, [lr]
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	r8, [sp, #16]
	str	r8, [sp, #24]
	str	r7, [sp, #12]
	str	r8, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r0, [sp, #36]
	mov	r1, r8
	bl	libaroma_canvas_free_ex1(PLT)
.L40:
	ldr	lr, [r9, #4]
	cmp	lr, #0
	beq	.L34
	cmp	fp, #0
	beq	.L30
	ldmia	r6, {r0, ip}
.L27:
	movs	r7, #0
	ldr	fp, [r5, #4]
	str	r7, [sp]
	mov	r8, #255
	ldr	r9, [r9, #12]
	mov	r2, r7
	str	r0, [sp, #8]
	mov	r1, lr
	str	r7, [sp, #16]
	mov	r3, r7
	rsb	r9, r9, fp
	str	r7, [sp, #24]
	str	r7, [sp, #28]
	mov	r0, r6
	str	ip, [sp, #12]
	str	r9, [sp, #4]
	str	r8, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L34:
	ldr	r0, [r5, #28]
	ldr	r7, [sp, #40]
	adds	r5, r7, #0
	it	ne
	movne	r5, #1
	cbz	r0, .L44
	tst	r10, #4
	bne	.L62
.L44:
	movs	r0, #0
.L43:
	lsls	r3, r4, #31
	bpl	.L20
	ldmia	r6, {r4, r7}
	negs	r5, r5
	uxth	r5, r5
	bl	libaroma_dp(PLT)
	movs	r2, #80
	subs	r0, r7, r0
	movs	r1, #0
	stmia	sp, {r0, r5}
	str	r2, [sp, #8]
	mov	r3, r4
	mov	r0, r6
	mov	r2, r1
	bl	libaroma_draw_rect(PLT)
	b	.L20
.L61:
	ldr	r3, [lr]
	ldr	r0, [r6]
	cmp	r3, r0
	bne	.L26
	ldr	ip, [r6, #4]
	ldr	r3, [lr, #4]
	cmp	r3, ip, lsl #1
	beq	.L27
.L26:
	add	r0, r9, #4
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r9, #4]
.L28:
	ldr	r1, [r6, #4]
	mov	ip, #0
	ldr	r0, [r6]
	mov	r2, ip
	mov	r3, ip
	str	ip, [sp]
	str	ip, [sp, #32]
	lsls	r1, r1, #1
	bl	libaroma_canvas_new_ex(PLT)
	ldr	ip, [sp, #32]
	mov	r3, #-1
	str	r0, [r9, #4]
	mov	r1, r5
	str	r3, [r9, #8]
	mov	r0, r8
	str	ip, [sp]
	mov	r3, ip
	str	ip, [sp, #4]
	movs	r2, #16
	bl	_libaroma_listitem_image_message(PLT)
	ldr	r0, [r9, #4]
	b	.L32
.L30:
	mov	ip, #0
	mov	r8, #255
	str	ip, [sp]
	mov	r2, ip
	str	ip, [sp, #4]
	mov	r1, lr
	ldr	r7, [lr]
	mov	r3, ip
	mov	r0, r6
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	ip, [sp, #16]
	str	ip, [sp, #24]
	str	r7, [sp, #12]
	str	ip, [sp, #28]
	str	r8, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L34
.L62:
	bl	libaroma_listitem_nonitem(PLT)
	mov	r7, r0
	cmp	r0, #0
	bne	.L44
	ldr	r9, [r6, #4]
	movs	r0, #1
	bl	libaroma_dp(PLT)
	ldr	r8, [r6]
	rsb	r9, r0, r9
	movs	r0, #1
	bl	libaroma_dp(PLT)
	movw	r3, #57083
	movw	ip, #21162
	cmp	r5, #0
	it	eq
	moveq	ip, r3
	mov	lr, #204
	str	r0, [sp]
	mov	r2, r9
	mov	r3, r8
	mov	r1, r7
	str	ip, [sp, #4]
	mov	r0, r6
	str	lr, [sp, #8]
	bl	libaroma_draw_rect(PLT)
	movs	r0, #1
	b	.L43
.L24:
	cmp	fp, #0
	beq	.L31
	b	.L28
.L35:
	ldr	r3, [r9]
	mov	r0, r1
	ldmia	r1, {r7, ip}
	ldr	r2, [r3]
	mov	r1, r3
	ldr	r3, [r3, #4]
	str	lr, [sp]
	str	r2, [sp, #8]
	asrs	r2, r2, #1
	str	r3, [sp, #12]
	asrs	r3, r3, #1
	str	lr, [sp, #4]
	rsb	r2, r2, r7, asr #1
	movs	r7, #1
	str	r8, [sp, #20]
	rsb	r3, r3, ip, asr #1
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	str	r7, [sp, #16]
	bl	libaroma_draw_ex2(PLT)
	b	.L40
.L36:
	ldr	r7, [r1]
	mov	r0, r1
	ldr	ip, [r9]
	mov	r2, lr
	mov	r3, lr
	str	r7, [sp]
	ldr	r1, [r1, #4]
	str	lr, [sp, #8]
	str	lr, [sp, #12]
	str	r1, [sp, #4]
	mov	r1, ip
	ldr	r7, [ip]
	str	r7, [sp, #16]
	ldr	r7, [ip, #4]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	b	.L40
.L38:
	ldr	ip, [r9, #4]
	mov	r2, r0
	ldr	r8, [r9]
	mov	r3, r0
	ldr	r7, [ip]
	mov	r0, ip
	mov	r1, r8
	str	r7, [sp]
	ldr	r7, [ip, #4]
	str	lr, [sp, #8]
	str	lr, [sp, #12]
	str	r7, [sp, #4]
	ldr	r7, [r8]
	str	r7, [sp, #16]
	ldr	r7, [r8, #4]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	b	.L40
.L64:
	.align	2
.L63:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	_libaroma_listitem_image_draw, .-_libaroma_listitem_image_draw
	.section	.text._libaroma_listitem_image_release_internal,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_image_release_internal
	.thumb
	.thumb_func
	.type	_libaroma_listitem_image_release_internal, %function
_libaroma_listitem_image_release_internal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0]
	push	{r4, lr}
	mov	r4, r0
	cbz	r3, .L66
	and	r1, r1, #3072
	cmp	r1, #1024
	beq	.L66
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L66:
	ldr	r3, [r4, #4]
	cbz	r3, .L67
	adds	r0, r4, #4
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L67:
	mov	r0, r4
	pop	{r4, lr}
	b	free(PLT)
	.size	_libaroma_listitem_image_release_internal, .-_libaroma_listitem_image_release_internal
	.section	.text._libaroma_listitem_image_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_image_destroy
	.thumb
	.thumb_func
	.type	_libaroma_listitem_image_destroy, %function
_libaroma_listitem_image_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L81
	ldr	r3, [r1, #20]
.LPIC2:
	add	r2, pc
	cmp	r3, r2
	beq	.L80
	bx	lr
.L80:
	ldr	r0, [r1, #12]
	ldrh	r1, [r1, #16]
	b	_libaroma_listitem_image_release_internal(PLT)
.L82:
	.align	2
.L81:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_listitem_image_destroy, .-_libaroma_listitem_image_destroy
	.section	.text.libaroma_listitem_image,"ax",%progbits
	.align	2
	.global	libaroma_listitem_image
	.thumb
	.thumb_func
	.type	libaroma_listitem_image, %function
libaroma_listitem_image:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #20
	mov	r8, r1
	mov	r6, r2
	mov	r7, r3
	mov	r9, r0
	ldrh	r4, [sp, #48]
	bl	libaroma_ctl_list_is_valid(PLT)
	cbz	r0, .L86
	cbz	r6, .L86
	movs	r0, #16
	movs	r1, #1
	bl	calloc(PLT)
	mov	r5, r0
	cbz	r0, .L86
	movs	r3, #0
	str	r6, [r0]
	str	r3, [r0, #4]
	cbnz	r7, .L87
	ldr	r2, [r6, #4]
.L88:
	lsls	r3, r4, #19
	ldr	r3, .L102
	ldr	r6, [sp, #52]
	itt	mi
	orrmi	r4, r4, #768
	orrmi	r4, r4, #2
	mov	r0, r9
.LPIC3:
	add	r3, pc
	str	r5, [sp]
	str	r6, [sp, #8]
	mov	r1, r8
	str	r3, [sp, #4]
	mov	r3, r4
	bl	libaroma_ctl_list_add_item_internal(PLT)
	mov	r6, r0
	cbz	r6, .L101
.L85:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L87:
	mov	r0, r7
	bl	libaroma_window_measure_point(PLT)
	mov	r2, r0
	b	.L88
.L86:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L101:
	mov	r0, r5
	mov	r1, r4
	bl	_libaroma_listitem_image_release_internal(PLT)
	mov	r0, r6
	b	.L85
.L103:
	.align	2
.L102:
	.word	.LANCHOR0-(.LPIC3+4)
	.size	libaroma_listitem_image, .-libaroma_listitem_image
	.section	.data.rel._libaroma_listitem_image_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_listitem_image_handler, %object
	.size	_libaroma_listitem_image_handler, 12
_libaroma_listitem_image_handler:
	.word	_libaroma_listitem_image_message
	.word	_libaroma_listitem_image_draw
	.word	_libaroma_listitem_image_destroy
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
