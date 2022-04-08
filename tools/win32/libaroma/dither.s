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
	.file	"dither.c"
	.section	.text.libaroma_dither_table_r,"ax",%progbits
	.align	2
	.global	libaroma_dither_table_r
	.thumb
	.thumb_func
	.type	libaroma_dither_table_r, %function
libaroma_dither_table_r:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L2
.LPIC0:
	add	r0, pc
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	libaroma_dither_table_r, .-libaroma_dither_table_r
	.section	.text.libaroma_dither_table_g,"ax",%progbits
	.align	2
	.global	libaroma_dither_table_g
	.thumb
	.thumb_func
	.type	libaroma_dither_table_g, %function
libaroma_dither_table_g:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L5
.LPIC1:
	add	r0, pc
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR1-(.LPIC1+4)
	.size	libaroma_dither_table_g, .-libaroma_dither_table_g
	.section	.text.libaroma_dither_table_b,"ax",%progbits
	.align	2
	.global	libaroma_dither_table_b
	.thumb
	.thumb_func
	.type	libaroma_dither_table_b, %function
libaroma_dither_table_b:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L8
.LPIC2:
	add	r0, pc
	bx	lr
.L9:
	.align	2
.L8:
	.word	.LANCHOR2-(.LPIC2+4)
	.size	libaroma_dither_table_b, .-libaroma_dither_table_b
	.section	.text.libaroma_dither_table_pos,"ax",%progbits
	.align	2
	.global	libaroma_dither_table_pos
	.thumb
	.thumb_func
	.type	libaroma_dither_table_pos, %function
libaroma_dither_table_pos:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r1, #7
	and	r0, r0, #7
	add	r0, r0, r1, lsl #3
	bx	lr
	.size	libaroma_dither_table_pos, .-libaroma_dither_table_pos
	.section	.text.libaroma_dither_r,"ax",%progbits
	.align	2
	.global	libaroma_dither_r
	.thumb
	.thumb_func
	.type	libaroma_dither_r, %function
libaroma_dither_r:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L12
.LPIC3:
	add	r3, pc
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L13:
	.align	2
.L12:
	.word	.LANCHOR0-(.LPIC3+4)
	.size	libaroma_dither_r, .-libaroma_dither_r
	.section	.text.libaroma_dither_g,"ax",%progbits
	.align	2
	.global	libaroma_dither_g
	.thumb
	.thumb_func
	.type	libaroma_dither_g, %function
libaroma_dither_g:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L15
.LPIC4:
	add	r3, pc
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L16:
	.align	2
.L15:
	.word	.LANCHOR1-(.LPIC4+4)
	.size	libaroma_dither_g, .-libaroma_dither_g
	.section	.text.libaroma_dither_b,"ax",%progbits
	.align	2
	.global	libaroma_dither_b
	.thumb
	.thumb_func
	.type	libaroma_dither_b, %function
libaroma_dither_b:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L18
.LPIC5:
	add	r3, pc
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LANCHOR2-(.LPIC5+4)
	.size	libaroma_dither_b, .-libaroma_dither_b
	.section	.text.libaroma_dither_rgb,"ax",%progbits
	.align	2
	.global	libaroma_dither_rgb
	.thumb
	.thumb_func
	.type	libaroma_dither_rgb, %function
libaroma_dither_rgb:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	and	r0, r0, #7
	ldr	r4, .L22
	and	r1, r1, #7
	add	r1, r0, r1, lsl #3
	ldr	r0, .L22+4
.LPIC7:
	add	r4, pc
	ldr	r5, .L22+8
	ldrb	r4, [r4, r1]	@ zero_extendqisi2
.LPIC6:
	add	r0, pc
	ldrb	r0, [r0, r1]	@ zero_extendqisi2
