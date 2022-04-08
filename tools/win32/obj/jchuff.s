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
	.file	"jchuff.c"
	.section	.text.encode_mcu_gather,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	encode_mcu_gather, %function
encode_mcu_gather:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	ldr	r5, [r0, #200]
	mov	r9, r0
	mov	r10, r1
	ldr	r3, [r0, #364]
	ldr	r4, .L36
	str	r3, [sp]
.LPIC8:
	add	r4, pc
	cbz	r5, .L2
	ldr	r1, [r3, #36]
	cbnz	r1, .L3
	ldr	r2, [r0, #244]
	cmp	r2, #0
	ble	.L5
	ldr	r0, [sp]
	lsls	r2, r2, #2
	adds	r0, r0, #20
	bl	memset(PLT)
.L5:
	mov	r1, r5
.L3:
	ldr	r2, [sp]
	subs	r3, r1, #1
	str	r3, [r2, #36]
.L2:
	ldr	r3, [r9, #272]
	cmp	r3, #0
	ble	.L29
	ldr	r3, .L36+4
	movs	r2, #0
	str	r10, [sp, #8]
	mov	r8, #6
	str	r9, [sp, #12]
	str	r2, [sp, #4]
	ldr	r3, [r4, r3]
	add	fp, r3, #252
	str	r3, [sp, #20]
	mov	r10, fp
.L22:
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #8]
	ldr	r0, [r3, #276]
	ldr	r3, [sp]
	ldr	fp, [r2], #4
	add	r4, r0, #62
	ldr	r4, [r9, r4, lsl #2]
	add	r0, r3, r0, lsl #2
	ldrsh	r6, [fp]
	str	r2, [sp, #8]
	str	r0, [sp, #16]
	ldr	r0, [r0, #20]
	ldr	r5, [r4, #20]
	ldr	r4, [r4, #24]
	subs	r0, r6, r0
	cmp	r0, #0
	add	r5, r3, r5, lsl #2
	it	lt
	rsblt	r0, r0, #0
	add	r6, r3, r4, lsl #2
	ldr	r4, [r5, #76]
	ldr	r7, [r6, #92]
	cbz	r0, .L7
	movs	r5, #0
.L9:
	asrs	r0, r0, #1
	add	r5, r5, #1
	bne	.L9
	cmp	r5, #11
	bgt	.L10
.L33:
	lsls	r0, r5, #2
.L7:
	ldr	r2, [r4, r0]
	movs	r5, #0
	ldr	r6, [sp, #20]
	adds	r2, r2, #1
	str	r2, [r4, r0]
.L19:
	ldr	r3, [r6, #4]!
	ldrsh	r3, [fp, r3, lsl #1]
	cmp	r3, #0
	beq	.L11
	cmp	r5, #15
	ble	.L13
	ldr	r2, [r7, #960]
	subs	r5, r5, #16
	lsrs	r1, r5, #4
	adds	r2, r2, #1
	sub	r5, r5, r1, lsl #4
	add	r1, r1, r2
	str	r1, [r7, #960]
.L13:
	cmp	r3, #0
	mov	r4, #1
	it	lt
	rsblt	r3, r3, #0
	asrs	r3, r3, #1
	beq	.L15
.L17:
	asrs	r3, r3, #1
	add	r4, r4, #1
	bne	.L17
	cmp	r4, #10
	bgt	.L35
.L15:
	add	r4, r4, r5, lsl #4
	movs	r5, #0
	ldr	r3, [r7, r4, lsl #2]
	adds	r3, r3, #1
	str	r3, [r7, r4, lsl #2]
.L14:
	cmp	r6, r10
	bne	.L19
	cbz	r5, .L20
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L20:
	ldr	r2, [sp, #8]
	ldr	r3, [r2, #-4]
	ldr	r2, [sp, #4]
	ldrsh	r3, [r3]
	adds	r2, r2, #1
	str	r2, [sp, #4]
	ldr	r2, [sp, #12]
	adds	r2, r2, #4
	str	r2, [sp, #12]
	ldr	r2, [sp, #16]
	str	r3, [r2, #20]
	ldr	r2, [sp, #4]
	ldr	r3, [r9, #272]
	cmp	r3, r2
	bgt	.L22
.L29:
	movs	r0, #1
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L11:
	adds	r5, r5, #1
	b	.L14
.L35:
	ldr	r3, [r9]
	mov	r0, r9
	str	r8, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L15
.L10:
	ldr	r6, [r9]
	mov	r0, r9
	str	r8, [r6, #20]
	ldr	r6, [r6]
	blx	r6
	b	.L33
.L37:
	.align	2
.L36:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	jpeg_natural_order(GOT)
	.size	encode_mcu_gather, .-encode_mcu_gather
	.section	.text.finish_pass_huff,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	finish_pass_huff, %function
finish_pass_huff:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #364]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	add	r2, sp, #24
	ldr	r7, [r0, #24]
	mov	r4, r2
	mov	r10, r0
	ldr	r8, [r3, #16]
	movs	r5, #127
	str	r2, [sp, #8]
	add	r2, r3, #12
	ldr	r3, [r3, #12]
	mov	lr, r2
	str	r2, [sp, #12]
	rsb	r6, r8, #17
	lsl	r6, r5, r6
	add	r5, r8, #7
	str	r3, [sp, #4]
	cmp	r5, #7
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	orr	r6, r6, r0
	ldmia	lr, {r0, r1}
	ldr	r2, [r7]
	stmia	r4, {r0, r1}
	ldr	r4, [r7, #4]
	ble	.L46
	mov	r9, r5
	movs	r7, #0
	b	.L44
.L40:
	cmp	fp, #255
	beq	.L54
.L42:
	sub	r9, r9, #8
	lsls	r6, r6, #8
	cmp	r9, #7
	mov	r2, r5
	ble	.L55
.L44:
	subs	r4, r4, #1
	ubfx	fp, r6, #16, #8
	add	r5, r2, #1
	strb	fp, [r2]
	bne	.L40
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r2, [r4, #12]
	blx	r2
	cbz	r0, .L41
	cmp	fp, #255
	ldr	r5, [r4]
	ldr	r4, [r4, #4]
	bne	.L42
.L54:
	subs	r4, r4, #1
	add	fp, r5, #1
	strb	r7, [r5]
	mov	r5, fp
	bne	.L42
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r2, [r4, #12]
	blx	r2
	cbz	r0, .L48
	ldr	r5, [r4]
	sub	r9, r9, #8
	cmp	r9, #7
	ldr	r4, [r4, #4]
	lsl	r6, r6, #8
	mov	r2, r5
	bgt	.L44
.L55:
	ldr	r7, [r10, #24]
.L39:
	mov	r8, #0
	str	r8, [sp, #4]
	mov	r2, r8
	b	.L45
.L48:
	mov	r5, fp
.L41:
	ldr	r3, [r10]
	movs	r2, #24
	mov	r0, r10
	movs	r4, #0
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r7, [r10, #24]
	ldr	r2, [sp, #4]
.L45:
	add	r10, sp, #24
	str	r2, [sp, #24]
	str	r8, [sp, #28]
	ldmia	r10!, {r0, r1, r2, r3}
	ldr	fp, [sp, #12]
	str	r5, [r7]
	str	r4, [r7, #4]
	stmia	fp!, {r0, r1, r2, r3}
	ldmia	r10, {r0, r1}
	stmia	fp, {r0, r1}
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L46:
	mov	r5, r2
	b	.L39
	.size	finish_pass_huff, .-finish_pass_huff
	.section	.text.encode_mcu_huff,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	encode_mcu_huff, %function
encode_mcu_huff:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #100
	ldr	r6, [r0, #364]
	mov	fp, r0
	ldr	r4, [r0, #24]
	str	r6, [sp, #16]
	add	r6, sp, #64
	mov	r7, r6
	str	r6, [sp, #48]
	ldr	r6, [sp, #16]
	str	r1, [sp, #24]
	ldr	r10, [r4, #4]
	adds	r6, r6, #12
	str	r6, [sp, #52]
	ldr	ip, [sp, #52]
	ldr	r6, [sp, #16]
	ldmia	ip!, {r0, r1, r2, r3}
	ldr	r5, [r6, #12]
	ldr	r9, [r6, #16]
	stmia	r7!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1}
	ldr	r3, .L216
	stmia	r7, {r0, r1}
	ldr	r0, [fp, #200]
.LPIC9:
	add	r3, pc
	ldr	r6, [r4]
	str	r3, [sp, #44]
	cbz	r0, .L57
	ldr	r1, [sp, #16]
	ldr	r7, [r1, #36]
	cmp	r7, #0
	beq	.L197
.L57:
	ldr	r3, [fp, #272]
	cmp	r3, #0
	ble	.L69
	movs	r2, #0
	mov	r4, r10
	mov	r7, r2
	mov	r10, fp
	str	r2, [sp, #40]
	str	fp, [sp, #36]
.L131:
	ldr	r1, [sp, #36]
	ldr	r3, [r1, #276]
	ldr	r1, [sp, #24]
	ldr	r2, [r1], #4
	str	r2, [sp, #20]
	add	r2, sp, #96
	str	r1, [sp, #24]
	add	r1, r3, #62
	adds	r3, r3, #4
	ldr	r1, [r10, r1, lsl #2]
	str	r3, [sp, #32]
	add	r3, r2, r3, lsl #2
	ldr	r2, [sp, #20]
	ldr	r0, [r1, #20]
	ldr	r1, [r1, #24]
	ldrsh	lr, [r2]
	ldr	r2, [sp, #16]
	ldr	r3, [r3, #-40]
	add	r1, r2, r1, lsl #2
	rsb	r3, r3, lr
	cmp	r3, #0
	add	r0, r2, r0, lsl #2
	ldr	r1, [r1, #60]
	ldr	fp, [r0, #44]
	str	r1, [sp, #4]
	ittt	lt
	addlt	r1, r3, #-1
	strlt	r1, [sp, #8]
	rsblt	r3, r3, #0
	blt	.L71
	str	r3, [sp, #8]
	beq	.L134
.L71:
	mov	r8, #0
.L74:
	asrs	r3, r3, #1
	add	r8, r8, #1
	bne	.L74
	cmp	r8, #11
	bgt	.L198
.L72:
	add	r1, fp, r8
	ldr	r3, [fp, r8, lsl #2]
	ldrb	fp, [r1, #1024]	@ zero_extendqisi2
	cmp	fp, #0
	beq	.L199
.L75:
	movs	r1, #1
	add	r9, r9, fp
	lsl	r0, r1, fp
	rsb	r1, r9, #24
	cmp	r9, #7
	add	r0, r0, #-1
	and	r3, r3, r0
	lsl	r3, r3, r1
	orr	r5, r5, r3
	bgt	.L82
	b	.L76
.L78:
	cmp	fp, #255
	beq	.L200
.L80:
	sub	r9, r9, #8
	lsls	r5, r5, #8
	cmp	r9, #7
	ble	.L76
.L82:
	subs	r4, r4, #1
	ubfx	fp, r5, #16, #8
	strb	fp, [r6]
	add	r6, r6, #1
	bne	.L78
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	cmp	fp, #255
	ldr	r6, [r4]
	ldr	r4, [r4, #4]
	bne	.L80
.L200:
	subs	r4, r4, #1
	strb	r7, [r6]
	add	r6, r6, #1
	bne	.L80
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	sub	r9, r9, #8
	ldr	r6, [r4]
	cmp	r9, #7
	ldr	r4, [r4, #4]
	lsl	r5, r5, #8
	bgt	.L82
.L76:
	cmp	r8, #0
	bne	.L201
.L83:
	ldr	r3, .L216+4
	mov	r8, #0
	ldr	r0, [sp, #44]
	ldr	r3, [r0, r3]
	str	r3, [sp, #8]
	adds	r3, r3, #252
	str	r3, [sp, #28]
.L120:
	ldr	r1, [sp, #8]
	ldr	r2, [sp, #20]
	ldr	r3, [r1, #4]!
	ldrsh	r3, [r2, r3, lsl #1]
	str	r1, [sp, #8]
	str	r3, [sp, #12]
	cmp	r3, #0
	bne	.L196
	add	r8, r8, #1
.L93:
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #28]
	cmp	r2, r3
	bne	.L120
	cmp	r8, #0
	beq	.L121
	ldr	r1, [sp, #4]
	ldrb	r8, [r1, #1024]	@ zero_extendqisi2
	ldr	fp, [r1]
	cmp	r8, #0
	beq	.L202
.L122:
	movs	r3, #1
	add	r9, r9, r8
	lsl	r1, r3, r8
	rsb	r3, r9, #24
	cmp	r9, #7
	add	r1, r1, #-1
	and	r2, r1, fp
	lsl	r3, r2, r3
	orr	r5, r5, r3
	bgt	.L127
	b	.L121
.L125:
	cmp	r8, #255
	beq	.L203
.L126:
	sub	r9, r9, #8
	lsls	r5, r5, #8
	cmp	r9, #7
	ble	.L121
.L127:
	subs	r4, r4, #1
	ubfx	r8, r5, #16, #8
	strb	r8, [r6]
	add	r6, r6, #1
	bne	.L125
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	cmp	r8, #255
	ldr	r6, [r4]
	ldr	r4, [r4, #4]
	bne	.L126
.L203:
	subs	r4, r4, #1
	strb	r7, [r6]
	add	r6, r6, #1
	bne	.L126
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	sub	r9, r9, #8
	ldr	r6, [r4]
	cmp	r9, #7
	ldr	r4, [r4, #4]
	lsl	r5, r5, #8
	bgt	.L127
.L121:
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #32]
	ldr	r1, [r2, #-4]
	add	r2, sp, #96
	add	r0, r2, r3, lsl #2
	ldr	r2, [sp, #40]
	ldrsh	r1, [r1]
	ldr	r3, [r10, #272]
	adds	r2, r2, #1
	str	r2, [sp, #40]
	str	r1, [r0, #-40]
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #36]
	cmp	r3, r1
	add	r2, r2, #4
	str	r2, [sp, #36]
	bgt	.L131
	mov	fp, r10
	mov	r10, r4
.L69:
	add	lr, sp, #64
	str	r5, [sp, #64]
	str	r9, [sp, #68]
	ldmia	lr!, {r0, r1, r2, r3}
	ldr	r7, [fp, #24]
	ldr	r4, [sp, #52]
	ldr	r5, [fp, #200]
	stmia	r7, {r6, r10}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1}
	stmia	r4, {r0, r1}
	movs	r0, #1
	cbz	r5, .L193
	ldr	r6, [sp, #16]
	ldr	r3, [r6, #36]
	cbnz	r3, .L129
	ldr	r2, [r6, #40]
	mov	r3, r5
	adds	r2, r2, #1
	and	r2, r2, #7
	str	r2, [r6, #40]
	ldr	r6, [sp, #16]
.L129:
	subs	r3, r3, #1
	movs	r0, #1
	str	r3, [r6, #36]
	add	sp, sp, #100
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L66:
	movs	r0, #0
.L193:
	add	sp, sp, #100
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L95:
	sub	r8, r8, #16
.L196:
	cmp	r8, #15
	ble	.L204
	ldr	r3, [sp, #4]
	ldrb	fp, [r3, #1264]	@ zero_extendqisi2
	ldr	r3, [r3, #960]
	cmp	fp, #0
	beq	.L205
.L94:
	movs	r1, #1
	add	r9, r9, fp
	lsl	r0, r1, fp
	rsb	r1, r9, #24
	cmp	r9, #7
	add	r0, r0, #-1
	and	r3, r3, r0
	lsl	r3, r3, r1
	orr	r5, r5, r3
	bgt	.L100
	b	.L95
.L97:
	cmp	fp, #255
	beq	.L206
.L98:
	sub	r9, r9, #8
	lsls	r5, r5, #8
	cmp	r9, #7
	ble	.L95
.L100:
	subs	r4, r4, #1
	ubfx	fp, r5, #16, #8
	strb	fp, [r6]
	add	r6, r6, #1
	bne	.L97
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	cmp	fp, #255
	ldr	r6, [r4]
	ldr	r4, [r4, #4]
	bne	.L98
.L206:
	subs	r4, r4, #1
	strb	r7, [r6]
	add	r6, r6, #1
	bne	.L98
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	ldr	r6, [r4]
	ldr	r4, [r4, #4]
	b	.L98
.L205:
	ldr	r1, [r10]
	movs	r2, #40
	mov	r0, r10
	str	r2, [r1, #20]
	ldr	r1, [r1]
	str	r3, [sp]
	blx	r1
	ldr	r3, [sp]
	b	.L94
.L204:
	ldr	r2, [sp, #12]
	movs	r3, #1
	cmp	r2, #0
	itett	lt
	rsblt	r1, r2, #0
	movge	r1, r2
	addlt	r2, r2, #-1
	strlt	r2, [sp, #12]
	asrs	r1, r1, #1
	beq	.L103
.L105:
	asrs	r1, r1, #1
	add	r3, r3, #1
	bne	.L105
	cmp	r3, #10
	ble	.L103
	ldr	r1, [r10]
	movs	r2, #6
	mov	r0, r10
	str	r2, [r1, #20]
	ldr	r1, [r1]
	str	r3, [sp]
	blx	r1
	ldr	r3, [sp]
.L103:
	ldr	r1, [sp, #4]
	add	r8, r3, r8, lsl #4
	ldr	r2, [sp, #4]
	add	r1, r1, r8
	ldr	fp, [r2, r8, lsl #2]
	ldrb	r8, [r1, #1024]	@ zero_extendqisi2
	cmp	r8, #0
	beq	.L207
.L106:
	movs	r1, #1
	add	r9, r9, r8
	lsl	r0, r1, r8
	rsb	r1, r9, #24
	cmp	r9, #7
	add	r0, r0, #-1
	and	r0, r0, fp
	lsl	r1, r0, r1
	orr	r5, r5, r1
	ble	.L107
	mov	fp, r3
	b	.L112
.L109:
	cmp	r8, #255
	beq	.L208
.L110:
	sub	r9, r9, #8
	lsls	r5, r5, #8
	cmp	r9, #7
	ble	.L209
.L112:
	subs	r4, r4, #1
	ubfx	r8, r5, #16, #8
	strb	r8, [r6]
	add	r6, r6, #1
	bne	.L109
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	cmp	r8, #255
	ldr	r6, [r4]
	ldr	r4, [r4, #4]
	bne	.L110
.L208:
	subs	r4, r4, #1
	strb	r7, [r6]
	add	r6, r6, #1
	bne	.L110
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	sub	r9, r9, #8
	ldr	r6, [r4]
	cmp	r9, #7
	ldr	r4, [r4, #4]
	lsl	r5, r5, #8
	bgt	.L112
.L209:
	mov	r3, fp
.L107:
	movs	r1, #1
	ldr	r2, [sp, #12]
	lsls	r1, r1, r3
	add	r9, r9, r3
	rsb	r3, r9, #24
	subs	r1, r1, #1
	cmp	r9, #7
	and	r2, r2, r1
	lsl	r3, r2, r3
	orr	r5, r5, r3
	bgt	.L118
	b	.L113
.L115:
	cmp	r8, #255
	beq	.L210
.L116:
	sub	r9, r9, #8
	lsls	r5, r5, #8
	cmp	r9, #7
	ble	.L113
.L118:
	subs	r4, r4, #1
	ubfx	r8, r5, #16, #8
	strb	r8, [r6]
	add	r6, r6, #1
	bne	.L115
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	cmp	r8, #255
	ldr	r6, [r4]
	ldr	r4, [r4, #4]
	bne	.L116
.L210:
	subs	r4, r4, #1
	strb	r7, [r6]
	add	r6, r6, #1
	bne	.L116
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	sub	r9, r9, #8
	ldr	r6, [r4]
	cmp	r9, #7
	ldr	r4, [r4, #4]
	lsl	r5, r5, #8
	bgt	.L118
.L113:
	mov	r8, #0
	b	.L93
.L198:
	ldr	r3, [r10]
	movs	r2, #6
	mov	r0, r10
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	add	r1, fp, r8
	ldr	r3, [fp, r8, lsl #2]
	ldrb	fp, [r1, #1024]	@ zero_extendqisi2
	cmp	fp, #0
	bne	.L75
.L199:
	ldr	r1, [r10]
	movs	r2, #40
	mov	r0, r10
	str	r2, [r1, #20]
	ldr	r1, [r1]
	str	r3, [sp]
	blx	r1
	ldr	r3, [sp]
	b	.L75
.L201:
	movs	r2, #1
	add	r9, r9, r8
	lsl	r1, r2, r8
	ldr	r2, [sp, #8]
	rsb	r3, r9, #24
	subs	r1, r1, #1
	cmp	r9, #7
	and	r1, r1, r2
	lsl	r3, r1, r3
	orr	r5, r5, r3
	bgt	.L89
	b	.L83
.L86:
	cmp	r8, #255
	beq	.L211
.L87:
	sub	r9, r9, #8
	lsls	r5, r5, #8
	cmp	r9, #7
	ble	.L83
.L89:
	subs	r4, r4, #1
	ubfx	r8, r5, #16, #8
	strb	r8, [r6]
	add	r6, r6, #1
	bne	.L86
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	cmp	r8, #255
	ldr	r6, [r4]
	ldr	r4, [r4, #4]
	bne	.L87
.L211:
	subs	r4, r4, #1
	strb	r7, [r6]
	add	r6, r6, #1
	bne	.L87
	ldr	r4, [r10, #24]
	mov	r0, r10
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	ldr	r6, [r4]
	ldr	r4, [r4, #4]
	b	.L87
.L207:
	ldr	r1, [r10]
	movs	r2, #40
	mov	r0, r10
	str	r2, [r1, #20]
	ldr	r1, [r1]
	str	r3, [sp]
	blx	r1
	ldr	r3, [sp]
	b	.L106
.L134:
	mov	r8, r3
	b	.L72
.L197:
	rsb	r3, r9, #17
	movs	r2, #127
	add	r8, r9, #7
	lsl	r3, r2, r3
	cmp	r8, #7
	ldr	r4, [r1, #40]
	orr	r5, r5, r3
	ble	.L58
	mov	r3, r10
	b	.L63
.L60:
	cmp	r10, #255
	beq	.L212
.L62:
	sub	r8, r8, #8
	lsls	r5, r5, #8
	cmp	r8, #7
	ble	.L213
.L63:
	subs	r3, r3, #1
	ubfx	r10, r5, #16, #8
	strb	r10, [r6]
	add	r6, r6, #1
	bne	.L60
	ldr	r9, [fp, #24]
	mov	r0, fp
	ldr	r3, [r9, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	cmp	r10, #255
	ldr	r6, [r9]
	ldr	r3, [r9, #4]
	bne	.L62
.L212:
	subs	r3, r3, #1
	strb	r7, [r6]
	add	r6, r6, #1
	bne	.L62
	ldr	r9, [fp, #24]
	mov	r0, fp
	ldr	r3, [r9, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	sub	r8, r8, #8
	ldr	r6, [r9]
	cmp	r8, #7
	ldr	r3, [r9, #4]
	lsl	r5, r5, #8
	bgt	.L63
.L213:
	mov	r10, r3
.L58:
	movs	r2, #255
	adds	r3, r6, #1
	strb	r2, [r6]
	subs	r2, r10, #1
	beq	.L214
.L64:
	subs	r10, r2, #1
	sub	r4, r4, #48
	add	r6, r3, #1
	strb	r4, [r3]
	beq	.L215
.L67:
	ldr	r2, [fp, #244]
	cmp	r2, #0
	ble	.L133
	movs	r1, #0
	lsls	r2, r2, #2
	mov	r9, r1
	add	r0, sp, #72
	mov	r5, r9
	bl	memset(PLT)
	b	.L57
.L133:
	mov	r9, #0
	mov	r5, r9
	b	.L57
.L215:
	ldr	r4, [fp, #24]
	mov	r0, fp
	ldr	r3, [r4, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	ldmia	r4, {r6, r10}
	b	.L67
.L214:
	ldr	r5, [fp, #24]
	mov	r0, fp
	ldr	r3, [r5, #12]
	blx	r3
	cmp	r0, #0
	beq	.L66
	ldr	r3, [r5]
	ldr	r2, [r5, #4]
	b	.L64
.L202:
	ldr	r3, [r10]
	movs	r2, #40
	mov	r0, r10
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L122
.L217:
	.align	2
.L216:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC9+4)
	.word	jpeg_natural_order(GOT)
	.size	encode_mcu_huff, .-encode_mcu_huff
	.section	.text.jpeg_make_c_derived_tbl,"ax",%progbits
	.align	2
	.global	jpeg_make_c_derived_tbl
	.thumb
	.thumb_func
	.type	jpeg_make_c_derived_tbl, %function
jpeg_make_c_derived_tbl:
	@ args = 0, pretend = 0, frame = 1304
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #3
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subw	sp, sp, #1308
	mov	r4, r2
	mov	r5, r3
	mov	r8, r0
	str	r1, [sp, #12]
	bls	.L219
	ldr	r3, [r0]
	movs	r1, #50
	str	r2, [r3, #24]
	ldr	r2, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L219:
	ldr	r2, [sp, #12]
	cmp	r2, #0
	beq	.L220
	add	r3, r4, #22
	ldr	r3, [r8, r3, lsl #2]
	str	r3, [sp, #8]
	cmp	r3, #0
	beq	.L257
.L222:
	ldr	fp, [r5]
	cmp	fp, #0
	beq	.L258
.L223:
	ldr	r4, [sp, #8]
	movs	r5, #1
	movs	r7, #0
	add	r9, sp, #16
	mov	r10, #8
	b	.L227
.L224:
	mov	r1, r5
	add	r0, r9, r7
	adds	r5, r5, #1
	mov	r2, r6
	cbz	r6, .L225
	add	r7, r7, r6
	bl	memset(PLT)
.L225:
	cmp	r5, #17
	beq	.L259
.L227:
	ldrb	r6, [r4, #1]!	@ zero_extendqisi2
	adds	r3, r7, r6
	cmp	r3, #256
	ble	.L224
	ldr	r3, [r8]
	mov	r0, r8
	str	r10, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L224
.L259:
	movs	r4, #0
	strb	r4, [r9, r7]
	ldrb	r5, [r9]	@ zero_extendqisi2
	cbz	r5, .L228
	add	ip, sp, #276
	mov	r2, r7
	mov	r6, r4
	movs	r1, #1
	mov	r10, r5
	mov	r7, ip
.L229:
	cmp	r5, r10
	mov	r0, r5
	bne	.L232
	subs	r3, r6, #1
	add	lr, r9, r6
	add	r3, r7, r3, lsl #2
.L233:
	ldrb	r5, [lr, #1]!	@ zero_extendqisi2
	adds	r6, r6, #1
	str	r4, [r3, #4]!
	adds	r4, r4, #1
	cmp	r5, r0
	beq	.L233
.L232:
	lsl	r3, r1, r10
	cmp	r4, r3
	bge	.L260
.L231:
	lsls	r4, r4, #1
	add	r10, r10, #1
	cmp	r5, #0
	bne	.L229
	mov	r7, r2
.L228:
	ldr	r3, [sp, #12]
	movs	r1, #0
	add	r0, fp, #1024
	mov	r2, #256
	cmp	r3, r1
	ite	eq
	moveq	r3, #255
	movne	r3, #15
	str	r3, [sp, #12]
	bl	memset(PLT)
	cbz	r7, .L218
	mov	r3, r8
	add	r6, sp, #272
	mov	r8, r7
	movs	r4, #0
	mov	r7, r3
.L239:
	ldr	r3, [sp, #8]
	add	r3, r3, r4
	ldrb	r5, [r3, #17]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	add	r10, fp, r5
	cmp	r3, r5
	blt	.L236
	ldrb	r3, [r10, #1024]	@ zero_extendqisi2
	cbz	r3, .L237
.L236:
	ldr	r3, [r7]
	movs	r2, #8
	mov	r0, r7
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L237:
	ldrb	r1, [r9, r4]	@ zero_extendqisi2
	adds	r4, r4, #1
	ldr	r3, [r6, #4]!
	cmp	r4, r8
	str	r3, [fp, r5, lsl #2]
	strb	r1, [r10, #1024]
	bne	.L239
.L218:
	addw	sp, sp, #1308
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L260:
	ldr	lr, [r8]
	movs	r3, #8
	mov	r0, r8
	str	r3, [lr, #20]
	ldr	r3, [lr]
	str	r1, [sp, #4]
	str	r2, [sp]
	blx	r3
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	b	.L231
.L220:
	add	r3, r4, #26
	ldr	r3, [r8, r3, lsl #2]
	str	r3, [sp, #8]
	cmp	r3, #0
	bne	.L222
.L257:
	ldr	r3, [r8]
	movs	r1, #50
	mov	r0, r8
	str	r4, [r3, #24]
	ldr	r2, [r8]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	ldr	fp, [r5]
	cmp	fp, #0
	bne	.L223
.L258:
	ldr	r3, [r8, #4]
	mov	r0, r8
	movs	r1, #1
	mov	r2, #1280
	ldr	r3, [r3]
	blx	r3
	mov	fp, r0
	str	r0, [r5]
	b	.L223
	.size	jpeg_make_c_derived_tbl, .-jpeg_make_c_derived_tbl
	.section	.text.start_pass_huff,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_huff, %function
start_pass_huff:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r1
	sub	sp, sp, #12
	mov	r4, r0
	ldr	r5, [r0, #364]
	cmp	r1, #0
	bne	.L272
	ldr	r1, .L279
	ldr	r2, .L279+4
.LPIC20:
	add	r1, pc
.LPIC21:
	add	r2, pc
.L262:
	ldr	r3, [r4, #244]
	str	r1, [r5, #8]
	str	r2, [r5, #4]
	cmp	r3, #0
	ble	.L270
	movs	r6, #0
	mov	r9, r4
	mov	fp, r6
	mov	r8, r5
.L271:
	ldr	r3, [r9, #248]
	ldr	r2, [r3, #20]
	ldr	r7, [r3, #24]
	cmp	r10, #0
	beq	.L264
	cmp	r2, #3
	bhi	.L275
	cmp	r7, #3
	bhi	.L276
.L266:
	add	ip, r5, r2, lsl #2
	ldr	r0, [ip, #76]
	cmp	r0, #0
	beq	.L277
.L267:
	add	r7, r5, r7, lsl #2
	movs	r1, #0
	movw	r2, #1028
	bl	memset(PLT)
	ldr	r0, [r7, #92]
	cmp	r0, #0
	beq	.L278
.L268:
	movs	r1, #0
	movw	r2, #1028
	bl	memset(PLT)
.L269:
	str	fp, [r8, #20]
	adds	r6, r6, #1
	ldr	r3, [r4, #244]
	add	r9, r9, #4
	add	r8, r8, #4
	cmp	r3, r6
	bgt	.L271
.L270:
	ldr	r2, [r4, #200]
	movs	r3, #0
	str	r3, [r5, #12]
	str	r3, [r5, #16]
	str	r2, [r5, #36]
	str	r3, [r5, #40]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L264:
	add	r3, r5, r2, lsl #2
	mov	r0, r4
	movs	r1, #1
	adds	r3, r3, #44
	bl	jpeg_make_c_derived_tbl(PLT)
	add	r3, r5, r7, lsl #2
	mov	r2, r7
	mov	r0, r4
	adds	r3, r3, #60
	mov	r1, r10
	bl	jpeg_make_c_derived_tbl(PLT)
	b	.L269
.L275:
	ldr	r3, [r4]
	movs	r1, #50
	mov	r0, r4
	str	r2, [r3, #24]
	ldr	lr, [r4]
	str	r1, [r3, #20]
	ldr	r3, [lr]
	str	r2, [sp, #4]
	blx	r3
	cmp	r7, #3
	ldr	r2, [sp, #4]
	bls	.L266
.L276:
	ldr	r3, [r4]
	movs	r1, #50
	mov	r0, r4
	str	r7, [r3, #24]
	ldr	lr, [r4]
	str	r1, [r3, #20]
	ldr	r3, [lr]
	str	r2, [sp, #4]
	blx	r3
	ldr	r2, [sp, #4]
	add	ip, r5, r2, lsl #2
	ldr	r0, [ip, #76]
	cmp	r0, #0
	bne	.L267
.L277:
	ldr	r3, [r4, #4]
	mov	r0, r4
	movs	r1, #1
	movw	r2, #1028
	ldr	r3, [r3]
	str	ip, [sp, #4]
	blx	r3
	ldr	ip, [sp, #4]
	mov	r3, r0
	str	r3, [ip, #76]
	b	.L267
.L272:
	ldr	r1, .L279+8
	ldr	r2, .L279+12
.LPIC18:
	add	r1, pc
.LPIC19:
	add	r2, pc
	b	.L262
.L278:
	ldr	r3, [r4, #4]
	mov	r0, r4
	movs	r1, #1
	movw	r2, #1028
	ldr	r3, [r3]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #92]
	b	.L268
.L280:
	.align	2
.L279:
	.word	finish_pass_huff-(.LPIC20+4)
	.word	encode_mcu_huff-(.LPIC21+4)
	.word	finish_pass_gather-(.LPIC18+4)
	.word	encode_mcu_gather-(.LPIC19+4)
	.size	start_pass_huff, .-start_pass_huff
	.section	.text.jpeg_gen_optimal_table,"ax",%progbits
	.align	2
	.global	jpeg_gen_optimal_table
	.thumb
	.thumb_func
	.type	jpeg_gen_optimal_table, %function
jpeg_gen_optimal_table:
	@ args = 0, pretend = 0, frame = 2104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subw	sp, sp, #2108
	mov	r10, #0
	add	r6, sp, #48
	mov	r9, r2
	mov	r8, r0
	movw	r2, #1028
	mov	r5, r1
	mov	r0, r6
	mov	r1, r10
	addw	r7, sp, #1076
	str	r10, [sp, #8]
	str	r10, [sp, #12]
	add	r4, sp, #8
	str	r10, [sp, #16]
	str	r10, [sp, #20]
	str	r10, [sp, #24]
	str	r10, [sp, #28]
	str	r10, [sp, #32]
	str	r10, [sp, #36]
	strb	r10, [sp, #40]
	bl	memset(PLT)
	movw	r2, #1028
	mov	r0, r7
	mov	r1, #-1
	bl	memset(PLT)
	sub	lr, r9, #4
	movw	r3, #257
	movs	r2, #1
	str	r4, [sp, #4]
	str	r2, [r9, #1024]
.L295:
	mov	r10, #51712
	mov	r0, lr
	movt	r10, 15258
	movs	r2, #0
	mov	ip, #-1
.L284:
	ldr	r1, [r0, #4]!
	cbz	r1, .L282
	cmp	r1, r10
	itt	le
	movle	r10, r1
	movle	ip, r2
.L282:
	adds	r2, r2, #1
	cmp	r2, r3
	bne	.L284
	mov	fp, #51712
	mov	r10, lr
	movt	fp, 15258
	movs	r1, #0
	mov	r2, #-1
.L287:
	ldr	r0, [r10, #4]!
	cbz	r0, .L285
	cmp	r0, fp
	bgt	.L285
	cmp	ip, r1
	itt	ne
	movne	fp, r0
	movne	r2, r1
.L285:
	adds	r1, r1, #1
	cmp	r1, r3
	bne	.L287
	cmp	r2, #0
	blt	.L288
	ldr	r0, [r6, ip, lsl #2]
	ldr	r1, [r7, ip, lsl #2]
	ldr	r4, [r9, r2, lsl #2]
	ldr	r10, [r9, ip, lsl #2]
	adds	r0, r0, #1
	str	r0, [r6, ip, lsl #2]
	movs	r0, #0
	cmp	r1, r0
	add	r10, r10, r4
	str	r10, [r9, ip, lsl #2]
	str	r0, [r9, r2, lsl #2]
	bge	.L290
	b	.L354
.L352:
	mov	r1, r0
.L290:
	ldr	r0, [r7, r1, lsl #2]
	ldr	r4, [r6, r1, lsl #2]
	cmp	r0, #0
	add	r4, r4, #1
	str	r4, [r6, r1, lsl #2]
	bge	.L352
.L289:
	str	r2, [r7, r1, lsl #2]
	ldr	r1, [r7, r2, lsl #2]
	ldr	r0, [r6, r2, lsl #2]
	cmp	r1, #0
	add	r0, r0, #1
	str	r0, [r6, r2, lsl #2]
	blt	.L295
.L294:
	ldr	r2, [r6, r1, lsl #2]
	adds	r2, r2, #1
	str	r2, [r6, r1, lsl #2]
	ldr	r1, [r7, r1, lsl #2]
	cmp	r1, #0
	bge	.L294
	b	.L295
.L354:
	mov	r1, ip
	b	.L289
.L288:
	add	r6, sp, #44
	ldr	r4, [sp, #4]
	add	fp, sp, #1072
	mov	r9, r6
	mov	r10, #39
	b	.L299
.L297:
	ldrb	r3, [r4, r7]	@ zero_extendqisi2
	adds	r3, r3, #1
	strb	r3, [r4, r7]
.L296:
	cmp	r9, fp
	beq	.L353
.L299:
	ldr	r7, [r9, #4]!
	cmp	r7, #0
	beq	.L296
	cmp	r7, #32
	ble	.L297
	ldr	r3, [r8]
	mov	r0, r8
	str	r10, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L297
.L353:
	mov	r1, r4
	sub	lr, sp, #8
	movs	r7, #31
.L304:
	ldrb	r0, [r1, #32]	@ zero_extendqisi2
	subs	r7, r7, #1
	cbz	r0, .L307
.L308:
	ldrb	r3, [r1, #30]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L318
	mov	r3, r7
.L301:
	subs	r3, r3, #1
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L301
.L300:
	ldrb	ip, [r1, #31]	@ zero_extendqisi2
	subs	r0, r0, #2
	strb	r0, [r1, #32]
	adds	r2, r3, #1
	add	r0, ip, #1
	strb	r0, [r1, #31]
	ldrb	r0, [r4, r2]	@ zero_extendqisi2
	adds	r0, r0, #2
	strb	r0, [r4, r2]
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	subs	r2, r2, #1
	strb	r2, [r4, r3]
	ldrb	r0, [r1, #32]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L308
.L307:
	subs	r1, r1, #1
	cmp	r1, lr
	bne	.L304
	ldrb	r3, [r4, #16]	@ zero_extendqisi2
	movs	r2, #16
	cmp	r3, #0
	bne	.L306
	ldrb	r3, [r4, #15]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L319
	ldrb	r3, [r4, #14]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L320
	ldrb	r3, [r4, #13]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L321
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L322
	ldrb	r3, [r4, #11]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L323
	ldrb	r3, [r4, #10]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L324
	ldrb	r3, [r4, #9]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L325
	ldrb	r3, [r4, #8]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L326
	ldrb	r3, [r4, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L327
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L328
	ldrb	r3, [r4, #5]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L329
	ldrb	r3, [r4, #4]	@ zero_extendqisi2
	cbnz	r3, .L330
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cbnz	r3, .L331
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cbnz	r3, .L332
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cbnz	r3, .L333
	ldrb	r3, [r4]	@ zero_extendqisi2
	movs	r2, #0
.L306:
	subs	r3, r3, #1
	mov	lr, r4
	strb	r3, [r4, r2]
	movs	r7, #0
	ldmia	lr!, {r0, r1, r2, r3}
	movs	r4, #1
	ldrb	lr, [lr]	@ zero_extendqisi2
	str	r0, [r5]	@ unaligned
	str	r1, [r5, #4]	@ unaligned
	strb	lr, [r5, #16]
	str	r2, [r5, #8]	@ unaligned
	str	r3, [r5, #12]	@ unaligned
.L310:
	mov	r2, r6
	movs	r3, #0
.L314:
	ldr	r1, [r2, #4]!
	cmp	r1, r4
	ittt	eq
	addeq	r1, r5, r7
	addeq	r7, r7, #1
	strbeq	r3, [r1, #17]
	adds	r3, r3, #1
	cmp	r3, #256
	bne	.L314
	adds	r4, r4, #1
	cmp	r4, #33
	bne	.L310
	movs	r3, #0
	str	r3, [r5, #276]
	addw	sp, sp, #2108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L318:
	mov	r3, r7
	b	.L300
.L319:
	movs	r2, #15
	b	.L306
.L333:
	movs	r2, #1
	b	.L306
.L332:
	movs	r2, #2
	b	.L306
.L331:
	movs	r2, #3
	b	.L306
.L330:
	movs	r2, #4
	b	.L306
.L329:
	movs	r2, #5
	b	.L306
.L328:
	movs	r2, #6
	b	.L306
.L327:
	movs	r2, #7
	b	.L306
.L326:
	movs	r2, #8
	b	.L306
.L325:
	movs	r2, #9
	b	.L306
.L324:
	movs	r2, #10
	b	.L306
.L323:
	movs	r2, #11
	b	.L306
.L322:
	movs	r2, #12
	b	.L306
.L321:
	movs	r2, #13
	b	.L306
.L320:
	movs	r2, #14
	b	.L306
	.size	jpeg_gen_optimal_table, .-jpeg_gen_optimal_table
	.section	.text.finish_pass_gather,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	finish_pass_gather, %function
finish_pass_gather:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #244]
	movs	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	mov	r4, r0
	ldr	r9, [r0, #364]
	cmp	r2, r3
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	str	r3, [sp, #16]
	str	r3, [sp, #20]
	str	r3, [sp, #24]
	str	r3, [sp, #28]
	str	r3, [sp, #32]
	str	r3, [sp, #36]
	ble	.L355
	mov	r8, r3
	mov	r7, r0
.L362:
	ldr	r3, [r7, #248]
	add	r1, sp, #40
	add	r8, r8, #1
	adds	r7, r7, #4
	ldr	r2, [r3, #20]
	ldr	fp, [r3, #24]
	lsls	r6, r2, #2
	lsl	r5, fp, #2
	add	r1, r1, r6
	ldr	r1, [r1, #-32]
	add	ip, r4, r6
	add	r10, r4, r5
	cbnz	r1, .L357
	ldr	r1, [ip, #88]
	cbz	r1, .L364
.L358:
	add	r2, r9, r2, lsl #2
	mov	r0, r4
	ldr	r2, [r2, #76]
	bl	jpeg_gen_optimal_table(PLT)
	add	r3, sp, #40
	add	r6, r6, r3
	movs	r3, #1
	str	r3, [r6, #-32]
.L357:
	add	r2, sp, #40
	add	r2, r2, r5
	ldr	r2, [r2, #-16]
	cbnz	r2, .L359
	ldr	r1, [r10, #104]
	cbz	r1, .L365
.L360:
	add	fp, r9, fp, lsl #2
	mov	r0, r4
	ldr	r2, [fp, #92]
	bl	jpeg_gen_optimal_table(PLT)
	add	r3, sp, #40
	add	r5, r5, r3
	movs	r3, #1
	str	r3, [r5, #-16]
.L359:
	ldr	r3, [r4, #244]
	cmp	r3, r8
	bgt	.L362
.L355:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L364:
	mov	r0, r4
	str	r2, [sp, #4]
	str	ip, [sp]
	bl	jpeg_alloc_huff_table(PLT)
	ldr	ip, [sp]
	mov	r1, r0
	ldr	r2, [sp, #4]
	str	r0, [ip, #88]
	b	.L358
.L365:
	mov	r0, r4
	bl	jpeg_alloc_huff_table(PLT)
	mov	r1, r0
	str	r0, [r10, #104]
	b	.L360
	.size	finish_pass_gather, .-finish_pass_gather
	.section	.text.jinit_huff_encoder,"ax",%progbits
	.align	2
	.global	jinit_huff_encoder
	.thumb
	.thumb_func
	.type	jinit_huff_encoder, %function
jinit_huff_encoder:
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
	ldr	r3, .L368
	mov	r4, r0
	str	r4, [r6, #364]
	mov	r2, r5
	movs	r1, #0
.LPIC22:
	add	r3, pc
	str	r3, [r0], #60
	bl	memset(PLT)
	mov	r2, r5
	add	r0, r4, #44
	movs	r1, #0
	bl	memset(PLT)
	mov	r2, r5
	add	r0, r4, #92
	movs	r1, #0
	bl	memset(PLT)
	add	r0, r4, #76
	mov	r2, r5
	movs	r1, #0
	pop	{r4, r5, r6, lr}
	b	memset(PLT)
.L369:
	.align	2
.L368:
	.word	start_pass_huff-(.LPIC22+4)
	.size	jinit_huff_encoder, .-jinit_huff_encoder
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
