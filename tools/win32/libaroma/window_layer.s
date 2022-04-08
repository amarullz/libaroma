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
	.file	"window_layer.c"
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text._libaroma_window_sidebar_invalidate._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_window_sidebar_invalidate._omp_fn.0, %function
_libaroma_window_sidebar_invalidate._omp_fn.0:
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
	bge	.L1
	lsls	r5, r4, #2
	b	.L5
.L9:
	ldr	r6, [r8]
.L5:
	ldr	r3, [r6, #332]
	adds	r4, r4, #1
	movs	r1, #0
	ldr	r0, [r3, r5]
	adds	r5, r5, #4
	bl	libaroma_control_draw(PLT)
	cmp	r4, r7
	bne	.L9
.L1:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_window_sidebar_invalidate._omp_fn.0, .-_libaroma_window_sidebar_invalidate._omp_fn.0
	.section	.text._libaroma_window_sidebar_ui_thread._omp_fn.1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_window_sidebar_ui_thread._omp_fn.1, %function
_libaroma_window_sidebar_ui_thread._omp_fn.1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r7, r0
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
	bge	.L10
	lsls	r6, r4, #2
	mov	r9, #1
	b	.L14
.L16:
	adds	r4, r4, #1
	adds	r6, r6, #4
	cmp	r4, r8
	beq	.L10
.L25:
	ldr	r5, [r7]
.L14:
	ldr	r3, [r5, #332]
	ldr	r5, [r3, r6]
	ldr	r3, [r5, #72]
	mov	r0, r5
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L16
	blx	r3
	cmp	r0, #0
	beq	.L16
	mov	r0, r5
	movs	r1, #0
	bl	libaroma_control_draw(PLT)
	cmp	r0, #0
	beq	.L16
	adds	r4, r4, #1
	strb	r9, [r7, #4]
	cmp	r4, r8
	add	r6, r6, #4
	bne	.L25
.L10:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	_libaroma_window_sidebar_ui_thread._omp_fn.1, .-_libaroma_window_sidebar_ui_thread._omp_fn.1
	.section	.text._libaroma_window_sidebar_sync,"ax",%progbits
	.align	2
	.global	_libaroma_window_sidebar_sync
	.thumb
	.thumb_func
	.type	_libaroma_window_sidebar_sync, %function
_libaroma_window_sidebar_sync:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L36
	ldr	r3, [r0, #356]
.LPIC0:
	add	r2, pc
	cmp	r3, r2
	beq	.L35
.L29:
	movs	r0, #0
.L27:
	bx	lr
.L35:
	ldr	r0, [r0, #352]
	cmp	r0, #0
	beq	.L27
	ldr	r3, [r0, #352]
	cmp	r3, #0
	bne	.L29
	ldr	r1, .L36+4
	ldr	r2, [r0, #356]
.LPIC1:
	add	r1, pc
	cmp	r2, r1
	bne	.L29
	ldr	r2, [r0, #360]
	cmp	r2, #0
	beq	.L29
	ldrb	r3, [r2, #8]	@ zero_extendqisi2
	movs	r0, #1
	cbz	r3, .L34
	strb	r0, [r2, #24]
	bx	lr
.L34:
	bx	lr
.L37:
	.align	2
.L36:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LANCHOR1-(.LPIC1+4)
	.size	_libaroma_window_sidebar_sync, .-_libaroma_window_sidebar_sync
	.section	.text._libaroma_window_sidebar_invalidate,"ax",%progbits
	.align	2
	.global	_libaroma_window_sidebar_invalidate
	.thumb
	.thumb_func
	.type	_libaroma_window_sidebar_invalidate, %function
_libaroma_window_sidebar_invalidate:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L52
	ldr	r3, [r0, #356]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
.LPIC2:
	add	r2, pc
	sub	sp, sp, #44
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L51
.L39:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L51:
	ldr	r0, [r4, #320]
	mov	r5, r1
	cbz	r0, .L40
	ldr	lr, [r4, #324]
	cmp	lr, #0
	beq	.L40
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
	ldr	r0, .L52+4
	mov	r2, r6
	str	r4, [r7, #-4]!
	mov	r1, r7
.LPIC3:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, r7
	bl	_libaroma_window_sidebar_invalidate._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r4, [sp, #36]
.L40:
	movs	r0, #1
	cmp	r5, #0
	beq	.L39
	ldr	r5, [r4, #24]
	movs	r1, #0
	ldr	r3, [r4, #20]
	mov	r0, r4
	mov	r2, r1
	str	r5, [sp]
	bl	_libaroma_window_sidebar_sync(PLT)
	b	.L39
.L53:
	.align	2
.L52:
	.word	.LANCHOR0-(.LPIC2+4)
	.word	_libaroma_window_sidebar_invalidate._omp_fn.0-(.LPIC3+4)
	.size	_libaroma_window_sidebar_invalidate, .-_libaroma_window_sidebar_invalidate
	.section	.text._libaroma_window_layer_postfree,"ax",%progbits
	.align	2
	.global	_libaroma_window_layer_postfree
	.thumb
	.thumb_func
	.type	_libaroma_window_layer_postfree, %function
_libaroma_window_layer_postfree:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r0
	sub	sp, sp, #28
	cbz	r0, .L54
	ldr	r4, [r0, #352]
	cbz	r4, .L80
.L54:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L80:
	ldr	r2, .L82
	ldr	r3, [r0, #356]
.LPIC4:
	add	r2, pc
	cmp	r3, r2
	bne	.L54
	ldr	r5, [r0, #360]
	cmp	r5, #0
	beq	.L54
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L81
	ldrb	r2, [r3, #60]	@ zero_extendqisi2
	cbz	r2, .L58
	strb	r4, [r3, #60]
	movs	r3, #130
	ldr	r2, [r5, #4]
	strb	r3, [sp]
	ldr	lr, [r2, #328]
	cmp	lr, #0
	ble	.L58
.L62:
	ldr	r3, [r2, #332]
	mov	r1, sp
	ldr	r3, [r3, r4, lsl #2]
	adds	r4, r4, #1
	mov	r0, r3
	ldr	r3, [r3, #72]
	ldr	r3, [r3]
	cbz	r3, .L60
	blx	r3
	ldr	r2, [r5, #4]
	ldr	lr, [r2, #328]
.L60:
	cmp	r4, lr
	blt	.L62
.L58:
	add	r4, r5, #28
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r5, #4]
	bl	libaroma_window_free(PLT)
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
.L57:
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r5, #40]
	cbz	r3, .L63
	add	r0, r5, #40
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L63:
	ldr	r2, [r5, #48]
	movs	r3, #0
	str	r3, [r6, #356]
	mov	r0, r4
	str	r3, [r6, #360]
	str	r2, [r6, #344]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r5
	bl	free(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L81:
	add	r4, r5, #28
	b	.L57
.L83:
	.align	2
.L82:
	.word	.LANCHOR1-(.LPIC4+4)
	.size	_libaroma_window_layer_postfree, .-_libaroma_window_layer_postfree
	.section	.text._libaroma_window_layer_control_draw_begin,"ax",%progbits
	.align	2
	.global	_libaroma_window_layer_control_draw_begin
	.thumb
	.thumb_func
	.type	_libaroma_window_layer_control_draw_begin, %function
_libaroma_window_layer_control_draw_begin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #12
	cbz	r0, .L95
	ldr	r0, [r0, #352]
	cbz	r0, .L96
	movs	r0, #0
.L85:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L96:
	ldr	r2, .L97
	ldr	r3, [r5, #356]
.LPIC5:
	add	r2, pc
	cmp	r3, r2
	bne	.L85
	ldr	r7, [r5, #360]
	mov	r0, r7
	cmp	r7, #0
	beq	.L85
	add	r6, r7, #28
	mov	r4, r1
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r7, #44]	@ zero_extendqisi2
	cbz	r3, .L86
	ldr	r5, [r5, #320]
.L87:
	cbz	r5, .L94
	add	r2, r4, #20
	ldr	r1, [r4, #16]
	ldmia	r2, {r2, r3, r4}
	mov	r0, r5
	str	r4, [sp]
	bl	libaroma_canvas_area(PLT)
	mov	r5, r0
.L94:
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
.L95:
	mov	r0, r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L86:
	ldr	r5, [r7, #40]
	b	.L87
.L98:
	.align	2
.L97:
	.word	.LANCHOR1-(.LPIC5+4)
	.size	_libaroma_window_layer_control_draw_begin, .-_libaroma_window_layer_control_draw_begin
	.section	.text._libaroma_window_layer_message_hooker,"ax",%progbits
	.align	2
	.global	_libaroma_window_layer_message_hooker
	.thumb
	.thumb_func
	.type	_libaroma_window_layer_message_hooker, %function
_libaroma_window_layer_message_hooker:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #20
	cbz	r0, .L130
	ldr	r3, [r0, #352]
	cbz	r3, .L136
.L120:
	movs	r4, #0
.L130:
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L136:
	ldr	r7, .L146+24
	ldr	r6, [r0, #356]
.LPIC6:
	add	r7, pc
	cmp	r6, r7
	bne	.L133
	ldr	r7, [r0, #360]
	cmp	r7, #0
	beq	.L122
	ldrb	r4, [r0, #60]	@ zero_extendqisi2
	cmp	r4, #1
	beq	.L137
.L133:
	mov	r4, r3
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L137:
	ldrb	r6, [r7, #8]	@ zero_extendqisi2
	cmp	r6, #2
	beq	.L138
	ldrb	r2, [r7, #52]	@ zero_extendqisi2
	mov	r5, r1
	cmp	r2, #10
	beq	.L139
	ldr	r2, [r7, #4]
	cmp	r2, #0
	beq	.L125
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r2, #6
	bne	.L133
	ldr	r6, [r1, #8]
	mov	r2, sp
	mov	r1, r3
	add	r3, sp, #8
	str	r6, [sp]
	ldr	r6, [r5, #12]
	str	r6, [sp, #8]
	bl	libaroma_window_calculate_pos(PLT)
	ldrb	r5, [r5, #1]	@ zero_extendqisi2
	cmp	r5, #1
	beq	.L140
	ldrb	r3, [r7, #52]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L120
	cmp	r5, #2
	beq	.L141
	cmp	r5, #0
	bne	.L130
	add	r6, r7, #28
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	add	r0, r7, #104
	ldr	r1, [sp]
	bl	libaroma_fling_up(PLT)
	fmsr	s15, r0	@ int
	fsitod	d17, s15
	fldd	d16, .L146
	fmuld	d16, d17, d16
	ftosizd	s15, d16
	fmrs	r3, s15	@ int
	asrs	r3, r3, #8
	cmp	r3, #0
	str	r3, [r7, #20]
	blt	.L142
	str	r5, [r7, #16]
	bne	.L143
.L112:
	ldr	r2, [r7, #12]
	mov	r0, r6
	cmp	r3, r2
	itt	ne
	movne	r3, #10
	strbne	r3, [r7, #52]
	bl	omp_unset_nest_lock(PLT)
	b	.L130
.L138:
	ldr	r0, [r7, #4]
	mov	r4, r0
	cmp	r0, #0
	beq	.L130
	ldr	r3, [r0, #356]
	ldr	r3, [r3, #20]
	blx	r3
	adds	r4, r0, #0
	it	ne
	movne	r4, #1
	b	.L130
.L139:
	ldrb	r4, [r1]	@ zero_extendqisi2
	sub	r4, #6
	clz	r4, r4
	lsrs	r4, r4, #5
	b	.L130
.L125:
	mov	r4, r2
	b	.L130
.L140:
	movs	r0, #16
	bl	libaroma_dp(PLT)
	ldr	r3, [sp]
	cmp	r0, r3
	ble	.L120
	add	r5, r7, #28
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	movs	r3, #0
	movs	r0, #15
	str	r3, [r7, #20]
	bl	libaroma_dp(PLT)
	ldr	r1, [sp]
	movs	r2, #1
	ldr	r3, [sp, #8]
	str	r0, [r7, #16]
	add	r0, r7, #104
	str	r1, [r7, #56]
	str	r3, [r7, #60]
	strb	r2, [r7, #52]
	bl	libaroma_fling_down(PLT)
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	b	.L130
.L141:
	add	r6, r7, #28
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r7, #52]	@ zero_extendqisi2
	movs	r0, #16
	ldr	r5, [sp]
	cmp	r3, #2
	itttt	eq
	ldreq	r2, [r7, #4]
	ldreq	r3, [r7, #56]
	ldreq	r2, [r2, #20]
	subeq	r5, r5, r3
	it	eq
	addeq	r5, r5, r2
	bl	libaroma_dp(PLT)
	cmp	r5, r0
	it	ge
	movge	r0, r5
	blt	.L144
.L109:
	str	r0, [r7, #16]
	add	r0, r7, #104
	ldr	r1, [sp]
	bl	libaroma_fling_move(PLT)
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	b	.L130
.L142:
	ldr	r2, [r7, #4]
	negs	r1, r3
	ldr	r3, [r2, #20]
	str	r3, [r7, #16]
.L111:
	ldr	r2, [r2, #20]
	fmsr	s15, r1	@ int
	fsitod	d18, s15
	fldd	d19, .L146+8
	fmsr	s15, r2	@ int
	fsitod	d17, s15
	fmuld	d16, d17, d19
	fcmped	d18, d16
	fmstat
	bpl	.L145
	fldd	d19, .L146+16
	fmuld	d17, d17, d19
	fcmped	d18, d17
	fmstat
	bgt	.L115
.L117:
	ftosizd	s15, d17
	fmrs	r1, s15	@ int
.L115:
	str	r1, [r7, #20]
	b	.L112
.L143:
	mov	r1, r3
	ldr	r2, [r7, #4]
	mov	r3, r5
	b	.L111
.L144:
	movs	r0, #16
	bl	libaroma_dp(PLT)
	b	.L109
.L122:
	mov	r4, r7
	b	.L130
.L145:
	fldd	d18, .L146+16
	fmuld	d17, d17, d18
	fcmped	d16, d17
	fmstat
	ble	.L117
	ftosizd	s15, d16
	fmrs	r1, s15	@ int
	b	.L115
.L147:
	.align	3
.L146:
	.word	-858993459
	.word	1073007820
	.word	-858993459
	.word	1071434956
	.word	-1717986918
	.word	1068079513
	.word	.LANCHOR1-(.LPIC6+4)
	.size	_libaroma_window_layer_message_hooker, .-_libaroma_window_layer_message_hooker
	.section	.text._libaroma_window_sidebar_ui_thread,"ax",%progbits
	.align	2
	.global	_libaroma_window_sidebar_ui_thread
	.thumb
	.thumb_func
	.type	_libaroma_window_sidebar_ui_thread, %function
_libaroma_window_sidebar_ui_thread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #352]
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	sub	sp, sp, #12
	mov	r0, r3
	cbz	r3, .L149
	ldr	r5, [r3, #352]
	movs	r0, #0
	cbz	r5, .L167
.L149:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L167:
	ldr	r1, .L169
	ldr	r2, [r3, #356]
.LPIC7:
	add	r1, pc
	cmp	r2, r1
	bne	.L158
	ldr	r7, [r3, #360]
	mov	r0, r7
	cmp	r7, #0
	beq	.L149
	ldrb	r6, [r4, #60]	@ zero_extendqisi2
	cmp	r6, #1
	beq	.L168
.L158:
	mov	r0, r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L168:
	add	r9, r7, #28
	mov	r0, r9
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r7, #68]
	cbnz	r3, .L150
.L151:
	mov	r0, r9
	bl	omp_unset_nest_lock(PLT)
	ldr	r0, .L169+4
	movs	r3, #0
	mov	r2, r3
	mov	r1, sp
	strb	r3, [sp, #4]
.LPIC8:
	add	r0, pc
	str	r4, [sp]
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	_libaroma_window_sidebar_ui_thread._omp_fn.1(PLT)
	bl	GOMP_parallel_end(PLT)
	ldrb	r0, [sp, #4]	@ zero_extendqisi2
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L150:
	mov	r0, r6
	mov	r1, sp
	bl	clock_gettime(PLT)
	cbnz	r0, .L152
	ldr	r3, [sp, #4]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp]
	mov	r5, #1000
	smull	r2, r1, r1, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r1, asr #18
	mla	r5, r5, r0, r3
.L152:
	ldr	r2, [r7, #68]
	subs	r2, r5, r2
	cmp	r2, #180
	ble	.L151
	ldr	r0, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #68]
	cmp	r0, #0
	beq	.L151
	ldr	r2, [r0, #72]
	str	r0, [r4, #340]
	str	r3, [r7, #96]
	ldr	r3, [r2]
	cmp	r3, #0
	beq	.L151
	add	r1, r7, #72
	blx	r3
	b	.L151
.L170:
	.align	2
.L169:
	.word	.LANCHOR1-(.LPIC7+4)
	.word	_libaroma_window_sidebar_ui_thread._omp_fn.1-(.LPIC8+4)
	.size	_libaroma_window_sidebar_ui_thread, .-_libaroma_window_sidebar_ui_thread
	.section	.text._libaroma_window_layer_updatedc,"ax",%progbits
	.align	2
	.global	_libaroma_window_layer_updatedc
	.thumb
	.thumb_func
	.type	_libaroma_window_layer_updatedc, %function
_libaroma_window_layer_updatedc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0
	sub	sp, sp, #32
	mov	r4, r0
	cbz	r0, .L189
	ldr	r3, [r0, #352]
	movs	r4, #0
	cbz	r3, .L191
.L189:
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L191:
	ldr	r1, .L194
	ldr	r2, [r0, #356]
.LPIC9:
	add	r1, pc
	cmp	r2, r1
	bne	.L179
	ldr	r6, [r0, #360]
	mov	r4, r6
	cmp	r6, #0
	beq	.L189
	ldrb	r4, [r0, #60]	@ zero_extendqisi2
	cmp	r4, #1
	beq	.L192
.L179:
	mov	r4, r3
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L192:
	add	r8, r6, #28
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r6, #44]	@ zero_extendqisi2
	cbnz	r3, .L173
	ldr	r7, [r6, #40]
	cbz	r7, .L173
	ldrb	r3, [r5, #60]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L193
.L174:
	movs	r6, #0
	ldr	r0, [r5, #320]
	str	r6, [sp]
	mov	r1, r7
	str	r6, [sp, #4]
	mov	lr, #255
	ldr	r5, [r7]
	mov	r2, r6
	mov	r3, r6
	str	r5, [sp, #8]
	ldr	r7, [r7, #4]
	str	r6, [sp, #16]
	str	r6, [sp, #24]
	str	r7, [sp, #12]
	str	r6, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L173:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L193:
	ldrb	r3, [r6, #8]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L174
	ldr	lr, [r6, #4]
	cmp	lr, #0
	beq	.L174
	ldr	r3, [r6, #12]
	cmp	r3, #0
	ble	.L174
	ldr	r7, [lr, #20]
	mov	r9, #0
	ldr	r1, [lr, #320]
	mov	ip, #255
	ldr	r0, [r5, #320]
	mov	r2, r9
	rsb	r10, r3, r7
	ldr	r7, [lr, #16]
	str	r10, [sp]
	str	r3, [sp, #8]
	str	r9, [sp, #4]
	mov	r3, r7
	ldr	r7, [lr, #24]
	str	ip, [sp, #20]
	str	r9, [sp, #16]
	str	r7, [sp, #12]
	str	r9, [sp, #24]
	str	r9, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r7, [r5, #320]
	movs	r2, #4
	ldr	r5, [r6, #12]
	movs	r0, #150
	ldr	r10, [r6, #40]
	stmia	sp, {r5, r9}
	ldr	r3, [r7]
	mul	r0, r0, r5
	subs	r3, r3, r5
	str	r3, [sp, #8]
	ldr	r3, [r7, #4]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	ldr	r3, [r6, #4]
	ldr	r1, [r3, #20]
	bl	__aeabi_idiv(PLT)
	movw	r3, #65525
	str	r9, [sp, #24]
	movt	r3, 65535
	str	r9, [sp, #28]
	subs	r3, r3, r0
	mov	r1, r10
	uxtb	r0, r3
	mov	r2, r5
	mov	r3, r9
	str	r0, [sp, #20]
	mov	r0, r7
	bl	libaroma_draw_ex2(PLT)
	b	.L173
.L195:
	.align	2
.L194:
	.word	.LANCHOR1-(.LPIC9+4)
	.size	_libaroma_window_layer_updatedc, .-_libaroma_window_layer_updatedc
	.section	.text._libaroma_window_layer_sync,"ax",%progbits
	.align	2
	.global	_libaroma_window_layer_sync
	.thumb
	.thumb_func
	.type	_libaroma_window_layer_sync, %function
_libaroma_window_layer_sync:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L212
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r5, [r0, #352]
	cbz	r5, .L213
.L199:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L212:
	movs	r0, #0
	bx	lr
.L213:
	mov	r6, r2
	ldr	r2, .L215
	mov	r8, r3
	ldr	r3, [r0, #356]
.LPIC10:
	add	r2, pc
	cmp	r3, r2
	bne	.L199
	ldr	r3, [r0, #360]
	cmp	r3, #0
	beq	.L199
	ldrb	r5, [r0, #61]	@ zero_extendqisi2
	cbz	r5, .L214
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L214:
	mov	r7, r1
	bl	libaroma_window_isactive(PLT)
	cmp	r0, #0
	beq	.L199
	ldr	r3, [r4, #320]
	cmp	r3, #0
	beq	.L199
	mov	r0, r4
	bl	_libaroma_window_layer_updatedc(PLT)
	ldr	r0, [r4, #12]
	mov	r2, r8
	ldr	r1, [r4, #16]
	ldr	r3, [sp, #24]
	add	r0, r0, r7
	add	r1, r1, r6
	bl	libaroma_wm_sync(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L216:
	.align	2
.L215:
	.word	.LANCHOR1-(.LPIC10+4)
	.size	_libaroma_window_layer_sync, .-_libaroma_window_layer_sync
	.section	.text.libaroma_window_layer_direct_canvas,"ax",%progbits
	.align	2
	.global	libaroma_window_layer_direct_canvas
	.thumb
	.thumb_func
	.type	libaroma_window_layer_direct_canvas, %function
libaroma_window_layer_direct_canvas:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #36
	cbz	r0, .L230
	ldr	r0, [r0, #352]
	cbz	r0, .L246
.L230:
	movs	r0, #0
.L218:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L246:
	ldr	r2, .L248
	ldr	r3, [r4, #356]
.LPIC11:
	add	r2, pc
	cmp	r3, r2
	bne	.L218
	ldr	r5, [r4, #360]
	mov	r0, r5
	cmp	r5, #0
	beq	.L218
	mov	r7, r1
	add	r6, r5, #28
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	cbz	r7, .L219
	ldrb	r7, [r5, #44]	@ zero_extendqisi2
	cbnz	r7, .L220
	ldr	r0, [r4, #320]
	cbz	r0, .L221
	ldr	lr, [r5, #40]
	cmp	lr, #0
	beq	.L223
	str	r7, [sp]
	mov	ip, #255
	str	r7, [sp, #4]
	mov	r2, r7
	ldr	r4, [lr]
	mov	r1, lr
	mov	r3, r7
	str	r4, [sp, #8]
	ldr	r4, [lr, #4]
	str	r7, [sp, #16]
	str	r7, [sp, #24]
	str	r4, [sp, #12]
	str	r7, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L221:
	ldr	r3, [r5, #40]
	cbz	r3, .L223
	add	r0, r5, #40
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r5, #40]
.L223:
	movs	r3, #1
	strb	r3, [r5, #44]
.L220:
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L219:
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L220
	ldr	lr, [r4, #320]
	cmp	lr, #0
	beq	.L226
	ldr	r0, [r5, #40]
	cbz	r0, .L247
.L227:
	movs	r4, #0
	mov	ip, #255
	str	r4, [sp]
	mov	r2, r4
	str	r4, [sp, #4]
	mov	r1, lr
	ldr	r7, [lr]
	mov	r3, r4
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	r4, [sp, #16]
	str	r4, [sp, #24]
	str	r7, [sp, #12]
	str	r4, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L226:
	movs	r3, #0
	strb	r3, [r5, #44]
	b	.L220
.L247:
	ldr	r7, [lr]
	mov	r2, r0
	ldr	r1, [lr, #4]
	mov	r3, r0
	str	r0, [sp]
	mov	r0, r7
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r5, #40]
	cmp	r0, #0
	beq	.L226
	ldr	lr, [r4, #320]
	b	.L227
.L249:
	.align	2
.L248:
	.word	.LANCHOR1-(.LPIC11+4)
	.size	libaroma_window_layer_direct_canvas, .-libaroma_window_layer_direct_canvas
	.section	.text._libaroma_window_layer_set_sidebar_pos,"ax",%progbits
	.align	2
	.global	_libaroma_window_layer_set_sidebar_pos
	.thumb
	.thumb_func
	.type	_libaroma_window_layer_set_sidebar_pos, %function
_libaroma_window_layer_set_sidebar_pos:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0
	sub	sp, sp, #32
	cbz	r0, .L264
	ldr	r5, [r0, #352]
	cbz	r5, .L280
.L264:
	movs	r0, #0
.L251:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L280:
	ldr	r2, .L285
	ldr	r3, [r0, #356]
.LPIC12:
	add	r2, pc
	cmp	r3, r2
	bne	.L264
	ldr	r4, [r0, #360]
	mov	r0, r4
	cmp	r4, #0
	beq	.L251
	add	r8, r4, #28
	mov	r9, r1
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r7, [r4, #4]
	cmp	r7, #0
	beq	.L281
	cmp	r9, #0
	ldrb	r3, [r4, #8]	@ zero_extendqisi2
	ble	.L253
	ldr	r5, [r7, #20]
	cmp	r5, r9
	it	ge
	movge	r5, r9
	cbnz	r3, .L254
	ldrb	r7, [r7, #60]	@ zero_extendqisi2
	cmp	r7, #0
	beq	.L282
.L255:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	movs	r1, #0
	mov	r0, r6
	bl	libaroma_window_layer_direct_canvas(PLT)
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r7, [r4, #4]
	movs	r2, #1
	mov	r3, r2
	strb	r2, [r4, #8]
.L254:
	ldr	r2, [r4, #12]
	cmp	r2, r5
	itt	ne
	movne	r2, #1
	strbne	r2, [r4, #24]
	ldr	r2, [r7, #20]
	cmp	r2, r5
	beq	.L283
	cmp	r3, #2
	itt	eq
	moveq	r3, #1
	strbeq	r3, [r4, #8]
.L258:
	mov	r1, r5
	str	r5, [r4, #12]
.L259:
	ldr	r3, [r4, #100]
	cbz	r3, .L262
	ldr	r0, [r4, #4]
	ldr	r2, [r0, #20]
	blx	r3
.L262:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L253:
	cbnz	r3, .L284
.L260:
	ldr	r3, [r4, #12]
	cbz	r3, .L261
	movs	r3, #1
	strb	r3, [r4, #24]
.L261:
	movs	r3, #0
	mov	r1, r3
	str	r3, [r4, #12]
	b	.L259
.L283:
	cmp	r3, #2
	beq	.L258
	movs	r3, #2
	strb	r3, [r4, #8]
	b	.L258
.L282:
	add	r9, sp, #32
	movs	r3, #133
	mov	r0, r8
	strb	r3, [r9, #-24]!
	str	r7, [sp]
	bl	omp_unset_nest_lock(PLT)
	ldr	r0, [r4, #4]
	mov	r1, r9
	mov	r2, sp
	ldr	r3, [r0, #356]
	ldr	r3, [r3, #20]
	blx	r3
	ldr	r0, [r4, #4]
	movs	r3, #129
	strb	r3, [sp, #8]
	mov	r1, r9
	mov	r2, sp
	ldr	r3, [r0, #356]
	ldr	r3, [r3, #20]
	blx	r3
	mov	r1, r7
	ldr	r0, [r4, #4]
	bl	libaroma_window_invalidate(PLT)
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	b	.L255
.L284:
	mov	r0, r8
	strb	r5, [r4, #8]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r6
	movs	r1, #1
	bl	libaroma_window_layer_direct_canvas(PLT)
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	b	.L260
.L281:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r7
	b	.L251
.L286:
	.align	2
.L285:
	.word	.LANCHOR1-(.LPIC12+4)
	.size	_libaroma_window_layer_set_sidebar_pos, .-_libaroma_window_layer_set_sidebar_pos
	.section	.text._libaroma_window_layer_ui_thread,"ax",%progbits
	.align	2
	.global	_libaroma_window_layer_ui_thread
	.thumb
	.thumb_func
	.type	_libaroma_window_layer_ui_thread, %function
_libaroma_window_layer_ui_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	cbz	r0, .L290
	ldr	r7, [r0, #352]
	cbz	r7, .L337
.L290:
	movs	r5, #0
.L289:
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.L337:
	ldr	r2, .L339+8
	ldr	r3, [r0, #356]
.LPIC13:
	add	r2, pc
	cmp	r3, r2
	bne	.L290
	ldr	r5, [r0, #360]
	cmp	r5, #0
	beq	.L290
	ldrb	r8, [r0, #60]	@ zero_extendqisi2
	add	r6, r5, #28
	cmp	r8, #1
	beq	.L291
.L292:
	ldr	r3, [r5, #48]
	cbz	r3, .L308
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	it	ne
	movne	r7, #1
.L308:
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r5, #24]	@ zero_extendqisi2
	cbz	r3, .L309
	movs	r3, #0
	mov	r0, r6
	strb	r3, [r5, #24]
	bl	omp_unset_nest_lock(PLT)
.L310:
	ldrb	r5, [r4, #60]	@ zero_extendqisi2
	cmp	r5, #1
	it	ne
	movne	r5, #1
	bne	.L289
	mov	r0, r4
	bl	_libaroma_window_layer_updatedc(PLT)
	b	.L289
.L309:
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	cmp	r7, #0
	beq	.L290
	b	.L310
.L291:
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r5, #4]
	cmp	r3, #0
	beq	.L293
	ldr	r2, [r5, #16]
	adds	r1, r2, #1
	beq	.L293
	ldrb	r1, [r3, #60]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L338
	ldr	r0, [r3, #20]
	cmp	r0, #0
	itt	le
	movle	r3, #-1
	strle	r3, [r5, #16]
	ble	.L293
	ldr	r1, [r5, #12]
	cmp	r2, r1
	beq	.L293
	ldr	r7, [r5, #20]
	rsb	lr, r1, r2
	cmp	r7, #0
	beq	.L296
	fmsr	s15, r0	@ int
	mov	ip, #246
	fsitod	d18, s15
	mul	r7, ip, r7
	fldd	d16, .L339
	fconstd	d17, #112
	asrs	r7, r7, #8
	fmuld	d16, d18, d16
	fcmpd	d16, d17
	fmstat
	itet	pl
	ftosizdpl	s15, d16
	movmi	ip, #1
	fmrspl	ip, s15	@ int
	cmp	ip, r7
	itee	lt
	strlt	r7, [r5, #20]
	movge	r7, ip
	strge	ip, [r5, #20]
	cmp	lr, #0
	it	lt
	rsblt	r7, r7, #0
.L301:
	add	lr, r7, #1
	cmp	lr, #2
	bhi	.L302
	cmp	r2, r1
	ite	ge
	movge	r7, #1
	movlt	r7, #-1
.L302:
	add	r7, r7, r1
	cmp	r0, r7
	bgt	.L303
	ldrb	r2, [r5, #52]	@ zero_extendqisi2
	cmp	r2, #10
	it	ne
	cmpne	r2, #0
	itet	ne
	movne	r1, #1
	moveq	r1, #0
	addne	r7, r0, #-1
	bne	.L305
	cmp	r2, #10
	mov	r2, #-1
	itt	eq
	strbeq	r1, [r5, #52]
	ldreq	r0, [r3, #20]
	movs	r3, #0
	str	r2, [r5, #16]
	str	r3, [r5, #20]
	mov	r7, r0
.L305:
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	mov	r1, r7
	bl	_libaroma_window_layer_set_sidebar_pos(PLT)
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
.L293:
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	ldrb	r7, [r5, #8]	@ zero_extendqisi2
	cmp	r7, #0
	beq	.L292
	ldr	r0, [r5, #4]
	mov	r7, r0
	cmp	r0, #0
	beq	.L292
	ldr	r7, [r0, #344]
	cmp	r7, #0
	beq	.L292
	blx	r7
	adds	r7, r0, #0
	it	ne
	movne	r7, #1
	b	.L292
.L338:
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	mov	r1, r8
	bl	_libaroma_window_layer_set_sidebar_pos(PLT)
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	b	.L293
.L303:
	cmp	r7, #0
	bgt	.L305
	ldrb	r3, [r5, #52]	@ zero_extendqisi2
	cmp	r3, #10
	it	ne
	cmpne	r3, #0
	itet	ne
	movne	r2, #1
	moveq	r2, #0
	movne	r7, #1
	bne	.L305
	cmp	r3, #10
	mov	r3, #0
	it	eq
	strbeq	r2, [r5, #52]
	mov	r2, #-1
	str	r2, [r5, #16]
	mov	r7, r3
	str	r3, [r5, #20]
	b	.L305
.L296:
	sbfx	r7, lr, #2, #24
	b	.L301
.L340:
	.align	3
.L339:
	.word	-1717986918
	.word	1068079513
	.word	.LANCHOR1-(.LPIC13+4)
	.size	_libaroma_window_layer_ui_thread, .-_libaroma_window_layer_ui_thread
	.section	.text.libaroma_window_layer_init,"ax",%progbits
	.align	2
	.global	libaroma_window_layer_init
	.thumb
	.thumb_func
	.type	libaroma_window_layer_init, %function
libaroma_window_layer_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r5, .L351
.LPIC16:
	add	r5, pc
	cbz	r0, .L344
	ldr	r3, [r0, #352]
	cbz	r3, .L350
.L344:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L350:
	ldr	r3, [r0, #360]
	cbz	r3, .L345
	ldr	r3, .L351+4
	ldr	r0, [r0, #356]
.LPIC14:
	add	r3, pc
	subs	r0, r0, r3
	clz	r0, r0
	lsrs	r0, r0, #5
	pop	{r4, r5, r6, r7, r8, pc}
.L345:
	movs	r0, #188
	movs	r1, #1
	bl	calloc(PLT)
	mov	r6, r0
	cmp	r0, #0
	beq	.L344
	add	r7, r0, #28
	mov	r8, #1
	mov	r0, r7
	bl	omp_init_nest_lock(PLT)
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	strb	r8, [r6, #44]
	mov	r3, #-1
	ldr	r2, [r4, #344]
	mov	r0, r7
	ldr	r1, .L351+8
	str	r4, [r6]
	str	r2, [r6, #48]
	ldr	r2, .L351+12
.LPIC15:
	add	r1, pc
	str	r3, [r6, #16]
	str	r6, [r4, #360]
	str	r1, [r4, #356]
	ldr	r3, [r5, r2]
	str	r3, [r4, #344]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, pc}
.L352:
	.align	2
.L351:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	.LANCHOR1-(.LPIC14+4)
	.word	.LANCHOR1-(.LPIC15+4)
	.word	_libaroma_window_layer_ui_thread(GOT)
	.size	libaroma_window_layer_init, .-libaroma_window_layer_init
	.section	.text.libaroma_window_layer_release,"ax",%progbits
	.align	2
	.global	libaroma_window_layer_release
	.thumb
	.thumb_func
	.type	libaroma_window_layer_release, %function
libaroma_window_layer_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L356
	ldr	r3, [r0, #352]
	cbz	r3, .L360
.L356:
	movs	r0, #0
	pop	{r4, pc}
.L360:
	ldr	r1, .L361
	ldr	r2, [r0, #356]
.LPIC17:
	add	r1, pc
	cmp	r2, r1
	bne	.L356
	ldr	r3, [r0, #360]
	cmp	r3, #0
	beq	.L356
	bl	_libaroma_window_layer_postfree(PLT)
	mov	r0, r4
	movs	r1, #1
	bl	libaroma_window_invalidate(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L362:
	.align	2
.L361:
	.word	.LANCHOR1-(.LPIC17+4)
	.size	libaroma_window_layer_release, .-libaroma_window_layer_release
	.section	.text.libaroma_window_sidebar_show,"ax",%progbits
	.align	2
	.global	libaroma_window_sidebar_show
	.thumb
	.thumb_func
	.type	libaroma_window_sidebar_show, %function
libaroma_window_sidebar_show:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	ldr	r3, [r0, #352]
	cbz	r3, .L376
	ldr	r0, [r3, #352]
	cbz	r0, .L377
.L376:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L377:
	mov	r7, r1
	ldr	r1, .L380
	ldr	r2, [r3, #356]
.LPIC18:
	add	r1, pc
	cmp	r2, r1
	bne	.L364
	ldr	r5, [r3, #360]
	cbz	r5, .L371
	add	r4, r5, #28
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r5, #8]	@ zero_extendqisi2
	cbz	r7, .L365
	cbz	r3, .L378
.L366:
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L371:
	mov	r0, r5
.L364:
	pop	{r3, r4, r5, r6, r7, pc}
.L365:
	cmp	r3, #0
	beq	.L366
	cmp	r3, #2
	beq	.L379
.L367:
	movs	r2, #0
	movs	r3, #10
	mov	r0, r4
	str	r2, [r5, #16]
	strb	r3, [r5, #52]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L378:
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	movs	r1, #1
	ldr	r0, [r6, #352]
	bl	_libaroma_window_layer_set_sidebar_pos(PLT)
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r6, #20]
	movs	r2, #10
	mov	r0, r4
	strb	r2, [r5, #52]
	str	r3, [r5, #16]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L379:
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	ldr	r1, [r6, #20]
	ldr	r0, [r6, #352]
	subs	r1, r1, #1
	bl	_libaroma_window_layer_set_sidebar_pos(PLT)
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	b	.L367
.L381:
	.align	2
.L380:
	.word	.LANCHOR1-(.LPIC18+4)
	.size	libaroma_window_sidebar_show, .-libaroma_window_sidebar_show
	.section	.text._libaroma_window_sidebar_message_hooker,"ax",%progbits
	.align	2
	.global	_libaroma_window_sidebar_message_hooker
	.thumb
	.thumb_func
	.type	_libaroma_window_sidebar_message_hooker, %function
_libaroma_window_sidebar_message_hooker:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r0
	ldr	r0, [r0, #352]
	sub	sp, sp, #32
	cbz	r0, .L383
	ldr	r9, [r0, #352]
	cmp	r9, #0
	beq	.L466
	movs	r0, #0
.L383:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L466:
	mov	r7, r2
	ldr	r2, .L473
	ldr	r3, [r0, #356]
.LPIC19:
	add	r2, pc
	cmp	r3, r2
	it	ne
	movne	r0, r9
	bne	.L383
	ldr	r6, [r0, #360]
	mov	r0, r6
	cmp	r6, #0
	beq	.L383
	add	r5, r6, #28
	mov	r4, r1
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #129
	beq	.L385
	bhi	.L386
	cmp	r3, #6
	beq	.L387
	cmp	r3, #67
	bne	.L433
	mov	r0, r5
	movs	r4, #1
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r8
	mov	r1, r9
	bl	libaroma_window_sidebar_show(PLT)
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
.L384:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L387:
	ldr	r3, [r8, #352]
	ldrb	r2, [r3, #60]	@ zero_extendqisi2
	cmp	r2, #1
	beq	.L467
.L433:
	movs	r4, #0
	b	.L384
.L386:
	cmp	r3, #132
	beq	.L389
	cmp	r3, #133
	bne	.L433
	movs	r0, #2
	bl	libaroma_window_usedp(PLT)
	cmp	r0, #0
	beq	.L420
	ldr	r0, [r8, #36]
	mov	r1, r0
.L421:
	ldr	r2, [r8, #352]
	movs	r4, #0
	movs	r3, #1
	ldr	r2, [r2, #20]
	str	r4, [sp]
	bl	libaroma_window_measure_calculate(PLT)
	ldr	r3, [r8, #352]
	mov	r7, r0
	movs	r0, #56
	ldr	r6, [r3, #20]
	bl	libaroma_dp(PLT)
	ldr	r2, [r8, #352]
	subs	r3, r6, r0
	str	r4, [r8, #48]
	cmp	r3, r7
	str	r4, [r8, #44]
	ldr	r2, [r2, #24]
	it	ge
	movge	r3, r7
	movs	r0, #2
	str	r3, [r8, #20]
	str	r4, [r8, #32]
	str	r4, [r8, #28]
	str	r4, [r8, #16]
	str	r4, [r8, #12]
	str	r4, [r8, #4]
	str	r4, [r8, #8]
	str	r2, [r8, #24]
	bl	libaroma_window_usedp(PLT)
	cmp	r0, #0
	bne	.L468
	ldr	r0, [r8, #20]
	ldr	r3, [r8, #24]
	str	r0, [r8, #52]
	str	r0, [r8, #36]
	str	r3, [r8, #56]
	str	r3, [r8, #40]
.L423:
	ldr	r3, [r8, #320]
	cbz	r3, .L424
	ldr	r2, [r3]
	cmp	r2, r0
	bne	.L425
	ldr	r2, [r3, #4]
	ldr	r3, [r8, #24]
	cmp	r2, r3
	beq	.L426
.L425:
	add	r0, r8, #320
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r3, [r8, #324]
	cbz	r3, .L427
	add	r0, r8, #324
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L427:
	ldr	r0, [r8, #20]
	movs	r3, #0
	str	r3, [r8, #320]
	str	r3, [r8, #324]
.L424:
	movs	r4, #0
	ldr	r1, [r8, #24]
	mov	r2, r4
	mov	r3, r4
	str	r4, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r6, [r8, #20]
	mov	r2, r4
	ldr	r1, [r8, #24]
	mov	r3, r4
	str	r0, [r8, #320]
	str	r4, [sp]
	mov	r0, r6
	bl	libaroma_canvas_new_ex(PLT)
	mov	r2, r4
	str	r0, [r8, #324]
	movw	r1, #65535
	ldr	r0, [r8, #320]
	bl	libaroma_canvas_setcolor(PLT)
	mov	r2, r4
	ldr	r0, [r8, #324]
	movw	r1, #65535
	bl	libaroma_canvas_setcolor(PLT)
.L426:
	ldr	r3, [r8, #328]
	cmp	r3, #0
	ble	.L433
	movs	r4, #0
.L428:
	ldr	r3, [r8, #332]
	mov	r0, r8
	ldr	r1, [r3, r4, lsl #2]
	adds	r4, r4, #1
	bl	libaroma_window_measure(PLT)
	ldr	r3, [r8, #328]
	cmp	r3, r4
	bgt	.L428
	movs	r4, #0
	b	.L384
.L389:
	ldr	r2, [r8, #328]
	cmp	r2, #0
	it	gt
	movgt	r6, r9
	ble	.L433
.L419:
	ldr	r3, [r8, #332]
	mov	r1, r4
	ldr	r0, [r3, r6, lsl #2]
	adds	r6, r6, #1
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L418
	blx	r3
	ldr	r2, [r8, #328]
.L418:
	cmp	r6, r2
	blt	.L419
	movs	r4, #0
	b	.L384
.L385:
	ldrb	r6, [r8, #60]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L433
	ldr	r2, [r8, #328]
	movs	r3, #1
	strb	r3, [r8, #60]
	cmp	r2, #0
	ble	.L433
.L417:
	ldr	r3, [r8, #332]
	mov	r1, r4
	ldr	r0, [r3, r6, lsl #2]
	adds	r6, r6, #1
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L416
	blx	r3
	ldr	r2, [r8, #328]
.L416:
	cmp	r6, r2
	blt	.L417
	b	.L433
.L467:
	ldrb	r10, [r4, #1]	@ zero_extendqisi2
	cmp	r10, #1
	beq	.L469
	ldr	r0, [r8, #340]
	cbz	r0, .L403
	cmp	r10, #2
	beq	.L470
	cmp	r10, #0
	bne	.L438
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L405
	mov	r1, r4
	blx	r3
	str	r0, [r7]
.L405:
	movs	r3, #0
	movs	r4, #1
	str	r3, [r8, #340]
	b	.L384
.L468:
	ldr	r0, [r8, #20]
	bl	libaroma_px(PLT)
	mov	r3, r0
	ldr	r0, [r8, #24]
	str	r3, [r8, #52]
	str	r3, [r8, #36]
	bl	libaroma_px(PLT)
	str	r0, [r8, #56]
	str	r0, [r8, #40]
	ldr	r0, [r8, #20]
	b	.L423
.L420:
	ldr	r0, [r8, #36]
	bl	libaroma_dp(PLT)
	ldr	r1, [r8, #36]
	b	.L421
.L403:
	cmp	r10, #0
	beq	.L471
	cmp	r10, #2
	bne	.L438
	ldr	r7, [r4, #8]
	mov	r0, r3
	movs	r1, #0
	add	r3, sp, #24
	add	r2, sp, #16
	str	r7, [sp, #16]
	ldr	r7, [r4, #12]
	str	r7, [sp, #24]
	bl	libaroma_window_calculate_pos(PLT)
	ldrb	r3, [r6, #64]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L438
	ldr	r7, [r6, #60]
	movs	r0, #24
	ldr	r1, [sp, #24]
	ldr	r3, [sp, #16]
	ldr	r2, [r6, #56]
	subs	r7, r7, r1
	rsb	r9, r3, r2
	bl	libaroma_dp(PLT)
	eor	r3, r7, r7, asr #31
	sub	r3, r3, r7, asr #31
	cmp	r0, r3
	bgt	.L412
	eor	r2, r9, r9, asr #31
	sub	r2, r2, r9, asr #31
	cmp	r3, r2
	blt	.L412
	ldr	r3, [r6, #96]
	cbz	r3, .L438
	ldr	r2, [r3, #72]
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L414
	movs	r7, #0
	mov	r0, r3
	str	r7, [r6, #68]
	add	r1, r6, #72
	str	r3, [r8, #340]
	str	r7, [r6, #96]
	blx	r2
	ldr	r0, [r8, #340]
	mov	r1, r4
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	blx	r3
.L415:
	movs	r3, #0
	movs	r1, #1
	strb	r3, [r6, #64]
	ldr	r2, [sp, #16]
.L465:
	str	r2, [r6, #56]
	str	r3, [r6, #68]
	ldr	r3, [sp, #24]
	strb	r1, [r6, #24]
	str	r3, [r6, #60]
.L438:
	movs	r4, #1
	b	.L384
.L470:
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L438
	mov	r1, r4
	movs	r4, #1
	blx	r3
	str	r0, [r7]
	b	.L384
.L469:
	ldr	lr, [r4]	@ unaligned
	mov	r1, r9
	ldr	r7, [r4, #4]	@ unaligned
	add	r3, sp, #16
	ldr	r10, [r4, #8]	@ unaligned
	add	r2, sp, #8
	ldr	ip, [r4, #12]	@ unaligned
	str	lr, [r6, #72]	@ unaligned
	str	r7, [r6, #76]	@ unaligned
	str	r10, [r6, #80]	@ unaligned
	str	ip, [r6, #84]	@ unaligned
	ldr	r7, [r4, #20]	@ unaligned
	ldr	lr, [r4, #16]	@ unaligned
	str	r7, [r6, #92]	@ unaligned
	str	lr, [r6, #88]	@ unaligned
	ldr	r7, [r4, #8]
	ldr	r4, [r4, #12]
	ldr	r0, [r8, #352]
	str	r9, [r8, #340]
	str	r9, [r6, #96]
	str	r7, [sp, #8]
	str	r4, [sp, #16]
	bl	libaroma_window_calculate_pos(PLT)
	ldr	r1, [sp, #8]
	ldr	r3, [r8, #20]
	cmp	r3, r1
	ble	.L394
	ldr	r3, [r8, #328]
	cmp	r3, #0
	ble	.L399
	movs	r4, #0
	b	.L396
.L398:
	ldr	r3, [r8, #328]
	cmp	r3, r4
	ble	.L399
	ldr	r1, [sp, #8]
.L396:
	ldr	r3, [r8, #332]
	lsls	r7, r4, #2
	ldr	r2, [sp, #16]
	ldr	r0, [r3, r4, lsl #2]
	adds	r4, r4, #1
	bl	_libaroma_window_is_inside(PLT)
	cmp	r0, #0
	beq	.L398
	ldr	r3, [r8, #332]
	ldr	r3, [r3, r7]
	str	r3, [r6, #96]
.L397:
	cmp	r3, #0
	beq	.L464
	ldr	r3, [r3, #72]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L401
	movs	r0, #1
	add	r1, sp, #24
	bl	clock_gettime(PLT)
	movs	r3, #0
	cbnz	r0, .L402
	ldr	r2, [sp, #28]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp, #24]
	mov	r4, #1000
	smull	r7, r3, r1, r2
	asrs	r2, r2, #31
	rsb	r3, r2, r3, asr #18
	mla	r3, r4, r0, r3
.L402:
	ldr	r1, [sp, #8]
	str	r3, [r6, #68]
.L394:
	movs	r3, #2
	str	r1, [r6, #56]
	strb	r3, [r6, #64]
	add	r0, r6, #104
	ldr	r3, [sp, #16]
	movs	r4, #1
	str	r3, [r6, #60]
	bl	libaroma_fling_down(PLT)
	b	.L384
.L399:
	ldr	r3, [r6, #96]
	b	.L397
.L471:
	ldr	r7, [r4, #8]
	mov	r0, r3
	add	r2, sp, #16
	add	r3, sp, #24
	mov	r1, r10
	str	r7, [sp, #16]
	ldr	r7, [r4, #12]
	str	r7, [sp, #24]
	bl	libaroma_window_calculate_pos(PLT)
	ldr	r2, [r8, #20]
	ldr	r3, [sp, #16]
	cmp	r2, r3
	ble	.L472
	ldr	r0, [r6, #96]
	cmp	r0, #0
	beq	.L438
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	cbz	r3, .L409
	add	r1, r6, #72
	blx	r3
	ldr	r0, [r6, #96]
	mov	r1, r4
	ldr	r3, [r0, #72]
	ldr	r3, [r3]
	blx	r3
.L409:
	movs	r3, #0
	movs	r1, #1
	strb	r3, [r6, #64]
	ldr	r2, [sp, #16]
	str	r3, [r6, #96]
	b	.L465
.L401:
	str	r3, [r6, #96]
.L464:
	ldr	r1, [sp, #8]
	b	.L394
.L472:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r8
	mov	r1, r10
	bl	libaroma_window_sidebar_show(PLT)
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	b	.L438
.L412:
	cmp	r9, #0
	it	lt
	rsblt	r9, r9, #0
	cmp	r0, r9
	bgt	.L438
	movs	r2, #1
	movs	r3, #0
	movs	r1, #2
	strb	r2, [r6, #64]
	str	r3, [r6, #68]
	mov	r0, r5
	str	r3, [r6, #96]
	str	r3, [r8, #340]
	strb	r2, [r6, #8]
	strb	r1, [r6, #52]
	ldr	r3, [sp, #16]
	str	r3, [r6, #56]
	ldr	r3, [sp, #24]
	str	r3, [r6, #60]
	bl	omp_unset_nest_lock(PLT)
	ldr	r1, [r8, #20]
	ldr	r0, [r8, #352]
	subs	r1, r1, #1
	bl	_libaroma_window_layer_set_sidebar_pos(PLT)
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	b	.L438
.L414:
	str	r2, [r6, #96]
	b	.L415
.L474:
	.align	2
.L473:
	.word	.LANCHOR1-(.LPIC19+4)
	.size	_libaroma_window_sidebar_message_hooker, .-_libaroma_window_sidebar_message_hooker
	.section	.text.libaroma_window_sidebar,"ax",%progbits
	.align	2
	.global	libaroma_window_sidebar
	.thumb
	.thumb_func
	.type	libaroma_window_sidebar, %function
libaroma_window_sidebar:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r1
	ldr	r6, .L487
	mov	r5, r0
	bl	libaroma_window_layer_init(PLT)
.LPIC22:
	add	r6, pc
	cbz	r0, .L478
	mov	r4, r5
	cbz	r5, .L476
	ldr	r4, [r5, #352]
	cbz	r4, .L485
	movs	r4, #0
.L476:
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L485:
	ldr	r2, .L487+4
	ldr	r3, [r5, #356]
.LPIC20:
	add	r2, pc
	cmp	r3, r2
	bne	.L476
	ldr	r7, [r5, #360]
	cmp	r7, #0
	beq	.L476
	ldr	r4, [r7, #4]
	cmp	r4, #0
	bne	.L476
	add	r9, r7, #28
	mov	r0, r9
	bl	omp_set_nest_lock(PLT)
	mov	r0, #364
	movs	r1, #1
	bl	calloc(PLT)
	mov	r3, r0
	cbz	r0, .L486
	ldr	lr, .L487+8
	movs	r1, #1
	ldr	r2, .L487+12
	mov	r0, r9
	str	r8, [r3, #36]
	mov	r4, r3
.LPIC21:
	add	lr, pc
	str	r5, [r3, #352]
	str	lr, [r3, #356]
	ldr	r2, [r6, r2]
	str	r2, [r3, #344]
	str	r3, [r7, #4]
	strb	r1, [r7, #24]
	bl	omp_unset_nest_lock(PLT)
	b	.L476
.L478:
	mov	r4, r0
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L486:
	mov	r0, r9
	bl	omp_unset_nest_lock(PLT)
	b	.L476
.L488:
	.align	2
.L487:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	.LANCHOR1-(.LPIC20+4)
	.word	.LANCHOR0-(.LPIC21+4)
	.word	_libaroma_window_sidebar_ui_thread(GOT)
	.size	libaroma_window_sidebar, .-libaroma_window_sidebar
	.section	.text.libaroma_window_sidebar_onslide,"ax",%progbits
	.align	2
	.global	libaroma_window_sidebar_onslide
	.thumb
	.thumb_func
	.type	libaroma_window_sidebar_onslide, %function
libaroma_window_sidebar_onslide:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, [r0, #352]
	cbz	r0, .L496
	ldr	r3, [r0, #352]
	cbz	r3, .L497
	movs	r0, #0
.L496:
	bx	lr
.L497:
	push	{r4, r5, r6, lr}
	mov	r5, r1
	ldr	r1, .L498
	ldr	r2, [r0, #356]
.LPIC23:
	add	r1, pc
	cmp	r2, r1
	bne	.L493
	ldr	r6, [r0, #360]
	cbz	r6, .L494
	add	r4, r6, #28
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	str	r5, [r6, #100]
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L498+4
	mov	r2, r0
	mov	r0, r5
.LPIC24:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L498+8
	movs	r2, #27
	movs	r1, #1
.LPIC25:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L493:
	mov	r0, r3
	pop	{r4, r5, r6, pc}
.L494:
	mov	r0, r6
	pop	{r4, r5, r6, pc}
.L499:
	.align	2
.L498:
	.word	.LANCHOR1-(.LPIC23+4)
	.word	.LC0-(.LPIC24+4)
	.word	.LC1-(.LPIC25+4)
	.size	libaroma_window_sidebar_onslide, .-libaroma_window_sidebar_onslide
	.section	.data.rel._libaroma_window_layer_handler,"aw",%progbits
	.align	2
.LANCHOR1 = . + 0
	.type	_libaroma_window_layer_handler, %object
	.size	_libaroma_window_layer_handler, 40
_libaroma_window_layer_handler:
	.word	0
	.word	_libaroma_window_layer_postfree
	.word	0
	.word	0
	.word	_libaroma_window_layer_sync
	.word	_libaroma_window_layer_message_hooker
	.word	0
	.word	0
	.word	0
	.word	_libaroma_window_layer_control_draw_begin
	.section	.data.rel._libaroma_window_sidebar_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_window_sidebar_handler, %object
	.size	_libaroma_window_sidebar_handler, 40
_libaroma_window_sidebar_handler:
	.word	0
	.word	0
	.word	0
	.word	_libaroma_window_sidebar_invalidate
	.word	_libaroma_window_sidebar_sync
	.word	_libaroma_window_sidebar_message_hooker
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"I/%s: \000"
	.space	1
.LC1:
	.ascii	"Init sidebar slide callback\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
