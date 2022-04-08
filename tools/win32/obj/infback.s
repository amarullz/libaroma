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
	.file	"infback.c"
	.section	.text.inflateBackInit_,"ax",%progbits
	.align	2
	.global	inflateBackInit_
	.thumb
	.thumb_func
	.type	inflateBackInit_, %function
inflateBackInit_:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r2
	ldr	r2, .L15
.LPIC0:
	add	r2, pc
	cbz	r3, .L8
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #49
	bne	.L8
	ldr	r3, [sp, #24]
	cmp	r3, #56
	bne	.L8
	cmp	r5, #0
	it	ne
	cmpne	r0, #0
	mov	r6, r1
	mov	r4, r0
	ite	eq
	moveq	r1, #1
	movne	r1, #0
	beq	.L10
	sub	r3, r6, #8
	cmp	r3, #7
	bhi	.L10
	ldr	r3, [r0, #32]
	str	r1, [r0, #24]
	cbz	r3, .L3
	ldr	r1, [r4, #36]
	ldr	r0, [r0, #40]
	cbz	r1, .L14
.L5:
	movs	r1, #1
	movw	r2, #7116
	blx	r3
	mov	r3, r0
	cbz	r0, .L11
	movs	r7, #1
	movs	r2, #0
	lsls	r7, r7, r6
	mov	r1, #32768
	str	r0, [r4, #28]
	mov	r0, r2
	str	r6, [r3, #36]
	str	r5, [r3, #52]
	str	r7, [r3, #40]
	str	r1, [r3, #20]
	str	r2, [r3, #48]
	str	r2, [r3, #44]
	pop	{r3, r4, r5, r6, r7, pc}
.L8:
	mvn	r0, #5
	pop	{r3, r4, r5, r6, r7, pc}
.L3:
	ldr	r1, .L15+4
	mov	r0, r3
	ldr	r1, [r2, r1]
	str	r3, [r4, #40]
	str	r1, [r4, #32]
	mov	r3, r1
	ldr	r1, [r4, #36]
	cmp	r1, #0
	bne	.L5
.L14:
	ldr	r1, .L15+8
	ldr	r2, [r2, r1]
	str	r2, [r4, #36]
	b	.L5
.L10:
	mvn	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L11:
	mvn	r0, #3
	pop	{r3, r4, r5, r6, r7, pc}
.L16:
	.align	2
.L15:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	zcalloc(GOT)
	.word	zcfree(GOT)
	.size	inflateBackInit_, .-inflateBackInit_
	.section	.text.inflateBack,"ax",%progbits
	.align	2
	.global	inflateBack
	.thumb
	.thumb_func
	.type	inflateBack, %function
inflateBack:
	@ args = 4, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #116
	mov	r8, r0
	str	r1, [sp, #24]
	str	r2, [sp, #20]
	str	r3, [sp, #32]
	cmp	r0, #0
	beq	.L158
	ldr	fp, [r0, #28]
	cmp	fp, #0
	beq	.L158
	ldr	r2, [r0]
	movs	r3, #0
	movs	r1, #11
	str	r3, [r0, #24]
	str	r1, [fp]
	str	r3, [fp, #4]
	mov	r9, r2
	str	r3, [fp, #44]
	str	r2, [sp, #104]
	cbz	r2, .L19
	ldr	r9, [r0, #4]
.L19:
	ldr	r4, [fp, #52]
	movs	r7, #0
	ldr	r6, .L313
	movs	r3, #11
	ldr	r10, [fp, #40]
	mov	r5, r7
	str	r4, [sp, #28]
	ldr	r4, .L313+4
.LPIC39:
	add	r6, pc
	str	r6, [sp, #36]
	ldr	r6, .L313+8
.LPIC36:
	add	r4, pc
	str	r10, [sp, #96]
	str	r4, [sp, #40]
	ldr	r4, .L313+12
.LPIC35:
	add	r6, pc
	str	r6, [sp, #44]
	ldr	r6, .L313+16
.LPIC34:
	add	r4, pc
	str	r4, [sp, #48]
	ldr	r4, .L313+20
.LPIC33:
	add	r6, pc
	str	r6, [sp, #52]
.LPIC32:
	add	r4, pc
	str	r4, [sp, #56]
	mov	r4, r9
.L20:
	subs	r3, r3, #11
	cmp	r3, #18
	bhi	.L21
	tbh	[pc, r3, lsl #1]
.L23:
	.2byte	(.L22-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L24-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L25-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L26-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L21-.L23)/2
	.2byte	(.L27-.L23)/2
	.2byte	(.L28-.L23)/2
.L28:
	ldr	r3, [sp, #104]
	mov	r9, r4
	mvn	r0, #2
.L29:
	stmia	r8, {r3, r9}
.L278:
	add	sp, sp, #116
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L27:
	ldr	r10, [sp, #96]
	mov	r9, r4
	ldr	r2, [fp, #40]
	cmp	r2, r10
	bhi	.L154
	ldr	r3, [sp, #104]
	movs	r0, #1
	b	.L29
.L104:
	movs	r3, #20
	str	r3, [fp]
.L26:
	ldr	r6, [sp, #96]
	cmp	r6, #258
	it	cs
	cmpcs	r4, #5
	bhi	.L105
	ldr	r0, [fp, #84]
	mov	ip, #1
	ldr	r3, [fp, #76]
	lsl	r1, ip, r0
	subs	r1, r1, #1
	ands	r1, r1, r5
	add	r2, r3, r1, lsl #2
	ldrb	r1, [r3, r1, lsl #2]	@ zero_extendqisi2
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	ldrh	r2, [r2, #2]
	cmp	r7, r10
	bcs	.L106
	ldr	r6, [sp, #96]
	mov	r1, r0
	mov	r9, ip
	add	r10, sp, #104
	mov	r0, r4
	str	r6, [sp, #60]
	ldr	r6, [sp, #24]
.L110:
	cmp	r0, #0
	beq	.L285
.L109:
	ldr	r2, [sp, #104]
	lsl	lr, r9, r1
	subs	r0, r0, #1
	add	lr, lr, #-1
	adds	r4, r2, #1
	str	r4, [sp, #104]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r2, r2, r7
	adds	r7, r7, #8
	add	r5, r5, r2
	and	lr, lr, r5
	add	r2, r3, lr, lsl #2
	ldrb	ip, [r3, lr, lsl #2]	@ zero_extendqisi2
	ldrb	lr, [r2, #1]	@ zero_extendqisi2
	ldrh	r2, [r2, #2]
	cmp	lr, r7
	bhi	.L110
	ldr	r6, [sp, #60]
	mov	r4, r0
	mov	r10, lr
	mov	r1, ip
	str	r6, [sp, #96]
.L106:
	cmp	r1, #0
	beq	.L111
	tst	r1, #240
	bne	.L112
	add	r1, r1, r10
	mov	r9, #1
	lsl	r9, r9, r1
	add	r9, r9, #-1
	and	r1, r9, r5
	lsr	r1, r1, r10
	add	r1, r1, r2
	add	lr, r3, r1, lsl #2
	ldrb	r1, [r3, r1, lsl #2]	@ zero_extendqisi2
	ldrb	r0, [lr, #1]	@ zero_extendqisi2
	ldrh	ip, [lr, #2]
	add	lr, r10, r0
	cmp	r7, lr
	bcs	.L113
	add	ip, sp, #104
	mov	r0, r4
	ldr	r4, [sp, #96]
	mov	r6, r9
	str	r8, [sp, #60]
	mov	r9, r2
	mov	r8, ip
	str	r4, [sp, #64]
.L115:
	cmp	r0, #0
	beq	.L286
.L114:
	ldr	r1, [sp, #104]
	subs	r0, r0, #1
	adds	r4, r1, #1
	str	r4, [sp, #104]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r1, r1, r7
	adds	r7, r7, #8
	add	r5, r5, r1
	and	r1, r5, r6
	lsr	r1, r1, r10
	add	r1, r1, r9
	add	lr, r3, r1, lsl #2
	ldrb	r1, [r3, r1, lsl #2]	@ zero_extendqisi2
	ldrb	r4, [lr, #1]	@ zero_extendqisi2
	ldrh	ip, [lr, #2]
	add	lr, r4, r10
	cmp	lr, r7
	bhi	.L115
	ldr	r8, [sp, #60]
	mov	r3, r4
	ldr	r6, [sp, #64]
	mov	r4, r0
	mov	r0, r3
	str	r6, [sp, #96]
.L113:
	lsr	r5, r5, r10
	rsb	r7, r10, r7
	mov	r2, ip
	str	ip, [fp, #64]
	lsrs	r5, r5, r0
	subs	r7, r7, r0
	cmp	r1, #0
	beq	.L156
.L116:
	lsls	r0, r1, #26
	itt	mi
	movmi	r3, #11
	strmi	r3, [fp]
	bmi	.L20
	lsls	r2, r1, #25
	bpl	.L120
	ldr	r1, .L313+24
	movs	r2, #29
	mov	r3, r2
.LPIC37:
	add	r1, pc
	str	r1, [r8, #24]
	str	r2, [fp]
	b	.L20
.L25:
	cmp	r7, #13
	bhi	.L31
	cmp	r4, #0
	beq	.L287
.L53:
	ldr	r3, [sp, #104]
	add	r9, r7, #8
	cmp	r9, #13
	add	r4, r4, #-1
	mov	r2, r3
	add	r3, r3, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsl	r2, r2, r7
	add	r5, r5, r2
	bhi	.L170
	cmp	r4, #0
	beq	.L288
.L55:
	adds	r2, r3, #1
	subs	r4, r4, #1
	str	r2, [sp, #104]
	adds	r7, r7, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r9, r3, r9
	add	r5, r5, r9
.L31:
	and	r3, r5, #31
	ubfx	r1, r5, #5, #5
	addw	r3, r3, #257
	ubfx	r2, r5, #10, #4
	cmp	r3, #286
	add	r1, r1, #1
	add	r2, r2, #4
	sub	r7, r7, #14
	str	r3, [fp, #96]
	lsr	r5, r5, #14
	str	r1, [fp, #100]
	str	r2, [fp, #92]
	bls	.L289
.L56:
	ldr	r1, .L313+28
	movs	r2, #29
	mov	r3, r2
.LPIC29:
	add	r1, pc
	str	r1, [r8, #24]
	str	r2, [fp]
	b	.L20
.L24:
	and	r3, r7, #7
	bic	r7, r7, #7
	cmp	r7, #31
	lsr	r5, r5, r3
	bhi	.L42
	cmp	r4, #0
	beq	.L290
.L43:
	ldr	r3, [sp, #104]
	add	r9, r7, #8
	cmp	r9, #31
	add	r4, r4, #-1
	mov	r2, r3
	add	r3, r3, #1
	str	r3, [sp, #104]
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsl	r2, r2, r7
	add	r5, r5, r2
	bhi	.L166
	cmp	r4, #0
	beq	.L291
.L45:
	mov	r2, r3
	adds	r3, r3, #1
	str	r3, [sp, #104]
	add	r10, r7, #16
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r10, #31
	add	r4, r4, #-1
	lsl	r9, r2, r9
	add	r5, r5, r9
	bhi	.L164
	cmp	r4, #0
	beq	.L292
.L46:
	mov	r2, r3
	adds	r3, r3, #1
	str	r3, [sp, #104]
	add	r9, r7, #24
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r9, #31
	add	r4, r4, #-1
	lsl	r10, r2, r10
	add	r5, r5, r10
	bhi	.L166
	cmp	r4, #0
	beq	.L293
.L47:
	adds	r2, r3, #1
	subs	r4, r4, #1
	str	r2, [sp, #104]
	adds	r7, r7, #32
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r9, r3, r9
	add	r5, r5, r9
.L42:
	lsrs	r3, r5, #16
	uxth	r9, r5
	eor	r3, r3, #65280
	eor	r3, r3, #255
	cmp	r9, r3
	beq	.L48
	ldr	r1, .L313+32
	movs	r2, #29
	mov	r3, r2
.LPIC28:
	add	r1, pc
	str	r1, [r8, #24]
	str	r2, [fp]
	b	.L20
.L22:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L32
	cmp	r7, #2
	bhi	.L34
	cmp	r4, #0
	beq	.L294
.L36:
	ldr	r3, [sp, #104]
	subs	r4, r4, #1
	adds	r2, r3, #1
	str	r2, [sp, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, r7
	adds	r7, r7, #8
	add	r5, r5, r3
.L34:
	lsrs	r2, r5, #1
	and	r5, r5, #1
	str	r5, [fp, #4]
	and	r3, r2, #3
	cmp	r3, #2
	beq	.L38
	cmp	r3, #3
	beq	.L39
	cmp	r3, #1
	beq	.L40
	movs	r3, #13
	str	r3, [fp]
.L41:
	lsrs	r5, r2, #2
	subs	r7, r7, #3
	b	.L20
.L21:
	mov	r9, r4
	ldr	r3, [sp, #104]
	mvn	r0, #1
	b	.L29
.L105:
	ldr	r6, [sp, #28]
	mov	r0, r8
	ldr	r1, [fp, #40]
	ldr	r2, [fp, #44]
	str	r6, [r8, #12]
	ldr	r3, [sp, #104]
	ldr	r6, [sp, #96]
	cmp	r2, r1
	stmia	r8, {r3, r4}
	it	cc
	movcc	r4, r6
	str	r6, [r8, #16]
	it	cc
	subcc	r6, r1, r4
	str	r5, [fp, #56]
	str	r7, [fp, #60]
	it	cc
	strcc	r6, [fp, #44]
	bl	inflate_fast(PLT)
	ldr	r3, [r8]
	ldr	r4, [r8, #16]
	ldr	r6, [r8, #12]
	str	r3, [sp, #104]
	str	r4, [sp, #96]
	str	r6, [sp, #28]
	ldr	r4, [r8, #4]
	ldr	r5, [fp, #56]
	ldr	r7, [fp, #60]
	ldr	r3, [fp]
	b	.L20
.L32:
	and	r2, r7, #7
	movs	r3, #28
	lsrs	r5, r5, r2
	bic	r7, r7, #7
	str	r3, [fp]
	b	.L20
.L289:
	cmp	r1, #30
	bhi	.L56
	ldr	r9, .L313+36
	add	r10, sp, #104
	ldr	r6, [sp, #96]
	mov	r0, r4
	movs	r3, #0
.LPIC30:
	add	r9, pc
	str	r3, [fp, #104]
.L58:
	cmp	r7, #2
	bhi	.L172
	cmp	r0, #0
	beq	.L295
.L61:
	ldr	r3, [sp, #104]
	subs	r0, r0, #1
	ldr	r2, [fp, #92]
	ldr	r4, [fp, #104]
	adds	r1, r3, #1
	str	r1, [sp, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, r7
	adds	r7, r7, #8
	add	r5, r5, r3
.L60:
	ldrh	r1, [r9, r4, lsl #1]
	adds	r3, r4, #1
	cmp	r3, r2
	and	lr, r5, #7
	str	r3, [fp, #104]
	sub	r7, r7, #3
	add	r1, r1, #56
	lsr	r5, r5, #3
	strh	lr, [fp, r1, lsl #1]	@ movhi
	bcc	.L58
	cmp	r3, #18
	mov	r1, r4
	str	r6, [sp, #96]
	mov	r4, r0
	itt	ls
	addls	r1, r9, r1, lsl #1
	movls	r0, #0
	bhi	.L63
.L65:
	ldrh	r2, [r1, #2]!
	adds	r3, r3, #1
	cmp	r3, #18
	add	r2, r2, #56
	strh	r0, [fp, r2, lsl #1]	@ movhi
	bls	.L65
	str	r6, [sp, #96]
	str	r3, [fp, #104]
.L63:
	add	r6, fp, #1328
	movs	r2, #7
	str	r6, [sp, #60]
	add	r6, fp, #112
	str	r6, [sp, #88]
	add	r6, fp, #108
	str	r6, [sp, #80]
	add	r6, fp, #84
	str	r6, [sp, #92]
	add	r6, fp, #752
	str	r6, [sp, #84]
	movs	r0, #0
	ldr	r6, [sp, #60]
	str	r2, [fp, #84]
	movs	r2, #19
	ldr	r1, [sp, #88]
	str	r6, [fp, #108]
	str	r6, [fp, #76]
	ldr	r6, [sp, #92]
	ldr	r3, [sp, #80]
	str	r6, [sp]
	ldr	r6, [sp, #84]
	str	r6, [sp, #4]
	bl	inflate_table(PLT)
	cmp	r0, #0
	beq	.L66
	ldr	r1, .L313+40
	movs	r2, #29
	mov	r3, r2
.LPIC31:
	add	r1, pc
	str	r1, [r8, #24]
	str	r2, [fp]
	b	.L20
.L154:
	ldr	r1, [fp, #52]
	rsb	r2, r10, r2
	ldr	r0, [sp, #152]
	ldr	r4, [sp, #32]
	blx	r4
	ldr	r3, [sp, #104]
	cmp	r0, #0
	beq	.L296
.L283:
	mvn	r0, #4
	b	.L29
.L293:
	ldr	r4, [sp, #24]
	add	r1, sp, #104
	ldr	r0, [sp, #20]
	blx	r4
	mov	r4, r0
	cbz	r0, .L171
	ldr	r3, [sp, #104]
	b	.L47
.L292:
	ldr	r0, [sp, #20]
	add	r1, sp, #104
	ldr	r6, [sp, #24]
	blx	r6
	mov	r4, r0
	cbz	r0, .L171
	ldr	r3, [sp, #104]
	b	.L46
.L291:
	ldr	r4, [sp, #24]
	add	r1, sp, #104
	ldr	r0, [sp, #20]
	blx	r4
	mov	r4, r0
	cbz	r0, .L171
	ldr	r3, [sp, #104]
	b	.L45
.L288:
	ldr	r0, [sp, #20]
	add	r1, sp, #104
	ldr	r6, [sp, #24]
	blx	r6
	mov	r4, r0
	cbz	r0, .L171
	ldr	r3, [sp, #104]
	b	.L55
.L287:
	ldr	r4, [sp, #24]
	add	r1, sp, #104
	ldr	r0, [sp, #20]
	blx	r4
	mov	r4, r0
	cmp	r0, #0
	bne	.L53
.L171:
	mov	r9, r4
	mov	r3, r4
	mvn	r0, #4
	b	.L29
.L290:
	ldr	r0, [sp, #20]
	add	r1, sp, #104
	ldr	r6, [sp, #24]
	blx	r6
	mov	r4, r0
	cmp	r0, #0
	bne	.L43
	b	.L171
.L48:
	str	r9, [fp, #64]
	cmp	r9, #0
	beq	.L49
	add	r7, sp, #104
	mov	r10, fp
	str	r8, [sp, #60]
	mov	fp, r7
	ldr	r6, [sp, #96]
	mov	r7, r9
	ldr	r8, [sp, #28]
	ldr	r9, [sp, #20]
.L52:
	cbz	r4, .L297
.L50:
	cmp	r6, #0
	beq	.L298
.L51:
	cmp	r6, r4
	mov	r5, r6
	it	cs
	movcs	r5, r4
	mov	r0, r8
	cmp	r5, r7
	ldr	r1, [sp, #104]
	it	cs
	movcs	r5, r7
	mov	r2, r5
	subs	r4, r4, r5
	bl	memcpy(PLT)
	ldr	r7, [r10, #64]
	subs	r6, r6, r5
	ldr	r2, [sp, #104]
	add	r8, r8, r5
	subs	r7, r7, r5
	add	r5, r5, r2
	str	r7, [r10, #64]
	str	r5, [sp, #104]
	cmp	r7, #0
	bne	.L52
	str	r8, [sp, #28]
	mov	fp, r10
	ldr	r8, [sp, #60]
	str	r6, [sp, #96]
.L49:
	movs	r3, #11
	movs	r7, #0
	str	r3, [fp]
	mov	r5, r7
	b	.L20
.L297:
	ldr	r4, [sp, #24]
	mov	r0, r9
	mov	r1, fp
	blx	r4
	mov	r4, r0
	cmp	r0, #0
	bne	.L50
	mov	r9, r0
	mov	r3, r0
	ldr	r8, [sp, #60]
	mvn	r0, #4
	b	.L29
.L285:
	ldr	r0, [sp, #20]
	mov	r1, r10
	blx	r6
	cmp	r0, #0
	beq	.L194
	ldr	r3, [fp, #76]
	ldr	r1, [fp, #84]
	b	.L109
.L298:
	ldr	r6, [r10, #40]
	ldr	r8, [r10, #52]
	ldr	r0, [sp, #152]
	str	r6, [r10, #44]
	mov	r2, r6
	mov	r1, r8
	ldr	r3, [sp, #32]
	blx	r3
	cmp	r0, #0
	beq	.L51
	mov	r9, r4
	ldr	r8, [sp, #60]
	ldr	r3, [sp, #104]
	mvn	r0, #4
	b	.L29
.L111:
	lsr	r5, r5, r10
	rsb	r7, r10, r7
	str	r2, [fp, #64]
.L156:
	ldr	r6, [sp, #96]
	cmp	r6, #0
	beq	.L299
.L117:
	ldr	r6, [sp, #28]
	movs	r3, #20
	strb	r2, [r6]
	ldr	r6, [sp, #96]
	str	r3, [fp]
	subs	r6, r6, #1
	str	r6, [sp, #96]
	ldr	r6, [sp, #28]
	adds	r6, r6, #1
	str	r6, [sp, #28]
	b	.L20
.L296:
	movs	r0, #1
	b	.L29
.L39:
	ldr	r0, .L313+44
	movs	r1, #29
	mov	r3, r1
.LPIC27:
	add	r0, pc
	str	r0, [r8, #24]
	str	r1, [fp]
	b	.L41
.L286:
	ldr	r0, [sp, #20]
	mov	r1, r8
	ldr	r4, [sp, #24]
	blx	r4
	cmp	r0, #0
	beq	.L192
	ldr	r3, [fp, #76]
	b	.L114
.L295:
	ldr	r0, [sp, #20]
	mov	r1, r10
	ldr	r4, [sp, #24]
	blx	r4
	cmp	r0, #0
	bne	.L61
.L194:
	mov	r9, r0
	mov	r3, r0
	b	.L283
.L294:
	ldr	r4, [sp, #24]
	add	r1, sp, #104
	ldr	r0, [sp, #20]
	blx	r4
	mov	r4, r0
	cmp	r0, #0
	bne	.L36
	b	.L171
.L112:
	lsr	r5, r5, r10
	rsb	r7, r10, r7
	str	r2, [fp, #64]
	b	.L116
.L166:
	mov	r7, r9
	b	.L42
.L40:
	ldr	r1, .L313+48
	movs	r3, #9
	ldr	r0, .L313+52
	str	r3, [fp, #84]
	movs	r3, #5
.LPIC25:
	add	r1, pc
	str	r3, [fp, #88]
.LPIC26:
	add	r0, pc
	str	r1, [fp, #76]
	movs	r1, #20
	str	r0, [fp, #80]
	mov	r3, r1
	str	r1, [fp]
	b	.L41
.L38:
	movs	r3, #16
	str	r3, [fp]
	b	.L41
.L158:
	mvn	r0, #1
	b	.L278
.L299:
	ldr	r6, [fp, #52]
	ldr	r0, [sp, #152]
	str	r6, [sp, #28]
	ldr	r6, [fp, #40]
	ldr	r1, [sp, #28]
	str	r6, [sp, #96]
	mov	r2, r6
	str	r6, [fp, #44]
	ldr	r6, [sp, #32]
	blx	r6
	cmp	r0, #0
	bne	.L284
	ldr	r2, [fp, #64]
	b	.L117
.L120:
	and	r1, r1, #15
	str	r1, [fp, #72]
	cbz	r1, .L121
	cmp	r1, r7
	bls	.L122
	mov	r0, r4
	ldr	r6, [sp, #96]
	ldr	r4, [sp, #24]
	add	r9, sp, #104
	ldr	r10, [sp, #20]
.L124:
	cmp	r0, #0
	beq	.L300
.L123:
	ldr	r3, [sp, #104]
	subs	r0, r0, #1
	adds	r2, r3, #1
	str	r2, [sp, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, r7
	adds	r7, r7, #8
	cmp	r7, r1
	add	r5, r5, r3
	bcc	.L124
	mov	r4, r0
	str	r6, [sp, #96]
.L122:
	movs	r2, #1
	ldr	r3, [fp, #64]
	lsls	r2, r2, r1
	subs	r7, r7, r1
	subs	r2, r2, #1
	ands	r2, r2, r5
	lsrs	r5, r5, r1
	add	r3, r3, r2
	str	r3, [fp, #64]
.L121:
	ldr	lr, [fp, #88]
	mov	r10, #1
	ldr	r3, [fp, #80]
	lsl	r2, r10, lr
	subs	r2, r2, #1
	ands	r2, r2, r5
	add	r1, r3, r2, lsl #2
	ldrb	r2, [r3, r2, lsl #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	ldrh	r1, [r1, #2]
	cmp	r7, r9
	mov	r0, r9
	bcs	.L125
	mov	r0, r4
	ldr	r4, [sp, #96]
	str	r8, [sp, #60]
	add	ip, sp, #104
	ldr	r6, [sp, #24]
	mov	r2, lr
	ldr	r8, [sp, #20]
	str	r4, [sp, #64]
	mov	r4, ip
.L127:
	cmp	r0, #0
	beq	.L301
.L126:
	ldr	r1, [sp, #104]
	lsl	lr, r10, r2
	subs	r0, r0, #1
	add	lr, lr, #-1
	add	ip, r1, #1
	str	ip, [sp, #104]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r1, r1, r7
	adds	r7, r7, #8
	add	r5, r5, r1
	and	lr, lr, r5
	add	r1, r3, lr, lsl #2
	ldrb	ip, [r3, lr, lsl #2]	@ zero_extendqisi2
	ldrb	r9, [r1, #1]	@ zero_extendqisi2
	ldrh	r1, [r1, #2]
	cmp	r9, r7
	bhi	.L127
	ldr	r8, [sp, #60]
	mov	r4, r0
	ldr	r6, [sp, #64]
	mov	r0, r9
	mov	r2, ip
	str	r6, [sp, #96]
.L125:
	tst	r2, #240
	it	ne
	movne	ip, r9
	bne	.L129
	movs	r0, #1
	add	r2, r2, r9
	lsl	r2, r0, r2
	mov	r10, r1
	subs	r6, r2, #1
	and	r2, r6, r5
	lsr	r2, r2, r9
	add	r2, r2, r1
	add	r1, r3, r2, lsl #2
	ldrb	r2, [r3, r2, lsl #2]	@ zero_extendqisi2
	ldrb	r0, [r1, #1]	@ zero_extendqisi2
	ldrh	r1, [r1, #2]
	add	lr, r9, r0
	mov	ip, r0
	cmp	r7, lr
	bcs	.L130
	mov	r0, r4
	ldr	r4, [sp, #96]
	str	r8, [sp, #68]
	mov	r8, r10
	mov	r10, r6
	add	r2, sp, #104
	str	r2, [sp, #60]
	str	r4, [sp, #72]
.L132:
	cmp	r0, #0
	beq	.L302
.L131:
	ldr	r1, [sp, #104]
	subs	r0, r0, #1
	adds	r4, r1, #1
	str	r4, [sp, #104]
	ldrb	r1, [r1]	@ zero_extendqisi2
	lsls	r1, r1, r7
	adds	r7, r7, #8
	add	r5, r5, r1
	and	r4, r5, r10
	lsr	r4, r4, r9
	add	r4, r4, r8
	add	r1, r3, r4, lsl #2
	ldrb	lr, [r3, r4, lsl #2]	@ zero_extendqisi2
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	ldrh	r1, [r1, #2]
	add	r6, r4, r9
	mov	ip, r4
	cmp	r6, r7
	bhi	.L132
	ldr	r2, [sp, #72]
	mov	r4, r0
	ldr	r8, [sp, #68]
	mov	r0, ip
	str	r2, [sp, #96]
	mov	r2, lr
.L130:
	lsr	r5, r5, r9
	rsb	r7, r9, r7
.L129:
	lsls	r3, r2, #25
	lsr	r5, r5, ip
	sub	r7, r7, r0
	bpl	.L133
	ldr	r1, .L313+56
	movs	r2, #29
	mov	r3, r2
.LPIC38:
	add	r1, pc
	str	r1, [r8, #24]
	str	r2, [fp]
	b	.L20
.L301:
	mov	r0, r8
	mov	r1, r4
	blx	r6
	cbz	r0, .L192
	ldr	r3, [fp, #80]
	ldr	r2, [fp, #88]
	b	.L126
.L300:
	mov	r0, r10
	mov	r1, r9
	blx	r4
	cmp	r0, #0
	beq	.L194
	ldr	r1, [fp, #72]
	b	.L123
.L302:
	ldr	r0, [sp, #20]
	add	r1, sp, #104
	ldr	r6, [sp, #24]
	blx	r6
	cmp	r0, #0
	beq	.L193
	ldr	r3, [fp, #80]
	b	.L131
.L170:
	mov	r7, r9
	b	.L31
.L164:
	mov	r7, r10
	b	.L42
.L172:
	mov	r4, r3
	b	.L60
.L192:
	mov	r9, r0
	mov	r3, r0
	ldr	r8, [sp, #60]
	mvn	r0, #4
	b	.L29
.L66:
	ldr	r2, [fp, #96]
	mov	ip, r0
	ldr	r3, [fp, #100]
	mov	r10, #1
	ldr	r9, [sp, #20]
	str	r2, [sp, #68]
	add	r2, sp, #104
	ldr	r6, [sp, #68]
	str	r0, [fp, #104]
	mov	r0, r4
	str	r8, [sp, #64]
	add	r6, r6, r3
	str	r2, [sp, #12]
	str	r6, [sp, #72]
.L67:
	cmp	r6, ip
	bls	.L99
	ldr	r1, [fp, #84]
	ldr	r2, [fp, #76]
	lsl	r3, r10, r1
	subs	r3, r3, #1
	ands	r3, r3, r5
	add	r3, r2, r3, lsl #2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrh	r3, [r3, #2]
	cmp	r7, r6
	bcs	.L100
	ldr	r6, [sp, #24]
	ldr	r4, [sp, #12]
.L101:
	cbz	r0, .L303
.L68:
	ldr	r3, [sp, #104]
	lsl	ip, r10, r1
	subs	r0, r0, #1
	add	lr, r3, #1
	str	lr, [sp, #104]
	ldrb	lr, [r3]	@ zero_extendqisi2
	add	r3, ip, #-1
	lsl	lr, lr, r7
	adds	r7, r7, #8
	add	r5, r5, lr
	ands	r3, r3, r5
	add	r3, r2, r3, lsl #2
	ldrb	lr, [r3, #1]	@ zero_extendqisi2
	ldrh	r3, [r3, #2]
	cmp	lr, r7
	bhi	.L101
	mov	r6, lr
	str	r4, [sp, #12]
.L100:
	cmp	r3, #15
	bhi	.L70
	ldr	r1, [fp, #104]
	lsrs	r5, r5, r6
	ldr	r4, [fp, #96]
	subs	r7, r7, r6
	ldr	r2, [fp, #100]
	add	ip, r1, #1
	adds	r1, r1, #56
	str	r4, [sp, #68]
	add	r4, r4, r2
	str	ip, [fp, #104]
	str	r4, [sp, #72]
	mov	r6, r4
	strh	r3, [fp, r1, lsl #1]	@ movhi
	b	.L67
.L303:
	mov	r0, r9
	mov	r1, r4
	blx	r6
	cmp	r0, #0
	beq	.L177
	ldr	r2, [fp, #76]
	ldr	r1, [fp, #84]
	b	.L68
.L70:
	cmp	r3, #16
	beq	.L304
	cmp	r3, #17
	beq	.L79
	add	r8, r6, #7
	cmp	r7, r8
	bcs	.L81
	ldr	r3, [sp, #12]
	mov	r4, r8
	mov	r8, r5
	mov	r5, r3
.L86:
	cmp	r0, #0
	beq	.L305
.L85:
	ldr	r3, [sp, #104]
	subs	r0, r0, #1
	adds	r1, r3, #1
	str	r1, [sp, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, r7
	adds	r7, r7, #8
	cmp	r7, r4
	add	r8, r8, r3
	bcc	.L86
	str	r5, [sp, #12]
	mov	r5, r8
.L81:
	lsrs	r5, r5, r6
	movw	r2, #65529
	movt	r2, 65535
	ldr	r3, [fp, #104]
	subs	r2, r2, r6
	and	r6, r5, #127
	lsrs	r5, r5, #7
	add	r7, r7, r2
	adds	r6, r6, #11
	movs	r1, #0
.L78:
	ldr	r4, [fp, #96]
	add	ip, r3, r6
	ldr	r2, [fp, #100]
	str	r4, [sp, #68]
	add	r4, r4, r2
	cmp	ip, r4
	str	r4, [sp, #72]
	bhi	.L87
	add	lr, r3, #56
	uxth	r1, r1
	str	lr, [sp, #76]
	add	lr, fp, lr, lsl #1
	subs	r2, r6, #1
	ubfx	lr, lr, #1, #2
	rsb	lr, lr, #0
	and	lr, lr, #7
	cmp	lr, r6
	it	cs
	movcs	lr, r6
	cmp	r6, #10
	itt	ls
	strls	r6, [sp, #16]
	movls	r4, r6
	bhi	.L306
.L88:
	ldr	lr, [sp, #76]
	cmp	r4, #1
	add	r8, r3, #1
	sub	r2, r6, #2
	strh	r1, [fp, lr, lsl #1]	@ movhi
	beq	.L180
	cmp	r4, #2
	add	r2, r3, #57
	strh	r1, [fp, r2, lsl #1]	@ movhi
	add	r8, r3, #2
	sub	r2, r6, #3
	beq	.L188
	cmp	r4, #3
	add	r2, r3, #58
	strh	r1, [fp, r2, lsl #1]	@ movhi
	add	r8, r3, #3
	sub	r2, r6, #4
	beq	.L188
	cmp	r4, #4
	add	r2, r3, #59
	strh	r1, [fp, r2, lsl #1]	@ movhi
	add	r8, r3, #4
	sub	r2, r6, #5
	beq	.L188
	cmp	r4, #5
	add	r2, r3, #60
	strh	r1, [fp, r2, lsl #1]	@ movhi
	add	r8, r3, #5
	sub	r2, r6, #6
	beq	.L188
	cmp	r4, #6
	add	r2, r3, #61
	strh	r1, [fp, r2, lsl #1]	@ movhi
	add	r8, r3, #6
	sub	r2, r6, #7
	beq	.L188
	cmp	r4, #7
	add	r2, r3, #62
	strh	r1, [fp, r2, lsl #1]	@ movhi
	add	r8, r3, #7
	sub	r2, r6, #8
	beq	.L188
	cmp	r4, #8
	add	r2, r3, #63
	strh	r1, [fp, r2, lsl #1]	@ movhi
	add	r8, r3, #8
	sub	r2, r6, #9
	beq	.L188
	cmp	r4, #10
	add	r2, r3, #64
	strh	r1, [fp, r2, lsl #1]	@ movhi
	add	r8, r3, #9
	sub	r2, r6, #10
	bne	.L188
	adds	r3, r3, #10
	sub	r2, r6, #11
	add	r8, r8, #56
	strh	r1, [fp, r8, lsl #1]	@ movhi
.L91:
	ldr	lr, [sp, #16]
	cmp	r6, lr
	beq	.L92
.L90:
	ldr	r4, [sp, #16]
	subs	r6, r6, r4
	lsr	r8, r6, #3
	str	r6, [sp, #100]
	lsl	r6, r8, #3
	cmp	r8, #0
	beq	.L93
	ldr	lr, [sp, #76]
	str	r3, [sp, #16]
	vdup.16	q8, r1
	add	r4, r4, lr
	mov	lr, #0
	add	r4, fp, r4, lsl #1
	str	r4, [sp, #76]
	ldr	r3, [sp, #76]
	ldr	r4, [sp, #12]
.L98:
	add	lr, lr, #1
	vst1.64	{d16-d17}, [r3:64]!
	cmp	lr, r8
	str	r3, [sp, #76]
	bcc	.L98
	str	r4, [sp, #12]
	subs	r2, r2, r6
	ldr	r4, [sp, #100]
	ldr	r3, [sp, #16]
	cmp	r6, r4
	add	r3, r3, r6
	beq	.L92
.L93:
	add	r6, r3, #56
	strh	r1, [fp, r6, lsl #1]	@ movhi
	cbz	r2, .L92
	cmp	r2, #1
	add	r6, r3, #57
	strh	r1, [fp, r6, lsl #1]	@ movhi
	beq	.L92
	cmp	r2, #2
	add	r6, r3, #58
	strh	r1, [fp, r6, lsl #1]	@ movhi
	beq	.L92
	cmp	r2, #3
	add	r6, r3, #59
	strh	r1, [fp, r6, lsl #1]	@ movhi
	beq	.L92
	cmp	r2, #4
	add	r6, r3, #60
	strh	r1, [fp, r6, lsl #1]	@ movhi
	beq	.L92
	cmp	r2, #5
	add	r6, r3, #61
	it	ne
	addne	r3, r3, #62
	strh	r1, [fp, r6, lsl #1]	@ movhi
	it	ne
	strhne	r1, [fp, r3, lsl #1]	@ movhi
.L92:
	str	ip, [fp, #104]
	ldr	r6, [sp, #72]
	b	.L67
.L305:
	mov	r0, r9
	mov	r1, r5
	ldr	r3, [sp, #24]
	blx	r3
	cmp	r0, #0
	bne	.L85
.L177:
	mov	r9, r0
	mov	r3, r0
	ldr	r8, [sp, #64]
	mvn	r0, #4
	b	.L29
.L188:
	mov	r3, r8
	b	.L91
.L133:
	and	r2, r2, #15
	str	r1, [fp, #68]
	str	r2, [fp, #72]
	cbz	r2, .L134
	cmp	r7, r2
	bcs	.L135
	mov	r0, r4
	ldr	r6, [sp, #96]
	ldr	r4, [sp, #24]
	add	r9, sp, #104
	ldr	r10, [sp, #20]
.L137:
	cbz	r0, .L307
.L136:
	ldr	r3, [sp, #104]
	subs	r0, r0, #1
	adds	r1, r3, #1
	str	r1, [sp, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, r7
	adds	r7, r7, #8
	cmp	r7, r2
	add	r5, r5, r3
	bcc	.L137
	mov	r4, r0
	str	r6, [sp, #96]
.L135:
	movs	r1, #1
	ldr	r3, [fp, #68]
	lsls	r1, r1, r2
	subs	r7, r7, r2
	subs	r1, r1, #1
	ands	r1, r1, r5
	lsrs	r5, r5, r2
	add	r1, r1, r3
	str	r1, [fp, #68]
.L134:
	ldr	r3, [fp, #40]
	ldr	r2, [fp, #44]
	ldr	r6, [sp, #96]
	cmp	r2, r3
	it	cs
	movcs	r6, #0
	subs	r2, r3, r6
	cmp	r2, r1
	bcs	.L139
	ldr	r6, [sp, #36]
	movs	r3, #29
	str	r6, [r8, #24]
	str	r3, [fp]
	b	.L20
.L307:
	mov	r0, r10
	mov	r1, r9
	blx	r4
	cmp	r0, #0
	beq	.L194
	ldr	r2, [fp, #72]
	b	.L136
.L314:
	.align	2
.L313:
	.word	.LC10-(.LPIC39+4)
	.word	.LC7-(.LPIC36+4)
	.word	.LC6-(.LPIC35+4)
	.word	.LC5-(.LPIC34+4)
	.word	.LC4-(.LPIC33+4)
	.word	.LC4-(.LPIC32+4)
	.word	.LC8-(.LPIC37+4)
	.word	.LC2-(.LPIC29+4)
	.word	.LC1-(.LPIC28+4)
	.word	.LANCHOR2-(.LPIC30+4)
	.word	.LC3-(.LPIC31+4)
	.word	.LC0-(.LPIC27+4)
	.word	.LANCHOR0-(.LPIC25+4)
	.word	.LANCHOR1-(.LPIC26+4)
	.word	.LC9-(.LPIC38+4)
.L139:
	ldr	r10, [sp, #28]
	mov	r9, r3
	ldr	r6, [sp, #96]
.L153:
	mov	r2, r9
	cmp	r6, #0
	beq	.L308
.L140:
	ldr	r3, [fp, #68]
	add	lr, r10, #16
	subs	r2, r2, r3
	cmp	r6, r2
	itte	hi
	subhi	r1, r6, r2
	addhi	r3, r10, r2
	rsbls	r3, r3, r10
	ldr	r2, [fp, #64]
	add	r0, r3, #16
	it	ls
	movls	r1, r6
	cmp	r3, lr
	it	cc
	cmpcc	r10, r0
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	cmp	r1, r2
	it	cs
	movcs	r1, r2
	cmp	r1, #15
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	subs	r2, r2, r1
	str	r2, [fp, #64]
	subs	r6, r6, r1
	cmp	r0, #0
	beq	.L144
	lsrs	r2, r1, #4
	mov	r9, r10
	mov	lr, r3
	lsl	ip, r2, #4
	movs	r0, #0
.L149:
	adds	r0, r0, #1
	vld1.8	{q8}, [lr]!
	cmp	r0, r2
	vst1.8	{q8}, [r9]!
	bcc	.L149
	cmp	r1, ip
	add	r0, r10, ip
	rsb	r2, ip, r1
	add	lr, r3, ip
	beq	.L150
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	cmp	r2, #1
	strb	r3, [r10, ip]
	beq	.L150
	ldrb	r3, [lr, #1]	@ zero_extendqisi2
	cmp	r2, #2
	strb	r3, [r0, #1]
	beq	.L150
	ldrb	r3, [lr, #2]	@ zero_extendqisi2
	cmp	r2, #3
	strb	r3, [r0, #2]
	beq	.L150
	ldrb	r3, [lr, #3]	@ zero_extendqisi2
	cmp	r2, #4
	strb	r3, [r0, #3]
	beq	.L150
	ldrb	r3, [lr, #4]	@ zero_extendqisi2
	cmp	r2, #5
	strb	r3, [r0, #4]
	beq	.L150
	ldrb	r3, [lr, #5]	@ zero_extendqisi2
	cmp	r2, #6
	strb	r3, [r0, #5]
	beq	.L150
	ldrb	r3, [lr, #6]	@ zero_extendqisi2
	cmp	r2, #7
	strb	r3, [r0, #6]
	beq	.L150
	ldrb	r3, [lr, #7]	@ zero_extendqisi2
	cmp	r2, #8
	strb	r3, [r0, #7]
	beq	.L150
	ldrb	r3, [lr, #8]	@ zero_extendqisi2
	cmp	r2, #9
	strb	r3, [r0, #8]
	beq	.L150
	ldrb	r3, [lr, #9]	@ zero_extendqisi2
	cmp	r2, #10
	strb	r3, [r0, #9]
	beq	.L150
	ldrb	r3, [lr, #10]	@ zero_extendqisi2
	cmp	r2, #11
	strb	r3, [r0, #10]
	beq	.L150
	ldrb	r3, [lr, #11]	@ zero_extendqisi2
	cmp	r2, #12
	strb	r3, [r0, #11]
	beq	.L150
	ldrb	r3, [lr, #12]	@ zero_extendqisi2
	cmp	r2, #13
	strb	r3, [r0, #12]
	beq	.L150
	ldrb	r3, [lr, #13]	@ zero_extendqisi2
	cmp	r2, #14
	strb	r3, [r0, #13]
	itt	ne
	ldrbne	r3, [lr, #14]	@ zero_extendqisi2
	strbne	r3, [r0, #14]
.L150:
	ldr	r3, [fp, #64]
	add	r10, r10, r1
	cbz	r3, .L309
	ldr	r9, [fp, #40]
	b	.L153
.L308:
	ldr	r10, [fp, #52]
	mov	r2, r9
	ldr	r0, [sp, #152]
	str	r9, [fp, #44]
	mov	r1, r10
	ldr	r6, [sp, #32]
	blx	r6
	cmp	r0, #0
	bne	.L284
	mov	r6, r9
	ldr	r2, [fp, #40]
	b	.L140
.L144:
	add	lr, r3, r1
	mov	r2, r10
.L151:
	ldrb	r0, [r3], #1	@ zero_extendqisi2
	cmp	r3, lr
	strb	r0, [r2], #1
	bne	.L151
	b	.L150
.L309:
	str	r10, [sp, #28]
	str	r6, [sp, #96]
	ldr	r3, [fp]
	b	.L20
.L79:
	add	r8, r6, #3
	cmp	r7, r8
	bcs	.L82
	ldr	r4, [sp, #12]
.L84:
	cbz	r0, .L310
.L83:
	ldr	r3, [sp, #104]
	subs	r0, r0, #1
	adds	r2, r3, #1
	str	r2, [sp, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, r7
	adds	r7, r7, #8
	cmp	r7, r8
	add	r5, r5, r3
	bcc	.L84
	str	r4, [sp, #12]
.L82:
	lsrs	r5, r5, r6
	movw	r2, #65533
	movt	r2, 65535
	ldr	r3, [fp, #104]
	subs	r2, r2, r6
	and	r6, r5, #7
	add	r7, r7, r2
	adds	r6, r6, #3
	lsrs	r5, r5, #3
	movs	r1, #0
	b	.L78
.L310:
	mov	r0, r9
	mov	r1, r4
	ldr	r2, [sp, #24]
	blx	r2
	cmp	r0, #0
	bne	.L83
	b	.L177
.L304:
	add	r8, r6, #2
	cmp	r7, r8
	bcs	.L73
	ldr	r4, [sp, #12]
.L75:
	cbz	r0, .L311
.L74:
	ldr	r3, [sp, #104]
	subs	r0, r0, #1
	adds	r2, r3, #1
	str	r2, [sp, #104]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, r7
	adds	r7, r7, #8
	cmp	r7, r8
	add	r5, r5, r3
	bcc	.L75
	str	r4, [sp, #12]
.L73:
	ldr	r3, [fp, #104]
	lsrs	r5, r5, r6
	subs	r7, r7, r6
	cmp	r3, #0
	beq	.L312
	and	r6, r5, #3
	add	r2, r3, #55
	subs	r7, r7, #2
	ldrh	r1, [fp, r2, lsl #1]
	adds	r6, r6, #3
	lsrs	r5, r5, #2
	b	.L78
.L311:
	mov	r0, r9
	mov	r1, r4
	ldr	r2, [sp, #24]
	blx	r2
	cmp	r0, #0
	bne	.L74
	b	.L177
.L306:
	str	lr, [sp, #16]
	mov	r4, lr
	cmp	lr, #0
	beq	.L90
	b	.L88
.L284:
	mov	r9, r4
	ldr	r3, [sp, #104]
	mvn	r0, #4
	b	.L29
.L193:
	mov	r9, r0
	mov	r3, r0
	ldr	r8, [sp, #68]
	mvn	r0, #4
	b	.L29
.L180:
	mov	r3, r8
	b	.L90
.L99:
	ldr	r3, [fp]
	mov	r4, r0
	ldr	r8, [sp, #64]
	cmp	r3, #29
	beq	.L20
	ldrh	r3, [fp, #624]
	cbnz	r3, .L102
	ldr	r6, [sp, #48]
	movs	r3, #29
	str	r6, [r8, #24]
	str	r3, [fp]
	b	.L20
.L312:
	ldr	r8, [sp, #64]
	mov	r4, r0
	ldr	r6, [sp, #56]
	movs	r3, #29
	str	r6, [r8, #24]
	str	r3, [fp]
.L77:
	movs	r3, #29
	b	.L20
.L87:
	ldr	r8, [sp, #64]
	movs	r3, #29
	ldr	r6, [sp, #52]
	mov	r4, r0
	str	r6, [r8, #24]
	str	r3, [fp]
	b	.L77
.L102:
	ldr	r6, [sp, #60]
	movs	r3, #9
	str	r3, [fp, #84]
	movs	r0, #1
	ldr	r1, [sp, #88]
	str	r6, [fp, #108]
	str	r6, [fp, #76]
	ldr	r6, [sp, #92]
	ldr	r2, [sp, #68]
	ldr	r3, [sp, #80]
	str	r6, [sp]
	ldr	r6, [sp, #84]
	str	r6, [sp, #4]
	bl	inflate_table(PLT)
	cbz	r0, .L103
	ldr	r6, [sp, #44]
	movs	r3, #29
	str	r6, [r8, #24]
	str	r3, [fp]
	b	.L20
.L103:
	ldr	r1, [fp, #96]
	movs	r0, #6
	ldr	r2, [fp, #108]
	add	lr, fp, #88
	ldr	r6, [sp, #84]
	adds	r1, r1, #56
	str	r0, [fp, #88]
	str	r2, [fp, #80]
	add	r1, fp, r1, lsl #1
	str	r6, [sp, #4]
	movs	r0, #2
	str	lr, [sp]
	ldr	r3, [sp, #80]
	ldr	r2, [fp, #100]
	bl	inflate_table(PLT)
	cmp	r0, #0
	beq	.L104
	ldr	r6, [sp, #40]
	movs	r3, #29
	str	r6, [r8, #24]
	str	r3, [fp]
	b	.L20
	.size	inflateBack, .-inflateBack
	.section	.text.inflateBackEnd,"ax",%progbits
	.align	2
	.global	inflateBackEnd
	.thumb
	.thumb_func
	.type	inflateBackEnd, %function
inflateBackEnd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L319
	ldr	r1, [r0, #28]
	cbz	r1, .L319
	ldr	r3, [r0, #36]
	cbz	r3, .L319
	ldr	r0, [r0, #40]
	blx	r3
	movs	r0, #0
	str	r0, [r4, #28]
	pop	{r4, pc}
.L319:
	mvn	r0, #1
	pop	{r4, pc}
	.size	inflateBackEnd, .-inflateBackEnd
	.section	.rodata.distfix.6972,"a",%progbits
	.align	2
.LANCHOR1 = . + 0
	.type	distfix.6972, %object
	.size	distfix.6972, 128
distfix.6972:
	.byte	16
	.byte	5
	.short	1
	.byte	23
	.byte	5
	.short	257
	.byte	19
	.byte	5
	.short	17
	.byte	27
	.byte	5
	.short	4097
	.byte	17
	.byte	5
	.short	5
	.byte	25
	.byte	5
	.short	1025
	.byte	21
	.byte	5
	.short	65
	.byte	29
	.byte	5
	.short	16385
	.byte	16
	.byte	5
	.short	3
	.byte	24
	.byte	5
	.short	513
	.byte	20
	.byte	5
	.short	33
	.byte	28
	.byte	5
	.short	8193
	.byte	18
	.byte	5
	.short	9
	.byte	26
	.byte	5
	.short	2049
	.byte	22
	.byte	5
	.short	129
	.byte	64
	.byte	5
	.short	0
	.byte	16
	.byte	5
	.short	2
	.byte	23
	.byte	5
	.short	385
	.byte	19
	.byte	5
	.short	25
	.byte	27
	.byte	5
	.short	6145
	.byte	17
	.byte	5
	.short	7
	.byte	25
	.byte	5
	.short	1537
	.byte	21
	.byte	5
	.short	97
	.byte	29
	.byte	5
	.short	24577
	.byte	16
	.byte	5
	.short	4
	.byte	24
	.byte	5
	.short	769
	.byte	20
	.byte	5
	.short	49
	.byte	28
	.byte	5
	.short	12289
	.byte	18
	.byte	5
	.short	13
	.byte	26
	.byte	5
	.short	3073
	.byte	22
	.byte	5
	.short	193
	.byte	64
	.byte	5
	.short	0
	.section	.rodata.lenfix.6971,"a",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	lenfix.6971, %object
	.size	lenfix.6971, 2048
lenfix.6971:
	.byte	96
	.byte	7
	.short	0
	.byte	0
	.byte	8
	.short	80
	.byte	0
	.byte	8
	.short	16
	.byte	20
	.byte	8
	.short	115
	.byte	18
	.byte	7
	.short	31
	.byte	0
	.byte	8
	.short	112
	.byte	0
	.byte	8
	.short	48
	.byte	0
	.byte	9
	.short	192
	.byte	16
	.byte	7
	.short	10
	.byte	0
	.byte	8
	.short	96
	.byte	0
	.byte	8
	.short	32
	.byte	0
	.byte	9
	.short	160
	.byte	0
	.byte	8
	.short	0
	.byte	0
	.byte	8
	.short	128
	.byte	0
	.byte	8
	.short	64
	.byte	0
	.byte	9
	.short	224
	.byte	16
	.byte	7
	.short	6
	.byte	0
	.byte	8
	.short	88
	.byte	0
	.byte	8
	.short	24
	.byte	0
	.byte	9
	.short	144
	.byte	19
	.byte	7
	.short	59
	.byte	0
	.byte	8
	.short	120
	.byte	0
	.byte	8
	.short	56
	.byte	0
	.byte	9
	.short	208
	.byte	17
	.byte	7
	.short	17
	.byte	0
	.byte	8
	.short	104
	.byte	0
	.byte	8
	.short	40
	.byte	0
	.byte	9
	.short	176
	.byte	0
	.byte	8
	.short	8
	.byte	0
	.byte	8
	.short	136
	.byte	0
	.byte	8
	.short	72
	.byte	0
	.byte	9
	.short	240
	.byte	16
	.byte	7
	.short	4
	.byte	0
	.byte	8
	.short	84
	.byte	0
	.byte	8
	.short	20
	.byte	21
	.byte	8
	.short	227
	.byte	19
	.byte	7
	.short	43
	.byte	0
	.byte	8
	.short	116
	.byte	0
	.byte	8
	.short	52
	.byte	0
	.byte	9
	.short	200
	.byte	17
	.byte	7
	.short	13
	.byte	0
	.byte	8
	.short	100
	.byte	0
	.byte	8
	.short	36
	.byte	0
	.byte	9
	.short	168
	.byte	0
	.byte	8
	.short	4
	.byte	0
	.byte	8
	.short	132
	.byte	0
	.byte	8
	.short	68
	.byte	0
	.byte	9
	.short	232
	.byte	16
	.byte	7
	.short	8
	.byte	0
	.byte	8
	.short	92
	.byte	0
	.byte	8
	.short	28
	.byte	0
	.byte	9
	.short	152
	.byte	20
	.byte	7
	.short	83
	.byte	0
	.byte	8
	.short	124
	.byte	0
	.byte	8
	.short	60
	.byte	0
	.byte	9
	.short	216
	.byte	18
	.byte	7
	.short	23
	.byte	0
	.byte	8
	.short	108
	.byte	0
	.byte	8
	.short	44
	.byte	0
	.byte	9
	.short	184
	.byte	0
	.byte	8
	.short	12
	.byte	0
	.byte	8
	.short	140
	.byte	0
	.byte	8
	.short	76
	.byte	0
	.byte	9
	.short	248
	.byte	16
	.byte	7
	.short	3
	.byte	0
	.byte	8
	.short	82
	.byte	0
	.byte	8
	.short	18
	.byte	21
	.byte	8
	.short	163
	.byte	19
	.byte	7
	.short	35
	.byte	0
	.byte	8
	.short	114
	.byte	0
	.byte	8
	.short	50
	.byte	0
	.byte	9
	.short	196
	.byte	17
	.byte	7
	.short	11
	.byte	0
	.byte	8
	.short	98
	.byte	0
	.byte	8
	.short	34
	.byte	0
	.byte	9
	.short	164
	.byte	0
	.byte	8
	.short	2
	.byte	0
	.byte	8
	.short	130
	.byte	0
	.byte	8
	.short	66
	.byte	0
	.byte	9
	.short	228
	.byte	16
	.byte	7
	.short	7
	.byte	0
	.byte	8
	.short	90
	.byte	0
	.byte	8
	.short	26
	.byte	0
	.byte	9
	.short	148
	.byte	20
	.byte	7
	.short	67
	.byte	0
	.byte	8
	.short	122
	.byte	0
	.byte	8
	.short	58
	.byte	0
	.byte	9
	.short	212
	.byte	18
	.byte	7
	.short	19
	.byte	0
	.byte	8
	.short	106
	.byte	0
	.byte	8
	.short	42
	.byte	0
	.byte	9
	.short	180
	.byte	0
	.byte	8
	.short	10
	.byte	0
	.byte	8
	.short	138
	.byte	0
	.byte	8
	.short	74
	.byte	0
	.byte	9
	.short	244
	.byte	16
	.byte	7
	.short	5
	.byte	0
	.byte	8
	.short	86
	.byte	0
	.byte	8
	.short	22
	.byte	64
	.byte	8
	.short	0
	.byte	19
	.byte	7
	.short	51
	.byte	0
	.byte	8
	.short	118
	.byte	0
	.byte	8
	.short	54
	.byte	0
	.byte	9
	.short	204
	.byte	17
	.byte	7
	.short	15
	.byte	0
	.byte	8
	.short	102
	.byte	0
	.byte	8
	.short	38
	.byte	0
	.byte	9
	.short	172
	.byte	0
	.byte	8
	.short	6
	.byte	0
	.byte	8
	.short	134
	.byte	0
	.byte	8
	.short	70
	.byte	0
	.byte	9
	.short	236
	.byte	16
	.byte	7
	.short	9
	.byte	0
	.byte	8
	.short	94
	.byte	0
	.byte	8
	.short	30
	.byte	0
	.byte	9
	.short	156
	.byte	20
	.byte	7
	.short	99
	.byte	0
	.byte	8
	.short	126
	.byte	0
	.byte	8
	.short	62
	.byte	0
	.byte	9
	.short	220
	.byte	18
	.byte	7
	.short	27
	.byte	0
	.byte	8
	.short	110
	.byte	0
	.byte	8
	.short	46
	.byte	0
	.byte	9
	.short	188
	.byte	0
	.byte	8
	.short	14
	.byte	0
	.byte	8
	.short	142
	.byte	0
	.byte	8
	.short	78
	.byte	0
	.byte	9
	.short	252
	.byte	96
	.byte	7
	.short	0
	.byte	0
	.byte	8
	.short	81
	.byte	0
	.byte	8
	.short	17
	.byte	21
	.byte	8
	.short	131
	.byte	18
	.byte	7
	.short	31
	.byte	0
	.byte	8
	.short	113
	.byte	0
	.byte	8
	.short	49
	.byte	0
	.byte	9
	.short	194
	.byte	16
	.byte	7
	.short	10
	.byte	0
	.byte	8
	.short	97
	.byte	0
	.byte	8
	.short	33
	.byte	0
	.byte	9
	.short	162
	.byte	0
	.byte	8
	.short	1
	.byte	0
	.byte	8
	.short	129
	.byte	0
	.byte	8
	.short	65
	.byte	0
	.byte	9
	.short	226
	.byte	16
	.byte	7
	.short	6
	.byte	0
	.byte	8
	.short	89
	.byte	0
	.byte	8
	.short	25
	.byte	0
	.byte	9
	.short	146
	.byte	19
	.byte	7
	.short	59
	.byte	0
	.byte	8
	.short	121
	.byte	0
	.byte	8
	.short	57
	.byte	0
	.byte	9
	.short	210
	.byte	17
	.byte	7
	.short	17
	.byte	0
	.byte	8
	.short	105
	.byte	0
	.byte	8
	.short	41
	.byte	0
	.byte	9
	.short	178
	.byte	0
	.byte	8
	.short	9
	.byte	0
	.byte	8
	.short	137
	.byte	0
	.byte	8
	.short	73
	.byte	0
	.byte	9
	.short	242
	.byte	16
	.byte	7
	.short	4
	.byte	0
	.byte	8
	.short	85
	.byte	0
	.byte	8
	.short	21
	.byte	16
	.byte	8
	.short	258
	.byte	19
	.byte	7
	.short	43
	.byte	0
	.byte	8
	.short	117
	.byte	0
	.byte	8
	.short	53
	.byte	0
	.byte	9
	.short	202
	.byte	17
	.byte	7
	.short	13
	.byte	0
	.byte	8
	.short	101
	.byte	0
	.byte	8
	.short	37
	.byte	0
	.byte	9
	.short	170
	.byte	0
	.byte	8
	.short	5
	.byte	0
	.byte	8
	.short	133
	.byte	0
	.byte	8
	.short	69
	.byte	0
	.byte	9
	.short	234
	.byte	16
	.byte	7
	.short	8
	.byte	0
	.byte	8
	.short	93
	.byte	0
	.byte	8
	.short	29
	.byte	0
	.byte	9
	.short	154
	.byte	20
	.byte	7
	.short	83
	.byte	0
	.byte	8
	.short	125
	.byte	0
	.byte	8
	.short	61
	.byte	0
	.byte	9
	.short	218
	.byte	18
	.byte	7
	.short	23
	.byte	0
	.byte	8
	.short	109
	.byte	0
	.byte	8
	.short	45
	.byte	0
	.byte	9
	.short	186
	.byte	0
	.byte	8
	.short	13
	.byte	0
	.byte	8
	.short	141
	.byte	0
	.byte	8
	.short	77
	.byte	0
	.byte	9
	.short	250
	.byte	16
	.byte	7
	.short	3
	.byte	0
	.byte	8
	.short	83
	.byte	0
	.byte	8
	.short	19
	.byte	21
	.byte	8
	.short	195
	.byte	19
	.byte	7
	.short	35
	.byte	0
	.byte	8
	.short	115
	.byte	0
	.byte	8
	.short	51
	.byte	0
	.byte	9
	.short	198
	.byte	17
	.byte	7
	.short	11
	.byte	0
	.byte	8
	.short	99
	.byte	0
	.byte	8
	.short	35
	.byte	0
	.byte	9
	.short	166
	.byte	0
	.byte	8
	.short	3
	.byte	0
	.byte	8
	.short	131
	.byte	0
	.byte	8
	.short	67
	.byte	0
	.byte	9
	.short	230
	.byte	16
	.byte	7
	.short	7
	.byte	0
	.byte	8
	.short	91
	.byte	0
	.byte	8
	.short	27
	.byte	0
	.byte	9
	.short	150
	.byte	20
	.byte	7
	.short	67
	.byte	0
	.byte	8
	.short	123
	.byte	0
	.byte	8
	.short	59
	.byte	0
	.byte	9
	.short	214
	.byte	18
	.byte	7
	.short	19
	.byte	0
	.byte	8
	.short	107
	.byte	0
	.byte	8
	.short	43
	.byte	0
	.byte	9
	.short	182
	.byte	0
	.byte	8
	.short	11
	.byte	0
	.byte	8
	.short	139
	.byte	0
	.byte	8
	.short	75
	.byte	0
	.byte	9
	.short	246
	.byte	16
	.byte	7
	.short	5
	.byte	0
	.byte	8
	.short	87
	.byte	0
	.byte	8
	.short	23
	.byte	64
	.byte	8
	.short	0
	.byte	19
	.byte	7
	.short	51
	.byte	0
	.byte	8
	.short	119
	.byte	0
	.byte	8
	.short	55
	.byte	0
	.byte	9
	.short	206
	.byte	17
	.byte	7
	.short	15
	.byte	0
	.byte	8
	.short	103
	.byte	0
	.byte	8
	.short	39
	.byte	0
	.byte	9
	.short	174
	.byte	0
	.byte	8
	.short	7
	.byte	0
	.byte	8
	.short	135
	.byte	0
	.byte	8
	.short	71
	.byte	0
	.byte	9
	.short	238
	.byte	16
	.byte	7
	.short	9
	.byte	0
	.byte	8
	.short	95
	.byte	0
	.byte	8
	.short	31
	.byte	0
	.byte	9
	.short	158
	.byte	20
	.byte	7
	.short	99
	.byte	0
	.byte	8
	.short	127
	.byte	0
	.byte	8
	.short	63
	.byte	0
	.byte	9
	.short	222
	.byte	18
	.byte	7
	.short	27
	.byte	0
	.byte	8
	.short	111
	.byte	0
	.byte	8
	.short	47
	.byte	0
	.byte	9
	.short	190
	.byte	0
	.byte	8
	.short	15
	.byte	0
	.byte	8
	.short	143
	.byte	0
	.byte	8
	.short	79
	.byte	0
	.byte	9
	.short	254
	.byte	96
	.byte	7
	.short	0
	.byte	0
	.byte	8
	.short	80
	.byte	0
	.byte	8
	.short	16
	.byte	20
	.byte	8
	.short	115
	.byte	18
	.byte	7
	.short	31
	.byte	0
	.byte	8
	.short	112
	.byte	0
	.byte	8
	.short	48
	.byte	0
	.byte	9
	.short	193
	.byte	16
	.byte	7
	.short	10
	.byte	0
	.byte	8
	.short	96
	.byte	0
	.byte	8
	.short	32
	.byte	0
	.byte	9
	.short	161
	.byte	0
	.byte	8
	.short	0
	.byte	0
	.byte	8
	.short	128
	.byte	0
	.byte	8
	.short	64
	.byte	0
	.byte	9
	.short	225
	.byte	16
	.byte	7
	.short	6
	.byte	0
	.byte	8
	.short	88
	.byte	0
	.byte	8
	.short	24
	.byte	0
	.byte	9
	.short	145
	.byte	19
	.byte	7
	.short	59
	.byte	0
	.byte	8
	.short	120
	.byte	0
	.byte	8
	.short	56
	.byte	0
	.byte	9
	.short	209
	.byte	17
	.byte	7
	.short	17
	.byte	0
	.byte	8
	.short	104
	.byte	0
	.byte	8
	.short	40
	.byte	0
	.byte	9
	.short	177
	.byte	0
	.byte	8
	.short	8
	.byte	0
	.byte	8
	.short	136
	.byte	0
	.byte	8
	.short	72
	.byte	0
	.byte	9
	.short	241
	.byte	16
	.byte	7
	.short	4
	.byte	0
	.byte	8
	.short	84
	.byte	0
	.byte	8
	.short	20
	.byte	21
	.byte	8
	.short	227
	.byte	19
	.byte	7
	.short	43
	.byte	0
	.byte	8
	.short	116
	.byte	0
	.byte	8
	.short	52
	.byte	0
	.byte	9
	.short	201
	.byte	17
	.byte	7
	.short	13
	.byte	0
	.byte	8
	.short	100
	.byte	0
	.byte	8
	.short	36
	.byte	0
	.byte	9
	.short	169
	.byte	0
	.byte	8
	.short	4
	.byte	0
	.byte	8
	.short	132
	.byte	0
	.byte	8
	.short	68
	.byte	0
	.byte	9
	.short	233
	.byte	16
	.byte	7
	.short	8
	.byte	0
	.byte	8
	.short	92
	.byte	0
	.byte	8
	.short	28
	.byte	0
	.byte	9
	.short	153
	.byte	20
	.byte	7
	.short	83
	.byte	0
	.byte	8
	.short	124
	.byte	0
	.byte	8
	.short	60
	.byte	0
	.byte	9
	.short	217
	.byte	18
	.byte	7
	.short	23
	.byte	0
	.byte	8
	.short	108
	.byte	0
	.byte	8
	.short	44
	.byte	0
	.byte	9
	.short	185
	.byte	0
	.byte	8
	.short	12
	.byte	0
	.byte	8
	.short	140
	.byte	0
	.byte	8
	.short	76
	.byte	0
	.byte	9
	.short	249
	.byte	16
	.byte	7
	.short	3
	.byte	0
	.byte	8
	.short	82
	.byte	0
	.byte	8
	.short	18
	.byte	21
	.byte	8
	.short	163
	.byte	19
	.byte	7
	.short	35
	.byte	0
	.byte	8
	.short	114
	.byte	0
	.byte	8
	.short	50
	.byte	0
	.byte	9
	.short	197
	.byte	17
	.byte	7
	.short	11
	.byte	0
	.byte	8
	.short	98
	.byte	0
	.byte	8
	.short	34
	.byte	0
	.byte	9
	.short	165
	.byte	0
	.byte	8
	.short	2
	.byte	0
	.byte	8
	.short	130
	.byte	0
	.byte	8
	.short	66
	.byte	0
	.byte	9
	.short	229
	.byte	16
	.byte	7
	.short	7
	.byte	0
	.byte	8
	.short	90
	.byte	0
	.byte	8
	.short	26
	.byte	0
	.byte	9
	.short	149
	.byte	20
	.byte	7
	.short	67
	.byte	0
	.byte	8
	.short	122
	.byte	0
	.byte	8
	.short	58
	.byte	0
	.byte	9
	.short	213
	.byte	18
	.byte	7
	.short	19
	.byte	0
	.byte	8
	.short	106
	.byte	0
	.byte	8
	.short	42
	.byte	0
	.byte	9
	.short	181
	.byte	0
	.byte	8
	.short	10
	.byte	0
	.byte	8
	.short	138
	.byte	0
	.byte	8
	.short	74
	.byte	0
	.byte	9
	.short	245
	.byte	16
	.byte	7
	.short	5
	.byte	0
	.byte	8
	.short	86
	.byte	0
	.byte	8
	.short	22
	.byte	64
	.byte	8
	.short	0
	.byte	19
	.byte	7
	.short	51
	.byte	0
	.byte	8
	.short	118
	.byte	0
	.byte	8
	.short	54
	.byte	0
	.byte	9
	.short	205
	.byte	17
	.byte	7
	.short	15
	.byte	0
	.byte	8
	.short	102
	.byte	0
	.byte	8
	.short	38
	.byte	0
	.byte	9
	.short	173
	.byte	0
	.byte	8
	.short	6
	.byte	0
	.byte	8
	.short	134
	.byte	0
	.byte	8
	.short	70
	.byte	0
	.byte	9
	.short	237
	.byte	16
	.byte	7
	.short	9
	.byte	0
	.byte	8
	.short	94
	.byte	0
	.byte	8
	.short	30
	.byte	0
	.byte	9
	.short	157
	.byte	20
	.byte	7
	.short	99
	.byte	0
	.byte	8
	.short	126
	.byte	0
	.byte	8
	.short	62
	.byte	0
	.byte	9
	.short	221
	.byte	18
	.byte	7
	.short	27
	.byte	0
	.byte	8
	.short	110
	.byte	0
	.byte	8
	.short	46
	.byte	0
	.byte	9
	.short	189
	.byte	0
	.byte	8
	.short	14
	.byte	0
	.byte	8
	.short	142
	.byte	0
	.byte	8
	.short	78
	.byte	0
	.byte	9
	.short	253
	.byte	96
	.byte	7
	.short	0
	.byte	0
	.byte	8
	.short	81
	.byte	0
	.byte	8
	.short	17
	.byte	21
	.byte	8
	.short	131
	.byte	18
	.byte	7
	.short	31
	.byte	0
	.byte	8
	.short	113
	.byte	0
	.byte	8
	.short	49
	.byte	0
	.byte	9
	.short	195
	.byte	16
	.byte	7
	.short	10
	.byte	0
	.byte	8
	.short	97
	.byte	0
	.byte	8
	.short	33
	.byte	0
	.byte	9
	.short	163
	.byte	0
	.byte	8
	.short	1
	.byte	0
	.byte	8
	.short	129
	.byte	0
	.byte	8
	.short	65
	.byte	0
	.byte	9
	.short	227
	.byte	16
	.byte	7
	.short	6
	.byte	0
	.byte	8
	.short	89
	.byte	0
	.byte	8
	.short	25
	.byte	0
	.byte	9
	.short	147
	.byte	19
	.byte	7
	.short	59
	.byte	0
	.byte	8
	.short	121
	.byte	0
	.byte	8
	.short	57
	.byte	0
	.byte	9
	.short	211
	.byte	17
	.byte	7
	.short	17
	.byte	0
	.byte	8
	.short	105
	.byte	0
	.byte	8
	.short	41
	.byte	0
	.byte	9
	.short	179
	.byte	0
	.byte	8
	.short	9
	.byte	0
	.byte	8
	.short	137
	.byte	0
	.byte	8
	.short	73
	.byte	0
	.byte	9
	.short	243
	.byte	16
	.byte	7
	.short	4
	.byte	0
	.byte	8
	.short	85
	.byte	0
	.byte	8
	.short	21
	.byte	16
	.byte	8
	.short	258
	.byte	19
	.byte	7
	.short	43
	.byte	0
	.byte	8
	.short	117
	.byte	0
	.byte	8
	.short	53
	.byte	0
	.byte	9
	.short	203
	.byte	17
	.byte	7
	.short	13
	.byte	0
	.byte	8
	.short	101
	.byte	0
	.byte	8
	.short	37
	.byte	0
	.byte	9
	.short	171
	.byte	0
	.byte	8
	.short	5
	.byte	0
	.byte	8
	.short	133
	.byte	0
	.byte	8
	.short	69
	.byte	0
	.byte	9
	.short	235
	.byte	16
	.byte	7
	.short	8
	.byte	0
	.byte	8
	.short	93
	.byte	0
	.byte	8
	.short	29
	.byte	0
	.byte	9
	.short	155
	.byte	20
	.byte	7
	.short	83
	.byte	0
	.byte	8
	.short	125
	.byte	0
	.byte	8
	.short	61
	.byte	0
	.byte	9
	.short	219
	.byte	18
	.byte	7
	.short	23
	.byte	0
	.byte	8
	.short	109
	.byte	0
	.byte	8
	.short	45
	.byte	0
	.byte	9
	.short	187
	.byte	0
	.byte	8
	.short	13
	.byte	0
	.byte	8
	.short	141
	.byte	0
	.byte	8
	.short	77
	.byte	0
	.byte	9
	.short	251
	.byte	16
	.byte	7
	.short	3
	.byte	0
	.byte	8
	.short	83
	.byte	0
	.byte	8
	.short	19
	.byte	21
	.byte	8
	.short	195
	.byte	19
	.byte	7
	.short	35
	.byte	0
	.byte	8
	.short	115
	.byte	0
	.byte	8
	.short	51
	.byte	0
	.byte	9
	.short	199
	.byte	17
	.byte	7
	.short	11
	.byte	0
	.byte	8
	.short	99
	.byte	0
	.byte	8
	.short	35
	.byte	0
	.byte	9
	.short	167
	.byte	0
	.byte	8
	.short	3
	.byte	0
	.byte	8
	.short	131
	.byte	0
	.byte	8
	.short	67
	.byte	0
	.byte	9
	.short	231
	.byte	16
	.byte	7
	.short	7
	.byte	0
	.byte	8
	.short	91
	.byte	0
	.byte	8
	.short	27
	.byte	0
	.byte	9
	.short	151
	.byte	20
	.byte	7
	.short	67
	.byte	0
	.byte	8
	.short	123
	.byte	0
	.byte	8
	.short	59
	.byte	0
	.byte	9
	.short	215
	.byte	18
	.byte	7
	.short	19
	.byte	0
	.byte	8
	.short	107
	.byte	0
	.byte	8
	.short	43
	.byte	0
	.byte	9
	.short	183
	.byte	0
	.byte	8
	.short	11
	.byte	0
	.byte	8
	.short	139
	.byte	0
	.byte	8
	.short	75
	.byte	0
	.byte	9
	.short	247
	.byte	16
	.byte	7
	.short	5
	.byte	0
	.byte	8
	.short	87
	.byte	0
	.byte	8
	.short	23
	.byte	64
	.byte	8
	.short	0
	.byte	19
	.byte	7
	.short	51
	.byte	0
	.byte	8
	.short	119
	.byte	0
	.byte	8
	.short	55
	.byte	0
	.byte	9
	.short	207
	.byte	17
	.byte	7
	.short	15
	.byte	0
	.byte	8
	.short	103
	.byte	0
	.byte	8
	.short	39
	.byte	0
	.byte	9
	.short	175
	.byte	0
	.byte	8
	.short	7
	.byte	0
	.byte	8
	.short	135
	.byte	0
	.byte	8
	.short	71
	.byte	0
	.byte	9
	.short	239
	.byte	16
	.byte	7
	.short	9
	.byte	0
	.byte	8
	.short	95
	.byte	0
	.byte	8
	.short	31
	.byte	0
	.byte	9
	.short	159
	.byte	20
	.byte	7
	.short	99
	.byte	0
	.byte	8
	.short	127
	.byte	0
	.byte	8
	.short	63
	.byte	0
	.byte	9
	.short	223
	.byte	18
	.byte	7
	.short	27
	.byte	0
	.byte	8
	.short	111
	.byte	0
	.byte	8
	.short	47
	.byte	0
	.byte	9
	.short	191
	.byte	0
	.byte	8
	.short	15
	.byte	0
	.byte	8
	.short	143
	.byte	0
	.byte	8
	.short	79
	.byte	0
	.byte	9
	.short	255
	.section	.rodata.order.6993,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	order.6993, %object
	.size	order.6993, 38
order.6993:
	.short	16
	.short	17
	.short	18
	.short	0
	.short	8
	.short	7
	.short	9
	.short	6
	.short	10
	.short	5
	.short	11
	.short	4
	.short	12
	.short	3
	.short	13
	.short	2
	.short	14
	.short	1
	.short	15
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"invalid block type\000"
	.space	1
.LC1:
	.ascii	"invalid stored block lengths\000"
	.space	3
.LC2:
	.ascii	"too many length or distance symbols\000"
.LC3:
	.ascii	"invalid code lengths set\000"
	.space	3
.LC4:
	.ascii	"invalid bit length repeat\000"
	.space	2
.LC5:
	.ascii	"invalid code -- missing end-of-block\000"
	.space	3
.LC6:
	.ascii	"invalid literal/lengths set\000"
.LC7:
	.ascii	"invalid distances set\000"
	.space	2
.LC8:
	.ascii	"invalid literal/length code\000"
.LC9:
	.ascii	"invalid distance code\000"
	.space	2
.LC10:
	.ascii	"invalid distance too far back\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
