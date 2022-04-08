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
	.file	"ctl_list.c"
	.section	.text.__libaroma_ctl_list_item_reg_thread,"ax",%progbits
	.align	2
	.global	__libaroma_ctl_list_item_reg_thread
	.thumb
	.thumb_func
	.type	__libaroma_ctl_list_item_reg_thread, %function
__libaroma_ctl_list_item_reg_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	bl	libaroma_ctl_scroll_get_client(PLT)
	cbz	r0, .L2
	ldr	r2, .L21
	ldr	r3, [r0, #4]
.LPIC8:
	add	r2, pc
	cmp	r3, r2
	beq	.L19
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L13:
	movs	r0, #2
.L2:
	pop	{r4, r5, r6, pc}
.L19:
	ldr	r6, [r0]
	ldr	r1, [r6, #36]
	cmp	r1, #0
	beq	.L3
	ldr	r0, [r6, #40]
	ble	.L5
	ldr	r3, [r0]
	cmp	r3, r5
	beq	.L13
	mov	r2, r0
	movs	r3, #0
	b	.L6
.L7:
	ldr	r4, [r2, #4]!
	cmp	r4, r5
	beq	.L13
.L6:
	adds	r3, r3, #1
	cmp	r3, r1
	bne	.L7
.L5:
	adds	r1, r1, #1
	lsls	r1, r1, #2
	bl	realloc(PLT)
	mov	r3, r0
	cbz	r0, .L20
	ldr	r2, [r6, #36]
	movs	r0, #1
	str	r3, [r6, #40]
	adds	r1, r2, r0
	str	r5, [r3, r2, lsl #2]
	str	r1, [r6, #36]
	pop	{r4, r5, r6, pc}
.L3:
	movs	r0, #4
	bl	malloc(PLT)
	movs	r3, #1
	mov	r2, r0
	str	r0, [r6, #40]
	mov	r0, r3
	str	r5, [r2]
	str	r3, [r6, #36]
	pop	{r4, r5, r6, pc}
.L20:
	ldr	r0, [r6, #40]
	cbz	r0, .L9
	bl	free(PLT)
.L9:
	movs	r3, #0
	str	r3, [r6, #40]
	mov	r0, r3
	str	r3, [r6, #36]
	pop	{r4, r5, r6, pc}
.L22:
	.align	2
.L21:
	.word	.LANCHOR0-(.LPIC8+4)
	.size	__libaroma_ctl_list_item_reg_thread, .-__libaroma_ctl_list_item_reg_thread
	.section	.text.__libaroma_ctl_list_item_unreg_thread,"ax",%progbits
	.align	2
	.global	__libaroma_ctl_list_item_unreg_thread
	.thumb
	.thumb_func
	.type	__libaroma_ctl_list_item_unreg_thread, %function
__libaroma_ctl_list_item_unreg_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r1
	bl	libaroma_ctl_scroll_get_client(PLT)
	cbz	r0, .L24
	ldr	r2, .L44
	ldr	r3, [r0, #4]
.LPIC9:
	add	r2, pc
	cmp	r3, r2
	beq	.L42
.L35:
	movs	r0, #0
.L24:
	pop	{r4, r5, r6, r7, r8, pc}
.L42:
	ldr	r6, [r0]
	ldr	r7, [r6, #36]
	cmp	r7, #0
	ble	.L35
	cmp	r7, #1
	bne	.L25
	ldr	r0, [r6, #40]
	ldr	r3, [r0]
	cmp	r3, r5
	bne	.L35
	bl	free(PLT)
	movs	r3, #0
	mov	r0, r7
	str	r3, [r6, #40]
	str	r3, [r6, #36]
	pop	{r4, r5, r6, r7, r8, pc}
.L25:
	subs	r0, r7, #1
	movs	r4, #0
	lsls	r0, r0, #2
	bl	malloc(PLT)
	mov	r1, #-1
	mov	r8, r0
	mov	r3, r4
	cbz	r0, .L43
.L30:
	ldr	r2, [r6, #40]
	ldr	r2, [r2, r3, lsl #2]
	cmp	r2, r5
	it	eq
	moveq	r1, r3
	add	r3, r3, #1
	itt	ne
	strne	r2, [r8, r4, lsl #2]
	addne	r4, r4, #1
	cmp	r3, r7
	bne	.L30
	adds	r1, r1, #1
	beq	.L31
	ldr	r0, [r6, #40]
	bl	free(PLT)
	ldr	r3, [r6, #36]
	movs	r0, #1
	str	r8, [r6, #40]
	subs	r3, r3, #1
	str	r3, [r6, #36]
	pop	{r4, r5, r6, r7, r8, pc}
.L31:
	mov	r0, r8
	bl	free(PLT)
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L43:
	ldr	r0, [r6, #40]
	cbz	r0, .L27
	bl	free(PLT)
.L27:
	movs	r3, #0
	str	r3, [r6, #40]
	mov	r0, r3
	str	r3, [r6, #36]
	pop	{r4, r5, r6, r7, r8, pc}
.L45:
	.align	2
.L44:
	.word	.LANCHOR0-(.LPIC9+4)
	.size	__libaroma_ctl_list_item_unreg_thread, .-__libaroma_ctl_list_item_unreg_thread
	.section	.text._libaroma_ctl_list_draw_item_fresh,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_draw_item_fresh
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_draw_item_fresh, %function
_libaroma_ctl_list_draw_item_fresh:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r2, #0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #20
	mov	r4, r2
	mov	r5, r1
	ldrb	r8, [sp, #52]	@ zero_extendqisi2
	beq	.L46
	mov	r6, r0
	cbz	r0, .L46
	tst	r8, #16
	mov	r9, r3
	beq	.L64
.L48:
	ldr	r3, [sp, #48]
	movs	r2, #0
	str	r2, [sp, #8]
	cmp	r3, r2
	ble	.L49
	mov	r1, r3
	ldmia	r4, {r3, r7}
	mov	r0, r4
	str	r7, [sp]
	sub	r3, r3, r1, lsl #1
	bl	libaroma_canvas_area(PLT)
	str	r0, [sp, #8]
	mov	r2, r0
	cbz	r0, .L49
	mov	r4, r0
	mov	r2, r0
.L49:
	ldr	r3, [r5, #20]
	ldr	r7, [r3, #4]
	cbz	r7, .L50
	mov	r2, r4
	str	r8, [sp]
	mov	r0, r6
	mov	r1, r5
	mov	r3, r9
	blx	r7
	ldr	r2, [sp, #8]
.L50:
	cbz	r2, .L46
	add	r0, sp, #8
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L46:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L64:
	mov	r0, r2
	mov	r1, r3
	movs	r2, #255
	bl	libaroma_canvas_setcolor(PLT)
	b	.L48
	.size	_libaroma_ctl_list_draw_item_fresh, .-_libaroma_ctl_list_draw_item_fresh
	.section	.text._libaroma_ctl_list_free_state,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_free_state
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_free_state, %function
_libaroma_ctl_list_free_state:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #24]
	cbz	r0, .L66
	ldr	r3, [r0, #156]
	cbz	r3, .L67
	adds	r0, r0, #156
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [r4, #24]
.L67:
	ldr	r3, [r0, #160]
	cbz	r3, .L68
	adds	r0, r0, #160
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [r4, #24]
.L68:
	ldr	r3, [r0, #164]
	cbz	r3, .L69
	adds	r0, r0, #164
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [r4, #24]
.L69:
	bl	free(PLT)
.L66:
	movs	r3, #0
	str	r3, [r4, #24]
	pop	{r4, pc}
	.size	_libaroma_ctl_list_free_state, .-_libaroma_ctl_list_free_state
	.section	.text._libaroma_ctl_list_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_destroy
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_destroy, %function
_libaroma_ctl_list_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L99
	ldr	r3, [r1, #4]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r1
.LPIC10:
	add	r2, pc
	cmp	r3, r2
	beq	.L98
	pop	{r4, r5, r6, r7, r8, pc}
.L98:
	ldr	r8, [r1]
	mov	r6, r0
	ldr	r4, [r8, #20]
	cbz	r4, .L89
.L90:
	ldr	r3, [r4, #20]
	mov	r1, r4
	mov	r0, r6
	ldr	r5, [r4, #28]
	ldr	r3, [r3, #8]
	cbz	r3, .L88
	blx	r3
.L88:
	mov	r0, r4
	bl	_libaroma_ctl_list_free_state(PLT)
	mov	r0, r4
	mov	r4, r5
	bl	free(PLT)
	cmp	r5, #0
	bne	.L90
.L89:
	ldr	r3, [r8, #36]
	cmp	r3, #0
	ble	.L87
	ldr	r0, [r8, #40]
	bl	free(PLT)
.L87:
	add	r0, r8, #56
	bl	omp_destroy_nest_lock(PLT)
	add	r0, r8, #44
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r8
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r7]
	str	r3, [r7, #4]
	pop	{r4, r5, r6, r7, r8, pc}
.L100:
	.align	2
.L99:
	.word	.LANCHOR0-(.LPIC10+4)
	.size	_libaroma_ctl_list_destroy, .-_libaroma_ctl_list_destroy
	.section	.text._libaroma_ctl_list_init_state,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_init_state
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_init_state, %function
_libaroma_ctl_list_init_state:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	push	{r4, lr}
	mov	r4, r0
	cbz	r3, .L105
	movs	r0, #2
	pop	{r4, pc}
.L105:
	movs	r1, #1
	movs	r0, #168
	bl	calloc(PLT)
	str	r0, [r4, #24]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	pop	{r4, pc}
	.size	_libaroma_ctl_list_init_state, .-_libaroma_ctl_list_init_state
	.section	.text._libaroma_ctl_list_init_state_cache,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_init_state_cache
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_init_state_cache, %function
_libaroma_ctl_list_init_state_cache:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	mov	r4, r1
	mov	r5, r0
	bl	libaroma_ctl_scroll_get_client(PLT)
	cbz	r0, .L107
	ldr	r2, .L122
	ldr	r3, [r0, #4]
.LPIC11:
	add	r2, pc
	cmp	r3, r2
	beq	.L119
.L112:
	movs	r0, #0
.L107:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L119:
	ldr	r6, [r4, #24]
	ldr	r7, [r0]
	cmp	r6, #0
	beq	.L112
	ldr	r1, [r6, #156]
	cbz	r1, .L120
.L108:
	ldr	r1, [r6, #160]
	cbz	r1, .L121
.L109:
	mov	r0, r5
	bl	libaroma_ctl_scroll_get_bg_color(PLT)
	ldr	r1, [r4, #24]
	mov	r8, r0
	ldr	r2, [r1, #156]
	cbz	r2, .L110
	ldr	r6, [r7, #4]
	movs	r3, #4
	str	r3, [sp, #4]
	mov	r1, r4
	mov	r0, r5
	mov	r3, r8
	str	r6, [sp]
	bl	_libaroma_ctl_list_draw_item_fresh(PLT)
	ldr	r1, [r4, #24]
.L110:
	ldr	r2, [r1, #160]
	movs	r0, #1
	cmp	r2, #0
	beq	.L107
	ldr	r6, [r7, #4]
	movs	r7, #5
	mov	r0, r5
	mov	r1, r4
	mov	r3, r8
	stmia	sp, {r6, r7}
	bl	_libaroma_ctl_list_draw_item_fresh(PLT)
	movs	r0, #1
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L120:
	ldr	lr, [r4, #4]
	mov	r2, r1
	ldr	r0, [r5, #24]
	mov	r3, r1
	str	r1, [sp]
	mov	r1, lr
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r6, #156]
	ldr	r6, [r4, #24]
	b	.L108
.L121:
	ldr	lr, [r4, #4]
	mov	r2, r1
	ldr	r0, [r5, #24]
	mov	r3, r1
	str	r1, [sp]
	mov	r1, lr
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r6, #160]
	b	.L109
.L123:
	.align	2
.L122:
	.word	.LANCHOR0-(.LPIC11+4)
	.size	_libaroma_ctl_list_init_state_cache, .-_libaroma_ctl_list_init_state_cache
	.section	.text._libaroma_ctl_list_draw_item,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_draw_item
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_draw_item, %function
_libaroma_ctl_list_draw_item:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	it	ne
	cmpne	r1, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	sub	sp, sp, #116
	mov	r5, r2
	ite	eq
	moveq	fp, #1
	movne	fp, #0
	bne	.L147
.L124:
	add	sp, sp, #116
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L147:
	mov	r7, r3
	mov	r8, r0
	bl	libaroma_ctl_scroll_get_client(PLT)
	cmp	r0, #0
	beq	.L124
	ldr	r2, .L150
	ldr	r3, [r0, #4]
.LPIC12:
	add	r2, pc
	cmp	r3, r2
	bne	.L124
	ldr	r3, [r4, #24]
	ldr	r0, [r0]
	str	r0, [sp, #52]
	cbz	r3, .L128
	ldrb	r2, [r3]	@ zero_extendqisi2
	cbnz	r2, .L148
.L128:
	ldr	r6, [sp, #52]
	ldr	r6, [r6, #4]
	str	r6, [sp]
	movs	r6, #0
.L146:
	mov	r0, r8
	mov	r1, r4
	mov	r2, r5
	mov	r3, r7
	str	r6, [sp, #4]
	bl	_libaroma_ctl_list_draw_item_fresh(PLT)
	b	.L124
.L148:
	ldr	r9, [r3, #156]
	mov	lr, #255
	str	fp, [sp]
	mov	r0, r5
	str	fp, [sp, #4]
	mov	r2, fp
	ldr	r6, [r9]
	mov	r1, r9
	mov	r3, fp
	add	r10, sp, #72
	str	r6, [sp, #8]
	ldr	r6, [r9, #4]
	add	r9, sp, #80
	str	fp, [sp, #16]
	str	fp, [sp, #24]
	str	r6, [sp, #12]
	add	r6, sp, #56
	str	r6, [sp, #36]
	add	r6, sp, #64
	str	fp, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	str	r6, [sp, #40]
	add	r6, sp, #88
	str	r6, [sp, #44]
	add	r6, sp, #96
	str	fp, [sp, #72]
	str	fp, [sp, #80]
	str	r6, [sp, #48]
.L129:
	ldr	r0, [r4, #24]
	mov	r1, r10
	mov	r2, r9
	adds	r0, r0, #4
	bl	libaroma_ripple_loop(PLT)
	cmp	r0, #0
	beq	.L149
	movs	r1, #0
	movs	r0, #1
	str	r1, [sp, #88]
	ldr	fp, [r4]
	bl	libaroma_dp(PLT)
	ldr	r6, [r4, #24]
	ldr	r3, [sp, #80]
	add	lr, fp, r0
	ldr	r1, [r5]
	adds	r0, r6, #4
	add	r6, sp, #64
	ldr	r2, [r5, #4]
	str	r6, [sp]
	add	r6, sp, #88
	str	r6, [sp, #4]
	add	r6, sp, #96
	str	r3, [sp, #16]
	add	r3, sp, #104
	str	r6, [sp, #8]
	movs	r6, #0
	str	r3, [sp, #12]
	add	r3, sp, #56
	str	lr, [sp, #96]
	str	r6, [sp, #104]
	strb	r6, [sp, #56]
	strb	r6, [sp, #64]
	bl	libaroma_ripple_calculation(PLT)
	cmp	r0, #0
	beq	.L129
	ldr	r3, [r4, #24]
	movs	r2, #0
	ldrb	r0, [sp, #56]	@ zero_extendqisi2
	mov	lr, #2
	ldr	r3, [r3, #160]
	str	r2, [sp]
	str	r2, [sp, #4]
	ldr	r6, [r3]
	mov	r1, r3
	str	r6, [sp, #8]
	ldr	r3, [r3, #4]
	str	r2, [sp, #24]
	str	r2, [sp, #28]
	str	r3, [sp, #12]
	mov	r3, r2
	str	r0, [sp, #20]
	mov	r0, r5
	str	lr, [sp, #16]
	bl	libaroma_draw_ex2(PLT)
	ldr	r2, [r4, #24]
	mov	r0, r5
	ldr	r3, [sp, #88]
	ldr	lr, [sp, #96]
	ldr	r1, [r2, #160]
	ldr	r6, [sp, #104]
	mov	r2, r3
	str	r3, [sp]
	mov	r3, lr
	str	lr, [sp, #4]
	ldrb	lr, [sp, #64]	@ zero_extendqisi2
	str	r6, [sp, #8]
	str	lr, [sp, #12]
	bl	libaroma_draw_mask_circle(PLT)
	b	.L129
.L149:
	ldr	r3, [r4, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L124
	ldr	r6, [sp, #52]
	ldr	r6, [r6, #4]
	str	r6, [sp]
	movs	r6, #16
	b	.L146
.L151:
	.align	2
.L150:
	.word	.LANCHOR0-(.LPIC12+4)
	.size	_libaroma_ctl_list_draw_item, .-_libaroma_ctl_list_draw_item
	.section	.text._libaroma_ctl_list_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_draw, %function
_libaroma_ctl_list_draw:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	ldr	r5, .L183
	ldr	r3, [r1, #4]
.LPIC13:
	add	r5, pc
	ldr	r4, [sp, #96]
	cmp	r3, r5
	beq	.L178
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L178:
	ldr	r5, [r1]
	mov	r7, r2
	mov	r8, r0
	ldr	r3, [r5, #8]
	cmp	r4, r3
	blt	.L179
.L154:
	ldr	r2, [r5]
	ldr	r9, [sp, #104]
	subs	r1, r2, r3
	add	r9, r9, r4
	cmp	r9, r1
	bgt	.L180
.L155:
	add	r6, r5, #56
	mov	r0, r6
	str	r6, [sp, #44]
	bl	omp_set_nest_lock(PLT)
	ldr	r10, [r5, #20]
	cmp	r10, #0
	beq	.L156
	ldmia	r10, {r2, r3}
	add	r3, r3, r2
	cmp	r4, r3
	it	ge
	movge	r3, r10
	bge	.L158
.L157:
	mov	r0, r8
	bl	libaroma_ctl_scroll_get_bg_color(PLT)
	ldr	r2, [r10]
	str	r0, [sp, #36]
	cmp	r9, r2
	ble	.L167
	str	r8, [sp, #40]
	add	fp, sp, #48
	ldr	r8, [sp, #100]
.L168:
	cmp	r4, r2
	mov	r0, #0
	str	r0, [sp, #48]
	ldr	r1, [r10, #4]
	bgt	.L162
	ldr	r3, [r7, #4]
	adds	r0, r2, r1
	add	r3, r3, r4
	cmp	r0, r3
	blt	.L181
.L162:
	movs	r2, #0
	mov	r0, r8
	str	r2, [sp]
	mov	r3, r2
	mov	r5, r2
	bl	libaroma_canvas_new_ex(PLT)
	mov	r2, r0
	str	r0, [sp, #48]
.L163:
	cbz	r2, .L164
	ldr	r0, [sp, #40]
	mov	r1, r10
	ldr	r3, [sp, #36]
	bl	_libaroma_ctl_list_draw_item(PLT)
	cmp	r5, #0
	beq	.L182
.L165:
	mov	r0, fp
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L164:
	ldr	r10, [r10, #28]
	cmp	r10, #0
	beq	.L167
	ldr	r2, [r10]
	cmp	r9, r2
	bgt	.L168
	b	.L167
.L159:
	ldmia	r3, {r1, r2}
	add	r2, r2, r1
	cmp	r4, r2
	blt	.L176
.L158:
	ldr	r3, [r3, #28]
	cmp	r3, #0
	bne	.L159
.L156:
	mov	r0, r8
	bl	libaroma_ctl_scroll_get_bg_color(PLT)
.L167:
	ldr	r0, [sp, #44]
	bl	omp_unset_nest_lock(PLT)
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L180:
	ldr	r1, [sp, #104]
	subs	r3, r3, r2
	add	r6, r9, r3
	mov	r0, r8
	rsb	r10, r6, r1
	bl	libaroma_ctl_scroll_get_bg_color(PLT)
	movs	r3, #255
	str	r0, [sp, #4]
	str	r3, [sp, #8]
	mov	r2, r10
	str	r6, [sp]
	mov	r0, r7
	movs	r1, #0
	ldr	r3, [sp, #100]
	bl	libaroma_draw_rect(PLT)
	b	.L155
.L179:
	subs	r6, r3, r4
	bl	libaroma_ctl_scroll_get_bg_color(PLT)
	movs	r3, #255
	movs	r1, #0
	str	r0, [sp, #4]
	mov	r2, r1
	str	r3, [sp, #8]
	mov	r0, r7
	ldr	r3, [sp, #100]
	str	r6, [sp]
	bl	libaroma_draw_rect(PLT)
	ldr	r3, [r5, #8]
	b	.L154
.L181:
	str	r1, [sp]
	subs	r2, r2, r4
	mov	r0, r7
	movs	r1, #0
	mov	r3, r8
	movs	r5, #1
	bl	libaroma_canvas_area(PLT)
	str	r0, [sp, #48]
	mov	r2, r0
	b	.L163
.L182:
	ldr	r6, [sp, #48]
	mov	r2, r5
	ldr	r3, [r10]
	str	r5, [sp]
	str	r5, [sp, #4]
	mov	r1, r6
	ldr	r0, [r6]
	subs	r3, r3, r4
	str	r0, [sp, #8]
	mov	r0, r7
	ldr	r6, [r6, #4]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r6, [sp, #12]
	movs	r6, #255
	str	r6, [sp, #20]
	str	r5, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	b	.L165
.L176:
	mov	r10, r3
	b	.L157
.L184:
	.align	2
.L183:
	.word	.LANCHOR0-(.LPIC13+4)
	.size	_libaroma_ctl_list_draw, .-_libaroma_ctl_list_draw
	.section	.text._libaroma_ctl_list_dodraw_item,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_dodraw_item
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_dodraw_item, %function
_libaroma_ctl_list_dodraw_item:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r1
	sub	sp, sp, #28
	cbz	r1, .L188
	ldmia	r1, {r1, r2}
	mov	r5, r0
	bl	libaroma_ctl_scroll_is_visible(PLT)
	cbnz	r0, .L195
.L188:
	movs	r0, #0
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L195:
	movs	r6, #0
	mov	r0, r5
	bl	libaroma_ctl_scroll_get_bg_color(PLT)
	ldr	r1, [r4, #4]
	mov	r7, r0
	mov	r2, r6
	ldr	r0, [r5, #24]
	mov	r3, r6
	str	r6, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #16]
	cbz	r0, .L190
	mov	r2, r0
	mov	r3, r7
	mov	r1, r4
	mov	r0, r5
	add	r7, sp, #24
	bl	_libaroma_ctl_list_draw_item(PLT)
	ldr	lr, [r7, #-8]!
	mov	r2, r6
	ldr	r3, [r4]
	mov	r0, r5
	ldr	r4, [lr]
	mov	r1, lr
	str	r4, [sp]
	ldr	r4, [lr, #4]
	str	r6, [sp, #8]
	str	r4, [sp, #4]
	bl	libaroma_ctl_scroll_blit(PLT)
	mov	r1, r6
	mov	r4, r0
	mov	r0, r7
	bl	libaroma_canvas_free_ex1(PLT)
	mov	r0, r4
.L196:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L190:
	mov	r4, r0
	mov	r0, r4
	b	.L196
	.size	_libaroma_ctl_list_dodraw_item, .-_libaroma_ctl_list_dodraw_item
	.section	.text._libaroma_ctl_list_item_by_y,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_item_by_y
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_item_by_y, %function
_libaroma_ctl_list_item_by_y:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L205
	ldr	r3, [r1, #4]
.LPIC14:
	add	r0, pc
	cmp	r3, r0
	bne	.L201
	ldr	r3, [r1]
	ldr	r0, [r3, #20]
	cbz	r0, .L198
.L200:
	ldr	r3, [r0]
	cmp	r3, r2
	bgt	.L199
	ldr	r1, [r0, #4]
	add	r3, r3, r1
	cmp	r2, r3
	blt	.L198
.L199:
	ldr	r0, [r0, #28]
	cmp	r0, #0
	bne	.L200
	bx	lr
.L201:
	movs	r0, #0
.L198:
	bx	lr
.L206:
	.align	2
.L205:
	.word	.LANCHOR0-(.LPIC14+4)
	.size	_libaroma_ctl_list_item_by_y, .-_libaroma_ctl_list_item_by_y
	.section	.text._libaroma_ctl_list_scroll_message,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_scroll_message
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_scroll_message, %function
_libaroma_ctl_list_scroll_message:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	subs	r5, r3, #1
	sub	sp, sp, #36
	mov	r8, r0
	mov	r4, r2
	ldr	r7, [sp, #68]
	ldr	r6, [sp, #72]
	cmp	r5, #4
	bhi	.L237
	tbb	[pc, r5]
.L210:
	.byte	(.L209-.L210)/2
	.byte	(.L211-.L210)/2
	.byte	(.L212-.L210)/2
	.byte	(.L213-.L210)/2
	.byte	(.L212-.L210)/2
	.align	1
.L212:
	ldr	r1, [r4, #28]
	str	r7, [r4, #76]
	str	r6, [r4, #80]
	cbz	r1, .L237
	ldr	r0, [r1, #24]
	cbz	r0, .L232
	cmp	r3, #5
	add	r0, r0, #4
	beq	.L281
	movs	r1, #0
	str	r3, [sp, #12]
	bl	libaroma_ripple_up(PLT)
	and	r2, r0, #4
	ldr	r3, [sp, #12]
	and	r0, r2, #255
	ldr	r1, [r4, #28]
	cbz	r2, .L232
	movs	r0, #16
.L232:
	ldr	r2, [r1, #20]
	ldr	r5, [r2]
	cbz	r5, .L237
	ldr	lr, [r1]
	cmp	r3, #3
	ite	ne
	movne	r2, #4
	moveq	r2, #2
	str	r7, [sp]
	mov	r3, r0
	mov	r0, r8
	rsb	r6, lr, r6
	str	r6, [sp, #4]
	blx	r5
	lsls	r3, r0, #31
	bmi	.L278
.L237:
	movs	r0, #0
.L208:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L213:
	ldr	r3, [r4, #28]
	str	r7, [r4, #76]
	str	r6, [r4, #80]
	cmp	r3, #0
	beq	.L237
	ldr	r2, [r3, #20]
	ldr	r5, [r2]
	cbz	r5, .L227
	str	r7, [sp]
	mov	r1, r3
	ldr	lr, [r3]
	mov	r0, r8
	movs	r3, #0
	movs	r2, #3
	rsb	lr, lr, r6
	str	lr, [sp, #4]
	blx	r5
	ldr	r3, [r4, #28]
	and	r5, r0, #1
.L227:
	ldr	r0, [r3, #24]
	cbz	r0, .L228
	adds	r0, r0, #4
	mov	r1, r7
	mov	r2, r6
	bl	libaroma_ripple_move(PLT)
.L228:
	cmp	r5, #0
	beq	.L237
.L278:
	mov	r0, r8
	ldr	r1, [r4, #28]
	bl	_libaroma_ctl_list_dodraw_item(PLT)
	cmp	r0, #0
	beq	.L237
	movs	r0, #2
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L211:
	str	r7, [sp, #16]
	add	r3, r4, #68
	str	r6, [sp, #20]
	str	r7, [sp, #24]
	str	r6, [sp, #28]
	vldr	d16, [sp, #16]
	vldr	d17, [sp, #24]
	vst1.32	{q8}, [r3]
	ldr	r0, [r4, #28]
	cmp	r0, #0
	beq	.L237
	ldr	r2, [r0, #20]
	ldr	r5, [r2]
	cmp	r5, #0
	beq	.L238
	str	r7, [sp]
	mov	r1, r0
	ldr	lr, [r0]
	movs	r2, #1
	mov	r0, r8
	movs	r3, #0
	rsb	lr, lr, r6
	str	lr, [sp, #4]
	blx	r5
	tst	r0, #2
	mov	r9, r0
	itt	eq
	andeq	r5, r9, #1
	ldreq	r0, [r4, #28]
	beq	.L218
	ldr	r3, [r4, #28]
	and	r5, r9, #1
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L228
	movs	r2, #0
	strb	r2, [r3]
	b	.L228
.L209:
	ldr	r3, [r4, #8]
	cmp	r3, r6
	bgt	.L237
	ldr	r2, [r4]
	subs	r3, r2, r3
	cmp	r6, r3
	bgt	.L237
	mov	r0, r8
	mov	r2, r6
	bl	_libaroma_ctl_list_item_by_y(PLT)
	cmp	r0, #0
	beq	.L237
	ldrh	r3, [r0, #16]
	lsls	r2, r3, #31
	itt	mi
	strmi	r0, [r4, #28]
	movmi	r0, #1
	bmi	.L208
	b	.L237
.L238:
	mov	r9, r5
.L218:
	bl	_libaroma_ctl_list_init_state(PLT)
	cmp	r0, #0
	beq	.L228
	ldr	r1, [r4, #28]
	mov	r0, r8
	bl	_libaroma_ctl_list_init_state_cache(PLT)
	ldr	r3, [r4, #28]
	tst	r9, #8
	ite	ne
	movne	r2, #2
	moveq	r2, #1
	add	r9, r4, #44
	ldr	r3, [r3, #24]
	mov	r0, r9
	strb	r2, [r3]
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #28]
	mov	r1, r7
	mov	r2, r6
	ldr	r0, [r3, #24]
	adds	r0, r0, #4
	bl	libaroma_ripple_down(PLT)
	mov	r0, r8
	ldr	r1, [r4, #28]
	bl	__libaroma_ctl_list_item_reg_thread(PLT)
	mov	r0, r9
	bl	omp_unset_nest_lock(PLT)
	b	.L228
.L281:
	str	r3, [sp, #12]
	bl	libaroma_ripple_cancel(PLT)
	ldr	r1, [r4, #28]
	movs	r0, #0
	ldr	r3, [sp, #12]
	b	.L232
	.size	_libaroma_ctl_list_scroll_message, .-_libaroma_ctl_list_scroll_message
	.section	.text._libaroma_ctl_list_message,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_message
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_message, %function
_libaroma_ctl_list_message:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	ldr	r5, .L292
	ldr	r4, [r1, #4]
.LPIC15:
	add	r5, pc
	cmp	r4, r5
	it	ne
	movne	r0, #0
	beq	.L290
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L290:
	ldr	r7, [r1]
	mov	r6, r0
	str	r1, [sp, #28]
	str	r2, [sp, #24]
	add	r4, r7, #56
	str	r3, [sp, #20]
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	ldr	r2, [sp, #24]
	ldr	r1, [sp, #28]
	ldr	r3, [sp, #20]
	ldrb	r0, [r2]	@ zero_extendqisi2
	cmp	r0, #128
	it	ne
	movne	r5, #0
	beq	.L291
.L284:
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L291:
	ldr	r5, [r2, #8]
	mov	r0, r6
	ldr	r6, [r2, #12]
	mov	r2, r7
	str	r3, [sp, #4]
	ldr	r3, [sp, #56]
	str	r6, [sp]
	str	r3, [sp, #8]
	mov	r3, r5
	bl	_libaroma_ctl_list_scroll_message(PLT)
	mov	r5, r0
	b	.L284
.L293:
	.align	2
.L292:
	.word	.LANCHOR0-(.LPIC15+4)
	.size	_libaroma_ctl_list_message, .-_libaroma_ctl_list_message
	.section	.text.libaroma_ctl_list,"ax",%progbits
	.align	2
	.global	libaroma_ctl_list
	.thumb
	.thumb_func
	.type	libaroma_ctl_list, %function
libaroma_ctl_list:
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r0
	sub	sp, sp, #16
	mov	r9, r1
	movs	r0, #84
	movs	r1, #1
	mov	r7, r2
	mov	r6, r3
	ldrh	r8, [sp, #64]
	ldrb	r5, [sp, #68]	@ zero_extendqisi2
	bl	calloc(PLT)
	mov	r4, r0
	cbz	r0, .L295
	ldr	r0, [sp, #60]
	bl	libaroma_window_measure_point(PLT)
	str	r0, [r4, #8]
	ldr	r0, [sp, #56]
	bl	libaroma_window_measure_point(PLT)
	ldr	r3, [r4, #8]
	str	r0, [r4, #4]
	add	r0, r4, #44
	strb	r5, [r4, #16]
	lsls	r3, r3, #1
	str	r3, [r4]
	bl	omp_init_nest_lock(PLT)
	add	r0, r4, #56
	bl	omp_init_nest_lock(PLT)
	ldr	r3, [sp, #48]
	mov	r1, r9
	mov	r2, r7
	str	r5, [sp, #12]
	mov	r0, r10
	str	r8, [sp, #8]
	str	r3, [sp]
	ldr	r3, [sp, #52]
	str	r3, [sp, #4]
	mov	r3, r6
	bl	libaroma_ctl_scroll(PLT)
	ldr	r2, .L298
	mov	r5, r0
	mov	r1, r4
.LPIC16:
	add	r2, pc
	bl	libaroma_ctl_scroll_set_client(PLT)
	mov	r0, r5
	ldr	r1, [r4]
	bl	libaroma_ctl_scroll_set_height(PLT)
	mov	r0, r5
.L295:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L299:
	.align	2
.L298:
	.word	.LANCHOR0-(.LPIC16+4)
	.size	libaroma_ctl_list, .-libaroma_ctl_list
	.section	.text.__libaroma_ctl_list_repos_next_items,"ax",%progbits
	.align	2
	.global	__libaroma_ctl_list_repos_next_items
	.thumb
	.thumb_func
	.type	__libaroma_ctl_list_repos_next_items, %function
__libaroma_ctl_list_repos_next_items:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L309
.L303:
	str	r1, [r0]
	ldr	r3, [r0, #4]
	ldr	r0, [r0, #28]
	add	r1, r1, r3
	cmp	r0, #0
	bne	.L303
.L309:
	movs	r0, #1
	bx	lr
	.size	__libaroma_ctl_list_repos_next_items, .-__libaroma_ctl_list_repos_next_items
	.section	.text.libaroma_ctl_list_getpos,"ax",%progbits
	.align	2
	.global	libaroma_ctl_list_getpos
	.thumb
	.thumb_func
	.type	libaroma_ctl_list_getpos, %function
libaroma_ctl_list_getpos:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	libaroma_ctl_scroll_get_client(PLT)
	cbz	r0, .L311
	ldr	r2, .L315
	ldr	r3, [r0, #4]
.LPIC17:
	add	r2, pc
	cmp	r3, r2
	bne	.L313
	ldr	r0, [r0]
	adds	r0, r0, #68
	pop	{r3, pc}
.L313:
	movs	r0, #0
.L311:
	pop	{r3, pc}
.L316:
	.align	2
.L315:
	.word	.LANCHOR0-(.LPIC17+4)
	.size	libaroma_ctl_list_getpos, .-libaroma_ctl_list_getpos
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text._libaroma_ctl_list_thread._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_thread._omp_fn.0, %function
_libaroma_ctl_list_thread._omp_fn.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r5, [r0, #4]
	mov	r8, r0
	bl	omp_get_num_threads(PLT)
	mov	r4, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r4
	mov	r6, r0
	mov	r0, r5
	bl	__aeabi_idiv(PLT)
	mov	r1, r4
	mov	r10, r0
	mov	r0, r5
	bl	__aeabi_idivmod(PLT)
	cmp	r6, r1
	itt	lt
	addlt	r10, r10, #1
	movlt	r1, #0
	mla	r6, r6, r10, r1
	add	r10, r10, r6
	cmp	r6, r10
	bge	.L317
	lsls	r7, r6, #2
	mov	r9, r6
.L321:
	ldr	r3, [r8, #8]
	ldr	r4, [r3, r7]
	cbz	r4, .L326
	ldr	r0, [r4, #24]
	mov	r5, r0
	mov	r6, r0
	cbz	r0, .L331
	ldrb	r5, [r0]	@ zero_extendqisi2
	mov	r6, r5
	cmp	r5, #0
	bne	.L351
.L331:
	ldr	r3, [r4, #20]
	ldr	fp, [r3]
	cmp	fp, #0
	beq	.L330
	ldmia	r4, {r1, r2}
	ldr	r0, [r8]
	bl	libaroma_ctl_scroll_is_visible(PLT)
	movs	r2, #0
	mov	r3, r0
	mov	r1, r4
	ldr	r0, [r8]
	str	r2, [sp]
	str	r2, [sp, #4]
	movs	r2, #16
	blx	fp
	tst	r0, #1
	it	ne
	movne	r5, #1
	tst	r0, #4
	it	ne
	movne	r6, #1
.L330:
	cbnz	r5, .L324
.L328:
	cbnz	r6, .L326
	ldr	r3, [r8, #8]
	str	r6, [r3, r7]
.L326:
	add	r9, r9, #1
	adds	r7, r7, #4
	cmp	r9, r10
	bne	.L321
.L317:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L324:
	mov	r1, r4
	ldr	r0, [r8]
	bl	_libaroma_ctl_list_dodraw_item(PLT)
	cmp	r0, #0
	beq	.L328
	mov	r2, #1
	strb	r2, [r8, #12]
	b	.L328
.L351:
	adds	r0, r0, #4
	movs	r1, #0
	bl	libaroma_ripple_thread(PLT)
	and	r3, r0, #4
	mov	fp, r0
	and	r5, r0, #1
	and	r6, r3, #255
	cbz	r3, .L333
	ldr	r3, [r4, #20]
	ldr	r6, [r3]
	cbz	r6, .L333
	ldr	r0, [r8]
	bl	libaroma_ctl_list_getpos(PLT)
	cbz	r0, .L352
	ldr	r6, [r0, #12]
	ldr	r2, [r4]
	ldr	r3, [r0, #8]
	subs	r6, r6, r2
.L336:
	ldr	lr, [r4, #20]
	mov	r1, r4
	ldr	r0, [r8]
	movs	r2, #5
	str	r3, [sp]
	movs	r3, #16
	str	r6, [sp, #4]
	ldr	r6, [lr]
	blx	r6
	tst	r0, #1
	ubfx	r6, r0, #2, #1
	it	ne
	movne	r5, #1
.L333:
	tst	fp, #8
	beq	.L331
	mov	r0, r4
	movs	r6, #1
	bl	_libaroma_ctl_list_free_state(PLT)
	b	.L331
.L352:
	mov	r6, r0
	mov	r3, r0
	b	.L336
	.size	_libaroma_ctl_list_thread._omp_fn.0, .-_libaroma_ctl_list_thread._omp_fn.0
	.section	.text._libaroma_ctl_list_thread,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_list_thread
	.thumb
	.thumb_func
	.type	_libaroma_ctl_list_thread, %function
_libaroma_ctl_list_thread:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L375
	ldr	r3, [r1, #4]
.LPIC18:
	add	r2, pc
	cmp	r3, r2
	beq	.L374
	movs	r0, #0
	bx	lr
.L374:
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r4, [r1]
	sub	sp, sp, #20
	add	r9, r4, #56
	add	r8, r4, #44
	mov	r0, r9
	bl	omp_set_nest_lock(PLT)
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	r6, [r4, #36]
	cmp	r6, #0
	it	le
	movle	r6, #0
	ble	.L355
	add	r0, r6, r6, lsl #3
	lsls	r0, r0, #2
	bl	malloc(PLT)
	cmp	r6, #8
	mov	r7, r0
	ble	.L366
	sub	lr, r6, #9
	movs	r2, #0
	bic	lr, lr, #7
	mov	r1, r2
	add	lr, lr, #8
	add	r3, r0, #92
.L357:
	ldr	r0, [r4, #40]
	adds	r1, r1, #8
	cmp	r1, lr
	pld	[r3]
	add	r3, r3, #32
	ldr	r0, [r0, r2]
	str	r0, [r3, #-124]
	ldr	r0, [r4, #40]
	add	r0, r0, r2
	ldr	r0, [r0, #4]
	str	r0, [r3, #-120]
	ldr	r0, [r4, #40]
	add	r0, r0, r2
	ldr	r0, [r0, #8]
	str	r0, [r3, #-116]
	ldr	r0, [r4, #40]
	add	r0, r0, r2
	ldr	r0, [r0, #12]
	str	r0, [r3, #-112]
	ldr	r0, [r4, #40]
	add	r0, r0, r2
	ldr	r0, [r0, #16]
	str	r0, [r3, #-108]
	ldr	r0, [r4, #40]
	add	r0, r0, r2
	ldr	r0, [r0, #20]
	str	r0, [r3, #-104]
	ldr	r0, [r4, #40]
	add	r0, r0, r2
	ldr	r0, [r0, #24]
	str	r0, [r3, #-100]
	ldr	r0, [r4, #40]
	add	r0, r0, r2
	add	r2, r2, #32
	ldr	r0, [r0, #28]
	str	r0, [r3, #-96]
	bne	.L357
.L356:
	lsls	r2, r1, #2
.L359:
	ldr	r3, [r4, #40]
	adds	r1, r1, #1
	cmp	r6, r1
	ldr	r3, [r3, r2]
	str	r3, [r7, r2]
	add	r2, r2, #4
	bgt	.L359
	ldr	r0, .L375+4
	movs	r4, #0
	mov	r2, r4
	mov	r1, sp
	stmia	sp, {r5, r6, r7}
.LPIC19:
	add	r0, pc
	strb	r4, [sp, #12]
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	_libaroma_ctl_list_thread._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	ldmia	sp, {r7, fp}
	ldr	r10, [sp, #8]
	ldrb	r6, [sp, #12]	@ zero_extendqisi2
	cmp	fp, r4
	it	gt
	subgt	r5, r10, #4
	bgt	.L363
	b	.L362
.L361:
	cmp	r4, fp
	beq	.L362
.L363:
	ldr	r1, [r5, #4]!
	adds	r4, r4, #1
	cmp	r1, #0
	beq	.L361
	ldrh	r3, [r1, #16]
	lsls	r3, r3, #30
	bmi	.L361
	mov	r0, r7
	bl	__libaroma_ctl_list_item_unreg_thread(PLT)
	b	.L361
.L362:
	mov	r0, r10
	bl	free(PLT)
.L355:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r9
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r6
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L366:
	movs	r1, #0
	b	.L356
.L376:
	.align	2
.L375:
	.word	.LANCHOR0-(.LPIC18+4)
	.word	_libaroma_ctl_list_thread._omp_fn.0-(.LPIC19+4)
	.size	_libaroma_ctl_list_thread, .-_libaroma_ctl_list_thread
	.section	.text.libaroma_ctl_list_get_item_internal,"ax",%progbits
	.align	2
	.global	libaroma_ctl_list_get_item_internal
	.thumb
	.thumb_func
	.type	libaroma_ctl_list_get_item_internal, %function
libaroma_ctl_list_get_item_internal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r1
	mov	r6, r2
	bl	libaroma_ctl_scroll_get_client(PLT)
	cbz	r0, .L378
	ldr	r2, .L403
	ldr	r3, [r0, #4]
.LPIC20:
	add	r2, pc
	cmp	r3, r2
	bne	.L389
	ldr	r4, [r0]
	cbnz	r6, .L379
	adds	r3, r5, #1
	beq	.L400
	cmp	r5, #0
	beq	.L401
.L379:
	add	r7, r4, #56
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r4, [r4, #20]
	cbz	r4, .L381
	cmp	r6, #0
	ite	eq
	moveq	r1, #1
	movne	r1, #0
	beq	.L402
	movs	r3, #0
.L387:
	cmp	r3, r5
	ite	ne
	movne	r2, #0
	andeq	r2, r1, #1
	adds	r3, r3, #1
	cbnz	r2, .L386
	ldr	r2, [r4, #8]
	cmp	r2, r5
	beq	.L386
	ldr	r4, [r4, #28]
	cmp	r4, #0
	bne	.L387
.L381:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L389:
	movs	r0, #0
.L378:
	pop	{r3, r4, r5, r6, r7, pc}
.L402:
	mov	r2, r6
.L384:
	cmp	r2, r5
	ite	ne
	movne	r3, #0
	andeq	r3, r1, #1
	adds	r2, r2, #1
	cbnz	r3, .L386
	ldr	r4, [r4, #28]
	cmp	r4, #0
	bne	.L384
	b	.L381
.L386:
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L401:
	ldr	r0, [r4, #20]
	pop	{r3, r4, r5, r6, r7, pc}
.L400:
	ldr	r0, [r4, #24]
	pop	{r3, r4, r5, r6, r7, pc}
.L404:
	.align	2
.L403:
	.word	.LANCHOR0-(.LPIC20+4)
	.size	libaroma_ctl_list_get_item_internal, .-libaroma_ctl_list_get_item_internal
	.section	.text.libaroma_ctl_list_del_itemp_internal,"ax",%progbits
	.align	2
	.global	libaroma_ctl_list_del_itemp_internal
	.thumb
	.thumb_func
	.type	libaroma_ctl_list_del_itemp_internal, %function
libaroma_ctl_list_del_itemp_internal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	mov	r5, r0
	bl	libaroma_ctl_scroll_get_client(PLT)
	cbz	r0, .L406
	ldr	r2, .L422
	ldr	r3, [r0, #4]
.LPIC21:
	add	r2, pc
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L420
.L406:
	pop	{r4, r5, r6, r7, r8, pc}
.L420:
	ldr	r6, [r0]
	add	r7, r6, #56
	add	r8, r6, #44
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	cmp	r4, #0
	beq	.L407
	ldr	r3, [r6, #20]
	cmp	r3, r4
	ldr	r3, [r6, #24]
	beq	.L421
	cmp	r3, r4
	ldr	r3, [r4, #32]
	ittt	eq
	moveq	r2, #0
	streq	r3, [r6, #24]
	streq	r2, [r3, #28]
	beq	.L410
	ldr	r2, [r4, #28]
	ldr	r1, [r3]
	str	r2, [r3, #28]
	ldr	r2, [r3, #4]
	ldr	r0, [r4, #28]
	add	r1, r1, r2
	str	r3, [r0, #32]
	bl	__libaroma_ctl_list_repos_next_items(PLT)
.L410:
	ldr	r3, [r4, #20]
	ldr	r0, [r4, #4]
	ldr	r1, [r6, #12]
	ldr	r2, [r6]
	ldr	r3, [r3, #8]
	subs	r1, r1, #1
	subs	r2, r2, r0
	str	r1, [r6, #12]
	str	r2, [r6]
	cbz	r3, .L412
	mov	r0, r5
	mov	r1, r4
	blx	r3
.L412:
	mov	r0, r4
	bl	_libaroma_ctl_list_free_state(PLT)
	mov	r1, r4
	mov	r0, r5
	bl	__libaroma_ctl_list_item_unreg_thread(PLT)
	ldr	r3, [r6, #28]
	mov	r0, r4
	cmp	r3, r4
	itt	eq
	moveq	r3, #0
	streq	r3, [r6, #28]
	bl	free(PLT)
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	ldr	r1, [r6]
	bl	libaroma_ctl_scroll_request_height(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L421:
	cmp	r4, r3
	ittt	eq
	moveq	r3, #0
	streq	r3, [r6, #24]
	streq	r3, [r6, #20]
	beq	.L410
	ldr	r3, [r4, #28]
	movs	r2, #0
	ldr	r1, [r4]
	mov	r0, r3
	str	r3, [r6, #20]
	str	r2, [r3, #32]
	bl	__libaroma_ctl_list_repos_next_items(PLT)
	b	.L410
.L407:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r7
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L423:
	.align	2
.L422:
	.word	.LANCHOR0-(.LPIC21+4)
	.size	libaroma_ctl_list_del_itemp_internal, .-libaroma_ctl_list_del_itemp_internal
	.section	.text.libaroma_ctl_list_del_item_internal,"ax",%progbits
	.align	2
	.global	libaroma_ctl_list_del_item_internal
	.thumb
	.thumb_func
	.type	libaroma_ctl_list_del_item_internal, %function
libaroma_ctl_list_del_item_internal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	libaroma_ctl_list_get_item_internal(PLT)
	mov	r1, r0
	mov	r0, r4
	pop	{r4, lr}
	b	libaroma_ctl_list_del_itemp_internal(PLT)
	.size	libaroma_ctl_list_del_item_internal, .-libaroma_ctl_list_del_item_internal
	.section	.text.libaroma_ctl_list_is_valid,"ax",%progbits
	.align	2
	.global	libaroma_ctl_list_is_valid
	.thumb
	.thumb_func
	.type	libaroma_ctl_list_is_valid, %function
libaroma_ctl_list_is_valid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	libaroma_ctl_scroll_get_client(PLT)
	cbz	r0, .L427
	ldr	r3, .L430
	ldr	r0, [r0, #4]
.LPIC22:
	add	r3, pc
	subs	r0, r0, r3
	clz	r0, r0
	lsrs	r0, r0, #5
.L427:
	pop	{r3, pc}
.L431:
	.align	2
.L430:
	.word	.LANCHOR0-(.LPIC22+4)
	.size	libaroma_ctl_list_is_valid, .-libaroma_ctl_list_is_valid
	.section	.text.libaroma_ctl_list_item_setheight,"ax",%progbits
	.align	2
	.global	libaroma_ctl_list_item_setheight
	.thumb
	.thumb_func
	.type	libaroma_ctl_list_item_setheight, %function
libaroma_ctl_list_item_setheight:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	cbz	r1, .L435
	mov	r5, r2
	mov	r6, r0
	bl	libaroma_ctl_scroll_get_client(PLT)
	cbz	r0, .L435
	ldr	r1, .L443
	ldr	r3, [r0, #4]
.LPIC23:
	add	r1, pc
	cmp	r3, r1
	beq	.L441
.L435:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L441:
	ldr	r3, [r4, #4]
	ldr	r7, [r0]
	cmp	r3, r5
	bne	.L442
	movs	r0, #2
	pop	{r3, r4, r5, r6, r7, pc}
.L442:
	ldr	r2, [r7]
	mov	r0, r4
	str	r5, [r4, #4]
	ldr	r1, [r4]
	subs	r3, r2, r3
	add	r5, r5, r3
	str	r5, [r7]
	bl	__libaroma_ctl_list_repos_next_items(PLT)
	mov	r0, r6
	ldr	r1, [r7]
	bl	libaroma_ctl_scroll_request_height(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L444:
	.align	2
.L443:
	.word	.LANCHOR0-(.LPIC23+4)
	.size	libaroma_ctl_list_item_setheight, .-libaroma_ctl_list_item_setheight
	.section	.text.libaroma_ctl_list_item_position,"ax",%progbits
	.align	2
	.global	libaroma_ctl_list_item_position
	.thumb
	.thumb_func
	.type	libaroma_ctl_list_item_position, %function
libaroma_ctl_list_item_position:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r2
	sub	sp, sp, #16
	cbz	r2, .L448
	mov	r5, r1
	cbz	r1, .L448
	mov	r8, r3
	mov	r6, r0
	bl	libaroma_ctl_scroll_get_client(PLT)
	mov	r2, r0
	cbz	r0, .L448
	ldr	r7, .L459
	ldr	r1, [r0, #4]
.LPIC24:
	add	r7, pc
	cmp	r1, r7
	beq	.L458
.L448:
	movs	r3, #0
	mov	r0, r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L458:
	movs	r0, #0
	ldr	r7, [r2]
	str	r0, [sp]
	str	r0, [sp, #8]
	cmp	r8, #0
	beq	.L449
	mov	r1, r6
	mov	r2, sp
	add	r3, sp, #8
	bl	libaroma_window_calculate_pos_abs(PLT)
.L450:
	mov	r0, r6
	movs	r1, #0
	bl	libaroma_ctl_scroll_get_scroll(PLT)
	ldr	ip, [r6, #24]
	movs	r3, #1
	ldr	r1, [r7, #4]
	ldr	r2, [sp, #8]
	ldr	r7, [r7, #8]
	ldr	r6, [r5]
	add	r0, r0, r2
	ldr	r5, [r5, #4]
	ldr	r2, [sp]
	add	r7, r7, r0
	sub	r0, ip, r1, lsl #1
	subs	r6, r6, r7
	str	r6, [r4, #4]
	str	r0, [r4, #8]
	mov	r0, r3
	str	r5, [r4, #12]
	str	r2, [r4]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L449:
	mov	r0, r8
	mov	r1, r6
	mov	r2, sp
	add	r3, sp, #8
	bl	libaroma_window_calculate_pos(PLT)
	b	.L450
.L460:
	.align	2
.L459:
	.word	.LANCHOR0-(.LPIC24+4)
	.size	libaroma_ctl_list_item_position, .-libaroma_ctl_list_item_position
	.section	.text.libaroma_ctl_list_scroll_to_item,"ax",%progbits
	.align	2
	.global	libaroma_ctl_list_scroll_to_item
	.thumb
	.thumb_func
	.type	libaroma_ctl_list_scroll_to_item, %function
libaroma_ctl_list_scroll_to_item:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r1
	cbz	r1, .L464
	mov	r6, r2
	mov	r5, r0
	bl	libaroma_ctl_scroll_get_client(PLT)
	cbz	r0, .L464
	ldr	r3, .L474
	ldr	r1, [r0, #4]
.LPIC25:
	add	r3, pc
	cmp	r1, r3
	beq	.L472
.L464:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L472:
	ldr	r1, [r4, #4]
	mov	r0, r5
	ldr	r2, [r4]
	ldr	r3, [r5, #28]
	add	r2, r2, r1, asr #1
	rsbs	r3, r2, r3, asr #1
	ite	mi
	rsbmi	r1, r3, #0
	movpl	r1, #0
	cbnz	r6, .L473
	bl	libaroma_ctl_scroll_set_pos(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L473:
	bl	libaroma_ctl_scroll_request_pos(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L475:
	.align	2
.L474:
	.word	.LANCHOR0-(.LPIC25+4)
	.size	libaroma_ctl_list_scroll_to_item, .-libaroma_ctl_list_scroll_to_item
	.section	.text.libaroma_ctl_list_add_item_internal,"ax",%progbits
	.align	2
	.global	libaroma_ctl_list_add_item_internal
	.thumb
	.thumb_func
	.type	libaroma_ctl_list_add_item_internal, %function
libaroma_ctl_list_add_item_internal:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r5, [sp, #52]
	cbz	r5, .L479
	mov	r6, r3
	mov	r9, r1
	mov	r7, r2
	mov	r8, r0
	bl	libaroma_ctl_scroll_get_client(PLT)
	mov	r3, r0
	cbz	r0, .L479
	ldr	r1, .L514
	ldr	r2, [r0, #4]
.LPIC26:
	add	r1, pc
	cmp	r2, r1
	beq	.L509
.L479:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L509:
	movs	r0, #36
	movs	r1, #1
	ldr	r4, [r3]
	bl	calloc(PLT)
	mov	r10, r0
	cmp	r0, #0
	beq	.L479
	add	r3, r4, #56
	add	fp, r4, #44
	mov	r0, r3
	str	r3, [sp, #4]
	bl	omp_set_nest_lock(PLT)
	mov	r0, fp
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r4, #24]
	movs	r1, #0
	ldr	r3, [sp, #48]
	str	r7, [r10, #4]
	str	r9, [r10, #8]
	strh	r6, [r10, #16]	@ movhi
	str	r5, [r10, #20]
	str	r3, [r10, #12]
	str	r1, [r10]
	cmp	r0, #0
	beq	.L510
	ldr	r3, [sp, #56]
	cmp	r3, #0
	blt	.L485
	beq	.L511
	ldr	r1, [r4, #20]
	cmp	r1, #0
	beq	.L485
	ldr	r5, [r1, #28]
	movs	r1, #1
	cbnz	r5, .L488
	b	.L485
.L486:
	ldr	r5, [r5, #28]
	cmp	r5, #0
	beq	.L485
.L488:
	ldr	r3, [sp, #56]
	cmp	r1, r3
	add	r1, r1, #1
	bne	.L486
	ldr	r7, [r5]
	mov	r0, r10
	ldr	r1, [r5, #4]
	ldr	r3, [r5, #28]
	str	r5, [r10, #32]
	add	r1, r1, r7
	str	r3, [r10, #28]
	bl	__libaroma_ctl_list_repos_next_items(PLT)
	str	r10, [r5, #28]
	ldr	r1, [r10, #28]
	cmp	r1, #0
	beq	.L512
.L487:
	ldr	r0, [r4]
	ldr	r1, [r10, #4]
	add	r1, r1, r0
	str	r1, [r4]
	b	.L481
.L511:
	ldr	r3, [r4]
	mov	r0, r10
	ldr	r5, [r4, #20]
	ldr	r1, [r4, #8]
	add	r3, r3, r7
	str	r5, [r10, #28]
	str	r1, [r10]
	str	r3, [r4]
	str	r10, [r4, #20]
	bl	__libaroma_ctl_list_repos_next_items(PLT)
.L481:
	ldr	r1, [r4, #12]
	lsls	r3, r6, #30
	add	r1, r1, #1
	str	r1, [r4, #12]
	bmi	.L513
.L489:
	mov	r0, fp
	bl	omp_unset_nest_lock(PLT)
	ldr	r0, [sp, #4]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r8
	ldr	r1, [r4]
	bl	libaroma_ctl_scroll_request_height(PLT)
	mov	r0, r10
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L485:
	ldr	r5, [r0]
	ldr	r1, [r0, #4]
	ldr	r3, [r4]
	str	r0, [r10, #32]
	add	r1, r1, r5
	str	r10, [r0, #28]
	add	r7, r7, r3
	str	r1, [r10]
	str	r10, [r4, #24]
	str	r7, [r4]
	b	.L481
.L513:
	mov	r0, r8
	mov	r1, r10
	bl	__libaroma_ctl_list_item_reg_thread(PLT)
	b	.L489
.L510:
	ldr	r0, [r4]
	ldr	r1, [r4, #8]
	str	r10, [r4, #24]
	add	r0, r0, r7
	str	r10, [r4, #20]
	str	r1, [r10]
	str	r0, [r4]
	b	.L481
.L512:
	str	r10, [r4, #24]
	b	.L487
.L515:
	.align	2
.L514:
	.word	.LANCHOR0-(.LPIC26+4)
	.size	libaroma_ctl_list_add_item_internal, .-libaroma_ctl_list_add_item_internal
	.section	.text.libaroma_listitem_nonitem,"ax",%progbits
	.align	2
	.global	libaroma_listitem_nonitem
	.thumb
	.thumb_func
	.type	libaroma_listitem_nonitem, %function
libaroma_listitem_nonitem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L521
	push	{r4, lr}
	mov	r4, r0
	bl	libaroma_listitem_isdivider(PLT)
	cbz	r0, .L522
	movs	r0, #1
	pop	{r4, pc}
.L522:
	mov	r0, r4
	pop	{r4, lr}
	b	libaroma_listitem_iscaption(PLT)
.L521:
	movs	r0, #1
	bx	lr
	.size	libaroma_listitem_nonitem, .-libaroma_listitem_nonitem
	.section	.data.rel._libaroma_ctl_list_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_ctl_list_handler, %object
	.size	_libaroma_ctl_list_handler, 16
_libaroma_ctl_list_handler:
	.word	_libaroma_ctl_list_draw
	.word	_libaroma_ctl_list_destroy
	.word	_libaroma_ctl_list_thread
	.word	_libaroma_ctl_list_message
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
