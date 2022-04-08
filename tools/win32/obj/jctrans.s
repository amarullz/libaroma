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
	.file	"jctrans.c"
	.section	.text.compress_output,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	compress_output, %function
compress_output:
	@ args = 0, pretend = 0, frame = 152
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #244]
	ldr	r2, [r0, #264]
	ldr	r1, [r0, #240]
	cmp	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	add	r2, r2, #-1
	sub	sp, sp, #164
	add	r1, r1, #-1
	str	r0, [sp, #76]
	str	r2, [sp, #92]
	ldr	r5, [r0, #344]
	str	r1, [sp, #64]
	ble	.L2
	movs	r4, #0
	mov	r8, r0
	mov	r6, r4
	add	r7, sp, #104
	mov	r9, r0
.L3:
	ldr	r3, [r8, #248]
	mov	r0, r9
	ldr	ip, [r5, #8]
	add	r8, r8, #4
	ldr	lr, [r9, #4]
	ldr	r2, [r3, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r5, #24]
	ldr	r1, [r3, r1, lsl #2]
	mov	r3, r2
	str	r6, [sp]
	mul	r2, ip, r2
	ldr	ip, [lr, #32]
	blx	ip
	ldr	r3, [r9, #244]
	str	r0, [r7, r4, lsl #2]
	adds	r4, r4, #1
	cmp	r3, r4
	bgt	.L3
.L2:
	ldr	r4, [r5, #16]
	ldr	r1, [r5, #20]
	str	r4, [sp, #84]
	cmp	r4, r1
	bge	.L4
	ldr	r6, [r5, #12]
	lsls	r7, r4, #2
	ldr	r4, [sp, #76]
	str	r7, [sp, #88]
	str	r6, [sp, #80]
	add	r6, sp, #120
	ldr	r2, [r4, #264]
	ldr	r7, [sp, #80]
	str	r6, [sp, #100]
.L20:
	cmp	r2, r7
	it	hi
	movhi	fp, r5
	bls	.L5
.L6:
	cmp	r3, #0
	ble	.L17
	movs	r7, #0
	lsls	r3, r3, #2
	mov	ip, fp
	str	r7, [sp, #52]
	mov	r8, r7
	str	r3, [sp, #96]
.L18:
	ldr	r3, [sp, #76]
	ldr	lr, [sp, #52]
	ldr	r2, [sp, #80]
	ldr	r4, [sp, #92]
	add	r3, r3, lr
	ldr	r3, [r3, #248]
	cmp	r4, r2
	str	r3, [sp, #68]
	ldr	r5, [sp, #68]
	ldr	fp, [r3, #52]
	it	ls
	ldrls	r9, [r3, #68]
	ldr	r2, [r5, #56]
	it	hi
	movhi	r9, fp
	cmp	r2, #0
	ble	.L8
	ldr	r7, [sp, #84]
	lsl	r3, fp, #7
	ldr	r10, [sp, #84]
	ldr	r6, [ip, #8]
	add	r7, r7, r2
	ldr	r2, [sp, #80]
	str	r10, [sp, #20]
	mov	r10, fp
	str	r6, [sp, #60]
	str	r7, [sp, #56]
	mul	r2, r2, r3
	ldr	r3, [sp, #88]
	str	r3, [sp, #24]
	str	r2, [sp, #72]
	b	.L12
.L50:
	ldr	r6, [sp, #68]
	ldr	lr, [sp, #20]
	ldr	r3, [r6, #72]
	cmp	lr, r3
	blt	.L9
	movs	r0, #9
	movs	r1, #8
	movs	r2, #7
	movs	r3, #6
	movs	r4, #5
	str	r0, [sp, #40]
	str	r1, [sp, #36]
	str	r2, [sp, #32]
	str	r3, [sp, #28]
	str	r4, [sp, #12]
.L48:
	mov	fp, #4
	movs	r0, #3
	movs	r6, #2
	movs	r4, #1
	movs	r3, #0
.L11:
	cmp	r10, r3
	ble	.L10
	add	r3, sp, #160
	add	r1, r8, #6
	add	r2, r3, r8, lsl #2
	lsls	r5, r1, #2
	str	r1, [sp, #44]
	ldr	r7, [r2, #-44]
	add	r3, ip, r5
	ldr	r3, [r3, #4]
	cmp	r10, r4
	add	r1, r8, #1
	add	lr, sp, #160
	ldrh	r7, [r7]
	str	r3, [r2, #-40]
	strh	r7, [r3]	@ movhi
	ble	.L25
	add	r3, r8, #7
	add	r1, lr, r1, lsl #2
	lsls	r4, r3, #2
	str	r3, [sp, #16]
	cmp	r10, r6
	add	r3, ip, r4
	add	r7, r8, #2
	ldr	r3, [r3, #4]
	str	r3, [r1, #-40]
	ldr	r2, [r2, #-40]
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ble	.L26
	add	r6, r8, #8
	add	r7, lr, r7, lsl #2
	lsls	r3, r6, #2
	cmp	r10, r0
	str	r6, [sp, #48]
	add	lr, r8, #3
	add	r2, ip, r3
	ldr	r2, [r2, #4]
	str	r2, [r7, #-40]
	ldr	r1, [r1, #-40]
	ldrh	r1, [r1]
	strh	r1, [r2]	@ movhi
	ble	.L27
	add	r0, sp, #160
	add	r2, r8, #9
	add	lr, r0, lr, lsl #2
	lsls	r0, r2, #2
	add	r1, ip, r0
	cmp	r10, fp
	ldr	r1, [r1, #4]
	add	r6, r8, #4
	str	r1, [lr, #-40]
	ldr	r7, [r7, #-40]
	ldrh	r7, [r7]
	strh	r7, [r1]	@ movhi
	ble	.L28
	add	r7, sp, #160
	add	r1, r8, #10
	add	r6, r7, r6, lsl #2
	add	r7, ip, r1, lsl #2
	ldr	r7, [r7, #4]
	add	fp, r8, #5
	str	r7, [r6, #-40]
	ldr	lr, [lr, #-40]
	ldrh	lr, [lr]
	strh	lr, [r7]	@ movhi
	ldr	lr, [sp, #12]
	cmp	r10, lr
	ble	.L29
	add	r7, ip, r8, lsl #2
	add	lr, sp, #160
	add	fp, lr, fp, lsl #2
	ldr	r7, [r7, #48]
	str	r7, [fp, #-40]
	ldr	r6, [r6, #-40]
	ldrh	r6, [r6]
	strh	r6, [r7]	@ movhi
	ldr	r6, [sp, #28]
	cmp	r10, r6
	ble	.L30
	add	r6, ip, r8, lsl #2
	add	r5, r5, lr
	ldr	r6, [r6, #52]
	str	r6, [r5, #-40]
	ldr	r7, [fp, #-40]
	ldrh	r7, [r7]
	strh	r7, [r6]	@ movhi
	ldr	r7, [sp, #32]
	cmp	r10, r7
	ble	.L31
	add	r6, ip, r8, lsl #2
	add	r4, r4, lr
	ldr	lr, [sp, #36]
	ldr	r6, [r6, #56]
	cmp	r10, lr
	str	r6, [r4, #-40]
	ldr	r5, [r5, #-40]
	ldrh	r5, [r5]
	strh	r5, [r6]	@ movhi
	ble	.L32
	add	r8, ip, r8, lsl #2
	add	r6, sp, #160
	add	r6, r6, r3
	ldr	r5, [r8, #60]
	str	r5, [r6, #-40]
	ldr	r4, [r4, #-40]
	ldrh	r4, [r4]
	strh	r4, [r5]	@ movhi
	ldr	r4, [sp, #40]
	cmp	r10, r4
	ble	.L33
	add	r2, ip, r2, lsl #2
	add	r5, sp, #160
	add	r0, r0, r5
	ldr	r2, [r2, #28]
	mov	r8, r1
	str	r2, [r0, #-40]
	ldr	r3, [r6, #-40]
	ldrh	r3, [r3]
	strh	r3, [r2]	@ movhi
.L10:
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #56]
	ldr	r2, [sp, #24]
	adds	r1, r1, #1
	cmp	r1, r3
	str	r1, [sp, #20]
	add	r2, r2, #4
	str	r2, [sp, #24]
	beq	.L8
.L12:
	ldr	r5, [sp, #64]
	ldr	r4, [sp, #60]
	cmp	r5, r4
	bls	.L50
.L9:
	ldr	r6, [sp, #52]
	add	r3, sp, #104
	ldr	r7, [sp, #24]
	cmp	r9, #0
	ldr	lr, [sp, #72]
	ldr	r3, [r6, r3]
	ldr	r3, [r3, r7]
	add	r3, r3, lr
	ble	.L34
	add	r4, sp, #160
	cmp	r9, #1
	add	r0, r4, r8, lsl #2
	add	r2, r8, #1
	add	r1, r3, #128
	str	r3, [r0, #-40]
	beq	.L35
	add	r0, r4, r2, lsl #2
	cmp	r9, #2
	add	r2, r8, #2
	str	r1, [r0, #-40]
	add	r1, r3, #256
	beq	.L36
	add	r0, r4, r2, lsl #2
	cmp	r9, #3
	add	r2, r8, #3
	str	r1, [r0, #-40]
	add	r1, r3, #384
	beq	.L37
	add	r0, r4, r2, lsl #2
	cmp	r9, #4
	add	r2, r8, #4
	str	r1, [r0, #-40]
	add	r1, r3, #512
	beq	.L38
	add	r0, r4, r2, lsl #2
	cmp	r9, #5
	add	r2, r8, #5
	str	r1, [r0, #-40]
	add	r1, r3, #640
	beq	.L39
	add	r0, r4, r2, lsl #2
	cmp	r9, #6
	add	r2, r8, #6
	str	r1, [r0, #-40]
	add	r1, r3, #768
	beq	.L40
	add	r0, r4, r2, lsl #2
	cmp	r9, #7
	add	r2, r8, #7
	str	r1, [r0, #-40]
	add	r1, r3, #896
	beq	.L41
	add	r0, r4, r2, lsl #2
	cmp	r9, #8
	add	r2, r8, #8
	str	r1, [r0, #-40]
	add	r1, r3, #1024
	beq	.L42
	add	r2, r4, r2, lsl #2
	cmp	r9, #9
	add	r3, r3, #1152
	add	r0, r8, #9
	str	r1, [r2, #-40]
	beq	.L43
	add	r0, r4, r0, lsl #2
	movs	r6, #18
	movs	r5, #19
	str	r6, [sp, #36]
	str	r3, [r0, #-40]
	movs	r7, #17
	movs	r0, #15
	mov	lr, #16
	str	r0, [sp, #12]
	add	r8, r8, #10
	str	r5, [sp, #40]
	mov	fp, #14
	str	r7, [sp, #32]
	movs	r0, #13
	str	lr, [sp, #28]
	movs	r6, #12
	movs	r4, #11
	movs	r3, #10
	b	.L11
.L8:
	ldr	r4, [sp, #52]
	ldr	r5, [sp, #96]
	adds	r4, r4, #4
	cmp	r4, r5
	str	r4, [sp, #52]
	bne	.L18
	mov	fp, ip
.L17:
	ldr	r6, [sp, #76]
	add	r1, sp, #120
	ldr	r3, [r6, #364]
	mov	r0, r6
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #0
	beq	.L51
	ldr	r4, [sp, #76]
	ldr	r5, [sp, #80]
	ldr	r2, [r4, #264]
	adds	r5, r5, #1
	str	r5, [sp, #80]
	cmp	r2, r5
	bls	.L52
	ldr	r3, [r4, #244]
	b	.L6
.L33:
	mov	r8, r2
	b	.L10
.L32:
	ldr	r8, [sp, #48]
	b	.L10
.L31:
	ldr	r8, [sp, #16]
	b	.L10
.L30:
	ldr	r8, [sp, #44]
	b	.L10
.L29:
	mov	r8, fp
	b	.L10
.L28:
	mov	r8, r6
	b	.L10
.L27:
	mov	r8, lr
	b	.L10
.L26:
	mov	r8, r7
	b	.L10
.L25:
	mov	r8, r1
	b	.L10
.L34:
	movs	r5, #9
	movs	r6, #8
	movs	r7, #7
	mov	lr, #6
	movs	r0, #5
	str	r5, [sp, #40]
	str	r6, [sp, #36]
	str	r7, [sp, #32]
	str	lr, [sp, #28]
	str	r0, [sp, #12]
	b	.L48
.L35:
	movs	r3, #8
	movs	r4, #7
	mov	r8, r2
	movs	r1, #10
	movs	r2, #9
	movs	r5, #6
	str	r3, [sp, #32]
	mov	fp, #5
	str	r4, [sp, #28]
	movs	r0, #4
	str	r1, [sp, #40]
	movs	r6, #3
	str	r2, [sp, #36]
	movs	r4, #2
	str	r5, [sp, #12]
	mov	r3, r9
	b	.L11
.L41:
	movs	r4, #16
	movs	r6, #14
	movs	r5, #15
	movs	r7, #13
	mov	lr, #12
	str	r4, [sp, #40]
	str	r6, [sp, #32]
	mov	r8, r2
	str	r5, [sp, #36]
	mov	fp, #11
	str	r7, [sp, #28]
	movs	r0, #10
	str	lr, [sp, #12]
	movs	r6, #9
	movs	r4, #8
	mov	r3, r9
	b	.L11
.L40:
	movs	r0, #14
	movs	r3, #11
	mov	r8, r2
	mov	lr, #15
	movs	r1, #13
	movs	r2, #12
	str	r0, [sp, #36]
	mov	fp, #10
	str	r3, [sp, #12]
	movs	r0, #9
	str	lr, [sp, #40]
	movs	r6, #8
	str	r1, [sp, #32]
	movs	r4, #7
	str	r2, [sp, #28]
	mov	r3, r9
	b	.L11
.L39:
	movs	r3, #14
	movs	r4, #13
	movs	r6, #11
	movs	r5, #12
	movs	r7, #10
	str	r3, [sp, #40]
	str	r4, [sp, #36]
	mov	r8, r2
	str	r6, [sp, #28]
	mov	fp, #9
	str	r5, [sp, #32]
	movs	r0, #8
	str	r7, [sp, #12]
	movs	r6, #7
	movs	r4, #6
	mov	r3, r9
	b	.L11
.L38:
	movs	r0, #11
	mov	r8, r2
	movs	r7, #13
	mov	lr, #12
	movs	r1, #10
	movs	r2, #9
	str	r0, [sp, #32]
	mov	fp, #8
	str	r7, [sp, #40]
	movs	r0, #7
	str	lr, [sp, #36]
	movs	r6, #6
	str	r1, [sp, #28]
	movs	r4, #5
	str	r2, [sp, #12]
	mov	r3, r9
	b	.L11
.L43:
	movs	r6, #17
	mov	r8, r0
	movs	r5, #18
	movs	r0, #14
	movs	r7, #16
	mov	lr, #15
	str	r6, [sp, #36]
	mov	fp, #13
	str	r0, [sp, #12]
	movs	r6, #11
	str	r5, [sp, #40]
	movs	r0, #12
	str	r7, [sp, #32]
	movs	r4, #10
	str	lr, [sp, #28]
	movs	r3, #9
	b	.L11
.L42:
	movs	r0, #17
	movs	r3, #14
	movs	r4, #13
	mov	r8, r2
	movs	r1, #16
	movs	r2, #15
	str	r0, [sp, #40]
	mov	fp, #12
	str	r3, [sp, #28]
	movs	r0, #11
	str	r4, [sp, #12]
	movs	r6, #10
	str	r1, [sp, #36]
	movs	r4, #9
	str	r2, [sp, #32]
	mov	r3, r9
	b	.L11
.L37:
	movs	r3, #11
	movs	r4, #10
	movs	r6, #8
	mov	r8, r2
	movs	r5, #9
	movs	r2, #12
	str	r3, [sp, #36]
	mov	fp, #7
	str	r4, [sp, #32]
	movs	r0, #6
	str	r6, [sp, #12]
	movs	r4, #4
	str	r2, [sp, #40]
	movs	r6, #5
	str	r5, [sp, #28]
	mov	r3, r9
	b	.L11
.L36:
	movs	r6, #11
	movs	r0, #8
	movs	r7, #10
	mov	lr, #9
	movs	r1, #7
	str	r6, [sp, #40]
	str	r0, [sp, #28]
	mov	r8, r2
	str	r7, [sp, #36]
	mov	fp, #6
	str	lr, [sp, #32]
	movs	r0, #5
	str	r1, [sp, #12]
	movs	r6, #4
	movs	r4, #3
	mov	r3, r9
	b	.L11
.L52:
	ldr	r1, [fp, #20]
	mov	r5, fp
	ldr	r3, [r4, #244]
.L5:
	ldr	r4, [sp, #84]
	movs	r6, #0
	ldr	r7, [sp, #88]
	str	r6, [r5, #12]
	adds	r4, r4, #1
	cmp	r4, r1
	add	r7, r7, #4
	str	r4, [sp, #84]
	str	r7, [sp, #88]
	bge	.L4
	str	r6, [sp, #80]
	mov	r7, r6
	b	.L20
.L51:
	ldr	r7, [sp, #84]
	ldr	r2, [sp, #80]
	str	r7, [fp, #16]
	str	r2, [fp, #12]
	add	sp, sp, #164
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L4:
	ldr	r1, [r5, #8]
	cmp	r3, #1
	ldr	r6, [sp, #76]
	add	r1, r1, #1
	ldr	r2, [r6, #344]
	str	r1, [r5, #8]
	ble	.L21
	movs	r3, #1
	str	r3, [r2, #20]
.L22:
	movs	r3, #0
	movs	r0, #1
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	add	sp, sp, #164
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L21:
	ldr	r1, [r6, #240]
	ldr	r3, [r2, #8]
	subs	r1, r1, #1
	cmp	r3, r1
	itete	cs
	movcs	r5, r6
	ldrcc	r3, [r6, #248]
	ldrcs	r3, [r5, #248]
	ldrcc	r3, [r3, #12]
	it	cs
	ldrcs	r3, [r3, #72]
	str	r3, [r2, #20]
	b	.L22
	.size	compress_output, .-compress_output
	.section	.text.start_pass_coef,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_coef, %function
start_pass_coef:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	cmp	r1, #2
	ldr	r5, [r0, #344]
	mov	r4, r0
	it	eq
	moveq	r3, r5
	beq	.L54
	ldr	r3, [r0]
	movs	r2, #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #344]
.L54:
	ldr	r2, [r4, #244]
	movs	r1, #0
	str	r1, [r5, #8]
	cmp	r2, #1
	ble	.L55
	movs	r2, #1
	str	r2, [r3, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	pop	{r3, r4, r5, pc}
.L55:
	ldr	r1, [r4, #240]
	ldr	r2, [r3, #8]
	subs	r1, r1, #1
	cmp	r2, r1
	ldr	r2, [r4, #248]
	ite	cc
	ldrcc	r2, [r2, #12]
	ldrcs	r2, [r2, #72]
	str	r2, [r3, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	str	r2, [r3, #16]
	pop	{r3, r4, r5, pc}
	.size	start_pass_coef, .-start_pass_coef
	.section	.text.jpeg_write_coefficients,"ax",%progbits
	.align	2
	.global	jpeg_write_coefficients
	.thumb
	.thumb_func
	.type	jpeg_write_coefficients, %function
jpeg_write_coefficients:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #20
	mov	r6, r1
	cmp	r3, #100
	beq	.L61
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L61:
	movs	r1, #0
	mov	r0, r4
	bl	jpeg_suppress_tables(PLT)
	ldr	r3, [r4]
	mov	r0, r4
	movs	r5, #1
	ldr	r3, [r3, #16]
	blx	r3
	ldr	r3, [r4, #24]
	mov	r0, r4
	ldr	r3, [r3, #8]
	blx	r3
	str	r5, [r4, #36]
	mov	r1, r5
	mov	r0, r4
	bl	jinit_c_master_control(PLT)
	ldr	r3, [r4, #180]
	cmp	r3, #0
	bne	.L80
	ldr	r3, [r4, #228]
	mov	r0, r4
	cmp	r3, #0
	bne	.L81
	bl	jinit_huff_encoder(PLT)
.L63:
	ldr	r3, [r4, #4]
	movs	r1, #1
	movs	r2, #68
	mov	r0, r4
	ldr	r7, .L82
	ldr	r3, [r3]
	blx	r3
	ldr	lr, .L82+4
	mov	r5, r0
	ldr	r3, [r4, #4]
.LPIC9:
	add	r7, pc
	str	r5, [r4, #344]
	mov	r2, #1280
.LPIC8:
	add	lr, pc
	movs	r1, #1
	str	r6, [r5, #24]
	mov	r0, r4
	str	lr, [r5]
	ldr	r3, [r3, #4]
	str	r7, [r5, #4]
	blx	r3
	mov	r1, #1280
	mov	r6, r0
	bl	jzero_far(PLT)
	add	r2, r5, #28
	sbfx	r2, r2, #2, #1
	ands	r2, r2, #3
	beq	.L70
	cmp	r2, #1
	str	r6, [r5, #28]
	bls	.L71
	cmp	r2, #2
	add	r3, r6, #128
	str	r3, [r5, #32]
	bls	.L72
	add	r3, r6, #256
	mov	lr, #7
	str	r3, [r5, #36]
	movs	r3, #3
.L65:
	adds	r0, r3, #2
	adds	r1, r3, #3
	str	r0, [sp, #8]
	adds	r7, r3, #1
	str	r1, [sp, #12]
	vmov.i32	q11, #4  @ v4si
	stmia	sp, {r3, r7}
	adds	r7, r2, #7
	vld1.64	{d16-d17}, [sp:64]
	rsb	r2, r2, #10
	lsrs	r0, r2, #2
	add	r7, r5, r7, lsl #2
	vshl.i32	q10, q8, #7
	vdup.32	q9, r6
	cmp	r0, #1
	vadd.i32	q10, q9, q10
	lsl	r1, r0, #2
	vadd.i32	q8, q8, q11
	vst1.64	{d20-d21}, [r7:64]
	bls	.L67
	vshl.i32	q8, q8, #7
	vadd.i32	q9, q9, q8
	vstr	d18, [r7, #16]
	vstr	d19, [r7, #24]
.L67:
	cmp	r2, r1
	add	r3, r3, r1
	rsb	lr, r1, lr
	beq	.L68
	add	r2, r5, r3, lsl #2
	add	r0, r6, r3, lsl #7
	cmp	lr, #1
	add	r1, r3, #1
	str	r0, [r2, #28]
	beq	.L68
	adds	r0, r3, #2
	cmp	lr, #2
	add	r1, r6, r1, lsl #7
	itt	ne
	addne	r3, r5, r3, lsl #2
	addne	r0, r6, r0, lsl #7
	str	r1, [r2, #32]
	it	ne
	strne	r0, [r3, #36]
.L68:
	mov	r0, r4
	bl	jinit_marker_writer(PLT)
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r3, [r4, #348]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	movs	r2, #0
	movs	r3, #103
	str	r2, [r4, #224]
	str	r3, [r4, #20]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L81:
	bl	jinit_phuff_encoder(PLT)
	b	.L63
.L70:
	mov	lr, #10
	mov	r3, r2
	b	.L65
.L80:
	ldr	r3, [r4]
	mov	r0, r4
	str	r5, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L63
.L71:
	mov	lr, #9
	movs	r3, #1
	b	.L65
.L72:
	mov	lr, #8
	movs	r3, #2
	b	.L65
.L83:
	.align	2
.L82:
	.word	compress_output-(.LPIC9+4)
	.word	start_pass_coef-(.LPIC8+4)
	.size	jpeg_write_coefficients, .-jpeg_write_coefficients
	.section	.text.jpeg_copy_critical_parameters,"ax",%progbits
	.align	2
	.global	jpeg_copy_critical_parameters
	.thumb
	.thumb_func
	.type	jpeg_copy_critical_parameters, %function
jpeg_copy_critical_parameters:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r1
	ldr	r1, [r1, #20]
	sub	sp, sp, #12
	str	r0, [sp, #4]
	cmp	r1, #100
	beq	.L85
	ldr	r2, [fp]
	movs	r4, #20
	mov	r0, fp
	str	r1, [r2, #24]
	ldr	r1, [fp]
	str	r4, [r2, #20]
	ldr	r2, [r1]
	blx	r2
.L85:
	ldr	r3, [sp, #4]
	mov	r0, fp
	mov	r4, fp
	add	r7, fp, #16
	ldr	r2, [r3, #44]
	mov	r8, r3
	ldr	r6, [r3, #32]
	ldr	r1, [r3, #40]
	ldr	r5, [r3, #36]
	str	r2, [fp, #40]
	str	r6, [fp, #28]
	movs	r6, #0
	str	r1, [fp, #36]
	str	r5, [fp, #32]
	bl	jpeg_set_defaults(PLT)
	ldr	r3, [sp, #4]
	mov	r0, fp
	ldr	r1, [r3, #44]
	bl	jpeg_set_colorspace(PLT)
	ldr	r3, [sp, #4]
	ldr	r1, [r3, #220]
	ldr	r2, [r3, #312]
	str	r1, [fp, #56]
	str	r2, [fp, #188]
.L89:
	ldr	r1, [r8, #172]
	cbz	r1, .L86
	ldr	r0, [r4, #72]
	cmp	r0, #0
	beq	.L116
.L87:
	movs	r2, #128
	bl	memcpy(PLT)
	ldr	r2, [r4, #72]
	str	r6, [r2, #128]
.L86:
	adds	r4, r4, #4
	add	r8, r8, #4
	cmp	r4, r7
	bne	.L89
	ldr	r3, [sp, #4]
	ldr	r2, [r3, #40]
	subs	r1, r2, #1
	str	r2, [fp, #60]
	cmp	r1, #9
	bhi	.L117
	ldr	r7, [r3, #224]
	ldr	r2, [fp, #68]
.L91:
	adds	r7, r7, #84
	add	r8, r2, #84
	movs	r6, #44
	movs	r3, #0
	str	r3, [sp]
.L102:
	ldr	r2, [r7, #-84]
	str	r2, [r8, #-84]
	ldr	r2, [r7, #-76]
	str	r2, [r8, #-76]
	ldr	r2, [r7, #-72]
	str	r2, [r8, #-72]
	ldr	r5, [r7, #-68]
	cmp	r5, #3
	str	r5, [r8, #-68]
	add	r4, r5, #42
	bhi	.L94
	ldr	r3, [sp, #4]
	add	r2, r3, r4, lsl #2
	ldr	r10, [r2, #4]
	cmp	r10, #0
	beq	.L94
.L95:
	ldr	r9, [r7, #-8]
	movs	r4, #0
	cmp	r9, #0
	beq	.L100
.L101:
	ldrh	lr, [r9, r4]
	mov	r0, fp
	ldrh	r2, [r10, r4]
	adds	r4, r4, #2
	cmp	lr, r2
	beq	.L99
	ldr	r2, [fp]
	str	r5, [r2, #24]
	ldr	r3, [fp]
	str	r6, [r2, #20]
	ldr	r2, [r3]
	blx	r2
.L99:
	cmp	r4, #128
	bne	.L101
.L100:
	ldr	r3, [sp]
	adds	r7, r7, #84
	ldr	r2, [fp, #60]
	add	r8, r8, #84
	adds	r3, r3, #1
	cmp	r2, r3
	str	r3, [sp]
	bgt	.L102
	ldr	r3, [sp, #4]
.L98:
	ldr	r2, [r3, #292]
	cbz	r2, .L84
	ldrb	r2, [r3, #296]	@ zero_extendqisi2
	cmp	r2, #1
	itttt	eq
	strbeq	r2, [fp, #212]
	ldrbeq	r2, [r3, #297]	@ zero_extendqisi2
	ldreq	r3, [sp, #4]
	strbeq	r2, [fp, #213]
	ldrb	r2, [r3, #298]	@ zero_extendqisi2
	strb	r2, [fp, #214]
	ldrh	r1, [r3, #300]
	ldrh	r2, [r3, #302]
	strh	r1, [fp, #216]	@ movhi
	strh	r2, [fp, #218]	@ movhi
.L84:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L94:
	ldr	r2, [fp]
	movs	r3, #52
	mov	r0, fp
	str	r5, [r2, #24]
	ldr	r1, [fp]
	str	r3, [r2, #20]
	ldr	r2, [r1]
	blx	r2
	ldr	r3, [sp, #4]
	add	r4, r3, r4, lsl #2
	ldr	r10, [r4, #4]
	b	.L95
.L117:
	ldr	r1, [fp]
	movs	r5, #26
	movs	r4, #10
	mov	r0, fp
	str	r2, [r1, #24]
	ldr	r2, [fp]
	str	r5, [r1, #20]
	str	r4, [r2, #28]
	ldr	r2, [fp]
	ldr	r2, [r2]
	blx	r2
	ldr	r1, [fp, #60]
	ldr	r3, [sp, #4]
	ldr	r2, [fp, #68]
	cmp	r1, #0
	ldr	r7, [r3, #224]
	bgt	.L91
	b	.L98
.L116:
	mov	r0, fp
	bl	jpeg_alloc_quant_table(PLT)
	str	r0, [r4, #72]
	ldr	r1, [r8, #172]
	b	.L87
	.size	jpeg_copy_critical_parameters, .-jpeg_copy_critical_parameters
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