.LPIC8:
	add	r5, pc
	add	r3, r3, r4
	ldrb	r1, [r5, r1]	@ zero_extendqisi2
	cmp	r3, #255
	ldrb	r4, [sp, #8]	@ zero_extendqisi2
	add	r2, r2, r0
	it	ge
	movge	r3, #255
	ubfx	r3, r3, #2, #6
	cmp	r2, #255
	add	r1, r1, r4
	it	ge
	movge	r2, #255
	lsls	r3, r3, #5
	cmp	r1, #255
	ubfx	r2, r2, #3, #5
	pop	{r4, r5}
	orr	r0, r3, r2, lsl #11
	it	ge
	movge	r1, #255
	ubfx	r1, r1, #3, #5
	orrs	r0, r0, r1
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR1-(.LPIC7+4)
	.word	.LANCHOR0-(.LPIC6+4)
	.word	.LANCHOR2-(.LPIC8+4)
	.size	libaroma_dither_rgb, .-libaroma_dither_rgb
	.section	.text.libaroma_dither_mono_rgb,"ax",%progbits
	.align	2
	.global	libaroma_dither_mono_rgb
	.thumb
	.thumb_func
	.type	libaroma_dither_mono_rgb, %function
libaroma_dither_mono_rgb:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	and	r1, r1, #7
	ldr	r4, .L26
	and	r0, r0, #7
	ldrb	r5, [sp, #8]	@ zero_extendqisi2
.LPIC9:
	add	r4, pc
	add	r1, r4, r1, lsl #3
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	add	r3, r3, r0
	lsls	r0, r0, #1
	cmp	r3, #255
	it	ge
	movge	r3, #255
	uxtb	r0, r0
	ubfx	r3, r3, #2, #6
	adds	r1, r0, r5
	add	r2, r2, r0
	cmp	r1, #255
	pop	{r4, r5}
	it	ge
	movge	r1, #255
	cmp	r2, #255
	ubfx	r1, r1, #3, #5
	it	ge
	movge	r2, #255
	orr	r0, r1, r3, lsl #5
	ubfx	r2, r2, #3, #5
	orr	r0, r0, r2, lsl #11
	bx	lr
.L27:
	.align	2
.L26:
	.word	.LANCHOR1-(.LPIC9+4)
	.size	libaroma_dither_mono_rgb, .-libaroma_dither_mono_rgb
	.section	.text.libaroma_dither_mono,"ax",%progbits
	.align	2
	.global	libaroma_dither_mono
	.thumb
	.thumb_func
	.type	libaroma_dither_mono, %function
libaroma_dither_mono:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	uxtb	r4, r2
	sub	sp, sp, #8
	mov	r3, r2
	ubfx	r2, r2, #16, #8
	ubfx	r3, r3, #8, #8
	str	r4, [sp]
	bl	libaroma_dither_mono_rgb(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	libaroma_dither_mono, .-libaroma_dither_mono
	.section	.text.libaroma_dither,"ax",%progbits
	.align	2
	.global	libaroma_dither
	.thumb
	.thumb_func
	.type	libaroma_dither, %function
libaroma_dither:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	uxtb	r4, r2
	sub	sp, sp, #8
	mov	r3, r2
	ubfx	r2, r2, #16, #8
	ubfx	r3, r3, #8, #8
	str	r4, [sp]
	bl	libaroma_dither_rgb(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	libaroma_dither, .-libaroma_dither
	.section	.text.libaroma_dither_24to16,"ax",%progbits
	.align	2
	.global	libaroma_dither_24to16
	.thumb
	.thumb_func
	.type	libaroma_dither_24to16, %function
libaroma_dither_24to16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	add	r8, r1, r1, lsl #1
	sub	sp, sp, #12
	cmp	r8, #0
	ble	.L32
	mov	r9, r0
	mov	r6, r2
	mov	r4, r3
	movs	r0, #0
.L35:
	ldrb	r7, [r4, #2]	@ zero_extendqisi2
	adds	r5, r0, #1
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r1, r9
	ldrb	r2, [r4]	@ zero_extendqisi2
	adds	r4, r4, #3
	str	r7, [sp]
	bl	libaroma_dither_rgb(PLT)
	add	r3, r5, r5, lsl #1
	strh	r0, [r6], #2	@ movhi
	mov	r0, r5
	cmp	r8, r3
	bgt	.L35
.L32:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
	.size	libaroma_dither_24to16, .-libaroma_dither_24to16
	.section	.data.libaroma_dither_tresshold_b,"aw",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	libaroma_dither_tresshold_b, %object
	.size	libaroma_dither_tresshold_b, 64
libaroma_dither_tresshold_b:
	.byte	5
	.byte	3
	.byte	8
	.byte	0
	.byte	6
	.byte	2
	.byte	7
	.byte	1
	.byte	3
	.byte	5
	.byte	0
	.byte	8
	.byte	2
	.byte	6
	.byte	1
	.byte	7
	.byte	8
	.byte	0
	.byte	6
	.byte	2
	.byte	7
	.byte	1
	.byte	5
	.byte	3
	.byte	0
	.byte	8
	.byte	2
	.byte	6
	.byte	1
	.byte	7
	.byte	3
	.byte	5
	.byte	6
	.byte	2
	.byte	7
	.byte	1
	.byte	5
	.byte	3
	.byte	8
	.byte	0
	.byte	2
	.byte	6
	.byte	1
	.byte	7
	.byte	3
	.byte	5
	.byte	0
	.byte	8
	.byte	7
	.byte	1
	.byte	5
	.byte	3
	.byte	8
	.byte	0
	.byte	6
	.byte	2
	.byte	1
	.byte	7
	.byte	3
	.byte	5
	.byte	0
	.byte	8
	.byte	2
	.byte	6
	.section	.data.libaroma_dither_tresshold_g,"aw",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	libaroma_dither_tresshold_g, %object
	.size	libaroma_dither_tresshold_g, 64
libaroma_dither_tresshold_g:
	.byte	1
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	4
	.byte	2
	.byte	2
	.byte	4
	.byte	0
	.byte	3
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	4
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	4
	.byte	1
	.byte	3
	.byte	2
	.byte	2
	.byte	3
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	0
	.byte	4
	.byte	2
	.byte	2
	.byte	4
	.byte	0
	.byte	3
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	3
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	4
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	4
	.section	.data.libaroma_dither_tresshold_r,"aw",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	libaroma_dither_tresshold_r, %object
	.size	libaroma_dither_tresshold_r, 64
libaroma_dither_tresshold_r:
	.byte	1
	.byte	7
	.byte	3
	.byte	5
	.byte	0
	.byte	8
	.byte	2
	.byte	6
	.byte	7
	.byte	1
	.byte	5
	.byte	3
	.byte	8
	.byte	0
	.byte	6
	.byte	2
	.byte	3
	.byte	5
	.byte	0
	.byte	8
	.byte	2
	.byte	6
	.byte	1
	.byte	7
	.byte	5
	.byte	3
	.byte	8
	.byte	0
	.byte	6
	.byte	2
	.byte	7
	.byte	1
	.byte	0
	.byte	8
	.byte	2
	.byte	6
	.byte	1
	.byte	7
	.byte	3
	.byte	5
	.byte	8
	.byte	0
	.byte	6
	.byte	2
	.byte	7
	.byte	1
	.byte	5
	.byte	3
	.byte	2
	.byte	6
	.byte	1
	.byte	7
	.byte	3
	.byte	5
	.byte	0
	.byte	8
	.byte	6
	.byte	2
	.byte	7
	.byte	1
	.byte	5
	.byte	3
	.byte	8
	.byte	0
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
