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
	.file	"commondraw.c"
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text.libaroma_draw_ex2._omp_fn.1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_draw_ex2._omp_fn.1, %function
libaroma_draw_ex2._omp_fn.1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r7, [r0]
	bl	omp_get_num_threads(PLT)
	mov	r6, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r6
	mov	r5, r0
	mov	r0, r7
	bl	__aeabi_idiv(PLT)
	mov	r1, r6
	mov	r8, r0
	mov	r0, r7
	bl	__aeabi_idivmod(PLT)
	cmp	r5, r1
	itt	lt
	addlt	r8, r8, #1
	movlt	r1, #0
	mla	r5, r5, r8, r1
	add	r8, r8, r5
	cmp	r5, r8
	bge	.L1
.L5:
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #16]
	ldr	r6, [r4, #4]
	adds	r0, r5, r1
	ldr	r7, [r4, #12]
	ldr	r1, [r4, #20]
	add	lr, r5, r6
	ldr	r6, [r4, #36]
	mla	r0, r2, r0, r3
	ldr	r3, [r4, #32]
	ldr	r2, [r4, #28]
	adds	r5, r5, #1
	mla	r1, r1, lr, r7
	add	r0, r0, r6
	add	r1, r1, r3
	bl	memcpy(PLT)
	cmp	r5, r8
	bne	.L5
	pop	{r4, r5, r6, r7, r8, pc}
.L1:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	libaroma_draw_ex2._omp_fn.1, .-libaroma_draw_ex2._omp_fn.1
	.section	.text.libaroma_draw_circle._omp_fn.6,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_draw_circle._omp_fn.6, %function
libaroma_draw_circle._omp_fn.6:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	ldr	r5, [r0, #12]
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #108
	add	r8, r5, #1
	bl	omp_get_num_threads(PLT)
	add	r8, r8, r5
	mov	r7, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r7
	mov	r4, r0
	mov	r0, r8
	bl	__aeabi_idiv(PLT)
	mov	r1, r7
	mov	r10, r0
	mov	r0, r8
	bl	__aeabi_idivmod(PLT)
	cmp	r4, r1
	itt	lt
	addlt	r10, r10, #1
	movlt	r1, #0
	mla	r4, r4, r10, r1
	add	r10, r10, r4
	cmp	r4, r10
	bge	.L9
	vmov.i16	q4, #255  @ v8hi
	subs	r4, r4, r5
	vmov.i16	q5, #63488  @ v8hi
	rsb	r10, r5, r10
	vmov.i16	q7, #31  @ v8hi
	vldr	d12, .L64
	vldr	d13, .L64+8
.L13:
	ldr	r3, [r6]
	ldr	r5, [r6, #8]
	ldr	r2, [r3, #4]
	add	r5, r5, r4
	cmp	r5, r2
	bge	.L14
	cmp	r5, #0
	blt	.L14
	ldr	r1, [r6, #16]
	ldr	r8, [r3, #8]
	mls	r1, r4, r4, r1
	fmsr	s15, r1	@ int
	fsitod	d0, s15
	fsqrtd	d16, d0
	fcmpd	d16, d16
	fmstat
	bne	.L62
.L15:
	ftosizd	s15, d16
	ldr	r1, [r6, #4]
	fmrs	r2, s15	@ int
	lsls	r7, r2, #1
	subs	r2, r1, r2
	bmi	.L16
.L39:
	ldr	r1, [r3]
	adds	r0, r7, r2
	cmp	r0, r1
	it	gt
	subgt	r7, r1, r2
	cmp	r7, #0
	ble	.L14
	ldrb	fp, [r6, #22]	@ zero_extendqisi2
	mla	r2, r5, r8, r2
	ldr	lr, [r3, #16]
	cmp	fp, #255
	add	r9, lr, r2, lsl #1
	beq	.L18
	ldrh	r3, [r6, #20]
	str	r3, [sp, #4]
	cmp	fp, #0
	bne	.L63
.L14:
	adds	r4, r4, #1
	cmp	r10, r4
	bgt	.L13
.L9:
	add	sp, sp, #108
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L63:
	cmp	r7, #7
	and	r8, r7, #7
	bgt	.L19
.L21:
	cmp	r8, #0
	beq	.L14
	rsb	r8, r8, r7
	cmp	r7, r8
	ble	.L14
	add	r9, r9, r8, lsl #1
.L23:
	ldrh	r0, [r9]
	mov	r2, fp
	ldr	r1, [sp, #4]
	bl	libaroma_alpha32(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r8
	add	r8, r8, #1
	bl	libaroma_dither(PLT)
	cmp	r8, r7
	strh	r0, [r9], #2	@ movhi
	bne	.L23
	adds	r4, r4, #1
	cmp	r10, r4
	bgt	.L13
	b	.L9
.L16:
	add	r7, r7, r2
	movs	r2, #0
	b	.L39
.L18:
	cmp	r7, #31
	ldrh	r0, [r6, #20]
	and	r3, r7, #31
	bgt	.L24
.L26:
	cmp	r3, #0
	beq	.L14
	subs	r3, r7, r3
	cmp	r7, r3
	ble	.L14
	add	r2, r2, r3
	subs	r5, r7, r3
	add	lr, lr, r2, lsl #1
	ubfx	r1, lr, #1, #2
	negs	r1, r1
	and	r1, r1, #7
	cmp	r1, r5
	it	cs
	movcs	r1, r5
	cmp	r5, #10
	it	ls
	movls	r1, r5
	cmp	r1, #0
	beq	.L29
	cmp	r1, #1
	strh	r0, [r9, r3, lsl #1]	@ movhi
	add	r2, r3, #1
	bls	.L50
	cmp	r1, #2
	strh	r0, [r9, r2, lsl #1]	@ movhi
	add	r2, r3, #2
	beq	.L50
	cmp	r1, #3
	strh	r0, [r9, r2, lsl #1]	@ movhi
	add	r2, r3, #3
	beq	.L50
	cmp	r1, #4
	strh	r0, [r9, r2, lsl #1]	@ movhi
	add	r2, r3, #4
	beq	.L50
	cmp	r1, #5
	strh	r0, [r9, r2, lsl #1]	@ movhi
	add	r2, r3, #5
	beq	.L50
	cmp	r1, #6
	strh	r0, [r9, r2, lsl #1]	@ movhi
	add	r2, r3, #6
	beq	.L50
	cmp	r1, #7
	strh	r0, [r9, r2, lsl #1]	@ movhi
	add	r2, r3, #7
	beq	.L50
	cmp	r1, #8
	strh	r0, [r9, r2, lsl #1]	@ movhi
	add	r2, r3, #8
	beq	.L50
	cmp	r1, #9
	strh	r0, [r9, r2, lsl #1]	@ movhi
	add	r2, r3, #9
	beq	.L50
	adds	r3, r3, #10
	strh	r0, [r9, r2, lsl #1]	@ movhi
.L30:
	cmp	r5, r1
	beq	.L14
.L29:
	subs	r5, r5, r1
	lsrs	r2, r5, #3
	lsl	r8, r2, #3
	cbz	r2, .L32
	add	lr, lr, r1, lsl #1
	vdup.16	q8, r0
	mov	ip, #0
.L37:
	add	ip, ip, #1
	vst1.64	{d16-d17}, [lr:64]!
	cmp	ip, r2
	bcc	.L37
	cmp	r8, r5
	add	r3, r3, r8
	beq	.L14
.L32:
	adds	r2, r3, #1
	strh	r0, [r9, r3, lsl #1]	@ movhi
	cmp	r2, r7
	bge	.L14
	adds	r1, r3, #2
	strh	r0, [r9, r2, lsl #1]	@ movhi
	cmp	r7, r1
	ble	.L14
	adds	r2, r3, #3
	strh	r0, [r9, r1, lsl #1]	@ movhi
	cmp	r7, r2
	ble	.L14
	adds	r1, r3, #4
	strh	r0, [r9, r2, lsl #1]	@ movhi
	cmp	r7, r1
	ble	.L14
	adds	r2, r3, #5
	strh	r0, [r9, r1, lsl #1]	@ movhi
	cmp	r7, r2
	ble	.L14
	adds	r3, r3, #6
	adds	r4, r4, #1
	cmp	r7, r3
	strh	r0, [r9, r2, lsl #1]	@ movhi
	it	gt
	strhgt	r0, [r9, r3, lsl #1]	@ movhi
	cmp	r10, r4
	bgt	.L13
	b	.L9
.L19:
	bl	libaroma_dither_table_r(PLT)
	and	r2, r5, #7
	lsls	r2, r2, #3
	add	r0, r0, r2
	vld1.8	{d16}, [r0]
	str	r2, [sp]
	vmovl.u8	q9, d16
	vstr	d18, [sp, #8]
	vstr	d19, [sp, #16]
	bl	libaroma_dither_table_g(PLT)
	ldr	r2, [sp]
	add	r0, r0, r2
	vld1.8	{d16}, [r0]
	vmovl.u8	q9, d16
	vstr	d18, [sp, #24]
	vstr	d19, [sp, #32]
	bl	libaroma_dither_table_b(PLT)
	ldr	r3, [sp, #4]
	ldr	r2, [sp]
	vldr	d6, [sp, #8]
	vldr	d7, [sp, #16]
	and	lr, r3, #2016
	and	r1, r3, #63488
	lsl	ip, r3, #3
	add	r2, r2, r0
	asrs	r1, r1, #8
	asr	r0, lr, #3
	uxtb	ip, ip
	vld1.8	{d30}, [r2]
	smulbb	r1, r1, fp
	rsb	lr, fp, #256
	smulbb	ip, ip, fp
	vmovl.u8	q15, d30
	smulbb	r0, r0, fp
	rsb	r2, r8, r7
	vdup.16	q13, r1
	movs	r1, #0
	vdup.16	q14, ip
	mov	ip, r9
	vdup.16	q12, r0
	vdup.16	q9, lr
	vldr	d4, [sp, #24]
	vldr	d5, [sp, #32]
.L22:
	vld1.16	{d16-d17}, [ip]
	adds	r1, r1, #8
	vand	q11, q8, q6
	cmp	r1, r2
	vand	q1, q8, q5
	vand	q10, q8, q7
	vrshr.u16	q11, q11, #3
	vrshr.u16	q8, q1, #8
	vmul.i16	q11, q11, q9
	vmul.i16	q8, q8, q9
	vshl.i16	q10, q10, #3
	vadd.i16	q11, q11, q12
	vmul.i16	q10, q10, q9
	vadd.i16	q8, q8, q13
	vshr.u16	q11, q11, #8
	vshr.u16	q8, q8, #8
	vadd.i16	q11, q11, q2
	vadd.i16	q8, q8, q3
	vadd.i16	q10, q10, q14
	vmin.u16	q11, q11, q4
	vmin.u16	q8, q8, q4
	vshr.u16	q10, q10, #8
	vadd.i16	q10, q10, q15
	vshr.u16	q8, q8, #3
	vshr.u16	q11, q11, #2
	vmin.u16	q10, q10, q4
	vqshl.u16	q8, q8, #11
	vqshl.u16	q11, q11, #5
	vshr.u16	q10, q10, #3
	vorr	q8, q8, q11
	vorr	q8, q8, q10
	vst1.16	{d16-d17}, [ip]!
	blt	.L22
	b	.L21
.L24:
	vdup.16	q8, r0
	rsb	r8, r3, r7
	mov	ip, r9
	movs	r5, #0
.L27:
	vmov	q12, q8  @ v8hi
	adds	r5, r5, #32
	vmov	q13, q8  @ v8hi
	mov	r1, ip
	vmov	q14, q8  @ v8hi
	cmp	r8, r5
	vmov	q15, q8  @ v8hi
	add	ip, ip, #64
	vst4.16	{d24, d26, d28, d30}, [r1]!
	vst4.16	{d25, d27, d29, d31}, [r1]
	bgt	.L27
	add	r1, sp, #40
	vstmia	r1, {d24-d31}
	b	.L26
.L50:
	mov	r3, r2
	b	.L30
.L62:
	bl	sqrt(PLT)
	ldr	r3, [r6]
	fcpyd	d16, d0
	b	.L15
.L65:
	.align	3
.L64:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.size	libaroma_draw_circle._omp_fn.6, .-libaroma_draw_circle._omp_fn.6
	.section	.text.libaroma_draw_rect._omp_fn.4,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_draw_rect._omp_fn.4, %function
libaroma_draw_rect._omp_fn.4:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #76
	ldr	r5, [r0, #8]
	bl	omp_get_num_threads(PLT)
	mov	r7, r0
	bl	omp_get_thread_num(PLT)
	ldr	r3, [r10, #16]
	mov	r6, r0
	mov	r1, r7
	rsb	r8, r5, r3
	mov	r0, r8
	bl	__aeabi_idiv(PLT)
	mov	r1, r7
	mov	r4, r0
	mov	r0, r8
	bl	__aeabi_idivmod(PLT)
	cmp	r6, r1
	itt	lt
	addlt	r4, r4, #1
	movlt	r1, #0
	mla	r6, r6, r4, r1
	add	r4, r4, r6
	cmp	r6, r4
	bge	.L66
	vmov.i16	q4, #255  @ v8hi
	add	r6, r6, r5
	vmov.i16	q6, #63488  @ v8hi
	add	fp, r4, r5
.L92:
	ldr	r3, [r10]
	ldrb	r8, [r10, #22]	@ zero_extendqisi2
	ldr	r1, [r10, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r3, #16]
	cmp	r8, #255
	ldrh	r9, [r10, #20]
	ldr	r7, [r10, #12]
	mul	r2, r2, r6
	add	r5, r2, r1
	add	r5, r3, r5, lsl #1
	beq	.L115
	cmp	r8, #0
	beq	.L72
	asrs	r3, r7, #31
	cmp	r7, #7
	lsr	r3, r3, #29
	add	r4, r7, r3
	and	r4, r4, #7
	sub	r4, r4, r3
	bgt	.L87
.L89:
	cmp	r4, #0
	ble	.L72
	subs	r4, r7, r4
	cmp	r7, r4
	ble	.L72
	add	r5, r5, r4, lsl #1
.L91:
	ldrh	r0, [r5]
	mov	r1, r9
	mov	r2, r8
	bl	libaroma_alpha32(PLT)
	mov	r1, r6
	mov	r2, r0
	mov	r0, r4
	adds	r4, r4, #1
	bl	libaroma_dither(PLT)
	cmp	r4, r7
	strh	r0, [r5], #2	@ movhi
	bne	.L91
.L72:
	adds	r6, r6, #1
	cmp	fp, r6
	bgt	.L92
.L66:
	add	sp, sp, #76
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L87:
	bl	libaroma_dither_table_r(PLT)
	and	r3, r6, #7
	lsls	r3, r3, #3
	add	r0, r0, r3
	vld1.8	{d14}, [r0]
	str	r3, [sp, #4]
	bl	libaroma_dither_table_g(PLT)
	ldr	r3, [sp, #4]
	vmovl.u8	q7, d14
	add	r0, r0, r3
	vld1.8	{d10}, [r0]
	bl	libaroma_dither_table_b(PLT)
	ldr	r3, [sp, #4]
	lsl	lr, r9, #3
	and	r1, r9, #2016
	vmovl.u8	q5, d10
	and	r2, r9, #63488
	add	ip, r0, r3
	asrs	r2, r2, #8
	uxtb	r3, lr
	asr	lr, r1, #3
	vld1.8	{d30}, [ip]
	smulbb	ip, r2, r8
	smulbb	r3, r3, r8
	rsb	r0, r8, #256
	smulbb	lr, lr, r8
	vmovl.u8	q15, d30
	subs	r1, r7, r4
	vdup.16	q13, ip
	mov	r2, r5
	vdup.16	q14, r3
	movs	r3, #0
	vdup.16	q12, lr
	vdup.16	q9, r0
.L90:
	vld1.16	{d16-d17}, [r2]
	adds	r3, r3, #8
	vand	q3, q8, q6
	cmp	r3, r1
	vldr	d4, .L116
	vldr	d5, .L116+8
	vand	q11, q8, q2
	vmov.i16	q2, #31  @ v8hi
	vand	q10, q8, q2
	vrshr.u16	q11, q11, #3
	vrshr.u16	q8, q3, #8
	vmul.i16	q11, q11, q9
	vmul.i16	q8, q8, q9
	vshl.i16	q10, q10, #3
	vadd.i16	q11, q11, q12
	vmul.i16	q10, q10, q9
	vadd.i16	q8, q8, q13
	vshr.u16	q11, q11, #8
	vshr.u16	q8, q8, #8
	vadd.i16	q11, q11, q5
	vadd.i16	q8, q8, q7
	vadd.i16	q10, q10, q14
	vmin.u16	q11, q11, q4
	vmin.u16	q8, q8, q4
	vshr.u16	q10, q10, #8
	vadd.i16	q10, q10, q15
	vshr.u16	q8, q8, #3
	vshr.u16	q11, q11, #2
	vmin.u16	q10, q10, q4
	vqshl.u16	q8, q8, #11
	vqshl.u16	q11, q11, #5
	vshr.u16	q10, q10, #3
	vorr	q8, q8, q11
	vorr	q8, q8, q10
	vst1.16	{d16-d17}, [r2]!
	blt	.L90
	b	.L89
.L115:
	asrs	r4, r7, #31
	cmp	r7, #31
	lsr	r4, r4, #27
	add	r0, r7, r4
	and	r0, r0, #31
	sub	r0, r0, r4
	bgt	.L70
.L73:
	cmp	r0, #0
	ble	.L72
	subs	r0, r7, r0
	cmp	r7, r0
	ble	.L72
	add	r1, r1, r0
	subs	r4, r7, r0
	add	r2, r2, r1
	add	r3, r3, r2, lsl #1
	ubfx	r1, r3, #1, #2
	negs	r1, r1
	and	r1, r1, #7
	cmp	r1, r4
	it	cs
	movcs	r1, r4
	cmp	r4, #10
	it	ls
	movls	r1, r4
	cbz	r1, .L78
	cmp	r1, #1
	strh	r9, [r5, r0, lsl #1]	@ movhi
	add	r2, r0, #1
	bls	.L103
	cmp	r1, #2
	strh	r9, [r5, r2, lsl #1]	@ movhi
	add	r2, r0, #2
	beq	.L103
	cmp	r1, #3
	strh	r9, [r5, r2, lsl #1]	@ movhi
	add	r2, r0, #3
	beq	.L103
	cmp	r1, #4
	strh	r9, [r5, r2, lsl #1]	@ movhi
	add	r2, r0, #4
	beq	.L103
	cmp	r1, #5
	strh	r9, [r5, r2, lsl #1]	@ movhi
	add	r2, r0, #5
	beq	.L103
	cmp	r1, #6
	strh	r9, [r5, r2, lsl #1]	@ movhi
	add	r2, r0, #6
	beq	.L103
	cmp	r1, #7
	strh	r9, [r5, r2, lsl #1]	@ movhi
	add	r2, r0, #7
	beq	.L103
	cmp	r1, #8
	strh	r9, [r5, r2, lsl #1]	@ movhi
	add	r2, r0, #8
	beq	.L103
	cmp	r1, #9
	strh	r9, [r5, r2, lsl #1]	@ movhi
	add	r2, r0, #9
	beq	.L103
	adds	r0, r0, #10
	strh	r9, [r5, r2, lsl #1]	@ movhi
.L79:
	cmp	r1, r4
	beq	.L72
.L78:
	subs	r4, r4, r1
	lsrs	r2, r4, #3
	lsl	lr, r2, #3
	cbz	r2, .L81
	add	r1, r3, r1, lsl #1
	vdup.16	q8, r9
	movs	r3, #0
.L86:
	adds	r3, r3, #1
	vst1.64	{d16-d17}, [r1:64]!
	cmp	r3, r2
	bcc	.L86
	cmp	lr, r4
	add	r0, r0, lr
	beq	.L72
.L81:
	adds	r3, r0, #1
	strh	r9, [r5, r0, lsl #1]	@ movhi
	cmp	r7, r3
	ble	.L72
	adds	r2, r0, #2
	strh	r9, [r5, r3, lsl #1]	@ movhi
	cmp	r7, r2
	ble	.L72
	adds	r3, r0, #3
	strh	r9, [r5, r2, lsl #1]	@ movhi
	cmp	r7, r3
	ble	.L72
	adds	r2, r0, #4
	strh	r9, [r5, r3, lsl #1]	@ movhi
	cmp	r7, r2
	ble	.L72
	adds	r3, r0, #5
	strh	r9, [r5, r2, lsl #1]	@ movhi
	cmp	r7, r3
	ble	.L72
	adds	r0, r0, #6
	adds	r6, r6, #1
	cmp	r7, r0
	strh	r9, [r5, r3, lsl #1]	@ movhi
	it	gt
	strhgt	r9, [r5, r0, lsl #1]	@ movhi
	cmp	fp, r6
	bgt	.L92
	b	.L66
.L103:
	mov	r0, r2
	b	.L79
.L70:
	vdup.16	q8, r9
	rsb	r8, r0, r7
	mov	ip, r5
	mov	lr, #0
.L74:
	vmov	q12, q8  @ v8hi
	add	lr, lr, #32
	vmov	q13, q8  @ v8hi
	mov	r4, ip
	vmov	q14, q8  @ v8hi
	cmp	lr, r8
	vmov	q15, q8  @ v8hi
	add	ip, ip, #64
	vst4.16	{d24, d26, d28, d30}, [r4]!
	vst4.16	{d25, d27, d29, d31}, [r4]
	blt	.L74
	add	r4, sp, #8
	vstmia	r4, {d24-d31}
	b	.L73
.L117:
	.align	3
.L116:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.size	libaroma_draw_rect._omp_fn.4, .-libaroma_draw_rect._omp_fn.4
	.section	.text.libaroma_draw_ex2._omp_fn.3,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_draw_ex2._omp_fn.3, %function
libaroma_draw_ex2._omp_fn.3:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldr	r6, [r0, #4]
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #60
	bl	omp_get_num_threads(PLT)
	mov	r5, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r5
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_idiv(PLT)
	mov	r1, r5
	mov	r4, r0
	mov	r0, r6
	bl	__aeabi_idivmod(PLT)
	cmp	r8, r1
	itt	lt
	addlt	r4, r4, #1
	movlt	r1, #0
	mla	r8, r8, r4, r1
	add	r4, r8, r4
	cmp	r8, r4
	str	r4, [sp, #12]
	bge	.L118
	vmov.i16	q6, #63488  @ v8hi
	movs	r3, #15
	vmov.i16	q5, #31  @ v8hi
	vldr	d8, .L168
	vldr	d9, .L168+8
	vmov.i16	q7, #255  @ v8hi
	movt	r3, 32768
	str	r3, [sp, #48]
.L123:
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #8]
	add	ip, r8, r3
	ldr	r5, [r7, #24]
	ldr	r4, [r7, #16]
	add	r2, r2, r8
	ldrb	r3, [r7, #42]	@ zero_extendqisi2
	mla	ip, r0, ip, r1
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #32]
	mla	r2, r5, r2, r4
	add	ip, ip, r0
	add	r2, r2, r1
	cmp	r3, #0
	bne	.L165
	ldrb	r6, [r7, #41]	@ zero_extendqisi2
	ldrb	r5, [r7, #40]	@ zero_extendqisi2
	ldr	r4, [r7]
	cbnz	r6, .L124
	cmp	r5, #255
	beq	.L163
	cbz	r5, .L127
	asrs	r3, r4, #31
	cmp	r4, #7
	lsr	r3, r3, #29
	add	r9, r4, r3
	and	r9, r9, #7
	rsb	r9, r3, r9
	bgt	.L128
.L130:
	cmp	r9, #0
	ble	.L127
	rsb	r6, r9, r4
	cmp	r4, r6
	ble	.L127
	add	r10, r6, #-2147483648
	add	r9, ip, r6, lsl #1
	add	r10, r10, #-1
	add	r10, r2, r10, lsl #1
.L132:
	ldrh	r0, [r9]
	mov	r2, r5
	ldrh	r1, [r10, #2]!
	bl	libaroma_alpha32(PLT)
	mov	r1, r8
	mov	r2, r0
	mov	r0, r6
	adds	r6, r6, #1
	bl	libaroma_dither(PLT)
	cmp	r6, r4
	strh	r0, [r9], #2	@ movhi
	bne	.L132
.L127:
	ldr	r3, [sp, #12]
	add	r8, r8, #1
	cmp	r8, r3
	bne	.L123
.L118:
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L124:
	cmp	r5, #255
	beq	.L163
	cmp	r5, #0
	beq	.L127
	asrs	r1, r4, #31
	cmp	r4, #7
	lsr	r1, r1, #29
	add	r6, r4, r1
	and	r6, r6, #7
	sub	r6, r6, r1
	bgt	.L134
.L136:
	cmp	r6, #0
	ble	.L127
	subs	r6, r4, r6
	cmp	r4, r6
	ble	.L127
	add	r10, r6, #-2147483648
	add	r9, ip, r6, lsl #1
	add	r10, r10, #-1
	add	r10, r2, r10, lsl #1
.L138:
	ldrh	r0, [r9]
	adds	r6, r6, #1
	ldrh	r1, [r10, #2]!
	mov	r2, r5
	bl	libaroma_alpha(PLT)
	cmp	r6, r4
	strh	r0, [r9], #2	@ movhi
	bne	.L138
	ldr	r3, [sp, #12]
	add	r8, r8, #1
	cmp	r8, r3
	bne	.L123
	b	.L118
.L165:
	ldrb	r4, [r7, #40]	@ zero_extendqisi2
	ldr	r9, [r7]
	cmp	r4, #255
	beq	.L166
	cmp	r4, #0
	beq	.L167
	asr	r3, r9, #31
	cmp	r9, #7
	lsr	r3, r3, #29
	add	r10, r9, r3
	and	r10, r10, #7
	rsb	r10, r3, r10
	bgt	.L141
.L143:
	cmp	r10, #0
	ble	.L127
	rsb	r10, r10, r9
	cmp	r9, r10
	ble	.L127
	ldr	r1, [sp, #48]
	sub	r3, r9, #15
	add	fp, r10, #1
	cmp	r9, r1
	it	ge
	cmpge	r3, fp
	ble	.L145
	lsl	r5, r10, #1
	mov	fp, r3
	str	ip, [sp, #16]
	adds	r6, r2, r5
	add	r5, r5, ip
	str	r2, [sp, #32]
	str	r7, [sp, #52]
.L146:
	ldrh	r0, [r6]
	mov	r1, r4
	pld	[r6, #20]
	add	r10, r10, #16
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5]	@ movhi
	ldrh	r0, [r6, #2]
	add	r7, r10, #1
	pld	[r5, #20]
	adds	r6, r6, #32
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #2]	@ movhi
	ldrh	r0, [r6, #-28]
	adds	r5, r5, #32
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-28]	@ movhi
	ldrh	r0, [r6, #-26]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-26]	@ movhi
	ldrh	r0, [r6, #-24]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-24]	@ movhi
	ldrh	r0, [r6, #-22]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-22]	@ movhi
	ldrh	r0, [r6, #-20]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-20]	@ movhi
	ldrh	r0, [r6, #-18]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-18]	@ movhi
	ldrh	r0, [r6, #-16]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-16]	@ movhi
	ldrh	r0, [r6, #-14]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-14]	@ movhi
	ldrh	r0, [r6, #-12]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-12]	@ movhi
	ldrh	r0, [r6, #-10]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-10]	@ movhi
	ldrh	r0, [r6, #-8]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-8]	@ movhi
	ldrh	r0, [r6, #-6]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-6]	@ movhi
	ldrh	r0, [r6, #-4]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r5, #-4]	@ movhi
	ldrh	r0, [r6, #-2]
	bl	libaroma_alphab(PLT)
	cmp	fp, r7
	strh	r0, [r5, #-2]	@ movhi
	bgt	.L146
	mov	fp, r7
	ldr	ip, [sp, #16]
	ldr	r2, [sp, #32]
	ldr	r7, [sp, #52]
.L145:
	lsl	r10, r10, #1
	movs	r6, #0
	add	r5, r2, r10
	add	r10, r10, ip
.L147:
	ldrh	r0, [r5, r6]
	mov	r1, r4
	bl	libaroma_alphab(PLT)
	cmp	r9, fp
	strh	r0, [r10, r6]	@ movhi
	add	fp, fp, #1
	add	r6, r6, #2
	bgt	.L147
	ldr	r3, [sp, #12]
	add	r8, r8, #1
	cmp	r8, r3
	bne	.L123
	b	.L118
.L163:
	cmp	ip, r2
	beq	.L127
	mov	r1, r2
	mov	r0, ip
	lsls	r2, r4, #1
	add	r8, r8, #1
	bl	memcpy(PLT)
	ldr	r3, [sp, #12]
	cmp	r8, r3
	bne	.L123
	b	.L118
.L166:
	cmp	ip, r2
	beq	.L127
	mov	r1, r2
	mov	r0, ip
	lsl	r2, r9, #1
	add	r8, r8, #1
	bl	memcpy(PLT)
	ldr	r3, [sp, #12]
	cmp	r8, r3
	bne	.L123
	b	.L118
.L141:
	vdup.16	q9, r4
	rsb	r5, r10, r9
	mov	r0, r2
	mov	r1, ip
	movs	r3, #0
.L144:
	vld1.16	{d16-d17}, [r0]!
	adds	r3, r3, #8
	vand	q12, q8, q6
	cmp	r5, r3
	vand	q11, q8, q4
	vand	q10, q8, q5
	vrshr.u16	q12, q12, #8
	vrshr.u16	q11, q11, #3
	vmul.i16	q12, q12, q9
	vmul.i16	q11, q11, q9
	vshl.i16	q10, q10, #3
	vmul.i16	q10, q10, q9
	vshr.u16	q8, q12, #11
	vshr.u16	q11, q11, #10
	vshl.i16	q8, q8, #11
	vshl.i16	q11, q11, #5
	vshr.u16	q10, q10, #11
	vorr	q8, q8, q11
	vorr	q8, q8, q10
	vst1.16	{d16-d17}, [r1]!
	bgt	.L144
	b	.L143
.L167:
	mov	r0, ip
	mov	r1, r4
	lsl	r2, r9, #1
	add	r8, r8, #1
	bl	memset(PLT)
	ldr	r3, [sp, #12]
	cmp	r8, r3
	bne	.L123
	b	.L118
.L169:
	.align	3
.L168:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
.L134:
	rsb	lr, r5, #256
	vdup.16	q11, r5
	rsb	r9, r6, r4
	mov	r1, ip
	mov	r0, r2
	vdup.16	q10, lr
.L137:
	vld1.16	{d16-d17}, [r0]!
	adds	r3, r3, #8
	vand	q15, q8, q6
	cmp	r3, r9
	vld1.16	{d18-d19}, [r1]
	vand	q3, q9, q6
	vand	q14, q9, q4
	vand	q12, q8, q4
	vrshr.u16	q3, q3, #8
	vrshr.u16	q15, q15, #8
	vrshr.u16	q14, q14, #3
	vrshr.u16	q12, q12, #3
	vand	q13, q8, q5
	vmul.i16	q3, q3, q10
	vmul.i16	q15, q15, q11
	vmul.i16	q14, q14, q10
	vand	q9, q9, q5
	vmul.i16	q12, q12, q11
	vshl.i16	q9, q9, #3
	vshl.i16	q13, q13, #3
	vmul.i16	q9, q9, q10
	vmul.i16	q13, q13, q11
	vadd.i16	q8, q3, q15
	vadd.i16	q12, q14, q12
	vshr.u16	q8, q8, #11
	vshr.u16	q12, q12, #10
	vadd.i16	q9, q9, q13
	vshl.i16	q8, q8, #11
	vshl.i16	q12, q12, #5
	vshr.u16	q9, q9, #11
	vorr	q8, q8, q12
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r1]!
	blt	.L137
	b	.L136
.L128:
	and	r10, r8, #7
	str	r2, [sp, #4]
	lsl	r10, r10, #3
	str	ip, [sp, #8]
	bl	libaroma_dither_table_r(PLT)
	add	r0, r0, r10
	vld1.8	{d16}, [r0]
	vmovl.u8	q9, d16
	vstr	d18, [sp, #16]
	vstr	d19, [sp, #24]
	bl	libaroma_dither_table_g(PLT)
	add	r0, r0, r10
	vld1.8	{d16}, [r0]
	vmovl.u8	q15, d16
	vstr	d30, [sp, #32]
	vstr	d31, [sp, #40]
	bl	libaroma_dither_table_b(PLT)
	add	r0, r0, r10
	ldr	ip, [sp, #8]
	ldr	r2, [sp, #4]
	rsb	r1, r5, #256
	vld1.8	{d26}, [r0]
	rsb	lr, r9, r4
	mov	r3, ip
	vmovl.u8	q13, d26
	mov	r0, r2
	vdup.16	q11, r5
	vdup.16	q10, r1
.L131:
	vld1.16	{d16-d17}, [r0]!
	adds	r6, r6, #8
	vand	q3, q8, q6
	cmp	r6, lr
	vld1.16	{d18-d19}, [r3]
	vand	q2, q9, q6
	vand	q15, q9, q4
	vand	q12, q8, q4
	vrshr.u16	q2, q2, #8
	vrshr.u16	q3, q3, #8
	vrshr.u16	q15, q15, #3
	vrshr.u16	q12, q12, #3
	vmul.i16	q2, q2, q10
	vmul.i16	q3, q3, q11
	vmul.i16	q15, q15, q10
	vmul.i16	q12, q12, q11
	vand	q14, q8, q5
	vand	q9, q9, q5
	vadd.i16	q8, q2, q3
	vshl.i16	q14, q14, #3
	vshl.i16	q9, q9, #3
	vadd.i16	q12, q15, q12
	vmul.i16	q9, q9, q10
	vldr	d30, [sp, #16]
	vldr	d31, [sp, #24]
	vmul.i16	q14, q14, q11
	vshr.u16	q8, q8, #8
	vshr.u16	q12, q12, #8
	vadd.i16	q8, q8, q15
	vldr	d30, [sp, #32]
	vldr	d31, [sp, #40]
	vadd.i16	q12, q12, q15
	vadd.i16	q9, q9, q14
	vmin.u16	q8, q8, q7
	vmin.u16	q12, q12, q7
	vshr.u16	q9, q9, #8
	vadd.i16	q9, q9, q13
	vshr.u16	q8, q8, #3
	vshr.u16	q12, q12, #2
	vmin.u16	q9, q9, q7
	vqshl.u16	q8, q8, #11
	vqshl.u16	q12, q12, #5
	vshr.u16	q9, q9, #3
	vorr	q8, q8, q12
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r3]!
	blt	.L131
	b	.L130
	.size	libaroma_draw_ex2._omp_fn.3, .-libaroma_draw_ex2._omp_fn.3
	.section	.text.libaroma_draw_ex2._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_draw_ex2._omp_fn.0, %function
libaroma_draw_ex2._omp_fn.0:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r6, [r0, #8]
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #44
	bl	omp_get_num_threads(PLT)
	mov	r4, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r4
	mov	r7, r0
	mov	r0, r6
	bl	__aeabi_idiv(PLT)
	mov	r1, r4
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_idivmod(PLT)
	cmp	r7, r1
	itt	lt
	addlt	r8, r8, #1
	movlt	r1, #0
	mla	r7, r7, r8, r1
	add	r8, r8, r7
	cmp	r7, r8
	bge	.L170
	vmov.i16	q4, #255  @ v8hi
	vldr	d10, .L197
	vldr	d11, .L197+8
	vmov.i16	q7, #63488  @ v8hi
	vmov.i16	q6, #31  @ v8hi
.L175:
	ldr	r6, [r5, #20]
	ldr	r0, [r5, #36]
	ldr	r1, [r5, #28]
	add	r6, r6, r7
	ldrb	r3, [r5, #50]	@ zero_extendqisi2
	ldr	r2, [r5, #44]
	mla	r6, r0, r6, r1
	add	r6, r6, r2
	cmp	r3, #0
	bne	.L196
	ldr	r2, [r5, #16]
	ldr	r0, [r5, #32]
	ldr	r1, [r5, #24]
	add	lr, r7, r2
	ldrb	r4, [r5, #51]	@ zero_extendqisi2
	ldr	r2, [r5, #40]
	mla	r9, r0, lr, r1
	add	r9, r9, r2
	cmp	r4, #0
	bne	.L176
	ldmia	r5, {r2, r10}
	ldr	r3, [r5, #12]
	ldr	r0, [r2, #8]
	cmp	r10, #7
	ldr	r1, [r2, #20]
	asr	r2, r10, #31
	lsr	r2, r2, #29
	mla	r3, r0, lr, r3
	add	ip, r10, r2
	and	ip, ip, #7
	add	fp, r1, r3
	rsb	ip, r2, ip
	bgt	.L177
.L180:
	cmp	ip, #0
	ble	.L179
	rsb	r4, ip, r10
	cmp	r10, r4
	ble	.L179
	add	r3, r4, #-2147483648
	add	r6, r6, r4, lsl #1
	subs	r3, r3, #1
	add	r9, r9, r3, lsl #1
.L182:
	ldrb	r2, [fp, r4]	@ zero_extendqisi2
	ldrh	r0, [r6]
	ldrh	r1, [r9, #2]!
	bl	libaroma_alpha32(PLT)
	mov	r1, r7
	mov	r2, r0
	mov	r0, r4
	adds	r4, r4, #1
	bl	libaroma_dither(PLT)
	cmp	r4, r10
	strh	r0, [r6], #2	@ movhi
	bne	.L182
.L179:
	adds	r7, r7, #1
	cmp	r7, r8
	bne	.L175
.L170:
	add	sp, sp, #44
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L176:
	ldmia	r5, {r0, r1}
	ldr	r2, [r5, #12]
	ldr	r4, [r0, #8]
	cmp	r1, #7
	ldr	ip, [r0, #20]
	asr	r0, r1, #31
	lsr	r0, r0, #29
	mla	lr, r4, lr, r2
	add	r4, r1, r0
	and	r4, r4, #7
	add	lr, lr, ip
	sub	r4, r4, r0
	bgt	.L183
.L185:
	cmp	r4, #0
	ble	.L179
	subs	r4, r1, r4
	cmp	r1, r4
	ble	.L179
	add	r3, r4, #-2147483648
	add	r6, r6, r4, lsl #1
	subs	r3, r3, #1
	add	r9, r9, r3, lsl #1
	add	r10, lr, r1
	add	r4, r4, lr
.L187:
	ldrb	r2, [r4], #1	@ zero_extendqisi2
	ldrh	r0, [r6]
	ldrh	r1, [r9, #2]!
	bl	libaroma_alpha(PLT)
	cmp	r4, r10
	strh	r0, [r6], #2	@ movhi
	bne	.L187
	adds	r7, r7, #1
	cmp	r7, r8
	bne	.L175
	b	.L170
.L196:
	ldmia	r5, {r0, r1}
	ldr	r2, [r5, #12]
	ldr	lr, [r5, #16]
	ldr	r4, [r0, #8]
	cmp	r1, #7
	asr	r3, r1, #31
	ldr	r0, [r0, #20]
	add	lr, lr, r7
	ldrh	r9, [r5, #48]
	lsr	r3, r3, #29
	mla	r2, r4, lr, r2
	add	r4, r1, r3
	and	r4, r4, #7
	sub	r4, r4, r3
	add	r10, r0, r2
	bgt	.L188
.L190:
	cmp	r4, #0
	ble	.L179
	subs	r4, r1, r4
	cmp	r1, r4
	ble	.L179
	add	r6, r6, r4, lsl #1
	add	r4, r4, r10
	add	r10, r10, r1
.L192:
	ldrb	r2, [r4], #1	@ zero_extendqisi2
	mov	r1, r9
	ldrh	r0, [r6]
	bl	libaroma_alpha(PLT)
	cmp	r4, r10
	strh	r0, [r6], #2	@ movhi
	bne	.L192
	adds	r7, r7, #1
	cmp	r7, r8
	bne	.L175
	b	.L170
.L177:
	str	ip, [sp]
	bl	libaroma_dither_table_r(PLT)
	and	r3, r7, #7
	lsls	r3, r3, #3
	add	r0, r0, r3
	vld1.8	{d16}, [r0]
	str	r3, [sp, #4]
	vmovl.u8	q1, d16
	vstr	d2, [sp, #8]
	vstr	d3, [sp, #16]
	bl	libaroma_dither_table_g(PLT)
	ldr	r3, [sp, #4]
	add	r0, r0, r3
	vld1.8	{d16}, [r0]
	vmovl.u8	q9, d16
	vstr	d18, [sp, #24]
	vstr	d19, [sp, #32]
	bl	libaroma_dither_table_b(PLT)
	ldr	r3, [sp, #4]
	mov	r2, r6
	ldr	ip, [sp]
	mov	r1, r9
	vldr	d28, [sp, #8]
	vldr	d29, [sp, #16]
	add	r0, r0, r3
	mov	r3, r4
	vldr	d6, [sp, #24]
	vldr	d7, [sp, #32]
	rsb	r4, ip, r10
	vld1.8	{d30}, [r0]
	vmovl.u8	q15, d30
.L181:
	add	r0, fp, r3
	vld1.16	{d18-d19}, [r2]
	vmov.i16	q1, #256  @ v8hi
	vand	q13, q9, q7
	vld1.8	{d16}, [r0]
	adds	r3, r3, #8
	vand	q0, q9, q5
	cmp	r3, r4
	vld1.16	{d20-d21}, [r1]!
	vmovl.u8	q8, d16
	vand	q12, q10, q7
	vrshr.u16	q13, q13, #8
	vsub.i16	q11, q1, q8
	vrshr.u16	q12, q12, #8
	vmul.i16	q13, q13, q11
	vmul.i16	q12, q12, q8
	vand	q2, q10, q5
	vrshr.u16	q0, q0, #3
	vand	q1, q9, q6
	vrshr.u16	q2, q2, #3
	vmul.i16	q0, q0, q11
	vmul.i16	q2, q2, q8
	vadd.i16	q12, q13, q12
	vand	q13, q10, q6
	vshl.i16	q1, q1, #3
	vshr.u16	q12, q12, #8
	vshl.i16	q13, q13, #3
	vmul.i16	q11, q1, q11
	vmul.i16	q13, q13, q8
	vadd.i16	q2, q0, q2
	vadd.i16	q12, q12, q14
	vshr.u16	q2, q2, #8
	vadd.i16	q13, q11, q13
	vadd.i16	q2, q2, q3
	vmin.u16	q12, q12, q4
	vshr.u16	q13, q13, #8
	vmin.u16	q2, q2, q4
	vadd.i16	q13, q13, q15
	vshr.u16	q12, q12, #3
	vceq.i16	q11, q8, q4
	vshr.u16	q2, q2, #2
	vmin.u16	q13, q13, q4
	vqshl.u16	q12, q12, #11
	vqshl.u16	q2, q2, #5
	vceq.i16	q8, q8, #0
	vshr.u16	q13, q13, #3
	vorr	q12, q12, q2
	vorr	q12, q12, q13
	vbsl	q11, q10, q12
	vbsl	q8, q9, q11
	vst1.16	{d16-d17}, [r2]!
	blt	.L181
	b	.L180
.L183:
	rsb	r10, r4, r1
	mov	r2, r6
	mov	r0, r9
.L186:
	add	ip, lr, r3
	vld1.16	{d18-d19}, [r2]
	vand	q2, q9, q7
	vmov.i16	q1, #256  @ v8hi
	vld1.8	{d16}, [ip]
	adds	r3, r3, #8
	vand	q3, q9, q5
	cmp	r3, r10
	vld1.16	{d20-d21}, [r0]!
	vmovl.u8	q8, d16
	vand	q12, q10, q7
	vand	q14, q10, q5
	vsub.i16	q11, q1, q8
	vrshr.u16	q2, q2, #8
	vrshr.u16	q12, q12, #8
	vrshr.u16	q3, q3, #3
	vrshr.u16	q14, q14, #3
	vmul.i16	q2, q2, q11
	vmul.i16	q12, q12, q8
	vmul.i16	q3, q3, q11
	vmul.i16	q14, q14, q8
	vand	q15, q9, q6
	vand	q13, q10, q6
	vadd.i16	q12, q2, q12
	vshl.i16	q15, q15, #3
	vshl.i16	q13, q13, #3
	vmul.i16	q15, q15, q11
	vmul.i16	q13, q13, q8
	vadd.i16	q14, q3, q14
	vshr.u16	q12, q12, #11
	vceq.i16	q11, q8, q4
	vshr.u16	q14, q14, #10
	vadd.i16	q13, q15, q13
	vshl.i16	q12, q12, #11
	vshl.i16	q14, q14, #5
	vshr.u16	q13, q13, #11
	vorr	q12, q12, q14
	vceq.i16	q8, q8, #0
	vorr	q12, q12, q13
	vbsl	q11, q10, q12
	vbsl	q8, q9, q11
	vst1.16	{d16-d17}, [r2]!
	blt	.L186
	b	.L185
.L198:
	.align	3
.L197:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
.L188:
	and	r3, r9, #63488
	and	ip, r9, #2016
	lsl	r0, r9, #3
	asrs	r3, r3, #8
	asr	ip, ip, #3
	vdup.16	q3, r9
	and	r0, r0, #248
	vdup.16	q15, r3
	rsb	lr, r4, r1
	mov	r2, r6
	movs	r3, #0
	vdup.16	q14, ip
	vdup.16	q13, r0
.L191:
	add	r0, r10, r3
	vld1.16	{d18-d19}, [r2]
	vmov.i16	q12, #256  @ v8hi
	vand	q11, q9, q5
	vld1.8	{d16}, [r0]
	adds	r3, r3, #8
	vand	q2, q9, q7
	cmp	lr, r3
	vmovl.u8	q8, d16
	vrshr.u16	q11, q11, #3
	vrshr.u16	q2, q2, #8
	vsub.i16	q10, q12, q8
	vmul.i16	q1, q14, q8
	vmul.i16	q11, q11, q10
	vmul.i16	q0, q15, q8
	vmul.i16	q2, q2, q10
	vand	q12, q9, q6
	vadd.i16	q11, q11, q1
	vmul.i16	q1, q13, q8
	vshl.i16	q12, q12, #3
	vadd.i16	q2, q2, q0
	vmul.i16	q12, q12, q10
	vshr.u16	q2, q2, #11
	vshr.u16	q11, q11, #10
	vceq.i16	q10, q8, q4
	vshl.i16	q2, q2, #11
	vadd.i16	q12, q12, q1
	vshl.i16	q11, q11, #5
	vceq.i16	q8, q8, #0
	vorr	q11, q2, q11
	vshr.u16	q12, q12, #11
	vorr	q11, q11, q12
	vbsl	q10, q3, q11
	vbsl	q8, q9, q10
	vst1.16	{d16-d17}, [r2]!
	bgt	.L191
	b	.L190
	.size	libaroma_draw_ex2._omp_fn.0, .-libaroma_draw_ex2._omp_fn.0
	.section	.text.libaroma_draw_mask_circle._omp_fn.5,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_draw_mask_circle._omp_fn.5, %function
libaroma_draw_mask_circle._omp_fn.5:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r6, [r0, #24]
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
	sub	sp, sp, #12
	add	r9, r6, #1
	bl	omp_get_num_threads(PLT)
	add	r9, r9, r6
	mov	r8, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r8
	mov	r4, r0
	mov	r0, r9
	bl	__aeabi_idiv(PLT)
	mov	r1, r8
	mov	r7, r0
	mov	r0, r9
	bl	__aeabi_idivmod(PLT)
	cmp	r4, r1
	itt	lt
	addlt	r7, r7, #1
	movlt	r1, #0
	mla	r4, r4, r7, r1
	add	r7, r7, r4
	cmp	r4, r7
	bge	.L199
	vmov.i16	q6, #63488  @ v8hi
	subs	r4, r4, r6
	vmov.i16	q5, #31  @ v8hi
	subs	r7, r7, r6
	vldr	d8, .L228
	vldr	d9, .L228+8
.L203:
	ldr	r3, [r5]
	ldr	r6, [r5, #12]
	ldr	r1, [r5, #20]
	ldr	r2, [r3, #4]
	add	r6, r6, r4
	cmp	r6, r2
	bge	.L216
	cmp	r6, #0
	blt	.L216
	ldr	r0, [r5, #4]
	add	r1, r1, r4
	ldr	r2, [r0, #4]
	cmp	r1, r2
	bge	.L216
	cmp	r1, #0
	blt	.L216
	ldr	r2, [r5, #28]
	ldr	r9, [r3, #8]
	ldr	r10, [r0, #8]
	mls	r2, r4, r4, r2
	fmsr	s0, r2	@ int
	fsitod	d0, s0
	fsqrtd	d16, d0
	fcmpd	d16, d16
	fmstat
	bne	.L226
.L205:
	ftosizd	s15, d16
	ldr	ip, [r5, #16]
	fmrs	r2, s15	@ int
	subs	lr, ip, r2
	lsl	r8, r2, #1
	bmi	.L206
	ldr	fp, [r5, #8]
	subs	r2, fp, r2
	bmi	.L207
.L219:
	ldr	ip, [r0]
	add	fp, r8, lr
	cmp	fp, ip
	it	gt
	rsbgt	r8, lr, ip
	ldr	ip, [r3]
	add	fp, r8, r2
	cmp	fp, ip
	it	gt
	rsbgt	r8, r2, ip
	cmp	r8, #0
	ble	.L216
	ldrb	fp, [r5, #32]	@ zero_extendqisi2
	mla	r2, r6, r9, r2
	ldr	r6, [r3, #16]
	ldr	r3, [r0, #16]
	mla	r1, r1, r10, lr
	cmp	fp, #255
	add	r0, r6, r2, lsl #1
	add	r1, r3, r1, lsl #1
	beq	.L210
	cmp	fp, #0
	bne	.L227
.L216:
	adds	r4, r4, #1
	cmp	r7, r4
	bgt	.L203
.L199:
	add	sp, sp, #12
	@ sp needed
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L207:
	add	r8, r8, r2
	rsb	lr, fp, ip
	movs	r2, #0
	b	.L219
.L206:
	ldr	fp, [r5, #8]
	mov	r2, ip
	add	r8, r8, lr
	mov	lr, #0
	subs	r2, fp, r2
	bpl	.L219
	b	.L207
.L227:
	cmp	r8, #7
	and	r6, r8, #7
	bgt	.L211
.L213:
	cmp	r6, #0
	beq	.L216
	rsb	r9, r6, r8
	cmp	r8, r9
	ble	.L216
	add	r10, r9, #-2147483648
	add	r6, r0, r9, lsl #1
	add	r10, r10, #-1
	add	r10, r1, r10, lsl #1
.L215:
	ldrh	r0, [r6]
	add	r9, r9, #1
	ldrh	r1, [r10, #2]!
	mov	r2, fp
	bl	libaroma_alpha(PLT)
	cmp	r9, r8
	strh	r0, [r6], #2	@ movhi
	bne	.L215
	b	.L216
.L210:
	lsl	r2, r8, #1
	adds	r4, r4, #1
	bl	memcpy(PLT)
	cmp	r7, r4
	bgt	.L203
	b	.L199
.L211:
	rsb	r3, fp, #256
	vdup.16	q11, fp
	rsb	r2, r6, r8
	mov	ip, r0
	vdup.16	q10, r3
	mov	lr, r1
	movs	r3, #0
.L214:
	vld1.16	{d18-d19}, [ip]
	adds	r3, r3, #8
	vand	q3, q9, q6
	cmp	r3, r2
	vld1.16	{d16-d17}, [lr]!
	vand	q15, q8, q6
	vand	q14, q9, q4
	vand	q12, q8, q4
	vrshr.u16	q3, q3, #8
	vrshr.u16	q15, q15, #8
	vrshr.u16	q14, q14, #3
	vrshr.u16	q12, q12, #3
	vand	q13, q9, q5
	vmul.i16	q3, q3, q10
	vand	q9, q8, q5
	vmul.i16	q15, q15, q11
	vmul.i16	q14, q14, q10
	vmul.i16	q12, q12, q11
	vshl.i16	q13, q13, #3
	vshl.i16	q9, q9, #3
	vmul.i16	q13, q13, q10
	vmul.i16	q9, q9, q11
	vadd.i16	q8, q3, q15
	vadd.i16	q12, q14, q12
	vshr.u16	q8, q8, #11
	vshr.u16	q12, q12, #10
	vadd.i16	q9, q13, q9
	vshl.i16	q8, q8, #11
	vshl.i16	q12, q12, #5
	vshr.u16	q9, q9, #11
	vorr	q8, q8, q12
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [ip]!
	blt	.L214
	b	.L213
.L226:
	str	r1, [sp, #4]
	bl	sqrt(PLT)
	ldr	r3, [r5]
	fcpyd	d16, d0
	ldr	r0, [r5, #4]
	ldr	r1, [sp, #4]
	b	.L205
.L229:
	.align	3
.L228:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.size	libaroma_draw_mask_circle._omp_fn.5, .-libaroma_draw_mask_circle._omp_fn.5
	.section	.text.libaroma_draw_ex2._omp_fn.2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_draw_ex2._omp_fn.2, %function
libaroma_draw_ex2._omp_fn.2:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldr	r6, [r0, #8]
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #52
	bl	omp_get_num_threads(PLT)
	mov	r5, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r5
	mov	r8, r0
	mov	r0, r6
	bl	__aeabi_idiv(PLT)
	mov	r1, r5
	mov	r4, r0
	mov	r0, r6
	bl	__aeabi_idivmod(PLT)
	cmp	r8, r1
	itt	lt
	addlt	r4, r4, #1
	movlt	r1, #0
	mla	r5, r8, r4, r1
	adds	r4, r5, r4
	cmp	r5, r4
	str	r4, [sp, #24]
	bge	.L230
	vmov.i16	q7, #255  @ v8hi
	movs	r3, #15
	vmov.i16	q5, #63488  @ v8hi
	vldr	d8, .L321
	vldr	d9, .L321+8
	vmov.i16	q6, #31  @ v8hi
	movt	r3, 32768
	str	r3, [sp, #28]
.L235:
	ldr	r6, [r7, #4]
	lsls	r0, r6, #1
	bl	malloc(PLT)
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #28]
	str	r0, [sp]
	adds	r0, r5, r3
	ldrb	r4, [r7, #51]	@ zero_extendqisi2
	ldr	r3, [r7, #44]
	mla	r2, r2, r0, r1
	add	r3, r3, r2
	str	r3, [sp, #4]
	cmp	r4, #0
	bne	.L317
	ldr	r2, [r7, #16]
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #24]
	add	r10, r5, r2
	ldrb	r3, [r7, #53]	@ zero_extendqisi2
	ldr	r2, [r7, #40]
	mla	fp, r0, r10, r1
	add	fp, fp, r2
	cmp	r3, #0
	bne	.L236
	ldrb	r9, [r7, #52]	@ zero_extendqisi2
	cmp	r9, #0
	bne	.L237
	ldr	r2, [r7]
	asrs	r3, r6, #31
	ldr	r1, [r7, #12]
	cmp	r6, #7
	lsr	r3, r3, #29
	ldr	r0, [r2, #8]
	ldr	r2, [r2, #20]
	add	r4, r6, r3
	and	r4, r4, #7
	sub	r4, r4, r3
	mla	r1, r0, r10, r1
	add	r8, r2, r1
	bgt	.L238
.L241:
	cmp	r4, #0
	ble	.L240
	subs	r4, r6, r4
	cmp	r6, r4
	ble	.L240
	ldr	r3, [sp, #4]
	lsl	r9, r4, #1
	ldr	r2, [sp]
	mov	r10, #0
	add	fp, fp, r9
	str	r7, [sp, #8]
	add	r3, r3, r9
	mov	r7, r10
	add	r9, r9, r2
	mov	r10, r9
	mov	r9, r3
.L245:
	ldrh	r1, [fp, r7]
	ldrb	r2, [r8, r4]	@ zero_extendqisi2
	ldrh	r0, [r9, r7]
	bl	libaroma_alpha32(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r4
	adds	r4, r4, #1
	bl	libaroma_dither(PLT)
	cmp	r4, r6
	strh	r0, [r10, r7]	@ movhi
	add	r7, r7, #2
	bne	.L245
	ldr	r7, [sp, #8]
.L240:
	ldrb	r6, [r7, #50]	@ zero_extendqisi2
	ldr	r8, [r7, #4]
	cmp	r6, #255
	beq	.L258
	cbz	r6, .L247
	asr	r3, r8, #31
	cmp	r8, #7
	lsr	r3, r3, #29
	add	r4, r8, r3
	and	r4, r4, #7
	sub	r4, r4, r3
	bgt	.L248
	cmp	r4, #0
	ble	.L247
.L249:
	rsb	r4, r4, r8
	cmp	r8, r4
	ble	.L247
	ldr	r3, [sp, #4]
	add	fp, r4, #-2147483648
	add	fp, fp, #-1
	add	r10, r3, r4, lsl #1
	ldr	r3, [sp]
	add	fp, r3, fp, lsl #1
.L252:
	ldrh	r0, [r10]
	mov	r2, r6
	ldrh	r1, [fp, #2]!
	bl	libaroma_alpha32(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r4
	adds	r4, r4, #1
	bl	libaroma_dither(PLT)
	cmp	r4, r8
	strh	r0, [r10], #2	@ movhi
	bne	.L252
.L247:
	ldr	r0, [sp]
	adds	r5, r5, #1
	bl	free(PLT)
	ldr	r3, [sp, #24]
	cmp	r5, r3
	bne	.L235
.L230:
	add	sp, sp, #52
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L317:
	ldr	r4, [r7]
	asrs	r2, r6, #31
	ldr	r0, [r7, #16]
	cmp	r6, #7
	ldr	r3, [r7, #12]
	lsr	r2, r2, #29
	ldr	r1, [r4, #8]
	add	r0, r0, r5
	ldr	r9, [r4, #20]
	add	r10, r6, r2
	ldrh	r4, [r7, #48]
	and	r10, r10, #7
	mla	r1, r1, r0, r3
	rsb	r10, r2, r10
	add	r9, r9, r1
	bgt	.L282
.L285:
	cmp	r10, #0
	ble	.L284
	rsb	r3, r10, r6
	cmp	r6, r3
	ble	.L284
	lsl	r8, r3, #1
	add	r10, r9, r6
	add	r9, r9, r3
	ldr	r6, [sp, #4]
	ldr	r3, [sp]
	mov	fp, #0
	add	r6, r6, r8
	add	r8, r8, r3
.L289:
	ldrb	r2, [r9], #1	@ zero_extendqisi2
	mov	r1, r4
	ldrh	r0, [r6, fp]
	bl	libaroma_alpha(PLT)
	cmp	r9, r10
	strh	r0, [r8, fp]	@ movhi
	add	fp, fp, #2
	bne	.L289
.L284:
	ldrb	r9, [r7, #50]	@ zero_extendqisi2
	ldr	r10, [r7, #4]
	cmp	r9, #255
	beq	.L318
	cmp	r9, #0
	beq	.L247
	asr	r3, r10, #31
	cmp	r10, #7
	lsr	r3, r3, #29
	add	r4, r10, r3
	and	r4, r4, #7
	sub	r4, r4, r3
	bgt	.L290
.L292:
	cmp	r4, #0
	ble	.L247
	rsb	r4, r4, r10
	cmp	r10, r4
	ble	.L247
	ldr	r3, [sp, #4]
	add	fp, r4, #-2147483648
	add	fp, fp, #-1
	add	r8, r3, r4, lsl #1
	ldr	r3, [sp]
	add	fp, r3, fp, lsl #1
.L294:
	ldrh	r0, [r8]
	adds	r4, r4, #1
	ldrh	r1, [fp, #2]!
	mov	r2, r9
	bl	libaroma_alpha(PLT)
	cmp	r4, r10
	strh	r0, [r8], #2	@ movhi
	bne	.L294
	b	.L247
.L237:
	ldr	r0, [r7]
	asrs	r1, r6, #31
	ldr	r2, [r7, #12]
	cmp	r6, #7
	lsr	r1, r1, #29
	ldr	r4, [r0, #8]
	ldr	r0, [r0, #20]
	add	r9, r6, r1
	and	r9, r9, #7
	rsb	r9, r1, r9
	mla	lr, r4, r10, r2
	add	lr, lr, r0
	bgt	.L253
.L256:
	cmp	r9, #0
	ble	.L255
	rsb	r10, r9, r6
	cmp	r6, r10
	ble	.L255
	ldr	r8, [sp, #4]
	lsl	r4, r10, #1
	ldr	r3, [sp]
	add	r9, lr, r6
	add	fp, fp, r4
	add	r10, r10, lr
	add	r8, r8, r4
	movs	r6, #0
	add	r4, r4, r3
.L260:
	ldrb	r2, [r10], #1	@ zero_extendqisi2
	ldrh	r0, [r8, r6]
	ldrh	r1, [fp, r6]
	bl	libaroma_alpha(PLT)
	cmp	r10, r9
	strh	r0, [r4, r6]	@ movhi
	add	r6, r6, #2
	bne	.L260
.L255:
	ldrb	r6, [r7, #50]	@ zero_extendqisi2
	ldr	r8, [r7, #4]
	cmp	r6, #255
	beq	.L258
	cmp	r6, #0
	beq	.L247
	asr	r3, r8, #31
	cmp	r8, #7
	lsr	r3, r3, #29
	add	r4, r8, r3
	and	r4, r4, #7
	sub	r4, r4, r3
	bgt	.L261
	cmp	r4, #0
	ble	.L247
.L262:
	rsb	r4, r4, r8
	cmp	r8, r4
	ble	.L247
	ldr	r3, [sp, #4]
	add	fp, r4, #-2147483648
	add	fp, fp, #-1
	add	r10, r3, r4, lsl #1
	ldr	r3, [sp]
	add	fp, r3, fp, lsl #1
.L265:
	ldrh	r0, [r10]
	adds	r4, r4, #1
	ldrh	r1, [fp, #2]!
	mov	r2, r6
	bl	libaroma_alpha(PLT)
	cmp	r4, r8
	strh	r0, [r10], #2	@ movhi
	bne	.L265
	b	.L247
.L322:
	.align	3
.L321:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
.L236:
	ldr	r2, [r7]
	asrs	r3, r6, #31
	ldr	r0, [r7, #12]
	cmp	r6, #7
	lsr	r3, r3, #29
	ldr	r1, [r2, #8]
	ldr	r2, [r2, #20]
	add	r9, r6, r3
	and	r9, r9, #7
	rsb	r9, r3, r9
	mla	lr, r1, r10, r0
	add	lr, lr, r2
	bgt	.L266
.L269:
	cmp	r9, #0
	ble	.L268
	rsb	r10, r9, r6
	cmp	r6, r10
	ble	.L268
	ldr	r8, [sp, #4]
	lsl	r4, r10, #1
	ldr	r3, [sp]
	add	r9, lr, r6
	add	fp, fp, r4
	add	r10, r10, lr
	add	r8, r8, r4
	movs	r6, #0
	add	r4, r4, r3
.L273:
	ldrb	r2, [r10], #1	@ zero_extendqisi2
	ldrh	r0, [r8, r6]
	ldrh	r1, [fp, r6]
	bl	libaroma_alpha(PLT)
	cmp	r10, r9
	strh	r0, [r4, r6]	@ movhi
	add	r6, r6, #2
	bne	.L273
.L268:
	ldrb	r4, [r7, #50]	@ zero_extendqisi2
	ldr	r6, [r7, #4]
	cmp	r4, #255
	beq	.L319
	cmp	r4, #0
	beq	.L320
	asrs	r3, r6, #31
	cmp	r6, #7
	lsr	r3, r3, #29
	add	fp, r6, r3
	and	fp, fp, #7
	rsb	fp, r3, fp
	bgt	.L275
.L277:
	cmp	fp, #0
	ble	.L247
	rsb	fp, fp, r6
	cmp	r6, fp
	ble	.L247
	ldr	r2, [sp, #28]
	sub	r3, r6, #15
	add	r10, fp, #1
	cmp	r6, r2
	it	ge
	cmpge	r3, r10
	ble	.L279
	ldr	r9, [sp]
	lsl	r8, fp, #1
	ldr	r2, [sp, #4]
	mov	r10, r3
	str	r5, [sp, #8]
	add	r9, r9, r8
	add	r8, r8, r2
.L280:
	ldrh	r0, [r9]
	mov	r1, r4
	pld	[r9, #20]
	add	fp, fp, #16
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8]	@ movhi
	ldrh	r0, [r9, #2]
	add	r5, fp, #1
	pld	[r8, #20]
	add	r9, r9, #32
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #2]	@ movhi
	ldrh	r0, [r9, #-28]
	add	r8, r8, #32
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-28]	@ movhi
	ldrh	r0, [r9, #-26]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-26]	@ movhi
	ldrh	r0, [r9, #-24]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-24]	@ movhi
	ldrh	r0, [r9, #-22]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-22]	@ movhi
	ldrh	r0, [r9, #-20]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-20]	@ movhi
	ldrh	r0, [r9, #-18]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-18]	@ movhi
	ldrh	r0, [r9, #-16]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-16]	@ movhi
	ldrh	r0, [r9, #-14]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-14]	@ movhi
	ldrh	r0, [r9, #-12]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-12]	@ movhi
	ldrh	r0, [r9, #-10]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-10]	@ movhi
	ldrh	r0, [r9, #-8]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-8]	@ movhi
	ldrh	r0, [r9, #-6]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-6]	@ movhi
	ldrh	r0, [r9, #-4]
	bl	libaroma_alphab(PLT)
	mov	r1, r4
	strh	r0, [r8, #-4]	@ movhi
	ldrh	r0, [r9, #-2]
	bl	libaroma_alphab(PLT)
	cmp	r10, r5
	strh	r0, [r8, #-2]	@ movhi
	bgt	.L280
	mov	r10, r5
	ldr	r5, [sp, #8]
.L279:
	ldr	r8, [sp, #4]
	lsl	fp, fp, #1
	ldr	r3, [sp]
	mov	r9, #0
	add	r8, r8, fp
	add	fp, fp, r3
.L281:
	ldrh	r0, [fp, r9]
	mov	r1, r4
	bl	libaroma_alphab(PLT)
	cmp	r6, r10
	strh	r0, [r8, r9]	@ movhi
	add	r10, r10, #1
	add	r9, r9, #2
	bgt	.L281
	b	.L247
.L258:
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	cmp	r3, r2
	beq	.L247
	mov	r0, r2
	mov	r1, r3
	lsl	r2, r8, #1
	bl	memcpy(PLT)
	b	.L247
.L282:
	and	r1, r4, #63488
	and	r2, r4, #2016
	asrs	r1, r1, #8
	lsls	r3, r4, #3
	asrs	r2, r2, #3
	ldr	r0, [sp, #4]
	and	r3, r3, #248
	vdup.16	q3, r4
	rsb	r8, r10, r6
	vdup.16	q15, r1
	ldr	r1, [sp]
	vdup.16	q14, r2
	movs	r2, #0
	vdup.16	q13, r3
.L286:
	add	r3, r9, r2
	vld1.16	{d18-d19}, [r0]!
	vmov.i16	q1, #256  @ v8hi
	vand	q11, q9, q4
	vld1.8	{d16}, [r3]
	adds	r2, r2, #8
	vand	q2, q9, q5
	cmp	r8, r2
	vmovl.u8	q8, d16
	vrshr.u16	q11, q11, #3
	vrshr.u16	q2, q2, #8
	vsub.i16	q10, q1, q8
	vmul.i16	q1, q14, q8
	vmul.i16	q11, q11, q10
	vmul.i16	q0, q15, q8
	vmul.i16	q2, q2, q10
	vand	q12, q9, q6
	vadd.i16	q11, q11, q1
	vmul.i16	q1, q13, q8
	vshl.i16	q12, q12, #3
	vadd.i16	q2, q2, q0
	vmul.i16	q12, q12, q10
	vshr.u16	q2, q2, #11
	vshr.u16	q11, q11, #10
	vceq.i16	q10, q8, q7
	vshl.i16	q2, q2, #11
	vadd.i16	q12, q12, q1
	vshl.i16	q11, q11, #5
	vceq.i16	q8, q8, #0
	vorr	q11, q2, q11
	vshr.u16	q12, q12, #11
	vorr	q11, q11, q12
	vbsl	q10, q3, q11
	vbsl	q8, q9, q10
	vst1.16	{d16-d17}, [r1:64]!
	bgt	.L286
	b	.L285
.L318:
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	cmp	r3, r2
	beq	.L247
	mov	r0, r2
	mov	r1, r3
	lsl	r2, r10, #1
	bl	memcpy(PLT)
	b	.L247
.L238:
	and	r10, r5, #7
	lsl	r10, r10, #3
	bl	libaroma_dither_table_r(PLT)
	add	r0, r0, r10
	vld1.8	{d16}, [r0]
	vmovl.u8	q1, d16
	vstr	d2, [sp, #8]
	vstr	d3, [sp, #16]
	bl	libaroma_dither_table_g(PLT)
	add	r0, r0, r10
	vld1.8	{d16}, [r0]
	vmovl.u8	q9, d16
	vstr	d18, [sp, #32]
	vstr	d19, [sp, #40]
	bl	libaroma_dither_table_b(PLT)
	add	r0, r0, r10
	ldr	lr, [sp]
	ldr	ip, [sp, #4]
	mov	r3, r9
	vld1.8	{d30}, [r0]
	mov	r2, r9
	rsb	r9, r4, r6
	vmovl.u8	q15, d30
	vldr	d28, [sp, #8]
	vldr	d29, [sp, #16]
	vldr	d6, [sp, #32]
	vldr	d7, [sp, #40]
.L242:
	add	r10, r8, r2
	add	r1, ip, r3
	add	r0, fp, r3
	vmov.i16	q1, #256  @ v8hi
	vld1.8	{d16}, [r10]
	adds	r2, r2, #8
	cmp	r2, r9
	vld1.16	{d18-d19}, [r1]
	add	r1, lr, r3
	vmovl.u8	q8, d16
	add	r3, r3, #16
	vld1.16	{d20-d21}, [r0]
	vand	q13, q9, q5
	vand	q12, q10, q5
	vsub.i16	q11, q1, q8
	vrshr.u16	q13, q13, #8
	vrshr.u16	q12, q12, #8
	vmul.i16	q13, q13, q11
	vmul.i16	q12, q12, q8
	vand	q0, q9, q4
	vand	q2, q10, q4
	vand	q1, q9, q6
	vrshr.u16	q0, q0, #3
	vrshr.u16	q2, q2, #3
	vmul.i16	q0, q0, q11
	vmul.i16	q2, q2, q8
	vadd.i16	q12, q13, q12
	vand	q13, q10, q6
	vshl.i16	q1, q1, #3
	vshr.u16	q12, q12, #8
	vshl.i16	q13, q13, #3
	vmul.i16	q11, q1, q11
	vmul.i16	q13, q13, q8
	vadd.i16	q2, q0, q2
	vadd.i16	q12, q12, q14
	vshr.u16	q2, q2, #8
	vadd.i16	q13, q11, q13
	vadd.i16	q2, q2, q3
	vmin.u16	q12, q12, q7
	vshr.u16	q13, q13, #8
	vmin.u16	q2, q2, q7
	vadd.i16	q13, q13, q15
	vshr.u16	q12, q12, #3
	vceq.i16	q11, q8, q7
	vshr.u16	q2, q2, #2
	vmin.u16	q13, q13, q7
	vqshl.u16	q12, q12, #11
	vqshl.u16	q2, q2, #5
	vceq.i16	q8, q8, #0
	vshr.u16	q13, q13, #3
	vorr	q12, q12, q2
	vorr	q12, q12, q13
	vbsl	q11, q10, q12
	vbsl	q8, q9, q11
	vst1.16	{d16-d17}, [r1]
	blt	.L242
	b	.L241
.L253:
	ldmia	sp, {r4, ip}
	rsb	r8, r9, r6
	mov	r2, r3
.L257:
	add	r10, lr, r2
	add	r1, ip, r3
	add	r0, fp, r3
	vmov.i16	q1, #256  @ v8hi
	vld1.8	{d16}, [r10]
	adds	r2, r2, #8
	cmp	r2, r8
	vld1.16	{d18-d19}, [r1]
	add	r1, r4, r3
	vmovl.u8	q8, d16
	add	r3, r3, #16
	vld1.16	{d20-d21}, [r0]
	vand	q2, q9, q5
	vand	q12, q10, q5
	vand	q3, q9, q4
	vand	q14, q10, q4
	vsub.i16	q11, q1, q8
	vrshr.u16	q2, q2, #8
	vrshr.u16	q12, q12, #8
	vrshr.u16	q3, q3, #3
	vrshr.u16	q14, q14, #3
	vmul.i16	q2, q2, q11
	vmul.i16	q12, q12, q8
	vmul.i16	q3, q3, q11
	vmul.i16	q14, q14, q8
	vand	q15, q9, q6
	vand	q13, q10, q6
	vadd.i16	q12, q2, q12
	vshl.i16	q15, q15, #3
	vshl.i16	q13, q13, #3
	vmul.i16	q15, q15, q11
	vmul.i16	q13, q13, q8
	vadd.i16	q14, q3, q14
	vshr.u16	q12, q12, #11
	vceq.i16	q11, q8, q7
	vshr.u16	q14, q14, #10
	vadd.i16	q13, q15, q13
	vshl.i16	q12, q12, #11
	vshl.i16	q14, q14, #5
	vshr.u16	q13, q13, #11
	vorr	q12, q12, q14
	vceq.i16	q8, q8, #0
	vorr	q12, q12, q13
	vbsl	q11, q10, q12
	vbsl	q8, q9, q11
	vst1.16	{d16-d17}, [r1]
	blt	.L257
	b	.L256
.L266:
	mov	r3, r4
	mov	r2, r4
	ldmia	sp, {r4, ip}
	rsb	r8, r9, r6
.L270:
	add	r10, lr, r2
	add	r1, ip, r3
	add	r0, fp, r3
	vmov.i16	q1, #256  @ v8hi
	vld1.8	{d16}, [r10]
	adds	r2, r2, #8
	cmp	r8, r2
	vld1.16	{d18-d19}, [r1]
	add	r1, r4, r3
	vmovl.u8	q8, d16
	add	r3, r3, #16
	vld1.16	{d20-d21}, [r0]
	vand	q2, q9, q5
	vand	q12, q10, q5
	vand	q3, q9, q4
	vand	q14, q10, q4
	vsub.i16	q11, q1, q8
	vrshr.u16	q2, q2, #8
	vrshr.u16	q12, q12, #8
	vrshr.u16	q3, q3, #3
	vrshr.u16	q14, q14, #3
	vmul.i16	q2, q2, q11
	vmul.i16	q12, q12, q8
	vmul.i16	q3, q3, q11
	vmul.i16	q14, q14, q8
	vand	q15, q9, q6
	vand	q13, q10, q6
	vadd.i16	q12, q2, q12
	vshl.i16	q15, q15, #3
	vshl.i16	q13, q13, #3
	vmul.i16	q15, q15, q11
	vmul.i16	q13, q13, q8
	vadd.i16	q14, q3, q14
	vshr.u16	q12, q12, #11
	vceq.i16	q11, q8, q7
	vshr.u16	q14, q14, #10
	vadd.i16	q13, q15, q13
	vshl.i16	q12, q12, #11
	vshl.i16	q14, q14, #5
	vshr.u16	q13, q13, #11
	vorr	q12, q12, q14
	vceq.i16	q8, q8, #0
	vorr	q12, q12, q13
	vbsl	q11, q10, q12
	vbsl	q8, q9, q11
	vst1.16	{d16-d17}, [r1]
	bgt	.L270
	b	.L269
.L319:
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	cmp	r3, r2
	beq	.L247
	mov	r0, r2
	mov	r1, r3
	lsls	r2, r6, #1
	bl	memcpy(PLT)
	b	.L247
.L275:
	ldmia	sp, {r1, r2}
	rsb	r0, fp, r6
	vdup.16	q9, r4
	movs	r3, #0
.L278:
	vld1.16	{d16-d17}, [r1:64]!
	adds	r3, r3, #8
	vand	q11, q8, q4
	cmp	r3, r0
	vand	q12, q8, q5
	vand	q10, q8, q6
	vrshr.u16	q11, q11, #3
	vrshr.u16	q8, q12, #8
	vmul.i16	q11, q11, q9
	vmul.i16	q8, q8, q9
	vshl.i16	q10, q10, #3
	vmul.i16	q10, q10, q9
	vshr.u16	q11, q11, #10
	vshr.u16	q8, q8, #11
	vshl.i16	q11, q11, #5
	vshl.i16	q8, q8, #11
	vshr.u16	q10, q10, #11
	vorr	q8, q8, q11
	vorr	q8, q8, q10
	vst1.16	{d16-d17}, [r2]!
	blt	.L278
	b	.L277
.L320:
	ldr	r0, [sp, #4]
	mov	r1, r4
	lsls	r2, r6, #1
	bl	memset(PLT)
	b	.L247
.L290:
	rsb	r3, r9, #256
	ldr	r2, [sp, #4]
	ldr	r1, [sp]
	rsb	r0, r4, r10
	vdup.16	q10, r3
	movs	r3, #0
	vdup.16	q11, r9
.L293:
	vld1.16	{d16-d17}, [r1:64]!
	adds	r3, r3, #8
	vand	q15, q8, q5
	cmp	r0, r3
	vld1.16	{d18-d19}, [r2]
	vand	q3, q9, q5
	vand	q14, q9, q4
	vand	q12, q8, q4
	vrshr.u16	q3, q3, #8
	vrshr.u16	q15, q15, #8
	vrshr.u16	q14, q14, #3
	vrshr.u16	q12, q12, #3
	vand	q13, q8, q6
	vmul.i16	q3, q3, q10
	vmul.i16	q15, q15, q11
	vmul.i16	q14, q14, q10
	vand	q9, q9, q6
	vmul.i16	q12, q12, q11
	vshl.i16	q9, q9, #3
	vshl.i16	q13, q13, #3
	vmul.i16	q9, q9, q10
	vmul.i16	q13, q13, q11
	vadd.i16	q8, q3, q15
	vadd.i16	q12, q14, q12
	vshr.u16	q8, q8, #11
	vshr.u16	q12, q12, #10
	vadd.i16	q9, q9, q13
	vshl.i16	q8, q8, #11
	vshl.i16	q12, q12, #5
	vshr.u16	q9, q9, #11
	vorr	q8, q8, q12
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r2]!
	bgt	.L293
	b	.L292
.L261:
	rsb	r3, r6, #256
	ldr	r2, [sp, #4]
	ldr	r1, [sp]
	rsb	r0, r4, r8
	vdup.16	q10, r3
	movs	r3, #0
	vdup.16	q11, r6
.L264:
	vld1.16	{d16-d17}, [r1:64]!
	adds	r3, r3, #8
	vand	q15, q8, q5
	cmp	r0, r3
	vld1.16	{d18-d19}, [r2]
	vand	q3, q9, q5
	vand	q14, q9, q4
	vand	q12, q8, q4
	vrshr.u16	q3, q3, #8
	vrshr.u16	q15, q15, #8
	vrshr.u16	q14, q14, #3
	vrshr.u16	q12, q12, #3
	vand	q13, q8, q6
	vmul.i16	q3, q3, q10
	vmul.i16	q15, q15, q11
	vmul.i16	q14, q14, q10
	vand	q9, q9, q6
	vmul.i16	q12, q12, q11
	vshl.i16	q9, q9, #3
	vshl.i16	q13, q13, #3
	vmul.i16	q9, q9, q10
	vmul.i16	q13, q13, q11
	vadd.i16	q8, q3, q15
	vadd.i16	q12, q14, q12
	vshr.u16	q8, q8, #11
	vshr.u16	q12, q12, #10
	vadd.i16	q9, q9, q13
	vshl.i16	q8, q8, #11
	vshl.i16	q12, q12, #5
	vshr.u16	q9, q9, #11
	vorr	q8, q8, q12
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r2]!
	bgt	.L264
	cmp	r4, #0
	bgt	.L262
	b	.L247
.L248:
	and	r10, r5, #7
	lsl	r10, r10, #3
	bl	libaroma_dither_table_r(PLT)
	add	r0, r0, r10
	vld1.8	{d16}, [r0]
	vmovl.u8	q1, d16
	vstr	d2, [sp, #8]
	vstr	d3, [sp, #16]
	bl	libaroma_dither_table_g(PLT)
	add	r0, r0, r10
	vld1.8	{d16}, [r0]
	vmovl.u8	q9, d16
	vstr	d18, [sp, #32]
	vstr	d19, [sp, #40]
	bl	libaroma_dither_table_b(PLT)
	add	r10, r10, r0
	ldmia	sp, {r1, r2}
	rsb	r0, r6, #256
	vdup.16	q11, r6
	rsb	lr, r4, r8
	movs	r3, #0
	vld1.8	{d26}, [r10]
	vmovl.u8	q13, d26
	vdup.16	q10, r0
	vldr	d28, [sp, #8]
	vldr	d29, [sp, #16]
	vldr	d30, [sp, #32]
	vldr	d31, [sp, #40]
.L251:
	vld1.16	{d16-d17}, [r1:64]!
	adds	r3, r3, #8
	vand	q1, q8, q5
	cmp	r3, lr
	vld1.16	{d18-d19}, [r2]
	vand	q0, q9, q5
	vand	q2, q9, q4
	vand	q12, q8, q4
	vrshr.u16	q0, q0, #8
	vrshr.u16	q1, q1, #8
	vrshr.u16	q2, q2, #3
	vrshr.u16	q12, q12, #3
	vmul.i16	q0, q0, q10
	vmul.i16	q1, q1, q11
	vmul.i16	q2, q2, q10
	vmul.i16	q12, q12, q11
	vand	q3, q8, q6
	vand	q9, q9, q6
	vadd.i16	q8, q0, q1
	vshl.i16	q3, q3, #3
	vshl.i16	q9, q9, #3
	vadd.i16	q12, q2, q12
	vmul.i16	q9, q9, q10
	vmul.i16	q3, q3, q11
	vshr.u16	q8, q8, #8
	vshr.u16	q12, q12, #8
	vadd.i16	q8, q8, q14
	vadd.i16	q12, q12, q15
	vadd.i16	q9, q9, q3
	vmin.u16	q8, q8, q7
	vmin.u16	q12, q12, q7
	vshr.u16	q9, q9, #8
	vadd.i16	q9, q9, q13
	vshr.u16	q8, q8, #3
	vshr.u16	q12, q12, #2
	vmin.u16	q9, q9, q7
	vqshl.u16	q8, q8, #11
	vqshl.u16	q12, q12, #5
	vshr.u16	q9, q9, #3
	vorr	q8, q8, q12
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r2]!
	blt	.L251
	cmp	r4, #0
	bgt	.L249
	b	.L247
	.size	libaroma_draw_ex2._omp_fn.2, .-libaroma_draw_ex2._omp_fn.2
	.section	.text.libaroma_draw_limit,"ax",%progbits
	.align	2
	.global	libaroma_draw_limit
	.thumb
	.thumb_func
	.type	libaroma_draw_limit, %function
libaroma_draw_limit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	blt	.L325
	cmp	r0, r1
	blt	.L324
	subs	r0, r1, #1
	bx	lr
.L325:
	movs	r0, #0
.L324:
	bx	lr
	.size	libaroma_draw_limit, .-libaroma_draw_limit
	.section	.text.libaroma_draw_limited,"ax",%progbits
	.align	2
	.global	libaroma_draw_limited
	.thumb
	.thumb_func
	.type	libaroma_draw_limited, %function
libaroma_draw_limited:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	ite	lt
	movlt	r1, #0
	movge	r1, #1
	orr	r0, r1, r0, lsr #31
	bx	lr
	.size	libaroma_draw_limited, .-libaroma_draw_limited
	.section	.text.libaroma_draw_ex2,"ax",%progbits
	.align	2
	.global	libaroma_draw_ex2
	.thumb
	.thumb_func
	.type	libaroma_draw_ex2, %function
libaroma_draw_ex2:
	@ args = 32, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #268
	ldrb	r5, [sp, #328]	@ zero_extendqisi2
	ldrh	r6, [sp, #332]
	ldrb	r10, [sp, #320]	@ zero_extendqisi2
	ldrb	r4, [sp, #324]	@ zero_extendqisi2
	str	r5, [sp, #8]
	str	r6, [sp, #4]
	cmp	r1, #0
	beq	.L332
	cmp	r0, #0
	beq	.L362
.L331:
	ldr	r7, [r0]
	cmp	r7, r2
	ble	.L332
	ldr	lr, [r0, #4]
	cmp	lr, r3
	ble	.L332
	cmp	r4, #0
	beq	.L361
	ldr	r5, [sp, #304]
	cmp	r5, #0
	blt	.L363
.L333:
	ldr	r5, [sp, #308]
	cmp	r5, #0
	blt	.L364
.L334:
	ldr	ip, [sp, #312]
	ldr	r5, [sp, #304]
	ldr	r8, [r1]
	add	ip, ip, r5
	ldr	r5, [sp, #308]
	cmp	ip, r8
	itt	ge
	ldrge	r6, [sp, #312]
	rsbge	ip, ip, r8
	ldr	r8, [r1, #4]
	it	ge
	addge	r6, r6, ip
	ldr	ip, [sp, #316]
	it	ge
	strge	r6, [sp, #312]
	add	ip, ip, r5
	cmp	ip, r8
	itttt	ge
	ldrge	r6, [sp, #316]
	rsbge	ip, ip, r8
	addge	r6, r6, ip
	strge	r6, [sp, #316]
	ldr	r6, [sp, #312]
	ldr	r5, [sp, #316]
	cmp	r6, #0
	it	gt
	cmpgt	r5, #0
	ite	le
	movle	ip, #1
	movgt	ip, #0
	ble	.L332
	cmp	r2, #0
	ubfx	r8, r10, #2, #1
	itett	lt
	ldrlt	r5, [sp, #304]
	lslge	fp, r2, #1
	ldrlt	r6, [sp, #312]
	movlt	fp, ip
	ubfx	ip, r10, #1, #1
	itttt	lt
	sublt	r5, r5, r2
	addlt	r6, r6, r2
	strlt	r5, [sp, #304]
	strlt	r6, [sp, #312]
	cmp	r3, #0
	ittet	lt
	ldrlt	r6, [sp, #316]
	ldrlt	r5, [sp, #308]
	strge	r3, [sp, #28]
	addlt	r6, r6, r3
	itt	lt
	strlt	r6, [sp, #316]
	sublt	r5, r5, r3
	ldr	r6, [sp, #312]
	ittt	lt
	strlt	r5, [sp, #308]
	movlt	r5, #0
	strlt	r5, [sp, #28]
	add	r2, r2, r6
	ldr	r5, [sp, #316]
	cmp	r7, r2
	it	lt
	sublt	r2, r7, r2
	ldr	r7, [r1, #16]
	it	lt
	addlt	r6, r6, r2
	add	r3, r3, r5
	it	lt
	strlt	r6, [sp, #312]
	cmp	lr, r3
	it	lt
	rsblt	r3, r3, lr
	ldr	r2, [r0, #8]
	it	lt
	addlt	r5, r5, r3
	ldr	r6, [r0, #16]
	ldr	r3, [r1, #8]
	ldr	r0, [sp, #304]
	it	lt
	strlt	r5, [sp, #316]
	tst	r10, #1
	lsl	r9, r3, #1
	lsl	r3, r2, #1
	lsl	lr, r0, #1
	bne	.L365
.L342:
	cmp	r4, #255
	beq	.L366
	ldr	r5, [sp, #312]
	movs	r2, #0
	ldr	r0, [sp, #308]
	str	lr, [sp, #32]
	str	r5, [sp, #48]
	str	r0, [sp, #56]
	ldr	r5, [sp, #316]
	ldr	r0, [sp, #28]
	str	r3, [sp, #44]
	str	r5, [sp, #52]
	add	r5, sp, #104
	str	r0, [sp, #60]
	mov	r1, r5
	vldr	d16, [sp, #48]
	vldr	d17, [sp, #56]
	ldr	r0, .L368
	str	fp, [sp, #36]
	str	r9, [sp, #40]
	vstr	d16, [sp, #104]
	vstr	d17, [sp, #112]
.LPIC25:
	add	r0, pc
	strb	ip, [sp, #145]
	vldr	d16, [sp, #32]
	vldr	d17, [sp, #40]
	str	r7, [sp, #136]
	vstr	d16, [sp, #120]
	vstr	d17, [sp, #128]
	str	r6, [sp, #140]
	strb	r4, [sp, #144]
	strb	r8, [sp, #146]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r5
	bl	libaroma_draw_ex2._omp_fn.3(PLT)
	bl	GOMP_parallel_end(PLT)
	movs	r0, #1
	b	.L356
.L332:
	movs	r0, #0
.L356:
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L364:
	ldr	r6, [sp, #316]
	mov	ip, #0
	subs	r3, r3, r5
	str	ip, [sp, #308]
	add	r6, r6, r5
	str	r6, [sp, #316]
	b	.L334
.L363:
	ldr	r6, [sp, #312]
	mov	ip, #0
	subs	r2, r2, r5
	str	ip, [sp, #304]
	add	r6, r6, r5
	str	r6, [sp, #312]
	b	.L333
.L366:
	ldr	r4, [sp, #312]
	movs	r2, #0
	ldr	r0, .L368+4
	str	lr, [sp, #76]
	str	r3, [sp, #88]
	lsls	r5, r4, #1
	add	r4, sp, #64
	mov	r1, r4
	str	fp, [sp, #80]
	str	r5, [sp, #92]
.LPIC27:
	add	r0, pc
	ldr	r5, [sp, #316]
	str	r9, [sp, #84]
	str	r7, [sp, #96]
	str	r5, [sp, #64]
	ldr	r5, [sp, #308]
	str	r6, [sp, #100]
	str	r5, [sp, #68]
	ldr	r5, [sp, #28]
	str	r5, [sp, #72]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r4
	bl	libaroma_draw_ex2._omp_fn.1(PLT)
	bl	GOMP_parallel_end(PLT)
.L361:
	movs	r0, #1
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L365:
	ldr	r2, [r1, #20]
	cmp	r2, #0
	beq	.L342
	cmp	r4, #255
	beq	.L367
	ldr	r5, [sp, #316]
	add	r10, sp, #208
	ldr	r2, [sp, #312]
	ldr	r0, .L368+8
	str	r5, [sp, #216]
	ldr	r5, [sp, #304]
	str	r3, [sp, #244]
.LPIC24:
	add	r0, pc
	ldr	r3, [sp, #8]
	str	r5, [sp, #220]
	ldr	r5, [sp, #308]
	str	r6, [sp, #252]
	ldr	r6, [sp, #4]
	str	r5, [sp, #224]
	ldr	r5, [sp, #28]
	str	r1, [sp, #208]
	mov	r1, r10
	str	r2, [sp, #212]
	movs	r2, #0
	str	lr, [sp, #232]
	strb	r3, [sp, #259]
	strb	ip, [sp, #260]
	str	r5, [sp, #228]
	str	fp, [sp, #236]
	str	r9, [sp, #240]
	str	r7, [sp, #248]
	strh	r6, [sp, #256]	@ movhi
	strb	r4, [sp, #258]
	strb	r8, [sp, #261]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r10
	bl	libaroma_draw_ex2._omp_fn.2(PLT)
	bl	GOMP_parallel_end(PLT)
	movs	r0, #1
	b	.L356
.L362:
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	bl	libaroma_fb(PLT)
	ldr	r3, [sp, #12]
	ldr	r0, [r0, #52]
	ldr	r2, [sp, #16]
	ldr	r1, [sp, #20]
	b	.L331
.L367:
	ldr	r5, [sp, #316]
	add	r4, sp, #152
	ldr	r2, [sp, #312]
	ldr	r0, .L368+12
	str	r5, [sp, #160]
	ldr	r5, [sp, #304]
	str	r3, [sp, #188]
.LPIC26:
	add	r0, pc
	ldr	r3, [sp, #8]
	str	r5, [sp, #164]
	ldr	r5, [sp, #308]
	str	r6, [sp, #196]
	ldr	r6, [sp, #4]
	str	r5, [sp, #168]
	ldr	r5, [sp, #28]
	str	r1, [sp, #152]
	mov	r1, r4
	str	r2, [sp, #156]
	movs	r2, #0
	str	lr, [sp, #176]
	strb	r3, [sp, #202]
	strb	ip, [sp, #203]
	str	r5, [sp, #172]
	str	fp, [sp, #180]
	str	r9, [sp, #184]
	str	r7, [sp, #192]
	strh	r6, [sp, #200]	@ movhi
	bl	GOMP_parallel_start(PLT)
	mov	r0, r4
	bl	libaroma_draw_ex2._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	movs	r0, #1
	b	.L356
.L369:
	.align	2
.L368:
	.word	libaroma_draw_ex2._omp_fn.3-(.LPIC25+4)
	.word	libaroma_draw_ex2._omp_fn.1-(.LPIC27+4)
	.word	libaroma_draw_ex2._omp_fn.2-(.LPIC24+4)
	.word	libaroma_draw_ex2._omp_fn.0-(.LPIC26+4)
	.size	libaroma_draw_ex2, .-libaroma_draw_ex2
	.section	.text.libaroma_draw_rect,"ax",%progbits
	.align	2
	.global	libaroma_draw_rect
	.thumb
	.thumb_func
	.type	libaroma_draw_rect, %function
libaroma_draw_rect:
	@ args = 12, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	ip, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #148
	ldr	r5, [sp, #248]
	ldrh	r4, [sp, #252]
	ldrb	r8, [sp, #256]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L409
.L371:
	ldr	r7, [ip, #4]
	bic	r0, r1, r1, asr #31
	ldr	r6, [ip]
	add	r9, r2, r5
	add	r1, r1, r3
	bic	lr, r2, r2, asr #31
	cmp	r9, r7
	it	ge
	movge	r9, r7
	cmp	r1, r6
	ite	le
	rsble	r1, r0, r1
	rsbgt	r1, r0, r6
	cmp	r8, #255
	beq	.L410
	str	r0, [sp, #104]
	add	r3, sp, #124
	str	lr, [sp, #108]
	add	r5, sp, #120
	str	r1, [sp, #112]
	movs	r2, #0
	str	r9, [sp, #116]
	mov	r1, r5
	ldr	r0, .L411
	vldr	d16, [sp, #104]
	vldr	d17, [sp, #112]
	str	ip, [sp, #120]
.LPIC28:
	add	r0, pc
	vst1.32	{q8}, [r3]
	strh	r4, [sp, #140]	@ movhi
	strb	r8, [sp, #142]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r5
	bl	libaroma_draw_rect._omp_fn.4(PLT)
	bl	GOMP_parallel_end(PLT)
.L374:
	movs	r0, #1
	add	sp, sp, #148
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L410:
	ldr	r2, [ip, #16]
	cmp	lr, r9
	str	r2, [sp, #20]
	add	r3, r2, r0, lsl #1
	str	r3, [sp, #16]
	bge	.L374
	asrs	r3, r1, #31
	vdup.16	q8, r4
	lsrs	r3, r3, #27
	vmov	q9, q8  @ v8hi
	adds	r7, r1, r3
	and	r7, r7, #31
	subs	r7, r7, r3
	subs	r6, r1, r7
	adds	r2, r6, #1
	lsls	r3, r6, #1
	str	r2, [sp, #72]
	adds	r2, r6, #2
	str	r2, [sp, #76]
	add	r0, r0, r6
	ldr	r2, [sp, #72]
	str	r3, [sp, #36]
	ldr	r3, [sp, #76]
	str	r0, [sp, #24]
	lsls	r2, r2, #1
	adds	r3, r3, #1
	str	r3, [sp, #80]
	adds	r3, r3, #1
	str	r3, [sp, #84]
	str	r2, [sp, #40]
	ldr	r3, [sp, #80]
	ldr	r2, [sp, #76]
	lsls	r3, r3, #1
	lsls	r2, r2, #1
	str	r3, [sp, #48]
	str	r2, [sp, #44]
	ldr	r3, [sp, #84]
	ldr	r2, [sp, #84]
	adds	r2, r2, #1
	lsls	r3, r3, #1
	str	r2, [sp, #88]
	adds	r2, r2, #1
	str	r2, [sp, #92]
	ldr	r2, [sp, #88]
	str	r3, [sp, #52]
	ldr	r3, [sp, #92]
	lsls	r2, r2, #1
	adds	r3, r3, #1
	str	r3, [sp, #96]
	adds	r3, r3, #1
	str	r3, [sp, #100]
	str	r2, [sp, #56]
	ldr	r3, [sp, #96]
	ldr	r2, [sp, #92]
	lsls	r3, r3, #1
	lsls	r2, r2, #1
	str	r3, [sp, #64]
	str	r2, [sp, #60]
	ldr	r3, [sp, #100]
	ldr	r2, [sp, #100]
	adds	r2, r2, #1
	lsls	r3, r3, #1
	str	r2, [sp, #28]
	lsls	r2, r2, #1
	str	r3, [sp, #68]
	str	r2, [sp, #32]
.L392:
	ldr	r3, [ip, #8]
	cmp	r1, #31
	ldr	r0, [sp, #16]
	mul	r8, r3, lr
	add	r3, r0, r8, lsl #1
	bgt	.L375
.L378:
	cmp	r7, #0
	ble	.L377
	cmp	r1, r6
	ble	.L377
	ldr	r2, [sp, #24]
	ldr	r0, [sp, #20]
	add	r8, r8, r2
	add	r8, r0, r8, lsl #1
	ubfx	r2, r8, #1, #2
	negs	r2, r2
	and	r2, r2, #7
	cmp	r2, r7
	it	cs
	movcs	r2, r7
	cmp	r7, #10
	it	ls
	movls	r2, r7
	cmp	r2, #0
	beq	.L394
	ldr	r0, [sp, #36]
	cmp	r2, #1
	strh	r4, [r3, r0]	@ movhi
	bls	.L395
	ldr	r0, [sp, #40]
	cmp	r2, #2
	strh	r4, [r3, r0]	@ movhi
	beq	.L396
	ldr	r0, [sp, #44]
	cmp	r2, #3
	strh	r4, [r3, r0]	@ movhi
	beq	.L397
	ldr	r0, [sp, #48]
	cmp	r2, #4
	strh	r4, [r3, r0]	@ movhi
	beq	.L398
	ldr	r0, [sp, #52]
	cmp	r2, #5
	strh	r4, [r3, r0]	@ movhi
	beq	.L399
	ldr	r0, [sp, #56]
	cmp	r2, #6
	strh	r4, [r3, r0]	@ movhi
	beq	.L400
	ldr	r0, [sp, #60]
	cmp	r2, #7
	strh	r4, [r3, r0]	@ movhi
	beq	.L401
	ldr	r0, [sp, #64]
	cmp	r2, #8
	strh	r4, [r3, r0]	@ movhi
	beq	.L402
	ldr	r0, [sp, #68]
	cmp	r2, #9
	strh	r4, [r3, r0]	@ movhi
	beq	.L403
	ldr	r0, [sp, #32]
	strh	r4, [r3, r0]	@ movhi
	ldr	r0, [sp, #28]
	adds	r0, r0, #1
.L384:
	cmp	r2, r7
	beq	.L377
.L383:
	rsb	r10, r2, r7
	lsr	r5, r10, #3
	lsl	fp, r5, #3
	cbz	r5, .L386
	add	r2, r8, r2, lsl #1
	mov	r8, #0
.L391:
	add	r8, r8, #1
	vst1.64	{d18-d19}, [r2:64]!
	cmp	r8, r5
	bcc	.L391
	cmp	r10, fp
	add	r0, r0, fp
	beq	.L377
.L386:
	adds	r2, r0, #1
	strh	r4, [r3, r0, lsl #1]	@ movhi
	cmp	r1, r2
	ble	.L377
	adds	r5, r0, #2
	strh	r4, [r3, r2, lsl #1]	@ movhi
	cmp	r1, r5
	ble	.L377
	adds	r2, r0, #3
	strh	r4, [r3, r5, lsl #1]	@ movhi
	cmp	r1, r2
	ble	.L377
	adds	r5, r0, #4
	strh	r4, [r3, r2, lsl #1]	@ movhi
	cmp	r1, r5
	ble	.L377
	adds	r2, r0, #5
	strh	r4, [r3, r5, lsl #1]	@ movhi
	cmp	r1, r2
	ble	.L377
	adds	r0, r0, #6
	strh	r4, [r3, r2, lsl #1]	@ movhi
	cmp	r1, r0
	it	gt
	strhgt	r4, [r3, r0, lsl #1]	@ movhi
.L377:
	add	lr, lr, #1
	cmp	lr, r9
	bne	.L392
	b	.L374
.L375:
	cmp	r6, #0
	ble	.L378
	mov	r5, r3
	movs	r0, #0
.L379:
	vmov	q4, q8  @ v8hi
	adds	r0, r0, #32
	vmov	q5, q8  @ v8hi
	mov	r2, r5
	vmov	q6, q8  @ v8hi
	cmp	r0, r6
	vmov	q7, q8  @ v8hi
	add	r5, r5, #64
	vst4.16	{d8, d10, d12, d14}, [r2]!
	vst4.16	{d9, d11, d13, d15}, [r2]
	blt	.L379
	b	.L378
.L394:
	mov	r0, r6
	b	.L383
.L403:
	ldr	r0, [sp, #28]
	b	.L384
.L402:
	ldr	r0, [sp, #100]
	b	.L384
.L401:
	ldr	r0, [sp, #96]
	b	.L384
.L400:
	ldr	r0, [sp, #92]
	b	.L384
.L399:
	ldr	r0, [sp, #88]
	b	.L384
.L398:
	ldr	r0, [sp, #84]
	b	.L384
.L397:
	ldr	r0, [sp, #80]
	b	.L384
.L396:
	ldr	r0, [sp, #76]
	b	.L384
.L395:
	ldr	r0, [sp, #72]
	b	.L384
.L409:
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	bl	libaroma_fb(PLT)
	ldr	r3, [sp, #4]
	ldr	ip, [r0, #52]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #12]
	b	.L371
.L412:
	.align	2
.L411:
	.word	libaroma_draw_rect._omp_fn.4-(.LPIC28+4)
	.size	libaroma_draw_rect, .-libaroma_draw_rect
	.section	.text.libaroma_draw_pixel,"ax",%progbits
	.align	2
	.global	libaroma_draw_pixel
	.thumb
	.thumb_func
	.type	libaroma_draw_pixel, %function
libaroma_draw_pixel:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	ldrb	r5, [sp, #40]	@ zero_extendqisi2
	cbz	r0, .L422
.L414:
	lsrs	r4, r2, #31
	orrs	r4, r4, r1, lsr #31
	it	ne
	movne	r4, #0
	bne	.L415
	ldr	r6, [r0, #4]
	cmp	r2, r6
	bge	.L415
	ldr	r6, [r0]
	cmp	r1, r6
	bge	.L415
	ldr	r4, [r0, #8]
	cmp	r5, #255
	ldr	r6, [r0, #16]
	mla	r7, r4, r2, r1
	itt	eq
	moveq	r4, #1
	strheq	r3, [r6, r7, lsl #1]	@ movhi
	beq	.L415
	movs	r4, #1
	cbz	r5, .L415
	movs	r4, #1
	mov	r1, r3
	mov	r2, r5
	ldrh	r0, [r6, r7, lsl #1]
	bl	libaroma_alpha(PLT)
	strh	r0, [r6, r7, lsl #1]	@ movhi
.L415:
	mov	r0, r4
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L422:
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	bl	libaroma_fb(PLT)
	ldr	r3, [sp, #4]
	ldr	r0, [r0, #52]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #12]
	b	.L414
	.size	libaroma_draw_pixel, .-libaroma_draw_pixel
	.section	.text.libaroma_draw_alphapixel,"ax",%progbits
	.align	2
	.global	libaroma_draw_alphapixel
	.thumb
	.thumb_func
	.type	libaroma_draw_alphapixel, %function
libaroma_draw_alphapixel:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #20
	cbz	r0, .L431
.L424:
	lsrs	r4, r2, #31
	orrs	r4, r4, r1, lsr #31
	bne	.L426
	ldr	r5, [r0, #4]
	cmp	r2, r5
	bge	.L426
	ldr	r5, [r0]
	cmp	r1, r5
	bge	.L426
	ldr	r4, [r0, #20]
	cbz	r4, .L429
	ldr	r5, [r0, #8]
	movs	r0, #1
	mla	r2, r5, r2, r4
	strb	r3, [r2, r1]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L426:
	movs	r0, #0
.L425:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L431:
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	bl	libaroma_fb(PLT)
	ldr	r3, [sp, #4]
	ldr	r0, [r0, #52]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #12]
	b	.L424
.L429:
	mov	r0, r4
	b	.L425
	.size	libaroma_draw_alphapixel, .-libaroma_draw_alphapixel
	.section	.text.libaroma_draw_line,"ax",%progbits
	.align	2
	.global	libaroma_draw_line
	.thumb
	.thumb_func
	.type	libaroma_draw_line, %function
libaroma_draw_line:
	@ args = 16, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	fstmfdd	sp!, {d8, d9, d10}
	sub	sp, sp, #68
	str	r0, [sp, #12]
	str	r2, [sp, #32]
	ldrb	r1, [sp, #136]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldrh	r0, [sp, #132]
	str	r3, [sp, #48]
	fcpys	s17, s0
	str	r0, [sp, #28]
	fmsr	s19, r1	@ int
	ldrb	r8, [sp, #140]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L586
.L433:
	ldr	r0, [sp, #128]
	subs	r2, r3, r4
	ldr	r1, [sp, #32]
	eor	r10, r2, r2, asr #31
	sub	r10, r10, r2, asr #31
	subs	r3, r0, r1
	eor	fp, r3, r3, asr #31
	cmp	r0, r1
	ite	le
	movle	r0, #-1
	movgt	r0, #1
	str	r0, [sp, #16]
	sub	fp, fp, r3, asr #31
	ldr	r3, [sp, #48]
	rsb	r2, fp, r10
	cmp	r3, r4
	ite	le
	movle	r3, #-1
	movgt	r3, #1
	cmn	r10, fp
	str	r2, [sp, #20]
	str	r3, [sp, #24]
	it	eq
	fconstseq	s16, #112
	bne	.L587
.L436:
	fconsts	s18, #96
	fsitos	s19, s19
	fmacs	s18, s17, s18
	fconsts	s21, #112
	ldr	r0, [sp, #32]
	ftouizs	s13, s19
	fdivs	s17, s21, s16
	mvns	r0, r0
	flds	s20, .L596
	fmrs	r3, s13	@ int
	fmuls	s16, s16, s18
	uxtb	r3, r3
	fsubs	s21, s21, s18
	str	r0, [sp, #52]
	str	r3, [sp, #56]
.L438:
	mvns	r7, r4
	lsrs	r0, r0, #31
	lsr	r9, r7, #31
	str	r0, [sp, #44]
	tst	r0, r9
	beq	.L447
	cmp	r8, #1
	beq	.L588
	ldr	r0, [sp, #20]
	rsb	r3, r10, r0
	add	r3, r3, fp
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r8, #2
	fmsr	s13, r3	@ int
	fsitos	s15, s13
	beq	.L589
	fcpys	s14, s18
	fnmacs	s14, s17, s15
	fmuls	s15, s19, s14
	fcmpezs	s15
	fmstat
	it	mi
	movmi	r3, #0
	bmi	.L451
	fcmps	s15, s20
	fmstat
	itett	le
	ftouizsle	s15, s15
	movgt	r3, #255
	fmrsle	r3, s15	@ int
	uxtble	r3, r3
.L451:
	str	r3, [sp]
	mov	r1, r4
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #32]
	ldr	r3, [sp, #28]
	bl	libaroma_draw_pixel(PLT)
	cmp	r0, #0
	beq	.L544
.L447:
	ldr	r1, [sp, #20]
	rsb	r3, r10, #0
	lsls	r1, r1, #1
	cmp	r1, r3
	str	r1, [sp, #36]
	bge	.L440
	ldr	r9, [sp, #20]
	str	r4, [sp, #40]
.L441:
	ldr	r3, [sp, #20]
	rsb	r5, r3, r10
	fmsr	s13, r5	@ int
	fsitos	s15, s13
	fcmpes	s15, s16
	fmstat
	bpl	.L471
	ldr	r2, [sp, #48]
	cmp	r10, fp
	ite	ge
	movge	r6, #0
	movlt	r6, #1
	cmp	r10, fp
	it	ge
	cmpge	r4, r2
	beq	.L471
	str	r9, [sp, #20]
	mov	r3, r7
	str	r10, [sp, #36]
	mov	r10, r2
	ldr	r9, [sp, #44]
	ldr	r7, [sp, #32]
	b	.L483
.L473:
	eor	r0, r5, r5, asr #31
	ldr	r1, [sp, #24]
	cmp	r8, #2
	sub	r0, r0, r5, asr #31
	add	r4, r4, r1
	fmsr	s15, r0	@ int
	fsitos	s15, s15
	beq	.L590
	fcpys	s13, s18
	fnmacs	s13, s17, s15
	fmuls	s15, s19, s13
	fcmpezs	s15
	fmstat
	it	mi
	movmi	r3, #0
	bmi	.L480
	fcmps	s15, s20
	fmstat
	itett	le
	ftouizsle	s15, s15
	movgt	r3, #255
	fmrsle	r3, s15	@ int
	uxtble	r3, r3
.L480:
	str	r3, [sp]
	mov	r1, r4
	ldr	r0, [sp, #12]
	mov	r2, r7
	ldr	r3, [sp, #28]
	bl	libaroma_draw_pixel(PLT)
	cmp	r0, #0
	beq	.L578
.L472:
	add	r5, r5, fp
	fmsr	s14, r5	@ int
	fsitos	s15, s14
	fcmpes	s15, s16
	fmstat
	bpl	.L578
	cmp	r4, r10
	ite	eq
	moveq	r3, r6
	orrne	r3, r6, #1
	cbz	r3, .L578
	mvns	r3, r4
.L483:
	ands	r3, r9, r3, lsr #31
	beq	.L472
	cmp	r8, #1
	bne	.L473
	eor	r3, r5, r5, asr #31
	fcpys	s13, s18
	ldr	r0, [sp, #24]
	sub	r3, r3, r5, asr #31
	add	r4, r4, r0
	fmsr	s15, r3	@ int
	fsitos	s15, s15
	fnmacs	s13, s17, s15
	fmuls	s15, s19, s13
	fcmpzs	s15
	fmstat
	bmi	.L591
	fcmpes	s19, s15
	fmstat
	bpl	.L573
.L488:
	ldr	r3, [sp, #56]
	mov	r1, r4
	ldr	r0, [sp, #12]
	mov	r2, r7
	bl	libaroma_draw_alphapixel(PLT)
	cmp	r0, #0
	bne	.L472
.L578:
	ldr	r9, [sp, #20]
	ldr	r10, [sp, #36]
.L471:
	ldr	r1, [sp, #32]
	ldr	r0, [sp, #128]
	cmp	r1, r0
	beq	.L544
	mov	r0, r1
	ldr	r1, [sp, #16]
	add	r9, r9, r10
	ldr	r4, [sp, #40]
	str	r9, [sp, #20]
	add	r0, r0, r1
	mvns	r2, r0
	str	r0, [sp, #32]
	str	r2, [sp, #52]
	mov	r0, r2
	b	.L438
.L590:
	fcpys	s13, s21
	fmacs	s13, s17, s15
	fmuls	s15, s13, s20
	fcmpezs	s15
	fmstat
	bmi	.L585
	fcmps	s15, s20
	fmstat
	it	gt
	movgt	r3, #255
	bgt	.L478
.L573:
	ftouizs	s15, s15
	fmrs	r3, s15	@ int
	uxtb	r3, r3
.L478:
	ldr	r0, [sp, #12]
	mov	r1, r4
	mov	r2, r7
	bl	libaroma_draw_alphapixel(PLT)
	cmp	r0, #0
	bne	.L472
	b	.L578
.L440:
	ldr	r5, [sp, #20]
	add	r5, r5, fp
	fmsr	s13, r5	@ int
	fsitos	s15, s13
	fcmpes	s15, s16
	fmstat
	bpl	.L455
	ldr	r1, [sp, #32]
	cmp	r10, fp
	ldr	r2, [sp, #128]
	ite	le
	movle	ip, #0
	movgt	ip, #1
	cmp	r10, fp
	it	le
	cmple	r1, r2
	beq	.L455
	str	fp, [sp, #40]
	mov	r6, r1
	str	r7, [sp, #60]
	mov	fp, ip
	mov	r7, r2
	b	.L467
.L597:
	.align	2
.L596:
	.word	1132396544
.L457:
	eor	r0, r5, r5, asr #31
	ldr	r1, [sp, #16]
	cmp	r8, #2
	sub	r0, r0, r5, asr #31
	add	r6, r6, r1
	fmsr	s15, r0	@ int
	fsitos	s15, s15
	beq	.L592
	fcpys	s13, s18
	fnmacs	s13, s17, s15
	fmuls	s15, s19, s13
	fcmpezs	s15
	fmstat
	it	mi
	movmi	r3, #0
	bmi	.L464
	fcmps	s15, s20
	fmstat
	itett	le
	ftouizsle	s15, s15
	movgt	r3, #255
	fmrsle	r3, s15	@ int
	uxtble	r3, r3
.L464:
	str	r3, [sp]
	mov	r1, r4
	ldr	r0, [sp, #12]
	mov	r2, r6
	ldr	r3, [sp, #28]
	bl	libaroma_draw_pixel(PLT)
	cmp	r0, #0
	beq	.L575
.L456:
	add	r5, r5, r10
	fmsr	s14, r5	@ int
	fsitos	s15, s14
	fcmpes	s15, s16
	fmstat
	bpl	.L575
	cmp	r6, r7
	ite	eq
	moveq	r3, fp
	orrne	r3, fp, #1
	cbz	r3, .L575
.L467:
	cmp	r6, #0
	ite	lt
	movlt	r3, #0
	andge	r3, r9, #1
	cmp	r3, #0
	beq	.L456
	cmp	r8, #1
	bne	.L457
	eor	r3, r5, r5, asr #31
	fcpys	s13, s18
	ldr	r0, [sp, #16]
	sub	r3, r3, r5, asr #31
	add	r6, r6, r0
	fmsr	s15, r3	@ int
	fsitos	s15, s15
	fnmacs	s13, s17, s15
	fmuls	s15, s19, s13
	fcmpzs	s15
	fmstat
	bmi	.L593
	fcmpes	s19, s15
	fmstat
	bpl	.L572
.L486:
	ldr	r3, [sp, #56]
	mov	r1, r4
	ldr	r0, [sp, #12]
	mov	r2, r6
	bl	libaroma_draw_alphapixel(PLT)
	cmp	r0, #0
	bne	.L456
.L575:
	ldr	fp, [sp, #40]
	ldr	r7, [sp, #60]
.L455:
	ldr	r0, [sp, #48]
	cmp	r4, r0
	beq	.L544
	ldr	r2, [sp, #36]
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #20]
	cmp	fp, r2
	add	r1, r1, r4
	rsb	r9, fp, r0
	str	r1, [sp, #40]
	bge	.L441
	mov	r4, r1
	str	r9, [sp, #20]
	ldr	r0, [sp, #52]
	b	.L438
.L592:
	fcpys	s13, s21
	fmacs	s13, s17, s15
	fmuls	s15, s13, s20
	fcmpezs	s15
	fmstat
	bmi	.L584
	fcmps	s15, s20
	fmstat
	it	gt
	movgt	r3, #255
	bgt	.L462
.L572:
	ftouizs	s15, s15
	fmrs	r3, s15	@ int
	uxtb	r3, r3
.L462:
	ldr	r0, [sp, #12]
	mov	r1, r4
	mov	r2, r6
	bl	libaroma_draw_alphapixel(PLT)
	cmp	r0, #0
	bne	.L456
	b	.L575
.L593:
	fcmpezs	s19
	fmstat
	bmi	.L486
.L584:
	movs	r3, #0
	b	.L462
.L591:
	fcmpezs	s19
	fmstat
	bmi	.L488
.L585:
	movs	r3, #0
	b	.L478
.L588:
	ldr	r2, [sp, #20]
	fcpys	s14, s18
	rsb	r3, r10, r2
	add	r3, r3, fp
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	fmsr	s13, r3	@ int
	fsitos	s15, s13
	fnmacs	s14, s17, s15
	fmuls	s15, s14, s19
	fcmpzs	s15
	fmstat
	bmi	.L594
	fcmpes	s19, s15
	fmstat
	bpl	.L571
.L484:
	ldr	r3, [sp, #56]
	mov	r1, r4
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #32]
	bl	libaroma_draw_alphapixel(PLT)
	cmp	r0, #0
	bne	.L447
.L544:
	movs	r0, #1
	add	sp, sp, #68
	@ sp needed
	fldmfdd	sp!, {d8-d10}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L589:
	fcpys	s14, s21
	fmacs	s14, s17, s15
	fmuls	s15, s14, s20
	fcmpezs	s15
	fmstat
	bmi	.L583
	fcmps	s15, s20
	fmstat
	it	gt
	movgt	r3, #255
	bgt	.L449
.L571:
	ftouizs	s15, s15
	fmrs	r3, s15	@ int
	uxtb	r3, r3
.L449:
	ldr	r0, [sp, #12]
	mov	r1, r4
	ldr	r2, [sp, #32]
	bl	libaroma_draw_alphapixel(PLT)
	cmp	r0, #0
	bne	.L447
	movs	r0, #1
	add	sp, sp, #68
	@ sp needed
	fldmfdd	sp!, {d8-d10}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L594:
	fcmpezs	s19
	fmstat
	bmi	.L484
.L583:
	movs	r3, #0
	b	.L449
.L587:
	fmsr	s13, fp	@ int
	fsitos	s15, s13
	fmsr	s13, r10	@ int
	fsitos	s14, s13
	fmuls	s15, s15, s15
	fmacs	s15, s14, s14
	fcvtds	d17, s15
	fsqrtd	d0, d17
	fcmpd	d0, d0
	fmstat
	bne	.L595
.L437:
	fcvtsd	s16, d0
	b	.L436
.L586:
	bl	libaroma_fb(PLT)
	ldr	r0, [r0, #52]
	ldr	r3, [sp, #48]
	str	r0, [sp, #12]
	b	.L433
.L595:
	fcpyd	d0, d17
	bl	sqrt(PLT)
	b	.L437
	.size	libaroma_draw_line, .-libaroma_draw_line
	.section	.text.libaroma_draw_subpixel,"ax",%progbits
	.align	2
	.global	libaroma_draw_subpixel
	.thumb
	.thumb_func
	.type	libaroma_draw_subpixel, %function
libaroma_draw_subpixel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
	mov	r8, r1
	mov	r9, r2
	fcpys	s20, s0
	fcpys	s21, s1
	fcpys	s16, s2
	cmp	r0, #0
	beq	.L641
.L599:
	fconsts	s15, #240
	fcmpes	s20, s15
	fmstat
	fcmpes	s21, s15
	ite	ls
	movls	r0, #1
	movhi	r0, #0
	fmstat
	it	ls
	orrls	r0, r0, #1
	cmp	r0, #0
	bne	.L623
	flds	s14, [r5, #4]	@ int
	fsitos	s15, s14
	fcmpes	s21, s15
	fmstat
	bge	.L600
	flds	s14, [r5]	@ int
	fsitos	s15, s14
	fcmpes	s20, s15
	fmstat
	bge	.L600
	fcvtds	d1, s16
	fconstd	d16, #96
	fconsts	s24, #112
	flds	s22, .L644
	fmscd	d16, d1, d16
	fcvtsd	s25, d16
	fsubs	s0, s21, s25
	bl	floorf(PLT)
	ftosizs	s0, s0
	fdivs	s23, s24, s25
	fsubs	s26, s20, s25
	fmrs	r7, s0	@ int
	fadds	s0, s25, s21
	bl	ceilf(PLT)
	fadds	s25, s25, s20
	fcvtds	d9, s0
.L601:
	fmsr	s14, r7	@ int
	fsitod	d16, s14
	fcmped	d16, d9
	fmstat
	bhi	.L642
	cmp	r7, #0
	blt	.L603
	ldr	r3, [r5, #4]
	cmp	r7, r3
	bge	.L603
	fcpys	s0, s26
	bl	floorf(PLT)
	ftosizs	s0, s0
	ldr	r6, [r5, #8]
	fmrs	r4, s0	@ int
	fcpys	s0, s25
	mul	r6, r6, r7
	bl	ceilf(PLT)
	fmsr	s14, r7	@ int
	add	r6, r6, r4
	fsitos	s15, s14
	lsls	r6, r6, #1
	fcvtds	d8, s0
	fsubs	s14, s21, s15
	fsubs	s13, s15, s21
	fcmpes	s21, s15
	fmstat
	ftosizs	s14, s14
	ftosizs	s15, s13
	fmrs	r3, s14	@ int
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	fmrs	r3, s15	@ int
	fmsr	s14, r2	@ int
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	fsitos	s14, s14
	fmsr	s15, r2	@ int
	fsitos	s15, s15
	ite	pl
	fcpyspl	s27, s15
	fcpysmi	s27, s14
	cmp	r9, #255
	fmuls	s27, s27, s23
	bne	.L606
	b	.L614
.L643:
	cmp	r4, #0
	blt	.L608
	ldr	r3, [r5]
	cmp	r4, r3
	bge	.L608
	fsitos	s15, s14
	fcmpes	s20, s15
	fmstat
	it	mi
	fsubsmi	s15, s20, s15
	bmi	.L639
	fsubs	s15, s15, s20
.L639:
	ftosizs	s15, s15
	fcpys	s14, s24
	fmrs	r3, s15	@ int
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	fmsr	s15, r2	@ int
	fsitos	s15, s15
	fnmacs	s14, s15, s23
	fsubs	s15, s14, s27
	fmuls	s15, s15, s22
	fcmpzs	s15
	fmstat
	it	le
	movle	r2, #0
	ble	.L611
	fcmps	s15, s22
	fmstat
	itett	le
	ftosizsle	s15, s15
	movgt	r2, #255
	fmrsle	r2, s15	@ int
	uxtble	r2, r2
.L611:
	ldr	r10, [r5, #16]
	mov	r1, r8
	ldrh	r0, [r10, r6]
	bl	libaroma_alpha(PLT)
	strh	r0, [r10, r6]	@ movhi
.L608:
	adds	r4, r4, #1
	adds	r6, r6, #2
.L614:
	fmsr	s14, r4	@ int
	fsitod	d16, s14
	fcmped	d16, d8
	fmstat
	bls	.L643
.L603:
	adds	r7, r7, #1
	b	.L601
.L642:
	movs	r0, #1
.L600:
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L621:
	cmp	r4, #0
	blt	.L615
	ldr	r3, [r5]
	cmp	r4, r3
	bge	.L615
	fmsr	s14, r4	@ int
	fsitos	s15, s14
	fcpys	s14, s24
	fcmpes	s20, s15
	fmstat
	ite	mi
	fsubsmi	s15, s20, s15
	fsubspl	s15, s15, s20
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	fmsr	s15, r2	@ int
	fsitos	s15, s15
	fnmacs	s14, s15, s23
	fsubs	s15, s14, s27
	fmuls	s15, s15, s22
	fcmpzs	s15
	fmstat
	it	le
	movle	r2, #0
	ble	.L619
	fcmps	s15, s22
	fmstat
	itett	le
	ftosizsle	s15, s15
	movgt	r2, #255
	fmrsle	r2, s15	@ int
	uxtble	r2, r2
.L619:
	ldr	r10, [r5, #16]
	mov	r1, r8
	ldrh	r0, [r10, r6]
	bl	libaroma_alpha(PLT)
	mov	r2, r9
	mov	r1, r0
	ldrh	r0, [r10, r6]
	bl	libaroma_alpha(PLT)
	strh	r0, [r10, r6]	@ movhi
.L615:
	adds	r4, r4, #1
	adds	r6, r6, #2
.L606:
	fmsr	s15, r4	@ int
	fsitod	d16, s15
	fcmped	d16, d8
	fmstat
	bls	.L621
	adds	r7, r7, #1
	b	.L601
.L623:
	fldmfdd	sp!, {d8-d13}
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L641:
	bl	libaroma_fb(PLT)
	ldr	r5, [r0, #52]
	b	.L599
.L645:
	.align	2
.L644:
	.word	1132396544
	.size	libaroma_draw_subpixel, .-libaroma_draw_subpixel
	.section	.text.libaroma_draw_mask_circle,"ax",%progbits
	.align	2
	.global	libaroma_draw_mask_circle
	.thumb
	.thumb_func
	.type	libaroma_draw_mask_circle, %function
libaroma_draw_mask_circle:
	@ args = 16, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #52
	mov	r5, r0
	mov	r4, r1
	mov	r8, r2
	ldr	r6, [sp, #88]
	ldrb	r9, [sp, #92]	@ zero_extendqisi2
	cbz	r0, .L652
	cbz	r4, .L649
.L653:
	cmp	r6, #1
	it	le
	movle	r0, #1
	ble	.L648
	asrs	r6, r6, #1
	str	r3, [sp, #20]
	ldr	r3, [sp, #80]
	add	r7, sp, #8
	mul	lr, r6, r6
	ldr	r0, .L654
	mov	r1, r7
	movs	r2, #0
	str	r3, [sp, #24]
	ldr	r3, [sp, #84]
.LPIC29:
	add	r0, pc
	str	lr, [sp, #36]
	str	r6, [sp, #32]
	str	r3, [sp, #28]
	str	r5, [sp, #8]
	str	r4, [sp, #12]
	str	r8, [sp, #16]
	strb	r9, [sp, #40]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r7
	bl	libaroma_draw_mask_circle._omp_fn.5(PLT)
	bl	GOMP_parallel_end(PLT)
	movs	r0, #1
.L648:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L652:
	str	r3, [sp, #4]
	bl	libaroma_fb(PLT)
	ldr	r3, [sp, #4]
	ldr	r5, [r0, #52]
	cmp	r4, #0
	bne	.L653
.L649:
	mov	r0, r4
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L655:
	.align	2
.L654:
	.word	libaroma_draw_mask_circle._omp_fn.5-(.LPIC29+4)
	.size	libaroma_draw_mask_circle, .-libaroma_draw_mask_circle
	.section	.text.libaroma_draw_circle,"ax",%progbits
	.align	2
	.global	libaroma_draw_circle
	.thumb
	.thumb_func
	.type	libaroma_draw_circle, %function
libaroma_draw_circle:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #36
	mov	r4, r0
	mov	r7, r1
	mov	r8, r2
	ldr	r5, [sp, #64]
	ldrb	r9, [sp, #68]	@ zero_extendqisi2
	cbz	r0, .L660
.L657:
	cmp	r5, #1
	ble	.L658
	asrs	r5, r5, #1
	ldr	r0, .L661
	add	r6, sp, #8
	str	r3, [sp, #16]
	mul	lr, r5, r5
	mov	r1, r6
.LPIC30:
	add	r0, pc
	movs	r2, #0
	str	r5, [sp, #20]
	str	r4, [sp, #8]
	str	lr, [sp, #24]
	str	r8, [sp, #12]
	strh	r7, [sp, #28]	@ movhi
	strb	r9, [sp, #30]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r6
	bl	libaroma_draw_circle._omp_fn.6(PLT)
	bl	GOMP_parallel_end(PLT)
.L658:
	movs	r0, #1
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L660:
	str	r3, [sp, #4]
	bl	libaroma_fb(PLT)
	ldr	r3, [sp, #4]
	ldr	r4, [r0, #52]
	b	.L657
.L662:
	.align	2
.L661:
	.word	libaroma_draw_circle._omp_fn.6-(.LPIC30+4)
	.size	libaroma_draw_circle, .-libaroma_draw_circle
	.section	.text.libaroma_draw_line_width,"ax",%progbits
	.align	2
	.global	libaroma_draw_line_width
	.thumb
	.thumb_func
	.type	libaroma_draw_line_width, %function
libaroma_draw_line_width:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
	mov	r8, r1
	sub	sp, sp, #24
	mov	r7, r2
	fcpys	s19, s0
	mov	r6, r3
	fcpys	s18, s1
	fcpys	s21, s2
	fcpys	s20, s3
	fcpys	s16, s4
	fcpys	s22, s5
	cmp	r0, #0
	beq	.L672
.L664:
	cmp	r6, #0
	beq	.L665
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.L666
.L667:
	fsubs	s0, s20, s18
	fsubs	s2, s21, s19
	fcvtds	d0, s0
	fcvtds	d1, s2
	bl	atan2(PLT)
	fconsts	s15, #96
	add	r1, sp, #8
	fcvtsd	s0, d0
	add	r0, sp, #16
	fmuls	s16, s16, s15
	fcvtds	d0, s0
	bl	sincos(PLT)
	fcvtds	d8, s16
	fldd	d17, [sp, #16]
	fldd	d16, [sp, #8]
	fmuld	d17, d17, d8
	fmuld	d8, d16, d8
	fcvtsd	s23, d17
	fcvtsd	s16, d8
	fadds	s24, s23, s19
	fsubs	s26, s21, s23
	fsubs	s17, s18, s16
	fadds	s25, s16, s20
	fcpys	s0, s24
	fcpys	s1, s17
	bl	libaroma_path(PLT)
	fadds	s0, s23, s21
	mov	r5, r0
	fsubs	s1, s20, s16
	bl	libaroma_path_add(PLT)
	mov	r0, r5
	fcpys	s0, s26
	fcpys	s1, s25
	bl	libaroma_path_add(PLT)
	fcpys	s0, s26
	mov	r0, r5
	fcpys	s1, s25
	bl	libaroma_path_add(PLT)
	fsubs	s0, s19, s23
	mov	r0, r5
	fadds	s1, s16, s18
	bl	libaroma_path_add(PLT)
	mov	r0, r5
	fcpys	s0, s24
	fcpys	s1, s17
	bl	libaroma_path_add(PLT)
	mov	r0, r4
	mov	r2, r8
	mov	r3, r7
	fcpys	s0, s22
	mov	r1, r5
	str	r6, [sp]
	bl	libaroma_path_draw(PLT)
	mov	r4, r0
	mov	r0, r5
	bl	libaroma_path_free(PLT)
	mov	r0, r4
.L666:
	add	sp, sp, #24
	@ sp needed
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, pc}
.L665:
	movs	r0, #1
	cmp	r7, #0
	bne	.L667
	add	sp, sp, #24
	@ sp needed
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, pc}
.L672:
	bl	libaroma_fb(PLT)
	ldr	r4, [r0, #52]
	b	.L664
	.size	libaroma_draw_line_width, .-libaroma_draw_line_width
	.section	.text._libaroma_draw_arc_findpoint,"ax",%progbits
	.align	2
	.global	_libaroma_draw_arc_findpoint
	.thumb
	.thumb_func
	.type	_libaroma_draw_arc_findpoint, %function
_libaroma_draw_arc_findpoint:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	fcmpd	d4, d5
	fmstat
	push	{r4, lr}
	it	eq
	moveq	r0, #0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #16
	fcpyd	d9, d4
	fcpyd	d8, d5
	beq	.L674
	fcmped	d4, d5
	mov	r4, r0
	fmstat
	fcpys	s27, s0
	fcpys	s26, s1
	fcpys	s25, s2
	fcpys	s24, s3
	fcpys	s29, s4
	fcpys	s30, s5
	fcpys	s23, s6
	fcpys	s28, s7
	bmi	.L686
	fsubd	d17, d4, d5
	fconstd	d16, #96
	fcpyd	d10, d5
	fmacd	d10, d17, d16
.L677:
	fcpyd	d0, d10
	add	r0, sp, #8
	mov	r1, sp
	bl	sincos(PLT)
	fldd	d19, [sp]
	fcvtds	d21, s25
	fcvtds	d17, s27
	fldd	d18, [sp, #8]
	fcvtds	d20, s24
	fcvtds	d16, s26
	fmacd	d17, d19, d21
	fmacd	d16, d18, d20
	fcvtsd	s22, d17
	fcvtsd	s31, d16
	fsubs	s15, s22, s29
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r3, #1
	bgt	.L678
	fsubs	s15, s31, s30
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r3, #1
	ble	.L679
.L678:
	fcpys	s4, s29
	mov	r0, r4
	fcpys	s5, s30
	fcpyd	d4, d9
	fcpys	s0, s27
	fcpys	s1, s26
	fcpys	s2, s25
	fcpys	s3, s24
	fcpys	s6, s22
	fcpys	s7, s31
	fcpyd	d5, d10
	bl	_libaroma_draw_arc_findpoint(PLT)
.L679:
	mov	r0, r4
	fcpys	s0, s22
	fcpys	s1, s31
	bl	libaroma_path_add(PLT)
	fsubs	s15, s22, s23
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r3, #1
	bgt	.L680
	fsubs	s15, s31, s28
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r3, #1
	ble	.L681
.L680:
	fcpys	s0, s27
	mov	r0, r4
	fcpys	s1, s26
	fcpys	s2, s25
	fcpys	s3, s24
	fcpys	s4, s22
	fcpys	s5, s31
	fcpyd	d4, d10
	fcpyd	d5, d8
	fcpys	s6, s23
	fcpys	s7, s28
	bl	_libaroma_draw_arc_findpoint(PLT)
.L681:
	mov	r0, r4
	fcpys	s0, s23
	fcpys	s1, s28
	bl	libaroma_path_add(PLT)
	movs	r0, #1
.L674:
	add	sp, sp, #16
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, pc}
.L686:
	fsubd	d17, d5, d4
	fconstd	d16, #96
	fcpyd	d10, d4
	fmacd	d10, d17, d16
	b	.L677
	.size	_libaroma_draw_arc_findpoint, .-_libaroma_draw_arc_findpoint
	.section	.text.libaroma_draw_arc,"ax",%progbits
	.align	2
	.global	libaroma_draw_arc
	.thumb
	.thumb_func
	.type	libaroma_draw_arc, %function
libaroma_draw_arc:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r8, r1
	sub	sp, sp, #76
	mov	r6, r2
	fcpys	s30, s0
	mov	r5, r3
	fcpys	s29, s1
	fcpys	s26, s2
	fcpys	s27, s3
	fcpys	s28, s4
	fcpys	s20, s5
	fcpys	s22, s6
	fcpys	s31, s7
	cmp	r0, #0
	beq	.L705
.L688:
	cmp	r5, #0
	beq	.L689
	ldr	r0, [r4, #20]
	cmp	r0, #0
	beq	.L690
.L691:
	fcmps	s20, s22
	fmstat
	beq	.L699
	fcmpes	s20, s22
	add	r7, sp, #56
	fmstat
	add	r9, sp, #64
	it	gt
	fmrsgt	r3, s20
	mov	r1, r7
	it	gt
	fcpysgt	s20, s22
	mov	r0, r9
	fldd	d12, .L707
	fcvtds	d10, s20
	it	gt
	fmsrgt	s22, r3
	fcvtds	d11, s22
	fcvtds	d8, s29
	fmuld	d10, d10, d12
	fcvtds	d9, s30
	fmuld	d11, d11, d12
	fcpyd	d0, d10
	bl	sincos(PLT)
	fldd	d16, [sp, #56]
	mov	r1, r7
	fldd	d17, [sp, #64]
	mov	r0, r9
	fcpyd	d0, d11
	fstd	d16, [sp, #24]
	fstd	d17, [sp, #32]
	bl	sincos(PLT)
	fldd	d18, [sp, #56]
	fldd	d19, [sp, #64]
	fldd	d21, [sp, #32]
	fcvtds	d16, s27
	fldd	d20, [sp, #24]
	fcvtds	d17, s26
	fstd	d18, [sp, #40]
	fcpyd	d18, d8
	fstd	d19, [sp, #48]
	fmacd	d18, d21, d16
	fcpyd	d19, d9
	fldd	d21, [sp, #40]
	fmacd	d19, d20, d17
	fcpyd	d20, d9
	fmacd	d20, d21, d17
	fldd	d21, [sp, #48]
	fcvtsd	s15, d19
	fcpyd	d17, d20
	fcpyd	d20, d8
	fsts	s15, [sp, #12]
	fmacd	d20, d21, d16
	fcvtsd	s15, d18
	flds	s0, [sp, #12]
	fcvtsd	s25, d17
	fcpys	s1, s15
	fsts	s15, [sp, #16]
	fcvtsd	s24, d20
	bl	libaroma_path(PLT)
	fcpys	s0, s30
	mov	r7, r0
	fcpys	s1, s29
	fcpys	s2, s26
	fcpys	s3, s27
	flds	s4, [sp, #12]
	flds	s5, [sp, #16]
	fcpys	s6, s25
	fcpys	s7, s24
	fcpyd	d4, d10
	fcpyd	d5, d11
	bl	_libaroma_draw_arc_findpoint(PLT)
	mov	r0, r7
	fcpys	s0, s25
	fcpys	s1, s24
	bl	libaroma_path_add(PLT)
	fcmpezs	s28
	fmstat
	ble	.L693
	fconsts	s15, #96
	fmuls	s14, s26, s15
	fcmpes	s28, s14
	fmstat
	bpl	.L693
	fmuls	s15, s27, s15
	fcmpes	s28, s15
	fmstat
	bmi	.L706
.L693:
	mov	r2, r8
	mov	r3, r6
	fcpys	s0, s31
	mov	r1, r7
	str	r5, [sp]
	mov	r0, r4
	bl	libaroma_path_draw(PLT)
	mov	r4, r0
	mov	r0, r7
	bl	libaroma_path_free(PLT)
	mov	r0, r4
	add	sp, sp, #76
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L689:
	cmp	r6, #0
	bne	.L691
.L699:
	movs	r0, #1
.L690:
	add	sp, sp, #76
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L705:
	bl	libaroma_fb(PLT)
	ldr	r4, [r0, #52]
	b	.L688
.L706:
	fsubs	s26, s26, s28
	mov	r0, r7
	fsubs	s28, s27, s28
	fldd	d18, [sp, #40]
	fldd	d19, [sp, #48]
	fsts	s26, [sp, #12]
	fcvtds	d16, s28
	fcvtds	d13, s26
	fcpyd	d17, d9
	fstd	d16, [sp, #16]
	fldd	d20, [sp, #16]
	fcpyd	d16, d8
	fmacd	d17, d18, d13
	fmacd	d16, d19, d20
	fcvtsd	s25, d17
	fcvtsd	s24, d16
	fcpys	s0, s25
	fcpys	s1, s24
	bl	libaroma_path_add(PLT)
	fldd	d21, [sp, #24]
	mov	r0, r7
	fldd	d16, [sp, #32]
	fldd	d17, [sp, #16]
	fcpyd	d3, d9
	fcpys	s4, s25
	fmacd	d3, d21, d13
	fcpys	s5, s24
	fmacd	d8, d16, d17
	flds	s2, [sp, #12]
	fcpys	s3, s28
	fcpys	s0, s30
	fcpys	s1, s29
	fcvtsd	s6, d3
	fcpyd	d4, d11
	fcvtsd	s7, d8
	fcpyd	d5, d10
	bl	_libaroma_draw_arc_findpoint(PLT)
	b	.L693
.L708:
	.align	3
.L707:
	.word	-1571643772
	.word	1066524486
	.size	libaroma_draw_arc, .-libaroma_draw_arc
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
