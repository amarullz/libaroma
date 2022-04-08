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
	.file	"control.c"
	.section	.text.libaroma_control_new,"ax",%progbits
	.align	2
	.global	libaroma_control_new
	.thumb
	.thumb_func
	.type	libaroma_control_new, %function
libaroma_control_new:
	@ args = 24, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r5, [sp, #64]
	mov	r8, r2
	add	r2, sp, #52
	mov	fp, r3
	ldr	r10, [sp, #48]
	ldmia	r2, {r2, r3, r9}
	ldr	r4, [sp, #68]
	cbz	r5, .L4
	mov	r7, r0
	mov	r6, r1
	movs	r0, #76
	movs	r1, #1
	str	r2, [sp, #4]
	str	r3, [sp]
	bl	calloc(PLT)
	ldr	r2, [sp, #4]
	mov	r1, r0
	ldr	r3, [sp]
	cbz	r0, .L4
	str	r2, [r0, #64]
	str	r3, [r0, #68]
	str	r6, [r0, #32]
	str	r8, [r0, #36]
	str	fp, [r0, #40]
	str	r10, [r0, #44]
	strh	r7, [r0]	@ movhi
	str	r5, [r0, #72]
	str	r9, [r0, #4]
	cbz	r4, .L3
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	libaroma_window_attach(PLT)
.L4:
	movs	r0, #0
.L3:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	libaroma_control_new, .-libaroma_control_new
	.section	.text.libaroma_control_draw_flush,"ax",%progbits
	.align	2
	.global	libaroma_control_draw_flush
	.thumb
	.thumb_func
	.type	libaroma_control_draw_flush, %function
libaroma_control_draw_flush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	sub	sp, sp, #8
	cbz	r0, .L14
	ldr	r0, [r0, #8]
	cbz	r0, .L12
	ldr	r5, [r0, #356]
	mov	r3, r2
	cbz	r5, .L13
	ldr	r5, [r5, #24]
	cbz	r5, .L13
	mov	r6, r1
	mov	ip, r5
	mov	r1, r4
	mov	r2, r6
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	bx	ip
.L13:
	ldr	r2, [r0, #320]
	cbz	r2, .L16
	cbnz	r3, .L25
	movs	r0, #1
.L12:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L25:
	add	r1, r4, #16
	ldmia	r1, {r1, r2, r3, r4}
	str	r4, [sp]
	bl	libaroma_window_sync(PLT)
	movs	r0, #1
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L14:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L16:
	mov	r0, r2
	b	.L12
	.size	libaroma_control_draw_flush, .-libaroma_control_draw_flush
	.section	.text.libaroma_control_erasebg,"ax",%progbits
	.align	2
	.global	libaroma_control_erasebg
	.thumb
	.thumb_func
	.type	libaroma_control_erasebg, %function
libaroma_control_erasebg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #36
	cbz	r0, .L29
	ldr	r0, [r0, #8]
	cbz	r0, .L27
	ldr	r3, [r0, #356]
	mov	r5, r1
	cbz	r3, .L28
	ldr	r3, [r3, #28]
	cbz	r3, .L28
	mov	r1, r4
	mov	r2, r5
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	r3
.L28:
	ldr	r1, [r0, #324]
	mov	r0, r1
	cbz	r1, .L27
	ldr	r3, [r4, #16]
	mov	r0, r5
	movs	r6, #0
	movs	r7, #255
	mov	r2, r6
	str	r3, [sp]
	mov	r3, r6
	ldr	r5, [r4, #20]
	str	r5, [sp, #4]
	ldr	r5, [r4, #24]
	str	r5, [sp, #8]
	ldr	r4, [r4, #28]
	str	r6, [sp, #16]
	str	r6, [sp, #24]
	str	r4, [sp, #12]
	str	r6, [sp, #28]
	str	r7, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	movs	r0, #1
.L27:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L29:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	libaroma_control_erasebg, .-libaroma_control_erasebg
	.section	.text.libaroma_control_isvisible,"ax",%progbits
	.align	2
	.global	libaroma_control_isvisible
	.thumb
	.thumb_func
	.type	libaroma_control_isvisible, %function
libaroma_control_isvisible:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	mov	r1, r0
	cbz	r0, .L42
	ldr	r0, [r0, #8]
	cbz	r0, .L40
	ldr	r3, [r0, #356]
	cbz	r3, .L41
	ldr	r3, [r3, #32]
	cbz	r3, .L41
	ldr	r4, [sp], #4
	bx	r3
.L41:
	ldr	r3, [r1, #16]
	ldr	r2, [r1, #24]
	ldr	r4, [r1, #20]
	cmn	r3, r2
	bmi	.L46
	ldr	r2, [r0, #20]
	cmp	r3, r2
	bgt	.L46
	ldr	r3, [r1, #28]
	cmn	r4, r3
	bmi	.L46
	ldr	r0, [r0, #24]
	cmp	r4, r0
	ite	gt
	movgt	r0, #0
	movle	r0, #1
.L40:
	ldr	r4, [sp], #4
	bx	lr
.L46:
	movs	r0, #0
	ldr	r4, [sp], #4
	bx	lr
.L42:
	ldr	r4, [sp], #4
	bx	lr
	.size	libaroma_control_isvisible, .-libaroma_control_isvisible
	.section	.text.libaroma_control_draw_begin,"ax",%progbits
	.align	2
	.global	libaroma_control_draw_begin
	.thumb
	.thumb_func
	.type	libaroma_control_draw_begin, %function
libaroma_control_draw_begin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	sub	sp, sp, #8
	ldr	r0, [r0, #8]
	bl	libaroma_window_isactive(PLT)
	cbz	r0, .L57
	mov	r0, r4
	bl	libaroma_control_isvisible(PLT)
	cbz	r0, .L57
	ldr	r0, [r4, #8]
	ldr	r3, [r0, #356]
	cbz	r3, .L58
	ldr	r3, [r3, #36]
	cbz	r3, .L58
	mov	r1, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, lr}
	bx	r3
.L58:
	ldr	r0, [r0, #320]
	cbz	r0, .L57
	add	r1, r4, #16
	ldmia	r1, {r1, r2, r3, r4}
	str	r4, [sp]
	bl	libaroma_canvas_area(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L57:
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	libaroma_control_draw_begin, .-libaroma_control_draw_begin
	.section	.text.libaroma_control_draw_end,"ax",%progbits
	.align	2
	.global	libaroma_control_draw_end
	.thumb
	.thumb_func
	.type	libaroma_control_draw_end, %function
libaroma_control_draw_end:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #12
	str	r1, [sp, #4]
	cbz	r2, .L73
	bl	libaroma_control_draw_flush(PLT)
.L73:
	add	r0, sp, #4
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	libaroma_control_draw_end, .-libaroma_control_draw_end
	.section	.text.libaroma_control_draw,"ax",%progbits
	.align	2
	.global	libaroma_control_draw
	.thumb
	.thumb_func
	.type	libaroma_control_draw, %function
libaroma_control_draw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r1
	mov	r5, r0
	bl	libaroma_control_draw_begin(PLT)
	mov	r4, r0
	cbz	r0, .L81
	ldr	r3, [r5, #72]
	ldr	r3, [r3, #4]
	cbz	r3, .L80
	mov	r0, r5
	mov	r1, r4
	blx	r3
.L80:
	mov	r0, r5
	mov	r1, r4
	mov	r2, r6
	bl	libaroma_control_draw_end(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L81:
	pop	{r4, r5, r6, pc}
	.size	libaroma_control_draw, .-libaroma_control_draw
	.section	.text.libaroma_control_resize,"ax",%progbits
	.align	2
	.global	libaroma_control_resize
	.thumb
	.thumb_func
	.type	libaroma_control_resize, %function
libaroma_control_resize:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r5, r0
	sub	sp, sp, #20
	cbz	r0, .L93
	str	r1, [sp]
	add	r1, r0, #32
	ldr	r0, [sp, #32]
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	str	r0, [sp, #12]
	vld1.64	{d16-d17}, [sp:64]
	vst1.32	{q8}, [r1]
	ldr	r4, [r5, #8]
	cbnz	r4, .L91
	b	.L92
.L101:
	mov	r4, r3
.L91:
	ldr	r3, [r4, #352]
	cmp	r3, #0
	bne	.L101
	mov	r0, r4
	bl	libaroma_window_measure_size(PLT)
	cbnz	r0, .L102
.L92:
	mov	r0, r5
	movs	r1, #1
	bl	libaroma_control_draw(PLT)
	movs	r0, #1
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L102:
	mov	r0, r4
	bl	_libaroma_window_ready(PLT)
	cmp	r0, #0
	bne	.L92
.L93:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
	.size	libaroma_control_resize, .-libaroma_control_resize
	.section	.text.libaroma_control_free,"ax",%progbits
	.align	2
	.global	libaroma_control_free
	.thumb
	.thumb_func
	.type	libaroma_control_free, %function
libaroma_control_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L106
	ldr	r3, [r0, #72]
	ldr	r3, [r3, #12]
	cbz	r3, .L105
	blx	r3
.L105:
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L106:
	pop	{r4, pc}
	.size	libaroma_control_free, .-libaroma_control_free
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
