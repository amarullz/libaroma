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
	.file	"adler32.c"
	.section	.text.adler32,"ax",%progbits
	.align	2
	.global	adler32
	.thumb
	.thumb_func
	.type	adler32, %function
adler32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #1
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r3, r1
	lsr	r6, r0, #16
	uxth	r0, r0
	beq	.L37
	cmp	r1, #0
	beq	.L23
	cmp	r2, #15
	bhi	.L38
	cbz	r2, .L9
	add	r2, r2, r1
.L10:
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	cmp	r3, r2
	add	r0, r0, r1
	add	r6, r6, r0
	bne	.L10
.L9:
	movw	r3, #65520
	cmp	r0, r3
	movw	r3, #32881
	movt	r3, 32775
	it	hi
	subhi	r0, r0, #65280
	umull	r1, r3, r3, r6
	it	hi
	subhi	r0, r0, #241
	lsrs	r3, r3, #15
	rsb	r2, r3, r3, lsl #12
	add	r3, r3, r2, lsl #4
	subs	r6, r6, r3
	orr	r0, r0, r6, lsl #16
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L38:
	movw	r8, #5551
	cmp	r2, r8
	itt	hi
	movwhi	ip, #32881
	movthi	ip, 32775
	bls	.L8
.L15:
	sub	r2, r2, #5536
	add	lr, r3, #5536
	subs	r2, r2, #16
	add	r7, lr, #16
