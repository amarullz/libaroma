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
	.file	"ctl_scroll.c"
	.section	.text._libaroma_ctl_scroll_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_scroll_destroy
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_destroy, %function
_libaroma_ctl_scroll_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L15
	ldr	r2, [r0, #72]
.LPIC0:
	add	r1, pc
	cmp	r2, r1
	beq	.L14
	bx	lr
.L14:
	push	{r4, lr}
	ldr	r4, [r0, #4]
	ldr	r3, [r4, #204]
	ldr	r3, [r3, #4]
	cbz	r3, .L3
	add	r1, r4, #200
	blx	r3
.L3:
	ldr	r3, [r4]
	cbz	r3, .L4
	mov	r0, r4
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4]
.L4:
	add	r1, r4, #244
	add	r0, r4, #272
	bl	libaroma_cond_free(PLT)
	add	r0, r4, #232
	bl	omp_destroy_nest_lock(PLT)
	add	r0, r4, #220
	bl	omp_destroy_nest_lock(PLT)
	add	r0, r4, #208
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r4
	pop	{r4, lr}
	b	free(PLT)
.L16:
	.align	2
.L15:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_ctl_scroll_destroy, .-_libaroma_ctl_scroll_destroy
	.global	abort
	.section	.text._libaroma_ctl_scroll_draw._omp_fn.1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_draw._omp_fn.1, %function
_libaroma_ctl_scroll_draw._omp_fn.1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r5, #0
	movs	r6, #255
	sub	sp, sp, #36
	mov	r4, r0
	bl	GOMP_sections_next(PLT)
.L22:
	cmp	r0, #1
	beq	.L19
	bcc	.L20
	cmp	r0, #2
	beq	.L21
	bl	abort(PLT)
.L19:
	ldr	lr, [r4, #12]
	cmp	lr, #0
	ble	.L23
	ldr	r7, [r4]
	movs	r2, #0
	ldr	r1, [r4, #4]
	mov	r3, r2
	ldr	r0, [r4, #8]
	ldr	r7, [r7]
	ldr	r1, [r1]
	str	r0, [sp, #4]
	str	r5, [sp]
	mov	r0, r7
	b	.L25
.L21:
	ldr	lr, [r4, #16]
	cmp	lr, #0
	ble	.L23
	ldr	r1, [r4]
	movs	r2, #0
	ldr	r3, [r4, #4]
	ldr	ip, [r4, #20]
	ldr	r7, [r1]
	ldr	r1, [r3]
	ldr	r3, [r4, #12]
	mov	r0, r7
	str	r5, [sp]
	str	ip, [sp, #4]
.L25:
	ldr	r7, [r7]
	str	lr, [sp, #12]
	str	r5, [sp, #16]
	str	r7, [sp, #8]
	str	r6, [sp, #20]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
.L23:
	bl	GOMP_sections_next(PLT)
	b	.L22
.L20:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	b	GOMP_sections_end_nowait(PLT)
	.size	_libaroma_ctl_scroll_draw._omp_fn.1, .-_libaroma_ctl_scroll_draw._omp_fn.1
	.global	__aeabi_idiv
	.section	.text._libaroma_ctl_scroll_draw._omp_fn.2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_draw._omp_fn.2, %function
_libaroma_ctl_scroll_draw._omp_fn.2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r9, #52857
	movw	fp, #25388
	sub	sp, sp, #52
	mov	r4, r0
	bl	GOMP_sections_next(PLT)
.L33:
	cmp	r0, #3
	bhi	.L27
	tbh	[pc, r0, lsl #1]
.L29:
	.2byte	(.L28-.L29)/2
	.2byte	(.L30-.L29)/2
	.2byte	(.L31-.L29)/2
	.2byte	(.L32-.L29)/2
.L27:
	bl	abort(PLT)
.L28:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	GOMP_sections_end_nowait(PLT)
.L30:
	ldr	r3, [r4, #8]
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L35
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	lsls	r2, r2, #31
	bmi	.L35
	ldr	r1, [r3, #24]
	ldr	r2, [r3, #324]
	cmp	r1, r2
	ble	.L35
	ldr	r2, [r3, #36]
	cmp	r2, #0
	ble	.L39
.L51:
	ldrh	r0, [r3, #4]
	bl	libaroma_color_isdark(PLT)
	ldr	r3, [r4, #8]
	cmp	r0, #0
	ite	ne
	movne	r0, r9
	moveq	r0, fp
	str	r0, [sp, #44]
	ldrb	r2, [r3, #61]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L41
	mov	r6, #256
	str	r6, [sp, #36]
.L50:
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	lsls	r3, r3, #29
	bpl	.L62
	movs	r0, #5
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #8]
	mov	r5, r0
	lsl	r10, r0, #1
	ldrb	r2, [r3, #61]	@ zero_extendqisi2
	cbnz	r2, .L49
	ldr	r3, [r3, #36]
	mul	lr, r3, r10
	asr	r10, lr, #8
.L49:
	movs	r0, #18
	bl	libaroma_dp(PLT)
	ldmia	r4, {r2, r3}
	mov	r8, r0
	movs	r0, #3
	ldr	r3, [r3]
	ldr	r6, [r2, #24]
	ldr	r7, [r2, #28]
	str	r3, [sp, #40]
	bl	libaroma_dp(PLT)
	add	r3, r0, r10
	movs	r0, #1
	subs	r6, r6, r3
	sub	r7, r7, r8, lsl #1
	bl	libaroma_dp(PLT)
	mov	r3, r0
	ldr	r0, [sp, #36]
	ldr	ip, [r4, #8]
	ldr	r1, [sp, #44]
	add	r2, r0, r0, lsl #2
	ldrh	r0, [ip, #4]
	str	r3, [sp, #32]
	ubfx	r2, r2, #4, #8
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	movs	r6, #255
	str	r0, [sp, #4]
	mov	r2, r8
	ldr	r3, [sp, #32]
	str	r7, [sp]
	ldr	r0, [sp, #40]
	str	r6, [sp, #8]
	bl	libaroma_draw_rect(PLT)
	ldr	r3, [r4, #8]
	ldrb	r2, [r3, #61]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L63
	ldr	r2, [r4]
	mov	ip, #220
	str	ip, [sp, #40]
	ldr	r0, [r2, #28]
.L46:
	ldr	r1, [r3, #20]
	mul	r0, r0, r7
	bl	__aeabi_idiv(PLT)
	mov	r6, r0
	movs	r0, #36
	bl	libaroma_dp(PLT)
	cmp	r6, r0
	ble	.L44
	movs	r2, #0
.L45:
	ldr	r3, [r4, #12]
	subs	r0, r7, r2
	ldr	r7, [r4, #8]
	mul	r0, r3, r0
	ldr	r1, [r7, #20]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp, #36]
	add	r8, r8, r0
	ldr	r2, [sp, #40]
	add	lr, r10, r5
	ldr	r1, [r4]
	ldr	ip, [r4, #4]
	ldrh	r0, [r7, #4]
	mul	r2, r2, r3
	ldr	r3, [r1, #24]
	ldr	r7, [ip]
	ldr	r1, [sp, #44]
	rsb	r10, lr, r3
	ubfx	r2, r2, #8, #8
	bl	libaroma_alpha(PLT)
	mov	lr, #255
	str	r0, [sp, #4]
	mov	r2, r8
	mov	r1, r10
	mov	r0, r7
	str	r6, [sp]
	mov	r3, r5
	str	lr, [sp, #8]
	bl	libaroma_draw_rect(PLT)
.L35:
	bl	GOMP_sections_next(PLT)
	b	.L33
.L31:
	ldr	r3, [r4, #8]
	ldrsb	r2, [r3, #6]
	cmp	r2, #0
	bge	.L35
	ldr	r1, [r3, #24]
	ldr	r2, [r3, #324]
	cmp	r1, r2
	ble	.L35
	ldrh	r0, [r3, #4]
	bl	libaroma_color_isdark(PLT)
	ldr	r3, [r4, #8]
	cmp	r0, #0
	ite	ne
	movne	r1, r9
	moveq	r1, fp
	movs	r2, #50
	ldrh	r0, [r3, #4]
	bl	libaroma_alpha(PLT)
	ldr	r2, [r4, #8]
	mov	r5, r0
	ldr	r3, [r4, #12]
	ldr	r1, [r2, #324]
	cmp	r1, r3
	blt	.L37
.L38:
	ldr	r2, [r2, #24]
	cmp	r2, r3
	ble	.L35
	ldr	r3, [r4, #4]
	movs	r0, #1
	ldr	r3, [r3]
	ldr	r6, [r3, #4]
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #4]
	rsb	r8, r0, r6
	movs	r0, #1
	ldr	r6, [r3]
	ldr	r7, [r6]
	bl	libaroma_dp(PLT)
	movs	r1, #255
	stmia	sp, {r0, r5}
	str	r1, [sp, #8]
	mov	r2, r8
	mov	r3, r7
	mov	r0, r6
	movs	r1, #0
	bl	libaroma_draw_rect(PLT)
	b	.L35
.L32:
	ldr	r3, [r4, #8]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	lsls	r1, r3, #30
	bpl	.L35
	ldr	r2, [r4, #4]
	movs	r0, #5
	ldr	r3, [r4]
	movs	r5, #0
	movs	r7, #2
	ldr	r6, [r2]
	ldr	r8, [r3, #24]
	bl	libaroma_dp(PLT)
	mov	lr, #80
	mov	r1, r5
	str	r0, [sp]
	mov	r3, r8
	mov	r2, r5
	str	lr, [sp, #20]
	mov	r0, r6
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #12]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r7, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	bl	GOMP_sections_next(PLT)
	b	.L33
.L39:
	ldrb	r2, [r3, #61]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L51
	b	.L35
.L62:
	movs	r2, #120
	movs	r0, #2
	str	r2, [sp, #40]
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #5
	bl	libaroma_dp(PLT)
	ldr	r2, [r4]
	mov	r10, r0
	lsl	r5, r8, #1
	ldr	r3, [r4, #8]
	ldr	r0, [r2, #28]
	subs	r7, r0, r5
	b	.L46
.L41:
	ldr	r6, [r3, #36]
	str	r6, [sp, #36]
	b	.L50
.L44:
	movs	r0, #36
	bl	libaroma_dp(PLT)
	subs	r2, r0, r6
	mov	r6, r0
	b	.L45
.L37:
	ldr	r3, [r4, #4]
	movs	r0, #1
	ldr	r6, [r3]
	ldr	r7, [r6]
	bl	libaroma_dp(PLT)
	movs	r2, #255
	movs	r1, #0
	mov	r3, r7
	stmia	sp, {r0, r5}
	str	r2, [sp, #8]
	mov	r0, r6
	mov	r2, r1
	bl	libaroma_draw_rect(PLT)
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #12]
	b	.L38
.L63:
	ldr	r0, [r4]
	movs	r1, #0
	bl	libaroma_colorget(PLT)
	ldr	r2, [r4]
	ldrh	r0, [r0]
	str	r6, [sp, #40]
	ldr	r3, [r4, #8]
	str	r0, [sp, #44]
	ldr	r0, [r2, #28]
	b	.L46
	.size	_libaroma_ctl_scroll_draw._omp_fn.2, .-_libaroma_ctl_scroll_draw._omp_fn.2
	.section	.text._libaroma_ctl_scroll_client_msg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_scroll_client_msg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_client_msg, %function
_libaroma_ctl_scroll_client_msg:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r5, .L71
	sub	sp, sp, #32
	ldr	r0, [r0, #72]
.LPIC1:
	add	r5, pc
	cmp	r0, r5
	it	ne
	movne	r0, #0
	beq	.L70
.L65:
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L70:
	ldr	r5, [r4, #4]
	mov	r6, r3
	ldr	r3, [r5, #204]
	ldr	r0, [r3, #12]
	cmp	r0, #0
	beq	.L65
	mov	r7, r2
	add	r8, sp, #8
	movs	r2, #0
	mov	r3, r1
	str	r2, [sp]
	mov	r0, r8
	movs	r1, #128
	bl	libaroma_wm_compose(PLT)
	ldr	lr, [r5, #204]
	mov	r2, r8
	str	r6, [sp]
	mov	r0, r4
	mov	r3, r7
	add	r1, r5, #200
	ldr	r4, [lr, #12]
	blx	r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L72:
	.align	2
.L71:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	_libaroma_ctl_scroll_client_msg, .-_libaroma_ctl_scroll_client_msg
	.section	.text._libaroma_ctl_scroll_calc_thread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_calc_thread, %function
_libaroma_ctl_scroll_calc_thread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L104
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
.LPIC2:
	add	r2, pc
	sub	sp, sp, #12
	cmp	r3, r2
	beq	.L101
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L101:
	ldr	fp, [r0, #4]
	movw	r8, #56963
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	movt	r8, 17179
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L104+4
	mov	r2, r0
	mov	r0, r4
	add	r6, fp, #272
	add	r4, fp, #244
	add	r9, fp, #208
.LPIC3:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L104+8
	movs	r1, #1
	movs	r2, #31
.LPIC4:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
.L85:
	ldrb	r3, [fp, #7]	@ zero_extendqisi2
	cbnz	r3, .L87
	b	.L86
.L76:
	ldr	r3, [fp, #204]
	cbnz	r3, .L102
.L87:
	mov	r0, r4
	bl	pthread_mutex_lock(PLT)
	mov	r1, r4
	mov	r0, r6
	bl	pthread_cond_wait(PLT)
	mov	r0, r4
	bl	pthread_mutex_unlock(PLT)
	ldrb	r3, [fp, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L76
.L86:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L104+12
	mov	r2, r0
	mov	r0, r4
.LPIC5:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L104+16
	movs	r2, #29
	movs	r1, #1
.LPIC6:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L102:
	mov	r0, r9
	bl	omp_set_nest_lock(PLT)
	ldr	r7, [fp, #76]
	cbnz	r7, .L103
.L78:
	mov	r0, r9
	bl	omp_unset_nest_lock(PLT)
	ldr	r3, [fp, #204]
	ldr	r3, [r3, #8]
	cbnz	r3, .L80
.L83:
	cmp	r7, #0
	beq	.L85
.L84:
	mov	r3, #-1
	str	r3, [fp, #52]
	b	.L85
.L80:
	mov	r0, r5
	add	r1, fp, #200
	blx	r3
	cmp	r0, #0
	beq	.L83
	b	.L84
.L103:
	movs	r0, #1
	mov	r1, sp
	bl	clock_gettime(PLT)
	movs	r2, #0
	cbnz	r0, .L79
	ldr	r3, [sp, #4]
	mov	r2, #1000
	ldr	r1, [sp]
	smull	r7, r0, r8, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r0, asr #18
	mla	r2, r2, r1, r3
.L79:
	ldr	r3, [fp, #76]
	subs	r3, r2, r3
	cmp	r3, #120
	it	le
	movle	r7, #0
	ble	.L78
	ldr	r3, [fp, #204]
	movs	r2, #0
	str	r2, [fp, #76]
	ldr	r7, [r3, #12]
	cmp	r7, #0
	beq	.L78
	ldr	r7, [fp, #68]
	mov	r0, r5
	ldr	r3, [fp, #16]
	movs	r1, #2
	ldr	r2, [fp, #64]
	add	r3, r3, r7
	bl	_libaroma_ctl_scroll_client_msg(PLT)
	movs	r3, #1
	sub	r7, r0, #2
	strb	r3, [fp, #80]
	clz	r7, r7
	lsrs	r7, r7, #5
	b	.L78
.L105:
	.align	2
.L104:
	.word	.LANCHOR0-(.LPIC2+4)
	.word	.LC0-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.word	.LC0-(.LPIC5+4)
	.word	.LC2-(.LPIC6+4)
	.size	_libaroma_ctl_scroll_calc_thread, .-_libaroma_ctl_scroll_calc_thread
	.section	.text._libaroma_ctl_scroll_updatecache,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_scroll_updatecache
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_updatecache, %function
_libaroma_ctl_scroll_updatecache:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L143
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
.LPIC7:
	add	r2, pc
	sub	sp, sp, #36
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L137
.L135:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L137:
	ldr	r6, [r5, #4]
	ldr	r0, [r6]
	cmp	r0, #0
	beq	.L135
	add	r8, r6, #220
	mov	r4, r1
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldr	lr, [r6]
	cmp	r4, #0
	ldr	r3, [lr, #4]
	add	r3, r3, r3, lsr #31
	asr	r3, r3, #1
	blt	.L138
	beq	.L110
	cmp	r4, r3
	ldr	r2, [r6, #48]
	it	lt
	movlt	r4, r3
	ldr	r3, [r6, #24]
	adds	r1, r2, r4
	cmp	r1, r3
	itt	gt
	subgt	r4, r3, r2
	bicgt	r4, r4, r4, asr #31
.L110:
	ldrb	r3, [r6, #40]	@ zero_extendqisi2
	subs	r3, r3, #10
	cmp	r3, #1
	bls	.L139
	movs	r3, #0
	strb	r3, [r6, #40]
	cmp	r4, #0
	beq	.L115
	ldr	r7, [r6, #44]
	lsrs	r2, r4, #31
	ldr	r3, [lr, #4]
	eor	ip, r4, r4, asr #31
	ldr	r1, [r6, #48]
	it	ne
	movne	fp, r4
	add	r7, r7, r4
	sub	ip, ip, r4, asr #31
	str	r7, [sp, #16]
	it	eq
	moveq	fp, r3
	ldr	r7, [sp, #16]
	add	fp, fp, r1
	cmp	r7, #0
	itt	lt
	addlt	r7, r7, r3
	strlt	r7, [sp, #16]
	blt	.L118
	cmp	r7, r3
	itt	ge
	subge	r7, r7, r3
	strge	r7, [sp, #16]
.L118:
	cmp	r2, #0
	beq	.L140
	ldr	r2, [sp, #16]
.L119:
	cmp	r2, #0
	blt	.L141
	add	r1, ip, r2
	cmp	r1, r3
	ble	.L134
	rsb	r10, r2, r3
	cmp	r10, #0
	rsb	r9, r10, ip
	bgt	.L142
.L122:
	cmp	r9, #0
	ble	.L125
	ldr	r0, [r6]
	movs	r1, #0
	mov	r2, r1
	ldr	r3, [r0]
	str	r9, [sp]
	bl	libaroma_canvas_area(PLT)
	ldr	r3, [r6, #204]
	mov	lr, r0
	str	r0, [sp, #28]
	ldr	ip, [r3]
	cmp	ip, #0
	beq	.L126
	add	r3, fp, r10
	mov	r0, r5
	str	r3, [sp]
	mov	r2, lr
	ldr	r5, [lr]
	add	r1, r6, #200
	movs	r3, #0
	str	r5, [sp, #4]
	ldr	r5, [lr, #4]
	str	r5, [sp, #8]
	blx	ip
.L127:
	add	r0, sp, #28
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L125:
	ldr	r3, [r6, #48]
	mov	r2, #-1
	ldr	r7, [sp, #16]
	mov	r0, r8
	str	r2, [r6, #52]
	add	r4, r4, r3
	str	r7, [r6, #44]
	str	r4, [r6, #48]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	b	.L135
.L140:
	ldr	r7, [sp, #16]
	rsb	r2, ip, r7
	b	.L119
.L139:
	ldr	r2, [r6, #204]
	movs	r3, #0
	strb	r3, [r6, #40]
	ldr	r1, [r6, #48]
	ldr	r7, [r2]
	cmp	r7, #0
	beq	.L113
	str	r1, [sp]
	mov	r0, r5
	ldr	r4, [lr]
	mov	r2, lr
	add	r1, r6, #200
	str	r4, [sp, #4]
	ldr	r4, [lr, #4]
	str	r4, [sp, #8]
	blx	r7
.L114:
	movs	r2, #0
	mov	r3, #-1
	mov	r0, r8
	str	r2, [r6, #44]
	str	r3, [r6, #52]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	b	.L135
.L138:
	ldr	r2, [r6, #48]
	negs	r3, r3
	cmp	r4, r3
	it	ge
	movge	r4, r3
	cmn	r2, r4
	it	mi
	rsbmi	r4, r2, #0
	b	.L110
.L115:
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	b	.L135
.L134:
	mov	r9, #0
.L128:
	ldr	r3, [lr]
	mov	r0, lr
	str	ip, [sp]
	movs	r1, #0
	str	ip, [sp, #20]
	bl	libaroma_canvas_area(PLT)
	ldr	r3, [r6, #204]
	mov	lr, r0
	str	r0, [sp, #28]
	ldr	ip, [sp, #20]
	ldr	r10, [r3]
	cmp	r10, #0
	beq	.L123
	str	fp, [sp]
	mov	r2, r0
	ldr	r7, [lr]
	mov	r0, r5
	add	r1, r6, #200
	movs	r3, #0
	str	r7, [sp, #4]
	ldr	r7, [lr, #4]
	str	r7, [sp, #8]
	blx	r10
	ldr	ip, [sp, #20]
.L124:
	add	r0, sp, #28
	movs	r1, #0
	mov	r10, ip
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L122
.L141:
	negs	r1, r2
	add	r9, ip, r2
	mov	ip, r1
	add	r2, r2, r3
	b	.L128
.L126:
	ldrh	r1, [r6, #4]
	movs	r2, #255
	bl	libaroma_canvas_setcolor(PLT)
	b	.L127
.L123:
	ldrh	r1, [r6, #4]
	movs	r2, #255
	str	ip, [sp, #20]
	bl	libaroma_canvas_setcolor(PLT)
	ldr	ip, [sp, #20]
	b	.L124
.L113:
	mov	r0, lr
	ldrh	r1, [r6, #4]
	movs	r2, #255
	bl	libaroma_canvas_setcolor(PLT)
	b	.L114
.L142:
	mov	ip, r10
	b	.L128
.L144:
	.align	2
.L143:
	.word	.LANCHOR0-(.LPIC7+4)
	.size	_libaroma_ctl_scroll_updatecache, .-_libaroma_ctl_scroll_updatecache
	.section	.text.libaroma_ctl_scroll_isactive,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_isactive
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_isactive, %function
libaroma_ctl_scroll_isactive:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L148
	ldr	r3, [r0, #72]
.LPIC8:
	add	r2, pc
	cmp	r3, r2
	itte	eq
	ldreq	r3, [r0, #4]
	ldrbeq	r0, [r3, #7]	@ zero_extendqisi2
	movne	r0, #0
	bx	lr
.L149:
	.align	2
.L148:
	.word	.LANCHOR0-(.LPIC8+4)
	.size	libaroma_ctl_scroll_isactive, .-libaroma_ctl_scroll_isactive
	.section	.text.libaroma_ctl_scroll,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll, %function
libaroma_ctl_scroll:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	sub	sp, sp, #28
	mov	r7, r1
	mov	r0, #328
	movs	r1, #1
	mov	r9, r2
	mov	r8, r3
	ldrh	r10, [sp, #72]
	ldrb	fp, [sp, #76]	@ zero_extendqisi2
	bl	calloc(PLT)
	mov	r4, r0
	cbz	r0, .L151
	adds	r0, r0, #232
	mov	r5, #-1
	bl	omp_init_nest_lock(PLT)
	add	r0, r4, #220
	bl	omp_init_nest_lock(PLT)
	add	r0, r4, #208
	bl	omp_init_nest_lock(PLT)
	add	r1, r4, #244
	add	r0, r4, #272
	bl	libaroma_cond_init(PLT)
	strh	r10, [r4, #4]	@ movhi
	movs	r0, #96
	str	r5, [r4, #12]
	str	r5, [r4, #28]
	str	r5, [r4, #52]
	strb	fp, [r4, #6]
	bl	libaroma_dp(PLT)
	ldr	r5, .L156
	mov	r10, r0
	movs	r0, #96
	bl	libaroma_dp(PLT)
	str	r0, [sp, #8]
.LPIC9:
	add	r5, pc
	ldr	r0, [sp, #68]
	mov	r1, r9
	str	r5, [sp, #16]
	mov	r2, r8
	str	r10, [sp, #4]
	str	r0, [sp]
	mov	r0, r7
	ldr	r3, [sp, #64]
	str	r4, [sp, #12]
	str	r6, [sp, #20]
	bl	libaroma_control_new(PLT)
	mov	r5, r0
	cbz	r5, .L155
.L151:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L155:
	mov	r0, r4
	bl	free(PLT)
	mov	r0, r5
	b	.L151
.L157:
	.align	2
.L156:
	.word	.LANCHOR0-(.LPIC9+4)
	.size	libaroma_ctl_scroll, .-libaroma_ctl_scroll
	.section	.text.libaroma_ctl_scroll_request_height,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_request_height
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_request_height, %function
libaroma_ctl_scroll_request_height:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L164
	ldr	r3, [r0, #72]
.LPIC10:
	add	r2, pc
	cmp	r3, r2
	beq	.L163
	movs	r0, #0
	bx	lr
.L163:
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r5, [r0, #4]
	str	r1, [sp, #4]
	add	r4, r5, #220
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	mov	r0, r4
	str	r1, [r5, #12]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L165:
	.align	2
.L164:
	.word	.LANCHOR0-(.LPIC10+4)
	.size	libaroma_ctl_scroll_request_height, .-libaroma_ctl_scroll_request_height
	.section	.text.libaroma_ctl_scroll_get_scroll,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_get_scroll
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_get_scroll, %function
libaroma_ctl_scroll_get_scroll:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L174
	ldr	r3, [r0, #72]
.LPIC11:
	add	r2, pc
	cmp	r3, r2
	beq	.L173
	movs	r0, #0
	bx	lr
.L173:
	ldr	r3, [r0, #4]
	cbz	r1, .L168
	ldr	r2, [r3, #24]
	str	r2, [r1]
.L168:
	ldr	r0, [r3, #16]
	bx	lr
.L175:
	.align	2
.L174:
	.word	.LANCHOR0-(.LPIC11+4)
	.size	libaroma_ctl_scroll_get_scroll, .-libaroma_ctl_scroll_get_scroll
	.section	.text.libaroma_ctl_scroll_get_height,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_get_height
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_get_height, %function
libaroma_ctl_scroll_get_height:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L183
	ldr	r3, [r0, #72]
.LPIC12:
	add	r2, pc
	cmp	r3, r2
	beq	.L182
	movs	r0, #0
	bx	lr
.L182:
	push	{r4, r5, r6, lr}
	ldr	r4, [r0, #4]
	add	r5, r4, #220
	ldr	r6, [r4, #20]
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r4, [r4, #12]
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	cmp	r4, #-1
	it	eq
	moveq	r4, r6
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L184:
	.align	2
.L183:
	.word	.LANCHOR0-(.LPIC12+4)
	.size	libaroma_ctl_scroll_get_height, .-libaroma_ctl_scroll_get_height
	.section	.text.libaroma_ctl_scroll_set_pos,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_set_pos
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_set_pos, %function
libaroma_ctl_scroll_set_pos:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L199
	ldr	r3, [r0, #72]
.LPIC13:
	add	r2, pc
	cmp	r3, r2
	beq	.L198
	movs	r0, #0
	bx	lr
.L198:
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, [r0, #4]
	ldr	r3, [r4, #24]
	ldr	r0, [r4, #324]
	ldr	r2, [r4, #16]
	cmp	r3, r1
	it	ge
	movge	r3, r1
	cmp	r3, r0
	it	lt
	movlt	r3, r0
	cmp	r2, r3
	beq	.L197
	ldrb	r2, [r4, #40]	@ zero_extendqisi2
	ite	gt
	movgt	r1, #1
	movle	r1, #2
	str	r3, [r4, #16]
	strb	r1, [r4, #41]
	cbnz	r2, .L189
	movs	r3, #1
	strb	r3, [r4, #40]
.L189:
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	ands	r5, r3, #1
	bne	.L197
	movs	r0, #1
	mov	r1, sp
	bl	clock_gettime(PLT)
	cbnz	r0, .L191
	ldr	r3, [sp, #4]
	movw	r2, #56963
	movt	r2, 17179
	ldr	r1, [sp]
	mov	r5, #1000
	smull	r0, r2, r2, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r2, asr #18
	mla	r5, r5, r1, r3
.L191:
	str	r5, [r4, #32]
.L197:
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L200:
	.align	2
.L199:
	.word	.LANCHOR0-(.LPIC13+4)
	.size	libaroma_ctl_scroll_set_pos, .-libaroma_ctl_scroll_set_pos
	.section	.text.libaroma_ctl_scroll_set_height,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_set_height
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_set_height, %function
libaroma_ctl_scroll_set_height:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L220
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
.LPIC14:
	add	r2, pc
	sub	sp, sp, #12
	cmp	r3, r2
	beq	.L217
.L210:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L217:
	ldr	r5, [r0, #4]
	mov	r6, r1
	ldr	r3, [r5, #20]
	cmp	r1, r3
	beq	.L210
	add	r8, r5, #232
	add	r9, r5, #220
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	mov	r0, r9
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #28]
	ldr	r2, [r5, #324]
	subs	r3, r6, r3
	cmp	r3, r2
	str	r3, [r5, #24]
	it	lt
	strlt	r2, [r5, #24]
	cmp	r6, #0
	ble	.L218
	ldr	r7, [r5]
	cmp	r7, #0
	beq	.L207
	ldr	r3, [r7, #4]
	cmp	r6, r3
	beq	.L216
	ldr	r2, [r7, #8]
	add	fp, r5, #208
	ldr	r3, [r7, #12]
	mul	r10, r2, r6
	cmp	r10, r3
	bgt	.L219
	str	r6, [r5, #20]
	mov	r0, fp
	str	r10, [r7, #12]
	str	r6, [r7, #4]
	bl	omp_set_nest_lock(PLT)
	lsl	r1, r10, #1
	ldr	r0, [r7, #16]
	bl	realloc(PLT)
	str	r0, [r7, #16]
	mov	r0, fp
	bl	omp_unset_nest_lock(PLT)
.L206:
	mov	r3, #-1
	mov	r0, r9
	str	r3, [r5, #52]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r8
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	ldr	r1, [r5, #16]
	bl	libaroma_ctl_scroll_set_pos(PLT)
	movs	r3, #10
	movs	r0, #1
	strb	r3, [r5, #40]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L219:
	mov	r0, fp
	bl	omp_set_nest_lock(PLT)
	lsl	r1, r10, #1
	ldr	r0, [r7, #16]
	bl	realloc(PLT)
	str	r0, [r7, #16]
	mov	r0, fp
	bl	omp_unset_nest_lock(PLT)
	str	r10, [r7, #12]
	str	r6, [r7, #4]
	str	r6, [r5, #20]
	b	.L206
.L218:
	ldr	r3, [r5]
	cmp	r3, #0
	beq	.L206
	add	r3, r5, #208
	str	r6, [r5, #20]
	mov	r0, r3
	mov	r6, r3
	bl	omp_set_nest_lock(PLT)
	mov	r0, r5
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	mov	r0, r6
	str	r3, [r5]
	bl	omp_unset_nest_lock(PLT)
	b	.L206
.L207:
	add	r10, r5, #208
	mov	r0, r10
	bl	omp_set_nest_lock(PLT)
	mov	r2, r7
	mov	r3, r7
	ldr	r0, [r4, #24]
	mov	r1, r6
	str	r7, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldrh	r1, [r5, #4]
	mov	r7, r0
	movs	r2, #255
	bl	libaroma_canvas_setcolor(PLT)
	str	r7, [r5]
	mov	r0, r10
	bl	omp_unset_nest_lock(PLT)
.L216:
	str	r6, [r5, #20]
	b	.L206
.L221:
	.align	2
.L220:
	.word	.LANCHOR0-(.LPIC14+4)
	.size	libaroma_ctl_scroll_set_height, .-libaroma_ctl_scroll_set_height
	.global	__aeabi_idivmod
	.section	.text._libaroma_ctl_scroll_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_scroll_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_draw, %function
_libaroma_ctl_scroll_draw:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L335+20
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
.LPIC15:
	add	r2, pc
	fstmfdd	sp!, {d8}
	cmp	r3, r2
	sub	sp, sp, #124
	str	r1, [sp, #68]
	beq	.L327
.L222:
	add	sp, sp, #124
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L327:
	ldr	r4, [r0, #4]
	ldr	r6, [r4, #204]
	cmp	r6, #0
	beq	.L225
	ldrb	r3, [r4, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L328
.L227:
	ldr	r6, [r4]
	cmp	r6, #0
	beq	.L231
	add	r6, r4, #208
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r7, [r5, #28]
	ldr	r3, [r4]
	ldr	r8, [r4, #16]
	str	r7, [sp, #32]
	ldr	r7, [r4, #48]
	ldr	ip, [r3, #4]
	ldr	r3, [r4, #320]
	str	r7, [sp, #40]
	ldr	r7, [r4, #44]
	str	r7, [sp, #44]
	ldr	r7, [sp, #32]
	cmp	ip, r7
	bgt	.L232
	cbz	r3, .L233
	ldr	r1, [r4, #324]
	cmp	r1, #0
	bne	.L329
.L233:
	ldr	r0, [sp, #68]
	movs	r2, #255
	ldrh	r1, [r4, #4]
	add	fp, sp, #120
	bl	libaroma_canvas_setcolor(PLT)
	mov	lr, #0
	ldr	ip, [r4]
	ldr	r9, [r4, #324]
	mov	r10, #255
	str	lr, [sp]
	mov	r3, lr
	ldr	r7, [fp, #-52]!
	mov	r2, lr
	str	r9, [sp, #4]
	mov	r1, ip
	mov	r0, r7
	ldr	r7, [ip]
	str	r7, [sp, #8]
	ldr	r7, [ip, #4]
	str	lr, [sp, #16]
	str	lr, [sp, #24]
	rsb	r7, r9, r7
	str	lr, [sp, #28]
	str	r7, [sp, #12]
	str	r10, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r3, [r4, #16]
	str	r3, [r4, #52]
.L235:
	mov	r0, r6
	add	r6, sp, #80
	bl	omp_unset_nest_lock(PLT)
	ldr	r0, .L335+24
	movs	r2, #0
	movs	r3, #3
	mov	r1, r6
	str	r5, [sp, #80]
.LPIC17:
	add	r0, pc
	str	r4, [sp, #88]
	str	fp, [sp, #84]
	str	r8, [sp, #92]
	bl	GOMP_parallel_sections_start(PLT)
	mov	r0, r6
	bl	_libaroma_ctl_scroll_draw._omp_fn.2(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r4, [sp, #88]
	ldr	r5, [sp, #80]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #324]
	cmp	r2, r3
	ble	.L222
	flds	s15, [r4, #88]
	fcmpezs	s15
	fmstat
	ble	.L222
	fconsts	s14, #112
	fcmpes	s15, s14
	fmstat
	bpl	.L222
	ldr	r3, [sp, #68]
	movs	r0, #100
	ldr	r3, [r3, #4]
	adds	r2, r3, #3
	bics	r3, r3, r3, asr #32
	it	cs
	movcs	r3, r2
	asrs	r6, r3, #2
	bl	libaroma_dp(PLT)
	cmp	r6, r0
	bge	.L248
	ldr	r3, [sp, #68]
	ldr	r7, [r3, #4]
	adds	r3, r7, #3
	bics	r7, r7, r7, asr #32
	it	cs
	movcs	r7, r3
	asrs	r7, r7, #2
.L249:
	ldr	r3, [r4, #104]
	movw	r2, #21846
	movt	r2, 21845
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	smull	r6, r2, r2, r3
	sub	r6, r2, r3, asr #31
	cmp	r6, r7
	it	ge
	movge	r6, r7
	cmp	r6, #0
	ble	.L222
	flds	s15, [r4, #88]
	fconsts	s14, #80
	fcmpes	s15, s14
	fmstat
	it	pl
	fconstspl	s16, #112
	bmi	.L330
.L250:
	flds	s4, [r4, #92]
	fcmpezs	s4
	fmstat
	ble	.L252
	flds	s0, .L335
	flds	s1, .L335+4
	flds	s2, .L335+8
	fconsts	s3, #112
	bl	libaroma_cubic_bezier(PLT)
	fconsts	s15, #112
	fsubs	s0, s15, s0
	flds	s4, [r4, #92]
	fmuls	s16, s16, s0
.L252:
	fcmpzs	s16
	fconsts	s15, #112
	fmstat
	fcmpes	s16, s15
	ite	pl
	movpl	r3, #1
	movmi	r3, #0
	fmstat
	it	gt
	orrgt	r3, r3, #1
	cmp	r3, #0
	beq	.L272
	fcmps	s16, s15
	fmstat
	it	gt
	fcpysgt	s16, s15
.L254:
	fcmpezs	s4
	fmstat
	ble	.L323
	fmsr	s13, r6	@ int
	fsitos	s15, s13
	fmuls	s16, s16, s15
	ftosizs	s16, s16
	fmrs	r10, s16	@ int
.L257:
	ldr	r3, [sp, #68]
	movw	r8, #26215
	movt	r8, 26214
	movs	r0, #80
	ldr	r3, [r3, #4]
	smull	r1, r6, r8, r3
	asrs	r3, r3, #31
	rsb	r6, r3, r6, asr #1
	cmp	r6, r10
	it	ge
	movge	r6, r10
	bl	libaroma_dp(PLT)
	cmp	r6, r0
	bge	.L259
	ldr	r3, [sp, #68]
	ldr	r3, [r3, #4]
	smull	r2, r6, r8, r3
	asrs	r3, r3, #31
	rsb	r6, r3, r6, asr #1
	cmp	r6, r10
	it	ge
	movge	r6, r10
.L260:
	cmp	r6, #1
	ble	.L222
	ldr	r0, [sp, #68]
	mov	r8, #0
	mov	r3, r8
	movs	r2, #1
	mov	r1, r6
	ldr	r0, [r0]
	str	r8, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	mov	r1, r8
	mov	r9, r0
	mov	r0, r5
	str	r9, [sp, #76]
	bl	libaroma_colorget(PLT)
	mov	r2, r8
	ldrh	r1, [r0]
	mov	r0, r9
	bl	libaroma_canvas_setcolor(PLT)
	ldr	r3, [sp, #68]
	ldr	r2, [r4, #100]
	ldr	r3, [r3]
	cmp	r2, r8
	itt	lt
	strlt	r8, [r4, #100]
	movlt	r2, r8
	asr	r1, r3, #2
	blt	.L262
	ldr	r0, [r5, #24]
	cmp	r2, r0
	itee	le
	asrle	r2, r2, #2
	asrgt	r2, r0, #2
	strgt	r0, [r4, #100]
.L262:
	fmsr	s13, r10	@ int
	adds	r5, r3, r2
	fmsr	s14, r7	@ int
	rsb	r8, r1, r2
	ldr	r3, [r4, #104]
	asrs	r4, r6, #1
	fsitos	s16, s13
	fsitos	s15, s14
	cmp	r3, #0
	fdivs	s17, s16, s15
	blt	.L331
	subs	r1, r6, #1
	fmsr	s13, r8	@ int
	fsitos	s0, s13
	add	r8, r8, r4
	fmsr	s16, r1	@ int
	subs	r4, r5, r4
	mov	r9, #1
	fsitos	s16, s16
	fcpys	s1, s16
	bl	libaroma_path(PLT)
	fmsr	s2, r4	@ int
	mov	r1, r6
	flds	s1, .L335+4
	mov	r7, r0
	fmsr	s0, r8	@ int
	movs	r4, #0
	fmsr	s14, r5	@ int
	fcpys	s5, s16
	fsitos	s2, s2
	fcpys	s3, s1
	fsitos	s4, s14
	fsitos	s0, s0
	bl	libaroma_path_curve(PLT)
	flds	s15, .L335+12
	mov	r1, r7
	movs	r2, #0
	ldr	r0, [sp, #76]
	str	r9, [sp]
	flds	s0, .L335+16
	fmuls	s17, s17, s15
	ftouizs	s17, s17
	fmrs	r3, s17	@ int
	uxtb	r3, r3
	bl	libaroma_path_draw(PLT)
	mov	r0, r7
	bl	libaroma_path_free(PLT)
	ldr	r0, [sp, #68]
	mov	lr, #255
	ldr	r5, [sp, #76]
	mov	r2, r4
	ldr	r3, [r0, #4]
	str	r4, [sp]
	mov	r1, r5
	str	r4, [sp, #4]
	subs	r3, r3, r6
	ldr	r6, [r5]
	str	r6, [sp, #8]
	ldr	r5, [r5, #4]
	str	r9, [sp, #16]
	str	r4, [sp, #24]
	str	r5, [sp, #12]
	str	r4, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L265:
	add	r0, sp, #76
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L222
.L232:
	cbz	r3, .L236
	ldr	r9, [r4, #324]
	cmp	r9, #0
	bne	.L332
.L236:
	ldr	r9, [sp, #68]
	ldr	r10, [r4, #108]
	mov	fp, r9
	cmp	r10, #0
	bne	.L333
.L238:
	ldr	r7, [sp, #40]
	mov	r1, ip
	rsb	r0, r7, r8
	ldr	r7, [sp, #44]
	add	r0, r0, r7
	bl	__aeabi_idivmod(PLT)
	subs	r3, r1, #0
	ldr	r1, [r4]
	ldr	r0, [sp, #32]
	ldr	r2, [r1, #4]
	it	lt
	addlt	r3, r3, r2
	add	r0, r0, r3
	cmp	r0, r2
	bgt	.L334
	cmp	r3, r2
	bge	.L325
	cmp	r3, #0
	blt	.L325
	mov	ip, #0
	str	r3, [sp, #4]
	str	ip, [sp]
	mov	lr, #255
	ldr	r3, [fp]
	mov	r0, fp
	ldr	r7, [sp, #32]
	mov	r2, ip
	str	ip, [sp, #16]
	add	fp, sp, #68
	str	r3, [sp, #8]
	mov	r3, ip
	str	ip, [sp, #24]
	str	ip, [sp, #28]
	str	r7, [sp, #12]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r3, [r4, #16]
	str	r3, [r4, #52]
.L244:
	cmp	r10, #0
	beq	.L235
	asr	r3, r10, #8
	mov	r10, #0
	str	r10, [sp]
	mov	lr, #255
	str	r3, [sp, #4]
	mov	r2, r10
	ldr	r1, [r9]
	mov	r3, r10
	ldr	r7, [sp, #68]
	mov	r0, r9
	str	r1, [sp, #8]
	ldr	r1, [r9, #4]
	str	lr, [sp, #20]
	str	r10, [sp, #16]
	str	r1, [sp, #12]
	mov	r1, r7
	str	r10, [sp, #24]
	str	r10, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	mov	r0, fp
	mov	r1, r10
	bl	libaroma_canvas_free_ex1(PLT)
	str	r9, [sp, #68]
	b	.L235
.L231:
	ldr	r3, [r4, #320]
	cbz	r3, .L268
	ldr	r1, [r4, #324]
	cbz	r1, .L268
	ldr	r0, [sp, #68]
	mov	r2, r6
	mov	r3, r6
	ldr	r0, [r0]
	str	r6, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #96]
	cbz	r0, .L268
.L326:
	ldrh	r1, [r4, #4]
	movs	r2, #255
	add	r7, sp, #120
	bl	libaroma_canvas_setcolor(PLT)
	ldr	r1, [r7, #-24]!
	mov	r0, r5
	ldr	r3, [r4, #320]
	ldr	r2, [r4, #16]
	blx	r3
	mov	r0, r7
	mov	r1, r6
	bl	libaroma_canvas_free_ex1(PLT)
.L268:
	ldrh	r1, [r4, #4]
	movs	r2, #255
	ldr	r0, [sp, #68]
	bl	libaroma_canvas_setcolor(PLT)
	b	.L222
.L328:
	add	r6, r4, #208
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r7, [r4, #12]
	mov	r0, r6
	adds	r3, r7, #1
	beq	.L228
	bl	omp_unset_nest_lock(PLT)
	mov	r1, r7
	mov	r0, r5
	bl	libaroma_ctl_scroll_set_height(PLT)
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	mov	r3, #-1
	mov	r0, r6
	str	r3, [r4, #12]
	bl	omp_unset_nest_lock(PLT)
.L229:
	ldrb	r3, [r4, #40]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L227
	mov	r0, r5
	movs	r1, #0
	bl	_libaroma_ctl_scroll_updatecache(PLT)
	b	.L227
.L336:
	.align	2
.L335:
	.word	1053699762
	.word	0
	.word	1046938544
	.word	1119879168
	.word	1051260355
	.word	.LANCHOR0-(.LPIC15+4)
	.word	_libaroma_ctl_scroll_draw._omp_fn.2-(.LPIC17+4)
.L225:
	ldr	r3, [r4, #320]
	cmp	r3, #0
	beq	.L268
	ldr	r3, [r4, #324]
	cmp	r3, #0
	beq	.L268
	ldr	r0, [r1]
	mov	r2, r6
	mov	r1, r3
	str	r6, [sp]
	mov	r3, r6
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #96]
	cmp	r0, #0
	bne	.L326
	b	.L268
.L334:
	subs	r2, r2, r3
	str	r3, [sp, #48]
	cmp	r2, #0
	str	r2, [sp, #52]
	iteet	gt
	ldrgt	r6, [sp, #32]
	rsble	r0, r2, #0
	ldrle	r7, [sp, #32]
	movgt	r0, #0
	str	r0, [sp, #60]
	mov	r3, #2
	it	gt
	subgt	r6, r6, r2
	ldr	r0, .L337+16
	itt	gt
	movgt	r7, r6
	strgt	r6, [sp, #32]
	str	r7, [sp, #56]
	add	r6, sp, #96
	vldr	d16, [sp, #48]
	vldr	d17, [sp, #56]
	mov	r1, r6
	movs	r2, #0
.LPIC16:
	add	r0, pc
	add	fp, sp, #68
	vstr	d16, [sp, #104]
	vstr	d17, [sp, #112]
	str	r4, [sp, #100]
	str	fp, [sp, #96]
	bl	GOMP_parallel_sections_start(PLT)
	mov	r0, r6
	bl	_libaroma_ctl_scroll_draw._omp_fn.1(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r4, [sp, #100]
	ldr	r3, [r4, #16]
	add	r6, r4, #208
	str	r3, [r4, #52]
	b	.L244
.L333:
	ldrh	r1, [r4, #4]
	mov	r0, r9
	movs	r2, #255
	str	ip, [sp, #36]
	bl	libaroma_canvas_setcolor(PLT)
	movs	r3, #0
	ldr	r0, [r9]
	ldr	r1, [r9, #4]
	mov	r2, r3
	str	r3, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	ip, [sp, #36]
	mov	fp, r0
	str	r0, [sp, #68]
	b	.L238
.L329:
	ldr	r0, [sp, #68]
	mov	r9, #0
	mov	r2, r9
	mov	r3, r9
	ldr	r0, [r0]
	str	r9, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #96]
	cmp	r0, #0
	beq	.L233
	ldr	lr, [r4]
	mov	ip, #255
	str	r9, [sp]
	mov	r2, r9
	str	r9, [sp, #4]
	mov	r3, r9
	ldr	r7, [lr]
	mov	r1, lr
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	ip, [sp, #20]
	str	r9, [sp, #16]
	str	r7, [sp, #12]
	add	r7, sp, #120
	str	r9, [sp, #24]
	str	r9, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r1, [r7, #-24]!
	mov	r0, r5
	ldr	r3, [r4, #320]
	ldr	r2, [r4, #16]
	blx	r3
	mov	r0, r7
	mov	r1, r9
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L233
.L332:
	ldr	r0, [sp, #68]
	mov	r10, #0
	mov	r2, r10
	mov	r3, r10
	mov	r1, r9
	ldr	r0, [r0]
	str	r10, [sp]
	str	ip, [sp, #36]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	ip, [sp, #36]
	mov	fp, r0
	str	r0, [sp, #96]
	cmp	r0, #0
	beq	.L236
	ldr	r7, [sp, #40]
	rsb	r0, r9, r8
	mov	r1, ip
	ldr	r9, [r4]
	str	r10, [sp]
	subs	r0, r0, r7
	ldr	r7, [sp, #44]
	add	r0, r0, r7
	bl	__aeabi_idivmod(PLT)
	str	r1, [sp, #4]
	mov	lr, #255
	ldr	r3, [fp]
	mov	r1, r9
	mov	r2, r10
	add	r9, sp, #120
	mov	r0, fp
	str	r3, [sp, #8]
	mov	r3, r10
	ldr	r7, [fp, #4]
	str	lr, [sp, #20]
	str	r10, [sp, #16]
	str	r7, [sp, #12]
	str	r10, [sp, #24]
	str	r10, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r1, [r9, #-24]!
	mov	r0, r5
	ldr	r3, [r4, #320]
	ldr	r2, [r4, #16]
	blx	r3
	mov	r0, r9
	mov	r1, r10
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	ip, [sp, #36]
	b	.L236
.L228:
	bl	omp_unset_nest_lock(PLT)
	b	.L229
.L325:
	add	fp, sp, #68
	b	.L244
.L272:
	flds	s16, .L337
	b	.L254
.L248:
	movs	r0, #100
	bl	libaroma_dp(PLT)
	mov	r7, r0
	b	.L249
.L330:
	fconsts	s4, #16
	fconsts	s2, #112
	fmuls	s4, s15, s4
	fcpys	s3, s2
	flds	s0, .L337+4
	flds	s1, .L337
	bl	libaroma_cubic_bezier(PLT)
	fcpys	s16, s0
	b	.L250
.L259:
	movs	r0, #80
	bl	libaroma_dp(PLT)
	mov	r6, r0
	b	.L260
.L323:
	fadds	s16, s16, s16
	fconsts	s15, #112
	fmsr	s13, r6	@ int
	fsitos	s14, s13
	fcmps	s16, s15
	fmstat
	it	gt
	fcpysgt	s16, s15
	fmuls	s16, s16, s14
	ftosizs	s16, s16
	fmrs	r10, s16	@ int
	b	.L257
.L331:
	flds	s1, .L337
	movs	r7, #1
	fmsr	s15, r8	@ int
	add	r8, r8, r4
	fsitos	s0, s15
	subs	r4, r5, r4
	bl	libaroma_path(PLT)
	fmsr	s13, r6	@ int
	mov	r1, r6
	fsitos	s1, s13
	mov	r9, r0
	fmsr	s0, r8	@ int
	movs	r6, #255
	fmsr	s2, r4	@ int
	movs	r4, #0
	fmsr	s14, r5	@ int
	fsitos	s2, s2
	fcpys	s3, s1
	fsitos	s4, s14
	flds	s5, .L337
	fsitos	s0, s0
	bl	libaroma_path_curve(PLT)
	flds	s15, .L337+8
	mov	r1, r9
	movs	r2, #0
	ldr	r0, [sp, #76]
	str	r7, [sp]
	flds	s0, .L337+12
	fmuls	s17, s17, s15
	ftouizs	s17, s17
	fmrs	r3, s17	@ int
	uxtb	r3, r3
	bl	libaroma_path_draw(PLT)
	mov	r0, r9
	bl	libaroma_path_free(PLT)
	ldr	r5, [sp, #76]
	mov	r2, r4
	str	r4, [sp]
	mov	r3, r4
	str	r4, [sp, #4]
	ldr	r0, [r5]
	mov	r1, r5
	str	r0, [sp, #8]
	ldr	r5, [r5, #4]
	ldr	r0, [sp, #68]
	str	r7, [sp, #16]
	str	r4, [sp, #24]
	str	r5, [sp, #12]
	str	r4, [sp, #28]
	str	r6, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L265
.L338:
	.align	2
.L337:
	.word	0
	.word	1054280253
	.word	1119879168
	.word	1051260355
	.word	_libaroma_ctl_scroll_draw._omp_fn.1-(.LPIC16+4)
	.size	_libaroma_ctl_scroll_draw, .-_libaroma_ctl_scroll_draw
	.section	.text._libaroma_ctl_scroll_thread._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_thread._omp_fn.0, %function
_libaroma_ctl_scroll_thread._omp_fn.0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	movw	r5, #56963
	fstmfdd	sp!, {d8, d9, d10, d11}
	movs	r6, #0
	movt	r5, 17179
	sub	sp, sp, #8
	fldd	d9, .L448
	mov	r4, r0
	fldd	d10, .L448+8
	fldd	d8, .L448+16
	fconsts	s22, #112
	bl	GOMP_sections_next(PLT)
.L347:
	cmp	r0, #4
	bhi	.L340
	tbb	[pc, r0]
.L342:
	.byte	(.L341-.L342)/2
	.byte	(.L343-.L342)/2
	.byte	(.L344-.L342)/2
	.byte	(.L345-.L342)/2
	.byte	(.L346-.L342)/2
	.align	1
.L340:
	bl	abort(PLT)
.L341:
	bl	GOMP_sections_end_nowait(PLT)
	add	sp, sp, #8
	@ sp needed
	fldmfdd	sp!, {d8-d11}
	pop	{r4, r5, r6, r7, r8, pc}
.L343:
	ldr	r3, [r4, #4]
	ldr	r0, [r3, #96]
	cmp	r0, #1
	ble	.L443
	ldrb	r1, [r3, #81]	@ zero_extendqisi2
	cmp	r1, #2
	ite	ne
	movne	r1, #400
	moveq	r1, #1000
	bl	libaroma_duration_state(PLT)
	fcmpes	s0, s22
	fmstat
	bmi	.L408
.L411:
	fcmpes	s0, s22
	fmstat
	blt	.L350
	ldr	r3, [r4, #4]
	flds	s15, [r3, #92]
	fcmpes	s15, s22
	fmstat
	bmi	.L444
.L350:
	bl	GOMP_sections_next(PLT)
	b	.L347
.L344:
	ldr	r3, [r4, #4]
	ldr	r2, [r3, #112]
	cmp	r2, #0
	bne	.L361
.L366:
	ldr	r2, [r3, #28]
	adds	r1, r2, #1
	beq	.L350
	ldr	r1, [r3, #16]
	cmp	r2, r1
	beq	.L350
	subs	r0, r2, r1
	sbfx	r0, r0, #2, #24
	adds	r7, r0, #1
	cmp	r7, #2
	bhi	.L365
	adds	r7, r0, #1
	it	ne
	movne	r0, #1
.L365:
	add	r1, r1, r0
	cmp	r2, r1
	itt	eq
	moveq	r2, #-1
	streq	r2, [r3, #28]
.L441:
	ldr	r0, [r4]
	bl	libaroma_ctl_scroll_set_pos(PLT)
	bl	GOMP_sections_next(PLT)
	b	.L347
.L345:
	ldr	r2, [r4, #4]
	ldr	r3, [r2, #108]
	cmp	r3, #0
	beq	.L350
	add	r3, r3, r3, lsl #3
	add	r3, r3, r3, lsl #4
	asrs	r3, r3, #8
	add	r1, r3, #255
	cmp	r1, #510
	it	ls
	movls	r3, #0
	str	r3, [r2, #108]
.L401:
	movs	r3, #1
	strb	r3, [r4, #8]
	bl	GOMP_sections_next(PLT)
	b	.L347
.L346:
	ldr	r3, [r4, #4]
	ldr	r2, [r3, #32]
	cmp	r2, #0
	beq	.L350
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	ands	r7, r2, #1
	beq	.L349
	movs	r2, #0
	str	r2, [r3, #32]
	bl	GOMP_sections_next(PLT)
	b	.L347
.L361:
	ldrb	r1, [r3, #60]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L366
	movs	r0, #246
	mul	r2, r0, r2
	asrs	r0, r2, #8
	add	r7, r0, #255
	str	r0, [r3, #112]
	cmp	r7, #510
	bls	.L445
	ldr	r0, [r3, #16]
	ldr	r7, [r3, #24]
	add	r1, r0, r2, asr #16
	cmp	r1, r7
	blt	.L382
	cmp	r0, r7
	beq	.L388
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	rsb	r8, r0, #0
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #4]
	ldr	r3, [r3, #112]
	add	r3, r3, r3, lsl #3
	add	r3, r3, r3, lsl #4
	asrs	r3, r3, #8
	cmp	r0, r3
	blt	.L383
	mov	r0, r3
.L391:
	cmp	r0, r8
	bge	.L446
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #4]
	negs	r0, r0
.L390:
	movs	r2, #1
	str	r0, [r3, #108]
	strb	r2, [r3, #81]
	ldmia	r4, {r2, r3}
	ldr	r1, [r2, #24]
	ldr	r2, [r3, #108]
	str	r6, [r3, #88]	@ float
	fmsr	s15, r1	@ int
	fsitod	d16, s15
	asrs	r2, r2, #4
	fmsr	s15, r2	@ int
	fmuld	d16, d16, d10
	fsitod	d17, s15
	fcmped	d16, d17
	fmstat
	bmi	.L386
	mov	r1, r2
.L389:
	movs	r2, #1
	str	r1, [r3, #104]
	mov	r0, r2
	str	r2, [r3, #96]
	str	r6, [r3, #92]	@ float
	mov	r1, sp
	bl	clock_gettime(PLT)
	mvn	r2, #15
	cbnz	r0, .L387
	ldr	r3, [sp, #4]
	mov	r1, #1000
	ldr	r2, [sp]
	smull	lr, r0, r5, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r0, asr #18
	mla	r2, r1, r2, r3
	subs	r2, r2, #16
.L387:
	ldr	r3, [r4, #4]
	str	r2, [r3, #84]
.L388:
	movs	r0, #0
	movs	r2, #1
	str	r0, [r3, #112]
	mov	r1, r7
	strb	r2, [r4, #8]
	ldr	r0, [r3, #16]
.L382:
	cmp	r1, #0
	ble	.L369
.L371:
	cmp	r1, r0
	bne	.L441
	b	.L350
.L443:
	ldr	r0, [r3, #84]
	cmp	r0, #0
	ble	.L393
.L406:
	ldrb	r1, [r3, #81]	@ zero_extendqisi2
	cmp	r1, #1
	ite	ne
	movne	r1, #1600
	moveq	r1, #800
	bl	libaroma_duration_state(PLT)
	fcmpes	s0, s22
	fmstat
	ldr	r3, [r4, #4]
	bmi	.L395
.L405:
	flds	s15, [r3, #88]
	fcmpes	s15, s22
	fmstat
	bpl	.L350
.L404:
	fcmpes	s0, s22
	fmstat
	bge	.L403
	fcvtds	d16, s0
	fcmped	d16, d9
	fmstat
	blt	.L350
	ldr	r2, [r3, #96]
	cmp	r2, #1
	bne	.L350
.L403:
	mov	r2, #1056964608
	mov	r1, sp
	movs	r0, #1
	str	r2, [r3, #88]	@ float
	bl	clock_gettime(PLT)
	movs	r1, #0
	cbnz	r0, .L399
	ldr	r3, [sp, #4]
	mov	r1, #1000
	ldr	r2, [sp]
	smull	r7, r0, r5, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r0, asr #18
	mla	r1, r1, r2, r3
.L399:
	ldr	r3, [r4, #4]
	ldrb	r2, [r3, #81]	@ zero_extendqisi2
	str	r1, [r3, #96]
	str	r6, [r3, #92]	@ float
	cmp	r2, #0
	bne	.L401
	movs	r2, #2
	strb	r2, [r3, #81]
	b	.L401
.L349:
	movs	r0, #1
	mov	r1, sp
	bl	clock_gettime(PLT)
	cbnz	r0, .L351
	ldr	r3, [sp, #4]
	mov	r7, #1000
	ldr	r2, [sp]
	smull	lr, r1, r5, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r1, asr #18
	mla	r7, r7, r2, r3
.L351:
	ldr	r3, [r4, #4]
	ldr	r1, [r3, #32]
	subs	r7, r7, r1
	cmp	r7, #1000
	bgt	.L352
	cmp	r7, #500
	bge	.L350
	ldr	r2, [r3, #36]
	cmp	r2, #255
	bgt	.L350
	ldr	r0, [r3, #56]
	cbnz	r0, .L356
	mov	r0, r1
	str	r1, [r3, #56]
.L356:
	mov	r1, #400
	bl	libaroma_duration_state(PLT)
	fcvtds	d0, s0
	fmuld	d0, d0, d8
	bl	lround(PLT)
	ldr	r3, [r4, #4]
	ldr	r2, [r3, #36]
	cmp	r2, r0
	beq	.L355
	movs	r2, #1
	str	r0, [r3, #36]
	strb	r2, [r4, #8]
	ldr	r2, [r3, #36]
.L355:
	cmp	r2, #255
	itt	gt
	movgt	r2, #256
	strgt	r2, [r3, #36]
	b	.L350
.L449:
	.align	3
.L448:
	.word	-1717986918
	.word	1070176665
	.word	-1717986918
	.word	1071225241
	.word	0
	.word	1081081856
.L444:
	movs	r2, #0
	movs	r1, #1
	str	r6, [r3, #88]	@ float
	str	r6, [r3, #92]	@ float
	str	r2, [r3, #84]
	str	r2, [r3, #96]
	strb	r1, [r4, #8]
	b	.L350
.L408:
	ldr	r3, [r4, #4]
	flds	s15, [r3, #92]
	fcmps	s15, s0
	fmstat
	beq	.L411
	movs	r2, #1
	fsts	s0, [r3, #92]
	strb	r2, [r4, #8]
	b	.L411
.L445:
	movs	r2, #1
	str	r1, [r3, #112]
	strb	r2, [r4, #8]
	b	.L350
.L352:
	ldr	r3, [r3, #36]
	cmp	r3, #0
	ble	.L350
	add	r0, r1, #1000
	mov	r1, #400
	bl	libaroma_duration_state(PLT)
	fcvtds	d0, s0
	fconstd	d16, #112
	fsubd	d0, d16, d0
	fmuld	d0, d0, d8
	bl	lround(PLT)
	ldr	r3, [r4, #4]
	ldr	r2, [r3, #36]
	cmp	r2, r0
	beq	.L358
	movs	r2, #1
	str	r0, [r3, #36]
	strb	r2, [r4, #8]
	ldr	r2, [r3, #36]
.L358:
	cmp	r2, #0
	bgt	.L350
	movs	r2, #0
	str	r2, [r3, #36]
	str	r2, [r3, #32]
	str	r2, [r3, #56]
	b	.L350
.L393:
	flds	s15, [r3, #88]
	fcmpzs	s15
	fmstat
	bne	.L406
	b	.L350
.L395:
	flds	s15, [r3, #88]
	fcmps	s15, s0
	fmstat
	beq	.L404
	movs	r2, #1
	fsts	s0, [r3, #88]
	strb	r2, [r4, #8]
	b	.L405
.L369:
	cbnz	r0, .L370
.L377:
	movs	r1, #0
	movs	r2, #1
	str	r1, [r3, #112]
	strb	r2, [r4, #8]
	ldr	r0, [r3, #16]
	b	.L371
.L386:
	ftosizd	s15, d16
	fmrs	r1, s15	@ int
	b	.L389
.L446:
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #4]
	ldr	r2, [r3, #112]
	add	r2, r2, r2, lsl #3
	add	r2, r2, r2, lsl #4
	asrs	r2, r2, #8
	cmp	r0, r2
	it	ge
	movge	r0, r2
	bge	.L390
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #4]
	b	.L390
.L370:
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	negs	r7, r0
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #4]
	ldr	r3, [r3, #112]
	add	r3, r3, r3, lsl #3
	add	r3, r3, r3, lsl #4
	asrs	r3, r3, #8
	cmp	r0, r3
	blt	.L372
	mov	r0, r3
.L380:
	cmp	r0, r7
	bge	.L447
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #4]
	negs	r0, r0
.L379:
	movs	r2, #1
	str	r0, [r3, #108]
	strb	r2, [r3, #81]
	ldmia	r4, {r2, r3}
	ldr	r2, [r2, #24]
	ldr	r1, [r3, #108]
	str	r6, [r3, #88]	@ float
	fmsr	s15, r2	@ int
	fsitod	d17, s15
	asrs	r1, r1, #4
	fmsr	s15, r1	@ int
	fnmuld	d16, d10, d17
	fsitod	d17, s15
	fcmped	d16, d17
	fmstat
	ble	.L378
	ftosizd	s15, d16
	fmrs	r1, s15	@ int
.L378:
	movs	r2, #1
	str	r1, [r3, #104]
	mov	r0, r2
	str	r2, [r3, #96]
	str	r6, [r3, #92]	@ float
	mov	r1, sp
	bl	clock_gettime(PLT)
	mvn	r2, #15
	cbnz	r0, .L376
	ldr	r3, [sp, #4]
	mov	r1, #1000
	ldr	r2, [sp]
	smull	r7, r0, r5, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r0, asr #18
	mla	r2, r1, r2, r3
	subs	r2, r2, #16
.L376:
	ldr	r3, [r4, #4]
	str	r2, [r3, #84]
	b	.L377
.L383:
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	b	.L391
.L447:
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #4]
	ldr	r2, [r3, #112]
	add	r2, r2, r2, lsl #3
	add	r2, r2, r2, lsl #4
	asrs	r2, r2, #8
	cmp	r0, r2
	it	ge
	movge	r0, r2
	bge	.L379
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #4]
	b	.L379
.L372:
	mov	r0, #3840
	bl	libaroma_dp(PLT)
	b	.L380
	.size	_libaroma_ctl_scroll_thread._omp_fn.0, .-_libaroma_ctl_scroll_thread._omp_fn.0
	.section	.text._libaroma_ctl_scroll_thread,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_scroll_thread
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_thread, %function
_libaroma_ctl_scroll_thread:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L471
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
.LPIC18:
	add	r2, pc
	sub	sp, sp, #20
	cmp	r3, r2
	beq	.L469
.L458:
	movs	r0, #0
.L451:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L469:
	ldr	r5, [r0, #4]
	ldr	r3, [r5, #204]
	cmp	r3, #0
	beq	.L458
	add	r6, r5, #244
	mov	r0, r6
	bl	pthread_mutex_lock(PLT)
	add	r0, r5, #272
	bl	pthread_cond_signal(PLT)
	mov	r0, r6
	bl	pthread_mutex_unlock(PLT)
	ldrb	r3, [r5, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L458
	ldr	r0, .L471+4
	movs	r7, #0
	movs	r3, #4
	mov	r2, r7
	mov	r1, sp
	stmia	sp, {r4, r5}
.LPIC19:
	add	r0, pc
	strb	r7, [sp, #8]
	bl	GOMP_parallel_sections_start(PLT)
	mov	r0, sp
	bl	_libaroma_ctl_scroll_thread._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	ldr	r5, [sp]
	ldr	r4, [sp, #4]
	cbz	r3, .L455
	mov	r3, #-1
	str	r3, [r4, #52]
.L455:
	ldr	r1, [r4, #12]
	adds	r3, r1, #1
	beq	.L456
	add	r6, r4, #220
	mov	r0, r5
	bl	libaroma_ctl_scroll_set_height(PLT)
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	mov	r3, #-1
	mov	r0, r6
	str	r3, [r4, #12]
	bl	omp_unset_nest_lock(PLT)
.L456:
	ldrb	r3, [r4, #40]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L470
.L457:
	ldr	r0, [r4, #52]
	ldr	r3, [r4, #16]
	subs	r0, r0, r3
	it	ne
	movne	r0, #1
	b	.L451
.L470:
	mov	r0, r5
	movs	r1, #0
	bl	_libaroma_ctl_scroll_updatecache(PLT)
	b	.L457
.L472:
	.align	2
.L471:
	.word	.LANCHOR0-(.LPIC18+4)
	.word	_libaroma_ctl_scroll_thread._omp_fn.0-(.LPIC19+4)
	.size	_libaroma_ctl_scroll_thread, .-_libaroma_ctl_scroll_thread
	.section	.text.libaroma_ctl_scroll_request_pos,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_request_pos
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_request_pos, %function
libaroma_ctl_scroll_request_pos:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L480
	ldr	r3, [r0, #72]
.LPIC20:
	add	r2, pc
	cmp	r3, r2
	beq	.L479
	movs	r0, #0
	bx	lr
.L479:
	ldr	r3, [r0, #4]
	ldr	r2, [r3, #24]
	cmp	r1, r2
	bgt	.L478
	ldr	r2, [r3, #324]
	cmp	r1, r2
	blt	.L478
	str	r1, [r3, #28]
	movs	r0, #1
	bx	lr
.L478:
	str	r2, [r3, #28]
	movs	r0, #1
	bx	lr
.L481:
	.align	2
.L480:
	.word	.LANCHOR0-(.LPIC20+4)
	.size	libaroma_ctl_scroll_request_pos, .-libaroma_ctl_scroll_request_pos
	.section	.text._libaroma_ctl_scroll_touch_handler,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_scroll_touch_handler
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_touch_handler, %function
_libaroma_ctl_scroll_touch_handler:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r4, .L563
	sub	sp, sp, #12
	ldr	r0, [r0, #72]
.LPIC21:
	add	r4, pc
	ldrb	r6, [sp, #48]	@ zero_extendqisi2
	cmp	r0, r4
	beq	.L554
.L545:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L554:
	cmp	r6, #1
	mov	r9, r1
	mov	r7, r2
	mov	r8, r3
	ldr	r4, [r5, #4]
	beq	.L485
	bcc	.L486
	cmp	r6, #2
	bne	.L545
.L486:
	ldrb	r3, [r4, #62]	@ zero_extendqisi2
	mov	r10, #0
	str	r7, [r4, #100]
	str	r10, [r4, #108]
	cmp	r3, #2
	beq	.L555
.L496:
	cmp	r3, #1
	beq	.L556
.L503:
	cmp	r6, #0
	bne	.L545
.L562:
	ldrb	r3, [r4, #61]	@ zero_extendqisi2
	str	r6, [r4, #108]
	cmp	r3, #0
	bne	.L515
	ldrb	r3, [r4, #62]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L557
.L517:
	add	r6, r4, #208
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r2, [r4, #76]
	cbnz	r2, .L519
	ldrb	r3, [r4, #80]	@ zero_extendqisi2
	cbz	r3, .L520
.L519:
	ldr	r3, [r4, #204]
	ldr	r3, [r3, #12]
	cbz	r3, .L520
	ldr	r3, [r4, #16]
	add	r8, r8, r3
	cmp	r2, #0
	bne	.L558
.L523:
	mov	r3, r8
	mov	r0, r5
	movs	r1, #3
	mov	r2, r7
	bl	_libaroma_ctl_scroll_client_msg(PLT)
	cmp	r0, #2
	itt	eq
	moveq	r3, #-1
	streq	r3, [r4, #52]
.L520:
	movs	r5, #0
	mov	r0, r6
	str	r5, [r4, #76]
	strb	r5, [r4, #80]
	bl	omp_unset_nest_lock(PLT)
	ldr	r3, [r4, #96]
	strb	r5, [r4, #61]
	strb	r5, [r4, #62]
	strb	r5, [r4, #60]
	str	r5, [r4, #64]
	str	r5, [r4, #68]
	str	r7, [r4, #100]
	cmp	r3, #0
	bne	.L545
	movs	r3, #0
	movs	r1, #1
	movs	r2, #3
	str	r1, [r4, #96]
	strb	r2, [r4, #81]
	str	r3, [r4, #92]	@ float
	b	.L545
.L485:
	ldr	r3, [r4, #112]
	movs	r0, #2
	eor	r10, r3, r3, asr #31
	sub	r10, r10, r3, asr #31
	bl	libaroma_dp(PLT)
	rsb	r0, r0, r0, lsl #8
	cmp	r10, r0
	it	gt
	movgt	fp, r6
	ble	.L559
.L487:
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	and	r3, r3, #4
	and	r2, r3, #255
	cmp	r3, #0
	bne	.L560
	str	r2, [sp, #4]
	strb	r2, [r4, #61]
.L490:
	movs	r1, #1
	movs	r6, #0
	add	r10, r4, #208
	strb	r1, [r4, #62]
	strb	r1, [r4, #60]
	mov	r0, r10
	str	r6, [r4, #108]
	str	r6, [r4, #112]
	str	r1, [sp]
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [sp, #4]
	strb	r6, [r4, #80]
	str	r6, [r4, #76]
	orr	fp, r3, fp
	ldr	r1, [sp]
	tst	fp, #255
	bne	.L491
	ldr	r3, [r4, #204]
	ldr	r3, [r3, #12]
	cbz	r3, .L493
	ldr	r3, [r4, #16]
	mov	r0, r5
	mov	r2, r7
	add	r3, r3, r8
	bl	_libaroma_ctl_scroll_client_msg(PLT)
	cmp	r0, #1
	beq	.L561
.L493:
	mov	r0, r10
	bl	omp_unset_nest_lock(PLT)
.L494:
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	lsls	r2, r3, #29
	itt	mi
	movmi	r3, #-1
	strmi	r3, [r4, #28]
	b	.L495
.L491:
	mov	r0, r10
	str	r1, [sp]
	bl	omp_unset_nest_lock(PLT)
	ldmia	sp, {r1, r3}
	cmp	r3, #0
	beq	.L494
	strb	r1, [r4, #62]
	movs	r0, #36
	ldr	r9, [r5, #28]
	bl	libaroma_dp(PLT)
	ldr	r6, [r5, #28]
	rsb	r9, r0, r9
	ldr	r1, [r4, #20]
	mul	r0, r9, r6
	add	r6, r6, r6, lsr #31
	sub	r6, r8, r6, asr #1
	bl	__aeabi_idiv(PLT)
	rsb	r1, r0, r9
	ldr	r3, [r4, #24]
	add	r0, r1, r1, lsr #31
	add	r0, r6, r0, asr #1
	mul	r0, r3, r0
	bl	__aeabi_idiv(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	libaroma_ctl_scroll_request_pos(PLT)
.L495:
	add	r0, r4, #116
	mov	r1, r8
	bl	libaroma_fling_down(PLT)
	ldr	r3, [r4, #16]
	str	r7, [r4, #64]
	str	r8, [r4, #68]
	str	r7, [r4, #100]
	str	r3, [r4, #72]
	b	.L545
.L559:
	ldr	r6, [r4, #108]
	adds	fp, r6, #0
	it	ne
	movne	fp, #1
	b	.L487
.L556:
	ldr	r2, [r4, #68]
	cmp	r2, r8
	beq	.L503
	ldrb	r1, [r4, #61]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L504
	ldr	r1, [r4, #16]
	rsb	r2, r8, r2
	ldr	r0, [r4, #324]
	add	r1, r1, r2
	cmp	r1, r0
	bge	.L505
	ldr	r3, [r4, #84]
	cmp	r3, #0
	beq	.L506
	ldr	r1, [r4, #104]
.L507:
	adds	r3, r2, r1
	str	r3, [r4, #104]
.L508:
	ldr	r1, [r4, #72]
	cmp	r10, #0
	beq	.L511
	mov	r0, r5
	add	r1, r1, r2
	bl	libaroma_ctl_scroll_request_pos(PLT)
.L512:
	ldr	r3, [r4, #16]
	add	r0, r4, #116
	mov	r1, r8
	str	r3, [r4, #72]
	bl	libaroma_fling_move(PLT)
.L513:
	str	r8, [r4, #68]
	cmp	r6, #0
	beq	.L562
	b	.L545
.L515:
	ldrb	r3, [r4, #62]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L517
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bmi	.L517
	ldr	r3, [r9, #20]
	mov	r1, #256
	mov	r2, #-1
	str	r1, [r4, #36]
	str	r2, [r4, #52]
	str	r3, [r4, #32]
	b	.L517
.L560:
	ldr	r6, [r5, #24]
	movs	r0, #36
	bl	libaroma_dp(PLT)
	subs	r0, r6, r0
	cmp	r0, r7
	ite	ge
	movge	r3, #0
	movlt	r3, #1
	strb	r3, [r4, #61]
	cbz	r3, .L527
	ldr	r3, [r4, #36]
	cbz	r3, .L527
	ldr	r3, [r4, #24]
	cmp	r3, #0
	ite	le
	movle	r3, #0
	movgt	r3, #1
	str	r3, [sp, #4]
	b	.L490
.L527:
	str	r3, [sp, #4]
	b	.L490
.L555:
	add	fp, r4, #208
	mov	r0, fp
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #68]
	ldrb	r0, [r4, #80]	@ zero_extendqisi2
	rsb	r3, r8, r3
	cmp	r0, r10
	ite	eq
	moveq	r0, #5
	movne	r0, #24
	str	r3, [sp]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r0, r3
	itttt	le
	movle	r3, #1
	strle	r10, [r4, #76]
	strble	r3, [r4, #62]
	movle	r10, r3
	ldrb	r3, [r4, #80]	@ zero_extendqisi2
	ite	le
	movle	r1, #5
	movgt	r1, #4
	cbz	r3, .L500
	ldr	r3, [r4, #204]
	ldr	r3, [r3, #12]
	cbz	r3, .L500
	ldr	r3, [r4, #16]
	mov	r0, r5
	mov	r2, r7
	str	r1, [sp]
	add	r3, r3, r8
	bl	_libaroma_ctl_scroll_client_msg(PLT)
	ldr	ip, [sp]
	cmp	r0, #2
	itt	eq
	moveq	r3, #-1
	streq	r3, [r4, #52]
	cmp	ip, #5
	itt	eq
	moveq	r3, #0
	strbeq	r3, [r4, #80]
.L500:
	mov	r0, fp
	bl	omp_unset_nest_lock(PLT)
	ldrb	r3, [r4, #62]	@ zero_extendqisi2
	b	.L496
.L558:
	mov	r3, r8
	mov	r0, r5
	movs	r1, #2
	mov	r2, r7
	bl	_libaroma_ctl_scroll_client_msg(PLT)
	cmp	r0, #2
	itt	eq
	moveq	r3, #-1
	streq	r3, [r4, #52]
	b	.L523
.L504:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	ble	.L513
	movs	r0, #36
	ldr	fp, [r5, #28]
	bl	libaroma_dp(PLT)
	ldr	r10, [r5, #28]
	rsb	fp, r0, fp
	ldr	r1, [r4, #20]
	mul	r0, fp, r10
	add	r10, r10, r10, lsr #31
	bl	__aeabi_idiv(PLT)
	rsb	r1, r0, fp
	ldr	r3, [r4, #24]
	add	r0, r1, r1, lsr #31
	sub	r2, r8, r10, asr #1
	add	r0, r2, r0, asr #1
	mul	r0, r3, r0
	bl	__aeabi_idiv(PLT)
	mov	r1, r0
	mov	r0, r5
	bl	libaroma_ctl_scroll_request_pos(PLT)
	b	.L513
.L561:
	ldr	r3, [r9, #20]
	movs	r2, #2
	strb	r2, [r4, #62]
	str	r3, [r4, #76]
	b	.L493
.L557:
	mov	r1, r8
	add	r0, r4, #116
	bl	libaroma_fling_up(PLT)
	mov	r9, r0
	movs	r0, #18
	bl	libaroma_px(PLT)
	mul	r9, r0, r9
	movs	r0, #4
	bl	libaroma_dp(PLT)
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_idiv(PLT)
	str	r0, [r4, #112]
	cmp	r0, #0
	beq	.L517
	strb	r6, [r4, #60]
	b	.L517
.L505:
	ldr	r0, [r4, #24]
	cmp	r1, r0
	ble	.L509
	ldr	r3, [r4, #84]
	cbnz	r3, .L510
	ldr	r0, [r9, #20]
	movs	r1, #0
	strb	r3, [r4, #81]
	str	r3, [r4, #96]
	str	r0, [r4, #84]
	str	r3, [r4, #104]
	str	r1, [r4, #88]	@ float
	str	r1, [r4, #92]	@ float
.L510:
	ldr	r3, [r4, #104]
	add	r3, r3, r2
	str	r3, [r4, #104]
	b	.L508
.L511:
	mov	r3, #-1
	mov	r0, r5
	str	r3, [r4, #28]
	add	r1, r1, r2
	bl	libaroma_ctl_scroll_set_pos(PLT)
	b	.L512
.L509:
	ldr	r1, [r4, #96]
	cmp	r1, #0
	bne	.L508
	movs	r1, #0
	movs	r0, #3
	str	r3, [r4, #96]
	strb	r0, [r4, #81]
	str	r1, [r4, #92]	@ float
	b	.L508
.L506:
	ldr	r0, [r9, #20]
	mov	lr, #0
	mov	r1, r3
	strb	r3, [r4, #81]
	str	r3, [r4, #96]
	str	r0, [r4, #84]
	str	lr, [r4, #88]	@ float
	str	lr, [r4, #92]	@ float
	b	.L507
.L564:
	.align	2
.L563:
	.word	.LANCHOR0-(.LPIC21+4)
	.size	_libaroma_ctl_scroll_touch_handler, .-_libaroma_ctl_scroll_touch_handler
	.section	.text._libaroma_ctl_scroll_msg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_scroll_msg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_scroll_msg, %function
_libaroma_ctl_scroll_msg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L576
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
.LPIC22:
	add	r2, pc
	sub	sp, sp, #28
	cmp	r3, r2
	beq	.L575
.L571:
	movs	r0, #0
.L566:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L575:
	ldrb	r3, [r1]	@ zero_extendqisi2
	mov	r5, r1
	ldr	r6, [r0, #4]
	cmp	r3, #129
	beq	.L568
	cmp	r3, #130
	beq	.L569
	cmp	r3, #6
	bne	.L571
	ldr	r7, [r1, #8]
	add	r2, sp, #8
	ldr	r6, [r1, #12]
	add	r3, sp, #16
	mov	r1, r4
	movs	r0, #0
	str	r7, [sp, #8]
	str	r6, [sp, #16]
	bl	libaroma_window_calculate_pos(PLT)
	mov	r0, r4
	ldrb	r4, [r5, #1]	@ zero_extendqisi2
	ldr	r2, [sp, #8]
	mov	r1, r5
	ldr	r3, [sp, #16]
	str	r4, [sp]
	bl	_libaroma_ctl_scroll_touch_handler(PLT)
	b	.L566
.L568:
	mov	r2, #-1
	movs	r5, #0
	str	r2, [r6, #52]
	movs	r1, #1
	ldr	r2, .L576+4
	mov	r3, r0
	strb	r1, [r6, #7]
	add	r0, r6, #8
	mov	r1, r5
	str	r5, [r6, #76]
	strb	r5, [r6, #80]
.LPIC23:
	add	r2, pc
	bl	pthread_create(PLT)
	mov	r0, r5
	b	.L566
.L569:
	movs	r4, #0
	add	r7, r6, #244
	movw	r0, #30000
	strb	r4, [r6, #7]
	bl	usleep(PLT)
	mov	r0, r7
	add	r5, r6, #208
	bl	pthread_mutex_lock(PLT)
	add	r0, r6, #272
	bl	pthread_cond_signal(PLT)
	mov	r0, r7
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	mov	r1, r4
	ldr	r0, [r6, #8]
	bl	pthread_join(PLT)
	mov	r3, #-1
	mov	r0, r5
	str	r4, [r6, #8]
	str	r4, [r6, #76]
	strb	r4, [r6, #80]
	str	r3, [r6, #52]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	b	.L566
.L577:
	.align	2
.L576:
	.word	.LANCHOR0-(.LPIC22+4)
	.word	_libaroma_ctl_scroll_calc_thread-(.LPIC23+4)
	.size	_libaroma_ctl_scroll_msg, .-_libaroma_ctl_scroll_msg
	.section	.text.libaroma_ctl_scroll_get_bg_color,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_get_bg_color
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_get_bg_color, %function
libaroma_ctl_scroll_get_bg_color:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L581
	ldr	r3, [r0, #72]
.LPIC24:
	add	r2, pc
	cmp	r3, r2
	itte	eq
	ldreq	r3, [r0, #4]
	ldrheq	r0, [r3, #4]
	movne	r0, #0
	bx	lr
.L582:
	.align	2
.L581:
	.word	.LANCHOR0-(.LPIC24+4)
	.size	libaroma_ctl_scroll_get_bg_color, .-libaroma_ctl_scroll_get_bg_color
	.section	.text.libaroma_ctl_scroll_set_client,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_set_client
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_set_client, %function
libaroma_ctl_scroll_set_client:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r2, .L586
	push	{r4, r5, r6, lr}
	mov	r3, r0
	ldr	r5, .L596
	sub	sp, sp, #8
	ldr	r4, [r0, #72]
.LPIC25:
	add	r5, pc
	cmp	r4, r5
	it	ne
	movne	r0, #0
	beq	.L595
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L595:
	ldr	r4, [r3, #4]
	mov	r6, r1
	ldr	r3, [r4, #204]
	cbz	r3, .L585
	ldr	r3, [r3, #4]
	cbz	r3, .L585
	str	r2, [sp, #4]
	add	r1, r4, #200
	blx	r3
	ldr	r2, [sp, #4]
.L585:
	mov	r1, #-1
	movs	r3, #10
	movs	r0, #1
	str	r2, [r4, #204]
	str	r6, [r4, #200]
	str	r1, [r4, #52]
	strb	r3, [r4, #40]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L586:
	mov	r0, r2
	bx	lr
.L597:
	.align	2
.L596:
	.word	.LANCHOR0-(.LPIC25+4)
	.size	libaroma_ctl_scroll_set_client, .-libaroma_ctl_scroll_set_client
	.section	.text.libaroma_ctl_scroll_get_client,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_get_client
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_get_client, %function
libaroma_ctl_scroll_get_client:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L602
	ldr	r3, [r0, #72]
.LPIC26:
	add	r2, pc
	cmp	r3, r2
	bne	.L600
	ldr	r0, [r0, #4]
	ldr	r3, [r0, #204]
	cbz	r3, .L601
	adds	r0, r0, #200
	bx	lr
.L600:
	movs	r0, #0
	bx	lr
.L601:
	mov	r0, r3
	bx	lr
.L603:
	.align	2
.L602:
	.word	.LANCHOR0-(.LPIC26+4)
	.size	libaroma_ctl_scroll_get_client, .-libaroma_ctl_scroll_get_client
	.section	.text.libaroma_ctl_scroll_is_visible,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_is_visible
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_is_visible, %function
libaroma_ctl_scroll_is_visible:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	ldr	r4, .L613
	ldr	r3, [r0, #72]
.LPIC27:
	add	r4, pc
	cmp	r3, r4
	it	ne
	movne	r0, #0
	beq	.L612
.L605:
	ldr	r4, [sp], #4
	bx	lr
.L612:
	ldr	r3, [r0, #4]
	ldr	r4, [r3]
	cbz	r4, .L607
	ldrb	r0, [r3, #7]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L605
	ldr	r3, [r3, #48]
	adds	r0, r1, r2
	ldr	r4, [r4, #4]
	cmp	r0, r3
	add	r4, r4, r3
	ite	le
	movle	r0, #0
	movgt	r0, #1
	cmp	r1, r4
	it	ge
	movge	r0, #0
	ldr	r4, [sp], #4
	bx	lr
.L607:
	mov	r0, r4
	b	.L605
.L614:
	.align	2
.L613:
	.word	.LANCHOR0-(.LPIC27+4)
	.size	libaroma_ctl_scroll_is_visible, .-libaroma_ctl_scroll_is_visible
	.section	.text.libaroma_ctl_scroll_blit,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_blit
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_blit, %function
libaroma_ctl_scroll_blit:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	ldr	r5, .L641
	ldr	r4, [r0, #72]
.LPIC28:
	add	r5, pc
	ldrb	r6, [sp, #88]	@ zero_extendqisi2
	cmp	r4, r5
	it	ne
	movne	r0, #0
	beq	.L638
.L632:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L638:
	ldr	r4, [r0, #4]
	ldr	r5, [r4]
	cmp	r5, #0
	beq	.L626
	ldrb	r0, [r4, #7]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L632
	mov	r7, r1
	ldr	r1, [sp, #80]
	bic	r8, r2, r2, asr #31
	ldr	r2, [r5]
	cmp	r1, #0
	ble	.L618
	add	r1, r1, r8
	cmp	r1, r2
	bgt	.L618
.L619:
	ldr	r0, [sp, #84]
	ldr	r1, [r4, #48]
	ldr	r5, [r5, #4]
	add	r0, r0, r3
	cmp	r0, r1
	add	r2, r5, r1
	ite	le
	movle	r0, #0
	movgt	r0, #1
	cmp	r3, r2
	it	ge
	movge	r0, #0
	cmp	r0, #0
	beq	.L632
	ldr	fp, [r4, #44]
	subs	r0, r3, r1
	mov	r1, r5
	add	r0, r0, fp
	bl	__aeabi_idivmod(PLT)
	ldr	r3, [sp, #84]
	mov	r9, r1
	add	r3, r3, r1
	cmp	r5, r3
	rsb	r10, r5, r3
	it	ge
	movge	fp, #0
	bge	.L620
	cmp	fp, #0
	beq	.L620
	cmp	r10, #0
	ite	le
	movle	fp, #0
	movgt	fp, #1
.L620:
	add	r5, r4, #232
	mov	r0, r5
	str	r5, [sp, #36]
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r4]
	cmp	r6, #0
	bne	.L639
	ldr	r2, [sp, #80]
	mov	ip, #1
	ldr	r5, [sp, #84]
	mov	lr, #255
	mov	r3, r9
	str	r6, [sp]
	str	r2, [sp, #8]
	mov	r1, r7
	str	r6, [sp, #4]
	mov	r2, r8
	str	r5, [sp, #12]
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	cmp	fp, #0
	bne	.L623
.L624:
	ldr	r0, [sp, #36]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	b	.L632
.L618:
	rsb	r2, r8, r2
	str	r2, [sp, #80]
	b	.L619
.L626:
	mov	r0, r5
	b	.L632
.L640:
	str	r10, [sp]
	mov	r1, r8
	ldrh	lr, [r4, #4]
	movs	r2, #0
	ldr	r3, [sp, #80]
	str	r6, [sp, #8]
	str	lr, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	ldr	r2, [sp, #80]
	mov	lr, #0
	ldr	r5, [sp, #84]
	mov	ip, #1
	ldr	r0, [r4]
	mov	r3, r9
	str	r2, [sp, #8]
	mov	r1, r7
	str	r5, [sp, #12]
	mov	r2, r8
	str	r6, [sp, #20]
	str	lr, [sp]
	str	lr, [sp, #4]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	str	ip, [sp, #16]
	bl	libaroma_draw_ex2(PLT)
.L623:
	ldr	r1, [sp, #84]
	mov	lr, #1
	ldr	r2, [sp, #80]
	movs	r6, #255
	ldr	r0, [r4]
	movs	r4, #0
	rsb	r3, r10, r1
	str	r10, [sp, #12]
	str	r2, [sp, #8]
	mov	r1, r7
	str	r3, [sp, #4]
	mov	r2, r8
	str	r4, [sp]
	mov	r3, r4
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	lr, [sp, #16]
	str	r6, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L624
.L639:
	ldr	r1, [sp, #84]
	movs	r6, #255
	mov	r2, r9
	ldr	r3, [sp, #80]
	str	r1, [sp]
	mov	r1, r8
	ldrh	lr, [r4, #4]
	str	r6, [sp, #8]
	str	lr, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	ldr	r0, [r4]
	cmp	fp, #0
	bne	.L640
	ldr	r3, [sp, #80]
	movs	r4, #1
	ldr	r5, [sp, #84]
	mov	r1, r7
	str	fp, [sp]
	mov	r2, r8
	str	r3, [sp, #8]
	mov	r3, r9
	str	fp, [sp, #4]
	str	r5, [sp, #12]
	str	r6, [sp, #20]
	str	fp, [sp, #24]
	str	fp, [sp, #28]
	str	r4, [sp, #16]
	bl	libaroma_draw_ex2(PLT)
	b	.L624
.L642:
	.align	2
.L641:
	.word	.LANCHOR0-(.LPIC28+4)
	.size	libaroma_ctl_scroll_blit, .-libaroma_ctl_scroll_blit
	.section	.text.libaroma_ctl_scroll_set_min_scroll,"ax",%progbits
	.align	2
	.global	libaroma_ctl_scroll_set_min_scroll
	.thumb
	.thumb_func
	.type	libaroma_ctl_scroll_set_min_scroll, %function
libaroma_ctl_scroll_set_min_scroll:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, .L649
	ldr	r3, [r0, #72]
.LPIC29:
	add	r4, pc
	cmp	r3, r4
	beq	.L648
.L646:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L648:
	cmp	r2, #0
	ldr	r4, [r0, #4]
	blt	.L646
	add	r5, r4, #220
	str	r1, [sp, #4]
	mov	r0, r5
	str	r2, [sp]
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	mov	r3, #-1
	ldr	r2, [sp]
	mov	r0, r5
	str	r3, [r4, #52]
	str	r1, [r4, #320]
	str	r2, [r4, #324]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L650:
	.align	2
.L649:
	.word	.LANCHOR0-(.LPIC29+4)
	.size	libaroma_ctl_scroll_set_min_scroll, .-libaroma_ctl_scroll_set_min_scroll
	.section	.data.rel._libaroma_ctl_scroll_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_ctl_scroll_handler, %object
	.size	_libaroma_ctl_scroll_handler, 20
_libaroma_ctl_scroll_handler:
	.word	_libaroma_ctl_scroll_msg
	.word	_libaroma_ctl_scroll_draw
	.word	0
	.word	_libaroma_ctl_scroll_destroy
	.word	_libaroma_ctl_scroll_thread
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"I/%s: \000"
	.space	1
.LC1:
	.ascii	"Start scroll calculation thread\000"
.LC2:
	.ascii	"End scroll calculation thread\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
