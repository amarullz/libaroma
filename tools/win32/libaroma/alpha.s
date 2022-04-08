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
	.file	"alpha.c"
	.section	.text.libaroma_alpha,"ax",%progbits
	.align	2
	.global	libaroma_alpha
	.thumb
	.thumb_func
	.type	libaroma_alpha, %function
libaroma_alpha:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r0
	beq	.L5
	cbz	r2, .L8
	cmp	r2, #255
	beq	.L5
	push	{r4, r5, r6, r7}
	and	r6, r1, #63488
	lsls	r7, r1, #3
	asrs	r6, r6, #8
	lsls	r5, r0, #3
	and	r1, r1, #2016
	mul	r6, r6, r2
	uxtb	r7, r7
	rsb	r3, r2, #256
	asrs	r1, r1, #3
	uxth	r3, r3
	uxtb	r5, r5
	and	r4, r0, #63488
	mul	r1, r1, r2
	asrs	r4, r4, #8
	and	r0, r0, #2016
	smulbb	r2, r2, r7
	asrs	r0, r0, #3
	mla	r4, r4, r3, r6
	mla	r2, r5, r3, r2
	bic	r4, r4, #2040
	mla	r3, r0, r3, r1
	orr	r2, r4, r2, lsr #11
	pop	{r4, r5, r6, r7}
	asrs	r0, r3, #10
	orr	r0, r2, r0, lsl #5
	uxth	r0, r0
.L8:
	bx	lr
.L5:
	mov	r0, r1
	bx	lr
	.size	libaroma_alpha, .-libaroma_alpha
	.section	.text.libaroma_alpha32,"ax",%progbits
	.align	2
	.global	libaroma_alpha32
	.thumb
	.thumb_func
	.type	libaroma_alpha32, %function
libaroma_alpha32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, r0
	mov	r3, r0
	beq	.L13
	cbz	r2, .L18
	cmp	r2, #255
	beq	.L13
	push	{r4, r5, r6, r7}
	and	r6, r1, #2016
	lsls	r7, r1, #3
	asrs	r6, r6, #3
	lsls	r5, r0, #3
	and	r1, r1, #63488
	mul	r6, r6, r2
	uxtb	r7, r7
	rsb	r0, r2, #256
	asrs	r1, r1, #8
	uxth	r0, r0
	uxtb	r5, r5
	and	r4, r3, #2016
	mul	r1, r1, r2
	asrs	r4, r4, #3
	and	r3, r3, #63488
	smulbb	r2, r2, r7
	asrs	r3, r3, #8
	mla	r4, r4, r0, r6
	mla	r2, r5, r0, r2
	bic	r4, r4, #255
	mla	r0, r3, r0, r1
	orr	r2, r4, r2, lsr #8
	pop	{r4, r5, r6, r7}
	asrs	r0, r0, #8
	orr	r2, r2, #-16777216
	orr	r0, r2, r0, lsl #16
	bx	lr
.L18:
	b	libaroma_rgb_to32(PLT)
.L13:
	mov	r0, r1
	b	libaroma_rgb_to32(PLT)
	.size	libaroma_alpha32, .-libaroma_alpha32
	.section	.text.libaroma_alpha_multi,"ax",%progbits
	.align	2
	.global	libaroma_alpha_multi
	.thumb
	.thumb_func
	.type	libaroma_alpha_multi, %function
libaroma_alpha_multi:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r0
	push	{r4, r5, r6, r7, r8, lr}
	ldrb	r4, [sp, #24]	@ zero_extendqisi2
	beq	.L23
	adds	r5, r2, r3
	adds	r5, r5, r4
	beq	.L20
	movw	r6, #765
	cmp	r5, r6
	beq	.L23
	and	lr, r1, #63488
	lsls	r5, r1, #3
	asr	lr, lr, #8
	and	r1, r1, #2016
	asrs	r1, r1, #3
	uxtb	r5, r5
	mul	lr, lr, r2
	lsls	r6, r0, #3
	and	r8, r0, #63488
	mul	r1, r1, r3
	rsb	r2, r2, #256
	uxth	ip, r2
	rsb	r7, r4, #256
	asr	r2, r8, #8
	uxth	r7, r7
	smulbb	r5, r4, r5
	uxtb	r6, r6
	rsb	r3, r3, #256
	and	r0, r0, #2016
	uxth	r3, r3
	asrs	r0, r0, #3
	mla	r2, r2, ip, lr
	mla	r4, r7, r6, r5
	bic	r2, r2, #2040
	mla	r0, r0, r3, r1
	orr	r4, r2, r4, lsr #11
	asrs	r0, r0, #10
	orr	r0, r4, r0, lsl #5
	uxth	r0, r0
	pop	{r4, r5, r6, r7, r8, pc}
.L23:
	mov	r0, r1
.L20:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	libaroma_alpha_multi, .-libaroma_alpha_multi
	.section	.text.libaroma_alphab,"ax",%progbits
	.align	2
	.global	libaroma_alphab
	.thumb
	.thumb_func
	.type	libaroma_alphab, %function
libaroma_alphab:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r1, .L27
	cmp	r1, #255
	beq	.L26
	and	r2, r0, #2016
	and	r3, r0, #63488
	asrs	r2, r2, #3
	asrs	r3, r3, #8
	lsls	r0, r0, #3
	mul	r2, r2, r1
	uxtb	r0, r0
	smulbb	r3, r3, r1
	smulbb	r1, r1, r0
	asrs	r0, r2, #10
	and	r3, r3, #63488
	orr	r0, r3, r0, lsl #5
	orr	r0, r0, r1, lsr #11
	bx	lr
.L27:
	mov	r0, r1
.L26:
	bx	lr
	.size	libaroma_alphab, .-libaroma_alphab
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
