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
	.file	"path.c"
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text.libaroma_path_draw._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_path_draw._omp_fn.0, %function
libaroma_path_draw._omp_fn.0:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #52
	bl	omp_get_num_threads(PLT)
	mov	r6, r0
	bl	omp_get_thread_num(PLT)
	ldr	r3, [r7, #16]
	mov	r9, r0
	ldr	r5, [r7, #12]
	mov	r1, r6
	adds	r3, r3, #1
	rsb	r8, r5, r3
	mov	r0, r8
	bl	__aeabi_idiv(PLT)
	mov	r1, r6
	mov	r4, r0
	mov	r0, r8
	bl	__aeabi_idivmod(PLT)
	cmp	r9, r1
	itt	lt
	addlt	r4, r4, #1
	movlt	r1, #0
	mla	r1, r9, r4, r1
	add	r4, r4, r1
	cmp	r1, r4
	bge	.L1
	fldd	d8, .L124
	mov	fp, r7
	fconsts	s18, #112
	add	r1, r1, r5
	add	r4, r4, r5
	str	r1, [sp, #40]
	str	r4, [sp, #44]
.L8:
	ldrb	r3, [fp, #35]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L119
	ldr	r3, [fp]
	ldr	r2, [fp, #20]
	ldr	r4, [sp, #40]
	ldr	r1, [r3, #8]
	ldr	r3, [r3, #20]
	mla	r2, r1, r4, r2
	add	r3, r3, r2
	str	r3, [sp, #36]
.L85:
	ldr	r5, [fp, #4]
	ldr	r4, [r5, #4]
	lsls	r0, r4, #2
	bl	malloc(PLT)
	flds	s10, [fp, #28]
	mov	r10, r0
	fcmpezs	s10
	fmstat
	ble	.L20
	flds	s9, [sp, #40]	@ int
	mov	r8, fp
	flds	s15, .L124+8
	movs	r3, #0
	fconstd	d10, #112
	str	r3, [sp, #20]
	fsitos	s19, s9
	str	r0, [sp, #24]
.L22:
	flds	s14, [r8, #8]
	cmp	r4, #0
	fcpys	s9, s19
	add	r0, r4, #-1
	fmacs	s9, s15, s14
	fcpys	s14, s9
	ble	.L17
	ldr	r5, [r5]
	movs	r2, #0
	mov	r9, r2
	ldr	r6, [sp, #24]
	add	r3, r5, #44
	b	.L80
.L125:
	.align	3
.L124:
	.word	0
	.word	1081073664
	.word	0
.L77:
	add	r0, r5, r0, lsl #3
	flds	s13, [r0, #4]
	fcmpes	s14, s13
	fmstat
	bhi	.L84
.L83:
	fsubs	s13, s13, s15
	add	r1, r6, r9, lsl #2
	fsubs	s15, s14, s15
	add	r9, r9, #1
	flds	s9, [r8, #20]	@ int
	flds	s12, [r3, #-44]
	flds	s11, [r0]
	fdivs	s15, s15, s13
	fsitos	s13, s9
	fsubs	s11, s11, s12
	fsubs	s12, s12, s13
	fmacs	s12, s15, s11
	fsts	s12, [r1]
.L81:
	adds	r1, r2, #1
	adds	r3, r3, #8
	cmp	r1, r4
	beq	.L79
.L120:
	mov	r0, r2
	mov	r2, r1
.L80:
	flds	s15, [r3, #-40]
	pld	[r3]
	fcmpes	s14, s15
	fmstat
	bgt	.L77
	add	r0, r5, r0, lsl #3
	flds	s13, [r0, #4]
.L84:
	fcmpes	s14, s13
	fmstat
	ble	.L81
	fcmpes	s14, s15
	fmstat
	bls	.L83
	adds	r1, r2, #1
	adds	r3, r3, #8
	cmp	r1, r4
	bne	.L120
.L79:
	cmp	r9, #1
	ble	.L17
	ldr	r4, [sp, #24]
	add	r0, r9, #-1
	movs	r3, #0
.L19:
	lsls	r2, r3, #2
	adds	r1, r2, #4
	add	r2, r2, r4
	add	r1, r1, r4
	flds	s15, [r2]
	flds	s14, [r1]
	fcmpes	s15, s14
	fmstat
	it	le
	addle	r3, r3, #1
	ble	.L76
	fsts	s14, [r2]
	fsts	s15, [r1]
	cbz	r3, .L76
	subs	r3, r3, #1
.L76:
	cmp	r3, r0
	blt	.L19
	ldr	r3, [sp, #24]
	mov	r10, #0
	str	r9, [sp, #8]
	ldr	r9, [sp, #36]
	add	fp, r3, #12
	fconstd	d11, #240
.L28:
	flds	s9, [r8, #24]	@ int
	flds	s25, [fp, #-12]
	fsitos	s15, s9
	fcmpes	s25, s15
	fmstat
	bge	.L117
	flds	s24, [fp, #-8]
	pld	[fp]
	fcmpezs	s24
	fmstat
	ble	.L72
	fcmpezs	s25
	fmstat
	bmi	.L29
.L74:
	fcmpes	s15, s24
	fmstat
	bpl	.L73
	flds	s25, [fp, #-12]
	fcpys	s24, s15
	fsts	s15, [fp, #-8]
.L73:
	fsubs	s15, s24, s25
	fcmpes	s15, s18
	fmstat
	bmi	.L72
	flds	s15, [r8, #8]
	fcpys	s0, s25
	fcmps	s15, s18
	fmstat
	beq	.L32
	bl	floorf(PLT)
	ftosizs	s0, s0
	fmrs	r4, s0	@ int
	fcpys	s0, s24
	bl	floorf(PLT)
	ldrb	r3, [r8, #35]	@ zero_extendqisi2
	ftosizs	s0, s0
	cmp	r3, #2
	fmrs	r5, s0	@ int
	beq	.L121
	ldrb	r0, [r9, r4]	@ zero_extendqisi2
	add	r6, r9, r4
	fcvtds	d0, s25
	fconstd	d1, #112
	fmsr	s24, r0	@ int
	bl	fmod(PLT)
	ldrb	r3, [r8, #36]	@ zero_extendqisi2
	fsitod	d12, s24
	fsubd	d0, d10, d0
	fmsr	s9, r3	@ int
	fsitod	d16, s9
	fmacd	d12, d0, d16
	fcmpd	d12, d8
	fmstat
	ble	.L68
	movs	r3, #255
.L71:
	strb	r3, [r6]
	add	r6, r9, r5
	flds	s0, [fp, #-8]
	ldrb	r0, [r9, r5]	@ zero_extendqisi2
	fconstd	d1, #112
	fcvtds	d0, s0
	fmsr	s24, r0	@ int
	bl	fmod(PLT)
	ldrb	r3, [r8, #36]	@ zero_extendqisi2
	fsitod	d12, s24
	fmsr	s9, r3	@ int
	fsitod	d16, s9
	fmacd	d12, d0, d16
	fcmpd	d12, d8
	fmstat
	ble	.L69
	movs	r3, #255
.L70:
	strb	r3, [r6]
	adds	r3, r4, #1
	subs	r2, r5, r3
	cmp	r2, #0
	ble	.L72
	cmp	r2, #7
	add	r3, r3, r9
	and	r1, r2, #7
	bgt	.L35
	subs	r1, r2, r1
.L60:
	ldrb	r0, [r8, #35]	@ zero_extendqisi2
	cmp	r0, #2
	beq	.L122
.L36:
	cmp	r2, r1
	ble	.L72
	add	r4, r4, r1
	rsb	ip, r1, r2
	add	r4, r4, r9
	add	r7, r8, #37
	adds	r4, r4, #1
	add	lr, r8, #36
	add	r0, r4, ip
	add	r6, r8, #34
	cmp	r7, r4
	it	hi
	cmphi	r0, lr
	add	r5, r8, #35
	ite	ls
	movls	r7, #1
	movhi	r7, #0
	cmp	r5, r4
	it	hi
	cmphi	r0, r6
	ite	ls
	movls	r0, #1
	movhi	r0, #0
	ands	r0, r0, r7
	cmp	ip, #15
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	beq	.L48
	lsr	r5, ip, #4
	lsls	r7, r5, #4
	str	r5, [sp, #4]
	str	r7, [sp, #16]
	cmp	r5, #0
	beq	.L49
	cmp	r5, #2
	bls	.L88
	subs	r5, r5, #3
	mov	r7, r4
	bic	r5, r5, #1
	mov	r0, r4
	mov	r6, r9
	movs	r4, #0
	mov	r9, r2
	adds	r5, r5, #2
	str	r5, [sp, #28]
	str	r3, [sp, #32]
	str	r1, [sp, #12]
.L54:
	ldrb	r3, [r8, #36]	@ zero_extendqisi2
	mov	r5, r0
	ldrb	r1, [r8, #34]	@ zero_extendqisi2
	mov	r2, r7
	vld1.8	{q11}, [r5]!
	adds	r4, r4, #2
	vmovl.u8 q12, d22
	add	lr, r7, #32
	vdup.8	q10, r3
	add	r3, r0, #32
	vmovl.u8 q11, d23
	mov	r7, lr
	vmovl.u8 q13, d20
	vdup.8	q8, r1
	vmovl.u8 q10, d21
	vmovl.u8 q9, d16
	vmovl.u8 q8, d17
	vmovl.u16 q2, d24
	vmovl.u16 q14, d20
	vmovl.u16 q3, d26
	vmovl.u16 q15, d22
	vmovl.u16 q13, d27
	vmovl.u16 q11, d23
	vmovl.u16 q12, d25
	vmovl.u16 q10, d21
	vadd.i32	q12, q12, q13
	vadd.i32	q10, q11, q10
	vmovl.u16 q13, d18
	vmovl.u16 q11, d16
	vadd.i32	q3, q2, q3
	vadd.i32	q15, q15, q14
	vmovl.u16 q9, d19
	vmovl.u16 q8, d17
	vmin.s32	q3, q3, q13
	vmin.s32	q9, q12, q9
	vmin.s32	q15, q15, q11
	vmin.s32	q8, q10, q8
	pld	[r0, #96]
	mov	r0, r3
	vmovn.i32	d28, q3
	vmovn.i32	d29, q9
	vmovn.i32	d18, q15
	vmovn.i32	d19, q8
	vmovn.i16	d16, q14
	vmovn.i16	d17, q9
	vst1.8	{q8}, [r2]!
	ldrb	r1, [r8, #34]	@ zero_extendqisi2
	vld1.8	{q10}, [r5]
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	vmovl.u8 q12, d20
	vdup.8	q8, r1
	vmovl.u8 q10, d21
	vdup.8	q11, r5
	vmovl.u8 q9, d16
	vmovl.u8 q13, d22
	vmovl.u8 q11, d23
	vmovl.u8 q8, d17
	vmovl.u16 q3, d26
	vmovl.u16 q14, d22
	vmovl.u16 q13, d27
	vmovl.u16 q2, d24
	vmovl.u16 q11, d23
	vmovl.u16 q15, d20
	vmovl.u16 q12, d25
	vmovl.u16 q10, d21
	vadd.i32	q12, q12, q13
	vadd.i32	q15, q15, q14
	vmovl.u16 q13, d18
	vadd.i32	q10, q10, q11
	vadd.i32	q3, q2, q3
	vmovl.u16 q11, d16
	vmovl.u16 q9, d19
	vmovl.u16 q8, d17
	vmin.s32	q3, q3, q13
	vmin.s32	q9, q12, q9
	vmin.s32	q8, q10, q8
	vmin.s32	q15, q15, q11
	vmovn.i32	d28, q3
	vmovn.i32	d29, q9
	vmovn.i32	d18, q15
	vmovn.i32	d19, q8
	vmovn.i16	d16, q14
	vmovn.i16	d17, q9
	vst1.8	{q8}, [r2]
	ldr	r2, [sp, #28]
	cmp	r4, r2
	bne	.L54
	ldr	r1, [sp, #12]
	mov	r2, r9
	ldr	r3, [sp, #32]
	mov	r9, r6
	mov	r7, r0
.L50:
	mov	r0, r4
.L56:
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	adds	r0, r0, #1
	ldrb	r4, [r8, #34]	@ zero_extendqisi2
	vld1.8	{q10}, [r7]!
	vmovl.u8 q12, d20
	vdup.8	q11, r5
	vmovl.u8 q10, d21
	vmovl.u8 q13, d22
	vdup.8	q8, r4
	vmovl.u8 q11, d23
	vmovl.u8 q9, d16
	vmovl.u8 q8, d17
	vmovl.u16 q14, d26
	vmovl.u16 q15, d24
	vmovl.u16 q2, d25
	vmovl.u16 q3, d22
	vmovl.u16 q12, d20
	vmovl.u16 q11, d23
	vmovl.u16 q13, d27
	vmovl.u16 q10, d21
	vadd.i32	q15, q15, q14
	vadd.i32	q10, q10, q11
	vmovl.u16 q14, d18
	vmovl.u16 q11, d16
	vadd.i32	q13, q2, q13
	vmovl.u16 q9, d19
	vadd.i32	q12, q12, q3
	vmovl.u16 q8, d17
	vmin.s32	q9, q13, q9
	vmin.s32	q14, q15, q14
	vmin.s32	q8, q10, q8
	vmin.s32	q12, q12, q11
	ldr	r5, [sp, #4]
	vmovn.i32	d20, q14
	vmovn.i32	d21, q9
	vmovn.i32	d18, q12
	vmovn.i32	d19, q8
	cmp	r5, r0
	vmovn.i16	d16, q10
	vmovn.i16	d17, q9
	vst1.8	{q8}, [lr]!
	bhi	.L56
	ldr	r4, [sp, #16]
	cmp	ip, r4
	add	r1, r1, r4
	beq	.L72
.L49:
	ldrb	r6, [r3, r1]	@ zero_extendqisi2
	adds	r5, r1, #1
	ldrb	r0, [r8, #36]	@ zero_extendqisi2
	ldrb	r4, [r8, #34]	@ zero_extendqisi2
	add	r0, r0, r6
	cmp	r0, r4
	it	ge
	movge	r0, r4
	cmp	r2, r5
	strb	r0, [r3, r1]
	ble	.L72
	ldrb	r7, [r3, r5]	@ zero_extendqisi2
	adds	r4, r1, #2
	ldrb	r0, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r0, r0, r7
	cmp	r0, r6
	it	ge
	movge	r0, r6
	cmp	r2, r4
	strb	r0, [r3, r5]
	ble	.L72
	ldrb	r7, [r3, r4]	@ zero_extendqisi2
	adds	r0, r1, #3
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r0
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r7, [r3, r0]	@ zero_extendqisi2
	adds	r4, r1, #4
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r4
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r7, [r3, r4]	@ zero_extendqisi2
	adds	r0, r1, #5
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r0
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r7, [r3, r0]	@ zero_extendqisi2
	adds	r4, r1, #6
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r4
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r7, [r3, r4]	@ zero_extendqisi2
	adds	r0, r1, #7
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r0
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r7, [r3, r0]	@ zero_extendqisi2
	add	r4, r1, #8
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r4
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r7, [r3, r4]	@ zero_extendqisi2
	add	r0, r1, #9
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r0
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r7, [r3, r0]	@ zero_extendqisi2
	add	r4, r1, #10
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r4
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r7, [r3, r4]	@ zero_extendqisi2
	add	r0, r1, #11
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r0
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r7, [r3, r0]	@ zero_extendqisi2
	add	r4, r1, #12
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r4
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r7, [r3, r4]	@ zero_extendqisi2
	add	r0, r1, #13
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	ldrb	r6, [r8, #34]	@ zero_extendqisi2
	add	r5, r5, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	cmp	r2, r0
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r6, [r3, r0]	@ zero_extendqisi2
	adds	r1, r1, #14
	ldrb	r4, [r8, #36]	@ zero_extendqisi2
	ldrb	r5, [r8, #34]	@ zero_extendqisi2
	add	r4, r4, r6
	cmp	r4, r5
	it	ge
	movge	r4, r5
	cmp	r2, r1
	strb	r4, [r3, r0]
	ble	.L72
	ldrb	r4, [r3, r1]	@ zero_extendqisi2
	ldrb	r2, [r8, #36]	@ zero_extendqisi2
	ldrb	r0, [r8, #34]	@ zero_extendqisi2
	add	r2, r2, r4
	cmp	r2, r0
	it	ge
	movge	r2, r0
	strb	r2, [r3, r1]
.L72:
	ldr	r3, [sp, #8]
	add	r10, r10, #2
	add	fp, fp, #8
	cmp	r10, r3
	blt	.L28
.L117:
	flds	s10, [r8, #28]
.L17:
	ldr	r3, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #20]
	fmsr	s9, r3	@ int
	fsitos	s15, s9
	fcmpes	s15, s10
	fmstat
	bpl	.L115
	ldr	r5, [r8, #4]
	ldr	r4, [r5, #4]
	b	.L22
.L29:
	movs	r0, #0
	str	r0, [fp, #-12]	@ float
	fmsr	s25, r0
	b	.L74
.L32:
	bl	floorf(PLT)
	ftosizs	s0, s0
	fmrs	r4, s0	@ int
	fcpys	s0, s24
	bl	floorf(PLT)
	ftosizs	s0, s0
	add	r0, r9, r4
	ldrb	r1, [r8, #34]	@ zero_extendqisi2
	fmrs	r2, s0	@ int
	subs	r2, r2, r4
	bl	memset(PLT)
	b	.L72
.L121:
	ldrb	r7, [r9, r4]	@ zero_extendqisi2
	add	r6, r9, r4
	fcvtds	d0, s25
	fconstd	d1, #112
	bl	fmod(PLT)
	ldrb	r3, [r8, #36]	@ zero_extendqisi2
	fmsr	s24, r7	@ int
	faddd	d0, d0, d11
	fsitod	d12, s24
	fmsr	s9, r3	@ int
	fsitod	d16, s9
	fmacd	d12, d0, d16
	fcmpzd	d12
	fmstat
	bpl	.L63
	movs	r3, #0
.L67:
	strb	r3, [r6]
	add	r6, r9, r5
	flds	s0, [fp, #-8]
	ldrb	r0, [r9, r5]	@ zero_extendqisi2
	fconstd	d1, #112
	fcvtds	d0, s0
	fmsr	s24, r0	@ int
	bl	fmod(PLT)
	ldrb	r3, [r8, #36]	@ zero_extendqisi2
	fsitod	d12, s24
	fmsr	s9, r3	@ int
	fsitod	d16, s9
	fnmacd	d12, d0, d16
	fcmpzd	d12
	fmstat
	it	mi
	movmi	r3, #0
	bmi	.L70
	flds	s0, [fp, #-8]
	ldrb	r0, [r9, r5]	@ zero_extendqisi2
	fconstd	d1, #112
	fcvtds	d0, s0
	fmsr	s24, r0	@ int
	bl	fmod(PLT)
	ldrb	r3, [r8, #36]	@ zero_extendqisi2
	fsitod	d12, s24
	fmsr	s9, r3	@ int
	fsitod	d16, s9
	fnmacd	d12, d0, d16
	ftouizd	s13, d12
	fmrs	r3, s13	@ int
	uxtb	r3, r3
	b	.L70
.L35:
	ldrb	r0, [r8, #35]	@ zero_extendqisi2
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r0, #2
	vdup.8	d20, r5
	beq	.L123
	ldrb	r5, [r8, #34]	@ zero_extendqisi2
	subs	r1, r2, r1
	movs	r0, #0
	vdup.16	q9, r5
.L62:
	adds	r5, r3, r0
	adds	r0, r0, #8
	cmp	r0, r1
	vld1.8	{d16}, [r5]
	vaddl.u8	q8, d16, d20
	vmin.u16	q8, q8, q9
	vmovn.i16	d16, q8
	vst1.8	{d16}, [r5]
	blt	.L62
	ldrb	r0, [r8, #35]	@ zero_extendqisi2
	cmp	r0, #2
	bne	.L36
.L122:
	cmp	r2, r1
	ble	.L72
	add	r4, r4, r1
	rsb	ip, r1, r2
	add	r4, r4, r9
	add	r7, r8, #36
	adds	r4, r4, #1
	add	r5, r8, #37
	add	r6, r4, ip
	cmp	r4, r5
	it	cc
	cmpcc	r7, r6
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	cmp	ip, #15
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	beq	.L37
	lsr	r5, ip, #4
	lsls	r7, r5, #4
	str	r5, [sp, #4]
	str	r7, [sp, #12]
	cmp	r5, #0
	beq	.L38
	cmp	r5, #2
	bls	.L87
	subs	r0, r5, #3
	vmov.i32	q8, #0  @ v4si
	bic	r0, r0, #1
	mov	r7, r4
	adds	r0, r0, #2
	str	r2, [sp, #32]
	str	r0, [sp, #16]
	mov	r0, r4
	movs	r4, #0
	str	r3, [sp, #28]
.L43:
	ldrb	lr, [r8, #36]	@ zero_extendqisi2
	mov	r6, r0
	mov	r5, r7
	pld	[r0, #112]
	vld1.8	{q9}, [r6]!
	adds	r4, r4, #2
	vmovl.u8 q10, d18
	add	r3, r0, #32
	vdup.8	q13, lr
	add	lr, r7, #32
	vmovl.u8 q9, d19
	mov	r0, r3
	vmovl.u8 q11, d26
	mov	r7, lr
	vmovl.u8 q13, d27
	vmovl.u16 q3, d20
	vmovl.u16 q15, d21
	vmovl.u16 q14, d26
	vmovl.u16 q12, d22
	vmovl.u16 q10, d18
	vmovl.u16 q13, d27
	vmovl.u16 q11, d23
	vmovl.u16 q9, d19
	vsub.i32	q12, q3, q12
	vsub.i32	q11, q15, q11
	vsub.i32	q10, q10, q14
	vsub.i32	q9, q9, q13
	vmax.s32	q12, q12, q8
	vmax.s32	q11, q11, q8
	vmax.s32	q10, q10, q8
	vmax.s32	q9, q9, q8
	vmovn.i32	d26, q12
	vmovn.i32	d27, q11
	vmovn.i32	d22, q10
	vmovn.i32	d23, q9
	vmovn.i16	d18, q13
	vmovn.i16	d19, q11
	vst1.8	{q9}, [r5]!
	ldrb	r2, [r8, #36]	@ zero_extendqisi2
	vld1.8	{q13}, [r6]
	vmovl.u8 q11, d26
	vmovl.u8 q13, d27
	vdup.8	q9, r2
	vmovl.u16 q3, d22
	vmovl.u8 q10, d18
	vmovl.u8 q9, d19
	vmovl.u16 q11, d23
	vmovl.u16 q12, d20
	vmovl.u16 q15, d21
	vmovl.u16 q14, d18
	vmovl.u16 q10, d26
	vmovl.u16 q9, d19
	vmovl.u16 q13, d27
	vsub.i32	q12, q3, q12
	vsub.i32	q11, q11, q15
	vsub.i32	q9, q13, q9
	vsub.i32	q10, q10, q14
	vmax.s32	q11, q11, q8
	vmax.s32	q9, q9, q8
	vmax.s32	q12, q12, q8
	vmax.s32	q10, q10, q8
	vmovn.i32	d26, q12
	vmovn.i32	d27, q11
	vmovn.i32	d22, q10
	vmovn.i32	d23, q9
	vmovn.i16	d18, q13
	vmovn.i16	d19, q11
	vst1.8	{q9}, [r5]
	ldr	r5, [sp, #16]
	cmp	r4, r5
	bne	.L43
	ldr	r2, [sp, #32]
	mov	r7, r0
	ldr	r3, [sp, #28]
.L39:
	vmov.i32	q8, #0  @ v4si
	mov	r0, r4
.L45:
	ldrb	r4, [r8, #36]	@ zero_extendqisi2
	adds	r0, r0, #1
	vld1.8	{q13}, [r7]!
	vmovl.u8 q11, d26
	vmovl.u8 q13, d27
	vdup.8	q9, r4
	vmovl.u16 q3, d22
	vmovl.u8 q10, d18
	vmovl.u8 q9, d19
	vmovl.u16 q11, d23
	vmovl.u16 q12, d20
	vmovl.u16 q15, d21
	vmovl.u16 q14, d18
	vmovl.u16 q10, d26
	vmovl.u16 q9, d19
	vmovl.u16 q13, d27
	vsub.i32	q12, q3, q12
	vsub.i32	q11, q11, q15
	vsub.i32	q9, q13, q9
	vsub.i32	q10, q10, q14
	vmax.s32	q11, q11, q8
	vmax.s32	q9, q9, q8
	vmax.s32	q12, q12, q8
	vmax.s32	q10, q10, q8
	ldr	r4, [sp, #4]
	vmovn.i32	d26, q12
	vmovn.i32	d27, q11
	vmovn.i32	d22, q10
	vmovn.i32	d23, q9
	cmp	r4, r0
	vmovn.i16	d18, q13
	vmovn.i16	d19, q11
	vst1.8	{q9}, [lr]!
	bhi	.L45
	ldr	r7, [sp, #12]
	cmp	r7, ip
	add	r1, r1, r7
	beq	.L72
.L38:
	ldrb	r5, [r3, r1]	@ zero_extendqisi2
	adds	r0, r1, #1
	ldrb	r4, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r0
	sub	r4, r5, r4
	bic	r4, r4, r4, asr #31
	strb	r4, [r3, r1]
	ble	.L72
	ldrb	r6, [r3, r0]	@ zero_extendqisi2
	adds	r4, r1, #2
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r4
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r6, [r3, r4]	@ zero_extendqisi2
	adds	r0, r1, #3
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r0
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r6, [r3, r0]	@ zero_extendqisi2
	adds	r4, r1, #4
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r4
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r6, [r3, r4]	@ zero_extendqisi2
	adds	r0, r1, #5
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r0
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r6, [r3, r0]	@ zero_extendqisi2
	adds	r4, r1, #6
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r4
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r6, [r3, r4]	@ zero_extendqisi2
	adds	r0, r1, #7
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r0
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r6, [r3, r0]	@ zero_extendqisi2
	add	r4, r1, #8
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r4
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r6, [r3, r4]	@ zero_extendqisi2
	add	r0, r1, #9
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r0
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r6, [r3, r0]	@ zero_extendqisi2
	add	r4, r1, #10
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r4
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r6, [r3, r4]	@ zero_extendqisi2
	add	r0, r1, #11
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r0
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r6, [r3, r0]	@ zero_extendqisi2
	add	r4, r1, #12
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r4
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r0]
	ble	.L72
	ldrb	r6, [r3, r4]	@ zero_extendqisi2
	add	r0, r1, #13
	ldrb	r5, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r0
	sub	r5, r6, r5
	bic	r5, r5, r5, asr #31
	strb	r5, [r3, r4]
	ble	.L72
	ldrb	r5, [r3, r0]	@ zero_extendqisi2
	adds	r1, r1, #14
	ldrb	r4, [r8, #36]	@ zero_extendqisi2
	cmp	r2, r1
	sub	r4, r5, r4
	bic	r4, r4, r4, asr #31
	strb	r4, [r3, r0]
	ble	.L72
	ldrb	r0, [r3, r1]	@ zero_extendqisi2
	ldrb	r2, [r8, #36]	@ zero_extendqisi2
	subs	r2, r0, r2
	bic	r2, r2, r2, asr #31
	strb	r2, [r3, r1]
	b	.L72
.L69:
	flds	s0, [fp, #-8]
	ldrb	r0, [r9, r5]	@ zero_extendqisi2
	fconstd	d1, #112
	fcvtds	d0, s0
	fmsr	s24, r0	@ int
	bl	fmod(PLT)
	ldrb	r3, [r8, #36]	@ zero_extendqisi2
	fsitod	d12, s24
	fmsr	s9, r3	@ int
	fsitod	d16, s9
	fmacd	d12, d0, d16
	ftouizd	s13, d12
	fmrs	r3, s13	@ int
	uxtb	r3, r3
	b	.L70
.L68:
	flds	s0, [fp, #-12]
	ldrb	r0, [r9, r4]	@ zero_extendqisi2
	fconstd	d1, #112
	fcvtds	d0, s0
	fmsr	s24, r0	@ int
	bl	fmod(PLT)
	ldrb	r3, [r8, #36]	@ zero_extendqisi2
	fsitod	d12, s24
	fsubd	d0, d10, d0
	fmsr	s9, r3	@ int
	fsitod	d16, s9
	fmacd	d12, d0, d16
	ftouizd	s13, d12
	fmrs	r3, s13	@ int
	uxtb	r3, r3
	b	.L71
.L48:
	add	r1, r1, r3
	add	r3, r3, r2
.L58:
	ldrb	r4, [r1]	@ zero_extendqisi2
	ldrb	r2, [r8, #36]	@ zero_extendqisi2
	ldrb	r0, [r8, #34]	@ zero_extendqisi2
	add	r2, r2, r4
	cmp	r2, r0
	it	ge
	movge	r2, r0
	strb	r2, [r1], #1
	cmp	r1, r3
	bne	.L58
	b	.L72
.L63:
	flds	s0, [fp, #-12]
	ldrb	r0, [r9, r4]	@ zero_extendqisi2
	fconstd	d1, #112
	fcvtds	d0, s0
	fmsr	s24, r0	@ int
	bl	fmod(PLT)
	ldrb	r3, [r8, #36]	@ zero_extendqisi2
	fsitod	d12, s24
	faddd	d0, d0, d11
	fmsr	s9, r3	@ int
	fsitod	d16, s9
	fmacd	d12, d0, d16
	ftouizd	s13, d12
	fmrs	r3, s13	@ int
	uxtb	r3, r3
	b	.L67
.L123:
	vmov.i32	d17, #0  @ v8qi
	subs	r1, r2, r1
	movs	r0, #0
.L61:
	adds	r5, r3, r0
	adds	r0, r0, #8
	cmp	r0, r1
	vld1.8	{d16}, [r5]
	vsub.i8	d16, d16, d20
	vmax.u8	d16, d16, d17
	vst1.8	{d16}, [r5]
	blt	.L61
	b	.L60
.L37:
	add	r1, r1, r3
	add	r3, r3, r2
.L47:
	ldrb	r0, [r1]	@ zero_extendqisi2
	ldrb	r2, [r8, #36]	@ zero_extendqisi2
	subs	r2, r0, r2
	bic	r2, r2, r2, asr #31
	strb	r2, [r1], #1
	cmp	r1, r3
	bne	.L47
	b	.L72
.L115:
	ldr	r10, [sp, #24]
	mov	fp, r8
.L20:
	mov	r0, r10
	bl	free(PLT)
	ldrb	r3, [fp, #35]	@ zero_extendqisi2
	cbnz	r3, .L9
	ldr	r5, [sp, #36]
	cbz	r5, .L9
	ldr	r1, [fp]
	ldr	r7, [fp, #24]
	ldr	r5, [sp, #40]
	ldr	r4, [r1, #8]
	ldr	r2, [fp, #20]
	cmp	r7, #7
	ldr	r0, [r1, #16]
	asr	r1, r7, #31
	ldrh	r6, [fp, #32]
	lsr	r1, r1, #29
	mla	r2, r4, r5, r2
	add	r4, r7, r1
	and	r4, r4, #7
	sub	r4, r4, r1
	add	r5, r0, r2, lsl #1
	bgt	.L10
.L13:
	cmp	r4, #0
	ble	.L12
	subs	r4, r7, r4
	cmp	r7, r4
	ble	.L12
	ldr	r3, [sp, #36]
	add	r5, r5, r4, lsl #1
	add	r7, r7, r3
	add	r4, r4, r3
.L15:
	ldrb	r2, [r4], #1	@ zero_extendqisi2
	mov	r1, r6
	ldrh	r0, [r5]
	bl	libaroma_alpha(PLT)
	cmp	r4, r7
	strh	r0, [r5], #2	@ movhi
	bne	.L15
.L12:
	ldr	r0, [sp, #36]
	bl	free(PLT)
.L9:
	ldr	r3, [sp, #40]
	ldr	r4, [sp, #44]
	adds	r3, r3, #1
	cmp	r4, r3
	str	r3, [sp, #40]
	bgt	.L8
.L1:
	add	sp, sp, #52
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L88:
	mov	lr, r4
	movs	r4, #0
	mov	r7, lr
	b	.L50
.L119:
	ldr	r0, [fp, #24]
	movs	r1, #1
	bl	calloc(PLT)
	str	r0, [sp, #36]
	b	.L85
.L87:
	mov	lr, r4
	movs	r4, #0
	mov	r7, lr
	b	.L39
.L10:
	and	lr, r6, #2016
	and	r2, r6, #63488
	asr	lr, lr, #3
	lsls	r1, r6, #3
	asrs	r2, r2, #8
	vmov.i16	q0, #255  @ v8hi
	and	r1, r1, #248
	vmov.i16	q1, #256  @ v8hi
	vdup.16	q14, lr
	vmov.i16	q2, #63488  @ v8hi
	ldr	lr, [sp, #36]
	vmov.i16	q3, #31  @ v8hi
	vdup.16	q15, r2
	subs	r0, r7, r4
	mov	r2, r5
	vdup.16	q13, r1
	vdup.16	q12, r6
.L14:
	add	r1, lr, r3
	vld1.16	{d18-d19}, [r2]
	vand	q6, q9, q2
	adds	r3, r3, #8
	vld1.8	{d16}, [r1]
	cmp	r0, r3
	vmovl.u8	q8, d16
	vldr	d20, .L126
	vldr	d21, .L126+8
	vand	q7, q9, q10
	vrshr.u16	q6, q6, #8
	vsub.i16	q10, q1, q8
	vmul.i16	q11, q15, q8
	vmul.i16	q6, q6, q10
	vrshr.u16	q7, q7, #3
	vmul.i16	q5, q14, q8
	vmul.i16	q7, q7, q10
	vadd.i16	q6, q6, q11
	vand	q11, q9, q3
	vshr.u16	q6, q6, #11
	vshl.i16	q11, q11, #3
	vadd.i16	q5, q7, q5
	vmul.i16	q10, q11, q10
	vmul.i16	q11, q13, q8
	vshr.u16	q5, q5, #10
	vshl.i16	q6, q6, #11
	vshl.i16	q5, q5, #5
	vadd.i16	q11, q10, q11
	vorr	q5, q6, q5
	vceq.i16	q10, q8, q0
	vshr.u16	q11, q11, #11
	vceq.i16	q8, q8, #0
	vorr	q11, q5, q11
	vbsl	q10, q12, q11
	vbsl	q8, q9, q10
	vst1.16	{d16-d17}, [r2]!
	bgt	.L14
	b	.L13
.L127:
	.align	3
.L126:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.size	libaroma_path_draw._omp_fn.0, .-libaroma_path_draw._omp_fn.0
	.section	.text.libaroma_path,"ax",%progbits
	.align	2
	.global	libaroma_path
	.thumb
	.thumb_func
	.type	libaroma_path, %function
libaroma_path:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	movs	r0, #24
	fstmfdd	sp!, {d8}
	movs	r1, #1
	sub	sp, sp, #20
	fcpys	s17, s0
	fcpys	s16, s1
	bl	calloc(PLT)
	mov	r4, r0
	cbz	r0, .L129
	mov	r0, #256
	bl	malloc(PLT)
	mov	r5, r0
	str	r0, [r4]
	cbz	r0, .L133
	fsts	s17, [sp]
	mov	r0, r4
	fsts	s16, [sp, #4]
	movs	r3, #1
	fsts	s17, [sp, #8]
	fsts	s16, [sp, #12]
	vld1.64	{d16-d17}, [sp:64]
	fsts	s17, [r5]
	fsts	s16, [r5, #4]
	str	r3, [r4, #4]
	vstr	d16, [r4, #8]
	vstr	d17, [r4, #16]
.L129:
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, pc}
.L133:
	mov	r0, r4
	bl	free(PLT)
	mov	r0, r5
	b	.L129
	.size	libaroma_path, .-libaroma_path
	.section	.text.libaroma_path_free,"ax",%progbits
	.align	2
	.global	libaroma_path_free
	.thumb
	.thumb_func
	.type	libaroma_path_free, %function
libaroma_path_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L137
	ldr	r0, [r0]
	cbz	r0, .L136
	bl	free(PLT)
.L136:
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L137:
	pop	{r4, pc}
	.size	libaroma_path_free, .-libaroma_path_free
	.section	.text.libaroma_path_add,"ax",%progbits
	.align	2
	.global	libaroma_path_add
	.thumb
	.thumb_func
	.type	libaroma_path_add, %function
libaroma_path_add:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	fstmfdd	sp!, {d8}
	cmp	r0, #0
	beq	.L145
	ldr	r0, [r0]
	cmp	r0, #0
	beq	.L145
	ldr	r3, [r4, #4]
	fcpys	s17, s0
	fcpys	s16, s1
	lsls	r2, r3, #27
	beq	.L171
.L146:
	add	r2, r0, r3, lsl #3
	movs	r0, #1
	add	r3, r3, r0
	fsts	s17, [r2]
	flds	s12, [r4, #16]
	fsts	s16, [r2, #4]
	flds	s13, [r4, #20]
	flds	s14, [r4, #8]
	flds	s15, [r4, #12]
	fcmpes	s17, s12
	fmstat
	fcmpes	s16, s13
	it	pl
	fcpyspl	s12, s17
	fmstat
	fcmpes	s17, s14
	it	pl
	fcpyspl	s13, s16
	fmstat
	fcmpes	s16, s15
	it	gt
	fcpysgt	s17, s14
	fmstat
	it	gt
	fcpysgt	s16, s15
	fsts	s17, [r4, #8]
	fsts	s16, [r4, #12]
	fldmfdd	sp!, {d8}
	str	r3, [r4, #4]
	fsts	s12, [r4, #16]
	fsts	s13, [r4, #20]
	pop	{r4, pc}
.L171:
	add	r1, r3, #32
	lsls	r1, r1, #3
	bl	realloc(PLT)
	mov	r2, r0
	cbz	r0, .L145
	ldr	r3, [r4, #4]
	str	r2, [r4]
	b	.L146
.L145:
	fldmfdd	sp!, {d8}
	movs	r0, #0
	pop	{r4, pc}
	.size	libaroma_path_add, .-libaroma_path_add
	.section	.text.libaroma_path_curve_calc,"ax",%progbits
	.align	2
	.global	libaroma_path_curve_calc
	.thumb
	.thumb_func
	.type	libaroma_path_curve_calc, %function
libaroma_path_curve_calc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	fconsts	s14, #112
	fmuls	s13, s0, s0
	fsubs	s14, s14, s0
	fconsts	s15, #8
	fmuls	s5, s5, s15
	fmuls	s12, s13, s14
	fmuls	s6, s6, s15
	fmuls	s13, s13, s0
	fmuls	s11, s14, s14
	fmuls	s5, s5, s12
	fmuls	s6, s6, s12
	fmuls	s3, s3, s15
	fmuls	s14, s11, s14
	fmacs	s5, s13, s7
	fmacs	s6, s13, s8
	fmuls	s0, s11, s0
	fmuls	s4, s4, s15
	fmacs	s5, s14, s1
	fmacs	s6, s14, s2
	fmacs	s5, s3, s0
	fmacs	s6, s4, s0
	fsts	s5, [r0]
	fsts	s6, [r1]
	bx	lr
	.size	libaroma_path_curve_calc, .-libaroma_path_curve_calc
	.section	.text._libaroma_path_curve_findpoint,"ax",%progbits
	.align	2
	.global	_libaroma_path_curve_findpoint
	.thumb
	.thumb_func
	.type	_libaroma_path_curve_findpoint, %function
_libaroma_path_curve_findpoint:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	fcmps	s0, s1
	fmstat
	push	{r4, lr}
	it	eq
	moveq	r0, #0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #16
	fcpys	s16, s0
	fcpys	s17, s1
	bne	.L184
	add	sp, sp, #16
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, pc}
.L184:
	fsubs	s14, s1, s0
	mov	r4, r0
	fconsts	s15, #96
	mov	r0, sp
	fcpys	s30, s0
	add	r1, sp, #8
	fcpys	s1, s2
	fmacs	s30, s14, s15
	fcpys	s26, s2
	fcpys	s25, s3
	fcpys	s2, s3
	fcpys	s24, s4
	fcpys	s3, s4
	fcpys	s23, s5
	fcpys	s4, s5
	fcpys	s22, s6
	fcpys	s5, s6
	fcpys	s21, s7
	fcpys	s6, s7
	fcpys	s20, s8
	fcpys	s7, s8
	fcpys	s0, s30
	fcpys	s8, s9
	fcpys	s28, s10
	fcpys	s18, s12
	fcpys	s27, s13
	fcpys	s19, s9
	fcpys	s29, s11
	bl	libaroma_path_curve_calc(PLT)
	flds	s12, [sp]
	flds	s13, [sp, #8]
	fsubs	s15, s12, s28
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r3, #1
	ble	.L175
.L176:
	fcpys	s0, s16
	mov	r0, r4
	fcpys	s1, s30
	fcpys	s10, s28
	fcpys	s11, s29
	fcpys	s2, s26
	fcpys	s3, s25
	fcpys	s4, s24
	fcpys	s5, s23
	fcpys	s6, s22
	fcpys	s7, s21
	fcpys	s8, s20
	fcpys	s9, s19
	bl	_libaroma_path_curve_findpoint(PLT)
	flds	s0, [sp]
	flds	s1, [sp, #8]
.L177:
	mov	r0, r4
	bl	libaroma_path_add(PLT)
	flds	s10, [sp]
	flds	s11, [sp, #8]
	fsubs	s15, s10, s18
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r3, #1
	ble	.L178
.L179:
	fcpys	s0, s30
	mov	r0, r4
	fcpys	s1, s17
	fcpys	s2, s26
	fcpys	s3, s25
	fcpys	s4, s24
	fcpys	s5, s23
	fcpys	s6, s22
	fcpys	s7, s21
	fcpys	s8, s20
	fcpys	s9, s19
	fcpys	s12, s18
	fcpys	s13, s27
	bl	_libaroma_path_curve_findpoint(PLT)
.L180:
	mov	r0, r4
	fcpys	s0, s18
	fcpys	s1, s27
	bl	libaroma_path_add(PLT)
	movs	r0, #1
	add	sp, sp, #16
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, pc}
.L175:
	fsubs	s15, s13, s29
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r3, #1
	bgt	.L176
	fcpys	s1, s13
	fcpys	s0, s12
	b	.L177
.L178:
	fsubs	s15, s11, s27
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r3, #1
	bgt	.L179
	b	.L180
	.size	_libaroma_path_curve_findpoint, .-_libaroma_path_curve_findpoint
	.section	.text.libaroma_path_curve,"ax",%progbits
	.align	2
	.global	libaroma_path_curve
	.thumb
	.thumb_func
	.type	libaroma_path_curve, %function
libaroma_path_curve:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12}
	sub	sp, sp, #20
	cmp	r0, #0
	beq	.L190
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L191
	cmp	r1, #0
	mov	r6, r1
	fcpys	s18, s0
	fcpys	s19, s1
	fcpys	s20, s2
	fcpys	s21, s3
	fcpys	s22, s4
	fcpys	s23, s5
	ldr	r2, [r0, #4]
	ble	.L197
	add	r2, r2, #536870912
	movs	r4, #0
	subs	r2, r2, #1
	add	r9, sp, #8
	add	r3, r3, r2, lsl #3
	flds	s17, [r3]
	flds	s16, [r3, #4]
	fcpys	s0, s17
	bl	lroundf(PLT)
	mov	r8, r0
	fcpys	s0, s16
	bl	lroundf(PLT)
	subs	r3, r6, #1
	fconsts	s15, #112
	mov	r7, r0
	fmsr	s14, r3	@ int
	fsitos	s24, s14
	fdivs	s24, s15, s24
	b	.L189
.L188:
	cmp	r4, r6
	beq	.L198
.L189:
	fmsr	s15, r4	@ int
	mov	r1, r9
	fsitos	s0, s15
	mov	r0, sp
	fcpys	s1, s17
	adds	r4, r4, #1
	fcpys	s2, s16
	fcpys	s3, s18
	fmuls	s0, s0, s24
	fcpys	s4, s19
	fcpys	s5, s20
	fcpys	s6, s21
	fcpys	s7, s22
	fcpys	s8, s23
	bl	libaroma_path_curve_calc(PLT)
	flds	s0, [sp]
	bl	lroundf(PLT)
	mov	r5, r0
	flds	s0, [sp, #8]
	bl	lroundf(PLT)
	cmp	r8, r5
	it	eq
	cmpeq	r7, r0
	beq	.L188
	mov	r0, fp
	flds	s0, [sp]
	flds	s1, [sp, #8]
	bl	libaroma_path_add(PLT)
	cmp	r4, r6
	bne	.L189
.L198:
	movs	r0, #1
.L186:
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8-d12}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L197:
	add	r2, r2, #536870912
	fcpys	s6, s2
	subs	r2, r2, #1
	fcpys	s7, s3
	add	r3, r3, r2, lsl #3
	fcpys	s8, s4
	fcpys	s9, s5
	flds	s2, [r3]
	flds	s3, [r3, #4]
	fcpys	s4, s0
	fcpys	s5, s1
	fcpys	s12, s22
	fcpys	s13, s23
	fcpys	s10, s2
	fcpys	s11, s3
	flds	s0, .L199
	fconsts	s1, #112
	bl	_libaroma_path_curve_findpoint(PLT)
	movs	r0, #1
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8-d12}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L190:
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8-d12}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L191:
	mov	r0, r3
	b	.L186
.L200:
	.align	2
.L199:
	.word	0
	.size	libaroma_path_curve, .-libaroma_path_curve
	.section	.text.libaroma_path_draw,"ax",%progbits
	.align	2
	.global	libaroma_path_draw
	.thumb
	.thumb_func
	.type	libaroma_path_draw, %function
libaroma_path_draw:
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	fstmfdd	sp!, {d8, d9, d10}
	sub	sp, sp, #60
	mov	r4, r1
	mov	r9, r2
	mov	r7, r3
	fcpys	s20, s0
	ldrb	r6, [sp, #120]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L234
.L202:
	cbz	r6, .L203
	ldr	r0, [r5, #20]
	cmp	r0, #0
	beq	.L204
.L203:
	cmp	r4, #0
	beq	.L216
	cmp	r6, #0
	it	eq
	cmpeq	r7, #0
	beq	.L224
	fcmpezs	s20
	fmstat
	it	ls
	fconstsls	s20, #112
	bls	.L205
	fconsts	s15, #112
	fcmps	s20, s15
	fmstat
	it	gt
	fcpysgt	s20, s15
.L205:
	ldr	r3, [r4, #4]
	cmp	r3, #1
	ble	.L224
	flds	s0, [r4, #12]
	bl	floorf(PLT)
	fcmpzs	s0
	fmstat
	ite	pl
	ftosizspl	s0, s0
	movmi	r10, #0
	ldr	r3, [r5, #4]
	add	r8, r3, #-1
	it	pl
	fmrspl	r10, s0	@ int
	flds	s0, [r4, #20]
	bl	ceilf(PLT)
	fmsr	s13, r8	@ int
	fcvtds	d16, s0
	fsitod	d17, s13
	fcmped	d17, d16
	fmstat
	itt	pl
	ftosizspl	s0, s0
	fmrspl	r8, s0	@ int
	flds	s0, [r4, #8]
	bl	floorf(PLT)
	fcmpzs	s0
	fmstat
	bmi	.L232
	ftosizs	s0, s0
	fsitod	d9, s0
	fmrs	fp, s0	@ int
.L209:
	flds	s15, [r5]	@ int
	flds	s0, [r4, #16]
	fsitod	d8, s15
	bl	ceilf(PLT)
	fcvtds	d0, s0
	fcmped	d8, d0
	fmstat
	it	pl
	fcpydpl	d8, d0
	fsubd	d9, d8, d9
	ftosizd	s13, d9
	fmrs	r3, s13	@ int
	cmp	r3, #0
	ble	.L224
	cmp	r6, #2
	fconsts	s15, #112
	it	eq
	fldseq	s14, .L235+8
	mov	r2, #0
	it	ne
	fmsrne	s13, r7	@ int
	fdivs	s15, s15, s20
	it	ne
	fsitosne	s14, s13
	str	r8, [sp, #4]
	add	r8, sp, #16
	str	r3, [sp, #12]
	add	r3, sp, #28
	str	r10, [sp]
	mov	r1, r8
	fmuls	s14, s20, s14
	str	fp, [sp, #8]
	ldr	r0, .L235+12
	vld1.64	{d16-d17}, [sp:64]
	ftouizs	s14, s14
	vst1.32	{q8}, [r3]
.LPIC24:
	add	r0, pc
	str	r5, [sp, #16]
	str	r4, [sp, #20]
	fmrs	lr, s14	@ int
	uxtb	lr, lr
	fsts	s20, [sp, #24]
	fsts	s15, [sp, #44]
	strb	lr, [sp, #52]
	strh	r9, [sp, #48]	@ movhi
	strb	r7, [sp, #50]
	strb	r6, [sp, #51]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r8
	bl	libaroma_path_draw._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	movs	r0, #1
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8-d10}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L224:
	movs	r0, #1
.L204:
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8-d10}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L232:
	fldd	d9, .L235
	mov	fp, #0
	b	.L209
.L234:
	bl	libaroma_fb(PLT)
	ldr	r5, [r0, #52]
	b	.L202
.L216:
	mov	r0, r4
	b	.L204
.L236:
	.align	3
.L235:
	.word	0
	.word	0
	.word	1132396544
	.word	libaroma_path_draw._omp_fn.0-(.LPIC24+4)
	.size	libaroma_path_draw, .-libaroma_path_draw
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
