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
	.file	"jidctflt.c"
	.section	.text.jpeg_idct_float,"ax",%progbits
	.align	2
	.global	jpeg_idct_float
	.thumb
	.thumb_func
	.type	jpeg_idct_float, %function
jpeg_idct_float:
	@ args = 4, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #268
	ldr	r4, [r0, #336]
	ldr	r0, [r1, #80]
	mov	r1, r2
	adds	r4, r4, #128
	str	r3, [sp]
	ldr	r8, [sp, #304]
	adds	r2, r2, #2
	adds	r5, r0, #4
	flds	s5, .L23
	flds	s2, .L23+4
	add	fp, r1, #16
	flds	s3, .L23+8
	adds	r0, r0, #64
	flds	s4, .L23+12
	add	r3, sp, #8
	str	r4, [sp, #4]
	b	.L11
.L20:
	cmp	r6, #0
	bne	.L2
	ldrh	r7, [r1, #48]
	ldrh	lr, [r1, #64]
	cmp	r7, #0
	beq	.L5
	ldrh	r9, [r1, #96]
	ldrh	ip, [r1, #80]
	ldrh	r10, [r1, #112]
.L4:
	sxth	r4, r4
	sxth	r7, r7
	sxth	ip, ip
	sxth	r10, r10
	flds	s0, [r0, #-32]
	sxth	r6, r6
	fmsr	s10, r4	@ int
	sxth	r9, r9
	fmsr	s14, r7	@ int
	sxth	lr, lr
	fmsr	s15, ip	@ int
	adds	r3, r3, #4
	fmsr	s12, r10	@ int
	fsitos	s10, s10
	flds	s1, [r0, #160]
	flds	s9, [r0, #32]
	flds	s13, [r0, #96]
	fsitos	s12, s12
	fsitos	s14, s14
	fsitos	s15, s15
	fmuls	s10, s10, s0
	fmuls	s12, s12, s1
	fmuls	s14, s14, s9
	fmuls	s15, s15, s13
	fmsr	s6, r6	@ int
	fmsr	s7, r9	@ int
	fsubs	s13, s10, s12
	fadds	s12, s12, s10
	fsubs	s10, s15, s14
	flds	s0, [r0]
	flds	s1, [r0, #128]
	fsitos	s6, s6
	fsitos	s7, s7
	fadds	s15, s15, s14
	fadds	s9, s13, s10
	fmuls	s6, s6, s0
	fmuls	s7, s7, s1
	fadds	s14, s12, s15
	fmuls	s9, s9, s2
	fsubs	s1, s12, s15
	fadds	s12, s7, s6
	fsubs	s7, s6, s7
	fsubs	s15, s9, s14
	fmscs	s9, s13, s4
	fcpys	s13, s12
	ldrsh	r4, [r2, #-2]
	fmscs	s13, s7, s5
	fmacs	s15, s10, s3
	fmsr	s8, lr	@ int
	fmsr	s11, r4	@ int
	flds	s0, [r0, #64]
	flds	s10, [r5, #-4]
	fsitos	s8, s8
	fsitos	s11, s11
	fcpys	s7, s13
	fcpys	s13, s15
	fmuls	s8, s8, s0
	fmuls	s11, s11, s10
	fmscs	s13, s1, s5
	fadds	s10, s8, s11
	fsubs	s11, s11, s8
	fsubs	s8, s10, s12
	fadds	s9, s9, s13
	fadds	s12, s12, s10
	fsubs	s10, s11, s7
	fadds	s11, s7, s11
	fadds	s0, s9, s8
	fadds	s7, s14, s12
	fadds	s1, s13, s10
	fadds	s6, s15, s11
	fsubs	s9, s8, s9
	fsubs	s13, s10, s13
	fsubs	s15, s11, s15
	fsubs	s12, s12, s14
	fsts	s0, [r3, #124]
	fsts	s9, [r3, #92]
	fsts	s1, [r3, #60]
	fsts	s13, [r3, #156]
	fsts	s6, [r3, #28]
	fsts	s15, [r3, #188]
	fsts	s7, [r3, #-4]
	fsts	s12, [r3, #220]
.L9:
	adds	r1, r1, #2
	adds	r2, r2, #2
	cmp	r1, fp
	add	r5, r5, #4
	add	r0, r0, #4
	beq	.L19
.L11:
	ldrh	r4, [r1, #16]
	ldrh	r6, [r1, #32]
	cmp	r4, #0
	beq	.L20
.L2:
	ldrh	lr, [r1, #64]
	ldrh	r9, [r1, #96]
	ldrh	r7, [r1, #48]
	ldrh	ip, [r1, #80]
	ldrh	r10, [r1, #112]
	b	.L4
.L19:
	ldr	r3, [sp]
	add	r1, sp, #72
	ldr	r4, [sp, #4]
	add	lr, sp, #328
	flds	s3, .L23
	flds	s0, .L23+4
	subs	r5, r3, #4
	flds	s1, .L23+8
	add	r3, sp, #24
	flds	s2, .L23+12
.L13:
	flds	s14, [r3, #4]
	adds	r3, r3, #32
	flds	s15, [r3, #-44]
	flds	s5, [r3, #-36]
	flds	s4, [r3, #-20]
	flds	s10, [r3, #-40]
	flds	s11, [r1, #-64]
	fsubs	s9, s14, s5
	fsubs	s6, s15, s4
	fadds	s5, s5, s14
	fadds	s4, s4, s15
	flds	s14, [r3, #-24]
	fadds	s7, s6, s9
	flds	s15, [r3, #-32]
	fadds	s12, s4, s5
	fadds	s13, s14, s10
	fmuls	s7, s7, s0
	fsubs	s14, s10, s14
	fadds	s10, s15, s11
	fsubs	s11, s11, s15
	fsubs	s15, s7, s12
	fcpys	s8, s13
	fsubs	s5, s4, s5
	fmscs	s8, s14, s3
	fmacs	s15, s9, s1
	fadds	s14, s13, s10
	fmscs	s7, s6, s2
	fadds	s4, s12, s14
	fadds	s9, s8, s11
	fsubs	s12, s14, s12
	fcpys	s14, s15
	ftosizs	s4, s4
	fmscs	s14, s5, s3
	fadds	s6, s15, s9
	ftosizs	s12, s12
	fsubs	s11, s11, s8
	fmrs	r2, s4	@ int
	adds	r2, r2, #4
	fsubs	s15, s9, s15
	ubfx	r2, r2, #3, #10
	ftosizs	s6, s6
	ldrb	r7, [r4, r2]	@ zero_extendqisi2
	ldr	r0, [r5, #4]!
	fmrs	r6, s12	@ int
	fadds	s8, s14, s11
	adds	r6, r6, #4
	ubfx	r6, r6, #3, #10
	ftosizs	s15, s15
	pld	[r1]
	add	r2, r0, r8
	pld	[r1, #16]
	adds	r1, r1, #32
	strb	r7, [r0, r8]
	cmp	r1, lr
	ldrb	r7, [r4, r6]	@ zero_extendqisi2
	fadds	s12, s7, s14
	fsubs	s13, s10, s13
	fmrs	r0, s6	@ int
	add	r0, r0, #4
	fsubs	s14, s11, s14
	ubfx	r0, r0, #3, #10
	ftosizs	s8, s8
	strb	r7, [r2, #7]
	fmrs	r6, s15	@ int
	ldrb	r7, [r4, r0]	@ zero_extendqisi2
	add	r6, r6, #4
	fadds	s15, s12, s13
	ubfx	r6, r6, #3, #10
	ftosizs	s14, s14
	strb	r7, [r2, #1]
	fmrs	r0, s8	@ int
	ldrb	ip, [r4, r6]	@ zero_extendqisi2
	add	r0, r0, #4
	fsubs	s13, s13, s12
	ubfx	r0, r0, #3, #10
	ftosizs	s15, s15
	strb	ip, [r2, #6]
	fmrs	r7, s14	@ int
	ldrb	ip, [r4, r0]	@ zero_extendqisi2
	add	r7, r7, #4
	ubfx	r7, r7, #3, #10
	ftosizs	s13, s13
	fmrs	r6, s15	@ int
	strb	ip, [r2, #2]
	add	r6, r6, #4
	ldrb	r7, [r4, r7]	@ zero_extendqisi2
	ubfx	r6, r6, #3, #10
	fmrs	r0, s13	@ int
	add	r0, r0, #4
	strb	r7, [r2, #5]
	ubfx	r0, r0, #3, #10
	ldrb	r6, [r4, r6]	@ zero_extendqisi2
	strb	r6, [r2, #4]
	ldrb	r0, [r4, r0]	@ zero_extendqisi2
	strb	r0, [r2, #3]
	bne	.L13
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L5:
	cmp	lr, #0
	beq	.L6
	ldrh	r9, [r1, #96]
	mov	r6, r7
	ldrh	ip, [r1, #80]
	ldrh	r10, [r1, #112]
	b	.L4
.L6:
	ldrh	ip, [r1, #80]
	ldrh	r9, [r1, #96]
	cmp	ip, #0
	bne	.L21
	ldrh	r10, [r1, #112]
	cmp	r9, #0
	bne	.L22
	cmp	r10, #0
	bne	.L14
	ldrsh	r4, [r2, #-2]
	adds	r3, r3, #4
	flds	s14, [r5, #-4]
	fmsr	s15, r4	@ int
	fsitos	s15, s15
	fmuls	s15, s15, s14
	fsts	s15, [r3, #-4]
	fsts	s15, [r3, #28]
	fsts	s15, [r3, #60]
	fsts	s15, [r3, #92]
	fsts	s15, [r3, #124]
	fsts	s15, [r3, #156]
	fsts	s15, [r3, #188]
	fsts	s15, [r3, #220]
	b	.L9
.L21:
	mov	r7, lr
	ldrh	r10, [r1, #112]
	mov	r6, lr
	b	.L4
.L22:
	mov	r7, ip
	mov	lr, ip
	mov	r6, ip
	b	.L4
.L24:
	.align	2
.L23:
	.word	1068827891
	.word	1072464734
	.word	-1071170187
	.word	1066044372
.L14:
	mov	ip, r9
	mov	r7, r9
	mov	lr, r9
	mov	r6, r9
	b	.L4
	.size	jpeg_idct_float, .-jpeg_idct_float
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
