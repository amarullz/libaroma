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
	.file	"jdhuff.c"
	.section	.text.jpeg_make_d_derived_tbl,"ax",%progbits
	.align	2
	.global	jpeg_make_d_derived_tbl
	.thumb
	.thumb_func
	.type	jpeg_make_d_derived_tbl, %function
jpeg_make_d_derived_tbl:
	@ args = 0, pretend = 0, frame = 1344
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #3
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subw	sp, sp, #1348
	mov	r4, r2
	mov	r5, r3
	str	r1, [sp, #44]
	str	r0, [sp, #24]
	bls	.L2
	ldr	r3, [r0]
	movs	r1, #50
	str	r2, [r3, #24]
	ldr	r2, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L2:
	ldr	r6, [sp, #44]
	cmp	r6, #0
	beq	.L3
	ldr	r6, [sp, #24]
	add	r3, r6, r4, lsl #2
	ldr	r3, [r3, #188]
	str	r3, [sp, #12]
.L4:
	cbnz	r3, .L5
	ldr	r6, [sp, #24]
	movs	r1, #50
	ldr	r3, [r6]
	mov	r0, r6
	str	r4, [r3, #24]
	ldr	r2, [r6]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L5:
	ldr	fp, [r5]
	cmp	fp, #0
	bne	.L6
	ldr	r4, [sp, #24]
	movs	r1, #1
	mov	r2, #1424
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	mov	fp, r0
	str	r0, [r5]
.L6:
	ldr	r10, [sp, #24]
	movs	r5, #0
	ldr	r4, [sp, #12]
	movs	r7, #1
	str	r5, [sp, #36]
	add	r6, sp, #56
	movs	r5, #8
	mov	r9, #0
	str	r4, [fp, #140]
.L10:
	ldrb	r8, [r4, #1]!	@ zero_extendqisi2
	add	r3, r9, r8
	cmp	r3, #256
	ble	.L7
	ldr	r3, [r10]
	mov	r0, r10
	str	r5, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L7:
	mov	r1, r7
	add	r0, r6, r9
	adds	r7, r7, #1
	mov	r2, r8
	cmp	r8, #0
	beq	.L8
	add	r9, r9, r8
	bl	memset(PLT)
.L8:
	cmp	r7, #17
	bne	.L10
	movs	r4, #0
	str	r9, [sp, #36]
	strb	r4, [r6, r9]
	ldrb	r5, [r6]	@ zero_extendqisi2
	mov	r8, r5
	cbz	r5, .L11
	add	r9, sp, #316
	mov	r7, r4
	mov	r10, #1
.L12:
	cmp	r5, r8
	mov	r1, r5
	bne	.L15
	subs	r3, r7, #1
	adds	r2, r6, r7
	add	r3, r9, r3, lsl #2
.L16:
	ldrb	r5, [r2, #1]!	@ zero_extendqisi2
	adds	r7, r7, #1
	str	r4, [r3, #4]!
	adds	r4, r4, #1
	cmp	r5, r1
	beq	.L16
.L15:
	lsl	r3, r10, r8
	cmp	r4, r3
	bge	.L99
.L14:
	lsls	r4, r4, #1
	add	r8, r8, #1
	cmp	r5, #0
	bne	.L12
.L11:
	mov	r0, fp
	movs	r2, #1
	movs	r3, #0
	mov	r5, #-1
	add	r4, sp, #316
	ldr	r6, [sp, #12]
	b	.L38
.L101:
	ldr	r1, [r4, r3, lsl #2]
	adds	r0, r0, #4
	subs	r1, r3, r1
	str	r1, [r0, #72]
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	adds	r2, r2, #1
	cmp	r2, #17
	add	r3, r3, r1
	add	r1, r3, #-1
	ldr	r1, [r4, r1, lsl #2]
	str	r1, [r0]
	beq	.L100
.L38:
	ldrb	r1, [r6, r2]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L101
	adds	r2, r2, #1
	str	r5, [r0, #4]
	cmp	r2, #17
	add	r0, r0, #4
	bne	.L38
.L100:
	movw	r3, #65535
	mov	r2, #1024
	movt	r3, 15
	add	r0, fp, #144
	str	r3, [fp, #68]
	movs	r1, #0
	bl	memset(PLT)
	mov	r10, #1
	movs	r2, #0
	str	r2, [sp, #4]
	mov	r2, r10
	add	r3, sp, #316
	add	r4, fp, #140
	str	r3, [sp, #52]
	str	r4, [sp, #48]
.L20:
	ldr	r4, [sp, #12]
	ldrb	r3, [r4, r2]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L32
	rsb	r5, r2, #8
	movs	r0, #1
	lsl	r10, r0, r5
	ldr	r6, [sp, #4]
	str	r5, [sp, #28]
	add	r1, sp, #316
	ldr	r5, [sp, #12]
	lsr	r9, r10, #4
	subs	r3, r6, #1
	vdup.32	q8, r2
	add	r8, r6, #17
	add	ip, r6, #18
	lsl	r4, r9, #4
	add	r1, r1, r3, lsl #2
	lsl	r3, r10, #2
	str	r0, [sp, #8]
	add	r8, r8, r5
	str	r1, [sp, #16]
	add	ip, ip, r5
	rsb	r6, r4, r10
	str	r3, [sp, #32]
	str	r4, [sp, #20]
	str	r6, [sp, #40]
.L33:
	ldr	r5, [sp, #16]
	ldr	r6, [sp, #28]
	ldr	r3, [sp, #32]
	ldr	r1, [r5, #4]!
	str	r5, [sp, #16]
	lsls	r1, r1, r6
	add	r6, r1, #1168
	add	r4, r1, #36
	add	r6, r6, fp
	add	r0, fp, r4, lsl #2
	add	r5, r6, r10
	cmp	r6, ip
	it	cc
	cmpcc	r8, r5
	add	r3, r3, r0
	ite	cs
	movcs	r5, #1
	movcc	r5, #0
	cmp	r10, #15
	ite	ls
	movls	r5, #0
	andhi	r5, r5, #1
	cmp	r0, ip
	it	cc
	cmpcc	r8, r3
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	tst	r5, r3
	beq	.L21
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L39
	ldr	r3, [sp, #12]
	movs	r5, #0
	ldr	r4, [sp, #4]
	add	r3, r3, r4
.L27:
	mov	r4, r0
	add	lr, r0, #32
	add	r7, r0, #48
	adds	r5, r5, #1
	vst1.32	{q8}, [r4]!
	cmp	r9, r5
	add	r0, r0, #64
	vst1.32	{q8}, [r4]
	vst1.32	{q8}, [lr]
	vst1.32	{q8}, [r7]
	ldrb	r4, [r3, #17]	@ zero_extendqisi2
	vdup.8	q9, r4
	vst1.8	{q9}, [r6]!
	bhi	.L27
	ldr	r5, [sp, #20]
	cmp	r5, r10
	add	r1, r1, r5
	beq	.L28
	ldr	r0, [sp, #40]
	add	r4, r1, #36
.L22:
	str	r2, [fp, r4, lsl #2]
	cmp	r0, #1
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r4, fp, r1
	add	r5, r1, #1
	strb	r6, [r4, #1168]
	beq	.L28
	add	r4, r1, #37
	cmp	r0, #2
	str	r2, [fp, r4, lsl #2]
	add	r5, r5, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r4, r1, #2
	strb	r6, [r5, #1168]
	beq	.L28
	add	r5, r1, #38
	cmp	r0, #3
	str	r2, [fp, r5, lsl #2]
	add	r4, r4, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r5, r1, #3
	strb	r6, [r4, #1168]
	beq	.L28
	add	r4, r1, #39
	cmp	r0, #4
	str	r2, [fp, r4, lsl #2]
	add	r5, r5, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r4, r1, #4
	strb	r6, [r5, #1168]
	beq	.L28
	add	r5, r1, #40
	cmp	r0, #5
	str	r2, [fp, r5, lsl #2]
	add	r4, r4, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r5, r1, #5
	strb	r6, [r4, #1168]
	beq	.L28
	add	r4, r1, #41
	cmp	r0, #6
	str	r2, [fp, r4, lsl #2]
	add	r5, r5, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r4, r1, #6
	strb	r6, [r5, #1168]
	beq	.L28
	add	r5, r1, #42
	cmp	r0, #7
	str	r2, [fp, r5, lsl #2]
	add	r4, r4, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r5, r1, #7
	strb	r6, [r4, #1168]
	beq	.L28
	add	r4, r1, #43
	cmp	r0, #8
	str	r2, [fp, r4, lsl #2]
	add	r5, r5, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r4, r1, #8
	strb	r6, [r5, #1168]
	beq	.L28
	add	r5, r1, #44
	cmp	r0, #9
	str	r2, [fp, r5, lsl #2]
	add	r4, r4, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r5, r1, #9
	strb	r6, [r4, #1168]
	beq	.L28
	add	r4, r1, #45
	cmp	r0, #10
	str	r2, [fp, r4, lsl #2]
	add	r5, r5, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r4, r1, #10
	strb	r6, [r5, #1168]
	beq	.L28
	add	r6, r1, #46
	cmp	r0, #11
	str	r2, [fp, r6, lsl #2]
	add	r5, fp, r4
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r4, r1, #11
	strb	r6, [r5, #1168]
	beq	.L28
	add	r5, r1, #47
	cmp	r0, #12
	str	r2, [fp, r5, lsl #2]
	add	r4, r4, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r5, r1, #12
	strb	r6, [r4, #1168]
	beq	.L28
	add	r4, r1, #48
	cmp	r0, #13
	str	r2, [fp, r4, lsl #2]
	add	r5, r5, fp
	ldrb	r6, [r3, #17]	@ zero_extendqisi2
	add	r4, r1, #13
	strb	r6, [r5, #1168]
	beq	.L28
	add	r5, r1, #49
	cmp	r0, #14
	str	r2, [fp, r5, lsl #2]
	add	r4, r4, fp
	ldrb	r5, [r3, #17]	@ zero_extendqisi2
	add	r6, r1, #14
	strb	r5, [r4, #1168]
	beq	.L28
	adds	r1, r1, #50
	add	r6, r6, fp
	str	r2, [fp, r1, lsl #2]
	ldrb	r3, [r3, #17]	@ zero_extendqisi2
	strb	r3, [r6, #1168]
.L28:
	ldr	r6, [sp, #12]
	add	r8, r8, #1
	ldr	r0, [sp, #8]
	add	ip, ip, #1
	ldr	r1, [sp, #4]
	ldrb	r3, [r6, r2]	@ zero_extendqisi2
	adds	r0, r0, #1
	adds	r1, r1, #1
	str	r0, [sp, #8]
	cmp	r3, r0
	str	r1, [sp, #4]
	bge	.L33
.L32:
	adds	r2, r2, #1
	cmp	r2, #9
	bne	.L20
	ldr	r4, [sp, #44]
	cbz	r4, .L1
	ldr	r5, [sp, #36]
	cbz	r5, .L1
	ldr	r4, [sp, #12]
	mov	r6, r5
	ldr	r7, [sp, #24]
	movs	r5, #8
	adds	r4, r4, #16
	add	r6, r6, r4
	b	.L37
.L36:
	cmp	r4, r6
	beq	.L1
.L37:
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	cmp	r3, #15
	bls	.L36
	ldr	r3, [r7]
	mov	r0, r7
	str	r5, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	cmp	r4, r6
	bne	.L37
.L1:
	addw	sp, sp, #1348
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3:
	ldr	r6, [sp, #24]
	add	r3, r6, r4, lsl #2
	ldr	r3, [r3, #204]
	str	r3, [sp, #12]
	b	.L4
.L99:
	ldr	r0, [sp, #24]
	movs	r1, #8
	ldr	r3, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L14
.L39:
	ldr	r3, [sp, #12]
	mov	r0, r10
	ldr	r6, [sp, #4]
	add	r3, r3, r6
	b	.L22
.L21:
	ldr	r3, [sp, #48]
	add	r4, r1, r10
	ldr	r5, [sp, #4]
	add	r0, r1, #35
	add	r0, fp, r0, lsl #2
	addw	r1, r1, #1167
	add	r1, r1, fp
	add	r4, r3, r4, lsl #2
	ldr	r3, [sp, #12]
	add	r3, r3, r5
.L29:
	str	r2, [r0, #4]!
	cmp	r0, r4
	ldrb	r5, [r3, #17]	@ zero_extendqisi2
	strb	r5, [r1, #1]!
	bne	.L29
	b	.L28
	.size	jpeg_make_d_derived_tbl, .-jpeg_make_d_derived_tbl
	.section	.text.start_pass_huff_decoder,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_huff_decoder, %function
start_pass_huff_decoder:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #412]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	ldr	r5, [r0, #456]
	cbnz	r3, .L103
	ldr	r3, [r0, #416]
	cmp	r3, #63
	beq	.L119
.L103:
	ldr	r3, [r4]
	movs	r2, #122
	mov	r0, r4
	mov	r1, #-1
	str	r2, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
.L104:
	ldr	r3, [r4, #340]
	cmp	r3, #0
	ble	.L108
	movs	r6, #0
	mov	r8, r4
	mov	r10, r6
	mov	r7, r5
.L109:
	ldr	r3, [r8, #344]
	movs	r1, #1
	mov	r0, r4
	add	r6, r6, r1
	add	r8, r8, #4
	adds	r7, r7, #4
	ldr	r2, [r3, #20]
	ldr	r9, [r3, #24]
	add	r3, r2, #14
	add	r3, r5, r3, lsl #2
	bl	jpeg_make_d_derived_tbl(PLT)
	add	r3, r9, #18
	mov	r2, r9
	add	r3, r5, r3, lsl #2
	mov	r0, r4
	movs	r1, #0
	bl	jpeg_make_d_derived_tbl(PLT)
	str	r10, [r7, #32]
	ldr	r3, [r4, #340]
	cmp	r3, r6
	bgt	.L109
.L108:
	ldr	r3, [r4, #368]
	cmp	r3, #0
	ittt	gt
	lslgt	ip, r3, #2
	movgt	r1, #0
	movgt	r3, r5
	bgt	.L111
	b	.L107
.L120:
	ldr	r0, [r2, #36]
	cmp	r0, lr
	ite	le
	movle	r0, #0
	movgt	r0, #1
.L110:
	adds	r1, r1, #4
	str	r0, [r3, #208]
	cmp	r1, ip
	str	lr, [r3, #168]
	add	r3, r3, #4
	beq	.L107
.L111:
	adds	r2, r4, r1
	mov	lr, #1
	ldr	r2, [r2, #372]
	adds	r2, r2, #86
	ldr	r2, [r4, r2, lsl #2]
	ldr	r6, [r2, #20]
	ldr	r7, [r2, #24]
	ldr	r0, [r2, #48]
	adds	r6, r6, #14
	ldr	r6, [r5, r6, lsl #2]
	adds	r7, r7, #18
	str	r6, [r3, #88]
	ldr	r6, [r5, r7, lsl #2]
	str	r6, [r3, #128]
	cmp	r0, #0
	bne	.L120
	mov	lr, r0
	b	.L110
.L107:
	ldr	r2, [r4, #288]
	movs	r3, #0
	str	r3, [r5, #32]
	str	r3, [r5, #28]
	str	r2, [r5, #52]
	str	r3, [r5, #20]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L119:
	ldr	r3, [r0, #420]
	cmp	r3, #0
	bne	.L103
	ldr	r3, [r0, #424]
	cmp	r3, #0
	beq	.L104
	b	.L103
	.size	start_pass_huff_decoder, .-start_pass_huff_decoder
	.section	.text.jpeg_fill_bit_buffer,"ax",%progbits
	.align	2
	.global	jpeg_fill_bit_buffer
	.thumb
	.thumb_func
	.type	jpeg_fill_bit_buffer, %function
jpeg_fill_bit_buffer:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r7, [r0, #16]
	mov	r9, r0
	mov	r8, r1
	mov	fp, r2
	str	r3, [sp, #4]
	ldr	r3, [r7, #428]
	ldr	r6, [r0]
	ldr	r4, [r0, #4]
	str	r3, [sp]
	cmp	r3, #0
	bne	.L122
	cmp	r2, #24
	bgt	.L123
.L132:
	cbz	r4, .L142
.L124:
	ldrb	r10, [r6]	@ zero_extendqisi2
	subs	r4, r4, #1
	adds	r6, r6, #1
	cmp	r10, #255
	beq	.L143
.L127:
	add	fp, fp, #8
	orr	r8, r10, r8, lsl #8
	cmp	fp, #24
	ble	.L132
.L123:
	movs	r3, #1
	str	r6, [r9]
	str	r3, [sp]
	str	r4, [r9, #4]
	str	r8, [r9, #8]
	str	fp, [r9, #12]
.L126:
	ldr	r0, [sp]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L142:
	ldr	r3, [r7, #24]
	mov	r0, r7
	ldr	r3, [r3, #20]
	blx	r3
	cmp	r0, #0
	beq	.L126
	ldr	r3, [r7, #24]
	ldr	r6, [r3]
	ldr	r4, [r3, #8]
	b	.L124
.L143:
	mov	r5, r6
.L131:
	cbz	r4, .L144
.L128:
	ldrb	r3, [r5]	@ zero_extendqisi2
	adds	r6, r5, #1
	subs	r4, r4, #1
	mov	r5, r6
	cmp	r3, #255
	beq	.L131
	cmp	r3, #0
	beq	.L127
	str	r3, [r7, #428]
.L122:
	ldr	r3, [sp, #4]
	cmp	fp, r3
	bge	.L123
	ldr	r3, [r7, #456]
	ldr	r3, [r3, #20]
	cbz	r3, .L145
.L133:
	rsb	r3, fp, #25
	mov	fp, #25
	lsl	r8, r8, r3
	b	.L123
.L144:
	ldr	r3, [r7, #24]
	mov	r0, r7
	ldr	r3, [r3, #20]
	blx	r3
	cmp	r0, #0
	beq	.L126
	ldr	r3, [r7, #24]
	ldr	r5, [r3]
	ldr	r4, [r3, #8]
	b	.L128
.L145:
	ldr	r3, [r7]
	movs	r5, #117
	mov	r1, #-1
	mov	r0, r7
	str	r5, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r7, #456]
	movs	r1, #1
	str	r1, [r3, #20]
	b	.L133
	.size	jpeg_fill_bit_buffer, .-jpeg_fill_bit_buffer
	.section	.text.jpeg_huff_decode,"ax",%progbits
	.align	2
	.global	jpeg_huff_decode
	.thumb
	.thumb_func
	.type	jpeg_huff_decode, %function
jpeg_huff_decode:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r3
	ldr	r5, [sp, #32]
	mov	r4, r2
	mov	r9, r0
	mov	r3, r1
	cmp	r5, r2
	bgt	.L159
.L147:
	movs	r0, #1
	subs	r2, r4, r5
	lsls	r0, r0, r5
	asr	r4, r3, r2
	ldr	r1, [r8, r5, lsl #2]
	subs	r0, r0, #1
	ands	r4, r4, r0
	cmp	r4, r1
	ble	.L150
	add	r6, r8, r5, lsl #2
	b	.L153
.L151:
	subs	r2, r2, #1
	ldr	r7, [r6, #4]!
	asr	lr, r3, r2
	and	lr, lr, #1
	orr	r4, lr, r4
	cmp	r7, r4
	bge	.L150
.L153:
	cmp	r2, #0
	lsl	r4, r4, #1
	add	r5, r5, #1
	bgt	.L151
	mov	r1, r3
	mov	r0, r9
	movs	r3, #1
	bl	jpeg_fill_bit_buffer(PLT)
	cbz	r0, .L152
	ldr	r3, [r9, #8]
	ldr	r2, [r9, #12]
	b	.L151
.L150:
	cmp	r5, #16
	str	r3, [r9, #8]
	str	r2, [r9, #12]
	bgt	.L160
	adds	r5, r5, #18
	ldr	r2, [r8, #140]
	ldr	r3, [r8, r5, lsl #2]
	add	r4, r4, r2
	add	r4, r4, r3
	ldrb	r0, [r4, #17]	@ zero_extendqisi2
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L159:
	mov	r3, r5
	bl	jpeg_fill_bit_buffer(PLT)
	cbz	r0, .L152
	ldr	r3, [r9, #8]
	ldr	r4, [r9, #12]
	b	.L147
.L160:
	ldr	r0, [r9, #16]
	movs	r2, #118
	mov	r1, #-1
	ldr	r3, [r0]
	str	r2, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L152:
	mov	r0, #-1
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	jpeg_huff_decode, .-jpeg_huff_decode
	.section	.text.decode_mcu_discard_coef,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	decode_mcu_discard_coef, %function
decode_mcu_discard_coef:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #288]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	sub	sp, sp, #60
	ldr	r9, [r0, #456]
	cbz	r3, .L162
	ldr	r4, [r9, #52]
	cmp	r4, #0
	beq	.L163
.L162:
	ldr	r3, [r9, #20]
	cmp	r3, #0
	bne	.L172
.L216:
	add	r4, r9, #36
	add	ip, sp, #16
	ldmia	r4, {r0, r1, r2, r3}
	str	ip, [sp, #12]
	str	r4, [sp, #8]
	ldr	r4, [sp, #12]
	ldr	r7, [r8, #24]
	ldr	r5, [r9, #28]
	stmia	r4, {r0, r1, r2, r3}
	ldr	r0, [r8, #368]
	ldr	ip, [r7]
	ldr	r6, [r7, #8]
	cmp	r0, #0
	str	r8, [sp, #48]
	str	ip, [sp, #32]
	str	r6, [sp, #36]
	ldr	r4, [r9, #32]
	ble	.L173
	mov	r10, r9
	movs	r6, #0
	mov	r1, r5
	mov	r2, r4
	mov	r7, r8
.L190:
	cmp	r2, #7
	ldr	r5, [r10, #88]
	ldr	r4, [r10, #128]
	ble	.L218
.L174:
	sub	r0, r2, #8
	asr	r0, r1, r0
	uxtb	r0, r0
	add	r3, r0, #36
	ldr	r3, [r5, r3, lsl #2]
	cmp	r3, #0
	beq	.L192
	add	r0, r0, r5
	subs	r2, r2, r3
	ldrb	r5, [r0, #1168]	@ zero_extendqisi2
.L177:
	cbz	r5, .L178
	cmp	r2, r5
	blt	.L219
.L179:
	movs	r3, #1
	subs	r2, r2, r5
	lsls	r3, r3, r5
	subs	r0, r5, #1
	asr	lr, r1, r2
	mov	ip, #1
	subs	r3, r3, #1
	lsl	r0, ip, r0
	and	r3, lr, r3
	cmp	r3, r0
	itett	lt
	movlt	lr, #-1
	movge	r5, r3
	lsllt	r5, lr, r5
	addlt	r5, r5, ip
	it	lt
	addlt	r5, r5, r3
.L178:
	ldr	r3, [r10, #168]
	cbz	r3, .L180
	ldr	r3, [r7, #372]
	add	r0, sp, #56
	add	r3, r0, r3, lsl #2
	ldr	r0, [r3, #-40]
	add	r0, r0, r5
	str	r0, [r3, #-40]
.L180:
	mov	fp, #1
	b	.L188
.L222:
	cmp	r2, r5
	add	fp, fp, r3
	blt	.L220
.L185:
	add	fp, fp, #1
	subs	r2, r2, r5
	cmp	fp, #63
	bgt	.L187
.L188:
	cmp	r2, #7
	ble	.L221
.L181:
	sub	r0, r2, #8
	asr	r0, r1, r0
	uxtb	r0, r0
	add	r3, r0, #36
	ldr	r3, [r4, r3, lsl #2]
	cbz	r3, .L195
	add	r0, r0, r4
	subs	r2, r2, r3
	ldrb	r0, [r0, #1168]	@ zero_extendqisi2
.L183:
	ands	r5, r0, #15
	asr	r3, r0, #4
	bne	.L222
	cmp	r3, #15
	bne	.L187
	add	fp, fp, #15
	add	fp, fp, #1
	cmp	fp, #63
	ble	.L188
.L187:
	ldr	r3, [r8, #368]
	adds	r6, r6, #1
	add	r10, r10, #4
	adds	r7, r7, #4
	cmp	r3, r6
	bgt	.L190
	ldr	r7, [r8, #24]
	mov	r5, r1
	ldr	ip, [sp, #32]
	mov	r4, r2
	ldr	r6, [sp, #36]
.L173:
	ldr	lr, [sp, #12]
	str	ip, [r7]
	str	r6, [r7, #8]
	str	r4, [r9, #32]
	ldmia	lr, {r0, r1, r2, r3}
	ldr	r4, [sp, #8]
	str	r5, [r9, #28]
	stmia	r4, {r0, r1, r2, r3}
.L172:
	movs	r0, #1
	ldr	r3, [r9, #52]
	subs	r3, r3, #1
	str	r3, [r9, #52]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L195:
	movs	r3, #9
	add	r5, sp, #32
.L182:
	str	r3, [sp]
	mov	r0, r5
	mov	r3, r4
	bl	jpeg_huff_decode(PLT)
	cmp	r0, #0
	blt	.L175
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #44]
	b	.L183
.L221:
	add	r5, sp, #32
	movs	r3, #0
	mov	r0, r5
	bl	jpeg_fill_bit_buffer(PLT)
	cbz	r0, .L175
	ldr	r2, [sp, #44]
	ldr	r1, [sp, #40]
	cmp	r2, #7
	bgt	.L181
	movs	r3, #1
	b	.L182
.L220:
	add	r0, sp, #32
	mov	r3, r5
	bl	jpeg_fill_bit_buffer(PLT)
	cbz	r0, .L175
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #44]
	b	.L185
.L175:
	movs	r0, #0
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L192:
	movs	r3, #9
	add	fp, sp, #32
.L176:
	str	r3, [sp]
	mov	r0, fp
	mov	r3, r5
	bl	jpeg_huff_decode(PLT)
	subs	r5, r0, #0
	blt	.L175
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #44]
	b	.L177
.L218:
	add	fp, sp, #32
	movs	r3, #0
	mov	r0, fp
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L175
	ldr	r2, [sp, #44]
	ldr	r1, [sp, #40]
	cmp	r2, #7
	bgt	.L174
	movs	r3, #1
	b	.L176
.L163:
	ldr	r3, [r0, #452]
	ldr	r2, [r9, #32]
	ldr	r1, [r3, #32]
	adds	r6, r2, #7
	ldr	r5, [r3, #12]
	bics	r2, r2, r2, asr #32
	it	cs
	movcs	r2, r6
	add	r1, r1, r2, asr #3
	str	r1, [r3, #32]
	str	r4, [r9, #32]
	blx	r5
	cmp	r0, #0
	beq	.L175
	ldr	r2, [r8, #340]
	cmp	r2, #0
	ble	.L170
	mov	r1, r4
	lsls	r2, r2, #2
	add	r0, r9, #36
	bl	memset(PLT)
.L170:
	ldr	r3, [r8, #428]
	ldr	r2, [r8, #288]
	str	r2, [r9, #52]
	cmp	r3, #0
	bne	.L162
	str	r3, [r9, #20]
	b	.L216
.L219:
	add	r0, sp, #32
	mov	r3, r5
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L175
	ldr	r1, [sp, #40]
	ldr	r2, [sp, #44]
	b	.L179
	.size	decode_mcu_discard_coef, .-decode_mcu_discard_coef
	.section	.text.decode_mcu,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	decode_mcu, %function
decode_mcu:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #288]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #84
	ldr	r4, [r0, #456]
	mov	r8, r1
	ldr	r9, .L308
	str	r0, [sp, #16]
	str	r4, [sp, #20]
.LPIC16:
	add	r9, pc
	cmp	r3, #0
	beq	.L224
	ldr	r4, [r4, #52]
	cmp	r4, #0
	beq	.L225
	ldr	r5, [sp, #20]
	ldr	r3, [r5, #20]
	cmp	r3, #0
	bne	.L234
.L295:
	ldr	r4, [sp, #16]
	add	r6, sp, #40
	ldr	r5, [sp, #20]
	str	r6, [sp, #32]
	ldr	r7, [r4, #24]
	ldr	r4, [r4, #368]
	adds	r5, r5, #36
	ldmia	r5, {r0, r1, r2, r3}
	str	r4, [sp, #12]
	ldr	r4, [sp, #32]
	ldr	ip, [r7]
	ldr	r6, [r7, #8]
	stmia	r4, {r0, r1, r2, r3}
	ldr	r0, [sp, #12]
	ldr	r4, [sp, #20]
	str	r5, [sp, #28]
	cmp	r0, #0
	ldr	r5, [sp, #16]
	str	ip, [sp, #56]
	str	r6, [sp, #60]
	str	r5, [sp, #72]
	ldr	r5, [r4, #28]
	ldr	r4, [r4, #32]
	ble	.L235
	ldr	r6, [sp, #16]
	sub	r8, r8, #4
	ldr	r10, [sp, #20]
	movs	r1, #0
	str	r8, [sp, #24]
	mov	r2, r4
	str	r1, [sp, #36]
	mov	r8, #1
	mov	r1, r5
	mov	r5, r6
.L261:
	ldr	r6, [sp, #24]
	cmp	r2, #7
	ldr	r7, [r10, #88]
	ldr	r4, [r6, #4]!
	str	r6, [sp, #24]
	ldr	r6, [r10, #128]
	ble	.L299
.L236:
	sub	r0, r2, #8
	asr	r0, r1, r0
	uxtb	r0, r0
	add	r3, r0, #36
	ldr	r3, [r7, r3, lsl #2]
	cmp	r3, #0
	beq	.L263
	add	r0, r0, r7
	subs	r2, r2, r3
	ldrb	r7, [r0, #1168]	@ zero_extendqisi2
.L239:
	cbz	r7, .L240
	cmp	r2, r7
	blt	.L300
.L241:
	subs	r2, r2, r7
	lsl	r3, r8, r7
	subs	r0, r7, #1
	asr	lr, r1, r2
	subs	r3, r3, #1
	lsl	r0, r8, r0
	and	r3, lr, r3
	cmp	r3, r0
	itett	lt
	movlt	lr, #-1
	movge	r7, r3
	lsllt	r7, lr, r7
	addlt	r7, r7, #1
	it	lt
	addlt	r7, r7, r3
.L240:
	ldr	r3, [r10, #168]
	cbz	r3, .L242
	ldr	r3, [r5, #372]
	add	r0, sp, #80
	add	r3, r0, r3, lsl #2
	ldr	r0, [r3, #-40]
	add	r7, r7, r0
	str	r7, [r3, #-40]
	strh	r7, [r4]	@ movhi
.L242:
	ldr	r3, [r10, #208]
	cmp	r3, #0
	beq	.L243
	mov	fp, #1
	b	.L252
.L303:
	cmp	r2, r7
	add	fp, fp, r3
	blt	.L301
.L248:
	subs	r2, r2, r7
	lsl	r3, r8, r7
	asr	lr, r1, r2
	subs	r0, r7, #1
	lsl	r0, r8, r0
	subs	r3, r3, #1
	and	r3, lr, r3
	cmp	r3, r0
	ldr	r0, .L308+4
	itt	lt
	movlt	lr, #-1
	lsllt	r7, lr, r7
	ldr	r0, [r9, r0]
	itt	lt
	addlt	r7, r7, #1
	addlt	r3, r3, r7
	ldr	r0, [r0, fp, lsl #2]
	add	fp, fp, #1
	cmp	fp, #63
	strh	r3, [r4, r0, lsl #1]	@ movhi
	bgt	.L251
.L252:
	cmp	r2, #7
	ble	.L302
.L244:
	sub	r0, r2, #8
	asr	r0, r1, r0
	uxtb	r0, r0
	add	r3, r0, #36
	ldr	r3, [r6, r3, lsl #2]
	cmp	r3, #0
	beq	.L266
	add	r0, r0, r6
	subs	r2, r2, r3
	ldrb	r0, [r0, #1168]	@ zero_extendqisi2
.L246:
	ands	r7, r0, #15
	asr	r3, r0, #4
	bne	.L303
	cmp	r3, #15
	bne	.L251
	add	fp, fp, #15
	add	fp, fp, #1
	cmp	fp, #63
	ble	.L252
.L251:
	ldr	r4, [sp, #16]
	add	r10, r10, #4
	ldr	r6, [sp, #36]
	adds	r5, r5, #4
	ldr	r3, [r4, #368]
	adds	r6, r6, #1
	str	r6, [sp, #36]
	cmp	r3, r6
	bgt	.L261
	mov	r6, r4
	ldr	ip, [sp, #56]
	ldr	r7, [r6, #24]
	mov	r5, r1
	ldr	r6, [sp, #60]
	mov	r4, r2
.L235:
	ldr	lr, [sp, #32]
	str	r6, [r7, #8]
	ldr	r6, [sp, #20]
	str	ip, [r7]
	ldmia	lr, {r0, r1, r2, r3}
	str	r4, [r6, #32]
	ldr	r4, [sp, #28]
	str	r5, [r6, #28]
	stmia	r4, {r0, r1, r2, r3}
.L234:
	movs	r0, #1
	ldr	r5, [sp, #20]
	ldr	r3, [r5, #52]
	subs	r3, r3, #1
	str	r3, [r5, #52]
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L224:
	ldr	r3, [r4, #20]
	cmp	r3, #0
	bne	.L234
	b	.L295
.L266:
	movs	r3, #9
	add	r7, sp, #56
.L245:
	str	r3, [sp]
	mov	r0, r7
	mov	r3, r6
	bl	jpeg_huff_decode(PLT)
	cmp	r0, #0
	blt	.L237
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #68]
	b	.L246
.L302:
	add	r7, sp, #56
	movs	r3, #0
	mov	r0, r7
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L237
	ldr	r2, [sp, #68]
	ldr	r1, [sp, #64]
	cmp	r2, #7
	bgt	.L244
	movs	r3, #1
	b	.L245
.L301:
	add	r0, sp, #56
	mov	r3, r7
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L237
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #68]
	b	.L248
.L243:
	movs	r7, #1
	b	.L259
.L306:
	cmp	r2, r4
	add	r7, r7, r3
	blt	.L304
.L257:
	subs	r2, r2, r4
.L258:
	adds	r7, r7, #1
	cmp	r7, #63
	bgt	.L251
.L259:
	cmp	r2, #7
	ble	.L305
.L253:
	sub	r0, r2, #8
	asr	r0, r1, r0
	uxtb	r0, r0
	add	r3, r0, #36
	ldr	r3, [r6, r3, lsl #2]
	cbz	r3, .L268
	add	r0, r0, r6
	subs	r2, r2, r3
	ldrb	r0, [r0, #1168]	@ zero_extendqisi2
.L255:
	ands	r4, r0, #15
	asr	r3, r0, #4
	bne	.L306
	cmp	r3, #15
	bne	.L251
	adds	r7, r7, #15
	b	.L258
.L268:
	movs	r3, #9
	add	r4, sp, #56
.L254:
	str	r3, [sp]
	mov	r0, r4
	mov	r3, r6
	bl	jpeg_huff_decode(PLT)
	cmp	r0, #0
	blt	.L237
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #68]
	b	.L255
.L305:
	add	r4, sp, #56
	movs	r3, #0
	mov	r0, r4
	bl	jpeg_fill_bit_buffer(PLT)
	cbz	r0, .L237
	ldr	r2, [sp, #68]
	ldr	r1, [sp, #64]
	cmp	r2, #7
	bgt	.L253
	movs	r3, #1
	b	.L254
.L304:
	add	r0, sp, #56
	mov	r3, r4
	bl	jpeg_fill_bit_buffer(PLT)
	cbz	r0, .L237
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #68]
	b	.L257
.L237:
	movs	r0, #0
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L263:
	movs	r3, #9
	add	fp, sp, #56
.L238:
	str	r3, [sp]
	mov	r0, fp
	mov	r3, r7
	bl	jpeg_huff_decode(PLT)
	subs	r7, r0, #0
	blt	.L237
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #68]
	b	.L239
.L299:
	add	fp, sp, #56
	movs	r3, #0
	mov	r0, fp
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L237
	ldr	r2, [sp, #68]
	ldr	r1, [sp, #64]
	cmp	r2, #7
	bgt	.L236
	movs	r3, #1
	b	.L238
.L225:
	ldr	r6, [sp, #16]
	ldr	r5, [sp, #20]
	ldr	r3, [r6, #452]
	ldr	r1, [r5, #32]
	ldr	r2, [r3, #32]
	adds	r6, r1, #7
	ldr	r5, [r3, #12]
	bics	r1, r1, r1, asr #32
	it	cs
	movcs	r1, r6
	ldr	r6, [sp, #20]
	add	r2, r2, r1, asr #3
	str	r2, [r3, #32]
	str	r4, [r6, #32]
	blx	r5
	cmp	r0, #0
	beq	.L237
	ldr	r5, [sp, #16]
	ldr	r2, [r5, #340]
	cmp	r2, #0
	ble	.L232
	ldr	r0, [sp, #20]
	mov	r1, r4
	lsls	r2, r2, #2
	adds	r0, r0, #36
	bl	memset(PLT)
.L232:
	ldr	r6, [sp, #16]
	ldr	r4, [sp, #20]
	ldr	r3, [r6, #428]
	ldr	r2, [r6, #288]
	str	r2, [r4, #52]
	cbnz	r3, .L307
	str	r3, [r4, #20]
	b	.L295
.L300:
	add	r0, sp, #56
	mov	r3, r7
	bl	jpeg_fill_bit_buffer(PLT)
	cmp	r0, #0
	beq	.L237
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #68]
	b	.L241
.L307:
	ldr	r6, [sp, #20]
	ldr	r3, [r6, #20]
	cmp	r3, #0
	bne	.L234
	b	.L295
.L309:
	.align	2
.L308:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	jpeg_natural_order(GOT)
	.size	decode_mcu, .-decode_mcu
	.section	.text.jinit_huff_decoder,"ax",%progbits
	.align	2
	.global	jinit_huff_decoder
	.thumb
	.thumb_func
	.type	jinit_huff_decoder, %function
jinit_huff_decoder:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	movs	r1, #1
	ldr	r3, [r0, #4]
	movs	r2, #248
	mov	r7, r0
	movs	r5, #0
	ldr	r9, .L312
	movs	r6, #16
	ldr	r3, [r3]
	blx	r3
	ldr	r8, .L312+4
	mov	r4, r0
	ldr	ip, .L312+8
.LPIC17:
	add	r9, pc
	ldr	lr, .L312+12
	mov	r1, r5
	ldr	r3, .L312+16
.LPIC18:
	add	r8, pc
.LPIC19:
	add	ip, pc
	str	r4, [r7, #456]
.LPIC20:
	add	lr, pc
	mov	r2, r6
.LPIC21:
	add	r3, pc
	str	r9, [r4]
	str	r8, [r4, #4]
	adds	r0, r0, #72
	str	ip, [r4, #8]
	str	lr, [r4, #12]
	str	r3, [r4, #16]
	str	r5, [r4, #24]
	bl	memset(PLT)
	add	r0, r4, #56
	mov	r1, r5
	mov	r2, r6
	pop	{r3, r4, r5, r6, r7, r8, r9, lr}
	b	memset(PLT)
.L313:
	.align	2
.L312:
	.word	start_pass_huff_decoder-(.LPIC17+4)
	.word	decode_mcu-(.LPIC18+4)
	.word	decode_mcu_discard_coef-(.LPIC19+4)
	.word	configure_huffman_decoder-(.LPIC20+4)
	.word	get_huffman_decoder_configuration-(.LPIC21+4)
	.size	jinit_huff_decoder, .-jinit_huff_decoder
	.section	.text.jpeg_create_huffman_index,"ax",%progbits
	.align	2
	.global	jpeg_create_huffman_index
	.thumb
	.thumb_func
	.type	jpeg_create_huffman_index, %function
jpeg_create_huffman_index:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r3, #1
	ldr	r6, [r0, #332]
	movs	r0, #40
	mov	r4, r1
	str	r3, [r1, #4]
	str	r6, [r1, #8]
	lsls	r6, r6, #2
	bl	malloc(PLT)
	mov	r5, r0
	mov	r0, r6
	str	r5, [r4, #16]
	adds	r6, r6, #40
	bl	malloc(PLT)
	movs	r2, #16
	movs	r3, #0
	str	r0, [r5, #36]
	str	r6, [r4, #12]
	str	r2, [r4]
	str	r3, [r5, #16]
	pop	{r4, r5, r6, pc}
	.size	jpeg_create_huffman_index, .-jpeg_create_huffman_index
	.section	.text.jpeg_destroy_huffman_index,"ax",%progbits
	.align	2
	.global	jpeg_destroy_huffman_index
	.thumb
	.thumb_func
	.type	jpeg_destroy_huffman_index, %function
jpeg_destroy_huffman_index:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, [r0, #4]
	cmp	r3, #0
	ble	.L317
	movs	r6, #0
	mov	r7, r6
.L318:
	ldr	r3, [r5, #8]
	cmp	r3, #0
	ble	.L320
	movs	r4, #0
.L321:
	ldr	r3, [r5, #16]
	add	r3, r3, r6
	ldr	r3, [r3, #36]
	ldr	r0, [r3, r4, lsl #2]
	adds	r4, r4, #1
	bl	free(PLT)
	ldr	r3, [r5, #8]
	cmp	r3, r4
	bgt	.L321
.L320:
	ldr	r3, [r5, #16]
	adds	r7, r7, #1
	add	r3, r3, r6
	adds	r6, r6, #40
	ldr	r0, [r3, #36]
	bl	free(PLT)
	ldr	r3, [r5, #4]
	cmp	r3, r7
	bgt	.L318
.L317:
	ldr	r0, [r5, #16]
	pop	{r3, r4, r5, r6, r7, lr}
	b	free(PLT)
	.size	jpeg_destroy_huffman_index, .-jpeg_destroy_huffman_index
	.section	.text.jset_input_stream_position,"ax",%progbits
	.align	2
	.global	jset_input_stream_position
	.thumb
	.thumb_func
	.type	jset_input_stream_position, %function
jset_input_stream_position:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	ldr	r2, [r3, #36]
	cbz	r2, .L324
	bx	r2
.L324:
	push	{r4}
	mov	r4, r1
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #12]
	subs	r1, r1, r4
	add	r4, r4, r2
	str	r4, [r3]
	str	r1, [r3, #8]
	ldr	r4, [sp], #4
	bx	lr
	.size	jset_input_stream_position, .-jset_input_stream_position
	.section	.text.jset_input_stream_position_bit,"ax",%progbits
	.align	2
	.global	jset_input_stream_position_bit
	.thumb
	.thumb_func
	.type	jset_input_stream_position_bit, %function
jset_input_stream_position_bit:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	ldr	r4, [r0, #456]
	str	r2, [r4, #32]
	str	r3, [r4, #28]
	ldr	r4, [sp], #4
	b	jset_input_stream_position(PLT)
	.size	jset_input_stream_position_bit, .-jset_input_stream_position_bit
	.section	.text.jpeg_configure_huffman_decoder,"ax",%progbits
	.align	2
	.global	jpeg_configure_huffman_decoder
	.thumb
	.thumb_func
	.type	jpeg_configure_huffman_decoder, %function
jpeg_configure_huffman_decoder:
	@ args = 24, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, r5, r6, r7, lr}
	add	r5, sp, #24
	stmia	r5, {r1, r2, r3}
	movs	r3, #0
	and	r2, r1, #31
	lsrs	r1, r1, #5
	ldr	r7, [r0, #456]
	ldr	r5, [r0, #452]
	ldrh	lr, [sp, #40]
	ldrb	r6, [sp, #42]	@ zero_extendqisi2
	str	r3, [r0, #428]
	str	lr, [r7, #52]
	ldr	r3, [sp, #36]
	str	r6, [r5, #24]
	pop	{r4, r5, r6, r7, lr}
	add	sp, sp, #16
	b	jset_input_stream_position_bit(PLT)
	.size	jpeg_configure_huffman_decoder, .-jpeg_configure_huffman_decoder
	.section	.text.configure_huffman_decoder,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	configure_huffman_decoder, %function
configure_huffman_decoder:
	@ args = 24, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	add	r4, sp, #28
	add	r5, sp, #40
	mov	r6, r0
	stmia	r4, {r1, r2, r3}
	ldmia	r5, {r0, r1}
	ldr	r5, [r6, #456]
	stmia	sp, {r0, r1}
	mov	r0, r6
	ldmia	r4, {r1, r2, r3}
	bl	jpeg_configure_huffman_decoder(PLT)
	ldr	r3, [r6, #340]
	cmp	r3, #0
	ble	.L330
	ldrsh	r2, [sp, #32]
	cmp	r3, #1
	str	r2, [r5, #36]
	ble	.L330
	ldrsh	r2, [sp, #34]
	cmp	r3, #2
	str	r2, [r5, #40]
	ble	.L330
	cmp	r3, #3
	ldrsh	r2, [sp, #36]
	it	gt
	ldrshgt	r3, [sp, #38]
	str	r2, [r5, #44]
	it	gt
	strgt	r3, [r5, #48]
.L330:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	add	sp, sp, #16
	bx	lr
	.size	configure_huffman_decoder, .-configure_huffman_decoder
	.section	.text.jget_input_stream_position,"ax",%progbits
	.align	2
	.global	jget_input_stream_position
	.thumb
	.thumb_func
	.type	jget_input_stream_position, %function
jget_input_stream_position:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #24]
	ldr	r0, [r3, #12]
	ldr	r3, [r3, #8]
	subs	r0, r0, r3
	bx	lr
	.size	jget_input_stream_position, .-jget_input_stream_position
	.section	.text.jpeg_get_huffman_decoder_configuration,"ax",%progbits
	.align	2
	.global	jpeg_get_huffman_decoder_configuration
	.thumb
	.thumb_func
	.type	jpeg_get_huffman_decoder_configuration, %function
jpeg_get_huffman_decoder_configuration:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, [r0, #288]
	mov	r5, r1
	ldr	r6, [r0, #456]
	ldr	r7, [r6, #52]
	cbz	r3, .L337
	cbz	r7, .L347
.L337:
	ldr	r3, [r4, #452]
	mov	r0, r4
	strh	r7, [r5, #16]	@ movhi
	ldr	r3, [r3, #24]
	strb	r3, [r5, #18]
	bl	jget_input_stream_position(PLT)
	ldr	r2, [r6, #32]
	ldr	r3, [r6, #28]
	add	r0, r2, r0, lsl #5
	str	r3, [r5, #12]
	str	r0, [r5]
.L335:
	pop	{r3, r4, r5, r6, r7, pc}
.L347:
	ldr	r3, [r0, #452]
	ldr	r2, [r6, #32]
	ldr	r1, [r3, #32]
	add	lr, r2, #7
	ldr	ip, [r3, #12]
	bics	r2, r2, r2, asr #32
	it	cs
	movcs	r2, lr
	add	r1, r1, r2, asr #3
	str	r1, [r3, #32]
	str	r7, [r6, #32]
	blx	ip
	cmp	r0, #0
	beq	.L335
	ldr	r2, [r4, #340]
	cmp	r2, #0
	ble	.L342
	mov	r1, r7
	lsls	r2, r2, #2
	add	r0, r6, #36
	bl	memset(PLT)
.L342:
	ldr	r3, [r4, #428]
	ldr	r7, [r4, #288]
	str	r7, [r6, #52]
	cmp	r3, #0
	bne	.L337
	str	r3, [r6, #20]
	b	.L337
	.size	jpeg_get_huffman_decoder_configuration, .-jpeg_get_huffman_decoder_configuration
	.section	.text.get_huffman_decoder_configuration,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	get_huffman_decoder_configuration, %function
get_huffman_decoder_configuration:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	mov	r4, r1
	ldr	r5, [r0, #456]
	bl	jpeg_get_huffman_decoder_configuration(PLT)
	ldr	r3, [r6, #340]
	cmp	r3, #0
	ble	.L348
	ldr	r2, [r5, #36]
	cmp	r3, #1
	strh	r2, [r4, #4]	@ movhi
	ble	.L348
	ldr	r2, [r5, #40]
	cmp	r3, #2
	strh	r2, [r4, #6]	@ movhi
	ble	.L348
	cmp	r3, #3
	ldr	r2, [r5, #44]
	it	gt
	ldrgt	r3, [r5, #48]
	strh	r2, [r4, #8]	@ movhi
	it	gt
	strhgt	r3, [r4, #10]	@ movhi
.L348:
	pop	{r4, r5, r6, pc}
	.size	get_huffman_decoder_configuration, .-get_huffman_decoder_configuration
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
