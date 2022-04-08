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
	.file	"blur.c"
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text.libaroma_draw_shadow._omp_fn.1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_draw_shadow._omp_fn.1, %function
libaroma_draw_shadow._omp_fn.1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	ldr	r4, [r0]
	bl	omp_get_num_threads(PLT)
	mov	r7, r0
	bl	omp_get_thread_num(PLT)
	mov	r1, r7
	mov	r8, r0
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r1, r7
	mov	r6, r0
	mov	r0, r4
	bl	__aeabi_idivmod(PLT)
	cmp	r8, r1
	itt	lt
	addlt	r6, r6, #1
	movlt	r1, #0
	mla	r4, r8, r6, r1
	add	r6, r6, r4
	cmp	r4, r6
	bge	.L1
.L5:
	ldr	r3, [r5, #4]
	ldr	r1, [r5, #8]
	ldr	r2, [r3]
	ldr	r3, [r2, #8]
	ldr	r0, [r2, #20]
	mov	r2, r3
	mla	r0, r4, r3, r0
	adds	r4, r4, #1
	bl	memcpy(PLT)
	cmp	r4, r6
	bne	.L5
	pop	{r4, r5, r6, r7, r8, pc}
.L1:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	libaroma_draw_shadow._omp_fn.1, .-libaroma_draw_shadow._omp_fn.1
	.section	.text.libaroma_draw_shadow._omp_fn.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	libaroma_draw_shadow._omp_fn.0, %function
libaroma_draw_shadow._omp_fn.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	bl	omp_get_num_threads(PLT)
	mov	r5, r0
	bl	omp_get_thread_num(PLT)
	ldr	r6, [r4, #8]
	mov	r7, r0
	mov	r1, r5
	adds	r6, r6, #1
	mov	r0, r6
	bl	__aeabi_idiv(PLT)
	mov	r1, r5
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
	bge	.L9
	lsls	r5, r7, #2
.L14:
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #4]
	ldr	r3, [r3]
	cmp	r1, #0
	ldr	r6, [r3, #8]
	itt	ge
	movge	ip, r3
	movge	r3, #0
	mul	r6, r6, r7
	it	ge
	movge	lr, r6
	bge	.L21
	b	.L20
.L18:
	ldr	r0, [ip]
	ldr	r1, [ip, #20]
	add	r0, r0, r6
	subs	r0, r0, r3
	strb	r2, [r1, lr]
	subs	r0, r0, #1
	adds	r3, r3, #1
	strb	r2, [r1, r0]
	add	lr, lr, #1
	ldr	r1, [r4, #4]
	cmp	r1, r3
	blt	.L20
.L28:
	ldr	r2, [r4, #20]
	ldr	ip, [r2]
.L21:
	ldrb	r2, [r4, #28]	@ zero_extendqisi2
	ldr	r0, [r4, #16]
	fmsr	s15, r2	@ int
	add	r0, r0, r5
	ldr	r2, [r4, #12]
	fsitos	s15, s15
	flds	s14, [r0]
	add	r2, r2, r3, lsl #2
	ftouizs	s12, s15
	flds	s13, [r2]
	fmuls	s14, s15, s14
	fmrs	r2, s12	@ int
	uxtb	r2, r2
	fmuls	s14, s14, s13
	fcmpes	s15, s14
	fmstat
	bmi	.L23
	ftouizs	s14, s14
	fmrs	r2, s14	@ int
	uxtb	r2, r2
.L23:
	cmp	r3, r1
	bne	.L18
	ldr	r1, [ip, #20]
	adds	r3, r3, #1
	strb	r2, [r1, lr]
	add	lr, lr, #1
	ldr	r1, [r4, #4]
	cmp	r1, r3
	bge	.L28
.L20:
	ldr	r3, [r4, #8]
	cmp	r7, r3
	beq	.L15
	ldr	r3, [r4, #20]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r0, [r3, #20]
	ldr	lr, [r3, #8]
	subs	r1, r2, r7
	ldr	r2, [r3]
	subs	r3, r1, #1
	adds	r1, r0, r6
	mla	r0, lr, r3, r0
	bl	memcpy(PLT)
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #24]
	ldr	ip, [r4, #4]
	ldr	r0, [r2]
	ldr	r3, [r3]
	ldr	r2, [r4]
	ldr	r1, [r0, #20]
	ldr	r0, [r3, #8]
	ldr	r3, [r3, #20]
	add	lr, r1, r6
	ldrb	r1, [lr, ip]	@ zero_extendqisi2
	mla	r0, r0, r7, r3
	bl	memset(PLT)
	ldr	r1, [r4, #20]
	ldr	r3, [r4, #24]
	ldr	r2, [r4, #8]
	ldr	r0, [r1]
	ldr	r3, [r3]
	rsb	r2, r7, r2, lsl #1
	ldr	r1, [r0, #20]
	ldr	lr, [r3, #8]
	ldr	r3, [r3, #20]
	subs	r0, r2, #1
	ldmia	r4, {r2, ip}
	add	r6, r6, r1
	ldrb	r1, [r6, ip]	@ zero_extendqisi2
	mla	r0, lr, r0, r3
	bl	memset(PLT)
.L15:
	adds	r7, r7, #1
	adds	r5, r5, #4
	cmp	r7, r8
	bne	.L14
	pop	{r4, r5, r6, r7, r8, pc}
.L9:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	libaroma_draw_shadow._omp_fn.0, .-libaroma_draw_shadow._omp_fn.0
	.section	.text._libaroma_blur_kernel,"ax",%progbits
	.align	2
	.global	_libaroma_blur_kernel
	.thumb
	.thumb_func
	.type	_libaroma_blur_kernel, %function
_libaroma_blur_kernel:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	lsls	r5, r0, #1
	mov	r4, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
	adds	r6, r5, #1
	rsb	r8, r0, #0
	lsls	r0, r6, #2
	fldd	d8, .L47
	fconstd	d9, #96
	bl	malloc(PLT)
	fmsr	s14, r4	@ int
	cmp	r6, #0
	fsitod	d16, s14
	mov	r7, r0
	fmuld	d17, d16, d16
	fdivd	d8, d8, d16
	fdivd	d9, d9, d17
	fcvtsd	s16, d8
	fcvtsd	s18, d9
	ble	.L44
	cmp	r5, #7
	fcvtds	d8, s16
	ble	.L42
	sub	r9, r5, #8
	flds	s19, .L47+8
	bic	r9, r9, #7
	add	r5, r0, #32
	rsb	r9, r4, r9
	mov	r4, r8
	add	r9, r9, #8
.L32:
	mul	r3, r4, r4
	pld	[r5]
	adds	r5, r5, #32
	fmsr	s0, r3	@ int
	fsitos	s0, s0
	fnmuls	s0, s0, s18
	fcvtds	d0, s0
	bl	exp(PLT)
	adds	r3, r4, #1
	fmuld	d10, d0, d8
	mul	r3, r3, r3
	fmsr	s14, r3	@ int
	fsitos	s0, s14
	fcvtsd	s21, d10
	fnmuls	s0, s0, s18
	fsts	s21, [r5, #-64]
	fcvtds	d0, s0
	bl	exp(PLT)
	adds	r3, r4, #2
	fmuld	d11, d0, d8
	mul	r3, r3, r3
	fmsr	s15, r3	@ int
	fsitos	s0, s15
	fcvtsd	s22, d11
	fnmuls	s0, s0, s18
	fsts	s22, [r5, #-60]
	fadds	s21, s22, s21
	fcvtds	d0, s0
	bl	exp(PLT)
	adds	r3, r4, #3
	fmuld	d0, d0, d8
	mul	r3, r3, r3
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	fcvtsd	s20, d0
	fnmuls	s0, s15, s18
	fsts	s20, [r5, #-56]
	fadds	s21, s21, s20
	fcvtds	d0, s0
	bl	exp(PLT)
	adds	r3, r4, #4
	fmuld	d0, d0, d8
	mul	r3, r3, r3
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	fcvtsd	s23, d0
	fnmuls	s0, s15, s18
	fsts	s23, [r5, #-52]
	fadds	s23, s21, s23
	fcvtds	d0, s0
	bl	exp(PLT)
	adds	r3, r4, #5
	fmuld	d0, d0, d8
	mul	r3, r3, r3
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	fcvtsd	s25, d0
	fnmuls	s0, s15, s18
	fsts	s25, [r5, #-48]
	fadds	s25, s23, s25
	fcvtds	d0, s0
	bl	exp(PLT)
	adds	r3, r4, #6
	fmuld	d0, d0, d8
	mul	r3, r3, r3
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	fcvtsd	s26, d0
	fnmuls	s0, s15, s18
	fsts	s26, [r5, #-44]
	fadds	s26, s25, s26
	fcvtds	d0, s0
	bl	exp(PLT)
	adds	r3, r4, #7
	fmuld	d0, d0, d8
	mul	r3, r3, r3
	adds	r4, r4, #8
	fmsr	s14, r3	@ int
	fsitos	s15, s14
	fcvtsd	s24, d0
	fnmuls	s0, s15, s18
	fsts	s24, [r5, #-40]
	fadds	s24, s26, s24
	fcvtds	d0, s0
	bl	exp(PLT)
	fmuld	d0, d0, d8
	cmp	r4, r9
	rsb	r3, r8, r4
	fcvtsd	s15, d0
	fsts	s15, [r5, #-36]
	fadds	s15, s24, s15
	fadds	s19, s19, s15
	bne	.L32
.L31:
	add	r5, r7, r3, lsl #2
	rsb	r8, r4, r3
.L34:
	mul	r3, r4, r4
	adds	r4, r4, #1
	fmsr	s0, r3	@ int
	fsitos	s0, s0
	fnmuls	s0, s0, s18
	fcvtds	d0, s0
	bl	exp(PLT)
	fmuld	d0, d0, d8
	add	r3, r8, r4
	cmp	r6, r3
	fcvtsd	s0, d0
	fstmias	r5!, {s0}
	fadds	s19, s19, s0
	bgt	.L34
	lsrs	r3, r6, #2
	fconsts	s15, #112
	cmp	r3, #0
	it	ne
	cmpne	r6, #3
	fdivs	s19, s15, s19
	lsl	r0, r3, #2
	ite	ls
	movls	r1, #1
	movhi	r1, #0
	bls	.L43
	vdup.32	q8, d9[1]
	mov	r2, r7
.L41:
	vld1.64	{d18-d19}, [r2:64]
	adds	r1, r1, #1
	vmul.f32	q9, q9, q8
	cmp	r3, r1
	vst1.64	{d18-d19}, [r2:64]!
	bhi	.L41
	cmp	r6, r0
	mov	r3, r0
	beq	.L44
.L35:
	add	r1, r7, r3, lsl #2
	adds	r2, r3, #1
	cmp	r6, r2
	flds	s15, [r1]
	fmuls	s15, s15, s19
	fsts	s15, [r1]
	ble	.L44
	add	r2, r7, r2, lsl #2
	adds	r3, r3, #2
	cmp	r6, r3
	flds	s15, [r2]
	fmuls	s15, s15, s19
	fsts	s15, [r2]
	ble	.L44
	add	r3, r7, r3, lsl #2
	flds	s15, [r3]
	fmuls	s19, s15, s19
	fsts	s19, [r3]
.L44:
	fldmfdd	sp!, {d8-d13}
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L43:
	movs	r3, #0
	b	.L35
.L42:
	flds	s19, .L47+8
	mov	r4, r8
	movs	r3, #0
	b	.L31
.L48:
	.align	3
.L47:
	.word	869545316
	.word	1071220805
	.word	0
	.size	_libaroma_blur_kernel, .-_libaroma_blur_kernel
	.section	.text._libaroma_blur_kernel_norm,"ax",%progbits
	.align	2
	.global	_libaroma_blur_kernel_norm
	.thumb
	.thumb_func
	.type	_libaroma_blur_kernel_norm, %function
_libaroma_blur_kernel_norm:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	adds	r6, r0, #1
	fstmfdd	sp!, {d8}
	mov	r8, r0
	lsls	r0, r6, #2
	bl	malloc(PLT)
	cmp	r6, #0
	mov	r7, r0
	ble	.L56
	fmsr	s14, r6	@ int
	cmp	r8, #7
	fsitos	s15, s14
	fconsts	s16, #112
	fdivs	s16, s16, s15
	ble	.L55
	sub	r8, r8, #8
	add	r5, r0, #36
	bic	r8, r8, #7
	movs	r4, #0
	add	r8, r8, #8
.L52:
	fmsr	s15, r4	@ int
	fsitos	s4, s15
	flds	s0, .L58
	flds	s2, .L58+4
	fconsts	s3, #112
	fmuls	s4, s4, s16
	fcpys	s1, s0
	bl	libaroma_cubic_bezier(PLT)
	adds	r3, r4, #1
	fsts	s0, [r5, #-36]
	flds	s0, .L58
	fmsr	s4, r3	@ int
	flds	s2, .L58+4
	fsitos	s4, s4
	fconsts	s3, #112
	fcpys	s1, s0
	pld	[r5]
	adds	r5, r5, #32
	fmuls	s4, s4, s16
	bl	libaroma_cubic_bezier(PLT)
	adds	r3, r4, #2
	fsts	s0, [r5, #-64]
	flds	s0, .L58
	fmsr	s4, r3	@ int
	flds	s2, .L58+4
	fsitos	s4, s4
	fconsts	s3, #112
	fcpys	s1, s0
	fmuls	s4, s4, s16
	bl	libaroma_cubic_bezier(PLT)
	adds	r3, r4, #3
	fsts	s0, [r5, #-60]
	flds	s0, .L58
	fmsr	s4, r3	@ int
	flds	s2, .L58+4
	fsitos	s4, s4
	fconsts	s3, #112
	fcpys	s1, s0
	fmuls	s4, s4, s16
	bl	libaroma_cubic_bezier(PLT)
	adds	r3, r4, #4
	fsts	s0, [r5, #-56]
	flds	s0, .L58
	fmsr	s4, r3	@ int
	flds	s2, .L58+4
	fsitos	s4, s4
	fconsts	s3, #112
	fcpys	s1, s0
	fmuls	s4, s4, s16
	bl	libaroma_cubic_bezier(PLT)
	adds	r3, r4, #5
	fsts	s0, [r5, #-52]
	flds	s0, .L58
	fmsr	s4, r3	@ int
	flds	s2, .L58+4
	fsitos	s4, s4
	fconsts	s3, #112
	fcpys	s1, s0
	fmuls	s4, s4, s16
	bl	libaroma_cubic_bezier(PLT)
	adds	r3, r4, #6
	fsts	s0, [r5, #-48]
	flds	s0, .L58
	fmsr	s4, r3	@ int
	flds	s2, .L58+4
	fsitos	s4, s4
	fconsts	s3, #112
	fcpys	s1, s0
	fmuls	s4, s4, s16
	bl	libaroma_cubic_bezier(PLT)
	adds	r3, r4, #7
	fsts	s0, [r5, #-44]
	flds	s0, .L58
	adds	r4, r4, #8
	fmsr	s4, r3	@ int
	flds	s2, .L58+4
	fsitos	s4, s4
	fconsts	s3, #112
	fcpys	s1, s0
	fmuls	s4, s4, s16
	bl	libaroma_cubic_bezier(PLT)
	cmp	r4, r8
	fsts	s0, [r5, #-40]
	bne	.L52
.L51:
	add	r5, r7, r4, lsl #2
.L54:
	fmsr	s14, r4	@ int
	adds	r4, r4, #1
	fsitos	s4, s14
	flds	s0, .L58
	flds	s2, .L58+4
	fconsts	s3, #112
	fmuls	s4, s4, s16
	fcpys	s1, s0
	bl	libaroma_cubic_bezier(PLT)
	cmp	r6, r4
	fstmias	r5!, {s0}
	bgt	.L54
.L56:
	fldmfdd	sp!, {d8}
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, pc}
.L55:
	movs	r4, #0
	b	.L51
.L59:
	.align	2
.L58:
	.word	0
	.word	1053609165
	.size	_libaroma_blur_kernel_norm, .-_libaroma_blur_kernel_norm
	.section	.text.libaroma_draw_shadow,"ax",%progbits
	.align	2
	.global	libaroma_draw_shadow
	.thumb
	.thumb_func
	.type	libaroma_draw_shadow, %function
libaroma_draw_shadow:
	@ args = 20, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #140
	ldr	r6, [sp, #180]
	mov	r7, r0
	mov	r8, r3
	movs	r4, #0
	ldr	r5, [sp, #184]
	str	r2, [sp, #52]
	mov	r0, r6
	ldrb	r2, [sp, #192]	@ zero_extendqisi2
	str	r1, [sp, #36]
	ldrb	r10, [sp, #188]	@ zero_extendqisi2
	lsl	r9, r5, #1
	str	r2, [sp, #76]
	bl	_libaroma_blur_kernel_norm(PLT)
	str	r0, [sp, #48]
	mov	r0, r5
	bl	_libaroma_blur_kernel_norm(PLT)
	lsl	ip, r6, #1
	add	r1, r9, #1
	str	r0, [sp, #44]
	mov	r3, r4
	add	fp, ip, #1
	movs	r2, #1
	mov	r0, fp
	str	r4, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	mov	r1, r9
	str	r0, [sp, #80]
	mov	r3, r4
	mov	r0, r8
	movs	r2, #1
	str	r4, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r1, [sp, #176]
	mov	r3, r4
	str	r0, [sp, #84]
	movs	r2, #1
	mov	r0, fp
	str	r4, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r3, [sp, #80]
	mov	r9, r0
	str	r0, [sp, #88]
	add	r2, sp, #84
	add	r0, sp, #80
	mov	r1, r4
	str	r0, [sp, #64]
	str	r2, [sp, #68]
	ldr	r0, [r3, #20]
	ldr	r2, [r3, #12]
	bl	memset(PLT)
	ldr	r3, [sp, #84]
	mov	r1, r4
	ldr	r2, [r3, #12]
	ldr	r0, [r3, #20]
	bl	memset(PLT)
	ldr	r2, [r9, #12]
	mov	r1, r4
	ldr	r0, [r9, #20]
	add	r9, sp, #104
	bl	memset(PLT)
	ldr	r3, [sp, #48]
	mov	r1, r9
	str	r6, [sp, #108]
	mov	r2, r4
	ldr	r6, [sp, #44]
	ldr	r0, .L66
	str	r3, [sp, #116]
	add	r3, sp, #88
	str	r3, [sp, #56]
	add	r3, sp, #80
.LPIC16:
	add	r0, pc
	str	r6, [sp, #120]
	add	r6, sp, #84
	str	r3, [sp, #124]
	str	r8, [sp, #104]
	add	r8, sp, #92
	str	r5, [sp, #112]
	strb	r10, [sp, #132]
	str	r6, [sp, #128]
	bl	GOMP_parallel_start(PLT)
	mov	r0, r9
	bl	libaroma_draw_shadow._omp_fn.0(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r3, [sp, #80]
	mov	r2, r4
	ldr	r6, [sp, #176]
	mov	r1, r8
	ldr	r5, [sp, #112]
	ldr	lr, [r3, #8]
	ldr	r3, [r3, #20]
	str	r6, [sp, #92]
	add	r6, sp, #88
	str	r6, [sp, #96]
	ldr	r6, [sp, #116]
	mla	r3, lr, r5, r3
	ldr	r0, .L66+4
	ldr	fp, [sp, #104]
	str	r6, [sp, #60]
	ldr	r6, [sp, #120]
.LPIC17:
	add	r0, pc
	str	r3, [sp, #100]
	ldr	r9, [sp, #108]
	str	r6, [sp, #72]
	ldrb	r6, [sp, #132]	@ zero_extendqisi2
	bl	GOMP_parallel_start(PLT)
	mov	r0, r8
	bl	libaroma_draw_shadow._omp_fn.1(PLT)
	bl	GOMP_parallel_end(PLT)
	ldr	r0, [sp, #76]
	ldr	r10, [sp, #92]
	cbz	r0, .L61
	str	r10, [sp]
	mov	r0, r7
	str	r4, [sp, #4]
	mov	r3, fp
	ldr	r1, [sp, #36]
	str	r6, [sp, #8]
	ldr	r2, [sp, #52]
	bl	libaroma_draw_rect(PLT)
.L61:
	ldr	r6, [sp, #36]
	movs	r4, #0
	mov	r8, #255
	ldr	r1, [sp, #80]
	str	r5, [sp, #12]
	mov	r0, r7
	rsb	r6, r9, r6
	str	r9, [sp, #8]
	str	r6, [sp, #40]
	ldr	r6, [sp, #52]
	ldr	r2, [sp, #40]
	str	r4, [sp]
	rsb	ip, r5, r6
	ldr	r6, [sp, #36]
	mov	r3, ip
	str	r4, [sp, #4]
	str	r4, [sp, #24]
	add	fp, fp, r6
	add	r6, r9, #1
	str	r6, [sp, #48]
	movs	r6, #1
	str	r6, [sp, #16]
	ldr	r6, [sp, #52]
	str	r4, [sp, #28]
	str	r8, [sp, #20]
	add	r10, r10, r6
	adds	r6, r5, #1
	str	r6, [sp, #44]
	str	ip, [sp, #32]
	bl	libaroma_draw_ex2(PLT)
	ldr	ip, [sp, #32]
	movs	r0, #1
	ldr	r6, [sp, #48]
	mov	r2, fp
	ldr	r1, [sp, #80]
	mov	r3, ip
	str	r0, [sp, #16]
	str	r5, [sp, #12]
	mov	r0, r7
	str	r6, [sp]
	str	r4, [sp, #4]
	str	r8, [sp, #20]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	r9, [sp, #8]
	bl	libaroma_draw_ex2(PLT)
	ldr	r6, [sp, #44]
	movs	r0, #1
	ldr	r1, [sp, #80]
	mov	r3, r10
	ldr	r2, [sp, #40]
	str	r0, [sp, #16]
	mov	r0, r7
	str	r5, [sp, #12]
	str	r6, [sp, #4]
	str	r4, [sp]
	str	r8, [sp, #20]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	r9, [sp, #8]
	bl	libaroma_draw_ex2(PLT)
	ldr	r6, [sp, #48]
	mov	r2, fp
	ldr	r1, [sp, #80]
	mov	r3, r10
	str	r5, [sp, #12]
	mov	r0, r7
	str	r6, [sp]
	ldr	r6, [sp, #44]
	str	r8, [sp, #20]
	str	r4, [sp, #24]
	str	r6, [sp, #4]
	movs	r6, #1
	str	r6, [sp, #16]
	str	r4, [sp, #28]
	str	r9, [sp, #8]
	bl	libaroma_draw_ex2(PLT)
	ldr	r1, [sp, #84]
	mov	r0, r7
	str	r4, [sp]
	str	r4, [sp, #4]
	ldr	r6, [r1]
	ldr	ip, [sp, #32]
	ldr	r2, [sp, #36]
	str	r6, [sp, #8]
	movs	r6, #1
	mov	r3, ip
	str	r6, [sp, #16]
	str	r5, [sp, #12]
	str	r8, [sp, #20]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r1, [sp, #84]
	mov	r3, r10
	str	r5, [sp, #4]
	mov	r0, r7
	str	r4, [sp]
	ldr	r6, [r1]
	ldr	r2, [sp, #36]
	str	r5, [sp, #12]
	str	r6, [sp, #8]
	movs	r6, #1
	str	r6, [sp, #16]
	str	r8, [sp, #20]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r5, [sp, #88]
	mov	r0, r7
	str	r4, [sp]
	str	r4, [sp, #4]
	str	r9, [sp, #8]
	mov	r1, r5
	ldr	r5, [r5, #4]
	ldr	r2, [sp, #40]
	ldr	r3, [sp, #52]
	str	r6, [sp, #16]
	str	r5, [sp, #12]
	str	r8, [sp, #20]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	ldr	r5, [sp, #88]
	mov	r2, fp
	ldr	r6, [sp, #48]
	mov	r0, r7
	str	r4, [sp, #4]
	str	r9, [sp, #8]
	mov	r1, r5
	str	r6, [sp]
	movs	r6, #1
	ldr	r5, [r5, #4]
	ldr	r3, [sp, #52]
	str	r8, [sp, #20]
	str	r6, [sp, #16]
	str	r5, [sp, #12]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	add	r0, sp, #80
	mov	r1, r4
	bl	libaroma_canvas_free_ex1(PLT)
	add	r0, sp, #84
	mov	r1, r4
	bl	libaroma_canvas_free_ex1(PLT)
	mov	r1, r4
	add	r0, sp, #88
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [sp, #60]
	bl	free(PLT)
	ldr	r0, [sp, #72]
	bl	free(PLT)
	mov	r0, r6
	add	sp, sp, #140
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L67:
	.align	2
.L66:
	.word	libaroma_draw_shadow._omp_fn.0-(.LPIC16+4)
	.word	libaroma_draw_shadow._omp_fn.1-(.LPIC17+4)
	.size	libaroma_draw_shadow, .-libaroma_draw_shadow
	.section	.text.libaroma_blur_ex,"ax",%progbits
	.align	2
	.global	libaroma_blur_ex
	.thumb
	.thumb_func
	.type	libaroma_blur_ex, %function
libaroma_blur_ex:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	fstmfdd	sp!, {d8, d9}
	sub	sp, sp, #76
	str	r2, [sp, #12]
	str	r1, [sp, #52]
	ble	.L71
	mov	r9, r3
	ldr	r3, [r0, #20]
	adds	r6, r2, #0
	mov	r7, r0
	it	ne
	movne	r6, #1
	adds	r3, r3, #0
	it	ne
	movne	r3, #1
	eor	r5, r3, #1
	str	r3, [sp, #8]
	ands	r5, r6, r5
	bne	.L71
	ldr	r0, [sp, #52]
	lsls	r1, r0, #1
	str	r1, [sp, #40]
	bl	_libaroma_blur_kernel(PLT)
	ldr	r2, [r7, #4]
	mov	r3, r5
	str	r0, [sp, #32]
	ldr	r0, [sp, #40]
	str	r2, [sp, #56]
	ldr	r8, [sp, #56]
	ldr	fp, [r7]
	ldr	r4, [sp, #40]
	add	r8, r8, r0
	ldr	r2, [sp, #8]
	add	r0, r0, fp
	str	r5, [sp]
	mov	r1, r8
	str	r0, [sp, #28]
	adds	r4, r4, #1
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #64]
	cmp	r0, #0
	beq	.L71
	str	r5, [sp]
	mov	r1, r8
	ldr	r0, [sp, #28]
	mov	r3, r5
	ldr	r2, [sp, #8]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #36]
	cmp	r0, #0
	beq	.L122
	ldr	r0, [sp, #64]
	mov	r1, r5
	mov	r2, r5
	bl	libaroma_canvas_setcolor(PLT)
	cmp	r6, #0
	bne	.L123
	mov	r1, r6
	ldr	r0, [sp, #36]
	mov	r2, r6
	bl	libaroma_canvas_setcolor(PLT)
.L74:
	ldr	r5, [sp, #8]
	cbz	r5, .L75
	ldr	r0, [sp, #28]
	movs	r1, #0
	ldr	r3, [sp, #64]
	mul	r5, r8, r0
	ldr	r0, [r3, #20]
	mov	r2, r5
	bl	memset(PLT)
	mov	r2, r5
	ldr	r5, [sp, #36]
	movs	r1, #0
	ldr	r0, [r5, #20]
	bl	memset(PLT)
.L75:
	ldr	r5, [sp, #56]
	cmp	r5, #0
	itttt	gt
	movgt	r5, #0
	strgt	r8, [sp, #60]
	strgt	r5, [sp, #48]
	movgt	r9, r7
	ble	.L81
.L89:
	ldr	r5, [sp, #52]
	ldr	r0, [sp, #48]
	ldr	r3, [r9, #8]
	ldr	r2, [sp, #64]
	add	r0, r0, r5
	ldr	r5, [sp, #48]
	ldr	r1, [r2, #8]
	mov	r2, r0
	mul	r3, r3, r5
	ldr	r5, [sp, #28]
	mul	r2, r1, r2
	cmp	r5, #0
	ble	.L87
	ldr	r5, [sp, #40]
	movs	r6, #0
	str	r2, [sp, #20]
	subs	r3, r3, r5
	lsls	r5, r2, #1
	str	r3, [sp, #24]
	subs	r3, r3, r2
	lsls	r3, r3, #1
	str	r5, [sp, #16]
	str	r3, [sp, #44]
.L88:
	ldr	r5, [sp, #44]
	mov	r8, r6
	ldr	r10, [sp, #16]
	flds	s16, .L124	@ int
	ldr	r0, [sp, #40]
	add	r10, r10, r5
	ldr	r7, [sp, #32]
	mov	r3, r10
	subs	r5, r6, r0
	fcpys	s19, s16	@ int
	fcpys	s18, s16	@ int
	mov	r6, r3
	fcpys	s17, s16	@ int
	fmrs	r10, s16	@ int
.L101:
	add	r0, r5, r10
	mov	r1, fp
	bl	libaroma_draw_limited(PLT)
	cmp	r0, #0
	bne	.L82
	ldr	r1, [sp, #12]
	fsitos	s15, s17
	cbnz	r1, .L83
	ldr	r1, [r9, #16]
	flds	s12, [r7]
	fsitos	s13, s18
	ldrh	r1, [r1, r6]
	fsitos	s14, s19
	and	lr, r1, #2016
	and	r0, r1, #63488
	lsls	r1, r1, #3
	asr	lr, lr, #3
	asrs	r0, r0, #8
	uxtb	r1, r1
	fmsr	s7, lr	@ int
	fsitos	s9, s7
	fmsr	s8, r0	@ int
	fmsr	s7, r1	@ int
	fsitos	s10, s8
	fsitos	s11, s7
	fmacs	s13, s9, s12
	fmacs	s15, s10, s12
	fmacs	s14, s11, s12
	ftosizs	s18, s13
	ftosizs	s17, s15
	ftosizs	s19, s14
.L83:
	ldr	r0, [sp, #8]
	cbz	r0, .L82
	ldr	r1, [r9, #20]
	ldr	r2, [sp, #24]
	flds	s15, [r7]
	add	r1, r1, r8
	fsitos	s16, s16
	add	r1, r1, r2
	ldrb	r1, [r1, r10]	@ zero_extendqisi2
	fmsr	s14, r1	@ int
	fsitos	s14, s14
	fmacs	s16, s14, s15
	ftosizs	s16, s16
.L82:
	add	r10, r10, #1
	adds	r7, r7, #4
	cmp	r4, r10
	add	r6, r6, #2
	bgt	.L101
	ldr	r5, [sp, #12]
	mov	r6, r8
	cbnz	r5, .L85
	fmrs	r2, s19	@ int
	ldr	r1, [sp, #64]
	usat	r0, #8, r2
	uxtb	r0, r0
	fmrs	r3, s17	@ int
	fmrs	r5, s18	@ int
	usat	r2, #8, r3
	usat	r3, #8, r5
	uxtb	r2, r2
	ldr	r5, [r1, #16]
	uxtb	r3, r3
	str	r0, [sp]
	mov	r0, r8
	ldr	r1, [sp, #48]
	bl	libaroma_dither_rgb(PLT)
	ldr	r1, [sp, #16]
	strh	r0, [r5, r1]	@ movhi
	ldr	r5, [sp, #8]
	cbz	r5, .L86
.L85:
	ldr	r3, [sp, #64]
	ldr	r5, [sp, #20]
	fmrs	r0, s16	@ int
	ldr	r3, [r3, #20]
	usat	r2, #8, r0
	strb	r2, [r3, r5]
.L86:
	ldr	r5, [sp, #20]
	adds	r6, r6, #1
	adds	r5, r5, #1
	str	r5, [sp, #20]
	ldr	r5, [sp, #16]
	adds	r5, r5, #2
	str	r5, [sp, #16]
	ldr	r5, [sp, #28]
	cmp	r6, r5
	bne	.L88
.L87:
	ldr	r5, [sp, #48]
	ldr	r0, [sp, #56]
	adds	r5, r5, #1
	cmp	r5, r0
	str	r5, [sp, #48]
	bne	.L89
	ldr	r8, [sp, #60]
.L81:
	cmp	r8, #0
	ble	.L78
	ldr	r9, [sp, #12]
	movs	r5, #0
	str	r5, [sp, #20]
.L99:
	ldr	r3, [sp, #64]
	ldr	r3, [r3, #8]
	mul	fp, r3, r5
	ldr	r5, [sp, #28]
	cmp	r5, #0
	ble	.L97
	lsl	r5, fp, #1
	ldr	r0, [sp, #52]
	movs	r7, #0
	str	fp, [sp, #12]
	str	r5, [sp, #16]
	ldr	r5, [sp, #20]
	subs	r6, r5, r0
.L98:
	flds	s16, .L124	@ int
	ldr	fp, [sp, #32]
	mov	r3, fp
	fcpys	s19, s16	@ int
	mov	fp, r7
	fcpys	s18, s16	@ int
	fcpys	s17, s16	@ int
	mov	r7, r3
	fmrs	r5, s16	@ int
.L100:
	add	r10, r6, r5
	mov	r1, r8
	mov	r0, r10
	adds	r5, r5, #1
	bl	libaroma_draw_limited(PLT)
	cmp	r0, #0
	bne	.L92
	ldr	r2, [sp, #64]
	fsitos	s12, s17
	fsitos	s14, s18
	ldr	r1, [r2, #8]
	fsitos	s13, s19
	fsitos	s15, s16
	mla	r1, r1, r10, fp
	cmp	r9, #0
	bne	.L93
	ldr	r0, [r2, #16]
	flds	s11, [r7]
	ldrh	r0, [r0, r1, lsl #1]
	and	ip, r0, #63488
	lsl	lr, r0, #3
	asr	ip, ip, #8
	uxtb	lr, lr
	and	r0, r0, #2016
	asrs	r0, r0, #3
	fmsr	s7, ip	@ int
	fsitos	s8, s7
	fmsr	s10, lr	@ int
	fmsr	s7, r0	@ int
	fsitos	s9, s10
	fsitos	s10, s7
	fmacs	s12, s8, s11
	fmacs	s13, s9, s11
	fmacs	s14, s10, s11
	ftosizs	s17, s12
	ftosizs	s19, s13
	ftosizs	s18, s14
.L93:
	ldr	r0, [sp, #8]
	cbz	r0, .L92
	ldr	r2, [r2, #20]
	flds	s14, [r7]
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	fmsr	s13, r2	@ int
	fsitos	s13, s13
	fmacs	s15, s13, s14
	ftosizs	s16, s15
.L92:
	cmp	r4, r5
	add	r7, r7, #4
	bgt	.L100
	mov	r7, fp
	cmp	r9, #0
	bne	.L95
	ldr	r3, [sp, #36]
	fmrs	r2, s19	@ int
	usat	r1, #8, r2
	fmrs	r0, s17	@ int
	uxtb	r1, r1
	usat	r2, #8, r0
	fmrs	r0, s18	@ int
	uxtb	r2, r2
	ldr	r5, [r3, #16]
	usat	r3, #8, r0
	str	r1, [sp]
	uxtb	r3, r3
	ldr	r1, [sp, #20]
	mov	r0, fp
	bl	libaroma_dither_rgb(PLT)
	ldr	r1, [sp, #16]
	strh	r0, [r5, r1]	@ movhi
	ldr	r5, [sp, #8]
	cbz	r5, .L96
.L95:
	ldr	r5, [sp, #36]
	fmrs	r0, s16	@ int
	usat	r2, #8, r0
	ldr	r3, [r5, #20]
	ldr	r5, [sp, #12]
	strb	r2, [r3, r5]
.L96:
	ldr	r5, [sp, #12]
	adds	r7, r7, #1
	adds	r5, r5, #1
	str	r5, [sp, #12]
	ldr	r5, [sp, #16]
	adds	r5, r5, #2
	str	r5, [sp, #16]
	ldr	r5, [sp, #28]
	cmp	r7, r5
	bne	.L98
.L97:
	ldr	r5, [sp, #20]
	adds	r5, r5, #1
	cmp	r5, r8
	str	r5, [sp, #20]
	bne	.L99
.L78:
	ldr	r0, [sp, #32]
	bl	free(PLT)
	add	r0, sp, #64
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [sp, #36]
.L120:
	add	sp, sp, #76
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L123:
	mov	r1, r9
	mov	r2, r5
	ldr	r0, [sp, #36]
	bl	libaroma_canvas_setcolor(PLT)
	b	.L74
.L71:
	movs	r0, #0
	add	sp, sp, #76
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L122:
	mov	r1, r0
	add	r0, sp, #64
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [sp, #36]
	b	.L120
.L125:
	.align	2
.L124:
	.word	0
	.size	libaroma_blur_ex, .-libaroma_blur_ex
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
