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
	.file	"hid.c"
	.section	.text.libaroma_hid_set_initializer,"ax",%progbits
	.align	2
	.global	libaroma_hid_set_initializer
	.thumb
	.thumb_func
	.type	libaroma_hid_set_initializer, %function
libaroma_hid_set_initializer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L7
.LPIC0:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L2
	push	{r4, lr}
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L7+4
	mov	r2, r0
	mov	r0, r4
.LPIC1:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L7+8
	movs	r1, #1
	movs	r2, #52
.LPIC2:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L7+12
	ldr	r2, .L7+16
.LPIC3:
	add	r1, pc
.LPIC4:
	add	r2, pc
	bl	fprintf(PLT)
	movs	r3, #0
	mov	r0, r3
	pop	{r4, pc}
.L2:
	ldr	r2, .L7+20
	adds	r3, r0, #0
	it	ne
	movne	r3, #1
.LPIC5:
	add	r2, pc
	str	r0, [r2]
	mov	r0, r3
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LANCHOR1-(.LPIC5+4)
	.size	libaroma_hid_set_initializer, .-libaroma_hid_set_initializer
	.section	.text.libaroma_hid_init,"ax",%progbits
	.align	2
	.global	libaroma_hid_init
	.thumb
	.thumb_func
	.type	libaroma_hid_init, %function
libaroma_hid_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r4, .L26
.LPIC6:
	add	r4, pc
	ldr	r5, [r4]
	cbz	r5, .L10
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L26+4
	mov	r2, r0
	mov	r0, r4
.LPIC7:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L26+8
	movs	r1, #1
	movs	r2, #32
.LPIC8:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L26+12
	ldr	r2, .L26+16
.LPIC9:
	add	r1, pc
