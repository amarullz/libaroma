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
	.file	"pngwio.c"
	.section	.text.png_default_write_data,"ax",%progbits
	.align	2
	.global	png_default_write_data
	.thumb
	.thumb_func
	.type	png_default_write_data, %function
png_default_write_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	cbz	r0, .L1
	mov	r5, r2
	mov	r0, r1
	ldr	r3, [r4, #428]
	movs	r1, #1
	bl	fwrite(PLT)
	cmp	r0, r5
	bne	.L8
.L1:
	pop	{r3, r4, r5, pc}
.L8:
	ldr	r1, .L9
	mov	r0, r4
.LPIC0:
	add	r1, pc
	bl	png_error(PLT)
.L10:
	.align	2
.L9:
	.word	.LC0-(.LPIC0+4)
	.size	png_default_write_data, .-png_default_write_data
	.section	.text.png_default_flush,"ax",%progbits
	.align	2
	.global	png_default_flush
	.thumb
	.thumb_func
	.type	png_default_flush, %function
png_default_flush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L11
	ldr	r0, [r0, #428]
	b	fflush(PLT)
.L11:
	bx	lr
	.size	png_default_flush, .-png_default_flush
	.section	.text.png_write_data,"ax",%progbits
	.align	2
	.global	png_write_data
	.thumb
	.thumb_func
	.type	png_write_data, %function
png_write_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #416]
	cbz	r3, .L14
	bx	r3	@ indirect register sibling call
.L14:
	ldr	r1, .L16
	push	{r4, lr}
.LPIC1:
	add	r1, pc
	bl	png_error(PLT)
.L17:
	.align	2
.L16:
	.word	.LC1-(.LPIC1+4)
	.size	png_write_data, .-png_write_data
	.section	.text.png_flush,"ax",%progbits
	.align	2
	.global	png_flush
	.thumb
	.thumb_func
	.type	png_flush, %function
png_flush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #712]
	cbz	r3, .L18
	bx	r3	@ indirect register sibling call
.L18:
	bx	lr
	.size	png_flush, .-png_flush
	.section	.text.png_set_write_fn,"ax",%progbits
	.align	2
	.global	png_set_write_fn
	.thumb
	.thumb_func
	.type	png_set_write_fn, %function
png_set_write_fn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	mov	r4, r0
	ldr	r0, .L34
.LPIC2:
	add	r0, pc
	cbz	r4, .L20
	str	r1, [r4, #428]
	cbz	r2, .L32
.L23:
	str	r2, [r4, #416]
	cbz	r3, .L33
.L24:
	ldr	r2, [r4, #420]
	str	r3, [r4, #712]
	cbz	r2, .L20
	ldr	r1, .L34+4
	movs	r3, #0
	mov	r0, r4
	str	r3, [r4, #420]
	ldr	r4, [sp], #4
.LPIC3:
	add	r1, pc
	b	png_warning(PLT)
.L20:
	ldr	r4, [sp], #4
	bx	lr
.L33:
	ldr	r3, .L34+8
	ldr	r3, [r0, r3]
	b	.L24
.L32:
	ldr	r2, .L34+12
	ldr	r2, [r0, r2]
	b	.L23
.L35:
	.align	2
.L34:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	png_default_flush(GOT)
	.word	png_default_write_data(GOT)
	.size	png_set_write_fn, .-png_set_write_fn
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Write Error\000"
.LC1:
	.ascii	"Call to NULL write function\000"
.LC2:
	.ascii	"Can't set both read_data_fn and write_data_fn in th"
	.ascii	"e same structure\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
