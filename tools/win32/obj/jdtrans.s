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
	.file	"jdtrans.c"
	.section	.text.transdecode_master_selection,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	transdecode_master_selection, %function
transdecode_master_selection:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #236]
	push	{r3, r4, r5, lr}
	movs	r3, #1
	mov	r4, r0
	str	r3, [r0, #72]
	cmp	r2, #0
	bne	.L14
	ldr	r3, [r0, #232]
	cbnz	r3, .L15
	bl	jinit_huff_decoder(PLT)
.L3:
	movs	r1, #1
	mov	r0, r4
	bl	jinit_d_coef_controller(PLT)
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r3, [r4, #448]
	mov	r0, r4
	ldr	r3, [r3, #16]
	blx	r3
	ldr	r3, [r4, #8]
	cbz	r3, .L1
	ldr	r2, [r4, #232]
	cbz	r2, .L6
	ldr	r5, [r4, #40]
	add	r5, r5, r5, lsl #1
	adds	r5, r5, #2
.L7:
	ldr	r1, [r4, #332]
	movs	r2, #0
	str	r2, [r3, #4]
	movs	r0, #1
	str	r2, [r3, #12]
	str	r0, [r3, #16]
	mul	r2, r5, r1
	str	r2, [r3, #8]
.L1:
	pop	{r3, r4, r5, pc}
.L15:
	bl	jinit_phuff_decoder(PLT)
	b	.L3
.L6:
	ldr	r2, [r4, #448]
	movs	r5, #1
	ldr	r2, [r2, #24]
	cmp	r2, #0
	beq	.L7
	ldr	r5, [r4, #40]
	b	.L7
.L14:
	ldr	r2, [r0]
	str	r3, [r2, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L3
	.size	transdecode_master_selection, .-transdecode_master_selection
	.section	.text.jpeg_read_coefficients,"ax",%progbits
	.align	2
	.global	jpeg_read_coefficients
	.thumb
	.thumb_func
	.type	jpeg_read_coefficients, %function
jpeg_read_coefficients:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, lr}
	mov	r4, r0
	cmp	r3, #202
	beq	.L42
	cmp	r3, #209
	beq	.L18
	cmp	r3, #210
	it	ne
	cmpne	r3, #207
	bne	.L27
.L26:
	ldr	r2, [r4, #72]
	cbz	r2, .L27
	ldr	r3, [r4, #440]
	ldr	r0, [r3, #20]
	pop	{r4, pc}
.L42:
	bl	transdecode_master_selection(PLT)
	movs	r3, #209
	str	r3, [r4, #20]
.L18:
	ldr	r3, [r4, #8]
.L20:
	cbz	r3, .L21
	ldr	r3, [r3]
	mov	r0, r4
	blx	r3
.L21:
	ldr	r3, [r4, #448]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	cbz	r0, .L22
	cmp	r0, #2
	beq	.L23
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L21
	bic	r0, r0, #2
	cmp	r0, #1
	bne	.L20
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #8]
	adds	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #4]
	blt	.L20
	ldr	r2, [r4, #332]
	add	r1, r1, r2
	str	r1, [r3, #8]
	b	.L20
.L27:
	ldr	r2, [r4]
	movs	r1, #20
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	movs	r0, #0
.L22:
	pop	{r4, pc}
.L23:
	movs	r3, #210
	str	r3, [r4, #20]
	b	.L26
	.size	jpeg_read_coefficients, .-jpeg_read_coefficients
	.section	.text.jpeg_build_huffman_index,"ax",%progbits
	.align	2
	.global	jpeg_build_huffman_index
	.thumb
	.thumb_func
	.type	jpeg_build_huffman_index, %function
jpeg_build_huffman_index:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	movs	r3, #1
	ldr	r5, [r0, #232]
	sub	sp, sp, #8
	mov	r4, r0
	mov	r6, r1
	str	r3, [r0, #228]
	ldr	r3, [r0, #20]
	cbnz	r5, .L120
	cmp	r3, #202
	beq	.L121
	cmp	r3, #209
	beq	.L65
	cmp	r3, #210
	it	ne
	cmpne	r3, #207
	bne	.L74
.L73:
	ldr	r2, [r4, #72]
	cbnz	r2, .L76
.L74:
	ldr	r2, [r4]
	movs	r1, #20
	mov	r0, r4
.L119:
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L63:
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L120:
	cmp	r3, #202
	beq	.L122
	cmp	r3, #209
	beq	.L46
	cmp	r3, #210
	it	ne
	cmpne	r3, #207
	bne	.L62
.L49:
	ldr	r2, [r4, #72]
	cbnz	r2, .L76
.L62:
	ldr	r2, [r4]
	movs	r1, #20
	mov	r0, r4
	movs	r5, #0
	b	.L119
.L76:
	movs	r5, #1
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L121:
	ldr	r0, .L125
.LPIC1:
	add	r0, pc
	bl	puts(PLT)
	mov	r0, r4
	bl	transdecode_master_selection(PLT)
	movs	r3, #209
	str	r3, [r4, #20]
.L65:
	ldr	r3, [r4, #8]
.L67:
	cbz	r3, .L68
	ldr	r3, [r3]
	mov	r0, r4
	blx	r3
.L68:
	ldr	r3, [r4, #448]
	mov	r0, r4
	mov	r1, r6
	movs	r2, #0
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #0
	beq	.L63
	cmp	r0, #2
	beq	.L70
	cmp	r0, #4
	beq	.L70
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L68
	bic	r0, r0, #2
	cmp	r0, #1
	bne	.L67
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #8]
	adds	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #4]
	blt	.L67
	ldr	r2, [r4, #332]
	add	r2, r2, r1
	str	r2, [r3, #8]
	b	.L67
.L70:
	movs	r3, #210
	str	r3, [r4, #20]
	b	.L73
.L122:
	ldr	r0, .L125+4
.LPIC0:
	add	r0, pc
	bl	puts(PLT)
	mov	r0, r4
	bl	transdecode_master_selection(PLT)
	movs	r3, #209
	str	r3, [r4, #20]
.L46:
	ldr	r3, [r4, #452]
	mov	r0, r4
	mov	r1, r6
	ldr	r3, [r3, #8]
	blx	r3
	ldr	r3, [r4, #332]
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r4, #8]
	mov	r10, #0
	mov	r8, r10
	mov	r9, r10
.L61:
	cbz	r3, .L50
	ldr	r3, [r3]
	mov	r0, r4
	blx	r3
.L50:
	mov	r0, r4
	bl	jinit_phuff_decoder(PLT)
	ldr	r3, [r6, #4]
	cmp	r3, #0
	ble	.L57
	movs	r7, #0
	mov	r5, r7
	cmp	r10, #0
	beq	.L56
	b	.L117
.L123:
	ldr	r3, [r4, #448]
	str	r5, [r4, #152]
	adds	r5, r5, #1
	str	r8, [r4, #156]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r6, #4]
	cmp	r5, r3
	bge	.L55
.L56:
	ldr	r3, [r4, #448]
	mov	r0, r4
	ldr	r3, [r3, #20]
	blx	r3
	ldr	r3, [r6, #16]
	mov	r0, r4
	ldr	r1, [r3, r7]
	adds	r7, r7, #40
	bl	jset_input_stream_position(PLT)
	ldr	r3, [r4, #448]
	mov	r1, r6
	mov	r2, r5
	mov	r0, r4
	str	r9, [r4, #428]
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #2
	mov	r2, r5
	mov	r1, r6
	mov	r0, r4
	bne	.L123
.L53:
	movs	r3, #210
	str	r3, [r4, #20]
	b	.L49
.L124:
	ldr	r3, [r6, #16]
	ldr	lr, [r4, #456]
	str	r8, [r4, #156]
	add	r3, r3, r7
	adds	r7, r7, #40
	add	r2, r3, #28
	adds	r3, r3, #16
	ldmia	r2, {r0, r1}
	stmia	sp, {r0, r1}
	mov	r0, r4
	ldmia	r3, {r1, r2, r3}
	ldr	ip, [lr, #12]
	blx	ip
	ldr	r3, [r4, #448]
	mov	r2, r5
	str	r5, [r4, #152]
	mov	r0, r4
	mov	r1, r6
	adds	r5, r5, #1
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r6, #4]
	cmp	r5, r3
	bge	.L55
.L117:
	ldr	r3, [r4, #448]
	mov	r0, r4
	ldr	r3, [r3, #20]
	blx	r3
	ldr	r3, [r6, #16]
	mov	r0, r4
	ldr	r1, [r3, r7]
	bl	jset_input_stream_position(PLT)
	ldr	r3, [r4, #448]
	mov	r0, r4
	str	r9, [r4, #428]
	mov	r1, r6
	mov	r2, r5
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #2
	bne	.L124
	b	.L53
.L55:
	cbz	r0, .L57
	cmp	r0, #2
	beq	.L53
	ldr	r3, [r4, #8]
	cbz	r3, .L60
	bic	r0, r0, #2
	cmp	r0, #1
	bne	.L60
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #8]
	adds	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #4]
	blt	.L60
	ldr	r2, [r4, #332]
	add	r1, r1, r2
	str	r1, [r3, #8]
.L59:
	add	r10, r10, #1
	cmp	r10, r2
	mov	r8, r10
	bcc	.L61
	b	.L53
.L60:
	ldr	r2, [r4, #332]
	b	.L59
.L57:
	movs	r5, #0
	b	.L63
.L126:
	.align	2
.L125:
	.word	.LC1-(.LPIC1+4)
	.word	.LC0-(.LPIC0+4)
	.size	jpeg_build_huffman_index, .-jpeg_build_huffman_index
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Progressive Mode\000"
	.space	3
.LC1:
	.ascii	"Baseline Mode\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
