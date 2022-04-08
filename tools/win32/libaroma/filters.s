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
	.file	"filters.c"
	.section	.text.libaroma_draw_filter_saturation,"ax",%progbits
	.align	2
	.global	libaroma_draw_filter_saturation
	.thumb
	.thumb_func
	.type	libaroma_draw_filter_saturation, %function
libaroma_draw_filter_saturation:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	and	r6, r0, #63488
	asrs	r6, r6, #8
	and	r5, r0, #2016
	asrs	r5, r5, #3
	lsls	r4, r0, #3
	mul	r3, r6, r6
	fldd	d21, .L24
	fldd	d19, .L24+8
	uxtb	r4, r4
	mul	r2, r5, r5
	fldd	d16, .L24+16
	sub	sp, sp, #8
	fmsr	s0, r3	@ int
	smulbb	r3, r4, r4
	fsitod	d0, s0
	fmsr	s13, r2	@ int
	fsitod	d20, s13
	fmsr	s15, r3	@ int
	fmuld	d0, d0, d21
	fsitod	d18, s15
	fmacd	d0, d20, d19
	fmacd	d0, d18, d16
	fsqrtd	d16, d0
	fcmpd	d16, d16
	fmstat
	bne	.L23
.L2:
	fmsr	s13, r1	@ int
	fmsr	s15, r6	@ int
	fuitod	d17, s13
	fldd	d20, .L24+24
	fsitod	d19, s15
	fcpyd	d7, d16
	fldd	d18, .L24+32
	fmuld	d17, d17, d20
	fsubd	d19, d19, d16
	fmacd	d7, d19, d17
	fcmped	d7, d18
	fmstat
	it	gt
	movgt	r3, #63488
	bgt	.L3
	fcmpzd	d7
	fmstat
	itett	pl
	ftouizdpl	s13, d7
	movmi	r3, #0
	fmrspl	r3, s13	@ int
	ubfxpl	r3, r3, #3, #5
	it	pl
	lslpl	r3, r3, #11
.L3:
	fmsr	s15, r5	@ int
	fsitod	d19, s15
	fldd	d18, .L24+32
	fcpyd	d7, d16
	fsubd	d19, d19, d16
	fmacd	d7, d19, d17
	fcmped	d7, d18
	fmstat
	it	gt
	movgt	r2, #2016
	bgt	.L5
	fcmpzd	d7
	fmstat
	itett	pl
	ftouizdpl	s13, d7
	movmi	r2, #0
	fmrspl	r2, s13	@ int
	ubfxpl	r2, r2, #2, #6
	it	pl
	lslpl	r2, r2, #5
.L5:
	fmsr	s15, r4	@ int
	fsitod	d19, s15
	fldd	d18, .L24+32
	fcpyd	d7, d16
	fsubd	d19, d19, d16
	fmacd	d7, d19, d17
	fcmped	d7, d18
	fmstat
	it	gt
	movgt	r0, #31
	bgt	.L7
	fcmpzd	d7
	fmstat
	itett	pl
	ftouizdpl	s13, d7
	movmi	r0, #0
	fmrspl	r1, s13	@ int
	ubfxpl	r0, r1, #3, #5
