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
	.file	"pngget.c"
	.section	.text.png_get_valid,"ax",%progbits
	.align	2
	.global	png_get_valid
	.thumb
	.thumb_func
	.type	png_get_valid, %function
png_get_valid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ittet	ne
	movne	r0, #1
	ldrne	r0, [r1, #8]
	moveq	r0, #0
	andne	r0, r0, r2
	bx	lr
	.size	png_get_valid, .-png_get_valid
	.section	.text.png_get_rowbytes,"ax",%progbits
	.align	2
	.global	png_get_rowbytes
	.thumb
	.thumb_func
	.type	png_get_rowbytes, %function
png_get_rowbytes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	ldrne	r0, [r1, #12]
	bx	lr
	.size	png_get_rowbytes, .-png_get_rowbytes
	.section	.text.png_get_rows,"ax",%progbits
	.align	2
	.global	png_get_rows
	.thumb
	.thumb_func
	.type	png_get_rows, %function
png_get_rows:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	ldrne	r0, [r1, #264]
	bx	lr
	.size	png_get_rows, .-png_get_rows
	.section	.text.png_get_image_width,"ax",%progbits
	.align	2
	.global	png_get_image_width
	.thumb
	.thumb_func
	.type	png_get_image_width, %function
png_get_image_width:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	ldrne	r0, [r1]
	bx	lr
	.size	png_get_image_width, .-png_get_image_width
	.section	.text.png_get_image_height,"ax",%progbits
	.align	2
	.global	png_get_image_height
	.thumb
	.thumb_func
	.type	png_get_image_height, %function
png_get_image_height:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	ldrne	r0, [r1, #4]
	bx	lr
	.size	png_get_image_height, .-png_get_image_height
	.section	.text.png_get_bit_depth,"ax",%progbits
	.align	2
	.global	png_get_bit_depth
	.thumb
	.thumb_func
	.type	png_get_bit_depth, %function
png_get_bit_depth:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	ldrbne	r0, [r1, #24]	@ zero_extendqisi2
	bx	lr
	.size	png_get_bit_depth, .-png_get_bit_depth
	.section	.text.png_get_color_type,"ax",%progbits
	.align	2
	.global	png_get_color_type
	.thumb
	.thumb_func
	.type	png_get_color_type, %function
png_get_color_type:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	ldrbne	r0, [r1, #25]	@ zero_extendqisi2
	bx	lr
	.size	png_get_color_type, .-png_get_color_type
	.section	.text.png_get_filter_type,"ax",%progbits
	.align	2
	.global	png_get_filter_type
	.thumb
	.thumb_func
	.type	png_get_filter_type, %function
png_get_filter_type:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	ldrbne	r0, [r1, #27]	@ zero_extendqisi2
	bx	lr
	.size	png_get_filter_type, .-png_get_filter_type
	.section	.text.png_get_interlace_type,"ax",%progbits
	.align	2
	.global	png_get_interlace_type
	.thumb
	.thumb_func
	.type	png_get_interlace_type, %function
png_get_interlace_type:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	ldrbne	r0, [r1, #28]	@ zero_extendqisi2
	bx	lr
	.size	png_get_interlace_type, .-png_get_interlace_type
	.section	.text.png_get_compression_type,"ax",%progbits
	.align	2
	.global	png_get_compression_type
	.thumb
	.thumb_func
	.type	png_get_compression_type, %function
png_get_compression_type:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	ldrbne	r0, [r1, #26]	@ zero_extendqisi2
	bx	lr
	.size	png_get_compression_type, .-png_get_compression_type
	.section	.text.png_get_x_pixels_per_meter,"ax",%progbits
	.align	2
	.global	png_get_x_pixels_per_meter
	.thumb
	.thumb_func
	.type	png_get_x_pixels_per_meter, %function
png_get_x_pixels_per_meter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L32
	ldr	r0, [r1, #8]
	ands	r0, r0, #128
	beq	.L32
	ldrb	r3, [r1, #200]	@ zero_extendqisi2
	cmp	r3, #1
	it	ne
	movne	r0, #0
	beq	.L39
.L32:
	bx	lr
.L39:
	ldr	r0, [r1, #192]
	bx	lr
	.size	png_get_x_pixels_per_meter, .-png_get_x_pixels_per_meter
	.section	.text.png_get_y_pixels_per_meter,"ax",%progbits
	.align	2
	.global	png_get_y_pixels_per_meter
	.thumb
	.thumb_func
	.type	png_get_y_pixels_per_meter, %function
png_get_y_pixels_per_meter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L41
	ldr	r0, [r1, #8]
	ands	r0, r0, #128
	beq	.L41
	ldrb	r3, [r1, #200]	@ zero_extendqisi2
	cmp	r3, #1
	it	ne
	movne	r0, #0
	beq	.L47
.L41:
	bx	lr
.L47:
	ldr	r0, [r1, #196]
	bx	lr
	.size	png_get_y_pixels_per_meter, .-png_get_y_pixels_per_meter
	.section	.text.png_get_pixels_per_meter,"ax",%progbits
	.align	2
	.global	png_get_pixels_per_meter
	.thumb
	.thumb_func
	.type	png_get_pixels_per_meter, %function
png_get_pixels_per_meter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L49
	ldr	r0, [r1, #8]
	ands	r0, r0, #128
	beq	.L49
	ldrb	r3, [r1, #200]	@ zero_extendqisi2
	cmp	r3, #1
	it	ne
	movne	r0, #0
	beq	.L55
.L49:
	bx	lr
.L55:
	ldr	r0, [r1, #192]
	ldr	r3, [r1, #196]
	cmp	r0, r3
	ite	eq
	moveq	r0, r3
	movne	r0, #0
	bx	lr
	.size	png_get_pixels_per_meter, .-png_get_pixels_per_meter
	.section	.text.png_get_pixel_aspect_ratio,"ax",%progbits
	.align	2
	.global	png_get_pixel_aspect_ratio
	.thumb
	.thumb_func
	.type	png_get_pixel_aspect_ratio, %function
png_get_pixel_aspect_ratio:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	beq	.L60
	ldr	r3, [r1, #8]
	lsls	r3, r3, #24
	bpl	.L60
	ldr	r3, [r1, #192]
	cbz	r3, .L60
	flds	s0, [r1, #196]	@ int
	fmsr	s14, r3	@ int
	fuitos	s15, s14
	fuitos	s0, s0
	fdivs	s0, s0, s15
	bx	lr
.L60:
	flds	s0, .L61
	bx	lr
.L62:
	.align	2
.L61:
	.word	0
	.size	png_get_pixel_aspect_ratio, .-png_get_pixel_aspect_ratio
	.section	.text.png_get_pixel_aspect_ratio_fixed,"ax",%progbits
	.align	2
	.global	png_get_pixel_aspect_ratio_fixed
	.thumb
	.thumb_func
	.type	png_get_pixel_aspect_ratio_fixed, %function
png_get_pixel_aspect_ratio_fixed:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L76
	ldr	r0, [r1, #8]
	ands	r0, r0, #128
	beq	.L76
	ldr	r3, [r1, #192]
	cbz	r3, .L68
	ldr	r1, [r1, #196]
	cbz	r1, .L69
	cmp	r3, #0
	blt	.L71
	cmp	r1, #0
	blt	.L71
	push	{lr}
	movw	r2, #34464
	sub	sp, sp, #12
	movt	r2, 1
	mov	r0, sp
	bl	png_muldiv(PLT)
	cbnz	r0, .L77
.L64:
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L69:
	mov	r0, r1
.L76:
	bx	lr
.L68:
	mov	r0, r3
	bx	lr
.L71:
	movs	r0, #0
	bx	lr
.L77:
	ldr	r0, [sp]
	b	.L64
	.size	png_get_pixel_aspect_ratio_fixed, .-png_get_pixel_aspect_ratio_fixed
	.section	.text.png_get_x_offset_microns,"ax",%progbits
	.align	2
	.global	png_get_x_offset_microns
	.thumb
	.thumb_func
	.type	png_get_x_offset_microns, %function
png_get_x_offset_microns:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L79
	ldr	r0, [r1, #8]
	ands	r0, r0, #256
	beq	.L79
	ldrb	r3, [r1, #188]	@ zero_extendqisi2
	cmp	r3, #1
	it	ne
	movne	r0, #0
	beq	.L84
.L79:
	bx	lr
.L84:
	ldr	r0, [r1, #180]
	bx	lr
	.size	png_get_x_offset_microns, .-png_get_x_offset_microns
	.section	.text.png_get_y_offset_microns,"ax",%progbits
	.align	2
	.global	png_get_y_offset_microns
	.thumb
	.thumb_func
	.type	png_get_y_offset_microns, %function
png_get_y_offset_microns:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L86
	ldr	r0, [r1, #8]
	ands	r0, r0, #256
	beq	.L86
	ldrb	r3, [r1, #188]	@ zero_extendqisi2
	cmp	r3, #1
	it	ne
	movne	r0, #0
	beq	.L91
.L86:
	bx	lr
.L91:
	ldr	r0, [r1, #184]
	bx	lr
	.size	png_get_y_offset_microns, .-png_get_y_offset_microns
	.section	.text.png_get_x_offset_pixels,"ax",%progbits
	.align	2
	.global	png_get_x_offset_pixels
	.thumb
	.thumb_func
	.type	png_get_x_offset_pixels, %function
png_get_x_offset_pixels:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L93
	ldr	r0, [r1, #8]
	ands	r0, r0, #256
	beq	.L93
	ldrb	r3, [r1, #188]	@ zero_extendqisi2
	cbnz	r3, .L96
	ldr	r0, [r1, #180]
	bx	lr
.L96:
	movs	r0, #0
.L93:
	bx	lr
	.size	png_get_x_offset_pixels, .-png_get_x_offset_pixels
	.section	.text.png_get_y_offset_pixels,"ax",%progbits
	.align	2
	.global	png_get_y_offset_pixels
	.thumb
	.thumb_func
	.type	png_get_y_offset_pixels, %function
png_get_y_offset_pixels:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L98
	ldr	r0, [r1, #8]
	ands	r0, r0, #256
	beq	.L98
	ldrb	r3, [r1, #188]	@ zero_extendqisi2
	cbnz	r3, .L101
	ldr	r0, [r1, #184]
	bx	lr
.L101:
	movs	r0, #0
.L98:
	bx	lr
	.size	png_get_y_offset_pixels, .-png_get_y_offset_pixels
	.section	.text.png_get_pixels_per_inch,"ax",%progbits
	.align	2
	.global	png_get_pixels_per_inch
	.thumb
	.thumb_func
	.type	png_get_pixels_per_inch, %function
png_get_pixels_per_inch:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #12
	bl	png_get_pixels_per_meter(PLT)
	subs	r1, r0, #0
	blt	.L105
	mov	r0, sp
	movs	r2, #127
	movw	r3, #5000
	bl	png_muldiv(PLT)
	cbz	r0, .L105
	ldr	r0, [sp]
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L105:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	png_get_pixels_per_inch, .-png_get_pixels_per_inch
	.section	.text.png_get_x_pixels_per_inch,"ax",%progbits
	.align	2
	.global	png_get_x_pixels_per_inch
	.thumb
	.thumb_func
	.type	png_get_x_pixels_per_inch, %function
png_get_x_pixels_per_inch:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #12
	bl	png_get_x_pixels_per_meter(PLT)
	subs	r1, r0, #0
	blt	.L113
	mov	r0, sp
	movs	r2, #127
	movw	r3, #5000
	bl	png_muldiv(PLT)
	cbz	r0, .L113
	ldr	r0, [sp]
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L113:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	png_get_x_pixels_per_inch, .-png_get_x_pixels_per_inch
	.section	.text.png_get_y_pixels_per_inch,"ax",%progbits
	.align	2
	.global	png_get_y_pixels_per_inch
	.thumb
	.thumb_func
	.type	png_get_y_pixels_per_inch, %function
png_get_y_pixels_per_inch:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #12
	bl	png_get_y_pixels_per_meter(PLT)
	subs	r1, r0, #0
	blt	.L121
	mov	r0, sp
	movs	r2, #127
	movw	r3, #5000
	bl	png_muldiv(PLT)
	cbz	r0, .L121
	ldr	r0, [sp]
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L121:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
	.size	png_get_y_pixels_per_inch, .-png_get_y_pixels_per_inch
	.section	.text.png_get_x_offset_inches_fixed,"ax",%progbits
	.align	2
	.global	png_get_x_offset_inches_fixed
	.thumb
	.thumb_func
	.type	png_get_x_offset_inches_fixed, %function
png_get_x_offset_inches_fixed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	png_get_x_offset_microns(PLT)
	mov	r2, #500
	mov	r1, r0
	movs	r3, #127
	mov	r0, r4
	pop	{r4, lr}
	b	png_muldiv_warn(PLT)
	.size	png_get_x_offset_inches_fixed, .-png_get_x_offset_inches_fixed
	.section	.text.png_get_y_offset_inches_fixed,"ax",%progbits
	.align	2
	.global	png_get_y_offset_inches_fixed
	.thumb
	.thumb_func
	.type	png_get_y_offset_inches_fixed, %function
png_get_y_offset_inches_fixed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	png_get_y_offset_microns(PLT)
	mov	r2, #500
	mov	r1, r0
	movs	r3, #127
	mov	r0, r4
	pop	{r4, lr}
	b	png_muldiv_warn(PLT)
	.size	png_get_y_offset_inches_fixed, .-png_get_y_offset_inches_fixed
	.section	.text.png_get_x_offset_inches,"ax",%progbits
	.align	2
	.global	png_get_x_offset_inches
	.thumb
	.thumb_func
	.type	png_get_x_offset_inches, %function
png_get_x_offset_inches:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	png_get_x_offset_microns(PLT)
	fmsr	s15, r0	@ int
	fldd	d16, .L132
	fsitod	d0, s15
	fmuld	d0, d0, d16
	fcvtsd	s0, d0
	pop	{r3, pc}
.L133:
	.align	3
.L132:
	.word	-431437368
	.word	1057268774
	.size	png_get_x_offset_inches, .-png_get_x_offset_inches
	.section	.text.png_get_y_offset_inches,"ax",%progbits
	.align	2
	.global	png_get_y_offset_inches
	.thumb
	.thumb_func
	.type	png_get_y_offset_inches, %function
png_get_y_offset_inches:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	png_get_y_offset_microns(PLT)
	fmsr	s15, r0	@ int
	fldd	d16, .L136
	fsitod	d0, s15
	fmuld	d0, d0, d16
	fcvtsd	s0, d0
	pop	{r3, pc}
.L137:
	.align	3
.L136:
	.word	-431437368
	.word	1057268774
	.size	png_get_y_offset_inches, .-png_get_y_offset_inches
	.section	.text.png_get_pHYs_dpi,"ax",%progbits
	.align	2
	.global	png_get_pHYs_dpi
	.thumb
	.thumb_func
	.type	png_get_pHYs_dpi, %function
png_get_pHYs_dpi:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L162
	ldr	r0, [r1, #8]
	ands	r0, r0, #128
	beq	.L162
	push	{r4}
	mov	r0, r2
	cbz	r2, .L140
	ldr	r4, [r1, #192]
	movs	r0, #128
	str	r4, [r2]
.L140:
	cbz	r3, .L141
	ldr	r4, [r1, #196]
	movs	r0, #128
	str	r4, [r3]
.L141:
	ldr	r4, [sp, #4]
	cbz	r4, .L139
	ldrb	r1, [r1, #200]	@ zero_extendqisi2
	cmp	r1, #1
	str	r1, [r4]
	beq	.L142
.L144:
	movs	r0, #128
.L139:
	ldr	r4, [sp], #4
.L162:
	bx	lr
.L142:
	cbz	r2, .L143
	flds	s13, [r2]	@ int
	fldd	d16, .L163
	fconstd	d7, #96
	fuitod	d17, s13
	fmacd	d7, d17, d16
	ftouizd	s14, d7
	fsts	s14, [r2]	@ int
.L143:
	cmp	r3, #0
	beq	.L144
	flds	s13, [r3]	@ int
	movs	r0, #128
	fldd	d16, .L163
	fconstd	d7, #96
	fuitod	d17, s13
	fmacd	d7, d17, d16
	ftouizd	s14, d7
	fsts	s14, [r3]	@ int
	b	.L139
.L164:
	.align	3
.L163:
	.word	625347238
	.word	1067057781
	.size	png_get_pHYs_dpi, .-png_get_pHYs_dpi
	.section	.text.png_get_channels,"ax",%progbits
	.align	2
	.global	png_get_channels
	.thumb
	.thumb_func
	.type	png_get_channels, %function
png_get_channels:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	ldrbne	r0, [r1, #29]	@ zero_extendqisi2
	bx	lr
	.size	png_get_channels, .-png_get_channels
	.section	.text.png_get_signature,"ax",%progbits
	.align	2
	.global	png_get_signature
	.thumb
	.thumb_func
	.type	png_get_signature, %function
png_get_signature:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	itet	ne
	movne	r0, #1
	moveq	r0, #0
	addne	r0, r1, #32
	bx	lr
	.size	png_get_signature, .-png_get_signature
	.section	.text.png_get_bKGD,"ax",%progbits
	.align	2
	.global	png_get_bKGD
	.thumb
	.thumb_func
	.type	png_get_bKGD, %function
png_get_bKGD:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L172
	ldr	r0, [r1, #8]
	ands	r0, r0, #32
	beq	.L172
	cbz	r2, .L174
	adds	r1, r1, #170
	movs	r0, #32
	str	r1, [r2]
	bx	lr
.L174:
	mov	r0, r2
.L172:
	bx	lr
	.size	png_get_bKGD, .-png_get_bKGD
	.section	.text.png_get_cHRM,"ax",%progbits
	.align	2
	.global	png_get_cHRM
	.thumb
	.thumb_func
	.type	png_get_cHRM, %function
png_get_cHRM:
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L213
	ldrh	r0, [r1, #114]
	and	r0, r0, #2
	uxth	r0, r0
	cmp	r0, #0
	beq	.L213
	push	{r4}
	cbz	r2, .L180
	flds	s15, [r1, #68]	@ int
	fldd	d16, .L214
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r2]
.L180:
	cbz	r3, .L181
	flds	s15, [r1, #72]	@ int
	fldd	d16, .L214
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r3]
.L181:
	ldr	r0, [sp, #4]
	cbz	r0, .L182
	flds	s15, [r1, #44]	@ int
	fldd	d16, .L214
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L182:
	ldr	r0, [sp, #8]
	cbz	r0, .L183
	flds	s15, [r1, #48]	@ int
	fldd	d16, .L214
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L183:
	ldr	r0, [sp, #12]
	cbz	r0, .L184
	flds	s15, [r1, #52]	@ int
	fldd	d16, .L214
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L184:
	ldr	r0, [sp, #16]
	cbz	r0, .L185
	flds	s15, [r1, #56]	@ int
	fldd	d16, .L214
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L185:
	ldr	r0, [sp, #20]
	cbz	r0, .L186
	flds	s15, [r1, #60]	@ int
	fldd	d16, .L214
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L186:
	ldr	r0, [sp, #24]
	cbz	r0, .L189
	ldr	r3, [r1, #64]
	mov	r2, r0
	fldd	d17, .L214
	movs	r0, #4
	fmsr	s15, r3	@ int
	fsitod	d16, s15
	fmuld	d16, d16, d17
	fstd	d16, [r2]
.L179:
	ldr	r4, [sp], #4
.L213:
	bx	lr
.L189:
	movs	r0, #4
	b	.L179
.L215:
	.align	3
.L214:
	.word	-1998362383
	.word	1055193269
	.size	png_get_cHRM, .-png_get_cHRM
	.section	.text.png_get_cHRM_XYZ,"ax",%progbits
	.align	2
	.global	png_get_cHRM_XYZ
	.thumb
	.thumb_func
	.type	png_get_cHRM_XYZ, %function
png_get_cHRM_XYZ:
	@ args = 28, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L255
	ldrh	r0, [r1, #114]
	and	r0, r0, #2
	uxth	r0, r0
	cmp	r0, #0
	beq	.L255
	push	{r4}
	cbz	r2, .L218
	flds	s15, [r1, #76]	@ int
	fldd	d16, .L256
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r2]
.L218:
	cbz	r3, .L219
	flds	s15, [r1, #80]	@ int
	fldd	d16, .L256
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r3]
.L219:
	ldr	r0, [sp, #4]
	cbz	r0, .L220
	flds	s15, [r1, #84]	@ int
	fldd	d16, .L256
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L220:
	ldr	r0, [sp, #8]
	cbz	r0, .L221
	flds	s15, [r1, #88]	@ int
	fldd	d16, .L256
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L221:
	ldr	r0, [sp, #12]
	cbz	r0, .L222
	flds	s15, [r1, #92]	@ int
	fldd	d16, .L256
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L222:
	ldr	r0, [sp, #16]
	cbz	r0, .L223
	flds	s15, [r1, #96]	@ int
	fldd	d16, .L256
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L223:
	ldr	r0, [sp, #20]
	cbz	r0, .L224
	flds	s15, [r1, #100]	@ int
	fldd	d16, .L256
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L224:
	ldr	r0, [sp, #24]
	cbz	r0, .L225
	flds	s15, [r1, #104]	@ int
	fldd	d16, .L256
	fsitod	d17, s15
	fmuld	d16, d17, d16
	fstd	d16, [r0]
.L225:
	ldr	r0, [sp, #28]
	cbz	r0, .L228
	ldr	r3, [r1, #108]
	mov	r2, r0
	fldd	d17, .L256
	movs	r0, #4
	fmsr	s15, r3	@ int
	fsitod	d16, s15
	fmuld	d16, d16, d17
	fstd	d16, [r2]
.L217:
	ldr	r4, [sp], #4
.L255:
	bx	lr
.L228:
	movs	r0, #4
	b	.L217
.L257:
	.align	3
.L256:
	.word	-1998362383
	.word	1055193269
	.size	png_get_cHRM_XYZ, .-png_get_cHRM_XYZ
	.section	.text.png_get_cHRM_XYZ_fixed,"ax",%progbits
	.align	2
	.global	png_get_cHRM_XYZ_fixed
	.thumb
	.thumb_func
	.type	png_get_cHRM_XYZ_fixed, %function
png_get_cHRM_XYZ_fixed:
	@ args = 28, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L297
	ldrh	r0, [r1, #114]
	and	r0, r0, #2
	uxth	r0, r0
	cmp	r0, #0
	beq	.L297
	push	{r4}
	cbz	r2, .L260
	ldr	r0, [r1, #76]
	str	r0, [r2]
.L260:
	cbz	r3, .L261
	ldr	r2, [r1, #80]
	str	r2, [r3]
.L261:
	ldr	r2, [sp, #4]
	cbz	r2, .L262
	ldr	r3, [r1, #84]
	str	r3, [r2]
.L262:
	ldr	r3, [sp, #8]
	cbz	r3, .L263
	mov	r4, r3
	ldr	r3, [r1, #88]
	str	r3, [r4]
.L263:
	ldr	r2, [sp, #12]
	cbz	r2, .L264
	ldr	r3, [r1, #92]
	str	r3, [r2]
.L264:
	ldr	r3, [sp, #16]
	cbz	r3, .L265
	mov	r4, r3
	ldr	r3, [r1, #96]
	str	r3, [r4]
.L265:
	ldr	r2, [sp, #20]
	cbz	r2, .L266
	ldr	r3, [r1, #100]
	str	r3, [r2]
.L266:
	ldr	r3, [sp, #24]
	cbz	r3, .L267
	mov	r4, r3
	ldr	r3, [r1, #104]
	str	r3, [r4]
.L267:
	ldr	r2, [sp, #28]
	movs	r0, #4
	cbz	r2, .L259
	ldr	r3, [r1, #108]
	movs	r0, #4
	str	r3, [r2]
.L259:
	ldr	r4, [sp], #4
.L297:
	bx	lr
	.size	png_get_cHRM_XYZ_fixed, .-png_get_cHRM_XYZ_fixed
	.section	.text.png_get_cHRM_fixed,"ax",%progbits
	.align	2
	.global	png_get_cHRM_fixed
	.thumb
	.thumb_func
	.type	png_get_cHRM_fixed, %function
png_get_cHRM_fixed:
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L333
	ldrh	r0, [r1, #114]
	and	r0, r0, #2
	uxth	r0, r0
	cbz	r0, .L333
	push	{r4}
	cbz	r2, .L300
	ldr	r0, [r1, #68]
	str	r0, [r2]
.L300:
	cbz	r3, .L301
	ldr	r2, [r1, #72]
	str	r2, [r3]
.L301:
	ldr	r2, [sp, #4]
	cbz	r2, .L302
	ldr	r3, [r1, #44]
	str	r3, [r2]
.L302:
	ldr	r3, [sp, #8]
	cbz	r3, .L303
	mov	r4, r3
	ldr	r3, [r1, #48]
	str	r3, [r4]
.L303:
	ldr	r2, [sp, #12]
	cbz	r2, .L304
	ldr	r3, [r1, #52]
	str	r3, [r2]
.L304:
	ldr	r3, [sp, #16]
	cbz	r3, .L305
	mov	r4, r3
	ldr	r3, [r1, #56]
	str	r3, [r4]
.L305:
	ldr	r2, [sp, #20]
	cbz	r2, .L306
	ldr	r3, [r1, #60]
	str	r3, [r2]
.L306:
	ldr	r3, [sp, #24]
	movs	r0, #4
	cbz	r3, .L299
	mov	r4, r3
	ldr	r3, [r1, #64]
	movs	r0, #4
	str	r3, [r4]
.L299:
	ldr	r4, [sp], #4
.L333:
	bx	lr
	.size	png_get_cHRM_fixed, .-png_get_cHRM_fixed
	.section	.text.png_get_gAMA_fixed,"ax",%progbits
	.align	2
	.global	png_get_gAMA_fixed
	.thumb
	.thumb_func
	.type	png_get_gAMA_fixed, %function
png_get_gAMA_fixed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L335
	ldrh	r0, [r1, #114]
	ands	r0, r0, #1
	beq	.L335
	cbz	r2, .L338
	ldr	r3, [r1, #40]
	movs	r0, #1
	str	r3, [r2]
	bx	lr
.L338:
	mov	r0, r2
.L335:
	bx	lr
	.size	png_get_gAMA_fixed, .-png_get_gAMA_fixed
	.section	.text.png_get_gAMA,"ax",%progbits
	.align	2
	.global	png_get_gAMA
	.thumb
	.thumb_func
	.type	png_get_gAMA, %function
png_get_gAMA:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L340
	ldrh	r0, [r1, #114]
	ands	r0, r0, #1
	beq	.L340
	cbz	r2, .L343
	ldr	r3, [r1, #40]
	movs	r0, #1
	fldd	d17, .L344
	fmsr	s15, r3	@ int
	fsitod	d16, s15
	fmuld	d16, d16, d17
	fstd	d16, [r2]
	bx	lr
.L343:
	mov	r0, r2
.L340:
	bx	lr
.L345:
	.align	3
.L344:
	.word	-1998362383
	.word	1055193269
	.size	png_get_gAMA, .-png_get_gAMA
	.section	.text.png_get_sRGB,"ax",%progbits
	.align	2
	.global	png_get_sRGB
	.thumb
	.thumb_func
	.type	png_get_sRGB, %function
png_get_sRGB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L347
	ldr	r0, [r1, #8]
	ands	r0, r0, #2048
	beq	.L347
	cbz	r2, .L349
	ldrh	r3, [r1, #112]
	mov	r0, #2048
	str	r3, [r2]
	bx	lr
.L349:
	mov	r0, r2
.L347:
	bx	lr
	.size	png_get_sRGB, .-png_get_sRGB
	.section	.text.png_get_iCCP,"ax",%progbits
	.align	2
	.global	png_get_iCCP
	.thumb
	.thumb_func
	.type	png_get_iCCP, %function
png_get_iCCP:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L363
	ldr	r0, [r1, #8]
	ands	r0, r0, #4096
	beq	.L363
	cmp	r2, #0
	it	ne
	cmpne	r3, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L363
	push	{r4, r5, r6, r7}
	ldr	r4, [sp, #16]
	ldr	r5, [sp, #20]
	cmp	r4, #0
	it	ne
	cmpne	r5, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L354
	ldr	r4, [r1, #116]
	mov	r0, #4096
	movs	r5, #0
	str	r4, [r2]
	ldr	r4, [sp, #16]
	ldr	r2, [r1, #120]
	str	r2, [r4]
	ldr	r2, [r1, #120]
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	ldrb	r6, [r2]	@ zero_extendqisi2
	ldrb	r1, [r2, #2]	@ zero_extendqisi2
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	lsls	r2, r7, #16
	add	r2, r2, r6, lsl #24
	add	r2, r2, r4
	add	r2, r2, r1, lsl #8
	ldr	r1, [sp, #20]
	str	r2, [r1]
	str	r5, [r3]
.L354:
	pop	{r4, r5, r6, r7}
.L363:
	bx	lr
	.size	png_get_iCCP, .-png_get_iCCP
	.section	.text.png_get_sPLT,"ax",%progbits
	.align	2
	.global	png_get_sPLT
	.thumb
	.thumb_func
	.type	png_get_sPLT, %function
png_get_sPLT:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L365
	cbz	r2, .L367
	ldr	r3, [r1, #244]
	ldr	r0, [r1, #248]
	str	r3, [r2]
	bx	lr
.L367:
	mov	r0, r2
.L365:
	bx	lr
	.size	png_get_sPLT, .-png_get_sPLT
	.section	.text.png_get_hIST,"ax",%progbits
	.align	2
	.global	png_get_hIST
	.thumb
	.thumb_func
	.type	png_get_hIST, %function
png_get_hIST:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L369
	ldr	r0, [r1, #8]
	ands	r0, r0, #64
	beq	.L369
	cbz	r2, .L371
	ldr	r3, [r1, #204]
	movs	r0, #64
	str	r3, [r2]
	bx	lr
.L371:
	mov	r0, r2
.L369:
	bx	lr
	.size	png_get_hIST, .-png_get_hIST
	.section	.text.png_get_IHDR,"ax",%progbits
	.align	2
	.global	png_get_IHDR
	.thumb
	.thumb_func
	.type	png_get_IHDR, %function
png_get_IHDR:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, lr}
	mov	r4, r1
	sub	sp, sp, #16
	beq	.L380
	cmp	r3, #0
	it	ne
	cmpne	r2, #0
	ite	eq
	moveq	r5, #1
	movne	r5, #0
	beq	.L380
	ldr	r1, [sp, #32]
	ldr	r6, [sp, #36]
	cmp	r6, #0
	it	ne
	cmpne	r1, #0
	it	eq
	moveq	r0, r5
	beq	.L376
	ldr	r1, [r4]
	str	r1, [r2]
	ldr	r2, [r4, #4]
	ldr	r1, [sp, #32]
	str	r2, [r3]
	ldrb	r3, [r4, #24]	@ zero_extendqisi2
	ldr	r2, [sp, #44]
	str	r3, [r1]
	ldrb	r3, [r4, #25]	@ zero_extendqisi2
	str	r3, [r6]
	cbz	r2, .L377
	ldrb	r3, [r4, #26]	@ zero_extendqisi2
	str	r3, [r2]
.L377:
	ldr	r3, [sp, #48]
	cbz	r3, .L378
	mov	r6, r3
	ldrb	r3, [r4, #27]	@ zero_extendqisi2
	str	r3, [r6]
.L378:
	ldr	r1, [sp, #40]
	cbz	r1, .L379
	ldrb	r3, [r4, #28]	@ zero_extendqisi2
	str	r3, [r1]
.L379:
	ldrb	r5, [r4, #25]	@ zero_extendqisi2
	ldmia	r4, {r1, r2}
	ldrb	r3, [r4, #24]	@ zero_extendqisi2
	str	r5, [sp]
	ldrb	r5, [r4, #28]	@ zero_extendqisi2
	str	r5, [sp, #4]
	ldrb	r5, [r4, #26]	@ zero_extendqisi2
	str	r5, [sp, #8]
	ldrb	r4, [r4, #27]	@ zero_extendqisi2
	str	r4, [sp, #12]
	bl	png_check_IHDR(PLT)
	movs	r0, #1
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L380:
	movs	r0, #0
.L376:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	png_get_IHDR, .-png_get_IHDR
	.section	.text.png_get_oFFs,"ax",%progbits
	.align	2
	.global	png_get_oFFs
	.thumb
	.thumb_func
	.type	png_get_oFFs, %function
png_get_oFFs:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L403
	ldr	r0, [r1, #8]
	ands	r0, r0, #256
	beq	.L403
	cmp	r2, #0
	it	ne
	cmpne	r3, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L403
	push	{r4}
	ldr	r0, [sp, #4]
	cbz	r0, .L394
	ldr	r4, [r1, #180]
	mov	r0, #256
	str	r4, [r2]
	ldr	r2, [r1, #184]
	str	r2, [r3]
	ldr	r2, [sp, #4]
	ldrb	r3, [r1, #188]	@ zero_extendqisi2
	str	r3, [r2]
.L394:
	ldr	r4, [sp], #4
.L403:
	bx	lr
	.size	png_get_oFFs, .-png_get_oFFs
	.section	.text.png_get_pCAL,"ax",%progbits
	.align	2
	.global	png_get_pCAL
	.thumb
	.thumb_func
	.type	png_get_pCAL, %function
png_get_pCAL:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L416
	ldr	r0, [r1, #8]
	ands	r0, r0, #1024
	beq	.L416
	cmp	r2, #0
	it	ne
	cmpne	r3, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L416
	push	{r4, r5}
	ldr	r4, [sp, #8]
	ldr	r5, [sp, #12]
	cmp	r4, #0
	it	ne
	cmpne	r5, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L405
	ldr	r4, [sp, #16]
	ldr	r5, [sp, #20]
	cmp	r4, #0
	it	ne
	cmpne	r5, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L405
	ldr	r0, [sp, #24]
	cbz	r0, .L405
	ldr	r4, [r1, #208]
	mov	r0, #1024
	ldr	r5, [r1, #212]
	str	r4, [r2]
	str	r5, [r3]
	ldr	r4, [sp, #8]
	ldr	r3, [r1, #216]
	ldr	r2, [r1, #220]
	ldr	r5, [sp, #12]
	str	r3, [r4]
	ldrb	r3, [r1, #228]	@ zero_extendqisi2
	ldr	r4, [sp, #16]
	str	r3, [r5]
	ldr	r5, [sp, #20]
	ldrb	r3, [r1, #229]	@ zero_extendqisi2
	str	r3, [r4]
	str	r2, [r5]
	ldr	r2, [sp, #24]
	ldr	r3, [r1, #224]
	str	r3, [r2]
.L405:
	pop	{r4, r5}
.L416:
	bx	lr
	.size	png_get_pCAL, .-png_get_pCAL
	.section	.text.png_get_sCAL_fixed,"ax",%progbits
	.align	2
	.global	png_get_sCAL_fixed
	.thumb
	.thumb_func
	.type	png_get_sCAL_fixed, %function
png_get_sCAL_fixed:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	push	{r4, r5, r6, lr}
	mov	r4, r1
	mov	r5, r0
	ite	ne
	movne	r1, #1
	moveq	r1, #0
	beq	.L418
	ldr	r1, [r4, #8]
	ands	r1, r1, #16384
	bne	.L424
.L418:
	mov	r0, r1
	pop	{r4, r5, r6, pc}
.L424:
	mov	r6, r3
	ldrb	r3, [r4, #252]	@ zero_extendqisi2
	ldr	r0, [r4, #256]
	movs	r1, #0
	str	r3, [r2]
	bl	strtod(PLT)
	ldr	r1, .L425
	mov	r0, r5
.LPIC0:
	add	r1, pc
	bl	png_fixed(PLT)
	movs	r1, #0
	str	r0, [r6]
	ldr	r0, [r4, #260]
	bl	strtod(PLT)
	ldr	r1, .L425+4
	mov	r0, r5
.LPIC1:
	add	r1, pc
	bl	png_fixed(PLT)
	ldr	r3, [sp, #16]
	mov	r1, #16384
	str	r0, [r3]
	mov	r0, r1
	pop	{r4, r5, r6, pc}
.L426:
	.align	2
.L425:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.size	png_get_sCAL_fixed, .-png_get_sCAL_fixed
	.section	.text.png_get_sCAL,"ax",%progbits
	.align	2
	.global	png_get_sCAL
	.thumb
	.thumb_func
	.type	png_get_sCAL, %function
png_get_sCAL:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	push	{r3, r4, r5, lr}
	it	ne
	movne	r0, #1
	mov	r4, r1
	it	eq
	moveq	r0, #0
	beq	.L428
	ldr	r0, [r1, #8]
	ands	r0, r0, #16384
	bne	.L434
.L428:
	pop	{r3, r4, r5, pc}
.L434:
	mov	r5, r3
	ldrb	r3, [r1, #252]	@ zero_extendqisi2
	ldr	r0, [r4, #256]
	movs	r1, #0
	str	r3, [r2]
	bl	strtod(PLT)
	ldr	r0, [r4, #260]
	movs	r1, #0
	fstd	d0, [r5]
	bl	strtod(PLT)
	ldr	r3, [sp, #16]
	mov	r0, #16384
	fstd	d0, [r3]
	pop	{r3, r4, r5, pc}
	.size	png_get_sCAL, .-png_get_sCAL
	.section	.text.png_get_sCAL_s,"ax",%progbits
	.align	2
	.global	png_get_sCAL_s
	.thumb
	.thumb_func
	.type	png_get_sCAL_s, %function
png_get_sCAL_s:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L443
	ldr	r0, [r1, #8]
	ands	r0, r0, #16384
	beq	.L443
	push	{r4, r5}
	mov	r0, #16384
	ldrb	r5, [r1, #252]	@ zero_extendqisi2
	ldr	r4, [r1, #256]
	str	r5, [r2]
	ldr	r2, [sp, #8]
	str	r4, [r3]
	pop	{r4, r5}
	ldr	r3, [r1, #260]
	str	r3, [r2]
.L443:
	bx	lr
	.size	png_get_sCAL_s, .-png_get_sCAL_s
	.section	.text.png_get_pHYs,"ax",%progbits
	.align	2
	.global	png_get_pHYs
	.thumb
	.thumb_func
	.type	png_get_pHYs, %function
png_get_pHYs:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L459
	ldr	r0, [r1, #8]
	ands	r0, r0, #128
	beq	.L459
	push	{r4}
	mov	r0, r2
	cbz	r2, .L446
	ldr	r4, [r1, #192]
	movs	r0, #128
	str	r4, [r2]
.L446:
	cbz	r3, .L447
	ldr	r2, [r1, #196]
	movs	r0, #128
	str	r2, [r3]
.L447:
	ldr	r2, [sp, #4]
	cbz	r2, .L445
	ldrb	r3, [r1, #200]	@ zero_extendqisi2
	movs	r0, #128
	str	r3, [r2]
.L445:
	ldr	r4, [sp], #4
.L459:
	bx	lr
	.size	png_get_pHYs, .-png_get_pHYs
	.section	.text.png_get_PLTE,"ax",%progbits
	.align	2
	.global	png_get_PLTE
	.thumb
	.thumb_func
	.type	png_get_PLTE, %function
png_get_PLTE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L469
	ldr	r0, [r1, #8]
	ands	r0, r0, #8
	beq	.L469
	cbz	r2, .L463
	push	{r4}
	movs	r0, #8
	ldr	r4, [r1, #16]
	ldrh	r1, [r1, #20]
	str	r4, [r2]
	ldr	r4, [sp], #4
	str	r1, [r3]
.L469:
	bx	lr
.L463:
	mov	r0, r2
	bx	lr
	.size	png_get_PLTE, .-png_get_PLTE
	.section	.text.png_get_sBIT,"ax",%progbits
	.align	2
	.global	png_get_sBIT
	.thumb
	.thumb_func
	.type	png_get_sBIT, %function
png_get_sBIT:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L471
	ldr	r0, [r1, #8]
	ands	r0, r0, #2
	beq	.L471
	cbz	r2, .L473
	adds	r1, r1, #148
	movs	r0, #2
	str	r1, [r2]
	bx	lr
.L473:
	mov	r0, r2
.L471:
	bx	lr
	.size	png_get_sBIT, .-png_get_sBIT
	.section	.text.png_get_text,"ax",%progbits
	.align	2
	.global	png_get_text
	.thumb
	.thumb_func
	.type	png_get_text, %function
png_get_text:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	beq	.L478
	ldr	r0, [r1, #128]
	cmp	r0, #0
	ble	.L478
	push	{r4}
	cbz	r2, .L479
	ldr	r4, [r1, #136]
	str	r4, [r2]
.L479:
	cbz	r3, .L481
	str	r0, [r3]
	ldr	r0, [r1, #128]
.L481:
	ldr	r4, [sp], #4
	bx	lr
.L478:
	cbz	r3, .L482
	movs	r0, #0
	str	r0, [r3]
	bx	lr
.L482:
	mov	r0, r3
	bx	lr
	.size	png_get_text, .-png_get_text
	.section	.text.png_get_tIME,"ax",%progbits
	.align	2
	.global	png_get_tIME
	.thumb
	.thumb_func
	.type	png_get_tIME, %function
png_get_tIME:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L495
	ldr	r0, [r1, #8]
	ands	r0, r0, #512
	beq	.L495
	cbz	r2, .L497
	adds	r1, r1, #140
	mov	r0, #512
	str	r1, [r2]
	bx	lr
.L497:
	mov	r0, r2
.L495:
	bx	lr
	.size	png_get_tIME, .-png_get_tIME
	.section	.text.png_get_tRNS,"ax",%progbits
	.align	2
	.global	png_get_tRNS
	.thumb
	.thumb_func
	.type	png_get_tRNS, %function
png_get_tRNS:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L522
	ldr	r0, [r1, #8]
	ands	r0, r0, #16
	beq	.L522
	ldrb	r0, [r1, #25]	@ zero_extendqisi2
	push	{r4, r5}
	cmp	r0, #3
	beq	.L523
	ldr	r5, [sp, #8]
	mov	r0, r5
	cbz	r5, .L506
	movs	r0, #16
	add	r4, r1, #160
	str	r4, [r5]
.L506:
	cbz	r2, .L505
	movs	r4, #0
	str	r4, [r2]
.L505:
	cbz	r3, .L502
	ldrh	r2, [r1, #22]
	movs	r0, #16
	str	r2, [r3]
.L502:
	pop	{r4, r5}
.L522:
	bx	lr
.L523:
	mov	r0, r2
	cbz	r2, .L504
	ldr	r4, [r1, #156]
	movs	r0, #16
	str	r4, [r2]
.L504:
	ldr	r2, [sp, #8]
	cmp	r2, #0
	beq	.L505
	mov	r4, r2
	add	r2, r1, #160
	str	r2, [r4]
	b	.L505
	.size	png_get_tRNS, .-png_get_tRNS
	.section	.text.png_get_unknown_chunks,"ax",%progbits
	.align	2
	.global	png_get_unknown_chunks
	.thumb
	.thumb_func
	.type	png_get_unknown_chunks, %function
png_get_unknown_chunks:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	beq	.L525
	cbz	r2, .L527
	ldr	r3, [r1, #236]
	ldr	r0, [r1, #240]
	str	r3, [r2]
	bx	lr
.L527:
	mov	r0, r2
.L525:
	bx	lr
	.size	png_get_unknown_chunks, .-png_get_unknown_chunks
	.section	.text.png_get_rgb_to_gray_status,"ax",%progbits
	.align	2
	.global	png_get_rgb_to_gray_status
	.thumb
	.thumb_func
	.type	png_get_rgb_to_gray_status, %function
png_get_rgb_to_gray_status:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L529
	ldrb	r0, [r0, #940]	@ zero_extendqisi2
.L529:
	bx	lr
	.size	png_get_rgb_to_gray_status, .-png_get_rgb_to_gray_status
	.section	.text.png_get_user_chunk_ptr,"ax",%progbits
	.align	2
	.global	png_get_user_chunk_ptr
	.thumb
	.thumb_func
	.type	png_get_user_chunk_ptr, %function
png_get_user_chunk_ptr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L532
	ldr	r0, [r0, #920]
.L532:
	bx	lr
	.size	png_get_user_chunk_ptr, .-png_get_user_chunk_ptr
	.section	.text.png_get_compression_buffer_size,"ax",%progbits
	.align	2
	.global	png_get_compression_buffer_size
	.thumb
	.thumb_func
	.type	png_get_compression_buffer_size, %function
png_get_compression_buffer_size:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L535
	ldr	r3, [r0, #448]
	lsls	r3, r3, #16
	bmi	.L538
	ldr	r0, [r0, #524]
.L535:
	bx	lr
.L538:
	ldr	r0, [r0, #1036]
	bx	lr
	.size	png_get_compression_buffer_size, .-png_get_compression_buffer_size
	.section	.text.png_get_user_width_max,"ax",%progbits
	.align	2
	.global	png_get_user_width_max
	.thumb
	.thumb_func
	.type	png_get_user_width_max, %function
png_get_user_width_max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L540
	ldr	r0, [r0, #988]
.L540:
	bx	lr
	.size	png_get_user_width_max, .-png_get_user_width_max
	.section	.text.png_get_user_height_max,"ax",%progbits
	.align	2
	.global	png_get_user_height_max
	.thumb
	.thumb_func
	.type	png_get_user_height_max, %function
png_get_user_height_max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L543
	ldr	r0, [r0, #992]
.L543:
	bx	lr
	.size	png_get_user_height_max, .-png_get_user_height_max
	.section	.text.png_get_chunk_cache_max,"ax",%progbits
	.align	2
	.global	png_get_chunk_cache_max
	.thumb
	.thumb_func
	.type	png_get_chunk_cache_max, %function
png_get_chunk_cache_max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L546
	ldr	r0, [r0, #996]
.L546:
	bx	lr
	.size	png_get_chunk_cache_max, .-png_get_chunk_cache_max
	.section	.text.png_get_chunk_malloc_max,"ax",%progbits
	.align	2
	.global	png_get_chunk_malloc_max
	.thumb
	.thumb_func
	.type	png_get_chunk_malloc_max, %function
png_get_chunk_malloc_max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L549
	ldr	r0, [r0, #1000]
.L549:
	bx	lr
	.size	png_get_chunk_malloc_max, .-png_get_chunk_malloc_max
	.section	.text.png_get_io_state,"ax",%progbits
	.align	2
	.global	png_get_io_state
	.thumb
	.thumb_func
	.type	png_get_io_state, %function
png_get_io_state:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #1040]
	bx	lr
	.size	png_get_io_state, .-png_get_io_state
	.section	.text.png_get_io_chunk_type,"ax",%progbits
	.align	2
	.global	png_get_io_chunk_type
	.thumb
	.thumb_func
	.type	png_get_io_chunk_type, %function
png_get_io_chunk_type:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #616]
	bx	lr
	.size	png_get_io_chunk_type, .-png_get_io_chunk_type
	.section	.text.png_get_palette_max,"ax",%progbits
	.align	2
	.global	png_get_palette_max
	.thumb
	.thumb_func
	.type	png_get_palette_max, %function
png_get_palette_max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ite	ne
	ldrne	r0, [r0, #664]
	moveq	r0, #-1
	bx	lr
	.size	png_get_palette_max, .-png_get_palette_max
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"sCAL width\000"
	.space	1
.LC1:
	.ascii	"sCAL height\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
