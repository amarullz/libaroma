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
	.file	"jdatasrc.c"
	.section	.text.init_source,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	init_source, %function
init_source:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	movs	r2, #1
	str	r2, [r3, #48]
	bx	lr
	.size	init_source, .-init_source
	.section	.text.term_source,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	term_source, %function
term_source:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	term_source, .-term_source
	.section	.text.fill_input_buffer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fill_input_buffer, %function
fill_input_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r1, #1
	ldr	r4, [r0, #24]
	mov	r5, r0
	mov	r2, #4096
	ldr	r3, [r4, #40]
	ldr	r0, [r4, #44]
	bl	fread(PLT)
	mov	r3, r0
	cbnz	r0, .L4
	ldr	r3, [r4, #48]
	cbnz	r3, .L11
.L5:
	ldr	r3, [r5]
	movs	r2, #120
	mov	r0, r5
	mov	r1, #-1
	str	r2, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r2, [r4, #44]
	movs	r0, #255
	movs	r3, #2
	movs	r1, #217
	strb	r0, [r2]
	ldr	r2, [r4, #44]
	strb	r1, [r2, #1]
.L4:
	ldr	r2, [r4, #44]
	movs	r1, #0
	str	r3, [r4, #8]
	movs	r0, #1
	str	r1, [r4, #48]
	str	r2, [r4]
	pop	{r3, r4, r5, pc}
.L11:
	ldr	r3, [r5]
	movs	r2, #42
	mov	r0, r5
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L5
	.size	fill_input_buffer, .-fill_input_buffer
	.section	.text.skip_input_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	skip_input_data, %function
skip_input_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	subs	r5, r1, #0
	mov	r6, r0
	ldr	r7, [r0, #24]
	ble	.L12
	ldr	lr, [r7, #8]
	cmp	r5, lr
	ble	.L14
	mov	r4, r7
	mov	r10, #120
	mov	r9, #255
	mov	r8, #217
	b	.L17
.L16:
	ldr	r3, [r6]
	mov	r0, r6
	mov	r1, #-1
	str	r10, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r4, #44]
	movs	r0, #2
	strb	r9, [r3]
	ldr	r3, [r4, #44]
	strb	r8, [r3, #1]
.L15:
	str	r0, [r4, #8]
	movs	r2, #0
	ldr	lr, [r7, #8]
	ldr	r3, [r4, #44]
	str	r2, [r4, #48]
	cmp	lr, r5
	str	r3, [r4]
	bge	.L14
	ldr	r4, [r6, #24]
.L17:
	ldr	r0, [r4, #44]
	movs	r1, #1
	mov	r2, #4096
	ldr	r3, [r4, #40]
	rsb	r5, lr, r5
	bl	fread(PLT)
	cmp	r0, #0
	bne	.L15
	ldr	r3, [r4, #48]
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r6]
	movs	r2, #42
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L16
.L14:
	ldr	r3, [r7]
	rsb	r2, r5, lr
	str	r2, [r7, #8]
	add	r5, r5, r3
	str	r5, [r7]
.L12:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	skip_input_data, .-skip_input_data
	.section	.text.jpeg_stdio_src,"ax",%progbits
	.align	2
	.global	jpeg_stdio_src
	.thumb
	.thumb_func
	.type	jpeg_stdio_src, %function
jpeg_stdio_src:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	ldr	r4, [r0, #24]
	mov	r7, r1
	ldr	r5, .L26
.LPIC3:
	add	r5, pc
	cbz	r4, .L25
.L23:
	ldr	r1, .L26+4
	movs	r3, #0
	ldr	r6, .L26+8
	ldr	r0, .L26+12
	ldr	r2, .L26+16
.LPIC2:
	add	r1, pc
	str	r1, [r4, #24]
.LPIC0:
	add	r6, pc
.LPIC1:
	add	r0, pc
	ldr	r1, .L26+20
	str	r6, [r4, #16]
	str	r0, [r4, #20]
	ldr	r2, [r5, r2]
.LPIC4:
	add	r1, pc
	str	r7, [r4, #40]
	str	r1, [r4, #32]
	str	r2, [r4, #28]
	str	r3, [r4, #8]
	str	r3, [r4]
	pop	{r4, r5, r6, r7, r8, pc}
.L25:
	ldr	r3, [r0, #4]
	mov	r1, r4
	movs	r2, #52
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r6, #4]
	mov	r8, r0
	mov	r1, r4
	mov	r0, r6
	str	r8, [r6, #24]
	mov	r2, #4096
	ldr	r3, [r3]
	blx	r3
	ldr	r4, [r6, #24]
	str	r0, [r8, #44]
	b	.L23
.L27:
	.align	2
.L26:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	skip_input_data-(.LPIC2+4)
	.word	init_source-(.LPIC0+4)
	.word	fill_input_buffer-(.LPIC1+4)
	.word	jpeg_resync_to_restart(GOT)
	.word	term_source-(.LPIC4+4)
	.size	jpeg_stdio_src, .-jpeg_stdio_src
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
