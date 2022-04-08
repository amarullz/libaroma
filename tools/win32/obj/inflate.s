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
	.file	"inflate.c"
	.section	.text.inflateResetKeep,"ax",%progbits
	.align	2
	.global	inflateResetKeep
	.thumb
	.thumb_func
	.type	inflateResetKeep, %function
inflateResetKeep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L5
	ldr	r3, [r0, #28]
	cbz	r3, .L5
	ldr	r1, [r3, #8]
	movs	r2, #0
	push	{r4, r5, r6, r7}
	str	r2, [r3, #28]
	str	r2, [r0, #20]
	str	r2, [r0, #8]
	str	r2, [r0, #24]
	cbz	r1, .L3
	and	r1, r1, #1
	str	r1, [r0, #48]
.L3:
	movs	r2, #0
	add	r1, r3, #1328
	add	r4, r3, #7104
	mov	r7, #32768
	movs	r6, #1
	mov	r5, #-1
	str	r7, [r3, #20]
	mov	r0, r2
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #12]
	str	r2, [r3, #32]
	str	r2, [r3, #56]
	str	r2, [r3, #60]
	str	r1, [r3, #108]
	str	r1, [r3, #80]
	str	r1, [r3, #76]
	str	r6, [r4]
	str	r5, [r4, #4]
	pop	{r4, r5, r6, r7}
	bx	lr
.L5:
	mvn	r0, #1
	bx	lr
	.size	inflateResetKeep, .-inflateResetKeep
	.section	.text.inflateReset,"ax",%progbits
	.align	2
	.global	inflateReset
	.thumb
	.thumb_func
	.type	inflateReset, %function
inflateReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L13
	ldr	r3, [r0, #28]
	cbz	r3, .L13
	movs	r2, #0
	str	r2, [r3, #40]
	str	r2, [r3, #44]
	str	r2, [r3, #48]
	b	inflateResetKeep(PLT)
.L13:
	mvn	r0, #1
	bx	lr
	.size	inflateReset, .-inflateReset
	.section	.text.inflateReset2,"ax",%progbits
	.align	2
	.global	inflateReset2
	.thumb
	.thumb_func
	.type	inflateReset2, %function
inflateReset2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	cbz	r0, .L19
	ldr	r5, [r0, #28]
	cbz	r5, .L19
	cmp	r1, #0
	mov	r4, r1
	itt	lt
	movlt	r7, #0
	rsblt	r4, r1, #0
	blt	.L21
	asrs	r7, r4, #4
	cmp	r4, #47
	it	le
	andle	r4, r4, #15
	adds	r7, r7, #1
.L21:
	sub	r3, r4, #8
	cmp	r4, #0
	it	ne
	cmpne	r3, #7
	ite	hi
	movhi	r8, #1
	movls	r8, #0
	bhi	.L19
	ldr	r1, [r5, #52]
	cbz	r1, .L22
	ldr	r2, [r5, #36]
	cmp	r4, r2
	beq	.L22
	ldr	r3, [r6, #36]
	ldr	r0, [r6, #40]
	blx	r3
	str	r8, [r5, #52]
.L22:
	str	r7, [r5, #8]
	mov	r0, r6
	str	r4, [r5, #36]
	pop	{r4, r5, r6, r7, r8, lr}
	b	inflateReset(PLT)
.L19:
	mvn	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
	.size	inflateReset2, .-inflateReset2
	.section	.text.inflateInit2_,"ax",%progbits
	.align	2
	.global	inflateInit2_
	.thumb
	.thumb_func
	.type	inflateInit2_, %function
inflateInit2_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r5, .L46
.LPIC0:
	add	r5, pc
	cbz	r2, .L39
	ldrb	r2, [r2]	@ zero_extendqisi2
	cmp	r2, #49
	bne	.L39
	cmp	r3, #56
	bne	.L39
	mov	r4, r0
	cmp	r0, #0
	beq	.L40
	ldr	r3, [r0, #32]
	movs	r2, #0
	mov	r6, r1
	str	r2, [r0, #24]
	cbz	r3, .L34
	ldr	r2, [r4, #36]
	ldr	r0, [r0, #40]
	cbz	r2, .L44
.L36:
	movs	r1, #1
	movw	r2, #7116
	blx	r3
	mov	r5, r0
	cbz	r0, .L41
	movs	r7, #0
	str	r0, [r4, #28]
	mov	r1, r6
	str	r7, [r0, #52]
	mov	r0, r4
	bl	inflateReset2(PLT)
	mov	r6, r0
	cbnz	r0, .L45
	pop	{r3, r4, r5, r6, r7, pc}
.L45:
	ldr	r0, [r4, #40]
	mov	r1, r5
	ldr	r3, [r4, #36]
	blx	r3
	str	r7, [r4, #28]
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L39:
	mvn	r0, #5
	pop	{r3, r4, r5, r6, r7, pc}
.L34:
	ldr	r2, .L46+4
	mov	r0, r3
	ldr	r2, [r5, r2]
	str	r3, [r4, #40]
	str	r2, [r4, #32]
	mov	r3, r2
	ldr	r2, [r4, #36]
	cmp	r2, #0
	bne	.L36
.L44:
	ldr	r2, .L46+8
	ldr	r2, [r5, r2]
	str	r2, [r4, #36]
	b	.L36
.L41:
	mvn	r0, #3
	pop	{r3, r4, r5, r6, r7, pc}
.L40:
	mvn	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L47:
	.align	2
.L46:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	zcalloc(GOT)
	.word	zcfree(GOT)
	.size	inflateInit2_, .-inflateInit2_
	.section	.text.inflateInit_,"ax",%progbits
	.align	2
	.global	inflateInit_
	.thumb
	.thumb_func
	.type	inflateInit_, %function
inflateInit_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r2
	mov	r2, r1
	movs	r1, #15
	b	inflateInit2_(PLT)
	.size	inflateInit_, .-inflateInit_
	.section	.text.inflatePrime,"ax",%progbits
	.align	2
	.global	inflatePrime
	.thumb
	.thumb_func
	.type	inflatePrime, %function
inflatePrime:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L54
	ldr	r3, [r0, #28]
	cbz	r3, .L54
	cmp	r1, #0
	blt	.L58
	cmp	r1, #16
	bgt	.L54
	push	{r4, r5, r6}
	ldr	r4, [r3, #60]
	adds	r0, r1, r4
	cmp	r0, #32
	bhi	.L55
	movs	r6, #1
	ldr	r5, [r3, #56]
	lsl	r1, r6, r1
	str	r0, [r3, #60]
	movs	r0, #0
	subs	r1, r1, #1
	ands	r2, r2, r1
	lsl	r4, r2, r4
	add	r5, r5, r4
	str	r5, [r3, #56]
.L50:
	pop	{r4, r5, r6}
	bx	lr
.L58:
	movs	r2, #0
	str	r2, [r3, #56]
	mov	r0, r2
	str	r2, [r3, #60]
	bx	lr
.L54:
	mvn	r0, #1
	bx	lr
.L55:
	mvn	r0, #1
	b	.L50
	.size	inflatePrime, .-inflatePrime
	.section	.text.inflate,"ax",%progbits
	.align	2
	.global	inflate
	.thumb
	.thumb_func
	.type	inflate, %function
inflate:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #92
	mov	r9, r0
	str	r1, [sp, #28]
	cmp	r0, #0
	beq	.L312
	ldr	r5, [r0, #28]
	cmp	r5, #0
	beq	.L312
	ldr	r7, [r0, #12]
	str	r7, [sp, #16]
	cmp	r7, #0
	beq	.L312
	ldr	ip, [r0]
	cmp	ip, #0
	beq	.L61
	ldr	r7, [r0, #4]
	str	r7, [sp, #24]
.L62:
	ldr	r7, [r9, #16]
	mov	r6, ip
	ldr	r3, [r5]
	ldr	fp, [sp, #24]
	str	r7, [sp, #12]
	ldr	r7, .L753
	cmp	r3, #11
	ldr	r8, [sp, #28]
	it	eq
	moveq	r2, #12
	ldr	r10, [r5, #56]
	it	eq
	moveq	r3, r2
.LPIC37:
	add	r7, pc
	ldr	r4, [r5, #60]
	str	r7, [sp, #40]
	mov	r7, #0
	str	r7, [sp, #32]
	sub	r8, r8, #5
	ldr	r7, [sp, #12]
	ldr	r0, [sp, #40]
	it	eq
	streq	r2, [r5]
	str	r7, [sp, #20]
	ldr	r7, .L753+4
	adds	r0, r0, #36
	str	r8, [sp, #44]
	str	r0, [sp, #48]
.LPIC44:
	add	r7, pc
	str	r9, [sp, #36]
	str	r7, [sp, #52]
	ldr	r7, .L753+8
.LPIC43:
	add	r7, pc
	str	r7, [sp, #56]
	ldr	r7, .L753+12
.LPIC41:
	add	r7, pc
	str	r7, [sp, #60]
	ldr	r7, .L753+16
.LPIC40:
	add	r7, pc
	str	r7, [sp, #64]
	mov	r7, fp
.L64:
	cmp	r3, #30
	bhi	.L312
	tbh	[pc, r3, lsl #1]
.L66:
	.2byte	(.L65-.L66)/2
	.2byte	(.L67-.L66)/2
	.2byte	(.L727-.L66)/2
	.2byte	(.L728-.L66)/2
	.2byte	(.L70-.L66)/2
	.2byte	(.L71-.L66)/2
	.2byte	(.L72-.L66)/2
	.2byte	(.L73-.L66)/2
	.2byte	(.L74-.L66)/2
	.2byte	(.L75-.L66)/2
	.2byte	(.L76-.L66)/2
	.2byte	(.L77-.L66)/2
	.2byte	(.L78-.L66)/2
	.2byte	(.L79-.L66)/2
	.2byte	(.L80-.L66)/2
	.2byte	(.L81-.L66)/2
	.2byte	(.L82-.L66)/2
	.2byte	(.L83-.L66)/2
	.2byte	(.L84-.L66)/2
	.2byte	(.L85-.L66)/2
	.2byte	(.L86-.L66)/2
	.2byte	(.L87-.L66)/2
	.2byte	(.L88-.L66)/2
	.2byte	(.L89-.L66)/2
	.2byte	(.L90-.L66)/2
	.2byte	(.L91-.L66)/2
	.2byte	(.L92-.L66)/2
	.2byte	(.L93-.L66)/2
	.2byte	(.L313-.L66)/2
	.2byte	(.L95-.L66)/2
	.2byte	(.L96-.L66)/2
.L131:
	ldr	r3, [r5, #32]
	cbz	r3, .L132
	ubfx	r2, r10, #8, #1
	str	r2, [r3]
.L132:
	tst	r10, #512
	bne	.L731
.L133:
	movs	r4, #0
	mov	r6, r8
	mov	r10, r4
	movs	r3, #2
	str	r3, [r5]
.L137:
	cmp	r7, #0
	beq	.L722
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	add	r10, r10, r3
.L727:
	cmp	r4, #31
	bls	.L137
	ldr	r3, [r5, #32]
	cbz	r3, .L138
	str	r10, [r3, #4]
.L138:
	ldr	r3, [r5, #16]
	lsls	r0, r3, #22
	bmi	.L732
.L139:
	movs	r4, #0
	movs	r3, #3
	mov	r10, r4
	str	r3, [r5]
.L143:
	cmp	r7, #0
	beq	.L722
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	add	r10, r10, r3
.L728:
	cmp	r4, #15
	bls	.L143
	ldr	r3, [r5, #32]
	cbz	r3, .L144
	uxtb	r1, r10
	lsr	r2, r10, #8
	str	r1, [r3, #8]
	str	r2, [r3, #12]
.L144:
	ldr	r2, [r5, #16]
	lsls	r1, r2, #22
	mov	r3, r2
	bmi	.L733
.L145:
	ands	r4, r2, #1024
	mov	r1, #4
	str	r1, [r5]
	it	eq
	moveq	r10, r4
	beq	.L110
	movs	r4, #0
	mov	r10, r4
.L146:
	cmp	r7, #0
	beq	.L722
	ldrb	r0, [r6]	@ zero_extendqisi2
	subs	r1, r7, #1
	adds	r3, r6, #1
	lsls	r0, r0, r4
	adds	r4, r4, #8
	cmp	r4, #15
	add	r10, r10, r0
	bhi	.L330
	cmp	r1, #0
	beq	.L331
	ldrb	r1, [r6, #1]	@ zero_extendqisi2
	subs	r7, r7, #2
	adds	r3, r6, #2
	lsl	r4, r1, r4
	add	r10, r10, r4
.L148:
	mov	r6, r3
.L147:
	ldr	r3, [r5, #32]
	str	r10, [r5, #64]
	cbz	r3, .L149
	str	r10, [r3, #20]
.L149:
	ands	r1, r2, #512
	bne	.L150
	mov	r3, r2
	mov	r10, r1
	and	r2, r2, #1024
	mov	r4, r1
.L151:
	movs	r1, #5
	str	r1, [r5]
.L108:
	cbz	r2, .L152
	ldr	r2, [r5, #64]
	mov	r8, r7
	cmp	r7, r2
	it	cs
	movcs	r8, r2
	cmp	r8, #0
	beq	.L153
	ldr	r1, [r5, #32]
	cbz	r1, .L154
	ldr	r0, [r1, #16]
	cbz	r0, .L154
	ldr	lr, [r1, #20]
	ldr	r3, [r1, #24]
	rsb	r2, r2, lr
	add	r1, r8, r2
	add	r0, r0, r2
	cmp	r1, r3
	mov	r1, r6
	ite	hi
	subhi	r2, r3, r2
	movls	r2, r8
	bl	memcpy(PLT)
	ldr	r3, [r5, #16]
.L154:
	lsls	r3, r3, #22
	bmi	.L734
.L156:
	ldr	r2, [r5, #64]
	rsb	r7, r8, r7
	add	r6, r6, r8
	rsb	r2, r8, r2
	str	r2, [r5, #64]
.L153:
	cmp	r2, #0
	bne	.L722
	ldr	r3, [r5, #16]
.L152:
	movs	r1, #0
	movs	r2, #6
	str	r1, [r5, #64]
	ands	r1, r3, #2048
	str	r2, [r5]
	bne	.L735
.L157:
	ldr	r2, [r5, #32]
	cmp	r2, #0
	beq	.L162
	str	r1, [r2, #28]
	b	.L162
.L75:
	cmp	r4, #31
	bhi	.L113
	cmp	r7, #0
	beq	.L722
	ldrb	r0, [r6]	@ zero_extendqisi2
	add	r1, r4, #8
	cmp	r1, #31
	add	r2, r7, #-1
	add	r3, r6, #1
	lsl	r0, r0, r4
	add	r10, r10, r0
	bhi	.L317
	cmp	r2, #0
	beq	.L373
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	add	r2, r4, #16
	cmp	r2, #31
	sub	r0, r7, #2
	add	r3, r6, #2
	lsl	r1, lr, r1
	add	r10, r10, r1
	bhi	.L319
	cmp	r0, #0
	beq	.L375
	ldrb	r0, [r6, #2]	@ zero_extendqisi2
	adds	r4, r4, #24
	cmp	r4, #31
	sub	r1, r7, #3
	add	r3, r6, #3
	lsl	r2, r0, r2
	add	r10, r10, r2
	bhi	.L321
	cmp	r1, #0
	beq	.L322
	ldrb	r2, [r6, #3]	@ zero_extendqisi2
	subs	r7, r7, #4
	adds	r3, r6, #4
	lsl	r4, r2, r4
	add	r10, r10, r4
.L114:
	mov	r6, r3
.L113:
	lsr	r1, r10, #24
	lsr	r3, r10, #8
	ldr	r8, [sp, #36]
	add	r1, r1, r10, lsl #24
	and	r3, r3, #65280
	and	r2, r10, #65280
	add	r3, r3, r1
	mov	r10, #0
	add	r3, r3, r2, lsl #8
	mov	r4, r10
	movs	r2, #10
	str	r3, [r5, #24]
	str	r3, [r8, #48]
	str	r2, [r5]
.L76:
	ldr	r3, [r5, #12]
	cmp	r3, #0
	beq	.L736
	movs	r0, #0
	mov	r1, r0
	mov	r2, r0
	bl	adler32(PLT)
	ldr	r8, [sp, #36]
	movs	r3, #11
	str	r0, [r5, #24]
	str	r0, [r8, #48]
	str	r3, [r5]
.L77:
	ldr	r0, [sp, #44]
	cmp	r0, #1
	bls	.L722
.L78:
	ldr	r3, [r5, #4]
	cmp	r3, #0
	bne	.L174
	cmp	r4, #2
	bhi	.L175
	cbz	r7, .L722
	ldrb	r3, [r6]	@ zero_extendqisi2
	subs	r7, r7, #1
	adds	r6, r6, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	add	r10, r10, r3
.L175:
	lsr	r1, r10, #1
	and	r3, r10, #1
	str	r3, [r5, #4]
	and	r3, r1, #3
	cmp	r3, #2
	beq	.L177
	cmp	r3, #3
	beq	.L178
	cmp	r3, #1
	beq	.L179
	movs	r3, #13
	str	r3, [r5]
.L180:
	lsr	r10, r1, #2
	subs	r4, r4, #3
	b	.L64
.L232:
	ldr	r0, [sp, #28]
	movs	r3, #19
	str	r3, [r5]
	cmp	r0, #6
	bne	.L85
.L722:
	ldr	r9, [sp, #36]
	mov	ip, r6
	mov	fp, r7
.L94:
	ldr	r7, [sp, #16]
	ldr	r3, [r5, #40]
	str	ip, [r9]
	str	r7, [r9, #12]
	ldr	r7, [sp, #12]
	str	fp, [r9, #4]
	str	r7, [r9, #16]
	str	r10, [r5, #56]
	str	r4, [r5, #60]
	cbnz	r3, .L291
	ldr	r8, [sp, #20]
	cmp	r7, r8
	beq	.L292
	ldr	r3, [r5]
	cmp	r3, #28
	bhi	.L292
	cmp	r3, #25
	bhi	.L737
.L291:
	ldr	r0, [sp, #12]
	ldr	r4, [r9, #28]
	ldr	r7, [sp, #20]
	subs	r6, r7, r0
	ldr	r0, [r4, #52]
	cmp	r0, #0
	beq	.L738
.L293:
	ldr	r2, [r4, #40]
	cbnz	r2, .L295
	ldr	r2, [r4, #36]
	movs	r7, #1
	movs	r3, #0
	str	r3, [r4, #48]
	str	r3, [r4, #44]
	lsl	r2, r7, r2
	str	r2, [r4, #40]
.L295:
	cmp	r6, r2
	bcs	.L739
	ldr	r3, [r4, #48]
	ldr	r7, [sp, #16]
	add	r0, r0, r3
	subs	r1, r7, r6
	subs	r7, r2, r3
	cmp	r7, r6
	it	cs
	movcs	r7, r6
	mov	r2, r7
	bl	memcpy(PLT)
	subs	r6, r6, r7
	bne	.L740
	ldr	r2, [r4, #48]
	ldr	r3, [r4, #40]
	add	r2, r2, r7
	cmp	r2, r3
	str	r2, [r4, #48]
	ldr	r2, [r4, #44]
	it	eq
	streq	r6, [r4, #48]
	cmp	r3, r2
	itt	hi
	addhi	r7, r7, r2
	strhi	r7, [r4, #44]
.L292:
	ldr	r6, [r9, #4]
	ldr	r7, [sp, #24]
	ldr	r2, [r9, #8]
	ldr	r4, [r9, #16]
	subs	r6, r7, r6
	ldr	r7, [sp, #20]
	ldr	r0, [r5, #28]
	add	r2, r2, r6
	ldr	r3, [r9, #20]
	ldr	r1, [r5, #8]
	subs	r4, r7, r4
	str	r2, [r9, #8]
	adds	r2, r0, r4
	add	r3, r3, r4
	str	r3, [r9, #20]
	str	r2, [r5, #28]
	cbz	r1, .L300
	cbz	r4, .L300
	ldr	r3, [r5, #16]
	mov	r2, r4
	ldr	r1, [r9, #12]
	ldr	r0, [r5, #24]
	subs	r1, r1, r4
	cmp	r3, #0
	bne	.L741
	bl	adler32(PLT)
.L302:
	str	r0, [r5, #24]
	str	r0, [r9, #48]
.L300:
	ldr	r2, [r5, #4]
	ldr	r3, [r5]
	ldr	r1, [r5, #60]
	cmp	r2, #0
	ite	ne
	movne	r2, #64
	moveq	r2, #0
	cmp	r3, #11
	add	r2, r2, r1
	beq	.L304
	cmp	r3, #19
	it	ne
	cmpne	r3, #14
	it	eq
	moveq	r3, #256
	bne	.L307
.L305:
	orrs	r4, r4, r6
	add	r2, r2, r3
	str	r2, [r9, #44]
	beq	.L306
	ldr	r7, [sp, #28]
	cmp	r7, #4
	it	ne
	ldrne	r0, [sp, #32]
	beq	.L306
.L670:
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L306:
	ldr	r3, [sp, #32]
	cmp	r3, #0
	mov	r0, r3
	it	eq
	mvneq	r0, #4
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L304:
	adds	r2, r2, #128
.L307:
	movs	r3, #0
	b	.L305
.L737:
	ldr	r7, [sp, #28]
	cmp	r7, #4
	bne	.L291
	b	.L292
.L174:
	and	r2, r4, #7
	movs	r3, #26
	lsr	r10, r10, r2
	bic	r4, r4, #7
	str	r3, [r5]
	b	.L64
.L741:
	bl	crc32(PLT)
	b	.L302
.L263:
	cmp	r7, #0
	beq	.L722
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	add	r10, r10, r3
.L730:
	cmp	r4, r1
	bcc	.L263
	movs	r0, #1
	add	ip, r5, #7104
	lsls	r0, r0, r1
	ldr	r2, [r5, #68]
	ldr	r3, [ip, #4]
	subs	r4, r4, r1
	subs	r0, r0, #1
	and	r0, r10, r0
	lsr	r10, r10, r1
	add	r2, r2, r0
	add	r3, r3, r1
	str	r2, [r5, #68]
	str	r3, [ip, #4]
.L260:
	movs	r3, #24
	str	r3, [r5]
.L90:
	ldr	r0, [sp, #12]
	cmp	r0, #0
	beq	.L722
	ldr	r1, [sp, #20]
	ldr	r3, [r5, #68]
	subs	r2, r1, r0
	cmp	r2, r3
	bcs	.L264
	ldr	r1, [r5, #44]
	rsb	lr, r2, r3
	cmp	lr, r1
	bls	.L265
	add	ip, r5, #7104
	ldr	r1, .L753+20
	ldr	r3, [ip]
.LPIC47:
	add	r1, pc
	cmp	r3, #0
	bne	.L724
.L265:
	ldr	r2, [r5, #48]
	cmp	lr, r2
	ittte	hi
	ldrhi	r1, [r5, #40]
	rsbhi	lr, r2, lr
	ldrhi	r3, [r5, #52]
	rsbls	r2, lr, r2
	itee	ls
	ldrls	r3, [r5, #52]
	rsbhi	r1, lr, r1
	addhi	r3, r3, r1
	ldr	r1, [r5, #64]
	it	ls
	addls	r3, r3, r2
	ldr	r2, [sp, #16]
	cmp	lr, r1
	mov	ip, r1
	it	cs
	movcs	lr, r1
	b	.L268
.L85:
	movs	r3, #20
	str	r3, [r5]
.L86:
	ldr	r1, [sp, #12]
	cmp	r1, #258
	it	cs
	cmpcs	r7, #5
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	bhi	.L742
	ldr	r1, [r5, #84]
	mov	lr, #1
	ldr	r2, [r5, #76]
	add	ip, r5, #7104
	str	r3, [ip, #4]
	add	fp, ip, #4
	lsl	lr, lr, r1
	add	lr, lr, #-1
	and	r3, r10, lr
	add	r0, r2, r3, lsl #2
	ldrb	r1, [r2, r3, lsl #2]	@ zero_extendqisi2
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrh	r0, [r0, #2]
	cmp	r4, r3
	bcs	.L234
.L236:
	cmp	r7, #0
	beq	.L722
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	add	r10, r10, r3
	and	r3, r10, lr
	add	r0, r2, r3, lsl #2
	ldrb	r1, [r2, r3, lsl #2]	@ zero_extendqisi2
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrh	r0, [r0, #2]
	cmp	r3, r4
	bhi	.L236
.L234:
	cmp	r1, #0
	bne	.L237
	lsr	r10, r10, r3
	subs	r4, r4, r3
	str	r3, [fp]
	str	r0, [r5, #64]
.L238:
	movs	r3, #25
	str	r3, [r5]
	b	.L64
.L245:
	and	r1, r1, #15
	movs	r3, #21
	str	r1, [r5, #72]
	str	r3, [r5]
	cmp	r1, #0
	bne	.L729
.L746:
	ldr	r3, [r5, #64]
	add	ip, r5, #7104
.L247:
	movs	r2, #22
	str	r3, [ip, #8]
	str	r2, [r5]
.L88:
	ldr	r3, [r5, #88]
	mov	ip, #1
	ldr	r2, [r5, #80]
	lsl	r3, ip, r3
	add	ip, r3, #-1
	and	r3, r10, ip
	add	r0, r2, r3, lsl #2
	ldrb	r1, [r2, r3, lsl #2]	@ zero_extendqisi2
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrh	r0, [r0, #2]
	cmp	r4, r3
	mov	lr, r3
	bcs	.L251
.L253:
	cmp	r7, #0
	beq	.L722
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	add	r10, r10, r3
	and	r3, r10, ip
	add	r0, r2, r3, lsl #2
	ldrb	r1, [r2, r3, lsl #2]	@ zero_extendqisi2
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	ldrh	r0, [r0, #2]
	cmp	r3, r4
	mov	lr, r3
	bhi	.L253
.L251:
	tst	r1, #240
	beq	.L254
	add	ip, r5, #7104
	mov	r8, r3
	ldr	r3, [ip, #4]
	add	fp, ip, #4
.L255:
	add	r3, r3, r8
	lsr	r10, r10, r8
	str	r3, [fp]
	lsls	r3, r1, #25
	rsb	r4, lr, r4
	bpl	.L259
	ldr	r1, .L753+24
.LPIC46:
	add	r1, pc
.L725:
	ldr	ip, [sp, #36]
	movs	r2, #29
	mov	r3, r2
	str	r1, [ip, #24]
	str	r2, [r5]
	b	.L64
.L313:
	mov	fp, r7
	movs	r7, #1
	mov	ip, r6
	ldr	r9, [sp, #36]
	str	r7, [sp, #32]
	b	.L94
.L93:
	ldr	r3, [r5, #8]
.L97:
	cmp	r3, #0
	beq	.L721
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L721
	cmp	r4, #31
	bhi	.L288
	cmp	r7, #0
	beq	.L722
	ldrb	r1, [r6]	@ zero_extendqisi2
	add	r2, r4, #8
	cmp	r2, #31
	add	r0, r7, #-1
	add	r3, r6, #1
	lsl	r1, r1, r4
	add	r10, r10, r1
	bhi	.L370
	cmp	r0, #0
	beq	.L375
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	add	r1, r4, #16
	cmp	r1, #31
	sub	lr, r7, #2
	add	r3, r6, #2
	lsl	r2, r0, r2
	add	r10, r10, r2
	bhi	.L372
	cmp	lr, #0
	beq	.L373
	ldrb	r0, [r6, #2]	@ zero_extendqisi2
	add	r2, r4, #24
	cmp	r2, #31
	sub	lr, r7, #3
	add	r3, r6, #3
	lsl	r1, r0, r1
	add	r10, r10, r1
	bhi	.L374
	cmp	lr, #0
	beq	.L375
	ldrb	r1, [r6, #3]	@ zero_extendqisi2
	subs	r7, r7, #4
	adds	r4, r4, #32
	adds	r3, r6, #4
	lsl	r2, r1, r2
	add	r10, r10, r2
.L289:
	mov	r6, r3
.L288:
	ldr	r3, [r5, #28]
	cmp	r3, r10
	beq	.L376
	ldr	r1, .L753+28
.LPIC49:
	add	r1, pc
.L724:
	ldr	r8, [sp, #36]
	movs	r2, #29
	mov	r3, r2
	str	r1, [r8, #24]
	str	r2, [r5]
	b	.L64
.L96:
	mvn	r0, #3
	b	.L670
.L95:
	mvn	r3, #2
	mov	ip, r6
	mov	fp, r7
	ldr	r9, [sp, #36]
	str	r3, [sp, #32]
	b	.L94
.L67:
	cmp	r4, #15
	bhi	.L323
	cmp	r7, #0
	beq	.L722
	ldrb	r1, [r6]	@ zero_extendqisi2
	add	r3, r4, #8
	cmp	r3, #15
	add	r2, r7, #-1
	add	r8, r6, #1
	lsl	r1, r1, r4
	add	r10, r10, r1
	bhi	.L324
	cmp	r2, #0
	beq	.L325
	ldrb	r2, [r6, #1]	@ zero_extendqisi2
	subs	r7, r7, #2
	adds	r4, r4, #16
	add	r8, r6, #2
	lsl	r3, r2, r3
	add	r10, r10, r3
.L116:
	uxtb	r3, r10
	str	r10, [r5, #16]
	cmp	r3, #8
	beq	.L130
	ldr	r1, .L753+32
	mov	r6, r8
	ldr	r8, [sp, #36]
	movs	r2, #29
	mov	r3, r2
.LPIC28:
	add	r1, pc
	str	r1, [r8, #24]
	str	r2, [r5]
	b	.L64
.L70:
	ldr	r2, [r5, #16]
	lsls	r1, r2, #21
	mov	r3, r2
	bpl	.L110
	cmp	r4, #15
	bls	.L146
	b	.L147
.L65:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L118
	cmp	r4, #15
	bhi	.L119
	cmp	r7, #0
	beq	.L722
	ldrb	lr, [r6]	@ zero_extendqisi2
	add	r2, r4, #8
	cmp	r2, #15
	add	r0, r7, #-1
	add	r1, r6, #1
	lsl	lr, lr, r4
	add	r10, r10, lr
	bhi	.L326
	cmp	r0, #0
	beq	.L337
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	subs	r7, r7, #2
	adds	r4, r4, #16
	adds	r1, r6, #2
	lsl	r2, r0, r2
	add	r10, r10, r2
.L120:
	mov	r6, r1
.L119:
	lsls	r2, r3, #30
	bpl	.L122
	movw	r2, #35615
	cmp	r10, r2
	beq	.L743
.L122:
	ldr	r2, [r5, #32]
	movs	r1, #0
	str	r1, [r5, #16]
	cbz	r2, .L123
	mov	r1, #-1
	str	r1, [r2, #48]
.L123:
	lsls	r3, r3, #31
	bpl	.L124
	lsl	r3, r10, #8
	movw	r2, #4229
	movt	r2, 2114
	uxth	r3, r3
	add	r3, r3, r10, lsr #8
	umull	lr, r2, r2, r3
	subs	r1, r3, r2
	add	r2, r2, r1, lsr #1
	lsrs	r2, r2, #4
	rsb	r2, r2, r2, lsl #5
	cmp	r3, r2
	bne	.L124
	and	r3, r10, #15
	cmp	r3, #8
	beq	.L126
	ldr	r1, .L753+36
.LPIC26:
	add	r1, pc
	b	.L725
.L71:
	ldr	r3, [r5, #16]
	and	r2, r3, #1024
	b	.L108
.L72:
	ldr	r3, [r5, #16]
	ands	r1, r3, #2048
	beq	.L157
.L735:
	cmp	r7, #0
	beq	.L722
	mov	r8, #0
.L160:
	ldr	r3, [r5, #32]
	add	r8, r8, #1
	add	fp, r6, r8
	ldrb	r9, [fp, #-1]	@ zero_extendqisi2
	cbz	r3, .L158
	ldr	r2, [r3, #28]
	cbz	r2, .L158
	ldr	r1, [r3, #32]
	ldr	r3, [r5, #64]
	cmp	r3, r1
	add	r1, r3, #1
	itt	cc
	strcc	r1, [r5, #64]
	strbcc	r9, [r2, r3]
.L158:
	cmp	r9, #0
	it	ne
	cmpne	r8, r7
	bcc	.L160
	ldr	r3, [r5, #16]
	lsls	r0, r3, #22
	bmi	.L744
.L161:
	rsb	r7, r8, r7
	mov	r6, fp
	cmp	r9, #0
	bne	.L722
	ldr	r3, [r5, #16]
.L162:
	movs	r1, #0
	movs	r2, #7
	str	r1, [r5, #64]
	str	r2, [r5]
.L106:
	ands	r2, r3, #4096
	beq	.L163
	cmp	r7, #0
	beq	.L722
	mov	r8, #0
.L166:
	ldr	r3, [r5, #32]
	add	r8, r8, #1
	add	fp, r6, r8
	ldrb	r9, [fp, #-1]	@ zero_extendqisi2
	cbz	r3, .L164
	ldr	r2, [r3, #36]
	cbz	r2, .L164
	ldr	r1, [r3, #40]
	ldr	r3, [r5, #64]
	cmp	r3, r1
	add	r1, r3, #1
	itt	cc
	strcc	r1, [r5, #64]
	strbcc	r9, [r2, r3]
.L164:
	cmp	r9, #0
	it	ne
	cmpne	r8, r7
	bcc	.L166
	ldr	r3, [r5, #16]
	lsls	r1, r3, #22
	bmi	.L745
.L167:
	rsb	r7, r8, r7
	mov	r6, fp
	cmp	r9, #0
	bne	.L722
	ldr	r3, [r5, #16]
.L168:
	movs	r2, #8
	str	r2, [r5]
.L105:
	lsls	r2, r3, #22
	bpl	.L169
	cmp	r4, #15
	bhi	.L335
	cmp	r7, #0
	beq	.L722
	ldrb	lr, [r6]	@ zero_extendqisi2
	add	r2, r4, #8
	cmp	r2, #15
	add	r0, r7, #-1
	add	r1, r6, #1
	lsl	lr, lr, r4
	add	r10, r10, lr
	bhi	.L336
	cmp	r0, #0
	beq	.L337
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	subs	r7, r7, #2
	adds	r4, r4, #16
	adds	r1, r6, #2
	lsl	r2, r0, r2
	add	r10, r10, r2
.L170:
	ldrh	r2, [r5, #24]
	cmp	r2, r10
	beq	.L338
	ldr	r0, .L753+40
.LPIC30:
	add	r0, pc
.L726:
	ldr	r8, [sp, #36]
	movs	r2, #29
	mov	r6, r1
	mov	r3, r2
	str	r0, [r8, #24]
	str	r2, [r5]
	b	.L64
.L73:
	ldr	r3, [r5, #16]
	b	.L106
.L74:
	ldr	r3, [r5, #16]
	b	.L105
.L87:
	ldr	r1, [r5, #72]
	cmp	r1, #0
	bne	.L729
	b	.L746
.L79:
	and	r3, r4, #7
	bic	r4, r4, #7
	cmp	r4, #31
	lsr	r10, r10, r3
	bhi	.L341
	cmp	r7, #0
	beq	.L722
	ldrb	r0, [r6]	@ zero_extendqisi2
	add	r2, r4, #8
	cmp	r2, #31
	add	r1, r7, #-1
	add	r3, r6, #1
	lsl	r0, r0, r4
	add	r10, r10, r0
	bhi	.L342
	cmp	r1, #0
	beq	.L375
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	add	r1, r4, #16
	cmp	r1, #31
	sub	r0, r7, #2
	add	r3, r6, #2
	lsl	r2, lr, r2
	add	r10, r10, r2
	bhi	.L344
	cmp	r0, #0
	beq	.L373
	ldrb	lr, [r6, #2]	@ zero_extendqisi2
	add	r2, r4, #24
	cmp	r2, #31
	sub	r0, r7, #3
	add	r3, r6, #3
	lsl	r1, lr, r1
	add	r10, r10, r1
	bhi	.L346
	cmp	r0, #0
	beq	.L375
	ldrb	r1, [r6, #3]	@ zero_extendqisi2
	subs	r7, r7, #4
	adds	r4, r4, #32
	adds	r3, r6, #4
	lsl	r2, r1, r2
	add	r10, r10, r2
.L181:
	lsr	r1, r10, #16
	uxth	r2, r10
	eor	r1, r1, #65280
	eor	r1, r1, #255
	cmp	r2, r1
	beq	.L184
	ldr	r1, .L753+44
	movs	r2, #29
	ldr	ip, [sp, #36]
	mov	r6, r3
	mov	r3, r2
.LPIC34:
	add	r1, pc
	str	r1, [ip, #24]
	str	r2, [r5]
	b	.L64
.L80:
	ldr	r2, [r5, #64]
.L104:
	movs	r3, #15
	str	r3, [r5]
.L103:
	cmp	r2, #0
	beq	.L185
	ldr	r1, [sp, #12]
	cmp	r7, r2
	mov	r8, r7
	it	cs
	movcs	r8, r2
	cmp	r8, r1
	it	cs
	movcs	r8, r1
	cmp	r8, #0
	beq	.L722
	mov	r1, r6
	mov	r2, r8
	ldr	r0, [sp, #16]
	rsb	r7, r8, r7
	bl	memcpy(PLT)
	ldr	r2, [r5, #64]
	add	r6, r6, r8
	ldr	r3, [sp, #12]
	ldr	r0, [sp, #16]
	rsb	r2, r8, r2
	rsb	r3, r8, r3
	str	r2, [r5, #64]
	add	r0, r0, r8
	str	r3, [sp, #12]
	str	r0, [sp, #16]
	ldr	r3, [r5]
	b	.L64
.L81:
	ldr	r2, [r5, #64]
	b	.L103
.L89:
	ldr	r1, [r5, #72]
	cmp	r1, #0
	beq	.L260
	b	.L730
.L91:
	ldr	r1, [sp, #12]
	cmp	r1, #0
	beq	.L722
	ldr	r8, [sp, #16]
	mov	r3, r1
	ldr	r1, [r5, #64]
	movs	r2, #20
	subs	r3, r3, #1
	mov	r0, r8
	str	r3, [sp, #12]
	adds	r0, r0, #1
	strb	r1, [r8]
	mov	r3, r2
	str	r0, [sp, #16]
	str	r2, [r5]
	b	.L64
.L83:
	ldr	r2, [r5, #92]
	ldr	r3, [r5, #104]
	cmp	r2, r3
	bls	.L102
.L101:
	ldr	lr, .L753+48
	subs	r1, r3, #1
.LPIC36:
	add	lr, pc
	add	lr, lr, r1, lsl #1
.L188:
	cmp	r4, #2
	add	r0, r6, #1
	bhi	.L350
	cmp	r7, #0
	beq	.L722
	ldrb	r1, [r6]	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r1, r1, r4
	adds	r4, r4, #8
	add	r10, r10, r1
.L189:
	ldrh	r1, [lr, #2]!
	adds	r3, r3, #1
	cmp	r3, r2
	and	r6, r10, #7
	str	r3, [r5, #104]
	sub	r4, r4, #3
	add	r1, r1, #56
	lsr	r10, r10, #3
	strh	r6, [r5, r1, lsl #1]	@ movhi
	mov	r6, r0
	bcc	.L188
	mov	r6, r0
.L102:
	cmp	r3, #18
	bhi	.L194
	ldr	ip, [sp, #40]
	subs	r3, r3, #1
	ldr	r0, [sp, #48]
	movs	r1, #0
	add	r3, ip, r3, lsl #1
.L195:
	ldrh	r2, [r3, #2]!
	cmp	r3, r0
	add	r2, r2, #56
	strh	r1, [r5, r2, lsl #1]	@ movhi
	bne	.L195
	movs	r3, #19
	str	r3, [r5, #104]
.L194:
	add	r3, r5, #1328
	movs	r2, #7
	add	ip, r5, #84
	add	lr, r5, #752
	str	r3, [r5, #108]
	movs	r0, #0
	str	r3, [r5, #76]
	add	r1, r5, #112
	str	r2, [r5, #84]
	add	r3, r5, #108
	movs	r2, #19
	str	ip, [sp]
	str	lr, [sp, #4]
	bl	inflate_table(PLT)
	str	r0, [sp, #32]
	cmp	r0, #0
	beq	.L747
	ldr	r1, .L753+52
.LPIC39:
	add	r1, pc
	b	.L724
.L754:
	.align	2
.L753:
	.word	.LANCHOR2-(.LPIC37+4)
	.word	.LC12-(.LPIC44+4)
	.word	.LC11-(.LPIC43+4)
	.word	.LC9-(.LPIC41+4)
	.word	.LC9-(.LPIC40+4)
	.word	.LC15-(.LPIC47+4)
	.word	.LC14-(.LPIC46+4)
	.word	.LC17-(.LPIC49+4)
	.word	.LC1-(.LPIC28+4)
	.word	.LC1-(.LPIC26+4)
	.word	.LC4-(.LPIC30+4)
	.word	.LC6-(.LPIC34+4)
	.word	.LANCHOR2-(.LPIC36+4)
	.word	.LC8-(.LPIC39+4)
.L84:
	ldr	fp, [r5, #104]
.L100:
	ldr	r1, [r5, #96]
	mov	r8, #1
	ldr	r3, [r5, #100]
	mov	lr, r1
	str	r1, [sp, #68]
	add	lr, lr, r3
.L196:
	cmp	fp, lr
	bcs	.L227
	ldr	r3, [r5, #84]
	ldr	r1, [r5, #76]
	lsl	r3, r8, r3
	subs	r0, r3, #1
	and	r3, r10, r0
	add	r3, r1, r3, lsl #2
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldrh	r3, [r3, #2]
	cmp	r4, r2
	bcs	.L228
.L198:
	cmp	r7, #0
	beq	.L722
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	add	r10, r10, r3
	and	r3, r10, r0
	add	r3, r1, r3, lsl #2
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldrh	r3, [r3, #2]
	cmp	r2, r4
	bhi	.L198
.L228:
	cmp	r3, #15
	bls	.L748
	cmp	r3, #16
	beq	.L749
	cmp	r3, #17
	beq	.L208
	adds	r1, r2, #7
	cmp	r4, r1
	bcs	.L209
.L214:
	cmp	r7, #0
	beq	.L722
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	cmp	r4, r1
	add	r10, r10, r3
	bcc	.L214
.L209:
	lsr	r10, r10, r2
	movw	r3, #65529
	movt	r3, 65535
	subs	r3, r3, r2
	and	ip, r10, #127
	lsr	r10, r10, #7
	add	r4, r4, r3
	add	ip, ip, #11
	movs	r3, #0
.L207:
	add	r0, ip, fp
	cmp	r0, lr
	str	r0, [sp, #72]
	bhi	.L215
	add	r9, fp, #56
	uxth	r0, r3
	add	r1, r5, r9, lsl #1
	add	r3, ip, #-1
	ubfx	r1, r1, #1, #2
	negs	r1, r1
	and	r1, r1, #7
	cmp	r1, ip
	it	cs
	movcs	r1, ip
	cmp	ip, #10
	it	ls
	movls	r1, ip
	bhi	.L750
.L216:
	cmp	r1, #1
	strh	r0, [r5, r9, lsl #1]	@ movhi
	add	r2, fp, #1
	sub	r3, ip, #2
	beq	.L353
	cmp	r1, #2
	add	r3, fp, #57
	strh	r0, [r5, r3, lsl #1]	@ movhi
	add	r2, fp, #2
	sub	r3, ip, #3
	beq	.L361
	cmp	r1, #3
	add	r3, fp, #58
	strh	r0, [r5, r3, lsl #1]	@ movhi
	add	r2, fp, #3
	sub	r3, ip, #4
	beq	.L361
	cmp	r1, #4
	add	r3, fp, #59
	strh	r0, [r5, r3, lsl #1]	@ movhi
	add	r2, fp, #4
	sub	r3, ip, #5
	beq	.L361
	cmp	r1, #5
	add	r3, fp, #60
	strh	r0, [r5, r3, lsl #1]	@ movhi
	add	r2, fp, #5
	sub	r3, ip, #6
	beq	.L361
	cmp	r1, #6
	add	r3, fp, #61
	strh	r0, [r5, r3, lsl #1]	@ movhi
	add	r2, fp, #6
	sub	r3, ip, #7
	beq	.L361
	cmp	r1, #7
	add	r3, fp, #62
	strh	r0, [r5, r3, lsl #1]	@ movhi
	add	r2, fp, #7
	sub	r3, ip, #8
	beq	.L361
	cmp	r1, #8
	add	r3, fp, #63
	strh	r0, [r5, r3, lsl #1]	@ movhi
	add	r2, fp, #8
	sub	r3, ip, #9
	beq	.L361
	cmp	r1, #10
	add	r3, fp, #64
	strh	r0, [r5, r3, lsl #1]	@ movhi
	add	r2, fp, #9
	sub	r3, ip, #10
	bne	.L361
	add	fp, fp, #10
	sub	r3, ip, #11
	adds	r2, r2, #56
	strh	r0, [r5, r2, lsl #1]	@ movhi
.L219:
	cmp	ip, r1
	beq	.L220
.L218:
	rsb	ip, r1, ip
	lsr	r2, ip, #3
	str	ip, [sp, #76]
	lsl	ip, r2, #3
	cbz	r2, .L221
	add	r1, r1, r9
	vdup.16	q8, r0
	add	r9, r5, r1, lsl #1
	movs	r1, #0
.L226:
	adds	r1, r1, #1
	vst1.64	{d16-d17}, [r9:64]!
	cmp	r1, r2
	bcc	.L226
	ldr	r1, [sp, #76]
	rsb	r3, ip, r3
	add	fp, fp, ip
	cmp	ip, r1
	beq	.L220
.L221:
	add	r2, fp, #56
	strh	r0, [r5, r2, lsl #1]	@ movhi
	cbz	r3, .L220
	cmp	r3, #1
	add	r2, fp, #57
	strh	r0, [r5, r2, lsl #1]	@ movhi
	beq	.L220
	cmp	r3, #2
	add	r2, fp, #58
	strh	r0, [r5, r2, lsl #1]	@ movhi
	beq	.L220
	cmp	r3, #3
	add	r2, fp, #59
	strh	r0, [r5, r2, lsl #1]	@ movhi
	beq	.L220
	cmp	r3, #4
	add	r2, fp, #60
	strh	r0, [r5, r2, lsl #1]	@ movhi
	beq	.L220
	cmp	r3, #5
	add	r2, fp, #61
	it	ne
	addne	fp, fp, #62
	strh	r0, [r5, r2, lsl #1]	@ movhi
	it	ne
	strhne	r0, [r5, fp, lsl #1]	@ movhi
.L220:
	ldr	fp, [sp, #72]
	str	fp, [r5, #104]
	b	.L196
.L82:
	cmp	r4, #13
	bhi	.L314
	cmp	r7, #0
	beq	.L722
	ldrb	r0, [r6]	@ zero_extendqisi2
	add	r3, r4, #8
	cmp	r3, #13
	add	r2, r7, #-1
	add	r1, r6, #1
	lsl	r0, r0, r4
	add	r10, r10, r0
	bhi	.L315
	cmp	r2, #0
	beq	.L316
	ldrb	r2, [r6, #1]	@ zero_extendqisi2
	subs	r7, r7, #2
	adds	r4, r4, #16
	adds	r1, r6, #2
	lsl	r3, r2, r3
	add	r10, r10, r3
.L111:
	and	r3, r10, #31
	ubfx	r0, r10, #5, #5
	addw	r3, r3, #257
	ubfx	r2, r10, #10, #4
	cmp	r3, #286
	add	r0, r0, #1
	add	r2, r2, #4
	sub	r4, r4, #14
	str	r3, [r5, #96]
	lsr	r10, r10, #14
	str	r0, [r5, #100]
	str	r2, [r5, #92]
	bhi	.L186
	cmp	r0, #30
	bhi	.L186
	movs	r0, #0
	mov	r6, r1
	movs	r1, #17
	mov	r3, r0
	str	r0, [r5, #104]
	str	r1, [r5]
	b	.L101
.L92:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	beq	.L278
	cmp	r4, #31
	bhi	.L362
	cmp	r7, #0
	beq	.L722
	ldrb	r1, [r6]	@ zero_extendqisi2
	add	r3, r4, #8
	cmp	r3, #31
	add	r2, r7, #-1
	add	r8, r6, #1
	lsl	r1, r1, r4
	add	r10, r10, r1
	bhi	.L363
	cmp	r2, #0
	beq	.L368
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	add	r2, r4, #16
	cmp	r2, #31
	sub	r1, r7, #2
	add	r8, r6, #2
	lsl	r3, r0, r3
	add	r10, r10, r3
	bhi	.L365
	cmp	r1, #0
	beq	.L366
	ldrb	r0, [r6, #2]	@ zero_extendqisi2
	add	r3, r4, #24
	cmp	r3, #31
	sub	r1, r7, #3
	add	r8, r6, #3
	lsl	r2, r0, r2
	add	r10, r10, r2
	bhi	.L367
	cmp	r1, #0
	beq	.L368
	ldrb	r2, [r6, #3]	@ zero_extendqisi2
	subs	r7, r7, #4
	adds	r4, r4, #32
	add	r8, r6, #4
	lsl	r3, r2, r3
	add	r10, r10, r3
.L279:
	ldr	ip, [sp, #36]
	ldr	r3, [sp, #12]
	ldr	r0, [sp, #20]
	ldr	r1, [ip, #20]
	subs	r2, r0, r3
	ldr	r3, [r5, #28]
	add	r1, r1, r2
	str	r1, [ip, #20]
	add	r3, r3, r2
	str	r3, [r5, #28]
	cbz	r2, .L282
	ldr	r3, [r5, #16]
	ldr	r0, [r5, #24]
	cmp	r3, #0
	beq	.L283
	ldr	r3, [sp, #16]
	subs	r1, r3, r2
	bl	crc32(PLT)
.L284:
	ldr	ip, [sp, #36]
	str	r0, [r5, #24]
	str	r0, [ip, #48]
.L282:
	ldr	r3, [r5, #16]
	mov	r2, r10
	cbnz	r3, .L285
	lsr	r1, r10, #24
	lsr	r3, r10, #8
	add	r1, r1, r10, lsl #24
	and	r3, r3, #65280
	and	r2, r10, #65280
	add	r3, r3, r1
	add	r2, r3, r2, lsl #8
.L285:
	ldr	r3, [r5, #24]
	cmp	r2, r3
	beq	.L751
	ldr	r1, .L755
	mov	r6, r8
	ldr	r0, [sp, #12]
	movs	r2, #29
	ldr	r8, [sp, #36]
	mov	r3, r2
.LPIC48:
	add	r1, pc
	str	r0, [sp, #20]
	str	r1, [r8, #24]
	str	r2, [r5]
	b	.L64
.L250:
	cmp	r7, #0
	beq	.L722
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	add	r10, r10, r3
.L729:
	cmp	r4, r1
	bcc	.L250
	movs	r0, #1
	add	ip, r5, #7104
	lsls	r0, r0, r1
	ldr	r3, [r5, #64]
	ldr	r2, [ip, #4]
	subs	r4, r4, r1
	subs	r0, r0, #1
	and	r0, r10, r0
	lsr	r10, r10, r1
	add	r3, r3, r0
	add	r2, r2, r1
	str	r3, [r5, #64]
	str	r2, [ip, #4]
	b	.L247
.L110:
	ldr	r1, [r5, #32]
	mov	r2, r1
	cmp	r1, #0
	beq	.L151
	movs	r2, #0
	str	r2, [r1, #16]
	b	.L151
.L338:
	movs	r4, #0
	mov	r6, r1
	mov	r10, r4
.L169:
	ldr	r2, [r5, #32]
	cbz	r2, .L172
	ubfx	r3, r3, #9, #1
	movs	r1, #1
	str	r3, [r2, #44]
	str	r1, [r2, #48]
.L172:
	movs	r0, #0
	mov	r2, r0
	mov	r1, r0
	bl	crc32(PLT)
	ldr	ip, [sp, #36]
	movs	r2, #11
	str	r0, [r5, #24]
	mov	r3, r2
	str	r0, [ip, #48]
	str	r2, [r5]
	b	.L64
.L61:
	ldr	r3, [r0, #4]
	cmp	r3, #0
	bne	.L312
	str	ip, [sp, #24]
	b	.L62
.L163:
	ldr	r1, [r5, #32]
	cmp	r1, #0
	beq	.L168
	str	r2, [r1, #36]
	b	.L168
.L739:
	ldr	r7, [sp, #16]
	subs	r1, r7, r2
	bl	memcpy(PLT)
	ldr	r3, [r4, #40]
	movs	r2, #0
	str	r2, [r4, #48]
	str	r3, [r4, #44]
	b	.L292
.L740:
	ldr	r7, [sp, #16]
	mov	r2, r6
	ldr	r0, [r4, #52]
	subs	r1, r7, r6
	bl	memcpy(PLT)
	ldr	r3, [r4, #40]
	str	r6, [r4, #48]
	str	r3, [r4, #44]
	b	.L292
.L185:
	movs	r3, #11
	str	r3, [r5]
	b	.L64
.L264:
	ldr	r0, [sp, #16]
	ldr	lr, [r5, #64]
	subs	r3, r0, r3
	mov	r2, r0
	mov	ip, lr
.L268:
	ldr	r1, [sp, #12]
	adds	r2, r2, #16
	add	r0, r3, #16
	cmp	lr, r1
	it	cs
	movcs	lr, r1
	ldr	r1, [sp, #16]
	cmp	r3, r2
	it	cc
	cmpcc	r1, r0
	ldr	r0, [sp, #12]
	ite	cs
	movcs	r2, #1
	movcc	r2, #0
	cmp	lr, #15
	ite	ls
	movls	r2, #0
	andhi	r2, r2, #1
	rsb	r1, lr, ip
	rsb	r0, lr, r0
	str	r1, [r5, #64]
	str	r0, [sp, #12]
	cmp	r2, #0
	beq	.L269
	lsr	r2, lr, #4
	ldr	r0, [sp, #16]
	mov	r8, r3
	lsl	ip, r2, #4
	movs	r1, #0
.L274:
	adds	r1, r1, #1
	vld1.8	{q8}, [r8]!
	cmp	r1, r2
	vst1.8	{q8}, [r0]!
	bcc	.L274
	ldr	r1, [sp, #16]
	cmp	ip, lr
	rsb	r2, ip, lr
	add	r0, r3, ip
	add	r1, r1, ip
	beq	.L275
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	cmp	r2, #1
	ldr	r8, [sp, #16]
	strb	r3, [r8, ip]
	beq	.L275
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	cmp	r2, #2
	strb	r3, [r1, #1]
	beq	.L275
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	cmp	r2, #3
	strb	r3, [r1, #2]
	beq	.L275
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	cmp	r2, #4
	strb	r3, [r1, #3]
	beq	.L275
	ldrb	r3, [r0, #4]	@ zero_extendqisi2
	cmp	r2, #5
	strb	r3, [r1, #4]
	beq	.L275
	ldrb	r3, [r0, #5]	@ zero_extendqisi2
	cmp	r2, #6
	strb	r3, [r1, #5]
	beq	.L275
	ldrb	r3, [r0, #6]	@ zero_extendqisi2
	cmp	r2, #7
	strb	r3, [r1, #6]
	beq	.L275
	ldrb	r3, [r0, #7]	@ zero_extendqisi2
	cmp	r2, #8
	strb	r3, [r1, #7]
	beq	.L275
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	cmp	r2, #9
	strb	r3, [r1, #8]
	beq	.L275
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r2, #10
	strb	r3, [r1, #9]
	beq	.L275
	ldrb	r3, [r0, #10]	@ zero_extendqisi2
	cmp	r2, #11
	strb	r3, [r1, #10]
	beq	.L275
	ldrb	r3, [r0, #11]	@ zero_extendqisi2
	cmp	r2, #12
	strb	r3, [r1, #11]
	beq	.L275
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	cmp	r2, #13
	strb	r3, [r1, #12]
	beq	.L275
	ldrb	r3, [r0, #13]	@ zero_extendqisi2
	cmp	r2, #14
	strb	r3, [r1, #13]
	itt	ne
	ldrbne	r3, [r0, #14]	@ zero_extendqisi2
	strbne	r3, [r1, #14]
.L275:
	ldr	r0, [sp, #16]
	ldr	r3, [r5, #64]
	add	r0, r0, lr
	str	r0, [sp, #16]
	cbz	r3, .L277
	ldr	r3, [r5]
	b	.L64
.L277:
	movs	r3, #20
	str	r3, [r5]
	b	.L64
.L751:
	ldr	r3, [r5, #8]
	movs	r4, #0
	ldr	r0, [sp, #12]
	mov	r6, r8
	mov	r10, r4
	str	r0, [sp, #20]
.L278:
	movs	r2, #27
	str	r2, [r5]
	b	.L97
.L118:
	movs	r3, #12
	str	r3, [r5]
	b	.L64
.L254:
	add	r1, r1, r3
	mov	fp, #1
	lsl	fp, fp, r1
	mov	r9, r0
	add	fp, fp, #-1
	and	r1, fp, r10
	lsrs	r1, r1, r3
	add	r1, r1, r0
	add	r0, r2, r1, lsl #2
	ldrb	r1, [r2, r1, lsl #2]	@ zero_extendqisi2
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	ldrh	r0, [r0, #2]
	add	ip, r3, lr
	mov	r8, lr
	cmp	r4, ip
	bcs	.L256
.L258:
	cmp	r7, #0
	beq	.L722
	ldrb	r1, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r1, r1, r4
	adds	r4, r4, #8
	add	r10, r10, r1
	and	r1, r10, fp
	lsrs	r1, r1, r3
	add	r1, r1, r9
	add	r0, r2, r1, lsl #2
	ldrb	r1, [r2, r1, lsl #2]	@ zero_extendqisi2
	ldrb	lr, [r0, #1]	@ zero_extendqisi2
	ldrh	r0, [r0, #2]
	add	ip, lr, r3
	mov	r8, lr
	cmp	ip, r4
	bhi	.L258
.L256:
	add	ip, r5, #7104
	lsr	r10, r10, r3
	ldr	r2, [ip, #4]
	subs	r4, r4, r3
	add	fp, ip, #4
	add	r3, r3, r2
	b	.L255
.L748:
	add	r1, fp, #1
	add	r0, fp, #56
	str	r1, [r5, #104]
	lsr	r10, r10, r2
	subs	r4, r4, r2
	strh	r3, [r5, r0, lsl #1]	@ movhi
	mov	fp, r1
	b	.L196
.L186:
	ldr	r0, .L755+4
.LPIC35:
	add	r0, pc
	b	.L726
.L177:
	movs	r3, #16
	str	r3, [r5]
	b	.L180
.L130:
	tst	r10, #57344
	beq	.L131
	ldr	r1, .L755+8
	movs	r2, #29
	ldr	ip, [sp, #36]
	mov	r6, r8
	mov	r3, r2
.LPIC29:
	add	r1, pc
	str	r1, [ip, #24]
	str	r2, [r5]
	b	.L64
.L184:
	ldr	r0, [sp, #28]
	movs	r1, #14
	str	r2, [r5, #64]
	str	r1, [r5]
	cmp	r0, #6
	beq	.L348
	movs	r4, #0
	mov	r6, r3
	mov	r10, r4
	b	.L104
.L330:
	mov	r7, r1
	b	.L148
.L745:
	mov	r1, r6
	ldr	r0, [r5, #24]
	mov	r2, r8
	bl	crc32(PLT)
	str	r0, [r5, #24]
	b	.L167
.L742:
	ldr	r8, [sp, #36]
	ldr	r2, [sp, #16]
	stmia	r8, {r6, r7}
	mov	r0, r8
	str	r2, [r8, #12]
	str	r1, [r8, #16]
	str	r10, [r5, #56]
	str	r4, [r5, #60]
	ldr	r1, [sp, #20]
	bl	inflate_fast(PLT)
	ldr	r7, [r8, #12]
	ldr	r3, [r5]
	ldr	r10, [r5, #56]
	str	r7, [sp, #16]
	ldr	r7, [r8, #16]
	cmp	r3, #11
	itt	eq
	addeq	ip, r5, #7104
	moveq	r2, #-1
	ldr	r4, [r5, #60]
	str	r7, [sp, #12]
	ldmia	r8, {r6, r7}
	it	eq
	streq	r2, [ip, #4]
	b	.L64
.L738:
	ldr	r1, [r4, #36]
	movs	r7, #1
	mov	r2, r7
	ldr	r3, [r9, #32]
	ldr	r0, [r9, #40]
	lsl	r1, r7, r1
	blx	r3
	str	r0, [r4, #52]
	cmp	r0, #0
	bne	.L293
	movs	r3, #30
	mvn	r0, #3
	str	r3, [r5]
	b	.L670
.L744:
	mov	r1, r6
	ldr	r0, [r5, #24]
	mov	r2, r8
	bl	crc32(PLT)
	str	r0, [r5, #24]
	b	.L161
.L312:
	mvn	r0, #1
	b	.L670
.L237:
	tst	r1, #240
	beq	.L239
	lsr	r10, r10, r3
	subs	r4, r4, r3
	str	r3, [fp]
	str	r0, [r5, #64]
.L240:
	lsls	r0, r1, #26
	bpl	.L244
	mov	r3, #-1
	movs	r2, #11
	str	r3, [fp]
	mov	r3, r2
	str	r2, [r5]
	b	.L64
.L259:
	and	r1, r1, #15
	movs	r3, #23
	str	r1, [r5, #72]
	str	r0, [r5, #68]
	str	r3, [r5]
	cmp	r1, #0
	beq	.L260
	b	.L730
.L269:
	ldr	r2, [sp, #16]
	add	r0, r3, lr
.L276:
	ldrb	r1, [r3], #1	@ zero_extendqisi2
	cmp	r3, r0
	strb	r1, [r2], #1
	bne	.L276
	b	.L275
.L375:
	ldr	r9, [sp, #36]
	mov	r4, r2
	mov	ip, r3
.L290:
	mov	fp, #0
	b	.L94
.L733:
	lsr	r3, r10, #8
	movs	r2, #2
	ldr	r0, [r5, #24]
	add	r1, sp, #80
	strb	r3, [sp, #81]
	strb	r10, [sp, #80]
	bl	crc32(PLT)
	ldr	r2, [r5, #16]
	str	r0, [r5, #24]
	mov	r3, r2
	b	.L145
.L239:
	add	r1, r1, r3
	mov	r8, #1
	lsl	r8, r8, r1
	add	r8, r8, #-1
	and	r1, r8, r10
	lsrs	r1, r1, r3
	add	r1, r1, r0
	add	ip, r2, r1, lsl #2
	ldrb	r1, [r2, r1, lsl #2]	@ zero_extendqisi2
	ldrb	lr, [ip, #1]	@ zero_extendqisi2
	ldrh	r9, [ip, #2]
	add	ip, r3, lr
	cmp	r4, ip
	bcs	.L241
.L243:
	cmp	r7, #0
	beq	.L722
	ldrb	r1, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r1, r1, r4
	adds	r4, r4, #8
	add	r10, r10, r1
	and	r1, r10, r8
	lsrs	r1, r1, r3
	add	r1, r1, r0
	add	ip, r2, r1, lsl #2
	ldrb	r1, [r2, r1, lsl #2]	@ zero_extendqisi2
	ldrb	lr, [ip, #1]	@ zero_extendqisi2
	ldrh	r9, [ip, #2]
	add	ip, lr, r3
	cmp	ip, r4
	bhi	.L243
.L241:
	lsr	r10, r10, r3
	subs	r4, r4, r3
	str	ip, [fp]
	rsb	r4, lr, r4
	lsr	r10, r10, lr
	str	r9, [r5, #64]
	cmp	r1, #0
	bne	.L240
	b	.L238
.L124:
	ldr	r1, .L755+12
.LPIC25:
	add	r1, pc
	b	.L724
.L179:
	movs	r2, #9
	ldr	r3, .L755+16
	str	r2, [r5, #84]
	movs	r2, #5
	str	r2, [r5, #88]
	ldr	r2, [sp, #28]
.LPIC31:
	add	r3, pc
	ldr	r0, .L755+20
	str	r3, [r5, #76]
	movs	r3, #19
	cmp	r2, #6
	str	r3, [r5]
.LPIC32:
	add	r0, pc
	str	r0, [r5, #80]
	bne	.L180
	mov	fp, r7
	ldr	r9, [sp, #36]
	lsr	r10, r10, #3
	subs	r4, r4, #3
	mov	ip, r6
	b	.L94
.L178:
	ldr	r0, .L755+24
	movs	r2, #29
	ldr	r8, [sp, #36]
	mov	r3, r2
.LPIC33:
	add	r0, pc
	str	r0, [r8, #24]
	str	r2, [r5]
	b	.L180
.L734:
	ldr	r0, [r5, #24]
	mov	r1, r6
	mov	r2, r8
	bl	crc32(PLT)
	str	r0, [r5, #24]
	b	.L156
.L732:
	lsr	r2, r10, #8
	lsr	r3, r10, #24
	lsr	r4, r10, #16
	ldr	r0, [r5, #24]
	strb	r2, [sp, #81]
	add	r1, sp, #80
	movs	r2, #4
	strb	r10, [sp, #80]
	strb	r4, [sp, #82]
	strb	r3, [sp, #83]
	bl	crc32(PLT)
	str	r0, [r5, #24]
	b	.L139
.L244:
	lsls	r2, r1, #25
	bpl	.L245
	ldr	r1, .L755+28
.LPIC45:
	add	r1, pc
	b	.L724
.L373:
	ldr	r9, [sp, #36]
	mov	r4, r1
	mov	ip, r3
	b	.L290
.L150:
	lsr	r3, r10, #8
	movs	r2, #2
	ldr	r0, [r5, #24]
	add	r1, sp, #80
	strb	r10, [sp, #80]
	mov	r10, #0
	strb	r3, [sp, #81]
	mov	r4, r10
	bl	crc32(PLT)
	ldr	r3, [r5, #16]
	str	r0, [r5, #24]
	and	r2, r3, #1024
	b	.L151
.L337:
	ldr	r9, [sp, #36]
	mov	r4, r2
	mov	fp, r0
	mov	ip, r1
	b	.L94
.L749:
	adds	r1, r2, #2
	cmp	r4, r1
	bcs	.L202
.L204:
	cmp	r7, #0
	beq	.L722
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	cmp	r4, r1
	add	r10, r10, r3
	bcc	.L204
.L202:
	lsr	r10, r10, r2
	subs	r4, r4, r2
	cmp	fp, #0
	beq	.L752
	and	ip, r10, #3
	add	r3, fp, #55
	subs	r4, r4, #2
	ldrh	r3, [r5, r3, lsl #1]
	add	ip, ip, #3
	lsr	r10, r10, #2
	b	.L207
.L335:
	mov	r1, r6
	b	.L170
.L336:
	mov	r4, r2
	mov	r7, r0
	b	.L170
.L361:
	mov	fp, r2
	b	.L219
.L350:
	mov	r0, r6
	b	.L189
.L208:
	adds	r1, r2, #3
	cmp	r4, r1
	bcs	.L211
.L213:
	cmp	r7, #0
	beq	.L722
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r7, r7, #1
	lsls	r3, r3, r4
	adds	r4, r4, #8
	cmp	r4, r1
	add	r10, r10, r3
	bcc	.L213
.L211:
	lsr	r10, r10, r2
	movw	r3, #65533
	movt	r3, 65535
	subs	r3, r3, r2
	and	ip, r10, #7
	add	r4, r4, r3
	add	ip, ip, #3
	lsr	r10, r10, #3
	movs	r3, #0
	b	.L207
.L283:
	ldr	r3, [sp, #16]
	subs	r1, r3, r2
	bl	adler32(PLT)
	b	.L284
.L721:
	ldr	r9, [sp, #36]
	mov	ip, r6
	mov	fp, r7
.L287:
	movs	r3, #28
	movs	r7, #1
	str	r7, [sp, #32]
	str	r3, [r5]
	b	.L94
.L750:
	cmp	r1, #0
	beq	.L218
	b	.L216
.L374:
	mov	r4, r2
	mov	r7, lr
	b	.L289
.L372:
	mov	r4, r1
	mov	r7, lr
	b	.L289
.L370:
	mov	r4, r2
	mov	r7, r0
	b	.L289
.L747:
	ldr	fp, [sp, #32]
	movs	r3, #18
	str	r3, [r5]
	str	fp, [r5, #104]
	b	.L100
.L341:
	mov	r3, r6
	b	.L181
.L323:
	mov	r8, r6
	b	.L116
.L314:
	mov	r1, r6
	b	.L111
.L315:
	mov	r4, r3
	mov	r7, r2
	b	.L111
.L317:
	mov	r7, r2
	b	.L114
.L321:
	mov	r7, r1
	b	.L114
.L346:
	mov	r4, r2
	mov	r7, r0
	b	.L181
.L344:
	mov	r4, r1
	mov	r7, r0
	b	.L181
.L342:
	mov	r4, r2
	mov	r7, r1
	b	.L181
.L324:
	mov	r4, r3
	mov	r7, r2
	b	.L116
.L319:
	mov	r7, r0
	b	.L114
.L316:
	ldr	r9, [sp, #36]
	mov	r4, r3
	mov	fp, r2
	mov	ip, r1
	b	.L94
.L325:
	ldr	r9, [sp, #36]
	mov	r4, r3
	mov	fp, r2
	mov	ip, r8
	b	.L94
.L322:
	ldr	r9, [sp, #36]
	mov	ip, r3
	b	.L290
.L368:
	ldr	r9, [sp, #36]
	mov	r4, r3
	mov	ip, r8
	b	.L290
.L227:
	ldrh	r3, [r5, #624]
	cmp	r3, #0
	bne	.L230
	ldr	r1, .L755+32
.LPIC42:
	add	r1, pc
	b	.L724
.L331:
	ldr	r9, [sp, #36]
	mov	fp, r1
	mov	ip, r3
	b	.L94
.L736:
	ldr	r9, [sp, #36]
	mov	fp, r7
	ldr	r7, [sp, #16]
	movs	r0, #2
	str	r6, [r9]
	str	r7, [r9, #12]
	ldr	r7, [sp, #12]
	str	fp, [r9, #4]
	str	r7, [r9, #16]
	str	r10, [r5, #56]
	str	r4, [r5, #60]
	b	.L670
.L362:
	mov	r8, r6
	b	.L279
.L731:
	lsr	r3, r10, #8
	ldr	r0, [r5, #24]
	add	r1, sp, #80
	strb	r10, [sp, #80]
	movs	r2, #2
	strb	r3, [sp, #81]
	bl	crc32(PLT)
	str	r0, [r5, #24]
	b	.L133
.L367:
	mov	r4, r3
	mov	r7, r1
	b	.L279
.L366:
	ldr	r9, [sp, #36]
	mov	r4, r2
	mov	ip, r8
	b	.L290
.L365:
	mov	r4, r2
	mov	r7, r1
	b	.L279
.L363:
	mov	r4, r3
	mov	r7, r2
	b	.L279
.L326:
	mov	r4, r2
	mov	r7, r0
	b	.L120
.L743:
	movs	r0, #0
	mov	r1, r0
	mov	r2, r0
	mov	r4, r0
	bl	crc32(PLT)
	movs	r2, #31
	movs	r3, #139
	strb	r2, [sp, #80]
	add	r1, sp, #80
	str	r0, [r5, #24]
	movs	r2, #2
	strb	r3, [sp, #81]
	mov	r10, r4
	bl	crc32(PLT)
	movs	r3, #1
	str	r0, [r5, #24]
	str	r3, [r5]
	b	.L64
.L126:
	ldr	r2, [r5, #36]
	lsr	r10, r10, #4
	and	r3, r10, #15
	adds	r3, r3, #8
	cmp	r2, #0
	bne	.L127
	str	r3, [r5, #36]
.L128:
	movs	r2, #1
	movs	r0, #0
	lsl	r3, r2, r3
	mov	r1, r0
	mov	r2, r0
	str	r3, [r5, #20]
	bl	adler32(PLT)
	ldr	ip, [sp, #36]
	tst	r10, #512
	ite	eq
	moveq	r2, #11
	movne	r2, #9
	mov	r10, #0
	str	r0, [r5, #24]
	mov	r3, r2
	str	r0, [ip, #48]
	mov	r4, r10
	str	r2, [r5]
	b	.L64
.L376:
	movs	r4, #0
	mov	ip, r6
	mov	fp, r7
	ldr	r9, [sp, #36]
	mov	r10, r4
	b	.L287
.L353:
	mov	fp, r2
	b	.L218
.L230:
	add	r0, r5, #1328
	movs	r1, #9
	add	lr, r5, #84
	add	r9, r5, #108
	add	r8, r5, #752
	str	r0, [r5, #108]
	str	r0, [r5, #76]
	mov	r3, r9
	str	r1, [r5, #84]
	movs	r0, #1
	ldr	r2, [sp, #68]
	add	r1, r5, #112
	str	r8, [sp, #4]
	str	lr, [sp]
	bl	inflate_table(PLT)
	str	r0, [sp, #32]
	cbz	r0, .L231
	ldr	r0, [sp, #56]
	movs	r3, #29
	ldr	r8, [sp, #36]
	str	r0, [r8, #24]
	str	r3, [r5]
	b	.L64
.L127:
	cmp	r3, r2
	bls	.L128
	ldr	r1, .L755+36
	movs	r2, #29
	ldr	r8, [sp, #36]
	subs	r4, r4, #4
	mov	r3, r2
.LPIC27:
	add	r1, pc
	str	r1, [r8, #24]
	str	r2, [r5]
	b	.L64
.L215:
	ldr	r1, [sp, #60]
	movs	r3, #29
	ldr	r8, [sp, #36]
	str	r1, [r8, #24]
	str	r3, [r5]
.L206:
	movs	r3, #29
	b	.L64
.L348:
	movs	r4, #0
	mov	fp, r7
	ldr	r9, [sp, #36]
	mov	ip, r3
	mov	r10, r4
	b	.L94
.L231:
	ldr	r1, [r5, #96]
	movs	r0, #6
	ldr	r2, [r5, #108]
	add	lr, r5, #88
	str	r0, [r5, #88]
	mov	r3, r9
	adds	r1, r1, #56
	movs	r0, #2
	str	r2, [r5, #80]
	add	r1, r5, r1, lsl #1
	str	r8, [sp, #4]
	str	lr, [sp]
	ldr	r2, [r5, #100]
	bl	inflate_table(PLT)
	str	r0, [sp, #32]
	cmp	r0, #0
	beq	.L232
	ldr	r0, [sp, #52]
	movs	r3, #29
	ldr	r8, [sp, #36]
	str	r0, [r8, #24]
	str	r3, [r5]
	b	.L64
.L752:
	ldr	r2, [sp, #64]
	movs	r3, #29
	ldr	r8, [sp, #36]
	str	r2, [r8, #24]
	str	r3, [r5]
	b	.L206
.L756:
	.align	2
.L755:
	.word	.LC16-(.LPIC48+4)
	.word	.LC7-(.LPIC35+4)
	.word	.LC3-(.LPIC29+4)
	.word	.LC0-(.LPIC25+4)
	.word	.LANCHOR0-(.LPIC31+4)
	.word	.LANCHOR1-(.LPIC32+4)
	.word	.LC5-(.LPIC33+4)
	.word	.LC13-(.LPIC45+4)
	.word	.LC10-(.LPIC42+4)
	.word	.LC2-(.LPIC27+4)
	.size	inflate, .-inflate
	.section	.text.inflateEnd,"ax",%progbits
	.align	2
	.global	inflateEnd
	.thumb
	.thumb_func
	.type	inflateEnd, %function
inflateEnd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L762
	ldr	r1, [r0, #28]
	cbz	r1, .L762
	ldr	r3, [r0, #36]
	cbz	r3, .L762
	ldr	r2, [r1, #52]
	cbz	r2, .L759
	mov	r1, r2
	ldr	r0, [r0, #40]
	blx	r3
	ldr	r3, [r4, #36]
	ldr	r1, [r4, #28]
.L759:
	ldr	r0, [r4, #40]
	blx	r3
	movs	r0, #0
	str	r0, [r4, #28]
	pop	{r4, pc}
.L762:
	mvn	r0, #1
	pop	{r4, pc}
	.size	inflateEnd, .-inflateEnd
	.section	.text.inflateGetDictionary,"ax",%progbits
	.align	2
	.global	inflateGetDictionary
	.thumb
	.thumb_func
	.type	inflateGetDictionary, %function
inflateGetDictionary:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L770
	push	{r4, r5, r6, lr}
	ldr	r4, [r0, #28]
	cbz	r4, .L771
	mov	r5, r2
	ldr	r2, [r4, #44]
	cbz	r2, .L769
	mov	r3, r1
	cbz	r1, .L769
	ldr	r1, [r4, #48]
	mov	r0, r3
	ldr	r6, [r4, #52]
	subs	r2, r2, r1
	add	r1, r1, r6
	bl	memcpy(PLT)
	ldr	r6, [r4, #44]
	mov	r3, r0
	ldr	r0, [r4, #48]
	ldr	r1, [r4, #52]
	mov	r2, r0
	subs	r0, r6, r0
	add	r0, r0, r3
	bl	memcpy(PLT)
.L769:
	cbz	r5, .L772
	ldr	r3, [r4, #44]
	movs	r0, #0
	str	r3, [r5]
	pop	{r4, r5, r6, pc}
.L772:
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L770:
	mvn	r0, #1
	bx	lr
.L771:
	mvn	r0, #1
	pop	{r4, r5, r6, pc}
	.size	inflateGetDictionary, .-inflateGetDictionary
	.section	.text.inflateSetDictionary,"ax",%progbits
	.align	2
	.global	inflateSetDictionary
	.thumb
	.thumb_func
	.type	inflateSetDictionary, %function
inflateSetDictionary:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	cmp	r0, #0
	beq	.L794
	ldr	r6, [r0, #28]
	cmp	r6, #0
	beq	.L794
	ldr	r3, [r6, #8]
	mov	r8, r1
	mov	r5, r2
	cmp	r3, #0
	bne	.L799
	ldr	r3, [r6]
	cmp	r3, #10
	it	ne
	movne	r4, r6
	beq	.L783
.L784:
	ldr	r0, [r4, #52]
	add	r8, r8, r5
	cmp	r0, #0
	beq	.L800
.L785:
	ldr	r2, [r4, #40]
	cbnz	r2, .L787
	ldr	r2, [r4, #36]
	movs	r7, #1
	movs	r3, #0
	str	r3, [r4, #48]
	str	r3, [r4, #44]
	lsl	r2, r7, r2
	str	r2, [r4, #40]
.L787:
	cmp	r5, r2
	bcs	.L801
	ldr	r3, [r4, #48]
	rsb	r1, r5, r8
	subs	r7, r2, r3
	add	r0, r0, r3
	cmp	r7, r5
	it	cs
	movcs	r7, r5
	mov	r2, r7
	bl	memcpy(PLT)
	subs	r5, r5, r7
	bne	.L802
	ldr	r1, [r4, #48]
	movs	r0, #0
	ldr	r3, [r4, #40]
	ldr	r2, [r4, #44]
	add	r1, r1, r7
	cmp	r1, r3
	str	r1, [r4, #48]
	it	eq
	streq	r5, [r4, #48]
	cmp	r3, r2
	it	hi
	addhi	r7, r7, r2
	mov	r3, #1
	it	hi
	strhi	r7, [r4, #44]
	str	r3, [r6, #12]
	pop	{r4, r5, r6, r7, r8, pc}
.L799:
	ldr	r3, [r6]
	cmp	r3, #10
	bne	.L794
.L783:
	movs	r0, #0
	mov	r1, r0
	mov	r2, r0
	bl	adler32(PLT)
	mov	r1, r8
	mov	r2, r5
	bl	adler32(PLT)
	ldr	r3, [r6, #24]
	cmp	r3, r0
	bne	.L796
	ldr	r4, [r7, #28]
	b	.L784
.L801:
	rsb	r1, r2, r8
	bl	memcpy(PLT)
	ldr	r3, [r4, #40]
	movs	r2, #0
	str	r2, [r4, #48]
	movs	r0, #0
	str	r3, [r4, #44]
	movs	r3, #1
	str	r3, [r6, #12]
	pop	{r4, r5, r6, r7, r8, pc}
.L802:
	rsb	r1, r5, r8
	ldr	r0, [r4, #52]
	mov	r2, r5
	bl	memcpy(PLT)
	ldr	r3, [r4, #40]
	movs	r0, #0
	str	r5, [r4, #48]
	str	r3, [r4, #44]
	movs	r3, #1
	str	r3, [r6, #12]
	pop	{r4, r5, r6, r7, r8, pc}
.L794:
	mvn	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L800:
	ldr	r3, [r7, #32]
	movs	r1, #1
	ldr	r0, [r7, #40]
	mov	r2, r1
	ldr	r7, [r4, #36]
	lsls	r1, r1, r7
	blx	r3
	str	r0, [r4, #52]
	cmp	r0, #0
	bne	.L785
	movs	r3, #30
	mvn	r0, #3
	str	r3, [r6]
	pop	{r4, r5, r6, r7, r8, pc}
.L796:
	mvn	r0, #2
	pop	{r4, r5, r6, r7, r8, pc}
	.size	inflateSetDictionary, .-inflateSetDictionary
	.section	.text.inflateGetHeader,"ax",%progbits
	.align	2
	.global	inflateGetHeader
	.thumb
	.thumb_func
	.type	inflateGetHeader, %function
inflateGetHeader:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L807
	ldr	r3, [r0, #28]
	cbz	r3, .L807
	ldr	r2, [r3, #8]
	lsls	r2, r2, #30
	bpl	.L807
	movs	r2, #0
	str	r1, [r3, #32]
	mov	r0, r2
	str	r2, [r1, #48]
	bx	lr
.L807:
	mvn	r0, #1
	bx	lr
	.size	inflateGetHeader, .-inflateGetHeader
	.section	.text.inflateSync,"ax",%progbits
	.align	2
	.global	inflateSync
	.thumb
	.thumb_func
	.type	inflateSync, %function
inflateSync:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	sub	sp, sp, #12
	cmp	r0, #0
	beq	.L826
	ldr	r6, [r0, #28]
	cmp	r6, #0
	beq	.L826
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.L845
.L810:
	ldr	r3, [r6]
	cmp	r3, #31
	beq	.L846
	ldr	r3, [r6, #60]
	movs	r1, #31
	ldr	r2, [r6, #56]
	str	r1, [r6]
	and	r1, r3, #7
	bic	r3, r3, #7
	cmp	r3, #7
	str	r3, [r6, #60]
	lsl	r2, r2, r1
	str	r2, [r6, #56]
	bls	.L813
	sub	lr, r3, #8
	strb	r2, [sp]
	cmp	lr, #7
	lsr	r1, r2, #8
	bls	.L829
	sub	r0, r3, #16
	strb	r1, [sp, #1]
	cmp	r0, #7
	lsr	r1, r2, #16
	bls	.L829
	subs	r3, r3, #24
	lsrs	r2, r2, #24
	cmp	r3, #7
	strb	r1, [sp, #2]
	it	ls
	movls	r3, r2
	bls	.L814
	movs	r3, #0
	strb	r2, [sp, #3]
.L814:
	lsr	lr, lr, #3
	movs	r1, #0
	str	r3, [r6, #56]
	mov	r2, r1
	add	lr, lr, #1
	mov	r3, r1
	mov	r7, sp
	str	r1, [r6, #60]
	str	r1, [r6, #104]
	b	.L819
.L848:
	cmp	r2, #3
	ite	hi
	movhi	r4, #0
	movls	r4, #1
.L817:
	adds	r3, r3, #1
	cmp	r3, lr
	ite	cs
	movcs	r1, #0
	andcc	r1, r4, #1
	cbz	r1, .L818
.L819:
	ldrb	r1, [r7, r3]	@ zero_extendqisi2
	cmp	r2, #1
	ite	hi
	movhi	r0, #255
	movls	r0, #0
	cmp	r1, r0
	beq	.L847
	movs	r4, #1
	rsb	r2, r2, #4
	cmp	r1, #0
	beq	.L848
	movs	r2, #0
	b	.L817
.L847:
	adds	r2, r2, #1
	cmp	r2, #3
	ite	hi
	movhi	r4, #0
	movls	r4, #1
	b	.L817
.L813:
	movs	r4, #1
	movs	r2, #0
	str	r2, [r6, #104]
.L818:
	str	r2, [r6, #104]
	ldr	r0, [r5, #4]
.L812:
	cmp	r0, #0
	ite	eq
	moveq	lr, #0
	andne	lr, r4, #1
	ldr	r7, [r5]
	cmp	lr, #0
	beq	.L833
	movs	r3, #0
	b	.L824
.L850:
	cmp	r2, #3
	ite	hi
	movhi	r4, #0
	movls	r4, #1
.L823:
	adds	r3, r3, #1
	cmp	r3, r0
	ite	cs
	movcs	r4, #0
	andcc	r4, r4, #1
	cbz	r4, .L820
.L824:
	ldrb	r1, [r7, r3]	@ zero_extendqisi2
	cmp	r2, #1
	ite	hi
	movhi	r4, #255
	movls	r4, #0
	cmp	r1, r4
	beq	.L849
	mov	r4, lr
	rsb	r2, r2, #4
	cmp	r1, #0
	beq	.L850
	movs	r2, #0
	b	.L823
.L849:
	adds	r2, r2, #1
	cmp	r2, #3
	ite	hi
	movhi	r4, #0
	movls	r4, #1
	b	.L823
.L833:
	mov	r3, lr
.L820:
	str	r2, [r6, #104]
	cmp	r2, #4
	ldr	r1, [r5, #4]
	add	r7, r7, r3
	ldr	r4, [r5, #8]
	it	ne
	mvnne	r0, #2
	str	r7, [r5]
	sub	r1, r1, r3
	add	r4, r4, r3
	str	r1, [r5, #4]
	str	r4, [r5, #8]
	bne	.L843
	ldr	r7, [r5, #20]
	mov	r0, r5
	bl	inflateReset(PLT)
	movs	r0, #0
	movs	r3, #11
	str	r4, [r5, #8]
	str	r7, [r5, #20]
	str	r3, [r6]
.L843:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L845:
	ldr	r3, [r6, #60]
	cmp	r3, #7
	bhi	.L810
	mvn	r0, #4
	b	.L843
.L829:
	mov	r3, r1
	b	.L814
.L846:
	ldr	r2, [r6, #104]
	cmp	r2, #3
	ite	hi
	movhi	r4, #0
	movls	r4, #1
	b	.L812
.L826:
	mvn	r0, #1
	b	.L843
	.size	inflateSync, .-inflateSync
	.section	.text.inflateSyncPoint,"ax",%progbits
	.align	2
	.global	inflateSyncPoint
	.thumb
	.thumb_func
	.type	inflateSyncPoint, %function
inflateSyncPoint:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L854
	ldr	r3, [r0, #28]
	cbz	r3, .L854
	ldr	r2, [r3]
	cmp	r2, #13
	beq	.L856
	movs	r0, #0
	bx	lr
.L856:
	ldr	r0, [r3, #60]
	clz	r0, r0
	lsrs	r0, r0, #5
	bx	lr
.L854:
	mvn	r0, #1
	bx	lr
	.size	inflateSyncPoint, .-inflateSyncPoint
	.section	.text.inflateCopy,"ax",%progbits
	.align	2
	.global	inflateCopy
	.thumb
	.thumb_func
	.type	inflateCopy, %function
inflateCopy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	mov	r4, r1
	beq	.L868
	ldr	r5, [r1, #28]
	cmp	r5, #0
	beq	.L868
	ldr	r3, [r1, #32]
	cmp	r3, #0
	beq	.L868
	ldr	r2, [r1, #36]
	cmp	r2, #0
	beq	.L868
	ldr	r0, [r1, #40]
	movw	r2, #7116
	movs	r1, #1
	blx	r3
	mov	r6, r0
	cmp	r0, #0
	beq	.L869
	ldr	r7, [r5, #52]
	cbz	r7, .L859
	ldr	r1, [r5, #36]
	movs	r7, #1
	mov	r2, r7
	ldr	r3, [r4, #32]
	ldr	r0, [r4, #40]
	lsl	r1, r7, r1
	blx	r3
	mov	r7, r0
	cmp	r0, #0
	beq	.L876
.L859:
	mov	r3, r4
	mov	r4, r8
	add	r2, r3, #48
.L860:
	ldr	ip, [r3]	@ unaligned
	adds	r3, r3, #16
	ldr	lr, [r3, #-12]	@ unaligned
	adds	r4, r4, #16
	ldr	r0, [r3, #-8]	@ unaligned
	ldr	r1, [r3, #-4]	@ unaligned
	cmp	r3, r2
	str	ip, [r4, #-16]	@ unaligned
	str	lr, [r4, #-12]	@ unaligned
	str	r0, [r4, #-8]	@ unaligned
	str	r1, [r4, #-4]	@ unaligned
	bne	.L860
	ldr	lr, [r3]	@ unaligned
	mov	r1, r5
	ldr	r3, [r3, #4]	@ unaligned
	mov	r0, r6
	movw	r2, #7116
	str	lr, [r4]	@ unaligned
	str	r3, [r4, #4]	@ unaligned
	bl	memcpy(PLT)
	ldr	r1, [r5, #76]
	add	r3, r5, #1328
	cmp	r1, r3
	bcs	.L877
.L862:
	ldr	r2, [r5, #108]
	subs	r3, r2, r3
	bic	r3, r3, #3
	add	r3, r3, #1328
	add	r3, r3, r6
	str	r3, [r6, #108]
	cbz	r7, .L864
	ldr	r3, [r5, #36]
	movs	r2, #1
	ldr	r1, [r5, #52]
	mov	r0, r7
	lsls	r2, r2, r3
	bl	memcpy(PLT)
.L864:
	str	r7, [r6, #52]
	movs	r0, #0
	str	r6, [r8, #28]
	pop	{r4, r5, r6, r7, r8, pc}
.L877:
	add	r2, r5, #7072
	adds	r2, r2, #28
	cmp	r1, r2
	bhi	.L862
	ldr	r2, [r5, #80]
	subs	r1, r1, r3
	bic	r1, r1, #3
	add	r1, r1, #1328
	subs	r2, r2, r3
	add	r1, r1, r6
	bic	r2, r2, #3
	str	r1, [r6, #76]
	add	r2, r2, #1328
	add	r2, r2, r6
	str	r2, [r6, #80]
	b	.L862
.L868:
	mvn	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L869:
	mvn	r0, #3
	pop	{r4, r5, r6, r7, r8, pc}
.L876:
	ldr	r0, [r4, #40]
	mov	r1, r6
	ldr	r3, [r4, #36]
	blx	r3
	mvn	r0, #3
	pop	{r4, r5, r6, r7, r8, pc}
	.size	inflateCopy, .-inflateCopy
	.section	.text.inflateUndermine,"ax",%progbits
	.align	2
	.global	inflateUndermine
	.thumb
	.thumb_func
	.type	inflateUndermine, %function
inflateUndermine:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L881
	ldr	r3, [r0, #28]
	cbz	r3, .L881
	add	r3, r3, #7104
	movs	r2, #1
	str	r2, [r3]
	mvn	r0, #2
	bx	lr
.L881:
	mvn	r0, #1
	bx	lr
	.size	inflateUndermine, .-inflateUndermine
	.section	.text.inflateMark,"ax",%progbits
	.align	2
	.global	inflateMark
	.thumb
	.thumb_func
	.type	inflateMark, %function
inflateMark:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L887
	ldr	r3, [r0, #28]
	cbz	r3, .L887
	add	r1, r3, #7104
	ldr	r2, [r3]
	ldr	r0, [r1, #4]
	cmp	r2, #15
	it	eq
	ldreq	r3, [r3, #64]
	lsl	r0, r0, #16
	beq	.L885
	cmp	r2, #24
	itett	eq
	ldreq	r2, [r1, #8]
	movne	r3, #0
	ldreq	r3, [r3, #64]
	subeq	r3, r2, r3
.L885:
	add	r0, r0, r3
	bx	lr
.L887:
	movs	r0, #0
	movt	r0, 65535
	bx	lr
	.size	inflateMark, .-inflateMark
	.section	.rodata.order.7033,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	order.7033, %object
	.size	order.7033, 38
order.7033:
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
	.ascii	"incorrect header check\000"
	.space	1
.LC1:
	.ascii	"unknown compression method\000"
	.space	1
.LC2:
	.ascii	"invalid window size\000"
.LC3:
	.ascii	"unknown header flags set\000"
	.space	3
.LC4:
	.ascii	"header crc mismatch\000"
.LC5:
	.ascii	"invalid block type\000"
	.space	1
.LC6:
	.ascii	"invalid stored block lengths\000"
	.space	3
.LC7:
	.ascii	"too many length or distance symbols\000"
.LC8:
	.ascii	"invalid code lengths set\000"
	.space	3
.LC9:
	.ascii	"invalid bit length repeat\000"
	.space	2
.LC10:
	.ascii	"invalid code -- missing end-of-block\000"
	.space	3
.LC11:
	.ascii	"invalid literal/lengths set\000"
.LC12:
	.ascii	"invalid distances set\000"
	.space	2
.LC13:
	.ascii	"invalid literal/length code\000"
.LC14:
	.ascii	"invalid distance code\000"
	.space	2
.LC15:
	.ascii	"invalid distance too far back\000"
	.space	2
.LC16:
	.ascii	"incorrect data check\000"
	.space	3
.LC17:
	.ascii	"incorrect length check\000"
	.section	.rodata.distfix.7005,"a",%progbits
	.align	2
.LANCHOR1 = . + 0
	.type	distfix.7005, %object
	.size	distfix.7005, 128
distfix.7005:
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
	.section	.rodata.lenfix.7004,"a",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	lenfix.7004, %object
	.size	lenfix.7004, 2048
lenfix.7004:
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
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
