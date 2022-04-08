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
	.file	"jdmarker.c"
	.section	.text.get_sof,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	get_sof, %function
get_sof:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	ldr	r6, [r0, #24]
	ldr	r3, [r6, #8]
	ldr	r5, [r6]
	str	r1, [r0, #232]
	str	r2, [r0, #236]
	cmp	r3, #0
	beq	.L73
.L2:
	subs	r3, r3, #1
	ldrb	r7, [r5]	@ zero_extendqisi2
	it	ne
	addne	r5, r5, #1
	beq	.L74
	subs	r3, r3, #1
	ldrb	r9, [r5]	@ zero_extendqisi2
	it	ne
	addne	r5, r5, #1
	beq	.L75
.L9:
	ldrb	r2, [r5]	@ zero_extendqisi2
	subs	r3, r3, #1
	it	ne
	addne	r5, r5, #1
	str	r2, [r4, #220]
	beq	.L76
.L11:
	ldrb	r2, [r5]	@ zero_extendqisi2
	subs	r3, r3, #1
	it	ne
	addne	r5, r5, #1
	lsl	r2, r2, #8
	str	r2, [r4, #36]
	beq	.L77
.L13:
	ldrb	r1, [r5]	@ zero_extendqisi2
	subs	r3, r3, #1
	it	ne
	addne	r5, r5, #1
	add	r2, r2, r1
	str	r2, [r4, #36]
	beq	.L78
.L15:
	ldrb	r2, [r5]	@ zero_extendqisi2
	subs	r3, r3, #1
	it	ne
	addne	r5, r5, #1
	lsl	r2, r2, #8
	str	r2, [r4, #32]
	beq	.L79
.L17:
	ldrb	r1, [r5]	@ zero_extendqisi2
	subs	r3, r3, #1
	it	ne
	addne	r8, r5, #1
	add	r2, r2, r1
	str	r2, [r4, #32]
	bne	.L19
	ldr	r3, [r6, #20]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L7
	ldr	r8, [r6]
	ldr	r3, [r6, #8]
.L19:
	ldrb	r1, [r8]	@ zero_extendqisi2
	mov	lr, #100
	ldr	r2, [r4]
	mov	r0, r4
	ldr	r5, [r4, #428]
	add	r7, r9, r7, lsl #8
	str	r1, [r4, #40]
	movs	r1, #1
	ldr	ip, [r2, #4]
	add	r8, r8, r1
	str	r5, [r2, #24]
	subs	r5, r3, #1
	ldr	r3, [r4, #32]
	subs	r7, r7, #8
	str	r3, [r2, #28]
	ldr	r3, [r4, #36]
	str	r3, [r2, #32]
	ldr	r3, [r4, #40]
	str	lr, [r2, #20]
	str	r3, [r2, #36]
	blx	ip
	ldr	r3, [r4, #452]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L80
.L20:
	ldr	r3, [r4, #36]
	cbz	r3, .L21
	ldr	r3, [r4, #32]
	cmp	r3, #0
	bne	.L81
.L21:
	ldr	r3, [r4]
	movs	r2, #32
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r4, #40]
.L22:
	add	r3, r2, r2, lsl #1
	cmp	r3, r7
	beq	.L23
	ldr	r3, [r4]
	movs	r2, #11
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r4, #40]
.L23:
	ldr	r3, [r4, #224]
	cmp	r3, #0
	beq	.L82
.L24:
	cmp	r2, #0
	ble	.L25
	add	r10, r3, #84
	movs	r7, #0
	mov	r9, #101
	b	.L31
.L26:
	ldrb	r3, [r8]	@ zero_extendqisi2
	subs	r5, r5, #1
	it	ne
	addne	r2, r8, #1
	str	r3, [r10, #-84]
	beq	.L83
.L28:
	ldrb	r3, [r2]	@ zero_extendqisi2
	subs	r5, r5, #1
	it	ne
	addne	r2, r2, #1
	and	r1, r3, #15
	asr	r3, r3, #4
	str	r1, [r10, #-72]
	str	r3, [r10, #-76]
	bne	.L30
	ldr	r3, [r6, #20]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L7
	ldr	r2, [r6]
	ldr	r5, [r6, #8]
.L30:
	ldrb	r3, [r2]	@ zero_extendqisi2
	movs	r1, #1
	add	r8, r2, r1
	ldr	r2, [r10, #-84]
	mov	r0, r4
	add	r7, r7, r1
	str	r3, [r10, #-68]
	subs	r5, r5, #1
	ldr	r3, [r4]
	add	r10, r10, #84
	str	r2, [r3, #24]
	ldr	r2, [r10, #-160]
	ldr	ip, [r3, #4]
	str	r2, [r3, #28]
	ldr	r2, [r10, #-156]
	str	r2, [r3, #32]
	ldr	r2, [r10, #-152]
	str	r9, [r3, #20]
	str	r2, [r3, #36]
	blx	ip
	ldr	r3, [r4, #40]
	cmp	r3, r7
	ble	.L25
.L31:
	str	r7, [r10, #-80]
	cmp	r5, #0
	bne	.L26
	ldr	r3, [r6, #20]
	mov	r0, r4
	blx	r3
	cbz	r0, .L7
	ldr	r8, [r6]
	ldr	r5, [r6, #8]
	b	.L26
.L76:
	ldr	r3, [r6, #20]
	mov	r0, r4
	blx	r3
	cbz	r0, .L7
	ldr	r5, [r6]
	ldr	r3, [r6, #8]
	b	.L11
.L73:
	ldr	r3, [r6, #20]
	blx	r3
	cmp	r0, #0
	bne	.L3
.L7:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L83:
	ldr	r3, [r6, #20]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L7
	ldr	r2, [r6]
	ldr	r5, [r6, #8]
	b	.L28
.L74:
	ldr	r3, [r6, #20]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L7
	ldr	r3, [r6, #8]
	ldr	r5, [r6]
	subs	r3, r3, #1
	ldrb	r9, [r5]	@ zero_extendqisi2
	it	ne
	addne	r5, r5, #1
	bne	.L9
.L75:
	ldr	r3, [r6, #20]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L7
	ldr	r5, [r6]
	ldr	r3, [r6, #8]
	b	.L9
.L77:
	ldr	r3, [r6, #20]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L7
	ldr	r5, [r6]
	ldr	r3, [r6, #8]
	ldr	r2, [r4, #36]
	b	.L13
.L3:
	ldr	r5, [r6]
	ldr	r3, [r6, #8]
	b	.L2
.L78:
	ldr	r3, [r6, #20]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L7
	ldr	r5, [r6]
	ldr	r3, [r6, #8]
	b	.L15
.L81:
	ldr	r2, [r4, #40]
	cmp	r2, #0
	bgt	.L22
	b	.L21
.L25:
	ldr	r2, [r4, #452]
	movs	r3, #1
	mov	r0, r3
	str	r3, [r2, #20]
	str	r8, [r6]
	str	r5, [r6, #8]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L79:
	ldr	r3, [r6, #20]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	beq	.L7
	ldr	r5, [r6]
	ldr	r3, [r6, #8]
	ldr	r2, [r4, #32]
	b	.L17
.L80:
	ldr	r3, [r4]
	movs	r2, #58
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L20
.L82:
	ldr	r3, [r4, #4]
	movs	r1, #84
	mul	r2, r1, r2
	mov	r0, r4
	movs	r1, #1
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r4, #40]
	mov	r3, r0
	str	r0, [r4, #224]
	b	.L24
	.size	get_sof, .-get_sof
	.section	.text.examine_app0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	examine_app0, %function
examine_app0:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #13
	push	{r4, r5, r6, r7, lr}
	add	r3, r3, r2
	sub	sp, sp, #12
	mov	r5, r1
	mov	r4, r0
	bls	.L85
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r2, #74
	beq	.L105
.L86:
	ldr	r2, [r4]
	movs	r5, #77
.L103:
	mov	r0, r4
	movs	r1, #1
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r5, [r2, #20]
.L104:
	ldr	r3, [r3, #4]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, lr}
	bx	r3	@ indirect register sibling call
.L85:
	cmp	r2, #5
	bls	.L86
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r2, #74
	bne	.L86
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	cmp	r2, #70
	bne	.L86
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	b	.L87
.L105:
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	cmp	r2, #70
	bne	.L86
	ldrb	r2, [r1, #2]	@ zero_extendqisi2
	cmp	r2, #73
	beq	.L106
.L87:
	cmp	r2, #88
	bne	.L86
	ldrb	r2, [r5, #3]	@ zero_extendqisi2
	cmp	r2, #88
	bne	.L86
	ldrb	r2, [r5, #4]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L86
	ldrb	r2, [r5, #5]	@ zero_extendqisi2
	cmp	r2, #17
	beq	.L92
	cmp	r2, #19
	beq	.L93
	cmp	r2, #16
	ldr	r2, [r4]
	it	eq
	moveq	r5, #108
	beq	.L103
	movs	r6, #89
	mov	r0, r4
	str	r6, [r2, #20]
	movs	r1, #1
	ldrb	r5, [r5, #5]	@ zero_extendqisi2
	str	r5, [r2, #24]
	ldr	r2, [r4]
	str	r3, [r2, #28]
	ldr	r3, [r4]
	b	.L104
.L106:
	ldrb	r2, [r1, #3]	@ zero_extendqisi2
	cmp	r2, #70
	bne	.L86
	ldrb	r2, [r1, #4]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L86
	movs	r2, #1
	str	r2, [r0, #292]
	ldrb	r2, [r1, #5]	@ zero_extendqisi2
	strb	r2, [r0, #296]
	cmp	r2, #1
	ldrb	r1, [r1, #6]	@ zero_extendqisi2
	strb	r1, [r0, #297]
	ldrb	r1, [r5, #7]	@ zero_extendqisi2
	strb	r1, [r0, #298]
	ldrb	r6, [r5, #8]	@ zero_extendqisi2
	ldrb	r1, [r5, #9]	@ zero_extendqisi2
	add	r1, r1, r6, lsl #8
	strh	r1, [r0, #300]	@ movhi
	ldrb	r6, [r5, #10]	@ zero_extendqisi2
	ldrb	r1, [r5, #11]	@ zero_extendqisi2
	add	r1, r1, r6, lsl #8
	strh	r1, [r0, #302]	@ movhi
	beq	.L88
	ldr	r2, [r0]
	movs	r6, #119
	mov	r1, #-1
	str	r6, [r2, #20]
	ldrb	r6, [r0, #296]	@ zero_extendqisi2
	str	r6, [r2, #24]
	ldr	r2, [r0]
	ldrb	r6, [r0, #297]	@ zero_extendqisi2
	str	r6, [r2, #28]
	ldr	r2, [r0]
	ldr	r2, [r2, #4]
	str	r3, [sp, #4]
	blx	r2
	ldr	r3, [sp, #4]
.L88:
	ldr	r2, [r4]
	mov	lr, #87
	ldrb	r6, [r4, #296]	@ zero_extendqisi2
	movs	r1, #1
	ldrh	r7, [r4, #302]
	mov	r0, r4
	ldrh	ip, [r4, #300]
	str	r6, [r2, #24]
	ldrb	r6, [r4, #297]	@ zero_extendqisi2
	str	ip, [r2, #32]
	str	r7, [r2, #36]
	str	r6, [r2, #28]
	ldrb	r7, [r4, #298]	@ zero_extendqisi2
	ldr	r6, [r2, #4]
	str	lr, [r2, #20]
	str	r7, [r2, #40]
	str	r3, [sp, #4]
	blx	r6
	ldrb	r1, [r5, #13]	@ zero_extendqisi2
	ldrb	r2, [r5, #12]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	orrs	r2, r1, r2
	it	eq
	moveq	r1, r2
	bne	.L107
.L89:
	smulbb	r2, r2, r1
	subs	r3, r3, #14
	add	r2, r2, r2, lsl #1
	cmp	r2, r3
	itt	ne
	ldrne	r2, [r4]
	movne	r5, #88
	bne	.L103
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L93:
	ldr	r2, [r4]
	movs	r5, #110
	b	.L103
.L92:
	ldr	r2, [r4]
	movs	r5, #109
	b	.L103
.L107:
	ldr	r2, [r4]
	movs	r6, #90
	movs	r1, #1
	mov	r0, r4
	str	r6, [r2, #20]
	ldrb	r6, [r5, #12]	@ zero_extendqisi2
	str	r6, [r2, #24]
	ldr	r2, [r4]
	ldrb	r6, [r5, #13]	@ zero_extendqisi2
	str	r6, [r2, #28]
	ldr	r2, [r4]
	ldr	r2, [r2, #4]
	str	r3, [sp, #4]
	blx	r2
	ldrb	r2, [r5, #12]	@ zero_extendqisi2
	ldrb	r1, [r5, #13]	@ zero_extendqisi2
	ldr	r3, [sp, #4]
	b	.L89
	.size	examine_app0, .-examine_app0
	.section	.text.skip_variable,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	skip_variable, %function
skip_variable:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r5, [r0, #24]
	ldr	r3, [r5, #8]
	ldr	r6, [r5]
	cmp	r3, #0
	beq	.L120
.L109:
	ldrb	r7, [r6]	@ zero_extendqisi2
	subs	r8, r3, #1
	it	ne
	addne	r6, r6, #1
	lsl	r7, r7, #8
	bne	.L113
	ldr	r3, [r5, #20]
	mov	r0, r4
	blx	r3
	cbz	r0, .L114
	ldr	r6, [r5]
	ldr	r8, [r5, #8]
.L113:
	ldr	r3, [r4, #428]
	movs	r1, #91
	ldr	r2, [r4]
	mov	r0, r4
	ldrb	lr, [r6], #1	@ zero_extendqisi2
	str	r3, [r2, #24]
	ldr	r3, [r4]
	add	r7, r7, lr
	subs	r7, r7, #2
	str	r1, [r2, #20]
	movs	r1, #1
	str	r7, [r3, #28]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r7, #0
	add	r3, r8, #-1
	str	r6, [r5]
	str	r3, [r5, #8]
	ble	.L115
	ldr	r3, [r4, #24]
	mov	r0, r4
	mov	r1, r7
	ldr	r3, [r3, #24]
	blx	r3
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L115:
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L120:
	ldr	r3, [r5, #20]
	blx	r3
	cbz	r0, .L114
	ldr	r6, [r5]
	ldr	r3, [r5, #8]
	b	.L109
.L114:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
	.size	skip_variable, .-skip_variable
	.section	.text.next_marker,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	next_marker, %function
next_marker:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	ldr	r5, [r0, #24]
	ldr	r4, [r5, #8]
	ldr	r6, [r5]
	cmp	r4, #0
	beq	.L149
.L122:
	ldrb	r3, [r6]	@ zero_extendqisi2
	subs	r4, r4, #1
	adds	r2, r6, #1
	cmp	r3, #255
	bne	.L128
	b	.L152
.L126:
	ldrb	r1, [r2]	@ zero_extendqisi2
	adds	r3, r2, #1
	subs	r4, r4, #1
	mov	r2, r3
	cmp	r1, #255
	beq	.L131
.L128:
	ldr	r3, [r8, #452]
	ldr	r1, [r3, #32]
	adds	r1, r1, #1
	str	r1, [r3, #32]
	str	r2, [r5]
	str	r4, [r5, #8]
	cmp	r4, #0
	bne	.L126
	ldr	r3, [r5, #20]
	mov	r0, r8
	blx	r3
	cbz	r0, .L127
	ldr	r2, [r5]
	ldr	r4, [r5, #8]
	b	.L126
.L152:
	mov	r3, r2
.L131:
	cbz	r4, .L150
.L129:
	ldrb	r7, [r3]	@ zero_extendqisi2
	adds	r6, r3, #1
	subs	r4, r4, #1
	mov	r3, r6
	cmp	r7, #255
	beq	.L131
	ldr	r3, [r8, #452]
	ldr	r2, [r3, #32]
	cbnz	r7, .L132
	adds	r2, r2, #2
	str	r2, [r3, #32]
	str	r6, [r5]
	str	r4, [r5, #8]
	cmp	r4, #0
	bne	.L122
.L149:
	ldr	r3, [r5, #20]
	mov	r0, r8
	blx	r3
	cbz	r0, .L127
	ldr	r6, [r5]
	ldr	r4, [r5, #8]
	b	.L122
.L150:
	ldr	r3, [r5, #20]
	mov	r0, r8
	blx	r3
	cbz	r0, .L127
	ldr	r3, [r5]
	ldr	r4, [r5, #8]
	b	.L129
.L127:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L132:
	cbnz	r2, .L151
.L134:
	str	r7, [r8, #428]
	movs	r0, #1
	str	r6, [r5]
	str	r4, [r5, #8]
	pop	{r4, r5, r6, r7, r8, pc}
.L151:
	ldr	r3, [r8]
	mov	lr, #116
	mov	r0, r8
	mov	r1, #-1
	str	r2, [r3, #24]
	ldr	r2, [r8]
	str	lr, [r3, #20]
	str	r7, [r2, #28]
	ldr	r3, [r8]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r8, #452]
	movs	r2, #0
	str	r2, [r3, #32]
	b	.L134
	.size	next_marker, .-next_marker
	.section	.text.reset_marker_reader,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	reset_marker_reader, %function
reset_marker_reader:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #452]
	movs	r3, #0
	str	r3, [r0, #224]
	str	r3, [r0, #152]
	str	r3, [r0, #428]
	str	r3, [r2, #16]
	str	r3, [r2, #20]
	str	r3, [r2, #32]
	str	r3, [r2, #172]
	bx	lr
	.size	reset_marker_reader, .-reset_marker_reader
	.section	.text.get_dht,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	get_dht, %function
get_dht:
	@ args = 0, pretend = 0, frame = 304
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	ldr	fp, [r0, #24]
	sub	sp, sp, #308
	ldr	r4, [fp, #8]
	ldr	r7, [fp]
	cmp	r4, #0
	beq	.L197
.L155:
	ldrb	r3, [r7]	@ zero_extendqisi2
	subs	r4, r4, #1
	it	ne
	addne	r7, r7, #1
	lsl	r5, r3, #8
	beq	.L198
.L159:
	ldrb	r10, [r7]	@ zero_extendqisi2
	subs	r4, r4, #1
	adds	r7, r7, #1
	add	r10, r10, r5
	sub	r5, r10, #2
	cmp	r5, #16
	str	r5, [sp, #8]
	ble	.L161
	add	r9, sp, #24
	add	r10, sp, #40
	mov	r6, r7
.L174:
	cbnz	r4, .L162
	ldr	r3, [fp, #20]
	mov	r0, r8
	blx	r3
	cmp	r0, #0
	beq	.L160
	ldr	r6, [fp]
	ldr	r4, [fp, #8]
.L162:
	ldrb	r3, [r6]	@ zero_extendqisi2
	mov	r0, r8
	movs	r1, #1
	subs	r4, r4, #1
	adds	r6, r6, #1
	movs	r7, #0
	str	r3, [sp, #12]
	ldr	r5, [sp, #12]
	ldr	r3, [r8]
	str	r5, [sp, #16]
	str	r5, [r3, #24]
	movs	r5, #80
	str	r5, [r3, #20]
	ldr	r3, [r8]
	ldr	r3, [r3, #4]
	str	r9, [sp, #4]
	blx	r3
	mov	r3, #0
	strb	r3, [r9]
	ldr	r2, [sp, #4]
	mov	r5, r2
.L165:
	cmp	r4, #0
	beq	.L199
.L163:
	ldrb	r3, [r6]	@ zero_extendqisi2
	adds	r2, r6, #1
	subs	r4, r4, #1
	mov	r6, r2
	strb	r3, [r5, #1]!
	cmp	r5, r10
	add	r7, r7, r3
	bne	.L165
	ldr	r3, [r8]
	mov	r0, r8
	str	r2, [sp, #20]
	movs	r1, #2
	ldrb	r2, [r9, #2]	@ zero_extendqisi2
	ldrb	r6, [r9, #1]	@ zero_extendqisi2
	ldr	r5, [sp, #8]
	str	r2, [r3, #28]
	ldrb	r2, [r9, #4]	@ zero_extendqisi2
	str	r6, [r3, #24]
	subs	r5, r5, #17
	ldrb	r6, [r9, #5]	@ zero_extendqisi2
	str	r2, [r3, #36]
	ldrb	r2, [r9, #6]	@ zero_extendqisi2
	ldrb	lr, [r9, #3]	@ zero_extendqisi2
	str	r6, [r3, #40]
	str	r2, [r3, #44]
	ldrb	r6, [r9, #7]	@ zero_extendqisi2
	ldrb	r2, [r9, #8]	@ zero_extendqisi2
	str	r5, [sp, #8]
	movs	r5, #86
	str	lr, [r3, #32]
	str	r6, [r3, #48]
	str	r2, [r3, #52]
	str	r5, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r8]
	mov	r0, r8
	ldrb	r6, [r9, #10]	@ zero_extendqisi2
	movs	r1, #2
	ldrb	r2, [r9, #11]	@ zero_extendqisi2
	ldrb	lr, [r9, #9]	@ zero_extendqisi2
	str	r6, [r3, #28]
	ldrb	r6, [r9, #12]	@ zero_extendqisi2
	str	r2, [r3, #32]
	ldrb	r2, [r9, #13]	@ zero_extendqisi2
	str	r6, [r3, #36]
	ldrb	r6, [r9, #14]	@ zero_extendqisi2
	str	r2, [r3, #40]
	ldrb	r2, [r9, #15]	@ zero_extendqisi2
	str	r6, [r3, #44]
	ldrb	r6, [r9, #16]	@ zero_extendqisi2
	str	r5, [r3, #20]
	str	lr, [r3, #24]
	str	r2, [r3, #48]
	str	r6, [r3, #52]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [sp, #8]
	cmp	r7, #256
	it	le
	cmple	r7, r3
	bgt	.L200
.L166:
	cmp	r7, #0
	beq	.L176
	add	r3, sp, #47
	ldr	r5, [sp, #20]
	adds	r1, r3, r7
	str	r7, [sp, #20]
	mov	r6, r3
	mov	r7, fp
	mov	fp, r1
.L169:
	cmp	r4, #0
	beq	.L201
.L168:
	ldrb	r2, [r5]	@ zero_extendqisi2
	adds	r3, r5, #1
	subs	r4, r4, #1
	mov	r5, r3
	strb	r2, [r6, #1]!
	cmp	r6, fp
	bne	.L169
	mov	fp, r7
	ldr	r7, [sp, #20]
	mov	r6, r3
.L167:
	ldr	r3, [sp, #8]
	add	r5, sp, #48
	rsb	r2, r7, #256
	adds	r0, r5, r7
	movs	r1, #0
	subs	r7, r3, r7
	str	r7, [sp, #8]
	bl	memset(PLT)
	ldr	r3, [sp, #12]
	lsls	r2, r3, #27
	itete	mi
	movmi	r2, r3
	addpl	r7, r8, r3, lsl #2
	addmi	r3, r8, r3, lsl #2
	ldrpl	r3, [sp, #16]
	itttt	mi
	submi	r2, r2, #16
	addmi	r7, r3, #140
	movmi	r3, r2
	strmi	r2, [sp, #16]
	it	pl
	addpl	r7, r7, #188
	cmp	r3, #3
	bhi	.L202
.L172:
	ldr	ip, [r7]
	cmp	ip, #0
	beq	.L203
.L173:
	mov	lr, r9
	ldmia	lr!, {r0, r1, r2, r3}
	ldrb	lr, [lr]	@ zero_extendqisi2
	str	r1, [ip, #4]	@ unaligned
	mov	r1, r5
	str	r2, [ip, #8]	@ unaligned
	mov	r2, #256
	str	r0, [ip]	@ unaligned
	strb	lr, [ip, #16]
	str	r3, [ip, #12]	@ unaligned
	ldr	r0, [r7]
	adds	r0, r0, #17
	bl	memcpy(PLT)
	ldr	r5, [sp, #8]
	cmp	r5, #16
	bgt	.L174
	ldr	r5, [sp, #8]
	mov	r7, r6
.L161:
	cmp	r5, #0
	bne	.L204
.L175:
	movs	r0, #1
	str	r7, [fp]
	str	r4, [fp, #8]
	b	.L157
.L201:
	ldr	r3, [r7, #20]
	mov	r0, r8
	blx	r3
	cbz	r0, .L160
	ldr	r5, [r7]
	ldr	r4, [r7, #8]
	b	.L168
.L199:
	ldr	r3, [fp, #20]
	mov	r0, r8
	blx	r3
	cbz	r0, .L160
	ldr	r6, [fp]
	ldr	r4, [fp, #8]
	b	.L163
.L197:
	ldr	r3, [fp, #20]
	blx	r3
	cbnz	r0, .L156
.L160:
	movs	r0, #0
.L157:
	add	sp, sp, #308
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L200:
	ldr	r3, [r8]
	movs	r2, #8
	mov	r0, r8
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L166
.L202:
	mov	r2, r3
	ldr	r3, [r8]
	movs	r1, #30
	mov	r0, r8
	str	r2, [r3, #24]
	ldr	r2, [r8]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L172
.L198:
	ldr	r3, [fp, #20]
	mov	r0, r8
	blx	r3
	cmp	r0, #0
	beq	.L160
	ldr	r7, [fp]
	ldr	r4, [fp, #8]
	b	.L159
.L156:
	ldr	r7, [fp]
	ldr	r4, [fp, #8]
	b	.L155
.L203:
	mov	r0, r8
	bl	jpeg_alloc_huff_table(PLT)
	mov	ip, r0
	str	r0, [r7]
	b	.L173
.L176:
	ldr	r6, [sp, #20]
	b	.L167
.L204:
	ldr	r3, [r8]
	movs	r2, #11
	mov	r0, r8
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L175
	.size	get_dht, .-get_dht
	.section	.text.read_markers,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	read_markers, %function
read_markers:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L480
	ldr	r2, [r0, #428]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #20
.LPIC24:
	add	r3, pc
	mov	r9, r0
	movs	r7, #1
	str	r3, [sp, #8]
	ldr	r4, [r0, #452]
	cbnz	r2, .L206
	ldr	r2, [r4, #16]
	cmp	r2, #0
	bne	.L207
.L457:
	ldr	r5, [r9, #24]
	ldr	r6, [r5, #8]
	ldr	r2, [r5]
	cmp	r6, #0
	beq	.L447
	subs	r6, r6, #1
	ldrb	r10, [r2]	@ zero_extendqisi2
	it	ne
	addne	r2, r2, #1
	beq	.L448
.L211:
	ldrb	r4, [r2]	@ zero_extendqisi2
	subs	r6, r6, #1
	add	r8, r2, #1
	cmp	r10, #255
	it	eq
	cmpeq	r4, #216
	bne	.L449
.L212:
	str	r4, [r9, #428]
	ldr	r4, [r9, #452]
	str	r8, [r5]
	str	r6, [r5, #8]
.L206:
	ldr	r2, [r4, #28]
	adds	r2, r2, #1
	beq	.L450
.L214:
	ldr	r2, [r9, #428]
	cmp	r2, #207
	ble	.L451
	cmp	r2, #219
	beq	.L227
	ble	.L452
	cmp	r2, #239
	bgt	.L232
	cmp	r2, #224
	bge	.L233
	cmp	r2, #220
	beq	.L225
	cmp	r2, #221
	bne	.L215
	ldr	r5, [r9, #24]
	ldr	r2, [r5, #8]
	ldr	r1, [r5]
	cmp	r2, #0
	beq	.L453
.L291:
	ldrb	r4, [r1]	@ zero_extendqisi2
	subs	r2, r2, #1
	it	ne
	addne	r8, r1, #1
	lsl	r4, r4, #8
	beq	.L454
.L293:
	ldrb	r1, [r8]	@ zero_extendqisi2
	subs	r6, r2, #1
	add	r4, r4, r1
	cmp	r4, #4
	beq	.L294
	ldr	r2, [r9]
	movs	r3, #11
	mov	r0, r9
	str	r3, [r2, #20]
	ldr	r2, [r2]
	blx	r2
.L294:
	add	r2, r8, #1
	cmp	r6, #0
	beq	.L455
.L296:
	ldrb	r4, [r2]	@ zero_extendqisi2
	subs	r8, r6, #1
	it	ne
	addne	r6, r2, #1
	lsl	r4, r4, #8
	bne	.L298
	ldr	r2, [r5, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r6, [r5]
	ldr	r8, [r5, #8]
.L298:
	ldrb	lr, [r6], #1	@ zero_extendqisi2
	movs	r1, #82
	ldr	r2, [r9]
	mov	r0, r9
	add	r4, r4, lr
	str	r1, [r2, #20]
	movs	r1, #1
	str	r4, [r2, #24]
	ldr	r2, [r9]
	ldr	r2, [r2, #4]
	blx	r2
	add	r2, r8, #-1
	str	r4, [r9, #288]
	ldr	r4, [r9, #452]
	str	r6, [r5]
	str	r2, [r5, #8]
	b	.L238
.L451:
	cmp	r2, #205
	bge	.L217
	cmp	r2, #196
	beq	.L218
	ble	.L456
	cmp	r2, #201
	beq	.L224
	blt	.L217
	cmp	r2, #203
	beq	.L217
	bgt	.L225
	movs	r1, #1
	mov	r0, r9
	mov	r2, r1
	bl	get_sof(PLT)
	cmp	r0, #0
	beq	.L209
.L445:
	ldr	r4, [r9, #452]
.L238:
	movs	r2, #0
	str	r2, [r9, #428]
	ldr	r2, [r4, #16]
	cmp	r2, #0
	beq	.L457
.L207:
	mov	r0, r9
	bl	next_marker(PLT)
	cmp	r0, #0
	beq	.L209
	ldr	r4, [r9, #452]
	ldr	r2, [r4, #28]
	adds	r2, r2, #1
	bne	.L214
.L450:
	mov	r0, r9
	bl	jget_input_stream_position(PLT)
	subs	r0, r0, #2
	str	r0, [r4, #28]
	b	.L214
.L452:
	cmp	r2, #216
	beq	.L229
	blt	.L222
	cmp	r2, #217
	beq	.L230
	cmp	r2, #218
	bne	.L215
	ldr	r2, [r9, #452]
	ldr	r10, [r9, #24]
	ldr	r2, [r2, #20]
	ldr	r5, [r10]
	ldr	r4, [r10, #8]
	cbnz	r2, .L239
	ldr	r2, [r9]
	movs	r1, #62
	mov	r0, r9
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
.L239:
	cmp	r4, #0
	beq	.L458
.L240:
	ldrb	r2, [r5]	@ zero_extendqisi2
	subs	r4, r4, #1
	it	ne
	addne	r5, r5, #1
	lsl	r6, r2, #8
	beq	.L459
.L242:
	ldrb	r8, [r5]	@ zero_extendqisi2
	add	r8, r8, r6
	subs	r6, r4, #1
	it	ne
	addne	r5, r5, #1
	bne	.L244
	ldr	r2, [r10, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r5, [r10]
	ldr	r6, [r10, #8]
.L244:
	ldrb	r4, [r5]	@ zero_extendqisi2
	movs	r1, #1
	ldr	r2, [r9]
	adds	r7, r5, r1
	movs	r3, #103
	mov	r0, r9
	subs	r6, r6, #1
	str	r4, [r2, #24]
	ldr	r5, [r9]
	str	r3, [r2, #20]
	ldr	r2, [r5, #4]
	blx	r2
	adds	r2, r4, #3
	cmp	r8, r2, lsl #1
	beq	.L460
.L245:
	ldr	r2, [r9]
	movs	r1, #11
	mov	r0, r9
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
.L246:
	str	r4, [r9, #340]
	cmp	r4, #0
	beq	.L247
	mov	r8, r9
	movs	r5, #1
	mov	fp, r9
	adds	r4, r4, #1
	str	r4, [sp, #8]
.L261:
	cmp	r6, #0
	beq	.L461
	subs	r6, r6, #1
	ldrb	r9, [r7]	@ zero_extendqisi2
	it	ne
	addne	r3, r7, #1
	beq	.L462
.L250:
	ldr	r0, [fp, #40]
	subs	r6, r6, #1
	adds	r7, r3, #1
	ldrb	ip, [r3]	@ zero_extendqisi2
	ldr	r4, [fp, #224]
	cmp	r0, #0
	ble	.L251
	ldr	r3, [r4]
	cmp	r9, r3
	beq	.L252
	movs	r3, #0
	b	.L253
.L254:
	ldr	r2, [r4]
	cmp	r9, r2
	beq	.L252
.L253:
	adds	r3, r3, #1
	adds	r4, r4, #84
	cmp	r3, r0
	bne	.L254
.L251:
	ldr	r3, [fp]
	movs	r2, #5
	mov	r0, fp
	str	r9, [r3, #24]
	ldr	r1, [fp]
	str	r2, [r3, #20]
	ldr	r3, [r1]
	str	ip, [sp]
	blx	r3
	ldr	ip, [sp]
.L252:
	str	r4, [r8, #344]
	asr	r1, ip, #4
	ldr	r2, [fp]
	and	r3, ip, #15
	str	r1, [r4, #20]
	mov	r0, fp
	str	r3, [r4, #24]
	movs	r1, #1
	str	r9, [r2, #24]
	ldr	r3, [r4, #20]
	ldr	ip, [r2, #4]
	str	r3, [r2, #28]
	ldr	r3, [r4, #24]
	str	r3, [r2, #32]
	movs	r3, #104
	str	r3, [r2, #20]
	blx	ip
	subs	r3, r5, #1
	beq	.L256
	ldr	r1, [fp, #344]
	cmp	r4, r1
	beq	.L463
.L257:
	cmp	r3, #1
	beq	.L256
	ldr	r1, [fp, #348]
	cmp	r4, r1
	beq	.L464
.L259:
	cmp	r3, #2
	beq	.L256
	ldr	r1, [fp, #352]
	cmp	r4, r1
	beq	.L465
.L260:
	cmp	r3, #4
	bne	.L256
	ldr	r3, [fp, #356]
	cmp	r4, r3
	beq	.L466
.L256:
	ldr	r2, [sp, #8]
	adds	r5, r5, #1
	add	r8, r8, #4
	cmp	r5, r2
	bne	.L261
	mov	r9, fp
.L247:
	cmp	r6, #0
	beq	.L467
.L262:
	ldrb	r2, [r7]	@ zero_extendqisi2
	subs	r6, r6, #1
	it	ne
	addne	r7, r7, #1
	str	r2, [r9, #412]
	beq	.L468
.L264:
	ldrb	r2, [r7]	@ zero_extendqisi2
	subs	r6, r6, #1
	it	ne
	addne	r4, r7, #1
	str	r2, [r9, #416]
	bne	.L266
	ldr	r2, [r10, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	bne	.L469
.L209:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L456:
	cmp	r2, #193
	bgt	.L220
	cmp	r2, #192
	bge	.L221
	cmp	r2, #1
	bne	.L215
.L222:
	ldr	r4, [r9]
	movs	r3, #92
	mov	r0, r9
	movs	r1, #1
	str	r2, [r4, #24]
	ldr	r2, [r9]
	str	r3, [r4, #20]
	ldr	r2, [r2, #4]
	blx	r2
	ldr	r4, [r9, #452]
	b	.L238
.L225:
	mov	r0, r9
	bl	skip_variable(PLT)
	cmp	r0, #0
	bne	.L445
	b	.L209
.L220:
	cmp	r2, #194
	bne	.L470
	ldr	r4, [r9, #452]
	mov	r5, #-1
	mov	r0, r9
	movs	r1, #1
	movs	r2, #0
	str	r5, [r4, #28]
	bl	get_sof(PLT)
	cmp	r0, #0
	bne	.L445
	b	.L209
.L447:
	ldr	r2, [r5, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r6, [r5, #8]
	ldr	r2, [r5]
	subs	r6, r6, #1
	ldrb	r10, [r2]	@ zero_extendqisi2
	it	ne
	addne	r2, r2, #1
	bne	.L211
.L448:
	ldr	r2, [r5, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r2, [r5]
	ldr	r6, [r5, #8]
	b	.L211
.L221:
	movs	r1, #0
	mov	r0, r9
	mov	r2, r1
	bl	get_sof(PLT)
	cmp	r0, #0
	bne	.L445
	b	.L209
.L470:
	cmp	r2, #195
	beq	.L217
.L215:
	ldr	r1, [r9]
	movs	r4, #68
	mov	r0, r9
	str	r2, [r1, #24]
	ldr	r2, [r9]
	str	r4, [r1, #20]
	ldr	r2, [r2]
	blx	r2
	b	.L445
.L461:
	ldr	r3, [r10, #20]
	mov	r0, fp
	blx	r3
	cmp	r0, #0
	beq	.L209
	ldr	r6, [r10, #8]
	ldr	r7, [r10]
	subs	r6, r6, #1
	ldrb	r9, [r7]	@ zero_extendqisi2
	it	ne
	addne	r3, r7, #1
	bne	.L250
.L462:
	ldr	r3, [r10, #20]
	mov	r0, fp
	blx	r3
	cmp	r0, #0
	beq	.L209
	ldr	r3, [r10]
	ldr	r6, [r10, #8]
	b	.L250
.L232:
	cmp	r2, #254
	bne	.L215
	ldr	r2, [r9, #452]
	mov	r0, r9
	ldr	r2, [r2, #36]
	blx	r2
	cmp	r0, #0
	bne	.L445
	b	.L209
.L233:
	ldr	r1, [r9, #452]
	subs	r2, r2, #214
	mov	r0, r9
	ldr	r2, [r1, r2, lsl #2]
	blx	r2
	cmp	r0, #0
	bne	.L445
	b	.L209
.L217:
	ldr	r1, [r9]
	movs	r4, #60
	mov	r0, r9
	str	r2, [r1, #24]
	ldr	r2, [r9]
	str	r4, [r1, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r9, #452]
	b	.L238
.L224:
	mov	r0, r9
	movs	r1, #0
	movs	r2, #1
	bl	get_sof(PLT)
	cmp	r0, #0
	bne	.L445
	b	.L209
.L218:
	mov	r0, r9
	bl	get_dht(PLT)
	cmp	r0, #0
	bne	.L445
	b	.L209
.L227:
	ldr	r6, [r9, #24]
	ldr	r2, [r6, #8]
	ldr	r1, [r6]
	cmp	r2, #0
	beq	.L471
.L268:
	ldrb	r5, [r1]	@ zero_extendqisi2
	subs	r2, r2, #1
	it	ne
	addne	r1, r1, #1
	lsl	r5, r5, #8
	beq	.L472
.L270:
	ldrb	r0, [r1]	@ zero_extendqisi2
	subs	r4, r2, #1
	adds	r3, r1, #1
	add	r0, r0, r5
	subs	r0, r0, #2
	cmp	r0, #0
	str	r0, [sp, #12]
	ble	.L301
.L289:
	cbnz	r4, .L272
	ldr	r3, [r6, #20]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	beq	.L209
	ldr	r3, [r6]
	ldr	r4, [r6, #8]
.L272:
	ldrb	r10, [r3]	@ zero_extendqisi2
	movs	r1, #1
	ldr	r2, [r9]
	add	fp, r3, r1
	mov	r0, r9
	subs	r4, r4, #1
	and	r5, r10, #15
	asr	r3, r10, #4
	str	r5, [r2, #24]
	ldr	lr, [r9]
	str	r3, [sp, #4]
	movs	r3, #81
	str	r3, [r2, #20]
	ldr	r2, [sp, #4]
	str	r2, [lr, #28]
	ldr	r3, [r9]
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r5, #3
	bgt	.L473
.L273:
	add	r5, r9, r5, lsl #2
	ldr	r8, [r5, #172]
	cmp	r8, #0
	beq	.L474
.L274:
	ldr	r3, .L480+4
	ldr	r1, [sp, #8]
	ldr	r2, [r1, r3]
	mov	r3, fp
	subs	r5, r2, #4
	add	r10, r2, #252
	ldr	r2, [sp, #4]
	cbz	r2, .L475
.L433:
	cmp	r4, #0
	beq	.L436
	ldrb	r2, [r3]	@ zero_extendqisi2
	subs	r4, r4, #1
	add	r3, r3, #1
	lsl	fp, r2, #8
	beq	.L387
.L438:
	ldr	r1, [r5, #4]!
	subs	r4, r4, #1
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	cmp	r5, r10
	add	fp, fp, r2
	strh	fp, [r8, r1, lsl #1]	@ movhi
	bne	.L433
.L444:
	mov	fp, r3
	ldr	r3, [r9]
	ldr	r2, [r3, #104]
	cmp	r2, #1
	itt	gt
	movgt	r5, #8
	movgt	r10, r4
	bgt	.L287
	b	.L286
.L475:
	cbz	r4, .L476
.L280:
	ldr	r2, [r5, #4]!
	adds	r3, r3, #1
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2
	subs	r4, r4, #1
	cmp	r5, r10
	strh	r1, [r8, r2, lsl #1]	@ movhi
	beq	.L444
	cmp	r4, #0
	bne	.L280
.L476:
	ldr	r3, [r6, #20]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	beq	.L209
	ldr	r3, [r6]
	ldr	r4, [r6, #8]
	b	.L280
.L477:
	ldr	r3, [r9]
.L287:
	ldrh	lr, [r8]
	movs	r4, #93
	mov	r0, r9
	ldr	r2, [r3, #4]
	movs	r1, #2
	add	r8, r8, #16
	str	lr, [r3, #24]
	ldrh	lr, [r8, #-14]
	str	lr, [r3, #28]
	ldrh	lr, [r8, #-12]
	str	lr, [r3, #32]
	ldrh	lr, [r8, #-10]
	str	lr, [r3, #36]
	ldrh	lr, [r8, #-8]
	str	lr, [r3, #40]
	ldrh	lr, [r8, #-6]
	str	lr, [r3, #44]
	ldrh	lr, [r8, #-4]
	str	lr, [r3, #48]
	ldrh	lr, [r8, #-2]
	str	r4, [r3, #20]
	str	lr, [r3, #52]
	blx	r2
	subs	r5, r5, #1
	bne	.L477
	mov	r4, r10
.L286:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L478
	ldr	r3, [sp, #12]
	subs	r3, r3, #129
	mov	r2, r3
	str	r3, [sp, #12]
.L288:
	cmp	r2, #0
	ble	.L442
	mov	r3, fp
	b	.L289
.L436:
	ldr	r3, [r6, #20]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	beq	.L209
	ldr	r3, [r6]
	ldr	r4, [r6, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	subs	r4, r4, #1
	lsl	fp, r2, #8
	bne	.L438
.L387:
	ldr	r3, [r6, #20]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	beq	.L209
	ldr	r3, [r6]
	ldr	r4, [r6, #8]
	b	.L438
.L229:
	ldr	r2, [r9]
	movs	r4, #102
	mov	r0, r9
	movs	r1, #1
	str	r4, [r2, #20]
	ldr	r2, [r2, #4]
	blx	r2
	ldr	r4, [r9, #452]
	ldr	r2, [r4, #16]
	cmp	r2, #0
	bne	.L479
.L237:
	movs	r2, #0
	movs	r1, #5
	strb	r7, [r9, #256]
	strb	r7, [r9, #257]
	strb	r7, [r9, #258]
	strb	r7, [r9, #259]
	strb	r7, [r9, #260]
	strb	r7, [r9, #261]
	strb	r7, [r9, #262]
	strb	r7, [r9, #263]
	strb	r7, [r9, #264]
	strb	r7, [r9, #265]
	strb	r7, [r9, #266]
	strb	r2, [r9, #240]
	strb	r2, [r9, #241]
	strb	r2, [r9, #242]
	strb	r2, [r9, #243]
	strb	r2, [r9, #244]
	strb	r2, [r9, #245]
	strb	r2, [r9, #246]
	strb	r2, [r9, #247]
	strb	r2, [r9, #248]
	strb	r2, [r9, #249]
	strb	r2, [r9, #250]
	strb	r1, [r9, #272]
	strb	r1, [r9, #273]
	strb	r1, [r9, #274]
	strb	r1, [r9, #275]
	strb	r1, [r9, #276]
	strb	r1, [r9, #277]
	strb	r1, [r9, #278]
	strb	r1, [r9, #279]
	strb	r1, [r9, #280]
	strb	r1, [r9, #281]
	strb	r1, [r9, #282]
	strb	r2, [r9, #251]
	strb	r1, [r9, #283]
	strb	r2, [r9, #252]
	strb	r1, [r9, #284]
	strb	r2, [r9, #253]
	strb	r1, [r9, #285]
	strb	r2, [r9, #254]
	strb	r1, [r9, #286]
	strb	r2, [r9, #255]
	strb	r1, [r9, #287]
	str	r2, [r9, #288]
	str	r2, [r9, #44]
	str	r2, [r9, #312]
	str	r2, [r9, #292]
	strb	r2, [r9, #298]
	str	r2, [r9, #304]
	strb	r2, [r9, #308]
	strb	r7, [r9, #267]
	strb	r7, [r9, #268]
	strb	r7, [r9, #269]
	strb	r7, [r9, #270]
	strb	r7, [r9, #271]
	strb	r7, [r9, #296]
	strb	r7, [r9, #297]
	strh	r7, [r9, #300]	@ movhi
	strh	r7, [r9, #302]	@ movhi
	str	r7, [r4, #16]
	b	.L238
.L230:
	ldr	r2, [r9]
	movs	r4, #85
	mov	r0, r9
	movs	r1, #1
	str	r4, [r2, #20]
	ldr	r2, [r2, #4]
	blx	r2
	movs	r2, #0
	movs	r0, #2
	str	r2, [r9, #428]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L449:
	ldr	r2, [r9]
	movs	r3, #53
	mov	r0, r9
	str	r10, [r2, #24]
	ldr	r1, [r9]
	str	r3, [r2, #20]
	str	r4, [r1, #28]
	ldr	r2, [r9]
	ldr	r2, [r2]
	blx	r2
	b	.L212
.L466:
	ldr	r3, [fp]
	movs	r4, #5
	mov	r0, fp
	str	r9, [r3, #24]
	ldr	r1, [fp]
	str	r4, [r3, #20]
	ldr	r3, [r1]
	blx	r3
	b	.L256
.L465:
	ldr	r1, [fp]
	movs	r2, #5
	mov	r0, fp
	str	r9, [r1, #24]
	ldr	lr, [fp]
	str	r2, [r1, #20]
	ldr	r1, [lr]
	str	r3, [sp]
	blx	r1
	ldr	r3, [sp]
	b	.L260
.L464:
	ldr	r1, [fp]
	movs	r2, #5
	mov	r0, fp
	str	r9, [r1, #24]
	ldr	lr, [fp]
	str	r2, [r1, #20]
	ldr	r1, [lr]
	str	r3, [sp]
	blx	r1
	ldr	r3, [sp]
	b	.L259
.L463:
	ldr	r1, [fp]
	movs	r2, #5
	mov	r0, fp
	str	r9, [r1, #24]
	ldr	lr, [fp]
	str	r2, [r1, #20]
	ldr	r1, [lr]
	str	r3, [sp]
	blx	r1
	ldr	r3, [sp]
	b	.L257
.L478:
	ldr	r2, [sp, #12]
	subs	r2, r2, #65
	str	r2, [sp, #12]
	b	.L288
.L473:
	ldr	r3, [r9]
	movs	r1, #31
	mov	r0, r9
	str	r5, [r3, #24]
	ldr	r2, [r9]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L273
.L460:
	subs	r2, r4, #1
	cmp	r2, #3
	bls	.L246
	b	.L245
.L458:
	ldr	r2, [r10, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r5, [r10]
	ldr	r4, [r10, #8]
	b	.L240
.L479:
	ldr	r2, [r9]
	movs	r1, #61
	mov	r0, r9
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r9, #452]
	b	.L237
.L471:
	ldr	r2, [r6, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r1, [r6]
	ldr	r2, [r6, #8]
	b	.L268
.L453:
	ldr	r2, [r5, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r1, [r5]
	ldr	r2, [r5, #8]
	b	.L291
.L472:
	ldr	r2, [r6, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r1, [r6]
	ldr	r2, [r6, #8]
	b	.L270
.L454:
	ldr	r2, [r5, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r8, [r5]
	ldr	r2, [r5, #8]
	b	.L293
.L459:
	ldr	r2, [r10, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r5, [r10]
	ldr	r4, [r10, #8]
	b	.L242
.L469:
	ldr	r4, [r10]
	ldr	r6, [r10, #8]
.L266:
	ldrb	r7, [r4], #1	@ zero_extendqisi2
	movs	r5, #105
	ldr	r2, [r9]
	mov	r0, r9
	movs	r1, #1
	subs	r6, r6, #1
	and	r8, r7, #15
	asrs	r7, r7, #4
	ldr	r3, [r2, #4]
	str	r8, [r9, #424]
	str	r7, [r9, #420]
	ldr	r7, [r9, #412]
	str	r7, [r2, #24]
	ldr	r7, [r9, #416]
	str	r7, [r2, #28]
	ldr	r7, [r9, #420]
	str	r7, [r2, #32]
	ldr	r7, [r9, #424]
	str	r5, [r2, #20]
	str	r7, [r2, #36]
	blx	r3
	ldr	r5, [r9, #152]
	movs	r0, #1
	ldr	r1, [r9, #452]
	movs	r2, #0
	add	r5, r5, r0
	str	r2, [r1, #24]
	str	r5, [r9, #152]
	str	r4, [r10]
	str	r6, [r10, #8]
	str	r2, [r9, #428]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L455:
	ldr	r2, [r5, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r2, [r5]
	ldr	r6, [r5, #8]
	b	.L296
.L474:
	mov	r0, r9
	bl	jpeg_alloc_quant_table(PLT)
	mov	r8, r0
	str	r0, [r5, #172]
	b	.L274
.L467:
	ldr	r2, [r10, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r7, [r10]
	ldr	r6, [r10, #8]
	b	.L262
.L301:
	mov	r8, r3
.L271:
	ldr	r3, [sp, #12]
	cbz	r3, .L290
	ldr	r2, [r9]
	movs	r1, #11
	mov	r0, r9
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
.L290:
	str	r4, [r6, #8]
	str	r8, [r6]
	ldr	r4, [r9, #452]
	b	.L238
.L468:
	ldr	r2, [r10, #20]
	mov	r0, r9
	blx	r2
	cmp	r0, #0
	beq	.L209
	ldr	r7, [r10]
	ldr	r6, [r10, #8]
	b	.L264
.L442:
	mov	r8, fp
	b	.L271
.L481:
	.align	2
.L480:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+4)
	.word	jpeg_natural_order(GOT)
	.size	read_markers, .-read_markers
	.section	.text.get_sos_marker_position,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	get_sos_marker_position, %function
get_sos_marker_position:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, [r0, #24]
	ldr	r3, [r3, #8]
	cbz	r3, .L482
	mov	r6, r1
	movs	r3, #0
.L484:
	ldr	r5, [r4, #452]
	mov	r2, r3
	adds	r7, r3, #1
	mov	r0, r4
	mov	r1, r6
	ldr	r3, [r5, #28]
	bl	jpeg_configure_huffman_index_scan(PLT)
	b	.L487
.L493:
	ldr	r3, [r4, #428]
	subs	r3, r3, #208
	cmp	r3, #7
	bhi	.L486
.L487:
	mov	r0, r4
	bl	next_marker(PLT)
	cmp	r0, #0
	bne	.L493
.L486:
	ldr	r5, [r4, #452]
	mov	r0, r4
	bl	jget_input_stream_position(PLT)
	subs	r3, r0, #2
	mov	r0, r4
	str	r3, [r5, #28]
	bl	read_markers(PLT)
	ldr	r2, [r4, #24]
	ldr	r3, [r2, #8]
	cbz	r3, .L482
	cmp	r0, #1
	bne	.L482
	mov	r3, r7
	b	.L484
.L482:
	pop	{r3, r4, r5, r6, r7, pc}
	.size	get_sos_marker_position, .-get_sos_marker_position
	.section	.text.unlikely.examine_app14.part.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	examine_app14.part.0, %function
examine_app14.part.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r3, r1
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	movs	r2, #76
	mov	r4, r0
	ldrb	lr, [r1, #7]	@ zero_extendqisi2
	movs	r1, #1
	ldrb	r8, [r3, #9]	@ zero_extendqisi2
	ldrb	r6, [r3, #10]	@ zero_extendqisi2
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	ldrb	r7, [r3, #6]	@ zero_extendqisi2
	add	lr, r5, lr, lsl #8
	ldrb	r5, [r3, #11]	@ zero_extendqisi2
	ldr	r3, [r0]
	add	r6, r6, r8, lsl #8
	add	r7, r7, ip, lsl #8
	str	lr, [r3, #28]
	str	r7, [r3, #24]
	str	r6, [r3, #32]
	str	r5, [r3, #36]
	str	r2, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	movs	r3, #1
	strb	r5, [r4, #308]
	str	r3, [r4, #304]
	pop	{r4, r5, r6, r7, r8, pc}
	.size	examine_app14.part.0, .-examine_app14.part.0
	.section	.text.save_marker,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	save_marker, %function
save_marker:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r9, [r0, #452]
	mov	r10, r0
	ldr	r8, [r0, #24]
	ldr	r2, [r9, #172]
	ldr	r6, [r8]
	str	r2, [sp, #4]
	ldr	r4, [r8, #8]
	cmp	r2, #0
	beq	.L540
	mov	r3, r2
	ldr	r5, [r9, #176]
	ldr	r2, [r2, #16]
	ldr	r7, [r3, #12]
	add	fp, r2, r5
.L506:
	cmp	r7, r5
	bls	.L511
.L512:
	str	r6, [r8]
	str	r4, [r8, #8]
	str	r5, [r9, #176]
	cmp	r4, #0
	beq	.L541
.L507:
	cmp	r4, #0
	it	ne
	cmpne	r7, r5
	bls	.L508
.L509:
	subs	r4, r4, #1
	add	r5, r5, #1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	ldrb	r1, [r6], #1	@ zero_extendqisi2
	cmp	r5, r7
	ite	cs
	movcs	r3, #0
	andcc	r3, r3, #1
	strb	r1, [fp], #1
	cmp	r3, #0
	bne	.L509
.L508:
	cmp	r5, r7
	bcc	.L512
.L511:
	ldr	r2, [r10, #316]
	cbnz	r2, .L515
	b	.L547
.L543:
	mov	r2, r3
.L515:
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L543
	ldr	r3, [sp, #4]
	str	r3, [r2]
	mov	r2, r3
.L513:
	ldr	r3, [r2, #8]
	ldr	r1, [r2, #16]
	subs	r5, r3, r7
.L503:
	ldr	r3, [r10, #428]
	movs	r2, #0
	str	r2, [r9, #172]
	cmp	r3, #224
	beq	.L517
	cmp	r3, #238
	beq	.L518
	ldr	r2, [r10]
	add	r7, r7, r5
	mov	lr, #91
	mov	r0, r10
	movs	r1, #1
	str	r3, [r2, #24]
	ldr	r3, [r10]
	str	lr, [r2, #20]
	str	r7, [r3, #28]
	ldr	r3, [r10]
	ldr	r3, [r3, #4]
	blx	r3
.L519:
	cmp	r5, #0
	str	r6, [r8]
	str	r4, [r8, #8]
	it	le
	movle	r0, #1
	ble	.L537
	ldr	r3, [r10, #24]
	mov	r0, r10
	mov	r1, r5
	ldr	r3, [r3, #24]
	blx	r3
	movs	r0, #1
.L537:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L541:
	ldr	r3, [r8, #20]
	mov	r0, r10
	blx	r3
	cbz	r0, .L502
	ldr	r6, [r8]
	ldr	r4, [r8, #8]
	b	.L507
.L518:
	cmp	r7, #11
	bls	.L520
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #65
	bne	.L520
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	cmp	r3, #100
	beq	.L544
.L520:
	ldr	r3, [r10]
	add	r7, r7, r5
	mov	lr, #78
	mov	r0, r10
	movs	r1, #1
	str	r7, [r3, #24]
	ldr	r2, [r10]
	str	lr, [r3, #20]
	ldr	r3, [r2, #4]
	blx	r3
	b	.L519
.L517:
	mov	r2, r7
	mov	r0, r10
	mov	r3, r5
	bl	examine_app0(PLT)
	b	.L519
.L545:
	ldr	r3, [r8, #20]
	blx	r3
	cmp	r0, #0
	bne	.L499
.L502:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L540:
	cmp	r4, #0
	beq	.L545
.L498:
	ldrb	r5, [r6]	@ zero_extendqisi2
	subs	r4, r4, #1
	add	r6, r6, #1
	lsl	r5, r5, #8
	beq	.L546
.L501:
	ldrb	ip, [r6]	@ zero_extendqisi2
	subs	r4, r4, #1
	adds	r6, r6, #1
	add	ip, ip, r5
	subs	r5, ip, #2
	bmi	.L523
	ldr	r3, [r10, #428]
	movs	r1, #1
	mov	r0, r10
	cmp	r3, #254
	itett	ne
	subne	r3, r3, #198
	ldreq	r7, [r9, #104]
	addne	r3, r9, r3, lsl #2
	ldrne	r7, [r3, #4]
	ldr	r3, [r10, #4]
	cmp	r7, r5
	it	cs
	movcs	r7, r5
	ldr	r3, [r3, #4]
	add	r2, r7, #20
	blx	r3
	ldr	r1, [r10, #428]
	movs	r3, #0
	add	fp, r0, #20
	str	r5, [r0, #8]
	str	r7, [r0, #12]
	mov	r5, r3
	strb	r1, [r0, #4]
	str	fp, [r0, #16]
	str	r3, [r0]
	str	r0, [sp, #4]
	str	r0, [r9, #172]
	str	r3, [r9, #176]
	b	.L506
.L547:
	ldr	r2, [sp, #4]
	str	r2, [r10, #316]
	b	.L513
.L523:
	movs	r7, #0
	mov	r1, r7
	b	.L503
.L546:
	ldr	r3, [r8, #20]
	mov	r0, r10
	blx	r3
	cmp	r0, #0
	beq	.L502
	ldr	r6, [r8]
	ldr	r4, [r8, #8]
	b	.L501
.L499:
	ldr	r6, [r8]
	ldr	r4, [r8, #8]
	b	.L498
.L544:
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	cmp	r3, #111
	bne	.L520
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L520
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L520
	mov	r0, r10
	bl	examine_app14.part.0(PLT)
	b	.L519
	.size	save_marker, .-save_marker
	.section	.text.read_restart_marker,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	read_restart_marker, %function
read_restart_marker:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0, #428]
	cbz	r3, .L559
.L549:
	ldr	r2, [r4, #452]
	ldr	r2, [r2, #24]
	add	r1, r2, #208
	cmp	r1, r3
	beq	.L560
	ldr	r3, [r4, #24]
	mov	r1, r2
	mov	r0, r4
	ldr	r3, [r3, #28]
	blx	r3
	cbz	r0, .L554
.L553:
	ldr	r3, [r4, #452]
	movs	r0, #1
	ldr	r2, [r3, #24]
	add	r2, r2, r0
	and	r2, r2, #7
	str	r2, [r3, #24]
	pop	{r3, r4, r5, pc}
.L559:
	bl	next_marker(PLT)
	cbnz	r0, .L550
.L554:
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L560:
	ldr	r3, [r4]
	movs	r5, #98
	mov	r0, r4
	movs	r1, #3
	str	r2, [r3, #24]
	ldr	r2, [r4]
	str	r5, [r3, #20]
	ldr	r3, [r2, #4]
	blx	r3
	movs	r3, #0
	str	r3, [r4, #428]
	b	.L553
.L550:
	ldr	r3, [r4, #428]
	b	.L549
	.size	read_restart_marker, .-read_restart_marker
	.section	.text.get_interesting_appn,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	get_interesting_appn, %function
get_interesting_appn:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	ldr	r10, [r0, #24]
	sub	sp, sp, #20
	ldr	r5, [r10, #8]
	ldr	r3, [r10]
	cmp	r5, #0
	beq	.L589
.L562:
	ldrb	r9, [r3]	@ zero_extendqisi2
	subs	r5, r5, #1
	it	ne
	addne	r3, r3, #1
	lsl	r9, r9, #8
	beq	.L590
.L566:
	ldrb	r2, [r3]	@ zero_extendqisi2
	subs	r5, r5, #1
	adds	r3, r3, #1
	add	r9, r9, r2
	sub	r9, r9, #2
	cmp	r9, #13
	ble	.L568
	mov	fp, #14
.L571:
	movs	r4, #0
.L569:
	cmp	r5, #0
	beq	.L591
.L572:
	ldrb	r7, [r3]	@ zero_extendqisi2
	mov	r1, sp
	adds	r6, r3, #1
	subs	r5, r5, #1
	mov	r3, r6
	strb	r7, [r4, r1]
	adds	r4, r4, #1
	cmp	r4, fp
	bcc	.L569
	ldr	r3, [r8, #428]
	rsb	r4, fp, r9
	cmp	r3, #224
	beq	.L575
.L594:
	cmp	r3, #238
	bne	.L592
	cmp	fp, #11
	bls	.L578
	ldrb	r3, [sp]	@ zero_extendqisi2
	cmp	r3, #65
	beq	.L593
.L578:
	ldr	r3, [r8]
	movs	r7, #78
	mov	r0, r8
	movs	r1, #1
	str	r9, [r3, #24]
	ldr	r2, [r8]
	str	r7, [r3, #20]
	ldr	r3, [r2, #4]
	blx	r3
.L577:
	cmp	r4, #0
	str	r6, [r10]
	str	r5, [r10, #8]
	it	le
	movle	r0, #1
	ble	.L564
	ldr	r3, [r8, #24]
	mov	r0, r8
	mov	r1, r4
	ldr	r3, [r3, #24]
	blx	r3
	movs	r0, #1
.L564:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L568:
	cmp	r9, #0
	it	gt
	movgt	fp, r9
	bgt	.L571
	mov	r6, r3
	ldr	r3, [r8, #428]
	mov	r4, r9
	mov	fp, #0
	cmp	r3, #224
	bne	.L594
.L575:
	mov	r2, fp
	mov	r0, r8
	mov	r1, sp
	mov	r3, r4
	bl	examine_app0(PLT)
	b	.L577
.L591:
	ldr	r3, [r10, #20]
	mov	r0, r8
	blx	r3
	cbz	r0, .L567
	ldr	r3, [r10]
	ldr	r5, [r10, #8]
	b	.L572
.L589:
	ldr	r3, [r10, #20]
	blx	r3
	cbnz	r0, .L563
.L567:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L590:
	ldr	r3, [r10, #20]
	mov	r0, r8
	blx	r3
	cmp	r0, #0
	beq	.L567
	ldr	r3, [r10]
	ldr	r5, [r10, #8]
	b	.L566
.L592:
	ldr	r2, [r8]
	movs	r1, #68
	mov	r0, r8
	str	r3, [r2, #24]
	ldr	r3, [r8]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L577
.L563:
	ldr	r3, [r10]
	ldr	r5, [r10, #8]
	b	.L562
.L593:
	ldrb	r3, [sp, #1]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L578
	ldrb	r3, [sp, #2]	@ zero_extendqisi2
	cmp	r3, #111
	bne	.L578
	ldrb	r3, [sp, #3]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L578
	ldrb	r3, [sp, #4]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L578
	mov	r0, r8
	mov	r1, sp
	bl	examine_app14.part.0(PLT)
	b	.L577
	.size	get_interesting_appn, .-get_interesting_appn
	.section	.text.jpeg_resync_to_restart,"ax",%progbits
	.align	2
	.global	jpeg_resync_to_restart
	.thumb
	.thumb_func
	.type	jpeg_resync_to_restart, %function
jpeg_resync_to_restart:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	ldr	r3, [r0]
	movs	r7, #121
	add	r8, r6, #2
	mov	r1, #-1
	ldr	r5, [r0, #428]
	and	r8, r8, #7
	add	r8, r8, #208
	mov	r4, r0
	str	r5, [r3, #24]
	ldr	r2, [r0]
	str	r7, [r3, #20]
	adds	r7, r6, #1
	and	r7, r7, #7
	str	r6, [r2, #28]
	adds	r7, r7, #208
	ldr	r3, [r0]
	ldr	r3, [r3, #4]
	blx	r3
.L599:
	cmp	r5, #191
	sub	r3, r5, #208
	ble	.L596
	cmp	r3, #7
	bhi	.L597
	subs	r3, r6, #1
	cmp	r7, r5
	and	r3, r3, #7
	add	r3, r3, #208
	beq	.L597
	subs	r2, r6, #2
	cmp	r8, r5
	and	r2, r2, #7
	add	r2, r2, #208
	beq	.L597
	cmp	r3, r5
	beq	.L596
	cmp	r2, r5
	beq	.L596
	ldr	r3, [r4]
	movs	r6, #1
	movs	r7, #97
	mov	r0, r4
	movs	r1, #4
	str	r5, [r3, #24]
	ldr	r2, [r4]
	str	r7, [r3, #20]
	str	r6, [r2, #28]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	blx	r3
	movs	r3, #0
	mov	r0, r6
	str	r3, [r4, #428]
	pop	{r4, r5, r6, r7, r8, pc}
.L597:
	ldr	r3, [r4]
	movs	r7, #97
	movs	r6, #3
	mov	r0, r4
	movs	r1, #4
	str	r5, [r3, #24]
	ldr	r2, [r4]
	str	r7, [r3, #20]
	str	r6, [r2, #28]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	blx	r3
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, pc}
.L596:
	ldr	r3, [r4]
	mov	ip, #97
	mov	lr, #2
	mov	r0, r4
	movs	r1, #4
	str	r5, [r3, #24]
	ldr	r2, [r4]
	str	ip, [r3, #20]
	str	lr, [r2, #28]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	blx	r3
	mov	r0, r4
	bl	next_marker(PLT)
	cbz	r0, .L609
	ldr	r5, [r4, #428]
	b	.L599
.L609:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	jpeg_resync_to_restart, .-jpeg_resync_to_restart
	.section	.text.jinit_marker_reader,"ax",%progbits
	.align	2
	.global	jinit_marker_reader
	.thumb
	.thumb_func
	.type	jinit_marker_reader, %function
jinit_marker_reader:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r1, #0
	push	{r4, r5, r6, r7, r8, lr}
	movs	r2, #180
	mov	r5, r1
	mov	r6, r0
	ldr	r3, [r3]
	blx	r3
	ldr	r8, .L612
	mov	r4, r0
	ldr	ip, .L612+4
	adds	r0, r0, #108
	ldr	lr, .L612+8
	mov	r1, r5
	ldr	r7, .L612+12
.LPIC25:
	add	r8, pc
	ldr	r3, .L612+16
.LPIC26:
	add	ip, pc
.LPIC27:
	add	lr, pc
	str	r4, [r6, #452]
.LPIC28:
	add	r7, pc
	movs	r2, #64
.LPIC29:
	add	r3, pc
	stmia	r4, {r8, ip}
	str	r3, [r4, #36]
	str	r3, [r4, #40]
	str	r3, [r4, #44]
	str	r3, [r4, #48]
	str	r3, [r4, #52]
	str	r3, [r4, #56]
	str	r3, [r4, #60]
	str	r3, [r4, #64]
	str	r3, [r4, #68]
	str	r3, [r4, #72]
	str	r3, [r4, #76]
	str	r3, [r4, #80]
	str	r3, [r4, #84]
	str	r3, [r4, #88]
	str	r3, [r4, #92]
	str	r3, [r4, #96]
	str	r3, [r4, #100]
	str	lr, [r4, #12]
	str	r7, [r4, #8]
	str	r5, [r4, #28]
	str	r5, [r4, #104]
	bl	memset(PLT)
	ldr	r3, .L612+20
.LPIC46:
	add	r3, pc
	str	r3, [r4, #40]
	str	r3, [r4, #96]
	str	r5, [r6, #224]
	str	r5, [r6, #152]
	str	r5, [r6, #428]
	str	r5, [r4, #16]
	str	r5, [r4, #20]
	str	r5, [r4, #32]
	str	r5, [r4, #172]
	pop	{r4, r5, r6, r7, r8, pc}
.L613:
	.align	2
.L612:
	.word	reset_marker_reader-(.LPIC25+4)
	.word	read_markers-(.LPIC26+4)
	.word	read_restart_marker-(.LPIC27+4)
	.word	get_sos_marker_position-(.LPIC28+4)
	.word	skip_variable-(.LPIC29+4)
	.word	get_interesting_appn-(.LPIC46+4)
	.size	jinit_marker_reader, .-jinit_marker_reader
	.section	.text.jpeg_save_markers,"ax",%progbits
	.align	2
	.global	jpeg_save_markers
	.thumb
	.thumb_func
	.type	jpeg_save_markers, %function
jpeg_save_markers:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #4]
	push	{r4, r5}
	mov	r4, r0
	ldr	r0, [r0, #452]
	ldr	r3, [r3, #48]
	subs	r3, r3, #20
	cmp	r3, r2
	it	ge
	movge	r3, r2
	cbz	r3, .L616
	cmp	r3, #13
	it	ls
	cmpls	r1, #224
	bne	.L626
	movs	r3, #14
.L617:
	ldr	r5, .L630
	sub	r2, r1, #224
	cmp	r2, #15
.LPIC51:
	add	r5, pc
	bhi	.L621
.L628:
	add	r2, r0, r2, lsl #2
	str	r5, [r2, #40]
	str	r3, [r2, #108]
.L614:
	pop	{r4, r5}
	bx	lr
.L616:
	ldr	r5, .L630+4
	cmp	r1, #224
	it	ne
	cmpne	r1, #238
.LPIC49:
	add	r5, pc
	beq	.L627
.L618:
	cmp	r1, #254
	itt	eq
	streq	r5, [r0, #36]
	streq	r3, [r0, #104]
	beq	.L614
.L629:
	sub	r2, r1, #224
	cmp	r2, #15
	bls	.L628
.L621:
	ldr	r3, [r4]
	movs	r5, #68
	mov	r0, r4
	str	r1, [r3, #24]
	ldr	r2, [r4]
	str	r5, [r3, #20]
	pop	{r4, r5}
	ldr	r3, [r2]
	bx	r3	@ indirect register sibling call
.L627:
	ldr	r5, .L630+8
	cmp	r1, #254
	it	eq
	streq	r3, [r0, #104]
.LPIC50:
	add	r5, pc
	it	eq
	streq	r5, [r0, #36]
	bne	.L629
	b	.L614
.L626:
	ldr	r5, .L630+12
	cmp	r3, #11
	it	ls
	cmpls	r1, #238
.LPIC48:
	add	r5, pc
	bne	.L618
	movs	r3, #12
	b	.L617
.L631:
	.align	2
.L630:
	.word	save_marker-(.LPIC51+4)
	.word	skip_variable-(.LPIC49+4)
	.word	get_interesting_appn-(.LPIC50+4)
	.word	save_marker-(.LPIC48+4)
	.size	jpeg_save_markers, .-jpeg_save_markers
	.section	.text.jpeg_set_marker_processor,"ax",%progbits
	.align	2
	.global	jpeg_set_marker_processor
	.thumb
	.thumb_func
	.type	jpeg_set_marker_processor, %function
jpeg_set_marker_processor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	cmp	r1, #254
	ldr	r4, [r0, #452]
	it	eq
	streq	r2, [r4, #36]
	beq	.L632
	sub	r5, r1, #224
	cmp	r5, #15
	itt	ls
	subls	r1, r1, #214
	strls	r2, [r4, r1, lsl #2]
	bhi	.L637
.L632:
	pop	{r4, r5}
	bx	lr
.L637:
	ldr	r2, [r0]
	movs	r4, #68
	str	r1, [r2, #24]
	ldr	r3, [r0]
	str	r4, [r2, #20]
	pop	{r4, r5}
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
	.size	jpeg_set_marker_processor, .-jpeg_set_marker_processor
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
