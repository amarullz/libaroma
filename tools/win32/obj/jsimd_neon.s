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
	.file	"jsimd_neon.c"
	.section	.text.jsimd_ycc_rgba8888_convert,"ax",%progbits
	.align	2
	.global	jsimd_ycc_rgba8888_convert
	.thumb
	.thumb_func
	.type	jsimd_ycc_rgba8888_convert, %function
jsimd_ycc_rgba8888_convert:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #120]
	b	jsimd_ycc_rgba8888_convert_neon(PLT)
	.size	jsimd_ycc_rgba8888_convert, .-jsimd_ycc_rgba8888_convert
	.section	.text.jsimd_ycc_rgb565_convert,"ax",%progbits
	.align	2
	.global	jsimd_ycc_rgb565_convert
	.thumb
	.thumb_func
	.type	jsimd_ycc_rgb565_convert, %function
jsimd_ycc_rgb565_convert:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #120]
	b	jsimd_ycc_rgb565_convert_neon(PLT)
	.size	jsimd_ycc_rgb565_convert, .-jsimd_ycc_rgb565_convert
	.section	.text.jsimd_idct_ifast,"ax",%progbits
	.align	2
	.global	jsimd_idct_ifast
	.thumb
	.thumb_func
	.type	jsimd_idct_ifast, %function
jsimd_idct_ifast:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r1, #80]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [sp]
	b	jsimd_idct_ifast_neon(PLT)
	.size	jsimd_idct_ifast, .-jsimd_idct_ifast
	.section	.text.jsimd_idct_2x2,"ax",%progbits
	.align	2
	.global	jsimd_idct_2x2
	.thumb
	.thumb_func
	.type	jsimd_idct_2x2, %function
jsimd_idct_2x2:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r1, #80]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [sp]
	b	jsimd_idct_2x2_neon(PLT)
	.size	jsimd_idct_2x2, .-jsimd_idct_2x2
	.section	.text.jsimd_idct_4x4,"ax",%progbits
	.align	2
	.global	jsimd_idct_4x4
	.thumb
	.thumb_func
	.type	jsimd_idct_4x4, %function
jsimd_idct_4x4:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r1, #80]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [sp]
	b	jsimd_idct_4x4_neon(PLT)
	.size	jsimd_idct_4x4, .-jsimd_idct_4x4
	.section	.text.cap_neon_idct_2x2,"ax",%progbits
	.align	2
	.global	cap_neon_idct_2x2
	.thumb
	.thumb_func
	.type	cap_neon_idct_2x2, %function
cap_neon_idct_2x2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	bx	lr
	.size	cap_neon_idct_2x2, .-cap_neon_idct_2x2
	.section	.text.cap_neon_idct_4x4,"ax",%progbits
	.align	2
	.global	cap_neon_idct_4x4
	.thumb
	.thumb_func
	.type	cap_neon_idct_4x4, %function
cap_neon_idct_4x4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	bx	lr
	.size	cap_neon_idct_4x4, .-cap_neon_idct_4x4
	.section	.text.cap_neon_idct_ifast,"ax",%progbits
	.align	2
	.global	cap_neon_idct_ifast
	.thumb
	.thumb_func
	.type	cap_neon_idct_ifast, %function
cap_neon_idct_ifast:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	bx	lr
	.size	cap_neon_idct_ifast, .-cap_neon_idct_ifast
	.section	.text.cap_neon_ycc_rgb,"ax",%progbits
	.align	2
	.global	cap_neon_ycc_rgb
	.thumb
	.thumb_func
	.type	cap_neon_ycc_rgb, %function
cap_neon_ycc_rgb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	bx	lr
	.size	cap_neon_ycc_rgb, .-cap_neon_ycc_rgb
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
