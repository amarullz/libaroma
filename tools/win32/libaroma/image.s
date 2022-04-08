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
	.file	"image.c"
	.section	.text.libaroma_image_ex,"ax",%progbits
	.align	2
	.global	libaroma_image_ex
	.thumb
	.thumb_func
	.type	libaroma_image_ex, %function
libaroma_image_ex:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L29
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r1
	ldr	r3, [r0, #4]
	mov	r4, r0
	cmp	r3, #4
	bgt	.L32
.L4:
	cbz	r6, .L27
	mov	r0, r4
	bl	libaroma_stream_close(PLT)
.L27:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L32:
	ldr	r5, [r0]
	ldrb	r7, [r5]	@ zero_extendqisi2
	cmp	r7, #137
	beq	.L33
	cmp	r7, #255
	bne	.L6
	ldrb	r7, [r5, #1]	@ zero_extendqisi2
	cmp	r7, #216
	beq	.L34
.L6:
	ldr	r1, .L37
	mov	r2, r3
	add	r0, r4, #10
.LPIC8:
	add	r1, pc
	bl	libaroma_stristr(PLT)
	cbz	r0, .L35
	mov	r0, r4
	mov	r1, r6
	movs	r2, #0
	pop	{r3, r4, r5, r6, r7, lr}
	b	libaroma_svg_ex(PLT)
.L34:
	ldrb	r7, [r5, #2]	@ zero_extendqisi2
	cmp	r7, #255
	bne	.L6
	pop	{r3, r4, r5, r6, r7, lr}
	b	libaroma_jpeg_ex(PLT)
.L33:
	ldrb	r7, [r5, #1]	@ zero_extendqisi2
	cmp	r7, #80
	bne	.L6
	ldrb	r7, [r5, #2]	@ zero_extendqisi2
	cmp	r7, #78
	bne	.L6
	ldrb	r7, [r5, #3]	@ zero_extendqisi2
	cmp	r7, #71
	bne	.L6
	pop	{r3, r4, r5, r6, r7, lr}
	b	libaroma_png_ex(PLT)
.L35:
	ldr	r1, [r4, #4]
	cmp	r1, #0
	ble	.L4
	mov	r3, r0
.L12:
	ldrb	r2, [r5, r3]	@ zero_extendqisi2
	cmp	r2, #13
	beq	.L9
	bls	.L36
	cmp	r2, #32
	beq	.L9
	cmp	r2, #60
	bne	.L4
	mov	r0, r4
	mov	r1, r6
	movs	r2, #0
	pop	{r3, r4, r5, r6, r7, lr}
	b	libaroma_svg_ex(PLT)
.L36:
	subs	r2, r2, #9
	cmp	r2, #1
	bhi	.L4
.L9:
	adds	r3, r3, #1
	cmp	r3, r1
	beq	.L4
	cmp	r3, #2048
	bne	.L12
	b	.L4
.L29:
	movs	r0, #0
	bx	lr
.L38:
	.align	2
.L37:
	.word	.LC0-(.LPIC8+4)
	.size	libaroma_image_ex, .-libaroma_image_ex
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	".svg\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
