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
	.file	"jcmaster.c"
	.section	.text.validate_script,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	validate_script, %function
validate_script:
	@ args = 0, pretend = 0, frame = 2648
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #168]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r0
	subw	sp, sp, #2652
	cmp	r2, #0
	ble	.L115
.L2:
	ldr	r7, [r10, #172]
	ldr	r5, [r7, #20]
	cbnz	r5, .L3
	ldr	r2, [r7, #24]
	cmp	r2, #63
	beq	.L4
.L3:
	ldr	r4, [r10, #60]
	movs	r5, #1
	str	r5, [r10, #228]
	cmp	r4, #0
	ble	.L5
	movs	r6, #0
	add	r5, sp, #88
.L6:
	mov	r0, r5
	mov	r2, #256
	adds	r6, r6, #1
	mov	r1, #-1
	add	r5, r5, r2
	bl	memset(PLT)
	cmp	r6, r4
	bne	.L6
	movs	r5, #1
.L5:
	ldr	r2, [r10, #168]
	cmp	r2, #0
	ble	.L9
	mov	r9, #1
	sub	fp, r7, #4
	mov	r5, r9
	add	r1, sp, #48
	str	r1, [sp, #24]
.L49:
	ldr	r2, [fp, #4]
	pld	[fp, #40]
	str	r2, [sp, #8]
	subs	r2, r2, #1
	cmp	r2, #3
	bhi	.L116
.L10:
	ldr	r8, [sp, #8]
	mov	r6, fp
	movs	r4, #0
.L17:
	adds	r6, r6, #4
	ldr	r7, [r6, #4]
	mov	r0, r10
	cmp	r7, #0
	blt	.L13
	ldr	r3, [r10, #60]
	cmp	r7, r3
	blt	.L14
.L13:
	ldr	r3, [r10]
	movs	r1, #19
	str	r5, [r3, #24]
	ldr	r2, [r10]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L14:
	cbz	r4, .L15
	ldr	r3, [r6]
	cmp	r7, r3
	ble	.L117
.L15:
	adds	r4, r4, #1
	cmp	r4, r8
	bne	.L17
.L16:
	ldr	r2, [r10, #228]
	ldr	r1, [fp, #24]
	ldr	r3, [fp, #32]
	pld	[fp, #60]
	ldr	r4, [fp, #28]
	str	r1, [sp, #4]
	str	r3, [sp, #16]
	ldr	r6, [fp, #36]
	cmp	r2, #0
	beq	.L118
	cmp	r4, r1
	ite	ge
	movge	r2, #0
	movlt	r2, #1
	cmp	r1, #63
	it	hi
	orrhi	r2, r2, #1
	cmp	r2, #0
	bne	.L18
	cmp	r4, #63
	bgt	.L18
	ldr	r1, [sp, #16]
	cmp	r1, #10
	bhi	.L18
	cmp	r6, #10
	bhi	.L18
	ldr	r2, [sp, #4]
	cmp	r2, #0
	bne	.L20
.L130:
	cmp	r4, #0
	bne	.L111
.L21:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	ble	.L23
.L22:
	ldr	r2, [sp, #4]
	mov	r9, fp
	ldr	r3, [sp, #16]
	movs	r7, #17
	movs	r1, #0
	str	fp, [sp, #40]
	str	r1, [sp, #12]
	lsls	r2, r2, #2
	subs	r3, r3, #1
	str	r3, [sp, #28]
	str	r2, [sp, #32]
	add	r2, sp, #88
	str	r2, [sp, #20]
.L41:
	add	r9, r9, #4
	ldr	r3, [r9, #4]
	ldr	r1, [sp, #4]
	ldr	fp, [sp, #20]
	lsls	r3, r3, #8
	add	fp, fp, r3
	cmp	r1, #0
	beq	.L74
	ldr	r2, [sp, #20]
	ldr	r3, [r2, r3]
	cmp	r3, #0
	blt	.L119
	ldr	r8, [sp, #4]
	mov	r3, r8
.L24:
	cmp	r4, r3
	blt	.L30
	ldr	r3, [sp, #28]
	ldr	r1, [sp, #16]
	cmp	r3, r6
	beq	.L120
	cmp	r1, #0
	bne	.L35
	ldr	r2, [sp, #32]
	add	fp, fp, r2
.L37:
	ldr	r3, [fp], #4
	add	r8, r8, #1
	mov	r0, r10
	cmp	r3, #0
	blt	.L36
	ldr	r3, [r10]
	str	r5, [r3, #24]
	ldr	r2, [r10]
	str	r7, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L36:
	cmp	r4, r8
	str	r6, [fp, #-4]
	bge	.L37
.L30:
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #8]
	adds	r1, r1, #1
	cmp	r2, r1
	str	r1, [sp, #12]
	bgt	.L41
	ldr	fp, [sp, #40]
.L23:
	ldr	r2, [r10, #168]
	adds	r5, r5, #1
	add	fp, fp, #36
	cmp	r2, r5
	bge	.L49
	ldr	r4, [r10, #60]
	ldr	r5, [r10, #228]
.L9:
	cmp	r5, #0
	bne	.L50
	cmp	r4, #0
	ble	.L1
	add	r5, sp, #48
	ldr	r2, [r5]
	cmp	r2, #0
	beq	.L121
.L63:
	cmp	r4, #1
	ble	.L1
	ldr	r2, [r5, #4]
	cmp	r2, #0
	beq	.L122
.L64:
	cmp	r4, #2
	ble	.L1
	ldr	r2, [r5, #8]
	cmp	r2, #0
	beq	.L123
.L65:
	cmp	r4, #3
	ble	.L1
	ldr	r2, [r5, #12]
	cmp	r2, #0
	beq	.L124
.L66:
	cmp	r4, #4
	ble	.L1
	ldr	r2, [r5, #16]
	cmp	r2, #0
	beq	.L125
.L67:
	cmp	r4, #5
	ble	.L1
	ldr	r2, [r5, #20]
	cmp	r2, #0
	beq	.L126
.L68:
	cmp	r4, #6
	ble	.L1
	ldr	r2, [r5, #24]
	cmp	r2, #0
	beq	.L127
.L69:
	cmp	r4, #7
	ble	.L1
	ldr	r2, [r5, #28]
	cmp	r2, #0
	beq	.L128
.L70:
	cmp	r4, #8
	ble	.L1
	ldr	r2, [r5, #32]
	cmp	r2, #0
	beq	.L129
.L71:
	cmp	r4, #9
	ble	.L1
	ldr	r2, [r5, #36]
	cmp	r2, #0
	beq	.L113
.L1:
	addw	sp, sp, #2652
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L18:
	ldr	r2, [r10]
	movs	r7, #17
	mov	r0, r10
	str	r5, [r2, #24]
	ldr	r1, [r10]
	str	r7, [r2, #20]
	ldr	r2, [r1]
	blx	r2
	ldr	r2, [sp, #4]
	cmp	r2, #0
	beq	.L130
.L20:
	ldr	r1, [sp, #8]
	cmp	r1, #1
	beq	.L22
.L111:
	ldr	r2, [r10]
	movs	r7, #17
	mov	r0, r10
	str	r5, [r2, #24]
	ldr	r1, [r10]
	str	r7, [r2, #20]
	ldr	r2, [r1]
	blx	r2
	b	.L21
.L117:
	ldr	r3, [r10]
	movs	r1, #19
	mov	r0, r10
	str	r5, [r3, #24]
	ldr	r2, [r10]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L15
.L74:
	mov	r8, r1
	mov	r3, r1
	b	.L24
.L120:
	cmp	r1, #0
	bne	.L28
	ldr	r2, [sp, #32]
	str	r6, [sp, #36]
	mov	r6, r5
	mov	r5, r3
	mov	r3, r10
	add	fp, fp, r2
	mov	r10, r9
	mov	r9, r3
.L31:
	ldr	r3, [fp], #4
	add	r8, r8, #1
	cmp	r3, #0
	blt	.L29
	mov	r0, r9
	beq	.L29
	ldr	r3, [r9]
	str	r6, [r3, #24]
	ldr	r1, [r9]
	str	r7, [r3, #20]
	ldr	r3, [r1]
	blx	r3
.L29:
	cmp	r8, r4
	str	r5, [fp, #-4]
	ble	.L31
	mov	r3, r9
	mov	r5, r6
	mov	r9, r10
	ldr	r6, [sp, #36]
	mov	r10, r3
	b	.L30
.L118:
	ldr	r1, [sp, #4]
	cmp	r4, #63
	it	eq
	cmpeq	r1, #0
	bne	.L42
	ldr	r2, [sp, #16]
	orrs	r2, r6, r2
	beq	.L43
.L42:
	ldr	r2, [r10]
	movs	r4, #17
	mov	r0, r10
	str	r5, [r2, #24]
	ldr	r1, [r10]
	str	r4, [r2, #20]
	ldr	r2, [r1]
	blx	r2
.L43:
	ldr	r3, [sp, #8]
	cmp	r3, #0
	ble	.L23
	ldr	r4, [fp, #8]
	add	r1, sp, #48
	pld	[fp, #44]
	ldr	r2, [r1, r4, lsl #2]
	cmp	r2, #0
	bne	.L131
.L44:
	ldr	r3, [sp, #8]
	movs	r1, #1
	add	r2, sp, #48
	str	r1, [r2, r4, lsl #2]
	cmp	r3, r1
	beq	.L23
	ldr	r4, [fp, #12]
	pld	[fp, #48]
	ldr	r2, [r2, r4, lsl #2]
	cmp	r2, #0
	bne	.L132
.L45:
	ldr	r3, [sp, #8]
	movs	r1, #1
	add	r2, sp, #48
	str	r1, [r2, r4, lsl #2]
	cmp	r3, #2
	beq	.L23
	ldr	r4, [fp, #16]
	ldr	r2, [r2, r4, lsl #2]
	cmp	r2, #0
	bne	.L133
.L46:
	ldr	r3, [sp, #8]
	movs	r1, #1
	add	r2, sp, #48
	str	r1, [r2, r4, lsl #2]
	cmp	r3, #3
	beq	.L23
	ldr	r4, [fp, #20]
	ldr	r2, [r2, r4, lsl #2]
	cmp	r2, #0
	bne	.L134
.L47:
	movs	r1, #1
	add	r2, sp, #48
	str	r1, [r2, r4, lsl #2]
	b	.L23
.L35:
	ldr	r3, [sp, #32]
	add	fp, fp, r3
.L40:
	ldr	r3, [fp], #4
	mov	r0, r10
	ldr	r3, [r10]
	add	r8, r8, #1
	str	r5, [r3, #24]
	ldr	r2, [r10]
	str	r7, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	cmp	r4, r8
	str	r6, [fp, #-4]
	bge	.L40
	b	.L30
.L116:
	ldr	r2, [r10]
	mov	r0, r10
	ldr	r3, [sp, #8]
	str	r3, [r2, #24]
	movs	r3, #26
	ldr	r1, [r10]
	str	r3, [r2, #20]
	movs	r2, #4
	str	r2, [r1, #28]
	ldr	r2, [r10]
	ldr	r2, [r2]
	blx	r2
	ldr	r3, [sp, #8]
	cmp	r3, #0
	ble	.L16
	b	.L10
.L28:
	ldr	r3, [sp, #32]
	str	r6, [sp, #36]
	mov	r6, r5
	str	r9, [sp, #44]
	mov	r9, r8
	add	fp, fp, r3
	ldr	r5, [sp, #28]
	ldr	r8, [sp, #16]
	b	.L34
.L136:
	cmp	r8, r2
	mov	r0, r10
	beq	.L33
	ldr	r2, [r10]
.L112:
	str	r6, [r2, #24]
	ldr	r3, [r10]
	str	r7, [r2, #20]
	ldr	r2, [r3]
	blx	r2
.L33:
	add	r9, r9, #1
	str	r5, [fp, #-4]
	cmp	r4, r9
	blt	.L135
.L34:
	ldr	r2, [fp], #4
	cmp	r2, #0
	bge	.L136
	ldr	r2, [r10]
	mov	r0, r10
	b	.L112
.L135:
	mov	r5, r6
	ldr	r9, [sp, #44]
	ldr	r6, [sp, #36]
	b	.L30
.L119:
	ldr	r2, [r10]
	mov	r0, r10
	mov	r8, r1
	str	r5, [r2, #24]
	ldr	r3, [r10]
	str	r7, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [sp, #4]
	b	.L24
.L134:
	ldr	r2, [r10]
	movs	r3, #19
	mov	r0, r10
	str	r5, [r2, #24]
	ldr	r1, [r10]
	str	r3, [r2, #20]
	ldr	r2, [r1]
	blx	r2
	b	.L47
.L133:
	ldr	r2, [r10]
	movs	r3, #19
	mov	r0, r10
	str	r5, [r2, #24]
	ldr	r1, [r10]
	str	r3, [r2, #20]
	ldr	r2, [r1]
	blx	r2
	b	.L46
.L132:
	ldr	r2, [r10]
	movs	r3, #19
	mov	r0, r10
	str	r5, [r2, #24]
	ldr	r1, [r10]
	str	r3, [r2, #20]
	ldr	r2, [r1]
	blx	r2
	b	.L45
.L131:
	ldr	r2, [r10]
	movs	r3, #19
	mov	r0, r10
	str	r5, [r2, #24]
	ldr	r1, [r10]
	str	r3, [r2, #20]
	ldr	r2, [r1]
	blx	r2
	b	.L44
.L50:
	cmp	r4, #0
	ble	.L1
	add	r5, sp, #88
	ldr	r2, [r5]
	cmp	r2, #0
	blt	.L137
.L53:
	cmp	r4, #1
	ble	.L1
	ldr	r2, [r5, #256]
	cmp	r2, #0
	blt	.L138
.L54:
	cmp	r4, #2
	ble	.L1
	ldr	r2, [r5, #512]
	cmp	r2, #0
	blt	.L139
.L55:
	cmp	r4, #3
	ble	.L1
	ldr	r2, [r5, #768]
	cmp	r2, #0
	blt	.L140
.L56:
	cmp	r4, #4
	ble	.L1
	ldr	r2, [r5, #1024]
	cmp	r2, #0
	blt	.L141
.L57:
	cmp	r4, #5
	ble	.L1
	ldr	r2, [r5, #1280]
	cmp	r2, #0
	blt	.L142
.L58:
	cmp	r4, #6
	ble	.L1
	ldr	r2, [r5, #1536]
	cmp	r2, #0
	blt	.L143
.L59:
	cmp	r4, #7
	ble	.L1
	ldr	r2, [r5, #1792]
	cmp	r2, #0
	blt	.L144
.L60:
	cmp	r4, #8
	ble	.L1
	ldr	r2, [r5, #2048]
	cmp	r2, #0
	blt	.L145
.L61:
	cmp	r4, #9
	ble	.L1
	ldr	r2, [r5, #2304]
	cmp	r2, #0
	bge	.L1
.L113:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r3, [r2]
	addw	sp, sp, #2652
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	r3	@ indirect register sibling call
.L4:
	ldr	r4, [r10, #60]
	str	r5, [r10, #228]
	cmp	r4, #0
	ble	.L5
	add	r0, sp, #48
	mov	r1, r5
	lsls	r2, r4, #2
	bl	memset(PLT)
	b	.L5
.L129:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L71
.L128:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L70
.L127:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L69
.L126:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L68
.L125:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L67
.L124:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L66
.L123:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L65
.L122:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L64
.L121:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L63
.L115:
	ldr	r2, [r0]
	movs	r1, #0
	movs	r4, #19
	str	r1, [r2, #24]
	ldr	r1, [r0]
	str	r4, [r2, #20]
	ldr	r2, [r1]
	blx	r2
	b	.L2
.L145:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L61
.L144:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L60
.L143:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L59
.L142:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L58
.L141:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L57
.L140:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L56
.L139:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L55
.L138:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L54
.L137:
	ldr	r2, [r10]
	movs	r1, #45
	mov	r0, r10
	str	r1, [r2, #20]
	ldr	r2, [r2]
	blx	r2
	ldr	r4, [r10, #60]
	b	.L53
	.size	validate_script, .-validate_script
	.section	.text.pass_startup,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pass_startup, %function
pass_startup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #332]
	movs	r1, #0
	ldr	r2, [r0, #348]
	push	{r4, lr}
	mov	r4, r0
	str	r1, [r3, #12]
	ldr	r3, [r2, #4]
	blx	r3
	ldr	r3, [r4, #348]
	mov	r0, r4
	pop	{r4, lr}
	ldr	r3, [r3, #8]
	bx	r3	@ indirect register sibling call
	.size	pass_startup, .-pass_startup
	.section	.text.finish_pass_master,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	finish_pass_master, %function
finish_pass_master:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	ldr	r3, [r0, #364]
	ldr	r4, [r0, #332]
	ldr	r3, [r3, #8]
	blx	r3
	ldr	r3, [r4, #20]
	cmp	r3, #1
	beq	.L150
	bcc	.L151
	cmp	r3, #2
	bne	.L149
	ldr	r3, [r5, #184]
	cbz	r3, .L153
	movs	r3, #1
	str	r3, [r4, #20]
.L153:
	ldr	r3, [r4, #32]
	adds	r3, r3, #1
	str	r3, [r4, #32]
.L149:
	ldr	r3, [r4, #24]
	adds	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r3, r4, r5, pc}
.L151:
	ldr	r3, [r5, #184]
	movs	r2, #2
	str	r2, [r4, #20]
	cmp	r3, #0
	bne	.L149
	ldr	r3, [r4, #32]
	adds	r3, r3, #1
	str	r3, [r4, #32]
	b	.L149
.L150:
	movs	r3, #2
	str	r3, [r4, #20]
	ldr	r3, [r4, #24]
	adds	r3, r3, #1
	str	r3, [r4, #24]
	pop	{r3, r4, r5, pc}
	.size	finish_pass_master, .-finish_pass_master
	.global	__aeabi_uidivmod
	.section	.text.per_scan_setup,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	per_scan_setup, %function
per_scan_setup:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r5, [r0, #244]
	sub	sp, sp, #12
	cmp	r5, #1
	beq	.L181
	subs	r3, r5, #1
	cmp	r3, #3
	bhi	.L182
.L162:
	ldr	r1, [r4, #232]
	ldr	r0, [r4, #28]
	lsls	r1, r1, #3
	bl	jdiv_round_up(PLT)
	ldr	r1, [r4, #236]
	str	r0, [r4, #264]
	ldr	r0, [r4, #32]
	lsls	r1, r1, #3
	bl	jdiv_round_up(PLT)
	ldr	r2, [r4, #244]
	movs	r3, #0
	str	r0, [r4, #268]
	str	r3, [r4, #272]
	cmp	r2, r3
	str	r2, [sp, #4]
	ble	.L161
	mov	r10, r3
	mov	r9, r4
	mov	r5, r3
.L172:
	ldr	r7, [r9, #248]
	ldr	r8, [r7, #8]
	ldr	fp, [r7, #12]
	ldr	r0, [r7, #28]
	str	r8, [r7, #52]
	mov	r1, r8
	lsl	r3, r8, #3
	str	fp, [r7, #56]
	mul	r6, fp, r8
	str	r3, [r7, #64]
	str	r6, [r7, #60]
	bl	__aeabi_uidivmod(PLT)
	cmp	r1, #0
	it	ne
	movne	r8, r1
	ldr	r0, [r7, #32]
	mov	r1, fp
	str	r8, [r7, #68]
	bl	__aeabi_uidivmod(PLT)
	add	r3, r6, r10
	cmp	r1, #0
	it	ne
	movne	fp, r1
	cmp	r3, #10
	str	fp, [r7, #72]
	bgt	.L183
.L166:
	cmp	r6, #0
	add	r1, r6, #-1
	ble	.L171
	ldr	r3, [r4, #272]
	cmp	r1, #0
	add	r0, r3, #1
	add	r7, r4, r3, lsl #2
	str	r5, [r7, #276]
	ble	.L170
	cmp	r6, #2
	str	r5, [r7, #280]
	ble	.L170
	cmp	r6, #3
	str	r5, [r7, #284]
	ble	.L170
	cmp	r6, #4
	str	r5, [r7, #288]
	ble	.L170
	cmp	r6, #5
	str	r5, [r7, #292]
	ble	.L170
	cmp	r6, #6
	str	r5, [r7, #296]
	ble	.L170
	cmp	r6, #7
	str	r5, [r7, #300]
	ble	.L170
	cmp	r6, #8
	str	r5, [r7, #304]
	ble	.L170
	adds	r3, r3, #9
	cmp	r6, #9
	it	gt
	addgt	r3, r4, r3, lsl #2
	str	r5, [r7, #308]
	it	gt
	strgt	r5, [r3, #276]
.L170:
	add	r1, r1, r0
	str	r1, [r4, #272]
.L171:
	ldr	r2, [sp, #4]
	adds	r5, r5, #1
	add	r9, r9, #4
	cmp	r2, r5
	ble	.L161
	ldr	r10, [r4, #272]
	b	.L172
.L181:
	ldr	r6, [r0, #248]
	movs	r2, #8
	ldr	r3, [r6, #28]
	ldr	r7, [r6, #12]
	ldr	r0, [r6, #32]
	str	r3, [r4, #264]
	mov	r1, r7
	str	r0, [r4, #268]
	str	r5, [r6, #52]
	str	r5, [r6, #56]
	str	r5, [r6, #60]
	str	r5, [r6, #68]
	str	r2, [r6, #64]
	bl	__aeabi_uidivmod(PLT)
	movs	r3, #0
	cmp	r1, r3
	it	ne
	movne	r7, r1
	str	r7, [r6, #72]
	str	r5, [r4, #272]
	str	r3, [r4, #276]
.L161:
	ldr	r3, [r4, #204]
	cmp	r3, #0
	ble	.L158
	ldr	r2, [r4, #264]
	movw	r1, #65535
	mul	r3, r2, r3
	cmp	r3, r1
	it	ge
	movge	r3, r1
	str	r3, [r4, #200]
.L158:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L183:
	ldr	r3, [r4]
	movs	r2, #13
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #244]
	str	r3, [sp, #4]
	b	.L166
.L182:
	ldr	r3, [r0]
	movs	r6, #26
	movs	r1, #4
	str	r5, [r3, #24]
	ldr	r2, [r0]
	str	r6, [r3, #20]
	str	r1, [r2, #28]
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	b	.L162
	.size	per_scan_setup, .-per_scan_setup
	.section	.text.select_scan_parameters,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	select_scan_parameters, %function
select_scan_parameters:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #172]
	push	{r3, r4, r5, lr}
	mov	r4, r0
	cbz	r1, .L185
	ldr	r3, [r0, #332]
	ldr	r2, [r3, #32]
	add	r2, r2, r2, lsl #3
	lsls	r2, r2, #2
	ldr	r3, [r1, r2]
	add	r2, r2, r1
	cmp	r3, #0
	str	r3, [r0, #244]
	ble	.L188
	ldr	r1, [r0, #68]
	movs	r0, #84
	ldr	r5, [r2, #4]
	cmp	r3, #1
	mla	r5, r0, r5, r1
	str	r5, [r4, #248]
	ble	.L188
	ldr	r5, [r2, #8]
	cmp	r3, #2
	mla	r5, r0, r5, r1
	str	r5, [r4, #252]
	ble	.L188
	ldr	r5, [r2, #12]
	cmp	r3, #3
	mla	r5, r0, r5, r1
	str	r5, [r4, #256]
	ble	.L188
	ldr	r3, [r2, #16]
	mla	r1, r0, r3, r1
	str	r1, [r4, #260]
.L188:
	adds	r2, r2, #20
	add	r4, r4, #316
	vld1.32	{q8}, [r2]
	vst1.32	{q8}, [r4]
	pop	{r3, r4, r5, pc}
.L185:
	ldr	r3, [r0, #60]
	cmp	r3, #4
	bgt	.L193
.L189:
	cmp	r3, #0
	str	r3, [r4, #244]
	ble	.L191
	ldr	r2, [r4, #68]
	cmp	r3, #1
	str	r2, [r4, #248]
	ble	.L191
	cmp	r3, #2
	add	r1, r2, #84
	str	r1, [r4, #252]
	ble	.L191
	cmp	r3, #3
	add	r1, r2, #168
	str	r1, [r4, #256]
	ble	.L191
	adds	r2, r2, #252
	str	r2, [r4, #260]
.L191:
	add	r4, r4, #316
	vldr	d16, .L194
	vldr	d17, .L194+8
	vst1.32	{q8}, [r4]
	pop	{r3, r4, r5, pc}
.L193:
	ldr	r2, [r0]
	movs	r1, #4
	movs	r5, #26
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r5, [r2, #20]
	str	r1, [r3, #28]
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #60]
	b	.L189
.L195:
	.align	3
.L194:
	.word	0
	.word	63
	.word	0
	.word	0
	.size	select_scan_parameters, .-select_scan_parameters
	.section	.text.prepare_for_pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	prepare_for_pass, %function
prepare_for_pass:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, [r0, #332]
	ldr	r3, [r5, #20]
	cmp	r3, #1
	beq	.L198
	bcc	.L199
	cmp	r3, #2
	bne	.L223
.L200:
	ldr	r3, [r4, #184]
	cmp	r3, #0
	beq	.L224
.L207:
	ldr	r3, [r4, #364]
	mov	r0, r4
	movs	r1, #0
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #344]
	mov	r0, r4
	movs	r1, #2
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r5, #32]
	cmp	r3, #0
	beq	.L225
.L208:
	ldr	r3, [r4, #348]
	mov	r0, r4
	ldr	r3, [r3, #8]
	blx	r3
	movs	r3, #0
	str	r3, [r5, #12]
.L204:
	ldr	r2, [r5, #28]
	ldr	r1, [r5, #24]
	ldr	r3, [r4, #8]
	subs	r0, r2, #1
	subs	r0, r1, r0
	clz	r0, r0
	lsrs	r0, r0, #5
	str	r0, [r5, #16]
	cbz	r3, .L196
	str	r1, [r3, #12]
	str	r2, [r3, #16]
.L196:
	pop	{r4, r5, r6, pc}
.L223:
	ldr	r3, [r0]
	movs	r2, #48
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L204
.L199:
	bl	select_scan_parameters(PLT)
	mov	r0, r4
	bl	per_scan_setup(PLT)
	ldr	r6, [r4, #176]
	cmp	r6, #0
	beq	.L226
.L201:
	ldr	r3, [r4, #360]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #364]
	mov	r0, r4
	ldr	r1, [r4, #184]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #344]
	mov	r0, r4
	ldr	r1, [r5, #28]
	ldr	r3, [r3]
	cmp	r1, #1
	ite	gt
	movgt	r1, #3
	movle	r1, #0
	blx	r3
	ldr	r3, [r4, #336]
	mov	r0, r4
	movs	r1, #0
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #184]
	cbz	r3, .L203
	movs	r3, #0
	str	r3, [r5, #12]
	b	.L204
.L198:
	bl	select_scan_parameters(PLT)
	mov	r0, r4
	bl	per_scan_setup(PLT)
	ldr	r3, [r4, #316]
	cbnz	r3, .L205
	ldr	r3, [r4, #324]
	cbz	r3, .L205
	ldr	r3, [r4, #180]
	cbz	r3, .L206
.L205:
	ldr	r3, [r4, #364]
	mov	r0, r4
	movs	r1, #1
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #344]
	mov	r0, r4
	movs	r1, #2
	ldr	r3, [r3]
	blx	r3
	movs	r3, #0
	str	r3, [r5, #12]
	b	.L204
.L203:
	movs	r3, #1
	str	r3, [r5, #12]
	b	.L204
.L226:
	ldr	r3, [r4, #352]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #356]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #340]
	mov	r1, r6
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	b	.L201
.L225:
	ldr	r3, [r4, #348]
	mov	r0, r4
	ldr	r3, [r3, #4]
	blx	r3
	b	.L208
.L224:
	mov	r0, r4
	bl	select_scan_parameters(PLT)
	mov	r0, r4
	bl	per_scan_setup(PLT)
	b	.L207
.L206:
	ldr	r3, [r5, #24]
	movs	r2, #2
	str	r2, [r5, #20]
	adds	r3, r3, #1
	str	r3, [r5, #24]
	b	.L200
	.size	prepare_for_pass, .-prepare_for_pass
	.section	.text.jinit_c_master_control,"ax",%progbits
	.align	2
	.global	jinit_c_master_control
	.thumb
	.thumb_func
	.type	jinit_c_master_control, %function
jinit_c_master_control:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r2, #36
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	sub	sp, sp, #16
	mov	r10, r1
	movs	r1, #1
	ldr	r3, [r3]
	blx	r3
	ldr	r5, .L271
	mov	r9, r0
	ldr	r3, [r4, #32]
	movs	r2, #0
	ldr	r0, .L271+4
	ldr	r1, .L271+8
.LPIC8:
	add	r5, pc
	str	r9, [r4, #332]
.LPIC9:
	add	r0, pc
	str	r5, [r9]
.LPIC10:
	add	r1, pc
	str	r0, [r9, #4]
	str	r1, [r9, #8]
	str	r2, [r9, #16]
	cbz	r3, .L228
	ldr	r2, [r4, #28]
	cmp	r2, #0
	bne	.L266
.L228:
	ldr	r3, [r4]
	movs	r2, #32
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #32]
.L229:
	movw	r2, #65500
	cmp	r3, r2
	bgt	.L230
	ldr	r3, [r4, #28]
	cmp	r3, r2
	bgt	.L230
.L231:
	ldr	r3, [r4, #56]
	cmp	r3, #8
	beq	.L232
	ldr	r2, [r4]
	movs	r1, #15
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L232:
	ldr	lr, [r4, #60]
	cmp	lr, #10
	bgt	.L267
.L233:
	cmp	lr, #0
	mov	r7, #1
	ldr	r5, [r4, #68]
	str	r7, [r4, #232]
	str	r7, [r4, #236]
	ble	.L251
	mov	r8, #0
	mov	r1, r7
	movs	r6, #18
	b	.L238
.L269:
	ldr	r2, [r5, #12]
	add	ip, r2, #-1
	cmp	ip, #3
	bhi	.L235
.L236:
	str	r1, [sp]
	cmp	r1, r3
	str	r7, [sp, #4]
	it	lt
	movlt	r1, r3
	str	r3, [sp, #8]
	cmp	r7, r2
	str	r2, [sp, #12]
	it	lt
	movlt	r7, r2
	vldr	d17, [sp, #8]
	cmp	r8, lr
	add	r5, r5, #84
	vld1.64	{d16}, [sp:64]
	vmax.s32	d16, d17, d16
	vstr	d16, [r4, #232]
	bge	.L268
.L238:
	ldr	r3, [r5, #8]
	mov	r0, r4
	add	r8, r8, #1
	subs	r2, r3, #1
	cmp	r2, #3
	bls	.L269
.L235:
	ldr	r3, [r4]
	str	r6, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	r1, [r4, #232]
	ldr	r7, [r4, #236]
	ldr	lr, [r4, #60]
	b	.L236
.L230:
	ldr	r3, [r4]
	movw	r2, #65500
	movs	r1, #41
	mov	r0, r4
	str	r2, [r3, #24]
	ldr	r2, [r4]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L231
.L268:
	cmp	lr, #0
	ldr	r5, [r4, #68]
	it	le
	lslle	r1, r7, #3
	ble	.L234
	adds	r5, r5, #84
	movs	r6, #0
	mov	r8, #8
	movs	r7, #1
	b	.L241
.L270:
	ldr	r1, [r4, #232]
.L241:
	str	r6, [r5, #-80]
	lsls	r1, r1, #3
	str	r8, [r5, #-48]
	adds	r6, r6, #1
	ldr	r3, [r4, #28]
	adds	r5, r5, #84
	ldr	r0, [r5, #-160]
	mul	r0, r0, r3
	bl	jdiv_round_up(PLT)
	ldr	r3, [r5, #-156]
	str	r0, [r5, #-140]
	ldr	r0, [r4, #32]
	ldr	r1, [r4, #236]
	mul	r0, r3, r0
	lsls	r1, r1, #3
	bl	jdiv_round_up(PLT)
	ldr	r3, [r5, #-160]
	str	r0, [r5, #-136]
	ldr	r0, [r4, #28]
	ldr	r1, [r4, #232]
	mul	r0, r3, r0
	bl	jdiv_round_up(PLT)
	ldr	r3, [r5, #-156]
	str	r0, [r5, #-128]
	ldr	r0, [r4, #32]
	ldr	r1, [r4, #236]
	mul	r0, r3, r0
	bl	jdiv_round_up(PLT)
	str	r7, [r5, #-120]
	str	r0, [r5, #-124]
	ldr	r3, [r4, #60]
	cmp	r6, r3
	blt	.L270
	ldr	r1, [r4, #236]
	lsls	r1, r1, #3
.L234:
	ldr	r0, [r4, #32]
	bl	jdiv_round_up(PLT)
	ldr	r3, [r4, #172]
	str	r0, [r4, #240]
	cbz	r3, .L242
	mov	r0, r4
	bl	validate_script(PLT)
	ldr	r2, [r4, #228]
	ldr	r3, [r4, #168]
	cbz	r2, .L244
	movs	r2, #1
	str	r2, [r4, #184]
	cmp	r10, #0
	beq	.L246
.L247:
	movs	r2, #0
	movs	r1, #1
	str	r1, [r9, #20]
	str	r2, [r9, #32]
	str	r2, [r9, #24]
.L249:
	lsls	r3, r3, #1
	str	r3, [r9, #28]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L242:
	movs	r2, #1
	str	r3, [r4, #228]
	mov	r3, r2
	str	r2, [r4, #168]
.L244:
	ldr	r2, [r4, #184]
	cmp	r10, #0
	bne	.L245
.L246:
	movs	r1, #0
	str	r1, [r9, #20]
	str	r1, [r9, #32]
	str	r1, [r9, #24]
	cmp	r2, #0
	bne	.L249
	str	r3, [r9, #28]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L245:
	cmp	r2, #0
	bne	.L247
	movs	r1, #2
	str	r2, [r9, #32]
	str	r2, [r9, #24]
	str	r1, [r9, #20]
	str	r3, [r9, #28]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L266:
	ldr	r2, [r4, #60]
	cmp	r2, #0
	ble	.L228
	ldr	r2, [r4, #36]
	cmp	r2, #0
	bgt	.L229
	b	.L228
.L267:
	ldr	r3, [r4]
	movs	r1, #10
	movs	r5, #26
	mov	r0, r4
	str	lr, [r3, #24]
	ldr	r2, [r4]
	str	r5, [r3, #20]
	str	r1, [r2, #28]
	ldr	r3, [r4]
	ldr	r3, [r3]
	blx	r3
	ldr	lr, [r4, #60]
	b	.L233
.L251:
	movs	r1, #8
	b	.L234
.L272:
	.align	2
.L271:
	.word	prepare_for_pass-(.LPIC8+4)
	.word	pass_startup-(.LPIC9+4)
	.word	finish_pass_master-(.LPIC10+4)
	.size	jinit_c_master_control, .-jinit_c_master_control
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
