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
	.file	"window.c"
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text._libaroma_window_ui_thread._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_window_ui_thread._omp_fn.0, %function
_libaroma_window_ui_thread._omp_fn.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #8
	ldr	r5, [r0]
	mov	r7, r0
	bl	omp_get_num_threads(PLT)
	ldr	r4, [r5, #328]
	mov	r6, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r6
	mov	r9, r0
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r1, r6
	mov	r8, r0
	mov	r0, r4
	bl	__aeabi_idivmod(PLT)
	cmp	r9, r1
	itt	lt
	addlt	r8, r8, #1
	movlt	r1, #0
	mla	r4, r9, r8, r1
	add	r8, r8, r4
	cmp	r4, r8
	bge	.L1
	lsls	r6, r4, #2
	mov	r10, #0
	mov	r9, #1
	b	.L5
.L7:
	adds	r4, r4, #1
	adds	r6, r6, #4
	cmp	r4, r8
	beq	.L1
.L17:
	ldr	r5, [r7]
.L5:
	ldr	r3, [r5, #332]
	ldr	r5, [r3, r6]
	ldr	r3, [r5, #72]
	mov	r0, r5
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L7
	blx	r3
	cmp	r0, #0
	beq	.L7
	mov	r0, r5
	movs	r1, #0
	bl	libaroma_control_draw(PLT)
	cmp	r0, #0
	beq	.L7
	ldr	r3, [r7]
	adds	r4, r4, #1
	ldr	ip, [r5, #16]
	adds	r6, r6, #4
	ldr	lr, [r5, #20]
	ldr	r0, [r3, #12]
	ldr	r1, [r3, #16]
	ldr	r2, [r5, #24]
	ldr	r3, [r5, #28]
	add	r0, r0, ip
	add	r1, r1, lr
	str	r10, [sp]
	bl	libaroma_wm_updatesync(PLT)
	cmp	r4, r8
	strb	r9, [r7, #4]
	bne	.L17
.L1:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	_libaroma_window_ui_thread._omp_fn.0, .-_libaroma_window_ui_thread._omp_fn.0
	.section	.text.libaroma_window_invalidate._omp_fn.2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_window_invalidate._omp_fn.2, %function
libaroma_window_invalidate._omp_fn.2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r0
	ldr	r6, [r0]
	bl	omp_get_num_threads(PLT)
	ldr	r4, [r6, #328]
	mov	r5, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r5
	mov	r9, r0
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r1, r5
	mov	r7, r0
	mov	r0, r4
	bl	__aeabi_idivmod(PLT)
	cmp	r9, r1
	itt	lt
	addlt	r7, r7, #1
	movlt	r1, #0
	mla	r4, r9, r7, r1
	add	r7, r7, r4
	cmp	r4, r7
	bge	.L18
	lsls	r5, r4, #2
	b	.L22
.L25:
	ldr	r6, [r8]
.L22:
	ldr	r3, [r6, #332]
	adds	r4, r4, #1
	movs	r1, #0
	ldr	r0, [r3, r5]
	adds	r5, r5, #4
	bl	libaroma_control_draw(PLT)
	cmp	r4, r7
	bne	.L25
.L18:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	libaroma_window_invalidate._omp_fn.2, .-libaroma_window_invalidate._omp_fn.2
	.section	.text.libaroma_window_free._omp_fn.1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_window_free._omp_fn.1, %function
libaroma_window_free._omp_fn.1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r0
	ldr	r6, [r0]
	bl	omp_get_num_threads(PLT)
	ldr	r4, [r6, #328]
	mov	r5, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r5
	mov	r9, r0
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r1, r5
	mov	r7, r0
	mov	r0, r4
	bl	__aeabi_idivmod(PLT)
	cmp	r9, r1
	itt	lt
	addlt	r7, r7, #1
	movlt	r1, #0
	mla	r4, r9, r7, r1
	add	r7, r7, r4
	cmp	r4, r7
	bge	.L26
	lsls	r5, r4, #2
	b	.L30
.L33:
	ldr	r6, [r8]
.L30:
	ldr	r3, [r6, #332]
	adds	r4, r4, #1
	ldr	r0, [r3, r5]
	adds	r5, r5, #4
	bl	libaroma_control_free(PLT)
	cmp	r4, r7
	bne	.L33
.L26:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	libaroma_window_free._omp_fn.1, .-libaroma_window_free._omp_fn.1
	.section	.text._libaroma_window_ui_thread,"ax",%progbits
	.align	2
	.global	_libaroma_window_ui_thread
	.thumb
	.thumb_func
	.type	_libaroma_window_ui_thread, %function
_libaroma_window_ui_thread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r2, [r0, #60]	@ zero_extendqisi2
	mov	r3, r0
	cmp	r2, #1
	beq	.L39
	movs	r0, #0
	bx	lr
.L39:
	ldr	r0, .L40
	push	{r4, r5, lr}
	movs	r5, #0
	sub	sp, sp, #12
	mov	r2, r5
	mov	r1, sp
.LPIC0:
	add	r0, pc
	str	r3, [sp]
	strb	r5, [sp, #4]
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	_libaroma_window_ui_thread._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	ldrb	r0, [sp, #4]	@ zero_extendqisi2
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L41:
	.align	2
.L40:
	.word	_libaroma_window_ui_thread._omp_fn.0-(.LPIC0+4)
	.size	_libaroma_window_ui_thread, .-_libaroma_window_ui_thread
	.section	.text.libaroma_window_usedp,"ax",%progbits
	.align	2
	.global	libaroma_window_usedp
	.thumb
	.thumb_func
	.type	libaroma_window_usedp, %function
libaroma_window_usedp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #1
	mov	r3, r0
	beq	.L46
	cbnz	r0, .L47
	ldr	r2, .L48
.LPIC3:
	add	r2, pc
	strb	r3, [r2]
	bx	lr
.L47:
	ldr	r3, .L48+4
.LPIC2:
	add	r3, pc
	ldrb	r0, [r3]	@ zero_extendqisi2
	bx	lr
.L46:
	ldr	r2, .L48+8
.LPIC1:
	add	r2, pc
	strb	r3, [r2]
	bx	lr
.L49:
	.align	2
.L48:
	.word	.LANCHOR0-(.LPIC3+4)
	.word	.LANCHOR0-(.LPIC2+4)
	.word	.LANCHOR0-(.LPIC1+4)
	.size	libaroma_window_usedp, .-libaroma_window_usedp
	.section	.text.libaroma_window_measure_point,"ax",%progbits
	.align	2
	.global	libaroma_window_measure_point
	.thumb
	.thumb_func
	.type	libaroma_window_measure_point, %function
libaroma_window_measure_point:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L53
.LPIC4:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r3, .L52
	bx	lr
.L52:
	b	libaroma_dp(PLT)
.L54:
	.align	2
.L53:
	.word	.LANCHOR0-(.LPIC4+4)
	.size	libaroma_window_measure_point, .-libaroma_window_measure_point
	.section	.text._libaroma_window_measure_save,"ax",%progbits
	.align	2
	.global	_libaroma_window_measure_save
	.thumb
	.thumb_func
	.type	_libaroma_window_measure_save, %function
_libaroma_window_measure_save:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	mov	r5, r1
	cbz	r0, .L56
	ldr	r3, .L69
.LPIC5:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r3, .L67
	add	r3, r0, #12
	adds	r4, r4, #44
	vld1.32	{q8}, [r3]
	vst1.32	{q8}, [r4]
.L56:
	cbz	r5, .L55
	ldr	r3, .L69+4
.LPIC6:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r3, .L68
	add	r3, r5, #16
	adds	r5, r5, #48
	vld1.32	{q8}, [r3]
	vst1.32	{q8}, [r5]
.L55:
	pop	{r3, r4, r5, pc}
.L67:
	ldr	r0, [r0, #12]
	bl	libaroma_px(PLT)
	str	r0, [r4, #44]
	ldr	r0, [r4, #16]
	bl	libaroma_px(PLT)
	str	r0, [r4, #48]
	ldr	r0, [r4, #20]
	bl	libaroma_px(PLT)
	str	r0, [r4, #52]
	ldr	r0, [r4, #24]
	bl	libaroma_px(PLT)
	str	r0, [r4, #56]
	b	.L56
.L68:
	ldr	r0, [r5, #16]
	bl	libaroma_px(PLT)
	str	r0, [r5, #48]
	ldr	r0, [r5, #20]
	bl	libaroma_px(PLT)
	str	r0, [r5, #52]
	ldr	r0, [r5, #24]
	bl	libaroma_px(PLT)
	str	r0, [r5, #56]
	ldr	r0, [r5, #28]
	bl	libaroma_px(PLT)
	str	r0, [r5, #60]
	pop	{r3, r4, r5, pc}
.L70:
	.align	2
.L69:
	.word	.LANCHOR0-(.LPIC5+4)
	.word	.LANCHOR0-(.LPIC6+4)
	.size	_libaroma_window_measure_save, .-_libaroma_window_measure_save
	.section	.text.libaroma_window_measure_calculate,"ax",%progbits
	.align	2
	.global	libaroma_window_measure_calculate
	.thumb
	.thumb_func
	.type	libaroma_window_measure_calculate, %function
libaroma_window_measure_calculate:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	cbz	r3, .L72
	cmp	r1, #0
	ble	.L97
.L73:
	ldr	r4, [sp], #4
	bx	lr
.L72:
	cmp	r1, #0
	bge	.L73
	add	r3, r1, #8
	cmp	r3, #4
	bhi	.L85
	tbb	[pc, r3]
.L87:
	.byte	(.L86-.L87)/2
	.byte	(.L96-.L87)/2
	.byte	(.L89-.L87)/2
	.byte	(.L90-.L87)/2
	.byte	(.L91-.L87)/2
	.align	1
.L97:
	add	r3, r1, #8
	cmp	r3, #8
	bhi	.L85
	tbb	[pc, r3]
.L76:
	.byte	(.L75-.L76)/2
	.byte	(.L77-.L76)/2
	.byte	(.L78-.L76)/2
	.byte	(.L79-.L76)/2
	.byte	(.L80-.L76)/2
	.byte	(.L96-.L76)/2
	.byte	(.L90-.L76)/2
	.byte	(.L91-.L76)/2
	.byte	(.L93-.L76)/2
	.align	1
.L86:
	add	r2, r2, r2, lsl #1
.L96:
	adds	r0, r2, #3
	bics	r2, r2, r2, asr #32
	it	cs
	movcs	r2, r0
	asrs	r0, r2, #2
	b	.L73
.L91:
	add	r2, r2, r2, lsr #31
	asrs	r0, r2, #1
	b	.L73
.L90:
	movw	r0, #21846
	movt	r0, 21845
	smull	r1, r0, r0, r2
	sub	r0, r0, r2, asr #31
	b	.L73
.L89:
	lsls	r2, r2, #1
	movw	r0, #21846
	movt	r0, 21845
	smull	r3, r0, r0, r2
	sub	r0, r0, r2, asr #31
	b	.L73
.L93:
	mov	r0, r2
	b	.L73
.L80:
	ldr	r1, [sp, #4]
	add	r2, r2, r2, lsr #31
	rsb	r0, r1, r2, asr #1
	b	.L73
.L79:
	movw	r3, #21846
	ldr	r1, [sp, #4]
	movt	r3, 21845
	smull	r4, r0, r3, r2
	sub	r0, r0, r2, asr #31
	subs	r0, r0, r1
	b	.L73
.L78:
	lsls	r2, r2, #1
	movw	r3, #21846
	movt	r3, 21845
	ldr	r1, [sp, #4]
	smull	r4, r3, r3, r2
	sub	r2, r3, r2, asr #31
	subs	r0, r2, r1
	b	.L73
.L77:
	ldr	r3, [sp, #4]
	adds	r0, r2, #3
	bics	r2, r2, r2, asr #32
	it	cs
	movcs	r2, r0
	rsb	r0, r3, r2, asr #2
	b	.L73
.L75:
	add	r2, r2, r2, lsl #1
	ldr	r4, [sp, #4]
	adds	r0, r2, #3
	bics	r2, r2, r2, asr #32
	it	cs
	movcs	r2, r0
	rsb	r0, r4, r2, asr #2
	b	.L73
.L85:
	negs	r0, r1
	b	.L73
	.size	libaroma_window_measure_calculate, .-libaroma_window_measure_calculate
	.section	.text._libaroma_window_updatebg,"ax",%progbits
	.align	2
	.global	_libaroma_window_updatebg
	.thumb
	.thumb_func
	.type	_libaroma_window_updatebg, %function
_libaroma_window_updatebg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L130
	ldr	r3, [r0, #356]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #20
	cbz	r3, .L101
	ldr	r3, [r3, #8]
	cbz	r3, .L101
	blx	r3
	cbz	r0, .L102
.L107:
	ldr	r3, [r4, #348]
	cbz	r3, .L128
	mov	r0, r4
	ldr	r1, [r4, #324]
	blx	r3
.L128:
	movs	r0, #1
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L101:
	ldr	r3, [r4, #352]
	cbz	r3, .L131
.L102:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L131:
	ldr	r3, [r4, #324]
	ldr	r6, [r4, #20]
	ldr	r7, [r4, #24]
	cbz	r3, .L104
	ldr	r2, [r3]
	cmp	r2, r6
	beq	.L132
.L105:
	add	r0, r4, #324
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L104:
	movs	r5, #0
	mov	r0, r6
	mov	r3, r5
	mov	r2, r5
	mov	r1, r7
	str	r5, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	mov	r6, r0
	mov	r1, r4
	mov	r0, r5
	str	r6, [r4, #324]
	bl	libaroma_colorget(PLT)
	movs	r2, #255
	ldrh	r1, [r0, #10]
	mov	r0, r6
	bl	libaroma_canvas_setcolor(PLT)
	ldrb	r3, [r4, #62]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L107
	ldr	r6, [r4, #324]
	mov	r2, r5
	mov	r3, r5
	add	r1, r4, #62
	ldr	r7, [r6]
	mov	r0, r6
	str	r7, [sp]
	ldr	r6, [r6, #4]
	str	r5, [sp, #8]
	str	r6, [sp, #4]
	bl	libaroma_wm_draw_theme(PLT)
	b	.L107
.L130:
	movs	r0, #0
	bx	lr
.L132:
	ldr	r3, [r3, #4]
	cmp	r3, r7
	bne	.L105
	b	.L128
	.size	_libaroma_window_updatebg, .-_libaroma_window_updatebg
	.section	.text.libaroma_window_isactive,"ax",%progbits
	.align	2
	.global	libaroma_window_isactive
	.thumb
	.thumb_func
	.type	libaroma_window_isactive, %function
libaroma_window_isactive:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbnz	r0, .L136
	b	.L140
.L139:
	mov	r4, r3
.L136:
	ldr	r3, [r4, #352]
	cmp	r3, #0
	bne	.L139
	bl	libaroma_wm_get_active_window(PLT)
	subs	r0, r4, r0
	clz	r0, r0
	lsrs	r0, r0, #5
	pop	{r4, pc}
.L140:
	pop	{r4, pc}
	.size	libaroma_window_isactive, .-libaroma_window_isactive
	.section	.text.libaroma_window_measure,"ax",%progbits
	.align	2
	.global	libaroma_window_measure
	.thumb
	.thumb_func
	.type	libaroma_window_measure, %function
libaroma_window_measure:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #36
	mov	r4, r1
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L142
	ldr	r3, .L154
.LPIC7:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L153
	mov	r3, r1
	add	r2, r1, #16
	ldr	r1, [r3, #32]!
	mov	r7, r1
	vld1.32	{q8}, [r3]
	vst1.32	{q8}, [r2]
.L144:
	movs	r6, #0
	ldr	r2, [r5, #20]
	mov	r3, r6
	mov	r0, r7
	str	r6, [sp]
	bl	libaroma_window_measure_calculate(PLT)
	ldr	r7, [r4, #20]
	mov	r3, r6
	ldr	r2, [r5, #24]
	ldr	r1, [r4, #36]
	str	r0, [r4, #16]
	mov	r0, r7
	str	r6, [sp]
	bl	libaroma_window_measure_calculate(PLT)
	ldr	r7, [r4, #24]
	movs	r3, #1
	ldr	r6, [r4, #16]
	ldr	r2, [r5, #20]
	ldr	r1, [r4, #40]
	str	r0, [r4, #20]
	mov	r0, r7
	str	r6, [sp]
	bl	libaroma_window_measure_calculate(PLT)
	ldr	r7, [r4, #28]
	movs	r3, #1
	ldr	r6, [r4, #20]
	ldr	r2, [r5, #24]
	ldr	r1, [r4, #44]
	str	r0, [r4, #24]
	mov	r0, r7
	str	r6, [sp]
	bl	libaroma_window_measure_calculate(PLT)
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #16]
	ldr	r1, [r5, #20]
	str	r0, [r4, #28]
	adds	r6, r3, r2
	cmp	r6, r1
	it	gt
	subgt	r3, r1, r2
	ldr	r2, [r4, #20]
	ldr	r1, [r5, #24]
	it	gt
	strgt	r3, [r4, #24]
	adds	r5, r0, r2
	cmp	r5, r1
	it	gt
	subgt	r0, r1, r2
	ldr	r2, [r4, #64]
	it	gt
	strgt	r0, [r4, #28]
	mov	r1, r4
	cmp	r2, r3
	ldr	r3, [r4, #68]
	it	gt
	strgt	r2, [r4, #24]
	cmp	r3, r0
	mov	r0, #0
	it	gt
	strgt	r3, [r4, #28]
	bl	_libaroma_window_measure_save(PLT)
	ldr	r3, [r4, #72]
	ldr	r5, [r3]
	mov	r0, r5
	cbz	r5, .L142
	movs	r3, #0
	movs	r1, #133
	mov	r2, r3
	str	r3, [sp]
	add	r0, sp, #8
	bl	libaroma_wm_compose(PLT)
	mov	r1, r0
	mov	r0, r4
	blx	r5
	movs	r0, #1
.L142:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L153:
	ldr	r0, [r1, #32]
	bl	libaroma_dp(PLT)
	str	r0, [r4, #16]
	ldr	r0, [r4, #36]
	bl	libaroma_dp(PLT)
	str	r0, [r4, #20]
	ldr	r0, [r4, #40]
	bl	libaroma_dp(PLT)
	str	r0, [r4, #24]
	ldr	r0, [r4, #44]
	bl	libaroma_dp(PLT)
	ldr	r7, [r4, #16]
	str	r0, [r4, #28]
	ldr	r1, [r4, #32]
	b	.L144
.L155:
	.align	2
.L154:
	.word	.LANCHOR0-(.LPIC7+4)
	.size	libaroma_window_measure, .-libaroma_window_measure
	.section	.text.libaroma_window_getid,"ax",%progbits
	.align	2
	.global	libaroma_window_getid
	.thumb
	.thumb_func
	.type	libaroma_window_getid, %function
libaroma_window_getid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r6, r1
	bl	libaroma_wm(PLT)
	cbz	r0, .L157
	cbz	r4, .L161
	ldr	r5, [r4, #328]
	cmp	r5, #0
	ble	.L162
	ldr	r2, [r4, #332]
	ldr	r0, [r2]
	ldrh	r3, [r0]
	cmp	r3, r6
	beq	.L157
	movs	r3, #0
	b	.L158
.L159:
	ldr	r0, [r2, #4]!
	ldrh	r4, [r0]
	cmp	r4, r6
	beq	.L157
.L158:
	adds	r3, r3, #1
	cmp	r3, r5
	bne	.L159
.L162:
	movs	r0, #0
.L157:
	pop	{r4, r5, r6, pc}
.L161:
	mov	r0, r4
	pop	{r4, r5, r6, pc}
	.size	libaroma_window_getid, .-libaroma_window_getid
	.section	.text.libaroma_window_setfocus,"ax",%progbits
	.align	2
	.global	libaroma_window_setfocus
	.thumb
	.thumb_func
	.type	libaroma_window_setfocus, %function
libaroma_window_setfocus:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	cbz	r0, .L169
	mov	r4, r1
	cbnz	r1, .L167
	ldr	r0, [r0, #336]
	cmp	r0, #0
	bne	.L185
	ldr	r5, [r6, #328]
	cmp	r5, #0
	ble	.L169
	ldr	r2, [r6, #332]
	ldr	r4, [r2]
	ldr	r3, [r4, #72]
	ldr	r3, [r3, #8]
	cbz	r3, .L172
	b	.L167
.L173:
	ldr	r4, [r2, #4]!
	ldr	r1, [r4, #72]
	ldr	r1, [r1, #8]
	cbnz	r1, .L167
.L172:
	adds	r3, r3, #1
	cmp	r3, r5
	bne	.L173
.L169:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L167:
	ldr	r5, [r4, #8]
	cmp	r5, r6
	bne	.L169
	ldr	r3, [r4, #72]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L169
	ldr	r0, [r6, #336]
	cmp	r0, r4
	beq	.L166
	mov	r0, r4
	movs	r1, #1
	blx	r3
	cmp	r0, #0
	beq	.L169
	ldr	r0, [r6, #336]
	cbz	r0, .L170
	ldr	r3, [r0, #72]
	movs	r1, #0
	ldr	r3, [r3, #8]
	blx	r3
.L170:
	str	r4, [r5, #336]
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L166:
	pop	{r4, r5, r6, pc}
.L185:
	pop	{r4, r5, r6, pc}
	.size	libaroma_window_setfocus, .-libaroma_window_setfocus
	.section	.text.libaroma_window_sync,"ax",%progbits
	.align	2
	.global	libaroma_window_sync
	.thumb
	.thumb_func
	.type	libaroma_window_sync, %function
libaroma_window_sync:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	mov	r7, r1
	mov	r6, r2
	mov	r9, r3
	ldr	r8, [sp, #32]
	bl	libaroma_wm(PLT)
	cbz	r0, .L189
	cbz	r4, .L189
	ldr	r5, [r4, #356]
	cbz	r5, .L190
	ldr	r5, [r5, #16]
	cbz	r5, .L190
	str	r8, [sp, #32]
	mov	r0, r4
	mov	r1, r7
	mov	r2, r6
	mov	r3, r9
	mov	ip, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	bx	ip
.L190:
	ldr	r3, [r4, #352]
	cbz	r3, .L208
.L189:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L208:
	ldrb	r3, [r4, #61]	@ zero_extendqisi2
	cbz	r3, .L209
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L209:
	mov	r0, r4
	bl	libaroma_window_isactive(PLT)
	cmp	r0, #0
	beq	.L189
	ldr	r3, [r4, #320]
	cmp	r3, #0
	beq	.L189
	ldr	r0, [r4, #12]
	mov	r2, r9
	ldr	r1, [r4, #16]
	mov	r3, r8
	add	r0, r0, r7
	add	r1, r1, r6
	bl	libaroma_wm_sync(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	libaroma_window_sync, .-libaroma_window_sync
	.section	.text.libaroma_window_invalidate,"ax",%progbits
	.align	2
	.global	libaroma_window_invalidate
	.thumb
	.thumb_func
	.type	libaroma_window_invalidate, %function
libaroma_window_invalidate:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #40
	mov	r4, r0
	mov	r5, r1
	bl	libaroma_wm(PLT)
	cbz	r0, .L213
	cbz	r4, .L213
	ldr	r3, [r4, #356]
	cbz	r3, .L214
	ldr	r3, [r3, #12]
	cbz	r3, .L214
	mov	r0, r4
	mov	r1, r5
	blx	r3
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L214:
	ldr	r6, [r4, #352]
	cbz	r6, .L239
.L213:
	movs	r0, #0
.L236:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L239:
	mov	r0, r4
	bl	libaroma_window_isactive(PLT)
	cmp	r0, #0
	beq	.L213
	ldr	r0, [r4, #320]
	cmp	r0, #0
	beq	.L236
	ldrb	r7, [r4, #61]	@ zero_extendqisi2
	cbz	r7, .L216
	cmp	r5, #10
	beq	.L217
.L238:
	movs	r0, #1
	b	.L236
.L216:
	ldr	lr, [r4, #324]
	mov	ip, #255
	str	r7, [sp]
	mov	r8, #1
	str	r7, [sp, #4]
	mov	r3, r7
	ldr	r6, [lr]
	mov	r1, lr
	mov	r2, r7
	str	r6, [sp, #8]
	ldr	r6, [lr, #4]
	str	ip, [sp, #20]
	str	r7, [sp, #24]
	str	r6, [sp, #12]
	add	r6, sp, #40
	str	r7, [sp, #28]
	str	r8, [sp, #16]
	bl	libaroma_draw_ex2(PLT)
	ldr	r0, .L240
	mov	r2, r7
	str	r4, [r6, #-4]!
	mov	r1, r6
.LPIC16:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, r6
	bl	libaroma_window_invalidate._omp_fn.2(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r0, [sp, #36]
	cmp	r5, #0
	beq	.L238
.L219:
	ldr	r4, [r0, #24]
	movs	r1, #0
	ldr	r3, [r0, #20]
	mov	r2, r1
	str	r4, [sp]
	bl	libaroma_window_sync(PLT)
	b	.L238
.L217:
	ldr	r5, [r4, #324]
	mov	ip, #1
	str	r6, [sp]
	mov	lr, #255
	str	r6, [sp, #4]
	mov	r3, r6
	ldr	r7, [r5]
	mov	r1, r5
	mov	r2, r6
	str	r7, [sp, #8]
	ldr	r5, [r5, #4]
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	str	r5, [sp, #12]
	add	r5, sp, #40
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r0, .L240+4
	mov	r2, r6
	str	r4, [r5, #-4]!
	mov	r1, r5
.LPIC17:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, r5
	bl	libaroma_window_invalidate._omp_fn.2(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r0, [sp, #36]
	b	.L219
.L241:
	.align	2
.L240:
	.word	libaroma_window_invalidate._omp_fn.2-(.LPIC16+4)
	.word	libaroma_window_invalidate._omp_fn.2-(.LPIC17+4)
	.size	libaroma_window_invalidate, .-libaroma_window_invalidate
	.section	.text._libaroma_window_recalculate,"ax",%progbits
	.align	2
	.global	_libaroma_window_recalculate
	.thumb
	.thumb_func
	.type	_libaroma_window_recalculate, %function
_libaroma_window_recalculate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L244
	bl	libaroma_window_isactive(PLT)
	cbnz	r0, .L247
	movs	r0, #1
	pop	{r4, pc}
.L247:
	mov	r0, r4
	bl	_libaroma_window_updatebg(PLT)
	mov	r0, r4
	movs	r1, #1
	bl	libaroma_window_invalidate(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L244:
	pop	{r4, pc}
	.size	_libaroma_window_recalculate, .-_libaroma_window_recalculate
	.section	.text._libaroma_window_ready,"ax",%progbits
	.align	2
	.global	_libaroma_window_ready
	.thumb
	.thumb_func
	.type	_libaroma_window_ready, %function
_libaroma_window_ready:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	bl	libaroma_wm(PLT)
	cmp	r0, #0
	beq	.L251
	cmp	r4, #0
	beq	.L251
	ldr	r6, [r4, #20]
	ldr	r8, [r4, #12]
	ldr	r7, [r4, #16]
	ldr	r5, [r4, #24]
	cbz	r6, .L269
	cbz	r5, .L270
.L253:
	ldr	r3, [r4, #320]
	cbz	r3, .L254
	add	r0, r4, #320
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #320]
.L254:
	mov	r2, r6
	mov	r3, r5
	mov	r0, r8
	mov	r1, r7
	bl	libaroma_wm_canvas(PLT)
	str	r0, [r4, #320]
	cbz	r0, .L251
	mov	r0, r4
	bl	libaroma_window_isactive(PLT)
	cbnz	r0, .L271
.L255:
	ldr	r3, [r4, #320]
	mov	r0, r4
	movs	r1, #0
	str	r8, [r4, #12]
	str	r7, [r4, #16]
	ldmia	r3, {r2, r3}
	str	r2, [r4, #20]
	str	r3, [r4, #24]
	bl	_libaroma_window_measure_save(PLT)
	mov	r0, r4
	bl	_libaroma_window_recalculate(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L269:
	bl	libaroma_wm(PLT)
	mov	r8, #0
	ldr	r6, [r0, #56]
	cmp	r5, #0
	bne	.L253
.L270:
	bl	libaroma_wm(PLT)
	movs	r7, #0
	ldr	r5, [r0, #60]
	b	.L253
.L251:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L271:
	bl	libaroma_wm_clean_workspace(PLT)
	b	.L255
	.size	_libaroma_window_ready, .-_libaroma_window_ready
	.section	.text.libaroma_window_add,"ax",%progbits
	.align	2
	.global	libaroma_window_add
	.thumb
	.thumb_func
	.type	libaroma_window_add, %function
libaroma_window_add:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	mov	r4, r1
	bl	libaroma_wm(PLT)
	cbz	r0, .L275
	cbz	r5, .L275
	cbz	r4, .L275
	ldr	r3, [r4, #8]
	cbz	r3, .L291
.L275:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L291:
	mov	r0, r5
	mov	r1, r4
	bl	libaroma_window_measure(PLT)
	ldr	r6, [r5, #328]
	cbz	r6, .L292
	adds	r1, r6, #1
	ldr	r0, [r5, #332]
	lsls	r1, r1, #2
	bl	realloc(PLT)
	cmp	r0, #0
	beq	.L275
	ldr	r6, [r5, #328]
	str	r0, [r5, #332]
	str	r4, [r0, r6, lsl #2]
.L277:
	adds	r6, r6, #1
	str	r5, [r4, #8]
	mov	r0, r5
	str	r6, [r5, #328]
	bl	_libaroma_window_recalculate(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L292:
	movs	r0, #4
	bl	malloc(PLT)
	str	r0, [r5, #332]
	cmp	r0, #0
	beq	.L275
	str	r4, [r0]
	b	.L277
	.size	libaroma_window_add, .-libaroma_window_add
	.section	.text.libaroma_window_attach,"ax",%progbits
	.align	2
	.global	libaroma_window_attach
	.thumb
	.thumb_func
	.type	libaroma_window_attach, %function
libaroma_window_attach:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	cbz	r0, .L296
	bl	libaroma_window_add(PLT)
	mov	r5, r0
	cbz	r0, .L298
.L296:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L298:
	mov	r0, r4
	bl	libaroma_control_free(PLT)
	mov	r0, r5
	pop	{r3, r4, r5, pc}
	.size	libaroma_window_attach, .-libaroma_window_attach
	.section	.text.libaroma_window_del,"ax",%progbits
	.align	2
	.global	libaroma_window_del
	.thumb
	.thumb_func
	.type	libaroma_window_del, %function
libaroma_window_del:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	mov	r4, r1
	bl	libaroma_wm(PLT)
	cbz	r0, .L319
	cbz	r4, .L319
	cbz	r5, .L319
	ldr	r6, [r4, #8]
	cmp	r6, r5
	beq	.L320
.L319:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L320:
	ldr	r8, [r6, #328]
	cmp	r8, #0
	ble	.L319
	cmp	r8, #1
	bne	.L303
	ldr	r0, [r6, #332]
	ldr	r3, [r0]
	cmp	r3, r4
	bne	.L319
	movs	r4, #0
	str	r4, [r3, #8]
	str	r4, [r6, #328]
	bl	free(PLT)
	str	r4, [r6, #332]
	mov	r0, r6
	bl	_libaroma_window_recalculate(PLT)
	mov	r0, r8
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L303:
	add	r0, r8, #-1
	lsls	r0, r0, #2
	bl	malloc(PLT)
	mov	r9, r0
	cmp	r0, #0
	beq	.L319
	ldr	r7, [r6, #332]
	movs	r3, #0
	mov	r1, r3
	sub	r0, r8, #2
.L307:
	ldr	r2, [r7, r3, lsl #2]
	adds	r5, r1, #1
	cmp	r2, r4
	beq	.L304
	cmp	r0, r5
	str	r2, [r9, r1, lsl #2]
	mov	r1, r5
	beq	.L305
	ldr	r7, [r6, #332]
.L304:
	adds	r3, r3, #1
	cmp	r3, r8
	bne	.L307
	mov	r0, r7
	bl	free(PLT)
	ldr	r3, [r6, #328]
	mov	r0, r6
	str	r9, [r6, #332]
	subs	r3, r3, #1
	str	r3, [r6, #328]
	bl	_libaroma_window_recalculate(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L305:
	mov	r0, r9
	bl	free(PLT)
	b	.L319
	.size	libaroma_window_del, .-libaroma_window_del
	.section	.text.libaroma_window_calculate_pos,"ax",%progbits
	.align	2
	.global	libaroma_window_calculate_pos
	.thumb
	.thumb_func
	.type	libaroma_window_calculate_pos, %function
libaroma_window_calculate_pos:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	cbz	r0, .L322
	ldr	r4, [r0, #12]
	ldr	r5, [r2]
	subs	r4, r5, r4
	str	r4, [r2]
	ldr	r4, [r0, #16]
	ldr	r0, [r3]
	subs	r0, r0, r4
	str	r0, [r3]
	cbz	r1, .L321
.L323:
	ldr	r4, [r2]
	ldr	r0, [r1, #16]
	subs	r0, r4, r0
	str	r0, [r2]
	ldr	r1, [r1, #20]
	ldr	r2, [r3]
	subs	r2, r2, r1
	str	r2, [r3]
.L321:
	pop	{r4, r5}
	bx	lr
.L322:
	cmp	r1, #0
	beq	.L321
	ldr	r0, [r1, #8]
	cmp	r0, #0
	beq	.L323
	ldr	r4, [r0, #12]
	ldr	r5, [r2]
	subs	r4, r5, r4
	str	r4, [r2]
	ldr	r4, [r0, #16]
	ldr	r0, [r3]
	subs	r0, r0, r4
	str	r0, [r3]
	b	.L323
	.size	libaroma_window_calculate_pos, .-libaroma_window_calculate_pos
	.section	.text.libaroma_window_calculate_pos_abs,"ax",%progbits
	.align	2
	.global	libaroma_window_calculate_pos_abs
	.thumb
	.thumb_func
	.type	libaroma_window_calculate_pos_abs, %function
libaroma_window_calculate_pos_abs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	cbz	r1, .L346
	ldr	r4, [r1, #16]
	ldr	r5, [r2]
	ldr	r0, [r1, #8]
	subs	r4, r5, r4
	str	r4, [r2]
	ldr	r4, [r3]
	ldr	r1, [r1, #20]
	subs	r4, r4, r1
	str	r4, [r3]
.L346:
	cbz	r0, .L347
.L338:
	ldr	r4, [r2]
	ldr	r1, [r0, #4]
	subs	r1, r4, r1
	str	r1, [r2]
	ldr	r4, [r0, #8]
	ldr	r1, [r3]
	ldr	r0, [r0, #352]
	subs	r1, r1, r4
	str	r1, [r3]
	cmp	r0, #0
	bne	.L338
.L347:
	pop	{r4, r5}
	bx	lr
	.size	libaroma_window_calculate_pos_abs, .-libaroma_window_calculate_pos_abs
	.section	.text._libaroma_window_is_inside,"ax",%progbits
	.align	2
	.global	_libaroma_window_is_inside
	.thumb
	.thumb_func
	.type	_libaroma_window_is_inside, %function
_libaroma_window_is_inside:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #16
	push	{r4, r5, r6}
	ldmia	r3, {r3, r4, r5, r6}
	adds	r0, r3, r5
	cmp	r1, r0
	ite	lt
	movlt	r5, #1
	movge	r5, #0
	cmp	r1, r3
	it	lt
	movlt	r5, #0
	mov	r0, r5
	cbz	r5, .L349
	adds	r0, r6, r4
	cmp	r2, r0
	ite	lt
	movlt	r0, #1
	movge	r0, #0
	cmp	r2, r4
	it	lt
	movlt	r0, #0
.L349:
	pop	{r4, r5, r6}
	bx	lr
	.size	_libaroma_window_is_inside, .-_libaroma_window_is_inside
	.section	.text.libaroma_window_post_command,"ax",%progbits
	.align	2
	.global	libaroma_window_post_command
	.thumb
	.thumb_func
	.type	libaroma_window_post_command, %function
libaroma_window_post_command:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, #0
	sub	sp, sp, #8
	mov	r3, r0
	mov	r1, r4
	mov	r2, r4
	str	r4, [sp]
	movs	r0, #134
	str	r4, [sp, #4]
	bl	libaroma_msg_post(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	libaroma_window_post_command, .-libaroma_window_post_command
	.section	.text.libaroma_window_post_command_ex,"ax",%progbits
	.align	2
	.global	libaroma_window_post_command_ex
	.thumb
	.thumb_func
	.type	libaroma_window_post_command_ex, %function
libaroma_window_post_command_ex:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, [sp, #24]
	mov	r5, r0
	movs	r0, #134
	str	r3, [sp]
	mov	r3, r5
	str	r4, [sp, #4]
	bl	libaroma_msg_post(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
	.size	libaroma_window_post_command_ex, .-libaroma_window_post_command_ex
	.section	.text.libaroma_window_process_event,"ax",%progbits
	.align	2
	.global	libaroma_window_process_event
	.thumb
	.thumb_func
	.type	libaroma_window_process_event, %function
libaroma_window_process_event:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #28
	mov	r4, r0
	mov	r5, r1
	bl	libaroma_wm(PLT)
	cbz	r0, .L357
	cmp	r4, #0
	beq	.L403
	ldr	r3, [r4, #352]
	movs	r0, #0
	cbz	r3, .L452
.L357:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L452:
	ldr	r2, [r4, #356]
	str	r3, [sp]
	cbz	r2, .L358
	ldr	r3, [r2, #20]
	cbz	r3, .L358
	mov	r0, r4
	mov	r1, r5
	mov	r2, sp
	blx	r3
	cbnz	r0, .L398
.L358:
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #131
	beq	.L361
	bhi	.L362
	cmp	r3, #129
	beq	.L363
	bhi	.L364
	cmp	r3, #6
	bne	.L398
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L453
	ldr	r0, [r4, #340]
	cbz	r0, .L398
	cmp	r3, #2
	beq	.L451
	cbnz	r3, .L398
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L454
	mov	r1, r5
	blx	r3
.L401:
	movs	r3, #0
	str	r3, [r4, #340]
	b	.L357
.L362:
	cmp	r3, #133
	beq	.L366
	bcc	.L367
	cmp	r3, #134
	it	eq
	ldreq	r0, [r5, #8]
	beq	.L357
.L398:
	ldr	r0, [sp]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L403:
	mov	r0, r4
	b	.L357
.L363:
	ldr	r2, [r5, #8]
	movs	r3, #0
	str	r3, [r4, #336]
	str	r3, [r4, #340]
	cmp	r2, #10
	beq	.L371
	mov	r0, r4
	bl	_libaroma_window_ready(PLT)
.L371:
	ldrb	r3, [r4, #61]	@ zero_extendqisi2
	cbz	r3, .L372
	ldr	r3, [r5, #8]
	cmp	r3, #10
	bne	.L398
.L372:
	ldrb	r3, [r4, #60]	@ zero_extendqisi2
	cbz	r3, .L373
	ldr	r3, [r5, #8]
	cmp	r3, #10
	bne	.L398
.L373:
	ldr	r2, [r4, #328]
	movs	r3, #1
	strb	r3, [r4, #60]
	cmp	r2, #0
	it	gt
	movgt	r6, #0
	ble	.L398
.L378:
	ldr	r3, [r4, #332]
	mov	r1, r5
	ldr	r0, [r3, r6, lsl #2]
	adds	r6, r6, #1
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L376
	blx	r3
	ldr	r2, [r4, #328]
.L376:
	cmp	r6, r2
	blt	.L378
	b	.L398
.L366:
	ldr	r3, [r4, #328]
	cmp	r3, #0
	it	gt
	movgt	r5, #0
	ble	.L398
.L389:
	ldr	r3, [r4, #332]
	mov	r0, r4
	ldr	r1, [r3, r5, lsl #2]
	adds	r5, r5, #1
	bl	libaroma_window_measure(PLT)
	ldr	r3, [r4, #328]
	cmp	r5, r3
	blt	.L389
	b	.L398
.L361:
	mov	r0, r4
	movs	r1, #1
	bl	libaroma_window_invalidate(PLT)
	ldr	r0, [sp]
	b	.L357
.L367:
	mov	r0, r4
	bl	_libaroma_window_ready(PLT)
	ldr	r2, [r4, #328]
	cmp	r2, #0
	it	gt
	movgt	r6, #0
	ble	.L398
.L382:
	ldr	r3, [r4, #332]
	mov	r1, r5
	ldr	r0, [r3, r6, lsl #2]
	adds	r6, r6, #1
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L380
	blx	r3
	ldr	r2, [r4, #328]
.L380:
	cmp	r6, r2
	blt	.L382
	b	.L398
.L364:
	ldrb	r3, [r4, #60]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L398
	ldr	r2, [r4, #328]
	movs	r6, #0
	strb	r6, [r4, #60]
	cmp	r2, r6
	ble	.L386
.L387:
	ldr	r3, [r4, #332]
	mov	r1, r5
	ldr	r0, [r3, r6, lsl #2]
	adds	r6, r6, #1
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L385
	blx	r3
	ldr	r2, [r4, #328]
.L385:
	cmp	r6, r2
	blt	.L387
.L386:
	movs	r3, #0
	ldr	r0, [sp]
	str	r3, [r4, #336]
	str	r3, [r4, #340]
	b	.L357
.L453:
	ldr	r7, [r5, #8]
	movs	r6, #0
	add	r3, sp, #16
	mov	r1, r6
	mov	r0, r4
	add	r2, sp, #8
	str	r7, [sp, #8]
	ldr	r7, [r5, #12]
	str	r6, [r4, #340]
	str	r7, [sp, #16]
	bl	libaroma_window_calculate_pos(PLT)
	ldr	r3, [r4, #328]
	cmp	r3, r6
	bgt	.L395
	b	.L448
.L393:
	ldr	r3, [r4, #328]
	cmp	r6, r3
	bge	.L448
.L395:
	ldr	r3, [r4, #332]
	lsls	r7, r6, #2
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #16]
	ldr	r0, [r3, r6, lsl #2]
	adds	r6, r6, #1
	bl	_libaroma_window_is_inside(PLT)
	cmp	r0, #0
	beq	.L393
	ldr	r3, [r4, #332]
	ldr	r0, [r3, r7]
	str	r0, [r4, #340]
	cmp	r0, #0
	beq	.L398
.L451:
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L398
	mov	r1, r5
	blx	r3
	b	.L357
.L454:
	ldr	r0, [sp]
	b	.L401
.L448:
	ldr	r0, [r4, #340]
	cmp	r0, #0
	bne	.L451
	b	.L398
	.size	libaroma_window_process_event, .-libaroma_window_process_event
	.section	.text.libaroma_window_measure_size,"ax",%progbits
	.align	2
	.global	libaroma_window_measure_size
	.thumb
	.thumb_func
	.type	libaroma_window_measure_size, %function
libaroma_window_measure_size:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #36
	cmp	r0, #0
	beq	.L462
	ldr	r3, [r0, #352]
	movs	r0, #0
	cbz	r3, .L465
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L465:
	ldr	r3, .L469
.LPIC18:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L466
	ldr	r6, [r4, #28]
	add	r1, r4, #28
	add	r2, r4, #12
	ldr	r3, [r4, #32]
	vld1.32	{q8}, [r1]
	mov	r7, r6
	vst1.32	{q8}, [r2]
.L459:
	movs	r5, #0
	str	r6, [r4, #4]
	str	r3, [r4, #8]
	bl	libaroma_wm(PLT)
	mov	r1, r7
	ldr	r2, [r0, #56]
	mov	r3, r5
	mov	r0, r6
	str	r5, [sp]
	bl	libaroma_window_measure_calculate(PLT)
	ldr	r7, [r4, #16]
	ldr	r6, [r4, #32]
	str	r0, [r4, #12]
	bl	libaroma_wm(PLT)
	mov	r3, r5
	ldr	r2, [r0, #60]
	mov	r1, r6
	str	r5, [sp]
	mov	r0, r7
	bl	libaroma_window_measure_calculate(PLT)
	str	r0, [r4, #16]
	ldr	r6, [r4, #20]
	ldr	r7, [r4, #36]
	bl	libaroma_wm(PLT)
	ldr	r5, [r4, #12]
	movs	r3, #1
	ldr	r2, [r0, #56]
	mov	r1, r7
	mov	r0, r6
	str	r5, [sp]
	bl	libaroma_window_measure_calculate(PLT)
	str	r0, [r4, #20]
	ldr	r6, [r4, #24]
	ldr	r7, [r4, #40]
	bl	libaroma_wm(PLT)
	ldr	r5, [r4, #16]
	movs	r3, #1
	ldr	r2, [r0, #60]
	mov	r1, r7
	mov	r0, r6
	str	r5, [sp]
	bl	libaroma_window_measure_calculate(PLT)
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #20]
	str	r0, [r4, #24]
	adds	r5, r2, r3
	bl	libaroma_wm(PLT)
	ldr	r3, [r0, #56]
	cmp	r5, r3
	bgt	.L467
.L460:
	ldr	r3, [r4, #16]
	ldr	r2, [r4, #24]
	adds	r5, r2, r3
	bl	libaroma_wm(PLT)
	ldr	r3, [r0, #60]
	cmp	r5, r3
	bgt	.L468
.L461:
	mov	r0, r4
	movs	r1, #0
	bl	_libaroma_window_measure_save(PLT)
	movs	r3, #0
	add	r0, sp, #8
	mov	r2, r3
	str	r3, [sp]
	movs	r1, #133
	bl	libaroma_wm_compose(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	libaroma_window_process_event(PLT)
	movs	r0, #1
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L462:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L466:
	ldr	r0, [r4, #28]
	bl	libaroma_dp(PLT)
	str	r0, [r4, #12]
	ldr	r0, [r4, #32]
	bl	libaroma_dp(PLT)
	str	r0, [r4, #16]
	ldr	r0, [r4, #36]
	bl	libaroma_dp(PLT)
	str	r0, [r4, #20]
	ldr	r0, [r4, #40]
	bl	libaroma_dp(PLT)
	ldr	r6, [r4, #12]
	str	r0, [r4, #24]
	ldr	r3, [r4, #16]
	ldr	r7, [r4, #28]
	b	.L459
.L468:
	bl	libaroma_wm(PLT)
	ldr	r3, [r4, #16]
	ldr	r2, [r0, #60]
	subs	r3, r2, r3
	str	r3, [r4, #24]
	b	.L461
.L467:
	bl	libaroma_wm(PLT)
	ldr	r3, [r4, #12]
	ldr	r2, [r0, #56]
	subs	r3, r2, r3
	str	r3, [r4, #20]
	b	.L460
.L470:
	.align	2
.L469:
	.word	.LANCHOR0-(.LPIC18+4)
	.size	libaroma_window_measure_size, .-libaroma_window_measure_size
	.section	.text.libaroma_window,"ax",%progbits
	.align	2
	.global	libaroma_window
	.thumb
	.thumb_func
	.type	libaroma_window, %function
libaroma_window:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #20
	ldr	r5, .L481
	mov	r6, r0
	mov	r9, r1
	mov	r8, r2
	mov	r7, r3
.LPIC20:
	add	r5, pc
	bl	libaroma_wm(PLT)
	cbz	r0, .L474
	mov	r0, #364
	movs	r1, #1
	bl	calloc(PLT)
	mov	r4, r0
	cbz	r0, .L474
	cbz	r6, .L475
	ldr	r2, .L481+4
	mov	r3, r6
	adds	r0, r0, #62
	mov	r1, #256
.LPIC19:
	add	r2, pc
	bl	snprintf(PLT)
.L476:
	ldr	r3, [sp, #48]
	add	r2, r4, #28
	str	r9, [sp]
	mov	r0, r4
	str	r8, [sp, #4]
	str	r3, [sp, #12]
	str	r7, [sp, #8]
	ldr	r3, .L481+8
	vld1.64	{d16-d17}, [sp:64]
	vst1.32	{q8}, [r2]
	ldr	r3, [r5, r3]
	str	r3, [r4, #344]
	bl	libaroma_window_measure_size(PLT)
	mov	r0, r4
.L473:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L475:
	strb	r6, [r0, #62]
	b	.L476
.L474:
	movs	r0, #0
	b	.L473
.L482:
	.align	2
.L481:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC20+4)
	.word	.LC0-(.LPIC19+4)
	.word	_libaroma_window_ui_thread(GOT)
	.size	libaroma_window, .-libaroma_window
	.section	.text.libaroma_window_resize,"ax",%progbits
	.align	2
	.global	libaroma_window_resize
	.thumb
	.thumb_func
	.type	libaroma_window_resize, %function
libaroma_window_resize:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #16
	ldr	r6, [sp, #32]
	cbz	r0, .L485
	ldr	r5, [r0, #352]
	mov	r4, r0
	cbz	r5, .L491
.L485:
	movs	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L491:
	str	r1, [sp]
	add	r1, r0, #28
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	str	r6, [sp, #12]
	vld1.64	{d16-d17}, [sp:64]
	vst1.32	{q8}, [r1]
	bl	libaroma_window_measure_size(PLT)
	cmp	r0, #0
	beq	.L485
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	_libaroma_window_ready(PLT)
	.size	libaroma_window_resize, .-libaroma_window_resize
	.section	.text.libaroma_window_free,"ax",%progbits
	.align	2
	.global	libaroma_window_free
	.thumb
	.thumb_func
	.type	libaroma_window_free, %function
libaroma_window_free:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #36
	mov	r4, r0
	bl	libaroma_wm(PLT)
	cmp	r0, #0
	beq	.L493
	cmp	r4, #0
	beq	.L502
	ldr	r5, [r4, #352]
	cmp	r5, #0
	beq	.L522
.L494:
	ldr	r3, [r4, #356]
	cbz	r3, .L496
	ldr	r3, [r3]
	cbz	r3, .L496
	mov	r0, r4
	blx	r3
.L496:
	ldr	r3, [r4, #328]
	cmp	r3, #0
	ble	.L497
	ldr	r0, .L524
	add	r5, sp, #32
	str	r4, [r5, #-24]!
	movs	r2, #0
	mov	r1, r5
.LPIC21:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, r5
	bl	libaroma_window_free._omp_fn.1(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r4, [sp, #8]
	ldr	r0, [r4, #332]
	bl	free(PLT)
.L497:
	ldr	r3, [r4, #324]
	cbz	r3, .L498
	add	r0, r4, #324
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #324]
.L498:
	ldr	r3, [r4, #320]
	cbz	r3, .L499
	add	r0, r4, #320
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #320]
.L499:
	ldr	r3, [r4, #356]
	cbz	r3, .L500
	ldr	r3, [r3, #4]
	cbz	r3, .L500
	mov	r0, r4
	blx	r3
.L500:
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
.L493:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, pc}
.L502:
	mov	r0, r4
	b	.L493
.L522:
	bl	libaroma_wm_get_active_window(PLT)
	cmp	r4, r0
	beq	.L523
.L495:
	movs	r3, #0
	add	r0, sp, #8
	mov	r2, r3
	str	r3, [sp]
	movs	r1, #130
	bl	libaroma_wm_compose(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	libaroma_window_process_event(PLT)
	b	.L494
.L523:
	mov	r0, r5
	bl	libaroma_wm_set_active_window(PLT)
	b	.L495
.L525:
	.align	2
.L524:
	.word	libaroma_window_free._omp_fn.1-(.LPIC21+4)
	.size	libaroma_window_free, .-libaroma_window_free
	.section	.text.libaroma_window_anishow,"ax",%progbits
	.align	2
	.global	libaroma_window_anishow
	.thumb
	.thumb_func
	.type	libaroma_window_anishow, %function
libaroma_window_anishow:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
	fstmfdd	sp!, {d8, d9}
	sub	sp, sp, #76
	mov	r4, r1
	mov	r6, r2
	bl	libaroma_wm(PLT)
	cbz	r0, .L558
	cmp	fp, #0
	beq	.L554
	ldr	r3, [fp, #352]
	movs	r0, #0
	cbz	r3, .L563
.L558:
	add	sp, sp, #76
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L563:
	cmp	r4, #0
	it	ne
	cmpne	r6, #49
	mov	r0, fp
	ite	le
	movle	r5, #1
	movgt	r5, #0
	ble	.L564
	mov	r2, #1
	strb	r2, [fp, #61]
	bl	libaroma_wm_set_active_window(PLT)
	cbnz	r0, .L565
	strb	r0, [fp, #61]
	b	.L558
.L554:
	mov	r0, fp
	b	.L558
.L564:
	bl	libaroma_wm_set_active_window(PLT)
	b	.L558
.L565:
	ldr	r9, [fp, #320]
	movs	r3, #2
	strb	r3, [fp, #60]
	mov	r2, r5
	mov	r3, r5
	mov	r8, #255
	ldr	r1, [r9, #4]
	add	r10, sp, #48
	ldr	r0, [r9]
	str	r5, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r5, [sp]
	mov	r1, r9
	str	r5, [sp, #4]
	mov	r2, r5
	ldr	r7, [r9]
	mov	r3, r5
	str	r0, [sp, #44]
	str	r7, [sp, #8]
	ldr	r7, [r9, #4]
	str	r8, [sp, #20]
	str	r5, [sp, #16]
	str	r7, [sp, #12]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r7, [sp, #44]
	mov	r2, r5
	ldr	r1, [r9, #4]
	mov	r3, r5
	ldr	r0, [r9]
	str	r5, [sp]
	str	r7, [fp, #320]
	bl	libaroma_canvas_new_ex(PLT)
	str	r5, [sp]
	mov	r2, r5
	str	r5, [sp, #4]
	mov	r3, r5
	ldr	r7, [r9]
	mov	r1, r9
	str	r0, [sp, #40]
	str	r7, [sp, #8]
	ldr	r7, [r9, #4]
	str	r8, [sp, #20]
	mov	r8, r5
	str	r5, [sp, #16]
	str	r7, [sp, #12]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	movs	r1, #10
	mov	r0, fp
	bl	libaroma_window_invalidate(PLT)
	movs	r0, #1
	mov	r1, r10
	bl	clock_gettime(PLT)
	cbnz	r0, .L530
	ldr	r3, [sp, #52]
	movw	r2, #56963
	movt	r2, 17179
	ldr	r1, [sp, #48]
	mov	r8, #1000
	smull	r0, r2, r2, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r2, asr #18
	mla	r8, r8, r1, r3
.L530:
	fmsr	s14, r6	@ int
	movw	r5, #56963
	fsitos	s15, s14
	movt	r5, 17179
	fconsts	s17, #112
	flds	s18, .L574
	str	r5, [sp, #36]
	fdivs	s17, s17, s15
.L531:
	mov	r7, #1000
	fconsts	s16, #112
	subs	r5, r4, #1
.L540:
	movs	r0, #1
	mov	r1, r10
	bl	clock_gettime(PLT)
	movs	r3, #0
	cbnz	r0, .L551
	ldr	r2, [sp, #52]
	ldr	r0, [sp, #36]
	ldr	r1, [sp, #48]
	smull	r0, r3, r0, r2
	asrs	r2, r2, #31
	rsb	r3, r2, r3, asr #18
	mla	r3, r7, r1, r3
.L551:
	rsb	r3, r8, r3
	cmp	r6, r3
	fmsr	s14, r3	@ int
	fsitos	s4, s14
	ble	.L532
	fmuls	s4, s4, s17
	fcmpes	s4, s16
	fmstat
	bge	.L532
	cmp	r5, #10
	bhi	.L533
	tbh	[pc, r5, lsl #1]
.L535:
	.2byte	(.L534-.L535)/2
	.2byte	(.L536-.L535)/2
	.2byte	(.L534-.L535)/2
	.2byte	(.L536-.L535)/2
	.2byte	(.L533-.L535)/2
	.2byte	(.L533-.L535)/2
	.2byte	(.L537-.L535)/2
	.2byte	(.L538-.L535)/2
	.2byte	(.L538-.L535)/2
	.2byte	(.L539-.L535)/2
	.2byte	(.L539-.L535)/2
.L539:
	flds	s0, .L574+4
	flds	s1, .L574+8
	flds	s2, .L574+12
	fconsts	s3, #112
	bl	libaroma_cubic_bezier(PLT)
	ldr	r3, [fp, #24]
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	fmscs	s15, s0, s15
	ftosizs	s15, s15
	fmrs	r2, s15	@ int
	adds	r7, r3, r2
	cmp	r7, #0
	ble	.L531
	cmp	r4, #10
	beq	.L566
	ldr	r5, [fp, #20]
	movs	r0, #0
	negs	r3, r2
	mov	lr, #255
	ldr	r1, [fp, #320]
	mov	r2, r0
	str	r3, [sp, #4]
	mov	r3, r0
	str	r0, [sp]
	str	r0, [sp, #16]
	str	r0, [sp, #24]
	str	r0, [sp, #28]
	mov	r0, r9
	str	r5, [sp, #8]
	str	r7, [sp, #12]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	add	r0, fp, #12
	mov	r3, r7
	ldmia	r0, {r0, r1, r2}
	bl	libaroma_wm_sync(PLT)
	b	.L531
.L538:
	flds	s0, .L574+4
	flds	s1, .L574+8
	flds	s2, .L574+12
	fconsts	s3, #112
	bl	libaroma_cubic_bezier(PLT)
	ldr	r3, [fp, #24]
	fconsts	s15, #112
	fsubs	s0, s15, s0
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	fmuls	s15, s0, s14
	ftosizs	s15, s15
	fmrs	ip, s15	@ int
	rsb	r7, ip, r3
	cmp	r7, #0
	ble	.L531
	cmp	r4, #8
	beq	.L567
	ldr	r3, [fp, #20]
	movs	r5, #0
	mov	lr, #255
	ldr	r1, [fp, #320]
	mov	r2, r5
	str	r7, [sp, #12]
	str	r3, [sp, #8]
	mov	r0, r9
	fmrs	r3, s15	@ int
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	lr, [sp, #20]
	fsts	s15, [sp, #32]	@ int
	bl	libaroma_draw_ex2(PLT)
	ldr	r1, [fp, #16]
	mov	r3, r7
	ldr	ip, [sp, #32]
	ldr	r0, [fp, #12]
	ldr	r2, [fp, #20]
	add	r1, r1, ip
	bl	libaroma_wm_sync(PLT)
	b	.L531
.L537:
	flds	s1, .L574+8
	movs	r7, #0
	flds	s2, .L574+12
	fconsts	s3, #112
	flds	s0, .L574+4
	bl	libaroma_cubic_bezier(PLT)
	fmuls	s0, s0, s18
	bl	lroundf(PLT)
	ldr	ip, [fp, #320]
	uxtb	lr, r0
	str	r7, [sp]
	mov	r2, r7
	str	r7, [sp, #4]
	mov	r3, r7
	ldr	r5, [ip]
	mov	r1, ip
	mov	r0, r9
	str	r5, [sp, #8]
	ldr	r5, [ip, #4]
	str	lr, [sp, #20]
	str	r7, [sp, #16]
	str	r5, [sp, #12]
	str	r7, [sp, #24]
	str	r7, [sp, #28]
.L560:
	bl	libaroma_draw_ex2(PLT)
	add	r0, fp, #12
	ldmia	r0, {r0, r1, r2, r3}
	bl	libaroma_wm_sync(PLT)
	b	.L531
.L536:
	flds	s0, .L574+4
	flds	s1, .L574+8
	flds	s2, .L574+12
	fconsts	s3, #112
	bl	libaroma_cubic_bezier(PLT)
	ldr	r3, [fp, #20]
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	fmscs	s15, s0, s15
	ftosizs	s15, s15
	fmrs	r2, s15	@ int
	adds	r7, r3, r2
	cmp	r7, #0
	ble	.L531
	cmp	r4, #4
	beq	.L568
	ldr	r5, [fp, #24]
	movs	r0, #0
	negs	r3, r2
	mov	lr, #255
	ldr	r1, [fp, #320]
	mov	r2, r0
	str	r3, [sp]
	mov	r3, r0
	str	r0, [sp, #4]
	str	r0, [sp, #16]
	str	r0, [sp, #24]
	str	r0, [sp, #28]
	mov	r0, r9
	str	r5, [sp, #12]
	str	r7, [sp, #8]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	mov	r2, r7
	ldr	r0, [fp, #12]
	ldr	r1, [fp, #16]
	ldr	r3, [fp, #24]
	bl	libaroma_wm_sync(PLT)
	b	.L531
.L534:
	flds	s0, .L574+4
	flds	s1, .L574+8
	flds	s2, .L574+12
	fconsts	s3, #112
	bl	libaroma_cubic_bezier(PLT)
	ldr	r3, [fp, #20]
	fconsts	s15, #112
	fsubs	s0, s15, s0
	fmsr	s15, r3	@ int
	fsitos	s14, s15
	fmuls	s15, s0, s14
	ftosizs	s15, s15
	fmrs	ip, s15	@ int
	rsb	r7, ip, r3
	cmp	r7, #0
	ble	.L531
	cmp	r4, #3
	beq	.L569
	ldr	r2, [fp, #24]
	movs	r5, #0
	mov	lr, #255
	ldr	r1, [fp, #320]
	mov	r3, r5
	str	r7, [sp, #8]
	str	r2, [sp, #12]
	mov	r0, r9
	fmrs	r2, s15	@ int
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	lr, [sp, #20]
	fsts	s15, [sp, #32]	@ int
	bl	libaroma_draw_ex2(PLT)
	ldr	r0, [fp, #12]
	mov	r2, r7
	ldr	ip, [sp, #32]
	ldr	r1, [fp, #16]
	ldr	r3, [fp, #24]
	add	r0, r0, ip
	bl	libaroma_wm_sync(PLT)
	b	.L531
.L533:
	mov	r8, #0
	b	.L540
.L532:
	ldr	r6, [fp, #320]
	movs	r5, #0
	str	r5, [sp]
	mov	lr, #255
	str	r5, [sp, #4]
	mov	r2, r5
	ldr	r4, [r6]
	mov	r1, r6
	mov	r3, r5
	mov	r0, r9
	movs	r7, #1
	str	r4, [sp, #8]
	ldr	r6, [r6, #4]
	str	lr, [sp, #20]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r6, [sp, #12]
	str	r5, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	mov	r1, r5
	add	r0, sp, #40
	str	r9, [fp, #320]
	bl	libaroma_canvas_free_ex1(PLT)
	mov	r1, r5
	add	r0, sp, #44
	bl	libaroma_canvas_free_ex1(PLT)
	add	r0, fp, #12
	strb	r5, [fp, #61]
	ldmia	r0, {r0, r1, r2, r3}
	strb	r7, [fp, #60]
	bl	libaroma_wm_sync(PLT)
	mov	r2, r5
	movs	r1, #129
	movs	r3, #10
	str	r5, [sp]
	mov	r0, r10
	bl	libaroma_wm_compose(PLT)
	mov	r1, r0
	mov	r0, fp
	bl	libaroma_window_process_event(PLT)
	mov	r0, r7
	b	.L558
.L575:
	.align	2
.L574:
	.word	1132396544
	.word	1053699762
	.word	0
	.word	1046938544
.L568:
	cmp	r3, r7
	bgt	.L570
.L550:
	ldr	r5, [fp, #24]
	mov	lr, #0
	subs	r3, r3, r7
	ldr	r1, [fp, #320]
	mov	r2, lr
	str	r3, [sp]
	str	r5, [sp, #12]
	mov	r3, lr
	movs	r5, #255
	str	r7, [sp, #8]
	str	lr, [sp, #4]
.L561:
	mov	r0, r9
	str	lr, [sp, #16]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	str	r5, [sp, #20]
	b	.L560
.L569:
	cmp	r3, r7
	bgt	.L571
.L548:
	ldr	r3, [fp, #24]
	movs	r5, #0
	ldr	r1, [fp, #320]
	mov	lr, #255
	mov	r2, ip
	str	r7, [sp, #8]
	str	r3, [sp, #12]
	mov	r3, r5
	str	r5, [sp]
.L562:
	str	r5, [sp, #4]
	mov	r0, r9
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	lr, [sp, #20]
	b	.L560
.L566:
	cmp	r3, r7
	bgt	.L572
.L546:
	ldr	r5, [fp, #20]
	mov	lr, #0
	subs	r3, r3, r7
	ldr	r1, [fp, #320]
	mov	r2, lr
	str	r3, [sp, #4]
	str	r5, [sp, #8]
	mov	r3, lr
	movs	r5, #255
	str	r7, [sp, #12]
	str	lr, [sp]
	b	.L561
.L567:
	cmp	r3, r7
	bgt	.L573
.L544:
	ldr	r2, [fp, #20]
	movs	r5, #0
	ldr	r1, [fp, #320]
	mov	lr, #255
	str	r7, [sp, #12]
	mov	r3, ip
	str	r2, [sp, #8]
	mov	r2, r5
	str	r5, [sp]
	b	.L562
.L570:
	ldr	r3, [fp, #24]
	movs	r5, #0
	negs	r2, r2
	mov	lr, #255
	str	r2, [sp, #8]
	mov	r0, r9
	str	r3, [sp, #12]
	mov	r2, r7
	mov	r3, r5
	ldr	r1, [sp, #40]
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r3, [fp, #20]
	b	.L550
.L573:
	ldr	r0, [fp, #20]
	movs	r3, #0
	movs	r5, #255
	ldr	r1, [sp, #40]
	mov	r2, r3
	str	r7, [sp, #4]
	str	r0, [sp, #8]
	mov	r0, r9
	fsts	s15, [sp, #12]	@ int
	str	r3, [sp]
	str	r3, [sp, #16]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	r5, [sp, #20]
	fsts	s15, [sp, #32]	@ int
	bl	libaroma_draw_ex2(PLT)
	ldr	ip, [sp, #32]
	b	.L544
.L571:
	ldr	r0, [fp, #24]
	movs	r3, #0
	movs	r5, #255
	ldr	r1, [sp, #40]
	mov	r2, r3
	str	r7, [sp]
	str	r0, [sp, #12]
	mov	r0, r9
	fsts	s15, [sp, #8]	@ int
	str	r3, [sp, #4]
	str	r3, [sp, #16]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	r5, [sp, #20]
	fsts	s15, [sp, #32]	@ int
	bl	libaroma_draw_ex2(PLT)
	ldr	ip, [sp, #32]
	b	.L548
.L572:
	ldr	r3, [fp, #20]
	movs	r5, #0
	negs	r2, r2
	mov	lr, #255
	str	r2, [sp, #12]
	mov	r0, r9
	str	r3, [sp, #8]
	mov	r2, r5
	mov	r3, r7
	ldr	r1, [sp, #40]
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r3, [fp, #24]
	b	.L546
	.size	libaroma_window_anishow, .-libaroma_window_anishow
	.section	.text.libaroma_window_pool,"ax",%progbits
	.align	2
	.global	libaroma_window_pool
	.thumb
	.thumb_func
	.type	libaroma_window_pool, %function
libaroma_window_pool:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	sub	sp, sp, #32
	cbz	r0, .L579
	ldr	r3, [r0, #352]
	cbz	r3, .L585
.L579:
	movs	r0, #0
.L578:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, pc}
.L585:
	cbz	r1, .L586
.L580:
	mov	r0, r1
	str	r1, [sp, #4]
	bl	libaroma_wm_getmessage(PLT)
	ldr	r1, [sp, #4]
	cmp	r0, #0
	beq	.L579
	mov	r0, r4
	bl	libaroma_window_process_event(PLT)
	b	.L578
.L586:
	add	r1, sp, #8
	b	.L580
	.size	libaroma_window_pool, .-libaroma_window_pool
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s\000"
	.section	.data._libaroma_window_measurement_dp,"aw",%progbits
.LANCHOR0 = . + 0
	.type	_libaroma_window_measurement_dp, %object
	.size	_libaroma_window_measurement_dp, 1
_libaroma_window_measurement_dp:
	.byte	1
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
