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
	.file	"jcinit.c"
	.section	.text.jinit_compress_master,"ax",%progbits
	.align	2
	.global	jinit_compress_master
	.thumb
	.thumb_func
	.type	jinit_compress_master, %function
jinit_compress_master:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r1, #0
	mov	r4, r0
	bl	jinit_c_master_control(PLT)
	ldr	r5, [r4, #176]
	cmp	r5, #0
	beq	.L10
.L2:
	mov	r0, r4
	bl	jinit_forward_dct(PLT)
	ldr	r3, [r4, #180]
	cbnz	r3, .L11
	ldr	r3, [r4, #228]
	mov	r0, r4
	cbnz	r3, .L12
	bl	jinit_huff_encoder(PLT)
.L4:
	ldr	r3, [r4, #168]
	cmp	r3, #1
	it	gt
	movgt	r1, #1
	bgt	.L6
	ldr	r1, [r4, #184]
	adds	r1, r1, #0
	it	ne
	movne	r1, #1
.L6:
	mov	r0, r4
	bl	jinit_c_coef_controller(PLT)
	mov	r0, r4
	movs	r1, #0
	bl	jinit_c_main_controller(PLT)
	mov	r0, r4
	bl	jinit_marker_writer(PLT)
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r3, [r4, #348]
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L12:
	bl	jinit_phuff_encoder(PLT)
	b	.L4
.L11:
	ldr	r3, [r4]
	movs	r2, #1
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L4
.L10:
	mov	r0, r4
	bl	jinit_color_converter(PLT)
	mov	r0, r4
	bl	jinit_downsampler(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	jinit_c_prep_controller(PLT)
	b	.L2
	.size	jinit_compress_master, .-jinit_compress_master
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
