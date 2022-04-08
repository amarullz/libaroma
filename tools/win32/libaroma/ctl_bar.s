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
	.file	"ctl_bar.c"
	.section	.text._libaroma_ctl_bar_thread,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_bar_thread
	.thumb
	.thumb_func
	.type	_libaroma_ctl_bar_thread, %function
_libaroma_ctl_bar_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L26
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
.LPIC0:
	add	r2, pc
	sub	sp, sp, #12
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L25
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L25:
	ldr	r5, [r4, #4]
	ldr	r0, [r5, #36]
	ldrb	r7, [r5, #32]	@ zero_extendqisi2
	cmp	r0, #0
	ble	.L3
	movs	r1, #200
	bl	libaroma_duration_state(PLT)
	fconsts	s15, #112
	fcmpes	s0, s15
	fmstat
	blt	.L22
	movs	r7, #1
	fsts	s15, [r5, #40]
.L3:
	add	r0, r5, #76
	movs	r1, #0
	bl	libaroma_ripple_thread(PLT)
	mov	r6, r0
	cbz	r0, .L6
	tst	r0, #1
	it	ne
	movne	r7, #1
	lsls	r2, r0, #29
	bpl	.L8
	ldrb	r2, [r5, #66]	@ zero_extendqisi2
	cmp	r2, #9
	bhi	.L9
	ldrh	r0, [r4]
	orr	r0, r0, #33554432
	orr	r0, r0, r2, lsl #16
	bl	libaroma_window_post_command(PLT)
.L8:
	lsls	r3, r6, #28
	itttt	mi
	movmi	r3, #0
	strbmi	r3, [r5, #66]
	strmi	r3, [r5, #68]
	strmi	r3, [r5, #72]
	it	mi
	strbmi	r3, [r5, #65]
.L6:
	mov	r0, r7
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L9:
	ldr	r1, [r5, #228]
	sub	r3, r2, #10
	ldrh	r0, [r4]
	add	lr, r3, r3, lsl #1
	movs	r4, #0
	ldr	r1, [r1, #4]
	orr	r0, r0, #33554432
	orr	r0, r0, r2, lsl #16
	add	r2, r1, lr, lsl #2
	ldrb	r1, [r2, #8]	@ zero_extendqisi2
	ldrb	r2, [r2, #9]	@ zero_extendqisi2
	str	r4, [sp]
	ubfx	r1, r1, #3, #1
	bl	libaroma_window_post_command_ex(PLT)
	b	.L8
.L22:
	flds	s15, [r5, #40]
	fcmps	s0, s15
	fmstat
	itt	ne
	movne	r7, #1
	fstsne	s0, [r5, #40]
	b	.L3
.L27:
	.align	2
.L26:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_ctl_bar_thread, .-_libaroma_ctl_bar_thread
	.section	.text._libaroma_ctl_bar_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_bar_destroy
	.thumb
	.thumb_func
	.type	_libaroma_ctl_bar_destroy, %function
_libaroma_ctl_bar_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L48
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #72]
.LPIC1:
	add	r2, pc
	cmp	r3, r2
	beq	.L47
	pop	{r3, r4, r5, pc}
.L47:
	ldr	r4, [r0, #4]
	add	r5, r4, #232
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r4, #52]
	cbz	r3, .L30
	add	r0, r4, #52
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #52]
.L30:
	ldr	r3, [r4, #48]
	cbz	r3, .L31
	add	r0, r4, #48
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #48]
.L31:
	ldr	r0, [r4]
	cbz	r0, .L32
	bl	free(PLT)
.L32:
	ldr	r0, [r4, #4]
	cbz	r0, .L33
	bl	free(PLT)
.L33:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	free(PLT)
.L49:
	.align	2
.L48:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	_libaroma_ctl_bar_destroy, .-_libaroma_ctl_bar_destroy
	.global	__aeabi_idiv
	.section	.text._libaroma_ctl_bar_msg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_bar_msg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_bar_msg, %function
_libaroma_ctl_bar_msg:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L106
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
.LPIC2:
	add	r2, pc
	sub	sp, sp, #28
	cmp	r3, r2
	beq	.L100
.L51:
	movs	r0, #0
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L100:
	ldrb	r3, [r1]	@ zero_extendqisi2
	mov	r5, r1
	ldr	r6, [r0, #4]
	cmp	r3, #130
	bhi	.L52
	cmp	r3, #129
	bcs	.L53
	cmp	r3, #6
	bne	.L51
	ldr	r7, [r1, #8]
	movs	r0, #0
	mov	r1, r4
	add	r2, sp, #8
	add	r3, sp, #16
	str	r7, [sp, #8]
	ldr	r7, [r5, #12]
	str	r7, [sp, #16]
	bl	libaroma_window_calculate_pos(PLT)
	ldrb	r1, [r5, #1]	@ zero_extendqisi2
	cmp	r1, #1
	beq	.L101
	cbz	r1, .L102
	cmp	r1, #2
	bne	.L51
	ldrb	r3, [r6, #77]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L51
	ldr	r1, [sp, #8]
	cmp	r1, #0
	blt	.L74
	ldr	r3, [r6, #68]
	cmp	r1, r3
	blt	.L74
	ldr	r2, [sp, #16]
	cmp	r2, #0
	blt	.L74
	ldr	r0, [r4, #24]
	cmp	r1, r0
	bge	.L74
	ldr	r0, [r6, #72]
	add	r3, r3, r0
	cmp	r1, r3
	bge	.L74
	ldr	r3, [r4, #28]
	cmp	r2, r3
	blt	.L75
.L74:
	add	r0, r6, #76
	bl	libaroma_ripple_cancel(PLT)
	b	.L51
.L52:
	cmp	r3, #132
	bne	.L51
.L53:
	add	r4, r6, #232
	mov	r0, r4
	bl	omp_set_nest_lock(PLT)
	movs	r3, #1
	mov	r0, r4
	strb	r3, [r6, #32]
	bl	omp_unset_nest_lock(PLT)
	b	.L51
.L102:
	add	r0, r6, #76
	bl	libaroma_ripple_up(PLT)
	and	r0, r0, #6
	cmp	r0, #2
	bne	.L51
	ldrb	r3, [r6, #65]	@ zero_extendqisi2
	ldrb	r2, [r6, #66]	@ zero_extendqisi2
	cbz	r3, .L71
	subs	r1, r2, #10
	bmi	.L71
	ldr	r3, [r6, #228]
	cbz	r3, .L71
	ldr	r0, [r3]
	cmp	r1, r0
	bge	.L71
	ldr	r3, [r3, #4]
	movs	r2, #12
	mla	r3, r2, r1, r3
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	lsls	r1, r2, #28
	itett	mi
	bicmi	r2, r2, #8
	orrpl	r2, r2, #8
	strbmi	r2, [r3, #8]
	movmi	r1, #2
	ittet	pl
	strbpl	r2, [r3, #8]
	movpl	r1, #2
	ldrbmi	r2, [r6, #66]	@ zero_extendqisi2
	ldrbpl	r2, [r6, #66]	@ zero_extendqisi2
	ite	mi
	strbmi	r1, [r6, #65]
	strbpl	r1, [r6, #65]
.L71:
	cmp	r2, #9
	bhi	.L73
	ldrh	r0, [r4]
	orr	r0, r0, #16777216
	orr	r0, r0, r2, lsl #16
	bl	libaroma_window_post_command(PLT)
	b	.L51
.L101:
	ldr	r5, [r6, #20]
	movs	r3, #0
	ldr	r2, [sp, #8]
	strb	r3, [r6, #66]
	str	r3, [r6, #68]
	cmp	r5, r2
	str	r3, [r6, #72]
	strb	r3, [r6, #65]
	bgt	.L103
	ldr	r0, [r6, #28]
	cmp	r2, r0
	bge	.L61
	ldrb	r3, [r6, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L51
	movs	r3, #2
	movs	r0, #16
	strb	r3, [r6, #66]
	bl	libaroma_dp(PLT)
	subs	r0, r5, r0
	ldr	r4, [r6, #24]
	str	r0, [r6, #68]
	movs	r0, #32
	bl	libaroma_dp(PLT)
	ldrb	r3, [r6, #66]	@ zero_extendqisi2
	add	r0, r0, r4
	str	r0, [r6, #72]
.L60:
	cmp	r3, #0
	beq	.L51
	add	r0, r6, #76
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #16]
	bl	libaroma_ripple_down(PLT)
	b	.L51
.L103:
	cmp	r2, r3
	blt	.L57
	ldr	r3, [r6, #56]
	cbz	r3, .L104
.L58:
	movs	r3, #1
	movs	r0, #8
	strb	r3, [r6, #66]
	bl	libaroma_dp(PLT)
	ldr	r2, [r6, #20]
	negs	r0, r0
	str	r0, [r6, #68]
	ldrb	r3, [r6, #66]	@ zero_extendqisi2
	str	r2, [r6, #72]
	b	.L60
.L57:
	ldr	r0, [r6, #28]
	cmp	r2, r0
	blt	.L51
.L61:
	ldr	r3, [r4, #24]
	cmp	r2, r3
	bge	.L51
	ldr	r3, [r6, #228]
	cbz	r3, .L62
	movs	r0, #48
	ldr	r4, [r3]
	bl	libaroma_dp(PLT)
	ldr	r3, [r6, #28]
	ldr	r2, [sp, #8]
	mla	r0, r0, r4, r3
	cmp	r0, r2
	bgt	.L105
.L62:
	ldrh	r3, [r6, #62]
	cmp	r3, #0
	bne	.L67
.L99:
	ldrb	r3, [r6, #66]	@ zero_extendqisi2
	b	.L60
.L104:
	ldrb	r3, [r6, #60]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L51
	b	.L58
.L73:
	ldr	r1, [r6, #228]
	sub	r3, r2, #10
	ldrh	r0, [r4]
	add	r5, r3, r3, lsl #1
	movs	r4, #0
	ldr	r1, [r1, #4]
	orr	r0, r0, #16777216
	orr	r0, r0, r2, lsl #16
	add	r2, r1, r5, lsl #2
	ldrb	r1, [r2, #8]	@ zero_extendqisi2
	ldrb	r2, [r2, #9]	@ zero_extendqisi2
	str	r4, [sp]
	ubfx	r1, r1, #3, #1
	bl	libaroma_window_post_command_ex(PLT)
	b	.L51
.L105:
	subs	r4, r2, r3
	movs	r0, #48
	bl	libaroma_dp(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	fmsr	s15, r0	@ int
	fsitod	d0, s15
	bl	floor(PLT)
	ldr	r3, [r6, #228]
	ftosizd	s0, d0
	fmrs	r4, s0	@ int
	cmp	r3, #0
	beq	.L99
	cmp	r4, #0
	blt	.L99
	ldr	r3, [r3]
	cmp	r4, r3
	bge	.L99
	ldr	r5, [r6, #28]
	add	r3, r4, #10
	strb	r3, [r6, #66]
	movs	r0, #48
	bl	libaroma_dp(PLT)
	mla	r5, r0, r4, r5
	movs	r0, #48
	str	r5, [r6, #68]
	bl	libaroma_dp(PLT)
	ldr	r3, [r6, #228]
	movs	r2, #12
	str	r0, [r6, #72]
	ldr	r3, [r3, #4]
	mla	r2, r2, r4, r3
	ldrb	r3, [r2, #8]	@ zero_extendqisi2
	lsls	r0, r3, #29
	bpl	.L99
	movs	r2, #1
	ldrb	r3, [r6, #66]	@ zero_extendqisi2
	strb	r2, [r6, #65]
	b	.L60
.L67:
	movs	r3, #3
	str	r0, [r6, #68]
	strb	r3, [r6, #66]
	movs	r0, #48
	bl	libaroma_dp(PLT)
	ldrb	r3, [r6, #66]	@ zero_extendqisi2
	str	r0, [r6, #72]
	b	.L60
.L75:
	add	r0, r6, #76
	bl	libaroma_ripple_move(PLT)
	b	.L51
.L107:
	.align	2
.L106:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_ctl_bar_msg, .-_libaroma_ctl_bar_msg
	.section	.text.libaroma_ctl_bar_tools,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_tools
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_tools, %function
libaroma_ctl_bar_tools:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	subs	r5, r0, #0
	ble	.L111
	cmp	r5, #4
	mov	r0, #8
	mov	r1, #1
	it	ge
	movge	r5, #4
	bl	calloc(PLT)
	mov	r4, r0
	cbz	r0, .L111
	str	r5, [r0]
	mov	r1, r5
	movs	r0, #12
	bl	calloc(PLT)
	mov	r5, r0
	str	r0, [r4, #4]
	mov	r0, r4
	cbz	r5, .L117
	pop	{r3, r4, r5, pc}
.L111:
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L117:
	bl	free(PLT)
	mov	r0, r5
	pop	{r3, r4, r5, pc}
	.size	libaroma_ctl_bar_tools, .-libaroma_ctl_bar_tools
	.section	.text._libaroma_ctl_bar_tools_item_free,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_bar_tools_item_free
	.thumb
	.thumb_func
	.type	_libaroma_ctl_bar_tools_item_free, %function
_libaroma_ctl_bar_tools_item_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L118
	ldr	r0, [r0]
	cbz	r0, .L120
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r4]
.L120:
	ldr	r3, [r4, #4]
	cbz	r3, .L121
	ldrb	r3, [r4, #8]	@ zero_extendqisi2
	lsls	r3, r3, #31
	bmi	.L136
.L122:
	movs	r3, #0
	str	r3, [r4, #4]
.L121:
	movs	r3, #0
	strb	r3, [r4, #8]
	strb	r3, [r4, #9]
.L118:
	pop	{r4, pc}
.L136:
	adds	r0, r4, #4
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L122
	.size	_libaroma_ctl_bar_tools_item_free, .-_libaroma_ctl_bar_tools_item_free
	.section	.text.libaroma_ctl_bar_tools_free,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_tools_free
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_tools_free, %function
libaroma_ctl_bar_tools_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	cbz	r0, .L143
	ldr	r0, [r0, #4]
	cbz	r0, .L139
	ldr	r3, [r6]
	cmp	r3, #0
	ble	.L140
	movs	r4, #0
	mov	r5, r4
.L142:
	add	r0, r0, r4
	adds	r5, r5, #1
	bl	_libaroma_ctl_bar_tools_item_free(PLT)
	ldr	r3, [r6]
	adds	r4, r4, #12
	ldr	r0, [r6, #4]
	cmp	r3, r5
	bgt	.L142
.L140:
	bl	free(PLT)
.L139:
	mov	r0, r6
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, r5, r6, pc}
.L143:
	pop	{r4, r5, r6, pc}
	.size	libaroma_ctl_bar_tools_free, .-libaroma_ctl_bar_tools_free
	.section	.text.libaroma_ctl_bar_tools_set,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_tools_set
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_tools_set, %function
libaroma_ctl_bar_tools_set:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #24
	mov	r4, r0
	ldrb	r6, [sp, #60]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L161
	ldr	r5, [r0]
	cmp	r5, r1
	ble	.L161
	cmp	r1, #0
	blt	.L161
	add	r1, r1, r1, lsl #1
	mov	r7, r3
	ldr	r3, [r0, #4]
	mov	r8, r2
	lsls	r5, r1, #2
	add	r3, r3, r5
	mov	r0, r3
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	bl	_libaroma_ctl_bar_tools_item_free(PLT)
	ldr	r3, [r4, #4]
	add	r3, r3, r5
	strb	r8, [r3, #9]
	cbz	r7, .L150
	ldr	r8, [r4, #4]
	mov	r0, r7
	bl	__strdup(PLT)
	str	r0, [r8, r5]
.L150:
	ldr	r0, [sp, #56]
	cbz	r0, .L152
	and	r7, r6, #2
	and	r8, r7, #255
	cbz	r7, .L153
	ldr	r3, [r4, #4]
	movs	r2, #2
	add	r3, r3, r5
	str	r0, [r3, #4]
	strb	r2, [r3, #8]
.L152:
	lsls	r2, r6, #29
	bpl	.L158
	ldr	r3, [r4, #4]
	ubfx	r1, r9, #3, #1
	add	r3, r3, r5
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	orr	r2, r2, #4
	strb	r2, [r3, #8]
	lsls	r3, r6, #28
	bmi	.L176
	cbz	r1, .L158
.L175:
	ldr	r3, [r4, #4]
	movs	r0, #1
	add	r5, r5, r3
	ldrb	r3, [r5, #8]	@ zero_extendqisi2
	orr	r3, r3, #16
	strb	r3, [r5, #8]
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L161:
	movs	r0, #0
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L176:
	ldr	r3, [r4, #4]
	add	r3, r3, r5
	ldrb	r2, [r3, #8]	@ zero_extendqisi2
	orr	r2, r2, #8
	strb	r2, [r3, #8]
	cmp	r1, #0
	beq	.L175
.L158:
	movs	r0, #1
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L153:
	movs	r0, #24
	bl	libaroma_dp(PLT)
	ldr	r10, [r4, #4]
	mov	r3, r8
	mov	r1, r0
	str	r8, [sp]
	movs	r2, #1
	mov	r7, r0
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r3, [r4, #4]
	add	r10, r10, r5
	str	r0, [r10, #4]
	add	r3, r3, r5
	ldr	r3, [r3, #4]
	cbz	r3, .L154
	ldr	r2, [r3, #12]
	mov	r1, r8
	ldr	r0, [r3, #20]
	bl	memset(PLT)
	ldr	r1, [r4, #4]
	mov	r2, r8
	ldr	lr, [sp, #56]
	mov	r3, r8
	add	r1, r1, r5
	ldr	r0, [r1, #4]
	mov	r1, lr
	str	r7, [sp]
	str	r7, [sp, #4]
	str	r8, [sp, #8]
	str	r8, [sp, #12]
	ldr	r7, [lr]
	str	r7, [sp, #16]
	ldr	r7, [lr, #4]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r3, [r4, #4]
	movs	r2, #1
	add	r3, r3, r5
	strb	r2, [r3, #8]
.L154:
	lsls	r1, r6, #31
	bpl	.L152
	add	r0, sp, #56
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L152
	.size	libaroma_ctl_bar_tools_set, .-libaroma_ctl_bar_tools_set
	.section	.text._libaroma_ctl_bar_draw_switch,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_bar_draw_switch
	.thumb
	.thumb_func
	.type	_libaroma_ctl_bar_draw_switch, %function
_libaroma_ctl_bar_draw_switch:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r7, .L218+4
	ldr	r6, [r0, #72]
.LPIC3:
	add	r7, pc
	fstmfdd	sp!, {d8}
	sub	sp, sp, #100
	cmp	r6, r7
	ldrb	r5, [sp, #144]	@ zero_extendqisi2
	beq	.L213
.L190:
	movs	r0, #0
.L199:
	add	sp, sp, #100
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L213:
	ldr	r6, [r0, #4]
	ldr	r0, [r6, #228]
	cmp	r0, #0
	beq	.L199
	cmp	r2, #0
	blt	.L190
	mov	r4, r1
	ldr	r1, [r0]
	cmp	r2, r1
	bge	.L190
	add	r7, r2, r2, lsl #1
	ldr	r1, [r0, #4]
	lsls	r0, r7, #2
	mov	fp, r0
	str	r0, [sp, #44]
	add	fp, fp, r1
	ldrb	r7, [fp, #8]	@ zero_extendqisi2
	and	r1, r7, #4
	and	r0, r1, #255
	cmp	r1, #0
	beq	.L199
	and	r7, r7, #8
	movs	r0, #48
	uxtb	r7, r7
	str	r3, [sp, #36]
	fcpys	s16, s0
	str	r2, [sp, #40]
	str	r7, [sp, #52]
	bl	libaroma_dp(PLT)
	ldr	r1, [r6, #28]
	ldr	r2, [sp, #40]
	mla	r8, r0, r2, r1
	movs	r0, #24
	bl	libaroma_dp(PLT)
	ldr	r1, [r4, #4]
	add	r8, r8, r0
	ldr	r3, [sp, #36]
	str	r8, [sp, #48]
	asr	r8, r1, #1
	cmp	r3, #0
	bne	.L214
.L180:
	ldrh	r0, [r6, #8]
	bl	libaroma_color_isdark(PLT)
	cmp	r0, #0
	beq	.L215
	ldrh	r0, [r6, #8]
	mov	r9, #0
	movw	r1, #65535
	movs	r2, #48
.L188:
	bl	libaroma_alpha(PLT)
	mov	r1, r9
	str	r0, [sp, #68]
	movs	r2, #160
	ldrh	r0, [r6, #8]
	ldrh	r10, [r6, #10]
	bl	libaroma_alpha(PLT)
	ldrh	r1, [r6, #10]
	mov	r9, r0
	movs	r2, #160
	ldrh	r0, [r6, #8]
	bl	libaroma_alpha(PLT)
	ldr	r7, [sp, #52]
	mov	r1, r0
	cmp	r7, #0
	beq	.L216
	flds	s15, .L218
	mov	r0, r9
	fmuls	s15, s16, s15
	ftouizs	s15, s15
	fmrs	r7, s15	@ int
	uxtb	r7, r7
	mov	r2, r7
	bl	libaroma_alpha(PLT)
	mov	r2, r7
	mov	r1, r10
	mov	r9, r0
	ldr	r0, [sp, #68]
	bl	libaroma_alpha(PLT)
	str	r0, [sp, #64]
	movs	r0, #34
	bl	libaroma_dp(PLT)
	mov	r7, r0
	movs	r0, #14
	bl	libaroma_dp(PLT)
	mov	r3, r0
.L189:
	ldr	r2, [sp, #48]
	movs	r0, #20
	str	r3, [sp, #36]
	sub	r1, r2, r7, asr #1
	str	r1, [sp, #40]
	bl	libaroma_dp(PLT)
	subs	r2, r7, r0
	mov	r10, r0
	fmsr	s0, r2	@ int
	asrs	r2, r0, #1
	fsitos	s0, s0
	str	r2, [sp, #48]
	rsb	r2, r2, r8
	str	r2, [sp, #60]
	fmuls	s0, s0, s16
	bl	roundf(PLT)
	ldr	r1, [sp, #40]
	movs	r0, #1
	fcvtds	d0, s0
	fmsr	s15, r1	@ int
	fsitod	d16, s15
	faddd	d16, d16, d0
	ftosizd	s15, d16
	fsts	s15, [sp, #56]	@ int
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #36]
	mov	lr, #255
	str	r0, [sp, #52]
	mov	r0, r4
	ldr	r1, [sp, #40]
	str	r3, [sp]
	asrs	r2, r3, #1
	mov	r3, r7
	movw	r7, #4369
	str	r9, [sp, #4]
	str	r7, [sp, #16]
	movs	r7, #0
	str	r2, [sp, #12]
	rsb	r2, r2, r8
	str	r9, [sp, #8]
	str	lr, [sp, #20]
	str	lr, [sp, #24]
	str	r7, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	cmp	r5, #0
	bne	.L217
.L185:
	movs	r5, #0
	mov	r1, r10
	mov	r3, r5
	movs	r2, #1
	mov	r0, r10
	str	r5, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	mov	r1, r5
	mov	r2, r5
	str	r0, [sp, #72]
	movw	r8, #4369
	bl	libaroma_canvas_setcolor(PLT)
	ldr	r7, [sp, #48]
	mov	r1, r5
	mov	r2, r5
	mov	r3, r10
	ldr	r0, [sp, #72]
	add	r9, sp, #96
	str	r7, [sp, #12]
	movs	r7, #255
	str	r7, [sp, #20]
	str	r7, [sp, #24]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #28]
	str	r10, [sp]
	str	r8, [sp, #16]
	bl	libaroma_gradient_ex1(PLT)
	mov	r3, r5
	movs	r2, #1
	ldr	r1, [sp, #52]
	ldr	r0, [sp, #72]
	bl	libaroma_blur_ex(PLT)
	mov	r1, r5
	str	r0, [sp, #80]
	add	r0, sp, #72
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [r9, #-16]!
	mov	lr, #96
	ldr	r7, [sp, #56]
	movs	r3, #3
	ldr	r1, [sp, #52]
	str	r5, [sp]
	str	r5, [sp, #4]
	subs	r2, r7, r1
	ldr	r7, [r0]
	mov	r1, r0
	str	r7, [sp, #8]
	ldr	r0, [r0, #4]
	str	lr, [sp, #20]
	str	r3, [sp, #16]
	str	r0, [sp, #12]
	mov	r0, r4
	ldr	r3, [sp, #60]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	mov	r0, r9
	mov	r1, r5
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r7, [sp, #64]
	movs	r1, #255
	mov	r3, r10
	str	r1, [sp, #20]
	str	r1, [sp, #24]
	mov	r0, r4
	str	r7, [sp, #4]
	str	r7, [sp, #8]
	ldr	r7, [sp, #48]
	str	r8, [sp, #16]
	ldr	r1, [sp, #56]
	str	r5, [sp, #28]
	ldr	r2, [sp, #60]
	str	r10, [sp]
	str	r7, [sp, #12]
	bl	libaroma_gradient_ex1(PLT)
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L186
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r3, r5
	str	r5, [sp]
	mov	r1, r0
	movs	r2, #1
	mov	r8, r0
	bl	libaroma_canvas_new_ex(PLT)
	mov	r3, r0
	str	r0, [sp, #88]
	cmp	r0, #0
	beq	.L186
	ldr	r2, [r3, #12]
	mov	r1, r5
	ldr	r0, [r0, #20]
	bl	memset(PLT)
	ldr	r1, [r6, #228]
	mov	r2, r5
	ldr	r6, [sp, #44]
	mov	r3, r5
	ldr	r0, [sp, #88]
	ldr	r1, [r1, #4]
	add	r1, r1, r6
	ldr	r6, [r1, #4]
	str	r8, [sp]
	str	r8, [sp, #4]
	add	r8, sp, #96
	str	r5, [sp, #8]
	mov	r1, r6
	str	r5, [sp, #12]
	ldr	r7, [r6]
	str	r7, [sp, #16]
	ldr	r6, [r6, #4]
	str	r6, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	movs	r0, #2
	bl	libaroma_dp(PLT)
	ldr	r6, [sp, #56]
	add	r6, r6, r0
	movs	r0, #2
	bl	libaroma_dp(PLT)
	ldr	lr, [r8, #-8]!
	mov	r2, r6
	str	r5, [sp]
	mov	ip, #1
	str	r5, [sp, #4]
	ldr	r3, [sp, #60]
	mov	r1, lr
	ldr	r6, [lr]
	ldr	r7, [sp, #68]
	add	r3, r3, r0
	mov	r0, r4
	str	r6, [sp, #8]
	movs	r6, #255
	ldr	r4, [lr, #4]
	str	r6, [sp, #20]
	str	r7, [sp, #28]
	str	r4, [sp, #12]
	str	ip, [sp, #16]
	str	ip, [sp, #24]
	bl	libaroma_draw_ex2(PLT)
	mov	r0, r8
	mov	r1, r5
	bl	libaroma_canvas_free_ex1(PLT)
.L186:
	movs	r0, #1
	b	.L199
.L216:
	flds	s15, .L218
	mov	r1, r9
	fmuls	s15, s16, s15
	ftouizs	s15, s15
	fmrs	r7, s15	@ int
	uxtb	r7, r7
	mov	r2, r7
	bl	libaroma_alpha(PLT)
	mov	r2, r7
	ldr	r1, [sp, #68]
	mov	r9, r0
	mov	r0, r10
	bl	libaroma_alpha(PLT)
	str	r0, [sp, #64]
	movs	r0, #34
	bl	libaroma_dp(PLT)
	mov	r7, r0
	movs	r0, #14
	bl	libaroma_dp(PLT)
	fconsts	s15, #112
	mov	r3, r0
	str	r10, [sp, #68]
	fsubs	s16, s15, s16
	b	.L189
.L215:
	mov	r1, r0
	movw	r9, #65535
	ldrh	r0, [r6, #8]
	movs	r2, #16
	b	.L188
.L217:
	movs	r0, #16
	sxth	r5, r5
	bl	libaroma_dp(PLT)
	add	r7, r10, r0
	movs	r0, #8
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #56]
	rsb	r8, r0, r1
	movs	r0, #8
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #60]
	add	lr, r5, r5, lsl #1
	mov	r1, r8
	add	lr, r5, lr, lsl #2
	subs	r2, r3, r0
	ldrh	r3, [r6, #10]
	add	r5, r5, lr, lsl #2
	asrs	r0, r7, #1
	str	r7, [sp]
	str	r3, [sp, #4]
	ubfx	r5, r5, #8, #8
	str	r3, [sp, #8]
	movw	r3, #4369
	str	r3, [sp, #16]
	movs	r3, #0
	str	r3, [sp, #28]
	mov	r3, r7
	str	r0, [sp, #12]
	mov	r0, r4
	str	r5, [sp, #20]
	str	r5, [sp, #24]
	bl	libaroma_gradient_ex1(PLT)
	b	.L185
.L214:
	movs	r0, #24
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #48]
	rsb	r9, r0, r7
	movs	r0, #48
	bl	libaroma_dp(PLT)
	ldr	r7, [r4, #4]
	mov	lr, #255
	mov	r3, r0
	mov	r1, r9
	mov	r0, r4
	movs	r2, #0
	str	r7, [sp]
	ldrh	ip, [r6, #8]
	str	lr, [sp, #8]
	str	ip, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	b	.L180
.L219:
	.align	2
.L218:
	.word	1132396544
	.word	.LANCHOR0-(.LPIC3+4)
	.size	_libaroma_ctl_bar_draw_switch, .-_libaroma_ctl_bar_draw_switch
	.section	.text._libaroma_ctl_bar_internal_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_bar_internal_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_bar_internal_draw, %function
_libaroma_ctl_bar_internal_draw:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r0
	ldr	r4, [r0, #4]
	sub	sp, sp, #84
	movs	r5, #0
	add	r7, r4, #232
	mov	r0, r7
	str	r7, [sp, #56]
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r9, #8]
	movs	r2, #0
	str	r5, [r4, #36]
	str	r2, [r4, #40]	@ float
	cbz	r3, .L254
	ldrb	r3, [r3, #60]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L222
.L254:
	str	r3, [sp, #60]
.L221:
	ldr	r3, [r4, #48]
	cbz	r3, .L224
	add	r0, r4, #48
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #48]
.L224:
	movs	r5, #0
	ldr	r1, [r9, #28]
	mov	r3, r5
	mov	r2, r5
	ldr	r0, [r9, #24]
	str	r5, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r4, #48]
	ldrh	r0, [r4, #8]
	bl	libaroma_color_isdark(PLT)
	subs	r0, r0, r5
	ldrh	r1, [r4, #8]
	it	ne
	movne	r0, #-1
	movs	r2, #255
	strh	r0, [r4, #12]	@ movhi
	ldr	r0, [r4, #48]
	bl	libaroma_canvas_setcolor(PLT)
	movs	r0, #16
	bl	libaroma_dp(PLT)
	ldr	r6, [r4, #56]
	str	r0, [r4, #20]
	cmp	r6, #0
	beq	.L304
	ldrb	r6, [r4, #61]	@ zero_extendqisi2
	movs	r0, #16
	cmp	r6, #0
	bne	.L305
	ldr	r5, [r4, #48]
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	ldr	r7, [r4, #56]
	mov	r3, r0
	str	r6, [sp]
	mov	r0, r5
	str	r6, [sp, #4]
	mov	ip, #1
	ldr	r5, [r7]
	mov	r1, r7
	mov	lr, #255
	mov	r2, r8
	str	r5, [sp, #8]
	ldr	r7, [r7, #4]
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	str	r7, [sp, #12]
	str	ip, [sp, #16]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L229:
	ldr	r0, [r4, #16]
	bl	libaroma_dp(PLT)
	str	r0, [r4, #20]
.L227:
	movs	r0, #4
	bl	libaroma_dp(PLT)
	ldrh	r3, [r4, #62]
	mov	r5, r0
	cmp	r3, #0
	bne	.L306
.L231:
	ldr	r6, [r4, #228]
	cbz	r6, .L233
	ldr	r6, [r6]
	movs	r0, #48
	bl	libaroma_dp(PLT)
	mul	r6, r0, r6
.L233:
	ldr	r3, [r4, #20]
	movs	r0, #2
	ldr	r7, [r9, #24]
	add	r3, r3, r6
	add	r8, r3, r5
	add	r5, r5, r6
	bl	libaroma_dp(PLT)
	ldr	r3, [r9, #24]
	add	r0, r0, r8
	ldr	r2, [r4, #228]
	subs	r7, r7, r0
	str	r7, [r4, #24]
	subs	r3, r3, r5
	str	r3, [r4, #28]
	cmp	r2, #0
	beq	.L237
	movs	r0, #24
	bl	libaroma_dp(PLT)
	ldr	r3, [r4, #228]
	str	r0, [sp, #52]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L237
	movs	r6, #0
	add	r7, sp, #72
	str	r7, [sp, #68]
	mov	r5, r6
	mov	fp, #1
	str	r9, [sp, #64]
	b	.L244
.L309:
	and	r1, r1, #16
	and	r0, r1, #255
	cmp	r1, #0
	beq	.L307
.L239:
	ldr	r3, [r2]
	adds	r5, r5, #1
	adds	r6, r6, #12
	cmp	r3, r5
	ble	.L308
.L244:
	movs	r0, #48
	bl	libaroma_dp(PLT)
	ldr	r7, [r4, #28]
	mov	r8, r0
	movs	r0, #13
	str	r7, [sp, #44]
	bl	libaroma_dp(PLT)
	ldr	r2, [r4, #228]
	mov	r9, r0
	ldr	r0, [r2, #4]
	add	r0, r0, r6
	ldrb	r1, [r0, #8]	@ zero_extendqisi2
	and	r3, r1, #4
	and	r10, r3, #255
	cmp	r3, #0
	bne	.L309
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L239
	and	r1, r1, #2
	str	r3, [sp, #72]
	and	r3, r1, #255
	cmp	r1, #0
	bne	.L310
	mov	r10, r3
.L240:
	ldr	r7, [sp, #44]
	movs	r0, #16
	mla	r8, r5, r8, r7
	ldrb	r7, [r4, #61]	@ zero_extendqisi2
	str	r7, [sp, #44]
	add	r8, r8, r9
	cmp	r7, #0
	beq	.L242
	ldr	r7, [r4, #48]
	bl	libaroma_dp(PLT)
	ldr	lr, [sp, #72]
	movs	r1, #0
	str	r1, [sp]
	mov	r3, r0
	str	r1, [sp, #4]
	mov	r0, r7
	ldr	r7, [lr]
	mov	ip, #255
	mov	r2, r8
	mov	r1, lr
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	fp, [sp, #16]
	str	fp, [sp, #24]
	str	r7, [sp, #12]
	str	ip, [sp, #20]
	ldrh	r7, [r4, #12]
	str	r7, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
.L243:
	cmp	r10, #0
	beq	.L241
	ldr	r3, [sp, #72]
	cbz	r3, .L241
	add	r0, sp, #72
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L241:
	ldr	r2, [r4, #228]
	adds	r5, r5, #1
	adds	r6, r6, #12
	ldr	r3, [r2]
	cmp	r3, r5
	bgt	.L244
.L308:
	ldr	r9, [sp, #64]
.L237:
	ldr	r0, [r4]
	cbz	r0, .L303
	movs	r5, #100
	mov	r3, #1120
	ldrh	r1, [r4, #12]
	movt	r3, 177
	ldr	r2, [r4, #24]
	str	r5, [sp]
	bl	libaroma_text(PLT)
.L303:
	mov	r8, r0
	ldr	r0, [r4, #4]
	mov	r6, r0
	cbz	r0, .L245
	movs	r5, #100
	movs	r3, #32
	ldrh	r1, [r4, #12]
	movt	r3, 177
	ldr	r2, [r4, #24]
	str	r5, [sp]
	bl	libaroma_text(PLT)
	mov	r6, r0
.L245:
	mov	r7, r8
	cmp	r8, #0
	beq	.L246
	mov	r0, r8
	bl	libaroma_text_height(PLT)
	mov	r7, r0
.L246:
	mov	r10, r7
	cbz	r6, .L247
	mov	r0, r6
	bl	libaroma_text_height(PLT)
	add	r10, r7, r0
.L247:
	ldr	r5, [r9, #28]
	movs	r0, #2
	bl	libaroma_dp(PLT)
	add	r0, r0, r10, asr #1
	asrs	r5, r5, #1
	rsb	r9, r0, r5
	cmp	r8, #0
	beq	.L248
	movs	r5, #0
	mov	lr, #10
	ldr	r0, [r4, #48]
	mov	r1, r8
	ldr	r2, [r4, #20]
	mov	r3, r9
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #16]
	str	lr, [sp, #12]
	ldrh	lr, [r4, #12]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	lr, [sp, #20]
	str	r5, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	mov	r0, r8
	bl	libaroma_text_free(PLT)
.L248:
	cbz	r6, .L249
	movs	r5, #0
	mov	lr, #10
	ldr	r0, [r4, #48]
	add	r3, r9, r7
	ldr	r2, [r4, #20]
	mov	r1, r6
	str	r5, [sp]
	str	r5, [sp, #4]
	str	r5, [sp, #8]
	str	r5, [sp, #16]
	str	lr, [sp, #12]
	ldrh	r7, [r4, #12]
	str	r5, [sp, #24]
	str	r5, [sp, #28]
	str	r7, [sp, #20]
	str	r5, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	mov	r0, r6
	bl	libaroma_text_free(PLT)
.L249:
	ldr	r5, [sp, #60]
	ldr	r3, [r4, #52]
	cmp	r5, #0
	beq	.L250
	cmp	r3, #0
	beq	.L251
.L252:
	movs	r3, #1
	ldr	r0, [sp, #56]
	strb	r3, [r4, #32]
	bl	omp_unset_nest_lock(PLT)
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L222:
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L311
	movs	r0, #1
	add	r1, sp, #72
	bl	clock_gettime(PLT)
	cbnz	r0, .L223
	ldr	r3, [sp, #76]
	movw	r2, #56963
	movt	r2, 17179
	ldr	r1, [sp, #72]
	mov	r5, #1000
	smull	r0, r2, r2, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r2, asr #18
	mla	r5, r5, r1, r3
.L223:
	str	r5, [r4, #36]
	movs	r5, #1
	str	r5, [sp, #60]
	b	.L221
.L305:
	ldr	r6, [r4, #48]
	movs	r7, #1
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r3, r0
	mov	r0, r6
	ldr	r6, [r4, #56]
	mov	lr, #255
	str	r5, [sp]
	mov	r2, r8
	str	r5, [sp, #4]
	ldr	r5, [r6]
	mov	r1, r6
	str	r5, [sp, #8]
	ldr	r5, [r6, #4]
	str	r7, [sp, #16]
	str	r7, [sp, #24]
	str	r5, [sp, #12]
	str	lr, [sp, #20]
	ldrh	r5, [r4, #12]
	str	r5, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	b	.L229
.L242:
	ldr	r9, [r4, #48]
	bl	libaroma_dp(PLT)
	ldr	lr, [sp, #72]
	mov	ip, #255
	ldr	r7, [sp, #44]
	mov	r3, r0
	mov	r2, r8
	mov	r0, r9
	mov	r1, lr
	str	r7, [sp]
	str	r7, [sp, #4]
	ldr	r7, [lr]
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	fp, [sp, #16]
	str	ip, [sp, #20]
	str	r7, [sp, #12]
	ldr	r7, [sp, #44]
	str	r7, [sp, #24]
	str	r7, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	b	.L243
.L307:
	ldr	r1, [r4, #48]
	mov	r3, r0
	str	r0, [sp]
	mov	r2, r5
	ldr	r0, [sp, #64]
	fconsts	s0, #112
	bl	_libaroma_ctl_bar_draw_switch(PLT)
	ldr	r2, [r4, #228]
	b	.L239
.L310:
	ldr	r0, [sp, #52]
	mov	r3, r10
	str	r10, [sp]
	movs	r2, #1
	mov	r1, r0
	bl	libaroma_canvas_new_ex(PLT)
	mov	r3, r0
	str	r0, [sp, #72]
	cmp	r0, #0
	beq	.L241
	mov	r1, r10
	ldr	r2, [r3, #12]
	ldr	r0, [r0, #20]
	bl	memset(PLT)
	ldr	r1, [r4, #228]
	mov	r3, r10
	ldr	r7, [sp, #52]
	mov	r2, r10
	ldr	r0, [sp, #72]
	ldr	r1, [r1, #4]
	add	r1, r1, r6
	ldr	lr, [r1, #4]
	str	r10, [sp, #8]
	str	r10, [sp, #12]
	mov	r10, #1
	str	r7, [sp]
	mov	r1, lr
	str	r7, [sp, #4]
	ldr	r7, [lr]
	str	r7, [sp, #16]
	ldr	r7, [lr, #4]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r3, [sp, #72]
	cmp	r3, #0
	bne	.L240
	b	.L241
.L250:
	cbz	r3, .L251
	ldr	r1, [sp, #60]
	add	r0, r4, #52
	bl	libaroma_canvas_free_ex1(PLT)
.L251:
	ldr	r3, [r4, #48]
	movs	r2, #0
	str	r2, [r4, #48]
	str	r3, [r4, #52]
	b	.L252
.L306:
	movs	r0, #37
	bl	libaroma_dp(PLT)
	ldr	r3, [r9, #24]
	add	r5, r5, r0
	movs	r0, #13
	ldr	r6, [r4, #48]
	rsb	r10, r5, r3
	bl	libaroma_dp(PLT)
	add	r10, r10, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #12
	bl	libaroma_dp(PLT)
	mov	r7, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	mov	r1, r10
	str	r0, [sp]
	mov	r2, r8
	mov	r0, r6
	mov	r3, r7
	bl	libaroma_canvas_area(PLT)
	str	r0, [sp, #72]
	cmp	r0, #0
	beq	.L231
	movs	r0, #4
	movs	r7, #255
	bl	libaroma_dp(PLT)
	ldrh	r3, [r4, #12]
	mov	r6, r0
	mov	r8, #0
	movw	r10, #4369
	mov	r1, r6
	mov	r2, r6
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	mov	r3, r6
	ldr	r0, [sp, #72]
	str	r6, [sp]
	str	r6, [sp, #12]
	str	r10, [sp, #16]
	str	r7, [sp, #20]
	str	r7, [sp, #24]
	str	r8, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	movs	r0, #10
	ldr	fp, [sp, #72]
	bl	libaroma_dp(PLT)
	ldrh	lr, [r4, #12]
	mov	r2, r0
	mov	r1, r6
	mov	r3, r6
	mov	r0, fp
	str	r6, [sp]
	str	lr, [sp, #4]
	add	fp, sp, #80
	str	lr, [sp, #8]
	str	r6, [sp, #12]
	str	r10, [sp, #16]
	str	r7, [sp, #20]
	str	r7, [sp, #24]
	str	r8, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	ldr	r3, [fp, #-8]!
	movs	r0, #16
	str	r3, [sp, #48]
	bl	libaroma_dp(PLT)
	ldrh	lr, [r4, #12]
	mov	r2, r0
	ldr	r3, [sp, #48]
	mov	r1, r6
	str	r10, [sp, #16]
	stmia	sp, {r6, lr}
	mov	r0, r3
	str	lr, [sp, #8]
	mov	r3, r6
	str	r6, [sp, #12]
	str	r7, [sp, #20]
	str	r7, [sp, #24]
	str	r8, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	mov	r0, fp
	mov	r1, r8
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L231
.L304:
	ldrb	r3, [r4, #60]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L227
	subs	r2, r3, #2
	cmp	r2, #1
	bls	.L312
	cmp	r3, #1
	it	ne
	cmpne	r3, #4
	bne	.L229
	ldr	r10, [r4, #48]
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	fp, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	movs	r5, #255
	str	r0, [sp]
	mov	r2, fp
	mov	r0, r10
	mov	r3, r8
	movs	r1, #1
	ldrh	r7, [r4, #12]
	str	r6, [sp, #12]
.L302:
	str	r7, [sp, #4]
	str	r5, [sp, #8]
	fconsts	s0, #112
	fconsts	s1, #96
	bl	libaroma_art_arrowdrawer(PLT)
	b	.L229
.L311:
	movs	r7, #1
	str	r7, [sp, #60]
	b	.L221
.L312:
	ldr	r10, [r4, #48]
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	fp, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	movs	r5, #255
	str	r0, [sp]
	mov	r2, fp
	ldrh	r7, [r4, #12]
	mov	r0, r10
	mov	r3, r8
	str	r6, [sp, #12]
	mov	r1, r6
	b	.L302
	.size	_libaroma_ctl_bar_internal_draw, .-_libaroma_ctl_bar_internal_draw
	.section	.text._libaroma_ctl_bar_req_internal_draw_thread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_ctl_bar_req_internal_draw_thread, %function
_libaroma_ctl_bar_req_internal_draw_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	_libaroma_ctl_bar_internal_draw(PLT)
	movs	r0, #0
	pop	{r3, pc}
	.size	_libaroma_ctl_bar_req_internal_draw_thread, .-_libaroma_ctl_bar_req_internal_draw_thread
	.section	.text._libaroma_ctl_bar_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_bar_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_bar_draw, %function
_libaroma_ctl_bar_draw:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L441+8
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
.LPIC4:
	add	r2, pc
	fstmfdd	sp!, {d8}
	cmp	r3, r2
	sub	sp, sp, #148
	beq	.L426
	add	sp, sp, #148
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L426:
	ldr	r5, [r0, #4]
	mov	r6, r1
	add	r7, r5, #232
	mov	r0, r7
	str	r7, [sp, #56]
	bl	omp_set_nest_lock(PLT)
	ldr	r8, [r5, #52]
	movs	r3, #0
	strb	r3, [r5, #32]
	cmp	r8, #0
	beq	.L427
.L317:
	flds	s4, [r5, #40]
	fconsts	s3, #112
	fcmpes	s4, s3
	fmstat
	bmi	.L428
.L318:
	fconsts	s16, #112
	fcmps	s4, s16
	fmstat
	bne	.L342
	ldr	r3, [r5, #48]
	cmp	r3, #0
	beq	.L343
	add	r0, r5, #52
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r7, [r5, #56]
	movs	r3, #0
	ldr	r8, [r5, #48]
	str	r3, [r5, #48]
	str	r8, [r5, #52]
	cmp	r7, #0
	beq	.L429
.L344:
	ldr	r2, [r5, #228]
	cbz	r2, .L343
	ldr	r1, [r2]
	cmp	r1, #0
	ble	.L343
	movs	r7, #0
	mov	r0, r1
	mov	r10, r7
	mov	r1, r8
	b	.L347
.L346:
	adds	r7, r7, #1
	cmp	r7, r0
	bge	.L430
.L347:
	add	r9, r7, r7, lsl #1
	ldr	r3, [r2, #4]
	lsl	r9, r9, #2
	add	r3, r3, r9
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	lsls	r3, r3, #29
	bpl	.L346
	mov	r2, r7
	movs	r3, #1
	str	r10, [sp]
	mov	r0, r4
	fconsts	s0, #112
	bl	_libaroma_ctl_bar_draw_switch(PLT)
	ldr	r3, [r5, #228]
	ldr	r3, [r3, #4]
	add	r9, r9, r3
	ldrb	r3, [r9, #8]	@ zero_extendqisi2
	bic	r3, r3, #16
	strb	r3, [r9, #8]
	ldr	r2, [r5, #228]
	ldr	r1, [r5, #52]
	ldr	r0, [r2]
	b	.L346
.L430:
	mov	r8, r1
.L343:
	movs	r3, #0
	movs	r2, #0
	str	r3, [r5, #36]
	strb	r3, [r5, #44]
	str	r2, [r5, #40]	@ float
.L342:
	mov	lr, #0
	mov	ip, #255
	str	lr, [sp]
	mov	r2, lr
	str	lr, [sp, #4]
	mov	r1, r8
	ldr	r7, [r8]
	mov	r3, lr
	mov	r0, r6
	str	r7, [sp, #8]
	ldr	r7, [r8, #4]
	str	lr, [sp, #16]
	str	lr, [sp, #24]
	str	r7, [sp, #12]
	str	lr, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L335:
	ldrb	r3, [r5, #66]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L349
	ldrb	r2, [r5, #65]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L350
	ldr	r2, [r5, #224]
	add	r2, r5, r2, lsl #2
	flds	s15, [r2, #80]
	fcmpezs	s15
	fmstat
	ble	.L349
	flds	s14, [r2, #128]
	fconsts	s15, #112
	fcmpes	s14, s15
	fmstat
	bpl	.L349
	subs	r7, r3, #10
	bmi	.L349
	ldr	r3, [r5, #228]
	cmp	r3, #0
	beq	.L349
	ldr	r3, [r3]
	cmp	r7, r3
	bge	.L349
	fcvtds	d17, s14
	fconstd	d16, #224
	faddd	d16, d17, d16
	faddd	d16, d16, d16
	fcmpezd	d16
	fmstat
	bmi	.L364
	fconstd	d17, #112
	fcmped	d16, d17
	fmstat
	it	mi
	fcvtsdmi	s4, d16
	bmi	.L354
	fcpys	s4, s15
.L354:
	flds	s0, .L441
	flds	s1, .L441+12
	flds	s2, .L441+4
	fconsts	s3, #112
	bl	libaroma_cubic_bezier(PLT)
	ldrb	r3, [r5, #65]	@ zero_extendqisi2
	fconsts	s16, #112
	fsubs	s17, s16, s0
	cmp	r3, #1
	bls	.L356
	ldr	r3, [r5, #224]
	flds	s1, .L441+12
	flds	s2, .L441+4
	fcpys	s3, s16
	add	r3, r5, r3, lsl #2
	flds	s0, .L441
	flds	s4, [r3, #128]
	fadds	s4, s4, s4
	fcmpes	s4, s16
	fmstat
	it	pl
	fcpyspl	s4, s16
	bl	libaroma_cubic_bezier(PLT)
	flds	s15, .L441+16
	mov	r1, r6
	movs	r3, #1
	mov	r0, r4
	mov	r2, r7
	fmuls	s17, s17, s15
	ftouizs	s17, s17
	fmrs	r6, s17	@ int
	uxtb	r6, r6
	str	r6, [sp]
	bl	_libaroma_ctl_bar_draw_switch(PLT)
	ldrb	r3, [r5, #65]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L349
	movs	r1, #0
	movs	r6, #3
	strb	r6, [r5, #65]
	mov	r0, r4
	str	r1, [sp]
	mov	r2, r7
	fcpys	s0, s16
	movs	r3, #1
	ldr	r1, [r5, #52]
	bl	_libaroma_ctl_bar_draw_switch(PLT)
.L349:
	ldr	r0, [sp, #56]
	bl	omp_unset_nest_lock(PLT)
	add	sp, sp, #148
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L428:
	fcmpezs	s4
	fmstat
	ble	.L318
	ldr	r3, [r5, #48]
	cmp	r3, #0
	beq	.L318
	flds	s1, .L441+12
	mov	r9, #0
	flds	s2, .L441+4
	mov	r8, #255
	flds	s0, .L441
	bl	libaroma_cubic_bezier(PLT)
	ldr	lr, [r5, #52]
	mov	r2, r9
	str	r9, [sp]
	mov	r3, r9
	str	r9, [sp, #4]
	mov	r0, r6
	ldr	r7, [lr]
	mov	r1, lr
	fcpys	s16, s0
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	str	r9, [sp, #16]
	str	r9, [sp, #24]
	str	r7, [sp, #12]
	str	r9, [sp, #28]
	str	r8, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	flds	s15, [r6, #4]	@ int
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	fsitos	s17, s15
	and	r2, r3, #2
	fmrs	r1, s15	@ int
	and	lr, r2, r8
	fmuls	s17, s16, s17
	ftosizs	s17, s17
	fmrs	fp, s17	@ int
	asr	r7, fp, #1
	rsb	r7, r7, r1, asr #1
	str	r7, [sp, #52]
	cmp	r2, #0
	beq	.L320
	ldr	r2, [r5, #228]
	cmp	r2, #0
	beq	.L323
	ldr	r1, [r2]
	cmp	r1, #0
	ble	.L323
	mov	r8, r9
	ldr	r7, [sp, #52]
	b	.L325
.L324:
	add	r8, r8, #1
	cmp	r8, r1
	bge	.L431
.L325:
	ldr	r3, [r2, #4]
	add	r0, r8, r8, lsl #1
	add	r3, r3, r0, lsl #2
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	and	r3, r3, #20
	cmp	r3, #20
	bne	.L324
	ldr	r1, [r5, #48]
	mov	r2, r8
	mov	r0, r4
	str	r9, [sp]
	movs	r3, #1
	fcpys	s0, s16
	bl	_libaroma_ctl_bar_draw_switch(PLT)
	ldr	r2, [r5, #228]
	ldr	r1, [r2]
	b	.L324
.L350:
	add	r1, sp, #96
	str	r2, [sp, #96]
	mov	r7, r2
	str	r2, [sp, #104]
	add	fp, r5, #76
	add	r2, sp, #104
	str	r1, [sp, #60]
	add	r3, sp, #80
	str	r2, [sp, #64]
	add	r1, sp, #88
	add	r2, sp, #112
	str	r3, [sp, #68]
	str	r1, [sp, #72]
	str	r2, [sp, #76]
	str	r4, [sp, #36]
.L358:
	mov	r0, fp
	add	r1, sp, #96
	add	r2, sp, #104
	bl	libaroma_ripple_loop(PLT)
	cmp	r0, #0
	beq	.L349
	ldr	r3, [r5, #68]
	mvn	r4, #127
	movs	r0, #16
	ldr	r8, [r5, #72]
	strb	r4, [sp, #88]
	str	r3, [sp, #112]
	str	r7, [sp, #120]
	str	r7, [sp, #128]
	strb	r7, [sp, #80]
	bl	libaroma_dp(PLT)
	ldr	r4, [sp, #36]
	add	r8, r8, r0
	ldr	r3, [sp, #104]
	add	r1, sp, #88
	mov	r0, fp
	ldr	r2, [r4, #28]
	add	r4, sp, #112
	str	r3, [sp, #16]
	add	r3, sp, #120
	str	r3, [sp, #8]
	add	r3, sp, #128
	str	r1, [sp]
	mov	r1, r8
	str	r3, [sp, #12]
	add	r3, sp, #80
	str	r4, [sp, #4]
	bl	libaroma_ripple_calculation(PLT)
	cmp	r0, #0
	beq	.L358
	movs	r0, #8
	ldr	r9, [sp, #112]
	bl	libaroma_dp(PLT)
	ldr	r2, [r5, #68]
	ldr	r3, [r5, #72]
	rsb	ip, r0, r9
	ldr	r4, [r6]
	mov	r0, r6
	str	ip, [sp, #112]
	ldrh	r1, [r5, #10]
	add	r9, r2, r3, asr #1
	ldr	r3, [r6, #4]
	ldrb	r2, [sp, #80]	@ zero_extendqisi2
	add	ip, r8, r9
	str	r8, [sp]
	cmp	ip, r4
	rsb	r10, r8, r9
	asr	r3, r3, #1
	it	ge
	movge	ip, r4
	str	r2, [sp, #4]
	mov	r2, r9
	str	ip, [sp, #48]
	bic	r10, r10, r10, asr #31
	str	r3, [sp, #52]
	bl	libaroma_draw_circle(PLT)
	ldr	ip, [sp, #48]
	str	r7, [sp, #136]
	rsb	r0, r10, ip
	cmp	r0, #0
	ble	.L358
	movs	r2, #0
	ldr	r1, [r6, #4]
	mov	r3, r2
	str	r7, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #136]
	cmp	r0, #0
	beq	.L358
	str	r10, [sp]
	mov	ip, #255
	str	r7, [sp, #4]
	movs	r2, #0
	ldr	r4, [r0]
	mov	r3, r2
	mov	r1, r6
	str	r4, [sp, #8]
	ldr	r4, [r0, #4]
	str	ip, [sp, #20]
	str	r7, [sp, #16]
	str	r4, [sp, #12]
	str	r7, [sp, #24]
	str	r7, [sp, #28]
	str	ip, [sp, #48]
	bl	libaroma_draw_ex2(PLT)
	ldrb	lr, [sp, #88]	@ zero_extendqisi2
	rsb	r2, r10, r9
	ldrh	r1, [r5, #10]
	ldr	r0, [sp, #136]
	ldr	r3, [sp, #52]
	stmia	sp, {r8, lr}
	bl	libaroma_draw_circle(PLT)
	ldr	r1, [sp, #136]
	ldr	ip, [sp, #48]
	cmp	r1, #0
	beq	.L358
	ldr	r2, [r5, #68]
	ldr	r3, [sp, #112]
	ldr	r0, [sp, #120]
	ldr	r4, [sp, #128]
	add	r2, r2, r3
	str	ip, [sp, #12]
	rsb	r3, r10, r2
	str	r0, [sp, #4]
	str	r3, [sp]
	mov	r3, r0
	str	r4, [sp, #8]
	mov	r0, r6
	bl	libaroma_draw_mask_circle(PLT)
	add	r0, sp, #136
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L358
.L427:
	ldr	r0, [sp, #56]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r4
	bl	_libaroma_ctl_bar_internal_draw(PLT)
	ldr	r0, [sp, #56]
	bl	omp_set_nest_lock(PLT)
	ldr	r8, [r5, #52]
	cmp	r8, #0
	bne	.L317
	b	.L349
.L442:
	.align	2
.L441:
	.word	1053699762
	.word	1046938544
	.word	.LANCHOR0-(.LPIC4+4)
	.word	0
	.word	1132396544
.L320:
	ands	ip, r3, #1
	bne	.L432
	lsls	r7, r3, #27
	bmi	.L433
.L327:
	lsls	r0, r3, #29
	bmi	.L434
.L328:
	ldr	r1, [r5, #228]
	cbz	r1, .L332
	ldr	r0, [r1]
	cmp	r0, #0
	ble	.L332
	mov	r8, #0
	ldr	r7, [sp, #52]
	mov	r9, r8
	b	.L334
.L333:
	add	r8, r8, #1
	cmp	r8, r0
	bge	.L435
.L334:
	ldr	r3, [r1, #4]
	add	r2, r8, r8, lsl #1
	add	r3, r3, r2, lsl #2
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	and	r3, r3, #20
	cmp	r3, #20
	bne	.L333
	mov	r1, r6
	str	r9, [sp]
	mov	r0, r4
	mov	r2, r8
	movs	r3, #1
	fcpys	s0, s16
	bl	_libaroma_ctl_bar_draw_switch(PLT)
	ldr	r1, [r5, #228]
	ldr	r0, [r1]
	b	.L333
.L435:
	str	r7, [sp, #52]
.L332:
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	lsls	r1, r3, #28
	bpl	.L335
	ldr	r3, [r5, #56]
	cbz	r3, .L336
	ldr	r0, [r5, #16]
	bl	libaroma_dp(PLT)
	ldr	ip, [r5, #48]
	mov	r3, r0
	mov	lr, #0
	str	r3, [sp]
	str	r3, [sp, #16]
	mov	r0, r6
	str	fp, [sp, #4]
	mov	r2, lr
	str	lr, [sp, #8]
	mov	r1, ip
	str	lr, [sp, #12]
	ldr	r7, [ip, #4]
	ldr	r3, [sp, #52]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_nearest(PLT)
.L322:
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	lsls	r2, r3, #28
	bpl	.L335
	ldr	r3, [r5, #56]
	cmp	r3, #0
	bne	.L335
.L336:
	ldrb	r3, [r5, #60]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L335
	cmp	r3, #3
	beq	.L436
	cmp	r3, #4
	beq	.L437
	mov	r8, #0
	ldr	r0, [r5, #16]
	bl	libaroma_dp(PLT)
	str	r8, [sp]
	mov	r2, r8
	mov	r3, r8
	ldr	r1, [r6, #4]
	mov	r10, r0
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #136]
	cmp	r0, #0
	beq	.L335
	ldr	r3, [r6, #16]
	mov	r2, r8
	ldrh	r1, [r3]
	bl	libaroma_canvas_setcolor(PLT)
	ldrb	r9, [r5, #60]	@ zero_extendqisi2
	cmp	r9, #1
	beq	.L438
	cmp	r9, #2
	beq	.L439
.L341:
	add	r9, sp, #144
	mov	r8, #0
	ldr	lr, [r9, #-8]!
	mov	r2, r8
	str	r10, [sp]
	mov	r0, r6
	str	fp, [sp, #4]
	str	r10, [sp, #16]
	mov	r1, lr
	str	r8, [sp, #8]
	str	r8, [sp, #12]
	ldr	r7, [lr, #4]
	ldr	r3, [sp, #52]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_nearest(PLT)
	mov	r0, r9
	mov	r1, r8
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L335
.L431:
	str	r7, [sp, #52]
.L323:
	flds	s15, .L441+16
	mov	lr, #0
	ldr	r8, [r5, #48]
	mov	r2, lr
	str	lr, [sp]
	mov	r3, lr
	str	lr, [sp, #4]
	mov	r0, r6
	fmuls	s15, s16, s15
	mov	r1, r8
	ldr	r7, [r8]
	ftouizs	s15, s15
	str	r7, [sp, #8]
	ldr	r7, [r8, #4]
	str	lr, [sp, #16]
	fmrs	ip, s15	@ int
	uxtb	ip, ip
	str	r7, [sp, #12]
	str	lr, [sp, #24]
	str	lr, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L322
.L429:
	ldrb	r3, [r5, #60]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L344
	subs	r2, r3, #2
	cmp	r2, #1
	bls	.L440
	cmp	r3, #1
	it	ne
	cmpne	r3, #4
	bne	.L344
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r10, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	str	r0, [sp]
	mov	lr, #255
	ldrh	ip, [r5, #12]
	mov	r2, r10
	mov	r3, r9
	mov	r0, r8
	fcpys	s0, s16
	movs	r1, #1
.L425:
	str	ip, [sp, #4]
	str	r7, [sp, #12]
	str	lr, [sp, #8]
	fconsts	s1, #96
	bl	libaroma_art_arrowdrawer(PLT)
	ldr	r8, [r5, #52]
	b	.L344
.L432:
	ldr	ip, [r5, #48]
	mov	r0, r6
	ldr	r1, [r5, #24]
	ldr	r2, [r5, #20]
	fsts	s17, [sp, #4]	@ int
	str	r1, [sp]
	str	r1, [sp, #16]
	mov	r1, ip
	str	r2, [sp, #8]
	str	lr, [sp, #12]
	ldr	r7, [ip, #4]
	ldr	r3, [sp, #52]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_nearest(PLT)
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	b	.L327
.L434:
	ldr	r1, [r5, #28]
	mov	r8, #0
	ldr	ip, [r6]
	mov	r0, r6
	ldr	lr, [r5, #48]
	str	r1, [sp, #8]
	mov	r2, r1
	rsb	ip, r1, ip
	str	fp, [sp, #4]
	str	ip, [sp]
	mov	r1, lr
	str	ip, [sp, #16]
	str	r8, [sp, #12]
	ldr	r7, [lr, #4]
	ldr	r3, [sp, #52]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_nearest(PLT)
	b	.L328
.L433:
	ldr	r2, [r5, #20]
	mov	r0, r6
	ldr	r3, [sp, #52]
	ldr	r1, [r5, #48]
	stmia	sp, {r2, r3}
	ldr	r7, [r5, #24]
	fsts	s17, [sp, #12]	@ int
	str	ip, [sp, #16]
	str	r7, [sp, #8]
	str	r8, [sp, #20]
	str	ip, [sp, #24]
	str	ip, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	b	.L327
.L364:
	flds	s4, .L441+12
	b	.L354
.L440:
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r10, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	mov	lr, #255
	str	r0, [sp]
	mov	r2, r10
	ldrh	ip, [r5, #12]
	mov	r3, r9
	mov	r0, r8
	fcpys	s0, s16
	mov	r1, r7
	b	.L425
.L356:
	flds	s15, .L441+16
	mov	r0, r4
	mov	r1, r6
	mov	r2, r7
	fcpys	s0, s16
	movs	r3, #1
	fmuls	s17, s17, s15
	ftouizs	s17, s17
	fmrs	r4, s17	@ int
	uxtb	r4, r4
	str	r4, [sp]
	bl	_libaroma_ctl_bar_draw_switch(PLT)
	b	.L349
.L437:
	movs	r0, #16
	movs	r7, #255
	bl	libaroma_dp(PLT)
	mov	r10, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	ldr	lr, [r6, #16]
	mov	r1, r10
	str	r0, [sp]
	mov	r2, r9
	mov	r3, r8
	mov	r0, r6
	ldrh	lr, [lr]
	str	r7, [sp, #8]
	str	lr, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	str	r0, [sp]
	mov	lr, #0
	ldrh	r1, [r5, #12]
	mov	r2, r9
	mov	r3, r8
	fcpys	s0, s16
	str	r7, [sp, #8]
	mov	r0, r6
	str	r1, [sp, #4]
	movs	r1, #1
	str	lr, [sp, #12]
	fconsts	s1, #96
	bl	libaroma_art_arrowdrawer(PLT)
	b	.L335
.L436:
	movs	r0, #16
	movs	r7, #255
	bl	libaroma_dp(PLT)
	mov	r10, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	ldr	lr, [r6, #16]
	mov	r1, r10
	str	r0, [sp]
	mov	r2, r9
	mov	r3, r8
	mov	r0, r6
	ldrh	lr, [lr]
	str	r7, [sp, #8]
	str	lr, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	str	r0, [sp]
	mov	lr, #0
	ldrh	r0, [r5, #12]
	mov	r2, r9
	mov	r3, r8
	fcpys	s0, s16
	str	r7, [sp, #8]
	mov	r1, lr
	str	r0, [sp, #4]
	mov	r0, r6
	str	lr, [sp, #12]
	fconsts	s1, #96
	bl	libaroma_art_arrowdrawer(PLT)
	b	.L335
.L439:
	ldr	r3, [sp, #136]
	movs	r0, #16
	str	r3, [sp, #40]
	bl	libaroma_dp(PLT)
	mov	r2, r0
	movs	r0, #16
	str	r2, [sp, #44]
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #24
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #40]
	mov	lr, #255
	ldr	r2, [sp, #44]
	mov	r1, r8
	str	r0, [sp]
	mov	r0, r3
	mov	r3, r9
	ldrh	ip, [r5, #12]
	str	r8, [sp, #12]
.L424:
	str	ip, [sp, #4]
	str	lr, [sp, #8]
	fconsts	s0, #112
	fconsts	s1, #96
	bl	libaroma_art_arrowdrawer(PLT)
	b	.L341
.L438:
	ldr	r1, [sp, #136]
	movs	r0, #16
	str	r1, [sp, #48]
	bl	libaroma_dp(PLT)
	mov	r2, r0
	movs	r0, #16
	str	r2, [sp, #44]
	bl	libaroma_dp(PLT)
	mov	r3, r0
	movs	r0, #24
	str	r3, [sp, #40]
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #48]
	mov	lr, #255
	str	r0, [sp]
	ldr	r2, [sp, #44]
	ldrh	ip, [r5, #12]
	mov	r0, r1
	ldr	r3, [sp, #40]
	mov	r1, r9
	str	r8, [sp, #12]
	b	.L424
	.size	_libaroma_ctl_bar_draw, .-_libaroma_ctl_bar_draw
	.section	.text.libaroma_ctl_bar_update,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_update
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_update, %function
libaroma_ctl_bar_update:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #8]
	cbz	r2, .L452
	ldrb	r3, [r2, #60]	@ zero_extendqisi2
	cbnz	r3, .L453
.L452:
	movs	r0, #1
	bx	lr
.L453:
	ldr	r2, .L454
	mov	r3, r0
	push	{lr}
	sub	sp, sp, #12
	movs	r1, #0
	add	r0, sp, #4
.LPIC5:
	add	r2, pc
	bl	pthread_create(PLT)
	ldr	r0, [sp, #4]
	bl	pthread_detach(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L455:
	.align	2
.L454:
	.word	_libaroma_ctl_bar_req_internal_draw_thread-(.LPIC5+4)
	.size	libaroma_ctl_bar_update, .-libaroma_ctl_bar_update
	.section	.text.libaroma_ctl_bar,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar, %function
libaroma_ctl_bar:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	sub	sp, sp, #28
	mov	r7, r1
	movs	r0, #244
	movs	r1, #1
	mov	r9, r2
	mov	r8, r3
	ldr	r5, [sp, #72]
	ldrh	fp, [sp, #76]
	ldrh	r10, [sp, #80]
	bl	calloc(PLT)
	mov	r4, r0
	cbz	r0, .L457
	adds	r0, r0, #232
	bl	omp_init_nest_lock(PLT)
	cbz	r5, .L458
	mov	r0, r5
	bl	__strdup(PLT)
	str	r0, [r4]
.L458:
	movs	r3, #60
	strh	r10, [r4, #10]	@ movhi
	str	r3, [r4, #16]
	movs	r0, #48
	strh	fp, [r4, #8]	@ movhi
	bl	libaroma_dp(PLT)
	ldr	r5, .L470
	mov	r10, r0
	movs	r0, #56
	bl	libaroma_dp(PLT)
	str	r0, [sp, #8]
.LPIC6:
	add	r5, pc
	ldr	r0, [sp, #68]
	mov	r1, r9
	str	r10, [sp, #4]
	mov	r2, r8
	ldr	r3, [sp, #64]
	str	r0, [sp]
	mov	r0, r7
	str	r4, [sp, #12]
	str	r6, [sp, #20]
	str	r5, [sp, #16]
	bl	libaroma_control_new(PLT)
	cbz	r0, .L469
.L457:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L469:
	ldr	r0, [r4]
	cbz	r0, .L459
	bl	free(PLT)
.L459:
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #0
	b	.L457
.L471:
	.align	2
.L470:
	.word	.LANCHOR0-(.LPIC6+4)
	.size	libaroma_ctl_bar, .-libaroma_ctl_bar
	.section	.text.libaroma_ctl_bar_set_title,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_set_title
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_set_title, %function
libaroma_ctl_bar_set_title:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r5, .L486
	sub	sp, sp, #12
	ldr	r3, [r0, #72]
.LPIC7:
	add	r5, pc
	cmp	r3, r5
	it	ne
	movne	r0, #0
	beq	.L485
.L473:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L485:
	ldr	r5, [r4, #4]
	mov	r6, r2
	str	r1, [sp, #4]
	add	r7, r5, #232
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r5]
	ldr	r1, [sp, #4]
	cbz	r0, .L474
	bl	free(PLT)
	ldr	r1, [sp, #4]
	movs	r3, #0
	str	r3, [r5]
.L474:
	cbz	r1, .L475
	mov	r0, r1
	bl	__strdup(PLT)
	str	r0, [r5]
.L475:
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	mov	r0, r7
	orr	r3, r3, #1
	strb	r3, [r5, #44]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	cmp	r6, #0
	beq	.L473
	mov	r0, r4
	bl	libaroma_ctl_bar_update(PLT)
	movs	r0, #1
	b	.L473
.L487:
	.align	2
.L486:
	.word	.LANCHOR0-(.LPIC7+4)
	.size	libaroma_ctl_bar_set_title, .-libaroma_ctl_bar_set_title
	.section	.text.libaroma_ctl_bar_set_textgap,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_set_textgap
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_set_textgap, %function
libaroma_ctl_bar_set_textgap:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, .L496
	sub	sp, sp, #8
	ldr	r3, [r4, #72]
.LPIC8:
	add	r0, pc
	cmp	r3, r0
	it	ne
	movne	r0, #0
	beq	.L495
.L489:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L495:
	ldr	r5, [r4, #4]
	str	r2, [sp]
	str	r1, [sp, #4]
	add	r6, r5, #232
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	mov	r0, r6
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	cmp	r1, #0
	ite	eq
	moveq	r1, #60
	movne	r1, #72
	orr	r3, r3, #2
	str	r1, [r5, #16]
	strb	r3, [r5, #44]
	bl	omp_unset_nest_lock(PLT)
	ldr	r2, [sp]
	movs	r0, #1
	cmp	r2, #0
	beq	.L489
	mov	r0, r4
	bl	libaroma_ctl_bar_update(PLT)
	movs	r0, #1
	b	.L489
.L497:
	.align	2
.L496:
	.word	.LANCHOR0-(.LPIC8+4)
	.size	libaroma_ctl_bar_set_textgap, .-libaroma_ctl_bar_set_textgap
	.section	.text.libaroma_ctl_bar_set_subtitle,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_set_subtitle
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_set_subtitle, %function
libaroma_ctl_bar_set_subtitle:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r5, .L512
	sub	sp, sp, #12
	ldr	r3, [r0, #72]
.LPIC9:
	add	r5, pc
	cmp	r3, r5
	it	ne
	movne	r0, #0
	beq	.L511
.L499:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L511:
	ldr	r5, [r4, #4]
	mov	r6, r2
	str	r1, [sp, #4]
	add	r7, r5, #232
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r5, #4]
	ldr	r1, [sp, #4]
	cbz	r0, .L500
	bl	free(PLT)
	ldr	r1, [sp, #4]
	movs	r3, #0
	str	r3, [r5, #4]
.L500:
	cbz	r1, .L501
	mov	r0, r1
	bl	__strdup(PLT)
	str	r0, [r5, #4]
.L501:
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	mov	r0, r7
	orr	r3, r3, #1
	strb	r3, [r5, #44]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	cmp	r6, #0
	beq	.L499
	mov	r0, r4
	bl	libaroma_ctl_bar_update(PLT)
	movs	r0, #1
	b	.L499
.L513:
	.align	2
.L512:
	.word	.LANCHOR0-(.LPIC9+4)
	.size	libaroma_ctl_bar_set_subtitle, .-libaroma_ctl_bar_set_subtitle
	.section	.text.libaroma_ctl_bar_set_color,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_set_color
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_set_color, %function
libaroma_ctl_bar_set_color:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r5, .L520
	sub	sp, sp, #20
	ldr	r0, [r0, #72]
.LPIC10:
	add	r5, pc
	cmp	r0, r5
	it	ne
	movne	r0, #0
	beq	.L519
.L515:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L519:
	ldr	r5, [r4, #4]
	str	r3, [sp, #4]
	str	r1, [sp, #12]
	add	r6, r5, #232
	str	r2, [sp, #8]
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r2, [sp, #8]
	mov	r0, r6
	ldrb	r7, [r5, #44]	@ zero_extendqisi2
	ldr	r1, [sp, #12]
	strh	r2, [r5, #10]	@ movhi
	orr	r2, r7, #2
	strh	r1, [r5, #8]	@ movhi
	strb	r2, [r5, #44]
	bl	omp_unset_nest_lock(PLT)
	ldr	r3, [sp, #4]
	movs	r0, #1
	cmp	r3, #0
	beq	.L515
	mov	r0, r4
	bl	libaroma_ctl_bar_update(PLT)
	movs	r0, #1
	b	.L515
.L521:
	.align	2
.L520:
	.word	.LANCHOR0-(.LPIC10+4)
	.size	libaroma_ctl_bar_set_color, .-libaroma_ctl_bar_set_color
	.section	.text.libaroma_ctl_bar_set_menuid,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_set_menuid
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_set_menuid, %function
libaroma_ctl_bar_set_menuid:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, .L528
	sub	sp, sp, #8
	ldr	r3, [r4, #72]
.LPIC11:
	add	r0, pc
	cmp	r3, r0
	it	ne
	movne	r0, #0
	beq	.L527
.L523:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L527:
	ldr	r5, [r4, #4]
	str	r2, [sp]
	str	r1, [sp, #4]
	add	r6, r5, #232
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	mov	r0, r6
	ldr	r1, [sp, #4]
	orr	r3, r3, #20
	strh	r1, [r5, #62]	@ movhi
	strb	r3, [r5, #44]
	bl	omp_unset_nest_lock(PLT)
	ldr	r2, [sp]
	movs	r0, #1
	cmp	r2, #0
	beq	.L523
	mov	r0, r4
	bl	libaroma_ctl_bar_update(PLT)
	movs	r0, #1
	b	.L523
.L529:
	.align	2
.L528:
	.word	.LANCHOR0-(.LPIC11+4)
	.size	libaroma_ctl_bar_set_menuid, .-libaroma_ctl_bar_set_menuid
	.section	.text.libaroma_ctl_bar_set_tools,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_set_tools
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_set_tools, %function
libaroma_ctl_bar_set_tools:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r0, .L542
	sub	sp, sp, #12
	ldr	r3, [r4, #72]
.LPIC12:
	add	r0, pc
	cmp	r3, r0
	it	ne
	movne	r0, #0
	beq	.L541
.L531:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L541:
	ldr	r6, [r4, #4]
	mov	r5, r2
	str	r1, [sp, #4]
	add	r7, r6, #232
	mov	r0, r7
	bl	omp_set_nest_lock(PLT)
	ldr	r3, [r6, #228]
	ldr	r1, [sp, #4]
	cbz	r3, .L532
	ldr	r3, [r3]
.L532:
	str	r1, [r6, #228]
	cbz	r1, .L533
	ldr	r1, [r1]
.L533:
	ldrb	r2, [r6, #44]	@ zero_extendqisi2
	cmp	r1, r3
	mov	r0, r7
	ite	eq
	orreq	r2, r2, #4
	orrne	r2, r2, #20
	strb	r2, [r6, #44]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	cmp	r5, #0
	beq	.L531
	mov	r0, r4
	bl	libaroma_ctl_bar_update(PLT)
	movs	r0, #1
	b	.L531
.L543:
	.align	2
.L542:
	.word	.LANCHOR0-(.LPIC12+4)
	.size	libaroma_ctl_bar_set_tools, .-libaroma_ctl_bar_set_tools
	.section	.text.libaroma_ctl_bar_set_icon_mask,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_set_icon_mask
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_set_icon_mask, %function
libaroma_ctl_bar_set_icon_mask:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r0, .L550
	sub	sp, sp, #8
	ldr	r3, [r4, #72]
.LPIC13:
	add	r0, pc
	cmp	r3, r0
	it	ne
	movne	r0, #0
	beq	.L549
.L545:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L549:
	ldr	r5, [r4, #4]
	str	r2, [sp]
	str	r1, [sp, #4]
	add	r6, r5, #232
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	mov	r0, r6
	ldr	r1, [sp, #4]
	orr	r3, r3, #12
	strb	r1, [r5, #61]
	strb	r3, [r5, #44]
	bl	omp_unset_nest_lock(PLT)
	ldr	r2, [sp]
	movs	r0, #1
	cmp	r2, #0
	beq	.L545
	mov	r0, r4
	bl	libaroma_ctl_bar_update(PLT)
	movs	r0, #1
	b	.L545
.L551:
	.align	2
.L550:
	.word	.LANCHOR0-(.LPIC13+4)
	.size	libaroma_ctl_bar_set_icon_mask, .-libaroma_ctl_bar_set_icon_mask
	.section	.text.libaroma_ctl_bar_set_touchable_title,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_set_touchable_title
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_set_touchable_title, %function
libaroma_ctl_bar_set_touchable_title:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L558
	ldr	r3, [r0, #72]
.LPIC14:
	add	r2, pc
	cmp	r3, r2
	beq	.L557
	movs	r0, #0
	bx	lr
.L557:
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, [r0, #4]
	str	r1, [sp, #4]
	add	r5, r4, #232
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	mov	r0, r5
	adds	r1, r1, #0
	it	ne
	movne	r1, #1
	strb	r1, [r4, #64]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L559:
	.align	2
.L558:
	.word	.LANCHOR0-(.LPIC14+4)
	.size	libaroma_ctl_bar_set_touchable_title, .-libaroma_ctl_bar_set_touchable_title
	.section	.text.libaroma_ctl_bar_set_icon,"ax",%progbits
	.align	2
	.global	libaroma_ctl_bar_set_icon
	.thumb
	.thumb_func
	.type	libaroma_ctl_bar_set_icon, %function
libaroma_ctl_bar_set_icon:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r5, .L591
	sub	sp, sp, #36
	ldr	r0, [r0, #72]
.LPIC15:
	add	r5, pc
	str	r1, [sp, #28]
	ldrb	r6, [sp, #72]	@ zero_extendqisi2
	cmp	r0, r5
	it	ne
	movne	r0, #0
	beq	.L589
.L561:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L589:
	ldr	r5, [r4, #4]
	mov	r8, r2
	str	r3, [sp, #24]
	mov	fp, #1
	add	r10, r5, #232
	mov	r0, r10
	bl	omp_set_nest_lock(PLT)
	ldr	r2, [r5, #56]
	ldr	r3, [sp, #24]
	cbz	r2, .L562
	add	r0, r5, #56
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r3, [sp, #24]
	mov	fp, #0
.L562:
	ldr	r1, [sp, #28]
	mov	r9, #0
	ldrb	r2, [r5, #60]	@ zero_extendqisi2
	str	r9, [r5, #56]
	strb	r9, [r5, #60]
	cmp	r2, r9
	it	ne
	movne	fp, r9
	cmp	r1, #0
	beq	.L564
	movs	r0, #24
	bl	libaroma_dp(PLT)
	mov	r3, r9
	str	r9, [sp]
	mov	r1, r0
	movs	r2, #1
	mov	r7, r0
	bl	libaroma_canvas_new_ex(PLT)
	mov	r3, r0
	str	r0, [r5, #56]
	cbz	r0, .L565
	ldr	r2, [r3, #12]
	mov	r1, r9
	ldr	r0, [r0, #20]
	bl	memset(PLT)
	ldr	lr, [sp, #28]
	mov	r2, r9
	ldr	r0, [r5, #56]
	mov	r3, r9
	str	r7, [sp]
	str	r7, [sp, #4]
	mov	r1, lr
	str	r9, [sp, #8]
	str	r9, [sp, #12]
	ldr	r7, [lr]
	str	r7, [sp, #16]
	ldr	r7, [lr, #4]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	strb	r9, [r5, #60]
.L565:
	cmp	r8, #0
	bne	.L566
.L588:
	ldr	r3, [r5, #56]
	cbz	r3, .L575
.L571:
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	cmp	fp, #0
	bne	.L573
	orr	r3, r3, #8
	strb	r3, [r5, #44]
.L574:
	mov	r0, r10
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	cmp	r6, #0
	beq	.L561
	mov	r0, r4
	bl	libaroma_ctl_bar_update(PLT)
	movs	r0, #1
	b	.L561
.L573:
	orr	r3, r3, #24
	strb	r3, [r5, #44]
	b	.L574
.L564:
	cbz	r3, .L575
	cmp	r3, #1
	beq	.L590
	cmp	r3, #2
	bne	.L570
	cmp	r2, #1
	it	ne
	cmpne	r2, #4
	it	eq
	moveq	r3, #3
.L570:
	strb	r3, [r5, #60]
.L575:
	ldrb	r3, [r5, #60]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L571
	ldrb	r3, [r5, #44]	@ zero_extendqisi2
	orr	r3, r3, #16
	strb	r3, [r5, #44]
	b	.L574
.L566:
	add	r0, sp, #28
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	b	.L588
.L590:
	subs	r2, r2, #2
	cmp	r2, #1
	it	ls
	movls	r3, #4
	b	.L570
.L592:
	.align	2
.L591:
	.word	.LANCHOR0-(.LPIC15+4)
	.size	libaroma_ctl_bar_set_icon, .-libaroma_ctl_bar_set_icon
	.section	.data.rel._libaroma_ctl_bar_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_ctl_bar_handler, %object
	.size	_libaroma_ctl_bar_handler, 20
_libaroma_ctl_bar_handler:
	.word	_libaroma_ctl_bar_msg
	.word	_libaroma_ctl_bar_draw
	.word	0
	.word	_libaroma_ctl_bar_destroy
	.word	_libaroma_ctl_bar_thread
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
