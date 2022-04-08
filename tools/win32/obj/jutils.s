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
	.file	"jutils.c"
	.global	__aeabi_idiv
	.section	.text.jdiv_round_up,"ax",%progbits
	.align	2
	.global	jdiv_round_up
	.thumb
	.thumb_func
	.type	jdiv_round_up, %function
jdiv_round_up:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r0, r0, r1
	push	{r3, lr}
	subs	r0, r0, #1
	bl	__aeabi_idiv(PLT)
	pop	{r3, pc}
	.size	jdiv_round_up, .-jdiv_round_up
	.global	__aeabi_idivmod
	.section	.text.jround_up,"ax",%progbits
	.align	2
	.global	jround_up
	.thumb
	.thumb_func
	.type	jround_up, %function
jround_up:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	subs	r4, r1, #1
	add	r4, r4, r0
	mov	r0, r4
	bl	__aeabi_idivmod(PLT)
	subs	r0, r4, r1
	pop	{r4, pc}
	.size	jround_up, .-jround_up
	.section	.text.jmin,"ax",%progbits
	.align	2
	.global	jmin
	.thumb
	.thumb_func
	.type	jmin, %function
jmin:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, r1
	it	ge
	movge	r0, r1
	bx	lr
	.size	jmin, .-jmin
	.section	.text.jcopy_sample_rows,"ax",%progbits
	.align	2
	.global	jcopy_sample_rows
	.thumb
	.thumb_func
	.type	jcopy_sample_rows, %function
jcopy_sample_rows:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	r9, r0, r1, lsl #2
	ldr	r7, [sp, #32]
	add	r8, r2, r3, lsl #2
	ldr	r6, [sp, #36]
	cmp	r7, #0
	ble	.L6
	cmp	r7, #8
	ble	.L11
	sub	r10, r7, #9
	add	r5, r9, #32
	bic	r10, r10, #7
	add	r4, r8, #32
	rsb	r10, r10, r7
	sub	r10, r10, #8
.L9:
	ldr	r1, [r5, #-32]
	mov	r2, r6
	ldr	r0, [r4, #-32]
	subs	r7, r7, #8
	pld	[r5, #8]
	mov	r9, r5
	pld	[r4, #8]
	mov	r8, r4
	bl	memcpy(PLT)
	ldr	r1, [r5, #-28]
	mov	r2, r6
	ldr	r0, [r4, #-28]
	adds	r5, r5, #32
	bl	memcpy(PLT)
	ldr	r1, [r5, #-56]
	mov	r2, r6
	ldr	r0, [r4, #-24]
	adds	r4, r4, #32
	bl	memcpy(PLT)
	ldr	r1, [r5, #-52]
	mov	r2, r6
	ldr	r0, [r4, #-52]
	bl	memcpy(PLT)
	ldr	r1, [r5, #-48]
	mov	r2, r6
	ldr	r0, [r4, #-48]
	bl	memcpy(PLT)
	ldr	r1, [r5, #-44]
	mov	r2, r6
	ldr	r0, [r4, #-44]
	bl	memcpy(PLT)
	ldr	r1, [r5, #-40]
	mov	r2, r6
	ldr	r0, [r4, #-40]
	bl	memcpy(PLT)
	ldr	r0, [r4, #-36]
	mov	r2, r6
	ldr	r1, [r5, #-36]
	bl	memcpy(PLT)
	cmp	r7, r10
	bne	.L9
.L11:
	subs	r7, r7, #1
	ldr	r0, [r8], #4
	ldr	r1, [r9], #4
	mov	r2, r6
	bl	memcpy(PLT)
	cmp	r7, #0
	bgt	.L11
.L6:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	jcopy_sample_rows, .-jcopy_sample_rows
	.section	.text.jcopy_block_row,"ax",%progbits
	.align	2
	.global	jcopy_block_row
	.thumb
	.thumb_func
	.type	jcopy_block_row, %function
jcopy_block_row:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	lsls	r2, r2, #7
	mov	r0, r1
	mov	r1, r3
	b	memcpy(PLT)
	.size	jcopy_block_row, .-jcopy_block_row
	.section	.text.jzero_far,"ax",%progbits
	.align	2
	.global	jzero_far
	.thumb
	.thumb_func
	.type	jzero_far, %function
jzero_far:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r1
	movs	r1, #0
	b	memset(PLT)
	.size	jzero_far, .-jzero_far
	.global	jpeg_natural_order
	.section	.rodata.jpeg_natural_order,"a",%progbits
	.align	3
	.type	jpeg_natural_order, %object
	.size	jpeg_natural_order, 320
jpeg_natural_order:
	.word	0
	.word	1
	.word	8
	.word	16
	.word	9
	.word	2
	.word	3
	.word	10
	.word	17
	.word	24
	.word	32
	.word	25
	.word	18
	.word	11
	.word	4
	.word	5
	.word	12
	.word	19
	.word	26
	.word	33
	.word	40
	.word	48
	.word	41
	.word	34
	.word	27
	.word	20
	.word	13
	.word	6
	.word	7
	.word	14
	.word	21
	.word	28
	.word	35
	.word	42
	.word	49
	.word	56
	.word	57
	.word	50
	.word	43
	.word	36
	.word	29
	.word	22
	.word	15
	.word	23
	.word	30
	.word	37
	.word	44
	.word	51
	.word	58
	.word	59
	.word	52
	.word	45
	.word	38
	.word	31
	.word	39
	.word	46
	.word	53
	.word	60
	.word	61
	.word	54
	.word	47
	.word	55
	.word	62
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.word	63
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
