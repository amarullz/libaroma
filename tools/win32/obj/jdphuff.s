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
	.file	"jdphuff.c"
	.section	.text.start_pass_phuff_decoder,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_phuff_decoder, %function
start_pass_phuff_decoder:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #412]
	clz	r2, r3
	lsrs	r2, r2, #5
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r10, [r0, #456]
	mov	r4, r0
	str	r2, [sp, #4]
	ldr	r0, [r0, #416]
	cmp	r2, #0
	beq	.L2
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
.L3:
	ldr	r1, [r4, #420]
	ldr	r2, [r4, #424]
	cbz	r1, .L6
	subs	r1, r1, #1
	cmp	r2, r1
	bne	.L7
.L6:
	cmp	r2, #13
	ble	.L38
.L7:
	ldr	r2, [r4]
	movs	r5, #16
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	ldr	r1, [r4, #416]
	str	r5, [r2, #20]
	str	r1, [r3, #28]
	ldr	r3, [r4]
	ldr	r2, [r4, #420]
	str	r2, [r3, #32]
	ldr	r3, [r4]
	ldr	r2, [r4, #424]
	str	r2, [r3, #36]
	ldr	r3, [r4]
	ldr	r3, [r3]
	blx	r3
.L8:
	ldr	r3, [r4, #340]
	cmp	r3, #0
	ble	.L9
	mov	r9, r4
	mov	r8, #0
	movs	r7, #115
.L16:
	ldr	r3, [r9, #344]
	ldr	r2, [sp, #4]
	ldr	r1, [r4, #168]
	ldr	r6, [r3, #4]
	lsls	r3, r6, #8
	add	fp, r1, r3
	cbnz	r2, .L10
	ldr	r3, [r1, r3]
	cmp	r3, #0
	blt	.L39
.L10:
	ldr	r5, [r4, #412]
	ldr	r3, [r4, #416]
	cmp	r5, r3
	it	le
	addle	fp, fp, r5, lsl #2
	bgt	.L14
.L15:
	ldr	r3, [fp], #4
	mov	r0, r4
	ldr	r2, [r4, #420]
	mov	r1, #-1
	bic	lr, r3, r3, asr #31
	cmp	r2, lr
	beq	.L13
	ldr	r3, [r4]
	str	r6, [r3, #24]
	ldr	r2, [r4]
	str	r7, [r3, #20]
	str	r5, [r2, #28]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	blx	r3
.L13:
	ldr	r3, [r4, #424]
	adds	r5, r5, #1
	str	r3, [fp, #-4]
	ldr	r3, [r4, #416]
	cmp	r3, r5
	bge	.L15
.L14:
	ldr	r3, [r4, #340]
	add	r8, r8, #1
	add	r9, r9, #4
	cmp	r3, r8
	bgt	.L16
.L9:
	ldr	r2, [r4, #420]
	ldr	r1, [sp, #4]
	cbnz	r2, .L17
	cmp	r1, #0
	beq	.L18
	ldr	r1, .L45
.LPIC8:
	add	r1, pc
	str	r1, [r10, #4]
	b	.L19
.L2:
	cmp	r3, r0
	it	gt
	movgt	r0, #1
	ble	.L40
	ldr	r2, [r4, #340]
	cmp	r2, #1
	it	ne
	movne	r0, #1
	b	.L3
.L17:
	cmp	r1, #0
	beq	.L21
	ldr	r1, .L45+4
.LPIC10:
	add	r1, pc
	str	r1, [r10, #4]
.L19:
	cmp	r3, #0
	ble	.L22
	ldr	r1, [r4, #344]
	cmp	r2, #0
	beq	.L41
.L24:
	cmp	r3, #1
	mov	r2, #0
	str	r2, [r10, #40]
	ble	.L22
	ldr	r2, [r4, #420]
	ldr	r1, [r4, #348]
	cmp	r2, #0
	beq	.L42
.L25:
	cmp	r3, #2
	mov	r2, #0
	str	r2, [r10, #44]
	ble	.L22
	ldr	r2, [r4, #420]
	ldr	r1, [r4, #352]
	cmp	r2, #0
	beq	.L43
.L26:
	cmp	r3, #3
	mov	r2, #0
	str	r2, [r10, #48]
	ble	.L22
	ldr	r3, [r4, #420]
	ldr	r2, [r4, #356]
	cmp	r3, #0
	beq	.L44
.L27:
	movs	r3, #0
	str	r3, [r10, #52]
.L22:
	ldr	r2, [r4, #288]
	movs	r3, #0
	str	r3, [r10, #32]
	str	r3, [r10, #28]
	str	r2, [r10, #56]
	str	r3, [r10, #20]
	str	r3, [r10, #36]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L38:
	cmp	r0, #0
	beq	.L8
	b	.L7
.L21:
	ldr	r2, .L45+8
.LPIC11:
	add	r2, pc
	str	r2, [r10, #4]
.L20:
	cmp	r3, #0
	ble	.L22
	movs	r5, #0
	mov	r7, r4
	mov	r9, r5
	mov	r6, r10
.L23:
	ldr	r3, [r7, #344]
	mov	r0, r4
	movs	r1, #0
	adds	r5, r5, #1
	adds	r7, r7, #4
	adds	r6, r6, #4
	ldr	r2, [r3, #24]
	add	r8, r2, #14
	add	r8, r10, r8, lsl #2
	add	r3, r8, #4
	bl	jpeg_make_d_derived_tbl(PLT)
	ldr	r3, [r8, #4]
	str	r3, [r10, #76]
	str	r9, [r6, #36]
	ldr	r3, [r4, #340]
	cmp	r3, r5
	bgt	.L23
	b	.L22
.L40:
	ldr	r2, [r4, #340]
	cmp	r0, #63
	ite	le
	movle	r0, #0
	movgt	r0, #1
	cmp	r2, #1
	it	ne
	movne	r0, #1
	b	.L3
.L18:
	ldr	r2, .L45+12
.LPIC9:
	add	r2, pc
	str	r2, [r10, #4]
	b	.L20
.L39:
	ldr	r3, [r4]
	mov	r0, r4
	mov	r1, #-1
	str	r6, [r3, #24]
	ldr	r5, [r4]
	str	r7, [r3, #20]
	str	r2, [r5, #28]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	blx	r3
	b	.L10
.L41:
	ldr	r3, [r1, #20]
	mov	r0, r4
	movs	r1, #1
	mov	r2, r3
	add	r3, r10, r3, lsl #2
	adds	r3, r3, #60
	bl	jpeg_make_d_derived_tbl(PLT)
	ldr	r3, [r4, #340]
	b	.L24
.L44:
	ldr	r3, [r2, #20]
	mov	r0, r4
	movs	r1, #1
	mov	r2, r3
	add	r3, r10, r3, lsl #2
	adds	r3, r3, #60
	bl	jpeg_make_d_derived_tbl(PLT)
	b	.L27
.L43:
	ldr	r3, [r1, #20]
	mov	r0, r4
	movs	r1, #1
	mov	r2, r3
	add	r3, r10, r3, lsl #2
	adds	r3, r3, #60
	bl	jpeg_make_d_derived_tbl(PLT)
	ldr	r3, [r4, #340]
	b	.L26
.L42:
	ldr	r3, [r1, #20]
	mov	r0, r4
	movs	r1, #1
	mov	r2, r3
	add	r3, r10, r3, lsl #2
	adds	r3, r3, #60
	bl	jpeg_make_d_derived_tbl(PLT)
	ldr	r3, [r4, #340]
	b	.L25
.L46:
	.align	2
.L45:
	.word	decode_mcu_DC_first-(.LPIC8+4)
	.word	decode_mcu_DC_refine-(.LPIC10+4)
	.word	decode_mcu_AC_refine-(.LPIC11+4)
	.word	decode_mcu_AC_first-(.LPIC9+4)
	.size	start_pass_phuff_decoder, .-start_pass_phuff_decoder
	.section	.text.decode_mcu_AC_refine,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	decode_mcu_AC_refine, %function
decode_mcu_AC_refine:
	@ args = 0, pretend = 0, frame = 328
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #340
	ldr	r3, [r0, #288]
	mov	r5, r1
	ldr	r6, .L145
	ldr	r4, [r0, #456]
	str	r0, [sp, #16]
.LPIC12:
	add	r6, pc
	ldr	r9, [r0, #416]
	str	r4, [sp, #24]
	str	r6, [sp, #40]
	ldr	r4, [r0, #424]
	cmp	r3, #0
	beq	.L48
	ldr	r1, [sp, #24]
	ldr	r6, [r1, #56]
	cmp	r6, #0
	beq	.L49
	ldr	r3, [r1, #20]
.L50:
	cmp	r3, #0
	bne	.L58
.L133:
	ldr	r6, [sp, #16]
	mov	r10, #1
	mov	r3, #-1
	lsl	r10, r10, r4
	lsls	r3, r3, r4
	ldr	r4, [sp, #16]
	ldr	r0, [r6, #24]
	add	fp, sp, #56
	ldr	r6, [sp, #24]
	ldr	r7, [r5]
	ldr	r1, [r0, #8]
	ldr	r6, [r6, #36]
	ldr	r5, [r0]
	str	r3, [sp, #44]
	str	r6, [sp, #48]
	ldr	r6, [sp, #24]
	str	r4, [fp, #16]
	str	r5, [fp]
	ldr	r4, [r6, #76]
	ldr	r3, [r6, #28]
	ldr	r2, [r6, #32]
	ldr	r6, [sp, #16]
	str	r4, [sp, #28]
	str	r1, [fp, #4]
	ldr	r4, [r6, #412]
	ldr	r6, [sp, #48]
	cmp	r6, #0
	bne	.L91
	cmp	r9, r4
	blt	.L84
	add	r5, sp, #80
	str	r6, [sp, #36]
	str	r5, [sp, #52]
.L83:
	cmp	r2, #7
	ble	.L139
.L61:
	sub	r0, r2, #8
	ldr	r6, [sp, #28]
	asr	r0, r3, r0
	uxtb	r0, r0
	add	r1, r0, #36
	ldr	r1, [r6, r1, lsl #2]
	cmp	r1, #0
	beq	.L93
	add	r0, r0, r6
	subs	r2, r2, r1
	ldrb	r0, [r0, #1168]	@ zero_extendqisi2
.L64:
	ands	ip, r0, #15
	asr	r8, r0, #4
	beq	.L65
	cmp	ip, #1
	beq	.L66
	ldr	r6, [sp, #16]
	mov	r1, #-1
	ldr	r5, [r6]
	mov	r0, r6
	movs	r6, #118
	str	r6, [r5, #20]
	ldr	r5, [r5, #4]
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	blx	r5
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
.L66:
	cmp	r2, #0
	ble	.L140
.L67:
	subs	r2, r2, #1
	ldr	ip, [sp, #44]
	asr	r1, r3, r2
	tst	r1, #1
	it	ne
	movne	ip, r10
.L72:
	ldr	r6, [sp, #40]
	ldr	r1, .L145+4
	ldr	r1, [r6, r1]
	str	ip, [sp, #32]
	str	r1, [sp, #20]
	add	r6, r1, r4, lsl #2
	mov	r1, r3
	subs	r6, r6, #4
	b	.L80
.L142:
	cmp	r2, #0
	ble	.L141
.L76:
	subs	r2, r2, #1
	asr	r0, r1, r2
	lsls	r0, r0, #31
	bpl	.L77
	ldrh	r0, [r7, r5, lsl #1]
	sxth	r3, r0
	tst	r3, r10
	bne	.L77
	cmp	r3, #0
	itet	lt
	ldrlt	r3, [sp, #44]
	addge	r0, r0, r10
	addlt	r0, r0, r3
	strh	r0, [r7, r5, lsl #1]	@ movhi
.L77:
	adds	r4, r4, #1
	cmp	r9, r4
	blt	.L79
.L80:
	ldr	r5, [r6, #4]!
	ldrsh	r0, [r7, r5, lsl #1]
	cmp	r0, #0
	bne	.L142
	adds	r8, r8, #-1
	bcs	.L77
.L79:
	ldr	ip, [sp, #32]
	mov	r3, r1
	cmp	ip, #0
	beq	.L81
	ldr	r5, [sp, #20]
	add	r0, sp, #80
	ldr	r6, [sp, #36]
	ldr	r1, [r5, r4, lsl #2]
	str	r1, [r0, r6, lsl #2]
	adds	r6, r6, #1
	str	r6, [sp, #36]
	strh	ip, [r7, r1, lsl #1]	@ movhi
.L81:
	adds	r4, r4, #1
	cmp	r9, r4
	bge	.L83
	ldr	r4, [sp, #16]
	ldr	r5, [fp]
	ldr	r1, [fp, #4]
	ldr	r0, [r4, #24]
.L84:
	ldr	r6, [sp, #24]
	ldr	r4, [sp, #48]
	str	r5, [r0]
	str	r1, [r0, #8]
	str	r3, [r6, #28]
	str	r2, [r6, #32]
	str	r4, [r6, #36]
.L58:
	ldr	r5, [sp, #24]
	movs	r0, #1
	ldr	r3, [r5, #56]
	subs	r3, r3, #1
	str	r3, [r5, #56]
	add	sp, sp, #340
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L48:
	ldr	r6, [sp, #24]
	ldr	r3, [r6, #20]
	b	.L50
.L91:
	movs	r5, #0
	str	r5, [sp, #36]
.L59:
	cmp	r9, r4
	blt	.L85
	ldr	r6, [sp, #40]
	ldr	r1, .L145+4
	ldr	r1, [r6, r1]
	add	r1, r1, r4, lsl #2
	subs	r6, r1, #4
	mov	r1, r3
	b	.L89
.L87:
	subs	r2, r2, #1
	asr	r0, r1, r2
	lsls	r3, r0, #31
	bpl	.L86
	ldrh	r0, [r7, r5, lsl #1]
	sxth	lr, r0
	tst	lr, r10
	bne	.L86
	cmp	lr, #0
	add	r3, r0, r10
	itett	lt
	ldrlt	r3, [sp, #44]
	strhge	r3, [r7, r5, lsl #1]	@ movhi
	addlt	r0, r0, r3
	strhlt	r0, [r7, r5, lsl #1]	@ movhi
.L86:
	adds	r4, r4, #1
	cmp	r9, r4
	blt	.L143
.L89:
	ldr	r5, [r6, #4]!
	ldrsh	r0, [r7, r5, lsl #1]
	cmp	r0, #0
	beq	.L86
	cmp	r2, #0
	bgt	.L87
	mov	r0, fp
	movs	r3, #1
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L62
	ldr	r1, [fp, #8]
	ldr	r2, [fp, #12]
	b	.L87
.L141:
	mov	r0, fp
	movs	r3, #1
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L62
	ldr	r1, [fp, #8]
	ldr	r2, [fp, #12]
	b	.L76
.L65:
	cmp	r8, #15
	beq	.L72
	movs	r1, #1
	lsl	r1, r1, r8
	str	r1, [sp, #48]
	cmp	r8, #0
	beq	.L73
	cmp	r8, r2
	bgt	.L144
.L74:
	ldr	r5, [sp, #48]
	rsb	r2, r8, r2
	asr	r0, r3, r2
	subs	r1, r5, #1
	ands	r1, r1, r0
	add	r5, r5, r1
	str	r5, [sp, #48]
.L73:
	ldr	r5, [sp, #48]
	cmp	r5, #0
	bne	.L59
	ldr	r6, [sp, #16]
	ldr	r5, [fp]
	ldr	r1, [fp, #4]
	ldr	r0, [r6, #24]
	b	.L84
.L93:
	movs	r1, #9
.L63:
	str	r1, [sp]
	mov	r0, fp
	mov	r1, r3
	ldr	r3, [sp, #28]
	bl	jpeg_huff_decode(PLT)
	cmp	r0, #0
	blt	.L62
	ldr	r3, [fp, #8]
	ldr	r2, [fp, #12]
	b	.L64
.L139:
	mov	r1, r3
	mov	r0, fp
	movs	r3, #0
	bl	jpeg_fill_bit_buffer(PLT)
	cbz	r0, .L62
	ldr	r2, [fp, #12]
	ldr	r3, [fp, #8]
	cmp	r2, #7
	bgt	.L61
	movs	r1, #1
	b	.L63
.L140:
	mov	r1, r3
	mov	r0, fp
	movs	r3, #1
	bl	jpeg_fill_bit_buffer(PLT)
	cbz	r0, .L62
	ldr	r3, [fp, #8]
	ldr	r2, [fp, #12]
	b	.L67
.L62:
	ldr	r4, [sp, #36]
	add	r1, sp, #80
	movs	r0, #0
	add	r3, r1, r4, lsl #2
	cbz	r4, .L70
.L90:
	ldr	r2, [r3, #-4]!
	cmp	r3, r1
	strh	r0, [r7, r2, lsl #1]	@ movhi
	bne	.L90
.L70:
	movs	r0, #0
	add	sp, sp, #340
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L49:
	ldr	r3, [sp, #16]
	ldr	r2, [r3, #452]
	ldr	r3, [sp, #24]
	ldr	r7, [r2, #12]
	ldr	r1, [r3, #32]
	ldr	r3, [r2, #32]
	add	lr, r1, #7
	bics	r1, r1, r1, asr #32
	it	cs
	movcs	r1, lr
	add	r3, r3, r1, asr #3
	ldr	r1, [sp, #24]
	str	r3, [r2, #32]
	str	r6, [r1, #32]
	blx	r7
	cmp	r0, #0
	beq	.L70
	ldr	r3, [sp, #16]
	ldr	r2, [r3, #340]
	cmp	r2, #0
	ble	.L56
	ldr	r0, [sp, #24]
	mov	r1, r6
	lsls	r2, r2, #2
	adds	r0, r0, #40
	bl	memset(PLT)
.L56:
	ldr	r6, [sp, #16]
	movs	r1, #0
	ldr	r3, [r6, #428]
	ldr	r2, [r6, #288]
	ldr	r6, [sp, #24]
	str	r1, [r6, #36]
	str	r2, [r6, #56]
	cmp	r3, #0
	bne	.L48
	str	r3, [r6, #20]
	b	.L133
.L143:
	mov	r3, r1
.L85:
	ldr	r5, [sp, #48]
	ldr	r4, [sp, #16]
	ldr	r1, [fp, #4]
	subs	r5, r5, #1
	str	r5, [sp, #48]
	ldr	r0, [r4, #24]
	ldr	r5, [fp]
	b	.L84
.L144:
	mov	r1, r3
	mov	r0, fp
	mov	r3, r8
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L62
	ldr	r3, [fp, #8]
	ldr	r2, [fp, #12]
	b	.L74
.L146:
	.align	2
.L145:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.word	jpeg_natural_order(GOT)
	.size	decode_mcu_AC_refine, .-decode_mcu_AC_refine
	.section	.text.decode_mcu_AC_first,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	decode_mcu_AC_first, %function
decode_mcu_AC_first:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #288]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	ldr	fp, .L198
	sub	sp, sp, #52
	mov	r4, r1
	ldr	r7, [r0, #456]
	ldr	r9, [r0, #416]
.LPIC13:
	add	fp, pc
	ldr	ip, [r0, #424]
	cbz	r3, .L148
	ldr	r5, [r7, #56]
	cmp	r5, #0
	beq	.L149
.L148:
	ldr	r3, [r7, #20]
	cbnz	r3, .L158
.L191:
	ldr	r0, [r7, #36]
	str	r0, [sp, #12]
	cbz	r0, .L159
	subs	r0, r0, #1
	mov	r3, r0
	str	r0, [sp, #12]
.L160:
	str	r3, [r7, #36]
.L158:
	ldr	r3, [r7, #56]
	movs	r0, #1
	subs	r3, r3, #1
	str	r3, [r7, #56]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L159:
	ldr	r3, [r8, #24]
	ldr	r5, [r8, #412]
	str	r8, [sp, #40]
	ldr	lr, [r3]
	ldr	r0, [r3, #8]
	cmp	r9, r5
	ldr	r4, [r4]
	str	lr, [sp, #24]
	str	r0, [sp, #28]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #32]
	ldr	r6, [r7, #76]
	blt	.L161
	str	r7, [sp, #16]
	mov	r10, #1
	str	r8, [sp, #20]
	mov	r7, ip
	mov	r8, r5
	mov	r5, fp
	mov	fp, r4
	b	.L174
.L196:
	cmp	r2, r4
	add	r8, r8, r3
	blt	.L193
.L167:
	subs	r2, r2, r4
	lsl	r3, r10, r4
	subs	r0, r4, #1
	asr	lr, r1, r2
	lsl	r0, r10, r0
	subs	r3, r3, #1
	and	r3, lr, r3
	cmp	r3, r0
	itt	lt
	movlt	r0, #-1
	lsllt	r4, r0, r4
	ldr	r0, .L198+4
	it	lt
	addlt	r4, r4, #1
	ldr	r0, [r5, r0]
	it	lt
	addlt	r3, r3, r4
	lsls	r3, r3, r7
	ldr	r0, [r0, r8, lsl #2]
	strh	r3, [fp, r0, lsl #1]	@ movhi
.L169:
	add	r8, r8, #1
	cmp	r9, r8
	blt	.L194
.L174:
	cmp	r2, #7
	ble	.L195
.L162:
	sub	r0, r2, #8
	asr	r0, r1, r0
	uxtb	r0, r0
	add	r3, r0, #36
	ldr	r3, [r6, r3, lsl #2]
	cbz	r3, .L176
	add	r0, r0, r6
	subs	r2, r2, r3
	ldrb	r0, [r0, #1168]	@ zero_extendqisi2
.L165:
	ands	r4, r0, #15
	asr	r3, r0, #4
	bne	.L196
	cmp	r3, #15
	bne	.L170
	add	r8, r8, #15
	b	.L169
.L176:
	movs	r3, #9
	add	r4, sp, #24
.L164:
	str	r3, [sp]
	mov	r0, r4
	mov	r3, r6
	bl	jpeg_huff_decode(PLT)
	cmp	r0, #0
	blt	.L163
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	b	.L165
.L195:
	add	r4, sp, #24
	movs	r3, #0
	mov	r0, r4
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L163
	ldr	r2, [sp, #36]
	ldr	r1, [sp, #32]
	cmp	r2, #7
	bgt	.L162
	movs	r3, #1
	b	.L164
.L193:
	add	r0, sp, #24
	mov	r3, r4
	bl	jpeg_fill_bit_buffer(PLT)
	cbz	r0, .L163
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	b	.L167
.L149:
	ldr	r2, [r0, #452]
	ldr	r1, [r7, #32]
	ldr	r3, [r2, #32]
	add	lr, r1, #7
	ldr	r6, [r2, #12]
	bics	r1, r1, r1, asr #32
	it	cs
	movcs	r1, lr
	add	r3, r3, r1, asr #3
	str	r3, [r2, #32]
	str	r5, [r7, #32]
	str	ip, [sp, #8]
	blx	r6
	ldr	ip, [sp, #8]
	cbz	r0, .L163
	ldr	r2, [r8, #340]
	cmp	r2, #0
	ble	.L156
	mov	r1, r5
	lsls	r2, r2, #2
	add	r0, r7, #40
	str	ip, [sp, #8]
	bl	memset(PLT)
	ldr	ip, [sp, #8]
.L156:
	ldr	r3, [r8, #428]
	movs	r1, #0
	ldr	r2, [r8, #288]
	str	r1, [r7, #36]
	str	r2, [r7, #56]
	cmp	r3, #0
	bne	.L148
	str	r3, [r7, #20]
	b	.L191
.L163:
	movs	r0, #0
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L170:
	movs	r4, #1
	mov	ip, r3
	lsls	r4, r4, r3
	ldr	r7, [sp, #16]
	ldr	r8, [sp, #20]
	mov	r3, r4
	cmp	ip, #0
	beq	.L171
	cmp	ip, r2
	bgt	.L197
.L172:
	rsb	r2, ip, r2
	subs	r3, r4, #1
	asr	r0, r1, r2
	ands	r3, r3, r0
	add	r3, r3, r4
.L171:
	subs	r3, r3, #1
	ldr	lr, [sp, #24]
	str	r3, [sp, #12]
	ldr	r0, [sp, #28]
	ldr	r3, [r8, #24]
.L161:
	str	lr, [r3]
	str	r0, [r3, #8]
	str	r1, [r7, #28]
	str	r2, [r7, #32]
	ldr	r3, [sp, #12]
	b	.L160
.L194:
	ldr	r8, [sp, #20]
	ldr	r7, [sp, #16]
	ldr	lr, [sp, #24]
	ldr	r3, [r8, #24]
	ldr	r0, [sp, #28]
	b	.L161
.L197:
	mov	r3, ip
	add	r0, sp, #24
	str	ip, [sp, #8]
	bl	jpeg_fill_bit_buffer(PLT)
	ldr	ip, [sp, #8]
	cmp	r0, #0
	beq	.L163
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #36]
	b	.L172
.L199:
	.align	2
.L198:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
	.word	jpeg_natural_order(GOT)
	.size	decode_mcu_AC_first, .-decode_mcu_AC_first
	.section	.text.decode_mcu_DC_refine,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	decode_mcu_DC_refine, %function
decode_mcu_DC_refine:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #424]
	ldr	r2, [r0, #288]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, #1
	sub	sp, sp, #24
	mov	r7, r0
	mov	r5, r1
	lsl	r8, r8, r3
	ldr	r10, [r0, #456]
	cbz	r2, .L201
	ldr	r4, [r10, #56]
	cmp	r4, #0
	beq	.L224
.L201:
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #368]
	str	r7, [sp, #16]
	ldr	r6, [r3]
	ldr	r4, [r3, #8]
	cmp	r0, #0
	ldr	r1, [r10, #28]
	str	r6, [sp]
	str	r4, [sp, #4]
	ldr	r2, [r10, #32]
	ble	.L208
	subs	r5, r5, #4
	movs	r4, #0
	b	.L213
.L209:
	subs	r2, r2, #1
	asr	r3, r1, r2
	lsls	r3, r3, #31
	ittt	mi
	ldrhmi	r3, [r6]
	orrmi	r3, r8, r3
	strhmi	r3, [r6]	@ movhi
	cmp	r4, r0
	bge	.L225
.L213:
	cmp	r2, #0
	add	r4, r4, #1
	ldr	r6, [r5, #4]!
	bgt	.L209
	mov	r0, sp
	movs	r3, #1
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L210
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #12]
	ldr	r0, [r7, #368]
	b	.L209
.L225:
	ldr	r3, [r7, #24]
	ldr	r6, [sp]
	ldr	r4, [sp, #4]
.L208:
	ldr	r5, [r10, #56]
	movs	r0, #1
	str	r6, [r3]
	str	r4, [r3, #8]
	subs	r3, r5, #1
	str	r1, [r10, #28]
	str	r2, [r10, #32]
	str	r3, [r10, #56]
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L224:
	ldr	r3, [r0, #452]
	ldr	r1, [r10, #32]
	ldr	r2, [r3, #32]
	add	lr, r1, #7
	ldr	r6, [r3, #12]
	bics	r1, r1, r1, asr #32
	it	cs
	movcs	r1, lr
	add	r2, r2, r1, asr #3
	str	r2, [r3, #32]
	str	r4, [r10, #32]
	blx	r6
	cbz	r0, .L210
	ldr	r2, [r7, #340]
	cmp	r2, #0
	ble	.L207
	mov	r1, r4
	lsls	r2, r2, #2
	add	r0, r10, #40
	bl	memset(PLT)
.L207:
	ldr	r3, [r7, #428]
	movs	r1, #0
	ldr	r2, [r7, #288]
	str	r1, [r10, #36]
	str	r2, [r10, #56]
	cmp	r3, #0
	bne	.L201
	str	r3, [r10, #20]
	b	.L201
.L210:
	movs	r0, #0
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	decode_mcu_DC_refine, .-decode_mcu_DC_refine
	.section	.text.decode_mcu_DC_first,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	decode_mcu_DC_first, %function
decode_mcu_DC_first:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #76
	ldr	r6, [r0, #456]
	mov	r9, r0
	mov	r10, r1
	ldr	r3, [r0, #288]
	str	r6, [sp, #20]
	ldr	r6, [r0, #424]
	str	r6, [sp, #16]
	cmp	r3, #0
	beq	.L227
	ldr	ip, [sp, #20]
	ldr	r4, [ip, #56]
	cmp	r4, #0
	beq	.L228
	ldr	r3, [ip, #20]
	cmp	r3, #0
	bne	.L237
.L261:
	ldr	r6, [sp, #20]
	add	ip, sp, #52
	ldr	r5, [r9, #24]
	mov	r4, ip
	str	ip, [sp, #28]
	adds	r6, r6, #36
	ldr	ip, [sp, #20]
	str	r6, [sp, #24]
	ldmia	r6!, {r0, r1, r2, r3}
	ldr	r7, [r5]
	str	r9, [sp, #48]
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r9, #368]
	ldr	lr, [r6]
	ldr	r6, [r5, #8]
	cmp	r3, #0
	str	r7, [sp, #32]
	str	lr, [r4]
	str	r6, [sp, #36]
	ldr	lr, [ip, #28]
	ldr	r4, [ip, #32]
	ble	.L238
	sub	r10, r10, #4
	mov	r5, r9
	movs	r7, #0
	mov	r1, lr
	mov	r2, r4
	mov	fp, ip
.L246:
	ldr	r6, [r5, #372]
	cmp	r2, #7
	ldr	r8, [r10, #4]!
	add	r3, r6, #86
	ldr	r3, [r9, r3, lsl #2]
	ldr	r3, [r3, #20]
	add	r3, fp, r3, lsl #2
	ldr	r4, [r3, #60]
	ble	.L263
.L239:
	sub	r0, r2, #8
	asr	r0, r1, r0
	uxtb	r0, r0
	add	r3, r0, #36
	ldr	r3, [r4, r3, lsl #2]
	cmp	r3, #0
	beq	.L248
	add	r4, r4, r0
	subs	r2, r2, r3
	ldrb	r4, [r4, #1168]	@ zero_extendqisi2
.L242:
	cbz	r4, .L243
	cmp	r4, r2
	bgt	.L264
.L244:
	movs	r3, #1
	subs	r2, r2, r4
	lsls	r3, r3, r4
	subs	r0, r4, #1
	mov	ip, #1
	asr	lr, r1, r2
	lsl	r0, ip, r0
	subs	r3, r3, #1
	and	r3, lr, r3
	cmp	r3, r0
	itett	lt
	movlt	r0, #-1
	movge	r4, r3
	lsllt	r4, r0, r4
	addlt	r4, r4, ip
	it	lt
	addlt	r4, r4, r3
.L243:
	add	r3, sp, #72
	ldr	r0, [sp, #16]
	add	r6, r3, r6, lsl #2
	ldr	lr, [r9, #368]
	adds	r7, r7, #1
	ldr	r3, [r6, #-16]
	adds	r5, r5, #4
	cmp	lr, r7
	add	r4, r4, r3
	lsl	r3, r4, r0
	str	r4, [r6, #-16]
	strh	r3, [r8]	@ movhi
	bgt	.L246
	ldr	r5, [r9, #24]
	mov	lr, r1
	ldr	r7, [sp, #32]
	mov	r4, r2
	ldr	r6, [sp, #36]
.L238:
	add	r8, sp, #52
	str	r6, [r5, #8]
	ldmia	r8!, {r0, r1, r2, r3}
	str	r7, [r5]
	ldr	r6, [sp, #20]
	ldr	ip, [sp, #24]
	ldr	r5, [r8]
	str	lr, [r6, #28]
	str	r4, [r6, #32]
	stmia	ip!, {r0, r1, r2, r3}
	str	r5, [ip]
.L237:
	ldr	ip, [sp, #20]
	movs	r0, #1
	ldr	r3, [ip, #56]
	subs	r3, r3, #1
	str	r3, [ip, #56]
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L227:
	ldr	r6, [sp, #20]
	ldr	r3, [r6, #20]
	cmp	r3, #0
	bne	.L237
	b	.L261
.L248:
	movs	r3, #9
	add	ip, sp, #32
.L241:
	str	r3, [sp]
	mov	r0, ip
	mov	r3, r4
	bl	jpeg_huff_decode(PLT)
	subs	r4, r0, #0
	blt	.L240
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #44]
	b	.L242
.L263:
	add	ip, sp, #32
	movs	r3, #0
	mov	r0, ip
	str	ip, [sp, #12]
	bl	jpeg_fill_bit_buffer(PLT)
	ldr	ip, [sp, #12]
	cbz	r0, .L240
	ldr	r2, [sp, #44]
	ldr	r1, [sp, #40]
	cmp	r2, #7
	bgt	.L239
	movs	r3, #1
	b	.L241
.L264:
	add	r0, sp, #32
	mov	r3, r4
	bl	jpeg_fill_bit_buffer(PLT)
	cbz	r0, .L240
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #44]
	b	.L244
.L240:
	movs	r0, #0
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L228:
	ldr	r3, [r0, #452]
	ldr	r1, [ip, #32]
	ldr	ip, [sp, #20]
	ldr	r2, [r3, #32]
	adds	r6, r1, #7
	ldr	r5, [r3, #12]
	bics	r1, r1, r1, asr #32
	it	cs
	movcs	r1, r6
	add	r2, r2, r1, asr #3
	str	r2, [r3, #32]
	str	r4, [ip, #32]
	blx	r5
	cmp	r0, #0
	beq	.L240
	ldr	r2, [r9, #340]
	cmp	r2, #0
	ble	.L235
	ldr	r0, [sp, #20]
	mov	r1, r4
	lsls	r2, r2, #2
	adds	r0, r0, #40
	bl	memset(PLT)
.L235:
	ldr	r3, [r9, #428]
	movs	r1, #0
	ldr	r2, [r9, #288]
	ldr	r6, [sp, #20]
	str	r1, [r6, #36]
	str	r2, [r6, #56]
	cmp	r3, #0
	bne	.L227
	str	r3, [r6, #20]
	b	.L261
	.size	decode_mcu_DC_first, .-decode_mcu_DC_first
	.section	.text.jpeg_get_huffman_decoder_configuration_progressive,"ax",%progbits
	.align	2
	.global	jpeg_get_huffman_decoder_configuration_progressive
	.thumb
	.thumb_func
	.type	jpeg_get_huffman_decoder_configuration_progressive, %function
jpeg_get_huffman_decoder_configuration_progressive:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, [r0, #288]
	mov	r5, r1
	ldr	r6, [r0, #456]
	ldr	r7, [r6, #56]
	cbz	r3, .L267
	cbz	r7, .L277
.L267:
	ldr	r3, [r4, #452]
	mov	r0, r4
	strh	r7, [r5, #16]	@ movhi
	ldr	r3, [r3, #24]
	strb	r3, [r5, #18]
	bl	jget_input_stream_position(PLT)
	ldr	r2, [r6, #32]
	ldr	r3, [r6, #28]
	add	r0, r2, r0, lsl #5
	str	r3, [r5, #12]
	str	r0, [r5]
.L265:
	pop	{r3, r4, r5, r6, r7, pc}
.L277:
	ldr	r3, [r0, #452]
	ldr	r2, [r6, #32]
	ldr	r1, [r3, #32]
	add	lr, r2, #7
	ldr	ip, [r3, #12]
	bics	r2, r2, r2, asr #32
	it	cs
	movcs	r2, lr
	add	r1, r1, r2, asr #3
	str	r1, [r3, #32]
	str	r7, [r6, #32]
	blx	ip
	cmp	r0, #0
	beq	.L265
	ldr	r2, [r4, #340]
	cmp	r2, #0
	ble	.L272
	mov	r1, r7
	lsls	r2, r2, #2
	add	r0, r6, #40
	bl	memset(PLT)
.L272:
	ldr	r3, [r4, #428]
	movs	r2, #0
	ldr	r7, [r4, #288]
	str	r2, [r6, #36]
	str	r7, [r6, #56]
	cmp	r3, #0
	bne	.L267
	str	r3, [r6, #20]
	b	.L267
	.size	jpeg_get_huffman_decoder_configuration_progressive, .-jpeg_get_huffman_decoder_configuration_progressive
	.section	.text.get_huffman_decoder_configuration,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	get_huffman_decoder_configuration, %function
get_huffman_decoder_configuration:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	ldr	r5, [r0, #456]
	mov	r4, r1
	bl	jpeg_get_huffman_decoder_configuration_progressive(PLT)
	ldr	r3, [r6, #340]
	ldr	r2, [r5, #36]
	cmp	r3, #0
	strh	r2, [r4, #10]	@ movhi
	ble	.L278
	ldr	r2, [r5, #40]
	cmp	r3, #1
	strh	r2, [r4, #4]	@ movhi
	ble	.L278
	cmp	r3, #2
	ldr	r2, [r5, #44]
	it	gt
	ldrgt	r3, [r5, #48]
	strh	r2, [r4, #6]	@ movhi
	it	gt
	strhgt	r3, [r4, #8]	@ movhi
.L278:
	pop	{r4, r5, r6, pc}
	.size	get_huffman_decoder_configuration, .-get_huffman_decoder_configuration
	.section	.text.jpeg_configure_huffman_decoder_progressive,"ax",%progbits
	.align	2
	.global	jpeg_configure_huffman_decoder_progressive
	.thumb
	.thumb_func
	.type	jpeg_configure_huffman_decoder_progressive, %function
jpeg_configure_huffman_decoder_progressive:
	@ args = 24, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, r5, r6, r7, lr}
	add	r5, sp, #24
	stmia	r5, {r1, r2, r3}
	movs	r3, #0
	and	r2, r1, #31
	lsrs	r1, r1, #5
	ldr	r7, [r0, #456]
	ldr	r5, [r0, #452]
	ldrh	lr, [sp, #40]
	ldrb	r6, [sp, #42]	@ zero_extendqisi2
	str	r3, [r0, #428]
	str	lr, [r7, #56]
	ldr	r3, [sp, #36]
	str	r6, [r5, #24]
	pop	{r4, r5, r6, r7, lr}
	add	sp, sp, #16
	b	jset_input_stream_position_bit(PLT)
	.size	jpeg_configure_huffman_decoder_progressive, .-jpeg_configure_huffman_decoder_progressive
	.section	.text.configure_huffman_decoder,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	configure_huffman_decoder, %function
configure_huffman_decoder:
	@ args = 24, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	add	r4, sp, #28
	add	r5, sp, #40
	mov	r6, r0
	stmia	r4, {r1, r2, r3}
	ldmia	r5, {r0, r1}
	ldr	r5, [r6, #456]
	stmia	sp, {r0, r1}
	mov	r0, r6
	ldmia	r4, {r1, r2, r3}
	bl	jpeg_configure_huffman_decoder_progressive(PLT)
	ldr	r3, [r6, #340]
	ldrh	r2, [sp, #38]
	cmp	r3, #0
	str	r2, [r5, #36]
	ble	.L284
	ldrsh	r2, [sp, #32]
	cmp	r3, #1
	str	r2, [r5, #40]
	ble	.L284
	cmp	r3, #2
	ldrsh	r2, [sp, #34]
	it	gt
	ldrshgt	r3, [sp, #36]
	str	r2, [r5, #44]
	it	gt
	strgt	r3, [r5, #48]
.L284:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	add	sp, sp, #16
	bx	lr
	.size	configure_huffman_decoder, .-configure_huffman_decoder
	.section	.text.jpeg_configure_huffman_index_scan,"ax",%progbits
	.align	2
	.global	jpeg_configure_huffman_index_scan
	.thumb
	.thumb_func
	.type	jpeg_configure_huffman_index_scan, %function
jpeg_configure_huffman_index_scan:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r2
	ldr	r2, [r1, #4]
	mov	r4, r1
	mov	r8, r0
	mov	r7, r3
	cmp	r2, r5
	ble	.L289
	ldr	r6, [r1, #16]
	ldr	r2, [r0, #332]
.L290:
	add	r5, r5, r5, lsl #2
	lsls	r0, r2, #2
	lsls	r5, r5, #3
	adds	r4, r6, r5
	bl	malloc(PLT)
	str	r0, [r4, #36]
	str	r7, [r6, r5]
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L289:
	add	r9, r5, #1
	ldr	r0, [r1, #16]
	add	r1, r9, r9, lsl #2
	lsls	r1, r1, #3
	bl	realloc(PLT)
	ldr	r2, [r8, #332]
	mov	r6, r0
	ldr	r1, [r4, #4]
	str	r0, [r4, #16]
	add	lr, r2, #10
	ldr	r3, [r4, #12]
	lsl	r0, lr, #2
	subs	r1, r5, r1
	str	r9, [r4, #4]
	mla	r0, r1, r0, r0
	add	r3, r3, r0
	str	r3, [r4, #12]
	b	.L290
	.size	jpeg_configure_huffman_index_scan, .-jpeg_configure_huffman_index_scan
	.section	.text.jinit_phuff_decoder,"ax",%progbits
	.align	2
	.global	jinit_phuff_decoder
	.thumb
	.thumb_func
	.type	jinit_phuff_decoder, %function
jinit_phuff_decoder:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r1, #1
	ldr	r3, [r0, #4]
	mov	r5, r0
	movs	r2, #80
	movs	r4, #0
	ldr	r7, .L297
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r5, #40]
	mov	r3, r0
	ldr	ip, .L297+4
.LPIC16:
	add	r7, pc
	ldr	lr, .L297+8
	mov	r0, r5
	ldr	r6, [r5, #4]
	movs	r1, #1
.LPIC14:
	add	ip, pc
	str	r3, [r5, #456]
.LPIC15:
	add	lr, pc
	lsls	r2, r2, #8
	ldr	r6, [r6]
	str	ip, [r3]
	str	lr, [r3, #12]
	str	r7, [r3, #16]
	str	r4, [r3, #60]
	str	r4, [r3, #64]
	str	r4, [r3, #68]
	str	r4, [r3, #72]
	blx	r6
	ldr	r2, [r5, #40]
	mov	r3, r0
	str	r0, [r5, #168]
	cmp	r2, r4
	ble	.L292
.L294:
	mov	r0, r3
	mov	r2, #256
	mov	r1, #-1
	adds	r4, r4, #1
	bl	memset(PLT)
	ldr	r2, [r5, #40]
	add	r3, r0, #256
	cmp	r2, r4
	bgt	.L294
.L292:
	pop	{r3, r4, r5, r6, r7, pc}
.L298:
	.align	2
.L297:
	.word	get_huffman_decoder_configuration-(.LPIC16+4)
	.word	start_pass_phuff_decoder-(.LPIC14+4)
	.word	configure_huffman_decoder-(.LPIC15+4)
	.size	jinit_phuff_decoder, .-jinit_phuff_decoder
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
