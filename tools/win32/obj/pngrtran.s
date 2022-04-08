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
	.file	"pngrtran.c"
	.section	.text.png_do_gray_to_rgb,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_do_gray_to_rgb, %function
png_do_gray_to_rgb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldrb	r6, [r0, #9]	@ zero_extendqisi2
	ldr	r5, [r0]
	cmp	r6, #7
	bls	.L1
	ldrb	r4, [r0, #8]	@ zero_extendqisi2
	and	r7, r4, #2
	and	lr, r7, #255
	cmp	r7, #0
	bne	.L1
	cbnz	r4, .L3
	cmp	r6, #8
	beq	.L33
	add	r2, r1, r5, lsl #1
	subs	r2, r2, #1
	add	r3, r2, r5, lsl #2
	cbz	r5, .L5
	subs	r1, r2, #2
.L9:
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	adds	r4, r4, #1
	cmp	r4, r5
	sub	r1, r1, #2
	sub	r2, r2, #2
	sub	r3, r3, #6
	strb	r6, [r3, #6]
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	strb	r6, [r3, #5]
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	strb	r6, [r3, #4]
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	strb	r6, [r3, #3]
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	strb	r6, [r3, #2]
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	strb	r6, [r3, #1]
	bne	.L9
.L31:
	ldrb	r4, [r0, #8]	@ zero_extendqisi2
	ldrb	r6, [r0, #9]	@ zero_extendqisi2
	b	.L5
.L3:
	cmp	r4, #4
	beq	.L34
.L5:
	ldrb	r3, [r0, #10]	@ zero_extendqisi2
	orr	r4, r4, #2
	strb	r4, [r0, #8]
	adds	r3, r3, #2
	uxtb	r3, r3
	smulbb	r6, r6, r3
	strb	r3, [r0, #10]
	uxtb	r6, r6
	cmp	r6, #7
	strb	r6, [r0, #11]
	iteet	ls
	mulls	r5, r5, r6
	lsrhi	r6, r6, #3
	mulhi	r5, r5, r6
	addls	r5, r5, #7
	it	ls
	lsrls	r5, r5, #3
	str	r5, [r0, #4]
.L1:
	pop	{r4, r5, r6, r7, pc}
.L33:
	subs	r3, r5, #1
	add	r3, r3, r1
	add	r2, r3, r5, lsl #1
	cmp	r5, #0
	beq	.L5
	subs	r4, r3, r5
.L7:
	ldrb	r1, [r3]	@ zero_extendqisi2
	subs	r2, r2, #3
	strb	r1, [r2, #3]
	ldrb	r1, [r3], #-1	@ zero_extendqisi2
	strb	r1, [r2, #2]
	cmp	r3, r4
	ldrb	r1, [r3, #1]	@ zero_extendqisi2
	strb	r1, [r2, #1]
	bne	.L7
	b	.L31
.L34:
	cmp	r6, #8
	beq	.L35
	lsls	r3, r5, #2
	subs	r2, r3, #1
	add	r2, r2, r1
	add	r3, r3, r2
	cmp	r5, #0
	beq	.L5
	mov	r1, lr
.L14:
	ldrb	r4, [r2]	@ zero_extendqisi2
	adds	r1, r1, #1
	cmp	r1, r5
	sub	r2, r2, #4
	sub	r3, r3, #8
	strb	r4, [r3, #8]
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	strb	r4, [r3, #7]
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	strb	r4, [r3, #6]
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	strb	r4, [r3, #5]
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	strb	r4, [r3, #4]
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	strb	r4, [r3, #3]
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	strb	r4, [r3, #2]
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	strb	r4, [r3, #1]
	bne	.L14
	b	.L31
.L35:
	lsls	r3, r5, #1
	subs	r2, r3, #1
	add	r2, r2, r1
	add	r3, r3, r2
	cmp	r5, #0
	beq	.L5
.L12:
	ldrb	r1, [r2]	@ zero_extendqisi2
	add	lr, lr, #1
	cmp	lr, r5
	sub	r2, r2, #2
	sub	r3, r3, #4
	strb	r1, [r3, #4]
	ldrb	r1, [r2, #1]	@ zero_extendqisi2
	strb	r1, [r3, #3]
	ldrb	r1, [r2, #1]	@ zero_extendqisi2
	strb	r1, [r3, #2]
	ldrb	r1, [r2, #1]	@ zero_extendqisi2
	strb	r1, [r3, #1]
	bne	.L12
	b	.L31
	.size	png_do_gray_to_rgb, .-png_do_gray_to_rgb
	.section	.text.png_do_compose,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_do_compose, %function
png_do_compose:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	ldr	r5, [r2, #452]
	ldr	r7, [r2, #748]
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	ubfx	r5, r5, #13, #1
	str	r5, [sp, #12]
	ldr	r4, [r2, #732]
	ldr	r6, [r2, #740]
	ldr	r5, [r2, #744]
	ldr	r9, [r2, #736]
	str	r7, [sp, #16]
	ldr	r8, [r2, #752]
	ldr	ip, [r2, #724]
	ldr	r10, [r0]
	cmp	r3, #6
	bhi	.L36
	tbh	[pc, r3, lsl #1]
.L39:
	.2byte	(.L38-.L39)/2
	.2byte	(.L36-.L39)/2
	.2byte	(.L40-.L39)/2
	.2byte	(.L36-.L39)/2
	.2byte	(.L41-.L39)/2
	.2byte	(.L36-.L39)/2
	.2byte	(.L42-.L39)/2
.L47:
	cmp	r4, #0
	beq	.L236
	cmp	r10, #0
	beq	.L36
	add	r5, r1, r10
.L81:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	ldrh	r0, [r2, #780]
	cmp	r0, r3
	ite	eq
	ldrbeq	r3, [r2, #700]	@ zero_extendqisi2
	ldrbne	r3, [r4, r3]	@ zero_extendqisi2
	cmp	r1, r5
	strb	r3, [r1, #-1]
	bne	.L81
.L36:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L42:
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L237
	ldr	r0, [sp, #16]
	cmp	r9, #0
	it	ne
	cmpne	r0, #0
	beq	.L154
	cmp	r8, #0
	beq	.L154
	cmp	r10, #0
	beq	.L36
	add	fp, r1, #8
	movs	r4, #0
	mov	r0, fp
	b	.L161
.L239:
	ldrh	r3, [r2, #694]
	lsrs	r3, r3, #8
	strb	r3, [r0, #-8]
	ldrh	r3, [r2, #694]
	strb	r3, [r1, #1]
	ldrh	r3, [r2, #696]
	lsrs	r3, r3, #8
	strb	r3, [r1, #2]
	ldrh	r3, [r2, #696]
	strb	r3, [r1, #3]
	ldrh	r3, [r2, #698]
	lsrs	r3, r3, #8
	strb	r3, [r1, #4]
	ldrh	r3, [r2, #698]
	strb	r3, [r1, #5]
.L156:
	adds	r4, r4, #1
	adds	r0, r0, #8
	cmp	r4, r10
	mov	r1, fp
	beq	.L36
	add	fp, fp, #8
.L161:
	ldrb	r5, [r1, #6]	@ zero_extendqisi2
	ldrb	r3, [r1, #7]	@ zero_extendqisi2
	add	r3, r3, r5, lsl #8
	movw	r5, #65535
	uxth	r3, r3
	cmp	r3, r5
	beq	.L238
	cmp	r3, #0
	beq	.L239
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	rsb	r5, r3, #65280
	ldrh	r6, [r2, #704]
	adds	r5, r5, #255
	ldrb	lr, [r0, #-8]	@ zero_extendqisi2
	asr	r7, r7, ip
	mul	r6, r6, r5
	ldr	r7, [r8, r7, lsl #2]
	ldrh	r7, [r7, lr, lsl #1]
	add	r6, r6, #32768
	mla	r7, r3, r7, r6
	add	r7, r7, r7, lsr #16
	lsr	lr, r7, #16
	ldr	r7, [sp, #12]
	uxth	r6, lr
	cbnz	r7, .L158
	uxtb	r7, lr
	ldr	lr, [sp, #16]
	lsrs	r6, r6, #8
	asr	r7, r7, ip
	ldr	r7, [lr, r7, lsl #2]
	ldrh	r6, [r7, r6, lsl #1]
.L158:
	lsrs	r7, r6, #8
	strb	r7, [r0, #-8]
	ldrb	r7, [r1, #3]	@ zero_extendqisi2
	strb	r6, [r1, #1]
	ldrh	r6, [r2, #706]
	ldrb	lr, [r1, #2]	@ zero_extendqisi2
	asr	r7, r7, ip
	ldr	r7, [r8, r7, lsl #2]
	mul	r6, r6, r5
	ldrh	r7, [r7, lr, lsl #1]
	add	r6, r6, #32768
	mla	r7, r3, r7, r6
	add	r7, r7, r7, lsr #16
	lsr	lr, r7, #16
	ldr	r7, [sp, #12]
	uxth	r6, lr
	cbnz	r7, .L159
	uxtb	r7, lr
	ldr	lr, [sp, #16]
	lsrs	r6, r6, #8
	asr	r7, r7, ip
	ldr	r7, [lr, r7, lsl #2]
	ldrh	r6, [r7, r6, lsl #1]
.L159:
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	lsr	lr, r6, #8
	strb	r6, [r1, #3]
	strb	lr, [r1, #2]
	ldrh	lr, [r2, #708]
	asr	r6, r7, ip
	ldrb	r7, [r1, #4]	@ zero_extendqisi2
	ldr	r6, [r8, r6, lsl #2]
	mul	r5, lr, r5
	ldrh	r6, [r6, r7, lsl #1]
	add	r5, r5, #32768
	mla	r3, r3, r6, r5
	ldr	r6, [sp, #12]
	add	r3, r3, r3, lsr #16
	lsrs	r3, r3, #16
	uxth	r5, r3
	cbnz	r6, .L160
	uxtb	r3, r3
	ldr	r7, [sp, #16]
	lsrs	r5, r5, #8
	asr	r3, r3, ip
	ldr	r3, [r7, r3, lsl #2]
	ldrh	r5, [r3, r5, lsl #1]
.L160:
	lsrs	r3, r5, #8
	strb	r5, [r1, #5]
	strb	r3, [r1, #4]
	b	.L156
.L41:
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L240
	ldr	r5, [sp, #16]
	cmp	r9, #0
	it	ne
	cmpne	r5, #0
	beq	.L126
	cmp	r8, #0
	beq	.L126
	cmp	r10, #0
	beq	.L36
	adds	r3, r1, #4
	movs	r5, #0
	mov	r4, r3
	movw	r6, #65535
	str	r9, [sp, #20]
	b	.L131
.L242:
	ldrh	r0, [r2, #700]
	lsrs	r0, r0, #8
	strb	r0, [r4, #-4]
	ldrh	r0, [r2, #700]
	strb	r0, [r1, #1]
.L128:
	adds	r5, r5, #1
	mov	r1, r3
	cmp	r5, r10
	add	r4, r4, #4
	add	r3, r3, #4
	beq	.L36
.L131:
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	ldrb	r0, [r1, #3]	@ zero_extendqisi2
	add	r0, r0, r7, lsl #8
	uxth	r0, r0
	cmp	r0, r6
	beq	.L241
	rsb	r9, r0, #65280
	cmp	r0, #0
	beq	.L242
	ldrb	lr, [r1, #1]	@ zero_extendqisi2
	add	r9, r9, #255
	ldrh	fp, [r2, #710]
	ldrb	r7, [r4, #-4]	@ zero_extendqisi2
	asr	lr, lr, ip
	mul	r9, fp, r9
	ldr	lr, [r8, lr, lsl #2]
	ldrh	r7, [lr, r7, lsl #1]
	add	r9, r9, #32768
	mla	r0, r0, r7, r9
	ldr	r7, [sp, #12]
	add	r0, r0, r0, lsr #16
	lsrs	r0, r0, #16
	uxtb	lr, r0
	uxth	r0, r0
	cbnz	r7, .L130
	ldr	r9, [sp, #16]
	asr	lr, lr, ip
	lsrs	r0, r0, #8
	ldr	r7, [r9, lr, lsl #2]
	ldrh	r0, [r7, r0, lsl #1]
.L130:
	lsrs	r7, r0, #8
	strb	r7, [r4, #-4]
	strb	r0, [r1, #1]
	b	.L128
.L40:
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L243
	cmp	r9, #0
	beq	.L244
	cmp	r10, #0
	beq	.L36
	adds	r0, r1, #6
	movs	r4, #0
	mov	r3, r0
	str	r10, [sp, #20]
	str	r2, [sp, #16]
	mov	r5, r2
	b	.L105
.L103:
	ldr	r7, [sp, #12]
	ldr	r5, [r9, r7, lsl #2]
	ldrh	r2, [r5, r2, lsl #1]
	lsrs	r5, r2, #8
	strb	r5, [r3, #-6]
	strb	r2, [r1, #1]
	ldr	r2, [r9, fp, lsl #2]
	ldrh	r2, [r2, r6, lsl #1]
	strb	r2, [r1, #3]
	lsrs	r2, r2, #8
	strb	r2, [r1, #2]
	ldr	r2, [r9, r8, lsl #2]
	ldrh	r2, [r2, lr, lsl #1]
	strb	r2, [r1, #5]
	lsrs	r5, r2, #8
	strb	r5, [r1, #4]
.L104:
	ldr	r2, [sp, #20]
	adds	r4, r4, #1
	mov	r1, r0
	adds	r3, r3, #6
	adds	r0, r0, #6
	cmp	r4, r2
	beq	.L36
	ldr	r5, [sp, #16]
.L105:
	ldrb	r8, [r1, #1]	@ zero_extendqisi2
	ldrb	r2, [r3, #-6]	@ zero_extendqisi2
	ldrh	r10, [r5, #774]
	ldrb	r5, [r1, #3]	@ zero_extendqisi2
	asr	r7, r8, ip
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	add	r8, r8, r2, lsl #8
	ldrb	lr, [r1, #4]	@ zero_extendqisi2
	str	r7, [sp, #12]
	uxth	r8, r8
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	asr	fp, r5, ip
	cmp	r10, r8
	asr	r8, r7, ip
	bne	.L103
	ldr	r10, [sp, #16]
	add	r5, r5, r6, lsl #8
	str	r5, [sp, #8]
	uxth	r5, r5
	ldrh	r10, [r10, #776]
	cmp	r10, r5
	bne	.L103
	ldr	r10, [sp, #16]
	add	r7, r7, lr, lsl #8
	uxth	r7, r7
	ldrh	r5, [r10, #778]
	cmp	r5, r7
	bne	.L103
	ldrh	r2, [r10, #694]
	lsrs	r2, r2, #8
	strb	r2, [r3, #-6]
	ldrh	r2, [r10, #694]
	strb	r2, [r1, #1]
	ldrh	r2, [r10, #696]
	lsrs	r2, r2, #8
	strb	r2, [r1, #2]
	ldrh	r2, [r10, #696]
	strb	r2, [r1, #3]
	ldrh	r2, [r10, #698]
	lsrs	r2, r2, #8
	strb	r2, [r1, #4]
	ldrh	r2, [r10, #698]
	strb	r2, [r1, #5]
	b	.L104
.L38:
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #15
	bhi	.L36
	adr	lr, .L44
	ldr	r0, [lr, r3, lsl #2]
	add	lr, lr, r0
	bx	lr
	.p2align 2
.L44:
	.word	.L43+1-.L44
	.word	.L45+1-.L44
	.word	.L36+1-.L44
	.word	.L46+1-.L44
	.word	.L36+1-.L44
	.word	.L36+1-.L44
	.word	.L36+1-.L44
	.word	.L47+1-.L44
	.word	.L36+1-.L44
	.word	.L36+1-.L44
	.word	.L36+1-.L44
	.word	.L36+1-.L44
	.word	.L36+1-.L44
	.word	.L36+1-.L44
	.word	.L36+1-.L44
	.word	.L48+1-.L44
.L243:
	cmp	r4, #0
	beq	.L245
	cmp	r10, #0
	beq	.L36
	add	lr, r10, r10, lsl #1
	adds	r3, r1, #3
	mov	r0, r3
	add	lr, lr, r1
	b	.L98
.L96:
	ldrb	r5, [r4, r5]	@ zero_extendqisi2
	strb	r5, [r0, #-3]
	ldrb	r5, [r4, r6]	@ zero_extendqisi2
	strb	r5, [r1, #1]
	ldrb	r5, [r4, r7]	@ zero_extendqisi2
	strb	r5, [r1, #2]
.L97:
	cmp	r3, lr
	mov	r1, r3
	add	r0, r0, #3
	add	r3, r3, #3
	beq	.L36
.L98:
	ldrh	r6, [r2, #774]
	ldrb	r5, [r0, #-3]	@ zero_extendqisi2
	cmp	r6, r5
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	it	ne
	ldrbne	r7, [r1, #2]	@ zero_extendqisi2
	bne	.L96
	ldrh	r7, [r2, #776]
	cmp	r7, r6
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	bne	.L96
	ldrh	ip, [r2, #778]
	cmp	ip, r7
	bne	.L96
	ldrh	r5, [r2, #694]
	strb	r5, [r0, #-3]
	ldrh	r5, [r2, #696]
	strb	r5, [r1, #1]
	ldrh	r5, [r2, #698]
	strb	r5, [r1, #2]
	b	.L97
.L240:
	cmp	r5, #0
	it	ne
	cmpne	r6, #0
	beq	.L111
	cmp	r4, #0
	beq	.L111
	cmp	r10, #0
	beq	.L36
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L112
	adds	r1, r1, #2
	movs	r0, #0
	b	.L116
.L246:
	ldrh	lr, [r2, #710]
	ldrb	r7, [r1, #-2]	@ zero_extendqisi2
	smulbb	r6, lr, r6
	ldrb	r7, [r5, r7]	@ zero_extendqisi2
	adds	r6, r6, #128
	mla	r3, r7, r3, r6
	uxth	r3, r3
	add	r3, r3, r3, lsr #8
	asrs	r3, r3, #8
	strb	r3, [r1, #-2]
.L115:
	adds	r0, r0, #1
	adds	r1, r1, #2
	cmp	r0, r10
	beq	.L36
.L116:
	ldrb	r3, [r1, #-1]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L113
	rsb	r6, r3, #255
	cmp	r3, #0
	bne	.L246
	ldrh	r3, [r2, #700]
	strb	r3, [r1, #-2]
	b	.L115
.L237:
	cmp	r5, #0
	it	ne
	cmpne	r6, #0
	beq	.L138
	cmp	r4, #0
	beq	.L138
	cmp	r10, #0
	beq	.L36
	adds	r3, r1, #4
	mov	r9, r4
	mov	lr, #0
	mov	r7, r3
	ldr	r4, [sp, #12]
	b	.L148
.L248:
	ldrh	r0, [r2, #694]
	strb	r0, [r7, #-4]
	ldrh	r0, [r2, #696]
	strb	r0, [r1, #1]
	ldrh	r0, [r2, #698]
	strb	r0, [r1, #2]
.L140:
	add	lr, lr, #1
	adds	r7, r7, #4
	cmp	lr, r10
	mov	r1, r3
	beq	.L36
	adds	r3, r3, #4
.L148:
	ldrb	r0, [r1, #3]	@ zero_extendqisi2
	cmp	r0, #255
	beq	.L247
	cmp	r0, #0
	beq	.L248
	ldrh	r8, [r2, #704]
	rsb	ip, r0, #255
	ldrb	fp, [r7, #-4]	@ zero_extendqisi2
	uxth	ip, ip
	ldrb	fp, [r5, fp]	@ zero_extendqisi2
	smulbb	r8, r8, ip
	add	r8, r8, #128
	mla	r8, fp, r0, r8
	uxth	r8, r8
	add	r8, r8, r8, lsr #8
	asr	r8, r8, #8
	uxtb	r8, r8
	cbnz	r4, .L143
	ldrb	r8, [r6, r8]	@ zero_extendqisi2
.L143:
	strb	r8, [r7, #-4]
	ldrh	r8, [r2, #706]
	ldrb	fp, [r1, #1]	@ zero_extendqisi2
	smulbb	r8, r8, ip
	ldrb	fp, [r5, fp]	@ zero_extendqisi2
	add	r8, r8, #128
	mla	r8, fp, r0, r8
	uxth	r8, r8
	add	r8, r8, r8, lsr #8
	asr	r8, r8, #8
	uxtb	r8, r8
	cbnz	r4, .L145
	ldrb	r8, [r6, r8]	@ zero_extendqisi2
.L145:
	strb	r8, [r1, #1]
	ldrh	fp, [r2, #708]
	ldrb	r8, [r1, #2]	@ zero_extendqisi2
	smulbb	ip, fp, ip
	ldrb	r8, [r5, r8]	@ zero_extendqisi2
	add	ip, ip, #128
	mla	r0, r8, r0, ip
	uxth	r0, r0
	add	r0, r0, r0, lsr #8
	asrs	r0, r0, #8
	uxtb	r0, r0
	cbnz	r4, .L147
	ldrb	r0, [r6, r0]	@ zero_extendqisi2
.L147:
	strb	r0, [r1, #2]
	b	.L140
.L238:
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [r0, #-8]	@ zero_extendqisi2
	asr	r3, r3, ip
	ldr	r3, [r9, r3, lsl #2]
	ldrh	r3, [r3, r5, lsl #1]
	lsrs	r5, r3, #8
	strb	r5, [r0, #-8]
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	strb	r3, [r1, #1]
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	asr	r6, r6, ip
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	ldr	r6, [r9, r6, lsl #2]
	asr	r5, r5, ip
	ldrh	r6, [r6, r7, lsl #1]
	strb	r6, [r1, #3]
	lsrs	r6, r6, #8
	strb	r6, [r1, #2]
	ldr	r5, [r9, r5, lsl #2]
	ldrh	r3, [r5, r3, lsl #1]
	strb	r3, [r1, #5]
	lsrs	r3, r3, #8
	strb	r3, [r1, #4]
	b	.L156
.L241:
	ldrb	r0, [r1, #1]	@ zero_extendqisi2
	ldr	r9, [sp, #20]
	ldrb	r7, [r4, #-4]	@ zero_extendqisi2
	asr	r0, r0, ip
	ldr	r0, [r9, r0, lsl #2]
	ldrh	r0, [r0, r7, lsl #1]
	lsrs	r7, r0, #8
	strb	r7, [r4, #-4]
	strb	r0, [r1, #1]
	b	.L128
.L154:
	add	fp, r1, #8
	movs	r4, #0
	mov	r0, fp
	cmp	r10, #0
	bne	.L164
	b	.L36
.L249:
	ldrh	r3, [r2, #694]
	lsrs	r3, r3, #8
	strb	r3, [r0, #-8]
	ldrh	r3, [r2, #694]
	strb	r3, [r1, #1]
	ldrh	r3, [r2, #696]
	lsrs	r3, r3, #8
	strb	r3, [r1, #2]
	ldrh	r3, [r2, #696]
	strb	r3, [r1, #3]
	ldrh	r3, [r2, #698]
	lsrs	r3, r3, #8
	strb	r3, [r1, #4]
	ldrh	r3, [r2, #698]
	strb	r3, [r1, #5]
.L163:
	adds	r4, r4, #1
	mov	r1, fp
	cmp	r4, r10
	add	r0, r0, #8
	add	fp, fp, #8
	beq	.L36
.L164:
	ldrb	r5, [r1, #6]	@ zero_extendqisi2
	ldrb	r3, [r1, #7]	@ zero_extendqisi2
	add	r3, r3, r5, lsl #8
	uxth	r3, r3
	cmp	r3, #0
	beq	.L249
	movw	r9, #65535
	rsb	r5, r3, #65280
	cmp	r3, r9
	add	r5, r5, #255
	beq	.L163
	ldrb	lr, [r0, #-8]	@ zero_extendqisi2
	ldrh	r8, [r2, #694]
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrb	r9, [r1, #2]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	mul	r8, r8, r5
	ldrb	ip, [r1, #4]	@ zero_extendqisi2
	add	r7, r7, lr, lsl #8
	ldrb	lr, [r1, #5]	@ zero_extendqisi2
	uxth	r7, r7
	add	r6, r6, r9, lsl #8
	mla	r7, r3, r7, r8
	add	lr, lr, ip, lsl #8
	uxth	r6, r6
	add	r7, r7, #32768
	uxth	lr, lr
	add	r7, r7, r7, lsr #16
	mul	r6, r3, r6
	lsrs	r7, r7, #16
	mul	r3, r3, lr
	lsr	lr, r7, #8
	add	r6, r6, #32768
	strb	lr, [r0, #-8]
	add	r3, r3, #32768
	strb	r7, [r1, #1]
	ldrh	r7, [r2, #696]
	mla	r6, r7, r5, r6
	add	r6, r6, r6, lsr #16
	lsrs	r6, r6, #16
	lsrs	r7, r6, #8
	strb	r6, [r1, #3]
	strb	r7, [r1, #2]
	ldrh	r6, [r2, #698]
	mla	r5, r6, r5, r3
	add	r5, r5, r5, lsr #16
	lsrs	r5, r5, #16
	lsrs	r3, r5, #8
	strb	r5, [r1, #5]
	strb	r3, [r1, #4]
	b	.L163
.L126:
	adds	r3, r1, #4
	movs	r5, #0
	mov	r4, r3
	movw	r7, #65535
	cmp	r10, #0
	bne	.L134
	b	.L36
.L250:
	ldrh	r0, [r2, #700]
	lsrs	r0, r0, #8
	strb	r0, [r4, #-4]
	ldrh	r0, [r2, #700]
	strb	r0, [r1, #1]
.L133:
	adds	r5, r5, #1
	mov	r1, r3
	cmp	r5, r10
	add	r4, r4, #4
	add	r3, r3, #4
	beq	.L36
.L134:
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	ldrb	r0, [r1, #3]	@ zero_extendqisi2
	add	r0, r0, r6, lsl #8
	uxth	r0, r0
	cmp	r0, #0
	beq	.L250
	cmp	r0, r7
	rsb	r6, r0, #65280
	add	r6, r6, #255
	beq	.L133
	ldrb	r8, [r4, #-4]	@ zero_extendqisi2
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
	ldrh	lr, [r2, #700]
	add	ip, ip, r8, lsl #8
	uxth	ip, ip
	mul	r0, r0, ip
	add	r0, r0, #32768
	mla	r0, lr, r6, r0
	add	r0, r0, r0, lsr #16
	lsrs	r0, r0, #16
	lsrs	r6, r0, #8
	strb	r6, [r4, #-4]
	strb	r0, [r1, #1]
	b	.L133
.L43:
	cmp	r10, #0
	beq	.L36
	movs	r3, #7
	movs	r0, #0
	movw	r7, #32639
.L54:
	ldrb	r4, [r1]	@ zero_extendqisi2
	ldrh	r5, [r2, #780]
	asr	r6, r4, r3
	and	r6, r6, #1
	cmp	r6, r5
	beq	.L251
	cbnz	r3, .L51
.L252:
	adds	r1, r1, #1
	movs	r3, #7
.L52:
	adds	r0, r0, #1
	cmp	r0, r10
	bne	.L54
	b	.L36
.L251:
	ldrh	r5, [r2, #700]
	rsb	r6, r3, #7
	asr	r6, r7, r6
	ands	r4, r4, r6
	lsls	r5, r5, r3
	orrs	r4, r4, r5
	strb	r4, [r1]
	cmp	r3, #0
	beq	.L252
.L51:
	subs	r3, r3, #1
	b	.L52
.L45:
	cmp	r4, #0
	beq	.L253
	cmp	r10, #0
	beq	.L36
	movs	r3, #6
	movs	r6, #0
	movw	ip, #16191
	b	.L61
.L254:
	adds	r1, r1, #1
	movs	r3, #6
.L60:
	adds	r6, r6, #1
	cmp	r6, r10
	beq	.L36
.L61:
	ldrb	r5, [r1]	@ zero_extendqisi2
	rsb	r0, r3, #6
	asr	r0, ip, r0
	ldrh	lr, [r2, #780]
	and	r8, r0, r5
	asr	r0, r5, r3
	and	r0, r0, #3
	lsls	r7, r0, #4
	cmp	r0, lr
	it	eq
	moveq	r5, r8
	orr	r7, r7, r0, lsl #2
	iteet	eq
	ldrheq	r0, [r2, #700]
	orrne	r7, r7, r0
	orrne	r0, r7, r0, lsl #6
	lsleq	r0, r0, r3
	itett	ne
	ldrbne	r0, [r4, r0]	@ zero_extendqisi2
	orreq	r0, r0, r5
	lsrne	r0, r0, #6
	lslne	r0, r0, r3
	it	ne
	orrne	r0, r0, r8
	uxtb	r0, r0
	strb	r0, [r1]
	cmp	r3, #0
	beq	.L254
	subs	r3, r3, #2
	b	.L60
.L46:
	cmp	r4, #0
	beq	.L255
	cmp	r10, #0
	beq	.L36
	movs	r3, #4
	movs	r6, #0
	movw	lr, #3855
	b	.L72
.L256:
	adds	r1, r1, #1
	movs	r3, #4
.L71:
	adds	r6, r6, #1
	cmp	r6, r10
	beq	.L36
.L72:
	ldrb	r5, [r1]	@ zero_extendqisi2
	rsb	r0, r3, #4
	asr	r0, lr, r0
	ldrh	r7, [r2, #780]
	and	ip, r0, r5
	asr	r0, r5, r3
	and	r0, r0, #15
	orr	r8, r0, r0, lsl #4
	cmp	r0, r7
	ittet	eq
	ldrheq	r0, [r2, #700]
	moveq	r5, ip
	ldrbne	r0, [r4, r8]	@ zero_extendqisi2
	lsleq	r0, r0, r3
	itett	ne
	lsrne	r0, r0, #4
	orreq	r0, r0, r5
	lslne	r0, r0, r3
	orrne	r0, r0, ip
	uxtb	r0, r0
	strb	r0, [r1]
	cmp	r3, #0
	beq	.L256
	subs	r3, r3, #4
	b	.L71
.L48:
	cmp	r9, #0
	beq	.L257
	cmp	r10, #0
	beq	.L36
	adds	r0, r1, #2
	movs	r4, #0
	mov	r3, r0
.L88:
	ldrb	r6, [r3, #-2]	@ zero_extendqisi2
	adds	r4, r4, #1
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	adds	r3, r3, #2
	ldrh	r7, [r2, #780]
	asr	lr, r5, ip
	add	r5, r5, r6, lsl #8
	uxth	r5, r5
	cmp	r7, r5
	itete	ne
	ldrne	r5, [r9, lr, lsl #2]
	ldrheq	r5, [r2, #700]
	ldrhne	r5, [r5, r6, lsl #1]
	lsreq	r5, r5, #8
	iteet	ne
	lsrne	r6, r5, #8
	strbeq	r5, [r3, #-4]
	ldrheq	r5, [r2, #700]
	strbne	r6, [r3, #-4]
	cmp	r4, r10
	strb	r5, [r1, #1]
	mov	r1, r0
	add	r0, r0, #2
	bne	.L88
	b	.L36
.L138:
	adds	r3, r1, #4
	movs	r5, #0
	mov	r4, r3
	cmp	r10, #0
	bne	.L151
	b	.L36
.L258:
	ldrh	r0, [r2, #694]
	strb	r0, [r4, #-4]
	ldrh	r0, [r2, #696]
	strb	r0, [r1, #1]
	ldrh	r0, [r2, #698]
	strb	r0, [r1, #2]
.L150:
	adds	r5, r5, #1
	mov	r1, r3
	cmp	r5, r10
	add	r4, r4, #4
	add	r3, r3, #4
	beq	.L36
.L151:
	ldrb	r0, [r1, #3]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L258
	cmp	r0, #255
	rsb	r6, r0, #255
	uxth	r6, r6
	beq	.L150
	ldrh	r7, [r2, #694]
	ldrb	lr, [r4, #-4]	@ zero_extendqisi2
	smulbb	r7, r7, r6
	mla	r7, lr, r0, r7
	adds	r7, r7, #128
	uxth	r7, r7
	add	r7, r7, r7, lsr #8
	asrs	r7, r7, #8
	strb	r7, [r4, #-4]
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	ldrh	lr, [r2, #696]
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	smulbb	r7, r7, r0
	smulbb	r0, ip, r0
	adds	r7, r7, #128
	smlabb	r7, lr, r6, r7
	adds	r0, r0, #128
	uxth	r7, r7
	add	r7, r7, r7, lsr #8
	asrs	r7, r7, #8
	strb	r7, [r1, #1]
	ldrh	r7, [r2, #698]
	smlabb	r6, r7, r6, r0
	uxth	r6, r6
	add	r6, r6, r6, lsr #8
	asrs	r6, r6, #8
	strb	r6, [r1, #2]
	b	.L150
.L111:
	adds	r1, r1, #2
	movs	r0, #0
	cmp	r10, #0
	bne	.L123
	b	.L36
.L259:
	ldrh	r3, [r2, #700]
	strb	r3, [r1, #-2]
.L122:
	adds	r0, r0, #1
	adds	r1, r1, #2
	cmp	r0, r10
	beq	.L36
.L123:
	ldrb	r3, [r1, #-1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L259
	cmp	r3, #255
	rsb	r4, r3, #255
	beq	.L122
	ldrb	r6, [r1, #-2]	@ zero_extendqisi2
	ldrsh	r5, [r2, #700]
	smulbb	r3, r6, r3
	adds	r3, r3, #128
	mla	r3, r5, r4, r3
	uxth	r3, r3
	add	r3, r3, r3, lsr #8
	asrs	r3, r3, #8
	strb	r3, [r1, #-2]
	b	.L122
.L245:
	add	r6, r10, r10, lsl #1
	adds	r3, r1, #3
	mov	r0, r3
	add	r6, r6, r1
	cmp	r10, #0
	bne	.L100
	b	.L36
.L99:
	cmp	r3, r6
	mov	r1, r3
	add	r0, r0, #3
	add	r3, r3, #3
	beq	.L36
.L100:
	ldrb	r5, [r0, #-3]	@ zero_extendqisi2
	ldrh	r4, [r2, #774]
	cmp	r5, r4
	bne	.L99
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrh	r4, [r2, #776]
	cmp	r5, r4
	bne	.L99
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	ldrh	r4, [r2, #778]
	cmp	r5, r4
	bne	.L99
	ldrh	r4, [r2, #694]
	strb	r4, [r0, #-3]
	ldrh	r4, [r2, #696]
	strb	r4, [r1, #1]
	ldrh	r4, [r2, #698]
	strb	r4, [r1, #2]
	b	.L99
.L247:
	ldrb	r0, [r7, #-4]	@ zero_extendqisi2
	ldrb	r0, [r9, r0]	@ zero_extendqisi2
	strb	r0, [r7, #-4]
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	ldrb	ip, [r9, ip]	@ zero_extendqisi2
	strb	ip, [r1, #1]
	ldrb	r0, [r9, r0]	@ zero_extendqisi2
	strb	r0, [r1, #2]
	b	.L140
.L113:
	ldrb	r3, [r1, #-2]	@ zero_extendqisi2
	ldrb	r3, [r4, r3]	@ zero_extendqisi2
	strb	r3, [r1, #-2]
	b	.L115
.L244:
	adds	r0, r1, #6
	mov	r4, r9
	mov	r3, r0
	cmp	r10, #0
	bne	.L107
	b	.L36
.L106:
	cmp	r4, r10
	mov	r1, r0
	add	r3, r3, #6
	add	r0, r0, #6
	beq	.L36
.L107:
	ldrb	r7, [r3, #-6]	@ zero_extendqisi2
	adds	r4, r4, #1
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	ldrh	r6, [r2, #774]
	ldrb	ip, [r1, #2]	@ zero_extendqisi2
	ldrb	lr, [r1, #3]	@ zero_extendqisi2
	add	r5, r5, r7, lsl #8
	ldrb	r8, [r1, #4]	@ zero_extendqisi2
	ldrb	r7, [r1, #5]	@ zero_extendqisi2
	uxth	r5, r5
	cmp	r6, r5
	bne	.L106
	add	lr, lr, ip, lsl #8
	ldrh	r5, [r2, #776]
	uxth	lr, lr
	cmp	r5, lr
	bne	.L106
	add	r5, r7, r8, lsl #8
	ldrh	r6, [r2, #778]
	uxth	r5, r5
	cmp	r6, r5
	bne	.L106
	ldrh	r5, [r2, #694]
	lsrs	r5, r5, #8
	strb	r5, [r3, #-6]
	ldrh	r5, [r2, #694]
	strb	r5, [r1, #1]
	ldrh	r5, [r2, #696]
	lsrs	r5, r5, #8
	strb	r5, [r1, #2]
	ldrh	r5, [r2, #696]
	strb	r5, [r1, #3]
	ldrh	r5, [r2, #698]
	lsrs	r5, r5, #8
	strb	r5, [r1, #4]
	ldrh	r5, [r2, #698]
	strb	r5, [r1, #5]
	b	.L106
.L112:
	mov	r9, r3
	adds	r1, r1, #2
	b	.L120
.L261:
	ldrh	r3, [r2, #700]
	strb	r3, [r1, #-2]
.L118:
	add	r9, r9, #1
	adds	r1, r1, #2
	cmp	r9, r10
	beq	.L36
.L120:
	ldrb	r3, [r1, #-1]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L260
	rsb	r0, r3, #255
	cmp	r3, #0
	beq	.L261
	ldrh	lr, [r2, #710]
	ldrb	r7, [r1, #-2]	@ zero_extendqisi2
	smulbb	r0, lr, r0
	ldrb	r7, [r5, r7]	@ zero_extendqisi2
	adds	r0, r0, #128
	mla	r3, r7, r3, r0
	uxth	r3, r3
	add	r3, r3, r3, lsr #8
	ubfx	r3, r3, #8, #8
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	strb	r3, [r1, #-2]
	b	.L118
.L260:
	ldrb	r3, [r1, #-2]	@ zero_extendqisi2
	ldrb	r3, [r4, r3]	@ zero_extendqisi2
	strb	r3, [r1, #-2]
	b	.L118
.L255:
	movs	r3, #4
	movw	r7, #3855
	cmp	r10, #0
	beq	.L36
.L76:
	ldrb	r0, [r1]	@ zero_extendqisi2
	ldrh	r5, [r2, #780]
	asr	r6, r0, r3
	and	r6, r6, #15
	cmp	r6, r5
	beq	.L262
.L73:
	cbnz	r3, .L74
	adds	r1, r1, #1
	movs	r3, #4
.L75:
	adds	r4, r4, #1
	cmp	r4, r10
	bne	.L76
	b	.L36
.L262:
	ldrh	r5, [r2, #700]
	rsb	r6, r3, #4
	asr	r6, r7, r6
	ands	r0, r0, r6
	lsls	r5, r5, r3
	orrs	r0, r0, r5
	strb	r0, [r1]
	b	.L73
.L74:
	subs	r3, r3, #4
	b	.L75
.L253:
	movs	r3, #6
	movw	r7, #16191
	cmp	r10, #0
	beq	.L36
.L65:
	ldrb	r0, [r1]	@ zero_extendqisi2
	ldrh	r5, [r2, #780]
	asr	r6, r0, r3
	and	r6, r6, #3
	cmp	r6, r5
	beq	.L263
.L62:
	cbnz	r3, .L63
	adds	r1, r1, #1
	movs	r3, #6
.L64:
	adds	r4, r4, #1
	cmp	r4, r10
	bne	.L65
	b	.L36
.L263:
	ldrh	r5, [r2, #700]
	rsb	r6, r3, #6
	asr	r6, r7, r6
	ands	r0, r0, r6
	lsls	r5, r5, r3
	orrs	r0, r0, r5
	strb	r0, [r1]
	b	.L62
.L63:
	subs	r3, r3, #2
	b	.L64
.L236:
	add	r4, r1, r10
	cmp	r10, #0
	beq	.L36
.L83:
	ldrb	r3, [r1], #1	@ zero_extendqisi2
	ldrh	r0, [r2, #780]
	cmp	r0, r3
	itt	eq
	ldrheq	r3, [r2, #700]
	strbeq	r3, [r1, #-1]
	cmp	r1, r4
	bne	.L83
	b	.L36
.L257:
	adds	r1, r1, #2
	mov	r3, r9
	cmp	r10, #0
	beq	.L36
.L90:
	ldrb	r5, [r1, #-2]	@ zero_extendqisi2
	adds	r3, r3, #1
	ldrb	r0, [r1, #-1]	@ zero_extendqisi2
	adds	r1, r1, #2
	ldrh	r4, [r2, #780]
	add	r0, r0, r5, lsl #8
	uxth	r0, r0
	cmp	r4, r0
	itttt	eq
	ldrheq	r0, [r2, #700]
	lsreq	r0, r0, #8
	strbeq	r0, [r1, #-4]
	ldrheq	r0, [r2, #700]
	it	eq
	strbeq	r0, [r1, #-3]
	cmp	r3, r10
	bne	.L90
	b	.L36
	.size	png_do_compose, .-png_do_compose
	.section	.text.png_set_crc_action,"ax",%progbits
	.align	2
	.global	png_set_crc_action
	.thumb
	.thumb_func
	.type	png_set_crc_action, %function
png_set_crc_action:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	sub	sp, sp, #8
	cbz	r0, .L264
	subs	r1, r1, #2
	cmp	r1, #3
	bhi	.L266
	tbb	[pc, r1]
.L268:
	.byte	(.L267-.L268)/2
	.byte	(.L269-.L268)/2
	.byte	(.L270-.L268)/2
	.byte	(.L271-.L268)/2
	.align	1
.L267:
	ldr	r1, .L281
	mov	r0, r4
	str	r2, [sp, #4]
.LPIC8:
	add	r1, pc
	bl	png_warning(PLT)
	ldr	r2, [sp, #4]
.L266:
	ldr	r3, [r4, #452]
	bic	r3, r3, #3072
	str	r3, [r4, #452]
.L271:
	subs	r2, r2, #1
	cmp	r2, #4
	bhi	.L272
	tbb	[pc, r2]
.L274:
	.byte	(.L273-.L274)/2
	.byte	(.L272-.L274)/2
	.byte	(.L275-.L274)/2
	.byte	(.L276-.L274)/2
	.byte	(.L264-.L274)/2
	.align	1
.L272:
	ldr	r3, [r4, #452]
	bic	r3, r3, #768
	str	r3, [r4, #452]
.L264:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L270:
	ldr	r3, [r4, #452]
	orr	r3, r3, #3072
	str	r3, [r4, #452]
	b	.L271
.L269:
	ldr	r3, [r4, #452]
	bic	r3, r3, #3072
	orr	r3, r3, #1024
	str	r3, [r4, #452]
	b	.L271
.L273:
	ldr	r3, [r4, #452]
	bic	r3, r3, #768
	orr	r3, r3, #512
	str	r3, [r4, #452]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L275:
	ldr	r3, [r4, #452]
	bic	r3, r3, #768
	orr	r3, r3, #256
	str	r3, [r4, #452]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L276:
	ldr	r3, [r4, #452]
	orr	r3, r3, #768
	str	r3, [r4, #452]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L282:
	.align	2
.L281:
	.word	.LC0-(.LPIC8+4)
	.size	png_set_crc_action, .-png_set_crc_action
	.section	.text.png_set_background_fixed,"ax",%progbits
	.align	2
	.global	png_set_background_fixed
	.thumb
	.thumb_func
	.type	png_set_background_fixed, %function
png_set_background_fixed:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r7, [sp, #20]
	cbz	r0, .L283
	mov	r5, r1
	ldr	r1, [r0, #452]
	mov	r4, r0
	lsls	r6, r1, #25
	bmi	.L296
	orr	r6, r1, #16384
	str	r6, [r0, #452]
	cbz	r5, .L283
	cbz	r2, .L297
	ldr	r0, [r0, #456]
	bic	r1, r1, #8192
	orr	r1, r1, #16384
	add	r6, r4, #692
	str	r1, [r4, #452]
	bic	lr, r0, #8388608
	orr	ip, lr, #262144
	orr	r1, ip, #128
	str	r1, [r4, #456]
	ldr	r1, [r5, #4]	@ unaligned
	ldr	r0, [r5]	@ unaligned
	stmia	r6!, {r0, r1}
	ldrh	r1, [r5, #8]	@ unaligned
	strh	r1, [r6]	@ unaligned
	str	r7, [r4, #688]
	strb	r2, [r4, #686]
	cbnz	r3, .L298
	bic	r3, lr, #256
	orr	r3, r3, #262144
	orr	r3, r3, #128
	str	r3, [r4, #456]
.L283:
	pop	{r4, r5, r6, r7, pc}
.L297:
	ldr	r1, .L299
	pop	{r4, r5, r6, r7, lr}
.LPIC10:
	add	r1, pc
	b	png_warning(PLT)
.L296:
	ldr	r1, .L299+4
	pop	{r4, r5, r6, r7, lr}
.LPIC9:
	add	r1, pc
	b	png_app_error(PLT)
.L298:
	orr	r3, ip, #384
	str	r3, [r4, #456]
	pop	{r4, r5, r6, r7, pc}
.L300:
	.align	2
.L299:
	.word	.LC2-(.LPIC10+4)
	.word	.LC1-(.LPIC9+4)
	.size	png_set_background_fixed, .-png_set_background_fixed
	.section	.text.png_set_background,"ax",%progbits
	.align	2
	.global	png_set_background
	.thumb
	.thumb_func
	.type	png_set_background, %function
png_set_background:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r1
	ldr	r1, .L303
	sub	sp, sp, #12
	mov	r7, r2
	mov	r5, r3
	mov	r6, r0
.LPIC11:
	add	r1, pc
	bl	png_fixed(PLT)
	mov	r1, r4
	str	r0, [sp]
	mov	r2, r7
	mov	r0, r6
	mov	r3, r5
	bl	png_set_background_fixed(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L304:
	.align	2
.L303:
	.word	.LC3-(.LPIC11+4)
	.size	png_set_background, .-png_set_background
	.section	.text.png_set_scale_16,"ax",%progbits
	.align	2
	.global	png_set_scale_16
	.thumb
	.thumb_func
	.type	png_set_scale_16, %function
png_set_scale_16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L305
	ldr	r2, [r0, #452]
	lsls	r1, r2, #25
	bmi	.L312
	ldr	r1, [r0, #456]
	orr	r2, r2, #16384
	str	r2, [r0, #452]
	orr	r1, r1, #67108864
	str	r1, [r0, #456]
.L305:
	bx	lr
.L312:
	ldr	r1, .L313
.LPIC12:
	add	r1, pc
	b	png_app_error(PLT)
.L314:
	.align	2
.L313:
	.word	.LC1-(.LPIC12+4)
	.size	png_set_scale_16, .-png_set_scale_16
	.section	.text.png_set_strip_16,"ax",%progbits
	.align	2
	.global	png_set_strip_16
	.thumb
	.thumb_func
	.type	png_set_strip_16, %function
png_set_strip_16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L315
	ldr	r2, [r0, #452]
	lsls	r1, r2, #25
	bmi	.L322
	ldr	r1, [r0, #456]
	orr	r2, r2, #16384
	str	r2, [r0, #452]
	orr	r1, r1, #1024
	str	r1, [r0, #456]
.L315:
	bx	lr
.L322:
	ldr	r1, .L323
.LPIC13:
	add	r1, pc
	b	png_app_error(PLT)
.L324:
	.align	2
.L323:
	.word	.LC1-(.LPIC13+4)
	.size	png_set_strip_16, .-png_set_strip_16
	.section	.text.png_set_strip_alpha,"ax",%progbits
	.align	2
	.global	png_set_strip_alpha
	.thumb
	.thumb_func
	.type	png_set_strip_alpha, %function
png_set_strip_alpha:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L325
	ldr	r2, [r0, #452]
	lsls	r1, r2, #25
	bmi	.L332
	ldr	r1, [r0, #456]
	orr	r2, r2, #16384
	str	r2, [r0, #452]
	orr	r1, r1, #262144
	str	r1, [r0, #456]
.L325:
	bx	lr
.L332:
	ldr	r1, .L333
.LPIC14:
	add	r1, pc
	b	png_app_error(PLT)
.L334:
	.align	2
.L333:
	.word	.LC1-(.LPIC14+4)
	.size	png_set_strip_alpha, .-png_set_strip_alpha
	.section	.text.png_set_alpha_mode_fixed,"ax",%progbits
	.align	2
	.global	png_set_alpha_mode_fixed
	.thumb
	.thumb_func
	.type	png_set_alpha_mode_fixed, %function
png_set_alpha_mode_fixed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L358
	ldr	r3, [r0, #452]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	lsls	r5, r3, #25
	bmi	.L359
	mov	r5, r2
	movw	r2, #31072
	movt	r2, 65534
	mov	r6, r1
	cmp	r5, #-1
	it	ne
	cmpne	r5, r2
	orr	r1, r3, #16384
	str	r1, [r0, #452]
	beq	.L360
	movw	r3, #15536
	movt	r3, 65535
	cmn	r5, #2
	it	ne
	cmpne	r5, r3
	itt	eq
	movweq	r5, #20652
	movteq	r5, 2
	bne	.L361
.L339:
	mov	r0, r5
	bl	png_reciprocal(PLT)
	cmp	r6, #3
	bhi	.L340
	tbb	[pc, r6]
.L342:
	.byte	(.L341-.L342)/2
	.byte	(.L343-.L342)/2
	.byte	(.L344-.L342)/2
	.byte	(.L345-.L342)/2
	.align	1
.L360:
	orr	r3, r3, #20480
	movw	r5, #23392
	str	r3, [r0, #452]
	movt	r5, 3
	b	.L339
.L345:
	ldr	r1, [r4, #456]
	movs	r3, #1
	ldr	r2, [r4, #452]
	orr	r1, r1, #8388608
	bic	r2, r2, #8192
	str	r1, [r4, #456]
	str	r2, [r4, #452]
.L346:
	ldr	r2, [r4, #1064]
	cbnz	r2, .L347
	ldrh	r2, [r4, #1138]
	str	r0, [r4, #1064]
	orr	r2, r2, #1
	strh	r2, [r4, #1138]	@ movhi
.L347:
	str	r5, [r4, #728]
	cbnz	r3, .L362
.L335:
	pop	{r4, r5, r6, pc}
.L344:
	ldr	r1, [r4, #456]
	movs	r3, #1
	ldr	r2, [r4, #452]
	bic	r1, r1, #8388608
	orr	r2, r2, #8192
	str	r1, [r4, #456]
	str	r2, [r4, #452]
	b	.L346
.L343:
	add	r2, r4, #452
	vldr	d16, .L363
	movs	r3, #1
	movw	r5, #34464
	vld1.32	{d17}, [r2]
	bfi	r5, r3, #16, #16
	vand	d16, d17, d16
	vst1.32	{d16}, [r2]
	b	.L346
.L341:
	add	r2, r4, #452
	vldr	d16, .L363
	movs	r3, #0
	vld1.32	{d17}, [r2]
	vand	d16, d17, d16
	vst1.32	{d16}, [r2]
	b	.L346
.L359:
	ldr	r1, .L363+8
	pop	{r4, r5, r6, lr}
.LPIC15:
	add	r1, pc
	b	png_app_error(PLT)
.L362:
	ldr	r1, [r4, #456]
	movs	r3, #0
	ldr	r0, [r4, #1064]
	movs	r5, #2
	strb	r3, [r4, #692]
	bic	r2, r1, #256
	strb	r3, [r4, #693]
	strb	r3, [r4, #694]
	strb	r3, [r4, #695]
	strb	r3, [r4, #696]
	strb	r3, [r4, #697]
	strb	r3, [r4, #698]
	strb	r3, [r4, #699]
	strb	r3, [r4, #700]
	strb	r3, [r4, #701]
	lsls	r3, r1, #24
	str	r2, [r4, #456]
	it	pl
	orrpl	r2, r2, #128
	str	r0, [r4, #688]
	strb	r5, [r4, #686]
	it	pl
	strpl	r2, [r4, #456]
	bpl	.L335
	ldr	r1, .L363+12
	mov	r0, r4
.LPIC18:
	add	r1, pc
	bl	png_error(PLT)
.L358:
	bx	lr
.L340:
	ldr	r1, .L363+16
	mov	r0, r4
.LPIC17:
	add	r1, pc
	bl	png_error(PLT)
.L361:
	sub	r2, r5, #69632
	movw	r3, #33392
	sub	r2, r2, #368
	movt	r3, 3
	cmp	r2, r3
	bls	.L339
	ldr	r1, .L363+20
.LPIC16:
	add	r1, pc
	bl	png_error(PLT)
.L364:
	.align	3
.L363:
	.word	-8193
	.word	-8388609
	.word	.LC1-(.LPIC15+4)
	.word	.LC6-(.LPIC18+4)
	.word	.LC5-(.LPIC17+4)
	.word	.LC4-(.LPIC16+4)
	.size	png_set_alpha_mode_fixed, .-png_set_alpha_mode_fixed
	.section	.text.png_set_alpha_mode,"ax",%progbits
	.align	2
	.global	png_set_alpha_mode
	.thumb
	.thumb_func
	.type	png_set_alpha_mode, %function
png_set_alpha_mode:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	fldd	d16, .L373
	push	{r3, r4, r5, lr}
	mov	r4, r0
	mov	r5, r1
	fcmped	d0, d16
	fmstat
	fcmpezd	d0
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	cbz	r3, .L366
	fldd	d16, .L373+8
	fmuld	d0, d0, d16
.L366:
	fconstd	d16, #96
	faddd	d0, d0, d16
	bl	floor(PLT)
	fldd	d17, .L373+16
	mov	r0, r4
	fldd	d16, .L373+24
	fcmped	d0, d17
	fmstat
	fcmped	d0, d16
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	it	gt
	orrgt	r3, r3, #1
	cbnz	r3, .L372
	ftosizd	s15, d0
	mov	r1, r5
	pop	{r3, r4, r5, lr}
	fmrs	r2, s15	@ int
	b	png_set_alpha_mode_fixed(PLT)
.L372:
	ldr	r1, .L373+32
.LPIC19:
	add	r1, pc
	bl	png_fixed_error(PLT)
.L374:
	.align	3
.L373:
	.word	0
	.word	1080033280
	.word	0
	.word	1090021888
	.word	-4194304
	.word	-1042284545
	.word	-4194304
	.word	1105199103
	.word	.LC7-(.LPIC19+4)
	.size	png_set_alpha_mode, .-png_set_alpha_mode
	.section	.text.png_set_quantize,"ax",%progbits
	.align	2
	.global	png_set_quantize
	.thumb
	.thumb_func
	.type	png_set_quantize, %function
png_set_quantize:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	str	r2, [sp, #12]
	ldr	r2, [sp, #92]
	str	r1, [sp, #20]
	str	r3, [sp, #16]
	ldr	r4, [sp, #88]
	str	r2, [sp, #28]
	cmp	r0, #0
	beq	.L375
	ldr	r2, [r0, #452]
	mov	r10, r0
	lsls	r3, r2, #25
	bmi	.L518
	ldr	r3, [r0, #456]
	orr	r2, r2, #16384
	str	r2, [r0, #452]
	orr	r3, r3, #64
	str	r3, [r0, #456]
	ldr	r3, [sp, #28]
	cmp	r3, #0
	beq	.L378
.L381:
	ldr	r5, [sp, #12]
	ldr	r6, [sp, #16]
	cmp	r5, r6
	ble	.L380
	mov	r0, r10
	ldr	r1, [sp, #12]
	cmp	r4, #0
	beq	.L383
	bl	png_malloc(PLT)
	ldr	r5, [sp, #12]
	str	r0, [r10, #972]
	cmp	r5, #0
	itt	gt
	movgt	r2, r0
	movgt	r3, #0
	ble	.L387
.L388:
	ldr	r5, [sp, #12]
	strb	r3, [r2, r3]
	adds	r3, r3, #1
	cmp	r3, r5
	beq	.L387
	ldr	r2, [r10, #972]
	b	.L388
.L522:
	mov	ip, r5
	ldr	r5, [sp, #40]
.L421:
	adds	r6, r6, #3
	cmp	r4, #0
	bne	.L425
	mov	r9, r10
	mov	r10, ip
.L423:
	movs	r4, #0
.L427:
	mov	r5, r9
.L443:
	ldr	r1, [r5], #4
	cbz	r1, .L440
.L441:
	ldr	r4, [r1]
	mov	r0, r10
	bl	png_free(PLT)
	mov	r1, r4
	cmp	r4, #0
	bne	.L441
.L440:
	ldr	r7, [sp, #36]
	movs	r6, #0
	str	r6, [r5, #-4]
	cmp	r5, r7
	bne	.L443
	ldr	r3, [sp, #16]
	ldr	r2, [sp, #24]
	cmp	fp, r3
	add	r2, r2, #96
	str	r2, [sp, #24]
	bgt	.L418
	mov	r1, r9
	mov	r0, r10
	str	r3, [sp, #12]
	bl	png_free(PLT)
	mov	r0, r10
	ldr	r1, [r10, #980]
	bl	png_free(PLT)
	mov	r0, r10
	ldr	r1, [r10, #976]
	bl	png_free(PLT)
	str	r6, [r10, #980]
	str	r6, [r10, #976]
.L380:
	ldr	r3, [r10, #656]
	cbnz	r3, .L445
	ldr	r5, [sp, #20]
	str	r5, [r10, #656]
.L445:
	ldr	r7, [sp, #28]
	ldr	r6, [sp, #12]
	strh	r6, [r10, #660]	@ movhi
	cmp	r7, #0
	bne	.L519
.L375:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L387:
	ldr	r6, [sp, #12]
	ldr	r2, [sp, #16]
	subs	r3, r6, #1
	cmp	r2, r3
	bgt	.L386
.L391:
	cmp	r3, #0
	ble	.L386
	movs	r2, #0
	movs	r5, #1
.L394:
	ldr	r0, [r10, #972]
	adds	r1, r2, #1
	ldrb	r6, [r0, r2]	@ zero_extendqisi2
	ldrb	r7, [r0, r1]	@ zero_extendqisi2
	ldrh	ip, [r4, r6, lsl #1]
	ldrh	lr, [r4, r7, lsl #1]
	cmp	ip, lr
	itttt	cc
	strbcc	r7, [r0, r2]
	movcc	r5, #0
	ldrcc	r2, [r10, #972]
	strbcc	r6, [r2, r1]
	cmp	r1, r3
	mov	r2, r1
	bne	.L394
	cbnz	r5, .L386
	ldr	r2, [sp, #16]
	subs	r3, r3, #1
	cmp	r2, r3
	ble	.L391
.L386:
	ldr	r6, [sp, #28]
	cmp	r6, #0
	beq	.L520
	ldr	r6, [sp, #16]
	cmp	r6, #0
	ble	.L517
	ldr	r1, [r10, #972]
	mov	r4, r6
	ldr	r0, [sp, #20]
	movs	r3, #0
	ldr	r2, [sp, #12]
.L403:
	ldrb	r5, [r1, r3]	@ zero_extendqisi2
	cmp	r4, r5
	bgt	.L400
	add	r1, r1, r2
.L402:
	ldrb	r5, [r1, #-1]!	@ zero_extendqisi2
	subs	r2, r2, #1
	cmp	r4, r5
	ble	.L402
	add	r5, r2, r2, lsl #1
	add	r1, r3, r3, lsl #1
	add	r5, r5, r0
	adds	r6, r0, r1
	ldrh	r7, [r5]	@ unaligned
	ldrb	r5, [r5, #2]	@ zero_extendqisi2
	strh	r7, [r0, r1]	@ unaligned
	strb	r5, [r6, #2]
	ldr	r1, [r10, #972]
.L400:
	adds	r3, r3, #1
	cmp	r3, r4
	bne	.L403
.L399:
	mov	r0, r10
	bl	png_free(PLT)
	ldr	r6, [sp, #16]
	movs	r3, #0
	str	r3, [r10, #972]
	str	r6, [sp, #12]
	b	.L380
.L383:
	bl	png_malloc(PLT)
	ldr	r1, [sp, #12]
	str	r0, [r10, #976]
	mov	r0, r10
	bl	png_malloc(PLT)
	ldr	r5, [sp, #12]
	str	r0, [r10, #980]
	cmp	r5, #0
	ble	.L419
.L420:
	ldr	r2, [r10, #976]
	uxtb	r3, r4
	strb	r3, [r2, r4]
	ldr	r2, [r10, #980]
	strb	r3, [r2, r4]
	adds	r4, r4, #1
	cmp	r4, r5
	bne	.L420
.L419:
	mov	r0, r10
	movw	r1, #3076
	bl	png_calloc(PLT)
	ldr	fp, [sp, #12]
	mov	r9, r0
	movs	r4, #0
	addw	r6, r0, #3076
	movs	r7, #96
	str	r6, [sp, #36]
	str	r7, [sp, #24]
.L418:
	ldr	r6, [sp, #20]
	add	r5, fp, #-1
	str	r5, [sp, #32]
	mov	ip, r10
	movs	r5, #0
	mov	r10, r9
.L425:
	ldr	r7, [sp, #32]
	cmp	r5, r7
	bge	.L521
	adds	r5, r5, #1
	cmp	r5, fp
	bge	.L421
	mov	r8, r5
	subs	r2, r5, #1
	str	r5, [sp, #40]
	mov	r7, r6
	mov	r5, ip
	b	.L424
.L422:
	add	r8, r8, #1
	cmp	r8, fp
	beq	.L522
.L424:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	adds	r7, r7, #3
	ldrb	r9, [r6]	@ zero_extendqisi2
	ldrb	r1, [r7, #1]	@ zero_extendqisi2
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	rsb	r9, r3, r9
	ldrb	r0, [r6, #2]	@ zero_extendqisi2
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r9, #0
	rsb	r1, r1, lr
	it	lt
	rsblt	r9, r9, #0
	cmp	r1, #0
	sub	r3, r0, r3
	it	lt
	rsblt	r1, r1, #0
	cmp	r3, #0
	add	r9, r9, r1
	it	lt
	rsblt	r3, r3, #0
	add	r9, r9, r3
	ldr	r3, [sp, #24]
	cmp	r9, r3
	bgt	.L422
	mov	r0, r5
	movs	r1, #8
	str	r2, [sp, #8]
	bl	png_malloc_warn(PLT)
	ldr	r2, [sp, #8]
	mov	r4, r0
	cmp	r0, #0
	beq	.L513
	ldr	r3, [r10, r9, lsl #2]
	strb	r2, [r0, #4]
	strb	r8, [r0, #5]
	str	r3, [r0]
	str	r0, [r10, r9, lsl #2]
	b	.L422
.L378:
	ldr	r1, [sp, #12]
	bl	png_malloc(PLT)
	ldr	r5, [sp, #12]
	str	r0, [r10, #856]
	cmp	r5, #0
	ble	.L381
	ldr	r3, [sp, #28]
	mov	r2, r0
.L382:
	ldr	r6, [sp, #12]
	strb	r3, [r2, r3]
	adds	r3, r3, #1
	cmp	r3, r6
	beq	.L381
	ldr	r2, [r10, #856]
	b	.L382
.L519:
	mov	r1, #32768
	mov	r0, r10
	bl	png_calloc(PLT)
	mov	r1, #32768
	str	r0, [r10, #852]
	mov	r0, r10
	bl	png_malloc(PLT)
	movs	r1, #255
	mov	r2, #32768
	mov	r7, r0
	bl	memset(PLT)
	cmp	r6, #0
	ble	.L461
	ldr	lr, [sp, #12]
	movs	r0, #0
	mov	r8, r0
	mov	r9, r0
	str	r0, [sp, #24]
	add	lr, lr, lr, lsl #1
	str	lr, [sp, #36]
.L462:
	ldr	r1, [sp, #24]
	movs	r6, #0
	ldr	r3, [sp, #20]
	ldr	r5, [sp, #20]
	str	r6, [sp, #28]
	add	r3, r3, r1
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	ldrb	r1, [r5, r1]	@ zero_extendqisi2
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	lsrs	r0, r0, #3
	lsrs	r1, r1, #3
	lsrs	r2, r2, #3
	str	r1, [sp, #32]
	str	r2, [sp, #12]
.L460:
	ldr	lr, [sp, #32]
	mov	ip, #0
	ldr	r1, [sp, #28]
	cmp	lr, r1
	iteee	lt
	ldrlt	r5, [sp, #28]
	movge	r3, r1
	movge	r2, lr
	movge	r5, r3
	ite	lt
	rsblt	r8, lr, r1
	rsbge	r8, r3, r2
	lsls	r5, r5, #10
	str	r5, [sp, #16]
.L458:
	ldr	r6, [sp, #12]
	movs	r3, #0
	ldr	r1, [sp, #16]
	cmp	r6, ip
	itet	ge
	movge	lr, r6
	rsblt	r5, r6, ip
	rsbge	r5, ip, lr
	orr	lr, r1, ip, lsl #5
	cmp	r5, r8
	add	r6, r8, r5
	it	lt
	movlt	r5, r8
.L456:
	orr	r1, r3, lr
	cmp	r0, r3
	sub	r2, r0, r3
	ldrb	r4, [r7, r1]	@ zero_extendqisi2
	it	lt
	sublt	r2, r3, r0
	adds	r3, r3, #1
	cmp	r2, r5
	ite	ge
	addge	fp, r6, r2
	addlt	fp, r6, r5
	add	r2, r2, fp
	cmp	r2, r4
	ittt	lt
	strblt	r2, [r7, r1]
	ldrlt	r2, [r10, #852]
	strblt	r9, [r2, r1]
	cmp	r3, #32
	bne	.L456
	add	ip, ip, #1
	cmp	ip, #32
	bne	.L458
	ldr	r2, [sp, #28]
	adds	r2, r2, #1
	cmp	r2, #32
	str	r2, [sp, #28]
	bne	.L460
	ldr	r3, [sp, #24]
	add	r9, r9, #1
	ldr	r5, [sp, #36]
	adds	r3, r3, #3
	cmp	r3, r5
	str	r3, [sp, #24]
	bne	.L462
.L461:
	mov	r0, r10
	mov	r1, r7
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_free(PLT)
.L518:
	ldr	r1, .L524
.LPIC36:
	add	r1, pc
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_app_error(PLT)
.L521:
	mov	r9, r10
	mov	r10, ip
	cmp	r4, #0
	beq	.L427
	movs	r6, #0
	sub	lr, r9, #4
	str	lr, [sp, #32]
.L439:
	ldr	r0, [sp, #32]
	ldr	r5, [r0, #4]!
	str	r0, [sp, #32]
	cmp	r5, #0
	beq	.L428
.L438:
	ldr	r3, [r10, #976]
	ldrb	r1, [r5, #4]	@ zero_extendqisi2
	ldrb	r2, [r3, r1]	@ zero_extendqisi2
	cmp	r2, fp
	bge	.L429
	ldrb	ip, [r5, #5]	@ zero_extendqisi2
	ldrb	r2, [r3, ip]	@ zero_extendqisi2
	cmp	r2, fp
	bge	.L429
	tst	fp, #1
	ldr	r7, [sp, #20]
	ite	ne
	movne	r2, r1
	moveq	r2, ip
	add	fp, fp, #-1
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	it	eq
	moveq	ip, r1
	add	r1, fp, fp, lsl #1
	ldr	lr, [sp, #20]
	add	r1, r1, r7
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	add	r3, r3, r3, lsl #1
	ldrh	r7, [r1]	@ unaligned
	ldr	r1, [sp, #20]
	strh	r7, [lr, r3]	@ unaligned
	add	r1, r1, r3
	ldr	r3, [sp, #28]
	strb	r0, [r1, #2]
	cbnz	r3, .L523
	ldr	r7, [sp, #12]
	ldr	r3, [r10, #976]
	cmp	r7, #0
	it	le
	ldrble	r0, [r3, r2]	@ zero_extendqisi2
	ble	.L433
	ldr	r1, [sp, #28]
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	b	.L437
.L435:
	cmp	r7, fp
	ldr	lr, [sp, #12]
	it	eq
	strbeq	r0, [r8]
	add	r1, r1, #1
	itt	eq
	ldreq	r3, [r10, #976]
	ldrbeq	r0, [r3, r2]	@ zero_extendqisi2
	cmp	r1, lr
	beq	.L433
.L437:
	ldr	lr, [r10, #856]
	ldrb	r7, [lr, r1]	@ zero_extendqisi2
	add	r8, lr, r1
	cmp	r7, r0
	bne	.L435
	ldrb	r3, [r3, ip]	@ zero_extendqisi2
	strb	r3, [lr, r1]
	ldr	r0, [r10, #856]
	ldr	r3, [r10, #976]
	ldrb	r7, [r0, r1]	@ zero_extendqisi2
	add	r8, r0, r1
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
	b	.L435
.L523:
	ldr	r3, [r10, #976]
	ldrb	r0, [r3, r2]	@ zero_extendqisi2
.L433:
	ldr	r1, [r10, #980]
	ldrb	r1, [r1, fp]	@ zero_extendqisi2
	strb	r0, [r3, r1]
	ldr	r1, [r10, #980]
	ldr	r3, [r10, #976]
	ldrb	r0, [r1, fp]	@ zero_extendqisi2
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	strb	r0, [r1, r3]
	ldr	r3, [r10, #976]
	strb	fp, [r3, r2]
	ldr	r3, [r10, #980]
	strb	r2, [r3, fp]
.L429:
	ldr	r2, [sp, #16]
	cmp	fp, r2
	ble	.L427
	ldr	r5, [r5]
	cmp	r5, #0
	bne	.L438
.L428:
	ldr	r3, [sp, #24]
	adds	r6, r6, #1
	cmp	r6, r3
	ble	.L439
	b	.L427
.L513:
	mov	r9, r10
	mov	r10, r5
	b	.L423
.L464:
	mov	r10, #0
	movs	r2, #1
.L411:
	ldr	r7, [sp, #20]
	add	r6, r2, r2, lsl #1
	movs	r3, #0
	add	r6, r6, r7
.L414:
	adds	r7, r6, r3
	ldrb	ip, [r6, r3]	@ zero_extendqisi2
	ldrb	lr, [r7, #1]	@ zero_extendqisi2
	adds	r3, r3, #3
	ldrb	r7, [r7, #2]	@ zero_extendqisi2
	rsb	ip, ip, r1
	rsb	lr, lr, r0
	cmp	ip, #0
	sub	r7, r4, r7
	it	lt
	rsblt	ip, ip, #0
	cmp	lr, #0
	it	lt
	rsblt	lr, lr, #0
	cmp	r7, #0
	it	lt
	rsblt	r7, r7, #0
	add	lr, lr, ip
	add	r7, r7, lr
	ldr	lr, [sp, #16]
	cmp	r7, r5
	it	lt
	movlt	r10, r2
	cmp	r5, r7
	add	r2, r2, #1
	it	ge
	movge	r5, r7
	cmp	lr, r2
	bgt	.L414
	uxtb	r10, r10
.L410:
	ldr	r0, [sp, #40]
	strb	r10, [r0]
.L409:
	ldr	r1, [sp, #24]
	ldr	r5, [sp, #12]
	adds	r1, r1, #1
	cmp	r1, r5
	str	r1, [sp, #24]
	bne	.L416
	ldr	r10, [sp, #36]
.L517:
	ldr	r1, [r10, #972]
	b	.L399
.L520:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L407
	ldr	r2, [sp, #20]
	mov	r6, r3
	ldr	r1, [sp, #28]
	ldr	r3, [sp, #12]
	mov	r5, r2
.L408:
	ldr	r0, [r10, #972]
	ldrb	r4, [r0, r1]	@ zero_extendqisi2
	cmp	r6, r4
	bgt	.L404
	add	r0, r0, r3
.L406:
	ldrb	r4, [r0, #-1]!	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r6, r4
	ble	.L406
	add	r4, r3, r3, lsl #1
	ldrh	r9, [r2]	@ unaligned
	ldrb	r8, [r2, #2]	@ zero_extendqisi2
	adds	r0, r5, r4
	ldrb	r7, [r5, r4]	@ zero_extendqisi2
	ldrb	lr, [r0, #2]	@ zero_extendqisi2
	ldrb	ip, [r0, #1]	@ zero_extendqisi2
	strh	r9, [r5, r4]	@ unaligned
	strb	r8, [r0, #2]
	strb	ip, [r2, #1]
	strb	lr, [r2, #2]
	strb	r7, [r2]
	ldr	r0, [r10, #856]
	strb	r1, [r0, r3]
	ldr	r0, [r10, #856]
	strb	r3, [r0, r1]
.L404:
	adds	r1, r1, #1
	adds	r2, r2, #3
	cmp	r1, r6
	bne	.L408
.L407:
	ldr	r5, [sp, #12]
	cmp	r5, #0
	ble	.L517
	ldr	lr, [sp, #16]
	movs	r7, #0
	mov	r1, r7
	str	r7, [sp, #24]
	str	r10, [sp, #36]
	sub	lr, lr, #9
	str	lr, [sp, #44]
.L416:
	ldr	r0, [sp, #36]
	ldr	r2, [r0, #856]
	ldrb	r3, [r2, r1]	@ zero_extendqisi2
	add	r1, r1, r2
	ldr	r2, [sp, #16]
	str	r1, [sp, #40]
	cmp	r2, r3
	bgt	.L409
	ldr	r5, [sp, #20]
	add	r3, r3, r3, lsl #1
	ldr	r7, [sp, #20]
	ldr	r2, [sp, #20]
	ldrb	r6, [r5, #1]	@ zero_extendqisi2
	ldrb	r1, [r7, r3]	@ zero_extendqisi2
	add	r2, r2, r3
	ldrb	r5, [r5]	@ zero_extendqisi2
	ldrb	r0, [r2, #1]	@ zero_extendqisi2
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	subs	r5, r1, r5
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	subs	r2, r0, r6
	cmp	r5, #0
	it	lt
	rsblt	r5, r5, #0
	cmp	r2, #0
	it	lt
	rsblt	r2, r2, #0
	subs	r3, r4, r3
	add	r5, r5, r2
	ldr	r2, [sp, #16]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r2, #1
	add	r5, r5, r3
	ble	.L463
	cmp	r2, #11
	ble	.L464
	mov	r3, r7
	mov	r10, #0
	movs	r2, #1
	movs	r6, #2
	str	r6, [sp, #32]
.L412:
	ldrb	fp, [r3, #3]	@ zero_extendqisi2
	adds	r7, r2, #3
	ldrb	r6, [r3, #4]	@ zero_extendqisi2
	add	lr, r2, #2
	ldrb	ip, [r3, #5]	@ zero_extendqisi2
	rsb	fp, fp, r1
	ldrb	r8, [r3, #6]	@ zero_extendqisi2
	subs	r6, r0, r6
	cmp	fp, #0
	it	lt
	rsblt	fp, fp, #0
	cmp	r6, #0
	it	lt
	rsblt	r6, r6, #0
	rsb	ip, ip, r4
	add	fp, fp, r6
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	cmp	ip, #0
	rsb	r8, r8, r1
	it	lt
	rsblt	ip, ip, #0
	ldrb	r9, [r3, #8]	@ zero_extendqisi2
	add	fp, fp, ip
	cmp	r8, #0
	sub	r6, r0, r6
	it	lt
	rsblt	r8, r8, #0
	ldrb	ip, [r3, #9]	@ zero_extendqisi2
	cmp	fp, r5
	it	lt
	movlt	r10, r2
	cmp	r6, #0
	rsb	r9, r9, r4
	it	lt
	rsblt	r6, r6, #0
	cmp	r5, fp
	it	ge
	movge	r5, fp
	eor	fp, r9, r9, asr #31
	rsb	ip, ip, r1
	str	r7, [sp, #4]
	add	r6, r6, r8
	ldrb	r8, [r3, #10]	@ zero_extendqisi2
	sub	fp, fp, r9, asr #31
	eor	r9, ip, ip, asr #31
	ldr	r7, [sp, #32]
	add	r6, r6, fp
	sub	r9, r9, ip, asr #31
	ldrb	fp, [r3, #11]	@ zero_extendqisi2
	rsb	r8, r8, r0
	ldrb	ip, [r3, #12]	@ zero_extendqisi2
	cmp	r8, #0
	it	lt
	rsblt	r8, r8, #0
	cmp	r5, r6
	it	gt
	movgt	r10, r7
	rsb	fp, fp, r4
	add	r8, r8, r9
	rsb	r9, ip, r1
	ldrb	ip, [r3, #13]	@ zero_extendqisi2
	cmp	fp, #0
	ldr	r7, [sp, #4]
	it	lt
	rsblt	fp, fp, #0
	cmp	r9, #0
	rsb	ip, ip, r0
	it	lt
	rsblt	r9, r9, #0
	cmp	r6, r5
	add	r8, r8, fp
	it	ge
	movge	r6, r5
	cmp	ip, #0
	it	lt
	rsblt	ip, ip, #0
	ldrb	fp, [r3, #14]	@ zero_extendqisi2
	ldrb	r5, [r3, #15]	@ zero_extendqisi2
	add	r9, r9, ip
	ldrb	ip, [r3, #16]	@ zero_extendqisi2
	cmp	r8, r6
	it	ge
	movge	lr, r10
	rsb	fp, fp, r4
	pld	[r3, #41]
	subs	r5, r1, r5
	cmp	fp, #0
	rsb	ip, ip, r0
	eor	r10, r5, r5, asr #31
	it	lt
	rsblt	fp, fp, #0
	cmp	ip, #0
	sub	r10, r10, r5, asr #31
	it	lt
	rsblt	ip, ip, #0
	add	r5, r9, fp
	cmp	r8, r6
	ldrb	r9, [r3, #18]	@ zero_extendqisi2
	it	ge
	movge	r8, r6
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	cmp	r5, r8
	it	lt
	movlt	lr, r7
	ldrb	fp, [r3, #19]	@ zero_extendqisi2
	add	ip, ip, r10
	ldrb	r7, [r3, #20]	@ zero_extendqisi2
	rsb	r9, r9, r1
	subs	r6, r4, r6
	eor	r10, r9, r9, asr #31
	cmp	r6, #0
	rsb	fp, fp, r0
	sub	r7, r4, r7
	it	lt
	rsblt	r6, r6, #0
	sub	r10, r10, r9, asr #31
	cmp	r8, r5
	eor	r9, fp, fp, asr #31
	it	ge
	movge	r8, r5
	eor	r5, r7, r7, asr #31
	add	r6, r6, ip
	sub	r9, r9, fp, asr #31
	ldrb	ip, [r3, #22]	@ zero_extendqisi2
	sub	r5, r5, r7, asr #31
	ldrb	fp, [r3, #21]	@ zero_extendqisi2
	add	r10, r10, r9
	add	r5, r5, r10
	add	r9, r2, #4
	rsb	r10, ip, r0
	ldrb	ip, [r3, #23]	@ zero_extendqisi2
	rsb	fp, fp, r1
	mov	r7, r8
	cmp	fp, #0
	add	r3, r3, #30
	it	lt
	rsblt	fp, fp, #0
	cmp	r10, #0
	it	lt
	rsblt	r10, r10, #0
	cmp	r6, r8
	it	ge
	movge	r9, lr
	cmp	r8, r6
	rsb	lr, ip, r4
	it	ge
	movge	r7, r6
	ldrb	ip, [r3, #-6]	@ zero_extendqisi2
	cmp	lr, #0
	add	r6, r2, #5
	add	r10, r10, fp
	it	lt
	rsblt	lr, lr, #0
	ldrb	r8, [r3, #-5]	@ zero_extendqisi2
	cmp	r5, r7
	it	lt
	movlt	r9, r6
	cmp	r7, r5
	add	lr, lr, r10
	it	ge
	movge	r7, r5
	rsb	ip, ip, r1
	cmp	r7, lr
	mov	r6, r7
	rsb	r8, r8, r0
	it	ge
	movge	r6, lr
	cmp	ip, #0
	ldrb	r5, [r3, #-4]	@ zero_extendqisi2
	it	lt
	rsblt	ip, ip, #0
	cmp	r8, #0
	it	lt
	rsblt	r8, r8, #0
	add	r10, r2, #6
	add	r8, r8, ip
	ldrb	ip, [r3, #-3]	@ zero_extendqisi2
	subs	r5, r4, r5
	cmp	r5, #0
	rsb	ip, ip, r1
	it	lt
	rsblt	r5, r5, #0
	eor	fp, ip, ip, asr #31
	cmp	lr, r7
	ite	lt
	movlt	r7, r10
	movge	r7, r9
	ldrb	lr, [r3, #-2]	@ zero_extendqisi2
	add	r5, r5, r8
	ldrb	r9, [r3, #-1]	@ zero_extendqisi2
	sub	fp, fp, ip, asr #31
	ldrb	r8, [r3]	@ zero_extendqisi2
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	rsb	lr, lr, r0
	rsb	r9, r9, r4
	eor	r10, lr, lr, asr #31
	rsb	r8, r8, r1
	cmp	r9, #0
	rsb	ip, ip, r0
	it	lt
	rsblt	r9, r9, #0
	cmp	r8, #0
	sub	r10, r10, lr, asr #31
	it	lt
	rsblt	r8, r8, #0
	add	lr, r2, #7
	cmp	ip, #0
	add	r10, r10, fp
	it	lt
	rsblt	ip, ip, #0
	cmp	r5, r6
	it	lt
	movlt	r7, lr
	cmp	r6, r5
	ldrb	lr, [r3, #2]	@ zero_extendqisi2
	it	ge
	movge	r6, r5
	ldr	r5, [sp, #32]
	add	r9, r9, r10
	add	r10, r2, #8
	cmp	r9, r6
	it	lt
	movlt	r7, r10
	add	ip, ip, r8
	adds	r5, r5, #10
	add	r10, r2, #9
	str	r5, [sp, #32]
	rsb	r5, lr, r4
	cmp	r5, #0
	add	r2, r2, #10
	it	lt
	rsblt	r5, r5, #0
	cmp	r6, r9
	it	ge
	movge	r6, r9
	add	r5, r5, ip
	cmp	r5, r6
	it	ge
	movge	r10, r7
	cmp	r5, r6
	it	ge
	movge	r5, r6
	ldr	r7, [sp, #32]
	ldr	r6, [sp, #44]
	cmp	r6, r7
	bgt	.L412
	b	.L411
.L463:
	mov	r10, #0
	b	.L410
.L525:
	.align	2
.L524:
	.word	.LC1-(.LPIC36+4)
	.size	png_set_quantize, .-png_set_quantize
	.section	.text.png_set_gamma_fixed,"ax",%progbits
	.align	2
	.global	png_set_gamma_fixed
	.thumb
	.thumb_func
	.type	png_set_gamma_fixed, %function
png_set_gamma_fixed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L542
	push	{r3, r4, r5, lr}
	mov	r3, r0
	ldr	r4, [r0, #452]
	lsls	r5, r4, #25
	bmi	.L543
	movw	r0, #31072
	orr	r5, r4, #16384
	movt	r0, 65534
	str	r5, [r3, #452]
	cmp	r1, #-1
	it	ne
	cmpne	r1, r0
	beq	.L544
	movw	r4, #15536
	movw	r0, #20652
	movt	r4, 65535
	movt	r0, 2
	cmn	r1, #2
	it	ne
	cmpne	r1, r4
	it	eq
	moveq	r1, r0
.L530:
	movw	r0, #31072
	movt	r0, 65534
	cmp	r2, #-1
	it	ne
	cmpne	r2, r0
	bne	.L532
	movw	r2, #45455
	orr	r5, r5, #4096
	str	r5, [r3, #452]
.L533:
	cmp	r1, #0
	ble	.L545
	ldrh	r0, [r3, #1138]
	str	r2, [r3, #1064]
	str	r1, [r3, #728]
	orr	r2, r0, #1
	strh	r2, [r3, #1138]	@ movhi
	pop	{r3, r4, r5, pc}
.L544:
	orr	r5, r4, #20480
	movw	r1, #23392
	str	r5, [r3, #452]
	movt	r1, 3
	b	.L530
.L532:
	movw	r0, #15536
	movt	r0, 65535
	cmn	r2, #2
	it	ne
	cmpne	r2, r0
	itt	eq
	movweq	r2, #373
	movteq	r2, 1
	beq	.L533
	cmp	r2, #0
	bgt	.L533
	ldr	r1, .L546
	mov	r0, r3
.LPIC38:
	add	r1, pc
	bl	png_error(PLT)
.L543:
	ldr	r1, .L546+4
	pop	{r3, r4, r5, lr}
.LPIC37:
	add	r1, pc
	b	png_app_error(PLT)
.L542:
	bx	lr
.L545:
	ldr	r1, .L546+8
	mov	r0, r3
.LPIC39:
	add	r1, pc
	bl	png_error(PLT)
.L547:
	.align	2
.L546:
	.word	.LC8-(.LPIC38+4)
	.word	.LC1-(.LPIC37+4)
	.word	.LC9-(.LPIC39+4)
	.size	png_set_gamma_fixed, .-png_set_gamma_fixed
	.section	.text.png_set_gamma,"ax",%progbits
	.align	2
	.global	png_set_gamma
	.thumb
	.thumb_func
	.type	png_set_gamma, %function
png_set_gamma:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	fldd	d16, .L561
	push	{r4, lr}
	mov	r4, r0
	fstmfdd	sp!, {d8}
	sub	sp, sp, #8
	fcmped	d0, d16
	fmstat
	fcmpezd	d0
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	fcpyd	d8, d1
	cbz	r3, .L549
	fldd	d16, .L561+8
	fmuld	d0, d0, d16
.L549:
	fconstd	d16, #96
	faddd	d0, d0, d16
	bl	floor(PLT)
	fldd	d17, .L561+16
	fldd	d16, .L561+24
	fcmped	d0, d17
	fmstat
	fcmped	d0, d16
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	it	gt
	orrgt	r3, r3, #1
	cmp	r3, #0
	bne	.L552
	fldd	d16, .L561
	ftosizd	s15, d0
	fcmped	d8, d16
	fmstat
	fcmpezd	d8
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	fmrs	r1, s15	@ int
	cbnz	r3, .L560
.L551:
	fconstd	d0, #96
	str	r1, [sp, #4]
	faddd	d0, d8, d0
	bl	floor(PLT)
	fldd	d17, .L561+16
	fldd	d16, .L561+24
	ldr	r1, [sp, #4]
	fcmped	d0, d17
	fmstat
	fcmped	d0, d16
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	it	gt
	orrgt	r3, r3, #1
	cbnz	r3, .L552
	ftosizd	s15, d0
	mov	r0, r4
	fmrs	r2, s15	@ int
	add	sp, sp, #8
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, lr}
	b	png_set_gamma_fixed(PLT)
.L560:
	fldd	d16, .L561+8
	fmuld	d8, d8, d16
	b	.L551
.L552:
	ldr	r1, .L561+32
	mov	r0, r4
.LPIC40:
	add	r1, pc
	bl	png_fixed_error(PLT)
.L562:
	.align	3
.L561:
	.word	0
	.word	1080033280
	.word	0
	.word	1090021888
	.word	-4194304
	.word	-1042284545
	.word	-4194304
	.word	1105199103
	.word	.LC7-(.LPIC40+4)
	.size	png_set_gamma, .-png_set_gamma
	.section	.text.png_set_expand,"ax",%progbits
	.align	2
	.global	png_set_expand
	.thumb
	.thumb_func
	.type	png_set_expand, %function
png_set_expand:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L563
	ldr	r2, [r0, #452]
	lsls	r1, r2, #25
	bmi	.L570
	ldr	r1, [r0, #456]
	orr	r2, r2, #16384
	str	r2, [r0, #452]
	orr	r1, r1, #33554432
	orr	r1, r1, #4096
	str	r1, [r0, #456]
.L563:
	bx	lr
.L570:
	ldr	r1, .L571
.LPIC41:
	add	r1, pc
	b	png_app_error(PLT)
.L572:
	.align	2
.L571:
	.word	.LC1-(.LPIC41+4)
	.size	png_set_expand, .-png_set_expand
	.section	.text.png_set_palette_to_rgb,"ax",%progbits
	.align	2
	.global	png_set_palette_to_rgb
	.thumb
	.thumb_func
	.type	png_set_palette_to_rgb, %function
png_set_palette_to_rgb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L573
	ldr	r2, [r0, #452]
	lsls	r1, r2, #25
	bmi	.L580
	ldr	r1, [r0, #456]
	orr	r2, r2, #16384
	str	r2, [r0, #452]
	orr	r1, r1, #33554432
	orr	r1, r1, #4096
	str	r1, [r0, #456]
.L573:
	bx	lr
.L580:
	ldr	r1, .L581
.LPIC42:
	add	r1, pc
	b	png_app_error(PLT)
.L582:
	.align	2
.L581:
	.word	.LC1-(.LPIC42+4)
	.size	png_set_palette_to_rgb, .-png_set_palette_to_rgb
	.section	.text.png_set_expand_gray_1_2_4_to_8,"ax",%progbits
	.align	2
	.global	png_set_expand_gray_1_2_4_to_8
	.thumb
	.thumb_func
	.type	png_set_expand_gray_1_2_4_to_8, %function
png_set_expand_gray_1_2_4_to_8:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L583
	ldr	r2, [r0, #452]
	lsls	r1, r2, #25
	bmi	.L590
	ldr	r1, [r0, #456]
	orr	r2, r2, #16384
	str	r2, [r0, #452]
	orr	r1, r1, #4096
	str	r1, [r0, #456]
.L583:
	bx	lr
.L590:
	ldr	r1, .L591
.LPIC43:
	add	r1, pc
	b	png_app_error(PLT)
.L592:
	.align	2
.L591:
	.word	.LC1-(.LPIC43+4)
	.size	png_set_expand_gray_1_2_4_to_8, .-png_set_expand_gray_1_2_4_to_8
	.section	.text.png_set_tRNS_to_alpha,"ax",%progbits
	.align	2
	.global	png_set_tRNS_to_alpha
	.thumb
	.thumb_func
	.type	png_set_tRNS_to_alpha, %function
png_set_tRNS_to_alpha:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L593
	ldr	r2, [r0, #452]
	lsls	r1, r2, #25
	bmi	.L600
	ldr	r1, [r0, #456]
	orr	r2, r2, #16384
	str	r2, [r0, #452]
	orr	r1, r1, #33554432
	orr	r1, r1, #4096
	str	r1, [r0, #456]
.L593:
	bx	lr
.L600:
	ldr	r1, .L601
.LPIC44:
	add	r1, pc
	b	png_app_error(PLT)
.L602:
	.align	2
.L601:
	.word	.LC1-(.LPIC44+4)
	.size	png_set_tRNS_to_alpha, .-png_set_tRNS_to_alpha
	.section	.text.png_set_expand_16,"ax",%progbits
	.align	2
	.global	png_set_expand_16
	.thumb
	.thumb_func
	.type	png_set_expand_16, %function
png_set_expand_16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L603
	ldr	r2, [r0, #452]
	lsls	r1, r2, #25
	bmi	.L610
	ldr	r1, [r0, #456]
	orr	r2, r2, #16384
	str	r2, [r0, #452]
	orr	r1, r1, #33554432
	orr	r1, r1, #4608
	str	r1, [r0, #456]
.L603:
	bx	lr
.L610:
	ldr	r1, .L611
.LPIC45:
	add	r1, pc
	b	png_app_error(PLT)
.L612:
	.align	2
.L611:
	.word	.LC1-(.LPIC45+4)
	.size	png_set_expand_16, .-png_set_expand_16
	.section	.text.png_set_gray_to_rgb,"ax",%progbits
	.align	2
	.global	png_set_gray_to_rgb
	.thumb
	.thumb_func
	.type	png_set_gray_to_rgb, %function
png_set_gray_to_rgb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L621
	ldr	r3, [r0, #452]
	push	{r4, lr}
	mov	r4, r0
	lsls	r2, r3, #25
	bmi	.L622
	orr	r3, r3, #16384
	str	r3, [r0, #452]
	bl	png_set_expand_gray_1_2_4_to_8(PLT)
	ldr	r3, [r4, #456]
	orr	r3, r3, #16384
	str	r3, [r4, #456]
	pop	{r4, pc}
.L622:
	ldr	r1, .L623
	pop	{r4, lr}
.LPIC46:
	add	r1, pc
	b	png_app_error(PLT)
.L621:
	bx	lr
.L624:
	.align	2
.L623:
	.word	.LC1-(.LPIC46+4)
	.size	png_set_gray_to_rgb, .-png_set_gray_to_rgb
	.section	.text.png_set_rgb_to_gray_fixed,"ax",%progbits
	.align	2
	.global	png_set_rgb_to_gray_fixed
	.thumb
	.thumb_func
	.type	png_set_rgb_to_gray_fixed, %function
png_set_rgb_to_gray_fixed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L646
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, [r0, #452]
	lsls	r6, r5, #25
	bmi	.L647
	ldr	r6, [r0, #448]
	lsls	r6, r6, #31
	bpl	.L648
	cmp	r1, #2
	orr	r5, r5, #16384
	str	r5, [r0, #452]
	beq	.L630
	cmp	r1, #3
	beq	.L631
	cmp	r1, #1
	beq	.L649
	ldr	r1, .L651
.LPIC49:
	add	r1, pc
	bl	png_error(PLT)
.L630:
	ldr	r1, [r0, #456]
	orr	r1, r1, #4194304
	str	r1, [r0, #456]
.L633:
	ldrb	r0, [r4, #675]	@ zero_extendqisi2
	cmp	r0, #3
	itt	eq
	orreq	r1, r1, #4096
	streq	r1, [r4, #456]
	cmp	r2, #0
	it	ge
	cmpge	r3, #0
	blt	.L635
	movw	r1, #34464
	adds	r0, r2, r3
	movt	r1, 1
	cmp	r0, r1
	ble	.L650
	ldr	r1, .L651+4
	mov	r0, r4
.LPIC50:
	add	r1, pc
	bl	png_app_warning(PLT)
.L635:
	ldrh	r3, [r4, #942]
	cbnz	r3, .L625
	ldrh	r3, [r4, #944]
	cbnz	r3, .L625
	movw	r2, #6968
	movw	r3, #23434
	strh	r2, [r4, #942]	@ movhi
	strh	r3, [r4, #944]	@ movhi
.L625:
	pop	{r4, r5, r6, pc}
.L649:
	ldr	r1, [r0, #456]
	orr	r1, r1, #6291456
	str	r1, [r0, #456]
	b	.L633
.L647:
	ldr	r1, .L651+8
	pop	{r4, r5, r6, lr}
.LPIC47:
	add	r1, pc
	b	png_app_error(PLT)
.L631:
	ldr	r1, [r0, #456]
	orr	r1, r1, #2097152
	str	r1, [r0, #456]
	b	.L633
.L648:
	ldr	r1, .L651+12
	pop	{r4, r5, r6, lr}
.LPIC48:
	add	r1, pc
	b	png_app_error(PLT)
.L646:
	bx	lr
.L650:
	lsls	r2, r2, #15
	lsls	r0, r3, #15
	movw	r1, #23237
	lsrs	r3, r2, #5
	lsrs	r0, r0, #5
	movs	r2, #1
	movt	r1, 2684
	strb	r2, [r4, #941]
	umull	r2, r3, r1, r3
	umull	r2, r1, r1, r0
	lsrs	r3, r3, #7
	strh	r3, [r4, #942]	@ movhi
	lsrs	r1, r1, #7
	strh	r1, [r4, #944]	@ movhi
	pop	{r4, r5, r6, pc}
.L652:
	.align	2
.L651:
	.word	.LC11-(.LPIC49+4)
	.word	.LC12-(.LPIC50+4)
	.word	.LC1-(.LPIC47+4)
	.word	.LC10-(.LPIC48+4)
	.size	png_set_rgb_to_gray_fixed, .-png_set_rgb_to_gray_fixed
	.section	.text.png_set_rgb_to_gray,"ax",%progbits
	.align	2
	.global	png_set_rgb_to_gray
	.thumb
	.thumb_func
	.type	png_set_rgb_to_gray, %function
png_set_rgb_to_gray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r1
	ldr	r1, .L655
	mov	r4, r0
	fstmfdd	sp!, {d8}
.LPIC51:
	add	r1, pc
	fcpyd	d8, d1
	bl	png_fixed(PLT)
	ldr	r1, .L655+4
	mov	r5, r0
	fcpyd	d0, d8
	mov	r0, r4
.LPIC52:
	add	r1, pc
	bl	png_fixed(PLT)
	fldmfdd	sp!, {d8}
	mov	r3, r0
	mov	r1, r6
	mov	r0, r4
	mov	r2, r5
	pop	{r4, r5, r6, lr}
	b	png_set_rgb_to_gray_fixed(PLT)
.L656:
	.align	2
.L655:
	.word	.LC13-(.LPIC51+4)
	.word	.LC14-(.LPIC52+4)
	.size	png_set_rgb_to_gray, .-png_set_rgb_to_gray
	.section	.text.png_set_read_user_transform_fn,"ax",%progbits
	.align	2
	.global	png_set_read_user_transform_fn
	.thumb
	.thumb_func
	.type	png_set_read_user_transform_fn, %function
png_set_read_user_transform_fn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #456]
	str	r1, [r0, #432]
	orr	r3, r3, #1048576
	str	r3, [r0, #456]
	bx	lr
	.size	png_set_read_user_transform_fn, .-png_set_read_user_transform_fn
	.section	.text.png_init_read_transformations,"ax",%progbits
	.align	2
	.global	png_init_read_transformations
	.thumb
	.thumb_func
	.type	png_init_read_transformations, %function
png_init_read_transformations:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, [r0, #1064]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #20
	cbz	r1, .L659
	ldr	r2, [r0, #728]
	cmp	r2, #0
	beq	.L660
	movw	r3, #34464
	add	r0, sp, #8
	movt	r3, 1
	bl	png_muldiv(PLT)
	cmp	r0, #0
	bne	.L841
	ldrh	r3, [r4, #1138]
	orr	r3, r3, #1
	strh	r3, [r4, #1138]	@ movhi
.L662:
	ldr	r2, [r4, #456]
	ldr	r1, [r4, #728]
	orr	r2, r2, #8192
	b	.L666
.L659:
	ldr	r0, [r0, #728]
	cmp	r0, #0
	bne	.L842
	movw	r3, #34464
	movt	r3, 1
	mov	r1, r3
	str	r3, [r4, #1064]
	str	r3, [r4, #728]
.L664:
	ldrh	r3, [r4, #1138]
	orr	r3, r3, #1
	strh	r3, [r4, #1138]	@ movhi
.L749:
	ldr	r2, [r4, #456]
	bic	r2, r2, #8192
.L666:
	movs	r3, #128
	str	r2, [r4, #456]
	movt	r3, 4
	ands	r3, r3, r2
	cmp	r3, #262144
	beq	.L843
.L667:
	mov	r0, r1
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	beq	.L668
	ldr	r3, [r4, #456]
	tst	r3, #6291456
	bne	.L844
.L670:
	lsls	r2, r3, #23
	bpl	.L671
.L859:
	ldrb	r1, [r4, #675]	@ zero_extendqisi2
	lsls	r7, r1, #30
	bmi	.L672
	ldr	r2, [r4, #448]
	orr	r2, r2, #2048
	str	r2, [r4, #448]
.L672:
	cmp	r1, #3
	beq	.L845
.L675:
	lsls	r5, r1, #29
	ldrh	r2, [r4, #668]
	bmi	.L684
	ldr	r5, [r4, #452]
	bic	r0, r3, #8388608
	str	r0, [r4, #456]
	bic	r5, r5, #8192
	str	r5, [r4, #452]
	cmp	r2, #0
	bne	.L753
	bic	r3, r3, #8388736
	bic	r3, r3, #256
	str	r3, [r4, #456]
.L684:
	ldr	r2, [r4, #456]
	and	r0, r2, #4352
	cmp	r0, #4352
	beq	.L846
.L681:
	and	r1, r2, #896
	cmp	r1, #640
	beq	.L847
.L689:
	tst	r3, #67109888
	beq	.L690
	and	r2, r2, #384
	cmp	r2, #128
	beq	.L848
.L690:
	add	r2, r4, #692
	lsls	r7, r3, #18
	ldmia	r2!, {r0, r1}
	addw	r6, r4, #702
	ldrh	r5, [r2]	@ unaligned
	str	r0, [r4, #702]	@ unaligned
	str	r1, [r6, #4]	@ unaligned
	strh	r5, [r6, #8]	@ unaligned
	bmi	.L695
	tst	r3, #6291456
	bne	.L849
.L694:
	lsls	r5, r3, #24
	bmi	.L850
.L696:
	lsls	r0, r3, #8
	bmi	.L851
.L698:
	lsls	r2, r3, #24
	bmi	.L852
.L710:
	ldr	r2, [r4, #456]
	movw	r3, #4104
	ands	r3, r3, r2
	cmp	r3, #8
	beq	.L853
.L658:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L660:
	mov	r0, r1
	bl	png_reciprocal(PLT)
	mov	r1, r0
	str	r0, [r4, #728]
	b	.L664
.L849:
	ldr	r0, [r4, #1064]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	beq	.L854
.L695:
	mov	r0, r4
	ldrb	r1, [r4, #676]	@ zero_extendqisi2
	bl	png_build_gamma_table(PLT)
	ldr	r3, [r4, #456]
	lsls	r6, r3, #24
	bpl	.L855
	tst	r3, #6291456
	bne	.L856
.L699:
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
	cmp	r3, #3
	ldrb	r3, [r4, #686]	@ zero_extendqisi2
	beq	.L857
	cmp	r3, #2
	beq	.L717
	cmp	r3, #3
	beq	.L718
	cmp	r3, #1
	beq	.L858
	ldr	r1, .L875+16
	mov	r0, r4
.LPIC54:
	add	r1, pc
	bl	png_error(PLT)
.L668:
	add	r2, r4, #452
	ldr	r3, [r4, #456]
	vldr	d16, .L875
	vld1.32	{d17}, [r2]
	bic	r3, r3, #8388608
	vand	d16, d17, d16
	tst	r3, #6291456
	vst1.32	{d16}, [r2]
	beq	.L670
.L844:
	mov	r0, r4
	bl	png_colorspace_set_rgb_coefficients(PLT)
	ldr	r3, [r4, #456]
	lsls	r2, r3, #23
	bmi	.L859
.L671:
	and	r2, r3, #16512
	cmp	r2, #16512
	bne	.L674
	ldrh	r1, [r4, #694]
	ldrh	r2, [r4, #696]
	cmp	r2, r1
	beq	.L860
.L674:
	ldrb	r1, [r4, #675]	@ zero_extendqisi2
	cmp	r1, #3
	bne	.L675
.L845:
	ldrh	r0, [r4, #668]
	cmp	r0, #0
	beq	.L676
	ldr	r5, [r4, #768]
	movs	r6, #0
	mov	r2, r6
.L680:
	ldrb	r1, [r5, r2]	@ zero_extendqisi2
	cmp	r1, #255
	beq	.L677
	cmp	r1, #0
	bne	.L678
	movs	r6, #1
.L677:
	adds	r2, r2, #1
	cmp	r2, r0
	blt	.L680
	ldr	r1, [r4, #452]
	bic	r2, r3, #8388608
	str	r2, [r4, #456]
	bic	r1, r1, #8192
	str	r1, [r4, #452]
	cmp	r6, #0
	beq	.L750
	mov	r3, r2
	b	.L678
.L853:
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L658
	ldrb	r0, [r4, #756]	@ zero_extendqisi2
	bic	r2, r2, #8
	str	r2, [r4, #456]
	ldrh	r5, [r4, #660]
	rsb	r0, r0, #8
	subs	r3, r0, #1
	cmp	r3, #6
	bhi	.L861
	cbz	r5, .L742
	lsls	r6, r5, #1
	movs	r3, #0
	adds	r7, r6, r5
.L744:
	ldr	r2, [r4, #656]
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	asrs	r1, r1, r0
	strb	r1, [r2, r3]
	adds	r3, r3, #3
	cmp	r3, r7
	bne	.L744
	ldrb	r0, [r4, #757]	@ zero_extendqisi2
	rsb	r0, r0, #8
	subs	r3, r0, #1
	cmp	r3, #6
	bls	.L751
.L742:
	ldrb	r0, [r4, #758]	@ zero_extendqisi2
	rsb	r0, r0, #8
	subs	r3, r0, #1
	cmp	r3, #6
	bhi	.L658
	cmp	r5, #0
	beq	.L658
	lsls	r6, r5, #1
.L752:
	add	r5, r5, r6
	movs	r3, #0
.L748:
	ldr	r2, [r4, #656]
	add	r2, r2, r3
	adds	r3, r3, #3
	ldrb	r1, [r2, #2]	@ zero_extendqisi2
	cmp	r3, r5
	asr	r1, r1, r0
	strb	r1, [r2, #2]
	bne	.L748
	b	.L658
.L855:
	ldrb	r2, [r4, #675]	@ zero_extendqisi2
	cmp	r2, #3
	bne	.L710
	lsls	r1, r3, #19
	bmi	.L862
.L728:
	ldrh	r7, [r4, #660]
	ldr	r1, [r4, #656]
	cbz	r7, .L730
	add	r7, r7, r7, lsl #1
	movs	r3, #0
.L732:
	ldrb	r5, [r1, r3]	@ zero_extendqisi2
	adds	r2, r1, r3
	ldr	r0, [r4, #732]
	ldrb	r0, [r0, r5]	@ zero_extendqisi2
	strb	r0, [r1, r3]
	adds	r3, r3, #3
	ldr	r0, [r4, #732]
	cmp	r3, r7
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	ldrb	r0, [r0, r6]	@ zero_extendqisi2
	strb	r0, [r2, #1]
	ldr	r0, [r4, #732]
	ldrb	r0, [r0, r5]	@ zero_extendqisi2
	strb	r0, [r2, #2]
	bne	.L732
	ldr	r3, [r4, #456]
.L730:
	bic	r3, r3, #8192
	str	r3, [r4, #456]
	b	.L710
.L847:
	ldrb	r1, [r4, #676]	@ zero_extendqisi2
	cmp	r1, #16
	beq	.L689
	addw	r1, r4, #694
	vmov.i16	d18, #0xff  @ v4hi
	vldr	d20, .L875+8
	vld1.16	{d19}, [r1]
	vmull.u16 q9, d19, d18
	vadd.i32	d21, d20, d18
	vadd.i32	d20, d20, d19
	vshr.u32	d16, d21, #16
	vshr.u32	d17, d20, #16
	vmovn.i32	d16, q8
	vst1.16	{d16}, [r1]
	b	.L689
.L843:
	ldr	r3, [r4, #452]
	bic	r2, r2, #41943040
	bic	r2, r2, #256
	movs	r0, #0
	str	r2, [r4, #456]
	bic	r3, r3, #8192
	strh	r0, [r4, #668]	@ movhi
	str	r3, [r4, #452]
	b	.L667
.L846:
	lsls	r0, r1, #30
	bmi	.L681
	ldrb	r5, [r4, #676]	@ zero_extendqisi2
	ldrh	r1, [r4, #700]
	ldrh	r0, [r4, #780]
	cmp	r5, #2
	beq	.L686
	cmp	r5, #4
	beq	.L687
	cmp	r5, #1
	itt	eq
	rsbeq	r1, r1, r1, lsl #8
	rsbeq	r0, r0, r0, lsl #8
.L685:
	uxth	r1, r1
	strh	r1, [r4, #698]	@ movhi
	strh	r1, [r4, #696]	@ movhi
	strh	r1, [r4, #694]	@ movhi
	lsls	r1, r3, #6
	itttt	pl
	uxthpl	r0, r0
	strhpl	r0, [r4, #778]	@ movhi
	strhpl	r0, [r4, #776]	@ movhi
	strhpl	r0, [r4, #774]	@ movhi
	b	.L681
.L753:
	mov	r3, r0
	b	.L684
.L852:
	ldrb	r2, [r4, #675]	@ zero_extendqisi2
	cmp	r2, #3
	bne	.L710
	ldrh	r0, [r4, #668]
	ldr	r2, [r4, #656]
	ldrb	r7, [r4, #694]	@ zero_extendqisi2
	ldrb	lr, [r4, #696]	@ zero_extendqisi2
	ldrb	ip, [r4, #698]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L733
	adds	r3, r2, #1
	movs	r2, #0
	b	.L737
.L864:
	strb	r7, [r3, #-1]
	strb	lr, [r3]
	strb	ip, [r3, #1]
.L735:
	adds	r2, r2, #1
	adds	r3, r3, #3
	cmp	r0, r2
	ble	.L863
.L737:
	ldr	r1, [r4, #768]
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L864
	cmp	r1, #255
	beq	.L735
	ldrb	r9, [r3, #-1]	@ zero_extendqisi2
	rsb	r6, r1, #255
	ldrb	r5, [r3]	@ zero_extendqisi2
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
	smulbb	r1, r9, r1
	adds	r1, r1, #128
	mla	r1, r6, r7, r1
	uxth	r1, r1
	add	r1, r1, r1, lsr #8
	asrs	r1, r1, #8
	strb	r1, [r3, #-1]
	ldr	r1, [r4, #768]
	ldrb	r6, [r1, r2]	@ zero_extendqisi2
	rsb	r1, r6, #255
	smulbb	r6, r5, r6
	adds	r6, r6, #128
	mla	r1, r1, lr, r6
	uxth	r1, r1
	add	r1, r1, r1, lsr #8
	asrs	r1, r1, #8
	strb	r1, [r3]
	ldr	r1, [r4, #768]
	ldrb	r5, [r1, r2]	@ zero_extendqisi2
	rsb	r1, r5, #255
	smulbb	r5, r8, r5
	adds	r5, r5, #128
	mla	r1, r1, ip, r5
	uxth	r1, r1
	add	r1, r1, r1, lsr #8
	asrs	r1, r1, #8
	strb	r1, [r3, #1]
	b	.L735
.L842:
	bl	png_reciprocal(PLT)
	ldr	r1, [r4, #728]
	str	r0, [r4, #1064]
	b	.L664
.L676:
	ldr	r2, [r4, #452]
	bic	r2, r2, #8192
	str	r2, [r4, #452]
.L750:
	bic	r3, r3, #8388736
	bic	r3, r3, #256
	str	r3, [r4, #456]
.L678:
	ldr	r2, [r4, #456]
	and	r1, r2, #4352
	cmp	r1, #4352
	bne	.L681
	ldrb	r1, [r4, #692]	@ zero_extendqisi2
	ldr	r5, [r4, #656]
	add	r1, r1, r1, lsl #1
	ldrb	r6, [r5, r1]	@ zero_extendqisi2
	add	r1, r1, r5
	strh	r6, [r4, #694]	@ movhi
	lsls	r6, r3, #12
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	strh	r5, [r4, #696]	@ movhi
	ldrb	r1, [r1, #2]	@ zero_extendqisi2
	strh	r1, [r4, #698]	@ movhi
	bpl	.L681
	ands	r1, r3, #33554432
	bne	.L681
	cmp	r0, #0
	beq	.L681
	mov	r3, r1
.L683:
	ldr	r2, [r4, #768]
	ldrb	r1, [r2, r3]	@ zero_extendqisi2
	mvns	r1, r1
	strb	r1, [r2, r3]
	adds	r3, r3, #1
	cmp	r0, r3
	bgt	.L683
	ldr	r2, [r4, #456]
	mov	r3, r2
	b	.L681
.L841:
	ldr	r0, [sp, #8]
	bl	png_gamma_significant(PLT)
	ldrh	r3, [r4, #1138]
	orr	r3, r3, #1
	strh	r3, [r4, #1138]	@ movhi
	cmp	r0, #0
	bne	.L662
	ldr	r1, [r4, #728]
	b	.L749
.L876:
	.align	3
.L875:
	.word	-8193
	.word	-8388609
	.word	32895
	.word	32895
	.word	.LC16-(.LPIC54+4)
.L854:
	ldr	r0, [r4, #728]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L695
	ldr	r3, [r4, #456]
	b	.L694
.L717:
	ldr	r0, [r4, #1064]
	bl	png_reciprocal(PLT)
	ldr	r1, [r4, #728]
	mov	r6, r0
	ldr	r0, [r4, #1064]
	bl	png_reciprocal2(PLT)
	mov	r5, r0
.L720:
	mov	r0, r6
	bl	png_gamma_significant(PLT)
	mov	r7, r0
	mov	r0, r5
	bl	png_gamma_significant(PLT)
	mov	r8, r0
	cbnz	r7, .L865
.L721:
	cmp	r8, #0
	bne	.L866
.L722:
	ldrh	r1, [r4, #694]
	ldrh	r3, [r4, #696]
	cmp	r3, r1
	beq	.L867
.L723:
	cbnz	r7, .L868
.L725:
	cmp	r8, #0
	bne	.L869
.L726:
	movs	r3, #1
	strb	r3, [r4, #686]
	b	.L710
.L865:
	mov	r0, r4
	ldrh	r1, [r4, #700]
	mov	r2, r6
	bl	png_gamma_correct(PLT)
	strh	r0, [r4, #710]	@ movhi
	b	.L721
.L868:
	mov	r2, r6
	mov	r0, r4
	bl	png_gamma_correct(PLT)
	ldrh	r1, [r4, #696]
	mov	r2, r6
	strh	r0, [r4, #704]	@ movhi
	mov	r0, r4
	bl	png_gamma_correct(PLT)
	mov	r2, r6
	strh	r0, [r4, #706]	@ movhi
	ldrh	r1, [r4, #698]
	mov	r0, r4
	bl	png_gamma_correct(PLT)
	strh	r0, [r4, #708]	@ movhi
	b	.L725
.L850:
	ldr	r0, [r4, #1064]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L695
	ldr	r0, [r4, #728]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L695
	ldrb	r3, [r4, #686]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L697
.L840:
	ldr	r3, [r4, #456]
	b	.L696
.L848:
	ldrb	r2, [r4, #676]	@ zero_extendqisi2
	cmp	r2, #16
	bne	.L690
	addw	r2, r4, #694
	vld1.16	{d16}, [r2]
	vshl.i16	d17, d16, #8
	vadd.i16	d16, d17, d16
	vst1.16	{d16}, [r2]
	b	.L690
.L861:
	ldrb	r0, [r4, #757]	@ zero_extendqisi2
	rsb	r0, r0, #8
	subs	r3, r0, #1
	cmp	r3, #6
	bhi	.L742
	cmp	r5, #0
	beq	.L658
	lsls	r6, r5, #1
.L751:
	adds	r7, r6, r5
	movs	r3, #0
.L747:
	ldr	r2, [r4, #656]
	add	r2, r2, r3
	adds	r3, r3, #3
	ldrb	r1, [r2, #1]	@ zero_extendqisi2
	cmp	r3, r7
	asr	r1, r1, r0
	strb	r1, [r2, #1]
	bne	.L747
	ldrb	r0, [r4, #758]	@ zero_extendqisi2
	rsb	r0, r0, #8
	subs	r3, r0, #1
	cmp	r3, #6
	bls	.L752
	b	.L658
.L851:
	ldr	r0, [r4, #728]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L695
	ldr	r3, [r4, #456]
	b	.L698
.L856:
	ldr	r1, .L877
	mov	r0, r4
.LPIC53:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L699
.L857:
	cmp	r3, #2
	ldr	r6, [r4, #656]
	ldrh	r5, [r4, #660]
	beq	.L870
	cmp	r3, #1
	beq	.L704
	cmp	r3, #3
	bne	.L871
	ldr	r0, [r4, #688]
	bl	png_reciprocal(PLT)
	ldr	r1, [r4, #728]
	mov	r7, r0
	ldr	r0, [r4, #688]
	bl	png_reciprocal2(PLT)
	mov	r8, r0
.L703:
	mov	r0, r8
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L872
	ldrb	r10, [r4, #694]	@ zero_extendqisi2
	ldrb	fp, [r4, #696]	@ zero_extendqisi2
	ldrb	r3, [r4, #698]	@ zero_extendqisi2
	str	r3, [sp, #4]
.L707:
	mov	r0, r7
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L873
	ldrb	r9, [r4, #694]	@ zero_extendqisi2
	ldrb	r8, [r4, #696]	@ zero_extendqisi2
	ldrb	r0, [r4, #698]	@ zero_extendqisi2
.L702:
	adds	r3, r6, #1
	movs	r2, #0
	cbnz	r5, .L715
	b	.L714
.L874:
	ldr	r1, [r4, #768]
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	cmp	r1, #255
	beq	.L711
	cmp	r1, #0
	bne	.L712
	ldr	r6, [sp, #4]
	strb	r10, [r3, #-1]
	strb	fp, [r3]
	strb	r6, [r3, #1]
.L713:
	adds	r2, r2, #1
	adds	r3, r3, #3
	cmp	r5, r2
	ble	.L714
.L715:
	ldrh	r1, [r4, #668]
	cmp	r1, r2
	bgt	.L874
.L711:
	ldr	r1, [r4, #732]
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2
	ldrb	r7, [r3]	@ zero_extendqisi2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	r1, [r1, lr]	@ zero_extendqisi2
	strb	r1, [r3, #-1]
	ldr	r1, [r4, #732]
	ldrb	r1, [r1, r7]	@ zero_extendqisi2
	strb	r1, [r3]
	ldr	r1, [r4, #732]
	ldrb	r1, [r1, r6]	@ zero_extendqisi2
	strb	r1, [r3, #1]
	b	.L713
.L858:
	movw	r5, #34464
	ldr	r6, [r4, #728]
	movt	r5, 1
	b	.L720
.L718:
	ldr	r0, [r4, #688]
	bl	png_reciprocal(PLT)
	ldr	r1, [r4, #728]
	mov	r6, r0
	ldr	r0, [r4, #688]
	bl	png_reciprocal2(PLT)
	mov	r5, r0
	b	.L720
.L866:
	mov	r0, r4
	ldrh	r1, [r4, #700]
	mov	r2, r5
	bl	png_gamma_correct(PLT)
	strh	r0, [r4, #700]	@ movhi
	b	.L722
.L869:
	ldrh	r1, [r4, #694]
	mov	r2, r5
	mov	r0, r4
	bl	png_gamma_correct(PLT)
	ldrh	r1, [r4, #696]
	mov	r2, r5
	strh	r0, [r4, #694]	@ movhi
	mov	r0, r4
	bl	png_gamma_correct(PLT)
	mov	r2, r5
	strh	r0, [r4, #696]	@ movhi
	ldrh	r1, [r4, #698]
	mov	r0, r4
	bl	png_gamma_correct(PLT)
	strh	r0, [r4, #698]	@ movhi
	b	.L726
.L867:
	ldrh	r2, [r4, #698]
	cmp	r2, r3
	bne	.L723
	ldrh	r3, [r4, #700]
	cmp	r3, r2
	bne	.L723
	ldrh	r2, [r4, #710]
	strh	r3, [r4, #698]	@ movhi
	strh	r3, [r4, #696]	@ movhi
	strh	r2, [r4, #708]	@ movhi
	strh	r2, [r4, #706]	@ movhi
	strh	r2, [r4, #704]	@ movhi
	b	.L726
.L862:
	tst	r3, #6291456
	bne	.L710
	b	.L728
.L860:
	ldrh	r0, [r4, #698]
	cmp	r0, r2
	bne	.L674
	ldr	r2, [r4, #448]
	ldrb	r1, [r4, #675]	@ zero_extendqisi2
	strh	r0, [r4, #700]	@ movhi
	orr	r2, r2, #2048
	str	r2, [r4, #448]
	b	.L672
.L704:
	movw	r8, #34464
	ldr	r7, [r4, #728]
	movt	r8, 1
	b	.L703
.L712:
	ldr	lr, [r4, #744]
	rsb	ip, r1, #255
	ldrb	r7, [r3, #-1]	@ zero_extendqisi2
	smulbb	ip, ip, r9
	ldrb	r6, [lr, r7]	@ zero_extendqisi2
	ldrb	r7, [r3]	@ zero_extendqisi2
	ldrb	lr, [r3, #1]	@ zero_extendqisi2
	mla	r6, r6, r1, ip
	ldr	ip, [r4, #740]
	adds	r6, r6, #128
	uxth	r6, r6
	add	r6, r6, r6, lsr #8
	ubfx	r6, r6, #8, #8
	ldrb	r1, [ip, r6]	@ zero_extendqisi2
	strb	r1, [r3, #-1]
	ldr	r6, [r4, #768]
	ldr	r1, [r4, #744]
	ldrb	r6, [r6, r2]	@ zero_extendqisi2
	ldrb	ip, [r1, r7]	@ zero_extendqisi2
	ldr	r1, [r4, #740]
	rsb	r7, r6, #255
	smulbb	r7, r7, r8
	mla	r6, ip, r6, r7
	adds	r6, r6, #128
	uxth	r6, r6
	add	r6, r6, r6, lsr #8
	ubfx	r6, r6, #8, #8
	ldrb	r1, [r1, r6]	@ zero_extendqisi2
	strb	r1, [r3]
	ldr	r7, [r4, #768]
	ldr	r6, [r4, #744]
	ldr	r1, [r4, #740]
	ldrb	r7, [r7, r2]	@ zero_extendqisi2
	ldrb	lr, [r6, lr]	@ zero_extendqisi2
	rsb	r6, r7, #255
	smulbb	r6, r6, r0
	mla	r6, lr, r7, r6
	adds	r6, r6, #128
	uxth	r6, r6
	add	r6, r6, r6, lsr #8
	ubfx	r6, r6, #8, #8
	ldrb	r1, [r1, r6]	@ zero_extendqisi2
	strb	r1, [r3, #1]
	b	.L713
.L714:
	ldr	r3, [r4, #456]
	bic	r3, r3, #8320
	str	r3, [r4, #456]
	b	.L710
.L863:
	ldr	r3, [r4, #456]
.L733:
	bic	r3, r3, #128
	str	r3, [r4, #456]
	b	.L710
.L687:
	add	r1, r1, r1, lsl #4
	add	r0, r0, r0, lsl #4
	b	.L685
.L686:
	add	r1, r1, r1, lsl #2
	add	r0, r0, r0, lsl #2
	add	r1, r1, r1, lsl #4
	add	r0, r0, r0, lsl #4
	b	.L685
.L870:
	ldr	r2, [r4, #732]
	ldrh	r0, [r4, #696]
	ldrh	r7, [r4, #694]
	ldrh	r1, [r4, #698]
	ldr	r3, [r4, #744]
	ldrb	fp, [r2, r0]	@ zero_extendqisi2
	ldrb	r10, [r2, r7]	@ zero_extendqisi2
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	ldrb	r8, [r3, r0]	@ zero_extendqisi2
	ldrb	r9, [r3, r7]	@ zero_extendqisi2
	str	r2, [sp, #4]
	ldrb	r0, [r3, r1]	@ zero_extendqisi2
	b	.L702
.L873:
	mov	r1, r7
	ldrh	r0, [r4, #694]
	bl	png_gamma_8bit_correct(PLT)
	mov	r1, r7
	mov	r9, r0
	ldrh	r0, [r4, #696]
	bl	png_gamma_8bit_correct(PLT)
	mov	r1, r7
	mov	r8, r0
	ldrh	r0, [r4, #698]
	bl	png_gamma_8bit_correct(PLT)
	b	.L702
.L872:
	mov	r1, r8
	ldrh	r0, [r4, #694]
	bl	png_gamma_8bit_correct(PLT)
	mov	r1, r8
	mov	r10, r0
	ldrh	r0, [r4, #696]
	bl	png_gamma_8bit_correct(PLT)
	mov	r1, r8
	mov	fp, r0
	ldrh	r0, [r4, #698]
	bl	png_gamma_8bit_correct(PLT)
	str	r0, [sp, #4]
	b	.L707
.L871:
	movw	r8, #34464
	movt	r8, 1
	mov	r7, r8
	b	.L703
.L697:
	ldr	r0, [r4, #688]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L695
	b	.L840
.L878:
	.align	2
.L877:
	.word	.LC15-(.LPIC53+4)
	.size	png_init_read_transformations, .-png_init_read_transformations
	.section	.text.png_read_transform_info,"ax",%progbits
	.align	2
	.global	png_read_transform_info
	.thumb
	.thumb_func
	.type	png_read_transform_info, %function
png_read_transform_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #456]
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	mov	r3, r1
	lsls	r7, r2, #19
	bmi	.L880
	ldrb	r6, [r1, #24]	@ zero_extendqisi2
	ldrb	r4, [r1, #25]	@ zero_extendqisi2
.L881:
	lsls	r0, r2, #24
	bpl	.L886
	add	r7, r5, #692
	add	lr, r3, #170
	ldmia	r7!, {r0, r1}
	ldrh	r7, [r7]	@ unaligned
	str	r0, [r3, #170]	@ unaligned
	str	r1, [lr, #4]	@ unaligned
	strh	r7, [lr, #8]	@ unaligned
.L886:
	ldr	r1, [r5, #1064]
	cmp	r6, #16
	str	r1, [r3, #40]
	beq	.L962
.L887:
	lsls	r0, r2, #17
	ittt	mi
	orrmi	r4, r4, #2
	uxtbmi	r4, r4
	strbmi	r4, [r3, #25]
	tst	r2, #6291456
	itt	ne
	andne	r4, r4, #253
	strbne	r4, [r3, #25]
	lsls	r1, r2, #25
	bpl	.L891
	and	r1, r4, #251
	cmp	r1, #2
	bne	.L891
	ldr	r1, [r5, #852]
	cmp	r1, #0
	beq	.L891
	cmp	r6, #8
	beq	.L963
.L892:
	lsls	r0, r2, #29
	bpl	.L894
	cmp	r6, #7
	ittt	ls
	movls	r1, #8
	movls	r6, r1
	strbls	r1, [r3, #24]
.L894:
	cmp	r4, #3
	beq	.L897
	lsls	r1, r4, #30
	bmi	.L964
.L897:
	movs	r1, #1
	strb	r1, [r3, #29]
.L896:
	lsls	r7, r2, #13
	itttt	mi
	andmi	r4, r4, #251
	movmi	r0, #0
	strbmi	r4, [r3, #25]
	strhmi	r0, [r3, #22]	@ movhi
	lsls	r0, r4, #29
	ittt	mi
	addmi	r1, r1, #1
	uxtbmi	r1, r1
	strbmi	r1, [r3, #29]
	lsls	r7, r2, #16
	bpl	.L900
	tst	r4, #253
	beq	.L965
.L900:
	lsls	r2, r2, #11
	bpl	.L901
	ldrb	r2, [r5, #444]	@ zero_extendqisi2
	cmp	r2, r6
	itt	hi
	movhi	r6, r2
	strbhi	r2, [r3, #24]
	ldrb	r2, [r5, #445]	@ zero_extendqisi2
	cmp	r2, r1
	ittt	hi
	ldrbhi	r6, [r3, #24]	@ zero_extendqisi2
	movhi	r1, r2
	strbhi	r2, [r3, #29]
.L901:
	smulbb	r1, r1, r6
	uxtb	r1, r1
	cmp	r1, #7
	strb	r1, [r3, #30]
	iteet	ls
	ldrls	r6, [r3]
	lsrhi	r1, r1, #3
	ldrhi	r2, [r3]
	mulls	r1, r6, r1
	itee	hi
	mulhi	r1, r2, r1
	addls	r1, r1, #7
	lsrls	r1, r1, #3
	str	r1, [r3, #12]
	str	r1, [r5, #644]
	pop	{r3, r4, r5, r6, r7, pc}
.L963:
	movs	r1, #3
	mov	r4, r1
	strb	r1, [r3, #25]
.L891:
	lsls	r7, r2, #22
	bpl	.L892
	cmp	r6, #8
	bne	.L892
	cmp	r4, #3
	beq	.L897
	movs	r6, #16
	strb	r6, [r3, #24]
	b	.L894
.L880:
	ldrb	r4, [r1, #25]	@ zero_extendqisi2
	cmp	r4, #3
	beq	.L966
	ldrh	r1, [r0, #668]
	cbz	r1, .L884
	lsls	r6, r2, #6
	ittt	mi
	orrmi	r1, r4, #4
	movmi	r4, r1
	strbmi	r1, [r3, #25]
.L884:
	ldrb	r6, [r3, #24]	@ zero_extendqisi2
	cmp	r6, #7
	ittt	ls
	movls	r1, #8
	movls	r6, r1
	strbls	r1, [r3, #24]
	movs	r1, #0
	strh	r1, [r3, #22]	@ movhi
	b	.L881
.L964:
	movs	r0, #3
	mov	r1, r0
	strb	r0, [r3, #29]
	b	.L896
.L965:
	adds	r1, r1, #1
	lsls	r0, r2, #7
	uxtb	r1, r1
	itt	mi
	orrmi	r4, r4, #4
	strbmi	r4, [r3, #25]
	strb	r1, [r3, #29]
	b	.L900
.L962:
	lsls	r1, r2, #5
	ittt	mi
	movmi	r1, #8
	movmi	r6, r1
	strbmi	r1, [r3, #24]
	lsls	r7, r2, #21
	ittt	mi
	movmi	r1, #8
	movmi	r6, r1
	strbmi	r1, [r3, #24]
	b	.L887
.L966:
	ldrh	r4, [r0, #668]
	movs	r7, #0
	ldr	r1, [r0, #656]
	movs	r6, #8
	strb	r6, [r3, #24]
	cmp	r4, r7
	ite	eq
	moveq	r4, #2
	movne	r4, #6
	strh	r7, [r3, #22]	@ movhi
	strb	r4, [r3, #25]
	cmp	r1, #0
	bne	.L881
	ldr	r1, .L967
.LPIC55:
	add	r1, pc
	bl	png_error(PLT)
.L968:
	.align	2
.L967:
	.word	.LC17-(.LPIC55+4)
	.size	png_read_transform_info, .-png_read_transform_info
	.section	.text.png_do_read_transformations,"ax",%progbits
	.align	2
	.global	png_do_read_transformations
	.thumb
	.thumb_func
	.type	png_do_read_transformations, %function
png_do_read_transformations:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r7, [r0, #624]
	fstmfdd	sp!, {d8, d9}
	sub	sp, sp, #68
	cmp	r7, #0
	beq	.L1661
	ldr	r2, [r0, #452]
	movw	r3, #16448
	ands	r3, r3, r2
	cmp	r3, #16384
	beq	.L1662
	ldr	r3, [r0, #456]
	mov	fp, r1
	lsls	r2, r3, #19
	bpl	.L972
	ldrb	r2, [r1, #8]	@ zero_extendqisi2
	cmp	r2, #3
	beq	.L1663
	ldrh	r1, [r0, #668]
	cbz	r1, .L994
	lsls	r3, r3, #6
	bmi	.L1664
.L994:
	ldr	r1, [fp]
	cbnz	r2, .L972
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L972
	cmp	r3, #2
	add	r5, r7, #1
	beq	.L1031
	cmp	r3, #4
	beq	.L1032
	cmp	r3, #1
	beq	.L1665
.L1030:
	movs	r3, #8
	str	r1, [fp, #4]
	strb	r3, [fp, #9]
	strb	r3, [fp, #11]
.L972:
	ldr	r2, [r4, #456]
	movs	r3, #128
	movt	r3, 4
	ands	r3, r3, r2
	cmp	r3, #262144
	beq	.L1666
.L1040:
	ldr	r3, [r4, #456]
	tst	r3, #6291456
	bne	.L1667
.L1041:
	lsls	r7, r3, #17
	bmi	.L1668
.L1087:
	lsls	r0, r3, #24
	bmi	.L1669
.L1088:
	ldr	r5, [r4, #456]
	mov	r3, #8192
	movt	r3, 96
	ands	r3, r3, r5
	mov	r7, r5
	cmp	r3, #8192
	beq	.L1670
.L1089:
	movs	r3, #128
	mov	r2, r3
	movt	r3, 4
	movt	r2, 4
	ands	r3, r3, r7
	cmp	r3, r2
	beq	.L1671
.L1130:
	ldr	r5, [r4, #456]
	lsls	r0, r5, #8
	bmi	.L1672
.L1131:
	lsls	r3, r5, #5
	bmi	.L1673
.L1140:
	lsls	r7, r5, #21
	bmi	.L1674
.L1155:
	lsls	r6, r5, #25
	bmi	.L1675
.L1171:
	lsls	r0, r5, #22
	bmi	.L1676
.L1194:
	lsls	r1, r5, #17
	bmi	.L1677
.L1198:
	lsls	r3, r5, #26
	bmi	.L1678
.L1199:
	lsls	r7, r5, #12
	bmi	.L1679
.L1200:
	lsls	r6, r5, #28
	bmi	.L1680
.L1215:
	lsls	r6, r5, #29
	bmi	.L1681
.L1264:
	ldrb	r3, [fp, #8]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L1682
.L1275:
	ldr	r2, [r4, #456]
	lsls	r0, r2, #31
	bmi	.L1683
.L1276:
	lsls	r1, r2, #15
	bmi	.L1684
	lsls	r3, r2, #16
	bmi	.L1685
.L1278:
	lsls	r0, r2, #14
	bmi	.L1686
.L1310:
	lsls	r1, r2, #27
	bmi	.L1687
.L1322:
	lsls	r3, r2, #11
	bpl	.L969
	ldr	r3, [r4, #432]
	cbz	r3, .L1324
	ldr	r2, [r4, #624]
	mov	r0, r4
	mov	r1, fp
	adds	r2, r2, #1
	blx	r3
.L1324:
	ldrb	r3, [r4, #444]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1325
	ldrb	r2, [r4, #445]	@ zero_extendqisi2
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L1327
.L1693:
	ldrb	r2, [fp, #10]	@ zero_extendqisi2
.L1328:
	smulbb	r3, r2, r3
	ldr	r2, [fp]
	uxtb	r3, r3
	cmp	r3, #7
	strb	r3, [fp, #11]
	iteet	ls
	mulls	r3, r2, r3
	lsrhi	r3, r3, #3
	mulhi	r3, r2, r3
	addls	r3, r3, #7
	it	ls
	lsrls	r3, r3, #3
	str	r3, [fp, #4]
.L969:
	add	sp, sp, #68
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1672:
	ldrb	r2, [fp, #8]	@ zero_extendqisi2
	lsls	r1, r2, #29
	bpl	.L1131
	ldrb	r1, [fp, #9]	@ zero_extendqisi2
	ldr	r0, [r4, #624]
	ldr	r3, [fp]
	cmp	r1, #8
	add	r0, r0, #1
	beq	.L1688
	cmp	r1, #16
	beq	.L1689
.L1133:
	ldr	r1, .L1728
	mov	r0, r4
.LPIC68:
	add	r1, pc
	bl	png_warning(PLT)
.L1653:
	ldr	r5, [r4, #456]
	lsls	r3, r5, #5
	bpl	.L1140
.L1673:
	ldrb	r2, [fp, #9]	@ zero_extendqisi2
	ldr	r3, [r4, #624]
	cmp	r2, #16
	bne	.L1140
	ldr	r5, [fp, #4]
	adds	r2, r3, #1
	add	r5, r5, r2
	cmp	r2, r5
	bcs	.L1147
	adds	r0, r3, #3
	subs	r1, r5, r0
	adds	r1, r1, #1
	lsrs	r1, r1, #1
	adds	r1, r1, #1
	add	r7, r2, r1, lsl #1
	adds	r6, r2, r1
	cmp	r2, r6
	it	cc
	cmpcc	r2, r7
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	cmp	r1, #15
	ite	ls
	movls	r6, #0
	andhi	r6, r6, #1
	cmp	r6, #0
	beq	.L1142
	lsr	lr, r1, #4
	cmp	lr, #2
	lsl	r8, lr, #4
	bls	.L1343
	sub	r9, lr, #3
	vmov.i32	q10, #128  @ v4si
	bic	r9, r9, #1
	mov	r0, r2
	add	r9, r9, #2
	mov	ip, r2
	movs	r3, #0
.L1148:
	mov	r7, ip
	mov	r6, r0
	pld	[r0, #64]
	adds	r3, r3, #2
	vld2.8	{d16-d19}, [r7]!
	cmp	r3, r9
	add	ip, ip, #64
	add	r0, r0, #32
	vmovl.u8 q11, d16
	vmovl.u8 q15, d18
	vmovl.u8 q14, d17
	vmovl.u8 q13, d19
	vmovl.u16 q12, d22
	vmovl.u16 q9, d28
	vmovl.u16 q8, d29
	vmovl.u16 q11, d23
	vmovl.u16 q3, d30
	vmovl.u16 q14, d26
	vmovl.u16 q15, d31
	vmovl.u16 q13, d27
	vsub.i32	q3, q3, q12
	vsub.i32	q15, q15, q11
	vsub.i32	q14, q14, q9
	vsub.i32	q13, q13, q8
	vadd.i32	q3, q3, q10
	vadd.i32	q15, q15, q10
	vadd.i32	q14, q14, q10
	vadd.i32	q13, q13, q10
	vshl.i32	q4, q3, #16
	vshl.i32	q0, q15, #16
	vshl.i32	q1, q14, #16
	vshl.i32	q2, q13, #16
	vsub.i32	q3, q4, q3
	vsub.i32	q15, q0, q15
	vsub.i32	q14, q1, q14
	vsub.i32	q13, q2, q13
	vshr.s32	q3, q3, #24
	vshr.s32	q15, q15, #24
	vshr.s32	q14, q14, #24
	vshr.s32	q13, q13, #24
	vadd.i32	q12, q12, q3
	vadd.i32	q11, q11, q15
	vadd.i32	q9, q9, q14
	vadd.i32	q8, q8, q13
	vmovn.i32	d4, q12
	vmovn.i32	d5, q11
	vmovn.i32	d22, q9
	vmovn.i32	d23, q8
	vmovn.i16	d16, q2
	vmovn.i16	d17, q11
	vst1.8	{q8}, [r6]!
	vld2.8	{d16-d19}, [r7]
	vmovl.u8 q11, d16
	vmovl.u8 q15, d18
	vmovl.u8 q14, d17
	vmovl.u8 q13, d19
	vmovl.u16 q12, d22
	vmovl.u16 q9, d28
	vmovl.u16 q8, d29
	vmovl.u16 q11, d23
	vmovl.u16 q3, d30
	vmovl.u16 q14, d26
	vmovl.u16 q15, d31
	vmovl.u16 q13, d27
	vsub.i32	q3, q3, q12
	vsub.i32	q15, q15, q11
	vsub.i32	q14, q14, q9
	vsub.i32	q13, q13, q8
	vadd.i32	q3, q3, q10
	vadd.i32	q15, q15, q10
	vadd.i32	q14, q14, q10
	vadd.i32	q13, q13, q10
	vshl.i32	q4, q3, #16
	vshl.i32	q0, q15, #16
	vshl.i32	q2, q13, #16
	vshl.i32	q1, q14, #16
	vsub.i32	q3, q4, q3
	vsub.i32	q13, q2, q13
	vsub.i32	q15, q0, q15
	vsub.i32	q14, q1, q14
	vshr.s32	q3, q3, #24
	vshr.s32	q15, q15, #24
	vshr.s32	q14, q14, #24
	vshr.s32	q13, q13, #24
	vadd.i32	q11, q11, q15
	vadd.i32	q8, q8, q13
	vadd.i32	q12, q12, q3
	vadd.i32	q9, q9, q14
	vmovn.i32	d4, q12
	vmovn.i32	d5, q11
	vmovn.i32	d22, q9
	vmovn.i32	d23, q8
	vmovn.i16	d16, q2
	vmovn.i16	d17, q11
	vst1.8	{q8}, [r6]
	bne	.L1148
.L1143:
	vmov.i32	q10, #128  @ v4si
.L1150:
	vld2.8	{d16-d19}, [ip]!
	adds	r3, r3, #1
	cmp	lr, r3
	vmovl.u8 q11, d16
	vmovl.u8 q15, d18
	vmovl.u8 q14, d17
	vmovl.u8 q13, d19
	vmovl.u16 q12, d22
	vmovl.u16 q9, d28
	vmovl.u16 q8, d29
	vmovl.u16 q11, d23
	vmovl.u16 q3, d30
	vmovl.u16 q14, d26
	vmovl.u16 q15, d31
	vmovl.u16 q13, d27
	vsub.i32	q3, q3, q12
	vsub.i32	q15, q15, q11
	vsub.i32	q14, q14, q9
	vsub.i32	q13, q13, q8
	vadd.i32	q3, q3, q10
	vadd.i32	q15, q15, q10
	vadd.i32	q14, q14, q10
	vadd.i32	q13, q13, q10
	vshl.i32	q4, q3, #16
	vshl.i32	q0, q15, #16
	vshl.i32	q1, q14, #16
	vshl.i32	q2, q13, #16
	vsub.i32	q3, q4, q3
	vsub.i32	q15, q0, q15
	vsub.i32	q14, q1, q14
	vsub.i32	q13, q2, q13
	vshr.s32	q3, q3, #24
	vshr.s32	q15, q15, #24
	vshr.s32	q13, q13, #24
	vshr.s32	q14, q14, #24
	vadd.i32	q8, q8, q13
	vadd.i32	q11, q11, q15
	vadd.i32	q12, q12, q3
	vadd.i32	q9, q9, q14
	vmovn.i32	d26, q12
	vmovn.i32	d27, q11
	vmovn.i32	d22, q9
	vmovn.i32	d23, q8
	vmovn.i16	d16, q13
	vmovn.i16	d17, q11
	vst1.8	{q8}, [r0]!
	bhi	.L1150
	cmp	r8, r1
	add	r3, r2, r8, lsl #1
	add	r2, r2, r8
	beq	.L1147
.L1146:
	ldrb	r1, [r3]	@ zero_extendqisi2
	adds	r3, r3, #2
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	cmp	r5, r3
	sub	r0, r0, r1
	add	r0, r0, #128
	rsb	r0, r0, r0, lsl #16
	add	r1, r1, r0, asr #24
	strb	r1, [r2], #1
	bhi	.L1146
.L1147:
	ldrb	r3, [fp, #10]	@ zero_extendqisi2
	movs	r1, #8
	ldr	r2, [fp]
	strb	r1, [fp, #9]
	lsls	r1, r3, #3
	mul	r3, r2, r3
	strb	r1, [fp, #11]
	ldr	r5, [r4, #456]
	str	r3, [fp, #4]
	lsls	r7, r5, #21
	bpl	.L1155
.L1674:
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	ldr	r6, [r4, #624]
	cmp	r3, #16
	bne	.L1155
	ldr	r0, [fp, #4]
	adds	r1, r6, #1
	add	r0, r0, r1
	cmp	r1, r0
	bcs	.L1163
	adds	r3, r6, #3
	rsb	lr, r3, r0
	add	lr, lr, #1
	lsr	r2, lr, #1
	adds	r2, r2, #1
	add	r7, r1, r2, lsl #1
	adds	r5, r1, r2
	cmp	r1, r5
	it	cc
	cmpcc	r1, r7
	ite	cs
	movcs	r5, #1
	movcc	r5, #0
	cmp	r2, #15
	ite	ls
	movls	r5, #0
	andhi	r5, r5, #1
	cmp	r5, #0
	beq	.L1157
	lsr	lr, lr, #5
	lsl	r8, lr, #4
	cmp	lr, #0
	beq	.L1345
	cmp	lr, #2
	bls	.L1346
	sub	r9, lr, #3
	mov	r5, r1
	bic	r9, r9, #1
	mov	ip, r1
	add	r9, r9, #2
	movs	r3, #0
.L1164:
	mov	r7, ip
	mov	r6, r5
	adds	r3, r3, #2
	pld	[r5, #112]
	vld2.8	{d16-d19}, [r7]!
	cmp	r3, r9
	add	ip, ip, #64
	add	r5, r5, #32
	vst1.8	{q8}, [r6]!
	vld2.8	{d16-d19}, [r7]
	vst1.8	{q8}, [r6]
	bne	.L1164
.L1166:
	adds	r3, r3, #1
	vld2.8	{d16-d19}, [ip]!
	cmp	lr, r3
	vst1.8	{q8}, [r5]!
	bhi	.L1166
	cmp	r8, r2
	add	r3, r1, r8
	add	r1, r3, r8
	beq	.L1163
.L1162:
	ldrb	r2, [r1], #2	@ zero_extendqisi2
	cmp	r0, r1
	strb	r2, [r3], #1
	bhi	.L1162
.L1163:
	ldrb	r3, [fp, #10]	@ zero_extendqisi2
	movs	r1, #8
	ldr	r2, [fp]
	strb	r1, [fp, #9]
	lsls	r1, r3, #3
	mul	r3, r2, r3
	strb	r1, [fp, #11]
	ldr	r5, [r4, #456]
	str	r3, [fp, #4]
	lsls	r6, r5, #25
	bpl	.L1171
.L1675:
	ldrb	r1, [fp, #9]	@ zero_extendqisi2
	ldr	r6, [fp]
	ldr	r5, [r4, #624]
	cmp	r1, #8
	ldr	r3, [r4, #852]
	ldr	r0, [r4, #856]
	str	r6, [sp, #4]
	beq	.L1172
.L1654:
	ldr	r3, [fp, #4]
.L1173:
	cmp	r3, #0
	beq	.L1193
	ldr	r5, [r4, #456]
	lsls	r0, r5, #22
	bpl	.L1194
.L1676:
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	ldr	r2, [r4, #624]
	cmp	r3, #8
	bne	.L1194
	ldrb	r3, [fp, #8]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L1194
	ldr	r1, [fp, #4]
	adds	r2, r2, #1
	add	r2, r2, r1
	adds	r3, r2, r1
	cmp	r2, r3
	bcs	.L1195
.L1197:
	ldrb	r1, [r2, #-1]!	@ zero_extendqisi2
	strb	r1, [r3, #-1]
	strb	r1, [r3, #-2]!
	cmp	r2, r3
	bcc	.L1197
	ldr	r1, [fp, #4]
.L1195:
	ldrb	r3, [fp, #10]	@ zero_extendqisi2
	lsls	r1, r1, #1
	movs	r2, #16
	strb	r2, [fp, #9]
	str	r1, [fp, #4]
	lsls	r3, r3, #4
	strb	r3, [fp, #11]
	ldr	r5, [r4, #456]
	b	.L1194
.L1668:
	ldr	r2, [r4, #448]
	lsls	r5, r2, #20
	bmi	.L1087
	ldr	r1, [r4, #624]
	mov	r0, fp
	adds	r1, r1, #1
	bl	png_do_gray_to_rgb(PLT)
	ldr	r3, [r4, #456]
	lsls	r0, r3, #24
	bpl	.L1088
.L1669:
	ldr	r1, [r4, #624]
	mov	r0, fp
	mov	r2, r4
	adds	r1, r1, #1
	bl	png_do_compose(PLT)
	b	.L1088
.L1677:
	ldr	r3, [r4, #448]
	lsls	r2, r3, #20
	bpl	.L1198
	ldr	r1, [r4, #624]
	mov	r0, fp
	adds	r1, r1, #1
	bl	png_do_gray_to_rgb(PLT)
	ldr	r5, [r4, #456]
	lsls	r3, r5, #26
	bpl	.L1199
.L1678:
	ldr	r1, [r4, #624]
	mov	r0, fp
	adds	r1, r1, #1
	bl	png_do_invert(PLT)
	ldr	r5, [r4, #456]
	lsls	r7, r5, #12
	bpl	.L1200
.L1679:
	ldrb	r2, [fp, #8]	@ zero_extendqisi2
	ldr	r1, [r4, #624]
	ldr	r3, [fp]
	cmp	r2, #6
	add	r1, r1, #1
	beq	.L1690
	cmp	r2, #4
	bne	.L1200
	ldrb	r2, [fp, #9]	@ zero_extendqisi2
	cmp	r2, #8
	ldr	r2, [fp, #4]
	add	r1, r1, r2
	beq	.L1691
	cmp	r3, #0
	beq	.L1200
	movs	r2, #0
.L1214:
	ldrb	r5, [r1, #-1]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldrb	r0, [r1, #-2]	@ zero_extendqisi2
	cmp	r2, r3
	sub	r1, r1, #4
	mvn	r5, r5
	mvn	r0, r0
	strb	r5, [r1, #3]
	strb	r0, [r1, #2]
	bne	.L1214
.L1655:
	ldr	r5, [r4, #456]
	lsls	r6, r5, #28
	bpl	.L1215
.L1680:
	ldrb	r1, [fp, #8]	@ zero_extendqisi2
	ldr	r6, [r4, #624]
	cmp	r1, #3
	beq	.L1215
	lsls	r0, r1, #30
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	bmi	.L1692
	ldrb	r0, [r4, #764]	@ zero_extendqisi2
	movs	r7, #2
	movs	r2, #1
	subs	r0, r3, r0
.L1217:
	lsls	r1, r1, #29
	str	r0, [sp, #48]
	bpl	.L1218
	ldrb	r0, [r4, #765]	@ zero_extendqisi2
	add	r8, sp, #64
	add	r1, r8, r2, lsl #2
	mov	r2, r7
	subs	r0, r3, r0
	str	r0, [r1, #-16]
.L1218:
	ldr	r1, [sp, #48]
	cmp	r1, #0
	ble	.L1221
	cmp	r3, r1
	ble	.L1221
	movs	r0, #1
.L1220:
	cmp	r2, #1
	ble	.L1222
	ldr	r1, [sp, #52]
	cmp	r1, #0
	ble	.L1225
	cmp	r3, r1
	ble	.L1225
	movs	r0, #1
.L1224:
	cmp	r2, #2
	ble	.L1222
	ldr	r1, [sp, #56]
	cmp	r1, #0
	ble	.L1228
	cmp	r3, r1
	ble	.L1228
	movs	r0, #1
.L1227:
	cmp	r2, #3
	ble	.L1222
	ldr	r1, [sp, #60]
	cmp	r1, #0
	ble	.L1229
	cmp	r3, r1
	ble	.L1229
.L1509:
	subs	r1, r3, #2
	adds	r3, r6, #1
	cmp	r1, #14
	bhi	.L1215
	adr	r9, .L1234
	ldr	lr, [r9, r1, lsl #2]
	add	r9, r9, lr
	bx	r9
	.p2align 2
.L1234:
	.word	.L1233+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1235+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1236+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1215+1-.L1234
	.word	.L1237+1-.L1234
.L1325:
	strb	r3, [fp, #9]
	ldrb	r2, [r4, #445]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L1693
.L1327:
	strb	r2, [fp, #10]
	b	.L1328
.L1667:
	ldrb	r2, [fp, #8]	@ zero_extendqisi2
	ldr	r1, [r4, #624]
	and	r0, r2, #3
	cmp	r0, #2
	bne	.L1041
	ldrh	r0, [r4, #942]
	adds	r3, r1, #1
	ldrh	r5, [r4, #944]
	mov	r7, r3
	ubfx	r6, r2, #2, #1
	str	r0, [sp, #4]
	ldr	r0, [fp]
	str	r5, [sp, #12]
	ldr	r8, [sp, #4]
	ldrb	r5, [fp, #9]	@ zero_extendqisi2
	str	r0, [sp, #20]
	ldr	r0, [sp, #12]
	cmp	r5, #8
	add	r0, r0, r8
	rsb	r0, r0, #32768
	str	r0, [sp, #16]
	beq	.L1694
	ldr	r0, [r4, #752]
	cmp	r0, #0
	beq	.L1068
	ldr	r0, [r4, #748]
	cmp	r0, #0
	beq	.L1068
	ldr	r0, [sp, #20]
	cmp	r0, #0
	beq	.L1648
	mov	lr, #0
	mov	r7, r0
	mov	r2, r3
	mov	r1, lr
	str	fp, [sp, #24]
	b	.L1076
.L1695:
	ldr	r5, [r4, #736]
	cbz	r5, .L1072
	ldr	r0, [r4, #724]
	uxtb	ip, r8
	lsr	r8, r8, #8
	asr	r0, ip, r0
	ldr	r0, [r5, r0, lsl #2]
	ldrh	r8, [r0, r8, lsl #1]
.L1072:
	lsr	r0, r8, #8
	strb	r8, [r2, #1]
	strb	r0, [r2]
	cmp	r6, #0
	bne	.L1073
.L1696:
	adds	r3, r3, #6
	adds	r2, r2, #2
.L1074:
	adds	r1, r1, #1
	cmp	r1, r7
	beq	.L1649
.L1076:
	ldrb	r9, [r3]	@ zero_extendqisi2
	ldrb	r8, [r3, #1]	@ zero_extendqisi2
	ldrb	fp, [r3, #2]	@ zero_extendqisi2
	ldrb	r5, [r3, #3]	@ zero_extendqisi2
	ldrb	ip, [r3, #4]	@ zero_extendqisi2
	ldrb	r0, [r3, #5]	@ zero_extendqisi2
	orr	r8, r8, r9, lsl #8
	orr	fp, r5, fp, lsl #8
	orr	ip, r0, ip, lsl #8
	cmp	r8, ip
	it	eq
	cmpeq	r8, fp
	beq	.L1695
	ldr	r0, [r4, #724]
	uxtb	r9, fp
	ldr	r5, [r4, #752]
	uxtb	lr, r8
	lsr	fp, fp, #8
	lsr	r8, r8, #8
	asr	r9, r9, r0
	asr	lr, lr, r0
	ldr	r10, [r5, r9, lsl #2]
	uxtb	r9, ip
	ldr	lr, [r5, lr, lsl #2]
	lsr	ip, ip, #8
	asr	r9, r9, r0
	ldrh	r10, [r10, fp, lsl #1]
	ldr	r9, [r5, r9, lsl #2]
	ldr	r5, [sp, #12]
	ldrh	r8, [lr, r8, lsl #1]
	mov	lr, #1
	ldrh	ip, [r9, ip, lsl #1]
	ldr	r9, [sp, #4]
	mul	r10, r5, r10
	ldr	fp, [sp, #16]
	ldr	r5, [r4, #748]
	mla	r10, r9, r8, r10
	add	r10, r10, #16384
	mla	ip, fp, ip, r10
	ubfx	ip, ip, #15, #16
	uxtb	r8, ip
	lsr	ip, ip, #8
	asr	r0, r8, r0
	ldr	r0, [r5, r0, lsl #2]
	ldrh	r8, [r0, ip, lsl #1]
	strb	r8, [r2, #1]
	lsr	r0, r8, #8
	strb	r0, [r2]
	cmp	r6, #0
	beq	.L1696
.L1073:
	ldrb	r0, [r3, #6]	@ zero_extendqisi2
	adds	r2, r2, #4
	adds	r3, r3, #8
	strb	r0, [r2, #-2]
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	strb	r0, [r2, #-1]
	b	.L1074
.L1687:
	ldr	r1, [r4, #624]
	mov	r0, fp
	adds	r1, r1, #1
	bl	png_do_swap(PLT)
	ldr	r2, [r4, #456]
	b	.L1322
.L1684:
	ldr	r1, [r4, #624]
	mov	r0, fp
	adds	r1, r1, #1
	bl	png_do_packswap(PLT)
	ldr	r2, [r4, #456]
	lsls	r3, r2, #16
	bpl	.L1278
.L1685:
	ldrh	r3, [r4, #684]
	ldrb	r6, [fp, #8]	@ zero_extendqisi2
	ldr	r5, [r4, #624]
	ldr	r7, [r4, #452]
	lsrs	r0, r3, #8
	ldr	r1, [fp]
	uxtb	r3, r3
	adds	r5, r5, #1
	cmp	r6, #0
	bne	.L1279
	ldrb	r6, [fp, #9]	@ zero_extendqisi2
	cmp	r6, #8
	beq	.L1697
	cmp	r6, #16
	bne	.L1278
	ands	r7, r7, #128
	beq	.L1288
	cmp	r1, #1
	add	r7, r5, r1, lsl #1
	add	r5, r5, r1, lsl #2
	bls	.L1289
	mov	r2, r5
	movs	r6, #1
.L1291:
	strb	r0, [r2, #-1]
	adds	r6, r6, #1
	strb	r3, [r2, #-2]
	cmp	r6, r1
	ldrb	lr, [r7, #-1]	@ zero_extendqisi2
	strb	lr, [r2, #-3]
	ldrb	lr, [r7, #-2]!	@ zero_extendqisi2
	strb	lr, [r2, #-4]!
	bne	.L1291
	lsls	r2, r1, #2
	rsb	r2, r2, #4
	add	r5, r5, r2
.L1289:
	lsls	r1, r1, #2
	movs	r2, #32
	movs	r6, #2
	strb	r0, [r5, #-1]
	strb	r3, [r5, #-2]
	strb	r6, [fp, #10]
	strb	r2, [fp, #11]
	str	r1, [fp, #4]
	ldr	r2, [r4, #456]
	b	.L1278
.L1683:
	ldr	r1, [r4, #624]
	mov	r0, fp
	adds	r1, r1, #1
	bl	png_do_bgr(PLT)
	ldr	r2, [r4, #456]
	b	.L1276
.L1681:
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	ldr	r1, [r4, #624]
	cmp	r3, #7
	bhi	.L1264
	cmp	r3, #2
	add	r7, r1, #1
	ldr	r6, [fp]
	beq	.L1266
	cmp	r3, #4
	beq	.L1267
	cmp	r3, #1
	beq	.L1698
.L1265:
	ldrb	r3, [fp, #10]	@ zero_extendqisi2
	movs	r2, #8
	strb	r2, [fp, #9]
	mul	r6, r6, r3
	lsls	r3, r3, #3
	strb	r3, [fp, #11]
	ldrb	r3, [fp, #8]	@ zero_extendqisi2
	str	r6, [fp, #4]
	cmp	r3, #3
	bne	.L1275
.L1682:
	ldr	r3, [r4, #664]
	cmp	r3, #0
	blt	.L1275
	mov	r0, r4
	mov	r1, fp
	bl	png_do_check_palette_indexes(PLT)
	b	.L1275
.L1686:
	ldrb	r0, [fp, #8]	@ zero_extendqisi2
	ldr	r3, [r4, #624]
	ldr	r1, [fp]
	cmp	r0, #6
	add	r3, r3, #1
	beq	.L1699
	cmp	r0, #4
	bne	.L1310
	ldrb	r0, [fp, #9]	@ zero_extendqisi2
	cmp	r0, #8
	ldr	r0, [fp, #4]
	add	r3, r3, r0
	beq	.L1700
	cmp	r1, #0
	beq	.L1310
	movs	r2, #0
.L1321:
	ldrb	r7, [r3, #-1]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldrb	r6, [r3, #-3]	@ zero_extendqisi2
	cmp	r2, r1
	ldrb	r0, [r3, #-2]	@ zero_extendqisi2
	ldrb	r5, [r3, #-4]	@ zero_extendqisi2
	strb	r7, [r3, #-3]
	strb	r6, [r3, #-1]
	strb	r5, [r3, #-2]
	strb	r0, [r3, #-4]!
	bne	.L1321
.L1659:
	ldr	r2, [r4, #456]
	b	.L1310
.L1666:
	ldrb	r3, [fp, #8]	@ zero_extendqisi2
	and	r3, r3, #253
	cmp	r3, #4
	bne	.L1040
	ldr	r1, [r4, #624]
	mov	r0, fp
	movs	r2, #0
	adds	r1, r1, #1
	bl	png_do_strip_channel(PLT)
	b	.L1040
.L1670:
	lsls	r1, r5, #24
	bmi	.L1090
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
.L1091:
	cmp	r3, #3
	beq	.L1089
	ldrb	lr, [fp, #9]	@ zero_extendqisi2
	ldr	r2, [r4, #624]
	ldr	r1, [r4, #732]
	cmp	lr, #8
	ldr	r3, [r4, #736]
	str	r2, [sp, #4]
	ldr	r0, [fp]
	ldr	r2, [r4, #724]
	bls	.L1701
	cmp	lr, #16
	bne	.L1089
	cmp	r3, #0
	beq	.L1089
.L1093:
	ldr	r6, [sp, #4]
	ldrb	ip, [fp, #8]	@ zero_extendqisi2
	adds	r6, r6, #1
	cmp	ip, #6
	bhi	.L1089
	adr	r8, .L1095
	ldr	r9, [r8, ip, lsl #2]
	add	r8, r8, r9
	bx	r8
	.p2align 2
.L1095:
	.word	.L1094+1-.L1095
	.word	.L1089+1-.L1095
	.word	.L1096+1-.L1095
	.word	.L1089+1-.L1095
	.word	.L1097+1-.L1095
	.word	.L1089+1-.L1095
	.word	.L1098+1-.L1095
.L1671:
	ldrb	r3, [fp, #8]	@ zero_extendqisi2
	and	r3, r3, #253
	cmp	r3, #4
	bne	.L1130
	ldr	r1, [r4, #624]
	mov	r0, fp
	movs	r2, #0
	adds	r1, r1, #1
	bl	png_do_strip_channel(PLT)
	b	.L1130
.L1279:
	cmp	r6, #2
	bne	.L1278
	ldrb	r6, [fp, #9]	@ zero_extendqisi2
	cmp	r6, #8
	beq	.L1702
	cmp	r6, #16
	bne	.L1278
	ands	r7, r7, #128
	beq	.L1303
	lsl	lr, r1, #1
	cmp	r1, #1
	add	r2, lr, r1
	add	r5, r5, r2, lsl #1
	add	lr, lr, r5
	bls	.L1304
	mov	r2, lr
	movs	r6, #1
.L1306:
	strb	r0, [r2, #-1]
	adds	r6, r6, #1
	strb	r3, [r2, #-2]
	cmp	r6, r1
	ldrb	r7, [r5, #-1]	@ zero_extendqisi2
	strb	r7, [r2, #-3]
	ldrb	r7, [r5, #-2]	@ zero_extendqisi2
	strb	r7, [r2, #-4]
	ldrb	r7, [r5, #-3]	@ zero_extendqisi2
	strb	r7, [r2, #-5]
	ldrb	r7, [r5, #-4]	@ zero_extendqisi2
	strb	r7, [r2, #-6]
	ldrb	r7, [r5, #-5]	@ zero_extendqisi2
	strb	r7, [r2, #-7]
	ldrb	r7, [r5, #-6]!	@ zero_extendqisi2
	strb	r7, [r2, #-8]!
	bne	.L1306
	lsls	r2, r1, #3
	rsb	r2, r2, #8
	add	lr, lr, r2
.L1304:
	lsls	r1, r1, #3
	movs	r2, #64
	movs	r5, #4
	strb	r0, [lr, #-1]
	strb	r3, [lr, #-2]
	strb	r5, [fp, #10]
	strb	r2, [fp, #11]
	str	r1, [fp, #4]
	ldr	r2, [r4, #456]
	b	.L1278
.L1090:
	ldrh	r3, [r4, #668]
	cmp	r3, #0
	bne	.L1089
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
	lsls	r2, r3, #29
	bmi	.L1089
	b	.L1091
.L1692:
	ldrb	ip, [r4, #762]	@ zero_extendqisi2
	movs	r7, #4
	ldrb	lr, [r4, #763]	@ zero_extendqisi2
	movs	r2, #3
	ldrb	r0, [r4, #761]	@ zero_extendqisi2
	rsb	ip, ip, r3
	rsb	lr, lr, r3
	str	ip, [sp, #52]
	str	lr, [sp, #56]
	subs	r0, r3, r0
	b	.L1217
.L1172:
	ldrb	r6, [fp, #8]	@ zero_extendqisi2
	adds	r2, r5, #1
	cmp	r6, #2
	beq	.L1703
	cmp	r6, #6
	beq	.L1704
	cmp	r6, #3
	bne	.L1654
	cmp	r0, #0
	beq	.L1654
	ldr	r1, [sp, #4]
	cmp	r1, #0
	beq	.L1654
	mov	r2, r1
	add	r2, r2, r5
.L1192:
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	strb	r3, [r5, #1]!
	cmp	r5, r2
	bne	.L1192
	b	.L1654
.L1229:
	movs	r1, #0
	str	r1, [sp, #60]
.L1222:
	cmp	r0, #0
	beq	.L1215
	b	.L1509
.L1221:
	movs	r0, #0
	str	r0, [sp, #48]
	b	.L1220
.L1228:
	movs	r1, #0
	str	r1, [sp, #56]
	b	.L1227
.L1225:
	movs	r1, #0
	str	r1, [sp, #52]
	b	.L1224
.L1664:
	adds	r7, r7, #1
	ldr	r1, [fp]
	cmp	r2, #0
	bne	.L995
	ldrb	r0, [fp, #9]	@ zero_extendqisi2
	ldrh	r6, [r4, #780]
	cmp	r0, #7
	bhi	.L996
	cmp	r0, #2
	beq	.L998
	cmp	r0, #4
	beq	.L999
	cmp	r0, #1
	it	ne
	addne	r3, r1, #-1
	beq	.L1705
.L997:
	movs	r2, #8
	str	r1, [fp, #4]
	strb	r2, [fp, #9]
	strb	r2, [fp, #11]
.L1005:
	add	r2, r7, r1, lsl #1
	uxtb	r6, r6
	add	r3, r3, r7
	subs	r2, r2, #1
	cmp	r1, #0
	beq	.L1336
	subs	r2, r2, #2
	subs	r5, r3, r1
.L1010:
	ldrb	r0, [r3]	@ zero_extendqisi2
	subs	r2, r2, #2
	cmp	r6, r0
	ite	ne
	movne	r0, #-1
	moveq	r0, #0
	strb	r0, [r2, #4]
	ldrb	r0, [r3], #-1	@ zero_extendqisi2
	cmp	r3, r5
	strb	r0, [r2, #3]
	bne	.L1010
.L1644:
	ldrb	r0, [fp, #9]	@ zero_extendqisi2
.L1009:
	lsls	r0, r0, #1
	movs	r2, #4
	movs	r3, #2
	strb	r2, [fp, #8]
	uxtb	r0, r0
	strb	r3, [fp, #10]
	cmp	r0, #7
	strb	r0, [fp, #11]
	bls	.L1015
.L1331:
	lsrs	r0, r0, #3
	mul	r1, r1, r0
	b	.L1029
.L1690:
	ldrb	r2, [fp, #9]	@ zero_extendqisi2
	cmp	r2, #8
	ldr	r2, [fp, #4]
	add	r1, r1, r2
	beq	.L1706
	cmp	r3, #0
	beq	.L1200
	movs	r2, #0
.L1209:
	ldrb	r5, [r1, #-1]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldrb	r0, [r1, #-2]	@ zero_extendqisi2
	cmp	r2, r3
	sub	r1, r1, #8
	mvn	r5, r5
	mvn	r0, r0
	strb	r5, [r1, #7]
	strb	r0, [r1, #6]
	bne	.L1209
	b	.L1655
.L1699:
	ldrb	r0, [fp, #9]	@ zero_extendqisi2
	cmp	r0, #8
	ldr	r0, [fp, #4]
	add	r3, r3, r0
	beq	.L1707
	cmp	r1, #0
	beq	.L1310
	movs	r2, #0
.L1316:
	ldrb	r9, [r3, #-1]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldrb	r8, [r3, #-7]	@ zero_extendqisi2
	cmp	r2, r1
	ldrb	ip, [r3, #-5]	@ zero_extendqisi2
	ldrb	lr, [r3, #-3]	@ zero_extendqisi2
	ldrb	r7, [r3, #-4]	@ zero_extendqisi2
	ldrb	r6, [r3, #-6]	@ zero_extendqisi2
	ldrb	r0, [r3, #-2]	@ zero_extendqisi2
	ldrb	r5, [r3, #-8]	@ zero_extendqisi2
	strb	r9, [r3, #-7]
	strb	r8, [r3, #-5]
	strb	ip, [r3, #-3]
	strb	lr, [r3, #-1]
	strb	r7, [r3, #-2]
	strb	r6, [r3, #-4]
	strb	r5, [r3, #-6]
	strb	r0, [r3, #-8]!
	bne	.L1316
	b	.L1659
.L1068:
	ldr	r0, [sp, #20]
	cmp	r0, #0
	beq	.L1648
	cmp	r6, #0
	bne	.L1077
	ldr	r2, [sp, #20]
	ldr	r0, [sp, #20]
	cmp	r2, #5
	sub	r0, r0, #4
	str	r0, [sp, #32]
	bls	.L1340
	adds	r5, r1, #2
	add	ip, r1, #4
	mov	r10, r7
	mov	lr, r6
	mov	r3, r6
	add	r2, r1, #31
	add	r9, r1, #11
	adds	r0, r1, #3
	adds	r6, r1, #5
	str	r4, [sp, #40]
	mov	r1, r5
	mov	r4, ip
	mov	r5, r10
	str	fp, [sp, #44]
	b	.L1079
.L1729:
	.align	2
.L1728:
	.word	.LC21-(.LPIC68+4)
.L1708:
	ldr	r3, [sp, #24]
.L1079:
	ldrb	fp, [r4, #1]	@ zero_extendqisi2
	adds	r7, r3, #6
	ldrb	ip, [r1, #1]	@ zero_extendqisi2
	adds	r3, r3, #5
	str	r7, [sp, #8]
	adds	r1, r1, #30
	ldrb	r7, [r0, #1]	@ zero_extendqisi2
	add	r10, r10, #30
	str	fp, [sp, #28]
	adds	r0, r0, #30
	ldr	fp, [sp, #12]
	adds	r4, r4, #30
	ldrb	r8, [r2, #-30]	@ zero_extendqisi2
	adds	r6, r6, #30
	orr	r7, r7, ip, lsl #8
	str	r3, [sp, #24]
	ldrb	r3, [r10, #-29]	@ zero_extendqisi2
	adds	r5, r5, #10
	mul	ip, fp, r7
	ldr	fp, [sp, #4]
	pld	[r2, #12]
	pld	[r2, #13]
	orr	r3, r3, r8, lsl #8
	ldrb	r8, [r6, #-29]	@ zero_extendqisi2
	pld	[r2, #14]
	mla	ip, fp, r3, ip
	ldr	fp, [sp, #28]
	pld	[r2, #15]
	str	r2, [sp, #36]
	adds	r2, r2, #30
	str	r9, [sp, #28]
	add	r9, r9, #10
	orr	r8, r8, fp, lsl #8
	add	ip, ip, #16384
	cmp	r3, r7
	it	eq
	cmpeq	r3, r8
	ldr	r3, [sp, #16]
	it	ne
	movne	lr, #1
	str	lr, [sp]
	ldr	lr, [sp, #12]
	mla	ip, r3, r8, ip
	lsr	ip, ip, #15
	ubfx	r3, ip, #8, #8
	strb	r3, [r9, #-20]
	strb	ip, [r5, #-9]
	ldrb	ip, [r1, #-23]	@ zero_extendqisi2
	ldrb	r7, [r0, #-23]	@ zero_extendqisi2
	ldrb	r8, [r2, #-54]	@ zero_extendqisi2
	ldrb	r3, [r10, #-23]	@ zero_extendqisi2
	ldrb	fp, [r4, #-23]	@ zero_extendqisi2
	orr	r7, r7, ip, lsl #8
	orr	r3, r3, r8, lsl #8
	ldrb	r8, [r6, #-23]	@ zero_extendqisi2
	mul	ip, lr, r7
	ldr	lr, [sp, #4]
	orr	r8, r8, fp, lsl #8
	mla	ip, lr, r3, ip
	cmp	r3, r7
	it	eq
	cmpeq	r3, r8
	ldr	r3, [sp, #16]
	ldr	r7, [sp]
	it	ne
	movne	r7, #1
	add	ip, ip, #16384
	mla	ip, r3, r8, ip
	str	r7, [sp]
	lsr	ip, ip, #15
	ubfx	r3, ip, #8, #8
	strb	r3, [r9, #-18]
	strb	ip, [r5, #-7]
	ldrb	ip, [r1, #-17]	@ zero_extendqisi2
	ldrb	r7, [r0, #-17]	@ zero_extendqisi2
	ldrb	r8, [r2, #-48]	@ zero_extendqisi2
	ldrb	r3, [r10, #-17]	@ zero_extendqisi2
	ldr	lr, [sp, #12]
	orr	r7, r7, ip, lsl #8
	ldrb	fp, [r4, #-17]	@ zero_extendqisi2
	orr	r3, r3, r8, lsl #8
	ldrb	r8, [r6, #-17]	@ zero_extendqisi2
	mul	ip, lr, r7
	ldr	lr, [sp, #4]
	orr	r8, r8, fp, lsl #8
	mla	ip, lr, r3, ip
	ldr	lr, [sp, #12]
	cmp	r3, r7
	it	eq
	cmpeq	r3, r8
	ldr	r3, [sp, #16]
	ldr	r7, [sp]
	it	ne
	movne	r7, #1
	add	ip, ip, #16384
	mla	ip, r3, r8, ip
	str	r7, [sp]
	lsr	ip, ip, #15
	ubfx	r3, ip, #8, #8
	strb	r3, [r9, #-16]
	strb	ip, [r5, #-5]
	ldrb	ip, [r1, #-11]	@ zero_extendqisi2
	ldrb	r7, [r0, #-11]	@ zero_extendqisi2
	ldrb	r8, [r2, #-42]	@ zero_extendqisi2
	ldrb	r3, [r10, #-11]	@ zero_extendqisi2
	ldrb	fp, [r4, #-11]	@ zero_extendqisi2
	orr	r7, r7, ip, lsl #8
	orr	r3, r3, r8, lsl #8
	ldrb	r8, [r6, #-11]	@ zero_extendqisi2
	mul	ip, lr, r7
	ldr	lr, [sp, #4]
	orr	r8, r8, fp, lsl #8
	mla	ip, lr, r3, ip
	ldr	lr, [sp, #12]
	cmp	r3, r7
	it	eq
	cmpeq	r3, r8
	ldr	r3, [sp, #16]
	ldr	r7, [sp]
	it	ne
	movne	r7, #1
	add	ip, ip, #16384
	mla	ip, r3, r8, ip
	str	r7, [sp]
	lsr	ip, ip, #15
	ubfx	r3, ip, #8, #8
	strb	r3, [r9, #-14]
	strb	ip, [r5, #-3]
	ldrb	ip, [r1, #-5]	@ zero_extendqisi2
	ldrb	r7, [r0, #-5]	@ zero_extendqisi2
	ldrb	r8, [r2, #-36]	@ zero_extendqisi2
	ldrb	r3, [r10, #-5]	@ zero_extendqisi2
	ldrb	fp, [r4, #-5]	@ zero_extendqisi2
	orr	r7, r7, ip, lsl #8
	orr	r3, r3, r8, lsl #8
	ldrb	r8, [r6, #-5]	@ zero_extendqisi2
	mul	ip, lr, r7
	ldr	lr, [sp, #4]
	orr	r8, r8, fp, lsl #8
	mla	ip, lr, r3, ip
	ldr	lr, [sp]
	cmp	r3, r7
	it	eq
	cmpeq	r3, r8
	ldr	r3, [sp, #16]
	it	ne
	movne	lr, #1
	add	ip, ip, #16384
	mla	ip, r3, r8, ip
	lsr	ip, ip, #15
	ubfx	r3, ip, #8, #8
	strb	r3, [r9, #-12]
	ldr	r7, [sp, #32]
	ldr	r8, [sp, #8]
	strb	ip, [r5, #-1]
	cmp	r7, r8
	bhi	.L1708
	ldr	r3, [sp, #36]
	ldr	r1, [sp, #24]
	ldr	r4, [sp, #40]
	ldr	fp, [sp, #44]
	ldr	r2, [sp, #28]
.L1078:
	str	fp, [sp, #24]
	adds	r2, r2, #2
	ldr	r8, [sp, #4]
	ldr	r9, [sp, #12]
	ldr	r10, [sp, #16]
	ldr	fp, [sp, #20]
	str	r4, [sp, #8]
.L1081:
	ldrb	r4, [r3, #2]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r0, [r3, #3]	@ zero_extendqisi2
	adds	r2, r2, #2
	ldrb	ip, [r3]	@ zero_extendqisi2
	adds	r3, r3, #6
	ldrb	r7, [r3, #-5]	@ zero_extendqisi2
	ldrb	r6, [r3, #-2]	@ zero_extendqisi2
	orr	r0, r0, r4, lsl #8
	ldrb	r5, [r3, #-1]	@ zero_extendqisi2
	mul	r4, r9, r0
	orr	r7, r7, ip, lsl #8
	orr	r5, r5, r6, lsl #8
	mla	r4, r8, r7, r4
	cmp	r7, r0
	it	eq
	cmpeq	r7, r5
	it	ne
	movne	lr, #1
	cmp	fp, r1
	add	r4, r4, #16384
	mla	r5, r10, r5, r4
	lsr	r5, r5, #15
	ubfx	r0, r5, #8, #8
	strb	r5, [r2, #-3]
	strb	r0, [r2, #-4]
	bhi	.L1081
.L1647:
	ldr	r4, [sp, #8]
.L1649:
	ldr	fp, [sp, #24]
.L1650:
	ldrb	r2, [fp, #8]	@ zero_extendqisi2
	ldrb	r5, [fp, #9]	@ zero_extendqisi2
.L1045:
	ldrb	r3, [fp, #10]	@ zero_extendqisi2
	bic	r2, r2, #2
	strb	r2, [fp, #8]
	subs	r3, r3, #2
	uxtb	r3, r3
	smulbb	r5, r5, r3
	strb	r3, [fp, #10]
	uxtb	r5, r5
	cmp	r5, #7
	strb	r5, [fp, #11]
	itee	ls
	ldrls	r1, [sp, #20]
	lsrhi	r5, r5, #3
	ldrhi	r0, [sp, #20]
	ldr	r3, [r4, #456]
	itett	ls
	mulls	r5, r1, r5
	mulhi	r5, r0, r5
	addls	r5, r5, #7
	lsrls	r5, r5, #3
	str	r5, [fp, #4]
	cmp	lr, #0
	beq	.L1041
	movs	r2, #1
	strb	r2, [r4, #940]
	and	r2, r3, #6291456
	cmp	r2, #4194304
	beq	.L1709
.L1086:
	and	r2, r3, #6291456
	cmp	r2, #2097152
	bne	.L1041
	ldr	r1, .L1730
	mov	r0, r4
.LPIC67:
	add	r1, pc
	bl	png_error(PLT)
.L1663:
	ldrb	r0, [r1, #9]	@ zero_extendqisi2
	adds	r7, r7, #1
	ldr	r3, [r4, #656]
	ldr	r6, [r4, #768]
	cmp	r0, #7
	ldrh	r2, [r4, #668]
	ldr	r1, [r1]
	bhi	.L974
	cmp	r0, #2
	beq	.L976
	cmp	r0, #4
	beq	.L977
	cmp	r0, #1
	beq	.L978
	subs	r0, r1, #1
	str	r0, [sp, #4]
.L975:
	movs	r0, #8
	str	r1, [fp, #4]
	strb	r0, [fp, #9]
	strb	r0, [fp, #11]
.L984:
	cmp	r2, #0
	beq	.L985
	lsl	lr, r1, #2
	ldr	r5, [sp, #4]
	add	r0, lr, #-1
	add	r5, r5, r7
	add	r0, r0, r7
	cbz	r1, .L989
	mov	r7, r5
	subs	r0, r0, #1
	subs	r1, r5, r1
.L990:
	ldrb	r5, [r7], #-1	@ zero_extendqisi2
	subs	r0, r0, #4
	cmp	r2, r5
	ite	gt
	ldrbgt	r5, [r6, r5]	@ zero_extendqisi2
	movle	r5, #255
	cmp	r7, r1
	strb	r5, [r0, #5]
	ldrb	r5, [r7, #1]	@ zero_extendqisi2
	add	r5, r5, r5, lsl #1
	add	r5, r5, r3
	ldrb	r5, [r5, #2]	@ zero_extendqisi2
	strb	r5, [r0, #4]
	ldrb	r5, [r7, #1]	@ zero_extendqisi2
	add	r5, r5, r5, lsl #1
	add	r5, r5, r3
	ldrb	r5, [r5, #1]	@ zero_extendqisi2
	strb	r5, [r0, #3]
	ldrb	r5, [r7, #1]	@ zero_extendqisi2
	add	r5, r5, r5, lsl #1
	ldrb	r5, [r3, r5]	@ zero_extendqisi2
	strb	r5, [r0, #2]
	bne	.L990
.L989:
	movs	r0, #8
	movs	r1, #32
	movs	r2, #6
	movs	r3, #4
	str	lr, [fp, #4]
	strb	r0, [fp, #9]
	strb	r1, [fp, #11]
	strb	r2, [fp, #8]
	strb	r3, [fp, #10]
	b	.L972
.L1701:
	cmp	r1, #0
	bne	.L1093
	b	.L1089
.L995:
	cmp	r2, #2
	bne	.L972
	ldrb	r5, [fp, #9]	@ zero_extendqisi2
	cmp	r5, #8
	beq	.L1710
	cmp	r5, #16
	beq	.L1711
.L1022:
	lsls	r3, r5, #2
	movs	r0, #6
	movs	r2, #4
	strb	r0, [fp, #8]
	uxtb	r3, r3
	strb	r2, [fp, #10]
	cmp	r3, #7
	strb	r3, [fp, #11]
	bls	.L1028
.L1332:
	lsrs	r3, r3, #3
	mul	r1, r1, r3
.L1029:
	str	r1, [fp, #4]
	b	.L972
.L974:
	cmp	r0, #8
	bne	.L972
	add	lr, r1, #-1
	str	lr, [sp, #4]
	b	.L984
.L1233:
	ldr	r1, [fp, #4]
	add	r1, r1, r3
	cmp	r3, r1
	bcs	.L1215
	adds	r7, r6, #2
	and	r2, r3, #7
	subs	r0, r1, r7
	negs	r2, r2
	adds	r0, r0, #1
	and	r2, r2, #15
	cmp	r2, r0
	it	cs
	movcs	r2, r0
	cmp	r0, #16
	it	ls
	movls	r2, r0
	cmp	r2, #0
	beq	.L1239
	ldrb	r5, [r6, #1]	@ zero_extendqisi2
	cmp	r2, #1
	mov	r3, r7
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #1]
	bls	.L1240
	ldrb	r5, [r6, #2]	@ zero_extendqisi2
	cmp	r2, #2
	add	r3, r6, #3
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #2]
	bls	.L1240
	ldrb	r5, [r6, #3]	@ zero_extendqisi2
	cmp	r2, #3
	add	r3, r6, #4
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #3]
	bls	.L1240
	ldrb	r5, [r6, #4]	@ zero_extendqisi2
	cmp	r2, #4
	add	r3, r6, #5
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #4]
	bls	.L1240
	ldrb	r5, [r6, #5]	@ zero_extendqisi2
	cmp	r2, #5
	add	r3, r6, #6
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #5]
	bls	.L1240
	ldrb	r5, [r6, #6]	@ zero_extendqisi2
	cmp	r2, #6
	add	r3, r6, #7
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #6]
	bls	.L1240
	ldrb	r5, [r6, #7]	@ zero_extendqisi2
	cmp	r2, #7
	add	r3, r6, #8
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #7]
	bls	.L1240
	ldrb	r5, [r6, #8]	@ zero_extendqisi2
	cmp	r2, #8
	add	r3, r6, #9
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #8]
	bls	.L1240
	ldrb	r5, [r6, #9]	@ zero_extendqisi2
	cmp	r2, #9
	add	r3, r6, #10
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #9]
	bls	.L1240
	ldrb	r5, [r6, #10]	@ zero_extendqisi2
	cmp	r2, #10
	add	r3, r6, #11
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #10]
	bls	.L1240
	ldrb	r5, [r6, #11]	@ zero_extendqisi2
	cmp	r2, #11
	add	r3, r6, #12
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #11]
	bls	.L1240
	ldrb	r5, [r6, #12]	@ zero_extendqisi2
	cmp	r2, #12
	add	r3, r6, #13
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #12]
	bls	.L1240
	ldrb	r5, [r6, #13]	@ zero_extendqisi2
	cmp	r2, #13
	add	r3, r6, #14
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #13]
	bls	.L1240
	ldrb	r5, [r6, #14]	@ zero_extendqisi2
	cmp	r2, #14
	add	r3, r6, #15
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #14]
	bls	.L1240
	ldrb	r5, [r6, #15]	@ zero_extendqisi2
	cmp	r2, #15
	add	r3, r6, #16
	it	hi
	addhi	r3, r6, #17
	lsr	r5, r5, #1
	and	r5, r5, #85
	strb	r5, [r6, #15]
	itttt	hi
	ldrbhi	r5, [r6, #16]	@ zero_extendqisi2
	lsrhi	r5, r5, #1
	andhi	r5, r5, #85
	strbhi	r5, [r6, #16]
.L1240:
	cmp	r2, r0
	beq	.L1656
.L1239:
	subs	r0, r0, r2
	lsrs	r5, r0, #4
	lsls	r7, r5, #4
	cbz	r5, .L1242
	adds	r2, r2, #1
	vmov.i8	q8, #85  @ v16qi
	add	r6, r6, r2
	movs	r2, #0
	mov	lr, r6
.L1247:
	vld1.64	{d18-d19}, [r6:64]!
	adds	r2, r2, #1
	cmp	r2, r5
	vshr.u8	q9, q9, #1
	vand	q9, q9, q8
	vst1.64	{d18-d19}, [lr:64]!
	bcc	.L1247
	cmp	r7, r0
	add	r3, r3, r7
	beq	.L1656
.L1242:
	ldrb	r0, [r3]	@ zero_extendqisi2
	mov	r2, r3
	lsrs	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r2], #1
	cmp	r1, r2
	bls	.L1656
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	adds	r2, r3, #2
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #1]
	bls	.L1656
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	adds	r2, r3, #3
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #2]
	bls	.L1656
	ldrb	r0, [r3, #3]	@ zero_extendqisi2
	adds	r2, r3, #4
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #3]
	bls	.L1656
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	adds	r2, r3, #5
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #4]
	bls	.L1656
	ldrb	r0, [r3, #5]	@ zero_extendqisi2
	adds	r2, r3, #6
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #5]
	bls	.L1656
	ldrb	r0, [r3, #6]	@ zero_extendqisi2
	adds	r2, r3, #7
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #6]
	bls	.L1656
	ldrb	r0, [r3, #7]	@ zero_extendqisi2
	add	r2, r3, #8
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #7]
	bls	.L1656
	ldrb	r0, [r3, #8]	@ zero_extendqisi2
	add	r2, r3, #9
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #8]
	bls	.L1656
	ldrb	r0, [r3, #9]	@ zero_extendqisi2
	add	r2, r3, #10
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #9]
	bls	.L1656
	ldrb	r0, [r3, #10]	@ zero_extendqisi2
	add	r2, r3, #11
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #10]
	bls	.L1656
	ldrb	r0, [r3, #11]	@ zero_extendqisi2
	add	r2, r3, #12
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #11]
	bls	.L1656
	ldrb	r0, [r3, #12]	@ zero_extendqisi2
	add	r2, r3, #13
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #12]
	bls	.L1656
	ldrb	r0, [r3, #13]	@ zero_extendqisi2
	add	r2, r3, #14
	cmp	r1, r2
	lsr	r0, r0, #1
	and	r0, r0, #85
	strb	r0, [r3, #13]
	bls	.L1656
	ldrb	r2, [r3, #14]	@ zero_extendqisi2
	lsrs	r2, r2, #1
	and	r2, r2, #85
	strb	r2, [r3, #14]
.L1656:
	ldr	r5, [r4, #456]
	b	.L1215
.L1237:
	ldr	r7, [fp, #4]
	add	r7, r7, r3
	cmp	r3, r7
	bcs	.L1215
	adds	r6, r6, #3
	movs	r1, #0
.L1263:
	add	r8, sp, #64
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	ldrb	lr, [r6, #-2]	@ zero_extendqisi2
	add	r5, r8, r1, lsl #2
	adds	r3, r3, #2
	ldr	r5, [r5, #-16]
	adds	r1, r1, #1
	cmp	r2, r1
	it	le
	movle	r1, #0
	adds	r6, r6, #2
	add	r0, r0, lr, lsl #8
	asrs	r0, r0, r5
	asrs	r5, r0, #8
	strb	r5, [r6, #-4]
	strb	r0, [r3, #-1]
	cmp	r7, r3
	bhi	.L1263
	b	.L1656
.L1236:
	ldr	r1, [fp, #4]
	add	r1, r1, r3
	cmp	r3, r1
	bcs	.L1215
	subs	r5, r1, #1
	movs	r3, #0
.L1261:
	add	r0, sp, #64
	add	r1, r0, r3, lsl #2
	ldrb	r0, [r6, #1]	@ zero_extendqisi2
	adds	r3, r3, #1
	ldr	r1, [r1, #-16]
	cmp	r2, r3
	it	le
	movle	r3, #0
	asr	r1, r0, r1
	strb	r1, [r6, #1]!
	cmp	r6, r5
	bne	.L1261
	b	.L1656
.L1235:
	ldr	r2, [sp, #48]
	movs	r1, #15
	ldr	r0, [fp, #4]
	add	r0, r0, r3
	asrs	r1, r1, r2
	cmp	r3, r0
	orr	r1, r1, r1, lsl #4
	bcs	.L1215
	adds	r7, r6, #2
	and	r5, r3, #7
	rsb	r8, r7, r0
	negs	r5, r5
	add	r8, r8, #1
	and	r5, r5, #15
	cmp	r5, r8
	it	cs
	movcs	r5, r8
	cmp	r8, #16
	it	ls
	movls	r5, r8
	cmp	r5, #0
	beq	.L1249
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	mov	r3, r7
	cmp	r5, #1
	asr	r7, lr, r2
	and	r7, r7, r1
	strb	r7, [r6, #1]
	bls	.L1250
	ldrb	r7, [r6, #2]	@ zero_extendqisi2
	cmp	r5, #2
	add	r3, r6, #3
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #2]
	bls	.L1250
	ldrb	r7, [r6, #3]	@ zero_extendqisi2
	cmp	r5, #3
	add	r3, r6, #4
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #3]
	bls	.L1250
	ldrb	r7, [r6, #4]	@ zero_extendqisi2
	cmp	r5, #4
	add	r3, r6, #5
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #4]
	bls	.L1250
	ldrb	r7, [r6, #5]	@ zero_extendqisi2
	cmp	r5, #5
	add	r3, r6, #6
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #5]
	bls	.L1250
	ldrb	r7, [r6, #6]	@ zero_extendqisi2
	cmp	r5, #6
	add	r3, r6, #7
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #6]
	bls	.L1250
	ldrb	r7, [r6, #7]	@ zero_extendqisi2
	cmp	r5, #7
	add	r3, r6, #8
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #7]
	bls	.L1250
	ldrb	r7, [r6, #8]	@ zero_extendqisi2
	cmp	r5, #8
	add	r3, r6, #9
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #8]
	bls	.L1250
	ldrb	r7, [r6, #9]	@ zero_extendqisi2
	cmp	r5, #9
	add	r3, r6, #10
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #9]
	bls	.L1250
	ldrb	r7, [r6, #10]	@ zero_extendqisi2
	cmp	r5, #10
	add	r3, r6, #11
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #10]
	bls	.L1250
	ldrb	r7, [r6, #11]	@ zero_extendqisi2
	cmp	r5, #11
	add	r3, r6, #12
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #11]
	bls	.L1250
	ldrb	r7, [r6, #12]	@ zero_extendqisi2
	cmp	r5, #12
	add	r3, r6, #13
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #12]
	bls	.L1250
	ldrb	r7, [r6, #13]	@ zero_extendqisi2
	cmp	r5, #13
	add	r3, r6, #14
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #13]
	bls	.L1250
	ldrb	r7, [r6, #14]	@ zero_extendqisi2
	cmp	r5, #14
	add	r3, r6, #15
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #14]
	bls	.L1250
	ldrb	r7, [r6, #15]	@ zero_extendqisi2
	cmp	r5, #15
	add	r3, r6, #16
	it	hi
	addhi	r3, r6, #17
	asr	r7, r7, r2
	and	r7, r7, r1
	strb	r7, [r6, #15]
	itttt	hi
	ldrbhi	r7, [r6, #16]	@ zero_extendqisi2
	asrhi	r7, r7, r2
	andhi	r7, r7, r1
	strbhi	r7, [r6, #16]
.L1250:
	cmp	r5, r8
	beq	.L1656
.L1249:
	rsb	r8, r5, r8
	lsr	r7, r8, #4
	lsl	r9, r7, #4
	cmp	r7, #0
	beq	.L1252
	cmp	r7, #2
	add	r5, r5, #1
	vdup.32	q8, r1
	add	r6, r6, r5
	bls	.L1354
	vdup.32	q15, r2
	sub	r10, r7, #3
	adds	r6, r6, #32
	bic	r10, r10, #1
	vneg.s32	q9, q15
	add	r10, r10, #4
	mov	r5, r6
	mov	lr, #2
.L1257:
	vldr	d20, [r5, #-32]
	vldr	d21, [r5, #-24]
	add	ip, lr, #2
	pld	[r5, #112]
	cmp	ip, r10
	vmovl.u8 q11, d20
	vmovl.u8 q10, d21
	str	r5, [sp, #12]
	add	r5, r5, #32
	vmovl.u16 q14, d22
	vmovl.u16 q13, d20
	vmovl.u16 q11, d23
	vmovl.u16 q10, d21
	vshl.s32	q14, q14, q9
	str	r6, [sp, #4]
	add	r6, r6, #32
	vshl.s32	q11, q11, q9
	vshl.s32	q13, q13, q9
	vshl.s32	q10, q10, q9
	vand	q14, q14, q8
	vand	q11, q11, q8
	vand	q13, q13, q8
	vand	q10, q10, q8
	vmovn.i32	d24, q14
	vmovn.i32	d25, q11
	vmovn.i32	d22, q13
	vmovn.i32	d23, q10
	vmovn.i16	d20, q12
	vmovn.i16	d21, q11
	vstr	d20, [r6, #-64]
	vstr	d21, [r6, #-56]
	vldr	d20, [r5, #-48]
	vldr	d21, [r5, #-40]
	vmovl.u8 q11, d20
	vmovl.u8 q10, d21
	vmovl.u16 q14, d22
	vmovl.u16 q13, d20
	vmovl.u16 q11, d23
	vmovl.u16 q10, d21
	vshl.s32	q14, q14, q9
	vshl.s32	q11, q11, q9
	vshl.s32	q13, q13, q9
	vshl.s32	q10, q10, q9
	vand	q11, q11, q8
	vand	q10, q10, q8
	vand	q14, q14, q8
	vand	q13, q13, q8
	vmovn.i32	d24, q14
	vmovn.i32	d25, q11
	vmovn.i32	d22, q13
	vmovn.i32	d23, q10
	vmovn.i16	d20, q12
	vmovn.i16	d21, q11
	vstr	d20, [r6, #-48]
	vstr	d21, [r6, #-40]
	bne	.L1254
	ldr	r6, [sp, #4]
	ldr	r5, [sp, #12]
.L1253:
	vneg.s32	q9, q15
.L1259:
	vld1.64	{d20-d21}, [r5:64]!
	add	lr, lr, #1
	cmp	r7, lr
	vmovl.u8 q11, d20
	vmovl.u8 q10, d21
	vmovl.u16 q14, d22
	vmovl.u16 q13, d20
	vmovl.u16 q11, d23
	vmovl.u16 q10, d21
	vshl.s32	q14, q14, q9
	vshl.s32	q11, q11, q9
	vshl.s32	q13, q13, q9
	vshl.s32	q10, q10, q9
	vand	q11, q11, q8
	vand	q10, q10, q8
	vand	q14, q14, q8
	vand	q13, q13, q8
	vmovn.i32	d24, q14
	vmovn.i32	d25, q11
	vmovn.i32	d22, q13
	vmovn.i32	d23, q10
	vmovn.i16	d20, q12
	vmovn.i16	d21, q11
	vst1.64	{d20-d21}, [r6:64]!
	bhi	.L1259
	cmp	r9, r8
	add	r3, r3, r9
	beq	.L1656
.L1252:
	ldrb	r6, [r3]	@ zero_extendqisi2
	mov	r5, r3
	asrs	r6, r6, r2
	ands	r6, r6, r1
	strb	r6, [r5], #1
	cmp	r0, r5
	bls	.L1656
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	adds	r5, r3, #2
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #1]
	bls	.L1656
	ldrb	r6, [r3, #2]	@ zero_extendqisi2
	adds	r5, r3, #3
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #2]
	bls	.L1656
	ldrb	r6, [r3, #3]	@ zero_extendqisi2
	adds	r5, r3, #4
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #3]
	bls	.L1656
	ldrb	r6, [r3, #4]	@ zero_extendqisi2
	adds	r5, r3, #5
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #4]
	bls	.L1656
	ldrb	r6, [r3, #5]	@ zero_extendqisi2
	adds	r5, r3, #6
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #5]
	bls	.L1656
	ldrb	r6, [r3, #6]	@ zero_extendqisi2
	adds	r5, r3, #7
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #6]
	bls	.L1656
	ldrb	r6, [r3, #7]	@ zero_extendqisi2
	add	r5, r3, #8
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #7]
	bls	.L1656
	ldrb	r6, [r3, #8]	@ zero_extendqisi2
	add	r5, r3, #9
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #8]
	bls	.L1656
	ldrb	r6, [r3, #9]	@ zero_extendqisi2
	add	r5, r3, #10
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #9]
	bls	.L1656
	ldrb	r6, [r3, #10]	@ zero_extendqisi2
	add	r5, r3, #11
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #10]
	bls	.L1656
	ldrb	r6, [r3, #11]	@ zero_extendqisi2
	add	r5, r3, #12
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #11]
	bls	.L1656
	ldrb	r6, [r3, #12]	@ zero_extendqisi2
	add	r5, r3, #13
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #12]
	bls	.L1656
	ldrb	r6, [r3, #13]	@ zero_extendqisi2
	add	r5, r3, #14
	cmp	r0, r5
	asr	r6, r6, r2
	and	r6, r6, r1
	strb	r6, [r3, #13]
	bls	.L1656
	ldrb	r0, [r3, #14]	@ zero_extendqisi2
	asr	r2, r0, r2
	ands	r1, r1, r2
	strb	r1, [r3, #14]
	b	.L1656
.L1032:
	tst	r1, #1
	add	r7, r1, #-1
	add	r2, r5, r7, lsr #1
	ite	eq
	moveq	r0, #0
	movne	r0, #4
	add	r7, r7, r5
	cmp	r1, #0
	beq	.L1030
	rsb	lr, r1, r7
	b	.L1039
.L1712:
	mov	r0, r6
.L1039:
	mov	r3, r2
	cmp	r0, #4
	ldrb	r5, [r3], #-1	@ zero_extendqisi2
	itet	eq
	moveq	r6, #0
	movne	r6, #4
	moveq	r2, r3
	asr	r3, r5, r0
	and	r3, r3, #15
	orr	r3, r3, r3, lsl #4
	strb	r3, [r7], #-1
	cmp	r7, lr
	bne	.L1712
	b	.L1030
.L1702:
	lsls	r6, r7, #24
	bpl	.L1296
	add	r2, r1, r1, lsl #1
	cmp	r1, #1
	add	r5, r5, r2
	add	r7, r5, r1
	bls	.L1297
	rsb	r2, r2, #3
	adds	r6, r5, r2
	mov	r2, r7
.L1299:
	strb	r3, [r2, #-1]
	ldrb	r0, [r5, #-1]	@ zero_extendqisi2
	strb	r0, [r2, #-2]
	ldrb	r0, [r5, #-2]	@ zero_extendqisi2
	strb	r0, [r2, #-3]
	ldrb	r0, [r5, #-3]!	@ zero_extendqisi2
	cmp	r5, r6
	strb	r0, [r2, #-4]!
	bne	.L1299
	lsls	r2, r1, #2
	rsb	r2, r2, #4
	add	r7, r7, r2
.L1297:
	lsls	r1, r1, #2
	movs	r0, #4
	movs	r2, #32
.L1657:
	strb	r3, [r7, #-1]
	strb	r0, [fp, #10]
	strb	r2, [fp, #11]
	str	r1, [fp, #4]
	ldr	r2, [r4, #456]
	b	.L1278
.L1098:
	cmp	lr, #8
	beq	.L1105
	cmp	r0, #0
	beq	.L1089
	ldr	r5, [sp, #4]
	movs	r1, #0
	add	r8, r5, #9
.L1110:
	ldrb	r5, [r6, #1]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r7, [r8, #-8]	@ zero_extendqisi2
	cmp	r1, r0
	add	r8, r8, #8
	add	r6, r6, #8
	asr	r5, r5, r2
	ldr	r5, [r3, r5, lsl #2]
	ldrh	r5, [r5, r7, lsl #1]
	lsr	r7, r5, #8
	strb	r7, [r8, #-16]
	ldrb	r7, [r6, #-5]	@ zero_extendqisi2
	strb	r5, [r6, #-7]
	ldrb	ip, [r6, #-6]	@ zero_extendqisi2
	ldrb	lr, [r6, #-3]	@ zero_extendqisi2
	asr	r5, r7, r2
	ldrb	r7, [r6, #-4]	@ zero_extendqisi2
	ldr	r5, [r3, r5, lsl #2]
	asr	lr, lr, r2
	ldrh	r5, [r5, ip, lsl #1]
	strb	r5, [r6, #-5]
	lsr	r5, r5, #8
	strb	r5, [r6, #-6]
	ldr	r5, [r3, lr, lsl #2]
	ldrh	r5, [r5, r7, lsl #1]
	strb	r5, [r6, #-3]
	lsr	r5, r5, #8
	strb	r5, [r6, #-4]
	bne	.L1110
.L1652:
	ldr	r7, [r4, #456]
	b	.L1089
.L1097:
	cmp	lr, #8
	beq	.L1111
	cmp	r0, #0
	beq	.L1089
	ldr	r7, [sp, #4]
	movs	r1, #0
	adds	r7, r7, #5
.L1116:
	ldrb	r5, [r7, #-3]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r6, [r7, #-4]	@ zero_extendqisi2
	cmp	r1, r0
	add	r7, r7, #4
	asr	r5, r5, r2
	ldr	r5, [r3, r5, lsl #2]
	ldrh	r5, [r5, r6, lsl #1]
	strb	r5, [r7, #-7]
	lsr	r5, r5, #8
	strb	r5, [r7, #-8]
	bne	.L1116
	b	.L1652
.L1096:
	cmp	lr, #8
	beq	.L1099
	cmp	r0, #0
	beq	.L1089
	ldr	r1, [sp, #4]
	add	r8, r1, #7
	movs	r1, #0
.L1104:
	ldrb	r5, [r6, #1]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r7, [r8, #-6]	@ zero_extendqisi2
	cmp	r1, r0
	add	r8, r8, #6
	add	r6, r6, #6
	asr	r5, r5, r2
	ldr	r5, [r3, r5, lsl #2]
	ldrh	r5, [r5, r7, lsl #1]
	lsr	r7, r5, #8
	strb	r7, [r8, #-12]
	ldrb	r7, [r6, #-3]	@ zero_extendqisi2
	strb	r5, [r6, #-5]
	ldrb	ip, [r6, #-4]	@ zero_extendqisi2
	ldrb	lr, [r6, #-1]	@ zero_extendqisi2
	asr	r5, r7, r2
	ldrb	r7, [r6, #-2]	@ zero_extendqisi2
	ldr	r5, [r3, r5, lsl #2]
	asr	lr, lr, r2
	ldrh	r5, [r5, ip, lsl #1]
	strb	r5, [r6, #-3]
	lsr	r5, r5, #8
	strb	r5, [r6, #-4]
	ldr	r5, [r3, lr, lsl #2]
	ldrh	r5, [r5, r7, lsl #1]
	strb	r5, [r6, #-1]
	lsr	r5, r5, #8
	strb	r5, [r6, #-2]
	bne	.L1104
	b	.L1652
.L1094:
	cmp	lr, #2
	beq	.L1713
	cmp	lr, #4
	beq	.L1714
.L1121:
	cmp	lr, #8
	beq	.L1715
	cmp	lr, #16
	beq	.L1624
.L1651:
	ldr	r5, [r4, #456]
.L1125:
	mov	r7, r5
	b	.L1089
.L1346:
	mov	r5, r1
	mov	ip, r1
	movs	r3, #0
	b	.L1166
.L1698:
	adds	r3, r6, #7
	subs	r1, r6, #1
	mvns	r3, r3
	add	r0, r7, r1, lsr #3
	and	r3, r3, #7
	add	r1, r1, r7
	cmp	r6, #0
	beq	.L1265
	rsb	lr, r6, r1
.L1271:
	mov	r2, r0
	cmp	r3, #7
	ldrb	r7, [r2], #-1	@ zero_extendqisi2
	add	r5, r3, #1
	it	eq
	moveq	r0, r2
	asr	r2, r7, r3
	ite	ne
	movne	r3, r5
	moveq	r3, #0
	and	r2, r2, #1
	strb	r2, [r1], #-1
	cmp	r1, lr
	bne	.L1271
	b	.L1265
.L1267:
	tst	r6, #1
	add	r2, r6, #-1
	add	r0, r7, r2, lsr #1
	ite	eq
	moveq	r5, #0
	movne	r5, #4
	add	r2, r2, r7
	cmp	r6, #0
	beq	.L1265
	subs	r7, r2, r6
.L1274:
	mov	r3, r0
	cmp	r5, #4
	ldrb	r1, [r3], #-1	@ zero_extendqisi2
	it	eq
	moveq	r0, r3
	asr	r3, r1, r5
	ite	eq
	moveq	r5, #0
	movne	r5, #4
	and	r3, r3, #15
	strb	r3, [r2], #-1
	cmp	r2, r7
	bne	.L1274
	b	.L1265
.L1266:
	adds	r3, r6, #3
	subs	r1, r6, #1
	mvns	r3, r3
	add	r0, r7, r1, lsr #2
	and	r3, r3, #3
	lsls	r3, r3, #1
	add	r1, r1, r7
	cmp	r6, #0
	beq	.L1265
	rsb	lr, r6, r1
.L1272:
	mov	r2, r0
	cmp	r3, #6
	ldrb	r7, [r2], #-1	@ zero_extendqisi2
	add	r5, r3, #2
	it	eq
	moveq	r0, r2
	asr	r2, r7, r3
	ite	ne
	movne	r3, r5
	moveq	r3, #0
	and	r2, r2, #3
	strb	r2, [r1], #-1
	cmp	r1, lr
	bne	.L1272
	b	.L1265
.L1697:
	lsls	r7, r7, #24
	add	r5, r5, r1
	bpl	.L1281
	cmp	r1, #1
	add	r7, r5, r1
	bls	.L1282
	rsb	r6, r1, #1
	mov	r2, r7
	add	r6, r6, r5
.L1284:
	strb	r3, [r2, #-1]
	ldrb	r0, [r5, #-1]!	@ zero_extendqisi2
	cmp	r5, r6
	strb	r0, [r2, #-2]!
	bne	.L1284
	lsls	r2, r1, #1
	rsb	r2, r2, #2
	add	r7, r7, r2
.L1282:
	lsls	r1, r1, #1
	movs	r0, #2
	movs	r2, #16
	b	.L1657
.L1694:
	ldr	r0, [r4, #740]
	cmp	r0, #0
	beq	.L1043
	ldr	r0, [r4, #744]
	cmp	r0, #0
	beq	.L1043
	ldr	r0, [sp, #20]
	cmp	r0, #0
	beq	.L1648
	cmp	r6, #0
	bne	.L1047
	ldr	r7, [sp, #20]
	mov	lr, r6
	ldr	ip, [sp, #4]
	ldr	r8, [sp, #12]
	adds	r7, r7, #2
	ldr	r9, [sp, #16]
	add	r7, r7, r1
	adds	r1, r1, #2
	b	.L1053
.L1716:
	ldr	r0, [r4, #732]
	cbz	r0, .L1646
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
.L1646:
	strb	r2, [r1, #-1]
	adds	r1, r1, #1
	cmp	r1, r7
	add	r3, r3, #3
	beq	.L1650
.L1053:
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	cmp	r2, r0
	it	eq
	cmpeq	r2, r5
	beq	.L1716
	ldr	r10, [r4, #744]
	mov	lr, #1
	ldrb	r5, [r10, r5]	@ zero_extendqisi2
	ldrb	r6, [r10, r2]	@ zero_extendqisi2
	ldrb	r0, [r10, r0]	@ zero_extendqisi2
	mul	r2, r8, r5
	ldr	r5, [r4, #740]
	mla	r2, r9, r0, r2
	add	r2, r2, #16384
	mla	r2, ip, r6, r2
	lsrs	r2, r2, #15
	ldrb	r2, [r5, r2]	@ zero_extendqisi2
	b	.L1646
.L1731:
	.align	2
.L1730:
	.word	.LC20-(.LPIC67+4)
.L1703:
	cmp	r3, #0
	beq	.L1654
	ldr	r0, [sp, #4]
	cmp	r0, #0
	beq	.L1176
	cmp	r0, #10
	sub	r9, r0, #9
	bls	.L1348
	mov	r7, r2
	add	r2, r5, #13
	add	r1, r5, #31
	add	r0, r5, #11
	adds	r6, r5, #2
	str	fp, [sp, #16]
	movs	r5, #0
	mov	fp, r2
	str	r4, [sp, #12]
.L1178:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	add	r4, r5, #11
	ldrb	ip, [r1, #-30]	@ zero_extendqisi2
	cmp	r9, r4
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	mov	r10, r1
	pld	[r1, #6]
	add	r7, r7, #30
	asr	r2, r2, #3
	pld	[r1, #7]
	asr	ip, ip, #3
	pld	[r1, #8]
	lsl	r2, r2, #5
	pld	[fp, r5]
	add	r1, r1, #30
	orr	ip, r2, ip, lsl #10
	add	r5, r5, #10
	mov	r2, r0
	orr	ip, ip, lr, lsr #3
	add	r6, r6, #30
	add	r0, r0, #10
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	strb	lr, [r0, #-20]
	ldrb	ip, [r1, #-57]	@ zero_extendqisi2
	ldrb	r8, [r7, #-26]	@ zero_extendqisi2
	ldrb	lr, [r6, #-26]	@ zero_extendqisi2
	asr	ip, ip, #3
	asr	r8, r8, #3
	lsl	ip, ip, #10
	orr	ip, ip, r8, lsl #5
	orr	ip, ip, lr, lsr #3
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	strb	lr, [r0, #-19]
	ldrb	ip, [r1, #-54]	@ zero_extendqisi2
	ldrb	r8, [r7, #-23]	@ zero_extendqisi2
	ldrb	lr, [r6, #-23]	@ zero_extendqisi2
	asr	ip, ip, #3
	asr	r8, r8, #3
	lsl	ip, ip, #10
	orr	ip, ip, r8, lsl #5
	orr	ip, ip, lr, lsr #3
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	strb	lr, [r0, #-18]
	ldrb	ip, [r1, #-51]	@ zero_extendqisi2
	ldrb	r8, [r7, #-20]	@ zero_extendqisi2
	ldrb	lr, [r6, #-20]	@ zero_extendqisi2
	asr	ip, ip, #3
	asr	r8, r8, #3
	lsl	ip, ip, #10
	orr	ip, ip, r8, lsl #5
	orr	ip, ip, lr, lsr #3
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	strb	lr, [r0, #-17]
	ldrb	ip, [r1, #-48]	@ zero_extendqisi2
	ldrb	r8, [r7, #-17]	@ zero_extendqisi2
	ldrb	lr, [r6, #-17]	@ zero_extendqisi2
	asr	ip, ip, #3
	asr	r8, r8, #3
	lsl	ip, ip, #10
	orr	ip, ip, r8, lsl #5
	orr	ip, ip, lr, lsr #3
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	strb	lr, [r0, #-16]
	ldrb	ip, [r1, #-45]	@ zero_extendqisi2
	ldrb	r8, [r7, #-14]	@ zero_extendqisi2
	ldrb	lr, [r6, #-14]	@ zero_extendqisi2
	asr	ip, ip, #3
	asr	r8, r8, #3
	lsl	ip, ip, #10
	orr	ip, ip, r8, lsl #5
	orr	ip, ip, lr, lsr #3
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	strb	lr, [r0, #-15]
	ldrb	ip, [r1, #-42]	@ zero_extendqisi2
	ldrb	r8, [r7, #-11]	@ zero_extendqisi2
	ldrb	lr, [r6, #-11]	@ zero_extendqisi2
	asr	ip, ip, #3
	asr	r8, r8, #3
	lsl	ip, ip, #10
	orr	ip, ip, r8, lsl #5
	orr	ip, ip, lr, lsr #3
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	strb	lr, [r0, #-14]
	ldrb	ip, [r1, #-39]	@ zero_extendqisi2
	ldrb	r8, [r7, #-8]	@ zero_extendqisi2
	ldrb	lr, [r6, #-8]	@ zero_extendqisi2
	asr	ip, ip, #3
	asr	r8, r8, #3
	lsl	ip, ip, #10
	orr	ip, ip, r8, lsl #5
	orr	ip, ip, lr, lsr #3
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	strb	lr, [r0, #-13]
	ldrb	ip, [r7, #-5]	@ zero_extendqisi2
	ldrb	r8, [r1, #-36]	@ zero_extendqisi2
	ldrb	lr, [r6, #-5]	@ zero_extendqisi2
	asr	ip, ip, #3
	asr	r8, r8, #3
	lsl	ip, ip, #5
	orr	ip, ip, r8, lsl #10
	orr	ip, ip, lr, lsr #3
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	strb	lr, [r0, #-12]
	ldrb	ip, [r7, #-2]	@ zero_extendqisi2
	ldrb	r8, [r1, #-33]	@ zero_extendqisi2
	ldrb	lr, [r6, #-2]	@ zero_extendqisi2
	asr	ip, ip, #3
	asr	r8, r8, #3
	lsl	ip, ip, #5
	orr	ip, ip, r8, lsl #10
	orr	ip, ip, lr, lsr #3
	ldrb	lr, [r3, ip]	@ zero_extendqisi2
	strb	lr, [r0, #-11]
	bhi	.L1178
	ldr	r4, [sp, #12]
	ldr	fp, [sp, #16]
.L1177:
	ldr	r7, [sp, #4]
	mov	r1, r2
.L1180:
	ldrb	r0, [r10]	@ zero_extendqisi2
	add	r10, r10, #3
	ldrb	lr, [r10, #-2]	@ zero_extendqisi2
	ldrb	r6, [r10, #-1]	@ zero_extendqisi2
	asrs	r0, r0, #3
	asr	lr, lr, #3
	lsls	r0, r0, #10
	orr	r0, r0, lr, lsl #5
	orr	r0, r0, r6, lsr #3
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	strb	r0, [r1], #1
	adds	r0, r1, r5
	subs	r0, r0, r2
	cmp	r0, r7
	bcc	.L1180
	ldrb	r1, [fp, #9]	@ zero_extendqisi2
	movs	r2, #3
	movs	r3, #1
	strb	r2, [fp, #8]
	strb	r3, [fp, #10]
	cmp	r1, #7
	strb	r1, [fp, #11]
	bhi	.L1333
.L1189:
	ldr	r3, [sp, #4]
	mul	r3, r3, r1
	adds	r3, r3, #7
	lsrs	r3, r3, #3
.L1190:
	str	r3, [fp, #4]
	b	.L1173
.L1688:
	ldr	r7, [r4, #740]
	cmp	r7, #0
	beq	.L1133
	and	r2, r2, #2
	cmp	r2, #0
	itete	eq
	moveq	r2, #1
	movne	r2, #3
	moveq	r6, #2
	movne	r6, #4
	add	r2, r2, r0
	cmp	r3, #0
	beq	.L1131
	add	r2, r2, r6
	negs	r1, r6
.L1136:
	ldrb	r0, [r2, r1]	@ zero_extendqisi2
	subs	r3, r3, #1
	ldrb	r0, [r7, r0]	@ zero_extendqisi2
	strb	r0, [r2, r1]
	add	r2, r2, r6
	bne	.L1136
	b	.L1653
.L1345:
	mov	r3, r1
	b	.L1162
.L1704:
	cmp	r3, #0
	beq	.L1654
	ldr	r6, [sp, #4]
	cmp	r6, #0
	beq	.L1184
	cmp	r6, #8
	sub	lr, r6, #7
	bls	.L1349
	add	r1, r5, #33
	add	r0, r5, #9
	str	r4, [sp, #12]
	mov	r6, r2
	adds	r5, r5, #2
	movs	r7, #0
	mov	r4, lr
.L1186:
	ldrb	r10, [r6, #1]	@ zero_extendqisi2
	add	ip, r7, #9
	ldrb	lr, [r1, #-32]	@ zero_extendqisi2
	cmp	r4, ip
	ldrb	r9, [r5, #1]	@ zero_extendqisi2
	mov	r2, r1
	pld	[r1, #16]
	add	r7, r7, #8
	asr	r10, r10, #3
	pld	[r1, #17]
	asr	lr, lr, #3
	add	r6, r6, #32
	lsl	r8, r10, #5
	add	r1, r1, #32
	add	r5, r5, #32
	orr	r8, r8, lr, lsl #10
	mov	lr, r0
	add	r0, r0, #8
	orr	r8, r8, r9, lsr #3
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	strb	r8, [r0, #-16]
	ldrb	r9, [r6, #-27]	@ zero_extendqisi2
	ldrb	r10, [r1, #-60]	@ zero_extendqisi2
	ldrb	r8, [r5, #-27]	@ zero_extendqisi2
	asr	r9, r9, #3
	asr	r10, r10, #3
	lsl	r9, r9, #5
	orr	r9, r9, r10, lsl #10
	orr	r8, r9, r8, lsr #3
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	strb	r8, [r0, #-15]
	ldrb	r9, [r6, #-23]	@ zero_extendqisi2
	ldrb	r10, [r1, #-56]	@ zero_extendqisi2
	ldrb	r8, [r5, #-23]	@ zero_extendqisi2
	asr	r9, r9, #3
	asr	r10, r10, #3
	lsl	r9, r9, #5
	orr	r9, r9, r10, lsl #10
	orr	r8, r9, r8, lsr #3
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	strb	r8, [r0, #-14]
	ldrb	r9, [r6, #-19]	@ zero_extendqisi2
	ldrb	r10, [r1, #-52]	@ zero_extendqisi2
	ldrb	r8, [r5, #-19]	@ zero_extendqisi2
	asr	r9, r9, #3
	asr	r10, r10, #3
	lsl	r9, r9, #5
	orr	r9, r9, r10, lsl #10
	orr	r8, r9, r8, lsr #3
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	strb	r8, [r0, #-13]
	ldrb	r9, [r6, #-15]	@ zero_extendqisi2
	ldrb	r10, [r1, #-48]	@ zero_extendqisi2
	ldrb	r8, [r5, #-15]	@ zero_extendqisi2
	asr	r9, r9, #3
	asr	r10, r10, #3
	lsl	r9, r9, #5
	orr	r9, r9, r10, lsl #10
	orr	r8, r9, r8, lsr #3
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	strb	r8, [r0, #-12]
	ldrb	r9, [r6, #-11]	@ zero_extendqisi2
	ldrb	r10, [r1, #-44]	@ zero_extendqisi2
	ldrb	r8, [r5, #-11]	@ zero_extendqisi2
	asr	r9, r9, #3
	asr	r10, r10, #3
	lsl	r9, r9, #5
	orr	r9, r9, r10, lsl #10
	orr	r8, r9, r8, lsr #3
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	strb	r8, [r0, #-11]
	ldrb	r9, [r6, #-7]	@ zero_extendqisi2
	ldrb	r10, [r1, #-40]	@ zero_extendqisi2
	ldrb	r8, [r5, #-7]	@ zero_extendqisi2
	asr	r9, r9, #3
	asr	r10, r10, #3
	lsl	r9, r9, #5
	orr	r9, r9, r10, lsl #10
	orr	r8, r9, r8, lsr #3
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	strb	r8, [r0, #-10]
	ldrb	r9, [r6, #-3]	@ zero_extendqisi2
	ldrb	r10, [r1, #-36]	@ zero_extendqisi2
	ldrb	r8, [r5, #-3]	@ zero_extendqisi2
	asr	r9, r9, #3
	asr	r10, r10, #3
	lsl	r9, r9, #5
	orr	r9, r9, r10, lsl #10
	orr	r8, r9, r8, lsr #3
	ldrb	r8, [r3, r8]	@ zero_extendqisi2
	strb	r8, [r0, #-9]
	bhi	.L1186
	ldr	r4, [sp, #12]
.L1185:
	ldr	r6, [sp, #4]
	mov	r1, lr
.L1188:
	ldrb	r0, [r2, #1]	@ zero_extendqisi2
	adds	r2, r2, #4
	ldrb	ip, [r2, #-4]	@ zero_extendqisi2
	ldrb	r5, [r2, #-2]	@ zero_extendqisi2
	asrs	r0, r0, #3
	asr	ip, ip, #3
	lsls	r0, r0, #5
	orr	r0, r0, ip, lsl #10
	orr	r0, r0, r5, lsr #3
	ldrb	r0, [r3, r0]	@ zero_extendqisi2
	strb	r0, [r1], #1
	adds	r0, r1, r7
	rsb	r0, lr, r0
	cmp	r6, r0
	bhi	.L1188
	ldrb	r1, [fp, #9]	@ zero_extendqisi2
	movs	r2, #3
	movs	r3, #1
	strb	r2, [fp, #8]
	strb	r3, [fp, #10]
	cmp	r1, #7
	strb	r1, [fp, #11]
	bls	.L1189
.L1334:
	ldr	r0, [sp, #4]
	lsrs	r3, r1, #3
	mul	r3, r0, r3
	b	.L1190
.L1707:
	cmp	r1, #0
	beq	.L1310
	movs	r2, #0
.L1314:
	ldrb	r7, [r3, #-2]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldrb	r6, [r3, #-3]	@ zero_extendqisi2
	cmp	r2, r1
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	ldrb	r5, [r3, #-4]	@ zero_extendqisi2
	strb	r7, [r3, #-1]
	strb	r6, [r3, #-2]
	strb	r5, [r3, #-3]
	strb	r0, [r3, #-4]!
	bne	.L1314
	b	.L1659
.L1706:
	cmp	r3, #0
	beq	.L1200
	cmp	r3, #8
	sub	r5, r3, #7
	bls	.L1350
	str	r3, [sp, #4]
	subs	r2, r1, #1
	movs	r0, #0
	mov	r3, r5
.L1205:
	ldrb	r6, [r1, #-1]	@ zero_extendqisi2
	add	r5, r0, #9
	cmp	r3, r5
	pld	[r1, #-137]
	add	r0, r0, #8
	sub	r1, r1, #32
	mvn	r6, r6
	sub	r2, r2, #32
	strb	r6, [r1, #31]
	ldrb	r10, [r2, #28]	@ zero_extendqisi2
	ldrb	r8, [r2, #24]	@ zero_extendqisi2
	ldrb	lr, [r2, #20]	@ zero_extendqisi2
	ldrb	r7, [r2, #16]	@ zero_extendqisi2
	mvn	r10, r10
	ldrb	r6, [r2, #12]	@ zero_extendqisi2
	mvn	r8, r8
	ldrb	r9, [r2, #8]	@ zero_extendqisi2
	mvn	lr, lr
	ldrb	ip, [r2, #4]	@ zero_extendqisi2
	mvn	r7, r7
	mvn	r6, r6
	strb	r10, [r2, #28]
	mvn	r9, r9
	strb	r8, [r2, #24]
	mvn	ip, ip
	strb	lr, [r2, #20]
	strb	r7, [r2, #16]
	strb	r6, [r2, #12]
	strb	r9, [r2, #8]
	strb	ip, [r2, #4]
	bhi	.L1205
	ldr	r3, [sp, #4]
.L1207:
	ldrb	r2, [r1, #-1]	@ zero_extendqisi2
	adds	r0, r0, #1
	cmp	r0, r3
	sub	r1, r1, #4
	mvn	r2, r2
	strb	r2, [r1, #3]
	bcc	.L1207
	b	.L1655
.L996:
	cmp	r0, #8
	beq	.L1717
	cmp	r0, #16
	bne	.L1009
	ldr	r3, [fp, #4]
	lsr	lr, r6, #8
	uxtb	r6, r6
	subs	r2, r3, #1
	add	r3, r7, r3, lsl #1
	add	r2, r2, r7
	subs	r3, r3, #1
	cmp	r1, #0
	beq	.L1007
	subs	r2, r2, #2
	subs	r3, r3, #2
	movs	r0, #0
	b	.L1014
.L1011:
	movs	r5, #255
.L1012:
	strb	r5, [r3, #1]
	adds	r0, r0, #1
	strb	r5, [r3, #2]
	cmp	r0, r1
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	sub	r3, r3, #4
	sub	r2, r2, #2
	strb	r5, [r3, #4]
	ldrb	r5, [r2, #3]	@ zero_extendqisi2
	strb	r5, [r3, #3]
	beq	.L1644
.L1014:
	ldrb	r5, [r2, #1]	@ zero_extendqisi2
	cmp	lr, r5
	bne	.L1011
	ldrb	r5, [r2, #2]	@ zero_extendqisi2
	cmp	r6, r5
	it	eq
	moveq	r5, #0
	bne	.L1011
	b	.L1012
.L1691:
	cmp	r3, #0
	beq	.L1200
	movs	r2, #0
.L1212:
	ldrb	r0, [r1, #-1]	@ zero_extendqisi2
	adds	r2, r2, #1
	cmp	r2, r3
	sub	r1, r1, #2
	mvn	r0, r0
	strb	r0, [r1, #1]
	bne	.L1212
	b	.L1655
.L1700:
	cmp	r1, #0
	beq	.L1310
	movs	r2, #0
.L1319:
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldrb	r5, [r3, #-2]	@ zero_extendqisi2
	cmp	r2, r1
	strb	r5, [r3, #-1]
	strb	r0, [r3, #-2]!
	bne	.L1319
	b	.L1659
.L1031:
	adds	r3, r1, #3
	subs	r7, r1, #1
	mvns	r3, r3
	add	r0, r5, r7, lsr #2
	and	r3, r3, #3
	lsls	r3, r3, #1
	add	r7, r7, r5
	cmp	r1, #0
	beq	.L1030
	subs	r6, r7, r1
	b	.L1037
.L1718:
	mov	r3, r5
.L1037:
	mov	r2, r0
	cmp	r3, #6
	ldrb	lr, [r2], #-1	@ zero_extendqisi2
	add	r5, r3, #2
	itt	eq
	moveq	r5, #0
	moveq	r0, r2
	asr	r3, lr, r3
	and	r3, r3, #3
	lsls	r2, r3, #4
	orr	r2, r2, r3, lsl #2
	orrs	r2, r2, r3
	orr	r3, r2, r3, lsl #6
	strb	r3, [r7], #-1
	cmp	r7, r6
	bne	.L1718
	b	.L1030
.L1665:
	adds	r3, r1, #7
	subs	r7, r1, #1
	mvns	r3, r3
	add	r0, r5, r7, lsr #3
	and	r3, r3, #7
	add	r7, r7, r5
	cmp	r1, #0
	beq	.L1030
	rsb	lr, r1, r7
	b	.L1036
.L1719:
	mov	r3, r6
.L1036:
	mov	r2, r0
	cmp	r3, #7
	ldrb	r5, [r2], #-1	@ zero_extendqisi2
	add	r6, r3, #1
	itt	eq
	moveq	r6, #0
	moveq	r0, r2
	asr	r3, r5, r3
	sbfx	r3, r3, #0, #1
	strb	r3, [r7], #-1
	cmp	r7, lr
	bne	.L1719
	b	.L1030
.L1689:
	ldr	r7, [r4, #748]
	ldr	lr, [r4, #724]
	cmp	r7, #0
	beq	.L1133
	and	r2, r2, #2
	cmp	r2, #0
	itete	eq
	moveq	r2, #2
	movne	r2, #6
	moveq	ip, #4
	movne	ip, #8
	add	r2, r2, r0
	cmp	r3, #0
	beq	.L1131
	add	r2, r2, ip
	rsb	r1, ip, #0
.L1139:
	adds	r0, r2, r1
	ldrb	r6, [r2, r1]	@ zero_extendqisi2
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	subs	r3, r3, #1
	asr	r5, r5, lr
	ldr	r5, [r7, r5, lsl #2]
	ldrh	r5, [r5, r6, lsl #1]
	lsr	r6, r5, #8
	strb	r6, [r2, r1]
	add	r2, r2, ip
	strb	r5, [r0, #1]
	bne	.L1139
	b	.L1653
.L1281:
	adds	r2, r5, r1
	subs	r6, r5, r1
	cbz	r1, .L1286
.L1287:
	ldrb	r0, [r5, #-1]!	@ zero_extendqisi2
	cmp	r5, r6
	strb	r0, [r2, #-1]
	strb	r3, [r2, #-2]!
	bne	.L1287
.L1286:
	lsls	r1, r1, #1
	movs	r2, #2
	movs	r3, #16
	strb	r2, [fp, #10]
	strb	r3, [fp, #11]
	str	r1, [fp, #4]
	ldr	r2, [r4, #456]
	b	.L1278
.L1015:
	mul	r1, r1, r0
	adds	r1, r1, #7
	lsrs	r1, r1, #3
	b	.L1029
.L1142:
	sub	lr, r5, #30
	cmp	r0, lr
	ite	cs
	movcs	r0, #0
	movcc	r0, #1
	cmp	r5, #29
	it	ls
	movls	r0, #0
	cmp	r0, #0
	beq	.L1344
	add	r0, r3, #33
	mov	r1, r2
	adds	r3, r3, #17
	mov	r8, r0
.L1152:
	ldrb	r6, [r8, #-32]	@ zero_extendqisi2
	mov	r2, r8
	ldrb	r7, [r1, #1]	@ zero_extendqisi2
	add	ip, r8, #2
	pld	[r8, #6]
	cmp	lr, ip
	pld	[r2, #7]
	mov	r0, r3
	sub	r7, r7, r6
	pld	[r3, #3]
	add	r7, r7, #128
	add	r8, r8, #32
	rsb	r7, r7, r7, lsl #16
	add	r1, r1, #32
	add	r3, r3, #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-32]
	ldrb	r6, [r2, #-30]	@ zero_extendqisi2
	ldrb	r7, [r1, #-29]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-31]
	ldrb	r6, [r2, #-28]	@ zero_extendqisi2
	ldrb	r7, [r1, #-27]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-30]
	ldrb	r6, [r2, #-26]	@ zero_extendqisi2
	ldrb	r7, [r1, #-25]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-29]
	ldrb	r6, [r2, #-24]	@ zero_extendqisi2
	ldrb	r7, [r1, #-23]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-28]
	ldrb	r6, [r2, #-22]	@ zero_extendqisi2
	ldrb	r7, [r1, #-21]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-27]
	ldrb	r6, [r2, #-20]	@ zero_extendqisi2
	ldrb	r7, [r1, #-19]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-26]
	ldrb	r6, [r2, #-18]	@ zero_extendqisi2
	ldrb	r7, [r1, #-17]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-25]
	ldrb	r6, [r2, #-16]	@ zero_extendqisi2
	ldrb	r7, [r1, #-15]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-24]
	ldrb	r6, [r2, #-14]	@ zero_extendqisi2
	ldrb	r7, [r1, #-13]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-23]
	ldrb	r6, [r2, #-12]	@ zero_extendqisi2
	ldrb	r7, [r1, #-11]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-22]
	ldrb	r6, [r2, #-10]	@ zero_extendqisi2
	ldrb	r7, [r1, #-9]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-21]
	ldrb	r6, [r2, #-8]	@ zero_extendqisi2
	ldrb	r7, [r1, #-7]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-20]
	ldrb	r6, [r2, #-6]	@ zero_extendqisi2
	ldrb	r7, [r1, #-5]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-19]
	ldrb	r6, [r2, #-4]	@ zero_extendqisi2
	ldrb	r7, [r1, #-3]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-18]
	ldrb	r6, [r2, #-2]	@ zero_extendqisi2
	ldrb	r7, [r1, #-1]	@ zero_extendqisi2
	sub	r7, r7, r6
	add	r7, r7, #128
	rsb	r7, r7, r7, lsl #16
	add	r6, r6, r7, asr #24
	strb	r6, [r3, #-17]
	bhi	.L1152
.L1154:
	ldrb	r3, [r2]	@ zero_extendqisi2
	adds	r2, r2, #2
	ldrb	r1, [r2, #-1]	@ zero_extendqisi2
	cmp	r5, r2
	sub	r1, r1, r3
	add	r1, r1, #128
	rsb	r1, r1, r1, lsl #16
	add	r3, r3, r1, asr #24
	strb	r3, [r0], #1
	bhi	.L1154
	b	.L1147
.L1157:
	sub	lr, r0, #62
	cmp	r3, lr
	ite	cs
	movcs	r3, #0
	movcc	r3, #1
	cmp	r0, #61
	it	ls
	movls	r3, #0
	cmp	r3, #0
	beq	.L1347
	add	r2, r6, #33
	adds	r6, r6, #65
.L1168:
	ldrb	r7, [r6, #-64]	@ zero_extendqisi2
	mov	r3, r6
	pld	[r6, #4]
	adds	r5, r6, #2
	pld	[r6, #36]
	cmp	lr, r5
	strb	r7, [r2, #-32]
	mov	r1, r2
	ldrb	r7, [r3, #-62]	@ zero_extendqisi2
	add	r6, r6, #64
	pld	[r2, #2]
	add	r2, r2, #32
	strb	r7, [r2, #-63]
	ldrb	r7, [r3, #-60]	@ zero_extendqisi2
	strb	r7, [r2, #-62]
	ldrb	r7, [r3, #-58]	@ zero_extendqisi2
	strb	r7, [r2, #-61]
	ldrb	r7, [r3, #-56]	@ zero_extendqisi2
	strb	r7, [r2, #-60]
	ldrb	r7, [r3, #-54]	@ zero_extendqisi2
	strb	r7, [r2, #-59]
	ldrb	r7, [r3, #-52]	@ zero_extendqisi2
	strb	r7, [r2, #-58]
	ldrb	r7, [r3, #-50]	@ zero_extendqisi2
	strb	r7, [r2, #-57]
	ldrb	r7, [r3, #-48]	@ zero_extendqisi2
	strb	r7, [r2, #-56]
	ldrb	r7, [r3, #-46]	@ zero_extendqisi2
	strb	r7, [r2, #-55]
	ldrb	r7, [r3, #-44]	@ zero_extendqisi2
	strb	r7, [r2, #-54]
	ldrb	r7, [r3, #-42]	@ zero_extendqisi2
	strb	r7, [r2, #-53]
	ldrb	r7, [r3, #-40]	@ zero_extendqisi2
	strb	r7, [r2, #-52]
	ldrb	r7, [r3, #-38]	@ zero_extendqisi2
	strb	r7, [r2, #-51]
	ldrb	r7, [r3, #-36]	@ zero_extendqisi2
	strb	r7, [r2, #-50]
	ldrb	r7, [r3, #-34]	@ zero_extendqisi2
	strb	r7, [r2, #-49]
	ldrb	r7, [r3, #-32]	@ zero_extendqisi2
	strb	r7, [r2, #-48]
	ldrb	r7, [r3, #-30]	@ zero_extendqisi2
	strb	r7, [r2, #-47]
	ldrb	r7, [r3, #-28]	@ zero_extendqisi2
	strb	r7, [r2, #-46]
	ldrb	r7, [r3, #-26]	@ zero_extendqisi2
	strb	r7, [r2, #-45]
	ldrb	r7, [r3, #-24]	@ zero_extendqisi2
	strb	r7, [r2, #-44]
	ldrb	r7, [r3, #-22]	@ zero_extendqisi2
	strb	r7, [r2, #-43]
	ldrb	r7, [r3, #-20]	@ zero_extendqisi2
	strb	r7, [r2, #-42]
	ldrb	r7, [r3, #-18]	@ zero_extendqisi2
	strb	r7, [r2, #-41]
	ldrb	r7, [r3, #-16]	@ zero_extendqisi2
	strb	r7, [r2, #-40]
	ldrb	r7, [r3, #-14]	@ zero_extendqisi2
	strb	r7, [r2, #-39]
	ldrb	r7, [r3, #-12]	@ zero_extendqisi2
	strb	r7, [r2, #-38]
	ldrb	r7, [r3, #-10]	@ zero_extendqisi2
	strb	r7, [r2, #-37]
	ldrb	r7, [r3, #-8]	@ zero_extendqisi2
	strb	r7, [r2, #-36]
	ldrb	r7, [r3, #-6]	@ zero_extendqisi2
	strb	r7, [r2, #-35]
	ldrb	r7, [r3, #-4]	@ zero_extendqisi2
	strb	r7, [r2, #-34]
	ldrb	r7, [r3, #-2]	@ zero_extendqisi2
	strb	r7, [r2, #-33]
	bhi	.L1168
.L1170:
	ldrb	r2, [r3], #2	@ zero_extendqisi2
	cmp	r0, r3
	strb	r2, [r1], #1
	bls	.L1163
	ldrb	r2, [r3], #2	@ zero_extendqisi2
	cmp	r0, r3
	strb	r2, [r1], #1
	bhi	.L1170
	b	.L1163
.L1709:
	ldr	r1, .L1732
	mov	r0, r4
.LPIC66:
	add	r1, pc
	bl	png_warning(PLT)
	ldr	r3, [r4, #456]
	b	.L1086
.L1288:
	add	r6, r5, r1, lsl #1
	add	r2, r5, r1, lsl #2
	mov	r5, r7
	cbz	r1, .L1293
.L1294:
	ldrb	r7, [r6, #-1]	@ zero_extendqisi2
	adds	r5, r5, #1
	cmp	r5, r1
	strb	r7, [r2, #-1]
	ldrb	r7, [r6, #-2]!	@ zero_extendqisi2
	strb	r0, [r2, #-3]
	strb	r7, [r2, #-2]
	strb	r3, [r2, #-4]!
	bne	.L1294
.L1293:
	lsls	r1, r1, #2
	movs	r2, #2
.L1658:
	movs	r3, #32
	strb	r2, [fp, #10]
	strb	r3, [fp, #11]
	str	r1, [fp, #4]
	ldr	r2, [r4, #456]
	b	.L1278
.L1176:
	movs	r2, #3
	movs	r3, #1
	strb	r1, [fp, #11]
	strb	r2, [fp, #8]
	strb	r3, [fp, #10]
.L1333:
	lsrs	r3, r1, #3
	ldr	r1, [sp, #4]
	mul	r3, r1, r3
	b	.L1190
.L1047:
	mov	lr, #0
	add	r8, sp, #12
	adds	r1, r1, #2
	mov	r5, lr
	ldr	r10, [sp, #4]
	ldmia	r8, {r8, r9, ip}
	b	.L1058
.L1720:
	ldr	r7, [r4, #744]
	mov	lr, #1
	ldrb	r6, [r7, r6]	@ zero_extendqisi2
	ldrb	r2, [r7, r2]	@ zero_extendqisi2
	ldrb	r0, [r7, r0]	@ zero_extendqisi2
	mul	r6, r8, r6
	mla	r2, r10, r2, r6
	add	r2, r2, #16384
	mla	r2, r9, r0, r2
	ldr	r0, [r4, #740]
	lsrs	r2, r2, #15
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
	strb	r2, [r1, #-1]
.L1055:
	ldrb	r2, [r3, #3]	@ zero_extendqisi2
	adds	r5, r5, #1
	cmp	r5, ip
	add	r3, r3, #4
	strb	r2, [r1], #2
	beq	.L1650
.L1058:
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r6, [r3, #1]	@ zero_extendqisi2
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	cmp	r2, r6
	it	eq
	cmpeq	r2, r0
	bne	.L1720
	ldr	r0, [r4, #732]
	cbz	r0, .L1056
	ldrb	r2, [r0, r2]	@ zero_extendqisi2
.L1056:
	strb	r2, [r1, #-1]
	b	.L1055
.L1077:
	str	fp, [sp, #24]
	mov	lr, #0
	ldr	r8, [sp, #4]
	mov	r3, r7
	ldr	r9, [sp, #12]
	mov	r2, lr
	ldr	r10, [sp, #16]
	ldr	fp, [sp, #20]
	str	r4, [sp, #8]
.L1082:
	ldrb	r0, [r7, #2]	@ zero_extendqisi2
	adds	r2, r2, #1
	ldrb	r1, [r7, #3]	@ zero_extendqisi2
	adds	r3, r3, #4
	ldrb	ip, [r7]	@ zero_extendqisi2
	adds	r7, r7, #8
	ldrb	r6, [r7, #-7]	@ zero_extendqisi2
	ldrb	r5, [r7, #-4]	@ zero_extendqisi2
	orr	r1, r1, r0, lsl #8
	ldrb	r4, [r7, #-3]	@ zero_extendqisi2
	mul	r0, r9, r1
	orr	r6, r6, ip, lsl #8
	orr	r4, r4, r5, lsl #8
	mla	r0, r8, r6, r0
	cmp	r6, r1
	it	eq
	cmpeq	r6, r4
	it	ne
	movne	lr, #1
	cmp	r2, fp
	add	r0, r0, #16384
	mla	r4, r10, r4, r0
	lsr	r4, r4, #15
	ubfx	r1, r4, #8, #8
	strb	r4, [r3, #-3]
	strb	r1, [r3, #-4]
	ldrb	r1, [r7, #-2]	@ zero_extendqisi2
	strb	r1, [r3, #-2]
	ldrb	r1, [r7, #-1]	@ zero_extendqisi2
	strb	r1, [r3, #-1]
	bne	.L1082
	b	.L1647
.L1648:
	mov	lr, r0
	b	.L1045
.L1254:
	mov	lr, ip
	b	.L1257
.L1043:
	ldr	r0, [sp, #20]
	cmp	r0, #0
	beq	.L1648
	cmp	r6, #0
	bne	.L1059
	ldr	r5, [sp, #20]
	mov	lr, r6
	ldr	r2, [sp, #20]
	cmp	r5, #10
	sub	r2, r2, #9
	str	r2, [sp, #24]
	bls	.L1338
	add	r8, r1, #11
	add	ip, r1, #31
	add	r10, r1, #2
	adds	r1, r1, #12
	str	r1, [sp, #28]
	mov	r9, r7
	mov	r0, r6
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #12]
	ldr	r1, [sp, #16]
	str	r4, [sp, #36]
	str	fp, [sp, #40]
	b	.L1061
.L1721:
	ldr	r0, [sp, #8]
.L1061:
	ldrb	r6, [r10, #1]	@ zero_extendqisi2
	add	r7, r0, #11
	ldrb	r5, [r9, #1]	@ zero_extendqisi2
	add	r10, r10, #30
	ldr	fp, [sp, #28]
	add	r9, r9, #30
	str	r7, [sp, #44]
	mul	r7, r1, r6
	ldrb	r4, [ip, #-30]	@ zero_extendqisi2
	pld	[fp, r0]
	adds	r0, r0, #10
	pld	[ip, #3]
	mov	fp, ip
	pld	[ip, #4]
	cmp	r4, r6
	it	eq
	cmpeq	r4, r5
	pld	[ip, #5]
	it	ne
	movne	r6, #1
	str	r0, [sp, #8]
	mla	r0, r2, r5, r7
	ite	eq
	moveq	r6, #0
	movne	lr, #1
	add	ip, ip, #30
	mla	r0, r3, r4, r0
	lsrs	r0, r0, #15
	cmp	r6, #0
	it	eq
	moveq	r0, r4
	strb	r0, [r8, #-10]
	ldrb	r0, [ip, #-57]	@ zero_extendqisi2
	ldrb	r5, [r9, #-26]	@ zero_extendqisi2
	ldrb	r4, [r10, #-26]	@ zero_extendqisi2
	mul	r7, r3, r0
	cmp	r0, r5
	it	eq
	cmpeq	r0, r4
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r5, r2, r5, r7
	mla	r4, r1, r4, r5
	lsrs	r4, r4, #15
	cmp	r6, #0
	it	ne
	movne	r0, r4
	strb	r0, [r8, #-9]
	ldrb	r0, [ip, #-54]	@ zero_extendqisi2
	ldrb	r5, [r9, #-23]	@ zero_extendqisi2
	ldrb	r4, [r10, #-23]	@ zero_extendqisi2
	mul	r7, r3, r0
	cmp	r0, r5
	it	eq
	cmpeq	r0, r4
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r5, r2, r5, r7
	mla	r4, r1, r4, r5
	lsrs	r4, r4, #15
	cmp	r6, #0
	it	ne
	movne	r0, r4
	strb	r0, [r8, #-8]
	ldrb	r0, [ip, #-51]	@ zero_extendqisi2
	ldrb	r5, [r9, #-20]	@ zero_extendqisi2
	ldrb	r4, [r10, #-20]	@ zero_extendqisi2
	mul	r7, r3, r0
	cmp	r0, r5
	it	eq
	cmpeq	r0, r4
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r5, r2, r5, r7
	mla	r4, r1, r4, r5
	lsrs	r4, r4, #15
	cmp	r6, #0
	it	ne
	movne	r0, r4
	strb	r0, [r8, #-7]
	ldrb	r0, [ip, #-48]	@ zero_extendqisi2
	ldrb	r5, [r9, #-17]	@ zero_extendqisi2
	ldrb	r4, [r10, #-17]	@ zero_extendqisi2
	mul	r7, r3, r0
	cmp	r0, r5
	it	eq
	cmpeq	r0, r4
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r5, r2, r5, r7
	mla	r4, r1, r4, r5
	lsrs	r4, r4, #15
	cmp	r6, #0
	it	ne
	movne	r0, r4
	strb	r0, [r8, #-6]
	ldrb	r0, [ip, #-45]	@ zero_extendqisi2
	ldrb	r5, [r9, #-14]	@ zero_extendqisi2
	ldrb	r4, [r10, #-14]	@ zero_extendqisi2
	mul	r7, r3, r0
	cmp	r0, r5
	it	eq
	cmpeq	r0, r4
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r5, r2, r5, r7
	mla	r4, r1, r4, r5
	lsrs	r4, r4, #15
	cmp	r6, #0
	it	ne
	movne	r0, r4
	strb	r0, [r8, #-5]
	ldrb	r0, [ip, #-42]	@ zero_extendqisi2
	ldrb	r5, [r9, #-11]	@ zero_extendqisi2
	ldrb	r4, [r10, #-11]	@ zero_extendqisi2
	mul	r7, r3, r0
	cmp	r0, r5
	it	eq
	cmpeq	r0, r4
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r5, r2, r5, r7
	mla	r4, r1, r4, r5
	lsrs	r4, r4, #15
	cmp	r6, #0
	it	ne
	movne	r0, r4
	strb	r0, [r8, #-4]
	ldrb	r0, [ip, #-39]	@ zero_extendqisi2
	ldrb	r5, [r9, #-8]	@ zero_extendqisi2
	ldrb	r4, [r10, #-8]	@ zero_extendqisi2
	mul	r7, r3, r0
	cmp	r0, r5
	it	eq
	cmpeq	r0, r4
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r5, r2, r5, r7
	mla	r4, r1, r4, r5
	lsrs	r4, r4, #15
	cmp	r6, #0
	it	ne
	movne	r0, r4
	strb	r0, [r8, #-3]
	ldrb	r0, [ip, #-36]	@ zero_extendqisi2
	ldrb	r5, [r9, #-5]	@ zero_extendqisi2
	ldrb	r4, [r10, #-5]	@ zero_extendqisi2
	mul	r7, r3, r0
	cmp	r0, r5
	it	eq
	cmpeq	r0, r4
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r5, r2, r5, r7
	mla	r4, r1, r4, r5
	lsrs	r4, r4, #15
	cmp	r6, #0
	it	ne
	movne	r0, r4
	strb	r0, [r8, #-2]
	ldrb	r0, [ip, #-33]	@ zero_extendqisi2
	ldrb	r5, [r9, #-2]	@ zero_extendqisi2
	ldrb	r4, [r10, #-2]	@ zero_extendqisi2
	mul	r7, r3, r0
	cmp	r0, r5
	it	eq
	cmpeq	r0, r4
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r5, r2, r5, r7
	mov	r7, r8
	add	r8, r8, #10
	mla	r4, r1, r4, r5
	lsrs	r4, r4, #15
	cmp	r6, #0
	it	ne
	movne	r0, r4
	ldr	r4, [sp, #44]
	strb	r0, [r8, #-11]
	ldr	r0, [sp, #24]
	cmp	r0, r4
	bhi	.L1721
	mov	r3, fp
	ldr	r4, [sp, #36]
	ldr	fp, [sp, #40]
.L1060:
	add	r8, sp, #12
	str	fp, [sp, #28]
	ldmia	r8, {r8, r9, r10}
	mov	r5, r7
	ldr	ip, [sp, #4]
	ldr	fp, [sp, #8]
	str	r4, [sp, #24]
.L1063:
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r3, r3, #3
	ldrb	r0, [r3, #-2]	@ zero_extendqisi2
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2
	mul	r6, ip, r2
	cmp	r2, r0
	it	eq
	cmpeq	r2, r1
	itet	ne
	movne	r4, #1
	moveq	r4, #0
	movne	lr, #1
	mla	r0, r8, r0, r6
	mla	r1, r9, r1, r0
	lsrs	r1, r1, #15
	cmp	r4, #0
	it	ne
	movne	r2, r1
	strb	r2, [r5], #1
	add	r2, fp, r5
	subs	r2, r2, r7
	cmp	r10, r2
	bhi	.L1063
	ldr	r4, [sp, #24]
	ldr	fp, [sp, #28]
	b	.L1650
.L1343:
	mov	r0, r2
	mov	ip, r2
	movs	r3, #0
	b	.L1143
.L1296:
	add	r6, r1, r1, lsl #1
	add	r5, r5, r6
	adds	r2, r5, r1
	subs	r6, r5, r6
	cbz	r1, .L1301
.L1302:
	ldrb	r0, [r5, #-1]	@ zero_extendqisi2
	strb	r0, [r2, #-1]
	ldrb	r0, [r5, #-2]	@ zero_extendqisi2
	strb	r0, [r2, #-2]
	ldrb	r0, [r5, #-3]!	@ zero_extendqisi2
	cmp	r5, r6
	strb	r0, [r2, #-3]
	strb	r3, [r2, #-4]!
	bne	.L1302
.L1301:
	lsls	r1, r1, #2
	movs	r2, #4
	b	.L1658
.L1028:
	mul	r1, r1, r3
	adds	r1, r1, #7
	lsrs	r1, r1, #3
	b	.L1029
.L1303:
	lsls	r2, r1, #1
	adds	r6, r2, r1
	add	r5, r5, r6, lsl #1
	add	r2, r2, r5
	cbz	r1, .L1308
.L1309:
	ldrb	r6, [r5, #-1]	@ zero_extendqisi2
	adds	r7, r7, #1
	cmp	r7, r1
	strb	r6, [r2, #-1]
	ldrb	r6, [r5, #-2]	@ zero_extendqisi2
	strb	r6, [r2, #-2]
	ldrb	r6, [r5, #-3]	@ zero_extendqisi2
	strb	r6, [r2, #-3]
	ldrb	r6, [r5, #-4]	@ zero_extendqisi2
	strb	r6, [r2, #-4]
	ldrb	r6, [r5, #-5]	@ zero_extendqisi2
	strb	r6, [r2, #-5]
	ldrb	r6, [r5, #-6]!	@ zero_extendqisi2
	strb	r0, [r2, #-7]
	strb	r6, [r2, #-6]
	strb	r3, [r2, #-8]!
	bne	.L1309
.L1308:
	lsls	r1, r1, #3
	movs	r2, #4
	movs	r3, #64
	strb	r2, [fp, #10]
	strb	r3, [fp, #11]
	str	r1, [fp, #4]
	ldr	r2, [r4, #456]
	b	.L1278
.L998:
	and	r6, r6, #3
	adds	r2, r1, #3
	add	r6, r6, r6, lsl #2
	mvns	r2, r2
	subs	r3, r1, #1
	and	r2, r2, #3
	add	r6, r6, r6, lsl #4
	lsls	r2, r2, #1
	add	lr, r7, r3, lsr #2
	adds	r5, r7, r3
	cmp	r1, #0
	beq	.L997
	rsb	r8, r1, r5
	b	.L1002
.L1722:
	mov	r2, ip
.L1002:
	mov	r0, lr
	cmp	r2, #6
	ldrb	r9, [r0], #-1	@ zero_extendqisi2
	add	ip, r2, #2
	itt	eq
	moveq	ip, #0
	moveq	lr, r0
	asr	r2, r9, r2
	and	r2, r2, #3
	lsls	r0, r2, #4
	orr	r0, r0, r2, lsl #2
	orrs	r0, r0, r2
	orr	r2, r0, r2, lsl #6
	strb	r2, [r5], #-1
	cmp	r5, r8
	bne	.L1722
	b	.L997
.L1705:
	and	r6, r6, #1
	adds	r2, r1, #7
	lsls	r0, r6, #8
	subs	r3, r1, #1
	mvns	r2, r2
	add	lr, r7, r3, lsr #3
	subs	r6, r0, r6
	and	r2, r2, #7
	adds	r5, r7, r3
	cmp	r1, #0
	beq	.L997
	rsb	r8, r1, r5
	b	.L1001
.L1723:
	mov	r2, ip
.L1001:
	mov	r0, lr
	cmp	r2, #7
	ldrb	r9, [r0], #-1	@ zero_extendqisi2
	add	ip, r2, #1
	itt	eq
	moveq	ip, #0
	moveq	lr, r0
	asr	r2, r9, r2
	sbfx	r2, r2, #0, #1
	strb	r2, [r5], #-1
	cmp	r5, r8
	bne	.L1723
	b	.L997
.L999:
	tst	r1, #1
	add	r3, r1, #-1
	and	r6, r6, #15
	it	eq
	moveq	lr, #0
	add	r6, r6, r6, lsl #4
	it	ne
	movne	lr, #4
	add	r5, r7, r3, lsr #1
	adds	r0, r7, r3
	cmp	r1, #0
	beq	.L997
	rsb	r8, r1, r0
	b	.L1004
.L1724:
	mov	lr, ip
.L1004:
	mov	r2, r5
	cmp	lr, #4
	ldrb	r9, [r2], #-1	@ zero_extendqisi2
	itet	eq
	moveq	ip, #0
	movne	ip, #4
	moveq	r5, r2
	asr	r2, r9, lr
	and	r2, r2, #15
	orr	r2, r2, r2, lsl #4
	strb	r2, [r0], #-1
	cmp	r0, r8
	bne	.L1724
	b	.L997
.L1710:
	ldr	r3, [fp, #4]
	add	r2, r7, r1, lsl #2
	ldrb	r6, [r0, #774]	@ zero_extendqisi2
	ldrb	lr, [r0, #776]	@ zero_extendqisi2
	subs	r2, r2, #1
	subs	r3, r3, #1
	ldrb	ip, [r0, #778]	@ zero_extendqisi2
	adds	r0, r7, r3
	cmp	r1, #0
	beq	.L1018
	add	r8, r1, r1, lsl #1
	mov	r3, r0
	subs	r2, r2, #1
	rsb	r8, r8, r0
	subs	r0, r0, #3
	b	.L1023
.L1019:
	movs	r5, #255
.L1020:
	strb	r5, [r2, #1]
	subs	r3, r3, #3
	ldrb	r5, [r0, #3]	@ zero_extendqisi2
	subs	r2, r2, #4
	subs	r0, r0, #3
	strb	r5, [r2, #4]
	ldrb	r5, [r3, #2]	@ zero_extendqisi2
	strb	r5, [r2, #3]
	ldrb	r5, [r3, #1]	@ zero_extendqisi2
	cmp	r3, r8
	strb	r5, [r2, #2]
	beq	.L1645
.L1023:
	ldrb	r5, [r3, #-2]	@ zero_extendqisi2
	cmp	r5, r6
	bne	.L1019
	ldrb	r5, [r3, #-1]	@ zero_extendqisi2
	cmp	r5, lr
	bne	.L1019
	ldrb	r5, [r0, #3]	@ zero_extendqisi2
	cmp	r5, ip
	it	eq
	moveq	r5, #0
	bne	.L1019
	b	.L1020
.L1645:
	ldrb	r5, [fp, #9]	@ zero_extendqisi2
	b	.L1022
.L1059:
	ldr	r6, [sp, #20]
	mov	lr, #0
	ldr	r5, [sp, #20]
	cmp	r6, #8
	sub	r5, r5, #7
	str	r5, [sp, #32]
	bls	.L1339
	str	fp, [sp, #44]
	mov	r9, r7
	mov	r0, lr
	add	ip, r1, #17
	add	r8, r1, #33
	add	r10, r1, #2
	adds	r5, r1, #3
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #16]
	str	r4, [sp, #40]
	ldr	fp, [sp, #4]
	b	.L1066
.L1065:
	ldr	r0, [sp, #8]
.L1066:
	ldrb	r1, [r8, #-32]	@ zero_extendqisi2
	add	r7, r0, #9
	ldrb	r4, [r9, #1]	@ zero_extendqisi2
	adds	r0, r0, #8
	str	r7, [sp, #24]
	add	r9, r9, #32
	str	r0, [sp, #8]
	add	r10, r10, #32
	mul	r7, fp, r1
	ldrb	r0, [r10, #-31]	@ zero_extendqisi2
	pld	[r8, #8]
	adds	r5, r5, #32
	pld	[r8, #9]
	cmp	r1, r4
	it	eq
	cmpeq	r1, r0
	pld	[r8, #10]
	mla	r4, r3, r4, r7
	pld	[r8, #11]
	str	r8, [sp, #36]
	it	ne
	movne	r6, #1
	str	ip, [sp, #28]
	ite	eq
	moveq	r6, #0
	movne	lr, #1
	mla	r0, r2, r0, r4
	add	r8, r8, #32
	add	ip, ip, #16
	lsrs	r0, r0, #15
	cmp	r6, #0
	it	ne
	movne	r1, r0
	strb	r1, [ip, #-32]
	ldrb	r1, [r5, #-31]	@ zero_extendqisi2
	strb	r1, [ip, #-31]
	ldrb	r1, [r8, #-60]	@ zero_extendqisi2
	ldrb	r4, [r9, #-27]	@ zero_extendqisi2
	ldrb	r0, [r10, #-27]	@ zero_extendqisi2
	mul	r7, fp, r1
	cmp	r1, r4
	it	eq
	cmpeq	r1, r0
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r4, r3, r4, r7
	mla	r0, r2, r0, r4
	lsrs	r0, r0, #15
	cmp	r6, #0
	it	ne
	movne	r1, r0
	strb	r1, [ip, #-30]
	ldrb	r1, [r5, #-27]	@ zero_extendqisi2
	strb	r1, [ip, #-29]
	ldrb	r1, [r8, #-56]	@ zero_extendqisi2
	ldrb	r4, [r9, #-23]	@ zero_extendqisi2
	ldrb	r0, [r10, #-23]	@ zero_extendqisi2
	mul	r7, fp, r1
	cmp	r1, r4
	it	eq
	cmpeq	r1, r0
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r4, r3, r4, r7
	mla	r0, r2, r0, r4
	lsrs	r0, r0, #15
	cmp	r6, #0
	it	ne
	movne	r1, r0
	strb	r1, [ip, #-28]
	ldrb	r1, [r5, #-23]	@ zero_extendqisi2
	strb	r1, [ip, #-27]
	ldrb	r1, [r8, #-52]	@ zero_extendqisi2
	ldrb	r4, [r9, #-19]	@ zero_extendqisi2
	ldrb	r0, [r10, #-19]	@ zero_extendqisi2
	mul	r7, fp, r1
	cmp	r1, r4
	it	eq
	cmpeq	r1, r0
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r4, r3, r4, r7
	mla	r0, r2, r0, r4
	lsrs	r0, r0, #15
	cmp	r6, #0
	it	ne
	movne	r1, r0
	strb	r1, [ip, #-26]
	ldrb	r1, [r5, #-19]	@ zero_extendqisi2
	strb	r1, [ip, #-25]
	ldrb	r1, [r8, #-48]	@ zero_extendqisi2
	ldrb	r4, [r9, #-15]	@ zero_extendqisi2
	ldrb	r0, [r10, #-15]	@ zero_extendqisi2
	mul	r7, fp, r1
	cmp	r1, r4
	it	eq
	cmpeq	r1, r0
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r4, r3, r4, r7
	mla	r0, r2, r0, r4
	lsrs	r0, r0, #15
	cmp	r6, #0
	it	ne
	movne	r1, r0
	strb	r1, [ip, #-24]
	ldrb	r1, [r5, #-15]	@ zero_extendqisi2
	strb	r1, [ip, #-23]
	ldrb	r1, [r8, #-44]	@ zero_extendqisi2
	ldrb	r4, [r9, #-11]	@ zero_extendqisi2
	ldrb	r0, [r10, #-11]	@ zero_extendqisi2
	mul	r7, fp, r1
	cmp	r1, r4
	it	eq
	cmpeq	r1, r0
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r4, r3, r4, r7
	mla	r0, r2, r0, r4
	lsrs	r0, r0, #15
	cmp	r6, #0
	it	ne
	movne	r1, r0
	strb	r1, [ip, #-22]
	ldrb	r1, [r5, #-11]	@ zero_extendqisi2
	strb	r1, [ip, #-21]
	ldrb	r1, [r8, #-40]	@ zero_extendqisi2
	ldrb	r4, [r9, #-7]	@ zero_extendqisi2
	ldrb	r0, [r10, #-7]	@ zero_extendqisi2
	mul	r7, fp, r1
	cmp	r1, r4
	it	eq
	cmpeq	r1, r0
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r4, r3, r4, r7
	mla	r0, r2, r0, r4
	lsrs	r0, r0, #15
	cmp	r6, #0
	it	ne
	movne	r1, r0
	strb	r1, [ip, #-20]
	ldrb	r1, [r5, #-7]	@ zero_extendqisi2
	strb	r1, [ip, #-19]
	ldrb	r1, [r8, #-36]	@ zero_extendqisi2
	ldrb	r4, [r9, #-3]	@ zero_extendqisi2
	ldrb	r0, [r10, #-3]	@ zero_extendqisi2
	mul	r7, fp, r1
	cmp	r1, r4
	it	eq
	cmpeq	r1, r0
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r4, r3, r4, r7
	mla	r0, r2, r0, r4
	lsrs	r0, r0, #15
	cmp	r6, #0
	it	ne
	movne	r1, r0
	ldr	r0, [sp, #32]
	strb	r1, [ip, #-18]
	ldrb	r1, [r5, #-3]	@ zero_extendqisi2
	strb	r1, [ip, #-17]
	ldr	r1, [sp, #24]
	cmp	r0, r1
	bhi	.L1065
	add	r3, sp, #36
	ldr	r1, [sp, #28]
	ldmia	r3, {r3, r4, fp}
	ldr	r5, [sp, #8]
.L1064:
	add	r8, sp, #12
	ldr	ip, [sp, #4]
	ldmia	r8, {r8, r9, r10}
	adds	r1, r1, #2
	str	r4, [sp, #8]
.L1067:
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r5, r5, #1
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	adds	r1, r1, #2
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	adds	r3, r3, #4
	mul	r7, ip, r2
	cmp	r2, r4
	it	eq
	cmpeq	r2, r0
	itet	ne
	movne	r6, #1
	moveq	r6, #0
	movne	lr, #1
	mla	r4, r8, r4, r7
	mla	r0, r9, r0, r4
	lsrs	r0, r0, #15
	cmp	r6, #0
	it	ne
	movne	r2, r0
	cmp	r10, r5
	strb	r2, [r1, #-4]
	ldrb	r2, [r3, #-1]	@ zero_extendqisi2
	strb	r2, [r1, #-3]
	bhi	.L1067
	ldr	r4, [sp, #8]
	b	.L1650
.L978:
	subs	r5, r1, #1
	adds	r0, r1, #7
	mvns	r0, r0
	mov	lr, r5
	str	r5, [sp, #4]
	add	ip, r7, r5, lsr #3
	and	r0, r0, #7
	add	lr, lr, r7
	cmp	r1, #0
	beq	.L975
	rsb	r10, r1, lr
	b	.L981
.L1725:
	mov	r0, r8
.L981:
	mov	r5, ip
	cmp	r0, #7
	ldrb	r9, [r5], #-1	@ zero_extendqisi2
	add	r8, r0, #1
	itt	eq
	moveq	r8, #0
	moveq	ip, r5
	asr	r0, r9, r0
	and	r0, r0, #1
	strb	r0, [lr], #-1
	cmp	lr, r10
	bne	.L1725
	b	.L975
.L977:
	add	r9, r1, #-1
	and	r0, r1, #1
	mov	lr, r9
	str	r9, [sp, #4]
	add	ip, r7, r9, lsr #1
	add	lr, lr, r7
	lsls	r0, r0, #2
	cmp	r1, #0
	beq	.L975
	rsb	r10, r1, lr
	b	.L983
.L1726:
	mov	r0, r8
.L983:
	mov	r5, ip
	cmp	r0, #4
	ldrb	r9, [r5], #-1	@ zero_extendqisi2
	add	r8, r0, #4
	itt	eq
	moveq	r8, #0
	moveq	ip, r5
	asr	r0, r9, r0
	and	r0, r0, #15
	strb	r0, [lr], #-1
	cmp	lr, r10
	bne	.L1726
	b	.L975
.L976:
	adds	r0, r1, #3
	add	r8, r1, #-1
	mvns	r0, r0
	mov	lr, r8
	and	r0, r0, #3
	str	r8, [sp, #4]
	add	ip, r7, r8, lsr #2
	lsls	r0, r0, #1
	add	lr, lr, r7
	cmp	r1, #0
	beq	.L975
	rsb	r10, r1, lr
	b	.L982
.L1727:
	mov	r0, r8
.L982:
	mov	r5, ip
	cmp	r0, #6
	ldrb	r9, [r5], #-1	@ zero_extendqisi2
	add	r8, r0, #2
	itt	eq
	moveq	r8, #0
	moveq	ip, r5
	asr	r0, r9, r0
	and	r0, r0, #3
	strb	r0, [lr], #-1
	cmp	lr, r10
	bne	.L1727
	b	.L975
.L1111:
	cmp	r0, #0
	beq	.L1089
	ldr	r5, [sp, #4]
	movs	r3, #0
	adds	r5, r5, #3
.L1114:
	ldrb	r2, [r5, #-2]	@ zero_extendqisi2
	adds	r3, r3, #1
	cmp	r3, r0
	add	r5, r5, #2
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r5, #-4]
	bne	.L1114
	b	.L1652
.L1099:
	cmp	r0, #0
	beq	.L1089
	ldr	r5, [sp, #4]
	add	r0, r0, r0, lsl #1
	add	r0, r0, r5
.L1102:
	ldrb	r3, [r5, #1]	@ zero_extendqisi2
	adds	r5, r5, #3
	adds	r6, r6, #3
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	strb	r3, [r5, #-2]
	cmp	r5, r0
	ldrb	r2, [r6, #-2]	@ zero_extendqisi2
	ldrb	r3, [r6, #-1]	@ zero_extendqisi2
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r6, #-2]
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	strb	r3, [r6, #-1]
	bne	.L1102
	b	.L1652
.L1714:
	cmp	r0, #0
	beq	.L1125
.L1120:
	ldr	r7, [sp, #4]
	movs	r3, #0
.L1123:
	ldrb	r2, [r7, #1]	@ zero_extendqisi2
	adds	r3, r3, #2
	cmp	r0, r3
	and	r5, r2, #240
	and	r2, r2, #15
	orr	r5, r5, r5, lsr #4
	orr	r2, r2, r2, lsl #4
	ldrb	r6, [r1, r5]	@ zero_extendqisi2
	ldrb	r5, [r1, r2]	@ zero_extendqisi2
	bic	r2, r6, #15
	orr	r2, r2, r5, lsr #4
	strb	r2, [r7, #1]!
	bhi	.L1123
	b	.L1652
.L1713:
	cmp	r0, #0
	beq	.L1089
	ldr	lr, [sp, #4]
	movs	r5, #0
	mov	r7, r5
	str	r3, [sp, #12]
	str	r2, [sp, #16]
.L1119:
	ldrb	r3, [lr, #1]	@ zero_extendqisi2
	adds	r7, r7, #4
	cmp	r0, r7
	and	r6, r3, #48
	and	r5, r3, #192
	and	r2, r3, #3
	asr	r10, r6, #2
	and	r3, r3, #12
	asr	r9, r5, #4
	lsl	r8, r2, #4
	lsl	ip, r3, #2
	orr	r10, r10, r6, lsl #2
	orr	r9, r9, r5, lsr #2
	orr	r8, r8, r2, lsl #6
	orr	ip, ip, r3, lsl #4
	orr	r10, r10, r6
	orr	r9, r9, r5
	orr	r6, r10, r6, lsr #4
	orr	r8, r8, r2
	orr	ip, ip, r3
	orr	r9, r9, r5, lsr #6
	orr	r8, r8, r2, lsl #2
	orr	ip, ip, r3, lsr #2
	ldrb	r2, [r1, r6]	@ zero_extendqisi2
	ldrb	r5, [r1, r8]	@ zero_extendqisi2
	ldrb	r6, [r1, r9]	@ zero_extendqisi2
	ldrb	r3, [r1, ip]	@ zero_extendqisi2
	lsr	r2, r2, #2
	bic	r6, r6, #63
	orr	r5, r6, r5, lsr #6
	and	r2, r2, #48
	lsr	r3, r3, #4
	orr	r2, r2, r5
	and	r3, r3, #12
	orr	r3, r3, r2
	strb	r3, [lr, #1]!
	bhi	.L1119
	ldrb	lr, [fp, #9]	@ zero_extendqisi2
	ldr	r3, [sp, #12]
	ldr	r2, [sp, #16]
	cmp	lr, #4
	bne	.L1121
	b	.L1120
.L1105:
	cmp	r0, #0
	beq	.L1089
	ldr	r7, [sp, #4]
	movs	r3, #0
	adds	r7, r7, #5
.L1108:
	ldrb	r2, [r7, #-4]	@ zero_extendqisi2
	adds	r3, r3, #1
	cmp	r3, r0
	add	r7, r7, #4
	add	r6, r6, #4
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r7, #-8]
	ldrb	r5, [r6, #-3]	@ zero_extendqisi2
	ldrb	r2, [r6, #-2]	@ zero_extendqisi2
	ldrb	r5, [r1, r5]	@ zero_extendqisi2
	strb	r5, [r6, #-3]
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r6, #-2]
	bne	.L1108
	b	.L1652
.L1711:
	ldrh	ip, [r0, #774]
	add	r3, r7, r1, lsl #3
	ldrh	r10, [r0, #776]
	ldr	r2, [fp, #4]
	subs	r3, r3, #1
	ldrh	r0, [r0, #778]
	lsr	lr, ip, #8
	uxtb	ip, ip
	lsr	r8, r10, #8
	uxtb	r10, r10
	subs	r2, r2, #1
	lsr	r9, r0, #8
	add	r2, r2, r7
	uxtb	r7, r0
	cmp	r1, #0
	beq	.L1018
	subs	r3, r3, #2
	subs	r0, r2, #6
	movs	r5, #0
	b	.L1027
.L1024:
	movs	r6, #255
.L1025:
	strb	r6, [r3, #1]
	adds	r5, r5, #1
	strb	r6, [r3, #2]
	cmp	r5, r1
	ldrb	r6, [r0, #6]	@ zero_extendqisi2
	sub	r2, r2, #6
	sub	r0, r0, #6
	sub	r3, r3, #8
	strb	r6, [r3, #8]
	ldrb	r6, [r2, #5]	@ zero_extendqisi2
	strb	r6, [r3, #7]
	ldrb	r6, [r2, #4]	@ zero_extendqisi2
	strb	r6, [r3, #6]
	ldrb	r6, [r2, #3]	@ zero_extendqisi2
	strb	r6, [r3, #5]
	ldrb	r6, [r2, #2]	@ zero_extendqisi2
	strb	r6, [r3, #4]
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	strb	r6, [r3, #3]
	beq	.L1645
.L1027:
	ldrb	r6, [r2, #-5]	@ zero_extendqisi2
	cmp	r6, lr
	bne	.L1024
	ldrb	r6, [r2, #-4]	@ zero_extendqisi2
	cmp	r6, ip
	bne	.L1024
	ldrb	r6, [r2, #-3]	@ zero_extendqisi2
	cmp	r6, r8
	bne	.L1024
	ldrb	r6, [r2, #-2]	@ zero_extendqisi2
	cmp	r6, r10
	bne	.L1024
	ldrb	r6, [r2, #-1]	@ zero_extendqisi2
	cmp	r6, r9
	bne	.L1024
	ldrb	r6, [r0, #6]	@ zero_extendqisi2
	cmp	r6, r7
	bne	.L1024
	movs	r6, #0
	b	.L1025
.L985:
	add	r0, r1, r1, lsl #1
	ldr	r5, [sp, #4]
	subs	r2, r0, #1
	add	r5, r5, r7
	add	r7, r7, r2
	cbz	r1, .L992
	subs	r1, r5, r1
.L993:
	ldrb	r2, [r5]	@ zero_extendqisi2
	subs	r7, r7, #3
	add	r2, r2, r2, lsl #1
	add	r2, r2, r3
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	strb	r2, [r7, #3]
	ldrb	r2, [r5], #-1	@ zero_extendqisi2
	cmp	r5, r1
	add	r2, r2, r2, lsl #1
	add	r2, r2, r3
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	strb	r2, [r7, #2]
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	add	r2, r2, r2, lsl #1
	ldrb	r2, [r3, r2]	@ zero_extendqisi2
	strb	r2, [r7, #1]
	bne	.L993
.L992:
	movs	r5, #8
	movs	r1, #24
	movs	r2, #2
	movs	r3, #3
	str	r0, [fp, #4]
	strb	r5, [fp, #9]
	strb	r1, [fp, #11]
	strb	r2, [fp, #8]
	strb	r3, [fp, #10]
	b	.L972
.L1348:
	mov	r10, r2
	movs	r5, #0
	b	.L1177
.L1624:
	cmp	r0, #0
	beq	.L1651
	ldr	r7, [sp, #4]
	movs	r1, #0
	adds	r7, r7, #3
.L1129:
	ldrb	r5, [r7, #-1]	@ zero_extendqisi2
	adds	r1, r1, #1
	ldrb	r6, [r7, #-2]	@ zero_extendqisi2
	cmp	r1, r0
	add	r7, r7, #2
	asr	r5, r5, r2
	ldr	r5, [r3, r5, lsl #2]
	ldrh	r5, [r5, r6, lsl #1]
	strb	r5, [r7, #-3]
	lsr	r5, r5, #8
	strb	r5, [r7, #-4]
	bne	.L1129
	b	.L1652
.L1715:
	cmp	r0, #0
	beq	.L1651
	ldr	r2, [sp, #4]
	add	r0, r0, r2
.L1127:
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	ldrb	r3, [r1, r3]	@ zero_extendqisi2
	strb	r3, [r2, #1]!
	cmp	r2, r0
	bne	.L1127
	b	.L1652
.L1350:
	movs	r0, #0
	b	.L1207
.L1347:
	mov	r3, r1
	b	.L1170
.L1344:
	mov	r0, r2
	b	.L1154
.L1349:
	mov	lr, r2
	movs	r7, #0
	b	.L1185
.L1184:
	movs	r2, #3
	movs	r3, #1
	strb	r1, [fp, #11]
	strb	r2, [fp, #8]
	strb	r3, [fp, #10]
	b	.L1334
.L1336:
	movs	r0, #8
.L1007:
	lsls	r0, r0, #1
	movs	r2, #4
	movs	r3, #2
	strb	r2, [fp, #8]
	uxtb	r0, r0
	strb	r3, [fp, #10]
	strb	r0, [fp, #11]
	b	.L1331
.L1354:
	mov	lr, #0
	mov	r5, r6
	vdup.32	q15, r2
	b	.L1253
.L1340:
	mov	lr, r6
	str	r7, [sp, #28]
	mov	r1, r6
	mov	r2, r7
	b	.L1078
.L1018:
	lsls	r3, r5, #2
	movs	r0, #6
	movs	r2, #4
	strb	r0, [fp, #8]
	uxtb	r3, r3
	strb	r2, [fp, #10]
	strb	r3, [fp, #11]
	b	.L1332
.L1338:
	str	r6, [sp, #8]
	b	.L1060
.L1339:
	str	r7, [sp, #28]
	mov	r1, r7
	str	lr, [sp, #8]
	mov	r5, lr
	b	.L1064
.L1662:
	ldr	r1, .L1732+4
.LPIC65:
	add	r1, pc
	bl	png_error(PLT)
.L1733:
	.align	2
.L1732:
	.word	.LC20-(.LPIC66+4)
	.word	.LC19-(.LPIC65+4)
.L1661:
	ldr	r1, .L1734
.LPIC64:
	add	r1, pc
	bl	png_error(PLT)
.L1193:
	ldr	r1, .L1734+4
	mov	r0, r4
.LPIC69:
	add	r1, pc
	bl	png_error(PLT)
.L1717:
	subs	r3, r1, #1
	b	.L1005
.L1735:
	.align	2
.L1734:
	.word	.LC18-(.LPIC64+4)
	.word	.LC22-(.LPIC69+4)
	.size	png_do_read_transformations, .-png_do_read_transformations
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Can't discard critical data on CRC error\000"
	.space	3
.LC1:
	.ascii	"invalid after png_start_read_image or png_read_upda"
	.ascii	"te_info\000"
	.space	1
.LC2:
	.ascii	"Application must supply a known background gamma\000"
	.space	3
.LC3:
	.ascii	"png_set_background\000"
	.space	1
.LC4:
	.ascii	"output gamma out of expected range\000"
	.space	1
.LC5:
	.ascii	"invalid alpha mode\000"
	.space	1
.LC6:
	.ascii	"conflicting calls to set alpha mode and background\000"
	.space	1
.LC7:
	.ascii	"gamma value\000"
.LC8:
	.ascii	"invalid file gamma in png_set_gamma\000"
.LC9:
	.ascii	"invalid screen gamma in png_set_gamma\000"
	.space	2
.LC10:
	.ascii	"invalid before the PNG header has been read\000"
.LC11:
	.ascii	"invalid error action to rgb_to_gray\000"
.LC12:
	.ascii	"ignoring out of range rgb_to_gray coefficients\000"
	.space	1
.LC13:
	.ascii	"rgb to gray red coefficient\000"
.LC14:
	.ascii	"rgb to gray green coefficient\000"
	.space	2
.LC15:
	.ascii	"libpng does not support gamma+background+rgb_to_gra"
	.ascii	"y\000"
	.space	3
.LC16:
	.ascii	"invalid background gamma type\000"
	.space	2
.LC17:
	.ascii	"Palette is NULL in indexed image\000"
	.space	3
.LC18:
	.ascii	"NULL row buffer\000"
.LC19:
	.ascii	"Uninitialized row\000"
	.space	2
.LC20:
	.ascii	"png_do_rgb_to_gray found nongray pixel\000"
	.space	1
.LC21:
	.ascii	"png_do_encode_alpha: unexpected call\000"
	.space	3
.LC22:
	.ascii	"png_do_quantize returned rowbytes=0\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
