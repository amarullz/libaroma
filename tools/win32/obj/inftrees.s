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
	.file	"inftrees.c"
	.section	.text.inflate_table,"ax",%progbits
	.align	2
	.global	inflate_table
	.thumb
	.thumb_func
	.type	inflate_table, %function
inflate_table:
	@ args = 8, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r5, #0
	sub	sp, sp, #124
	str	r3, [sp, #12]
	str	r1, [sp, #24]
	str	r5, [sp, #56]
	str	r5, [sp, #60]
	str	r5, [sp, #64]
	str	r5, [sp, #68]
	str	r5, [sp, #72]
	str	r5, [sp, #76]
	str	r5, [sp, #80]
	str	r5, [sp, #84]
	ldr	r3, [sp, #164]
	cmp	r2, #0
	beq	.L8
	cmp	r2, #16
	sub	lr, r2, #15
	bls	.L84
	ldr	r1, [sp, #24]
	adds	r1, r1, #46
.L7:
	ldrh	r6, [r1, #-46]
	add	ip, sp, #120
	pld	[r1]
	add	r7, r5, #17
	cmp	lr, r7
	add	r4, r5, #16
	mov	r5, r4
	add	r1, r1, #32
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-76]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-74]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-72]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-70]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-68]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-66]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-64]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-62]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-60]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-58]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-56]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-54]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-52]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-50]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	add	ip, sp, #120
	ldrh	r6, [r1, #-48]
	add	r6, ip, r6, lsl #1
	ldrh	ip, [r6, #-64]
	add	ip, ip, #1
	strh	ip, [r6, #-64]	@ movhi
	bhi	.L7
.L6:
	ldr	r1, [sp, #24]
	add	r5, r4, #-2147483648
	subs	r5, r5, #1
	add	r5, r1, r5, lsl #1
.L9:
	ldrh	r1, [r5, #2]!
	add	r6, sp, #120
	adds	r4, r4, #1
	cmp	r4, r2
	add	r1, r6, r1, lsl #1
	ldrh	r6, [r1, #-64]
	add	r6, r6, #1
	strh	r6, [r1, #-64]	@ movhi
	bcc	.L9
.L8:
	ldrh	r6, [sp, #86]
	ldr	r1, [sp, #160]
	ldr	r5, [r1]
	cmp	r6, #0
	bne	.L70
	ldrh	r1, [sp, #84]
	cmp	r1, #0
	bne	.L71
	ldrh	r1, [sp, #82]
	cmp	r1, #0
	bne	.L72
	ldrh	r1, [sp, #80]
	cmp	r1, #0
	bne	.L73
	ldrh	r1, [sp, #78]
	cmp	r1, #0
	bne	.L74
	ldrh	r1, [sp, #76]
	cmp	r1, #0
	bne	.L75
	ldrh	r1, [sp, #74]
	cmp	r1, #0
	bne	.L76
	ldrh	r1, [sp, #72]
	cmp	r1, #0
	bne	.L77
	ldrh	r1, [sp, #70]
	cmp	r1, #0
	bne	.L78
	ldrh	r1, [sp, #68]
	cmp	r1, #0
	bne	.L79
	ldrh	r1, [sp, #66]
	cmp	r1, #0
	bne	.L80
	ldrh	r1, [sp, #64]
	cmp	r1, #0
	bne	.L81
	ldrh	r1, [sp, #62]
	cmp	r1, #0
	bne	.L82
	ldrh	r4, [sp, #60]
	cmp	r4, #0
	bne	.L83
	ldrh	r1, [sp, #58]
	cbnz	r1, .L163
	ldr	r7, [sp, #12]
	movs	r2, #1
	movs	r4, #64
	ldr	ip, [sp, #160]
	mov	r0, r1
	ldr	r3, [r7]
	adds	r5, r3, #4
	str	r5, [r7]
	strh	r1, [r3, #2]	@ movhi
	strb	r4, [r3]
	strb	r2, [r3, #1]
	ldr	r3, [r7]
	adds	r5, r3, #4
	str	r5, [r7]
	strb	r4, [r3]
	strb	r2, [r3, #1]
	strh	r1, [r3, #2]	@ movhi
	str	r2, [ip]
.L151:
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L84:
	mov	r4, r5
	b	.L6
.L163:
	cmp	r5, #1
	mov	lr, #1
	it	cs
	movcs	r5, #1
.L67:
	rsbs	r1, r1, #2
	bmi	.L126
	ldrh	r4, [sp, #60]
	mov	r8, #1
.L69:
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #62]
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #64]
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #66]
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #68]
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #70]
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #72]
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #74]
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #76]
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #78]
	rsbs	r4, r4, r1, lsl #1
	bmi	.L126
	ldrh	r1, [sp, #80]
	rsbs	r1, r1, r4, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #82]
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	ldrh	r4, [sp, #84]
	rsbs	r1, r4, r1, lsl #1
	bmi	.L126
	rsb	r1, r6, r1, lsl #1
	cmp	r1, #0
	blt	.L126
	beq	.L14
	clz	r1, r0
	lsrs	r1, r1, #5
	cmp	lr, #1
	it	ne
	orrne	r1, r1, #1
	cmp	r1, #0
	bne	.L126
.L14:
	ldrh	r6, [sp, #58]
	movs	r1, #0
	ldrh	r7, [sp, #60]
	ldrh	r4, [sp, #62]
	strh	r6, [sp, #92]	@ movhi
	add	r7, r7, r6
	ldrh	r6, [sp, #64]
	uxth	r7, r7
	ldrh	ip, [sp, #66]
	strh	r1, [sp, #90]	@ movhi
	add	r4, r4, r7
	strh	r7, [sp, #94]	@ movhi
	uxth	r4, r4
	ldrh	r7, [sp, #68]
	add	r6, r6, r4
	strh	r4, [sp, #96]	@ movhi
	uxth	r6, r6
	ldrh	r4, [sp, #70]
	add	ip, ip, r6
	strh	r6, [sp, #98]	@ movhi
	uxth	ip, ip
	ldrh	r6, [sp, #72]
	add	r7, r7, ip
	strh	ip, [sp, #100]	@ movhi
	uxth	r7, r7
	ldrh	ip, [sp, #74]
	add	r4, r4, r7
	strh	r7, [sp, #102]	@ movhi
	uxth	r4, r4
	ldrh	r7, [sp, #76]
	add	r6, r6, r4
	strh	r4, [sp, #104]	@ movhi
	uxth	r6, r6
	ldrh	r4, [sp, #78]
	add	ip, ip, r6
	strh	r6, [sp, #106]	@ movhi
	uxth	ip, ip
	ldrh	r6, [sp, #80]
	add	r7, r7, ip
	strh	ip, [sp, #108]	@ movhi
	uxth	r7, r7
	ldrh	ip, [sp, #82]
	add	r4, r4, r7
	strh	r7, [sp, #110]	@ movhi
	uxth	r4, r4
	ldrh	r7, [sp, #84]
	add	r6, r6, r4
	strh	r4, [sp, #112]	@ movhi
	uxth	r6, r6
	add	r4, r6, ip
	strh	r6, [sp, #114]	@ movhi
	uxth	r4, r4
	add	r7, r7, r4
	strh	r4, [sp, #116]	@ movhi
	ldr	r4, [sp, #24]
	strh	r7, [sp, #118]	@ movhi
	subs	r6, r4, #2
	cbz	r2, .L20
.L21:
	ldrh	r4, [r6, #2]!
	add	ip, sp, #120
	add	r7, ip, r4, lsl #1
	cbz	r4, .L19
	ldrh	r4, [r7, #-32]
	add	ip, r4, #1
	strh	r1, [r3, r4, lsl #1]	@ movhi
	strh	ip, [r7, #-32]	@ movhi
.L19:
	adds	r1, r1, #1
	cmp	r1, r2
	bne	.L21
.L20:
	cmp	r0, #0
	beq	.L127
	cmp	r0, #1
	bne	.L152
	mov	r2, #256
	ldr	r1, .L164
	str	r2, [sp, #28]
	ldr	r2, .L164+4
.LPIC16:
	add	r1, pc
	subw	r1, r1, #514
.LPIC17:
	add	r2, pc
	str	r1, [sp, #52]
	subw	r2, r2, #514
	str	r2, [sp, #48]
.L17:
	ldr	r1, [sp, #12]
	cmp	r5, r8
	mov	r10, #1
	it	cc
	movcc	r5, r8
	rsb	r7, r10, r0
	clz	r7, r7
	ldr	r1, [r1]
	lsrs	r7, r7, #5
	lsl	r2, r10, r5
	str	r5, [sp, #16]
	str	r7, [sp, #36]
	str	r1, [sp, #8]
	mov	r1, r7
	cmp	r2, #852
	ite	ls
	movls	r1, #0
	andhi	r1, r1, #1
	cmp	r1, #0
	bne	.L23
	sub	r0, #2
	clz	r0, r0
	lsrs	r0, r0, #5
	str	r0, [sp, #44]
	cmp	r2, #592
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	bne	.L23
	ldr	r9, [sp, #16]
	subs	r3, r3, #2
	mov	ip, r0
	mov	r1, r8
	str	r2, [sp, #20]
	subs	r2, r2, #1
	str	r3, [sp, #4]
	mov	r3, #-1
	str	r2, [sp, #40]
	str	r3, [sp, #32]
.L24:
	ldr	r5, [sp, #4]
	ldr	r6, [sp, #28]
	ldrh	r4, [r5, #2]!
	cmp	r6, r4
	str	r5, [sp, #4]
	it	gt
	movgt	r6, #0
	uxtb	r5, r1
	it	gt
	strgt	r6, [sp]
	bgt	.L25
	itete	lt
	ldrlt	r2, [sp, #52]
	movge	r4, #0
	ldrlt	r3, [sp, #48]
	movge	r2, #96
	iteee	ge
	strge	r2, [sp]
	ldrblt	r2, [r2, r4, lsl #1]	@ zero_extendqisi2
	ldrhlt	r4, [r3, r4, lsl #1]
	strlt	r2, [sp]
.L25:
	lsl	fp, r10, r9
	ldr	r7, [sp, #8]
	lsr	r3, r0, ip
	lsl	r1, r10, r1
	add	r3, r3, fp
	rsb	r6, r1, r1, lsl #30
	subs	r3, r3, r1
	add	r3, r7, r3, lsl #2
	ldr	r7, [sp]
	lsls	r6, r6, #2
	mov	r2, fp
.L27:
	subs	r2, r2, r1
	strb	r7, [r3]
	strb	r5, [r3, #1]
	strh	r4, [r3, #2]	@ movhi
	add	r3, r3, r6
	bne	.L27
	add	r3, r8, #-1
	lsl	r3, r10, r3
	tst	r3, r0
	beq	.L28
.L29:
	lsrs	r3, r3, #1
	tst	r0, r3
	bne	.L29
.L28:
	cmp	r3, #0
	beq	.L130
	subs	r2, r3, #1
	ands	r0, r0, r2
	add	r0, r0, r3
.L30:
	add	r1, sp, #120
	add	r2, r1, r8, lsl #1
	ldrh	r3, [r2, #-64]
	subs	r3, r3, #1
	uxth	r3, r3
	strh	r3, [r2, #-64]	@ movhi
	cbnz	r3, .L31
	cmp	r8, lr
	beq	.L32
	ldr	r2, [sp, #4]
	ldr	r4, [sp, #24]
	ldrh	r3, [r2, #2]
	ldrh	r8, [r4, r3, lsl #1]
.L31:
	ldr	r5, [sp, #16]
	cmp	r5, r8
	bcs	.L158
	ldr	r2, [sp, #40]
	ldr	r6, [sp, #32]
	ands	r2, r2, r0
	cmp	r2, r6
	beq	.L158
	ldr	r1, [sp, #8]
	ldr	r7, [sp, #16]
	add	r1, r1, fp, lsl #2
	cmp	ip, #0
	it	eq
	moveq	ip, r7
	cmp	r8, lr
	rsb	r9, ip, r8
	str	r1, [sp, #8]
	lsl	r3, r10, r9
	mov	r1, r9
	bcs	.L133
	add	r5, sp, #120
	add	r4, r5, r8, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L133
	add	r5, r9, #1
	lsls	r3, r3, #1
	add	r4, r5, ip
	cmp	r4, lr
	bcs	.L161
	add	r6, sp, #120
	add	r4, r6, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L161
	add	r5, r9, #2
	lsls	r3, r3, #1
	add	r4, r5, ip
	cmp	r4, lr
	bcs	.L161
	add	r7, sp, #120
	add	r4, r7, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L161
	add	r9, r9, #3
	lsls	r3, r3, #1
	add	r5, r9, ip
	cmp	r5, lr
	bcs	.L133
	add	r4, sp, #120
	add	r5, r4, r5, lsl #1
	ldrh	r4, [r5, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L159
	adds	r4, r1, #4
	lsls	r3, r3, #1
	add	r5, r4, ip
	cmp	r5, lr
	bcs	.L160
	add	r6, sp, #120
	add	r5, r6, r5, lsl #1
	ldrh	r5, [r5, #-64]
	subs	r3, r3, r5
	cmp	r3, #0
	ble	.L160
	add	r9, r1, #5
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r7, sp, #120
	add	r4, r7, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L133
	add	r9, r1, #6
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r5, sp, #120
	add	r4, r5, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L133
	add	r9, r1, #7
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r6, sp, #120
	add	r4, r6, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L133
	add	r9, r1, #8
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r7, sp, #120
	add	r4, r7, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L133
	add	r9, r1, #9
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r5, sp, #120
	add	r4, r5, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L159
	add	r9, r1, #10
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r6, sp, #120
	add	r4, r6, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L133
	add	r9, r1, #11
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r7, sp, #120
	add	r4, r7, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L133
	add	r9, r1, #12
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r5, sp, #120
	add	r4, r5, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L133
	add	r9, r1, #13
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r6, sp, #120
	add	r4, r6, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L133
	add	r9, r1, #14
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r7, sp, #120
	add	r4, r7, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	ble	.L159
	add	r9, r1, #15
	lsls	r3, r3, #1
	add	r4, r9, ip
	cmp	r4, lr
	bcs	.L133
	add	r5, sp, #120
	add	r4, r5, r4, lsl #1
	ldrh	r4, [r4, #-64]
	subs	r3, r3, r4
	cmp	r3, #0
	itt	gt
	addgt	r9, r1, #16
	movgt	r4, r9
	ble	.L133
.L35:
	ldr	r6, [sp, #20]
	lsl	r4, r10, r4
	ldr	r3, [sp, #36]
	add	r6, r6, r4
	cmp	r6, #852
	ite	ls
	movls	r3, #0
	andhi	r3, r3, #1
	str	r6, [sp, #20]
	cbnz	r3, .L23
	ldr	r3, [sp, #44]
	cmp	r6, #592
	ite	ls
	movls	r3, #0
	andhi	r3, r3, #1
	cbnz	r3, .L23
	ldr	r7, [sp, #12]
	lsls	r4, r2, #2
	str	r2, [sp, #32]
	ldr	r5, [sp, #8]
	ldr	r3, [r7]
	strb	r9, [r3, r2, lsl #2]
	ldr	r3, [r7]
	ldr	r2, [sp, #16]
	add	r3, r3, r4
	strb	r2, [r3, #1]
	ldr	r3, [r7]
	subs	r2, r5, r3
	add	r3, r3, r4
	asrs	r2, r2, #2
	strh	r2, [r3, #2]	@ movhi
	b	.L24
.L158:
	rsb	r1, ip, r8
	b	.L24
.L130:
	mov	r0, r3
	b	.L30
.L133:
	mov	r4, r9
	b	.L35
.L126:
	mov	r0, #-1
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L23:
	movs	r0, #1
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L159:
	mov	r4, r9
.L160:
	mov	r9, r4
	b	.L35
.L161:
	mov	r9, r5
	mov	r4, r5
	b	.L35
.L127:
	movs	r6, #19
	str	r3, [sp, #52]
	str	r3, [sp, #48]
	str	r6, [sp, #28]
	b	.L17
.L152:
	ldr	r2, .L164+8
	mov	r1, #-1
	ldr	r4, .L164+12
	str	r1, [sp, #28]
.LPIC18:
	add	r2, pc
.LPIC19:
	add	r4, pc
	str	r2, [sp, #52]
	str	r4, [sp, #48]
	b	.L17
.L32:
	cbz	r0, .L66
	ldr	r6, [sp, #8]
	movs	r1, #64
	strb	r1, [r6, r0, lsl #2]
	add	r2, r6, r0, lsl #2
	strb	r5, [r2, #1]
	strh	r3, [r2, #2]	@ movhi
.L66:
	ldr	r7, [sp, #12]
	movs	r0, #0
	ldr	ip, [sp, #20]
	ldr	r1, [sp, #16]
	ldr	r3, [r7]
	ldr	r2, [sp, #160]
	add	r3, r3, ip, lsl #2
	str	r3, [r7]
	str	r1, [r2]
	b	.L151
.L71:
	mov	lr, #14
.L3:
	ldrh	r1, [sp, #58]
	cmp	r5, lr
	it	cs
	movcs	r5, lr
	cmp	r1, #0
	bne	.L67
	cmp	lr, #2
	bls	.L85
	ldrh	r4, [sp, #60]
	cmp	r4, #0
	bne	.L86
	cmp	lr, #3
	bls	.L87
	ldrh	r1, [sp, #62]
	cmp	r1, #0
	bne	.L87
	cmp	lr, #4
	bls	.L89
	ldrh	r1, [sp, #64]
	cmp	r1, #0
	bne	.L89
	cmp	lr, #5
	bls	.L91
	ldrh	r1, [sp, #66]
	cmp	r1, #0
	bne	.L91
	cmp	lr, #6
	bls	.L93
	ldrh	r1, [sp, #68]
	cmp	r1, #0
	bne	.L93
	cmp	lr, #7
	bls	.L95
	ldrh	r1, [sp, #70]
	cmp	r1, #0
	bne	.L95
	cmp	lr, #8
	bls	.L97
	ldrh	r1, [sp, #72]
	cbnz	r1, .L97
	cmp	lr, #9
	bls	.L99
	ldrh	r1, [sp, #74]
	cbnz	r1, .L99
	cmp	lr, #10
	bls	.L101
	ldrh	r1, [sp, #76]
	cbnz	r1, .L101
	cmp	lr, #11
	bls	.L103
	ldrh	r1, [sp, #78]
	cbnz	r1, .L103
	cmp	lr, #12
	bls	.L105
	ldrh	r1, [sp, #80]
	cbnz	r1, .L105
	cmp	lr, #13
	bls	.L107
	ldrh	r1, [sp, #82]
	cbnz	r1, .L107
	cmp	lr, #14
	bls	.L109
	ldrh	r8, [sp, #84]
	cmp	r8, #0
	ite	eq
	moveq	r8, #15
	movne	r8, #14
.L13:
	movs	r1, #2
	b	.L69
.L87:
	mov	r8, #3
	b	.L13
.L107:
	mov	r8, #13
	b	.L13
.L105:
	mov	r8, #12
	b	.L13
.L103:
	mov	r8, #11
	b	.L13
.L101:
	mov	r8, #10
	b	.L13
.L99:
	mov	r8, #9
	b	.L13
.L97:
	mov	r8, #8
	b	.L13
.L95:
	mov	r8, #7
	b	.L13
.L93:
	mov	r8, #6
	b	.L13
.L91:
	mov	r8, #5
	b	.L13
.L89:
	mov	r8, #4
	b	.L13
.L70:
	mov	lr, #15
	b	.L3
.L73:
	mov	lr, #12
	b	.L3
.L72:
	mov	lr, #13
	b	.L3
.L75:
	mov	lr, #10
	b	.L3
.L74:
	mov	lr, #11
	b	.L3
.L77:
	mov	lr, #8
	b	.L3
.L76:
	mov	lr, #9
	b	.L3
.L78:
	mov	lr, #7
	b	.L3
.L79:
	mov	lr, #6
	b	.L3
.L81:
	mov	lr, #4
	b	.L3
.L80:
	mov	lr, #5
	b	.L3
.L109:
	mov	r8, #14
	b	.L13
.L86:
	mov	r8, #2
	b	.L13
.L85:
	mov	r8, #2
	ldrh	r4, [sp, #60]
	b	.L13
.L83:
	mov	lr, #2
	b	.L3
.L82:
	mov	lr, #3
	b	.L3
.L165:
	.align	2
.L164:
	.word	.LANCHOR0-(.LPIC16+4)
	.word	.LANCHOR1-(.LPIC17+4)
	.word	.LANCHOR2-(.LPIC18+4)
	.word	.LANCHOR3-(.LPIC19+4)
	.size	inflate_table, .-inflate_table
	.global	inflate_copyright
	.section	.rodata.dbase.6918,"a",%progbits
	.align	3
.LANCHOR3 = . + 0
	.type	dbase.6918, %object
	.size	dbase.6918, 64
dbase.6918:
	.short	1
	.short	2
	.short	3
	.short	4
	.short	5
	.short	7
	.short	9
	.short	13
	.short	17
	.short	25
	.short	33
	.short	49
	.short	65
	.short	97
	.short	129
	.short	193
	.short	257
	.short	385
	.short	513
	.short	769
	.short	1025
	.short	1537
	.short	2049
	.short	3073
	.short	4097
	.short	6145
	.short	8193
	.short	12289
	.short	16385
	.short	24577
	.short	0
	.short	0
	.section	.rodata.lbase.6916,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	lbase.6916, %object
	.size	lbase.6916, 62
lbase.6916:
	.short	3
	.short	4
	.short	5
	.short	6
	.short	7
	.short	8
	.short	9
	.short	10
	.short	11
	.short	13
	.short	15
	.short	17
	.short	19
	.short	23
	.short	27
	.short	31
	.short	35
	.short	43
	.short	51
	.short	59
	.short	67
	.short	83
	.short	99
	.short	115
	.short	131
	.short	163
	.short	195
	.short	227
	.short	258
	.short	0
	.short	0
	.section	.rodata.lext.6917,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	lext.6917, %object
	.size	lext.6917, 62
lext.6917:
	.short	16
	.short	16
	.short	16
	.short	16
	.short	16
	.short	16
	.short	16
	.short	16
	.short	17
	.short	17
	.short	17
	.short	17
	.short	18
	.short	18
	.short	18
	.short	18
	.short	19
	.short	19
	.short	19
	.short	19
	.short	20
	.short	20
	.short	20
	.short	20
	.short	21
	.short	21
	.short	21
	.short	21
	.short	16
	.short	72
	.short	78
	.section	.rodata.inflate_copyright,"a",%progbits
	.align	3
	.type	inflate_copyright, %object
	.size	inflate_copyright, 47
inflate_copyright:
	.ascii	" inflate 1.2.8 Copyright 1995-2013 Mark Adler \000"
	.section	.rodata.dext.6919,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	dext.6919, %object
	.size	dext.6919, 64
dext.6919:
	.short	16
	.short	16
	.short	16
	.short	16
	.short	17
	.short	17
	.short	18
	.short	18
	.short	19
	.short	19
	.short	20
	.short	20
	.short	21
	.short	21
	.short	22
	.short	22
	.short	23
	.short	23
	.short	24
	.short	24
	.short	25
	.short	25
	.short	26
	.short	26
	.short	27
	.short	27
	.short	28
	.short	28
	.short	29
	.short	29
	.short	64
	.short	64
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
