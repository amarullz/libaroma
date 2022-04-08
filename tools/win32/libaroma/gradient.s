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
	.file	"gradient.c"
	.section	.text._libaroma_gradient_draw_rounded.part.2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_gradient_draw_rounded.part.2, %function
_libaroma_gradient_draw_rounded.part.2:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	asrs	r7, r3, #31
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
	cmp	r3, #7
	lsr	r7, r7, #29
	ldr	r5, [sp, #80]
	add	r4, r3, r7
	and	r4, r4, #7
	sub	r4, r4, r7
	mla	r2, r3, r5, r2
	bgt	.L2
.L5:
	cmp	r4, #0
	ble	.L1
	subs	r4, r3, r4
	cmp	r3, r4
	ble	.L1
	add	r6, r4, #-2147483648
	add	r5, r0, r4, lsl #1
	subs	r6, r6, #1
	add	r6, r1, r6, lsl #1
	adds	r7, r2, r3
	add	r4, r4, r2
.L7:
	ldrb	r2, [r4], #1	@ zero_extendqisi2
	ldrh	r1, [r5]
	ldrh	r0, [r6, #2]!
	bl	libaroma_alpha(PLT)
	cmp	r4, r7
	strh	r0, [r5], #2	@ movhi
	bne	.L7
.L1:
	fldmfdd	sp!, {d8-d13}
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L2:
	vmov.i16	q0, #255  @ v8hi
	vldr	d28, .L10
	vldr	d29, .L10+8
	vmov.i16	q1, #256  @ v8hi
	rsb	r9, r4, r3
	vmov.i16	q13, #63488  @ v8hi
	mov	ip, r1
	vmov.i16	q12, #31  @ v8hi
	mov	lr, r0
	movs	r7, #0
.L6:
	add	r8, r2, r7
	vld1.16	{d18-d19}, [ip]!
	vand	q6, q9, q13
	adds	r7, r7, #8
	vld1.8	{d16}, [r8]
	cmp	r7, r9
	vand	q5, q9, q14
	vld1.16	{d20-d21}, [lr]
	vmovl.u8	q8, d16
	vand	q15, q10, q13
	vand	q2, q10, q14
	vsub.i16	q11, q1, q8
	vrshr.u16	q6, q6, #8
	vrshr.u16	q15, q15, #8
	vrshr.u16	q5, q5, #3
	vrshr.u16	q2, q2, #3
	vmul.i16	q6, q6, q11
	vmul.i16	q15, q15, q8
	vmul.i16	q5, q5, q11
	vmul.i16	q2, q2, q8
	vand	q4, q9, q12
	vand	q3, q10, q12
	vadd.i16	q15, q6, q15
	vshl.i16	q4, q4, #3
	vshl.i16	q3, q3, #3
	vmul.i16	q4, q4, q11
	vmul.i16	q3, q3, q8
	vadd.i16	q2, q5, q2
	vshr.u16	q15, q15, #11
	vceq.i16	q11, q8, q0
	vshr.u16	q2, q2, #10
	vadd.i16	q3, q4, q3
	vshl.i16	q15, q15, #11
	vshl.i16	q2, q2, #5
	vshr.u16	q3, q3, #11
	vorr	q15, q15, q2
	vceq.i16	q8, q8, #0
	vorr	q15, q15, q3
	vbsl	q11, q10, q15
	vbsl	q8, q9, q11
	vst1.16	{d16-d17}, [lr]!
	blt	.L6
	b	.L5
.L11:
	.align	3
.L10:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.size	_libaroma_gradient_draw_rounded.part.2, .-_libaroma_gradient_draw_rounded.part.2
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text.libaroma_gradient_ex1._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_gradient_ex1._omp_fn.0, %function
libaroma_gradient_ex1._omp_fn.0:
	@ args = 0, pretend = 0, frame = 344
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldr	r8, [r0, #16]
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #348
	bl	omp_get_num_threads(PLT)
	mov	r5, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r5
	mov	r6, r0
	mov	r0, r8
	bl	__aeabi_idiv(PLT)
	mov	r1, r5
	mov	r4, r0
	mov	r0, r8
	bl	__aeabi_idivmod(PLT)
	cmp	r6, r1
	itt	lt
	addlt	r4, r4, #1
	movlt	r1, #0
	mla	r9, r6, r4, r1
	add	r4, r9, r4
	cmp	r9, r4
	str	r4, [sp, #64]
	bge	.L12
	ldr	fp, [r7, #28]
	lsl	r4, r9, #8
	movs	r3, #15
	movt	r3, 32768
	str	r4, [sp, #48]
	str	r3, [sp, #68]
	mov	r4, r8
	cmp	fp, #0
	beq	.L310
.L15:
	ldr	r0, [r7, #20]
	lsls	r0, r0, #2
	bl	malloc(PLT)
	str	r0, [sp, #56]
.L184:
	ldr	r2, [r7, #8]
	mov	r1, r4
	ldr	r0, [sp, #48]
	add	r2, r9, r2
	str	r2, [sp, #12]
	bl	__aeabi_idiv(PLT)
	ldrb	r5, [r7, #39]	@ zero_extendqisi2
	rsb	r3, r0, #256
	uxth	r3, r3
	str	r0, [sp, #16]
	str	r3, [sp, #32]
	cmp	r5, #0
	beq	.L16
	movs	r6, #0
	mov	r10, r6
	mov	r8, r6
.L181:
	ldmia	r7, {r0, r3}
	ldr	lr, [sp, #12]
	ldrb	r2, [r7, #41]	@ zero_extendqisi2
	ldr	r1, [r0, #8]
	ldr	ip, [r0, #16]
	mla	r3, r1, lr, r3
	add	r1, ip, r3, lsl #1
	str	r1, [sp, #12]
	cmp	r2, #0
	bne	.L17
	str	r2, [sp, #60]
	cmp	fp, #0
	beq	.L311
.L18:
	ldr	r2, [r7, #20]
	cmp	r9, r2
	blt	.L170
	subs	r4, r4, r2
	cmp	r9, r4
	itt	lt
	movlt	r4, #0
	strlt	r4, [sp, #52]
	blt	.L171
	ldr	r1, [r7, #24]
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L172
	str	r0, [sp, #52]
.L174:
	ldrb	r2, [r1, #3]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L176
.L309:
	ldrb	r5, [r7, #39]	@ zero_extendqisi2
.L171:
	ldrb	r2, [r7, #40]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L312
	ldrb	r4, [r7, #36]	@ zero_extendqisi2
	ldrb	r2, [r7, #37]	@ zero_extendqisi2
	cmp	r4, r2
	beq	.L169
	ldr	r0, [sp, #16]
	uxth	r1, r0
	ldr	r0, [sp, #32]
	mul	r2, r1, r2
	mul	r4, r0, r4
	asrs	r2, r2, #8
	add	r4, r2, r4, asr #8
	cmp	r4, #254
	it	le
	uxtble	r4, r4
	ble	.L169
	movs	r4, #255
.L169:
	cmp	r5, #0
	bne	.L313
	lsr	r10, r10, #2
	lsr	r8, r8, #3
	ldrb	r2, [r7, #38]	@ zero_extendqisi2
	lsl	r10, r10, #5
	ldr	fp, [r7, #12]
	orr	r8, r10, r8, lsl #11
	orr	r6, r8, r6, lsr #3
	uxth	r10, r6
	cmp	r2, #0
	bne	.L126
	cmp	r4, #255
	beq	.L314
	cbz	r4, .L70
	asr	r3, fp, #31
	cmp	fp, #7
	lsr	r3, r3, #29
	add	r8, fp, r3
	and	r8, r8, #7
	rsb	r8, r3, r8
	bgt	.L142
	cmp	r8, #0
	ble	.L70
.L143:
	rsb	r5, r8, fp
	cmp	fp, r5
	ble	.L70
	ldr	r3, [sp, #12]
	add	r6, r3, r5, lsl #1
.L146:
	ldrh	r0, [r6]
	mov	r1, r10
	mov	r2, r4
	bl	libaroma_alpha32(PLT)
	mov	r1, r9
	mov	r2, r0
	mov	r0, r5
	adds	r5, r5, #1
	bl	libaroma_dither(PLT)
	cmp	r5, fp
	strh	r0, [r6], #2	@ movhi
	bne	.L146
.L70:
	ldr	r3, [sp, #52]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #20]
	cmp	r9, r3
	blt	.L25
	ldr	r0, [r7, #16]
	subs	r2, r0, r3
	cmp	r9, r2
	blt	.L26
	ldr	r1, [r7, #24]
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L27
	ldrb	r2, [r1, #3]	@ zero_extendqisi2
	cbz	r2, .L26
	ldr	r4, [sp, #60]
	cmp	r4, #0
	beq	.L29
	ldr	r2, [r7, #28]
.L188:
	ldr	r6, [r7, #12]
	rsb	r0, r9, r0
	ldr	r4, [sp, #60]
	subs	r0, r0, #1
	subs	r6, r6, r3
	adds	lr, r4, r6
	beq	.L35
	cmp	r3, #0
	ble	.L31
	mla	r0, r3, r0, r3
	add	r3, r3, lr
	add	r2, r2, r0
.L36:
	ldrb	r0, [lr]	@ zero_extendqisi2
	ldrb	r1, [r2, #-1]!	@ zero_extendqisi2
	add	r1, r1, r0
	adds	r0, r1, #1
	uxtb	r0, r0
	cmp	r1, #255
	ite	gt
	movgt	r1, r0
	movle	r1, #0
	strb	r1, [lr], #1
	cmp	lr, r3
	bne	.L36
.L26:
	ldr	r2, [r7, #28]
.L31:
	cbz	r2, .L24
	ldr	r0, [sp, #56]
	bl	free(PLT)
.L24:
	ldr	r3, [sp, #64]
	add	r9, r9, #1
	ldr	r4, [sp, #48]
	cmp	r9, r3
	add	r4, r4, #256
	str	r4, [sp, #48]
	beq	.L12
	ldr	fp, [r7, #28]
	ldr	r4, [r7, #16]
	cmp	fp, #0
	bne	.L15
.L310:
	str	fp, [sp, #56]
	b	.L184
.L312:
	cmp	r5, #0
	bne	.L315
	ldrb	r3, [r7, #38]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L87
	ldr	fp, [r7, #12]
	orr	r6, r6, #-16777216
	orr	r8, r6, r8, lsl #16
	cmp	fp, #7
	orr	r10, r8, r10, lsl #8
	asr	r3, fp, #31
	lsr	r3, r3, #29
	add	r4, fp, r3
	and	r4, r4, #7
	sub	r4, r4, r3
	bgt	.L88
.L90:
	cmp	r4, #0
	ble	.L74
	rsb	r4, r4, fp
	cmp	fp, r4
	ble	.L74
	ldr	r0, [sp, #68]
	adds	r6, r4, #1
	sub	r8, fp, #15
	cmp	r6, r8
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	cmp	fp, r0
	it	lt
	movlt	r3, #0
	cmp	r3, #0
	beq	.L92
	ldr	r3, [sp, #12]
	add	r5, r3, r4, lsl #1
.L93:
	mov	r0, r4
	mov	r1, r9
	mov	r2, r10
	pld	[r5, #20]
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5]	@ movhi
	mov	r2, r10
	mov	r0, r6
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #2]	@ movhi
	mov	r2, r10
	adds	r0, r4, #2
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #4]	@ movhi
	mov	r2, r10
	adds	r0, r4, #3
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #6]	@ movhi
	mov	r2, r10
	adds	r0, r4, #4
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #8]	@ movhi
	mov	r2, r10
	adds	r0, r4, #5
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #10]	@ movhi
	mov	r2, r10
	adds	r0, r4, #6
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #12]	@ movhi
	mov	r2, r10
	adds	r0, r4, #7
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #14]	@ movhi
	mov	r2, r10
	add	r0, r4, #8
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #16]	@ movhi
	mov	r2, r10
	add	r0, r4, #9
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #18]	@ movhi
	mov	r2, r10
	add	r0, r4, #10
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #20]	@ movhi
	mov	r2, r10
	add	r0, r4, #11
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #22]	@ movhi
	mov	r2, r10
	add	r0, r4, #12
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #24]	@ movhi
	mov	r2, r10
	add	r0, r4, #13
	bl	libaroma_dither(PLT)
	mov	r1, r9
	strh	r0, [r5, #26]	@ movhi
	mov	r2, r10
	add	r0, r4, #14
	bl	libaroma_dither(PLT)
	adds	r6, r6, #16
	strh	r0, [r5, #28]	@ movhi
	mov	r1, r9
	add	r0, r4, #15
	mov	r2, r10
	adds	r4, r4, #16
	bl	libaroma_dither(PLT)
	cmp	r6, r8
	strh	r0, [r5, #30]	@ movhi
	add	r5, r5, #32
	blt	.L93
	adds	r6, r4, #1
.L92:
	ldr	r3, [sp, #12]
	add	r5, r4, #-2147483648
	subs	r5, r5, #1
	add	r5, r3, r5, lsl #1
.L94:
	mov	r0, r4
	mov	r1, r9
	mov	r2, r10
	mov	r4, r6
	bl	libaroma_dither(PLT)
	cmp	fp, r6
	strh	r0, [r5, #2]!	@ movhi
	add	r6, r6, #1
	bgt	.L94
.L74:
	ldrb	r3, [r7, #41]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L70
	ldrb	r1, [r7, #36]	@ zero_extendqisi2
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	cmp	r1, r3
	beq	.L71
	ldr	r4, [sp, #16]
	uxth	r2, r4
	ldr	r4, [sp, #32]
	mul	r3, r2, r3
	mul	r1, r4, r1
	asrs	r3, r3, #8
	add	r1, r3, r1, lsr #8
	cmp	r1, #254
	it	le
	uxtble	r1, r1
	ble	.L71
	movs	r1, #255
.L71:
	ldr	r0, [sp, #60]
	ldr	r2, [r7, #12]
	bl	memset(PLT)
	b	.L70
.L17:
	ldr	r2, [r0, #20]
	add	r2, r2, r3
	str	r2, [sp, #60]
	cmp	fp, #0
	bne	.L18
.L311:
	str	fp, [sp, #52]
	b	.L171
.L16:
	ldrh	r1, [r7, #34]
	uxth	r0, r0
	ldrh	r3, [r7, #32]
	ldr	lr, [sp, #32]
	and	r6, r1, #63488
	ldr	r2, [sp, #32]
	asrs	r6, r6, #8
	and	r8, r3, #63488
	asr	r8, r8, #8
	and	r10, r3, #2016
	mul	r6, r6, r0
	lsls	r3, r3, #3
	asr	r10, r10, #3
	mul	r8, r8, lr
	uxtb	r3, r3
	asrs	r6, r6, #8
	mul	r10, r10, r2
	add	r8, r6, r8, lsr #8
	and	r6, r1, #2016
	lsls	r1, r1, #3
	asrs	r6, r6, #3
	uxtb	r1, r1
	mul	r6, r6, r0
	cmp	r8, #254
	mul	r1, r1, r0
	ldr	r0, [sp, #32]
	ite	le
	uxtble	r8, r8
	movgt	r8, #255
	asrs	r6, r6, #8
	mul	r3, r3, r0
	asrs	r1, r1, #8
	add	r10, r6, r10, lsr #8
	cmp	r10, #254
	add	r6, r1, r3, lsr #8
	ite	le
	uxtble	r10, r10
	movgt	r10, #255
	cmp	r6, #254
	it	le
	uxtble	r6, r6
	ble	.L181
	movs	r6, #255
	b	.L181
.L170:
	ldr	r1, [r7, #24]
	ldrb	r0, [r1]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L175
	str	r0, [sp, #52]
.L177:
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L309
.L176:
	ldr	r1, [r7, #20]
	movs	r4, #1
	ldr	r0, [r7, #12]
	str	r4, [sp, #52]
	str	r3, [sp, #4]
	lsl	r2, r1, r4
	ldr	r4, [sp, #12]
	subs	r1, r0, r1
	ldr	r0, [sp, #56]
	str	ip, [sp, #8]
	add	r1, r4, r1, lsl #1
	add	r0, r0, r2
	bl	memcpy(PLT)
	ldrb	r5, [r7, #39]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	ldr	ip, [sp, #8]
	b	.L171
.L25:
	ldr	r1, [r7, #24]
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L47
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L26
	ldr	r4, [sp, #60]
	cmp	r4, #0
	beq	.L49
	ldr	r2, [r7, #28]
.L190:
	ldr	r6, [r7, #12]
	ldr	r4, [sp, #60]
	subs	r6, r6, r3
	adds	lr, r4, r6
	beq	.L54
	cmp	r3, #0
	ble	.L31
	mla	r1, r3, r9, r3
	add	r3, r3, lr
	add	r2, r2, r1
.L55:
	ldrb	r0, [lr]	@ zero_extendqisi2
	ldrb	r1, [r2, #-1]!	@ zero_extendqisi2
	add	r1, r1, r0
	adds	r0, r1, #1
	uxtb	r0, r0
	cmp	r1, #255
	ite	gt
	movgt	r1, r0
	movle	r1, #0
	strb	r1, [lr], #1
	cmp	lr, r3
	bne	.L55
	ldr	r2, [r7, #28]
	b	.L31
.L87:
	ldr	r1, [r7, #12]
	lsr	r10, r10, #2
	lsr	r8, r8, #3
	lsl	r10, r10, #5
	cmp	r1, #31
	asr	r3, r1, #31
	orr	r8, r10, r8, lsl #11
	lsr	r3, r3, #27
	orr	r6, r8, r6, lsr #3
	add	r4, r1, r3
	and	r4, r4, #31
	sub	r4, r4, r3
	bgt	.L95
.L97:
	cmp	r4, #0
	ble	.L74
	subs	r4, r1, r4
	cmp	r1, r4
	ble	.L74
	ldr	lr, [sp, #68]
	sub	r5, r1, #15
	adds	r0, r4, #1
	cmp	r0, r5
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	cmp	r1, lr
	it	lt
	movlt	r3, #0
	cbz	r3, .L99
	ldr	r0, [sp, #12]
	add	r3, r4, #34
	uxth	r2, r6
	add	r3, r0, r3, lsl #1
.L100:
	adds	r4, r4, #16
	pld	[r3]
	adds	r0, r4, #1
	strh	r2, [r3, #-68]	@ movhi
	cmp	r0, r5
	strh	r2, [r3, #-66]	@ movhi
	strh	r2, [r3, #-64]	@ movhi
	add	r3, r3, #32
	strh	r2, [r3, #-94]	@ movhi
	strh	r2, [r3, #-92]	@ movhi
	strh	r2, [r3, #-90]	@ movhi
	strh	r2, [r3, #-88]	@ movhi
	strh	r2, [r3, #-86]	@ movhi
	strh	r2, [r3, #-84]	@ movhi
	strh	r2, [r3, #-82]	@ movhi
	strh	r2, [r3, #-80]	@ movhi
	strh	r2, [r3, #-78]	@ movhi
	strh	r2, [r3, #-76]	@ movhi
	strh	r2, [r3, #-74]	@ movhi
	strh	r2, [r3, #-72]	@ movhi
	strh	r2, [r3, #-70]	@ movhi
	blt	.L100
.L99:
	ldr	r3, [sp, #12]
	add	r4, r4, #-2147483648
	subs	r4, r4, #1
	add	r4, r3, r4, lsl #1
.L101:
	cmp	r1, r0
	strh	r6, [r4, #2]!	@ movhi
	add	r0, r0, #1
	bgt	.L101
	b	.L74
.L126:
	cmp	r4, #255
	beq	.L316
	cmp	r4, #0
	beq	.L70
	asr	r2, fp, #31
	cmp	fp, #7
	lsr	r2, r2, #29
	add	r3, fp, r2
	and	r3, r3, #7
	sub	r3, r3, r2
	bgt	.L162
	cmp	r3, #0
	ble	.L70
.L163:
	rsb	r3, r3, fp
	cmp	fp, r3
	ble	.L70
	ldr	r1, [sp, #68]
	sub	r0, fp, #15
	add	r8, r3, #1
	str	r0, [sp, #16]
	cmp	r8, r0
	ite	lt
	movlt	r2, #1
	movge	r2, #0
	cmp	fp, r1
	it	lt
	movlt	r2, #0
	cmp	r2, #0
	beq	.L166
	ldr	r2, [sp, #12]
	add	ip, r3, #10
	str	r7, [sp, #16]
	mov	r8, r0
	str	r9, [sp, #32]
	add	r6, r2, ip, lsl #1
	add	r5, r2, r3, lsl #1
	mov	r7, r6
	mov	r6, r3
.L167:
	ldrh	r0, [r7, #-20]
	mov	r1, r10
	mov	r2, r4
	pld	[r7]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r7, #-20]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #2]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #2]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #4]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #4]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #6]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #6]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #8]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #8]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #10]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #10]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #12]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #12]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #14]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #14]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #16]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #16]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #18]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #18]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #20]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #20]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #22]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #22]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #24]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #24]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #26]
	bl	libaroma_alpha(PLT)
	adds	r6, r6, #16
	strh	r0, [r5, #26]	@ movhi
	mov	r1, r10
	mov	r2, r4
	ldrh	r0, [r5, #28]
	add	r9, r6, #1
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	strh	r0, [r5, #28]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #30]
	bl	libaroma_alpha(PLT)
	cmp	r8, r9
	strh	r0, [r5, #30]	@ movhi
	add	r7, r7, #32
	add	r5, r5, #32
	bgt	.L167
	mov	r8, r9
	ldr	r7, [sp, #16]
	ldr	r9, [sp, #32]
	mov	r3, r6
.L166:
	ldr	lr, [sp, #12]
	add	r6, lr, r3, lsl #1
.L168:
	ldrh	r0, [r6]
	mov	r1, r10
	mov	r2, r4
	bl	libaroma_alpha(PLT)
	cmp	fp, r8
	strh	r0, [r6], #2	@ movhi
	add	r8, r8, #1
	bgt	.L168
	b	.L70
.L12:
	add	sp, sp, #348
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L313:
	cmp	r4, #255
	ldrh	r6, [r7, #32]
	ldr	r8, [r7, #12]
	beq	.L317
	cmp	r4, #0
	beq	.L70
	asr	r3, r8, #31
	cmp	r8, #7
	lsr	r3, r3, #29
	add	r10, r8, r3
	and	r10, r10, #7
	rsb	r10, r3, r10
	bgt	.L119
.L121:
	cmp	r10, #0
	ble	.L70
	rsb	r3, r10, r8
	cmp	r8, r3
	ble	.L70
	ldr	r1, [sp, #68]
	sub	r0, r8, #15
	add	fp, r3, #1
	str	r0, [sp, #16]
	cmp	fp, r0
	ite	lt
	movlt	r2, #1
	movge	r2, #0
	cmp	r8, r1
	it	lt
	movlt	r2, #0
	cmp	r2, #0
	beq	.L123
	ldr	r2, [sp, #12]
	add	ip, r3, #10
	str	r7, [sp, #16]
	mov	fp, r0
	str	r8, [sp, #32]
	add	r10, r2, ip, lsl #1
	add	r5, r2, r3, lsl #1
	mov	r7, r10
	mov	r10, r3
.L124:
	ldrh	r0, [r7, #-20]
	mov	r1, r6
	mov	r2, r4
	pld	[r7]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r7, #-20]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #2]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #2]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #4]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #4]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #6]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #6]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #8]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #8]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #10]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #10]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #12]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #12]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #14]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #14]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #16]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #16]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #18]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #18]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #20]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #20]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #22]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #22]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #24]
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #24]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #26]
	bl	libaroma_alpha(PLT)
	add	r10, r10, #16
	strh	r0, [r5, #26]	@ movhi
	mov	r1, r6
	mov	r2, r4
	ldrh	r0, [r5, #28]
	add	r8, r10, #1
	bl	libaroma_alpha(PLT)
	mov	r1, r6
	strh	r0, [r5, #28]	@ movhi
	mov	r2, r4
	ldrh	r0, [r5, #30]
	bl	libaroma_alpha(PLT)
	cmp	r8, fp
	strh	r0, [r5, #30]	@ movhi
	add	r7, r7, #32
	add	r5, r5, #32
	blt	.L124
	mov	fp, r8
	ldr	r7, [sp, #16]
	ldr	r8, [sp, #32]
	mov	r3, r10
.L123:
	ldr	lr, [sp, #12]
	add	r10, lr, r3, lsl #1
.L125:
	ldrh	r0, [r10]
	mov	r1, r6
	mov	r2, r4
	bl	libaroma_alpha(PLT)
	cmp	r8, fp
	strh	r0, [r10], #2	@ movhi
	add	fp, fp, #1
	bgt	.L125
	b	.L70
.L315:
	ldr	r4, [r7, #12]
	ldrh	r0, [r7, #32]
	cmp	r4, #31
	asr	r1, r4, #31
	lsr	r1, r1, #27
	add	r6, r4, r1
	and	r6, r6, #31
	sub	r6, r6, r1
	bgt	.L72
.L75:
	cmp	r6, #0
	ble	.L74
	subs	r6, r4, r6
	cmp	r4, r6
	ble	.L74
	add	r3, r3, r6
	rsb	lr, r6, r4
	add	ip, ip, r3, lsl #1
	ubfx	r2, ip, #1, #2
	negs	r2, r2
	and	r2, r2, #7
	cmp	r2, lr
	it	cs
	movcs	r2, lr
	cmp	lr, #10
	it	ls
	movls	r2, lr
	cmp	r2, #0
	beq	.L78
	ldr	r3, [sp, #12]
	cmp	r2, #1
	strh	r0, [r3, r6, lsl #1]	@ movhi
	add	r3, r6, #1
	bls	.L202
	ldr	r1, [sp, #12]
	cmp	r2, #2
	strh	r0, [r1, r3, lsl #1]	@ movhi
	add	r3, r6, #2
	beq	.L202
	cmp	r2, #3
	strh	r0, [r1, r3, lsl #1]	@ movhi
	add	r3, r6, #3
	beq	.L202
	cmp	r2, #4
	strh	r0, [r1, r3, lsl #1]	@ movhi
	add	r3, r6, #4
	beq	.L202
	cmp	r2, #5
	strh	r0, [r1, r3, lsl #1]	@ movhi
	add	r3, r6, #5
	beq	.L202
	cmp	r2, #6
	strh	r0, [r1, r3, lsl #1]	@ movhi
	add	r3, r6, #6
	beq	.L202
	cmp	r2, #7
	strh	r0, [r1, r3, lsl #1]	@ movhi
	add	r3, r6, #7
	beq	.L202
	cmp	r2, #8
	strh	r0, [r1, r3, lsl #1]	@ movhi
	add	r3, r6, #8
	beq	.L202
	cmp	r2, #9
	strh	r0, [r1, r3, lsl #1]	@ movhi
	add	r3, r6, #9
	beq	.L202
	adds	r6, r6, #10
	strh	r0, [r1, r3, lsl #1]	@ movhi
.L79:
	cmp	r2, lr
	beq	.L74
.L78:
	rsb	lr, r2, lr
	lsr	r5, lr, #3
	lsl	r8, r5, #3
	cbz	r5, .L81
	add	ip, ip, r2, lsl #1
	vdup.16	q8, r0
	movs	r3, #0
.L86:
	adds	r3, r3, #1
	vst1.64	{d16-d17}, [ip:64]!
	cmp	r3, r5
	bcc	.L86
	cmp	r8, lr
	add	r6, r6, r8
	beq	.L74
.L81:
	adds	r3, r6, #1
	ldr	lr, [sp, #12]
	cmp	r4, r3
	strh	r0, [lr, r6, lsl #1]	@ movhi
	ble	.L74
	adds	r2, r6, #2
	strh	r0, [lr, r3, lsl #1]	@ movhi
	cmp	r4, r2
	ble	.L74
	adds	r3, r6, #3
	strh	r0, [lr, r2, lsl #1]	@ movhi
	cmp	r4, r3
	ble	.L74
	adds	r2, r6, #4
	strh	r0, [lr, r3, lsl #1]	@ movhi
	cmp	r4, r2
	ble	.L74
	adds	r3, r6, #5
	strh	r0, [lr, r2, lsl #1]	@ movhi
	cmp	r4, r3
	ble	.L74
	adds	r6, r6, #6
	strh	r0, [lr, r3, lsl #1]	@ movhi
	cmp	r6, r4
	bge	.L74
	ldr	r3, [sp, #12]
	strh	r0, [r3, r6, lsl #1]	@ movhi
	b	.L74
.L175:
	ldr	r1, [sp, #12]
	lsls	r2, r2, #1
	ldr	r0, [sp, #56]
	movs	r4, #1
	str	r3, [sp, #4]
	str	ip, [sp, #8]
	bl	memcpy(PLT)
	str	r4, [sp, #52]
	ldr	r1, [r7, #24]
	ldr	r3, [sp, #4]
	ldr	ip, [sp, #8]
	b	.L177
.L47:
	ldr	r4, [sp, #60]
	ldr	r2, [r7, #28]
	cmp	r4, #0
	beq	.L56
	cmp	r3, #0
	ble	.L57
	mla	r2, r3, r9, r2
	movs	r1, #0
.L59:
	ldrb	r5, [r4, r1]	@ zero_extendqisi2
	ldrb	r0, [r2, r1]	@ zero_extendqisi2
	add	r0, r0, r5
	adds	r5, r0, #1
	uxtb	r5, r5
	cmp	r0, #255
	ite	gt
	movgt	r0, r5
	movle	r0, #0
	strb	r0, [r4, r1]
	adds	r1, r1, #1
	cmp	r1, r3
	bne	.L59
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #28]
.L57:
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #20]
	b	.L190
.L202:
	mov	r6, r3
	b	.L79
.L172:
	ldr	r1, [sp, #12]
	lsls	r2, r2, #1
	ldr	r0, [sp, #56]
	movs	r4, #1
	str	r3, [sp, #4]
	str	ip, [sp, #8]
	bl	memcpy(PLT)
	str	r4, [sp, #52]
	ldr	r1, [r7, #24]
	ldr	r3, [sp, #4]
	ldr	ip, [sp, #8]
	b	.L174
.L95:
	ldr	r2, [sp, #12]
	subs	r0, r1, r4
	vdup.16	q8, r6
.L98:
	vmov	q4, q8  @ v8hi
	adds	r5, r5, #32
	vmov	q5, q8  @ v8hi
	mov	r3, r2
	vmov	q6, q8  @ v8hi
	cmp	r5, r0
	vmov	q7, q8  @ v8hi
	add	r2, r2, #64
	vst4.16	{d8, d10, d12, d14}, [r3]!
	vst4.16	{d9, d11, d13, d15}, [r3]
	blt	.L98
	b	.L97
.L88:
	and	r6, r9, #7
	lsls	r6, r6, #3
	bl	libaroma_dither_table_r(PLT)
	add	r0, r0, r6
	vld1.8	{d0}, [r0]
	vstr	d0, [sp, #72]
	bl	libaroma_dither_table_g(PLT)
	add	r0, r0, r6
	vld1.8	{d1}, [r0]
	vstr	d1, [sp, #80]
	bl	libaroma_dither_table_b(PLT)
	vmov.i16	q8, #255  @ v8hi
	lsr	r2, r10, #16
	lsr	r3, r10, #8
	vldr	d2, [sp, #72]
	add	r0, r0, r6
	vdup.8	d22, r2
	rsb	r2, r4, fp
	vdup.8	d20, r3
	vldr	d3, [sp, #80]
	vaddl.u8	q11, d22, d2
	vaddl.u8	q10, d20, d3
	vld1.8	{d19}, [r0]
	vmin.u16	q11, q11, q8
	vmin.u16	q10, q10, q8
	vdup.8	d18, r10
	ldr	r3, [sp, #12]
	vaddl.u8	q9, d18, d19
	vshr.u16	q11, q11, #3
	vshr.u16	q10, q10, #2
	vmin.u16	q9, q9, q8
	vqshl.u16	q11, q11, #11
	vqshl.u16	q10, q10, #5
	vshr.u16	q9, q9, #3
	vorr	q8, q11, q10
	vorr	q8, q8, q9
.L91:
	adds	r5, r5, #8
	vst1.16	{d16-d17}, [r3]!
	cmp	r5, r2
	blt	.L91
	b	.L90
.L72:
	ldr	r5, [sp, #12]
	rsb	lr, r6, r4
	vdup.16	q8, r0
.L76:
	vmov	q12, q8  @ v8hi
	adds	r2, r2, #32
	vmov	q13, q8  @ v8hi
	mov	r1, r5
	vmov	q14, q8  @ v8hi
	cmp	r2, lr
	vmov	q15, q8  @ v8hi
	add	r5, r5, #64
	vst4.16	{d24, d26, d28, d30}, [r1]!
	vst4.16	{d25, d27, d29, d31}, [r1]
	blt	.L76
	add	r2, sp, #88
	vstmia	r2, {d24-d31}
	b	.L75
.L27:
	ldr	r4, [sp, #60]
	rsb	r0, r9, r0
	ldr	r2, [r7, #28]
	subs	r0, r0, #1
	cmp	r4, #0
	beq	.L37
	cmp	r3, #0
	ble	.L38
	mla	r2, r0, r3, r2
	movs	r1, #0
.L40:
	ldrb	r5, [r4, r1]	@ zero_extendqisi2
	ldrb	r0, [r2, r1]	@ zero_extendqisi2
	add	r0, r0, r5
	adds	r5, r0, #1
	uxtb	r5, r5
	cmp	r0, #255
	ite	gt
	movgt	r0, r5
	movle	r0, #0
	strb	r0, [r4, r1]
	adds	r1, r1, #1
	cmp	r1, r3
	bne	.L40
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #28]
.L38:
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #16]
	b	.L188
.L142:
	bl	libaroma_dither_table_r(PLT)
	and	r3, r9, #7
	lsls	r6, r6, #3
	lsls	r3, r3, #3
	uxtb	r6, r6
	add	r0, r0, r3
	smulbb	r6, r6, r4
	vld1.8	{d16}, [r0]
	str	r3, [sp, #4]
	vmovl.u8	q0, d16
	vstr	d0, [sp, #16]
	vstr	d1, [sp, #24]
	bl	libaroma_dither_table_g(PLT)
	ldr	r3, [sp, #4]
	add	r0, r0, r3
	vld1.8	{d16}, [r0]
	vmovl.u8	q1, d16
	vstr	d2, [sp, #32]
	vstr	d3, [sp, #40]
	bl	libaroma_dither_table_b(PLT)
	ldr	r3, [sp, #4]
	and	r2, r10, #63488
	asrs	r2, r2, #8
	and	r1, r10, #2016
	asrs	r1, r1, #3
	vdup.16	q14, r6
	add	r0, r0, r3
	smulbb	r2, r4, r2
	smulbb	r1, r4, r1
	rsb	r3, r4, #256
	vld1.8	{d30}, [r0]
	rsb	r0, r8, fp
	vdup.16	q13, r2
	ldr	r2, [sp, #12]
	vmovl.u8	q15, d30
	vdup.16	q12, r1
	vdup.16	q9, r3
	vldr	d6, [sp, #16]
	vldr	d7, [sp, #24]
	vldr	d4, [sp, #32]
	vldr	d5, [sp, #40]
.L145:
	vmov.i16	q10, #63488  @ v8hi
	vld1.16	{d16-d17}, [r2]
	adds	r5, r5, #8
	vldr	d0, .L318
	vldr	d1, .L318+8
	cmp	r0, r5
	vand	q1, q8, q10
	vand	q11, q8, q0
	vmov.i16	q0, #31  @ v8hi
	vand	q10, q8, q0
	vrshr.u16	q11, q11, #3
	vrshr.u16	q8, q1, #8
	vmov.i16	q1, #255  @ v8hi
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
	vmin.u16	q11, q11, q1
	vmin.u16	q8, q8, q1
	vshr.u16	q10, q10, #8
	vadd.i16	q10, q10, q15
	vshr.u16	q8, q8, #3
	vshr.u16	q11, q11, #2
	vmin.u16	q10, q10, q1
	vqshl.u16	q8, q8, #11
	vqshl.u16	q11, q11, #5
	vshr.u16	q10, q10, #3
	vorr	q8, q8, q11
	vorr	q8, q8, q10
	vst1.16	{d16-d17}, [r2]!
	bgt	.L145
	cmp	r8, #0
	bgt	.L143
	b	.L70
.L162:
	and	r0, r10, #63488
	lsls	r1, r6, #3
	asrs	r0, r0, #8
	and	r6, r10, #2016
	uxtb	r1, r1
	asrs	r6, r6, #3
	smulbb	r0, r4, r0
	vmov.i16	q15, #31  @ v8hi
	smulbb	r1, r1, r4
	rsb	r2, r4, #256
	smulbb	r6, r4, r6
	vdup.16	q14, r0
	ldr	r0, [sp, #12]
	vdup.16	q13, r1
	rsb	r1, r3, fp
	vdup.16	q12, r6
	vdup.16	q9, r2
.L165:
	vmov.i16	q0, #63488  @ v8hi
	vld1.16	{d16-d17}, [r0]
	vand	q10, q8, q15
	adds	r5, r5, #8
	vldr	d2, .L318
	vldr	d3, .L318+8
	cmp	r5, r1
	vand	q11, q8, q1
	vand	q3, q8, q0
	vshl.i16	q10, q10, #3
	vrshr.u16	q11, q11, #3
	vrshr.u16	q8, q3, #8
	vmul.i16	q11, q11, q9
	vmul.i16	q8, q8, q9
	vmul.i16	q10, q10, q9
	vadd.i16	q11, q11, q12
	vadd.i16	q8, q8, q14
	vshr.u16	q11, q11, #10
	vadd.i16	q10, q10, q13
	vshr.u16	q8, q8, #11
	vshl.i16	q11, q11, #5
	vshr.u16	q10, q10, #11
	vshl.i16	q8, q8, #11
	vorr	q8, q8, q11
	vorr	q8, q8, q10
	vst1.16	{d16-d17}, [r0]!
	blt	.L165
	cmp	r3, #0
	bgt	.L163
	b	.L70
.L119:
	lsls	r2, r6, #3
	and	r1, r6, #63488
	and	r3, r6, #2016
	asrs	r1, r1, #8
	uxtb	r2, r2
	asrs	r3, r3, #3
	smulbb	r1, r4, r1
	vmov.i16	q15, #31  @ v8hi
	smulbb	r2, r2, r4
	rsb	r0, r4, #256
	smulbb	r3, r4, r3
	vdup.16	q14, r1
	rsb	r1, r10, r8
	vdup.16	q13, r2
	ldr	r2, [sp, #12]
	vdup.16	q12, r3
	movs	r3, #0
	vdup.16	q9, r0
.L122:
	vmov.i16	q0, #63488  @ v8hi
	vld1.16	{d16-d17}, [r2]
	vand	q10, q8, q15
	adds	r3, r3, #8
	vldr	d2, .L318
	vldr	d3, .L318+8
	cmp	r3, r1
	vand	q11, q8, q1
	vand	q3, q8, q0
	vshl.i16	q10, q10, #3
	vrshr.u16	q11, q11, #3
	vrshr.u16	q8, q3, #8
	vmul.i16	q11, q11, q9
	vmul.i16	q8, q8, q9
	vmul.i16	q10, q10, q9
	vadd.i16	q11, q11, q12
	vadd.i16	q8, q8, q14
	vshr.u16	q11, q11, #10
	vadd.i16	q10, q10, q13
	vshr.u16	q8, q8, #11
	vshl.i16	q11, q11, #5
	vshr.u16	q10, q10, #11
	vshl.i16	q8, q8, #11
	vorr	q8, q8, q11
	vorr	q8, q8, q10
	vst1.16	{d16-d17}, [r2]!
	blt	.L122
	b	.L121
.L56:
	asrs	r1, r3, #31
	cmp	r3, #7
	lsr	r1, r1, #29
	add	r5, r3, r1
	and	r5, r5, #7
	mla	r2, r3, r9, r2
	sub	r5, r5, r1
	bgt	.L60
.L63:
	cmp	r5, #0
	ble	.L62
	rsb	r8, r5, r3
	cmp	r3, r8
	ble	.L62
	ldr	r1, [sp, #56]
	add	r6, r8, #-2147483648
	ldr	r0, [sp, #12]
	subs	r6, r6, #1
	adds	r5, r2, r3
	add	r6, r1, r6, lsl #1
	add	r4, r0, r8, lsl #1
	add	r8, r8, r2
.L65:
	ldrb	r2, [r8], #1	@ zero_extendqisi2
	ldrh	r1, [r4]
	ldrh	r0, [r6, #2]!
	bl	libaroma_alpha(PLT)
	cmp	r8, r5
	strh	r0, [r4], #2	@ movhi
	bne	.L65
.L62:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #20]
.L49:
	ldr	r1, [r7, #12]
	lsls	r4, r3, #1
	ldr	r0, [sp, #12]
	ldr	r5, [sp, #56]
	subs	r1, r1, r3
	ldr	r2, [r7, #28]
	add	r6, r0, r1, lsl #1
	add	r5, r5, r4
.L187:
	cmp	r3, #0
	ittt	gt
	mlagt	r3, r3, r9, r3
	movgt	r8, #0
	addgt	r10, r2, r3
	ble	.L31
.L53:
	ldrh	r0, [r5, r8]
	ldrh	r1, [r6, r8]
	ldrb	r2, [r10, #-1]!	@ zero_extendqisi2
	bl	libaroma_alpha(PLT)
	strh	r0, [r6, r8]	@ movhi
	add	r8, r8, #2
	cmp	r8, r4
	bne	.L53
	ldr	r2, [r7, #28]
	b	.L31
.L319:
	.align	3
.L318:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
.L316:
	asr	r2, fp, #31
	cmp	fp, #31
	lsr	r2, r2, #27
	add	r0, fp, r2
	and	r0, r0, #31
	sub	r0, r0, r2
	bgt	.L148
.L150:
	cmp	r0, #0
	ble	.L70
	rsb	r0, r0, fp
	cmp	fp, r0
	ble	.L70
	add	r3, r3, r0
	rsb	r1, r0, fp
	add	ip, ip, r3, lsl #1
	ubfx	r4, ip, #1, #2
	negs	r4, r4
	and	r4, r4, #7
	cmp	r4, r1
	it	cs
	movcs	r4, r1
	cmp	r1, #10
	it	ls
	movls	r4, r1
	cmp	r4, #0
	beq	.L153
	ldr	r3, [sp, #12]
	cmp	r4, #1
	strh	r10, [r3, r0, lsl #1]	@ movhi
	add	r3, r0, #1
	bls	.L232
	ldr	lr, [sp, #12]
	cmp	r4, #2
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #2
	beq	.L232
	cmp	r4, #3
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #3
	beq	.L232
	cmp	r4, #4
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #4
	beq	.L232
	cmp	r4, #5
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #5
	beq	.L232
	cmp	r4, #6
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #6
	beq	.L232
	cmp	r4, #7
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #7
	beq	.L232
	cmp	r4, #8
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #8
	beq	.L232
	cmp	r4, #9
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #9
	beq	.L232
	adds	r0, r0, #10
	strh	r10, [lr, r3, lsl #1]	@ movhi
.L154:
	cmp	r1, r4
	beq	.L70
.L153:
	subs	r1, r1, r4
	lsrs	r3, r1, #3
	lsls	r5, r3, #3
	cbz	r3, .L156
	add	r4, ip, r4, lsl #1
	vdup.16	q8, r10
	movs	r2, #0
.L161:
	adds	r2, r2, #1
	vst1.64	{d16-d17}, [r4:64]!
	cmp	r2, r3
	bcc	.L161
	cmp	r5, r1
	add	r0, r0, r5
	beq	.L70
.L156:
	adds	r3, r0, #1
	ldr	r4, [sp, #12]
	cmp	fp, r3
	strh	r10, [r4, r0, lsl #1]	@ movhi
	ble	.L70
	adds	r2, r0, #2
	strh	r10, [r4, r3, lsl #1]	@ movhi
	cmp	fp, r2
	ble	.L70
	adds	r3, r0, #3
	strh	r10, [r4, r2, lsl #1]	@ movhi
	cmp	fp, r3
	ble	.L70
	adds	r2, r0, #4
	strh	r10, [r4, r3, lsl #1]	@ movhi
	cmp	fp, r2
	ble	.L70
	adds	r3, r0, #5
	strh	r10, [r4, r2, lsl #1]	@ movhi
	cmp	fp, r3
	ble	.L70
	adds	r0, r0, #6
	strh	r10, [r4, r3, lsl #1]	@ movhi
	cmp	r0, fp
	bge	.L70
.L160:
	ldr	r3, [sp, #12]
	strh	r10, [r3, r0, lsl #1]	@ movhi
	b	.L70
.L314:
	asr	r2, fp, #31
	cmp	fp, #31
	lsr	r2, r2, #27
	add	r0, fp, r2
	and	r0, r0, #31
	sub	r0, r0, r2
	bgt	.L128
.L130:
	cmp	r0, #0
	ble	.L70
	rsb	r0, r0, fp
	cmp	fp, r0
	ble	.L70
	add	r3, r3, r0
	rsb	r1, r0, fp
	add	ip, ip, r3, lsl #1
	ubfx	r4, ip, #1, #2
	negs	r4, r4
	and	r4, r4, #7
	cmp	r4, r1
	it	cs
	movcs	r4, r1
	cmp	r1, #10
	it	ls
	movls	r4, r1
	cmp	r4, #0
	beq	.L133
	ldr	r3, [sp, #12]
	cmp	r4, #1
	strh	r10, [r3, r0, lsl #1]	@ movhi
	add	r3, r0, #1
	bls	.L222
	ldr	lr, [sp, #12]
	cmp	r4, #2
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #2
	beq	.L222
	cmp	r4, #3
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #3
	beq	.L222
	cmp	r4, #4
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #4
	beq	.L222
	cmp	r4, #5
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #5
	beq	.L222
	cmp	r4, #6
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #6
	beq	.L222
	cmp	r4, #7
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #7
	beq	.L222
	cmp	r4, #8
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #8
	beq	.L222
	cmp	r4, #9
	strh	r10, [lr, r3, lsl #1]	@ movhi
	add	r3, r0, #9
	beq	.L222
	adds	r0, r0, #10
	strh	r10, [lr, r3, lsl #1]	@ movhi
.L134:
	cmp	r4, r1
	beq	.L70
.L133:
	subs	r1, r1, r4
	lsrs	r3, r1, #3
	lsls	r5, r3, #3
	cbz	r3, .L136
	add	r4, ip, r4, lsl #1
	vdup.16	q8, r10
	movs	r2, #0
.L141:
	adds	r2, r2, #1
	vst1.64	{d16-d17}, [r4:64]!
	cmp	r2, r3
	bcc	.L141
	cmp	r5, r1
	add	r0, r0, r5
	beq	.L70
.L136:
	adds	r3, r0, #1
	ldr	r4, [sp, #12]
	cmp	fp, r3
	strh	r10, [r4, r0, lsl #1]	@ movhi
	ble	.L70
	adds	r2, r0, #2
	strh	r10, [r4, r3, lsl #1]	@ movhi
	cmp	fp, r2
	ble	.L70
	adds	r3, r0, #3
	strh	r10, [r4, r2, lsl #1]	@ movhi
	cmp	fp, r3
	ble	.L70
	adds	r2, r0, #4
	strh	r10, [r4, r3, lsl #1]	@ movhi
	cmp	fp, r2
	ble	.L70
	adds	r3, r0, #5
	strh	r10, [r4, r2, lsl #1]	@ movhi
	cmp	fp, r3
	ble	.L70
	adds	r0, r0, #6
	strh	r10, [r4, r3, lsl #1]	@ movhi
	cmp	fp, r0
	bgt	.L160
	b	.L70
.L317:
	asr	r2, r8, #31
	cmp	r8, #31
	lsr	r2, r2, #27
	add	r5, r8, r2
	and	r5, r5, #31
	sub	r5, r5, r2
	bgt	.L105
.L107:
	cmp	r5, #0
	ble	.L70
	rsb	r5, r5, r8
	cmp	r8, r5
	ble	.L70
	add	r3, r3, r5
	rsb	r4, r5, r8
	add	ip, ip, r3, lsl #1
	ubfx	r1, ip, #1, #2
	negs	r1, r1
	and	r1, r1, #7
	cmp	r1, r4
	it	cs
	movcs	r1, r4
	cmp	r4, #10
	it	ls
	movls	r1, r4
	cmp	r1, #0
	beq	.L110
	ldr	r3, [sp, #12]
	cmp	r1, #1
	strh	r6, [r3, r5, lsl #1]	@ movhi
	add	r3, r5, #1
	bls	.L212
	ldr	lr, [sp, #12]
	cmp	r1, #2
	strh	r6, [lr, r3, lsl #1]	@ movhi
	add	r3, r5, #2
	beq	.L212
	cmp	r1, #3
	strh	r6, [lr, r3, lsl #1]	@ movhi
	add	r3, r5, #3
	beq	.L212
	cmp	r1, #4
	strh	r6, [lr, r3, lsl #1]	@ movhi
	add	r3, r5, #4
	beq	.L212
	cmp	r1, #5
	strh	r6, [lr, r3, lsl #1]	@ movhi
	add	r3, r5, #5
	beq	.L212
	cmp	r1, #6
	strh	r6, [lr, r3, lsl #1]	@ movhi
	add	r3, r5, #6
	beq	.L212
	cmp	r1, #7
	strh	r6, [lr, r3, lsl #1]	@ movhi
	add	r3, r5, #7
	beq	.L212
	cmp	r1, #8
	strh	r6, [lr, r3, lsl #1]	@ movhi
	add	r3, r5, #8
	beq	.L212
	cmp	r1, #9
	strh	r6, [lr, r3, lsl #1]	@ movhi
	add	r3, r5, #9
	beq	.L212
	adds	r5, r5, #10
	strh	r6, [lr, r3, lsl #1]	@ movhi
.L111:
	cmp	r1, r4
	beq	.L70
.L110:
	subs	r4, r4, r1
	lsrs	r3, r4, #3
	lsls	r0, r3, #3
	cbz	r3, .L113
	add	r1, ip, r1, lsl #1
	vdup.16	q8, r6
	movs	r2, #0
.L118:
	adds	r2, r2, #1
	vst1.64	{d16-d17}, [r1:64]!
	cmp	r2, r3
	bcc	.L118
	cmp	r0, r4
	add	r5, r5, r0
	beq	.L70
.L113:
	adds	r3, r5, #1
	ldr	r4, [sp, #12]
	cmp	r8, r3
	strh	r6, [r4, r5, lsl #1]	@ movhi
	ble	.L70
	adds	r2, r5, #2
	strh	r6, [r4, r3, lsl #1]	@ movhi
	cmp	r8, r2
	ble	.L70
	adds	r3, r5, #3
	strh	r6, [r4, r2, lsl #1]	@ movhi
	cmp	r8, r3
	ble	.L70
	adds	r2, r5, #4
	strh	r6, [r4, r3, lsl #1]	@ movhi
	cmp	r8, r2
	ble	.L70
	adds	r3, r5, #5
	strh	r6, [r4, r2, lsl #1]	@ movhi
	cmp	r8, r3
	ble	.L70
	adds	r5, r5, #6
	strh	r6, [r4, r3, lsl #1]	@ movhi
	cmp	r8, r5
	ble	.L70
	ldr	r3, [sp, #12]
	strh	r6, [r3, r5, lsl #1]	@ movhi
	b	.L70
.L37:
	asrs	r1, r3, #31
	cmp	r3, #7
	lsr	r1, r1, #29
	add	r6, r3, r1
	and	r6, r6, #7
	mla	r2, r0, r3, r2
	sub	r6, r6, r1
	bgt	.L41
.L44:
	cmp	r6, #0
	ble	.L43
	rsb	r8, r6, r3
	cmp	r3, r8
	ble	.L43
	ldr	r1, [sp, #56]
	add	r6, r8, #-2147483648
	ldr	r0, [sp, #12]
	subs	r6, r6, #1
	adds	r5, r2, r3
	add	r6, r1, r6, lsl #1
	add	r4, r0, r8, lsl #1
	add	r8, r8, r2
.L46:
	ldrb	r2, [r8], #1	@ zero_extendqisi2
	ldrh	r1, [r4]
	ldrh	r0, [r6, #2]!
	bl	libaroma_alpha(PLT)
	cmp	r8, r5
	strh	r0, [r4], #2	@ movhi
	bne	.L46
.L43:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #16]
.L29:
	ldr	r1, [r7, #12]
	lsls	r4, r3, #1
	ldr	lr, [sp, #12]
	rsb	r0, r9, r0
	ldr	r5, [sp, #56]
	subs	r0, r0, #1
	subs	r1, r1, r3
	ldr	r2, [r7, #28]
	add	r6, lr, r1, lsl #1
	add	r5, r5, r4
.L186:
	cmp	r3, #0
	ittt	gt
	mlagt	r3, r3, r0, r3
	movgt	r8, #0
	addgt	r10, r2, r3
	ble	.L31
.L34:
	ldrh	r0, [r5, r8]
	ldrh	r1, [r6, r8]
	ldrb	r2, [r10, #-1]!	@ zero_extendqisi2
	bl	libaroma_alpha(PLT)
	strh	r0, [r6, r8]	@ movhi
	add	r8, r8, #2
	cmp	r8, r4
	bne	.L34
	b	.L26
.L232:
	mov	r0, r3
	b	.L154
.L222:
	mov	r0, r3
	b	.L134
.L212:
	mov	r5, r3
	b	.L111
.L148:
	ldr	r1, [sp, #12]
	rsb	r4, r0, fp
	vdup.16	q8, r6
	add	lr, sp, #152
.L151:
	vmov	q12, q8  @ v8hi
	adds	r5, r5, #32
	vmov	q13, q8  @ v8hi
	mov	r2, r1
	vmov	q14, q8  @ v8hi
	cmp	r5, r4
	vmov	q15, q8  @ v8hi
	add	r1, r1, #64
	vst4.16	{d24, d26, d28, d30}, [r2]!
	vst4.16	{d25, d27, d29, d31}, [r2]
	blt	.L151
	add	r1, sp, #152
	vstmia	r1, {d24-d31}
	b	.L150
.L128:
	ldr	r1, [sp, #12]
	rsb	r4, r0, fp
	vdup.16	q8, r6
.L131:
	vmov	q12, q8  @ v8hi
	adds	r5, r5, #32
	vmov	q13, q8  @ v8hi
	mov	r2, r1
	vmov	q14, q8  @ v8hi
	cmp	r5, r4
	vmov	q15, q8  @ v8hi
	add	r1, r1, #64
	vst4.16	{d24, d26, d28, d30}, [r2]!
	vst4.16	{d25, d27, d29, d31}, [r2]
	blt	.L131
	add	r4, sp, #216
	vstmia	r4, {d24-d31}
	b	.L130
.L105:
	ldr	r0, [sp, #12]
	rsb	r4, r5, r8
	vdup.16	q8, r6
	movs	r1, #0
	add	lr, sp, #280
.L108:
	vmov	q12, q8  @ v8hi
	adds	r1, r1, #32
	vmov	q13, q8  @ v8hi
	mov	r2, r0
	vmov	q14, q8  @ v8hi
	cmp	r1, r4
	vmov	q15, q8  @ v8hi
	add	r0, r0, #64
	vst4.16	{d24, d26, d28, d30}, [r2]!
	vst4.16	{d25, d27, d29, d31}, [r2]
	blt	.L108
	add	r0, sp, #280
	vstmia	r0, {d24-d31}
	b	.L107
.L60:
	ldr	lr, [sp, #60]
	vmov.i16	q2, #255  @ v8hi
	ldr	r0, [sp, #56]
	vmov.i16	q3, #256  @ v8hi
	ldr	r1, [sp, #12]
	vmov.i16	q12, #31  @ v8hi
	subs	r6, r3, r5
.L64:
	add	r4, r2, lr
	vld1.16	{d18-d19}, [r0:64]!
	vmov.i16	q0, #63488  @ v8hi
	add	lr, lr, #8
	vldr	d20, .L320
	vldr	d21, .L320+8
	cmp	lr, r6
	vand	q15, q9, q10
	vld1.8	{d16}, [r4]
	vand	q1, q9, q0
	vld1.16	{d20-d21}, [r1]
	vand	q14, q10, q0
	vldr	d0, .L320
	vldr	d1, .L320+8
	vmovl.u8	q8, d16
	vand	q13, q10, q0
	vrshr.u16	q1, q1, #8
	vsub.i16	q11, q3, q8
	vrshr.u16	q14, q14, #8
	vrshr.u16	q15, q15, #3
	vrshr.u16	q13, q13, #3
	vmul.i16	q1, q1, q11
	vmul.i16	q15, q15, q11
	vmul.i16	q14, q14, q8
	vmul.i16	q13, q13, q8
	vadd.i16	q14, q1, q14
	vand	q1, q9, q12
	vadd.i16	q13, q15, q13
	vand	q15, q10, q12
	vshl.i16	q1, q1, #3
	vshr.u16	q14, q14, #11
	vshl.i16	q15, q15, #3
	vmul.i16	q11, q1, q11
	vmul.i16	q15, q15, q8
	vshr.u16	q13, q13, #10
	vshl.i16	q14, q14, #11
	vshl.i16	q13, q13, #5
	vorr	q14, q14, q13
	vadd.i16	q13, q11, q15
	vceq.i16	q11, q8, q2
	vceq.i16	q8, q8, #0
	vshr.u16	q13, q13, #11
	vorr	q13, q14, q13
	vbsl	q11, q10, q13
	vbsl	q8, q9, q11
	vst1.16	{d16-d17}, [r1]!
	blt	.L64
	b	.L63
.L41:
	ldr	r1, [sp, #60]
	vmov.i16	q3, #255  @ v8hi
	ldr	r4, [sp, #56]
	vmov.i16	q15, #256  @ v8hi
	ldr	r0, [sp, #12]
	vmov.i16	q12, #31  @ v8hi
	rsb	lr, r6, r3
.L45:
	adds	r5, r2, r1
	vld1.16	{d18-d19}, [r4:64]!
	vmov.i16	q0, #63488  @ v8hi
	adds	r1, r1, #8
	vldr	d20, .L320
	vldr	d21, .L320+8
	cmp	r1, lr
	vand	q14, q9, q10
	vld1.8	{d16}, [r5]
	vand	q1, q9, q0
	vld1.16	{d20-d21}, [r0]
	vand	q2, q10, q0
	vldr	d0, .L320
	vldr	d1, .L320+8
	vmovl.u8	q8, d16
	vand	q13, q10, q0
	vrshr.u16	q1, q1, #8
	vsub.i16	q11, q15, q8
	vrshr.u16	q2, q2, #8
	vrshr.u16	q14, q14, #3
	vrshr.u16	q13, q13, #3
	vmul.i16	q1, q1, q11
	vmul.i16	q13, q13, q8
	vmul.i16	q2, q2, q8
	vmul.i16	q14, q14, q11
	vadd.i16	q2, q1, q2
	vand	q1, q9, q12
	vadd.i16	q14, q14, q13
	vand	q13, q10, q12
	vshl.i16	q1, q1, #3
	vshr.u16	q2, q2, #11
	vshl.i16	q13, q13, #3
	vmul.i16	q11, q1, q11
	vmul.i16	q13, q13, q8
	vshr.u16	q14, q14, #10
	vshl.i16	q2, q2, #11
	vshl.i16	q14, q14, #5
	vadd.i16	q13, q11, q13
	vorr	q14, q2, q14
	vceq.i16	q11, q8, q3
	vshr.u16	q13, q13, #11
	vceq.i16	q8, q8, #0
	vorr	q13, q14, q13
	vbsl	q11, q10, q13
	vbsl	q8, q9, q11
	vst1.16	{d16-d17}, [r0]!
	blt	.L45
	b	.L44
.L35:
	ldr	lr, [sp, #12]
	lsls	r4, r3, #1
	ldr	r5, [sp, #56]
	add	r6, lr, r6, lsl #1
	add	r5, r5, r4
	b	.L186
.L54:
	ldr	lr, [sp, #12]
	lsls	r4, r3, #1
	ldr	r5, [sp, #56]
	add	r6, lr, r6, lsl #1
	add	r5, r5, r4
	b	.L187
.L321:
	.align	3
.L320:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.size	libaroma_gradient_ex1._omp_fn.0, .-libaroma_gradient_ex1._omp_fn.0
	.section	.text._libaroma_gradient_corner,"ax",%progbits
	.align	2
	.global	_libaroma_gradient_corner
	.thumb
	.thumb_func
	.type	_libaroma_gradient_corner, %function
_libaroma_gradient_corner:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subs	r7, r0, #0
	fstmfdd	sp!, {d8}
	ble	.L331
	mul	r9, r7, r7
	movs	r1, #1
	mov	r4, r1
	add	r8, r7, #-1
	rsb	r10, r7, r4
	flds	s17, .L337
	mul	r8, r8, r7
	rsb	fp, r7, #0
	mov	r0, r9
	mla	r10, r10, r7, r9
	bl	calloc(PLT)
	mov	r6, r0
.L330:
	mls	r3, r4, r4, r9
	fmsr	s15, r3	@ int
	fsitod	d16, s15
	fsqrtd	d0, d16
	fcmpd	d0, d0
	fmstat
	bne	.L336
.L324:
	fcvtsd	s16, d0
	fcpys	s0, s16
	bl	floorf(PLT)
	ftosizs	s0, s0
	fmrs	r5, s0	@ int
	fsitos	s0, s0
	fsubs	s0, s16, s0
	fmuls	s0, s0, s17
	bl	roundf(PLT)
	ftouizs	s15, s0
	subs	r1, r7, r5
	subs	r1, r1, #1
	fcmpes	s0, s17
	add	r2, r8, r1
	fmstat
	mov	lr, #255
	rsb	ip, r4, r7
	fmrs	r3, s15	@ int
	mla	ip, r1, r7, ip
	it	mi
	uxtbmi	lr, r3
	ldrb	r3, [r6, r2]	@ zero_extendqisi2
	add	r0, r8, r10
	subs	r0, r0, r5
	mov	r1, #-1
	cmp	r3, lr
	add	r0, r0, r6
	it	cc
	movcc	r3, lr
	strb	r3, [r6, r2]
	mov	r2, r5
	ldrb	r3, [r6, ip]	@ zero_extendqisi2
	cmp	r3, lr
	it	cc
	movcc	r3, lr
	cmp	r5, #0
	strb	r3, [r6, ip]
	ble	.L329
	bl	memset(PLT)
.L329:
	adds	r4, r4, #1
	add	r8, r8, fp
	cmp	r7, r4
	bge	.L330
	fldmfdd	sp!, {d8}
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L331:
	fldmfdd	sp!, {d8}
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L336:
	fcpyd	d0, d16
	bl	sqrt(PLT)
	b	.L324
.L338:
	.align	2
.L337:
	.word	1132396544
	.size	_libaroma_gradient_corner, .-_libaroma_gradient_corner
	.section	.text.libaroma_gradient_ex1,"ax",%progbits
	.align	2
	.global	libaroma_gradient_ex1
	.thumb
	.thumb_func
	.type	libaroma_gradient_ex1, %function
libaroma_gradient_ex1:
	@ args = 32, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #92
	mov	r5, r0
	ldrh	r0, [sp, #136]
	ldr	r7, [sp, #128]
	ldrh	fp, [sp, #132]
	str	r0, [sp, #20]
	ldrh	r6, [sp, #144]
	ldrb	ip, [sp, #148]	@ zero_extendqisi2
	ldrb	r10, [sp, #152]	@ zero_extendqisi2
	ldrb	r4, [sp, #156]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L353
.L340:
	add	r8, r1, r3
	bic	r3, r1, r1, asr #31
	ldr	r1, [r5]
	cmp	ip, #255
	it	eq
	cmpeq	r10, #255
	ite	eq
	moveq	r9, #1
	movne	r9, #0
	ldr	r0, [r5, #4]
	add	r7, r7, r2
	cmp	r8, r1
	bic	r2, r2, r2, asr #31
	it	ge
	movge	r8, r1
	ldr	r1, [sp, #20]
	cmp	r7, r0
	eor	r9, r9, #1
	it	ge
	movge	r7, r0
	ubfx	r0, r4, #1, #1
	rsb	r1, r1, fp
	clz	r1, r1
	lsrs	r1, r1, #5
	str	r0, [sp, #24]
	str	r1, [sp, #28]
	lsls	r1, r4, #28
	itt	mi
	movmi	r1, #0
	strmi	r1, [sp, #16]
	bmi	.L341
	ldr	r1, [r5, #20]
	cmp	r1, #0
	itte	ne
	movne	r9, #0
	movne	r0, #1
	moveq	r0, #0
	str	r0, [sp, #16]
.L341:
	ldr	r1, [sp, #140]
	rsb	r8, r3, r8
	subs	r7, r7, r2
	add	r4, r8, r8, lsr #31
	cmp	r1, #0
	add	r1, r7, r7, lsr #31
	it	lt
	movlt	r0, #0
	asr	r4, r4, #1
	asr	r1, r1, #1
	ittt	lt
	strlt	r0, [sp, #16]
	movlt	r9, r0
	strlt	r0, [sp, #140]
	ldr	r0, [sp, #140]
	cmp	r4, r1
	it	ge
	movge	r4, r1
	movs	r1, #0
	strb	r1, [sp, #32]
	cmp	r4, r0
	strb	r1, [sp, #33]
	it	ge
	movge	r4, r0
	strb	r1, [sp, #34]
	cmp	r6, r1
	it	ne
	cmpne	r4, r1
	strb	r1, [sp, #35]
	itet	le
	movle	r1, #0
	movgt	r1, #1
	movle	r6, r1
	bgt	.L354
.L343:
	str	r3, [sp, #44]
	ldr	r3, [sp, #20]
	ldr	r0, .L355
	str	r5, [sp, #40]
	add	r5, sp, #40
	strh	r3, [sp, #74]	@ movhi
	mov	r1, r5
	ldr	r3, [sp, #24]
.LPIC24:
	add	r0, pc
	str	r2, [sp, #48]
	movs	r2, #0
	strb	ip, [sp, #76]
	strb	r3, [sp, #78]
	ldr	r3, [sp, #28]
	str	r8, [sp, #52]
	str	r7, [sp, #56]
	strb	r3, [sp, #79]
	ldr	r3, [sp, #16]
	str	r4, [sp, #60]
	str	r6, [sp, #68]
	strb	r3, [sp, #81]
	add	r3, sp, #32
	str	r3, [sp, #64]
	strh	fp, [sp, #72]	@ movhi
	strb	r10, [sp, #77]
	strb	r9, [sp, #80]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r5
	bl	libaroma_gradient_ex1._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r0, [sp, #68]
	cbz	r0, .L344
	bl	free(PLT)
.L344:
	movs	r0, #1
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L354:
	ubfx	r1, r6, #12, #1
	ubfx	r0, r6, #8, #1
	strb	r1, [sp, #32]
	ubfx	r1, r6, #4, #1
	strb	r0, [sp, #33]
	and	r6, r6, #1
	mov	r0, r4
	strb	r6, [sp, #35]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	ip, [sp]
	strb	r1, [sp, #34]
	bl	_libaroma_gradient_corner(PLT)
	ldr	r2, [sp, #8]
	mov	r6, r0
	ldr	r3, [sp, #4]
	ldr	ip, [sp]
	b	.L343
.L353:
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	ip, [sp]
	bl	libaroma_fb(PLT)
	ldr	ip, [sp]
	ldr	r5, [r0, #52]
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #12]
	b	.L340
.L356:
	.align	2
.L355:
	.word	libaroma_gradient_ex1._omp_fn.0-(.LPIC24+4)
	.size	libaroma_gradient_ex1, .-libaroma_gradient_ex1
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
