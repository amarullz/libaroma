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
	.file	"ctl_button.c"
	.section	.text._libaroma_ctl_button_thread,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_button_thread
	.thumb
	.thumb_func
	.type	_libaroma_ctl_button_thread, %function
_libaroma_ctl_button_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L15
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0, #72]
.LPIC0:
	add	r2, pc
	cmp	r3, r2
	it	ne
	movne	r5, #0
	beq	.L13
.L2:
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.L13:
	ldr	r0, [r0, #4]
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	ldrb	r5, [r0, #8]	@ zero_extendqisi2
	and	r3, r3, #4
	and	r1, r3, #255
	cbz	r3, .L3
	adds	r5, r5, #0
	it	ne
	movne	r5, #1
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.L3:
	adds	r0, r0, #12
	bl	libaroma_ripple_thread(PLT)
	lsls	r2, r0, #31
	it	mi
	movmi	r5, #1
	bpl	.L14
.L5:
	lsls	r3, r0, #29
	bpl	.L2
	ldrh	r0, [r4]
	orr	r0, r0, #33554432
	bl	libaroma_window_post_command(PLT)
	b	.L2
.L14:
	adds	r5, r5, #0
	it	ne
	movne	r5, #1
	b	.L5
.L16:
	.align	2
.L15:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_ctl_button_thread, .-_libaroma_ctl_button_thread
	.section	.text._libaroma_ctl_button_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_button_destroy
	.thumb
	.thumb_func
	.type	_libaroma_ctl_button_destroy, %function
_libaroma_ctl_button_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L33
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #72]
.LPIC1:
	add	r2, pc
	cmp	r3, r2
	beq	.L32
	pop	{r3, r4, r5, pc}
.L32:
	ldr	r4, [r0, #4]
	add	r5, r4, #164
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #176]
	cbz	r3, .L19
	add	r0, r4, #176
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #176]
.L19:
	ldr	r3, [r4, #180]
	cbz	r3, .L20
	add	r0, r4, #180
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #180]
.L20:
	ldr	r0, [r4]
	cbz	r0, .L21
	bl	free(PLT)
.L21:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	free(PLT)
.L34:
	.align	2
.L33:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	_libaroma_ctl_button_destroy, .-_libaroma_ctl_button_destroy
	.section	.text._libaroma_ctl_button_msg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_button_msg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_button_msg, %function
_libaroma_ctl_button_msg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L55
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
.LPIC2:
	add	r2, pc
	sub	sp, sp, #20
	cmp	r3, r2
	beq	.L52
.L36:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L52:
	ldrb	r3, [r1]	@ zero_extendqisi2
	mov	r5, r1
	ldr	r6, [r0, #4]
	cmp	r3, #130
	bhi	.L37
	cmp	r3, #129
	bcs	.L38
	cmp	r3, #6
	bne	.L36
	ldrb	r3, [r6, #4]	@ zero_extendqisi2
	and	r3, r3, #4
	and	r0, r3, #255
	cmp	r3, #0
	bne	.L36
	ldr	r7, [r1, #8]
	mov	r2, sp
	mov	r1, r4
	add	r3, sp, #8
	str	r7, [sp]
	ldr	r7, [r5, #12]
	str	r7, [sp, #8]
	bl	libaroma_window_calculate_pos(PLT)
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L53
	cbz	r1, .L54
	cmp	r1, #2
	bne	.L36
	ldr	r1, [sp]
	cmp	r1, #0
	blt	.L46
	ldr	r2, [sp, #8]
	cmp	r2, #0
	blt	.L46
	ldr	r3, [r4, #24]
	cmp	r1, r3
	bge	.L46
	ldr	r3, [r4, #28]
	cmp	r2, r3
	blt	.L47
.L46:
	add	r0, r6, #12
	bl	libaroma_ripple_cancel(PLT)
	b	.L36
.L37:
	cmp	r3, #132
	bne	.L36
.L38:
	add	r4, r6, #164
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	movs	r3, #1
	mov	r0, r4
	strb	r3, [r6, #8]
	bl	omp_unset_nest_lock(PLT)
	b	.L36
.L54:
	add	r0, r6, #12
	bl	libaroma_ripple_up(PLT)
	and	r0, r0, #6
	cmp	r0, #2
	bne	.L36
	ldrh	r0, [r4]
	orr	r0, r0, #16777216
	bl	libaroma_window_post_command(PLT)
	b	.L36
.L53:
	add	r0, r6, #12
	ldr	r1, [sp]
	ldr	r2, [sp, #8]
	bl	libaroma_ripple_down(PLT)
	b	.L36
.L47:
	add	r0, r6, #12
	bl	libaroma_ripple_move(PLT)
	b	.L36
.L56:
	.align	2
.L55:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_ctl_button_msg, .-_libaroma_ctl_button_msg
	.section	.text.libaroma_ctl_button_width,"ax",%progbits
	.align	2
	.global	libaroma_ctl_button_width
	.thumb
	.thumb_func
	.type	libaroma_ctl_button_width, %function
libaroma_ctl_button_width:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	mov	r4, r0
	bl	libaroma_fb(PLT)
	movs	r1, #100
	movs	r3, #64
	ldr	r2, [r0]
	movt	r3, 177
	mov	r0, r4
	str	r1, [sp]
	movs	r1, #0
	bl	libaroma_text(PLT)
	mov	r4, r0
	cbz	r0, .L59
	bl	libaroma_text_width(PLT)
	mov	r5, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	add	r5, r5, r0
	mov	r0, r4
	bl	libaroma_text_free(PLT)
	mov	r0, r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L59:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
	.size	libaroma_ctl_button_width, .-libaroma_ctl_button_width
	.section	.text._libaroma_ctl_button_internal_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_button_internal_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_button_internal_draw, %function
_libaroma_ctl_button_internal_draw:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #8]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #108
	ldr	r5, [r0, #4]
	cmp	r3, #0
	beq	.L61
	add	r6, r5, #164
	mov	r8, #0
	mov	r0, r6
	str	r6, [sp, #56]
	bl	omp_set_nest_lock(PLT)
	ldrb	r6, [r5, #4]	@ zero_extendqisi2
	mov	r2, r8
	ldr	r0, [r4, #24]
	mov	r3, r8
	ldr	r1, [r4, #28]
	ubfx	r6, r6, #2, #1
	str	r8, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #44]
	ldr	r0, [r4, #24]
	cmp	r6, #0
	beq	.L116
	ldr	r1, [r4, #28]
	mov	r2, r8
	mov	r3, r8
	str	r8, [sp]
	str	r8, [sp, #52]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r1, [sp, #44]
	str	r0, [sp, #72]
	mov	r0, r4
	bl	libaroma_control_erasebg(PLT)
.L86:
	ldr	r1, [sp, #72]
	mov	r0, r4
	bl	libaroma_control_erasebg(PLT)
	ldrb	fp, [r5, #4]	@ zero_extendqisi2
	ubfx	fp, fp, #3, #1
	cmp	fp, #0
	ite	eq
	moveq	r0, #4
	movne	r0, #6
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #6
	bl	libaroma_dp(PLT)
	str	r0, [sp, #48]
	ldr	r0, [r4, #24]
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	ldr	r2, [r4, #28]
	ldr	r7, [sp, #48]
	and	r3, r3, #2
	sub	r0, r0, r8, lsl #1
	and	r1, r3, #255
	str	r0, [sp, #60]
	sub	r10, r2, r7, lsl #1
	cmp	r3, #0
	beq	.L65
	ldrh	r0, [r5, #6]
	bl	libaroma_color_isdark(PLT)
	strb	r0, [r5, #5]
.L66:
	mov	r9, #0
	movw	lr, #65535
	cmp	r0, r9
	mov	r1, r10
	ite	eq
	moveq	r7, r9
	movne	r7, lr
	mov	r3, r9
	str	r7, [sp, #64]
	str	r9, [sp]
	ite	ne
	movne	r7, #50
	moveq	r7, #30
	movs	r2, #1
	ldr	r0, [sp, #60]
	str	r7, [sp, #68]
	bl	libaroma_canvas_new_ex(PLT)
	mov	r1, r9
	mov	r2, r9
	str	r0, [sp, #80]
	bl	libaroma_canvas_setcolor(PLT)
	ldr	r9, [sp, #80]
	ldr	r10, [r4, #24]
	cmp	fp, #0
	beq	.L117
	movs	r0, #12
	bl	libaroma_dp(PLT)
	rsb	r10, r0, r10
	movs	r0, #12
	ldr	fp, [r4, #28]
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #28]
	rsb	fp, r0, fp
	cmp	r3, r2
	it	lt
	movlt	r3, r2
.L87:
	movs	r2, #0
	mov	lr, #255
	movw	ip, #4369
	mov	r1, r2
	str	r3, [sp, #12]
	mov	r0, r9
	mov	r3, r10
	str	r2, [sp, #4]
	str	r2, [sp, #8]
	str	r2, [sp, #28]
	str	fp, [sp]
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	str	lr, [sp, #24]
	bl	libaroma_gradient_ex1(PLT)
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bpl	.L70
	tst	r3, #2
	ldr	r1, [sp, #80]
	ite	eq
	moveq	r3, #1
	movne	r3, #2
	str	r3, [sp]
	mov	r2, r8
	ldr	r0, [sp, #44]
	ldr	r3, [sp, #48]
	bl	libaroma_draw_zshadow(PLT)
	cmp	r6, #0
	beq	.L118
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	lsls	r2, r3, #30
	bpl	.L114
.L90:
	ldr	ip, [sp, #80]
	mov	r9, #0
	ldr	r7, [sp, #48]
	mov	lr, #255
	str	r8, [sp]
	mov	r2, r9
	mov	r3, r9
	mov	r0, ip
	str	r7, [sp, #4]
	ldr	r7, [ip]
	ldr	r1, [sp, #72]
	str	r7, [sp, #8]
	ldr	r7, [ip, #4]
	str	r9, [sp, #16]
	str	r9, [sp, #24]
	str	r9, [sp, #28]
	str	lr, [sp, #20]
	str	r7, [sp, #12]
	bl	libaroma_draw_ex2(PLT)
	ldr	r3, [sp, #80]
	mov	ip, #127
	mov	r1, r9
	mov	r2, r9
	ldr	lr, [r3, #4]
	mov	r0, r3
	ldr	r3, [r3]
	str	lr, [sp]
	ldrb	lr, [r5, #5]	@ zero_extendqisi2
	str	ip, [sp, #8]
	subs	lr, lr, r9
	it	ne
	movne	lr, #-1
	uxth	lr, lr
	str	lr, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	lsls	r1, r3, #31
	it	pl
	ldrhpl	r9, [r5, #6]
	bmi	.L119
.L78:
	cmp	r6, #0
	beq	.L120
.L79:
	movs	r0, #16
	ldr	r6, [r5]
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #60]
	mov	lr, #100
	movs	r3, #64
	ldr	r1, [sp, #64]
	str	lr, [sp]
	movt	r3, 433
	subs	r2, r7, r0
	mov	r0, r6
	bl	libaroma_text(PLT)
	ldr	r3, [r4, #28]
	mov	r6, r0
	mov	r9, #0
	asr	r10, r3, #1
	bl	libaroma_text_height(PLT)
	mov	fp, r0
	movs	r0, #2
	bl	libaroma_dp(PLT)
	ldrb	r2, [r5, #5]	@ zero_extendqisi2
	add	fp, r0, fp, asr #1
	movs	r0, #8
	rsb	fp, fp, r10
	subs	r10, r2, r9
	it	ne
	movne	r10, #-1
	uxth	r10, r10
	bl	libaroma_dp(PLT)
	mov	lr, #10
	add	r2, r0, r8
	mov	r3, fp
	mov	r1, r6
	str	lr, [sp, #12]
	str	r10, [sp, #20]
	str	r9, [sp]
	ldr	r0, [sp, #44]
	str	r9, [sp, #4]
	str	r9, [sp, #8]
	str	r9, [sp, #16]
	str	r9, [sp, #24]
	str	r9, [sp, #28]
	str	r9, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	ldrb	ip, [r5, #5]	@ zero_extendqisi2
	mov	r2, r9
	ldr	lr, [r4, #24]
	mov	r3, r9
	ldr	r7, [r4, #28]
	cmp	ip, r9
	ite	eq
	moveq	r4, #189
	movne	r4, #171
	ldr	r1, [sp, #72]
	ldr	r0, [sp, #44]
	str	r4, [sp, #20]
	str	r9, [sp]
	str	r9, [sp, #4]
	str	r9, [sp, #16]
	str	r9, [sp, #24]
	str	r9, [sp, #28]
	str	lr, [sp, #8]
	str	r7, [sp, #12]
	bl	libaroma_draw_ex2(PLT)
.L88:
	mov	r0, r6
	bl	libaroma_text_free(PLT)
	add	r0, sp, #72
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	add	r0, sp, #80
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r3, [r5, #176]
	ldr	r2, [r5, #180]
	ldr	r4, [sp, #44]
	ldr	r6, [sp, #52]
	str	r3, [sp, #88]
	str	r4, [r5, #176]
	str	r2, [sp, #96]
	str	r6, [r5, #180]
	cbz	r3, .L83
	add	r0, sp, #88
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r2, [sp, #96]
.L83:
	cbz	r2, .L84
	add	r0, sp, #96
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L84:
	movs	r3, #1
	ldr	r0, [sp, #56]
	strb	r3, [r5, #8]
	bl	omp_unset_nest_lock(PLT)
.L61:
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L116:
	ldr	r1, [r4, #28]
	mov	r2, r6
	mov	r3, r6
	str	r6, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r1, [r4, #28]
	mov	r2, r6
	str	r0, [sp, #52]
	mov	r3, r6
	ldr	r0, [r4, #24]
	str	r6, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r1, [sp, #44]
	str	r0, [sp, #72]
	mov	r0, r4
	bl	libaroma_control_erasebg(PLT)
	mov	r0, r4
	ldr	r1, [sp, #52]
	bl	libaroma_control_erasebg(PLT)
	b	.L86
.L70:
	lsls	r0, r3, #30
	bpl	.L75
	cmp	r6, #0
	bne	.L90
.L73:
	ldr	r0, [sp, #80]
	movs	r1, #0
	movs	r2, #255
	ldmia	r0, {r3, lr}
	str	lr, [sp]
	ldrh	lr, [r5, #6]
	str	r2, [sp, #8]
	mov	r2, r1
	str	lr, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	lsls	r1, r3, #31
	it	pl
	ldrhpl	r9, [r5, #6]
	bpl	.L78
.L119:
	ldr	r0, [sp, #80]
	movs	r2, #0
	str	r2, [sp]
	movs	r3, #1
	str	r2, [sp, #4]
	mov	lr, #255
	ldr	r7, [r0]
	mov	r1, r0
	ldr	r9, [sp, #64]
	str	r7, [sp, #8]
	ldr	r7, [r0, #4]
	str	r2, [sp, #24]
	str	r2, [sp, #28]
	mov	r2, r8
	str	r3, [sp, #16]
	ldr	r0, [sp, #44]
	str	r7, [sp, #12]
	ldr	r3, [sp, #48]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	cmp	r6, #0
	bne	.L79
.L120:
	ldr	r0, [sp, #80]
	mov	r1, r6
	mov	r2, r6
	ldmia	r0, {r3, r7}
	str	r7, [sp]
	ldr	r7, [sp, #64]
	str	r7, [sp, #4]
	ldr	r7, [sp, #68]
	str	r7, [sp, #8]
	bl	libaroma_draw_rect(PLT)
	ldr	r2, [sp, #80]
	mov	ip, #1
	str	r6, [sp]
	mov	lr, #255
	str	r6, [sp, #4]
	ldr	r7, [r2]
	mov	r1, r2
	ldr	r3, [sp, #48]
	ldr	r0, [sp, #52]
	str	r7, [sp, #8]
	ldr	r7, [r2, #4]
	mov	r2, r8
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	str	r7, [sp, #12]
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L80
.L118:
	movs	r3, #3
	ldr	r1, [sp, #80]
	str	r3, [sp]
	mov	r2, r8
	ldr	r3, [sp, #48]
	ldr	r0, [sp, #52]
	bl	libaroma_draw_zshadow(PLT)
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	lsls	r7, r3, #30
	bmi	.L73
.L114:
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L75
	ldr	r3, [sp, #80]
	mov	lr, #0
	ldr	r7, [sp, #48]
	mov	ip, #255
	str	r8, [sp]
	mov	r2, lr
	mov	r0, r3
	ldr	r1, [sp, #72]
	str	r7, [sp, #4]
	ldr	r7, [r3]
	str	r7, [sp, #8]
	ldr	r3, [r3, #4]
	str	lr, [sp, #16]
	str	lr, [sp, #24]
	str	r3, [sp, #12]
	mov	r3, lr
	str	lr, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	cbnz	r6, .L81
	ldr	r2, [sp, #80]
	movw	lr, #65535
	ldrb	ip, [r5, #5]	@ zero_extendqisi2
	mov	r1, r6
	ldr	r7, [r2, #4]
	mov	r0, r2
	ldr	r3, [r2]
	cmp	ip, #0
	ite	eq
	moveq	r2, #49
	movne	r2, #20
	str	r2, [sp, #8]
	mov	r2, r6
	stmia	sp, {r7, lr}
	bl	libaroma_draw_rect(PLT)
.L81:
	ldr	r0, [sp, #80]
	movs	r2, #0
	str	r2, [sp]
	movs	r3, #1
	str	r2, [sp, #4]
	mov	lr, #255
	ldr	r7, [r0]
	mov	r1, r0
	str	r7, [sp, #8]
	ldr	r7, [r0, #4]
	str	r2, [sp, #24]
	str	r2, [sp, #28]
	mov	r2, r8
	str	r3, [sp, #16]
	ldr	r0, [sp, #44]
	str	r7, [sp, #12]
	ldr	r3, [sp, #48]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L75:
	cmp	r6, #0
	bne	.L79
	ldr	lr, [sp, #80]
	mov	r10, #255
	ldr	r7, [sp, #48]
	mov	r2, r6
	str	r8, [sp]
	mov	r3, r6
	mov	r0, lr
	ldr	r1, [sp, #72]
	str	r7, [sp, #4]
	ldr	r7, [lr]
	ldr	r9, [sp, #64]
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	r6, [sp, #16]
	str	r6, [sp, #24]
	str	r7, [sp, #12]
	str	r6, [sp, #28]
	str	r10, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r0, [sp, #80]
	mov	r1, r6
	mov	r2, r6
	ldmia	r0, {r3, r7}
	str	r7, [sp]
	ldr	r7, [sp, #64]
	str	r7, [sp, #4]
	ldr	r7, [sp, #68]
	str	r7, [sp, #8]
	bl	libaroma_draw_rect(PLT)
	ldr	lr, [sp, #80]
	mov	ip, #1
	str	r6, [sp]
	mov	r2, r8
	str	r6, [sp, #4]
	ldr	r7, [lr]
	mov	r1, lr
	ldr	r3, [sp, #48]
	ldr	r0, [sp, #52]
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	r10, [sp, #20]
	str	r6, [sp, #24]
	str	r7, [sp, #12]
	str	r6, [sp, #28]
	str	ip, [sp, #16]
	bl	libaroma_draw_ex2(PLT)
.L80:
	movs	r0, #16
	ldr	r6, [r5]
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #60]
	mov	lr, #100
	movs	r3, #64
	ldr	r1, [sp, #64]
	str	lr, [sp]
	movt	r3, 433
	subs	r2, r7, r0
	mov	r0, r6
	bl	libaroma_text(PLT)
	ldr	r4, [r4, #28]
	mov	r6, r0
	bl	libaroma_text_height(PLT)
	mov	r10, #0
	asr	fp, r4, #1
	mov	r4, r0
	movs	r0, #2
	bl	libaroma_dp(PLT)
	add	r4, r0, r4, asr #1
	movs	r0, #8
	bl	libaroma_dp(PLT)
	rsb	r4, r4, fp
	mov	lr, #10
	add	r2, r0, r8
	mov	r3, r4
	mov	r1, r6
	str	lr, [sp, #12]
	str	r9, [sp, #20]
	str	r10, [sp]
	ldr	r0, [sp, #44]
	str	r10, [sp, #4]
	str	r10, [sp, #8]
	str	r10, [sp, #16]
	str	r10, [sp, #24]
	str	r10, [sp, #28]
	str	r10, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	movs	r0, #8
	bl	libaroma_dp(PLT)
	mov	r3, r4
	add	r2, r0, r8
	str	r10, [sp]
	mov	r1, r6
	str	r10, [sp, #4]
	str	r10, [sp, #8]
	ldr	r0, [sp, #52]
	str	r10, [sp, #12]
	str	r10, [sp, #16]
	str	r10, [sp, #20]
	str	r10, [sp, #24]
	str	r10, [sp, #28]
	str	r10, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	b	.L88
.L117:
	movs	r0, #8
	bl	libaroma_dp(PLT)
	ldr	fp, [r4, #28]
	rsb	r10, r0, r10
	movs	r0, #12
	bl	libaroma_dp(PLT)
	rsb	fp, r0, fp
	movs	r0, #2
	bl	libaroma_dp(PLT)
	mov	r3, r0
	b	.L87
.L65:
	mov	r0, r4
	bl	libaroma_colorget(PLT)
	ldrh	r0, [r0, #10]
	bl	libaroma_color_isdark(PLT)
	strb	r0, [r5, #5]
	b	.L66
	.size	_libaroma_ctl_button_internal_draw, .-_libaroma_ctl_button_internal_draw
	.section	.text._libaroma_ctl_button_req_internal_draw_thread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_button_req_internal_draw_thread, %function
_libaroma_ctl_button_req_internal_draw_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	_libaroma_ctl_button_internal_draw(PLT)
	movs	r0, #0
	pop	{r3, pc}
	.size	_libaroma_ctl_button_req_internal_draw_thread, .-_libaroma_ctl_button_req_internal_draw_thread
	.section	.text._libaroma_ctl_button_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_button_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_button_draw, %function
_libaroma_ctl_button_draw:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L161
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
.LPIC3:
	add	r2, pc
	sub	sp, sp, #156
	cmp	r3, r2
	beq	.L158
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L158:
	ldr	r7, [r0, #4]
	mov	r6, r1
	add	r4, r7, #164
	mov	r0, r4
	str	r4, [sp, #80]
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r7, #176]
	cmp	r3, #0
	beq	.L125
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L125
.L126:
	mov	r8, #0
	mov	r0, r5
	strb	r8, [r7, #8]
	mov	r1, r6
	bl	libaroma_control_erasebg(PLT)
	ldrb	r3, [r7, #4]	@ zero_extendqisi2
	and	r3, r3, #4
	and	r9, r3, #255
	cmp	r3, #0
	bne	.L159
	ldr	lr, [r7, #176]
	mov	ip, #255
	str	r9, [sp]
	mov	r3, r9
	str	r9, [sp, #4]
	mov	r0, r6
	ldr	r4, [lr]
	mov	r2, r9
	mov	r1, lr
	str	r9, [sp, #104]
	str	r9, [sp, #112]
	str	r4, [sp, #8]
	ldr	r4, [lr, #4]
	str	r9, [sp, #16]
	str	r9, [sp, #24]
	str	r4, [sp, #12]
	str	r9, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r3, [r7, #180]
	cmp	r3, #0
	beq	.L128
	ldrb	r3, [r7, #4]	@ zero_extendqisi2
	add	r2, sp, #104
	str	r2, [sp, #56]
	add	r2, sp, #88
	str	r2, [sp, #60]
	mov	r4, r9
	and	r3, r3, #8
	add	r2, sp, #96
	uxtb	r3, r3
	add	r8, r7, #12
	add	fp, sp, #112
	str	r2, [sp, #64]
	str	r3, [sp, #84]
	add	r3, sp, #120
	str	r3, [sp, #68]
	add	r2, sp, #128
	add	r3, sp, #136
	str	r2, [sp, #72]
	str	r3, [sp, #76]
	str	r7, [sp, #36]
.L130:
	mov	r0, r8
	add	r1, sp, #104
	mov	r2, fp
	bl	libaroma_ripple_loop(PLT)
	cmp	r0, #0
	beq	.L128
.L138:
	add	r7, sp, #96
	ldr	r1, [r5, #24]
	ldr	r2, [r5, #28]
	mov	r0, r8
	str	r7, [sp]
	add	r7, sp, #120
	str	r7, [sp, #4]
	add	r7, sp, #128
	str	r7, [sp, #8]
	add	r7, sp, #136
	str	r7, [sp, #12]
	add	r3, sp, #88
	ldr	r7, [sp, #112]
	str	r4, [sp, #120]
	str	r4, [sp, #128]
	str	r7, [sp, #16]
	str	r4, [sp, #136]
	strb	r4, [sp, #88]
	strb	r4, [sp, #96]
	bl	libaroma_ripple_calculation(PLT)
	cmp	r0, #0
	beq	.L130
	ldr	r2, [sp, #36]
	ldr	r0, [r2, #180]
	cbz	r0, .L132
	ldrb	ip, [sp, #88]	@ zero_extendqisi2
	mov	r1, r0
	str	r4, [sp]
	movs	r2, #0
	str	r4, [sp, #4]
	mov	r3, r2
	ldr	r7, [r0]
	lsl	ip, ip, #1
	str	r7, [sp, #8]
	uxtb	ip, ip
	ldr	r0, [r0, #4]
	str	r4, [sp, #16]
	str	r4, [sp, #24]
	str	r0, [sp, #12]
	mov	r0, r6
	str	r4, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r2, [sp, #36]
.L132:
	ldrb	r3, [r2, #5]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L160
	ldrb	r2, [sp, #96]	@ zero_extendqisi2
	movw	r9, #65535
	movs	r3, #64
.L140:
	mul	r3, r3, r2
	ldr	r7, [sp, #84]
	ubfx	r3, r3, #8, #8
	str	r3, [sp, #52]
	cmp	r7, #0
	beq	.L135
	movs	r2, #0
	ldr	r0, [r6]
	ldr	r1, [r6, #4]
	mov	r3, r2
	str	r4, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #144]
	cmp	r0, #0
	beq	.L130
	ldr	r1, [r6]
	movs	r2, #0
	ldr	r7, [r6, #4]
	mov	r10, #255
	mov	r3, r2
	str	r4, [sp]
	str	r1, [sp, #8]
	mov	r1, r6
	str	r7, [sp, #12]
	str	r4, [sp, #4]
	str	r4, [sp, #16]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	r10, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r7, [sp, #52]
	mov	r1, r9
	ldr	r2, [sp, #120]
	add	r9, sp, #152
	ldr	r3, [sp, #128]
	str	r7, [sp, #4]
	ldr	r7, [sp, #136]
	ldr	r0, [sp, #144]
	str	r7, [sp]
	bl	libaroma_draw_circle(PLT)
	ldr	r2, [sp, #144]
	movs	r0, #12
	ldr	r3, [r2]
	ldr	r2, [r2, #4]
	asrs	r1, r3, #1
	cmp	r3, r2
	asr	ip, r2, #1
	it	ge
	movge	r3, r2
	str	r1, [sp, #40]
	str	r3, [sp, #44]
	str	ip, [sp, #48]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #44]
	ldr	lr, [r9, #-8]!
	ldr	r1, [sp, #40]
	ldr	ip, [sp, #48]
	subs	r0, r3, r0
	str	r0, [sp, #8]
	mov	r0, r6
	mov	r2, r1
	str	r1, [sp]
	mov	r3, ip
	mov	r1, lr
	str	ip, [sp, #4]
	str	r10, [sp, #12]
	bl	libaroma_draw_mask_circle(PLT)
	mov	r0, r9
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	mov	r0, r8
	add	r1, sp, #104
	mov	r2, fp
	bl	libaroma_ripple_loop(PLT)
	cmp	r0, #0
	bne	.L138
	b	.L128
.L159:
	ldr	r4, [r7, #176]
	movs	r7, #255
	str	r8, [sp]
	mov	r2, r8
	str	r8, [sp, #4]
	mov	r0, r6
	ldr	r5, [r4]
	mov	r1, r4
	mov	r3, r8
	str	r5, [sp, #8]
	ldr	r4, [r4, #4]
	str	r8, [sp, #16]
	str	r8, [sp, #24]
	str	r4, [sp, #12]
	str	r8, [sp, #28]
	str	r7, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L128:
	ldr	r0, [sp, #80]
	bl	omp_unset_nest_lock(PLT)
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L135:
	movs	r0, #4
	bl	libaroma_dp(PLT)
	mov	r1, r0
	movs	r0, #6
	str	r1, [sp, #40]
	bl	libaroma_dp(PLT)
	ldr	r3, [r6]
	mov	r10, r0
	movs	r0, #8
	str	r3, [sp, #44]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #44]
	ldr	r2, [r6, #4]
	subs	r3, r3, r0
	movs	r0, #12
	str	r2, [sp, #48]
	str	r3, [sp, #44]
	bl	libaroma_dp(PLT)
	ldr	r2, [sp, #48]
	ldr	r3, [sp, #44]
	ldr	r1, [sp, #40]
	subs	r0, r2, r0
	mov	r2, r10
	str	r0, [sp]
	mov	r0, r6
	bl	libaroma_canvas_area(PLT)
	str	r0, [sp, #144]
	cmp	r0, #0
	beq	.L130
	ldr	r7, [sp, #52]
	mov	r1, r9
	ldr	r2, [sp, #120]
	ldr	r3, [sp, #128]
	str	r7, [sp, #4]
	ldr	r7, [sp, #136]
	str	r7, [sp]
	bl	libaroma_draw_circle(PLT)
	add	r0, sp, #144
	ldr	r1, [sp, #84]
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L130
.L160:
	mov	r9, r3
	ldrb	r2, [sp, #96]	@ zero_extendqisi2
	movs	r3, #30
	b	.L140
.L125:
	ldr	r0, [sp, #80]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	bl	_libaroma_ctl_button_internal_draw(PLT)
	ldr	r0, [sp, #80]
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r7, #176]
	cmp	r3, #0
	bne	.L126
	b	.L128
.L162:
	.align	2
.L161:
	.word	.LANCHOR0-(.LPIC3+4)
	.size	_libaroma_ctl_button_draw, .-_libaroma_ctl_button_draw
	.section	.text._libaroma_ctl_button_req_internal_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_button_req_internal_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_button_req_internal_draw, %function
_libaroma_ctl_button_req_internal_draw:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L165
	mov	r3, r0
	push	{lr}
	sub	sp, sp, #12
	movs	r1, #0
	add	r0, sp, #4
.LPIC4:
	add	r2, pc
	bl	pthread_create(PLT)
	ldr	r0, [sp, #4]
	bl	pthread_detach(PLT)
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L166:
	.align	2
.L165:
	.word	_libaroma_ctl_button_req_internal_draw_thread-(.LPIC4+4)
	.size	_libaroma_ctl_button_req_internal_draw, .-_libaroma_ctl_button_req_internal_draw
	.section	.text.libaroma_ctl_button,"ax",%progbits
	.align	2
	.global	libaroma_ctl_button
	.thumb
	.thumb_func
	.type	libaroma_ctl_button, %function
libaroma_ctl_button:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	sub	sp, sp, #28
	mov	r6, r1
	movs	r0, #184
	movs	r1, #1
	mov	r8, r2
	mov	r7, r3
	ldrb	r10, [sp, #76]	@ zero_extendqisi2
	ldrh	r9, [sp, #80]
	bl	calloc(PLT)
	mov	r4, r0
	cbz	r0, .L168
	add	fp, r0, #164
	mov	r0, fp
	bl	omp_init_nest_lock(PLT)
	ldr	r0, [sp, #72]
	bl	__strdup(PLT)
	strh	r9, [r4, #6]	@ movhi
	str	r0, [r4]
	movs	r0, #48
	strb	r10, [r4, #4]
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #48
	bl	libaroma_dp(PLT)
	ldr	lr, .L177
	mov	r1, r8
	str	r0, [sp, #8]
	mov	r2, r7
	ldr	r0, [sp, #68]
.LPIC5:
	add	lr, pc
	str	r9, [sp, #4]
	ldr	r3, [sp, #64]
	str	r0, [sp]
	mov	r0, r6
	str	r4, [sp, #12]
	str	r5, [sp, #20]
	str	lr, [sp, #16]
	bl	libaroma_control_new(PLT)
	cbz	r0, .L176
.L168:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L176:
	mov	r0, fp
	bl	omp_destroy_nest_lock(PLT)
	ldr	r0, [r4]
	cbz	r0, .L169
	bl	free(PLT)
.L169:
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #0
	b	.L168
.L178:
	.align	2
.L177:
	.word	.LANCHOR0-(.LPIC5+4)
	.size	libaroma_ctl_button, .-libaroma_ctl_button
	.section	.text.libaroma_ctl_button_style,"ax",%progbits
	.align	2
	.global	libaroma_ctl_button_style
	.thumb
	.thumb_func
	.type	libaroma_ctl_button_style, %function
libaroma_ctl_button_style:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, .L184
	sub	sp, sp, #8
	ldr	r3, [r4, #72]
.LPIC6:
	add	r0, pc
	cmp	r3, r0
	it	ne
	movne	r0, #0
	beq	.L183
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L183:
	ldr	r5, [r4, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r6, r5, #164
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	mov	r0, r6
	strb	r1, [r5, #4]
	ldr	r2, [sp]
	strh	r2, [r5, #6]	@ movhi
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	bl	_libaroma_ctl_button_req_internal_draw(PLT)
	movs	r0, #1
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L185:
	.align	2
.L184:
	.word	.LANCHOR0-(.LPIC6+4)
	.size	libaroma_ctl_button_style, .-libaroma_ctl_button_style
	.section	.text.libaroma_ctl_button_text,"ax",%progbits
	.align	2
	.global	libaroma_ctl_button_text
	.thumb
	.thumb_func
	.type	libaroma_ctl_button_text, %function
libaroma_ctl_button_text:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L195
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, lr}
	mov	r4, r0
.LPIC7:
	add	r2, pc
	sub	sp, sp, #8
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L194
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L194:
	ldr	r5, [r4, #4]
	str	r1, [sp, #4]
	add	r6, r5, #164
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r5]
	ldr	r1, [sp, #4]
	cbz	r0, .L188
	bl	free(PLT)
	ldr	r1, [sp, #4]
.L188:
	mov	r0, r1
	bl	__strdup(PLT)
	str	r0, [r5]
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	bl	_libaroma_ctl_button_req_internal_draw(PLT)
	movs	r0, #1
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L196:
	.align	2
.L195:
	.word	.LANCHOR0-(.LPIC7+4)
	.size	libaroma_ctl_button_text, .-libaroma_ctl_button_text
	.section	.text.libaroma_ctl_button_disable,"ax",%progbits
	.align	2
	.global	libaroma_ctl_button_disable
	.thumb
	.thumb_func
	.type	libaroma_ctl_button_disable, %function
libaroma_ctl_button_disable:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L204
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, lr}
	mov	r4, r0
.LPIC8:
	add	r2, pc
	sub	sp, sp, #8
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L203
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L203:
	ldr	r5, [r4, #4]
	str	r1, [sp, #4]
	add	r6, r5, #164
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	ldrb	r3, [r5, #4]	@ zero_extendqisi2
	cbz	r1, .L199
	orr	r3, r3, #4
.L200:
	strb	r3, [r5, #4]
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	bl	_libaroma_ctl_button_req_internal_draw(PLT)
	movs	r0, #1
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L199:
	and	r3, r3, #251
	b	.L200
.L205:
	.align	2
.L204:
	.word	.LANCHOR0-(.LPIC8+4)
	.size	libaroma_ctl_button_disable, .-libaroma_ctl_button_disable
	.section	.text.libaroma_ctl_button_is_disabled,"ax",%progbits
	.align	2
	.global	libaroma_ctl_button_is_disabled
	.thumb
	.thumb_func
	.type	libaroma_ctl_button_is_disabled, %function
libaroma_ctl_button_is_disabled:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L213
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #72]
.LPIC9:
	add	r2, pc
	cmp	r3, r2
	it	ne
	movne	r4, #0
	beq	.L211
.L207:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L211:
	ldr	r4, [r0, #4]
	add	r5, r4, #164
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r4, #4]	@ zero_extendqisi2
	mov	r0, r5
	and	r3, r3, #4
	and	r4, r3, #255
	cbnz	r3, .L212
	bl	omp_unset_nest_lock(PLT)
	b	.L207
.L212:
	movs	r4, #1
	bl	omp_unset_nest_lock(PLT)
	b	.L207
.L214:
	.align	2
.L213:
	.word	.LANCHOR0-(.LPIC9+4)
	.size	libaroma_ctl_button_is_disabled, .-libaroma_ctl_button_is_disabled
	.section	.data.rel._libaroma_ctl_button_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_ctl_button_handler, %object
	.size	_libaroma_ctl_button_handler, 20
_libaroma_ctl_button_handler:
	.word	_libaroma_ctl_button_msg
	.word	_libaroma_ctl_button_draw
	.word	0
	.word	_libaroma_ctl_button_destroy
	.word	_libaroma_ctl_button_thread
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
