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
	.file	"jidctred.c"
	.section	.text.jpeg_idct_4x4,"ax",%progbits
	.align	2
	.global	jpeg_idct_4x4
	.thumb
	.thumb_func
	.type	jpeg_idct_4x4, %function
jpeg_idct_4x4:
	@ args = 4, pretend = 0, frame = 176
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, [r0, #336]
	ldr	r1, [r1, #80]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r5, #59266
	sub	sp, sp, #180
	adds	r0, r0, #128
	movw	r6, #63806
	movw	r7, #47737
	movw	r8, #61360
	movw	r10, #60610
	add	r4, sp, #48
	str	r0, [sp, #44]
	movt	r5, 65535
	adds	r0, r2, #2
	movt	r6, 65535
	movt	r7, 65535
	movt	r8, 65535
	movt	r10, 65535
	str	r4, [sp, #40]
	adds	r4, r1, #2
	str	r3, [sp, #36]
	mov	r3, r1
	str	r0, [sp, #12]
	add	r1, sp, #48
	str	r5, [sp, #16]
	movs	r0, #7
	str	r6, [sp, #20]
	str	r7, [sp, #24]
	str	r8, [sp, #28]
	str	r10, [sp, #32]
	b	.L2
.L27:
	cmp	ip, #0
	bne	.L4
	ldrh	r6, [r2, #48]
	cmp	r6, #0
	beq	.L7
	ldrh	lr, [r2, #96]
	ldrh	r7, [r2, #112]
	ldrh	r8, [r2, #80]
.L6:
	ldrh	fp, [r3, #80]
	ldrh	r10, [r3, #112]
	ldrh	r9, [r3, #96]
	smulbb	r8, r8, fp
	ldrh	fp, [r3, #48]
	smulbb	r7, r7, r10
	movw	r10, #11893
	smulbb	lr, lr, r9
	ldrh	r9, [r3, #32]
	mul	r10, r10, r8
	smulbb	r6, r6, fp
	ldrh	fp, [r3, #16]
	smulbb	ip, ip, r9
	str	r10, [sp, #4]
	ldr	r10, [sp, #32]
	str	ip, [sp]
	smulbb	r5, r5, fp
	ldr	ip, [sp, #12]
	ldrh	fp, [r4, #-2]
	mul	r8, r10, r8
	ldr	r10, [sp, #16]
	ldrh	r9, [ip, #-2]
	ldr	ip, [sp, #4]
	mul	lr, r10, lr
	smulbb	r9, r9, fp
	movw	fp, #7373
	str	lr, [sp, #8]
	ldr	lr, [sp, #20]
	lsl	r9, r9, #14
	mla	r10, lr, r7, ip
	ldr	lr, [sp, #28]
	ldr	ip, [sp]
	mla	r7, lr, r7, r8
	ldr	r8, [sp, #24]
	mla	r10, r8, r6, r10
	ldr	r8, [sp, #8]
	mla	r7, fp, r6, r7
	movw	r6, #15137
	mla	lr, r6, ip, r8
	movw	fp, #8697
	movw	ip, #20995
	mla	r10, fp, r5, r10
	add	r8, r9, lr
	mla	r5, ip, r5, r7
	rsb	r9, lr, r9
	add	fp, r9, r10
	rsb	r10, r10, r9
	add	lr, r8, r5
	rsb	r5, r5, r8
	add	lr, lr, #2048
	add	r5, r5, #2048
	add	fp, fp, #2048
	add	r10, r10, #2048
	asr	r6, lr, #12
	asrs	r5, r5, #12
	asr	r7, fp, #12
	asr	r10, r10, #12
	str	r6, [r1]
	str	r5, [r1, #96]
	str	r7, [r1, #32]
	str	r10, [r1, #64]
.L10:
	adds	r1, r1, #4
	cbz	r0, .L26
.L11:
	ldr	r5, [sp, #12]
	adds	r2, r2, #2
	adds	r4, r4, #2
	adds	r3, r3, #2
	subs	r0, r0, #1
	adds	r5, r5, #2
	str	r5, [sp, #12]
.L2:
	cmp	r0, #3
	beq	.L3
	ldrh	r5, [r2, #16]
	ldrh	ip, [r2, #32]
	cmp	r5, #0
	beq	.L27
.L4:
	ldrh	lr, [r2, #96]
	ldrh	r7, [r2, #112]
	ldrh	r8, [r2, #80]
	ldrh	r6, [r2, #48]
	b	.L6
.L3:
	adds	r1, r1, #4
	b	.L11
.L26:
	movw	r4, #60610
	ldr	ip, [sp, #216]
	movt	r4, 65535
	movw	r10, #59266
	str	r4, [sp, #20]
	movw	r9, #63806
	ldr	r4, [sp, #44]
	movw	lr, #47737
	movw	r2, #61360
	add	r3, sp, #48
	movt	r10, 65535
	movt	r9, 65535
	movt	lr, 65535
	movt	r2, 65535
	str	lr, [sp, #12]
	str	r2, [sp, #16]
	str	r10, [sp, #24]
	str	r9, [sp, #28]
.L20:
	ldr	r5, [sp, #36]
	ldr	r1, [r3, #4]
	ldr	lr, [r3, #8]
	ldr	r6, [r5, r0]
	add	r2, r6, ip
	cmp	r1, #0
	bne	.L12
	cmp	lr, #0
	beq	.L13
	ldr	r8, [r3, #24]
	ldr	fp, [r3, #20]
	ldr	r5, [r3, #12]
	ldr	r7, [r3, #28]
	str	r7, [sp, #32]
.L14:
	ldr	r7, [sp, #20]
	movw	r10, #11893
	mul	r9, r7, fp
	ldr	r7, [sp, #32]
	mul	fp, r10, fp
	ldr	r10, [sp, #24]
	mul	r8, r10, r8
	ldr	r10, [r3], #32
	str	r8, [sp, #40]
	lsl	r10, r10, #14
	ldr	r8, [sp, #16]
	mla	r9, r8, r7, r9
	ldr	r8, [sp, #28]
	mla	fp, r8, r7, fp
	ldr	r8, [sp, #40]
	movw	r7, #15137
	str	fp, [sp, #32]
	movw	fp, #7373
	mla	r9, fp, r5, r9
	movw	fp, #20995
	mla	lr, r7, lr, r8
	ldr	r7, [sp, #12]
	mla	r9, fp, r1, r9
	ldr	fp, [sp, #32]
	add	r8, r10, lr
	rsb	r10, lr, r10
	mla	r5, r7, r5, fp
	add	fp, r8, r9
	add	fp, fp, #262144
	rsb	r9, r9, r8
	movw	r8, #8697
	ubfx	fp, fp, #19, #10
	mla	r7, r8, r1, r5
	ldrb	fp, [r4, fp]	@ zero_extendqisi2
	add	r9, r9, #262144
	ubfx	r9, r9, #19, #10
	strb	fp, [r6, ip]
	add	r5, r10, r7
	ldrb	r6, [r4, r9]	@ zero_extendqisi2
	add	r5, r5, #262144
	rsb	r7, r7, r10
	ubfx	r5, r5, #19, #10
	add	r7, r7, #262144
	strb	r6, [r2, #3]
	ubfx	r7, r7, #19, #10
	ldrb	r1, [r4, r5]	@ zero_extendqisi2
	strb	r1, [r2, #1]
	ldrb	r1, [r4, r7]	@ zero_extendqisi2
	strb	r1, [r2, #2]
.L18:
	adds	r0, r0, #4
	cmp	r0, #16
	bne	.L20
	add	sp, sp, #180
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L12:
	ldr	r5, [r3, #28]
	ldr	r8, [r3, #24]
	ldr	fp, [r3, #20]
	str	r5, [sp, #32]
	ldr	r5, [r3, #12]
	b	.L14
.L13:
	ldr	r5, [r3, #12]
	cbz	r5, .L15
	ldr	r7, [r3, #28]
	ldr	r8, [r3, #24]
	ldr	fp, [r3, #20]
	str	r7, [sp, #32]
	b	.L14
.L7:
	ldrh	r8, [r2, #80]
	ldrh	lr, [r2, #96]
	cmp	r8, #0
	bne	.L28
	ldrh	r7, [r2, #112]
	mov	r6, r8
	mov	ip, r8
	cmp	lr, #0
	bne	.L6
	cmp	r7, #0
	bne	.L21
	ldr	r7, [sp, #12]
	ldrh	r5, [r4, #-2]
	ldrh	r6, [r7, #-2]
	smulbb	r5, r6, r5
	lsls	r5, r5, #2
	str	r5, [r1]
	str	r5, [r1, #32]
	str	r5, [r1, #64]
	str	r5, [r1, #96]
	b	.L10
.L15:
	ldr	fp, [r3, #20]
	ldr	r8, [r3, #24]
	cmp	fp, #0
	bne	.L29
	cmp	r8, #0
	bne	.L30
	ldr	r7, [r3, #28]
	str	r7, [sp, #32]
	cbnz	r7, .L22
	ldr	r1, [r3], #32
	adds	r1, r1, #16
	ubfx	r1, r1, #5, #10
	ldrb	r1, [r4, r1]	@ zero_extendqisi2
	strb	r1, [r6, ip]
	strb	r1, [r2, #1]
	strb	r1, [r2, #2]
	strb	r1, [r2, #3]
	b	.L18
.L28:
	mov	ip, r6
	ldrh	r7, [r2, #112]
	b	.L6
.L29:
	ldr	r7, [r3, #28]
	mov	lr, r5
	str	r7, [sp, #32]
	b	.L14
.L30:
	ldr	r5, [r3, #28]
	mov	lr, fp
	str	r5, [sp, #32]
	mov	r5, fp
	b	.L14
.L21:
	mov	r6, lr
	mov	r8, lr
	mov	ip, lr
	b	.L6
.L22:
	mov	r5, r8
	mov	fp, r8
	mov	lr, r8
	b	.L14
	.size	jpeg_idct_4x4, .-jpeg_idct_4x4
	.section	.text.jpeg_idct_2x2,"ax",%progbits
	.align	2
	.global	jpeg_idct_2x2
	.thumb
	.thumb_func
	.type	jpeg_idct_2x2, %function
jpeg_idct_2x2:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, [r0, #336]
	ldr	r1, [r1, #80]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r4, #59630
	movw	r9, #55110
	sub	sp, sp, #84
	adds	r0, r0, #128
	movt	r4, 65535
	movt	r9, 65535
	str	r3, [sp, #12]
	str	r0, [sp]
	adds	r6, r2, #2
	str	r4, [sp, #4]
	adds	r5, r1, #2
	str	r9, [sp, #8]
	movs	r4, #7
	movs	r3, #8
	add	r0, sp, #16
	b	.L32
.L60:
	ldrh	lr, [r2, #48]
	cmp	lr, #0
	beq	.L36
	ldrh	r8, [r2, #112]
	ldrh	ip, [r2, #80]
.L37:
	ldrh	r10, [r1, #112]
	ldrh	fp, [r1, #80]
	ldrh	r9, [r1, #48]
	smulbb	r8, r8, r10
	ldrh	r10, [r1, #16]
	smulbb	ip, ip, fp
	ldrh	fp, [r6, #-2]
	smulbb	lr, lr, r9
	movw	r9, #6967
	mul	ip, r9, ip
	ldrh	r9, [r5, #-2]
	smulbb	r7, r7, r10
	ldr	r10, [sp, #4]
	smulbb	r9, fp, r9
	mla	r8, r10, r8, ip
	ldr	ip, [sp, #8]
	movw	r10, #29692
	lsl	r9, r9, #15
	mla	lr, ip, lr, r8
	mla	r7, r10, r7, lr
	add	ip, r9, r7
	rsb	r7, r7, r9
	add	ip, ip, #4096
	add	r7, r7, #4096
	asr	ip, ip, #13
	asrs	r7, r7, #13
	str	ip, [r0]
	str	r7, [r0, #32]
.L33:
	adds	r0, r0, #4
	cbz	r4, .L59
.L39:
	subs	r3, r3, #1
	adds	r6, r6, #2
	adds	r2, r2, #2
	adds	r5, r5, #2
	adds	r1, r1, #2
	subs	r4, r4, #1
.L32:
	bic	r7, r3, #2
	cmp	r7, #4
	beq	.L33
	cmp	r3, #2
	beq	.L34
	ldrh	r7, [r2, #16]
	cmp	r7, #0
	beq	.L60
	ldrh	r8, [r2, #112]
	ldrh	ip, [r2, #80]
	ldrh	lr, [r2, #48]
	b	.L37
.L34:
	adds	r0, r0, #4
	b	.L39
.L59:
	ldr	ip, [sp, #12]
	ldr	r3, [sp, #20]
	ldr	r7, [sp, #120]
	ldr	r2, [ip]
	add	r7, r7, r2
	cbnz	r3, .L61
	ldr	r5, [sp, #28]
	cmp	r5, #0
	bne	.L44
	ldr	r1, [sp, #36]
	ldr	r6, [sp, #44]
	cbnz	r1, .L43
	cmp	r6, #0
	bne	.L52
	ldr	r3, [sp, #16]
	ldr	r10, [sp]
	ldr	ip, [sp, #120]
	adds	r3, r3, #16
	ubfx	r3, r3, #5, #10
	ldrb	r3, [r10, r3]	@ zero_extendqisi2
	mov	lr, ip
	strb	r3, [r2, ip]
	strb	r3, [r7, #1]
	b	.L42
.L36:
	ldrh	ip, [r2, #80]
	ldrh	r8, [r2, #112]
	cmp	ip, #0
	bne	.L37
	cmp	r8, #0
	bne	.L51
	ldrh	lr, [r6, #-2]
	ldrh	r7, [r5, #-2]
	smulbb	r7, lr, r7
	lsls	r7, r7, #2
	str	r7, [r0]
	str	r7, [r0, #32]
	b	.L33
.L61:
	ldr	r6, [sp, #44]
	ldr	r1, [sp, #36]
	ldr	r5, [sp, #28]
.L43:
	movw	ip, #6967
	movw	r4, #59630
	mul	ip, ip, r1
	movt	r4, 65535
	movw	r0, #55110
	ldr	r1, [sp, #16]
	movt	r0, 65535
	ldr	r9, [sp, #120]
	movw	lr, #29692
	mla	r4, r4, r6, ip
	lsls	r1, r1, #15
	mla	r0, r0, r5, r4
	ldr	r4, [sp]
	mla	r3, lr, r3, r0
	mov	lr, r9
	adds	r0, r1, r3
	subs	r3, r1, r3
	add	r0, r0, #524288
	add	r3, r3, #524288
	ubfx	r0, r0, #20, #10
	ubfx	r3, r3, #20, #10
	ldrb	r1, [r4, r0]	@ zero_extendqisi2
	strb	r1, [r2, r9]
	ldrb	r3, [r4, r3]	@ zero_extendqisi2
	strb	r3, [r7, #1]
.L42:
	ldr	r0, [sp, #12]
	ldr	r2, [sp, #52]
	ldr	r3, [r0, #4]
	add	lr, lr, r3
	cbnz	r2, .L46
	ldr	r5, [sp, #60]
	cmp	r5, #0
	bne	.L62
	ldr	r1, [sp, #68]
	ldr	r7, [sp, #76]
	cbnz	r1, .L48
	cmp	r7, #0
	bne	.L53
	ldr	r2, [sp, #48]
	ldr	r1, [sp]
	ldr	r4, [sp, #120]
	adds	r2, r2, #16
	ubfx	r2, r2, #5, #10
	ldrb	r2, [r1, r2]	@ zero_extendqisi2
	strb	r2, [r3, r4]
	strb	r2, [lr, #1]
	b	.L31
.L46:
	ldr	r7, [sp, #76]
	ldr	r1, [sp, #68]
	ldr	r5, [sp, #60]
.L48:
	movw	r0, #6967
	movw	r4, #59630
	mul	r1, r0, r1
	movt	r4, 65535
	movw	r0, #55110
	ldr	r6, [sp, #48]
	movt	r0, 65535
	ldr	r9, [sp]
	movw	ip, #29692
	ldr	r10, [sp, #120]
	mla	r4, r4, r7, r1
	lsls	r1, r6, #15
	mla	r0, r0, r5, r4
	mla	r2, ip, r2, r0
	adds	r0, r1, r2
	subs	r2, r1, r2
	add	r0, r0, #524288
	add	r2, r2, #524288
	ubfx	r0, r0, #20, #10
	ubfx	r2, r2, #20, #10
	ldrb	r1, [r9, r0]	@ zero_extendqisi2
	strb	r1, [r3, r10]
	ldrb	r3, [r9, r2]	@ zero_extendqisi2
	strb	r3, [lr, #1]
.L31:
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L44:
	ldr	r6, [sp, #44]
	ldr	r1, [sp, #36]
	b	.L43
.L62:
	ldr	r7, [sp, #76]
	ldr	r1, [sp, #68]
	b	.L48
.L51:
	mov	lr, ip
	b	.L37
.L53:
	mov	r5, r1
	b	.L48
.L52:
	mov	r5, r3
	b	.L43
	.size	jpeg_idct_2x2, .-jpeg_idct_2x2
	.section	.text.jpeg_idct_1x1,"ax",%progbits
	.align	2
	.global	jpeg_idct_1x1
	.thumb
	.thumb_func
	.type	jpeg_idct_1x1, %function
jpeg_idct_1x1:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5}
	ldr	r4, [r1, #80]
	movs	r1, #4
	ldrh	r2, [r2]
	ldrh	r4, [r4]
	ldr	r0, [r0, #336]
	ldr	r5, [r3]
	ldr	r3, [sp, #8]
	smlabb	r2, r2, r4, r1
	ubfx	r2, r2, #3, #10
	add	r0, r0, r2
	ldrb	r2, [r0, #128]	@ zero_extendqisi2
	strb	r2, [r5, r3]
	pop	{r4, r5}
	bx	lr
	.size	jpeg_idct_1x1, .-jpeg_idct_1x1
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
