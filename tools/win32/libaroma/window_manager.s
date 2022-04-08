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
	.file	"window_manager.c"
	.section	.text._libaroma_wm_theme_release,"ax",%progbits
	.align	2
	.global	_libaroma_wm_theme_release
	.thumb
	.thumb_func
	.type	_libaroma_wm_theme_release, %function
_libaroma_wm_theme_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r2, [r0, #4]	@ zero_extendqisi2
	lsls	r2, r2, #30
	bpl	.L1
	ldr	r3, [r0]
	cbz	r3, .L1
	movs	r1, #0
	b	libaroma_canvas_free_ex1(PLT)
.L1:
	bx	lr
	.size	_libaroma_wm_theme_release, .-_libaroma_wm_theme_release
	.section	.text.libaroma_wm,"ax",%progbits
	.align	2
	.global	libaroma_wm
	.thumb
	.thumb_func
	.type	libaroma_wm, %function
libaroma_wm:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L11
.LPIC0:
	add	r3, pc
	ldr	r0, [r3]
	bx	lr
.L12:
	.align	2
.L11:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	libaroma_wm, .-libaroma_wm
	.section	.text._libaroma_wm_message_thread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_wm_message_thread, %function
_libaroma_wm_message_thread:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L38
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	ldr	r5, .L38+4
.LPIC1:
	add	r3, pc
	ldr	r9, .L38+8
	ldr	r8, .L38+12
.LPIC3:
	add	r5, pc
	ldr	r7, .L38+16
	ldr	r6, .L38+20
.LPIC6:
	add	r9, pc
	ldr	r10, .L38+24
.LPIC7:
	add	r8, pc
	ldr	r3, [r3]
.LPIC9:
	add	r7, pc
.LPIC10:
	add	r6, pc
.LPIC8:
	add	r10, pc
.L14:
	ldrb	r3, [r3, #88]	@ zero_extendqisi2
	cbz	r3, .L23
.L24:
	add	r4, sp, #8
	mov	r0, r4
	bl	libaroma_msg(PLT)
	cbnz	r0, .L15
	ldr	r3, .L38+28
.LPIC2:
	add	r3, pc
	ldr	r3, [r3]
	ldrb	r3, [r3, #88]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L24
.L23:
	movs	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L15:
	ldr	r0, [r5]
	ldr	r3, [r0, #36]
	cbz	r3, .L25
	mov	r1, r4
	blx	r3
	cmp	r0, #1
	it	eq
	ldreq	r3, [r5]
	beq	.L14
	cmp	r0, #2
	beq	.L23
	ldr	r3, [r5]
.L17:
	ldr	r2, [r3, #92]
	cmp	r2, #0
	beq	.L14
	mov	r0, r9
	bl	pthread_mutex_lock(PLT)
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	cmp	r3, #6
	beq	.L36
.L21:
	ldr	r3, [r8]
	mov	r1, r4
	movs	r2, #24
	ldr	r0, [r3, #84]
	bl	libaroma_stack_push(PLT)
	cbnz	r0, .L37
.L22:
	mov	r0, r7
	bl	pthread_mutex_unlock(PLT)
	ldr	r3, [r6]
	b	.L14
.L25:
	mov	r3, r0
	b	.L17
.L37:
	mov	r0, r10
	bl	pthread_cond_signal(PLT)
	b	.L22
.L36:
	ldr	r3, [sp, #16]
	str	r3, [sp, #4]
	bl	libaroma_wm(PLT)
	ldr	r3, [sp, #4]
	ldr	r2, [r0, #48]
	ldr	fp, [sp, #20]
	subs	r3, r3, r2
	str	r3, [sp, #16]
	bl	libaroma_wm(PLT)
	ldr	r3, [r0, #52]
	rsb	r3, r3, fp
	str	r3, [sp, #20]
	b	.L21
.L39:
	.align	2
.L38:
	.word	.LANCHOR0-(.LPIC1+4)
	.word	.LANCHOR0-(.LPIC3+4)
	.word	.LANCHOR1-(.LPIC6+4)
	.word	.LANCHOR0-(.LPIC7+4)
	.word	.LANCHOR1-(.LPIC9+4)
	.word	.LANCHOR0-(.LPIC10+4)
	.word	.LANCHOR2-(.LPIC8+4)
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_wm_message_thread, .-_libaroma_wm_message_thread
	.section	.text._libaroma_wm_workspace_canvas_update,"ax",%progbits
	.align	2
	.global	_libaroma_wm_workspace_canvas_update
	.thumb
	.thumb_func
	.type	_libaroma_wm_workspace_canvas_update, %function
_libaroma_wm_workspace_canvas_update:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	ldr	r4, .L45
.LPIC11:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L41
	ldr	r6, [r0, #96]
	mov	r0, r6
	cbz	r6, .L41
	bl	libaroma_fb(PLT)
	ldr	r5, [r4]
	movs	r7, #255
	ldr	r1, [r0, #52]
	mov	r0, r6
	movs	r4, #0
	ldr	r6, [r5, #48]
	mov	r2, r4
	mov	r3, r4
	str	r6, [sp]
	ldr	r6, [r5, #52]
	str	r6, [sp, #4]
	ldr	r6, [r5, #56]
	str	r6, [sp, #8]
	ldr	r5, [r5, #60]
	str	r4, [sp, #16]
	str	r4, [sp, #24]
	str	r5, [sp, #12]
	str	r4, [sp, #28]
	str	r7, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	movs	r0, #1
.L41:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L46:
	.align	2
.L45:
	.word	.LANCHOR0-(.LPIC11+4)
	.size	_libaroma_wm_workspace_canvas_update, .-_libaroma_wm_workspace_canvas_update
	.section	.text._libaroma_wm_workspace_canvas,"ax",%progbits
	.align	2
	.global	_libaroma_wm_workspace_canvas
	.thumb
	.thumb_func
	.type	_libaroma_wm_workspace_canvas, %function
_libaroma_wm_workspace_canvas:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	ldr	r4, .L53
.LPIC13:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L48
	ldr	r3, [r0, #96]
	cbz	r3, .L51
	adds	r0, r0, #96
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r4, [r4]
.L49:
	movs	r3, #0
	ldr	r1, [r4, #60]
	ldr	r0, [r4, #56]
	mov	r2, r3
	str	r3, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r4, #96]
	bl	_libaroma_wm_workspace_canvas_update(PLT)
	movs	r0, #1
.L48:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L51:
	mov	r4, r0
	b	.L49
.L54:
	.align	2
.L53:
	.word	.LANCHOR0-(.LPIC13+4)
	.size	_libaroma_wm_workspace_canvas, .-_libaroma_wm_workspace_canvas
	.section	.text.libaroma_wm_compose,"ax",%progbits
	.align	2
	.global	libaroma_wm_compose
	.thumb
	.thumb_func
	.type	libaroma_wm_compose, %function
libaroma_wm_compose:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r6, [sp, #24]
	mov	r4, r0
	movs	r5, #0
	strb	r1, [r0]
	mov	r1, sp
	str	r3, [r0, #8]
	movs	r0, #1
	str	r2, [r4, #16]
	str	r6, [r4, #12]
	strb	r5, [r4, #1]
	str	r5, [r4, #4]
	bl	clock_gettime(PLT)
	cbnz	r0, .L56
	ldr	r3, [sp, #4]
	movw	r2, #56963
	movt	r2, 17179
	ldr	r1, [sp]
	mov	r5, #1000
	smull	r0, r2, r2, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r2, asr #18
	mla	r5, r5, r1, r3
.L56:
	mov	r0, r4
	str	r5, [r4, #20]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	libaroma_wm_compose, .-libaroma_wm_compose
	.section	.text.libaroma_wm_updatesync,"ax",%progbits
	.align	2
	.global	libaroma_wm_updatesync
	.thumb
	.thumb_func
	.type	libaroma_wm_updatesync, %function
libaroma_wm_updatesync:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r4, .L68
	ldrb	r5, [sp, #24]	@ zero_extendqisi2
.LPIC15:
	add	r4, pc
	ldr	r3, [r4]
	cbz	r3, .L59
	mov	r7, r0
	mov	r6, r1
	bl	libaroma_fb(PLT)
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	cbz	r3, .L66
.L59:
	pop	{r3, r4, r5, r6, r7, pc}
.L66:
	ldr	r0, .L68+4
.LPIC16:
	add	r0, pc
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4]
	cbnz	r5, .L67
	add	r1, r3, #68
	ldr	r0, [r3, #80]
	ldmia	r1, {r1, r2, r4}
	cmp	r7, r1
	it	ge
	movge	r7, r1
	cmp	r6, r2
	add	r1, r1, r4
	it	ge
	movge	r6, r2
	add	r2, r2, r0
	cmp	r1, r4
	it	lt
	movlt	r1, r4
	cmp	r2, r0
	it	lt
	movlt	r2, r0
	str	r7, [r3, #68]
	str	r6, [r3, #72]
	str	r1, [r3, #76]
	str	r2, [r3, #80]
.L64:
	ldr	r0, .L68+8
	pop	{r3, r4, r5, r6, r7, lr}
.LPIC19:
	add	r0, pc
	b	omp_unset_nest_lock(PLT)
.L67:
	movs	r2, #1
	strb	r2, [r3, #64]
	b	.L64
.L69:
	.align	2
.L68:
	.word	.LANCHOR0-(.LPIC15+4)
	.word	.LANCHOR3-(.LPIC16+4)
	.word	.LANCHOR3-(.LPIC19+4)
	.size	libaroma_wm_updatesync, .-libaroma_wm_updatesync
	.section	.text.libaroma_wm_resetsync,"ax",%progbits
	.align	2
	.global	libaroma_wm_resetsync
	.thumb
	.thumb_func
	.type	libaroma_wm_resetsync, %function
libaroma_wm_resetsync:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L76
.LPIC20:
	add	r5, pc
	ldr	r3, [r5]
	cbz	r3, .L70
	bl	libaroma_fb(PLT)
	ldrb	r4, [r0, #12]	@ zero_extendqisi2
	cbz	r4, .L75
.L70:
	pop	{r4, r5, r6, pc}
.L75:
	ldr	r6, .L76+4
.LPIC21:
	add	r6, pc
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r5]
	mov	r0, r6
	ldr	r1, [r3, #56]
	ldr	r2, [r3, #60]
	strb	r4, [r3, #64]
	str	r4, [r3, #76]
	str	r4, [r3, #80]
	str	r1, [r3, #68]
	str	r2, [r3, #72]
	pop	{r4, r5, r6, lr}
	b	omp_unset_nest_lock(PLT)
.L77:
	.align	2
.L76:
	.word	.LANCHOR0-(.LPIC20+4)
	.word	.LANCHOR3-(.LPIC21+4)
	.size	libaroma_wm_resetsync, .-libaroma_wm_resetsync
	.section	.text.libaroma_wm_set_workspace,"ax",%progbits
	.align	2
	.global	libaroma_wm_set_workspace
	.thumb
	.thumb_func
	.type	libaroma_wm_set_workspace, %function
libaroma_wm_set_workspace:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r1
	ldr	r5, .L85
	sub	sp, sp, #52
.LPIC24:
	add	r5, pc
	ldr	r1, [r5]
	cbz	r1, .L81
	mov	r4, r0
	lsrs	r0, r6, #31
	orrs	r9, r0, r4, lsr #31
	beq	.L84
.L81:
	movs	r0, #0
.L80:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L84:
	mov	r7, r2
	mov	r8, r3
	bl	libaroma_fb(PLT)
	ldr	r3, [r0]
	adds	r2, r4, r7
	cmp	r2, r3
	bgt	.L81
	bl	libaroma_fb(PLT)
	ldr	r3, [r0, #4]
	add	r2, r6, r8
	cmp	r2, r3
	bgt	.L81
	ldr	r3, [r5]
	str	r4, [sp, #8]
	str	r6, [sp, #12]
	str	r7, [sp, #16]
	adds	r3, r3, #48
	str	r8, [sp, #20]
	vldr	d16, [sp, #8]
	vldr	d17, [sp, #16]
	vst1.32	{q8}, [r3]
	bl	_libaroma_wm_workspace_canvas(PLT)
	ldr	r3, [r5]
	movs	r0, #1
	ldr	r4, [r3, #92]
	cmp	r4, #0
	beq	.L80
	mov	r2, r9
	mov	r3, r9
	movs	r1, #132
	str	r9, [sp]
	add	r0, sp, #24
	bl	libaroma_wm_compose(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	libaroma_window_process_event(PLT)
	movs	r0, #1
	b	.L80
.L86:
	.align	2
.L85:
	.word	.LANCHOR0-(.LPIC24+4)
	.size	libaroma_wm_set_workspace, .-libaroma_wm_set_workspace
	.section	.text.libaroma_wm_erasebg_workspace,"ax",%progbits
	.align	2
	.global	libaroma_wm_erasebg_workspace
	.thumb
	.thumb_func
	.type	libaroma_wm_erasebg_workspace, %function
libaroma_wm_erasebg_workspace:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r7, r0
	ldr	r4, .L91
	sub	sp, sp, #36
.LPIC27:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L88
	mov	r6, r1
	mov	r9, r2
	mov	r8, r3
	bl	libaroma_fb(PLT)
	ldr	r5, [r4]
	mov	lr, #255
	movs	r4, #0
	ldr	r0, [r0, #52]
	ldr	r2, [r5, #48]
	ldr	r3, [r5, #52]
	ldr	r1, [r5, #96]
	add	r2, r2, r7
	str	r7, [sp]
	str	r6, [sp, #4]
	add	r3, r3, r6
	str	r9, [sp, #8]
	str	r8, [sp, #12]
	str	r4, [sp, #16]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L88:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L92:
	.align	2
.L91:
	.word	.LANCHOR0-(.LPIC27+4)
	.size	libaroma_wm_erasebg_workspace, .-libaroma_wm_erasebg_workspace
	.section	.text.libaroma_wm_set_message_handler,"ax",%progbits
	.align	2
	.global	libaroma_wm_set_message_handler
	.thumb
	.thumb_func
	.type	libaroma_wm_set_message_handler, %function
libaroma_wm_set_message_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L96
.LPIC29:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L95
	str	r0, [r3, #36]
	movs	r0, #1
	bx	lr
.L95:
	mov	r0, r3
	bx	lr
.L97:
	.align	2
.L96:
	.word	.LANCHOR0-(.LPIC29+4)
	.size	libaroma_wm_set_message_handler, .-libaroma_wm_set_message_handler
	.section	.text.libaroma_wm_set_reset_handler,"ax",%progbits
	.align	2
	.global	libaroma_wm_set_reset_handler
	.thumb
	.thumb_func
	.type	libaroma_wm_set_reset_handler, %function
libaroma_wm_set_reset_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L101
.LPIC30:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L100
	str	r0, [r3, #40]
	movs	r0, #1
	bx	lr
.L100:
	mov	r0, r3
	bx	lr
.L102:
	.align	2
.L101:
	.word	.LANCHOR0-(.LPIC30+4)
	.size	libaroma_wm_set_reset_handler, .-libaroma_wm_set_reset_handler
	.section	.text.libaroma_wm_sync,"ax",%progbits
	.align	2
	.global	libaroma_wm_sync
	.thumb
	.thumb_func
	.type	libaroma_wm_sync, %function
libaroma_wm_sync:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r4, .L112
.LPIC31:
	add	r4, pc
	ldr	r4, [r4]
	cbz	r4, .L109
	ldr	lr, [r4, #48]
	ldr	r7, [r4, #52]
	add	r6, lr, r0
	cmp	lr, r6
	add	r5, r7, r1
	itt	gt
	subgt	r2, r2, r0
	movgt	r6, #0
	cmp	r7, r5
	itt	gt
	subgt	r3, r3, r1
	movgt	r5, #0
	cmp	r2, #0
	it	gt
	cmpgt	r3, #0
	ble	.L110
	ldr	r1, [r4, #56]
	adds	r0, r2, r6
	add	lr, lr, r1
	adds	r1, r3, r5
	cmp	r0, lr
	ldr	r0, [r4, #60]
	it	gt
	rsbgt	r2, r6, lr
	add	r7, r7, r0
	mov	r0, r6
	cmp	r1, r7
	mov	r1, r5
	it	gt
	subgt	r3, r7, r5
	pop	{r4, r5, r6, r7, lr}
	b	libaroma_fb_sync_area(PLT)
.L110:
	movs	r0, #1
	pop	{r4, r5, r6, r7, pc}
.L109:
	mov	r0, r4
	pop	{r4, r5, r6, r7, pc}
.L113:
	.align	2
.L112:
	.word	.LANCHOR0-(.LPIC31+4)
	.size	libaroma_wm_sync, .-libaroma_wm_sync
	.section	.text.libaroma_wm_clean_workspace,"ax",%progbits
	.align	2
	.global	libaroma_wm_clean_workspace
	.thumb
	.thumb_func
	.type	libaroma_wm_clean_workspace, %function
libaroma_wm_clean_workspace:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	ldr	r6, .L119
.LPIC32:
	add	r6, pc
	ldr	r0, [r6]
	cbz	r0, .L115
	ldr	r0, [r0, #96]
	cbz	r0, .L115
	bl	libaroma_fb(PLT)
	ldr	r5, [r6]
	movs	r4, #0
	ldr	r0, [r0, #52]
	mov	lr, #255
	ldr	r1, [r5, #96]
	ldr	r2, [r5, #48]
	ldr	r3, [r5, #52]
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r7, [r5, #56]
	str	r7, [sp, #8]
	ldr	r5, [r5, #60]
	str	lr, [sp, #20]
	str	r4, [sp, #16]
	str	r4, [sp, #24]
	str	r5, [sp, #12]
	str	r4, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r3, [r6]
	mov	r0, r4
	mov	r1, r4
	ldr	r2, [r3, #56]
	ldr	r3, [r3, #60]
	bl	libaroma_wm_sync(PLT)
	movs	r0, #1
.L115:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L120:
	.align	2
.L119:
	.word	.LANCHOR0-(.LPIC32+4)
	.size	libaroma_wm_clean_workspace, .-libaroma_wm_clean_workspace
	.section	.text.libaroma_wm_syncarea,"ax",%progbits
	.align	2
	.global	libaroma_wm_syncarea
	.thumb
	.thumb_func
	.type	libaroma_wm_syncarea, %function
libaroma_wm_syncarea:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	bl	libaroma_fb(PLT)
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	cbnz	r3, .L127
	ldr	r4, .L128
	ldr	r0, .L128+4
.LPIC36:
	add	r4, pc
.LPIC35:
	add	r0, pc
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4]
	ldrb	r3, [r3, #64]	@ zero_extendqisi2
	cbz	r3, .L123
.L125:
	bl	libaroma_fb_sync(PLT)
.L124:
	ldr	r0, .L128+8
.LPIC38:
	add	r0, pc
	bl	omp_unset_nest_lock(PLT)
	pop	{r3, r4, r5, lr}
	b	libaroma_wm_resetsync(PLT)
.L123:
	bl	libaroma_fb(PLT)
	ldr	r5, [r0]
	bl	libaroma_fb(PLT)
	ldr	r3, [r4]
	ldr	r4, [r0, #4]
	add	r0, r3, #68
	ldr	r3, [r3, #80]
	ldmia	r0, {r0, r1, r2}
	mul	r5, r4, r5
	subs	r2, r2, r0
	subs	r3, r3, r1
	mul	r4, r3, r2
	cmp	r4, r5, asr #1
	bge	.L125
	bl	libaroma_wm_sync(PLT)
	b	.L124
.L127:
	pop	{r3, r4, r5, lr}
	b	libaroma_fb_sync(PLT)
.L129:
	.align	2
.L128:
	.word	.LANCHOR0-(.LPIC36+4)
	.word	.LANCHOR3-(.LPIC35+4)
	.word	.LANCHOR3-(.LPIC38+4)
	.size	libaroma_wm_syncarea, .-libaroma_wm_syncarea
	.section	.text._libaroma_wm_ui_thread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_wm_ui_thread, %function
_libaroma_wm_ui_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	ldr	r4, .L146
	ldr	r5, .L146+4
	ldr	r6, .L146+8
.LPIC44:
	add	r4, pc
	ldr	r8, .L146+12
	ldr	r7, .L146+16
.LPIC39:
	add	r5, pc
.LPIC40:
	add	r6, pc
.LPIC46:
	add	r8, pc
.LPIC43:
	add	r7, pc
.L131:
	ldr	r3, [r4]
	ldrb	r0, [r3, #88]	@ zero_extendqisi2
	cbz	r0, .L145
.L140:
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r6]	@ zero_extendqisi2
	cbnz	r3, .L132
	ldr	r2, [r4]
	ldr	r0, [r2, #92]
	mov	r9, r0
	cbz	r0, .L133
	ldr	r3, [r0, #344]
	mov	r9, r3
	cbz	r3, .L133
	blx	r3
	ldr	r2, [r4]
	adds	r9, r0, #0
	it	ne
	movne	r9, #1
.L133:
	ldr	r3, [r2, #44]
	cbz	r3, .L138
	blx	r3
	cbz	r0, .L138
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
.L135:
	bl	libaroma_wm_syncarea(PLT)
	ldr	r3, [r4]
	ldrb	r0, [r3, #88]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L140
.L145:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L132:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
.L136:
	mov	r0, #16000
	bl	usleep(PLT)
	b	.L131
.L138:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	cmp	r9, #0
	beq	.L136
	b	.L135
.L147:
	.align	2
.L146:
	.word	.LANCHOR0-(.LPIC44+4)
	.word	.LANCHOR4-(.LPIC39+4)
	.word	.LANCHOR5-(.LPIC40+4)
	.word	.LANCHOR4-(.LPIC46+4)
	.word	.LANCHOR4-(.LPIC43+4)
	.size	_libaroma_wm_ui_thread, .-_libaroma_wm_ui_thread
	.section	.text.libaroma_wm_canvas,"ax",%progbits
	.align	2
	.global	libaroma_wm_canvas
	.thumb
	.thumb_func
	.type	libaroma_wm_canvas, %function
libaroma_wm_canvas:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	ldr	r4, .L155
.LPIC47:
	add	r4, pc
	ldr	r4, [r4]
	cbz	r4, .L152
	ldr	lr, [r4, #48]
	ldr	r5, [r4, #52]
	add	r7, lr, r0
	cmp	lr, r7
	add	r6, r5, r1
	itt	gt
	subgt	r2, r2, r0
	movgt	r7, #0
	cmp	r5, r6
	itt	gt
	subgt	r3, r3, r1
	movgt	r6, #0
	cmp	r2, #0
	it	gt
	cmpgt	r3, #0
	ble	.L153
	ldr	r5, [r4, #56]
	ldr	r4, [r4, #60]
	cmp	r5, r2
	it	ge
	movge	r5, r2
	cmp	r4, r3
	it	ge
	movge	r4, r3
	bl	libaroma_fb(PLT)
	mov	r3, r5
	ldr	r0, [r0, #52]
	mov	r1, r7
	str	r4, [sp]
	mov	r2, r6
	bl	libaroma_canvas_area(PLT)
.L149:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L153:
	movs	r0, #0
	b	.L149
.L152:
	mov	r0, r4
	b	.L149
.L156:
	.align	2
.L155:
	.word	.LANCHOR0-(.LPIC47+4)
	.size	libaroma_wm_canvas, .-libaroma_wm_canvas
	.section	.text.libaroma_wm_getmessage,"ax",%progbits
	.align	2
	.global	libaroma_wm_getmessage
	.thumb
	.thumb_func
	.type	libaroma_wm_getmessage, %function
libaroma_wm_getmessage:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, .L170
.LPIC48:
	add	r5, pc
	ldr	r3, [r5]
	ldrb	r4, [r3, #88]	@ zero_extendqisi2
	cbnz	r4, .L168
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L168:
	mov	r7, r0
	ldr	r0, .L170+4
	ldr	r6, .L170+8
	ldr	r8, .L170+12
.LPIC49:
	add	r0, pc
	bl	pthread_mutex_lock(PLT)
	ldr	r3, [r5]
.LPIC51:
	add	r6, pc
	ldr	r5, .L170+16
.LPIC53:
	add	r8, pc
.LPIC52:
	add	r5, pc
	b	.L159
.L161:
	bl	pthread_cond_wait(PLT)
	ldr	r3, [r8]
	ldrb	r4, [r3, #88]	@ zero_extendqisi2
	cbz	r4, .L169
.L159:
	ldr	r3, [r3, #84]
	mov	r0, r6
	mov	r1, r5
	ldr	r2, [r3]
	cmp	r2, #0
	ble	.L161
	mov	r0, r3
	bl	libaroma_stack_shift(PLT)
	mov	r4, r0
	cbz	r0, .L162
	ldr	r2, [r0]	@ unaligned
	ldr	r3, [r0, #4]	@ unaligned
	ldr	r5, [r0, #8]	@ unaligned
	ldr	r1, [r0, #12]	@ unaligned
	str	r2, [r7]	@ unaligned
	str	r3, [r7, #4]	@ unaligned
	str	r5, [r7, #8]	@ unaligned
	str	r1, [r7, #12]	@ unaligned
	ldr	r2, [r0, #16]	@ unaligned
	ldr	r3, [r0, #20]	@ unaligned
	str	r2, [r7, #16]	@ unaligned
	str	r3, [r7, #20]	@ unaligned
	ldrb	r4, [r0]	@ zero_extendqisi2
	bl	free(PLT)
.L162:
	ldr	r0, .L170+20
.LPIC55:
	add	r0, pc
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L169:
	mov	r0, r5
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L171:
	.align	2
.L170:
	.word	.LANCHOR0-(.LPIC48+4)
	.word	.LANCHOR1-(.LPIC49+4)
	.word	.LANCHOR2-(.LPIC51+4)
	.word	.LANCHOR0-(.LPIC53+4)
	.word	.LANCHOR1-(.LPIC52+4)
	.word	.LANCHOR1-(.LPIC55+4)
	.size	libaroma_wm_getmessage, .-libaroma_wm_getmessage
	.section	.text.libaroma_wm_client_start,"ax",%progbits
	.align	2
	.global	libaroma_wm_client_start
	.thumb
	.thumb_func
	.type	libaroma_wm_client_start, %function
libaroma_wm_client_start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	ldr	r5, .L177
.LPIC56:
	add	r5, pc
	ldr	r0, [r5]
	cbz	r0, .L173
	ldrb	r4, [r0, #88]	@ zero_extendqisi2
	movs	r0, #0
	cbnz	r4, .L173
	bl	libaroma_msg_start(PLT)
	ldr	r6, [r5]
	movs	r5, #1
	mov	r0, r4
	ldr	r7, .L177+4
	strb	r5, [r6, #88]
	bl	libaroma_stack(PLT)
	str	r0, [r6, #84]
.LPIC60:
	add	r7, pc
	bl	libaroma_wm_resetsync(PLT)
	ldr	r0, .L177+8
	mov	r1, r4
	ldr	r2, .L177+12
	mov	r3, r4
.LPIC58:
	add	r0, pc
.LPIC59:
	add	r2, pc
	bl	pthread_create(PLT)
	ldr	r2, .L177+16
	mov	r1, r4
	mov	r3, r1
	mov	r0, r7
.LPIC61:
	add	r2, pc
	bl	pthread_create(PLT)
	ldr	r4, [r7]
	mov	r0, r5
	bl	sched_get_priority_max(PLT)
	add	r2, sp, #8
	mov	r1, r5
	str	r0, [r2, #-4]!
	mov	r0, r4
	bl	pthread_setschedparam(PLT)
	mov	r0, r5
.L173:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L178:
	.align	2
.L177:
	.word	.LANCHOR0-(.LPIC56+4)
	.word	.LANCHOR7-(.LPIC60+4)
	.word	.LANCHOR6-(.LPIC58+4)
	.word	_libaroma_wm_message_thread-(.LPIC59+4)
	.word	_libaroma_wm_ui_thread-(.LPIC61+4)
	.size	libaroma_wm_client_start, .-libaroma_wm_client_start
	.section	.text.libaroma_wm_client_stop,"ax",%progbits
	.align	2
	.global	libaroma_wm_client_stop
	.thumb
	.thumb_func
	.type	libaroma_wm_client_stop, %function
libaroma_wm_client_stop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	ldr	r5, .L186
.LPIC63:
	add	r5, pc
	ldr	r3, [r5]
	cbz	r3, .L181
	ldrb	r0, [r3, #88]	@ zero_extendqisi2
	cbz	r0, .L180
	ldr	r7, .L186+4
	movs	r4, #0
	ldr	r6, .L186+8
	mov	r2, r4
	strb	r4, [r3, #88]
	mov	r1, r4
	mov	r3, r4
.LPIC64:
	add	r7, pc
	mov	r0, r4
	str	r4, [sp]
	str	r4, [sp, #4]
.LPIC65:
	add	r6, pc
	bl	libaroma_msg_post(PLT)
	mov	r1, r4
	ldr	r0, [r7]
	bl	pthread_join(PLT)
	mov	r1, r4
	ldr	r0, [r6]
	bl	pthread_join(PLT)
	ldr	r3, [r5]
	str	r4, [r7]
	str	r4, [r6]
	ldr	r0, [r3, #84]
	bl	libaroma_stack_free(PLT)
	bl	libaroma_msg_stop(PLT)
	movs	r0, #1
.L180:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L181:
	mov	r0, r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L187:
	.align	2
.L186:
	.word	.LANCHOR0-(.LPIC63+4)
	.word	.LANCHOR7-(.LPIC64+4)
	.word	.LANCHOR6-(.LPIC65+4)
	.size	libaroma_wm_client_stop, .-libaroma_wm_client_stop
	.section	.text.libaroma_wm_release,"ax",%progbits
	.align	2
	.global	libaroma_wm_release
	.thumb
	.thumb_func
	.type	libaroma_wm_release, %function
libaroma_wm_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L199
.LPIC69:
	add	r4, pc
	ldr	r0, [r4]
	cmp	r0, #0
	beq	.L189
	ldr	r5, .L199+4
.LPIC70:
	add	r5, pc
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4]
	movs	r0, #1
	ldr	r1, .L199+8
	ldrb	r2, [r3, #88]	@ zero_extendqisi2
.LPIC71:
	add	r1, pc
	strb	r0, [r1]
	cbnz	r2, .L198
.L190:
	ldr	r4, .L199+12
	ldr	r0, [r3, #32]
	bl	libaroma_sarray_free(PLT)
.LPIC76:
	add	r4, pc
	ldr	r3, [r4]
	ldr	r0, [r3, #28]
	bl	libaroma_sarray_free(PLT)
	ldr	r0, [r4]
	ldr	r3, [r0, #96]
	cbz	r3, .L191
	adds	r0, r0, #96
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L191:
	ldr	r6, .L199+16
	movs	r4, #0
	ldr	r3, .L199+20
	ldr	r5, .L199+24
.LPIC79:
	add	r6, pc
.LPIC78:
	add	r3, pc
	mov	r0, r6
	strb	r4, [r3]
.LPIC84:
	add	r5, pc
	bl	omp_unset_nest_lock(PLT)
	ldr	r0, .L199+28
.LPIC80:
	add	r0, pc
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r6
	bl	omp_destroy_nest_lock(PLT)
	ldr	r0, .L199+32
	ldr	r1, .L199+36
.LPIC82:
	add	r0, pc
.LPIC83:
	add	r1, pc
	bl	libaroma_cond_free(PLT)
	ldr	r0, [r5]
	bl	free(PLT)
	movs	r0, #1
	str	r4, [r5]
.L189:
	pop	{r4, r5, r6, pc}
.L198:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	bl	libaroma_wm_client_stop(PLT)
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4]
	b	.L190
.L200:
	.align	2
.L199:
	.word	.LANCHOR0-(.LPIC69+4)
	.word	.LANCHOR4-(.LPIC70+4)
	.word	.LANCHOR5-(.LPIC71+4)
	.word	.LANCHOR0-(.LPIC76+4)
	.word	.LANCHOR4-(.LPIC79+4)
	.word	.LANCHOR5-(.LPIC78+4)
	.word	.LANCHOR0-(.LPIC84+4)
	.word	.LANCHOR3-(.LPIC80+4)
	.word	.LANCHOR2-(.LPIC82+4)
	.word	.LANCHOR1-(.LPIC83+4)
	.size	libaroma_wm_release, .-libaroma_wm_release
	.section	.text.libaroma_wm_set_ui_thread,"ax",%progbits
	.align	2
	.global	libaroma_wm_set_ui_thread
	.thumb
	.thumb_func
	.type	libaroma_wm_set_ui_thread, %function
libaroma_wm_set_ui_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	ldr	r4, .L211
.LPIC86:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L202
	ldr	r6, .L211+4
.LPIC87:
	add	r6, pc
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4]
	str	r5, [r3, #44]
	cbz	r5, .L203
	ldrb	r3, [r3, #88]	@ zero_extendqisi2
	cbz	r3, .L210
.L204:
	ldr	r0, .L211+8
.LPIC91:
	add	r0, pc
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
.L202:
	pop	{r4, r5, r6, pc}
.L210:
	bl	libaroma_wm_client_start(PLT)
	b	.L204
.L203:
	ldrb	r2, [r3, #88]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L204
	ldr	r3, [r3, #92]
	cmp	r3, #0
	bne	.L204
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	bl	libaroma_wm_client_stop(PLT)
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	b	.L204
.L212:
	.align	2
.L211:
	.word	.LANCHOR0-(.LPIC86+4)
	.word	.LANCHOR4-(.LPIC87+4)
	.word	.LANCHOR4-(.LPIC91+4)
	.size	libaroma_wm_set_ui_thread, .-libaroma_wm_set_ui_thread
	.section	.text.libaroma_wm_message_clear,"ax",%progbits
	.align	2
	.global	libaroma_wm_message_clear
	.thumb
	.thumb_func
	.type	libaroma_wm_message_clear, %function
libaroma_wm_message_clear:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L217
.LPIC92:
	add	r4, pc
	ldr	r3, [r4]
	ldrb	r3, [r3, #88]	@ zero_extendqisi2
	cbnz	r3, .L216
	pop	{r3, r4, r5, pc}
.L216:
	ldr	r5, .L217+4
.LPIC93:
	add	r5, pc
	mov	r0, r5
	bl	pthread_mutex_lock(PLT)
	ldr	r3, [r4]
	ldr	r0, [r3, #84]
	bl	libaroma_stack_free(PLT)
	ldr	r4, [r4]
	movs	r0, #0
	bl	libaroma_stack(PLT)
	str	r0, [r4, #84]
	mov	r0, r5
	pop	{r3, r4, r5, lr}
	b	pthread_mutex_unlock(PLT)
.L218:
	.align	2
.L217:
	.word	.LANCHOR0-(.LPIC92+4)
	.word	.LANCHOR1-(.LPIC93+4)
	.size	libaroma_wm_message_clear, .-libaroma_wm_message_clear
	.section	.text.libaroma_wm_set_theme,"ax",%progbits
	.align	2
	.global	libaroma_wm_set_theme
	.thumb
	.thumb_func
	.type	libaroma_wm_set_theme, %function
libaroma_wm_set_theme:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r3
	ldr	r5, .L226
	sub	sp, sp, #24
.LPIC97:
	add	r5, pc
	ldr	r3, [r5]
	cbz	r3, .L222
	mov	r6, r0
	str	r1, [sp, #8]
	strb	r2, [sp, #12]
	cbz	r4, .L225
.L221:
	ldr	r0, [r3, #28]
	movs	r3, #1
	str	r3, [sp]
	mov	r1, r6
	add	r2, sp, #8
	movs	r3, #12
	str	r4, [sp, #16]
	bl	libaroma_sarray_set(PLT)
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L225:
	bl	libaroma_fb(PLT)
	ldr	r3, [r5]
	ldr	r4, [r0, #44]
	b	.L221
.L222:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L227:
	.align	2
.L226:
	.word	.LANCHOR0-(.LPIC97+4)
	.size	libaroma_wm_set_theme, .-libaroma_wm_set_theme
	.section	.text.libaroma_wm_set_theme_stream,"ax",%progbits
	.align	2
	.global	libaroma_wm_set_theme_stream
	.thumb
	.thumb_func
	.type	libaroma_wm_set_theme_stream, %function
libaroma_wm_set_theme_stream:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	cbz	r1, .L230
	mov	r7, r3
	ldr	r3, .L243
	mov	r6, r2
.LPIC99:
	add	r3, pc
	ldr	r2, [r3]
	cbz	r2, .L242
	mov	r8, r0
	add	r0, r1, #10
	bl	strlen(PLT)
	subs	r3, r0, #6
	cmp	r3, #0
	it	le
	movle	r5, #0
	ble	.L233
	ldr	r1, .L243+4
	add	r0, r0, r4
	adds	r0, r0, #4
.LPIC100:
	add	r1, pc
	bl	strcmp(PLT)
	clz	r5, r0
	lsrs	r5, r5, #5
.L233:
	mov	r1, r6
	mov	r0, r4
	movs	r2, #1
	bl	libaroma_image_ex(PLT)
	mov	r1, r0
	cbz	r0, .L230
	mov	r0, r8
	orr	r2, r5, #2
	mov	r3, r7
	pop	{r4, r5, r6, r7, r8, lr}
	b	libaroma_wm_set_theme(PLT)
.L242:
	cbz	r6, .L230
	mov	r0, r1
	bl	libaroma_stream_close(PLT)
.L230:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L244:
	.align	2
.L243:
	.word	.LANCHOR0-(.LPIC99+4)
	.word	.LC0-(.LPIC100+4)
	.size	libaroma_wm_set_theme_stream, .-libaroma_wm_set_theme_stream
	.section	.text.libaroma_wm_get_theme,"ax",%progbits
	.align	2
	.global	libaroma_wm_get_theme
	.thumb
	.thumb_func
	.type	libaroma_wm_get_theme, %function
libaroma_wm_get_theme:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L247
	mov	r1, r0
.LPIC101:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L246
	ldr	r0, [r0, #28]
	b	libaroma_sarray_get(PLT)
.L246:
	bx	lr
.L248:
	.align	2
.L247:
	.word	.LANCHOR0-(.LPIC101+4)
	.size	libaroma_wm_get_theme, .-libaroma_wm_get_theme
	.section	.text.libaroma_wm_theme_exists,"ax",%progbits
	.align	2
	.global	libaroma_wm_theme_exists
	.thumb
	.thumb_func
	.type	libaroma_wm_theme_exists, %function
libaroma_wm_theme_exists:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, .L253
.LPIC102:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L251
	mov	r1, r0
	ldr	r0, [r3, #28]
	bl	libaroma_sarray_get(PLT)
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	pop	{r3, pc}
.L251:
	mov	r0, r3
	pop	{r3, pc}
.L254:
	.align	2
.L253:
	.word	.LANCHOR0-(.LPIC102+4)
	.size	libaroma_wm_theme_exists, .-libaroma_wm_theme_exists
	.section	.text.libaroma_wm_del_theme,"ax",%progbits
	.align	2
	.global	libaroma_wm_del_theme
	.thumb
	.thumb_func
	.type	libaroma_wm_del_theme, %function
libaroma_wm_del_theme:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L257
	mov	r1, r0
.LPIC103:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L256
	ldr	r0, [r0, #28]
	b	libaroma_sarray_delete(PLT)
.L256:
	bx	lr
.L258:
	.align	2
.L257:
	.word	.LANCHOR0-(.LPIC103+4)
	.size	libaroma_wm_del_theme, .-libaroma_wm_del_theme
	.section	.text.libaroma_wm_draw_themep,"ax",%progbits
	.align	2
	.global	libaroma_wm_draw_themep
	.thumb
	.thumb_func
	.type	libaroma_wm_draw_themep, %function
libaroma_wm_draw_themep:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r0
	ldr	r6, .L284
	sub	sp, sp, #44
	ldr	r5, [sp, #72]
.LPIC104:
	add	r6, pc
	ldr	r7, [sp, #80]
	ldr	r0, [r6]
	ldr	r6, [sp, #76]
	cbz	r0, .L260
	mov	r4, r1
	cmp	r1, #0
	beq	.L275
	mov	r9, r2
	cmp	r8, #0
	beq	.L280
.L261:
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ands	r1, r1, #1
	bne	.L281
	cbz	r7, .L266
	mov	r0, r7
	movs	r2, #16
	str	r3, [sp, #36]
	bl	memset(PLT)
	ldr	r3, [sp, #36]
.L266:
	ldr	r1, [r4]
	cmp	r5, #0
	itet	le
	ldrle	r5, [r1]
	ldrgt	r2, [r1]
	movle	r2, r5
	cmp	r6, #0
	ble	.L269
	cmp	r5, r2
	ldr	r7, [r1, #4]
	beq	.L282
.L271:
	movs	r4, #0
	str	r2, [sp, #16]
	stmia	sp, {r5, r6}
	mov	r0, r8
	str	r7, [sp, #20]
	mov	r2, r9
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	bl	libaroma_draw_scale_smooth(PLT)
.L260:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L281:
	ldr	r1, [r4]
	cmp	r5, #0
	ldr	r4, [r4, #8]
	mov	r0, r8
	mov	r2, r9
	itt	le
	ldrle	r5, [r1]
	suble	r5, r5, #2
	cmp	r6, #0
	it	le
	ldrle	r6, [r1, #4]
	str	r4, [sp, #8]
	str	r7, [sp, #12]
	it	le
	suble	r6, r6, #2
	stmia	sp, {r5, r6}
	bl	libaroma_png9p_draw(PLT)
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L282:
	cmp	r6, r7
	bne	.L271
.L272:
	ldr	r4, [r1, #24]
	cbz	r4, .L283
	movs	r4, #0
	stmia	sp, {r5, r6}
	mov	r0, r8
	str	r5, [sp, #16]
	str	r6, [sp, #20]
	mov	r2, r9
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	bl	libaroma_draw_scale_nearest(PLT)
	b	.L260
.L269:
	ldr	r6, [r1, #4]
	cmp	r5, r2
	it	ne
	movne	r7, r6
	bne	.L271
	b	.L272
.L275:
	mov	r0, r1
	b	.L260
.L280:
	str	r3, [sp, #36]
	bl	libaroma_fb(PLT)
	ldr	r3, [sp, #36]
	ldr	r8, [r0, #52]
	b	.L261
.L283:
	mov	lr, #1
	movs	r7, #255
	str	r4, [sp]
	mov	r0, r8
	str	r4, [sp, #4]
	mov	r2, r9
	str	r5, [sp, #8]
	str	r6, [sp, #12]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	lr, [sp, #16]
	str	r7, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L260
.L285:
	.align	2
.L284:
	.word	.LANCHOR0-(.LPIC104+4)
	.size	libaroma_wm_draw_themep, .-libaroma_wm_draw_themep
	.section	.text.libaroma_wm_draw_theme,"ax",%progbits
	.align	2
	.global	libaroma_wm_draw_theme
	.thumb
	.thumb_func
	.type	libaroma_wm_draw_theme, %function
libaroma_wm_draw_theme:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r4, .L297
	ldr	r10, [sp, #32]
.LPIC105:
	add	r4, pc
	ldr	r9, [sp, #36]
	ldr	r4, [r4]
	ldr	r8, [sp, #40]
	cbz	r4, .L288
	cbz	r1, .L288
	mov	r5, r0
	mov	r0, r1
	mov	r7, r2
	mov	r6, r3
	bl	libaroma_wm_get_theme(PLT)
	mov	r1, r0
	cbz	r0, .L288
	str	r10, [sp, #32]
	mov	r0, r5
	str	r9, [sp, #36]
	mov	r2, r7
	str	r8, [sp, #40]
	mov	r3, r6
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	libaroma_wm_draw_themep(PLT)
.L288:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L298:
	.align	2
.L297:
	.word	.LANCHOR0-(.LPIC105+4)
	.size	libaroma_wm_draw_theme, .-libaroma_wm_draw_theme
	.section	.text.libaroma_wm_set_color,"ax",%progbits
	.align	2
	.global	libaroma_wm_set_color
	.thumb
	.thumb_func
	.type	libaroma_wm_set_color, %function
libaroma_wm_set_color:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L303
	push	{r4, lr}
	sub	sp, sp, #16
	strh	r1, [sp, #14]	@ movhi
.LPIC106:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L301
	ldr	r4, [r3, #32]
	movs	r3, #0
	mov	r1, r0
	str	r3, [sp]
	add	r2, sp, #14
	movs	r3, #2
	mov	r0, r4
	bl	libaroma_sarray_set(PLT)
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L301:
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L304:
	.align	2
.L303:
	.word	.LANCHOR0-(.LPIC106+4)
	.size	libaroma_wm_set_color, .-libaroma_wm_set_color
	.section	.text._libaroma_wm_default_set,"ax",%progbits
	.align	2
	.global	_libaroma_wm_default_set
	.thumb
	.thumb_func
	.type	_libaroma_wm_default_set, %function
_libaroma_wm_default_set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L314
	push	{r4, lr}
	mov	r4, r0
.LPIC107:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L305
	movs	r1, #0
	bl	libaroma_colorset(PLT)
	lsls	r3, r4, #31
	bmi	.L313
.L305:
	pop	{r4, pc}
.L313:
	ldr	r0, .L314+4
	movw	r1, #12841
.LPIC108:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+8
	movw	r1, #12841
.LPIC109:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+12
	movw	r1, #65535
.LPIC110:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+16
	movs	r1, #0
.LPIC111:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+20
	movw	r1, #8583
.LPIC112:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+24
	movw	r1, #8583
.LPIC113:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+28
	movw	r1, #65535
.LPIC114:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+32
	movs	r1, #0
.LPIC115:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+36
	movw	r1, #14857
.LPIC116:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+40
	movw	r1, #14857
.LPIC117:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+44
	movw	r1, #52857
.LPIC118:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+48
	movs	r1, #0
.LPIC119:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+52
	movw	r1, #34392
.LPIC120:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+56
	movw	r1, #34392
.LPIC121:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+60
	movw	r1, #65535
.LPIC122:
	add	r0, pc
	bl	libaroma_wm_set_color(PLT)
	ldr	r0, .L314+64
	movs	r1, #0
	pop	{r4, lr}
.LPIC123:
	add	r0, pc
	b	libaroma_wm_set_color(PLT)
.L315:
	.align	2
.L314:
	.word	.LANCHOR0-(.LPIC107+4)
	.word	.LC1-(.LPIC108+4)
	.word	.LC2-(.LPIC109+4)
	.word	.LC3-(.LPIC110+4)
	.word	.LC4-(.LPIC111+4)
	.word	.LC5-(.LPIC112+4)
	.word	.LC6-(.LPIC113+4)
	.word	.LC7-(.LPIC114+4)
	.word	.LC8-(.LPIC115+4)
	.word	.LC9-(.LPIC116+4)
	.word	.LC10-(.LPIC117+4)
	.word	.LC11-(.LPIC118+4)
	.word	.LC12-(.LPIC119+4)
	.word	.LC13-(.LPIC120+4)
	.word	.LC14-(.LPIC121+4)
	.word	.LC15-(.LPIC122+4)
	.word	.LC16-(.LPIC123+4)
	.size	_libaroma_wm_default_set, .-_libaroma_wm_default_set
	.section	.text.libaroma_wm_init,"ax",%progbits
	.align	2
	.global	libaroma_wm_init
	.thumb
	.thumb_func
	.type	libaroma_wm_init, %function
libaroma_wm_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r4, .L324
	ldr	r6, .L324+4
.LPIC124:
	add	r4, pc
	ldr	r5, [r4]
.LPIC132:
	add	r6, pc
	cbz	r5, .L317
.L319:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L317:
	movs	r0, #100
	movs	r1, #1
	bl	calloc(PLT)
	str	r0, [r4]
	cmp	r0, #0
	beq	.L319
	ldr	r0, .L324+8
	ldr	r1, .L324+12
.LPIC126:
	add	r0, pc
.LPIC127:
	add	r1, pc
	bl	libaroma_cond_init(PLT)
	ldr	r0, .L324+16
.LPIC128:
	add	r0, pc
	bl	omp_init_nest_lock(PLT)
	ldr	r0, .L324+20
.LPIC129:
	add	r0, pc
	bl	omp_init_nest_lock(PLT)
	ldr	r2, .L324+24
	ldr	r3, .L324+28
	ldr	r7, [r4]
.LPIC130:
	add	r2, pc
	strb	r5, [r2]
	ldr	r0, [r6, r3]
	bl	libaroma_sarray(PLT)
	ldr	r6, [r4]
	str	r0, [r7, #28]
	mov	r0, r5
	bl	libaroma_sarray(PLT)
	str	r0, [r6, #32]
	ldr	r5, [r4]
	bl	libaroma_fb(PLT)
	ldr	r3, [r0]
	ldr	r4, [r4]
	str	r3, [r5, #56]
	bl	libaroma_fb(PLT)
	ldr	r3, [r0, #4]
	movs	r0, #3
	str	r3, [r4, #60]
	bl	_libaroma_wm_default_set(PLT)
	bl	_libaroma_wm_workspace_canvas(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L325:
	.align	2
.L324:
	.word	.LANCHOR0-(.LPIC124+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC132+4)
	.word	.LANCHOR2-(.LPIC126+4)
	.word	.LANCHOR1-(.LPIC127+4)
	.word	.LANCHOR4-(.LPIC128+4)
	.word	.LANCHOR3-(.LPIC129+4)
	.word	.LANCHOR5-(.LPIC130+4)
	.word	_libaroma_wm_theme_release(GOT)
	.size	libaroma_wm_init, .-libaroma_wm_init
	.section	.text.libaroma_wm_reset,"ax",%progbits
	.align	2
	.global	libaroma_wm_reset
	.thumb
	.thumb_func
	.type	libaroma_wm_reset, %function
libaroma_wm_reset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r6, .L341
	ldr	r5, .L341+4
.LPIC136:
	add	r6, pc
	ldr	r0, [r6]
.LPIC140:
	add	r5, pc
	cbz	r0, .L327
	lsls	r2, r4, #31
	bmi	.L339
	lsls	r3, r4, #30
	bmi	.L340
.L329:
	mov	r0, r4
	bl	_libaroma_wm_default_set(PLT)
	ldr	r3, .L341+8
.LPIC141:
	add	r3, pc
	ldr	r0, [r3]
	ldr	r3, [r0, #40]
	cbz	r3, .L331
	mov	r1, r4
	blx	r3
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L331:
	movs	r0, #1
.L327:
	pop	{r4, r5, r6, pc}
.L339:
	ldr	r0, [r0, #32]
	bl	libaroma_sarray_free(PLT)
	ldr	r6, [r6]
	movs	r0, #0
	bl	libaroma_sarray(PLT)
	lsls	r3, r4, #30
	str	r0, [r6, #32]
	bpl	.L329
.L340:
	ldr	r6, .L341+12
.LPIC138:
	add	r6, pc
	ldr	r3, [r6]
	ldr	r0, [r3, #28]
	bl	libaroma_sarray_free(PLT)
	ldr	r3, .L341+16
	ldr	r6, [r6]
	ldr	r0, [r5, r3]
	bl	libaroma_sarray(PLT)
	str	r0, [r6, #28]
	b	.L329
.L342:
	.align	2
.L341:
	.word	.LANCHOR0-(.LPIC136+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC140+4)
	.word	.LANCHOR0-(.LPIC141+4)
	.word	.LANCHOR0-(.LPIC138+4)
	.word	_libaroma_wm_theme_release(GOT)
	.size	libaroma_wm_reset, .-libaroma_wm_reset
	.section	.text.libaroma_wm_get_color,"ax",%progbits
	.align	2
	.global	libaroma_wm_get_color
	.thumb
	.thumb_func
	.type	libaroma_wm_get_color, %function
libaroma_wm_get_color:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r1, r0
	ldr	r4, .L348
.LPIC142:
	add	r4, pc
	ldr	r3, [r4]
	ldr	r0, [r3, #32]
	bl	libaroma_sarray_get(PLT)
	ldr	r3, [r4]
	cbz	r3, .L345
	cbz	r0, .L344
	ldrh	r0, [r0]
	pop	{r4, pc}
.L345:
	mov	r0, r3
.L344:
	pop	{r4, pc}
.L349:
	.align	2
.L348:
	.word	.LANCHOR0-(.LPIC142+4)
	.size	libaroma_wm_get_color, .-libaroma_wm_get_color
	.section	.text.libaroma_wm_del_color,"ax",%progbits
	.align	2
	.global	libaroma_wm_del_color
	.thumb
	.thumb_func
	.type	libaroma_wm_del_color, %function
libaroma_wm_del_color:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L352
	mov	r1, r0
.LPIC144:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L351
	ldr	r0, [r0, #32]
	b	libaroma_sarray_delete(PLT)
.L351:
	bx	lr
.L353:
	.align	2
.L352:
	.word	.LANCHOR0-(.LPIC144+4)
	.size	libaroma_wm_del_color, .-libaroma_wm_del_color
	.section	.text.libaroma_wm_set_active_window,"ax",%progbits
	.align	2
	.global	libaroma_wm_set_active_window
	.thumb
	.thumb_func
	.type	libaroma_wm_set_active_window, %function
libaroma_wm_set_active_window:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r5, .L371
	sub	sp, sp, #36
.LPIC145:
	add	r5, pc
	ldr	r0, [r5]
	cmp	r0, #0
	beq	.L355
	ldr	r7, .L371+4
	movs	r6, #1
.LPIC146:
	add	r7, pc
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r5]
	ldr	r2, .L371+8
	ldr	r5, [r3, #92]
.LPIC147:
	add	r2, pc
	strb	r6, [r2]
	cmp	r5, r4
	beq	.L369
	cbz	r5, .L357
	movs	r2, #0
	movs	r1, #130
	str	r2, [r3, #92]
	add	r0, sp, #8
	mov	r3, r2
	str	r2, [sp]
	mov	r2, r4
	bl	libaroma_wm_compose(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	libaroma_window_process_event(PLT)
.L357:
	bl	_libaroma_wm_workspace_canvas_update(PLT)
	cbz	r4, .L358
	ldr	r5, .L371+12
	movs	r7, #0
	add	r6, sp, #8
	mov	r3, r7
	movs	r1, #129
	mov	r0, r6
.LPIC151:
	add	r5, pc
	ldr	r2, [r5]
	ldr	r2, [r2, #92]
	str	r7, [sp]
	bl	libaroma_wm_compose(PLT)
	ldr	r3, [r5]
	mov	r1, r6
	mov	r0, r4
	str	r4, [r3, #92]
	bl	libaroma_window_process_event(PLT)
	ldr	r3, [r5]
	ldrb	r3, [r3, #88]	@ zero_extendqisi2
	cbz	r3, .L370
.L359:
	bl	libaroma_wm_message_clear(PLT)
.L360:
	ldr	r3, .L371+16
	movs	r2, #0
	ldr	r0, .L371+20
.LPIC157:
	add	r3, pc
.LPIC158:
	add	r0, pc
	strb	r2, [r3]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
.L355:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L358:
	ldr	r3, .L371+24
.LPIC154:
	add	r3, pc
	ldr	r3, [r3]
	ldrb	r2, [r3, #88]	@ zero_extendqisi2
	str	r4, [r3, #92]
	cmp	r2, #0
	beq	.L360
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L360
	ldr	r4, .L371+28
.LPIC155:
	add	r4, pc
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	bl	libaroma_wm_client_stop(PLT)
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	b	.L360
.L370:
	bl	libaroma_wm_client_start(PLT)
	b	.L359
.L369:
	mov	r0, r7
	movs	r3, #0
	strb	r3, [r2]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r6
	b	.L355
.L372:
	.align	2
.L371:
	.word	.LANCHOR0-(.LPIC145+4)
	.word	.LANCHOR4-(.LPIC146+4)
	.word	.LANCHOR5-(.LPIC147+4)
	.word	.LANCHOR0-(.LPIC151+4)
	.word	.LANCHOR5-(.LPIC157+4)
	.word	.LANCHOR4-(.LPIC158+4)
	.word	.LANCHOR0-(.LPIC154+4)
	.word	.LANCHOR4-(.LPIC155+4)
	.size	libaroma_wm_set_active_window, .-libaroma_wm_set_active_window
	.section	.text.libaroma_wm_get_active_window,"ax",%progbits
	.align	2
	.global	libaroma_wm_get_active_window
	.thumb
	.thumb_func
	.type	libaroma_wm_get_active_window, %function
libaroma_wm_get_active_window:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L376
.LPIC159:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L374
	ldr	r0, [r0, #92]
.L374:
	bx	lr
.L377:
	.align	2
.L376:
	.word	.LANCHOR0-(.LPIC159+4)
	.size	libaroma_wm_get_active_window, .-libaroma_wm_get_active_window
	.section	.bss._libaroma_wm_onprocessing,"aw",%nobits
.LANCHOR5 = . + 0
	.type	_libaroma_wm_onprocessing, %object
	.size	_libaroma_wm_onprocessing, 1
_libaroma_wm_onprocessing:
	.space	1
	.section	.bss._libaroma_wm,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_wm, %object
	.size	_libaroma_wm, 4
_libaroma_wm:
	.space	4
	.section	.bss._libaroma_wm_message_thread_var,"aw",%nobits
	.align	2
.LANCHOR6 = . + 0
	.type	_libaroma_wm_message_thread_var, %object
	.size	_libaroma_wm_message_thread_var, 4
_libaroma_wm_message_thread_var:
	.space	4
	.section	.bss._libaroma_wm_ui_thread_var,"aw",%nobits
	.align	2
.LANCHOR7 = . + 0
	.type	_libaroma_wm_ui_thread_var, %object
	.size	_libaroma_wm_ui_thread_var, 4
_libaroma_wm_ui_thread_var:
	.space	4
	.section	.bss._libaroma_wm_cond,"aw",%nobits
	.align	3
.LANCHOR2 = . + 0
	.type	_libaroma_wm_cond, %object
	.size	_libaroma_wm_cond, 48
_libaroma_wm_cond:
	.space	48
	.section	.bss._libaroma_wm_mutex,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	_libaroma_wm_mutex, %object
	.size	_libaroma_wm_mutex, 24
_libaroma_wm_mutex:
	.space	24
	.section	.bss._libaroma_wm_ui_mutex,"aw",%nobits
	.align	2
.LANCHOR4 = . + 0
	.type	_libaroma_wm_ui_mutex, %object
	.size	_libaroma_wm_ui_mutex, 12
_libaroma_wm_ui_mutex:
	.space	12
	.section	.bss._libaroma_wm_sync_mutex,"aw",%nobits
	.align	2
.LANCHOR3 = . + 0
	.type	_libaroma_wm_sync_mutex, %object
	.size	_libaroma_wm_sync_mutex, 12
_libaroma_wm_sync_mutex:
	.space	12
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	".9.png\000"
	.space	1
.LC1:
	.ascii	"window\000"
	.space	1
.LC2:
	.ascii	"window_gradient\000"
.LC3:
	.ascii	"window_text\000"
.LC4:
	.ascii	"window_text_shadow\000"
	.space	1
.LC5:
	.ascii	"actionbar\000"
	.space	2
.LC6:
	.ascii	"actionbar_gradient\000"
	.space	1
.LC7:
	.ascii	"actionbar_text\000"
	.space	1
.LC8:
	.ascii	"actionbar_text_shadow\000"
	.space	2
.LC9:
	.ascii	"control\000"
.LC10:
	.ascii	"control_gradient\000"
	.space	3
.LC11:
	.ascii	"control_text\000"
	.space	3
.LC12:
	.ascii	"control_text_shadow\000"
.LC13:
	.ascii	"highlight\000"
	.space	2
.LC14:
	.ascii	"highlight_gradient\000"
	.space	1
.LC15:
	.ascii	"highlight_text\000"
	.space	1
.LC16:
	.ascii	"highlight_text_shadow\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
