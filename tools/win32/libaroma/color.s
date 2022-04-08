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
	.file	"color.c"
	.section	.text.libaroma_rgb_from_string,"ax",%progbits
	.align	2
	.global	libaroma_rgb_from_string
	.thumb
	.thumb_func
	.type	libaroma_rgb_from_string, %function
libaroma_rgb_from_string:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	sp, sp, #16
	cmp	r3, #35
	beq	.L2
.L6:
	movs	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L2:
	movs	r3, #0
	movs	r1, #48
	movs	r2, #120
	str	r3, [sp]
	str	r3, [sp, #4]
	strb	r3, [sp, #8]
	strb	r1, [sp]
	strb	r2, [sp, #1]
	bl	strlen(PLT)
	cmp	r0, #7
	beq	.L9
	cmp	r0, #4
	bne	.L6
	ldrb	r1, [r4, #1]	@ zero_extendqisi2
	ldrb	r2, [r4, #2]	@ zero_extendqisi2
	ldrb	r3, [r4, #3]	@ zero_extendqisi2
	strb	r1, [sp, #2]
	strb	r1, [sp, #3]
	strb	r2, [sp, #4]
	strb	r2, [sp, #5]
	strb	r3, [sp, #6]
	strb	r3, [sp, #7]
.L5:
	movs	r3, #0
	mov	r0, sp
	mov	r1, r3
	mov	r2, r3
	strb	r3, [sp, #8]
	bl	strtoul(PLT)
	ubfx	r3, r0, #10, #6
	ubfx	r2, r0, #19, #5
	lsls	r3, r3, #5
	ubfx	r0, r0, #3, #5
	orr	r3, r3, r2, lsl #11
	orrs	r0, r0, r3
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L9:
	ldr	r2, [r4, #1]!	@ unaligned
	ldrh	r3, [r4, #4]	@ unaligned
	str	r2, [sp, #2]	@ unaligned
	strh	r3, [sp, #6]	@ unaligned
	b	.L5
	.size	libaroma_rgb_from_string, .-libaroma_rgb_from_string
	.section	.text.libaroma_color_luminance,"ax",%progbits
	.align	2
	.global	libaroma_color_luminance
	.thumb
	.thumb_func
	.type	libaroma_color_luminance, %function
libaroma_color_luminance:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	and	r1, r0, #2016
	movw	r2, #602
	asrs	r1, r1, #3
	push	{r4}
	and	r4, r0, #63488
	lsls	r0, r0, #3
	mul	r1, r2, r1
	asrs	r4, r4, #8
	mov	r3, #306
	uxtb	r2, r0
	movs	r0, #116
	mla	r3, r3, r4, r1
	ldr	r4, [sp], #4
	smlabb	r0, r0, r2, r3
	ubfx	r0, r0, #10, #8
	bx	lr
	.size	libaroma_color_luminance, .-libaroma_color_luminance
	.section	.text.libaroma_color_isdark,"ax",%progbits
	.align	2
	.global	libaroma_color_isdark
	.thumb
	.thumb_func
	.type	libaroma_color_isdark, %function
libaroma_color_isdark:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	libaroma_color_luminance(PLT)
	cmp	r0, #128
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	pop	{r3, pc}
	.size	libaroma_color_isdark, .-libaroma_color_isdark
	.section	.text.libaroma_color_hsv,"ax",%progbits
	.align	2
	.global	libaroma_color_hsv
	.thumb
	.thumb_func
	.type	libaroma_color_hsv, %function
libaroma_color_hsv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	fmsr	s12, r1	@ int
	fsitos	s13, s12
	fldd	d16, .L47
	fmsr	s14, r2	@ int
	fsitos	s15, s14
	fcvtds	d17, s13
	fmsr	s12, r0	@ int
	push	{r3, r4, r5, lr}
	fcvtds	d18, s15
	fmuld	d17, d17, d16
	fstmfdd	sp!, {d8, d9}
	fmuld	d16, d18, d16
	fsitos	s14, s12
	fcvtsd	s15, d17
	fcvtsd	s16, d16
	fcmpezs	s15
	fmstat
	bls	.L46
	flds	s13, .L47+16
	fcmpes	s14, s13
	fmstat
	bge	.L42
	fcvtds	d18, s14
	fldd	d17, .L47+8
	fconstd	d16, #112
	fmuld	d17, d18, d17
	fcvtsd	s14, d17
	ftosizs	s13, s14
	fmrs	r3, s13	@ int
	fsitos	s13, s13
	fsubs	s14, s14, s13
	fcvtds	d19, s14
	fsubd	d19, d19, d16
.L22:
	fcvtds	d18, s15
	fconstd	d17, #112
	fcpyd	d20, d17
	fmuls	s15, s14, s15
	fmacd	d20, d19, d18
	fcvtds	d16, s16
	fsubd	d18, d17, d18
	fmuld	d18, d18, d16
	fcpyd	d19, d20
	fcvtds	d20, s15
	fmuld	d19, d19, d16
	fcvtsd	s18, d18
	fsubd	d17, d17, d20
	fcvtsd	s14, d19
	fmuld	d16, d17, d16
	fcvtsd	s15, d16
	cmp	r3, #4
	bhi	.L23
	tbb	[pc, r3]
.L25:
	.byte	(.L24-.L25)/2
	.byte	(.L26-.L25)/2
	.byte	(.L27-.L25)/2
	.byte	(.L28-.L25)/2
	.byte	(.L29-.L25)/2
	.align	1
.L42:
	flds	s14, .L47+20
	movs	r3, #0
	fconstd	d19, #240
	b	.L22
.L23:
	fmrs	r3, s15
	fcpys	s15, s16
	fcpys	s16, s18
	fmsr	s18, r3
.L26:
	flds	s17, .L47+24
	fmuls	s17, s15, s17
	fcpys	s0, s17
	bl	lroundf(PLT)
	cmp	r0, #0
	ble	.L33
	fcpys	s0, s17
	bl	lroundf(PLT)
	cmp	r0, #254
	it	gt
	movgt	r4, #63488
	bgt	.L32
.L33:
	fcpys	s0, s17
	bl	lroundf(PLT)
	cmp	r0, #0
	it	le
	movle	r4, #0
	ble	.L32
	fcpys	s0, s17
	bl	lroundf(PLT)
	ubfx	r0, r0, #3, #5
	lsls	r4, r0, #11
.L32:
	flds	s15, .L47+24
	fmuls	s16, s16, s15
	fcpys	s0, s16
	bl	lroundf(PLT)
	cmp	r0, #0
	ble	.L37
	fcpys	s0, s16
	bl	lroundf(PLT)
	cmp	r0, #254
	it	gt
	movgt	r5, #2016
	bgt	.L36
.L37:
	fcpys	s0, s16
	bl	lroundf(PLT)
	cmp	r0, #0
	it	le
	movle	r5, #0
	ble	.L36
	fcpys	s0, s16
	bl	lroundf(PLT)
	ubfx	r0, r0, #2, #6
	lsls	r5, r0, #5
.L36:
	flds	s16, .L47+24
	fmuls	s16, s18, s16
	fcpys	s0, s16
	bl	lroundf(PLT)
	cmp	r0, #0
	ble	.L41
	fcpys	s0, s16
	bl	lroundf(PLT)
	cmp	r0, #254
	it	gt
	movgt	r0, #31
	bgt	.L40
.L41:
	fcpys	s0, s16
	bl	lroundf(PLT)
	cmp	r0, #0
	it	le
	movle	r0, #0
	ble	.L40
	fcpys	s0, s16
	bl	lroundf(PLT)
	ubfx	r0, r0, #3, #5
.L40:
	orrs	r4, r4, r5
	orrs	r0, r0, r4
.L21:
	fldmfdd	sp!, {d8-d9}
	pop	{r3, r4, r5, pc}
.L29:
	fmrs	r3, s16
	fcpys	s15, s14
	fcpys	s16, s18
	fmsr	s18, r3
	b	.L26
.L28:
	fmrs	r3, s15
	fcpys	s15, s18
	fcpys	s18, s16
	fmsr	s16, r3
	b	.L26
.L27:
	fcpys	s15, s18
	fcpys	s18, s14
	b	.L26
.L24:
	fcpys	s15, s16
	fcpys	s16, s14
	b	.L26
.L46:
	flds	s15, .L47+24
	fmuls	s16, s16, s15
	fcpys	s0, s16
	bl	lroundf(PLT)
	cmp	r0, #0
	ble	.L20
	fcpys	s0, s16
	bl	lroundf(PLT)
	cmp	r0, #254
	it	gt
	movwgt	r0, #65535
	bgt	.L21
.L20:
	fcpys	s0, s16
	bl	lroundf(PLT)
	cmp	r0, #0
	it	le
	movle	r0, #0
	ble	.L21
	fcpys	s0, s16
	bl	lroundf(PLT)
	uxtb	r0, r0
	lsrs	r2, r0, #2
	lsrs	r3, r0, #3
	lsls	r0, r2, #5
	orr	r0, r0, r3, lsl #11
	orrs	r0, r0, r3
	b	.L21
.L48:
	.align	3
.L47:
	.word	1202590843
	.word	1065646817
	.word	286331153
	.word	1066471697
	.word	1135869952
	.word	0
	.word	1132396544
	.size	libaroma_color_hsv, .-libaroma_color_hsv
	.section	.text.libaroma_color_hue,"ax",%progbits
	.align	2
	.global	libaroma_color_hue
	.thumb
	.thumb_func
	.type	libaroma_color_hue, %function
libaroma_color_hue:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	and	r4, r0, #63488
	and	r3, r0, #2016
	lsrs	r4, r4, #8
	lsrs	r3, r3, #3
	lsls	r0, r0, #3
	fstmfdd	sp!, {d8}
	fmsr	s12, r4	@ int
	uxtb	r0, r0
	fmsr	s16, r3	@ int
	mov	r4, r1
	flds	s15, .L82
	mov	r5, r2
	fuitos	s12, s12
	fuitos	s16, s16
	fmsr	s14, r0	@ int
	fuitos	s13, s14
	fmuls	s16, s16, s15
	fmuls	s14, s12, s15
	fmuls	s13, s13, s15
	fcmpes	s14, s16
	fmstat
	bmi	.L81
	fcmpes	s16, s13
	fmstat
	bpl	.L79
	fcpys	s12, s16
	fcpys	s15, s16
	b	.L52
.L81:
	fcmpes	s14, s13
	fmstat
	itt	mi
	fcpysmi	s12, s14
	fcpysmi	s15, s14
	bmi	.L52
.L79:
	fcpys	s12, s13
	fcpys	s15, s13
.L52:
	fcmps	s15, s14
	fmstat
	bne	.L54
	fsubs	s16, s16, s13
	fsubs	s0, s15, s12
	fdivs	s16, s16, s0
.L55:
	flds	s11, .L82+4
	fmuls	s16, s16, s11
	fcmpezs	s16
	fmstat
	fcmps	s12, s15
	itt	mi
	fldsmi	s14, .L82+8
	faddsmi	s16, s16, s14
	fmstat
	ite	ne
	fdivsne	s17, s0, s15
	fldseq	s17, .L82+12
	cbz	r5, .L60
	flds	s0, .L82+16
	fmuls	s0, s15, s0
	bl	lroundf(PLT)
	str	r0, [r5]
.L60:
	cbz	r4, .L61
	flds	s0, .L82+16
	fmuls	s0, s17, s0
	bl	lroundf(PLT)
	str	r0, [r4]
.L61:
	fcpys	s0, s16
	fldmfdd	sp!, {d8}
	pop	{r3, r4, r5, lr}
	b	lroundf(PLT)
.L54:
	fcmps	s15, s16
	fmstat
	ittee	eq
	fsubseq	s16, s13, s14
	fsubseq	s0, s15, s12
	fsubsne	s16, s14, s16
	fsubsne	s0, s15, s12
	ite	eq
	fconstseq	s11, #0
	fconstsne	s11, #16
	fdivs	s16, s16, s0
	fadds	s16, s16, s11
	b	.L55
.L83:
	.align	2
.L82:
	.word	998277249
	.word	1114636288
	.word	1135869952
	.word	0
	.word	1120403456
	.size	libaroma_color_hue, .-libaroma_color_hue
	.section	.text.libaroma_rgb_to32,"ax",%progbits
	.align	2
	.global	libaroma_rgb_to32
	.thumb
	.thumb_func
	.type	libaroma_rgb_to32, %function
libaroma_rgb_to32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r3, r0, #3
	and	r2, r0, #63488
	and	r0, r0, #2016
	uxtb	r3, r3
	orr	r3, r3, #-16777216
	orr	r3, r3, r2, lsl #8
	orr	r0, r3, r0, lsl #5
	bx	lr
	.size	libaroma_rgb_to32, .-libaroma_rgb_to32
	.section	.text.libaroma_rgb_to_rgba,"ax",%progbits
	.align	2
	.global	libaroma_rgb_to_rgba
	.thumb
	.thumb_func
	.type	libaroma_rgb_to_rgba, %function
libaroma_rgb_to_rgba:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsls	r2, r0, #3
	and	r3, r0, #63488
	and	r0, r0, #2016
	uxtb	r2, r2
	orr	r1, r2, r1, lsl #24
	orr	r3, r1, r3, lsl #8
	orr	r0, r3, r0, lsl #5
	bx	lr
	.size	libaroma_rgb_to_rgba, .-libaroma_rgb_to_rgba
	.section	.text.libaroma_color_set32,"ax",%progbits
	.align	2
	.global	libaroma_color_set32
	.thumb
	.thumb_func
	.type	libaroma_color_set32, %function
libaroma_color_set32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	ble	.L111
	sbfx	r3, r0, #2, #1
	push	{r4, r5, r6, r7, lr}
	and	r3, r3, #3
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	cmp	r2, #6
	it	ls
	movls	r3, r2
	bhi	.L112
.L88:
	cmp	r3, #1
	str	r1, [r0]
	it	ls
	movls	r4, #1
	bls	.L90
	cmp	r3, #2
	str	r1, [r0, #4]
	it	ls
	movls	r4, #2
	bls	.L90
	cmp	r3, #3
	str	r1, [r0, #8]
	it	ls
	movls	r4, #3
	bls	.L90
	cmp	r3, #4
	str	r1, [r0, #12]
	it	ls
	movls	r4, #4
	bls	.L90
	cmp	r3, #5
	str	r1, [r0, #16]
	itee	ls
	movls	r4, #5
	movhi	r4, #6
	strhi	r1, [r0, #20]
.L90:
	cmp	r2, r3
	beq	.L113
	subs	r7, r2, r3
	lsrs	r6, r7, #2
	lsl	lr, r6, #2
	cbz	r6, .L92
.L114:
	add	r3, r0, r3, lsl #2
	vdup.32	q8, r1
	movs	r5, #0
.L98:
	adds	r5, r5, #1
	vst1.64	{d16-d17}, [r3:64]!
	cmp	r6, r5
	bhi	.L98
	cmp	r7, lr
	add	r4, r4, lr
	beq	.L86
.L92:
	adds	r3, r4, #1
	str	r1, [r0, r4, lsl #2]
	cmp	r2, r3
	ble	.L86
	adds	r4, r4, #2
	str	r1, [r0, r3, lsl #2]
	cmp	r2, r4
	ble	.L86
	str	r1, [r0, r4, lsl #2]
	pop	{r4, r5, r6, r7, pc}
.L86:
	pop	{r4, r5, r6, r7, pc}
.L113:
	pop	{r4, r5, r6, r7, pc}
.L112:
	cmp	r3, #0
	bne	.L88
	subs	r7, r2, r3
	mov	r4, r3
	lsrs	r6, r7, #2
	lsl	lr, r6, #2
	cmp	r6, #0
	bne	.L114
	b	.L92
.L111:
	bx	lr
	.size	libaroma_color_set32, .-libaroma_color_set32
	.section	.text.libaroma_color_24to16,"ax",%progbits
	.align	2
	.global	libaroma_color_24to16
	.thumb
	.thumb_func
	.type	libaroma_color_24to16, %function
libaroma_color_24to16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r2, r2, r2, lsl #1
	cmp	r2, #0
	ble	.L131
	movw	r3, #43691
	push	{r4, r5, r6, r7, r8, r9, lr}
	movt	r3, 43690
	subs	r5, r2, #1
	umull	r4, r5, r3, r5
	lsrs	r5, r5, #1
	adds	r5, r5, #1
	lsls	r3, r5, #1
	adds	r6, r3, r5
	add	r3, r3, r0
	add	r6, r6, r1
	cmp	r1, r3
	it	cc
	cmpcc	r0, r6
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	cmp	r5, #15
	ite	ls
	movls	r6, #0
	andhi	r6, r6, #1
	cmp	r6, #0
	beq	.L117
	lsrs	r4, r5, #4
	mov	lr, r1
	mov	r3, r0
	lsls	r6, r4, #4
	movs	r7, #0
.L123:
	mov	ip, lr
	adds	r7, r7, #1
	add	r8, r3, #16
	cmp	r4, r7
	vld3.8	{d16, d18, d20}, [ip]!
	add	lr, lr, #48
	pld	[r3, #176]
	vld3.8	{d17, d19, d21}, [ip]
	vshr.u8	q12, q8, #3
	vshr.u8	q11, q9, #2
	vshr.u8	q8, q10, #3
	vmovl.u8 q10, d24
	vmovl.u8 q12, d25
	vmovl.u8 q9, d16
	vshll.u8 q13, d22, #5
	vmovl.u8 q8, d17
	vshll.u8 q11, d23, #5
	vshl.i16	q10, q10, #11
	vshl.i16	q12, q12, #11
	vorr	q9, q9, q13
	vorr	q8, q8, q11
	vorr	q9, q9, q10
	vorr	q8, q8, q12
	vst1.16	{q9}, [r3]
	add	r3, r3, #32
	vst1.16	{q8}, [r8]
	bhi	.L123
	lsls	r3, r6, #1
	cmp	r5, r6
	add	r4, r0, r3
	add	r3, r3, r6
	it	ne
	addne	r0, r1, r3
	beq	.L115
.L121:
	ldrb	r5, [r0, #1]	@ zero_extendqisi2
	adds	r0, r0, #3
	ldrb	r7, [r1, r3]	@ zero_extendqisi2
	adds	r3, r3, #3
	ldrb	r6, [r0, #-1]	@ zero_extendqisi2
	cmp	r2, r3
	lsr	r5, r5, #2
	lsr	r7, r7, #3
	lsl	r5, r5, #5
	orr	r5, r5, r7, lsl #11
	orr	r5, r5, r6, lsr #3
	strh	r5, [r4], #2	@ movhi
	bgt	.L121
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L128:
	movs	r5, #3
.L124:
	adds	r3, r1, r6
.L127:
	ldrb	r4, [r3, #1]	@ zero_extendqisi2
	cmp	r2, r5
	ldrb	lr, [r1, r6]	@ zero_extendqisi2
	add	r3, r3, #3
	ldrb	r7, [r3, #-1]	@ zero_extendqisi2
	mov	r6, r5
	add	r5, r5, #3
	lsr	r4, r4, #2
	lsr	lr, lr, #3
	lsl	r4, r4, #5
	orr	r4, r4, lr, lsl #11
	orr	r4, r4, r7, lsr #3
	strh	r4, [r0], #2	@ movhi
	bgt	.L127
.L115:
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L117:
	cmp	r2, #30
	sub	r8, r2, #27
	ble	.L128
	add	r4, r0, #20
	mov	r3, r1
	add	r9, r1, #32
.L125:
	ldrb	r7, [r1, r6]	@ zero_extendqisi2
	mov	r0, r4
	ldrb	ip, [r3, #1]	@ zero_extendqisi2
	adds	r3, r3, #30
	ldrb	lr, [r3, #-28]	@ zero_extendqisi2
	pld	[r9, r6]
	adds	r6, r6, #30
	lsrs	r7, r7, #3
	pld	[r4]
	lsr	ip, ip, #2
	adds	r5, r6, #3
	lsls	r7, r7, #11
	cmp	r8, r5
	add	r4, r4, #20
	orr	r7, r7, ip, lsl #5
	orr	r7, r7, lr, lsr #3
	strh	r7, [r4, #-40]	@ movhi
	ldrb	r7, [r3, #-26]	@ zero_extendqisi2
	ldrb	ip, [r3, #-27]	@ zero_extendqisi2
	ldrb	lr, [r3, #-25]	@ zero_extendqisi2
	lsr	r7, r7, #2
	lsr	ip, ip, #3
	lsl	r7, r7, #5
	orr	r7, r7, ip, lsl #11
	orr	r7, r7, lr, lsr #3
	strh	r7, [r4, #-38]	@ movhi
	ldrb	r7, [r3, #-23]	@ zero_extendqisi2
	ldrb	ip, [r3, #-24]	@ zero_extendqisi2
	ldrb	lr, [r3, #-22]	@ zero_extendqisi2
	lsr	r7, r7, #2
	lsr	ip, ip, #3
	lsl	r7, r7, #5
	orr	r7, r7, ip, lsl #11
	orr	r7, r7, lr, lsr #3
	strh	r7, [r4, #-36]	@ movhi
	ldrb	r7, [r3, #-20]	@ zero_extendqisi2
	ldrb	ip, [r3, #-21]	@ zero_extendqisi2
	ldrb	lr, [r3, #-19]	@ zero_extendqisi2
	lsr	r7, r7, #2
	lsr	ip, ip, #3
	lsl	r7, r7, #5
	orr	r7, r7, ip, lsl #11
	orr	r7, r7, lr, lsr #3
	strh	r7, [r4, #-34]	@ movhi
	ldrb	r7, [r3, #-17]	@ zero_extendqisi2
	ldrb	ip, [r3, #-18]	@ zero_extendqisi2
	ldrb	lr, [r3, #-16]	@ zero_extendqisi2
	lsr	r7, r7, #2
	lsr	ip, ip, #3
	lsl	r7, r7, #5
	orr	r7, r7, ip, lsl #11
	orr	r7, r7, lr, lsr #3
	strh	r7, [r4, #-32]	@ movhi
	ldrb	r7, [r3, #-14]	@ zero_extendqisi2
	ldrb	ip, [r3, #-15]	@ zero_extendqisi2
	ldrb	lr, [r3, #-13]	@ zero_extendqisi2
	lsr	r7, r7, #2
	lsr	ip, ip, #3
	lsl	r7, r7, #5
	orr	r7, r7, ip, lsl #11
	orr	r7, r7, lr, lsr #3
	strh	r7, [r4, #-30]	@ movhi
	ldrb	r7, [r3, #-11]	@ zero_extendqisi2
	ldrb	ip, [r3, #-12]	@ zero_extendqisi2
	ldrb	lr, [r3, #-10]	@ zero_extendqisi2
	lsr	r7, r7, #2
	lsr	ip, ip, #3
	lsl	r7, r7, #5
	orr	r7, r7, ip, lsl #11
	orr	r7, r7, lr, lsr #3
	strh	r7, [r4, #-28]	@ movhi
	ldrb	r7, [r3, #-8]	@ zero_extendqisi2
	ldrb	ip, [r3, #-9]	@ zero_extendqisi2
	ldrb	lr, [r3, #-7]	@ zero_extendqisi2
	lsr	r7, r7, #2
	lsr	ip, ip, #3
	lsl	r7, r7, #5
	orr	r7, r7, ip, lsl #11
	orr	r7, r7, lr, lsr #3
	strh	r7, [r4, #-26]	@ movhi
	ldrb	r7, [r3, #-5]	@ zero_extendqisi2
	ldrb	ip, [r3, #-6]	@ zero_extendqisi2
	ldrb	lr, [r3, #-4]	@ zero_extendqisi2
	lsr	r7, r7, #2
	lsr	ip, ip, #3
	lsl	r7, r7, #5
	orr	r7, r7, ip, lsl #11
	orr	r7, r7, lr, lsr #3
	strh	r7, [r4, #-24]	@ movhi
	ldrb	r7, [r3, #-2]	@ zero_extendqisi2
	ldrb	ip, [r3, #-3]	@ zero_extendqisi2
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2
	lsr	r7, r7, #2
	lsr	ip, ip, #3
	lsl	r7, r7, #5
	orr	r7, r7, ip, lsl #11
	orr	r7, r7, lr, lsr #3
	strh	r7, [r4, #-22]	@ movhi
	bgt	.L125
	b	.L124
.L131:
	bx	lr
	.size	libaroma_color_24to16, .-libaroma_color_24to16
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
