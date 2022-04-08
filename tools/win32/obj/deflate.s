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
	.file	"deflate.c"
	.section	.text.longest_match,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	longest_match, %function
longest_match:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #44]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
	ldr	r6, [r0, #108]
	sub	sp, sp, #36
	sub	r7, r2, #262
	ldr	r5, [r0, #56]
	cmp	r6, r7
	ldr	r0, [r0, #120]
	it	hi
	addhi	ip, r6, #262
	ldr	r4, [fp, #144]
	add	r10, r5, r6
	it	hi
	rsbhi	ip, r2, ip
	add	r6, r6, #258
	ldr	r2, [fp, #140]
	add	r6, r5, r6
	it	ls
	movls	ip, #0
	str	r6, [sp, #20]
	add	r7, r10, r0
	cmp	r0, r2
	ldr	r2, [sp, #20]
	str	r4, [sp, #8]
	mov	r4, r0
	ldr	r3, [fp, #124]
	sub	r2, r2, #258
	ldrb	r6, [r10, r0]	@ zero_extendqisi2
	str	r2, [sp, #24]
	ldr	r0, [fp, #116]
	ldr	r2, [sp, #8]
	it	cs
	lsrcs	r3, r3, #2
	ldrb	r9, [r7, #-1]	@ zero_extendqisi2
	ldr	lr, [fp, #52]
	ldr	r7, [fp, #64]
	cmp	r2, r0
	it	cs
	movcs	r2, r0
	str	r0, [sp, #12]
	str	r2, [sp, #8]
	str	r10, [sp, #16]
	str	fp, [sp, #28]
.L17:
	adds	r2, r5, r1
	ldrb	r0, [r2, r4]	@ zero_extendqisi2
	cmp	r0, r6
	beq	.L33
.L31:
	mov	r0, r4
.L5:
	and	r1, r1, lr
	ldrh	r1, [r7, r1, lsl #1]
	cmp	ip, r1
	bcs	.L16
	subs	r3, r3, #1
	bne	.L17
.L16:
	ldr	r2, [sp, #12]
	cmp	r0, r2
	it	cs
	movcs	r0, r2
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L33:
	add	r8, r2, r4
	ldrb	r8, [r8, #-1]	@ zero_extendqisi2
	cmp	r8, r9
	bne	.L31
	ldrb	r10, [r2]	@ zero_extendqisi2
	ldr	fp, [sp, #16]
	str	r10, [sp, #4]
	ldrb	r10, [fp]	@ zero_extendqisi2
	ldr	fp, [sp, #4]
	cmp	fp, r10
	bne	.L31
	ldrb	r10, [r2, #1]	@ zero_extendqisi2
	ldr	fp, [sp, #16]
	str	r10, [sp, #4]
	ldrb	r10, [fp, #1]	@ zero_extendqisi2
	ldr	fp, [sp, #4]
	cmp	fp, r10
	bne	.L31
	ldr	r6, [sp, #16]
	adds	r2, r2, #2
	ldr	fp, [sp, #20]
	adds	r6, r6, #2
	b	.L14
.L6:
	ldrb	r10, [r6, #2]	@ zero_extendqisi2
	ldrb	r9, [r2, #2]	@ zero_extendqisi2
	cmp	r10, r9
	bne	.L34
	ldrb	r10, [r6, #3]	@ zero_extendqisi2
	ldrb	r9, [r2, #3]	@ zero_extendqisi2
	cmp	r10, r9
	bne	.L35
	ldrb	r10, [r6, #4]	@ zero_extendqisi2
	ldrb	r9, [r2, #4]	@ zero_extendqisi2
	cmp	r10, r9
	bne	.L36
	ldrb	r10, [r6, #5]	@ zero_extendqisi2
	ldrb	r9, [r2, #5]	@ zero_extendqisi2
	cmp	r10, r9
	bne	.L37
	ldrb	r10, [r6, #6]	@ zero_extendqisi2
	ldrb	r9, [r2, #6]	@ zero_extendqisi2
	cmp	r10, r9
	bne	.L38
	ldrb	r10, [r6, #7]	@ zero_extendqisi2
	ldrb	r9, [r2, #7]	@ zero_extendqisi2
	cmp	r10, r9
	bne	.L39
	ldrb	r9, [r2, #8]	@ zero_extendqisi2
	adds	r2, r2, #8
	ldrb	r10, [r6, #8]!	@ zero_extendqisi2
	cmp	r10, r9
	bne	.L7
	cmp	fp, r6
	bls	.L7
.L14:
	ldrb	r10, [r6, #1]	@ zero_extendqisi2
	ldrb	r9, [r2, #1]	@ zero_extendqisi2
	cmp	r10, r9
	beq	.L6
	adds	r6, r6, #1
.L7:
	ldr	r2, [sp, #20]
	subs	r6, r6, r2
	ldr	r2, [sp, #24]
	str	r2, [sp, #16]
	add	r2, r6, #258
	cmp	r4, r2
	bge	.L23
	ldr	r0, [sp, #8]
	ldr	r4, [sp, #28]
	cmp	r0, r2
	str	r1, [r4, #112]
	ble	.L40
	ldr	r0, [sp, #24]
	mov	r4, r2
	ldr	r8, [sp, #24]
	add	r0, r0, r2
	ldrb	r9, [r0, #-1]	@ zero_extendqisi2
	mov	r0, r2
	ldrb	r6, [r8, r2]	@ zero_extendqisi2
	b	.L5
.L23:
	mov	r6, r0
	mov	r9, r8
	b	.L31
.L39:
	adds	r6, r6, #7
	b	.L7
.L38:
	adds	r6, r6, #6
	b	.L7
.L37:
	adds	r6, r6, #5
	b	.L7
.L36:
	adds	r6, r6, #4
	b	.L7
.L35:
	adds	r6, r6, #3
	b	.L7
.L34:
	adds	r6, r6, #2
	b	.L7
.L40:
	mov	r0, r2
	b	.L16
	.size	longest_match, .-longest_match
	.section	.text.fill_window,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fill_window, %function
fill_window:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r3, r0, #5792
	ldr	r10, [r0, #44]
	sub	sp, sp, #44
	mov	r9, r0
	str	r3, [sp, #20]
	add	r3, r10, #-1
	ldr	lr, [r0, #116]
	str	r3, [sp, #36]
	lsl	r3, r10, #1
	mov	r2, r10
	str	r3, [sp, #32]
	sub	r3, r10, #262
	mov	r0, r3
	str	r3, [sp, #24]
.L64:
	ldr	r1, [r9, #108]
	add	r2, r2, r0
	ldr	r3, [r9, #60]
	cmp	r1, r2
	str	r1, [sp, #12]
	rsb	lr, lr, r3
	rsb	r3, r1, lr
	str	r3, [sp, #16]
	bcs	.L82
	ldr	r4, [r9]
	ldr	r5, [r4, #4]
	cmp	r5, #0
	beq	.L60
.L51:
	ldr	r0, [sp, #16]
	ldr	r3, [r9, #56]
	ldr	r2, [r9, #116]
	cmp	r0, r5
	bcs	.L68
	ldr	lr, [sp, #16]
	cmp	r0, #0
	bne	.L83
.L55:
	ldr	r1, [sp, #20]
	add	lr, lr, r2
	ldr	r3, [r1, #20]
	add	fp, r1, #20
	str	lr, [r9, #116]
	add	r2, lr, r3
	cmp	r2, #2
	bls	.L62
	ldr	r2, [r9, #108]
	ldr	ip, [r9, #56]
	ldr	r8, [r9, #88]
	subs	r2, r2, r3
	ldr	r4, [r9, #84]
	ldrb	r0, [ip, r2]	@ zero_extendqisi2
	add	r1, ip, r2
	str	r10, [sp, #12]
	mov	r10, r4
	str	r0, [r9, #72]
	ldrb	r1, [r1, #1]	@ zero_extendqisi2
	lsl	r0, r0, r8
	eors	r1, r1, r0
	ands	r1, r1, r4
	str	r1, [r9, #72]
	b	.L61
.L63:
	ldrb	r4, [r0, #2]	@ zero_extendqisi2
	subs	r3, r3, #1
	ldr	r0, [r9, #68]
	add	r5, r3, lr
	ldr	r6, [r9, #52]
	cmp	r5, #2
	eor	r1, r1, r4
	ldr	r4, [r9, #64]
	and	r1, r1, r10
	ldrh	r7, [r0, r1, lsl #1]
	and	r6, r6, r2
	str	r1, [r9, #72]
	strh	r7, [r4, r6, lsl #1]	@ movhi
	strh	r2, [r0, r1, lsl #1]	@ movhi
	add	r2, r2, #1
	str	r3, [fp]
	bls	.L79
.L61:
	add	r0, ip, r2
	lsl	r1, r1, r8
	cmp	r3, #0
	bne	.L63
.L79:
	ldr	r10, [sp, #12]
.L62:
	cmp	lr, #262
	bcs	.L60
	ldr	r3, [r9]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L60
	ldr	r2, [r9, #44]
	ldr	r0, [sp, #24]
	b	.L64
.L68:
	movs	r1, #0
.L54:
	ldr	r0, [sp, #12]
	str	r1, [r4, #4]
	ldr	r1, [r4]
	add	r2, r2, r0
	add	r3, r3, r2
	mov	r2, r5
	mov	r0, r3
	bl	memcpy(PLT)
	ldr	r2, [r4, #28]
	ldr	r6, [r2, #24]
	cmp	r6, #1
	beq	.L84
	cmp	r6, #2
	beq	.L85
.L57:
	ldr	r1, [r4]
	mov	lr, r5
	ldr	r3, [r4, #8]
	ldr	r2, [r9, #116]
	add	r1, r1, r5
	add	r5, r5, r3
	str	r1, [r4]
	str	r5, [r4, #8]
	b	.L55
.L82:
	ldr	r0, [r9, #56]
	mov	r2, r10
	add	r1, r0, r10
	bl	memcpy(PLT)
	ldr	r3, [r9, #108]
	ldr	r2, [r9, #112]
	ldr	r4, [r9, #76]
	rsb	r3, r10, r3
	ldr	r0, [r9, #92]
	rsb	r2, r10, r2
	str	r3, [sp, #12]
	ldr	r1, [r9, #68]
	subs	r3, r4, #1
	str	r2, [r9, #112]
	cmp	r3, #15
	ldr	r2, [sp, #12]
	rsb	r0, r10, r0
	str	r0, [r9, #92]
	add	r1, r1, r4, lsl #1
	str	r2, [r9, #108]
	bls	.L66
	sub	r3, r1, #52
	mov	r2, r4
	str	r9, [sp, #28]
.L44:
	ldrh	r4, [r3, #44]
	sub	r0, r2, #17
	ldrh	r1, [r3, #42]
	subs	r2, r2, #16
	str	r0, [sp, #8]
	rsb	fp, r10, r4
	ldrh	r0, [r3, #40]
	uxth	fp, fp
	ldrh	r9, [r3, #38]
	ldrh	r7, [r3, #50]
	cmp	r10, r4
	ite	ls
	movls	r4, fp
	movhi	r4, #0
	rsb	fp, r10, r1
	uxth	fp, fp
	ldrh	r8, [r3, #36]
	rsb	lr, r10, r7
	ldrh	r6, [r3, #48]
	cmp	r10, r1
	ite	ls
	movls	r1, fp
	movhi	r1, #0
	rsb	fp, r10, r0
	uxth	fp, fp
	uxth	lr, lr
	ldrh	ip, [r3, #34]
	cmp	r10, r0
	ite	ls
	movls	r0, fp
	movhi	r0, #0
	rsb	fp, r10, r9
	uxth	fp, fp
	cmp	r10, r7
	ite	ls
	movls	r7, lr
	movhi	r7, #0
	strh	r7, [r3, #50]	@ movhi
	rsb	r7, r10, r6
	cmp	r10, r9
	ite	ls
	movls	r9, fp
	movhi	r9, #0
	ldrh	r5, [r3, #46]
	strh	r9, [r3, #38]	@ movhi
	rsb	r9, r10, r8
	uxth	r9, r9
	uxth	r7, r7
	ldrh	lr, [r3, #32]
	cmp	r10, r8
	ite	ls
	movls	r8, r9
	movhi	r8, #0
	cmp	r10, r6
	ite	ls
	movls	r6, r7
	movhi	r6, #0
	strh	r8, [r3, #36]	@ movhi
	rsb	r8, r10, ip
	uxth	r8, r8
	strh	r6, [r3, #48]	@ movhi
	rsb	r6, r10, r5
	ldrh	r7, [r3, #30]
	cmp	r10, ip
	ite	ls
	movls	ip, r8
	movhi	ip, #0
	uxth	r6, r6
	strh	ip, [r3, #34]	@ movhi
	rsb	ip, r10, lr
	cmp	r10, r5
	ite	ls
	movls	r5, r6
	movhi	r5, #0
	uxth	ip, ip
	ldrh	r6, [r3, #28]
	cmp	r10, lr
	ite	ls
	movls	lr, ip
	movhi	lr, #0
	rsb	ip, r10, r7
	strh	r5, [r3, #46]	@ movhi
	uxth	ip, ip
	ldrh	r5, [r3, #26]
	strh	lr, [r3, #32]	@ movhi
	rsb	lr, r10, r6
	strh	r4, [r3, #44]	@ movhi
	uxth	lr, lr
	ldrh	r4, [r3, #24]
	cmp	r10, r7
	ite	ls
	movls	r7, ip
	movhi	r7, #0
	cmp	r10, r6
	ite	ls
	movls	r6, lr
	movhi	r6, #0
	strh	r7, [r3, #30]	@ movhi
	rsb	r7, r10, r5
	strh	r1, [r3, #42]	@ movhi
	strh	r0, [r3, #40]	@ movhi
	uxth	r7, r7
	ldrh	r1, [r3, #22]
	ldrh	r0, [r3, #20]
	cmp	r10, r5
	ite	ls
	movls	r5, r7
	movhi	r5, #0
	strh	r6, [r3, #28]	@ movhi
	rsb	r6, r10, r4
	uxth	r6, r6
	strh	r5, [r3, #26]	@ movhi
	rsb	r5, r10, r0
	pld	[r3]
	cmp	r10, r4
	ite	ls
	movls	r4, r6
	movhi	r4, #0
	rsb	r6, r10, r1
	strh	r4, [r3, #24]	@ movhi
	uxth	r6, r6
	uxth	r4, r5
	str	r2, [sp, #4]
	cmp	r10, r1
	ite	ls
	movls	r1, r6
	movhi	r1, #0
	cmp	r10, r0
	ite	ls
	movls	r0, r4
	movhi	r0, #0
	strh	r1, [r3, #22]	@ movhi
	strh	r0, [r3, #20]	@ movhi
	add	r1, r3, #20
	ldr	r0, [sp, #8]
	subs	r3, r3, #32
	cmp	r0, #15
	bhi	.L44
	ldr	r9, [sp, #28]
	ldr	r3, [sp, #4]
.L46:
	ldrh	r2, [r1, #-2]
	rsb	r0, r10, r2
	uxth	r0, r0
	cmp	r10, r2
	ite	ls
	movls	r2, r0
	movhi	r2, #0
	subs	r3, r3, #1
	strh	r2, [r1, #-2]!	@ movhi
	bne	.L46
	ldr	r3, [sp, #32]
	ldr	r1, [r9, #64]
	add	r1, r1, r3
	ldr	r3, [sp, #36]
	cmp	r3, #15
	bls	.L67
	sub	r3, r1, #52
	mov	r2, r10
	str	r9, [sp, #28]
.L48:
	ldrh	r4, [r3, #44]
	sub	r0, r2, #17
	ldrh	r1, [r3, #42]
	subs	r2, r2, #16
	str	r0, [sp, #8]
	rsb	fp, r10, r4
	ldrh	r0, [r3, #40]
	uxth	fp, fp
	ldrh	r9, [r3, #38]
	ldrh	r7, [r3, #50]
	cmp	r10, r4
	ite	ls
	movls	r4, fp
	movhi	r4, #0
	rsb	fp, r10, r1
	uxth	fp, fp
	ldrh	r8, [r3, #36]
	rsb	lr, r10, r7
	ldrh	r6, [r3, #48]
	cmp	r10, r1
	ite	ls
	movls	r1, fp
	movhi	r1, #0
	rsb	fp, r10, r0
	uxth	fp, fp
	uxth	lr, lr
	ldrh	ip, [r3, #34]
	cmp	r10, r0
	ite	ls
	movls	r0, fp
	movhi	r0, #0
	rsb	fp, r10, r9
	uxth	fp, fp
	cmp	r10, r7
	ite	ls
	movls	r7, lr
	movhi	r7, #0
	strh	r7, [r3, #50]	@ movhi
	rsb	r7, r10, r6
	cmp	r10, r9
	ite	ls
	movls	r9, fp
	movhi	r9, #0
	ldrh	r5, [r3, #46]
	strh	r9, [r3, #38]	@ movhi
	rsb	r9, r10, r8
	uxth	r9, r9
	uxth	r7, r7
	ldrh	lr, [r3, #32]
	cmp	r10, r8
	ite	ls
	movls	r8, r9
	movhi	r8, #0
	cmp	r10, r6
	ite	ls
	movls	r6, r7
	movhi	r6, #0
	strh	r8, [r3, #36]	@ movhi
	rsb	r8, r10, ip
	uxth	r8, r8
	strh	r6, [r3, #48]	@ movhi
	rsb	r6, r10, r5
	ldrh	r7, [r3, #30]
	cmp	r10, ip
	ite	ls
	movls	ip, r8
	movhi	ip, #0
	uxth	r6, r6
	strh	ip, [r3, #34]	@ movhi
	rsb	ip, r10, lr
	cmp	r10, r5
	ite	ls
	movls	r5, r6
	movhi	r5, #0
	uxth	ip, ip
	ldrh	r6, [r3, #28]
	cmp	r10, lr
	ite	ls
	movls	lr, ip
	movhi	lr, #0
	rsb	ip, r10, r7
	strh	r5, [r3, #46]	@ movhi
	uxth	ip, ip
	ldrh	r5, [r3, #26]
	strh	lr, [r3, #32]	@ movhi
	rsb	lr, r10, r6
	strh	r4, [r3, #44]	@ movhi
	uxth	lr, lr
	ldrh	r4, [r3, #24]
	cmp	r10, r7
	ite	ls
	movls	r7, ip
	movhi	r7, #0
	cmp	r10, r6
	ite	ls
	movls	r6, lr
	movhi	r6, #0
	strh	r7, [r3, #30]	@ movhi
	rsb	r7, r10, r5
	strh	r1, [r3, #42]	@ movhi
	strh	r0, [r3, #40]	@ movhi
	uxth	r7, r7
	ldrh	r1, [r3, #22]
	ldrh	r0, [r3, #20]
	cmp	r10, r5
	ite	ls
	movls	r5, r7
	movhi	r5, #0
	strh	r6, [r3, #28]	@ movhi
	rsb	r6, r10, r4
	uxth	r6, r6
	strh	r5, [r3, #26]	@ movhi
	rsb	r5, r10, r0
	pld	[r3]
	cmp	r10, r4
	ite	ls
	movls	r4, r6
	movhi	r4, #0
	rsb	r6, r10, r1
	strh	r4, [r3, #24]	@ movhi
	uxth	r6, r6
	uxth	r4, r5
	str	r2, [sp, #4]
	cmp	r10, r1
	ite	ls
	movls	r1, r6
	movhi	r1, #0
	cmp	r10, r0
	ite	ls
	movls	r0, r4
	movhi	r0, #0
	strh	r1, [r3, #22]	@ movhi
	strh	r0, [r3, #20]	@ movhi
	add	r1, r3, #20
	ldr	r0, [sp, #8]
	subs	r3, r3, #32
	cmp	r0, #15
	bhi	.L48
	ldr	r9, [sp, #28]
	ldr	r3, [sp, #4]
.L50:
	ldrh	r2, [r1, #-2]
	rsb	r0, r10, r2
	uxth	r0, r0
	cmp	r10, r2
	ite	ls
	movls	r2, r0
	movhi	r2, #0
	subs	r3, r3, #1
	strh	r2, [r1, #-2]!	@ movhi
	bne	.L50
	ldr	r4, [r9]
	ldr	r3, [sp, #16]
	ldr	r5, [r4, #4]
	add	r3, r3, r10
	str	r3, [sp, #16]
	cmp	r5, #0
	bne	.L51
.L60:
	add	r4, r9, #5824
	ldr	r1, [r9, #60]
	ldr	r3, [r4]
	cmp	r3, r1
	bcs	.L41
	ldr	r5, [r9, #116]
	ldr	r2, [r9, #108]
	add	r5, r5, r2
	cmp	r3, r5
	bcs	.L65
	subs	r6, r1, r5
	ldr	r0, [r9, #56]
	cmp	r6, #258
	mov	r1, #0
	it	cs
	movcs	r6, #258
	add	r0, r0, r5
	mov	r2, r6
	add	r5, r5, r6
	bl	memset(PLT)
	str	r5, [r4]
.L41:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L84:
	mov	r1, r0
	mov	r2, r5
	ldr	r0, [r4, #48]
	bl	adler32(PLT)
	str	r0, [r4, #48]
	b	.L57
.L85:
	mov	r1, r0
	mov	r2, r5
	ldr	r0, [r4, #48]
	bl	crc32(PLT)
	str	r0, [r4, #48]
	b	.L57
.L65:
	add	r2, r5, #258
	cmp	r3, r2
	bcs	.L41
	subs	r5, r5, r3
	subs	r1, r1, r3
	add	r5, r5, #258
	ldr	r0, [r9, #56]
	cmp	r5, r1
	it	cs
	movcs	r5, r1
	movs	r1, #0
	add	r0, r0, r3
	mov	r2, r5
	bl	memset(PLT)
	ldr	r3, [r4]
	add	r3, r3, r5
	str	r3, [r4]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L67:
	str	r10, [sp, #4]
	mov	r3, r10
	b	.L50
.L66:
	str	r4, [sp, #4]
	mov	r3, r4
	b	.L46
.L83:
	subs	r1, r5, r0
	mov	r5, r0
	b	.L54
	.size	fill_window, .-fill_window
	.section	.text.deflate_fast,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	deflate_fast, %function
deflate_fast:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r10, r0, #5760
	add	fp, r0, #5792
	mov	r3, r10
	mov	r8, r0
	mov	r10, fp
	ldr	r9, .L138
	mov	fp, r3
	sub	sp, sp, #36
	str	r1, [sp, #28]
.LPIC16:
	add	r9, pc
.L108:
	ldr	lr, [r8, #116]
	mov	r0, lr
.L102:
	cmp	r0, #262
	bcc	.L131
.L91:
	ldr	r0, [r8, #108]
	ldr	r1, [r8, #56]
	ldr	r2, [r8, #72]
	ldr	r3, [r8, #88]
	adds	r4, r1, r0
	ldr	r1, [r8, #84]
	ldrb	r6, [r4, #2]	@ zero_extendqisi2
	ldr	r5, [r8, #68]
	lsl	r4, r2, r3
	ldr	r2, [r8, #52]
	ldr	r3, [r8, #64]
	eors	r4, r4, r6
	ands	r4, r4, r1
	ands	r2, r2, r0
	ldrh	r1, [r5, r4, lsl #1]
	str	r4, [r8, #72]
	strh	r1, [r3, r2, lsl #1]	@ movhi
	strh	r0, [r5, r4, lsl #1]	@ movhi
	cbz	r1, .L93
	ldr	r3, [r8, #44]
	subs	r2, r0, r1
	sub	r3, r3, #262
	cmp	r2, r3
	bls	.L132
.L93:
	ldr	r3, [r8, #96]
.L92:
	cmp	r3, #2
	bls	.L94
	ldr	r1, [r8, #112]
	subs	r3, r3, #3
	ldr	r2, [r10]
	uxtb	r3, r3
	ldr	r6, [fp, #24]
	ldr	r4, [r10, #4]
	subs	r1, r0, r1
	ldr	r5, .L138+4
	uxth	r1, r1
	adds	r0, r2, #1
	strh	r1, [r4, r2, lsl #1]	@ movhi
	subs	r1, r1, #1
	str	r0, [r10]
	uxth	r1, r1
	strb	r3, [r6, r2]
	ldr	r2, [r9, r5]
	cmp	r1, #255
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	addw	r3, r3, #257
	add	r3, r8, r3, lsl #2
	ldrh	r2, [r3, #148]
	add	r2, r2, #1
	strh	r2, [r3, #148]	@ movhi
	ldr	r3, .L138+8
	ldr	r3, [r9, r3]
	itee	ls
	ldrbls	r3, [r3, r1]	@ zero_extendqisi2
	addhi	r1, r3, r1, lsr #7
	ldrbhi	r3, [r1, #256]	@ zero_extendqisi2
	add	r3, r8, r3, lsl #2
	ldrh	r2, [r3, #2440]
	adds	r2, r2, #1
	strh	r2, [r3, #2440]	@ movhi
	ldr	r3, [fp, #28]
	ldr	r7, [r8, #96]
	ldr	r0, [r8, #116]
	add	lr, r3, #-1
	ldr	r3, [r8, #128]
	ldr	r2, [r10]
	subs	r0, r0, r7
	cmp	r7, r3
	str	r0, [r8, #116]
	rsb	lr, lr, r2
	clz	lr, lr
	lsr	lr, lr, #5
	bhi	.L97
	cmp	r0, #2
	bls	.L97
	ldr	r2, [r8, #108]
	subs	r1, r7, #1
	ldr	r3, [r8, #52]
	ldr	r5, [r8, #56]
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	str	r5, [sp, #12]
	ldr	r3, [sp, #8]
	ldr	r5, [r8, #88]
	str	lr, [sp, #16]
	ldr	r2, [r8, #72]
	adds	r3, r3, #1
	ldr	r6, [r8, #64]
	ldr	r4, [r8, #68]
	ldr	ip, [r8, #84]
	ldr	lr, [sp, #12]
	str	r7, [sp, #20]
	ldr	r7, [sp, #4]
	str	r9, [sp, #4]
	mov	r9, r5
	str	r1, [r8, #96]
	str	r0, [sp, #24]
.L99:
	add	r0, lr, r3
	str	r3, [r8, #108]
	ldrb	r5, [r0, #2]	@ zero_extendqisi2
	lsl	r2, r2, r9
	subs	r1, r1, #1
	and	r0, r3, r7
	eors	r2, r2, r5
	and	r2, r2, ip
	ldrh	r5, [r4, r2, lsl #1]
	str	r2, [r8, #72]
	strh	r5, [r6, r0, lsl #1]	@ movhi
	strh	r3, [r4, r2, lsl #1]	@ movhi
	adds	r3, r3, #1
	str	r1, [r8, #96]
	cmp	r1, #0
	bne	.L99
	ldr	r7, [sp, #20]
	ldr	r2, [sp, #8]
	ldr	lr, [sp, #16]
	ldr	r0, [sp, #24]
	add	r7, r7, r2
	ldr	r9, [sp, #4]
	str	r7, [r8, #108]
	cmp	lr, #0
	beq	.L102
.L134:
	ldr	r2, [r8, #92]
	mov	r0, r8
	movs	r3, #0
	cmp	r2, #0
	itet	ge
	ldrge	r1, [r8, #56]
	movlt	r1, #0
	addge	r1, r1, r2
	subs	r2, r7, r2
	bl	_tr_flush_block(PLT)
	ldr	r6, [r8]
	ldr	r3, [r8, #108]
	ldr	r7, [r6, #28]
	str	r3, [r8, #92]
	mov	r0, r7
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r7, #20]
	ldr	r4, [r6, #16]
	cmp	r4, r3
	it	cs
	movcs	r4, r3
	cmp	r4, #0
	bne	.L133
.L105:
	ldr	r3, [r8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L108
.L107:
	movs	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L94:
	ldr	r1, [r8, #56]
	mov	r5, #0	@ movhi
	ldr	r3, [r10]
	ldr	r2, [r10, #4]
	ldrb	r1, [r1, r0]	@ zero_extendqisi2
	ldr	r0, [fp, #24]
	adds	r4, r3, #1
	strh	r5, [r2, r3, lsl #1]	@ movhi
	str	r4, [r10]
	add	r2, r8, r1, lsl #2
	strb	r1, [r0, r3]
	ldrh	r3, [r2, #148]
	adds	r3, r3, #1
	strh	r3, [r2, #148]	@ movhi
	ldr	r2, [fp, #28]
	ldr	r3, [r10]
	ldr	r0, [r8, #116]
	ldr	r7, [r8, #108]
	subs	r2, r2, #1
	rsb	lr, r2, r3
	clz	lr, lr
	lsr	lr, lr, #5
	subs	r0, r0, #1
	adds	r7, r7, #1
	str	r0, [r8, #116]
	str	r7, [r8, #108]
	cmp	lr, #0
	beq	.L102
	b	.L134
.L97:
	ldr	r3, [r8, #108]
	movs	r5, #0
	ldr	r1, [r8, #56]
	str	r5, [r8, #96]
	add	r7, r7, r3
	ldr	r2, [r8, #88]
	str	r7, [r8, #108]
	adds	r4, r1, r7
	ldrb	r1, [r1, r7]	@ zero_extendqisi2
	ldr	r3, [r8, #84]
	str	r1, [r8, #72]
	ldrb	r4, [r4, #1]	@ zero_extendqisi2
	lsl	r2, r1, r2
	eors	r2, r2, r4
	ands	r3, r3, r2
	str	r3, [r8, #72]
	cmp	lr, #0
	beq	.L102
	b	.L134
.L131:
	mov	r0, r8
	bl	fill_window(PLT)
	ldr	r3, [r8, #116]
	cmp	r3, #262
	bcs	.L91
	ldr	r5, [sp, #28]
	cmp	r5, #0
	beq	.L107
	cbz	r3, .L90
	cmp	r3, #2
	bhi	.L91
	ldr	r0, [r8, #108]
	b	.L93
.L132:
	mov	r0, r8
	bl	longest_match(PLT)
	mov	r3, r0
	ldr	r0, [r8, #108]
	str	r3, [r8, #96]
	b	.L92
.L133:
	mov	r2, r4
	ldr	r1, [r7, #16]
	ldr	r0, [r6, #12]
	bl	memcpy(PLT)
	ldr	r5, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [r6, #12]
	ldr	r3, [r6, #20]
	subs	r5, r5, r4
	ldr	r0, [r6, #16]
	add	r2, r2, r4
	add	r1, r1, r4
	add	r3, r3, r4
	str	r1, [r6, #12]
	subs	r4, r0, r4
	str	r2, [r7, #16]
	str	r3, [r6, #20]
	str	r4, [r6, #16]
	str	r5, [r7, #20]
	cmp	r5, #0
	bne	.L105
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	b	.L105
.L90:
	ldr	r2, [r8, #108]
	movs	r0, #2
	ldr	r5, [sp, #28]
	add	r1, r8, #5792
	cmp	r0, r2
	it	cs
	movcs	r0, r2
	cmp	r5, #4
	str	r0, [r1, #20]
	beq	.L135
	ldr	r1, [r1]
	movs	r0, #1
	cbz	r1, .L89
	ldr	r0, [r8, #92]
	cmp	r0, #0
	sub	r2, r2, r0
	ite	ge
	ldrge	r1, [r8, #56]
	movlt	r1, r3
	mov	r3, #0
	it	ge
	addge	r1, r1, r0
	mov	r0, r8
	bl	_tr_flush_block(PLT)
	ldr	r6, [r8]
	ldr	r3, [r8, #108]
	ldr	r5, [r6, #28]
	str	r3, [r8, #92]
	mov	r0, r5
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r5, #20]
	ldr	r4, [r6, #16]
	cmp	r4, r3
	it	cs
	movcs	r4, r3
	cbnz	r4, .L136
.L116:
	ldr	r3, [r8]
	ldr	r0, [r3, #16]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
.L89:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L135:
	ldr	r0, [r8, #92]
	cmp	r0, #0
	sub	r2, r2, r0
	ite	ge
	ldrge	r1, [r8, #56]
	movlt	r1, r3
	mov	r3, #1
	it	ge
	addge	r1, r1, r0
	mov	r0, r8
	bl	_tr_flush_block(PLT)
	ldr	r5, [r8]
	ldr	r3, [r8, #108]
	ldr	r4, [r5, #28]
	str	r3, [r8, #92]
	mov	r0, r4
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r4, #20]
	ldr	r6, [r5, #16]
	cmp	r6, r3
	it	cs
	movcs	r6, r3
	cbnz	r6, .L137
.L112:
	ldr	r3, [r8]
	ldr	r0, [r3, #16]
	cmp	r0, #0
	ite	ne
	movne	r0, #3
	moveq	r0, #2
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L136:
	mov	r2, r4
	ldr	r1, [r5, #16]
	ldr	r0, [r6, #12]
	bl	memcpy(PLT)
	ldr	r3, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r0, [r6, #12]
	ldr	r2, [r6, #20]
	subs	r3, r3, r4
	ldr	r7, [r6, #16]
	add	r1, r1, r4
	add	r0, r0, r4
	add	r2, r2, r4
	str	r0, [r6, #12]
	subs	r4, r7, r4
	str	r1, [r5, #16]
	str	r2, [r6, #20]
	str	r4, [r6, #16]
	str	r3, [r5, #20]
	cmp	r3, #0
	bne	.L116
	ldr	r3, [r5, #8]
	str	r3, [r5, #16]
	b	.L116
.L137:
	mov	r2, r6
	ldr	r1, [r4, #16]
	ldr	r0, [r5, #12]
	bl	memcpy(PLT)
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #16]
	ldr	r0, [r5, #12]
	ldr	r2, [r5, #20]
	subs	r3, r3, r6
	ldr	r7, [r5, #16]
	add	r1, r1, r6
	add	r0, r0, r6
	add	r2, r2, r6
	str	r0, [r5, #12]
	subs	r6, r7, r6
	str	r1, [r4, #16]
	str	r2, [r5, #20]
	str	r6, [r5, #16]
	str	r3, [r4, #20]
	cmp	r3, #0
	bne	.L112
	ldr	r3, [r4, #8]
	str	r3, [r4, #16]
	b	.L112
.L139:
	.align	2
.L138:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	_length_code(GOT)
	.word	_dist_code(GOT)
	.size	deflate_fast, .-deflate_fast
	.section	.text.deflate_stored,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	deflate_stored, %function
deflate_stored:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	movw	r2, #65534
	ldr	r6, [r0, #12]
	movw	r3, #65535
	mov	r4, r0
	mov	r10, r1
	movs	r7, #0
	subs	r6, r6, #5
	cmp	r6, r2
	it	hi
	movhi	r6, r3
	b	.L153
.L149:
	ldr	r3, [r4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L151
.L187:
	ldr	r3, [r4, #108]
	ldr	r0, [r4, #92]
.L146:
	ldr	r2, [r4, #44]
	subs	r3, r3, r0
	sub	r2, r2, #262
	cmp	r3, r2
	bcs	.L185
.L153:
	ldr	r3, [r4, #116]
	cmp	r3, #1
	bls	.L186
.L142:
	ldr	r2, [r4, #108]
	ldr	r0, [r4, #92]
	str	r7, [r4, #116]
	add	r3, r3, r2
	str	r3, [r4, #108]
	adds	r2, r6, r0
	cbz	r3, .L145
	cmp	r3, r2
	bcc	.L146
.L145:
	cmp	r0, #0
	sub	r3, r3, r2
	ite	ge
	ldrge	r1, [r4, #56]
	movlt	r1, #0
	str	r2, [r4, #108]
	sub	r2, r2, r0
	str	r3, [r4, #116]
	mov	r3, #0
	it	ge
	addge	r1, r1, r0
	mov	r0, r4
	bl	_tr_flush_block(PLT)
	ldr	r8, [r4]
	ldr	r3, [r4, #108]
	ldr	r9, [r8, #28]
	str	r3, [r4, #92]
	mov	r0, r9
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r9, #20]
	ldr	r5, [r8, #16]
	cmp	r5, r3
	it	cs
	movcs	r5, r3
	cmp	r5, #0
	beq	.L149
	mov	r2, r5
	ldr	r1, [r9, #16]
	ldr	r0, [r8, #12]
	bl	memcpy(PLT)
	ldr	r0, [r9, #20]
	ldr	r2, [r9, #16]
	ldr	r1, [r8, #12]
	ldr	lr, [r8, #16]
	subs	r0, r0, r5
	ldr	r3, [r8, #20]
	add	r2, r2, r5
	add	r1, r1, r5
	str	r1, [r8, #12]
	add	r3, r3, r5
	rsb	r5, r5, lr
	str	r2, [r9, #16]
	str	r3, [r8, #20]
	str	r5, [r8, #16]
	str	r0, [r9, #20]
	cmp	r0, #0
	bne	.L149
	ldr	r3, [r9, #8]
	str	r3, [r9, #16]
	ldr	r3, [r4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L187
.L151:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L186:
	mov	r0, r4
	bl	fill_window(PLT)
	ldr	r3, [r4, #116]
	cmp	r3, #0
	bne	.L142
	cmp	r10, #0
	beq	.L151
	cmp	r10, #4
	add	r2, r4, #5792
	str	r3, [r2, #20]
	beq	.L188
	ldr	r0, [r4, #108]
	ldr	r2, [r4, #92]
	cmp	r0, r2
	ble	.L173
	cmp	r2, #0
	ite	ge
	ldrge	r1, [r4, #56]
	movlt	r1, r3
	mov	r3, #0
	it	ge
	addge	r1, r1, r2
	subs	r2, r0, r2
	mov	r0, r4
	bl	_tr_flush_block(PLT)
	ldr	r6, [r4]
	ldr	r3, [r4, #108]
	ldr	r5, [r6, #28]
	str	r3, [r4, #92]
	mov	r0, r5
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r5, #20]
	ldr	r7, [r6, #16]
	cmp	r7, r3
	it	cs
	movcs	r7, r3
	cmp	r7, #0
	bne	.L189
.L166:
	ldr	r3, [r4]
	ldr	r0, [r3, #16]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L185:
	cmp	r0, #0
	mov	r2, r3
	ite	ge
	ldrge	r1, [r4, #56]
	movlt	r1, #0
	mov	r3, #0
	it	ge
	addge	r1, r1, r0
	mov	r0, r4
	bl	_tr_flush_block(PLT)
	ldr	r8, [r4]
	ldr	r3, [r4, #108]
	ldr	r9, [r8, #28]
	str	r3, [r4, #92]
	mov	r0, r9
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r9, #20]
	ldr	r5, [r8, #16]
	cmp	r5, r3
	it	cs
	movcs	r5, r3
	cbnz	r5, .L190
.L156:
	ldr	r3, [r4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L153
	b	.L151
.L190:
	mov	r2, r5
	ldr	r1, [r9, #16]
	ldr	r0, [r8, #12]
	bl	memcpy(PLT)
	ldr	r0, [r9, #20]
	ldr	r2, [r9, #16]
	ldr	r1, [r8, #12]
	ldr	lr, [r8, #16]
	subs	r0, r0, r5
	ldr	r3, [r8, #20]
	add	r2, r2, r5
	add	r1, r1, r5
	str	r1, [r8, #12]
	add	r3, r3, r5
	rsb	r5, r5, lr
	str	r2, [r9, #16]
	str	r3, [r8, #20]
	str	r5, [r8, #16]
	str	r0, [r9, #20]
	cmp	r0, #0
	bne	.L156
	ldr	r3, [r9, #8]
	str	r3, [r9, #16]
	b	.L156
.L188:
	ldr	r2, [r4, #92]
	mov	r0, r4
	ldr	r5, [r4, #108]
	cmp	r2, #0
	ite	ge
	ldrge	r1, [r4, #56]
	movlt	r1, r3
	mov	r3, #1
	it	ge
	addge	r1, r1, r2
	subs	r2, r5, r2
	bl	_tr_flush_block(PLT)
	ldr	r6, [r4]
	ldr	r3, [r4, #108]
	ldr	r5, [r6, #28]
	str	r3, [r4, #92]
	mov	r0, r5
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r5, #20]
	ldr	r7, [r6, #16]
	cmp	r7, r3
	it	cs
	movcs	r7, r3
	cbnz	r7, .L191
.L162:
	ldr	r3, [r4]
	ldr	r0, [r3, #16]
	cmp	r0, #0
	ite	ne
	movne	r0, #3
	moveq	r0, #2
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L189:
	mov	r2, r7
	ldr	r1, [r5, #16]
	ldr	r0, [r6, #12]
	bl	memcpy(PLT)
	ldr	r3, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r0, [r6, #12]
	ldr	r2, [r6, #20]
	subs	r3, r3, r7
	ldr	lr, [r6, #16]
	add	r1, r1, r7
	add	r0, r0, r7
	add	r2, r2, r7
	str	r0, [r6, #12]
	rsb	r7, r7, lr
	str	r1, [r5, #16]
	str	r2, [r6, #20]
	str	r7, [r6, #16]
	str	r3, [r5, #20]
	cmp	r3, #0
	bne	.L166
	ldr	r3, [r5, #8]
	str	r3, [r5, #16]
	b	.L166
.L173:
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L191:
	mov	r2, r7
	ldr	r1, [r5, #16]
	ldr	r0, [r6, #12]
	bl	memcpy(PLT)
	ldr	r3, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r0, [r6, #12]
	ldr	r2, [r6, #20]
	subs	r3, r3, r7
	ldr	lr, [r6, #16]
	add	r1, r1, r7
	add	r0, r0, r7
	add	r2, r2, r7
	str	r0, [r6, #12]
	rsb	r7, r7, lr
	str	r1, [r5, #16]
	str	r2, [r6, #20]
	str	r7, [r6, #16]
	str	r3, [r5, #20]
	cmp	r3, #0
	bne	.L162
	ldr	r3, [r5, #8]
	str	r3, [r5, #16]
	b	.L162
	.size	deflate_stored, .-deflate_stored
	.section	.text.deflate_slow,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	deflate_slow, %function
deflate_slow:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldr	r6, .L267
	mov	r4, r0
	add	r9, r0, #5792
	add	r10, r0, #5760
	str	r1, [sp, #12]
.LPIC17:
	add	r6, pc
	ldr	r5, [r0, #116]
	str	r6, [sp, #4]
.L193:
	cmp	r5, #262
	bcc	.L258
.L231:
	ldr	r2, [r4, #108]
	ldr	r0, [r4, #56]
	ldr	r1, [r4, #72]
	ldr	r3, [r4, #88]
	add	r0, r0, r2
	ldr	r6, [r4, #84]
	ldrb	r0, [r0, #2]	@ zero_extendqisi2
	ldr	r7, [r4, #68]
	lsl	r3, r1, r3
	ldr	r1, [r4, #52]
	ldr	r5, [r4, #64]
	eors	r0, r0, r3
	ldr	r3, [r4, #96]
	ands	r0, r0, r6
	and	lr, r2, r1
	ldrh	r1, [r7, r0, lsl #1]
	ldr	r6, [r4, #112]
	str	r0, [r4, #72]
	strh	r1, [r5, lr, lsl #1]	@ movhi
	strh	r2, [r7, r0, lsl #1]	@ movhi
	movs	r0, #2
	str	r3, [r4, #120]
	str	r0, [r4, #96]
	str	r6, [r4, #100]
	cbz	r1, .L234
	ldr	r0, [r4, #128]
	cmp	r3, r0
	bcs	.L234
	ldr	r0, [r4, #44]
	subs	r5, r2, r1
	sub	r0, r0, #262
	cmp	r5, r0
	bls	.L259
.L234:
	movs	r0, #2
.L199:
	cmp	r3, #2
	bls	.L204
.L261:
	cmp	r3, r0
	bcc	.L204
	ldr	r0, [r4, #100]
	subs	r3, r3, #3
	ldr	r1, [r9]
	uxtb	r3, r3
	ldr	r5, [r9, #4]
	subs	r0, r2, r0
	ldr	lr, [r10, #24]
	uxth	r0, r0
	ldr	r7, [r4, #116]
	ldr	r6, .L267+4
	add	ip, r0, #-1
	subs	r0, r0, #2
	strh	ip, [r5, r1, lsl #1]	@ movhi
	adds	r5, r1, #1
	str	r5, [r9]
	uxth	r0, r0
	ldr	r5, [sp, #4]
	strb	r3, [lr, r1]
	sub	lr, r7, #3
	add	lr, lr, r2
	cmp	r0, #255
	ldr	r1, [r5, r6]
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	addw	r3, r3, #257
	add	r3, r4, r3, lsl #2
	ldrh	r2, [r3, #148]
	add	r2, r2, #1
	strh	r2, [r3, #148]	@ movhi
	bhi	.L205
	ldr	r3, .L267+8
	ldr	r3, [r5, r3]
	ldrb	r3, [r3, r0]	@ zero_extendqisi2
.L206:
	add	r3, r4, r3, lsl #2
	ldrh	r2, [r3, #2440]
	adds	r2, r2, #1
	strh	r2, [r3, #2440]	@ movhi
	ldr	r3, [r10, #28]
	ldr	r5, [r4, #116]
	ldr	r8, [r4, #108]
	ldr	ip, [r4, #120]
	subs	r6, r3, #1
	ldr	r7, [r9]
	adds	r5, r5, #1
	add	r3, r8, #1
	rsb	r5, ip, r5
	sub	r1, ip, #2
	str	r7, [sp, #8]
	str	r5, [r4, #116]
	str	r1, [r4, #120]
	str	ip, [sp]
.L209:
	cmp	r3, lr
	str	r3, [r4, #108]
	add	r1, r1, #-1
	bhi	.L207
	ldr	r2, [r4, #56]
	ldr	r7, [r4, #88]
	ldr	r0, [r4, #68]
	add	r2, r2, r3
	ldr	ip, [r4, #64]
	ldrb	fp, [r2, #2]	@ zero_extendqisi2
	ldr	r2, [r4, #72]
	lsls	r2, r2, r7
	ldr	r7, [r4, #84]
	eor	r2, fp, r2
	ands	r2, r2, r7
	ldr	r7, [r4, #52]
	ldrh	fp, [r0, r2, lsl #1]
	str	r2, [r4, #72]
	ands	r7, r7, r3
	strh	fp, [ip, r7, lsl #1]	@ movhi
	strh	r3, [r0, r2, lsl #1]	@ movhi
.L207:
	str	r1, [r4, #120]
	adds	r3, r3, #1
	cmp	r1, #0
	bne	.L209
	ldr	ip, [sp]
	movs	r0, #2
	ldr	r2, [sp, #8]
	str	r1, [r4, #104]
	add	ip, ip, r8
	str	r0, [r4, #96]
	cmp	r2, r6
	add	r3, ip, #-1
	str	r3, [r4, #108]
	bne	.L193
	ldr	r2, [r4, #92]
	mov	r0, r4
	cmp	r2, #0
	itt	ge
	ldrge	r1, [r4, #56]
	addge	r1, r1, r2
	subs	r2, r3, r2
	movs	r3, #0
	bl	_tr_flush_block(PLT)
	ldr	r7, [r4]
	ldr	r3, [r4, #108]
	ldr	r8, [r7, #28]
	str	r3, [r4, #92]
	mov	r0, r8
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r8, #20]
	ldr	r5, [r7, #16]
	cmp	r5, r3
	it	cs
	movcs	r5, r3
	cmp	r5, #0
	bne	.L260
.L213:
	ldr	r3, [r4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L215
	ldr	r5, [r4, #116]
	cmp	r5, #262
	bcs	.L231
.L258:
	mov	r0, r4
	bl	fill_window(PLT)
	ldr	r3, [r4, #116]
	cmp	r3, #262
	bcs	.L231
	ldr	r7, [sp, #12]
	cmp	r7, #0
	beq	.L215
	cmp	r3, #0
	beq	.L197
	cmp	r3, #2
	bhi	.L231
	ldr	r3, [r4, #96]
	movs	r0, #2
	ldr	r2, [r4, #112]
	str	r0, [r4, #96]
	cmp	r3, #2
	str	r3, [r4, #120]
	str	r2, [r4, #100]
	ldr	r2, [r4, #108]
	bhi	.L261
.L204:
	ldr	r3, [r4, #104]
	cbz	r3, .L216
	ldr	r0, [r4, #56]
	mov	r6, #0	@ movhi
	ldr	r3, [r9]
	ldr	r5, [r10, #24]
	add	r2, r2, r0
	ldr	r1, [r9, #4]
	ldrb	r2, [r2, #-1]	@ zero_extendqisi2
	adds	r0, r3, #1
	strh	r6, [r1, r3, lsl #1]	@ movhi
	str	r0, [r9]
	strb	r2, [r5, r3]
	add	r3, r4, r2, lsl #2
	ldrh	r2, [r3, #148]
	adds	r2, r2, #1
	strh	r2, [r3, #148]	@ movhi
	ldr	r2, [r10, #28]
	ldr	r3, [r9]
	subs	r2, r2, #1
	cmp	r3, r2
	beq	.L262
.L218:
	ldr	r2, [r4]
	ldr	r3, [r4, #108]
	ldr	r5, [r4, #116]
	ldr	r2, [r2, #16]
	adds	r3, r3, #1
	subs	r5, r5, #1
	str	r3, [r4, #108]
	str	r5, [r4, #116]
	cmp	r2, #0
	bne	.L193
.L215:
	movs	r0, #0
.L253:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L216:
	ldr	r5, [r4, #116]
	adds	r2, r2, #1
	movs	r7, #1
	str	r2, [r4, #108]
	str	r7, [r4, #104]
	subs	r5, r5, #1
	str	r5, [r4, #116]
	b	.L193
.L205:
	ldr	r3, .L267+8
	ldr	r3, [r5, r3]
	add	r3, r3, r0, lsr #7
	ldrb	r3, [r3, #256]	@ zero_extendqisi2
	b	.L206
.L262:
	ldr	r2, [r4, #92]
	mov	r0, r4
	ldr	r5, [r4, #108]
	movs	r3, #0
	cmp	r2, #0
	itet	ge
	ldrge	r1, [r4, #56]
	movlt	r1, #0
	addge	r1, r1, r2
	subs	r2, r5, r2
	bl	_tr_flush_block(PLT)
	ldr	r7, [r4]
	ldr	r3, [r4, #108]
	ldr	r8, [r7, #28]
	str	r3, [r4, #92]
	mov	r0, r8
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r8, #20]
	ldr	r5, [r7, #16]
	cmp	r5, r3
	it	cs
	movcs	r5, r3
	cmp	r5, #0
	beq	.L218
	mov	r2, r5
	ldr	r1, [r8, #16]
	ldr	r0, [r7, #12]
	bl	memcpy(PLT)
	ldr	r6, [r8, #20]
	ldr	r2, [r8, #16]
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	subs	r6, r6, r5
	ldr	r0, [r7, #16]
	add	r2, r2, r5
	add	r1, r1, r5
	add	r3, r3, r5
	str	r1, [r7, #12]
	subs	r5, r0, r5
	str	r2, [r8, #16]
	str	r3, [r7, #20]
	str	r5, [r7, #16]
	str	r6, [r8, #20]
	cmp	r6, #0
	bne	.L218
	ldr	r3, [r8, #8]
	str	r3, [r8, #16]
	b	.L218
.L259:
	mov	r0, r4
	bl	longest_match(PLT)
	cmp	r0, #5
	str	r0, [r4, #96]
	bhi	.L257
	ldr	r3, [r4, #136]
	cmp	r3, #1
	it	eq
	ldreq	r2, [r4, #108]
	beq	.L202
	cmp	r0, #3
	beq	.L203
.L257:
	ldr	r3, [r4, #120]
	ldr	r2, [r4, #108]
	b	.L199
.L260:
	mov	r2, r5
	ldr	r1, [r8, #16]
	ldr	r0, [r7, #12]
	bl	memcpy(PLT)
	ldr	r6, [r8, #20]
	ldr	r2, [r8, #16]
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	subs	r6, r6, r5
	ldr	r0, [r7, #16]
	add	r2, r2, r5
	add	r1, r1, r5
	add	r3, r3, r5
	str	r1, [r7, #12]
	subs	r5, r0, r5
	str	r2, [r8, #16]
	str	r3, [r7, #20]
	str	r5, [r7, #16]
	str	r6, [r8, #20]
	cmp	r6, #0
	bne	.L213
	ldr	r3, [r8, #8]
	str	r3, [r8, #16]
	b	.L213
.L203:
	ldr	r2, [r4, #108]
	ldr	r3, [r4, #112]
	subs	r3, r2, r3
	cmp	r3, #4096
	bls	.L256
.L202:
	movs	r1, #2
	mov	r0, r1
	str	r1, [r4, #96]
.L256:
	ldr	r3, [r4, #120]
	b	.L199
.L197:
	ldr	r2, [r4, #104]
	add	r1, r4, #5792
	cmp	r2, #0
	bne	.L263
.L221:
	ldr	r3, [r4, #108]
	movs	r2, #2
	ldr	r5, [sp, #12]
	cmp	r2, r3
	it	cs
	movcs	r2, r3
	cmp	r5, #4
	str	r2, [r1, #20]
	beq	.L264
	ldr	r2, [r1]
	movs	r0, #1
	cmp	r2, #0
	beq	.L253
	ldr	r2, [r4, #92]
	mov	r0, r4
	cmp	r2, #0
	itet	ge
	ldrge	r1, [r4, #56]
	movlt	r1, #0
	addge	r1, r1, r2
	subs	r2, r3, r2
	movs	r3, #0
	bl	_tr_flush_block(PLT)
	ldr	r6, [r4]
	ldr	r3, [r4, #108]
	ldr	r5, [r6, #28]
	str	r3, [r4, #92]
	mov	r0, r5
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r5, #20]
	ldr	r7, [r6, #16]
	cmp	r7, r3
	it	cs
	movcs	r7, r3
	cmp	r7, #0
	bne	.L265
.L229:
	ldr	r3, [r4]
	ldr	r0, [r3, #16]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L263:
	ldr	r6, [r4, #56]
	add	r1, r4, #5792
	ldr	r0, [r4, #108]
	add	r7, r4, #5760
	ldmia	r1, {r2, r5}
	ldr	r7, [r7, #24]
	add	r0, r0, r6
	ldrb	r0, [r0, #-1]	@ zero_extendqisi2
	adds	r6, r2, #1
	strh	r3, [r5, r2, lsl #1]	@ movhi
	str	r6, [r1]
	strb	r0, [r7, r2]
	add	r2, r4, r0, lsl #2
	ldrh	r0, [r2, #148]
	adds	r0, r0, #1
	strh	r0, [r2, #148]	@ movhi
	str	r3, [r4, #104]
	b	.L221
.L264:
	ldr	r2, [r4, #92]
	mov	r0, r4
	cmp	r2, #0
	itet	ge
	ldrge	r1, [r4, #56]
	movlt	r1, #0
	addge	r1, r1, r2
	subs	r2, r3, r2
	movs	r3, #1
	bl	_tr_flush_block(PLT)
	ldr	r6, [r4]
	ldr	r3, [r4, #108]
	ldr	r5, [r6, #28]
	str	r3, [r4, #92]
	mov	r0, r5
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r5, #20]
	ldr	r7, [r6, #16]
	cmp	r7, r3
	it	cs
	movcs	r7, r3
	cbnz	r7, .L266
.L225:
	ldr	r3, [r4]
	ldr	r0, [r3, #16]
	cmp	r0, #0
	ite	ne
	movne	r0, #3
	moveq	r0, #2
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L265:
	mov	r2, r7
	ldr	r1, [r5, #16]
	ldr	r0, [r6, #12]
	bl	memcpy(PLT)
	ldr	r3, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r0, [r6, #12]
	ldr	r2, [r6, #20]
	subs	r3, r3, r7
	ldr	lr, [r6, #16]
	add	r1, r1, r7
	add	r0, r0, r7
	add	r2, r2, r7
	str	r0, [r6, #12]
	rsb	r7, r7, lr
	str	r1, [r5, #16]
	str	r2, [r6, #20]
	str	r7, [r6, #16]
	str	r3, [r5, #20]
	cmp	r3, #0
	bne	.L229
	ldr	r3, [r5, #8]
	str	r3, [r5, #16]
	b	.L229
.L266:
	mov	r2, r7
	ldr	r1, [r5, #16]
	ldr	r0, [r6, #12]
	bl	memcpy(PLT)
	ldr	r3, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r0, [r6, #12]
	ldr	r2, [r6, #20]
	subs	r3, r3, r7
	ldr	lr, [r6, #16]
	add	r1, r1, r7
	add	r0, r0, r7
	add	r2, r2, r7
	str	r0, [r6, #12]
	rsb	r7, r7, lr
	str	r1, [r5, #16]
	str	r2, [r6, #20]
	str	r7, [r6, #16]
	str	r3, [r5, #20]
	cmp	r3, #0
	bne	.L225
	ldr	r3, [r5, #8]
	str	r3, [r5, #16]
	b	.L225
.L268:
	.align	2
.L267:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC17+4)
	.word	_length_code(GOT)
	.word	_dist_code(GOT)
	.size	deflate_slow, .-deflate_slow
	.section	.text.deflateSetDictionary,"ax",%progbits
	.align	2
	.global	deflateSetDictionary
	.thumb
	.thumb_func
	.type	deflateSetDictionary, %function
deflateSetDictionary:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	sub	sp, sp, #20
	cmp	r0, #0
	beq	.L290
	ldr	r4, [r0, #28]
	cmp	r4, #0
	beq	.L290
	mov	r5, r1
	cmp	r1, #0
	beq	.L290
	ldr	r3, [r4, #24]
	cmp	r3, #2
	str	r3, [sp]
	beq	.L290
	cmp	r3, #1
	mov	r6, r2
	beq	.L299
	ldr	r2, [r4, #116]
	cmp	r2, #0
	bne	.L290
	ldr	r3, [r4, #44]
	str	r2, [r4, #24]
	cmp	r6, r3
	itt	cc
	addcc	r3, r4, #5792
	strcc	r3, [sp, #4]
	bcs	.L300
.L274:
	ldr	r1, [r8, #4]
	mov	r0, r4
	ldr	r2, [r8]
	str	r6, [r8, #4]
	str	r5, [r8]
	str	r1, [sp, #8]
	str	r2, [sp, #12]
	bl	fill_window(PLT)
	ldr	r1, [r4, #116]
	cmp	r1, #2
	bls	.L276
	movs	r7, #2
.L279:
	ldr	r3, [r4, #108]
	ldr	r2, [r4, #72]
	ldr	fp, [r4, #88]
	sub	ip, r3, #2
	ldr	r10, [r4, #56]
	add	ip, ip, r1
	ldr	r9, [r4, #84]
	ldr	lr, [r4, #64]
	ldr	r6, [r4, #52]
	ldr	r1, [r4, #68]
.L278:
	add	r0, r10, r3
	lsl	r2, r2, fp
	ldrb	r5, [r0, #2]	@ zero_extendqisi2
	and	r0, r3, r6
	eors	r2, r2, r5
	and	r2, r2, r9
	ldrh	r5, [r1, r2, lsl #1]
	str	r2, [r4, #72]
	strh	r5, [lr, r0, lsl #1]	@ movhi
	strh	r3, [r1, r2, lsl #1]	@ movhi
	adds	r3, r3, #1
	cmp	r3, ip
	bne	.L278
	str	r3, [r4, #108]
	mov	r0, r4
	str	r7, [r4, #116]
	bl	fill_window(PLT)
	ldr	r1, [r4, #116]
	cmp	r1, #2
	bhi	.L279
.L276:
	ldr	r3, [r4, #108]
	movs	r2, #0
	ldr	r7, [sp, #12]
	mov	r0, r2
	movs	r5, #2
	add	r3, r3, r1
	str	r3, [r4, #108]
	str	r3, [r4, #92]
	ldr	r3, [sp, #4]
	str	r1, [r3, #20]
	ldr	r1, [sp, #8]
	ldr	r3, [sp]
	str	r2, [r4, #116]
	str	r2, [r4, #104]
	str	r5, [r4, #120]
	str	r5, [r4, #96]
	str	r7, [r8]
	str	r1, [r8, #4]
	str	r3, [r4, #24]
.L295:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L300:
	ldr	r7, [sp]
	cbz	r7, .L301
	add	r7, r4, #5792
	str	r7, [sp, #4]
.L273:
	subs	r2, r6, r3
	mov	r6, r3
	add	r5, r5, r2
	b	.L274
.L299:
	ldr	r3, [r4, #4]
	cmp	r3, #42
	bne	.L290
	ldr	r7, [r4, #116]
	cbnz	r7, .L290
	ldr	r0, [r8, #48]
	bl	adler32(PLT)
	ldr	r3, [r4, #44]
	str	r0, [r8, #48]
	str	r7, [r4, #24]
	add	r7, r4, #5792
	cmp	r6, r3
	str	r7, [sp, #4]
	bcs	.L273
	b	.L274
.L301:
	ldr	r2, [r4, #76]
	mov	r1, r7
	ldr	r3, [r4, #68]
	add	r7, r4, #5792
	str	r7, [sp, #4]
	add	r2, r2, #-2147483648
	subs	r2, r2, #1
	mov	r0, r3
	strh	r1, [r3, r2, lsl #1]	@ movhi
	lsls	r2, r2, #1
	bl	memset(PLT)
	ldr	r3, [sp]
	ldr	r0, [sp]
	str	r3, [r4, #108]
	str	r3, [r4, #92]
	ldr	r3, [r4, #44]
	str	r0, [r7, #20]
	b	.L273
.L290:
	mvn	r0, #1
	b	.L295
	.size	deflateSetDictionary, .-deflateSetDictionary
	.section	.text.deflateResetKeep,"ax",%progbits
	.align	2
	.global	deflateResetKeep
	.thumb
	.thumb_func
	.type	deflateResetKeep, %function
deflateResetKeep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cmp	r0, #0
	beq	.L312
	ldr	r5, [r0, #28]
	cbz	r5, .L312
	ldr	r3, [r0, #32]
	cbz	r3, .L312
	ldr	r3, [r0, #36]
	cbz	r3, .L312
	ldr	r2, [r5, #24]
	movs	r3, #0
	ldr	r1, [r5, #8]
	movs	r0, #2
	str	r3, [r4, #20]
	cmp	r2, r3
	str	r3, [r4, #8]
	str	r3, [r4, #24]
	str	r0, [r4, #44]
	str	r3, [r5, #20]
	str	r1, [r5, #16]
	blt	.L304
	itt	eq
	moveq	r3, #113
	streq	r3, [r5, #4]
	bne	.L305
.L307:
	movs	r0, #0
	mov	r1, r0
	mov	r2, r0
	bl	adler32(PLT)
.L308:
	movs	r6, #0
	str	r0, [r4, #48]
	mov	r0, r5
	str	r6, [r5, #40]
	bl	_tr_init(PLT)
	mov	r0, r6
	pop	{r4, r5, r6, pc}
.L304:
	negs	r2, r2
	str	r2, [r5, #24]
.L305:
	cmp	r2, #2
	mov	r3, #42
	str	r3, [r5, #4]
	bne	.L307
	movs	r0, #0
	mov	r1, r0
	mov	r2, r0
	bl	crc32(PLT)
	b	.L308
.L312:
	mvn	r0, #1
	pop	{r4, r5, r6, pc}
	.size	deflateResetKeep, .-deflateResetKeep
	.section	.text.deflateReset,"ax",%progbits
	.align	2
	.global	deflateReset
	.thumb
	.thumb_func
	.type	deflateReset, %function
deflateReset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	bl	deflateResetKeep(PLT)
	mov	r5, r0
	cbnz	r0, .L317
	ldr	r4, [r4, #28]
	mov	r1, r0
	ldr	r2, [r4, #44]
	add	r6, r4, #5792
	ldr	r3, [r4, #76]
	ldr	r0, [r4, #68]
	lsls	r2, r2, #1
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	str	r2, [r4, #60]
	lsls	r2, r3, #1
	strh	r5, [r0, r3, lsl #1]	@ movhi
	bl	memset(PLT)
	ldr	r1, [r4, #132]
	movs	r2, #2
	ldr	r0, .L319
	str	r5, [r4, #108]
	str	r5, [r4, #92]
	add	r1, r1, r1, lsl #1
.LPIC18:
	add	r0, pc
	str	r5, [r4, #116]
	lsls	r1, r1, r2
	adds	r3, r0, r1
	ldrh	r7, [r0, r1]
	ldrh	r0, [r3, #2]
	ldrh	r1, [r3, #4]
	ldrh	r3, [r3, #6]
	str	r7, [r4, #140]
	str	r0, [r4, #128]
	str	r1, [r4, #144]
	str	r3, [r4, #124]
	str	r5, [r6, #20]
	str	r5, [r4, #104]
	str	r5, [r4, #72]
	str	r2, [r4, #120]
	str	r2, [r4, #96]
.L317:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, pc}
.L320:
	.align	2
.L319:
	.word	.LANCHOR0-(.LPIC18+4)
	.size	deflateReset, .-deflateReset
	.section	.text.deflateSetHeader,"ax",%progbits
	.align	2
	.global	deflateSetHeader
	.thumb
	.thumb_func
	.type	deflateSetHeader, %function
deflateSetHeader:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L325
	ldr	r3, [r0, #28]
	cbz	r3, .L325
	ldr	r2, [r3, #24]
	cmp	r2, #2
	bne	.L325
	str	r1, [r3, #28]
	movs	r0, #0
	bx	lr
.L325:
	mvn	r0, #1
	bx	lr
	.size	deflateSetHeader, .-deflateSetHeader
	.section	.text.deflatePending,"ax",%progbits
	.align	2
	.global	deflatePending
	.thumb
	.thumb_func
	.type	deflatePending, %function
deflatePending:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L330
	ldr	r3, [r0, #28]
	cbz	r3, .L330
	cbz	r1, .L328
	ldr	r0, [r3, #20]
	str	r0, [r1]
.L328:
	cbz	r2, .L331
	add	r3, r3, #5792
	movs	r0, #0
	ldr	r3, [r3, #28]
	str	r3, [r2]
	bx	lr
.L331:
	mov	r0, r2
	bx	lr
.L330:
	mvn	r0, #1
	bx	lr
	.size	deflatePending, .-deflatePending
	.section	.text.deflatePrime,"ax",%progbits
	.align	2
	.global	deflatePrime
	.thumb
	.thumb_func
	.type	deflatePrime, %function
deflatePrime:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L338
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r9, [r0, #28]
	cmp	r9, #0
	beq	.L339
	mov	r6, r2
	ldr	r3, [r9, #16]
	add	r2, r9, #5792
	ldr	r2, [r2, #4]
	adds	r3, r3, #2
	cmp	r2, r3
	bcc	.L340
	add	r8, r9, #5792
	mov	r5, r1
	mov	r7, r8
	mov	r10, #1
	add	r8, r8, #28
	adds	r7, r7, #24
.L337:
	ldr	r3, [r8]
	mov	r0, r9
	ldrh	r1, [r7]
	rsb	r4, r3, #16
	cmp	r4, r5
	it	ge
	movge	r4, r5
	lsl	lr, r10, r4
	adds	r2, r3, r4
	add	lr, lr, #-1
	and	lr, lr, r6
	asrs	r6, r6, r4
	lsl	r3, lr, r3
	orrs	r3, r3, r1
	strh	r3, [r7]	@ movhi
	str	r2, [r8]
	bl	_tr_flush_bits(PLT)
	subs	r5, r5, r4
	bne	.L337
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L340:
	mvn	r0, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L339:
	mvn	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L338:
	mvn	r0, #1
	bx	lr
	.size	deflatePrime, .-deflatePrime
	.section	.text.deflateTune,"ax",%progbits
	.align	2
	.global	deflateTune
	.thumb
	.thumb_func
	.type	deflateTune, %function
deflateTune:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L345
	push	{r4}
	ldr	r4, [r0, #28]
	cbz	r4, .L346
	str	r3, [r4, #144]
	movs	r0, #0
	ldr	r3, [sp, #4]
	str	r1, [r4, #140]
	str	r2, [r4, #128]
	str	r3, [r4, #124]
.L344:
	ldr	r4, [sp], #4
	bx	lr
.L345:
	mvn	r0, #1
	bx	lr
.L346:
	mvn	r0, #1
	b	.L344
	.size	deflateTune, .-deflateTune
	.section	.text.deflateBound,"ax",%progbits
	.align	2
	.global	deflateBound
	.thumb
	.thumb_func
	.type	deflateBound, %function
deflateBound:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r1, #63
	push	{r4, r5, r6, r7}
	lsrs	r3, r3, #6
	adds	r6, r1, #7
	add	r3, r3, r6, lsr #3
	adds	r7, r3, r1
	cmp	r0, #0
	beq	.L349
	ldr	r2, [r0, #28]
	cmp	r2, #0
	beq	.L349
	ldr	r3, [r2, #24]
	cmp	r3, #1
	beq	.L353
	cmp	r3, #2
	beq	.L354
	cmp	r3, #0
	ite	ne
	movne	r3, #6
	moveq	r3, #0
.L352:
	ldr	r0, [r2, #48]
	cmp	r0, #15
	beq	.L386
.L361:
	adds	r0, r7, #5
	pop	{r4, r5, r6, r7}
	add	r0, r0, r3
	bx	lr
.L354:
	ldr	r0, [r2, #28]
	movs	r3, #18
	cmp	r0, #0
	beq	.L352
	ldr	r3, [r0, #16]
	cbz	r3, .L366
	ldr	r3, [r0, #20]
	adds	r3, r3, #20
.L356:
	ldr	r4, [r0, #28]
	cbz	r4, .L357
.L358:
	ldrb	r5, [r4], #1	@ zero_extendqisi2
	adds	r3, r3, #1
	cmp	r5, #0
	bne	.L358
.L357:
	ldr	r4, [r0, #36]
	cbz	r4, .L359
.L360:
	ldrb	r5, [r4], #1	@ zero_extendqisi2
	adds	r3, r3, #1
	cmp	r5, #0
	bne	.L360
.L359:
	ldr	r0, [r0, #44]
	cmp	r0, #0
	beq	.L352
	adds	r3, r3, #2
	b	.L352
.L386:
	ldr	r2, [r2, #80]
	cmp	r2, #15
	bne	.L361
	add	r0, r6, r1, lsr #12
	pop	{r4, r5, r6, r7}
	add	r0, r0, r1, lsr #14
	add	r1, r0, r1, lsr #25
	adds	r0, r1, r3
	bx	lr
.L353:
	ldr	r3, [r2, #108]
	cmp	r3, #0
	ite	eq
	moveq	r3, #6
	movne	r3, #10
	b	.L352
.L349:
	add	r0, r7, #11
	pop	{r4, r5, r6, r7}
	bx	lr
.L366:
	movs	r3, #18
	b	.L356
	.size	deflateBound, .-deflateBound
	.section	.text.deflate,"ax",%progbits
	.align	2
	.global	deflate
	.thumb
	.thumb_func
	.type	deflate, %function
deflate:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldr	r10, .L694
	mov	fp, r0
	str	r1, [sp, #8]
.LPIC22:
	add	r10, pc
	cmp	r0, #0
	beq	.L546
	ldr	r4, [r0, #28]
	cmp	r4, #0
	beq	.L546
	cmp	r1, #5
	bhi	.L546
	ldr	r3, [r0, #12]
	cmp	r3, #0
	beq	.L389
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L647
.L390:
	ldr	r3, [r4, #4]
	movw	r2, #666
	cmp	r3, r2
	beq	.L648
.L391:
	ldr	r2, [fp, #16]
	cmp	r2, #0
	beq	.L645
	ldr	r5, [sp, #8]
	cmp	r3, #42
	ldr	r6, [r4, #40]
	str	fp, [r4]
	str	r5, [r4, #40]
	beq	.L649
	cmp	r3, #69
	beq	.L637
.L663:
	cmp	r3, #73
	ldr	r5, [r4, #20]
	beq	.L650
.L422:
	cmp	r3, #91
	beq	.L651
.L397:
	cmp	r3, #103
	beq	.L652
.L446:
	cmp	r5, #0
	bne	.L653
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L456
	ldr	r5, [sp, #8]
	cmp	r6, #4
	ite	gt
	movgt	r2, #9
	movle	r2, #0
	rsb	r6, r2, r6, lsl #1
	cmp	r5, #5
	ite	eq
	moveq	r3, #9
	movne	r3, #0
	rsb	r3, r3, r5, lsl #1
	cmp	r3, r6
	bgt	.L459
	cmp	r5, #4
	bne	.L645
.L459:
	ldr	r2, [r4, #4]
.L461:
	ldr	r3, [r4, #116]
	cmp	r3, #0
	bne	.L462
	ldr	r5, [sp, #8]
	cmp	r5, #0
	beq	.L526
	movw	r3, #666
	cmp	r2, r3
	bne	.L462
.L464:
	ldr	r5, [sp, #8]
	cmp	r5, #4
	bne	.L526
	ldr	r3, [r4, #24]
	cmp	r3, #0
	it	le
	movle	r0, #1
	ble	.L635
	cmp	r3, #2
	beq	.L654
	ldr	r2, [fp, #48]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	lsrs	r0, r2, #24
	adds	r5, r3, #1
	str	r5, [r4, #20]
	lsrs	r2, r2, #16
	strb	r0, [r1, r3]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r2, [r1, r3]
	ldrh	r2, [fp, #48]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	lsrs	r0, r2, #8
	adds	r5, r3, #1
	str	r5, [r4, #20]
	strb	r0, [r1, r3]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r2, [r1, r3]
.L534:
	ldr	r6, [fp, #28]
	mov	r0, r6
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r6, #20]
	ldr	r5, [fp, #16]
	cmp	r5, r3
	it	cs
	movcs	r5, r3
	cmp	r5, #0
	bne	.L655
.L536:
	ldr	r3, [r4, #24]
	ldr	r0, [r4, #20]
	clz	r0, r0
	lsrs	r0, r0, #5
	cmp	r3, #0
	itt	gt
	rsbgt	r3, r3, #0
	strgt	r3, [r4, #24]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L648:
	ldr	r5, [sp, #8]
	cmp	r5, #4
	beq	.L391
.L389:
	ldr	r3, .L694+4
	mvn	r0, #1
	ldr	r3, [r10, r3]
	ldr	r3, [r3, #16]
	str	r3, [fp, #24]
	b	.L635
.L653:
	ldr	r8, [fp, #28]
	mov	r0, r8
	bl	_tr_flush_bits(PLT)
	ldr	r7, [r8, #20]
	ldr	r0, [fp, #16]
	cmp	r7, r0
	it	cs
	movcs	r7, r0
	cmp	r7, #0
	bne	.L656
.L453:
	cmp	r0, #0
	beq	.L646
.L455:
	ldr	r2, [r4, #4]
	movw	r1, #666
	ldr	r3, [fp, #4]
	cmp	r2, r1
	beq	.L543
	cmp	r3, #0
	beq	.L461
.L462:
	ldr	r3, [r4, #136]
	cmp	r3, #2
	beq	.L657
	cmp	r3, #3
	beq	.L658
	ldr	r3, [r4, #132]
	mov	r0, r4
	ldr	r2, .L694+8
	ldr	r1, [sp, #8]
	add	r3, r3, r3, lsl #1
.LPIC23:
	add	r2, pc
	add	r3, r2, r3, lsl #2
	ldr	r3, [r3, #8]
	blx	r3
	bic	r2, r0, #2
	subs	r3, r0, #2
.L486:
	cmp	r3, #1
	bls	.L639
.L524:
	cbnz	r2, .L525
.L615:
	ldr	r0, [fp, #16]
	cmp	r0, #0
	beq	.L646
.L526:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L525:
	cmp	r0, #1
	bne	.L464
.L616:
	ldr	r5, [sp, #8]
	cmp	r5, #1
	beq	.L659
	cmp	r5, #5
	beq	.L528
	movs	r1, #0
	mov	r0, r4
	mov	r2, r1
	mov	r3, r1
	bl	_tr_stored_block(PLT)
	cmp	r5, #3
	bne	.L528
	ldr	r2, [r4, #76]
	movs	r5, #0
	ldr	r3, [r4, #68]
	mov	r1, r5
	add	r2, r2, #-2147483648
	subs	r2, r2, #1
	mov	r0, r3
	strh	r5, [r3, r2, lsl #1]	@ movhi
	lsls	r2, r2, #1
	bl	memset(PLT)
	ldr	r3, [r4, #116]
	cbnz	r3, .L528
	add	r2, r4, #5792
	str	r3, [r4, #108]
	str	r3, [r4, #92]
	str	r3, [r2, #20]
.L528:
	ldr	r7, [fp, #28]
	mov	r0, r7
	bl	_tr_flush_bits(PLT)
	ldr	r5, [r7, #20]
	ldr	r0, [fp, #16]
	cmp	r5, r0
	it	cs
	movcs	r5, r0
	cbz	r5, .L531
	mov	r2, r5
	ldr	r1, [r7, #16]
	ldr	r0, [fp, #12]
	bl	memcpy(PLT)
	ldr	r2, [r7, #20]
	ldr	r1, [r7, #16]
	ldr	r6, [fp, #12]
	ldr	r3, [fp, #20]
	subs	r0, r2, r5
	ldr	r2, [fp, #16]
	add	r1, r1, r5
	add	r6, r6, r5
	add	r3, r3, r5
	str	r6, [fp, #12]
	subs	r2, r2, r5
	str	r1, [r7, #16]
	str	r3, [fp, #20]
	str	r2, [fp, #16]
	str	r0, [r7, #20]
	cmp	r0, #0
	bne	.L660
	ldr	r3, [r7, #8]
	mov	r0, r2
	str	r3, [r7, #16]
.L531:
	cmp	r0, #0
	bne	.L464
.L646:
	mov	r3, #-1
	str	r3, [r4, #40]
.L635:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L649:
	ldr	r5, [r4, #24]
	cmp	r5, #2
	beq	.L661
	ldr	r3, [r4, #48]
	ldr	r2, [r4, #136]
	lsls	r3, r3, #12
	cmp	r2, #1
	sub	r3, r3, #30720
	ble	.L662
.L558:
	movs	r1, #0
.L406:
	ldr	r2, [r4, #108]
	orrs	r3, r3, r1
	cbz	r2, .L407
	orr	r3, r3, #32
.L407:
	movw	r2, #4229
	ldr	r1, [r4, #20]
	movt	r2, 2114
	ldr	r0, [r4, #8]
	umull	lr, r2, r2, r3
	movs	r7, #113
	adds	r5, r1, #1
	str	r7, [r4, #4]
	str	r5, [r4, #20]
	subs	r3, r3, r2
	add	r2, r2, r3, lsr #1
	lsrs	r2, r2, #4
	rsb	r2, r2, r2, lsl #5
	adds	r2, r2, #31
	lsrs	r3, r2, #8
	strb	r3, [r0, r1]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r2, [r1, r3]
	ldr	r3, [r4, #108]
	cbz	r3, .L408
	ldr	r2, [fp, #48]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	lsrs	r0, r2, #24
	adds	r5, r3, #1
	str	r5, [r4, #20]
	lsrs	r2, r2, #16
	strb	r0, [r1, r3]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r2, [r1, r3]
	ldrh	r2, [fp, #48]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	lsrs	r0, r2, #8
	adds	r5, r3, #1
	str	r5, [r4, #20]
	strb	r0, [r1, r3]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r2, [r1, r3]
.L408:
	movs	r0, #0
	mov	r1, r0
	mov	r2, r0
	bl	adler32(PLT)
	ldr	r3, [r4, #4]
	str	r0, [fp, #48]
	cmp	r3, #69
	bne	.L663
.L637:
	ldr	r3, [r4, #28]
.L405:
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L410
	ldr	r7, [r4, #32]
	ldrh	r2, [r3, #20]
	ldr	r5, [r4, #20]
	cmp	r2, r7
	mov	r1, r5
	bls	.L411
	mov	r2, r5
	b	.L418
.L412:
	ldr	r0, [r3, #16]
	adds	r3, r2, #1
	str	r3, [r4, #20]
	ldr	r3, [r4, #8]
	ldrb	r0, [r0, r7]	@ zero_extendqisi2
	strb	r0, [r3, r2]
	ldr	r3, [r4, #28]
	ldr	r7, [r4, #32]
	ldrh	r2, [r3, #20]
	adds	r7, r7, #1
	str	r7, [r4, #32]
	cmp	r2, r7
	bls	.L664
	ldr	r2, [r4, #20]
.L418:
	ldr	r0, [r4, #12]
	cmp	r0, r2
	bne	.L412
	ldr	r3, [r3, #44]
	cbz	r3, .L413
	cmp	r2, r5
	bhi	.L665
.L413:
	ldr	r9, [fp, #28]
	mov	r0, r9
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r9, #20]
	ldr	r8, [fp, #16]
	cmp	r8, r3
	it	cs
	movcs	r8, r3
	cmp	r8, #0
	bne	.L666
.L415:
	ldr	r5, [r4, #20]
	ldr	r3, [r4, #12]
	mov	r1, r5
	cmp	r5, r3
	ldr	r3, [r4, #28]
	beq	.L411
	mov	r2, r5
	ldr	r7, [r4, #32]
	b	.L412
.L664:
	ldr	r5, [r4, #20]
.L411:
	ldr	r2, [r3, #44]
	cbz	r2, .L419
	cmp	r1, r5
	bcc	.L667
.L419:
	ldr	r1, [r4, #32]
	ldr	r2, [r3, #20]
	cmp	r1, r2
	beq	.L420
	ldr	r3, [r4, #4]
	cmp	r3, #73
	bne	.L422
.L650:
	ldr	r3, [r4, #28]
	b	.L539
.L686:
	ldr	r2, [r4, #92]
	mov	r0, r4
	ldr	r5, [r4, #108]
	cmp	r2, #0
	ite	ge
	ldrge	r1, [r4, #56]
	movlt	r1, r3
	mov	r3, #1
	it	ge
	addge	r1, r1, r2
	subs	r2, r5, r2
	bl	_tr_flush_block(PLT)
	ldr	r8, [r4]
	ldr	r3, [r4, #108]
	ldr	r7, [r8, #28]
	str	r3, [r4, #92]
	mov	r0, r7
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r7, #20]
	ldr	r5, [r8, #16]
	cmp	r5, r3
	it	cs
	movcs	r5, r3
	cmp	r5, #0
	bne	.L668
.L518:
	ldr	r3, [r4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	itete	ne
	movne	r2, #1
	moveq	r2, #0
	movne	r0, #3
	moveq	r0, #2
.L639:
	movw	r3, #666
	str	r3, [r4, #4]
	b	.L524
.L652:
	ldr	r3, [r4, #28]
.L541:
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L447
	ldr	r3, [r4, #12]
	adds	r2, r5, #2
	cmp	r2, r3
	bhi	.L669
.L448:
	ldr	r7, [fp, #48]
	adds	r2, r5, #1
	ldr	r3, [r4, #8]
	movs	r0, #0
	str	r2, [r4, #20]
	mov	r1, r0
	mov	r2, r0
	strb	r7, [r3, r5]
	ldr	r7, [r4, #20]
	ldr	r5, [fp, #48]
	adds	r3, r7, #1
	str	r3, [r4, #20]
	ldr	r3, [r4, #8]
	lsrs	r5, r5, #8
	strb	r5, [r3, r7]
	bl	crc32(PLT)
	movs	r3, #113
	str	r0, [fp, #48]
	ldr	r5, [r4, #20]
	str	r3, [r4, #4]
	b	.L446
.L656:
	mov	r2, r7
	ldr	r1, [r8, #16]
	ldr	r0, [fp, #12]
	bl	memcpy(PLT)
	ldr	r6, [r8, #20]
	ldr	r1, [r8, #16]
	ldr	r5, [fp, #12]
	ldr	r3, [fp, #20]
	subs	r6, r6, r7
	ldr	r2, [fp, #16]
	add	r1, r1, r7
	add	r5, r5, r7
	add	r3, r3, r7
	str	r5, [fp, #12]
	subs	r0, r2, r7
	str	r1, [r8, #16]
	str	r3, [fp, #20]
	str	r0, [fp, #16]
	str	r6, [r8, #20]
	cmp	r6, #0
	bne	.L453
	ldr	r3, [r8, #8]
	str	r3, [r8, #16]
	cmp	r0, #0
	bne	.L455
	b	.L646
.L420:
	movs	r1, #0
	movs	r2, #73
	str	r1, [r4, #32]
	str	r2, [r4, #4]
.L539:
	ldr	r2, [r3, #28]
	cmp	r2, #0
	beq	.L423
	mov	r2, r5
	mov	lr, r5
	mov	r8, r6
	b	.L430
.L424:
	ldr	r0, [r4, #32]
	adds	r7, r2, #1
	ldr	r1, [r3, #28]
	ldr	r6, [r4, #8]
	adds	r3, r0, #1
	str	r3, [r4, #32]
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	str	r7, [r4, #20]
	strb	r0, [r6, r2]
	cmp	r0, #0
	beq	.L562
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #28]
.L430:
	ldr	r0, [r4, #12]
	cmp	r0, r2
	bne	.L424
	ldr	r3, [r3, #44]
	cbz	r3, .L425
	cmp	r5, r2
	bcc	.L670
.L425:
	ldr	r9, [fp, #28]
	mov	r0, r9
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r9, #20]
	ldr	r6, [fp, #16]
	cmp	r6, r3
	it	cs
	movcs	r6, r3
	cbnz	r6, .L671
.L427:
	ldr	r5, [r4, #20]
	ldr	r3, [r4, #12]
	mov	lr, r5
	cmp	r5, r3
	beq	.L561
	ldr	r3, [r4, #28]
	mov	r2, r5
	b	.L424
.L662:
	ldr	r1, [r4, #132]
	cmp	r1, #1
	ble	.L558
	cmp	r1, #5
	it	le
	movle	r1, #64
	ble	.L406
	cmp	r1, #6
	ite	ne
	movne	r1, #192
	moveq	r1, #128
	b	.L406
.L671:
	mov	r2, r6
	ldr	r1, [r9, #16]
	ldr	r0, [fp, #12]
	bl	memcpy(PLT)
	ldr	r7, [r9, #20]
	ldr	r1, [r9, #16]
	ldr	r5, [fp, #12]
	ldr	r3, [fp, #20]
	subs	r7, r7, r6
	ldr	r2, [fp, #16]
	add	r1, r1, r6
	add	r5, r5, r6
	add	r3, r3, r6
	str	r5, [fp, #12]
	subs	r2, r2, r6
	str	r1, [r9, #16]
	str	r3, [fp, #20]
	str	r2, [fp, #16]
	str	r7, [r9, #20]
	cmp	r7, #0
	bne	.L427
	ldr	r3, [r9, #8]
	str	r3, [r9, #16]
	b	.L427
.L666:
	mov	r2, r8
	ldr	r1, [r9, #16]
	ldr	r0, [fp, #12]
	bl	memcpy(PLT)
	ldr	r7, [r9, #20]
	ldr	r1, [r9, #16]
	ldr	r5, [fp, #12]
	ldr	r3, [fp, #20]
	rsb	r7, r8, r7
	ldr	r2, [fp, #16]
	add	r1, r1, r8
	add	r5, r5, r8
	add	r3, r3, r8
	str	r5, [fp, #12]
	rsb	r2, r8, r2
	str	r1, [r9, #16]
	str	r3, [fp, #20]
	str	r2, [fp, #16]
	str	r7, [r9, #20]
	cmp	r7, #0
	bne	.L415
	ldr	r3, [r9, #8]
	str	r3, [r9, #16]
	b	.L415
.L456:
	ldr	r2, [r4, #4]
	movw	r1, #666
	cmp	r2, r1
	bne	.L462
.L543:
	cmp	r3, #0
	beq	.L461
.L645:
	ldr	r3, .L694+4
	mvn	r0, #4
	ldr	r3, [r10, r3]
	ldr	r3, [r3, #28]
	str	r3, [fp, #24]
	b	.L635
.L562:
	ldr	r5, [r4, #20]
	mov	r1, lr
	mov	r6, r8
	mov	r7, r0
.L429:
	ldr	r3, [r4, #28]
	ldr	r3, [r3, #44]
	cbz	r3, .L431
	cmp	r1, r5
	bcc	.L672
.L431:
	cmp	r7, #0
	beq	.L432
	ldr	r3, [r4, #4]
	cmp	r3, #91
	bne	.L397
.L651:
	ldr	r3, [r4, #28]
.L540:
	ldr	r2, [r3, #36]
	cmp	r2, #0
	beq	.L434
	mov	r2, r5
	mov	lr, r5
	mov	r8, r6
	b	.L441
.L435:
	ldr	r0, [r4, #32]
	adds	r7, r2, #1
	ldr	r1, [r3, #36]
	ldr	r6, [r4, #8]
	adds	r3, r0, #1
	str	r3, [r4, #32]
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	str	r7, [r4, #20]
	strb	r0, [r6, r2]
	cmp	r0, #0
	beq	.L564
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #28]
.L441:
	ldr	r0, [r4, #12]
	cmp	r0, r2
	bne	.L435
	ldr	r3, [r3, #44]
	cbz	r3, .L436
	cmp	r5, r2
	bcc	.L673
.L436:
	ldr	r9, [fp, #28]
	mov	r0, r9
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r9, #20]
	ldr	r6, [fp, #16]
	cmp	r6, r3
	it	cs
	movcs	r6, r3
	cmp	r6, #0
	bne	.L674
.L438:
	ldr	r5, [r4, #20]
	ldr	r3, [r4, #12]
	mov	lr, r5
	cmp	r5, r3
	beq	.L563
	ldr	r3, [r4, #28]
	mov	r2, r5
	b	.L435
.L658:
	mov	r8, #0
	add	r5, r4, #5792
	add	r6, r4, #5760
	mov	r9, #1
	str	fp, [sp, #12]
.L514:
	ldr	r3, [r4, #116]
.L508:
	cmp	r3, #258
	bls	.L675
.L488:
	str	r8, [r4, #96]
.L542:
	ldr	r2, [r4, #108]
	ldr	r1, [r4, #56]
	cbz	r2, .L494
	subs	r0, r2, #1
	add	lr, r1, r0
	ldrb	r0, [r1, r0]	@ zero_extendqisi2
	ldrb	ip, [lr, #1]	@ zero_extendqisi2
	cmp	r0, ip
	beq	.L676
.L494:
	ldrb	r0, [r1, r2]	@ zero_extendqisi2
	ldr	r3, [r5]
	ldr	r1, [r6, #24]
	ldr	lr, [r5, #4]
	add	r2, r4, r0, lsl #2
	adds	r7, r3, #1
	strh	r8, [lr, r3, lsl #1]	@ movhi
	str	r7, [r5]
	strb	r0, [r1, r3]
	ldrh	r3, [r2, #148]
	adds	r3, r3, #1
	strh	r3, [r2, #148]	@ movhi
	ldr	r0, [r6, #28]
	ldr	r1, [r5]
	ldr	r3, [r4, #116]
	ldr	r2, [r4, #108]
	subs	r0, r0, #1
	subs	r1, r1, r0
	clz	r1, r1
	lsrs	r1, r1, #5
	subs	r3, r3, #1
	adds	r2, r2, #1
	str	r3, [r4, #116]
	str	r2, [r4, #108]
	cmp	r1, #0
	beq	.L508
.L684:
	ldr	r3, [r4, #92]
	mov	r0, r4
	cmp	r3, #0
	sub	r2, r2, r3
	itet	ge
	ldrge	r1, [r4, #56]
	movlt	r1, #0
	addge	r1, r1, r3
	movs	r3, #0
	bl	_tr_flush_block(PLT)
	ldr	fp, [r4]
	ldr	r3, [r4, #108]
	ldr	r7, [fp, #28]
	str	r3, [r4, #92]
	mov	r0, r7
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r7, #20]
	ldr	ip, [fp, #16]
	cmp	ip, r3
	it	cs
	movcs	ip, r3
	cmp	ip, #0
	bne	.L677
.L511:
	ldr	r3, [r4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L514
.L640:
	ldr	fp, [sp, #12]
	b	.L615
.L675:
	mov	r0, r4
	bl	fill_window(PLT)
	ldr	r3, [r4, #116]
	cmp	r3, #258
	bhi	.L488
	ldr	r1, [sp, #8]
	cmp	r1, #0
	beq	.L640
	cmp	r3, #0
	beq	.L491
	cmp	r3, #2
	str	r8, [r4, #96]
	bhi	.L542
	ldr	r2, [r4, #108]
	ldr	r1, [r4, #56]
	b	.L494
.L676:
	ldrb	ip, [lr, #2]	@ zero_extendqisi2
	cmp	r0, ip
	bne	.L494
	ldrb	ip, [lr, #3]	@ zero_extendqisi2
	cmp	r0, ip
	bne	.L494
	add	fp, r2, #258
	add	lr, lr, #3
	add	fp, fp, r1
	b	.L503
.L495:
	ldrb	r7, [lr, #2]	@ zero_extendqisi2
	cmp	r0, r7
	bne	.L678
	ldrb	r7, [lr, #3]	@ zero_extendqisi2
	cmp	r0, r7
	bne	.L679
	ldrb	r7, [lr, #4]	@ zero_extendqisi2
	cmp	r0, r7
	bne	.L680
	ldrb	r7, [lr, #5]	@ zero_extendqisi2
	cmp	r0, r7
	bne	.L681
	ldrb	r7, [lr, #6]	@ zero_extendqisi2
	cmp	r0, r7
	bne	.L682
	ldrb	r7, [lr, #7]	@ zero_extendqisi2
	cmp	r0, r7
	bne	.L683
	ldrb	r7, [lr, #8]!	@ zero_extendqisi2
	cmp	r0, r7
	bne	.L496
	cmp	lr, fp
	bcs	.L496
.L503:
	ldrb	r7, [lr, #1]	@ zero_extendqisi2
	cmp	r0, r7
	beq	.L495
	add	lr, lr, #1
.L496:
	rsb	r0, fp, lr
	add	r0, r0, #258
	cmp	r0, r3
	str	r0, [r4, #96]
	itt	hi
	strhi	r3, [r4, #96]
	movhi	r0, r3
	bhi	.L505
	cmp	r0, #2
	bls	.L494
.L505:
	ldr	r3, [r5]
	subs	r2, r0, #3
	ldr	r1, [r6, #24]
	uxtb	r2, r2
	ldr	lr, [r5, #4]
	ldr	r0, .L694+12
	adds	r7, r3, #1
	strh	r9, [lr, r3, lsl #1]	@ movhi
	str	r7, [r5]
	strb	r2, [r1, r3]
	ldr	r3, [r10, r0]
	ldr	r1, .L694+16
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	addw	r3, r3, #257
	add	r3, r4, r3, lsl #2
	ldrh	r2, [r3, #148]
	adds	r2, r2, #1
	strh	r2, [r3, #148]	@ movhi
	ldr	r3, [r10, r1]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r4, r3, lsl #2
	ldrh	r2, [r3, #2440]
	adds	r2, r2, #1
	strh	r2, [r3, #2440]	@ movhi
	ldr	r1, [r6, #28]
	ldr	r7, [r5]
	ldr	r0, [r4, #96]
	ldr	r3, [r4, #116]
	subs	r1, r1, #1
	ldr	r2, [r4, #108]
	subs	r1, r7, r1
	clz	r1, r1
	lsrs	r1, r1, #5
	subs	r3, r3, r0
	str	r8, [r4, #96]
	add	r2, r2, r0
	str	r3, [r4, #116]
	str	r2, [r4, #108]
	cmp	r1, #0
	beq	.L508
	b	.L684
.L670:
	ldr	r1, [r4, #8]
	subs	r2, r2, r5
	ldr	r0, [fp, #48]
	add	r1, r1, r5
	bl	crc32(PLT)
	str	r0, [fp, #48]
	b	.L425
.L665:
	ldr	r1, [r4, #8]
	subs	r2, r2, r5
	ldr	r0, [fp, #48]
	add	r1, r1, r5
	bl	crc32(PLT)
	str	r0, [fp, #48]
	b	.L413
.L647:
	ldr	r3, [r0, #4]
	cmp	r3, #0
	beq	.L390
	b	.L389
.L677:
	mov	r2, ip
	ldr	r1, [r7, #16]
	ldr	r0, [fp, #12]
	str	ip, [sp, #4]
	bl	memcpy(PLT)
	ldr	ip, [sp, #4]
	ldr	r0, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [fp, #12]
	ldr	r3, [fp, #20]
	rsb	r0, ip, r0
	ldr	lr, [fp, #16]
	add	r2, r2, ip
	add	r1, r1, ip
	str	r1, [fp, #12]
	add	r3, r3, ip
	str	r2, [r7, #16]
	rsb	r2, ip, lr
	str	r3, [fp, #20]
	str	r2, [fp, #16]
	str	r0, [r7, #20]
	cmp	r0, #0
	bne	.L511
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	b	.L511
.L447:
	movs	r3, #113
	str	r3, [r4, #4]
	b	.L446
.L674:
	mov	r2, r6
	ldr	r1, [r9, #16]
	ldr	r0, [fp, #12]
	bl	memcpy(PLT)
	ldr	r7, [r9, #20]
	ldr	r1, [r9, #16]
	ldr	r5, [fp, #12]
	ldr	r3, [fp, #20]
	subs	r7, r7, r6
	ldr	r2, [fp, #16]
	add	r1, r1, r6
	add	r5, r5, r6
	add	r3, r3, r6
	str	r5, [fp, #12]
	subs	r2, r2, r6
	str	r1, [r9, #16]
	str	r3, [fp, #20]
	str	r2, [fp, #16]
	str	r7, [r9, #20]
	cmp	r7, #0
	bne	.L438
	ldr	r3, [r9, #8]
	str	r3, [r9, #16]
	b	.L438
.L564:
	ldr	r5, [r4, #20]
	mov	r1, lr
	mov	r6, r8
	mov	r7, r0
.L440:
	ldr	r3, [r4, #28]
	ldr	r3, [r3, #44]
	cbz	r3, .L442
	cmp	r1, r5
	bcc	.L685
.L442:
	cbz	r7, .L443
	ldr	r3, [r4, #4]
	b	.L397
.L673:
	ldr	r1, [r4, #8]
	subs	r2, r2, r5
	ldr	r0, [fp, #48]
	add	r1, r1, r5
	bl	crc32(PLT)
	str	r0, [fp, #48]
	b	.L436
.L432:
	movs	r3, #91
	str	r7, [r4, #32]
	str	r3, [r4, #4]
	ldr	r3, [r4, #28]
	b	.L540
.L443:
	movs	r2, #103
	ldr	r3, [r4, #28]
	str	r2, [r4, #4]
	b	.L541
.L491:
	ldr	r5, [sp, #8]
	add	r2, r4, #5792
	ldr	fp, [sp, #12]
	str	r3, [r2, #20]
	cmp	r5, #4
	beq	.L686
	ldr	r2, [r2]
	cmp	r2, #0
	beq	.L616
	ldr	r2, [r4, #92]
	mov	r0, r4
	ldr	r5, [r4, #108]
	cmp	r2, #0
	ite	ge
	ldrge	r1, [r4, #56]
	movlt	r1, r3
	mov	r3, #0
	it	ge
	addge	r1, r1, r2
	subs	r2, r5, r2
	bl	_tr_flush_block(PLT)
	ldr	r8, [r4]
	ldr	r3, [r4, #108]
	ldr	r7, [r8, #28]
	str	r3, [r4, #92]
	mov	r0, r7
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r7, #20]
	ldr	r5, [r8, #16]
	cmp	r5, r3
	it	cs
	movcs	r5, r3
	cmp	r5, #0
	beq	.L522
	mov	r2, r5
	ldr	r1, [r7, #16]
	ldr	r0, [r8, #12]
	bl	memcpy(PLT)
	ldr	r6, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [r8, #12]
	ldr	r3, [r8, #20]
	subs	r6, r6, r5
	ldr	r0, [r8, #16]
	add	r2, r2, r5
	add	r1, r1, r5
	add	r3, r3, r5
	str	r1, [r8, #12]
	subs	r5, r0, r5
	str	r2, [r7, #16]
	str	r3, [r8, #20]
	str	r5, [r8, #16]
	str	r6, [r7, #20]
	cmp	r6, #0
	bne	.L522
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	b	.L522
.L657:
	movs	r7, #0
	add	r5, r4, #5792
	add	r6, r4, #5760
.L476:
	ldr	r8, [r4, #116]
.L470:
	cmp	r8, #0
	beq	.L687
.L466:
	ldr	r2, [r4, #108]
	ldr	r1, [r4, #56]
	str	r7, [r4, #96]
	ldr	r3, [r5]
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	ldr	r0, [r6, #24]
	ldr	lr, [r5, #4]
	add	ip, r3, #1
	add	r2, r4, r1, lsl #2
	strh	r7, [lr, r3, lsl #1]	@ movhi
	str	ip, [r5]
	strb	r1, [r0, r3]
	ldrh	r3, [r2, #148]
	adds	r3, r3, #1
	strh	r3, [r2, #148]	@ movhi
	ldr	r2, [r6, #28]
	ldr	r0, [r5]
	ldr	r1, [r4, #116]
	ldr	r3, [r4, #108]
	subs	r2, r2, #1
	cmp	r0, r2
	add	r8, r1, #-1
	add	r3, r3, #1
	str	r8, [r4, #116]
	str	r3, [r4, #108]
	bne	.L470
	ldr	r2, [r4, #92]
	mov	r0, r4
	cmp	r2, #0
	itet	ge
	ldrge	r1, [r4, #56]
	movlt	r1, #0
	addge	r1, r1, r2
	subs	r2, r3, r2
	movs	r3, #0
	bl	_tr_flush_block(PLT)
	ldr	r8, [r4]
	ldr	r3, [r4, #108]
	ldr	r9, [r8, #28]
	str	r3, [r4, #92]
	mov	r0, r9
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r9, #20]
	ldr	r10, [r8, #16]
	cmp	r10, r3
	it	cs
	movcs	r10, r3
	cmp	r10, #0
	bne	.L688
.L473:
	ldr	r3, [r4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L476
	b	.L615
.L687:
	mov	r0, r4
	bl	fill_window(PLT)
	ldr	r3, [r4, #116]
	cmp	r3, #0
	bne	.L466
	ldr	r5, [sp, #8]
	cmp	r5, #0
	beq	.L615
	cmp	r5, #4
	add	r3, r4, #5792
	str	r8, [r3, #20]
	beq	.L689
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L616
	ldr	r2, [r4, #92]
	mov	r0, r4
	ldr	r5, [r4, #108]
	movs	r3, #0
	cmp	r2, #0
	itet	ge
	ldrge	r1, [r4, #56]
	movlt	r1, r8
	addge	r1, r1, r2
	subs	r2, r5, r2
	bl	_tr_flush_block(PLT)
	ldr	r7, [r4]
	ldr	r3, [r4, #108]
	ldr	r5, [r7, #28]
	str	r3, [r4, #92]
	mov	r0, r5
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r5, #20]
	ldr	r8, [r7, #16]
	cmp	r8, r3
	it	cs
	movcs	r8, r3
	cmp	r8, #0
	bne	.L690
.L522:
	ldr	r3, [r4]
	ldr	r0, [r3, #16]
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	subs	r3, r0, #2
	mov	r2, r0
	b	.L486
.L688:
	mov	r2, r10
	ldr	r1, [r9, #16]
	ldr	r0, [r8, #12]
	bl	memcpy(PLT)
	ldr	r0, [r9, #20]
	ldr	r2, [r9, #16]
	ldr	r1, [r8, #12]
	ldr	r3, [r8, #20]
	rsb	r0, r10, r0
	ldr	lr, [r8, #16]
	add	r2, r2, r10
	add	r1, r1, r10
	str	r1, [r8, #12]
	add	r3, r3, r10
	str	r2, [r9, #16]
	rsb	r2, r10, lr
	str	r3, [r8, #20]
	str	r2, [r8, #16]
	str	r0, [r9, #20]
	cmp	r0, #0
	bne	.L473
	ldr	r3, [r9, #8]
	str	r3, [r9, #16]
	b	.L473
.L546:
	mvn	r0, #1
	b	.L635
.L672:
	ldr	r3, [r4, #8]
	subs	r2, r5, r1
	ldr	r0, [fp, #48]
	add	r1, r1, r3
	bl	crc32(PLT)
	ldr	r5, [r4, #20]
	str	r0, [fp, #48]
	b	.L431
.L685:
	ldr	r3, [r4, #8]
	subs	r2, r5, r1
	ldr	r0, [fp, #48]
	add	r1, r1, r3
	bl	crc32(PLT)
	ldr	r5, [r4, #20]
	str	r0, [fp, #48]
	b	.L442
.L667:
	ldr	r3, [r4, #8]
	subs	r2, r5, r1
	ldr	r0, [fp, #48]
	add	r1, r1, r3
	bl	crc32(PLT)
	ldr	r3, [r4, #28]
	ldr	r5, [r4, #20]
	str	r0, [fp, #48]
	b	.L419
.L655:
	mov	r2, r5
	ldr	r1, [r6, #16]
	ldr	r0, [fp, #12]
	bl	memcpy(PLT)
	ldr	r3, [r6, #20]
	ldr	r1, [r6, #16]
	ldr	r0, [fp, #12]
	ldr	r2, [fp, #20]
	subs	r3, r3, r5
	ldr	r7, [fp, #16]
	add	r1, r1, r5
	add	r0, r0, r5
	add	r2, r2, r5
	str	r0, [fp, #12]
	subs	r5, r7, r5
	str	r1, [r6, #16]
	str	r2, [fp, #20]
	str	r5, [fp, #16]
	str	r3, [r6, #20]
	cmp	r3, #0
	bne	.L536
	ldr	r3, [r6, #8]
	str	r3, [r6, #16]
	b	.L536
.L561:
	mov	r1, r5
	mov	r6, r8
	movs	r7, #1
	b	.L429
.L695:
	.align	2
.L694:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	z_errmsg(GOT)
	.word	.LANCHOR0-(.LPIC23+4)
	.word	_length_code(GOT)
	.word	_dist_code(GOT)
.L563:
	mov	r1, r5
	mov	r6, r8
	movs	r7, #1
	b	.L440
.L423:
	movs	r2, #91
	str	r2, [r4, #4]
	b	.L540
.L434:
	movs	r2, #103
	str	r2, [r4, #4]
	b	.L541
.L410:
	movs	r2, #73
	ldr	r5, [r4, #20]
	str	r2, [r4, #4]
	b	.L539
.L669:
	ldr	r7, [fp, #28]
	mov	r0, r7
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r7, #20]
	ldr	r8, [fp, #16]
	cmp	r8, r3
	it	cs
	movcs	r8, r3
	cmp	r8, #0
	bne	.L691
.L450:
	ldr	r5, [r4, #20]
	ldr	r3, [r4, #12]
	adds	r2, r5, #2
	cmp	r2, r3
	bhi	.L446
	b	.L448
.L654:
	ldr	r3, [r4, #20]
	ldr	r1, [fp, #48]
	ldr	r2, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r1, [fp, #48]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	lsrs	r1, r1, #8
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r3, [r4, #20]
	ldrh	r1, [fp, #50]
	ldr	r2, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r3, [r4, #20]
	ldrb	r1, [fp, #51]	@ zero_extendqisi2
	ldr	r2, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r3, [r4, #20]
	ldr	r1, [fp, #8]
	ldr	r2, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r1, [fp, #8]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	lsrs	r1, r1, #8
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	ldrh	r1, [fp, #10]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r3, [r4, #20]
	ldrb	r1, [fp, #11]	@ zero_extendqisi2
	ldr	r2, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	b	.L534
.L661:
	movs	r0, #0
	movs	r7, #31
	mov	r1, r0
	mov	r2, r0
	bl	crc32(PLT)
	ldr	r3, [r4, #20]
	movs	r1, #139
	ldr	r2, [r4, #8]
	str	r0, [fp, #48]
	movs	r0, #8
	add	lr, r3, #1
	str	lr, [r4, #20]
	strb	r7, [r2, r3]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	adds	r7, r3, #1
	str	r7, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	adds	r1, r3, #1
	str	r1, [r4, #20]
	strb	r0, [r2, r3]
	ldr	r3, [r4, #28]
	cmp	r3, #0
	beq	.L692
	ldr	r2, [r3, #44]
	ldr	r7, [r3]
	ldr	lr, [r3, #16]
	ldr	r0, [r3, #28]
	cmp	r2, #0
	ite	ne
	movne	r2, #2
	moveq	r2, #0
	ldr	r1, [r3, #36]
	cmp	r7, #0
	ite	eq
	moveq	r7, r2
	addne	r7, r2, #1
	ldr	r3, [r4, #20]
	cmp	lr, #0
	ite	ne
	movne	r2, #4
	moveq	r2, #0
	cmp	r0, #0
	ite	ne
	movne	r0, #8
	moveq	r0, #0
	add	r7, r7, r2
	ldr	r2, [r4, #8]
	add	r7, r7, r0
	cmp	r1, #0
	ite	ne
	movne	r1, #16
	moveq	r1, #0
	adds	r0, r3, #1
	add	r1, r1, r7
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r1, [r4, #28]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	ldr	r1, [r1, #4]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r1, [r4, #28]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	ldr	r1, [r1, #4]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	lsrs	r1, r1, #8
	strb	r1, [r2, r3]
	ldr	r1, [r4, #28]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	ldrh	r1, [r1, #6]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r1, [r4, #28]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	ldrb	r1, [r1, #7]	@ zero_extendqisi2
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r2, r3, #1
	str	r2, [r4, #20]
	ldr	r2, [r4, #132]
	cmp	r2, #9
	beq	.L402
	ldr	r0, [r4, #136]
	cmp	r2, #1
	ite	le
	movle	r5, #4
	movgt	r5, #0
	cmp	r0, #1
	it	gt
	movgt	r5, #4
.L402:
	strb	r5, [r1, r3]
	ldr	r1, [r4, #28]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	ldr	r1, [r1, #12]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldr	r3, [r4, #28]
	ldr	r2, [r3, #16]
	cbz	r2, .L403
	ldr	r2, [r4, #20]
	ldr	r1, [r3, #20]
	ldr	r3, [r4, #8]
	adds	r0, r2, #1
	str	r0, [r4, #20]
	strb	r1, [r3, r2]
	ldr	r1, [r4, #28]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	ldr	r1, [r1, #20]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	lsrs	r1, r1, #8
	strb	r1, [r2, r3]
	ldr	r3, [r4, #28]
.L403:
	ldr	r2, [r3, #44]
	cmp	r2, #0
	bne	.L693
.L404:
	movs	r1, #0
	movs	r2, #69
	str	r1, [r4, #32]
	str	r2, [r4, #4]
	b	.L405
.L691:
	mov	r2, r8
	ldr	r1, [r7, #16]
	ldr	r0, [fp, #12]
	bl	memcpy(PLT)
	ldr	r5, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [fp, #12]
	ldr	r3, [fp, #20]
	rsb	r5, r8, r5
	ldr	r0, [fp, #16]
	add	r2, r2, r8
	add	r1, r1, r8
	str	r1, [fp, #12]
	add	r3, r3, r8
	str	r2, [r7, #16]
	rsb	r2, r8, r0
	str	r3, [fp, #20]
	str	r2, [fp, #16]
	str	r5, [r7, #20]
	cmp	r5, #0
	bne	.L450
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	b	.L450
.L689:
	ldr	r2, [r4, #92]
	mov	r0, r4
	ldr	r5, [r4, #108]
	movs	r3, #1
	cmp	r2, #0
	itet	ge
	ldrge	r1, [r4, #56]
	movlt	r1, r8
	addge	r1, r1, r2
	subs	r2, r5, r2
	bl	_tr_flush_block(PLT)
	ldr	r7, [r4]
	ldr	r3, [r4, #108]
	ldr	r5, [r7, #28]
	str	r3, [r4, #92]
	mov	r0, r5
	bl	_tr_flush_bits(PLT)
	ldr	r3, [r5, #20]
	ldr	r8, [r7, #16]
	cmp	r8, r3
	it	cs
	movcs	r8, r3
	cmp	r8, #0
	beq	.L518
	mov	r2, r8
	ldr	r1, [r5, #16]
	ldr	r0, [r7, #12]
	bl	memcpy(PLT)
	ldr	r6, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #20]
	rsb	r6, r8, r6
	ldr	r2, [r7, #16]
	add	r1, r1, r8
	add	r0, r0, r8
	add	r3, r3, r8
	str	r0, [r7, #12]
	rsb	r2, r8, r2
	str	r1, [r5, #16]
	str	r3, [r7, #20]
	str	r2, [r7, #16]
	str	r6, [r5, #20]
	cmp	r6, #0
	bne	.L518
	ldr	r3, [r5, #8]
	str	r3, [r5, #16]
	b	.L518
.L660:
	mov	r0, r2
	cmp	r0, #0
	bne	.L464
	b	.L646
.L659:
	mov	r0, r4
	bl	_tr_align(PLT)
	b	.L528
.L668:
	mov	r2, r5
	ldr	r1, [r7, #16]
	ldr	r0, [r8, #12]
	bl	memcpy(PLT)
	ldr	r6, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [r8, #12]
	ldr	r3, [r8, #20]
	subs	r6, r6, r5
	ldr	r0, [r8, #16]
	add	r2, r2, r5
	add	r1, r1, r5
	add	r3, r3, r5
	str	r1, [r8, #12]
	subs	r5, r0, r5
	str	r2, [r7, #16]
	str	r3, [r8, #20]
	str	r5, [r8, #16]
	str	r6, [r7, #20]
	cmp	r6, #0
	bne	.L518
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	b	.L518
.L690:
	mov	r2, r8
	ldr	r1, [r5, #16]
	ldr	r0, [r7, #12]
	bl	memcpy(PLT)
	ldr	r6, [r5, #20]
	ldr	r1, [r5, #16]
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #20]
	rsb	r6, r8, r6
	ldr	r2, [r7, #16]
	add	r1, r1, r8
	add	r0, r0, r8
	add	r3, r3, r8
	str	r0, [r7, #12]
	rsb	r2, r8, r2
	str	r1, [r5, #16]
	str	r3, [r7, #20]
	str	r2, [r7, #16]
	str	r6, [r5, #20]
	cmp	r6, #0
	bne	.L522
	ldr	r3, [r5, #8]
	str	r3, [r5, #16]
	b	.L522
.L693:
	ldr	r0, [fp, #48]
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #20]
	bl	crc32(PLT)
	ldr	r3, [r4, #28]
	str	r0, [fp, #48]
	b	.L404
.L683:
	add	lr, lr, #7
	b	.L496
.L682:
	add	lr, lr, #6
	b	.L496
.L681:
	add	lr, lr, #5
	b	.L496
.L678:
	add	lr, lr, #2
	b	.L496
.L680:
	add	lr, lr, #4
	b	.L496
.L679:
	add	lr, lr, #3
	b	.L496
.L692:
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r0, r2, #1
	str	r0, [r4, #20]
	strb	r3, [r1, r2]
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r0, r2, #1
	str	r0, [r4, #20]
	strb	r3, [r1, r2]
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r0, r2, #1
	str	r0, [r4, #20]
	strb	r3, [r1, r2]
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r0, r2, #1
	str	r0, [r4, #20]
	strb	r3, [r1, r2]
	ldr	r2, [r4, #20]
	ldr	r1, [r4, #8]
	adds	r0, r2, #1
	str	r0, [r4, #20]
	strb	r3, [r1, r2]
	ldr	r2, [r4, #132]
	ldr	r3, [r4, #20]
	ldr	r0, [r4, #8]
	cmp	r2, #9
	add	r1, r3, #1
	str	r1, [r4, #20]
	beq	.L396
	ldr	r1, [r4, #136]
	cmp	r2, #1
	ite	le
	movle	r5, #4
	movgt	r5, #0
	cmp	r1, #1
	it	gt
	movgt	r5, #4
.L396:
	strb	r5, [r0, r3]
	movs	r1, #113
	ldr	r3, [r4, #20]
	movs	r0, #3
	ldr	r2, [r4, #8]
	adds	r5, r3, #1
	str	r5, [r4, #20]
	strb	r0, [r2, r3]
	str	r1, [r4, #4]
	ldr	r5, [r4, #20]
	b	.L446
	.size	deflate, .-deflate
	.section	.text.deflateParams,"ax",%progbits
	.align	2
	.global	deflateParams
	.thumb
	.thumb_func
	.type	deflateParams, %function
deflateParams:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L704
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r4, [r0, #28]
	cmp	r4, #0
	beq	.L708
	mov	r6, r2
	adds	r2, r1, #1
	mov	r5, r1
	beq	.L706
	cmp	r1, #9
	bhi	.L708
.L698:
	cmp	r6, #4
	bhi	.L708
	ldr	r3, [r4, #132]
	ldr	r2, .L715
	ldr	r1, [r4, #136]
	add	r7, r3, r3, lsl #1
.LPIC24:
	add	r2, pc
	cmp	r1, r6
	add	r7, r2, r7, lsl #2
	ldr	r7, [r7, #8]
	beq	.L713
	ldr	r2, [r0, #8]
	cbnz	r2, .L714
.L710:
	mov	r0, r2
.L700:
	cmp	r5, r3
	beq	.L703
	add	r2, r5, r5, lsl #1
	ldr	r1, .L715+4
	str	r5, [r4, #132]
	lsls	r2, r2, #2
.LPIC26:
	add	r1, pc
	adds	r3, r1, r2
	ldrh	r5, [r1, r2]
	ldrh	r1, [r3, #2]
	ldrh	r2, [r3, #4]
	ldrh	r3, [r3, #6]
	str	r5, [r4, #140]
	str	r1, [r4, #128]
	str	r2, [r4, #144]
	str	r3, [r4, #124]
.L703:
	str	r6, [r4, #136]
	pop	{r3, r4, r5, r6, r7, pc}
.L706:
	movs	r5, #6
	b	.L698
.L713:
	add	r1, r5, r5, lsl #1
	add	r2, r2, r1, lsl #2
	ldr	r2, [r2, #8]
	cmp	r2, r7
	it	eq
	moveq	r0, #0
	beq	.L700
	ldr	r2, [r0, #8]
	cmp	r2, #0
	beq	.L710
.L714:
	movs	r1, #5
	bl	deflate(PLT)
	adds	r3, r0, #5
	beq	.L701
.L712:
	ldr	r3, [r4, #132]
	b	.L700
.L701:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	bne	.L712
	mov	r0, r3
	b	.L712
.L708:
	mvn	r0, #1
	pop	{r3, r4, r5, r6, r7, pc}
.L704:
	mvn	r0, #1
	bx	lr
.L716:
	.align	2
.L715:
	.word	.LANCHOR0-(.LPIC24+4)
	.word	.LANCHOR0-(.LPIC26+4)
	.size	deflateParams, .-deflateParams
	.section	.text.deflateEnd,"ax",%progbits
	.align	2
	.global	deflateEnd
	.thumb
	.thumb_func
	.type	deflateEnd, %function
deflateEnd:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	cmp	r0, #0
	beq	.L726
	ldr	r3, [r0, #28]
	cmp	r3, #0
	beq	.L726
	ldr	r5, [r3, #4]
	cmp	r5, #42
	it	ne
	cmpne	r5, #69
	bne	.L750
.L719:
	ldr	r1, [r3, #8]
	cbz	r1, .L720
	ldr	r3, [r4, #36]
	ldr	r0, [r4, #40]
	blx	r3
	ldr	r3, [r4, #28]
.L720:
	ldr	r1, [r3, #68]
	cbz	r1, .L721
	ldr	r3, [r4, #36]
	ldr	r0, [r4, #40]
	blx	r3
	ldr	r3, [r4, #28]
.L721:
	ldr	r1, [r3, #64]
	cbz	r1, .L722
	ldr	r3, [r4, #36]
	ldr	r0, [r4, #40]
	blx	r3
	ldr	r3, [r4, #28]
.L722:
	ldr	r1, [r3, #56]
	cbz	r1, .L723
	ldr	r3, [r4, #36]
	ldr	r0, [r4, #40]
	blx	r3
	ldr	r3, [r4, #28]
.L723:
	ldr	r0, [r4, #40]
	mov	r1, r3
	ldr	r3, [r4, #36]
	blx	r3
	cmp	r5, #113
	mov	r3, #0
	ite	ne
	movne	r0, r3
	mvneq	r0, #2
	str	r3, [r4, #28]
	pop	{r3, r4, r5, pc}
.L750:
	cmp	r5, #73
	it	ne
	cmpne	r5, #91
	beq	.L719
	cmp	r5, #103
	it	ne
	cmpne	r5, #113
	beq	.L719
	movw	r2, #666
	cmp	r5, r2
	beq	.L719
.L726:
	mvn	r0, #1
	pop	{r3, r4, r5, pc}
	.size	deflateEnd, .-deflateEnd
	.section	.text.deflateInit2_,"ax",%progbits
	.align	2
	.global	deflateInit2_
	.thumb
	.thumb_func
	.type	deflateInit2_, %function
deflateInit2_:
	@ args = 16, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r4, [sp, #56]
	mov	r5, r0
	ldr	r10, .L783
	ldr	r7, [sp, #48]
	ldr	r9, [sp, #52]
	ldr	r0, [sp, #60]
.LPIC30:
	add	r10, pc
	cmp	r4, #0
	beq	.L765
	mov	r6, r1
	ldrb	r1, [r4]	@ zero_extendqisi2
	cmp	r1, #49
	bne	.L765
	cmp	r0, #56
	bne	.L765
	cmp	r5, #0
	beq	.L759
	ldr	r4, [r5, #32]
	movs	r1, #0
	str	r1, [r5, #24]
	cmp	r4, #0
	beq	.L781
	ldr	r1, [r5, #36]
	cmp	r1, #0
	beq	.L782
.L755:
	cmp	r6, #-1
	it	eq
	moveq	r6, #6
	cmp	r3, #0
	itt	lt
	rsblt	r3, r3, #0
	movlt	r8, #0
	blt	.L758
	cmp	r3, #15
	itte	gt
	subgt	r3, r3, #16
	movgt	r8, #2
	movle	r8, #1
.L758:
	subs	r1, r7, #1
	cmp	r1, #8
	bhi	.L759
	sub	r1, r3, #8
	cmp	r1, #7
	it	ls
	cmpls	r2, #8
	bne	.L759
	cmp	r6, #9
	bhi	.L759
	cmp	r9, #4
	bhi	.L759
	cmp	r3, #8
	ldr	r0, [r5, #40]
	it	eq
	moveq	r3, #9
	movs	r1, #1
	str	r3, [sp]
	movw	r2, #5828
	str	r3, [sp, #4]
	blx	r4
	ldr	r3, [sp]
	mov	r4, r0
	cmp	r0, #0
	beq	.L769
	movw	r2, #43691
	add	r1, r7, #9
	movt	r2, 43690
	mov	fp, #1
	umull	r0, r2, r2, r1
	lsl	r1, fp, r3
	add	lr, r7, #7
	str	r4, [r5, #28]
	subs	r3, r1, #1
	lsl	r0, fp, lr
	str	r3, [r4, #52]
	ldr	r3, [sp, #4]
	add	ip, r0, #-1
	lsr	r2, r2, fp
	str	r0, [r4, #76]
	movs	r0, #0
	str	lr, [r4, #80]
	str	ip, [r4, #84]
	adds	r7, r7, #6
	str	r8, [r4, #24]
	lsl	r7, fp, r7
	str	r3, [r4, #48]
	add	r8, r4, #5760
	str	r1, [r4, #44]
	str	r2, [r4, #88]
	movs	r2, #2
	str	r0, [r4, #28]
	ldr	r3, [r5, #32]
	str	r5, [r4]
	ldr	r0, [r5, #40]
	blx	r3
	ldr	r3, [r5, #32]
	movs	r2, #2
	str	r0, [r4, #56]
	ldr	r1, [r4, #44]
	ldr	r0, [r5, #40]
	blx	r3
	ldr	r3, [r5, #32]
	movs	r2, #2
	str	r0, [r4, #64]
	ldr	r1, [r4, #76]
	ldr	r0, [r5, #40]
	blx	r3
	add	r1, r4, #5824
	str	r0, [r4, #68]
	movs	r0, #0
	ldr	r3, [r5, #32]
	movs	r2, #4
	str	r0, [r1]
	mov	r1, r7
	str	r7, [r8, #28]
	ldr	r0, [r5, #40]
	blx	r3
	ldr	r3, [r8, #28]
	ldr	r2, [r4, #56]
	str	r0, [r4, #8]
	lsls	r1, r3, #2
	str	r1, [r4, #12]
	cmp	r2, #0
	beq	.L761
	ldr	r2, [r4, #64]
	cbz	r2, .L761
	ldr	r2, [r4, #68]
	cbz	r2, .L761
	cbz	r0, .L761
	add	r1, r3, r3, lsl #1
	bic	r3, r3, #1
	add	r3, r3, r0
	add	r1, r1, r0
	add	r7, r4, #5792
	movs	r2, #8
	str	r3, [r7, #4]
	mov	r0, r5
	str	r1, [r8, #24]
	str	r6, [r4, #132]
	str	r9, [r4, #136]
	strb	r2, [r4, #36]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	deflateReset(PLT)
.L765:
	mvn	r0, #5
.L752:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L759:
	mvn	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L781:
	ldr	r1, .L783+4
	ldr	r1, [r10, r1]
	str	r4, [r5, #40]
	str	r1, [r5, #32]
	mov	r4, r1
	ldr	r1, [r5, #36]
	cmp	r1, #0
	bne	.L755
.L782:
	ldr	r1, .L783+8
	ldr	r1, [r10, r1]
	str	r1, [r5, #36]
	b	.L755
.L761:
	ldr	r3, .L783+12
	movw	r2, #666
	str	r2, [r4, #4]
	mov	r0, r5
	ldr	r3, [r10, r3]
	ldr	r3, [r3, #24]
	str	r3, [r5, #24]
	bl	deflateEnd(PLT)
	mvn	r0, #3
	b	.L752
.L769:
	mvn	r0, #3
	b	.L752
.L784:
	.align	2
.L783:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC30+4)
	.word	zcalloc(GOT)
	.word	zcfree(GOT)
	.word	z_errmsg(GOT)
	.size	deflateInit2_, .-deflateInit2_
	.section	.text.deflateInit_,"ax",%progbits
	.align	2
	.global	deflateInit_
	.thumb
	.thumb_func
	.type	deflateInit_, %function
deflateInit_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	movs	r4, #8
	sub	sp, sp, #20
	movs	r5, #0
	str	r2, [sp, #8]
	mov	r2, r4
	str	r3, [sp, #12]
	movs	r3, #15
	stmia	sp, {r4, r5}
	bl	deflateInit2_(PLT)
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
	.size	deflateInit_, .-deflateInit_
	.section	.text.deflateCopy,"ax",%progbits
	.align	2
	.global	deflateCopy
	.thumb
	.thumb_func
	.type	deflateCopy, %function
deflateCopy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	beq	.L793
	ldr	r6, [r1, #28]
	cmp	r6, #0
	beq	.L793
	mov	r3, r1
	add	r2, r1, #48
.L789:
	ldr	lr, [r3]	@ unaligned
	adds	r3, r3, #16
	ldr	r7, [r3, #-12]	@ unaligned
	adds	r0, r0, #16
	ldr	r4, [r3, #-8]	@ unaligned
	ldr	r1, [r3, #-4]	@ unaligned
	cmp	r3, r2
	str	lr, [r0, #-16]	@ unaligned
	str	r7, [r0, #-12]	@ unaligned
	str	r4, [r0, #-8]	@ unaligned
	str	r1, [r0, #-4]	@ unaligned
	bne	.L789
	ldr	r4, [r3]	@ unaligned
	movs	r1, #1
	ldr	r3, [r3, #4]	@ unaligned
	movw	r2, #5828
	str	r4, [r0]	@ unaligned
	str	r3, [r0, #4]	@ unaligned
	ldr	r3, [r5, #32]
	ldr	r0, [r5, #40]
	blx	r3
	mov	r4, r0
	cmp	r0, #0
	beq	.L794
	mov	r1, r6
	movw	r2, #5828
	str	r0, [r5, #28]
	add	r8, r0, #5760
	bl	memcpy(PLT)
	movs	r2, #2
	ldr	r3, [r5, #32]
	ldr	r1, [r4, #44]
	str	r5, [r4]
	ldr	r0, [r5, #40]
	blx	r3
	ldr	r3, [r5, #32]
	movs	r2, #2
	str	r0, [r4, #56]
	ldr	r1, [r4, #44]
	ldr	r0, [r5, #40]
	blx	r3
	ldr	r3, [r5, #32]
	movs	r2, #2
	str	r0, [r4, #64]
	ldr	r1, [r4, #76]
	ldr	r0, [r5, #40]
	blx	r3
	ldr	r1, [r8, #28]
	movs	r2, #4
	str	r0, [r4, #68]
	ldr	r3, [r5, #32]
	ldr	r0, [r5, #40]
	blx	r3
	mov	r7, r0
	ldr	r0, [r4, #56]
	str	r7, [r4, #8]
	cmp	r0, #0
	beq	.L790
	ldr	r3, [r4, #64]
	cmp	r3, #0
	beq	.L790
	ldr	r3, [r4, #68]
	cmp	r3, #0
	beq	.L790
	cmp	r7, #0
	beq	.L790
	ldr	r2, [r4, #44]
	addw	r5, r4, #2440
	ldr	r1, [r6, #56]
	lsls	r2, r2, #1
	bl	memcpy(PLT)
	ldr	r2, [r4, #44]
	ldr	r1, [r6, #64]
	ldr	r0, [r4, #64]
	lsls	r2, r2, #1
	bl	memcpy(PLT)
	ldr	r2, [r4, #76]
	ldr	r1, [r6, #68]
	ldr	r0, [r4, #68]
	lsls	r2, r2, #1
	bl	memcpy(PLT)
	ldr	r1, [r6, #8]
	ldr	r2, [r4, #12]
	ldr	r0, [r4, #8]
	bl	memcpy(PLT)
	ldr	r3, [r8, #28]
	add	ip, r4, #5792
	ldr	r1, [r6, #8]
	add	lr, r4, #148
	ldr	r0, [r6, #16]
	ldr	r2, [r4, #8]
	bic	r6, r3, #1
	add	r3, r3, r3, lsl #1
	add	r7, r7, r6
	subs	r0, r0, r1
	add	r0, r0, r2
	addw	r1, r4, #2684
	add	r2, r2, r3
	str	r0, [r4, #16]
	str	r7, [ip, #4]
	movs	r0, #0
	str	r2, [r8, #24]
	str	lr, [r4, #2840]
	str	r5, [r4, #2852]
	str	r1, [r4, #2864]
	pop	{r4, r5, r6, r7, r8, pc}
.L793:
	mvn	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L790:
	mov	r0, r5
	bl	deflateEnd(PLT)
	mvn	r0, #3
	pop	{r4, r5, r6, r7, r8, pc}
.L794:
	mvn	r0, #3
	pop	{r4, r5, r6, r7, r8, pc}
	.size	deflateCopy, .-deflateCopy
	.global	deflate_copyright
	.section	.rodata.deflate_copyright,"a",%progbits
	.align	3
	.type	deflate_copyright, %object
	.size	deflate_copyright, 68
deflate_copyright:
	.ascii	" deflate 1.2.8 Copyright 1995-2013 Jean-loup Gailly"
	.ascii	" and Mark Adler \000"
	.section	.data.rel.ro.local.configuration_table,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	configuration_table, %object
	.size	configuration_table, 120
configuration_table:
	.short	0
	.short	0
	.short	0
	.short	0
	.word	deflate_stored
	.short	4
	.short	4
	.short	8
	.short	4
	.word	deflate_fast
	.short	4
	.short	5
	.short	16
	.short	8
	.word	deflate_fast
	.short	4
	.short	6
	.short	32
	.short	32
	.word	deflate_fast
	.short	4
	.short	4
	.short	16
	.short	16
	.word	deflate_slow
	.short	8
	.short	16
	.short	32
	.short	32
	.word	deflate_slow
	.short	8
	.short	16
	.short	128
	.short	128
	.word	deflate_slow
	.short	8
	.short	32
	.short	128
	.short	256
	.word	deflate_slow
	.short	32
	.short	128
	.short	258
	.short	1024
	.word	deflate_slow
	.short	32
	.short	258
	.short	258
	.short	4096
	.word	deflate_slow
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
