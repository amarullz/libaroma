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
	.file	"pngset.c"
	.section	.text.png_set_bKGD,"ax",%progbits
	.align	2
	.global	png_set_bKGD
	.thumb
	.thumb_func
	.type	png_set_bKGD, %function
png_set_bKGD:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	beq	.L8
	cbz	r2, .L8
	push	{r4, r5}
	ldr	r4, [r1, #8]
	ldr	r5, [r2]	@ unaligned
	ldr	r0, [r2, #4]	@ unaligned
	str	r5, [r1, #170]	@ unaligned
	str	r0, [r1, #174]	@ unaligned
	ldrh	r0, [r2, #8]	@ unaligned
	orr	r2, r4, #32
	pop	{r4, r5}
	strh	r0, [r1, #178]	@ unaligned
	str	r2, [r1, #8]
.L8:
	bx	lr
	.size	png_set_bKGD, .-png_set_bKGD
	.section	.text.png_set_cHRM_fixed,"ax",%progbits
	.align	2
	.global	png_set_cHRM_fixed
	.thumb
	.thumb_func
	.type	png_set_cHRM_fixed, %function
png_set_cHRM_fixed:
	@ args = 24, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	sub	sp, sp, #64
	bne	.L18
	add	sp, sp, #64
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L18:
	ldr	r5, [sp, #92]
	mov	r6, r3
	ldr	r3, [sp, #88]
	mov	r7, r2
	str	r7, [sp, #8]
	adds	r1, r1, #40
	str	r5, [sp, #20]
	add	r2, sp, #32
	ldr	r5, [sp, #100]
	mov	r8, r0
	str	r3, [sp, #16]
	ldr	r3, [sp, #96]
	str	r5, [sp, #28]
	ldr	r5, [sp, #104]
	str	r3, [sp, #24]
	movs	r3, #2
	vldr	d16, [sp, #16]
	vldr	d17, [sp, #24]
	str	r5, [sp]
	ldr	r5, [sp, #108]
	str	r6, [sp, #12]
	vstr	d16, [sp, #32]
	vstr	d17, [sp, #40]
	str	r5, [sp, #4]
	vld1.64	{d16-d17}, [sp:64]
	vstr	d16, [sp, #48]
	vstr	d17, [sp, #56]
	bl	png_colorspace_set_chromaticities(PLT)
	cbz	r0, .L12
	ldrh	r3, [r4, #114]
	orr	r3, r3, #16
	strh	r3, [r4, #114]	@ movhi
.L12:
	mov	r0, r8
	mov	r1, r4
	bl	png_colorspace_sync_info(PLT)
	add	sp, sp, #64
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	png_set_cHRM_fixed, .-png_set_cHRM_fixed
	.section	.text.png_set_cHRM_XYZ_fixed,"ax",%progbits
	.align	2
	.global	png_set_cHRM_XYZ_fixed
	.thumb
	.thumb_func
	.type	png_set_cHRM_XYZ_fixed, %function
png_set_cHRM_XYZ_fixed:
	@ args = 28, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r1
	sub	sp, sp, #44
	bne	.L27
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L27:
	mov	r6, r3
	mov	r7, r2
	str	r6, [sp, #4]
	adds	r1, r1, #40
	ldr	r6, [sp, #64]
	mov	r2, sp
	movs	r3, #2
	mov	r5, r0
	str	r7, [sp]
	str	r6, [sp, #8]
	ldr	r6, [sp, #68]
	str	r6, [sp, #12]
	ldr	r6, [sp, #72]
	str	r6, [sp, #16]
	ldr	r6, [sp, #76]
	str	r6, [sp, #20]
	ldr	r6, [sp, #80]
	str	r6, [sp, #24]
	ldr	r6, [sp, #84]
	str	r6, [sp, #28]
	ldr	r6, [sp, #88]
	str	r6, [sp, #32]
	bl	png_colorspace_set_endpoints(PLT)
	cbz	r0, .L21
	ldrh	r3, [r4, #114]
	orr	r3, r3, #16
	strh	r3, [r4, #114]	@ movhi
.L21:
	mov	r0, r5
	mov	r1, r4
	bl	png_colorspace_sync_info(PLT)
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	png_set_cHRM_XYZ_fixed, .-png_set_cHRM_XYZ_fixed
	.section	.text.png_set_cHRM,"ax",%progbits
	.align	2
	.global	png_set_cHRM
	.thumb
	.thumb_func
	.type	png_set_cHRM, %function
png_set_cHRM:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r1
	ldr	r1, .L30
	mov	r4, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14}
	sub	sp, sp, #36
.LPIC0:
	add	r1, pc
	fcpyd	d12, d1
	fcpyd	d11, d2
	fcpyd	d10, d3
	fcpyd	d9, d4
	fcpyd	d8, d5
	fcpyd	d13, d6
	fcpyd	d14, d7
	bl	png_fixed(PLT)
	ldr	r1, .L30+4
	mov	fp, r0
	fcpyd	d0, d12
	mov	r0, r4
.LPIC1:
	add	r1, pc
	bl	png_fixed(PLT)
	ldr	r1, .L30+8
	mov	r9, r0
	fcpyd	d0, d11
	mov	r0, r4
.LPIC2:
	add	r1, pc
	bl	png_fixed(PLT)
	ldr	r1, .L30+12
	mov	r10, r0
	fcpyd	d0, d10
	mov	r0, r4
.LPIC3:
	add	r1, pc
	bl	png_fixed(PLT)
	ldr	r1, .L30+16
	mov	r3, r0
	fcpyd	d0, d9
	mov	r0, r4
	str	r3, [sp, #28]
.LPIC4:
	add	r1, pc
	bl	png_fixed(PLT)
	ldr	r1, .L30+20
	mov	r7, r0
	fcpyd	d0, d8
	mov	r0, r4
.LPIC5:
	add	r1, pc
	bl	png_fixed(PLT)
	ldr	r1, .L30+24
	mov	r6, r0
	fcpyd	d0, d13
	mov	r0, r4
.LPIC6:
	add	r1, pc
	bl	png_fixed(PLT)
	ldr	r1, .L30+28
	mov	r5, r0
	fcpyd	d0, d14
	mov	r0, r4
.LPIC7:
	add	r1, pc
	bl	png_fixed(PLT)
	ldr	r3, [sp, #28]
	mov	r1, r8
	str	r0, [sp, #20]
	mov	r2, fp
	str	r10, [sp]
	mov	r0, r4
	str	r3, [sp, #4]
	mov	r3, r9
	str	r7, [sp, #8]
	str	r6, [sp, #12]
	str	r5, [sp, #16]
	bl	png_set_cHRM_fixed(PLT)
	add	sp, sp, #36
	@ sp needed
	fldmfdd	sp!, {d8-d14}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L31:
	.align	2
.L30:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC3-(.LPIC3+4)
	.word	.LC4-(.LPIC4+4)
	.word	.LC5-(.LPIC5+4)
	.word	.LC6-(.LPIC6+4)
	.word	.LC7-(.LPIC7+4)
	.size	png_set_cHRM, .-png_set_cHRM
	.section	.text.png_set_cHRM_XYZ,"ax",%progbits
	.align	2
	.global	png_set_cHRM_XYZ
	.thumb
	.thumb_func
	.type	png_set_cHRM_XYZ, %function
png_set_cHRM_XYZ:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r1
	ldr	r7, .L34
	mov	r4, r0
	ldr	r6, .L34+4
.LPIC8:
	add	r7, pc
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	mov	r1, r7
	sub	sp, sp, #52
	fcpyd	d12, d1
.LPIC9:
	add	r6, pc
	fcpyd	d11, d2
	fcpyd	d10, d3
	fcpyd	d9, d4
	fcpyd	d8, d5
	fcpyd	d13, d6
	fcpyd	d14, d7
	fldd	d15, [sp, #152]
	bl	png_fixed(PLT)
	fcpyd	d0, d12
	mov	r2, r0
	ldr	r5, .L34+8
	mov	r1, r6
	mov	r0, r4
	str	r2, [sp, #36]
	bl	png_fixed(PLT)
	fcpyd	d0, d11
.LPIC10:
	add	r5, pc
	mov	fp, r0
	mov	r1, r5
	mov	r0, r4
	bl	png_fixed(PLT)
	fcpyd	d0, d10
	mov	r3, r0
	mov	r1, r7
	mov	r0, r4
	str	r3, [sp, #40]
	bl	png_fixed(PLT)
	fcpyd	d0, d9
	mov	r10, r0
	mov	r1, r6
	mov	r0, r4
	bl	png_fixed(PLT)
	fcpyd	d0, d8
	mov	r9, r0
	mov	r1, r5
	mov	r0, r4
	bl	png_fixed(PLT)
	fcpyd	d0, d13
	mov	r1, r7
	str	r0, [sp, #44]
	mov	r0, r4
	bl	png_fixed(PLT)
	fcpyd	d0, d14
	mov	r7, r0
	mov	r1, r6
	mov	r0, r4
	bl	png_fixed(PLT)
	fcpyd	d0, d15
	mov	r6, r0
	mov	r1, r5
	mov	r0, r4
	bl	png_fixed(PLT)
	ldr	r3, [sp, #40]
	mov	r1, r8
	str	r0, [sp, #24]
	mov	r0, r4
	ldr	r4, [sp, #44]
	str	r3, [sp]
	mov	r3, fp
	ldr	r2, [sp, #36]
	str	r10, [sp, #4]
	str	r9, [sp, #8]
	str	r4, [sp, #12]
	str	r7, [sp, #16]
	str	r6, [sp, #20]
	bl	png_set_cHRM_XYZ_fixed(PLT)
	add	sp, sp, #52
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L35:
	.align	2
.L34:
	.word	.LC2-(.LPIC8+4)
	.word	.LC3-(.LPIC9+4)
	.word	.LC8-(.LPIC10+4)
	.size	png_set_cHRM_XYZ, .-png_set_cHRM_XYZ
	.section	.text.png_set_gAMA_fixed,"ax",%progbits
	.align	2
	.global	png_set_gAMA_fixed
	.thumb
	.thumb_func
	.type	png_set_gAMA_fixed, %function
png_set_gAMA_fixed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	bne	.L39
	pop	{r3, r4, r5, pc}
.L39:
	mov	r5, r0
	adds	r1, r1, #40
	bl	png_colorspace_set_gamma(PLT)
	mov	r0, r5
	mov	r1, r4
	pop	{r3, r4, r5, lr}
	b	png_colorspace_sync_info(PLT)
	.size	png_set_gAMA_fixed, .-png_set_gAMA_fixed
	.section	.text.png_set_gAMA,"ax",%progbits
	.align	2
	.global	png_set_gAMA
	.thumb
	.thumb_func
	.type	png_set_gAMA, %function
png_set_gAMA:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	ldr	r1, .L42
	mov	r5, r0
.LPIC17:
	add	r1, pc
	bl	png_fixed(PLT)
	mov	r1, r4
	mov	r2, r0
	mov	r0, r5
	pop	{r3, r4, r5, lr}
	b	png_set_gAMA_fixed(PLT)
.L43:
	.align	2
.L42:
	.word	.LC9-(.LPIC17+4)
	.size	png_set_gAMA, .-png_set_gAMA
	.section	.text.png_set_hIST,"ax",%progbits
	.align	2
	.global	png_set_hIST
	.thumb
	.thumb_func
	.type	png_set_hIST, %function
png_set_hIST:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r3, r4, r5, r6, r7, lr}
	ite	eq
	moveq	r4, #1
	movne	r4, #0
	beq	.L44
	ldrh	r3, [r1, #20]
	mov	r5, r1
	subs	r3, r3, #1
	uxth	r3, r3
	cmp	r3, #255
	bhi	.L64
	mov	r7, r0
	mov	r3, r4
	mov	r6, r2
	movs	r2, #8
	bl	png_free_data(PLT)
	mov	r1, #512
	mov	r0, r7
	bl	png_malloc_warn(PLT)
	mov	r1, r0
	str	r0, [r5, #204]
	cmp	r0, #0
	beq	.L65
	ldr	r3, [r5, #232]
	ldrh	r0, [r5, #20]
	orr	r3, r3, #8
	str	r3, [r5, #232]
	cmp	r0, #0
	beq	.L54
	add	r7, r1, #16
	add	r3, r6, #16
	cmp	r1, r3
	it	cc
	cmpcc	r6, r7
	ite	cs
	movcs	r7, #1
	movcc	r7, #0
	cmp	r0, #9
	ite	ls
	movls	r7, #0
	andhi	r7, r7, #1
	cmp	r7, #0
	beq	.L49
	lsrs	r3, r0, #3
	mov	lr, r6
	mov	r7, r1
	lsls	r2, r3, #3
.L55:
	adds	r4, r4, #1
	vld1.16	{q8}, [lr]!
	cmp	r3, r4
	vst1.16	{q8}, [r7]!
	bhi	.L55
	cmp	r0, r2
	beq	.L54
	ldrh	r4, [r6, r2, lsl #1]
	adds	r3, r2, #1
	cmp	r3, r0
	strh	r4, [r1, r2, lsl #1]	@ movhi
	bge	.L54
	ldrh	r7, [r6, r3, lsl #1]
	adds	r4, r2, #2
	cmp	r0, r4
	strh	r7, [r1, r3, lsl #1]	@ movhi
	ble	.L54
	ldrh	r7, [r6, r4, lsl #1]
	adds	r3, r2, #3
	cmp	r0, r3
	strh	r7, [r1, r4, lsl #1]	@ movhi
	ble	.L54
	ldrh	r7, [r6, r3, lsl #1]
	adds	r4, r2, #4
	cmp	r0, r4
	strh	r7, [r1, r3, lsl #1]	@ movhi
	ble	.L54
	ldrh	r7, [r6, r4, lsl #1]
	adds	r3, r2, #5
	cmp	r0, r3
	strh	r7, [r1, r4, lsl #1]	@ movhi
	ble	.L54
	ldrh	r4, [r6, r3, lsl #1]
	adds	r2, r2, #6
	cmp	r0, r2
	strh	r4, [r1, r3, lsl #1]	@ movhi
	ble	.L54
	ldrh	r3, [r6, r2, lsl #1]
	strh	r3, [r1, r2, lsl #1]	@ movhi
.L54:
	ldr	r3, [r5, #8]
	orr	r3, r3, #64
	str	r3, [r5, #8]
	pop	{r3, r4, r5, r6, r7, pc}
.L44:
	pop	{r3, r4, r5, r6, r7, pc}
.L64:
	ldr	r1, .L66
	pop	{r3, r4, r5, r6, r7, lr}
.LPIC26:
	add	r1, pc
	b	png_warning(PLT)
.L49:
	cmp	r0, #16
	sub	ip, r0, #15
	ble	.L60
	mov	r4, r6
	mov	r3, r1
.L57:
	ldrh	lr, [r4]
	adds	r7, r7, #16
	pld	[r4, #50]
	adds	r2, r7, #1
	cmp	ip, r2
	pld	[r3, #50]
	strh	lr, [r3]	@ movhi
	add	r4, r4, #32
	ldrh	lr, [r4, #-30]
	add	r3, r3, #32
	strh	lr, [r3, #-30]	@ movhi
	ldrh	lr, [r4, #-28]
	strh	lr, [r3, #-28]	@ movhi
	ldrh	lr, [r4, #-26]
	strh	lr, [r3, #-26]	@ movhi
	ldrh	lr, [r4, #-24]
	strh	lr, [r3, #-24]	@ movhi
	ldrh	lr, [r4, #-22]
	strh	lr, [r3, #-22]	@ movhi
	ldrh	lr, [r4, #-20]
	strh	lr, [r3, #-20]	@ movhi
	ldrh	lr, [r4, #-18]
	strh	lr, [r3, #-18]	@ movhi
	ldrh	lr, [r4, #-16]
	strh	lr, [r3, #-16]	@ movhi
	ldrh	lr, [r4, #-14]
	strh	lr, [r3, #-14]	@ movhi
	ldrh	lr, [r4, #-12]
	strh	lr, [r3, #-12]	@ movhi
	ldrh	lr, [r4, #-10]
	strh	lr, [r3, #-10]	@ movhi
	ldrh	lr, [r4, #-8]
	strh	lr, [r3, #-8]	@ movhi
	ldrh	lr, [r4, #-6]
	strh	lr, [r3, #-6]	@ movhi
	ldrh	lr, [r4, #-4]
	strh	lr, [r3, #-4]	@ movhi
	ldrh	lr, [r4, #-2]
	strh	lr, [r3, #-2]	@ movhi
	bgt	.L57
.L56:
	lsls	r7, r7, #1
	movs	r3, #0
	add	r6, r6, r7
	add	r1, r1, r7
.L59:
	ldrh	r4, [r6, r3]
	cmp	r0, r2
	add	r2, r2, #1
	strh	r4, [r1, r3]	@ movhi
	add	r3, r3, #2
	bgt	.L59
	b	.L54
.L65:
	ldr	r1, .L66+4
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, lr}
.LPIC27:
	add	r1, pc
	b	png_warning(PLT)
.L60:
	movs	r2, #1
	b	.L56
.L67:
	.align	2
.L66:
	.word	.LC10-(.LPIC26+4)
	.word	.LC11-(.LPIC27+4)
	.size	png_set_hIST, .-png_set_hIST
	.section	.text.png_set_IHDR,"ax",%progbits
	.align	2
	.global	png_set_IHDR
	.thumb
	.thumb_func
	.type	png_set_IHDR, %function
png_set_IHDR:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	sub	sp, sp, #16
	bne	.L78
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L78:
	ldr	r6, [sp, #52]
	mov	r5, r2
	mov	r2, r3
	ldr	r3, [sp, #48]
	ldr	r1, [sp, #44]
	str	r2, [r4, #4]
	uxtb	r7, r6
	ldr	r6, [sp, #40]
	uxtb	lr, r3
	str	r5, [r4]
	uxtb	ip, r1
	ldr	r1, [sp, #56]
	strb	r6, [r4, #24]
	uxtb	r3, r6
	ldr	r6, [sp, #44]
	uxtb	r8, r1
	mov	r1, r5
	strb	r6, [r4, #25]
	ldr	r6, [sp, #52]
	strb	r6, [r4, #26]
	ldr	r6, [sp, #56]
	strb	r6, [r4, #27]
	ldr	r6, [sp, #48]
	strb	r6, [r4, #28]
	stmia	sp, {ip, lr}
	str	r7, [sp, #8]
	str	r8, [sp, #12]
	bl	png_check_IHDR(PLT)
	ldrb	r2, [r4, #25]	@ zero_extendqisi2
	cmp	r2, #3
	itt	eq
	moveq	r3, #1
	strbeq	r3, [r4, #29]
	beq	.L71
	lsls	r1, r2, #30
	itett	mi
	movmi	r1, #3
	movpl	r1, #1
	movmi	r3, #4
	strbmi	r1, [r4, #29]
	ittet	pl
	movpl	r3, #2
	movpl	r0, r1
	movmi	r0, r1
	strbpl	r1, [r4, #29]
	lsls	r2, r2, #29
	ite	pl
	movpl	r3, r0
	strbmi	r3, [r4, #29]
.L71:
	ldrb	r2, [r4, #24]	@ zero_extendqisi2
	smulbb	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #7
	strb	r3, [r4, #30]
	iteet	ls
	mulls	r5, r5, r3
	lsrhi	r3, r3, #3
	mulhi	r5, r5, r3
	addls	r5, r5, #7
	it	ls
	lsrls	r5, r5, #3
	str	r5, [r4, #12]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	png_set_IHDR, .-png_set_IHDR
	.section	.text.png_set_oFFs,"ax",%progbits
	.align	2
	.global	png_set_oFFs
	.thumb
	.thumb_func
	.type	png_set_oFFs, %function
png_set_oFFs:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	beq	.L83
	push	{r4}
	ldr	r0, [r1, #8]
	str	r3, [r1, #184]
	ldr	r3, [sp, #4]
	orr	r0, r0, #256
	ldr	r4, [sp], #4
	str	r2, [r1, #180]
	strb	r3, [r1, #188]
	str	r0, [r1, #8]
.L83:
	bx	lr
	.size	png_set_oFFs, .-png_set_oFFs
	.section	.text.png_set_pCAL,"ax",%progbits
	.align	2
	.global	png_set_pCAL
	.thumb
	.thumb_func
	.type	png_set_pCAL, %function
png_set_pCAL:
	@ args = 20, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	str	r3, [sp, #8]
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	add	r5, sp, #72
	mov	r6, r1
	ldr	r3, [sp, #64]
	str	r0, [sp]
	ldmia	r5, {r5, r9, r10}
	str	r3, [sp, #12]
	ldr	r3, [sp, #68]
	str	r3, [sp, #4]
	beq	.L84
	cmp	r9, #0
	it	ne
	cmpne	r2, #0
	mov	r8, r2
	beq	.L84
	cmp	r5, #0
	ite	le
	movle	r3, #0
	movgt	r3, #1
	mov	r4, r3
	str	r3, [sp, #16]
	cmp	r10, #0
	ite	ne
	movne	r4, #0
	andeq	r4, r4, #1
	cmp	r4, #0
	bne	.L84
	mov	r0, r2
	bl	strlen(PLT)
	ldr	r3, [sp, #4]
	adds	r0, r0, #1
	str	r0, [sp, #20]
	cmp	r3, #3
	bhi	.L114
	cmp	r5, #255
	bhi	.L87
	ldr	r3, [sp, #16]
	cbz	r3, .L94
	ldr	r7, [r10]
	cmp	r7, #0
	beq	.L91
	mov	fp, r4
	mov	r4, r10
	b	.L92
.L93:
	ldr	r7, [r4, #4]!
	cmp	r7, #0
	beq	.L91
.L92:
	mov	r0, r7
	bl	strlen(PLT)
	mov	r1, r0
	mov	r0, r7
	bl	png_check_fp_string(PLT)
	cmp	r0, #0
	beq	.L91
	add	fp, fp, #1
	cmp	r5, fp
	bgt	.L93
.L94:
	ldr	r0, [sp]
	ldr	r1, [sp, #20]
	bl	png_malloc_warn(PLT)
	str	r0, [r6, #208]
	cmp	r0, #0
	beq	.L115
	mov	r1, r8
	ldr	r2, [sp, #20]
	bl	memcpy(PLT)
	ldr	r3, [sp, #8]
	mov	r0, r9
	strb	r5, [r6, #229]
	str	r3, [r6, #212]
	ldr	r3, [sp, #12]
	str	r3, [r6, #216]
	ldr	r3, [sp, #4]
	strb	r3, [r6, #228]
	bl	strlen(PLT)
	adds	r4, r0, #1
	ldr	r0, [sp]
	mov	r1, r4
	bl	png_malloc_warn(PLT)
	str	r0, [r6, #220]
	cmp	r0, #0
	beq	.L116
	add	r8, r5, #1
	mov	r2, r4
	lsl	r8, r8, #2
	mov	r1, r9
	bl	memcpy(PLT)
	ldr	r0, [sp]
	mov	r1, r8
	bl	png_malloc_warn(PLT)
	mov	r4, r0
	str	r0, [r6, #224]
	cmp	r0, #0
	beq	.L117
	mov	r2, r8
	movs	r1, #0
	bl	memset(PLT)
	ldr	r3, [sp, #16]
	cbz	r3, .L99
	mov	r9, r4
	ldr	r8, [sp]
	movs	r4, #0
	b	.L100
.L98:
	mov	r2, r7
	adds	r4, r4, #1
	ldr	r1, [r10, #-4]
	bl	memcpy(PLT)
	cmp	r5, r4
	ble	.L99
	ldr	r9, [r6, #224]
.L100:
	ldr	r0, [r10], #4
	bl	strlen(PLT)
	adds	r7, r0, #1
	mov	r0, r8
	mov	r1, r7
	bl	png_malloc_warn(PLT)
	str	r0, [r9, r4, lsl #2]
	ldr	r3, [r6, #224]
	ldr	r0, [r3, r4, lsl #2]
	cmp	r0, #0
	bne	.L98
	ldr	r1, .L118
	ldr	r0, [sp]
.LPIC42:
	add	r1, pc
.L113:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_warning(PLT)
.L99:
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #232]
	orr	r2, r2, #1024
	orr	r3, r3, #128
	str	r2, [r6, #8]
	str	r3, [r6, #232]
.L84:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L115:
	ldr	r1, .L118+4
	ldr	r0, [sp]
.LPIC39:
	add	r1, pc
	b	.L113
.L116:
	ldr	r1, .L118+8
	ldr	r0, [sp]
.LPIC40:
	add	r1, pc
	b	.L113
.L117:
	ldr	r1, .L118+12
	ldr	r0, [sp]
.LPIC41:
	add	r1, pc
	b	.L113
.L91:
	ldr	r1, .L118+16
	ldr	r0, [sp]
.LPIC37:
	add	r1, pc
	bl	png_error(PLT)
.L114:
	ldr	r1, .L118+20
	ldr	r0, [sp]
.LPIC36:
	add	r1, pc
	bl	png_error(PLT)
.L87:
	ldr	r1, .L118+24
	ldr	r0, [sp]
.LPIC38:
	add	r1, pc
	bl	png_error(PLT)
.L119:
	.align	2
.L118:
	.word	.LC18-(.LPIC42+4)
	.word	.LC15-(.LPIC39+4)
	.word	.LC16-(.LPIC40+4)
	.word	.LC17-(.LPIC41+4)
	.word	.LC13-(.LPIC37+4)
	.word	.LC12-(.LPIC36+4)
	.word	.LC14-(.LPIC38+4)
	.size	png_set_pCAL, .-png_set_pCAL
	.section	.text.png_set_sCAL_s,"ax",%progbits
	.align	2
	.global	png_set_sCAL_s
	.thumb
	.thumb_func
	.type	png_set_sCAL_s, %function
png_set_sCAL_s:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r6, [sp, #32]
	mov	r4, r1
	beq	.L120
	mov	r5, r3
	subs	r3, r2, #1
	cmp	r3, #1
	mov	r10, r2
	bhi	.L148
	mov	r9, r0
	cmp	r5, #0
	beq	.L124
	mov	r0, r5
	bl	strlen(PLT)
	mov	r7, r0
	cmp	r0, #0
	beq	.L124
	ldrb	r3, [r5]	@ zero_extendqisi2
	cmp	r3, #45
	beq	.L124
	mov	r0, r5
	mov	r1, r7
	bl	png_check_fp_string(PLT)
	cmp	r0, #0
	beq	.L124
	cmp	r6, #0
	beq	.L126
	mov	r0, r6
	bl	strlen(PLT)
	mov	r8, r0
	cmp	r0, #0
	beq	.L126
	ldrb	r3, [r6]	@ zero_extendqisi2
	cmp	r3, #45
	beq	.L126
	mov	r0, r6
	mov	r1, r8
	bl	png_check_fp_string(PLT)
	cmp	r0, #0
	beq	.L126
	adds	r7, r7, #1
	strb	r10, [r4, #252]
	mov	r1, r7
	mov	r0, r9
	bl	png_malloc_warn(PLT)
	str	r0, [r4, #256]
	cbz	r0, .L149
	mov	r1, r5
	mov	r2, r7
	add	r8, r8, #1
	bl	memcpy(PLT)
	mov	r1, r8
	mov	r0, r9
	bl	png_malloc_warn(PLT)
	mov	r5, r0
	str	r0, [r4, #260]
	cbz	r0, .L150
	mov	r2, r8
	mov	r1, r6
	bl	memcpy(PLT)
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #232]
	orr	r2, r2, #16384
	orr	r3, r3, #256
	str	r2, [r4, #8]
	str	r3, [r4, #232]
.L120:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L150:
	mov	r0, r9
	ldr	r1, [r4, #256]
	bl	png_free(PLT)
	ldr	r1, .L151
	mov	r0, r9
	str	r5, [r4, #256]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
.LPIC47:
	add	r1, pc
	b	png_warning(PLT)
.L149:
	ldr	r1, .L151+4
	mov	r0, r9
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
.LPIC46:
	add	r1, pc
	b	png_warning(PLT)
.L126:
	ldr	r1, .L151+8
	mov	r0, r9
.LPIC45:
	add	r1, pc
	bl	png_error(PLT)
.L124:
	ldr	r1, .L151+12
	mov	r0, r9
.LPIC44:
	add	r1, pc
	bl	png_error(PLT)
.L148:
	ldr	r1, .L151+16
.LPIC43:
	add	r1, pc
	bl	png_error(PLT)
.L152:
	.align	2
.L151:
	.word	.LC22-(.LPIC47+4)
	.word	.LC22-(.LPIC46+4)
	.word	.LC21-(.LPIC45+4)
	.word	.LC20-(.LPIC44+4)
	.word	.LC19-(.LPIC43+4)
	.size	png_set_sCAL_s, .-png_set_sCAL_s
	.section	.text.png_set_sCAL,"ax",%progbits
	.align	2
	.global	png_set_sCAL
	.thumb
	.thumb_func
	.type	png_set_sCAL, %function
png_set_sCAL:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	fcmpezd	d0
	fmstat
	push	{r4, r5, r6, r7, r8, lr}
	fstmfdd	sp!, {d8}
	sub	sp, sp, #48
	bls	.L164
	fcmpezd	d1
	fmstat
	fcpyd	d8, d1
	bls	.L165
	add	r5, sp, #8
	mov	r4, r0
	mov	r8, r1
	mov	r7, r2
	mov	r1, r5
	movs	r2, #18
	movs	r3, #5
	add	r6, sp, #28
	bl	png_ascii_from_fp(PLT)
	mov	r1, r6
	mov	r0, r4
	movs	r2, #18
	movs	r3, #5
	fcpyd	d0, d8
	bl	png_ascii_from_fp(PLT)
	str	r6, [sp]
	mov	r3, r5
	mov	r0, r4
	mov	r1, r8
	mov	r2, r7
	bl	png_set_sCAL_s(PLT)
.L153:
	add	sp, sp, #48
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, pc}
.L165:
	ldr	r1, .L166
.LPIC49:
	add	r1, pc
	bl	png_warning(PLT)
	add	sp, sp, #48
	@ sp needed
	fldmfdd	sp!, {d8}
	pop	{r4, r5, r6, r7, r8, pc}
.L164:
	ldr	r1, .L166+4
.LPIC48:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L153
.L167:
	.align	2
.L166:
	.word	.LC24-(.LPIC49+4)
	.word	.LC23-(.LPIC48+4)
	.size	png_set_sCAL, .-png_set_sCAL
	.section	.text.png_set_sCAL_fixed,"ax",%progbits
	.align	2
	.global	png_set_sCAL_fixed
	.thumb
	.thumb_func
	.type	png_set_sCAL_fixed, %function
png_set_sCAL_fixed:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #48
	ldr	r4, [sp, #72]
	ble	.L173
	cmp	r4, #0
	ble	.L174
	add	r6, sp, #8
	mov	r8, r1
	mov	r7, r2
	mov	r1, r6
	movs	r2, #18
	mov	r5, r0
	bl	png_ascii_from_fixed(PLT)
	mov	r3, r4
	add	r4, sp, #28
	mov	r1, r4
	mov	r0, r5
	movs	r2, #18
	bl	png_ascii_from_fixed(PLT)
	str	r4, [sp]
	mov	r3, r6
	mov	r0, r5
	mov	r1, r8
	mov	r2, r7
	bl	png_set_sCAL_s(PLT)
.L168:
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L174:
	ldr	r1, .L175
.LPIC51:
	add	r1, pc
	bl	png_warning(PLT)
	add	sp, sp, #48
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L173:
	ldr	r1, .L175+4
.LPIC50:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L168
.L176:
	.align	2
.L175:
	.word	.LC24-(.LPIC51+4)
	.word	.LC23-(.LPIC50+4)
	.size	png_set_sCAL_fixed, .-png_set_sCAL_fixed
	.section	.text.png_set_pHYs,"ax",%progbits
	.align	2
	.global	png_set_pHYs
	.thumb
	.thumb_func
	.type	png_set_pHYs, %function
png_set_pHYs:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	beq	.L181
	push	{r4}
	ldr	r0, [r1, #8]
	str	r3, [r1, #196]
	ldr	r3, [sp, #4]
	orr	r0, r0, #128
	ldr	r4, [sp], #4
	str	r2, [r1, #192]
	strb	r3, [r1, #200]
	str	r0, [r1, #8]
.L181:
	bx	lr
	.size	png_set_pHYs, .-png_set_pHYs
	.section	.text.png_set_PLTE,"ax",%progbits
	.align	2
	.global	png_set_PLTE
	.thumb
	.thumb_func
	.type	png_set_PLTE, %function
png_set_PLTE:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	beq	.L191
	cmp	r3, #256
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r3
	mov	r4, r1
	bhi	.L192
	mov	r7, r2
	cmp	r3, #0
	ite	le
	movle	r2, #0
	movgt	r2, #1
	cmp	r7, #0
	mov	r6, r0
	it	ne
	movne	r2, #0
	cmp	r2, #0
	bne	.L186
	cbnz	r3, .L187
	ldr	r2, [r0, #948]
	lsls	r2, r2, #31
	bpl	.L186
	mov	r2, #4096
	bl	png_free_data(PLT)
	mov	r0, r6
	mov	r1, #768
	bl	png_calloc(PLT)
	mov	r3, r0
	str	r0, [r6, #656]
.L189:
	ldr	r1, [r4, #232]
	uxth	r5, r5
	ldr	r2, [r4, #8]
	strh	r5, [r6, #660]	@ movhi
	orr	r1, r1, #4096
	strh	r5, [r4, #20]	@ movhi
	orr	r2, r2, #8
	str	r3, [r4, #16]
	str	r1, [r4, #232]
	str	r2, [r4, #8]
	pop	{r3, r4, r5, r6, r7, pc}
.L192:
	ldrb	r3, [r1, #25]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L193
	ldr	r1, .L194
	pop	{r3, r4, r5, r6, r7, lr}
.LPIC53:
	add	r1, pc
	b	png_warning(PLT)
.L191:
	bx	lr
.L187:
	mov	r3, r2
	mov	r2, #4096
	bl	png_free_data(PLT)
	mov	r1, #768
	mov	r0, r6
	bl	png_calloc(PLT)
	mov	r1, r7
	str	r0, [r6, #656]
	add	r2, r5, r5, lsl #1
	bl	memcpy(PLT)
	mov	r3, r0
	b	.L189
.L186:
	ldr	r1, .L194+4
	mov	r0, r6
.LPIC54:
	add	r1, pc
	bl	png_error(PLT)
.L193:
	ldr	r1, .L194+8
.LPIC52:
	add	r1, pc
	bl	png_error(PLT)
.L195:
	.align	2
.L194:
	.word	.LC25-(.LPIC53+4)
	.word	.LC26-(.LPIC54+4)
	.word	.LC25-(.LPIC52+4)
	.size	png_set_PLTE, .-png_set_PLTE
	.section	.text.png_set_sBIT,"ax",%progbits
	.align	2
	.global	png_set_sBIT
	.thumb
	.thumb_func
	.type	png_set_sBIT, %function
png_set_sBIT:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	beq	.L196
	cbz	r2, .L196
	ldr	r0, [r2]	@ unaligned
	ldr	r3, [r1, #8]
	str	r0, [r1, #148]	@ unaligned
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	orr	r3, r3, #2
	str	r3, [r1, #8]
	strb	r2, [r1, #152]
.L196:
	bx	lr
	.size	png_set_sBIT, .-png_set_sBIT
	.section	.text.png_set_sRGB,"ax",%progbits
	.align	2
	.global	png_set_sRGB
	.thumb
	.thumb_func
	.type	png_set_sRGB, %function
png_set_sRGB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	bne	.L204
	pop	{r3, r4, r5, pc}
.L204:
	mov	r5, r0
	adds	r1, r1, #40
	bl	png_colorspace_set_sRGB(PLT)
	mov	r0, r5
	mov	r1, r4
	pop	{r3, r4, r5, lr}
	b	png_colorspace_sync_info(PLT)
	.size	png_set_sRGB, .-png_set_sRGB
	.section	.text.png_set_sRGB_gAMA_and_cHRM,"ax",%progbits
	.align	2
	.global	png_set_sRGB_gAMA_and_cHRM
	.thumb
	.thumb_func
	.type	png_set_sRGB_gAMA_and_cHRM, %function
png_set_sRGB_gAMA_and_cHRM:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	bne	.L212
	pop	{r3, r4, r5, pc}
.L212:
	adds	r1, r1, #40
	mov	r5, r0
	bl	png_colorspace_set_sRGB(PLT)
	cbz	r0, .L207
	ldrh	r3, [r4, #114]
	orr	r3, r3, #24
	strh	r3, [r4, #114]	@ movhi
.L207:
	mov	r0, r5
	mov	r1, r4
	pop	{r3, r4, r5, lr}
	b	png_colorspace_sync_info(PLT)
	.size	png_set_sRGB_gAMA_and_cHRM, .-png_set_sRGB_gAMA_and_cHRM
	.section	.text.png_set_iCCP,"ax",%progbits
	.align	2
	.global	png_set_iCCP
	.thumb
	.thumb_func
	.type	png_set_iCCP, %function
png_set_iCCP:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #8
	mov	r4, r1
	ldr	r7, [sp, #40]
	ldr	r8, [sp, #44]
	beq	.L213
	cmp	r7, #0
	it	ne
	cmpne	r2, #0
	mov	r5, r2
	beq	.L213
	mov	r6, r0
	cmp	r3, #0
	bne	.L228
.L217:
	str	r7, [sp]
	add	r1, r4, #40
	ldrb	lr, [r4, #25]	@ zero_extendqisi2
	mov	r0, r6
	mov	r2, r5
	mov	r3, r8
	str	lr, [sp, #4]
	bl	png_colorspace_set_ICC(PLT)
	mov	r1, r4
	mov	r9, r0
	mov	r0, r6
	bl	png_colorspace_sync_info(PLT)
	cmp	r9, #0
	bne	.L229
.L213:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L229:
	ldrh	r3, [r4, #114]
	mov	r0, r5
	orr	r3, r3, #24
	strh	r3, [r4, #114]	@ movhi
	bl	strlen(PLT)
	add	r9, r0, #1
	mov	r0, r6
	mov	r1, r9
	bl	png_malloc_warn(PLT)
	mov	r10, r0
	cbz	r0, .L230
	mov	r1, r5
	mov	r2, r9
	bl	memcpy(PLT)
	mov	r0, r6
	mov	r1, r8
	bl	png_malloc_warn(PLT)
	mov	r5, r0
	cbz	r0, .L231
	mov	r1, r7
	mov	r2, r8
	bl	memcpy(PLT)
	mov	r0, r6
	mov	r1, r4
	movs	r2, #16
	movs	r3, #0
	bl	png_free_data(PLT)
	ldr	r2, [r4, #232]
	ldr	r3, [r4, #8]
	str	r8, [r4, #124]
	orr	r2, r2, #16
	str	r10, [r4, #116]
	orr	r3, r3, #4096
	str	r5, [r4, #120]
	str	r2, [r4, #232]
	str	r3, [r4, #8]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L228:
	ldr	r1, .L232
.LPIC55:
	add	r1, pc
	bl	png_app_error(PLT)
	b	.L217
.L230:
	ldr	r1, .L232+4
	mov	r0, r6
.LPIC56:
	add	r1, pc
.L227:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	png_benign_error(PLT)
.L231:
	mov	r1, r10
	mov	r0, r6
	bl	png_free(PLT)
	ldr	r1, .L232+8
	mov	r0, r6
.LPIC57:
	add	r1, pc
	b	.L227
.L233:
	.align	2
.L232:
	.word	.LC27-(.LPIC55+4)
	.word	.LC28-(.LPIC56+4)
	.word	.LC29-(.LPIC57+4)
	.size	png_set_iCCP, .-png_set_iCCP
	.section	.text.png_set_text_2,"ax",%progbits
	.align	2
	.global	png_set_text_2
	.thumb
	.thumb_func
	.type	png_set_text_2, %function
png_set_text_2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	mov	r4, r1
	str	r0, [sp, #16]
	str	r3, [sp, #12]
	beq	.L237
	cmp	r2, #0
	it	ne
	cmpne	r3, #0
	mov	r6, r2
	mov	r1, r3
	ble	.L237
	ldr	r2, [r4, #128]
	ldr	r3, [r4, #132]
	subs	r3, r3, r2
	cmp	r1, r3
	bgt	.L238
	ldr	fp, [r4, #136]
	mov	r9, r2
.L239:
	ldr	r3, .L278
	movs	r5, #0
	add	r10, r6, #32
.LPIC59:
	add	r3, pc
	str	r3, [sp, #20]
.L256:
	ldr	r0, [r10, #-28]
	pld	[r10]
	cmp	r0, #0
	beq	.L243
	ldr	r7, [r10, #-32]
	adds	r2, r7, #1
	cmp	r2, #3
	bhi	.L275
	bl	strlen(PLT)
	cmp	r7, #0
	mov	r6, r0
	ble	.L258
	ldr	r0, [r10, #-12]
	cmp	r0, #0
	beq	.L259
	bl	strlen(PLT)
	str	r0, [sp, #8]
.L246:
	ldr	r0, [r10, #-8]
	mov	r8, r0
	cbz	r0, .L245
	bl	strlen(PLT)
	mov	r8, r0
.L245:
	ldr	r0, [r10, #-24]
	rsb	r9, r9, r9, lsl #3
	add	fp, fp, r9, lsl #2
	cmp	r0, #0
	beq	.L247
	ldrb	r2, [r0]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L247
	bl	strlen(PLT)
	mov	r9, r0
	str	r7, [fp]
.L250:
	ldr	r3, [sp, #8]
	adds	r1, r6, #4
	ldr	r0, [sp, #16]
	add	r1, r1, r3
	add	r1, r1, r8
	add	r1, r1, r9
	bl	png_malloc_base(PLT)
	str	r0, [fp, #4]
	cmp	r0, #0
	beq	.L276
	ldr	r1, [r10, #-28]
	mov	r2, r6
	bl	memcpy(PLT)
	ldr	r2, [fp, #4]
	mov	r1, #0
	strb	r1, [r2, r6]
	ldr	r2, [r10, #-32]
	cmp	r2, #0
	ble	.L252
	ldr	r1, [fp, #4]
	adds	r6, r6, #1
	ldr	r2, [sp, #8]
	adds	r0, r1, r6
	str	r0, [fp, #20]
	ldr	r1, [r10, #-12]
	bl	memcpy(PLT)
	ldr	r1, [fp, #20]
	mov	r3, #0
	ldr	r6, [sp, #8]
	mov	r2, r8
	ldr	r0, [sp, #8]
	strb	r3, [r1, r6]
	ldr	r1, [fp, #20]
	adds	r0, r0, #1
	add	r0, r0, r1
	str	r0, [fp, #24]
	ldr	r1, [r10, #-8]
	bl	memcpy(PLT)
	ldr	r2, [fp, #24]
	mov	r1, #0
	add	r0, r8, #1
	strb	r1, [r2, r8]
	ldr	r2, [fp, #24]
	add	r0, r0, r2
	str	r0, [fp, #8]
	cmp	r9, #0
	bne	.L277
.L254:
	mov	r6, #0
	strb	r6, [r0, r9]
	ldr	r1, [fp]
	ldr	r2, [r4, #128]
	cmp	r1, #0
	iteet	gt
	movgt	r0, r9
	movle	r0, #0
	movle	r1, r9
	movgt	r1, #0
	adds	r2, r2, #1
	str	r0, [fp, #16]
	str	r1, [fp, #12]
	str	r2, [r4, #128]
.L243:
	ldr	r6, [sp, #12]
	adds	r5, r5, #1
	add	r10, r10, #28
	cmp	r6, r5
	ble	.L237
	ldr	fp, [r4, #136]
	ldr	r9, [r4, #128]
	b	.L256
.L237:
	movs	r0, #0
.L236:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L238:
	movw	r3, #65535
	ldr	r1, [sp, #12]
	movt	r3, 32767
	subs	r3, r3, r2
	cmp	r1, r3
	ble	.L240
.L242:
	ldr	r1, .L278+4
	movs	r2, #1
	ldr	r0, [sp, #16]
.LPIC58:
	add	r1, pc
	bl	png_chunk_report(PLT)
	movs	r0, #1
	b	.L236
.L247:
	cmp	r7, #0
	mov	r9, #0
	itete	gt
	movgt	r1, #1
	movle	r3, #-1
	strgt	r1, [fp]
	strle	r3, [fp]
	b	.L250
.L252:
	ldr	r2, [fp, #4]
	adds	r6, r6, #1
	movs	r3, #0
	str	r3, [fp, #20]
	adds	r0, r2, r6
	str	r3, [fp, #24]
	str	r0, [fp, #8]
	cmp	r9, #0
	beq	.L254
.L277:
	ldr	r1, [r10, #-24]
	mov	r2, r9
	bl	memcpy(PLT)
	ldr	r0, [fp, #8]
	b	.L254
.L275:
	ldr	r0, [sp, #16]
	movs	r2, #1
	ldr	r1, [sp, #20]
	bl	png_chunk_report(PLT)
	b	.L243
.L258:
	mov	r8, #0
	str	r8, [sp, #8]
	b	.L245
.L259:
	str	r0, [sp, #8]
	b	.L246
.L276:
	ldr	r1, .L278+8
	movs	r2, #1
	ldr	r0, [sp, #16]
.LPIC60:
	add	r1, pc
	bl	png_chunk_report(PLT)
	movs	r0, #1
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L240:
	mov	r0, r1
	movw	r1, #65526
	add	r0, r0, r2
	movt	r1, 32767
	cmp	r0, r1
	ldr	r1, [r4, #136]
	itet	le
	addle	r0, r0, #8
	mvngt	r5, #-2147483648
	bicle	r5, r0, #7
	mov	r0, #28
	str	r0, [sp]
	it	le
	suble	r3, r5, r2
	ldr	r0, [sp, #16]
	bl	png_realloc_array(PLT)
	mov	r7, r0
	cmp	r0, #0
	beq	.L242
	ldr	r0, [sp, #16]
	mov	fp, r7
	ldr	r1, [r4, #136]
	bl	png_free(PLT)
	ldr	r3, [r4, #232]
	ldr	r9, [r4, #128]
	str	r7, [r4, #136]
	orr	r3, r3, #16384
	str	r5, [r4, #132]
	str	r3, [r4, #232]
	b	.L239
.L279:
	.align	2
.L278:
	.word	.LC31-(.LPIC59+4)
	.word	.LC30-(.LPIC58+4)
	.word	.LC32-(.LPIC60+4)
	.size	png_set_text_2, .-png_set_text_2
	.section	.text.png_set_text,"ax",%progbits
	.align	2
	.global	png_set_text
	.thumb
	.thumb_func
	.type	png_set_text, %function
png_set_text:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	png_set_text_2(PLT)
	cbnz	r0, .L283
	pop	{r4, pc}
.L283:
	ldr	r1, .L284
	mov	r0, r4
.LPIC61:
	add	r1, pc
	bl	png_error(PLT)
.L285:
	.align	2
.L284:
	.word	.LC33-(.LPIC61+4)
	.size	png_set_text, .-png_set_text
	.section	.text.png_set_tIME,"ax",%progbits
	.align	2
	.global	png_set_tIME
	.thumb
	.thumb_func
	.type	png_set_tIME, %function
png_set_tIME:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	mov	r3, r1
	beq	.L295
	cbz	r2, .L295
	ldr	r1, [r0, #448]
	lsls	r1, r1, #22
	bmi	.L295
	ldrb	r1, [r2, #2]	@ zero_extendqisi2
	subs	r1, r1, #1
	cmp	r1, #11
	bhi	.L288
	ldrb	r1, [r2, #3]	@ zero_extendqisi2
	subs	r1, r1, #1
	cmp	r1, #30
	bhi	.L288
	ldrb	r1, [r2, #4]	@ zero_extendqisi2
	cmp	r1, #23
	bhi	.L288
	ldrb	r1, [r2, #5]	@ zero_extendqisi2
	cmp	r1, #59
	bhi	.L288
	ldrb	r1, [r2, #6]	@ zero_extendqisi2
	cmp	r1, #60
	bhi	.L288
	push	{r4, r5}
	add	r4, r3, #140
	ldr	r5, [r3, #8]
	ldr	r0, [r2]	@ unaligned
	ldr	r1, [r2, #4]	@ unaligned
	orr	r5, r5, #512
	stmia	r4!, {r0, r1}
	str	r5, [r3, #8]
	pop	{r4, r5}
.L295:
	bx	lr
.L288:
	ldr	r1, .L296
.LPIC62:
	add	r1, pc
	b	png_warning(PLT)
.L297:
	.align	2
.L296:
	.word	.LC34-(.LPIC62+4)
	.size	png_set_tIME, .-png_set_tIME
	.section	.text.png_set_tRNS,"ax",%progbits
	.align	2
	.global	png_set_tRNS
	.thumb
	.thumb_func
	.type	png_set_tRNS, %function
png_set_tRNS:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, [sp, #24]
	mov	r7, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	beq	.L298
	mov	r8, r2
	mov	r6, r0
	mov	r4, r1
	cbz	r2, .L302
	mov	r2, #8192
	bl	png_free_data(PLT)
	mov	r0, r6
	mov	r1, #256
	bl	png_malloc(PLT)
	subs	r2, r7, #1
	str	r0, [r4, #156]
	cmp	r2, #255
	str	r0, [r6, #768]
	bls	.L316
.L302:
	cbz	r5, .L304
	ldrb	r2, [r4, #24]	@ zero_extendqisi2
	movs	r1, #1
	ldrb	r3, [r4, #25]	@ zero_extendqisi2
	lsl	r2, r1, r2
	cbnz	r3, .L305
	ldrh	r3, [r5, #8]
	cmp	r2, r3
	blt	.L306
.L307:
	ldr	r0, [r5]	@ unaligned
	add	r6, r4, #160
	ldr	r1, [r5, #4]	@ unaligned
	stmia	r6!, {r0, r1}
	ldrh	r3, [r5, #8]	@ unaligned
	strh	r3, [r6]	@ unaligned
	cbz	r7, .L311
	uxth	r7, r7
.L308:
	strh	r7, [r4, #22]	@ movhi
.L310:
	ldr	r2, [r4, #8]
	ldr	r3, [r4, #232]
	orr	r2, r2, #16
	orr	r3, r3, #8192
	str	r2, [r4, #8]
	str	r3, [r4, #232]
	pop	{r4, r5, r6, r7, r8, pc}
.L304:
	strh	r7, [r4, #22]	@ movhi
	cmp	r7, #0
	bne	.L310
.L298:
	pop	{r4, r5, r6, r7, r8, pc}
.L305:
	cmp	r3, #2
	bne	.L307
	ldrh	r3, [r5, #2]
	cmp	r2, r3
	blt	.L306
	ldrh	r3, [r5, #4]
	cmp	r2, r3
	bge	.L317
.L306:
	ldr	r1, .L318
	mov	r0, r6
.LPIC63:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L307
.L311:
	movs	r7, #1
	b	.L308
.L316:
	mov	r1, r8
	mov	r2, r7
	bl	memcpy(PLT)
	b	.L302
.L317:
	ldrh	r3, [r5, #6]
	cmp	r2, r3
	bge	.L307
	b	.L306
.L319:
	.align	2
.L318:
	.word	.LC35-(.LPIC63+4)
	.size	png_set_tRNS, .-png_set_tRNS
	.section	.text.png_set_sPLT,"ax",%progbits
	.align	2
	.global	png_set_sPLT
	.thumb
	.thumb_func
	.type	png_set_sPLT, %function
png_set_sPLT:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r1
	sub	sp, sp, #8
	beq	.L320
	cmp	r2, #0
	it	ne
	cmpne	r3, #0
	mov	r4, r2
	mov	r7, r3
	bgt	.L342
.L320:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L342:
	movs	r5, #16
	ldr	r1, [r1, #244]
	ldr	r2, [r6, #248]
	mov	r8, r0
	str	r5, [sp]
	bl	png_realloc_array(PLT)
	ldr	r1, .L344
	mov	r5, r0
	mov	r0, r8
.LPIC72:
	add	r1, pc
	cmp	r5, #0
	beq	.L341
	ldr	r1, [r6, #244]
	adds	r4, r4, #36
	bl	png_free(PLT)
	ldr	r3, [r6, #232]
	ldr	r2, [r6, #248]
	ldr	r10, .L344+4
	orr	r3, r3, #32
	str	r5, [r6, #244]
	str	r3, [r6, #232]
.LPIC73:
	add	r10, pc
	add	r5, r5, r2, lsl #4
	b	.L330
.L326:
	ldrb	r3, [r4, #-32]	@ zero_extendqisi2
	strb	r3, [r5, #4]
	bl	strlen(PLT)
	add	r9, r0, #1
	mov	r0, r8
	mov	r1, r9
	bl	png_malloc_base(PLT)
	mov	r2, r9
	str	r0, [r5]
	cbz	r0, .L328
	ldr	r1, [r4, #-36]
	bl	memcpy(PLT)
	mov	r0, r8
	ldr	r1, [r4, #-24]
	movs	r2, #10
	bl	png_malloc_array(PLT)
	str	r0, [r5, #8]
	cbz	r0, .L343
	ldr	r3, [r4, #-24]
	adds	r5, r5, #16
	str	r3, [r5, #-4]
	ldr	r2, [r4, #-24]
	ldr	r1, [r4, #-28]
	add	r2, r2, r2, lsl #2
	lsls	r2, r2, #1
	bl	memcpy(PLT)
	ldr	r2, [r6, #8]
	ldr	r3, [r6, #248]
	orr	r2, r2, #8192
	adds	r3, r3, #1
	str	r2, [r6, #8]
	str	r3, [r6, #248]
.L327:
	subs	r7, r7, #1
	add	r4, r4, #16
	beq	.L320
.L330:
	ldr	r3, [r4, #-36]
	pld	[r4]
	mov	r0, r3
	cbz	r3, .L325
	ldr	r3, [r4, #-28]
	cmp	r3, #0
	bne	.L326
.L325:
	mov	r0, r8
	mov	r1, r10
	bl	png_app_error(PLT)
	b	.L327
.L343:
	ldr	r1, [r5]
	mov	r0, r8
	bl	png_free(PLT)
.L328:
	cmp	r7, #0
	ble	.L320
	ldr	r1, .L344+8
	mov	r0, r8
.LPIC74:
	add	r1, pc
.L341:
	movs	r2, #1
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	png_chunk_report(PLT)
.L345:
	.align	2
.L344:
	.word	.LC36-(.LPIC72+4)
	.word	.LC37-(.LPIC73+4)
	.word	.LC38-(.LPIC74+4)
	.size	png_set_sPLT, .-png_set_sPLT
	.section	.text.png_set_unknown_chunks,"ax",%progbits
	.align	2
	.global	png_set_unknown_chunks
	.thumb
	.thumb_func
	.type	png_set_unknown_chunks, %function
png_set_unknown_chunks:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r1
	sub	sp, sp, #20
	beq	.L346
	cmp	r2, #0
	it	ne
	cmpne	r3, #0
	mov	r6, r2
	mov	r7, r3
	ite	le
	movle	r9, #1
	movgt	r9, #0
	bgt	.L369
.L346:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L369:
	movs	r4, #20
	ldr	r1, [r1, #236]
	ldr	r2, [r8, #240]
	mov	fp, r0
	str	r4, [sp]
	bl	png_realloc_array(PLT)
	mov	r4, r0
	mov	r0, fp
	cmp	r4, #0
	beq	.L370
	ldr	r1, [r8, #236]
	bl	png_free(PLT)
	ldr	r3, [r8, #240]
	ldr	r1, .L373
	ldr	r2, [r8, #232]
	str	r4, [r8, #236]
.LPIC76:
	add	r1, pc
	add	r3, r3, r3, lsl #2
	str	r1, [sp, #8]
	orr	r2, r2, #512
	ldr	r1, .L373+4
	add	r10, r4, r3, lsl #2
	str	r2, [r8, #232]
.LPIC78:
	add	r1, pc
	str	r1, [sp, #12]
.L360:
	ldr	r2, [r6]	@ unaligned
	strb	r9, [r10, #4]
	str	r2, [r10]	@ unaligned
	ldrb	r4, [r6, #16]	@ zero_extendqisi2
	ands	r4, r4, #11
	bne	.L368
	ldr	r2, [fp, #448]
	lsls	r3, r2, #16
	bpl	.L371
.L352:
	ldr	r1, .L373+8
	mov	r0, fp
.LPIC77:
	add	r1, pc
	bl	png_error(PLT)
.L355:
	bic	r4, r4, r5
.L368:
	negs	r5, r4
	ands	r5, r5, r4
	cmp	r5, r4
	bne	.L355
	strb	r4, [r10, #16]
	ldr	r1, [r6, #12]
	pld	[r6, #52]
	cbnz	r1, .L356
	str	r1, [r10, #8]
	str	r1, [r10, #12]
.L357:
	ldr	r2, [r8, #240]
	add	r10, r10, #20
	adds	r2, r2, #1
	str	r2, [r8, #240]
.L359:
	subs	r7, r7, #1
	add	r6, r6, #20
	bne	.L360
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L356:
	mov	r0, fp
	bl	png_malloc_base(PLT)
	str	r0, [r10, #8]
	cbz	r0, .L372
	ldr	r2, [r6, #12]
	ldr	r1, [r6, #8]
	bl	memcpy(PLT)
	ldr	r2, [r6, #12]
	str	r2, [r10, #12]
	b	.L357
.L371:
	mov	r0, fp
	ldr	r1, [sp, #8]
	bl	png_app_warning(PLT)
	ldrb	r4, [fp, #448]	@ zero_extendqisi2
	ands	r4, r4, #11
	bne	.L368
	b	.L352
.L372:
	mov	r0, fp
	ldr	r1, [sp, #12]
	movs	r2, #1
	bl	png_chunk_report(PLT)
	b	.L359
.L370:
	ldr	r1, .L373+12
	movs	r2, #1
.LPIC75:
	add	r1, pc
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_chunk_report(PLT)
.L374:
	.align	2
.L373:
	.word	.LC40-(.LPIC76+4)
	.word	.LC42-(.LPIC78+4)
	.word	.LC41-(.LPIC77+4)
	.word	.LC39-(.LPIC75+4)
	.size	png_set_unknown_chunks, .-png_set_unknown_chunks
	.section	.text.png_set_unknown_chunk_location,"ax",%progbits
	.align	2
	.global	png_set_unknown_chunk_location
	.thumb
	.thumb_func
	.type	png_set_unknown_chunk_location, %function
png_set_unknown_chunk_location:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	push	{r4, r5, lr}
	mov	r5, r1
	sub	sp, sp, #12
	beq	.L375
	cmp	r2, #0
	blt	.L375
	ldr	r1, [r1, #240]
	cmp	r2, r1
	bge	.L375
	ands	r4, r3, #11
	beq	.L388
	ldr	r1, [r5, #236]
	negs	r3, r4
	ands	r3, r3, r4
	add	r2, r2, r2, lsl #2
	cmp	r4, r3
	add	r2, r1, r2, lsl #2
	beq	.L380
.L382:
	bic	r4, r4, r3
	negs	r3, r4
	ands	r3, r3, r4
	cmp	r3, r4
	bne	.L382
.L380:
	strb	r4, [r2, #16]
.L375:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L388:
	ldr	r1, .L389
	str	r2, [sp, #4]
	str	r3, [sp]
.LPIC79:
	add	r1, pc
	bl	png_app_error(PLT)
	ldr	r2, [sp, #4]
	ldr	r1, [r5, #236]
	ldr	r3, [sp]
	add	r2, r2, r2, lsl #2
	tst	r3, #4
	add	r2, r1, r2, lsl #2
	ite	eq
	moveq	r4, #1
	movne	r4, #8
	strb	r4, [r2, #16]
	b	.L375
.L390:
	.align	2
.L389:
	.word	.LC43-(.LPIC79+4)
	.size	png_set_unknown_chunk_location, .-png_set_unknown_chunk_location
	.section	.text.png_permit_mng_features,"ax",%progbits
	.align	2
	.global	png_permit_mng_features
	.thumb
	.thumb_func
	.type	png_permit_mng_features, %function
png_permit_mng_features:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	cbz	r0, .L393
	and	r0, r1, #5
	str	r0, [r3, #948]
	bx	lr
.L393:
	bx	lr
	.size	png_permit_mng_features, .-png_permit_mng_features
	.section	.text.png_set_keep_unknown_chunks,"ax",%progbits
	.align	2
	.global	png_set_keep_unknown_chunks
	.thumb
	.thumb_func
	.type	png_set_keep_unknown_chunks, %function
png_set_keep_unknown_chunks:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L450
	cmp	r1, #3
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r10, r1
	bhi	.L452
	cmp	r3, #0
	mov	r9, r0
	ble	.L398
	mov	r5, r2
	mov	r4, r3
	cmp	r2, #0
	beq	.L453
.L402:
	ldr	r7, [r9, #932]
	ldr	r8, [r9, #936]
	cmp	r8, #0
	it	eq
	moveq	r7, #0
	adds	r1, r7, r4
	cmp	r1, #858993459
	bhi	.L454
	cmp	r10, #0
	bne	.L455
	cmp	r7, #0
	beq	.L426
.L406:
	cmp	r8, #0
	beq	.L456
	cbz	r4, .L409
	add	r4, r4, r4, lsl #2
	add	fp, r5, r4
.L414:
	cmp	r7, #0
	beq	.L427
	add	r6, r7, r7, lsl #2
	mov	r4, r8
	add	r6, r6, r8
	b	.L413
.L411:
	adds	r4, r4, #5
	cmp	r4, r6
	beq	.L410
.L413:
	mov	r0, r4
	mov	r1, r5
	movs	r2, #4
	bl	memcmp(PLT)
	cmp	r0, #0
	bne	.L411
	strb	r10, [r4, #4]
.L412:
	adds	r5, r5, #5
	cmp	r5, fp
	bne	.L414
.L409:
	cbz	r7, .L422
	add	r7, r7, r7, lsl #2
	mov	r2, r8
	mov	r3, r8
	add	r4, r8, r7
	movs	r0, #0
.L421:
	ldrb	r1, [r3, #4]	@ zero_extendqisi2
	cbz	r1, .L418
	cmp	r2, r3
	add	r0, r0, #1
	it	ne
	ldrne	r1, [r3]	@ unaligned
	add	r2, r2, #5
	ittt	ne
	strne	r1, [r2, #-5]	@ unaligned
	ldrbne	r1, [r3, #4]	@ zero_extendqisi2
	strbne	r1, [r2, #-1]
.L418:
	adds	r3, r3, #5
	cmp	r3, r4
	bne	.L421
	cbz	r0, .L422
.L451:
	ldr	r1, [r9, #936]
.L407:
	cmp	r8, r1
	str	r0, [r9, #932]
	beq	.L394
.L424:
	cbz	r1, .L423
	mov	r0, r9
	bl	png_free(PLT)
.L423:
	str	r8, [r9, #936]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L394:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L427:
	mov	r4, r8
.L410:
	cmp	r10, #0
	beq	.L412
	ldr	r3, [r5]	@ unaligned
	adds	r7, r7, #1
	strb	r10, [r4, #4]
	str	r3, [r4]	@ unaligned
	b	.L412
.L422:
	ldr	r1, [r9, #936]
	cmp	r1, r8
	beq	.L457
	mov	r1, r8
	mov	r0, r9
	mov	r8, #0
	bl	png_free(PLT)
	mov	r0, r8
	b	.L451
.L426:
	mov	r1, r8
	mov	r0, r10
	mov	r8, r10
	b	.L407
.L454:
	ldr	r1, .L458
	mov	r0, r9
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LPIC83:
	add	r1, pc
	b	png_app_error(PLT)
.L457:
	movs	r3, #0
	str	r3, [r9, #932]
	mov	r8, r3
	b	.L424
.L398:
	str	r1, [r9, #928]
	beq	.L394
	ldr	r5, .L458+4
	movs	r4, #17
.LPIC80:
	add	r5, pc
	b	.L402
.L452:
	ldr	r1, .L458+8
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LPIC81:
	add	r1, pc
	b	png_app_error(PLT)
.L455:
	add	r1, r1, r1, lsl #2
	mov	r0, r9
	bl	png_malloc(PLT)
	mov	r8, r0
	cmp	r7, #0
	beq	.L406
	ldr	r1, [r9, #936]
	add	r2, r7, r7, lsl #2
	bl	memcpy(PLT)
	b	.L406
.L450:
	bx	lr
.L453:
	ldr	r1, .L458+12
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
.LPIC82:
	add	r1, pc
	b	png_app_error(PLT)
.L456:
	ldr	r1, [r9, #936]
	mov	r0, r8
	b	.L407
.L459:
	.align	2
.L458:
	.word	.LC46-(.LPIC83+4)
	.word	.LANCHOR0-(.LPIC80+4)
	.word	.LC44-(.LPIC81+4)
	.word	.LC45-(.LPIC82+4)
	.size	png_set_keep_unknown_chunks, .-png_set_keep_unknown_chunks
	.section	.text.png_set_read_user_chunk_fn,"ax",%progbits
	.align	2
	.global	png_set_read_user_chunk_fn
	.thumb
	.thumb_func
	.type	png_set_read_user_chunk_fn, %function
png_set_read_user_chunk_fn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L460
	str	r2, [r0, #924]
	str	r1, [r0, #920]
.L460:
	bx	lr
	.size	png_set_read_user_chunk_fn, .-png_set_read_user_chunk_fn
	.section	.text.png_set_rows,"ax",%progbits
	.align	2
	.global	png_set_rows
	.thumb
	.thumb_func
	.type	png_set_rows, %function
png_set_rows:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r3, r4, r5, lr}
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	beq	.L465
	mov	r5, r2
	ldr	r2, [r1, #264]
	mov	r4, r1
	cbz	r2, .L468
	cmp	r2, r5
	beq	.L470
	movs	r2, #64
	bl	png_free_data(PLT)
.L468:
	str	r5, [r4, #264]
	cbz	r5, .L465
.L470:
	ldr	r3, [r4, #8]
	orr	r3, r3, #32768
	str	r3, [r4, #8]
	pop	{r3, r4, r5, pc}
.L465:
	pop	{r3, r4, r5, pc}
	.size	png_set_rows, .-png_set_rows
	.section	.text.png_set_compression_buffer_size,"ax",%progbits
	.align	2
	.global	png_set_compression_buffer_size
	.thumb
	.thumb_func
	.type	png_set_compression_buffer_size, %function
png_set_compression_buffer_size:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L486
	cmp	r1, #0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	ble	.L487
	ldr	r3, [r0, #448]
	mov	r4, r0
	lsls	r3, r3, #16
	bmi	.L488
	ldr	r3, [r0, #460]
	cbnz	r3, .L489
	cmp	r1, #5
	bls	.L490
	ldr	r3, [r0, #524]
	cmp	r3, r1
	beq	.L476
	add	r1, r0, #520
	bl	png_free_buffer_list(PLT)
	str	r5, [r4, #524]
.L476:
	pop	{r3, r4, r5, pc}
.L488:
	str	r1, [r4, #1036]
	pop	{r3, r4, r5, pc}
.L489:
	ldr	r1, .L491
	pop	{r3, r4, r5, lr}
.LPIC85:
	add	r1, pc
	b	png_warning(PLT)
.L486:
	bx	lr
.L490:
	ldr	r1, .L491+4
	pop	{r3, r4, r5, lr}
.LPIC86:
	add	r1, pc
	b	png_warning(PLT)
.L487:
	ldr	r1, .L491+8
.LPIC84:
	add	r1, pc
	bl	png_error(PLT)
.L492:
	.align	2
.L491:
	.word	.LC48-(.LPIC85+4)
	.word	.LC49-(.LPIC86+4)
	.word	.LC47-(.LPIC84+4)
	.size	png_set_compression_buffer_size, .-png_set_compression_buffer_size
	.section	.text.png_set_invalid,"ax",%progbits
	.align	2
	.global	png_set_invalid
	.thumb
	.thumb_func
	.type	png_set_invalid, %function
png_set_invalid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r1, #0
	ittt	ne
	ldrne	r3, [r1, #8]
	bicne	r2, r3, r2
	strne	r2, [r1, #8]
	bx	lr
	.size	png_set_invalid, .-png_set_invalid
	.section	.text.png_set_user_limits,"ax",%progbits
	.align	2
	.global	png_set_user_limits
	.thumb
	.thumb_func
	.type	png_set_user_limits, %function
png_set_user_limits:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L498
	str	r1, [r0, #988]
	str	r2, [r0, #992]
.L498:
	bx	lr
	.size	png_set_user_limits, .-png_set_user_limits
	.section	.text.png_set_chunk_cache_max,"ax",%progbits
	.align	2
	.global	png_set_chunk_cache_max
	.thumb
	.thumb_func
	.type	png_set_chunk_cache_max, %function
png_set_chunk_cache_max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L503
	str	r1, [r0, #996]
.L503:
	bx	lr
	.size	png_set_chunk_cache_max, .-png_set_chunk_cache_max
	.section	.text.png_set_chunk_malloc_max,"ax",%progbits
	.align	2
	.global	png_set_chunk_malloc_max
	.thumb
	.thumb_func
	.type	png_set_chunk_malloc_max, %function
png_set_chunk_malloc_max:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L508
	str	r1, [r0, #1000]
.L508:
	bx	lr
	.size	png_set_chunk_malloc_max, .-png_set_chunk_malloc_max
	.section	.text.png_set_benign_errors,"ax",%progbits
	.align	2
	.global	png_set_benign_errors
	.thumb
	.thumb_func
	.type	png_set_benign_errors, %function
png_set_benign_errors:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #452]
	cbnz	r1, .L516
	bic	r3, r3, #7340032
	str	r3, [r0, #452]
	bx	lr
.L516:
	orr	r3, r3, #7340032
	str	r3, [r0, #452]
	bx	lr
	.size	png_set_benign_errors, .-png_set_benign_errors
	.section	.text.png_set_check_for_invalid_index,"ax",%progbits
	.align	2
	.global	png_set_check_for_invalid_index
	.thumb
	.thumb_func
	.type	png_set_check_for_invalid_index, %function
png_set_check_for_invalid_index:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	mov	r1, #-1
	it	gt
	movgt	r1, #0
	str	r1, [r0, #664]
	bx	lr
	.size	png_set_check_for_invalid_index, .-png_set_check_for_invalid_index
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"cHRM White X\000"
	.space	3
.LC1:
	.ascii	"cHRM White Y\000"
	.space	3
.LC2:
	.ascii	"cHRM Red X\000"
	.space	1
.LC3:
	.ascii	"cHRM Red Y\000"
	.space	1
.LC4:
	.ascii	"cHRM Green X\000"
	.space	3
.LC5:
	.ascii	"cHRM Green Y\000"
	.space	3
.LC6:
	.ascii	"cHRM Blue X\000"
.LC7:
	.ascii	"cHRM Blue Y\000"
.LC8:
	.ascii	"cHRM Red Z\000"
	.space	1
.LC9:
	.ascii	"png_set_gAMA\000"
	.space	3
.LC10:
	.ascii	"Invalid palette size, hIST allocation skipped\000"
	.space	2
.LC11:
	.ascii	"Insufficient memory for hIST chunk data\000"
.LC12:
	.ascii	"Invalid pCAL equation type\000"
	.space	1
.LC13:
	.ascii	"Invalid format for pCAL parameter\000"
	.space	2
.LC14:
	.ascii	"Invalid pCAL parameter count\000"
	.space	3
.LC15:
	.ascii	"Insufficient memory for pCAL purpose\000"
	.space	3
.LC16:
	.ascii	"Insufficient memory for pCAL units\000"
	.space	1
.LC17:
	.ascii	"Insufficient memory for pCAL params\000"
.LC18:
	.ascii	"Insufficient memory for pCAL parameter\000"
	.space	1
.LC19:
	.ascii	"Invalid sCAL unit\000"
	.space	2
.LC20:
	.ascii	"Invalid sCAL width\000"
	.space	1
.LC21:
	.ascii	"Invalid sCAL height\000"
.LC22:
	.ascii	"Memory allocation failed while processing sCAL\000"
	.space	1
.LC23:
	.ascii	"Invalid sCAL width ignored\000"
	.space	1
.LC24:
	.ascii	"Invalid sCAL height ignored\000"
.LC25:
	.ascii	"Invalid palette length\000"
	.space	1
.LC26:
	.ascii	"Invalid palette\000"
.LC27:
	.ascii	"Invalid iCCP compression method\000"
.LC28:
	.ascii	"Insufficient memory to process iCCP chunk\000"
	.space	2
.LC29:
	.ascii	"Insufficient memory to process iCCP profile\000"
.LC30:
	.ascii	"too many text chunks\000"
	.space	3
.LC31:
	.ascii	"text compression mode is out of range\000"
	.space	2
.LC32:
	.ascii	"text chunk: out of memory\000"
	.space	2
.LC33:
	.ascii	"Insufficient memory to store text\000"
	.space	2
.LC34:
	.ascii	"Ignoring invalid time value\000"
.LC35:
	.ascii	"tRNS chunk has out-of-range samples for bit_depth\000"
	.space	2
.LC36:
	.ascii	"too many sPLT chunks\000"
	.space	3
.LC37:
	.ascii	"png_set_sPLT: invalid sPLT\000"
	.space	1
.LC38:
	.ascii	"sPLT out of memory\000"
	.space	1
.LC39:
	.ascii	"too many unknown chunks\000"
.LC40:
	.ascii	"png_set_unknown_chunks now expects a valid location"
	.ascii	"\000"
.LC41:
	.ascii	"invalid location in png_set_unknown_chunks\000"
	.space	1
.LC42:
	.ascii	"unknown chunk: out of memory\000"
	.space	3
.LC43:
	.ascii	"invalid unknown chunk location\000"
	.space	1
.LC44:
	.ascii	"png_set_keep_unknown_chunks: invalid keep\000"
	.space	2
.LC45:
	.ascii	"png_set_keep_unknown_chunks: no chunk list\000"
	.space	1
.LC46:
	.ascii	"png_set_keep_unknown_chunks: too many chunks\000"
	.space	3
.LC47:
	.ascii	"invalid compression buffer size\000"
.LC48:
	.ascii	"Compression buffer size cannot be changed because i"
	.ascii	"t is in use\000"
	.space	1
.LC49:
	.ascii	"Compression buffer size cannot be reduced below 6\000"
	.section	.rodata.chunks_to_ignore.9009,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	chunks_to_ignore.9009, %object
	.size	chunks_to_ignore.9009, 85
chunks_to_ignore.9009:
	.byte	98
	.byte	75
	.byte	71
	.byte	68
	.byte	0
	.byte	99
	.byte	72
	.byte	82
	.byte	77
	.byte	0
	.byte	103
	.byte	65
	.byte	77
	.byte	65
	.byte	0
	.byte	104
	.byte	73
	.byte	83
	.byte	84
	.byte	0
	.byte	105
	.byte	67
	.byte	67
	.byte	80
	.byte	0
	.byte	105
	.byte	84
	.byte	88
	.byte	116
	.byte	0
	.byte	111
	.byte	70
	.byte	70
	.byte	115
	.byte	0
	.byte	112
	.byte	67
	.byte	65
	.byte	76
	.byte	0
	.byte	112
	.byte	72
	.byte	89
	.byte	115
	.byte	0
	.byte	115
	.byte	66
	.byte	73
	.byte	84
	.byte	0
	.byte	115
	.byte	67
	.byte	65
	.byte	76
	.byte	0
	.byte	115
	.byte	80
	.byte	76
	.byte	84
	.byte	0
	.byte	115
	.byte	84
	.byte	69
	.byte	82
	.byte	0
	.byte	115
	.byte	82
	.byte	71
	.byte	66
	.byte	0
	.byte	116
	.byte	69
	.byte	88
	.byte	116
	.byte	0
	.byte	116
	.byte	73
	.byte	77
	.byte	69
	.byte	0
	.byte	122
	.byte	84
	.byte	88
	.byte	116
	.byte	0
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
