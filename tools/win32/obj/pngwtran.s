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
	.file	"pngwtran.c"
	.global	__aeabi_uidivmod
	.section	.text.png_do_write_transformations,"ax",%progbits
	.align	2
	.global	png_do_write_transformations
	.thumb
	.thumb_func
	.type	png_do_write_transformations, %function
png_do_write_transformations:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L210
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r1
	ldr	r4, [r0, #456]
	mov	r8, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #172
	lsls	r3, r4, #11
	bmi	.L216
.L4:
	lsls	r7, r4, #16
	bmi	.L217
.L5:
	lsls	r1, r4, #15
	bmi	.L218
.L6:
	lsls	r2, r4, #29
	bmi	.L219
.L7:
	lsls	r3, r4, #27
	bmi	.L220
.L31:
	lsls	r7, r4, #28
	bmi	.L221
.L32:
	lsls	r7, r4, #14
	bmi	.L222
.L56:
	lsls	r1, r4, #12
	bmi	.L223
.L84:
	lsls	r2, r4, #31
	bmi	.L224
.L103:
	lsls	r3, r4, #26
	bmi	.L225
	add	sp, sp, #172
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L216:
	ldr	r3, [r0, #436]
	cmp	r3, #0
	beq	.L4
	ldr	r2, [r0, #624]
	adds	r2, r2, #1
	blx	r3
	ldr	r4, [r8, #456]
	lsls	r7, r4, #16
	bpl	.L5
.L217:
	ldr	r3, [r8, #452]
	mov	r0, fp
	ldr	r1, [r8, #624]
	eor	r2, r3, #128
	adds	r1, r1, #1
	ubfx	r2, r2, #7, #1
	bl	png_do_strip_channel(PLT)
	ldr	r4, [r8, #456]
	lsls	r1, r4, #15
	bpl	.L6
.L218:
	ldr	r1, [r8, #624]
	mov	r0, fp
	adds	r1, r1, #1
	bl	png_do_packswap(PLT)
	ldr	r4, [r8, #456]
	lsls	r2, r4, #29
	bpl	.L7
.L219:
	ldr	r3, [fp, #8]
	ldr	r2, [r8, #624]
	ldrb	r5, [r8, #676]	@ zero_extendqisi2
	bic	r3, r3, #-16777216
	bic	r3, r3, #255
	cmp	r3, #67584
	bne	.L7
	cmp	r5, #2
	add	r0, r2, #1
	beq	.L9
	cmp	r5, #4
	beq	.L10
	cmp	r5, #1
	beq	.L11
.L211:
	ldr	r2, [fp]
.L12:
	ldrb	r3, [fp, #10]	@ zero_extendqisi2
	strb	r5, [fp, #9]
	smulbb	r3, r3, r5
	uxtb	r3, r3
	cmp	r3, #7
	strb	r3, [fp, #11]
	ite	ls
	mulls	r2, r3, r2
	lsrhi	r3, r3, #3
	ldr	r4, [r8, #456]
	itee	hi
	mulhi	r2, r3, r2
	addls	r2, r2, #7
	lsrls	r2, r2, #3
	str	r2, [fp, #4]
	b	.L7
.L225:
	ldr	r1, [r8, #624]
	mov	r0, fp
	adds	r1, r1, #1
	add	sp, sp, #172
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_do_invert(PLT)
.L224:
	ldr	r1, [r8, #624]
	mov	r0, fp
	adds	r1, r1, #1
	bl	png_do_bgr(PLT)
	ldr	r4, [r8, #456]
	b	.L103
.L223:
	ldrb	r1, [fp, #8]	@ zero_extendqisi2
	ldr	r3, [r8, #624]
	cmp	r1, #6
	add	r2, r3, #1
	beq	.L226
	cmp	r1, #4
	bne	.L84
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L227
	ldr	r5, [fp]
	cmp	r5, #0
	beq	.L84
	movs	r3, #0
.L102:
	ldrb	r0, [r2, #2]	@ zero_extendqisi2
	adds	r3, r3, #1
	ldrb	r1, [r2, #3]	@ zero_extendqisi2
	cmp	r3, r5
	add	r2, r2, #4
	mvn	r0, r0
	mvn	r1, r1
	strb	r0, [r2, #-2]
	strb	r1, [r2, #-1]
	bne	.L102
.L213:
	ldr	r4, [r8, #456]
	b	.L84
.L222:
	ldrb	r3, [fp, #8]	@ zero_extendqisi2
	ldr	r1, [r8, #624]
	cmp	r3, #6
	add	r2, r1, #1
	beq	.L228
	cmp	r3, #4
	bne	.L56
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L229
	ldr	r6, [fp]
	cmp	r6, #0
	beq	.L56
	lsrs	r3, r6, #4
	cmp	r3, #0
	it	ne
	cmpne	r6, #15
	lsl	r1, r3, #4
	ite	ls
	movls	r0, #1
	movhi	r0, #0
	bls	.L117
	mov	r4, r0
	mov	r0, r2
.L83:
	mov	r5, r0
	add	r7, sp, #8
	adds	r4, r4, #1
	vld4.8	{d16, d18, d20, d22}, [r5]!
	cmp	r3, r4
	vld4.8	{d17, d19, d21, d23}, [r5]
	vstr	d20, [sp, #8]
	vstr	d21, [sp, #16]
	vstr	d22, [sp, #24]
	vstr	d23, [sp, #32]
	vstr	d16, [sp, #40]
	vstr	d17, [sp, #48]
	vstr	d18, [sp, #56]
	vstr	d19, [sp, #64]
	vldmia	r7, {d16-d23}
	vst4.8	{d16, d18, d20, d22}, [r0]
	add	r0, r0, #64
	vst4.8	{d17, d19, d21, d23}, [r5]
	bhi	.L83
	cmp	r6, r1
	add	r2, r2, r1, lsl #2
	beq	.L81
.L78:
	mov	r3, r2
.L82:
	ldrb	r0, [r2, #2]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r5, [r2]	@ zero_extendqisi2
	cmp	r6, r1
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	add	r3, r3, #4
	strb	r0, [r3, #-4]
	add	r2, r2, #4
	ldrb	r0, [r2, #-1]	@ zero_extendqisi2
	strb	r5, [r3, #-2]
	strb	r4, [r3, #-1]
	strb	r0, [r3, #-3]
	bhi	.L82
.L81:
	ldr	r4, [r8, #456]
	b	.L56
.L221:
	ldrb	r2, [fp, #8]	@ zero_extendqisi2
	ldr	r0, [r8, #624]
	cmp	r2, #3
	beq	.L32
	lsls	r1, r2, #30
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	bmi	.L230
	ldrb	r1, [r8, #764]	@ zero_extendqisi2
	movs	r6, #1
	mov	lr, r6
	movs	r7, #2
	subs	r5, r3, r1
.L34:
	lsls	r2, r2, #29
	str	r1, [sp, #152]
	str	r5, [sp, #136]
	bpl	.L35
	ldrb	r1, [r8, #765]	@ zero_extendqisi2
	add	r5, sp, #168
	add	r2, r5, lr, lsl #2
	mov	r6, r7
	subs	r5, r3, r1
	str	r1, [r2, #-16]
	str	r5, [r2, #-32]
.L35:
	cmp	r3, #7
	bhi	.L36
	ldrb	ip, [r8, #764]	@ zero_extendqisi2
	ldr	r2, [fp, #4]
	cmp	ip, #1
	beq	.L231
	cmp	ip, #3
	ite	eq
	moveq	ip, #17
	movne	ip, #255
	cmp	r3, #4
	it	ne
	movne	ip, #255
.L38:
	cmp	r2, #0
	beq	.L32
	ldr	r9, [sp, #136]
	add	r10, r0, r2
	ldr	r5, [sp, #152]
	str	r8, [sp, #4]
	rsb	r3, r9, #0
	rsb	lr, r5, #0
	mov	r8, r3
.L44:
	cmp	r9, lr
	ldrb	r4, [r0, #1]	@ zero_extendqisi2
	ble	.L111
	mov	r1, r8
	mov	r3, r9
	movs	r2, #0
.L42:
	lsr	r7, r4, r1
	lsl	r6, r4, r3
	and	r7, r7, ip
	orrs	r6, r6, r2
	orrs	r2, r2, r7
	add	r1, r1, r5
	cmp	r3, #0
	it	gt
	movgt	r2, r6
	subs	r3, r3, r5
	cmp	r3, lr
	bgt	.L42
	uxtb	r2, r2
.L40:
	strb	r2, [r0, #1]!
	cmp	r0, r10
	bne	.L44
	ldr	r8, [sp, #4]
	ldr	r4, [r8, #456]
	b	.L32
.L220:
	ldr	r1, [r8, #624]
	mov	r0, fp
	adds	r1, r1, #1
	bl	png_do_swap(PLT)
	ldr	r4, [r8, #456]
	b	.L31
.L230:
	ldrb	ip, [r8, #762]	@ zero_extendqisi2
	movs	r6, #3
	ldrb	r5, [r8, #763]	@ zero_extendqisi2
	mov	lr, r6
	ldrb	r1, [r8, #761]	@ zero_extendqisi2
	movs	r7, #4
	rsb	r9, ip, r3
	str	ip, [sp, #156]
	rsb	ip, r5, r3
	str	r5, [sp, #160]
	str	r9, [sp, #140]
	subs	r5, r3, r1
	str	ip, [sp, #144]
	b	.L34
.L228:
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L232
	ldr	r0, [fp]
	cmp	r0, #0
	beq	.L56
	lsrs	r4, r0, #4
	cmp	r4, #0
	it	ne
	cmpne	r0, #15
	lsl	r3, r4, #4
	ite	ls
	movls	r5, #1
	movhi	r5, #0
	bls	.L115
	str	r5, [sp, #4]
	add	r9, r1, #17
	str	r3, [sp, #8]
	add	ip, r1, #33
	ldr	r3, [sp, #4]
	add	lr, r1, #49
	add	r7, r1, #65
	add	r6, r1, #81
	add	r5, r1, #97
	mov	r10, r2
	adds	r1, r1, #113
.L70:
	vld1.8	{q8}, [r10]
	adds	r3, r3, #1
	cmp	r3, r4
	str	r3, [sp, #4]
	vld1.8	{q9}, [r9]
	vld1.8	{q14}, [ip]
	vld1.8	{q15}, [lr]
	vld1.8	{q12}, [r7]
	vld1.8	{q13}, [r6]
	vld1.8	{q10}, [r5]
	vld1.8	{q11}, [r1]
	vuzp.8	q8, q9
	vuzp.8	q14, q15
	vuzp.8	q12, q13
	vuzp.8	q10, q11
	vuzp.8	q8, q14
	vuzp.8	q9, q15
	vuzp.8	q12, q10
	vuzp.8	q13, q11
	vuzp.8	q8, q12
	vuzp.8	q14, q10
	vuzp.8	q9, q13
	vuzp.8	q15, q11
	vzip.8	q12, q8
	vzip.8	q14, q10
	vzip.8	q13, q9
	vzip.8	q15, q11
	vzip.8	q14, q12
	vzip.8	q15, q13
	vzip.8	q10, q8
	vzip.8	q11, q9
	vzip.8	q14, q15
	vzip.8	q12, q13
	vzip.8	q10, q11
	vzip.8	q8, q9
	vst1.8	{q14}, [r10]
	add	r10, r10, #128
	vst1.8	{q15}, [r9]
	add	r9, r9, #128
	vst1.8	{q12}, [ip]
	add	ip, ip, #128
	vst1.8	{q13}, [lr]
	add	lr, lr, #128
	vst1.8	{q10}, [r7]
	add	r7, r7, #128
	vst1.8	{q11}, [r6]
	add	r6, r6, #128
	vst1.8	{q8}, [r5]
	add	r5, r5, #128
	vst1.8	{q9}, [r1]
	add	r1, r1, #128
	bcc	.L70
	ldr	r3, [sp, #8]
	cmp	r0, r3
	add	r2, r2, r3, lsl #3
	beq	.L81
.L65:
	mov	r1, r2
.L69:
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	adds	r3, r3, #1
	ldrb	r6, [r1]	@ zero_extendqisi2
	cmp	r0, r3
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	add	r2, r2, #8
	strb	r4, [r2, #-8]
	add	r1, r1, #8
	ldrb	r4, [r1, #-5]	@ zero_extendqisi2
	strb	r4, [r2, #-7]
	ldrb	r4, [r1, #-4]	@ zero_extendqisi2
	strb	r4, [r2, #-6]
	ldrb	r4, [r1, #-3]	@ zero_extendqisi2
	strb	r4, [r2, #-5]
	ldrb	r4, [r1, #-2]	@ zero_extendqisi2
	strb	r4, [r2, #-4]
	ldrb	r4, [r1, #-1]	@ zero_extendqisi2
	strb	r6, [r2, #-2]
	strb	r5, [r2, #-1]
	strb	r4, [r2, #-3]
	bhi	.L69
	b	.L81
.L226:
	ldrb	r1, [fp, #9]	@ zero_extendqisi2
	cmp	r1, #8
	beq	.L233
	ldr	r5, [fp]
	cmp	r5, #0
	beq	.L84
	movs	r3, #0
.L93:
	ldrb	r0, [r2, #6]	@ zero_extendqisi2
	adds	r3, r3, #1
	ldrb	r1, [r2, #7]	@ zero_extendqisi2
	cmp	r3, r5
	add	r2, r2, #8
	mvn	r0, r0
	mvn	r1, r1
	strb	r0, [r2, #-2]
	strb	r1, [r2, #-1]
	bne	.L93
	b	.L213
.L36:
	cmp	r3, #8
	beq	.L234
	ldr	r7, [fp]
	mul	r7, r7, r6
	cmp	r7, #0
	beq	.L32
	add	r9, r0, #3
	mov	r10, #0
.L55:
	mov	r0, r10
	mov	r1, r6
	bl	__aeabi_uidivmod(PLT)
	add	r3, sp, #168
	ldrb	r2, [r9, #-2]	@ zero_extendqisi2
	add	r1, r3, r1, lsl #2
	ldrb	r0, [r9, #-1]	@ zero_extendqisi2
	ldr	r5, [r1, #-16]
	ldr	r3, [r1, #-32]
	add	r1, r0, r2, lsl #8
	rsb	lr, r5, #0
	cmp	r3, lr
	uxth	r1, r1
	ble	.L113
	negs	r4, r3
	movs	r2, #0
.L53:
	lsl	r0, r1, r3
	lsr	ip, r1, r4
	orrs	r0, r0, r2
	orr	r2, ip, r2
	cmp	r3, #0
	it	gt
	movgt	r2, r0
	subs	r3, r3, r5
	cmp	r3, lr
	add	r4, r4, r5
	bgt	.L53
	ubfx	r3, r2, #8, #8
	uxtb	r2, r2
.L51:
	add	r10, r10, #1
	strb	r3, [r9, #-2]
	cmp	r10, r7
	strb	r2, [r9, #-1]
	add	r9, r9, #2
	bne	.L55
.L212:
	ldr	r4, [r8, #456]
	b	.L32
.L210:
	bx	lr
.L111:
	movs	r2, #0
	b	.L40
.L113:
	movs	r2, #0
	mov	r3, r2
	b	.L51
.L11:
	ldr	r6, [fp]
	cmp	r6, #0
	beq	.L107
	movs	r3, #128
	add	r6, r6, r2
	movs	r4, #0
.L17:
	ldrb	r1, [r2, #1]!	@ zero_extendqisi2
	cbz	r1, .L13
	orrs	r4, r4, r3
.L13:
	cmp	r3, #1
	asr	r3, r3, #1
	ittt	le
	strble	r4, [r0], #1
	movle	r3, #128
	movle	r4, #0
	cmp	r2, r6
	bne	.L17
	cmp	r3, #128
	beq	.L211
	strb	r4, [r0]
	ldr	r2, [fp]
	b	.L12
.L234:
	ldr	r5, [fp]
	mul	r5, r5, r6
	cmp	r5, #0
	beq	.L32
	mov	r9, r0
	mov	r10, #0
.L50:
	add	r7, sp, #168
	mov	r0, r10
	mov	r1, r6
	bl	__aeabi_uidivmod(PLT)
	add	r1, r7, r1, lsl #2
	ldrb	lr, [r9, #1]	@ zero_extendqisi2
	ldr	r7, [r1, #-16]
	ldr	r3, [r1, #-32]
	negs	r0, r7
	cmp	r3, r0
	ble	.L112
	negs	r4, r3
	movs	r2, #0
.L48:
	lsl	r1, lr, r3
	lsr	ip, lr, r4
	orrs	r1, r1, r2
	orr	r2, ip, r2
	cmp	r3, #0
	it	gt
	movgt	r2, r1
	subs	r3, r3, r7
	cmp	r3, r0
	add	r4, r4, r7
	bgt	.L48
	uxtb	r2, r2
.L46:
	add	r10, r10, #1
	strb	r2, [r9, #1]!
	cmp	r10, r5
	bne	.L50
	b	.L212
.L231:
	cmp	r3, #2
	ite	eq
	moveq	ip, #85
	movne	ip, #255
	b	.L38
.L112:
	movs	r2, #0
	b	.L46
.L10:
	ldr	r6, [fp]
	cmp	r6, #0
	beq	.L107
	movs	r1, #0
	add	r6, r6, r2
	mov	r3, r5
	b	.L27
.L236:
	strb	r1, [r0], #1
	mov	r1, r3
	movs	r3, #4
.L25:
	cmp	r2, r6
	beq	.L235
.L27:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	and	r4, r4, #15
	lsls	r4, r4, r3
	orrs	r1, r1, r4
	cmp	r3, #0
	beq	.L236
	subs	r3, r3, #4
	b	.L25
.L9:
	ldr	r6, [fp]
	cmp	r6, #0
	beq	.L107
	movs	r1, #0
	add	r6, r6, r2
	movs	r3, #6
	b	.L22
.L238:
	strb	r1, [r0], #1
	mov	r1, r3
	movs	r3, #6
.L20:
	cmp	r2, r6
	beq	.L237
.L22:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	and	r4, r4, #3
	lsls	r4, r4, r3
	orrs	r1, r1, r4
	cmp	r3, #0
	beq	.L238
	subs	r3, r3, #2
	b	.L20
.L237:
	cmp	r3, #6
	beq	.L211
	strb	r1, [r0]
	b	.L211
.L235:
	cmp	r3, #4
	beq	.L211
	strb	r1, [r0]
	b	.L211
.L233:
	ldr	r0, [fp]
	cmp	r0, #0
	beq	.L84
	cmp	r0, #8
	sub	r1, r0, #7
	bls	.L118
	str	r8, [sp, #8]
	adds	r3, r3, #3
	mov	lr, #0
	mov	r8, r1
	str	r0, [sp, #4]
.L89:
	ldrb	r4, [r3, #9]	@ zero_extendqisi2
	add	r0, lr, #9
	ldrb	r10, [r3, #1]	@ zero_extendqisi2
	add	r1, lr, #8
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	cmp	r8, r0
	ldrb	r7, [r3, #13]	@ zero_extendqisi2
	mvn	lr, r4
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	mvn	r10, r10
	ldrb	r5, [r3, #21]	@ zero_extendqisi2
	mvn	ip, ip
	ldrb	r4, [r3, #25]	@ zero_extendqisi2
	mvn	r7, r7
	ldrb	r9, [r3, #29]	@ zero_extendqisi2
	mvn	r6, r6
	mvn	r5, r5
	strb	lr, [r3, #9]
	mvn	r4, r4
	add	r2, r3, #30
	mvn	r9, r9
	pld	[r3, #137]
	strb	r10, [r3, #1]
	mov	lr, r1
	strb	ip, [r3, #5]
	add	r3, r3, #32
	strb	r7, [r3, #-19]
	strb	r6, [r3, #-15]
	strb	r5, [r3, #-11]
	strb	r4, [r3, #-7]
	strb	r9, [r3, #-3]
	bhi	.L89
	ldr	r0, [sp, #4]
	ldr	r8, [sp, #8]
.L91:
	ldrb	r3, [r2, #3]	@ zero_extendqisi2
	adds	r1, r1, #1
	cmp	r0, r1
	add	r2, r2, #4
	mvn	r3, r3
	strb	r3, [r2, #-1]
	bhi	.L91
	b	.L213
.L229:
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L56
	lsrs	r0, r3, #4
	cmp	r0, #0
	it	ne
	cmpne	r3, #15
	lsl	r1, r0, #4
	ite	ls
	movls	r5, #1
	movhi	r5, #0
	bls	.L116
	mov	r4, r2
.L77:
	vld2.8	{d16-d19}, [r4]
	add	r6, sp, #72
	adds	r5, r5, #1
	vstr	d18, [sp, #72]
	vstr	d19, [sp, #80]
	cmp	r0, r5
	vstr	d16, [sp, #88]
	vstr	d17, [sp, #96]
	vld1.64	{d16-d19}, [r6:64]
	vst2.8	{d16-d19}, [r4]!
	bhi	.L77
	cmp	r3, r1
	add	r2, r2, r1, lsl #1
	beq	.L81
.L72:
	ldrb	r5, [r2]	@ zero_extendqisi2
	adds	r0, r1, #1
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #1]
	strb	r4, [r2]
	bls	.L81
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	adds	r0, r1, #2
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #3]
	strb	r4, [r2, #2]
	bls	.L81
	ldrb	r5, [r2, #4]	@ zero_extendqisi2
	adds	r0, r1, #3
	ldrb	r4, [r2, #5]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #5]
	strb	r4, [r2, #4]
	bls	.L81
	ldrb	r5, [r2, #6]	@ zero_extendqisi2
	adds	r0, r1, #4
	ldrb	r4, [r2, #7]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #7]
	strb	r4, [r2, #6]
	bls	.L81
	ldrb	r5, [r2, #8]	@ zero_extendqisi2
	adds	r0, r1, #5
	ldrb	r4, [r2, #9]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #9]
	strb	r4, [r2, #8]
	bls	.L81
	ldrb	r5, [r2, #10]	@ zero_extendqisi2
	adds	r0, r1, #6
	ldrb	r4, [r2, #11]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #11]
	strb	r4, [r2, #10]
	bls	.L81
	ldrb	r5, [r2, #12]	@ zero_extendqisi2
	adds	r0, r1, #7
	ldrb	r4, [r2, #13]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #13]
	strb	r4, [r2, #12]
	bls	.L81
	ldrb	r5, [r2, #14]	@ zero_extendqisi2
	add	r0, r1, #8
	ldrb	r4, [r2, #15]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #15]
	strb	r4, [r2, #14]
	bls	.L81
	ldrb	r5, [r2, #16]	@ zero_extendqisi2
	add	r0, r1, #9
	ldrb	r4, [r2, #17]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #17]
	strb	r4, [r2, #16]
	bls	.L81
	ldrb	r5, [r2, #18]	@ zero_extendqisi2
	add	r0, r1, #10
	ldrb	r4, [r2, #19]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #19]
	strb	r4, [r2, #18]
	bls	.L81
	ldrb	r5, [r2, #20]	@ zero_extendqisi2
	add	r0, r1, #11
	ldrb	r4, [r2, #21]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #21]
	strb	r4, [r2, #20]
	bls	.L81
	ldrb	r5, [r2, #22]	@ zero_extendqisi2
	add	r0, r1, #12
	ldrb	r4, [r2, #23]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #23]
	strb	r4, [r2, #22]
	bls	.L81
	ldrb	r5, [r2, #24]	@ zero_extendqisi2
	add	r0, r1, #13
	ldrb	r4, [r2, #25]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r2, #25]
	strb	r4, [r2, #24]
	bls	.L81
	ldrb	r4, [r2, #26]	@ zero_extendqisi2
	adds	r1, r1, #14
	ldrb	r0, [r2, #27]	@ zero_extendqisi2
	cmp	r3, r1
	strb	r4, [r2, #27]
	strb	r0, [r2, #26]
	bls	.L81
	ldrb	r1, [r2, #28]	@ zero_extendqisi2
	ldrb	r3, [r2, #29]	@ zero_extendqisi2
	strb	r1, [r2, #29]
	strb	r3, [r2, #28]
	b	.L81
.L227:
	ldr	r3, [fp]
	cmp	r3, #0
	beq	.L84
	lsrs	r0, r3, #4
	cmp	r0, #0
	it	ne
	cmpne	r3, #15
	lsl	r1, r0, #4
	ite	ls
	movls	r5, #1
	movhi	r5, #0
	bls	.L119
	mov	r4, r2
.L100:
	vld2.8	{d16-d19}, [r4]
	add	r6, sp, #104
	adds	r5, r5, #1
	vmvn	q10, q9
	vstr	d16, [sp, #104]
	vstr	d17, [sp, #112]
	cmp	r5, r0
	vstr	d20, [sp, #120]
	vstr	d21, [sp, #128]
	vld1.64	{d16-d19}, [r6:64]
	vst2.8	{d16-d19}, [r4]!
	bcc	.L100
	cmp	r3, r1
	add	r2, r2, r1, lsl #1
	beq	.L213
.L95:
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	adds	r0, r1, #1
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #1]
	bls	.L213
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	adds	r0, r1, #2
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #3]
	bls	.L213
	ldrb	r4, [r2, #5]	@ zero_extendqisi2
	adds	r0, r1, #3
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #5]
	bls	.L213
	ldrb	r4, [r2, #7]	@ zero_extendqisi2
	adds	r0, r1, #4
	cmp	r0, r3
	mvn	r4, r4
	strb	r4, [r2, #7]
	bcs	.L213
	ldrb	r4, [r2, #9]	@ zero_extendqisi2
	adds	r0, r1, #5
	cmp	r0, r3
	mvn	r4, r4
	strb	r4, [r2, #9]
	bcs	.L213
	ldrb	r4, [r2, #11]	@ zero_extendqisi2
	adds	r0, r1, #6
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #11]
	bls	.L213
	ldrb	r4, [r2, #13]	@ zero_extendqisi2
	adds	r0, r1, #7
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #13]
	bls	.L213
	ldrb	r4, [r2, #15]	@ zero_extendqisi2
	add	r0, r1, #8
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #15]
	bls	.L213
	ldrb	r4, [r2, #17]	@ zero_extendqisi2
	add	r0, r1, #9
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #17]
	bls	.L213
	ldrb	r4, [r2, #19]	@ zero_extendqisi2
	add	r0, r1, #10
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #19]
	bls	.L213
	ldrb	r4, [r2, #21]	@ zero_extendqisi2
	add	r0, r1, #11
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #21]
	bls	.L213
	ldrb	r4, [r2, #23]	@ zero_extendqisi2
	add	r0, r1, #12
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #23]
	bls	.L213
	ldrb	r4, [r2, #25]	@ zero_extendqisi2
	add	r0, r1, #13
	cmp	r3, r0
	mvn	r4, r4
	strb	r4, [r2, #25]
	bls	.L213
	ldrb	r0, [r2, #27]	@ zero_extendqisi2
	adds	r1, r1, #14
	cmp	r3, r1
	mvn	r0, r0
	strb	r0, [r2, #27]
	bls	.L213
	ldrb	r3, [r2, #29]	@ zero_extendqisi2
	mvns	r3, r3
	strb	r3, [r2, #29]
	b	.L213
.L232:
	ldr	r5, [fp]
	cmp	r5, #0
	beq	.L56
	lsrs	r0, r5, #4
	cmp	r0, #0
	it	ne
	cmpne	r5, #15
	lsl	r1, r0, #4
	ite	ls
	movls	r6, #1
	movhi	r6, #0
	bls	.L114
	mov	r3, r2
.L64:
	mov	r4, r3
	adds	r6, r6, #1
	cmp	r6, r0
	vld4.8	{d16, d18, d20, d22}, [r4]!
	vld4.8	{d17, d19, d21, d23}, [r4]
	vmov	q4, q9  @ v16qi
	vmov	q5, q10  @ v16qi
	vmov	q6, q11  @ v16qi
	vmov	q7, q8  @ v16qi
	vst4.8	{d8, d10, d12, d14}, [r3]
	add	r3, r3, #64
	vst4.8	{d9, d11, d13, d15}, [r4]
	bcc	.L64
	cmp	r5, r1
	add	r2, r2, r1, lsl #2
	beq	.L81
.L59:
	mov	r3, r2
.L63:
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r4, [r3]	@ zero_extendqisi2
	cmp	r5, r1
	add	r3, r3, #4
	add	r2, r2, #4
	strb	r0, [r2, #-4]
	ldrb	r0, [r3, #-2]	@ zero_extendqisi2
	strb	r0, [r2, #-3]
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	strb	r4, [r2, #-1]
	strb	r0, [r2, #-2]
	bhi	.L63
	b	.L81
.L115:
	movs	r3, #0
	b	.L65
.L117:
	movs	r1, #0
	b	.L78
.L107:
	mov	r2, r6
	b	.L12
.L114:
	movs	r1, #0
	b	.L59
.L119:
	movs	r1, #0
	b	.L95
.L116:
	movs	r1, #0
	b	.L72
.L118:
	movs	r1, #0
	b	.L91
	.size	png_do_write_transformations, .-png_do_write_transformations
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
