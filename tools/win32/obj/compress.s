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
	.file	"compress.c"
	.section	.text.compress2,"ax",%progbits
	.align	2
	.global	compress2
	.thumb
	.thumb_func
	.type	compress2, %function
compress2:
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #60
	stmia	sp, {r2, r3}
	movs	r4, #0
	mov	r6, r1
	movs	r3, #56
	ldr	r2, .L9
	ldr	r7, [r1]
	str	r0, [sp, #12]
	mov	r0, sp
	ldr	r1, [sp, #80]
.LPIC0:
	add	r2, pc
	str	r7, [sp, #16]
	str	r4, [sp, #32]
	str	r4, [sp, #36]
	str	r4, [sp, #40]
	bl	deflateInit_(PLT)
	cbz	r0, .L8
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L8:
	mov	r0, sp
	movs	r1, #4
	bl	deflate(PLT)
	cmp	r0, #1
	mov	r4, r0
	beq	.L3
	mov	r0, sp
	bl	deflateEnd(PLT)
	cmp	r4, #0
	ite	ne
	movne	r0, r4
	mvneq	r0, #4
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L3:
	ldr	r3, [sp, #20]
	mov	r0, sp
	str	r3, [r6]
	bl	deflateEnd(PLT)
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L10:
	.align	2
.L9:
	.word	.LC0-(.LPIC0+4)
	.size	compress2, .-compress2
	.section	.text.compress,"ax",%progbits
	.align	2
	.global	compress
	.thumb
	.thumb_func
	.type	compress, %function
compress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, #-1
	sub	sp, sp, #8
	str	r4, [sp]
	bl	compress2(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	compress, .-compress
	.section	.text.compressBound,"ax",%progbits
	.align	2
	.global	compressBound
	.thumb
	.thumb_func
	.type	compressBound, %function
compressBound:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #13
	add	r3, r3, r0, lsr #12
	add	r3, r3, r0, lsr #14
	add	r0, r3, r0, lsr #25
	bx	lr
	.size	compressBound, .-compressBound
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"1.2.8\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
