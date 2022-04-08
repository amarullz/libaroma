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
	.file	"jdinput.c"
	.section	.text.finish_input_pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	finish_input_pass, %function
finish_input_pass:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r1, .L2
	ldr	r2, .L2+4
	ldr	r3, [r0, #448]
.LPIC0:
	add	r1, pc
.LPIC1:
	add	r2, pc
	stmia	r3, {r1, r2}
	bx	lr
.L3:
	.align	2
.L2:
	.word	consume_markers-(.LPIC0+4)
	.word	consume_markers_with_huffman_index-(.LPIC1+4)
	.size	finish_input_pass, .-finish_input_pass
	.section	.text.reset_input_controller,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	reset_input_controller, %function
reset_input_controller:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r1, #1
	ldr	r7, .L6
	movs	r5, #0
	mov	r4, r0
	ldr	r6, .L6+4
	ldr	r2, [r0]
.LPIC2:
	add	r7, pc
	ldr	r3, [r0, #448]
.LPIC3:
	add	r6, pc
	str	r1, [r3, #32]
	str	r7, [r3]
	str	r6, [r3, #4]
	str	r5, [r3, #24]
	str	r5, [r3, #28]
	ldr	r3, [r2, #16]
	blx	r3
	ldr	r3, [r4, #452]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	str	r5, [r4, #168]
	pop	{r3, r4, r5, r6, r7, pc}
.L7:
	.align	2
.L6:
	.word	consume_markers-(.LPIC2+4)
	.word	consume_markers_with_huffman_index-(.LPIC3+4)
	.size	reset_input_controller, .-reset_input_controller
	.global	__aeabi_uidivmod
	.global	__aeabi_idivmod
	.section	.text.start_input_pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_input_pass, %function
start_input_pass:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r5, [r0, #340]
	cmp	r5, #1
	beq	.L64
	subs	r3, r5, #1
	cmp	r3, #3
	bhi	.L65
.L12:
	ldr	r1, [r4, #320]
	movs	r7, #0
	ldr	r0, [r4, #32]
	lsls	r1, r1, #3
	bl	jdiv_round_up(PLT)
	ldr	r1, [r4, #324]
	str	r0, [r4, #360]
	ldr	r0, [r4, #36]
	lsls	r1, r1, #3
	bl	jdiv_round_up(PLT)
	ldr	r3, [r4, #340]
	str	r0, [r4, #364]
	str	r7, [r4, #368]
	cmp	r3, r7
	ble	.L13
	mov	r8, r4
	mov	r9, #13
.L24:
	ldr	r5, [r8, #344]
	ldr	r10, [r5, #8]
	ldr	fp, [r5, #12]
	ldr	r3, [r5, #36]
	str	r10, [r5, #52]
	mov	r1, r10
	ldr	r0, [r5, #28]
	mul	r6, fp, r10
	str	fp, [r5, #56]
	mul	r3, r3, r10
	str	r6, [r5, #60]
	str	r3, [r5, #64]
	bl	__aeabi_uidivmod(PLT)
	ldr	r3, [r4, #228]
	cmp	r1, #0
	it	ne
	movne	r10, r1
	str	r10, [r5, #68]
	mov	r10, fp
	cmp	r3, #0
	bne	.L66
.L15:
	mov	r1, r10
	ldr	r0, [r5, #32]
	bl	__aeabi_uidivmod(PLT)
	ldr	r3, [r4, #368]
	cmp	r1, #0
	it	ne
	movne	r10, r1
	str	r10, [r5, #72]
	add	r3, r3, r6
	cmp	r3, #10
	bgt	.L67
.L18:
	cmp	r6, #0
	add	r2, r6, #-1
	ble	.L23
	ldr	r3, [r4, #368]
	cmp	r2, #0
	add	r1, r3, #1
	add	r0, r4, r3, lsl #2
	str	r7, [r0, #372]
	ble	.L22
	cmp	r6, #2
	str	r7, [r0, #376]
	ble	.L22
	cmp	r6, #3
	str	r7, [r0, #380]
	ble	.L22
	cmp	r6, #4
	str	r7, [r0, #384]
	ble	.L22
	cmp	r6, #5
	str	r7, [r0, #388]
	ble	.L22
	cmp	r6, #6
	str	r7, [r0, #392]
	ble	.L22
	cmp	r6, #7
	str	r7, [r0, #396]
	ble	.L22
	cmp	r6, #8
	str	r7, [r0, #400]
	ble	.L22
	adds	r3, r3, #9
	cmp	r6, #9
	it	gt
	addgt	r3, r4, r3, lsl #2
	str	r7, [r0, #404]
	it	gt
	strgt	r7, [r3, #372]
.L22:
	add	r2, r2, r1
	str	r2, [r4, #368]
.L23:
	ldr	r3, [r4, #340]
	adds	r7, r7, #1
	add	r8, r8, #4
	cmp	r7, r3
	blt	.L24
	cmp	r3, #0
	ble	.L13
	ldr	r5, [r4, #344]
	ldr	r2, [r5, #76]
	cmp	r2, #0
	beq	.L68
.L25:
	cmp	r3, #1
	ble	.L13
	ldr	r5, [r4, #348]
	ldr	r2, [r5, #76]
	cmp	r2, #0
	beq	.L69
.L29:
	cmp	r3, #2
	ble	.L13
	ldr	r5, [r4, #352]
	ldr	r2, [r5, #76]
	cmp	r2, #0
	beq	.L70
.L33:
	cmp	r3, #3
	ble	.L13
	ldr	r5, [r4, #356]
	ldr	r3, [r5, #76]
	cmp	r3, #0
	beq	.L71
.L13:
	ldr	r3, [r4, #456]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #440]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r4, #440]
	ldr	r3, [r4, #448]
	ldr	r1, [r2, #4]
	ldr	r2, [r2, #8]
	stmia	r3, {r1, r2}
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L67:
	ldr	r3, [r4]
	mov	r0, r4
	str	r9, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L18
.L66:
	movs	r1, #8
	ldr	r0, [r4, #32]
	bl	jdiv_round_up(PLT)
	ldr	r10, [r5, #52]
	mov	r1, r10
	bl	__aeabi_idivmod(PLT)
	cmp	r1, #0
	it	ne
	movne	r10, r1
	ldr	r6, [r5, #60]
	str	r10, [r5, #68]
	ldr	r10, [r5, #56]
	b	.L15
.L64:
	ldr	r6, [r0, #344]
	ldr	r3, [r6, #32]
	ldr	r2, [r6, #36]
	ldr	r7, [r6, #12]
	ldr	r1, [r6, #28]
	str	r1, [r0, #360]
	mov	r0, r3
	str	r3, [r4, #364]
	mov	r1, r7
	str	r5, [r6, #52]
	str	r5, [r6, #56]
	str	r5, [r6, #60]
	str	r5, [r6, #68]
	str	r2, [r6, #64]
	bl	__aeabi_uidivmod(PLT)
	movs	r2, #0
	mov	r3, r5
	cmp	r1, r2
	it	ne
	movne	r7, r1
	str	r7, [r6, #72]
	str	r5, [r4, #368]
	ldr	r5, [r4, #344]
	str	r2, [r4, #372]
	ldr	r2, [r5, #76]
	cmp	r2, #0
	bne	.L25
.L68:
	ldr	r3, [r5, #16]
	cmp	r3, #3
	add	r6, r3, #42
	bhi	.L27
	add	r2, r4, r6, lsl #2
	ldr	r2, [r2, #4]
	cmp	r2, #0
	beq	.L27
.L28:
	ldr	r3, [r4, #4]
	add	r6, r4, r6, lsl #2
	movs	r1, #1
	movs	r2, #132
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	movs	r2, #132
	ldr	r1, [r6, #4]
	bl	memcpy(PLT)
	ldr	r3, [r4, #340]
	str	r0, [r5, #76]
	b	.L25
.L65:
	ldr	r3, [r0]
	movs	r6, #26
	movs	r1, #4
	str	r5, [r3, #24]
	ldr	r2, [r0]
	str	r6, [r3, #20]
	str	r1, [r2, #28]
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	b	.L12
.L71:
	ldr	r3, [r5, #16]
	cmp	r3, #3
	add	r6, r3, #42
	bhi	.L38
	add	r2, r4, r6, lsl #2
	ldr	r2, [r2, #4]
	cmp	r2, #0
	beq	.L38
.L39:
	ldr	r3, [r4, #4]
	add	r6, r4, r6, lsl #2
	movs	r1, #1
	movs	r2, #132
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	movs	r2, #132
	ldr	r1, [r6, #4]
	bl	memcpy(PLT)
	str	r0, [r5, #76]
	b	.L13
.L69:
	ldr	r3, [r5, #16]
	cmp	r3, #3
	add	r6, r3, #42
	bhi	.L31
	add	r2, r4, r6, lsl #2
	ldr	r2, [r2, #4]
	cmp	r2, #0
	beq	.L31
.L32:
	ldr	r3, [r4, #4]
	add	r6, r4, r6, lsl #2
	movs	r1, #1
	movs	r2, #132
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	movs	r2, #132
	ldr	r1, [r6, #4]
	bl	memcpy(PLT)
	ldr	r3, [r4, #340]
	str	r0, [r5, #76]
	b	.L29
.L70:
	ldr	r3, [r5, #16]
	cmp	r3, #3
	add	r6, r3, #42
	bhi	.L35
	add	r2, r4, r6, lsl #2
	ldr	r2, [r2, #4]
	cmp	r2, #0
	beq	.L35
.L36:
	ldr	r3, [r4, #4]
	add	r6, r4, r6, lsl #2
	movs	r1, #1
	movs	r2, #132
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	movs	r2, #132
	ldr	r1, [r6, #4]
	bl	memcpy(PLT)
	ldr	r3, [r4, #340]
	str	r0, [r5, #76]
	b	.L33
.L38:
	ldr	r2, [r4]
	movs	r1, #52
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L39
.L27:
	ldr	r2, [r4]
	movs	r1, #52
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L28
.L31:
	ldr	r2, [r4]
	movs	r1, #52
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L32
.L35:
	ldr	r2, [r4]
	movs	r1, #52
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L36
	.size	start_input_pass, .-start_input_pass
	.section	.text.consume_markers,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	consume_markers, %function
consume_markers:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	ldr	r5, [r0, #448]
	sub	sp, sp, #16
	ldr	r3, [r5, #28]
	cbz	r3, .L73
.L95:
	movs	r0, #2
.L103:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L73:
	ldr	r3, [r0, #452]
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #1
	mov	r6, r0
	beq	.L75
	cmp	r0, #2
	bne	.L103
	ldr	r3, [r5, #32]
	movs	r2, #1
	str	r2, [r5, #28]
	cbz	r3, .L94
	ldr	r3, [r4, #452]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L95
	ldr	r3, [r4]
	movs	r2, #59
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	mov	r0, r6
	b	.L103
.L75:
	ldr	r3, [r5, #32]
	cbnz	r3, .L106
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L107
.L93:
	mov	r0, r4
	bl	start_input_pass(PLT)
	movs	r0, #1
	b	.L103
.L94:
	ldr	r3, [r4, #152]
	ldr	r2, [r4, #160]
	cmp	r2, r3
	it	gt
	strgt	r3, [r4, #160]
	bgt	.L103
	b	.L95
.L106:
	ldr	r2, [r4, #36]
	movw	r3, #65500
	cmp	r2, r3
	bgt	.L78
	ldr	r2, [r4, #32]
	cmp	r2, r3
	ble	.L79
.L78:
	ldr	r3, [r4]
	movw	r2, #65500
	movs	r1, #41
	mov	r0, r4
	str	r2, [r3, #24]
	ldr	r2, [r4]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L79:
	ldr	r3, [r4, #220]
	cmp	r3, #8
	beq	.L80
	ldr	r2, [r4]
	movs	r1, #15
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L80:
	ldr	lr, [r4, #40]
	cmp	lr, #10
	bgt	.L108
.L81:
	cmp	lr, #0
	mov	r7, #1
	ldr	r6, [r4, #224]
	str	r7, [r4, #320]
	str	r7, [r4, #324]
	ble	.L82
	mov	r9, #0
	mov	r1, r7
	mov	r8, #18
	b	.L86
.L110:
	ldr	r2, [r6, #12]
	add	ip, r2, #-1
	cmp	ip, #3
	bhi	.L83
.L84:
	str	r1, [sp]
	cmp	r1, r3
	str	r7, [sp, #4]
	it	lt
	movlt	r1, r3
	str	r3, [sp, #8]
	cmp	r7, r2
	str	r2, [sp, #12]
	it	lt
	movlt	r7, r2
	vldr	d17, [sp, #8]
	cmp	r9, lr
	add	r6, r6, #84
	vld1.64	{d16}, [sp:64]
	vmax.s32	d16, d17, d16
	vstr	d16, [r4, #320]
	bge	.L109
.L86:
	ldr	r3, [r6, #8]
	mov	r0, r4
	add	r9, r9, #1
	subs	r2, r3, #1
	cmp	r2, #3
	bls	.L110
.L83:
	ldr	r3, [r4]
	str	r8, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldr	r1, [r4, #320]
	ldr	r7, [r4, #324]
	ldr	lr, [r4, #40]
	b	.L84
.L109:
	cmp	lr, #0
	mov	r3, #8
	ldr	r6, [r4, #224]
	str	r3, [r4, #328]
	ble	.L87
	movs	r7, #0
	mov	r8, r3
	mov	r9, r7
	mov	r10, #1
	b	.L89
.L111:
	ldr	r1, [r4, #320]
.L89:
	str	r8, [r6, #36]
	lsls	r1, r1, #3
	ldr	r3, [r4, #32]
	adds	r7, r7, #1
	ldr	r0, [r6, #8]
	adds	r6, r6, #84
	mul	r0, r0, r3
	bl	jdiv_round_up(PLT)
	ldr	r3, [r6, #-72]
	str	r0, [r6, #-56]
	ldr	r0, [r4, #36]
	ldr	r1, [r4, #324]
	mul	r0, r3, r0
	lsls	r1, r1, #3
	bl	jdiv_round_up(PLT)
	ldr	r3, [r6, #-76]
	str	r0, [r6, #-52]
	ldr	r0, [r4, #32]
	ldr	r1, [r4, #320]
	mul	r0, r3, r0
	bl	jdiv_round_up(PLT)
	ldr	r3, [r6, #-72]
	str	r0, [r6, #-44]
	ldr	r0, [r4, #36]
	ldr	r1, [r4, #324]
	mul	r0, r3, r0
	bl	jdiv_round_up(PLT)
	str	r10, [r6, #-36]
	str	r0, [r6, #-40]
	str	r9, [r6, #-8]
	ldr	r3, [r4, #40]
	cmp	r7, r3
	blt	.L111
	ldr	r7, [r4, #324]
.L87:
	lsls	r1, r7, #3
	ldr	r0, [r4, #36]
	bl	jdiv_round_up(PLT)
	ldr	r2, [r4, #340]
	ldr	r3, [r4, #40]
	str	r0, [r4, #332]
	cmp	r2, r3
	blt	.L90
	ldr	r3, [r4, #232]
	cbnz	r3, .L90
	ldr	r2, [r4, #448]
	str	r3, [r2, #24]
.L92:
	ldr	r3, [r4, #32]
	movs	r2, #0
	movs	r0, #1
	str	r3, [r4, #28]
	str	r2, [r5, #32]
	b	.L103
.L107:
	ldr	r3, [r4]
	movs	r2, #35
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L93
.L90:
	ldr	r3, [r4, #448]
	movs	r2, #1
	str	r2, [r3, #24]
	b	.L92
.L108:
	ldr	r3, [r4]
	movs	r1, #10
	movs	r6, #26
	mov	r0, r4
	str	lr, [r3, #24]
	ldr	r2, [r4]
	str	r6, [r3, #20]
	str	r1, [r2, #28]
	ldr	r3, [r4]
	ldr	r3, [r3]
	blx	r3
	ldr	lr, [r4, #40]
	b	.L81
.L82:
	movs	r3, #8
	str	r3, [r4, #328]
	b	.L87
	.size	consume_markers, .-consume_markers
	.section	.text.consume_markers_with_huffman_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	consume_markers_with_huffman_index, %function
consume_markers_with_huffman_index:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	ldr	r5, [r0, #448]
	sub	sp, sp, #16
	ldr	r3, [r5, #28]
	cbz	r3, .L113
.L135:
	movs	r0, #2
.L143:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L113:
	ldr	r3, [r0, #452]
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #1
	mov	r6, r0
	beq	.L115
	cmp	r0, #2
	bne	.L143
	ldr	r3, [r5, #32]
	movs	r2, #1
	str	r2, [r5, #28]
	cbz	r3, .L134
	ldr	r3, [r4, #452]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L135
	ldr	r3, [r4]
	movs	r2, #59
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	mov	r0, r6
	b	.L143
.L115:
	ldr	r3, [r5, #32]
	cbnz	r3, .L146
	ldr	r3, [r5, #24]
	cmp	r3, #0
	beq	.L147
.L133:
	mov	r0, r4
	bl	start_input_pass(PLT)
	movs	r0, #1
	b	.L143
.L134:
	ldr	r3, [r4, #152]
	ldr	r2, [r4, #160]
	cmp	r2, r3
	it	gt
	strgt	r3, [r4, #160]
	bgt	.L143
	b	.L135
.L146:
	ldr	r2, [r4, #36]
	movw	r3, #65500
	cmp	r2, r3
	bgt	.L118
	ldr	r2, [r4, #32]
	cmp	r2, r3
	ble	.L119
.L118:
	ldr	r3, [r4]
	movw	r2, #65500
	movs	r1, #41
	mov	r0, r4
	str	r2, [r3, #24]
	ldr	r2, [r4]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L119:
	ldr	r3, [r4, #220]
	cmp	r3, #8
	beq	.L120
	ldr	r2, [r4]
	movs	r1, #15
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L120:
	ldr	lr, [r4, #40]
	cmp	lr, #10
	bgt	.L148
.L121:
	cmp	lr, #0
	mov	r7, #1
	ldr	r6, [r4, #224]
	str	r7, [r4, #320]
	str	r7, [r4, #324]
	ble	.L122
	mov	r9, #0
	mov	r1, r7
	mov	r8, #18
	b	.L126
.L150:
	ldr	r2, [r6, #12]
	add	ip, r2, #-1
	cmp	ip, #3
	bhi	.L123
.L124:
	str	r1, [sp]
	cmp	r1, r3
	str	r7, [sp, #4]
	it	lt
	movlt	r1, r3
	str	r3, [sp, #8]
	cmp	r7, r2
	str	r2, [sp, #12]
	it	lt
	movlt	r7, r2
	vldr	d17, [sp, #8]
	cmp	r9, lr
	add	r6, r6, #84
	vld1.64	{d16}, [sp:64]
	vmax.s32	d16, d17, d16
	vstr	d16, [r4, #320]
	bge	.L149
.L126:
	ldr	r3, [r6, #8]
	mov	r0, r4
	add	r9, r9, #1
	subs	r2, r3, #1
	cmp	r2, #3
	bls	.L150
.L123:
	ldr	r3, [r4]
	str	r8, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r6, #8]
	ldr	r2, [r6, #12]
	ldr	r1, [r4, #320]
	ldr	r7, [r4, #324]
	ldr	lr, [r4, #40]
	b	.L124
.L149:
	cmp	lr, #0
	mov	r3, #8
	ldr	r6, [r4, #224]
	str	r3, [r4, #328]
	ble	.L127
	movs	r7, #0
	mov	r8, r3
	mov	r9, r7
	mov	r10, #1
	b	.L129
.L151:
	ldr	r1, [r4, #320]
.L129:
	str	r8, [r6, #36]
	lsls	r1, r1, #3
	ldr	r3, [r4, #32]
	adds	r7, r7, #1
	ldr	r0, [r6, #8]
	adds	r6, r6, #84
	mul	r0, r0, r3
	bl	jdiv_round_up(PLT)
	ldr	r3, [r6, #-72]
	str	r0, [r6, #-56]
	ldr	r0, [r4, #36]
	ldr	r1, [r4, #324]
	mul	r0, r3, r0
	lsls	r1, r1, #3
	bl	jdiv_round_up(PLT)
	ldr	r3, [r6, #-76]
	str	r0, [r6, #-52]
	ldr	r0, [r4, #32]
	ldr	r1, [r4, #320]
	mul	r0, r3, r0
	bl	jdiv_round_up(PLT)
	ldr	r3, [r6, #-72]
	str	r0, [r6, #-44]
	ldr	r0, [r4, #36]
	ldr	r1, [r4, #324]
	mul	r0, r3, r0
	bl	jdiv_round_up(PLT)
	str	r10, [r6, #-36]
	str	r0, [r6, #-40]
	str	r9, [r6, #-8]
	ldr	r3, [r4, #40]
	cmp	r7, r3
	blt	.L151
	ldr	r7, [r4, #324]
.L127:
	lsls	r1, r7, #3
	ldr	r0, [r4, #36]
	bl	jdiv_round_up(PLT)
	ldr	r2, [r4, #340]
	ldr	r3, [r4, #40]
	str	r0, [r4, #332]
	cmp	r2, r3
	blt	.L130
	ldr	r3, [r4, #232]
	cbnz	r3, .L130
	ldr	r2, [r4, #448]
	str	r3, [r2, #24]
.L132:
	ldr	r3, [r4, #32]
	movs	r2, #0
	movs	r0, #1
	str	r3, [r4, #28]
	str	r2, [r5, #32]
	b	.L143
.L147:
	ldr	r3, [r4]
	movs	r2, #35
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L133
.L130:
	ldr	r3, [r4, #448]
	movs	r2, #1
	str	r2, [r3, #24]
	b	.L132
.L148:
	ldr	r3, [r4]
	movs	r1, #10
	movs	r6, #26
	mov	r0, r4
	str	lr, [r3, #24]
	ldr	r2, [r4]
	str	r6, [r3, #20]
	str	r1, [r2, #28]
	ldr	r3, [r4]
	ldr	r3, [r3]
	blx	r3
	ldr	lr, [r4, #40]
	b	.L121
.L122:
	movs	r3, #8
	str	r3, [r4, #328]
	b	.L127
	.size	consume_markers_with_huffman_index, .-consume_markers_with_huffman_index
	.section	.text.jpeg_decompress_per_scan_setup,"ax",%progbits
	.align	2
	.global	jpeg_decompress_per_scan_setup
	.thumb
	.thumb_func
	.type	jpeg_decompress_per_scan_setup, %function
jpeg_decompress_per_scan_setup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r5, [r0, #340]
	cmp	r5, #1
	beq	.L179
	subs	r3, r5, #1
	cmp	r3, #3
	bhi	.L180
.L156:
	ldr	r1, [r4, #320]
	movs	r7, #0
	ldr	r0, [r4, #32]
	lsls	r1, r1, #3
	bl	jdiv_round_up(PLT)
	ldr	r1, [r4, #324]
	str	r0, [r4, #360]
	ldr	r0, [r4, #36]
	lsls	r1, r1, #3
	bl	jdiv_round_up(PLT)
	ldr	r3, [r4, #340]
	str	r0, [r4, #364]
	str	r7, [r4, #368]
	cmp	r3, r7
	ble	.L152
	mov	r8, r4
	mov	r9, #13
.L168:
	ldr	r5, [r8, #344]
	ldr	r10, [r5, #8]
	ldr	fp, [r5, #12]
	ldr	r3, [r5, #36]
	str	r10, [r5, #52]
	mov	r1, r10
	ldr	r0, [r5, #28]
	mul	r6, fp, r10
	str	fp, [r5, #56]
	mul	r3, r3, r10
	str	r6, [r5, #60]
	str	r3, [r5, #64]
	bl	__aeabi_uidivmod(PLT)
	ldr	r3, [r4, #228]
	cmp	r1, #0
	it	ne
	movne	r10, r1
	str	r10, [r5, #68]
	mov	r10, fp
	cmp	r3, #0
	bne	.L181
.L159:
	mov	r1, r10
	ldr	r0, [r5, #32]
	bl	__aeabi_uidivmod(PLT)
	ldr	r3, [r4, #368]
	cmp	r1, #0
	it	ne
	movne	r10, r1
	str	r10, [r5, #72]
	add	r3, r3, r6
	cmp	r3, #10
	bgt	.L182
.L162:
	cmp	r6, #0
	add	r2, r6, #-1
	ble	.L167
	ldr	r3, [r4, #368]
	cmp	r2, #0
	add	r1, r3, #1
	add	r0, r4, r3, lsl #2
	str	r7, [r0, #372]
	ble	.L166
	cmp	r6, #2
	str	r7, [r0, #376]
	ble	.L166
	cmp	r6, #3
	str	r7, [r0, #380]
	ble	.L166
	cmp	r6, #4
	str	r7, [r0, #384]
	ble	.L166
	cmp	r6, #5
	str	r7, [r0, #388]
	ble	.L166
	cmp	r6, #6
	str	r7, [r0, #392]
	ble	.L166
	cmp	r6, #7
	str	r7, [r0, #396]
	ble	.L166
	cmp	r6, #8
	str	r7, [r0, #400]
	ble	.L166
	adds	r3, r3, #9
	cmp	r6, #9
	it	gt
	addgt	r3, r4, r3, lsl #2
	str	r7, [r0, #404]
	it	gt
	strgt	r7, [r3, #372]
.L166:
	add	r2, r2, r1
	str	r2, [r4, #368]
.L167:
	ldr	r3, [r4, #340]
	adds	r7, r7, #1
	add	r8, r8, #4
	cmp	r7, r3
	blt	.L168
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L152:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L182:
	ldr	r3, [r4]
	mov	r0, r4
	str	r9, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L162
.L181:
	movs	r1, #8
	ldr	r0, [r4, #32]
	bl	jdiv_round_up(PLT)
	ldr	r10, [r5, #52]
	mov	r1, r10
	bl	__aeabi_idivmod(PLT)
	cmp	r1, #0
	it	ne
	movne	r10, r1
	ldr	r6, [r5, #60]
	str	r10, [r5, #68]
	ldr	r10, [r5, #56]
	b	.L159
.L179:
	ldr	r6, [r0, #344]
	ldr	r3, [r6, #32]
	ldr	r2, [r6, #36]
	ldr	r7, [r6, #12]
	ldr	r1, [r6, #28]
	str	r1, [r0, #360]
	mov	r0, r3
	str	r3, [r4, #364]
	mov	r1, r7
	str	r5, [r6, #52]
	str	r5, [r6, #56]
	str	r5, [r6, #60]
	str	r5, [r6, #68]
	str	r2, [r6, #64]
	bl	__aeabi_uidivmod(PLT)
	movs	r3, #0
	cmp	r1, r3
	it	ne
	movne	r7, r1
	str	r7, [r6, #72]
	str	r5, [r4, #368]
	str	r3, [r4, #372]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L180:
	ldr	r3, [r0]
	movs	r6, #26
	movs	r1, #4
	str	r5, [r3, #24]
	ldr	r2, [r0]
	str	r6, [r3, #20]
	str	r1, [r2, #28]
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	b	.L156
	.size	jpeg_decompress_per_scan_setup, .-jpeg_decompress_per_scan_setup
	.section	.text.jinit_input_controller,"ax",%progbits
	.align	2
	.global	jinit_input_controller
	.thumb
	.thumb_func
	.type	jinit_input_controller, %function
jinit_input_controller:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r1, #0
	ldr	r3, [r0, #4]
	movs	r2, #36
	mov	r4, r0
	ldr	r7, .L185
	ldr	r3, [r3]
	blx	r3
	ldr	r6, .L185+4
	movs	r3, #0
	ldr	lr, .L185+8
	movs	r1, #1
	ldr	r5, .L185+12
.LPIC13:
	add	r7, pc
	ldr	r2, .L185+16
.LPIC14:
	add	r6, pc
.LPIC12:
	add	lr, pc
	str	r0, [r4, #448]
.LPIC15:
	add	r5, pc
	str	lr, [r0]
.LPIC16:
	add	r2, pc
	str	r7, [r0, #12]
	str	r6, [r0, #16]
	str	r5, [r0, #20]
	str	r1, [r0, #32]
	str	r2, [r0, #8]
	str	r2, [r0, #4]
	str	r3, [r0, #24]
	str	r3, [r0, #28]
	pop	{r3, r4, r5, r6, r7, pc}
.L186:
	.align	2
.L185:
	.word	reset_input_controller-(.LPIC13+4)
	.word	start_input_pass-(.LPIC14+4)
	.word	consume_markers-(.LPIC12+4)
	.word	finish_input_pass-(.LPIC15+4)
	.word	consume_markers_with_huffman_index-(.LPIC16+4)
	.size	jinit_input_controller, .-jinit_input_controller
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
