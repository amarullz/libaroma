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
	.file	"uncompr.c"
	.section	.text.uncompress,"ax",%progbits
	.align	2
	.global	uncompress
	.thumb
	.thumb_func
	.type	uncompress, %function
uncompress:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r1
	ldr	r7, [r1]
	sub	sp, sp, #60
	movs	r4, #0
	ldr	r1, .L11
	str	r2, [sp]
	movs	r2, #56
	str	r0, [sp, #12]
	mov	r0, sp
.LPIC0:
	add	r1, pc
	str	r3, [sp, #4]
	str	r7, [sp, #16]
	str	r4, [sp, #32]
	str	r4, [sp, #36]
	bl	inflateInit_(PLT)
	cbz	r0, .L10
.L2:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L10:
	mov	r0, sp
	movs	r1, #4
	bl	inflate(PLT)
	cmp	r0, #1
	mov	r4, r0
	beq	.L3
	mov	r0, sp
	bl	inflateEnd(PLT)
	cmp	r4, #2
	beq	.L5
	adds	r3, r4, #5
	it	ne
	movne	r0, r4
	bne	.L2
	ldr	r3, [sp, #4]
	cmp	r3, #0
	ite	eq
	mvneq	r0, #2
	mvnne	r0, #4
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L3:
	ldr	r3, [sp, #20]
	mov	r0, sp
	str	r3, [r6]
	bl	inflateEnd(PLT)
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L5:
	mvn	r0, #2
	b	.L2
.L12:
	.align	2
.L11:
	.word	.LC0-(.LPIC0+4)
	.size	uncompress, .-uncompress
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"1.2.8\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
