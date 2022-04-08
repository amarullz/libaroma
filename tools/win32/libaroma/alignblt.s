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
	.file	"alignblt.c"
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text.libaroma_blt_align16._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_blt_align16._omp_fn.0, %function
libaroma_blt_align16._omp_fn.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r4, [r0]
	bl	omp_get_num_threads(PLT)
	mov	r6, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r6
	mov	r8, r0
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r1, r6
	mov	r7, r0
	mov	r0, r4
	bl	__aeabi_idivmod(PLT)
	cmp	r8, r1
	itt	lt
	addlt	r7, r7, #1
	movlt	r1, #0
	mla	r4, r8, r7, r1
	add	r7, r7, r4
	cmp	r4, r7
	bge	.L1
.L5:
	add	r0, r5, #8
	ldr	r3, [r5, #20]
	ldmia	r0, {r0, r1, r6}
	ldr	r2, [r5, #4]
	mla	r0, r0, r4, r6
	mla	r1, r1, r4, r3
	adds	r4, r4, #1
	bl	memcpy(PLT)
	cmp	r4, r7
	bne	.L5
	pop	{r4, r5, r6, r7, r8, pc}
.L1:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	libaroma_blt_align16._omp_fn.0, .-libaroma_blt_align16._omp_fn.0
	.section	.text.libaroma_blt_align32_to16._omp_fn.1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_blt_align32_to16._omp_fn.1, %function
libaroma_blt_align32_to16._omp_fn.1:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r0
	ldr	r7, [r0, #12]
	fstmfdd	sp!, {d8, d9, d10, d11}
	sub	sp, sp, #20
	bl	omp_get_num_threads(PLT)
	mov	r6, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r6
	mov	r5, r0
	mov	r0, r7
	bl	__aeabi_idiv(PLT)
	mov	r1, r6
	mov	r4, r0
	mov	r0, r7
	bl	__aeabi_idivmod(PLT)
	cmp	r5, r1
	itt	lt
	addlt	r4, r4, #1
	movlt	r1, #0
	mla	r5, r5, r4, r1
	adds	r4, r5, r4
	cmp	r5, r4
	str	r4, [sp, #8]
	bge	.L9
	vmov.i16	q4, #255  @ v8hi
	movs	r3, #7
	movt	r3, 32768
	str	r3, [sp, #12]
.L22:
	ldr	r8, [r10, #8]
	ldr	r6, [r10, #16]
	ldr	r0, [r10, #20]
	ldr	r1, [r10]
	cmp	r8, #7
	asr	r3, r8, #31
	ldr	r2, [r10, #4]
	mul	r6, r6, r5
	lsr	r3, r3, #29
	mul	r0, r0, r5
	add	r4, r8, r3
	add	r1, r1, r6, lsl #1
	and	r4, r4, #7
	sub	r4, r4, r3
	add	r2, r2, r0, lsl #2
	str	r1, [sp]
	str	r2, [sp, #4]
	bgt	.L12
.L15:
	cmp	r4, #0
	ble	.L14
	rsb	r4, r4, r8
	cmp	r8, r4
	ble	.L14
	ldr	r3, [sp, #12]
	add	r9, r4, #1
	sub	fp, r8, #7
	cmp	r8, r3
	it	ge
	cmpge	fp, r9
	ble	.L19
	ldr	r3, [sp, #4]
	add	r7, r3, r4, lsl #2
	ldr	r3, [sp]
	add	r6, r3, r4, lsl #1
.L20:
	ldr	r2, [r7]
	mov	r0, r4
	mov	r1, r5
	pld	[r7, #36]
	bl	libaroma_dither(PLT)
	ldr	r2, [r7, #4]
	mov	r1, r5
	strh	r0, [r6]	@ movhi
	mov	r0, r9
	pld	[r6, #18]
	add	r9, r9, #8
	bl	libaroma_dither(PLT)
	ldr	r2, [r7, #8]
	mov	r1, r5
	strh	r0, [r6, #2]	@ movhi
	adds	r0, r4, #2
	bl	libaroma_dither(PLT)
	ldr	r2, [r7, #12]
	mov	r1, r5
	strh	r0, [r6, #4]	@ movhi
	adds	r0, r4, #3
	bl	libaroma_dither(PLT)
	ldr	r2, [r7, #16]
	mov	r1, r5
	strh	r0, [r6, #6]	@ movhi
	adds	r0, r4, #4
	bl	libaroma_dither(PLT)
	ldr	r2, [r7, #20]
	mov	r1, r5
	strh	r0, [r6, #8]	@ movhi
	adds	r0, r4, #5
	bl	libaroma_dither(PLT)
	ldr	r2, [r7, #24]
	mov	r1, r5
	strh	r0, [r6, #10]	@ movhi
	adds	r0, r4, #6
	bl	libaroma_dither(PLT)
	ldr	r2, [r7, #28]
	mov	r1, r5
	strh	r0, [r6, #12]	@ movhi
	adds	r0, r4, #7
	bl	libaroma_dither(PLT)
	cmp	fp, r9
	strh	r0, [r6, #14]	@ movhi
	add	r4, r4, #8
	add	r7, r7, #32
	add	r6, r6, #16
	bgt	.L20
	add	r9, r4, #1
.L19:
	ldr	r3, [sp, #4]
	add	r2, r4, #1073741824
	subs	r2, r2, #1
	add	r6, r4, #-2147483648
	subs	r6, r6, #1
	add	fp, r3, r2, lsl #2
	ldr	r3, [sp]
	add	r6, r3, r6, lsl #1
.L21:
	mov	r0, r4
	mov	r1, r5
	ldr	r2, [fp, #4]!
	mov	r4, r9
	bl	libaroma_dither(PLT)
	cmp	r8, r9
	strh	r0, [r6, #2]!	@ movhi
	add	r9, r9, #1
	bgt	.L21
.L14:
	ldr	r3, [sp, #8]
	adds	r5, r5, #1
	cmp	r5, r3
	bne	.L22
.L9:
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8-d11}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L12:
	and	r6, r5, #7
	lsls	r6, r6, #3
	bl	libaroma_dither_table_r(PLT)
	add	r0, r0, r6
	vld1.8	{d11}, [r0]
	bl	libaroma_dither_table_g(PLT)
	add	r0, r0, r6
	vld1.8	{d10}, [r0]
	bl	libaroma_dither_table_b(PLT)
	ldr	r1, [sp, #4]
	add	r0, r0, r6
	ldr	r2, [sp]
	rsb	r6, r4, r8
	vld1.8	{d20}, [r0]
	movs	r3, #0
.L16:
	vld4.8	{d16-d19}, [r1]!
	adds	r3, r3, #8
	cmp	r6, r3
	vaddl.u8	q11, d18, d11
	vaddl.u8	q12, d17, d10
	vaddl.u8	q9, d16, d20
	vmin.u16	q11, q11, q4
	vmin.u16	q8, q12, q4
	vmin.u16	q9, q9, q4
	vshr.u16	q11, q11, #3
	vshr.u16	q8, q8, #2
	vshr.u16	q9, q9, #3
	vqshl.u16	q11, q11, #11
	vqshl.u16	q8, q8, #5
	vorr	q8, q11, q8
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r2]!
	bgt	.L16
	b	.L15
	.size	libaroma_blt_align32_to16._omp_fn.1, .-libaroma_blt_align32_to16._omp_fn.1
	.section	.text.libaroma_blt_align16_to32._omp_fn.2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_blt_align16_to32._omp_fn.2, %function
libaroma_blt_align16_to32._omp_fn.2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r0
	ldr	r6, [r0, #12]
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
	sub	sp, sp, #20
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
	mov	r2, r8
	str	r8, [sp]
	add	r2, r2, r4
	cmp	r8, r2
	str	r2, [sp, #8]
	bge	.L30
	vmov.i8	d13, #0xf8  @ v8qi
	movs	r2, #15
	vmov.i8	d12, #0xfc  @ v8qi
	movt	r2, 32768
	str	r2, [sp, #12]
.L43:
	ldr	r6, [r9, #8]
	ldr	r2, [sp]
	ldr	r5, [r9, #16]
	ldr	r4, [r9, #20]
	cmp	r6, #7
	ldr	r0, [r9]
	asr	r3, r6, #31
	ldr	r1, [r9, #4]
	mul	r5, r5, r2
	lsr	r3, r3, #29
	mul	r4, r4, r2
	add	r2, r6, r3
	and	r2, r2, #7
	add	r0, r0, r5, lsl #2
	sub	r2, r2, r3
	str	r0, [sp, #4]
	add	fp, r1, r4, lsl #1
	bgt	.L33
.L36:
	cmp	r2, #0
	ble	.L35
	rsb	r10, r2, r6
	cmp	r6, r10
	ble	.L35
	ldr	r3, [sp, #12]
	sub	r7, r6, #15
	add	r8, r10, #1
	cmp	r6, r3
	it	ge
	cmpge	r7, r8
	ble	.L40
	ldr	r2, [sp, #4]
	add	r5, fp, r10, lsl #1
	add	r4, r2, r10, lsl #2
.L41:
	ldrh	r0, [r5]
	add	r10, r10, #16
	pld	[r5, #20]
	add	r8, r10, #1
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4]
	adds	r5, r5, #32
	ldrh	r0, [r5, #-30]
	pld	[r4, #40]
	pld	[r4, #72]
	adds	r4, r4, #64
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-60]
	ldrh	r0, [r5, #-28]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-56]
	ldrh	r0, [r5, #-26]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-52]
	ldrh	r0, [r5, #-24]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-48]
	ldrh	r0, [r5, #-22]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-44]
	ldrh	r0, [r5, #-20]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-40]
	ldrh	r0, [r5, #-18]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-36]
	ldrh	r0, [r5, #-16]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-32]
	ldrh	r0, [r5, #-14]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-28]
	ldrh	r0, [r5, #-12]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-24]
	ldrh	r0, [r5, #-10]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-20]
	ldrh	r0, [r5, #-8]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-16]
	ldrh	r0, [r5, #-6]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-12]
	ldrh	r0, [r5, #-4]
	bl	libaroma_rgb_to32(PLT)
	str	r0, [r4, #-8]
	ldrh	r0, [r5, #-2]
	bl	libaroma_rgb_to32(PLT)
	cmp	r7, r8
	str	r0, [r4, #-4]
	bgt	.L41
.L40:
	ldr	r3, [sp, #4]
	add	r1, r10, #-2147483648
	add	r2, r10, #1073741824
	subs	r1, r1, #1
	subs	r2, r2, #1
	add	fp, fp, r1, lsl #1
	add	r10, r3, r2, lsl #2
.L42:
	ldrh	r0, [fp, #2]!
	bl	libaroma_rgb_to32(PLT)
	cmp	r6, r8
	str	r0, [r10, #4]!
	add	r8, r8, #1
	bgt	.L42
.L35:
	ldr	r3, [sp]
	ldr	r2, [sp, #8]
	adds	r3, r3, #1
	cmp	r3, r2
	str	r3, [sp]
	bne	.L43
.L30:
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L33:
	mov	r1, r0
	subs	r4, r6, r2
	mov	r0, fp
	movs	r3, #0
.L37:
	vld1.16	{d16-d17}, [r0]!
	adds	r3, r3, #8
	vmov.i32	d11, #0xffffffff  @ v8qi
	cmp	r3, r4
	vmovn.i16	d19, q8
	vshrn.i16	d18, q8, #3
	vshrn.i16	d16, q8, #8
	vshl.i8	d8, d19, #3
	vand	d9, d18, d12
	vand	d10, d16, d13
	vst4.8	{d8-d11}, [r1]!
	blt	.L37
	b	.L36
	.size	libaroma_blt_align16_to32._omp_fn.2, .-libaroma_blt_align16_to32._omp_fn.2
	.section	.text.libaroma_blt_align32._omp_fn.3,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_blt_align32._omp_fn.3, %function
libaroma_blt_align32._omp_fn.3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r4, [r0]
	bl	omp_get_num_threads(PLT)
	mov	r6, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r6
	mov	r8, r0
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r1, r6
	mov	r7, r0
	mov	r0, r4
	bl	__aeabi_idivmod(PLT)
	cmp	r8, r1
	itt	lt
	addlt	r7, r7, #1
	movlt	r1, #0
	mla	r4, r8, r7, r1
	add	r7, r7, r4
	cmp	r4, r7
	bge	.L49
.L53:
	add	r0, r5, #8
	ldr	r3, [r5, #20]
	ldmia	r0, {r0, r1, r6}
	ldr	r2, [r5, #4]
	mla	r0, r0, r4, r6
	mla	r1, r1, r4, r3
	adds	r4, r4, #1
	bl	memcpy(PLT)
	cmp	r4, r7
	bne	.L53
	pop	{r4, r5, r6, r7, r8, pc}
.L49:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	libaroma_blt_align32._omp_fn.3, .-libaroma_blt_align32._omp_fn.3
	.section	.text.libaroma_blt_align_to32_pos._omp_fn.4,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_blt_align_to32_pos._omp_fn.4, %function
libaroma_blt_align_to32_pos._omp_fn.4:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r6, [r0, #12]
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #124
	str	r0, [sp, #32]
	bl	omp_get_num_threads(PLT)
	mov	r5, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r5
	mov	r7, r0
	mov	r0, r6
	bl	__aeabi_idiv(PLT)
	mov	r1, r5
	mov	r4, r0
	mov	r0, r6
	bl	__aeabi_idivmod(PLT)
	cmp	r7, r1
	itt	lt
	addlt	r4, r4, #1
	movlt	r1, #0
	mla	r7, r7, r4, r1
	mov	r0, r7
	str	r7, [sp, #36]
	add	r0, r0, r4
	cmp	r7, r0
	str	r0, [sp, #80]
	bge	.L56
	vmov.i16	q11, #63488  @ v8hi
	movs	r2, #7
	vmov.i16	q1, #31  @ v8hi
	vldr	d20, .L90
	vldr	d21, .L90+8
	add	r10, sp, #88
	movt	r2, 32768
	str	r2, [sp, #84]
.L77:
	ldr	r0, [sp, #32]
	ldr	r3, [sp, #32]
	ldr	r2, [r0, #24]
	ldr	r9, [r3, #8]
	ldr	r1, [r0]
	ldr	r3, [r3, #20]
	ldr	ip, [r0, #4]
	cmp	r9, #7
	ldr	r0, [sp, #36]
	str	r1, [sp, #40]
	asr	r1, r9, #31
	lsr	r1, r1, #29
	mul	fp, r3, r0
	ldr	r0, [sp, #32]
	add	lr, r9, r1
	and	lr, lr, #7
	ldr	r3, [r0, #16]
	rsb	lr, r1, lr
	ldr	r0, [sp, #36]
	mul	r8, r2, r0
	ldr	r2, [sp, #40]
	add	r0, ip, r8, lsl #1
	add	r2, r2, fp, lsl #2
	str	r0, [sp, #60]
	str	r2, [sp, #56]
	bgt	.L59
.L62:
	cmp	lr, #0
	ble	.L61
	rsb	lr, lr, r9
	cmp	r9, lr
	ble	.L61
	ldr	r0, [sp, #40]
	add	fp, fp, lr
	rsb	r7, lr, r9
	adds	r1, r3, #2
	add	r8, r8, lr
	adds	r6, r3, #3
	add	ip, ip, r8, lsl #1
	add	fp, r0, fp, lsl #2
	add	r4, ip, r7, lsl #1
	add	r2, fp, r7, lsl #2
	cmp	fp, r1
	ite	cc
	movcc	r5, #0
	movcs	r5, #1
	cmp	r6, fp
	it	hi
	cmphi	r2, r1
	it	ls
	movls	r6, #1
	add	r1, r3, #1
	it	hi
	movhi	r6, #0
	cmp	r2, ip
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	cmp	r2, r1
	it	ls
	orrls	r5, r5, #1
	cmp	r1, fp
	ite	hi
	movhi	r1, #0
	movls	r1, #1
	ands	r5, r5, r6
	cmp	r3, r2
	it	cs
	orrcs	r1, r1, #1
	cmp	r7, #15
	ite	ls
	movls	r5, #0
	andhi	r5, r5, #1
	cmp	fp, r4
	it	cs
	orrcs	r0, r0, #1
	ands	r1, r1, r5
	tst	r1, r0
	beq	.L66
	lsrs	r2, r7, #4
	lsls	r5, r2, #4
	cmp	r2, #0
	beq	.L67
	mov	r8, fp
	movs	r6, #0
.L72:
	mov	r1, ip
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	adds	r6, r6, #1
	vld1.16	{q9}, [r1]!
	cmp	r6, r2
	vand	q0, q9, q10
	add	ip, ip, #32
	vld1.16	{q13}, [r1]
	vmovn.i16	d16, q9
	vmovn.i16	d17, q13
	vand	q3, q9, q11
	mov	r1, r8
	vshl.i8	q8, q8, #3
	vmovl.u16 q4, d0
	vmovl.u16 q0, d1
	vdup.8	q6, r0
	add	r0, r8, #48
	vmovl.u8 q5, d16
	vmovl.u8 q2, d12
	vmovl.u8 q7, d13
	vshr.s32	q6, q0, #3
	vdup.8	q9, r4
	add	r4, r8, #32
	vshr.s32	q4, q4, #3
	vstr	d14, [sp, #40]
	vstr	d15, [sp, #48]
	vmovl.u16 q7, d10
	vst1.64	{d12-d13}, [sp:64]
	vmovl.u16 q6, d4
	vld1.8	{d28[], d29[]}, [r3]
	vmovl.u16 q5, d11
	vmovl.u16 q2, d5
	vmovl.u8 q15, d18
	vshl.s32	q0, q7, q6
	pld	[r8, #192]
	add	r8, r8, #64
	vshl.s32	q7, q5, q2
	vmovl.u16 q6, d6
	vmovl.u8 q5, d28
	vmovl.u16 q3, d7
	vmovl.u16 q2, d30
	vand	q12, q13, q11
	vstr	d0, [sp, #16]
	vstr	d1, [sp, #24]
	vand	q13, q13, q10
	vmovl.u16 q0, d10
	vmovl.u16 q15, d31
	vmovl.u16 q5, d11
	vshr.s32	q6, q6, #8
	vshr.s32	q3, q3, #8
	vshl.s32	q2, q4, q2
	vld1.64	{d8-d9}, [sp:64]
	vshl.s32	q6, q6, q0
	vshl.s32	q3, q3, q5
	vmovl.u8 q9, d19
	vmovl.u8 q14, d29
	vshl.s32	q15, q4, q15
	vmovl.u16 q0, d26
	vmovl.u16 q5, d24
	vmovl.u16 q13, d27
	vmovl.u16 q12, d25
	vmovl.u16 q4, d18
	vmovl.u8 q8, d17
	vshr.s32	q13, q13, #3
	vorr	q15, q15, q3
	vshr.s32	q0, q0, #3
	vmovl.u16 q3, d28
	vshr.s32	q5, q5, #8
	vmovl.u16 q9, d19
	vorr	q2, q2, q6
	vmovl.u16 q14, d29
	vldr	d12, [sp, #40]
	vldr	d13, [sp, #48]
	vshr.s32	q12, q12, #8
	vshl.s32	q0, q0, q4
	vshl.s32	q9, q13, q9
	vshl.s32	q5, q5, q3
	vmovl.u16 q13, d16
	vmovl.u16 q3, d12
	vmovl.u16 q8, d17
	vmovl.u16 q4, d13
	vshl.s32	q12, q12, q14
	vshl.s32	q13, q13, q3
	vshl.s32	q8, q8, q4
	vorr	q9, q9, q12
	vorr	q0, q0, q5
	vldr	d24, [sp, #16]
	vldr	d25, [sp, #24]
	vorr	q2, q2, q12
	vorr	q15, q15, q7
	vorr	q14, q0, q13
	vorr	q8, q9, q8
	vst1.32	{q2}, [r1]!
	vst1.32	{q15}, [r1]
	vst1.32	{q14}, [r4]
	vst1.32	{q8}, [r0]
	bcc	.L72
	cmp	r5, r7
	add	lr, lr, r5
	beq	.L61
.L67:
	ldr	r2, [sp, #60]
	add	r0, lr, #-2147483648
	subs	r0, r0, #1
	add	r1, lr, #1073741824
	subs	r1, r1, #1
	add	r0, r2, r0, lsl #1
	ldr	r2, [sp, #56]
	add	r1, r2, r1, lsl #2
.L71:
	ldrh	r2, [r0, #2]!
	add	lr, lr, #1
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	cmp	r9, lr
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
	and	r6, r2, #2016
	ldrb	r7, [r3]	@ zero_extendqisi2
	lsl	r5, r2, #3
	and	r4, r2, #63488
	asr	r6, r6, #3
	asr	r4, r4, #8
	uxtb	r5, r5
	lsl	r6, r6, r8
	lsl	r4, r4, r7
	lsl	r5, r5, ip
	orr	r2, r6, r5
	orr	r2, r2, r4
	str	r2, [r1, #4]!
	bgt	.L71
.L61:
	ldr	r1, [sp, #36]
	ldr	r2, [sp, #80]
	adds	r1, r1, #1
	cmp	r1, r2
	str	r1, [sp, #36]
	bne	.L77
.L56:
	add	sp, sp, #124
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L59:
	mov	r1, r2
	rsb	r7, lr, r9
	movs	r2, #0
.L63:
	vld1.16	{d16-d17}, [r0]!
	adds	r2, r2, #8
	vand	q9, q8, q1
	cmp	r2, r7
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	vand	q12, q8, q11
	vshl.i16	q9, q9, #3
	add	r6, r10, r6, lsl #3
	vand	q8, q8, q10
	add	r5, r10, r5, lsl #3
	vshrn.i16	d24, q12, #8
	add	r4, r10, r4, lsl #3
	vmovn.i16	d18, q9
	vshrn.i16	d16, q8, #3
	vst1.64	{d24}, [r6:64]
	vst1.64	{d16}, [r5:64]
	vst1.64	{d18}, [r4:64]
	vld1.64	{d16-d19}, [r10:64]
	vst4.8	{d16-d19}, [r1]!
	blt	.L63
	b	.L62
.L91:
	.align	3
.L90:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
.L66:
	ldr	r1, [sp, #84]
	sub	r5, r9, #7
	add	r0, lr, #1
	cmp	r0, r5
	ite	lt
	movlt	r2, #1
	movge	r2, #0
	cmp	r9, r1
	it	lt
	movlt	r2, #0
	cmp	r2, #0
	beq	.L73
	ldr	r0, [sp, #60]
	add	r2, lr, #10
	add	r1, r0, r2, lsl #1
	ldr	r0, [sp, #56]
	add	r2, r0, r2, lsl #2
.L74:
	ldrh	r4, [r1, #-20]
	add	lr, lr, #8
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	add	r0, lr, #1
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	cmp	r5, r0
	and	r8, r4, #2016
	and	r6, r4, #63488
	asr	r8, r8, #3
	lsl	r7, r4, #3
	asr	r6, r6, #8
	ldrh	r4, [r1, #-18]
	lsl	r8, r8, ip
	ldrb	ip, [r3]	@ zero_extendqisi2
	uxtb	r7, r7
	pld	[r1]
	pld	[r2]
	add	r1, r1, #16
	lsl	r7, r7, fp
	and	fp, r4, #2016
	lsl	r6, r6, ip
	asr	fp, fp, #3
	orr	r7, r8, r7
	add	r2, r2, #32
	orr	r6, r6, r7
	str	r6, [r2, #-72]
	and	r6, r4, #63488
	ldrb	ip, [r3]	@ zero_extendqisi2
	lsl	r4, r4, #3
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
	asr	r6, r6, #8
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	uxtb	r4, r4
	lsl	r6, r6, ip
	lsl	r8, fp, r8
	lsl	r7, r4, r7
	ldrh	r4, [r1, #-32]
	orr	r6, r8, r6
	orr	r6, r6, r7
	str	r6, [r2, #-68]
	and	r8, r4, #2016
	ldrb	fp, [r3]	@ zero_extendqisi2
	and	ip, r4, #63488
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	lsl	r7, r4, #3
	asr	r4, r8, #3
	ldrb	r8, [r3, #2]	@ zero_extendqisi2
	asr	ip, ip, #8
	uxtb	r7, r7
	lsl	ip, ip, fp
	lsl	r6, r4, r6
	lsl	r7, r7, r8
	ldrh	r4, [r1, #-30]
	orr	r6, r6, ip
	orr	r6, r6, r7
	str	r6, [r2, #-64]
	and	r8, r4, #2016
	ldrb	fp, [r3]	@ zero_extendqisi2
	and	ip, r4, #63488
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	lsl	r7, r4, #3
	asr	r4, r8, #3
	ldrb	r8, [r3, #2]	@ zero_extendqisi2
	asr	ip, ip, #8
	uxtb	r7, r7
	lsl	ip, ip, fp
	lsl	r6, r4, r6
	lsl	r7, r7, r8
	ldrh	r4, [r1, #-28]
	orr	r6, r6, ip
	orr	r6, r6, r7
	str	r6, [r2, #-60]
	and	r8, r4, #2016
	ldrb	fp, [r3]	@ zero_extendqisi2
	and	ip, r4, #63488
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	lsl	r7, r4, #3
	asr	r4, r8, #3
	ldrb	r8, [r3, #2]	@ zero_extendqisi2
	asr	ip, ip, #8
	uxtb	r7, r7
	lsl	ip, ip, fp
	lsl	r6, r4, r6
	lsl	r7, r7, r8
	ldrh	r4, [r1, #-26]
	orr	r6, r6, ip
	orr	r6, r6, r7
	str	r6, [r2, #-56]
	and	r8, r4, #2016
	ldrb	fp, [r3]	@ zero_extendqisi2
	and	ip, r4, #63488
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	lsl	r7, r4, #3
	asr	r4, r8, #3
	ldrb	r8, [r3, #2]	@ zero_extendqisi2
	asr	ip, ip, #8
	uxtb	r7, r7
	lsl	ip, ip, fp
	lsl	r6, r4, r6
	lsl	r7, r7, r8
	ldrh	r4, [r1, #-24]
	orr	r6, r6, ip
	orr	r6, r6, r7
	str	r6, [r2, #-52]
	and	ip, r4, #2016
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	and	r7, r4, #63488
	ldrb	r8, [r3]	@ zero_extendqisi2
	lsl	r6, r4, #3
	asr	r4, ip, #3
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	asr	r7, r7, #8
	uxtb	r6, r6
	lsl	r4, r4, fp
	lsl	r7, r7, r8
	lsl	r6, r6, ip
	orr	r4, r4, r7
	orr	r4, r4, r6
	str	r4, [r2, #-48]
	ldrh	r4, [r1, #-22]
	ldrb	fp, [r3, #1]	@ zero_extendqisi2
	ldrb	r8, [r3]	@ zero_extendqisi2
	and	ip, r4, #2016
	and	r7, r4, #63488
	lsl	r6, r4, #3
	asr	r4, ip, #3
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	asr	r7, r7, #8
	uxtb	r6, r6
	lsl	r4, r4, fp
	lsl	r7, r7, r8
	lsl	r6, r6, ip
	orr	r4, r4, r7
	orr	r4, r4, r6
	str	r4, [r2, #-44]
	bgt	.L74
.L73:
	ldr	r1, [sp, #60]
	add	r2, lr, #-2147483648
	subs	r2, r2, #1
	add	lr, lr, #1073741824
	add	lr, lr, #-1
	add	r2, r1, r2, lsl #1
	ldr	r1, [sp, #56]
	add	lr, r1, lr, lsl #2
.L76:
	ldrh	r1, [r2, #2]!
	cmp	r9, r0
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	add	r0, r0, #1
	ldrb	r7, [r3]	@ zero_extendqisi2
	and	r6, r1, #2016
	and	r5, r1, #63488
	lsl	r4, r1, #3
	asr	r1, r6, #3
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	asr	r5, r5, #8
	uxtb	r4, r4
	lsl	r1, r1, ip
	lsl	r5, r5, r7
	lsl	r4, r4, r6
	orr	r1, r1, r5
	orr	r1, r1, r4
	str	r1, [lr, #4]!
	bgt	.L76
	b	.L61
	.size	libaroma_blt_align_to32_pos._omp_fn.4, .-libaroma_blt_align_to32_pos._omp_fn.4
	.section	.text.libaroma_blt_align_to16_pos._omp_fn.5,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_blt_align_to16_pos._omp_fn.5, %function
libaroma_blt_align_to16_pos._omp_fn.5:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r0
	ldr	r6, [r0, #12]
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #76
	bl	omp_get_num_threads(PLT)
	mov	r5, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r5
	mov	r7, r0
	mov	r0, r6
	bl	__aeabi_idiv(PLT)
	mov	r1, r5
	mov	r4, r0
	mov	r0, r6
	bl	__aeabi_idivmod(PLT)
	cmp	r7, r1
	itt	lt
	addlt	r4, r4, #1
	movlt	r1, #0
	mla	r7, r7, r4, r1
	mov	r0, r7
	str	r7, [sp, #16]
	add	r0, r0, r4
	cmp	r7, r0
	str	r0, [sp, #32]
	bge	.L92
	movs	r2, #7
	add	fp, sp, #40
	mov	r10, r9
	movt	r2, 32768
	str	r2, [sp, #36]
.L113:
	ldr	r8, [r10, #8]
	ldr	r4, [r10]
	ldr	r3, [r10, #20]
	ldr	r0, [r10, #4]
	cmp	r8, #7
	asr	r1, r8, #31
	str	r4, [sp]
	ldr	r2, [r10, #24]
	lsr	r1, r1, #29
	ldr	r4, [sp, #16]
	str	r0, [sp, #20]
	add	lr, r8, r1
	ldr	r0, [sp]
	and	lr, lr, #7
	mul	r9, r3, r4
	rsb	lr, r1, lr
	ldr	r1, [sp, #20]
	mul	ip, r2, r4
	ldr	r3, [r10, #16]
	add	r0, r0, r9, lsl #1
	add	r1, r1, ip, lsl #2
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	ble	.L98
	mov	r0, r1
	ldr	r1, [sp, #24]
	rsb	r7, lr, r8
	movs	r2, #0
.L99:
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	adds	r2, r2, #8
	ldrb	r5, [r3, #4]	@ zero_extendqisi2
	cmp	r2, r7
	vld4.8	{d16-d19}, [r0]!
	ldrb	r4, [r3, #5]	@ zero_extendqisi2
	add	r6, fp, r6, lsl #3
	add	r5, fp, r5, lsl #3
	vst1.64	{d16-d19}, [fp:64]
	add	r4, fp, r4, lsl #3
	vld1.64	{d16}, [r6:64]
	vld1.64	{d20}, [r5:64]
	vshr.u8	d16, d16, #3
	vshr.u8	d20, d20, #2
	vld1.64	{d18}, [r4:64]
	vmovl.u8	q8, d16
	vmovl.u8	q10, d20
	vshr.u8	d18, d18, #3
	vshl.i16	q8, q8, #11
	vshl.i16	q10, q10, #5
	vmovl.u8	q9, d18
	vorr	q8, q8, q10
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r1]!
	blt	.L99
.L98:
	cmp	lr, #0
	ble	.L97
	rsb	lr, lr, r8
	cmp	r8, lr
	ble	.L97
	ldr	r4, [sp]
	add	r1, r9, lr
	rsb	r2, lr, r8
	adds	r0, r3, #2
	adds	r7, r3, #3
	add	r9, r4, r1, lsl #1
	ldr	r4, [sp, #20]
	add	r1, ip, lr
	cmp	r9, r0
	ite	cc
	movcc	r6, #0
	movcs	r6, #1
	add	ip, r4, r1, lsl #2
	add	r1, r9, r2, lsl #1
	cmp	r7, r9
	it	hi
	cmphi	r1, r0
	add	r0, r3, #1
	ite	ls
	movls	r7, #1
	movhi	r7, #0
	cmp	r1, ip
	add	r5, ip, r2, lsl #2
	ite	hi
	movhi	r4, #0
	movls	r4, #1
	cmp	r1, r0
	it	ls
	orrls	r6, r6, #1
	cmp	r0, r9
	and	r6, r6, r7
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	cmp	r3, r1
	it	cs
	orrcs	r0, r0, #1
	cmp	r2, #15
	ite	ls
	movls	r6, #0
	andhi	r6, r6, #1
	cmp	r9, r5
	it	cs
	orrcs	r4, r4, #1
	ands	r0, r0, r6
	tst	r0, r4
	beq	.L102
	lsrs	r1, r2, #4
	lsls	r0, r1, #4
	cmp	r1, #0
	beq	.L103
	movs	r7, #0
.L108:
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	add	r6, ip, #32
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	adds	r7, r7, #1
	vld1.8	{d2[], d3[]}, [r3]
	cmp	r7, r1
	pld	[ip, #192]
	vdup.8	q8, r5
	add	r5, ip, #48
	vmovl.u8 q7, d2
	vdup.8	q15, r4
	mov	r4, ip
	vmovl.u8 q13, d16
	add	ip, ip, #64
	vmovl.u8 q8, d17
	vmovl.u8 q4, d30
	vmovl.u8 q1, d3
	vmovl.u8 q15, d31
	vmovl.u16 q12, d16
	vmovl.u16 q8, d17
	vmovl.u16 q0, d2
	vmovl.u16 q3, d30
	vmovl.u16 q6, d15
	vmovl.u16 q1, d3
	vmovl.u16 q7, d14
	vneg.s32	q9, q8
	vmovl.u16 q5, d8
	vmovl.u16 q14, d27
	vmovl.u16 q4, d9
	vmovl.u16 q15, d31
	vmovl.u16 q13, d26
	vneg.s32	q12, q12
	vneg.s32	q0, q0
	vneg.s32	q3, q3
	vneg.s32	q6, q6
	vneg.s32	q7, q7
	vneg.s32	q1, q1
	vneg.s32	q14, q14
	vst1.64	{d18-d19}, [sp:64]
	vneg.s32	q5, q5
	vneg.s32	q4, q4
	vneg.s32	q15, q15
	vneg.s32	q13, q13
	vld1.32	{q9}, [r6]
	vshl.u32	q0, q9, q0
	vld1.32	{q10}, [r4]!
	vshl.u32	q3, q9, q3
	vld1.32	{q11}, [r4]
	mov	r4, r9
	vshl.u32	q9, q9, q12
	add	r9, r9, #32
	vld1.64	{d24-d25}, [sp:64]
	vshl.u32	q6, q11, q6
	vld1.32	{q8}, [r5]
	vshl.u32	q7, q10, q7
	vshl.u32	q1, q8, q1
	vshl.u32	q15, q8, q15
	vmovn.i32	d4, q7
	vmovn.i32	d5, q6
	vshl.u32	q13, q10, q13
	vmovn.i32	d12, q0
	vmovn.i32	d13, q1
	vmovn.i16	d2, q2
	vmovn.i16	d3, q6
	vshl.u32	q8, q8, q12
	vshl.u32	q5, q10, q5
	vshl.u32	q4, q11, q4
	vshl.u32	q11, q11, q14
	vmovn.i32	d28, q3
	vmovn.i32	d29, q15
	vmovn.i32	d4, q5
	vmovn.i32	d5, q4
	vmovn.i16	d20, q2
	vmovn.i16	d21, q14
	vmovn.i32	d30, q13
	vmovn.i32	d31, q11
	vmovn.i32	d26, q9
	vmovn.i32	d27, q8
	vmovn.i16	d16, q15
	vmovn.i16	d17, q13
	vshr.u8	q11, q1, #3
	vshr.u8	q10, q10, #2
	vshr.u8	q8, q8, #3
	vmovl.u8 q9, d22
	vmovl.u8 q11, d23
	vshll.u8 q13, d20, #5
	vshll.u8 q12, d21, #5
	vmovl.u8 q10, d16
	vmovl.u8 q8, d17
	vorr	q10, q10, q13
	vorr	q8, q8, q12
	vshl.i16	q9, q9, #11
	vshl.i16	q11, q11, #11
	vorr	q9, q10, q9
	vorr	q8, q8, q11
	vst1.16	{q9}, [r4]!
	vst1.16	{q8}, [r4]
	bcc	.L108
	cmp	r0, r2
	add	lr, lr, r0
	beq	.L97
.L103:
	ldr	r2, [sp, #28]
	add	r0, lr, #1073741824
	ldr	r4, [sp, #24]
	add	r1, lr, #-2147483648
	subs	r0, r0, #1
	subs	r1, r1, #1
	add	r0, r2, r0, lsl #2
	add	r1, r4, r1, lsl #1
.L107:
	ldr	r2, [r0, #4]!
	add	lr, lr, #1
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	cmp	r8, lr
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	lsr	r5, r2, r5
	lsr	r4, r2, r4
	ubfx	r5, r5, #2, #6
	lsr	r2, r2, r6
	lsl	r5, r5, #5
	ubfx	r4, r4, #3, #5
	ubfx	r2, r2, #3, #5
	orr	r4, r5, r4, lsl #11
	orr	r2, r2, r4
	strh	r2, [r1, #2]!	@ movhi
	bgt	.L107
.L97:
	ldr	r2, [sp, #16]
	ldr	r3, [sp, #32]
	adds	r2, r2, #1
	cmp	r2, r3
	str	r2, [sp, #16]
	bne	.L113
.L92:
	add	sp, sp, #76
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L102:
	ldr	r1, [sp, #36]
	sub	r5, r8, #7
	add	r0, lr, #1
	cmp	r0, r5
	ite	lt
	movlt	r2, #1
	movge	r2, #0
	cmp	r8, r1
	it	lt
	movlt	r2, #0
	cmp	r2, #0
	beq	.L109
	ldr	r4, [sp, #28]
	add	r2, lr, #10
	ldr	r0, [sp, #24]
	add	r1, r4, r2, lsl #2
	add	r2, r0, r2, lsl #1
.L110:
	ldr	r4, [r1, #-40]
	add	lr, lr, #8
	ldrb	ip, [r3]	@ zero_extendqisi2
	add	r0, lr, #1
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	cmp	r5, r0
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	pld	[r1]
	add	r1, r1, #32
	lsr	ip, r4, ip
	pld	[r2]
	lsr	r6, r4, r6
	add	r2, r2, #16
	ubfx	ip, ip, #3, #5
	lsr	r4, r4, r7
	lsl	ip, ip, #11
	ubfx	r6, r6, #2, #6
	ubfx	r7, r4, #3, #5
	ldr	r4, [r1, #-68]
	orr	r6, ip, r6, lsl #5
	orr	r6, r6, r7
	strh	r6, [r2, #-36]	@ movhi
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	ldrb	r6, [r3]	@ zero_extendqisi2
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	lsr	ip, r4, ip
	lsr	r6, r4, r6
	ubfx	ip, ip, #2, #6
	lsr	r4, r4, r7
	lsl	ip, ip, #5
	ubfx	r6, r6, #3, #5
	ubfx	r7, r4, #3, #5
	ldr	r4, [r1, #-64]
	orr	r6, ip, r6, lsl #11
	orr	r6, r6, r7
	strh	r6, [r2, #-34]	@ movhi
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	ldrb	r6, [r3]	@ zero_extendqisi2
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	lsr	ip, r4, ip
	lsr	r6, r4, r6
	ubfx	ip, ip, #2, #6
	lsr	r4, r4, r7
	lsl	ip, ip, #5
	ubfx	r6, r6, #3, #5
	ubfx	r7, r4, #3, #5
	ldr	r4, [r1, #-60]
	orr	r6, ip, r6, lsl #11
	orr	r6, r6, r7
	strh	r6, [r2, #-32]	@ movhi
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	ldrb	r6, [r3]	@ zero_extendqisi2
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	lsr	ip, r4, ip
	lsr	r6, r4, r6
	ubfx	ip, ip, #2, #6
	lsr	r4, r4, r7
	lsl	ip, ip, #5
	ubfx	r6, r6, #3, #5
	ubfx	r7, r4, #3, #5
	ldr	r4, [r1, #-56]
	orr	r6, ip, r6, lsl #11
	orr	r6, r6, r7
	strh	r6, [r2, #-30]	@ movhi
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	ldrb	r6, [r3]	@ zero_extendqisi2
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	lsr	ip, r4, ip
	lsr	r6, r4, r6
	ubfx	ip, ip, #2, #6
	lsr	r4, r4, r7
	lsl	ip, ip, #5
	ubfx	r6, r6, #3, #5
	ubfx	r7, r4, #3, #5
	ldr	r4, [r1, #-52]
	orr	r6, ip, r6, lsl #11
	orr	r6, r6, r7
	strh	r6, [r2, #-28]	@ movhi
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	ldrb	r6, [r3]	@ zero_extendqisi2
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	lsr	ip, r4, ip
	lsr	r6, r4, r6
	ubfx	ip, ip, #2, #6
	lsr	r4, r4, r7
	lsl	ip, ip, #5
	ubfx	r6, r6, #3, #5
	ubfx	r7, r4, #3, #5
	ldr	r4, [r1, #-48]
	orr	r6, ip, r6, lsl #11
	orr	r6, r6, r7
	strh	r6, [r2, #-26]	@ movhi
	ldrb	r7, [r3, #1]	@ zero_extendqisi2
	ldrb	r6, [r3]	@ zero_extendqisi2
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	lsr	r7, r4, r7
	lsr	r6, r4, r6
	ubfx	r7, r7, #2, #6
	lsr	r4, r4, ip
	lsl	r7, r7, #5
	ubfx	r6, r6, #3, #5
	ubfx	r4, r4, #3, #5
	orr	r6, r7, r6, lsl #11
	orr	r4, r4, r6
	strh	r4, [r2, #-24]	@ movhi
	ldr	r4, [r1, #-44]
	ldrb	r7, [r3, #1]	@ zero_extendqisi2
	ldrb	r6, [r3]	@ zero_extendqisi2
	ldrb	ip, [r3, #2]	@ zero_extendqisi2
	lsr	r7, r4, r7
	lsr	r6, r4, r6
	ubfx	r7, r7, #2, #6
	lsr	r4, r4, ip
	lsl	r7, r7, #5
	ubfx	r6, r6, #3, #5
	ubfx	r4, r4, #3, #5
	orr	r6, r7, r6, lsl #11
	orr	r4, r4, r6
	strh	r4, [r2, #-22]	@ movhi
	bgt	.L110
.L109:
	ldr	r2, [sp, #28]
	add	r1, lr, #1073741824
	ldr	r4, [sp, #24]
	add	lr, lr, #-2147483648
	subs	r1, r1, #1
	add	lr, lr, #-1
	add	r1, r2, r1, lsl #2
	add	lr, r4, lr, lsl #1
.L112:
	ldr	r2, [r1, #4]!
	cmp	r8, r0
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	add	r0, r0, #1
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	lsr	r5, r2, r5
	lsr	r4, r2, r4
	ubfx	r5, r5, #2, #6
	lsr	r2, r2, r6
	lsl	r5, r5, #5
	ubfx	r4, r4, #3, #5
	ubfx	r2, r2, #3, #5
	orr	r4, r5, r4, lsl #11
	orr	r2, r2, r4
	strh	r2, [lr, #2]!	@ movhi
	bgt	.L112
	b	.L97
	.size	libaroma_blt_align_to16_pos._omp_fn.5, .-libaroma_blt_align_to16_pos._omp_fn.5
	.section	.text.libaroma_blt_align16,"ax",%progbits
	.align	2
	.global	libaroma_blt_align16
	.thumb
	.thumb_func
	.type	libaroma_blt_align16, %function
libaroma_blt_align16:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #28
	ldr	r6, [sp, #48]
	lsls	r4, r2, #1
	movs	r2, #0
	ldr	r5, [sp, #52]
	str	r0, [sp, #16]
	add	r6, r6, r4
	ldr	r0, .L128
	str	r1, [sp, #20]
	adds	r7, r4, r5
	mov	r1, sp
	stmia	sp, {r3, r4, r6, r7}
.LPIC16:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	libaroma_blt_align16._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L129:
	.align	2
.L128:
	.word	libaroma_blt_align16._omp_fn.0-(.LPIC16+4)
	.size	libaroma_blt_align16, .-libaroma_blt_align16
	.section	.text.libaroma_blt_align32_to16,"ax",%progbits
	.align	2
	.global	libaroma_blt_align32_to16
	.thumb
	.thumb_func
	.type	libaroma_blt_align32_to16, %function
libaroma_blt_align32_to16:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #28
	ldr	r7, [sp, #48]
	mov	r4, r2
	movs	r2, #0
	ldr	r6, [sp, #52]
	str	r0, [sp]
	ldr	r0, .L132
	add	r7, r4, r7, asr #1
	str	r1, [sp, #4]
	mov	r1, sp
	add	r6, r4, r6, asr #2
	str	r3, [sp, #12]
.LPIC17:
	add	r0, pc
	str	r4, [sp, #8]
	str	r7, [sp, #16]
	str	r6, [sp, #20]
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	libaroma_blt_align32_to16._omp_fn.1(PLT)
	bl	GOMP_parallel_end(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L133:
	.align	2
.L132:
	.word	libaroma_blt_align32_to16._omp_fn.1-(.LPIC17+4)
	.size	libaroma_blt_align32_to16, .-libaroma_blt_align32_to16
	.section	.text.libaroma_blt_align16_to32,"ax",%progbits
	.align	2
	.global	libaroma_blt_align16_to32
	.thumb
	.thumb_func
	.type	libaroma_blt_align16_to32, %function
libaroma_blt_align16_to32:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #28
	ldr	r7, [sp, #48]
	mov	r4, r2
	movs	r2, #0
	ldr	r6, [sp, #52]
	str	r0, [sp]
	ldr	r0, .L136
	add	r7, r4, r7, asr #2
	str	r1, [sp, #4]
	mov	r1, sp
	add	r6, r4, r6, asr #1
	str	r3, [sp, #12]
.LPIC18:
	add	r0, pc
	str	r4, [sp, #8]
	str	r7, [sp, #16]
	str	r6, [sp, #20]
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	libaroma_blt_align16_to32._omp_fn.2(PLT)
	bl	GOMP_parallel_end(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L137:
	.align	2
.L136:
	.word	libaroma_blt_align16_to32._omp_fn.2-(.LPIC18+4)
	.size	libaroma_blt_align16_to32, .-libaroma_blt_align16_to32
	.section	.text.libaroma_blt_align32,"ax",%progbits
	.align	2
	.global	libaroma_blt_align32
	.thumb
	.thumb_func
	.type	libaroma_blt_align32, %function
libaroma_blt_align32:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #28
	ldr	r6, [sp, #48]
	lsls	r4, r2, #2
	movs	r2, #0
	ldr	r5, [sp, #52]
	str	r0, [sp, #16]
	add	r6, r6, r4
	ldr	r0, .L140
	str	r1, [sp, #20]
	adds	r7, r4, r5
	mov	r1, sp
	stmia	sp, {r3, r4, r6, r7}
.LPIC19:
	add	r0, pc
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	libaroma_blt_align32._omp_fn.3(PLT)
	bl	GOMP_parallel_end(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L141:
	.align	2
.L140:
	.word	libaroma_blt_align32._omp_fn.3-(.LPIC19+4)
	.size	libaroma_blt_align32, .-libaroma_blt_align32
	.section	.text.libaroma_blt_align_to32_pos,"ax",%progbits
	.align	2
	.global	libaroma_blt_align_to32_pos
	.thumb
	.thumb_func
	.type	libaroma_blt_align_to32_pos, %function
libaroma_blt_align_to32_pos:
	@ args = 12, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	ldr	r7, [sp, #56]
	mov	r4, r2
	movs	r2, #0
	ldr	r5, [sp, #60]
	str	r0, [sp]
	ldr	r0, .L144
	add	r6, r4, r7, asr #2
	str	r3, [sp, #12]
	ldr	r3, [sp, #64]
	add	r7, r4, r5, asr #1
	str	r1, [sp, #4]
.LPIC20:
	add	r0, pc
	mov	r1, sp
	str	r4, [sp, #8]
	str	r3, [sp, #16]
	str	r6, [sp, #20]
	str	r7, [sp, #24]
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	libaroma_blt_align_to32_pos._omp_fn.4(PLT)
	bl	GOMP_parallel_end(PLT)
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L145:
	.align	2
.L144:
	.word	libaroma_blt_align_to32_pos._omp_fn.4-(.LPIC20+4)
	.size	libaroma_blt_align_to32_pos, .-libaroma_blt_align_to32_pos
	.section	.text.libaroma_blt_align_to16_pos,"ax",%progbits
	.align	2
	.global	libaroma_blt_align_to16_pos
	.thumb
	.thumb_func
	.type	libaroma_blt_align_to16_pos, %function
libaroma_blt_align_to16_pos:
	@ args = 12, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	ldr	r7, [sp, #56]
	mov	r4, r2
	movs	r2, #0
	ldr	r5, [sp, #60]
	str	r0, [sp]
	ldr	r0, .L148
	add	r6, r4, r7, asr #1
	str	r3, [sp, #12]
	ldr	r3, [sp, #64]
	add	r7, r4, r5, asr #2
	str	r1, [sp, #4]
.LPIC21:
	add	r0, pc
	mov	r1, sp
	str	r4, [sp, #8]
	str	r3, [sp, #16]
	str	r6, [sp, #20]
	str	r7, [sp, #24]
	bl	GOMP_parallel_start(PLT)
	mov	r0, sp
	bl	libaroma_blt_align_to16_pos._omp_fn.5(PLT)
	bl	GOMP_parallel_end(PLT)
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L149:
	.align	2
.L148:
	.word	libaroma_blt_align_to16_pos._omp_fn.5-(.LPIC21+4)
	.size	libaroma_blt_align_to16_pos, .-libaroma_blt_align_to16_pos
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
