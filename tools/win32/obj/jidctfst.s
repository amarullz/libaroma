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
	.file	"jidctfst.c"
	.section	.text.jpeg_idct_ifast,"ax",%progbits
	.align	2
	.global	jpeg_idct_ifast
	.thumb
	.thumb_func
	.type	jpeg_idct_ifast, %function
jpeg_idct_ifast:
	@ args = 4, pretend = 0, frame = 304
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #308
	ldr	r4, [r0, #336]
	add	r5, sp, #48
	add	r7, sp, #48
	ldr	r0, [r1, #80]
	mov	r1, r2
	adds	r2, r2, #2
	adds	r4, r4, #128
	str	r2, [sp, #20]
	add	r6, r1, #16
	adds	r2, r0, #2
	str	r5, [sp, #40]
	str	r4, [sp, #44]
	mov	r5, r0
	str	r3, [sp, #36]
	str	r6, [sp, #32]
	str	r2, [sp, #24]
	b	.L11
.L29:
	ldrh	r3, [r1, #32]
	str	r3, [sp, #16]
	cmp	r3, #0
	beq	.L3
	ldrh	r4, [r1, #64]
	ldrh	r3, [r1, #96]
	ldrh	r0, [r1, #80]
	str	r4, [sp, #28]
	ldrh	r10, [r1, #112]
	ldrh	r4, [r1, #48]
.L4:
	ldrh	r9, [r5, #16]
	adds	r7, r7, #4
	ldrh	lr, [r5, #48]
	ldrh	ip, [r5, #80]
	ldrh	r8, [r5, #112]
	smulbb	fp, r2, r9
	ldrh	r6, [r5, #96]
	smulbb	r4, r4, lr
	ldrh	lr, [r5, #32]
	smulbb	r8, r10, r8
	smulbb	r10, r0, ip
	smulbb	r6, r3, r6
	movw	r3, #473
	rsb	fp, r8, fp
	rsb	r10, r4, r10
	smlabb	r8, r2, r9, r8
	ldr	r9, [sp, #20]
	ldrh	r2, [r5, #64]
	smlabb	ip, r0, ip, r4
	add	r0, r10, fp
	ldrh	r4, [r9, #-2]
	mul	r3, r3, r0
	ldr	r9, [sp, #16]
	mvn	r0, #668
	str	r2, [sp, #12]
	mul	r10, r0, r10
	ldr	r2, [sp, #24]
	asrs	r3, r3, #8
	smulbb	r9, r9, lr
	ldrh	r0, [r2, #-2]
	add	r10, r3, r10, asr #8
	movw	r2, #277
	mul	fp, r2, fp
	str	r9, [sp, #4]
	str	r10, [sp, #8]
	ldr	r9, [sp, #28]
	ldr	r10, [sp, #12]
	rsb	fp, r3, fp, asr #8
	add	r3, r8, ip
	rsb	ip, ip, r8
	ldr	r8, [sp, #8]
	smulbb	r2, r9, r10
	ldr	r10, [sp, #4]
	rsb	r9, r6, r10
	mov	r10, #362
	mul	r9, r10, r9
	mul	ip, r10, ip
	rsb	r10, r3, r8
	ldr	r8, [sp, #16]
	rsb	ip, r10, ip, asr #8
	smlabb	r6, r8, lr, r6
	smulbb	lr, r4, r0
	add	fp, fp, ip
	smlabb	r0, r4, r0, r2
	rsb	r9, r6, r9, asr #8
	rsb	r2, r2, lr
	rsb	r8, r6, r0
	add	r6, r6, r0
	rsb	r0, r9, r2
	add	r9, r9, r2
	add	r2, r0, ip
	add	r4, r8, fp
	str	r2, [r7, #60]
	rsb	fp, fp, r8
	ldr	r2, [sp, #24]
	rsb	ip, ip, r0
	add	r8, r6, r3
	add	r0, r9, r10
	subs	r6, r6, r3
	rsb	r10, r10, r9
	str	r4, [r7, #124]
	str	fp, [r7, #92]
	str	ip, [r7, #156]
	str	r0, [r7, #28]
	str	r10, [r7, #188]
	str	r8, [r7, #-4]
	str	r6, [r7, #220]
.L9:
	ldr	r3, [sp, #32]
	adds	r1, r1, #2
	ldr	r0, [sp, #20]
	adds	r2, r2, #2
	str	r2, [sp, #24]
	adds	r5, r5, #2
	cmp	r1, r3
	add	r0, r0, #2
	str	r0, [sp, #20]
	beq	.L28
.L11:
	ldrh	r2, [r1, #16]
	cmp	r2, #0
	beq	.L29
	ldrh	r0, [r1, #64]
	ldrh	r6, [r1, #32]
	ldrh	r3, [r1, #96]
	str	r0, [sp, #28]
	str	r6, [sp, #16]
	ldrh	r4, [r1, #48]
	ldrh	r0, [r1, #80]
	ldrh	r10, [r1, #112]
	b	.L4
.L3:
	ldrh	r4, [r1, #48]
	cmp	r4, #0
	beq	.L5
	ldrh	r6, [r1, #64]
	ldrh	r3, [r1, #96]
	ldrh	r0, [r1, #80]
	str	r6, [sp, #28]
	ldrh	r10, [r1, #112]
	b	.L4
.L28:
	add	lr, sp, #48
	movs	r4, #0
	str	r4, [sp, #16]
	mov	fp, lr
	ldr	r2, [sp, #44]
	b	.L21
.L31:
	ldr	r1, [fp, #8]
	cmp	r1, #0
	beq	.L13
	add	r5, fp, #16
	ldr	r6, [fp, #12]
	ldmia	r5, {r5, r7, r10}
	ldr	r4, [fp, #28]
.L14:
	rsb	r8, r4, r0
	rsb	r9, r6, r7
	add	lr, r0, r4
	add	r7, r7, r6
	movw	r0, #473
	add	r6, r9, r8
	mul	r0, r0, r6
	mov	r6, #362
	ldr	ip, [fp], #32
	str	r0, [sp, #28]
	add	r0, r1, r10
	rsb	r1, r10, r1
	mvn	r10, #668
	mul	r9, r10, r9
	add	r4, ip, r5
	rsb	r5, r5, ip
	add	ip, r4, r0
	mul	r6, r6, r1
	subs	r4, r4, r0
	add	r1, lr, r7
	rsb	r7, r7, lr
	str	r9, [sp, #32]
	add	r10, ip, r1
	ldr	r9, [sp, #28]
	ubfx	r10, r10, #5, #10
	str	r6, [sp, #24]
	rsb	ip, r1, ip
	ldrb	r10, [r2, r10]	@ zero_extendqisi2
	ubfx	ip, ip, #5, #10
	asr	r6, r9, #8
	ldr	r9, [sp, #24]
	rsb	r0, r0, r9, asr #8
	movw	r9, #277
	mul	r8, r9, r8
	str	r8, [sp, #24]
	ldr	lr, [sp, #24]
	ldr	r8, [sp, #32]
	add	r9, r6, r8, asr #8
	rsb	r8, r6, lr, asr #8
	ldr	lr, [sp, #20]
	ldr	r6, [sp, #344]
	rsb	r9, r1, r9
	strb	r10, [lr, r6]
	mov	r6, #362
	ldrb	r1, [r2, ip]	@ zero_extendqisi2
	add	ip, r5, r0
	mul	r7, r6, r7
	add	r6, ip, r9
	ubfx	r6, r6, #5, #10
	rsb	ip, r9, ip
	strb	r1, [r3, #7]
	ubfx	ip, ip, #5, #10
	ldrb	r10, [r2, r6]	@ zero_extendqisi2
	subs	r0, r5, r0
	rsb	r9, r9, r7, asr #8
	strb	r10, [r3, #1]
	add	r1, r0, r9
	ldrb	r6, [r2, ip]	@ zero_extendqisi2
	ubfx	r1, r1, #5, #10
	rsb	r0, r9, r0
	add	r8, r8, r9
	ubfx	r0, r0, #5, #10
	add	lr, r4, r8
	strb	r6, [r3, #6]
	ubfx	lr, lr, #5, #10
	ldrb	r5, [r2, r1]	@ zero_extendqisi2
	rsb	r8, r8, r4
	ubfx	r8, r8, #5, #10
	strb	r5, [r3, #2]
	ldrb	r1, [r2, r0]	@ zero_extendqisi2
	strb	r1, [r3, #5]
	ldrb	r1, [r2, lr]	@ zero_extendqisi2
	strb	r1, [r3, #4]
	ldrb	r1, [r2, r8]	@ zero_extendqisi2
	strb	r1, [r3, #3]
.L19:
	ldr	r0, [sp, #16]
	adds	r0, r0, #4
	cmp	r0, #32
	str	r0, [sp, #16]
	beq	.L30
.L21:
	ldr	r6, [sp, #36]
	ldr	r5, [sp, #16]
	ldr	r0, [fp, #4]
	ldr	r1, [sp, #344]
	ldr	r5, [r6, r5]
	mov	r3, r5
	str	r5, [sp, #20]
	add	r3, r3, r1
	cmp	r0, #0
	beq	.L31
	ldr	r5, [fp, #16]
	ldr	r1, [fp, #8]
	ldr	r10, [fp, #24]
	ldr	r7, [fp, #20]
	ldr	r6, [fp, #12]
	ldr	r4, [fp, #28]
	b	.L14
.L13:
	ldr	r6, [fp, #12]
	ldr	r5, [fp, #16]
	cbz	r6, .L15
	ldr	r10, [fp, #24]
	ldr	r7, [fp, #20]
	ldr	r4, [fp, #28]
	b	.L14
.L5:
	ldrh	r0, [r1, #64]
	str	r0, [sp, #28]
	cbz	r0, .L6
	ldrh	r3, [r1, #96]
	str	r4, [sp, #16]
	ldrh	r0, [r1, #80]
	ldrh	r10, [r1, #112]
	b	.L4
.L30:
	add	sp, sp, #308
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L15:
	cbz	r5, .L16
	ldr	r10, [fp, #24]
	mov	r1, r6
	ldr	r7, [fp, #20]
	ldr	r4, [fp, #28]
	b	.L14
.L6:
	ldrh	r0, [r1, #80]
	ldrh	r3, [r1, #96]
	cmp	r0, #0
	bne	.L32
	ldrh	r10, [r1, #112]
	cmp	r3, #0
	bne	.L33
	cmp	r10, #0
	bne	.L22
	ldr	r3, [sp, #20]
	adds	r7, r7, #4
	ldr	r4, [sp, #24]
	ldrh	r2, [r3, #-2]
	ldrh	r3, [r4, #-2]
	smulbb	r3, r2, r3
	mov	r2, r4
	str	r3, [r7, #-4]
	str	r3, [r7, #28]
	str	r3, [r7, #60]
	str	r3, [r7, #92]
	str	r3, [r7, #124]
	str	r3, [r7, #156]
	str	r3, [r7, #188]
	str	r3, [r7, #220]
	b	.L9
.L16:
	ldr	r7, [fp, #20]
	ldr	r10, [fp, #24]
	cbnz	r7, .L34
	ldr	r4, [fp, #28]
	cmp	r10, #0
	bne	.L35
	cbnz	r4, .L23
	ldr	r1, [fp], #32
	ldr	r5, [sp, #20]
	ldr	r4, [sp, #344]
	ubfx	r1, r1, #5, #10
	ldrb	r1, [r2, r1]	@ zero_extendqisi2
	strb	r1, [r5, r4]
	strb	r1, [r3, #1]
	strb	r1, [r3, #2]
	strb	r1, [r3, #3]
	strb	r1, [r3, #4]
	strb	r1, [r3, #5]
	strb	r1, [r3, #6]
	strb	r1, [r3, #7]
	b	.L19
.L34:
	mov	r6, r5
	ldr	r4, [fp, #28]
	mov	r1, r5
	b	.L14
.L32:
	ldr	r4, [sp, #28]
	ldrh	r10, [r1, #112]
	str	r4, [sp, #16]
	b	.L4
.L33:
	mov	r4, r0
	str	r0, [sp, #28]
	str	r0, [sp, #16]
	b	.L4
.L35:
	mov	r6, r7
	mov	r1, r7
	mov	r5, r7
	b	.L14
.L22:
	mov	r0, r3
	mov	r4, r3
	str	r3, [sp, #28]
	str	r3, [sp, #16]
	b	.L4
.L23:
	mov	r6, r10
	mov	r7, r10
	mov	r1, r10
	mov	r5, r10
	b	.L14
	.size	jpeg_idct_ifast, .-jpeg_idct_ifast
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
