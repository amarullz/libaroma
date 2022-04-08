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
	.file	"system.c"
	.section	.text.libaroma_getprop,"ax",%progbits
	.align	2
	.global	libaroma_getprop
	.thumb
	.thumb_func
	.type	libaroma_getprop, %function
libaroma_getprop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r0
	mov	r0, r1
	mov	r1, r2
	bl	libaroma_stream_to_string(PLT)
	mov	r7, r0
	cmp	r0, #0
	beq	.L31
	ldrb	r6, [r0]	@ zero_extendqisi2
	mov	r4, r0
	cmp	r6, #10
	bne	.L3
.L4:
	ldrb	r6, [r4, #1]!	@ zero_extendqisi2
	cmp	r6, #10
	beq	.L4
.L3:
	cmp	r6, #0
	beq	.L56
	adds	r2, r4, #1
.L7:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r5, r2
	adds	r2, r2, #1
	cmp	r3, #0
	beq	.L6
	cmp	r3, #10
	bne	.L7
	movs	r3, #0
	mov	r8, #0
	strb	r3, [r5]
	mov	r5, r2
	ldrb	r6, [r4]	@ zero_extendqisi2
.L9:
	cmp	r6, #0
	beq	.L11
.L57:
	bl	__ctype_b_loc(PLT)
	ldr	fp, [r0]
	mov	r10, r0
	ldrh	r3, [fp, r6, lsl #1]
	lsls	r0, r3, #18
	bmi	.L12
	cmp	r6, #35
	beq	.L11
	mov	r0, r4
	movs	r1, #61
	bl	strchr(PLT)
	mov	r6, r0
	cmp	r0, #0
	beq	.L13
	subs	r2, r0, #1
	cmp	r4, r2
	bcs	.L14
	mov	r3, r2
	b	.L15
.L16:
	cmp	r3, r4
	mov	r2, r3
	beq	.L14
.L15:
	mov	r2, r3
	ldrb	r1, [r3], #-1	@ zero_extendqisi2
	ldrh	r1, [fp, r1, lsl #1]
	lsls	r1, r1, #18
	bmi	.L16
.L14:
	strb	r8, [r2, #1]
	mov	r1, r4
	mov	r0, r9
	bl	strcmp(PLT)
	cmp	r0, #0
	bne	.L11
	ldrb	r3, [r6, #1]	@ zero_extendqisi2
	adds	r6, r6, #1
	cbz	r3, .L17
	ldr	r2, [r10]
	b	.L18
.L19:
	ldrb	r3, [r6, #1]!	@ zero_extendqisi2
	cbz	r3, .L17
.L18:
	ldrh	r3, [r2, r3, lsl #1]
	lsls	r0, r3, #18
	bmi	.L19
.L17:
	mov	r0, r6
	bl	strlen(PLT)
	subs	r0, r0, #1
	adds	r2, r6, r0
	cmp	r2, r6
	bls	.L20
	ldr	r0, [r10]
	mov	r3, r2
	b	.L21
.L22:
	cmp	r3, r6
	mov	r2, r3
	beq	.L20
.L21:
	mov	r2, r3
	ldrb	r1, [r3], #-1	@ zero_extendqisi2
	ldrh	r1, [r0, r1, lsl #1]
	lsls	r1, r1, #18
	bmi	.L22
.L20:
.L23:
	movs	r3, #0
	mov	r0, r6
	strb	r3, [r2, #1]
	bl	strlen(PLT)
	adds	r4, r0, #1
	mov	r0, r4
	bl	malloc(PLT)
	mov	r1, r6
	mov	r2, r4
	mov	r5, r0
	bl	memcpy(PLT)
	mov	r0, r7
	bl	free(PLT)
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L56:
	ldrb	r6, [r6]	@ zero_extendqisi2
	mov	r5, r4
	movs	r4, #0
.L6:
	mov	r8, #0
	cmp	r6, #0
	bne	.L57
.L11:
	ldrb	r6, [r5]	@ zero_extendqisi2
	mov	r4, r5
	cmp	r6, #10
	bne	.L24
.L25:
	ldrb	r6, [r4, #1]!	@ zero_extendqisi2
	cmp	r6, #10
	beq	.L25
.L24:
	cbz	r6, .L13
	adds	r2, r4, #1
	b	.L26
.L29:
	cmp	r3, #10
	beq	.L58
.L26:
	ldrb	r3, [r2]	@ zero_extendqisi2
	mov	r5, r2
	adds	r2, r2, #1
	cmp	r3, #0
	bne	.L29
	b	.L9
.L12:
	ldrb	r6, [r4, #1]	@ zero_extendqisi2
	adds	r4, r4, #1
	b	.L9
.L58:
	strb	r8, [r5]
	mov	r5, r2
	ldrb	r6, [r4]	@ zero_extendqisi2
	b	.L9
.L13:
	mov	r0, r7
	movs	r5, #0
	bl	free(PLT)
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L31:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	libaroma_getprop, .-libaroma_getprop
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