.LPIC10:
	add	r2, pc
	bl	fprintf(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L10:
	movs	r0, #96
	movs	r1, #1
	bl	calloc(PLT)
	str	r0, [r4]
	cbz	r0, .L23
	bl	libaroma_fb(PLT)
	cmp	r0, #0
	beq	.L24
	ldr	r7, [r4]
	bl	libaroma_fb(PLT)
	ldr	r3, [r0]
	ldr	r6, [r4]
	str	r3, [r7, #16]
	bl	libaroma_fb(PLT)
	ldr	r3, .L26+20
	ldr	r2, [r0, #4]
	ldr	r0, [r4]
.LPIC23:
	add	r3, pc
	ldr	r3, [r3]
	str	r2, [r6, #20]
	str	r5, [r0, #88]
	str	r5, [r0, #92]
	cmp	r3, #0
	beq	.L15
	blx	r3
	cbz	r0, .L25
.L16:
	ldr	r3, .L26+24
.LPIC32:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	cmp	r2, #0
	beq	.L17
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L17
.L11:
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L23:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L26+28
	mov	r2, r0
	mov	r0, r4
.LPIC12:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L26+32
	movs	r1, #1
	movs	r2, #33
.LPIC13:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L26+36
	ldr	r2, .L26+40
.LPIC14:
	add	r1, pc
.LPIC15:
	add	r2, pc
	bl	fprintf(PLT)
.L13:
	ldr	r4, .L26+44
.LPIC37:
	add	r4, pc
	ldr	r0, [r4]
	bl	free(PLT)
	movs	r0, #0
	str	r0, [r4]
	pop	{r3, r4, r5, r6, r7, pc}
.L25:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L26+48
	mov	r2, r0
	mov	r0, r4
.LPIC24:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L26+52
	movs	r1, #1
	movs	r2, #22
.LPIC25:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L26+56
	ldr	r2, .L26+60
.LPIC26:
	add	r1, pc
.LPIC27:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L13
.L17:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L26+64
	mov	r2, r0
	mov	r0, r4
.LPIC33:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L26+68
	movs	r1, #1
	movs	r2, #27
.LPIC34:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L26+72
	ldr	r2, .L26+76
.LPIC35:
	add	r1, pc
.LPIC36:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L13
.L24:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L26+80
	mov	r2, r0
	mov	r0, r4
.LPIC16:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L26+84
	movs	r1, #1
	movs	r2, #41
.LPIC17:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L26+88
	ldr	r2, .L26+92
.LPIC18:
	add	r1, pc
.LPIC19:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L13
.L15:
	bl	libaroma_hid_driver_init(PLT)
	cmp	r0, #0
	bne	.L16
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L26+96
	mov	r2, r0
	mov	r0, r4
.LPIC28:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L26+100
	movs	r1, #1
	movs	r2, #22
.LPIC29:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L26+104
	ldr	r2, .L26+108
.LPIC30:
	add	r1, pc
.LPIC31:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L13
.L27:
	.align	2
.L26:
	.word	.LANCHOR0-(.LPIC6+4)
	.word	.LC0-(.LPIC7+4)
	.word	.LC4-(.LPIC8+4)
	.word	.LC2-(.LPIC9+4)
	.word	.LC3-(.LPIC10+4)
	.word	.LANCHOR1-(.LPIC23+4)
	.word	.LANCHOR0-(.LPIC32+4)
	.word	.LC0-(.LPIC12+4)
	.word	.LC5-(.LPIC13+4)
	.word	.LC2-(.LPIC14+4)
	.word	.LC3-(.LPIC15+4)
	.word	.LANCHOR0-(.LPIC37+4)
	.word	.LC0-(.LPIC24+4)
	.word	.LC7-(.LPIC25+4)
	.word	.LC2-(.LPIC26+4)
	.word	.LC3-(.LPIC27+4)
	.word	.LC0-(.LPIC33+4)
	.word	.LC8-(.LPIC34+4)
	.word	.LC2-(.LPIC35+4)
	.word	.LC3-(.LPIC36+4)
	.word	.LC0-(.LPIC16+4)
	.word	.LC6-(.LPIC17+4)
	.word	.LC2-(.LPIC18+4)
	.word	.LC3-(.LPIC19+4)
	.word	.LC0-(.LPIC28+4)
	.word	.LC7-(.LPIC29+4)
	.word	.LC2-(.LPIC30+4)
	.word	.LC3-(.LPIC31+4)
	.size	libaroma_hid_init, .-libaroma_hid_init
	.section	.text.libaroma_hid_release,"ax",%progbits
	.align	2
	.global	libaroma_hid_release
	.thumb
	.thumb_func
	.type	libaroma_hid_release, %function
libaroma_hid_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L32
.LPIC39:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L31
	ldr	r3, [r0, #4]
	blx	r3
	ldr	r0, [r4]
	pop	{r4, lr}
	b	free(PLT)
.L31:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L32+4
	mov	r2, r0
	mov	r0, r4
.LPIC40:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L32+8
	movs	r1, #1
	movs	r2, #26
.LPIC41:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L32+12
	ldr	r2, .L32+16
	pop	{r4, lr}
.LPIC42:
	add	r1, pc
.LPIC43:
	add	r2, pc
	b	fprintf(PLT)
.L33:
	.align	2
.L32:
	.word	.LANCHOR0-(.LPIC39+4)
	.word	.LC0-(.LPIC40+4)
	.word	.LC9-(.LPIC41+4)
	.word	.LC2-(.LPIC42+4)
	.word	.LC3-(.LPIC43+4)
	.size	libaroma_hid_release, .-libaroma_hid_release
	.section	.text.libaroma_hid_set_keypress,"ax",%progbits
	.align	2
	.global	libaroma_hid_set_keypress
	.thumb
	.thumb_func
	.type	libaroma_hid_set_keypress, %function
libaroma_hid_set_keypress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #512
	mov	r3, r0
	bgt	.L38
	asrs	r2, r0, #31
	push	{r4}
	movs	r0, #1
	lsrs	r2, r2, #29
	cmp	r1, r0
	add	r4, r3, r2
	and	r4, r4, #7
	sub	r2, r4, r2
	lsl	r2, r0, r2
	beq	.L36
	bcc	.L37
	cmp	r1, #3
	beq	.L37
	ldr	r4, [sp], #4
	bx	lr
.L36:
	ldr	r4, .L46
	mov	r0, r1
.LPIC45:
	add	r4, pc
	ldr	r1, [r4]
	add	r3, r1, r3, asr #3
	ldrb	r1, [r3, #24]	@ zero_extendqisi2
	orrs	r2, r2, r1
	strb	r2, [r3, #24]
	ldr	r4, [sp], #4
	bx	lr
.L38:
	movs	r0, #0
	bx	lr
.L37:
	ldr	r1, .L46+4
	movs	r0, #1
.LPIC46:
	add	r1, pc
	ldr	r1, [r1]
	add	r3, r1, r3, asr #3
	ldrb	r1, [r3, #24]	@ zero_extendqisi2
	bic	r2, r1, r2
	strb	r2, [r3, #24]
	ldr	r4, [sp], #4
	bx	lr
.L47:
	.align	2
.L46:
	.word	.LANCHOR0-(.LPIC45+4)
	.word	.LANCHOR0-(.LPIC46+4)
	.size	libaroma_hid_set_keypress, .-libaroma_hid_set_keypress
	.section	.text.libaroma_hid_get_keypress,"ax",%progbits
	.align	2
	.global	libaroma_hid_get_keypress
	.thumb
	.thumb_func
	.type	libaroma_hid_get_keypress, %function
libaroma_hid_get_keypress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L52
.LPIC47:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L50
	cmp	r0, #512
	bgt	.L51
	asrs	r2, r0, #31
	add	r3, r3, r0, asr #3
	lsrs	r2, r2, #29
	movs	r1, #1
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	add	r0, r0, r2
	and	r0, r0, #7
	subs	r2, r0, r2
	lsl	r2, r1, r2
	tst	r2, r3
	ite	ne
	movne	r0, r1
	moveq	r0, #0
	bx	lr
.L51:
	movs	r0, #0
	bx	lr
.L50:
	mov	r0, r3
	bx	lr
.L53:
	.align	2
.L52:
	.word	.LANCHOR0-(.LPIC47+4)
	.size	libaroma_hid_get_keypress, .-libaroma_hid_get_keypress
	.section	.text.libaroma_hid_touch_pressed,"ax",%progbits
	.align	2
	.global	libaroma_hid_touch_pressed
	.thumb
	.thumb_func
	.type	libaroma_hid_touch_pressed, %function
libaroma_hid_touch_pressed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #511
	b	libaroma_hid_get_keypress(PLT)
	.size	libaroma_hid_touch_pressed, .-libaroma_hid_touch_pressed
	.section	.text.libaroma_hid_get,"ax",%progbits
	.align	2
	.global	libaroma_hid_get
	.thumb
	.thumb_func
	.type	libaroma_hid_get, %function
libaroma_hid_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	movs	r1, #0
	movs	r2, #20
	mov	r5, r0
	bl	memset(PLT)
	ldr	r3, .L76
.LPIC48:
	add	r3, pc
	ldr	r0, [r3]
	cmp	r0, #0
	beq	.L68
	ldr	r9, .L76+4
	mov	r1, r5
	ldr	r6, .L76+8
	ldr	r2, [r0, #8]
	blx	r2
	cmp	r0, #6
.LPIC53:
	add	r9, pc
.LPIC56:
	add	r6, pc
	mov	r4, r0
	beq	.L58
.L74:
	bls	.L73
	cmp	r0, #204
	beq	.L61
	cmp	r0, #221
	bne	.L57
	movs	r1, #0
	movs	r2, #20
	mov	r0, r5
	bl	memset(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L76+12
	mov	r2, r0
	mov	r0, r5
.LPIC49:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L76+16
	movs	r1, #1
	movs	r2, #46
.LPIC50:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L76+20
	ldr	r2, .L76+24
.LPIC51:
	add	r1, pc
.LPIC52:
	add	r2, pc
	bl	fprintf(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L61:
	mov	r0, r5
	movs	r1, #0
	movs	r2, #20
	bl	memset(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L73:
	mov	r0, r5
	mov	r1, r4
	movs	r2, #20
	cbnz	r4, .L57
	ldr	r8, [r6]
	bl	memset(PLT)
	cmp	r8, #0
	beq	.L69
	mov	r0, r8
.L75:
	ldr	r2, [r0, #8]
	mov	r1, r5
	blx	r2
	cmp	r0, #6
	mov	r4, r0
	bne	.L74
.L58:
	ldrb	r3, [r5, #8]	@ zero_extendqisi2
	mov	r0, r5
	movs	r1, #0
	movs	r2, #20
	cmp	r3, #2
	bne	.L63
	ldr	r3, [r9]
	ldr	r7, [r5, #12]
	ldr	r4, [r3, #88]
	mov	r8, r3
	cmp	r4, r7
	bne	.L64
	ldr	r4, [r3, #92]
	ldr	r3, [r5, #16]
	cmp	r4, r3
	bne	.L64
	bl	memset(PLT)
	mov	r0, r8
	b	.L75
.L68:
	movs	r0, #221
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L57:
	ldr	r0, [r5, #4]
	ldrb	r1, [r5, #8]	@ zero_extendqisi2
	bl	libaroma_hid_set_keypress(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L69:
	movs	r0, #204
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L64:
	movw	r0, #511
	movs	r1, #2
	bl	libaroma_hid_set_keypress(PLT)
	ldr	r3, .L76+28
.LPIC54:
	add	r3, pc
.L72:
	ldr	r1, [r5, #12]
	movs	r0, #6
	ldr	r2, [r5, #16]
	ldr	r3, [r3]
	str	r1, [r3, #88]
	str	r2, [r3, #92]
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L63:
	mov	r1, r3
	movw	r0, #511
	bl	libaroma_hid_set_keypress(PLT)
	ldr	r3, .L76+32
.LPIC55:
	add	r3, pc
	b	.L72
.L77:
	.align	2
.L76:
	.word	.LANCHOR0-(.LPIC48+4)
	.word	.LANCHOR0-(.LPIC53+4)
	.word	.LANCHOR0-(.LPIC56+4)
	.word	.LC0-(.LPIC49+4)
	.word	.LC10-(.LPIC50+4)
	.word	.LC2-(.LPIC51+4)
	.word	.LC3-(.LPIC52+4)
	.word	.LANCHOR0-(.LPIC54+4)
	.word	.LANCHOR0-(.LPIC55+4)
	.size	libaroma_hid_get, .-libaroma_hid_get
	.section	.text.libaroma_hid_config,"ax",%progbits
	.align	2
	.global	libaroma_hid_config
	.thumb
	.thumb_func
	.type	libaroma_hid_config, %function
libaroma_hid_config:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	mov	r7, r0
	ldr	r4, .L85
.LPIC57:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L79
	ldr	r5, [r0, #12]
	cbz	r5, .L79
	mov	r6, r1
	mov	r3, r2
	mov	r1, r7
	mov	r2, r6
	mov	ip, r5
	pop	{r4, r5, r6, r7}
	bx	ip
.L79:
	movs	r0, #0
	pop	{r4, r5, r6, r7}
	bx	lr
.L86:
	.align	2
.L85:
	.word	.LANCHOR0-(.LPIC57+4)
	.size	libaroma_hid_config, .-libaroma_hid_config
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"E/%s: \000"
	.space	1
.LC1:
	.ascii	"libaroma_hid_set_initializer hid already initialize"
	.ascii	"d\000"
	.space	3
.LC2:
	.ascii	"%s\012\000"
.LC3:
	.ascii	"\000"
	.space	3
.LC4:
	.ascii	"hid instance already initialized\000"
	.space	3
.LC5:
	.ascii	"unable to allocating hid instance\000"
	.space	2
.LC6:
	.ascii	"framebuffer instance not initialized yet!\000"
	.space	2
.LC7:
	.ascii	"init hid driver failed\000"
	.space	1
.LC8:
	.ascii	"hid driver callback invalid\000"
.LC9:
	.ascii	"hid instance uninitialized\000"
	.space	1
.LC10:
	.ascii	"libaroma_hid_get got LIBAROMA_HID_EV_RET_ERROR\000"
	.section	.bss._libaroma_hid,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_hid, %object
	.size	_libaroma_hid, 4
_libaroma_hid:
	.space	4
	.section	.bss._libaroma_hid_initializer,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	_libaroma_hid_initializer, %object
	.size	_libaroma_hid_initializer, 4
_libaroma_hid_initializer:
	.space	4
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
