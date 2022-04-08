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
	.file	"ctl_fragment.c"
	.section	.text._libaroma_ctl_fragment_window_sync,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_window_sync
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_window_sync, %function
_libaroma_ctl_fragment_window_sync:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6}
	ldr	r4, [r0, #360]
	cbz	r4, .L7
	ldr	r3, [r4, #8]
	ldr	r1, .L17
	ldr	r2, [r3, #72]
.LPIC8:
	add	r1, pc
	cmp	r2, r1
	beq	.L16
.L10:
	movs	r0, #0
.L2:
	pop	{r4, r5, r6}
	bx	lr
.L16:
	ldr	r6, [r3, #4]
	ldr	r5, [r6, #4]
	cmp	r5, #0
	ble	.L10
	ldr	r2, [r6]
	ldr	r3, [r2]
	cmp	r0, r3
	beq	.L3
	movs	r3, #0
.L4:
	adds	r3, r3, #1
	cmp	r3, r5
	beq	.L10
	ldr	r1, [r2, #4]!
	cmp	r0, r1
	bne	.L4
	adds	r3, r3, #1
	beq	.L10
.L3:
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L2
	movs	r0, #1
	strb	r0, [r6, #48]
	b	.L2
.L7:
	mov	r0, r4
	pop	{r4, r5, r6}
	bx	lr
.L18:
	.align	2
.L17:
	.word	.LANCHOR0-(.LPIC8+4)
	.size	_libaroma_ctl_fragment_window_sync, .-_libaroma_ctl_fragment_window_sync
	.section	.text._libaroma_ctl_fragment_window_control_isvisible,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_window_control_isvisible
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_window_control_isvisible, %function
_libaroma_ctl_fragment_window_control_isvisible:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	ldr	r4, [r0, #360]
	cbz	r4, .L25
	ldr	r3, [r4, #8]
	ldr	r1, .L31
	ldr	r2, [r3, #72]
.LPIC9:
	add	r1, pc
	cmp	r2, r1
	beq	.L30
.L28:
	movs	r0, #0
	pop	{r4, r5}
	bx	lr
.L30:
	ldr	r3, [r3, #4]
	ldr	r5, [r3, #4]
	cmp	r5, #0
	ble	.L28
	ldr	r2, [r3]
	ldr	r3, [r2]
	cmp	r0, r3
	beq	.L21
	movs	r3, #0
.L22:
	adds	r3, r3, #1
	cmp	r3, r5
	beq	.L28
	ldr	r1, [r2, #4]!
	cmp	r0, r1
	bne	.L22
	adds	r3, r3, #1
	beq	.L28
.L21:
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	pop	{r4, r5}
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	bx	lr
.L25:
	mov	r0, r4
	pop	{r4, r5}
	bx	lr
.L32:
	.align	2
.L31:
	.word	.LANCHOR0-(.LPIC9+4)
	.size	_libaroma_ctl_fragment_window_control_isvisible, .-_libaroma_ctl_fragment_window_control_isvisible
	.section	.text._libaroma_ctl_fragment_window_postfree,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_window_postfree
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_window_postfree, %function
_libaroma_ctl_fragment_window_postfree:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0, #360]
	cbz	r0, .L33
	ldr	r3, [r0, #8]
	ldr	r1, .L47
	ldr	r2, [r3, #72]
.LPIC10:
	add	r1, pc
	cmp	r2, r1
	beq	.L46
.L33:
	pop	{r3, r4, r5, pc}
.L46:
	ldr	r3, [r3, #4]
	ldr	r5, [r3, #4]
	cmp	r5, #0
	ble	.L33
	ldr	r2, [r3]
	ldr	r3, [r2]
	cmp	r4, r3
	beq	.L35
	movs	r3, #0
	b	.L36
.L38:
	ldr	r1, [r2, #4]!
	cmp	r4, r1
	beq	.L37
.L36:
	adds	r3, r3, #1
	cmp	r3, r5
	bne	.L38
	pop	{r3, r4, r5, pc}
.L37:
	adds	r3, r3, #1
	beq	.L33
.L35:
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r4, #360]
	pop	{r3, r4, r5, pc}
.L48:
	.align	2
.L47:
	.word	.LANCHOR0-(.LPIC10+4)
	.size	_libaroma_ctl_fragment_window_postfree, .-_libaroma_ctl_fragment_window_postfree
	.section	.text._libaroma_ctl_fragment_window_control_draw_begin,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_window_control_draw_begin
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_window_control_draw_begin, %function
_libaroma_ctl_fragment_window_control_draw_begin:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0
	ldr	r7, [r0, #360]
	sub	sp, sp, #16
	cmp	r7, #0
	beq	.L59
	ldr	r8, [r7, #8]
	ldr	r2, .L71
	ldr	r3, [r8, #72]
.LPIC11:
	add	r2, pc
	cmp	r3, r2
	bne	.L62
	ldr	r9, [r8, #4]
	ldr	r6, [r9, #4]
	cmp	r6, #0
	ble	.L62
	ldr	r2, [r9]
	mov	r10, r1
	ldr	r3, [r2]
	cmp	r0, r3
	beq	.L51
	movs	r3, #0
	b	.L52
.L54:
	ldr	r4, [r2, #4]!
	cmp	r5, r4
	beq	.L53
.L52:
	adds	r3, r3, #1
	cmp	r3, r6
	bne	.L54
.L62:
	movs	r0, #0
.L50:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L53:
	adds	r3, r3, #1
	beq	.L62
.L51:
	ldrb	r0, [r7, #4]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L50
	add	r4, r9, #64
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r9, #49]	@ zero_extendqisi2
	cbnz	r3, .L69
	ldr	r0, [r5, #320]
	mov	r7, r0
	cbz	r0, .L58
	add	r1, r10, #16
	ldmia	r1, {r1, r2, r3, r5}
	str	r5, [sp]
	bl	libaroma_canvas_area(PLT)
	mov	r7, r0
.L58:
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r7
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L69:
	mov	r0, r8
	add	r5, r10, #16
	ldmia	r5, {r5, r6, r8, r9}
	bl	libaroma_control_draw_begin(PLT)
	mov	r7, r0
	str	r0, [sp, #8]
	cmp	r0, #0
	beq	.L58
	ldr	r1, [r0]
	cmp	r5, r1
	bge	.L66
	ldr	r3, [r0, #4]
	cmp	r6, r3
	blt	.L70
.L66:
	movs	r7, #0
.L57:
	add	r0, sp, #8
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L58
.L70:
	str	r9, [sp]
	mov	r1, r5
	mov	r2, r6
	mov	r3, r8
	bl	libaroma_canvas_area(PLT)
	mov	r7, r0
	b	.L57
.L59:
	mov	r0, r7
	b	.L50
.L72:
	.align	2
.L71:
	.word	.LANCHOR0-(.LPIC11+4)
	.size	_libaroma_ctl_fragment_window_control_draw_begin, .-_libaroma_ctl_fragment_window_control_draw_begin
	.section	.text._libaroma_ctl_fragment_window_updatebg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_window_updatebg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_window_updatebg, %function
_libaroma_ctl_fragment_window_updatebg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	ldr	r0, [r0, #360]
	sub	sp, sp, #12
	cbz	r0, .L74
	ldr	r6, [r0, #8]
	ldr	r2, .L91
	ldr	r3, [r6, #72]
.LPIC12:
	add	r2, pc
	cmp	r3, r2
	beq	.L90
.L84:
	movs	r0, #0
.L74:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L90:
	ldr	r0, [r6, #4]
	ldr	r5, [r0, #4]
	cmp	r5, #0
	ble	.L84
	ldr	r2, [r0]
	ldr	r3, [r2]
	cmp	r4, r3
	beq	.L75
	movs	r3, #0
.L76:
	adds	r3, r3, #1
	cmp	r3, r5
	beq	.L84
	ldr	r1, [r2, #4]!
	cmp	r4, r1
	bne	.L76
	adds	r3, r3, #1
	beq	.L84
.L75:
	add	r7, r0, #64
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #324]
	ldr	r8, [r4, #20]
	ldr	r9, [r4, #24]
	cbz	r3, .L79
	ldr	r2, [r3]
	cmp	r2, r8
	bne	.L80
	ldr	r3, [r3, #4]
	cmp	r3, r9
	beq	.L89
.L80:
	add	r0, r4, #324
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L79:
	movs	r5, #0
	mov	r0, r8
	mov	r2, r5
	mov	r1, r9
	mov	r3, r5
	str	r5, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	mov	r8, r0
	mov	r1, r5
	mov	r0, r6
	str	r8, [r4, #324]
	bl	libaroma_colorget(PLT)
	movs	r2, #255
	ldrh	r1, [r0, #10]
	mov	r0, r8
	bl	libaroma_canvas_setcolor(PLT)
.L89:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L92:
	.align	2
.L91:
	.word	.LANCHOR0-(.LPIC12+4)
	.size	_libaroma_ctl_fragment_window_updatebg, .-_libaroma_ctl_fragment_window_updatebg
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text._libaroma_ctl_fragment_destroy._omp_fn.7,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_destroy._omp_fn.7, %function
_libaroma_ctl_fragment_destroy._omp_fn.7:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r0
	ldr	r6, [r0]
	bl	omp_get_num_threads(PLT)
	ldr	r4, [r6, #4]
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
	bge	.L93
	lsls	r5, r4, #2
	b	.L97
.L100:
	ldr	r6, [r8]
.L97:
	ldr	r3, [r6]
	adds	r4, r4, #1
	ldr	r0, [r3, r5]
	adds	r5, r5, #4
	bl	libaroma_window_free(PLT)
	cmp	r4, r7
	bne	.L100
.L93:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_ctl_fragment_destroy._omp_fn.7, .-_libaroma_ctl_fragment_destroy._omp_fn.7
	.section	.text._libaroma_ctl_fragment_window_invalidate._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_window_invalidate._omp_fn.0, %function
_libaroma_ctl_fragment_window_invalidate._omp_fn.0:
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
	bge	.L101
	lsls	r5, r4, #2
	b	.L105
.L108:
	ldr	r6, [r8]
.L105:
	ldr	r3, [r6, #332]
	adds	r4, r4, #1
	movs	r1, #0
	ldr	r0, [r3, r5]
	adds	r5, r5, #4
	bl	libaroma_control_draw(PLT)
	cmp	r4, r7
	bne	.L108
.L101:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_ctl_fragment_window_invalidate._omp_fn.0, .-_libaroma_ctl_fragment_window_invalidate._omp_fn.0
	.section	.text._libaroma_ctl_fragment_measure._omp_fn.1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_measure._omp_fn.1, %function
_libaroma_ctl_fragment_measure._omp_fn.1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r0
	ldr	r5, [r0]
	bl	omp_get_num_threads(PLT)
	ldr	r4, [r5, #328]
	mov	r6, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r6
	mov	r9, r0
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r1, r6
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
	bge	.L109
	lsls	r6, r4, #2
	b	.L113
.L116:
	ldr	r5, [r8]
.L113:
	ldr	r3, [r5, #332]
	adds	r4, r4, #1
	mov	r0, r5
	ldr	r1, [r3, r6]
	adds	r6, r6, #4
	bl	libaroma_window_measure(PLT)
	cmp	r4, r7
	bne	.L116
.L109:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_ctl_fragment_measure._omp_fn.1, .-_libaroma_ctl_fragment_measure._omp_fn.1
	.section	.text._libaroma_ctl_fragment_msg._omp_fn.8,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_msg._omp_fn.8, %function
_libaroma_ctl_fragment_msg._omp_fn.8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r0
	ldr	r6, [r0, #4]
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
	bge	.L117
	lsls	r5, r4, #2
	b	.L121
.L125:
	ldr	r6, [r8, #4]
.L121:
	ldr	r3, [r6, #332]
	ldr	r0, [r3, r5]
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L122
	ldr	r1, [r8]
	blx	r3
.L122:
	adds	r4, r4, #1
	adds	r5, r5, #4
	cmp	r4, r7
	bne	.L125
.L117:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_ctl_fragment_msg._omp_fn.8, .-_libaroma_ctl_fragment_msg._omp_fn.8
	.section	.text._libaroma_ctl_fragment_activate_win._omp_fn.2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_activate_win._omp_fn.2, %function
_libaroma_ctl_fragment_activate_win._omp_fn.2:
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
	bge	.L126
	lsls	r5, r4, #2
	b	.L130
.L134:
	ldr	r6, [r8]
.L130:
	ldr	r3, [r6, #332]
	ldr	r0, [r3, r5]
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L131
	ldr	r1, [r8, #4]
	blx	r3
.L131:
	adds	r4, r4, #1
	adds	r5, r5, #4
	cmp	r4, r7
	bne	.L134
.L126:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_ctl_fragment_activate_win._omp_fn.2, .-_libaroma_ctl_fragment_activate_win._omp_fn.2
	.section	.text._libaroma_ctl_fragment_activate_win._omp_fn.3,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_activate_win._omp_fn.3, %function
_libaroma_ctl_fragment_activate_win._omp_fn.3:
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
	bge	.L135
	lsls	r5, r4, #2
	b	.L139
.L143:
	ldr	r6, [r8]
.L139:
	ldr	r3, [r6, #332]
	ldr	r0, [r3, r5]
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L140
	ldr	r1, [r8, #4]
	blx	r3
.L140:
	adds	r4, r4, #1
	adds	r5, r5, #4
	cmp	r4, r7
	bne	.L143
.L135:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_ctl_fragment_activate_win._omp_fn.3, .-_libaroma_ctl_fragment_activate_win._omp_fn.3
	.section	.text._libaroma_ctl_fragment_thread._omp_fn.6,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_thread._omp_fn.6, %function
_libaroma_ctl_fragment_thread._omp_fn.6:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r7, r0
	ldr	r5, [r0, #4]
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
	bge	.L144
	lsls	r6, r4, #2
	mov	r9, #1
	b	.L148
.L150:
	adds	r4, r4, #1
	adds	r6, r6, #4
	cmp	r4, r8
	beq	.L144
.L159:
	ldr	r5, [r7, #4]
.L148:
	ldr	r3, [r5, #332]
	ldr	r5, [r3, r6]
	ldr	r3, [r5, #72]
	mov	r0, r5
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L150
	blx	r3
	cmp	r0, #0
	beq	.L150
	mov	r0, r5
	movs	r1, #0
	bl	libaroma_control_draw(PLT)
	cmp	r0, #0
	beq	.L150
	ldr	r3, [r7]
	adds	r4, r4, #1
	cmp	r4, r8
	add	r6, r6, #4
	strb	r9, [r3]
	bne	.L159
.L144:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_ctl_fragment_thread._omp_fn.6, .-_libaroma_ctl_fragment_thread._omp_fn.6
	.section	.text._libaroma_ctl_fragment_thread._omp_fn.5,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_thread._omp_fn.5, %function
_libaroma_ctl_fragment_thread._omp_fn.5:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r6, [r0]
	mov	r10, r0
	bl	omp_get_num_threads(PLT)
	ldr	r7, [r6, #4]
	mov	r5, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r5
	mov	r4, r0
	mov	r0, r7
	bl	__aeabi_idiv(PLT)
	mov	r1, r5
	mov	fp, r0
	mov	r0, r7
	bl	__aeabi_idivmod(PLT)
	cmp	r4, r1
	itt	lt
	addlt	fp, fp, #1
	movlt	r1, #0
	mla	r4, r4, fp, r1
	add	fp, fp, r4
	cmp	r4, fp
	bge	.L160
	ldr	r9, .L172
	lsls	r5, r4, #2
	add	r8, r10, #4
.LPIC13:
	add	r9, pc
	b	.L164
.L165:
	adds	r4, r4, #1
	adds	r5, r5, #4
	cmp	r4, fp
	beq	.L160
.L171:
	ldr	r6, [r10]
.L164:
	ldr	r3, [r6]
	ldr	r3, [r3, r5]
	ldr	r2, [r3, #360]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L165
	ldrb	r2, [r3, #60]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L165
	mov	r1, sp
	movs	r2, #0
	mov	r0, r9
	str	r3, [sp, #4]
	str	r8, [sp]
	adds	r4, r4, #1
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	adds	r5, r5, #4
	bl	_libaroma_ctl_fragment_thread._omp_fn.6(PLT)
	bl	GOMP_parallel_end(PLT)
	cmp	r4, fp
	bne	.L171
.L160:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L173:
	.align	2
.L172:
	.word	_libaroma_ctl_fragment_thread._omp_fn.6-(.LPIC13+4)
	.size	_libaroma_ctl_fragment_thread._omp_fn.5, .-_libaroma_ctl_fragment_thread._omp_fn.5
	.section	.text._libaroma_ctl_fragment_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_destroy
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_destroy, %function
_libaroma_ctl_fragment_destroy:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L180
	ldr	r3, [r0, #72]
.LPIC14:
	add	r2, pc
	cmp	r3, r2
	beq	.L179
	bx	lr
.L179:
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, [r0, #4]
	add	r5, r4, #52
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #4]
	cmp	r3, #0
	ble	.L176
	ldr	r0, .L180+4
	movs	r2, #0
	mov	r1, sp
	add	r5, sp, #8
	str	r4, [r5, #-8]!
.LPIC15:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	_libaroma_ctl_fragment_destroy._omp_fn.7(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r4, [sp]
	ldr	r0, [r4]
	add	r5, r4, #52
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r4]
	str	r3, [r4, #4]
.L176:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	bl	omp_destroy_nest_lock(PLT)
	add	r0, r4, #64
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r4
	bl	free(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L181:
	.align	2
.L180:
	.word	.LANCHOR0-(.LPIC14+4)
	.word	_libaroma_ctl_fragment_destroy._omp_fn.7-(.LPIC15+4)
	.size	_libaroma_ctl_fragment_destroy, .-_libaroma_ctl_fragment_destroy
	.section	.text._libaroma_ctl_fragment_window_invalidate,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_window_invalidate
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_window_invalidate, %function
_libaroma_ctl_fragment_window_invalidate:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r0, [r0, #360]
	sub	sp, sp, #44
	cbz	r0, .L183
	ldr	r3, [r0, #8]
	mov	r6, r1
	ldr	r1, .L203
	ldr	r2, [r3, #72]
.LPIC16:
	add	r1, pc
	cmp	r2, r1
	beq	.L202
.L193:
	movs	r0, #0
.L183:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L202:
	ldr	r3, [r3, #4]
	ldr	r5, [r3, #4]
	cmp	r5, #0
	ble	.L193
	ldr	r2, [r3]
	ldr	r3, [r2]
	cmp	r4, r3
	beq	.L184
	movs	r3, #0
.L185:
	adds	r3, r3, #1
	cmp	r3, r5
	beq	.L193
	ldr	r0, [r2, #4]!
	cmp	r4, r0
	bne	.L185
	adds	r3, r3, #1
	beq	.L193
.L184:
	ldr	r0, [r4, #320]
	cbz	r0, .L188
	ldr	lr, [r4, #324]
	cmp	lr, #0
	beq	.L188
	movs	r5, #0
	mov	ip, #255
	str	r5, [sp]
	mov	r1, lr
	str	r5, [sp, #4]
	mov	r3, r5
	ldr	r7, [lr]
	mov	r2, r5
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	ip, [sp, #20]
	str	r5, [sp, #16]
	str	r7, [sp, #12]
	add	r7, sp, #40
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r0, .L203+4
	mov	r2, r5
	str	r4, [r7, #-4]!
	mov	r1, r7
.LPIC17:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, r7
	bl	_libaroma_ctl_fragment_window_invalidate._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r4, [sp, #36]
.L188:
	movs	r0, #1
	cmp	r6, #0
	beq	.L183
	ldr	r5, [r4, #24]
	movs	r1, #0
	ldr	r3, [r4, #20]
	mov	r0, r4
	mov	r2, r1
	str	r5, [sp]
	bl	_libaroma_ctl_fragment_window_sync(PLT)
	b	.L183
.L204:
	.align	2
.L203:
	.word	.LANCHOR0-(.LPIC16+4)
	.word	_libaroma_ctl_fragment_window_invalidate._omp_fn.0-(.LPIC17+4)
	.size	_libaroma_ctl_fragment_window_invalidate, .-_libaroma_ctl_fragment_window_invalidate
	.section	.text._libaroma_ctl_fragment_draw._omp_fn.4,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_draw._omp_fn.4, %function
_libaroma_ctl_fragment_draw._omp_fn.4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r0
	ldr	r6, [r0]
	bl	omp_get_num_threads(PLT)
	ldr	r4, [r6, #4]
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
	bge	.L205
	lsls	r5, r4, #2
	b	.L209
.L210:
	adds	r4, r4, #1
	adds	r5, r5, #4
	cmp	r4, r7
	beq	.L205
.L213:
	ldr	r6, [r8]
.L209:
	ldr	r3, [r6]
	ldr	r0, [r3, r5]
	ldr	r2, [r0, #360]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L210
	ldrb	r1, [r0, #60]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L210
	adds	r4, r4, #1
	adds	r5, r5, #4
	bl	_libaroma_ctl_fragment_window_invalidate(PLT)
	cmp	r4, r7
	bne	.L213
.L205:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_ctl_fragment_draw._omp_fn.4, .-_libaroma_ctl_fragment_draw._omp_fn.4
	.section	.text._libaroma_ctl_fragment_get_win_index,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_get_win_index
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_get_win_index, %function
_libaroma_ctl_fragment_get_win_index:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	ldr	r4, [r0, #4]
	cmp	r4, #0
	ble	.L218
	ldr	r3, [r0]
	movs	r0, #0
	ldr	r2, [r3]
	cmp	r2, r1
	bne	.L216
	b	.L215
.L217:
	ldr	r2, [r3, #4]!
	cmp	r2, r1
	beq	.L215
.L216:
	adds	r0, r0, #1
	cmp	r0, r4
	bne	.L217
.L218:
	mov	r0, #-1
.L215:
	ldr	r4, [sp], #4
	bx	lr
	.size	_libaroma_ctl_fragment_get_win_index, .-_libaroma_ctl_fragment_get_win_index
	.section	.text._libaroma_ctl_fragment_direct_canvas,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_direct_canvas
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_direct_canvas, %function
_libaroma_ctl_fragment_direct_canvas:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r5, .L242
	sub	sp, sp, #40
	ldr	r0, [r0, #72]
.LPIC18:
	add	r5, pc
	cmp	r0, r5
	it	ne
	movne	r0, #0
	beq	.L239
.L223:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L239:
	ldr	r5, [r4, #4]
	mov	r6, r1
	add	r7, r5, #64
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.L224
	ldr	r3, [r5, #8]
	adds	r2, r3, #1
	beq	.L224
	ldr	r2, [r5]
	ldr	r8, [r2, r3, lsl #2]
	cbnz	r6, .L240
	ldrb	r3, [r5, #49]	@ zero_extendqisi2
	cbnz	r3, .L241
.L229:
	movs	r3, #0
	strb	r3, [r5, #49]
.L228:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	b	.L223
.L240:
	movs	r3, #1
	strb	r3, [r5, #49]
	b	.L228
.L224:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	b	.L223
.L241:
	mov	r0, r4
	bl	libaroma_control_draw_begin(PLT)
	mov	lr, r0
	str	r0, [sp, #32]
	cmp	r0, #0
	beq	.L229
	ldr	r0, [r8, #320]
	mov	ip, #255
	str	r6, [sp]
	mov	r1, lr
	str	r6, [sp, #4]
	mov	r2, r6
	ldr	r4, [lr]
	mov	r3, r6
	str	r4, [sp, #8]
	ldr	r4, [lr, #4]
	str	r6, [sp, #16]
	str	r6, [sp, #24]
	str	r4, [sp, #12]
	str	r6, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	mov	r1, r6
	add	r0, sp, #32
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L229
.L243:
	.align	2
.L242:
	.word	.LANCHOR0-(.LPIC18+4)
	.size	_libaroma_ctl_fragment_direct_canvas, .-_libaroma_ctl_fragment_direct_canvas
	.section	.text._libaroma_ctl_fragment_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_draw, %function
_libaroma_ctl_fragment_draw:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L282+4
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
.LPIC19:
	add	r2, pc
	sub	sp, sp, #44
	cmp	r3, r2
	beq	.L278
.L244:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L278:
	ldr	r9, [r0, #4]
	mov	r5, r1
	add	r6, r9, #52
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r9, #4]
	cmp	r3, #0
	ble	.L246
	ldr	r3, [r9, #8]
	adds	r3, r3, #1
	beq	.L246
	ldrb	r2, [r9, #48]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L279
.L248:
	add	r8, r9, #64
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldrb	r7, [r9, #49]	@ zero_extendqisi2
	cbnz	r7, .L250
	ldr	r3, [r9, #12]
	adds	r2, r3, #1
	beq	.L280
	flds	s0, [r9, #28]
	fconsts	s15, #112
	ldr	r2, [r9]
	ldr	r1, [r9, #8]
	fcmps	s0, s15
	fmstat
	ldr	r3, [r2, r3, lsl #2]
	ldr	r10, [r2, r1, lsl #2]
	bne	.L253
	ldr	ip, [r10, #320]
	cmp	ip, #0
	beq	.L254
	str	r7, [sp]
	mov	r0, r5
	str	r7, [sp, #4]
	mov	lr, #255
	ldr	r5, [ip]
	mov	r2, r7
	mov	r1, ip
	mov	r3, r7
	str	r5, [sp, #8]
	ldr	r5, [ip, #4]
	str	r7, [sp, #16]
	str	r7, [sp, #24]
	str	r5, [sp, #12]
	str	r7, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L255:
	movs	r3, #0
	str	r3, [r9, #28]	@ float
.L250:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	ldrb	r3, [r9, #50]	@ zero_extendqisi2
	cbnz	r3, .L281
.L261:
	movs	r3, #0
	mov	r0, r6
	strb	r3, [r9, #48]
	bl	omp_unset_nest_lock(PLT)
	b	.L244
.L246:
	mov	r0, r4
	mov	r1, r5
	bl	libaroma_control_erasebg(PLT)
	movs	r3, #0
	mov	r0, r6
	strb	r3, [r9, #48]
	bl	omp_unset_nest_lock(PLT)
	b	.L244
.L279:
	ldr	r0, .L282+8
	add	r6, sp, #40
	str	r9, [r6, #-8]!
	mov	r1, r6
.LPIC20:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, r6
	bl	_libaroma_ctl_fragment_draw._omp_fn.4(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r9, [sp, #32]
	add	r6, r9, #52
	b	.L248
.L281:
	movs	r3, #0
	mov	r0, r4
	strb	r3, [r9, #50]
	movs	r1, #1
	bl	_libaroma_ctl_fragment_direct_canvas(PLT)
	b	.L261
.L253:
	ldr	r7, [r9, #36]
	ldr	lr, [r3, #320]
	cmp	r7, #0
	beq	.L256
	cmp	lr, #0
	beq	.L257
	ldr	r2, [r10, #320]
	cbz	r2, .L258
	mov	r0, r5
	ldr	r5, [r9, #44]
	ldr	r3, [r9, #40]
	mov	r1, lr
	str	r5, [sp]
	blx	r7
	b	.L250
.L280:
	ldr	r2, [r9, #8]
	ldr	r3, [r9]
	ldr	r3, [r3, r2, lsl #2]
	ldr	ip, [r3, #320]
	cmp	ip, #0
	beq	.L252
	str	r7, [sp]
	mov	r0, r5
	str	r7, [sp, #4]
	mov	r10, #255
	ldr	r5, [ip]
	mov	r2, r7
	mov	r1, ip
	mov	r3, r7
	str	r5, [sp, #8]
	ldr	r5, [ip, #4]
	str	r7, [sp, #16]
	str	r7, [sp, #24]
	str	r5, [sp, #12]
	str	r7, [sp, #28]
	str	r10, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L250
.L258:
	mov	ip, #0
	mov	fp, #255
	str	ip, [sp]
	mov	r2, ip
	str	ip, [sp, #4]
	mov	r1, lr
	ldr	r7, [lr]
	mov	r3, ip
	mov	r0, r5
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	ip, [sp, #16]
	str	ip, [sp, #24]
	str	r7, [sp, #12]
	str	ip, [sp, #28]
	str	fp, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L259:
	ldr	lr, [r10, #320]
	cmp	lr, #0
	beq	.L250
	movs	r7, #0
	mov	r0, r5
	str	r7, [sp]
	mov	r2, r7
	str	r7, [sp, #4]
	mov	r1, lr
	ldr	r5, [lr]
	mov	r3, r7
	flds	s15, .L282
	str	r5, [sp, #8]
	ldr	r5, [lr, #4]
	str	r7, [sp, #16]
	str	r5, [sp, #12]
	flds	s14, [r9, #28]
	str	r7, [sp, #24]
	str	r7, [sp, #28]
	fmuls	s15, s14, s15
	ftouizs	s15, s15
	fmrs	r5, s15	@ int
	uxtb	r5, r5
	str	r5, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L250
.L256:
	cmp	lr, #0
	bne	.L258
.L257:
	mov	r0, r4
	mov	r1, r5
	bl	libaroma_control_erasebg(PLT)
	b	.L259
.L254:
	mov	r1, r5
	mov	r0, r4
	bl	libaroma_control_erasebg(PLT)
	b	.L255
.L252:
	mov	r1, r5
	mov	r0, r4
	bl	libaroma_control_erasebg(PLT)
	b	.L250
.L283:
	.align	2
.L282:
	.word	1132396544
	.word	.LANCHOR0-(.LPIC19+4)
	.word	_libaroma_ctl_fragment_draw._omp_fn.4-(.LPIC20+4)
	.size	_libaroma_ctl_fragment_draw, .-_libaroma_ctl_fragment_draw
	.section	.text._libaroma_ctl_fragment_measure,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_measure
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_measure, %function
_libaroma_ctl_fragment_measure:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #360]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #20
	cbz	r3, .L284
	ldr	r5, [r3, #8]
	ldr	r2, .L304
	ldr	r3, [r5, #72]
.LPIC21:
	add	r2, pc
	cmp	r3, r2
	beq	.L303
.L284:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L303:
	ldr	r0, [r5, #4]
	ldr	r6, [r0, #4]
	cmp	r6, #0
	ble	.L284
	ldr	r2, [r0]
	ldr	r3, [r2]
	cmp	r4, r3
	beq	.L286
	movs	r3, #0
.L287:
	adds	r3, r3, #1
	cmp	r3, r6
	beq	.L284
	ldr	r1, [r2, #4]!
	cmp	r4, r1
	bne	.L287
	adds	r3, r3, #1
	beq	.L284
.L286:
	add	r6, r0, #64
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [r5, #20]
	movs	r2, #0
	ldr	r3, [r4, #320]
	ldr	r7, [r5, #16]
	ldr	r0, [r5, #24]
	str	r1, [r4, #8]
	ldr	r1, [r5, #28]
	str	r7, [r4, #4]
	str	r0, [r4, #20]
	str	r1, [r4, #24]
	str	r2, [r4, #12]
	str	r2, [r4, #16]
	cbz	r3, .L290
	ldr	r2, [r3]
	cmp	r0, r2
	bne	.L291
	ldr	r3, [r3, #4]
	cmp	r1, r3
	beq	.L292
.L291:
	add	r0, r4, #320
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [r4, #20]
	movs	r3, #0
	ldr	r1, [r4, #24]
	str	r3, [r4, #320]
.L290:
	movs	r3, #0
	mov	r2, r3
	str	r3, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r4, #320]
.L292:
	mov	r0, r6
	add	r5, sp, #16
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	bl	_libaroma_ctl_fragment_window_updatebg(PLT)
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r0, .L304+4
	movs	r2, #0
	str	r4, [r5, #-4]!
	mov	r1, r5
.LPIC22:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, r5
	bl	_libaroma_ctl_fragment_measure._omp_fn.1(PLT)
	bl	GOMP_parallel_end(PLT)
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L305:
	.align	2
.L304:
	.word	.LANCHOR0-(.LPIC21+4)
	.word	_libaroma_ctl_fragment_measure._omp_fn.1-(.LPIC22+4)
	.size	_libaroma_ctl_fragment_measure, .-_libaroma_ctl_fragment_measure
	.section	.text._libaroma_ctl_fragment_msg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_msg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_msg, %function
_libaroma_ctl_fragment_msg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L371
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
.LPIC23:
	add	r2, pc
	sub	sp, sp, #20
	cmp	r3, r2
	beq	.L364
.L335:
	movs	r0, #0
.L307:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L364:
	ldrb	r3, [r1]	@ zero_extendqisi2
	mov	r6, r1
	ldr	r5, [r0, #4]
	cmp	r3, #130
	bls	.L365
	cmp	r3, #132
	beq	.L310
	cmp	r3, #133
	bne	.L335
	add	r6, r5, #52
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r2, [r5, #4]
	cmp	r2, #0
	it	gt
	movgt	r4, #0
	bgt	.L320
.L319:
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	b	.L307
.L365:
	cmp	r3, #129
	bcs	.L310
	cmp	r3, #6
	bne	.L335
	add	r7, r5, #52
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.L363
	ldr	r3, [r5, #8]
	adds	r2, r3, #1
	beq	.L363
	ldr	r2, [r5, #12]
	ldr	r1, [r5]
	adds	r2, r2, #1
	ldr	r8, [r1, r3, lsl #2]
	beq	.L324
	movs	r3, #1
	mov	r0, r7
	strb	r3, [r5, #16]
	bl	omp_unset_nest_lock(PLT)
	b	.L335
.L369:
	bl	_libaroma_ctl_fragment_measure(PLT)
	ldr	r2, [r5, #4]
.L318:
	cmp	r4, r2
	bge	.L319
.L320:
	ldr	r3, [r5]
	ldr	r0, [r3, r4, lsl #2]
	adds	r4, r4, #1
	ldr	r3, [r0, #360]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L318
	b	.L369
.L310:
	add	r9, r5, #52
	ldr	r8, .L371+4
	mov	r0, r9
	movs	r4, #0
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [r5, #4]
.LPIC24:
	add	r8, pc
	add	r7, sp, #8
	cmp	r1, #0
	bgt	.L316
.L315:
	mov	r0, r9
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	b	.L307
.L370:
	mov	r1, r7
	movs	r2, #0
	mov	r0, r8
	str	r3, [sp, #12]
	str	r6, [sp, #8]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r7
	bl	_libaroma_ctl_fragment_msg._omp_fn.8(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r6, [sp, #8]
	ldr	r1, [r5, #4]
.L314:
	cmp	r4, r1
	bge	.L315
.L316:
	ldr	r3, [r5]
	ldr	r3, [r3, r4, lsl #2]
	adds	r4, r4, #1
	ldr	r2, [r3, #360]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L314
	b	.L370
.L363:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	b	.L335
.L324:
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L325
	ldrb	r3, [r5, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L363
.L325:
	mov	r9, #0
	mov	r1, r4
	strb	r9, [r5, #16]
	mov	r2, sp
	ldr	r5, [r6, #12]
	add	r3, sp, #8
	ldr	r4, [r6, #8]
	mov	r0, r9
	str	r5, [sp, #8]
	str	r4, [sp]
	bl	libaroma_window_calculate_pos(PLT)
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	ldr	r1, [sp]
	ldr	r2, [sp, #8]
	cmp	r3, #1
	str	r1, [r6, #8]
	str	r2, [r6, #12]
	beq	.L368
	ldr	r0, [r8, #340]
	cmp	r0, #0
	beq	.L333
	ldr	r2, [r0, #72]
	ldr	r4, [r2]
	cbz	r4, .L334
	mov	r1, r6
	blx	r4
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	mov	r4, r0
.L334:
	cbnz	r3, .L328
	str	r3, [r8, #340]
.L328:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	b	.L307
.L368:
	ldr	r3, [r8, #328]
	str	r9, [r8, #340]
	cmp	r3, r9
	it	gt
	movgt	r4, r9
	bgt	.L332
	b	.L333
.L329:
	ldr	r3, [r8, #328]
	cmp	r4, r3
	bge	.L331
	ldr	r1, [sp]
	ldr	r2, [sp, #8]
.L332:
	ldr	r3, [r8, #332]
	lsls	r5, r4, #2
	ldr	r0, [r3, r4, lsl #2]
	adds	r4, r4, #1
	bl	_libaroma_window_is_inside(PLT)
	cmp	r0, #0
	beq	.L329
	ldr	r3, [r8, #332]
	ldr	r0, [r3, r5]
	str	r0, [r8, #340]
.L330:
	cbz	r0, .L333
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L333
	mov	r1, r6
	blx	r3
	mov	r4, r0
	b	.L328
.L333:
	movs	r4, #0
	b	.L328
.L331:
	ldr	r0, [r8, #340]
	b	.L330
.L372:
	.align	2
.L371:
	.word	.LANCHOR0-(.LPIC23+4)
	.word	_libaroma_ctl_fragment_msg._omp_fn.8-(.LPIC24+4)
	.size	_libaroma_ctl_fragment_msg, .-_libaroma_ctl_fragment_msg
	.section	.text._libaroma_ctl_fragment_activate_win,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_activate_win
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_activate_win, %function
_libaroma_ctl_fragment_activate_win:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r0, [r0, #360]
	sub	sp, sp, #48
	cbz	r0, .L373
	ldr	r4, [r0, #8]
	ldr	r7, .L396
	ldr	r6, [r4, #72]
.LPIC25:
	add	r7, pc
	cmp	r6, r7
	beq	.L393
.L373:
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L393:
	ldr	r2, [r4, #4]
	ldr	r3, [r2, #4]
	cmp	r3, #0
	ble	.L373
	ldr	r6, [r2]
	mov	r8, r1
	ldr	r2, [r6]
	cmp	r5, r2
	beq	.L375
	movs	r4, #0
.L376:
	adds	r4, r4, #1
	cmp	r4, r3
	beq	.L373
	ldr	r7, [r6, #4]!
	cmp	r5, r7
	bne	.L376
	adds	r4, r4, #1
	beq	.L373
.L375:
	ldrb	r3, [r5, #60]	@ zero_extendqisi2
	cmp	r8, #0
	beq	.L394
	cmp	r3, #0
	bne	.L373
	movs	r3, #1
	strb	r3, [r0, #4]
	ldr	r3, [r5, #320]
	cmp	r3, #0
	beq	.L395
.L381:
	movs	r4, #0
	add	r6, sp, #24
	str	r4, [sp]
	mov	r2, r4
	mov	r3, r4
	mov	r0, r6
	movs	r1, #129
	bl	libaroma_wm_compose(PLT)
	ldr	r0, .L396+4
	movs	r3, #1
	mov	r2, r4
	add	r4, sp, #16
	strb	r3, [r5, #60]
	mov	r1, r4
.LPIC27:
	add	r0, pc
	str	r6, [sp, #20]
	str	r5, [sp, #16]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r4
	bl	_libaroma_ctl_fragment_activate_win._omp_fn.3(PLT)
	bl	GOMP_parallel_end(PLT)
	b	.L373
.L394:
	cmp	r3, #0
	beq	.L373
	add	r4, sp, #24
	strb	r8, [r0, #4]
	mov	r3, r8
	mov	r2, r8
	mov	r0, r4
	str	r8, [sp]
	movs	r1, #130
	add	r6, sp, #8
	bl	libaroma_wm_compose(PLT)
	ldr	r0, .L396+8
	mov	r2, r8
	mov	r1, r6
	strb	r8, [r5, #60]
	str	r4, [sp, #12]
.LPIC26:
	add	r0, pc
	str	r5, [sp, #8]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r6
	bl	_libaroma_ctl_fragment_activate_win._omp_fn.2(PLT)
	bl	GOMP_parallel_end(PLT)
	b	.L373
.L395:
	mov	r0, r5
	bl	_libaroma_ctl_fragment_measure(PLT)
	b	.L381
.L397:
	.align	2
.L396:
	.word	.LANCHOR0-(.LPIC25+4)
	.word	_libaroma_ctl_fragment_activate_win._omp_fn.3-(.LPIC27+4)
	.word	_libaroma_ctl_fragment_activate_win._omp_fn.2-(.LPIC26+4)
	.size	_libaroma_ctl_fragment_activate_win, .-_libaroma_ctl_fragment_activate_win
	.section	.text.libaroma_ctl_fragment,"ax",%progbits
	.align	2
	.global	libaroma_ctl_fragment
	.thumb
	.thumb_func
	.type	libaroma_ctl_fragment, %function
libaroma_ctl_fragment:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	ldr	r7, [sp, #76]
	mov	r6, r0
	ldr	r9, [sp, #72]
	str	r7, [sp, #28]
	cmp	r0, #0
	beq	.L400
	mov	r8, r1
	movs	r0, #80
	movs	r1, #1
	mov	fp, r2
	mov	r10, r3
	bl	calloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L400
	mov	r5, #-1
	movs	r7, #0
	movs	r3, #1
	str	r5, [r0, #12]
	str	r5, [r0, #8]
	movs	r0, #48
	str	r5, [r4, #76]
	str	r7, [r4]
	strb	r3, [r4, #49]
	bl	libaroma_dp(PLT)
	ldr	r5, .L408
	mov	r3, r0
	movs	r0, #48
	str	r3, [sp, #24]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #24]
.LPIC28:
	add	r5, pc
	str	r7, [sp, #20]
	mov	r1, fp
	ldr	r7, [sp, #28]
	mov	r2, r10
	str	r3, [sp, #4]
	mov	r3, r9
	str	r0, [sp, #8]
	mov	r0, r8
	str	r5, [sp, #16]
	str	r7, [sp]
	str	r4, [sp, #12]
	bl	libaroma_control_new(PLT)
	mov	r5, r0
	cbz	r0, .L407
	add	r0, r4, #52
	bl	omp_init_nest_lock(PLT)
	add	r0, r4, #64
	bl	omp_init_nest_lock(PLT)
	mov	r0, r6
	mov	r1, r5
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	libaroma_window_attach(PLT)
.L407:
	mov	r0, r4
	bl	free(PLT)
.L400:
	movs	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L409:
	.align	2
.L408:
	.word	.LANCHOR0-(.LPIC28+4)
	.size	libaroma_ctl_fragment, .-libaroma_ctl_fragment
	.section	.text.libaroma_ctl_fragment_new_window,"ax",%progbits
	.align	2
	.global	libaroma_ctl_fragment_new_window
	.thumb
	.thumb_func
	.type	libaroma_ctl_fragment_new_window, %function
libaroma_ctl_fragment_new_window:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L435
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	ldr	r3, [r0, #72]
.LPIC29:
	add	r2, pc
	cmp	r3, r2
	bne	.L433
	ldr	r3, [r0, #8]
	ldr	r9, [r0, #4]
	cmp	r3, #0
	beq	.L433
	add	r7, r9, #52
	mov	r5, r1
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r6, [r9, #4]
	cmp	r6, #0
	beq	.L414
	ldr	r0, [r9]
	ble	.L416
	ldr	r3, [r0]
	ldr	r3, [r3, #360]
	ldr	r3, [r3]
	cmp	r3, r5
	beq	.L433
	mov	r2, r0
	movs	r3, #0
	b	.L417
.L421:
	ldr	r4, [r2, #4]!
	ldr	r4, [r4, #360]
	ldr	r4, [r4]
	cmp	r4, r5
	beq	.L433
.L417:
	adds	r3, r3, #1
	cmp	r3, r6
	bne	.L421
.L416:
	adds	r6, r6, #1
	lsls	r6, r6, #2
	mov	r1, r6
	bl	realloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L425
	ldr	r10, [r9, #4]
	movs	r1, #1
	subs	r6, r6, #4
	str	r0, [r9]
	mov	r0, #364
	add	fp, r10, r1
	str	fp, [r9, #4]
	bl	calloc(PLT)
	str	r0, [r4, r6]
	ldr	r0, [r9]
	ldr	r4, [r0, r6]
	cmp	r4, #0
	beq	.L434
.L420:
	ldr	r2, .L435+4
	movs	r1, #1
	ldr	r3, [r8, #8]
	movs	r0, #12
.LPIC30:
	add	r2, pc
	str	r2, [r4, #356]
	str	r3, [r4, #352]
	bl	calloc(PLT)
	movs	r2, #0
	mov	r3, r0
	str	r5, [r3]
	mov	r0, r7
	str	r8, [r3, #8]
	strb	r2, [r3, #4]
	str	r3, [r4, #360]
	bl	omp_unset_nest_lock(PLT)
	ldr	r3, [r9]
	ldr	r0, [r3, r6]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L414:
	movs	r0, #4
	movs	r1, #1
	bl	calloc(PLT)
	mov	r4, r0
	str	r0, [r9]
	cbz	r0, .L425
	movs	r1, #1
	mov	r0, #364
	str	r1, [r9, #4]
	bl	calloc(PLT)
	str	r0, [r4]
	ldr	r0, [r9]
	ldr	r4, [r0]
	cmp	r4, #0
	bne	.L420
.L419:
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r9, #4]
	str	r3, [r9]
.L425:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
.L433:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L434:
	cmp	fp, #1
	beq	.L419
	lsl	r1, r10, #2
	bl	realloc(PLT)
	ldr	r3, [r9, #4]
	str	r0, [r9]
	subs	r3, r3, #1
	str	r3, [r9, #4]
	b	.L425
.L436:
	.align	2
.L435:
	.word	.LANCHOR0-(.LPIC29+4)
	.word	.LANCHOR1-(.LPIC30+4)
	.size	libaroma_ctl_fragment_new_window, .-libaroma_ctl_fragment_new_window
	.section	.text.libaroma_ctl_fragment_get_window,"ax",%progbits
	.align	2
	.global	libaroma_ctl_fragment_get_window
	.thumb
	.thumb_func
	.type	libaroma_ctl_fragment_get_window, %function
libaroma_ctl_fragment_get_window:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L452
	ldr	r3, [r0, #72]
.LPIC31:
	add	r2, pc
	cmp	r3, r2
	beq	.L449
	movs	r0, #0
	bx	lr
.L449:
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r1
	ldr	r7, [r0, #4]
	add	r8, r7, #52
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [r7, #4]
	cmp	r1, #0
	ble	.L439
	ldr	r2, [r7]
	ldr	r3, [r2]
	ldr	r3, [r3, #360]
	ldr	r3, [r3]
	cmp	r3, r5
	it	ne
	movne	r3, #0
	bne	.L442
	b	.L451
.L443:
	ldr	r4, [r2, #4]!
	ldr	r4, [r4, #360]
	ldr	r4, [r4]
	cmp	r4, r5
	beq	.L440
.L442:
	adds	r3, r3, #1
	cmp	r3, r1
	lsl	r6, r3, #2
	bne	.L443
.L439:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L451:
	movs	r6, #0
.L440:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	ldr	r3, [r7]
	ldr	r0, [r3, r6]
	pop	{r4, r5, r6, r7, r8, pc}
.L453:
	.align	2
.L452:
	.word	.LANCHOR0-(.LPIC31+4)
	.size	libaroma_ctl_fragment_get_window, .-libaroma_ctl_fragment_get_window
	.section	.text.libaroma_ctl_fragment_del_window_nomutex,"ax",%progbits
	.align	2
	.global	libaroma_ctl_fragment_del_window_nomutex
	.thumb
	.thumb_func
	.type	libaroma_ctl_fragment_del_window_nomutex, %function
libaroma_ctl_fragment_del_window_nomutex:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L480
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r3, [r0, #72]
.LPIC32:
	add	r2, pc
	cmp	r3, r2
	beq	.L477
.L456:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L477:
	ldr	r6, [r0, #4]
	mov	r7, r1
	ldr	r3, [r6, #12]
	adds	r3, r3, #1
	beq	.L460
.L461:
	mov	r0, #16000
	bl	usleep(PLT)
	ldr	r3, [r6, #12]
	adds	r3, r3, #1
	bne	.L461
.L460:
	ldr	r8, [r6, #4]
	cmp	r8, #0
	ble	.L456
	ldr	r9, [r6]
	ldr	r5, [r9]
	ldr	r3, [r5, #360]
	ldr	r3, [r3]
	cmp	r7, r3
	beq	.L470
	mov	r3, r9
	movs	r4, #0
.L463:
	adds	r4, r4, #1
	cmp	r4, r8
	beq	.L456
	ldr	r5, [r3, #4]!
	ldr	r2, [r5, #360]
	ldr	r2, [r2]
	cmp	r7, r2
	bne	.L463
.L462:
	ldr	r3, [r6, #8]
	cmp	r3, r4
	beq	.L456
	subs	r10, r8, #1
	beq	.L478
	movs	r0, #4
	mov	r1, r10
	bl	calloc(PLT)
	movs	r2, #0
	mov	fp, r0
	mov	r3, r2
	b	.L469
.L479:
	ldr	r9, [r6]
.L469:
	cmp	r4, r3
	add	r7, r2, #1
	it	ne
	ldrne	r1, [r9, r3, lsl #2]
	add	r3, r3, #1
	ite	eq
	moveq	r7, r2
	strne	r1, [fp, r2, lsl #2]
	cmp	r3, r8
	mov	r2, r7
	bne	.L479
	ldr	r0, [r6]
	bl	free(PLT)
	str	fp, [r6]
	str	r10, [r6, #4]
.L466:
	mov	r0, r5
	bl	libaroma_window_free(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L478:
	mov	r0, r9
	bl	free(PLT)
	str	r10, [r6]
	str	r10, [r6, #4]
	b	.L466
.L470:
	movs	r4, #0
	b	.L462
.L481:
	.align	2
.L480:
	.word	.LANCHOR0-(.LPIC32+4)
	.size	libaroma_ctl_fragment_del_window_nomutex, .-libaroma_ctl_fragment_del_window_nomutex
	.section	.text._libaroma_ctl_fragment_thread,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_fragment_thread
	.thumb
	.thumb_func
	.type	_libaroma_ctl_fragment_thread, %function
_libaroma_ctl_fragment_thread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L507
	ldr	r3, [r0, #72]
	push	{r4, r5, lr}
	mov	r4, r0
.LPIC33:
	add	r2, pc
	sub	sp, sp, #12
	cmp	r3, r2
	beq	.L506
.L491:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L506:
	ldr	r5, [r0, #4]
	ldr	r3, [r5, #4]
	cmp	r3, #0
	ble	.L491
	ldr	r3, [r5, #8]
	adds	r3, r3, #1
	beq	.L491
	add	r0, r5, #52
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [r5, #76]
	adds	r3, r1, #1
	beq	.L485
	mov	r0, r4
	bl	libaroma_ctl_fragment_del_window_nomutex(PLT)
	mov	r3, #-1
	str	r3, [r5, #76]
.L485:
	ldr	r0, .L507+4
	mov	r1, sp
	ldrb	r3, [r5, #48]	@ zero_extendqisi2
	movs	r2, #0
	str	r5, [sp]
.LPIC34:
	add	r0, pc
	strb	r3, [sp, #4]
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	_libaroma_ctl_fragment_thread._omp_fn.5(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r4, [sp]
	ldrb	r5, [sp, #4]	@ zero_extendqisi2
	ldr	r0, [r4, #20]
	cbz	r0, .L486
	ldr	r2, [r4, #12]
	adds	r2, r2, #1
	beq	.L486
	ldr	r1, [r4, #24]
	bl	libaroma_duration_state(PLT)
	flds	s15, [r4, #28]
	fcmps	s0, s15
	fmstat
	beq	.L486
	fconsts	s15, #112
	fcmpes	s0, s15
	fmstat
	blt	.L504
	ldrb	r3, [r4, #33]	@ zero_extendqisi2
	movs	r2, #1
	movs	r1, #0
	strb	r2, [r4, #50]
	fsts	s15, [r4, #28]
	str	r1, [r4, #20]
	ldr	r2, [r4, #12]
	cbnz	r3, .L489
	ldr	r3, [r4]
	ldr	r0, [r3, r2, lsl #2]
.L490:
	movs	r1, #0
	movs	r5, #1
	bl	_libaroma_ctl_fragment_activate_win(PLT)
	mov	r2, #-1
	movs	r3, #0
	str	r2, [r4, #12]
	strb	r3, [r4, #33]
.L486:
	add	r0, r4, #52
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L489:
	ldr	r3, [r4]
	ldr	r0, [r3, r2, lsl #2]
	ldr	r3, [r0, #360]
	ldr	r3, [r3]
	str	r3, [r4, #76]
	b	.L490
.L504:
	movs	r5, #1
	fsts	s0, [r4, #28]
	b	.L486
.L508:
	.align	2
.L507:
	.word	.LANCHOR0-(.LPIC33+4)
	.word	_libaroma_ctl_fragment_thread._omp_fn.5-(.LPIC34+4)
	.size	_libaroma_ctl_fragment_thread, .-_libaroma_ctl_fragment_thread
	.section	.text.libaroma_ctl_fragment_del_window,"ax",%progbits
	.align	2
	.global	libaroma_ctl_fragment_del_window
	.thumb
	.thumb_func
	.type	libaroma_ctl_fragment_del_window, %function
libaroma_ctl_fragment_del_window:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L514
	ldr	r3, [r0, #72]
	push	{r4, r5, lr}
	mov	r4, r0
.LPIC35:
	add	r2, pc
	sub	sp, sp, #12
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L513
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L513:
	ldr	r5, [r4, #4]
	str	r1, [sp, #4]
	adds	r5, r5, #52
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	mov	r0, r4
	bl	libaroma_ctl_fragment_del_window_nomutex(PLT)
	mov	r4, r0
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L515:
	.align	2
.L514:
	.word	.LANCHOR0-(.LPIC35+4)
	.size	libaroma_ctl_fragment_del_window, .-libaroma_ctl_fragment_del_window
	.section	.text.libaroma_ctl_fragment_set_active_window,"ax",%progbits
	.align	2
	.global	libaroma_ctl_fragment_set_active_window
	.thumb
	.thumb_func
	.type	libaroma_ctl_fragment_set_active_window, %function
libaroma_ctl_fragment_set_active_window:
	@ args = 16, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldr	r4, .L540
	sub	sp, sp, #20
	ldr	r0, [r0, #72]
.LPIC36:
	add	r4, pc
	ldrb	r9, [sp, #56]	@ zero_extendqisi2
	cmp	r0, r4
	it	ne
	movne	r0, #0
	beq	.L539
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L539:
	ldr	fp, [r7, #4]
	mov	r8, r3
	mov	r6, r1
	mov	r10, r2
	ldr	r3, [fp, #12]
	adds	r3, r3, #1
	beq	.L521
.L522:
	mov	r0, #16000
	bl	usleep(PLT)
	ldr	r3, [fp, #12]
	adds	r3, r3, #1
	bne	.L522
.L521:
	add	r2, fp, #52
	mov	r0, r2
	str	r2, [sp, #4]
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [fp, #4]
	cmp	r0, #0
	ble	.L533
	ldr	r1, [fp]
	ldr	r5, [r1]
	ldr	r3, [r5, #360]
	ldr	r3, [r3]
	cmp	r3, r6
	beq	.L531
	movs	r4, #0
	b	.L524
.L526:
	ldr	r5, [r1, #4]!
	ldr	r3, [r5, #360]
	ldr	r3, [r3]
	cmp	r3, r6
	beq	.L525
.L524:
	adds	r4, r4, #1
	cmp	r4, r0
	lsl	ip, r4, #2
	bne	.L526
.L533:
	movs	r4, #0
.L520:
	ldr	r0, [sp, #4]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L525:
	adds	r1, r4, #1
	beq	.L533
.L523:
	ldr	r3, [fp, #8]
	cmp	r3, r4
	beq	.L533
	mov	r0, r5
	movs	r1, #1
	str	ip, [sp]
	bl	_libaroma_ctl_fragment_activate_win(PLT)
	movw	r0, #54464
	movt	r0, 1
	bl	usleep(PLT)
	ldr	r3, [fp, #8]
	adds	r2, r3, #1
	itt	eq
	streq	r3, [fp, #12]
	streq	r4, [fp, #8]
	beq	.L529
	movs	r0, #1
	add	r1, sp, #8
	bl	clock_gettime(PLT)
	ldr	ip, [sp]
	movs	r2, #0
	cbnz	r0, .L528
	ldr	r3, [sp, #12]
	movw	r0, #56963
	movt	r0, 17179
	ldr	r1, [sp, #8]
	mov	lr, #1000
	smull	r6, r0, r0, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r0, asr #18
	mla	r2, lr, r1, r3
.L528:
	ldr	r6, [sp, #60]
	movs	r5, #2
	ldr	r3, [fp]
	mov	r0, r7
	strb	r10, [fp, #32]
	movs	r1, #0
	str	r6, [fp, #36]
	ldr	r6, [sp, #64]
	strb	r9, [fp, #33]
	str	r6, [fp, #40]
	ldr	r6, [sp, #68]
	str	r6, [fp, #44]
	movs	r6, #0
	ldr	r3, [r3, ip]
	str	r2, [fp, #20]
	ldr	r3, [r3, #360]
	str	r8, [fp, #24]
	str	r6, [fp, #28]	@ float
	strb	r5, [r3, #4]
	ldr	r3, [fp, #8]
	str	r4, [fp, #8]
	str	r3, [fp, #12]
	bl	_libaroma_ctl_fragment_direct_canvas(PLT)
.L529:
	movs	r4, #1
	strb	r4, [fp, #48]
	b	.L520
.L531:
	mov	ip, #0
	mov	r4, ip
	b	.L523
.L541:
	.align	2
.L540:
	.word	.LANCHOR0-(.LPIC36+4)
	.size	libaroma_ctl_fragment_set_active_window, .-libaroma_ctl_fragment_set_active_window
	.section	.data.rel._libaroma_ctl_fragment_win_handler,"aw",%progbits
	.align	2
.LANCHOR1 = . + 0
	.type	_libaroma_ctl_fragment_win_handler, %object
	.size	_libaroma_ctl_fragment_win_handler, 40
_libaroma_ctl_fragment_win_handler:
	.word	0
	.word	_libaroma_ctl_fragment_window_postfree
	.word	_libaroma_ctl_fragment_window_updatebg
	.word	_libaroma_ctl_fragment_window_invalidate
	.word	_libaroma_ctl_fragment_window_sync
	.word	0
	.word	0
	.word	0
	.word	_libaroma_ctl_fragment_window_control_isvisible
	.word	_libaroma_ctl_fragment_window_control_draw_begin
	.section	.data.rel._libaroma_ctl_fragment_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_ctl_fragment_handler, %object
	.size	_libaroma_ctl_fragment_handler, 20
_libaroma_ctl_fragment_handler:
	.word	_libaroma_ctl_fragment_msg
	.word	_libaroma_ctl_fragment_draw
	.word	0
	.word	_libaroma_ctl_fragment_destroy
	.word	_libaroma_ctl_fragment_thread
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
