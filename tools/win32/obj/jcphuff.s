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
	.file	"jcphuff.c"
	.section	.text.start_pass_phuff,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_phuff, %function
start_pass_phuff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	ldr	r3, [r0, #324]
	mov	r7, r1
	ldr	r4, [r0, #364]
	ldr	r6, [r0, #316]
	clz	r6, r6
	lsrs	r6, r6, #5
	str	r0, [r4, #32]
	str	r1, [r4, #12]
	cbnz	r3, .L2
	cmp	r6, #0
	beq	.L3
	ldr	r3, .L47
.LPIC10:
	add	r3, pc
	str	r3, [r4, #4]
	b	.L4
.L2:
	cmp	r6, #0
	bne	.L42
	ldr	r2, .L47+4
	ldr	r3, [r4, #64]
.LPIC13:
	add	r2, pc
	str	r2, [r4, #4]
	cmp	r3, #0
	beq	.L43
.L4:
	ldr	r2, .L47+8
.LPIC9:
	add	r2, pc
	cbz	r7, .L6
	ldr	r2, .L47+12
.LPIC8:
	add	r2, pc
.L6:
	ldr	r3, [r5, #244]
	str	r2, [r4, #8]
	cmp	r3, #0
	ble	.L10
	cmp	r6, #0
	bne	.L8
	cmp	r7, #0
	beq	.L44
	mov	fp, r6
	mov	r8, r5
	mov	r9, r6
	mov	r7, r4
	mov	r10, #50
.L17:
	ldr	r3, [r8, #248]
	str	r9, [r7, #36]
	ldr	r6, [r3, #24]
	cmp	r6, #3
	str	r6, [r4, #52]
	bhi	.L12
.L16:
	add	r6, r4, r6, lsl #2
	ldr	r0, [r6, #92]
	cmp	r0, #0
	beq	.L13
.L15:
	movs	r1, #0
	movw	r2, #1028
	bl	memset(PLT)
	ldr	r3, [r5, #244]
	add	fp, fp, #1
	add	r8, r8, #4
	adds	r7, r7, #4
	cmp	fp, r3
	blt	.L17
.L10:
	ldr	r2, [r5, #200]
	movs	r3, #0
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	str	r2, [r4, #68]
	str	r3, [r4, #24]
	str	r3, [r4, #28]
	str	r3, [r4, #72]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L42:
	ldr	r3, .L47+16
.LPIC12:
	add	r3, pc
	str	r3, [r4, #4]
	b	.L4
.L3:
	ldr	r3, .L47+20
.LPIC11:
	add	r3, pc
	str	r3, [r4, #4]
	b	.L4
.L8:
	ldr	r2, [r5, #324]
	cmp	r7, #0
	beq	.L45
	movs	r1, #0
	ldr	r0, [r5, #248]
	str	r1, [r4, #36]
	cbnz	r2, .L23
	ldr	r6, [r0, #20]
	cmp	r6, #3
	bls	.L24
	ldr	r3, [r5]
	movs	r1, #50
	mov	r0, r5
	str	r6, [r3, #24]
	ldr	r2, [r5]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L24:
	add	r6, r4, r6, lsl #2
	ldr	r0, [r6, #92]
	cmp	r0, #0
	beq	.L25
.L26:
	movs	r1, #0
	movw	r2, #1028
	bl	memset(PLT)
	ldr	r3, [r5, #244]
.L23:
	cmp	r3, #1
	ble	.L10
	ldr	r2, [r5, #324]
	movs	r1, #0
	ldr	r0, [r5, #252]
	str	r1, [r4, #40]
	cbnz	r2, .L27
	ldr	r6, [r0, #20]
	cmp	r6, #3
	bls	.L28
	ldr	r3, [r5]
	movs	r1, #50
	mov	r0, r5
	str	r6, [r3, #24]
	ldr	r2, [r5]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L28:
	add	r6, r4, r6, lsl #2
	ldr	r0, [r6, #92]
	cmp	r0, #0
	beq	.L29
.L30:
	movs	r1, #0
	movw	r2, #1028
	bl	memset(PLT)
	ldr	r3, [r5, #244]
.L27:
	cmp	r3, #2
	ble	.L10
	ldr	r2, [r5, #324]
	movs	r1, #0
	ldr	r0, [r5, #256]
	str	r1, [r4, #44]
	cbnz	r2, .L31
	ldr	r6, [r0, #20]
	cmp	r6, #3
	bls	.L32
	ldr	r3, [r5]
	movs	r1, #50
	mov	r0, r5
	str	r6, [r3, #24]
	ldr	r2, [r5]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L32:
	add	r6, r4, r6, lsl #2
	ldr	r0, [r6, #92]
	cmp	r0, #0
	beq	.L33
.L34:
	movs	r1, #0
	movw	r2, #1028
	bl	memset(PLT)
	ldr	r3, [r5, #244]
.L31:
	cmp	r3, #3
	ble	.L10
	ldr	r3, [r5, #324]
	movs	r2, #0
	ldr	r1, [r5, #260]
	str	r2, [r4, #48]
	cmp	r3, #0
	bne	.L10
	ldr	r6, [r1, #20]
	cmp	r6, #3
	bls	.L36
	ldr	r3, [r5]
	movs	r1, #50
	mov	r0, r5
	str	r6, [r3, #24]
	ldr	r2, [r5]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L36:
	add	r6, r4, r6, lsl #2
	ldr	r0, [r6, #92]
	cmp	r0, #0
	beq	.L46
.L37:
	movs	r1, #0
	movw	r2, #1028
	bl	memset(PLT)
	b	.L10
.L12:
	ldr	r3, [r5]
	mov	r0, r5
	str	r6, [r3, #24]
	ldr	r2, [r5]
	str	r10, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L16
.L45:
	ldr	r1, [r5, #248]
	str	r7, [r4, #36]
	cbnz	r2, .L19
	ldr	r3, [r1, #20]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r3
	add	r3, r4, r3, lsl #2
	adds	r3, r3, #76
	bl	jpeg_make_c_derived_tbl(PLT)
	ldr	r3, [r5, #244]
.L19:
	cmp	r3, #1
	ble	.L10
	ldr	r2, [r5, #324]
	movs	r1, #0
	ldr	r0, [r5, #252]
	str	r1, [r4, #40]
	cbnz	r2, .L20
	ldr	r3, [r0, #20]
	movs	r1, #1
	mov	r0, r5
	mov	r2, r3
	add	r3, r4, r3, lsl #2
	adds	r3, r3, #76
	bl	jpeg_make_c_derived_tbl(PLT)
	ldr	r3, [r5, #244]
.L20:
	cmp	r3, #2
	ble	.L10
	ldr	r2, [r5, #324]
	movs	r1, #0
	ldr	r0, [r5, #256]
	str	r1, [r4, #44]
	cbnz	r2, .L21
	ldr	r3, [r0, #20]
	movs	r1, #1
	mov	r0, r5
	mov	r2, r3
	add	r3, r4, r3, lsl #2
	adds	r3, r3, #76
	bl	jpeg_make_c_derived_tbl(PLT)
	ldr	r3, [r5, #244]
.L21:
	cmp	r3, #3
	ble	.L10
	ldr	r3, [r5, #324]
	movs	r2, #0
	ldr	r1, [r5, #260]
	str	r2, [r4, #48]
	cmp	r3, #0
	bne	.L10
	ldr	r3, [r1, #20]
	mov	r0, r5
	movs	r1, #1
	mov	r2, r3
	add	r3, r4, r3, lsl #2
	adds	r3, r3, #76
	bl	jpeg_make_c_derived_tbl(PLT)
	b	.L10
.L44:
	mov	r8, r5
	mov	r9, r7
	mov	r6, r4
.L11:
	ldr	r3, [r8, #248]
	mov	r0, r5
	str	r9, [r6, #36]
	movs	r1, #0
	adds	r7, r7, #1
	add	r8, r8, #4
	ldr	r3, [r3, #24]
	adds	r6, r6, #4
	str	r3, [r4, #52]
	mov	r2, r3
	add	r3, r4, r3, lsl #2
	adds	r3, r3, #76
	bl	jpeg_make_c_derived_tbl(PLT)
	ldr	r3, [r5, #244]
	cmp	r7, r3
	blt	.L11
	b	.L10
.L13:
	ldr	r3, [r5, #4]
	mov	r0, r5
	movs	r1, #1
	movw	r2, #1028
	ldr	r3, [r3]
	blx	r3
	str	r0, [r6, #92]
	b	.L15
.L43:
	ldr	r3, [r0, #4]
	movs	r1, #1
	mov	r2, #1000
	ldr	r3, [r3]
	blx	r3
	str	r0, [r4, #64]
	b	.L4
.L25:
	ldr	r3, [r5, #4]
	mov	r0, r5
	movs	r1, #1
	movw	r2, #1028
	ldr	r3, [r3]
	blx	r3
	str	r0, [r6, #92]
	b	.L26
.L29:
	ldr	r3, [r5, #4]
	mov	r0, r5
	movs	r1, #1
	movw	r2, #1028
	ldr	r3, [r3]
	blx	r3
	str	r0, [r6, #92]
	b	.L30
.L33:
	ldr	r3, [r5, #4]
	mov	r0, r5
	movs	r1, #1
	movw	r2, #1028
	ldr	r3, [r3]
	blx	r3
	str	r0, [r6, #92]
	b	.L34
.L46:
	ldr	r3, [r5, #4]
	mov	r0, r5
	movs	r1, #1
	movw	r2, #1028
	ldr	r3, [r3]
	blx	r3
	mov	r3, r0
	str	r3, [r6, #92]
	b	.L37
.L48:
	.align	2
.L47:
	.word	encode_mcu_DC_first-(.LPIC10+4)
	.word	encode_mcu_AC_refine-(.LPIC13+4)
	.word	finish_pass_phuff-(.LPIC9+4)
	.word	finish_pass_gather_phuff-(.LPIC8+4)
	.word	encode_mcu_DC_refine-(.LPIC12+4)
	.word	encode_mcu_AC_first-(.LPIC11+4)
	.size	start_pass_phuff, .-start_pass_phuff
	.section	.text.emit_eobrun,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	emit_eobrun, %function
emit_eobrun:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #56]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #12
	cbz	r3, .L49
	asrs	r3, r3, #1
	beq	.L91
	movs	r5, #0
.L53:
	asrs	r3, r3, #1
	add	r5, r5, #1
	bne	.L53
	cmp	r5, #14
	bgt	.L54
.L103:
	lsls	r3, r5, #4
.L51:
	ldr	r1, [r4, #52]
	ldr	r2, [r4, #12]
	add	r1, r4, r1, lsl #2
	cbz	r2, .L55
	ldr	r1, [r1, #92]
	ldr	r0, [r1, r3, lsl #2]
	adds	r0, r0, #1
	str	r0, [r1, r3, lsl #2]
.L56:
	cmp	r5, #0
	bne	.L104
.L67:
	movs	r3, #0
	ldr	r6, [r4, #64]
	str	r3, [r4, #56]
	ldr	r3, [r4, #60]
	cmp	r2, #0
	beq	.L78
.L79:
	movs	r3, #0
	str	r3, [r4, #60]
.L49:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L55:
	ldr	r1, [r1, #76]
	ldr	r7, [r4, #28]
	adds	r0, r1, r3
	ldr	r8, [r1, r3, lsl #2]
	ldrb	r6, [r0, #1024]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L105
.L57:
	movs	r3, #1
	add	r7, r7, r6
	lsl	r6, r3, r6
	rsb	r1, r7, #24
	ldr	r3, [r4, #24]
	cmp	r7, #7
	add	r6, r6, #-1
	and	r6, r6, r8
	lsl	r6, r6, r1
	orr	r6, r6, r3
	ble	.L58
	mov	r10, r7
	mov	r8, #0
	b	.L66
.L59:
	cmp	fp, #255
	beq	.L106
.L62:
	cmp	r10, #7
	ble	.L107
.L66:
	ldr	r3, [r4, #16]
	ubfx	fp, r6, #16, #8
	sub	r10, r10, #8
	lsls	r6, r6, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	fp, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L59
	ldr	r0, [r4, #32]
	ldr	r9, [r0, #24]
	ldr	r3, [r9, #12]
	blx	r3
	cbnz	r0, .L60
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L60:
	ldmia	r9, {r2, r3}
	cmp	fp, #255
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bne	.L62
.L106:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r8, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L62
	ldr	r0, [r4, #32]
	ldr	fp, [r0, #24]
	ldr	r3, [fp, #12]
	blx	r3
	cbnz	r0, .L64
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L64:
	ldr	r3, [fp]
	cmp	r10, #7
	ldr	r2, [fp, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	bgt	.L66
.L107:
	ldr	r2, [r4, #12]
	and	r7, r7, #7
.L58:
	str	r6, [r4, #24]
	str	r7, [r4, #28]
	cmp	r5, #0
	beq	.L67
.L104:
	ldr	r3, [r4, #56]
	ldr	r7, [r4, #28]
	cmp	r2, #0
	bne	.L68
	movs	r1, #1
	add	r7, r7, r5
	lsl	r5, r1, r5
	rsb	r0, r7, #24
	ldr	r1, [r4, #24]
	cmp	r7, #7
	add	r5, r5, #-1
	and	r3, r3, r5
	lsl	r5, r3, r0
	orr	r5, r5, r1
	ble	.L69
	mov	r8, r2
	mov	r6, r7
	mov	r9, #24
	b	.L77
.L70:
	cmp	r10, #255
	beq	.L108
.L73:
	cmp	r6, #7
	ble	.L109
.L77:
	ldr	r3, [r4, #16]
	ubfx	r10, r5, #16, #8
	subs	r6, r6, #8
	lsls	r5, r5, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r10, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L70
	ldr	r0, [r4, #32]
	ldr	fp, [r0, #24]
	ldr	r3, [fp, #12]
	blx	r3
	cbnz	r0, .L71
	ldr	r0, [r4, #32]
	ldr	r3, [r0]
	str	r9, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L71:
	ldmia	fp, {r2, r3}
	cmp	r10, #255
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bne	.L73
.L108:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r8, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L73
	ldr	r0, [r4, #32]
	ldr	r10, [r0, #24]
	ldr	r3, [r10, #12]
	blx	r3
	cbnz	r0, .L75
	ldr	r0, [r4, #32]
	ldr	r3, [r0]
	str	r9, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L75:
	ldr	r3, [r10]
	ldr	r2, [r10, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	b	.L73
.L54:
	ldr	r0, [r4, #32]
	movs	r2, #40
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L103
.L105:
	ldr	r0, [r4, #32]
	movs	r1, #40
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	str	r2, [sp]
	blx	r3
	ldr	r3, [r4, #12]
	ldr	r2, [sp]
	cmp	r3, #0
	beq	.L57
	mov	r2, r3
	b	.L56
.L78:
	cmp	r3, #0
	beq	.L79
	ldr	r7, [r4, #28]
	adds	r3, r6, r3
	mov	r8, r2
	adds	r6, r6, #1
	str	r3, [sp, #4]
.L90:
	ldrb	fp, [r6, #-1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L80
	and	r1, fp, #1
	rsb	r2, r7, #23
	ldr	r3, [r4, #24]
	adds	r5, r7, #1
	lsl	fp, r1, r2
	cmp	r5, #7
	orr	fp, fp, r3
	bgt	.L89
	b	.L81
.L82:
	cmp	r10, #255
	beq	.L110
.L85:
	cmp	r5, #7
	ble	.L111
.L89:
	ldr	r3, [r4, #16]
	ubfx	r10, fp, #16, #8
	subs	r5, r5, #8
	lsl	fp, fp, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r10, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L82
	ldr	r0, [r4, #32]
	ldr	r9, [r0, #24]
	ldr	r3, [r9, #12]
	blx	r3
	cbnz	r0, .L83
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L83:
	ldmia	r9, {r2, r3}
	cmp	r10, #255
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bne	.L85
.L110:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r8, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L85
	ldr	r0, [r4, #32]
	ldr	r10, [r0, #24]
	ldr	r3, [r10, #12]
	blx	r3
	cbnz	r0, .L87
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L87:
	ldr	r3, [r10]
	cmp	r5, #7
	ldr	r2, [r10, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	bgt	.L89
.L111:
	subs	r5, r7, #7
	and	r5, r5, #7
.L81:
	mov	r7, r5
	str	fp, [r4, #24]
	str	r5, [r4, #28]
.L80:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	beq	.L79
	adds	r6, r6, #1
	ldr	r2, [r4, #12]
	b	.L90
.L109:
	ldr	r2, [r4, #12]
	and	r7, r7, #7
.L69:
	str	r5, [r4, #24]
	str	r7, [r4, #28]
	b	.L67
.L68:
	movs	r3, #0
	str	r3, [r4, #56]
	b	.L79
.L91:
	mov	r5, r3
	b	.L51
	.size	emit_eobrun, .-emit_eobrun
	.section	.text.emit_restart,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	emit_restart, %function
emit_restart:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	mov	r7, r1
	bl	emit_eobrun(PLT)
	ldr	r2, [r4, #12]
	cbz	r2, .L133
.L114:
	ldr	r3, [r4, #32]
	ldr	r1, [r3, #316]
	cbnz	r1, .L129
	ldr	r2, [r3, #244]
	cmp	r2, #0
	ble	.L112
	add	r0, r4, #36
	lsls	r2, r2, #2
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	memset(PLT)
.L129:
	movs	r3, #0
	str	r3, [r4, #56]
	str	r3, [r4, #60]
.L112:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L133:
	ldr	r5, [r4, #28]
	movs	r6, #127
	ldr	r3, [r4, #24]
	rsb	r1, r5, #17
	adds	r5, r5, #7
	cmp	r5, #7
	lsl	r6, r6, r1
	it	gt
	movgt	r8, r2
	orr	r6, r6, r3
	it	gt
	movgt	r9, #24
	ldr	r3, [r4, #16]
	bgt	.L123
	b	.L116
.L135:
	cmp	r10, #255
	ldr	r3, [r4, #16]
	beq	.L134
.L120:
	subs	r5, r5, #8
	lsls	r6, r6, #8
	cmp	r5, #7
	ble	.L116
.L123:
	adds	r2, r3, #1
	ubfx	r10, r6, #16, #8
	str	r2, [r4, #16]
	strb	r10, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L135
	ldr	r0, [r4, #32]
	ldr	fp, [r0, #24]
	ldr	r3, [fp, #12]
	blx	r3
	cbnz	r0, .L119
	ldr	r0, [r4, #32]
	ldr	r3, [r0]
	str	r9, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L119:
	ldr	r3, [fp]
	cmp	r10, #255
	ldr	r2, [fp, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	bne	.L120
.L134:
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r8, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	beq	.L121
	subs	r5, r5, #8
	ldr	r3, [r4, #16]
	cmp	r5, #7
	lsl	r6, r6, #8
	bgt	.L123
.L116:
	movs	r2, #0
	adds	r0, r3, #1
	movs	r1, #255
	str	r2, [r4, #24]
	str	r2, [r4, #28]
	str	r0, [r4, #16]
	strb	r1, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	beq	.L124
	ldr	r3, [r4, #16]
.L125:
	adds	r2, r3, #1
	subs	r7, r7, #48
	str	r2, [r4, #16]
	strb	r7, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L114
	ldr	r0, [r4, #32]
	ldr	r5, [r0, #24]
	ldr	r3, [r5, #12]
	blx	r3
	cbnz	r0, .L128
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L128:
	ldmia	r5, {r2, r3}
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	b	.L114
.L121:
	ldr	r0, [r4, #32]
	ldr	r10, [r0, #24]
	ldr	r3, [r10, #12]
	blx	r3
	cbnz	r0, .L122
	ldr	r0, [r4, #32]
	ldr	r3, [r0]
	str	r9, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L122:
	ldr	r3, [r10]
	ldr	r2, [r10, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	b	.L120
.L124:
	ldr	r0, [r4, #32]
	ldr	r5, [r0, #24]
	ldr	r3, [r5, #12]
	blx	r3
	cbnz	r0, .L126
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L126:
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	str	r2, [r4, #20]
	b	.L125
	.size	emit_restart, .-emit_restart
	.section	.text.encode_mcu_DC_first,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	encode_mcu_DC_first, %function
encode_mcu_DC_first:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	ldr	r0, [r0, #200]
	mov	r5, r1
	sub	sp, sp, #28
	ldr	r1, [r6, #328]
	ldr	r4, [r6, #364]
	ldmia	r3, {r2, r3}
	str	r1, [sp, #16]
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	cbz	r0, .L137
	ldr	r3, [r4, #68]
	cmp	r3, #0
	beq	.L181
.L137:
	ldr	r3, [r6, #272]
	cmp	r3, #0
	ble	.L170
	mov	r8, r6
	movs	r2, #0
	subs	r5, r5, #4
	str	r2, [sp, #4]
	str	r5, [sp, #8]
.L171:
	ldr	r1, [sp, #8]
	ldr	r3, [r8, #276]
	ldr	r0, [sp, #16]
	ldr	r2, [r1, #4]!
	ldrsh	r2, [r2]
	str	r1, [sp, #8]
	add	r1, r3, #62
	add	r3, r4, r3, lsl #2
	ldr	r9, [r6, r1, lsl #2]
	ldr	r1, [r3, #36]
	asrs	r2, r2, r0
	str	r2, [r3, #36]
	subs	r7, r2, r1
	cmp	r7, #0
	itt	lt
	rsblt	r3, r7, #0
	addlt	r7, r7, #-1
	blt	.L142
	beq	.L173
	mov	r3, r7
.L142:
	movs	r5, #0
.L145:
	asrs	r3, r3, #1
	add	r5, r5, #1
	bne	.L145
	cmp	r5, #11
	bgt	.L182
.L143:
	ldr	r2, [r9, #20]
	ldr	r3, [r4, #12]
	add	r2, r4, r2, lsl #2
	cbz	r3, .L146
	ldr	r2, [r2, #92]
	ldr	r3, [r2, r5, lsl #2]
	adds	r3, r3, #1
	str	r3, [r2, r5, lsl #2]
.L147:
	cmp	r5, #0
	bne	.L183
.L160:
	ldr	r2, [sp, #4]
	add	r8, r8, #4
	ldr	r3, [r6, #272]
	adds	r2, r2, #1
	cmp	r3, r2
	str	r2, [sp, #4]
	bgt	.L171
.L170:
	ldr	r2, [r6, #200]
	ldr	r3, [r6, #24]
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #20]
	stmia	r3, {r0, r1}
	cbz	r2, .L140
	ldr	r3, [r4, #68]
	cmp	r3, #0
	beq	.L184
.L172:
	subs	r3, r3, #1
	str	r3, [r4, #68]
.L140:
	movs	r0, #1
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L146:
	ldr	r3, [r2, #76]
	ldr	r10, [r4, #28]
	adds	r2, r3, r5
	ldr	fp, [r3, r5, lsl #2]
	ldrb	r9, [r2, #1024]	@ zero_extendqisi2
	cmp	r9, #0
	beq	.L148
.L151:
	movs	r2, #1
	add	r1, r9, r10
	lsl	r3, r2, r9
	rsb	r2, r1, #24
	cmp	r1, #7
	str	r1, [sp, #12]
	add	r10, r3, #-1
	ldr	r3, [r4, #24]
	and	r10, r10, fp
	lsl	r10, r10, r2
	orr	r10, r10, r3
	it	le
	ldrle	r3, [sp, #12]
	ble	.L150
	mov	fp, r1
	str	r5, [sp, #20]
	b	.L159
.L152:
	cmp	r9, #255
	beq	.L185
.L155:
	cmp	fp, #7
	ble	.L186
.L159:
	ldr	r3, [r4, #16]
	ubfx	r9, r10, #16, #8
	sub	fp, fp, #8
	lsl	r10, r10, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r9, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L152
	ldr	r0, [r4, #32]
	ldr	r5, [r0, #24]
	ldr	r3, [r5, #12]
	blx	r3
	cbnz	r0, .L153
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L153:
	ldmia	r5, {r2, r3}
	cmp	r9, #255
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bne	.L155
.L185:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L155
	ldr	r0, [r4, #32]
	ldr	r9, [r0, #24]
	ldr	r3, [r9, #12]
	blx	r3
	cbnz	r0, .L157
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L157:
	ldr	r3, [r9]
	cmp	fp, #7
	ldr	r2, [r9, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	bgt	.L159
.L186:
	ldr	r2, [sp, #12]
	ldr	r5, [sp, #20]
	and	r2, r2, #7
	mov	r3, r2
	str	r2, [sp, #12]
.L150:
	str	r10, [r4, #24]
	str	r3, [r4, #28]
	cmp	r5, #0
	beq	.L160
.L183:
	ldr	r3, [r4, #12]
	ldr	r2, [r4, #28]
	cmp	r3, #0
	bne	.L160
	movs	r3, #1
	lsls	r3, r3, r5
	add	r5, r5, r2
	rsb	r2, r5, #24
	subs	r3, r3, #1
	cmp	r5, #7
	and	r1, r3, r7
	ldr	r3, [r4, #24]
	lsl	r9, r1, r2
	orr	r9, r9, r3
	ble	.L161
	mov	r10, r5
	b	.L169
.L162:
	cmp	r7, #255
	beq	.L187
.L165:
	cmp	r10, #7
	ble	.L188
.L169:
	ldr	r3, [r4, #16]
	ubfx	r7, r9, #16, #8
	sub	r10, r10, #8
	lsl	r9, r9, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r7, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L162
	ldr	r0, [r4, #32]
	ldr	fp, [r0, #24]
	ldr	r3, [fp, #12]
	blx	r3
	cbnz	r0, .L163
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L163:
	ldmia	fp, {r2, r3}
	cmp	r7, #255
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bne	.L165
.L187:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L165
	ldr	r0, [r4, #32]
	ldr	r7, [r0, #24]
	ldr	r3, [r7, #12]
	blx	r3
	cbnz	r0, .L167
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L167:
	ldr	r3, [r7]
	cmp	r10, #7
	ldr	r2, [r7, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	bgt	.L169
.L188:
	and	r5, r5, #7
.L161:
	str	r9, [r4, #24]
	str	r5, [r4, #28]
	b	.L160
.L182:
	ldr	r3, [r6]
	movs	r1, #6
	mov	r0, r6
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L143
.L148:
	ldr	r0, [r4, #32]
	movs	r2, #40
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L147
	b	.L151
.L173:
	mov	r5, r7
	b	.L143
.L184:
	ldr	r1, [r4, #72]
	mov	r3, r2
	adds	r2, r1, #1
	and	r2, r2, #7
	str	r2, [r4, #72]
	b	.L172
.L181:
	mov	r0, r4
	ldr	r1, [r4, #72]
	bl	emit_restart(PLT)
	b	.L137
	.size	encode_mcu_DC_first, .-encode_mcu_DC_first
	.section	.text.encode_mcu_DC_refine,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	encode_mcu_DC_refine, %function
encode_mcu_DC_refine:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	str	r0, [sp]
	mov	r8, r1
	ldr	r3, [r0, #24]
	ldr	r1, [sp]
	ldr	r2, [r0, #200]
	ldr	r4, [r0, #364]
	ldr	r1, [r1, #328]
	ldmia	r3, {r0, r3}
	str	r1, [sp, #4]
	str	r0, [r4, #16]
	str	r3, [r4, #20]
	cbz	r2, .L190
	ldr	r3, [r4, #68]
	cmp	r3, #0
	beq	.L212
.L190:
	ldr	r2, [sp]
	ldr	r1, [r2, #272]
	cmp	r1, #0
	ble	.L191
	ldr	r7, [r4, #28]
	movs	r6, #0
	sub	r8, r8, #4
.L202:
	ldr	r3, [r4, #12]
	ldr	r2, [r8, #4]!
	ldrh	r2, [r2]
	cmp	r3, #0
	bne	.L192
	ldr	r3, [sp, #4]
	sxth	r2, r2
	rsb	fp, r7, #23
	adds	r5, r7, #1
	cmp	r5, #7
	asr	r2, r2, r3
	and	r2, r2, #1
	lsl	fp, r2, fp
	ldr	r2, [r4, #24]
	orr	fp, fp, r2
	bgt	.L201
	b	.L193
.L215:
	cmp	r9, #255
	ldr	r0, [r4, #16]
	beq	.L213
.L197:
	subs	r5, r5, #8
	lsl	fp, fp, #8
	cmp	r5, #7
	ble	.L214
.L201:
	adds	r3, r0, #1
	ubfx	r9, fp, #16, #8
	str	r3, [r4, #16]
	strb	r9, [r0]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L215
	ldr	r0, [r4, #32]
	ldr	r10, [r0, #24]
	ldr	r3, [r10, #12]
	blx	r3
	cbnz	r0, .L196
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L196:
	ldmia	r10, {r0, r3}
	cmp	r9, #255
	str	r0, [r4, #16]
	str	r3, [r4, #20]
	bne	.L197
.L213:
	adds	r3, r0, #1
	mov	r2, #0
	str	r3, [r4, #16]
	strb	r2, [r0]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cbz	r3, .L198
	subs	r5, r5, #8
	ldr	r0, [r4, #16]
	cmp	r5, #7
	lsl	fp, fp, #8
	bgt	.L201
.L214:
	ldr	r2, [sp]
	subs	r5, r7, #7
	and	r5, r5, #7
	ldr	r1, [r2, #272]
.L193:
	mov	r7, r5
	str	fp, [r4, #24]
	str	r5, [r4, #28]
.L192:
	adds	r6, r6, #1
	cmp	r6, r1
	blt	.L202
.L191:
	ldr	r3, [sp]
	ldr	r1, [r4, #20]
	ldr	r2, [r3, #200]
	ldr	r3, [r3, #24]
	stmia	r3, {r0, r1}
	cbz	r2, .L203
	ldr	r3, [r4, #68]
	cbz	r3, .L216
.L204:
	subs	r3, r3, #1
	str	r3, [r4, #68]
.L203:
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L198:
	ldr	r0, [r4, #32]
	ldr	r9, [r0, #24]
	ldr	r3, [r9, #12]
	blx	r3
	cbnz	r0, .L199
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L199:
	ldmia	r9, {r0, r3}
	str	r0, [r4, #16]
	str	r3, [r4, #20]
	b	.L197
.L216:
	ldr	r1, [r4, #72]
	mov	r3, r2
	adds	r2, r1, #1
	and	r2, r2, #7
	str	r2, [r4, #72]
	b	.L204
.L212:
	mov	r0, r4
	ldr	r1, [r4, #72]
	bl	emit_restart(PLT)
	ldr	r0, [r4, #16]
	b	.L190
	.size	encode_mcu_DC_refine, .-encode_mcu_DC_refine
	.section	.text.encode_mcu_AC_first,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	encode_mcu_AC_first, %function
encode_mcu_AC_first:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	ldr	r3, [r0, #24]
	mov	r6, r1
	ldr	r4, [r0, #364]
	ldr	r1, [r0, #200]
	str	r0, [sp, #28]
	ldr	r0, [r0, #320]
	ldmia	r3, {r2, r3}
	ldr	r5, .L306
	str	r0, [sp, #20]
	ldr	r0, [sp, #28]
.LPIC22:
	add	r5, pc
	ldr	r0, [r0, #328]
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	str	r0, [sp, #36]
	cbz	r1, .L218
	ldr	r3, [r4, #68]
	cmp	r3, #0
	beq	.L291
.L218:
	ldr	r1, [sp, #28]
	ldr	r2, [sp, #20]
	ldr	r6, [r6]
	ldr	r1, [r1, #316]
	str	r6, [sp, #24]
	cmp	r2, r1
	str	r1, [sp, #8]
	blt	.L220
	ldr	r3, .L306+4
	mov	r8, #0
	ldr	r3, [r5, r3]
	add	r3, r3, r1, lsl #2
	subs	r3, r3, #4
	str	r3, [sp, #12]
.L269:
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #24]
	ldr	r3, [r1, #4]!
	ldrsh	r10, [r2, r3, lsl #1]
	str	r1, [sp, #12]
	cmp	r10, #0
	beq	.L290
	blt	.L292
	ldr	r2, [sp, #36]
	asr	r2, r10, r2
	mov	r3, r2
	str	r2, [sp, #16]
	str	r2, [sp, #32]
.L224:
	cmp	r3, #0
	beq	.L290
	ldr	r3, [r4, #56]
	cmp	r3, #0
	bne	.L293
.L226:
	cmp	r8, #15
	ble	.L227
	mov	r10, r8
	b	.L243
.L295:
	ldr	r3, [r2, #92]
	ldr	r2, [r3, #960]
	adds	r2, r2, #1
	str	r2, [r3, #960]
.L229:
	sub	r10, r10, #16
	cmp	r10, #15
	ble	.L294
.L243:
	ldr	r2, [r4, #52]
	ldr	r3, [r4, #12]
	add	r2, r4, r2, lsl #2
	cmp	r3, #0
	bne	.L295
	ldr	r3, [r2, #76]
	ldr	r5, [r4, #28]
	ldrb	r6, [r3, #1264]	@ zero_extendqisi2
	ldr	r7, [r3, #960]
	cmp	r6, #0
	beq	.L230
.L233:
	movs	r3, #1
	add	r9, r6, r5
	lsls	r3, r3, r6
	rsb	r2, r9, #24
	cmp	r9, #7
	add	r5, r3, #-1
	ldr	r3, [r4, #24]
	and	r5, r5, r7
	it	gt
	movgt	r6, r9
	lsl	r5, r5, r2
	orr	r5, r5, r3
	bgt	.L241
	b	.L232
.L234:
	cmp	r7, #255
	beq	.L296
.L237:
	cmp	r6, #7
	ble	.L297
.L241:
	ldr	r3, [r4, #16]
	ubfx	r7, r5, #16, #8
	subs	r6, r6, #8
	lsls	r5, r5, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r7, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L234
	ldr	r0, [r4, #32]
	ldr	fp, [r0, #24]
	ldr	r3, [fp, #12]
	blx	r3
	cbnz	r0, .L235
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L235:
	ldmia	fp, {r2, r3}
	cmp	r7, #255
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bne	.L237
.L296:
	ldr	r3, [r4, #16]
	mov	r0, #0
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r0, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L237
	ldr	r0, [r4, #32]
	ldr	r7, [r0, #24]
	ldr	r3, [r7, #12]
	blx	r3
	cbnz	r0, .L239
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L239:
	ldr	r3, [r7]
	cmp	r6, #7
	ldr	r2, [r7, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	bgt	.L241
.L297:
	and	r9, r9, #7
.L232:
	sub	r10, r10, #16
	str	r5, [r4, #24]
	cmp	r10, #15
	str	r9, [r4, #28]
	bgt	.L243
.L294:
	and	r8, r8, #15
.L227:
	ldr	r2, [sp, #16]
	movs	r5, #1
	asrs	r10, r2, #1
	beq	.L244
.L246:
	asrs	r10, r10, #1
	add	r5, r5, #1
	bne	.L246
	cmp	r5, #10
	bgt	.L298
.L244:
	ldr	r2, [r4, #52]
	add	r8, r5, r8, lsl #4
	ldr	r3, [r4, #12]
	add	r2, r4, r2, lsl #2
	cmp	r3, #0
	beq	.L247
	ldr	r3, [r2, #92]
	ldr	r2, [r3, r8, lsl #2]
	adds	r2, r2, #1
	str	r2, [r3, r8, lsl #2]
.L248:
	mov	r8, #0
	b	.L222
.L290:
	add	r8, r8, #1
.L222:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #20]
	adds	r2, r2, #1
	cmp	r3, r2
	str	r2, [sp, #8]
	bge	.L269
	cmp	r8, #0
	beq	.L220
	ldr	r3, [r4, #56]
	movw	r2, #32767
	adds	r3, r3, #1
	cmp	r3, r2
	str	r3, [r4, #56]
	beq	.L299
.L220:
	ldr	r3, [sp, #28]
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #20]
	ldr	r2, [r3, #200]
	ldr	r3, [r3, #24]
	stmia	r3, {r0, r1}
	cbz	r2, .L271
	ldr	r3, [r4, #68]
	cmp	r3, #0
	beq	.L300
.L272:
	subs	r3, r3, #1
	str	r3, [r4, #68]
.L271:
	movs	r0, #1
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L230:
	ldr	r0, [r4, #32]
	movs	r1, #40
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L229
	b	.L233
.L292:
	ldr	r3, [sp, #36]
	rsb	r10, r10, #0
	asr	r3, r10, r3
	mvns	r1, r3
	str	r3, [sp, #16]
	str	r1, [sp, #32]
	b	.L224
.L247:
	ldr	r2, [r2, #76]
	ldr	r10, [r4, #28]
	add	r1, r2, r8
	ldr	r8, [r2, r8, lsl #2]
	ldrb	r6, [r1, #1024]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L301
.L249:
	movs	r2, #1
	lsls	r2, r2, r6
	add	r6, r6, r10
	rsb	r1, r6, #24
	subs	r2, r2, #1
	cmp	r6, #7
	and	r8, r2, r8
	ldr	r2, [r4, #24]
	lsl	r8, r8, r1
	orr	r8, r8, r2
	ble	.L250
	mov	r10, r6
	b	.L258
.L251:
	cmp	r7, #255
	beq	.L302
.L254:
	cmp	r10, #7
	ble	.L303
.L258:
	ldr	r3, [r4, #16]
	ubfx	r7, r8, #16, #8
	sub	r10, r10, #8
	lsl	r8, r8, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r7, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L251
	ldr	r0, [r4, #32]
	ldr	r9, [r0, #24]
	ldr	r3, [r9, #12]
	blx	r3
	cbnz	r0, .L252
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L252:
	ldr	r3, [r9]
	cmp	r7, #255
	ldr	r2, [r9, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	bne	.L254
.L302:
	ldr	r3, [r4, #16]
	mov	r0, #0
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r0, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L254
	ldr	r0, [r4, #32]
	ldr	r7, [r0, #24]
	ldr	r3, [r7, #12]
	blx	r3
	cbnz	r0, .L256
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L256:
	ldmia	r7, {r2, r3}
	cmp	r10, #7
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bgt	.L258
.L303:
	ldr	r3, [r4, #12]
	and	r6, r6, #7
.L250:
	str	r8, [r4, #24]
	str	r6, [r4, #28]
	cmp	r3, #0
	bne	.L248
	movs	r2, #1
	lsls	r2, r2, r5
	add	r5, r5, r6
	rsb	r3, r5, #24
	subs	r6, r2, #1
	ldr	r2, [sp, #32]
	cmp	r5, #7
	and	r6, r6, r2
	lsl	r6, r6, r3
	orr	r6, r6, r8
	ble	.L259
	mov	r8, r5
	b	.L267
.L260:
	cmp	r7, #255
	beq	.L304
.L263:
	cmp	r8, #7
	ble	.L305
.L267:
	ldr	r3, [r4, #16]
	ubfx	r7, r6, #16, #8
	sub	r8, r8, #8
	lsls	r6, r6, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r7, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L260
	ldr	r0, [r4, #32]
	ldr	r9, [r0, #24]
	ldr	r3, [r9, #12]
	blx	r3
	cbnz	r0, .L261
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L261:
	ldmia	r9, {r2, r3}
	cmp	r7, #255
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bne	.L263
.L304:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L263
	ldr	r0, [r4, #32]
	ldr	r7, [r0, #24]
	ldr	r3, [r7, #12]
	blx	r3
	cbnz	r0, .L265
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L265:
	ldmia	r7, {r2, r3}
	cmp	r8, #7
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bgt	.L267
.L305:
	and	r5, r5, #7
.L259:
	mov	r8, #0
	str	r6, [r4, #24]
	str	r5, [r4, #28]
	b	.L222
.L293:
	mov	r0, r4
	bl	emit_eobrun(PLT)
	b	.L226
.L298:
	ldr	r2, [sp, #28]
	movs	r1, #6
	ldr	r3, [r2]
	mov	r0, r2
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L244
.L300:
	ldr	r1, [r4, #72]
	mov	r3, r2
	adds	r2, r1, #1
	and	r2, r2, #7
	str	r2, [r4, #72]
	b	.L272
.L301:
	ldr	r0, [r4, #32]
	movs	r1, #40
	ldr	r2, [r0]
	str	r1, [r2, #20]
	ldr	r2, [r2]
	str	r3, [sp, #4]
	blx	r2
	ldr	r2, [r4, #12]
	ldr	r3, [sp, #4]
	cmp	r2, #0
	bne	.L248
	b	.L249
.L291:
	mov	r0, r4
	ldr	r1, [r4, #72]
	bl	emit_restart(PLT)
	b	.L218
.L299:
	mov	r0, r4
	bl	emit_eobrun(PLT)
	b	.L220
.L307:
	.align	2
.L306:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	jpeg_natural_order(GOT)
	.size	encode_mcu_AC_first, .-encode_mcu_AC_first
	.section	.text.finish_pass_phuff,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	finish_pass_phuff, %function
finish_pass_phuff:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldr	r3, [r0, #24]
	ldr	r4, [r0, #364]
	ldmia	r3, {r2, r3}
	mov	r0, r4
	str	r3, [r4, #20]
	str	r2, [r4, #16]
	bl	emit_eobrun(PLT)
	ldr	r3, [r4, #12]
	ldr	r5, [r4, #28]
	cmp	r3, #0
	bne	.L321
	rsb	r1, r5, #17
	ldr	r2, [r4, #24]
	movs	r6, #127
	adds	r5, r5, #7
	lsls	r6, r6, r1
	cmp	r5, #7
	it	le
	ldrle	r3, [r4, #20]
	orr	r6, r6, r2
	ldr	r2, [r4, #16]
	ble	.L310
	mov	r8, r3
	mov	r9, #24
	b	.L319
.L323:
	cmp	r10, #255
	ldr	r2, [r4, #16]
	beq	.L322
.L316:
	subs	r5, r5, #8
	lsls	r6, r6, #8
	cmp	r5, #7
	ble	.L310
.L319:
	adds	r3, r2, #1
	ubfx	r10, r6, #16, #8
	str	r3, [r4, #16]
	strb	r10, [r2]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L323
	ldr	r0, [r4, #32]
	ldr	fp, [r0, #24]
	ldr	r3, [fp, #12]
	blx	r3
	cbnz	r0, .L315
	ldr	r0, [r4, #32]
	ldr	r3, [r0]
	str	r9, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L315:
	ldmia	fp, {r2, r3}
	cmp	r10, #255
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bne	.L316
.L322:
	adds	r3, r2, #1
	str	r3, [r4, #16]
	strb	r8, [r2]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cbz	r3, .L317
	subs	r5, r5, #8
	ldr	r2, [r4, #16]
	cmp	r5, #7
	lsl	r6, r6, #8
	bgt	.L319
.L310:
	ldr	r1, [r7, #24]
	movs	r0, #0
	str	r0, [r4, #24]
	str	r0, [r4, #28]
	stmia	r1, {r2, r3}
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L317:
	ldr	r0, [r4, #32]
	ldr	r10, [r0, #24]
	ldr	r3, [r10, #12]
	blx	r3
	cbz	r0, .L324
	ldmia	r10, {r2, r3}
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	b	.L316
.L321:
	ldr	r2, [r4, #16]
	ldr	r3, [r4, #20]
	b	.L310
.L324:
	ldr	r0, [r4, #32]
	ldr	r3, [r0]
	str	r9, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldmia	r10, {r2, r3}
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	b	.L316
	.size	finish_pass_phuff, .-finish_pass_phuff
	.section	.text.finish_pass_gather_phuff,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	finish_pass_gather_phuff, %function
finish_pass_gather_phuff:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r9, [r0, #364]
	sub	sp, sp, #20
	movs	r7, #0
	mov	r0, r9
	bl	emit_eobrun(PLT)
	ldr	r3, [r4, #244]
	ldr	r2, [r4, #316]
	str	r7, [sp]
	cmp	r3, r7
	str	r7, [sp, #4]
	str	r7, [sp, #8]
	str	r7, [sp, #12]
	ble	.L325
	cbz	r2, .L327
	mov	r6, r4
	mov	r10, #1
.L333:
	ldr	r2, [r6, #248]
	ldr	r5, [r2, #24]
	add	r2, sp, #16
	add	fp, r5, #26
	lsl	r8, r5, #2
	add	r2, r2, r8
	ldr	r2, [r2, #-16]
	cbnz	r2, .L329
	ldr	r1, [r4, fp, lsl #2]
	cmp	r1, #0
	beq	.L343
.L330:
	add	r5, r9, r5, lsl #2
	mov	r0, r4
	ldr	r2, [r5, #92]
	bl	jpeg_gen_optimal_table(PLT)
	ldr	r3, [r4, #244]
	add	r2, sp, #16
	add	r8, r8, r2
	str	r10, [r8, #-16]
.L329:
	adds	r7, r7, #1
	adds	r6, r6, #4
	cmp	r3, r7
	bgt	.L333
.L325:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L327:
	ldr	r2, [r4, #324]
	ldr	r1, [r4, #248]
	cbnz	r2, .L334
	ldr	r6, [r1, #20]
	add	r2, sp, #16
	lsls	r5, r6, #2
	add	r2, r2, r5
	ldr	r2, [r2, #-16]
	cmp	r2, #0
	beq	.L344
.L334:
	cmp	r3, #1
	ble	.L325
	ldr	r2, [r4, #324]
	ldr	r1, [r4, #252]
	cbnz	r2, .L336
	ldr	r6, [r1, #20]
	add	r2, sp, #16
	lsls	r5, r6, #2
	add	r2, r2, r5
	ldr	r2, [r2, #-16]
	cmp	r2, #0
	beq	.L345
.L336:
	cmp	r3, #2
	ble	.L325
	ldr	r2, [r4, #324]
	ldr	r1, [r4, #256]
	cbnz	r2, .L338
	ldr	r6, [r1, #20]
	add	r2, sp, #16
	lsls	r5, r6, #2
	add	r2, r2, r5
	ldr	r2, [r2, #-16]
	cbz	r2, .L346
.L338:
	cmp	r3, #3
	ble	.L325
	ldr	r3, [r4, #324]
	ldr	r2, [r4, #260]
	cmp	r3, #0
	bne	.L325
	ldr	r5, [r2, #20]
	add	r2, sp, #16
	add	r3, r2, r5, lsl #2
	ldr	r3, [r3, #-16]
	cmp	r3, #0
	bne	.L325
	adds	r5, r5, #22
	ldr	r1, [r4, r5, lsl #2]
	cmp	r1, #0
	beq	.L347
.L341:
	add	r5, r9, r5, lsl #2
	mov	r0, r4
	ldr	r2, [r5, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	jpeg_gen_optimal_table(PLT)
.L346:
	adds	r6, r6, #22
	ldr	r1, [r4, r6, lsl #2]
	cmp	r1, #0
	beq	.L348
.L339:
	add	r6, r9, r6, lsl #2
	mov	r0, r4
	ldr	r2, [r6, #4]
	bl	jpeg_gen_optimal_table(PLT)
	add	r2, sp, #16
	ldr	r3, [r4, #244]
	add	r5, r5, r2
	movs	r2, #1
	str	r2, [r5, #-16]
	b	.L338
.L345:
	adds	r6, r6, #22
	ldr	r1, [r4, r6, lsl #2]
	cbz	r1, .L349
.L337:
	add	r6, r9, r6, lsl #2
	mov	r0, r4
	ldr	r2, [r6, #4]
	bl	jpeg_gen_optimal_table(PLT)
	add	r2, sp, #16
	ldr	r3, [r4, #244]
	add	r5, r5, r2
	movs	r2, #1
	str	r2, [r5, #-16]
	b	.L336
.L344:
	adds	r6, r6, #22
	ldr	r1, [r4, r6, lsl #2]
	cbz	r1, .L350
.L335:
	add	r6, r9, r6, lsl #2
	mov	r0, r4
	ldr	r2, [r6, #4]
	bl	jpeg_gen_optimal_table(PLT)
	add	r2, sp, #16
	ldr	r3, [r4, #244]
	add	r5, r5, r2
	movs	r2, #1
	str	r2, [r5, #-16]
	b	.L334
.L343:
	mov	r0, r4
	bl	jpeg_alloc_huff_table(PLT)
	mov	r1, r0
	str	r0, [r4, fp, lsl #2]
	b	.L330
.L347:
	mov	r0, r4
	bl	jpeg_alloc_huff_table(PLT)
	mov	r1, r0
	str	r0, [r4, r5, lsl #2]
	b	.L341
.L350:
	mov	r0, r4
	bl	jpeg_alloc_huff_table(PLT)
	mov	r1, r0
	str	r0, [r4, r6, lsl #2]
	b	.L335
.L349:
	mov	r0, r4
	bl	jpeg_alloc_huff_table(PLT)
	mov	r1, r0
	str	r0, [r4, r6, lsl #2]
	b	.L337
.L348:
	mov	r0, r4
	bl	jpeg_alloc_huff_table(PLT)
	mov	r1, r0
	str	r0, [r4, r6, lsl #2]
	b	.L339
	.size	finish_pass_gather_phuff, .-finish_pass_gather_phuff
	.section	.text.encode_mcu_AC_refine,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	encode_mcu_AC_refine, %function
encode_mcu_AC_refine:
	@ args = 0, pretend = 0, frame = 312
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #316
	ldr	r3, [r0, #24]
	mov	r7, r1
	ldr	r4, [r0, #364]
	ldr	r1, [r0, #200]
	str	r0, [sp, #44]
	ldr	r0, [r0, #320]
	ldmia	r3, {r2, r3}
	ldr	r6, .L468
	str	r0, [sp, #40]
	ldr	r0, [sp, #44]
.LPIC23:
	add	r6, pc
	ldr	r5, [r0, #328]
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	cbz	r1, .L352
	ldr	r3, [r4, #68]
	cmp	r3, #0
	beq	.L452
.L352:
	ldr	r1, [sp, #44]
	ldr	r2, [sp, #40]
	ldr	r7, [r7]
	ldr	r1, [r1, #316]
	str	r7, [sp, #52]
	cmp	r2, r1
	str	r1, [sp, #20]
	blt	.L354
	ldr	r2, .L468+4
	mov	r10, r7
	lsls	r7, r1, #2
	movs	r3, #0
	add	r0, sp, #56
	ldr	r8, [r6, r2]
	add	ip, r0, r7
	ldr	r2, [sp, #40]
	mov	r9, r3
	str	r3, [sp, #48]
	add	r6, r8, r7
	add	lr, r2, #1
	mov	r2, r1
.L356:
	ldr	r1, [r6, r3]
	ldrsh	r1, [r10, r1, lsl #1]
	cmp	r1, #0
	it	lt
	rsblt	r1, r1, #0
	asrs	r1, r1, r5
	cmp	r1, #1
	it	eq
	moveq	r9, r2
	adds	r2, r2, #1
	cmp	r2, lr
	str	r1, [ip, r3]
	add	r3, r3, #4
	bne	.L356
	ldr	r3, [sp, #20]
	add	r7, r8, r7
	ldr	r2, [r4, #64]
	str	r9, [sp, #48]
	mov	r9, #0
	subs	r1, r3, #1
	ldr	r3, [r4, #60]
	add	r0, r0, r1, lsl #2
	mov	fp, r9
	mov	r10, r9
	str	r7, [sp, #28]
	adds	r3, r2, r3
	str	r0, [sp, #32]
	str	r9, [sp, #16]
	str	r3, [sp, #36]
.L427:
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #16]
	ldr	r3, [r1, #4]!
	str	r1, [sp, #32]
	str	r3, [sp, #24]
	cmp	r3, #0
	beq	.L357
	ldr	r3, [sp, #48]
	ldr	r1, [sp, #20]
	cmp	r3, r1
	it	ge
	cmpge	r2, #15
	it	le
	movle	r7, r10
	ble	.L359
	sub	r3, r2, #16
	str	r10, [sp, #8]
	str	r3, [sp, #12]
	ldr	r9, [sp, #36]
	b	.L385
.L453:
	ldr	r3, [r2, #92]
	ldr	r1, [sp, #12]
	ldr	r2, [r3, #960]
	str	r1, [sp, #16]
	adds	r2, r2, #1
	str	r2, [r3, #960]
.L362:
	ldr	r1, [sp, #16]
	ldr	r3, [sp, #12]
	ldr	r9, [r4, #64]
	cmp	r1, #15
	sub	r3, r3, #16
	str	r3, [sp, #12]
	ble	.L428
	movs	r2, #0
	str	r2, [sp, #8]
.L385:
	mov	r0, r4
	bl	emit_eobrun(PLT)
	ldr	r2, [r4, #52]
	ldr	r3, [r4, #12]
	add	r2, r4, r2, lsl #2
	cmp	r3, #0
	bne	.L453
	ldr	r2, [r2, #76]
	ldr	r7, [r4, #28]
	ldrb	r5, [r2, #1264]	@ zero_extendqisi2
	ldr	r10, [r2, #960]
	cmp	r5, #0
	beq	.L454
.L363:
	movs	r2, #1
	add	r7, r7, r5
	lsls	r2, r2, r5
	rsb	r1, r7, #24
	cmp	r7, #7
	add	r5, r2, #-1
	ldr	r2, [r4, #24]
	and	r5, r5, r10
	lsl	r5, r5, r1
	orr	r5, r5, r2
	ble	.L365
	mov	r10, r7
	b	.L373
.L366:
	cmp	r6, #255
	beq	.L455
.L369:
	cmp	r10, #7
	ble	.L456
.L373:
	ldr	r3, [r4, #16]
	ubfx	r6, r5, #16, #8
	sub	r10, r10, #8
	lsls	r5, r5, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r6, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L366
	ldr	r0, [r4, #32]
	ldr	r8, [r0, #24]
	ldr	r3, [r8, #12]
	blx	r3
	cbnz	r0, .L367
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L367:
	ldr	r3, [r8]
	cmp	r6, #255
	ldr	r2, [r8, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	bne	.L369
.L455:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	fp, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L369
	ldr	r0, [r4, #32]
	ldr	r6, [r0, #24]
	ldr	r3, [r6, #12]
	blx	r3
	cbnz	r0, .L371
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L371:
	ldmia	r6, {r2, r3}
	cmp	r10, #7
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bgt	.L373
.L456:
	ldr	r3, [r4, #12]
	and	r7, r7, #7
.L365:
	ldr	r2, [sp, #12]
	str	r5, [r4, #24]
	str	r7, [r4, #28]
	str	r2, [sp, #16]
	cmp	r3, #0
	bne	.L362
	ldr	r1, [sp, #8]
	cmp	r1, #0
	beq	.L362
	add	r6, r9, #1
	add	r1, r1, r9
	mov	r8, r6
	str	r1, [sp, #8]
.L384:
	ldrb	r6, [r8, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L374
	and	r1, r6, #1
	rsb	r2, r7, #23
	ldr	r3, [r4, #24]
	adds	r5, r7, #1
	lsl	r6, r1, r2
	cmp	r5, #7
	orr	r6, r6, r3
	bgt	.L383
	b	.L375
.L376:
	cmp	r9, #255
	beq	.L457
.L379:
	cmp	r5, #7
	ble	.L458
.L383:
	ldr	r3, [r4, #16]
	ubfx	r9, r6, #16, #8
	subs	r5, r5, #8
	lsls	r6, r6, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r9, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L376
	ldr	r0, [r4, #32]
	ldr	r10, [r0, #24]
	ldr	r3, [r10, #12]
	blx	r3
	cbnz	r0, .L377
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L377:
	ldr	r3, [r10]
	cmp	r9, #255
	ldr	r2, [r10, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	bne	.L379
.L457:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	fp, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L379
	ldr	r0, [r4, #32]
	ldr	r9, [r0, #24]
	ldr	r3, [r9, #12]
	blx	r3
	cbnz	r0, .L381
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L381:
	ldmia	r9, {r2, r3}
	cmp	r5, #7
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bgt	.L383
.L458:
	subs	r5, r7, #7
	and	r5, r5, #7
.L375:
	mov	r7, r5
	str	r6, [r4, #24]
	str	r5, [r4, #28]
.L374:
	ldr	r2, [sp, #8]
	cmp	r8, r2
	beq	.L362
	add	r8, r8, #1
	ldr	r3, [r4, #12]
	b	.L384
.L454:
	ldr	r0, [r4, #32]
	movs	r1, #40
	ldr	r2, [r0]
	str	r1, [r2, #20]
	ldr	r2, [r2]
	str	r3, [sp, #4]
	blx	r2
	ldr	r2, [r4, #12]
	ldr	r3, [sp, #4]
	cmp	r2, #0
	beq	.L363
	ldr	r1, [sp, #12]
	str	r1, [sp, #16]
	b	.L362
.L428:
	movs	r7, #0
	str	r9, [sp, #36]
.L359:
	ldr	r3, [sp, #24]
	cmp	r3, #1
	ble	.L386
	ldr	r1, [sp, #36]
	add	r10, r7, #1
	and	r3, r3, #1
	strb	r3, [r1, r7]
.L360:
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #20]
	adds	r3, r3, #4
	str	r3, [sp, #28]
	adds	r2, r2, #1
	ldr	r3, [sp, #40]
	str	r2, [sp, #20]
	cmp	r3, r2
	bge	.L427
	ldr	r1, [sp, #16]
	cmp	r1, #0
	it	le
	cmple	r10, #0
	beq	.L354
	ldr	r3, [r4, #56]
	movw	r1, #32767
	ldr	r2, [r4, #60]
	adds	r3, r3, #1
	cmp	r3, r1
	add	r6, r10, r2
	str	r3, [r4, #56]
	str	r6, [r4, #60]
	beq	.L424
	movw	r3, #937
	cmp	r6, r3
	bls	.L354
.L424:
	mov	r0, r4
	bl	emit_eobrun(PLT)
.L354:
	ldr	r3, [sp, #44]
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #20]
	ldr	r2, [r3, #200]
	ldr	r3, [r3, #24]
	stmia	r3, {r0, r1}
	cbz	r2, .L441
	ldr	r3, [r4, #68]
	cbnz	r3, .L426
	ldr	r1, [r4, #72]
	mov	r3, r2
	adds	r2, r1, #1
	and	r2, r2, #7
	str	r2, [r4, #72]
.L426:
	subs	r3, r3, #1
	str	r3, [r4, #68]
.L441:
	movs	r0, #1
	add	sp, sp, #316
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L357:
	adds	r2, r2, #1
	str	r2, [sp, #16]
	b	.L360
.L386:
	mov	r0, r4
	bl	emit_eobrun(PLT)
	ldr	r2, [r4, #12]
	ldr	r1, [sp, #16]
	str	r2, [sp, #8]
	ldr	r2, [r4, #52]
	lsls	r3, r1, #4
	ldr	r1, [sp, #8]
	adds	r3, r3, #1
	add	r2, r4, r2, lsl #2
	cbz	r1, .L387
	ldr	r2, [r2, #92]
	ldr	r1, [r2, r3, lsl #2]
	adds	r1, r1, #1
	str	r1, [r2, r3, lsl #2]
.L409:
	ldr	r1, [r4, #64]
	mov	r10, #0
	str	r10, [sp, #16]
	str	r1, [sp, #36]
	b	.L360
.L387:
	ldr	r2, [r2, #76]
	ldr	r8, [r4, #28]
	adds	r1, r2, r3
	ldr	r9, [r2, r3, lsl #2]
	ldrb	r5, [r1, #1024]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L459
.L389:
	movs	r3, #1
	add	r10, r5, r8
	lsls	r3, r3, r5
	rsb	r2, r10, #24
	cmp	r10, #7
	add	r8, r3, #-1
	ldr	r3, [r4, #24]
	and	r8, r8, r9
	lsl	r8, r8, r2
	orr	r8, r8, r3
	ble	.L390
	mov	r9, r10
	b	.L398
.L391:
	cmp	r6, #255
	beq	.L460
.L394:
	cmp	r9, #7
	ble	.L461
.L398:
	ldr	r3, [r4, #16]
	ubfx	r6, r8, #16, #8
	sub	r9, r9, #8
	lsl	r8, r8, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r6, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L391
	ldr	r0, [r4, #32]
	ldr	r5, [r0, #24]
	ldr	r3, [r5, #12]
	blx	r3
	cbnz	r0, .L392
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L392:
	ldmia	r5, {r2, r3}
	cmp	r6, #255
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bne	.L394
.L460:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	fp, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L394
	ldr	r0, [r4, #32]
	ldr	r5, [r0, #24]
	ldr	r3, [r5, #12]
	blx	r3
	cmp	r0, #0
	beq	.L462
.L396:
	ldmia	r5, {r2, r3}
	cmp	r9, #7
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bgt	.L398
.L461:
	ldr	r3, [r4, #12]
	and	r10, r10, #7
	str	r3, [sp, #8]
.L390:
	ldr	r1, [sp, #28]
	str	r8, [r4, #24]
	str	r10, [r4, #28]
	ldr	r3, [r1]
	ldr	r1, [sp, #52]
	ldrh	r2, [r1, r3, lsl #1]
	ldr	r3, [sp, #8]
	cmp	r3, #0
	bne	.L409
	sxth	r2, r2
	rsb	r3, r10, #23
	add	r5, r10, #1
	mvns	r2, r2
	cmp	r5, #7
	lsr	r2, r2, #31
	lsl	r3, r2, r3
	orr	r8, r3, r8
	bgt	.L407
	b	.L467
.L400:
	cmp	r6, #255
	beq	.L463
.L403:
	cmp	r5, #7
	ble	.L464
.L407:
	ldr	r3, [r4, #16]
	ubfx	r6, r8, #16, #8
	subs	r5, r5, #8
	lsl	r8, r8, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r6, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L400
	ldr	r0, [r4, #32]
	ldr	r9, [r0, #24]
	ldr	r3, [r9, #12]
	blx	r3
	cbnz	r0, .L401
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L401:
	ldmia	r9, {r2, r3}
	cmp	r6, #255
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bne	.L403
.L463:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	fp, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L403
	ldr	r0, [r4, #32]
	ldr	r6, [r0, #24]
	ldr	r3, [r6, #12]
	blx	r3
	cbnz	r0, .L405
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L405:
	ldmia	r6, {r2, r3}
	cmp	r5, #7
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bgt	.L407
.L464:
	ldr	r3, [r4, #12]
	sub	r5, r10, #7
	and	r5, r5, #7
	str	r8, [r4, #24]
	str	r5, [r4, #28]
	cmp	r3, #0
	bne	.L409
.L408:
	cmp	r7, #0
	beq	.L409
	ldr	r3, [sp, #36]
	mov	r10, r5
	ldr	r6, [sp, #36]
	add	r3, r3, r7
	str	r3, [sp, #12]
	adds	r6, r6, #1
	ldr	r3, [sp, #8]
.L421:
	ldrb	r7, [r6, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L411
	and	r7, r7, #1
	rsb	r2, r10, #23
	ldr	r3, [r4, #24]
	add	r5, r10, #1
	lsls	r7, r7, r2
	cmp	r5, #7
	orr	r7, r7, r3
	bgt	.L420
	b	.L412
.L413:
	cmp	r8, #255
	beq	.L465
.L416:
	cmp	r5, #7
	ble	.L466
.L420:
	ldr	r3, [r4, #16]
	ubfx	r8, r7, #16, #8
	subs	r5, r5, #8
	lsls	r7, r7, #8
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	r8, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L413
	ldr	r0, [r4, #32]
	ldr	r9, [r0, #24]
	ldr	r3, [r9, #12]
	blx	r3
	cbnz	r0, .L414
	ldr	r0, [r4, #32]
	movs	r1, #24
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L414:
	ldr	r3, [r9]
	cmp	r8, #255
	ldr	r2, [r9, #4]
	str	r3, [r4, #16]
	str	r2, [r4, #20]
	bne	.L416
.L465:
	ldr	r3, [r4, #16]
	adds	r2, r3, #1
	str	r2, [r4, #16]
	strb	fp, [r3]
	ldr	r3, [r4, #20]
	subs	r3, r3, #1
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L416
	ldr	r0, [r4, #32]
	ldr	r8, [r0, #24]
	ldr	r3, [r8, #12]
	blx	r3
	cbnz	r0, .L418
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L418:
	ldmia	r8, {r2, r3}
	cmp	r5, #7
	str	r2, [r4, #16]
	str	r3, [r4, #20]
	bgt	.L420
.L466:
	sub	r5, r10, #7
	and	r5, r5, #7
.L412:
	mov	r10, r5
	str	r7, [r4, #24]
	str	r5, [r4, #28]
.L411:
	ldr	r3, [sp, #12]
	cmp	r6, r3
	beq	.L409
	adds	r6, r6, #1
	ldr	r3, [r4, #12]
	b	.L421
.L459:
	ldr	r0, [r4, #32]
	movs	r2, #40
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #12]
	cmp	r3, #0
	bne	.L409
	b	.L389
.L452:
	mov	r0, r4
	ldr	r1, [r4, #72]
	bl	emit_restart(PLT)
	b	.L352
.L467:
	str	r8, [r4, #24]
	str	r5, [r4, #28]
	b	.L408
.L462:
	ldr	r0, [r4, #32]
	movs	r2, #24
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L396
.L469:
	.align	2
.L468:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
	.word	jpeg_natural_order(GOT)
	.size	encode_mcu_AC_refine, .-encode_mcu_AC_refine
	.section	.text.jinit_phuff_encoder,"ax",%progbits
	.align	2
	.global	jinit_phuff_encoder
	.thumb
	.thumb_func
	.type	jinit_phuff_encoder, %function
jinit_phuff_encoder:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r1, #1
	push	{r4, r5, r6, lr}
	movs	r2, #108
	mov	r6, r0
	movs	r5, #16
	ldr	r3, [r3]
	blx	r3
	ldr	r3, .L472
	mov	r4, r0
	str	r4, [r6, #364]
	mov	r2, r5
	movs	r1, #0
.LPIC24:
	add	r3, pc
	str	r3, [r0], #76
	bl	memset(PLT)
	mov	r2, r5
	add	r0, r4, #92
	movs	r1, #0
	bl	memset(PLT)
	movs	r3, #0
	str	r3, [r4, #64]
	pop	{r4, r5, r6, pc}
.L473:
	.align	2
.L472:
	.word	start_pass_phuff-(.LPIC24+4)
	.size	jinit_phuff_encoder, .-jinit_phuff_encoder
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
