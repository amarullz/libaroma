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
	.file	"jidctint.c"
	.section	.text.jpeg_idct_islow,"ax",%progbits
	.align	2
	.global	jpeg_idct_islow
	.thumb
	.thumb_func
	.type	jpeg_idct_islow, %function
jpeg_idct_islow:
	@ args = 4, pretend = 0, frame = 336
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, [r0, #336]
	mov	ip, r2
	ldr	r1, [r1, #80]
	adds	r2, r2, #2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r5, #50399
	sub	sp, sp, #340
	adds	r0, r0, #128
	movw	r6, #58163
	movw	r7, #44541
	movw	r8, #49467
	movw	r10, #62340
	add	r4, sp, #80
	add	lr, ip, #16
	str	r0, [sp, #76]
	movt	r5, 65535
	adds	r0, r1, #2
	movt	r6, 65535
	movt	r7, 65535
	movt	r8, 65535
	movt	r10, 65535
	str	r3, [sp, #68]
	mov	fp, ip
	str	r4, [sp, #72]
	str	r2, [sp, #20]
	mov	r3, r1
	str	lr, [sp, #64]
	mov	ip, r4
	str	r0, [sp, #24]
	str	r5, [sp, #44]
	str	r6, [sp, #48]
	str	r7, [sp, #52]
	str	r8, [sp, #56]
	str	r10, [sp, #60]
	b	.L11
.L30:
	cmp	r10, #0
	bne	.L2
	ldrh	r9, [fp, #48]
	cmp	r9, #0
	beq	.L5
	ldrh	r5, [fp, #96]
	ldrh	r7, [fp, #64]
	ldrh	r6, [fp, #112]
	ldrh	r8, [fp, #80]
.L4:
	ldrh	r4, [r3, #48]
	add	ip, ip, #4
	ldrh	lr, [r3, #16]
	ldrh	r0, [r3, #112]
	ldrh	r1, [r3, #80]
	smulbb	r9, r9, r4
	ldrh	r4, [r3, #96]
	smulbb	r2, r2, lr
	ldrh	lr, [r3, #32]
	str	r9, [sp, #12]
	smulbb	r5, r5, r4
	str	lr, [sp, #16]
	smlabb	lr, r6, r0, r9
	str	r5, [sp, #8]
	ldrh	r5, [r3, #64]
	smlabb	r4, r8, r1, r2
	str	lr, [sp, #28]
	ldr	lr, [sp, #20]
	ldr	r9, [sp, #28]
	smulbb	r5, r7, r5
	ldr	r7, [sp, #24]
	ldrh	lr, [lr, #-2]
	str	r4, [sp, #36]
	add	r9, r9, r4
	movw	r4, #9633
	str	lr, [sp, #32]
	mul	r9, r4, r9
	ldrh	lr, [r7, #-2]
	ldr	r4, [sp, #16]
	smlabb	r7, r6, r0, r2
	smulbb	r6, r6, r0
	str	r6, [sp, #40]
	ldr	r6, [sp, #8]
	smlabb	r0, r10, r4, r6
	ldr	r4, [sp, #48]
	movw	r6, #4433
	mul	r0, r6, r0
	mul	r7, r4, r7
	ldr	r4, [sp, #16]
	smulbb	r10, r10, r4
	ldr	r4, [sp, #56]
	str	r10, [sp, #4]
	ldr	r10, [sp, #12]
	smlabb	r6, r8, r1, r10
	ldr	r10, [sp, #60]
	smulbb	r8, r8, r1
	ldr	r1, [sp, #28]
	str	r8, [sp, #16]
	mla	r8, r4, r1, r9
	ldr	r1, [sp, #52]
	ldr	r4, [sp, #36]
	mul	r6, r1, r6
	mla	r1, r10, r4, r9
	ldr	r4, [sp, #32]
	add	r9, r7, r8
	add	r8, r8, r6
	smulbb	r4, r4, lr
	add	r7, r7, r1
	add	r1, r1, r6
	str	r4, [sp, #28]
	str	r8, [sp, #36]
	ldr	r8, [sp, #32]
	ldr	r4, [sp, #4]
	ldr	r6, [sp, #8]
	smlabb	lr, r8, lr, r5
	movw	r8, #6270
	mla	r10, r8, r4, r0
	ldr	r8, [sp, #44]
	ldr	r4, [sp, #28]
	lsl	lr, lr, #13
	mla	r0, r8, r6, r0
	add	r6, lr, r10
	rsb	lr, r10, lr
	ldr	r10, [sp, #40]
	subs	r5, r4, r5
	movw	r8, #12299
	lsls	r5, r5, #13
	movw	r4, #2446
	mla	r9, r4, r10, r9
	add	r10, r5, r0
	mla	r7, r8, r2, r7
	ldr	r2, [sp, #12]
	subs	r0, r5, r0
	ldr	r5, [sp, #36]
	movw	r4, #25172
	mla	r8, r4, r2, r5
	ldr	r2, [sp, #16]
	movw	r5, #16819
	adds	r4, r6, r7
	subs	r7, r6, r7
	mla	r1, r5, r2, r1
	add	r7, r7, #1024
	add	r2, r10, r8
	add	r6, lr, r9
	rsb	r8, r8, r10
	asrs	r7, r7, #11
	add	r10, r0, r1
	rsb	lr, r9, lr
	subs	r1, r0, r1
	add	r4, r4, #1024
	add	r6, r6, #1024
	add	lr, lr, #1024
	add	r2, r2, #1024
	add	r8, r8, #1024
	add	r10, r10, #1024
	add	r1, r1, #1024
	str	r7, [ip, #220]
	asrs	r4, r4, #11
	asrs	r6, r6, #11
	asr	lr, lr, #11
	asrs	r2, r2, #11
	asr	r5, r8, #11
	asr	r0, r10, #11
	asrs	r1, r1, #11
	ldr	r7, [sp, #24]
	str	r4, [ip, #-4]
	str	r6, [ip, #92]
	str	lr, [ip, #124]
	str	r2, [ip, #28]
	str	r5, [ip, #188]
	str	r0, [ip, #60]
	str	r1, [ip, #156]
.L9:
	ldr	r8, [sp, #64]
	add	fp, fp, #2
	ldr	r6, [sp, #20]
	adds	r7, r7, #2
	str	r7, [sp, #24]
	adds	r3, r3, #2
	cmp	fp, r8
	add	r6, r6, #2
	str	r6, [sp, #20]
	beq	.L29
.L11:
	ldrh	r2, [fp, #16]
	ldrh	r10, [fp, #32]
	cmp	r2, #0
	beq	.L30
.L2:
	ldrh	r5, [fp, #96]
	ldrh	r7, [fp, #64]
	ldrh	r6, [fp, #112]
	ldrh	r8, [fp, #80]
	ldrh	r9, [fp, #48]
	b	.L4
.L29:
	movw	lr, #44541
	movw	r10, #50399
	movt	lr, 65535
	movw	ip, #58163
	movw	r0, #49467
	movw	r1, #62340
	movt	r10, 65535
	movt	ip, 65535
	str	lr, [sp, #40]
	movt	r0, 65535
	movt	r1, 65535
	mov	lr, #0
	add	r4, sp, #80
	str	r10, [sp, #28]
	str	ip, [sp, #36]
	str	r0, [sp, #44]
	str	r1, [sp, #48]
	ldr	r2, [sp, #76]
	str	lr, [sp, #12]
	b	.L21
.L32:
	cmp	r6, #0
	bne	.L12
	ldr	r0, [r4, #12]
	cmp	r0, #0
	beq	.L15
	ldr	r10, [r4, #24]
	ldr	r5, [r4, #16]
.L27:
	ldr	r7, [r4, #28]
	str	r7, [sp, #24]
	ldr	r7, [r4, #20]
	ldr	r9, [sp, #24]
	str	r7, [sp, #20]
	ldr	lr, [sp, #20]
	ldr	r7, [sp, #24]
.L14:
	ldr	ip, [sp, #36]
	add	r7, r7, r0
	add	lr, lr, r1
	mov	fp, r7
	add	fp, fp, lr
	add	r9, r9, r1
	movw	r8, #9633
	str	r7, [sp, #56]
	mul	fp, r8, fp
	movw	r7, #4433
	add	r8, r6, r10
	mul	r9, ip, r9
	ldr	ip, [sp, #48]
	mul	r8, r7, r8
	ldr	r7, [r4], #32
	mla	lr, ip, lr, fp
	str	r7, [sp, #32]
	ldr	r7, [sp, #56]
	movw	ip, #6270
	mla	r6, ip, r6, r8
	add	ip, r9, lr
	str	r6, [sp, #52]
	movw	r6, #12299
	mla	r1, r6, r1, ip
	ldr	ip, [sp, #44]
	ldr	r6, [sp, #40]
	mla	fp, ip, r7, fp
	ldr	ip, [sp, #20]
	ldr	r7, [sp, #32]
	add	ip, ip, r0
	mul	ip, r6, ip
	ldr	r6, [sp, #32]
	add	r7, r7, r5
	add	r9, r9, fp
	lsls	r7, r7, #13
	subs	r5, r6, r5
	ldr	r6, [sp, #28]
	add	fp, fp, ip
	add	lr, lr, ip
	movw	ip, #25172
	lsls	r5, r5, #13
	mla	r8, r6, r10, r8
	ldr	r10, [sp, #52]
	ldr	r6, [sp, #16]
	add	r10, r10, r7
	mla	fp, ip, r0, fp
	add	r0, r10, r1
	add	r0, r0, #131072
	rsb	r1, r1, r10
	ubfx	r0, r0, #18, #10
	add	r1, r1, #131072
	ldrb	ip, [r2, r0]	@ zero_extendqisi2
	add	r0, r5, r8
	rsb	r8, r8, r5
	add	r5, r0, fp
	rsb	fp, fp, r0
	ldr	r0, [sp, #376]
	ubfx	r1, r1, #18, #10
	add	r5, r5, #131072
	ubfx	r5, r5, #18, #10
	add	fp, fp, #131072
	strb	ip, [r6, r0]
	movw	r6, #16819
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	ubfx	fp, fp, #18, #10
	ldr	r0, [sp, #20]
	strb	r1, [r3, #7]
	ldrb	r1, [r2, r5]	@ zero_extendqisi2
	movw	r5, #2446
	mla	lr, r6, r0, lr
	strb	r1, [r3, #1]
	ldr	r1, [sp, #24]
	add	r0, r8, lr
	rsb	r8, lr, r8
	add	r0, r0, #131072
	add	r8, r8, #131072
	ubfx	r0, r0, #18, #10
	ubfx	r8, r8, #18, #10
	mla	r9, r5, r1, r9
	ldrb	r1, [r2, fp]	@ zero_extendqisi2
	ldr	r5, [sp, #52]
	strb	r1, [r3, #6]
	ldrb	r0, [r2, r0]	@ zero_extendqisi2
	subs	r6, r7, r5
	add	r1, r6, r9
	rsb	r9, r9, r6
	add	r1, r1, #131072
	add	r9, r9, #131072
	strb	r0, [r3, #2]
	ubfx	r1, r1, #18, #10
	ldrb	r0, [r2, r8]	@ zero_extendqisi2
	ubfx	r9, r9, #18, #10
	strb	r0, [r3, #5]
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	strb	r1, [r3, #3]
	ldrb	r1, [r2, r9]	@ zero_extendqisi2
	strb	r1, [r3, #4]
.L19:
	ldr	r6, [sp, #12]
	adds	r6, r6, #4
	cmp	r6, #32
	str	r6, [sp, #12]
	beq	.L31
.L21:
	ldr	r5, [sp, #68]
	ldr	r3, [sp, #12]
	ldr	r1, [r4, #4]
	ldr	r6, [sp, #376]
	ldr	r3, [r5, r3]
	str	r3, [sp, #16]
	add	r3, r3, r6
	ldr	r6, [r4, #8]
	cmp	r1, #0
	beq	.L32
.L12:
	ldr	r0, [r4, #20]
	ldr	r7, [r4, #28]
	ldr	r10, [r4, #24]
	str	r0, [sp, #20]
	ldr	r5, [r4, #16]
	mov	r9, r7
	str	r7, [sp, #24]
	ldr	r0, [r4, #12]
	ldr	lr, [sp, #20]
	b	.L14
.L5:
	ldrh	r7, [fp, #64]
	cbz	r7, .L6
	ldrh	r5, [fp, #96]
	mov	r10, r9
	ldrh	r6, [fp, #112]
	ldrh	r8, [fp, #80]
	b	.L4
.L31:
	add	sp, sp, #340
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L15:
	ldr	r5, [r4, #16]
	cbz	r5, .L16
	ldr	r10, [r4, #24]
	mov	r6, r0
	b	.L27
.L6:
	ldrh	r8, [fp, #80]
	ldrh	r5, [fp, #96]
	cmp	r8, #0
	bne	.L33
	ldrh	r6, [fp, #112]
	cmp	r5, #0
	bne	.L34
	cmp	r6, #0
	bne	.L22
	ldr	r1, [sp, #20]
	add	ip, ip, #4
	ldr	r4, [sp, #24]
	ldrh	r2, [r1, #-2]
	ldrh	r1, [r4, #-2]
	mov	r7, r4
	smulbb	r2, r2, r1
	lsls	r2, r2, #2
	str	r2, [ip, #-4]
	str	r2, [ip, #28]
	str	r2, [ip, #60]
	str	r2, [ip, #92]
	str	r2, [ip, #124]
	str	r2, [ip, #156]
	str	r2, [ip, #188]
	str	r2, [ip, #220]
	b	.L9
.L16:
	ldr	r0, [r4, #20]
	ldr	r10, [r4, #24]
	str	r0, [sp, #20]
	cbnz	r0, .L35
	cmp	r10, #0
	bne	.L36
	ldr	r0, [r4, #28]
	str	r0, [sp, #24]
	cbnz	r0, .L23
	ldr	r1, [r4], #32
	ldr	r6, [sp, #16]
	ldr	r5, [sp, #376]
	adds	r1, r1, #16
	ubfx	r1, r1, #5, #10
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	strb	r1, [r6, r5]
	strb	r1, [r3, #1]
	strb	r1, [r3, #2]
	strb	r1, [r3, #3]
	strb	r1, [r3, #4]
	strb	r1, [r3, #5]
	strb	r1, [r3, #6]
	strb	r1, [r3, #7]
	b	.L19
.L35:
	ldr	r6, [r4, #28]
	mov	r0, r5
	ldr	lr, [sp, #20]
	str	r6, [sp, #24]
	mov	r6, r5
	ldr	r7, [sp, #24]
	ldr	r9, [sp, #24]
	b	.L14
.L33:
	mov	r9, r7
	ldrh	r6, [fp, #112]
	mov	r10, r7
	b	.L4
.L34:
	mov	r9, r8
	mov	r7, r8
	mov	r10, r8
	b	.L4
.L36:
	ldr	r0, [sp, #20]
	ldr	r7, [r4, #28]
	mov	r5, r0
	mov	r6, r0
	str	r7, [sp, #24]
	mov	lr, r0
	mov	r9, r7
	b	.L14
.L22:
	mov	r9, r5
	mov	r8, r5
	mov	r7, r5
	mov	r10, r5
	b	.L4
.L23:
	mov	r0, r10
	str	r10, [sp, #20]
	mov	r5, r10
	mov	r6, r10
	ldr	r7, [sp, #24]
	mov	lr, r10
	ldr	r9, [sp, #24]
	b	.L14
	.size	jpeg_idct_islow, .-jpeg_idct_islow
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
