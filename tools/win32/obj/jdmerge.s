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
	.file	"jdmerge.c"
	.section	.text.start_pass_merged_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_merged_upsample, %function
start_pass_merged_upsample:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #464]
	movs	r1, #0
	ldr	r2, [r0, #124]
	str	r1, [r3, #36]
	str	r2, [r3, #44]
	bx	lr
	.size	start_pass_merged_upsample, .-start_pass_merged_upsample
	.section	.text.merged_1v_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	merged_1v_upsample, %function
merged_1v_upsample:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r2
	ldr	r5, [sp, #28]
	ldr	r3, [sp, #24]
	ldr	r6, [r5]
	ldr	r7, [r0, #464]
	ldr	r2, [r2]
	add	r3, r3, r6, lsl #2
	ldr	r7, [r7, #12]
	blx	r7
	ldr	r3, [r5]
	adds	r3, r3, #1
	str	r3, [r5]
	ldr	r3, [r4]
	adds	r3, r3, #1
	str	r3, [r4]
	pop	{r3, r4, r5, r6, r7, pc}
	.size	merged_1v_upsample, .-merged_1v_upsample
	.section	.text.h2v1_merged_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v1_merged_upsample, %function
h2v1_merged_upsample:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	ldr	r5, [r0, #120]
	str	r0, [sp, #16]
	ldr	r6, [r1]
	ldr	r0, [r0, #464]
	lsrs	lr, r5, #1
	ldr	r4, [r1, #4]
	ldr	r3, [r3]
	ldr	r1, [r1, #8]
	ldr	r10, [r0, #16]
	str	r3, [sp, #12]
	ldr	fp, [r0, #24]
	ldr	r3, [r0, #20]
	ldr	r6, [r6, r2, lsl #2]
	ldr	r0, [r0, #28]
	ldr	r1, [r1, r2, lsl #2]
	ldr	r9, [sp, #16]
	str	r0, [sp, #8]
	str	r3, [sp, #4]
	str	r6, [sp, #24]
	ldr	r4, [r4, r2, lsl #2]
	str	r1, [sp, #28]
	ldr	r0, [r9, #336]
	str	lr, [sp, #20]
	beq	.L9
	ldr	r3, [sp, #12]
	mov	r2, r6
	mov	r9, lr
	adds	r2, r2, #2
	mov	r6, r1
	add	r9, r9, r4
	str	r9, [sp]
.L7:
	ldrb	lr, [r6], #1	@ zero_extendqisi2
	adds	r2, r2, #2
	ldrb	r7, [r4], #1	@ zero_extendqisi2
	adds	r3, r3, #6
	ldr	r9, [sp, #8]
	ldr	r5, [r10, lr, lsl #2]
	ldrb	r1, [r2, #-4]	@ zero_extendqisi2
	ldr	r8, [r9, r7, lsl #2]
	ldr	ip, [fp, lr, lsl #2]
	add	r5, r5, r0
	ldr	r9, [sp, #4]
	add	ip, ip, r8
	ldr	lr, [r9, r7, lsl #2]
	add	ip, r0, ip, asr #16
	ldrb	r7, [r5, r1]	@ zero_extendqisi2
	add	lr, lr, r0
	strb	r7, [r3, #-6]
	ldrb	r7, [ip, r1]	@ zero_extendqisi2
	strb	r7, [r3, #-5]
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	strb	r1, [r3, #-4]
	ldrb	r1, [r2, #-3]	@ zero_extendqisi2
	ldrb	r5, [r5, r1]	@ zero_extendqisi2
	strb	r5, [r3, #-3]
	ldrb	r5, [ip, r1]	@ zero_extendqisi2
	strb	r5, [r3, #-2]
	ldrb	r1, [lr, r1]	@ zero_extendqisi2
	ldr	lr, [sp]
	strb	r1, [r3, #-1]
	cmp	r4, lr
	bne	.L7
	ldr	r1, [sp, #20]
	mov	r9, lr
	ldr	r2, [sp, #28]
	ldr	r4, [sp, #16]
	add	r2, r2, r1
	lsls	r3, r1, #1
	str	r2, [sp, #28]
	mov	r2, r1
	ldr	r1, [sp, #24]
	add	r2, r2, r3
	ldr	r5, [r4, #120]
	add	r1, r1, r3
	ldr	r3, [sp, #12]
	str	r1, [sp, #24]
	add	r3, r3, r2, lsl #1
	str	r3, [sp, #12]
.L5:
	lsls	r3, r5, #31
	bpl	.L4
	ldr	r4, [sp, #28]
	ldrb	r2, [r9]	@ zero_extendqisi2
	ldr	r9, [sp, #24]
	ldrb	r1, [r4]	@ zero_extendqisi2
	ldr	lr, [sp, #8]
	ldrb	r3, [r9]	@ zero_extendqisi2
	ldr	r5, [fp, r1, lsl #2]
	ldr	r6, [lr, r2, lsl #2]
	ldr	r1, [r10, r1, lsl #2]
	adds	r7, r0, r3
	ldr	r9, [sp, #4]
	ldr	lr, [sp, #12]
	ldrb	r1, [r7, r1]	@ zero_extendqisi2
	ldr	r4, [r9, r2, lsl #2]
	adds	r2, r6, r5
	add	r2, r0, r2, asr #16
	strb	r1, [lr]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	add	r0, r0, r4
	strb	r2, [lr, #1]
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	strb	r3, [lr, #2]
.L4:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L9:
	mov	r9, r4
	b	.L5
	.size	h2v1_merged_upsample, .-h2v1_merged_upsample
	.section	.text.h2v1_merged_upsample_565,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v1_merged_upsample_565, %function
h2v1_merged_upsample_565:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	ldr	r4, [r0, #120]
	ldr	r5, [r1, #4]
	str	r4, [sp, #28]
	ldr	r4, [r0, #464]
	ldr	r3, [r3]
	ldr	r6, [r1]
	ldr	r7, [r4, #16]
	str	r3, [sp, #16]
	ldr	r9, [r4, #28]
	ldr	r3, [r4, #20]
	str	r7, [sp]
	ldr	r7, [r4, #24]
	ldr	r4, [r5, r2, lsl #2]
	ldr	r5, [r0, #336]
	ldr	r0, [sp, #28]
	ldr	r1, [r1, #8]
	ldr	r6, [r6, r2, lsl #2]
	str	r3, [sp, #4]
	ldr	r1, [r1, r2, lsl #2]
	lsrs	r0, r0, #1
	str	r7, [sp, #8]
	str	r6, [sp, #20]
	str	r1, [sp, #24]
	str	r0, [sp, #12]
	beq	.L21
	ldr	r3, [sp, #16]
	mov	r2, r6
	mov	r10, r0
	adds	r2, r2, #2
	add	r10, r10, r4
	mov	ip, r1
	adds	r3, r3, #4
.L19:
	ldrb	r8, [r4], #1	@ zero_extendqisi2
	adds	r2, r2, #2
	ldrb	r1, [ip], #1	@ zero_extendqisi2
	adds	r3, r3, #4
	ldr	r7, [sp, #8]
	ldr	fp, [sp]
	cmp	r4, r10
	ldr	lr, [r9, r8, lsl #2]
	ldr	r6, [r7, r1, lsl #2]
	ldr	r7, [fp, r1, lsl #2]
	ldrb	r0, [r2, #-4]	@ zero_extendqisi2
	ldrb	r1, [r2, #-3]	@ zero_extendqisi2
	add	lr, lr, r6
	ldr	fp, [sp, #4]
	add	lr, r5, lr, asr #16
	add	r7, r7, r5
	ldr	r6, [fp, r8, lsl #2]
	ldrb	fp, [r7, r0]	@ zero_extendqisi2
	ldrb	r8, [lr, r0]	@ zero_extendqisi2
	ldrb	r7, [r7, r1]	@ zero_extendqisi2
	add	r6, r6, r5
	ldrb	lr, [lr, r1]	@ zero_extendqisi2
	ldrb	r0, [r6, r0]	@ zero_extendqisi2
	lsl	fp, fp, #8
	ldrb	r1, [r6, r1]	@ zero_extendqisi2
	lsl	r8, r8, #3
	lsl	r7, r7, #8
	and	fp, fp, #63488
	lsl	lr, lr, #3
	and	r8, r8, #2016
	and	r7, r7, #63488
	and	lr, lr, #2016
	orr	fp, fp, r8
	orr	lr, r7, lr
	orr	fp, fp, r0, lsr #3
	orr	lr, lr, r1, lsr #3
	orr	fp, fp, lr, lsl #16
	asr	r1, fp, #16
	strh	fp, [r3, #-8]	@ movhi
	strh	r1, [r3, #-6]	@ movhi
	bne	.L19
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #20]
	ldr	r4, [sp, #16]
	ldr	r0, [sp, #24]
	add	r3, r3, r2, lsl #1
	add	r4, r4, r2, lsl #2
	add	r0, r0, r2
	str	r0, [sp, #24]
	str	r3, [sp, #20]
	str	r4, [sp, #16]
.L17:
	ldr	r6, [sp, #28]
	lsls	r3, r6, #31
	bpl	.L16
	ldr	r7, [sp, #24]
	ldrb	r3, [r10]	@ zero_extendqisi2
	ldr	fp, [sp, #20]
	ldrb	r2, [r7]	@ zero_extendqisi2
	ldr	lr, [sp, #8]
	ldr	r6, [sp]
	ldrb	r1, [fp]	@ zero_extendqisi2
	ldr	r0, [lr, r2, lsl #2]
	ldr	r4, [r9, r3, lsl #2]
	ldr	r7, [sp, #4]
	add	r5, r5, r1
	ldr	r2, [r6, r2, lsl #2]
	ldr	fp, [sp, #16]
	ldr	r1, [r7, r3, lsl #2]
	adds	r3, r4, r0
	ldrb	r2, [r5, r2]	@ zero_extendqisi2
	asrs	r3, r3, #16
	ldrb	r3, [r5, r3]	@ zero_extendqisi2
	ldrb	r1, [r5, r1]	@ zero_extendqisi2
	lsls	r2, r2, #8
	lsls	r3, r3, #3
	and	r2, r2, #63488
	orr	r2, r2, r1, lsr #3
	and	r3, r3, #2016
	orrs	r3, r3, r2
	strh	r3, [fp]	@ movhi
.L16:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L21:
	mov	r10, r4
	b	.L17
	.size	h2v1_merged_upsample_565, .-h2v1_merged_upsample_565
	.section	.text.h2v1_merged_upsample_565D,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v1_merged_upsample_565D, %function
h2v1_merged_upsample_565D:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	ldr	r6, [r1]
	ldr	r4, [r0, #120]
	ldr	r5, [r0, #148]
	ldr	r6, [r6, r2, lsl #2]
	ldr	lr, .L38
	str	r4, [sp, #52]
	and	r7, r5, #3
	ldr	r4, [r0, #464]
.LPIC16:
	add	lr, pc
	str	r6, [sp, #44]
	ldr	r6, [r0, #336]
	ldr	r0, [sp, #52]
	ldr	r5, [r1, #4]
	ldr	r3, [r3]
	ldr	r1, [r1, #8]
	ldr	lr, [lr, r7, lsl #2]
	lsrs	r0, r0, #1
	ldr	r7, [r4, #16]
	str	r3, [sp, #40]
	ldr	r1, [r1, r2, lsl #2]
	ldr	r3, [r4, #20]
	str	r7, [sp, #16]
	ldr	r7, [r4, #24]
	ldr	r4, [r4, #28]
	str	r3, [sp, #20]
	str	r7, [sp, #24]
	str	r4, [sp, #28]
	ldr	fp, [r5, r2, lsl #2]
	str	r1, [sp, #48]
	str	r0, [sp, #36]
	beq	.L32
	ldr	r2, [sp, #44]
	add	r0, r0, fp
	ldr	r3, [sp, #40]
	str	r0, [sp, #32]
	adds	r2, r2, #2
	str	r1, [sp, #12]
	adds	r3, r3, #4
.L30:
	ldr	r1, [sp, #12]
	adds	r2, r2, #2
	ldr	r7, [sp, #24]
	adds	r3, r3, #4
	ldrb	ip, [fp], #1	@ zero_extendqisi2
	ldrb	r5, [r1], #1	@ zero_extendqisi2
	ldrb	r4, [r2, #-4]	@ zero_extendqisi2
	ldr	r9, [r7, r5, lsl #2]
	ldr	r7, [sp, #28]
	str	r1, [sp, #12]
	uxtb	r1, lr
	ror	lr, lr, #8
	ldr	r7, [r7, ip, lsl #2]
	add	r10, r4, r1, lsr #1
	uxtb	r0, lr
	ror	lr, lr, #8
	str	r7, [sp, #4]
	ldr	r7, [sp, #16]
	ldr	r8, [r7, r5, lsl #2]
	ldr	r7, [sp, #4]
	ldrb	r5, [r2, #-3]	@ zero_extendqisi2
	add	r8, r8, r6
	add	r9, r9, r7
	ldr	r7, [sp, #20]
	ldr	ip, [r7, ip, lsl #2]
	add	r7, r6, r9, asr #16
	add	r9, r8, r4
	add	r8, r8, r5
	ldrb	r10, [r10, r7]	@ zero_extendqisi2
	ldrb	r8, [r8, r0]	@ zero_extendqisi2
	add	ip, ip, r6
	add	r4, r4, ip
	ldrb	r9, [r9, r1]	@ zero_extendqisi2
	ldrb	r1, [r4, r1]	@ zero_extendqisi2
	str	r8, [sp]
	add	r8, r5, r0, lsr #1
	ldr	r4, [sp]
	add	r5, r5, ip
	ldrb	r7, [r8, r7]	@ zero_extendqisi2
	lsl	r10, r10, #3
	ldrb	r0, [r5, r0]	@ zero_extendqisi2
	lsl	r9, r9, #8
	and	r10, r10, #2016
	ldr	r5, [sp, #32]
	lsl	r8, r4, #8
	and	r9, r9, #63488
	lsls	r7, r7, #3
	orr	r10, r9, r10
	and	r8, r8, #63488
	orr	r10, r10, r1, lsr #3
	orr	r8, r8, r0, lsr #3
	and	r7, r7, #2016
	cmp	fp, r5
	orr	r8, r8, r7
	orr	r8, r10, r8, lsl #16
	asr	r1, r8, #16
	strh	r8, [r3, #-8]	@ movhi
	strh	r1, [r3, #-6]	@ movhi
	bne	.L30
	ldr	r8, [sp, #36]
	ldr	r0, [sp, #44]
	ldr	r1, [sp, #40]
	ldr	r7, [sp, #48]
	add	r0, r0, r8, lsl #1
	add	r1, r1, r8, lsl #2
	add	r7, r7, r8
	str	r7, [sp, #48]
	str	r0, [sp, #44]
	str	r1, [sp, #40]
.L28:
	ldr	r2, [sp, #52]
	lsls	r3, r2, #31
	bpl	.L27
	ldr	r3, [sp, #48]
	uxtb	lr, lr
	ldr	r4, [sp, #32]
	ldr	r7, [sp, #44]
	asr	r0, lr, #1
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r8, [sp, #24]
	ldrb	r5, [r7]	@ zero_extendqisi2
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldr	r7, [sp, #28]
	ldr	r1, [r8, r2, lsl #2]
	add	r6, r6, r5
	ldr	r8, [sp, #16]
	add	lr, lr, r6
	ldr	r4, [r7, r3, lsl #2]
	ldr	r5, [sp, #20]
	ldr	r2, [r8, r2, lsl #2]
	add	r1, r1, r4
	ldr	r7, [sp, #40]
	ldr	r3, [r5, r3, lsl #2]
	add	r6, r6, r1, asr #16
	ldrb	r2, [lr, r2]	@ zero_extendqisi2
	ldrb	r1, [lr, r3]	@ zero_extendqisi2
	ldrb	r3, [r6, r0]	@ zero_extendqisi2
	lsls	r2, r2, #8
	and	r2, r2, #63488
	lsls	r3, r3, #3
	orr	r2, r2, r1, lsr #3
	and	r3, r3, #2016
	orrs	r3, r3, r2
	strh	r3, [r7]	@ movhi
.L27:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L32:
	str	fp, [sp, #32]
	b	.L28
.L39:
	.align	2
.L38:
	.word	.LANCHOR0-(.LPIC16+4)
	.size	h2v1_merged_upsample_565D, .-h2v1_merged_upsample_565D
	.section	.text.h2v2_merged_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v2_merged_upsample, %function
h2v2_merged_upsample:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	ldr	r6, [r1]
	str	r0, [sp, #28]
	ldr	r5, [sp, #28]
	add	r7, r6, r2, lsl #3
	ldr	r6, [r6, r2, lsl #3]
	ldr	r0, [r0, #120]
	ldr	r4, [r5, #464]
	ldr	r7, [r7, #4]
	ldr	r5, [r1, #4]
	ldr	r1, [r1, #8]
	str	r6, [sp, #36]
	str	r7, [sp, #40]
	ldr	r6, [r4, #16]
	ldr	r7, [r4, #20]
	ldr	r1, [r1, r2, lsl #2]
	str	r6, [sp, #4]
	str	r7, [sp, #8]
	ldr	r6, [r4, #24]
	ldr	r7, [r5, r2, lsl #2]
	lsrs	r2, r0, #1
	ldr	r4, [r4, #28]
	str	r1, [sp, #44]
	ldr	r8, [sp, #28]
	ldr	r1, [r3]
	ldr	r3, [r3, #4]
	str	r6, [sp, #12]
	str	r4, [sp, #16]
	ldr	r6, [r8, #336]
	str	r1, [sp, #20]
	str	r3, [sp, #24]
	str	r2, [sp, #32]
	beq	.L45
	ldr	r4, [sp, #36]
	mov	fp, r2
	ldr	r0, [sp, #40]
	mov	r2, r3
	ldr	r10, [sp, #44]
	mov	r3, r1
	adds	r4, r4, #2
	add	fp, fp, r7
	adds	r0, r0, #2
	str	fp, [sp]
.L43:
	ldrb	ip, [r10], #1	@ zero_extendqisi2
	adds	r4, r4, #2
	ldr	r8, [sp, #4]
	adds	r3, r3, #6
	ldrb	lr, [r7], #1	@ zero_extendqisi2
	adds	r0, r0, #2
	ldr	r9, [sp, #12]
	adds	r2, r2, #6
	ldr	fp, [sp, #16]
	ldr	r1, [r8, ip, lsl #2]
	ldrb	r5, [r4, #-4]	@ zero_extendqisi2
	ldr	r8, [r9, ip, lsl #2]
	ldr	r9, [fp, lr, lsl #2]
	add	r1, r1, r6
	ldr	fp, [sp, #8]
	add	r8, r8, r9
	ldr	ip, [fp, lr, lsl #2]
	add	r8, r6, r8, asr #16
	ldrb	lr, [r1, r5]	@ zero_extendqisi2
	add	ip, ip, r6
	strb	lr, [r3, #-6]
	ldrb	lr, [r8, r5]	@ zero_extendqisi2
	strb	lr, [r3, #-5]
	ldrb	r5, [ip, r5]	@ zero_extendqisi2
	strb	r5, [r3, #-4]
	ldrb	r5, [r4, #-3]	@ zero_extendqisi2
	ldrb	lr, [r1, r5]	@ zero_extendqisi2
	strb	lr, [r3, #-3]
	ldrb	lr, [r8, r5]	@ zero_extendqisi2
	strb	lr, [r3, #-2]
	ldrb	r5, [ip, r5]	@ zero_extendqisi2
	strb	r5, [r3, #-1]
	ldrb	r5, [r0, #-4]	@ zero_extendqisi2
	ldrb	lr, [r1, r5]	@ zero_extendqisi2
	strb	lr, [r2, #-6]
	ldrb	lr, [r8, r5]	@ zero_extendqisi2
	strb	lr, [r2, #-5]
	ldrb	r5, [ip, r5]	@ zero_extendqisi2
	strb	r5, [r2, #-4]
	ldrb	r5, [r0, #-3]	@ zero_extendqisi2
	ldrb	r1, [r1, r5]	@ zero_extendqisi2
	strb	r1, [r2, #-3]
	ldrb	r1, [r8, r5]	@ zero_extendqisi2
	strb	r1, [r2, #-2]
	ldrb	r1, [ip, r5]	@ zero_extendqisi2
	ldr	ip, [sp]
	strb	r1, [r2, #-1]
	cmp	r7, ip
	bne	.L43
	ldr	r0, [sp, #32]
	mov	fp, ip
	ldr	r1, [sp, #44]
	ldr	r5, [sp, #36]
	ldr	r7, [sp, #40]
	ldr	r4, [sp, #28]
	lsls	r3, r0, #1
	ldr	r2, [sp, #32]
	add	r1, r1, r0
	add	r5, r5, r3
	add	r7, r7, r3
	str	r1, [sp, #44]
	add	r2, r2, r3
	ldr	r1, [sp, #20]
	ldr	r3, [sp, #24]
	lsls	r2, r2, #1
	ldr	r0, [r4, #120]
	add	r1, r1, r2
	str	r5, [sp, #36]
	add	r3, r3, r2
	str	r7, [sp, #40]
	str	r1, [sp, #20]
	str	r3, [sp, #24]
.L41:
	lsls	r3, r0, #31
	bpl	.L40
	ldr	r4, [sp, #44]
	ldr	r7, [sp, #4]
	ldrb	r0, [fp]	@ zero_extendqisi2
	ldrb	r2, [r4]	@ zero_extendqisi2
	ldr	r5, [sp, #36]
	ldr	r8, [sp, #12]
	ldr	r9, [sp, #16]
	ldr	r1, [r7, r2, lsl #2]
	ldrb	r3, [r5]	@ zero_extendqisi2
	ldr	r2, [r8, r2, lsl #2]
	ldr	r5, [r9, r0, lsl #2]
	add	r1, r1, r6
	ldr	fp, [sp, #8]
	ldr	ip, [sp, #20]
	add	r2, r2, r5
	ldr	r4, [fp, r0, lsl #2]
	add	r2, r6, r2, asr #16
	ldrb	r0, [r1, r3]	@ zero_extendqisi2
	add	r6, r6, r4
	ldr	r4, [sp, #24]
	strb	r0, [ip]
	ldrb	r0, [r2, r3]	@ zero_extendqisi2
	strb	r0, [ip, #1]
	ldr	r0, [sp, #40]
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	strb	r3, [ip, #2]
	ldrb	r3, [r0]	@ zero_extendqisi2
	ldrb	r1, [r1, r3]	@ zero_extendqisi2
	strb	r1, [r4]
	ldrb	r2, [r2, r3]	@ zero_extendqisi2
	strb	r2, [r4, #1]
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	strb	r3, [r4, #2]
.L40:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L45:
	mov	fp, r7
	b	.L41
	.size	h2v2_merged_upsample, .-h2v2_merged_upsample
	.section	.text.h2v2_merged_upsample_565,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v2_merged_upsample_565, %function
h2v2_merged_upsample_565:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	ldr	r6, [r1]
	ldr	r4, [r0, #120]
	ldr	ip, [r0, #336]
	add	r7, r6, r2, lsl #3
	ldr	r6, [r6, r2, lsl #3]
	str	r4, [sp, #52]
	ldr	r7, [r7, #4]
	ldr	r4, [r0, #464]
	ldr	r0, [sp, #52]
	ldr	r5, [r1, #4]
	str	r6, [sp, #40]
	ldr	r1, [r1, #8]
	ldr	r6, [r4, #16]
	lsrs	r0, r0, #1
	str	r7, [sp, #44]
	ldr	r7, [r4, #20]
	str	r6, [sp, #8]
	ldr	r5, [r5, r2, lsl #2]
	ldr	r6, [r4, #24]
	str	r7, [sp, #12]
	ldr	r4, [r4, #28]
	ldr	r7, [r3]
	ldr	r1, [r1, r2, lsl #2]
	ldr	r3, [r3, #4]
	str	r6, [sp, #16]
	str	r4, [sp, #20]
	str	r5, [sp]
	str	r1, [sp, #48]
	str	r7, [sp, #32]
	str	r3, [sp, #36]
	str	r0, [sp, #28]
	beq	.L56
	ldr	r6, [sp, #40]
	mov	r1, r5
	ldr	r4, [sp, #44]
	mov	r2, r0
	mov	r5, r7
	mov	r0, r3
	ldr	r3, [sp, #48]
	adds	r6, r6, #2
	adds	r5, r5, #4
	adds	r4, r4, #2
	adds	r0, r0, #4
	add	r1, r1, r2
	str	r1, [sp, #24]
	str	r3, [sp, #4]
.L54:
	ldr	r7, [sp, #4]
	adds	r6, r6, #2
	ldr	r9, [sp]
	adds	r5, r5, #4
	ldr	r3, [sp, #16]
	adds	r4, r4, #2
	ldrb	r1, [r7], #1	@ zero_extendqisi2
	adds	r0, r0, #4
	ldrb	r8, [r9], #1	@ zero_extendqisi2
	ldrb	lr, [r6, #-4]	@ zero_extendqisi2
	str	r7, [sp, #4]
	ldr	r7, [sp, #20]
	str	r9, [sp]
	ldr	r9, [sp, #8]
	ldr	r2, [r3, r1, lsl #2]
	ldr	r3, [r7, r8, lsl #2]
	ldr	r1, [r9, r1, lsl #2]
	ldrb	r7, [r6, #-3]	@ zero_extendqisi2
	ldr	r9, [sp, #12]
	add	r2, r2, r3
	add	r2, ip, r2, asr #16
	add	r1, r1, ip
	ldr	r3, [r9, r8, lsl #2]
	ldrb	fp, [r2, lr]	@ zero_extendqisi2
	ldrb	r9, [r1, lr]	@ zero_extendqisi2
	ldrb	r10, [r2, r7]	@ zero_extendqisi2
	add	r3, r3, ip
	ldrb	r8, [r1, r7]	@ zero_extendqisi2
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	lsl	fp, fp, #3
	ldrb	r7, [r3, r7]	@ zero_extendqisi2
	lsl	r9, r9, #8
	lsl	r10, r10, #3
	and	fp, fp, #2016
	lsl	r8, r8, #8
	and	r9, r9, #63488
	and	r10, r10, #2016
	and	r8, r8, #63488
	orr	r9, r9, fp
	orr	r10, r8, r10
	orr	r9, r9, lr, lsr #3
	orr	r10, r10, r7, lsr #3
	orr	r9, r9, r10, lsl #16
	asr	r7, r9, #16
	strh	r9, [r5, #-8]	@ movhi
	strh	r7, [r5, #-6]	@ movhi
	ldrb	lr, [r4, #-4]	@ zero_extendqisi2
	ldrb	r7, [r4, #-3]	@ zero_extendqisi2
	ldrb	r9, [r1, lr]	@ zero_extendqisi2
	ldrb	r8, [r2, lr]	@ zero_extendqisi2
	ldrb	r1, [r1, r7]	@ zero_extendqisi2
	ldrb	r2, [r2, r7]	@ zero_extendqisi2
	ldrb	lr, [r3, lr]	@ zero_extendqisi2
	lsl	r9, r9, #8
	ldrb	r3, [r3, r7]	@ zero_extendqisi2
	lsl	r8, r8, #3
	lsls	r1, r1, #8
	and	r9, r9, #63488
	lsls	r2, r2, #3
	and	r8, r8, #2016
	and	r1, r1, #63488
	and	r2, r2, #2016
	orr	r9, r9, r8
	orrs	r1, r1, r2
	orr	r9, r9, lr, lsr #3
	orr	r1, r1, r3, lsr #3
	orr	r9, r9, r1, lsl #16
	asr	r3, r9, #16
	strh	r9, [r0, #-8]	@ movhi
	strh	r3, [r0, #-6]	@ movhi
	ldr	r1, [sp]
	ldr	r2, [sp, #24]
	cmp	r1, r2
	bne	.L54
	ldr	r3, [sp, #28]
	ldr	r7, [sp, #40]
	ldr	r0, [sp, #44]
	ldr	r4, [sp, #48]
	lsls	r2, r3, #1
	ldr	r1, [sp, #32]
	ldr	r6, [sp, #28]
	lsls	r3, r3, #2
	add	r7, r7, r2
	add	r0, r0, r2
	ldr	r2, [sp, #36]
	add	r4, r4, r6
	add	r1, r1, r3
	str	r4, [sp, #48]
	add	r2, r2, r3
	str	r7, [sp, #40]
	str	r0, [sp, #44]
	str	r1, [sp, #32]
	str	r2, [sp, #36]
.L52:
	ldr	r4, [sp, #52]
	lsls	r3, r4, #31
	bpl	.L51
	ldr	r6, [sp, #48]
	ldr	r7, [sp, #24]
	ldr	r9, [sp, #40]
	ldrb	r2, [r6]	@ zero_extendqisi2
	ldrb	r0, [r7]	@ zero_extendqisi2
	ldr	r4, [sp, #8]
	ldr	r6, [sp, #16]
	ldr	r7, [sp, #20]
	ldrb	r3, [r9]	@ zero_extendqisi2
	ldr	r9, [sp, #12]
	ldr	r1, [r4, r2, lsl #2]
	ldr	r5, [r7, r0, lsl #2]
	ldr	r2, [r6, r2, lsl #2]
	ldr	r4, [r9, r0, lsl #2]
	add	r1, r1, ip
	ldrb	r0, [r1, r3]	@ zero_extendqisi2
	add	r2, r2, r5
	ldr	r6, [sp, #36]
	add	r2, ip, r2, asr #16
	add	ip, ip, r4
	ldrb	r4, [ip, r3]	@ zero_extendqisi2
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	lsls	r0, r0, #8
	and	r0, r0, #63488
	orr	r0, r0, r4, lsr #3
	ldr	r4, [sp, #44]
	lsls	r3, r3, #3
	and	r3, r3, #2016
	orrs	r3, r3, r0
	ldr	r0, [sp, #32]
	strh	r3, [r0]	@ movhi
	ldrb	r3, [r4]	@ zero_extendqisi2
	ldrb	r4, [r1, r3]	@ zero_extendqisi2
	ldrb	r0, [r2, r3]	@ zero_extendqisi2
	ldrb	r1, [ip, r3]	@ zero_extendqisi2
	lsls	r2, r4, #8
	lsls	r3, r0, #3
	and	r2, r2, #63488
	orr	r2, r2, r1, lsr #3
	and	r3, r3, #2016
	orrs	r3, r3, r2
	strh	r3, [r6]	@ movhi
.L51:
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L56:
	str	r5, [sp, #24]
	b	.L52
	.size	h2v2_merged_upsample_565, .-h2v2_merged_upsample_565
	.section	.text.h2v2_merged_upsample_565D,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	h2v2_merged_upsample_565D, %function
h2v2_merged_upsample_565D:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #92
	ldr	r7, [r0, #148]
	ldr	lr, .L73
	ldr	r6, [r1]
	add	ip, r7, #1
	and	r7, r7, #3
	ldr	r4, [r0, #120]
.LPIC17:
	add	lr, pc
	ldr	r5, [r0, #464]
	ldr	r7, [lr, r7, lsl #2]
	and	ip, ip, #3
	add	r8, r6, r2, lsl #3
	ldr	r0, [r0, #336]
	ldr	r6, [r6, r2, lsl #3]
	str	r7, [sp, #32]
	ldr	r7, [r8, #4]
	str	r4, [sp, #84]
	str	r0, [sp, #24]
	ldr	r0, [sp, #84]
	ldr	r4, [r1, #4]
	str	r7, [sp, #76]
	ldr	r1, [r1, #8]
	ldr	r7, [r5, #20]
	lsrs	r0, r0, #1
	str	r6, [sp, #72]
	ldr	r6, [r5, #16]
	str	r7, [sp, #44]
	ldr	r4, [r4, r2, lsl #2]
	ldr	r7, [r3]
	str	r6, [sp, #40]
	ldr	r1, [r1, r2, lsl #2]
	ldr	r6, [r5, #24]
	ldr	r3, [r3, #4]
	ldr	r5, [r5, #28]
	ldr	ip, [lr, ip, lsl #2]
	str	r6, [sp, #48]
	str	r5, [sp, #52]
	str	r4, [sp, #28]
	str	r1, [sp, #80]
	str	r7, [sp, #64]
	str	r3, [sp, #68]
	str	r0, [sp, #60]
	beq	.L67
	mov	r0, r3
	ldr	r3, [sp, #60]
	ldr	r1, [sp, #72]
	adds	r0, r0, #4
	ldr	r2, [sp, #76]
	adds	r7, r7, #4
	add	r4, r4, r3
	str	r7, [sp, #16]
	str	r4, [sp, #56]
	adds	r1, r1, #2
	ldr	r4, [sp, #80]
	adds	r2, r2, #2
	str	r1, [sp, #20]
	str	r2, [sp, #12]
	str	r4, [sp, #36]
.L65:
	ldr	r8, [sp, #28]
	uxtb	r5, ip
	ldr	r3, [sp, #20]
	ror	ip, ip, #8
	ldr	r6, [sp, #36]
	adds	r0, r0, #4
	ldrb	r2, [r8], #1	@ zero_extendqisi2
	ldrb	lr, [r3, #-2]	@ zero_extendqisi2
	ldr	r3, [sp, #52]
	ldr	r7, [sp, #32]
	ldrb	r1, [r6], #1	@ zero_extendqisi2
	ldr	r3, [r3, r2, lsl #2]
	ldr	r4, [sp, #48]
	str	r6, [sp, #36]
	uxtb	r6, r7
	ror	r7, r7, #8
	str	r3, [sp, #8]
	ldr	r3, [sp, #20]
	ldr	r9, [r4, r1, lsl #2]
	uxtb	r4, r7
	ror	r7, r7, #8
	str	r8, [sp, #28]
	str	r4, [sp]
	str	r7, [sp, #32]
	ldrb	r7, [r3, #-1]	@ zero_extendqisi2
	ldr	r3, [sp, #44]
	ldr	r8, [sp, #40]
	ldr	r4, [sp, #8]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r1, [r8, r1, lsl #2]
	add	r8, lr, r6, lsr #1
	add	r4, r4, r9
	str	r2, [sp, #4]
	ldr	r2, [sp, #24]
	add	r1, r1, r2
	add	r3, r2, r4, asr #16
	add	r9, r1, lr
	ldr	r4, [sp, #24]
	ldrb	fp, [r8, r3]	@ zero_extendqisi2
	add	r8, r7, r5, lsr #1
	ldr	r2, [sp, #4]
	ldrb	r10, [r9, r6]	@ zero_extendqisi2
	ldrb	r9, [r8, r3]	@ zero_extendqisi2
	add	r8, r1, r7
	ldrb	r8, [r8, r5]	@ zero_extendqisi2
	add	r2, r2, r4
	add	r7, r7, r2
	add	lr, lr, r2
	ldrb	r5, [r7, r5]	@ zero_extendqisi2
	lsl	fp, fp, #3
	ldr	r7, [sp, #20]
	lsl	r9, r9, #3
	lsl	r8, r8, #8
	ldrb	r6, [lr, r6]	@ zero_extendqisi2
	lsl	r10, r10, #8
	and	r9, r9, #2016
	and	r8, r8, #63488
	adds	r7, r7, #2
	orr	r9, r8, r9
	str	r7, [sp, #20]
	and	fp, fp, #2016
	ldr	r8, [sp, #16]
	and	r10, r10, #63488
	orr	fp, r10, fp
	orr	r9, r9, r5, lsr #3
	orr	r6, fp, r6, lsr #3
	uxtb	r5, ip
	ror	ip, ip, #8
	mov	r4, r8
	orr	r6, r6, r9, lsl #16
	adds	r4, r4, #4
	str	r4, [sp, #16]
	asrs	r7, r6, #16
	ldr	r4, [sp, #12]
	strh	r6, [r8, #-4]	@ movhi
	ldr	r6, [sp, #12]
	adds	r4, r4, #2
	strh	r7, [r8, #-2]	@ movhi
	str	r4, [sp, #12]
	ldrb	r7, [r6, #-2]	@ zero_extendqisi2
	ldr	r4, [sp]
	ldrb	r6, [r6, #-1]	@ zero_extendqisi2
	add	r8, r1, r7
	add	lr, r2, r7
	ldrb	r8, [r8, r4]	@ zero_extendqisi2
	add	r1, r1, r6
	add	r7, r7, r4, lsr #1
	ldrb	r1, [r1, r5]	@ zero_extendqisi2
	add	r9, r6, r5, lsr #1
	add	r2, r2, r6
	ldrb	r6, [r7, r3]	@ zero_extendqisi2
	ldrb	r3, [r9, r3]	@ zero_extendqisi2
	lsl	r8, r8, #8
	ldrb	r4, [lr, r4]	@ zero_extendqisi2
	ldrb	r2, [r2, r5]	@ zero_extendqisi2
	lsls	r1, r1, #8
	and	r8, r8, #63488
	lsls	r6, r6, #3
	and	r1, r1, #63488
	lsls	r3, r3, #3
	orr	r8, r8, r4, lsr #3
	and	r6, r6, #2016
	orr	r1, r1, r2, lsr #3
	and	r3, r3, #2016
	orr	r8, r8, r6
	ldr	r7, [sp, #56]
	orrs	r1, r1, r3
	ldr	r6, [sp, #28]
	orr	r8, r8, r1, lsl #16
	cmp	r6, r7
	asr	r3, r8, #16
	strh	r8, [r0, #-8]	@ movhi
	strh	r3, [r0, #-6]	@ movhi
	bne	.L65
	ldr	r8, [sp, #60]
	ldr	r0, [sp, #80]
	ldr	r1, [sp, #72]
	ldr	r4, [sp, #76]
	ldr	r6, [sp, #64]
	lsl	r2, r8, #1
	ldr	r7, [sp, #68]
	lsl	r3, r8, #2
	add	r0, r0, r8
	add	r1, r1, r2
	add	r4, r4, r2
	add	r6, r6, r3
	add	r7, r7, r3
	str	r0, [sp, #80]
	str	r1, [sp, #72]
	str	r4, [sp, #76]
	str	r6, [sp, #64]
	str	r7, [sp, #68]
.L63:
	ldr	r1, [sp, #84]
	lsls	r3, r1, #31
	bpl	.L62
	ldr	r2, [sp, #80]
	uxtb	ip, ip
	ldr	r4, [sp, #32]
	ldr	r6, [sp, #56]
	ldrb	r3, [r2]	@ zero_extendqisi2
	ldr	r8, [sp, #40]
	ldrb	r1, [r6]	@ zero_extendqisi2
	uxtb	r2, r4
	ldr	r7, [sp, #72]
	ldr	r5, [r8, r3, lsl #2]
	ldr	r4, [sp, #48]
	ldr	r8, [sp, #52]
	ldrb	r0, [r7]	@ zero_extendqisi2
	ldr	r6, [r4, r3, lsl #2]
	ldr	r7, [r8, r1, lsl #2]
	ldr	r8, [sp, #44]
	ldr	r3, [sp, #24]
	ldr	r4, [r8, r1, lsl #2]
	adds	r1, r7, r6
	ldr	r7, [sp, #24]
	add	r5, r5, r3
	add	lr, r5, r0
	add	r3, r0, r2, lsr #1
	ldrb	r6, [lr, r2]	@ zero_extendqisi2
	add	r4, r4, r7
	ldr	r8, [sp, #64]
	add	r1, r7, r1, asr #16
	add	r0, r0, r4
	ldrb	r0, [r0, r2]	@ zero_extendqisi2
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	lsls	r2, r6, #8
	and	r2, r2, #63488
	orr	r2, r2, r0, lsr #3
	ldr	r0, [sp, #76]
	lsls	r3, r3, #3
	and	r3, r3, #2016
	orrs	r3, r3, r2
	strh	r3, [r8]	@ movhi
	ldrb	r3, [r0]	@ zero_extendqisi2
	add	r5, r5, r3
	add	r4, r4, r3
	ldrb	r2, [r5, ip]	@ zero_extendqisi2
	add	r3, r3, ip, lsr #1
	ldrb	r0, [r4, ip]	@ zero_extendqisi2
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	ldr	r1, [sp, #68]
	lsls	r2, r2, #8
	lsls	r3, r3, #3
	and	r2, r2, #63488
	orr	r2, r2, r0, lsr #3
	and	r3, r3, #2016
	orrs	r3, r3, r2
	strh	r3, [r1]	@ movhi
.L62:
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L67:
	str	r4, [sp, #56]
	b	.L63
.L74:
	.align	2
.L73:
	.word	.LANCHOR0-(.LPIC17+4)
	.size	h2v2_merged_upsample_565D, .-h2v2_merged_upsample_565D
	.section	.text.merged_2v_upsample,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	merged_2v_upsample, %function
merged_2v_upsample:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	ldr	r4, [r0, #464]
	mov	r8, r2
	ldr	lr, [sp, #40]
	ldr	r3, [r4, #36]
	ldr	r6, [sp, #44]
	cbz	r3, .L76
	ldr	r1, [r0, #48]
	movs	r5, #1
	ldr	r3, [r4, #40]
	ldr	r7, [r6]
	cmp	r1, #7
	mov	r1, #0
	it	eq
	ldreq	r3, [r0, #120]
	add	r0, r4, #32
	str	r5, [sp]
	add	r2, lr, r7, lsl #2
	it	eq
	lsleq	r3, r3, #1
	str	r3, [sp, #4]
	mov	r3, r1
	bl	jcopy_sample_rows(PLT)
	movs	r3, #0
	str	r3, [r4, #36]
.L78:
	ldr	r3, [r6]
	add	r3, r3, r5
	str	r3, [r6]
	ldr	r3, [r4, #44]
	ldr	r2, [r4, #36]
	subs	r5, r3, r5
	str	r5, [r4, #44]
	cbnz	r2, .L75
	ldr	r3, [r8]
	adds	r3, r3, #1
	str	r3, [r8]
.L75:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L76:
	ldr	r5, [r4, #44]
	ldr	r3, [r6]
	ldr	r2, [sp, #48]
	cmp	r5, #2
	it	cs
	movcs	r5, #2
	subs	r7, r2, r3
	cmp	r5, r7
	bhi	.L80
	ldr	r7, [lr, r3, lsl #2]
	cmp	r5, #2
	lsl	r3, r3, #2
	str	r7, [sp, #8]
	bne	.L84
	add	r2, lr, r3
	ldr	r3, [r2, #4]
.L82:
	str	r3, [sp, #12]
	add	r3, sp, #8
	ldr	r7, [r4, #12]
	ldr	r2, [r8]
	blx	r7
	b	.L78
.L80:
	ldr	r3, [lr, r3, lsl #2]
	str	r3, [sp, #8]
.L81:
	movs	r2, #1
	ldr	r3, [r4, #32]
	mov	r5, r7
	str	r2, [r4, #36]
	b	.L82
.L84:
	mov	r7, r5
	b	.L81
	.size	merged_2v_upsample, .-merged_2v_upsample
	.section	.text.jinit_merged_upsampler,"ax",%progbits
	.align	2
	.global	jinit_merged_upsampler
	.thumb
	.thumb_func
	.type	jinit_merged_upsampler, %function
jinit_merged_upsampler:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r1, #1
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r2, #48
	mov	r4, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #60
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #128]
	mov	r5, r0
	ldr	r2, [r4, #120]
	movs	r0, #0
	ldr	r1, [r4, #324]
	ldr	r6, .L110+16
	str	r5, [r4, #464]
	mul	r2, r2, r3
	cmp	r1, #2
.LPIC27:
	add	r6, pc
	str	r0, [r5, #8]
	str	r6, [r5]
	str	r2, [r5, #40]
	beq	.L106
	ldr	r3, [r4, #48]
	ldr	r1, .L110+20
	ldr	r2, .L110+24
	cmp	r3, #7
.LPIC32:
	add	r1, pc
.LPIC33:
	add	r2, pc
	str	r1, [r5, #4]
	str	r2, [r5, #12]
	beq	.L107
.L91:
	movs	r3, #0
	str	r3, [r5, #32]
.L90:
	ldr	r3, [r4, #4]
	mov	r0, r4
	movs	r1, #1
	mov	r2, #1024
	ldr	r5, [r4, #464]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #4]
	movs	r1, #1
	str	r0, [r5, #16]
	mov	r2, #1024
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #4]
	movs	r1, #1
	str	r0, [r5, #20]
	mov	r2, #1024
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #4]
	movs	r1, #1
	str	r0, [r5, #24]
	mov	r2, #1024
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r5, #20]
	str	r0, [sp, #20]
	ldr	r1, [r5, #16]
	ldr	r0, [r5, #24]
	ldr	r4, [sp, #20]
	str	r2, [sp, #8]
	str	r0, [sp, #12]
	mov	r2, r0
	str	r1, [sp, #16]
	adds	r2, r2, #16
	ldr	r0, [sp, #8]
	cmp	r1, r2
	ldr	r7, [sp, #8]
	add	r1, r1, #16
	str	r4, [r5, #28]
	it	cc
	movcc	r6, #0
	ldr	r5, [sp, #12]
	add	r0, r0, #16
	ldr	r4, [sp, #16]
	it	cs
	movcs	r6, #1
	ldr	r3, [sp, #20]
	cmp	r1, r5
	it	ls
	orrls	r6, r6, #1
	cmp	r0, r4
	it	hi
	cmphi	r1, r7
	ite	ls
	movls	r5, #1
	movhi	r5, #0
	ands	r5, r5, r6
	ldr	r6, [sp, #12]
	cmp	r7, r2
	ldr	r7, [sp, #20]
	ite	cc
	movcc	r4, #0
	movcs	r4, #1
	cmp	r0, r6
	it	ls
	orrls	r4, r4, #1
	adds	r3, r3, #16
	ands	r4, r4, r5
	ldr	r5, [sp, #16]
	cmp	r7, r0
	ldr	r6, [sp, #8]
	ite	cc
	movcc	r0, #0
	movcs	r0, #1
	cmp	r7, r1
	it	cc
	cmpcc	r5, r3
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	cmp	r7, r2
	ldr	r7, [sp, #12]
	ite	cc
	movcc	r2, #0
	movcs	r2, #1
	ands	r4, r4, r1
	cmp	r3, r6
	ite	hi
	movhi	r1, r0
	orrls	r1, r0, #1
	ands	r1, r1, r4
	cmp	r3, r7
	ite	hi
	movhi	r3, r2
	orrls	r3, r2, #1
	ands	r2, r1, r3
	beq	.L93
	vmov.i32	q14, #4  @ v4si
	ldr	lr, [sp, #20]
	vmov.i32	q10, #32768  @ v4si
	add	r8, r5, #992
	mov	r2, r5
	movs	r3, #0
	vmov	q1, q14  @ v4si
	vldr	d16, .L110
	vldr	d17, .L110+8
	b	.L95
.L108:
	mov	r2, ip
.L95:
	vadd.i32	q9, q8, q1
	add	ip, r2, #32
	vshl.i32	q12, q8, #4
	mov	r4, r6
	vshl.i32	q0, q8, #17
	mov	r0, r7
	vshl.i32	q11, q9, #4
	mov	r1, lr
	vsub.i32	q12, q12, q8
	mov	r5, r2
	vshl.i32	q5, q9, #17
	cmp	r8, ip
	vsub.i32	q11, q11, q9
	add	r3, r3, #2
	vshl.i32	q13, q12, #8
	add	r6, r6, #32
	vsub.i32	q0, q0, q8
	add	r7, r7, #32
	vshl.i32	q4, q11, #8
	add	lr, lr, #32
	vsub.i32	q5, q5, q9
	vadd.i32	q13, q12, q13
	vadd.i32	q4, q11, q4
	vshl.i32	q0, q0, #2
	vshl.i32	q5, q5, #2
	vadd.i32	q0, q0, q8
	vshl.i32	q13, q13, #6
	vshl.i32	q4, q4, #6
	vadd.i32	q5, q5, q9
	vadd.i32	q13, q13, q8
	vadd.i32	q4, q4, q9
	vshl.i32	q3, q8, #2
	vshl.i32	q0, q0, #2
	vshl.i32	q15, q9, #2
	vshl.i32	q5, q5, #2
	vadd.i32	q3, q3, q8
	vshl.i32	q6, q12, #7
	vadd.i32	q0, q0, q8
	vshl.i32	q2, q11, #7
	vshl.i32	q4, q4, #4
	vshl.i32	q13, q13, #4
	vadd.i32	q15, q15, q9
	vadd.i32	q5, q5, q9
	vadd.i32	q13, q13, q8
	vadd.i32	q12, q12, q6
	vadd.i32	q2, q11, q2
	vadd.i32	q11, q4, q9
	vshl.i32	q3, q3, #6
	vshl.i32	q0, q0, #6
	vshl.i32	q15, q15, #6
	vshl.i32	q5, q5, #6
	vshl.i32	q13, q13, #2
	vshl.i32	q12, q12, #1
	vshl.i32	q2, q2, #1
	vshl.i32	q11, q11, #2
	vsub.i32	q3, q3, q8
	vsub.i32	q0, q0, q8
	vsub.i32	q15, q15, q9
	vsub.i32	q5, q5, q9
	vadd.i32	q12, q12, q8
	vadd.i32	q13, q13, q8
	vadd.i32	q2, q2, q9
	vadd.i32	q11, q11, q9
	vshl.i32	q3, q3, #5
	vshl.i32	q0, q0, #3
	vshl.i32	q15, q15, #5
	vshl.i32	q5, q5, #3
	vshl.i32	q4, q12, #4
	vshl.i32	q6, q2, #4
	vshl.i32	q13, q13, #3
	vshl.i32	q11, q11, #3
	vadd.i32	q3, q3, q8
	vadd.i32	q0, q0, q8
	vadd.i32	q15, q15, q9
	vadd.i32	q5, q5, q9
	vsub.i32	q13, q13, q8
	vsub.i32	q12, q4, q12
	vsub.i32	q2, q6, q2
	vsub.i32	q11, q11, q9
	vshl.i32	q4, q3, #3
	vshl.i32	q7, q5, #1
	vshl.i32	q0, q0, #1
	vshl.i32	q6, q15, #3
	vadd.i32	q3, q3, q4
	vshl.i32	q12, q12, #1
	vadd.i32	q0, q0, q8
	vshl.i32	q5, q13, #4
	vshl.i32	q8, q11, #4
	vadd.i32	q15, q15, q6
	vshl.i32	q2, q2, #1
	vadd.i32	q7, q7, q9
	vadd.i32	q4, q12, q10
	vadd.i32	q11, q11, q8
	vadd.i32	q13, q13, q5
	vadd.i32	q3, q3, q10
	vadd.i32	q15, q15, q10
	vadd.i32	q2, q2, q10
	vshl.i32	q0, q0, #1
	vshl.i32	q7, q7, #1
	vshl.i32	q13, q13, #1
	vshr.s32	q3, q3, #16
	vshr.s32	q4, q4, #16
	vadd.i32	q0, q0, q10
	vshr.s32	q15, q15, #16
	vshr.s32	q2, q2, #16
	vshl.i32	q11, q11, #1
	vadd.i32	q12, q7, q10
	pld	[r2, #160]
	vadd.i32	q8, q9, q1
	vst1.32	{q3}, [r5]!
	vst1.32	{q4}, [r4]!
	vst1.32	{q13}, [r0]!
	vst1.32	{q0}, [r1]!
	vst1.32	{q15}, [r5]
	vst1.32	{q2}, [r4]
	vst1.32	{q11}, [r0]
	vst1.32	{q12}, [r1]
	bne	.L108
	vmov.i32	q10, #32768  @ v4si
	mov	r4, r8
	mov	r0, r6
	mov	r1, r7
	mov	r2, lr
.L97:
	vshl.i32	q9, q8, #4
	adds	r3, r3, #1
	vshl.i32	q15, q8, #17
	cmp	r3, #64
	vshl.i32	q12, q8, #2
	vsub.i32	q9, q9, q8
	vsub.i32	q15, q15, q8
	vadd.i32	q12, q12, q8
	vshl.i32	q11, q9, #8
	vshl.i32	q15, q15, #2
	vadd.i32	q11, q9, q11
	vadd.i32	q15, q15, q8
	vshl.i32	q13, q9, #7
	vshl.i32	q11, q11, #6
	vshl.i32	q15, q15, #2
	vadd.i32	q11, q11, q8
	vadd.i32	q15, q15, q8
	vadd.i32	q9, q9, q13
	vshl.i32	q11, q11, #4
	vshl.i32	q12, q12, #6
	vadd.i32	q11, q11, q8
	vshl.i32	q15, q15, #6
	vshl.i32	q9, q9, #1
	vshl.i32	q11, q11, #2
	vsub.i32	q12, q12, q8
	vsub.i32	q15, q15, q8
	vadd.i32	q9, q9, q8
	vadd.i32	q11, q11, q8
	vshl.i32	q12, q12, #5
	vshl.i32	q15, q15, #3
	vshl.i32	q13, q9, #4
	vshl.i32	q11, q11, #3
	vadd.i32	q12, q12, q8
	vadd.i32	q15, q15, q8
	vsub.i32	q11, q11, q8
	vsub.i32	q13, q13, q9
	vshl.i32	q3, q12, #3
	vshl.i32	q9, q15, #1
	vadd.i32	q12, q12, q3
	vadd.i32	q9, q9, q8
	vshl.i32	q15, q11, #4
	vshl.i32	q13, q13, #1
	vadd.i32	q11, q11, q15
	vadd.i32	q12, q12, q10
	vadd.i32	q13, q13, q10
	vshl.i32	q9, q9, #1
	vshl.i32	q11, q11, #1
	vshr.s32	q12, q12, #16
	vshr.s32	q13, q13, #16
	vadd.i32	q9, q9, q10
	vst1.32	{q12}, [r4]!
	vadd.i32	q8, q8, q14
	vst1.32	{q13}, [r0]!
	vst1.32	{q11}, [r1]!
	vst1.32	{q9}, [r2]!
	bcc	.L97
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L106:
	ldr	r3, [r4, #48]
	ldr	r0, .L110+28
	ldr	r1, .L110+32
	cmp	r3, #7
.LPIC28:
	add	r0, pc
.LPIC29:
	add	r1, pc
	str	r0, [r5, #4]
	str	r1, [r5, #12]
	beq	.L109
.L88:
	ldr	r3, [r4, #4]
	mov	r0, r4
	movs	r1, #1
	ldr	r3, [r3, #4]
	blx	r3
	str	r0, [r5, #32]
	b	.L90
.L111:
	.align	3
.L110:
	.word	-128
	.word	-127
	.word	-126
	.word	-125
	.word	start_pass_merged_upsample-(.LPIC27+4)
	.word	merged_1v_upsample-(.LPIC32+4)
	.word	h2v1_merged_upsample-(.LPIC33+4)
	.word	merged_2v_upsample-(.LPIC28+4)
	.word	h2v2_merged_upsample-(.LPIC29+4)
.L93:
	ldr	r4, [sp, #8]
	mov	r6, r5
	ldr	r3, [sp, #20]
	mov	r0, r6
	mov	r1, r2
	mov	r9, r2
	mov	r5, r2
	mov	fp, r2
	adds	r0, r0, #36
	adds	r4, r4, #36
	adds	r7, r7, #36
	str	r2, [sp, #4]
	str	r0, [sp, #44]
	str	r4, [sp, #48]
	str	r7, [sp, #52]
.L99:
	movw	r4, #29289
	movw	r0, #42788
	movt	r4, 65358
	movt	r0, 65362
	add	r4, r4, fp
	add	r0, r0, fp
	asrs	r4, r4, #16
	asrs	r0, r0, #16
	pld	[r3, #36]
	str	r4, [sp, #40]
	mov	r7, #2944
	ldr	r4, [sp, #4]
	movt	r7, 65357
	str	r0, [sp, #24]
	add	r7, r7, fp
	ldr	r0, [sp, #44]
	asrs	r7, r7, #16
	adds	r4, r4, #8
	movw	r10, #29858
	movw	r8, #55634
	pld	[r0, r5]
	movw	r0, #50568
	str	r4, [sp, #4]
	movt	r0, 65316
	ldr	r4, [sp, #48]
	add	r0, r0, r9
	asrs	r0, r0, #16
	movt	r10, 65311
	add	r10, r10, r9
	pld	[r4, r5]
	asr	r10, r10, #16
	ldr	r4, [sp, #52]
	movw	ip, #14916
	movt	r8, 65359
	movt	ip, 65313
	add	r8, r8, fp
	add	ip, ip, r9
	pld	[r4, r5]
	asr	r8, r8, #16
	str	r0, [sp, #28]
	asr	ip, ip, #16
	ldr	r0, [sp, #16]
	movw	lr, #16443
	ldr	r4, [sp, #8]
	movt	lr, 65361
	add	lr, lr, fp
	adds	r6, r6, #32
	str	r7, [r0, r5]
	movw	r0, #3597
	movt	r0, 65364
	sub	r7, r9, #14811136
	add	r0, r0, fp
	sub	r7, r7, #20736
	asrs	r0, r0, #16
	asrs	r7, r7, #16
	asr	lr, lr, #16
	str	r0, [sp, #32]
	movw	r0, #35626
	movt	r0, 65318
	str	r7, [r4, r5]
	add	r0, r0, r9
	ldr	r4, [sp, #12]
	asrs	r0, r0, #16
	add	r7, r1, #5963776
	add	r7, r7, #26880
	str	r0, [sp, #36]
	adds	r3, r3, #32
	ldr	r0, [sp, #40]
	str	r7, [r4, r5]
	add	r7, r2, #2916352
	add	r7, r7, #3328
	ldr	r4, [sp, #8]
	str	r7, [r3, #-32]
	movw	r7, #45614
	str	r0, [r6, #-28]
	movt	r7, 90
	ldr	r0, [sp, #12]
	add	r4, r4, r5
	add	r7, r7, r1
	str	r10, [r4, #4]
	str	r4, [sp]
	movw	r10, #29942
	add	r0, r0, r5
	movt	r10, 65365
	str	r7, [r0, #4]
	movw	r7, #13542
	movt	r7, 44
	add	r10, r10, fp
	add	r7, r7, r2
	asr	r10, r10, #16
	str	r7, [r3, #-28]
	movw	r7, #64348
	movt	r7, 89
	str	r8, [r6, #-24]
	add	r7, r7, r1
	str	ip, [r4, #8]
	str	r7, [r0, #8]
	movw	r7, #56524
	movt	r7, 43
	movw	r8, #20684
	add	r7, r7, r2
	movt	r8, 65320
	str	r7, [r3, #-24]
	movw	r7, #56287
	movt	r7, 65366
	str	lr, [r6, #-20]
	add	r7, r7, fp
	sub	lr, r9, #14483456
	asrs	r7, r7, #16
	sub	lr, lr, #26
	add	r8, r8, r9
	str	r7, [sp, #40]
	asr	r7, lr, #16
	ldr	lr, [sp]
	asr	r8, r8, #16
	str	r7, [r4, #12]
	movw	r7, #17546
	movt	r7, 89
	movw	ip, #5742
	add	r7, r7, r1
	movt	ip, 65322
	str	r7, [r0, #12]
	add	r7, r2, #2850816
	addw	r7, r7, #1202
	add	ip, ip, r9
	str	r7, [r3, #-20]
	asr	ip, ip, #16
	ldr	r7, [sp, #24]
	add	fp, fp, #733184
	add	r9, r9, #925696
	adds	r5, r5, #32
	add	fp, fp, #1864
	add	r9, r9, #3344
	str	r7, [r6, #-16]
	ldr	r7, [sp, #28]
	str	r7, [r4, #16]
	add	r7, r1, #5799936
	addw	r7, r7, #3512
	ldr	r4, [sp, #32]
	str	r7, [r0, #16]
	movw	r7, #11416
	movt	r7, 43
	add	r7, r7, r2
	str	r7, [r3, #-16]
	movw	r7, #55014
	str	r4, [r6, #-12]
	movt	r7, 87
	ldr	r4, [sp, #36]
	add	r7, r7, r1
	str	r4, [lr, #20]
	movw	lr, #54398
	ldr	r4, [sp]
	movt	lr, 42
	add	lr, lr, r2
	str	r7, [r0, #20]
	str	lr, [r3, #-12]
	movw	r7, #8212
	str	r10, [r6, #-8]
	movt	r7, 87
	str	r8, [r4, #24]
	movw	r8, #31844
	ldr	r4, [sp, #40]
	movt	r8, 42
	add	r7, r7, r1
	add	r8, r8, r2
	str	r7, [r0, #24]
	movw	lr, #26946
	str	r8, [r3, #-8]
	movt	lr, 86
	str	r4, [r6, #-4]
	add	lr, lr, r1
	ldr	r4, [sp]
	movw	r7, #9290
	movt	r7, 42
	sub	r1, r1, #372736
	add	r7, r7, r2
	sub	r2, r2, #180224
	str	ip, [r4, #28]
	sub	r1, r1, #1680
	str	lr, [r0, #28]
	subs	r2, r2, #208
	ldr	lr, [sp, #4]
	str	r7, [r3, #-4]
	mov	r7, lr
	sub	r0, lr, #128
	cmp	r7, #248
	rsb	r4, lr, #256
	bne	.L99
	ldr	r5, [sp, #16]
	movw	r2, #42982
	movt	r2, 65535
	movw	lr, #26345
	mul	r8, r2, r0
	movw	r1, #50594
	ldr	r2, [sp, #12]
	add	r7, r5, #992
	ldr	r5, [sp, #8]
	movt	lr, 1
	movt	r1, 1
	mul	lr, lr, r0
	movw	r3, #18734
	lsls	r4, r4, #2
	mul	r1, r1, r0
	add	r6, r5, #992
	add	r5, r2, #992
	ldr	r2, [sp, #20]
	movt	r3, 65535
	mul	r0, r3, r0
	add	lr, lr, #32768
	add	r1, r1, #32768
	movs	r3, #0
	add	ip, r2, #992
	add	r2, r8, #32768
.L100:
	asr	r9, lr, #16
	asr	r8, r1, #16
	str	r9, [r7, r3]
	add	lr, lr, #91648
	str	r8, [r6, r3]
	add	r1, r1, #115712
	str	r0, [r5, r3]
	sub	r0, r0, #46592
	str	r2, [ip, r3]
	adds	r3, r3, #4
	cmp	r3, r4
	sub	r2, r2, #22528
	add	lr, lr, #233
	add	r1, r1, #418
	sub	r0, r0, #210
	sub	r2, r2, #26
	bne	.L100
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L107:
	ldr	r3, [r4, #96]
	cbnz	r3, .L92
	ldr	r3, .L112
.LPIC34:
	add	r3, pc
	str	r3, [r5, #12]
	b	.L91
.L109:
	ldr	r3, [r4, #96]
	cbnz	r3, .L89
	ldr	r3, .L112+4
.LPIC30:
	add	r3, pc
	str	r3, [r5, #12]
	b	.L88
.L92:
	ldr	r3, .L112+8
.LPIC35:
	add	r3, pc
	str	r3, [r5, #12]
	b	.L91
.L89:
	ldr	r3, .L112+12
.LPIC31:
	add	r3, pc
	str	r3, [r5, #12]
	b	.L88
.L113:
	.align	2
.L112:
	.word	h2v1_merged_upsample_565-(.LPIC34+4)
	.word	h2v2_merged_upsample_565-(.LPIC30+4)
	.word	h2v1_merged_upsample_565D-(.LPIC35+4)
	.word	h2v2_merged_upsample_565D-(.LPIC31+4)
	.size	jinit_merged_upsampler, .-jinit_merged_upsampler
	.section	.rodata.dither_matrix,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	dither_matrix, %object
	.size	dither_matrix, 16
dither_matrix:
	.word	524810
	.word	201592326
	.word	51052809
	.word	252120325
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
