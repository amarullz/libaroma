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
	.file	"motions.c"
	.section	.text.libaroma_duration_state,"ax",%progbits
	.align	2
	.global	libaroma_duration_state
	.thumb
	.thumb_func
	.type	libaroma_duration_state, %function
libaroma_duration_state:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	mov	r5, r0
	mov	r4, r1
	movs	r0, #1
	mov	r1, sp
	bl	clock_gettime(PLT)
	cbnz	r0, .L4
	ldr	r3, [sp, #4]
	movw	r2, #56963
	movt	r2, 17179
	ldr	r1, [sp]
	mov	r0, #1000
	smull	r6, r2, r2, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r2, asr #18
	mla	r0, r0, r1, r3
.L2:
	subs	r0, r0, r5
	cmp	r0, r4
	itttt	le
	fmsrle	s14, r0	@ int
	fsitosle	s0, s14
	fmsrle	s14, r4	@ int
	fsitosle	s15, s14
	ite	gt
	fconstsgt	s0, #112
	fdivsle	s0, s0, s15
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L4:
	movs	r0, #0
	b	.L2
	.size	libaroma_duration_state, .-libaroma_duration_state
	.section	.text.libaroma_cubic_bezier,"ax",%progbits
	.align	2
	.global	libaroma_cubic_bezier
	.thumb
	.thumb_func
	.type	libaroma_cubic_bezier, %function
libaroma_cubic_bezier:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	fconsts	s14, #112
	fsubs	s12, s14, s4
	fmuls	s3, s3, s4
	fconsts	s13, #8
	fmuls	s15, s4, s4
	fmacs	s3, s1, s12
	fmuls	s12, s12, s13
	fmacs	s15, s12, s3
	fmuls	s4, s15, s4
	fsubs	s14, s14, s4
	fmuls	s2, s2, s4
	fmuls	s15, s4, s4
	fmuls	s13, s14, s13
	fmacs	s2, s14, s0
	fmacs	s15, s13, s2
	fmuls	s0, s4, s15
	bx	lr
	.size	libaroma_cubic_bezier, .-libaroma_cubic_bezier
	.section	.text.libaroma_motion_fluid,"ax",%progbits
	.align	2
	.global	libaroma_motion_fluid
	.thumb
	.thumb_func
	.type	libaroma_motion_fluid, %function
libaroma_motion_fluid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	fconsts	s15, #112
	fcmpes	s0, s15
	fmstat
	bmi	.L23
	fcpys	s0, s15
	bx	lr
.L23:
	push	{r3, lr}
	fstmfdd	sp!, {d8}
	fconsts	s16, #32
	fmuls	s16, s0, s16
	fcmpes	s16, s15
	fmstat
	bmi	.L24
	fcvtds	d0, s16
	fconstd	d8, #112
	fsubd	d0, d8, d0
	bl	exp(PLT)
	fsubd	d0, d8, d0
	fldd	d17, .L25
	fldd	d16, .L25+8
	fcvtsd	s16, d0
	fcvtds	d8, s16
	fmacd	d16, d8, d17
	fcvtsd	s0, d16
.L14:
	fcvtds	d0, s0
	fldd	d16, .L25+16
	fldmfdd	sp!, {d8}
	fconsts	s15, #112
	fmuld	d0, d0, d16
	fcvtsd	s0, d0
	fcmps	s0, s15
	fmstat
	it	ge
	fcpysge	s0, s15
	pop	{r3, pc}
.L24:
	fnegs	s0, s16
	fcvtds	d0, s0
	bl	exp(PLT)
	fcvtds	d16, s16
	fcvtsd	s0, d0
	fconstd	d17, #240
	faddd	d16, d16, d17
	fcvtds	d0, s0
	faddd	d0, d16, d0
	fcvtsd	s0, d0
	b	.L14
.L26:
	.align	3
.L25:
	.word	-536870912
	.word	1071921748
	.word	1073741824
	.word	1071090518
	.word	652835029
	.word	1072695345
	.size	libaroma_motion_fluid, .-libaroma_motion_fluid
	.section	.text.libaroma_motion_decelerate,"ax",%progbits
	.align	2
	.global	libaroma_motion_decelerate
	.thumb
	.thumb_func
	.type	libaroma_motion_decelerate, %function
libaroma_motion_decelerate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	fcvtds	d0, s0
	fconstd	d17, #112
	fsubd	d16, d17, d0
	fcpyd	d0, d17
	fnmacd	d0, d16, d16
	fcvtsd	s0, d0
	bx	lr
	.size	libaroma_motion_decelerate, .-libaroma_motion_decelerate
	.section	.text.libaroma_motion_accelerate,"ax",%progbits
	.align	2
	.global	libaroma_motion_accelerate
	.thumb
	.thumb_func
	.type	libaroma_motion_accelerate, %function
libaroma_motion_accelerate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	fmuls	s0, s0, s0
	bx	lr
	.size	libaroma_motion_accelerate, .-libaroma_motion_accelerate
	.section	.text.libaroma_fling_down,"ax",%progbits
	.align	2
	.global	libaroma_fling_down
	.thumb
	.thumb_func
	.type	libaroma_fling_down, %function
libaroma_fling_down:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	movs	r3, #1
	sub	sp, sp, #12
	mov	r4, r0
	str	r1, [r0, #4]
	mov	r0, r3
	str	r3, [r4]
	mov	r1, sp
	bl	clock_gettime(PLT)
	movs	r3, #0
	cbnz	r0, .L30
	ldr	r2, [sp, #4]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp]
	mov	r3, #1000
	smull	r5, r1, r1, r2
	asrs	r2, r2, #31
	rsb	r2, r2, r1, asr #18
	mla	r3, r3, r0, r2
.L30:
	str	r3, [r4, #44]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
	.size	libaroma_fling_down, .-libaroma_fling_down
	.section	.text.libaroma_fling_move,"ax",%progbits
	.align	2
	.global	libaroma_fling_move
	.thumb
	.thumb_func
	.type	libaroma_fling_move, %function
libaroma_fling_move:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	mov	r4, r0
	mov	r6, r1
	movs	r0, #1
	mov	r1, sp
	bl	clock_gettime(PLT)
	movs	r7, #0
	cbnz	r0, .L34
	ldr	r3, [sp, #4]
	movw	r2, #56963
	movt	r2, 17179
	ldr	r1, [sp]
	mov	r7, #1000
	smull	r0, r2, r2, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r2, asr #18
	mla	r7, r7, r1, r3
.L34:
	ldr	r5, [r4]
	adds	r3, r5, #1
	cmp	r3, #10
	str	r3, [r4]
	ble	.L35
	add	r1, r4, #8
	movs	r2, #36
	adds	r0, r4, #4
	bl	memmove(PLT)
	add	r0, r4, #44
	add	r1, r4, #48
	movs	r2, #36
	bl	memmove(PLT)
	mov	r3, r5
	str	r5, [r4]
.L35:
	subs	r3, r3, #1
	add	r4, r4, r3, lsl #2
	str	r6, [r4, #4]
	str	r7, [r4, #44]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	libaroma_fling_move, .-libaroma_fling_move
	.section	.text.libaroma_fling_up,"ax",%progbits
	.align	2
	.global	libaroma_fling_up
	.thumb
	.thumb_func
	.type	libaroma_fling_up, %function
libaroma_fling_up:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	sub	sp, sp, #8
	mov	r4, r0
	cbnz	r1, .L39
	ldr	r3, [r0]
	ldr	r5, [r0, r3, lsl #2]
.L39:
	movs	r0, #1
	mov	r1, sp
	bl	clock_gettime(PLT)
	movs	r2, #0
	cbnz	r0, .L40
	ldr	r3, [sp, #4]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp]
	mov	r2, #1000
	smull	r6, r1, r1, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r1, asr #18
	mla	r2, r2, r0, r3
.L40:
	ldr	r1, [r4, #44]
	ldr	r0, [r4, #4]
	subs	r3, r2, r1
	cmp	r3, #0
	itt	le
	addle	r3, r1, #-1
	suble	r3, r2, r3
	cmp	r3, #300
	it	gt
	movgt	r0, #0
	bgt	.L42
	asrs	r3, r3, #4
	subs	r5, r0, r5
	fldd	d16, .L46
	fmsr	s15, r5	@ int
	fsitod	d0, s15
	fmsr	s15, r3	@ int
	fsitod	d17, s15
	fdivd	d0, d0, d17
	fmuld	d0, d0, d16
	bl	lround(PLT)
.L42:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L47:
	.align	3
.L46:
	.word	0
	.word	1081507840
	.size	libaroma_fling_up, .-libaroma_fling_up
	.section	.text.libaroma_ripple_thread,"ax",%progbits
	.align	2
	.global	libaroma_ripple_thread
	.thumb
	.thumb_func
	.type	libaroma_ripple_thread, %function
libaroma_ripple_thread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	fstmfdd	sp!, {d8, d9, d10}
	sub	sp, sp, #12
	mov	r8, r1
	movs	r0, #1
	mov	r1, sp
	mov	r10, #0
	bl	clock_gettime(PLT)
	cbnz	r0, .L49
	ldr	r3, [sp, #4]
	movw	r2, #56963
	movt	r2, 17179
	ldr	r1, [sp]
	mov	r10, #1000
	smull	r0, r2, r2, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r2, asr #18
	mla	r10, r10, r1, r3
.L49:
	fldd	d8, .L98
	movs	r4, #0
	fldd	d9, .L98+8
	mov	fp, r4
	mov	r9, r4
	mov	r5, r7
	add	r6, r7, #76
	fconsts	s20, #112
.L71:
	ldr	r2, [r5, #28]
	cmp	r2, #0
	beq	.L50
	add	r2, r2, r8
	cmp	r8, #0
	it	ne
	cmpne	r2, r10
	ite	le
	movle	r0, #1
	movgt	r0, #0
	bgt	.L51
	cbz	r2, .L52
	flds	s15, [r6, #-72]
	fcmpes	s15, s20
	fmstat
	bmi	.L94
.L52:
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L95
	cmp	r3, #2
	beq	.L55
	ldr	r1, [r7, #148]
	cmp	r1, r4
	beq	.L59
.L55:
	flds	s15, [r6, #-72]
	fcvtds	d16, s15
	fcmped	d16, d8
	fmstat
	blt	.L59
	ldr	r2, [r7, #148]
	cmp	r2, r4
	mov	r2, #0
	itt	eq
	moveq	r3, #0
	strbeq	r9, [r7, #1]
	str	r9, [r5, #28]
	str	r10, [r5, #76]
	str	r2, [r6, #-24]	@ float
.L59:
	cbz	r3, .L66
.L92:
	ldr	r1, [r7, #148]
.L72:
	cmp	r4, r1
	beq	.L67
.L66:
	ldr	r0, [r5, #76]
	cbnz	r0, .L96
.L67:
	adds	r4, r4, #1
	adds	r5, r5, #4
	cmp	r4, #6
	add	r6, r6, #4
	bne	.L71
	mov	r0, fp
	add	sp, sp, #12
	@ sp needed
	fldmfdd	sp!, {d8-d10}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L50:
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L59
	ldr	r1, [r7, #148]
	cmp	r1, r4
	it	eq
	strbeq	r2, [r7, #1]
	bne	.L72
	ldr	r0, [r5, #76]
	cmp	r0, #0
	beq	.L67
.L96:
	movw	r1, #375
	bl	libaroma_duration_state(PLT)
	flds	s15, [r6, #-24]
	fcmps	s15, s0
	fmstat
	fcmpes	s0, s20
	itt	ne
	orrne	fp, fp, #1
	fstsne	s0, [r6, #-24]
	fmstat
	blt	.L67
	str	r9, [r5, #76]
	str	r9, [r5, #28]
	ldr	r1, [r7, #148]
	cmp	r1, r4
	it	eq
	orreq	fp, fp, #8
	b	.L67
.L51:
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L97
	ldr	r1, [r7, #148]
	cmp	r1, r4
	beq	.L59
	str	r0, [r5, #28]
	movs	r0, #0
	str	r0, [r6, #-72]	@ float
	b	.L59
.L95:
	ldr	r1, [r7, #148]
	cmp	r1, r4
	bne	.L55
	add	r2, r7, r4, lsl #2
	flds	s15, [r2, #4]
	fcvtds	d16, s15
	fcmped	d16, d9
	fmstat
	blt	.L72
	ldrb	r2, [r7]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L72
	strb	r3, [r7]
	orr	fp, fp, #4
	b	.L72
.L97:
	ldr	r3, [r7, #148]
	movs	r2, #0
	str	r0, [r5, #28]
	str	r2, [r6, #-72]	@ float
	cmp	r4, r3
	it	eq
	strbeq	r0, [r7, #1]
	beq	.L66
	b	.L92
.L94:
	mov	r0, r2
	mov	r1, #1600
	bl	libaroma_duration_state(PLT)
	flds	s15, [r6, #-72]
	fcmps	s15, s0
	fmstat
	itt	ne
	orrne	fp, fp, #1
	fstsne	s0, [r6, #-72]
	b	.L52
.L99:
	.align	3
.L98:
	.word	-343597384
	.word	1069463633
	.word	1717986918
	.word	1072064102
	.size	libaroma_ripple_thread, .-libaroma_ripple_thread
	.section	.text.libaroma_ripple_down,"ax",%progbits
	.align	2
	.global	libaroma_ripple_down
	.thumb
	.thumb_func
	.type	libaroma_ripple_down, %function
libaroma_ripple_down:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r3, r1
	ldr	r5, [r0, #148]
	sub	sp, sp, #8
	mov	r4, r0
	adds	r5, r5, #1
	cmp	r5, #5
	itett	gt
	movgt	r1, #0
	strle	r5, [r0, #148]
	movgt	r5, r1
	strgt	r1, [r0, #148]
	add	r5, r0, r5, lsl #2
	mov	r1, sp
	movs	r0, #1
	str	r3, [r5, #100]
	str	r2, [r5, #124]
	bl	clock_gettime(PLT)
	movs	r3, #0
	cbnz	r0, .L103
	ldr	r2, [sp, #4]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp]
	mov	r3, #1000
	smull	r6, r1, r1, r2
	asrs	r2, r2, #31
	rsb	r2, r2, r1, asr #18
	mla	r3, r3, r0, r2
.L103:
	str	r3, [r5, #28]
	movs	r2, #0
	ldr	r3, [r4, #148]
	movs	r1, #0
	movs	r0, #1
	add	r3, r4, r3, lsl #2
	str	r1, [r3, #4]	@ float
	str	r1, [r3, #52]	@ float
	str	r2, [r3, #76]
	strb	r2, [r4]
	strb	r0, [r4, #1]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	libaroma_ripple_down, .-libaroma_ripple_down
	.section	.text.libaroma_ripple_move,"ax",%progbits
	.align	2
	.global	libaroma_ripple_move
	.thumb
	.thumb_func
	.type	libaroma_ripple_move, %function
libaroma_ripple_move:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #148]
	add	r0, r0, r3, lsl #2
	str	r1, [r0, #100]
	str	r2, [r0, #124]
	bx	lr
	.size	libaroma_ripple_move, .-libaroma_ripple_move
	.section	.text.libaroma_ripple_up,"ax",%progbits
	.align	2
	.global	libaroma_ripple_up
	.thumb
	.thumb_func
	.type	libaroma_ripple_up, %function
libaroma_ripple_up:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldrb	r0, [r0, #1]	@ zero_extendqisi2
	sub	sp, sp, #12
	mov	r6, r0
	cbz	r0, .L108
	ldrb	r6, [r4]	@ zero_extendqisi2
	movs	r3, #2
	mov	r5, r1
	strb	r3, [r4, #1]
	cmp	r6, #0
	ite	ne
	movne	r6, #6
	moveq	r6, r3
	cmp	r1, #0
	ble	.L108
	movs	r0, #1
	mov	r1, sp
	bl	clock_gettime(PLT)
	movs	r3, #0
	cbnz	r0, .L110
	ldr	r2, [sp, #4]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp]
	mov	r3, #1000
	smull	r7, r1, r1, r2
	asrs	r2, r2, #31
	rsb	r2, r2, r1, asr #18
	mla	r3, r3, r0, r2
.L110:
	ldr	r2, [r4, #148]
	add	r4, r4, r2, lsl #2
	ldr	r2, [r4, #28]
	add	r2, r2, r5
	cmp	r2, r3
	itt	gt
	subgt	r5, r3, r5
	strgt	r5, [r4, #28]
.L108:
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	libaroma_ripple_up, .-libaroma_ripple_up
	.section	.text.libaroma_ripple_cancel,"ax",%progbits
	.align	2
	.global	libaroma_ripple_cancel
	.thumb
	.thumb_func
	.type	libaroma_ripple_cancel, %function
libaroma_ripple_cancel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r3, #1
	itt	eq
	moveq	r3, #2
	strbeq	r3, [r0, #1]
	bx	lr
	.size	libaroma_ripple_cancel, .-libaroma_ripple_cancel
	.section	.text.libaroma_ripple_loop,"ax",%progbits
	.align	2
	.global	libaroma_ripple_loop
	.thumb
	.thumb_func
	.type	libaroma_ripple_loop, %function
libaroma_ripple_loop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	it	ne
	cmpne	r1, #0
	push	{r4, r5}
	itte	eq
	moveq	r0, #0
	moveq	r4, #1
	movne	r4, #0
	beq	.L118
	ldr	r3, [r1]
	cmp	r3, #5
	it	hi
	movhi	r0, r4
	bhi	.L118
	ldr	r5, [r0, #148]
	movs	r0, #1
	movw	r4, #43691
	movt	r4, 10922
	add	r5, r5, r0
	add	r3, r3, r5
	smull	r5, r4, r4, r3
	sub	r4, r4, r3, asr #31
	add	r4, r4, r4, lsl #1
	sub	r3, r3, r4, lsl #1
	str	r3, [r2]
	ldr	r3, [r1]
	add	r3, r3, r0
	str	r3, [r1]
.L118:
	pop	{r4, r5}
	bx	lr
	.size	libaroma_ripple_loop, .-libaroma_ripple_loop
	.global	__aeabi_idiv
	.section	.text.libaroma_ripple_calculation,"ax",%progbits
	.align	2
	.global	libaroma_ripple_calculation
	.thumb
	.thumb_func
	.type	libaroma_ripple_calculation, %function
libaroma_ripple_calculation:
	@ args = 20, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	fstmfdd	sp!, {d8, d9}
	sub	sp, sp, #16
	ldr	r4, [sp, #72]
	cmp	r4, #5
	bhi	.L125
	add	r4, r0, r4, lsl #2
	flds	s0, [r4, #4]
	fcmpezs	s0
	fmstat
	ble	.L125
	flds	s14, [r4, #52]
	fconsts	s18, #112
	fcmpes	s14, s18
	fmstat
	bmi	.L160
.L125:
	movs	r0, #0
	add	sp, sp, #16
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, pc}
.L160:
	fcmpezs	s14
	fconsts	s16, #30
	fmstat
	fmuls	s16, s0, s16
	ble	.L140
	fcvtds	d17, s0
	fconstd	d18, #112
	fcvtds	d16, s14
	fldd	d19, .L165
	fsubd	d20, d18, d17
	fcmpd	d16, d19
	fmacd	d17, d20, d16
	fmstat
	fcvtsd	s0, d17
	bmi	.L140
	fldd	d19, .L165+8
	fconstd	d17, #116
	faddd	d16, d16, d19
	fnmacd	d18, d16, d17
	fcvtsd	s18, d18
.L140:
	fconsts	s14, #112
	fcmpes	s0, s14
	fmstat
	it	pl
	fcpyspl	s17, s14
	bmi	.L161
.L130:
	fconsts	s15, #112
	fcmpes	s16, s15
	fmstat
	it	pl
	fcpyspl	s16, s15
	bmi	.L162
.L132:
	fconsts	s15, #112
	fcmpes	s18, s15
	fmstat
	it	pl
	fcpyspl	s0, s15
	bmi	.L163
.L134:
	ldr	r5, [sp, #56]
	ldrb	r0, [r5]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L145
	fmsr	s13, r0	@ int
	fsitos	s14, s13
.L136:
	fmuls	s15, s0, s16
	fmuls	s15, s15, s14
	ftouizs	s15, s15
	fmrs	r6, s15	@ int
	uxtb	r6, r6
	lsrs	r5, r6, #1
	strb	r5, [r3]
	cmp	r5, #0
	beq	.L125
	asr	r8, r2, #1
	asrs	r7, r1, #1
	fmsr	s14, r8	@ int
	fsitod	d17, s14
	fmsr	s15, r7	@ int
	fsitod	d16, s15
	fmuld	d17, d17, d17
	fmacd	d17, d16, d16
	fsqrtd	d0, d17
	fcmpd	d0, d0
	fmstat
	bne	.L164
.L137:
	faddd	d16, d0, d0
	ftosizd	s13, d16
	fsitos	s15, s13
	fmrs	r3, s13	@ int
	adds	r1, r3, #7
	bics	r3, r3, r3, asr #32
	it	cs
	movcs	r3, r1
	fmuls	s15, s15, s17
	asrs	r1, r3, #3
	ftosizs	s15, s15
	fmrs	r5, s15	@ int
	cmp	r5, r1
	bge	.L138
	mul	r0, r5, r6
	bl	__aeabi_idiv(PLT)
	uxtb	r6, r0
.L138:
	ldr	r3, [sp, #60]
	movs	r0, #1
	ldr	r2, [r4, #100]
	ldr	r1, [r4, #124]
	ldr	r4, [r3]
	ldr	lr, [sp, #64]
	subs	r4, r2, r4
	ldr	r3, [lr]
	subs	r7, r7, r4
	ldr	lr, [sp, #56]
	fmsr	s15, r7	@ int
	subs	r3, r1, r3
	rsb	r2, r3, r8
	fsitos	s15, s15
	strb	r6, [lr]
	fmsr	s13, r2	@ int
	fsitos	s14, s13
	fmuls	s15, s17, s15
	fmuls	s17, s17, s14
	ftosizs	s15, s15
	ftosizs	s17, s17
	fmrs	r2, s15	@ int
	add	r4, r4, r2
	ldr	r2, [sp, #60]
	fmrs	lr, s17	@ int
	str	r4, [r2]
	add	r3, r3, lr
	ldr	r2, [sp, #68]
	ldr	lr, [sp, #64]
	str	r3, [lr]
	str	r5, [r2]
	add	sp, sp, #16
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, pc}
.L145:
	flds	s14, .L165+16
	b	.L136
.L161:
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	bl	libaroma_motion_decelerate(PLT)
	ldr	r1, [sp, #12]
	fcpys	s17, s0
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	b	.L130
.L163:
	fcpys	s0, s18
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	bl	libaroma_motion_decelerate(PLT)
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	b	.L134
.L162:
	fcpys	s0, s16
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	bl	libaroma_motion_accelerate(PLT)
	ldr	r1, [sp, #12]
	fcpys	s16, s0
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	b	.L132
.L164:
	fcpyd	d0, d17
	bl	sqrt(PLT)
	b	.L137
.L166:
	.align	3
.L165:
	.word	-1717986918
	.word	1070176665
	.word	-1717986918
	.word	-1077306983
	.word	1132396544
	.size	libaroma_ripple_calculation, .-libaroma_ripple_calculation
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
