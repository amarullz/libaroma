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
	.file	"trees.c"
	.section	.text.send_tree,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	send_tree, %function
send_tree:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
	ldrh	r10, [r1, #2]
	cmp	r10, #0
	itete	eq
	moveq	r5, #3
	movne	r5, #4
	moveq	r4, #138
	movne	r4, #7
	cmp	r2, #0
	blt	.L1
	add	r3, r1, r2, lsl #2
	mov	r9, #0
	mov	r2, #-1
	str	r1, [sp, #4]
	add	ip, r0, #5792
	adds	r3, r3, #4
	str	r3, [sp, #12]
.L26:
	add	r3, r9, #1
	ldrh	r1, [r1, #6]
	cmp	r3, r4
	str	r1, [sp, #8]
	bge	.L4
	cmp	r10, r1
	beq	.L28
.L4:
	cmp	r3, r5
	bge	.L6
	ldr	fp, [ip, #28]
	add	r4, r0, r10, lsl #2
	ldrh	r2, [ip, #24]
	add	r5, ip, #28
	add	r1, ip, #24
	mov	r6, fp
	b	.L10
.L39:
	ldrh	r7, [r4, #2684]
	subs	r3, r3, #1
	ldr	lr, [r0, #20]
	ldr	r9, [r0, #8]
	lsl	fp, r7, r6
	add	r6, lr, #1
	orr	r2, fp, r2
	uxth	r2, r2
	strh	r2, [r1]	@ movhi
	str	r6, [r0, #20]
	strb	r2, [r9, lr]
	ldr	r6, [r0, #20]
	ldrh	lr, [r1]
	add	r2, r6, #1
	str	r2, [r0, #20]
	ldr	r2, [r0, #8]
	lsr	lr, lr, #8
	strb	lr, [r2, r6]
	ldr	r6, [r5]
	rsb	r2, r6, #16
	add	r6, r6, r8
	asr	r2, r7, r2
	uxth	r2, r2
	strh	r2, [r1]	@ movhi
	str	r6, [r5]
	beq	.L9
.L10:
	ldrh	r7, [r4, #2686]
	rsb	lr, r7, #16
	sub	r8, r7, #16
	cmp	lr, r6
	blt	.L39
	ldrh	lr, [r4, #2684]
	subs	r3, r3, #1
	lsl	lr, lr, r6
	add	r6, r6, r7
	orr	r2, lr, r2
	uxth	r2, r2
	strh	r2, [r1]	@ movhi
	str	r6, [r5]
	bne	.L10
.L9:
	ldr	r1, [sp, #8]
	cmp	r1, #0
	beq	.L29
.L41:
	cmp	r10, r1
	mov	r9, #0
	itete	ne
	movne	r5, #4
	moveq	r5, #3
	movne	r4, #7
	moveq	r4, #6
.L5:
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r2, r2, #4
	cmp	r2, r3
	str	r2, [sp, #4]
	beq	.L1
	mov	r2, r10
	ldr	r1, [sp, #4]
	ldr	r10, [sp, #8]
	b	.L26
.L6:
	cmp	r10, #0
	beq	.L11
	cmp	r2, r10
	beq	.L40
	add	r3, r0, r10, lsl #2
	ldr	r2, [ip, #28]
	add	r5, ip, #28
	ldrh	r7, [r3, #2686]
	rsb	r1, r7, #16
	cmp	r2, r1
	ble	.L14
	ldrh	r4, [r3, #2684]
	subs	r7, r7, #16
	ldrh	lr, [ip, #24]
	add	r1, ip, #24
	ldr	r3, [r0, #20]
	ldr	r6, [r0, #8]
	lsl	r2, r4, r2
	orr	r2, r2, lr
	add	lr, r3, #1
	uxth	r2, r2
	strh	r2, [ip, #24]	@ movhi
	str	lr, [r0, #20]
	strb	r2, [r6, r3]
	ldr	r2, [r0, #20]
	ldrh	r6, [ip, #24]
	adds	r3, r2, #1
	str	r3, [r0, #20]
	ldr	r3, [r0, #8]
	lsrs	r6, r6, #8
	strb	r6, [r3, r2]
	ldr	r2, [ip, #28]
	rsb	r3, r2, #16
	add	r7, r7, r2
	asr	r3, r4, r3
	str	r7, [ip, #28]
	uxth	r3, r3
	strh	r3, [ip, #24]	@ movhi
.L13:
	ldrh	r8, [r0, #2750]
	rsb	r2, r8, #16
	cmp	r2, r7
	ldrh	r2, [r0, #2748]
	bge	.L15
	lsl	lr, r2, r7
	ldr	r4, [r0, #20]
	ldr	r6, [r0, #8]
	sub	r8, r8, #16
	orr	r3, lr, r3
	sub	r9, r9, #3
	uxth	r3, r3
	adds	r7, r4, #1
	strh	r3, [r1]	@ movhi
	str	r7, [r0, #20]
	strb	r3, [r6, r4]
	ldrh	r6, [r1]
	ldr	r4, [r0, #20]
	ldr	r3, [r0, #8]
	lsrs	r6, r6, #8
	adds	r7, r4, #1
	str	r7, [r0, #20]
	strb	r6, [r3, r4]
	ldr	r4, [r5]
	rsb	r3, r4, #16
	add	r4, r4, r8
	asr	r3, r2, r3
	cmp	r4, #14
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	str	r4, [r5]
	ble	.L17
.L42:
	uxth	r9, r9
	ldr	r2, [r0, #20]
	ldr	r6, [r0, #8]
	lsl	r4, r9, r4
	adds	r7, r2, #1
	orrs	r3, r3, r4
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	str	r7, [r0, #20]
	strb	r3, [r6, r2]
	ldrh	r4, [r1]
	ldr	r2, [r0, #20]
	ldr	r3, [r0, #8]
	lsrs	r4, r4, #8
	adds	r6, r2, #1
	str	r6, [r0, #20]
	strb	r4, [r3, r2]
	ldr	r3, [r5]
	rsb	r2, r3, #16
	subs	r3, r3, #14
	asr	r9, r9, r2
	strh	r9, [r1]	@ movhi
	ldr	r1, [sp, #8]
	str	r3, [r5]
	cmp	r1, #0
	bne	.L41
.L29:
	mov	r9, r1
	movs	r5, #3
	movs	r4, #138
	b	.L5
.L11:
	cmp	r3, #10
	bgt	.L18
	ldrh	r2, [r0, #2754]
	ldr	r7, [ip, #28]
	rsb	r1, r2, #16
	cmp	r7, r1
	ble	.L19
	ldrh	r4, [r0, #2752]
	sub	lr, r2, #16
	ldrh	r5, [ip, #24]
	add	r1, ip, #24
	ldr	r2, [r0, #20]
	ldr	r6, [r0, #8]
	lsl	r7, r4, r7
	orrs	r5, r5, r7
	adds	r7, r2, #1
	uxth	r5, r5
	strh	r5, [ip, #24]	@ movhi
	str	r7, [r0, #20]
	strb	r5, [r6, r2]
	ldrh	r6, [ip, #24]
	ldr	r5, [r0, #20]
	ldr	r2, [r0, #8]
	lsrs	r6, r6, #8
	adds	r7, r5, #1
	str	r7, [r0, #20]
	strb	r6, [r2, r5]
	ldr	r2, [ip, #28]
	rsb	r5, r2, #16
	add	r2, r2, lr
	asrs	r4, r4, r5
	cmp	r2, #13
	str	r2, [ip, #28]
	uxth	r4, r4
	strh	r4, [ip, #24]	@ movhi
	ble	.L21
.L43:
	sub	r5, r9, #2
	ldr	r3, [r0, #20]
	uxth	r5, r5
	ldr	r6, [r0, #8]
	lsl	r2, r5, r2
	adds	r7, r3, #1
	orrs	r2, r2, r4
	uxth	r2, r2
	strh	r2, [r1]	@ movhi
	str	r7, [r0, #20]
	strb	r2, [r6, r3]
	ldrh	r4, [r1]
	ldr	r2, [r0, #20]
	ldr	r3, [r0, #8]
	lsrs	r4, r4, #8
	adds	r6, r2, #1
	str	r6, [r0, #20]
	strb	r4, [r3, r2]
	ldr	r3, [ip, #28]
	rsb	r2, r3, #16
	subs	r3, r3, #13
	asrs	r5, r5, r2
	strh	r5, [r1]	@ movhi
	str	r3, [ip, #28]
	b	.L9
.L28:
	mov	r9, r3
	mov	r10, r2
	b	.L5
.L15:
	add	r4, r8, r7
	lsl	r7, r2, r7
	cmp	r4, #14
	orr	r3, r3, r7
	sub	r9, r9, #3
	uxth	r3, r3
	strh	r3, [r1]	@ movhi
	str	r4, [r5]
	bgt	.L42
.L17:
	uxth	r9, r9
	adds	r2, r4, #2
	lsl	r4, r9, r4
	orrs	r3, r3, r4
	strh	r3, [r1]	@ movhi
	str	r2, [r5]
	b	.L9
.L18:
	ldrh	r2, [r0, #2758]
	ldr	r7, [ip, #28]
	rsb	r1, r2, #16
	cmp	r7, r1
	ble	.L22
	ldrh	r4, [r0, #2756]
	sub	lr, r2, #16
	ldrh	r5, [ip, #24]
	add	r1, ip, #24
	ldr	r2, [r0, #20]
	ldr	r6, [r0, #8]
	lsl	r7, r4, r7
	orrs	r5, r5, r7
	adds	r7, r2, #1
	uxth	r5, r5
	strh	r5, [ip, #24]	@ movhi
	str	r7, [r0, #20]
	strb	r5, [r6, r2]
	ldrh	r6, [ip, #24]
	ldr	r5, [r0, #20]
	ldr	r2, [r0, #8]
	lsrs	r6, r6, #8
	adds	r7, r5, #1
	str	r7, [r0, #20]
	strb	r6, [r2, r5]
	ldr	r2, [ip, #28]
	rsb	r5, r2, #16
	add	r2, r2, lr
	asrs	r4, r4, r5
	str	r2, [ip, #28]
	uxth	r4, r4
	strh	r4, [ip, #24]	@ movhi
.L23:
	cmp	r2, #9
	ble	.L24
	sub	r5, r9, #10
	ldr	r3, [r0, #20]
	uxth	r5, r5
	ldr	r6, [r0, #8]
	lsl	r2, r5, r2
	adds	r7, r3, #1
	orrs	r2, r2, r4
	uxth	r2, r2
	strh	r2, [r1]	@ movhi
	str	r7, [r0, #20]
	strb	r2, [r6, r3]
	ldrh	r4, [r1]
	ldr	r2, [r0, #20]
	ldr	r3, [r0, #8]
	lsrs	r4, r4, #8
	adds	r6, r2, #1
	str	r6, [r0, #20]
	strb	r4, [r3, r2]
	ldr	r3, [ip, #28]
	rsb	r2, r3, #16
	subs	r3, r3, #9
	asrs	r5, r5, r2
	strh	r5, [r1]	@ movhi
	str	r3, [ip, #28]
	b	.L9
.L1:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L14:
	ldrh	r3, [r3, #2684]
	add	r7, r7, r2
	ldrh	r4, [ip, #24]
	add	r1, ip, #24
	str	r7, [ip, #28]
	lsls	r3, r3, r2
	orrs	r3, r3, r4
	uxth	r3, r3
	strh	r3, [ip, #24]	@ movhi
	b	.L13
.L40:
	mov	r9, r3
	add	r5, ip, #28
	ldr	r7, [ip, #28]
	add	r1, ip, #24
	ldrh	r3, [ip, #24]
	b	.L13
.L19:
	ldrh	r5, [r0, #2752]
	add	r2, r2, r7
	ldrh	r4, [ip, #24]
	cmp	r2, #13
	add	r1, ip, #24
	str	r2, [ip, #28]
	lsl	r7, r5, r7
	orr	r4, r4, r7
	uxth	r4, r4
	strh	r4, [ip, #24]	@ movhi
	bgt	.L43
.L21:
	subs	r3, r3, #3
	adds	r5, r2, #3
.L37:
	uxth	r3, r3
	lsl	r2, r3, r2
	orrs	r4, r4, r2
	strh	r4, [r1]	@ movhi
	str	r5, [ip, #28]
	b	.L9
.L24:
	subs	r3, r3, #11
	adds	r5, r2, #7
	b	.L37
.L22:
	ldrh	r5, [r0, #2756]
	add	r2, r2, r7
	ldrh	r4, [ip, #24]
	add	r1, ip, #24
	str	r2, [ip, #28]
	lsl	r7, r5, r7
	orrs	r4, r4, r7
	uxth	r4, r4
	strh	r4, [ip, #24]	@ movhi
	b	.L23
	.size	send_tree, .-send_tree
	.section	.text.compress_block,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	compress_block, %function
compress_block:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	fp, r0, #5792
	mov	r10, r1
	ldr	r3, [fp]
	sub	sp, sp, #52
	ldr	r1, .L74
	str	r2, [sp, #24]
.LPIC8:
	add	r1, pc
	str	r1, [sp, #12]
	cbnz	r3, .L45
	ldrh	r2, [r10, #1026]
	ldr	r3, [fp, #28]
	ldrh	r1, [fp, #24]
	rsb	r4, r2, #16
	cmp	r4, r3
	blt	.L71
.L60:
	ldrh	r0, [r10, #1024]
	add	r2, r2, r3
	str	r2, [fp, #28]
	lsl	r3, r0, r3
	orrs	r1, r1, r3
	strh	r1, [fp, #24]	@ movhi
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L45:
	ldr	r5, .L74+4
	add	r2, r0, #5792
	ldr	r7, .L74+8
	add	r4, r0, #5760
	str	r4, [sp, #16]
	mov	r4, r2
.LPIC9:
	add	r5, pc
	ldr	r8, .L74+12
	str	r5, [sp, #28]
	mov	r5, r2
	adds	r5, r5, #4
.LPIC11:
	add	r7, pc
	str	r5, [sp, #20]
.LPIC12:
	add	r8, pc
	ldr	r5, [sp, #16]
	adds	r2, r2, #24
	str	r7, [sp, #32]
	adds	r4, r4, #28
	ldr	r7, .L74+16
	mov	lr, #0
	adds	r5, r5, #24
	ldr	r3, [fp, #28]
	str	r5, [sp, #16]
	mov	r5, fp
.LPIC10:
	add	r7, pc
	ldrh	r1, [fp, #24]
	str	r8, [sp, #40]
	mov	fp, r10
	str	r7, [sp, #44]
	mov	r10, r5
	b	.L59
.L72:
	sxth	lr, lr
	add	r6, fp, lr, lsl #2
	ldrh	r7, [r6, #2]
	rsb	r6, r7, #16
	cmp	r6, r3
	ldrh	r6, [fp, lr, lsl #2]
	bge	.L48
	sub	lr, r7, #16
	ldr	r7, [r0, #20]
	lsl	r8, r6, r3
	ldr	ip, [r0, #8]
	adds	r3, r7, #1
	orr	r1, r8, r1
.L70:
	uxth	r1, r1
	strh	r1, [r2]	@ movhi
	str	r3, [r0, #20]
	strb	r1, [ip, r7]
	ldr	r1, [r0, #20]
	ldrh	r7, [r2]
	adds	r3, r1, #1
	str	r3, [r0, #20]
	ldr	r3, [r0, #8]
	lsrs	r7, r7, #8
	strb	r7, [r3, r1]
	ldr	r3, [r4]
	rsb	r1, r3, #16
	add	r3, r3, lr
	asr	r1, r6, r1
	uxth	r1, r1
	strh	r1, [r2]	@ movhi
	str	r3, [r4]
.L49:
	ldr	r6, [r10]
	cmp	r5, r6
	bcs	.L68
.L73:
	mov	lr, r5
.L59:
	ldr	r7, [sp, #20]
	add	r5, lr, #1
	ldr	r8, [sp, #16]
	ldr	r6, [r7]
	ldr	r7, [r8]
	ldrh	r6, [r6, lr, lsl #1]
	ldrb	lr, [r7, lr]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L72
	ldr	r8, [sp, #12]
	ldr	r7, .L74+20
	ldr	r7, [r8, r7]
	ldrb	r7, [r7, lr]	@ zero_extendqisi2
	addw	ip, r7, #257
	str	r7, [sp, #4]
	add	r8, fp, ip, lsl #2
	ldrh	ip, [fp, ip, lsl #2]
	ldrh	r9, [r8, #2]
	rsb	r8, r9, #16
	cmp	r8, r3
	bge	.L50
	ldr	r7, [r0, #8]
	lsl	r3, ip, r3
	ldr	r8, [r0, #20]
	sub	r9, r9, #16
	str	r3, [sp, #36]
	str	r7, [sp, #8]
	ldr	r7, [sp, #36]
	add	r3, r8, #1
	orrs	r1, r1, r7
	uxth	r1, r1
	strh	r1, [r2]	@ movhi
	str	r3, [r0, #20]
	ldr	r3, [sp, #8]
	strb	r1, [r3, r8]
	ldrh	r8, [r2]
	ldr	r1, [r0, #20]
	ldr	r7, [r0, #8]
	lsr	r8, r8, #8
	adds	r3, r1, #1
	str	r3, [r0, #20]
	strb	r8, [r7, r1]
	ldr	r1, [r4]
	rsb	r3, r1, #16
	add	r9, r9, r1
	asr	ip, ip, r3
	uxth	ip, ip
	strh	ip, [r2]	@ movhi
	str	r9, [r4]
.L51:
	ldr	r7, [sp, #4]
	ldr	r8, [sp, #28]
	ldr	r3, [r8, r7, lsl #2]
	cbz	r3, .L52
	ldr	r1, [sp, #44]
	ldr	r7, [r1, r7, lsl #2]
	rsb	r1, r3, #16
	cmp	r1, r9
	rsb	r7, r7, lr
	uxth	r7, r7
	bge	.L53
	lsl	r9, r7, r9
	ldr	r1, [r0, #20]
	sub	lr, r3, #16
	ldr	r3, [r0, #8]
	orr	ip, r9, ip
	uxth	ip, ip
	add	r8, r1, #1
	strh	ip, [r2]	@ movhi
	str	r8, [r0, #20]
	strb	ip, [r3, r1]
	ldr	r1, [r0, #20]
	ldrh	ip, [r2]
	adds	r3, r1, #1
	str	r3, [r0, #20]
	ldr	r3, [r0, #8]
	lsr	ip, ip, #8
	strb	ip, [r3, r1]
	ldr	r3, [r4]
	rsb	ip, r3, #16
	add	r9, r3, lr
	asr	ip, r7, ip
	uxth	ip, ip
	strh	ip, [r2]	@ movhi
	str	r9, [r4]
.L52:
	subs	r6, r6, #1
	ldr	r3, .L74+24
	cmp	r6, #255
	ldr	lr, [sp, #24]
	itete	hi
	ldrhi	r8, [sp, #12]
	ldrls	r7, [sp, #12]
	ldrhi	r3, [r8, r3]
	ldrls	r3, [r7, r3]
	itet	hi
	addhi	r3, r3, r6, lsr #7
	ldrbls	r7, [r3, r6]	@ zero_extendqisi2
	ldrbhi	r7, [r3, #256]	@ zero_extendqisi2
	add	r3, lr, r7, lsl #2
	ldrh	r3, [r3, #2]
	rsb	r1, r3, #16
	cmp	r1, r9
	bge	.L56
	ldrh	lr, [lr, r7, lsl #2]
	subs	r3, r3, #16
	ldr	r1, [r0, #20]
	ldr	r8, [r0, #8]
	str	r3, [sp, #36]
	lsl	r9, lr, r9
	adds	r3, r1, #1
	orr	r9, r9, ip
	uxth	r9, r9
	strh	r9, [r2]	@ movhi
	str	r3, [r0, #20]
	strb	r9, [r8, r1]
	ldrh	ip, [r2]
	ldr	r1, [r0, #20]
	ldr	r3, [r0, #8]
	lsr	ip, ip, #8
	add	r8, r1, #1
	str	r8, [r0, #20]
	strb	ip, [r3, r1]
	ldr	ip, [r4]
	ldr	r3, [sp, #36]
	rsb	r1, ip, #16
	asr	r1, lr, r1
	add	r3, r3, ip
	uxth	r1, r1
	strh	r1, [r2]	@ movhi
	str	r3, [r4]
.L57:
	ldr	ip, [sp, #32]
	ldr	lr, [ip, r7, lsl #2]
	cmp	lr, #0
	beq	.L49
	ldr	r8, [sp, #40]
	ldr	ip, [r8, r7, lsl #2]
	rsb	r7, lr, #16
	cmp	r7, r3
	rsb	r6, ip, r6
	uxth	r6, r6
	bge	.L58
	ldr	r7, [r0, #20]
	lsl	r3, r6, r3
	sub	lr, lr, #16
	ldr	ip, [r0, #8]
	orrs	r1, r1, r3
	adds	r3, r7, #1
	b	.L70
.L50:
	lsl	ip, ip, r3
	add	r9, r9, r3
	orr	ip, ip, r1
	uxth	ip, ip
	strh	ip, [r2]	@ movhi
	str	r9, [r4]
	b	.L51
.L48:
	lsls	r6, r6, r3
	add	r3, r3, r7
	orrs	r1, r1, r6
	ldr	r6, [r10]
	uxth	r1, r1
	cmp	r5, r6
	strh	r1, [r2]	@ movhi
	str	r3, [r4]
	bcc	.L73
.L68:
	mov	r2, r10
	mov	r10, fp
	mov	fp, r2
	ldrh	r2, [r10, #1026]
	rsb	r4, r2, #16
	cmp	r4, r3
	bge	.L60
.L71:
	ldrh	r4, [r10, #1024]
	subs	r2, r2, #16
	ldr	r5, [r0, #20]
	ldr	r6, [r0, #8]
	lsl	r3, r4, r3
	adds	r7, r5, #1
	orrs	r1, r1, r3
	uxth	r1, r1
	strh	r1, [fp, #24]	@ movhi
	str	r7, [r0, #20]
	strb	r1, [r6, r5]
	ldrh	r5, [fp, #24]
	ldr	r1, [r0, #20]
	ldr	r3, [r0, #8]
	lsrs	r5, r5, #8
	adds	r6, r1, #1
	str	r6, [r0, #20]
	strb	r5, [r3, r1]
	ldr	r3, [fp, #28]
	rsb	r1, r3, #16
	add	r3, r3, r2
	asrs	r4, r4, r1
	str	r3, [fp, #28]
	strh	r4, [fp, #24]	@ movhi
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L56:
	ldrh	r1, [lr, r7, lsl #2]
	add	r3, r3, r9
	lsl	r9, r1, r9
	orr	r1, r9, ip
	uxth	r1, r1
	strh	r1, [r2]	@ movhi
	str	r3, [r4]
	b	.L57
.L58:
	lsls	r6, r6, r3
	add	r3, r3, lr
	orrs	r1, r1, r6
	uxth	r1, r1
	strh	r1, [r2]	@ movhi
	str	r3, [r4]
	b	.L49
.L53:
	lsl	r7, r7, r9
	add	r9, r9, r3
	orr	ip, r7, ip
	uxth	ip, ip
	strh	ip, [r2]	@ movhi
	str	r9, [r4]
	b	.L52
.L75:
	.align	2
.L74:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC8+4)
	.word	.LANCHOR0-(.LPIC9+4)
	.word	.LANCHOR2-(.LPIC11+4)
	.word	.LANCHOR3-(.LPIC12+4)
	.word	.LANCHOR1-(.LPIC10+4)
	.word	_length_code(GOT)
	.word	_dist_code(GOT)
	.size	compress_block, .-compress_block
	.section	.text.build_tree,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	build_tree, %function
build_tree:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #76
	ldr	r3, [r1, #8]
	add	r5, r0, #5184
	movs	r2, #0
	mov	r4, r0
	str	r1, [sp, #36]
	movw	r1, #573
	ldr	r6, [sp, #36]
	str	r5, [sp, #28]
	ldr	r5, [r3, #12]
	ldr	fp, [r6]
	ldr	r6, [sp, #28]
	cmp	r5, r2
	ldr	r0, [r3]
	str	r5, [sp, #8]
	str	r1, [r6, #20]
	str	r2, [r6, #16]
	ble	.L137
	mov	r1, r6
	mov	lr, r5
	adds	r1, r1, #16
	mov	r5, #-1
	mov	r3, r2
	mov	r7, r2
	str	r1, [sp, #20]
	mov	r8, r5
	str	r5, [sp, #32]
	mov	ip, r1
	b	.L81
.L189:
	ldr	r1, [ip]
	mov	r8, r3
	adds	r2, r2, #4
	adds	r6, r1, #1
	add	r1, r4, r1, lsl #2
	str	r6, [ip]
	str	r3, [r1, #2912]
	adds	r3, r3, #1
	cmp	r3, lr
	strb	r7, [r5, #24]
	beq	.L188
.L81:
	ldrh	r1, [fp, r2]
	adds	r5, r4, r3
	add	r5, r5, #5184
	add	r6, fp, r2
	cmp	r1, #0
	bne	.L189
	adds	r3, r3, #1
	strh	r1, [r6, #2]	@ movhi
	cmp	r3, lr
	add	r2, r2, #4
	bne	.L81
.L188:
	ldr	r6, [sp, #28]
	str	r8, [sp, #32]
	ldr	r5, [r6, #16]
.L77:
	cmp	r0, #0
	beq	.L82
	movs	r7, #0
	movs	r6, #1
	add	r2, r4, #5792
	ldr	ip, [sp, #32]
	mov	r8, r0
	ldr	lr, [sp, #20]
	b	.L83
.L88:
	cmp	ip, #1
	str	r0, [lr]
	it	le
	addle	ip, ip, #1
	add	r0, r4, r0, lsl #2
	itt	le
	lslle	r3, ip, #2
	movle	r1, ip
	str	r1, [r0, #2908]
	adds	r5, r4, r1
	strh	r6, [fp, r3]	@ movhi
	add	r5, r5, #5184
	ldr	r0, [r2, #8]
	add	r1, r8, r3
	strb	r7, [r5, #24]
	ldr	r3, [r2, #12]
	subs	r0, r0, #1
	ldr	r5, [lr]
	str	r0, [r2, #8]
	ldrh	r1, [r1, #2]
	subs	r3, r3, r1
	str	r3, [r2, #12]
.L83:
	cmp	r5, #1
	mov	r3, #0
	add	r0, r5, #1
	mov	r1, r3
	ble	.L88
	mov	r6, ip
	str	ip, [sp, #32]
.L84:
	asr	r8, r5, #1
	ldr	r7, [sp, #36]
	add	r3, r4, r8, lsl #2
	str	r6, [r7, #4]
	add	r3, r3, #2912
	str	r3, [sp, #12]
.L95:
	ldr	r1, [sp, #12]
	lsl	r3, r8, #1
	cmp	r3, r5
	ldr	r0, [r1, #-4]!
	str	r1, [sp, #12]
	str	r0, [sp, #4]
	bgt	.L140
	mov	ip, r0
	add	lr, fp, r0, lsl #2
	add	ip, ip, r4
	add	ip, ip, #5184
	mov	r6, r8
	b	.L93
.L191:
	ldr	r2, [r2, #2908]
	mov	r1, r3
	ldrh	r0, [fp, r2, lsl #2]
.L91:
	ldrh	r3, [lr]
	cmp	r3, r0
	bcc	.L89
.L192:
	beq	.L190
.L92:
	lsls	r3, r1, #1
	add	r0, r4, r6, lsl #2
	cmp	r3, r5
	str	r2, [r0, #2908]
	mov	r6, r1
	bgt	.L89
.L93:
	cmp	r3, r5
	add	r2, r4, r3, lsl #2
	bge	.L191
	mov	r0, r2
	ldr	r2, [r2, #2912]
	ldr	r7, [r0, #2908]
	adds	r1, r3, #1
	ldrh	r0, [fp, r2, lsl #2]
	ldrh	r9, [fp, r7, lsl #2]
	cmp	r0, r9
	bcc	.L91
	ittt	ne
	movne	r0, r9
	movne	r2, r7
	movne	r1, r3
	bne	.L91
	add	r10, r4, r2
	add	r9, r4, r7
	add	r10, r10, #5184
	add	r9, r9, #5184
	ldrb	r10, [r10, #24]	@ zero_extendqisi2
	ldrb	r9, [r9, #24]	@ zero_extendqisi2
	cmp	r10, r9
	it	hi
	movhi	r1, r3
	ldrh	r3, [lr]
	it	hi
	movhi	r2, r7
	cmp	r3, r0
	bcs	.L192
.L89:
	ldr	r2, [sp, #4]
	add	r6, r4, r6, lsl #2
	subs	r8, r8, #1
	str	r2, [r6, #2908]
	bne	.L95
	ldr	r5, [sp, #8]
	add	r7, r4, #5184
	ldr	r6, [sp, #28]
	adds	r7, r7, #20
	str	r7, [sp, #24]
	add	r3, r5, #5184
	ldr	r5, [r6, #16]
	adds	r3, r3, #24
	ldr	r6, [sp, #8]
	adds	r3, r4, r3
	str	r3, [sp, #16]
	lsls	r6, r6, #2
	str	r6, [sp, #12]
.L109:
	add	r3, r4, r5, lsl #2
	ldr	r9, [sp, #20]
	subs	r5, r5, #1
	ldr	ip, [r4, #2912]
	ldr	r3, [r3, #2908]
	cmp	r5, #1
	str	r5, [r9]
	str	r3, [sp, #4]
	str	r3, [r4, #2912]
	ble	.L144
	mov	r8, r3
	add	lr, fp, r3, lsl #2
	add	r8, r8, r4
	add	r8, r8, #5184
	movs	r6, #1
	movs	r3, #2
	b	.L100
.L194:
	ldr	r2, [r2, #2908]
	mov	r1, r3
	ldrh	r0, [fp, r2, lsl #2]
.L98:
	ldrh	r3, [lr]
	cmp	r3, r0
	bcc	.L96
.L195:
	beq	.L193
.L99:
	lsls	r3, r1, #1
	add	r6, r4, r6, lsl #2
	cmp	r5, r3
	str	r2, [r6, #2908]
	mov	r6, r1
	blt	.L96
.L100:
	cmp	r5, r3
	add	r2, r4, r3, lsl #2
	ble	.L194
	mov	r0, r2
	ldr	r2, [r2, #2912]
	ldr	r7, [r0, #2908]
	adds	r1, r3, #1
	ldrh	r0, [fp, r2, lsl #2]
	ldrh	r9, [fp, r7, lsl #2]
	cmp	r0, r9
	bcc	.L98
	ittt	ne
	movne	r0, r9
	movne	r2, r7
	movne	r1, r3
	bne	.L98
	add	r10, r4, r2
	add	r9, r4, r7
	add	r10, r10, #5184
	add	r9, r9, #5184
	ldrb	r10, [r10, #24]	@ zero_extendqisi2
	ldrb	r9, [r9, #24]	@ zero_extendqisi2
	cmp	r10, r9
	it	hi
	movhi	r1, r3
	ldrh	r3, [lr]
	it	hi
	movhi	r2, r7
	cmp	r3, r0
	bcs	.L195
.L96:
	ldr	r0, [sp, #24]
	add	r6, r4, r6, lsl #2
	ldr	r1, [sp, #4]
	ldr	r9, [sp, #8]
	ldr	r2, [r0]
	add	r0, r4, ip
	str	r1, [r6, #2908]
	add	r0, r0, #5184
	ldr	r3, [r4, #2912]
	add	r5, r4, r2, lsl #2
	subs	r2, r2, #2
	str	ip, [r5, #2904]
	mov	r1, r5
	ldr	r5, [sp, #24]
	str	r2, [r5]
	add	r2, fp, ip, lsl #2
	str	r3, [r1, #2900]
	adds	r1, r4, r3
	ldrh	r6, [fp, r3, lsl #2]
	add	r1, r1, #5184
	ldrh	r5, [fp, ip, lsl #2]
	add	r3, fp, r3, lsl #2
	ldr	ip, [sp, #16]
	add	r5, r5, r6
	ldr	r6, [sp, #12]
	strh	r5, [fp, r6]	@ movhi
	ldrb	r0, [r0, #24]	@ zero_extendqisi2
	ldrb	r1, [r1, #24]	@ zero_extendqisi2
	ldr	r6, [sp, #20]
	cmp	r0, r1
	iteet	cs
	addcs	r0, r0, #1
	addcc	r1, r1, #1
	uxtbcc	r0, r1
	uxtbcs	r0, r0
	uxth	r1, r9
	strb	r0, [ip], #1
	add	r9, r9, #1
	strh	r1, [r3, #2]	@ movhi
	strh	r1, [r2, #2]	@ movhi
	ldr	r5, [r6]
	ldr	r3, [sp, #8]
	str	ip, [sp, #16]
	cmp	r5, #1
	str	r3, [r4, #2912]
	ble	.L103
	ldr	r6, [sp, #12]
	movs	r3, #2
	mov	r8, ip
	ldrh	lr, [fp, r6]
	movs	r6, #1
	b	.L108
.L197:
	ldr	r2, [r2, #2908]
	mov	r1, r3
	ldrh	r0, [fp, r2, lsl #2]
.L105:
	cmp	lr, r0
	bcc	.L106
.L198:
	beq	.L196
.L107:
	lsls	r3, r1, #1
	add	r6, r4, r6, lsl #2
	cmp	r3, r5
	str	r2, [r6, #2908]
	mov	r6, r1
	bgt	.L106
.L108:
	cmp	r5, r3
	add	r2, r4, r3, lsl #2
	ble	.L197
	mov	r0, r2
	ldr	r2, [r2, #2912]
	ldr	r7, [r0, #2908]
	adds	r1, r3, #1
	ldrh	r0, [fp, r2, lsl #2]
	ldrh	ip, [fp, r7, lsl #2]
	cmp	r0, ip
	bcc	.L105
	ittt	ne
	movne	r0, ip
	movne	r2, r7
	movne	r1, r3
	bne	.L105
	add	r10, r4, r2
	add	ip, r4, r7
	add	r10, r10, #5184
	add	ip, ip, #5184
	ldrb	r10, [r10, #24]	@ zero_extendqisi2
	ldrb	ip, [ip, #24]	@ zero_extendqisi2
	cmp	r10, ip
	itt	hi
	movhi	r2, r7
	movhi	r1, r3
	cmp	lr, r0
	bcs	.L198
.L106:
	ldr	r7, [sp, #12]
	add	r6, r4, r6, lsl #2
	ldr	r3, [sp, #8]
	str	r9, [sp, #8]
	adds	r7, r7, #4
	str	r7, [sp, #12]
	str	r3, [r6, #2908]
	b	.L109
.L190:
	adds	r3, r4, r2
	ldrb	r0, [ip, #24]	@ zero_extendqisi2
	add	r3, r3, #5184
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r0, r3
	bhi	.L92
	b	.L89
.L193:
	adds	r3, r4, r2
	ldrb	r0, [r8, #24]	@ zero_extendqisi2
	add	r3, r3, #5184
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r0, r3
	bhi	.L99
	b	.L96
.L196:
	adds	r3, r4, r2
	ldrb	r0, [r8, #-1]	@ zero_extendqisi2
	add	r3, r3, #5184
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r0, r3
	bhi	.L107
	b	.L106
.L103:
	ldr	r6, [sp, #28]
	movs	r2, #32
	ldr	r7, [sp, #36]
	addw	r0, r4, #2876
	ldr	r9, [sp, #28]
	movs	r1, #0
	ldr	r5, [r6, #20]
	ldr	r3, [r7, #8]
	ldr	r6, [r7]
	add	lr, r5, #-1
	ldr	r7, [r7, #4]
	add	r8, r4, r5, lsl #2
	ldr	r5, [r3]
	str	lr, [r9, #20]
	str	r5, [sp, #16]
	ldr	r5, [sp, #8]
	str	r5, [r8, #2904]
	ldr	r5, [r3, #4]
	ldr	r8, [r3, #8]
	str	r5, [sp, #20]
	ldr	r5, [r3, #16]
	bl	memset(PLT)
	ldr	r3, [sp, #12]
	movs	r2, #0
	add	r3, r3, r6
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r9, #20]
	cmp	r3, #572
	bge	.L123
	ldr	r0, [sp, #16]
	add	r3, r4, r3, lsl #2
	cmp	r0, #0
	beq	.L199
	ldr	r0, [sp, #28]
	mov	r10, r2
	str	fp, [sp, #12]
	addw	r1, r3, #2908
	mov	fp, r8
	add	lr, r4, #5792
	mov	r8, r4
	adds	r0, r0, #12
	str	r0, [sp, #8]
	str	r7, [sp, #28]
.L122:
	ldr	r2, [r1, #4]!
	lsls	r0, r2, #2
	adds	r4, r6, r0
	ldrh	r3, [r4, #2]
	add	r3, r6, r3, lsl #2
	ldrh	r3, [r3, #2]
	adds	r3, r3, #1
	cmp	r5, r3
	itt	lt
	movlt	r3, r5
	addlt	r10, r10, #1
	strh	r3, [r4, #2]	@ movhi
	add	ip, r8, r3, lsl #1
	ldr	r4, [sp, #28]
	cmp	r4, r2
	blt	.L120
	ldrh	r7, [ip, #2876]
	cmp	fp, r2
	rsb	r9, fp, r2
	mov	r4, #0
	str	r9, [sp, #4]
	add	r7, r7, #1
	strh	r7, [ip, #2876]	@ movhi
	it	le
	ldrle	ip, [sp, #20]
	ldr	r7, [lr, #8]
	it	le
	ldrle	r4, [ip, r9, lsl #2]
	ldrh	ip, [r6, r2, lsl #2]
	ldr	r2, [sp, #16]
	add	r3, r3, r4
	mla	r3, ip, r3, r7
	add	r0, r0, r2
	str	r3, [lr, #8]
	ldrh	r3, [r0, #2]
	add	r3, r3, r4
	ldr	r4, [lr, #12]
	mla	r3, ip, r3, r4
	str	r3, [lr, #12]
.L120:
	ldr	r7, [sp, #8]
	cmp	r1, r7
	bne	.L122
	ldr	fp, [sp, #12]
	mov	r4, r8
	ldr	r7, [sp, #28]
.L117:
	cmp	r10, #0
	beq	.L123
	lsl	r9, r5, #1
	addw	ip, r5, #1434
	addw	lr, r5, #1433
	add	ip, r4, ip, lsl #1
	add	r0, r5, #1432
	add	lr, r4, lr, lsl #1
	addw	r8, r5, #1431
	add	r0, r4, r0, lsl #1
	add	r8, r4, r8, lsl #1
	str	r9, [sp, #4]
	add	r9, r5, #-1
	addw	r1, r5, #1435
	str	r1, [sp, #8]
.L126:
	ldr	r2, [sp, #8]
	add	r3, r4, r2, lsl #1
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	bne	.L152
	ldrh	r3, [ip, #4]
	subs	r2, r5, #2
	cmp	r3, #0
	bne	.L124
	ldrh	r3, [lr, #4]
	subs	r2, r5, #3
	cmp	r3, #0
	bne	.L124
	ldrh	r3, [r0, #4]
	subs	r2, r5, #4
	cmp	r3, #0
	bne	.L124
	ldrh	r3, [r8, #4]
	subs	r2, r5, #5
	cmp	r3, #0
	bne	.L124
	add	r3, r4, r5, lsl #1
	subs	r2, r5, #6
	ldrh	r3, [r3, #2864]
	cmp	r3, #0
	bne	.L124
	add	r3, r4, r5, lsl #1
	subs	r2, r5, #7
	ldrh	r3, [r3, #2862]
	cbnz	r3, .L124
	add	r3, r4, r5, lsl #1
	sub	r2, r5, #8
	ldrh	r3, [r3, #2860]
	cbnz	r3, .L124
	add	r3, r4, r5, lsl #1
	sub	r2, r5, #9
	ldrh	r3, [r3, #2858]
	cbnz	r3, .L124
	add	r3, r4, r5, lsl #1
	sub	r2, r5, #10
	ldrh	r3, [r3, #2856]
	cbnz	r3, .L124
	add	r3, r4, r5, lsl #1
	sub	r2, r5, #11
	ldrh	r3, [r3, #2854]
	cbnz	r3, .L124
	add	r3, r4, r5, lsl #1
	sub	r2, r5, #12
	ldrh	r3, [r3, #2852]
	cbnz	r3, .L124
	add	r3, r4, r5, lsl #1
	sub	r2, r5, #13
	ldrh	r3, [r3, #2850]
	cbnz	r3, .L124
	add	r3, r4, r5, lsl #1
	sub	r2, r5, #14
	ldrh	r3, [r3, #2848]
	cbnz	r3, .L124
	add	r3, r4, r5, lsl #1
	sub	r2, r5, #15
	ldrh	r3, [r3, #2846]
	cbnz	r3, .L124
	add	r3, r4, r5, lsl #1
	sub	r2, r5, #16
	ldrh	r3, [r3, #2844]
.L124:
	adds	r1, r2, #1
	add	r2, r4, r2, lsl #1
	add	r1, r4, r1, lsl #1
	subs	r3, r3, #1
	strh	r3, [r2, #2876]	@ movhi
	sub	r10, r10, #2
	ldrh	r2, [r1, #2876]
	cmp	r10, #0
	ldr	r3, [sp, #4]
	add	r2, r2, #2
	add	r3, r3, r4
	strh	r2, [r1, #2876]	@ movhi
	ldrh	r2, [r3, #2876]
	add	r2, r2, #-1
	strh	r2, [r3, #2876]	@ movhi
	bgt	.L126
	cbz	r5, .L123
	add	r3, r4, r5, lsl #1
	add	r8, r4, #5792
	mov	r10, r4
	str	fp, [sp, #8]
	addw	r3, r3, #2878
	mov	r4, r9
	movw	r1, #573
	mov	r9, r3
.L131:
	ldrh	r2, [r9, #-2]!
	cbz	r2, .L127
	add	r0, r10, r1, lsl #2
	addw	r0, r0, #2908
.L130:
	ldr	r3, [r0, #-4]!
	subs	r1, r1, #1
	cmp	r7, r3
	add	lr, r6, r3, lsl #2
	blt	.L128
	ldrh	fp, [lr, #2]
	subs	r2, r2, #1
	cmp	fp, r5
	rsb	ip, fp, r5
	itttt	ne
	ldrhne	fp, [r6, r3, lsl #2]
	ldrne	r3, [r8, #8]
	mlane	r3, fp, ip, r3
	strne	r3, [r8, #8]
	it	ne
	strhne	r5, [lr, #2]	@ movhi
.L128:
	cmp	r2, #0
	bne	.L130
.L127:
	mov	r5, r4
	cbz	r4, .L186
	subs	r4, r4, #1
	b	.L131
.L144:
	movs	r6, #1
	b	.L96
.L186:
	ldr	fp, [sp, #8]
	mov	r4, r10
.L123:
	ldrh	r6, [r4, #2876]
	movw	r5, #65534
	ldrh	r10, [r4, #2878]
	mov	r0, r5
	ldrh	r9, [r4, #2880]
	mov	r1, r5
	mov	r2, r5
	mov	r3, r5
	lsls	r6, r6, #1
	ldrh	r8, [r4, #2882]
	ldrh	ip, [r4, #2884]
	uxth	r6, r6
	ldrh	lr, [r4, #2886]
	ldrh	r7, [r4, #2888]
	add	r10, r10, r6
	strh	r6, [sp, #42]	@ movhi
	lsl	r10, r10, #1
	ldrh	r6, [r4, #2890]
	and	r5, r10, r5
	add	r9, r9, r5
	strh	r5, [sp, #44]	@ movhi
	lsl	r9, r9, #1
	mov	r5, r0
	and	r0, r9, r0
	ldrh	r9, [r4, #2892]
	add	r8, r8, r0
	strh	r0, [sp, #46]	@ movhi
	lsl	r8, r8, #1
	mov	r0, r1
	and	r1, r8, r1
	ldrh	r8, [r4, #2894]
	add	ip, ip, r1
	strh	r1, [sp, #48]	@ movhi
	lsl	ip, ip, #1
	mov	r1, r2
	and	r2, ip, r2
	ldrh	ip, [r4, #2896]
	add	lr, lr, r2
	strh	r2, [sp, #50]	@ movhi
	lsl	lr, lr, #1
	mov	r2, r3
	and	r3, lr, r3
	ldrh	lr, [r4, #2898]
	add	r7, r7, r3
	strh	r3, [sp, #52]	@ movhi
	lsls	r7, r7, #1
	mov	r3, r5
	ands	r5, r5, r7
	ldrh	r7, [r4, #2900]
	add	r6, r6, r5
	strh	r5, [sp, #54]	@ movhi
	lsls	r6, r6, #1
	mov	r5, r0
	ands	r0, r0, r6
	ldrh	r6, [r4, #2902]
	add	r9, r9, r0
	strh	r0, [sp, #56]	@ movhi
	lsl	r9, r9, #1
	mov	r0, r1
	ldrh	r4, [r4, #2904]
	and	r1, r9, r1
	mov	r9, r2
	add	r8, r8, r1
	strh	r1, [sp, #58]	@ movhi
	lsl	r1, r8, #1
	ands	r2, r2, r1
	add	ip, ip, r2
	strh	r2, [sp, #60]	@ movhi
	lsl	r2, ip, #1
	ands	r3, r3, r2
	add	lr, lr, r3
	strh	r3, [sp, #62]	@ movhi
	lsl	r3, lr, #1
	ands	r5, r5, r3
	adds	r3, r5, r7
	strh	r5, [sp, #64]	@ movhi
	lsls	r3, r3, #1
	ands	r0, r0, r3
	adds	r3, r0, r6
	strh	r0, [sp, #66]	@ movhi
	lsls	r3, r3, #1
	and	r9, r3, r9
	add	r3, r9, r4
	ldr	r4, [sp, #32]
	lsls	r3, r3, #1
	strh	r9, [sp, #68]	@ movhi
	strh	r3, [sp, #70]	@ movhi
	adds	r3, r4, #1
	itttt	ne
	movne	r6, r4
	movne	r4, #0
	addne	r6, r6, #1
	lslne	r6, r6, #2
	beq	.L76
.L135:
	add	r3, fp, r4
	ldrh	r3, [r3, #2]
	cbz	r3, .L132
	add	r5, sp, #72
	movs	r1, #0
	add	r0, r5, r3, lsl #1
	ldrh	r5, [r0, #-32]
	mov	r2, r5
	adds	r5, r5, #1
	strh	r5, [r0, #-32]	@ movhi
.L134:
	and	r0, r2, #1
	subs	r3, r3, #1
	orr	r1, r1, r0
	lsr	r2, r2, #1
	lsl	r1, r1, #1
	bne	.L134
	lsrs	r1, r1, #1
	strh	r1, [fp, r4]	@ movhi
.L132:
	adds	r4, r4, #4
	cmp	r4, r6
	bne	.L135
.L76:
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L152:
	mov	r2, r9
	b	.L124
.L140:
	mov	r6, r8
	b	.L89
.L82:
	movs	r7, #1
	add	r1, r4, #5792
	ldr	r3, [sp, #32]
	ldr	ip, [sp, #20]
	b	.L86
.L200:
	cmp	r3, #1
	str	lr, [ip]
	it	le
	addle	r3, r3, #1
	add	lr, r4, lr, lsl #2
	itt	le
	lslle	r2, r3, #2
	movle	r6, r3
	str	r6, [lr, #2908]
	adds	r5, r4, r6
	strh	r7, [fp, r2]	@ movhi
	add	r5, r5, #5184
	ldr	r2, [r1, #8]
	strb	r0, [r5, #24]
	ldr	r5, [ip]
	subs	r2, r2, #1
	str	r2, [r1, #8]
.L86:
	cmp	r5, #1
	mov	r2, #0
	add	lr, r5, #1
	mov	r6, r2
	ble	.L200
	str	r3, [sp, #32]
	mov	r6, r3
	b	.L84
.L137:
	add	r9, r4, #5184
	mov	r3, #-1
	mov	r1, r9
	mov	r5, r2
	adds	r1, r1, #16
	str	r3, [sp, #32]
	str	r1, [sp, #20]
	b	.L77
.L199:
	ldr	r1, [sp, #28]
	mov	r10, r0
	add	ip, r4, #5792
	mov	lr, r8
	mov	r9, r4
	str	fp, [sp, #4]
	adds	r1, r1, #12
	str	r1, [sp, #8]
	addw	r1, r3, #2908
.L118:
	ldr	r2, [r1, #4]!
	add	r4, r6, r2, lsl #2
	ldrh	r3, [r4, #2]
	add	r3, r6, r3, lsl #2
	ldrh	r3, [r3, #2]
	adds	r3, r3, #1
	cmp	r3, r5
	itt	gt
	movgt	r3, r5
	addgt	r10, r10, #1
	cmp	r2, r7
	add	r0, r9, r3, lsl #1
	strh	r3, [r4, #2]	@ movhi
	bgt	.L114
	ldrh	r8, [r0, #2876]
	cmp	r2, lr
	mov	r4, #0
	rsb	fp, lr, r2
	add	r8, r8, #1
	strh	r8, [r0, #2876]	@ movhi
	blt	.L116
	ldr	r0, [sp, #20]
	ldr	r4, [r0, fp, lsl #2]
.L116:
	ldrh	r0, [r6, r2, lsl #2]
	add	r3, r3, r4
	ldr	r2, [ip, #8]
	mla	r2, r0, r3, r2
	str	r2, [ip, #8]
.L114:
	ldr	r2, [sp, #8]
	cmp	r1, r2
	bne	.L118
	ldr	fp, [sp, #4]
	mov	r4, r9
	b	.L117
	.size	build_tree, .-build_tree
	.section	.text._tr_init,"ax",%progbits
	.align	2
	.global	_tr_init
	.thumb
	.thumb_func
	.type	_tr_init, %function
_tr_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	movs	r4, #0
	ldr	r8, .L215
	mov	r1, r4
	mov	r2, r4
	mov	r3, r0
	ldr	lr, .L215+4
	add	r6, r0, #5792
	ldr	r5, .L215+8
.LPIC29:
	add	r8, pc
	add	r9, r0, #148
	addw	ip, r0, #2440
.LPIC30:
	add	lr, pc
	addw	r7, r0, #2684
.LPIC31:
	add	r5, pc
	str	r9, [r0, #2840]
	str	r8, [r0, #2848]
	str	ip, [r0, #2852]
	str	lr, [r0, #2860]
	str	r7, [r0, #2864]
	str	r5, [r0, #2872]
	strh	r4, [r6, #24]	@ movhi
	str	r4, [r6, #28]
.L203:
	adds	r1, r1, #8
	pld	[r3, #308]
	cmp	r1, #280
	strh	r2, [r3, #148]	@ movhi
	strh	r2, [r3, #152]	@ movhi
	rsb	r5, r1, #286
	strh	r2, [r3, #156]	@ movhi
	add	r3, r3, #32
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #132]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	strh	r2, [r3, #140]	@ movhi
	strh	r2, [r3, #144]	@ movhi
	bne	.L203
	movs	r3, #0
	lsls	r5, r5, #2
	mov	r4, r3
	add	r1, r0, #1120
.L205:
	adds	r2, r1, r3
	adds	r3, r3, #4
	cmp	r3, r5
	strh	r4, [r2, #148]	@ movhi
	bne	.L205
	movs	r3, #0
	mov	r1, r3
.L207:
	adds	r2, r0, r3
	adds	r3, r3, #4
	cmp	r3, #120
	strh	r1, [r2, #2440]	@ movhi
	bne	.L207
	movs	r3, #0
	mov	r1, r3
.L209:
	adds	r2, r0, r3
	adds	r3, r3, #4
	cmp	r3, #76
	strh	r1, [r2, #2684]	@ movhi
	mov	r2, #0
	bne	.L209
	movs	r3, #1
	strh	r3, [r0, #1172]	@ movhi
	str	r2, [r6, #12]
	str	r2, [r6, #8]
	str	r2, [r6, #16]
	str	r2, [r6]
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L216:
	.align	2
.L215:
	.word	.LANCHOR4-(.LPIC29+4)
	.word	.LANCHOR5-(.LPIC30+4)
	.word	.LANCHOR6-(.LPIC31+4)
	.size	_tr_init, .-_tr_init
	.section	.text._tr_stored_block,"ax",%progbits
	.align	2
	.global	_tr_stored_block
	.thumb
	.thumb_func
	.type	_tr_stored_block, %function
_tr_stored_block:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	add	r4, r0, #5792
	ldr	r5, [r4, #28]
	uxth	r3, r3
	cmp	r5, #13
	bgt	.L227
	ldrh	r7, [r4, #24]
	lsls	r3, r3, r5
	adds	r6, r5, #3
	cmp	r6, #8
	str	r6, [r4, #28]
	orr	r3, r3, r7
	uxth	r3, r3
	strh	r3, [r4, #24]	@ movhi
	bgt	.L228
.L220:
	cmp	r6, #0
	itttt	gt
	ldrgt	r5, [r0, #20]
	ldrgt	r6, [r0, #8]
	addgt	r7, r5, #1
	strgt	r7, [r0, #20]
	it	gt
	strbgt	r3, [r6, r5]
.L221:
	ldr	r5, [r0, #20]
	uxtb	r3, r2
	ldr	lr, [r0, #8]
	movs	r6, #0
	strh	r6, [r4, #24]	@ movhi
	uxth	r7, r2
	add	ip, r5, #1
	str	r6, [r4, #28]
	str	ip, [r0, #20]
	mvns	r6, r3
	strb	r3, [lr, r5]
	mov	r4, r7
	ldr	r3, [r0, #20]
	lsrs	r7, r7, #8
	mvns	r4, r4
	ubfx	r4, r4, #8, #8
	adds	r5, r3, #1
	str	r5, [r0, #20]
	ldr	r5, [r0, #8]
	strb	r7, [r5, r3]
	ldr	r3, [r0, #20]
	ldr	r5, [r0, #8]
	adds	r7, r3, #1
	str	r7, [r0, #20]
	strb	r6, [r5, r3]
	ldr	r3, [r0, #20]
	ldr	r5, [r0, #8]
	adds	r6, r3, #1
	str	r6, [r0, #20]
	strb	r4, [r5, r3]
	cbz	r2, .L217
	add	r2, r2, r1
.L224:
	ldr	r3, [r0, #20]
	ldr	r4, [r0, #8]
	adds	r5, r3, #1
	str	r5, [r0, #20]
	ldrb	r5, [r1], #1	@ zero_extendqisi2
	cmp	r1, r2
	strb	r5, [r4, r3]
	bne	.L224
.L217:
	pop	{r4, r5, r6, r7, pc}
.L227:
	ldrh	lr, [r4, #24]
	lsl	r5, r3, r5
	ldr	r6, [r0, #20]
	ldr	r7, [r0, #8]
	orr	r5, r5, lr
	uxth	r5, r5
	add	lr, r6, #1
	strh	r5, [r4, #24]	@ movhi
	str	lr, [r0, #20]
	strb	r5, [r7, r6]
	ldr	r5, [r0, #20]
	ldrh	r7, [r4, #24]
	adds	r6, r5, #1
	str	r6, [r0, #20]
	ldr	r6, [r0, #8]
	lsrs	r7, r7, #8
	strb	r7, [r6, r5]
	ldr	r6, [r4, #28]
	rsb	r5, r6, #16
	subs	r6, r6, #13
	asrs	r3, r3, r5
	cmp	r6, #8
	str	r6, [r4, #28]
	uxth	r3, r3
	strh	r3, [r4, #24]	@ movhi
	ble	.L220
.L228:
	ldr	r5, [r0, #20]
	ldr	r6, [r0, #8]
	adds	r7, r5, #1
	str	r7, [r0, #20]
	strb	r3, [r6, r5]
	ldrh	r6, [r4, #24]
	ldr	r3, [r0, #20]
	ldr	r5, [r0, #8]
	lsrs	r6, r6, #8
	adds	r7, r3, #1
	str	r7, [r0, #20]
	strb	r6, [r5, r3]
	b	.L221
	.size	_tr_stored_block, .-_tr_stored_block
	.section	.text._tr_flush_bits,"ax",%progbits
	.align	2
	.global	_tr_flush_bits
	.thumb
	.thumb_func
	.type	_tr_flush_bits, %function
_tr_flush_bits:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #5792
	push	{r4, r5, r6}
	ldr	r2, [r3, #28]
	cmp	r2, #16
	beq	.L233
	cmp	r2, #7
	ble	.L229
	ldr	r2, [r0, #20]
	ldr	r1, [r0, #8]
	ldrh	r4, [r3, #24]
	adds	r5, r2, #1
	str	r5, [r0, #20]
	strb	r4, [r1, r2]
	ldrh	r1, [r3, #24]
	ldr	r2, [r3, #28]
	lsrs	r1, r1, #8
	subs	r2, r2, #8
	str	r2, [r3, #28]
	strh	r1, [r3, #24]	@ movhi
.L229:
	pop	{r4, r5, r6}
	bx	lr
.L233:
	ldr	r1, [r0, #20]
	movs	r2, #0
	ldrh	r5, [r3, #24]
	ldr	r4, [r0, #8]
	adds	r6, r1, #1
	str	r6, [r0, #20]
	strb	r5, [r4, r1]
	ldrh	r5, [r3, #24]
	ldr	r1, [r0, #20]
	ldr	r4, [r0, #8]
	lsrs	r5, r5, #8
	adds	r6, r1, #1
	str	r6, [r0, #20]
	strb	r5, [r4, r1]
	strh	r2, [r3, #24]	@ movhi
	str	r2, [r3, #28]
	pop	{r4, r5, r6}
	bx	lr
	.size	_tr_flush_bits, .-_tr_flush_bits
	.section	.text._tr_align,"ax",%progbits
	.align	2
	.global	_tr_align
	.thumb
	.thumb_func
	.type	_tr_align, %function
_tr_align:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	add	r3, r0, #5792
	push	{r4, r5, r6, r7}
	ldr	r2, [r3, #28]
	movs	r1, #2
	cmp	r2, #13
	ble	.L235
	ldrh	r6, [r3, #24]
	lsl	r2, r1, r2
	ldr	r4, [r0, #20]
	ldr	r5, [r0, #8]
	orrs	r2, r2, r6
	uxth	r2, r2
	adds	r6, r4, #1
	strh	r2, [r3, #24]	@ movhi
	str	r6, [r0, #20]
	strb	r2, [r5, r4]
	ldrh	r5, [r3, #24]
	ldr	r2, [r0, #20]
	ldr	r4, [r0, #8]
	lsrs	r5, r5, #8
	adds	r6, r2, #1
	str	r6, [r0, #20]
	strb	r5, [r4, r2]
	ldr	r2, [r3, #28]
	rsb	r4, r2, #16
	subs	r2, r2, #13
	asrs	r1, r1, r4
	str	r2, [r3, #28]
	uxth	r1, r1
	strh	r1, [r3, #24]	@ movhi
.L236:
	cmp	r2, #9
	itt	le
	addle	r2, r2, #7
	strle	r2, [r3, #28]
	ble	.L238
	ldr	r2, [r0, #20]
	movs	r4, #0
	ldr	r5, [r0, #8]
	adds	r6, r2, #1
	str	r6, [r0, #20]
	strb	r1, [r5, r2]
	mov	r1, r4
	ldrh	r6, [r3, #24]
	ldr	r2, [r0, #20]
	ldr	r5, [r0, #8]
	lsrs	r6, r6, #8
	adds	r7, r2, #1
	str	r7, [r0, #20]
	strb	r6, [r5, r2]
	ldr	r2, [r3, #28]
	strh	r4, [r3, #24]	@ movhi
	subs	r2, r2, #9
	str	r2, [r3, #28]
.L238:
	cmp	r2, #16
	beq	.L242
	cmp	r2, #7
	ble	.L234
	ldr	r2, [r0, #20]
	ldr	r4, [r0, #8]
	adds	r5, r2, #1
	str	r5, [r0, #20]
	strb	r1, [r4, r2]
	ldrh	r1, [r3, #24]
	ldr	r2, [r3, #28]
	lsrs	r1, r1, #8
	subs	r2, r2, #8
	str	r2, [r3, #28]
	strh	r1, [r3, #24]	@ movhi
.L234:
	pop	{r4, r5, r6, r7}
	bx	lr
.L235:
	ldrh	r4, [r3, #24]
	lsls	r1, r1, r2
	adds	r2, r2, #3
	str	r2, [r3, #28]
	orrs	r1, r1, r4
	uxth	r1, r1
	strh	r1, [r3, #24]	@ movhi
	b	.L236
.L242:
	ldr	r4, [r0, #20]
	movs	r2, #0
	ldr	r5, [r0, #8]
	adds	r6, r4, #1
	str	r6, [r0, #20]
	strb	r1, [r5, r4]
	ldrh	r5, [r3, #24]
	ldr	r1, [r0, #20]
	ldr	r4, [r0, #8]
	lsrs	r5, r5, #8
	adds	r6, r1, #1
	str	r6, [r0, #20]
	strb	r5, [r4, r1]
	strh	r2, [r3, #24]	@ movhi
	str	r2, [r3, #28]
	pop	{r4, r5, r6, r7}
	bx	lr
	.size	_tr_align, .-_tr_align
	.section	.text._tr_flush_block,"ax",%progbits
	.align	2
	.global	_tr_flush_block
	.thumb
	.thumb_func
	.type	_tr_flush_block, %function
_tr_flush_block:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r1
	ldr	r1, [r0, #132]
	sub	sp, sp, #20
	mov	r4, r0
	mov	r7, r2
	mov	r8, r3
	cmp	r1, #0
	ble	.L244
	ldr	r5, [r0]
	ldr	r3, [r5, #44]
	cmp	r3, #2
	beq	.L359
.L245:
	mov	r0, r4
	addw	r1, r4, #2840
	bl	build_tree(PLT)
	mov	r0, r4
	addw	r1, r4, #2852
	bl	build_tree(PLT)
	ldr	r3, [r4, #2844]
	add	r0, r4, #148
	ldrh	r2, [r4, #150]
	movw	r9, #65535
	adds	r1, r3, #1
	cmp	r2, #0
	lsl	r1, r1, #2
	itete	eq
	moveq	lr, #3
	movne	lr, #4
	moveq	r5, #138
	movne	r5, #7
	cmp	r3, #0
	add	ip, r0, r1
	it	ge
	addge	r1, r1, r4
	strh	r9, [ip, #2]	@ movhi
	ittt	ge
	movge	r3, #0
	addge	r9, r1, #148
	movge	ip, #-1
	blt	.L261
.L262:
	adds	r3, r3, #1
	ldrh	r1, [r0, #6]
	cmp	r5, r3
	ble	.L254
	cmp	r1, r2
	it	eq
	moveq	r2, ip
	beq	.L255
.L254:
	cmp	lr, r3
	ble	.L256
	add	r5, r4, r2, lsl #2
	ldrh	lr, [r5, #2684]
	add	r3, r3, lr
	strh	r3, [r5, #2684]	@ movhi
.L257:
	cbz	r1, .L315
	cmp	r1, r2
	mov	r3, #0
	itete	ne
	movne	lr, #4
	moveq	lr, #3
	movne	r5, #7
	moveq	r5, #6
.L255:
	adds	r0, r0, #4
	cmp	r0, r9
	beq	.L261
.L360:
	mov	ip, r2
	mov	r2, r1
	b	.L262
.L315:
	adds	r0, r0, #4
	mov	lr, #3
	cmp	r0, r9
	mov	r5, #138
	mov	r3, r1
	bne	.L360
.L261:
	ldr	r3, [r4, #2856]
	addw	r1, r4, #2440
	ldrh	r0, [r4, #2442]
	movw	r9, #65535
	adds	r2, r3, #1
	cmp	r0, #0
	lsl	r2, r2, #2
	itete	eq
	moveq	lr, #3
	movne	lr, #4
	moveq	r5, #138
	movne	r5, #7
	cmp	r3, #0
	add	ip, r1, r2
	it	ge
	addge	r2, r2, r4
	strh	r9, [ip, #2]	@ movhi
	ittt	ge
	movge	r3, #0
	addwge	r9, r2, #2440
	movge	ip, #-1
	blt	.L273
.L274:
	adds	r3, r3, #1
	ldrh	r2, [r1, #6]
	cmp	r3, r5
	bge	.L266
	cmp	r2, r0
	it	eq
	moveq	r0, ip
	beq	.L267
.L266:
	cmp	r3, lr
	bge	.L268
	add	r5, r4, r0, lsl #2
	ldrh	lr, [r5, #2684]
	add	r3, r3, lr
	strh	r3, [r5, #2684]	@ movhi
.L269:
	cbz	r2, .L334
	cmp	r2, r0
	mov	r3, #0
	itete	ne
	movne	lr, #4
	moveq	lr, #3
	movne	r5, #7
	moveq	r5, #6
.L267:
	adds	r1, r1, #4
	cmp	r1, r9
	beq	.L273
.L361:
	mov	ip, r0
	mov	r0, r2
	b	.L274
.L256:
	cbz	r2, .L258
	cmp	r2, ip
	itttt	ne
	addne	r3, r4, r2, lsl #2
	ldrhne	r5, [r3, #2684]
	addne	r5, r5, #1
	strhne	r5, [r3, #2684]	@ movhi
	ldrh	r3, [r4, #2748]
	adds	r3, r3, #1
	strh	r3, [r4, #2748]	@ movhi
	b	.L257
.L258:
	cmp	r3, #10
	itete	le
	ldrhle	r3, [r4, #2752]
	ldrhgt	r3, [r4, #2756]
	addle	r3, r3, #1
	addgt	r3, r3, #1
	ite	le
	strhle	r3, [r4, #2752]	@ movhi
	strhgt	r3, [r4, #2756]	@ movhi
	b	.L257
.L334:
	adds	r1, r1, #4
	mov	lr, #3
	cmp	r1, r9
	mov	r5, #138
	mov	r3, r2
	bne	.L361
.L273:
	mov	r0, r4
	add	r1, r4, #2864
	bl	build_tree(PLT)
	ldrh	r3, [r4, #2746]
	cmp	r3, #0
	bne	.L317
	ldrh	r3, [r4, #2690]
	cmp	r3, #0
	bne	.L318
	ldrh	r3, [r4, #2742]
	cmp	r3, #0
	bne	.L319
	ldrh	r3, [r4, #2694]
	cmp	r3, #0
	bne	.L320
	ldrh	r3, [r4, #2738]
	cmp	r3, #0
	bne	.L321
	ldrh	r3, [r4, #2698]
	cmp	r3, #0
	bne	.L322
	ldrh	r3, [r4, #2734]
	cmp	r3, #0
	bne	.L323
	ldrh	r3, [r4, #2702]
	cmp	r3, #0
	bne	.L324
	ldrh	r3, [r4, #2730]
	cmp	r3, #0
	bne	.L325
	ldrh	r3, [r4, #2706]
	cmp	r3, #0
	bne	.L326
	ldrh	r3, [r4, #2726]
	cmp	r3, #0
	bne	.L327
	ldrh	r3, [r4, #2710]
	cmp	r3, #0
	bne	.L328
	ldrh	r3, [r4, #2722]
	cmp	r3, #0
	bne	.L329
	ldrh	r3, [r4, #2714]
	cmp	r3, #0
	bne	.L330
	ldrh	r3, [r4, #2718]
	cmp	r3, #0
	bne	.L331
	ldrh	r3, [r4, #2686]
	cmp	r3, #0
	bne	.L332
	movs	r0, #9
	mov	ip, #3
	movs	r1, #2
.L265:
	add	r5, r4, #5792
	ldr	r2, [r5, #8]
	ldr	r3, [r5, #12]
	adds	r2, r2, #14
	add	r2, r2, r0
	add	r0, r3, #10
	add	r3, r2, #10
	lsrs	r0, r0, #3
	lsrs	r3, r3, #3
	str	r2, [r5, #8]
	cmp	r3, r0
	it	cs
	movcs	r3, r0
.L275:
	adds	r2, r7, #4
	cmp	r3, r2
	bcc	.L276
	cmp	r6, #0
	beq	.L276
	mov	r1, r6
	mov	r2, r7
	mov	r0, r4
	mov	r3, r8
	bl	_tr_stored_block(PLT)
.L282:
	movs	r1, #0
	mov	r3, r4
	mov	r2, r1
.L277:
	adds	r1, r1, #8
	pld	[r3, #308]
	cmp	r1, #280
	strh	r2, [r3, #148]	@ movhi
	strh	r2, [r3, #152]	@ movhi
	rsb	r6, r1, #286
	strh	r2, [r3, #156]	@ movhi
	add	r3, r3, #32
	strh	r2, [r3, #128]	@ movhi
	strh	r2, [r3, #132]	@ movhi
	strh	r2, [r3, #136]	@ movhi
	strh	r2, [r3, #140]	@ movhi
	strh	r2, [r3, #144]	@ movhi
	bne	.L277
	movs	r3, #0
	lsls	r6, r6, #2
	mov	r0, r3
	add	r1, r4, #1120
.L296:
	adds	r2, r1, r3
	adds	r3, r3, #4
	cmp	r3, r6
	strh	r0, [r2, #148]	@ movhi
	bne	.L296
	movs	r3, #0
	mov	r1, r3
.L300:
	adds	r2, r4, r3
	adds	r3, r3, #4
	cmp	r3, #120
	strh	r1, [r2, #2440]	@ movhi
	bne	.L300
	movs	r3, #0
	mov	r1, r3
.L302:
	adds	r2, r4, r3
	adds	r3, r3, #4
	cmp	r3, #76
	strh	r1, [r2, #2684]	@ movhi
	mov	r2, #0
	bne	.L302
	movs	r3, #1
	strh	r3, [r4, #1172]	@ movhi
	str	r2, [r5, #12]
	str	r2, [r5, #8]
	str	r2, [r5, #16]
	str	r2, [r5]
	cmp	r8, #0
	bne	.L362
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L268:
	cbz	r0, .L270
	cmp	r0, ip
	itttt	ne
	addne	r3, r4, r0, lsl #2
	ldrhne	r5, [r3, #2684]
	addne	r5, r5, #1
	strhne	r5, [r3, #2684]	@ movhi
	ldrh	r3, [r4, #2748]
	adds	r3, r3, #1
	strh	r3, [r4, #2748]	@ movhi
	b	.L269
.L270:
	cmp	r3, #10
	itete	le
	ldrhle	r3, [r4, #2752]
	ldrhgt	r3, [r4, #2756]
	addle	r3, r3, #1
	addgt	r3, r3, #1
	ite	le
	strhle	r3, [r4, #2752]	@ movhi
	strhgt	r3, [r4, #2756]	@ movhi
	b	.L269
.L276:
	ldr	r2, [r4, #136]
	cmp	r2, #4
	beq	.L278
	cmp	r0, r3
	beq	.L278
	ldr	r2, [r5, #28]
	cmp	r2, #13
	bgt	.L363
	add	r6, r8, #4
	ldrh	r0, [r5, #24]
	uxth	r6, r6
	adds	r3, r2, #3
	str	r3, [r5, #28]
	lsl	r2, r6, r2
	orrs	r0, r0, r2
	uxth	r0, r0
	strh	r0, [r5, #24]	@ movhi
.L284:
	ldr	r2, [r4, #2844]
	cmp	r3, #11
	str	r2, [sp, #4]
	ldr	r2, [r4, #2856]
	str	r2, [sp, #8]
	ldr	r2, [sp, #4]
	sub	r6, r2, #256
	ble	.L285
	uxth	r6, r6
	ldr	r2, [r4, #20]
	ldr	r7, [r4, #8]
	lsl	r3, r6, r3
	add	lr, r2, #1
	orrs	r3, r3, r0
	uxth	r3, r3
	strh	r3, [r5, #24]	@ movhi
	str	lr, [r4, #20]
	strb	r3, [r7, r2]
	ldrh	r0, [r5, #24]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #8]
	lsrs	r0, r0, #8
	adds	r7, r2, #1
	str	r7, [r4, #20]
	strb	r0, [r3, r2]
	ldr	r2, [r5, #28]
	ldr	r3, [sp, #8]
	rsb	r0, r2, #16
	subs	r2, r2, #11
	asr	r0, r6, r0
	cmp	r2, #11
	str	r2, [r5, #28]
	uxth	r6, r3
	uxth	r0, r0
	strh	r0, [r5, #24]	@ movhi
	ble	.L287
.L369:
	lsl	r2, r6, r2
	ldr	r3, [r4, #20]
	ldr	r7, [r4, #8]
	orrs	r2, r2, r0
	uxth	r2, r2
	add	lr, r3, #1
	strh	r2, [r5, #24]	@ movhi
	str	lr, [r4, #20]
	strb	r2, [r7, r3]
	ldrh	r0, [r5, #24]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #8]
	lsrs	r0, r0, #8
	adds	r7, r2, #1
	str	r7, [r4, #20]
	strb	r0, [r3, r2]
	ldr	r3, [r5, #28]
	rsb	r0, r3, #16
	subs	r3, r3, #11
	asr	r0, r6, r0
	cmp	r3, #12
	str	r3, [r5, #28]
	uxth	r0, r0
	strh	r0, [r5, #24]	@ movhi
	ble	.L289
.L370:
	subs	r1, r1, #3
	ldr	r2, [r4, #20]
	uxth	r1, r1
	ldr	r6, [r4, #8]
	lsl	r3, r1, r3
	adds	r7, r2, #1
	orrs	r3, r3, r0
	uxth	r3, r3
	strh	r3, [r5, #24]	@ movhi
	str	r7, [r4, #20]
	strb	r3, [r6, r2]
	ldrh	r0, [r5, #24]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #8]
	lsrs	r0, r0, #8
	adds	r6, r2, #1
	str	r6, [r4, #20]
	strb	r0, [r3, r2]
	ldr	r2, [r5, #28]
	rsb	r3, r2, #16
	subs	r2, r2, #12
	asrs	r1, r1, r3
	str	r2, [r5, #28]
	uxth	r0, r1
	strh	r0, [r5, #24]	@ movhi
.L291:
	ldr	r3, .L372
	add	r6, r4, #5792
	ldr	r10, .L372+4
	mov	r7, r6
	str	r8, [sp, #12]
	adds	r6, r6, #24
.LPIC34:
	add	r3, pc
	adds	r7, r7, #28
	movs	r1, #0
.LPIC35:
	add	r10, pc
	mov	r9, r5
	mov	r8, r3
	b	.L290
.L365:
	ldrb	r3, [r1, r8]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldr	r5, [r4, #20]
	cmp	r1, ip
	ldr	lr, [r4, #8]
	add	r3, r4, r3, lsl #2
	add	fp, r5, #1
	ldrh	r3, [r3, #2686]
	lsl	r2, r3, r2
	orr	r2, r2, r0
	uxth	r2, r2
	strh	r2, [r6]	@ movhi
	str	fp, [r4, #20]
	strb	r2, [lr, r5]
	ldr	r0, [r4, #20]
	ldrh	r5, [r6]
	add	r2, r0, #1
	str	r2, [r4, #20]
	ldr	r2, [r4, #8]
	lsr	r5, r5, #8
	strb	r5, [r2, r0]
	ldr	r2, [r7]
	rsb	r0, r2, #16
	sub	r2, r2, #13
	asr	r3, r3, r0
	uxth	r0, r3
	strh	r0, [r6]	@ movhi
	str	r2, [r7]
	bge	.L364
.L290:
	cmp	r2, #13
	bgt	.L365
	ldrb	r3, [r1, r10]	@ zero_extendqisi2
	adds	r1, r1, #1
	cmp	r1, ip
	add	r3, r4, r3, lsl #2
	ldrh	r3, [r3, #2686]
	lsl	r3, r3, r2
	add	r2, r2, #3
	orr	r0, r0, r3
	uxth	r0, r0
	strh	r0, [r6]	@ movhi
	str	r2, [r7]
	blt	.L290
.L364:
	add	r7, r4, #148
	ldr	r2, [sp, #4]
	mov	r1, r7
	mov	r0, r4
	addw	r6, r4, #2440
	ldr	r8, [sp, #12]
	bl	send_tree(PLT)
	ldr	r2, [sp, #8]
	mov	r1, r6
	mov	r0, r4
	mov	r5, r9
	bl	send_tree(PLT)
	mov	r0, r4
	mov	r1, r7
	mov	r2, r6
	bl	compress_block(PLT)
	b	.L282
.L362:
	ldr	r3, [r5, #28]
	cmp	r3, #8
	bgt	.L366
	cmp	r3, #0
	ble	.L305
	ldr	r3, [r4, #20]
	ldrh	r1, [r5, #24]
	ldr	r2, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
.L305:
	movs	r3, #0
	strh	r3, [r5, #24]	@ movhi
	str	r3, [r5, #28]
.L371:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L278:
	ldr	r3, [r5, #28]
	cmp	r3, #13
	bgt	.L367
	add	r1, r8, #2
	ldrh	r2, [r5, #24]
	uxth	r1, r1
	adds	r0, r3, #3
	str	r0, [r5, #28]
	lsl	r3, r1, r3
	orrs	r3, r3, r2
	strh	r3, [r5, #24]	@ movhi
.L281:
	ldr	r1, .L372+8
	mov	r0, r4
	ldr	r2, .L372+12
.LPIC32:
	add	r1, pc
.LPIC33:
	add	r2, pc
	bl	compress_block(PLT)
	b	.L282
.L244:
	adds	r3, r2, #5
	mov	ip, #1
	mov	r0, r3
	movs	r1, #0
	add	r5, r4, #5792
	b	.L275
.L359:
	movw	r3, #49279
	mov	r1, r0
	movt	r3, 62463
	movs	r2, #0
.L249:
	tst	r3, #1
	add	r2, r2, #1
	lsr	r3, r3, #1
	beq	.L246
	ldrh	r0, [r1, #148]
	cmp	r0, #0
	bne	.L306
.L246:
	cmp	r2, #32
	add	r1, r1, #4
	bne	.L249
	ldrh	r3, [r4, #184]
	cbnz	r3, .L310
	ldrh	r3, [r4, #188]
	cbnz	r3, .L310
	ldrh	r3, [r4, #200]
	cbz	r3, .L250
	b	.L310
.L368:
	cmp	r3, #896
	beq	.L247
.L250:
	adds	r2, r4, r3
	adds	r3, r3, #4
	ldrh	r2, [r2, #276]
	cmp	r2, #0
	beq	.L368
.L310:
	movs	r2, #1
.L247:
	str	r2, [r5, #44]
	b	.L245
.L363:
	add	r0, r8, #4
	ldrh	lr, [r5, #24]
	uxth	r0, r0
	ldr	r3, [r4, #20]
	ldr	r6, [r4, #8]
	lsl	r2, r0, r2
	adds	r7, r3, #1
	orr	r2, r2, lr
	uxth	r2, r2
	strh	r2, [r5, #24]	@ movhi
	str	r7, [r4, #20]
	strb	r2, [r6, r3]
	ldrh	r6, [r5, #24]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	lsrs	r6, r6, #8
	adds	r7, r3, #1
	str	r7, [r4, #20]
	strb	r6, [r2, r3]
	ldr	r3, [r5, #28]
	rsb	r2, r3, #16
	subs	r3, r3, #13
	asrs	r0, r0, r2
	str	r3, [r5, #28]
	uxth	r0, r0
	strh	r0, [r5, #24]	@ movhi
	b	.L284
.L367:
	add	r2, r8, #2
	ldrh	r7, [r5, #24]
	uxth	r2, r2
	ldr	r1, [r4, #20]
	ldr	r0, [r4, #8]
	lsl	r3, r2, r3
	adds	r6, r1, #1
	orrs	r3, r3, r7
	uxth	r3, r3
	strh	r3, [r5, #24]	@ movhi
	str	r6, [r4, #20]
	strb	r3, [r0, r1]
	ldrh	r0, [r5, #24]
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #8]
	lsrs	r0, r0, #8
	adds	r6, r3, #1
	str	r6, [r4, #20]
	strb	r0, [r1, r3]
	ldr	r3, [r5, #28]
	rsb	r1, r3, #16
	subs	r3, r3, #13
	asrs	r2, r2, r1
	str	r3, [r5, #28]
	strh	r2, [r5, #24]	@ movhi
	b	.L281
.L285:
	uxth	r6, r6
	adds	r2, r3, #5
	cmp	r2, #11
	str	r2, [r5, #28]
	lsl	r3, r6, r3
	orr	r0, r0, r3
	ldr	r3, [sp, #8]
	uxth	r0, r0
	strh	r0, [r5, #24]	@ movhi
	uxth	r6, r3
	bgt	.L369
.L287:
	adds	r3, r2, #5
	lsl	r2, r6, r2
	cmp	r3, #12
	str	r3, [r5, #28]
	orr	r0, r0, r2
	uxth	r0, r0
	strh	r0, [r5, #24]	@ movhi
	bgt	.L370
.L289:
	sub	r1, ip, #4
	adds	r2, r3, #4
	uxth	r1, r1
	str	r2, [r5, #28]
	lsl	r3, r1, r3
	orrs	r0, r0, r3
	uxth	r0, r0
	strh	r0, [r5, #24]	@ movhi
	b	.L291
.L366:
	ldr	r3, [r4, #20]
	ldrh	r1, [r5, #24]
	ldr	r2, [r4, #8]
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	ldrh	r1, [r5, #24]
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #8]
	lsrs	r1, r1, #8
	adds	r0, r3, #1
	str	r0, [r4, #20]
	strb	r1, [r2, r3]
	movs	r3, #0
	strh	r3, [r5, #24]	@ movhi
	str	r3, [r5, #28]
	b	.L371
.L306:
	movs	r2, #0
	b	.L247
.L325:
	movs	r1, #10
.L264:
	add	ip, r1, #1
	add	r0, ip, ip, lsl #1
	b	.L265
.L322:
	movs	r1, #13
	b	.L264
.L318:
	movs	r1, #17
	b	.L264
.L317:
	movs	r1, #18
	b	.L264
.L321:
	movs	r1, #14
	b	.L264
.L320:
	movs	r1, #15
	b	.L264
.L319:
	movs	r1, #16
	b	.L264
.L323:
	movs	r1, #12
	b	.L264
.L326:
	movs	r1, #9
	b	.L264
.L327:
	movs	r1, #8
	b	.L264
.L328:
	movs	r1, #7
	b	.L264
.L329:
	movs	r1, #6
	b	.L264
.L324:
	movs	r1, #11
	b	.L264
.L332:
	movs	r1, #3
	b	.L264
.L330:
	movs	r1, #5
	b	.L264
.L331:
	movs	r1, #4
	b	.L264
.L373:
	.align	2
.L372:
	.word	.LANCHOR9-(.LPIC34+4)
	.word	.LANCHOR9-(.LPIC35+4)
	.word	.LANCHOR7-(.LPIC32+4)
	.word	.LANCHOR8-(.LPIC33+4)
	.size	_tr_flush_block, .-_tr_flush_block
	.section	.text._tr_tally,"ax",%progbits
	.align	2
	.global	_tr_tally
	.thumb
	.thumb_func
	.type	_tr_tally, %function
_tr_tally:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r0, #5792
	push	{r4, r5, r6, r7, lr}
	ldr	r4, [r3]
	add	r6, r0, #5760
	ldr	r7, [r6, #24]
	ldr	lr, [r3, #4]
	add	ip, r4, #1
	ldr	r5, .L381
	strh	r1, [lr, r4, lsl #1]	@ movhi
.LPIC36:
	add	r5, pc
	str	ip, [r3]
	strb	r2, [r7, r4]
	cbz	r1, .L380
	ldr	r4, [r3, #16]
	subs	r1, r1, #1
	ldr	r7, .L381+4
	cmp	r1, #255
	add	r4, r4, #1
	str	r4, [r3, #16]
	ldr	r4, [r5, r7]
	ldrb	r2, [r4, r2]	@ zero_extendqisi2
	addw	r2, r2, #257
	add	r2, r0, r2, lsl #2
	ldrh	r4, [r2, #148]
	add	r4, r4, #1
	strh	r4, [r2, #148]	@ movhi
	ldr	r2, .L381+8
	ldr	r2, [r5, r2]
	itee	ls
	ldrbls	r2, [r2, r1]	@ zero_extendqisi2
	addhi	r1, r2, r1, lsr #7
	ldrbhi	r2, [r1, #256]	@ zero_extendqisi2
	add	r0, r0, r2, lsl #2
	ldrh	r2, [r0, #2440]
	adds	r2, r2, #1
	strh	r2, [r0, #2440]	@ movhi
.L376:
	ldr	r2, [r6, #28]
	ldr	r0, [r3]
	subs	r3, r2, #1
	subs	r0, r0, r3
	clz	r0, r0
	lsrs	r0, r0, #5
	pop	{r4, r5, r6, r7, pc}
.L380:
	add	r0, r0, r2, lsl #2
	ldrh	r2, [r0, #148]
	adds	r2, r2, #1
	strh	r2, [r0, #148]	@ movhi
	b	.L376
.L382:
	.align	2
.L381:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC36+4)
	.word	_length_code(GOT)
	.word	_dist_code(GOT)
	.size	_tr_tally, .-_tr_tally
	.global	_length_code
	.global	_dist_code
	.section	.rodata.base_length,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	base_length, %object
	.size	base_length, 116
base_length:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	10
	.word	12
	.word	14
	.word	16
	.word	20
	.word	24
	.word	28
	.word	32
	.word	40
	.word	48
	.word	56
	.word	64
	.word	80
	.word	96
	.word	112
	.word	128
	.word	160
	.word	192
	.word	224
	.word	0
	.section	.data.rel.local.static_d_desc,"aw",%progbits
	.align	2
.LANCHOR5 = . + 0
	.type	static_d_desc, %object
	.size	static_d_desc, 20
static_d_desc:
	.word	static_dtree
	.word	extra_dbits
	.word	0
	.word	30
	.word	15
	.section	.rodata.extra_lbits,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	extra_lbits, %object
	.size	extra_lbits, 116
extra_lbits:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.word	4
	.word	4
	.word	4
	.word	4
	.word	5
	.word	5
	.word	5
	.word	5
	.word	0
	.section	.rodata.extra_blbits,"a",%progbits
	.align	3
	.type	extra_blbits, %object
	.size	extra_blbits, 76
extra_blbits:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	3
	.word	7
	.section	.rodata.base_dist,"a",%progbits
	.align	3
.LANCHOR3 = . + 0
	.type	base_dist, %object
	.size	base_dist, 120
base_dist:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.word	6
	.word	8
	.word	12
	.word	16
	.word	24
	.word	32
	.word	48
	.word	64
	.word	96
	.word	128
	.word	192
	.word	256
	.word	384
	.word	512
	.word	768
	.word	1024
	.word	1536
	.word	2048
	.word	3072
	.word	4096
	.word	6144
	.word	8192
	.word	12288
	.word	16384
	.word	24576
	.section	.data.rel.local.static_bl_desc,"aw",%progbits
	.align	2
.LANCHOR6 = . + 0
	.type	static_bl_desc, %object
	.size	static_bl_desc, 20
static_bl_desc:
	.word	0
	.word	extra_blbits
	.word	0
	.word	19
	.word	7
	.section	.data.rel.local.static_l_desc,"aw",%progbits
	.align	2
.LANCHOR4 = . + 0
	.type	static_l_desc, %object
	.size	static_l_desc, 20
static_l_desc:
	.word	static_ltree
	.word	extra_lbits
	.word	257
	.word	286
	.word	15
	.section	.rodata.static_ltree,"a",%progbits
	.align	2
.LANCHOR7 = . + 0
	.type	static_ltree, %object
	.size	static_ltree, 1152
static_ltree:
	.short	12
	.short	8
	.short	140
	.short	8
	.short	76
	.short	8
	.short	204
	.short	8
	.short	44
	.short	8
	.short	172
	.short	8
	.short	108
	.short	8
	.short	236
	.short	8
	.short	28
	.short	8
	.short	156
	.short	8
	.short	92
	.short	8
	.short	220
	.short	8
	.short	60
	.short	8
	.short	188
	.short	8
	.short	124
	.short	8
	.short	252
	.short	8
	.short	2
	.short	8
	.short	130
	.short	8
	.short	66
	.short	8
	.short	194
	.short	8
	.short	34
	.short	8
	.short	162
	.short	8
	.short	98
	.short	8
	.short	226
	.short	8
	.short	18
	.short	8
	.short	146
	.short	8
	.short	82
	.short	8
	.short	210
	.short	8
	.short	50
	.short	8
	.short	178
	.short	8
	.short	114
	.short	8
	.short	242
	.short	8
	.short	10
	.short	8
	.short	138
	.short	8
	.short	74
	.short	8
	.short	202
	.short	8
	.short	42
	.short	8
	.short	170
	.short	8
	.short	106
	.short	8
	.short	234
	.short	8
	.short	26
	.short	8
	.short	154
	.short	8
	.short	90
	.short	8
	.short	218
	.short	8
	.short	58
	.short	8
	.short	186
	.short	8
	.short	122
	.short	8
	.short	250
	.short	8
	.short	6
	.short	8
	.short	134
	.short	8
	.short	70
	.short	8
	.short	198
	.short	8
	.short	38
	.short	8
	.short	166
	.short	8
	.short	102
	.short	8
	.short	230
	.short	8
	.short	22
	.short	8
	.short	150
	.short	8
	.short	86
	.short	8
	.short	214
	.short	8
	.short	54
	.short	8
	.short	182
	.short	8
	.short	118
	.short	8
	.short	246
	.short	8
	.short	14
	.short	8
	.short	142
	.short	8
	.short	78
	.short	8
	.short	206
	.short	8
	.short	46
	.short	8
	.short	174
	.short	8
	.short	110
	.short	8
	.short	238
	.short	8
	.short	30
	.short	8
	.short	158
	.short	8
	.short	94
	.short	8
	.short	222
	.short	8
	.short	62
	.short	8
	.short	190
	.short	8
	.short	126
	.short	8
	.short	254
	.short	8
	.short	1
	.short	8
	.short	129
	.short	8
	.short	65
	.short	8
	.short	193
	.short	8
	.short	33
	.short	8
	.short	161
	.short	8
	.short	97
	.short	8
	.short	225
	.short	8
	.short	17
	.short	8
	.short	145
	.short	8
	.short	81
	.short	8
	.short	209
	.short	8
	.short	49
	.short	8
	.short	177
	.short	8
	.short	113
	.short	8
	.short	241
	.short	8
	.short	9
	.short	8
	.short	137
	.short	8
	.short	73
	.short	8
	.short	201
	.short	8
	.short	41
	.short	8
	.short	169
	.short	8
	.short	105
	.short	8
	.short	233
	.short	8
	.short	25
	.short	8
	.short	153
	.short	8
	.short	89
	.short	8
	.short	217
	.short	8
	.short	57
	.short	8
	.short	185
	.short	8
	.short	121
	.short	8
	.short	249
	.short	8
	.short	5
	.short	8
	.short	133
	.short	8
	.short	69
	.short	8
	.short	197
	.short	8
	.short	37
	.short	8
	.short	165
	.short	8
	.short	101
	.short	8
	.short	229
	.short	8
	.short	21
	.short	8
	.short	149
	.short	8
	.short	85
	.short	8
	.short	213
	.short	8
	.short	53
	.short	8
	.short	181
	.short	8
	.short	117
	.short	8
	.short	245
	.short	8
	.short	13
	.short	8
	.short	141
	.short	8
	.short	77
	.short	8
	.short	205
	.short	8
	.short	45
	.short	8
	.short	173
	.short	8
	.short	109
	.short	8
	.short	237
	.short	8
	.short	29
	.short	8
	.short	157
	.short	8
	.short	93
	.short	8
	.short	221
	.short	8
	.short	61
	.short	8
	.short	189
	.short	8
	.short	125
	.short	8
	.short	253
	.short	8
	.short	19
	.short	9
	.short	275
	.short	9
	.short	147
	.short	9
	.short	403
	.short	9
	.short	83
	.short	9
	.short	339
	.short	9
	.short	211
	.short	9
	.short	467
	.short	9
	.short	51
	.short	9
	.short	307
	.short	9
	.short	179
	.short	9
	.short	435
	.short	9
	.short	115
	.short	9
	.short	371
	.short	9
	.short	243
	.short	9
	.short	499
	.short	9
	.short	11
	.short	9
	.short	267
	.short	9
	.short	139
	.short	9
	.short	395
	.short	9
	.short	75
	.short	9
	.short	331
	.short	9
	.short	203
	.short	9
	.short	459
	.short	9
	.short	43
	.short	9
	.short	299
	.short	9
	.short	171
	.short	9
	.short	427
	.short	9
	.short	107
	.short	9
	.short	363
	.short	9
	.short	235
	.short	9
	.short	491
	.short	9
	.short	27
	.short	9
	.short	283
	.short	9
	.short	155
	.short	9
	.short	411
	.short	9
	.short	91
	.short	9
	.short	347
	.short	9
	.short	219
	.short	9
	.short	475
	.short	9
	.short	59
	.short	9
	.short	315
	.short	9
	.short	187
	.short	9
	.short	443
	.short	9
	.short	123
	.short	9
	.short	379
	.short	9
	.short	251
	.short	9
	.short	507
	.short	9
	.short	7
	.short	9
	.short	263
	.short	9
	.short	135
	.short	9
	.short	391
	.short	9
	.short	71
	.short	9
	.short	327
	.short	9
	.short	199
	.short	9
	.short	455
	.short	9
	.short	39
	.short	9
	.short	295
	.short	9
	.short	167
	.short	9
	.short	423
	.short	9
	.short	103
	.short	9
	.short	359
	.short	9
	.short	231
	.short	9
	.short	487
	.short	9
	.short	23
	.short	9
	.short	279
	.short	9
	.short	151
	.short	9
	.short	407
	.short	9
	.short	87
	.short	9
	.short	343
	.short	9
	.short	215
	.short	9
	.short	471
	.short	9
	.short	55
	.short	9
	.short	311
	.short	9
	.short	183
	.short	9
	.short	439
	.short	9
	.short	119
	.short	9
	.short	375
	.short	9
	.short	247
	.short	9
	.short	503
	.short	9
	.short	15
	.short	9
	.short	271
	.short	9
	.short	143
	.short	9
	.short	399
	.short	9
	.short	79
	.short	9
	.short	335
	.short	9
	.short	207
	.short	9
	.short	463
	.short	9
	.short	47
	.short	9
	.short	303
	.short	9
	.short	175
	.short	9
	.short	431
	.short	9
	.short	111
	.short	9
	.short	367
	.short	9
	.short	239
	.short	9
	.short	495
	.short	9
	.short	31
	.short	9
	.short	287
	.short	9
	.short	159
	.short	9
	.short	415
	.short	9
	.short	95
	.short	9
	.short	351
	.short	9
	.short	223
	.short	9
	.short	479
	.short	9
	.short	63
	.short	9
	.short	319
	.short	9
	.short	191
	.short	9
	.short	447
	.short	9
	.short	127
	.short	9
	.short	383
	.short	9
	.short	255
	.short	9
	.short	511
	.short	9
	.short	0
	.short	7
	.short	64
	.short	7
	.short	32
	.short	7
	.short	96
	.short	7
	.short	16
	.short	7
	.short	80
	.short	7
	.short	48
	.short	7
	.short	112
	.short	7
	.short	8
	.short	7
	.short	72
	.short	7
	.short	40
	.short	7
	.short	104
	.short	7
	.short	24
	.short	7
	.short	88
	.short	7
	.short	56
	.short	7
	.short	120
	.short	7
	.short	4
	.short	7
	.short	68
	.short	7
	.short	36
	.short	7
	.short	100
	.short	7
	.short	20
	.short	7
	.short	84
	.short	7
	.short	52
	.short	7
	.short	116
	.short	7
	.short	3
	.short	8
	.short	131
	.short	8
	.short	67
	.short	8
	.short	195
	.short	8
	.short	35
	.short	8
	.short	163
	.short	8
	.short	99
	.short	8
	.short	227
	.short	8
	.section	.rodata.static_dtree,"a",%progbits
	.align	2
.LANCHOR8 = . + 0
	.type	static_dtree, %object
	.size	static_dtree, 120
static_dtree:
	.short	0
	.short	5
	.short	16
	.short	5
	.short	8
	.short	5
	.short	24
	.short	5
	.short	4
	.short	5
	.short	20
	.short	5
	.short	12
	.short	5
	.short	28
	.short	5
	.short	2
	.short	5
	.short	18
	.short	5
	.short	10
	.short	5
	.short	26
	.short	5
	.short	6
	.short	5
	.short	22
	.short	5
	.short	14
	.short	5
	.short	30
	.short	5
	.short	1
	.short	5
	.short	17
	.short	5
	.short	9
	.short	5
	.short	25
	.short	5
	.short	5
	.short	5
	.short	21
	.short	5
	.short	13
	.short	5
	.short	29
	.short	5
	.short	3
	.short	5
	.short	19
	.short	5
	.short	11
	.short	5
	.short	27
	.short	5
	.short	7
	.short	5
	.short	23
	.short	5
	.section	.rodata._dist_code,"a",%progbits
	.align	3
	.type	_dist_code, %object
	.size	_dist_code, 512
_dist_code:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	0
	.byte	0
	.byte	16
	.byte	17
	.byte	18
	.byte	18
	.byte	19
	.byte	19
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	28
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.byte	29
	.section	.rodata._length_code,"a",%progbits
	.align	3
	.type	_length_code, %object
	.size	_length_code, 256
_length_code:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	26
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	28
	.section	.rodata.bl_order,"a",%progbits
	.align	3
.LANCHOR9 = . + 0
	.type	bl_order, %object
	.size	bl_order, 19
bl_order:
	.byte	16
	.byte	17
	.byte	18
	.byte	0
	.byte	8
	.byte	7
	.byte	9
	.byte	6
	.byte	10
	.byte	5
	.byte	11
	.byte	4
	.byte	12
	.byte	3
	.byte	13
	.byte	2
	.byte	14
	.byte	1
	.byte	15
	.section	.rodata.extra_dbits,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	extra_dbits, %object
	.size	extra_dbits, 120
extra_dbits:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.word	6
	.word	6
	.word	7
	.word	7
	.word	8
	.word	8
	.word	9
	.word	9
	.word	10
	.word	10
	.word	11
	.word	11
	.word	12
	.word	12
	.word	13
	.word	13
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
