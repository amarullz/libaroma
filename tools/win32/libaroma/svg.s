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
	.file	"svg.c"
	.section	.text.nsvg__content,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__content, %function
nsvg__content:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	nsvg__content, .-nsvg__content
	.section	.text.nsvg__cmpEdge,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__cmpEdge, %function
nsvg__cmpEdge:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	flds	s14, [r0, #4]
	flds	s15, [r1, #4]
	fcmpes	s14, s15
	fmstat
	bmi	.L4
	ite	gt
	movgt	r0, #1
	movle	r0, #0
	bx	lr
.L4:
	mov	r0, #-1
	bx	lr
	.size	nsvg__cmpEdge, .-nsvg__cmpEdge
	.section	.text.nsvg__parseElement,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseElement, %function
nsvg__parseElement:
	@ args = 0, pretend = 0, frame = 1048
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subw	sp, sp, #1052
	ldrb	r4, [r0]	@ zero_extendqisi2
	mov	r6, r0
	str	r1, [sp, #4]
	str	r2, [sp, #8]
	str	r3, [sp, #12]
	cmp	r4, #0
	beq	.L6
	ldr	r5, .L94
.LPIC8:
	add	r5, pc
	b	.L8
.L9:
	ldrb	r4, [r6, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L6
.L8:
	mov	r0, r5
	mov	r1, r4
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L9
	cmp	r4, #47
	mov	r3, r6
	iteee	eq
	ldrbeq	r1, [r6, #1]	@ zero_extendqisi2
	movne	r2, #1
	ldrbne	r1, [r6]	@ zero_extendqisi2
	movne	r7, r0
	iteee	ne
	strne	r2, [sp, #20]
	addeq	r6, r6, #1
	streq	r0, [sp, #20]
	moveq	r7, #1
	cmp	r1, #63
	it	ne
	cmpne	r1, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	str	r3, [sp, #16]
	beq	.L6
	cmp	r1, #33
	beq	.L6
	ldr	r4, .L94+4
	mov	fp, r6
.LPIC9:
	add	r4, pc
	b	.L12
.L14:
	ldrb	r1, [fp, #1]!	@ zero_extendqisi2
	cbz	r1, .L13
.L12:
	mov	r0, r4
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L14
	movs	r1, #0
	add	fp, fp, #1
	strb	r1, [fp, #-1]
.L13:
	cmp	r7, #0
	bne	.L87
	ldrb	r9, [fp]	@ zero_extendqisi2
	movs	r3, #1
	add	r8, sp, #24
	cmp	r9, #0
	beq	.L17
	ldr	r4, .L94+8
	add	r8, sp, #24
	ldr	r5, .L94+12
.LPIC10:
	add	r4, pc
	mov	r10, r4
.LPIC11:
	add	r5, pc
	mov	r4, fp
	mov	fp, r6
	mov	r6, r9
	b	.L39
.L20:
	ldrb	r6, [r4, #1]	@ zero_extendqisi2
	adds	r4, r4, #1
	cmp	r6, #0
	beq	.L85
.L39:
	mov	r0, r10
	mov	r1, r6
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L20
	cmp	r6, #47
	beq	.L88
	ldrb	r6, [r4]	@ zero_extendqisi2
	add	r9, r7, #1
	str	r4, [r8, r7, lsl #2]
	cbnz	r6, .L23
	b	.L78
.L89:
	cmp	r6, #61
	beq	.L24
	ldrb	r6, [r4, #1]!	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L78
.L23:
	mov	r0, r5
	mov	r1, r6
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L89
.L24:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	mov	r2, #0
	adds	r1, r4, #1
	strb	r2, [r4]
	cmp	r3, #34
	it	ne
	cmpne	r3, #0
	bne	.L37
	b	.L27
.L90:
	ldrb	r3, [r1, #1]!	@ zero_extendqisi2
	cmp	r3, #34
	it	ne
	cmpne	r3, #0
	beq	.L27
.L37:
	cmp	r3, #39
	bne	.L90
	movs	r3, #39
.L29:
	ldrb	r2, [r1, #1]	@ zero_extendqisi2
	adds	r1, r1, #1
	adds	r7, r7, #2
	str	r1, [r8, r9, lsl #2]
	cbnz	r2, .L84
	b	.L85
.L91:
	ldrb	r2, [r1, #1]!	@ zero_extendqisi2
	cbz	r2, .L85
.L84:
	cmp	r3, r2
	bne	.L91
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	mov	r3, #0
	adds	r4, r1, #1
	strb	r3, [r1]
	cbz	r6, .L85
	cmp	r7, #252
	ble	.L39
.L85:
	mov	r6, fp
	adds	r3, r7, #1
.L17:
	ldr	r2, [sp, #4]
	ldr	r1, [sp, #20]
	cmp	r2, #0
	ite	eq
	moveq	r1, #0
	andne	r1, r1, #1
	movs	r2, #0
	str	r2, [r8, r7, lsl #2]
	str	r2, [r8, r3, lsl #2]
	cbnz	r1, .L92
.L33:
	ldr	r3, [sp, #16]
	cbnz	r3, .L93
.L6:
	addw	sp, sp, #1052
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L27:
	cmp	r3, #0
	bne	.L29
.L78:
	mov	r6, fp
	add	r3, r9, #1
	mov	r7, r9
	b	.L17
.L93:
	ldr	r0, [sp, #12]
	mov	r1, r6
	ldr	r2, [sp, #8]
	blx	r2
	addw	sp, sp, #1052
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L92:
	mov	r2, r8
	ldr	r0, [sp, #12]
	mov	r1, r6
	ldr	r3, [sp, #4]
	blx	r3
	b	.L33
.L88:
	ldr	r2, [sp, #8]
	mov	r6, fp
	adds	r3, r7, #1
	adds	r2, r2, #0
	it	ne
	movne	r2, #1
	str	r2, [sp, #16]
	b	.L17
.L87:
	ldr	r3, [sp, #8]
	movs	r7, #0
	add	r8, sp, #24
	adds	r3, r3, #0
	it	ne
	movne	r3, #1
	str	r3, [sp, #16]
	movs	r3, #1
	b	.L17
.L95:
	.align	2
.L94:
	.word	.LC0-(.LPIC8+4)
	.word	.LC0-(.LPIC9+4)
	.word	.LC0-(.LPIC10+4)
	.word	.LC0-(.LPIC11+4)
	.size	nsvg__parseElement, .-nsvg__parseElement
	.section	.text.nsvg__parseColor,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseColor, %function
nsvg__parseColor:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldrb	r5, [r0]	@ zero_extendqisi2
	sub	sp, sp, #108
	ldr	r6, .L134
	cmp	r5, #32
.LPIC16:
	add	r6, pc
	bne	.L97
.L98:
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	cmp	r5, #32
	beq	.L98
.L97:
	mov	r0, r4
	bl	strlen(PLT)
	cbz	r0, .L99
	cmp	r5, #35
	beq	.L130
	cmp	r0, #3
	bls	.L99
	cmp	r5, #114
	beq	.L131
.L99:
	ldr	r3, .L134+4
	mov	r1, r4
	ldr	r5, [r6, r3]
	ldr	r0, [r5]
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L109
	ldr	r0, [r5, #8]
	mov	r1, r4
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L114
	ldr	r0, [r5, #16]
	mov	r1, r4
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L115
	ldr	r0, [r5, #24]
	mov	r1, r4
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L116
	ldr	r0, [r5, #32]
	mov	r1, r4
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L117
	ldr	r0, [r5, #40]
	mov	r1, r4
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L118
	ldr	r0, [r5, #48]
	mov	r1, r4
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L119
	ldr	r0, [r5, #56]
	mov	r1, r4
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L120
	ldr	r0, [r5, #64]
	mov	r1, r4
	bl	strcmp(PLT)
	cbz	r0, .L121
	mov	r1, r4
	ldr	r0, [r5, #72]
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L132
	movw	r0, #32896
	movt	r0, 128
.L106:
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L121:
	movs	r0, #8
.L109:
	add	r5, r5, r0, lsl #3
	ldr	r0, [r5, #4]
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L131:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #103
	bne	.L99
	ldrb	r3, [r4, #2]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L99
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	cmp	r3, #40
	bne	.L99
	add	r2, sp, #24
	ldr	r1, .L134+8
	str	r2, [sp]
	add	r2, sp, #72
	add	r6, sp, #40
	str	r2, [sp, #4]
	add	r2, sp, #32
	mov	r5, #-1
	adds	r0, r4, #4
	str	r2, [sp, #8]
	movs	r4, #0
.LPIC15:
	add	r1, pc
	mov	r3, r6
	add	r2, sp, #16
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r5, [sp, #32]
	str	r4, [sp, #40]
	str	r4, [sp, #44]
	str	r4, [sp, #48]
	str	r4, [sp, #52]
	str	r4, [sp, #56]
	str	r4, [sp, #60]
	str	r4, [sp, #64]
	str	r4, [sp, #68]
	str	r4, [sp, #72]
	str	r4, [sp, #76]
	str	r4, [sp, #80]
	str	r4, [sp, #84]
	str	r4, [sp, #88]
	str	r4, [sp, #92]
	str	r4, [sp, #96]
	str	r4, [sp, #100]
	bl	__isoc99_sscanf(PLT)
	mov	r0, r6
	movs	r1, #37
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L107
	ldr	r0, [sp, #32]
	movw	r3, #34079
	ldr	r1, [sp, #24]
	movt	r3, 20971
	ldr	r2, [sp, #16]
	rsb	r0, r0, r0, lsl #8
	rsb	r1, r1, r1, lsl #8
	umull	r4, r0, r3, r0
	rsb	r2, r2, r2, lsl #8
	umull	r4, r1, r3, r1
	lsrs	r0, r0, #5
	umull	r4, r3, r3, r2
	lsls	r2, r0, #16
	lsrs	r1, r1, #5
	orr	r2, r2, r1, lsl #8
	orr	r0, r2, r3, lsr #5
	b	.L106
.L130:
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	movs	r5, #0
	str	r5, [sp, #72]
	adds	r7, r4, #1
	cmp	r1, #0
	beq	.L111
	ldr	r6, .L134+12
.LPIC12:
	add	r6, pc
	b	.L102
.L104:
	adds	r5, r5, #1
	adds	r3, r4, r5
	ldrb	r1, [r3, #1]	@ zero_extendqisi2
	cbz	r1, .L103
.L102:
	mov	r0, r6
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L104
.L103:
	cmp	r5, #6
	beq	.L133
	cmp	r5, #3
	it	ne
	movne	r0, #0
	bne	.L106
	ldr	r1, .L134+16
	add	r2, sp, #72
	mov	r0, r7
.LPIC14:
	add	r1, pc
	bl	__isoc99_sscanf(PLT)
	ldr	r3, [sp, #72]
	and	r2, r3, #3840
	and	r1, r3, #240
	lsls	r2, r2, #8
	and	r3, r3, #15
	orr	r2, r2, r1, lsl #4
	orrs	r3, r3, r2
	orr	r3, r3, r3, lsl #4
	uxtb	r1, r3
	and	r2, r3, #65280
	lsls	r1, r1, #16
	orr	r3, r1, r3, lsr #16
	orr	r0, r3, r2
	b	.L106
.L114:
	movs	r0, #1
	b	.L109
.L115:
	movs	r0, #2
	b	.L109
.L116:
	movs	r0, #3
	b	.L109
.L117:
	movs	r0, #4
	b	.L109
.L118:
	movs	r0, #5
	b	.L109
.L119:
	movs	r0, #6
	b	.L109
.L120:
	movs	r0, #7
	b	.L109
.L132:
	movs	r0, #9
	b	.L109
.L133:
	ldr	r1, .L134+20
	add	r2, sp, #72
	mov	r0, r7
.LPIC13:
	add	r1, pc
	bl	__isoc99_sscanf(PLT)
	ldr	r3, [sp, #72]
	ubfx	r1, r3, #16, #8
	and	r2, r3, #65280
	uxtb	r3, r3
	orr	r0, r1, r3, lsl #16
	orrs	r0, r0, r2
	b	.L106
.L111:
	mov	r0, r1
	b	.L106
.L107:
	ldr	r1, [sp, #32]
	ldr	r2, [sp, #24]
	ldr	r3, [sp, #16]
	lsls	r1, r1, #16
	orr	r2, r1, r2, lsl #8
	orr	r0, r2, r3
	b	.L106
.L135:
	.align	2
.L134:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC16+4)
	.word	nsvg__colors(GOT)
	.word	.LC2-(.LPIC15+4)
	.word	.LC0-(.LPIC12+4)
	.word	.LC1-(.LPIC14+4)
	.word	.LC1-(.LPIC13+4)
	.size	nsvg__parseColor, .-nsvg__parseColor
	.section	.text.nsvg__flattenCubicBez,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__flattenCubicBez, %function
nsvg__flattenCubicBez:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #10
	push	{r4, r5, r6, lr}
	mov	r4, r1
	fstmfdd	sp!, {d8, d9, d10, d11, d12}
	bgt	.L136
	mov	r5, r0
	mov	r6, r2
	fcpys	s17, s2
	fcpys	s18, s3
	fcpys	s20, s6
	fcpys	s19, s7
	fconsts	s16, #96
	b	.L147
.L157:
	fcpys	s7, s24
	bl	nsvg__flattenCubicBez(PLT)
	cmp	r4, #11
	fcpys	s5, s22
	fcpys	s4, s21
	beq	.L136
	fcpys	s1, s24
	fcpys	s0, s23
.L147:
	fsubs	s15, s19, s1
	adds	r4, r4, #1
	fsubs	s12, s17, s20
	mov	r0, r5
	fsubs	s14, s20, s0
	mov	r1, r4
	fsubs	s11, s4, s20
	movs	r2, #0
	fsubs	s10, s19, s18
	fmuls	s12, s12, s15
	fsubs	s9, s19, s5
	fmuls	s11, s11, s15
	fmuls	s13, s14, s14
	fadds	s2, s0, s17
	fadds	s17, s4, s17
	fadds	s4, s4, s20
	fmacs	s12, s10, s14
	fmacs	s11, s9, s14
	fmacs	s13, s15, s15
	fadds	s3, s18, s1
	fmuls	s17, s17, s16
	fadds	s18, s18, s5
	fmuls	s21, s4, s16
	fadds	s5, s5, s19
	fmuls	s2, s2, s16
	flds	s15, [r5, #8]
	fmuls	s18, s18, s16
	fmuls	s22, s5, s16
	fadds	s14, s17, s2
	fmuls	s3, s3, s16
	fadds	s17, s21, s17
	fabss	s12, s12
	fmuls	s13, s13, s15
	fabss	s11, s11
	fadds	s15, s18, s3
	fmuls	s4, s14, s16
	fadds	s18, s22, s18
	fmuls	s17, s17, s16
	fadds	s12, s11, s12
	fmuls	s5, s15, s16
	fmuls	s18, s18, s16
	fadds	s23, s17, s4
	fmuls	s12, s12, s12
	fadds	s24, s18, s5
	fmuls	s23, s23, s16
	fcmpes	s13, s12
	fmstat
	fmuls	s24, s24, s16
	fcpys	s6, s23
	ble	.L157
	ldr	r3, [r5, #32]
	ldr	r0, [r5, #28]
	cmp	r3, r2
	ble	.L142
	flds	s15, [r5, #12]
	add	r2, r3, #134217728
	subs	r2, r2, #1
	add	r2, r0, r2, lsl #5
	fmuls	s13, s15, s15
	flds	s15, [r2, #4]
	flds	s14, [r2]
	fsubs	s15, s19, s15
	fsubs	s14, s20, s14
	fmuls	s15, s15, s15
	fmacs	s15, s14, s14
	fcmpes	s15, s13
	fmstat
	bmi	.L159
.L142:
	ldr	r2, [r5, #36]
	cmp	r3, r2
	blt	.L144
	cmp	r2, #0
	itete	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	lslgt	r1, r2, #6
	movle	r1, #2048
	str	r3, [r5, #36]
	bl	realloc(PLT)
	str	r0, [r5, #28]
	cbz	r0, .L136
	ldr	r3, [r5, #32]
.L144:
	add	r3, r0, r3, lsl #5
	strb	r6, [r3, #28]
	ldr	r2, [r5, #32]
	fsts	s20, [r3]
	fsts	s19, [r3, #4]
	adds	r3, r2, #1
	str	r3, [r5, #32]
.L136:
	fldmfdd	sp!, {d8-d12}
	pop	{r4, r5, r6, pc}
.L159:
	ldrb	r3, [r2, #28]	@ zero_extendqisi2
	orrs	r6, r6, r3
	strb	r6, [r2, #28]
	fldmfdd	sp!, {d8-d12}
	pop	{r4, r5, r6, pc}
	.size	nsvg__flattenCubicBez, .-nsvg__flattenCubicBez
	.section	.text.nsvg__curveBounds,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__curveBounds, %function
nsvg__curveBounds:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	flds	s14, [r1]
	flds	s15, [r1, #24]
	push	{r4, r5, r6, r7, r8, r9, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #20
	fcmpes	s14, s15
	fmstat
	it	mi
	fcpysmi	s15, s14
	fsts	s15, [r0]
	flds	s13, [r1, #4]
	flds	s14, [r1, #28]
	fcmpes	s13, s14
	fmstat
	ite	pl
	fcpyspl	s10, s14
	fcpysmi	s10, s13
	fsts	s10, [r0, #4]
	flds	s13, [r1]
	flds	s14, [r1, #24]
	fcmpes	s13, s14
	fmstat
	ite	le
	fcpysle	s12, s14
	fcpysgt	s12, s13
	fsts	s12, [r0, #8]
	flds	s13, [r1, #4]
	flds	s14, [r1, #28]
	fcmpes	s13, s14
	fmstat
	it	gt
	fcpysgt	s14, s13
	fsts	s14, [r0, #12]
	flds	s11, [r1, #8]
	fcmpes	s15, s11
	fmstat
	bhi	.L169
	fcmpes	s12, s11
	fmstat
	bge	.L171
.L169:
	fldd	d15, .L226
	add	r5, r0, #8
	add	r4, r1, #24
	add	r9, r1, #32
	fconstd	d12, #8
.L172:
	flds	s22, [r4, #-24]
	movs	r3, #0
	movs	r2, #0
	movt	r3, 49160
	flds	s20, [r4, #-16]
	fmdrr	d16, r2, r3
	movs	r3, #0
	fcvtds	d11, s22
	movs	r2, #0
	movt	r3, 16408
	flds	s26, [r4, #-8]
	fcvtds	d10, s20
	fldmias	r4!, {s28}
	fmuld	d8, d11, d16
	fmdrr	d16, r2, r3
	movs	r3, #0
	movs	r2, #0
	movt	r3, 16418
	fmuld	d9, d11, d16
	fmdrr	d18, r2, r3
	movs	r3, #0
	fcvtds	d13, s26
	movs	r2, #0
	fmacd	d8, d10, d18
	movt	r3, 16408
	fcvtds	d14, s28
	fmdrr	d18, r2, r3
	movs	r3, #0
	fconstd	d16, #40
	movs	r2, #0
	fmacd	d9, d13, d18
	movt	r3, 16418
	fsubd	d17, d10, d11
	fmacd	d8, d14, d12
	fmuld	d17, d17, d12
	fnmacd	d9, d10, d16
	fmdrr	d16, r2, r3
	fnmacd	d8, d13, d16
	fabsd	d16, d8
	fcmped	d16, d15
	fmstat
	bpl	.L221
	fabsd	d16, d9
	fcmped	d16, d15
	fmstat
	ble	.L180
	fnegd	d17, d17
	adr	r3, .L226+8
	ldrd	r2, [r3]
	fdivd	d9, d17, d9
	fmdrr	d16, r2, r3
	fcmped	d9, d16
	fmstat
	fcmped	d9, d15
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	cmp	r3, #0
	beq	.L180
	mov	r8, #1
	fstd	d9, [sp]
.L189:
	movs	r6, #0
	mov	r7, sp
.L182:
	add	r3, r7, r6, lsl #3
	movs	r2, #0
	fconstd	d1, #8
	adds	r6, r6, #1
	fldd	d9, [r3]
	movs	r3, #0
	movt	r3, 16368
	fmuld	d13, d13, d12
	fmdrr	d16, r2, r3
	fsubd	d8, d16, d9
	fmuld	d14, d9, d14
	fmuld	d10, d10, d12
	fcpyd	d0, d8
	bl	pow(PLT)
	fcpyd	d0, d8
	fconstd	d1, #0
	bl	pow(PLT)
	fmuld	d16, d8, d8
	flds	s14, [r5, #-8]
	fmacd	d14, d13, d8
	flds	s15, [r5]
	fmuld	d8, d8, d11
	fmuld	d10, d10, d16
	fmuld	d8, d8, d16
	fmacd	d10, d14, d9
	fmacd	d8, d10, d9
	fcvtsd	s16, d8
	fcmpes	s14, s16
	fmstat
	fcmpes	s16, s15
	it	pl
	fcpyspl	s14, s16
	fmstat
	it	mi
	fcpysmi	s16, s15
	cmp	r8, r6
	fsts	s14, [r5, #-8]
	fsts	s16, [r5]
	ble	.L180
	flds	s22, [r4, #-28]
	flds	s20, [r4, #-20]
	flds	s26, [r4, #-12]
	flds	s28, [r4, #-4]
	fcvtds	d11, s22
	fcvtds	d10, s20
	fcvtds	d13, s26
	fcvtds	d14, s28
	b	.L182
.L221:
	fconstd	d10, #16
	fmuld	d17, d17, d10
	fmuld	d10, d17, d8
	fmscd	d10, d9, d9
	fcmped	d10, d15
	fmstat
	bgt	.L223
.L180:
	cmp	r4, r9
	add	r5, r5, #4
	bne	.L172
.L160:
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L171:
	flds	s13, [r1, #12]
	fcmpes	s10, s13
	fmstat
	bhi	.L169
	fcmpes	s14, s13
	fmstat
	blt	.L169
	flds	s13, [r1, #16]
	fcmpes	s15, s13
	fmstat
	bhi	.L169
	fcmpes	s12, s13
	fmstat
	blt	.L169
	flds	s15, [r1, #20]
	fcmpes	s10, s15
	fmstat
	bhi	.L169
	fcmpes	s14, s15
	fmstat
	bge	.L160
	b	.L169
.L223:
	fsqrtd	d11, d10
	fcmpd	d11, d11
	fmstat
	fcpyd	d0, d11
	bne	.L224
.L184:
	faddd	d8, d8, d8
	movs	r6, #1
	fsubd	d16, d0, d9
	adr	r3, .L226+8
	ldrd	r2, [r3]
	fdivd	d16, d16, d8
	fmdrr	d17, r2, r3
	fcmped	d16, d17
	fmstat
	fcmped	d16, d15
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	mov	r8, r3
	cbz	r3, .L185
	movs	r6, #2
	mov	r8, #1
	fstd	d16, [sp]
.L185:
	fcmpd	d11, d11
	fmstat
	fcpyd	d0, d11
	bne	.L225
.L186:
	faddd	d9, d0, d9
	adr	r3, .L226+8
	ldrd	r2, [r3]
	fnegd	d9, d9
	fmdrr	d16, r2, r3
	fdivd	d8, d9, d8
	fcmped	d8, d16
	fmstat
	fcmped	d8, d15
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	cbz	r3, .L187
	add	r2, sp, #16
	add	r3, r2, r8, lsl #3
	mov	r8, r6
	fstd	d8, [r3, #-16]
.L188:
	flds	s22, [r4, #-28]
	flds	s20, [r4, #-20]
	flds	s26, [r4, #-12]
	flds	s28, [r4, #-4]
	fcvtds	d11, s22
	fcvtds	d10, s20
	fcvtds	d13, s26
	fcvtds	d14, s28
	b	.L189
.L187:
	cmp	r8, #0
	bne	.L188
	b	.L180
.L224:
	fcpyd	d0, d10
	bl	sqrt(PLT)
	b	.L184
.L225:
	fcpyd	d0, d10
	bl	sqrt(PLT)
	b	.L186
.L227:
	.align	3
.L226:
	.word	-2127697391
	.word	1030854553
	.word	-9007
	.word	1072693247
	.size	nsvg__curveBounds, .-nsvg__curveBounds
	.section	.text.nsvg__endElement,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__endElement, %function
nsvg__endElement:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldrb	r3, [r1]	@ zero_extendqisi2
	mov	r5, r0
	cmp	r3, #103
	bne	.L229
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	cbnz	r3, .L229
	add	r5, r0, #38912
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L228
	subs	r3, r3, #1
	str	r3, [r5]
	pop	{r3, r4, r5, pc}
.L229:
	ldr	r1, .L234
	mov	r0, r4
.LPIC33:
	add	r1, pc
	bl	strcmp(PLT)
	cbz	r0, .L233
	ldr	r1, .L234+4
	mov	r0, r4
.LPIC34:
	add	r1, pc
	bl	strcmp(PLT)
	cbnz	r0, .L228
	add	r5, r5, #38912
	strb	r0, [r5, #61]
.L228:
	pop	{r3, r4, r5, pc}
.L233:
	add	r5, r5, #38912
	strb	r0, [r5, #60]
	pop	{r3, r4, r5, pc}
.L235:
	.align	2
.L234:
	.word	.LC3-(.LPIC33+4)
	.word	.LC4-(.LPIC34+4)
	.size	nsvg__endElement, .-nsvg__endElement
	.section	.text.nsvg__addEdge,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__addEdge, %function
nsvg__addEdge:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	fcmps	s1, s3
	fmstat
	push	{r4, lr}
	fstmfdd	sp!, {d8, d9}
	sub	sp, sp, #32
	fcpys	s16, s1
	fcpys	s17, s3
	beq	.L236
	ldr	r3, [r0, #20]
	mov	r4, r0
	ldr	r1, [r0, #24]
	fcpys	s18, s0
	fcpys	s19, s2
	cmp	r3, r1
	bge	.L239
	ldr	r0, [r0, #16]
.L240:
	fcmpes	s16, s17
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bmi	.L252
	fsts	s19, [sp]
	mov	r3, #-1
	fsts	s17, [sp, #4]
	fsts	s18, [sp, #8]
	fsts	s16, [sp, #12]
	vld1.64	{d16-d17}, [sp:64]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
.L236:
	add	sp, sp, #32
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, pc}
.L239:
	cmp	r1, #0
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r0, #24]
	ldr	r0, [r0, #16]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L236
	ldr	r3, [r4, #20]
	b	.L240
.L252:
	fsts	s18, [sp, #16]
	movs	r3, #1
	fsts	s16, [sp, #20]
	fsts	s19, [sp, #24]
	fsts	s17, [sp, #28]
	vldr	d16, [sp, #16]
	vldr	d17, [sp, #24]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	add	sp, sp, #32
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, pc}
	.size	nsvg__addEdge, .-nsvg__addEdge
	.section	.text.nsvg__getLocalBounds.isra.26,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__getLocalBounds.isra.26, %function
nsvg__getLocalBounds.isra.26:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r1
	sub	sp, sp, #52
	cmp	r1, #0
	beq	.L253
	mov	r5, r0
	mov	r4, r2
	mov	fp, #1
	add	r8, sp, #16
.L268:
	ldr	r2, [r10]
	flds	s12, [r4, #8]
	flds	s14, [r4, #12]
	flds	s9, [r2, #4]
	flds	s7, [r2]
	flds	s10, [r4]
	flds	s15, [r4, #4]
	fmuls	s8, s12, s9
	fmuls	s9, s14, s9
	flds	s11, [r4, #16]
	flds	s13, [r4, #20]
	fmacs	s8, s10, s7
	fmacs	s9, s15, s7
	ldr	r3, [r10, #4]
	cmp	r3, #1
	fadds	s8, s8, s11
	fadds	s9, s9, s13
	fsts	s8, [sp, #16]
	fsts	s9, [sp, #20]
	ble	.L255
	movs	r7, #8
	movs	r6, #0
	b	.L266
.L282:
	vld1.64	{d16-d17}, [sp:64]
	vst1.32	{q8}, [r5]
.L257:
	ldr	r3, [r10, #4]
	adds	r7, r7, #24
	vldr	d16, [sp, #40]
	mov	fp, #0
	subs	r3, r3, #1
	vstr	d16, [sp, #16]
	cmp	r6, r3
	bge	.L273
	ldr	r2, [r10]
	flds	s10, [r4]
	flds	s12, [r4, #8]
	flds	s11, [r4, #16]
	flds	s15, [r4, #4]
	flds	s14, [r4, #12]
	flds	s13, [r4, #20]
.L266:
	adds	r3, r2, r7
	fcpys	s6, s13
	flds	s9, [r3]
	adds	r6, r6, #3
	fcpys	s8, s11
	add	r2, r2, r6, lsl #3
	flds	s7, [r3, #4]
	mov	r0, sp
	mov	r1, r8
	fmacs	s6, s9, s15
	fmacs	s8, s9, s10
	fcpys	s9, s6
	fmacs	s8, s7, s12
	fmacs	s9, s7, s14
	fcpys	s6, s13
	fsts	s8, [sp, #24]
	fsts	s9, [sp, #28]
	flds	s9, [r3, #8]
	fcpys	s8, s11
	flds	s7, [r3, #12]
	fmacs	s6, s9, s15
	fmacs	s8, s9, s10
	fcpys	s9, s6
	fmacs	s8, s7, s12
	fmacs	s9, s7, s14
	fsts	s8, [sp, #32]
	fsts	s9, [sp, #36]
	flds	s8, [r2]
	flds	s9, [r3, #20]
	fmacs	s11, s8, s10
	fmacs	s13, s8, s15
	fmacs	s11, s9, s12
	fmacs	s13, s9, s14
	fsts	s11, [sp, #40]
	fsts	s13, [sp, #44]
	bl	nsvg__curveBounds(PLT)
	cmp	fp, #0
	bne	.L282
	flds	s8, [r5]
	flds	s9, [sp]
	flds	s10, [r5, #4]
	flds	s11, [sp, #4]
	flds	s12, [r5, #8]
	flds	s13, [sp, #8]
	flds	s14, [r5, #12]
	flds	s15, [sp, #12]
	fcmpes	s8, s9
	fmstat
	fcmpes	s10, s11
	it	mi
	fcpysmi	s9, s8
	fmstat
	fcmpes	s12, s13
	it	mi
	fcpysmi	s11, s10
	fmstat
	fcmpes	s14, s15
	it	gt
	fcpysgt	s13, s12
	fmstat
	it	gt
	fcpysgt	s15, s14
	fsts	s9, [r5]
	fsts	s11, [r5, #4]
	fsts	s13, [r5, #8]
	fsts	s15, [r5, #12]
	b	.L257
.L273:
	mov	fp, #0
.L255:
	ldr	r10, [r10, #28]
	cmp	r10, #0
	bne	.L268
.L253:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	nsvg__getLocalBounds.isra.26, .-nsvg__getLocalBounds.isra.26
	.section	.text.nsvg__fillScanline.constprop.30,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__fillScanline.constprop.30, %function
nsvg__fillScanline.constprop.30:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	asrs	r4, r2, #10
	ldr	lr, [sp, #20]
	asrs	r5, r3, #10
	ldr	r7, [sp, #24]
	ldr	r6, [lr]
	cmp	r4, r6
	it	lt
	strlt	r4, [lr]
	ldr	r6, [r7]
	cmp	r5, r6
	it	gt
	strgt	r5, [r7]
	cmp	r4, r1
	ite	lt
	movlt	r6, #1
	movge	r6, #0
	cmp	r5, #0
	it	lt
	movlt	r6, #0
	cmp	r6, #0
	beq	.L283
	cmp	r4, r5
	beq	.L327
	cmp	r4, #0
	itttt	ge
	ubfxge	r6, r2, #0, #10
	ldrbge	r7, [r0, r4]	@ zero_extendqisi2
	rsbge	r6, r6, #1024
	addge	r2, r4, #1
	itett	ge
	addge	r6, r6, r6, lsl #1
	movlt	r2, #0
	addge	r6, r6, r6, lsl #4
	addge	r6, r7, r6, asr #10
	it	ge
	strbge	r6, [r0, r4]
	cmp	r5, r1
	bge	.L290
	ubfx	r3, r3, #0, #10
	ldrb	r4, [r0, r5]	@ zero_extendqisi2
	add	r3, r3, r3, lsl #1
	mov	r1, r5
	add	r3, r3, r3, lsl #4
	add	r3, r4, r3, lsr #10
	strb	r3, [r0, r5]
.L290:
	cmp	r1, r2
	ble	.L283
	adds	r5, r0, r2
	subs	r4, r1, r2
	and	r3, r5, #7
	negs	r3, r3
	and	r3, r3, #15
	cmp	r3, r4
	it	cs
	movcs	r3, r4
	cmp	r4, #16
	it	ls
	movls	r3, r4
	cmp	r3, #0
	beq	.L293
	ldrb	r7, [r5]	@ zero_extendqisi2
	cmp	r3, #1
	add	r6, r2, #1
	add	r7, r7, #51
	strb	r7, [r5]
	bls	.L318
	ldrb	lr, [r0, r6]	@ zero_extendqisi2
	cmp	r3, #2
	add	r7, r2, #2
	add	lr, lr, #51
	strb	lr, [r0, r6]
	bls	.L317
	ldrb	lr, [r0, r7]	@ zero_extendqisi2
	cmp	r3, #3
	add	r6, r2, #3
	add	lr, lr, #51
	strb	lr, [r0, r7]
	bls	.L318
	ldrb	lr, [r0, r6]	@ zero_extendqisi2
	cmp	r3, #4
	add	r7, r2, #4
	add	lr, lr, #51
	strb	lr, [r0, r6]
	bls	.L317
	ldrb	lr, [r0, r7]	@ zero_extendqisi2
	cmp	r3, #5
	add	r6, r2, #5
	add	lr, lr, #51
	strb	lr, [r0, r7]
	bls	.L318
	ldrb	lr, [r0, r6]	@ zero_extendqisi2
	cmp	r3, #6
	add	r7, r2, #6
	add	lr, lr, #51
	strb	lr, [r0, r6]
	bls	.L317
	ldrb	lr, [r0, r7]	@ zero_extendqisi2
	cmp	r3, #7
	add	r6, r2, #7
	add	lr, lr, #51
	strb	lr, [r0, r7]
	bls	.L318
	ldrb	lr, [r0, r6]	@ zero_extendqisi2
	cmp	r3, #8
	add	r7, r2, #8
	add	lr, lr, #51
	strb	lr, [r0, r6]
	bls	.L317
	ldrb	lr, [r0, r7]	@ zero_extendqisi2
	cmp	r3, #9
	add	r6, r2, #9
	add	lr, lr, #51
	strb	lr, [r0, r7]
	bls	.L318
	ldrb	lr, [r0, r6]	@ zero_extendqisi2
	cmp	r3, #10
	add	r7, r2, #10
	add	lr, lr, #51
	strb	lr, [r0, r6]
	bls	.L317
	ldrb	lr, [r0, r7]	@ zero_extendqisi2
	cmp	r3, #11
	add	r6, r2, #11
	add	lr, lr, #51
	strb	lr, [r0, r7]
	bls	.L318
	ldrb	lr, [r0, r6]	@ zero_extendqisi2
	cmp	r3, #12
	add	r7, r2, #12
	add	lr, lr, #51
	strb	lr, [r0, r6]
	bls	.L317
	ldrb	lr, [r0, r7]	@ zero_extendqisi2
	cmp	r3, #13
	add	r6, r2, #13
	add	lr, lr, #51
	strb	lr, [r0, r7]
	bls	.L318
	ldrb	lr, [r0, r6]	@ zero_extendqisi2
	cmp	r3, #14
	add	r7, r2, #14
	add	lr, lr, #51
	strb	lr, [r0, r6]
	bls	.L317
	ldrb	lr, [r0, r7]	@ zero_extendqisi2
	cmp	r3, #15
	add	r6, r2, #15
	add	lr, lr, #51
	strb	lr, [r0, r7]
	bls	.L318
	ldrb	r7, [r0, r6]	@ zero_extendqisi2
	adds	r2, r2, #16
	adds	r7, r7, #51
	strb	r7, [r0, r6]
.L294:
	cmp	r4, r3
	beq	.L283
.L293:
	subs	r4, r4, r3
	lsrs	r6, r4, #4
	lsls	r7, r6, #4
	cbz	r6, .L296
	add	r3, r3, r5
	vmov.i8	q8, #51  @ v16qi
	mov	lr, r3
	movs	r5, #0
.L301:
	vld1.64	{d18-d19}, [r3:64]!
	adds	r5, r5, #1
	vadd.i8	q9, q9, q8
	cmp	r6, r5
	vst1.64	{d18-d19}, [lr:64]!
	bhi	.L301
	cmp	r4, r7
	add	r2, r2, r7
	beq	.L283
.L296:
	ldrb	r4, [r0, r2]	@ zero_extendqisi2
	adds	r3, r2, #1
	cmp	r3, r1
	add	r4, r4, #51
	strb	r4, [r0, r2]
	bge	.L283
	ldrb	r5, [r0, r3]	@ zero_extendqisi2
	adds	r4, r2, #2
	cmp	r1, r4
	add	r5, r5, #51
	strb	r5, [r0, r3]
	ble	.L283
	ldrb	r5, [r0, r4]	@ zero_extendqisi2
	adds	r3, r2, #3
	cmp	r1, r3
	add	r5, r5, #51
	strb	r5, [r0, r4]
	ble	.L283
	ldrb	r5, [r0, r3]	@ zero_extendqisi2
	adds	r4, r2, #4
	cmp	r1, r4
	add	r5, r5, #51
	strb	r5, [r0, r3]
	ble	.L283
	ldrb	r5, [r0, r4]	@ zero_extendqisi2
	adds	r3, r2, #5
	cmp	r1, r3
	add	r5, r5, #51
	strb	r5, [r0, r4]
	ble	.L283
	ldrb	r5, [r0, r3]	@ zero_extendqisi2
	adds	r4, r2, #6
	cmp	r1, r4
	add	r5, r5, #51
	strb	r5, [r0, r3]
	ble	.L283
	ldrb	r5, [r0, r4]	@ zero_extendqisi2
	adds	r3, r2, #7
	cmp	r1, r3
	add	r5, r5, #51
	strb	r5, [r0, r4]
	ble	.L283
	ldrb	r5, [r0, r3]	@ zero_extendqisi2
	add	r4, r2, #8
	cmp	r1, r4
	add	r5, r5, #51
	strb	r5, [r0, r3]
	ble	.L283
	ldrb	r5, [r0, r4]	@ zero_extendqisi2
	add	r3, r2, #9
	cmp	r1, r3
	add	r5, r5, #51
	strb	r5, [r0, r4]
	ble	.L283
	ldrb	r5, [r0, r3]	@ zero_extendqisi2
	add	r4, r2, #10
	cmp	r1, r4
	add	r5, r5, #51
	strb	r5, [r0, r3]
	ble	.L283
	ldrb	r5, [r0, r4]	@ zero_extendqisi2
	add	r3, r2, #11
	cmp	r1, r3
	add	r5, r5, #51
	strb	r5, [r0, r4]
	ble	.L283
	ldrb	r5, [r0, r3]	@ zero_extendqisi2
	add	r4, r2, #12
	cmp	r1, r4
	add	r5, r5, #51
	strb	r5, [r0, r3]
	ble	.L283
	ldrb	r5, [r0, r4]	@ zero_extendqisi2
	add	r3, r2, #13
	cmp	r1, r3
	add	r5, r5, #51
	strb	r5, [r0, r4]
	ble	.L283
	ldrb	r4, [r0, r3]	@ zero_extendqisi2
	adds	r2, r2, #14
	cmp	r1, r2
	add	r4, r4, #51
	strb	r4, [r0, r3]
	ble	.L283
	ldrb	r3, [r0, r2]	@ zero_extendqisi2
	adds	r3, r3, #51
	strb	r3, [r0, r2]
	pop	{r4, r5, r6, r7, pc}
.L283:
	pop	{r4, r5, r6, r7, pc}
.L318:
	mov	r2, r6
	b	.L294
.L327:
	subs	r3, r3, r2
	ldrb	r2, [r0, r4]	@ zero_extendqisi2
	add	r3, r3, r3, lsl #1
	add	r3, r3, r3, lsl #4
	add	r3, r2, r3, asr #10
	strb	r3, [r0, r4]
	pop	{r4, r5, r6, r7, pc}
.L317:
	mov	r2, r7
	b	.L294
	.size	nsvg__fillScanline.constprop.30, .-nsvg__fillScanline.constprop.30
	.section	.text.nsvg__rasterizeSortedEdges,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__rasterizeSortedEdges, %function
nsvg__rasterizeSortedEdges:
	@ args = 0, pretend = 0, frame = 320
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #80]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r7, #0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #332
	cmp	r3, r7
	mov	r8, r0
	str	r1, [sp, #288]
	fsts	s0, [sp, #300]
	str	r2, [sp, #52]
	str	r7, [sp, #304]
	ble	.L328
	fconsts	s15, #112
	add	fp, sp, #304
	flds	s22, .L449
	mov	r10, r7
	fdivs	s23, s15, s2
	mov	r5, r7
	fcpys	s20, s1
	mov	r9, fp
	fconsts	s21, #96
	mov	r4, r7
	str	r7, [sp, #68]
.L395:
	add	r4, r4, r4, lsl #2
	movs	r1, #0
	ldr	r0, [r8, #64]
	mov	r6, r1
	ldr	r2, [r8, #76]
	mov	r7, r5
	str	r4, [sp, #64]
	add	r4, sp, #312
	bl	memset(PLT)
	ldr	r3, [r8, #76]
	str	r4, [sp, #56]
	str	r6, [sp, #320]
	str	r3, [sp, #312]
.L371:
	ldr	r2, [sp, #64]
	mov	r3, r9
	add	r2, r2, r6
	fmsr	s0, r2	@ int
	fsitos	s16, s0
	fadds	s16, s16, s21
	cbz	r7, .L440
.L334:
	flds	s15, [r7, #8]
	fcmpes	s16, s15
	fmstat
	itett	lt
	movlt	r3, r7
	ldrge	r2, [r7, #16]
	ldrlt	r1, [r7]
	ldrlt	r2, [r7, #4]
	ittee	ge
	strge	r2, [r3]
	ldrge	r2, [r8, #52]
	addlt	r2, r2, r1
	strlt	r2, [r3], #16
	itt	ge
	strge	r2, [r7, #16]
	strge	r7, [r8, #52]
	ldr	r7, [r3]
	cmp	r7, #0
	bne	.L334
.L440:
	ldr	r3, [sp, #304]
	mov	r4, r9
.L335:
	cbz	r3, .L337
.L441:
	ldr	r2, [r3, #16]
	cbz	r2, .L337
	ldr	r0, [r3]
	ldr	r1, [r2]
	cmp	r0, r1
	ble	.L336
	ldr	r1, [r2, #16]
	movs	r7, #1
	str	r1, [r3, #16]
	str	r3, [r2, #16]
	mov	r3, r2
	str	r2, [r4]
	ldr	r2, [r2, #16]
.L336:
	add	r4, r3, #16
	mov	r3, r2
	cmp	r3, #0
	bne	.L441
.L337:
	cbz	r7, .L339
	ldr	r3, [sp, #304]
	movs	r7, #0
	mov	r4, r9
	b	.L335
.L339:
	ldr	r7, [r8, #20]
	cmp	r10, r7
	bge	.L341
	add	r5, r10, r10, lsl #1
	ldr	r4, [r8, #16]
	lsls	r5, r5, #3
	add	r4, r4, r5
	flds	s17, [r4, #4]
	fcmpes	s16, s17
	fmstat
	blt	.L341
	adds	r5, r5, #24
	mov	fp, r6
	b	.L359
.L343:
	add	r10, r10, #1
	cmp	r10, r7
	bge	.L435
.L443:
	ldr	r4, [r8, #16]
	add	r4, r4, r5
	adds	r5, r5, #24
	flds	s17, [r4, #4]
	fcmpes	s16, s17
	fmstat
	blt	.L435
.L359:
	flds	s18, [r4, #12]
	fcmpes	s16, s18
	fmstat
	bpl	.L343
	ldr	r6, [r8, #52]
	cmp	r6, #0
	beq	.L345
	ldr	r3, [r6, #16]
	str	r3, [r8, #52]
.L346:
	flds	s24, [r4]
	flds	s15, [r4, #8]
	fsubs	s19, s18, s17
	fsubs	s15, s15, s24
	fdivs	s19, s15, s19
	fcmpezs	s19
	fmstat
	bmi	.L442
	fmuls	s0, s19, s22
	bl	floorf(PLT)
	ftosizs	s0, s0
.L353:
	fsubs	s17, s16, s17
	fsts	s0, [r6, #4]	@ int
	fcpys	s0, s24
	fmacs	s0, s17, s19
	fmuls	s0, s0, s22
	bl	floorf(PLT)
	ldr	r2, [sp, #304]
	movs	r1, #0
	ftosizs	s0, s0
	ldr	r3, [r4, #16]
	fsts	s18, [r6, #8]
	str	r1, [r6, #16]
	fmrs	r0, s0	@ int
	str	r3, [r6, #12]
	fsts	s0, [r6]	@ int
	cbz	r2, .L438
	ldr	r3, [r2]
	cmp	r3, r0
	ble	.L357
	str	r2, [r6, #16]
.L438:
	add	r10, r10, #1
	str	r6, [sp, #304]
	cmp	r10, r7
	blt	.L443
.L435:
	mov	r6, fp
.L341:
	ldr	r7, [sp, #304]
	cbz	r7, .L366
	ldr	r4, [r8, #64]
	ldr	fp, [r8, #76]
	str	r4, [sp, #48]
	ldr	r4, [sp, #52]
	cmp	r4, #0
	bne	.L363
	mov	ip, r4
	str	r6, [sp, #232]
	mov	r4, r7
	mov	r5, ip
	mov	r6, ip
	add	r0, sp, #320
	str	r0, [sp, #60]
.L367:
	cmp	r5, #0
	bne	.L364
	ldr	r6, [r4]
	ldr	r5, [r4, #12]
.L365:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	bne	.L367
	ldr	r6, [sp, #232]
.L366:
	adds	r6, r6, #1
	cmp	r6, #5
	bne	.L371
	ldr	r3, [sp, #312]
	ldr	r2, [sp, #320]
	ldr	r1, [r8, #76]
	cmp	r3, #0
	str	r7, [sp, #64]
	itt	lt
	movlt	r3, #0
	strlt	r3, [sp, #312]
	cmp	r1, r2
	itt	le
	addle	r2, r1, #-1
	strle	r2, [sp, #320]
	cmp	r3, r2
	ble	.L374
.L378:
	ldr	r4, [sp, #68]
	ldr	r3, [r8, #80]
	adds	r4, r4, #1
	cmp	r3, r4
	str	r4, [sp, #68]
	ble	.L328
	ldr	r5, [sp, #64]
	ldr	r4, [sp, #68]
	b	.L395
.L444:
	ldr	r1, [r3]
	cmp	r1, r0
	bge	.L356
	mov	r2, r3
.L357:
	ldr	r3, [r2, #16]
	cmp	r3, #0
	bne	.L444
.L356:
	str	r3, [r6, #16]
	str	r6, [r2, #16]
	b	.L343
.L442:
	fnmuls	s0, s19, s22
	bl	floorf(PLT)
	fnegs	s0, s0
	ftosizs	s0, s0
	b	.L353
.L364:
	ldr	r2, [r4, #12]
	ldr	r3, [r4]
	adds	r5, r5, r2
	bne	.L365
	add	r1, sp, #312
	add	r2, sp, #320
	str	r1, [sp]
	mov	r1, fp
	str	r2, [sp, #4]
	mov	r2, r6
	ldr	r0, [sp, #48]
	bl	nsvg__fillScanline.constprop.30(PLT)
	b	.L365
.L363:
	cmp	r4, #1
	bne	.L366
	movs	r5, #0
	add	r0, sp, #320
	mov	r3, r5
	mov	r4, r7
	str	r0, [sp, #60]
	cbnz	r3, .L368
.L445:
	ldr	r5, [r4]
	movs	r3, #1
.L369:
	ldr	r4, [r4, #16]
	cmp	r4, #0
	beq	.L366
	cmp	r3, #0
	beq	.L445
.L368:
	add	r1, sp, #312
	add	r2, sp, #320
	ldr	r3, [r4]
	ldr	r0, [sp, #48]
	str	r1, [sp]
	mov	r1, fp
	str	r2, [sp, #4]
	mov	r2, r5
	bl	nsvg__fillScanline.constprop.30(PLT)
	movs	r3, #0
	b	.L369
.L345:
	ldr	r3, [r8, #60]
	cmp	r3, #0
	beq	.L347
	ldr	r2, [r3, #1024]
	cmp	r2, #1004
	ble	.L348
	ldr	r1, [r3, #1028]
	cmp	r1, #0
	beq	.L347
.L349:
	mov	r3, r1
	ldr	r2, [r1, #1024]
	str	r1, [r8, #60]
.L348:
	adds	r6, r3, r2
	adds	r2, r2, #20
	str	r2, [r3, #1024]
	b	.L346
.L450:
	.align	2
.L449:
	.word	1149239296
.L374:
	ldr	r0, [r8, #72]
	subs	r2, r2, r3
	ldr	r1, [r8, #64]
	add	lr, r2, #1
	ldr	r4, [sp, #288]
	ldr	r5, [r0, #8]
	adds	r6, r1, r3
	ldr	r1, [r0, #20]
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r4, [r0, #16]
	ldr	r0, [sp, #68]
	cmp	r2, #1
	mla	r5, r5, r0, r3
	add	r1, r1, r5
	add	fp, r4, r5, lsl #1
	str	r1, [sp, #48]
	beq	.L446
	cmp	r2, #2
	beq	.L447
	cmp	r2, #3
	bne	.L378
	flds	s17, [sp, #300]
	cmp	lr, #0
	fmsr	s0, r3	@ int
	fsitos	s16, s0
	flds	s18, [sp, #68]	@ int
	fsubs	s16, s16, s17
	fsitos	s17, s18
	fmuls	s16, s16, s23
	fsubs	s17, s17, s20
	fmuls	s17, s17, s23
	ble	.L378
	str	r8, [sp, #232]
	add	ip, r6, #-1
	ldr	r8, [sp, #48]
	add	lr, fp, lr, lsl #1
	ldr	r4, [sp, #288]
	mov	r5, ip
	str	lr, [sp, #56]
	str	r10, [sp, #60]
.L394:
	flds	s13, [r4, #12]
	flds	s14, [r4, #20]
	flds	s11, [r4, #16]
	flds	s15, [r4, #24]
	flds	s12, [r4, #4]
	fmacs	s14, s17, s13
	flds	s13, [r4, #8]
	fmacs	s15, s17, s11
	fmacs	s14, s16, s12
	fmacs	s15, s16, s13
	fmuls	s14, s14, s14
	fmacs	s14, s15, s15
	fsqrts	s0, s14
	fcmps	s0, s0
	fmstat
	bne	.L448
.L391:
	movs	r0, #0
	movs	r3, #0
	movt	r0, 17279
	fmsr	s1, r0
	fmuls	s15, s0, s1
	fcmpzs	s15
	fmstat
	bmi	.L392
	fcmpes	s15, s1
	movs	r3, #255
	fmstat
	itt	le
	ftosizsle	s15, s15
	fmrsle	r3, s15	@ int
.L392:
	add	r3, r4, r3, lsl #2
	ldrb	r2, [r5, #1]!	@ zero_extendqisi2
	ldrh	r1, [fp]
	ldr	r0, [r3, #28]
	ldrb	r10, [r8]	@ zero_extendqisi2
	and	lr, r1, #2016
	and	r6, r1, #63488
	asr	lr, lr, #3
	asrs	r6, r6, #8
	lsrs	r3, r0, #24
	lsls	r1, r1, #3
	uxtb	r7, r0
	fadds	s16, s16, s23
	mul	r3, r2, r3
	ubfx	ip, r0, #8, #8
	uxtb	r1, r1
	ubfx	r0, r0, #16, #8
	adds	r3, r3, #1
	add	r3, r3, r3, lsl #8
	asrs	r3, r3, #16
	rsb	r2, r3, #255
	mul	ip, r3, ip
	mul	lr, lr, r2
	mul	r6, r6, r2
	add	ip, ip, #1
	add	ip, ip, ip, lsl #8
	mul	r1, r1, r2
	add	lr, lr, #1
	mul	r7, r3, r7
	add	lr, lr, lr, lsl #8
	adds	r6, r6, #1
	mul	r0, r3, r0
	asr	lr, lr, #16
	add	r6, r6, r6, lsl #8
	adds	r1, r1, #1
	mul	r2, r10, r2
	add	lr, lr, ip, lsr #16
	adds	r7, r7, #1
	asrs	r6, r6, #16
	add	r1, r1, r1, lsl #8
	add	r7, r7, r7, lsl #8
	adds	r0, r0, #1
	ubfx	lr, lr, #2, #6
	asrs	r1, r1, #16
	add	r6, r6, r7, lsr #16
	add	r0, r0, r0, lsl #8
	lsl	lr, lr, #5
	adds	r2, r2, #1
	ubfx	r6, r6, #3, #5
	add	r1, r1, r0, lsr #16
	add	r2, r2, r2, lsl #8
	orr	lr, lr, r6, lsl #11
	ubfx	r1, r1, #3, #5
	add	r3, r3, r2, asr #16
	orr	r2, r1, lr
	ldr	r1, [sp, #56]
	strh	r2, [fp], #2	@ movhi
	strb	r3, [r8], #1
	cmp	fp, r1
	bne	.L394
	ldr	r10, [sp, #60]
	ldr	r8, [sp, #232]
	b	.L378
.L347:
	mov	r0, #1032
	str	r3, [sp, #44]
	bl	malloc(PLT)
	mov	r6, r0
	cmp	r0, #0
	beq	.L396
	movs	r1, #0
	mov	r2, #1032
	bl	memset(PLT)
	ldr	r3, [sp, #44]
	cmp	r3, #0
	beq	.L350
	str	r6, [r3, #1028]
	mov	r1, r6
	flds	s18, [r4, #12]
	flds	s17, [r4, #4]
	ldr	r7, [r8, #20]
	b	.L349
.L328:
	add	sp, sp, #332
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L446:
	ldr	r4, [sp, #288]
	cmp	lr, #0
	ldr	r3, [r4, #28]
	ubfx	r0, r3, #8, #8
	ubfx	r1, r3, #16, #8
	uxtb	r2, r3
	lsr	r3, r3, #24
	str	r0, [sp, #60]
	str	r1, [sp, #232]
	str	r2, [sp, #56]
	str	r3, [sp, #236]
	ble	.L378
	ldr	r4, [sp, #48]
	add	r5, r6, #16
	ldr	r1, [sp, #48]
	add	r3, fp, lr, lsl #1
	add	r2, r6, lr
	adds	r4, r4, #16
	cmp	r1, r5
	it	cc
	cmpcc	r6, r4
	mov	ip, r1
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	add	ip, ip, lr
	cmp	lr, #15
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	fp, ip
	it	cc
	cmpcc	r1, r3
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	cmp	fp, r2
	it	cc
	cmpcc	r6, r3
	and	r1, r1, r0
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	tst	r1, r3
	beq	.L379
	ldr	r1, [sp, #236]
	lsr	r2, lr, #4
	vmov.i32	q15, #1  @ v4si
	mov	r3, r4
	str	r2, [sp, #296]
	lsls	r7, r2, #4
	ldr	r2, [sp, #48]
	mov	r0, r5
	vdup.32	q0, r1
	mov	r4, fp
	ldr	r1, [sp, #56]
	mov	r5, fp
	vstr	d0, [sp, #256]
	vstr	d1, [sp, #264]
	mov	ip, #0
	str	r2, [sp, #292]
	vdup.32	q0, r1
	ldr	r1, [sp, #60]
	vstr	d0, [sp, #240]
	vstr	d1, [sp, #248]
	vdup.32	q0, r1
	ldr	r1, [sp, #232]
	vstr	d0, [sp, #136]
	vstr	d1, [sp, #144]
	vdup.32	q0, r1
	vstr	d0, [sp, #120]
	vstr	d1, [sp, #128]
.L384:
	sub	r2, r0, #16
	vmov	q11, q15  @ v4si
	vldr	d4, [sp, #256]
	vldr	d5, [sp, #264]
	vmov	q3, q15  @ v4si
	vmov.i16	q1, #63488  @ v8hi
	pld	[r0]
	vld1.8	{q8}, [r2]
	vmov.i16	q4, #63488  @ v8hi
	vmovl.u8 q9, d16
	add	r2, r5, #16
	vmovl.u8 q8, d17
	sub	r1, r3, #16
	vld1.16	{q0}, [r5]
	add	ip, ip, #1
	vmovl.u16 q10, d18
	adds	r0, r0, #16
	vmovl.u16 q14, d16
	vmovl.u16 q8, d17
	vmla.i32	q11, q2, q10
	vmov	q10, q15  @ v4si
	pld	[r5, #48]
	adds	r5, r5, #32
	pld	[r3]
	adds	r3, r3, #16
	vld1.16	{q12}, [r2]
	add	r2, r4, #16
	vmovl.u16 q9, d19
	vmla.i32	q3, q2, q8
	pld	[r4, #48]
	vldr	d14, .L451
	vldr	d15, .L451+8
	vmla.i32	q10, q2, q9
	vmov	q9, q15  @ v4si
	vmla.i32	q9, q2, q14
	vmov	q8, q3  @ v4si
	vshl.i32	q2, q11, #8
	vshl.i32	q14, q10, #8
	vand	q13, q0, q1
	vmovn.i16	d2, q0
	vmovn.i16	d3, q12
	vadd.i32	q11, q2, q11
	vadd.i32	q10, q14, q10
	vshl.i32	q14, q8, #8
	vshr.s32	q11, q11, #16
	vand	q6, q12, q4
	vmovl.u16 q2, d26
	vadd.i32	q8, q14, q8
	vmov.i32	q14, #255  @ v4si
	vmovl.u16 q13, d27
	vshl.i32	q3, q9, #8
	vand	q0, q0, q7
	vand	q12, q12, q7
	vadd.i32	q9, q3, q9
	vmovl.u16 q7, d12
	vsub.i32	q3, q14, q11
	vshr.s32	q14, q2, #8
	vshr.s32	q2, q13, #8
	vmov.i32	q13, #255  @ v4si
	vmovl.u16 q6, d13
	vmovl.u16 q4, d0
	vstr	d4, [sp, #72]
	vstr	d5, [sp, #80]
	vmovl.u16 q0, d1
	vshr.s32	q2, q7, #8
	vshr.s32	q7, q6, #8
	vstr	d28, [sp, #152]
	vstr	d29, [sp, #160]
	vshr.s32	q10, q10, #16
	vstr	d4, [sp, #88]
	vstr	d5, [sp, #96]
	vshr.s32	q2, q0, #3
	vmovl.u16 q0, d24
	vmovl.u16 q12, d25
	vstr	d14, [sp, #272]
	vstr	d15, [sp, #280]
	vmov	q7, q15  @ v4si
	vsub.i32	q14, q13, q10
	vldr	d12, [sp, #152]
	vldr	d13, [sp, #160]
	vshr.s32	q9, q9, #16
	vstr	d4, [sp, #104]
	vstr	d5, [sp, #112]
	vshr.s32	q2, q12, #3
	vmla.i32	q7, q3, q6
	vmov	q6, q15  @ v4si
	vldr	d24, [sp, #240]
	vldr	d25, [sp, #248]
	vsub.i32	q13, q13, q9
	vstr	d4, [sp, #184]
	vstr	d5, [sp, #192]
	vmov	q2, q15  @ v4si
	vmla.i32	q6, q12, q11
	vldr	d24, [sp, #72]
	vldr	d25, [sp, #80]
	vshr.s32	q4, q4, #3
	vmla.i32	q2, q14, q12
	vldr	d24, [sp, #88]
	vldr	d25, [sp, #96]
	vshr.s32	q0, q0, #3
	vshr.s32	q8, q8, #16
	vshl.i8	q1, q1, #3
	vstr	d4, [sp, #216]
	vstr	d5, [sp, #224]
	vmov	q2, q15  @ v4si
	vmla.i32	q2, q13, q12
	vldr	d24, [sp, #104]
	vldr	d25, [sp, #112]
	vstr	d4, [sp, #24]
	vstr	d5, [sp, #32]
	vmov	q2, q15  @ v4si
	vmla.i32	q2, q3, q4
	vmov	q4, q15  @ v4si
	vmla.i32	q4, q14, q12
	vstr	d4, [sp, #88]
	vstr	d5, [sp, #96]
	vmov	q2, q15  @ v4si
	vmla.i32	q2, q13, q0
	vmov.i32	q0, #255  @ v4si
	vstr	d8, [sp, #104]
	vstr	d9, [sp, #112]
	vsub.i32	q12, q0, q8
	vmov	q0, q15  @ v4si
	vmovl.u8 q4, d2
	vmovl.u8 q1, d3
	vstr	d4, [sp, #152]
	vstr	d5, [sp, #160]
	vshl.i32	q2, q7, #8
	vstr	d4, [sp, #168]
	vstr	d5, [sp, #176]
	vldr	d4, [sp, #272]
	vldr	d5, [sp, #280]
	vmla.i32	q0, q12, q2
	vldr	d4, [sp, #184]
	vldr	d5, [sp, #192]
	vstr	d0, [sp, #72]
	vstr	d1, [sp, #80]
	vmov	q0, q15  @ v4si
	vmla.i32	q0, q12, q2
	vldr	d4, [sp, #240]
	vldr	d5, [sp, #248]
	vstr	d0, [sp, #272]
	vstr	d1, [sp, #280]
	vldr	d0, [sp, #168]
	vldr	d1, [sp, #176]
	vadd.i32	q0, q0, q7
	vshl.i32	q7, q6, #8
	vstr	d0, [sp, #168]
	vstr	d1, [sp, #176]
	vadd.i32	q0, q7, q6
	vmov	q6, q15  @ v4si
	vmovl.u16 q7, d8
	vmovl.u16 q4, d9
	vmla.i32	q6, q2, q10
	vldr	d4, [sp, #168]
	vldr	d5, [sp, #176]
	vshr.s32	q2, q2, #16
	vstr	d4, [sp, #200]
	vstr	d5, [sp, #208]
	vmov	q2, q15  @ v4si
	vmla.i32	q2, q3, q7
	vmov	q7, q2  @ v4si
	vmov	q2, q15  @ v4si
	vmla.i32	q2, q14, q4
	vshr.s32	q4, q0, #16
	vldr	d0, [sp, #200]
	vldr	d1, [sp, #208]
	vadd.i32	q0, q4, q0
	vshl.i32	q4, q6, #8
	vstr	d4, [sp, #168]
	vstr	d5, [sp, #176]
	vadd.i32	q6, q4, q6
	vldr	d4, [sp, #216]
	vldr	d5, [sp, #224]
	vshl.i32	q4, q2, #8
	vstr	d0, [sp, #200]
	vstr	d1, [sp, #208]
	vadd.i32	q4, q4, q2
	vmov	q2, q15  @ v4si
	vmovl.u16 q0, d2
	vmovl.u16 q1, d3
	vshr.s32	q6, q6, #16
	vmla.i32	q2, q13, q0
	vmov	q0, q15  @ v4si
	vmla.i32	q0, q12, q1
	vmov	q1, q15  @ v4si
	vstr	d4, [sp, #8]
	vstr	d5, [sp, #16]
	vldr	d4, [sp, #240]
	vldr	d5, [sp, #248]
	vstr	d0, [sp, #184]
	vstr	d1, [sp, #192]
	vmla.i32	q1, q2, q9
	vldr	d4, [sp, #24]
	vldr	d5, [sp, #32]
	vshr.s32	q0, q4, #16
	vldr	d8, [sp, #200]
	vldr	d9, [sp, #208]
	vadd.i32	q0, q6, q0
	vmovn.i32	d12, q4
	vmovn.i32	d13, q0
	vshl.i32	q0, q2, #8
	vadd.i32	q2, q0, q2
	vshl.i32	q0, q1, #8
	vshr.s32	q4, q2, #16
	vmov	q2, q15  @ v4si
	vadd.i32	q1, q0, q1
	vldr	d0, [sp, #240]
	vldr	d1, [sp, #248]
	vmla.i32	q2, q0, q8
	vldr	d0, [sp, #72]
	vldr	d1, [sp, #80]
	vshr.s32	q1, q1, #16
	vadd.i32	q4, q1, q4
	vshl.i32	q1, q2, #8
	vadd.i32	q1, q1, q2
	vshl.i32	q2, q0, #8
	vadd.i32	q2, q2, q0
	vshr.s32	q0, q1, #16
	vmov	q1, q15  @ v4si
	vshr.s32	q2, q2, #16
	vadd.i32	q0, q0, q2
	vldr	d4, [sp, #136]
	vldr	d5, [sp, #144]
	vmla.i32	q1, q2, q11
	vmovn.i32	d4, q4
	vmovn.i32	d5, q0
	vmovn.i16	d0, q6
	vmovn.i16	d1, q2
	vldr	d12, [sp, #88]
	vldr	d13, [sp, #96]
	vshr.u8	q2, q0, #3
	vshl.i32	q4, q6, #8
	vmovl.u8 q0, d4
	vadd.i32	q6, q4, q6
	vmov	q4, q15  @ v4si
	vstr	d0, [sp, #88]
	vstr	d1, [sp, #96]
	vshl.i32	q0, q1, #8
	vshr.s32	q6, q6, #16
	vadd.i32	q1, q0, q1
	vldr	d0, [sp, #136]
	vldr	d1, [sp, #144]
	vmla.i32	q4, q0, q10
	vshr.s32	q1, q1, #16
	vmovl.u8 q0, d5
	vadd.i32	q2, q1, q6
	vldr	d12, [sp, #104]
	vldr	d13, [sp, #112]
	vstr	d0, [sp, #216]
	vstr	d1, [sp, #224]
	vldr	d0, [sp, #88]
	vldr	d1, [sp, #96]
	vstr	d4, [sp, #72]
	vstr	d5, [sp, #80]
	vshl.i32	q2, q6, #8
	vshl.i16	q0, q0, #11
	vadd.i32	q1, q2, q6
	vshl.i32	q2, q4, #8
	vldr	d12, [sp, #216]
	vldr	d13, [sp, #224]
	vshr.s32	q1, q1, #16
	vstr	d0, [sp, #200]
	vstr	d1, [sp, #208]
	vadd.i32	q0, q2, q4
	vmov	q2, q15  @ v4si
	vshl.i16	q6, q6, #11
	vldr	d8, [sp, #136]
	vldr	d9, [sp, #144]
	vshr.s32	q0, q0, #16
	vstr	d12, [sp, #216]
	vstr	d13, [sp, #224]
	vadd.i32	q6, q0, q1
	vmov	q1, q15  @ v4si
	vmla.i32	q2, q4, q9
	vmla.i32	q1, q4, q8
	vldr	d8, [sp, #72]
	vldr	d9, [sp, #80]
	vmovn.i32	d0, q4
	vmovn.i32	d1, q6
	vldr	d12, [sp, #152]
	vldr	d13, [sp, #160]
	b	.L452
.L453:
	.align	3
.L451:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
.L452:
	vstr	d0, [sp, #88]
	vstr	d1, [sp, #96]
	vshl.i32	q0, q6, #8
	vadd.i32	q4, q0, q6
	vshl.i32	q0, q2, #8
	vshr.s32	q4, q4, #16
	vadd.i32	q6, q0, q2
	vmov	q2, q15  @ v4si
	vldr	d0, [sp, #120]
	vldr	d1, [sp, #128]
	vstr	d8, [sp, #104]
	vstr	d9, [sp, #112]
	vshr.s32	q4, q6, #16
	vldr	d12, [sp, #104]
	vldr	d13, [sp, #112]
	vadd.i32	q6, q4, q6
	vldr	d8, [sp, #272]
	vldr	d9, [sp, #280]
	vmla.i32	q2, q0, q11
	vstr	d12, [sp, #104]
	vstr	d13, [sp, #112]
	vshl.i32	q0, q4, #8
	vadd.i32	q6, q0, q4
	vshl.i32	q0, q1, #8
	vstr	d12, [sp, #152]
	vstr	d13, [sp, #160]
	vadd.i32	q6, q0, q1
	vmov	q1, q15  @ v4si
	vldr	d8, [sp, #152]
	vldr	d9, [sp, #160]
	vshr.s32	q4, q4, #16
	vldr	d0, [sp, #120]
	vldr	d1, [sp, #128]
	vstr	d8, [sp, #152]
	vstr	d9, [sp, #160]
	vshr.s32	q4, q6, #16
	vldr	d12, [sp, #152]
	vldr	d13, [sp, #160]
	vadd.i32	q6, q4, q6
	vmov	q4, q15  @ v4si
	vmla.i32	q1, q0, q10
	vmla.i32	q4, q0, q9
	vstr	d8, [sp, #72]
	vstr	d9, [sp, #80]
	vldr	d8, [sp, #104]
	vldr	d9, [sp, #112]
	vmovn.i32	d0, q4
	vmovn.i32	d1, q6
	vldr	d8, [sp, #88]
	vldr	d9, [sp, #96]
	vmovn.i16	d12, q4
	vmovn.i16	d13, q0
	vstr	d12, [sp, #104]
	vstr	d13, [sp, #112]
	vshl.i32	q6, q7, #8
	vldr	d8, [sp, #104]
	vldr	d9, [sp, #112]
	vshr.u8	q0, q4, #2
	vadd.i32	q4, q6, q7
	vldr	d14, [sp, #120]
	vldr	d15, [sp, #128]
	vshll.u8 q6, d0, #5
	vstr	d8, [sp, #88]
	vstr	d9, [sp, #96]
	vshl.i32	q4, q2, #8
	vstr	d12, [sp, #104]
	vstr	d13, [sp, #112]
	vadd.i32	q2, q4, q2
	vmov	q4, q15  @ v4si
	vldr	d12, [sp, #88]
	vldr	d13, [sp, #96]
	vshr.s32	q2, q2, #16
	vshr.s32	q6, q6, #16
	vmla.i32	q4, q7, q8
	vshll.u8 q7, d1, #5
	vadd.i32	q0, q2, q6
	vldr	d12, [sp, #168]
	vldr	d13, [sp, #176]
	vshl.i32	q2, q6, #8
	vstr	d0, [sp, #272]
	vstr	d1, [sp, #280]
	vadd.i32	q0, q2, q6
	vshl.i32	q2, q1, #8
	vldr	d12, [sp, #272]
	vldr	d13, [sp, #280]
	vadd.i32	q2, q2, q1
	vshr.s32	q1, q0, #16
	vstr	d14, [sp, #152]
	vstr	d15, [sp, #160]
	vshr.s32	q2, q2, #16
	vld1.8	{q0}, [r1]
	vadd.i32	q1, q2, q1
	vmovl.u8 q2, d0
	vmovl.u8 q0, d1
	vmovn.i32	d14, q6
	vmovn.i32	d15, q1
	ldr	r1, [sp, #292]
	vstr	d14, [sp, #88]
	vstr	d15, [sp, #96]
	vldr	d14, [sp, #8]
	vldr	d15, [sp, #16]
	vshl.i32	q1, q7, #8
	vadd.i32	q6, q1, q7
	vldr	d14, [sp, #72]
	vldr	d15, [sp, #80]
	vshl.i32	q1, q7, #8
	vshr.s32	q6, q6, #16
	vadd.i32	q1, q1, q7
	vshr.s32	q1, q1, #16
	vadd.i32	q7, q1, q6
	vldr	d2, [sp, #184]
	vldr	d3, [sp, #192]
	vstr	d14, [sp, #72]
	vstr	d15, [sp, #80]
	vshl.i32	q6, q1, #8
	vshl.i32	q7, q4, #8
	vadd.i32	q6, q6, q1
	vmov	q1, q15  @ v4si
	vadd.i32	q4, q7, q4
	vmovl.u16 q7, d4
	vmovl.u16 q2, d5
	vshr.s32	q6, q6, #16
	vmla.i32	q1, q3, q7
	vmov	q7, q15  @ v4si
	vmla.i32	q7, q14, q2
	vmovl.u16 q2, d0
	vmov	q3, q1  @ v4si
	vshr.s32	q4, q4, #16
	vmov	q1, q15  @ v4si
	vmovl.u16 q0, d1
	vadd.i32	q4, q4, q6
	vldr	d12, [sp, #72]
	vldr	d13, [sp, #80]
	vmla.i32	q1, q13, q2
	vmov	q14, q7  @ v4si
	vmovn.i32	d4, q6
	vmovn.i32	d5, q4
	vldr	d14, [sp, #88]
	vldr	d15, [sp, #96]
	vshl.i32	q4, q3, #8
	vldr	d12, [sp, #200]
	vldr	d13, [sp, #208]
	vadd.i32	q3, q4, q3
	vldr	d8, [sp, #152]
	vldr	d9, [sp, #160]
	vmov	q13, q1  @ v4si
	vmovn.i16	d2, q7
	vmovn.i16	d3, q2
	vmov	q2, q15  @ v4si
	vshr.s32	q3, q3, #16
	vshr.u8	q1, q1, #3
	vadd.i32	q11, q11, q3
	vmla.i32	q2, q12, q0
	vldr	d6, [sp, #104]
	vldr	d7, [sp, #112]
	vshl.i32	q0, q14, #8
	vldr	d14, [sp, #216]
	vldr	d15, [sp, #224]
	vadd.i32	q14, q0, q14
	vmov	q12, q2  @ v4si
	vshl.i32	q2, q13, #8
	vshr.s32	q14, q14, #16
	vadd.i32	q13, q2, q13
	vshl.i32	q0, q12, #8
	vadd.i32	q10, q10, q14
	vadd.i32	q12, q0, q12
	vshr.s32	q13, q13, #16
	vshr.s32	q2, q12, #16
	vmovl.u8 q12, d2
	vmovl.u8 q1, d3
	vadd.i32	q9, q9, q13
	vmovn.i32	d26, q11
	vmovn.i32	d27, q10
	vadd.i32	q8, q8, q2
	vorr	q12, q3, q12
	vorr	q1, q4, q1
	vmovn.i32	d22, q9
	vmovn.i32	d23, q8
	vorr	q10, q12, q6
	vorr	q9, q1, q7
	vmovn.i16	d16, q13
	vmovn.i16	d17, q11
	vst1.16	{q10}, [r4]
	adds	r4, r4, #32
	vst1.16	{q9}, [r2]
	ldr	r2, [sp, #296]
	vst1.8	{q8}, [r1]!
	str	r1, [sp, #292]
	cmp	ip, r2
	bcc	.L384
	add	r2, fp, r7, lsl #1
	ldr	fp, [sp, #48]
	cmp	lr, r7
	mov	ip, r7
	add	r6, r6, r7
	add	fp, fp, r7
	beq	.L378
	negs	r3, r7
	str	r8, [sp, #136]
	mov	r8, r2
	add	r6, r6, r3
	add	r3, fp, r3
	str	r6, [sp, #48]
	str	r3, [sp, #120]
.L383:
	ldr	r4, [sp, #48]
	ldr	r2, [sp, #236]
	ldrh	r0, [r8]
	ldrb	r3, [r4, ip]	@ zero_extendqisi2
	ldr	r1, [sp, #120]
	and	r5, r0, #63488
	and	r4, r0, #2016
	asrs	r5, r5, #8
	lsls	r0, r0, #3
	mul	r3, r3, r2
	ldrb	r7, [r1, ip]	@ zero_extendqisi2
	ldr	r6, [sp, #56]
	asrs	r4, r4, #3
	uxtb	r0, r0
	ldr	r1, [sp, #60]
	add	ip, ip, #1
	adds	r3, r3, #1
	cmp	lr, ip
	add	r3, r3, r3, lsl #8
	asr	r3, r3, #16
	rsb	r2, r3, #255
	mul	r6, r3, r6
	mul	r5, r5, r2
	mul	r4, r4, r2
	add	r6, r6, #1
	add	r6, r6, r6, lsl #8
	mul	r0, r0, r2
	add	r5, r5, #1
	mul	r2, r7, r2
	ldr	r7, [sp, #232]
	add	r5, r5, r5, lsl #8
	add	r4, r4, #1
	mul	r1, r3, r1
	add	r4, r4, r4, lsl #8
	asr	r5, r5, #16
	add	r0, r0, #1
	mul	r7, r3, r7
	asr	r4, r4, #16
	add	r5, r5, r6, lsr #16
	add	r2, r2, #1
	add	r0, r0, r0, lsl #8
	add	r2, r2, r2, lsl #8
	add	r1, r1, #1
	add	r7, r7, #1
	add	r1, r1, r1, lsl #8
	ubfx	r5, r5, #3, #5
	asr	r0, r0, #16
	add	r7, r7, r7, lsl #8
	add	r1, r4, r1, lsr #16
	lsl	r5, r5, #11
	add	r0, r0, r7, lsr #16
	add	r3, r3, r2, asr #16
	ubfx	r1, r1, #2, #6
	ubfx	r0, r0, #3, #5
	orr	r1, r5, r1, lsl #5
	orr	r1, r1, r0
	strh	r1, [r8], #2	@ movhi
	strb	r3, [fp], #1
	bgt	.L383
	ldr	r8, [sp, #136]
	b	.L378
.L447:
	flds	s17, [sp, #68]	@ int
	cmp	lr, #0
	fmsr	s0, r3	@ int
	fsitos	s14, s0
	flds	s16, [sp, #300]
	fsitos	s11, s17
	fsubs	s14, s14, s16
	fsubs	s11, s11, s20
	fmuls	s14, s14, s23
	fmuls	s11, s11, s23
	ble	.L378
	ldr	r1, [sp, #288]
	add	lr, fp, lr, lsl #1
	add	ip, r6, #-1
	ldr	r0, [sp, #48]
	str	lr, [sp, #56]
	str	r10, [sp, #60]
	str	r8, [sp, #48]
.L390:
	flds	s12, [r1, #16]
	movs	r2, #0
	flds	s15, [r1, #24]
	movt	r2, 17279
	flds	s13, [r1, #8]
	movs	r3, #0
	fmsr	s0, r2
	fmacs	s15, s11, s12
	fmacs	s15, s14, s13
	fmuls	s15, s15, s0
	fcmpzs	s15
	fmstat
	bmi	.L388
	fcmpes	s15, s0
	movs	r3, #255
	fmstat
	itt	le
	ftosizsle	s15, s15
	fmrsle	r3, s15	@ int
.L388:
	add	r3, r1, r3, lsl #2
	ldrb	r2, [ip, #1]!	@ zero_extendqisi2
	ldrh	r4, [fp]
	ldr	r5, [r3, #28]
	ldrb	r10, [r0]	@ zero_extendqisi2
	and	lr, r4, #2016
	and	r6, r4, #63488
	asr	lr, lr, #3
	asrs	r6, r6, #8
	lsrs	r3, r5, #24
	lsls	r4, r4, #3
	uxtb	r7, r5
	fadds	s14, s14, s23
	mul	r3, r2, r3
	ubfx	r8, r5, #8, #8
	uxtb	r4, r4
	ubfx	r5, r5, #16, #8
	adds	r3, r3, #1
	add	r3, r3, r3, lsl #8
	asrs	r3, r3, #16
	rsb	r2, r3, #255
	mul	r8, r3, r8
	mul	lr, lr, r2
	mul	r6, r6, r2
	add	r8, r8, #1
	add	r8, r8, r8, lsl #8
	mul	r4, r4, r2
	add	lr, lr, #1
	mul	r7, r3, r7
	add	lr, lr, lr, lsl #8
	adds	r6, r6, #1
	mul	r5, r3, r5
	asr	lr, lr, #16
	add	r6, r6, r6, lsl #8
	adds	r4, r4, #1
	mul	r2, r10, r2
	add	lr, lr, r8, lsr #16
	adds	r7, r7, #1
	asrs	r6, r6, #16
	add	r4, r4, r4, lsl #8
	add	r7, r7, r7, lsl #8
	adds	r5, r5, #1
	ubfx	lr, lr, #2, #6
	asrs	r4, r4, #16
	add	r6, r6, r7, lsr #16
	add	r5, r5, r5, lsl #8
	lsl	lr, lr, #5
	adds	r2, r2, #1
	ubfx	r6, r6, #3, #5
	add	r2, r2, r2, lsl #8
	add	r4, r4, r5, lsr #16
	orr	lr, lr, r6, lsl #11
	add	r3, r3, r2, asr #16
	ubfx	r4, r4, #3, #5
	orr	r2, r4, lr
	strh	r2, [fp], #2	@ movhi
	strb	r3, [r0], #1
	ldr	r3, [sp, #56]
	cmp	fp, r3
	bne	.L390
	ldr	r10, [sp, #60]
	ldr	r8, [sp, #48]
	b	.L378
.L350:
	str	r6, [r8, #56]
	mov	r1, r6
	flds	s18, [r4, #12]
	flds	s17, [r4, #4]
	ldr	r7, [r8, #20]
	b	.L349
.L379:
	add	lr, r6, #-1
.L386:
	ldrb	r2, [lr, #1]!	@ zero_extendqisi2
	ldr	r0, [sp, #236]
	ldrh	r3, [fp]
	ldr	r4, [sp, #48]
	ldr	r5, [sp, #56]
	mul	r2, r2, r0
	and	r1, r3, #63488
	ldrb	r7, [r4]	@ zero_extendqisi2
	and	r4, r3, #2016
	lsls	r3, r3, #3
	asrs	r1, r1, #8
	asrs	r4, r4, #3
	adds	r2, r2, #1
	uxtb	r0, r3
	add	r2, r2, r2, lsl #8
	asrs	r3, r2, #16
	rsb	r2, r3, #255
	mul	r5, r3, r5
	mul	r1, r1, r2
	adds	r6, r5, #1
	mul	r4, r4, r2
	add	r6, r6, r6, lsl #8
	mul	r0, r0, r2
	adds	r5, r1, #1
	ldr	r1, [sp, #60]
	mul	r2, r7, r2
	ldr	r7, [sp, #232]
	add	r5, r5, r5, lsl #8
	adds	r4, r4, #1
	add	r4, r4, r4, lsl #8
	mul	r1, r3, r1
	asrs	r5, r5, #16
	adds	r0, r0, #1
	asrs	r4, r4, #16
	mul	r7, r3, r7
	add	r5, r5, r6, lsr #16
	add	r0, r0, r0, lsl #8
	adds	r2, r2, #1
	add	r2, r2, r2, lsl #8
	adds	r1, r1, #1
	asrs	r0, r0, #16
	add	r1, r1, r1, lsl #8
	adds	r7, r7, #1
	ubfx	r5, r5, #3, #5
	add	r7, r7, r7, lsl #8
	add	r4, r4, r1, lsr #16
	lsls	r5, r5, #11
	add	r0, r0, r7, lsr #16
	add	r3, r3, r2, asr #16
	ubfx	r1, r4, #2, #6
	ubfx	r0, r0, #3, #5
	orr	r1, r5, r1, lsl #5
	orr	r2, r0, r1
	ldr	r1, [sp, #48]
	strh	r2, [fp], #2	@ movhi
	strb	r3, [r1], #1
	cmp	r1, ip
	str	r1, [sp, #48]
	bne	.L386
	b	.L378
.L396:
	ldr	r7, [r8, #20]
	mov	r1, r0
	b	.L349
.L448:
	fcpys	s0, s14
	bl	sqrtf(PLT)
	b	.L391
	.size	nsvg__rasterizeSortedEdges, .-nsvg__rasterizeSortedEdges
	.section	.text.nsvg__parseNumber.constprop.37,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseNumber.constprop.37, %function
nsvg__parseNumber.constprop.37:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldrb	r5, [r0]	@ zero_extendqisi2
	mov	r8, r1
	cmp	r5, #45
	it	ne
	cmpne	r5, #43
	itttt	eq
	strbeq	r5, [r1]
	moveq	r3, #1
	ldrbeq	r5, [r0, #1]	@ zero_extendqisi2
	moveq	r3, #1
	iteet	ne
	movne	r3, #0
	moveq	r6, r3
	addeq	r4, r4, r3
	movne	r6, r3
	cmp	r5, #0
	beq	.L468
	ldr	r7, .L498
.LPIC51:
	add	r7, pc
	b	.L457
.L460:
	cmp	r6, #62
	itt	le
	strble	r5, [r8, r6]
	addle	r6, r6, #1
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L464
.L457:
	mov	r0, r7
	mov	r1, r5
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L460
	cmp	r5, #46
	mov	r2, r6
	bne	.L495
	cmp	r6, #62
	add	r4, r4, #1
	itt	le
	strble	r5, [r8, r2]
	addle	r6, r6, #1
	ldrb	r5, [r4]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L464
	ldr	r7, .L498+4
.LPIC52:
	add	r7, pc
	b	.L465
.L467:
	cmp	r6, #62
	itt	le
	strble	r5, [r8, r6]
	addle	r6, r6, #1
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	cbz	r5, .L464
.L465:
	mov	r0, r7
	mov	r1, r5
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L467
.L495:
	ldrb	r2, [r4]	@ zero_extendqisi2
	mov	r3, r6
	mov	r1, r4
	and	r0, r2, #223
	cmp	r0, #69
	bne	.L468
	cmp	r6, #62
	ble	.L497
	ldrb	r5, [r4, #1]	@ zero_extendqisi2
	mov	r7, r6
	adds	r4, r4, #1
	cmp	r5, #43
	it	ne
	cmpne	r5, #45
	beq	.L472
.L471:
	cbz	r5, .L468
	ldr	r6, .L498+8
.LPIC53:
	add	r6, pc
	b	.L473
.L476:
	cmp	r7, #62
	itt	le
	strble	r5, [r8, r7]
	addle	r7, r7, #1
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	cbz	r5, .L496
.L473:
	mov	r0, r6
	mov	r1, r5
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L476
.L496:
	mov	r3, r7
.L468:
	movs	r2, #0
	mov	r0, r4
	strb	r2, [r8, r3]
	pop	{r4, r5, r6, r7, r8, pc}
.L464:
	mov	r3, r6
	movs	r2, #0
	strb	r2, [r8, r3]
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L497:
	strb	r2, [r8, r6]
	adds	r7, r6, #1
	ldrb	r5, [r4, #1]	@ zero_extendqisi2
	cmp	r5, #45
	it	ne
	cmpne	r5, #43
	itt	ne
	addne	r4, r4, #1
	movne	r3, r7
	bne	.L471
	cmp	r7, #63
	ittet	ne
	addne	r3, r6, #2
	strbne	r5, [r8, r7]
	moveq	r3, r7
	movne	r7, r3
.L472:
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	adds	r4, r1, #2
	b	.L471
.L499:
	.align	2
.L498:
	.word	.LC5-(.LPIC51+4)
	.word	.LC5-(.LPIC52+4)
	.word	.LC5-(.LPIC53+4)
	.size	nsvg__parseNumber.constprop.37, .-nsvg__parseNumber.constprop.37
	.section	.text.nsvg__parseTransformArgs.constprop.36,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseTransformArgs.constprop.36, %function
nsvg__parseTransformArgs.constprop.36:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r3
	movs	r3, #0
	sub	sp, sp, #76
	mov	r10, r1
	mov	r9, r2
	str	r3, [r8]
	mov	r5, r0
	ldrb	r4, [r0]	@ zero_extendqisi2
	str	r0, [sp, #4]
	adds	r3, r4, #0
	it	ne
	movne	r3, #1
	cmp	r4, #40
	it	ne
	cmpne	r4, #0
	beq	.L501
.L502:
	ldrb	r4, [r5, #1]!	@ zero_extendqisi2
	adds	r3, r4, #0
	it	ne
	movne	r3, #1
	cmp	r4, #40
	it	ne
	cmpne	r4, #0
	bne	.L502
.L501:
	cmp	r4, #0
	beq	.L515
	cmp	r4, #41
	ite	eq
	moveq	r3, #0
	andne	r3, r3, #1
	mov	r7, r5
	cbz	r3, .L504
.L506:
	ldrb	r6, [r7, #1]!	@ zero_extendqisi2
	cmp	r6, #41
	it	ne
	cmpne	r6, #0
	bne	.L506
	cbz	r6, .L515
	ldr	r6, .L522
	cmp	r7, r5
	mov	r3, r4
	add	r4, sp, #8
.LPIC54:
	add	r6, pc
	bhi	.L511
	b	.L504
.L508:
	ldr	r3, [r8]
	mov	r1, r4
	mov	r0, r5
	cmp	r3, r9
	bge	.L516
	bl	nsvg__parseNumber.constprop.37(PLT)
	ldr	r3, [r8]
	mov	r5, r0
	movs	r1, #0
	mov	r0, r4
	adds	r2, r3, #1
	str	r2, [r8]
	add	fp, r10, r3, lsl #2
	bl	strtod(PLT)
	fcvtsd	s0, d0
	cmp	r7, r5
	fsts	s0, [fp]
	bls	.L504
.L521:
	ldrb	r3, [r5]	@ zero_extendqisi2
.L511:
	sub	r2, r3, #45
	mov	r1, r3
	uxtb	r2, r2
	mov	r0, r6
	cmp	r3, #43
	it	ne
	cmpne	r2, #1
	bls	.L508
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L508
	adds	r5, r5, #1
	cmp	r7, r5
	bhi	.L521
.L504:
	ldr	r3, [sp, #4]
	subs	r0, r7, r3
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L515:
	movs	r0, #1
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L516:
	movs	r0, #0
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L523:
	.align	2
.L522:
	.word	.LC5-(.LPIC54+4)
	.size	nsvg__parseTransformArgs.constprop.36, .-nsvg__parseTransformArgs.constprop.36
	.section	.text.nsvg__parseCoordinateRaw,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseCoordinateRaw, %function
nsvg__parseCoordinateRaw:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r5, r0
	mov	r0, r1
	ldr	r1, .L549
	sub	sp, sp, #44
	movs	r4, #0
	add	r3, sp, #8
	movs	r7, #0
	mov	r2, sp
.LPIC55:
	add	r1, pc
	str	r7, [sp]	@ float
	mov	r6, sp
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	str	r4, [sp, #16]
	str	r4, [sp, #20]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	r4, [sp, #32]
	str	r4, [sp, #36]
	bl	__isoc99_sscanf(PLT)
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	cmp	r3, #100
	beq	.L545
	cmp	r3, #112
	beq	.L546
	cmp	r3, #109
	beq	.L547
	cmp	r3, #99
	bne	.L531
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #109
	ite	eq
	moveq	r3, #6
	movne	r3, #0
.L526:
	str	r3, [sp, #4]
	ldmia	r6, {r0, r1}
	stmia	r5, {r0, r1}
	mov	r0, r5
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L546:
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #120
	it	eq
	moveq	r3, #1
	beq	.L526
	cmp	r3, #116
	it	eq
	moveq	r3, #3
	beq	.L526
	cmp	r3, #99
	beq	.L548
.L541:
	movs	r3, #0
	b	.L526
.L545:
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #112
	bne	.L541
	movs	r3, #2
	b	.L526
.L547:
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #109
	ite	eq
	moveq	r3, #5
	movne	r3, #0
	b	.L526
.L548:
	movs	r3, #4
	b	.L526
.L531:
	cmp	r3, #105
	bne	.L527
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #110
	ite	eq
	moveq	r3, #7
	movne	r3, #0
	b	.L526
.L527:
	cmp	r3, #37
	it	eq
	moveq	r3, #8
	beq	.L526
	cmp	r3, #101
	bne	.L541
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #109
	it	eq
	moveq	r3, #9
	beq	.L526
	cmp	r3, #120
	ite	eq
	moveq	r3, #10
	movne	r3, #0
	b	.L526
.L550:
	.align	2
.L549:
	.word	.LC6-(.LPIC55+4)
	.size	nsvg__parseCoordinateRaw, .-nsvg__parseCoordinateRaw
	.section	.text.nsvg__prepareStroke.isra.12.constprop.34,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__prepareStroke.isra.12.constprop.34, %function
nsvg__prepareStroke.isra.12.constprop.34:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r1]
	push	{r4, r5, r6, r7, lr}
	ldr	r5, [r0]
	add	r4, r3, #134217728
	cmp	r3, #0
	add	r4, r4, #-1
	fstmfdd	sp!, {d8}
	sub	sp, sp, #20
	add	r4, r5, r4, lsl #5
	ble	.L551
	flds	s17, .L595
	adds	r5, r5, #32
	movs	r6, #0
	fconsts	s16, #112
.L557:
	flds	s0, [r5, #-32]
	sub	r7, r5, #32
	flds	s14, [r4]
	adds	r6, r6, #1
	flds	s15, [r4, #4]
	adds	r5, r5, #32
	fsubs	s0, s0, s14
	fsts	s0, [r4, #8]
	flds	s14, [r5, #-60]
	fmuls	s0, s0, s0
	fsubs	s15, s14, s15
	fmacs	s0, s15, s15
	fsts	s15, [r4, #12]
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	bne	.L594
.L553:
	fcmpes	s15, s17
	fmstat
	fdivs	s14, s16, s15
	ble	.L554
	flds	s13, [r4, #8]
	flds	s12, [r4, #12]
	fmuls	s13, s13, s14
	fmuls	s14, s12, s14
	fsts	s13, [r4, #8]
	fsts	s14, [r4, #12]
.L554:
	cmp	r6, r3
	fsts	s15, [r4, #16]
	mov	r4, r7
	blt	.L557
	ldr	r4, [r0]
	cmp	r3, #0
	add	r0, r3, #134217728
	add	r0, r0, #-1
	add	r0, r4, r0, lsl #5
	ble	.L551
	subs	r2, r2, #1
	flds	s12, [r0, #12]
	cmp	r2, #1
	flds	s11, [r0, #8]
	bls	.L559
	flds	s4, .L595
	add	r3, r4, #32
	flds	s5, .L595+4
	movs	r0, #0
	fconsts	s8, #96
	fconsts	s7, #112
	fconsts	s6, #48
.L570:
	flds	s9, [r3, #-20]
	flds	s10, [r3, #-24]
	pld	[r3, #108]
	fadds	s13, s9, s12
	fadds	s14, s10, s11
	fmuls	s11, s9, s11
	fmuls	s13, s13, s8
	fnmuls	s14, s14, s8
	fmscs	s11, s10, s12
	fmuls	s15, s13, s13
	fsts	s13, [r3, #-12]
	fsts	s14, [r3, #-8]
	fmacs	s15, s14, s14
	fcmpes	s15, s4
	fmstat
	fdivs	s12, s7, s15
	ble	.L560
	fcmps	s12, s5
	fmstat
	it	gt
	fcpysgt	s12, s5
	fmuls	s13, s12, s13
	fmuls	s14, s12, s14
	fsts	s13, [r3, #-12]
	fsts	s14, [r3, #-8]
.L560:
	ldrb	r2, [r3, #-4]	@ zero_extendqisi2
	adds	r0, r0, #1
	fcmpezs	s11
	fmstat
	and	r2, r2, #1
	fmuls	s15, s15, s6
	orr	r4, r2, #4
	fcpys	s12, s9
	it	gt
	uxtbgt	r2, r4
	fcpys	s11, s10
	tst	r2, #1
	strb	r2, [r3, #-4]
	beq	.L568
	fcmpes	s15, s7
	fmstat
	itt	mi
	orrmi	r2, r2, #2
	strbmi	r2, [r3, #-4]
.L568:
	ldr	r2, [r1]
	adds	r3, r3, #32
	cmp	r2, r0
	bgt	.L570
.L551:
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, pc}
.L559:
	flds	s6, .L595
	add	r3, r4, #32
	flds	s5, .L595+4
	movs	r0, #0
	fconsts	s8, #96
	fconsts	s7, #112
.L577:
	flds	s9, [r3, #-20]
	flds	s10, [r3, #-24]
	pld	[r3, #108]
	fadds	s13, s9, s12
	fadds	s14, s10, s11
	fmuls	s11, s9, s11
	fmuls	s13, s13, s8
	fnmuls	s14, s14, s8
	fmscs	s11, s10, s12
	fmuls	s15, s13, s13
	fsts	s13, [r3, #-12]
	fsts	s14, [r3, #-8]
	fmacs	s15, s14, s14
	fcmpes	s15, s6
	fmstat
	fdivs	s12, s7, s15
	ble	.L571
	fcmps	s12, s5
	fmstat
	it	gt
	fcpysgt	s12, s5
	fmuls	s13, s12, s13
	fmuls	s14, s12, s14
	fsts	s13, [r3, #-12]
	fsts	s14, [r3, #-8]
.L571:
	ldrb	r2, [r3, #-4]	@ zero_extendqisi2
	adds	r0, r0, #1
	fcmpezs	s11
	adds	r3, r3, #32
	fmstat
	and	r2, r2, #1
	fcpys	s12, s9
	it	gt
	orrgt	r2, r2, #4
	fcpys	s11, s10
	strb	r2, [r3, #-36]
	tst	r2, #1
	orr	r2, r2, #2
	it	ne
	strbne	r2, [r3, #-36]
	ldr	r2, [r1]
	cmp	r0, r2
	blt	.L577
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, pc}
.L594:
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	bl	sqrtf(PLT)
	ldr	r1, [sp, #8]
	fcpys	s15, s0
	ldr	r2, [sp, #4]
	ldr	r3, [r1]
	ldr	r0, [sp, #12]
	b	.L553
.L596:
	.align	2
.L595:
	.word	897988541
	.word	1142292480
	.size	nsvg__prepareStroke.isra.12.constprop.34, .-nsvg__prepareStroke.isra.12.constprop.34
	.section	.text.nsvg__cubicBezTo,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__cubicBezTo, %function
nsvg__cubicBezTo:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	add	r4, r0, #38912
	ldr	r3, [r4, #8]
	ldr	r1, [r4, #12]
	fstmfdd	sp!, {d8, d9, d10}
	fcpys	s21, s0
	cmp	r3, r1
	fcpys	s20, s1
	fcpys	s19, s2
	fcpys	s18, s3
	fcpys	s17, s4
	fcpys	s16, s5
	bge	.L598
	ldr	r0, [r4, #4]
.L599:
	add	r2, r0, r3, lsl #3
	adds	r3, r3, #1
	fsts	s21, [r2]
	fsts	s20, [r2, #4]
	str	r3, [r4, #8]
.L602:
	cmp	r3, r1
	blt	.L603
	cmp	r1, #0
	bne	.L617
	movs	r1, #64
	movs	r3, #8
.L604:
	str	r3, [r4, #12]
	bl	realloc(PLT)
	ldr	r3, [r4, #8]
	str	r0, [r4, #4]
	ldr	r1, [r4, #12]
	cbz	r0, .L606
.L603:
	add	r2, r0, r3, lsl #3
	adds	r3, r3, #1
	fsts	s19, [r2]
	fsts	s18, [r2, #4]
	str	r3, [r4, #8]
.L606:
	cmp	r3, r1
	blt	.L607
	cbnz	r1, .L618
	movs	r1, #64
	movs	r3, #8
.L608:
	str	r3, [r4, #12]
	bl	realloc(PLT)
	str	r0, [r4, #4]
	cbz	r0, .L597
	ldr	r3, [r4, #8]
.L607:
	add	r0, r0, r3, lsl #3
	adds	r3, r3, #1
	fsts	s17, [r0]
	fsts	s16, [r0, #4]
	str	r3, [r4, #8]
.L597:
	fldmfdd	sp!, {d8-d10}
	pop	{r4, pc}
.L598:
	cbnz	r1, .L619
	movs	r1, #64
	movs	r3, #8
.L600:
	str	r3, [r4, #12]
	ldr	r0, [r4, #4]
	bl	realloc(PLT)
	ldr	r3, [r4, #8]
	str	r0, [r4, #4]
	ldr	r1, [r4, #12]
	cmp	r0, #0
	bne	.L599
	b	.L602
.L619:
	lsls	r3, r1, #1
	lsls	r1, r1, #4
	b	.L600
.L618:
	lsls	r3, r1, #1
	lsls	r1, r1, #4
	b	.L608
.L617:
	lsls	r3, r1, #1
	lsls	r1, r1, #4
	b	.L604
	.size	nsvg__cubicBezTo, .-nsvg__cubicBezTo
	.section	.text.nsvg__lineTo,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__lineTo, %function
nsvg__lineTo:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	add	r4, r0, #38912
	ldr	r3, [r4, #8]
	fstmfdd	sp!, {d8, d9, d10}
	cmp	r3, #0
	ble	.L620
	ldr	r0, [r4, #4]
	subs	r2, r3, #1
	flds	s13, .L647
	ldr	r1, [r4, #12]
	fcpys	s17, s0
	add	r2, r0, r2, lsl #3
	fcpys	s16, s1
	cmp	r3, r1
	flds	s14, [r2]
	flds	s15, [r2, #4]
	fsubs	s19, s0, s14
	fsubs	s18, s1, s15
	fmuls	s19, s19, s13
	fmuls	s18, s18, s13
	fadds	s21, s19, s14
	fadds	s20, s18, s15
	bge	.L641
.L623:
	add	r2, r0, r3, lsl #3
	adds	r3, r3, #1
	fsts	s21, [r2]
	fsts	s20, [r2, #4]
	str	r3, [r4, #8]
.L626:
	cmp	r3, r1
	fsubs	s19, s17, s19
	fsubs	s18, s16, s18
	bge	.L642
.L627:
	add	r2, r0, r3, lsl #3
	adds	r3, r3, #1
	fsts	s19, [r2]
	fsts	s18, [r2, #4]
	str	r3, [r4, #8]
.L630:
	cmp	r3, r1
	bge	.L643
.L631:
	add	r0, r0, r3, lsl #3
	adds	r3, r3, #1
	fsts	s17, [r0]
	fsts	s16, [r0, #4]
	str	r3, [r4, #8]
.L620:
	fldmfdd	sp!, {d8-d10}
	pop	{r4, pc}
.L643:
	cbnz	r1, .L644
	movs	r1, #64
	movs	r3, #8
.L632:
	str	r3, [r4, #12]
	bl	realloc(PLT)
	str	r0, [r4, #4]
	cmp	r0, #0
	beq	.L620
	ldr	r3, [r4, #8]
	b	.L631
.L642:
	cbnz	r1, .L645
	movs	r1, #64
	movs	r3, #8
.L628:
	str	r3, [r4, #12]
	bl	realloc(PLT)
	ldr	r3, [r4, #8]
	str	r0, [r4, #4]
	ldr	r1, [r4, #12]
	cmp	r0, #0
	bne	.L627
	b	.L630
.L641:
	cbnz	r1, .L646
	movs	r1, #64
	movs	r3, #8
.L624:
	str	r3, [r4, #12]
	bl	realloc(PLT)
	ldr	r3, [r4, #8]
	str	r0, [r4, #4]
	ldr	r1, [r4, #12]
	cmp	r0, #0
	bne	.L623
	b	.L626
.L644:
	lsls	r3, r1, #1
	lsls	r1, r1, #4
	b	.L632
.L646:
	lsls	r3, r1, #1
	lsls	r1, r1, #4
	b	.L624
.L645:
	lsls	r3, r1, #1
	lsls	r1, r1, #4
	b	.L628
.L648:
	.align	2
.L647:
	.word	1051372203
	.size	nsvg__lineTo, .-nsvg__lineTo
	.section	.text.nsvg__addPath,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__addPath, %function
nsvg__addPath:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r5, r0, #38912
	ldr	r3, [r5, #8]
	mov	r8, r0
	fstmfdd	sp!, {d8, d9, d10, d11}
	sub	sp, sp, #36
	cmp	r3, #3
	ldr	r7, [r5]
	ble	.L649
	mov	r9, r1
	cmp	r1, #0
	bne	.L694
	movs	r0, #32
	bl	malloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L649
.L697:
	movs	r6, #0
	mov	r3, r0
	str	r6, [r3], #4
	adds	r3, r3, #4
	str	r6, [r0, #4]
	str	r6, [r3], #4
	str	r6, [r3], #4
	str	r6, [r3], #4
	str	r6, [r3], #4
	str	r6, [r3], #4
	str	r6, [r3]
	ldr	r0, [r5, #8]
	lsls	r0, r0, #3
	bl	malloc(PLT)
	mov	r3, r0
	str	r0, [r4]
	cmp	r0, #0
	beq	.L653
	strb	r9, [r4, #8]
	ldr	r2, [r5, #8]
	cmp	r2, r6
	str	r2, [r4, #4]
	ble	.L654
	mov	r0, #304
	ldr	r1, [r5, #4]
	mla	r0, r0, r7, r8
	lsls	r7, r2, #3
	add	r10, r3, #32
	add	lr, r1, #32
	add	r8, r0, #68
	add	r9, r0, #64
	cmp	r3, r8
	str	r7, [sp, #12]
	it	cc
	movcc	ip, #0
	add	r7, r7, r3
	it	cs
	movcs	ip, #1
	add	fp, r0, #84
	cmp	r7, r9
	it	ls
	orrls	ip, ip, #1
	cmp	r3, lr
	it	cc
	cmpcc	r1, r10
	add	lr, r0, #76
	ite	cs
	movcs	r10, #1
	movcc	r10, #0
	cmp	r3, lr
	add	r9, r0, #72
	and	r10, r10, ip
	ite	cc
	movcc	ip, #0
	movcs	ip, #1
	cmp	r7, r9
	it	ls
	orrls	ip, ip, #1
	cmp	r2, #3
	ite	ls
	movls	r10, #0
	andhi	r10, r10, #1
	cmp	r3, fp
	str	fp, [sp, #8]
	ite	cc
	movcc	fp, #0
	movcs	fp, #1
	cmp	r3, r9
	and	r10, r10, ip
	it	cc
	movcc	r9, #0
	add	ip, r0, #80
	it	cs
	movcs	r9, #1
	str	fp, [sp, #4]
	cmp	r7, r8
	it	ls
	orrls	r9, r9, #1
	cmp	r7, ip
	it	ls
	orrls	fp, fp, #1
	cmp	r3, ip
	and	fp, r10, fp
	ite	cc
	movcc	ip, #0
	movcs	ip, #1
	cmp	r7, lr
	ite	hi
	movhi	lr, ip
	orrls	lr, ip, #1
	and	r9, fp, r9
	and	r9, r9, lr
	ldr	lr, [sp, #8]
	add	ip, r0, #88
	flds	s10, [r0, #64]
	cmp	ip, r3
	it	hi
	cmphi	r7, lr
	ite	ls
	movls	r7, #1
	movhi	r7, #0
	tst	r9, r7
	beq	.L655
	flds	s11, [r0, #72]
	lsr	r8, r2, #2
	flds	s12, [r0, #80]
	mov	ip, r1
	flds	s13, [r0, #68]
	lsl	r7, r8, #2
	flds	s14, [r0, #76]
	mov	lr, r3
	flds	s15, [r0, #84]
	vdup.32	q0, d5[0]
	vdup.32	q1, d5[1]
	vdup.32	q15, d6[0]
	vdup.32	q14, d6[1]
	vdup.32	q13, d7[0]
	vdup.32	q12, d7[1]
.L661:
	vld2.32	{d16-d19}, [ip]!
	adds	r6, r6, #1
	vmul.f32	q11, q1, q9
	cmp	r6, r8
	vmul.f32	q10, q13, q9
	vmla.f32	q11, q0, q8
	vmla.f32	q10, q14, q8
	vadd.f32	q4, q11, q15
	vadd.f32	q5, q10, q12
	vst2.32	{d8-d11}, [lr]!
	bcc	.L661
	cmp	r2, r7
	beq	.L662
	lsls	r6, r7, #3
	fcpys	s6, s15
	fcpys	s8, s12
	adds	r0, r7, #1
	add	ip, r1, r6
	add	lr, r6, #4
	flds	s9, [ip]
	add	ip, r1, lr
	flds	s7, [ip]
	cmp	r2, r0
	add	r6, r6, r3
	add	lr, lr, r3
	fmacs	s6, s9, s13
	fmacs	s8, s9, s10
	fcpys	s9, s6
	fmacs	s8, s7, s11
	fmacs	s9, s7, s14
	fsts	s8, [r6]
	fsts	s9, [lr]
	ble	.L662
	lsls	r0, r0, #3
	fcpys	s6, s15
	fcpys	s8, s12
	adds	r7, r7, #2
	add	lr, r1, r0
	adds	r6, r0, #4
	flds	s9, [lr]
	add	lr, r1, r6
	flds	s7, [lr]
	cmp	r2, r7
	add	r0, r0, r3
	add	r6, r6, r3
	fmacs	s6, s9, s13
	fmacs	s8, s9, s10
	fcpys	s9, s6
	fmacs	s8, s7, s11
	fmacs	s9, s7, s14
	fsts	s8, [r0]
	fsts	s9, [r6]
	ble	.L662
	lsls	r7, r7, #3
	adds	r6, r1, r7
	adds	r0, r7, #4
	flds	s8, [r6]
	add	r1, r1, r0
	flds	s9, [r1]
	add	r0, r0, r3
	add	r7, r7, r3
	fmacs	s12, s8, s10
	fmacs	s15, s8, s13
	fmacs	s12, s9, s11
	fmacs	s15, s9, s14
	fsts	s12, [r7]
	fsts	s15, [r0]
.L662:
	cmp	r2, #1
	ittt	gt
	movgt	r1, r3
	movgt	r6, #0
	addgt	r7, sp, #16
	bgt	.L674
	b	.L654
.L695:
	add	r3, r4, #12
	vldr	d16, [sp, #16]
	vldr	d17, [sp, #24]
	adds	r6, r6, #3
	vst1.32	{q8}, [r3]
	ldr	r3, [r4, #4]
	subs	r3, r3, #1
	cmp	r3, r6
	ble	.L654
.L696:
	ldr	r1, [r4]
.L674:
	add	r1, r1, r6, lsl #3
	mov	r0, r7
	bl	nsvg__curveBounds(PLT)
	cmp	r6, #0
	beq	.L695
	flds	s8, [r4, #12]
	adds	r6, r6, #3
	flds	s9, [sp, #16]
	flds	s10, [r4, #16]
	flds	s11, [sp, #20]
	flds	s12, [r4, #20]
	flds	s13, [sp, #24]
	flds	s14, [r4, #24]
	flds	s15, [sp, #28]
	fcmpes	s8, s9
	fmstat
	ldr	r3, [r4, #4]
	fcmpes	s10, s11
	it	mi
	fcpysmi	s9, s8
	fmstat
	add	r3, r3, #-1
	fcmpes	s12, s13
	it	mi
	fcpysmi	s11, s10
	fmstat
	fcmpes	s14, s15
	it	gt
	fcpysgt	s13, s12
	fmstat
	it	gt
	fcpysgt	s15, s14
	cmp	r3, r6
	fsts	s9, [r4, #12]
	fsts	s11, [r4, #16]
	fsts	s13, [r4, #20]
	fsts	s15, [r4, #24]
	bgt	.L696
.L654:
	ldr	r3, [r5, #16]
	str	r3, [r4, #28]
	str	r4, [r5, #16]
.L649:
	add	sp, sp, #36
	@ sp needed
	fldmfdd	sp!, {d8-d11}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L694:
	ldr	r3, [r5, #4]
	flds	s0, [r3]
	flds	s1, [r3, #4]
	bl	nsvg__lineTo(PLT)
	movs	r0, #32
	bl	malloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	bne	.L697
	b	.L649
.L655:
	ldr	r7, [sp, #12]
	adds	r1, r1, #4
	flds	s11, [r0, #72]
	adds	r6, r3, #4
	flds	s12, [r0, #80]
	flds	s13, [r0, #68]
	add	r7, r7, r1
	flds	s14, [r0, #76]
	flds	s15, [r0, #84]
.L663:
	mov	r0, r1
	flds	s7, [r1, #-4]
	flds	s9, [r0]
	adds	r1, r1, #8
	cmp	r1, r7
	fmuls	s8, s9, s11
	fmuls	s9, s9, s14
	fmacs	s8, s7, s10
	fmacs	s9, s7, s13
	fadds	s8, s8, s12
	fadds	s9, s9, s15
	fsts	s8, [r6, #-4]
	fmrs	fp, s9
	str	fp, [r6], #8	@ float
	bne	.L663
	b	.L662
.L653:
	mov	r0, r4
	add	sp, sp, #36
	@ sp needed
	fldmfdd	sp!, {d8-d11}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	free(PLT)
	.size	nsvg__addPath, .-nsvg__addPath
	.section	.text.nsvg__parseCoordinate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseCoordinate, %function
nsvg__parseCoordinate:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	mov	r0, r1
	ldr	r1, .L725+28
	movs	r4, #0
	movs	r5, #0
	fstmfdd	sp!, {d8}
	sub	sp, sp, #40
	add	r3, sp, #8
	mov	r2, sp
.LPIC56:
	add	r1, pc
	fcpys	s16, s0
	fcpys	s17, s1
	str	r5, [sp]	@ float
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	str	r4, [sp, #16]
	str	r4, [sp, #20]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	r4, [sp, #32]
	str	r4, [sp, #36]
	bl	__isoc99_sscanf(PLT)
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	cmp	r3, #100
	beq	.L720
	cmp	r3, #112
	beq	.L721
	cmp	r3, #109
	beq	.L722
	cmp	r3, #99
	bne	.L708
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L703
	add	r6, r6, #38912
	flds	s0, [sp]
	flds	s14, [r6, #56]
	flds	s15, .L725
	fmuls	s0, s0, s14
	fmuls	s0, s0, s15
	b	.L718
.L721:
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L703
	cmp	r3, #116
	beq	.L704
	cmp	r3, #99
	beq	.L723
.L703:
	flds	s0, [sp]
.L718:
	add	sp, sp, #40
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L720:
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #112
	bne	.L703
	flds	s0, [sp]
	add	r6, r6, #38912
	flds	s14, .L725+4
	flds	s15, [r6, #56]
	fmuls	s0, s0, s14
	fdivs	s0, s0, s15
	add	sp, sp, #40
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L722:
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L703
	add	r6, r6, #38912
	flds	s0, [sp]
	flds	s14, [r6, #56]
	flds	s15, .L725+8
	fmuls	s0, s0, s14
	fmuls	s0, s0, s15
	b	.L718
.L704:
	add	r6, r6, #38912
	flds	s0, [sp]
	flds	s14, [r6, #56]
	flds	s15, .L725+12
	fmuls	s0, s0, s14
	fmuls	s0, s0, s15
	add	sp, sp, #40
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L723:
	add	r6, r6, #38912
	flds	s0, [sp]
	flds	s14, [r6, #56]
	flds	s15, .L725+16
	fmuls	s0, s0, s14
	fmuls	s0, s0, s15
	b	.L718
.L708:
	cmp	r3, #105
	bne	.L701
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #110
	bne	.L703
	add	r6, r6, #38912
	flds	s0, [sp]
	flds	s15, [r6, #56]
	fmuls	s0, s0, s15
	b	.L718
.L701:
	cmp	r3, #37
	bne	.L724
	flds	s14, [sp]
	flds	s15, .L725+20
	fcpys	s0, s16
	fmuls	s15, s14, s15
	fmacs	s0, s15, s17
	add	sp, sp, #40
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L724:
	cmp	r3, #101
	bne	.L703
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L712
	cmp	r3, #120
	bne	.L703
	add	r3, r6, #38912
	mov	r2, #304
	ldr	r3, [r3]
	flds	s0, [sp]
	flds	s15, .L725+24
	mla	r6, r2, r3, r6
	flds	s14, [r6, #284]
	fmuls	s0, s0, s14
	fmuls	s0, s0, s15
	b	.L718
.L712:
	add	r3, r6, #38912
	mov	r2, #304
	ldr	r3, [r3]
	flds	s0, [sp]
	mla	r6, r2, r3, r6
	flds	s15, [r6, #284]
	fmuls	s0, s0, s15
	b	.L718
.L726:
	.align	2
.L725:
	.word	1053397798
	.word	1126170624
	.word	1025589893
	.word	1013157433
	.word	1042983595
	.word	1008981770
	.word	1057300152
	.word	.LC6-(.LPIC56+4)
	.size	nsvg__parseCoordinate, .-nsvg__parseCoordinate
	.section	.text.nsvg__parseCoordinate.constprop.38,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseCoordinate.constprop.38, %function
nsvg__parseCoordinate.constprop.38:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	mov	r0, r1
	ldr	r1, .L754+28
	movs	r4, #0
	movs	r5, #0
	fstmfdd	sp!, {d8}
	sub	sp, sp, #40
	add	r3, sp, #8
	mov	r2, sp
.LPIC57:
	add	r1, pc
	fcpys	s16, s0
	str	r5, [sp]	@ float
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	str	r4, [sp, #12]
	str	r4, [sp, #16]
	str	r4, [sp, #20]
	str	r4, [sp, #24]
	str	r4, [sp, #28]
	str	r4, [sp, #32]
	str	r4, [sp, #36]
	bl	__isoc99_sscanf(PLT)
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	cmp	r3, #100
	beq	.L749
	cmp	r3, #112
	beq	.L750
	cmp	r3, #109
	beq	.L751
	cmp	r3, #99
	bne	.L737
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L732
	add	r6, r6, #38912
	flds	s0, [sp]
	flds	s14, [r6, #56]
	flds	s15, .L754
	fmuls	s0, s0, s14
	fmuls	s0, s0, s15
	b	.L747
.L750:
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L732
	cmp	r3, #116
	beq	.L733
	cmp	r3, #99
	beq	.L752
.L732:
	flds	s0, [sp]
.L747:
	add	sp, sp, #40
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L749:
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #112
	bne	.L732
	flds	s0, [sp]
	add	r6, r6, #38912
	flds	s14, .L754+4
	flds	s15, [r6, #56]
	fmuls	s0, s0, s14
	fdivs	s0, s0, s15
	add	sp, sp, #40
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L751:
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L732
	add	r6, r6, #38912
	flds	s0, [sp]
	flds	s14, [r6, #56]
	flds	s15, .L754+8
	fmuls	s0, s0, s14
	fmuls	s0, s0, s15
	b	.L747
.L733:
	add	r6, r6, #38912
	flds	s0, [sp]
	flds	s14, [r6, #56]
	flds	s15, .L754+12
	fmuls	s0, s0, s14
	fmuls	s0, s0, s15
	add	sp, sp, #40
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L752:
	add	r6, r6, #38912
	flds	s0, [sp]
	flds	s14, [r6, #56]
	flds	s15, .L754+16
	fmuls	s0, s0, s14
	fmuls	s0, s0, s15
	b	.L747
.L737:
	cmp	r3, #105
	bne	.L730
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #110
	bne	.L732
	add	r6, r6, #38912
	flds	s0, [sp]
	flds	s15, [r6, #56]
	fmuls	s0, s0, s15
	b	.L747
.L730:
	cmp	r3, #37
	bne	.L753
	flds	s0, [sp]
	flds	s15, .L754+20
	fmuls	s0, s0, s15
	fmuls	s0, s0, s16
	add	sp, sp, #40
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, pc}
.L753:
	cmp	r3, #101
	bne	.L732
	ldrb	r3, [sp, #9]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L741
	cmp	r3, #120
	bne	.L732
	add	r3, r6, #38912
	mov	r2, #304
	ldr	r3, [r3]
	flds	s0, [sp]
	flds	s15, .L754+24
	mla	r6, r2, r3, r6
	flds	s14, [r6, #284]
	fmuls	s0, s0, s14
	fmuls	s0, s0, s15
	b	.L747
.L741:
	add	r3, r6, #38912
	mov	r2, #304
	ldr	r3, [r3]
	flds	s0, [sp]
	mla	r6, r2, r3, r6
	flds	s15, [r6, #284]
	fmuls	s0, s0, s15
	b	.L747
.L755:
	.align	2
.L754:
	.word	1053397798
	.word	1126170624
	.word	1025589893
	.word	1013157433
	.word	1042983595
	.word	1008981770
	.word	1057300152
	.word	.LC6-(.LPIC57+4)
	.size	nsvg__parseCoordinate.constprop.38, .-nsvg__parseCoordinate.constprop.38
	.section	.text.nsvg__roundJoin.isra.28,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__roundJoin.isra.28, %function
nsvg__roundJoin.isra.28:
	@ args = 12, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12}
	sub	sp, sp, #92
	ldr	fp, [sp, #172]
	fconsts	s20, #96
	fnegs	s0, s0
	flds	s17, [fp, #8]
	flds	s16, [fp, #12]
	str	r3, [sp, #12]
	str	r1, [sp, #4]
	fnegs	s17, s17
	str	r2, [sp, #8]
	fmuls	s20, s2, s20
	bl	atan2f(PLT)
	fcpys	s1, s16
	fcpys	s21, s0
	fcpys	s0, s17
	bl	atan2f(PLT)
	flds	s15, .L801
	fsubs	s16, s0, s21
	flds	s14, [sp, #176]	@ int
	fcmpes	s16, s15
	fmstat
	fsitos	s0, s14
	it	mi
	fldsmi	s15, .L801+4
	flds	s14, .L801+8
	it	mi
	faddsmi	s16, s16, s15
	flds	s15, .L801
	fmuls	s0, s0, s14
	fcmpes	s16, s15
	fmstat
	itt	gt
	fldsgt	s15, .L801+4
	fsubsgt	s16, s16, s15
	fabss	s15, s16
	fmuls	s0, s0, s15
	bl	ceilf(PLT)
	ldr	r3, [sp, #4]
	ftosizs	s0, s0
	ldr	r7, [r3]	@ float
	ldr	r3, [sp, #8]
	fmrs	r6, s0	@ int
	cmp	r6, #2
	flds	s24, [r3]
	it	lt
	movlt	r6, #2
	ldr	r3, [sp, #12]
	ldr	r8, [r3]	@ float
	ldr	r3, [sp, #168]
	flds	s23, [r3]
	ldr	r3, [sp, #176]
	cmp	r6, r3
	it	ge
	movge	r6, r3
	cmp	r6, #0
	ble	.L781
	subs	r3, r6, #1
	movs	r5, #0
	add	r10, sp, #84
	add	r9, sp, #80
	fmsr	s14, r3	@ int
	fsitos	s22, s14
	fdivs	s22, s16, s22
	b	.L779
.L799:
	ldr	r0, [r4, #16]
.L766:
	fcmpes	s17, s24
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bmi	.L797
	str	r7, [sp, #48]	@ float
	mov	r3, #-1
	fsts	s24, [sp, #52]
	fsts	s19, [sp, #56]
	fsts	s17, [sp, #60]
	vldr	d16, [sp, #48]
	vldr	d17, [sp, #56]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
.L764:
	fcmps	s16, s23
	fmstat
	beq	.L772
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L773
	ldr	r0, [r4, #16]
.L774:
	fcmpes	s16, s23
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bgt	.L798
	fsts	s18, [sp, #16]
	mov	r3, #-1
	fsts	s16, [sp, #20]
	str	r8, [sp, #24]	@ float
	fsts	s23, [sp, #28]
	vldr	d16, [sp, #16]
	vldr	d17, [sp, #24]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
.L772:
	adds	r5, r5, #1
	cmp	r5, r6
	beq	.L762
.L800:
	fcpys	s23, s16
	fcpys	s24, s17
	fmrs	r8, s18
	fmrs	r7, s19
.L779:
	fmsr	s14, r5	@ int
	mov	r0, r10
	fsitos	s15, s14
	mov	r1, r9
	fcpys	s0, s21
	fmacs	s0, s22, s15
	bl	sincosf(PLT)
	flds	s16, [sp, #84]
	flds	s14, [fp, #4]
	flds	s18, [sp, #80]
	fmuls	s16, s16, s20
	flds	s15, [fp]
	fmuls	s18, s18, s20
	fsubs	s17, s14, s16
	fadds	s16, s16, s14
	fsubs	s19, s15, s18
	fcmps	s17, s24
	fmstat
	fadds	s18, s18, s15
	beq	.L764
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	blt	.L799
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L764
	ldr	r3, [r4, #20]
	b	.L766
.L773:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L772
	ldr	r3, [r4, #20]
	b	.L774
.L798:
	str	r8, [sp, #32]	@ float
	adds	r5, r5, #1
	fsts	s23, [sp, #36]
	cmp	r5, r6
	fsts	s18, [sp, #40]
	mov	r3, #1
	fsts	s16, [sp, #44]
	vldr	d16, [sp, #32]
	vldr	d17, [sp, #40]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	bne	.L800
.L762:
	ldr	r3, [sp, #4]
	fsts	s19, [r3]
	ldr	r3, [sp, #8]
	fsts	s17, [r3]
	ldr	r3, [sp, #12]
	fsts	s18, [r3]
	ldr	r3, [sp, #168]
	fsts	s16, [r3]
	add	sp, sp, #92
	@ sp needed
	fldmfdd	sp!, {d8-d12}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L797:
	fsts	s19, [sp, #64]
	movs	r3, #1
	fsts	s17, [sp, #68]
	str	r7, [sp, #72]	@ float
	fsts	s24, [sp, #76]
	vldr	d16, [sp, #64]
	vldr	d17, [sp, #72]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L764
.L781:
	fcpys	s16, s23
	fcpys	s17, s24
	fmsr	s18, r8
	fmsr	s19, r7
	b	.L762
.L802:
	.align	2
.L801:
	.word	1078530011
	.word	1086918619
	.word	1050868099
	.size	nsvg__roundJoin.isra.28, .-nsvg__roundJoin.isra.28
	.section	.text.nsvg__squareCap.isra.22,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__squareCap.isra.22, %function
nsvg__squareCap.isra.22:
	@ args = 8, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	fstmfdd	sp!, {d8, d9, d10}
	sub	sp, sp, #96
	mov	r8, r1
	mov	r9, r2
	fconsts	s16, #96
	mov	r10, r3
	ldr	r6, [sp, #152]
	fmuls	s4, s4, s16
	ldr	r7, [sp, #156]
	fmuls	s3, s4, s3
	fnmacs	s0, s4, s2
	fnmuls	s4, s2, s4
	fsubs	s1, s1, s3
	fsubs	s17, s1, s4
	fadds	s16, s1, s4
	fsubs	s19, s0, s3
	fadds	s18, s0, s3
	fcmps	s17, s16
	fmstat
	beq	.L805
	ldr	r5, [r0, #20]
	ldr	r1, [r0, #24]
	cmp	r5, r1
	bge	.L806
	ldr	r0, [r0, #16]
.L807:
	fcmpes	s17, s16
	add	r3, r5, r5, lsl #1
	fmstat
	add	r5, r5, #1
	str	r5, [r4, #20]
	add	r0, r0, r3, lsl #3
	bmi	.L847
	fsts	s18, [sp, #64]
	mov	r3, #-1
	fsts	s16, [sp, #68]
	fsts	s19, [sp, #72]
	fsts	s17, [sp, #76]
	vldr	d16, [sp, #64]
	vldr	d17, [sp, #72]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
.L805:
	cbnz	r7, .L848
.L813:
	fsts	s19, [r8]
	fsts	s17, [r9]
	fsts	s18, [r10]
	fsts	s16, [r6]
	add	sp, sp, #96
	@ sp needed
	fldmfdd	sp!, {d8-d10}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L806:
	cmp	r1, #0
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r0, #24]
	ldr	r0, [r0, #16]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L805
	ldr	r5, [r4, #20]
	b	.L807
.L848:
	flds	s20, [r9]
	ldr	r5, [r8]	@ float
	fcmps	s17, s20
	fmstat
	beq	.L815
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L816
	ldr	r0, [r4, #16]
.L817:
	fcmpes	s17, s20
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bgt	.L849
	fsts	s19, [sp, #32]
	mov	r3, #-1
	fsts	s17, [sp, #36]
	str	r5, [sp, #40]	@ float
	fsts	s20, [sp, #44]
	vldr	d16, [sp, #32]
	vldr	d17, [sp, #40]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
.L815:
	flds	s20, [r6]
	ldr	r5, [r10]	@ float
	fcmps	s16, s20
	fmstat
	beq	.L813
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L823
	ldr	r0, [r4, #16]
.L824:
	fcmpes	s16, s20
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bmi	.L850
	str	r5, [sp]	@ float
	mov	r3, #-1
	fsts	s20, [sp, #4]
	fsts	s18, [sp, #8]
	fsts	s16, [sp, #12]
	vld1.64	{d16-d17}, [sp:64]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L813
.L847:
	fsts	s19, [sp, #80]
	movs	r3, #1
	fsts	s17, [sp, #84]
	fsts	s18, [sp, #88]
	fsts	s16, [sp, #92]
	vldr	d16, [sp, #80]
	vldr	d17, [sp, #88]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L805
.L823:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L813
	ldr	r3, [r4, #20]
	b	.L824
.L816:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L815
	ldr	r3, [r4, #20]
	b	.L817
.L850:
	fsts	s18, [sp, #16]
	movs	r3, #1
	fsts	s16, [sp, #20]
	str	r5, [sp, #24]	@ float
	fsts	s20, [sp, #28]
	vldr	d16, [sp, #16]
	vldr	d17, [sp, #24]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L813
.L849:
	str	r5, [sp, #48]	@ float
	movs	r3, #1
	fsts	s20, [sp, #52]
	fsts	s19, [sp, #56]
	fsts	s17, [sp, #60]
	vldr	d16, [sp, #48]
	vldr	d17, [sp, #56]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L815
	.size	nsvg__squareCap.isra.22, .-nsvg__squareCap.isra.22
	.section	.text.nsvg__miterJoin.isra.19,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__miterJoin.isra.19, %function
nsvg__miterJoin.isra.19:
	@ args = 8, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, r3
	fstmfdd	sp!, {d8, d9, d10, d11, d12}
	sub	sp, sp, #192
	mov	r4, r0
	mov	r7, r1
	ldr	r5, [sp, #268]
	mov	r8, r2
	fconsts	s18, #96
	fcpys	s23, s1
	ldrb	r3, [r5, #28]	@ zero_extendqisi2
	flds	s22, [r5, #8]
	fnegs	s21, s0
	lsls	r3, r3, #29
	flds	s24, [r5, #12]
	fmuls	s18, s2, s18
	fnegs	s22, s22
	ldr	r6, [sp, #264]
	bmi	.L930
	flds	s16, [r5, #4]
	flds	s20, [r2]
	flds	s17, [r5]
	ldr	r10, [r1]	@ float
	fcpys	s19, s16
	fnmacs	s16, s18, s22
	fnmacs	s19, s18, s21
	fcpys	s21, s17
	fnmacs	s17, s18, s24
	fnmacs	s21, s18, s1
	fcmps	s19, s20
	fmstat
	beq	.L875
	ldr	r3, [r0, #20]
	ldr	r1, [r0, #24]
	cmp	r3, r1
	bge	.L876
	ldr	r0, [r0, #16]
.L877:
	fcmpes	s19, s20
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bmi	.L931
	str	r10, [sp, #64]	@ float
	mov	r3, #-1
	fsts	s20, [sp, #68]
	fsts	s21, [sp, #72]
	fsts	s19, [sp, #76]
	vldr	d16, [sp, #64]
	vldr	d17, [sp, #72]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
.L875:
	fcmps	s19, s16
	fmstat
	beq	.L883
.L937:
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L884
	ldr	r0, [r4, #16]
.L885:
	fcmpes	s19, s16
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bgt	.L932
	fsts	s21, [sp, #32]
	mov	r3, #-1
	fsts	s19, [sp, #36]
	fsts	s17, [sp, #40]
	fsts	s16, [sp, #44]
	vldr	d16, [sp, #32]
	vldr	d17, [sp, #40]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
.L883:
	flds	s14, [r5, #24]
	flds	s19, [r5, #4]
	flds	s21, [r6]
	flds	s15, [r5, #20]
	flds	s20, [r5]
	fmacs	s19, s18, s14
	ldr	r5, [r9]	@ float
	fmacs	s20, s18, s15
	fcmps	s19, s21
	fmstat
	beq	.L868
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L890
	ldr	r0, [r4, #16]
.L891:
	fcmpes	s19, s21
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bgt	.L933
	fsts	s20, [sp]
	mov	r3, #-1
	fsts	s19, [sp, #4]
	str	r5, [sp, #8]	@ float
	fsts	s21, [sp, #12]
	vld1.64	{d16-d17}, [sp:64]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
.L868:
	fsts	s17, [r7]
	fsts	s16, [r8]
	fsts	s20, [r9]
	fsts	s19, [r6]
	add	sp, sp, #192
	@ sp needed
	fldmfdd	sp!, {d8-d12}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L930:
	flds	s19, [r5, #4]
	flds	s14, [r5, #24]
	flds	s25, [r2]
	flds	s20, [r5]
	fcpys	s16, s19
	flds	s15, [r5, #20]
	fnmacs	s16, s18, s14
	fcpys	s17, s20
	ldr	r10, [r1]	@ float
	fnmacs	s17, s18, s15
	fcmps	s16, s25
	fmstat
	beq	.L853
	ldr	r3, [r0, #20]
	ldr	r1, [r0, #24]
	cmp	r3, r1
	bge	.L854
	ldr	r0, [r0, #16]
.L855:
	fcmpes	s16, s25
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bmi	.L934
	str	r10, [sp, #160]	@ float
	mov	r3, #-1
	fsts	s25, [sp, #164]
	fsts	s17, [sp, #168]
	fsts	s16, [sp, #172]
	vldr	d16, [sp, #160]
	vldr	d17, [sp, #168]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
.L929:
	flds	s20, [r5]
	flds	s19, [r5, #4]
.L853:
	fcpys	s15, s19
	flds	s25, [r6]
	fmacs	s15, s18, s21
	fmacs	s19, s18, s22
	ldr	r5, [r9]	@ float
	fcpys	s21, s15
	fcpys	s15, s20
	fcmps	s21, s25
	fmacs	s15, s18, s23
	fmstat
	fmacs	s20, s18, s24
	fcpys	s23, s15
	beq	.L861
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L862
	ldr	r0, [r4, #16]
.L863:
	fcmpes	s21, s25
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bgt	.L935
	fsts	s23, [sp, #128]
	mov	r3, #-1
	fsts	s21, [sp, #132]
	str	r5, [sp, #136]	@ float
	fsts	s25, [sp, #140]
	vldr	d16, [sp, #128]
	vldr	d17, [sp, #136]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
.L861:
	fcmps	s21, s19
	fmstat
	beq	.L868
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L869
	ldr	r0, [r4, #16]
.L870:
	fcmpes	s21, s19
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bmi	.L936
	fsts	s20, [sp, #96]
	mov	r3, #-1
	fsts	s19, [sp, #100]
	fsts	s23, [sp, #104]
	fsts	s21, [sp, #108]
	vldr	d16, [sp, #96]
	vldr	d17, [sp, #104]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L868
.L876:
	cmp	r1, #0
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r0, #24]
	ldr	r0, [r0, #16]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L875
	ldr	r3, [r4, #20]
	b	.L877
.L884:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L883
	ldr	r3, [r4, #20]
	b	.L885
.L890:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L868
	ldr	r3, [r4, #20]
	b	.L891
.L869:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L868
	ldr	r3, [r4, #20]
	b	.L870
.L862:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L861
	ldr	r3, [r4, #20]
	b	.L863
.L854:
	cmp	r1, #0
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r0, #24]
	ldr	r0, [r0, #16]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L929
	ldr	r3, [r4, #20]
	b	.L855
.L933:
	str	r5, [sp, #16]	@ float
	movs	r3, #1
	fsts	s21, [sp, #20]
	fsts	s20, [sp, #24]
	fsts	s19, [sp, #28]
	vldr	d16, [sp, #16]
	vldr	d17, [sp, #24]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L868
.L931:
	fsts	s21, [sp, #80]
	movs	r3, #1
	fsts	s19, [sp, #84]
	str	r10, [sp, #88]	@ float
	fsts	s20, [sp, #92]
	fcmps	s19, s16
	vldr	d16, [sp, #80]
	vldr	d17, [sp, #88]
	fmstat
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	bne	.L937
	b	.L883
.L932:
	fsts	s17, [sp, #48]
	movs	r3, #1
	fsts	s16, [sp, #52]
	fsts	s21, [sp, #56]
	fsts	s19, [sp, #60]
	vldr	d16, [sp, #48]
	vldr	d17, [sp, #56]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L883
.L934:
	fsts	s17, [sp, #176]
	movs	r3, #1
	fsts	s16, [sp, #180]
	str	r10, [sp, #184]	@ float
	fsts	s25, [sp, #188]
	vldr	d16, [sp, #176]
	vldr	d17, [sp, #184]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	flds	s20, [r5]
	flds	s19, [r5, #4]
	b	.L853
.L936:
	fsts	s23, [sp, #112]
	movs	r3, #1
	fsts	s21, [sp, #116]
	fsts	s20, [sp, #120]
	fsts	s19, [sp, #124]
	vldr	d16, [sp, #112]
	vldr	d17, [sp, #120]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L868
.L935:
	str	r5, [sp, #144]	@ float
	movs	r3, #1
	fsts	s25, [sp, #148]
	fsts	s23, [sp, #152]
	fsts	s21, [sp, #156]
	vldr	d16, [sp, #144]
	vldr	d17, [sp, #152]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L861
	.size	nsvg__miterJoin.isra.19, .-nsvg__miterJoin.isra.19
	.section	.text.nsvg__flattenCubicBez.constprop.39,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__flattenCubicBez.constprop.39, %function
nsvg__flattenCubicBez.constprop.39:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12}
	mov	r6, r1
	movs	r4, #0
	fcpys	s18, s2
	fcpys	s17, s3
	fcpys	s20, s6
	fcpys	s19, s7
	fconsts	s16, #96
	b	.L949
.L956:
	fcpys	s7, s24
	bl	nsvg__flattenCubicBez(PLT)
	cmp	r4, #11
	fcpys	s5, s22
	fcpys	s4, s21
	beq	.L938
	fcpys	s1, s24
	fcpys	s0, s23
.L949:
	fsubs	s15, s19, s1
	adds	r4, r4, #1
	fsubs	s12, s18, s20
	mov	r0, r5
	fsubs	s14, s20, s0
	mov	r1, r4
	fsubs	s11, s4, s20
	movs	r2, #0
	fsubs	s10, s19, s17
	fmuls	s12, s12, s15
	fsubs	s9, s19, s5
	fmuls	s11, s11, s15
	fmuls	s13, s14, s14
	fadds	s2, s18, s0
	fadds	s18, s4, s18
	fadds	s4, s4, s20
	fmacs	s12, s10, s14
	fmacs	s11, s9, s14
	fmacs	s13, s15, s15
	fadds	s3, s1, s17
	fmuls	s18, s18, s16
	fadds	s17, s5, s17
	fmuls	s21, s4, s16
	fadds	s5, s5, s19
	fmuls	s2, s2, s16
	flds	s15, [r5, #8]
	fmuls	s17, s17, s16
	fmuls	s22, s5, s16
	fadds	s14, s18, s2
	fmuls	s3, s3, s16
	fadds	s18, s21, s18
	fabss	s12, s12
	fmuls	s13, s13, s15
	fabss	s11, s11
	fadds	s15, s17, s3
	fmuls	s4, s14, s16
	fadds	s17, s22, s17
	fmuls	s18, s18, s16
	fadds	s12, s11, s12
	fmuls	s5, s15, s16
	fmuls	s17, s17, s16
	fadds	s23, s18, s4
	fmuls	s12, s12, s12
	fadds	s24, s17, s5
	fmuls	s23, s23, s16
	fcmpes	s13, s12
	fmstat
	fmuls	s24, s24, s16
	fcpys	s6, s23
	ble	.L956
	ldr	r3, [r5, #32]
	ldr	r0, [r5, #28]
	cmp	r3, r2
	ble	.L942
	flds	s15, [r5, #12]
	add	r2, r3, #134217728
	subs	r2, r2, #1
	add	r2, r0, r2, lsl #5
	fmuls	s13, s15, s15
	flds	s15, [r2, #4]
	flds	s14, [r2]
	fsubs	s15, s19, s15
	fsubs	s14, s20, s14
	fmuls	s15, s15, s15
	fmacs	s15, s14, s14
	fcmpes	s13, s15
	fmstat
	bgt	.L958
.L942:
	ldr	r2, [r5, #36]
	cmp	r3, r2
	blt	.L945
	cmp	r2, #0
	itete	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	lslgt	r1, r2, #6
	movle	r1, #2048
	str	r3, [r5, #36]
	bl	realloc(PLT)
	str	r0, [r5, #28]
	cbz	r0, .L938
	ldr	r3, [r5, #32]
.L945:
	add	r3, r0, r3, lsl #5
	strb	r6, [r3, #28]
	ldr	r2, [r5, #32]
	fsts	s20, [r3]
	fsts	s19, [r3, #4]
	adds	r3, r2, #1
	str	r3, [r5, #32]
.L938:
	fldmfdd	sp!, {d8-d12}
	pop	{r4, r5, r6, pc}
.L958:
	ldrb	r3, [r2, #28]	@ zero_extendqisi2
	orrs	r6, r6, r3
	strb	r6, [r2, #28]
	fldmfdd	sp!, {d8-d12}
	pop	{r4, r5, r6, pc}
	.size	nsvg__flattenCubicBez.constprop.39, .-nsvg__flattenCubicBez.constprop.39
	.section	.text.nsvg__parseTransform,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseTransform, %function
nsvg__parseTransform:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	vmov.f32	d16, #0.0  @ v2sf
	ldr	r7, .L989+24
	mov	r3, r0
	add	r2, r0, #16
	mov	r4, r0
	ldr	r8, .L989+28
	mov	r6, r1
	ldr	r9, .L989+32
.LPIC58:
	add	r7, pc
	ldr	r10, .L989+36
	fstmfdd	sp!, {d8, d9, d10, d11}
.LPIC59:
	add	r8, pc
	flds	s23, .L989+16
	sub	sp, sp, #52
	flds	s22, .L989+20
.LPIC60:
	add	r9, pc
	vldr	d18, .L989
.LPIC61:
	add	r10, pc
	vldr	d17, .L989+8
	vst1.32	{d18}, [r3]!
	vst1.32	{d17}, [r3]
	vst1.32	{d16}, [r2]
.L960:
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L980
.L976:
	mov	r0, r6
	mov	r1, r7
	movs	r2, #6
	bl	strncmp(PLT)
	mov	lr, r0
	cmp	r0, #0
	beq	.L981
	mov	r0, r6
	mov	r1, r8
	movs	r2, #9
	bl	strncmp(PLT)
	mov	lr, r0
	cmp	r0, #0
	beq	.L982
	mov	r0, r6
	mov	r1, r9
	movs	r2, #5
	bl	strncmp(PLT)
	mov	lr, r0
	cmp	r0, #0
	beq	.L983
	mov	r0, r6
	mov	r1, r10
	movs	r2, #6
	bl	strncmp(PLT)
	mov	lr, r0
	cmp	r0, #0
	beq	.L984
	ldr	r1, .L989+40
	mov	r0, r6
	movs	r2, #5
.LPIC62:
	add	r1, pc
	bl	strncmp(PLT)
	mov	lr, r0
	cmp	r0, #0
	beq	.L985
	ldr	r1, .L989+44
	mov	r0, r6
	movs	r2, #5
.LPIC63:
	add	r1, pc
	bl	strncmp(PLT)
	mov	lr, r0
	cmp	r0, #0
	beq	.L986
	adds	r6, r6, #1
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L976
.L980:
	add	sp, sp, #52
	@ sp needed
	fldmfdd	sp!, {d8-d11}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L981:
	add	r5, sp, #24
	add	r3, sp, #16
	mov	r0, r6
	mov	r1, r5
	movs	r2, #6
	str	lr, [sp, #16]
	bl	nsvg__parseTransformArgs.constprop.36(PLT)
	ldr	r3, [sp, #16]
	cmp	r3, #6
	beq	.L987
.L962:
	add	r6, r6, r0
.L963:
	flds	s9, [r4, #8]
	flds	s8, [r4, #12]
	flds	s15, [r4]
	flds	s13, [r4, #4]
	fmuls	s10, s16, s9
	fmuls	s11, s16, s8
	fmuls	s14, s21, s15
	fmuls	s12, s21, s13
	fmacs	s10, s18, s15
	fmacs	s11, s18, s13
	fmuls	s15, s19, s15
	fmuls	s13, s19, s13
	flds	s6, [r4, #16]
	flds	s7, [r4, #20]
	fmacs	s12, s20, s8
	fmacs	s13, s17, s8
	fmacs	s14, s20, s9
	fmacs	s15, s17, s9
	fadds	s10, s10, s6
	fadds	s11, s11, s7
	fsts	s12, [sp, #28]
	fsts	s13, [sp, #36]
	fsts	s10, [sp, #40]
	fsts	s11, [sp, #44]
	fsts	s14, [sp, #24]
	fsts	s15, [sp, #32]
	ldmia	r5!, {r0, r1, r2, r3}
	str	r0, [r4]	@ unaligned
	str	r1, [r4, #4]	@ unaligned
	ldmia	r5!, {r0, r1}
	str	r2, [r4, #8]	@ unaligned
	str	r3, [r4, #12]	@ unaligned
	str	r0, [r4, #16]	@ unaligned
	str	r1, [r4, #20]	@ unaligned
	b	.L960
.L987:
	flds	s21, [sp, #24]
	flds	s20, [sp, #28]
	flds	s19, [sp, #32]
	flds	s17, [sp, #36]
	flds	s18, [sp, #40]
	flds	s16, [sp, #44]
	b	.L962
.L982:
	add	r5, sp, #24
	mov	r0, r6
	add	r3, sp, #16
	mov	r1, r5
	movs	r2, #2
	str	lr, [sp, #16]
	flds	s19, .L989+20
	bl	nsvg__parseTransformArgs.constprop.36(PLT)
	ldr	r3, [sp, #16]
	add	r6, r6, r0
	fconsts	s17, #112
	fcpys	s21, s17
	cmp	r3, #1
	flds	s18, [sp, #24]
	ite	ne
	fldsne	s16, [sp, #28]
	fldseq	s16, .L989+20
	fcpys	s20, s19
	b	.L963
.L983:
	add	r5, sp, #24
	mov	r0, r6
	add	r3, sp, #16
	mov	r1, r5
	movs	r2, #2
	str	lr, [sp, #16]
	bl	nsvg__parseTransformArgs.constprop.36(PLT)
	ldr	r3, [sp, #16]
	add	r6, r6, r0
	flds	s16, .L989+20
	cmp	r3, #1
	itee	eq
	fldseq	s17, [sp, #24]
	fldsne	s17, [sp, #28]
	fldsne	s21, [sp, #24]
	fcpys	s18, s16
	it	eq
	fcpyseq	s21, s17
	fcpys	s19, s16
	fcpys	s20, s16
	b	.L963
.L984:
	add	r5, sp, #24
	add	r3, sp, #16
	mov	r0, r6
	mov	r1, r5
	movs	r2, #3
	str	lr, [sp, #16]
	bl	nsvg__parseTransformArgs.constprop.36(PLT)
	ldr	fp, [sp, #16]
	mov	r3, r0
	cmp	fp, #1
	beq	.L988
	ittet	gt
	fldsgt	s16, [sp, #28]
	fldsgt	s21, [sp, #32]
	fldsle	s21, .L989+20
	fnegsgt	s16, s16
	ite	gt
	fnegsgt	s21, s21
	fcpysle	s16, s21
.L971:
	flds	s0, [sp, #24]
	add	r0, sp, #12
	add	r1, sp, #8
	str	r3, [sp, #4]
	fmuls	s0, s0, s23
	bl	sincosf(PLT)
	flds	s17, [sp, #8]
	cmp	fp, #1
	flds	s15, [sp, #12]
	ldr	r3, [sp, #4]
	fmuls	s18, s17, s16
	fmuls	s16, s15, s16
	fmuls	s20, s17, s22
	fnegs	s14, s15
	fmacs	s16, s17, s21
	fmacs	s18, s14, s21
	fcpys	s21, s17
	fsubs	s19, s20, s15
	fmacs	s21, s14, s22
	fadds	s20, s20, s15
	fmacs	s17, s15, s22
	ble	.L972
	fcpys	s12, s18
	flds	s13, [sp, #32]
	fmacs	s12, s16, s22
	fcpys	s14, s21
	fcpys	s15, s19
	fmacs	s14, s20, s22
	fmacs	s15, s17, s22
	fadds	s16, s16, s13
	flds	s13, [sp, #28]
	fmacs	s16, s18, s22
	fmacs	s20, s21, s22
	fadds	s18, s12, s13
	fmacs	s17, s19, s22
	fcpys	s21, s14
	fcpys	s19, s15
.L972:
	add	r6, r6, r3
	b	.L963
.L985:
	add	r5, sp, #24
	mov	r0, r6
	mov	r1, r5
	movs	r2, #1
	add	r3, sp, #16
	str	lr, [sp, #16]
	bl	nsvg__parseTransformArgs.constprop.36(PLT)
	flds	s0, [sp, #24]
	add	r6, r6, r0
	flds	s16, .L989+20
	fconsts	s17, #112
	fcpys	s21, s17
	fmuls	s0, s0, s23
	bl	tanf(PLT)
	fcpys	s18, s16
	fcpys	s19, s0
	fcpys	s20, s16
	b	.L963
.L986:
	add	r5, sp, #24
	mov	r0, r6
	mov	r1, r5
	movs	r2, #1
	add	r3, sp, #16
	str	lr, [sp, #16]
	bl	nsvg__parseTransformArgs.constprop.36(PLT)
	flds	s0, [sp, #24]
	add	r6, r6, r0
	flds	s16, .L989+20
	fconsts	s17, #112
	fcpys	s21, s17
	fmuls	s0, s0, s23
	bl	tanf(PLT)
	fcpys	s18, s16
	fcpys	s20, s0
	fcpys	s19, s16
	b	.L963
.L988:
	flds	s21, .L989+20
	fsts	s22, [sp, #32]
	fsts	s22, [sp, #28]
	fcpys	s16, s21
	b	.L971
.L990:
	.align	3
.L989:
	.word	1065353216
	.word	0
	.word	0
	.word	1065353216
	.word	1016003126
	.word	0
	.word	.LC7-(.LPIC58+4)
	.word	.LC8-(.LPIC59+4)
	.word	.LC9-(.LPIC60+4)
	.word	.LC10-(.LPIC61+4)
	.word	.LC11-(.LPIC62+4)
	.word	.LC12-(.LPIC63+4)
	.size	nsvg__parseTransform, .-nsvg__parseTransform
	.section	.text.nsvg__initPaint.part.11,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__initPaint.part.11, %function
nsvg__initPaint.part.11:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r3, r0
	fstmfdd	sp!, {d8}
	sub	sp, sp, #92
	ldr	r4, [r1, #4]
	str	r0, [sp, #68]
	fcpys	s16, s0
	ldrb	r2, [r4, #24]	@ zero_extendqisi2
	strb	r2, [r0, #1]
	ldr	r1, [r4]	@ unaligned
	ldr	r2, [r4, #4]	@ unaligned
	ldr	r5, [r4, #8]	@ unaligned
	ldr	r0, [r4, #12]	@ unaligned
	str	r1, [r3, #4]	@ unaligned
	str	r2, [r3, #8]	@ unaligned
	str	r5, [r3, #12]	@ unaligned
	str	r0, [r3, #16]	@ unaligned
	ldr	r1, [r4, #16]	@ unaligned
	ldr	r2, [r4, #20]	@ unaligned
	str	r1, [r3, #20]	@ unaligned
	str	r2, [r3, #24]	@ unaligned
	ldr	r7, [r4, #36]
	cmp	r7, #0
	bne	.L992
	mov	r0, r3
	mov	r1, r7
	adds	r0, r0, #28
	mov	r2, #1024
	bl	memset(PLT)
.L993:
	fcmpzs	s16
	fmstat
	ldr	r2, [r4, #40]
	it	mi
	movmi	r3, #0
	bmi	.L1025
	fconsts	s15, #112
	fcmpes	s16, s15
	fmstat
	itett	le
	lsrle	r1, r2, #24
	andgt	r3, r2, #-16777216
	fldsle	s15, .L1141+4
	fmulsle	s15, s16, s15
	itttt	le
	ftosizsle	s15, s15
	fmrsle	r3, s15	@ int
	mulle	r3, r1, r3
	ubfxle	r3, r3, #8, #8
	it	le
	lslle	r3, r3, #24
.L1025:
	flds	s15, [r4, #44]
	bic	r2, r2, #-16777216
	orr	r6, r2, r3
	fcmpzs	s15
	fmstat
	bpl	.L1134
	flds	s14, .L1141
	movs	r5, #0
.L1029:
	add	r3, r4, r7, lsl #3
	subs	r7, r7, #1
	str	r7, [sp, #80]
	flds	s15, [r3, #36]
	fcmps	s15, s14
	fmstat
	it	mi
	strmi	r5, [sp, #72]
	bmi	.L1031
	fconsts	s14, #112
	fcmpes	s15, s14
	fmstat
	itete	gt
	movgt	ip, #255
	fldsle	s14, .L1141+8
	strgt	ip, [sp, #72]
	fmulsle	s15, s15, s14
	itt	le
	ftosizsle	s15, s15
	fstsle	s15, [sp, #72]	@ int
.L1031:
	cmp	r5, #0
	ble	.L1045
	ldr	r3, [sp, #68]
	adds	r3, r3, #28
	sbfx	r3, r3, #2, #1
	and	r3, r3, #3
	cmp	r3, r5
	it	cs
	movcs	r3, r5
	cmp	r5, #6
	it	ls
	movls	r3, r5
	bhi	.L1135
.L1036:
	ldr	r7, [sp, #68]
	cmp	r3, #1
	it	ls
	movls	r0, #1
	str	r6, [r7, #28]
	bls	.L1038
	cmp	r3, #2
	str	r6, [r7, #32]
	it	ls
	movls	r0, #2
	bls	.L1038
	cmp	r3, #3
	str	r6, [r7, #36]
	it	ls
	movls	r0, #3
	bls	.L1038
	cmp	r3, #4
	str	r6, [r7, #40]
	it	ls
	movls	r0, #4
	bls	.L1038
	cmp	r3, #5
	str	r6, [r7, #44]
	itee	ls
	movls	r0, #5
	movhi	r0, #6
	strhi	r6, [r7, #48]
.L1038:
	cmp	r3, r5
	beq	.L1045
.L1037:
	rsb	lr, r3, r5
	lsr	r1, lr, #2
	lsls	r7, r1, #2
	cbz	r1, .L1040
	ldr	ip, [sp, #68]
	adds	r3, r3, #7
	vdup.32	q8, r6
	add	r2, ip, r3, lsl #2
	movs	r3, #0
.L1046:
	adds	r3, r3, #1
	vst1.64	{d16-d17}, [r2:64]!
	cmp	r1, r3
	bhi	.L1046
	cmp	lr, r7
	add	r0, r0, r7
	beq	.L1045
.L1040:
	ldr	r7, [sp, #68]
	adds	r3, r0, #1
	cmp	r5, r3
	add	r2, r7, r0, lsl #2
	str	r6, [r2, #28]
	ble	.L1045
	adds	r3, r0, #2
	str	r6, [r2, #32]
	cmp	r5, r3
	ble	.L1045
	ldr	r3, [sp, #68]
	add	r0, r3, r0, lsl #2
	str	r6, [r0, #36]
.L1045:
	ldr	r0, [sp, #80]
	cmp	r0, #0
	itt	le
	movle	r1, #0
	strle	r1, [sp, #64]
	ble	.L1035
	flds	s11, .L1141+4
	adds	r4, r4, #68
	flds	s10, .L1141+8
	mov	ip, #0
	fconsts	s13, #112
	str	r4, [sp, #60]
	fmuls	s15, s16, s11
	str	ip, [sp, #76]
	ftosizs	s15, s15
	fsts	s15, [sp, #84]	@ int
.L1062:
	ldr	r0, [sp, #60]
	fcmpzs	s16
	fmstat
	ldr	r1, [r0, #-28]
	bmi	.L1127
	fcmpes	s16, s13
	fmstat
	ble	.L1128
	ldr	r3, [sp, #76]
	ldr	r2, [r0, #-20]
	ldr	r7, [sp, #60]
	adds	r3, r3, #1
	str	r3, [sp, #76]
	and	r0, r2, #-16777216
	and	r3, r1, #-16777216
.L1051:
	flds	s15, [r7, #-24]
	bic	r2, r2, #-16777216
	orrs	r2, r2, r0
	str	r2, [sp, #64]
	fcmpzs	s15
	fmstat
	it	mi
	movmi	ip, #0
	bmi	.L1052
	fcmpes	s15, s13
	fmstat
	iteee	gt
	movgt	ip, #255
	fmulsle	s15, s15, s10
	ftosizsle	s15, s15
	fmrsle	ip, s15	@ int
.L1052:
	ldr	r0, [sp, #60]
	flds	s15, [r0, #-16]
	pld	[r0]
	fcmpzs	s15
	fmstat
	bmi	.L1130
	fcmpes	s15, s13
	fmstat
	ittt	gt
	movgt	r4, #255
	strgt	r4, [sp, #72]
	movgt	r5, r4
	ble	.L1136
.L1054:
	rsb	r8, ip, r5
	cmp	r8, #0
	ble	.L1060
	ldr	r4, [sp, #64]
	bic	r1, r1, #-16777216
	orrs	r3, r3, r1
	ldr	r0, [sp, #64]
	uxtb	r1, r3
	lsrs	r2, r3, #24
	ldr	r5, [sp, #68]
	lsrs	r4, r4, #24
	lsls	r6, r1, #8
	uxtb	r0, r0
	fmsr	s15, r8	@ int
	ubfx	r7, r3, #8, #8
	str	r4, [sp, #56]
	ubfx	r3, r3, #16, #8
	str	r6, [sp, #12]
	str	r3, [sp, #44]
	add	ip, r5, ip, lsl #2
	ldr	r4, [sp, #44]
	lsls	r3, r7, #8
	ldr	r6, [sp, #56]
	add	ip, ip, #24
	str	r0, [sp, #32]
	fsitos	s14, s15
	str	r1, [sp, #28]
	lsls	r4, r4, #8
	ldr	r0, [sp, #64]
	lsls	r6, r6, #8
	ldr	r1, [sp, #64]
	ldr	r5, [sp, #32]
	str	r2, [sp, #52]
	lsls	r2, r2, #8
	ubfx	r1, r1, #16, #8
	fdivs	s14, s13, s14
	ubfx	r0, r0, #8, #8
	str	r1, [sp, #48]
	lsl	r9, r1, #8
	str	r7, [sp, #36]
	flds	s15, .L1141
	lsl	fp, r5, #8
	str	r0, [sp, #40]
	lsl	r10, r0, #8
	str	r2, [sp, #24]
	movs	r1, #0
	str	r3, [sp, #16]
	str	r4, [sp, #20]
	str	r6, [sp, #8]
	b	.L1061
.L1142:
	.align	2
.L1141:
	.word	0
	.word	1132462080
	.word	1132396544
.L1137:
	fcmpes	s15, s13
	movs	r3, #0
	fmstat
	mov	r6, r9
	ldr	r2, [sp, #8]
	mov	lr, r10
	str	fp, [sp, #4]
	mov	r5, r3
	mov	r7, r3
	mov	r0, r3
	bgt	.L1058
	fmuls	s12, s15, s11
	ldr	r7, [sp, #32]
	ldr	r4, [sp, #52]
	ldr	r6, [sp, #40]
	ftosizs	s12, s12
	ldr	r0, [sp, #28]
	ldr	r5, [sp, #44]
	fmrs	r2, s12	@ int
	mul	r7, r7, r2
	rsb	r3, r2, #256
	mul	lr, r6, r2
	ldr	r6, [sp, #48]
	str	r7, [sp, #4]
	mul	r0, r0, r3
	ldr	r7, [sp, #36]
	mul	r5, r5, r3
	mul	r6, r6, r2
	mul	r7, r7, r3
	mul	r3, r4, r3
	ldr	r4, [sp, #56]
	mul	r2, r4, r2
.L1058:
	add	r7, r7, lr
	fadds	s15, s15, s14
	add	r5, r5, r6
	and	r7, r7, #65280
	ubfx	r5, r5, #8, #8
	add	r3, r3, r2
	orr	r7, r7, r5, lsl #16
	ldr	r5, [sp, #4]
	ubfx	r3, r3, #8, #8
	adds	r1, r1, #1
	add	r0, r0, r5
	cmp	r1, r8
	ubfx	r0, r0, #8, #8
	orr	r7, r7, r0
	orr	r7, r7, r3, lsl #24
	str	r7, [ip, #4]!
	beq	.L1060
.L1061:
	fcmpzs	s15
	fmstat
	bpl	.L1137
	movs	r2, #0
	ldr	r3, [sp, #24]
	mov	r6, r2
	mov	lr, r2
	str	r2, [sp, #4]
	ldr	r5, [sp, #20]
	ldr	r7, [sp, #16]
	ldr	r0, [sp, #12]
	b	.L1058
.L992:
	cmp	r7, #1
	bne	.L993
	flds	s15, .L1141+4
	fcmpzs	s0
	fmstat
	fmuls	s15, s0, s15
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	bmi	.L1138
	fconsts	s15, #112
	fcmpes	s0, s15
	fmstat
	ble	.L1139
	ldr	r3, [sp, #68]
	addw	r1, r4, #2088
	ldr	r5, [sp, #68]
	add	r2, r4, #40
	adds	r3, r3, #28
	addw	r0, r5, #1052
	cmp	r3, r1
	it	cc
	cmpcc	r2, r0
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	bcc	.L1017
	vmov.i32	q10, #255  @ v4si
	mov	r1, r2
	movs	r2, #0
.L1020:
	mov	r5, r1
	mov	r0, r3
	pld	[r3, #80]
	adds	r2, r2, #2
	vld2.32	{d16-d19}, [r5]!
	cmp	r2, #62
	vand	q12, q10, q8
	add	r7, r1, #64
	vshr.u32	q14, q8, #24
	add	r6, r3, #32
	vshr.u32	q13, q8, #8
	vmov.i32	q11, #255  @ v4si
	vshr.u32	q9, q8, #16
	mov	r1, r7
	vshl.i32	q8, q14, #8
	mov	r3, r6
	vand	q13, q13, q10
	vand	q9, q9, q10
	vshr.u32	q8, q8, #8
	vshl.i32	q13, q13, #8
	vshl.i32	q9, q9, #16
	vand	q8, q8, q10
	vorr	q9, q13, q9
	vshl.i32	q8, q8, #24
	vorr	q9, q9, q12
	vorr	q8, q9, q8
	vst1.32	{q8}, [r0]!
	vld2.32	{d16-d19}, [r5]
	vand	q12, q10, q8
	vshr.u32	q14, q8, #24
	vshr.u32	q13, q8, #8
	vshr.u32	q9, q8, #16
	vshl.i32	q8, q14, #8
	vand	q13, q13, q10
	vand	q9, q9, q10
	vshr.u32	q8, q8, #8
	vshl.i32	q13, q13, #8
	vshl.i32	q9, q9, #16
	vand	q8, q8, q10
	vorr	q9, q13, q9
	vshl.i32	q8, q8, #24
	vorr	q9, q9, q12
	vorr	q8, q9, q8
	vst1.32	{q8}, [r0]
	bne	.L1020
	vld2.32	{d16-d19}, [r7]
	vand	q10, q11, q8
	vshr.u32	q13, q8, #24
	vshr.u32	q12, q8, #8
	vshr.u32	q9, q8, #16
	vshl.i32	q8, q13, #8
	vand	q12, q12, q11
	vand	q9, q9, q11
	vshr.u32	q8, q8, #8
	vshl.i32	q12, q12, #8
	vshl.i32	q9, q9, #16
	vand	q8, q8, q11
	vorr	q9, q12, q9
	vshl.i32	q8, q8, #24
	vorr	q9, q9, q10
	vorr	q8, q9, q8
	vst1.32	{q8}, [r6]
	ldr	r6, [sp, #68]
	ldr	r0, [r4, #2056]
	ldr	r1, [r4, #2064]
	ldr	r2, [r4, #2072]
	ldr	r3, [r4, #2080]
	str	r0, [r6, #1036]
	str	r1, [r6, #1040]
	str	r2, [r6, #1044]
	str	r3, [r6, #1048]
	add	sp, sp, #92
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1134:
	fconsts	s14, #112
	fcmpes	s15, s14
	fmstat
	it	gt
	movgt	r5, #255
	bgt	.L1029
	flds	s13, .L1141+8
	fcpys	s14, s15
	fmuls	s15, s15, s13
	ftosizs	s15, s15
	fmrs	r5, s15	@ int
	b	.L1029
.L1060:
	ldr	r7, [sp, #80]
	ldr	ip, [sp, #76]
	ldr	r6, [sp, #60]
	cmp	r7, ip
	add	r6, r6, #8
	str	r6, [sp, #60]
	bne	.L1062
.L1035:
	ldr	r6, [sp, #72]
	cmp	r6, #255
	bgt	.L991
	ldr	r7, [sp, #68]
	mov	r0, r6
	adds	r0, r0, #7
	rsb	r2, r6, #256
	add	r3, r7, r0, lsl #2
	sbfx	r3, r3, #2, #1
	and	r3, r3, #3
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	cmp	r2, #6
	it	ls
	movls	r3, r2
	bhi	.L1140
.L1063:
	ldr	r1, [sp, #72]
	cmp	r3, #1
	ldr	ip, [sp, #68]
	ldr	r4, [sp, #72]
	add	r1, r1, #6
	ldr	r6, [sp, #64]
	add	r5, ip, r1, lsl #2
	add	r4, r4, #1
	str	r6, [r5, #4]
	bls	.L1097
	ldr	r4, [sp, #72]
	add	r5, ip, r0, lsl #2
	cmp	r3, #2
	str	r6, [r5, #4]
	add	r4, r4, #2
	bls	.L1097
	ldr	r7, [sp, #72]
	cmp	r3, #3
	mov	r4, r7
	add	r5, ip, r7, lsl #2
	add	r4, r4, #3
	str	r6, [r5, #36]
	bls	.L1097
	cmp	r3, #4
	add	r4, r4, #1
	str	r6, [r5, #40]
	bls	.L1097
	cmp	r3, #5
	add	r4, r4, #1
	str	r6, [r5, #44]
	bls	.L1097
	str	r1, [sp, #72]
	str	r6, [r5, #48]
.L1065:
	cmp	r3, r2
	beq	.L991
.L1064:
	subs	r5, r2, r3
	lsrs	r1, r5, #2
	lsls	r4, r1, #2
	cbz	r1, .L1067
	add	r3, r3, r0
	ldr	r6, [sp, #68]
	ldr	r0, [sp, #64]
	add	r2, r6, r3, lsl #2
	movs	r3, #0
	vdup.32	q8, r0
.L1072:
	adds	r3, r3, #1
	vst1.64	{d16-d17}, [r2:64]!
	cmp	r1, r3
	bhi	.L1072
	ldr	r1, [sp, #72]
	cmp	r5, r4
	add	r1, r1, r4
	str	r1, [sp, #72]
	beq	.L991
.L1067:
	ldr	r3, [sp, #68]
	ldr	r4, [sp, #72]
	ldr	r5, [sp, #64]
	add	r2, r3, r4, lsl #2
	mov	r3, r4
	adds	r3, r3, #1
	cmp	r3, #255
	str	r5, [r2, #28]
	bgt	.L991
	cmp	r4, #254
	ldr	r6, [sp, #68]
	str	r5, [r2, #32]
	beq	.L991
	ldr	ip, [sp, #72]
	ldr	r0, [sp, #64]
	add	r3, r6, ip, lsl #2
	str	r0, [r3, #36]
.L991:
	add	sp, sp, #92
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1130:
	movs	r2, #0
	str	r2, [sp, #72]
	mov	r5, r2
	b	.L1054
.L1127:
	ldr	r7, [sp, #76]
	mov	ip, r0
	movs	r3, #0
	ldr	r2, [ip, #-20]
	mov	r0, r3
	adds	r7, r7, #1
	str	r7, [sp, #76]
	mov	r7, ip
	b	.L1051
.L1128:
	ldr	r4, [sp, #60]
	lsrs	r3, r1, #24
	ldr	r6, [sp, #84]
	ldr	r5, [sp, #76]
	ldr	r2, [r4, #-20]
	mov	r7, r4
	mul	r3, r6, r3
	adds	r5, r5, #1
	str	r5, [sp, #76]
	lsrs	r0, r2, #24
	mul	r0, r0, r6
	ubfx	r3, r3, #8, #8
	lsls	r3, r3, #24
	ubfx	r0, r0, #8, #8
	lsls	r0, r0, #24
	b	.L1051
.L1136:
	fmuls	s15, s15, s10
	ftosizs	s15, s15
	fsts	s15, [sp, #72]	@ int
	fmrs	r5, s15	@ int
	b	.L1054
.L1135:
	cmp	r3, #0
	bne	.L1036
	mov	r0, r3
	b	.L1037
.L1097:
	str	r4, [sp, #72]
	b	.L1065
.L1140:
	cmp	r3, #0
	beq	.L1064
	b	.L1063
.L1139:
	ldr	r2, [sp, #68]
	addw	r0, r4, #2088
	ldr	r6, [sp, #68]
	add	r1, r4, #40
	adds	r2, r2, #28
	addw	r5, r6, #1052
	cmp	r2, r0
	it	cc
	cmpcc	r1, r5
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	bcc	.L1007
	vmov.i32	q10, #255  @ v4si
	mov	r0, r1
	vdup.32	q11, r3
	add	r7, r6, #1020
	movs	r1, #0
.L1010:
	mov	r6, r0
	mov	r5, r2
	pld	[r2, #80]
	add	ip, r2, #32
	vld2.32	{d16-d19}, [r6]!
	cmp	ip, r7
	vand	q12, q10, q8
	add	lr, r0, #64
	vshr.u32	q14, q8, #24
	add	r1, r1, #2
	vshr.u32	q13, q8, #16
	mov	r0, lr
	vshr.u32	q9, q8, #8
	mov	r2, ip
	vmul.i32	q8, q11, q14
	vand	q13, q13, q10
	vand	q9, q9, q10
	vshl.i32	q13, q13, #16
	vshl.i32	q9, q9, #8
	vshr.u32	q8, q8, #8
	vorr	q9, q13, q9
	vand	q8, q8, q10
	vorr	q9, q9, q12
	vshl.i32	q8, q8, #24
	vorr	q8, q9, q8
	vst1.32	{q8}, [r5]!
	vld2.32	{d16-d19}, [r6]
	vand	q12, q10, q8
	vshr.u32	q14, q8, #24
	vshr.u32	q13, q8, #8
	vshr.u32	q9, q8, #16
	vmul.i32	q8, q11, q14
	vand	q13, q13, q10
	vand	q9, q9, q10
	vshl.i32	q13, q13, #8
	vshl.i32	q9, q9, #16
	vshr.u32	q8, q8, #8
	vorr	q9, q13, q9
	vand	q8, q8, q10
	vorr	q9, q9, q12
	vshl.i32	q8, q8, #24
	vorr	q8, q9, q8
	vst1.32	{q8}, [r5]
	bne	.L1010
	vmov.i32	q10, #255  @ v4si
	mov	r5, lr
	mov	r0, r7
	mov	r2, r1
.L1012:
	vld2.32	{d16-d19}, [r5]!
	adds	r2, r2, #1
	vand	q12, q10, q8
	cmp	r2, #63
	vshr.u32	q14, q8, #24
	vshr.u32	q13, q8, #8
	vshr.u32	q9, q8, #16
	vmul.i32	q8, q11, q14
	vand	q13, q13, q10
	vand	q9, q9, q10
	vshl.i32	q13, q13, #8
	vshl.i32	q9, q9, #16
	vshr.u32	q8, q8, #8
	vorr	q9, q13, q9
	vand	q8, q8, q10
	vorr	q9, q9, q12
	vshl.i32	q8, q8, #24
	vorr	q8, q9, q8
	vst1.32	{q8}, [r0]!
	bcc	.L1012
	ldr	r5, [r4, #2056]
	ldr	r0, [r4, #2064]
	ldr	r2, [r4, #2080]
	ldr	r1, [r4, #2072]
	bic	lr, r5, #-16777216
	bic	r6, r0, #-16777216
	lsrs	r5, r5, #24
	lsrs	r0, r0, #24
	bic	r4, r1, #-16777216
	lsrs	r7, r2, #24
	lsrs	r1, r1, #24
	mul	r5, r5, r3
	bic	r2, r2, #-16777216
	mul	r0, r0, r3
	mul	r1, r1, r3
	ubfx	r5, r5, #8, #8
	orr	r5, lr, r5, lsl #24
	mul	r3, r7, r3
	ldr	r7, [sp, #68]
	ubfx	r0, r0, #8, #8
	ubfx	r1, r1, #8, #8
	orr	r0, r6, r0, lsl #24
	orr	r1, r4, r1, lsl #24
	str	r5, [r7, #1036]
	ubfx	r3, r3, #8, #8
	str	r0, [r7, #1040]
	orr	r3, r2, r3, lsl #24
	str	r1, [r7, #1044]
	str	r3, [r7, #1048]
	add	sp, sp, #92
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1138:
	ldr	r0, [sp, #68]
	addw	r3, r4, #2088
	ldr	r7, [sp, #68]
	add	r5, r4, #40
	adds	r0, r0, #28
	addw	r2, r7, #1052
	cmp	r0, r3
	it	cc
	cmpcc	r5, r2
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	bcc	.L995
	vmov.i32	q10, #255  @ v4si
	add	r2, r7, #1020
	movs	r3, #0
.L999:
	mov	r7, r5
	mov	r6, r0
	pld	[r0, #96]
	add	lr, r0, #32
	vld2.32	{d16-d19}, [r7]!
	cmp	lr, r2
	vand	q11, q10, q8
	add	r1, r5, #64
	vshr.u32	q12, q8, #16
	add	r3, r3, #2
	vshr.u32	q8, q8, #8
	mov	r5, r1
	vand	q9, q12, q10
	mov	r0, lr
	vand	q8, q8, q10
	vshl.i32	q9, q9, #16
	vshl.i32	q8, q8, #8
	vorr	q8, q9, q8
	vorr	q8, q8, q11
	vst1.32	{q8}, [r6]!
	vld2.32	{d16-d19}, [r7]
	vand	q11, q10, q8
	vshr.u32	q12, q8, #8
	vshr.u32	q8, q8, #16
	vand	q9, q12, q10
	vand	q8, q8, q10
	vshl.i32	q9, q9, #8
	vshl.i32	q8, q8, #16
	vorr	q8, q9, q8
	vorr	q8, q8, q11
	vst1.32	{q8}, [r6]
	bne	.L999
	vmov.i32	q10, #255  @ v4si
.L1001:
	vld2.32	{d16-d19}, [r1]!
	adds	r3, r3, #1
	vand	q11, q10, q8
	cmp	r3, #63
	vshr.u32	q12, q8, #8
	vshr.u32	q8, q8, #16
	vand	q9, q12, q10
	vand	q8, q8, q10
	vshl.i32	q9, q9, #8
	vshl.i32	q8, q8, #16
	vorr	q8, q9, q8
	vorr	q8, q8, q11
	vst1.32	{q8}, [r2]!
	bcc	.L1001
	ldr	r0, [r4, #2056]
	ldr	r1, [r4, #2064]
	ldr	r2, [r4, #2072]
	ldr	r3, [r4, #2080]
	bic	r0, r0, #-16777216
	ldr	ip, [sp, #68]
	bic	r1, r1, #-16777216
	bic	r2, r2, #-16777216
	bic	r3, r3, #-16777216
	str	r0, [ip, #1036]
	str	r1, [ip, #1040]
	str	r2, [ip, #1044]
	str	r3, [ip, #1048]
	add	sp, sp, #92
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1017:
	mov	r2, r5
	mov	r3, r4
.L1023:
	ldr	r5, [r3, #40]
	adds	r1, r1, #8
	pld	[r3, #120]
	cmp	r1, #248
	pld	[r3, #152]
	rsb	r0, r1, #256
	str	r5, [r2, #28]
	add	r3, r3, #64
	ldr	r5, [r3, #-16]
	pld	[r2, #68]
	add	r2, r2, #32
	str	r5, [r2]
	ldr	r5, [r3, #-8]
	str	r5, [r2, #4]
	ldr	r5, [r3]
	str	r5, [r2, #8]
	ldr	r5, [r3, #8]
	str	r5, [r2, #12]
	ldr	r5, [r3, #16]
	str	r5, [r2, #16]
	ldr	r5, [r3, #24]
	str	r5, [r2, #20]
	ldr	r5, [r3, #32]
	str	r5, [r2, #24]
	bne	.L1023
	ldr	r7, [sp, #68]
	lsls	r0, r0, #3
	add	r4, r4, #1984
	movs	r3, #0
	add	r2, r7, #1016
.L1024:
	adds	r1, r4, r3
	adds	r3, r3, #8
	ldr	r1, [r1, #40]
	cmp	r3, r0
	str	r1, [r2, #4]!
	bne	.L1024
	b	.L991
.L995:
	mov	r1, r3
	mov	r2, r7
	mov	r3, r4
.L1003:
	ldr	r5, [r3, #40]
	adds	r1, r1, #8
	pld	[r3, #152]
	cmp	r1, #248
	pld	[r3, #184]
	rsb	r0, r1, #256
	bic	r5, r5, #-16777216
	add	r3, r3, #64
	str	r5, [r2, #28]
	add	r2, r2, #32
	ldr	r5, [r3, #-16]
	bic	r5, r5, #-16777216
	str	r5, [r2]
	ldr	r5, [r3, #-8]
	bic	r5, r5, #-16777216
	str	r5, [r2, #4]
	ldr	r5, [r3]
	bic	r5, r5, #-16777216
	str	r5, [r2, #8]
	ldr	r5, [r3, #8]
	bic	r5, r5, #-16777216
	str	r5, [r2, #12]
	ldr	r5, [r3, #16]
	bic	r5, r5, #-16777216
	str	r5, [r2, #16]
	ldr	r5, [r3, #24]
	bic	r5, r5, #-16777216
	str	r5, [r2, #20]
	ldr	r5, [r3, #32]
	bic	r5, r5, #-16777216
	str	r5, [r2, #24]
	bne	.L1003
	ldr	r3, [sp, #68]
	lsls	r0, r0, #3
	add	r4, r4, #1984
	add	r2, r3, #1016
	movs	r3, #0
.L1005:
	adds	r1, r4, r3
	adds	r3, r3, #8
	ldr	r1, [r1, #40]
	cmp	r3, r0
	bic	r1, r1, #-16777216
	str	r1, [r2, #4]!
	bne	.L1005
	b	.L991
.L1007:
	mov	r1, r6
	mov	r2, r4
.L1014:
	ldr	r5, [r2, #40]
	adds	r0, r0, #8
	pld	[r2, #120]
	cmp	r0, #248
	pld	[r2, #152]
	rsb	r6, r0, #256
	bic	r7, r5, #-16777216
	pld	[r1, #68]
	lsr	r5, r5, #24
	add	r2, r2, #64
	add	r1, r1, #32
	mul	r5, r3, r5
	ubfx	r5, r5, #8, #8
	orr	r5, r7, r5, lsl #24
	str	r5, [r1, #-4]
	ldr	r5, [r2, #-16]
	bic	r7, r5, #-16777216
	lsr	r5, r5, #24
	mul	r5, r3, r5
	ubfx	r5, r5, #8, #8
	orr	r5, r7, r5, lsl #24
	str	r5, [r1]
	ldr	r5, [r2, #-8]
	bic	r7, r5, #-16777216
	lsr	r5, r5, #24
	mul	r5, r3, r5
	ubfx	r5, r5, #8, #8
	orr	r5, r7, r5, lsl #24
	str	r5, [r1, #4]
	ldr	r5, [r2]
	bic	r7, r5, #-16777216
	lsr	r5, r5, #24
	mul	r5, r3, r5
	ubfx	r5, r5, #8, #8
	orr	r5, r7, r5, lsl #24
	str	r5, [r1, #8]
	ldr	r5, [r2, #8]
	bic	r7, r5, #-16777216
	lsr	r5, r5, #24
	mul	r5, r3, r5
	ubfx	r5, r5, #8, #8
	orr	r5, r7, r5, lsl #24
	str	r5, [r1, #12]
	ldr	r5, [r2, #16]
	bic	r7, r5, #-16777216
	lsr	r5, r5, #24
	mul	r5, r3, r5
	ubfx	r5, r5, #8, #8
	orr	r5, r7, r5, lsl #24
	str	r5, [r1, #16]
	ldr	r5, [r2, #24]
	bic	r7, r5, #-16777216
	lsr	r5, r5, #24
	mul	r5, r3, r5
	ubfx	r5, r5, #8, #8
	orr	r5, r7, r5, lsl #24
	str	r5, [r1, #20]
	ldr	r5, [r2, #32]
	bic	r7, r5, #-16777216
	lsr	r5, r5, #24
	mul	r5, r3, r5
	ubfx	r5, r5, #8, #8
	orr	r5, r7, r5, lsl #24
	str	r5, [r1, #24]
	bne	.L1014
	ldr	ip, [sp, #68]
	lsls	r6, r6, #3
	add	r4, r4, #1984
	movs	r2, #0
	add	r0, ip, #1016
.L1016:
	adds	r1, r4, r2
	adds	r2, r2, #8
	ldr	r1, [r1, #40]
	cmp	r2, r6
	bic	r5, r1, #-16777216
	lsr	r1, r1, #24
	mul	r1, r3, r1
	ubfx	r1, r1, #8, #8
	orr	r1, r5, r1, lsl #24
	str	r1, [r0, #4]!
	bne	.L1016
	b	.L991
	.size	nsvg__initPaint.part.11, .-nsvg__initPaint.part.11
	.section	.text.nsvg__roundCap.isra.23,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__roundCap.isra.23, %function
nsvg__roundCap.isra.23:
	@ args = 12, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14}
	sub	sp, sp, #124
	ldr	r5, [sp, #220]
	fconsts	s20, #96
	str	r1, [sp]
	cmp	r5, #0
	fcpys	s22, s2
	str	r2, [sp, #4]
	str	r3, [sp, #8]
	fnegs	s23, s2
	fmuls	s20, s4, s20
	ble	.L1171
	subs	r6, r5, #1
	flds	s18, .L1200
	flds	s26, .L1200+4
	mov	r10, #0
	fmsr	s14, r6	@ int
	mov	r4, r10
	fsitos	s15, s14
	add	r8, sp, #116
	fcpys	s24, s0
	add	r7, sp, #112
	fcpys	s25, s1
	mov	r9, #-1
	fcpys	s21, s3
	fcpys	s19, s18
	fdivs	s26, s26, s15
	fcpys	s27, s18
	fsts	s18, [sp, #12]
	fcpys	s28, s18
	fmrs	r10, s18
	b	.L1153
.L1196:
	ldr	r0, [fp, #16]
.L1148:
	fcmpes	s16, s28
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [fp, #20]
	add	r0, r0, r2, lsl #3
	bgt	.L1195
	fsts	s17, [sp, #80]
	fsts	s16, [sp, #84]
	str	r10, [sp, #88]	@ float
	fsts	s28, [sp, #92]
	vldr	d16, [sp, #80]
	vldr	d17, [sp, #88]
	str	r9, [r0, #16]
	vst1.32	{q8}, [r0]
.L1152:
	cmp	r4, r6
	it	eq
	fcpyseq	s18, s16
	it	eq
	fcpyseq	s19, s17
.L1145:
	adds	r4, r4, #1
	cmp	r4, r5
	beq	.L1144
	fcpys	s28, s16
	fmrs	r10, s17
.L1153:
	fmsr	s15, r4	@ int
	mov	r0, r8
	fsitos	s0, s15
	mov	r1, r7
	fcpys	s17, s24
	fcpys	s16, s25
	fmuls	s0, s26, s0
	bl	sincosf(PLT)
	flds	s14, [sp, #112]
	flds	s15, [sp, #116]
	fmuls	s14, s14, s20
	fmuls	s15, s15, s20
	fnmacs	s17, s14, s21
	fnmacs	s16, s14, s23
	fnmacs	s17, s15, s22
	fnmacs	s16, s15, s21
	cmp	r4, #0
	beq	.L1172
	fcmps	s16, s28
	fmstat
	beq	.L1152
	ldr	r3, [fp, #20]
	ldr	r1, [fp, #24]
	cmp	r3, r1
	blt	.L1196
	cmp	r1, #0
	ldr	r0, [fp, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [fp, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [fp, #16]
	cmp	r0, #0
	beq	.L1152
	ldr	r3, [fp, #20]
	b	.L1148
.L1195:
	str	r10, [sp, #96]	@ float
	movs	r1, #1
	fsts	s28, [sp, #100]
	fsts	s17, [sp, #104]
	fsts	s16, [sp, #108]
	vldr	d16, [sp, #96]
	vldr	d17, [sp, #104]
	str	r1, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L1152
.L1171:
	flds	s18, .L1200
	fsts	s18, [sp, #12]
	fcpys	s19, s18
	fcpys	s27, s18
.L1144:
	ldr	r2, [sp, #224]
	cbnz	r2, .L1197
.L1155:
	ldr	r3, [sp, #12]	@ float
	ldr	r2, [sp, #4]
	ldr	r1, [sp]
	str	r3, [r1]	@ float
	fsts	s27, [r2]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #216]
	fsts	s19, [r3]
	fsts	s18, [r2]
	add	sp, sp, #124
	@ sp needed
	fldmfdd	sp!, {d8-d14}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1197:
	ldr	r2, [sp, #4]
	ldr	r3, [sp]
	flds	s16, [r2]
	ldr	r4, [r3]	@ float
	fcmps	s16, s27
	fmstat
	beq	.L1157
	ldr	r3, [fp, #20]
	ldr	r2, [fp, #24]
	cmp	r3, r2
	bge	.L1158
	ldr	r0, [fp, #16]
.L1159:
	fcmpes	s16, s27
	add	r2, r3, r3, lsl #1
	fmstat
	add	r1, r3, #1
	str	r1, [fp, #20]
	add	r3, r0, r2, lsl #3
	bmi	.L1198
	ldr	r2, [sp, #12]	@ float
	fsts	s27, [sp, #52]
	str	r4, [sp, #56]	@ float
	str	r2, [sp, #48]	@ float
	mov	r2, #-1
	fsts	s16, [sp, #60]
	vldr	d16, [sp, #48]
	vldr	d17, [sp, #56]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
.L1157:
	ldr	r3, [sp, #216]
	ldr	r2, [sp, #8]
	flds	s16, [r3]
	ldr	r4, [r2]	@ float
	fcmps	s16, s18
	fmstat
	beq	.L1155
	ldr	r3, [fp, #20]
	ldr	r2, [fp, #24]
	cmp	r3, r2
	bge	.L1165
	ldr	r0, [fp, #16]
.L1166:
	fcmpes	s16, s18
	add	r2, r3, r3, lsl #1
	fmstat
	add	r1, r3, #1
	str	r1, [fp, #20]
	add	r3, r0, r2, lsl #3
	bgt	.L1199
	str	r4, [sp, #16]	@ float
	mov	r2, #-1
	fsts	s16, [sp, #20]
	fsts	s19, [sp, #24]
	fsts	s18, [sp, #28]
	vldr	d16, [sp, #16]
	vldr	d17, [sp, #24]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L1155
.L1165:
	cmp	r2, #0
	ldr	r0, [fp, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [fp, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [fp, #16]
	cmp	r0, #0
	beq	.L1155
	ldr	r3, [fp, #20]
	b	.L1166
.L1158:
	cmp	r2, #0
	ldr	r0, [fp, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [fp, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [fp, #16]
	cmp	r0, #0
	beq	.L1157
	ldr	r3, [fp, #20]
	b	.L1159
.L1199:
	fsts	s19, [sp, #32]
	movs	r2, #1
	fsts	s18, [sp, #36]
	str	r4, [sp, #40]	@ float
	fsts	s16, [sp, #44]
	vldr	d16, [sp, #32]
	vldr	d17, [sp, #40]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L1155
.L1198:
	ldr	r1, [sp, #12]	@ float
	movs	r2, #1
	str	r4, [sp, #64]	@ float
	fsts	s16, [sp, #68]
	str	r1, [sp, #72]	@ float
	fsts	s27, [sp, #76]
	vldr	d16, [sp, #64]
	vldr	d17, [sp, #72]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L1157
.L1172:
	fcpys	s27, s16
	fsts	s17, [sp, #12]
	b	.L1145
.L1201:
	.align	2
.L1200:
	.word	0
	.word	1078530011
	.size	nsvg__roundCap.isra.23, .-nsvg__roundCap.isra.23
	.section	.text.nsvg__createGradient,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__createGradient, %function
nsvg__createGradient:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r7, r0, #38912
	fstmfdd	sp!, {d8, d9}
	mov	r5, r1
	sub	sp, sp, #12
	mov	r8, #304
	ldr	r1, [r7]
	mov	r9, r0
	ldr	r10, [r7, #24]
	mov	fp, r2
	str	r3, [sp, #4]
	mla	r8, r8, r1, r0
	mov	r4, r10
	cmp	r10, #0
	bne	.L1207
	b	.L1206
.L1339:
	ldr	r4, [r4, #208]
	cbz	r4, .L1206
.L1207:
	mov	r0, r4
	mov	r1, r5
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L1339
	mov	r5, r4
.L1210:
	ldr	r6, [r4, #204]
	cbnz	r6, .L1340
	add	r6, r4, #64
	mov	r4, r10
.L1211:
	mov	r0, r4
	mov	r1, r6
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1210
	ldr	r4, [r4, #208]
	cmp	r4, #0
	bne	.L1211
.L1206:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1340:
	ldr	r4, [r4, #200]
	add	r10, r4, #5
	str	r4, [sp]
	lsl	r10, r10, #3
	mov	r0, r10
	bl	malloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L1206
	ldrb	r3, [r5, #173]	@ zero_extendqisi2
	cmp	r3, #1
	itttt	eq
	fldseq	s16, [fp, #12]
	fldseq	s18, [fp, #4]
	fldseq	s17, [fp, #8]
	fldseq	s19, [fp]
	itete	ne
	fldsne	s16, [r7, #40]
	fsubseq	s16, s16, s18
	fldsne	s17, [r7, #36]
	fsubseq	s17, s17, s19
	it	ne
	fldsne	s19, [r7, #28]
	fmuls	s14, s16, s16
	it	ne
	fldsne	s18, [r7, #32]
	fmacs	s14, s17, s17
	fsqrts	s0, s14
	fcmps	s0, s0
	fmstat
	bne	.L1341
.L1216:
	ldrb	r3, [r5, #128]	@ zero_extendqisi2
	mov	r2, #304
	ldr	r1, [r5, #136]
	flds	s15, [r5, #132]
	cmp	r3, #2
	ldr	r3, [r7]
	sub	r1, r1, #2
	mla	r3, r2, r3, r9
	beq	.L1342
	cmp	r1, #8
	bhi	.L1322
	tbh	[pc, r1, lsl #1]
.L1265:
	.2byte	(.L1264-.L1265)/2
	.2byte	(.L1266-.L1265)/2
	.2byte	(.L1267-.L1265)/2
	.2byte	(.L1268-.L1265)/2
	.2byte	(.L1269-.L1265)/2
	.2byte	(.L1270-.L1265)/2
	.2byte	(.L1271-.L1265)/2
	.2byte	(.L1272-.L1265)/2
	.2byte	(.L1273-.L1265)/2
.L1342:
	cmp	r1, #8
	bhi	.L1318
	tbh	[pc, r1, lsl #1]
.L1220:
	.2byte	(.L1219-.L1220)/2
	.2byte	(.L1221-.L1220)/2
	.2byte	(.L1222-.L1220)/2
	.2byte	(.L1223-.L1220)/2
	.2byte	(.L1224-.L1220)/2
	.2byte	(.L1225-.L1220)/2
	.2byte	(.L1226-.L1220)/2
	.2byte	(.L1227-.L1220)/2
	.2byte	(.L1228-.L1220)/2
.L1271:
	flds	s14, .L1343
	fmuls	s15, s15, s14
	fcpys	s14, s19
	fmacs	s14, s15, s17
.L1263:
	ldr	r2, [r5, #144]
	flds	s15, [r5, #140]
	subs	r2, r2, #2
	cmp	r2, #8
	bhi	.L1323
	tbh	[pc, r2, lsl #1]
.L1276:
	.2byte	(.L1275-.L1276)/2
	.2byte	(.L1277-.L1276)/2
	.2byte	(.L1278-.L1276)/2
	.2byte	(.L1279-.L1276)/2
	.2byte	(.L1280-.L1276)/2
	.2byte	(.L1281-.L1276)/2
	.2byte	(.L1282-.L1276)/2
	.2byte	(.L1283-.L1276)/2
	.2byte	(.L1284-.L1276)/2
.L1282:
	flds	s13, .L1343
	fmuls	s15, s15, s13
	fcpys	s13, s18
	fmacs	s13, s15, s16
.L1274:
	ldr	r2, [r5, #160]
	flds	s15, [r5, #156]
	subs	r2, r2, #2
	cmp	r2, #8
	bhi	.L1324
	tbh	[pc, r2, lsl #1]
.L1287:
	.2byte	(.L1286-.L1287)/2
	.2byte	(.L1288-.L1287)/2
	.2byte	(.L1289-.L1287)/2
	.2byte	(.L1290-.L1287)/2
	.2byte	(.L1291-.L1287)/2
	.2byte	(.L1292-.L1287)/2
	.2byte	(.L1293-.L1287)/2
	.2byte	(.L1294-.L1287)/2
	.2byte	(.L1295-.L1287)/2
.L1293:
	flds	s12, .L1343
	fcpys	s11, s19
	fmuls	s15, s15, s12
	fmacs	s11, s15, s17
.L1285:
	ldr	r2, [r5, #168]
	flds	s15, [r5, #164]
	subs	r2, r2, #2
	cmp	r2, #8
	bhi	.L1325
	tbh	[pc, r2, lsl #1]
.L1298:
	.2byte	(.L1297-.L1298)/2
	.2byte	(.L1299-.L1298)/2
	.2byte	(.L1300-.L1298)/2
	.2byte	(.L1301-.L1298)/2
	.2byte	(.L1302-.L1298)/2
	.2byte	(.L1303-.L1298)/2
	.2byte	(.L1304-.L1298)/2
	.2byte	(.L1305-.L1298)/2
	.2byte	(.L1306-.L1298)/2
.L1304:
	flds	s12, .L1343
	fmuls	s15, s15, s12
	fcpys	s12, s18
	fmacs	s12, s15, s16
.L1296:
	ldr	r2, [r5, #152]
	flds	s15, [r5, #148]
	subs	r2, r2, #2
	cmp	r2, #8
	bhi	.L1307
	tbh	[pc, r2, lsl #1]
.L1309:
	.2byte	(.L1308-.L1309)/2
	.2byte	(.L1310-.L1309)/2
	.2byte	(.L1311-.L1309)/2
	.2byte	(.L1312-.L1309)/2
	.2byte	(.L1313-.L1309)/2
	.2byte	(.L1314-.L1309)/2
	.2byte	(.L1315-.L1309)/2
	.2byte	(.L1316-.L1309)/2
	.2byte	(.L1317-.L1309)/2
.L1317:
	flds	s9, [r3, #284]
	flds	s10, .L1343+32
	fmuls	s10, s9, s10
	fmuls	s15, s10, s15
.L1307:
	fdivs	s10, s12, s15
	movs	r3, #0
	fdivs	s11, s11, s15
	fmsr	s12, r3
	fmsr	s4, r3
	fsts	s15, [r4]
	fsts	s15, [r4, #12]
	fsts	s14, [r4, #16]
	fsts	s13, [r4, #20]
	str	r3, [r4, #4]	@ float
	str	r3, [r4, #8]	@ float
	fsts	s10, [r4, #32]
	fsts	s11, [r4, #28]
.L1262:
	flds	s11, [r5, #180]
	mov	r1, r6
	flds	s10, [r5, #188]
	sub	r2, r10, #40
	flds	s7, [r5, #184]
	add	r0, r4, #40
	flds	s6, [r5, #176]
	fmuls	s11, s15, s11
	flds	s5, [r5, #192]
	fmuls	s8, s13, s7
	fmuls	s9, s15, s6
	fmacs	s11, s4, s10
	fmuls	s10, s12, s6
	fmacs	s8, s14, s6
	fmacs	s9, s4, s7
	fmacs	s10, s7, s15
	fsts	s11, [r4, #4]
	flds	s6, [r5, #180]
	flds	s7, [r5, #188]
	fadds	s5, s8, s5
	fmuls	s12, s12, s6
	fmacs	s12, s15, s7
	fsts	s12, [r4, #12]
	flds	s7, [r5, #188]
	flds	s8, [r5, #180]
	flds	s15, [r5, #196]
	fsts	s9, [r4]
	fmuls	s13, s13, s7
	fsts	s10, [r4, #8]
	fsts	s5, [r4, #16]
	fmacs	s13, s14, s8
	fadds	s14, s13, s15
	fsts	s14, [r4, #20]
	flds	s4, [r8, #68]
	flds	s3, [r8, #76]
	flds	s7, [r8, #72]
	flds	s6, [r8, #64]
	fmuls	s13, s10, s4
	fmuls	s8, s9, s4
	fmuls	s15, s14, s3
	fmuls	s14, s14, s7
	fmacs	s13, s12, s3
	fmacs	s8, s11, s3
	fmuls	s9, s9, s6
	fmacs	s15, s5, s4
	fmacs	s14, s5, s6
	fmuls	s10, s10, s6
	fmacs	s9, s11, s7
	flds	s11, [r8, #80]
	fmacs	s10, s12, s7
	fsts	s8, [r4, #4]
	fsts	s13, [r4, #12]
	flds	s13, [r8, #84]
	fadds	s14, s14, s11
	fsts	s9, [r4]
	fsts	s10, [r4, #8]
	fadds	s15, s15, s13
	fsts	s14, [r4, #16]
	fsts	s15, [r4, #20]
	ldrb	r3, [r5, #172]	@ zero_extendqisi2
	strb	r3, [r4, #24]
	bl	memcpy(PLT)
	ldr	r3, [sp]
	mov	r0, r4
	ldr	r1, [sp, #4]
	str	r3, [r4, #36]
	ldrb	r3, [r5, #128]	@ zero_extendqisi2
	strb	r3, [r1]
	add	sp, sp, #12
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1303:
	flds	s12, [r7, #56]
	fmuls	s12, s15, s12
	b	.L1296
.L1302:
	flds	s10, [r7, #56]
	flds	s12, .L1343+12
	fmuls	s12, s10, s12
	fmuls	s12, s12, s15
	b	.L1296
.L1301:
	flds	s10, [r7, #56]
	flds	s12, .L1343+16
	fmuls	s12, s10, s12
	fmuls	s12, s12, s15
	b	.L1296
.L1300:
	flds	s10, [r7, #56]
	flds	s12, .L1343+20
	fmuls	s12, s10, s12
	fmuls	s12, s12, s15
	b	.L1296
.L1299:
	flds	s10, [r7, #56]
	flds	s12, .L1343+24
	fmuls	s12, s10, s12
	fmuls	s12, s12, s15
	b	.L1296
.L1297:
	flds	s10, .L1343+28
	flds	s12, [r7, #56]
	fmuls	s15, s15, s10
	fdivs	s12, s15, s12
	b	.L1296
.L1306:
	flds	s10, [r3, #284]
	flds	s12, .L1343+32
	fmuls	s12, s10, s12
	fmuls	s12, s12, s15
	b	.L1296
.L1325:
	fcpys	s12, s15
	b	.L1296
.L1292:
	flds	s11, [r7, #56]
	fmuls	s11, s15, s11
	b	.L1285
.L1291:
	flds	s11, [r7, #56]
	flds	s12, .L1343+12
	fmuls	s11, s11, s12
	fmuls	s11, s11, s15
	b	.L1285
.L1290:
	flds	s11, [r7, #56]
	flds	s12, .L1343+16
	fmuls	s11, s11, s12
	fmuls	s11, s11, s15
	b	.L1285
.L1289:
	flds	s11, [r7, #56]
	flds	s12, .L1343+20
	fmuls	s11, s11, s12
	fmuls	s11, s11, s15
	b	.L1285
.L1288:
	flds	s11, [r7, #56]
	flds	s12, .L1343+24
	fmuls	s11, s11, s12
	fmuls	s11, s11, s15
	b	.L1285
.L1286:
	flds	s11, .L1343+28
	flds	s12, [r7, #56]
	fmuls	s15, s15, s11
	fdivs	s11, s15, s12
	b	.L1285
.L1315:
	flds	s10, .L1343+4
	fmuls	s15, s15, s10
	fmuls	s15, s15, s0
	b	.L1307
.L1314:
	flds	s10, [r7, #56]
	fmuls	s15, s15, s10
	b	.L1307
.L1313:
	flds	s9, [r7, #56]
	flds	s10, .L1343+12
	fmuls	s10, s9, s10
	fmuls	s15, s10, s15
	b	.L1307
.L1312:
	flds	s9, [r7, #56]
	flds	s10, .L1343+16
	fmuls	s10, s9, s10
	fmuls	s15, s10, s15
	b	.L1307
.L1344:
	.align	2
.L1343:
	.word	1008981770
	.word	1005040746
	.word	1008981770
	.word	1053397798
	.word	1025589893
	.word	1042983595
	.word	1013157433
	.word	1126170624
	.word	1057300152
.L1311:
	flds	s9, [r7, #56]
	flds	s10, .L1343+20
	fmuls	s10, s9, s10
	fmuls	s15, s10, s15
	b	.L1307
.L1310:
	flds	s9, [r7, #56]
	flds	s10, .L1343+24
	fmuls	s10, s9, s10
	fmuls	s15, s10, s15
	b	.L1307
.L1308:
	flds	s9, .L1343+28
	flds	s10, [r7, #56]
	fmuls	s15, s15, s9
	fdivs	s15, s15, s10
	b	.L1307
.L1295:
	flds	s11, [r3, #284]
	flds	s12, .L1343+32
	fmuls	s11, s11, s12
	fmuls	s11, s11, s15
	b	.L1285
.L1324:
	fcpys	s11, s15
	b	.L1285
.L1281:
	flds	s13, [r7, #56]
	fmuls	s13, s15, s13
	b	.L1274
.L1280:
	flds	s12, [r7, #56]
	flds	s13, .L1343+12
	fmuls	s13, s12, s13
	fmuls	s13, s13, s15
	b	.L1274
.L1279:
	flds	s12, [r7, #56]
	flds	s13, .L1343+16
	fmuls	s13, s12, s13
	fmuls	s13, s13, s15
	b	.L1274
.L1278:
	flds	s12, [r7, #56]
	flds	s13, .L1343+20
	fmuls	s13, s12, s13
	fmuls	s13, s13, s15
	b	.L1274
.L1277:
	flds	s12, [r7, #56]
	flds	s13, .L1343+24
	fmuls	s13, s12, s13
	fmuls	s13, s13, s15
	b	.L1274
.L1275:
	flds	s12, .L1343+28
	flds	s13, [r7, #56]
	fmuls	s15, s15, s12
	fdivs	s13, s15, s13
	b	.L1274
.L1284:
	flds	s12, [r3, #284]
	flds	s13, .L1343+32
	fmuls	s13, s12, s13
	fmuls	s13, s13, s15
	b	.L1274
.L1323:
	fcpys	s13, s15
	b	.L1274
.L1270:
	flds	s14, [r7, #56]
	fmuls	s14, s15, s14
	b	.L1263
.L1269:
	flds	s13, [r7, #56]
	flds	s14, .L1343+12
	fmuls	s14, s13, s14
	fmuls	s14, s14, s15
	b	.L1263
.L1268:
	flds	s13, [r7, #56]
	flds	s14, .L1343+16
	fmuls	s14, s13, s14
	fmuls	s14, s14, s15
	b	.L1263
.L1267:
	flds	s13, [r7, #56]
	flds	s14, .L1343+20
	fmuls	s14, s13, s14
	fmuls	s14, s14, s15
	b	.L1263
.L1266:
	flds	s13, [r7, #56]
	flds	s14, .L1343+24
	fmuls	s14, s13, s14
	fmuls	s14, s14, s15
	b	.L1263
.L1264:
	flds	s13, .L1343+28
	flds	s14, [r7, #56]
	fmuls	s15, s15, s13
	fdivs	s14, s15, s14
	b	.L1263
.L1273:
	flds	s13, [r3, #284]
	flds	s14, .L1343+32
	fmuls	s14, s13, s14
	fmuls	s14, s14, s15
	b	.L1263
.L1322:
	fcpys	s14, s15
	b	.L1263
.L1272:
	flds	s14, [r3, #284]
	fmuls	s14, s15, s14
	b	.L1263
.L1294:
	flds	s11, [r3, #284]
	fmuls	s11, s15, s11
	b	.L1285
.L1283:
	flds	s13, [r3, #284]
	fmuls	s13, s15, s13
	b	.L1274
.L1316:
	flds	s10, [r3, #284]
	fmuls	s15, s15, s10
	b	.L1307
.L1305:
	flds	s12, [r3, #284]
	fmuls	s12, s15, s12
	b	.L1296
.L1226:
	flds	s14, .L1343+8
	fmuls	s15, s15, s14
	fcpys	s14, s19
	fmacs	s14, s15, s17
.L1218:
	ldr	r2, [r5, #144]
	flds	s15, [r5, #140]
	subs	r2, r2, #2
	cmp	r2, #8
	bhi	.L1319
	tbh	[pc, r2, lsl #1]
.L1231:
	.2byte	(.L1230-.L1231)/2
	.2byte	(.L1232-.L1231)/2
	.2byte	(.L1233-.L1231)/2
	.2byte	(.L1234-.L1231)/2
	.2byte	(.L1235-.L1231)/2
	.2byte	(.L1236-.L1231)/2
	.2byte	(.L1237-.L1231)/2
	.2byte	(.L1238-.L1231)/2
	.2byte	(.L1239-.L1231)/2
.L1237:
	flds	s13, .L1343+8
	fmuls	s15, s15, s13
	fcpys	s13, s18
	fmacs	s13, s15, s16
.L1229:
	ldr	r2, [r5, #152]
	flds	s15, [r5, #148]
	subs	r2, r2, #2
	cmp	r2, #8
	bhi	.L1320
	tbh	[pc, r2, lsl #1]
.L1242:
	.2byte	(.L1241-.L1242)/2
	.2byte	(.L1243-.L1242)/2
	.2byte	(.L1244-.L1242)/2
	.2byte	(.L1245-.L1242)/2
	.2byte	(.L1246-.L1242)/2
	.2byte	(.L1247-.L1242)/2
	.2byte	(.L1248-.L1242)/2
	.2byte	(.L1249-.L1242)/2
	.2byte	(.L1250-.L1242)/2
.L1248:
	flds	s12, .L1343+8
	fmuls	s15, s15, s12
	fmacs	s19, s15, s17
.L1240:
	ldr	r2, [r5, #160]
	flds	s15, [r5, #156]
	subs	r2, r2, #2
	cmp	r2, #8
	bhi	.L1321
	tbh	[pc, r2, lsl #1]
.L1253:
	.2byte	(.L1252-.L1253)/2
	.2byte	(.L1254-.L1253)/2
	.2byte	(.L1255-.L1253)/2
	.2byte	(.L1256-.L1253)/2
	.2byte	(.L1257-.L1253)/2
	.2byte	(.L1258-.L1253)/2
	.2byte	(.L1259-.L1253)/2
	.2byte	(.L1260-.L1253)/2
	.2byte	(.L1261-.L1253)/2
.L1259:
	flds	s12, .L1343+8
	fmuls	s15, s15, s12
	fmacs	s18, s15, s16
.L1251:
	fsubs	s12, s19, s14
	fsubs	s15, s18, s13
	fsts	s14, [r4, #16]
	fnegs	s4, s12
	fsts	s13, [r4, #20]
	fsts	s12, [r4, #8]
	fsts	s15, [r4]
	fsts	s15, [r4, #12]
	fsts	s4, [r4, #4]
	b	.L1262
.L1258:
	flds	s18, [r7, #56]
	fmuls	s18, s15, s18
	b	.L1251
.L1257:
	flds	s18, [r7, #56]
	flds	s12, .L1343+12
	fmuls	s18, s18, s12
	fmuls	s18, s18, s15
	b	.L1251
.L1256:
	flds	s18, [r7, #56]
	flds	s12, .L1343+16
	fmuls	s18, s18, s12
	fmuls	s18, s18, s15
	b	.L1251
.L1255:
	flds	s18, [r7, #56]
	flds	s12, .L1343+20
	fmuls	s18, s18, s12
	fmuls	s18, s18, s15
	b	.L1251
.L1254:
	flds	s18, [r7, #56]
	flds	s12, .L1343+24
	fmuls	s18, s18, s12
	fmuls	s18, s18, s15
	b	.L1251
.L1252:
	flds	s11, .L1343+28
	flds	s12, [r7, #56]
	fmuls	s15, s15, s11
	fdivs	s18, s15, s12
	b	.L1251
.L1261:
	flds	s18, [r3, #284]
	flds	s12, .L1343+32
	fmuls	s18, s18, s12
	fmuls	s18, s18, s15
	b	.L1251
.L1321:
	fcpys	s18, s15
	b	.L1251
.L1247:
	flds	s19, [r7, #56]
	fmuls	s19, s15, s19
	b	.L1240
.L1246:
	flds	s19, [r7, #56]
	flds	s12, .L1343+12
	fmuls	s19, s19, s12
	fmuls	s19, s19, s15
	b	.L1240
.L1245:
	flds	s19, [r7, #56]
	flds	s12, .L1343+16
	fmuls	s19, s19, s12
	fmuls	s19, s19, s15
	b	.L1240
.L1244:
	flds	s19, [r7, #56]
	flds	s12, .L1343+20
	fmuls	s19, s19, s12
	fmuls	s19, s19, s15
	b	.L1240
.L1243:
	flds	s19, [r7, #56]
	flds	s12, .L1343+24
	fmuls	s19, s19, s12
	fmuls	s19, s19, s15
	b	.L1240
.L1241:
	flds	s11, .L1343+28
	flds	s12, [r7, #56]
	fmuls	s15, s15, s11
	fdivs	s19, s15, s12
	b	.L1240
.L1250:
	flds	s19, [r3, #284]
	flds	s12, .L1343+32
	fmuls	s19, s19, s12
	fmuls	s19, s19, s15
	b	.L1240
.L1320:
	fcpys	s19, s15
	b	.L1240
.L1236:
	flds	s13, [r7, #56]
	fmuls	s13, s15, s13
	b	.L1229
.L1235:
	flds	s12, [r7, #56]
	flds	s13, .L1345
	fmuls	s13, s12, s13
	fmuls	s13, s13, s15
	b	.L1229
.L1234:
	flds	s12, [r7, #56]
	flds	s13, .L1345+4
	fmuls	s13, s12, s13
	fmuls	s13, s13, s15
	b	.L1229
.L1233:
	flds	s12, [r7, #56]
	flds	s13, .L1345+8
	fmuls	s13, s12, s13
	fmuls	s13, s13, s15
	b	.L1229
.L1232:
	flds	s12, [r7, #56]
	flds	s13, .L1345+12
	fmuls	s13, s12, s13
	fmuls	s13, s13, s15
	b	.L1229
.L1230:
	flds	s12, .L1345+16
	flds	s13, [r7, #56]
	fmuls	s15, s15, s12
	fdivs	s13, s15, s13
	b	.L1229
.L1239:
	flds	s12, [r3, #284]
	flds	s13, .L1345+20
	fmuls	s13, s12, s13
	fmuls	s13, s13, s15
	b	.L1229
.L1319:
	fcpys	s13, s15
	b	.L1229
.L1318:
	fcpys	s14, s15
	b	.L1218
.L1228:
	flds	s13, [r3, #284]
	flds	s14, .L1345+20
	fmuls	s14, s13, s14
	fmuls	s14, s14, s15
	b	.L1218
.L1219:
	flds	s13, .L1345+16
	flds	s14, [r7, #56]
	fmuls	s15, s15, s13
	fdivs	s14, s15, s14
	b	.L1218
.L1221:
	flds	s13, [r7, #56]
	flds	s14, .L1345+12
	fmuls	s14, s13, s14
	fmuls	s14, s14, s15
	b	.L1218
.L1222:
	flds	s13, [r7, #56]
	flds	s14, .L1345+8
	fmuls	s14, s13, s14
	fmuls	s14, s14, s15
	b	.L1218
.L1223:
	flds	s13, [r7, #56]
	flds	s14, .L1345+4
	fmuls	s14, s13, s14
	fmuls	s14, s14, s15
	b	.L1218
.L1224:
	flds	s13, [r7, #56]
	flds	s14, .L1345
	fmuls	s14, s13, s14
	fmuls	s14, s14, s15
	b	.L1218
.L1225:
	flds	s14, [r7, #56]
	fmuls	s14, s15, s14
	b	.L1218
.L1238:
	flds	s13, [r3, #284]
	fmuls	s13, s15, s13
	b	.L1229
.L1260:
	flds	s18, [r3, #284]
	fmuls	s18, s15, s18
	b	.L1251
.L1249:
	flds	s19, [r3, #284]
	fmuls	s19, s15, s19
	b	.L1240
.L1227:
	flds	s14, [r3, #284]
	fmuls	s14, s15, s14
	b	.L1218
.L1341:
	fcpys	s0, s14
	bl	sqrtf(PLT)
	b	.L1216
.L1346:
	.align	2
.L1345:
	.word	1053397798
	.word	1025589893
	.word	1042983595
	.word	1013157433
	.word	1126170624
	.word	1057300152
	.size	nsvg__createGradient, .-nsvg__createGradient
	.section	.text.nsvg__addShape,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__addShape, %function
nsvg__addShape:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	add	r6, r0, #38912
	ldr	r3, [r6, #16]
	mov	r8, r0
	fstmfdd	sp!, {d8}
	sub	sp, sp, #56
	ldr	r10, [r6]
	cmp	r3, #0
	beq	.L1347
	movs	r0, #156
	bl	malloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L1347
	mov	r5, #304
	movs	r1, #0
	mla	r5, r5, r10, r8
	movs	r2, #156
	bl	memset(PLT)
	add	r9, r5, #64
	mov	r7, r5
	mov	ip, r4
.L1351:
	ldr	r0, [r7]	@ unaligned
	adds	r7, r7, #16
	ldr	r1, [r7, #-12]	@ unaligned
	mov	lr, ip
	ldr	r2, [r7, #-8]	@ unaligned
	add	ip, ip, #16
	ldr	r3, [r7, #-4]	@ unaligned
	cmp	r7, r9
	stmia	lr!, {r0, r1, r2, r3}
	bne	.L1351
	flds	s0, [r5, #64]
	flds	s15, [r5, #72]
	fmuls	s0, s0, s0
	fmacs	s0, s15, s15
	fsqrts	s16, s0
	fcmps	s16, s16
	fmstat
	bne	.L1403
.L1352:
	flds	s0, [r5, #68]
	flds	s15, [r5, #76]
	fmuls	s0, s0, s0
	fmacs	s0, s15, s15
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	bne	.L1404
.L1353:
	fadds	s15, s15, s16
	fconsts	s12, #96
	flds	s13, [r5, #236]
	flds	s14, [r5, #240]
	fmuls	s15, s15, s12
	ldr	r3, [r5, #276]
	fmuls	s13, s15, s13
	cmp	r3, #0
	fmuls	s14, s15, s14
	strb	r3, [r4, #124]
	fsts	s13, [r4, #84]
	fsts	s14, [r4, #88]
	ble	.L1361
	mov	r2, #304
	add	r1, r4, #92
	mla	r10, r2, r10, r8
	add	r0, r4, #108
	add	r7, r10, #260
	add	r10, r10, #244
	cmp	r7, r1
	ite	hi
	movhi	r2, #0
	movls	r2, #1
	cmp	r10, r0
	it	cs
	orrcs	r2, r2, #1
	cmp	r3, #6
	ite	ls
	movls	r2, #0
	andhi	r2, r2, #1
	cmp	r2, #0
	beq	.L1357
	vdup.32	q8, d7[1]
	lsr	lr, r3, #2
	vld1.32	{q9}, [r10]
	vmul.f32	q9, q9, q8
	cmp	lr, #1
	lsl	r2, lr, #2
	vst1.32	{q9}, [r1]
	bls	.L1358
	vld1.32	{q9}, [r7]
	vmul.f32	q8, q9, q8
	vst1.32	{q8}, [r0]
.L1358:
	cmp	r3, r2
	beq	.L1361
	add	r1, r5, r2, lsl #2
	add	r0, r4, r2, lsl #2
	flds	s14, [r1, #244]
	adds	r1, r2, #1
	cmp	r3, r1
	fmuls	s14, s14, s15
	fsts	s14, [r0, #92]
	ble	.L1361
	add	r1, r5, r2, lsl #2
	flds	s14, [r1, #248]
	adds	r1, r2, #2
	cmp	r3, r1
	fmuls	s14, s14, s15
	fsts	s14, [r0, #96]
	ble	.L1361
	add	r3, r5, r2, lsl #2
	add	r2, r4, r2, lsl #2
	flds	s14, [r3, #252]
	fmuls	s15, s14, s15
	fsts	s15, [r2, #100]
.L1361:
	ldrb	r3, [r5, #280]	@ zero_extendqisi2
	movs	r1, #0
	strb	r3, [r4, #125]
	ldrb	r3, [r5, #281]	@ zero_extendqisi2
	strb	r3, [r4, #126]
	ldrb	r3, [r5, #282]	@ zero_extendqisi2
	strb	r3, [r4, #127]
	ldr	r2, [r6, #16]
	ldr	r0, [r5, #96]	@ float
	ldr	r3, [r2, #28]
	flds	s12, [r2, #12]
	flds	s13, [r2, #16]
	flds	s14, [r2, #20]
	flds	s15, [r2, #24]
	str	r2, [r4, #148]
	str	r0, [r4, #80]	@ float
	str	r1, [r6, #16]
	fsts	s12, [r4, #132]
	fsts	s13, [r4, #136]
	fsts	s14, [r4, #140]
	fsts	s15, [r4, #144]
	cbz	r3, .L1356
.L1374:
	flds	s8, [r3, #12]
	flds	s9, [r3, #16]
	flds	s10, [r3, #20]
	flds	s11, [r3, #24]
	fcmpes	s8, s12
	fmstat
	ldr	r3, [r3, #28]
	fcmpes	s9, s13
	it	le
	fcpysle	s12, s8
	fmstat
	fcmpes	s10, s14
	it	le
	fcpysle	s13, s9
	fmstat
	fcmpes	s11, s15
	it	pl
	fcpyspl	s14, s10
	fmstat
	it	pl
	fcpyspl	s15, s11
	cmp	r3, #0
	bne	.L1374
	fsts	s12, [sp]
	add	r3, r4, #132
	fsts	s13, [sp, #4]
	fsts	s14, [sp, #8]
	fsts	s15, [sp, #12]
	vld1.64	{d16-d17}, [sp:64]
	vst1.32	{q8}, [r3]
.L1356:
	ldrb	r3, [r5, #300]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1405
	strb	r3, [r4, #64]
.L1375:
	ldrb	r3, [r5, #301]	@ zero_extendqisi2
	cbnz	r3, .L1380
	strb	r3, [r4, #72]
.L1381:
	ldrb	r3, [r5, #302]	@ zero_extendqisi2
	adds	r3, r3, #0
	it	ne
	movne	r3, #1
	strb	r3, [r4, #128]
	ldr	r3, [r6, #20]
	ldr	r2, [r3, #8]
	cbnz	r2, .L1388
	b	.L1411
.L1406:
	mov	r2, r3
.L1388:
	ldr	r3, [r2, #152]
	cmp	r3, #0
	bne	.L1406
	str	r4, [r2, #152]
.L1349:
.L1347:
	add	sp, sp, #56
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L1380:
	cmp	r3, #1
	beq	.L1407
	cmp	r3, #2
	bne	.L1381
	flds	s14, [r5, #72]
	flds	s15, [r5, #68]
	flds	s12, [r5, #64]
	flds	s13, [r5, #76]
	fcvtds	d19, s14
	fcvtds	d20, s15
	fcvtds	d17, s12
	fcvtds	d18, s13
	fldd	d22, .L1412
	fmuld	d16, d20, d19
	fldd	d21, .L1412+8
	fmscd	d16, d18, d17
	fcmped	d16, d22
	fmstat
	fcmped	d16, d21
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	cmp	r3, #0
	bne	.L1408
	fconstd	d21, #112
	flds	s12, [r5, #84]
	fdivd	d16, d21, d16
	flds	s13, [r5, #80]
	fnegs	s14, s14
	fcvtds	d23, s12
	fnegs	s15, s15
	fcvtds	d24, s13
	fcvtds	d26, s14
	fmuld	d22, d23, d17
	fcvtds	d25, s15
	fmuld	d21, d24, d18
	fmscd	d22, d24, d20
	fmscd	d21, d23, d19
	fmuld	d22, d22, d16
	fmuld	d21, d21, d16
	fmuld	d18, d16, d18
	fcvtsd	s15, d22
	fmuld	d17, d16, d17
	fcvtsd	s14, d21
	fmuld	d19, d16, d26
	fcvtsd	s12, d18
	fmuld	d16, d16, d25
	fcvtsd	s13, d17
	fsts	s14, [sp, #48]
	fsts	s15, [sp, #52]
	fcvtsd	s14, d19
	fcvtsd	s15, d16
	fsts	s12, [sp, #32]
	fsts	s13, [sp, #44]
	fsts	s14, [sp, #40]
	fsts	s15, [sp, #36]
.L1384:
	add	r7, sp, #16
	ldr	r1, [r4, #148]
	mov	r0, r7
	add	r2, sp, #32
	bl	nsvg__getLocalBounds.isra.26(PLT)
	mov	r0, r8
	mov	r2, r7
	add	r1, r5, #172
	add	r3, r4, #72
	bl	nsvg__createGradient(PLT)
	str	r0, [r4, #76]
	cmp	r0, #0
	bne	.L1381
	strb	r0, [r4, #72]
	b	.L1381
.L1405:
	cmp	r3, #1
	beq	.L1409
	cmp	r3, #2
	bne	.L1375
	flds	s14, [r5, #72]
	flds	s15, [r5, #68]
	flds	s12, [r5, #64]
	flds	s13, [r5, #76]
	fcvtds	d19, s14
	fcvtds	d20, s15
	fcvtds	d17, s12
	fcvtds	d18, s13
	fldd	d22, .L1412
	fmuld	d16, d20, d19
	fldd	d21, .L1412+8
	fmscd	d16, d18, d17
	fcmped	d16, d22
	fmstat
	fcmped	d16, d21
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	cmp	r3, #0
	bne	.L1410
	fconstd	d21, #112
	flds	s12, [r5, #84]
	fdivd	d16, d21, d16
	flds	s13, [r5, #80]
	fnegs	s14, s14
	fcvtds	d23, s12
	fnegs	s15, s15
	fcvtds	d24, s13
	fcvtds	d26, s14
	fmuld	d22, d23, d17
	fcvtds	d25, s15
	fmuld	d21, d24, d18
	fmscd	d22, d24, d20
	fmscd	d21, d23, d19
	fmuld	d22, d22, d16
	fmuld	d21, d21, d16
	fmuld	d18, d16, d18
	fcvtsd	s15, d22
	fmuld	d17, d16, d17
	fcvtsd	s14, d21
	fmuld	d19, d16, d26
	fcvtsd	s12, d18
	fmuld	d16, d16, d25
	fcvtsd	s13, d17
	fsts	s14, [sp, #48]
	fsts	s15, [sp, #52]
	fcvtsd	s14, d19
	fcvtsd	s15, d16
	fsts	s12, [sp, #32]
	fsts	s13, [sp, #44]
	fsts	s14, [sp, #40]
	fsts	s15, [sp, #36]
.L1378:
	add	r7, sp, #16
	ldr	r1, [r4, #148]
	mov	r0, r7
	add	r2, sp, #32
	bl	nsvg__getLocalBounds.isra.26(PLT)
	mov	r0, r8
	mov	r2, r7
	add	r1, r5, #108
	add	r3, r4, #64
	bl	nsvg__createGradient(PLT)
	str	r0, [r4, #68]
	cmp	r0, #0
	bne	.L1375
	strb	r0, [r4, #64]
	b	.L1375
.L1357:
	flds	s14, [r5, #244]
	cmp	r3, #1
	fmuls	s14, s14, s15
	fsts	s14, [r4, #92]
	ble	.L1361
	flds	s14, [r5, #248]
	cmp	r3, #2
	fmuls	s14, s14, s15
	fsts	s14, [r4, #96]
	ble	.L1361
	flds	s14, [r5, #252]
	cmp	r3, #3
	fmuls	s14, s14, s15
	fsts	s14, [r4, #100]
	ble	.L1361
	flds	s14, [r5, #256]
	cmp	r3, #4
	fmuls	s14, s14, s15
	fsts	s14, [r4, #104]
	ble	.L1361
	flds	s14, [r5, #260]
	cmp	r3, #5
	fmuls	s14, s14, s15
	fsts	s14, [r4, #108]
	ble	.L1361
	flds	s14, [r5, #264]
	cmp	r3, #6
	fmuls	s14, s14, s15
	fsts	s14, [r4, #112]
	ble	.L1361
	flds	s14, [r5, #268]
	cmp	r3, #7
	fmuls	s14, s14, s15
	fsts	s14, [r4, #116]
	ble	.L1361
	flds	s14, [r5, #272]
	fmuls	s15, s14, s15
	fsts	s15, [r4, #120]
	b	.L1361
.L1411:
	str	r4, [r3, #8]
	b	.L1347
.L1407:
	strb	r3, [r4, #72]
	ldr	r3, [r5, #92]
	flds	s15, .L1412+32
	str	r3, [r4, #76]
	flds	s14, [r5, #104]
	fmuls	s15, s14, s15
	ftouizs	s15, s15
	fmrs	r2, s15	@ int
	orr	r3, r3, r2, lsl #24
	str	r3, [r4, #76]
	b	.L1381
.L1409:
	strb	r3, [r4, #64]
	ldr	r3, [r5, #88]
	flds	s15, .L1412+32
	str	r3, [r4, #68]
	flds	s14, [r5, #100]
	fmuls	s15, s14, s15
	ftouizs	s15, s15
	fmrs	r2, s15	@ int
	orr	r3, r3, r2, lsl #24
	str	r3, [r4, #68]
	b	.L1375
.L1410:
	vmov.f32	d16, #0.0  @ v2sf
	vldr	d18, .L1412+16
	add	r2, r5, #72
	add	r3, r5, #80
	vldr	d17, .L1412+24
	vst1.32	{d18}, [r9]
	vst1.32	{d17}, [r2]
	vst1.32	{d16}, [r3]
	b	.L1378
.L1408:
	vmov.f32	d16, #0.0  @ v2sf
	vldr	d18, .L1412+16
	add	r2, r5, #72
	add	r3, r5, #80
	vldr	d17, .L1412+24
	vst1.32	{d18}, [r9]
	vst1.32	{d17}, [r2]
	vst1.32	{d16}, [r3]
	b	.L1384
.L1404:
	bl	sqrtf(PLT)
	fcpys	s15, s0
	b	.L1353
.L1403:
	bl	sqrtf(PLT)
	fcpys	s16, s0
	b	.L1352
.L1413:
	.align	3
.L1412:
	.word	-1598689907
	.word	1051772663
	.word	-1598689907
	.word	-1095710985
	.word	1065353216
	.word	0
	.word	0
	.word	1065353216
	.word	1132396544
	.size	nsvg__addShape, .-nsvg__addShape
	.section	.text.nsvg__expandStroke.constprop.31,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__expandStroke.constprop.31, %function
nsvg__expandStroke.constprop.31:
	@ args = 4, pretend = 0, frame = 448
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r7, r1, #32
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
	sub	sp, sp, #468
	mov	r6, r1
	mov	r8, r3
	fcpys	s21, s0
	add	r9, r2, #-1
	fconsts	s16, #96
	mov	r4, r0
	flds	s0, [r0, #8]
	fmuls	s16, s21, s16
	str	r2, [sp, #20]
	str	r7, [sp, #24]
	fadds	s0, s16, s0
	fdivs	s0, s16, s0
	bl	acosf(PLT)
	flds	s15, .L1620
	fadds	s0, s0, s0
	fdivs	s0, s15, s0
	bl	ceilf(PLT)
	flds	s18, [r6, #36]
	movs	r3, #0
	flds	s14, [r6, #4]
	movs	r2, #0
	ftosizs	s0, s0
	flds	s15, [r6]
	flds	s17, [r6, #32]
	fsubs	s18, s18, s14
	fmrs	r7, s0	@ int
	cmp	r7, #2
	strb	r2, [sp, #428]
	fsubs	s17, s17, s15
	it	lt
	movlt	r7, #2
	fmuls	s0, s18, s18
	str	r7, [sp, #16]
	str	r3, [sp, #400]	@ float
	str	r3, [sp, #404]	@ float
	fmacs	s0, s17, s17
	str	r3, [sp, #408]	@ float
	str	r3, [sp, #412]	@ float
	str	r3, [sp, #416]	@ float
	str	r3, [sp, #420]	@ float
	str	r3, [sp, #424]	@ float
	str	r3, [sp, #432]	@ float
	fsqrts	s15, s0
	str	r3, [sp, #436]	@ float
	str	r3, [sp, #440]	@ float
	str	r3, [sp, #444]	@ float
	str	r3, [sp, #448]	@ float
	str	r3, [sp, #452]	@ float
	str	r3, [sp, #456]	@ float
	strb	r2, [sp, #460]
	fcmps	s15, s15
	fmstat
	bne	.L1599
.L1416:
	flds	s14, .L1620+4
	ldr	r7, [sp, #552]
	fcmpes	s15, s14
	fmstat
	itttt	gt
	fconstsgt	s14, #112
	fdivsgt	s15, s14, s15
	fmulsgt	s17, s17, s15
	fmulsgt	s18, s18, s15
	cmp	r7, #0
	beq	.L1600
	cmp	r7, #2
	beq	.L1601
	cmp	r7, #1
	beq	.L1602
.L1428:
	cmp	r9, #1
	ble	.L1527
	add	r1, sp, #144
	add	r3, sp, #148
	str	r1, [sp, #28]
	add	r1, sp, #152
	str	r3, [sp, #32]
	add	r3, sp, #156
	str	r1, [sp, #36]
	add	r1, sp, #160
	add	r5, r6, #64
	movs	r7, #1
	str	r3, [sp, #40]
	mov	r10, #-1
	str	r1, [sp, #44]
	b	.L1598
.L1621:
	.align	2
.L1620:
	.word	1078530011
	.word	897988541
.L1608:
	cmp	r8, #1
	beq	.L1603
	cmp	r8, #2
	beq	.L1442
	lsls	r3, r3, #30
	bpl	.L1443
.L1442:
	flds	s22, [r2, #8]
	flds	s15, [r5, #-28]
	flds	s23, [r2, #12]
	flds	s19, [r5, #-20]
	fnmuls	s22, s22, s16
	flds	s17, [r5, #-24]
	flds	s26, [sp, #404]
	flds	s14, [r5, #-32]
	fsubs	s24, s15, s22
	fmuls	s23, s16, s23
	fmuls	s19, s16, s19
	fnmuls	s17, s17, s16
	fcmps	s24, s26
	fmstat
	fsubs	s25, s14, s23
	fsubs	s20, s14, s19
	fsubs	s18, s15, s17
	fadds	s22, s22, s15
	fadds	s23, s23, s14
	fadds	s19, s19, s14
	fadds	s17, s17, s15
	ldr	fp, [sp, #400]	@ float
	beq	.L1445
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L1446
	ldr	r0, [r4, #16]
.L1447:
	fcmpes	s24, s26
	add	r1, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r1, lsl #3
	bmi	.L1604
	str	fp, [sp, #304]	@ float
	fsts	s26, [sp, #308]
	fsts	s25, [sp, #312]
	fsts	s24, [sp, #316]
	vldr	d16, [sp, #304]
	vldr	d17, [sp, #312]
	str	r10, [r0, #16]
	vst1.32	{q8}, [r0]
.L1445:
	fcmps	s24, s18
	fmstat
	beq	.L1453
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L1454
	ldr	r0, [r4, #16]
.L1455:
	fcmpes	s24, s18
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bgt	.L1605
	fsts	s25, [sp, #272]
	fsts	s24, [sp, #276]
	fsts	s20, [sp, #280]
	fsts	s18, [sp, #284]
	vldr	d16, [sp, #272]
	vldr	d17, [sp, #280]
	str	r10, [r0, #16]
	vst1.32	{q8}, [r0]
.L1453:
	flds	s24, [sp, #436]
	ldr	fp, [sp, #432]	@ float
	fcmps	s22, s24
	fmstat
	beq	.L1461
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L1462
	ldr	r0, [r4, #16]
.L1463:
	fcmpes	s22, s24
	add	r1, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r1, lsl #3
	bgt	.L1606
	fsts	s23, [sp, #240]
	fsts	s22, [sp, #244]
	str	fp, [sp, #248]	@ float
	fsts	s24, [sp, #252]
	vldr	d16, [sp, #240]
	vldr	d17, [sp, #248]
	str	r10, [r0, #16]
	vst1.32	{q8}, [r0]
.L1461:
	fcmps	s22, s17
	fmstat
	beq	.L1485
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L1470
	ldr	r0, [r4, #16]
.L1471:
	fcmpes	s22, s17
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r2, lsl #3
	bmi	.L1607
	fsts	s17, [sp, #212]
	fsts	s23, [sp, #216]
	fsts	s22, [sp, #220]
	fsts	s19, [sp, #208]
	vldr	d16, [sp, #208]
	vldr	d17, [sp, #216]
	str	r10, [r0, #16]
	vst1.32	{q8}, [r0]
.L1485:
	fsts	s20, [sp, #400]
	fsts	s18, [sp, #404]
	fsts	s19, [sp, #432]
	fsts	s17, [sp, #436]
.L1441:
	adds	r7, r7, #1
	adds	r5, r5, #32
	cmp	r9, r7
	beq	.L1492
.L1598:
	ldrb	r3, [r5, #-4]	@ zero_extendqisi2
	mov	r2, r6
	sub	r6, r5, #32
	lsls	r1, r3, #31
	bmi	.L1608
	flds	s17, [r5, #-8]
	flds	s14, [r5, #-28]
	flds	s19, [r5, #-12]
	flds	s22, [sp, #404]
	fmuls	s17, s16, s17
	flds	s15, [r5, #-32]
	fmuls	s19, s16, s19
	ldr	fp, [sp, #400]	@ float
	fsubs	s18, s14, s17
	fadds	s17, s17, s14
	fsubs	s20, s15, s19
	fadds	s19, s19, s15
	fcmps	s18, s22
	fmstat
	beq	.L1477
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L1478
	ldr	r0, [r4, #16]
.L1479:
	fcmpes	s18, s22
	add	r1, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r1, lsl #3
	bmi	.L1609
	str	fp, [sp, #176]	@ float
	fsts	s22, [sp, #180]
	fsts	s20, [sp, #184]
	fsts	s18, [sp, #188]
	vldr	d16, [sp, #176]
	vldr	d17, [sp, #184]
	str	r10, [r0, #16]
	vst1.32	{q8}, [r0]
.L1477:
	flds	s22, [sp, #436]
	ldr	fp, [sp, #432]	@ float
	fcmps	s17, s22
	fmstat
	beq	.L1485
	ldr	r3, [r4, #20]
	ldr	r1, [r4, #24]
	cmp	r3, r1
	bge	.L1486
	ldr	r0, [r4, #16]
.L1487:
	fcmpes	s17, s22
	add	r1, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r0, r0, r1, lsl #3
	bgt	.L1610
	fsts	s19, [sp, #144]
	fsts	s17, [sp, #148]
	str	fp, [sp, #152]	@ float
	fsts	s22, [sp, #156]
	vldr	d16, [sp, #144]
	vldr	d17, [sp, #152]
	str	r10, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L1485
.L1443:
	add	r3, sp, #436
	flds	s0, [r2, #8]
	flds	s1, [r2, #12]
	mov	r0, r4
	str	r3, [sp]
	add	r1, sp, #400
	str	r6, [sp, #4]
	add	r2, sp, #404
	add	r3, sp, #432
	fcpys	s2, s21
	adds	r7, r7, #1
	adds	r5, r5, #32
	bl	nsvg__miterJoin.isra.19(PLT)
	cmp	r9, r7
	bne	.L1598
.L1492:
	ldr	r7, [sp, #20]
	lsls	r5, r7, #5
	ldr	r7, [sp, #24]
	sub	r6, r5, #96
	subs	r5, r5, #64
	add	r5, r5, r7
	add	r6, r6, r7
.L1438:
	flds	s17, [r5]
	flds	s14, [r6]
	flds	s15, [r6, #4]
	flds	s18, [r5, #4]
	fsubs	s17, s17, s14
	fsubs	s18, s18, s15
	fmuls	s0, s17, s17
	fmacs	s0, s18, s18
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	bne	.L1611
.L1494:
	flds	s14, .L1620+4
	ldr	r7, [sp, #552]
	fcmpes	s15, s14
	fmstat
	itttt	gt
	fconstsgt	s14, #112
	fdivsgt	s15, s14, s15
	fmulsgt	s17, s17, s15
	fmulsgt	s18, s18, s15
	cmp	r7, #0
	beq	.L1612
	cmp	r7, #2
	beq	.L1613
	cmp	r7, #1
	beq	.L1614
.L1414:
	add	sp, sp, #468
	@ sp needed
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1470:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1485
	ldr	r3, [r4, #20]
	b	.L1471
.L1454:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1453
	ldr	r3, [r4, #20]
	b	.L1455
.L1462:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1461
	ldr	r3, [r4, #20]
	b	.L1463
.L1446:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1445
	ldr	r3, [r4, #20]
	b	.L1447
.L1607:
	fsts	s23, [sp, #224]
	movs	r3, #1
	fsts	s22, [sp, #228]
	fsts	s19, [sp, #232]
	fsts	s17, [sp, #236]
	vldr	d16, [sp, #224]
	vldr	d17, [sp, #232]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L1485
.L1605:
	fsts	s20, [sp, #288]
	movs	r3, #1
	fsts	s18, [sp, #292]
	fsts	s25, [sp, #296]
	fsts	s24, [sp, #300]
	vldr	d16, [sp, #288]
	vldr	d17, [sp, #296]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L1453
.L1606:
	str	fp, [sp, #256]	@ float
	movs	r3, #1
	fsts	s24, [sp, #260]
	fsts	s23, [sp, #264]
	fsts	s22, [sp, #268]
	vldr	d16, [sp, #256]
	vldr	d17, [sp, #264]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L1461
.L1604:
	fsts	s25, [sp, #320]
	movs	r3, #1
	fsts	s24, [sp, #324]
	str	fp, [sp, #328]	@ float
	fsts	s26, [sp, #332]
	vldr	d16, [sp, #320]
	vldr	d17, [sp, #328]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L1445
.L1603:
	ldr	r3, [sp, #16]
	add	lr, sp, #436
	flds	s0, [r2, #8]
	mov	r0, r4
	flds	s1, [r2, #12]
	add	r1, sp, #400
	str	r3, [sp, #8]
	add	r2, sp, #404
	str	r6, [sp, #4]
	add	r3, sp, #432
	str	lr, [sp]
	fcpys	s2, s21
	bl	nsvg__roundJoin.isra.28(PLT)
	b	.L1441
.L1486:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1485
	ldr	r3, [r4, #20]
	b	.L1487
.L1478:
	cmp	r1, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1477
	ldr	r3, [r4, #20]
	b	.L1479
.L1610:
	str	fp, [sp, #160]	@ float
	movs	r3, #1
	fsts	s22, [sp, #164]
	fsts	s19, [sp, #168]
	fsts	s17, [sp, #172]
	vldr	d16, [sp, #160]
	vldr	d17, [sp, #168]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L1485
.L1609:
	str	fp, [sp, #200]	@ float
	movs	r3, #1
	fsts	s22, [sp, #204]
	fsts	s20, [sp, #192]
	fsts	s18, [sp, #196]
	vldr	d16, [sp, #192]
	vldr	d17, [sp, #200]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	b	.L1477
.L1600:
	fnmuls	s17, s17, s16
	flds	s14, [r6, #4]
	fmuls	s18, s18, s16
	flds	s15, [r6]
	fsubs	s19, s14, s17
	fadds	s17, s17, s14
	fsubs	s20, s15, s18
	fadds	s18, s18, s15
	fcmps	s19, s17
	fmstat
	beq	.L1431
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	cmp	r3, r2
	bge	.L1422
	ldr	r0, [r4, #16]
.L1423:
	fcmpes	s19, s17
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r3, r0, r2, lsl #3
	bmi	.L1615
	fsts	s18, [sp, #368]
	mov	r2, #-1
	fsts	s17, [sp, #372]
	fsts	s20, [sp, #376]
	fsts	s19, [sp, #380]
	vldr	d16, [sp, #368]
	vldr	d17, [sp, #376]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
.L1431:
	fsts	s20, [sp, #400]
	fsts	s19, [sp, #404]
	fsts	s18, [sp, #432]
	fsts	s17, [sp, #436]
	b	.L1428
.L1612:
	fmuls	s17, s17, s16
	flds	s14, [r5, #4]
	fnmuls	s16, s18, s16
	flds	s15, [r5]
	fsubs	s19, s14, s17
	fadds	s17, s17, s14
	fsubs	s20, s15, s16
	fadds	s16, s16, s15
	fcmps	s19, s17
	fmstat
	beq	.L1499
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	cmp	r3, r2
	bge	.L1500
	ldr	r0, [r4, #16]
.L1501:
	fcmpes	s19, s17
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r3, r0, r2, lsl #3
	bmi	.L1616
	fsts	s16, [sp, #112]
	mov	r2, #-1
	fsts	s17, [sp, #116]
	fsts	s20, [sp, #120]
	fsts	s19, [sp, #124]
	vldr	d16, [sp, #112]
	vldr	d17, [sp, #120]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
.L1499:
	flds	s18, [sp, #436]
	ldr	r5, [sp, #432]	@ float
	fcmps	s19, s18
	fmstat
	beq	.L1507
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	cmp	r3, r2
	bge	.L1508
	ldr	r0, [r4, #16]
.L1509:
	fcmpes	s19, s18
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r3, r0, r2, lsl #3
	bgt	.L1617
	fsts	s20, [sp, #80]
	mov	r2, #-1
	fsts	s19, [sp, #84]
	str	r5, [sp, #88]	@ float
	fsts	s18, [sp, #92]
	vldr	d16, [sp, #80]
	vldr	d17, [sp, #88]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
.L1507:
	flds	s18, [sp, #404]
	ldr	r5, [sp, #400]	@ float
	fcmps	s17, s18
	fmstat
	beq	.L1414
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	cmp	r3, r2
	bge	.L1516
	ldr	r0, [r4, #16]
.L1517:
	fcmpes	s17, s18
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r3, r0, r2, lsl #3
	bmi	.L1618
	str	r5, [sp, #48]	@ float
	mov	r2, #-1
	fsts	s18, [sp, #52]
	fsts	s16, [sp, #56]
	fsts	s17, [sp, #60]
	vldr	d16, [sp, #48]
	vldr	d17, [sp, #56]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	add	sp, sp, #468
	@ sp needed
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1601:
	fmuls	s18, s18, s16
	flds	s14, [r6, #4]
	flds	s15, [r6]
	fnmuls	s13, s17, s16
	fsubs	s14, s14, s18
	fnmacs	s15, s17, s16
	fsubs	s19, s14, s13
	fadds	s17, s13, s14
	fsubs	s20, s15, s18
	fcmps	s19, s17
	fmstat
	fadds	s18, s15, s18
	beq	.L1431
	ldr	r3, [r4, #20]
	ldr	r2, [r4, #24]
	cmp	r3, r2
	bge	.L1432
	ldr	r1, [r4, #16]
.L1433:
	fcmpes	s19, s17
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r4, #20]
	add	r3, r1, r2, lsl #3
	bmi	.L1619
	fsts	s18, [sp, #336]
	mov	r2, #-1
	fsts	s17, [sp, #340]
	fsts	s20, [sp, #344]
	fsts	s19, [sp, #348]
	vldr	d16, [sp, #336]
	vldr	d17, [sp, #344]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L1431
.L1613:
	flds	s0, [r5]
	mov	r0, r4
	flds	s1, [r5, #4]
	add	r4, sp, #404
	movs	r5, #1
	fnegs	s2, s17
	fnegs	s3, s18
	add	r1, sp, #432
	fcpys	s4, s21
	add	r2, sp, #436
	add	r3, sp, #400
	stmia	sp, {r4, r5}
	bl	nsvg__squareCap.isra.22(PLT)
	b	.L1414
.L1527:
	ldr	r5, [sp, #24]
	b	.L1438
.L1508:
	cmp	r2, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1507
	ldr	r3, [r4, #20]
	b	.L1509
.L1516:
	cmp	r2, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1414
	ldr	r3, [r4, #20]
	b	.L1517
.L1422:
	cmp	r2, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1431
	ldr	r3, [r4, #20]
	b	.L1423
.L1500:
	cmp	r2, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1499
	ldr	r3, [r4, #20]
	b	.L1501
.L1614:
	mov	r0, r4
	ldr	r4, [sp, #16]
	flds	s0, [r5]
	add	r1, sp, #432
	flds	s1, [r5, #4]
	add	r2, sp, #436
	str	r4, [sp, #4]
	add	r4, sp, #404
	fnegs	s2, s17
	add	r3, sp, #400
	fnegs	s3, s18
	fcpys	s4, s21
	str	r7, [sp, #8]
	str	r4, [sp]
	bl	nsvg__roundCap.isra.23(PLT)
	b	.L1414
.L1602:
	ldr	r7, [sp, #16]
	movs	r5, #0
	flds	s0, [r6]
	mov	r0, r4
	flds	s1, [r6, #4]
	add	r1, sp, #400
	str	r7, [sp, #4]
	add	r7, sp, #436
	fcpys	s2, s17
	add	r2, sp, #404
	fcpys	s3, s18
	add	r3, sp, #432
	str	r7, [sp]
	str	r5, [sp, #8]
	fcpys	s4, s21
	bl	nsvg__roundCap.isra.23(PLT)
	b	.L1428
.L1615:
	fsts	s20, [sp, #384]
	movs	r2, #1
	fsts	s19, [sp, #388]
	fsts	s18, [sp, #392]
	fsts	s17, [sp, #396]
	vldr	d16, [sp, #384]
	vldr	d17, [sp, #392]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L1431
.L1616:
	fsts	s20, [sp, #128]
	movs	r2, #1
	fsts	s19, [sp, #132]
	fsts	s16, [sp, #136]
	fsts	s17, [sp, #140]
	vldr	d16, [sp, #128]
	vldr	d17, [sp, #136]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L1499
.L1617:
	str	r5, [sp, #96]	@ float
	movs	r2, #1
	fsts	s18, [sp, #100]
	fsts	s20, [sp, #104]
	fsts	s19, [sp, #108]
	vldr	d16, [sp, #96]
	vldr	d17, [sp, #104]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L1507
.L1618:
	fsts	s16, [sp, #64]
	movs	r2, #1
	fsts	s17, [sp, #68]
	str	r5, [sp, #72]	@ float
	fsts	s18, [sp, #76]
	vldr	d16, [sp, #64]
	vldr	d17, [sp, #72]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L1414
.L1432:
	cmp	r2, #0
	ldr	r0, [r4, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r4, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L1431
	ldr	r3, [r4, #20]
	mov	r1, r0
	b	.L1433
.L1619:
	fsts	s20, [sp, #352]
	movs	r2, #1
	fsts	s19, [sp, #356]
	fsts	s18, [sp, #360]
	fsts	s17, [sp, #364]
	vldr	d16, [sp, #352]
	vldr	d17, [sp, #360]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L1431
.L1599:
	bl	sqrtf(PLT)
	fcpys	s15, s0
	b	.L1416
.L1611:
	bl	sqrtf(PLT)
	fcpys	s15, s0
	b	.L1494
	.size	nsvg__expandStroke.constprop.31, .-nsvg__expandStroke.constprop.31
	.section	.text.nsvg__parseAttr,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseAttr, %function
nsvg__parseAttr:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r6, r0, #38912
	mov	r5, r0
	mov	r8, r1
	mov	r0, r1
	mov	r4, r2
	ldr	r1, .L1796+8
	fstmfdd	sp!, {d8}
	sub	sp, sp, #116
	ldr	r7, [r6]
.LPIC88:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1773
	ldr	r1, .L1796+12
	mov	r3, #304
	mov	r0, r8
	mla	r7, r3, r7, r5
.LPIC91:
	add	r1, pc
	bl	strcmp(PLT)
	cbnz	r0, .L1636
	ldr	r1, .L1796+16
	mov	r0, r4
.LPIC92:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1774
.L1772:
	movs	r4, #1
.L1767:
	mov	r0, r4
	add	sp, sp, #116
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1636:
	ldr	r1, .L1796+20
	mov	r0, r8
.LPIC93:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L1638
	ldr	r1, .L1796+24
	mov	r0, r4
.LPIC94:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1775
	ldr	r1, .L1796+28
	mov	r0, r4
	movs	r2, #4
.LPIC95:
	add	r1, pc
	bl	strncmp(PLT)
	cmp	r0, #0
	bne	.L1640
	movs	r3, #2
	add	r1, r7, #108
	strb	r3, [r7, #300]
	ldrb	r3, [r4, #4]	@ zero_extendqisi2
	cmp	r3, #35
	mov	r3, #0
	ite	ne
	addne	r4, r4, #4
	addeq	r4, r4, #5
	b	.L1643
.L1645:
	strb	r2, [r1, r3]
	adds	r3, r3, #1
	cmp	r3, #63
	beq	.L1658
.L1643:
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	cmp	r2, #41
	bne	.L1645
.L1658:
	movs	r2, #0
	movs	r4, #1
	strb	r2, [r1, r3]
	b	.L1767
.L1773:
	ldr	r8, .L1796+32
	ldr	r7, .L1796+36
	ldrb	r1, [r4]	@ zero_extendqisi2
.LPIC89:
	add	r8, pc
.LPIC90:
	add	r7, pc
.L1624:
	cbnz	r1, .L1635
	b	.L1772
.L1626:
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
	cbz	r1, .L1625
.L1635:
	mov	r0, r8
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L1626
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #59
	it	ne
	cmpne	r3, #0
	beq	.L1625
	mov	r10, r4
.L1628:
	ldrb	r3, [r10, #1]!	@ zero_extendqisi2
	cmp	r3, #59
	it	ne
	cmpne	r3, #0
	bne	.L1628
	cmp	r4, r10
	it	cs
	movcs	r9, r10
	bcs	.L1629
	mov	r6, r10
.L1630:
	mov	r9, r6
	ldrb	r1, [r6], #-1	@ zero_extendqisi2
	mov	r0, r7
	cmp	r1, #59
	beq	.L1631
	bl	strchr(PLT)
	cbz	r0, .L1629
.L1631:
	cmp	r6, r4
	mov	r9, r6
	bne	.L1630
.L1629:
	mov	r1, r4
	add	r2, r9, #1
	mov	r0, r5
	bl	nsvg__parseNameValue(PLT)
	ldrb	r1, [r10]	@ zero_extendqisi2
	cbz	r1, .L1632
	ldrb	r1, [r10, #1]	@ zero_extendqisi2
	add	r10, r10, #1
.L1632:
	mov	r4, r10
	b	.L1624
.L1625:
	mov	r10, r4
	mov	r9, r4
	b	.L1629
.L1774:
	movs	r4, #1
	strb	r0, [r7, #302]
	mov	r0, r4
	add	sp, sp, #116
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1638:
	ldr	r1, .L1796+40
	mov	r0, r8
.LPIC96:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1776
	ldr	r1, .L1796+44
	mov	r0, r8
.LPIC98:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1777
	ldr	r1, .L1796+48
	mov	r0, r8
.LPIC100:
	add	r1, pc
	bl	strcmp(PLT)
	cbnz	r0, .L1652
	ldr	r1, .L1796+52
	mov	r0, r4
.LPIC101:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1778
	ldr	r1, .L1796+56
	mov	r0, r4
	movs	r2, #4
.LPIC102:
	add	r1, pc
	bl	strncmp(PLT)
	cmp	r0, #0
	bne	.L1654
	movs	r3, #2
	add	r1, r7, #172
	strb	r3, [r7, #301]
	ldrb	r3, [r4, #4]	@ zero_extendqisi2
	cmp	r3, #35
	mov	r3, #0
	ite	ne
	addne	r4, r4, #4
	addeq	r4, r4, #5
	b	.L1657
.L1659:
	strb	r2, [r1, r3]
	adds	r3, r3, #1
	cmp	r3, #63
	beq	.L1658
.L1657:
	ldrb	r2, [r4, r3]	@ zero_extendqisi2
	cmp	r2, #41
	bne	.L1659
	b	.L1658
.L1775:
	strb	r0, [r7, #300]
	movs	r4, #1
	b	.L1767
.L1652:
	ldr	r1, .L1796+60
	mov	r0, r8
.LPIC103:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1779
	ldr	r1, .L1796+64
	mov	r0, r8
.LPIC104:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1780
	ldr	r1, .L1796+68
	mov	r0, r8
.LPIC107:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1781
	ldr	r1, .L1796+72
	mov	r0, r8
.LPIC108:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1782
	ldr	r1, .L1796+76
	mov	r0, r8
.LPIC110:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1783
	ldr	r1, .L1796+80
	mov	r0, r8
.LPIC114:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1784
	ldr	r1, .L1796+84
	mov	r0, r8
.LPIC118:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1785
	ldr	r1, .L1796+88
	mov	r0, r8
.LPIC121:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1786
	ldr	r1, .L1796+92
	mov	r0, r8
.LPIC122:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1787
	ldr	r1, .L1796+96
	mov	r0, r8
.LPIC123:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1788
	ldr	r1, .L1796+100
	mov	r0, r8
.LPIC124:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1789
	ldr	r1, .L1796+104
	mov	r0, r8
.LPIC126:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1790
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, #105
	bne	.L1742
	ldrb	r3, [r8, #1]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L1742
	ldrb	r5, [r8, #2]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L1742
	mov	r1, r4
	mov	r0, r7
	movs	r2, #63
	bl	strncpy(PLT)
	strb	r5, [r7, #63]
	b	.L1772
.L1640:
	movs	r5, #1
	mov	r0, r4
	strb	r5, [r7, #300]
	mov	r4, r5
	bl	nsvg__parseColor(PLT)
	str	r0, [r7, #88]
	b	.L1767
.L1778:
	strb	r0, [r7, #301]
	movs	r4, #1
	b	.L1767
.L1779:
	flds	s0, [r6, #36]
	flds	s15, [r6, #40]
	fmuls	s0, s0, s0
	fmacs	s0, s15, s15
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	bne	.L1791
.L1661:
	flds	s0, .L1796
	mov	r1, r4
	mov	r0, r5
	movs	r4, #1
	fmuls	s0, s15, s0
	bl	nsvg__parseCoordinate.constprop.38(PLT)
	fsts	s0, [r7, #236]
	b	.L1767
.L1776:
	ldr	r1, .L1796+108
	movs	r5, #0
	add	r2, sp, #112
	mov	r0, r4
	str	r5, [r2, #-64]!	@ float
.LPIC97:
	add	r1, pc
	bl	__isoc99_sscanf(PLT)
	flds	s15, [sp, #48]
	fcmpezs	s15
	fmstat
	it	mi
	fmsrmi	s15, r5
	bmi	.L1647
	fconsts	s14, #112
	fcmpes	s15, s14
	fmstat
	it	gt
	fcpysgt	s15, s14
.L1647:
	fsts	s15, [r7, #96]
	movs	r4, #1
	b	.L1767
.L1777:
	ldr	r1, .L1796+112
	movs	r5, #0
	add	r2, sp, #112
	mov	r0, r4
	str	r5, [r2, #-64]!	@ float
.LPIC99:
	add	r1, pc
	bl	__isoc99_sscanf(PLT)
	flds	s15, [sp, #48]
	fcmpezs	s15
	fmstat
	it	mi
	fmsrmi	s15, r5
	bmi	.L1650
	fconsts	s14, #112
	fcmpes	s15, s14
	fmstat
	it	gt
	fcpysgt	s15, s14
.L1650:
	fsts	s15, [r7, #100]
	movs	r4, #1
	b	.L1767
.L1654:
	movs	r5, #1
	mov	r0, r4
	strb	r5, [r7, #301]
	mov	r4, r5
	bl	nsvg__parseColor(PLT)
	str	r0, [r7, #92]
	b	.L1767
.L1780:
	ldrb	r3, [r4]	@ zero_extendqisi2
	add	r2, r7, #244
	str	r2, [sp, #12]
	cmp	r3, #110
	it	eq
	moveq	r3, r0
	beq	.L1663
	ldr	r8, .L1796+116
	add	r10, sp, #48
	ldr	r9, .L1796+120
	flds	s16, .L1796
.LPIC105:
	add	r8, pc
	str	r0, [sp, #8]
.LPIC106:
	add	r9, pc
	str	r7, [sp, #16]
	str	r5, [sp, #20]
.L1664:
	cmp	r3, #0
	beq	.L1771
	mov	r1, #0
	mov	r5, r3
	strb	r1, [sp, #48]
	b	.L1665
.L1667:
	ldrb	r5, [r4, #1]!	@ zero_extendqisi2
	cbz	r5, .L1720
.L1665:
	mov	r0, r8
	mov	r1, r5
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L1667
	cmp	r5, #44
	beq	.L1667
	ldrb	r7, [r4]	@ zero_extendqisi2
	cbz	r7, .L1720
	mov	r5, r0
	b	.L1668
.L1671:
	cmp	r7, #44
	add	r3, sp, #112
	add	r3, r3, r5
	beq	.L1770
	cmp	r5, #62
	itt	le
	strble	r7, [r3, #-64]
	addle	r5, r5, #1
	ldrb	r7, [r4, #1]!	@ zero_extendqisi2
	cbz	r7, .L1770
.L1668:
	mov	r0, r9
	mov	r1, r7
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L1671
.L1770:
	add	r3, r10, r5
.L1666:
	mov	r2, #0
	strb	r2, [r3]
	ldrb	r3, [sp, #48]	@ zero_extendqisi2
	cbz	r3, .L1771
	ldr	r2, [sp, #8]
	cmp	r2, #7
	ble	.L1792
.L1675:
	ldrb	r3, [r4]	@ zero_extendqisi2
	b	.L1664
.L1720:
	mov	r3, r10
	b	.L1666
.L1792:
	flds	s15, [r6, #40]
	mov	r3, r2
	flds	s14, [r6, #36]
	adds	r3, r3, #1
	ldr	r1, [sp, #12]
	fmuls	s15, s15, s15
	add	fp, r1, r2, lsl #2
	fmacs	s15, s14, s14
	fsqrts	s0, s15
	fcmps	s0, s0
	fmstat
	bne	.L1793
.L1676:
	fmuls	s0, s0, s16
	mov	r1, r10
	ldr	r0, [sp, #20]
	str	r3, [sp, #8]
	bl	nsvg__parseCoordinate.constprop.38(PLT)
	fabss	s0, s0
	fsts	s0, [fp]
	b	.L1675
.L1771:
	ldr	r3, [sp, #8]
	ldr	r7, [sp, #16]
	cmp	r3, #0
	beq	.L1663
	ldr	r3, [sp, #12]
	sbfx	r2, r3, #2, #1
	ldr	r3, [sp, #8]
	and	r2, r2, #3
	cmp	r2, r3
	it	cs
	movcs	r2, r3
	cmp	r3, #6
	it	ls
	movls	r2, r3
	bhi	.L1794
.L1679:
	cmp	r2, #1
	flds	s15, [r7, #244]
	it	ls
	movls	r3, #1
	bls	.L1681
	flds	s14, [r7, #248]
	cmp	r2, #2
	it	ls
	movls	r3, #2
	fadds	s15, s15, s14
	bls	.L1681
	flds	s14, [r7, #252]
	cmp	r2, #3
	it	ls
	movls	r3, #3
	fadds	s15, s15, s14
	bls	.L1681
	flds	s14, [r7, #256]
	cmp	r2, #4
	it	ls
	movls	r3, #4
	fadds	s15, s15, s14
	bls	.L1681
	flds	s14, [r7, #260]
	cmp	r2, #5
	ite	ls
	movls	r3, #5
	movhi	r3, #6
	fadds	s15, s15, s14
	itt	hi
	fldshi	s14, [r7, #264]
	faddshi	s15, s15, s14
.L1681:
	ldr	r1, [sp, #8]
	cmp	r2, r1
	beq	.L1682
.L1680:
	subs	r0, r1, r2
	lsrs	r1, r0, #2
	lsls	r4, r1, #2
	cbz	r1, .L1683
	adds	r2, r2, #61
	vmov.f32	q8, #0.0  @ v4sf
	add	r5, r7, r2, lsl #2
	movs	r2, #0
.L1689:
	adds	r2, r2, #1
	vld1.64	{d18-d19}, [r5:64]!
	cmp	r1, r2
	vadd.f32	q8, q8, q9
	bhi	.L1689
	vadd.f32	d16, d16, d17
	vmov.f32	q9, #0.0  @ v4sf
	cmp	r4, r0
	add	r3, r3, r4
	vpadd.f32	d18, d16, d16
	vmov.32	r2, d18[0]
	fmsr	s14, r2
	fadds	s15, s15, s14
	beq	.L1682
.L1683:
	ldr	r2, [sp, #12]
	add	r1, r2, r3, lsl #2
	adds	r2, r3, #1
	flds	s14, [r1]
	ldr	r1, [sp, #8]
	cmp	r2, r1
	fadds	s15, s15, s14
	bge	.L1682
	ldr	r1, [sp, #12]
	adds	r3, r3, #2
	add	r2, r1, r2, lsl #2
	flds	s14, [r2]
	ldr	r2, [sp, #8]
	cmp	r2, r3
	fadds	s15, s15, s14
	ble	.L1682
	add	r3, r1, r3, lsl #2
	flds	s14, [r3]
	fadds	s15, s15, s14
.L1682:
	flds	s14, .L1796+4
	ldr	r3, [sp, #8]
	fcmpes	s15, s14
	fmstat
	it	ls
	movls	r3, #0
.L1663:
	str	r3, [r7, #276]
	movs	r4, #1
	b	.L1767
.L1781:
	flds	s14, [r6, #36]
	flds	s0, [r6, #40]
	fmuls	s14, s14, s14
	fmuls	s0, s0, s0
	fadds	s15, s0, s14
	fsqrts	s15, s15
	fcmps	s15, s15
	fmstat
	bne	.L1795
.L1692:
	flds	s0, .L1796
	mov	r1, r4
	mov	r0, r5
	movs	r4, #1
	fmuls	s0, s15, s0
	bl	nsvg__parseCoordinate.constprop.38(PLT)
	fsts	s0, [r7, #240]
	b	.L1767
.L1783:
	ldr	r1, .L1796+124
	mov	r0, r4
.LPIC111:
	add	r1, pc
	bl	strcmp(PLT)
	cbz	r0, .L1697
	ldr	r1, .L1796+128
	mov	r0, r4
.LPIC112:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1732
	ldr	r1, .L1796+132
	mov	r0, r4
.LPIC113:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	ite	eq
	moveq	r0, #2
	movne	r0, #0
.L1697:
	strb	r0, [r7, #281]
	movs	r4, #1
	b	.L1767
.L1797:
	.align	2
.L1796:
	.word	1060439283
	.word	897988541
	.word	.LC13-(.LPIC88+4)
	.word	.LC14-(.LPIC91+4)
	.word	.LC15-(.LPIC92+4)
	.word	.LC16-(.LPIC93+4)
	.word	.LC15-(.LPIC94+4)
	.word	.LC17-(.LPIC95+4)
	.word	.LC0-(.LPIC89+4)
	.word	.LC0-(.LPIC90+4)
	.word	.LC18-(.LPIC96+4)
	.word	.LC20-(.LPIC98+4)
	.word	.LC21-(.LPIC100+4)
	.word	.LC15-(.LPIC101+4)
	.word	.LC17-(.LPIC102+4)
	.word	.LC22-(.LPIC103+4)
	.word	.LC23-(.LPIC104+4)
	.word	.LC24-(.LPIC107+4)
	.word	.LC25-(.LPIC108+4)
	.word	.LC26-(.LPIC110+4)
	.word	.LC30-(.LPIC114+4)
	.word	.LC33-(.LPIC118+4)
	.word	.LC36-(.LPIC121+4)
	.word	.LC37-(.LPIC122+4)
	.word	.LC38-(.LPIC123+4)
	.word	.LC39-(.LPIC124+4)
	.word	.LC40-(.LPIC126+4)
	.word	.LC19-(.LPIC97+4)
	.word	.LC19-(.LPIC99+4)
	.word	.LC0-(.LPIC105+4)
	.word	.LC0-(.LPIC106+4)
	.word	.LC27-(.LPIC111+4)
	.word	.LC28-(.LPIC112+4)
	.word	.LC29-(.LPIC113+4)
.L1784:
	ldr	r1, .L1798+8
	mov	r0, r4
.LPIC115:
	add	r1, pc
	bl	strcmp(PLT)
	cbz	r0, .L1699
	ldr	r1, .L1798+12
	mov	r0, r4
.LPIC116:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1735
	ldr	r1, .L1798+16
	mov	r0, r4
.LPIC117:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	ite	eq
	moveq	r0, #2
	movne	r0, #0
.L1699:
	strb	r0, [r7, #280]
	movs	r4, #1
	b	.L1767
.L1782:
	ldr	r1, .L1798+20
	movs	r5, #0
	add	r2, sp, #112
	mov	r0, r4
	str	r5, [r2, #-64]!	@ float
.LPIC109:
	add	r1, pc
	bl	__isoc99_sscanf(PLT)
	flds	s15, [sp, #48]
	fcmpezs	s15
	fmstat
	it	mi
	fmsrmi	s15, r5
	bmi	.L1694
	fconsts	s14, #112
	fcmpes	s15, s14
	fmstat
	it	gt
	fcpysgt	s15, s14
.L1694:
	fsts	s15, [r7, #104]
	movs	r4, #1
	b	.L1767
.L1742:
	movs	r4, #0
	b	.L1767
.L1785:
	ldr	r1, .L1798+24
	mov	r0, r4
.LPIC119:
	add	r1, pc
	bl	strcmp(PLT)
	cbz	r0, .L1701
	ldr	r1, .L1798+28
	mov	r0, r4
.LPIC120:
	add	r1, pc
	bl	strcmp(PLT)
	clz	r0, r0
	lsrs	r0, r0, #5
.L1701:
	strb	r0, [r7, #282]
	movs	r4, #1
	b	.L1767
.L1794:
	cmp	r2, #0
	bne	.L1679
	flds	s15, .L1798
	mov	r3, r2
	ldr	r1, [sp, #8]
	b	.L1680
.L1732:
	movs	r0, #1
	b	.L1697
.L1791:
	bl	sqrtf(PLT)
	fcpys	s15, s0
	b	.L1661
.L1735:
	movs	r0, #1
	b	.L1699
.L1793:
	fcpys	s0, s15
	str	r3, [sp, #4]
	bl	sqrtf(PLT)
	ldr	r3, [sp, #4]
	b	.L1676
.L1787:
	mov	r1, r4
	add	r4, sp, #24
	mov	r0, r4
	add	r6, sp, #48
	bl	nsvg__parseTransform(PLT)
	mov	lr, r4
	mov	r5, r6
	ldmia	lr!, {r0, r1, r2, r3}
	movs	r4, #1
	flds	s9, [r7, #72]
	flds	s8, [r7, #76]
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1}
	flds	s15, [r7, #64]
	stmia	r6, {r0, r1}
	flds	s11, [sp, #68]
	flds	s12, [sp, #64]
	flds	s7, [sp, #56]
	flds	s14, [r7, #68]
	flds	s13, [sp, #48]
	fmuls	s10, s9, s11
	fmuls	s11, s8, s11
	flds	s6, [sp, #52]
	flds	s4, [r7, #80]
	fmacs	s10, s15, s12
	fmacs	s11, s14, s12
	fmuls	s12, s14, s13
	fmuls	s14, s14, s7
	fmuls	s13, s15, s13
	fmuls	s15, s15, s7
	flds	s7, [sp, #60]
	flds	s5, [r7, #84]
	fmacs	s12, s8, s6
	fmacs	s13, s9, s6
	fmacs	s14, s8, s7
	fmacs	s15, s9, s7
	fadds	s10, s10, s4
	fadds	s11, s11, s5
	fsts	s12, [sp, #52]
	fsts	s13, [sp, #48]
	fsts	s10, [sp, #64]
	fsts	s11, [sp, #68]
	fsts	s14, [sp, #60]
	fsts	s15, [sp, #56]
	ldmia	r5!, {r0, r1, r2, r3}
	str	r0, [r7, #64]	@ unaligned
	str	r1, [r7, #68]	@ unaligned
	ldmia	r5!, {r0, r1}
	str	r2, [r7, #72]	@ unaligned
	str	r3, [r7, #76]	@ unaligned
	str	r0, [r7, #80]	@ unaligned
	str	r1, [r7, #84]	@ unaligned
	b	.L1767
.L1786:
	flds	s0, [r6, #40]
	flds	s15, [r6, #36]
	fmuls	s0, s0, s0
	fmacs	s0, s15, s15
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	beq	.L1703
	bl	sqrtf(PLT)
	fcpys	s15, s0
.L1703:
	flds	s0, .L1798+4
	mov	r1, r4
	mov	r0, r5
	movs	r4, #1
	fmuls	s0, s15, s0
	bl	nsvg__parseCoordinate.constprop.38(PLT)
	fsts	s0, [r7, #284]
	b	.L1767
.L1795:
	fadds	s0, s0, s14
	bl	sqrtf(PLT)
	fcpys	s15, s0
	b	.L1692
.L1790:
	mov	r1, r4
	mov	r0, r5
	fconsts	s0, #112
	movs	r4, #1
	bl	nsvg__parseCoordinate.constprop.38(PLT)
	fsts	s0, [r7, #296]
	b	.L1767
.L1789:
	ldr	r1, .L1798+32
	movs	r5, #0
	add	r2, sp, #112
	mov	r0, r4
	str	r5, [r2, #-64]!	@ float
.LPIC125:
	add	r1, pc
	bl	__isoc99_sscanf(PLT)
	flds	s15, [sp, #48]
	fcmpezs	s15
	fmstat
	it	mi
	fmsrmi	s15, r5
	bmi	.L1707
	fconsts	s14, #112
	fcmpes	s15, s14
	fmstat
	it	gt
	fcpysgt	s15, s14
.L1707:
	fsts	s15, [r7, #292]
	movs	r4, #1
	b	.L1767
.L1788:
	mov	r0, r4
	movs	r4, #1
	bl	nsvg__parseColor(PLT)
	str	r0, [r7, #288]
	b	.L1767
.L1799:
	.align	2
.L1798:
	.word	0
	.word	1060439283
	.word	.LC31-(.LPIC115+4)
	.word	.LC28-(.LPIC116+4)
	.word	.LC32-(.LPIC117+4)
	.word	.LC19-(.LPIC109+4)
	.word	.LC34-(.LPIC119+4)
	.word	.LC35-(.LPIC120+4)
	.word	.LC19-(.LPIC125+4)
	.size	nsvg__parseAttr, .-nsvg__parseAttr
	.section	.text.nsvg__parseNameValue,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseNameValue, %function
nsvg__parseNameValue:
	@ args = 0, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, r2
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, r1
	sub	sp, sp, #1024
	mov	r6, r2
	mov	r8, r0
	bcs	.L1815
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #58
	beq	.L1815
	adds	r3, r1, #1
	b	.L1805
.L1802:
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r2, #58
	beq	.L1833
.L1805:
	cmp	r3, r6
	mov	r4, r3
	add	r3, r3, #1
	bne	.L1802
	mov	r5, r6
.L1804:
	cmp	r9, r5
	it	cs
	movcs	r7, r4
	bcs	.L1801
	ldr	r10, .L1834
.LPIC127:
	add	r10, pc
.L1803:
	mov	r7, r5
	ldrb	r1, [r5], #-1	@ zero_extendqisi2
	mov	r0, r10
	cmp	r1, #58
	beq	.L1806
	bl	strchr(PLT)
	cbz	r0, .L1801
.L1806:
	cmp	r5, r9
	mov	r7, r5
	bne	.L1803
.L1801:
	adds	r7, r7, #1
	rsb	r7, r9, r7
	cmp	r7, #512
	bge	.L1818
	cmp	r7, #0
	bne	.L1830
	mov	r10, sp
.L1808:
	cmp	r4, r6
	mov	r3, #0
	strb	r3, [r10, r7]
	bcs	.L1809
	ldr	r7, .L1834+4
	mov	r5, r4
.LPIC128:
	add	r7, pc
.L1810:
	mov	r4, r5
	ldrb	r1, [r5], #1	@ zero_extendqisi2
	mov	r0, r7
	cmp	r1, #58
	beq	.L1811
	bl	strchr(PLT)
	cbz	r0, .L1809
.L1811:
	cmp	r5, r6
	mov	r4, r5
	bne	.L1810
.L1809:
	subs	r6, r6, r4
	cmp	r6, #512
	bge	.L1819
	cbnz	r6, .L1831
	add	r3, sp, #512
.L1813:
	mov	r0, r8
	mov	r1, sp
	movs	r4, #0
	mov	r2, r3
	strb	r4, [r3, r6]
	bl	nsvg__parseAttr(PLT)
	add	sp, sp, #1024
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L1818:
	movw	r2, #511
	mov	r7, r2
.L1807:
	mov	r1, r9
	mov	r0, sp
	mov	r10, sp
	bl	memcpy(PLT)
	b	.L1808
.L1819:
	movw	r2, #511
	mov	r6, r2
.L1812:
	add	r3, sp, #512
	mov	r1, r4
	mov	r0, r3
	bl	memcpy(PLT)
	mov	r3, r0
	b	.L1813
.L1833:
	mov	r5, r4
	b	.L1804
.L1815:
	mov	r4, r9
	mov	r7, r9
	b	.L1801
.L1831:
	mov	r2, r6
	b	.L1812
.L1830:
	mov	r2, r7
	b	.L1807
.L1835:
	.align	2
.L1834:
	.word	.LC0-(.LPIC127+4)
	.word	.LC0-(.LPIC128+4)
	.size	nsvg__parseNameValue, .-nsvg__parseNameValue
	.section	.text.nsvg__parseGradientStop,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseGradientStop, %function
nsvg__parseGradientStop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	add	r8, r0, #38912
	ldr	r2, [r8]
	mov	r7, r0
	mov	r6, #304
	mov	r5, r1
	ldr	r1, [r1]
	movs	r3, #0
	movs	r4, #0
	mov	r0, #1065353216
	mla	r6, r6, r2, r7
	fstmfdd	sp!, {d8}
	str	r4, [r6, #296]	@ float
	mov	r4, r3
	str	r0, [r6, #292]	@ float
	str	r3, [r6, #288]
	cbz	r1, .L1840
.L1841:
	adds	r3, r3, #1
	adds	r4, r4, #2
	ldr	r2, [r5, r3, lsl #2]
	mov	r0, r7
	bl	nsvg__parseAttr(PLT)
	ldr	r1, [r5, r4, lsl #2]
	mov	r3, r4
	cmp	r1, #0
	bne	.L1841
.L1840:
	ldr	r4, [r8, #24]
	cmp	r4, #0
	beq	.L1836
	ldr	r1, [r4, #200]
	ldr	r0, [r4, #204]
	adds	r1, r1, #1
	str	r1, [r4, #200]
	lsls	r1, r1, #3
	bl	realloc(PLT)
	mov	r1, r0
	str	r0, [r4, #204]
	cbz	r0, .L1836
	ldr	r0, [r4, #200]
	subs	r4, r0, #1
	cmp	r4, #0
	itt	le
	addle	r5, r1, r4, lsl #3
	fldsle	s16, [r6, #296]
	ble	.L1844
	flds	s16, [r6, #296]
	flds	s15, [r1, #4]
	fcmpes	s16, s15
	fmstat
	bmi	.L1850
	add	r3, r1, #8
	movs	r2, #0
	b	.L1846
.L1849:
	flds	s15, [r3, #-4]
	fcmpes	s15, s16
	fmstat
	bgt	.L1864
.L1846:
	adds	r2, r2, #1
	mov	r5, r3
	cmp	r4, r2
	add	r3, r3, #8
	bne	.L1849
	add	r5, r1, r4, lsl #3
.L1844:
	flds	s14, [r6, #292]
	flds	s15, .L1865
	ldr	r2, [r6, #288]
	fsts	s16, [r5, #4]
	fmuls	s15, s14, s15
	ftouizs	s15, s15
	fmrs	r3, s15	@ int
	orr	r3, r2, r3, lsl #24
	str	r3, [r5]
.L1836:
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, pc}
.L1864:
	cmp	r4, r2
	ble	.L1844
.L1845:
	add	r3, r0, #536870912
	lsls	r0, r0, #3
	subs	r3, r3, #1
	subs	r2, r3, r2
	sub	r3, r0, #8
	lsls	r2, r2, #3
	subs	r0, r0, r2
	subs	r3, r3, r2
	add	r0, r0, r1
	add	r1, r1, r3
	bl	memmove(PLT)
	b	.L1844
.L1850:
	mov	r5, r1
	movs	r2, #0
	b	.L1845
.L1866:
	.align	2
.L1865:
	.word	1132396544
	.size	nsvg__parseGradientStop, .-nsvg__parseGradientStop
	.section	.text.nsvg__parseGradient,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parseGradient, %function
nsvg__parseGradient:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	sub	sp, sp, #36
	movs	r0, #212
	mov	r6, r1
	mov	r4, r2
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L1867
	movs	r1, #0
	movs	r2, #212
	mov	r5, r0
	bl	memset(PLT)
	cmp	r4, #2
	mov	r3, #1
	strb	r4, [r5, #128]
	strb	r3, [r5, #173]
	beq	.L1904
	cmp	r4, #3
	beq	.L1905
.L1870:
	ldr	r1, [r6]
	vmov.f32	d18, #0.0  @ v2sf
	vldr	d17, .L1911
	vldr	d16, .L1911+8
	vstr	d18, [r5, #192]
	vstr	d17, [r5, #176]
	vstr	d16, [r5, #184]
	cmp	r1, #0
	beq	.L1890
	ldr	r3, .L1911+16
	movs	r2, #0
	ldr	r9, .L1911+20
	mov	r4, r2
	add	r10, r6, #16
	mov	fp, r6
.LPIC131:
	add	r3, pc
	str	r3, [sp, #4]
.LPIC129:
	add	r9, pc
	ldr	r3, .L1911+24
.LPIC132:
	add	r3, pc
	str	r3, [sp, #8]
	ldr	r3, .L1911+28
.LPIC135:
	add	r3, pc
	str	r3, [sp, #12]
	ldr	r3, .L1911+32
.LPIC133:
	add	r3, pc
	str	r3, [sp, #16]
	ldr	r3, .L1911+36
.LPIC134:
	add	r3, pc
	str	r3, [sp, #20]
	b	.L1891
.L1906:
	ldrb	r0, [r1, #1]	@ zero_extendqisi2
	cmp	r0, #100
	bne	.L1872
	ldrb	r7, [r1, #2]	@ zero_extendqisi2
	cbnz	r7, .L1872
	adds	r2, r2, #1
	mov	r0, r5
	ldr	r1, [r6, r2, lsl #2]
	movs	r2, #63
	bl	strncpy(PLT)
	strb	r7, [r5, #63]
.L1873:
	pld	[r10]
	sub	fp, r10, #8
	add	r10, r10, #8
	adds	r4, r4, #2
	mov	r2, r4
	ldr	r1, [r10, #-16]
	cbz	r1, .L1890
.L1891:
	ldrb	r0, [r1]	@ zero_extendqisi2
	cmp	r0, #105
	beq	.L1906
.L1872:
	adds	r7, r2, #1
	mov	r0, r8
	ldr	r2, [r6, r7, lsl #2]
	bl	nsvg__parseAttr(PLT)
	cmp	r0, #0
	bne	.L1873
	ldr	fp, [fp]
	mov	r1, r9
	mov	r0, fp
	bl	strcmp(PLT)
	mov	r2, r0
	cbnz	r0, .L1874
	ldr	r1, .L1911+40
	ldr	r0, [r6, r7, lsl #2]
	str	r2, [sp]
.LPIC130:
	add	r1, pc
	bl	strcmp(PLT)
	ldr	r2, [sp]
	cbnz	r0, .L1875
	movs	r3, #1
	strb	r3, [r5, #173]
	b	.L1873
.L1890:
	add	r8, r8, #38912
	ldr	r3, [r8, #24]
	str	r3, [r5, #208]
	str	r5, [r8, #24]
.L1867:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1874:
	mov	r0, fp
	ldr	r1, [sp, #4]
	bl	strcmp(PLT)
	cbz	r0, .L1907
	ldrb	r2, [fp]	@ zero_extendqisi2
	cmp	r2, #99
	bne	.L1877
	ldrb	r1, [fp, #1]	@ zero_extendqisi2
	cmp	r1, #120
	beq	.L1908
	cmp	r1, #121
	bne	.L1879
	ldrb	r1, [fp, #2]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L1879
.L1900:
	ldr	r1, [r6, r7, lsl #2]
	add	r7, sp, #24
	mov	r0, r7
	bl	nsvg__parseCoordinateRaw(PLT)
	ldmia	r7, {r0, r1}
	add	r3, r5, #140
	stmia	r3, {r0, r1}
	b	.L1873
.L1875:
	strb	r2, [r5, #173]
	b	.L1873
.L1877:
	cmp	r2, #114
	bne	.L1880
	ldrb	r1, [fp, #1]	@ zero_extendqisi2
	cmp	r1, #0
	bne	.L1881
.L1901:
	ldr	r1, [r6, r7, lsl #2]
	add	r7, sp, #24
	mov	r0, r7
	bl	nsvg__parseCoordinateRaw(PLT)
	ldmia	r7, {r0, r1}
	add	r3, r5, #148
	stmia	r3, {r0, r1}
	b	.L1873
.L1907:
	ldr	r1, [r6, r7, lsl #2]
	add	r0, r5, #176
	bl	nsvg__parseTransform(PLT)
	b	.L1873
.L1904:
	movs	r1, #0
	movs	r3, #8
	movs	r2, #0
	movt	r1, 17096
	str	r3, [r5, #136]
	str	r2, [r5, #132]	@ float
	str	r2, [r5, #140]	@ float
	str	r2, [r5, #156]	@ float
	str	r1, [r5, #148]	@ float
	str	r3, [r5, #144]
	str	r3, [r5, #152]
	str	r3, [r5, #160]
	b	.L1870
.L1908:
	ldrb	r1, [fp, #2]	@ zero_extendqisi2
	cbz	r1, .L1899
.L1879:
	rsbs	r1, r2, #120
	bne	.L1883
	ldrb	r0, [fp, #1]	@ zero_extendqisi2
	cmp	r0, #49
	bne	.L1883
	ldrb	r0, [fp, #2]	@ zero_extendqisi2
	cbnz	r0, .L1883
.L1899:
	ldr	r1, [r6, r7, lsl #2]
	add	r7, sp, #24
	mov	r0, r7
	bl	nsvg__parseCoordinateRaw(PLT)
	ldmia	r7, {r0, r1}
	add	r3, r5, #132
	stmia	r3, {r0, r1}
	b	.L1873
.L1905:
	movs	r2, #0
	movs	r3, #8
	movt	r2, 16968
	str	r3, [r5, #136]
	str	r3, [r5, #144]
	str	r2, [r5, #132]	@ float
	str	r2, [r5, #140]	@ float
	str	r2, [r5, #148]	@ float
	str	r3, [r5, #152]
	b	.L1870
.L1880:
	cmp	r2, #102
	bne	.L1879
	ldrb	r1, [fp, #1]	@ zero_extendqisi2
	cmp	r1, #120
	beq	.L1909
	cmp	r1, #121
	bne	.L1881
	ldrb	r1, [fp, #2]	@ zero_extendqisi2
	cbnz	r1, .L1881
	ldr	r1, [r6, r7, lsl #2]
	add	r7, sp, #24
	mov	r0, r7
	bl	nsvg__parseCoordinateRaw(PLT)
	ldmia	r7, {r0, r1}
	add	r3, r5, #164
	stmia	r3, {r0, r1}
	b	.L1873
.L1909:
	ldrb	r1, [fp, #2]	@ zero_extendqisi2
	cbz	r1, .L1902
.L1881:
	rsb	r1, r2, #120
.L1883:
	rsbs	r2, r2, #121
	bne	.L1884
	ldrb	r0, [fp, #1]	@ zero_extendqisi2
	cmp	r0, #49
	bne	.L1884
	ldrb	r0, [fp, #2]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L1900
.L1884:
	cbz	r1, .L1910
.L1885:
	cbnz	r2, .L1886
	ldrb	r2, [fp, #1]	@ zero_extendqisi2
	cmp	r2, #50
	bne	.L1886
	ldrb	r2, [fp, #2]	@ zero_extendqisi2
	cbz	r2, .L1902
.L1886:
	mov	r0, fp
	ldr	r1, [sp, #8]
	bl	strcmp(PLT)
	cbnz	r0, .L1887
	ldr	r7, [r6, r7, lsl #2]
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #112
	bne	.L1888
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	cmp	r3, #97
	bne	.L1888
	ldrb	r3, [r7, #2]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L1888
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cbnz	r3, .L1888
.L1903:
	strb	r3, [r5, #172]
	b	.L1873
.L1902:
	ldr	r1, [r6, r7, lsl #2]
	add	r7, sp, #24
	mov	r0, r7
	bl	nsvg__parseCoordinateRaw(PLT)
	ldmia	r7, {r0, r1}
	add	r3, r5, #156
	stmia	r3, {r0, r1}
	b	.L1873
.L1910:
	ldrb	r1, [fp, #1]	@ zero_extendqisi2
	cmp	r1, #50
	bne	.L1885
	ldrb	r1, [fp, #2]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L1901
	b	.L1885
.L1887:
	mov	r0, fp
	ldr	r1, [sp, #12]
	bl	strcmp(PLT)
	mov	fp, r0
	cmp	r0, #0
	bne	.L1873
	ldr	r1, [r6, r7, lsl #2]
	add	r0, r5, #64
	movs	r2, #62
	adds	r1, r1, #1
	bl	strncpy(PLT)
	strb	fp, [r5, #126]
	b	.L1873
.L1888:
	mov	r0, r7
	ldr	r1, [sp, #16]
	bl	strcmp(PLT)
	cbnz	r0, .L1889
	movs	r3, #1
	strb	r3, [r5, #172]
	b	.L1873
.L1889:
	mov	r0, r7
	ldr	r1, [sp, #20]
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L1873
	movs	r3, #2
	b	.L1903
.L1912:
	.align	3
.L1911:
	.word	1065353216
	.word	0
	.word	0
	.word	1065353216
	.word	.LC43-(.LPIC131+4)
	.word	.LC41-(.LPIC129+4)
	.word	.LC44-(.LPIC132+4)
	.word	.LC47-(.LPIC135+4)
	.word	.LC45-(.LPIC133+4)
	.word	.LC46-(.LPIC134+4)
	.word	.LC42-(.LPIC130+4)
	.size	nsvg__parseGradient, .-nsvg__parseGradient
	.section	.text.nsvg__parsePoly,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__parsePoly, %function
nsvg__parsePoly:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #100
	str	r1, [sp, #8]
	add	fp, r0, #38912
	movs	r4, #0
	ldr	r1, [r1]
	str	r0, [sp, #4]
	str	r2, [sp, #20]
	str	r4, [fp, #8]
	cmp	r1, #0
	beq	.L1931
	ldr	r3, .L1957
	mov	r10, r4
	ldr	r5, .L1957+4
	add	r9, sp, #32
	str	r4, [sp]
.LPIC136:
	add	r3, pc
	str	r3, [sp, #16]
.LPIC137:
	add	r5, pc
	ldr	r3, .L1957+8
.LPIC138:
	add	r3, pc
	str	r3, [sp, #12]
	ldr	r3, [sp, #8]
	add	r8, r3, #24
	mov	r6, r3
.L1932:
	ldr	r3, [sp, #8]
	adds	r4, r4, #1
	ldr	r0, [sp, #4]
	ldr	r2, [r3, r4, lsl #2]
	bl	nsvg__parseAttr(PLT)
	cmp	r0, #0
	bne	.L1915
	ldr	r0, [r6]
	ldr	r1, [sp, #16]
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L1915
	ldr	r3, [sp, #8]
	mov	r6, r0
	ldr	r4, [r3, r4, lsl #2]
.L1916:
	ldrb	r2, [r4]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L1915
.L1930:
	mov	r3, #0
	strb	r3, [sp, #32]
	ldrb	r7, [r4]	@ zero_extendqisi2
	cbnz	r7, .L1918
	b	.L1922
.L1919:
	ldrb	r7, [r4, #1]!	@ zero_extendqisi2
	cbz	r7, .L1922
.L1918:
	mov	r0, r5
	mov	r1, r7
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L1919
	cmp	r7, #44
	beq	.L1919
	sub	r2, r7, #45
	cmp	r7, #43
	it	ne
	cmpne	r2, #1
	bls	.L1933
	ldr	r0, [sp, #12]
	mov	r1, r7
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L1921
.L1933:
	mov	r0, r4
	mov	r1, r9
	bl	nsvg__parseNumber.constprop.37(PLT)
	mov	r4, r0
.L1922:
	mov	r0, r9
	movs	r1, #0
	bl	strtod(PLT)
	fcvtsd	s0, d0
	add	r3, sp, #96
	add	r2, r3, r6, lsl #2
	cmp	r6, #1
	it	ne
	movne	r6, #1
	fsts	s0, [r2, #-72]
	bne	.L1916
	ldr	r3, [sp]
	cbnz	r3, .L1924
	ldr	r2, [fp, #8]
	ldr	r7, [sp, #24]	@ float
	ldr	r6, [sp, #28]	@ float
	cmp	r2, #0
	ble	.L1925
	ldr	r1, [fp, #4]
	subs	r2, r2, #1
	add	r2, r1, r2, lsl #3
	str	r7, [r2]	@ float
	str	r6, [r2, #4]	@ float
.L1926:
	ldr	r3, [sp]
	movs	r6, #0
	ldrb	r2, [r4]	@ zero_extendqisi2
	adds	r3, r3, #1
	str	r3, [sp]
	cmp	r2, #0
	bne	.L1930
.L1915:
	pld	[r8]
	sub	r6, r8, #16
	add	r8, r8, #8
	add	r10, r10, #2
	mov	r4, r10
	ldr	r1, [r8, #-24]
	cmp	r1, #0
	bne	.L1932
.L1931:
	ldr	r3, [sp, #20]
	ldr	r0, [sp, #4]
	uxtb	r1, r3
	bl	nsvg__addPath(PLT)
	ldr	r0, [sp, #4]
	bl	nsvg__addShape(PLT)
	add	sp, sp, #100
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1924:
	ldr	r0, [sp, #4]
	flds	s0, [sp, #24]
	flds	s1, [sp, #28]
	bl	nsvg__lineTo(PLT)
	b	.L1926
.L1921:
	adds	r4, r4, #1
	strb	r7, [sp, #32]
	strb	r0, [sp, #33]
	b	.L1922
.L1925:
	ldr	r1, [fp, #12]
	cmp	r2, r1
	bge	.L1927
	ldr	r1, [fp, #4]
.L1928:
	add	r1, r1, r2, lsl #3
	adds	r2, r2, #1
	str	r7, [r1]	@ float
	str	r6, [r1, #4]	@ float
	str	r2, [fp, #8]
	b	.L1926
.L1927:
	cbnz	r1, .L1956
	movs	r1, #64
	movs	r2, #8
.L1929:
	str	r2, [fp, #12]
	ldr	r0, [fp, #4]
	bl	realloc(PLT)
	str	r0, [fp, #4]
	cmp	r0, #0
	beq	.L1926
	ldr	r2, [fp, #8]
	mov	r1, r0
	b	.L1928
.L1956:
	lsls	r2, r1, #1
	lsls	r1, r1, #4
	b	.L1929
.L1958:
	.align	2
.L1957:
	.word	.LC48-(.LPIC136+4)
	.word	.LC0-(.LPIC137+4)
	.word	.LC5-(.LPIC138+4)
	.size	nsvg__parsePoly, .-nsvg__parsePoly
	.section	.text.nsvg__startElement,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	nsvg__startElement, %function
nsvg__startElement:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r4, r0, #38912
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #172
	mov	r5, r0
	mov	r6, r1
	ldrb	r3, [r4, #61]	@ zero_extendqisi2
	str	r2, [sp, #12]
	cbz	r3, .L1960
	mov	r0, r1
	ldr	r1, .L2569+8
.LPIC139:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2311
	ldr	r1, .L2569+12
	mov	r0, r6
.LPIC140:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2312
	ldr	r1, .L2569+16
	mov	r0, r6
.LPIC141:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1964
.L1959:
	add	sp, sp, #172
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1960:
	ldrb	r7, [r1]	@ zero_extendqisi2
	cmp	r7, #103
	beq	.L2537
.L1965:
	ldr	r1, .L2569+20
	mov	r0, r6
.LPIC145:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L1981
	ldrb	r3, [r4, #60]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1959
	ldr	r3, [r4]
	cmp	r3, #126
	bgt	.L1982
	mov	r1, #304
	adds	r0, r3, #1
	str	r0, [r4]
	mov	r2, r1
	mla	r0, r1, r0, r5
	mla	r1, r1, r3, r5
	bl	memcpy(PLT)
.L1982:
	ldr	r3, [sp, #12]
	ldr	r6, [r3]
	cmp	r6, #0
	beq	.L2530
	mov	r0, r3
	ldr	r8, .L2569+24
	ldr	r3, .L2569+28
	adds	r0, r0, #24
	ldr	r7, .L2569+32
	str	r4, [sp, #32]
.LPIC147:
	add	r8, pc
.LPIC146:
	add	r3, pc
	mov	r4, r6
.LPIC148:
	add	r7, pc
	str	r3, [sp, #24]
	movs	r3, #0
	str	r0, [sp, #16]
	str	r3, [sp, #28]
	str	r3, [sp, #20]
.L2001:
	ldrb	r2, [r4]	@ zero_extendqisi2
	adds	r3, r3, #1
	cmp	r2, #100
	beq	.L2538
.L1985:
	ldr	r0, [sp, #12]
	movs	r2, #0
	str	r2, [sp, #8]
	add	r9, sp, #72
	movs	r6, #0
	ldr	r2, [r0, r3, lsl #2]
	str	r4, [sp, #48]
	str	r6, [sp, #56]
	str	r2, [sp, #52]
	str	r6, [sp, #60]
.L1999:
	mov	r0, r4
	ldr	r1, [sp, #24]
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L1987
	add	r2, sp, #168
	add	r6, r2, r6, lsl #2
	ldr	fp, [r6, #-116]
	ldrb	r1, [fp]	@ zero_extendqisi2
.L1988:
	cbz	r1, .L1997
	mov	r6, fp
	b	.L1998
.L1990:
	ldrb	r1, [r6, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L1989
.L1998:
	mov	r0, r8
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L1990
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #59
	it	ne
	cmpne	r3, #0
	beq	.L1989
	mov	fp, r6
.L1992:
	ldrb	r3, [fp, #1]!	@ zero_extendqisi2
	cmp	r3, #59
	it	ne
	cmpne	r3, #0
	bne	.L1992
	cmp	r6, fp
	it	cs
	movcs	r10, fp
	bcs	.L1993
	mov	r4, fp
.L1994:
	mov	r10, r4
	ldrb	r1, [r4], #-1	@ zero_extendqisi2
	mov	r0, r7
	cmp	r1, #59
	beq	.L1995
	bl	strchr(PLT)
	cbz	r0, .L1993
.L1995:
	cmp	r4, r6
	mov	r10, r4
	bne	.L1994
.L1993:
	mov	r1, r6
	add	r2, r10, #1
	mov	r0, r5
	bl	nsvg__parseNameValue(PLT)
	ldrb	r3, [fp]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L2539
.L1997:
	pld	[r9]
	add	r9, r9, #8
	ldr	r3, [sp, #8]
	ldr	r4, [r9, #-24]
	adds	r3, r3, #2
	str	r3, [sp, #8]
	mov	r6, r3
	cmp	r4, #0
	bne	.L1999
.L1986:
	ldr	r3, [sp, #16]
	pld	[r3]
	adds	r3, r3, #8
	str	r3, [sp, #16]
	ldr	r4, [r3, #-24]
	ldr	r3, [sp, #20]
	adds	r3, r3, #2
	str	r3, [sp, #20]
	cmp	r4, #0
	bne	.L2001
	ldr	r3, [sp, #28]
	mov	r6, r4
	ldr	r4, [sp, #32]
	cmp	r3, #0
	beq	.L2530
	flds	s16, .L2569
	mov	r10, r6
	flds	s30, .L2569+4
	mov	r7, r3
	str	r6, [sp, #8]
	str	r6, [r4, #8]
	fcpys	s17, s16
	fcpys	s23, s16
	fcpys	s22, s16
.L2003:
	ldrb	r3, [r7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L2004
	movs	r3, #0
	strb	r3, [sp, #104]
	ldrb	r8, [r7]	@ zero_extendqisi2
	cmp	r8, #0
	beq	.L2004
	ldr	r9, .L2569+36
.LPIC149:
	add	r9, pc
	b	.L2005
.L2006:
	ldrb	r8, [r7, #1]!	@ zero_extendqisi2
	cmp	r8, #0
	beq	.L2004
.L2005:
	mov	r0, r9
	mov	r1, r8
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L2006
	cmp	r8, #44
	beq	.L2006
	sub	r3, r8, #45
	cmp	r8, #43
	it	ne
	cmpne	r3, #1
	bls	.L2350
	ldr	r0, .L2569+40
	mov	r1, r8
.LPIC150:
	add	r0, pc
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L2008
.L2350:
	mov	r0, r7
	add	r1, sp, #104
	bl	nsvg__parseNumber.constprop.37(PLT)
	ldrb	r9, [sp, #104]	@ zero_extendqisi2
	mov	r7, r0
.L2009:
	cmp	r9, #0
	beq	.L2004
	ldr	r0, .L2569+44
	mov	r1, r9
.LPIC151:
	add	r0, pc
	bl	strchr(PLT)
	cmp	r0, #0
	beq	.L2012
	cmp	r10, #9
	ble	.L2540
.L2013:
	ldr	r2, [sp, #8]
	cmp	r10, r2
	blt	.L2003
	sub	r3, r6, #65
	cmp	r3, #53
	bhi	.L2015
	tbh	[pc, r3, lsl #1]
.L2017:
	.2byte	(.L2016-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2018-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2019-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2020-.L2017)/2
	.2byte	(.L2021-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2022-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2023-.L2017)/2
	.2byte	(.L2024-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2025-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2016-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2018-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2019-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2020-.L2017)/2
	.2byte	(.L2021-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2022-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2023-.L2017)/2
	.2byte	(.L2024-.L2017)/2
	.2byte	(.L2015-.L2017)/2
	.2byte	(.L2025-.L2017)/2
.L2537:
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1965
	ldr	r3, [r4]
	cmp	r3, #126
	bgt	.L1966
	mov	r1, #304
	adds	r0, r3, #1
	str	r0, [r4]
	mov	r2, r1
	mla	r0, r1, r0, r5
	mla	r1, r1, r3, r5
	bl	memcpy(PLT)
.L1966:
	ldr	r3, [sp, #12]
	ldr	r4, [r3]
	cmp	r4, #0
	beq	.L1959
	ldr	r3, .L2569+48
	mov	r0, r4
	ldr	r7, .L2569+52
	ldr	r6, .L2569+56
.LPIC142:
	add	r3, pc
	str	r3, [sp, #16]
	movs	r3, #0
	str	r3, [sp, #8]
	mov	fp, r3
	ldr	r3, [sp, #12]
	mov	r10, fp
	ldr	r1, [sp, #16]
.LPIC143:
	add	r7, pc
.LPIC144:
	add	r6, pc
	add	r8, r3, #24
	bl	strcmp(PLT)
	add	r3, r10, #1
	cmp	r0, #0
	bne	.L1968
.L2541:
	ldr	r0, [sp, #12]
	ldr	r4, [r0, r3, lsl #2]
	ldrb	r1, [r4]	@ zero_extendqisi2
	cbnz	r1, .L1979
	b	.L1978
.L1971:
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L1970
.L1979:
	mov	r0, r7
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L1971
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #59
	it	ne
	cmpne	r3, #0
	beq	.L1970
	mov	fp, r4
.L1973:
	ldrb	r3, [fp, #1]!	@ zero_extendqisi2
	cmp	r3, #59
	it	ne
	cmpne	r3, #0
	bne	.L1973
	cmp	r4, fp
	it	cs
	movcs	r10, fp
	bcs	.L1974
	mov	r9, fp
.L1975:
	mov	r10, r9
	ldrb	r1, [r9], #-1	@ zero_extendqisi2
	mov	r0, r6
	cmp	r1, #59
	beq	.L1976
	bl	strchr(PLT)
	cbz	r0, .L1974
.L1976:
	cmp	r9, r4
	mov	r10, r9
	bne	.L1975
.L1974:
	mov	r1, r4
	add	r2, r10, #1
	mov	r0, r5
	bl	nsvg__parseNameValue(PLT)
	ldrb	r1, [fp]	@ zero_extendqisi2
	cbz	r1, .L1977
	ldrb	r1, [fp, #1]	@ zero_extendqisi2
	add	fp, fp, #1
.L1977:
	mov	r4, fp
	cmp	r1, #0
	bne	.L1979
.L1978:
	pld	[r8]
	add	r8, r8, #8
	ldr	r3, [sp, #8]
	ldr	r4, [r8, #-24]
	adds	r3, r3, #2
	str	r3, [sp, #8]
	mov	r10, r3
	cmp	r4, #0
	beq	.L1959
	mov	r0, r4
	ldr	r1, [sp, #16]
	bl	strcmp(PLT)
	add	r3, r10, #1
	cmp	r0, #0
	beq	.L2541
.L1968:
	ldr	r0, [sp, #12]
	mov	r1, r4
	ldr	r2, [r0, r3, lsl #2]
	mov	r0, r5
	bl	nsvg__parseAttr(PLT)
	b	.L1978
.L2570:
	.align	2
.L2569:
	.word	0
	.word	897988541
	.word	.LC49-(.LPIC139+4)
	.word	.LC50-(.LPIC140+4)
	.word	.LC51-(.LPIC141+4)
	.word	.LC3-(.LPIC145+4)
	.word	.LC0-(.LPIC147+4)
	.word	.LC13-(.LPIC146+4)
	.word	.LC0-(.LPIC148+4)
	.word	.LC0-(.LPIC149+4)
	.word	.LC5-(.LPIC150+4)
	.word	.LC52-(.LPIC151+4)
	.word	.LC13-(.LPIC142+4)
	.word	.LC0-(.LPIC143+4)
	.word	.LC0-(.LPIC144+4)
.L1981:
	ldr	r1, .L2571+24
	mov	r0, r6
.LPIC154:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2542
	ldr	r1, .L2571+28
	mov	r0, r6
.LPIC157:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2543
	ldr	r1, .L2571+32
	mov	r0, r6
.LPIC158:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2544
	ldr	r1, .L2571+36
	mov	r0, r6
.LPIC159:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2545
	ldr	r1, .L2571+40
	mov	r0, r6
.LPIC160:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2546
	ldr	r1, .L2571+44
	mov	r0, r6
.LPIC161:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2547
	ldr	r1, .L2571+48
	mov	r0, r6
.LPIC162:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2311
	ldr	r1, .L2571+52
	mov	r0, r6
.LPIC163:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2312
	ldr	r1, .L2571+56
	mov	r0, r6
.LPIC164:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L1964
	ldr	r1, .L2571+60
	mov	r0, r6
.LPIC165:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2548
	cmp	r7, #115
	bne	.L1959
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	cmp	r3, #118
	bne	.L1959
	ldrb	r3, [r6, #2]	@ zero_extendqisi2
	cmp	r3, #103
	bne	.L1959
	ldrb	r3, [r6, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1959
	ldr	r2, [sp, #12]
	ldr	r1, [r2]
	cmp	r1, #0
	beq	.L1959
	mov	r7, r2
	flds	s21, .L2571
	mov	r8, r3
	flds	s20, .L2571+4
	mov	r6, r3
	flds	s19, .L2571+8
	adds	r7, r7, #16
	flds	s18, .L2571+12
	mov	r9, r2
	flds	s17, .L2571+16
	flds	s16, .L2571+20
	mov	r10, r2
	b	.L2349
.L2316:
	ldr	r1, .L2571+64
	mov	r0, r9
.LPIC167:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2549
	ldr	r1, .L2571+68
	mov	r0, r9
.LPIC168:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2550
	ldr	r1, .L2571+72
	mov	r0, r9
.LPIC170:
	add	r1, pc
	bl	strcmp(PLT)
	mov	fp, r0
	cbnz	r0, .L2315
	ldr	r6, [r10, r6, lsl #2]
	ldr	r1, .L2571+76
	mov	r0, r6
.LPIC171:
	add	r1, pc
	bl	strstr(PLT)
	mov	r9, r0
	cmp	r0, #0
	beq	.L2342
	str	fp, [r4, #52]
.L2315:
	pld	[r7]
	sub	r9, r7, #8
	adds	r7, r7, #8
	add	r8, r8, #2
	mov	r6, r8
	ldr	r1, [r7, #-16]
	cmp	r1, #0
	beq	.L1959
.L2349:
	adds	r6, r6, #1
	mov	r0, r5
	ldr	r2, [r10, r6, lsl #2]
	bl	nsvg__parseAttr(PLT)
	cmp	r0, #0
	bne	.L2315
	ldr	r9, [r9]
	ldr	r1, .L2571+80
	mov	r0, r9
.LPIC166:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L2316
	ldr	r1, [r10, r6, lsl #2]
	add	r0, sp, #104
	ldr	r6, [r4, #20]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s15, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2317
	tbh	[pc, r2, lsl #1]
.L2319:
	.2byte	(.L2318-.L2319)/2
	.2byte	(.L2320-.L2319)/2
	.2byte	(.L2321-.L2319)/2
	.2byte	(.L2322-.L2319)/2
	.2byte	(.L2323-.L2319)/2
	.2byte	(.L2324-.L2319)/2
	.2byte	(.L2325-.L2319)/2
	.2byte	(.L2326-.L2319)/2
	.2byte	(.L2327-.L2319)/2
.L2311:
	mov	r0, r5
	ldr	r1, [sp, #12]
	movs	r2, #2
	bl	nsvg__parseGradient(PLT)
	add	sp, sp, #172
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L2542:
	ldr	r3, [r4]
	cmp	r3, #126
	ble	.L2551
.L2101:
	ldr	r3, [sp, #12]
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L2374
	flds	s16, .L2571+92
	mov	r9, #0
	flds	s27, .L2571
	mov	r7, r3
	flds	s26, .L2571+4
	mov	r8, r9
	flds	s25, .L2571+8
	adds	r7, r7, #16
	flds	s24, .L2571+12
	mov	r10, r3
	flds	s23, .L2571+16
	mov	fp, r3
	flds	s22, .L2571+20
	fconsts	s20, #240
	fcpys	s17, s16
	fcpys	s19, s16
	fcpys	s18, s16
	fcpys	s21, s20
.L2176:
	add	r8, r8, #1
	mov	r0, r5
	ldr	r2, [fp, r8, lsl #2]
	bl	nsvg__parseAttr(PLT)
	cmp	r0, #0
	bne	.L2103
	ldr	r6, [r10]
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #120
	bne	.L2104
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L2105
	ldr	r1, [fp, r8, lsl #2]
	add	r0, sp, #104
	flds	s28, [r4, #28]
	flds	s29, [r4, #36]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s17, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2106
	tbh	[pc, r2, lsl #1]
.L2108:
	.2byte	(.L2107-.L2108)/2
	.2byte	(.L2109-.L2108)/2
	.2byte	(.L2110-.L2108)/2
	.2byte	(.L2111-.L2108)/2
	.2byte	(.L2112-.L2108)/2
	.2byte	(.L2113-.L2108)/2
	.2byte	(.L2114-.L2108)/2
	.2byte	(.L2115-.L2108)/2
	.2byte	(.L2116-.L2108)/2
.L2114:
	fmuls	s17, s17, s27
	fmacs	s28, s17, s29
	fcpys	s17, s28
.L2106:
	ldr	r6, [r10]
	ldrb	r3, [r6]	@ zero_extendqisi2
.L2104:
	cmp	r3, #121
	bne	.L2105
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	cbnz	r3, .L2105
	ldr	r1, [fp, r8, lsl #2]
	add	r0, sp, #104
	flds	s28, [r4, #32]
	flds	s29, [r4, #40]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s16, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2117
	tbh	[pc, r2, lsl #1]
.L2119:
	.2byte	(.L2118-.L2119)/2
	.2byte	(.L2120-.L2119)/2
	.2byte	(.L2121-.L2119)/2
	.2byte	(.L2122-.L2119)/2
	.2byte	(.L2123-.L2119)/2
	.2byte	(.L2124-.L2119)/2
	.2byte	(.L2125-.L2119)/2
	.2byte	(.L2126-.L2119)/2
	.2byte	(.L2127-.L2119)/2
.L2125:
	fmuls	s16, s16, s27
	fmacs	s28, s16, s29
	fcpys	s16, s28
.L2117:
	ldr	r6, [r10]
.L2105:
	ldr	r1, .L2571+84
	mov	r0, r6
.LPIC155:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2552
.L2128:
	ldr	r1, .L2571+88
	mov	r0, r6
.LPIC156:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L2553
.L2140:
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L2103
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	cmp	r3, #120
	bne	.L2152
	ldrb	r3, [r6, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L2152
	ldr	r1, [fp, r8, lsl #2]
	add	r0, sp, #104
	flds	s21, [r4, #36]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s15, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2377
	tbh	[pc, r2, lsl #1]
.L2155:
	.2byte	(.L2154-.L2155)/2
	.2byte	(.L2156-.L2155)/2
	.2byte	(.L2157-.L2155)/2
	.2byte	(.L2158-.L2155)/2
	.2byte	(.L2159-.L2155)/2
	.2byte	(.L2160-.L2155)/2
	.2byte	(.L2161-.L2155)/2
	.2byte	(.L2162-.L2155)/2
	.2byte	(.L2163-.L2155)/2
.L2539:
	ldrb	r1, [fp, #1]	@ zero_extendqisi2
	add	fp, fp, #1
	b	.L1988
.L1989:
	mov	fp, r6
	mov	r10, r6
	b	.L1993
.L1970:
	mov	fp, r4
	mov	r10, r4
	b	.L1974
.L1987:
	add	r3, sp, #168
	mov	r1, r4
	add	r6, r3, r6, lsl #2
	mov	r0, r5
	ldr	r2, [r6, #-116]
	bl	nsvg__parseAttr(PLT)
	b	.L1997
.L2572:
	.align	2
.L2571:
	.word	1008981770
	.word	1057300152
	.word	1053397798
	.word	1025589893
	.word	1042983595
	.word	1013157433
	.word	.LC53-(.LPIC154+4)
	.word	.LC56-(.LPIC157+4)
	.word	.LC57-(.LPIC158+4)
	.word	.LC58-(.LPIC159+4)
	.word	.LC59-(.LPIC160+4)
	.word	.LC60-(.LPIC161+4)
	.word	.LC49-(.LPIC162+4)
	.word	.LC50-(.LPIC163+4)
	.word	.LC51-(.LPIC164+4)
	.word	.LC4-(.LPIC165+4)
	.word	.LC55-(.LPIC167+4)
	.word	.LC61-(.LPIC168+4)
	.word	.LC63-(.LPIC170+4)
	.word	.LC15-(.LPIC171+4)
	.word	.LC54-(.LPIC166+4)
	.word	.LC54-(.LPIC155+4)
	.word	.LC55-(.LPIC156+4)
	.word	0
	.word	953267991
	.word	925353388
	.word	1057841801
.L2170:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s20, s15, s25
.L2164:
	fabss	s20, s20
.L2103:
	pld	[r7]
	sub	r10, r7, #8
	adds	r7, r7, #8
	add	r9, r9, #2
	mov	r8, r9
	ldr	r1, [r7, #-16]
	cmp	r1, #0
	bne	.L2176
	fcmpezs	s20
	fmstat
	fcmpezs	s21
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	fmstat
	and	r3, r3, #1
	it	pl
	movpl	r3, #0
	fcmpzs	s19
	cmp	r3, #0
	bne	.L2177
	fmstat
	fcmpzs	s18
	ite	ne
	movne	r1, #1
	moveq	r1, #0
	fmstat
	fcmpezs	s21
	and	r1, r1, #1
	it	eq
	moveq	r1, #0
	fmstat
	fcmpezs	s20
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	fconsts	s15, #96
	fmstat
	and	r3, r3, #1
	it	pl
	movpl	r3, #0
	fmuls	s14, s18, s15
	cmp	r3, #0
	fmuls	s15, s19, s15
	it	ne
	fcpysne	s20, s21
.L2178:
	flds	s13, .L2571+92
	fcmps	s21, s13
	fmstat
	fcmps	s20, s13
	it	mi
	fcpysmi	s21, s13
	fmstat
	it	mi
	fcpysmi	s20, s13
	fcmpes	s21, s14
	fmstat
	fcmpes	s20, s15
	it	gt
	fcpysgt	s21, s14
	fmstat
	it	gt
	fcpysgt	s20, s15
	cmp	r1, #0
	beq	.L2532
	flds	s14, .L2571+96
	movs	r1, #0
	flds	s15, .L2571+100
	str	r1, [r4, #8]
	ldr	r3, [r4, #12]
	fcmpes	s20, s14
	fmstat
	fcmpes	s21, s15
	ite	mi
	movmi	r2, #1
	movpl	r2, r1
	fmstat
	it	mi
	orrmi	r2, r2, #1
	cmp	r2, #0
	beq	.L2185
	cmp	r3, r1
	bgt	.L2554
	itete	ne
	lslne	r2, r3, #1
	moveq	r2, #8
	lslne	r1, r3, #4
	moveq	r1, #64
	str	r2, [r4, #12]
	ldr	r0, [r4, #4]
	bl	realloc(PLT)
	str	r0, [r4, #4]
	cbz	r0, .L2189
	ldr	r2, [r4, #8]
	mov	r3, r0
	adds	r1, r2, #1
	lsls	r2, r2, #3
	adds	r0, r2, #4
.L2187:
	add	r2, r2, r3
	add	r3, r3, r0
	fsts	s17, [r2]
	fsts	s16, [r3]
	str	r1, [r4, #8]
.L2189:
	fadds	s18, s18, s17
	mov	r0, r5
	fadds	s19, s16, s19
	fcpys	s1, s16
	fcpys	s0, s18
	bl	nsvg__lineTo(PLT)
	fcpys	s1, s19
	mov	r0, r5
	fcpys	s0, s18
	bl	nsvg__lineTo(PLT)
	mov	r0, r5
	fcpys	s1, s19
	fcpys	s0, s17
	bl	nsvg__lineTo(PLT)
	b	.L2190
.L2538:
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L1985
	ldr	r1, [sp, #12]
	ldr	r3, [r1, r3, lsl #2]
	str	r3, [sp, #28]
	b	.L1986
.L2540:
	add	r0, sp, #104
	movs	r1, #0
	bl	strtod(PLT)
	fcvtsd	s0, d0
	add	r0, sp, #168
	add	r3, r0, r10, lsl #2
	add	r2, r10, #1
	mov	r10, r2
	fsts	s0, [r3, #-104]
	b	.L2013
.L2221:
	fmuls	s16, s16, s23
	fmacs	s25, s16, s26
	fcpys	s16, s25
.L2213:
	ldr	r3, [r9]
	ldrb	r2, [r3]	@ zero_extendqisi2
.L2200:
	cmp	r2, #114
	bne	.L2199
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cbnz	r3, .L2199
	flds	s15, [r4, #36]
	flds	s14, [r4, #40]
	ldr	r8, [r10, r8, lsl #2]
	fmuls	s15, s15, s15
	fmacs	s15, s14, s14
	fsqrts	s0, s15
	fcmps	s0, s0
	fmstat
	bne	.L2555
.L2224:
	mov	r1, r8
	fmuls	s0, s0, s24
	mov	r0, r5
	bl	nsvg__parseCoordinate.constprop.38(PLT)
	fabss	s18, s0
.L2199:
	pld	[r6]
	sub	r9, r6, #8
	adds	r6, r6, #8
	adds	r7, r7, #2
	mov	r8, r7
	ldr	r1, [r6, #-16]
	cmp	r1, #0
	bne	.L2226
	fcmpezs	s18
	fmstat
	ble	.L2532
	ldr	r3, [r4, #12]
	str	r1, [r4, #8]
	fadds	s19, s17, s18
	cmp	r3, #0
	bgt	.L2556
	itete	ne
	lslne	r2, r3, #1
	moveq	r2, #8
	lslne	r1, r3, #4
	moveq	r1, #64
	str	r2, [r4, #12]
	ldr	r0, [r4, #4]
	bl	realloc(PLT)
	str	r0, [r4, #4]
	cbz	r0, .L2232
	ldr	r1, [r4, #8]
	mov	r3, r0
	adds	r2, r1, #1
	lsls	r1, r1, #3
	adds	r0, r1, #4
.L2230:
	add	r1, r1, r3
	add	r3, r3, r0
	fsts	s19, [r1]
	fsts	s16, [r3]
	str	r2, [r4, #8]
.L2232:
	flds	s15, .L2571+104
	mov	r0, r5
	fadds	s21, s16, s18
	fsubs	s20, s17, s18
	fcpys	s0, s19
	fmuls	s15, s18, s15
	fcpys	s3, s21
	fcpys	s5, s21
	fcpys	s4, s17
	fadds	s25, s15, s16
	fadds	s23, s15, s17
	fsubs	s24, s17, s15
	fsubs	s22, s16, s15
	fcpys	s1, s25
	fcpys	s2, s23
	fsubs	s18, s16, s18
	bl	nsvg__cubicBezTo(PLT)
	fcpys	s3, s25
	mov	r0, r5
	fcpys	s1, s21
	fcpys	s0, s24
	fcpys	s2, s20
	fcpys	s4, s20
	fcpys	s5, s16
	bl	nsvg__cubicBezTo(PLT)
	fcpys	s2, s24
	mov	r0, r5
	fcpys	s0, s20
	fcpys	s4, s17
	fcpys	s1, s22
	fcpys	s3, s18
	fcpys	s5, s18
	bl	nsvg__cubicBezTo(PLT)
	mov	r0, r5
	fcpys	s0, s23
	fcpys	s1, s18
	fcpys	s2, s19
	fcpys	s3, s22
	fcpys	s4, s19
	fcpys	s5, s16
.L2535:
	bl	nsvg__cubicBezTo(PLT)
.L2190:
	mov	r0, r5
	movs	r1, #1
	bl	nsvg__addPath(PLT)
.L2530:
	mov	r0, r5
	bl	nsvg__addShape(PLT)
.L2532:
	ldr	r3, [r4]
	cmp	r3, #0
	ble	.L1959
.L2528:
	subs	r3, r3, #1
	str	r3, [r4]
	add	sp, sp, #172
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L2161:
	fmuls	s15, s15, s27
	fmuls	s21, s15, s21
.L2153:
	ldr	r6, [r10]
	fabss	s21, s21
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L2103
.L2152:
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	cmp	r3, #121
	bne	.L2103
	ldrb	r3, [r6, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L2103
	ldr	r1, [fp, r8, lsl #2]
	add	r0, sp, #104
	flds	s20, [r4, #40]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s15, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2378
	adr	r0, .L2166
	ldr	r1, [r0, r2, lsl #2]
	add	r0, r0, r1
	bx	r0
	.p2align 2
.L2166:
	.word	.L2165+1-.L2166
	.word	.L2167+1-.L2166
	.word	.L2168+1-.L2166
	.word	.L2169+1-.L2166
	.word	.L2170+1-.L2166
	.word	.L2171+1-.L2166
	.word	.L2172+1-.L2166
	.word	.L2173+1-.L2166
	.word	.L2174+1-.L2166
.L2012:
	sub	r3, r9, #65
	uxtb	r3, r3
	cmp	r3, #53
	it	hi
	strhi	r0, [sp, #8]
	bhi	.L2092
	ldr	r2, .L2573+32
.LPIC153:
	add	r2, pc
	ldrsb	r2, [r2, r3]
	str	r2, [sp, #8]
.L2092:
	and	r3, r9, #223
	cmp	r3, #77
	bne	.L2093
	ldr	r3, [r4, #8]
	cmp	r3, #0
	ble	.L2094
	mov	r0, r5
	movs	r1, #0
	bl	nsvg__addPath(PLT)
.L2094:
	movs	r3, #0
	mov	r6, r9
	str	r3, [r4, #8]
	mov	r10, r3
	b	.L2003
.L2553:
	ldr	r1, [fp, r8, lsl #2]
	add	r0, sp, #104
	flds	s28, [r4, #40]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s19, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2141
	tbh	[pc, r2, lsl #1]
.L2143:
	.2byte	(.L2142-.L2143)/2
	.2byte	(.L2144-.L2143)/2
	.2byte	(.L2145-.L2143)/2
	.2byte	(.L2146-.L2143)/2
	.2byte	(.L2147-.L2143)/2
	.2byte	(.L2148-.L2143)/2
	.2byte	(.L2149-.L2143)/2
	.2byte	(.L2150-.L2143)/2
	.2byte	(.L2151-.L2143)/2
.L2149:
	fmuls	s19, s19, s27
	fmuls	s19, s19, s28
.L2141:
	ldr	r6, [r10]
	b	.L2140
.L2552:
	ldr	r1, [fp, r8, lsl #2]
	add	r0, sp, #104
	flds	s28, [r4, #36]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s18, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2129
	tbh	[pc, r2, lsl #1]
.L2131:
	.2byte	(.L2130-.L2131)/2
	.2byte	(.L2132-.L2131)/2
	.2byte	(.L2133-.L2131)/2
	.2byte	(.L2134-.L2131)/2
	.2byte	(.L2135-.L2131)/2
	.2byte	(.L2136-.L2131)/2
	.2byte	(.L2137-.L2131)/2
	.2byte	(.L2138-.L2131)/2
	.2byte	(.L2139-.L2131)/2
.L2137:
	fmuls	s18, s18, s27
	fmuls	s18, s18, s28
.L2129:
	ldr	r6, [r10]
	b	.L2128
.L1964:
	mov	r0, r5
	ldr	r1, [sp, #12]
	bl	nsvg__parseGradientStop(PLT)
	add	sp, sp, #172
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L2312:
	mov	r0, r5
	ldr	r1, [sp, #12]
	movs	r2, #3
	bl	nsvg__parseGradient(PLT)
	b	.L1959
.L2093:
	cmp	r3, #90
	it	ne
	movne	r6, r9
	bne	.L2003
	ldr	r3, [r4, #8]
	cmp	r3, #0
	itt	le
	addle	r10, r5, #38912
	addle	r10, r10, #4
	ble	.L2095
	ldr	r3, [r4, #4]
	add	r10, r4, #4
	mov	r0, r5
	movs	r1, #1
	flds	s17, [r3]
	flds	s16, [r3, #4]
	bl	nsvg__addPath(PLT)
	fcpys	s22, s17
	fcpys	s23, s16
.L2095:
	ldr	r1, [r4, #12]
	movs	r3, #0
	str	r3, [r4, #8]
	cmp	r1, r3
	bgt	.L2557
	itete	ne
	lslne	r3, r1, #1
	moveq	r3, #8
	lslne	r1, r1, #4
	moveq	r1, #64
	str	r3, [r4, #12]
	ldr	r0, [r10]
	bl	realloc(PLT)
	str	r0, [r10]
	cmp	r0, #0
	beq	.L2373
	ldr	r3, [r4, #8]
	adds	r2, r3, #1
	lsls	r3, r3, #3
	adds	r1, r3, #4
.L2097:
	add	r3, r3, r0
	add	r1, r1, r0
	fsts	s22, [r3]
	mov	r6, r9
	fsts	s23, [r1]
	mov	r10, #0
	str	r2, [r4, #8]
	b	.L2003
.L2004:
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L2530
	mov	r0, r5
	movs	r1, #0
	bl	nsvg__addPath(PLT)
	b	.L2530
.L2008:
	adds	r7, r7, #1
	mov	r9, r8
	strb	r8, [sp, #104]
	strb	r0, [sp, #105]
	b	.L2009
.L2543:
	ldr	r3, [r4]
	cmp	r3, #126
	ble	.L2558
.L2196:
	ldr	r3, [sp, #12]
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L2532
	flds	s16, .L2573
	movs	r7, #0
	flds	s24, .L2573+4
	mov	r6, r3
	flds	s23, .L2573+8
	mov	r8, r7
	flds	s22, .L2573+12
	adds	r6, r6, #16
	flds	s21, .L2573+16
	mov	r9, r3
	flds	s20, .L2573+20
	mov	r10, r3
	flds	s19, .L2573+24
	fcpys	s17, s16
	fcpys	s18, s16
.L2226:
	add	r8, r8, #1
	mov	r0, r5
	ldr	r2, [r10, r8, lsl #2]
	bl	nsvg__parseAttr(PLT)
	cmp	r0, #0
	bne	.L2199
	ldr	r3, [r9]
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #99
	bne	.L2200
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #120
	bne	.L2201
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	cbnz	r2, .L2201
	ldr	r1, [r10, r8, lsl #2]
	add	r0, sp, #104
	flds	s25, [r4, #28]
	flds	s26, [r4, #36]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s17, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2202
	tbh	[pc, r2, lsl #1]
.L2204:
	.2byte	(.L2203-.L2204)/2
	.2byte	(.L2205-.L2204)/2
	.2byte	(.L2206-.L2204)/2
	.2byte	(.L2207-.L2204)/2
	.2byte	(.L2208-.L2204)/2
	.2byte	(.L2209-.L2204)/2
	.2byte	(.L2210-.L2204)/2
	.2byte	(.L2211-.L2204)/2
	.2byte	(.L2212-.L2204)/2
.L2210:
	fmuls	s17, s17, s23
	fmacs	s25, s17, s26
	fcpys	s17, s25
.L2202:
	ldr	r3, [r9]
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #99
	bne	.L2200
.L2201:
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #121
	bne	.L2199
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L2199
	ldr	r1, [r10, r8, lsl #2]
	add	r0, sp, #104
	flds	s25, [r4, #32]
	flds	s26, [r4, #40]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s16, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2213
	adr	r0, .L2215
	ldr	r1, [r0, r2, lsl #2]
	add	r0, r0, r1
	bx	r0
	.p2align 2
.L2215:
	.word	.L2214+1-.L2215
	.word	.L2216+1-.L2215
	.word	.L2217+1-.L2215
	.word	.L2218+1-.L2215
	.word	.L2219+1-.L2215
	.word	.L2220+1-.L2215
	.word	.L2221+1-.L2215
	.word	.L2222+1-.L2215
	.word	.L2223+1-.L2215
.L2177:
	fconsts	s15, #96
	fmstat
	fmuls	s14, s18, s15
	it	ne
	movne	r1, #1
	fcmpzs	s18
	it	eq
	moveq	r1, #0
	fmuls	s15, s19, s15
	and	r1, r1, #1
	fmstat
	it	eq
	moveq	r1, #0
.L2102:
	fcpys	s21, s20
	b	.L2178
.L2025:
	flds	s16, [sp, #64]
	cmp	r6, #118
	mov	r0, r5
	fcpys	s0, s22
	mov	r10, #0
	fcpys	s17, s22
	it	eq
	faddseq	s16, s16, s23
	fcpys	s1, s16
	bl	nsvg__lineTo(PLT)
	fcpys	s23, s16
	b	.L2003
.L2024:
	flds	s15, [sp, #64]
	cmp	r6, #115
	flds	s18, [sp, #68]
	mov	r0, r5
	fadds	s12, s22, s22
	mov	r10, #0
	fadds	s13, s23, s23
	itt	eq
	faddseq	s15, s22, s15
	faddseq	s18, s23, s18
	fsubs	s17, s12, s17
	fsubs	s16, s13, s16
	flds	s14, .L2573+28
	fcpys	s0, s22
	fsubs	s10, s17, s22
	fsubs	s11, s16, s23
	fsubs	s12, s17, s15
	fsubs	s13, s16, s18
	fcpys	s1, s23
	fcpys	s2, s15
	fcpys	s3, s18
	fcpys	s4, s15
	fcpys	s5, s18
	fmacs	s0, s10, s14
	fmacs	s1, s11, s14
	fmacs	s2, s12, s14
	fmacs	s3, s13, s14
	fcpys	s22, s15
	fcpys	s23, s18
	bl	nsvg__cubicBezTo(PLT)
	b	.L2003
.L2023:
	flds	s13, [sp, #64]
	cmp	r6, #115
	flds	s14, [sp, #68]
	mov	r0, r5
	flds	s15, [sp, #72]
	mov	r10, #0
	flds	s18, [sp, #76]
	itttt	eq
	faddseq	s13, s22, s13
	faddseq	s14, s23, s14
	faddseq	s15, s22, s15
	faddseq	s18, s23, s18
	fadds	s0, s22, s22
	fadds	s1, s23, s23
	fcpys	s2, s13
	fcpys	s3, s14
	fsubs	s0, s0, s17
	fsubs	s1, s1, s16
	fcpys	s4, s15
	fcpys	s5, s18
	fcpys	s17, s13
	fcpys	s16, s14
	fcpys	s22, s15
	fcpys	s23, s18
	bl	nsvg__cubicBezTo(PLT)
	b	.L2003
.L2022:
	flds	s15, [sp, #72]
	cmp	r6, #113
	flds	s18, [sp, #76]
	mov	r0, r5
	flds	s17, [sp, #64]
	mov	r10, #0
	flds	s16, [sp, #68]
	itttt	eq
	faddseq	s15, s22, s15
	faddseq	s18, s23, s18
	faddseq	s17, s22, s17
	faddseq	s16, s23, s16
	flds	s14, .L2573+28
	fcpys	s0, s22
	fsubs	s10, s17, s22
	fsubs	s11, s16, s23
	fsubs	s12, s17, s15
	fsubs	s13, s16, s18
	fcpys	s1, s23
	fcpys	s2, s15
	fcpys	s3, s18
	fmacs	s0, s10, s14
	fmacs	s1, s11, s14
	fmacs	s2, s12, s14
	fmacs	s3, s13, s14
	fcpys	s4, s15
	fcpys	s5, s18
	fcpys	s22, s15
	fcpys	s23, s18
	bl	nsvg__cubicBezTo(PLT)
	b	.L2003
.L2021:
	flds	s17, [sp, #64]
	cmp	r6, #109
	flds	s16, [sp, #68]
	ldr	r3, [r4, #8]
	itt	eq
	faddseq	s17, s22, s17
	faddseq	s16, s23, s16
	cmp	r3, #0
	ble	.L2028
	ldr	r2, [r4, #4]
	subs	r3, r3, #1
	add	r3, r2, r3, lsl #3
	fsts	s17, [r3]
	fsts	s16, [r3, #4]
.L2029:
	ldr	r2, .L2573+36
	cmp	r6, #109
	itete	eq
	moveq	r3, #43
	movne	r3, #11
	moveq	r6, #108
	movne	r6, #76
.LPIC152:
	add	r2, pc
	mov	r10, #0
	ldrsb	r2, [r2, r3]
	fcpys	s23, s16
	fcpys	s22, s17
	str	r2, [sp, #8]
	b	.L2003
.L2020:
	flds	s17, [sp, #64]
	cmp	r6, #108
	flds	s16, [sp, #68]
	mov	r0, r5
	mov	r10, #0
	itt	eq
	faddseq	s17, s22, s17
	faddseq	s16, s23, s16
	fcpys	s0, s17
	fcpys	s1, s16
	bl	nsvg__lineTo(PLT)
	fcpys	s23, s16
	fcpys	s22, s17
	b	.L2003
.L2019:
	flds	s17, [sp, #64]
	cmp	r6, #104
	mov	r0, r5
	fcpys	s1, s23
	mov	r10, #0
	fcpys	s16, s23
	it	eq
	faddseq	s17, s17, s22
	fcpys	s0, s17
	bl	nsvg__lineTo(PLT)
	fcpys	s22, s17
	b	.L2003
.L2574:
	.align	2
.L2573:
	.word	0
	.word	1060439283
	.word	1008981770
	.word	1057300152
	.word	1053397798
	.word	1025589893
	.word	1042983595
	.word	1059760811
	.word	.LANCHOR0-(.LPIC153+4)
	.word	.LANCHOR0-(.LPIC152+4)
	.word	1126170624
.L2018:
	cmp	r6, #99
	flds	s17, [sp, #72]
	flds	s16, [sp, #76]
	mov	r0, r5
	flds	s0, [sp, #64]
	mov	r10, #0
	flds	s1, [sp, #68]
	itttt	eq
	fldseq	s14, [sp, #80]
	fldseq	s15, [sp, #84]
	faddseq	s17, s22, s17
	faddseq	s16, s23, s16
	itttt	eq
	faddseq	s0, s22, s0
	faddseq	s1, s23, s1
	faddseq	s22, s22, s14
	faddseq	s23, s23, s15
	itt	ne
	fldsne	s22, [sp, #80]
	fldsne	s23, [sp, #84]
	fcpys	s2, s17
	fcpys	s3, s16
	fcpys	s4, s22
	fcpys	s5, s23
	bl	nsvg__cubicBezTo(PLT)
	b	.L2003
.L2016:
	flds	s17, [sp, #84]
	cmp	r6, #97
	flds	s16, [sp, #88]
	flds	s19, [sp, #64]
	flds	s18, [sp, #68]
	itt	eq
	faddseq	s17, s22, s17
	faddseq	s16, s23, s16
	flds	s12, [sp, #76]
	flds	s13, [sp, #80]
	fsubs	s24, s22, s17
	fsubs	s26, s23, s16
	flds	s20, [sp, #72]
	fsts	s12, [sp, #12]
	fmuls	s0, s24, s24
	fabss	s19, s19
	fabss	s18, s18
	fsts	s13, [sp, #16]
	fmacs	s0, s26, s26
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	bne	.L2559
.L2048:
	fcmpes	s15, s30
	fmstat
	fcmpes	s19, s30
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	it	mi
	orrmi	r3, r3, #1
	cbnz	r3, .L2049
	fcmpes	s18, s30
	fmstat
	bpl	.L2512
.L2049:
	mov	r0, r5
	fcpys	s0, s17
	fcpys	s1, s16
	bl	nsvg__lineTo(PLT)
.L2052:
	fcpys	s23, s16
	mov	r10, #0
	fcpys	s22, s17
	b	.L2003
.L2551:
	adds	r0, r3, #1
	mov	r1, #304
	str	r0, [r4]
	mov	r2, r1
	mla	r0, r1, r0, r5
	mla	r1, r1, r3, r5
	bl	memcpy(PLT)
	b	.L2101
.L2015:
	cmp	r10, #1
	it	eq
	moveq	r10, #0
	beq	.L2003
	add	r3, sp, #168
	add	r2, r3, r10, lsl #2
	mov	r10, #0
	flds	s17, [r2, #-112]
	flds	s16, [r2, #-108]
	fcpys	s22, s17
	fcpys	s23, s16
	b	.L2003
.L2116:
	flds	s15, [r3, #284]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s26
	b	.L2106
.L2111:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s24
	b	.L2106
.L2110:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s23
	b	.L2106
.L2109:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s22
	b	.L2106
.L2107:
	flds	s14, .L2573+40
	flds	s15, [r4, #56]
	fmuls	s17, s17, s14
	fdivs	s17, s17, s15
	b	.L2106
.L2546:
	ldr	r3, [r4]
	cmp	r3, #126
	ble	.L2560
.L2308:
	mov	r0, r5
	ldr	r1, [sp, #12]
	movs	r2, #0
	bl	nsvg__parsePoly(PLT)
	ldr	r3, [r4]
	cmp	r3, #0
	bgt	.L2528
	b	.L1959
.L2558:
	adds	r0, r3, #1
	mov	r1, #304
	str	r0, [r4]
	mov	r2, r1
	mla	r0, r1, r0, r5
	mla	r1, r1, r3, r5
	bl	memcpy(PLT)
	b	.L2196
.L2160:
	flds	s21, [r4, #56]
	fmuls	s21, s15, s21
	b	.L2153
.L2159:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s21, s15, s25
	b	.L2153
.L2158:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s21, s15, s24
	b	.L2153
.L2157:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s21, s15, s23
	b	.L2153
.L2156:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s21, s15, s22
	b	.L2153
.L2169:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s20, s15, s24
	b	.L2164
.L2168:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s20, s15, s23
	b	.L2164
.L2167:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s20, s15, s22
	b	.L2164
.L2165:
	flds	s13, .L2573+40
	flds	s14, [r4, #56]
	fmuls	s15, s15, s13
	fdivs	s20, s15, s14
	b	.L2164
.L2174:
	flds	s14, [r3, #284]
	fmuls	s15, s15, s14
	fmuls	s20, s15, s26
	b	.L2164
.L2378:
	fcpys	s20, s15
	b	.L2164
.L2154:
	flds	s13, .L2573+40
	flds	s14, [r4, #56]
	fmuls	s15, s15, s13
	fdivs	s21, s15, s14
	b	.L2153
.L2163:
	flds	s14, [r3, #284]
	fmuls	s15, s15, s14
	fmuls	s21, s15, s26
	b	.L2153
.L2377:
	fcpys	s21, s15
	b	.L2153
.L2124:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	b	.L2117
.L2123:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s25
	b	.L2117
.L2122:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s24
	b	.L2117
.L2121:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s23
	b	.L2117
.L2120:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s22
	b	.L2117
.L2118:
	flds	s14, .L2573+40
	flds	s15, [r4, #56]
	fmuls	s16, s16, s14
	fdivs	s16, s16, s15
	b	.L2117
.L2127:
	flds	s15, [r3, #284]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s26
	b	.L2117
.L2113:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	b	.L2106
.L2112:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s25
	b	.L2106
.L2132:
	flds	s15, [r4, #56]
	fmuls	s18, s18, s15
	fmuls	s18, s18, s22
	b	.L2129
.L2130:
	flds	s14, .L2573+40
	flds	s15, [r4, #56]
	fmuls	s18, s18, s14
	fdivs	s18, s18, s15
	b	.L2129
.L2139:
	flds	s15, [r3, #284]
	fmuls	s18, s18, s15
	fmuls	s18, s18, s26
	b	.L2129
.L2148:
	flds	s15, [r4, #56]
	fmuls	s19, s19, s15
	b	.L2141
.L2147:
	flds	s15, [r4, #56]
	fmuls	s19, s19, s15
	fmuls	s19, s19, s25
	b	.L2141
.L2146:
	flds	s15, [r4, #56]
	fmuls	s19, s19, s15
	fmuls	s19, s19, s24
	b	.L2141
.L2145:
	flds	s15, [r4, #56]
	fmuls	s19, s19, s15
	fmuls	s19, s19, s23
	b	.L2141
.L2144:
	flds	s15, [r4, #56]
	fmuls	s19, s19, s15
	fmuls	s19, s19, s22
	b	.L2141
.L2142:
	flds	s14, .L2573+40
	flds	s15, [r4, #56]
	fmuls	s19, s19, s14
	fdivs	s19, s19, s15
	b	.L2141
.L2151:
	flds	s15, [r3, #284]
	fmuls	s19, s19, s15
	fmuls	s19, s19, s26
	b	.L2141
.L2172:
	fmuls	s15, s15, s27
	fmuls	s20, s15, s20
	b	.L2164
.L2171:
	flds	s20, [r4, #56]
	fmuls	s20, s15, s20
	b	.L2164
.L2136:
	flds	s15, [r4, #56]
	fmuls	s18, s18, s15
	b	.L2129
.L2135:
	flds	s15, [r4, #56]
	fmuls	s18, s18, s15
	fmuls	s18, s18, s25
	b	.L2129
.L2134:
	flds	s15, [r4, #56]
	fmuls	s18, s18, s15
	fmuls	s18, s18, s24
	b	.L2129
.L2133:
	flds	s15, [r4, #56]
	fmuls	s18, s18, s15
	fmuls	s18, s18, s23
	b	.L2129
.L2544:
	ldr	r3, [r4]
	cmp	r3, #126
	bgt	.L2234
	mov	r1, #304
	adds	r0, r3, #1
	str	r0, [r4]
	mov	r2, r1
	mla	r0, r1, r0, r5
	mla	r1, r1, r3, r5
	bl	memcpy(PLT)
.L2234:
	ldr	r3, [sp, #12]
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L2532
	flds	s16, .L2575
	mov	r9, #0
	mov	r7, r3
	mov	r8, r9
	adds	r7, r7, #24
	mov	r6, r3
	mov	r10, r3
	fcpys	s17, s16
	fcpys	s18, s16
	fcpys	s19, s16
.L2243:
	add	r8, r8, #1
	mov	r0, r5
	ldr	r2, [r10, r8, lsl #2]
	bl	nsvg__parseAttr(PLT)
	cmp	r0, #0
	bne	.L2237
	ldr	r3, [r6]
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #99
	bne	.L2238
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #120
	bne	.L2239
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	cbnz	r2, .L2239
	mov	r0, r5
	ldr	r1, [r10, r8, lsl #2]
	flds	s0, [r4, #28]
	flds	s1, [r4, #36]
	bl	nsvg__parseCoordinate(PLT)
	ldr	r3, [r6]
	fcpys	s17, s0
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #99
	bne	.L2238
.L2239:
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #121
	bne	.L2237
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cbnz	r3, .L2237
	mov	r0, r5
	ldr	r1, [r10, r8, lsl #2]
	flds	s0, [r4, #32]
	flds	s1, [r4, #40]
	bl	nsvg__parseCoordinate(PLT)
	ldr	r3, [r6]
	fcpys	s16, s0
	ldrb	r2, [r3]	@ zero_extendqisi2
.L2238:
	cmp	r2, #114
	bne	.L2237
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #120
	bne	.L2241
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	cbnz	r2, .L2241
	mov	r0, r5
	ldr	r1, [r10, r8, lsl #2]
	flds	s0, [r4, #36]
	bl	nsvg__parseCoordinate.constprop.38(PLT)
	ldr	r3, [r6]
	fabss	s19, s0
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #114
	bne	.L2237
.L2241:
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #121
	bne	.L2237
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cbnz	r3, .L2237
	ldr	r1, [r10, r8, lsl #2]
	mov	r0, r5
	flds	s0, [r4, #40]
	bl	nsvg__parseCoordinate.constprop.38(PLT)
	fabss	s18, s0
.L2237:
	pld	[r7]
	sub	r6, r7, #16
	adds	r7, r7, #8
	add	r9, r9, #2
	mov	r8, r9
	ldr	r1, [r7, #-24]
	cmp	r1, #0
	bne	.L2243
	fcmpezs	s18
	fmstat
	fcmpezs	s19
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	cmp	r3, #0
	beq	.L2532
	ldr	r3, [r4, #12]
	str	r1, [r4, #8]
	fadds	s20, s17, s19
	cmp	r3, #0
	bgt	.L2561
	itete	ne
	lslne	r2, r3, #1
	moveq	r2, #8
	lslne	r1, r3, #4
	moveq	r1, #64
	str	r2, [r4, #12]
	ldr	r0, [r4, #4]
	bl	realloc(PLT)
	str	r0, [r4, #4]
	cbz	r0, .L2248
	ldr	r1, [r4, #8]
	mov	r3, r0
	adds	r2, r1, #1
	lsls	r1, r1, #3
	adds	r0, r1, #4
.L2246:
	add	r1, r1, r3
	add	r3, r3, r0
	fsts	s20, [r1]
	fsts	s16, [r3]
	str	r2, [r4, #8]
.L2248:
	flds	s14, .L2575+4
	mov	r0, r5
	fsubs	s21, s17, s19
	fadds	s22, s16, s18
	fcpys	s0, s20
	fmuls	s15, s18, s14
	fmuls	s19, s19, s14
	fcpys	s3, s22
	fcpys	s5, s22
	fadds	s25, s15, s16
	fadds	s23, s19, s17
	fsubs	s24, s17, s19
	fcpys	s4, s17
	fcpys	s1, s25
	fcpys	s2, s23
	fsubs	s19, s16, s15
	fsubs	s18, s16, s18
	bl	nsvg__cubicBezTo(PLT)
	fcpys	s3, s25
	mov	r0, r5
	fcpys	s1, s22
	fcpys	s0, s24
	fcpys	s2, s21
	fcpys	s4, s21
	fcpys	s5, s16
	bl	nsvg__cubicBezTo(PLT)
	fcpys	s2, s24
	mov	r0, r5
	fcpys	s0, s21
	fcpys	s4, s17
	fcpys	s1, s19
	fcpys	s3, s18
	fcpys	s5, s18
	bl	nsvg__cubicBezTo(PLT)
	mov	r0, r5
	fcpys	s0, s23
	fcpys	s1, s18
	fcpys	s2, s20
	fcpys	s3, s19
	fcpys	s4, s20
	fcpys	s5, s16
	b	.L2535
.L2561:
	ldr	r3, [r4, #4]
	movs	r2, #1
	movs	r0, #4
	b	.L2246
.L2556:
	ldr	r3, [r4, #4]
	movs	r2, #1
	movs	r0, #4
	b	.L2230
.L2545:
	ldr	r3, [r4]
	cmp	r3, #126
	bgt	.L2250
	mov	r1, #304
	adds	r0, r3, #1
	str	r0, [r4]
	mov	r2, r1
	mla	r0, r1, r0, r5
	mla	r1, r1, r3, r5
	bl	memcpy(PLT)
.L2250:
	ldr	r3, [sp, #12]
	flds	s16, .L2575
	ldr	r1, [r3]
	cmp	r1, #0
	beq	.L2392
	flds	s25, .L2575+8
	mov	r9, #0
	flds	s24, .L2575+12
	mov	r7, r3
	flds	s23, .L2575+16
	mov	r8, r9
	flds	s22, .L2575+20
	adds	r7, r7, #16
	flds	s21, .L2575+24
	mov	r6, r3
	flds	s20, .L2575+28
	mov	r10, r3
	fcpys	s17, s16
	fcpys	s18, s16
	fcpys	s19, s16
.L2302:
	add	r8, r8, #1
	mov	r0, r5
	ldr	r2, [r10, r8, lsl #2]
	bl	nsvg__parseAttr(PLT)
	cmp	r0, #0
	bne	.L2252
	ldr	r3, [r6]
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #120
	bne	.L2253
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #49
	bne	.L2254
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L2254
	ldr	r1, [r10, r8, lsl #2]
	add	r0, sp, #104
	flds	s26, [r4, #28]
	flds	s27, [r4, #36]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s19, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2255
	tbh	[pc, r2, lsl #1]
.L2257:
	.2byte	(.L2256-.L2257)/2
	.2byte	(.L2258-.L2257)/2
	.2byte	(.L2259-.L2257)/2
	.2byte	(.L2260-.L2257)/2
	.2byte	(.L2261-.L2257)/2
	.2byte	(.L2262-.L2257)/2
	.2byte	(.L2263-.L2257)/2
	.2byte	(.L2264-.L2257)/2
	.2byte	(.L2265-.L2257)/2
.L2576:
	.align	2
.L2575:
	.word	0
	.word	1057841801
	.word	1008981770
	.word	1057300152
	.word	1053397798
	.word	1025589893
	.word	1042983595
	.word	1013157433
	.word	1055210222
.L2299:
	fmuls	s16, s16, s25
	fmacs	s26, s16, s27
	fcpys	s16, s26
.L2252:
	pld	[r7]
	sub	r6, r7, #8
	adds	r7, r7, #8
	add	r9, r9, #2
	mov	r8, r9
	ldr	r1, [r7, #-16]
	cmp	r1, #0
	bne	.L2302
.L2251:
	ldr	r3, [r4, #12]
	movs	r2, #0
	str	r2, [r4, #8]
	cmp	r3, r2
	bgt	.L2562
	itete	ne
	lslne	r2, r3, #1
	moveq	r2, #8
	lslne	r1, r3, #4
	moveq	r1, #64
	str	r2, [r4, #12]
	ldr	r0, [r4, #4]
	bl	realloc(PLT)
	str	r0, [r4, #4]
	cbz	r0, .L2306
	ldr	r2, [r4, #8]
	mov	r3, r0
	adds	r1, r2, #1
	lsls	r2, r2, #3
	adds	r0, r2, #4
.L2304:
	add	r2, r2, r3
	add	r3, r3, r0
	fsts	s19, [r2]
	fsts	s18, [r3]
	str	r1, [r4, #8]
.L2306:
	fcpys	s0, s17
	mov	r0, r5
	fcpys	s1, s16
	bl	nsvg__lineTo(PLT)
	mov	r0, r5
	movs	r1, #0
	bl	nsvg__addPath(PLT)
	mov	r0, r5
	bl	nsvg__addShape(PLT)
	ldr	r3, [r4]
	cmp	r3, #0
	bgt	.L2528
	b	.L1959
.L2263:
	fmuls	s19, s19, s25
	fmacs	s26, s19, s27
	fcpys	s19, s26
.L2255:
	ldr	r3, [r6]
	ldrb	r2, [r3]	@ zero_extendqisi2
.L2253:
	cmp	r2, #121
	bne	.L2266
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #49
	bne	.L2267
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L2267
	ldr	r1, [r10, r8, lsl #2]
	add	r0, sp, #104
	flds	s26, [r4, #32]
	flds	s27, [r4, #40]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s18, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2268
	tbh	[pc, r2, lsl #1]
.L2270:
	.2byte	(.L2269-.L2270)/2
	.2byte	(.L2271-.L2270)/2
	.2byte	(.L2272-.L2270)/2
	.2byte	(.L2273-.L2270)/2
	.2byte	(.L2274-.L2270)/2
	.2byte	(.L2275-.L2270)/2
	.2byte	(.L2276-.L2270)/2
	.2byte	(.L2277-.L2270)/2
	.2byte	(.L2278-.L2270)/2
.L2254:
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #50
	bne	.L2252
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L2252
	ldr	r1, [r10, r8, lsl #2]
	add	r0, sp, #104
	flds	s26, [r4, #28]
	flds	s27, [r4, #36]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s17, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2280
	tbh	[pc, r2, lsl #1]
.L2282:
	.2byte	(.L2281-.L2282)/2
	.2byte	(.L2283-.L2282)/2
	.2byte	(.L2284-.L2282)/2
	.2byte	(.L2285-.L2282)/2
	.2byte	(.L2286-.L2282)/2
	.2byte	(.L2287-.L2282)/2
	.2byte	(.L2288-.L2282)/2
	.2byte	(.L2289-.L2282)/2
	.2byte	(.L2290-.L2282)/2
.L2276:
	fmuls	s18, s18, s25
	fmacs	s26, s18, s27
	fcpys	s18, s26
.L2268:
	ldr	r3, [r6]
	ldrb	r2, [r3]	@ zero_extendqisi2
.L2266:
	cmp	r2, #120
	beq	.L2254
.L2279:
	cmp	r2, #121
	bne	.L2252
.L2267:
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	cmp	r2, #50
	bne	.L2252
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L2252
	ldr	r1, [r10, r8, lsl #2]
	add	r0, sp, #104
	flds	s26, [r4, #32]
	flds	s27, [r4, #40]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s16, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2252
	adr	r0, .L2293
	ldr	r1, [r0, r2, lsl #2]
	add	r0, r0, r1
	bx	r0
	.p2align 2
.L2293:
	.word	.L2292+1-.L2293
	.word	.L2294+1-.L2293
	.word	.L2295+1-.L2293
	.word	.L2296+1-.L2293
	.word	.L2297+1-.L2293
	.word	.L2298+1-.L2293
	.word	.L2299+1-.L2293
	.word	.L2300+1-.L2293
	.word	.L2301+1-.L2293
.L2288:
	fmuls	s17, s17, s25
	fmacs	s26, s17, s27
	fcpys	s17, s26
.L2280:
	ldr	r3, [r6]
	ldrb	r2, [r3]	@ zero_extendqisi2
	b	.L2279
.L2562:
	ldr	r3, [r4, #4]
	movs	r1, #1
	movs	r0, #4
	b	.L2304
.L2115:
	flds	s15, [r3, #284]
	fmuls	s17, s17, s15
	b	.L2106
.L2150:
	flds	s15, [r3, #284]
	fmuls	s19, s19, s15
	b	.L2141
.L2126:
	flds	s15, [r3, #284]
	fmuls	s16, s16, s15
	b	.L2117
.L2138:
	flds	s15, [r3, #284]
	fmuls	s18, s18, s15
	b	.L2129
.L2557:
	ldr	r0, [r10]
	movs	r2, #1
	movs	r1, #4
	b	.L2097
.L2173:
	flds	s20, [r3, #284]
	fmuls	s20, s15, s20
	b	.L2164
.L2162:
	flds	s21, [r3, #284]
	fmuls	s21, s15, s21
	b	.L2153
.L2554:
	mov	r2, r1
	ldr	r3, [r4, #4]
	movs	r1, #1
	movs	r0, #4
	b	.L2187
.L2185:
	cmp	r3, #0
	fadds	s22, s21, s17
	bgt	.L2563
	itete	ne
	lslne	r2, r3, #1
	moveq	r2, #8
	lslne	r1, r3, #4
	moveq	r1, #64
	str	r2, [r4, #12]
	ldr	r0, [r4, #4]
	bl	realloc(PLT)
	str	r0, [r4, #4]
	cbz	r0, .L2194
	ldr	r2, [r4, #8]
	mov	r3, r0
	adds	r1, r2, #1
	lsls	r2, r2, #3
	adds	r0, r2, #4
.L2192:
	add	r2, r2, r3
	add	r3, r3, r0
	fsts	s22, [r2]
	fsts	s16, [r3]
	str	r1, [r4, #8]
.L2194:
	fadds	s18, s18, s17
	mov	r0, r5
	fcpys	s1, s16
	fadds	s19, s16, s19
	fadds	s24, s20, s16
	fsubs	s27, s18, s21
	fsubs	s25, s19, s20
	fcpys	s0, s27
	bl	nsvg__lineTo(PLT)
	flds	s15, .L2575+32
	mov	r0, r5
	fcpys	s1, s16
	fcpys	s2, s18
	fcpys	s4, s18
	fmuls	s21, s21, s15
	fmuls	s20, s20, s15
	fcpys	s5, s24
	fsubs	s28, s18, s21
	fadds	s23, s20, s16
	fsubs	s26, s19, s20
	fadds	s20, s21, s17
	fcpys	s0, s28
	fcpys	s3, s23
	bl	nsvg__cubicBezTo(PLT)
	fcpys	s1, s25
	mov	r0, r5
	fcpys	s0, s18
	bl	nsvg__lineTo(PLT)
	fcpys	s1, s26
	mov	r0, r5
	fcpys	s0, s18
	fcpys	s2, s28
	fcpys	s4, s27
	fcpys	s3, s19
	fcpys	s5, s19
	bl	nsvg__cubicBezTo(PLT)
	fcpys	s0, s22
	mov	r0, r5
	fcpys	s1, s19
	bl	nsvg__lineTo(PLT)
	fcpys	s0, s20
	mov	r0, r5
	fcpys	s1, s19
	fcpys	s3, s26
	fcpys	s5, s25
	fcpys	s2, s17
	fcpys	s4, s17
	bl	nsvg__cubicBezTo(PLT)
	fcpys	s0, s17
	mov	r0, r5
	fcpys	s1, s24
	bl	nsvg__lineTo(PLT)
	mov	r0, r5
	fcpys	s0, s17
	fcpys	s1, s23
	fcpys	s2, s20
	fcpys	s3, s16
	fcpys	s4, s22
	fcpys	s5, s16
	b	.L2535
.L2563:
	ldr	r3, [r4, #4]
	movs	r1, #1
	movs	r0, #4
	b	.L2192
.L2512:
	movw	r0, #64054
	add	fp, sp, #44
	movt	r0, 15502
	add	r9, sp, #40
	mov	r1, r9
	fconsts	s29, #96
	fmsr	s12, r0
	mov	r0, fp
	fmuls	s0, s20, s12
	bl	sincosf(PLT)
	flds	s20, [sp, #40]
	flds	s21, [sp, #44]
	fmuls	s13, s18, s18
	fmuls	s11, s19, s19
	fmuls	s25, s20, s24
	fmuls	s15, s20, s26
	fnegs	s31, s21
	fconsts	s14, #112
	fmacs	s25, s21, s26
	fmacs	s15, s31, s24
	fmuls	s25, s25, s29
	fmuls	s29, s15, s29
	fmuls	s12, s25, s25
	fmuls	s0, s29, s29
	fdivs	s15, s12, s11
	fdivs	s0, s0, s13
	fadds	s0, s0, s15
	fcmpes	s0, s14
	fmstat
	ble	.L2053
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	beq	.L2055
	bl	sqrtf(PLT)
	fcpys	s15, s0
.L2055:
	fmuls	s19, s19, s15
	fmuls	s18, s18, s15
.L2053:
	fconsts	s1, #0
	fcpys	s0, s19
	bl	powf(PLT)
	fconsts	s1, #0
	fcpys	s0, s18
	bl	powf(PLT)
	fconsts	s1, #0
	fmuls	s26, s19, s29
	fcpys	s0, s19
	bl	powf(PLT)
	fconsts	s1, #0
	fcpys	s0, s29
	bl	powf(PLT)
	fmuls	s28, s26, s26
	fconsts	s1, #0
	fmuls	s24, s18, s19
	fcpys	s0, s18
	bl	powf(PLT)
	fconsts	s1, #0
	fcpys	s0, s25
	bl	powf(PLT)
	fcpys	s13, s28
	fmuls	s27, s18, s25
	fmscs	s13, s24, s24
	fconsts	s1, #0
	fcpys	s0, s19
	fmuls	s27, s27, s27
	fsubs	s24, s13, s27
	bl	powf(PLT)
	fconsts	s1, #0
	fcpys	s0, s29
	bl	powf(PLT)
	fconsts	s1, #0
	fcpys	s0, s18
	bl	powf(PLT)
	fcpys	s0, s25
	fconsts	s1, #0
	bl	powf(PLT)
	fadds	s0, s27, s28
	movs	r0, #0
	fcmpzs	s24
	fmsr	s12, r0
	fmstat
	fcmpes	s0, s12
	it	mi
	fcpysmi	s24, s12
	fmstat
	ble	.L2513
	fdivs	s0, s24, s0
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	beq	.L2057
	bl	sqrtf(PLT)
	fcpys	s15, s0
.L2057:
	flds	s14, [sp, #12]
	flds	s12, [sp, #16]
	adr	r1, .L2577+8
	ldrd	r0, [r1]
	fadds	s22, s17, s22
	fabss	s13, s14
	fcvtds	d17, s13
	fabss	s14, s12
	fcvtds	d16, s14
	fmdrr	d6, r0, r1
	fcmped	d17, d6
	fmstat
	fcmped	d16, d6
	it	gt
	movgt	r8, #1
	fconsts	s13, #112
	it	le
	movle	r8, #0
	fmstat
	fdivs	s12, s13, s18
	it	gt
	movgt	r3, #1
	fdivs	s13, s13, s19
	it	le
	movle	r3, #0
	cmp	r8, r3
	fadds	s10, s16, s23
	fconsts	s11, #96
	it	eq
	fnegseq	s15, s15
	fmuls	s24, s22, s11
	fmuls	s14, s12, s26
	fnmuls	s9, s18, s13
	fmuls	s14, s14, s15
	fmuls	s9, s9, s25
	fsubs	s23, s25, s14
	fmuls	s15, s9, s15
	fadds	s27, s14, s25
	fmacs	s24, s14, s20
	fmuls	s23, s23, s13
	fsubs	s22, s29, s15
	fadds	s28, s15, s29
	fmuls	s26, s23, s23
	fmuls	s22, s22, s12
	fmuls	s25, s15, s20
	fnmacs	s24, s15, s21
	fnmuls	s28, s28, s12
	fmacs	s26, s22, s22
	fmacs	s25, s14, s21
	fnmuls	s27, s27, s13
	fsqrts	s29, s26
	fmacs	s25, s10, s11
	fcmps	s29, s29
	fmstat
	fcpys	s0, s29
	bne	.L2564
.L2061:
	movs	r1, #0
	fcpys	s14, s23
	fconsts	s15, #240
	fmsr	s12, r1
	fmacs	s14, s22, s12
	fdivs	s0, s14, s0
	fcmpes	s0, s15
	fmstat
	it	mi
	fcpysmi	s0, s15
	bmi	.L2062
	fconsts	s15, #112
	fcmps	s0, s15
	fmstat
	it	gt
	fcpysgt	s0, s15
.L2062:
	movs	r0, #0
	fconsts	s15, #112
	fconsts	s14, #240
	fmsr	s12, r0
	fmuls	s13, s23, s12
	fcmpes	s22, s13
	fmstat
	it	mi
	fcpysmi	s15, s14
	fsts	s15, [sp, #12]
	bl	acosf(PLT)
	flds	s13, [sp, #12]
	fcmps	s29, s29
	fmstat
	fmuls	s0, s13, s0
	fsts	s0, [sp, #24]
	bne	.L2565
.L2065:
	fmuls	s0, s27, s27
	fmacs	s0, s28, s28
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	bne	.L2566
.L2066:
	fmuls	s14, s27, s23
	fmuls	s15, s15, s29
	fconsts	s13, #240
	fmacs	s14, s28, s22
	fdivs	s0, s14, s15
	fcmpes	s0, s13
	fmstat
	it	mi
	fcpysmi	s0, s13
	bmi	.L2067
	fconsts	s15, #112
	fcmps	s0, s15
	fmstat
	it	gt
	fcpysgt	s0, s15
.L2067:
	fmuls	s22, s27, s22
	fmuls	s23, s28, s23
	fconsts	s14, #240
	fconsts	s15, #112
	fcmpes	s23, s22
	fmstat
	ite	pl
	fcpyspl	s22, s15
	fcpysmi	s22, s14
	bl	acosf(PLT)
	fmuls	s22, s22, s0
	cmp	r8, #0
	beq	.L2070
	flds	s15, .L2577
	fcmpezs	s22
	fmstat
	ite	gt
	fsubsgt	s22, s22, s15
	faddsle	s22, s22, s15
.L2070:
	movw	r2, #63875
	fconsts	s26, #112
	movt	r2, 16162
	fabss	s14, s22
	fcpys	s12, s26
	mov	r0, fp
	fmsr	s13, r2
	mov	r1, r9
	fconsts	s15, #96
	fmacs	s12, s14, s13
	ftosizs	s14, s12
	fsitos	s23, s14
	fsts	s14, [sp, #12]	@ int
	fdivs	s0, s22, s23
	fmuls	s0, s0, s15
	bl	sincosf(PLT)
	flds	s14, [sp, #40]
	movw	r0, #43691
	movt	r0, 16298
	flds	s15, [sp, #44]
	ldr	r2, [sp, #12]
	fmsr	s12, r0
	fsubs	s14, s26, s14
	fcmpezs	s22
	fmstat
	fmuls	s14, s14, s12
	fdivs	s15, s14, s15
	fabss	s15, s15
	it	mi
	fnegsmi	s15, s15
	cmp	r2, #0
	blt	.L2052
	fdivs	s23, s22, s23
	mov	r8, #0
	flds	s22, .L2577+4
	fmuls	s12, s15, s19
	fmuls	s15, s15, s18
	fsts	s22, [sp, #16]
	fcpys	s29, s22
	fsts	s12, [sp, #28]
	fsts	s15, [sp, #32]
	fsts	s22, [sp, #20]
	fsts	s23, [sp, #36]
	fcpys	s14, s23
	b	.L2091
.L2567:
	ldr	r0, [r4, #4]
	add	r10, r4, #4
.L2079:
	flds	s13, [sp, #16]
	add	lr, r0, r1, lsl #3
	adds	r1, r1, #1
	fsts	s22, [lr, #4]
	fsts	s13, [lr]
	str	r1, [r4, #8]
.L2082:
	cmp	r1, r3
	blt	.L2083
	lsls	r2, r3, #1
	lsls	r1, r3, #4
	cbnz	r3, .L2084
	movs	r1, #64
	movs	r2, #8
.L2084:
	str	r2, [r4, #12]
	bl	realloc(PLT)
	ldr	r1, [r4, #8]
	str	r0, [r10]
	ldr	r3, [r4, #12]
	cbz	r0, .L2086
.L2083:
	flds	s14, [sp, #20]
	add	lr, r0, r1, lsl #3
	adds	r1, r1, #1
	fsts	s29, [lr]
	fsts	s14, [lr, #4]
	str	r1, [r4, #8]
.L2086:
	cmp	r1, r3
	blt	.L2087
	lsls	r2, r3, #1
	lsls	r1, r3, #4
	cbnz	r3, .L2088
	movs	r1, #64
	movs	r2, #8
.L2088:
	str	r2, [r4, #12]
	bl	realloc(PLT)
	str	r0, [r10]
	cbz	r0, .L2077
	ldr	r1, [r4, #8]
.L2087:
	add	r0, r0, r1, lsl #3
	adds	r1, r1, #1
	fsts	s27, [r0]
	fsts	s28, [r0, #4]
	str	r1, [r4, #8]
.L2077:
	ldr	r2, [sp, #12]
	add	r8, r8, #1
	cmp	r2, r8
	blt	.L2052
	flds	s14, [sp, #36]
	fcpys	s22, s26
	fcpys	s29, s28
	fsts	s23, [sp, #16]
	fsts	s27, [sp, #20]
.L2091:
	fmsr	s13, r8	@ int
	mov	r0, fp
	fsitos	s15, s13
	mov	r1, r9
	flds	s0, [sp, #24]
	fmacs	s0, s14, s15
	bl	sincosf(PLT)
	flds	s15, [sp, #44]
	flds	s26, [sp, #40]
	flds	s12, [sp, #32]
	fmuls	s28, s15, s18
	fmuls	s14, s26, s19
	flds	s13, [sp, #28]
	fmuls	s26, s26, s12
	fmuls	s27, s28, s31
	fmuls	s28, s28, s20
	fnmuls	s15, s15, s13
	fmuls	s23, s26, s31
	fmacs	s27, s14, s20
	fmacs	s28, s14, s21
	fmuls	s26, s26, s20
	fmacs	s23, s15, s20
	fmacs	s26, s15, s21
	fadds	s27, s27, s24
	fadds	s28, s28, s25
	cmp	r8, #0
	beq	.L2077
	flds	s14, [sp, #20]
	flds	s15, [sp, #16]
	ldr	r1, [r4, #8]
	ldr	r3, [r4, #12]
	fsubs	s12, s28, s26
	fadds	s14, s14, s15
	cmp	r1, r3
	fadds	s22, s22, s29
	fsubs	s29, s27, s23
	fsts	s12, [sp, #20]
	fsts	s14, [sp, #16]
	blt	.L2567
	lsls	r2, r3, #1
	lsls	r1, r3, #4
	cbnz	r3, .L2080
	movs	r1, #64
	movs	r2, #8
.L2080:
	str	r2, [r4, #12]
	add	r10, r4, #4
	ldr	r0, [r4, #4]
	bl	realloc(PLT)
	ldr	r1, [r4, #8]
	str	r0, [r4, #4]
	ldr	r3, [r4, #12]
	cmp	r0, #0
	bne	.L2079
	b	.L2082
.L2547:
	ldr	r3, [r4]
	cmp	r3, #126
	ble	.L2568
.L2310:
	mov	r0, r5
	ldr	r1, [sp, #12]
	movs	r2, #1
	bl	nsvg__parsePoly(PLT)
	b	.L2532
.L2565:
	fcpys	s0, s26
	bl	sqrtf(PLT)
	fcpys	s29, s0
	b	.L2065
.L2564:
	fcpys	s0, s26
	bl	sqrtf(PLT)
	b	.L2061
.L2568:
	adds	r0, r3, #1
	mov	r1, #304
	str	r0, [r4]
	mov	r2, r1
	mla	r0, r1, r0, r5
	mla	r1, r1, r3, r5
	bl	memcpy(PLT)
	b	.L2310
.L2566:
	bl	sqrtf(PLT)
	fcpys	s15, s0
	b	.L2066
.L2548:
	movs	r3, #1
	strb	r3, [r4, #61]
	b	.L1959
.L2513:
	flds	s15, .L2577+4
	b	.L2057
.L2374:
	flds	s15, .L2577+4
	fconsts	s20, #240
	fcpys	s14, s15
	fcpys	s18, s15
	fcpys	s16, s15
	fcpys	s19, s15
	fcpys	s17, s15
	b	.L2102
.L2028:
	ldr	r2, [r4, #12]
	cmp	r3, r2
	bge	.L2030
	ldr	r2, [r4, #4]
.L2031:
	add	r2, r2, r3, lsl #3
	adds	r3, r3, #1
	fsts	s17, [r2]
	fsts	s16, [r2, #4]
	str	r3, [r4, #8]
	b	.L2029
.L2373:
	mov	r6, r9
	mov	r10, r0
	b	.L2003
.L2030:
	lsls	r3, r2, #1
	lsls	r1, r2, #4
	cbnz	r2, .L2032
	movs	r1, #64
	movs	r3, #8
.L2032:
	str	r3, [r4, #12]
	ldr	r0, [r4, #4]
	bl	realloc(PLT)
	str	r0, [r4, #4]
	cmp	r0, #0
	beq	.L2029
	ldr	r3, [r4, #8]
	mov	r2, r0
	b	.L2031
.L2220:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	b	.L2213
.L2342:
	ldr	r1, .L2577+16
	mov	r0, r6
.LPIC172:
	add	r1, pc
	bl	strstr(PLT)
	cmp	r0, #0
	beq	.L2343
	str	r9, [r4, #44]
.L2344:
	ldr	r1, .L2577+20
	mov	r0, r6
.LPIC175:
	add	r1, pc
	bl	strstr(PLT)
	cbz	r0, .L2346
	movs	r3, #0
	str	r3, [r4, #48]
.L2347:
	ldr	r1, .L2577+24
	movs	r3, #1
	mov	r0, r6
	str	r3, [r4, #52]
.LPIC178:
	add	r1, pc
	bl	strstr(PLT)
	cmp	r0, #0
	beq	.L2315
	movs	r3, #2
	str	r3, [r4, #52]
	b	.L2315
.L2550:
	ldr	r1, .L2577+28
	add	r2, r4, #36
	add	r3, r4, #40
	ldr	r0, [r10, r6, lsl #2]
	stmia	sp, {r2, r3}
	add	r2, r4, #28
.LPIC169:
	add	r1, pc
	add	r3, r4, #32
	bl	__isoc99_sscanf(PLT)
	b	.L2315
.L2346:
	ldr	r1, .L2577+32
	mov	r0, r6
.LPIC176:
	add	r1, pc
	bl	strstr(PLT)
	cbz	r0, .L2348
	movs	r3, #1
	str	r3, [r4, #48]
	b	.L2347
.L2578:
	.align	3
.L2577:
	.word	1086918619
	.word	0
	.word	-1598689907
	.word	1051772663
	.word	.LC64-(.LPIC172+4)
	.word	.LC67-(.LPIC175+4)
	.word	.LC70-(.LPIC178+4)
	.word	.LC62-(.LPIC169+4)
	.word	.LC68-(.LPIC176+4)
.L2343:
	ldr	r1, .L2579+8
	mov	r0, r6
.LPIC173:
	add	r1, pc
	bl	strstr(PLT)
	cbz	r0, .L2345
	movs	r3, #1
	str	r3, [r4, #44]
	b	.L2344
.L2348:
	ldr	r1, .L2579+12
	mov	r0, r6
.LPIC177:
	add	r1, pc
	bl	strstr(PLT)
	cmp	r0, #0
	beq	.L2347
	movs	r3, #2
	str	r3, [r4, #48]
	b	.L2347
.L2345:
	ldr	r1, .L2579+16
	mov	r0, r6
.LPIC174:
	add	r1, pc
	bl	strstr(PLT)
	cmp	r0, #0
	beq	.L2344
	movs	r3, #2
	str	r3, [r4, #44]
	b	.L2344
.L2549:
	ldr	r1, [r10, r6, lsl #2]
	add	r0, sp, #104
	ldr	r6, [r4, #20]
	bl	nsvg__parseCoordinateRaw(PLT)
	ldr	r3, [r4]
	mov	r1, #304
	ldr	r2, [sp, #108]
	flds	s15, [sp, #104]
	subs	r2, r2, #2
	mla	r3, r1, r3, r5
	cmp	r2, #8
	bhi	.L2329
	tbb	[pc, r2]
.L2331:
	.byte	(.L2330-.L2331)/2
	.byte	(.L2332-.L2331)/2
	.byte	(.L2333-.L2331)/2
	.byte	(.L2334-.L2331)/2
	.byte	(.L2335-.L2331)/2
	.byte	(.L2336-.L2331)/2
	.byte	(.L2337-.L2331)/2
	.byte	(.L2338-.L2331)/2
	.byte	(.L2339-.L2331)/2
	.align	1
.L2337:
	fmuls	s15, s15, s21
.L2329:
	fsts	s15, [r6, #4]
	b	.L2315
.L2325:
	fmuls	s15, s15, s21
.L2317:
	fsts	s15, [r6]
	b	.L2315
.L2336:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	b	.L2329
.L2338:
	flds	s14, [r3, #284]
	fmuls	s15, s15, s14
	b	.L2329
.L2324:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	b	.L2317
.L2326:
	flds	s14, [r3, #284]
	fmuls	s15, s15, s14
	b	.L2317
.L2323:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s15, s15, s19
	b	.L2317
.L2322:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s15, s15, s18
	b	.L2317
.L2318:
	flds	s13, .L2579
	flds	s14, [r4, #56]
	fmuls	s15, s15, s13
	fdivs	s15, s15, s14
	b	.L2317
.L2327:
	flds	s14, [r3, #284]
	fmuls	s15, s15, s14
	fmuls	s15, s15, s20
	b	.L2317
.L2321:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s15, s15, s17
	b	.L2317
.L2320:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s15, s15, s16
	b	.L2317
.L2335:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s15, s15, s19
	b	.L2329
.L2334:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s15, s15, s18
	b	.L2329
.L2330:
	flds	s13, .L2579
	flds	s14, [r4, #56]
	fmuls	s15, s15, s13
	fdivs	s15, s15, s14
	b	.L2329
.L2339:
	flds	s14, [r3, #284]
	fmuls	s15, s15, s14
	fmuls	s15, s15, s20
	b	.L2329
.L2333:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s15, s15, s17
	b	.L2329
.L2332:
	flds	s14, [r4, #56]
	fmuls	s15, s15, s14
	fmuls	s15, s15, s16
	b	.L2329
.L2277:
	flds	s15, [r3, #284]
	fmuls	s18, s18, s15
	b	.L2268
.L2289:
	flds	s15, [r3, #284]
	fmuls	s17, s17, s15
	b	.L2280
.L2281:
	flds	s14, .L2579
	flds	s15, [r4, #56]
	fmuls	s17, s17, s14
	fdivs	s17, s17, s15
	b	.L2280
.L2290:
	flds	s15, [r3, #284]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s24
	b	.L2280
.L2286:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s23
	b	.L2280
.L2285:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s22
	b	.L2280
.L2284:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s21
	b	.L2280
.L2283:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s20
	b	.L2280
.L2262:
	flds	s15, [r4, #56]
	fmuls	s19, s19, s15
	b	.L2255
.L2261:
	flds	s15, [r4, #56]
	fmuls	s19, s19, s15
	fmuls	s19, s19, s23
	b	.L2255
.L2260:
	flds	s15, [r4, #56]
	fmuls	s19, s19, s15
	fmuls	s19, s19, s22
	b	.L2255
.L2392:
	fcpys	s17, s16
	fcpys	s18, s16
	fcpys	s19, s16
	b	.L2251
.L2559:
	bl	sqrtf(PLT)
	fcpys	s15, s0
	b	.L2048
.L2560:
	adds	r0, r3, #1
	mov	r1, #304
	str	r0, [r4]
	mov	r2, r1
	mla	r0, r1, r0, r5
	mla	r1, r1, r3, r5
	bl	memcpy(PLT)
	b	.L2308
.L2219:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s21
	b	.L2213
.L2218:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s20
	b	.L2213
.L2217:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s19
	b	.L2213
.L2216:
	flds	s14, [r4, #56]
	flds	s15, .L2579+4
	fmuls	s16, s16, s14
	fmuls	s16, s16, s15
	b	.L2213
.L2214:
	flds	s14, .L2579
	flds	s15, [r4, #56]
	fmuls	s16, s16, s14
	fdivs	s16, s16, s15
	b	.L2213
.L2223:
	flds	s15, [r3, #284]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s22
	b	.L2213
.L2222:
	flds	s15, [r3, #284]
	fmuls	s16, s16, s15
	b	.L2213
.L2555:
	fcpys	s0, s15
	bl	sqrtf(PLT)
	b	.L2224
.L2287:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	b	.L2280
.L2264:
	flds	s15, [r3, #284]
	fmuls	s19, s19, s15
	b	.L2255
.L2259:
	flds	s15, [r4, #56]
	fmuls	s19, s19, s15
	fmuls	s19, s19, s21
	b	.L2255
.L2258:
	flds	s15, [r4, #56]
	fmuls	s19, s19, s15
	fmuls	s19, s19, s20
	b	.L2255
.L2256:
	flds	s14, .L2579
	flds	s15, [r4, #56]
	fmuls	s19, s19, s14
	fdivs	s19, s19, s15
	b	.L2255
.L2265:
	flds	s15, [r3, #284]
	fmuls	s19, s19, s15
	fmuls	s19, s19, s24
	b	.L2255
.L2209:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	b	.L2202
.L2208:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s21
	b	.L2202
.L2207:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s20
	b	.L2202
.L2206:
	flds	s15, [r4, #56]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s19
	b	.L2202
.L2205:
	flds	s14, [r4, #56]
	flds	s15, .L2579+4
	fmuls	s17, s17, s14
	fmuls	s17, s17, s15
	b	.L2202
.L2203:
	flds	s14, .L2579
	flds	s15, [r4, #56]
	fmuls	s17, s17, s14
	fdivs	s17, s17, s15
	b	.L2202
.L2212:
	flds	s15, [r3, #284]
	fmuls	s17, s17, s15
	fmuls	s17, s17, s22
	b	.L2202
.L2211:
	flds	s15, [r3, #284]
	fmuls	s17, s17, s15
	b	.L2202
.L2298:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	b	.L2252
.L2297:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s23
	b	.L2252
.L2296:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s22
	b	.L2252
.L2295:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s21
	b	.L2252
.L2294:
	flds	s15, [r4, #56]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s20
	b	.L2252
.L2292:
	flds	s14, .L2579
	flds	s15, [r4, #56]
	fmuls	s16, s16, s14
	fdivs	s16, s16, s15
	b	.L2252
.L2301:
	flds	s15, [r3, #284]
	fmuls	s16, s16, s15
	fmuls	s16, s16, s24
	b	.L2252
.L2300:
	flds	s15, [r3, #284]
	fmuls	s16, s16, s15
	b	.L2252
.L2275:
	flds	s15, [r4, #56]
	fmuls	s18, s18, s15
	b	.L2268
.L2274:
	flds	s15, [r4, #56]
	fmuls	s18, s18, s15
	fmuls	s18, s18, s23
	b	.L2268
.L2273:
	flds	s15, [r4, #56]
	fmuls	s18, s18, s15
	fmuls	s18, s18, s22
	b	.L2268
.L2272:
	flds	s15, [r4, #56]
	fmuls	s18, s18, s15
	fmuls	s18, s18, s21
	b	.L2268
.L2271:
	flds	s15, [r4, #56]
	fmuls	s18, s18, s15
	fmuls	s18, s18, s20
	b	.L2268
.L2269:
	flds	s14, .L2579
	flds	s15, [r4, #56]
	fmuls	s18, s18, s14
	fdivs	s18, s18, s15
	b	.L2268
.L2278:
	flds	s15, [r3, #284]
	fmuls	s18, s18, s15
	fmuls	s18, s18, s24
	b	.L2268
.L2580:
	.align	2
.L2579:
	.word	1126170624
	.word	1013157433
	.word	.LC65-(.LPIC173+4)
	.word	.LC69-(.LPIC177+4)
	.word	.LC66-(.LPIC174+4)
	.size	nsvg__startElement, .-nsvg__startElement
	.section	.text.nsvg__parseXML,"ax",%progbits
	.align	2
	.global	nsvg__parseXML
	.thumb
	.thumb_func
	.type	nsvg__parseXML, %function
nsvg__parseXML:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r3
	ldr	r6, .L2597
	mov	r10, r1
	mov	r9, r2
	mov	r5, r0
	movs	r3, #2
	movs	r7, #0
.LPIC179:
	add	r6, pc
.L2582:
	ldrb	r4, [r5], #1	@ zero_extendqisi2
	cbz	r4, .L2595
.L2588:
	cmp	r4, #60
	beq	.L2596
	cmp	r4, #62
	bne	.L2582
	cmp	r3, #1
	bne	.L2582
	strb	r7, [r5, #-1]
	mov	r1, r10
	ldr	r3, [sp, #32]
	mov	r2, r9
	bl	nsvg__parseElement(PLT)
	mov	r0, r5
	ldrb	r4, [r5], #1	@ zero_extendqisi2
	movs	r3, #2
	cmp	r4, #0
	bne	.L2588
.L2595:
	movs	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L2596:
	cmp	r3, #2
	bne	.L2582
	strb	r7, [r5, #-1]
	ldrb	r1, [r0]	@ zero_extendqisi2
	cbz	r1, .L2591
	mov	r4, r0
	b	.L2585
.L2586:
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
	cbz	r1, .L2591
.L2585:
	mov	r0, r6
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L2586
	cmp	r8, #0
	beq	.L2591
	ldr	r0, [sp, #32]
	mov	r1, r4
	blx	r8
	mov	r0, r5
	movs	r3, #1
	b	.L2582
.L2591:
	mov	r0, r5
	movs	r3, #1
	b	.L2582
.L2598:
	.align	2
.L2597:
	.word	.LC0-(.LPIC179+4)
	.size	nsvg__parseXML, .-nsvg__parseXML
	.section	.text.nsvgDelete,"ax",%progbits
	.align	2
	.global	nsvgDelete
	.thumb
	.thumb_func
	.type	nsvgDelete, %function
nsvgDelete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r0
	cmp	r0, #0
	beq	.L2599
	ldr	r6, [r0, #8]
	cbz	r6, .L2609
.L2610:
	ldr	r4, [r6, #148]
	ldr	r7, [r6, #152]
	cbz	r4, .L2606
.L2607:
	ldr	r3, [r4]
	ldr	r5, [r4, #28]
	mov	r0, r3
	cbz	r3, .L2605
	bl	free(PLT)
.L2605:
	mov	r0, r4
	mov	r4, r5
	bl	free(PLT)
	cmp	r5, #0
	bne	.L2607
.L2606:
	ldrb	r3, [r6, #64]	@ zero_extendqisi2
	subs	r3, r3, #2
	cmp	r3, #1
	bls	.L2621
	ldrb	r3, [r6, #72]	@ zero_extendqisi2
	subs	r3, r3, #2
	cmp	r3, #1
	bls	.L2622
.L2608:
	mov	r0, r6
	bl	free(PLT)
	cbz	r7, .L2609
.L2623:
	mov	r6, r7
	b	.L2610
.L2621:
	ldr	r0, [r6, #68]
	bl	free(PLT)
	ldrb	r3, [r6, #72]	@ zero_extendqisi2
	subs	r3, r3, #2
	cmp	r3, #1
	bhi	.L2608
.L2622:
	ldr	r0, [r6, #76]
	bl	free(PLT)
	mov	r0, r6
	bl	free(PLT)
	cmp	r7, #0
	bne	.L2623
.L2609:
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, lr}
	b	free(PLT)
.L2599:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	nsvgDelete, .-nsvgDelete
	.section	.text.nsvgParse,"ax",%progbits
	.align	2
	.global	nsvgParse
	.thumb
	.thumb_func
	.type	nsvgParse, %function
nsvgParse:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r0
	fstmfdd	sp!, {d8}
	movw	r0, #38976
	sub	sp, sp, #144
	mov	r8, r1
	fcpys	s16, s0
	bl	malloc(PLT)
	cmp	r0, #0
	beq	.L2625
	mov	r6, r0
	movs	r1, #0
	movw	r2, #38976
	add	r5, r6, #38912
	bl	memset(PLT)
	movs	r0, #12
	bl	malloc(PLT)
	mov	lr, r0
	str	r0, [r5, #20]
	cmp	r0, #0
	beq	.L2626
	movs	r4, #0
	mov	r7, #1065353216
	mov	r3, r0
	mov	r9, #0
	str	r4, [r3], #4
	mov	r1, r4
	str	r4, [lr, #4]
	movs	r2, #64
	str	r7, [r6, #64]	@ float
	mov	r0, r6
	str	r7, [r6, #76]	@ float
	str	r4, [r3, #4]
	str	r9, [r6, #68]	@ float
	str	r9, [r6, #72]	@ float
	str	r9, [r6, #80]	@ float
	str	r9, [r6, #84]	@ float
	bl	memset(PLT)
	movs	r3, #1
	ldr	r1, .L2782+40
	strb	r3, [r6, #300]
	mov	r0, r10
	strb	r3, [r6, #302]
	ldr	r2, .L2782+44
.LPIC180:
	add	r1, pc
	ldr	r3, .L2782+48
	str	r7, [r6, #96]	@ float
	str	r7, [r6, #100]	@ float
.LPIC181:
	add	r2, pc
	str	r7, [r6, #104]	@ float
.LPIC182:
	add	r3, pc
	str	r7, [r6, #292]	@ float
	str	r7, [r6, #236]	@ float
	str	r4, [r6, #88]
	str	r4, [r6, #92]
	strb	r4, [r6, #280]
	strb	r4, [r6, #281]
	strb	r4, [r6, #282]
	fsts	s16, [r5, #56]
	str	r6, [sp]
	bl	nsvg__parseXML(PLT)
	ldr	r7, [r5, #20]
	ldr	lr, [r7, #8]
	cmp	lr, #0
	beq	.L2701
	ldr	r3, [lr, #152]
	flds	s13, [lr, #132]
	flds	s14, [lr, #136]
	flds	s12, [lr, #140]
	flds	s15, [lr, #144]
	cbz	r3, .L2627
.L2628:
	flds	s8, [r3, #132]
	flds	s9, [r3, #136]
	flds	s10, [r3, #140]
	flds	s11, [r3, #144]
	fcmpes	s8, s13
	fmstat
	ldr	r3, [r3, #152]
	fcmpes	s9, s14
	it	le
	fcpysle	s13, s8
	fmstat
	fcmpes	s10, s12
	it	le
	fcpysle	s14, s9
	fmstat
	fcmpes	s11, s15
	it	pl
	fcpyspl	s12, s10
	fmstat
	it	pl
	fcpyspl	s15, s11
	cmp	r3, #0
	bne	.L2628
.L2627:
	flds	s10, [r5, #36]
	fcmpzs	s10
	fmstat
	bne	.L2771
	flds	s8, [r7]
	fcmpezs	s8
	fmstat
	fcpys	s10, s8
	iteet	gt
	fldsgt	s12, [r5, #28]
	fsubsle	s10, s12, s13
	fcpysle	s12, s13
	fstsgt	s8, [r5, #36]
	itt	le
	fstsle	s13, [r5, #28]
	fstsle	s10, [r5, #36]
.L2630:
	flds	s9, [r5, #40]
	fcmpzs	s9
	fmstat
	bne	.L2772
	flds	s11, [r7, #4]
	fcmpezs	s11
	fmstat
	fcpys	s9, s11
	iteet	gt
	fldsgt	s13, [r5, #32]
	fsubsle	s9, s15, s14
	fcpysle	s13, s14
	fstsgt	s11, [r5, #40]
	itt	le
	fstsle	s14, [r5, #32]
	fstsle	s9, [r5, #40]
.L2634:
	fcmpzs	s8
	fmstat
	fcmpzs	s11
	it	eq
	fstseq	s10, [r7]
	fmstat
	fcmpezs	s10
	it	eq
	fstseq	s9, [r7, #4]
	fmstat
	fcmpezs	s9
	ite	gt
	fldsgt	s15, [r7]
	fldsle	s15, .L2782+32
	ldrb	r3, [r8]	@ zero_extendqisi2
	it	gt
	fdivsgt	s15, s15, s10
	fmstat
	itet	gt
	fldsgt	s14, [r7, #4]
	fldsle	s14, .L2782+32
	fdivsgt	s14, s14, s9
	cmp	r3, #100
	beq	.L2773
	cmp	r3, #112
	beq	.L2774
	cmp	r3, #109
	beq	.L2775
	cmp	r3, #99
	bne	.L2652
	ldrb	r3, [r8, #1]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L2653
.L2706:
	fconsts	s11, #112
.L2647:
	ldr	r3, [r5, #52]
	cmp	r3, #1
	beq	.L2776
.L2657:
	cmp	r3, #2
	beq	.L2665
	fnegs	s12, s12
	fnegs	s13, s13
.L2664:
	fmuls	s15, s15, s11
	fmuls	s14, s14, s11
	fconsts	s11, #96
	fadds	s10, s14, s15
	fmuls	s11, s10, s11
	cmp	lr, #0
	beq	.L2693
	fmuls	s9, s15, s12
	vmov.f32	d22, #0.0  @ v2sf
	fmuls	s10, s15, s13
	add	ip, sp, #120
	fldd	d21, .L2782
	fldd	d20, .L2782+8
	vdup.32	d18, d5[1]
	fconstd	d19, #112
	vldr	d23, .L2782+16
	vldr	d24, .L2782+24
.L2694:
	add	r3, lr, #132
	vld1.32	{q13}, [r3]
	fsts	s12, [sp, #104]
	fsts	s13, [sp, #108]
	fsts	s12, [sp, #112]
	fsts	s13, [sp, #116]
	vldr	d16, [sp, #104]
	vldr	d17, [sp, #112]
	vadd.f32	q13, q13, q8
	fsts	s15, [sp, #88]
	fsts	s14, [sp, #92]
	fsts	s15, [sp, #96]
	fsts	s14, [sp, #100]
	vldr	d16, [sp, #88]
	vldr	d17, [sp, #96]
	vmul.f32	q8, q13, q8
	vst1.32	{q8}, [r3]
	ldr	r3, [lr, #148]
	cmp	r3, #0
	bne	.L2686
	b	.L2680
.L2777:
	fsts	s12, [sp, #40]
	mov	r8, r4
	fsts	s13, [sp, #44]
	fsts	s12, [sp, #48]
	fsts	s13, [sp, #52]
	fsts	s15, [sp, #24]
	fsts	s14, [sp, #28]
	fsts	s15, [sp, #32]
	fsts	s14, [sp, #36]
	vldr	d26, [sp, #40]
	vldr	d27, [sp, #48]
	vldr	d16, [sp, #24]
	vldr	d17, [sp, #32]
.L2685:
	vld1.32	{q14}, [r8]
	add	r9, r9, #1
	vadd.f32	q14, q14, q13
	cmp	r1, r9
	vmul.f32	q14, q14, q8
	vst1.32	{q14}, [r8]!
	bhi	.L2685
	cmp	r2, r0
	mov	r1, r0
	beq	.L2684
.L2681:
	add	r1, r4, r1, lsl #3
	vld1.32	{d17}, [r1]
	fsts	s12, [sp, #16]
	fsts	s13, [sp, #20]
	vldr	d16, [sp, #16]
	vadd.f32	d17, d17, d16
	fsts	s15, [sp, #8]
	fsts	s14, [sp, #12]
	vldr	d16, [sp, #8]
	vmul.f32	d16, d17, d16
	vst1.32	{d16}, [r1]
.L2684:
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L2680
.L2686:
	add	r2, r3, #12
	vld1.32	{q13}, [r2]
	fsts	s12, [sp, #72]
	fsts	s13, [sp, #76]
	fsts	s12, [sp, #80]
	fsts	s13, [sp, #84]
	vldr	d16, [sp, #72]
	vldr	d17, [sp, #80]
	vadd.f32	q13, q13, q8
	fsts	s15, [sp, #56]
	fsts	s14, [sp, #60]
	fsts	s15, [sp, #64]
	fsts	s14, [sp, #68]
	vldr	d16, [sp, #56]
	vldr	d17, [sp, #64]
	vmul.f32	q8, q13, q8
	vst1.32	{q8}, [r2]
	ldr	r2, [r3, #4]
	cmp	r2, #0
	ble	.L2684
	lsrs	r1, r2, #1
	ldr	r4, [r3]
	cmp	r1, #0
	it	ne
	cmpne	r2, #1
	lsl	r0, r1, #1
	ite	ls
	movls	r9, #1
	movhi	r9, #0
	bhi	.L2777
	movs	r1, #0
	b	.L2681
.L2626:
	mov	r0, r6
	bl	free(PLT)
.L2625:
	movs	r7, #0
	mov	r0, r7
	add	sp, sp, #144
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L2772:
	flds	s13, [r5, #32]
	flds	s11, [r7, #4]
	b	.L2634
.L2771:
	flds	s12, [r5, #28]
	flds	s8, [r7]
	b	.L2630
.L2775:
	ldrb	r3, [r8, #1]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L2706
	flds	s7, [r5, #56]
	flds	s11, .L2782+36
	ldr	r3, [r5, #52]
	fconsts	s8, #112
	fmuls	s11, s7, s11
	cmp	r3, #1
	fdivs	s11, s8, s11
	bne	.L2657
.L2776:
	ldr	r3, [r5, #44]
	fcmps	s15, s14
	fmstat
	it	mi
	fcpysmi	s14, s15
	flds	s15, [r7]
	cmp	r3, #0
	bne	.L2770
.L2709:
	flds	s15, .L2782+32
	b	.L2668
.L2680:
	ldrb	r3, [lr, #64]	@ zero_extendqisi2
	subs	r3, r3, #2
	cmp	r3, #1
	bls	.L2778
.L2677:
	ldrb	r3, [lr, #72]	@ zero_extendqisi2
	subs	r3, r3, #2
	cmp	r3, #1
	bls	.L2779
.L2688:
	add	r3, lr, #84
	vld1.32	{d16}, [r3]
	vmul.f32	d16, d16, d18
	vst1.32	{d16}, [r3]
	ldrb	r3, [lr, #124]	@ zero_extendqisi2
	cbz	r3, .L2691
	flds	s8, [lr, #92]
	cmp	r3, #1
	fmuls	s8, s8, s11
	fsts	s8, [lr, #92]
	beq	.L2691
	flds	s8, [lr, #96]
	cmp	r3, #2
	fmuls	s8, s8, s11
	fsts	s8, [lr, #96]
	beq	.L2691
	flds	s8, [lr, #100]
	cmp	r3, #3
	fmuls	s8, s8, s11
	fsts	s8, [lr, #100]
	beq	.L2691
	flds	s8, [lr, #104]
	cmp	r3, #4
	fmuls	s8, s8, s11
	fsts	s8, [lr, #104]
	beq	.L2691
	flds	s8, [lr, #108]
	cmp	r3, #5
	fmuls	s8, s8, s11
	fsts	s8, [lr, #108]
	beq	.L2691
	flds	s8, [lr, #112]
	cmp	r3, #6
	fmuls	s8, s8, s11
	fsts	s8, [lr, #112]
	beq	.L2691
	flds	s8, [lr, #116]
	cmp	r3, #7
	fmuls	s8, s8, s11
	fsts	s8, [lr, #116]
	ittt	ne
	fldsne	s8, [lr, #120]
	fmulsne	s8, s8, s11
	fstsne	s8, [lr, #120]
.L2691:
	ldr	lr, [lr, #152]
	cmp	lr, #0
	bne	.L2694
.L2693:
	ldr	r4, [r5, #16]
	movs	r3, #0
	str	r3, [r5, #20]
	cbz	r4, .L2674
.L2698:
	ldr	r3, [r4]
	ldr	r8, [r4, #28]
	mov	r0, r3
	cbz	r3, .L2697
	bl	free(PLT)
.L2697:
	mov	r0, r4
	mov	r4, r8
	bl	free(PLT)
	cmp	r8, #0
	bne	.L2698
.L2674:
	ldr	r4, [r5, #24]
	cbz	r4, .L2696
.L2700:
	ldr	r8, [r4, #208]
	ldr	r0, [r4, #204]
	bl	free(PLT)
	mov	r0, r4
	mov	r4, r8
	bl	free(PLT)
	cmp	r8, #0
	bne	.L2700
.L2696:
	ldr	r0, [r5, #20]
	bl	nsvgDelete(PLT)
	ldr	r0, [r5, #4]
	bl	free(PLT)
	mov	r0, r6
	bl	free(PLT)
	mov	r0, r7
	add	sp, sp, #144
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L2783:
	.align	3
.L2782:
	.word	-1598689907
	.word	1051772663
	.word	-1598689907
	.word	-1095710985
	.word	1065353216
	.word	0
	.word	0
	.word	1065353216
	.word	0
	.word	1025589893
	.word	nsvg__startElement-(.LPIC180+4)
	.word	nsvg__endElement-(.LPIC181+4)
	.word	nsvg__content-(.LPIC182+4)
	.word	0
	.word	1042983595
	.word	1126170624
	.word	1013157433
	.word	1053397798
.L2779:
	ldr	r3, [lr, #76]
	mov	r8, ip
	flds	s3, [r3]
	flds	s4, [r3, #4]
	flds	s5, [r3, #8]
	flds	s6, [r3, #12]
	flds	s7, [r3, #16]
	flds	s8, [r3, #20]
	fmuls	s3, s3, s15
	fmuls	s6, s6, s14
	fadds	s7, s7, s9
	fadds	s8, s8, s10
	fmuls	s4, s4, s15
	fmuls	s5, s5, s14
	fsts	s6, [r3, #12]
	fsts	s7, [r3, #16]
	fsts	s8, [r3, #20]
	fsts	s3, [r3]
	fsts	s4, [r3, #4]
	fsts	s5, [r3, #8]
	ldr	r4, [lr, #76]
	ldr	r3, [r4, #12]	@ unaligned
	ldr	r0, [r4]	@ unaligned
	ldr	r1, [r4, #4]	@ unaligned
	ldr	r2, [r4, #8]	@ unaligned
	stmia	r8!, {r0, r1, r2, r3}
	flds	s8, [sp, #124]
	flds	s6, [sp, #128]
	flds	s7, [sp, #132]
	fcvtds	d26, s8
	flds	s8, [sp, #120]
	fcvtds	d16, s6
	fcvtds	d17, s7
	ldr	r0, [r4, #16]	@ unaligned
	fcvtds	d25, s8
	fmuld	d16, d26, d16
	ldr	r1, [r4, #20]	@ unaligned
	stmia	r8!, {r0, r1}
	fmscd	d16, d17, d25
	fcmped	d16, d21
	fmstat
	fcmped	d16, d20
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	cmp	r3, #0
	bne	.L2780
	fdivd	d16, d19, d16
	fmuld	d17, d16, d17
	fcvtsd	s8, d17
	fsts	s8, [r4]
	flds	s6, [sp, #128]
	flds	s7, [sp, #124]
	flds	s8, [sp, #120]
	fnegs	s6, s6
	fcvtds	d26, s6
	fnegs	s7, s7
	fcvtds	d25, s7
	fcvtds	d17, s8
	fmuld	d26, d16, d26
	fmuld	d25, d16, d25
	fmuld	d29, d16, d17
	fcvtsd	s7, d26
	fcvtsd	s8, d25
	fsts	s7, [r4, #8]
	flds	s7, [sp, #136]
	flds	s4, [sp, #132]
	flds	s5, [sp, #140]
	flds	s6, [sp, #128]
	fcvtds	d28, s7
	fcvtds	d25, s4
	fcvtds	d27, s5
	fcvtds	d26, s6
	fsts	s8, [r4, #4]
	fmuld	d25, d28, d25
	flds	s8, [sp, #124]
	fcvtsd	s7, d29
	fmscd	d25, d27, d26
	fcvtds	d26, s8
	fsts	s7, [r4, #12]
	fmuld	d25, d25, d16
	fcvtsd	s8, d25
	fsts	s8, [r4, #16]
	flds	s7, [sp, #140]
	flds	s8, [sp, #136]
	fcvtds	d27, s7
	fcvtds	d25, s8
	fmuld	d17, d27, d17
	fmscd	d17, d25, d26
	fmuld	d16, d17, d16
	fcvtsd	s8, d16
	fsts	s8, [r4, #20]
	b	.L2688
.L2778:
	ldr	r3, [lr, #68]
	mov	r8, ip
	flds	s3, [r3]
	flds	s4, [r3, #4]
	flds	s5, [r3, #8]
	flds	s6, [r3, #12]
	flds	s7, [r3, #16]
	flds	s8, [r3, #20]
	fmuls	s3, s3, s15
	fmuls	s6, s6, s14
	fadds	s7, s7, s9
	fadds	s8, s8, s10
	fmuls	s4, s4, s15
	fmuls	s5, s5, s14
	fsts	s6, [r3, #12]
	fsts	s7, [r3, #16]
	fsts	s8, [r3, #20]
	fsts	s3, [r3]
	fsts	s4, [r3, #4]
	fsts	s5, [r3, #8]
	ldr	r4, [lr, #68]
	ldr	r3, [r4, #12]	@ unaligned
	ldr	r0, [r4]	@ unaligned
	ldr	r1, [r4, #4]	@ unaligned
	ldr	r2, [r4, #8]	@ unaligned
	stmia	r8!, {r0, r1, r2, r3}
	flds	s8, [sp, #124]
	flds	s6, [sp, #128]
	flds	s7, [sp, #132]
	fcvtds	d26, s8
	flds	s8, [sp, #120]
	fcvtds	d16, s6
	fcvtds	d17, s7
	ldr	r0, [r4, #16]	@ unaligned
	fcvtds	d25, s8
	fmuld	d16, d26, d16
	ldr	r1, [r4, #20]	@ unaligned
	stmia	r8!, {r0, r1}
	fmscd	d16, d17, d25
	fcmped	d16, d21
	fmstat
	fcmped	d16, d20
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	and	r3, r3, #1
	it	le
	movle	r3, #0
	cmp	r3, #0
	bne	.L2781
	fdivd	d16, d19, d16
	fmuld	d17, d16, d17
	fcvtsd	s8, d17
	fsts	s8, [r4]
	flds	s6, [sp, #128]
	flds	s7, [sp, #124]
	flds	s8, [sp, #120]
	fnegs	s6, s6
	fcvtds	d26, s6
	fnegs	s7, s7
	fcvtds	d25, s7
	fcvtds	d17, s8
	fmuld	d26, d16, d26
	fmuld	d25, d16, d25
	fmuld	d29, d16, d17
	fcvtsd	s7, d26
	fcvtsd	s8, d25
	fsts	s7, [r4, #8]
	flds	s7, [sp, #136]
	flds	s4, [sp, #132]
	flds	s5, [sp, #140]
	flds	s6, [sp, #128]
	fcvtds	d28, s7
	fcvtds	d25, s4
	fcvtds	d27, s5
	fcvtds	d26, s6
	fsts	s8, [r4, #4]
	fmuld	d25, d28, d25
	flds	s8, [sp, #124]
	fcvtsd	s7, d29
	fmscd	d25, d27, d26
	fcvtds	d26, s8
	fsts	s7, [r4, #12]
	fmuld	d25, d25, d16
	fcvtsd	s8, d25
	fsts	s8, [r4, #16]
	flds	s7, [sp, #140]
	flds	s8, [sp, #136]
	fcvtds	d27, s7
	fcvtds	d25, s8
	fmuld	d17, d27, d17
	fmscd	d17, d25, d26
	fmuld	d16, d17, d16
	fcvtsd	s8, d16
	fsts	s8, [r4, #20]
	b	.L2677
.L2780:
	vstr	d23, [sp, #120]
	vstr	d24, [sp, #128]
	vstr	d22, [sp, #136]
	b	.L2688
.L2781:
	vstr	d23, [sp, #120]
	vstr	d24, [sp, #128]
	vstr	d22, [sp, #136]
	b	.L2677
.L2665:
	ldr	r3, [r5, #44]
	fcmps	s15, s14
	fmstat
	it	gt
	fcpysgt	s14, s15
	flds	s15, [r7]
	cmp	r3, #0
	beq	.L2709
.L2770:
	fmuls	s10, s14, s10
	cmp	r3, #2
	it	ne
	fconstsne	s8, #96
	fsubs	s15, s15, s10
	it	ne
	fmulsne	s15, s15, s8
.L2668:
	fdivs	s10, s15, s14
	ldr	r3, [r5, #48]
	flds	s15, [r7, #4]
	fsubs	s12, s10, s12
	cbz	r3, .L2710
	fmuls	s9, s14, s9
	cmp	r3, #2
	it	ne
	fconstsne	s10, #96
	fsubs	s15, s15, s9
	it	ne
	fmulsne	s15, s15, s10
.L2670:
	fdivs	s10, s15, s14
	fcpys	s15, s14
	fsubs	s13, s10, s13
	b	.L2664
.L2710:
	flds	s15, .L2782+52
	b	.L2670
.L2774:
	ldrb	r3, [r8, #1]	@ zero_extendqisi2
	cmp	r3, #120
	beq	.L2706
	cmp	r3, #116
	beq	.L2648
	cmp	r3, #99
	bne	.L2706
	flds	s7, [r5, #56]
	flds	s11, .L2782+56
	fconsts	s8, #112
	fmuls	s11, s7, s11
	fdivs	s11, s8, s11
	b	.L2647
.L2773:
	ldrb	r3, [r8, #1]	@ zero_extendqisi2
	cmp	r3, #112
	bne	.L2706
	flds	s7, .L2782+60
	flds	s11, [r5, #56]
	fconsts	s8, #112
	fdivs	s11, s7, s11
	fdivs	s11, s8, s11
	b	.L2647
.L2648:
	flds	s7, [r5, #56]
	flds	s11, .L2782+64
	fconsts	s8, #112
	fmuls	s11, s7, s11
	fdivs	s11, s8, s11
	b	.L2647
.L2653:
	flds	s7, [r5, #56]
	flds	s11, .L2782+68
	fconsts	s8, #112
	fmuls	s11, s7, s11
	fdivs	s11, s8, s11
	b	.L2647
.L2652:
	cmp	r3, #105
	bne	.L2645
	ldrb	r3, [r8, #1]	@ zero_extendqisi2
	cmp	r3, #110
	bne	.L2706
	flds	s11, [r5, #56]
	fconsts	s8, #112
	fdivs	s11, s8, s11
	b	.L2647
.L2645:
	cmp	r3, #37
	it	eq
	fldseq	s11, .L2784
	beq	.L2647
	cmp	r3, #101
	bne	.L2706
	ldrb	r3, [r8, #1]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L2655
	cmp	r3, #120
	bne	.L2706
	ldr	r3, [r5]
	mov	r2, #304
	flds	s11, .L2784+4
	fconsts	s8, #112
	mla	r3, r2, r3, r6
	flds	s7, [r3, #284]
	fmuls	s11, s7, s11
	fdivs	s11, s8, s11
	b	.L2647
.L2701:
	fmsr	s15, r9
	fmsr	s12, r9
	fmsr	s14, r9
	fmsr	s13, r9
	b	.L2627
.L2655:
	ldr	r3, [r5]
	mov	r2, #304
	fconsts	s8, #112
	mla	r3, r2, r3, r6
	flds	s11, [r3, #284]
	fdivs	s11, s8, s11
	b	.L2647
.L2785:
	.align	2
.L2784:
	.word	1120403456
	.word	1057300152
	.size	nsvgParse, .-nsvgParse
	.section	.text.nsvgParseFromFile,"ax",%progbits
	.align	2
	.global	nsvgParseFromFile
	.thumb
	.thumb_func
	.type	nsvgParseFromFile, %function
nsvgParseFromFile:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r1
	ldr	r1, .L2796
	fstmfdd	sp!, {d8}
.LPIC183:
	add	r1, pc
	fcpys	s16, s0
	bl	fopen(PLT)
	cbz	r0, .L2794
	mov	r4, r0
	movs	r1, #0
	movs	r2, #2
	bl	fseek(PLT)
	mov	r0, r4
	bl	ftell(PLT)
	movs	r1, #0
	mov	r5, r0
	mov	r2, r1
	mov	r0, r4
	bl	fseek(PLT)
	adds	r0, r5, #1
	bl	malloc(PLT)
	mov	r6, r0
	cbz	r0, .L2789
	mov	r3, r4
	movs	r1, #1
	mov	r2, r5
	bl	fread(PLT)
	cmp	r0, r5
	mov	r3, r0
	beq	.L2795
	mov	r0, r4
	bl	fclose(PLT)
	mov	r0, r6
	bl	free(PLT)
.L2794:
	movs	r0, #0
.L2792:
	fldmfdd	sp!, {d8}
	pop	{r3, r4, r5, r6, r7, pc}
.L2789:
	mov	r0, r4
	bl	fclose(PLT)
	b	.L2794
.L2795:
	movs	r2, #0
	mov	r0, r4
	strb	r2, [r6, r3]
	bl	fclose(PLT)
	mov	r1, r7
	fcpys	s0, s16
	mov	r0, r6
	bl	nsvgParse(PLT)
	mov	r4, r0
	mov	r0, r6
	bl	free(PLT)
	mov	r0, r4
	b	.L2792
.L2797:
	.align	2
.L2796:
	.word	.LC71-(.LPIC183+4)
	.size	nsvgParseFromFile, .-nsvgParseFromFile
	.section	.text.nsvgDeleteRasterizer,"ax",%progbits
	.align	2
	.global	nsvgDeleteRasterizer
	.thumb
	.thumb_func
	.type	nsvgDeleteRasterizer, %function
nsvgDeleteRasterizer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	cbz	r0, .L2798
	ldr	r0, [r0, #56]
	cbz	r0, .L2803
.L2804:
	ldr	r4, [r0, #1028]
	bl	free(PLT)
	mov	r0, r4
	cmp	r4, #0
	bne	.L2804
.L2803:
	ldr	r0, [r5, #16]
	cbz	r0, .L2802
	bl	free(PLT)
.L2802:
	ldr	r0, [r5, #28]
	cbz	r0, .L2805
	bl	free(PLT)
.L2805:
	ldr	r0, [r5, #40]
	cbz	r0, .L2806
	bl	free(PLT)
.L2806:
	ldr	r0, [r5, #64]
	cbz	r0, .L2807
	bl	free(PLT)
.L2807:
	mov	r0, r5
	pop	{r3, r4, r5, lr}
	b	free(PLT)
.L2798:
	pop	{r3, r4, r5, pc}
	.size	nsvgDeleteRasterizer, .-nsvgDeleteRasterizer
	.section	.text.nsvgCreateRasterizer,"ax",%progbits
	.align	2
	.global	nsvgCreateRasterizer
	.thumb
	.thumb_func
	.type	nsvgCreateRasterizer, %function
nsvgCreateRasterizer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r0, #84
	bl	malloc(PLT)
	mov	r4, r0
	cbz	r0, .L2822
	movs	r2, #84
	movs	r1, #0
	bl	memset(PLT)
	movw	r2, #55050
	mov	r3, #1048576000
	movt	r2, 15395
	str	r3, [r4, #8]	@ float
	str	r2, [r4, #12]	@ float
.L2823:
	mov	r0, r4
	pop	{r4, pc}
.L2822:
	bl	nsvgDeleteRasterizer(PLT)
	b	.L2823
	.size	nsvgCreateRasterizer, .-nsvgCreateRasterizer
	.global	__aeabi_idivmod
	.section	.text.nsvgRasterize,"ax",%progbits
	.align	2
	.global	nsvgRasterize
	.thumb
	.thumb_func
	.type	nsvgRasterize, %function
nsvgRasterize:
	@ args = 0, pretend = 0, frame = 1768
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	adds	r0, r0, #76
	mov	r4, r1
	subw	sp, sp, #1788
	str	r2, [r0, #-4]
	vld1.32	{d16}, [r2]
	ldr	r1, [r2]
	vst1.32	{d16}, [r0]
	ldr	r2, [r10, #68]
	fcpys	s17, s0
	fcpys	s18, s1
	cmp	r1, r2
	fcpys	s16, s2
	bgt	.L2826
.L2830:
	ldr	r4, [r4, #8]
	str	r4, [sp, #36]
	cmp	r4, #0
	beq	.L2828
	ldr	r4, .L3312+4
	mov	r9, r10
.LPIC185:
	add	r4, pc
	str	r4, [sp, #84]
	ldr	r4, [sp, #36]
.L3074:
	ldrb	r3, [r4, #128]	@ zero_extendqisi2
	lsls	r5, r3, #31
	bpl	.L2833
	ldrb	r3, [r4, #64]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L2834
	ldr	r1, [r9, #56]
	movs	r2, #0
	mov	r3, r1
	cbz	r1, .L2838
.L2839:
	str	r2, [r3, #1024]
	ldr	r3, [r3, #1028]
	cmp	r3, #0
	bne	.L2839
.L2838:
	ldr	r4, [sp, #36]
	movs	r3, #0
	str	r1, [r9, #60]
	str	r3, [r9, #52]
	str	r3, [r9, #20]
	ldr	r10, [r4, #148]
	cmp	r10, #0
	beq	.L3267
	add	r5, sp, #504
	add	r2, sp, #508
	add	r3, sp, #512
	str	r2, [sp, #28]
	str	r3, [sp, #32]
.L2866:
	ldr	r3, [r10]
	movs	r4, #0
	ldr	r2, [r9, #36]
	str	r4, [r9, #32]
	flds	s14, [r3]
	flds	s15, [r3, #4]
	cmp	r2, r4
	fmuls	s20, s16, s14
	fmuls	s19, s16, s15
	bgt	.L3268
	movs	r1, #64
	ldr	r0, [r9, #28]
	str	r1, [r9, #36]
	mov	r1, #2048
	bl	realloc(PLT)
	str	r0, [r9, #28]
	cbz	r0, .L2842
	ldr	r3, [r9, #32]
	lsls	r3, r3, #5
.L2841:
	add	r0, r0, r3
	mov	r2, #0
	strb	r2, [r0, #28]
	ldr	r3, [r9, #32]
	fsts	s20, [r0]
	fsts	s19, [r0, #4]
	adds	r3, r3, #1
	str	r3, [r9, #32]
.L2842:
	ldr	r3, [r10, #4]
	cmp	r3, #1
	it	gt
	movgt	r4, #0
	ble	.L2846
.L2847:
	ldr	r3, [r10]
	mov	r0, r9
	movs	r1, #0
	add	r3, r3, r4, lsl #3
	adds	r4, r4, #3
	flds	s0, [r3]
	flds	s1, [r3, #4]
	flds	s2, [r3, #8]
	flds	s3, [r3, #12]
	flds	s4, [r3, #16]
	flds	s5, [r3, #20]
	flds	s6, [r3, #24]
	flds	s7, [r3, #28]
	fmuls	s0, s16, s0
	fmuls	s1, s16, s1
	fmuls	s2, s16, s2
	fmuls	s3, s16, s3
	fmuls	s4, s16, s4
	fmuls	s5, s16, s5
	fmuls	s6, s16, s6
	fmuls	s7, s16, s7
	bl	nsvg__flattenCubicBez.constprop.39(PLT)
	ldr	r3, [r10, #4]
	subs	r3, r3, #1
	cmp	r4, r3
	blt	.L2847
.L2846:
	ldr	r3, [r10]
	ldr	r1, [r9, #32]
	flds	s20, [r3]
	flds	s19, [r3, #4]
	cmp	r1, #0
	mov	lr, r1
	fmuls	s20, s16, s20
	fmuls	s19, s16, s19
	ble	.L3269
	ldr	r3, [r9, #28]
	add	r2, r1, #134217728
	flds	s15, [r9, #12]
	subs	r2, r2, #1
	mov	r0, r3
	add	r2, r3, r2, lsl #5
	fmuls	s13, s15, s15
	flds	s15, [r2]
	flds	s14, [r2, #4]
	fsubs	s15, s20, s15
	fsubs	s14, s19, s14
	fmuls	s15, s15, s15
	fmacs	s15, s14, s14
	fcmpes	s15, s13
	fmstat
	bmi	.L2849
.L2848:
	ldr	r3, [r9, #36]
	cmp	r1, r3
	blt	.L2850
	cmp	r3, #0
	itete	gt
	lslgt	r2, r3, #1
	movle	r2, #64
	lslgt	r1, r3, #6
	movle	r1, #2048
	str	r2, [r9, #36]
	bl	realloc(PLT)
	str	r0, [r9, #28]
	cmp	r0, #0
	beq	.L3270
	ldr	lr, [r9, #32]
.L2850:
	add	lr, r0, lr, lsl #5
	mov	r3, #0
	strb	r3, [lr, #28]
	ldr	r1, [r9, #32]
	fsts	s20, [lr]
	fsts	s19, [lr, #4]
	add	lr, r1, #1
	mov	r1, lr
	str	lr, [r9, #32]
.L2853:
	cmp	lr, #0
	add	r2, lr, #-1
	ble	.L2864
	ldr	r3, [r9, #28]
.L2854:
	movs	r4, #0
	add	r8, sp, #516
	add	r6, sp, #520
	b	.L2865
.L3272:
	ldr	r0, [r9, #16]
.L2859:
	fcmpes	s19, s20
	add	lr, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r0, r0, lr, lsl #3
	bmi	.L3271
	str	fp, [r5]	@ float
	mov	lr, r1
	fsts	s20, [sp, #508]
	mov	r2, #-1
	str	r7, [sp, #512]	@ float
	fsts	s19, [r8]
	vld1.64	{d16-d17}, [r5:64]
	str	r2, [r0, #16]
	vst1.32	{q8}, [r0]
.L2857:
	adds	r0, r4, #1
	cmp	r0, lr
	bge	.L2864
.L3274:
	ldr	r3, [r9, #28]
	mov	r2, r4
	mov	r4, r0
.L2865:
	add	r2, r3, r2, lsl #5
	add	r3, r3, r4, lsl #5
	flds	s19, [r2, #4]
	flds	s20, [r3, #4]
	ldr	r7, [r2]	@ float
	ldr	fp, [r3]	@ float
	fcmps	s19, s20
	fmstat
	beq	.L2857
	ldr	r3, [r9, #20]
	ldr	r0, [r9, #24]
	cmp	r3, r0
	blt	.L3272
	cmp	r0, #0
	iteet	gt
	lslgt	r3, r0, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r0, r3, r0, lsl #2
	str	r3, [r9, #24]
	it	gt
	lslgt	r1, r0, #3
	ldr	r0, [r9, #16]
	bl	realloc(PLT)
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L3273
	ldr	r3, [r9, #20]
	ldr	r1, [r9, #32]
	b	.L2859
.L3271:
	str	r7, [r6]	@ float
	movs	r3, #1
	fsts	s19, [sp, #524]
	mov	lr, r1
	str	fp, [sp, #528]	@ float
	fsts	s20, [sp, #532]
	vld1.64	{d16-d17}, [r6:64]
	str	r3, [r0, #16]
	vst1.32	{q8}, [r0]
	adds	r0, r4, #1
	cmp	r0, lr
	blt	.L3274
.L2864:
	ldr	r10, [r10, #28]
	cmp	r10, #0
	bne	.L2866
	ldr	r1, [r9, #20]
	ldr	r0, [r9, #16]
	cmp	r1, #0
	itttt	gt
	addgt	r2, r1, r1, lsl #1
	addgt	r3, r0, #8
	fconstsgt	s15, #20
	addgt	r2, r3, r2, lsl #3
	ble	.L2868
.L2869:
	flds	s13, [r3, #-4]
	adds	r3, r3, #24
	flds	s14, [r3, #-20]
	flds	s11, [r3, #-32]
	flds	s12, [r3, #-24]
	fadds	s13, s18, s13
	fadds	s14, s18, s14
	fadds	s11, s11, s17
	fadds	s12, s12, s17
	fmuls	s13, s13, s15
	fmuls	s14, s14, s15
	fsts	s11, [r3, #-32]
	fsts	s12, [r3, #-24]
	fsts	s13, [r3, #-28]
	fsts	s14, [r3, #-20]
	cmp	r3, r2
	bne	.L2869
.L2868:
	ldr	r3, .L3312+8
	movs	r2, #24
.LPIC184:
	add	r3, pc
	bl	qsort(PLT)
	ldr	r4, [sp, #36]
	ldr	r1, [sp, #36]
	ldrb	r3, [r4, #64]	@ zero_extendqisi2
	add	r4, sp, #728
	flds	s0, [r1, #80]
	cmp	r3, #1
	strb	r3, [r4]
	beq	.L3275
	mov	r0, r4
	adds	r1, r1, #64
	bl	nsvg__initPaint.part.11(PLT)
.L2875:
	mov	r1, r4
	ldr	r4, [sp, #36]
	mov	r0, r9
	fcpys	s0, s17
	fcpys	s1, s18
	fcpys	s2, s16
	ldrb	r2, [r4, #127]	@ zero_extendqisi2
	bl	nsvg__rasterizeSortedEdges(PLT)
.L2834:
	ldr	r4, [sp, #36]
	ldrb	r3, [r4, #72]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L2833
	flds	s29, [r4, #84]
	movw	r1, #55050
	movt	r1, 15395
	fmsr	s12, r1
	fmuls	s29, s16, s29
	fcmpes	s29, s12
	fmstat
	ble	.L2833
	ldr	r1, [r9, #56]
	movs	r2, #0
	mov	r3, r1
	cbz	r1, .L2881
.L2882:
	str	r2, [r3, #1024]
	ldr	r3, [r3, #1028]
	cmp	r3, #0
	bne	.L2882
.L2881:
	ldr	r4, [sp, #36]
	movs	r3, #0
	str	r1, [r9, #60]
	ldr	r10, [r4, #148]
	str	r3, [r9, #52]
	str	r3, [r9, #20]
	ldrb	r4, [r4, #125]	@ zero_extendqisi2
	str	r4, [sp, #28]
	ldr	r4, [sp, #36]
	ldrb	r4, [r4, #126]	@ zero_extendqisi2
	str	r4, [sp, #32]
	cmp	r10, #0
	beq	.L3276
	fconsts	s19, #96
	mov	r5, r10
	ldr	r10, [sp, #36]
	fmuls	s19, s29, s19
.L3064:
	ldr	r3, [r5]
	movs	r1, #0
	ldr	r2, [r9, #36]
	str	r1, [r9, #32]
	flds	s14, [r3]
	flds	s15, [r3, #4]
	cmp	r2, r1
	fmuls	s21, s16, s14
	fmuls	s20, s16, s15
	bgt	.L3277
	movs	r2, #64
	mov	r1, #2048
	str	r2, [r9, #36]
	ldr	r0, [r9, #28]
	bl	realloc(PLT)
	str	r0, [r9, #28]
	cbz	r0, .L2885
	ldr	r3, [r9, #32]
	lsls	r3, r3, #5
.L2884:
	add	r0, r0, r3
	mov	r3, #1
	strb	r3, [r0, #28]
	ldr	r3, [r9, #32]
	fsts	s21, [r0]
	fsts	s20, [r0, #4]
	adds	r3, r3, #1
	str	r3, [r9, #32]
.L2885:
	ldr	r3, [r5, #4]
	cmp	r3, #1
	it	gt
	movgt	r4, #0
	ble	.L2889
.L2890:
	ldr	r3, [r5]
	mov	r0, r9
	movs	r1, #1
	add	r3, r3, r4, lsl #3
	adds	r4, r4, #3
	flds	s0, [r3]
	flds	s1, [r3, #4]
	flds	s2, [r3, #8]
	flds	s3, [r3, #12]
	flds	s4, [r3, #16]
	flds	s5, [r3, #20]
	flds	s6, [r3, #24]
	flds	s7, [r3, #28]
	fmuls	s0, s16, s0
	fmuls	s1, s16, s1
	fmuls	s2, s16, s2
	fmuls	s3, s16, s3
	fmuls	s4, s16, s4
	fmuls	s5, s16, s5
	fmuls	s6, s16, s6
	fmuls	s7, s16, s7
	bl	nsvg__flattenCubicBez.constprop.39(PLT)
	ldr	r3, [r5, #4]
	subs	r3, r3, #1
	cmp	r4, r3
	blt	.L2890
.L2889:
	ldr	r4, [r9, #32]
	cmp	r4, #1
	ble	.L2887
	ldr	r6, [r9, #28]
	add	r3, r4, #134217728
	subs	r3, r3, #1
	flds	s13, [r9, #12]
	ldrb	r1, [r5, #8]	@ zero_extendqisi2
	flds	s11, [r6]
	add	r3, r6, r3, lsl #5
	flds	s12, [r6, #4]
	fmuls	s13, s13, s13
	flds	s15, [r3]
	flds	s14, [r3, #4]
	str	r1, [sp, #20]
	fsubs	s15, s11, s15
	fsubs	s14, s12, s14
	fmuls	s15, s15, s15
	fmacs	s15, s14, s14
	fcmpes	s15, s13
	fmstat
	bpl	.L3247
	subs	r4, r4, #1
	str	r4, [r9, #32]
	ldrb	r3, [r10, #124]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L3278
.L2893:
	mov	lr, r6
	add	r8, sp, #696
	ldmia	lr!, {r0, r1, r2, r3}
	mov	r7, r8
	ldr	ip, [r9, #36]
	stmia	r7!, {r0, r1, r2, r3}
	cmp	ip, r4
	ldmia	lr, {r0, r1, r2, r3}
	stmia	r7, {r0, r1, r2, r3}
	bgt	.L2896
	cmp	ip, #0
	mov	r0, r6
	itete	gt
	lslgt	r3, ip, #1
	movle	r3, #64
	lslgt	r1, ip, #6
	movle	r1, #2048
	str	r3, [r9, #36]
	bl	realloc(PLT)
	ldr	r4, [r9, #32]
	mov	r6, r0
	str	r0, [r9, #28]
	cmp	r0, #0
	beq	.L3079
.L2896:
	ldmia	r8!, {r0, r1, r2, r3}
	add	r4, r6, r4, lsl #5
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r8, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r4, [r9, #32]
	ldr	r3, [r9, #48]
	adds	r4, r4, #1
	str	r4, [r9, #32]
	mov	r2, r4
	cmp	r3, r4
	blt	.L2899
.L3285:
	ldr	r0, [r9, #40]
.L2900:
	lsls	r2, r2, #5
	ldr	r1, [r9, #28]
	bl	memcpy(PLT)
	ldr	ip, [r9, #40]
	ldr	r3, [r9, #32]
	str	r3, [r9, #44]
.L2901:
	movs	r2, #0
	mov	r7, ip
	str	r2, [r9, #32]
	add	fp, sp, #664
	ldmia	r7!, {r0, r1, r2, r3}
	mov	r4, fp
	mov	lr, fp
	add	r8, sp, #536
	mov	r6, r8
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r7, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	flds	s20, [ip]
	flds	s21, [ip, #4]
	ldrb	r7, [ip, #28]	@ zero_extendqisi2
	fsts	s20, [fp]
	fsts	s21, [fp, #4]
	strb	r7, [fp, #28]
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2, r3}
	stmia	r6, {r0, r1, r2, r3}
	ldr	r3, [r9, #36]
	cmp	r3, #0
	ble	.L2902
	ldr	r0, [r9, #28]
	movs	r3, #0
.L2903:
	mov	r6, r8
	adds	r4, r0, r3
	strb	r7, [r8, #28]
	fsts	s20, [r8]
	fsts	s21, [r8, #4]
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r6, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r9, #32]
	adds	r3, r3, #1
	str	r3, [r9, #32]
.L2904:
	ldrb	r3, [r10, #124]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L3082
	cmp	r3, #1
	flds	s23, [r10, #92]
	beq	.L2905
	flds	s15, [r10, #96]
	cmp	r3, #2
	fadds	s23, s23, s15
	beq	.L2905
	flds	s15, [r10, #100]
	cmp	r3, #3
	fadds	s23, s23, s15
	beq	.L2905
	flds	s15, [r10, #104]
	cmp	r3, #4
	fadds	s23, s23, s15
	beq	.L2905
	flds	s15, [r10, #108]
	cmp	r3, #5
	fadds	s23, s23, s15
	beq	.L2905
	flds	s15, [r10, #112]
	cmp	r3, #6
	fadds	s23, s23, s15
	beq	.L2905
	flds	s15, [r10, #116]
	cmp	r3, #7
	fadds	s23, s23, s15
	beq	.L2905
	flds	s15, [r10, #120]
	fadds	s23, s23, s15
.L2905:
	lsls	r0, r3, #31
	flds	s0, [r10, #88]
	it	mi
	faddsmi	s23, s23, s23
	fcpys	s1, s23
	bl	fmodf(PLT)
	fcmpezs	s0
	fmstat
	fcpys	s22, s0
	flds	s26, [r10, #92]
	it	mi
	faddsmi	s22, s0, s23
	fcmpes	s22, s26
	fmstat
	ble	.L3248
	ldrb	r4, [r10, #124]	@ zero_extendqisi2
	mov	r8, #0
	mov	r1, r8
.L2912:
	adds	r0, r1, #1
	mov	r1, r4
	bl	__aeabi_idivmod(PLT)
	add	r3, r10, r1, lsl #2
	fsubs	s22, s22, s26
	flds	s26, [r3, #92]
	fcmpes	s26, s22
	fmstat
	bmi	.L2912
	mov	r8, r1
.L2909:
	fsubs	s26, s26, s22
	movs	r4, #1
	flds	s24, .L3312
	add	r1, sp, #600
	str	r5, [sp, #40]
	mov	r5, r4
	str	r4, [sp, #24]
	fmuls	s26, s26, s16
	str	r1, [sp, #20]
.L2913:
	ldr	r3, [r9, #44]
	cmp	r5, r3
	bge	.L3279
.L2932:
	ldr	r3, [r9, #40]
	lsls	r7, r5, #5
	add	r3, r3, r7
	flds	s23, [r3]
	flds	s22, [r3, #4]
	fsubs	s23, s23, s20
	fsubs	s22, s22, s21
	fmuls	s0, s23, s23
	fmacs	s0, s22, s22
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	bne	.L3280
.L2914:
	fadds	s25, s15, s24
	fcmpes	s25, s26
	fmstat
	ble	.L3249
	fsubs	s24, s26, s24
	ldr	r3, [r9, #32]
	fdivs	s15, s24, s15
	cmp	r3, #0
	fmacs	s20, s15, s23
	fmacs	s21, s15, s22
	ble	.L2917
	ldr	r0, [r9, #28]
	add	r2, r3, #134217728
	subs	r2, r2, #1
	flds	s15, [r9, #12]
	add	r2, r0, r2, lsl #5
	flds	s14, [r2, #4]
	fmuls	s13, s15, s15
	flds	s15, [r2]
	fsubs	s14, s21, s14
	fsubs	s15, s20, s15
	fmuls	s15, s15, s15
	fmacs	s15, s14, s14
	fcmpes	s15, s13
	fmstat
	bmi	.L3281
.L2918:
	ldr	r1, [r9, #36]
	cmp	r3, r1
	blt	.L2921
	cmp	r1, #0
	itete	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	lslgt	r1, r1, #6
	movle	r1, #2048
	str	r3, [r9, #36]
	bl	realloc(PLT)
	ldr	r3, [r9, #32]
	str	r0, [r9, #28]
	cbz	r0, .L2920
.L2921:
	add	r3, r0, r3, lsl #5
	mov	r2, #1
	strb	r2, [r3, #28]
	ldr	r2, [r9, #32]
	fsts	s20, [r3]
	fsts	s21, [r3, #4]
	adds	r3, r2, #1
	str	r3, [r9, #32]
.L2920:
	cmp	r3, #1
	ble	.L2924
	ldr	r4, [sp, #24]
	cmp	r4, #0
	bne	.L3282
.L2924:
	ldrb	r1, [r10, #124]	@ zero_extendqisi2
	add	r0, r8, #1
	bl	__aeabi_idivmod(PLT)
	ldr	r4, [sp, #24]
	add	r3, r10, r1, lsl #2
	mov	r8, r1
	mov	lr, fp
	mov	r1, #1
	flds	s26, [r3, #92]
	eor	r4, r4, #1
	fsts	s20, [fp]
	add	r7, sp, #568
	fsts	s21, [fp, #4]
	mov	r6, r7
	strb	r1, [fp, #28]
	ldmia	lr!, {r0, r1, r2, r3}
	str	r4, [sp, #24]
	movs	r4, #0
	str	r4, [r9, #32]
	ldr	r4, [r9, #36]
	stmia	r6!, {r0, r1, r2, r3}
	fmuls	s26, s16, s26
	cmp	r4, #0
	ldmia	lr, {r0, r1, r2, r3}
	stmia	r6, {r0, r1, r2, r3}
	ble	.L2925
	movs	r3, #0
	ldr	r0, [r9, #28]
.L2926:
	mov	r2, #1
	mov	r6, r7
	adds	r4, r0, r3
	strb	r2, [r7, #28]
	fsts	s20, [r7]
	fsts	s21, [r7, #4]
	ldmia	r6!, {r0, r1, r2, r3}
	flds	s24, .L3312
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r6, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r9, #32]
	adds	r3, r3, #1
	str	r3, [r9, #32]
	ldr	r3, [r9, #44]
	cmp	r5, r3
	blt	.L2932
.L3279:
	ldr	r2, [r9, #32]
	ldr	r5, [sp, #40]
	cmp	r2, #1
	ble	.L2887
	ldr	r4, [sp, #24]
	cmp	r4, #0
	bne	.L3283
.L2887:
	ldr	r5, [r5, #28]
	cmp	r5, #0
	bne	.L3064
	ldr	r1, [r9, #20]
	ldr	r0, [r9, #16]
	cmp	r1, #0
	itttt	gt
	addgt	r2, r1, r1, lsl #1
	addgt	r3, r0, #8
	fconstsgt	s15, #20
	addgt	r2, r3, r2, lsl #3
	ble	.L3066
.L3067:
	flds	s13, [r3, #-4]
	adds	r3, r3, #24
	flds	s14, [r3, #-20]
	flds	s11, [r3, #-32]
	flds	s12, [r3, #-24]
	fadds	s13, s18, s13
	fadds	s14, s18, s14
	fadds	s11, s11, s17
	fadds	s12, s12, s17
	fmuls	s13, s13, s15
	fmuls	s14, s14, s15
	fsts	s11, [r3, #-32]
	fsts	s12, [r3, #-24]
	fsts	s13, [r3, #-28]
	fsts	s14, [r3, #-20]
	cmp	r3, r2
	bne	.L3067
.L3066:
	ldr	r3, [sp, #84]
	movs	r2, #24
	bl	qsort(PLT)
	ldr	r4, [sp, #36]
	ldr	r1, [sp, #36]
	ldrb	r3, [r4, #72]	@ zero_extendqisi2
	add	r4, sp, #728
	flds	s0, [r1, #80]
	cmp	r3, #1
	strb	r3, [r4]
	beq	.L3284
	mov	r0, r4
	adds	r1, r1, #72
	bl	nsvg__initPaint.part.11(PLT)
.L3073:
	mov	r1, r4
	mov	r0, r9
	fcpys	s0, s17
	movs	r2, #0
	fcpys	s1, s18
	fcpys	s2, s16
	bl	nsvg__rasterizeSortedEdges(PLT)
.L2833:
	ldr	r4, [sp, #36]
	ldr	r4, [r4, #152]
	str	r4, [sp, #36]
	cmp	r4, #0
	bne	.L3074
	mov	r10, r9
.L2828:
	movs	r3, #0
	str	r3, [r10, #72]
	str	r3, [r10, #76]
	str	r3, [r10, #80]
.L2825:
	addw	sp, sp, #1788
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3249:
	ldr	r3, [r9, #40]
	mov	r4, fp
	mov	lr, fp
	add	r6, sp, #600
	add	ip, r3, r7
	mov	r7, ip
	ldmia	r7!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r7, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	flds	s20, [ip]
	flds	s21, [ip, #4]
	ldrb	r7, [ip, #28]	@ zero_extendqisi2
	fsts	s20, [fp]
	fsts	s21, [fp, #4]
	strb	r7, [fp, #28]
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	r4, {r0, r1, r2, r3}
	stmia	r6, {r0, r1, r2, r3}
	ldr	r3, [r9, #32]
	ldr	r1, [r9, #36]
	cmp	r3, r1
	bge	.L2928
	ldr	r0, [r9, #28]
.L2929:
	add	r6, sp, #600
	add	r4, r0, r3, lsl #5
	strb	r7, [sp, #628]
	fsts	s20, [sp, #600]
	fsts	s21, [sp, #604]
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r6, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r9, #32]
	adds	r3, r3, #1
	str	r3, [r9, #32]
.L2931:
	adds	r5, r5, #1
	fcpys	s24, s25
	b	.L2913
.L3268:
	ldr	r0, [r9, #28]
	mov	r3, r4
	b	.L2841
.L3269:
	ldr	r0, [r9, #28]
	b	.L2848
.L2928:
	cmp	r1, #0
	ldr	r0, [r9, #28]
	itete	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	lslgt	r1, r1, #6
	movle	r1, #2048
	str	r3, [r9, #36]
	bl	realloc(PLT)
	str	r0, [r9, #28]
	cmp	r0, #0
	beq	.L2931
	ldr	r3, [r9, #32]
	b	.L2929
.L2925:
	movs	r1, #64
	ldr	r0, [r9, #28]
	str	r1, [r9, #36]
	mov	r1, #2048
	bl	realloc(PLT)
	str	r0, [r9, #28]
	cmp	r0, #0
	beq	.L3085
	ldr	r3, [r9, #32]
	lsls	r3, r3, #5
	b	.L2926
.L2917:
	ldr	r0, [r9, #28]
	b	.L2918
.L3273:
	ldr	r1, [r9, #32]
	mov	lr, r1
	b	.L2857
.L3313:
	.align	2
.L3312:
	.word	0
	.word	nsvg__cmpEdge-(.LPIC185+4)
	.word	nsvg__cmpEdge-(.LPIC184+4)
.L3247:
	ldrb	r3, [r10, #124]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L2894
	ldr	r1, [sp, #20]
	cmp	r1, #0
	bne	.L2893
.L3079:
	ldr	r3, [r9, #48]
	mov	r2, r4
	cmp	r3, r4
	bge	.L3285
.L2899:
	str	r4, [r9, #48]
	lsls	r1, r4, #5
	ldr	r0, [r9, #40]
	bl	realloc(PLT)
	str	r0, [r9, #40]
	cmp	r0, #0
	beq	.L3081
	ldr	r2, [r9, #32]
	b	.L2900
.L3277:
	ldr	r0, [r9, #28]
	mov	r3, r1
	b	.L2884
.L2849:
	subs	r2, r1, #1
	b	.L2854
.L3282:
	add	r0, r9, #28
	add	r1, r9, #32
	ldr	r2, [sp, #28]
	bl	nsvg__prepareStroke.isra.12.constprop.34(PLT)
	ldr	r4, [sp, #32]
	mov	r0, r9
	ldr	r1, [r9, #28]
	ldr	r2, [r9, #32]
	ldr	r3, [sp, #28]
	str	r4, [sp]
	fcpys	s0, s29
	bl	nsvg__expandStroke.constprop.31(PLT)
	b	.L2924
.L3281:
	ldrb	r3, [r2, #28]	@ zero_extendqisi2
	orr	r3, r3, #1
	strb	r3, [r2, #28]
	ldr	r3, [r9, #32]
	b	.L2920
.L2902:
	movs	r3, #64
	mov	r1, #2048
	str	r3, [r9, #36]
	ldr	r0, [r9, #28]
	bl	realloc(PLT)
	str	r0, [r9, #28]
	cmp	r0, #0
	beq	.L2904
	ldr	r3, [r9, #32]
	lsls	r3, r3, #5
	b	.L2903
.L3278:
	movs	r4, #1
	str	r4, [sp, #20]
.L2894:
	add	r0, r9, #28
	add	r1, r9, #32
	ldr	r2, [sp, #28]
	add	r6, sp, #632
	bl	nsvg__prepareStroke.isra.12.constprop.34(PLT)
	flds	s0, [r9, #8]
	add	fp, sp, #664
	ldr	ip, [r9, #32]
	ldr	r8, [r9, #28]
	fadds	s0, s19, s0
	str	ip, [sp, #16]
	fdivs	s0, s19, s0
	bl	acosf(PLT)
	movw	r1, #4059
	fadds	s0, s0, s0
	movt	r1, 16457
	fmsr	s12, r1
	fdivs	s0, s12, s0
	bl	ceilf(PLT)
	ftosizs	s0, s0
	movs	r1, #0
	str	r1, [r6]	@ float
	fmsr	s12, r1
	str	r1, [r6, #4]	@ float
	fmrs	r4, s0	@ int
	cmp	r4, #2
	str	r1, [r6, #8]	@ float
	it	lt
	movlt	r4, #2
	str	r1, [r6, #12]	@ float
	str	r4, [sp, #40]
	ldr	r4, [sp, #20]
	str	r1, [r6, #16]	@ float
	str	r1, [r6, #20]	@ float
	str	r1, [r6, #24]	@ float
	mov	r1, #0
	strb	r1, [r6, #28]
	strb	r1, [fp, #28]
	fsts	s12, [fp]
	fsts	s12, [fp, #4]
	fsts	s12, [fp, #8]
	fsts	s12, [fp, #12]
	fsts	s12, [fp, #16]
	fsts	s12, [fp, #20]
	fsts	s12, [fp, #24]
	ldr	ip, [sp, #16]
	cmp	r4, #0
	beq	.L2935
	add	r4, ip, #134217728
	flds	s21, [r8]
	subs	r4, r4, #1
	flds	s20, [r8, #4]
	add	r4, r8, r4, lsl #5
	flds	s13, [r4]
	flds	s14, [r4, #4]
	fsubs	s21, s21, s13
	fsubs	s20, s20, s14
	fmuls	s0, s21, s21
	fmacs	s0, s20, s20
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	bne	.L3286
.L2936:
	movw	r1, #14269
	movt	r1, 13702
	fmsr	s12, r1
	fcmpes	s15, s12
	fmstat
	ble	.L2938
	fconsts	s12, #112
	fdivs	s12, s12, s15
	fmuls	s21, s21, s12
	fmuls	s20, s20, s12
.L2938:
	fconsts	s11, #96
	fmuls	s12, s20, s19
	fmuls	s15, s15, s11
	fnmuls	s30, s21, s19
	str	r8, [sp, #44]
	mov	r8, r4
	movs	r4, #0
	fmacs	s14, s20, s15
	fmacs	s13, s21, s15
	str	r4, [sp, #24]
	fsubs	s31, s14, s30
	fsubs	s15, s13, s12
	fadds	s30, s30, s14
	fadds	s12, s13, s12
	fsts	s31, [r6, #4]
	fsts	s15, [sp, #68]
	fsts	s15, [r6]
	fsts	s12, [sp, #72]
	fsts	s12, [fp]
	fsts	s30, [fp, #4]
.L2942:
	cmp	ip, r4
	ble	.L3091
.L3304:
	mov	r7, r4
	ldr	r4, [sp, #44]
	add	r1, sp, #248
	add	r2, sp, #252
	str	r1, [sp, #48]
	add	r3, sp, #256
	str	r2, [sp, #56]
	add	r1, sp, #260
	add	r2, sp, #264
	str	r10, [sp, #76]
	str	r2, [sp, #52]
	adds	r4, r4, #32
	mov	r2, r8
	str	r3, [sp, #60]
	str	r1, [sp, #64]
	mov	r8, ip
	ldr	r10, [sp, #28]
	str	r5, [sp, #80]
	b	.L3016
.L3292:
	cmp	r10, #1
	beq	.L3287
	cmp	r10, #2
	beq	.L2965
	lsls	r3, r3, #30
	bpl	.L2966
.L2965:
	flds	s20, [r2, #8]
	flds	s15, [r4, #-28]
	flds	s27, [r2, #12]
	flds	s25, [r4, #-20]
	fnmuls	s20, s20, s19
	flds	s22, [r4, #-24]
	flds	s24, [r6, #4]
	flds	s14, [r4, #-32]
	fsubs	s21, s15, s20
	fmuls	s27, s19, s27
	fmuls	s25, s19, s25
	fnmuls	s22, s22, s19
	fcmps	s21, s24
	fmstat
	fsubs	s28, s14, s27
	fsubs	s26, s14, s25
	fsubs	s23, s15, s22
	fadds	s20, s20, s15
	fadds	s27, s27, s14
	fadds	s25, s25, s14
	fadds	s22, s22, s15
	ldr	r2, [r6]	@ float
	beq	.L2968
	ldr	r3, [r9, #20]
	ldr	r1, [r9, #24]
	cmp	r3, r1
	bge	.L2969
	ldr	r0, [r9, #16]
.L2970:
	fcmpes	s21, s24
	add	r1, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r1, lsl #3
	bmi	.L3288
	str	r2, [sp, #408]	@ float
	mov	r2, #-1
	fsts	s24, [sp, #412]
	fsts	s28, [sp, #416]
	fsts	s21, [sp, #420]
	vldr	d16, [sp, #408]
	vldr	d17, [sp, #416]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
.L2968:
	fcmps	s21, s23
	fmstat
	beq	.L2976
	ldr	r3, [r9, #20]
	ldr	r2, [r9, #24]
	cmp	r3, r2
	bge	.L2977
	ldr	r0, [r9, #16]
.L2978:
	fcmpes	s21, s23
	add	r2, r3, r3, lsl #1
	fmstat
	add	r1, r3, #1
	str	r1, [r9, #20]
	add	r3, r0, r2, lsl #3
	bgt	.L3289
	fsts	s28, [sp, #376]
	mov	r2, #-1
	fsts	s21, [sp, #380]
	fsts	s26, [sp, #384]
	fsts	s23, [sp, #388]
	vldr	d16, [sp, #376]
	vldr	d17, [sp, #384]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
.L2976:
	flds	s21, [fp, #4]
	ldr	r2, [fp]	@ float
	fcmps	s20, s21
	fmstat
	beq	.L2984
	ldr	r3, [r9, #20]
	ldr	r1, [r9, #24]
	cmp	r3, r1
	bge	.L2985
	ldr	r0, [r9, #16]
.L2986:
	fcmpes	s20, s21
	add	r1, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r1, lsl #3
	bgt	.L3290
	str	r2, [sp, #352]	@ float
	mov	r2, #-1
	fsts	s27, [sp, #344]
	fsts	s20, [sp, #348]
	fsts	s21, [sp, #356]
	vldr	d16, [sp, #344]
	vldr	d17, [sp, #352]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
.L2984:
	fcmps	s20, s22
	fmstat
	beq	.L2992
	ldr	r3, [r9, #20]
	ldr	r2, [r9, #24]
	cmp	r3, r2
	bge	.L2993
	ldr	r0, [r9, #16]
.L2994:
	fcmpes	s20, s22
	add	r2, r3, r3, lsl #1
	fmstat
	add	r1, r3, #1
	str	r1, [r9, #20]
	add	r3, r0, r2, lsl #3
	bmi	.L3291
	fsts	s25, [sp, #312]
	mov	r2, #-1
	fsts	s22, [sp, #316]
	fsts	s27, [sp, #320]
	fsts	s20, [sp, #324]
	vldr	d16, [sp, #312]
	vldr	d17, [sp, #320]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
.L2992:
	fsts	s26, [r6]
	fsts	s23, [r6, #4]
	fsts	s25, [fp]
	fsts	s22, [fp, #4]
.L2964:
	adds	r7, r7, #1
	adds	r4, r4, #32
	cmp	r7, r8
	beq	.L3015
.L3295:
	mov	r2, r5
.L3016:
	ldrb	r3, [r4, #-4]	@ zero_extendqisi2
	sub	r5, r4, #32
	lsls	r1, r3, #31
	bmi	.L3292
	flds	s20, [r4, #-8]
	flds	s14, [r4, #-28]
	flds	s23, [r4, #-12]
	flds	s22, [r6, #4]
	fmuls	s20, s19, s20
	flds	s15, [r4, #-32]
	fmuls	s23, s19, s23
	ldr	r2, [r6]	@ float
	fsubs	s21, s14, s20
	fadds	s20, s20, s14
	fsubs	s24, s15, s23
	fadds	s23, s23, s15
	fcmps	s21, s22
	fmstat
	beq	.L3000
	ldr	r3, [r9, #20]
	ldr	r1, [r9, #24]
	cmp	r3, r1
	bge	.L3001
	ldr	r0, [r9, #16]
.L3002:
	fcmpes	s21, s22
	add	r1, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r1, lsl #3
	bmi	.L3293
	str	r2, [sp, #280]	@ float
	mov	r2, #-1
	fsts	s22, [sp, #284]
	fsts	s24, [sp, #288]
	fsts	s21, [sp, #292]
	vldr	d16, [sp, #280]
	vldr	d17, [sp, #288]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
.L3000:
	flds	s22, [fp, #4]
	ldr	r2, [fp]	@ float
	fcmps	s20, s22
	fmstat
	beq	.L3008
	ldr	r3, [r9, #20]
	ldr	r1, [r9, #24]
	cmp	r3, r1
	bge	.L3009
	ldr	r0, [r9, #16]
.L3010:
	fcmpes	s20, s22
	add	r1, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r1, lsl #3
	bgt	.L3294
	str	r2, [sp, #256]	@ float
	mov	r2, #-1
	fsts	s23, [sp, #248]
	fsts	s20, [sp, #252]
	fsts	s22, [sp, #260]
	vldr	d16, [sp, #248]
	vldr	d17, [sp, #256]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
.L3008:
	adds	r7, r7, #1
	fsts	s24, [r6]
	cmp	r7, r8
	fsts	s21, [r6, #4]
	fsts	s23, [fp]
	add	r4, r4, #32
	fsts	s20, [fp, #4]
	bne	.L3295
.L3015:
	ldr	r1, [sp, #24]
	add	r3, r7, #134217728
	ldr	r2, [sp, #44]
	subs	r3, r3, #1
	ldr	r10, [sp, #76]
	subs	r3, r3, r1
	subs	r4, r7, r1
	ldr	r5, [sp, #80]
	add	r8, r2, r3, lsl #5
	ldr	r3, [sp, #20]
	add	r4, r2, r4, lsl #5
	cmp	r3, #0
	bne	.L3296
.L3017:
	flds	s20, [r4]
	flds	s14, [r8]
	flds	s15, [r8, #4]
	flds	s21, [r4, #4]
	fsubs	s20, s20, s14
	fsubs	s21, s21, s15
	fmuls	s0, s20, s20
	fmacs	s0, s21, s21
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	bne	.L3297
.L3034:
	movw	r1, #14269
	movt	r1, 13702
	fmsr	s12, r1
	fcmpes	s15, s12
	fmstat
	it	gt
	fconstsgt	s14, #112
	ldr	r1, [sp, #32]
	ittt	gt
	fdivsgt	s15, s14, s15
	fmulsgt	s20, s20, s15
	fmulsgt	s21, s21, s15
	cmp	r1, #0
	beq	.L3298
	cmp	r1, #2
	mov	r2, r1
	beq	.L3299
	cmp	r1, #1
	bne	.L2887
	flds	s0, [r4]
	mov	r1, fp
	flds	s1, [r4, #4]
	mov	r3, r6
	ldr	r4, [sp, #40]
	mov	r0, r9
	fnegs	s2, s20
	add	r2, sp, #668
	fnegs	s3, s21
	str	r4, [sp, #4]
	ldr	r4, [sp, #32]
	fcpys	s4, s29
	str	r4, [sp, #8]
	add	r4, sp, #636
	str	r4, [sp]
	bl	nsvg__roundCap.isra.23(PLT)
	b	.L2887
.L2966:
	add	r3, sp, #668
	flds	s0, [r2, #8]
	flds	s1, [r2, #12]
	mov	r0, r9
	str	r3, [sp]
	mov	r1, r6
	str	r5, [sp, #4]
	add	r2, sp, #636
	mov	r3, fp
	fcpys	s2, s29
	bl	nsvg__miterJoin.isra.19(PLT)
	b	.L2964
.L2993:
	cmp	r2, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r9, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L2992
	ldr	r3, [r9, #20]
	b	.L2994
.L2977:
	cmp	r2, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r9, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L2976
	ldr	r3, [r9, #20]
	b	.L2978
.L2985:
	cmp	r1, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r9, #24]
	str	r2, [sp, #16]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	ldr	r2, [sp, #16]
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L2984
	ldr	r3, [r9, #20]
	b	.L2986
.L2969:
	cmp	r1, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r9, #24]
	str	r2, [sp, #16]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	ldr	r2, [sp, #16]
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L2968
	ldr	r3, [r9, #20]
	b	.L2970
.L3288:
	fsts	s28, [sp, #424]
	movs	r1, #1
	fsts	s21, [sp, #428]
	str	r2, [sp, #432]	@ float
	fsts	s24, [sp, #436]
	vldr	d16, [sp, #424]
	vldr	d17, [sp, #432]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2968
.L3289:
	fsts	s26, [sp, #392]
	movs	r1, #1
	fsts	s23, [sp, #396]
	fsts	s28, [sp, #400]
	fsts	s21, [sp, #404]
	vldr	d16, [sp, #392]
	vldr	d17, [sp, #400]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2976
.L3290:
	str	r2, [sp, #360]	@ float
	movs	r1, #1
	fsts	s21, [sp, #364]
	fsts	s27, [sp, #368]
	fsts	s20, [sp, #372]
	vldr	d16, [sp, #360]
	vldr	d17, [sp, #368]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2984
.L3291:
	fsts	s27, [sp, #328]
	movs	r1, #1
	fsts	s20, [sp, #332]
	fsts	s25, [sp, #336]
	fsts	s22, [sp, #340]
	vldr	d16, [sp, #328]
	vldr	d17, [sp, #336]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2992
.L3287:
	ldr	r3, [sp, #40]
	add	lr, sp, #668
	flds	s0, [r2, #8]
	mov	r0, r9
	flds	s1, [r2, #12]
	mov	r1, r6
	str	r3, [sp, #8]
	add	r2, sp, #636
	str	r5, [sp, #4]
	mov	r3, fp
	str	lr, [sp]
	fcpys	s2, s29
	bl	nsvg__roundJoin.isra.28(PLT)
	b	.L2964
.L3001:
	cmp	r1, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r9, #24]
	str	r2, [sp, #16]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	ldr	r2, [sp, #16]
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L3000
	ldr	r3, [r9, #20]
	b	.L3002
.L3009:
	cmp	r1, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r1, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r1, r3, r1, lsl #2
	str	r3, [r9, #24]
	str	r2, [sp, #16]
	it	gt
	lslgt	r1, r1, #3
	bl	realloc(PLT)
	ldr	r2, [sp, #16]
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L3008
	ldr	r3, [r9, #20]
	b	.L3010
.L3293:
	fsts	s24, [sp, #296]
	movs	r1, #1
	fsts	s21, [sp, #300]
	str	r2, [sp, #304]	@ float
	fsts	s22, [sp, #308]
	vldr	d16, [sp, #296]
	vldr	d17, [sp, #304]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L3000
.L3294:
	str	r2, [sp, #264]	@ float
	movs	r1, #1
	fsts	s22, [sp, #268]
	fsts	s23, [sp, #272]
	fsts	s20, [sp, #276]
	vldr	d16, [sp, #264]
	vldr	d17, [sp, #272]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L3008
.L3085:
	flds	s24, .L3314
	b	.L2913
.L3270:
	ldr	r1, [r9, #32]
	mov	lr, r1
	b	.L2853
.L3283:
	ldr	r4, [sp, #32]
	mov	r0, r9
	ldr	r1, [r9, #28]
	ldr	r3, [sp, #28]
	str	r4, [sp]
	fcpys	s0, s29
	bl	nsvg__expandStroke.constprop.31(PLT)
	b	.L2887
.L2935:
	flds	s21, [r8, #32]
	add	r4, r8, #32
	flds	s14, [r8]
	add	ip, ip, #-1
	flds	s15, [r8, #4]
	flds	s22, [r8, #36]
	str	r4, [sp, #44]
	fsubs	s21, s21, s14
	fsubs	s22, s22, s15
	fmuls	s0, s21, s21
	fmacs	s0, s22, s22
	fsqrts	s15, s0
	fcmps	s15, s15
	fmstat
	bne	.L3300
.L2939:
	movw	r1, #14269
	movt	r1, 13702
	fmsr	s12, r1
	fcmpes	s15, s12
	fmstat
	ble	.L2941
	fconsts	s14, #112
	fdivs	s15, s14, s15
	fmuls	s21, s21, s15
	fmuls	s22, s22, s15
.L2941:
	ldr	r4, [sp, #32]
	cmp	r4, #0
	beq	.L3301
	cmp	r4, #2
	beq	.L3302
	cmp	r4, #1
	beq	.L3303
	flds	s30, .L3314
	movs	r4, #1
	cmp	ip, r4
	str	r4, [sp, #24]
	fsts	s30, [sp, #72]
	fcpys	s31, s30
	fsts	s30, [sp, #68]
	bgt	.L3304
.L3091:
	ldr	r3, [sp, #20]
	ldr	r4, [sp, #44]
	cmp	r3, #0
	beq	.L3017
.L3296:
	flds	s20, [r6, #4]
	ldr	r4, [r6]	@ float
	fcmps	s20, s31
	fmstat
	beq	.L3019
	ldr	r3, [r9, #20]
	ldr	r2, [r9, #24]
	cmp	r3, r2
	bge	.L3020
	ldr	r0, [r9, #16]
.L3021:
	fcmpes	s20, s31
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r2, lsl #3
	bgt	.L3305
	flds	s12, [sp, #68]
	mov	r1, #-1
	str	r4, [sp, #216]	@ float
	fsts	s20, [sp, #220]
	fsts	s12, [sp, #224]
	fsts	s31, [sp, #228]
	vldr	d16, [sp, #216]
	vldr	d17, [sp, #224]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
.L3019:
	flds	s20, [fp, #4]
	ldr	r4, [fp]	@ float
	fcmps	s20, s30
	fmstat
	beq	.L2887
	ldr	r3, [r9, #20]
	ldr	r2, [r9, #24]
	cmp	r3, r2
	bge	.L3028
	ldr	r0, [r9, #16]
.L3029:
	fcmpes	s20, s30
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r2, lsl #3
	bmi	.L3306
	flds	s12, [sp, #72]
	mov	r1, #-1
	fsts	s30, [sp, #188]
	str	r4, [sp, #192]	@ float
	fsts	s12, [sp, #184]
	fsts	s20, [sp, #196]
	vldr	d16, [sp, #184]
	vldr	d17, [sp, #192]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2887
.L3275:
	fcmpzs	s0
	fmstat
	ldr	r3, [r1, #68]
	it	mi
	movmi	r2, #0
	bmi	.L2871
	fconsts	s15, #112
	fcmpes	s0, s15
	fmstat
	ittet	le
	movle	r2, #1132462080
	lsrle	r1, r3, #24
	andgt	r2, r3, #-16777216
	fmsrle	s12, r2
	itttt	le
	fmulsle	s0, s0, s12
	ftosizsle	s0, s0
	fmrsle	r2, s0	@ int
	mulle	r2, r1, r2
	itt	le
	ubfxle	r2, r2, #8, #8
	lslle	r2, r2, #24
.L2871:
	bic	r3, r3, #-16777216
	orrs	r3, r3, r2
	str	r3, [r4, #28]
	b	.L2875
.L3082:
	flds	s23, .L3314
	b	.L2905
.L3284:
	fcmpzs	s0
	fmstat
	ldr	r2, [r1, #76]
	it	mi
	movmi	r3, #0
	bmi	.L3069
	fconsts	s15, #112
	fcmpes	s0, s15
	fmstat
	ittet	le
	movle	r3, #1132462080
	lsrle	r1, r2, #24
	andgt	r3, r2, #-16777216
	fmsrle	s12, r3
	itttt	le
	fmulsle	s0, s0, s12
	ftosizsle	s0, s0
	fmrsle	r3, s0	@ int
	mulle	r3, r1, r3
	itt	le
	ubfxle	r3, r3, #8, #8
	lslle	r3, r3, #24
.L3069:
	bic	r2, r2, #-16777216
	orrs	r3, r3, r2
	str	r3, [r4, #28]
	b	.L3073
.L3248:
	mov	r8, #0
	b	.L2909
.L3298:
	fmuls	s20, s20, s19
	flds	s14, [r4, #4]
	fnmuls	s21, s21, s19
	flds	s15, [r4]
	fsubs	s22, s14, s20
	fadds	s20, s20, s14
	fsubs	s23, s15, s21
	fadds	s21, s21, s15
	fcmps	s22, s20
	fmstat
	beq	.L3039
	ldr	r3, [r9, #20]
	ldr	r2, [r9, #24]
	cmp	r3, r2
	bge	.L3040
	ldr	r0, [r9, #16]
.L3041:
	fcmpes	s22, s20
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r2, lsl #3
	bmi	.L3307
	fsts	s21, [sp, #152]
	mov	r1, #-1
	fsts	s20, [sp, #156]
	fsts	s23, [sp, #160]
	fsts	s22, [sp, #164]
	vldr	d16, [sp, #152]
	vldr	d17, [sp, #160]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
.L3039:
	flds	s24, [fp, #4]
	ldr	r4, [fp]	@ float
	fcmps	s22, s24
	fmstat
	beq	.L3047
	ldr	r3, [r9, #20]
	ldr	r2, [r9, #24]
	cmp	r3, r2
	bge	.L3048
	ldr	r0, [r9, #16]
.L3049:
	fcmpes	s22, s24
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r2, lsl #3
	bgt	.L3308
	fsts	s23, [sp, #120]
	mov	r1, #-1
	fsts	s22, [sp, #124]
	str	r4, [sp, #128]	@ float
	fsts	s24, [sp, #132]
	vldr	d16, [sp, #120]
	vldr	d17, [sp, #128]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
.L3047:
	flds	s22, [r6, #4]
	ldr	r4, [r6]	@ float
	fcmps	s20, s22
	fmstat
	beq	.L2887
	ldr	r3, [r9, #20]
	ldr	r2, [r9, #24]
	cmp	r3, r2
	bge	.L3056
	ldr	r0, [r9, #16]
.L3057:
	fcmpes	s20, s22
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r2, lsl #3
	bmi	.L3309
	str	r4, [sp, #88]	@ float
	mov	r1, #-1
	fsts	s22, [sp, #92]
	fsts	s21, [sp, #96]
	fsts	s20, [sp, #100]
	vldr	d16, [sp, #88]
	vldr	d17, [sp, #96]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2887
.L3315:
	.align	2
.L3314:
	.word	0
.L2826:
	str	r1, [r10, #68]
	ldr	r0, [r10, #64]
	bl	realloc(PLT)
	str	r0, [r10, #64]
	cmp	r0, #0
	bne	.L2830
	b	.L2825
.L3301:
	fnmuls	s20, s21, s19
	flds	s14, [r8, #4]
	fmuls	s22, s22, s19
	flds	s15, [r8]
	fsubs	s21, s14, s20
	fadds	s20, s20, s14
	fsubs	s23, s15, s22
	fadds	s22, s22, s15
	fcmps	s21, s20
	fmstat
	beq	.L2954
	ldr	r3, [r9, #20]
	ldr	r2, [r9, #24]
	cmp	r3, r2
	bge	.L2946
	ldr	r0, [r9, #16]
.L2947:
	fcmpes	s21, s20
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r2, lsl #3
	bmi	.L3310
	fsts	s22, [sp, #472]
	mov	r1, #-1
	fsts	s20, [sp, #476]
	fsts	s23, [sp, #480]
	fsts	s21, [sp, #484]
	vldr	d16, [sp, #472]
	vldr	d17, [sp, #480]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
.L2954:
	flds	s30, .L3314
	movs	r4, #1
	str	r4, [sp, #24]
	fsts	s23, [r6]
	fsts	s21, [r6, #4]
	fsts	s22, [fp]
	fsts	s20, [fp, #4]
	fsts	s30, [sp, #72]
	fcpys	s31, s30
	fsts	s30, [sp, #68]
	b	.L2942
.L3081:
	mov	ip, r0
	b	.L2901
.L3020:
	cmp	r2, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r9, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L3019
	ldr	r3, [r9, #20]
	b	.L3021
.L3028:
	cmp	r2, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r9, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L2887
	ldr	r3, [r9, #20]
	b	.L3029
.L3267:
	mov	r1, r10
	ldr	r0, [r9, #16]
	b	.L2868
.L3056:
	cmp	r2, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r9, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L2887
	ldr	r3, [r9, #20]
	b	.L3057
.L3048:
	cmp	r2, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r9, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L3047
	ldr	r3, [r9, #20]
	b	.L3049
.L3040:
	cmp	r2, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r9, #24]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L3039
	ldr	r3, [r9, #20]
	b	.L3041
.L3306:
	flds	s14, [sp, #72]
	movs	r1, #1
	str	r4, [sp, #200]	@ float
	fsts	s20, [sp, #204]
	fsts	s14, [sp, #208]
	fsts	s30, [sp, #212]
	vldr	d16, [sp, #200]
	vldr	d17, [sp, #208]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2887
.L3305:
	flds	s12, [sp, #68]
	movs	r1, #1
	fsts	s31, [sp, #236]
	str	r4, [sp, #240]	@ float
	fsts	s12, [sp, #232]
	fsts	s20, [sp, #244]
	vldr	d16, [sp, #232]
	vldr	d17, [sp, #240]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L3019
.L3276:
	mov	r1, r10
	ldr	r0, [r9, #16]
	b	.L3066
.L3299:
	flds	s0, [r4]
	mov	r1, fp
	flds	s1, [r4, #4]
	movs	r4, #1
	str	r4, [sp, #4]
	add	r4, sp, #636
	mov	r3, r6
	fnegs	s2, s20
	fnegs	s3, s21
	mov	r0, r9
	add	r2, sp, #668
	str	r4, [sp]
	fcpys	s4, s29
	bl	nsvg__squareCap.isra.22(PLT)
	b	.L2887
.L2946:
	cmp	r2, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r9, #24]
	str	ip, [sp, #16]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	ldr	ip, [sp, #16]
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L2954
	ldr	r3, [r9, #20]
	b	.L2947
.L3302:
	fmuls	s22, s22, s19
	flds	s14, [r8, #4]
	flds	s15, [r8]
	fnmuls	s20, s21, s19
	fsubs	s14, s14, s22
	fnmacs	s15, s21, s19
	fsubs	s21, s14, s20
	fadds	s20, s20, s14
	fsubs	s23, s15, s22
	fcmps	s21, s20
	fmstat
	fadds	s22, s15, s22
	beq	.L2954
	ldr	r3, [r9, #20]
	ldr	r2, [r9, #24]
	cmp	r3, r2
	bge	.L2955
	ldr	r0, [r9, #16]
.L2956:
	fcmpes	s21, s20
	add	r2, r3, r3, lsl #1
	fmstat
	add	r3, r3, #1
	str	r3, [r9, #20]
	add	r3, r0, r2, lsl #3
	bmi	.L3311
	fsts	s22, [sp, #440]
	mov	r1, #-1
	fsts	s20, [sp, #444]
	fsts	s23, [sp, #448]
	fsts	s21, [sp, #452]
	vldr	d16, [sp, #440]
	vldr	d17, [sp, #448]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2954
.L3307:
	fsts	s23, [sp, #168]
	movs	r2, #1
	fsts	s22, [sp, #172]
	fsts	s21, [sp, #176]
	fsts	s20, [sp, #180]
	vldr	d16, [sp, #168]
	vldr	d17, [sp, #176]
	str	r2, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L3039
.L3303:
	ldr	r4, [sp, #40]
	mov	r0, r9
	flds	s0, [r8]
	mov	r1, r6
	flds	s1, [r8, #4]
	add	r2, sp, #636
	str	r4, [sp, #4]
	movs	r4, #0
	flds	s30, .L3314
	mov	r3, fp
	str	r4, [sp, #8]
	add	r4, sp, #668
	str	r4, [sp]
	ldr	r4, [sp, #32]
	fcpys	s2, s21
	fcpys	s3, s22
	fcpys	s4, s29
	str	r4, [sp, #24]
	str	ip, [sp, #16]
	fcpys	s31, s30
	bl	nsvg__roundCap.isra.23(PLT)
	fsts	s30, [sp, #72]
	fsts	s30, [sp, #68]
	ldr	ip, [sp, #16]
	ldr	r4, [sp, #24]
	b	.L2942
.L3309:
	fsts	s21, [sp, #104]
	movs	r1, #1
	fsts	s20, [sp, #108]
	str	r4, [sp, #112]	@ float
	fsts	s22, [sp, #116]
	vldr	d16, [sp, #104]
	vldr	d17, [sp, #112]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2887
.L3308:
	str	r4, [sp, #136]	@ float
	movs	r4, #1
	fsts	s24, [sp, #140]
	fsts	s23, [sp, #144]
	fsts	s22, [sp, #148]
	vldr	d16, [sp, #136]
	vldr	d17, [sp, #144]
	str	r4, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L3047
.L3310:
	fsts	s23, [sp, #488]
	movs	r1, #1
	fsts	s21, [sp, #492]
	fsts	s22, [sp, #496]
	fsts	s20, [sp, #500]
	vldr	d16, [sp, #488]
	vldr	d17, [sp, #496]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2954
.L3311:
	fsts	s23, [sp, #456]
	movs	r1, #1
	fsts	s21, [sp, #460]
	fsts	s22, [sp, #464]
	fsts	s20, [sp, #468]
	vldr	d16, [sp, #456]
	vldr	d17, [sp, #464]
	str	r1, [r3, #16]
	vst1.32	{q8}, [r3]
	b	.L2954
.L2955:
	cmp	r2, #0
	ldr	r0, [r9, #16]
	iteet	gt
	lslgt	r3, r2, #1
	movle	r3, #64
	movle	r1, #1536
	addgt	r2, r3, r2, lsl #2
	str	r3, [r9, #24]
	str	ip, [sp, #16]
	it	gt
	lslgt	r1, r2, #3
	bl	realloc(PLT)
	ldr	ip, [sp, #16]
	str	r0, [r9, #16]
	cmp	r0, #0
	beq	.L2954
	ldr	r3, [r9, #20]
	b	.L2956
.L3280:
	bl	sqrtf(PLT)
	fcpys	s15, s0
	b	.L2914
.L3286:
	bl	sqrtf(PLT)
	flds	s13, [r4]
	fcpys	s15, s0
	flds	s14, [r4, #4]
	ldr	ip, [sp, #16]
	b	.L2936
.L3297:
	bl	sqrtf(PLT)
	fcpys	s15, s0
	b	.L3034
.L3300:
	str	ip, [sp, #16]
	bl	sqrtf(PLT)
	ldr	ip, [sp, #16]
	fcpys	s15, s0
	b	.L2939
	.size	nsvgRasterize, .-nsvgRasterize
	.section	.text.libaroma_svg_ex,"ax",%progbits
	.align	2
	.global	libaroma_svg_ex
	.thumb
	.thumb_func
	.type	libaroma_svg_ex, %function
libaroma_svg_ex:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r9, r0
	sub	sp, sp, #12
	cmp	r0, #0
	beq	.L3317
	mov	r8, r1
	movs	r1, #0
	mov	r6, r2
	bl	libaroma_stream_to_string(PLT)
	mov	r5, r0
	cmp	r0, #0
	beq	.L3322
	cmp	r6, #0
	beq	.L3332
	bl	libaroma_fb(PLT)
	flds	s0, [r0, #44]	@ int
	mov	r0, r5
	ldr	r1, .L3336+4
	fsitos	s0, s0
.LPIC187:
	add	r1, pc
	bl	nsvgParse(PLT)
	mov	r4, r0
	mov	r0, r5
	bl	free(PLT)
	cmp	r4, #0
	beq	.L3322
.L3335:
	bl	nsvgCreateRasterizer(PLT)
	mov	r7, r0
	cmp	r0, #0
	beq	.L3333
	cmp	r6, #0
	bne	.L3324
	flds	s15, [r4]
	ftosizs	s15, s15
	fmrs	r0, s15	@ int
	bl	libaroma_dp(PLT)
	flds	s15, [r4, #4]
	mov	r5, r0
	ftosizs	s15, s15
	fmrs	r0, s15	@ int
	bl	libaroma_dp(PLT)
	str	r6, [sp]
	mov	r1, r0
	mov	r3, r6
	mov	r0, r5
	movs	r2, #1
	bl	libaroma_canvas_new_ex(PLT)
	mov	r5, r0
.L3325:
	movs	r1, #0
	mov	r0, r5
	mov	r2, r1
	bl	libaroma_canvas_setcolor(PLT)
	flds	s0, .L3336
	mov	r0, r7
	mov	r1, r4
	mov	r2, r5
	fconsts	s2, #112
	fcpys	s1, s0
	bl	nsvgRasterize(PLT)
	mov	r0, r4
	bl	nsvgDelete(PLT)
	mov	r0, r7
	bl	nsvgDeleteRasterizer(PLT)
.L3319:
	mov	r0, r5
	cmp	r8, #0
	bne	.L3334
.L3317:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L3332:
	bl	libaroma_fb(PLT)
	flds	s0, [r0, #44]	@ int
	mov	r0, r5
	ldr	r1, .L3336+8
	fsitos	s0, s0
.LPIC186:
	add	r1, pc
	bl	nsvgParse(PLT)
	mov	r4, r0
	mov	r0, r5
	bl	free(PLT)
	cmp	r4, #0
	bne	.L3335
.L3322:
	movs	r5, #0
	mov	r0, r5
	cmp	r8, #0
	beq	.L3317
.L3334:
	mov	r0, r9
	bl	libaroma_stream_close(PLT)
	mov	r0, r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L3324:
	flds	s14, [r4]
	movs	r2, #0
	flds	s15, [r4, #4]
	mov	r3, r2
	str	r2, [sp]
	movs	r2, #1
	ftosizs	s14, s14
	ftosizs	s15, s15
	fmrs	r0, s14	@ int
	fmrs	r1, s15	@ int
	bl	libaroma_canvas_new_ex(PLT)
	mov	r5, r0
	b	.L3325
.L3333:
	ldr	r0, .L3336+12
	mov	r5, r7
.LPIC188:
	add	r0, pc
	bl	printf(PLT)
	mov	r0, r4
	bl	nsvgDelete(PLT)
	b	.L3319
.L3337:
	.align	2
.L3336:
	.word	0
	.word	.LC73-(.LPIC187+4)
	.word	.LC72-(.LPIC186+4)
	.word	.LC74-(.LPIC188+4)
	.size	libaroma_svg_ex, .-libaroma_svg_ex
	.global	nsvg__colors
	.section	.data.rel.local.nsvg__colors,"aw",%progbits
	.align	2
	.type	nsvg__colors, %object
	.size	nsvg__colors, 80
nsvg__colors:
	.word	.LC75
	.word	255
	.word	.LC76
	.word	32768
	.word	.LC77
	.word	16711680
	.word	.LC78
	.word	65535
	.word	.LC79
	.word	16776960
	.word	.LC80
	.word	16711935
	.word	.LC81
	.word	0
	.word	.LC82
	.word	8421504
	.word	.LC83
	.word	8421504
	.word	.LC84
	.word	16777215
	.section	.rodata.CSWTCH.280,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	CSWTCH.280, %object
	.size	CSWTCH.280, 54
CSWTCH.280:
	.byte	7
	.byte	0
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	7
	.byte	0
	.byte	6
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	4
	.byte	2
	.byte	0
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	" \011\012\013\014\015\000"
	.space	1
.LC1:
	.ascii	"%x\000"
	.space	1
.LC2:
	.ascii	"%d%[%%, \011]%d%[%%, \011]%d\000"
	.space	1
.LC3:
	.ascii	"path\000"
	.space	3
.LC4:
	.ascii	"defs\000"
	.space	3
.LC5:
	.ascii	"0123456789\000"
	.space	1
.LC6:
	.ascii	"%f%s\000"
	.space	3
.LC7:
	.ascii	"matrix\000"
	.space	1
.LC8:
	.ascii	"translate\000"
	.space	2
.LC9:
	.ascii	"scale\000"
	.space	2
.LC10:
	.ascii	"rotate\000"
	.space	1
.LC11:
	.ascii	"skewX\000"
	.space	2
.LC12:
	.ascii	"skewY\000"
	.space	2
.LC13:
	.ascii	"style\000"
	.space	2
.LC14:
	.ascii	"display\000"
.LC15:
	.ascii	"none\000"
	.space	3
.LC16:
	.ascii	"fill\000"
	.space	3
.LC17:
	.ascii	"url(\000"
	.space	3
.LC18:
	.ascii	"opacity\000"
.LC19:
	.ascii	"%f\000"
	.space	1
.LC20:
	.ascii	"fill-opacity\000"
	.space	3
.LC21:
	.ascii	"stroke\000"
	.space	1
.LC22:
	.ascii	"stroke-width\000"
	.space	3
.LC23:
	.ascii	"stroke-dasharray\000"
	.space	3
.LC24:
	.ascii	"stroke-dashoffset\000"
	.space	2
.LC25:
	.ascii	"stroke-opacity\000"
	.space	1
.LC26:
	.ascii	"stroke-linecap\000"
	.space	1
.LC27:
	.ascii	"butt\000"
	.space	3
.LC28:
	.ascii	"round\000"
	.space	2
.LC29:
	.ascii	"square\000"
	.space	1
.LC30:
	.ascii	"stroke-linejoin\000"
.LC31:
	.ascii	"miter\000"
	.space	2
.LC32:
	.ascii	"bevel\000"
	.space	2
.LC33:
	.ascii	"fill-rule\000"
	.space	2
.LC34:
	.ascii	"nonzero\000"
.LC35:
	.ascii	"evenodd\000"
.LC36:
	.ascii	"font-size\000"
	.space	2
.LC37:
	.ascii	"transform\000"
	.space	2
.LC38:
	.ascii	"stop-color\000"
	.space	1
.LC39:
	.ascii	"stop-opacity\000"
	.space	3
.LC40:
	.ascii	"offset\000"
	.space	1
.LC41:
	.ascii	"gradientUnits\000"
	.space	2
.LC42:
	.ascii	"objectBoundingBox\000"
	.space	2
.LC43:
	.ascii	"gradientTransform\000"
	.space	2
.LC44:
	.ascii	"spreadMethod\000"
	.space	3
.LC45:
	.ascii	"reflect\000"
.LC46:
	.ascii	"repeat\000"
	.space	1
.LC47:
	.ascii	"xlink:href\000"
	.space	1
.LC48:
	.ascii	"points\000"
	.space	1
.LC49:
	.ascii	"linearGradient\000"
	.space	1
.LC50:
	.ascii	"radialGradient\000"
	.space	1
.LC51:
	.ascii	"stop\000"
	.space	3
.LC52:
	.ascii	"0123456789+-.eE\000"
.LC53:
	.ascii	"rect\000"
	.space	3
.LC54:
	.ascii	"width\000"
	.space	2
.LC55:
	.ascii	"height\000"
	.space	1
.LC56:
	.ascii	"circle\000"
	.space	1
.LC57:
	.ascii	"ellipse\000"
.LC58:
	.ascii	"line\000"
	.space	3
.LC59:
	.ascii	"polyline\000"
	.space	3
.LC60:
	.ascii	"polygon\000"
.LC61:
	.ascii	"viewBox\000"
.LC62:
	.ascii	"%f%*[%%, \011]%f%*[%%, \011]%f%*[%%, \011]%f\000"
.LC63:
	.ascii	"preserveAspectRatio\000"
.LC64:
	.ascii	"xMin\000"
	.space	3
.LC65:
	.ascii	"xMid\000"
	.space	3
.LC66:
	.ascii	"xMax\000"
	.space	3
.LC67:
	.ascii	"yMin\000"
	.space	3
.LC68:
	.ascii	"yMid\000"
	.space	3
.LC69:
	.ascii	"yMax\000"
	.space	3
.LC70:
	.ascii	"slice\000"
	.space	2
.LC71:
	.ascii	"rb\000"
	.space	1
.LC72:
	.ascii	"dp\000"
	.space	1
.LC73:
	.ascii	"px\000"
	.space	1
.LC74:
	.ascii	"libaroma_svg: Could not init rasterizer.\000"
	.space	3
.LC75:
	.ascii	"red\000"
.LC76:
	.ascii	"green\000"
	.space	2
.LC77:
	.ascii	"blue\000"
	.space	3
.LC78:
	.ascii	"yellow\000"
	.space	1
.LC79:
	.ascii	"cyan\000"
	.space	3
.LC80:
	.ascii	"magenta\000"
.LC81:
	.ascii	"black\000"
	.space	2
.LC82:
	.ascii	"grey\000"
	.space	3
.LC83:
	.ascii	"gray\000"
	.space	3
.LC84:
	.ascii	"white\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
