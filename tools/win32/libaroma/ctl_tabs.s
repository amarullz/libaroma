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
	.file	"ctl_tabs.c"
	.section	.text._libaroma_ctl_tabs_thread,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_thread
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_thread, %function
_libaroma_ctl_tabs_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L38
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, [r0, #72]
.LPIC0:
	add	r2, pc
	cmp	r3, r2
	beq	.L35
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L35:
	ldr	r5, [r0, #4]
	mov	r0, r5
	ldrb	r6, [r5, #64]	@ zero_extendqisi2
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r5, #56]
	cmp	r0, #1
	ble	.L3
	movs	r1, #200
	bl	libaroma_duration_state(PLT)
	fconsts	s15, #112
	fcmpes	s0, s15
	fmstat
	blt	.L31
	ldr	r3, [r5, #52]
	movs	r7, #0
	movs	r2, #0
	str	r7, [r5, #56]
	str	r2, [r5, #60]	@ float
	movs	r6, #1
	cbz	r3, .L3
	movs	r6, #1
	add	r0, r5, #52
	mov	r1, r7
	bl	libaroma_canvas_free_ex1(PLT)
	str	r7, [r5, #52]
.L3:
	ldr	r3, [r5, #76]
	adds	r7, r3, #1
	beq	.L6
	ldr	r2, [r5, #72]
	cmp	r3, r2
	beq	.L7
	subs	r1, r3, r2
	sbfx	r1, r1, #2, #24
	adds	r0, r1, #1
	cmp	r0, #2
	bls	.L36
.L8:
	add	r2, r2, r1
	cmp	r3, r2
	str	r2, [r5, #72]
	itt	eq
	moveq	r3, #-1
	streq	r3, [r5, #76]
.L10:
	movs	r3, #0
	str	r3, [r5, #100]
.L11:
	ldr	r3, [r5, #96]
	cmp	r3, #0
	blt	.L16
	add	r0, r5, #112
	movs	r1, #180
	bl	libaroma_ripple_thread(PLT)
	tst	r0, #1
	it	ne
	movne	r6, #1
	lsls	r3, r0, #28
	itt	mi
	movmi	r3, #-1
	strmi	r3, [r5, #96]
.L16:
	ldr	r2, [r5, #68]
	mov	r0, r5
	ldr	r3, [r5, #72]
	cmp	r2, r3
	beq	.L37
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L36:
	adds	r0, r1, #1
	it	ne
	movne	r1, #1
	b	.L8
.L31:
	flds	s15, [r5, #60]
	fcmps	s0, s15
	fmstat
	itt	ne
	movne	r6, #1
	fstsne	s0, [r5, #60]
	b	.L3
.L6:
	ldr	r3, [r5, #100]
	cmp	r3, #0
	beq	.L11
	ldrb	r2, [r5, #113]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L11
	movs	r1, #246
	mul	r3, r1, r3
	asrs	r1, r3, #8
	add	r0, r1, #255
	str	r1, [r5, #100]
	cmp	r0, #510
	itt	ls
	strls	r2, [r5, #100]
	movls	r6, #1
	bls	.L11
	ldr	r7, [r5, #12]
	ldr	r1, [r5, #72]
	ldr	r0, [r4, #24]
	ldr	r4, [r7]
	add	r3, r1, r3, asr #16
	subs	r0, r4, r0
	cmp	r3, r0
	ittt	ge
	movge	r3, r0
	movge	r6, #1
	strge	r2, [r5, #100]
	cmp	r3, #0
	itttt	le
	movle	r2, #0
	movle	r6, #1
	movle	r3, r2
	strle	r2, [r5, #100]
	cmp	r1, r3
	itt	ne
	movne	r6, #1
	strne	r3, [r5, #72]
	b	.L11
.L37:
	bl	omp_unset_nest_lock(PLT)
	adds	r0, r6, #0
	it	ne
	movne	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L7:
	mov	r3, #-1
	str	r3, [r5, #76]
	b	.L10
.L39:
	.align	2
.L38:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_ctl_tabs_thread, .-_libaroma_ctl_tabs_thread
	.section	.text._libaroma_ctl_tabs_indicator_x,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_indicator_x
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_indicator_x, %function
_libaroma_ctl_tabs_indicator_x:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L53
	ldr	r3, [r0, #72]
.LPIC1:
	add	r2, pc
	cmp	r3, r2
	beq	.L52
	movs	r0, #0
	bx	lr
.L52:
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, [r0, #4]
	ldr	r3, [r5, #44]
	ldr	r6, [r5, #352]
	ldr	r2, [r5, #348]
	cmp	r3, #0
	add	r6, r6, r2
	ble	.L46
	mov	r8, r1
	cbz	r1, .L49
	movs	r4, #0
	b	.L44
.L45:
	cmp	r8, r4
	beq	.L49
.L44:
	ldr	r3, [r5, #36]
	movs	r0, #24
	ldr	r7, [r3, r4, lsl #2]
	adds	r4, r4, #1
	bl	libaroma_dp(PLT)
	ldr	r3, [r5, #44]
	add	r0, r0, r7
	add	r6, r6, r0
	cmp	r4, r3
	blt	.L45
.L46:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L49:
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, pc}
.L54:
	.align	2
.L53:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	_libaroma_ctl_tabs_indicator_x, .-_libaroma_ctl_tabs_indicator_x
	.section	.text._libaroma_ctl_tabs_calc_x,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_calc_x
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_calc_x, %function
_libaroma_ctl_tabs_calc_x:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	ldr	r0, .L70
	ldr	r2, [r3, #72]
.LPIC2:
	add	r0, pc
	cmp	r2, r0
	beq	.L68
	movs	r0, #0
	bx	lr
.L68:
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	ldr	r4, [r3, #4]
	ldrb	r2, [r4, #92]	@ zero_extendqisi2
	cbnz	r2, .L69
.L57:
	ldr	r6, [r4, #84]
	movs	r0, #24
	ldr	r5, [r4, #80]
	ldr	r3, [r3, #24]
	ldr	r7, [r4, #12]
	ldr	r2, [r4, #72]
	add	r5, r5, r6, asr #1
	ldr	r7, [r7]
	sub	r5, r5, r3, asr #1
	str	r1, [sp, #4]
	bic	r5, r5, r5, asr #31
	subs	r3, r7, r3
	cmp	r5, r3
	it	ge
	movge	r5, r3
	subs	r2, r5, r2
	eor	r6, r2, r2, asr #31
	sub	r6, r6, r2, asr #31
	bl	libaroma_dp(PLT)
	cmp	r6, r0
	ldr	r1, [sp, #4]
	bgt	.L58
	cbnz	r1, .L58
	mov	r3, #-1
	str	r5, [r4, #72]
	str	r3, [r4, #76]
.L56:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L69:
	cmp	r1, #0
	bne	.L57
	b	.L56
.L58:
	movs	r0, #0
	str	r5, [r4, #76]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L71:
	.align	2
.L70:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_ctl_tabs_calc_x, .-_libaroma_ctl_tabs_calc_x
	.global	__aeabi_idiv
	.section	.text._libaroma_ctl_tabs_pager_onscroll,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_pager_onscroll
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_pager_onscroll, %function
_libaroma_ctl_tabs_pager_onscroll:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	ldr	r5, .L81
	ldr	r3, [r0, #72]
.LPIC3:
	add	r5, pc
	fstmfdd	sp!, {d8}
	ldr	r6, [sp, #40]
	cmp	r3, r5
	ldr	r8, [sp, #44]
	beq	.L78
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L78:
	ldr	r5, [r0, #4]
	mov	r7, r2
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	mov	r1, r6
	mov	r0, r7
	bl	__aeabi_idiv(PLT)
	fmsr	s13, r0	@ int
	fsitod	d0, s13
	bl	floor(PLT)
	ftosizd	s0, d0
	fmrs	r9, s0	@ int
	cmp	r9, #0
	blt	.L74
	ldr	r3, [r5, #44]
	cmp	r9, r3
	blt	.L79
.L74:
	fldmfdd	sp!, {d8}
	mov	r0, r5
	str	r8, [r5, #88]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	omp_unset_nest_lock(PLT)
.L79:
	mls	r7, r9, r6, r7
	fmsr	s14, r6	@ int
	fsitos	s15, s14
	ldr	r3, [r5, #36]
	movs	r0, #24
	lsl	r10, r9, #2
	fmsr	s16, r7	@ int
	ldr	r6, [r3, r9, lsl #2]
	fsitos	s16, s16
	fdivs	s16, s16, s15
	bl	libaroma_dp(PLT)
	ldr	r3, [r5, #88]
	add	r6, r6, r0
	str	r6, [r5, #84]
	cmp	r9, r3
	ldr	r3, [r5, #44]
	add	r3, r3, #-1
	blt	.L75
	cmp	r9, r3
	blt	.L80
.L76:
	mov	r1, r9
	mov	r0, r4
	bl	_libaroma_ctl_tabs_indicator_x(PLT)
	fmsr	s15, r6	@ int
	movs	r1, #0
	fmsr	s13, r0	@ int
	mov	r0, r4
	fsitos	s14, s15
	fsitos	s15, s13
	fmacs	s15, s14, s16
	ftosizs	s15, s15
	fsts	s15, [r5, #80]	@ int
	bl	_libaroma_ctl_tabs_calc_x(PLT)
	movs	r3, #1
	strb	r3, [r5, #64]
	b	.L74
.L75:
	cmp	r9, r3
	bge	.L76
	ldr	r3, [r5, #36]
	movs	r0, #24
	add	r3, r3, r10
	ldr	r7, [r3, #4]
	bl	libaroma_dp(PLT)
	add	r0, r0, r7
	subs	r7, r6, r0
	fmsr	s14, r7	@ int
	fsitos	s15, s14
	fmuls	s15, s15, s16
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	subs	r3, r6, r3
	str	r3, [r5, #84]
	b	.L76
.L80:
	ldr	r3, [r5, #36]
	movs	r0, #24
	add	r3, r3, r10
	ldr	r7, [r3, #4]
	bl	libaroma_dp(PLT)
	add	r0, r0, r7
	subs	r7, r0, r6
	fmsr	s13, r7	@ int
	fsitos	s15, s13
	fmuls	s15, s15, s16
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	add	r3, r3, r6
	str	r3, [r5, #84]
	b	.L76
.L82:
	.align	2
.L81:
	.word	.LANCHOR0-(.LPIC3+4)
	.size	_libaroma_ctl_tabs_pager_onscroll, .-_libaroma_ctl_tabs_pager_onscroll
	.section	.text._libaroma_ctl_tabs_pager_onscroll_finish,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_pager_onscroll_finish
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_pager_onscroll_finish, %function
_libaroma_ctl_tabs_pager_onscroll_finish:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, .L89
	sub	sp, sp, #8
	ldr	r3, [r4, #72]
.LPIC4:
	add	r0, pc
	cmp	r3, r0
	beq	.L87
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L87:
	ldr	r5, [r4, #4]
	str	r2, [sp, #4]
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r2, [sp, #4]
	cmp	r2, #0
	blt	.L85
	ldr	r3, [r5, #44]
	cmp	r2, r3
	blt	.L88
.L85:
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	omp_unset_nest_lock(PLT)
.L88:
	mov	r1, r2
	mov	r0, r4
	bl	_libaroma_ctl_tabs_indicator_x(PLT)
	ldr	r3, [r5, #36]
	ldr	r2, [sp, #4]
	str	r0, [r5, #80]
	movs	r0, #24
	ldr	r6, [r3, r2, lsl #2]
	bl	libaroma_dp(PLT)
	ldr	r2, [sp, #4]
	movs	r1, #1
	add	r6, r6, r0
	mov	r0, r4
	str	r6, [r5, #84]
	str	r2, [r5, #88]
	bl	_libaroma_ctl_tabs_calc_x(PLT)
	movs	r2, #0
	movs	r3, #1
	strb	r2, [r5, #92]
	strb	r3, [r5, #64]
	b	.L85
.L90:
	.align	2
.L89:
	.word	.LANCHOR0-(.LPIC4+4)
	.size	_libaroma_ctl_tabs_pager_onscroll_finish, .-_libaroma_ctl_tabs_pager_onscroll_finish
	.section	.text._libaroma_ctl_tabs_pager_pos_x,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_pager_pos_x
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_pager_pos_x, %function
_libaroma_ctl_tabs_pager_pos_x:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L102
	ldr	r3, [r0, #72]
.LPIC5:
	add	r2, pc
	cmp	r3, r2
	bne	.L101
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r6, [r0, #4]
	ldr	r3, [r6, #44]
	ldr	r5, [r6, #352]
	ldr	r0, [r6, #348]
	ldr	r2, [r6, #68]
	cmp	r3, #0
	add	r5, r5, r0
	add	r8, r1, r2
	ble	.L94
	movs	r4, #0
.L97:
	ldr	r3, [r6, #36]
	movs	r0, #24
	ldr	r7, [r3, r4, lsl #2]
	bl	libaroma_dp(PLT)
	cmp	r8, r5
	add	r0, r0, r7
	add	r3, r5, r0
	it	lt
	movlt	r5, r3
	blt	.L96
	cmp	r8, r3
	mov	r5, r3
	blt	.L98
.L96:
	ldr	r3, [r6, #44]
	adds	r4, r4, #1
	cmp	r3, r4
	bgt	.L97
.L94:
	mov	r0, #-1
	pop	{r4, r5, r6, r7, r8, pc}
.L98:
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L101:
	mov	r0, #-1
	bx	lr
.L103:
	.align	2
.L102:
	.word	.LANCHOR0-(.LPIC5+4)
	.size	_libaroma_ctl_tabs_pager_pos_x, .-_libaroma_ctl_tabs_pager_pos_x
	.section	.text._libaroma_ctl_tabs_msg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_msg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_msg, %function
_libaroma_ctl_tabs_msg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L144+8
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
.LPIC6:
	add	r2, pc
	sub	sp, sp, #20
	cmp	r3, r2
	beq	.L138
.L105:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L138:
	ldrb	r3, [r1]	@ zero_extendqisi2
	mov	r5, r1
	ldr	r7, [r0, #4]
	cmp	r3, #130
	bhi	.L106
	cmp	r3, #129
	bcs	.L107
	cmp	r3, #6
	bne	.L105
	ldr	r6, [r5, #8]
	add	r3, sp, #8
	movs	r0, #0
	mov	r1, r4
	mov	r2, sp
	str	r6, [sp]
	ldr	r6, [r5, #12]
	str	r6, [sp, #8]
	bl	libaroma_window_calculate_pos(PLT)
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L139
	cmp	r3, #0
	bne	.L112
	ldrb	r3, [r7, #93]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L140
	ldr	r3, [sp, #8]
	cmp	r3, #0
	blt	.L137
	ldr	r2, [r4, #28]
	cmp	r3, r2
	bge	.L137
	ldr	r3, [sp]
	cmp	r3, #0
	blt	.L137
	ldr	r2, [r4, #24]
	cmp	r3, r2
	bge	.L137
	ldr	r1, [r7, #96]
	cmp	r1, #0
	blt	.L137
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L137
	mov	r0, r4
	bl	_libaroma_ctl_tabs_indicator_x(PLT)
	ldr	r2, [r7, #80]
	mov	r5, r0
	ldr	r3, [r4, #24]
	subs	r2, r0, r2
	cmp	r2, #0
	it	lt
	rsblt	r2, r2, #0
	cmp	r2, r3, asr #2
	bgt	.L141
.L122:
	add	r4, r7, #112
	movs	r1, #180
	mov	r0, r4
	bl	libaroma_ripple_up(PLT)
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #96]
	fldd	d0, .L144
	bl	libaroma_ctl_pager_set_active_page(PLT)
.L115:
	mov	r0, r4
	bl	libaroma_ripple_cancel(PLT)
	movs	r3, #1
	strb	r3, [r7, #64]
	b	.L105
.L106:
	cmp	r3, #132
	bne	.L105
.L107:
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	movs	r3, #1
	mov	r0, r7
	strb	r3, [r7, #64]
	bl	omp_unset_nest_lock(PLT)
	b	.L105
.L112:
	cmp	r3, #2
	bne	.L105
	ldrb	r3, [r7, #93]	@ zero_extendqisi2
	cmp	r3, #2
	itt	ne
	movne	r2, #0
	addne	r5, r7, #112
	beq	.L142
.L123:
	cmp	r3, #1
	beq	.L143
.L125:
	ldr	r2, [sp, #8]
	cmp	r2, #0
	blt	.L129
	ldr	r3, [r4, #28]
	cmp	r2, r3
	bge	.L129
	ldr	r3, [sp]
	cmp	r3, #0
	blt	.L129
	ldr	r1, [r4, #24]
	cmp	r3, r1
	blt	.L130
.L129:
	mov	r0, r5
	bl	libaroma_ripple_cancel(PLT)
	movs	r3, #1
	strb	r3, [r7, #64]
	b	.L105
.L137:
	add	r4, r7, #112
	b	.L115
.L139:
	add	r0, r7, #264
	ldr	r1, [sp]
	bl	libaroma_fling_down(PLT)
	ldr	r1, [sp]
	mov	r0, r4
	ldr	r3, [r7, #68]
	str	r1, [r7, #104]
	str	r3, [r7, #108]
	bl	_libaroma_ctl_tabs_pager_pos_x(PLT)
	cmp	r0, #0
	str	r0, [r7, #96]
	blt	.L110
	ldr	r1, [r7, #68]
	add	r0, r7, #112
	ldr	r3, [sp]
	ldr	r2, [sp, #8]
	add	r1, r1, r3
	bl	libaroma_ripple_down(PLT)
.L110:
	movs	r3, #2
	strb	r3, [r7, #93]
	b	.L105
.L140:
	ldr	r1, [sp]
	add	r0, r7, #264
	bl	libaroma_fling_up(PLT)
	mov	r4, r0
	movs	r0, #18
	bl	libaroma_px(PLT)
	mul	r4, r0, r4
	movs	r0, #4
	bl	libaroma_dp(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	str	r0, [r7, #100]
	cmp	r0, #0
	beq	.L137
	mov	r3, #-1
	add	r4, r7, #112
	str	r3, [r7, #76]
	b	.L115
.L143:
	ldr	r3, [r7, #104]
	ldr	r1, [sp]
	cmp	r3, r1
	beq	.L125
	ldr	r0, [r7, #108]
	subs	r3, r3, r1
	ldr	r6, [r7, #12]
	add	r3, r3, r0
	ldr	r0, [r4, #24]
	ldr	r6, [r6]
	bic	r3, r3, r3, asr #31
	subs	r6, r6, r0
	cmp	r3, r6
	it	ge
	movge	r3, r6
	cbnz	r2, .L126
	ldr	r2, [r7, #76]
	adds	r2, r2, #1
	beq	.L127
.L126:
	str	r3, [r7, #76]
.L128:
	movs	r2, #1
	str	r3, [r7, #108]
	strb	r2, [r7, #64]
	add	r0, r7, #264
	bl	libaroma_fling_move(PLT)
	ldr	r3, [sp]
	str	r3, [r7, #104]
	b	.L125
.L142:
	ldr	r2, [r7, #104]
	movs	r0, #24
	ldr	r3, [sp]
	subs	r5, r2, r3
	bl	libaroma_dp(PLT)
	cmp	r5, #0
	it	lt
	rsblt	r5, r5, #0
	cmp	r0, r5
	ble	.L124
	ldrb	r3, [r7, #93]	@ zero_extendqisi2
	movs	r2, #0
	add	r5, r7, #112
	b	.L123
.L130:
	ldr	r1, [r7, #68]
	mov	r0, r5
	add	r1, r1, r3
	bl	libaroma_ripple_move(PLT)
	b	.L105
.L141:
	ldr	r2, [r7, #96]
	movs	r0, #24
	ldr	r3, [r7, #36]
	ldr	r6, [r3, r2, lsl #2]
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #24]
	movs	r1, #1
	add	r0, r0, r6
	ldr	r2, [r7, #12]
	add	r5, r5, r0, asr #1
	ldr	r0, [r2]
	sub	r2, r5, r3, asr #1
	strb	r1, [r7, #92]
	bic	r2, r2, r2, asr #31
	subs	r3, r0, r3
	cmp	r2, r3
	ite	le
	strle	r2, [r7, #76]
	strgt	r3, [r7, #76]
	b	.L122
.L124:
	movs	r6, #1
	add	r5, r7, #112
	strb	r6, [r7, #93]
	mov	r0, r5
	bl	libaroma_ripple_cancel(PLT)
	strb	r6, [r7, #64]
	mov	r2, r6
	ldrb	r3, [r7, #93]	@ zero_extendqisi2
	b	.L123
.L127:
	str	r3, [r7, #72]
	b	.L128
.L145:
	.align	3
.L144:
	.word	0
	.word	0
	.word	.LANCHOR0-(.LPIC6+4)
	.size	_libaroma_ctl_tabs_msg, .-_libaroma_ctl_tabs_msg
	.section	.text._libaroma_ctl_tabs_internal_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_internal_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_internal_draw, %function
_libaroma_ctl_tabs_internal_draw:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #8]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #108
	str	r0, [sp, #88]
	ldr	r5, [r0, #4]
	cmp	r3, #0
	beq	.L146
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L148
.L149:
	movs	r3, #0
	movs	r2, #0
	str	r2, [r5, #56]
	str	r3, [r5, #60]	@ float
.L151:
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldrh	r0, [r5, #50]
	bl	libaroma_color_isdark(PLT)
	adds	r0, r0, #0
	mov	r2, #153
	it	ne
	movne	r0, #-1
	uxth	r0, r0
	str	r0, [sp, #64]
	ldr	r1, [sp, #64]
	ldrh	r0, [r5, #50]
	bl	libaroma_alpha(PLT)
	str	r0, [sp, #76]
	ldr	r0, [r5, #24]
	ldr	r6, [r5, #40]
	cmp	r0, #0
	beq	.L181
	bl	libaroma_ctl_pager_get_pages(PLT)
	mov	r6, r0
	ldr	r0, [r5, #24]
	bl	libaroma_ctl_pager_get_active_page(PLT)
	str	r0, [sp, #92]
	lsrs	r0, r0, #31
	ldr	r7, [sp, #92]
.L152:
	cmp	r7, r6
	it	ge
	orrge	r0, r0, #1
	ldr	r3, [r5, #352]
	ldr	r7, [r5, #348]
	tst	r0, #255
	ldr	r4, [sp, #88]
	ldr	r4, [r4, #24]
	add	r7, r3, r7, lsl #1
	str	r6, [r5, #44]
	str	r4, [sp, #52]
	rsb	r8, r7, r4
	bne	.L205
.L178:
	movs	r4, #3
	cmp	r4, r6
	it	ge
	movge	r4, r6
.L154:
	movs	r0, #24
	bl	libaroma_dp(PLT)
	str	r0, [sp, #56]
	ldr	r0, [r5, #36]
	cbz	r0, .L155
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r5, #36]
.L155:
	cmp	r6, #0
	ble	.L156
	mov	r1, r4
	mov	r0, r8
	ldr	r10, .L207
	movs	r4, #0
	bl	__aeabi_idiv(PLT)
	mov	r1, r6
	mov	r9, r0
	movs	r0, #4
.LPIC15:
	add	r10, pc
	bl	calloc(PLT)
	mov	r1, r6
	str	r0, [sp, #60]
	movs	r0, #4
	mov	r8, r4
	bl	calloc(PLT)
	mov	r1, r6
	str	r0, [r5, #36]
	movs	r0, #4
	bl	calloc(PLT)
	str	r7, [sp, #72]
	str	r0, [sp, #68]
	ldr	fp, [sp, #76]
	str	r10, [sp, #48]
	b	.L162
.L159:
	movs	r7, #100
	str	r7, [sp]
	bl	libaroma_text(PLT)
	ldr	r7, [sp, #60]
	ldr	r3, [r5, #36]
	str	r0, [r7, r4]
	movs	r0, #24
	str	r3, [sp, #44]
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #44]
	rsb	r0, r0, r9
	str	r0, [r3, r4]
.L179:
	ldr	r3, [r5, #36]
	add	r8, r8, #1
	ldr	lr, [sp, #72]
	cmp	r8, r6
	ldr	r7, [sp, #68]
	ldr	r2, [r3, r4]
	add	lr, lr, r2
	str	r2, [r7, r4]
	str	lr, [sp, #72]
	add	r4, r4, #4
	beq	.L206
.L162:
	ldr	r3, [r5, #40]
	movs	r0, #24
	ldr	r10, [sp, #48]
	cmp	r3, r8
	itt	gt
	ldrgt	r3, [r5, #32]
	ldrgt	r10, [r3, r4]
	bl	libaroma_dp(PLT)
	cmp	r6, #3
	rsb	lr, r0, r9
	mov	r3, #1072
	mov	r1, fp
	movt	r3, 433
	mov	r2, lr
	mov	r0, r10
	ble	.L159
	movs	r7, #100
	mov	r3, #1072
	mov	r2, lr
	str	r7, [sp]
	movt	r3, 177
	mov	r1, fp
	mov	r0, r10
	bl	libaroma_text(PLT)
	ldr	r7, [sp, #60]
	movs	r1, #0
	ldr	r3, [r5, #36]
	movs	r2, #2
	str	r0, [r7, r4]
	str	r3, [sp, #44]
	bl	libaroma_text_line_info(PLT)
	ldr	r3, [sp, #44]
	str	r0, [r3, r4]
	b	.L179
.L156:
	ldr	r3, [r5, #12]
	cbz	r3, .L176
	add	r0, r5, #12
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r5, #12]
.L176:
	ldr	r3, [r5, #16]
	cbz	r3, .L175
	add	r0, r5, #16
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r5, #16]
.L175:
	movs	r3, #1
	mov	r0, r5
	strb	r3, [r5, #64]
	bl	omp_unset_nest_lock(PLT)
.L146:
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L205:
	cmp	r6, #0
	mov	r4, #0
	str	r4, [sp, #92]
	it	le
	movle	r4, #1
	ble	.L154
	b	.L178
.L148:
	ldr	r0, [r5, #56]
	cmp	r0, #1
	bne	.L149
	add	r1, sp, #96
	bl	clock_gettime(PLT)
	movs	r2, #0
	cbnz	r0, .L150
	ldr	r3, [sp, #100]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp, #96]
	mov	r2, #1000
	smull	r4, r1, r1, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r1, asr #18
	mla	r2, r2, r0, r3
.L150:
	movs	r3, #0
	str	r2, [r5, #56]
	str	r3, [r5, #60]	@ float
	b	.L151
.L206:
	ldr	r4, [sp, #56]
	mov	r7, lr
	ldr	r0, [sp, #52]
	mul	r8, r6, r4
	rsb	r4, r8, r0
	cmp	r4, lr
	ble	.L163
	subs	r2, r4, r7
	str	r3, [sp, #44]
	fmsr	s14, r2	@ int
	fsitos	s0, s14
	fmsr	s14, r6	@ int
	fsitos	s15, s14
	fdivs	s0, s0, s15
	bl	ceilf(PLT)
	ldr	r3, [sp, #44]
	ftosizs	s0, s0
	add	ip, r3, r6, lsl #2
	fmrs	lr, s0	@ int
.L166:
	ldr	r1, [r3], #4
	add	r7, r7, lr
	subs	r2, r4, r7
	cmp	r4, r7
	it	lt
	sublt	r7, r7, r2
	add	r1, r1, lr
	sub	r0, r1, r2
	ite	ge
	strge	r1, [r3, #-4]
	strlt	r0, [r3, #-4]
	cmp	r3, ip
	bne	.L166
.L163:
	ldr	r0, [sp, #88]
	add	r8, r8, r7
	movs	r7, #0
	mov	r2, r7
	mov	r3, r7
	ldr	r4, [r0, #28]
	mov	r0, r8
	str	r7, [sp]
	mov	r1, r4
	bl	libaroma_canvas_new_ex(PLT)
	mov	r3, r7
	mov	r1, r4
	str	r0, [sp, #56]
	mov	r2, r7
	mov	r0, r8
	str	r7, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldrh	r1, [r5, #50]
	movs	r2, #255
	str	r0, [sp, #72]
	asrs	r4, r4, #1
	ldr	r0, [sp, #56]
	mov	r8, r7
	bl	libaroma_canvas_setcolor(PLT)
	ldrh	r1, [r5, #50]
	movs	r2, #255
	ldr	r0, [sp, #72]
	bl	libaroma_canvas_setcolor(PLT)
	ldr	r2, [r5, #352]
	ldr	r3, [r5, #348]
	ldr	r1, [sp, #68]
	ldr	lr, [sp, #60]
	str	r4, [sp, #84]
	add	r9, r2, r3
	str	r6, [sp, #80]
	mov	r4, r7
	mov	r6, r5
	subs	r1, r1, #4
	sub	lr, lr, #4
	str	r1, [sp, #48]
	str	lr, [sp, #52]
.L168:
	ldr	r3, [r6, #36]
	movs	r0, #24
	ldr	r5, [r3, r8, lsl #2]
	add	r8, r8, #1
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #48]
	ldr	lr, [sp, #52]
	add	r5, r5, r0
	ldr	r3, [r7, #4]!
	str	r7, [sp, #48]
	ldr	r7, [lr, #4]!
	asr	fp, r3, #1
	rsb	fp, fp, r5, asr #1
	mov	r0, r7
	str	lr, [sp, #52]
	bl	libaroma_text_height(PLT)
	mov	r10, r0
	movs	r0, #1
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #84]
	add	fp, fp, r9
	add	r0, r0, r10, asr #1
	add	r9, r9, r5
	ldr	r5, [sp, #76]
	mov	r2, fp
	rsb	r10, r0, r1
	movs	r0, #10
	mov	r1, r7
	mov	r3, r10
	str	r0, [sp, #12]
	str	r5, [sp, #20]
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	str	r4, [sp, #16]
	ldr	r0, [sp, #56]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	r4, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	ldr	r5, [sp, #64]
	mov	r1, r7
	movs	r7, #10
	mov	r2, fp
	mov	r3, r10
	str	r4, [sp]
	str	r5, [sp, #20]
	str	r4, [sp, #4]
	ldr	r0, [sp, #72]
	str	r4, [sp, #8]
	str	r7, [sp, #12]
	str	r4, [sp, #16]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	r4, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	ldr	r5, [sp, #80]
	cmp	r8, r5
	bne	.L168
	mov	r5, r6
	ldr	r6, [sp, #80]
	ldr	r3, [r5, #12]
	cbz	r3, .L169
	add	r0, r5, #12
	movs	r1, #0
	movs	r7, #0
	bl	libaroma_canvas_free_ex1(PLT)
	str	r7, [r5, #12]
.L169:
	ldr	r3, [r5, #16]
	cbz	r3, .L170
	add	r0, r5, #16
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L170:
	ldr	r4, [sp, #56]
	cmp	r6, #8
	ldr	r7, [sp, #72]
	str	r4, [r5, #12]
	str	r7, [r5, #16]
	ble	.L183
	ldr	r4, [sp, #60]
	sub	r7, r6, #9
	bic	r7, r7, #7
	mov	r8, #0
	adds	r7, r7, #8
	adds	r4, r4, #48
.L172:
	ldr	r0, [r4, #-48]
	add	r8, r8, #8
	pld	[r4]
	adds	r4, r4, #32
	bl	libaroma_text_free(PLT)
	ldr	r0, [r4, #-76]
	bl	libaroma_text_free(PLT)
	ldr	r0, [r4, #-72]
	bl	libaroma_text_free(PLT)
	ldr	r0, [r4, #-68]
	bl	libaroma_text_free(PLT)
	ldr	r0, [r4, #-64]
	bl	libaroma_text_free(PLT)
	ldr	r0, [r4, #-60]
	bl	libaroma_text_free(PLT)
	ldr	r0, [r4, #-56]
	bl	libaroma_text_free(PLT)
	ldr	r0, [r4, #-52]
	bl	libaroma_text_free(PLT)
	cmp	r8, r7
	bne	.L172
.L171:
	ldr	r7, [sp, #60]
	add	r4, r8, #1073741824
	subs	r4, r4, #1
	add	r4, r7, r4, lsl #2
.L174:
	add	r8, r8, #1
	ldr	r0, [r4, #4]!
	bl	libaroma_text_free(PLT)
	cmp	r6, r8
	bgt	.L174
	ldr	r1, [sp, #92]
	ldr	r0, [sp, #88]
	bl	_libaroma_ctl_tabs_indicator_x(PLT)
	ldr	r3, [r5, #36]
	ldr	r7, [sp, #92]
	str	r0, [r5, #80]
	movs	r0, #24
	ldr	r4, [r3, r7, lsl #2]
	bl	libaroma_dp(PLT)
	str	r7, [r5, #88]
	add	r4, r4, r0
	ldr	r0, [sp, #60]
	str	r4, [r5, #84]
	bl	free(PLT)
	ldr	r0, [sp, #68]
	bl	free(PLT)
	b	.L175
.L181:
	str	r0, [sp, #92]
	mov	r7, r0
	b	.L152
.L183:
	mov	r8, #0
	b	.L171
.L208:
	.align	2
.L207:
	.word	.LC0-(.LPIC15+4)
	.size	_libaroma_ctl_tabs_internal_draw, .-_libaroma_ctl_tabs_internal_draw
	.section	.text._libaroma_ctl_tabs_req_internal_draw_thread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_req_internal_draw_thread, %function
_libaroma_ctl_tabs_req_internal_draw_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	_libaroma_ctl_tabs_internal_draw(PLT)
	movs	r0, #0
	pop	{r3, pc}
	.size	_libaroma_ctl_tabs_req_internal_draw_thread, .-_libaroma_ctl_tabs_req_internal_draw_thread
	.section	.text._libaroma_ctl_tabs_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_draw, %function
_libaroma_ctl_tabs_draw:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L254+16
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
.LPIC16:
	add	r2, pc
	fstmfdd	sp!, {d8}
	cmp	r3, r2
	sub	sp, sp, #140
	beq	.L250
	add	sp, sp, #140
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L250:
	ldr	r4, [r0, #4]
	mov	r5, r1
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #12]
	cmp	r3, #0
	beq	.L213
	ldrb	r3, [r4, #64]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L213
.L214:
	ldr	r3, [r4, #56]
	movs	r2, #0
	strb	r2, [r4, #64]
	cmp	r3, #1
	ble	.L215
	flds	s14, [r4, #60]
	fconsts	s15, #112
	fcmpes	s14, s15
	fmstat
	bmi	.L251
.L215:
	ldr	r3, [r4, #52]
	cbz	r3, .L218
	add	r0, r4, #52
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #52]
.L218:
	mov	r1, r5
	mov	r0, r7
	bl	libaroma_control_erasebg(PLT)
	ldr	fp, [r4, #72]
	mov	r8, #0
	ldr	ip, [r5]
	mov	r9, #255
	ldr	lr, [r5, #4]
	mov	r2, r8
	ldr	r10, [r4, #80]
	mov	r3, r8
	ldr	r6, [r4, #84]
	mov	r0, r5
	ldr	r1, [r4, #12]
	str	fp, [r4, #68]
	rsb	r10, fp, r10
	str	fp, [sp]
	str	ip, [sp, #8]
	str	lr, [sp, #12]
	str	r8, [sp, #4]
	str	r8, [sp, #16]
	str	r8, [sp, #24]
	str	r8, [sp, #28]
	str	r9, [sp, #20]
	str	r6, [sp, #68]
	str	r10, [sp, #64]
	bl	libaroma_draw_ex2(PLT)
	ldr	r1, [r4, #88]
	cmp	r1, r8
	blt	.L221
	mov	r0, r7
	bl	_libaroma_ctl_tabs_indicator_x(PLT)
	subs	r10, r0, #0
	blt	.L221
	ldr	r2, [r4, #88]
	movs	r0, #24
	ldr	r3, [r4, #36]
	ldr	r6, [r3, r2, lsl #2]
	bl	libaroma_dp(PLT)
	ldr	r2, [r4, #68]
	ldr	r3, [r5]
	rsb	r2, r2, r10
	cmp	r2, r3
	bge	.L221
	add	r6, r6, r0
	adds	r3, r6, r2
	cmp	r3, r8
	ble	.L221
	ldr	r0, [r5, #4]
	mov	r3, r8
	ldr	r1, [r4, #16]
	str	r10, [sp]
	str	r0, [sp, #12]
	mov	r0, r5
	str	r8, [sp, #4]
	str	r6, [sp, #8]
	str	r8, [sp, #16]
	str	r9, [sp, #20]
	str	r8, [sp, #24]
	str	r8, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
.L221:
	ldr	r1, [r4, #96]
	cmp	r1, #0
	blt	.L224
	mov	r0, r7
	bl	_libaroma_ctl_tabs_indicator_x(PLT)
	subs	r8, r0, #0
	blt	.L224
	ldr	r2, [r4, #96]
	mov	ip, #0
	ldr	r3, [r4, #36]
	add	r1, r4, #112
	add	r7, sp, #132
	movs	r0, #24
	mov	r6, ip
	str	r1, [sp, #40]
	ldr	r9, [r3, r2, lsl #2]
	add	fp, sp, #104
	str	ip, [sp, #44]
	add	r10, sp, #72
	str	r7, [sp, #56]
	bl	libaroma_dp(PLT)
	ldr	r2, [r4, #16]
	add	r9, r9, r0
	ldr	r7, [r4, #88]
	mov	r3, r9
	ldr	r0, [r4, #96]
	mov	r1, r8
	ldr	lr, [r4, #12]
	cmp	r7, r0
	it	eq
	moveq	lr, r2
	ldr	r7, [r5, #4]
	mov	r0, lr
	mov	r2, r6
	str	r7, [sp]
	bl	libaroma_canvas_area(PLT)
	ldr	ip, [sp, #44]
	mov	lr, r0
	ldr	r1, [lr, #4]
	mov	r0, r9
	str	lr, [sp, #88]
	mov	r2, ip
	mov	r3, ip
	str	ip, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	ip, [sp, #44]
	mov	lr, #255
	ldr	r3, [sp, #88]
	str	ip, [sp]
	mov	r2, ip
	str	ip, [sp, #4]
	mov	r1, r3
	ldr	r7, [r3]
	str	r0, [sp, #96]
	str	r7, [sp, #8]
	add	r7, sp, #80
	ldr	r3, [r3, #4]
	str	ip, [sp, #16]
	str	ip, [sp, #24]
	str	r3, [sp, #12]
	mov	r3, ip
	str	ip, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	str	r7, [sp, #48]
	add	r7, sp, #112
	str	r7, [sp, #52]
	add	r7, sp, #120
	str	r7, [sp, #60]
	ldr	r7, [sp, #40]
	ldr	ip, [sp, #44]
	str	r4, [sp, #36]
	str	ip, [sp, #132]
	str	ip, [sp, #104]
.L227:
	add	r1, sp, #132
	mov	r2, fp
	mov	r0, r7
	bl	libaroma_ripple_loop(PLT)
	mov	r2, r0
	add	lr, sp, #128
	mov	r0, r7
	mov	r1, r9
	mov	r3, r10
	cmp	r2, #0
	beq	.L252
	add	r4, sp, #80
	ldr	r2, [r5, #4]
	str	r4, [sp]
	add	r4, sp, #112
	str	r4, [sp, #4]
	add	r4, sp, #120
	str	r4, [sp, #8]
	ldr	r4, [sp, #104]
	str	lr, [sp, #12]
	mvn	lr, #75
	str	r8, [sp, #112]
	str	r4, [sp, #16]
	str	r6, [sp, #120]
	str	r6, [sp, #128]
	strb	r6, [sp, #72]
	strb	lr, [sp, #80]
	bl	libaroma_ripple_calculation(PLT)
	cmp	r0, #0
	beq	.L227
	ldr	r3, [sp, #88]
	movs	r1, #0
	ldr	r4, [sp, #36]
	mov	r2, r1
	ldrb	ip, [sp, #72]	@ zero_extendqisi2
	ldmia	r3, {r3, lr}
	ldr	r0, [sp, #96]
	str	lr, [sp]
	ldrh	lr, [r4, #48]
	str	ip, [sp, #8]
	str	lr, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	ldrb	r3, [sp, #80]	@ zero_extendqisi2
	ldrh	r1, [r4, #48]
	ldr	r4, [sp, #128]
	ldr	r2, [sp, #112]
	vmov.f32	s14, r3
	vcvt.f64.s32	d7, d7, #1
	str	r4, [sp]
	ldr	r3, [sp, #120]
	ldr	r0, [sp, #96]
	ftouizd	s13, d7
	fmrs	lr, s13	@ int
	uxtb	lr, lr
	str	lr, [sp, #4]
	bl	libaroma_draw_circle(PLT)
	ldr	lr, [sp, #96]
	mov	ip, #255
	ldr	r4, [sp, #36]
	mov	r0, r5
	movs	r3, #0
	mov	r1, lr
	ldr	r2, [r4, #68]
	str	r6, [sp]
	str	r6, [sp, #4]
	ldr	r4, [lr]
	rsb	r2, r2, r8
	str	r4, [sp, #8]
	ldr	r4, [lr, #4]
	str	r6, [sp, #16]
	str	r6, [sp, #24]
	str	r4, [sp, #12]
	str	r6, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L227
.L252:
	mov	r1, r2
	add	r0, sp, #88
	str	r2, [sp, #44]
	ldr	r4, [sp, #36]
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r2, [sp, #44]
	add	r0, sp, #96
	mov	r1, r2
	bl	libaroma_canvas_free_ex1(PLT)
.L224:
	ldr	r6, [r5, #4]
	movs	r0, #2
	bl	libaroma_dp(PLT)
	movs	r7, #255
	rsb	r8, r0, r6
	movs	r0, #2
	bl	libaroma_dp(PLT)
	str	r0, [sp]
	mov	r2, r8
	ldrh	r6, [r4, #48]
	mov	r0, r5
	ldr	r3, [sp, #68]
	ldr	r1, [sp, #64]
	str	r7, [sp, #8]
	str	r6, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	ldr	r3, [r4, #56]
	cmp	r3, #1
	ble	.L230
	flds	s4, [r4, #60]
	fconsts	s16, #112
	fcmpes	s4, s16
	fmstat
	bmi	.L253
.L230:
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	add	sp, sp, #140
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L213:
	mov	r0, r4
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r7
	bl	_libaroma_ctl_tabs_internal_draw(PLT)
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L214
	b	.L230
.L253:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L230
	flds	s1, .L254
	movs	r6, #0
	flds	s2, .L254+4
	fcpys	s3, s16
	flds	s0, .L254+8
	bl	libaroma_cubic_bezier(PLT)
	flds	s15, .L254+12
	mov	r0, r5
	fsubs	s0, s16, s0
	mov	r2, r6
	ldr	r7, [r4, #52]
	mov	r3, r6
	str	r6, [sp]
	str	r6, [sp, #4]
	fmuls	s15, s0, s15
	mov	r1, r7
	ldr	r5, [r7]
	ftouizs	s15, s15
	str	r5, [sp, #8]
	ldr	r5, [r7, #4]
	str	r6, [sp, #16]
	fmrs	lr, s15	@ int
	uxtb	r7, lr
	str	r6, [sp, #24]
	str	r5, [sp, #12]
	str	r7, [sp, #20]
	str	r6, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	b	.L230
.L251:
	ldr	r6, [r4, #52]
	cmp	r6, #0
	bne	.L218
	ldr	r0, [r5]
	mov	r2, r6
	ldr	r1, [r5, #4]
	mov	r3, r6
	str	r6, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r4, #52]
	cmp	r0, #0
	beq	.L218
	ldr	r1, [r5, #4]
	mov	lr, #255
	ldr	ip, [r5]
	mov	r2, r6
	str	r6, [sp]
	mov	r3, r6
	str	r1, [sp, #12]
	mov	r1, r5
	str	r6, [sp, #4]
	str	r6, [sp, #16]
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	str	ip, [sp, #8]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L218
.L255:
	.align	2
.L254:
	.word	0
	.word	1046938544
	.word	1053699762
	.word	1132396544
	.word	.LANCHOR0-(.LPIC16+4)
	.size	_libaroma_ctl_tabs_draw, .-_libaroma_ctl_tabs_draw
	.section	.text._libaroma_ctl_tabs_req_internal_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_req_internal_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_req_internal_draw, %function
_libaroma_ctl_tabs_req_internal_draw:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L258
	mov	r3, r0
	push	{lr}
	sub	sp, sp, #12
	movs	r1, #0
	add	r0, sp, #4
.LPIC17:
	add	r2, pc
	bl	pthread_create(PLT)
	ldr	r0, [sp, #4]
	bl	pthread_detach(PLT)
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L259:
	.align	2
.L258:
	.word	_libaroma_ctl_tabs_req_internal_draw_thread-(.LPIC17+4)
	.size	_libaroma_ctl_tabs_req_internal_draw, .-_libaroma_ctl_tabs_req_internal_draw
	.section	.text._libaroma_ctl_tabs_free_texts,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_free_texts
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_free_texts, %function
_libaroma_ctl_tabs_free_texts:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L269
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #72]
.LPIC18:
	add	r2, pc
	cmp	r3, r2
	beq	.L267
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L267:
	ldr	r5, [r0, #4]
	ldr	r3, [r5, #40]
	cmp	r3, #0
	it	gt
	movgt	r4, #0
	ble	.L268
.L264:
	ldr	r3, [r5, #32]
	ldr	r0, [r3, r4, lsl #2]
	adds	r4, r4, #1
	bl	free(PLT)
	ldr	r3, [r5, #40]
	cmp	r4, r3
	blt	.L264
	ldr	r0, [r5, #32]
	bl	free(PLT)
	movs	r3, #0
	movs	r0, #1
	str	r3, [r5, #32]
	str	r3, [r5, #40]
	pop	{r3, r4, r5, pc}
.L268:
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L270:
	.align	2
.L269:
	.word	.LANCHOR0-(.LPIC18+4)
	.size	_libaroma_ctl_tabs_free_texts, .-_libaroma_ctl_tabs_free_texts
	.section	.text._libaroma_ctl_tabs_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_tabs_destroy
	.thumb
	.thumb_func
	.type	_libaroma_ctl_tabs_destroy, %function
_libaroma_ctl_tabs_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L295
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0, #72]
.LPIC19:
	add	r2, pc
	cmp	r3, r2
	beq	.L294
	pop	{r3, r4, r5, pc}
.L294:
	ldr	r5, [r0, #4]
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r5, #24]
	cbz	r0, .L273
	movs	r1, #0
	bl	libaroma_ctl_pager_set_controller(PLT)
.L273:
	mov	r0, r4
	bl	_libaroma_ctl_tabs_free_texts(PLT)
	ldr	r3, [r5, #12]
	cbz	r3, .L274
	add	r0, r5, #12
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r5, #12]
.L274:
	ldr	r3, [r5, #16]
	cbz	r3, .L275
	add	r0, r5, #16
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r5, #16]
.L275:
	ldr	r3, [r5, #52]
	cbz	r3, .L276
	add	r0, r5, #52
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r5, #52]
.L276:
	ldr	r0, [r5, #36]
	cbz	r0, .L277
	bl	free(PLT)
.L277:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r5
	pop	{r3, r4, r5, lr}
	b	free(PLT)
.L296:
	.align	2
.L295:
	.word	.LANCHOR0-(.LPIC19+4)
	.size	_libaroma_ctl_tabs_destroy, .-_libaroma_ctl_tabs_destroy
	.section	.text.libaroma_ctl_tabs,"ax",%progbits
	.align	2
	.global	libaroma_ctl_tabs
	.thumb
	.thumb_func
	.type	libaroma_ctl_tabs, %function
libaroma_ctl_tabs:
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	sub	sp, sp, #28
	mov	r7, r1
	mov	r0, #356
	movs	r1, #1
	mov	r9, r2
	mov	r8, r3
	ldrh	r10, [sp, #72]
	ldrh	fp, [sp, #76]
	bl	calloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L298
	ldr	r0, [sp, #80]
	mov	r5, #-1
	bl	libaroma_window_measure_point(PLT)
	str	r0, [r4, #348]
	ldr	r0, [sp, #84]
	bl	libaroma_window_measure_point(PLT)
	strh	r10, [r4, #50]	@ movhi
	str	r0, [r4, #352]
	mov	r0, r4
	str	r5, [r4, #96]
	str	r5, [r4, #76]
	strh	fp, [r4, #48]	@ movhi
	bl	omp_init_nest_lock(PLT)
	movs	r0, #48
	ldr	r5, .L303
	bl	libaroma_dp(PLT)
	mov	r10, r0
	movs	r0, #48
	bl	libaroma_dp(PLT)
	str	r0, [sp, #8]
.LPIC20:
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
	cbz	r0, .L302
	ldr	r3, .L303+4
	str	r5, [r4, #20]
.LPIC21:
	add	r3, pc
	str	r3, [r4, #28]
.L298:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L302:
	mov	r0, r4
	bl	free(PLT)
	mov	r0, r5
	b	.L298
.L304:
	.align	2
.L303:
	.word	.LANCHOR0-(.LPIC20+4)
	.word	.LANCHOR1-(.LPIC21+4)
	.size	libaroma_ctl_tabs, .-libaroma_ctl_tabs
	.section	.text.libaroma_ctl_tabs_set_pager,"ax",%progbits
	.align	2
	.global	libaroma_ctl_tabs_set_pager
	.thumb
	.thumb_func
	.type	libaroma_ctl_tabs_set_pager, %function
libaroma_ctl_tabs_set_pager:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L310
	ldr	r3, [r0, #72]
	push	{r4, r5, lr}
	mov	r4, r0
.LPIC22:
	add	r2, pc
	sub	sp, sp, #12
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L309
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L309:
	ldr	r5, [r4, #4]
	str	r1, [sp, #4]
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	mov	r0, r1
	add	r1, r5, #20
	bl	libaroma_ctl_pager_set_controller(PLT)
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	bl	_libaroma_ctl_tabs_req_internal_draw(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L311:
	.align	2
.L310:
	.word	.LANCHOR0-(.LPIC22+4)
	.size	libaroma_ctl_tabs_set_pager, .-libaroma_ctl_tabs_set_pager
	.section	.text.libaroma_ctl_tabs_set_texts,"ax",%progbits
	.align	2
	.global	libaroma_ctl_tabs_set_texts
	.thumb
	.thumb_func
	.type	libaroma_ctl_tabs_set_texts, %function
libaroma_ctl_tabs_set_texts:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r0
	ldr	r4, .L328
	sub	sp, sp, #28
	ldr	r0, [r0, #72]
.LPIC23:
	add	r4, pc
	str	r3, [sp, #4]
	cmp	r0, r4
	it	ne
	movne	r0, #0
	beq	.L326
.L313:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L326:
	ldr	r5, [r10, #4]
	mov	r9, r2
	mov	fp, r1
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	mov	r0, r10
	bl	_libaroma_ctl_tabs_free_texts(PLT)
	movs	r0, #4
	mov	r1, r9
	bl	calloc(PLT)
	str	r0, [r5, #32]
	cmp	r0, #0
	beq	.L314
	cmp	r9, #0
	ble	.L319
	cmp	r9, #8
	ble	.L322
	sub	r3, r9, #9
	mov	r8, r0
	bic	r3, r3, #7
	add	r4, fp, #40
	movs	r7, #4
	movs	r6, #0
	adds	r3, r3, #8
	str	r10, [sp, #12]
	str	r3, [sp, #8]
	str	fp, [sp, #16]
	str	r9, [sp, #20]
.L318:
	ldr	r0, [r4, #-40]
	add	r10, r7, #4
	pld	[r4]
	add	fp, r7, #8
	bl	__strdup(PLT)
	str	r0, [r8, r6, lsl #2]
	add	r9, r7, #12
	ldr	r8, [r5, #32]
	adds	r6, r6, #8
	ldr	r0, [r4, #-36]
	adds	r4, r4, #32
	bl	__strdup(PLT)
	str	r0, [r8, r7]
	ldr	r8, [r5, #32]
	ldr	r0, [r4, #-64]
	bl	__strdup(PLT)
	str	r0, [r8, r10]
	add	r10, r7, #16
	ldr	r8, [r5, #32]
	ldr	r0, [r4, #-60]
	bl	__strdup(PLT)
	str	r0, [r8, fp]
	add	fp, r7, #20
	ldr	r8, [r5, #32]
	ldr	r0, [r4, #-56]
	bl	__strdup(PLT)
	str	r0, [r8, r9]
	add	r9, r7, #24
	ldr	r8, [r5, #32]
	adds	r7, r7, #32
	ldr	r0, [r4, #-52]
	bl	__strdup(PLT)
	str	r0, [r8, r10]
	ldr	r8, [r5, #32]
	ldr	r0, [r4, #-48]
	bl	__strdup(PLT)
	str	r0, [r8, fp]
	ldr	r0, [r4, #-44]
	ldr	r8, [r5, #32]
	bl	__strdup(PLT)
	ldr	r3, [sp, #8]
	str	r0, [r8, r9]
	ldr	r8, [r5, #32]
	cmp	r6, r3
	bne	.L318
	ldr	r10, [sp, #12]
	ldr	fp, [sp, #16]
	ldr	r9, [sp, #20]
.L317:
	lsls	r4, r6, #2
	mov	r7, r8
	b	.L320
.L327:
	ldr	r7, [r5, #32]
.L320:
	ldr	r0, [fp, r4]
	adds	r6, r6, #1
	bl	__strdup(PLT)
	cmp	r9, r6
	str	r0, [r7, r4]
	add	r4, r4, #4
	bgt	.L327
.L319:
	str	r9, [r5, #40]
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	ldr	r3, [sp, #4]
	cbz	r3, .L325
	mov	r0, r10
	bl	_libaroma_ctl_tabs_req_internal_draw(PLT)
.L325:
	movs	r0, #1
	b	.L313
.L314:
	str	r0, [r5, #40]
	b	.L313
.L322:
	mov	r8, r0
	movs	r6, #0
	b	.L317
.L329:
	.align	2
.L328:
	.word	.LANCHOR0-(.LPIC23+4)
	.size	libaroma_ctl_tabs_set_texts, .-libaroma_ctl_tabs_set_texts
	.section	.text.libaroma_ctl_tabs_set_color,"ax",%progbits
	.align	2
	.global	libaroma_ctl_tabs_set_color
	.thumb
	.thumb_func
	.type	libaroma_ctl_tabs_set_color, %function
libaroma_ctl_tabs_set_color:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, .L341
	sub	sp, sp, #16
	ldr	r0, [r0, #72]
.LPIC24:
	add	r5, pc
	cmp	r0, r5
	it	ne
	movne	r0, #0
	beq	.L340
.L331:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L340:
	ldr	r5, [r4, #4]
	str	r3, [sp, #4]
	str	r1, [sp, #12]
	mov	r0, r5
	str	r2, [sp, #8]
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #12]
	mov	r0, r5
	ldr	r2, [sp, #8]
	strh	r1, [r5, #50]	@ movhi
	strh	r2, [r5, #48]	@ movhi
	bl	omp_unset_nest_lock(PLT)
	ldr	r3, [sp, #4]
	cbz	r3, .L335
	ldr	r3, [r4, #8]
	cbz	r3, .L335
	ldr	r3, [r5, #52]
	cbz	r3, .L332
	add	r0, r5, #52
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r5, #52]
.L332:
	movs	r3, #0
	movs	r6, #1
	mov	r0, r4
	str	r6, [r5, #56]
	str	r3, [r5, #60]	@ float
	bl	_libaroma_ctl_tabs_req_internal_draw(PLT)
	mov	r0, r6
	b	.L331
.L335:
	movs	r0, #1
	b	.L331
.L342:
	.align	2
.L341:
	.word	.LANCHOR0-(.LPIC24+4)
	.size	libaroma_ctl_tabs_set_color, .-libaroma_ctl_tabs_set_color
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"TABS\000"
	.section	.data.rel._libaroma_ctl_tabs_pager_handler,"aw",%progbits
	.align	2
.LANCHOR1 = . + 0
	.type	_libaroma_ctl_tabs_pager_handler, %object
	.size	_libaroma_ctl_tabs_pager_handler, 8
_libaroma_ctl_tabs_pager_handler:
	.word	_libaroma_ctl_tabs_pager_onscroll
	.word	_libaroma_ctl_tabs_pager_onscroll_finish
	.section	.data.rel._libaroma_ctl_tabs_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_ctl_tabs_handler, %object
	.size	_libaroma_ctl_tabs_handler, 20
_libaroma_ctl_tabs_handler:
	.word	_libaroma_ctl_tabs_msg
	.word	_libaroma_ctl_tabs_draw
	.word	0
	.word	_libaroma_ctl_tabs_destroy
	.word	_libaroma_ctl_tabs_thread
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
