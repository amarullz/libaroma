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
	.file	"jdatadst.c"
	.section	.text.init_destination,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	init_destination, %function
init_destination:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r1, #1
	ldr	r5, [r0, #4]
	mov	r2, #4096
	ldr	r4, [r0, #24]
	ldr	r3, [r5]
	blx	r3
	mov	r3, #4096
	str	r0, [r4, #24]
	stmia	r4, {r0, r3}
	pop	{r3, r4, r5, pc}
	.size	init_destination, .-init_destination
	.section	.text.empty_output_buffer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	empty_output_buffer, %function
empty_output_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r1, #1
	ldr	r4, [r0, #24]
	mov	r5, r0
	mov	r2, #4096
	ldr	r0, [r4, #24]
	ldr	r3, [r4, #20]
	bl	fwrite(PLT)
	cmp	r0, #4096
	beq	.L4
	ldr	r3, [r5]
	movs	r2, #37
	mov	r0, r5
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L4:
	ldr	r3, [r4, #24]
	mov	r2, #4096
	str	r2, [r4, #4]
	movs	r0, #1
	str	r3, [r4]
	pop	{r3, r4, r5, pc}
	.size	empty_output_buffer, .-empty_output_buffer
	.section	.text.term_destination,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	term_destination, %function
term_destination:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	ldr	r4, [r0, #24]
	ldr	r2, [r4, #4]
	rsbs	r6, r2, #4096
	bne	.L16
.L12:
	ldr	r0, [r4, #20]
	bl	fflush(PLT)
	ldr	r0, [r4, #20]
	bl	ferror(PLT)
	cbnz	r0, .L17
	pop	{r4, r5, r6, pc}
.L17:
	ldr	r3, [r5]
	movs	r2, #37
	mov	r0, r5
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L16:
	ldr	r0, [r4, #24]
	movs	r1, #1
	mov	r2, r6
	ldr	r3, [r4, #20]
	bl	fwrite(PLT)
	cmp	r0, r6
	beq	.L12
	ldr	r3, [r5]
	movs	r2, #37
	mov	r0, r5
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L12
	.size	term_destination, .-term_destination
	.section	.text.jpeg_stdio_dest,"ax",%progbits
	.align	2
	.global	jpeg_stdio_dest
	.thumb
	.thumb_func
	.type	jpeg_stdio_dest, %function
jpeg_stdio_dest:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r5, r1
	cbz	r3, .L21
.L19:
	ldr	r0, .L22
	ldr	r1, .L22+4
	ldr	r2, .L22+8
.LPIC0:
	add	r0, pc
	str	r5, [r3, #20]
.LPIC1:
	add	r1, pc
	str	r0, [r3, #8]
.LPIC2:
	add	r2, pc
	str	r1, [r3, #12]
	str	r2, [r3, #16]
	pop	{r4, r5, r6, pc}
.L21:
	ldr	r6, [r0, #4]
	mov	r1, r3
	movs	r2, #28
	ldr	r3, [r6]
	blx	r3
	mov	r3, r0
	str	r0, [r4, #24]
	b	.L19
.L23:
	.align	2
.L22:
	.word	init_destination-(.LPIC0+4)
	.word	empty_output_buffer-(.LPIC1+4)
	.word	term_destination-(.LPIC2+4)
	.size	jpeg_stdio_dest, .-jpeg_stdio_dest
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
