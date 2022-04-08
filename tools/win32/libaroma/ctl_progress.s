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
	.file	"ctl_progress.c"
	.section	.text._libaroma_ctl_progress_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_progress_destroy
	.thumb
	.thumb_func
	.type	_libaroma_ctl_progress_destroy, %function
_libaroma_ctl_progress_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L5
	ldr	r3, [r0, #72]
.LPIC0:
	add	r2, pc
	cmp	r3, r2
	beq	.L4
	bx	lr
.L4:
	ldr	r0, [r0, #4]
	b	free(PLT)
.L6:
	.align	2
.L5:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_ctl_progress_destroy, .-_libaroma_ctl_progress_destroy
	.section	.text._libaroma_ctl_progress_msg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_progress_msg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_progress_msg, %function
_libaroma_ctl_progress_msg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L13
	ldr	r3, [r0, #72]
.LPIC1:
	add	r2, pc
	cmp	r3, r2
	beq	.L12
	movs	r0, #0
	bx	lr
.L12:
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldr	r2, [r0, #4]
	movs	r0, #1
	adds	r3, r3, #127
	uxtb	r3, r3
	cmp	r3, #3
	bhi	.L8
	lsl	r3, r0, r3
	tst	r3, #11
	beq	.L8
	movs	r3, #0
	str	r3, [r2, #36]	@ float
	bx	lr
.L8:
	bx	lr
.L14:
	.align	2
.L13:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	_libaroma_ctl_progress_msg, .-_libaroma_ctl_progress_msg
	.global	__aeabi_idiv
	.section	.text._libaroma_ctl_progress_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_progress_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_progress_draw, %function
_libaroma_ctl_progress_draw:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L40+44
	ldr	r3, [r0, #72]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
.LPIC2:
	add	r2, pc
	fstmfdd	sp!, {d8, d9}
	cmp	r3, r2
	sub	sp, sp, #44
	beq	.L36
.L15:
	add	sp, sp, #44
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L36:
	ldr	r6, [r0, #4]
	mov	r5, r1
	bl	libaroma_control_erasebg(PLT)
	ldrb	r3, [r6]	@ zero_extendqisi2
	and	r2, r3, #4
	and	r9, r2, #255
	cmp	r2, #0
	beq	.L17
	ldmia	r5, {r2, r7}
	fldd	d16, .L40
	asrs	r7, r7, #1
	asr	r8, r2, #1
	cmp	r8, r7
	mov	r2, r8
	it	ge
	movge	r2, r7
	ands	r3, r3, #3
	fmsr	s16, r2	@ int
	fsitos	s16, s16
	fcvtds	d2, s16
	fmuld	d2, d2, d16
	fcvtsd	s17, d2
	beq	.L37
	flds	s14, [r6, #4]	@ int
	cmp	r3, #2
	flds	s6, [r6, #32]
	fldd	d16, .L40+8
	fconsts	s15, #48
	fsitod	d17, s14
	fadds	s6, s6, s15
	flds	s15, [r6, #36]
	flds	s18, .L40+24
	fmuld	d17, d17, d16
	fcvtds	d16, s6
	fsts	s15, [r6, #40]
	fsubs	s18, s15, s18
	fmuld	d16, d17, d16
	fcvtsd	s15, d16
	fsts	s15, [r6, #16]
	ittt	eq
	fldseq	s15, .L40+28
	fsubseq	s18, s15, s18
	fsubseq	s6, s15, s6
.L19:
	mov	r0, r4
	movs	r1, #0
	fadds	s19, s6, s18
	bl	libaroma_colorget(PLT)
	fmsr	s15, r8	@ int
	movs	r2, #255
	fmsr	s14, r7	@ int
	movs	r3, #0
	fsitos	s0, s15
	fsitos	s1, s14
	ldrh	r1, [r0]
	mov	r0, r5
	fcpys	s2, s16
	fcpys	s6, s19
	fcpys	s4, s17
	fcpys	s5, s18
	fcpys	s3, s16
	fconsts	s7, #96
	add	sp, sp, #44
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	libaroma_draw_arc(PLT)
.L37:
	flds	s15, [r6, #16]
	fldd	d16, .L40+16
	flds	s6, [r6, #4]	@ int
	flds	s18, [r6, #40]
	fcvtds	d17, s15
	flds	s15, .L40+24
	fsitod	d3, s6
	fmuld	d16, d17, d16
	fsubs	s18, s18, s15
	fdivd	d3, d16, d3
	fcvtsd	s6, d3
	b	.L19
.L17:
	movs	r0, #4
	mov	r10, #204
	bl	libaroma_dp(PLT)
	mov	r8, r0
	movs	r0, #2
	bl	libaroma_dp(PLT)
	ldr	r2, [r4, #28]
	mov	r7, r0
	ldr	r3, [r4, #24]
	mov	r1, r9
	mov	r0, r4
	sub	r9, r2, r7, lsl #1
	sub	fp, r3, r8, lsl #1
	bl	libaroma_colorget(PLT)
	str	r9, [sp]
	mov	r3, fp
	ldrh	lr, [r0, #14]
	mov	r1, r8
	mov	r2, r7
	str	r10, [sp, #8]
	mov	r0, r5
	str	lr, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	ldrb	r3, [r6]	@ zero_extendqisi2
	ands	r1, r3, #3
	beq	.L38
	fconsts	s2, #112
	lsl	r10, fp, #1
	fcpys	s3, s2
	flds	s1, .L40+32
	flds	s4, [r6, #32]
	flds	s0, .L40+36
	bl	libaroma_cubic_bezier(PLT)
	fcpys	s16, s0
	flds	s0, .L40+32
	flds	s2, .L40+40
	fconsts	s3, #112
	flds	s4, [r6, #32]
	fcpys	s1, s0
	bl	libaroma_cubic_bezier(PLT)
	ldrb	r3, [r6]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	beq	.L39
	fcvtds	d18, s0
	fcvtds	d19, s16
	fconstd	d17, #112
	fmsr	s15, r10	@ int
	fsitod	d16, s15
	fsubd	d18, d17, d18
	fsubd	d17, d17, d19
	fmuld	d18, d18, d16
	fmuld	d16, d17, d16
	ftosizd	s14, d18
	ftosizd	s15, d16
	fmrs	r3, s14	@ int
	fmrs	r10, s15	@ int
.L22:
	cmp	fp, r3
	itet	lt
	rsblt	r2, fp, r3
	movge	r2, #0
	movlt	r3, fp
	cmp	fp, r10
	bge	.L24
	cmp	r2, fp
	rsb	ip, fp, r10
	it	ge
	movge	r2, fp
	mov	r10, fp
	cmp	r3, fp
	str	r2, [sp, #28]
	it	ge
	movge	r3, fp
	movs	r2, #0
	str	r3, [sp, #32]
	str	r2, [sp, #36]
.L25:
	ldr	r3, [sp, #28]
	cmp	fp, ip
	it	gt
	cmpgt	r3, #0
	ble	.L26
	rsb	r3, ip, r3
	cmp	r3, #0
	ble	.L26
	mov	r0, r4
	movs	r1, #0
	str	r3, [sp, #20]
	str	ip, [sp, #24]
	bl	libaroma_colorget(PLT)
	ldr	ip, [sp, #24]
	mov	lr, #204
	str	r9, [sp]
	mov	r2, r7
	ldrh	r4, [r0]
	mov	r0, r5
	add	r1, r8, ip
	ldr	r3, [sp, #20]
	str	lr, [sp, #8]
	str	r4, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	ldr	ip, [sp, #24]
.L26:
	ldr	r2, [sp, #36]
	ldr	r3, [r6, #4]
	cbz	r2, .L27
	ldr	r2, [sp, #32]
	mov	r1, fp
	rsb	r0, r10, r2
	mul	r0, r3, r0
	bl	__aeabi_idiv(PLT)
	fmsr	s14, r0	@ int
	mov	r3, r10
	fsitos	s15, s14
	fsts	s15, [r6, #16]
.L28:
	str	r3, [r6, #20]
	b	.L15
.L38:
	fmsr	s15, fp	@ int
	mov	r0, r4
	fsitos	s13, s15
	flds	s14, [r6, #16]
	flds	s15, [r6, #4]	@ int
	ldr	r3, [r6, #20]
	fmuls	s14, s13, s14
	fsitos	s15, s15
	add	r8, r8, r3
	fdivs	s15, s14, s15
	ftosizs	s15, s15
	fsts	s15, [sp, #20]	@ int
	bl	libaroma_colorget(PLT)
	str	r9, [sp]
	mov	r1, r8
	ldrh	r4, [r0]
	mov	r2, r7
	ldr	r3, [sp, #20]
	mov	r0, r5
	str	r10, [sp, #8]
	str	r4, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	b	.L15
.L27:
	ldr	r2, [sp, #28]
	mov	r1, fp
	str	ip, [sp, #24]
	rsb	r0, ip, r2
	mul	r0, r3, r0
	bl	__aeabi_idiv(PLT)
	fmsr	s14, r0	@ int
	fsitos	s15, s14
	ldr	ip, [sp, #24]
	fsts	s15, [r6, #16]
	mov	r3, ip
	b	.L28
.L24:
	cmp	r3, fp
	it	ge
	movge	r3, fp
	cmp	r2, fp
	it	ge
	movge	r2, fp
	cmp	r3, #0
	it	gt
	cmpgt	fp, r10
	it	le
	movle	ip, #0
	str	r3, [sp, #32]
	str	r2, [sp, #28]
	ite	gt
	movgt	ip, #1
	strle	ip, [sp, #36]
	ble	.L25
	rsb	r3, r10, r3
	cmp	r3, #0
	ble	.L31
	movs	r1, #0
	mov	r0, r4
	str	r3, [sp, #20]
	bl	libaroma_colorget(PLT)
	str	r9, [sp]
	movs	r2, #204
	ldrh	lr, [r0]
	add	r1, r8, r10
	ldr	r3, [sp, #20]
	mov	r0, r5
	str	r2, [sp, #8]
	mov	r2, r7
	str	lr, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	movs	r3, #1
	mov	ip, #0
	str	r3, [sp, #36]
	b	.L25
.L39:
	fmsr	s14, r10	@ int
	fsitos	s15, s14
	fmuls	s0, s0, s15
	fmuls	s15, s16, s15
	ftosizs	s0, s0
	ftosizs	s15, s15
	fmrs	r10, s0	@ int
	fmrs	r3, s15	@ int
	b	.L22
.L31:
	movs	r2, #1
	mov	ip, #0
	str	r2, [sp, #36]
	b	.L25
.L41:
	.align	3
.L40:
	.word	1431655765
	.word	1069897045
	.word	381774871
	.word	1063698796
	.word	0
	.word	1081507840
	.word	1119092736
	.word	1135869952
	.word	0
	.word	1054280253
	.word	1058306785
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_ctl_progress_draw, .-_libaroma_ctl_progress_draw
	.section	.text._libaroma_ctl_progress_thread,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_progress_thread
	.thumb
	.thumb_func
	.type	_libaroma_ctl_progress_thread, %function
_libaroma_ctl_progress_thread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, [r0, #4]
	fstmfdd	sp!, {d8, d9}
	sub	sp, sp, #8
	ldrb	r3, [r4]	@ zero_extendqisi2
	lsls	r2, r3, #30
	beq	.L43
	and	r3, r3, #4
	and	r5, r3, #255
	cmp	r3, #0
	beq	.L44
	movs	r0, #1
	mov	r1, sp
	bl	clock_gettime(PLT)
	movs	r3, #0
	cbnz	r0, .L45
	ldr	r2, [sp, #4]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp]
	mov	r3, #1000
	smull	r5, r1, r1, r2
	asrs	r2, r2, #31
	rsb	r2, r2, r1, asr #18
	mla	r3, r3, r0, r2
.L45:
	ldr	r2, [r4, #24]
	str	r3, [r4, #24]
	subs	r3, r3, r2
	cmp	r3, #600
	bgt	.L46
	fmsr	s12, r3	@ int
	fsitod	d8, s12
	fldd	d16, .L73
	flds	s18, [r4, #36]
	fmuld	d8, d8, d16
.L47:
	ldr	r2, [r4, #28]
	fldd	d17, .L73+8
	fconstd	d16, #112
	add	r3, r3, r2
	ldr	r5, [r4, #20]
	cmp	r3, #600
	str	r3, [r4, #28]
	it	gt
	subgt	r3, r3, #600
	fldd	d0, .L73+16
	itt	gt
	clzgt	r5, r5
	strgt	r3, [r4, #28]
	fmsr	s13, r3	@ int
	it	gt
	lsrgt	r5, r5, #5
	fsitod	d18, s13
	it	gt
	strgt	r5, [r4, #20]
	fmacd	d16, d18, d17
	fmuld	d0, d16, d0
	bl	cos(PLT)
	fcvtsd	s0, d0
	fconstd	d16, #96
	fcvtds	d17, s0
	fmacd	d16, d17, d16
	fcvtsd	s15, d16
	cmp	r5, #0
	beq	.L50
	flds	s14, .L73+32
	fmuls	s14, s15, s14
.L51:
	fcvtds	d16, s18
	flds	s15, .L73+36
	fsts	s14, [r4, #32]
	faddd	d8, d16, d8
	fcvtsd	s16, d8
	fcmpes	s16, s15
	fmstat
	itete	gt
	fsubsgt	s16, s16, s15
	movle	r5, #1
	movgt	r5, #1
	fstsle	s16, [r4, #36]
	mov	r0, r5
	it	gt
	fstsgt	s16, [r4, #36]
	add	sp, sp, #8
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, pc}
.L43:
	flds	s15, [r4, #32]
	fconsts	s16, #112
	fcmpes	s15, s16
	fmstat
	bmi	.L57
.L62:
	movs	r5, #0
.L53:
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, pc}
.L44:
	ldr	r0, [r4, #24]
	mov	r1, #2000
	bl	libaroma_duration_state(PLT)
	flds	s15, [r4, #36]
	fsts	s0, [r4, #32]
	fcmps	s0, s15
	fmstat
	fconsts	s15, #112
	it	ne
	movne	r5, #1
	fcmpes	s0, s15
	it	ne
	fstsne	s0, [r4, #36]
	fmstat
	blt	.L53
	movs	r3, #0
	movs	r0, #1
	str	r3, [r4, #32]	@ float
	mov	r1, sp
	bl	clock_gettime(PLT)
	movs	r3, #0
	cbnz	r0, .L56
	ldr	r2, [sp, #4]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp]
	mov	r3, #1000
	smull	r6, r1, r1, r2
	asrs	r2, r2, #31
	rsb	r2, r2, r1, asr #18
	mla	r3, r3, r0, r2
.L56:
	mov	r0, r5
	str	r3, [r4, #24]
	add	sp, sp, #8
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, pc}
.L46:
	movs	r2, #0
	movs	r3, #0
	fldd	d8, .L73+24
	str	r2, [r4, #36]	@ float
	fmsr	s18, r2
	b	.L47
.L57:
	flds	s17, .L73+40
	mov	r1, #500
	ldr	r0, [r4, #24]
	bl	libaroma_duration_state(PLT)
	flds	s2, .L73+44
	fcpys	s4, s0
	fsts	s0, [r4, #32]
	fcpys	s1, s17
	flds	s0, .L73+48
	fcpys	s3, s16
	bl	libaroma_cubic_bezier(PLT)
	ldr	r2, [r4, #12]
	ldr	r3, [r4, #8]
	flds	s14, [r4, #40]
	subs	r3, r3, r2
	fmsr	s12, r2	@ int
	fsitos	s15, s12
	fmsr	s12, r3	@ int
	fsitos	s13, s12
	fcmpes	s14, s17
	fmstat
	fmacs	s15, s0, s13
	fsts	s15, [r4, #16]
	ble	.L59
	fsubs	s16, s16, s0
	fmuls	s14, s16, s14
	fcmpes	s14, s17
	fmstat
	it	mi
	fcpysmi	s14, s17
	fsts	s14, [r4, #40]
.L59:
	flds	s15, [r4, #32]
	flds	s14, [r4, #36]
	fcmps	s14, s15
	fmstat
	beq	.L62
	ldr	r3, [r4, #20]
	cmp	r3, #0
	ble	.L64
	fconsts	s14, #112
	fmsr	s13, r3	@ int
	fsubs	s0, s14, s0
	fsitos	s14, s13
	fmuls	s0, s0, s14
	ftosizs	s0, s0
	fmrs	r3, s0	@ int
	cmp	r3, #0
	it	lt
	movlt	r3, #0
	str	r3, [r4, #20]
.L64:
	movs	r5, #1
	fsts	s15, [r4, #36]
	b	.L53
.L50:
	fconsts	s14, #112
	fsubs	s15, s14, s15
	flds	s12, .L73+32
	flds	s13, [r4, #32]
	fmuls	s15, s15, s12
	fadds	s18, s18, s13
	fcpys	s14, s15
	fsubs	s18, s18, s15
	fsts	s18, [r4, #36]
	b	.L51
.L74:
	.align	3
.L73:
	.word	-1717986918
	.word	1070176665
	.word	-1259857073
	.word	1062948481
	.word	1413754602
	.word	1074340347
	.word	0
	.word	0
	.word	1132331008
	.word	1135869952
	.word	0
	.word	1046938544
	.word	1053699762
	.size	_libaroma_ctl_progress_thread, .-_libaroma_ctl_progress_thread
	.section	.text._libaroma_ctl_progress_update,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_progress_update
	.thumb
	.thumb_func
	.type	_libaroma_ctl_progress_update, %function
_libaroma_ctl_progress_update:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r1
	ldrb	r3, [r1]	@ zero_extendqisi2
	sub	sp, sp, #12
	lsls	r2, r3, #30
	beq	.L86
	lsls	r3, r3, #29
	bpl	.L78
	movs	r3, #0
	str	r3, [r4, #32]	@ float
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L86:
	flds	s15, [r1, #16]
	ftosizs	s15, s15
	fsts	s15, [r1, #12]	@ int
.L78:
	movs	r0, #1
	mov	r1, sp
	bl	clock_gettime(PLT)
	movs	r3, #0
	cbnz	r0, .L77
	ldr	r2, [sp, #4]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp]
	mov	r3, #1000
	smull	r5, r1, r1, r2
	asrs	r2, r2, #31
	rsb	r2, r2, r1, asr #18
	mla	r3, r3, r0, r2
.L77:
	str	r3, [r4, #24]
	movs	r3, #0
	str	r3, [r4, #32]	@ float
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
	.size	_libaroma_ctl_progress_update, .-_libaroma_ctl_progress_update
	.section	.text.libaroma_ctl_progress,"ax",%progbits
	.align	2
	.global	libaroma_ctl_progress
	.thumb
	.thumb_func
	.type	libaroma_ctl_progress, %function
libaroma_ctl_progress:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0
	sub	sp, sp, #24
	mov	r7, r1
	movs	r0, #44
	movs	r1, #1
	mov	r9, r2
	mov	r8, r3
	ldrb	r10, [sp, #64]	@ zero_extendqisi2
	ldr	r5, [sp, #72]
	bl	calloc(PLT)
	mov	r4, r0
	cbz	r0, .L88
	fmsr	s14, r5	@ int
	mov	r3, #1065353216
	fsitos	s15, s14
	movs	r0, #24
	ldr	r2, [sp, #68]
	str	r3, [r4, #32]	@ float
	strb	r10, [r4]
	str	r2, [r4, #4]
	fsts	s15, [r4, #16]
	str	r5, [r4, #8]
	str	r5, [r4, #12]
	bl	libaroma_dp(PLT)
	ldr	r5, .L93
	mov	r10, r0
	movs	r0, #8
	bl	libaroma_dp(PLT)
	str	r0, [sp, #8]
.LPIC3:
	add	r5, pc
	ldr	r0, [sp, #60]
	mov	r1, r9
	str	r5, [sp, #16]
	mov	r2, r8
	str	r10, [sp, #4]
	str	r0, [sp]
	mov	r0, r7
	ldr	r3, [sp, #56]
	str	r4, [sp, #12]
	str	r6, [sp, #20]
	bl	libaroma_control_new(PLT)
	mov	r5, r0
	cbz	r5, .L92
.L88:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L92:
	mov	r0, r4
	bl	free(PLT)
	mov	r0, r5
	b	.L88
.L94:
	.align	2
.L93:
	.word	.LANCHOR0-(.LPIC3+4)
	.size	libaroma_ctl_progress, .-libaroma_ctl_progress
	.section	.text.libaroma_ctl_progress_type,"ax",%progbits
	.align	2
	.global	libaroma_ctl_progress_type
	.thumb
	.thumb_func
	.type	libaroma_ctl_progress_type, %function
libaroma_ctl_progress_type:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L100
	ldr	r2, [r0, #72]
.LPIC4:
	add	r4, pc
	cmp	r2, r4
	beq	.L99
	movs	r0, #0
	pop	{r4, pc}
.L99:
	ldr	r3, [r0, #4]
	strb	r1, [r3]
	mov	r1, r3
	bl	_libaroma_ctl_progress_update(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L101:
	.align	2
.L100:
	.word	.LANCHOR0-(.LPIC4+4)
	.size	libaroma_ctl_progress_type, .-libaroma_ctl_progress_type
	.section	.text.libaroma_ctl_progress_value,"ax",%progbits
	.align	2
	.global	libaroma_ctl_progress_value
	.thumb
	.thumb_func
	.type	libaroma_ctl_progress_value, %function
libaroma_ctl_progress_value:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L107
	ldr	r2, [r0, #72]
.LPIC5:
	add	r4, pc
	cmp	r2, r4
	beq	.L106
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L106:
	ldr	r3, [r0, #4]
	mov	r5, r1
	ldr	r2, [r3, #4]
	mov	r1, r3
	cmp	r2, r5
	it	ge
	movge	r2, r5
	str	r2, [r3, #8]
	bl	_libaroma_ctl_progress_update(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L108:
	.align	2
.L107:
	.word	.LANCHOR0-(.LPIC5+4)
	.size	libaroma_ctl_progress_value, .-libaroma_ctl_progress_value
	.section	.text.libaroma_ctl_progress_max,"ax",%progbits
	.align	2
	.global	libaroma_ctl_progress_max
	.thumb
	.thumb_func
	.type	libaroma_ctl_progress_max, %function
libaroma_ctl_progress_max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L115
	push	{r3, lr}
	ldr	r3, [r0, #72]
.LPIC6:
	add	r2, pc
	cmp	r3, r2
	beq	.L114
	movs	r0, #0
	pop	{r3, pc}
.L114:
	ldr	r3, [r0, #4]
	ldr	r2, [r3, #8]
	str	r1, [r3, #4]
	cmp	r1, r2
	it	lt
	strlt	r1, [r3, #8]
	mov	r1, r3
	bl	_libaroma_ctl_progress_update(PLT)
	movs	r0, #1
	pop	{r3, pc}
.L116:
	.align	2
.L115:
	.word	.LANCHOR0-(.LPIC6+4)
	.size	libaroma_ctl_progress_max, .-libaroma_ctl_progress_max
	.section	.data.rel._libaroma_ctl_progress_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_ctl_progress_handler, %object
	.size	_libaroma_ctl_progress_handler, 20
_libaroma_ctl_progress_handler:
	.word	_libaroma_ctl_progress_msg
	.word	_libaroma_ctl_progress_draw
	.word	0
	.word	_libaroma_ctl_progress_destroy
	.word	_libaroma_ctl_progress_thread
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
