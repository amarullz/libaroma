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
	.file	"json.c"
	.section	.text.parse_hex4,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_hex4, %function
parse_hex4:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	r2, r3, #48
	uxtb	r1, r2
	cmp	r1, #9
	it	ls
	movls	r3, r2
	bls	.L3
	sub	r2, r3, #65
	cmp	r2, #5
	it	ls
	subls	r3, r3, #55
	bls	.L3
	sub	r2, r3, #97
	cmp	r2, #5
	bhi	.L17
	subs	r3, r3, #87
.L3:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	lsls	r3, r3, #4
	sub	r1, r2, #48
	uxtb	r5, r1
	cmp	r5, #9
	it	ls
	addls	r3, r3, r1
	bls	.L7
	sub	r1, r2, #65
	cmp	r1, #5
	itt	ls
	subls	r2, r2, #55
	addls	r3, r3, r2
	bls	.L7
	sub	r1, r2, #97
	cmp	r1, #5
	bhi	.L17
	subs	r2, r2, #87
	add	r3, r3, r2
.L7:
	ldrb	r1, [r0, #2]	@ zero_extendqisi2
	lsls	r3, r3, #4
	sub	r4, r1, #48
	uxtb	r5, r4
	cmp	r5, #9
	bhi	.L9
.L19:
	add	r4, r4, r3
.L10:
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	lsls	r4, r4, #4
	sub	r2, r3, #48
	uxtb	r5, r2
	cmp	r5, #9
	it	ls
	addls	r0, r2, r4
	bls	.L5
	sub	r2, r3, #65
	cmp	r2, #5
	itt	ls
	subls	r3, r3, #55
	addls	r0, r3, r4
	bls	.L5
	sub	r2, r3, #97
	cmp	r2, #5
	itt	ls
	subls	r3, r3, #87
	addls	r0, r3, r4
	bhi	.L17
.L5:
	pop	{r4, r5}
	bx	lr
.L9:
	sub	r2, r1, #65
	cmp	r2, #5
	itt	ls
	subls	r4, r1, #55
	addls	r4, r4, r3
	bls	.L10
	sub	r2, r1, #97
	cmp	r2, #5
	bhi	.L17
	sub	r4, r1, #87
	b	.L19
.L17:
	movs	r0, #0
	pop	{r4, r5}
	bx	lr
	.size	parse_hex4, .-parse_hex4
	.section	.text.print_number,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	print_number, %function
print_number:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	flds	s15, [r0, #20]	@ int
	push	{r3, r4, r5, lr}
	mov	r5, r0
	fstmfdd	sp!, {d8}
	fsitod	d17, s15
	fldd	d8, [r0, #24]
	fldd	d16, .L49
	fsubd	d17, d17, d8
	fabsd	d17, d17
	fcmped	d17, d16
	fmstat
	bhi	.L22
	fldd	d17, .L49+8
	fldd	d16, .L49+16
	fcmped	d8, d17
	fmstat
	fcmped	d8, d16
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	fmstat
	and	r3, r3, #1
	it	lt
	movlt	r3, #0
	cmp	r3, #0
	bne	.L47
.L22:
	ldr	r3, .L49+48
	movs	r0, #64
.LPIC2:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r4, r0
	cbz	r0, .L24
	fcpyd	d0, d8
	bl	floor(PLT)
	fsubd	d0, d0, d8
	fldd	d16, .L49
	fabsd	d0, d0
	fcmped	d0, d16
	fmstat
	bls	.L48
	fabsd	d16, d8
.L27:
	fldd	d17, .L49+24
	mov	r0, r4
	fcmped	d16, d17
	fmstat
	bmi	.L29
	fldd	d17, .L49+32
	fcmped	d16, d17
	fmstat
	ble	.L45
.L29:
	ldr	r1, .L49+52
	fmrrd	r2, r3, d8
.LPIC4:
	add	r1, pc
	bl	sprintf(PLT)
.L24:
	fldmfdd	sp!, {d8}
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L48:
	fldd	d17, .L49+40
	fabsd	d16, d8
	fcmped	d16, d17
	fmstat
	bpl	.L27
	ldr	r1, .L49+56
	mov	r0, r4
	fmrrd	r2, r3, d8
.LPIC3:
	add	r1, pc
	bl	sprintf(PLT)
	b	.L24
.L47:
	ldr	r3, .L49+60
	movs	r0, #21
.LPIC0:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r4, r0
	cmp	r0, #0
	beq	.L24
	ldr	r1, .L49+64
	ldr	r2, [r5, #20]
.LPIC1:
	add	r1, pc
	bl	sprintf(PLT)
	fldmfdd	sp!, {d8}
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L45:
	ldr	r1, .L49+68
	fmrrd	r2, r3, d8
.LPIC5:
	add	r1, pc
	bl	sprintf(PLT)
	fldmfdd	sp!, {d8}
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L50:
	.align	3
.L49:
	.word	0
	.word	1018167296
	.word	-4194304
	.word	1105199103
	.word	0
	.word	-1042284544
	.word	-1598689907
	.word	1051772663
	.word	0
	.word	1104006501
	.word	-456985788
	.word	1281616356
	.word	.LANCHOR0-(.LPIC2+4)
	.word	.LC2-(.LPIC4+4)
	.word	.LC1-(.LPIC3+4)
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	.LC3-(.LPIC5+4)
	.size	print_number, .-print_number
	.section	.text.print_string_ptr,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	print_string_ptr, %function
print_string_ptr:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	sub	sp, sp, #12
	cmp	r0, #0
	beq	.L52
	ldrb	r4, [r0]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L75
	ldr	r8, .L91
	mov	r7, r0
	movs	r6, #0
.LPIC15:
	add	r8, pc
	b	.L54
.L60:
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2
	adds	r6, r6, #2
	cbz	r4, .L88
.L54:
	mov	r0, r8
	mov	r1, r4
	bl	strchr(PLT)
	cmp	r0, #0
	bne	.L60
	cmp	r4, #31
	ldrb	r4, [r7, #1]!	@ zero_extendqisi2
	ite	hi
	addhi	r6, r6, #1
	addls	r6, r6, #6
	cmp	r4, #0
	bne	.L54
.L88:
	adds	r0, r6, #3
.L53:
	ldr	r3, .L91+4
.LPIC16:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r7, r0
	cbz	r0, .L56
	ldr	fp, .L91+8
	adds	r4, r0, #1
	movs	r6, #92
	mov	ip, #102
	mov	r10, #114
	mov	r9, #116
.LPIC17:
	add	fp, pc
	mov	r8, #110
	movs	r3, #34
	strb	r3, [r0]
.L62:
	ldrb	r3, [r5], #1	@ zero_extendqisi2
	cbz	r3, .L89
.L74:
	cmp	r3, #34
	it	ne
	cmpne	r3, #31
	bls	.L63
	cmp	r3, #92
	beq	.L63
	strb	r3, [r4]
	adds	r4, r4, #1
	ldrb	r3, [r5], #1	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L74
.L89:
	mov	r0, r7
	movs	r2, #34
	strb	r3, [r4, #1]
	strb	r2, [r4]
.L56:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L63:
	strb	r6, [r4]
	ldrb	r2, [r5, #-1]	@ zero_extendqisi2
	cmp	r2, #12
	beq	.L66
	bhi	.L67
	cmp	r2, #9
	beq	.L68
	cmp	r2, #10
	itt	eq
	strbeq	r8, [r4, #1]
	addeq	r4, r4, #2
	beq	.L62
	cmp	r2, #8
	beq	.L90
.L65:
	adds	r0, r4, #1
	mov	r1, fp
	str	ip, [sp, #4]
	adds	r4, r4, #6
	bl	sprintf(PLT)
	ldr	ip, [sp, #4]
	b	.L62
.L67:
	cmp	r2, #34
	beq	.L71
	cmp	r2, #92
	beq	.L71
	cmp	r2, #13
	bne	.L65
	strb	r10, [r4, #1]
	adds	r4, r4, #2
	b	.L62
.L71:
	strb	r2, [r4, #1]
	adds	r4, r4, #2
	b	.L62
.L66:
	strb	ip, [r4, #1]
	adds	r4, r4, #2
	b	.L62
.L90:
	movs	r3, #98
	adds	r4, r4, #2
	strb	r3, [r4, #-1]
	b	.L62
.L68:
	strb	r9, [r4, #1]
	adds	r4, r4, #2
	b	.L62
.L52:
	ldr	r3, .L91+12
	movs	r0, #1
.LPIC14:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	cmp	r0, #0
	beq	.L56
	strb	r5, [r0]
	b	.L56
.L75:
	movs	r0, #3
	b	.L53
.L92:
	.align	2
.L91:
	.word	.LC4-(.LPIC15+4)
	.word	.LANCHOR0-(.LPIC16+4)
	.word	.LC5-(.LPIC17+4)
	.word	.LANCHOR0-(.LPIC14+4)
	.size	print_string_ptr, .-print_string_ptr
	.section	.text.parse_string.isra.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_string.isra.0, %function
parse_string.isra.0:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r2
	ldrb	r3, [r2]	@ zero_extendqisi2
	sub	sp, sp, #20
	adds	r5, r2, #1
	cmp	r3, #34
	bne	.L94
	mov	r8, r0
	mov	r9, r1
	movs	r0, #0
	mov	r1, r5
.L95:
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	it	ne
	cmpne	r3, #34
	beq	.L97
.L130:
	cmp	r3, #92
	add	r0, r0, #1
	it	ne
	addne	r1, r1, #1
	bne	.L95
	adds	r1, r1, #2
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r3, #0
	it	ne
	cmpne	r3, #34
	bne	.L130
.L97:
	ldr	r3, .L135
	adds	r0, r0, #1
.LPIC19:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r7, r0
	cmp	r0, #0
	beq	.L127
	ldr	r2, .L135+4
	mov	r6, r0
	ldrb	r4, [r4, #1]	@ zero_extendqisi2
	movw	ip, #1023
	movs	r1, #9
	mov	fp, #10
.LPIC20:
	add	r2, pc
	str	r2, [sp, #12]
.L100:
	cmp	r4, #0
	it	ne
	cmpne	r4, #34
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	beq	.L131
	cmp	r4, #92
	beq	.L101
	strb	r4, [r6]
	adds	r5, r5, #1
	ldrb	r4, [r5]	@ zero_extendqisi2
	adds	r6, r6, #1
	b	.L100
.L101:
	ldrb	r0, [r5, #1]	@ zero_extendqisi2
	add	lr, r5, #1
	sub	r3, r0, #98
	cmp	r3, #19
	bhi	.L103
	tbb	[pc, r3]
.L105:
	.byte	(.L104-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L106-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L107-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L108-.L105)/2
	.byte	(.L103-.L105)/2
	.byte	(.L109-.L105)/2
	.byte	(.L110-.L105)/2
	.align	1
.L131:
	strb	r3, [r6]
	ldrb	r3, [r5]	@ zero_extendqisi2
	str	r7, [r9]
	cmp	r3, #34
	mov	r3, #4
	it	eq
	addeq	r5, r5, #1
	str	r3, [r8]
	mov	r0, r5
.L127:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L110:
	adds	r0, r5, #2
	str	r1, [sp, #4]
	str	ip, [sp, #8]
	bl	parse_hex4(PLT)
	ldr	ip, [sp, #8]
	sub	r3, r0, #56320
	mov	r10, r0
	add	lr, r5, #5
	ldr	r1, [sp, #4]
	cmp	r0, #0
	it	ne
	cmpne	r3, ip
	bls	.L132
	sub	r3, r0, #55296
	cmp	r3, #1024
	bcs	.L113
	ldrb	r3, [r5, #6]	@ zero_extendqisi2
	cmp	r3, #92
	it	ne
	movne	r4, r3
	bne	.L111
	ldrb	r3, [r5, #7]	@ zero_extendqisi2
	cmp	r3, #117
	bne	.L111
	add	r0, r5, #8
	str	r1, [sp, #4]
	str	ip, [sp, #8]
	bl	parse_hex4(PLT)
	sub	r3, r0, #56320
	add	lr, r5, #11
	cmp	r3, #1024
	ldr	r1, [sp, #4]
	ldr	ip, [sp, #8]
	bcc	.L114
	ldrb	r4, [r5, #12]	@ zero_extendqisi2
	b	.L111
.L109:
	strb	r1, [r6]
	adds	r6, r6, #1
	ldrb	r4, [r5, #2]	@ zero_extendqisi2
.L111:
	add	r5, lr, #1
	b	.L100
.L108:
	mov	r3, #13
	adds	r6, r6, #1
	strb	r3, [r6, #-1]
	ldrb	r4, [r5, #2]	@ zero_extendqisi2
	b	.L111
.L107:
	strb	fp, [r6]
	adds	r6, r6, #1
	ldrb	r4, [r5, #2]	@ zero_extendqisi2
	b	.L111
.L106:
	mov	r2, #12
	adds	r6, r6, #1
	strb	r2, [r6, #-1]
	ldrb	r4, [r5, #2]	@ zero_extendqisi2
	b	.L111
.L104:
	mov	r3, #8
	adds	r6, r6, #1
	strb	r3, [r6, #-1]
	ldrb	r4, [r5, #2]	@ zero_extendqisi2
	b	.L111
.L103:
	strb	r0, [r6]
	adds	r6, r6, #1
	ldrb	r4, [r5, #2]	@ zero_extendqisi2
	b	.L111
.L94:
	ldr	r3, .L135+8
	movs	r0, #0
.LPIC18:
	add	r3, pc
	str	r2, [r3]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L132:
	ldrb	r4, [r5, #6]	@ zero_extendqisi2
	b	.L111
.L113:
	cmp	r0, #127
	bhi	.L133
	movs	r3, #1
	adds	r0, r6, r3
	mov	r4, r3
.L122:
	ldr	r2, [sp, #12]
	subs	r6, r0, #1
	add	r6, r6, r3
	ldrb	r4, [r2, r4]	@ zero_extendqisi2
	orr	r10, r10, r4
	strb	r10, [r0, #-1]
	ldrb	r4, [lr, #1]	@ zero_extendqisi2
	b	.L111
.L133:
	cmp	r0, #2048
	bcs	.L115
	movs	r3, #2
	adds	r5, r6, r3
	mov	r4, r3
.L123:
	and	r6, r10, #63
	subs	r0, r5, #1
	orn	r6, r6, #127
	lsr	r10, r10, #6
	strb	r6, [r5, #-1]
	b	.L122
.L114:
	ubfx	r0, r0, #0, #10
	ubfx	r10, r10, #0, #10
	orr	r10, r0, r10, lsl #10
	add	r10, r10, #65536
.L115:
	cmp	r10, #65536
	bcs	.L134
	movs	r3, #3
	add	r6, r6, r3
	mov	r4, r3
.L124:
	and	r0, r10, #63
	subs	r5, r6, #1
	orn	r0, r0, #127
	lsr	r10, r10, #6
	strb	r0, [r6, #-1]
	b	.L123
.L134:
	and	r0, r10, #63
	movs	r3, #4
	orn	r0, r0, #127
	lsr	r10, r10, #6
	strb	r0, [r6, #3]
	mov	r4, r3
	adds	r6, r6, #3
	b	.L124
.L136:
	.align	2
.L135:
	.word	.LANCHOR0-(.LPIC19+4)
	.word	.LANCHOR2-(.LPIC20+4)
	.word	.LANCHOR1-(.LPIC18+4)
	.size	parse_string.isra.0, .-parse_string.isra.0
	.section	.text.print_array.isra.6,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	print_array.isra.6, %function
print_array.isra.6:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldr	r6, [r0]
	sub	sp, sp, #36
	cmp	r6, #0
	beq	.L138
	mov	r10, r1
	mov	r8, r2
	movs	r5, #0
	b	.L140
.L201:
	mov	r5, r4
.L140:
	ldr	r6, [r6]
	adds	r4, r5, #1
	cmp	r6, #0
	bne	.L201
	ldr	r3, .L204
	lsl	r9, r4, #2
	mov	r0, r9
.LPIC29:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	str	r0, [sp, #4]
	cmp	r0, #0
	beq	.L202
	mov	r2, r9
	mov	r1, r6
	bl	memset(PLT)
	ldr	r9, [r7]
	cmp	r9, #0
	beq	.L173
	ldr	r3, [sp, #4]
	mov	fp, r6
	ldr	ip, .L204+4
	add	r10, r10, #1
	ldr	r1, .L204+8
	movs	r6, #5
	subs	r3, r3, #4
	str	r4, [sp, #20]
	str	r3, [sp, #16]
.LPIC36:
	add	ip, pc
	ldr	r3, .L204+12
	mov	r4, r9
	ldr	r7, [sp, #16]
	mov	r9, ip
	str	r5, [sp, #28]
.LPIC33:
	add	r1, pc
.LPIC37:
	add	r3, pc
	str	r1, [sp, #12]
	str	r3, [sp]
	ldr	r3, .L204+16
.LPIC34:
	add	r3, pc
	str	r3, [sp, #24]
	ldr	r3, .L204+20
.LPIC35:
	add	r3, pc
	str	r3, [sp, #8]
	ldr	r3, .L204+24
.LPIC32:
	add	r3, pc
	mov	r5, r3
.L159:
	ldrb	r2, [r4, #12]	@ zero_extendqisi2
	cmp	r2, #6
	bhi	.L144
	tbb	[pc, r2]
.L146:
	.byte	(.L145-.L146)/2
	.byte	(.L147-.L146)/2
	.byte	(.L148-.L146)/2
	.byte	(.L149-.L146)/2
	.byte	(.L150-.L146)/2
	.byte	(.L151-.L146)/2
	.byte	(.L152-.L146)/2
	.align	1
.L138:
	ldr	r3, .L204+28
	movs	r0, #3
.LPIC30:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r3, r0
	cbz	r3, .L197
	ldr	r2, .L204+32
	mov	r0, r3
.LPIC31:
	add	r2, pc
	ldrh	r1, [r2]	@ unaligned
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	strh	r1, [r3]	@ unaligned
	strb	r2, [r3, #2]
.L197:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L152:
	add	r0, r4, #8
	mov	r1, r10
	mov	r2, r8
	bl	print_object.isra.5(PLT)
.L154:
	add	fp, fp, #1
	str	r0, [r7, #4]!
	cmp	r0, #0
	beq	.L199
	bl	strlen(PLT)
	ldr	r4, [r4]
	cmp	r8, #0
	ite	ne
	movne	r2, #3
	moveq	r2, #2
	add	r6, r6, r2
	add	r6, r6, r0
	mov	r0, r6
	cmp	r4, #0
	bne	.L159
	ldr	r4, [sp, #20]
	ldr	r5, [sp, #28]
	b	.L143
.L151:
	add	r0, r4, #8
	mov	r1, r10
	mov	r2, r8
	bl	print_array.isra.6(PLT)
	b	.L154
.L150:
	ldr	r0, [r4, #16]
	bl	print_string_ptr(PLT)
	b	.L154
.L149:
	mov	r0, r4
	bl	print_number(PLT)
	b	.L154
.L148:
	ldr	r2, [r5]
	movs	r0, #5
	blx	r2
	mov	r2, r0
	cbz	r0, .L156
	ldr	r3, [sp, #12]
	ldr	r0, [r3]	@ unaligned
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	str	r0, [r2]	@ unaligned
	strb	r1, [r2, #4]
.L156:
	mov	r0, r2
	b	.L154
.L147:
	ldr	r2, [r9]
	movs	r0, #5
	blx	r2
	mov	r2, r0
	cmp	r0, #0
	beq	.L156
	ldr	r3, [sp]
	ldr	r0, [r3]	@ unaligned
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	str	r0, [r2]	@ unaligned
	mov	r0, r2
	strb	r1, [r2, #4]
	b	.L154
.L145:
	ldr	r3, [sp, #24]
	movs	r0, #6
	ldr	r2, [r3]
	blx	r2
	mov	r2, r0
	cmp	r0, #0
	beq	.L156
	ldr	r3, [sp, #8]
	ldr	r0, [r3]	@ unaligned
	ldrh	r1, [r3, #4]	@ unaligned
	str	r0, [r2]	@ unaligned
	mov	r0, r2
	strh	r1, [r2, #4]	@ unaligned
	b	.L154
.L144:
	ldr	r4, [sp, #20]
	movs	r3, #0
	ldr	r6, [sp, #16]
	ldr	r2, [sp, #4]
	str	r3, [r2, fp, lsl #2]
.L160:
	ldr	r7, .L204+36
	movs	r5, #0
.LPIC40:
	add	r7, pc
.L170:
	ldr	r3, [r6, #4]!
	adds	r5, r5, #1
	mov	r0, r3
	cbz	r3, .L166
	ldr	r3, [r7]
	blx	r3
.L166:
	cmp	r5, r4
	blt	.L170
	ldr	r3, .L204+40
	ldr	r0, [sp, #4]
.LPIC41:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	movs	r0, #0
	b	.L197
.L173:
	movs	r0, #5
.L143:
	ldr	r3, .L204+44
.LPIC38:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	str	r0, [sp]
	cmp	r0, #0
	beq	.L203
	ldr	fp, [sp]
	movs	r1, #91
	ldr	r3, [sp]
	movs	r2, #0
	strb	r1, [fp], #1
	strb	r2, [r3, #1]
	cmp	r8, #0
	beq	.L161
	ldr	r7, .L204+48
	mov	r8, r2
	ldr	r6, [sp, #4]
	mov	r10, r2
.LPIC42:
	add	r7, pc
.L162:
	ldr	r1, [r6]
	mov	r0, fp
	bl	strcpy(PLT)
	ldr	r9, [r6], #4
	mov	r0, r9
	bl	strlen(PLT)
	cmp	r5, r8
	add	r3, fp, r0
	ittte	ne
	movne	r2, #44
	movne	r1, #32
	strbne	r2, [fp, r0]
	moveq	fp, r3
	ittt	ne
	strbne	r1, [r3, #1]
	addne	fp, r3, #2
	strbne	r10, [r3, #2]
	add	r8, r8, #1
	it	ne
	ldrne	r9, [r6, #-4]
	ldr	r3, [r7]
	mov	r0, r9
	blx	r3
	cmp	r8, r4
	blt	.L162
.L164:
	ldr	r2, .L204+52
	ldr	r0, [sp, #4]
.LPIC43:
	add	r2, pc
	ldr	r2, [r2]
	blx	r2
	movs	r1, #93
	movs	r2, #0
	ldr	r0, [sp]
	strb	r1, [fp]
	strb	r2, [fp, #1]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L161:
	ldr	r9, .L204+56
	mov	r10, r8
	ldr	r6, [sp, #4]
.LPIC39:
	add	r9, pc
.L165:
	ldr	r1, [r6]
	mov	r0, fp
	bl	strcpy(PLT)
	ldr	r7, [r6], #4
	mov	r0, r7
	bl	strlen(PLT)
	cmp	r5, r8
	add	r3, fp, r0
	itet	ne
	movne	r1, #44
	moveq	fp, r3
	strbne	r1, [fp, r0]
	add	r8, r8, #1
	ittt	ne
	strbne	r10, [r3, #1]
	addne	fp, r3, #1
	ldrne	r7, [r6, #-4]
	ldr	r3, [r9]
	mov	r0, r7
	blx	r3
	cmp	r8, r4
	blt	.L165
	b	.L164
.L202:
	mov	r0, r6
	b	.L197
.L199:
	ldr	r4, [sp, #20]
	ldr	r6, [sp, #16]
	b	.L160
.L203:
	ldr	r3, [sp, #4]
	subs	r3, r3, #4
	str	r3, [sp, #16]
	mov	r6, r3
	b	.L160
.L205:
	.align	2
.L204:
	.word	.LANCHOR0-(.LPIC29+4)
	.word	.LANCHOR0-(.LPIC36+4)
	.word	.LC7-(.LPIC33+4)
	.word	.LC9-(.LPIC37+4)
	.word	.LANCHOR0-(.LPIC34+4)
	.word	.LC8-(.LPIC35+4)
	.word	.LANCHOR0-(.LPIC32+4)
	.word	.LANCHOR0-(.LPIC30+4)
	.word	.LC6-(.LPIC31+4)
	.word	.LANCHOR3-(.LPIC40+4)
	.word	.LANCHOR3-(.LPIC41+4)
	.word	.LANCHOR0-(.LPIC38+4)
	.word	.LANCHOR3-(.LPIC42+4)
	.word	.LANCHOR3-(.LPIC43+4)
	.word	.LANCHOR3-(.LPIC39+4)
	.size	print_array.isra.6, .-print_array.isra.6
	.section	.text.print_value,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	print_value, %function
print_value:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L231
	push	{r3, r4, r5, lr}
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	cmp	r3, #6
	bhi	.L220
	tbb	[pc, r3]
.L209:
	.byte	(.L208-.L209)/2
	.byte	(.L210-.L209)/2
	.byte	(.L211-.L209)/2
	.byte	(.L212-.L209)/2
	.byte	(.L213-.L209)/2
	.byte	(.L214-.L209)/2
	.byte	(.L215-.L209)/2
	.align	1
.L215:
	adds	r0, r0, #8
	pop	{r3, r4, r5, lr}
	b	print_object.isra.5(PLT)
.L208:
	ldr	r3, .L232
	movs	r0, #6
.LPIC46:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r3, r0
	cbz	r0, .L218
	ldr	r2, .L232+4
.LPIC47:
	add	r2, pc
	ldr	r0, [r2]	@ unaligned
	ldrh	r2, [r2, #4]	@ unaligned
	str	r0, [r3]	@ unaligned
	strh	r2, [r3, #4]	@ unaligned
.L218:
	mov	r0, r3
	pop	{r3, r4, r5, pc}
.L210:
	ldr	r3, .L232+8
	movs	r0, #5
.LPIC48:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r3, r0
	cmp	r0, #0
	beq	.L218
	ldr	r2, .L232+12
.LPIC49:
	add	r2, pc
	ldr	r0, [r2]	@ unaligned
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	str	r0, [r3]	@ unaligned
	mov	r0, r3
	strb	r2, [r3, #4]
	pop	{r3, r4, r5, pc}
.L211:
	ldr	r3, .L232+16
	movs	r0, #5
.LPIC44:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r3, r0
	cmp	r0, #0
	beq	.L218
	ldr	r2, .L232+20
.LPIC45:
	add	r2, pc
	ldr	r0, [r2]	@ unaligned
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	str	r0, [r3]	@ unaligned
	mov	r0, r3
	strb	r2, [r3, #4]
	pop	{r3, r4, r5, pc}
.L212:
	pop	{r3, r4, r5, lr}
	b	print_number(PLT)
.L213:
	ldr	r0, [r0, #16]
	pop	{r3, r4, r5, lr}
	b	print_string_ptr(PLT)
.L214:
	adds	r0, r0, #8
	pop	{r3, r4, r5, lr}
	b	print_array.isra.6(PLT)
.L231:
	bx	lr
.L220:
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L233:
	.align	2
.L232:
	.word	.LANCHOR0-(.LPIC46+4)
	.word	.LC8-(.LPIC47+4)
	.word	.LANCHOR0-(.LPIC48+4)
	.word	.LC9-(.LPIC49+4)
	.word	.LANCHOR0-(.LPIC44+4)
	.word	.LC7-(.LPIC45+4)
	.size	print_value, .-print_value
	.section	.text.print_object.isra.5,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	print_object.isra.5, %function
print_object.isra.5:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	ldr	r6, [r0]
	mov	r8, r0
	mov	r7, r2
	str	r1, [sp, #16]
	cmp	r6, #0
	beq	.L235
	movs	r5, #0
	b	.L237
.L295:
	mov	r5, r4
.L237:
	ldr	r6, [r6]
	adds	r4, r5, #1
	cmp	r6, #0
	bne	.L295
	ldr	r9, .L299
	lsl	r10, r4, #2
	mov	r0, r10
.LPIC50:
	add	r9, pc
	ldr	r2, [r9]
	blx	r2
	str	r0, [sp, #20]
	cmp	r0, #0
	beq	.L294
	ldr	r2, [r9]
	mov	r0, r10
	blx	r2
	str	r0, [sp, #24]
	cmp	r0, #0
	beq	.L296
	ldr	r3, [sp, #16]
	mov	r2, r10
	mov	r1, r6
	ldr	r0, [sp, #20]
	adds	r3, r3, #1
	str	r3, [sp, #32]
	bl	memset(PLT)
	mov	r2, r10
	ldr	r0, [sp, #24]
	mov	r1, r6
	bl	memset(PLT)
	ldr	r10, [r8]
	mov	r8, #7
	cmp	r7, #0
	bne	.L297
.L246:
	cmp	r10, #0
	beq	.L247
	ldr	r3, [sp, #16]
	movs	r6, #0
	str	r4, [sp, #28]
	mov	r4, r10
	ldr	r9, [sp, #20]
	add	fp, r3, #3
	ldr	r10, [sp, #32]
	cmp	r7, r6
	it	eq
	moveq	fp, r6
	str	r6, [sp, #8]
	add	fp, fp, #2
	str	r5, [sp, #36]
	str	fp, [sp, #12]
	ldr	fp, [sp, #24]
.L250:
	ldr	r0, [r4, #32]
	bl	print_string_ptr(PLT)
	mov	r5, r0
	mov	r1, r10
	mov	r0, r4
	str	r5, [fp, r6]
	mov	r2, r7
	bl	print_value(PLT)
	cmp	r0, #0
	it	ne
	cmpne	r5, #0
	str	r0, [r9, r6]
	itt	eq
	moveq	r3, #1
	streq	r3, [sp, #8]
	beq	.L248
	bl	strlen(PLT)
	mov	r3, r0
	mov	r0, r5
	str	r3, [sp, #4]
	bl	strlen(PLT)
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #4]
	add	r8, r8, r2
	add	r8, r8, r3
	add	r8, r8, r0
.L248:
	ldr	r4, [r4]
	adds	r6, r6, #4
	cmp	r4, #0
	bne	.L250
	ldr	r3, [sp, #8]
	ldr	r4, [sp, #28]
	ldr	r5, [sp, #36]
	cmp	r3, #0
	beq	.L247
.L251:
	ldr	r8, .L299+4
	movs	r5, #0
	ldr	r7, .L299+8
	mov	r6, r5
	ldr	r9, [sp, #20]
	ldr	r10, [sp, #24]
.LPIC55:
	add	r8, pc
.LPIC56:
	add	r7, pc
.L264:
	ldr	r3, [r10, r5]
	adds	r6, r6, #1
	mov	r0, r3
	cbz	r3, .L254
	ldr	r3, [r8]
	blx	r3
.L254:
	ldr	r3, [r9, r5]
	adds	r5, r5, #4
	mov	r0, r3
	cbz	r3, .L255
	ldr	r3, [r7]
	blx	r3
.L255:
	cmp	r6, r4
	blt	.L264
	ldr	r4, .L299+12
	ldr	r0, [sp, #24]
.LPIC57:
	add	r4, pc
	ldr	r3, [r4]
	blx	r3
	ldr	r3, [r4]
	ldr	r0, [sp, #20]
	blx	r3
.L294:
	movs	r0, #0
	b	.L292
.L235:
	ldr	r3, .L299+16
	movs	r0, #3
.LPIC51:
	add	r3, pc
	ldr	r3, [r3]
	cbnz	r2, .L298
.L240:
	blx	r3
	mov	r4, r0
	cmp	r0, #0
	beq	.L294
	movs	r3, #123
	adds	r5, r0, #1
	strb	r3, [r0]
	cbz	r7, .L244
	movs	r3, #10
	adds	r5, r0, #2
	strb	r3, [r0, #1]
	ldr	r3, [sp, #16]
	cmp	r3, #1
	ble	.L244
	subs	r2, r3, #1
	mov	r0, r5
	movs	r1, #9
	add	r5, r5, r2
	bl	memset(PLT)
.L244:
	mov	r0, r4
	movs	r2, #125
	movs	r3, #0
	strb	r2, [r5]
	strb	r3, [r5, #1]
.L292:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L298:
	ldr	r0, [sp, #16]
	adds	r0, r0, #4
	b	.L240
.L297:
	ldr	r3, [sp, #16]
	add	r8, r3, #8
	b	.L246
.L247:
	ldr	r3, .L299+20
	mov	r0, r8
.LPIC54:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	str	r0, [sp, #28]
	cmp	r0, #0
	beq	.L251
	movs	r3, #123
	add	r10, r0, #1
	strb	r3, [r0]
	cbz	r7, .L253
	ldr	r3, [sp, #28]
	ldr	r2, [sp, #28]
	add	r10, r3, #2
	movs	r3, #10
	strb	r3, [r2, #1]
.L253:
	ldr	fp, .L299+24
	movs	r3, #0
	ldr	r2, [sp, #20]
	mov	r6, r3
	str	r4, [sp, #8]
	ldr	r8, [sp, #24]
.LPIC59:
	add	fp, pc
	ldr	r4, [sp, #32]
	sub	r9, r2, #4
	str	r5, [sp, #12]
	mov	r5, r10
	strb	r3, [r10]
.L262:
	cmp	r7, #0
	beq	.L257
	cmp	r4, #0
	ble	.L258
	mov	r0, r5
	movs	r1, #9
	mov	r2, r4
	add	r5, r5, r4
	bl	memset(PLT)
.L258:
	ldr	r1, [r8]
	mov	r0, r5
	bl	strcpy(PLT)
	ldr	r0, [r8]
	bl	strlen(PLT)
	adds	r1, r5, r0
	mov	r2, #58
	add	r10, r1, #2
	mov	r3, #9
	strb	r2, [r5, r0]
	strb	r3, [r1, #1]
.L265:
	ldr	r1, [r9, #4]
	mov	r0, r10
	bl	strcpy(PLT)
	ldr	r0, [r9, #4]
	bl	strlen(PLT)
	ldr	r2, [sp, #12]
	add	r3, r10, r0
	cmp	r2, r6
	ittte	ne
	addne	r5, r3, #1
	movne	r3, #44
	strbne	r3, [r10, r0]
	moveq	r5, r3
	cbz	r7, .L260
	mov	r2, #10
	adds	r5, r5, #1
	strb	r2, [r5, #-1]
.L260:
	mov	r3, #0
	ldr	r2, [fp]
	strb	r3, [r5]
	adds	r6, r6, #1
	ldr	r0, [r8], #4
	blx	r2
	ldr	r2, [fp]
	ldr	r0, [r9, #4]!
	blx	r2
	ldr	r3, [sp, #8]
	cmp	r6, r3
	blt	.L262
	ldr	r0, [sp, #24]
	mov	r10, r5
	ldr	r3, [fp]
	blx	r3
	ldr	r3, [fp]
	ldr	r0, [sp, #20]
	blx	r3
	cbz	r7, .L263
	ldr	r3, [sp, #16]
	cmp	r3, #0
	ble	.L263
	mov	r0, r5
	mov	r2, r3
	movs	r1, #9
	add	r10, r10, r3
	bl	memset(PLT)
.L263:
	movs	r2, #125
	movs	r3, #0
	ldr	r0, [sp, #28]
	strb	r2, [r10]
	strb	r3, [r10, #1]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L257:
	ldr	r1, [r8]
	mov	r0, r5
	bl	strcpy(PLT)
	ldr	r0, [r8]
	bl	strlen(PLT)
	mov	r3, #58
	adds	r2, r5, r0
	strb	r3, [r5, r0]
	add	r10, r2, #1
	b	.L265
.L296:
	ldr	r2, .L299+28
	ldr	r0, [sp, #20]
.LPIC53:
	add	r2, pc
	ldr	r2, [r2]
	blx	r2
	mov	r0, r6
	b	.L292
.L300:
	.align	2
.L299:
	.word	.LANCHOR0-(.LPIC50+4)
	.word	.LANCHOR3-(.LPIC55+4)
	.word	.LANCHOR3-(.LPIC56+4)
	.word	.LANCHOR3-(.LPIC57+4)
	.word	.LANCHOR0-(.LPIC51+4)
	.word	.LANCHOR0-(.LPIC54+4)
	.word	.LANCHOR3-(.LPIC59+4)
	.word	.LANCHOR3-(.LPIC53+4)
	.size	print_object.isra.5, .-print_object.isra.5
	.section	.text.parse_value,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_value, %function
parse_value:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	fstmfdd	sp!, {d8, d9}
	cmp	r1, #0
	beq	.L379
	mov	r5, r0
	mov	r0, r1
	ldr	r1, .L531+8
	movs	r2, #4
.LPIC63:
	add	r1, pc
	bl	strncmp(PLT)
	cmp	r0, #0
	beq	.L504
	ldr	r1, .L531+12
	mov	r0, r4
	movs	r2, #5
.LPIC64:
	add	r1, pc
	bl	strncmp(PLT)
	cmp	r0, #0
	beq	.L505
	ldr	r1, .L531+16
	mov	r0, r4
	movs	r2, #4
.LPIC65:
	add	r1, pc
	bl	strncmp(PLT)
	cmp	r0, #0
	beq	.L506
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #34
	beq	.L507
	sub	r2, r3, #45
	clz	r2, r2
	lsrs	r2, r2, #5
	sub	r0, r3, #48
	cmp	r0, #9
	ite	hi
	movhi	r0, r2
	orrls	r0, r2, #1
	cmp	r0, #0
	bne	.L508
	cmp	r3, #91
	beq	.L509
	cmp	r3, #123
	bne	.L343
	adds	r6, r4, #1
	mov	r3, #6
	str	r3, [r5, #12]
	beq	.L347
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L349
	cmp	r3, #32
	bhi	.L395
	adds	r4, r4, #2
	b	.L348
.L510:
	ldrb	r2, [r4]	@ zero_extendqisi2
	adds	r4, r4, #1
	cmp	r2, #0
	beq	.L349
	cmp	r2, #32
	bhi	.L345
.L348:
	mov	r6, r4
	cmp	r4, #0
	bne	.L510
.L347:
	movs	r6, #0
	ldrb	r2, [r6]	@ zero_extendqisi2
.L345:
	cmp	r2, #125
	bne	.L349
.L502:
	adds	r0, r6, #1
	b	.L498
.L505:
	str	r0, [r5, #12]
	adds	r0, r4, #5
.L498:
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, pc}
.L504:
	fldmfdd	sp!, {d8-d9}
	movs	r3, #2
	adds	r0, r4, #4
	str	r3, [r5, #12]
	pop	{r4, r5, r6, r7, r8, pc}
.L506:
	fldmfdd	sp!, {d8-d9}
	movs	r3, #1
	adds	r0, r4, #4
	str	r3, [r5, #12]
	str	r3, [r5, #20]
	pop	{r4, r5, r6, r7, r8, pc}
.L343:
	ldr	r3, .L531+20
.LPIC74:
	add	r3, pc
	str	r4, [r3]
	b	.L498
.L508:
	fconstd	d9, #112
	cmp	r2, #0
	bne	.L511
.L308:
	cmp	r3, #48
	itt	eq
	ldrbeq	r3, [r4, #1]	@ zero_extendqisi2
	addeq	r4, r4, #1
	sub	r2, r3, #49
	cmp	r2, #8
	bhi	.L381
	ldrb	r2, [r4]	@ zero_extendqisi2
	fldd	d8, .L531
	fconstd	d17, #36
.L311:
	subs	r2, r2, #48
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	fmsr	s15, r2	@ int
	fsitod	d16, s15
	sub	r1, r3, #48
	cmp	r1, #9
	mov	r2, r3
	fcpyd	d18, d16
	fmacd	d18, d8, d17
	fcpyd	d8, d18
	bls	.L311
.L310:
	cmp	r3, #46
	beq	.L512
	fldd	d1, .L531
.L312:
	and	r3, r3, #223
	cmp	r3, #69
	bne	.L313
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cmp	r3, #43
	beq	.L513
	cmp	r3, #45
	iteee	eq
	ldrbeq	r2, [r4, #2]	@ zero_extendqisi2
	addne	r4, r4, #1
	movne	r2, r3
	movne	r6, #1
	itt	eq
	moveq	r6, #-1
	addeq	r4, r4, #2
.L316:
	subs	r2, r2, #48
	uxtb	r1, r2
	cmp	r1, #9
	bhi	.L313
	movs	r3, #0
.L319:
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
	add	r0, r3, r3, lsl #2
	add	r3, r2, r0, lsl #1
	sub	r2, r1, #48
	uxtb	r1, r2
	cmp	r1, #9
	bls	.L319
	mul	r3, r6, r3
	fmsr	s15, r3	@ int
	fsitod	d16, s15
	faddd	d1, d16, d1
.L313:
	fconstd	d0, #36
	bl	pow(PLT)
	fmuld	d0, d0, d8
	movs	r3, #3
	mov	r0, r4
	str	r3, [r5, #12]
	fmuld	d16, d0, d9
	ftosizd	s15, d16
	fstd	d16, [r5, #24]
	fsts	s15, [r5, #20]	@ int
	b	.L498
.L349:
	ldr	r3, .L531+24
	movs	r0, #40
.LPIC69:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r8, r0
	cmp	r0, #0
	beq	.L351
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	mov	r3, r6
	str	r8, [r5, #8]
.L352:
	mov	r2, r3
	adds	r3, r3, #1
	ldrb	r1, [r2]	@ zero_extendqisi2
	subs	r1, r1, #1
	cmp	r1, #31
	bhi	.L353
	mov	r2, r3
	cmp	r3, #0
	bne	.L352
.L353:
	add	r0, r8, #12
	add	r1, r8, #16
	bl	parse_string.isra.0(PLT)
	mov	r2, r0
	cbz	r0, .L357
	ldrb	r3, [r0]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #31
	bhi	.L356
	adds	r3, r0, #1
	b	.L358
.L514:
	ldrb	r1, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	subs	r1, r1, #1
	cmp	r1, #31
	bhi	.L356
.L358:
	mov	r2, r3
	cmp	r3, #0
	bne	.L514
.L357:
	fldmfdd	sp!, {d8-d9}
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
.L356:
	ldr	r3, [r8, #16]
	movs	r0, #0
	str	r0, [r8, #16]
	str	r3, [r8, #32]
	ldrb	r3, [r2]	@ zero_extendqisi2
	cmp	r3, #58
	bne	.L515
	adds	r1, r2, #1
	beq	.L359
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #31
	bhi	.L359
	adds	r3, r2, #2
	b	.L360
.L516:
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	subs	r2, r2, #1
	cmp	r2, #31
	bhi	.L359
.L360:
	mov	r1, r3
	cmp	r3, #0
	bne	.L516
.L359:
	mov	r0, r8
	bl	parse_value(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L357
	ldrb	r3, [r0]	@ zero_extendqisi2
	subs	r2, r3, #1
	cmp	r2, #31
	bhi	.L361
	adds	r2, r0, #1
	b	.L362
.L517:
	ldrb	r3, [r2]	@ zero_extendqisi2
	adds	r2, r2, #1
	subs	r1, r3, #1
	cmp	r1, #31
	bhi	.L361
.L362:
	mov	r4, r2
	cmp	r2, #0
	bne	.L517
	b	.L357
.L381:
	fldd	d8, .L531
	b	.L310
.L507:
	fldmfdd	sp!, {d8-d9}
	mov	r2, r4
	add	r0, r5, #12
	add	r1, r5, #16
	pop	{r4, r5, r6, r7, r8, lr}
	b	parse_string.isra.0(PLT)
.L361:
	ldr	r5, .L531+28
	movs	r6, #0
.LPIC71:
	add	r5, pc
.L376:
	cmp	r3, #44
	bne	.L518
	ldr	r3, [r5]
	movs	r0, #40
	blx	r3
	mov	r7, r0
	cmp	r0, #0
	beq	.L357
	movs	r2, #40
	movs	r1, #0
	bl	memset(PLT)
	adds	r2, r4, #1
	str	r7, [r8]
	str	r8, [r7, #4]
	beq	.L363
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #31
	bhi	.L363
	adds	r3, r4, #2
	b	.L364
.L519:
	ldrb	r1, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	subs	r1, r1, #1
	cmp	r1, #31
	bhi	.L363
.L364:
	mov	r2, r3
	cmp	r3, #0
	bne	.L519
.L363:
	add	r0, r7, #12
	add	r1, r7, #16
	bl	parse_string.isra.0(PLT)
	mov	r2, r0
	cmp	r0, #0
	beq	.L357
	ldrb	r3, [r0]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #31
	bhi	.L365
	adds	r3, r0, #1
	b	.L366
.L520:
	ldrb	r1, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	subs	r1, r1, #1
	cmp	r1, #31
	bhi	.L365
.L366:
	mov	r2, r3
	cmp	r3, #0
	bne	.L520
	b	.L357
.L365:
	ldr	r3, [r7, #16]
	str	r6, [r7, #16]
	str	r3, [r7, #32]
	ldrb	r3, [r2]	@ zero_extendqisi2
	cmp	r3, #58
	bne	.L521
	adds	r1, r2, #1
	beq	.L367
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #31
	bhi	.L367
	adds	r3, r2, #2
	b	.L368
.L522:
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	subs	r2, r2, #1
	cmp	r2, #31
	bhi	.L367
.L368:
	mov	r1, r3
	cmp	r3, #0
	bne	.L522
.L367:
	mov	r0, r7
	bl	parse_value(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L357
	ldrb	r3, [r0]	@ zero_extendqisi2
	subs	r2, r3, #1
	cmp	r2, #31
	bhi	.L369
	adds	r2, r0, #1
	b	.L370
.L523:
	ldrb	r3, [r2]	@ zero_extendqisi2
	adds	r2, r2, #1
	subs	r1, r3, #1
	cmp	r1, #31
	bhi	.L369
.L370:
	mov	r4, r2
	cmp	r2, #0
	bne	.L523
	b	.L357
.L369:
	mov	r8, r7
	b	.L376
.L379:
	mov	r0, r1
	b	.L498
.L512:
	ldrb	r2, [r4, #1]	@ zero_extendqisi2
	fldd	d1, .L531
	sub	r3, r2, #48
	cmp	r3, #9
	bhi	.L313
	adds	r4, r4, #1
	fconstd	d18, #36
	fconstd	d17, #112
.L314:
	subs	r2, r2, #48
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	fsubd	d1, d1, d17
	fmsr	s15, r2	@ int
	fsitod	d16, s15
	sub	r1, r3, #48
	cmp	r1, #9
	mov	r2, r3
	fcpyd	d19, d16
	fmacd	d19, d8, d18
	fcpyd	d8, d19
	bls	.L314
	b	.L312
.L511:
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	adds	r4, r4, #1
	fconstd	d9, #240
	b	.L308
.L509:
	adds	r6, r4, #1
	mov	r3, #5
	str	r3, [r5, #12]
	beq	.L325
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	cbz	r3, .L327
	cmp	r3, #32
	bhi	.L323
	adds	r4, r4, #2
	b	.L326
.L532:
	.align	3
.L531:
	.word	0
	.word	0
	.word	.LC7-(.LPIC63+4)
	.word	.LC8-(.LPIC64+4)
	.word	.LC9-(.LPIC65+4)
	.word	.LANCHOR1-(.LPIC74+4)
	.word	.LANCHOR0-(.LPIC69+4)
	.word	.LANCHOR0-(.LPIC71+4)
.L525:
	ldrb	r2, [r4]	@ zero_extendqisi2
	adds	r4, r4, #1
	cbz	r2, .L327
	cmp	r2, #32
	bhi	.L524
.L326:
	mov	r6, r4
	cmp	r4, #0
	bne	.L525
.L325:
	movs	r6, #0
	ldrb	r3, [r6]	@ zero_extendqisi2
.L323:
	cmp	r3, #93
	beq	.L502
.L327:
	ldr	r3, .L533
	movs	r0, #40
.LPIC66:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r7, r0
	cmp	r0, #0
	beq	.L329
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	str	r7, [r5, #8]
	mov	r3, r6
	b	.L330
.L332:
	mov	r1, r3
	cbz	r3, .L331
.L330:
	mov	r1, r3
	adds	r3, r3, #1
	ldrb	r2, [r1]	@ zero_extendqisi2
	subs	r2, r2, #1
	cmp	r2, #31
	bls	.L332
.L331:
	mov	r0, r7
	bl	parse_value(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L357
	ldrb	r3, [r0]	@ zero_extendqisi2
	subs	r2, r3, #1
	cmp	r2, #31
	bhi	.L334
	adds	r3, r0, #1
	b	.L336
.L527:
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	subs	r1, r2, #1
	cmp	r1, #31
	bhi	.L526
.L336:
	mov	r4, r3
	cmp	r3, #0
	bne	.L527
	b	.L357
.L351:
	str	r0, [r5, #8]
	b	.L498
.L515:
	ldr	r3, .L533+4
.LPIC70:
	add	r3, pc
	str	r2, [r3]
	b	.L498
.L513:
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	movs	r6, #1
	adds	r4, r4, #2
	b	.L316
.L518:
	cmp	r3, #125
	bne	.L372
.L503:
	adds	r0, r4, #1
	b	.L498
.L521:
	ldr	r3, .L533+8
	movs	r0, #0
.LPIC72:
	add	r3, pc
	str	r2, [r3]
	b	.L498
.L526:
	mov	r3, r2
.L334:
	ldr	r5, .L533+12
.LPIC67:
	add	r5, pc
.L373:
	cmp	r3, #44
	bne	.L528
	ldr	r3, [r5]
	movs	r0, #40
	blx	r3
	mov	r6, r0
	cmp	r0, #0
	beq	.L357
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	adds	r1, r4, #1
	str	r6, [r7]
	str	r7, [r6, #4]
	beq	.L337
	ldrb	r3, [r4, #1]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #31
	bhi	.L337
	adds	r3, r4, #2
	b	.L338
.L529:
	ldrb	r2, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	subs	r2, r2, #1
	cmp	r2, #31
	bhi	.L337
.L338:
	mov	r1, r3
	cmp	r3, #0
	bne	.L529
.L337:
	mov	r0, r6
	bl	parse_value(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L357
	ldrb	r3, [r0]	@ zero_extendqisi2
	subs	r2, r3, #1
	cmp	r2, #31
	bhi	.L339
	adds	r2, r0, #1
	b	.L340
.L530:
	ldrb	r3, [r2]	@ zero_extendqisi2
	adds	r2, r2, #1
	subs	r1, r3, #1
	cmp	r1, #31
	bhi	.L339
.L340:
	mov	r4, r2
	cmp	r2, #0
	bne	.L530
	b	.L357
.L339:
	mov	r7, r6
	b	.L373
.L524:
	mov	r3, r2
	b	.L323
.L528:
	cmp	r3, #93
	beq	.L503
	ldr	r3, .L533+16
	movs	r0, #0
.LPIC68:
	add	r3, pc
	str	r4, [r3]
	b	.L498
.L329:
	str	r0, [r5, #8]
	b	.L498
.L395:
	mov	r2, r3
	b	.L345
.L372:
	ldr	r3, .L533+20
	movs	r0, #0
.LPIC73:
	add	r3, pc
	str	r4, [r3]
	b	.L498
.L534:
	.align	2
.L533:
	.word	.LANCHOR0-(.LPIC66+4)
	.word	.LANCHOR1-(.LPIC70+4)
	.word	.LANCHOR1-(.LPIC72+4)
	.word	.LANCHOR0-(.LPIC67+4)
	.word	.LANCHOR1-(.LPIC68+4)
	.word	.LANCHOR1-(.LPIC73+4)
	.size	parse_value, .-parse_value
	.section	.text.cJSON_GetErrorPtr,"ax",%progbits
	.align	2
	.global	cJSON_GetErrorPtr
	.thumb
	.thumb_func
	.type	cJSON_GetErrorPtr, %function
cJSON_GetErrorPtr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L536
.LPIC75:
	add	r3, pc
	ldr	r0, [r3]
	bx	lr
.L537:
	.align	2
.L536:
	.word	.LANCHOR1-(.LPIC75+4)
	.size	cJSON_GetErrorPtr, .-cJSON_GetErrorPtr
	.section	.text.cJSON_InitHooks,"ax",%progbits
	.align	2
	.global	cJSON_InitHooks
	.thumb
	.thumb_func
	.type	cJSON_InitHooks, %function
cJSON_InitHooks:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L549
	push	{r4}
.LPIC76:
	add	r2, pc
	cbz	r0, .L546
	ldr	r3, [r0]
	mov	r4, r3
	cbz	r3, .L547
.L541:
	ldr	r1, .L549+4
	ldr	r3, [r0, #4]
.LPIC79:
	add	r1, pc
	str	r4, [r1]
	cbz	r3, .L548
.L542:
	ldr	r2, .L549+8
	ldr	r4, [sp], #4
.LPIC80:
	add	r2, pc
	str	r3, [r2]
	bx	lr
.L547:
	ldr	r3, .L549+12
	ldr	r4, [r2, r3]
	b	.L541
.L548:
	ldr	r3, .L549+16
	ldr	r3, [r2, r3]
	b	.L542
.L546:
	ldr	r3, .L549+12
	ldr	r4, .L549+20
	ldr	r0, .L549+16
	ldr	r3, [r2, r3]
.LPIC77:
	add	r4, pc
	ldr	r1, .L549+24
	str	r3, [r4]
	ldr	r3, [r2, r0]
.LPIC78:
	add	r1, pc
	ldr	r4, [sp], #4
	str	r3, [r1]
	bx	lr
.L550:
	.align	2
.L549:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC76+4)
	.word	.LANCHOR0-(.LPIC79+4)
	.word	.LANCHOR3-(.LPIC80+4)
	.word	malloc(GOT)
	.word	free(GOT)
	.word	.LANCHOR0-(.LPIC77+4)
	.word	.LANCHOR3-(.LPIC78+4)
	.size	cJSON_InitHooks, .-cJSON_InitHooks
	.section	.text.cJSON_Delete,"ax",%progbits
	.align	2
	.global	cJSON_Delete
	.thumb
	.thumb_func
	.type	cJSON_Delete, %function
cJSON_Delete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	cbz	r0, .L551
	ldr	r8, .L573
	ldr	r7, .L573+4
	ldr	r6, .L573+8
.LPIC81:
	add	r8, pc
.LPIC82:
	add	r7, pc
.LPIC83:
	add	r6, pc
	b	.L561
.L572:
	mov	r4, r5
.L561:
	ldr	r3, [r4, #12]
	ldr	r5, [r4]
	lsls	r2, r3, #23
	bmi	.L554
	ldr	r0, [r4, #8]
	cbz	r0, .L558
	bl	cJSON_Delete(PLT)
	ldr	r3, [r4, #12]
	lsls	r3, r3, #23
	bmi	.L554
.L558:
	ldr	r0, [r4, #16]
	cbz	r0, .L554
	ldr	r3, [r8]
	blx	r3
.L554:
	ldr	r0, [r4, #32]
	cbz	r0, .L559
	ldr	r3, [r7]
	blx	r3
.L559:
	mov	r0, r4
	ldr	r3, [r6]
	blx	r3
	cmp	r5, #0
	bne	.L572
.L551:
	pop	{r4, r5, r6, r7, r8, pc}
.L574:
	.align	2
.L573:
	.word	.LANCHOR3-(.LPIC81+4)
	.word	.LANCHOR3-(.LPIC82+4)
	.word	.LANCHOR3-(.LPIC83+4)
	.size	cJSON_Delete, .-cJSON_Delete
	.section	.text.cJSON_ParseWithOpts,"ax",%progbits
	.align	2
	.global	cJSON_ParseWithOpts
	.thumb
	.thumb_func
	.type	cJSON_ParseWithOpts, %function
cJSON_ParseWithOpts:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L608
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	movs	r0, #40
	mov	r7, r1
.LPIC84:
	add	r3, pc
	mov	r8, r2
	ldr	r3, [r3]
	blx	r3
	mov	r6, r0
	cbz	r0, .L576
	movs	r2, #40
	movs	r1, #0
	bl	memset(PLT)
	ldr	r3, .L608+4
	movs	r2, #0
.LPIC85:
	add	r3, pc
	str	r2, [r3]
	cbz	r4, .L577
	ldrb	r3, [r4]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #31
	bhi	.L577
	adds	r3, r4, #1
	b	.L578
.L606:
	ldrb	r5, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	subs	r5, r5, #1
	cmp	r5, #31
	bhi	.L577
.L578:
	mov	r4, r3
	cmp	r3, #0
	bne	.L606
.L577:
	mov	r1, r4
	mov	r0, r6
	bl	parse_value(PLT)
	mov	r4, r0
	cbz	r0, .L607
	mov	r3, r0
	cmp	r8, #0
	beq	.L581
.L582:
	ldrb	r2, [r3]	@ zero_extendqisi2
	mov	r4, r3
	adds	r3, r3, #1
	cbz	r2, .L581
	cmp	r2, #32
	bhi	.L585
	mov	r4, r3
	cmp	r3, #0
	bne	.L582
	ldrb	r3, [r3]	@ zero_extendqisi2
	cbnz	r3, .L585
.L581:
	cbz	r7, .L587
	str	r4, [r7]
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, pc}
.L576:
	ldr	r3, .L608+8
.LPIC87:
	add	r3, pc
	str	r6, [r3]
	pop	{r4, r5, r6, r7, r8, pc}
.L587:
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, pc}
.L585:
	mov	r0, r6
	bl	cJSON_Delete(PLT)
	ldr	r3, .L608+12
	movs	r0, #0
.LPIC86:
	add	r3, pc
	str	r4, [r3]
	pop	{r4, r5, r6, r7, r8, pc}
.L607:
	mov	r0, r6
	bl	cJSON_Delete(PLT)
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, pc}
.L609:
	.align	2
.L608:
	.word	.LANCHOR0-(.LPIC84+4)
	.word	.LANCHOR1-(.LPIC85+4)
	.word	.LANCHOR1-(.LPIC87+4)
	.word	.LANCHOR1-(.LPIC86+4)
	.size	cJSON_ParseWithOpts, .-cJSON_ParseWithOpts
	.section	.text.cJSON_Parse,"ax",%progbits
	.align	2
	.global	cJSON_Parse
	.thumb
	.thumb_func
	.type	cJSON_Parse, %function
cJSON_Parse:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r1, #0
	mov	r2, r1
	b	cJSON_ParseWithOpts(PLT)
	.size	cJSON_Parse, .-cJSON_Parse
	.section	.text.cJSON_Print,"ax",%progbits
	.align	2
	.global	cJSON_Print
	.thumb
	.thumb_func
	.type	cJSON_Print, %function
cJSON_Print:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	sub	sp, sp, #20
	cmp	r0, #0
	beq	.L667
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	cmp	r3, #6
	bhi	.L643
	tbb	[pc, r3]
.L614:
	.byte	(.L613-.L614)/2
	.byte	(.L615-.L614)/2
	.byte	(.L616-.L614)/2
	.byte	(.L617-.L614)/2
	.byte	(.L618-.L614)/2
	.byte	(.L619-.L614)/2
	.byte	(.L620-.L614)/2
	.align	1
.L620:
	ldr	r6, [r0, #8]
	cmp	r6, #0
	beq	.L624
	movs	r5, #0
	b	.L626
.L670:
	mov	r5, r4
.L626:
	ldr	r6, [r6]
	adds	r4, r5, #1
	cmp	r6, #0
	bne	.L670
	ldr	r9, .L672
	lsl	r8, r4, #2
	mov	r0, r8
.LPIC94:
	add	r9, pc
	ldr	r3, [r9]
	blx	r3
	mov	r10, r0
	cmp	r0, #0
	beq	.L644
	ldr	r3, [r9]
	mov	r0, r8
	blx	r3
	str	r0, [sp, #4]
	cmp	r0, #0
	beq	.L671
	mov	r1, r6
	mov	r2, r8
	mov	r0, r10
	bl	memset(PLT)
	ldr	r0, [sp, #4]
	mov	r1, r6
	mov	r2, r8
	bl	memset(PLT)
	ldr	r7, [r7, #8]
	cmp	r7, #0
	beq	.L646
	ldr	r9, [sp, #4]
	mov	r8, #8
	mov	fp, r6
	str	r4, [sp, #8]
	str	r5, [sp, #12]
.L633:
	ldr	r0, [r7, #32]
	bl	print_string_ptr(PLT)
	movs	r1, #1
	mov	r5, r0
	str	r5, [r9, r6]
	mov	r0, r7
	mov	r2, r1
	bl	print_value(PLT)
	cmp	r0, #0
	it	ne
	cmpne	r5, #0
	str	r0, [r10, r6]
	it	eq
	moveq	fp, #1
	beq	.L631
	bl	strlen(PLT)
	add	r8, r8, #5
	mov	r4, r0
	add	r8, r8, r4
	mov	r0, r5
	bl	strlen(PLT)
	add	r8, r8, r0
.L631:
	ldr	r7, [r7]
	adds	r6, r6, #4
	cmp	r7, #0
	bne	.L633
	ldr	r4, [sp, #8]
	mov	r0, r8
	ldr	r5, [sp, #12]
	cmp	fp, #0
	beq	.L630
.L634:
	ldr	r7, .L672+4
	movs	r5, #0
	ldr	r6, .L672+8
	mov	r8, r5
	ldr	r9, [sp, #4]
.LPIC99:
	add	r7, pc
.LPIC100:
	add	r6, pc
.L641:
	ldr	r3, [r9, r5]
	add	r8, r8, #1
	mov	r0, r3
	cbz	r3, .L636
	ldr	r3, [r7]
	blx	r3
.L636:
	ldr	r3, [r10, r5]
	adds	r5, r5, #4
	mov	r0, r3
	cbz	r3, .L637
	ldr	r3, [r6]
	blx	r3
.L637:
	cmp	r8, r4
	blt	.L641
	ldr	r4, .L672+12
	ldr	r0, [sp, #4]
.LPIC101:
	add	r4, pc
	ldr	r3, [r4]
	blx	r3
	mov	r0, r10
	ldr	r3, [r4]
	blx	r3
	movs	r0, #0
	b	.L667
.L613:
	ldr	r3, .L672+16
	movs	r0, #6
.LPIC90:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r6, r0
	cbz	r0, .L644
	ldr	r3, .L672+20
.LPIC91:
	add	r3, pc
	ldr	r0, [r3]	@ unaligned
	ldrh	r3, [r3, #4]	@ unaligned
	str	r0, [r6]	@ unaligned
	strh	r3, [r6, #4]	@ unaligned
.L644:
	mov	r0, r6
.L667:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L615:
	ldr	r3, .L672+24
	movs	r0, #5
.LPIC92:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r6, r0
	cmp	r0, #0
	beq	.L644
	ldr	r3, .L672+28
.LPIC93:
	add	r3, pc
	ldr	r0, [r3]	@ unaligned
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	str	r0, [r6]	@ unaligned
	strb	r3, [r6, #4]
	b	.L644
.L616:
	ldr	r3, .L672+32
	movs	r0, #5
.LPIC88:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r6, r0
	cmp	r0, #0
	beq	.L644
	ldr	r3, .L672+36
.LPIC89:
	add	r3, pc
	ldr	r0, [r3]	@ unaligned
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	str	r0, [r6]	@ unaligned
	strb	r3, [r6, #4]
	b	.L644
.L617:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	print_number(PLT)
.L618:
	ldr	r0, [r0, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	print_string_ptr(PLT)
.L619:
	adds	r0, r0, #8
	movs	r1, #0
	movs	r2, #1
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	print_array.isra.6(PLT)
.L624:
	ldr	r3, .L672+40
	movs	r0, #4
.LPIC95:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r3, r0
	cmp	r0, #0
	beq	.L667
	movs	r0, #123
	movs	r1, #10
	movs	r2, #125
	strb	r0, [r3]
	strb	r6, [r3, #3]
	mov	r0, r3
	strb	r1, [r3, #1]
	strb	r2, [r3, #2]
	b	.L667
.L671:
	ldr	r3, .L672+44
	mov	r0, r10
.LPIC97:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r0, r6
	b	.L667
.L646:
	movs	r0, #8
.L630:
	ldr	r3, .L672+48
.LPIC98:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	str	r0, [sp, #8]
	cmp	r0, #0
	beq	.L634
	ldr	r1, [sp, #8]
	movs	r0, #0
	ldr	r9, .L672+52
	movs	r6, #123
	ldr	r8, [sp, #4]
	mov	r7, r10
	ldr	r2, [sp, #8]
	mov	fp, r0
	strb	r6, [r1], #2
.LPIC103:
	add	r9, pc
	str	r10, [sp, #12]
	mov	r10, r1
	movs	r3, #10
	strb	r0, [r2, #2]
	strb	r3, [r2, #1]
.L635:
	add	r6, r10, #1
	mov	r3, #9
	strb	r3, [r10]
	mov	r0, r6
	ldr	r1, [r8]
	bl	strcpy(PLT)
	ldr	r0, [r8], #4
	bl	strlen(PLT)
	mov	r3, #9
	adds	r2, r6, r0
	mov	r1, #58
	add	r10, r2, #2
	strb	r1, [r6, r0]
	mov	r0, r10
	strb	r3, [r2, #1]
	ldr	r1, [r7]
	bl	strcpy(PLT)
	ldr	r0, [r7], #4
	bl	strlen(PLT)
	cmp	fp, r5
	add	r2, r10, r0
	add	r6, r2, #1
	ite	ne
	movne	r1, #44
	moveq	r6, r2
	mov	r3, #0
	mov	r2, #10
	it	ne
	strbne	r1, [r10, r0]
	strb	r2, [r6]
	add	fp, fp, #1
	strb	r3, [r6, #1]
	add	r10, r6, #1
	ldr	r0, [r8, #-4]
	ldr	r3, [r9]
	blx	r3
	ldr	r3, [r9]
	ldr	r0, [r7, #-4]
	blx	r3
	cmp	fp, r4
	mov	r3, #0
	blt	.L635
	ldr	r10, [sp, #12]
	ldr	r2, [r9]
	ldr	r0, [sp, #4]
	str	r3, [sp]
	blx	r2
	ldr	r2, [r9]
	mov	r0, r10
	blx	r2
	ldr	r3, [sp]
	movs	r2, #125
	ldr	r0, [sp, #8]
	strb	r2, [r6, #1]
	strb	r3, [r6, #2]
	b	.L667
.L643:
	movs	r0, #0
	b	.L667
.L673:
	.align	2
.L672:
	.word	.LANCHOR0-(.LPIC94+4)
	.word	.LANCHOR3-(.LPIC99+4)
	.word	.LANCHOR3-(.LPIC100+4)
	.word	.LANCHOR3-(.LPIC101+4)
	.word	.LANCHOR0-(.LPIC90+4)
	.word	.LC8-(.LPIC91+4)
	.word	.LANCHOR0-(.LPIC92+4)
	.word	.LC9-(.LPIC93+4)
	.word	.LANCHOR0-(.LPIC88+4)
	.word	.LC7-(.LPIC89+4)
	.word	.LANCHOR0-(.LPIC95+4)
	.word	.LANCHOR3-(.LPIC97+4)
	.word	.LANCHOR0-(.LPIC98+4)
	.word	.LANCHOR3-(.LPIC103+4)
	.size	cJSON_Print, .-cJSON_Print
	.section	.text.cJSON_PrintUnformatted,"ax",%progbits
	.align	2
	.global	cJSON_PrintUnformatted
	.thumb
	.thumb_func
	.type	cJSON_PrintUnformatted, %function
cJSON_PrintUnformatted:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	sub	sp, sp, #20
	cmp	r0, #0
	beq	.L730
	ldrb	r3, [r0, #12]	@ zero_extendqisi2
	cmp	r3, #6
	bhi	.L706
	tbb	[pc, r3]
.L677:
	.byte	(.L676-.L677)/2
	.byte	(.L678-.L677)/2
	.byte	(.L679-.L677)/2
	.byte	(.L680-.L677)/2
	.byte	(.L681-.L677)/2
	.byte	(.L682-.L677)/2
	.byte	(.L683-.L677)/2
	.align	1
.L683:
	ldr	r5, [r0, #8]
	cmp	r5, #0
	beq	.L687
	mov	r8, #0
	b	.L689
.L733:
	mov	r8, r4
.L689:
	ldr	r5, [r5]
	add	r4, r8, #1
	cmp	r5, #0
	bne	.L733
	ldr	r9, .L735
	lsls	r7, r4, #2
	mov	r0, r7
.LPIC113:
	add	r9, pc
	ldr	r2, [r9]
	blx	r2
	str	r0, [sp]
	cmp	r0, #0
	beq	.L707
	ldr	r2, [r9]
	mov	r0, r7
	blx	r2
	str	r0, [sp, #4]
	cmp	r0, #0
	beq	.L734
	mov	r1, r5
	mov	r2, r7
	ldr	r0, [sp]
	bl	memset(PLT)
	ldr	r0, [sp, #4]
	mov	r1, r5
	mov	r2, r7
	bl	memset(PLT)
	ldr	r6, [r6, #8]
	cmp	r6, #0
	beq	.L709
	ldmia	sp, {r9, fp}
	movs	r7, #7
	mov	r10, r5
	str	r4, [sp, #8]
	str	r8, [sp, #12]
.L696:
	ldr	r0, [r6, #32]
	bl	print_string_ptr(PLT)
	mov	r8, r0
	movs	r1, #1
	mov	r0, r6
	str	r8, [fp, r5]
	movs	r2, #0
	bl	print_value(PLT)
	cmp	r0, #0
	it	ne
	cmpne	r8, #0
	str	r0, [r9, r5]
	it	eq
	moveq	r10, #1
	beq	.L694
	bl	strlen(PLT)
	adds	r7, r7, #2
	mov	r4, r0
	add	r7, r7, r4
	mov	r0, r8
	bl	strlen(PLT)
	add	r7, r7, r0
.L694:
	ldr	r6, [r6]
	adds	r5, r5, #4
	cmp	r6, #0
	bne	.L696
	ldr	r4, [sp, #8]
	mov	r0, r7
	ldr	r8, [sp, #12]
	cmp	r10, #0
	beq	.L693
.L697:
	ldr	r7, .L735+4
	movs	r5, #0
	ldr	r6, .L735+8
	mov	r10, r5
	ldmia	sp, {r8, r9}
.LPIC118:
	add	r7, pc
.LPIC119:
	add	r6, pc
.L704:
	ldr	r3, [r9, r5]
	add	r10, r10, #1
	mov	r0, r3
	cbz	r3, .L699
	ldr	r3, [r7]
	blx	r3
.L699:
	ldr	r3, [r8, r5]
	adds	r5, r5, #4
	mov	r0, r3
	cbz	r3, .L700
	ldr	r3, [r6]
	blx	r3
.L700:
	cmp	r10, r4
	blt	.L704
	ldr	r4, .L735+12
	ldr	r0, [sp, #4]
.LPIC120:
	add	r4, pc
	ldr	r3, [r4]
	blx	r3
	ldr	r0, [sp]
	ldr	r3, [r4]
	blx	r3
	movs	r0, #0
	b	.L730
.L676:
	ldr	r3, .L735+16
	movs	r0, #6
.LPIC109:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r5, r0
	cbz	r0, .L707
	ldr	r3, .L735+20
.LPIC110:
	add	r3, pc
	ldr	r0, [r3]	@ unaligned
	ldrh	r3, [r3, #4]	@ unaligned
	str	r0, [r5]	@ unaligned
	strh	r3, [r5, #4]	@ unaligned
.L707:
	mov	r0, r5
.L730:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L678:
	ldr	r3, .L735+24
	movs	r0, #5
.LPIC111:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r5, r0
	cmp	r0, #0
	beq	.L707
	ldr	r3, .L735+28
.LPIC112:
	add	r3, pc
	ldr	r0, [r3]	@ unaligned
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	str	r0, [r5]	@ unaligned
	strb	r3, [r5, #4]
	b	.L707
.L679:
	ldr	r3, .L735+32
	movs	r0, #5
.LPIC107:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r5, r0
	cmp	r0, #0
	beq	.L707
	ldr	r3, .L735+36
.LPIC108:
	add	r3, pc
	ldr	r0, [r3]	@ unaligned
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	str	r0, [r5]	@ unaligned
	strb	r3, [r5, #4]
	b	.L707
.L680:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	print_number(PLT)
.L681:
	ldr	r0, [r0, #16]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	print_string_ptr(PLT)
.L682:
	movs	r1, #0
	adds	r0, r0, #8
	mov	r2, r1
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	print_array.isra.6(PLT)
.L687:
	ldr	r3, .L735+40
	movs	r0, #3
.LPIC114:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r3, r0
	cmp	r0, #0
	beq	.L730
	movs	r1, #123
	movs	r2, #125
	strb	r5, [r0, #2]
	strb	r1, [r3]
	strb	r2, [r3, #1]
	b	.L730
.L734:
	ldr	r3, .L735+44
	ldr	r0, [sp]
.LPIC116:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r0, r5
	b	.L730
.L709:
	movs	r0, #7
.L693:
	ldr	r2, .L735+48
.LPIC117:
	add	r2, pc
	ldr	r2, [r2]
	blx	r2
	str	r0, [sp, #8]
	cmp	r0, #0
	beq	.L697
	ldr	r7, .L735+52
	movs	r1, #0
	ldmia	sp, {r5, r6}
	mov	r9, r1
	ldr	fp, [sp, #8]
	movs	r0, #123
	ldr	r3, [sp, #8]
.LPIC122:
	add	r7, pc
	strb	r0, [fp], #1
	strb	r1, [r3, #1]
.L698:
	ldr	r1, [r6]
	mov	r0, fp
	bl	strcpy(PLT)
	ldr	r0, [r6], #4
	bl	strlen(PLT)
	add	r10, fp, r0
	mov	r1, #58
	add	r10, r10, #1
	strb	r1, [fp, r0]
	mov	r0, r10
	ldr	r1, [r5]
	bl	strcpy(PLT)
	ldr	r0, [r5], #4
	bl	strlen(PLT)
	cmp	r9, r8
	add	r3, r10, r0
	it	ne
	movne	r2, #44
	add	fp, r3, #1
	it	eq
	moveq	fp, r3
	mov	r3, #0
	it	ne
	strbne	r2, [r10, r0]
	add	r9, r9, #1
	strb	r3, [fp]
	mov	r10, #0
	ldr	r0, [r6, #-4]
	ldr	r3, [r7]
	blx	r3
	ldr	r3, [r7]
	ldr	r0, [r5, #-4]
	blx	r3
	cmp	r9, r4
	blt	.L698
	ldr	r0, [sp, #4]
	ldr	r3, [r7]
	blx	r3
	ldr	r3, [r7]
	ldr	r0, [sp]
	blx	r3
	movs	r3, #125
	strb	r10, [fp, #1]
	ldr	r0, [sp, #8]
	strb	r3, [fp]
	b	.L730
.L706:
	movs	r0, #0
	b	.L730
.L736:
	.align	2
.L735:
	.word	.LANCHOR0-(.LPIC113+4)
	.word	.LANCHOR3-(.LPIC118+4)
	.word	.LANCHOR3-(.LPIC119+4)
	.word	.LANCHOR3-(.LPIC120+4)
	.word	.LANCHOR0-(.LPIC109+4)
	.word	.LC8-(.LPIC110+4)
	.word	.LANCHOR0-(.LPIC111+4)
	.word	.LC9-(.LPIC112+4)
	.word	.LANCHOR0-(.LPIC107+4)
	.word	.LC7-(.LPIC108+4)
	.word	.LANCHOR0-(.LPIC114+4)
	.word	.LANCHOR3-(.LPIC116+4)
	.word	.LANCHOR0-(.LPIC117+4)
	.word	.LANCHOR3-(.LPIC122+4)
	.size	cJSON_PrintUnformatted, .-cJSON_PrintUnformatted
	.section	.text.cJSON_GetArraySize,"ax",%progbits
	.align	2
	.global	cJSON_GetArraySize
	.thumb
	.thumb_func
	.type	cJSON_GetArraySize, %function
cJSON_GetArraySize:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #8]
	cbz	r3, .L740
	movs	r0, #0
.L739:
	ldr	r3, [r3]
	adds	r0, r0, #1
	cmp	r3, #0
	bne	.L739
	bx	lr
.L740:
	mov	r0, r3
	bx	lr
	.size	cJSON_GetArraySize, .-cJSON_GetArraySize
	.section	.text.cJSON_GetArrayItem,"ax",%progbits
	.align	2
	.global	cJSON_GetArrayItem
	.thumb
	.thumb_func
	.type	cJSON_GetArrayItem, %function
cJSON_GetArrayItem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #8]
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ble	.L745
.L746:
	ldr	r0, [r0]
	subs	r1, r1, #1
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	bgt	.L746
.L745:
	bx	lr
	.size	cJSON_GetArrayItem, .-cJSON_GetArrayItem
	.section	.text.cJSON_GetObjectItem,"ax",%progbits
	.align	2
	.global	cJSON_GetObjectItem
	.thumb
	.thumb_func
	.type	cJSON_GetObjectItem, %function
cJSON_GetObjectItem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r9, r1
	ldr	r8, [r0, #8]
	cmp	r8, #0
	beq	.L754
.L755:
	ldr	r4, [r8, #32]
	cbz	r4, .L774
	cmp	r9, #0
	beq	.L758
	bl	__ctype_tolower_loc(PLT)
	subs	r2, r4, #1
	ldr	r5, [r0]
	add	r4, r9, #-1
	b	.L759
.L760:
	cbz	r3, .L754
.L759:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	ldrb	r6, [r4, #1]!	@ zero_extendqisi2
	ldr	r7, [r5, r3, lsl #2]
	ldr	r6, [r5, r6, lsl #2]
	cmp	r7, r6
	beq	.L760
	subs	r6, r7, r6
.L757:
	cbz	r6, .L754
.L758:
	ldr	r8, [r8]
	cmp	r8, #0
	bne	.L755
.L754:
	mov	r0, r8
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L774:
	adds	r6, r9, #0
	it	ne
	movne	r6, #1
	b	.L757
	.size	cJSON_GetObjectItem, .-cJSON_GetObjectItem
	.section	.text.cJSON_AddItemToArray,"ax",%progbits
	.align	2
	.global	cJSON_AddItemToArray
	.thumb
	.thumb_func
	.type	cJSON_AddItemToArray, %function
cJSON_AddItemToArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #8]
	cbz	r1, .L775
	cbnz	r2, .L779
	b	.L785
.L784:
	mov	r2, r3
.L779:
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L784
	str	r1, [r2]
	str	r2, [r1, #4]
.L775:
	bx	lr
.L785:
	str	r1, [r0, #8]
	bx	lr
	.size	cJSON_AddItemToArray, .-cJSON_AddItemToArray
	.section	.text.cJSON_AddItemToObject,"ax",%progbits
	.align	2
	.global	cJSON_AddItemToObject
	.thumb
	.thumb_func
	.type	cJSON_AddItemToObject, %function
cJSON_AddItemToObject:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r2
	cbz	r2, .L786
	mov	r7, r0
	ldr	r0, [r2, #32]
	mov	r5, r1
	cbz	r0, .L788
	ldr	r2, .L797
.LPIC126:
	add	r2, pc
	ldr	r3, [r2]
	blx	r3
.L788:
	mov	r0, r5
	bl	strlen(PLT)
	ldr	r3, .L797+4
	adds	r6, r0, #1
	mov	r0, r6
.LPIC127:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r8, r0
	cbz	r0, .L789
	mov	r1, r5
	mov	r2, r6
	bl	memcpy(PLT)
.L789:
	str	r8, [r4, #32]
	mov	r0, r7
	mov	r1, r4
	pop	{r4, r5, r6, r7, r8, lr}
	b	cJSON_AddItemToArray(PLT)
.L786:
	pop	{r4, r5, r6, r7, r8, pc}
.L798:
	.align	2
.L797:
	.word	.LANCHOR3-(.LPIC126+4)
	.word	.LANCHOR0-(.LPIC127+4)
	.size	cJSON_AddItemToObject, .-cJSON_AddItemToObject
	.section	.text.cJSON_AddItemReferenceToArray,"ax",%progbits
	.align	2
	.global	cJSON_AddItemReferenceToArray
	.thumb
	.thumb_func
	.type	cJSON_AddItemReferenceToArray, %function
cJSON_AddItemReferenceToArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L807
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	movs	r0, #40
	mov	r6, r1
.LPIC128:
	add	r2, pc
	ldr	r2, [r2]
	blx	r2
	mov	r4, r0
	cbz	r0, .L800
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	mov	r3, r6
	mov	r2, r4
	add	r1, r6, #32
.L801:
	ldr	lr, [r3]	@ unaligned
	adds	r3, r3, #16
	ldr	r7, [r3, #-12]	@ unaligned
	adds	r2, r2, #16
	ldr	r6, [r3, #-8]	@ unaligned
	ldr	r0, [r3, #-4]	@ unaligned
	cmp	r3, r1
	str	lr, [r2, #-16]	@ unaligned
	str	r7, [r2, #-12]	@ unaligned
	str	r6, [r2, #-8]	@ unaligned
	str	r0, [r2, #-4]	@ unaligned
	bne	.L801
	ldr	r0, [r3]	@ unaligned
	movs	r1, #0
	ldr	r3, [r3, #4]	@ unaligned
	str	r0, [r2]	@ unaligned
	str	r3, [r2, #4]	@ unaligned
	ldr	r3, [r4, #12]
	str	r1, [r4, #32]
	str	r1, [r4, #4]
	orr	r3, r3, #256
	str	r1, [r4]
	str	r3, [r4, #12]
.L800:
	mov	r0, r5
	mov	r1, r4
	pop	{r3, r4, r5, r6, r7, lr}
	b	cJSON_AddItemToArray(PLT)
.L808:
	.align	2
.L807:
	.word	.LANCHOR0-(.LPIC128+4)
	.size	cJSON_AddItemReferenceToArray, .-cJSON_AddItemReferenceToArray
	.section	.text.cJSON_AddItemReferenceToObject,"ax",%progbits
	.align	2
	.global	cJSON_AddItemReferenceToObject
	.thumb
	.thumb_func
	.type	cJSON_AddItemReferenceToObject, %function
cJSON_AddItemReferenceToObject:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	ldr	r4, .L817
	movs	r0, #40
	mov	r6, r1
	mov	r8, r2
.LPIC129:
	add	r4, pc
	ldr	r1, [r4]
	blx	r1
	mov	r5, r0
	cbz	r0, .L810
	movs	r2, #40
	movs	r1, #0
	bl	memset(PLT)
	mov	r4, r5
	mov	r3, r8
	add	r2, r8, #32
.L811:
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
	bne	.L811
	ldr	r1, [r3]	@ unaligned
	movs	r2, #0
	ldr	r3, [r3, #4]	@ unaligned
	str	r1, [r4]	@ unaligned
	str	r3, [r4, #4]	@ unaligned
	ldr	r3, [r5, #12]
	str	r2, [r5, #32]
	str	r2, [r5, #4]
	orr	r3, r3, #256
	str	r2, [r5]
	str	r3, [r5, #12]
.L810:
	mov	r0, r7
	mov	r1, r6
	mov	r2, r5
	pop	{r4, r5, r6, r7, r8, lr}
	b	cJSON_AddItemToObject(PLT)
.L818:
	.align	2
.L817:
	.word	.LANCHOR0-(.LPIC129+4)
	.size	cJSON_AddItemReferenceToObject, .-cJSON_AddItemReferenceToObject
	.section	.text.cJSON_DetachItemFromArray,"ax",%progbits
	.align	2
	.global	cJSON_DetachItemFromArray
	.thumb
	.thumb_func
	.type	cJSON_DetachItemFromArray, %function
cJSON_DetachItemFromArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #8]
	cmp	r2, #0
	it	ne
	cmpne	r1, #0
	mov	r3, r2
	ble	.L820
.L821:
	ldr	r3, [r3]
	subs	r1, r1, #1
	cmp	r3, #0
	it	ne
	cmpne	r1, #0
	bgt	.L821
.L820:
	cbz	r3, .L839
	ldr	r1, [r3, #4]
	push	{r4}
	cbz	r1, .L823
	ldr	r4, [r3]
	str	r4, [r1]
.L823:
	ldr	r4, [r3]
	cbz	r4, .L824
	str	r1, [r4, #4]
.L824:
	cmp	r3, r2
	mov	r2, #0
	it	eq
	streq	r4, [r0, #8]
	mov	r0, r3
	str	r2, [r3]
	str	r2, [r3, #4]
	ldr	r4, [sp], #4
	bx	lr
.L839:
	mov	r0, r3
	bx	lr
	.size	cJSON_DetachItemFromArray, .-cJSON_DetachItemFromArray
	.section	.text.cJSON_DeleteItemFromArray,"ax",%progbits
	.align	2
	.global	cJSON_DeleteItemFromArray
	.thumb
	.thumb_func
	.type	cJSON_DeleteItemFromArray, %function
cJSON_DeleteItemFromArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	cJSON_DetachItemFromArray(PLT)
	pop	{r3, lr}
	b	cJSON_Delete(PLT)
	.size	cJSON_DeleteItemFromArray, .-cJSON_DeleteItemFromArray
	.section	.text.cJSON_DetachItemFromObject,"ax",%progbits
	.align	2
	.global	cJSON_DetachItemFromObject
	.thumb
	.thumb_func
	.type	cJSON_DetachItemFromObject, %function
cJSON_DetachItemFromObject:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	ldr	r9, [r0, #8]
	cmp	r9, #0
	beq	.L857
	mov	fp, r1
	mov	r10, #0
.L844:
	ldr	r4, [r9, #32]
	cbz	r4, .L863
	cmp	fp, #0
	beq	.L847
	bl	__ctype_tolower_loc(PLT)
	subs	r2, r4, #1
	ldr	r5, [r0]
	add	r4, fp, #-1
	b	.L848
.L850:
	cbz	r3, .L849
.L848:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	ldrb	r6, [r4, #1]!	@ zero_extendqisi2
	ldr	r7, [r5, r3, lsl #2]
	ldr	r6, [r5, r6, lsl #2]
	cmp	r7, r6
	beq	.L850
	subs	r6, r7, r6
.L846:
	cbz	r6, .L849
.L847:
	ldr	r9, [r9]
	add	r10, r10, #1
	cmp	r9, #0
	bne	.L844
.L857:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L849:
	mov	r0, r8
	mov	r1, r10
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	cJSON_DetachItemFromArray(PLT)
.L863:
	adds	r6, fp, #0
	it	ne
	movne	r6, #1
	b	.L846
	.size	cJSON_DetachItemFromObject, .-cJSON_DetachItemFromObject
	.section	.text.cJSON_DeleteItemFromObject,"ax",%progbits
	.align	2
	.global	cJSON_DeleteItemFromObject
	.thumb
	.thumb_func
	.type	cJSON_DeleteItemFromObject, %function
cJSON_DeleteItemFromObject:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	cJSON_DetachItemFromObject(PLT)
	pop	{r3, lr}
	b	cJSON_Delete(PLT)
	.size	cJSON_DeleteItemFromObject, .-cJSON_DeleteItemFromObject
	.section	.text.cJSON_ReplaceItemInArray,"ax",%progbits
	.align	2
	.global	cJSON_ReplaceItemInArray
	.thumb
	.thumb_func
	.type	cJSON_ReplaceItemInArray, %function
cJSON_ReplaceItemInArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	ldr	r4, [r0, #8]
	cmp	r4, #0
	it	ne
	cmpne	r1, #0
	mov	r3, r4
	ble	.L867
.L868:
	ldr	r3, [r3]
	subs	r1, r1, #1
	cmp	r3, #0
	it	ne
	cmpne	r1, #0
	bgt	.L868
.L867:
	cbz	r3, .L866
	ldr	r1, [r3]
	vld1.64	{d16}, [r3:64]
	vst1.64	{d16}, [r2:64]
	cbz	r1, .L870
	str	r2, [r1, #4]
.L870:
	cmp	r3, r4
	ldr	r4, [sp], #4
	ite	ne
	ldrne	r1, [r2, #4]
	streq	r2, [r0, #8]
	mov	r0, r3
	it	ne
	strne	r2, [r1]
	movs	r2, #0
	str	r2, [r3, #4]
	str	r2, [r3]
	b	cJSON_Delete(PLT)
.L866:
	ldr	r4, [sp], #4
	bx	lr
	.size	cJSON_ReplaceItemInArray, .-cJSON_ReplaceItemInArray
	.section	.text.cJSON_ReplaceItemInObject,"ax",%progbits
	.align	2
	.global	cJSON_ReplaceItemInObject
	.thumb
	.thumb_func
	.type	cJSON_ReplaceItemInObject, %function
cJSON_ReplaceItemInObject:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r10, [r0, #8]
	mov	r9, r0
	str	r2, [sp, #4]
	cmp	r10, #0
	beq	.L881
	mov	fp, r1
	mov	r8, #0
.L883:
	ldr	r4, [r10, #32]
	cmp	r4, #0
	beq	.L909
	cmp	fp, #0
	beq	.L886
	bl	__ctype_tolower_loc(PLT)
	subs	r4, r4, #1
	ldr	r6, [r0]
	add	r5, fp, #-1
	b	.L887
.L889:
	cbz	r3, .L888
.L887:
	ldrb	r3, [r4, #1]!	@ zero_extendqisi2
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	ldr	r2, [r6, r3, lsl #2]
	ldr	r7, [r6, r0, lsl #2]
	cmp	r2, r7
	beq	.L889
	subs	r2, r2, r7
.L885:
	cbz	r2, .L888
.L886:
	ldr	r10, [r10]
	add	r8, r8, #1
	cmp	r10, #0
	bne	.L883
.L881:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L888:
	mov	r0, fp
	bl	strlen(PLT)
	ldr	r3, .L910
	adds	r4, r0, #1
	mov	r0, r4
.LPIC130:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r5, r0
	cbz	r0, .L890
	mov	r1, fp
	mov	r2, r4
	bl	memcpy(PLT)
.L890:
	ldr	r3, [sp, #4]
	mov	r0, r9
	mov	r1, r8
	str	r5, [r3, #32]
	mov	r2, r3
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	cJSON_ReplaceItemInArray(PLT)
.L909:
	adds	r2, fp, #0
	it	ne
	movne	r2, #1
	b	.L885
.L911:
	.align	2
.L910:
	.word	.LANCHOR0-(.LPIC130+4)
	.size	cJSON_ReplaceItemInObject, .-cJSON_ReplaceItemInObject
	.section	.text.cJSON_CreateNull,"ax",%progbits
	.align	2
	.global	cJSON_CreateNull
	.thumb
	.thumb_func
	.type	cJSON_CreateNull, %function
cJSON_CreateNull:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L918
	movs	r0, #40
	push	{r4, lr}
.LPIC131:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r4, r0
	cbz	r0, .L913
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	movs	r3, #2
	str	r3, [r4, #12]
.L913:
	mov	r0, r4
	pop	{r4, pc}
.L919:
	.align	2
.L918:
	.word	.LANCHOR0-(.LPIC131+4)
	.size	cJSON_CreateNull, .-cJSON_CreateNull
	.section	.text.cJSON_CreateTrue,"ax",%progbits
	.align	2
	.global	cJSON_CreateTrue
	.thumb
	.thumb_func
	.type	cJSON_CreateTrue, %function
cJSON_CreateTrue:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L926
	movs	r0, #40
	push	{r4, lr}
.LPIC132:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r4, r0
	cbz	r0, .L921
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	movs	r3, #1
	str	r3, [r4, #12]
.L921:
	mov	r0, r4
	pop	{r4, pc}
.L927:
	.align	2
.L926:
	.word	.LANCHOR0-(.LPIC132+4)
	.size	cJSON_CreateTrue, .-cJSON_CreateTrue
	.section	.text.cJSON_CreateFalse,"ax",%progbits
	.align	2
	.global	cJSON_CreateFalse
	.thumb
	.thumb_func
	.type	cJSON_CreateFalse, %function
cJSON_CreateFalse:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L934
	movs	r0, #40
	push	{r4, lr}
.LPIC133:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r4, r0
	cbz	r0, .L929
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	movs	r3, #0
	str	r3, [r4, #12]
.L929:
	mov	r0, r4
	pop	{r4, pc}
.L935:
	.align	2
.L934:
	.word	.LANCHOR0-(.LPIC133+4)
	.size	cJSON_CreateFalse, .-cJSON_CreateFalse
	.section	.text.cJSON_CreateBool,"ax",%progbits
	.align	2
	.global	cJSON_CreateBool
	.thumb
	.thumb_func
	.type	cJSON_CreateBool, %function
cJSON_CreateBool:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	ldr	r3, .L942
	movs	r0, #40
.LPIC134:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r4, r0
	cbz	r0, .L937
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	adds	r5, r5, #0
	it	ne
	movne	r5, #1
	str	r5, [r4, #12]
.L937:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L943:
	.align	2
.L942:
	.word	.LANCHOR0-(.LPIC134+4)
	.size	cJSON_CreateBool, .-cJSON_CreateBool
	.section	.text.cJSON_CreateNumber,"ax",%progbits
	.align	2
	.global	cJSON_CreateNumber
	.thumb
	.thumb_func
	.type	cJSON_CreateNumber, %function
cJSON_CreateNumber:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L950
	movs	r0, #40
	push	{r4, lr}
	fstmfdd	sp!, {d8}
.LPIC135:
	add	r3, pc
	ldr	r3, [r3]
	fcpyd	d8, d0
	blx	r3
	mov	r4, r0
	cbz	r0, .L945
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	ftosizd	s15, d8
	movs	r3, #3
	fstd	d8, [r4, #24]
	str	r3, [r4, #12]
	fsts	s15, [r4, #20]	@ int
.L945:
	fldmfdd	sp!, {d8}
	mov	r0, r4
	pop	{r4, pc}
.L951:
	.align	2
.L950:
	.word	.LANCHOR0-(.LPIC135+4)
	.size	cJSON_CreateNumber, .-cJSON_CreateNumber
	.section	.text.cJSON_CreateString,"ax",%progbits
	.align	2
	.global	cJSON_CreateString
	.thumb
	.thumb_func
	.type	cJSON_CreateString, %function
cJSON_CreateString:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	ldr	r5, .L962
	movs	r0, #40
.LPIC136:
	add	r5, pc
	ldr	r3, [r5]
	blx	r3
	mov	r4, r0
	cbz	r0, .L953
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	movs	r3, #4
	mov	r0, r6
	str	r3, [r4, #12]
	bl	strlen(PLT)
	adds	r7, r0, #1
	ldr	r3, [r5]
	mov	r0, r7
	blx	r3
	mov	r5, r0
	cbz	r0, .L954
	mov	r1, r6
	mov	r2, r7
	bl	memcpy(PLT)
.L954:
	str	r5, [r4, #16]
.L953:
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, pc}
.L963:
	.align	2
.L962:
	.word	.LANCHOR0-(.LPIC136+4)
	.size	cJSON_CreateString, .-cJSON_CreateString
	.section	.text.cJSON_CreateArray,"ax",%progbits
	.align	2
	.global	cJSON_CreateArray
	.thumb
	.thumb_func
	.type	cJSON_CreateArray, %function
cJSON_CreateArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L970
	movs	r0, #40
	push	{r4, lr}
.LPIC138:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r4, r0
	cbz	r0, .L965
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	movs	r3, #5
	str	r3, [r4, #12]
.L965:
	mov	r0, r4
	pop	{r4, pc}
.L971:
	.align	2
.L970:
	.word	.LANCHOR0-(.LPIC138+4)
	.size	cJSON_CreateArray, .-cJSON_CreateArray
	.section	.text.cJSON_CreateObject,"ax",%progbits
	.align	2
	.global	cJSON_CreateObject
	.thumb
	.thumb_func
	.type	cJSON_CreateObject, %function
cJSON_CreateObject:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L978
	movs	r0, #40
	push	{r4, lr}
.LPIC139:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r4, r0
	cbz	r0, .L973
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	movs	r3, #6
	str	r3, [r4, #12]
.L973:
	mov	r0, r4
	pop	{r4, pc}
.L979:
	.align	2
.L978:
	.word	.LANCHOR0-(.LPIC139+4)
	.size	cJSON_CreateObject, .-cJSON_CreateObject
	.section	.text.cJSON_CreateIntArray,"ax",%progbits
	.align	2
	.global	cJSON_CreateIntArray
	.thumb
	.thumb_func
	.type	cJSON_CreateIntArray, %function
cJSON_CreateIntArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r1
	mov	r6, r0
	bl	cJSON_CreateArray(PLT)
	cmp	r0, #0
	it	ne
	cmpne	r7, #0
	mov	r8, r0
	ble	.L986
	movs	r5, #0
	subs	r6, r6, #4
	mov	r4, r5
	b	.L985
.L988:
	adds	r4, r4, #1
	str	r0, [r8, #8]
	cmp	r7, r4
	mov	r5, r0
	ble	.L986
.L985:
	ldr	r3, [r6, #4]!
	fmsr	s0, r3	@ int
	fsitod	d0, s0
	bl	cJSON_CreateNumber(PLT)
	cmp	r4, #0
	beq	.L988
	adds	r4, r4, #1
	str	r0, [r5]
	cmp	r7, r4
	str	r5, [r0, #4]
	mov	r5, r0
	bgt	.L985
.L986:
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, pc}
	.size	cJSON_CreateIntArray, .-cJSON_CreateIntArray
	.section	.text.cJSON_CreateFloatArray,"ax",%progbits
	.align	2
	.global	cJSON_CreateFloatArray
	.thumb
	.thumb_func
	.type	cJSON_CreateFloatArray, %function
cJSON_CreateFloatArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r1
	mov	r6, r0
	bl	cJSON_CreateArray(PLT)
	cmp	r0, #0
	it	ne
	cmpne	r7, #0
	mov	r8, r0
	ble	.L995
	movs	r5, #0
	mov	r4, r5
	b	.L994
.L997:
	adds	r4, r4, #1
	str	r0, [r8, #8]
	cmp	r7, r4
	mov	r5, r0
	ble	.L995
.L994:
	fldmias	r6!, {s0}
	fcvtds	d0, s0
	bl	cJSON_CreateNumber(PLT)
	cmp	r4, #0
	beq	.L997
	adds	r4, r4, #1
	str	r0, [r5]
	cmp	r7, r4
	str	r5, [r0, #4]
	mov	r5, r0
	bgt	.L994
.L995:
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, pc}
	.size	cJSON_CreateFloatArray, .-cJSON_CreateFloatArray
	.section	.text.cJSON_CreateDoubleArray,"ax",%progbits
	.align	2
	.global	cJSON_CreateDoubleArray
	.thumb
	.thumb_func
	.type	cJSON_CreateDoubleArray, %function
cJSON_CreateDoubleArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r1
	mov	r5, r0
	bl	cJSON_CreateArray(PLT)
	cmp	r0, #0
	it	ne
	cmpne	r7, #0
	mov	r8, r0
	ble	.L1004
	movs	r6, #0
	adds	r5, r5, #64
	mov	r4, r6
	b	.L1003
.L1006:
	adds	r4, r4, #1
	str	r0, [r8, #8]
	cmp	r7, r4
	add	r5, r5, #8
	mov	r6, r0
	ble	.L1004
.L1003:
	fldd	d0, [r5, #-64]
	pld	[r5]
	bl	cJSON_CreateNumber(PLT)
	cmp	r4, #0
	beq	.L1006
	adds	r4, r4, #1
	str	r0, [r6]
	cmp	r7, r4
	str	r6, [r0, #4]
	add	r5, r5, #8
	mov	r6, r0
	bgt	.L1003
.L1004:
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, pc}
	.size	cJSON_CreateDoubleArray, .-cJSON_CreateDoubleArray
	.section	.text.cJSON_CreateStringArray,"ax",%progbits
	.align	2
	.global	cJSON_CreateStringArray
	.thumb
	.thumb_func
	.type	cJSON_CreateStringArray, %function
cJSON_CreateStringArray:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r1
	mov	r6, r0
	bl	cJSON_CreateArray(PLT)
	cmp	r0, #0
	it	ne
	cmpne	r7, #0
	mov	r8, r0
	ble	.L1013
	movs	r5, #0
	subs	r6, r6, #4
	mov	r4, r5
	b	.L1012
.L1015:
	adds	r4, r4, #1
	str	r0, [r8, #8]
	cmp	r7, r4
	mov	r5, r0
	ble	.L1013
.L1012:
	ldr	r0, [r6, #4]!
	bl	cJSON_CreateString(PLT)
	cmp	r4, #0
	beq	.L1015
	adds	r4, r4, #1
	str	r0, [r5]
	cmp	r7, r4
	str	r5, [r0, #4]
	mov	r5, r0
	bgt	.L1012
.L1013:
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, pc}
	.size	cJSON_CreateStringArray, .-cJSON_CreateStringArray
	.section	.text.cJSON_Duplicate,"ax",%progbits
	.align	2
	.global	cJSON_Duplicate
	.thumb
	.thumb_func
	.type	cJSON_Duplicate, %function
cJSON_Duplicate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	cmp	r0, #0
	beq	.L1019
	ldr	r4, .L1044
	movs	r0, #40
	mov	r8, r1
.LPIC156:
	add	r4, pc
	ldr	r3, [r4]
	blx	r3
	mov	r7, r0
	cmp	r0, #0
	beq	.L1019
	movs	r2, #40
	movs	r1, #0
	bl	memset(PLT)
	ldr	r0, [r5, #12]
	ldr	r9, [r5, #16]
	ldr	r6, [r5, #20]
	ldrd	r2, [r5, #24]
	bic	r1, r0, #256
	str	r1, [r7, #12]
	str	r6, [r7, #20]
	strd	r2, [r7, #24]
	cmp	r9, #0
	beq	.L1020
	mov	r0, r9
	bl	strlen(PLT)
	adds	r6, r0, #1
	ldr	r3, [r4]
	mov	r0, r6
	blx	r3
	mov	r4, r0
	cmp	r0, #0
	beq	.L1021
	mov	r1, r9
	mov	r2, r6
	bl	memcpy(PLT)
	str	r4, [r7, #16]
.L1020:
	ldr	r6, [r5, #32]
	cbz	r6, .L1022
	mov	r0, r6
	bl	strlen(PLT)
	ldr	r3, .L1044+4
	add	r9, r0, #1
	mov	r0, r9
.LPIC158:
	add	r3, pc
	ldr	r3, [r3]
	blx	r3
	mov	r4, r0
	cbz	r0, .L1023
	mov	r1, r6
	mov	r2, r9
	bl	memcpy(PLT)
	str	r4, [r7, #32]
.L1022:
	cmp	r8, #0
	beq	.L1030
	ldr	r5, [r5, #8]
	cbz	r5, .L1030
	movs	r6, #0
	b	.L1027
.L1043:
	str	r0, [r6]
	ldr	r5, [r5]
	str	r6, [r0, #4]
	mov	r6, r4
	cbz	r5, .L1030
.L1027:
	mov	r0, r5
	movs	r1, #1
	bl	cJSON_Duplicate(PLT)
	mov	r4, r0
	cbz	r0, .L1042
	cmp	r6, #0
	bne	.L1043
	ldr	r5, [r5]
	mov	r6, r4
	str	r0, [r7, #8]
	cmp	r5, #0
	bne	.L1027
.L1030:
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L1023:
	str	r0, [r7, #32]
.L1042:
	mov	r0, r7
	bl	cJSON_Delete(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L1019:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L1021:
	str	r0, [r7, #16]
	mov	r0, r7
	bl	cJSON_Delete(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L1045:
	.align	2
.L1044:
	.word	.LANCHOR0-(.LPIC156+4)
	.word	.LANCHOR0-(.LPIC158+4)
	.size	cJSON_Duplicate, .-cJSON_Duplicate
	.section	.text.cJSON_Minify,"ax",%progbits
	.align	2
	.global	cJSON_Minify
	.thumb
	.thumb_func
	.type	cJSON_Minify, %function
cJSON_Minify:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	mov	r1, r0
	ldrb	r3, [r0]	@ zero_extendqisi2
.L1047:
	cbz	r3, .L1076
.L1064:
	cmp	r3, #32
	beq	.L1073
	cmp	r3, #9
	beq	.L1073
	cmp	r3, #13
	beq	.L1073
	cmp	r3, #10
	beq	.L1073
	cmp	r3, #47
	beq	.L1077
	cmp	r3, #34
	beq	.L1078
.L1056:
	strb	r3, [r1]
	adds	r1, r1, #1
.L1073:
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	adds	r0, r0, #1
	cmp	r3, #0
	bne	.L1064
.L1076:
	strb	r3, [r1]
	ldr	r4, [sp], #4
	bx	lr
.L1077:
	ldrb	r2, [r0, #1]	@ zero_extendqisi2
	cmp	r2, #47
	beq	.L1055
	cmp	r2, #42
	bne	.L1056
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	adds	r2, r0, #1
	cbz	r3, .L1060
.L1058:
	cmp	r3, #42
	beq	.L1079
	mov	r0, r2
.L1080:
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	adds	r2, r0, #1
	cmp	r3, #0
	bne	.L1058
.L1060:
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	adds	r0, r2, #2
	b	.L1047
.L1055:
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #10
	it	ne
	cmpne	r3, #0
	beq	.L1047
	ldrb	r3, [r0, #1]!	@ zero_extendqisi2
	cmp	r3, #10
	it	ne
	cmpne	r3, #0
	bne	.L1055
	b	.L1047
.L1079:
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L1060
	mov	r0, r2
	b	.L1080
.L1078:
	strb	r3, [r1]
	adds	r2, r0, #1
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	adds	r1, r1, #1
	cmp	r3, #0
	it	ne
	cmpne	r3, #34
	beq	.L1065
.L1063:
	cmp	r3, #92
	itttt	eq
	strbeq	r3, [r1]
	addeq	r1, r1, #1
	ldrbeq	r3, [r2, #1]	@ zero_extendqisi2
	addeq	r2, r2, #1
	adds	r4, r1, #1
	adds	r0, r2, #1
	strb	r3, [r1]
	mov	r1, r4
	ldrb	r3, [r2, #1]	@ zero_extendqisi2
	mov	r2, r0
	cmp	r3, #34
	it	ne
	cmpne	r3, #0
	bne	.L1063
.L1061:
	strb	r3, [r4]
	adds	r1, r4, #1
	ldrb	r3, [r0, #1]	@ zero_extendqisi2
	adds	r0, r0, #1
	b	.L1047
.L1065:
	mov	r4, r1
	mov	r0, r2
	b	.L1061
	.size	cJSON_Minify, .-cJSON_Minify
	.section	.data.rel.cJSON_malloc,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	cJSON_malloc, %object
	.size	cJSON_malloc, 4
cJSON_malloc:
	.word	malloc
	.section	.rodata.firstByteMark,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	firstByteMark, %object
	.size	firstByteMark, 7
firstByteMark:
	.byte	0
	.byte	0
	.byte	-64
	.byte	-32
	.byte	-16
	.byte	-8
	.byte	-4
	.section	.data.rel.cJSON_free,"aw",%progbits
	.align	2
.LANCHOR3 = . + 0
	.type	cJSON_free, %object
	.size	cJSON_free, 4
cJSON_free:
	.word	free
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%d\000"
	.space	1
.LC1:
	.ascii	"%.0f\000"
	.space	3
.LC2:
	.ascii	"%e\000"
	.space	1
.LC3:
	.ascii	"%f\000"
	.space	1
.LC4:
	.ascii	"\"\\\010\014\012\015\011\000"
.LC5:
	.ascii	"u%04x\000"
	.space	2
.LC6:
	.ascii	"[]\000"
	.space	1
.LC7:
	.ascii	"null\000"
	.space	3
.LC8:
	.ascii	"false\000"
	.space	2
.LC9:
	.ascii	"true\000"
	.section	.bss.ep,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	ep, %object
	.size	ep, 4
ep:
	.space	4
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
