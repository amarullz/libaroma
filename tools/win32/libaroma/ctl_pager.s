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
	.file	"ctl_pager.c"
	.section	.text._libaroma_ctl_pager_window_sync,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_pager_window_sync
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_window_sync, %function
_libaroma_ctl_pager_window_sync:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #360]
	ldr	r1, .L7
	ldr	r2, [r3, #72]
.LPIC0:
	add	r1, pc
	cmp	r2, r1
	beq	.L6
.L4:
	movs	r0, #0
	bx	lr
.L6:
	ldr	r3, [r3, #4]
	ldr	r2, [r3]
	cmp	r2, r0
	bne	.L4
	movs	r0, #1
	strb	r0, [r3, #164]
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_ctl_pager_window_sync, .-_libaroma_ctl_pager_window_sync
	.section	.text._libaroma_ctl_pager_window_control_isvisible,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_pager_window_control_isvisible
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_window_control_isvisible, %function
_libaroma_ctl_pager_window_control_isvisible:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r4, [r0, #360]
	ldr	r2, .L15
	ldr	r3, [r4, #72]
.LPIC1:
	add	r2, pc
	cmp	r3, r2
	beq	.L10
.L13:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L10:
	ldr	r8, [r4, #4]
	mov	r6, r1
	add	r7, r8, #168
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldrb	r2, [r5, #60]	@ zero_extendqisi2
	ldr	r3, [r8, #20]
	ldr	r8, [r4, #24]
	cbnz	r2, .L12
	ldr	r8, [r5, #20]
	mov	r3, r2
.L12:
	ldr	r4, [r6, #16]
	mov	r0, r7
	ldr	r7, [r6, #20]
	subs	r4, r4, r3
	bl	omp_unset_nest_lock(PLT)
	ldr	r3, [r6, #24]
	cmn	r4, r3
	bmi	.L13
	cmp	r8, r4
	blt	.L13
	ldr	r3, [r6, #28]
	cmn	r7, r3
	bmi	.L13
	ldr	r0, [r5, #24]
	cmp	r7, r0
	ite	gt
	movgt	r0, #0
	movle	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L16:
	.align	2
.L15:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	_libaroma_ctl_pager_window_control_isvisible, .-_libaroma_ctl_pager_window_control_isvisible
	.section	.text._libaroma_ctl_pager_window_control_draw_begin,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_pager_window_control_draw_begin
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_window_control_draw_begin, %function
_libaroma_ctl_pager_window_control_draw_begin:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r0
	ldr	r4, [r0, #360]
	sub	sp, sp, #20
	ldr	r2, .L30
	ldr	r3, [r4, #72]
.LPIC2:
	add	r2, pc
	cmp	r3, r2
	it	ne
	movne	r4, #0
	beq	.L28
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L28:
	ldr	r7, [r4, #4]
	mov	r5, r1
	add	r8, r7, #168
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r7, #180]	@ zero_extendqisi2
	cbnz	r3, .L19
	ldr	r4, [r6, #320]
	cbz	r4, .L21
	add	r2, r5, #20
	mov	r0, r4
	ldmia	r2, {r2, r3, r4}
	ldr	r1, [r5, #16]
	str	r4, [sp]
	bl	libaroma_canvas_area(PLT)
	mov	r4, r0
.L21:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L19:
	add	r1, r5, #16
	ldr	r6, [r7, #20]
	ldmia	r1, {r1, r7, r9}
	mov	r0, r4
	ldr	r5, [r5, #28]
	subs	r6, r1, r6
	bl	libaroma_control_draw_begin(PLT)
	mov	r4, r0
	str	r0, [sp, #12]
	cmp	r0, #0
	beq	.L21
	ldr	r3, [r0]
	cmp	r6, r3
	bge	.L26
	ldr	r3, [r0, #4]
	cmp	r7, r3
	blt	.L29
.L26:
	movs	r4, #0
.L23:
	add	r0, sp, #12
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L21
.L29:
	str	r5, [sp]
	mov	r1, r6
	mov	r2, r7
	mov	r3, r9
	bl	libaroma_canvas_area(PLT)
	mov	r4, r0
	b	.L23
.L31:
	.align	2
.L30:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_ctl_pager_window_control_draw_begin, .-_libaroma_ctl_pager_window_control_draw_begin
	.section	.text._libaroma_ctl_pager_window_updatebg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_pager_window_updatebg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_window_updatebg, %function
_libaroma_ctl_pager_window_updatebg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	ldr	r4, [r0, #360]
	ldr	r2, .L44
	ldr	r3, [r4, #72]
.LPIC3:
	add	r2, pc
	cmp	r3, r2
	beq	.L43
.L37:
	movs	r0, #0
.L33:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L43:
	ldr	r3, [r4, #4]
	ldr	r5, [r3]
	cmp	r5, r0
	bne	.L37
	ldr	r3, [r5, #324]
	ldr	r7, [r5, #20]
	ldr	r8, [r5, #24]
	cbz	r3, .L34
	ldr	r2, [r3]
	cmp	r2, r7
	bne	.L35
	ldr	r3, [r3, #4]
	cmp	r3, r8
	it	eq
	moveq	r0, #1
	beq	.L33
.L35:
	add	r0, r5, #324
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L34:
	movs	r6, #0
	mov	r0, r7
	mov	r2, r6
	mov	r3, r6
	mov	r1, r8
	str	r6, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	mov	r7, r0
	mov	r1, r6
	mov	r0, r4
	str	r7, [r5, #324]
	bl	libaroma_colorget(PLT)
	movs	r2, #255
	ldrh	r1, [r0, #10]
	mov	r0, r7
	bl	libaroma_canvas_setcolor(PLT)
	movs	r0, #1
	b	.L33
.L45:
	.align	2
.L44:
	.word	.LANCHOR0-(.LPIC3+4)
	.size	_libaroma_ctl_pager_window_updatebg, .-_libaroma_ctl_pager_window_updatebg
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text._libaroma_ctl_pager_window_invalidate._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_window_invalidate._omp_fn.0, %function
_libaroma_ctl_pager_window_invalidate._omp_fn.0:
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
	bge	.L46
	lsls	r5, r4, #2
	b	.L50
.L53:
	ldr	r6, [r8]
.L50:
	ldr	r3, [r6, #332]
	adds	r4, r4, #1
	movs	r1, #0
	ldr	r0, [r3, r5]
	adds	r5, r5, #4
	bl	libaroma_control_draw(PLT)
	cmp	r4, r7
	bne	.L53
.L46:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_ctl_pager_window_invalidate._omp_fn.0, .-_libaroma_ctl_pager_window_invalidate._omp_fn.0
	.section	.text._libaroma_ctl_pager_thread._omp_fn.2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_thread._omp_fn.2, %function
_libaroma_ctl_pager_thread._omp_fn.2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r9, r0
	ldr	r3, [r0]
	ldr	r3, [r3]
	ldr	r5, [r3]
	bl	omp_get_num_threads(PLT)
	mov	r6, r0
	ldr	r4, [r5, #328]
	bl	omp_get_thread_num(PLT)
	mov	r1, r6
	mov	r8, r0
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r1, r6
	mov	r7, r0
	mov	r0, r4
	bl	__aeabi_idivmod(PLT)
	cmp	r8, r1
	itt	lt
	addlt	r7, r7, #1
	movlt	r1, #0
	mla	r4, r8, r7, r1
	add	r7, r7, r4
	cmp	r4, r7
	bge	.L54
	lsls	r6, r4, #2
	mov	r8, #1
	b	.L58
.L60:
	adds	r4, r4, #1
	adds	r6, r6, #4
	cmp	r4, r7
	beq	.L54
.L69:
	ldr	r3, [r9]
	ldr	r3, [r3]
	ldr	r5, [r3]
.L58:
	ldr	r3, [r5, #332]
	ldr	r5, [r3, r6]
	ldr	r3, [r5, #72]
	mov	r0, r5
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L60
	blx	r3
	cmp	r0, #0
	beq	.L60
	mov	r0, r5
	movs	r1, #0
	bl	libaroma_control_draw(PLT)
	cmp	r0, #0
	beq	.L60
	ldr	r3, [r9, #4]
	adds	r4, r4, #1
	cmp	r4, r7
	add	r6, r6, #4
	strb	r8, [r3]
	bne	.L69
.L54:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_ctl_pager_thread._omp_fn.2, .-_libaroma_ctl_pager_thread._omp_fn.2
	.section	.text._libaroma_ctl_pager_window_invalidate,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_pager_window_invalidate
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_window_invalidate, %function
_libaroma_ctl_pager_window_invalidate:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #360]
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #44
	ldr	r4, .L84
	ldr	r2, [r3, #72]
.LPIC4:
	add	r4, pc
	cmp	r2, r4
	beq	.L83
.L74:
	movs	r0, #0
.L71:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L83:
	ldr	r3, [r3, #4]
	ldr	r4, [r3]
	cmp	r4, r0
	bne	.L74
	ldr	r0, [r4, #320]
	mov	r5, r1
	cbz	r0, .L72
	ldr	lr, [r4, #324]
	cmp	lr, #0
	beq	.L72
	movs	r6, #0
	mov	ip, #255
	str	r6, [sp]
	mov	r1, lr
	str	r6, [sp, #4]
	mov	r3, r6
	ldr	r7, [lr]
	mov	r2, r6
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	ip, [sp, #20]
	str	r6, [sp, #16]
	str	r7, [sp, #12]
	add	r7, sp, #40
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r0, .L84+4
	mov	r2, r6
	str	r4, [r7, #-4]!
	mov	r1, r7
.LPIC5:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, r7
	bl	_libaroma_ctl_pager_window_invalidate._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r4, [sp, #36]
.L72:
	movs	r0, #1
	cmp	r5, #0
	beq	.L71
	ldr	r5, [r4, #24]
	movs	r1, #0
	ldr	r3, [r4, #20]
	mov	r0, r4
	mov	r2, r1
	str	r5, [sp]
	bl	_libaroma_ctl_pager_window_sync(PLT)
	b	.L71
.L85:
	.align	2
.L84:
	.word	.LANCHOR0-(.LPIC4+4)
	.word	_libaroma_ctl_pager_window_invalidate._omp_fn.0-(.LPIC5+4)
	.size	_libaroma_ctl_pager_window_invalidate, .-_libaroma_ctl_pager_window_invalidate
	.global	abort
	.section	.text._libaroma_ctl_pager_thread._omp_fn.1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_thread._omp_fn.1, %function
_libaroma_ctl_pager_thread._omp_fn.1:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r5, #56963
	ldr	r7, .L152
	mov	r4, r0
	movs	r6, #1
	mov	r8, #0
	fstmfdd	sp!, {d8}
	sub	sp, sp, #36
	bl	GOMP_sections_next(PLT)
.LPIC6:
	add	r7, pc
	mov	fp, r0
	add	r9, sp, #24
	mov	r10, #1000
	movt	r5, 17179
	str	r5, [sp, #8]
.L91:
	cmp	fp, #1
	beq	.L88
	bcc	.L89
	cmp	fp, #2
	beq	.L90
	bl	abort(PLT)
.L88:
	ldr	r0, [r4, #4]
	adds	r0, r0, #168
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [r4, #4]
	ldr	r3, [r1, #44]
	cmp	r3, #0
	bne	.L93
.L107:
	ldr	r3, [r1, #24]
	adds	r2, r3, #1
	beq	.L101
	ldr	r2, [r1, #20]
	cmp	r3, r2
	itt	eq
	moveq	r3, #-1
	streq	r3, [r1, #24]
	beq	.L101
	subs	r0, r3, r2
	sbfx	r0, r0, #2, #24
	add	lr, r0, #1
	cmp	lr, #2
	bhi	.L105
	adds	r5, r0, #1
	it	ne
	movne	r0, #1
.L105:
	add	r2, r2, r0
	cmp	r3, r2
	beq	.L103
.L104:
	str	r2, [r1, #20]
	strb	r6, [r4, #8]
	ldr	r3, [r1, #184]
	cbz	r3, .L101
	ldr	r0, [r3, #4]
	ldr	r2, [r4]
	cmp	r0, r2
	beq	.L149
.L101:
	add	r0, r1, #168
	bl	omp_unset_nest_lock(PLT)
	ldr	r3, [r4, #4]
	ldr	r0, [r3, #12]
	cmp	r0, #0
	ble	.L92
	ldr	r2, [r4]
	mov	ip, #-1
	ldr	lr, [r3, #8]
	ldr	r1, [r3, #76]
	ldr	fp, [r2, #24]
	ldr	r2, [r3, #16]
	cmp	r1, #100
	str	ip, [r3, #24]
	it	lt
	movlt	r1, #100
	mul	fp, fp, lr
	rsb	r2, r2, fp
	fmsr	s17, r2	@ int
	bl	libaroma_duration_state(PLT)
	bl	libaroma_motion_fluid(PLT)
	ldr	r0, [r4, #4]
	fcpys	s16, s0
	adds	r0, r0, #168
	bl	omp_set_nest_lock(PLT)
	fcvtds	d17, s16
	fconstd	d18, #112
	fsitod	d16, s17
	ldr	r3, [r4, #4]
	fsubd	d17, d18, d17
	add	r0, r3, #168
	fmuld	d16, d17, d16
	ftosizd	s15, d16
	fmrs	r2, s15	@ int
	rsb	r2, r2, fp
	str	r2, [r3, #20]
	bl	omp_unset_nest_lock(PLT)
	ldr	r2, [r4, #4]
	ldr	r3, [r2, #184]
	cbz	r3, .L99
	ldr	r1, [r3, #4]
	ldr	r0, [r4]
	cmp	r1, r0
	beq	.L150
.L99:
	fconsts	s15, #112
	fcmpes	s16, s15
	fmstat
	blt	.L98
	ldr	r0, [r4, #4]
	adds	r0, r0, #168
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #4]
	strb	r6, [r3, #181]
	ldr	r0, [r4, #4]
	str	fp, [r3, #20]
	str	r8, [r3, #12]
	adds	r0, r0, #168
	bl	omp_unset_nest_lock(PLT)
	ldr	r2, [r4, #4]
	ldr	r3, [r2, #184]
	cbz	r3, .L98
	ldr	r1, [r3, #4]
	ldr	r0, [r4]
	cmp	r1, r0
	beq	.L151
.L98:
	strb	r6, [r4, #8]
.L92:
	bl	GOMP_sections_next(PLT)
	mov	fp, r0
	b	.L91
.L90:
	add	fp, sp, #16
	add	lr, r4, #4
	mov	r1, fp
	add	r3, r4, #8
	movs	r2, #0
	mov	r0, r7
	str	lr, [sp, #16]
	str	r3, [sp, #20]
	bl	GOMP_parallel_start(PLT)
	mov	r0, fp
	bl	_libaroma_ctl_pager_thread._omp_fn.2(PLT)
	bl	GOMP_parallel_end(PLT)
	bl	GOMP_sections_next(PLT)
	mov	fp, r0
	b	.L91
.L89:
	bl	GOMP_sections_end_nowait(PLT)
	add	sp, sp, #36
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L93:
	mov	r0, fp
	mov	r1, r9
	bl	clock_gettime(PLT)
	movs	r2, #0
	cbnz	r0, .L106
	ldr	r1, [sp, #28]
	ldr	r5, [sp, #8]
	ldr	r3, [sp, #24]
	smull	r5, r2, r5, r1
	asrs	r1, r1, #31
	rsb	r2, r1, r2, asr #18
	mla	r2, r10, r3, r2
.L106:
	ldr	r1, [r4, #4]
	ldr	r3, [r1, #44]
	subs	r3, r2, r3
	cmp	r3, #120
	ble	.L107
	ldr	r0, [r1, #72]
	str	r8, [r1, #44]
	cmp	r0, #0
	beq	.L107
	ldr	r3, [r0, #72]
	ldr	r2, [r1]
	ldr	r3, [r3]
	str	r0, [r2, #340]
	str	r8, [r1, #72]
	cmp	r3, #0
	beq	.L107
	adds	r1, r1, #48
	blx	r3
	ldr	r1, [r4, #4]
	b	.L107
.L103:
	mov	r3, #-1
	str	r3, [r1, #24]
	b	.L104
.L150:
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L99
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L99
	ldr	ip, [r3]
	cmp	ip, #0
	beq	.L99
	ldr	r5, [r2]
	ldr	r3, [r1, #24]
	ldr	lr, [r2, #20]
	ldr	r5, [r5, #20]
	str	r3, [sp]
	ldr	r2, [r2, #8]
	mov	r3, r5
	str	r2, [sp, #4]
	mov	r2, lr
	blx	ip
	b	.L99
.L149:
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L101
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L101
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L101
	add	r0, r1, #168
	ldr	fp, [r1, #20]
	bl	omp_unset_nest_lock(PLT)
	ldmia	r4, {r0, lr}
	mov	r2, fp
	ldr	r1, [lr, #184]
	ldr	r3, [lr]
	ldr	ip, [r0, #24]
	ldmia	r1, {r0, r1, fp}
	ldr	r3, [r3, #20]
	str	ip, [sp]
	ldr	r5, [lr, #8]
	str	r5, [sp, #4]
	ldr	ip, [fp]
	blx	ip
	ldr	r0, [r4, #4]
	adds	r0, r0, #168
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [r4, #4]
	b	.L101
.L151:
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L98
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L98
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L98
	ldr	r2, [r2, #8]
	blx	r3
	strb	r6, [r4, #8]
	b	.L92
.L153:
	.align	2
.L152:
	.word	_libaroma_ctl_pager_thread._omp_fn.2-(.LPIC6+4)
	.size	_libaroma_ctl_pager_thread._omp_fn.1, .-_libaroma_ctl_pager_thread._omp_fn.1
	.section	.text._libaroma_ctl_pager_thread,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_pager_thread
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_thread, %function
_libaroma_ctl_pager_thread:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L162
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
.LPIC7:
	add	r2, pc
	sub	sp, sp, #20
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L159
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L159:
	ldr	r5, [r4, #4]
	ldr	r3, [r5]
	ldrb	r6, [r5, #164]	@ zero_extendqisi2
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L160
	mov	r0, r6
.L161:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L160:
	ldr	r0, .L162+4
	mov	r1, sp
	movs	r2, #0
	movs	r3, #2
	strb	r6, [sp, #8]
.LPIC8:
	add	r0, pc
	stmia	sp, {r4, r5}
	bl	GOMP_parallel_sections_start(PLT)
	mov	r0, sp
	bl	_libaroma_ctl_pager_thread._omp_fn.1(PLT)
	bl	GOMP_parallel_end(PLT)
	ldrb	r6, [sp, #8]	@ zero_extendqisi2
	mov	r0, r6
	b	.L161
.L163:
	.align	2
.L162:
	.word	.LANCHOR0-(.LPIC7+4)
	.word	_libaroma_ctl_pager_thread._omp_fn.1-(.LPIC8+4)
	.size	_libaroma_ctl_pager_thread, .-_libaroma_ctl_pager_thread
	.section	.text._libaroma_ctl_pager_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_pager_destroy
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_destroy, %function
_libaroma_ctl_pager_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L172
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #72]
.LPIC9:
	add	r2, pc
	cmp	r3, r2
	beq	.L171
	pop	{r3, r4, r5, pc}
.L171:
	ldr	r4, [r0, #4]
	ldr	r3, [r4, #184]
	cbz	r3, .L166
	ldr	r2, [r3, #4]
	cmp	r0, r2
	itt	eq
	moveq	r2, #0
	streq	r2, [r3, #4]
.L166:
	mov	r5, r4
	ldr	r0, [r5], #168
	bl	libaroma_window_free(PLT)
	mov	r0, r5
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	free(PLT)
.L173:
	.align	2
.L172:
	.word	.LANCHOR0-(.LPIC9+4)
	.size	_libaroma_ctl_pager_destroy, .-_libaroma_ctl_pager_destroy
	.section	.text._libaroma_ctl_pager_direct_canvas,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_pager_direct_canvas
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_direct_canvas, %function
_libaroma_ctl_pager_direct_canvas:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r2, r0
	ldr	r5, .L187
	sub	sp, sp, #44
	ldr	r4, [r0, #72]
.LPIC10:
	add	r5, pc
	cmp	r4, r5
	it	ne
	movne	r0, #0
	beq	.L185
.L175:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L185:
	ldr	r4, [r2, #4]
	mov	r6, r1
	ldr	r5, [r4, #20]
	ldrb	r3, [r4, #180]	@ zero_extendqisi2
	cbz	r1, .L176
	movs	r0, #1
	cmp	r3, #0
	bne	.L175
	strb	r0, [r4, #180]
	b	.L175
.L176:
	cbnz	r3, .L186
	movs	r0, #1
	b	.L175
.L186:
	bl	libaroma_control_draw_begin(PLT)
	mov	r7, r0
	str	r0, [sp, #32]
	cbz	r0, .L177
	ldr	r0, [r4]
	mov	r2, r5
	mov	lr, #255
	mov	r1, r7
	mov	r3, r6
	ldr	r0, [r0, #320]
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r5, [r7]
	str	r5, [sp, #8]
	ldr	r5, [r7, #4]
	str	r6, [sp, #16]
	str	r6, [sp, #24]
	str	r5, [sp, #12]
	str	r6, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	mov	r1, r6
	add	r0, sp, #32
	bl	libaroma_canvas_free_ex1(PLT)
.L177:
	movs	r3, #0
	movs	r0, #1
	strb	r3, [r4, #180]
	b	.L175
.L188:
	.align	2
.L187:
	.word	.LANCHOR0-(.LPIC10+4)
	.size	_libaroma_ctl_pager_direct_canvas, .-_libaroma_ctl_pager_direct_canvas
	.section	.text._libaroma_ctl_pager_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_pager_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_draw, %function
_libaroma_ctl_pager_draw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L204
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
.LPIC11:
	add	r2, pc
	sub	sp, sp, #36
	cmp	r3, r2
	beq	.L201
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L201:
	ldr	r5, [r0, #4]
	mov	r6, r1
	ldr	r0, [r5]
	ldrb	r3, [r0, #60]	@ zero_extendqisi2
	cbnz	r3, .L191
	ldrb	r1, [r5, #164]	@ zero_extendqisi2
	cbz	r1, .L202
.L191:
	add	r8, r5, #168
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldrb	r7, [r5, #180]	@ zero_extendqisi2
	cbnz	r7, .L193
	ldr	r3, [r5]
	ldr	r1, [r3, #320]
	cbz	r1, .L194
	ldr	r3, [r5, #20]
	mov	lr, #255
	ldr	r9, [r6]
	mov	r2, r7
	ldr	ip, [r6, #4]
	mov	r0, r6
	str	r3, [sp]
	mov	r3, r7
	str	r7, [sp, #4]
	str	r7, [sp, #16]
	str	r7, [sp, #24]
	str	r7, [sp, #28]
	str	r9, [sp, #8]
	str	ip, [sp, #12]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L195:
	ldrb	r3, [r5, #181]	@ zero_extendqisi2
	cbnz	r3, .L203
.L193:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	movs	r3, #0
	strb	r3, [r5, #164]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L202:
	bl	_libaroma_ctl_pager_window_invalidate(PLT)
	b	.L191
.L203:
	movs	r3, #0
	mov	r0, r4
	strb	r3, [r5, #181]
	movs	r1, #1
	bl	_libaroma_ctl_pager_direct_canvas(PLT)
	b	.L193
.L194:
	mov	r1, r6
	mov	r0, r4
	bl	libaroma_control_erasebg(PLT)
	b	.L195
.L205:
	.align	2
.L204:
	.word	.LANCHOR0-(.LPIC11+4)
	.size	_libaroma_ctl_pager_draw, .-_libaroma_ctl_pager_draw
	.section	.text.libaroma_ctl_pager_set_active_page,"ax",%progbits
	.align	2
	.global	libaroma_ctl_pager_set_active_page
	.thumb
	.thumb_func
	.type	libaroma_ctl_pager_set_active_page, %function
libaroma_ctl_pager_set_active_page:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L231+16
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
.LPIC12:
	add	r2, pc
	fstmfdd	sp!, {d8, d9}
	cmp	r3, r2
	sub	sp, sp, #8
	beq	.L230
.L218:
	movs	r0, #0
.L207:
	add	sp, sp, #8
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, pc}
.L230:
	cmp	r1, #0
	mov	r5, r1
	ldr	r6, [r0, #4]
	blt	.L218
	ldr	r3, [r6, #4]
	cmp	r1, r3
	bge	.L218
	add	r8, r6, #168
	fcpyd	d8, d0
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r7, [r4, #24]
	ldr	r3, [r6, #20]
	mul	r2, r5, r7
	subs	r3, r2, r3
	beq	.L208
	eor	r2, r3, r3, asr #31
	fmsr	s15, r7	@ int
	fsitod	d16, s15
	sub	r2, r2, r3, asr #31
	fconstd	d17, #112
	fmsr	s18, r2	@ int
	fsitod	d18, s18
	fdivd	d16, d18, d16
	fcmpd	d16, d17
	fmstat
	bgt	.L227
	fcvtsd	s0, d16
	fconsts	s15, #96
	fldd	d16, .L231
	fsubs	s0, s0, s15
	fcvtds	d0, s0
	fmuld	d0, d0, d16
	fcvtsd	s0, d0
	bl	sinf(PLT)
	fconsts	s15, #112
	fadds	s15, s0, s15
.L209:
	fcmpezd	d8
	fmstat
	ble	.L228
	add	r7, r7, r7, lsr #31
	fconstd	d16, #46
	asrs	r7, r7, #1
	fmsr	s0, r7	@ int
	fsitos	s0, s0
	fmuls	s0, s15, s0
	fcvtds	d0, s0
	fdivd	d0, d0, d8
	fabsd	d0, d0
	fmuld	d0, d0, d16
	bl	lround(PLT)
.L213:
	cmp	r0, #99
	it	le
	movle	r7, #100
	ble	.L214
	mov	r7, #600
	cmp	r7, r0
	it	ge
	movge	r7, r0
.L214:
	movs	r1, #0
	mov	r0, r4
	bl	_libaroma_ctl_pager_direct_canvas(PLT)
	ldr	r3, [r6, #20]
	movs	r0, #1
	str	r5, [r6, #8]
	mov	r1, sp
	str	r7, [r6, #76]
	str	r3, [r6, #16]
	bl	clock_gettime(PLT)
	movs	r3, #0
	cbnz	r0, .L215
	ldr	r2, [sp, #4]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp]
	mov	r3, #1000
	smull	r4, r1, r1, r2
	asrs	r2, r2, #31
	rsb	r2, r2, r1, asr #18
	mla	r3, r3, r0, r2
.L215:
	str	r3, [r6, #12]
.L208:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	b	.L207
.L227:
	flds	s15, .L231+8
	b	.L209
.L228:
	fmsr	s15, r7	@ int
	fsitos	s14, s15
	fsitos	s18, s18
	flds	s15, .L231+12
	fdivs	s18, s18, s14
	fmacs	s15, s18, s15
	ftosizs	s15, s15
	fmrs	r0, s15	@ int
	b	.L213
.L232:
	.align	3
.L231:
	.word	858993459
	.word	1070805811
	.word	1066606794
	.word	1133903872
	.word	.LANCHOR0-(.LPIC12+4)
	.size	libaroma_ctl_pager_set_active_page, .-libaroma_ctl_pager_set_active_page
	.section	.text._libaroma_ctl_pager_msg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_pager_msg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_pager_msg, %function
_libaroma_ctl_pager_msg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L357+16
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
.LPIC13:
	add	r2, pc
	fstmfdd	sp!, {d8}
	cmp	r3, r2
	sub	sp, sp, #28
	beq	.L350
.L291:
	movs	r0, #0
.L346:
	add	sp, sp, #28
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L350:
	ldrb	r3, [r1]	@ zero_extendqisi2
	mov	r6, r1
	ldr	r9, [r0, #4]
	cmp	r3, #130
	ldr	r4, [r9]
	beq	.L236
	bhi	.L237
	cmp	r3, #6
	beq	.L238
	cmp	r3, #129
	bne	.L291
	ldrb	r5, [r4, #60]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L291
	ldr	r2, [r4, #328]
	movs	r3, #1
	strb	r3, [r4, #60]
	cmp	r2, #0
	ble	.L246
.L247:
	ldr	r3, [r4, #332]
	mov	r1, r6
	ldr	r0, [r3, r5, lsl #2]
	adds	r5, r5, #1
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L245
	blx	r3
	ldr	r2, [r4, #328]
.L245:
	cmp	r5, r2
	blt	.L247
.L246:
	add	r4, r9, #168
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	movs	r3, #1
	mov	r0, r4
	strb	r3, [r9, #181]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	b	.L346
.L237:
	cmp	r3, #132
	beq	.L240
	cmp	r3, #133
	bne	.L291
	add	r6, r9, #168
	movs	r7, #0
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r5, #20]
	ldr	r1, [r5, #24]
	ldr	r0, [r5, #16]
	str	r3, [r4, #8]
	ldr	r3, [r9, #4]
	ldr	r2, [r4, #320]
	ldr	r5, [r5, #28]
	str	r0, [r4, #4]
	mul	r3, r3, r1
	str	r7, [r4, #12]
	str	r5, [r4, #24]
	str	r7, [r4, #16]
	subs	r1, r3, r1
	str	r3, [r4, #20]
	str	r1, [r9, #28]
	cbz	r2, .L252
	ldr	r1, [r2]
	cmp	r3, r1
	bne	.L253
	ldr	r3, [r2, #4]
	cmp	r5, r3
	beq	.L254
.L253:
	add	r0, r4, #320
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #320]
.L252:
	movs	r3, #0
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #24]
	mov	r2, r3
	str	r3, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r4, #320]
.L254:
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	bl	_libaroma_ctl_pager_window_updatebg(PLT)
	ldr	r3, [r4, #328]
	cmp	r3, #0
	ble	.L291
	movs	r5, #0
.L255:
	ldr	r3, [r4, #332]
	mov	r0, r4
	ldr	r1, [r3, r5, lsl #2]
	adds	r5, r5, #1
	bl	libaroma_window_measure(PLT)
	ldr	r3, [r4, #328]
	cmp	r5, r3
	blt	.L255
	b	.L291
.L236:
	ldrb	r3, [r4, #60]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L291
	add	r9, r9, #168
	mov	r0, r9
	bl	omp_set_nest_lock(PLT)
	mov	r0, r5
	movs	r1, #0
	bl	_libaroma_ctl_pager_direct_canvas(PLT)
	mov	r0, r9
	movs	r5, #0
	bl	omp_unset_nest_lock(PLT)
	ldr	r2, [r4, #328]
	strb	r5, [r4, #60]
	cmp	r2, r5
	ble	.L291
.L251:
	ldr	r3, [r4, #332]
	mov	r1, r6
	ldr	r0, [r3, r5, lsl #2]
	adds	r5, r5, #1
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L250
	blx	r3
	ldr	r2, [r4, #328]
.L250:
	cmp	r5, r2
	blt	.L251
	b	.L291
.L238:
	ldr	r7, [r1, #8]
	movs	r0, #0
	mov	r1, r5
	add	r2, sp, #8
	add	r3, sp, #16
	str	r7, [sp, #8]
	ldr	r7, [r6, #12]
	str	r7, [sp, #16]
	bl	libaroma_window_calculate_pos(PLT)
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	ldr	r1, [r9, #8]
	ldr	r0, [r5, #24]
	ldr	r7, [sp, #8]
	cmp	r3, #1
	ldr	r2, [sp, #16]
	mul	r10, r0, r1
	str	r7, [r6, #8]
	str	r2, [r6, #12]
	beq	.L351
	ldr	r0, [r4, #340]
	cmp	r0, #0
	beq	.L269
	ldr	r2, [r0, #72]
	add	r7, r7, r10
	str	r7, [sp, #8]
	str	r7, [r6, #8]
	ldr	r2, [r2]
	cbz	r2, .L293
	mov	r1, r6
	blx	r2
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
.L270:
	cmp	r3, #0
	bne	.L346
	str	r3, [r4, #340]
	b	.L346
.L240:
	ldr	r2, [r4, #328]
	cmp	r2, #0
	it	gt
	movgt	r5, #0
	ble	.L291
.L249:
	ldr	r3, [r4, #332]
	mov	r1, r6
	ldr	r0, [r3, r5, lsl #2]
	adds	r5, r5, #1
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L248
	blx	r3
	ldr	r2, [r4, #328]
.L248:
	cmp	r5, r2
	blt	.L249
	b	.L291
.L293:
	mov	r0, r2
	b	.L270
.L351:
	add	r8, r9, #168
	movs	r7, #0
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r5, [r6]	@ unaligned
	mov	r0, r8
	ldr	r1, [r6, #4]	@ unaligned
	ldr	ip, [r6, #8]	@ unaligned
	ldr	lr, [r6, #12]	@ unaligned
	ldr	r2, [sp, #8]
	str	ip, [r9, #56]	@ unaligned
	str	r5, [r9, #48]	@ unaligned
	str	r1, [r9, #52]	@ unaligned
	add	r2, r2, r10
	str	lr, [r9, #60]	@ unaligned
	ldr	r5, [r6, #16]	@ unaligned
	ldr	r1, [r6, #20]	@ unaligned
	str	r2, [r9, #56]
	str	r5, [r9, #64]	@ unaligned
	str	r1, [r9, #68]	@ unaligned
	str	r7, [r4, #340]
	str	r7, [r9, #72]
	bl	omp_unset_nest_lock(PLT)
	ldr	r5, [r9, #12]
	cbnz	r5, .L258
	ldr	r3, [r4, #328]
	cmp	r3, r7
	bgt	.L261
	b	.L258
.L260:
	ldr	r3, [r4, #328]
	cmp	r5, r3
	bge	.L258
.L261:
	ldr	r3, [r4, #332]
	lsls	r7, r5, #2
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #16]
	ldr	r0, [r3, r5, lsl #2]
	adds	r5, r5, #1
	add	r1, r1, r10
	bl	_libaroma_window_is_inside(PLT)
	cmp	r0, #0
	beq	.L260
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #332]
	mov	r0, r8
	ldr	r3, [r3, r7]
	str	r3, [r9, #72]
	bl	omp_unset_nest_lock(PLT)
.L258:
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r9, #72]
	cbz	r3, .L262
	ldr	r3, [r3, #72]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L263
	ldr	r3, [r9, #28]
	cmp	r3, #0
	ldr	r3, [r6, #20]
	it	le
	suble	r3, r3, #120
	str	r3, [r9, #44]
.L262:
	ldr	r3, [r9, #12]
	cmp	r3, #0
	bne	.L265
	ldr	r3, [r9, #28]
	cmp	r3, #0
	ite	gt
	movgt	r3, #2
	movle	r3, #1
	strb	r3, [r9, #32]
.L267:
	ldr	r1, [sp, #8]
	add	r0, r9, #80
	ldr	r3, [sp, #16]
	str	r1, [r9, #36]
	str	r3, [r9, #40]
	bl	libaroma_fling_down(PLT)
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	b	.L346
.L269:
	cmp	r3, #2
	beq	.L352
	cmp	r3, #0
	bne	.L346
	add	r7, r9, #168
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r9, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L353
.L286:
	ldr	r3, [r9, #44]
	ldr	r0, [r9, #72]
	cbnz	r3, .L289
	cbz	r0, .L290
.L289:
	ldr	r3, [r0, #72]
	ldr	r2, [r3]
	cbz	r2, .L290
	ldr	r3, [sp, #8]
	add	r1, r9, #48
	add	r3, r3, r10
	str	r3, [r6, #8]
	blx	r2
	ldr	r0, [r9, #72]
	mov	r1, r6
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	blx	r3
.L290:
	ldr	r2, [sp, #8]
	movs	r4, #0
	ldr	r3, [sp, #16]
	movs	r1, #1
	mov	r0, r7
	str	r4, [r9, #44]
	str	r2, [r9, #36]
	str	r3, [r9, #40]
	str	r4, [r9, #72]
	strb	r1, [r9, #164]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	b	.L346
.L265:
	movs	r2, #0
	movs	r3, #1
	str	r2, [r9, #12]
	strb	r3, [r9, #32]
	b	.L267
.L263:
	str	r3, [r9, #72]
	b	.L262
.L352:
	add	r8, r9, #168
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r9, #28]
	cmp	r3, #0
	ble	.L273
	ldrb	r3, [r9, #32]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L274
.L277:
	movs	r6, #0
.L275:
	cmp	r3, #1
	beq	.L354
.L273:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	b	.L346
.L353:
	add	r0, r9, #80
	ldr	r1, [sp, #8]
	bl	libaroma_fling_up(PLT)
	ldr	r4, [r9, #8]
	cbz	r0, .L298
	ldr	r2, [r5, #24]
	ldr	r3, [r9, #20]
	mul	r2, r2, r4
	cmp	r2, r3
	bge	.L288
	cmp	r0, #0
	ble	.L298
	fmsr	s15, r0	@ int
	adds	r4, r4, #1
	fsitos	s16, s15
	fldd	d16, .L357
	fcvtds	d8, s16
	fmuld	d8, d8, d16
.L287:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	mov	r1, r4
	fcpyd	d0, d8
	bl	libaroma_ctl_pager_set_active_page(PLT)
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	b	.L286
.L298:
	fldd	d8, .L357+8
	b	.L287
.L288:
	ble	.L298
	cmp	r0, #0
	bge	.L298
	fmsr	s15, r0	@ int
	subs	r4, r4, #1
	fsitos	s16, s15
	fldd	d16, .L357
	fcvtds	d8, s16
	fmuld	d8, d8, d16
	b	.L287
.L354:
	ldr	r2, [r9, #36]
	ldr	r3, [sp, #8]
	cmp	r2, r3
	beq	.L273
	ldr	r3, [r9, #28]
	cmp	r3, #0
	ble	.L273
	movs	r1, #0
	mov	r0, r5
	bl	_libaroma_ctl_pager_direct_canvas(PLT)
	ldr	r2, [r9, #36]
	ldr	r1, [sp, #8]
	ldr	r3, [r9, #24]
	subs	r2, r2, r1
	cmp	r6, #0
	bne	.L281
	adds	r4, r3, #1
	beq	.L355
.L282:
	add	r3, r3, r2
	ldr	r0, [r9, #28]
	bic	r3, r3, r3, asr #31
	cmp	r3, r0
	ite	le
	strle	r3, [r9, #24]
	strgt	r0, [r9, #24]
.L284:
	str	r1, [r9, #36]
	add	r0, r9, #80
	bl	libaroma_fling_move(PLT)
	b	.L273
.L274:
	ldr	r7, [r9, #40]
	movs	r0, #24
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #8]
	ldr	r2, [r9, #36]
	subs	r7, r7, r1
	rsb	fp, r3, r2
	bl	libaroma_dp(PLT)
	eor	r3, r7, r7, asr #31
	sub	r3, r3, r7, asr #31
	cmp	r0, r3
	bgt	.L276
	eor	r2, fp, fp, asr #31
	sub	r2, r2, fp, asr #31
	cmp	r3, r2
	blt	.L276
	ldr	r2, [r9, #72]
	cmp	r2, #0
	beq	.L349
	ldr	r3, [r2, #72]
	ldr	r5, [r3]
	cmp	r5, #0
	beq	.L278
	ldr	r3, [sp, #8]
	movs	r7, #0
	add	r1, r9, #48
	mov	r0, r2
	add	r3, r3, r10
	str	r3, [r6, #8]
	str	r7, [r9, #44]
	str	r2, [r4, #340]
	str	r7, [r9, #72]
	blx	r5
	ldr	r0, [r4, #340]
	mov	r1, r6
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	blx	r3
.L279:
	ldr	r1, [sp, #8]
	movs	r3, #0
	ldr	r2, [sp, #16]
	movs	r0, #1
	str	r3, [r9, #44]
	str	r1, [r9, #36]
	str	r2, [r9, #40]
	strb	r3, [r9, #32]
	strb	r0, [r9, #164]
	b	.L273
.L355:
	ldr	r3, [r9, #20]
	ldr	r0, [r9, #28]
	add	r2, r2, r3
	bic	r2, r2, r2, asr #31
	cmp	r2, r0
	it	ge
	movge	r2, r0
	cmp	r2, r3
	beq	.L284
	ldr	r3, [r9, #184]
	str	r2, [r9, #20]
	cbz	r3, .L285
	ldr	r0, [r3, #4]
	cmp	r5, r0
	beq	.L356
.L285:
	movs	r3, #1
	strb	r3, [r9, #164]
	b	.L284
.L356:
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L285
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L285
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L285
	ldr	r3, [r5, #24]
	mov	r1, r5
	ldr	r6, [r9]
	str	r3, [sp]
	ldr	r3, [r9, #8]
	str	r3, [sp, #4]
	ldr	r3, [r6, #20]
	blx	r4
	ldr	r1, [sp, #8]
	b	.L285
.L281:
	adds	r0, r3, #1
	ittt	eq
	ldreq	r0, [r9, #20]
	moveq	r3, r0
	streq	r0, [r9, #24]
	b	.L282
.L278:
	str	r5, [r9, #72]
	b	.L279
.L349:
	ldrb	r3, [r9, #32]	@ zero_extendqisi2
	b	.L277
.L276:
	cmp	fp, #0
	it	lt
	rsblt	fp, fp, #0
	cmp	r0, fp
	bgt	.L349
	movs	r3, #0
	movs	r6, #1
	strb	r6, [r9, #32]
	str	r3, [r9, #44]
	str	r3, [r9, #72]
	str	r3, [r4, #340]
	ldrb	r3, [r9, #32]	@ zero_extendqisi2
	b	.L275
.L358:
	.align	3
.L357:
	.word	1202590843
	.word	1062501089
	.word	0
	.word	0
	.word	.LANCHOR0-(.LPIC13+4)
	.size	_libaroma_ctl_pager_msg, .-_libaroma_ctl_pager_msg
	.section	.text.libaroma_ctl_pager_get_window,"ax",%progbits
	.align	2
	.global	libaroma_ctl_pager_get_window
	.thumb
	.thumb_func
	.type	libaroma_ctl_pager_get_window, %function
libaroma_ctl_pager_get_window:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L362
	ldr	r3, [r0, #72]
.LPIC14:
	add	r2, pc
	cmp	r3, r2
	itte	eq
	ldreq	r3, [r0, #4]
	ldreq	r0, [r3]
	movne	r0, #0
	bx	lr
.L363:
	.align	2
.L362:
	.word	.LANCHOR0-(.LPIC14+4)
	.size	libaroma_ctl_pager_get_window, .-libaroma_ctl_pager_get_window
	.section	.text.libaroma_ctl_pager_get_active_page,"ax",%progbits
	.align	2
	.global	libaroma_ctl_pager_get_active_page
	.thumb
	.thumb_func
	.type	libaroma_ctl_pager_get_active_page, %function
libaroma_ctl_pager_get_active_page:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L367
	ldr	r3, [r0, #72]
.LPIC15:
	add	r2, pc
	cmp	r3, r2
	itte	eq
	ldreq	r3, [r0, #4]
	ldreq	r0, [r3, #8]
	movne	r0, #-1
	bx	lr
.L368:
	.align	2
.L367:
	.word	.LANCHOR0-(.LPIC15+4)
	.size	libaroma_ctl_pager_get_active_page, .-libaroma_ctl_pager_get_active_page
	.section	.text.libaroma_ctl_pager_get_pages,"ax",%progbits
	.align	2
	.global	libaroma_ctl_pager_get_pages
	.thumb
	.thumb_func
	.type	libaroma_ctl_pager_get_pages, %function
libaroma_ctl_pager_get_pages:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L372
	ldr	r3, [r0, #72]
.LPIC16:
	add	r2, pc
	cmp	r3, r2
	itte	eq
	ldreq	r3, [r0, #4]
	ldreq	r0, [r3, #4]
	movne	r0, #0
	bx	lr
.L373:
	.align	2
.L372:
	.word	.LANCHOR0-(.LPIC16+4)
	.size	libaroma_ctl_pager_get_pages, .-libaroma_ctl_pager_get_pages
	.section	.text.libaroma_ctl_pager_set_controller,"ax",%progbits
	.align	2
	.global	libaroma_ctl_pager_set_controller
	.thumb
	.thumb_func
	.type	libaroma_ctl_pager_set_controller, %function
libaroma_ctl_pager_set_controller:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L387
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, lr}
	mov	r4, r0
.LPIC17:
	add	r2, pc
	sub	sp, sp, #8
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L386
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L386:
	ldr	r5, [r4, #4]
	str	r1, [sp, #4]
	add	r6, r5, #168
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r5, #184]
	ldr	r1, [sp, #4]
	cbz	r3, .L376
	ldr	r2, [r3, #4]
	cmp	r2, r4
	itt	eq
	moveq	r2, #0
	streq	r2, [r3, #4]
.L376:
	str	r1, [r5, #184]
	cbz	r1, .L377
	ldr	r3, [r1, #4]
	cmp	r3, r4
	it	ne
	strne	r4, [r1, #4]
.L377:
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L388:
	.align	2
.L387:
	.word	.LANCHOR0-(.LPIC17+4)
	.size	libaroma_ctl_pager_set_controller, .-libaroma_ctl_pager_set_controller
	.section	.text.libaroma_ctl_pager,"ax",%progbits
	.align	2
	.global	libaroma_ctl_pager
	.thumb
	.thumb_func
	.type	libaroma_ctl_pager, %function
libaroma_ctl_pager:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	mov	fp, r3
	ldr	r3, [sp, #80]
	mov	r6, r0
	ldr	r10, [sp, #72]
	ldr	r7, [sp, #76]
	str	r3, [sp, #28]
	cmp	r0, #0
	beq	.L391
	mov	r8, r1
	movs	r0, #188
	movs	r1, #1
	mov	r5, r2
	bl	calloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L391
	mov	r3, #-1
	str	r5, [r0, #4]
	str	r3, [r0, #24]
	movs	r1, #1
	mov	r0, #364
	bl	calloc(PLT)
	mov	r5, r0
	str	r0, [r4]
	cbz	r0, .L399
	ldr	r3, .L401
	movs	r0, #48
	str	r6, [r5, #352]
.LPIC18:
	add	r3, pc
	str	r3, [r5, #356]
	movs	r5, #0
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #48
	bl	libaroma_dp(PLT)
	ldr	lr, .L401+4
	mov	r1, fp
	ldr	r3, [sp, #28]
	mov	r2, r10
	str	r0, [sp, #8]
	mov	r0, r8
.LPIC19:
	add	lr, pc
	str	r5, [sp, #20]
	str	r3, [sp]
	mov	r3, r7
	str	r9, [sp, #4]
	str	r4, [sp, #12]
	str	lr, [sp, #16]
	bl	libaroma_control_new(PLT)
	mov	r5, r0
	cbz	r0, .L400
	mov	r0, r4
	ldr	r3, [r0], #168
	str	r5, [r3, #360]
	bl	omp_init_nest_lock(PLT)
	mov	r0, r6
	mov	r1, r5
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	libaroma_window_attach(PLT)
.L400:
	ldr	r0, [r4]
	bl	free(PLT)
.L399:
	mov	r0, r4
	bl	free(PLT)
.L391:
	movs	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L402:
	.align	2
.L401:
	.word	.LANCHOR1-(.LPIC18+4)
	.word	.LANCHOR0-(.LPIC19+4)
	.size	libaroma_ctl_pager, .-libaroma_ctl_pager
	.section	.data.rel._libaroma_ctl_pager_win_handler,"aw",%progbits
	.align	2
.LANCHOR1 = . + 0
	.type	_libaroma_ctl_pager_win_handler, %object
	.size	_libaroma_ctl_pager_win_handler, 40
_libaroma_ctl_pager_win_handler:
	.word	0
	.word	0
	.word	_libaroma_ctl_pager_window_updatebg
	.word	_libaroma_ctl_pager_window_invalidate
	.word	_libaroma_ctl_pager_window_sync
	.word	0
	.word	0
	.word	0
	.word	_libaroma_ctl_pager_window_control_isvisible
	.word	_libaroma_ctl_pager_window_control_draw_begin
	.section	.data.rel._libaroma_ctl_pager_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_ctl_pager_handler, %object
	.size	_libaroma_ctl_pager_handler, 20
_libaroma_ctl_pager_handler:
	.word	_libaroma_ctl_pager_msg
	.word	_libaroma_ctl_pager_draw
	.word	0
	.word	_libaroma_ctl_pager_destroy
	.word	_libaroma_ctl_pager_thread
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
