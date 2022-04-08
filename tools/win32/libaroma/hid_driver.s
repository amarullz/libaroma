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
	.file	"hid_driver.c"
	.section	.text.LINUXHIDRV_release,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_release
	.thumb
	.thumb_func
	.type	LINUXHIDRV_release, %function
LINUXHIDRV_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	cbz	r0, .L1
	ldr	r4, [r0]
	ldr	r2, [r4]
	cmp	r2, #0
	add	r3, r2, #-1
	str	r3, [r4]
	ble	.L7
	movs	r6, #0
	b	.L6
.L4:
	add	r3, r4, r3, lsl #3
	ldr	r0, [r3, #4]
	bl	close(PLT)
	ldr	r2, [r4]
	cmp	r2, #0
	add	r3, r2, #-1
	str	r3, [r4]
	ble	.L16
.L6:
	add	r2, r3, r3, lsl #2
	add	r2, r4, r2, lsl #5
	ldr	r1, [r2, #204]
	cmp	r1, #0
	beq	.L4
	ldr	r0, [r2, #208]
	bl	free(PLT)
	ldr	r3, [r4]
	add	r2, r3, r3, lsl #2
	add	r2, r4, r2, lsl #5
	str	r6, [r2, #204]
	b	.L4
.L16:
	ldr	r0, [r5]
.L3:
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r5]
.L1:
	pop	{r4, r5, r6, pc}
.L7:
	mov	r0, r4
	b	.L3
	.size	LINUXHIDRV_release, .-LINUXHIDRV_release
	.section	.text.LINUXHIDRV_translate_keyboard,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_translate_keyboard
	.thumb
	.thumb_func
	.type	LINUXHIDRV_translate_keyboard, %function
LINUXHIDRV_translate_keyboard:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r1, [r3, #8]
	cmp	r1, #1
	beq	.L102
	movs	r0, #0
	bx	lr
.L102:
	push	{r4, r5}
	movs	r5, #3
	strb	r1, [r2]
	movs	r0, #0
	ldrh	r4, [r3, #10]
	strb	r5, [r2, #8]
	ldr	r1, [r3, #12]
	str	r4, [r2, #4]
	str	r0, [r2, #12]
	str	r0, [r2, #16]
	cbz	r1, .L21
	cmp	r1, #1
	beq	.L21
.L19:
	ldrh	r3, [r3, #10]
	cmp	r3, #114
	beq	.L23
	bhi	.L24
	cmp	r3, #102
	beq	.L25
	bhi	.L26
	cmp	r3, #28
	beq	.L25
	bhi	.L27
	cmp	r3, #14
	beq	.L28
	cmp	r3, #26
	beq	.L25
.L22:
	movs	r0, #7
	b	.L18
.L21:
	strb	r1, [r2, #8]
	b	.L19
.L24:
	cmp	r3, #212
	beq	.L25
	bhi	.L31
	cmp	r3, #139
	beq	.L36
	bls	.L103
	cmp	r3, #158
	bne	.L104
.L28:
	movs	r0, #3
	b	.L18
.L26:
	cmp	r3, #106
	beq	.L23
	bhi	.L30
	cmp	r3, #103
	beq	.L29
	cmp	r3, #105
	bne	.L22
.L29:
	movs	r0, #4
	b	.L18
.L31:
	cmp	r3, #232
	bhi	.L34
	cmp	r3, #231
	bcs	.L25
	cmp	r3, #217
	beq	.L36
	cmp	r3, #229
	bne	.L22
.L36:
	movs	r0, #2
.L18:
	pop	{r4, r5}
	bx	lr
.L27:
	cmp	r3, #42
	beq	.L29
	cmp	r3, #58
	bne	.L22
.L23:
	movs	r0, #5
	b	.L18
.L103:
	cmp	r3, #115
	beq	.L29
	cmp	r3, #116
	bne	.L22
.L25:
	movs	r0, #1
	b	.L18
.L30:
	cmp	r3, #107
	beq	.L25
	cmp	r3, #108
	beq	.L23
	b	.L22
.L34:
	cmp	r3, #272
	bne	.L22
	b	.L25
.L104:
	cmp	r3, #191
	bne	.L22
	b	.L25
	.size	LINUXHIDRV_translate_keyboard, .-LINUXHIDRV_translate_keyboard
	.global	__aeabi_idiv
	.section	.text.LINUXHIDRV_translate_touch,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_translate_touch
	.thumb
	.thumb_func
	.type	LINUXHIDRV_translate_touch, %function
LINUXHIDRV_translate_touch:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	ldrh	r5, [r3, #8]
	sub	sp, sp, #28
	mov	r4, r1
	ldr	r7, [r0]
	cmp	r5, #3
	beq	.L181
	cbnz	r5, .L121
.L122:
	ldrh	r3, [r3, #10]
	cmp	r3, #2
	beq	.L147
	cmp	r3, #0
	beq	.L120
.L121:
	ldrb	r3, [r4, #108]	@ zero_extendqisi2
.L123:
	movs	r0, #0
	bic	r3, r3, #8
	strb	r3, [r4, #108]
.L107:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L181:
	ldrh	r1, [r3, #10]
	cmp	r1, #58
	bhi	.L147
	tbh	[pc, r1, lsl #1]
.L109:
	.2byte	(.L113-.L109)/2
	.2byte	(.L114-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L111-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L112-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L113-.L109)/2
	.2byte	(.L114-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L147-.L109)/2
	.2byte	(.L115-.L109)/2
	.2byte	(.L112-.L109)/2
.L111:
	ldrb	r1, [r4, #108]	@ zero_extendqisi2
	ldr	r0, [r4, #88]
	orr	r5, r1, #3
	strb	r5, [r4, #108]
	cmp	r0, #0
	beq	.L180
	ldr	r0, [r4, #92]
	cmp	r0, #0
	beq	.L180
	ldr	r0, [r3, #12]
	cmp	r0, #-2147483648
	itete	ne
	bicne	r1, r1, #8
	orreq	r1, r1, #11
	orrne	r1, r1, #3
	strbeq	r1, [r4, #108]
	itttt	ne
	strbne	r1, [r4, #108]
	ldrne	r1, [r3, #12]
	ubfxne	r0, r1, #16, #15
	uxthne	r1, r1
	itt	ne
	strne	r0, [r4, #88]
	strne	r1, [r4, #92]
	movs	r1, #0
	strh	r1, [r3, #8]	@ movhi
	strh	r1, [r3, #10]	@ movhi
.L120:
	ldrb	r5, [r4, #108]	@ zero_extendqisi2
	tst	r5, #24
	beq	.L126
	ldr	r3, .L185
.LPIC10:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L127
.L128:
	ldr	r3, .L185+4
.LPIC12:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L127
.L129:
	ldr	r3, [r4, #116]
	orr	r0, r5, #8
	ldr	r1, [r4, #120]
	strb	r0, [r4, #108]
	cmp	r3, r1
	beq	.L133
	ldr	r9, [r4, #140]
	ldr	fp, [r4, #144]
	cmp	r9, fp
	beq	.L133
	ldr	r0, [r6]
	ldr	ip, [r6, #16]
	ldr	lr, [r6, #20]
	ldrb	r0, [r0, #2524]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L182
.L136:
	ldr	r10, [r4, #88]
	add	r0, lr, #-1
	subs	r1, r1, r3
	stmia	sp, {r2, ip}
	rsb	r3, r3, r10
	mul	r0, r0, r3
	bl	__aeabi_idiv(PLT)
	ldr	r3, [r4, #92]
	rsb	r1, r9, fp
	ldr	ip, [sp, #4]
	mov	r8, r0
	rsb	r9, r9, r3
	str	r3, [sp, #4]
	add	r0, ip, #-1
	mul	r0, r0, r9
	bl	__aeabi_idiv(PLT)
	ldmia	sp, {r2, r3}
	mov	lr, r0
.L135:
	ldrb	r1, [r7, #2524]	@ zero_extendqisi2
	cbz	r1, .L137
	eor	r8, lr, r8
	eor	lr, lr, r8
	eor	r8, lr, r8
.L137:
	ldrb	r1, [r7, #2525]	@ zero_extendqisi2
	cbz	r1, .L138
	ldr	r1, [r6, #16]
	rsb	r8, r8, r1
.L138:
	ldrb	r1, [r7, #2526]	@ zero_extendqisi2
	cbz	r1, .L139
	ldr	r1, [r6, #20]
	rsb	lr, lr, r1
.L139:
	cmp	r8, #-1
	beq	.L147
	cmp	lr, #-1
	beq	.L147
	cmp	r10, #-1
	beq	.L147
	adds	r3, r3, #1
	beq	.L147
	and	r9, r5, #252
	and	r3, r5, #4
	orr	r0, r9, #8
	and	r1, r3, #255
	strb	r0, [r4, #108]
	cmp	r3, #0
	bne	.L141
	ldr	ip, [r4, #80]
	orr	r3, r9, #12
	strb	r3, [r4, #108]
	cmp	ip, #0
	ble	.L142
	ldr	r3, [r4, #84]
.L144:
	ldr	r7, [r3, #4]
	ldr	r5, [r3, #12]
	rsb	r0, r8, r7
	ldr	r7, [r3, #8]
	cmp	r0, #0
	add	r5, r5, r5, lsr #31
	it	lt
	rsblt	r0, r0, #0
	rsb	r10, lr, r7
	cmp	r0, r5, asr #1
	bge	.L143
	ldr	r0, [r3, #16]
	eor	r7, r10, r10, asr #31
	sub	r7, r7, r10, asr #31
	add	r0, r0, r0, lsr #31
	cmp	r7, r0, asr #1
	blt	.L183
.L143:
	adds	r1, r1, #1
	adds	r3, r3, #20
	cmp	r1, ip
	bne	.L144
.L142:
	movs	r3, #1
	strb	r3, [r2, #8]
.L145:
	movs	r3, #2
	str	r8, [r4, #96]
	str	lr, [r4, #100]
	movs	r5, #0
	strb	r3, [r2]
	movs	r0, #6
	ldr	r1, [r4, #96]
	ldr	r3, [r4, #100]
	str	r5, [r2, #4]
	str	r1, [r2, #12]
	str	r3, [r2, #16]
	b	.L107
.L113:
	ldrb	r1, [r4, #108]	@ zero_extendqisi2
	orr	r1, r1, #1
	strb	r1, [r4, #108]
	ldrh	r5, [r3, #8]
	ldr	r1, [r3, #12]
	str	r1, [r4, #88]
	cmp	r5, #0
	beq	.L122
	b	.L121
.L114:
	ldrb	r1, [r4, #108]	@ zero_extendqisi2
	orr	r1, r1, #2
	strb	r1, [r4, #108]
	ldrh	r5, [r3, #8]
	ldr	r1, [r3, #12]
	str	r1, [r4, #92]
	cmp	r5, #0
	beq	.L122
	b	.L121
.L127:
	add	r0, r4, #96
	ldr	r3, [r4, #96]
	add	r5, r2, #12
	ldr	r1, .L185+8
	vld1.32	{d16}, [r0]
	movs	r0, #0
	adds	r3, r3, #1
	vst1.32	{d16}, [r5]
.LPIC13:
	add	r1, pc
	ldrb	r3, [r4, #108]	@ zero_extendqisi2
	str	r0, [r1]
	it	eq
	andeq	r3, r3, #235
	beq	.L123
	mov	r1, #-1
	bic	r5, r3, #20
	str	r1, [r4, #96]
	str	r1, [r4, #100]
	and	r1, r3, #32
	and	r7, r1, #255
	strb	r5, [r4, #108]
	cmp	r1, #0
	beq	.L184
	ldr	r1, [r4, #104]
	bic	r3, r3, #52
	ldr	r7, [r4, #84]
	mov	r8, #3
	strb	r3, [r4, #108]
	movs	r3, #1
	strh	r3, [sp, #16]	@ movhi
	add	r1, r1, r1, lsl #2
	ldr	lr, [r2, #16]
	lsls	r1, r1, #2
	ldr	r5, [r7, r1]
	adds	r3, r7, r1
	str	r8, [sp, #20]
	ldr	r1, [r3, #12]
	ldr	r7, [r3, #4]
	strh	r5, [sp, #18]	@ movhi
	ldr	r5, [r2, #12]
	add	r1, r1, r1, lsr #31
	ldr	ip, [r3, #8]
	subs	r7, r7, r5
	eor	r5, r7, r7, asr #31
	sub	r5, r5, r7, asr #31
	cmp	r5, r1, asr #1
	bge	.L132
	ldr	r3, [r3, #16]
	rsb	r1, lr, ip
	cmp	r1, #0
	it	lt
	rsblt	r1, r1, #0
	add	r3, r3, r3, lsr #31
	cmp	r1, r3, asr #1
	it	lt
	strlt	r0, [sp, #20]
.L132:
	mov	r3, #-1
	mov	r0, r6
	str	r3, [r4, #104]
	mov	r1, r4
	add	r3, sp, #8
	bl	LINUXHIDRV_translate_keyboard(PLT)
	b	.L107
.L147:
	movs	r0, #0
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L126:
	ldr	r3, .L185+12
.LPIC11:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L128
	b	.L129
.L182:
	mov	r0, lr
	mov	lr, ip
	mov	ip, r0
	b	.L136
.L115:
	ldr	r1, [r3, #12]
	cmp	r1, #0
	bge	.L121
	ldrb	r5, [r4, #108]	@ zero_extendqisi2
	movs	r1, #1
	ldr	lr, .L185+16
	ldr	r0, .L185+20
	orr	r5, r5, #16
	strb	r5, [r4, #108]
.LPIC8:
	add	lr, pc
	ldrh	r5, [r3, #8]
.LPIC9:
	add	r0, pc
	str	r1, [lr]
	str	r1, [r0]
	cmp	r5, #0
	beq	.L122
	b	.L121
.L112:
	ldr	r1, [r3, #12]
	cmp	r1, #0
	bne	.L121
	ldrb	r1, [r4, #108]	@ zero_extendqisi2
	orr	r1, r1, #16
	strb	r1, [r4, #108]
.L180:
	ldrh	r5, [r3, #8]
	cmp	r5, #0
	beq	.L122
	b	.L121
.L184:
	movs	r3, #2
	strb	r7, [r2, #8]
	str	r7, [r2, #4]
	movs	r0, #6
	strb	r3, [r2]
	b	.L107
.L133:
	ldr	r8, [r4, #88]
	ldr	lr, [r4, #92]
	mov	r10, r8
	mov	r3, lr
	b	.L135
.L141:
	lsls	r3, r5, #26
	bpl	.L146
	str	r8, [r4, #96]
	movs	r0, #0
	str	lr, [r4, #100]
	b	.L107
.L146:
	movs	r3, #2
	strb	r3, [r2, #8]
	b	.L145
.L183:
	orr	r9, r9, #44
	str	r1, [r4, #104]
	strb	r9, [r4, #108]
	mov	r1, r4
	ldr	r5, [r3]
	mov	r0, r6
	str	r8, [r4, #96]
	add	r3, sp, #8
	str	lr, [r4, #100]
	movs	r4, #1
	strh	r5, [sp, #18]	@ movhi
	strh	r4, [sp, #16]	@ movhi
	str	r4, [sp, #20]
	bl	LINUXHIDRV_translate_keyboard(PLT)
	b	.L107
.L186:
	.align	2
.L185:
	.word	.LANCHOR1-(.LPIC10+4)
	.word	.LANCHOR0-(.LPIC12+4)
	.word	.LANCHOR0-(.LPIC13+4)
	.word	.LANCHOR1-(.LPIC11+4)
	.word	.LANCHOR0-(.LPIC8+4)
	.word	.LANCHOR1-(.LPIC9+4)
	.size	LINUXHIDRV_translate_touch, .-LINUXHIDRV_translate_touch
	.section	.text.LINUXHIDRV_translate_pointer,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_translate_pointer
	.thumb
	.thumb_func
	.type	LINUXHIDRV_translate_pointer, %function
LINUXHIDRV_translate_pointer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r3
	ldrh	r5, [r3, #8]
	mov	r7, r0
	mov	r6, r2
	cmp	r5, #2
	beq	.L213
	cmp	r5, #1
	beq	.L202
.L210:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L202:
	ldrh	lr, [r3, #10]
	cmp	lr, #272
	bne	.L203
	ldr	r2, .L218
	ldr	r3, [r3, #12]
	ldr	r0, .L218+4
.LPIC39:
	add	r2, pc
	ldrb	r1, [r2]	@ zero_extendqisi2
	sub	r3, #1
	clz	r3, r3
	lsrs	r3, r3, #5
.LPIC38:
	add	r0, pc
	strb	r3, [r0]
	cmp	r1, #0
	beq	.L204
	ldr	r1, .L218+8
	ldr	r2, .L218+12
.LPIC40:
	add	r1, pc
.LPIC41:
	add	r2, pc
	ldr	r0, [r1]
	ldr	r4, [r2]
.L205:
	movs	r1, #2
	movs	r2, #0
	str	r0, [r6, #12]
	movs	r0, #6
	str	r4, [r6, #16]
	strb	r3, [r6, #8]
	strb	r1, [r6]
	str	r2, [r6, #4]
	pop	{r4, r5, r6, r7, r8, pc}
.L213:
	ldrh	r3, [r3, #10]
	cmp	r3, #1
	beq	.L190
	bcc	.L191
	cmp	r3, #8
	bne	.L210
	movs	r3, #0
	movs	r2, #1
	strb	r2, [r6]
	mov	r1, #510
	ldr	r2, [r4, #12]
	strb	r3, [r6, #8]
	ldr	r0, [r4, #12]
	str	r2, [r6, #16]
	str	r3, [r6, #12]
	cmp	r0, #-1
	ite	ne
	movne	r0, #5
	moveq	r0, #4
	str	r1, [r6, #4]
	pop	{r4, r5, r6, r7, r8, pc}
.L203:
	pop	{r4, r5, r6, r7, r8, lr}
	b	LINUXHIDRV_translate_keyboard(PLT)
.L191:
	ldr	r2, .L218+16
	ldr	r3, [r4, #12]
.LPIC14:
	add	r2, pc
	ldrb	r1, [r2]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L193
	ldr	r2, .L218+20
.LPIC15:
	add	r2, pc
	ldr	r2, [r2]
.L194:
	adds	r2, r3, r2
	bmi	.L214
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bge	.L215
	ldr	r1, .L218+24
	uxth	r3, r2
	ldr	r0, .L218+28
.LPIC24:
	add	r1, pc
	ldrh	r1, [r1]
.LPIC23:
	add	r0, pc
	str	r2, [r0]
	lsls	r2, r1, #16
	b	.L196
.L190:
	ldr	r1, .L218+32
	ldr	r2, [r4, #12]
.LPIC25:
	add	r1, pc
	ldrb	r0, [r1]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L198
	ldr	r3, .L218+36
.LPIC26:
	add	r3, pc
	ldr	r3, [r3]
.L199:
	adds	r3, r2, r3
	bmi	.L216
	ldr	r2, [r7, #20]
	cmp	r3, r2
	bge	.L217
	ldr	r0, .L218+40
	lsls	r2, r3, #16
	ldr	r1, .L218+44
.LPIC34:
	add	r0, pc
.LPIC35:
	add	r1, pc
	str	r3, [r0]
	ldrh	r3, [r1]
.L196:
	ldr	r0, .L218+48
	orrs	r2, r2, r3
	movs	r1, #0
.LPIC45:
	add	r0, pc
	bl	libaroma_fb_config(PLT)
	ldr	r3, .L218+52
.LPIC46:
	add	r3, pc
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L210
	ldr	r1, .L218+56
	movs	r3, #2
	ldr	r2, .L218+60
	movs	r4, #0
	strb	r3, [r6]
	movs	r0, #6
.LPIC36:
	add	r1, pc
	strb	r3, [r6, #8]
.LPIC37:
	add	r2, pc
	ldr	r1, [r1]
	ldr	r2, [r2]
	str	r4, [r6, #4]
	str	r1, [r6, #12]
	str	r2, [r6, #16]
	pop	{r4, r5, r6, r7, r8, pc}
.L204:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r4, .L218+64
	ldr	r7, .L218+68
	strb	r5, [r2]
	asrs	r2, r0, #1
	asrs	r1, r1, #1
.LPIC42:
	add	r4, pc
.LPIC43:
	add	r7, pc
	str	r1, [r4]
	mov	r0, r1
	mov	r4, r2
	str	r2, [r7]
	b	.L205
.L198:
	ldr	r0, [r7, #20]
	ldr	r4, [r7, #16]
	ldr	lr, .L218+72
	ldr	r5, .L218+76
	asrs	r0, r0, #1
	strb	r3, [r1]
	asrs	r4, r4, #1
.LPIC28:
	add	lr, pc
.LPIC27:
	add	r5, pc
	str	r0, [lr]
	mov	r3, r0
	str	r4, [r5]
	b	.L199
.L193:
	ldr	r1, [r0, #16]
	mov	lr, #1
	ldr	r0, [r0, #20]
	ldr	r5, .L218+80
	ldr	r4, .L218+84
	asr	r1, r1, lr
	strb	lr, [r2]
	asr	r0, r0, lr
.LPIC16:
	add	r5, pc
.LPIC17:
	add	r4, pc
	str	r1, [r5]
	mov	r2, r1
	str	r0, [r4]
	b	.L194
.L217:
	ldr	r0, .L218+88
	subs	r3, r2, #1
	ldr	r1, .L218+92
	lsls	r2, r3, #16
.LPIC32:
	add	r0, pc
.LPIC33:
	add	r1, pc
	str	r3, [r0]
	ldrh	r3, [r1]
	b	.L196
.L215:
	ldr	r2, .L218+96
	subs	r1, r3, #1
	ldr	r0, .L218+100
	uxth	r3, r1
.LPIC22:
	add	r2, pc
	ldrh	r2, [r2]
.LPIC21:
	add	r0, pc
	str	r1, [r0]
	lsls	r2, r2, #16
	b	.L196
.L216:
	ldr	r0, .L218+104
	movs	r3, #0
	ldr	r1, .L218+108
	mov	r2, r3
.LPIC30:
	add	r0, pc
.LPIC31:
	add	r1, pc
	str	r3, [r0]
	ldrh	r3, [r1]
	b	.L196
.L214:
	ldr	r2, .L218+112
	movs	r1, #0
	ldr	r0, .L218+116
	mov	r3, r1
.LPIC20:
	add	r2, pc
	ldrh	r2, [r2]
.LPIC19:
	add	r0, pc
	str	r1, [r0]
	lsls	r2, r2, #16
	b	.L196
.L219:
	.align	2
.L218:
	.word	.LANCHOR2-(.LPIC39+4)
	.word	.LANCHOR5-(.LPIC38+4)
	.word	.LANCHOR3-(.LPIC40+4)
	.word	.LANCHOR4-(.LPIC41+4)
	.word	.LANCHOR2-(.LPIC14+4)
	.word	.LANCHOR3-(.LPIC15+4)
	.word	.LANCHOR4-(.LPIC24+4)
	.word	.LANCHOR3-(.LPIC23+4)
	.word	.LANCHOR2-(.LPIC25+4)
	.word	.LANCHOR4-(.LPIC26+4)
	.word	.LANCHOR4-(.LPIC34+4)
	.word	.LANCHOR3-(.LPIC35+4)
	.word	.LC0-(.LPIC45+4)
	.word	.LANCHOR5-(.LPIC46+4)
	.word	.LANCHOR3-(.LPIC36+4)
	.word	.LANCHOR4-(.LPIC37+4)
	.word	.LANCHOR3-(.LPIC42+4)
	.word	.LANCHOR4-(.LPIC43+4)
	.word	.LANCHOR4-(.LPIC28+4)
	.word	.LANCHOR3-(.LPIC27+4)
	.word	.LANCHOR3-(.LPIC16+4)
	.word	.LANCHOR4-(.LPIC17+4)
	.word	.LANCHOR4-(.LPIC32+4)
	.word	.LANCHOR3-(.LPIC33+4)
	.word	.LANCHOR4-(.LPIC22+4)
	.word	.LANCHOR3-(.LPIC21+4)
	.word	.LANCHOR4-(.LPIC30+4)
	.word	.LANCHOR3-(.LPIC31+4)
	.word	.LANCHOR4-(.LPIC20+4)
	.word	.LANCHOR3-(.LPIC19+4)
	.size	LINUXHIDRV_translate_pointer, .-LINUXHIDRV_translate_pointer
	.section	.text.LINUXHIDRV_blacklist,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_blacklist
	.thumb
	.thumb_func
	.type	LINUXHIDRV_blacklist, %function
LINUXHIDRV_blacklist:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	LINUXHIDRV_blacklist, .-LINUXHIDRV_blacklist
	.section	.text.LINUXHIDRV_dumpdev,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_dumpdev
	.thumb
	.thumb_func
	.type	LINUXHIDRV_dumpdev, %function
LINUXHIDRV_dumpdev:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	mov	r4, r0
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L223
	mov	r2, r0
	mov	r0, r5
.LPIC47:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldrb	r5, [r4, #4]	@ zero_extendqisi2
	add	r2, r4, #15
	ldr	r1, .L223+4
	adds	r3, r4, #5
	str	r5, [sp]
.LPIC48:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, lr}
	b	fputc(PLT)
.L224:
	.align	2
.L223:
	.word	.LC1-(.LPIC47+4)
	.word	.LC2-(.LPIC48+4)
	.size	LINUXHIDRV_dumpdev, .-LINUXHIDRV_dumpdev
	.section	.text.LINUXHIDRV_getdevclass,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_getdevclass
	.thumb
	.thumb_func
	.type	LINUXHIDRV_getdevclass, %function
LINUXHIDRV_getdevclass:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movw	r1, #17697
	sub	sp, sp, #112
	movt	r1, 32864
	add	r2, sp, #16
	mov	r4, r0
	bl	ioctl(PLT)
	movw	r1, #17699
	add	r2, sp, #8
	movt	r1, 32776
	mov	r0, r4
	bl	ioctl(PLT)
	movw	r1, #17698
	mov	r0, r4
	mov	r2, sp
	movt	r1, 32770
	bl	ioctl(PLT)
	ldrb	r3, [sp, #16]	@ zero_extendqisi2
	cbnz	r3, .L241
	add	r3, sp, #17
	add	r1, sp, #48
	b	.L238
.L255:
	cmp	r3, r1
	beq	.L254
.L238:
	ldrb	r2, [r3], #1	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L255
.L241:
	movs	r0, #1
.L226:
	ldrb	r3, [sp, #48]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L246
	ldrb	r3, [sp, #49]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L246
	ldrb	r3, [sp, #52]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L246
	ldrb	r3, [sp, #53]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L246
	ldrb	r3, [sp, #54]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L246
	ldrb	r3, [sp, #55]	@ zero_extendqisi2
	adds	r2, r3, #0
	it	ne
	movne	r2, #1
.L232:
	ldrb	r3, [sp, #14]	@ zero_extendqisi2
	and	r3, r3, #96
	cmp	r3, #96
	ldrb	r3, [sp, #57]	@ zero_extendqisi2
	beq	.L256
	lsls	r3, r3, #29
	bpl	.L235
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #3
	it	eq
	orreq	r0, r0, #2
.L235:
	ldrb	r3, [sp]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #3
	it	eq
	orreq	r0, r0, #8
	add	sp, sp, #112
	@ sp needed
	pop	{r4, pc}
.L254:
	ldrb	r3, [sp, #60]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L241
	add	r3, sp, #61
	b	.L237
.L257:
	add	r2, sp, #112
	cmp	r3, r2
	beq	.L226
.L237:
	ldrb	r0, [r3], #1	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L257
	b	.L241
.L256:
	lsls	r1, r3, #29
	bpl	.L258
.L234:
	orr	r0, r0, #6
	b	.L235
.L258:
	cmp	r2, #0
	bne	.L235
	b	.L234
.L246:
	movs	r2, #1
	b	.L232
	.size	LINUXHIDRV_getdevclass, .-LINUXHIDRV_getdevclass
	.section	.text.LINUXHIDRV_init_device,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_init_device
	.thumb
	.thumb_func
	.type	LINUXHIDRV_init_device, %function
LINUXHIDRV_init_device:
	@ args = 0, pretend = 0, frame = 6168
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r1
	ldr	r6, .L304
	add	r7, r2, #15
	sub	sp, sp, #6144
	mov	r4, r2
	sub	sp, sp, #28
.LPIC57:
	add	r6, pc
	addw	r9, sp, #2072
	ldmia	r6!, {r0, r1, r2, r3}
	mov	r5, r9
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r6!, {r0, r1, r2, r3}
	ldr	r6, [r6]
	stmia	r5!, {r0, r1, r2, r3}
	movs	r1, #0
	movw	r2, #4061
	addw	r0, sp, #2107
	lsrs	r3, r6, #16
	strh	r6, [r5], #2	@ movhi
	strb	r3, [r5]
	bl	memset(PLT)
	movw	r1, #17670
	mov	r2, r7
	mov	r0, r8
	movt	r1, 32832
	bl	ioctl(PLT)
	cmp	r0, #0
	ble	.L260
	mov	r0, r7
	bl	LINUXHIDRV_blacklist(PLT)
	mov	r5, r0
	cbz	r0, .L300
.L260:
	movs	r0, #0
.L296:
	add	sp, sp, #6144
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L300:
	mov	r0, r8
	bl	LINUXHIDRV_getdevclass(PLT)
	strb	r0, [r4, #4]
	cmp	r0, #0
	beq	.L260
	mov	r1, r5
	movs	r2, #72
	add	r0, r4, #88
	bl	memset(PLT)
	ldrb	r2, [r4, #4]	@ zero_extendqisi2
	mov	r3, #-1
	str	r5, [r4, #80]
	strb	r5, [r4, #79]
	lsls	r1, r2, #30
	str	r3, [r4, #96]
	str	r3, [r4, #100]
	str	r3, [r4, #88]
	str	r3, [r4, #92]
	str	r3, [r4, #104]
	bpl	.L272
	lsls	r3, r2, #29
	bmi	.L301
	movw	r1, #17728
	add	r2, r4, #112
	movt	r1, 32792
	mov	r0, r8
	bl	ioctl(PLT)
	movw	r1, #17729
	mov	r0, r8
	add	r2, r4, #136
	movt	r1, 32792
	bl	ioctl(PLT)
.L264:
	mov	r1, r7
	mov	r0, r9
	bl	strcat(PLT)
	mov	r0, r9
	movs	r1, #0
	bl	open(PLT)
	subs	r6, r0, #0
	blt	.L265
	add	r5, sp, #24
	movw	r2, #2047
	mov	r1, r5
	bl	read(PLT)
	mov	r7, r0
	mov	r0, r6
	bl	close(PLT)
	cmp	r7, #0
	ble	.L265
	movs	r3, #0
	movs	r1, #1
	strb	r3, [r5, r7]
	adds	r2, r5, #1
	ldrb	r0, [r5]	@ zero_extendqisi2
	str	r1, [r4, #80]
	cmp	r0, #0
	beq	.L270
.L269:
	cmp	r0, #58
	mov	r3, r2
	ldrb	r0, [r2], #1	@ zero_extendqisi2
	itt	eq
	addeq	r1, r1, #1
	streq	r1, [r4, #80]
	cmp	r0, #0
	bne	.L269
	movw	r2, #43691
	movt	r2, 10922
	smull	r0, r2, r2, r1
	sub	r1, r2, r1, asr #31
	cmp	r1, #0
	str	r1, [r4, #80]
	ble	.L270
.L271:
	ldr	r2, .L304+4
	add	r0, r1, r1, lsl #2
	str	r3, [sp, #4]
	mov	r8, #0
	lsls	r0, r0, #2
	mov	fp, r4
.LPIC58:
	add	r2, pc
	str	r2, [sp, #16]
	add	r2, sp, #24
	str	r2, [sp, #20]
	mov	r10, r8
	bl	malloc(PLT)
	ldr	r3, [sp, #4]
	str	r0, [r4, #84]
	mov	r4, r8
.L273:
	cmp	r4, #0
	bne	.L302
	add	r3, sp, #24
	mov	r0, r3
	str	r3, [sp, #8]
.L275:
	movs	r1, #58
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L287
	mov	r5, r0
	movs	r1, #58
	strb	r10, [r5], #1
	mov	r0, r5
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L288
	mov	r6, r0
	movs	r1, #58
	strb	r10, [r6], #1
	mov	r0, r6
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L289
	mov	r7, r0
	movs	r1, #58
	strb	r10, [r7], #1
	mov	r0, r7
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L290
	mov	r9, r0
	movs	r1, #58
	strb	r10, [r9], #1
	mov	r0, r9
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L291
	mov	ip, r0
	movs	r1, #58
	strb	r10, [ip], #1
	mov	r0, ip
	str	ip, [sp, #4]
	bl	strchr(PLT)
	ldr	ip, [sp, #4]
	mov	r3, r0
	cmp	r0, #0
	beq	.L292
	strb	r10, [r0]
	str	r9, [sp, #12]
	ldr	r0, [sp, #8]
	str	ip, [sp, #8]
.L282:
	ldr	r1, [sp, #16]
	str	r3, [sp, #4]
	bl	strcmp(PLT)
	ldr	r3, [sp, #4]
	mov	r9, r0
	cbz	r0, .L303
.L274:
	ldr	r2, [fp, #80]
	adds	r4, r4, #1
	add	r8, r8, #20
	cmp	r2, r4
	bgt	.L273
.L272:
	movs	r0, #1
	b	.L296
.L301:
	movw	r1, #17781
	add	r2, r4, #112
	mov	r0, r8
	movt	r1, 32792
	bl	ioctl(PLT)
	movw	r1, #17782
	mov	r0, r8
	add	r2, r4, #136
	movt	r1, 32792
	bl	ioctl(PLT)
	b	.L264
.L302:
	mov	r0, r3
	cmp	r3, #0
	beq	.L277
	adds	r3, r3, #1
	str	r3, [sp, #8]
	mov	r0, r3
	b	.L275
.L303:
	mov	r0, r5
	mov	r1, r9
	ldr	r5, [fp, #84]
	mov	r2, r9
	str	r3, [sp, #4]
	bl	strtol(PLT)
	ldr	lr, [fp, #84]
	mov	r1, r9
	str	r0, [r5, r8]
	mov	r2, r9
	mov	r0, r6
	add	r5, lr, r8
	bl	strtol(PLT)
	ldr	r6, [fp, #84]
	mov	r1, r9
	str	r0, [r5, #4]
	mov	r2, r9
	mov	r0, r7
	add	r5, r6, r8
	bl	strtol(PLT)
	ldr	r6, [fp, #84]
	mov	r1, r9
	str	r0, [r5, #8]
	mov	r2, r9
	ldr	r0, [sp, #12]
	bl	strtol(PLT)
	ldr	r5, [fp, #84]
	add	r6, r6, r8
	str	r0, [r6, #12]
	mov	r1, r9
	mov	r2, r9
	ldr	r0, [sp, #8]
	add	r5, r5, r8
	bl	strtol(PLT)
	ldr	r3, [sp, #4]
	str	r0, [r5, #16]
	b	.L274
.L287:
	ldr	r0, [sp, #8]
.L277:
	movs	r5, #0
.L278:
	movs	r6, #0
.L279:
	movs	r7, #0
.L280:
	movs	r3, #0
	str	r3, [sp, #12]
.L281:
	movs	r3, #0
	str	r3, [sp, #8]
	b	.L282
.L288:
	ldr	r0, [sp, #8]
	b	.L278
.L290:
	ldr	r0, [sp, #8]
	b	.L280
.L289:
	ldr	r0, [sp, #8]
	b	.L279
.L292:
	ldr	r0, [sp, #8]
	str	r9, [sp, #12]
	str	ip, [sp, #8]
	b	.L282
.L291:
	ldr	r0, [sp, #8]
	str	r9, [sp, #12]
	b	.L281
.L265:
	ldr	r1, [r4, #80]
	cmp	r1, #0
	ble	.L272
	movs	r3, #0
	b	.L271
.L270:
	movs	r3, #0
	movs	r0, #1
	str	r3, [r4, #80]
	b	.L296
.L305:
	.align	2
.L304:
	.word	.LANCHOR6-(.LPIC57+4)
	.word	.LC4-(.LPIC58+4)
	.size	LINUXHIDRV_init_device, .-LINUXHIDRV_init_device
	.section	.text.LINUXHIDRV_init,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_init
	.thumb
	.thumb_func
	.type	LINUXHIDRV_init, %function
LINUXHIDRV_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r1, #1
	mov	r10, r0
	mov	r0, #2528
	bl	calloc(PLT)
	mov	r6, r0
	ldr	r0, .L324
	ldr	fp, .L324+4
	movs	r3, #0
	str	r6, [r10]
.LPIC59:
	add	r0, pc
	str	r3, [r6]
.LPIC66:
	add	fp, pc
	bl	opendir(PLT)
	mov	r7, r0
	cmp	r0, #0
	beq	.L307
	ldr	r8, .L324+8
	ldr	r9, .L324+12
.LPIC60:
	add	r8, pc
.LPIC61:
	add	r9, pc
.L310:
	mov	r0, r7
	bl	readdir(PLT)
	mov	r4, r0
	add	r5, r0, #11
	mov	r1, r8
	mov	r0, r5
	movs	r2, #5
	cmp	r4, #0
	beq	.L319
	bl	strncmp(PLT)
	mov	r4, r0
	cmp	r0, #0
	bne	.L310
	mov	r0, r7
	bl	dirfd(PLT)
	mov	r2, r4
	mov	r1, r5
	bl	openat(PLT)
	mov	r1, r4
	subs	r4, r0, #0
	mov	r2, #160
	blt	.L310
	ldr	r3, [r6]
	add	r3, r3, r3, lsl #2
	add	r0, r6, r3, lsl #5
	adds	r0, r0, #124
	bl	memset(PLT)
	ldr	lr, [r6]
	mov	r3, r5
	movs	r1, #10
	mov	r2, r9
	add	r0, lr, lr, lsl #2
	lsls	r0, r0, #5
	adds	r5, r6, r0
	mov	r0, r5
	str	lr, [r5, #124]
	adds	r0, r0, #129
	bl	snprintf(PLT)
	ldr	r3, [r6]
	mov	r0, r6
	mov	r1, r4
	add	r3, r3, r3, lsl #2
	add	r2, r6, r3, lsl #5
	adds	r2, r2, #124
	bl	LINUXHIDRV_init_device(PLT)
	ldr	r3, [r6]
	mov	r5, r0
	add	r3, r3, r3, lsl #2
	add	r0, r6, r3, lsl #5
	adds	r0, r0, #124
	cbz	r5, .L313
	bl	LINUXHIDRV_dumpdev(PLT)
	ldr	r2, [r6]
	movs	r1, #1
	adds	r3, r2, r1
	add	r2, r6, r2, lsl #3
	str	r4, [r2, #4]
	strh	r1, [r2, #8]	@ movhi
	str	r3, [r6]
.L314:
	cmp	r3, #15
	bne	.L310
.L319:
	mov	r0, r7
	bl	closedir(PLT)
	ldr	r7, [r6]
	cbz	r7, .L323
	ldr	r3, .L324+16
	movs	r0, #1
	ldr	r2, .L324+20
	ldr	r3, [fp, r3]
	str	r3, [r10, #4]
	ldr	r3, [fp, r2]
	str	r3, [r10, #8]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L313:
	bl	LINUXHIDRV_dumpdev(PLT)
	ldr	r3, [r6]
	mov	r1, r5
	movs	r2, #160
	add	r3, r3, r3, lsl #2
	add	r0, r6, r3, lsl #5
	adds	r0, r0, #124
	bl	memset(PLT)
	mov	r0, r4
	bl	close(PLT)
	ldr	r3, [r6]
	b	.L314
.L323:
	mov	r0, r6
	bl	free(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L324+24
	mov	r2, r0
	mov	r0, r4
.LPIC62:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L324+28
	movs	r1, #1
	movs	r2, #37
.LPIC63:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L324+32
	ldr	r2, .L324+36
.LPIC64:
	add	r1, pc
.LPIC65:
	add	r2, pc
	bl	fprintf(PLT)
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L307:
	mov	r0, r6
	bl	free(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L324+40
	mov	r2, r0
	mov	r0, r4
.LPIC67:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L324+44
	movs	r1, #1
	movs	r2, #38
.LPIC68:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L324+48
	ldr	r2, .L324+52
.LPIC69:
	add	r1, pc
.LPIC70:
	add	r2, pc
	bl	fprintf(PLT)
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L325:
	.align	2
.L324:
	.word	.LC5-(.LPIC59+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC66+4)
	.word	.LC6-(.LPIC60+4)
	.word	.LC7-(.LPIC61+4)
	.word	LINUXHIDRV_release(GOT)
	.word	LINUXHIDRV_getinput(GOT)
	.word	.LC8-(.LPIC62+4)
	.word	.LC9-(.LPIC63+4)
	.word	.LC10-(.LPIC64+4)
	.word	.LC11-(.LPIC65+4)
	.word	.LC8-(.LPIC67+4)
	.word	.LC12-(.LPIC68+4)
	.word	.LC10-(.LPIC69+4)
	.word	.LC11-(.LPIC70+4)
	.size	LINUXHIDRV_init, .-LINUXHIDRV_init
	.section	.text.LINUXHIDRV_translate,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_translate
	.thumb
	.thumb_func
	.type	LINUXHIDRV_translate, %function
LINUXHIDRV_translate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	tst	r4, #2
	bne	.L331
	tst	r4, #8
	bne	.L332
	ands	r4, r4, #1
	bne	.L333
	mov	r0, r4
	ldr	r4, [sp], #4
	bx	lr
.L333:
	ldr	r4, [sp], #4
	b	LINUXHIDRV_translate_keyboard(PLT)
.L331:
	ldr	r4, [sp], #4
	b	LINUXHIDRV_translate_touch(PLT)
.L332:
	ldr	r4, [sp], #4
	b	LINUXHIDRV_translate_pointer(PLT)
	.size	LINUXHIDRV_translate, .-LINUXHIDRV_translate
	.section	.text.LINUXHIDRV_getinput,"ax",%progbits
	.align	2
	.global	LINUXHIDRV_getinput
	.thumb
	.thumb_func
	.type	LINUXHIDRV_getinput, %function
LINUXHIDRV_getinput:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r1
	ldr	r7, [r0]
	sub	sp, sp, #20
	mov	r9, r0
	ldr	r1, [r7]
	add	r10, r7, #4
.L335:
	mov	r0, r10
	mov	r2, #-1
	bl	poll(PLT)
	ldr	r3, [r9]
	cbz	r3, .L344
	cmp	r0, #0
	ldr	r1, [r7]
	ble	.L335
	cmp	r1, #0
	ble	.L335
	mov	r4, r7
	add	r6, r7, #124
	movs	r5, #0
	b	.L343
.L340:
	cmp	r5, r1
	add	r4, r4, #8
	add	r6, r6, #160
	bge	.L353
.L343:
	ldrh	r3, [r4, #10]
	adds	r5, r5, #1
	lsls	r3, r3, #31
	bpl	.L340
	ldr	r0, [r4, #4]
	mov	r1, sp
	movs	r2, #16
	bl	read(PLT)
	cmp	r0, #16
	beq	.L354
.L341:
	ldr	r1, [r7]
	adds	r4, r4, #8
	adds	r6, r6, #160
	cmp	r5, r1
	blt	.L343
.L353:
	ldr	r3, [r9]
	cmp	r3, #0
	bne	.L335
.L344:
	movs	r0, #204
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L354:
	mov	r0, r9
	mov	r1, r6
	mov	r2, fp
	mov	r3, sp
	bl	LINUXHIDRV_translate(PLT)
	cmp	r0, #0
	beq	.L341
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	LINUXHIDRV_getinput, .-LINUXHIDRV_getinput
	.section	.text.libaroma_hid_driver_init,"ax",%progbits
	.align	2
	.global	libaroma_hid_driver_init
	.thumb
	.thumb_func
	.type	libaroma_hid_driver_init, %function
libaroma_hid_driver_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	LINUXHIDRV_init(PLT)
	.size	libaroma_hid_driver_init, .-libaroma_hid_driver_init
	.section	.rodata
	.align	2
.LANCHOR6 = . + 0
.LC3:
	.ascii	"/sys/board_properties/virtualkeys.\000"
	.space	4061
	.section	.bss.LINUXHIDRV_pointer_current_x,"aw",%nobits
	.align	2
.LANCHOR3 = . + 0
	.type	LINUXHIDRV_pointer_current_x, %object
	.size	LINUXHIDRV_pointer_current_x, 4
LINUXHIDRV_pointer_current_x:
	.space	4
	.section	.bss.LINUXHIDRV_pointer_current_y,"aw",%nobits
	.align	2
.LANCHOR4 = . + 0
	.type	LINUXHIDRV_pointer_current_y, %object
	.size	LINUXHIDRV_pointer_current_y, 4
LINUXHIDRV_pointer_current_y:
	.space	4
	.section	.bss.MT_TRACKING_IS_UNTOUCHED.21181,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	MT_TRACKING_IS_UNTOUCHED.21181, %object
	.size	MT_TRACKING_IS_UNTOUCHED.21181, 4
MT_TRACKING_IS_UNTOUCHED.21181:
	.space	4
	.section	.bss.TOUCH_RELEASE_NEXTSYN.21182,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	TOUCH_RELEASE_NEXTSYN.21182, %object
	.size	TOUCH_RELEASE_NEXTSYN.21182, 4
TOUCH_RELEASE_NEXTSYN.21182:
	.space	4
	.section	.bss.LINUXHIDRV_pointer_leftmouse_down,"aw",%nobits
.LANCHOR5 = . + 0
	.type	LINUXHIDRV_pointer_leftmouse_down, %object
	.size	LINUXHIDRV_pointer_leftmouse_down, 1
LINUXHIDRV_pointer_leftmouse_down:
	.space	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"pointer\000"
.LC1:
	.ascii	"I/%s: \000"
	.space	1
.LC2:
	.ascii	"INDR Input Device: %s (%s) - Class : %x\000"
.LC4:
	.ascii	"0x01\000"
	.space	3
.LC5:
	.ascii	"/dev/input\000"
	.space	1
.LC6:
	.ascii	"event\000"
	.space	2
.LC7:
	.ascii	"%s\000"
	.space	1
.LC8:
	.ascii	"E/%s: \000"
	.space	1
.LC9:
	.ascii	"INDR ERROR: Input Device Not Found...\000"
	.space	2
.LC10:
	.ascii	"%s\012\000"
.LC11:
	.ascii	"\000"
	.space	3
.LC12:
	.ascii	"INDR ERROR: Can't access /dev/input...\000"
	.section	.bss.LINUXHIDRV_pointer_initialized,"aw",%nobits
.LANCHOR2 = . + 0
	.type	LINUXHIDRV_pointer_initialized, %object
	.size	LINUXHIDRV_pointer_initialized, 1
LINUXHIDRV_pointer_initialized:
	.space	1
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
