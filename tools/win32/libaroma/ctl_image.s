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
	.file	"ctl_image.c"
	.section	.text._libaroma_ctl_image_thread,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_image_thread
	.thumb
	.thumb_func
	.type	_libaroma_ctl_image_thread, %function
_libaroma_ctl_image_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L11
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #72]
.LPIC0:
	add	r2, pc
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L10
.L2:
	pop	{r3, r4, r5, pc}
.L10:
	ldr	r4, [r0, #4]
	ldrb	r0, [r4, #16]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L2
	adds	r5, r4, #4
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	movs	r3, #0
	mov	r0, r5
	strb	r3, [r4, #16]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L12:
	.align	2
.L11:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_ctl_image_thread, .-_libaroma_ctl_image_thread
	.section	.text._libaroma_ctl_image_msg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_image_msg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_image_msg, %function
_libaroma_ctl_image_msg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L22
	ldr	r3, [r0, #72]
.LPIC1:
	add	r2, pc
	cmp	r3, r2
	beq	.L20
	movs	r0, #0
	bx	lr
.L20:
	ldrb	r3, [r1]	@ zero_extendqisi2
	push	{r4, r5, r6, lr}
	ldr	r5, [r0, #4]
	adds	r3, r3, #127
	uxtb	r3, r3
	cmp	r3, #3
	bhi	.L14
	movs	r4, #1
	lsl	r3, r4, r3
	tst	r3, #11
	bne	.L21
.L14:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L21:
	adds	r6, r5, #4
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	mov	r0, r6
	strb	r4, [r5, #16]
	bl	omp_unset_nest_lock(PLT)
	b	.L14
.L23:
	.align	2
.L22:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	_libaroma_ctl_image_msg, .-_libaroma_ctl_image_msg
	.section	.text._libaroma_ctl_image_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_image_destroy
	.thumb
	.thumb_func
	.type	_libaroma_ctl_image_destroy, %function
_libaroma_ctl_image_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L32
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #72]
.LPIC2:
	add	r2, pc
	cmp	r3, r2
	beq	.L31
	pop	{r3, r4, r5, pc}
.L31:
	ldr	r4, [r0, #4]
	adds	r5, r4, #4
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4]
	cbz	r3, .L26
	mov	r0, r4
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L26:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	free(PLT)
.L33:
	.align	2
.L32:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_ctl_image_destroy, .-_libaroma_ctl_image_destroy
	.section	.text._libaroma_ctl_image_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_image_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_image_draw, %function
_libaroma_ctl_image_draw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #24
	ldr	r4, .L44
	ldr	r2, [r0, #72]
.LPIC3:
	add	r4, pc
	cmp	r2, r4
	beq	.L43
.L34:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L43:
	ldr	r6, [r0, #4]
	mov	r5, r1
	bl	libaroma_control_erasebg(PLT)
	ldrb	r4, [r6, #17]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L34
	add	r8, r6, #4
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r6, [r6]
	cbz	r6, .L38
	ldr	r3, [r5, #4]
	mov	r2, r4
	ldr	r7, [r5]
	mov	r0, r5
	str	r4, [sp, #8]
	mov	r1, r6
	str	r3, [sp, #4]
	mov	r3, r4
	str	r4, [sp, #12]
	str	r7, [sp]
	ldr	r4, [r6]
	str	r4, [sp, #16]
	ldr	r4, [r6, #4]
	str	r4, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
.L38:
	mov	r0, r8
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	omp_unset_nest_lock(PLT)
.L45:
	.align	2
.L44:
	.word	.LANCHOR0-(.LPIC3+4)
	.size	_libaroma_ctl_image_draw, .-_libaroma_ctl_image_draw
	.section	.text.libaroma_ctl_image_hidden,"ax",%progbits
	.align	2
	.global	libaroma_ctl_image_hidden
	.thumb
	.thumb_func
	.type	libaroma_ctl_image_hidden, %function
libaroma_ctl_image_hidden:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L52
	ldr	r3, [r0, #72]
.LPIC4:
	add	r2, pc
	cmp	r3, r2
	beq	.L51
	movs	r0, #0
	bx	lr
.L51:
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r4, [r0, #4]
	movs	r5, #1
	str	r1, [sp, #4]
	adds	r6, r4, #4
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	mov	r0, r6
	strb	r5, [r4, #16]
	strb	r1, [r4, #17]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L53:
	.align	2
.L52:
	.word	.LANCHOR0-(.LPIC4+4)
	.size	libaroma_ctl_image_hidden, .-libaroma_ctl_image_hidden
	.section	.text.libaroma_ctl_image_set_image,"ax",%progbits
	.align	2
	.global	libaroma_ctl_image_set_image
	.thumb
	.thumb_func
	.type	libaroma_ctl_image_set_image, %function
libaroma_ctl_image_set_image:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r4, .L67
	ldr	r3, [r0, #72]
.LPIC5:
	add	r4, pc
	cmp	r3, r4
	beq	.L66
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L66:
	ldr	r4, [r0, #4]
	mov	r6, r1
	mov	r5, r2
	adds	r7, r4, #4
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4]
	cbz	r3, .L56
	mov	r0, r4
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L56:
	mov	r0, r6
	bl	libaroma_stream_file(PLT)
	movs	r1, #1
	mov	r2, r1
	bl	libaroma_image_ex(PLT)
	str	r0, [r4]
	cbz	r5, .L57
	movs	r3, #1
	strb	r3, [r4, #16]
.L57:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L68:
	.align	2
.L67:
	.word	.LANCHOR0-(.LPIC5+4)
	.size	libaroma_ctl_image_set_image, .-libaroma_ctl_image_set_image
	.section	.text.libaroma_ctl_image_set_canvas,"ax",%progbits
	.align	2
	.global	libaroma_ctl_image_set_canvas
	.thumb
	.thumb_func
	.type	libaroma_ctl_image_set_canvas, %function
libaroma_ctl_image_set_canvas:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r4, .L82
	ldr	r3, [r0, #72]
.LPIC6:
	add	r4, pc
	cmp	r3, r4
	beq	.L81
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L81:
	ldr	r4, [r0, #4]
	mov	r5, r1
	mov	r6, r2
	adds	r7, r4, #4
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4]
	cbz	r3, .L71
	mov	r0, r4
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L71:
	mov	r0, r5
	bl	libaroma_canvas_dup(PLT)
	str	r0, [r4]
	cbz	r6, .L72
	movs	r3, #1
	strb	r3, [r4, #16]
.L72:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L83:
	.align	2
.L82:
	.word	.LANCHOR0-(.LPIC6+4)
	.size	libaroma_ctl_image_set_canvas, .-libaroma_ctl_image_set_canvas
	.section	.text.libaroma_ctl_image_canvas,"ax",%progbits
	.align	2
	.global	libaroma_ctl_image_canvas
	.thumb
	.thumb_func
	.type	libaroma_ctl_image_canvas, %function
libaroma_ctl_image_canvas:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, r0
	sub	sp, sp, #28
	mov	r9, r1
	movs	r0, #20
	movs	r1, #1
	mov	r5, r2
	mov	r8, r3
	bl	calloc(PLT)
	mov	r4, r0
	cbz	r0, .L85
	mov	r0, r5
	adds	r6, r4, #4
	movs	r5, #1
	bl	libaroma_canvas_dup(PLT)
	strb	r5, [r4, #16]
	str	r0, [r4]
	mov	r0, r6
	bl	omp_init_nest_lock(PLT)
	ldr	lr, .L94
	mov	r0, r9
	ldr	r3, [sp, #64]
	mov	r1, r8
	str	r5, [sp, #4]
.LPIC7:
	add	lr, pc
	str	r5, [sp, #8]
	str	r3, [sp]
	ldr	r2, [sp, #56]
	ldr	r3, [sp, #60]
	str	r4, [sp, #12]
	str	r7, [sp, #20]
	str	lr, [sp, #16]
	bl	libaroma_control_new(PLT)
	cbz	r0, .L93
.L85:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L93:
	ldr	r3, [r4]
	cbz	r3, .L86
	mov	r1, r0
	mov	r0, r4
	bl	libaroma_canvas_free_ex1(PLT)
.L86:
	mov	r0, r6
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #0
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L95:
	.align	2
.L94:
	.word	.LANCHOR0-(.LPIC7+4)
	.size	libaroma_ctl_image_canvas, .-libaroma_ctl_image_canvas
	.section	.text.libaroma_ctl_image,"ax",%progbits
	.align	2
	.global	libaroma_ctl_image
	.thumb
	.thumb_func
	.type	libaroma_ctl_image, %function
libaroma_ctl_image:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	movs	r4, #0
	sub	sp, sp, #28
	mov	r8, r0
	mov	r7, r1
	mov	r9, r3
	str	r4, [sp, #16]
	ldr	r6, [sp, #56]
	ldr	r5, [sp, #60]
	ldr	r4, [sp, #64]
	cbz	r2, .L97
	mov	r0, r2
	bl	libaroma_stream_file(PLT)
	movs	r1, #1
	mov	r2, r1
	bl	libaroma_image_ex(PLT)
	mov	r2, r0
	str	r0, [sp, #16]
.L97:
	str	r4, [sp, #8]
	mov	r3, r9
	str	r6, [sp]
	mov	r0, r8
	str	r5, [sp, #4]
	mov	r1, r7
	bl	libaroma_ctl_image_canvas(PLT)
	ldr	r3, [sp, #16]
	mov	r4, r0
	cbz	r3, .L98
	add	r0, sp, #16
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L98:
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	libaroma_ctl_image, .-libaroma_ctl_image
	.section	.data.rel._libaroma_ctl_image_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_ctl_image_handler, %object
	.size	_libaroma_ctl_image_handler, 20
_libaroma_ctl_image_handler:
	.word	_libaroma_ctl_image_msg
	.word	_libaroma_ctl_image_draw
	.word	0
	.word	_libaroma_ctl_image_destroy
	.word	_libaroma_ctl_image_thread
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