.L7:
	orrs	r3, r3, r2
	orrs	r0, r0, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L23:
	str	r1, [sp, #4]
	bl	sqrt(PLT)
	ldr	r1, [sp, #4]
	fcpyd	d16, d0
	b	.L2
.L25:
	.align	3
.L24:
	.word	-446676599
	.word	1070801616
	.word	962072674
	.word	1071827124
	.word	-1614907703
	.word	1069362970
	.word	269488144
	.word	1064308752
	.word	0
	.word	1081073664
	.size	libaroma_draw_filter_saturation, .-libaroma_draw_filter_saturation
	.section	.text.libaroma_draw_zshadow,"ax",%progbits
	.align	2
	.global	libaroma_draw_zshadow
	.thumb
	.thumb_func
	.type	libaroma_draw_zshadow, %function
libaroma_draw_zshadow:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	ldrb	r5, [sp, #96]	@ zero_extendqisi2
	mov	r7, r0
	mov	r8, r1
	mov	r4, r2
	mov	r9, r3
	cmp	r5, #1
	beq	.L34
	cmp	r5, #2
	beq	.L35
	cmp	r5, #3
	beq	.L36
	cmp	r5, #4
	it	ne
	movne	r0, #0
	beq	.L47
.L28:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L35:
	mov	r10, #1
	mov	fp, #3
	movs	r6, #53
	str	r6, [sp, #36]
.L27:
	mov	r0, r5
	bl	libaroma_dp(PLT)
	mov	r6, r0
	mov	r0, r5
	bl	libaroma_dp(PLT)
	str	r0, [sp, #32]
	mov	r0, fp
	bl	libaroma_dp(PLT)
	mov	r5, r0
	mov	r0, r10
	bl	libaroma_dp(PLT)
	mov	r1, r6
	mov	r10, r0
	movs	r2, #1
	mov	r0, r8
	movs	r3, #0
	bl	libaroma_blur_ex(PLT)
	str	r0, [sp, #40]
	cbz	r0, .L29
	ldr	r2, [sp, #32]
	rsb	r3, r6, r9
	ldr	r1, [r0]
	ldr	fp, [r0, #4]
	add	r3, r3, r2
	subs	r2, r4, r6
	itt	pl
	movpl	r6, #0
	strpl	r6, [sp, #32]
	bmi	.L48
.L30:
	cmp	r3, #0
	it	ge
	movge	ip, #0
	blt	.L49
.L31:
	ldr	r6, [sp, #32]
	mov	lr, #1
	str	r1, [sp, #8]
	mov	r1, r0
	ldr	r0, [sp, #36]
	str	r6, [sp]
	movs	r6, #0
	str	ip, [sp, #4]
	str	r0, [sp, #20]
	mov	r0, r7
	str	fp, [sp, #12]
	str	lr, [sp, #16]
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	mov	r1, r6
	add	r0, sp, #40
	bl	libaroma_canvas_free_ex1(PLT)
.L29:
	mov	r1, r5
	mov	r0, r8
	movs	r2, #1
	movs	r3, #0
	bl	libaroma_blur_ex(PLT)
	mov	r1, r0
	str	r0, [sp, #48]
	cmp	r0, #0
	beq	.L40
	subs	r2, r4, r5
	rsb	r9, r5, r9
	ldr	ip, [r0]
	add	r3, r9, r10
	ldr	lr, [r0, #4]
	it	pl
	movpl	r8, #0
	bmi	.L50
.L32:
	cmp	r3, #0
	it	ge
	movge	r0, #0
	blt	.L51
.L33:
	movs	r6, #0
	movs	r5, #1
	movs	r4, #30
	str	r0, [sp, #4]
	str	ip, [sp, #8]
	mov	r0, r7
	str	lr, [sp, #12]
	str	r8, [sp]
	str	r5, [sp, #16]
	str	r4, [sp, #20]
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	bl	libaroma_draw_ex2(PLT)
	add	r0, sp, #48
	mov	r1, r6
	bl	libaroma_canvas_free_ex1(PLT)
	mov	r0, r5
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L36:
	movs	r6, #56
	mov	r10, #2
	str	r6, [sp, #36]
	mov	fp, #4
	b	.L27
.L51:
	ldr	r4, [r7, #4]
	negs	r0, r3
	movs	r3, #0
	cmp	lr, r4
	it	ge
	movge	lr, r4
	b	.L33
.L50:
	ldr	r0, [r7]
	rsb	r8, r2, #0
	movs	r2, #0
	cmp	ip, r0
	it	ge
	movge	ip, r0
	b	.L32
.L47:
	movs	r6, #59
	mov	r10, #2
	str	r6, [sp, #36]
	mov	fp, #5
	b	.L27
.L49:
	ldr	r6, [r7, #4]
	rsb	ip, r3, #0
	movs	r3, #0
	cmp	fp, r6
	it	ge
	movge	fp, r6
	b	.L31
.L48:
	ldr	r6, [r7]
	negs	r2, r2
	str	r2, [sp, #32]
	movs	r2, #0
	cmp	r1, r6
	it	ge
	movge	r1, r6
	b	.L30
.L34:
	movs	r6, #50
	mov	r10, #0
	str	r6, [sp, #36]
	mov	fp, #2
	b	.L27
.L40:
	movs	r0, #1
	b	.L28
	.size	libaroma_draw_zshadow, .-libaroma_draw_zshadow
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
