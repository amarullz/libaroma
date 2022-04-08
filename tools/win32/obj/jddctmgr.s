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
	.file	"jddctmgr.c"
	.section	.text.start_pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass, %function
start_pass:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #40]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	fp, .L54+48
	cmp	r3, #0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #36
.LPIC32:
	add	fp, pc
	ldr	r5, [r0, #460]
	ldr	r4, [r0, #224]
	ble	.L1
	fldd	d12, .L54
	mov	r10, #0
	fldd	d11, .L54+8
	adds	r4, r4, #120
	fldd	d10, .L54+16
	subs	r5, r5, #4
	fldd	d9, .L54+24
	mov	r6, r10
	fldd	d8, .L54+32
	mov	r7, r10
	fldd	d13, .L54+40
	mov	r8, r0
.L27:
	ldr	r2, [r4, #-84]
	pld	[r4]
	subs	r3, r2, #1
	cmp	r3, #7
	bhi	.L3
	tbb	[pc, r3]
.L5:
	.byte	(.L28-.L5)/2
	.byte	(.L6-.L5)/2
	.byte	(.L3-.L5)/2
	.byte	(.L7-.L5)/2
	.byte	(.L3-.L5)/2
	.byte	(.L3-.L5)/2
	.byte	(.L3-.L5)/2
	.byte	(.L8-.L5)/2
	.align	1
.L28:
	ldr	r3, .L54+52
	movs	r7, #0
	ldr	r10, [fp, r3]
.L4:
	ldr	r3, [r4, #-72]
	adds	r5, r5, #4
	str	r10, [r5, #4]
	pld	[r4, #12]
	cbz	r3, .L13
	ldr	r3, [r5, #44]
	cmp	r3, r7
	beq	.L13
	ldr	r3, [r4, #-44]
	cbz	r3, .L13
	cmp	r7, #1
	str	r7, [r5, #44]
	beq	.L16
	cmp	r7, #2
	beq	.L17
	cmp	r7, #0
	beq	.L52
	ldr	r3, [r8]
	movs	r2, #48
	mov	r0, r8
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L13:
	ldr	r3, [r8, #40]
	adds	r6, r6, #1
	adds	r4, r4, #84
	cmp	r3, r6
	bgt	.L27
.L1:
	add	sp, sp, #36
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L8:
	ldr	r9, [r8, #80]
	cmp	r9, #1
	beq	.L10
	bcc	.L11
	cmp	r9, #2
	bne	.L53
	ldr	r3, .L54+56
	mov	r7, r9
	ldr	r10, [fp, r3]
	b	.L4
.L7:
	bl	cap_neon_idct_4x4(PLT)
	cbz	r0, .L30
	ldr	r3, .L54+60
	movs	r7, #0
	ldr	r10, [fp, r3]
	b	.L4
.L6:
	bl	cap_neon_idct_2x2(PLT)
	cbz	r0, .L29
	ldr	r3, .L54+64
	movs	r7, #0
	ldr	r10, [fp, r3]
	b	.L4
.L3:
	ldr	r3, [r8]
	movs	r1, #7
	mov	r0, r8
	str	r2, [r3, #24]
	ldr	r2, [r8]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L4
.L30:
	ldr	r3, .L54+68
	mov	r7, r0
	ldr	r10, [fp, r3]
	b	.L4
.L29:
	ldr	r3, .L54+72
	mov	r7, r0
	ldr	r10, [fp, r3]
	b	.L4
.L52:
	ldr	r2, [r4, #-40]
	add	r0, r3, #16
	add	r1, r2, #16
	cmp	r3, r1
	it	cc
	cmpcc	r2, r0
	bcc	.L19
	add	lr, r3, #48
	vld1.16	{q8}, [r3]
	str	lr, [sp, #16]
	add	lr, r2, #48
	vst1.16	{q8}, [r2]
	add	r9, r3, #32
	str	lr, [sp, #8]
	add	lr, r3, #64
	vld1.16	{q8}, [r0]
	add	r0, r2, #64
	str	lr, [sp, #12]
	add	ip, r2, #32
	str	r0, [sp, #4]
	ldr	lr, [sp, #16]
	ldr	r0, [sp, #8]
	vst1.16	{q8}, [r1]
	add	r1, r3, #80
	vld1.16	{q8}, [r9]
	add	r9, r2, #80
	vst1.16	{q8}, [ip]
	add	ip, r3, #96
	adds	r3, r3, #112
	vld1.16	{q8}, [lr]
	add	lr, r2, #96
	adds	r2, r2, #112
	vst1.16	{q8}, [r0]
	ldr	r0, [sp, #12]
	vld1.16	{q8}, [r0]
	ldr	r0, [sp, #4]
	vst1.16	{q8}, [r0]
	vld1.16	{q8}, [r1]
	vst1.16	{q8}, [r9]
	vld1.16	{q8}, [ip]
	vst1.16	{q8}, [lr]
	vld1.16	{q8}, [r3]
	vst1.16	{q8}, [r2]
	b	.L13
.L17:
	ldr	r0, .L54+76
	movs	r1, #0
	ldr	r2, [r4, #-40]
.LPIC42:
	add	r0, pc
.L25:
	ldrh	r9, [r3, #2]
	adds	r1, r1, #8
	ldrh	ip, [r3]
	cmp	r1, #64
	fldmiad	r0!, {d16}
	add	r3, r3, #16
	ldrh	lr, [r3, #-12]
	add	r2, r2, #32
	fmsr	s15, r9	@ int
	fmsr	s12, ip	@ int
	ldrh	r9, [r3, #-10]
	ldrh	ip, [r3, #-6]
	fmuld	d30, d16, d12
	fmsr	s14, lr	@ int
	fmsr	s13, r9	@ int
	ldrh	lr, [r3, #-8]
	ldrh	r9, [r3, #-4]
	fmsr	s11, ip	@ int
	fuitod	d29, s15
	ldrh	ip, [r3, #-2]
	fmsr	s9, r9	@ int
	fmuld	d28, d16, d11
	fmsr	s0, lr	@ int
	fmsr	s10, ip	@ int
	fmuld	d26, d16, d10
	fuitod	d27, s14
	fmuld	d24, d16, d9
	fuitod	d25, s13
	fmuld	d22, d16, d8
	fuitod	d23, s11
	fmuld	d20, d16, d13
	fuitod	d21, s9
	fmuld	d29, d30, d29
	fuitod	d19, s10
	fuitod	d17, s12
	fuitod	d18, s0
	fmuld	d27, d28, d27
	fcvtsd	s15, d29
	fmuld	d17, d17, d16
	fmuld	d25, d26, d25
	fsts	s15, [r2, #-28]
	fmuld	d23, d24, d23
	fcvtsd	s14, d27
	fmuld	d21, d22, d21
	fcvtsd	s13, d25
	fmuld	d19, d20, d19
	fcvtsd	s11, d23
	fmuld	d16, d18, d16
	fcvtsd	s9, d21
	fcvtsd	s12, d17
	fcvtsd	s10, d19
	fsts	s14, [r2, #-24]
	fcvtsd	s15, d16
	fsts	s13, [r2, #-20]
	fsts	s11, [r2, #-12]
	fsts	s9, [r2, #-8]
	fsts	s10, [r2, #-4]
	fsts	s12, [r2, #-32]
	fsts	s15, [r2, #-16]
	bne	.L25
	b	.L13
.L55:
	.align	3
.L54:
	.word	-1320656401
	.word	1073099088
	.word	-1857196086
	.word	1073014702
	.word	-278130262
	.word	1072877666
	.word	-1062748357
	.word	1072243817
	.word	2076647611
	.word	1071731066
	.word	-562910371
	.word	1070704725
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC32+4)
	.word	jpeg_idct_1x1(GOT)
	.word	jpeg_idct_float(GOT)
	.word	jsimd_idct_4x4(GOT)
	.word	jsimd_idct_2x2(GOT)
	.word	jpeg_idct_4x4(GOT)
	.word	jpeg_idct_2x2(GOT)
	.word	.LANCHOR1-(.LPIC42+4)
.L16:
	ldr	r2, [r4, #-40]
	add	lr, r3, #16
	add	r0, r2, #16
	cmp	r3, r0
	it	cc
	cmpcc	r2, lr
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	bcc	.L22
	ldr	r1, .L56
	vmov.i32	q8, #2048  @ v4si
	vld1.16	{q9}, [r3]
	add	r9, r3, #32
	vmovl.u16 q13, d18
	add	ip, r2, #32
.LPIC33:
	add	r1, pc
	vmovl.u16 q10, d19
	vmov	q0, q8  @ v4si
	vld1.64	{d18-d19}, [r1:64]
	vmov	q7, q8  @ v4si
	vmovl.s16 q12, d18
	vmovl.s16 q9, d19
	vldr	d22, [r1, #16]
	vldr	d23, [r1, #24]
	vmla.i32	q0, q13, q12
	vmov	q12, q8  @ v4si
	vldr	d6, [r1, #32]
	vldr	d7, [r1, #40]
	vmla.i32	q12, q10, q9
	vldr	d28, [r1, #48]
	vldr	d29, [r1, #56]
	vmovl.s16 q10, d22
	vshr.s32	q13, q0, #12
	vmov	q0, q8  @ v4si
	vmovl.s16 q11, d23
	vmovl.s16 q2, d6
	vmovl.s16 q3, d7
	vshr.s32	q12, q12, #12
	vmovl.s16 q15, d28
	vmovl.s16 q14, d29
	vmovn.i32	d18, q13
	vmovn.i32	d19, q12
	vldr	d24, [r1, #64]
	vldr	d25, [r1, #72]
	vst1.16	{q9}, [r2]
	vmovl.s16 q13, d24
	vld1.16	{q9}, [lr]
	add	lr, r3, #48
	vmovl.u16 q1, d18
	vmovl.u16 q9, d19
	str	lr, [sp, #4]
	add	lr, r2, #48
	vmla.i32	q7, q1, q10
	str	lr, [sp, #8]
	add	lr, r3, #96
	vldr	d2, [r1, #96]
	vldr	d3, [r1, #104]
	vmla.i32	q0, q9, q11
	vldr	d20, [r1, #80]
	vldr	d21, [r1, #88]
	vmovl.s16 q9, d2
	vshr.s32	q7, q7, #12
	vmovl.s16 q1, d3
	vmovl.s16 q12, d25
	vmovl.s16 q11, d20
	vshr.s32	q0, q0, #12
	vstr	d2, [sp, #16]
	vstr	d3, [sp, #24]
	vmovl.s16 q10, d21
	vmovn.i32	d2, q7
	vmovn.i32	d3, q0
	vmov	q7, q8  @ v4si
	vst1.16	{q1}, [r0]
	add	r0, r3, #64
	str	r0, [sp]
	add	r0, r3, #80
	vld1.16	{q1}, [r9]
	add	r9, r2, #64
	vmovl.u16 q0, d2
	adds	r3, r3, #112
	vmovl.u16 q1, d3
	str	r9, [sp, #12]
	vmla.i32	q7, q0, q2
	ldr	r9, [sp, #4]
	vldr	d4, [r1, #112]
	vldr	d5, [r1, #120]
	add	r1, r2, #80
	vmov	q0, q7  @ v4si
	vmov	q7, q8  @ v4si
	vshr.s32	q0, q0, #12
	vmla.i32	q7, q1, q3
	vmovl.s16 q3, d4
	vmov	q1, q7  @ v4si
	vmovl.s16 q7, d5
	vshr.s32	q1, q1, #12
	vmovn.i32	d4, q0
	vmovn.i32	d5, q1
	vmov	q0, q8  @ v4si
	vst1.16	{q2}, [ip]
	add	ip, r2, #96
	adds	r2, r2, #112
	vld1.16	{q2}, [r9]
	vmovl.u16 q1, d4
	vmovl.u16 q2, d5
	ldr	r9, [sp, #8]
	vmla.i32	q0, q1, q15
	vmov	q15, q8  @ v4si
	vmov	q1, q8  @ v4si
	vmla.i32	q15, q2, q14
	vshr.s32	q2, q0, #12
	vmov	q0, q8  @ v4si
	vshr.s32	q15, q15, #12
	vmovn.i32	d28, q2
	vmovn.i32	d29, q15
	vst1.16	{q14}, [r9]
	ldr	r9, [sp]
	vld1.16	{q14}, [r9]
	vmovl.u16 q2, d28
	vmovl.u16 q15, d29
	vmov	q14, q8  @ v4si
	ldr	r9, [sp, #12]
	vmla.i32	q14, q2, q13
	vmov	q13, q8  @ v4si
	vmla.i32	q13, q15, q12
	vshr.s32	q14, q14, #12
	vshr.s32	q13, q13, #12
	vmovn.i32	d24, q14
	vmovn.i32	d25, q13
	vst1.16	{q12}, [r9]
	vld1.16	{q12}, [r0]
	vmovl.u16 q14, d24
	vmovl.u16 q13, d25
	vmov	q12, q8  @ v4si
	vmla.i32	q12, q14, q11
	vmov	q11, q8  @ v4si
	vmla.i32	q11, q13, q10
	vshr.s32	q12, q12, #12
	vshr.s32	q11, q11, #12
	vmovn.i32	d20, q12
	vmovn.i32	d21, q11
	vst1.16	{q10}, [r1]
	vld1.16	{q10}, [lr]
	vmovl.u16 q11, d20
	vmovl.u16 q10, d21
	vmla.i32	q0, q11, q9
	vldr	d18, [sp, #16]
	vldr	d19, [sp, #24]
	vmla.i32	q1, q10, q9
	vshr.s32	q11, q0, #12
	vshr.s32	q10, q1, #12
	vmovn.i32	d18, q11
	vmovn.i32	d19, q10
	vmov	q11, q8  @ v4si
	vst1.16	{q9}, [ip]
	vld1.16	{q9}, [r3]
	vmovl.u16 q10, d18
	vmovl.u16 q9, d19
	vmla.i32	q11, q10, q3
	vmla.i32	q8, q9, q7
	vshr.s32	q10, q11, #12
	vshr.s32	q9, q8, #12
	vmovn.i32	d16, q10
	vmovn.i32	d17, q9
	vst1.16	{q8}, [r2]
	b	.L13
.L53:
	ldr	r3, [r8]
	movs	r2, #48
	mov	r0, r8
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L4
.L11:
	ldr	r3, .L56+4
	movs	r7, #0
	ldr	r10, [fp, r3]
	b	.L4
.L10:
	bl	cap_neon_idct_ifast(PLT)
	cbz	r0, .L32
	ldr	r3, .L56+8
	mov	r7, r9
	ldr	r10, [fp, r3]
	b	.L4
.L32:
	ldr	r3, .L56+12
	mov	r7, r9
	ldr	r10, [fp, r3]
	b	.L4
.L22:
	ldr	lr, .L56+16
.LPIC41:
	add	lr, pc
.L24:
	ldrh	r0, [r3, r1]
	ldrsh	ip, [r1, lr]
	mul	r0, ip, r0
	add	r0, r0, #2048
	asrs	r0, r0, #12
	strh	r0, [r2, r1]	@ movhi
	adds	r1, r1, #2
	cmp	r1, #128
	bne	.L24
	b	.L13
.L19:
	mov	r1, r7
.L21:
	ldrh	r0, [r3, r1]
	strh	r0, [r2, r1]	@ movhi
	adds	r1, r1, #2
	cmp	r1, #128
	bne	.L21
	b	.L13
.L57:
	.align	2
.L56:
	.word	.LANCHOR0-(.LPIC33+4)
	.word	jpeg_idct_islow(GOT)
	.word	jsimd_idct_ifast(GOT)
	.word	jpeg_idct_ifast(GOT)
	.word	.LANCHOR0-(.LPIC41+4)
	.size	start_pass, .-start_pass
	.section	.text.jinit_inverse_dct,"ax",%progbits
	.align	2
	.global	jinit_inverse_dct
	.thumb
	.thumb_func
	.type	jinit_inverse_dct, %function
jinit_inverse_dct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r2, #84
	push	{r4, r5, r6, r7, r8, lr}
	movs	r1, #1
	mov	r4, r0
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #40]
	ldr	r2, .L63
	str	r0, [r4, #460]
	cmp	r3, #0
	ldr	r5, [r4, #224]
.LPIC43:
	add	r2, pc
	str	r2, [r0]
	ble	.L58
	mov	r7, r0
	movs	r6, #0
	mov	r8, #-1
.L61:
	ldr	r3, [r4, #4]
	movs	r1, #1
	mov	r2, #256
	mov	r0, r4
	add	r6, r6, r1
	adds	r5, r5, #84
	ldr	r3, [r3]
	adds	r7, r7, #4
	blx	r3
	movs	r1, #0
	str	r0, [r5, #-4]
	mov	r2, #256
	bl	memset(PLT)
	str	r8, [r7, #40]
	ldr	r3, [r4, #40]
	cmp	r3, r6
	bgt	.L61
.L58:
	pop	{r4, r5, r6, r7, r8, pc}
.L64:
	.align	2
.L63:
	.word	start_pass-(.LPIC43+4)
	.size	jinit_inverse_dct, .-jinit_inverse_dct
	.section	.rodata.aanscalefactor.7576,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	aanscalefactor.7576, %object
	.size	aanscalefactor.7576, 64
aanscalefactor.7576:
	.word	0
	.word	1072693248
	.word	-1320656401
	.word	1073099088
	.word	-1857196086
	.word	1073014702
	.word	-278130262
	.word	1072877666
	.word	0
	.word	1072693248
	.word	-1062748357
	.word	1072243817
	.word	2076647611
	.word	1071731066
	.word	-562910371
	.word	1070704725
	.section	.rodata.aanscales.7568,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	aanscales.7568, %object
	.size	aanscales.7568, 128
aanscales.7568:
	.short	16384
	.short	22725
	.short	21407
	.short	19266
	.short	16384
	.short	12873
	.short	8867
	.short	4520
	.short	22725
	.short	31521
	.short	29692
	.short	26722
	.short	22725
	.short	17855
	.short	12299
	.short	6270
	.short	21407
	.short	29692
	.short	27969
	.short	25172
	.short	21407
	.short	16819
	.short	11585
	.short	5906
	.short	19266
	.short	26722
	.short	25172
	.short	22654
	.short	19266
	.short	15137
	.short	10426
	.short	5315
	.short	16384
	.short	22725
	.short	21407
	.short	19266
	.short	16384
	.short	12873
	.short	8867
	.short	4520
	.short	12873
	.short	17855
	.short	16819
	.short	15137
	.short	12873
	.short	10114
	.short	6967
	.short	3552
	.short	8867
	.short	12299
	.short	11585
	.short	10426
	.short	8867
	.short	6967
	.short	4799
	.short	2446
	.short	4520
	.short	6270
	.short	5906
	.short	5315
	.short	4520
	.short	3552
	.short	2446
	.short	1247
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
