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
	.file	"pngrio.c"
	.section	.text.png_default_read_data,"ax",%progbits
	.align	2
	.global	png_default_read_data
	.thumb
	.thumb_func
	.type	png_default_read_data, %function
png_default_read_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	cbz	r0, .L1
	mov	r5, r2
	mov	r0, r1
	ldr	r3, [r4, #428]
	movs	r1, #1
	bl	fread(PLT)
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
	.size	png_default_read_data, .-png_default_read_data
	.section	.text.png_read_data,"ax",%progbits
	.align	2
	.global	png_read_data
	.thumb
	.thumb_func
	.type	png_read_data, %function
png_read_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0, #420]
	cbz	r3, .L12
	mov	r5, r2
	blx	r3
	ldr	r3, [r4, #1144]
	add	r5, r5, r3
	str	r5, [r4, #1144]
	pop	{r3, r4, r5, pc}
.L12:
	ldr	r1, .L15
.LPIC1:
	add	r1, pc
	bl	png_error(PLT)
.L16:
	.align	2
.L15:
	.word	.LC1-(.LPIC1+4)
	.size	png_read_data, .-png_read_data
	.section	.text.png_seek_data,"ax",%progbits
	.align	2
	.global	png_seek_data
	.thumb
	.thumb_func
	.type	png_seek_data, %function
png_seek_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #424]
	cbz	r3, .L18
	bx	r3	@ indirect register sibling call
.L18:
	ldr	r1, .L20
	push	{r4, lr}
.LPIC2:
	add	r1, pc
	bl	png_error(PLT)
.L21:
	.align	2
.L20:
	.word	.LC2-(.LPIC2+4)
	.size	png_seek_data, .-png_seek_data
	.section	.text.png_set_read_fn,"ax",%progbits
	.align	2
	.global	png_set_read_fn
	.thumb
	.thumb_func
	.type	png_set_read_fn, %function
png_set_read_fn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L35
	push	{r4, lr}
	mov	r4, r0
.LPIC3:
	add	r3, pc
	cbz	r0, .L22
	str	r1, [r0, #428]
	cbz	r2, .L34
.L24:
	ldr	r3, [r4, #416]
	str	r2, [r4, #420]
	cbz	r3, .L25
	ldr	r1, .L35+4
	movs	r3, #0
	mov	r0, r4
	str	r3, [r4, #416]
.LPIC4:
	add	r1, pc
	bl	png_warning(PLT)
.L25:
	movs	r3, #0
	str	r3, [r4, #712]
.L22:
	pop	{r4, pc}
.L34:
	ldr	r2, .L35+8
	ldr	r2, [r3, r2]
	b	.L24
.L36:
	.align	2
.L35:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	png_default_read_data(GOT)
	.size	png_set_read_fn, .-png_set_read_fn
	.section	.text.png_set_seek_fn,"ax",%progbits
	.align	2
	.global	png_set_seek_fn
	.thumb
	.thumb_func
	.type	png_set_seek_fn, %function
png_set_seek_fn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L37
	str	r1, [r0, #424]
.L37:
	bx	lr
	.size	png_set_seek_fn, .-png_set_seek_fn
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Read Error\000"
	.space	1
.LC1:
	.ascii	"Call to NULL read function\000"
	.space	1
.LC2:
	.ascii	"Call to NULL seek function\000"
	.space	1
.LC3:
	.ascii	"Can't set both read_data_fn and write_data_fn in th"
	.ascii	"e same structure\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
