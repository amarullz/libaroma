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
	.file	"arm_init.c"
	.section	.text.png_init_filter_functions_neon,"ax",%progbits
	.align	2
	.global	png_init_filter_functions_neon
	.thumb
	.thumb_func
	.type	png_init_filter_functions_neon, %function
png_init_filter_functions_neon:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L9
	cmp	r1, #3
	ldr	r2, .L9+4
	push	{r4}
.LPIC0:
	add	r3, pc
	ldr	r2, [r3, r2]
	str	r2, [r0, #1052]
	beq	.L7
	cmp	r1, #4
	beq	.L8
	ldr	r4, [sp], #4
	bx	lr
.L8:
	ldr	r2, .L9+8
	ldr	r4, .L9+12
	ldr	r1, .L9+16
.L5:
	ldr	r2, [r3, r2]
	str	r2, [r0, #1048]
	ldr	r2, [r3, r4]
	ldr	r4, [sp], #4
	str	r2, [r0, #1056]
	ldr	r3, [r3, r1]
	str	r3, [r0, #1060]
	bx	lr
.L7:
	ldr	r2, .L9+20
	ldr	r4, .L9+24
	ldr	r1, .L9+28
	b	.L5
.L10:
	.align	2
.L9:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	png_read_filter_row_up_neon(GOT)
	.word	png_read_filter_row_sub4_neon(GOT)
	.word	png_read_filter_row_avg4_neon(GOT)
	.word	png_read_filter_row_paeth4_neon(GOT)
	.word	png_read_filter_row_sub3_neon(GOT)
	.word	png_read_filter_row_avg3_neon(GOT)
	.word	png_read_filter_row_paeth3_neon(GOT)
	.size	png_init_filter_functions_neon, .-png_init_filter_functions_neon
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
