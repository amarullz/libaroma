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
	.file	"scale.c"
	.global	__aeabi_idiv
	.section	.text.libaroma_draw_scale_nearest,"ax",%progbits
	.align	2
	.global	libaroma_draw_scale_nearest
	.thumb
	.thumb_func
	.type	libaroma_draw_scale_nearest, %function
libaroma_draw_scale_nearest:
	@ args = 24, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	mov	fp, r0
	str	r1, [sp, #28]
	str	r2, [sp, #16]
	str	r3, [sp, #40]
	cmp	r0, #0
	beq	.L44
.L2:
	ldr	r4, [sp, #28]
	cmp	r4, #0
	beq	.L29
	ldr	r5, [sp, #92]
	ldr	r6, [sp, #88]
	cmp	r6, #0
	it	gt
	cmpgt	r5, #0
	ite	le
	movle	r0, #1
	movgt	r0, #0
	ble	.L30
	ldr	r7, [sp, #108]
	ldr	lr, [sp, #104]
	cmp	lr, #0
	it	gt
	cmpgt	r7, #0
	ite	le
	movle	r2, #1
	movgt	r2, #0
	ble	.L3
	ldr	r3, [r4]
	ldr	r4, [sp, #96]
	cmp	r3, r4
	ble	.L30
	ldr	r5, [sp, #28]
	ldr	r6, [sp, #100]
	ldr	r1, [r5, #4]
	cmp	r1, r6
	it	le
	movle	r0, r2
	ble	.L3
	mov	r2, r4
	ldr	r7, [sp, #108]
	add	r2, r2, lr
	cmp	r3, r2
	itt	lt
	sublt	r3, r3, r4
	strlt	r3, [sp, #104]
	ldr	r3, [sp, #100]
	add	r3, r3, r7
	cmp	r1, r3
	ittt	lt
	ldrlt	r3, [sp, #100]
	sublt	r1, r1, r3
	strlt	r1, [sp, #104]
	ldr	r4, [sp, #104]
	ldr	r1, [sp, #88]
	lsls	r0, r4, #16
	bl	__aeabi_idiv(PLT)
	ldr	r5, [sp, #108]
	adds	r0, r0, #1
	str	r0, [sp, #8]
	ldr	r1, [sp, #92]
	lsls	r0, r5, #16
	bl	__aeabi_idiv(PLT)
	ldr	r6, [sp, #28]
	adds	r0, r0, #1
	str	r0, [sp, #44]
	ldr	r3, [r6, #20]
	cmp	r3, #0
	beq	.L45
	ldr	r5, [r6, #24]
	cmp	r5, #0
	beq	.L18
	ldr	r6, [sp, #28]
	movs	r7, #0
	mov	r0, r3
	mov	r3, r7
	str	r7, [sp, #36]
	str	r7, [sp, #32]
.L23:
	ldr	r4, [sp, #40]
	mov	r8, #0
	ldr	r7, [sp, #100]
	ldr	r1, [fp, #8]
	add	r3, r3, r4
	ldr	r4, [sp, #28]
	str	r3, [sp, #12]
	ldr	r3, [sp, #36]
	ldr	r2, [r6, #8]
	ldr	r6, [fp, #16]
	add	r9, r7, r3, asr #16
	ldr	r3, [r4, #16]
	ldr	r7, [sp, #12]
	ldr	r4, [sp, #16]
	mla	r1, r1, r7, r4
	ldr	r7, [sp, #96]
	mov	r4, r8
	mla	r2, r2, r9, r7
	str	r1, [sp, #4]
	add	r6, r6, r1, lsl #1
	add	r3, r3, r2, lsl #1
	add	r5, r5, r2
	adds	r6, r6, #2
	str	r5, [sp, #24]
	str	r3, [sp, #20]
	add	r9, r0, r2
	b	.L22
.L47:
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	ldrh	r1, [r6, #-2]
	bl	libaroma_alpha(PLT)
	mov	r1, r10
	ldrb	r2, [r9, r5]	@ zero_extendqisi2
	bl	libaroma_alpha(PLT)
	ldr	r2, [fp, #20]
	strh	r0, [r6, #-2]	@ movhi
	ldrb	r3, [r9, r5]	@ zero_extendqisi2
	ldrb	r1, [r2, r7]	@ zero_extendqisi2
	add	r3, r3, r1
	cmp	r3, #255
	it	ge
	movge	r3, #255
	strb	r3, [r2, r7]
.L20:
	ldr	r5, [sp, #88]
	adds	r4, r4, #1
	ldr	r3, [sp, #8]
	adds	r6, r6, #2
	cmp	r5, r4
	add	r8, r8, r3
	ble	.L46
.L22:
	ldr	r3, [sp, #24]
	asr	r5, r8, #16
	ldr	r0, [sp, #20]
	ldr	r7, [sp, #4]
	ldrb	lr, [r3, r5]	@ zero_extendqisi2
	ldrh	r3, [r0, r5, lsl #1]
	ldr	r0, [sp, #16]
	add	r7, r7, r4
	ubfx	r2, lr, #3, #2
	and	r1, lr, #7
	lsr	lr, lr, #5
	and	ip, r3, #63488
	add	r1, r1, r3, lsl #3
	and	r3, r3, #2016
	add	lr, lr, ip, lsr #8
	add	r3, r2, r3, lsr #3
	uxtb	r1, r1
	uxtb	lr, lr
	uxtb	r3, r3
	orr	r2, r1, #-16777216
	add	r0, r0, r4
	orr	r2, r2, lr, lsl #16
	ldr	r1, [sp, #12]
	orr	r2, r2, r3, lsl #8
	bl	libaroma_dither(PLT)
	ldr	r2, [fp, #20]
	mov	r10, r0
	cmp	r2, #0
	bne	.L47
	mov	r1, r0
	ldrb	r2, [r9, r5]	@ zero_extendqisi2
	ldrh	r0, [r6, #-2]
	bl	libaroma_alpha(PLT)
	strh	r0, [r6, #-2]	@ movhi
	b	.L20
.L7:
	ldr	r7, [sp, #8]
	mov	r8, r2
	ldr	r9, [sp, #88]
	mov	lr, #255
	mov	ip, r2
.L17:
	ldr	r5, [sp, #28]
	movs	r2, #0
	ldr	r3, [fp, #8]
	ldr	r6, [sp, #40]
	ldr	r0, [r5, #8]
	ldr	r5, [sp, #16]
	ldr	r4, [sp, #100]
	add	r6, r6, ip
	mla	r6, r3, r6, r5
	ldr	r3, [sp, #96]
	ldr	r5, [sp, #28]
	add	r10, r4, r8, asr #16
	ldr	r4, [fp, #16]
	mla	r10, r0, r10, r3
	ldr	r1, [r5, #16]
	add	r0, r4, r6, lsl #1
	mov	r3, r2
	add	r10, r1, r10, lsl #1
.L15:
	asrs	r4, r2, #16
	ldr	r1, [fp, #20]
	add	r2, r2, r7
	ldrh	r4, [r10, r4, lsl #1]
	adds	r5, r1, r6
	strh	r4, [r0], #2	@ movhi
	cbz	r1, .L13
	strb	lr, [r5, r3]
.L13:
	adds	r3, r3, #1
	cmp	r9, r3
	bgt	.L15
	ldr	r5, [sp, #92]
	add	ip, ip, #1
	ldr	r4, [sp, #44]
	cmp	r5, ip
	add	r8, r8, r4
	bgt	.L17
.L16:
	movs	r0, #1
.L3:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L30:
	movs	r0, #0
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L46:
	ldr	r6, [sp, #32]
	ldr	r4, [sp, #92]
	ldr	r7, [sp, #36]
	ldr	r3, [sp, #44]
	adds	r6, r6, #1
	cmp	r4, r6
	str	r6, [sp, #32]
	add	r7, r7, r3
	str	r7, [sp, #36]
	ble	.L16
	ldr	r6, [sp, #28]
	ldr	r3, [sp, #32]
	ldr	r5, [r6, #24]
	ldr	r0, [r6, #20]
	b	.L23
.L29:
	mov	r0, r4
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L44:
	bl	libaroma_fb(PLT)
	ldr	fp, [r0, #52]
	b	.L2
.L45:
	ldr	r2, [r6, #24]
	cmp	r2, #0
	beq	.L7
	ldr	r5, [sp, #28]
	mov	r8, r3
	mov	r4, r3
	str	r3, [sp, #12]
.L12:
	ldr	r7, [sp, #100]
	ldr	r3, [fp, #8]
	ldr	lr, [sp, #16]
	ldr	r1, [r5, #8]
	movs	r5, #0
	add	r0, r7, r4, asr #16
	ldr	r4, [sp, #40]
	ldr	r6, [fp, #16]
	add	r4, r4, r8
	mla	r7, r3, r4, lr
	ldr	r4, [sp, #28]
	ldr	r3, [r4, #16]
	ldr	r4, [sp, #96]
	add	r6, r6, r7, lsl #1
	mla	r1, r1, r0, r4
	mov	r4, r5
	add	r9, r3, r1, lsl #1
	add	r2, r2, r1
	str	r2, [sp, #4]
.L10:
	ldr	r1, [sp, #4]
	asrs	r3, r5, #16
	ldr	lr, [sp, #8]
	mov	r0, r4
	ldrb	ip, [r1, r3]	@ zero_extendqisi2
	mov	r1, r8
	ldrh	r3, [r9, r3, lsl #1]
	add	r5, r5, lr
	and	r2, ip, #7
	ubfx	lr, ip, #3, #2
	lsr	ip, ip, #5
	and	r10, r3, #63488
	add	r2, r2, r3, lsl #3
	and	r3, r3, #2016
	add	ip, ip, r10, lsr #8
	add	r3, lr, r3, lsr #3
	uxtb	r2, r2
	uxtb	ip, ip
	uxtb	r3, r3
	orr	r2, r2, #-16777216
	orr	r2, r2, ip, lsl #16
	orr	r2, r2, r3, lsl #8
	bl	libaroma_dither(PLT)
	ldr	r3, [fp, #20]
	strh	r0, [r6], #2	@ movhi
	adds	r2, r3, r7
	cbz	r3, .L8
	mov	r3, #-1
	strb	r3, [r2, r4]
.L8:
	ldr	r3, [sp, #88]
	adds	r4, r4, #1
	cmp	r3, r4
	bgt	.L10
	ldr	r6, [sp, #92]
	add	r8, r8, #1
	ldr	r4, [sp, #12]
	ldr	r5, [sp, #44]
	cmp	r6, r8
	add	r4, r4, r5
	str	r4, [sp, #12]
	ble	.L16
	ldr	r7, [sp, #28]
	ldr	r4, [sp, #12]
	ldr	r2, [r7, #24]
	mov	r5, r7
	b	.L12
.L18:
	str	r5, [sp, #20]
	mov	r0, r3
	str	r5, [sp, #12]
	mov	r3, r5
	ldr	r5, [sp, #28]
.L28:
	ldr	r7, [sp, #40]
	mov	r10, #0
	ldr	r6, [sp, #100]
	ldr	r2, [fp, #8]
	add	r3, r3, r7
	ldr	r7, [sp, #20]
	ldr	r4, [r5, #8]
	ldr	r5, [fp, #16]
	add	r1, r6, r7, asr #16
	ldr	r6, [sp, #16]
	ldr	r7, [sp, #28]
	mla	r2, r2, r3, r6
	ldr	r3, [sp, #96]
	mov	r6, r10
	str	r2, [sp, #4]
	mla	r1, r4, r1, r3
	ldr	r4, [sp, #4]
	ldr	r2, [r7, #16]
	mov	r3, fp
	mov	fp, r10
	mov	r10, r3
	add	r8, r0, r1
	add	r5, r5, r4, lsl #1
	add	r9, r2, r1, lsl #1
	adds	r5, r5, #2
	b	.L27
.L49:
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	ldrh	r1, [r5, #-2]
	ldrh	r0, [r9, r4, lsl #1]
	bl	libaroma_alpha(PLT)
	ldrh	r1, [r9, r4, lsl #1]
	ldrb	r2, [r8, r4]	@ zero_extendqisi2
	bl	libaroma_alpha(PLT)
	ldr	r1, [r10, #20]
	strh	r0, [r5, #-2]	@ movhi
	ldrb	r2, [r8, r4]	@ zero_extendqisi2
	ldrb	r0, [r1, r7]	@ zero_extendqisi2
	add	r2, r2, r0
	cmp	r2, #255
	it	ge
	movge	r2, #255
	strb	r2, [r1, r7]
.L25:
	ldr	r4, [sp, #88]
	adds	r6, r6, #1
	ldr	r3, [sp, #8]
	adds	r5, r5, #2
	cmp	r4, r6
	add	fp, fp, r3
	ble	.L48
.L27:
	ldr	r2, [r10, #20]
	asr	r4, fp, #16
	ldr	r7, [sp, #4]
	add	r7, r7, r6
	cmp	r2, #0
	bne	.L49
	ldrh	r0, [r5, #-2]
	ldrh	r1, [r9, r4, lsl #1]
	ldrb	r2, [r8, r4]	@ zero_extendqisi2
	bl	libaroma_alpha(PLT)
	strh	r0, [r5, #-2]	@ movhi
	b	.L25
.L48:
	ldr	r5, [sp, #12]
	mov	fp, r10
	ldr	r3, [sp, #92]
	ldr	r6, [sp, #20]
	ldr	r7, [sp, #44]
	adds	r5, r5, #1
	cmp	r3, r5
	str	r5, [sp, #12]
	add	r6, r6, r7
	str	r6, [sp, #20]
	ble	.L16
	ldr	r4, [sp, #28]
	ldr	r3, [sp, #12]
	ldr	r0, [r4, #20]
	mov	r5, r4
	b	.L28
	.size	libaroma_draw_scale_nearest, .-libaroma_draw_scale_nearest
	.section	.text.libaroma_draw_scale_smooth,"ax",%progbits
	.align	2
	.global	libaroma_draw_scale_smooth
	.thumb
	.thumb_func
	.type	libaroma_draw_scale_smooth, %function
libaroma_draw_scale_smooth:
	@ args = 24, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #156
	ldr	r4, [sp, #192]
	mov	r9, r0
	mov	r10, r1
	ldr	r5, [sp, #196]
	ldr	r6, [sp, #200]
	ldr	r7, [sp, #204]
	str	r4, [sp, #88]
	str	r5, [sp, #124]
	str	r2, [sp, #140]
	str	r3, [sp, #136]
	str	r6, [sp, #128]
	str	r7, [sp, #132]
	ldr	r4, [sp, #208]
	ldr	r5, [sp, #212]
	cmp	r0, #0
	beq	.L77
.L51:
	cmp	r10, #0
	beq	.L71
	ldr	r6, [sp, #124]
	ldr	r7, [sp, #88]
	cmp	r7, #0
	it	gt
	cmpgt	r6, #0
	ite	le
	movle	r0, #1
	movgt	r0, #0
	ble	.L71
	cmp	r4, #0
	it	gt
	cmpgt	r5, #0
	ite	le
	movle	r2, #1
	movgt	r2, #0
	ble	.L52
	ldr	r3, [r10]
	ldr	r6, [sp, #128]
	cmp	r3, r6
	ble	.L74
	ldr	r1, [r10, #4]
	ldr	r7, [sp, #132]
	cmp	r1, r7
	ble	.L74
	mov	r2, r6
	ldr	r7, [sp, #124]
	add	r2, r2, r4
	ldr	r0, [sp, #88]
	cmp	r3, r2
	itt	le
	suble	r3, r3, r2
	addle	r4, r4, r3
	ldr	r3, [sp, #132]
	add	r3, r3, r5
	cmp	r1, r3
	itt	le
	suble	r3, r1, r3
	addle	r5, r5, r3
	cmp	r0, #1
	it	gt
	cmpgt	r7, #1
	ite	le
	movle	r6, #1
	movgt	r6, #0
	ble	.L78
	mov	r7, r0
	subs	r0, r4, #1
	subs	r1, r7, #1
	lsls	r0, r0, #16
	bl	__aeabi_idiv(PLT)
	ldr	r7, [sp, #124]
	str	r0, [sp, #108]
	subs	r0, r5, #1
	lsls	r0, r0, #16
	subs	r1, r7, #1
	bl	__aeabi_idiv(PLT)
	ldr	r3, [r9, #8]
	ldr	r2, [r9, #4]
	ldr	r7, [sp, #136]
	str	r0, [sp, #144]
	mul	r7, r3, r7
	mul	r3, r2, r3
	cmp	r3, r7
	bcc	.L58
	ldr	ip, [sp, #132]
	mov	r8, r9
	str	r6, [sp, #84]
	str	r6, [sp, #120]
	add	ip, ip, r5
	ldr	r6, [sp, #128]
	ldr	r5, [sp, #128]
	str	ip, [sp, #148]
	adds	r6, r6, #1
	str	r10, [sp, #68]
	add	r5, r5, r4
	str	r6, [sp, #112]
	str	r5, [sp, #116]
.L57:
	ldr	r4, [sp, #68]
	ldr	r5, [sp, #132]
	ldr	r6, [sp, #120]
	ldr	r2, [r4, #8]
	ldr	ip, [sp, #140]
	ldr	r1, [sp, #148]
	add	r3, r5, r6, lsr #16
	ubfx	r5, r6, #9, #7
	add	ip, ip, r7
	mul	r2, r2, r3
	adds	r0, r3, #1
	str	ip, [sp, #36]
	rsb	r7, r5, #128
	str	r2, [sp, #92]
	bl	libaroma_draw_limit(PLT)
	ldr	r2, [r8, #8]
	ldr	r1, [r8, #4]
	ldr	r3, [r4, #8]
	ldr	r4, [sp, #36]
	mul	r2, r1, r2
	mul	r3, r3, r0
	cmp	r2, r4
	str	r3, [sp, #96]
	blt	.L62
	movs	r6, #0
	ldr	r4, [sp, #128]
	str	r6, [sp, #40]
	mov	ip, r3
	ldr	r6, [sp, #92]
	mov	fp, r5
	mov	r9, r7
	str	r8, [sp, #32]
	mov	r5, r8
	add	r6, r6, r4
	movs	r4, #0
	str	r6, [sp, #100]
	str	r4, [sp, #44]
	ldr	r6, [sp, #128]
	ldr	r4, [sp, #36]
	add	ip, ip, r6
	adds	r4, r4, #1
	str	ip, [sp, #104]
	str	r4, [sp, #48]
	b	.L61
.L80:
	ldr	r6, [sp, #32]
	ldr	ip, [sp, #52]
	ldr	r2, [r6, #20]
	ldrb	r7, [r3, ip]	@ zero_extendqisi2
	ldr	r6, [sp, #56]
	ldr	ip, [sp, #60]
	ldrb	r5, [r3, r6]	@ zero_extendqisi2
	mul	r7, r9, r7
	ldrb	r6, [r3, ip]	@ zero_extendqisi2
	ldr	ip, [sp, #64]
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L66
	ldr	ip, [sp, #36]
	mla	r5, fp, r5, r7
	ldr	r7, [sp, #28]
	mul	r6, r9, r6
	ldr	lr, [sp, #76]
	ldrb	r2, [r2, ip]	@ zero_extendqisi2
	mov	r0, r4
	ldr	ip, [sp, #72]
	mul	r5, r7, r5
	ldrh	r1, [lr, ip]
	mla	r6, fp, r3, r6
	ldr	ip, [sp, #24]
	mla	r5, ip, r6, r5
	bl	libaroma_alpha(PLT)
	lsrs	r5, r5, #14
	mov	r1, r4
	uxtb	r5, r5
	mov	r2, r5
	bl	libaroma_alpha(PLT)
	ldr	r4, [sp, #32]
	ldr	ip, [sp, #36]
	ldr	r7, [sp, #76]
	ldr	r3, [r4, #20]
	ldr	r6, [sp, #72]
	strh	r0, [r7, r6]	@ movhi
	ldrb	r2, [r3, ip]	@ zero_extendqisi2
	add	r5, r5, r2
	cmp	r5, #255
	it	ge
	movge	r5, #255
	strb	r5, [r3, ip]
.L67:
	ldr	r7, [sp, #40]
	ldr	r5, [sp, #88]
	ldr	ip, [sp, #44]
	ldr	r4, [sp, #108]
	adds	r7, r7, #1
	cmp	r7, r5
	str	r7, [sp, #40]
	add	ip, ip, r4
	str	ip, [sp, #44]
	beq	.L79
	ldr	r5, [sp, #32]
	ldr	r6, [sp, #48]
	ldr	r1, [sp, #48]
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #4]
	adds	r1, r1, #1
	mul	r3, r2, r3
	cmp	r6, r3
	bgt	.L75
	ldr	r5, [sp, #32]
	str	r6, [sp, #36]
	str	r1, [sp, #48]
.L61:
	ldr	r7, [sp, #44]
	ldr	r0, [sp, #112]
	ldr	r5, [r5, #16]
	ubfx	r6, r7, #9, #7
	ldr	r1, [sp, #116]
	lsrs	r4, r7, #16
	ldr	r7, [sp, #100]
	str	r5, [sp, #76]
	add	r0, r0, r4
	str	r6, [sp, #24]
	add	r7, r7, r4
	str	r7, [sp, #52]
	bl	libaroma_draw_limit(PLT)
	ldr	r5, [sp, #104]
	ldr	r6, [sp, #92]
	ldr	r7, [sp, #96]
	add	r5, r5, r4
	ldr	r4, [sp, #36]
	ldr	ip, [sp, #68]
	add	r6, r6, r0
	add	r7, r7, r0
	str	r5, [sp, #56]
	str	r6, [sp, #60]
	lsls	r4, r4, #1
	ldr	r3, [ip, #16]
	str	r7, [sp, #64]
	ldr	r1, [ip, #24]
	ldr	ip, [sp, #24]
	str	r4, [sp, #72]
	ldr	r5, [sp, #52]
	ldr	r6, [sp, #56]
	rsb	ip, ip, #128
	ldr	r7, [sp, #60]
	ldr	r4, [sp, #64]
	str	ip, [sp, #28]
	ldrh	lr, [r3, r5, lsl #1]
	ldrh	ip, [r3, r6, lsl #1]
	ldrh	r2, [r3, r7, lsl #1]
	ldrh	r3, [r3, r4, lsl #1]
	cmp	r1, #0
	beq	.L63
	ldrb	r5, [r1, r5]	@ zero_extendqisi2
	and	r8, lr, #63488
	ldrb	r0, [r1, r6]	@ zero_extendqisi2
	ldr	r6, [sp, #64]
	and	r10, r5, #7
	ldrb	r4, [r1, r7]	@ zero_extendqisi2
	add	r10, r10, lr, lsl #3
	and	lr, lr, #2016
	ldrb	r1, [r1, r6]	@ zero_extendqisi2
	lsrs	r6, r5, #5
	ubfx	r5, r5, #3, #2
	lsrs	r7, r0, #5
	add	lr, r5, lr, lsr #3
	and	r5, r0, #7
	add	r5, r5, ip, lsl #3
	add	r8, r6, r8, lsr #8
	uxtb	lr, lr
	uxtb	r10, r10
	str	r5, [sp, #20]
	uxtb	r8, r8
	mul	lr, r9, lr
	and	r6, r4, #7
	add	r6, r6, r2, lsl #3
	ubfx	r0, r0, #3, #2
	mul	r8, r9, r8
	lsrs	r5, r4, #5
	uxtb	r6, r6
	ubfx	r4, r4, #3, #2
	str	lr, [sp, #16]
	mul	r10, r9, r10
	ldr	lr, [sp, #20]
	mul	r6, r9, r6
	uxtb	lr, lr
	str	r6, [sp, #12]
	str	lr, [sp, #80]
	and	lr, ip, #63488
	add	r7, r7, lr, lsr #8
	and	ip, ip, #2016
	add	ip, r0, ip, lsr #3
	lsrs	r0, r1, #5
	str	r7, [sp, #20]
	ldr	lr, [sp, #20]
	and	r7, r2, #63488
	and	r2, r2, #2016
	uxtb	ip, ip
	add	r4, r4, r2, lsr #3
	ldr	r2, [sp, #80]
	add	r5, r5, r7, lsr #8
	and	r7, r1, #7
	uxtb	r6, lr
	add	r7, r7, r3, lsl #3
	uxtb	r4, r4
	uxtb	r5, r5
	uxtb	r7, r7
	ubfx	r1, r1, #3, #2
	mul	r4, r9, r4
	mul	r5, r9, r5
	mla	r8, fp, r6, r8
	ldr	r6, [sp, #16]
	mla	r10, fp, r2, r10
	and	r2, r3, #63488
	mla	lr, fp, ip, r6
	ldr	ip, [sp, #28]
	and	r3, r3, #2016
	add	r0, r0, r2, lsr #8
	add	r1, r1, r3, lsr #3
	ldr	r3, [sp, #28]
	mul	lr, ip, lr
	uxtb	r2, r0
	ldr	r0, [sp, #40]
	mul	r8, ip, r8
	ldr	ip, [sp, #12]
	mul	r10, r3, r10
	uxtb	r3, r1
	ldr	r1, [sp, #84]
	mla	r6, fp, r7, ip
	mla	r3, fp, r3, r4
	ldr	r4, [sp, #24]
	mla	r2, fp, r2, r5
	mla	r6, r4, r6, r10
	mla	r3, r4, r3, lr
	ubfx	r6, r6, #14, #8
	mla	r2, r4, r2, r8
	str	r6, [sp]
	ubfx	r3, r3, #14, #8
	ubfx	r2, r2, #14, #8
	bl	libaroma_dither_rgb(PLT)
	mov	r4, r0
.L64:
	ldr	r5, [sp, #68]
	ldr	r3, [r5, #20]
	cmp	r3, #0
	bne	.L80
	ldr	r5, [sp, #32]
	ldr	r3, [r5, #20]
	cmp	r3, #0
	beq	.L68
	ldr	r7, [sp, #76]
	mov	r0, #-1
	ldr	r6, [sp, #72]
	strh	r4, [r7, r6]	@ movhi
	ldr	r4, [sp, #36]
	strb	r0, [r3, r4]
	b	.L67
.L75:
	mov	r8, r5
.L62:
	ldr	r5, [sp, #84]
	ldr	r4, [sp, #124]
	ldr	r6, [sp, #120]
	ldr	r7, [sp, #144]
	adds	r5, r5, #1
	cmp	r5, r4
	str	r5, [sp, #84]
	add	r6, r6, r7
	str	r6, [sp, #120]
	beq	.L58
	ldr	r3, [r8, #8]
	mov	r7, r5
	ldr	ip, [sp, #136]
	ldr	r2, [r8, #4]
	add	r7, r7, ip
	mul	r7, r7, r3
	mul	r3, r2, r3
	cmp	r7, r3
	bls	.L57
.L58:
	movs	r0, #1
.L52:
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L74:
	mov	r0, r2
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L71:
	movs	r0, #0
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L77:
	bl	libaroma_fb(PLT)
	ldr	r9, [r0, #52]
	b	.L51
.L63:
	lsl	r5, lr, #3
	lsls	r1, r2, #3
	lsl	r4, ip, #3
	and	r0, lr, #63488
	uxtb	r5, r5
	and	lr, lr, #2016
	uxtb	r1, r1
	asr	lr, lr, #3
	asrs	r0, r0, #8
	mul	r7, r9, r5
	uxtb	r5, r4
	and	r6, ip, #63488
	lsls	r4, r3, #3
	mul	r0, r9, r0
	asrs	r6, r6, #8
	and	ip, ip, #2016
	uxtb	r4, r4
	mul	r8, r9, lr
	asr	lr, ip, #3
	mul	r10, r9, r1
	and	r1, r2, #63488
	and	r2, r2, #2016
	asrs	r1, r1, #8
	asrs	r2, r2, #3
	mul	r1, r9, r1
	mul	ip, r9, r2
	and	r2, r3, #63488
	and	r3, r3, #2016
	asrs	r2, r2, #8
	asrs	r3, r3, #3
	mla	r5, fp, r5, r7
	ldr	r7, [sp, #28]
	mla	r6, fp, r6, r0
	ldr	r0, [sp, #40]
	mul	r5, r7, r5
	mul	r6, r7, r6
	mla	lr, fp, lr, r8
	mla	r3, fp, r3, ip
	ldr	ip, [sp, #24]
	mul	lr, r7, lr
	mla	r4, fp, r4, r10
	mla	r2, fp, r2, r1
	ldr	r1, [sp, #84]
	mla	r4, ip, r4, r5
	mla	r2, ip, r2, r6
	ubfx	r4, r4, #14, #8
	mla	r3, ip, r3, lr
	str	r4, [sp]
	ubfx	r2, r2, #14, #8
	ubfx	r3, r3, #14, #8
	bl	libaroma_dither_rgb(PLT)
	mov	r4, r0
	b	.L64
.L66:
	ldr	ip, [sp, #76]
	mov	r1, r4
	ldr	r4, [sp, #72]
	mla	r5, fp, r5, r7
	ldr	r7, [sp, #24]
	mul	r6, r9, r6
	ldrh	r0, [ip, r4]
	ldr	r4, [sp, #28]
	mla	r6, fp, r3, r6
	mul	r5, r4, r5
	mla	r2, r7, r6, r5
	ubfx	r2, r2, #14, #8
	bl	libaroma_alpha32(PLT)
	ldr	r1, [sp, #40]
	mov	r2, r0
	ldr	r0, [sp, #84]
	bl	libaroma_dither(PLT)
	ldr	r4, [sp, #76]
	ldr	ip, [sp, #72]
	strh	r0, [r4, ip]	@ movhi
	b	.L67
.L79:
	ldr	r8, [sp, #32]
	b	.L62
.L68:
	ldr	r6, [sp, #76]
	ldr	r5, [sp, #72]
	strh	r4, [r6, r5]	@ movhi
	b	.L67
.L78:
	str	r7, [sp, #196]
	mov	r1, r10
	ldr	r6, [sp, #128]
	ldr	r7, [sp, #132]
	str	r0, [sp, #192]
	mov	r0, r9
	str	r6, [sp, #200]
	ldr	r2, [sp, #140]
	str	r7, [sp, #204]
	ldr	r3, [sp, #136]
	str	r4, [sp, #208]
	str	r5, [sp, #212]
	add	sp, sp, #156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	libaroma_draw_scale_nearest(PLT)
	.size	libaroma_draw_scale_smooth, .-libaroma_draw_scale_smooth
	.section	.text.libaroma_draw_scale,"ax",%progbits
	.align	2
	.global	libaroma_draw_scale
	.thumb
	.thumb_func
	.type	libaroma_draw_scale, %function
libaroma_draw_scale:
	@ args = 28, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldrb	r8, [sp, #48]	@ zero_extendqisi2
	ldr	ip, [sp, #24]
	ldr	lr, [sp, #28]
	ldr	r7, [sp, #32]
	ldr	r6, [sp, #36]
	ldr	r5, [sp, #40]
	ldr	r4, [sp, #44]
	cmp	r8, #0
	bne	.L84
	str	ip, [sp, #24]
	str	lr, [sp, #28]
	str	r7, [sp, #32]
	str	r6, [sp, #36]
	str	r5, [sp, #40]
	str	r4, [sp, #44]
	pop	{r4, r5, r6, r7, r8, lr}
	b	libaroma_draw_scale_nearest(PLT)
.L84:
	pop	{r4, r5, r6, r7, r8, lr}
	b	libaroma_draw_scale_smooth(PLT)
	.size	libaroma_draw_scale, .-libaroma_draw_scale
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
