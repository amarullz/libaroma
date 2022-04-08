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
	.file	"jcdctmgr.c"
	.section	.text.start_pass_fdctmgr,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_fdctmgr, %function
start_pass_fdctmgr:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #60]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldr	r0, [r0, #360]
	cmp	r3, #0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #52
	str	r0, [sp, #36]
	ldr	r2, [r7, #68]
	ble	.L1
	ldr	r5, .L46+48
	add	r8, r2, #100
	fldd	d11, .L46
	mov	r9, #0
	fldd	d10, .L46+8
	fldd	d9, .L46+16
.LPIC41:
	add	r5, pc
	fldd	d8, .L46+24
	add	r3, r5, #16
	str	r3, [sp, #44]
.L24:
	ldr	r6, [r8, #-84]
	pld	[r8]
	cmp	r6, #3
	add	r10, r6, #18
	bhi	.L3
	ldr	r4, [r7, r10, lsl #2]
	cmp	r4, #0
	beq	.L3
	ldr	r1, [r7, #196]
	cmp	r1, #1
	beq	.L6
.L43:
	bcc	.L7
	cmp	r1, #2
	bne	.L41
	ldr	r3, [sp, #36]
	add	r6, r3, r6, lsl #2
	ldr	lr, [r6, #32]
	cmp	lr, #0
	beq	.L42
.L19:
	fldd	d20, .L46+32
	movs	r6, #0
	fldd	d19, .L46+40
	mov	r0, r6
	ldr	r10, [sp, #44]
	mov	r2, r4
	mov	r3, lr
	fconstd	d16, #64
	str	lr, [sp, #40]
.L21:
	ldrh	lr, [r2, #2]
	add	ip, r5, r0
	ldrh	r1, [r2, #6]
	adds	r6, r6, #2
	fldd	d18, [ip]
	cmp	r6, #6
	ldrh	fp, [r2, #4]
	fmsr	s14, lr	@ int
	ldrh	lr, [r2, #10]
	fuitod	d7, s14
	fmsr	s12, r1	@ int
	rsb	r1, r6, #8
	fuitod	d28, s12
	fmsr	s11, lr	@ int
	ldrh	lr, [r2, #12]
	fmsr	s0, fp	@ int
	fmuld	d7, d18, d7
	ldrh	fp, [r2, #14]
	fmsr	s13, lr	@ int
	ldrh	lr, [r2, #18]
	fuitod	d30, s0
	fuitod	d31, s11
	fuitod	d29, s13
	fmsr	s12, lr	@ int
	ldrh	lr, [r2, #20]
	fmsr	s0, fp	@ int
	fmuld	d30, d18, d30
	fldd	d17, [ip, #8]
	fmsr	s13, lr	@ int
	ldrh	lr, [r2]
	fmuld	d28, d18, d28
	ldrh	fp, [r2, #22]
	fmuld	d31, d18, d31
	ldrh	ip, [r2, #26]
	fmuld	d7, d7, d11
	fuitod	d27, s0
	fuitod	d26, s12
	fuitod	d25, s13
	fmsr	s13, lr	@ int
	ldrh	lr, [r2, #16]
	fmsr	s1, fp	@ int
	fmsr	s2, ip	@ int
	fmuld	d29, d18, d29
	fmsr	s12, lr	@ int
	fmuld	d27, d18, d27
	ldrh	lr, [r2, #24]
	fmuld	d26, d17, d26
	fdivd	d7, d16, d7
	fmuld	d25, d17, d25
	ldrh	ip, [r2, #8]
	fmuld	d30, d30, d10
	fuitod	d24, s1
	fmuld	d28, d28, d9
	fuitod	d23, s2
	fmuld	d31, d31, d8
	fmsr	s10, lr	@ int
	fmsr	s0, ip	@ int
	fmuld	d24, d17, d24
	fdivd	d30, d16, d30
	fmuld	d23, d17, d23
	fdivd	d28, d16, d28
	fmuld	d29, d29, d20
	fdivd	d31, d16, d31
	fmuld	d27, d27, d19
	fuitod	d22, s13
	fmuld	d26, d26, d11
	fuitod	d21, s0
	fmuld	d25, d25, d10
	fuitod	d6, s12
	fuitod	d5, s10
	fmuld	d22, d18, d22
	fdivd	d29, d16, d29
	fmuld	d6, d17, d6
	fdivd	d27, d16, d27
	fmuld	d18, d21, d18
	fdivd	d26, d16, d26
	fmuld	d5, d5, d17
	fdivd	d25, d16, d25
	fmuld	d24, d24, d9
	fdivd	d21, d16, d6
	fmuld	d23, d23, d8
	fdivd	d18, d16, d18
	fdivd	d22, d16, d22
	fdivd	d24, d16, d24
	fdivd	d5, d16, d5
	fdivd	d23, d16, d23
	fcvtsd	s14, d7
	pld	[r10, r0]
	add	r0, r0, #16
	pld	[r2, #46]
	add	r2, r2, #32
	fcvtsd	s15, d30
	fsts	s14, [r3, #4]
	fcvtsd	s13, d28
	fcvtsd	s14, d31
	fsts	s15, [r3, #8]
	pld	[r3, #92]
	fsts	s13, [r3, #12]
	fsts	s14, [r3, #20]
	fcvtsd	s15, d29
	fcvtsd	s13, d27
	pld	[r3, #124]
	add	r3, r3, #64
	fcvtsd	s14, d26
	fsts	s15, [r3, #-40]
	fcvtsd	s12, d25
	fsts	s13, [r3, #-36]
	fsts	s14, [r3, #-28]
	fsts	s12, [r3, #-24]
	fcvtsd	s14, d18
	fcvtsd	s12, d21
	fcvtsd	s9, d24
	fcvtsd	s15, d23
	fcvtsd	s13, d22
	fcvtsd	s10, d5
	fsts	s14, [r3, #-48]
	fsts	s9, [r3, #-20]
	fsts	s13, [r3, #-64]
	fsts	s12, [r3, #-32]
	fsts	s10, [r3, #-16]
	fsts	s15, [r3, #-12]
	ldrh	fp, [r2, #-4]
	ldrh	ip, [r2, #-2]
	fmsr	s1, fp	@ int
	fmsr	s2, ip	@ int
	fuitod	d18, s1
	fuitod	d21, s2
	fmuld	d18, d17, d18
	fmuld	d17, d17, d21
	fmuld	d18, d18, d20
	fmuld	d17, d17, d19
	fdivd	d18, d16, d18
	fdivd	d17, d16, d17
	fcvtsd	s14, d18
	fcvtsd	s15, d17
	fsts	s14, [r3, #-8]
	fsts	s15, [r3, #-4]
	bne	.L21
	ldr	lr, [sp, #40]
	add	r4, r4, r0, lsl #1
	fldd	d7, .L46+32
	add	r2, r5, #48
	fldd	d6, .L46+40
	fconstd	d17, #64
	add	r3, lr, r0, lsl #2
.L22:
	fldmiad	r2!, {d16}
	subs	r1, r1, #1
	ldrh	r0, [r4, #2]
	add	r3, r3, #32
	ldrh	lr, [r4, #4]
	add	r4, r4, #16
	ldrh	r10, [r4, #-6]
	fmuld	d31, d16, d11
	fmsr	s10, r0	@ int
	fmsr	s11, lr	@ int
	fmuld	d29, d16, d10
	ldrh	r0, [r4, #-10]
	ldrh	ip, [r4, #-4]
	fuitod	d30, s10
	fuitod	d28, s11
	fmsr	s9, r0	@ int
	fmuld	d27, d16, d9
	fmsr	s0, r10	@ int
	fmuld	d25, d16, d8
	fmsr	s1, ip	@ int
	fmuld	d23, d16, d7
	ldrh	r6, [r4, #-16]
	fmuld	d30, d31, d30
	ldrh	r0, [r4, #-8]
	fmuld	d28, d29, d28
	ldrh	lr, [r4, #-2]
	fuitod	d26, s9
	fuitod	d24, s0
	fuitod	d22, s1
	fmuld	d21, d16, d6
	fmsr	s2, lr	@ int
	fmsr	s3, r6	@ int
	fmsr	s4, r0	@ int
	fmuld	d26, d27, d26
	fdivd	d30, d17, d30
	fmuld	d24, d25, d24
	fdivd	d28, d17, d28
	fmuld	d22, d23, d22
	fuitod	d20, s2
	fuitod	d19, s3
	fuitod	d18, s4
	fdivd	d26, d17, d26
	fmuld	d20, d21, d20
	fdivd	d24, d17, d24
	fmuld	d19, d19, d16
	fdivd	d22, d17, d22
	fmuld	d16, d18, d16
	fdivd	d20, d17, d20
	fdivd	d19, d17, d19
	fdivd	d16, d17, d16
	fcvtsd	s10, d30
	fcvtsd	s11, d28
	fsts	s10, [r3, #-28]
	fsts	s11, [r3, #-24]
	fcvtsd	s9, d26
	fcvtsd	s10, d24
	fcvtsd	s11, d22
	fsts	s9, [r3, #-20]
	fsts	s10, [r3, #-12]
	fcvtsd	s9, d20
	fsts	s11, [r3, #-8]
	fcvtsd	s10, d19
	fcvtsd	s11, d16
	fsts	s9, [r3, #-4]
	fsts	s10, [r3, #-32]
	fsts	s11, [r3, #-16]
	bne	.L22
	ldr	r3, [r7, #60]
	add	r9, r9, #1
	add	r8, r8, #84
	cmp	r3, r9
	bgt	.L24
.L1:
	add	sp, sp, #52
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L47:
	.align	3
.L46:
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
	.word	.LANCHOR1-(.LPIC41+4)
.L3:
	ldr	r3, [r7]
	movs	r1, #52
	mov	r0, r7
	str	r6, [r3, #24]
	ldr	r2, [r7]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	ldr	r1, [r7, #196]
	ldr	r4, [r7, r10, lsl #2]
	cmp	r1, #1
	bne	.L43
.L6:
	ldr	r3, [sp, #36]
	add	r6, r3, r6, lsl #2
	ldr	r3, [r6, #12]
	cmp	r3, #0
	beq	.L44
.L14:
	add	r2, r4, #128
	add	r1, r3, #256
	cmp	r3, r2
	it	cc
	cmpcc	r4, r1
	ite	cs
	movcs	r2, #1
	movcc	r2, #0
	bcc	.L15
	ldr	r6, .L48
	vmov.i32	q8, #1024  @ v4si
	mov	r1, r4
	mov	r0, r3
	add	r2, r3, #32
	add	ip, r3, #48
.LPIC32:
	add	r6, pc
	vld1.16	{q10}, [r1]!
	vmov	q15, q8  @ v4si
	vmovl.u16 q13, d20
	vld1.64	{d18-d19}, [r6:64]
	vmov	q14, q8  @ v4si
	vmovl.u16 q12, d21
	vmov	q2, q8  @ v4si
	vmovl.s16 q10, d18
	vmov	q6, q8  @ v4si
	vmovl.s16 q11, d19
	add	lr, r4, #32
	vldr	d18, [r6, #16]
	vldr	d19, [r6, #24]
	add	fp, r3, #96
	vmla.i32	q15, q13, q10
	add	r10, r3, #112
	add	r9, r9, #1
	add	r8, r8, #84
	vldr	d20, [r6, #32]
	vldr	d21, [r6, #40]
	vmla.i32	q14, q12, q11
	vldr	d2, [r6, #48]
	vldr	d3, [r6, #56]
	vmovl.s16 q13, d18
	vmovl.s16 q12, d19
	vshr.s32	q15, q15, #11
	vmovl.s16 q11, d20
	vmovl.s16 q0, d21
	vmov	q10, q8  @ v4si
	vshr.s32	q9, q14, #11
	vst1.32	{q15}, [r0]!
	vst1.32	{q9}, [r0]
	add	r0, r3, #64
	vld1.16	{q9}, [r1]
	add	r1, r3, #80
	vmovl.u16 q14, d18
	vmovl.u16 q9, d19
	vst1.64	{d0-d1}, [sp:64]
	vmla.i32	q2, q14, q13
	vldr	d6, [r6, #64]
	vldr	d7, [r6, #72]
	vmla.i32	q6, q9, q12
	vldr	d28, [r6, #80]
	vldr	d29, [r6, #88]
	vmovl.s16 q0, d2
	vmov	q13, q2  @ v4si
	vmovl.s16 q1, d3
	vmovl.s16 q2, d6
	vmovl.s16 q3, d7
	vshr.s32	q13, q13, #11
	vshr.s32	q9, q6, #11
	vldr	d24, [r6, #96]
	vldr	d25, [r6, #104]
	vmovl.s16 q15, d28
	vst1.32	{q13}, [r2]
	add	r2, r4, #48
	vmovl.s16 q14, d29
	vst1.32	{q9}, [ip]
	add	ip, r4, #64
	vmovl.s16 q13, d24
	vld1.16	{q9}, [lr]
	add	lr, r3, #128
	vmovl.u16 q7, d18
	vmovl.s16 q12, d25
	vstr	d14, [sp, #16]
	vstr	d15, [sp, #24]
	vmovl.u16 q7, d19
	vldr	d12, [sp, #16]
	vldr	d13, [sp, #24]
	vmla.i32	q10, q6, q11
	vld1.64	{d22-d23}, [sp:64]
	vldr	d18, [r6, #112]
	vldr	d19, [r6, #120]
	add	r6, r3, #144
	vstr	d20, [sp, #16]
	vstr	d21, [sp, #24]
	vmov	q10, q8  @ v4si
	vmla.i32	q10, q7, q11
	vmovl.s16 q11, d18
	vmov	q7, q10  @ v4si
	vldr	d20, [sp, #16]
	vldr	d21, [sp, #24]
	vshr.s32	q6, q10, #11
	vmovl.s16 q10, d19
	vshr.s32	q9, q7, #11
	vmov	q7, q8  @ v4si
	vst1.32	{q6}, [r0]
	add	r0, r4, #80
	vst1.32	{q9}, [r1]
	add	r1, r3, #160
	str	r1, [sp, #40]
	add	r1, r3, #176
	vld1.16	{q9}, [r2]
	add	r2, r4, #96
	vmovl.u16 q6, d18
	adds	r4, r4, #112
	vmovl.u16 q9, d19
	vmla.i32	q7, q6, q0
	vmov	q6, q8  @ v4si
	vmov	q0, q8  @ v4si
	vmla.i32	q6, q9, q1
	vshr.s32	q1, q7, #11
	vmov	q7, q8  @ v4si
	vst1.32	{q1}, [fp]
	add	fp, r3, #192
	vshr.s32	q9, q6, #11
	vst1.32	{q9}, [r10]
	add	r10, r3, #208
	vld1.16	{q9}, [ip]
	add	ip, r3, #224
	vmovl.u16 q1, d18
	adds	r3, r3, #240
	vmovl.u16 q9, d19
	vmla.i32	q7, q1, q2
	vmov	q1, q8  @ v4si
	vmov	q2, q8  @ v4si
	vmla.i32	q0, q9, q3
	vshr.s32	q3, q7, #11
	vst1.32	{q3}, [lr]
	vshr.s32	q9, q0, #11
	vmov	q0, q8  @ v4si
	vst1.32	{q9}, [r6]
	vld1.16	{q9}, [r0]
	vmovl.u16 q3, d18
	vmovl.u16 q9, d19
	ldr	r0, [sp, #40]
	vmla.i32	q1, q3, q15
	vmla.i32	q2, q9, q14
	vshr.s32	q14, q1, #11
	vmov	q1, q8  @ v4si
	vst1.32	{q14}, [r0]
	vshr.s32	q9, q2, #11
	vst1.32	{q9}, [r1]
	vld1.16	{q9}, [r2]
	vmovl.u16 q14, d18
	vmovl.u16 q9, d19
	vmla.i32	q0, q14, q13
	vmla.i32	q1, q9, q12
	vshr.s32	q12, q0, #11
	vst1.32	{q12}, [fp]
	vshr.s32	q9, q1, #11
	vst1.32	{q9}, [r10]
	vld1.16	{q9}, [r4]
	vmovl.u16 q13, d18
	vmovl.u16 q12, d19
	vmov	q9, q8  @ v4si
	vmla.i32	q8, q12, q10
	vmla.i32	q9, q13, q11
	vshr.s32	q8, q8, #11
	vshr.s32	q9, q9, #11
	vst1.32	{q9}, [ip]
	vst1.32	{q8}, [r3]
	ldr	r3, [r7, #60]
	cmp	r3, r9
	bgt	.L24
	b	.L1
.L41:
	ldr	r3, [r7]
	movs	r2, #48
	mov	r0, r7
	add	r9, r9, #1
	add	r8, r8, #84
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r7, #60]
	cmp	r3, r9
	bgt	.L24
	b	.L1
.L7:
	ldr	r3, [sp, #36]
	add	r6, r3, r6, lsl #2
	ldr	r3, [r6, #12]
	cmp	r3, #0
	beq	.L45
.L9:
	add	r2, r4, #128
	add	r1, r3, #256
	cmp	r3, r2
	it	cc
	cmpcc	r4, r1
	ite	cs
	movcs	r2, #1
	movcc	r2, #0
	bcc	.L10
	mov	r2, r4
	mov	r1, r3
	add	r10, r3, #32
	add	ip, r3, #48
	vld1.16	{q8}, [r2]!
	add	lr, r4, #32
	vshll.u16 q9, d16, #3
	add	r6, r3, #64
	vshll.u16 q8, d17, #3
	add	r0, r3, #80
	add	r9, r9, #1
	add	r8, r8, #84
	vst1.32	{q9}, [r1]!
	vst1.32	{q8}, [r1]
	add	r1, r4, #48
	vld1.16	{q8}, [r2]
	add	r2, r3, #96
	vshll.u16 q9, d16, #3
	vshll.u16 q8, d17, #3
	vst1.32	{q9}, [r10]
	add	r10, r4, #64
	vst1.32	{q8}, [ip]
	add	ip, r3, #112
	vld1.16	{q8}, [lr]
	add	lr, r3, #128
	vshll.u16 q9, d16, #3
	vshll.u16 q8, d17, #3
	vst1.32	{q9}, [r6]
	add	r6, r4, #80
	vst1.32	{q8}, [r0]
	add	r0, r3, #144
	vld1.16	{q8}, [r1]
	add	r1, r3, #160
	vshll.u16 q9, d16, #3
	vshll.u16 q8, d17, #3
	vst1.32	{q9}, [r2]
	add	r2, r3, #176
	vst1.32	{q8}, [ip]
	add	ip, r4, #96
	adds	r4, r4, #112
	vld1.16	{q8}, [r10]
	add	r10, r3, #192
	vshll.u16 q9, d16, #3
	vshll.u16 q8, d17, #3
	vst1.32	{q9}, [lr]
	vst1.32	{q8}, [r0]
	add	r0, r3, #208
	vld1.16	{q8}, [r6]
	add	r6, r3, #224
	vshll.u16 q9, d16, #3
	adds	r3, r3, #240
	vshll.u16 q8, d17, #3
	vst1.32	{q9}, [r1]
	vst1.32	{q8}, [r2]
	vld1.16	{q8}, [ip]
	vshll.u16 q9, d16, #3
	vshll.u16 q8, d17, #3
	vst1.32	{q9}, [r10]
	vst1.32	{q8}, [r0]
	vld1.16	{q8}, [r4]
	vshll.u16 q9, d16, #3
	vshll.u16 q8, d17, #3
	vst1.32	{q9}, [r6]
	vst1.32	{q8}, [r3]
	ldr	r3, [r7, #60]
	cmp	r3, r9
	bgt	.L24
	b	.L1
.L10:
	subs	r3, r3, #4
.L13:
	ldrh	r1, [r4, r2]
	adds	r2, r2, #2
	cmp	r2, #128
	lsl	r1, r1, #3
	str	r1, [r3, #4]!
	bne	.L13
	ldr	r3, [r7, #60]
	add	r9, r9, #1
	add	r8, r8, #84
	cmp	r3, r9
	bgt	.L24
	b	.L1
.L15:
	ldr	r0, .L48+4
	subs	r3, r3, #4
.LPIC40:
	add	r0, pc
.L18:
	ldrh	r1, [r4, r2]
	ldrsh	r6, [r2, r0]
	adds	r2, r2, #2
	cmp	r2, #128
	mul	r1, r6, r1
	add	r1, r1, #1024
	asr	r1, r1, #11
	str	r1, [r3, #4]!
	bne	.L18
	ldr	r3, [r7, #60]
	add	r9, r9, #1
	add	r8, r8, #84
	cmp	r3, r9
	bgt	.L24
	b	.L1
.L42:
	ldr	r3, [r7, #4]
	mov	r0, r7
	movs	r1, #1
	mov	r2, #256
	ldr	r3, [r3]
	blx	r3
	mov	lr, r0
	str	r0, [r6, #32]
	b	.L19
.L45:
	ldr	r3, [r7, #4]
	mov	r0, r7
	movs	r1, #1
	mov	r2, #256
	ldr	r3, [r3]
	blx	r3
	mov	r3, r0
	str	r0, [r6, #12]
	b	.L9
.L44:
	ldr	r3, [r7, #4]
	mov	r0, r7
	mov	r2, #256
	ldr	r3, [r3]
	blx	r3
	mov	r3, r0
	str	r0, [r6, #12]
	b	.L14
.L49:
	.align	2
.L48:
	.word	.LANCHOR0-(.LPIC32+4)
	.word	.LANCHOR0-(.LPIC40+4)
	.size	start_pass_fdctmgr, .-start_pass_fdctmgr
	.global	__aeabi_idiv
	.section	.text.forward_DCT,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	forward_DCT, %function
forward_DCT:
	@ args = 12, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #268
	ldr	r4, [r1, #16]
	sub	r8, r3, #2
	movs	r7, #0
	add	r9, sp, #8
	ldr	r1, [sp, #304]
	ldr	r0, [r0, #360]
	ldr	r6, [sp, #308]
	add	r2, r2, r1, lsl #2
	ldr	r1, [sp, #312]
	ldr	r5, [r0, #8]
	add	r0, r0, r4, lsl #2
	sub	r10, r2, #4
	str	r5, [sp, #4]
	ldr	r5, [r0, #12]
	cmp	r1, #0
	beq	.L50
.L59:
	mov	r3, r9
	mov	r1, r10
	add	r0, sp, #264
.L60:
	ldr	r2, [r1, #4]!
	adds	r3, r3, #32
	ldrb	r4, [r2, r6]	@ zero_extendqisi2
	add	r2, r2, r6
	subs	r4, r4, #128
	str	r4, [r3, #-32]
	ldrb	r4, [r2, #1]	@ zero_extendqisi2
	subs	r4, r4, #128
	str	r4, [r3, #-28]
	ldrb	r4, [r2, #2]	@ zero_extendqisi2
	subs	r4, r4, #128
	str	r4, [r3, #-24]
	ldrb	r4, [r2, #3]	@ zero_extendqisi2
	subs	r4, r4, #128
	str	r4, [r3, #-20]
	ldrb	r4, [r2, #4]	@ zero_extendqisi2
	subs	r4, r4, #128
	str	r4, [r3, #-16]
	ldrb	r4, [r2, #5]	@ zero_extendqisi2
	subs	r4, r4, #128
	str	r4, [r3, #-12]
	ldrb	r4, [r2, #6]	@ zero_extendqisi2
	subs	r4, r4, #128
	str	r4, [r3, #-8]
	ldrb	r2, [r2, #7]	@ zero_extendqisi2
	subs	r2, r2, #128
	str	r2, [r3, #-4]
	cmp	r3, r0
	bne	.L60
	mov	r0, r9
	ldr	r3, [sp, #4]
	mov	fp, r8
	movs	r4, #0
	blx	r3
	b	.L57
.L53:
	cmp	r3, r0
	mov	lr, #0
	mov	r1, r3
	bgt	.L55
	bl	__aeabi_idiv(PLT)
	uxth	lr, r0
.L55:
	adds	r4, r4, #4
	strh	lr, [fp, #2]!	@ movhi
	cmp	r4, #256
	beq	.L64
.L57:
	ldr	r1, [r4, r9]
	ldr	r3, [r5, r4]
	cmp	r1, #0
	add	r0, r1, r3, asr #1
	bge	.L53
	rsb	r0, r1, r3, asr #1
	mov	lr, #0
	mov	r1, r3
	cmp	r3, r0
	bgt	.L55
	bl	__aeabi_idiv(PLT)
	adds	r4, r4, #4
	negs	r0, r0
	uxth	lr, r0
	cmp	r4, #256
	strh	lr, [fp, #2]!	@ movhi
	bne	.L57
.L64:
	ldr	r3, [sp, #312]
	adds	r7, r7, #1
	adds	r6, r6, #8
	add	r8, r8, #128
	cmp	r7, r3
	bne	.L59
.L50:
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	forward_DCT, .-forward_DCT
	.section	.text.forward_DCT_float,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	forward_DCT_float, %function
forward_DCT_float:
	@ args = 12, pretend = 0, frame = 296
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, [r1, #16]
	ldr	r1, [r0, #360]
	add	r0, r4, #8
	fstmfdd	sp!, {d8, d9, d10, d11, d12}
	fstmfdd	sp!, {d14, d15}
	sub	sp, sp, #300
	ldr	r6, [r1, r0, lsl #2]
	ldr	r1, [r1, #28]
	ldr	r5, [sp, #392]
	ldr	r4, [sp, #396]
	str	r1, [sp, #16]
	ldr	r1, [sp, #400]
	add	r2, r2, r5, lsl #2
	cmp	r1, #0
	beq	.L65
	flds	s24, .L79+16
	vmov.i16	q5, #49152  @ v8hi
	subs	r2, r2, #4
	mov	fp, #0
	add	r5, sp, #40
	vldr	d8, .L79
	vldr	d9, .L79+8
	str	r2, [sp, #24]
	add	r8, r3, #128
	mov	r7, r3
	add	r2, r6, #256
	add	r3, r6, #224
	str	r2, [sp, #28]
	str	r3, [sp, #20]
.L74:
	ldr	r1, [sp, #24]
	add	lr, sp, #296
	mov	r3, r5
.L75:
	ldr	r2, [r1, #4]!
	adds	r3, r3, #32
	ldrb	r0, [r2, r4]	@ zero_extendqisi2
	add	r2, r2, r4
	subs	r0, r0, #128
	fmsr	s0, r0	@ int
	fsitos	s15, s0
	fsts	s15, [r3, #-32]
	ldrb	r0, [r2, #1]	@ zero_extendqisi2
	subs	r0, r0, #128
	fmsr	s1, r0	@ int
	fsitos	s15, s1
	fsts	s15, [r3, #-28]
	ldrb	r0, [r2, #2]	@ zero_extendqisi2
	subs	r0, r0, #128
	fmsr	s2, r0	@ int
	fsitos	s15, s2
	fsts	s15, [r3, #-24]
	ldrb	r0, [r2, #3]	@ zero_extendqisi2
	subs	r0, r0, #128
	fmsr	s3, r0	@ int
	fsitos	s15, s3
	fsts	s15, [r3, #-20]
	ldrb	r0, [r2, #4]	@ zero_extendqisi2
	subs	r0, r0, #128
	fmsr	s4, r0	@ int
	fsitos	s15, s4
	fsts	s15, [r3, #-16]
	ldrb	r0, [r2, #5]	@ zero_extendqisi2
	subs	r0, r0, #128
	fmsr	s5, r0	@ int
	fsitos	s15, s5
	fsts	s15, [r3, #-12]
	ldrb	r0, [r2, #6]	@ zero_extendqisi2
	subs	r0, r0, #128
	fmsr	s6, r0	@ int
	fsitos	s15, s6
	fsts	s15, [r3, #-8]
	ldrb	r2, [r2, #7]	@ zero_extendqisi2
	subs	r2, r2, #128
	fmsr	s7, r2	@ int
	fsitos	s15, s7
	fsts	s15, [r3, #-4]
	cmp	r3, lr
	bne	.L75
	mov	r0, r5
	ldr	r1, [sp, #16]
	blx	r1
	ldr	r2, [sp, #28]
	cmp	r6, r8
	ite	cc
	movcc	r0, #0
	movcs	r0, #1
	cmp	r2, r7
	it	ls
	orrls	r0, r0, #1
	cmp	r0, #0
	beq	.L68
	mov	r3, r6
	vmov	q8, q4  @ v4sf
	vld1.64	{d20-d21}, [r5:64]
	add	ip, r6, #32
	vmov	q13, q4  @ v4sf
	add	lr, r6, #48
	vld1.32	{q7}, [r3]!
	add	r0, r6, #64
	vmla.f32	q8, q7, q10
	add	r1, r6, #80
	vldr	d18, [r5, #16]
	vldr	d19, [r5, #24]
	add	r2, r6, #96
	pld	[r8]
	vldr	d24, [r5, #32]
	vldr	d25, [r5, #40]
	pld	[r7, #144]
	vld1.32	{q7}, [r3]
	add	r3, r6, #112
	vmla.f32	q13, q7, q9
	vld1.32	{q7}, [ip]
	add	ip, r6, #128
	pld	[r7, #160]
	vldr	d22, [r5, #48]
	vldr	d23, [r5, #56]
	vmov	q10, q8  @ v4sf
	pld	[r7, #176]
	vmov	q8, q4  @ v4sf
	vldr	d28, [r5, #64]
	vldr	d29, [r5, #72]
	vcvt.s32.f32	q10, q10
	vldr	d30, [r5, #80]
	vldr	d31, [r5, #88]
	vmla.f32	q8, q7, q12
	vmov	q12, q4  @ v4sf
	vmov	q9, q13  @ v4sf
	vldr	d6, [r5, #96]
	vldr	d7, [r5, #104]
	vmov	q13, q4  @ v4sf
	vldr	d4, [r5, #112]
	vldr	d5, [r5, #120]
	vldr	d2, [r5, #128]
	vldr	d3, [r5, #136]
	vcvt.s32.f32	q9, q9
	vldr	d0, [r5, #144]
	vldr	d1, [r5, #152]
	vmov	q7, q8  @ v4sf
	vld1.32	{q8}, [lr]
	vmla.f32	q12, q8, q11
	add	lr, r7, #16
	vld1.32	{q8}, [r0]
	add	r0, r6, #144
	vcvt.s32.f32	q7, q7
	vmov	q11, q12  @ v4sf
	vmov	q12, q4  @ v4sf
	vcvt.s32.f32	q11, q11
	vmla.f32	q12, q8, q14
	vmov	q14, q4  @ v4sf
	vld1.32	{q8}, [r1]
	add	r1, r6, #160
	vmla.f32	q13, q8, q15
	vmov	q15, q4  @ v4sf
	vld1.32	{q8}, [r2]
	add	r2, r6, #176
	vmla.f32	q14, q8, q3
	vmov	q3, q4  @ v4sf
	vld1.32	{q8}, [r3]
	add	r3, r7, #80
	vmla.f32	q15, q8, q2
	vmov	q2, q4  @ v4sf
	vld1.32	{q8}, [ip]
	vmla.f32	q3, q8, q1
	vld1.32	{q8}, [r0]
	add	r0, r7, #48
	vmla.f32	q2, q8, q0
	vmov	q0, q4  @ v4sf
	vldr	d2, [r5, #160]
	vldr	d3, [r5, #168]
	vld1.32	{q8}, [r1]
	add	r1, r7, #32
	vmla.f32	q0, q8, q1
	vmov	q8, q4  @ v4sf
	vld1.32	{q1}, [r2]
	add	r2, r7, #64
	vcvt.s32.f32	q14, q14
	vcvt.s32.f32	q15, q15
	vcvt.s32.f32	q13, q13
	vcvt.s32.f32	q3, q3
	vst1.64	{d0-d1}, [sp:64]
	vldr	d0, [r5, #176]
	vldr	d1, [r5, #184]
	vmla.f32	q8, q1, q0
	vmovn.i32	d0, q10
	vmovn.i32	d1, q9
	vmovn.i32	d20, q14
	vmovn.i32	d21, q15
	vmov	q15, q4  @ v4sf
	vcvt.s32.f32	q9, q12
	vmovn.i32	d24, q7
	vmovn.i32	d25, q11
	vadd.i16	q10, q10, q5
	vcvt.s32.f32	q2, q2
	vadd.i16	q12, q12, q5
	vmovn.i32	d22, q9
	vmovn.i32	d23, q13
	vadd.i16	q13, q0, q5
	vmov	q0, q4  @ v4sf
	vmov	q1, q8  @ v4sf
	vld1.64	{d16-d17}, [sp:64]
	vcvt.s32.f32	q14, q8
	vmovn.i32	d18, q3
	vmovn.i32	d19, q2
	vcvt.s32.f32	q1, q1
	vst1.16	{q13}, [r7]
	vmov	q13, q4  @ v4sf
	vadd.i16	q11, q11, q5
	vadd.i16	q9, q9, q5
	vst1.16	{q12}, [lr]
	vmovn.i32	d16, q14
	vmovn.i32	d17, q1
	vmov	q14, q4  @ v4sf
	vst1.16	{q11}, [r1]
	add	r1, r6, #192
	vadd.i16	q8, q8, q5
	vst1.16	{q10}, [r0]
	add	r0, r6, #208
	vst1.16	{q9}, [r2]
	add	r2, r6, #240
	vldr	d20, [r5, #192]
	vldr	d21, [r5, #200]
	vldr	d18, [r5, #208]
	vldr	d19, [r5, #216]
	vld1.32	{q12}, [r1]
	add	r1, r7, #96
	vmla.f32	q13, q12, q10
	vld1.32	{q10}, [r0]
	vmla.f32	q14, q10, q9
	vld1.32	{q10}, [r2]
	ldr	r2, [sp, #20]
	vst1.16	{q8}, [r3]
	add	r3, r7, #112
	vldr	d16, [r5, #240]
	vldr	d17, [r5, #248]
	vmla.f32	q15, q10, q8
	vldr	d22, [r5, #224]
	vldr	d23, [r5, #232]
	vcvt.s32.f32	q12, q13
	vld1.32	{q8}, [r2]
	vmla.f32	q0, q8, q11
	vcvt.s32.f32	q8, q14
	vcvt.s32.f32	q10, q15
	vmovn.i32	d18, q12
	vmovn.i32	d19, q8
	vcvt.s32.f32	q11, q0
	vadd.i16	q9, q9, q5
	vst1.16	{q9}, [r1]
	vmovn.i32	d16, q11
	vmovn.i32	d17, q10
	vadd.i16	q8, q8, q5
	vst1.16	{q8}, [r3]
.L69:
	ldr	r1, [sp, #400]
	add	fp, fp, #1
	adds	r4, r4, #8
	add	r8, r8, #128
	adds	r7, r7, #128
	cmp	fp, r1
	bne	.L74
.L65:
	add	sp, sp, #300
	@ sp needed
	fldmfdd	sp!, {d14-d15}
	fldmfdd	sp!, {d8-d12}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L80:
	.align	3
.L79:
	.word	1182793984
	.word	1182793984
	.word	1182793984
	.word	1182793984
	.word	1182793984
.L68:
	mov	r2, r6
	mov	r1, r7
	mov	r3, r5
	str	r6, [sp, #32]
	str	r4, [sp, #36]
.L71:
	flds	s0, [r3]
	adds	r0, r0, #8
	flds	s8, [r2]
	cmp	r0, #56
	flds	s1, [r3, #4]
	rsb	r10, r0, #64
	flds	s9, [r2, #4]
	add	r1, r1, #16
	fcpys	s25, s24
	flds	s2, [r2, #8]
	flds	s10, [r3, #8]
	fmacs	s25, s0, s8
	fcpys	s0, s24
	flds	s3, [r2, #12]
	flds	s11, [r3, #12]
	fmacs	s0, s1, s9
	fcpys	s1, s24
	flds	s4, [r2, #16]
	flds	s12, [r3, #16]
	fmacs	s1, s2, s10
	fcpys	s2, s24
	flds	s5, [r2, #20]
	flds	s13, [r3, #20]
	fmacs	s2, s3, s11
	fcpys	s3, s24
	flds	s6, [r2, #24]
	flds	s14, [r3, #24]
	fmacs	s3, s4, s12
	fcpys	s4, s24
	flds	s7, [r2, #28]
	flds	s15, [r3, #28]
	fmacs	s4, s5, s13
	fcpys	s5, s24
	ftosizs	s8, s25
	fmacs	s5, s6, s14
	fcpys	s6, s24
	ftosizs	s10, s1
	fmacs	s6, s7, s15
	ftosizs	s12, s3
	ftosizs	s11, s2
	ftosizs	s13, s4
	ftosizs	s9, s0
	ftosizs	s14, s5
	fmrs	r6, s8	@ int
	ftosizs	s15, s6
	sub	r4, r6, #16384
	fmrs	ip, s10	@ int
	fmrs	r6, s12	@ int
	sub	ip, ip, #16384
	pld	[r3, #56]
	sub	r6, r6, #16384
	pld	[r2, #56]
	add	r3, r3, #32
	strh	r4, [r1, #-16]	@ movhi
	add	r2, r2, #32
	fmrs	r4, s13	@ int
	fmrs	lr, s11	@ int
	sub	lr, lr, #16384
	strh	ip, [r1, #-12]	@ movhi
	strh	r6, [r1, #-8]	@ movhi
	sub	ip, r4, #16384
	fmrs	r6, s14	@ int
	fmrs	r9, s9	@ int
	fmrs	r4, s15	@ int
	sub	r9, r9, #16384
	strh	lr, [r1, #-10]	@ movhi
	sub	lr, r6, #16384
	sub	r6, r4, #16384
	strh	r9, [r1, #-14]	@ movhi
	strh	ip, [r1, #-6]	@ movhi
	strh	lr, [r1, #-4]	@ movhi
	strh	r6, [r1, #-2]	@ movhi
	bne	.L71
	add	lr, r10, #56
	ldr	r6, [sp, #32]
	ldr	r4, [sp, #36]
	add	lr, r5, lr, lsl #2
	ldr	r1, [sp, #20]
	add	r3, sp, #264
	add	r2, r7, #110
.L72:
	fldmias	r3!, {s15}
	fldmias	r1!, {s14}
	fcpys	s0, s24
	cmp	r3, lr
	fmacs	s0, s14, s15
	ftosizs	s15, s0
	fmrs	r0, s15	@ int
	sub	r0, r0, #16384
	strh	r0, [r2, #2]!	@ movhi
	bne	.L72
	b	.L69
	.size	forward_DCT_float, .-forward_DCT_float
	.section	.text.jinit_forward_dct,"ax",%progbits
	.align	2
	.global	jinit_forward_dct
	.thumb
	.thumb_func
	.type	jinit_forward_dct, %function
jinit_forward_dct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r2, #48
	push	{r4, r5, r6, lr}
	movs	r1, #1
	mov	r5, r0
	ldr	r6, .L89
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r5, #196]
.LPIC46:
	add	r6, pc
	ldr	r2, .L89+4
	mov	r4, r0
	str	r0, [r5, #360]
	cmp	r3, #1
.LPIC44:
	add	r2, pc
	str	r2, [r0]
	beq	.L83
	bcc	.L84
	cmp	r3, #2
	beq	.L85
	ldr	r3, [r5]
	movs	r2, #48
	mov	r0, r5
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L86:
	add	r0, r4, #12
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	add	r0, r4, #32
	movs	r1, #0
	movs	r2, #16
	pop	{r4, r5, r6, lr}
	b	memset(PLT)
.L85:
	ldr	r2, .L89+8
	ldr	r3, .L89+12
.LPIC48:
	add	r2, pc
	str	r2, [r0, #4]
	ldr	r3, [r6, r3]
	str	r3, [r0, #28]
	b	.L86
.L84:
	ldr	r2, .L89+16
	ldr	r3, .L89+20
.LPIC45:
	add	r2, pc
	str	r2, [r0, #4]
	ldr	r3, [r6, r3]
	str	r3, [r0, #8]
	b	.L86
.L83:
	ldr	r2, .L89+24
	ldr	r3, .L89+28
.LPIC47:
	add	r2, pc
	str	r2, [r0, #4]
	ldr	r3, [r6, r3]
	str	r3, [r0, #8]
	b	.L86
.L90:
	.align	2
.L89:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC46+4)
	.word	start_pass_fdctmgr-(.LPIC44+4)
	.word	forward_DCT_float-(.LPIC48+4)
	.word	jpeg_fdct_float(GOT)
	.word	forward_DCT-(.LPIC45+4)
	.word	jpeg_fdct_islow(GOT)
	.word	forward_DCT-(.LPIC47+4)
	.word	jpeg_fdct_ifast(GOT)
	.size	jinit_forward_dct, .-jinit_forward_dct
	.section	.rodata.aanscalefactor.7522,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	aanscalefactor.7522, %object
	.size	aanscalefactor.7522, 64
aanscalefactor.7522:
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
	.section	.rodata.aanscales.7514,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	aanscales.7514, %object
	.size	aanscales.7514, 128
aanscales.7514:
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