.L13:
	ldrb	r1, [r3]	@ zero_extendqisi2
	adds	r3, r3, #16
	ldrb	r5, [r3, #-15]	@ zero_extendqisi2
	ldrb	r4, [r3, #-14]	@ zero_extendqisi2
	ldrb	r9, [r3, #-13]	@ zero_extendqisi2
	add	r0, r0, r1
	add	r5, r5, r0
	ldrb	r1, [r3, #-12]	@ zero_extendqisi2
	add	r0, r0, r5
	add	r4, r4, r5
	ldrb	r5, [r3, #-11]	@ zero_extendqisi2
	add	r10, r0, r4
	add	r4, r4, r9
	ldrb	r0, [r3, #-10]	@ zero_extendqisi2
	add	r1, r1, r4
	add	r10, r10, r4
	ldrb	r4, [r3, #-9]	@ zero_extendqisi2
	add	r10, r10, r1
	add	r1, r1, r5
	ldrb	r5, [r3, #-8]	@ zero_extendqisi2
	add	r0, r0, r1
	add	r10, r10, r1
	ldrb	r1, [r3, #-7]	@ zero_extendqisi2
	add	r10, r10, r0
	add	r0, r0, r4
	ldrb	r4, [r3, #-6]	@ zero_extendqisi2
	add	r5, r5, r0
	add	r10, r10, r0
	ldrb	r0, [r3, #-5]	@ zero_extendqisi2
	add	r10, r10, r5
	add	r5, r5, r1
	ldrb	r1, [r3, #-4]	@ zero_extendqisi2
	ldrb	r9, [r3, #-3]	@ zero_extendqisi2
	add	r4, r4, r5
	add	r10, r10, r5
	add	r5, r10, r4
	add	r4, r4, r0
	ldrb	r0, [r3, #-2]	@ zero_extendqisi2
	add	r1, r1, r4
	add	r5, r5, r4
	ldrb	r4, [r3, #-1]	@ zero_extendqisi2
	add	r5, r5, r1
	add	r1, r1, r9
	add	r0, r0, r1
	add	r5, r5, r1
	adds	r1, r5, r0
	cmp	r3, r7
	add	r0, r0, r4
	add	r1, r1, r0
	add	r6, r6, r1
	bne	.L13
	umull	r3, r4, ip, r0
	cmp	r2, r8
	add	r3, lr, #16
	umull	r5, r1, ip, r6
	lsr	r4, r4, #15
	rsb	r5, r4, r4, lsl #12
	lsr	r1, r1, #15
	add	r4, r4, r5, lsl #4
	rsb	r5, r1, r1, lsl #12
	sub	r0, r0, r4
	add	r1, r1, r5, lsl #4
	sub	r6, r6, r1
	bhi	.L15
	cbnz	r2, .L39
	orr	r0, r0, r6, lsl #16
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L37:
	ldrb	r2, [r1]	@ zero_extendqisi2
	movw	r3, #65520
	add	r0, r0, r2
	cmp	r0, r3
	movw	r3, #65520
	itt	hi
	subhi	r0, r0, #65280
	subhi	r0, r0, #241
	add	r6, r6, r0
	cmp	r6, r3
	itt	hi
	subhi	r6, r6, #65280
	subhi	r6, r6, #241
	orr	r0, r0, r6, lsl #16
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L39:
	cmp	r2, #15
	bls	.L17
.L8:
	mov	r1, r2
	mov	r4, r3
.L19:
	ldrb	lr, [r4]	@ zero_extendqisi2
	subs	r1, r1, #16
	ldrb	r7, [r4, #1]	@ zero_extendqisi2
	cmp	r1, #15
	ldrb	r5, [r4, #2]	@ zero_extendqisi2
	add	r4, r4, #16
	add	r0, r0, lr
	ldrb	r9, [r4, #-13]	@ zero_extendqisi2
	add	r7, r7, r0
	ldrb	r8, [r4, #-12]	@ zero_extendqisi2
	add	r0, r0, r7
	add	r5, r5, r7
	ldrb	ip, [r4, #-11]	@ zero_extendqisi2
	add	lr, r0, r5
	ldrb	r7, [r4, #-10]	@ zero_extendqisi2
	add	r5, r5, r9
	add	r0, r5, r8
	add	lr, lr, r5
	ldrb	r5, [r4, #-9]	@ zero_extendqisi2
	add	lr, lr, r0
	ldrb	r8, [r4, #-8]	@ zero_extendqisi2
	add	r0, r0, ip
	add	r7, r7, r0
	add	lr, lr, r0
	ldrb	r0, [r4, #-7]	@ zero_extendqisi2
	add	r5, r5, r7
	ldrb	ip, [r4, #-6]	@ zero_extendqisi2
	add	lr, lr, r7
	add	lr, lr, r5
	ldrb	r7, [r4, #-5]	@ zero_extendqisi2
	add	r5, r5, r8
	add	r0, r0, r5
	add	lr, lr, r5
	ldrb	r5, [r4, #-4]	@ zero_extendqisi2
	add	lr, lr, r0
	add	r0, r0, ip
	ldrb	ip, [r4, #-3]	@ zero_extendqisi2
	add	r7, r7, r0
	add	lr, lr, r0
	ldrb	r0, [r4, #-2]	@ zero_extendqisi2
	add	r5, r5, r7
	add	lr, lr, r7
	ldrb	r7, [r4, #-1]	@ zero_extendqisi2
	add	lr, lr, r5
	add	r5, r5, ip
	add	r0, r0, r5
	add	lr, lr, r5
	add	r5, lr, r0
	add	r0, r0, r7
	add	r5, r5, r0
	add	r6, r6, r5
	bhi	.L19
	sub	r1, r2, #16
	sub	r5, r2, #17
	lsrs	r1, r1, #4
	lsls	r2, r2, #28
	add	r4, r1, #1
	sub	r1, r5, r1, lsl #4
	add	r3, r3, r4, lsl #4
	beq	.L21
.L20:
	adds	r1, r1, #1
	add	r1, r1, r3
.L22:
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r3, r1
	add	r0, r0, r2
	add	r6, r6, r0
	bne	.L22
.L21:
	movw	r3, #32881
	movt	r3, 32775
	umull	r1, r2, r3, r0
	umull	r5, r3, r3, r6
	lsrs	r2, r2, #15
	rsb	r1, r2, r2, lsl #12
	lsrs	r3, r3, #15
	add	r2, r2, r1, lsl #4
	rsb	r1, r3, r3, lsl #12
	subs	r0, r0, r2
	add	r3, r3, r1, lsl #4
	subs	r6, r6, r3
	orr	r0, r0, r6, lsl #16
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L23:
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L17:
	subs	r1, r2, #1
	b	.L20
	.size	adler32, .-adler32
	.section	.text.adler32_combine,"ax",%progbits
	.align	2
	.global	adler32_combine
	.thumb
	.thumb_func
	.type	adler32_combine, %function
adler32_combine:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	blt	.L45
	push	{r4, r5, r6, r7}
	movw	r5, #32881
	movt	r5, 32775
	asrs	r3, r2, #31
	smull	r7, r4, r5, r2
	uxth	r6, r0
	uxtah	r7, r6, r1
	add	r4, r4, r2
	rsb	r4, r3, r4, asr #15
	rsb	r3, r4, r4, lsl #12
	add	r4, r4, r3, lsl #4
	subs	r4, r2, r4
	mul	r6, r4, r6
	rsb	r4, r4, r0, lsr #16
	movw	r0, #65520
	add	r1, r4, r1, lsr #16
	umull	r3, r2, r5, r6
	lsrs	r2, r2, #15
	rsb	r3, r2, r2, lsl #12
	add	r2, r2, r3, lsl #4
	subs	r6, r6, r2
	add	r1, r1, r6
	add	r3, r1, #65280
	adds	r3, r3, #241
	cbz	r7, .L42
	subs	r0, r7, #1
	movw	r2, #65520
	cmp	r0, r2
	itt	hi
	subhi	r0, r7, #65280
	subhi	r0, r0, #242
.L42:
	movw	r5, #65505
	movw	r2, #65520
	movt	r5, 1
	cmp	r3, r5
	pop	{r4, r5, r6, r7}
	itt	hi
	subhi	r3, r1, #65280
	subhi	r3, r3, #241
	cmp	r3, r2
	itt	hi
	subhi	r3, r3, #65280
	subhi	r3, r3, #241
	orr	r0, r0, r3, lsl #16
	bx	lr
.L45:
	mov	r0, #-1
	bx	lr
	.size	adler32_combine, .-adler32_combine
	.section	.text.adler32_combine64,"ax",%progbits
	.align	2
	.global	adler32_combine64
	.thumb
	.thumb_func
	.type	adler32_combine64, %function
adler32_combine64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r2, #0
	blt	.L54
	push	{r4, r5, r6, r7}
	movw	r5, #32881
	movt	r5, 32775
	asrs	r3, r2, #31
	smull	r7, r4, r5, r2
	uxth	r6, r0
	uxtah	r7, r6, r1
	add	r4, r4, r2
	rsb	r4, r3, r4, asr #15
	rsb	r3, r4, r4, lsl #12
	add	r4, r4, r3, lsl #4
	subs	r4, r2, r4
	mul	r6, r4, r6
	rsb	r4, r4, r0, lsr #16
	movw	r0, #65520
	add	r1, r4, r1, lsr #16
	umull	r3, r2, r5, r6
	lsrs	r2, r2, #15
	rsb	r3, r2, r2, lsl #12
	add	r2, r2, r3, lsl #4
	subs	r6, r6, r2
	add	r1, r1, r6
	add	r3, r1, #65280
	adds	r3, r3, #241
	cbz	r7, .L51
	subs	r0, r7, #1
	movw	r2, #65520
	cmp	r0, r2
	itt	hi
	subhi	r0, r7, #65280
	subhi	r0, r0, #242
.L51:
	movw	r5, #65505
	movw	r2, #65520
	movt	r5, 1
	cmp	r3, r5
	pop	{r4, r5, r6, r7}
	itt	hi
	subhi	r3, r1, #65280
	subhi	r3, r3, #241
	cmp	r3, r2
	itt	hi
	subhi	r3, r3, #65280
	subhi	r3, r3, #241
	orr	r0, r0, r3, lsl #16
	bx	lr
.L54:
	mov	r0, #-1
	bx	lr
	.size	adler32_combine64, .-adler32_combine64
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
