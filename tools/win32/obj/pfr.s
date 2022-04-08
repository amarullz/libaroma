	.syntax unified
	.arch armv7-a
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfpv3-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"pfr.c"
	.section	.text.pfr_extra_items_skip,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_extra_items_skip, %function
pfr_extra_items_skip:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #0
	movs	r3, #0
	bl	pfr_extra_items_parse(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_extra_items_skip, .-pfr_extra_items_skip
	.section	.text.pfr_extra_items_parse,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_extra_items_parse, %function
pfr_extra_items_parse:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L4
	b	.L5
.L4:
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #28]
	b	.L6
.L15:
	ldr	r3, [r7, #32]
	adds	r2, r3, #2
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L7
	b	.L5
.L7:
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #16]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L8
	b	.L5
.L8:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L9
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	b	.L10
.L14:
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L11
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #20]
	add	r2, r2, r1
	ldr	r0, [r7, #32]
	mov	r1, r2
	ldr	r2, [r7]
	blx	r3
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L12
	b	.L13
.L12:
	b	.L9
.L11:
	ldr	r3, [r7, #24]
	adds	r3, r3, #8
	str	r3, [r7, #24]
.L10:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L14
.L9:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L6:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L15
.L13:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	b	.L17
.L5:
	movs	r3, #8
	str	r3, [r7, #36]
	b	.L13
.L17:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_extra_items_parse, .-pfr_extra_items_parse
	.section	.rodata.pfr_header_fields,"a",%progbits
	.align	2
	.type	pfr_header_fields, %object
	.size	pfr_header_fields, 116
pfr_header_fields:
	.byte	4
	.byte	0
	.short	58
	.byte	16
	.byte	4
	.short	0
	.byte	12
	.byte	4
	.short	4
	.byte	12
	.byte	4
	.short	8
	.byte	12
	.byte	4
	.short	12
	.byte	12
	.byte	4
	.short	16
	.byte	12
	.byte	4
	.short	20
	.byte	12
	.byte	4
	.short	24
	.byte	20
	.byte	4
	.short	28
	.byte	20
	.byte	4
	.short	32
	.byte	12
	.byte	4
	.short	36
	.byte	20
	.byte	4
	.short	40
	.byte	20
	.byte	4
	.short	44
	.byte	12
	.byte	4
	.short	48
	.byte	20
	.byte	4
	.short	52
	.byte	20
	.byte	4
	.short	56
	.byte	8
	.byte	4
	.short	60
	.byte	8
	.byte	4
	.short	64
	.byte	8
	.byte	4
	.short	68
	.byte	8
	.byte	4
	.short	72
	.byte	8
	.byte	4
	.short	76
	.byte	20
	.byte	4
	.short	80
	.byte	20
	.byte	4
	.short	84
	.byte	20
	.byte	4
	.short	88
	.byte	12
	.byte	4
	.short	92
	.byte	8
	.byte	4
	.short	96
	.byte	8
	.byte	4
	.short	100
	.byte	12
	.byte	4
	.short	104
	.byte	0
	.byte	0
	.short	0
	.section	.text.pfr_header_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_header_load, %function
pfr_header_load:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L19
	ldr	r0, [r7]
	ldr	r3, .L21
.LPIC0:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L19
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	lsls	r3, r3, #16
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
.L19:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L22:
	.align	2
.L21:
	.word	pfr_header_fields-(.LPIC0+4)
	.size	pfr_header_load, .-pfr_header_load
	.section	.text.pfr_header_check,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_header_check, %function
pfr_header_check:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	movw	r3, #21040
	movt	r3, 20550
	cmp	r2, r3
	bne	.L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bhi	.L24
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #57
	bls	.L24
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	movw	r3, #3338
	cmp	r2, r3
	beq	.L25
.L24:
	movs	r3, #0
	strb	r3, [r7, #15]
.L25:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_header_check, .-pfr_header_check
	.section	.text.pfr_log_font_count,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_log_font_count, %function
pfr_log_font_count:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L28
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L28
	ldr	r2, [r7, #24]
	movw	r3, #13106
	cmp	r2, r3
	bhi	.L29
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r2, r3, #2
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #8]
	subs	r3, r1, r3
	cmp	r2, r3
	bcc	.L30
.L29:
	movs	r3, #8
	str	r3, [r7, #20]
	b	.L28
.L30:
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
.L28:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_log_font_count, .-pfr_log_font_count
	.section	.text.pfr_log_font_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_log_font_load, %function
pfr_log_font_load:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L33
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L33
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L34
	movs	r3, #6
	b	.L55
.L34:
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L33
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L33
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUOffset(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #4]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #32]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L33
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #36]
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	add	r2, r3, #13
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L37
	b	.L54
.L37:
	ldr	r3, [r7, #16]
	adds	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	adds	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #16]
	adds	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #24]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #24]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L40:
	ldr	r3, [r7, #24]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L39
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	str	r3, [r7, #44]
.L39:
	ldr	r3, [r7, #24]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #24]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L41:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #44]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L42
	b	.L54
.L42:
	ldr	r3, [r7, #24]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L43
	ldr	r3, [r7, #24]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L44
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	b	.L45
.L44:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
.L45:
	ldr	r2, [r7, #12]
	str	r3, [r2, #28]
	ldr	r3, [r7, #24]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L43
	ldr	r3, [r7, #16]
	adds	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #36]
.L43:
	ldr	r3, [r7, #24]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L46
	ldr	r3, [r7, #24]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	b	.L48
.L47:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
.L48:
	ldr	r2, [r7, #12]
	str	r3, [r2, #32]
.L46:
	ldr	r3, [r7, #24]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L49
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	pfr_extra_items_skip(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L50
.L49:
	ldr	r3, [r7, #16]
	adds	r2, r3, #5
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L51
	b	.L54
.L51:
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r3, [r7, #16]
	adds	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldrb	r3, [r7, #56]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L53
	nop
	b	.L54
.L53:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #16]
	adds	r1, r3, #1
	str	r1, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
.L50:
	ldr	r0, [r7, #8]
	bl	FT_Stream_ExitFrame(PLT)
.L33:
	ldr	r3, [r7, #20]
	b	.L55
.L54:
	movs	r3, #8
	str	r3, [r7, #20]
	b	.L50
.L55:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_log_font_load, .-pfr_log_font_load
	.section	.text.pfr_extra_item_load_bitmap_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_extra_item_load_bitmap_info, %function
pfr_extra_item_load_bitmap_info:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r2, r3, #5
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L57
	b	.L58
.L57:
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	cmp	r2, r3
	bls	.L59
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	adds	r3, r3, #3
	bic	r3, r3, #3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	mov	r2, r3
	ldr	r3, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #100]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #32]
	movs	r1, #36
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #100]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L60
	b	.L61
.L60:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #96]
.L59:
	movs	r3, #8
	str	r3, [r7, #36]
	ldr	r3, [r7, #28]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L62:
	ldr	r3, [r7, #28]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L63:
	ldr	r3, [r7, #28]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L64:
	ldr	r3, [r7, #28]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L65
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L65:
	ldr	r3, [r7, #28]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L66
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L66:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #44]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L67
	b	.L58
.L67:
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L68
.L79:
	ldr	r3, [r7, #28]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L69
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	b	.L70
.L69:
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
.L70:
	ldr	r2, [r7, #44]
	str	r3, [r2]
	ldr	r3, [r7, #28]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L71
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	b	.L72
.L71:
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
.L72:
	ldr	r2, [r7, #44]
	str	r3, [r2, #4]
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L73
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	b	.L74
.L73:
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
.L74:
	ldr	r2, [r7, #44]
	str	r3, [r2, #20]
	ldr	r3, [r7, #28]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L75
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	b	.L76
.L75:
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
.L76:
	ldr	r2, [r7, #44]
	str	r3, [r2, #24]
	ldr	r3, [r7, #28]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L77
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	b	.L78
.L77:
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
.L78:
	ldr	r2, [r7, #44]
	str	r3, [r2, #28]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	adds	r3, r3, #36
	str	r3, [r7, #44]
.L68:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L79
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
.L61:
	ldr	r3, [r7, #16]
	b	.L81
.L58:
	movs	r3, #8
	str	r3, [r7, #16]
	b	.L61
.L81:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_extra_item_load_bitmap_info, .-pfr_extra_item_load_bitmap_info
	.section	.text.pfr_extra_item_load_font_id,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_extra_item_load_font_id, %function
pfr_extra_item_load_font_id:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L83
	b	.L84
.L83:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #20
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #80]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L85
	b	.L84
.L85:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #24]
	bl	memcpy(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L84:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_extra_item_load_font_id, .-pfr_extra_item_load_font_id
	.section	.text.pfr_extra_item_load_stem_snaps,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_extra_item_load_stem_snaps, %function
pfr_extra_item_load_stem_snaps:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L88
	b	.L89
.L88:
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L90
	b	.L91
.L90:
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	and	r3, r3, #15
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L92
	b	.L91
.L92:
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L93
	b	.L89
.L93:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [r3, #76]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	b	.L94
.L95:
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
.L94:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L95
.L89:
	ldr	r3, [r7, #16]
	b	.L97
.L91:
	movs	r3, #8
	str	r3, [r7, #16]
	b	.L89
.L97:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_extra_item_load_stem_snaps, .-pfr_extra_item_load_stem_snaps
	.section	.text.pfr_extra_item_load_kerning_pairs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_extra_item_load_kerning_pairs, %function
pfr_extra_item_load_kerning_pairs:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	movs	r1, #24
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L99
	b	.L100
.L99:
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L101
	b	.L102
.L101:
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #36]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r2, r3
	ldr	r3, [r7, #36]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #36]
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #148]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #12]
	ldr	r3, [r7, #36]
	movs	r2, #3
	str	r2, [r3, #8]
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L103
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #36]
	str	r2, [r3, #8]
.L103:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L104
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #36]
	str	r2, [r3, #8]
.L104:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	ldr	r2, [r7, #36]
	ldr	r2, [r2, #8]
	mul	r3, r2, r3
	ldr	r2, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L105
	b	.L102
.L105:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L106
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L107
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	lsls	r2, r3, #16
	ldr	r3, [r7, #20]
	uxth	r3, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #16]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #36]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	subs	r2, r2, #1
	mul	r3, r2, r3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	lsls	r2, r3, #16
	ldr	r3, [r7, #20]
	uxth	r3, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #20]
	b	.L108
.L107:
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	lsls	r2, r3, #16
	ldr	r3, [r7, #20]
	uxth	r3, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #16]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #36]
	ldrb	r2, [r2, #4]	@ zero_extendqisi2
	subs	r2, r2, #1
	mul	r3, r2, r3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	str	r2, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	lsls	r2, r3, #16
	ldr	r3, [r7, #20]
	uxth	r3, r3
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #20]
.L108:
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #132]
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #132]
	b	.L100
.L106:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
.L100:
	ldr	r3, [r7, #16]
	b	.L110
.L102:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #8
	str	r3, [r7, #16]
	b	.L100
.L110:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_extra_item_load_kerning_pairs, .-pfr_extra_item_load_kerning_pairs
	.section	.data.rel.ro.local.pfr_phy_font_extra_items,"aw",%progbits
	.align	2
	.type	pfr_phy_font_extra_items, %object
	.size	pfr_phy_font_extra_items, 40
pfr_phy_font_extra_items:
	.word	1
	.word	pfr_extra_item_load_bitmap_info
	.word	2
	.word	pfr_extra_item_load_font_id
	.word	3
	.word	pfr_extra_item_load_stem_snaps
	.word	4
	.word	pfr_extra_item_load_kerning_pairs
	.word	0
	.word	0
	.section	.text.pfr_aux_name_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_aux_name_load, %function
pfr_aux_name_load:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L112
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L112
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L112:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L113
.L117:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L114
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L115
.L114:
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L116
.L115:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L113:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L117
.L116:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L118
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L119
	b	.L118
.L119:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	bl	memcpy(PLT)
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L118:
	ldr	r3, [r7]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_aux_name_load, .-pfr_aux_name_load
	.section	.text.pfr_phy_font_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_phy_font_done, %function
pfr_phy_font_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #72]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #100]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #92]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #128]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #120]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #124]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #108]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #108]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #136]
	str	r3, [r7, #12]
	b	.L122
.L123:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r0, [r7]
	ldr	r1, [r7, #12]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	str	r3, [r7, #12]
.L122:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L123
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #132]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_phy_font_done, .-pfr_phy_font_done
	.section	.text.pfr_phy_font_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_phy_font_load, %function
pfr_phy_font_load:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7, #12]
	add	r2, r3, #136
	ldr	r3, [r7, #12]
	str	r2, [r3, #140]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L125
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L125
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #12]
	str	r2, [r3, #148]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #16]
	add	r2, r3, #15
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L126
	b	.L127
.L126:
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #48]
	str	r2, [r3, #36]
	ldr	r3, [r7, #48]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L128
	ldr	r3, [r7, #16]
	adds	r2, r3, #2
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L129
	b	.L127
.L129:
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
.L128:
	ldr	r3, [r7, #48]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L130
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #52]
	ldr	r3, .L171
.LPIC1:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7, #12]
	bl	pfr_extra_items_parse(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L130
	b	.L131
.L130:
	ldr	r3, [r7, #16]
	adds	r2, r3, #3
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L132
	b	.L127
.L132:
	ldr	r3, [r7, #16]
	adds	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L133
	ldr	r3, [r7, #16]
	str	r3, [r7, #72]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #76]
	add	r2, r2, r3
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L134
	b	.L127
.L134:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #16]
	b	.L135
.L144:
	ldr	r3, [r7, #72]
	adds	r2, r3, #4
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bls	.L136
	b	.L133
.L136:
	ldr	r3, [r7, #72]
	adds	r3, r3, #2
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #72]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #3
	bls	.L133
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bhi	.L133
	ldr	r3, [r7, #44]
	subs	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #72]
	adds	r3, r3, #2
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #72]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #2
	beq	.L138
	cmp	r3, #3
	beq	.L139
	cmp	r3, #1
	bne	.L137
	ldr	r3, [r7, #44]
	subs	r2, r3, #4
	ldr	r3, [r7, #12]
	adds	r3, r3, #84
	ldr	r0, [r7, #72]
	mov	r1, r2
	ldr	r2, [r7, #56]
	bl	pfr_aux_name_load(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L141
	b	.L125
.L141:
	b	.L137
.L138:
	ldr	r3, [r7, #72]
	add	r2, r3, #32
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bls	.L142
	b	.L137
.L142:
	ldr	r3, [r7, #72]
	adds	r3, r3, #10
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	adds	r3, r3, #2
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #72]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldr	r3, [r7, #72]
	adds	r3, r3, #2
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #72]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #48]
	ldr	r3, [r7, #72]
	adds	r3, r3, #2
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #72]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	b	.L137
.L139:
	ldr	r3, [r7, #44]
	subs	r2, r3, #4
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	ldr	r0, [r7, #72]
	mov	r1, r2
	ldr	r2, [r7, #56]
	bl	pfr_aux_name_load(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L143
	b	.L125
.L143:
	nop
.L137:
	ldr	r3, [r7, #40]
	str	r3, [r7, #72]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #76]
.L135:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L144
.L133:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L145
	b	.L127
.L145:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #104]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L146
	b	.L127
.L146:
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #56]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #108]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L147
	b	.L131
.L147:
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L148
.L149:
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #108]
	ldr	r3, [r7, #68]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	subs	r2, r2, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r2, r2, #8
	uxth	r1, r2
	ldr	r2, [r7, #16]
	subs	r2, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r2, r2, r1
	uxth	r2, r2
	sxth	r2, r2
	str	r2, [r3]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L148:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L149
	ldr	r3, [r7, #16]
	add	r2, r3, #8
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L150
	b	.L127
.L150:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #112]
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #116]
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #56]
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #120]
	ldr	r3, [r7, #16]
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #124]
	movs	r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #48]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L151
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L151:
	ldr	r3, [r7, #48]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L152
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	str	r3, [r7, #60]
.L152:
	ldr	r3, [r7, #48]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L153
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L153:
	ldr	r3, [r7, #48]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L154
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L154:
	ldr	r3, [r7, #48]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L155
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L155:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #60]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L156
	b	.L127
.L156:
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #56]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #128]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L157
	b	.L131
.L157:
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L158
.L168:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #48]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L159
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	b	.L160
.L159:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
.L160:
	ldr	r2, [r7, #24]
	str	r3, [r2]
	ldr	r3, [r7, #48]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L161
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	b	.L162
.L161:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
.L162:
	ldr	r2, [r7, #24]
	str	r3, [r2, #4]
	ldr	r3, [r7, #48]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L163
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L163:
	ldr	r3, [r7, #48]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L164
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	b	.L165
.L164:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	str	r2, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
.L165:
	ldr	r2, [r7, #24]
	str	r3, [r2, #8]
	ldr	r3, [r7, #48]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L166
	ldr	r3, [r7, #16]
	adds	r3, r3, #3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	b	.L167
.L166:
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
.L167:
	ldr	r2, [r7, #24]
	str	r3, [r2, #12]
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L158:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L168
.L131:
	ldr	r0, [r7, #8]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r0, [r7, #8]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #144]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #148]
.L125:
	ldr	r3, [r7, #20]
	b	.L170
.L127:
	movs	r3, #8
	str	r3, [r7, #20]
	b	.L131
.L170:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L172:
	.align	2
.L171:
	.word	pfr_phy_font_extra_items-(.LPIC1+4)
	.size	pfr_phy_font_load, .-pfr_phy_font_load
	.section	.text.pfr_glyph_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_init, %function
pfr_glyph_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #36
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #32]
	ldr	r0, [r7]
	bl	FT_GlyphLoader_Rewind(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_glyph_init, .-pfr_glyph_init
	.section	.text.pfr_glyph_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_done, %function
pfr_glyph_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #32]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_glyph_done, .-pfr_glyph_done
	.section	.text.pfr_glyph_close_contour,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_close_contour, %function
pfr_glyph_close_contour:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #56
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L176
	b	.L175
.L176:
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r3, #1
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L178
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	sxth	r3, r3
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #24]
.L178:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ble	.L179
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L179
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L179
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #2]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L179:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	blt	.L180
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	uxth	r3, r3
	mov	r1, r3	@ movhi
	adds	r1, r1, #1
	uxth	r0, r1
	ldr	r1, [r7, #16]
	strh	r0, [r1]	@ movhi
	sxth	r3, r3
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L180:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #32]
.L175:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_glyph_close_contour, .-pfr_glyph_close_contour
	.section	.text.pfr_glyph_start,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_start, %function
pfr_glyph_start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #32]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_glyph_start, .-pfr_glyph_start
	.section	.text.pfr_glyph_line_to,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_line_to, %function
pfr_glyph_line_to:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	adds	r3, r3, #56
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L183
	movs	r3, #8
	str	r3, [r7, #20]
	b	.L184
.L183:
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #22]
	sxth	r2, r3
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #58]
	sxth	r3, r3
	add	r3, r3, r2
	adds	r2, r3, #1
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L185
	ldr	r0, [r7, #16]
	movs	r1, #1
	movs	r2, #0
	bl	FT_GlyphLoader_CheckPoints(PLT)
	mov	r3, r0
	b	.L186
.L185:
	movs	r3, #0
.L186:
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L184
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #2]	@ movhi
.L184:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_glyph_line_to, .-pfr_glyph_line_to
	.section	.text.pfr_glyph_curve_to,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_curve_to, %function
pfr_glyph_curve_to:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r3, r3, #56
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L189
	movs	r3, #8
	str	r3, [r7, #36]
	b	.L190
.L189:
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #22]
	sxth	r2, r3
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #58]
	sxth	r3, r3
	add	r3, r3, r2
	adds	r2, r3, #3
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L191
	ldr	r0, [r7, #32]
	movs	r1, #3
	movs	r2, #0
	bl	FT_GlyphLoader_CheckPoints(PLT)
	mov	r3, r0
	b	.L192
.L191:
	movs	r3, #0
.L192:
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L190
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #24]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	ldr	r2, [r7]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #20]
	movs	r2, #2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	movs	r2, #2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	uxth	r3, r3
	adds	r3, r3, #3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #28]
	strh	r2, [r3, #2]	@ movhi
.L190:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_glyph_curve_to, .-pfr_glyph_curve_to
	.section	.text.pfr_glyph_move_to,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_move_to, %function
pfr_glyph_move_to:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #8]
	ldr	r0, [r7, #4]
	bl	pfr_glyph_close_contour(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #32]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #22]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #58]
	sxth	r3, r3
	add	r3, r3, r2
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L195
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #20]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #56]
	sxth	r3, r3
	add	r3, r3, r2
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L196
.L195:
	ldr	r0, [r7, #8]
	movs	r1, #1
	movs	r2, #1
	bl	FT_GlyphLoader_CheckPoints(PLT)
	mov	r3, r0
	b	.L197
.L196:
	movs	r3, #0
.L197:
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L198
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	pfr_glyph_line_to(PLT)
	str	r0, [r7, #12]
.L198:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_glyph_move_to, .-pfr_glyph_move_to
	.section	.text.pfr_glyph_end,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_end, %function
pfr_glyph_end:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	pfr_glyph_close_contour(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	mov	r0, r3
	bl	FT_GlyphLoader_Add(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_glyph_end, .-pfr_glyph_end
	.section	.text.pfr_glyph_load_simple,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_load_simple, %function
pfr_glyph_load_simple:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #128
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	str	r3, [r7, #80]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L202
	b	.L272
.L202:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L204
	b	.L272
.L204:
	movs	r3, #0
	str	r3, [r7, #116]
	movs	r3, #0
	str	r3, [r7, #112]
	ldr	r3, [r7, #76]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L205
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L206
	b	.L272
.L206:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	and	r3, r3, #15
	str	r3, [r7, #116]
	ldr	r3, [r7, #72]
	lsrs	r3, r3, #4
	str	r3, [r7, #112]
	b	.L207
.L205:
	ldr	r3, [r7, #76]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L208
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L209
	b	.L272
.L209:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #116]
.L208:
	ldr	r3, [r7, #76]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L207
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L210
	b	.L272
.L210:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #112]
.L207:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #112]
	add	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcs	.L211
	ldr	r3, [r7, #72]
	adds	r3, r3, #7
	bic	r3, r3, #7
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #68]
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #8]
	str	r1, [sp]
	add	r1, r7, #48
	str	r1, [sp, #4]
	ldr	r0, [r7, #80]
	movs	r1, #4
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L212
	b	.L213
.L212:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #68]
	str	r2, [r3, #4]
.L211:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #116]
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	movs	r3, #0
	str	r3, [r7, #104]
	movs	r3, #0
	str	r3, [r7, #100]
	movs	r3, #0
	str	r3, [r7, #108]
	b	.L214
.L221:
	ldr	r3, [r7, #108]
	and	r3, r3, #7
	cmp	r3, #0
	bne	.L215
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L216
	b	.L272
.L216:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #104]
.L215:
	ldr	r3, [r7, #104]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L217
	ldr	r3, [r7, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L218
	b	.L272
.L218:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #100]
	b	.L219
.L217:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L220
	b	.L272
.L220:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #100]
	add	r3, r3, r2
	str	r3, [r7, #100]
.L219:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #108]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #100]
	str	r2, [r3]
	ldr	r3, [r7, #104]
	lsrs	r3, r3, #1
	str	r3, [r7, #104]
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
.L214:
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L221
	ldr	r3, [r7, #76]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L222
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	pfr_extra_items_skip(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L222
	b	.L213
.L222:
	ldr	r0, [r7, #12]
	bl	pfr_glyph_start(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	add	r3, r7, #40
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L270:
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L223
	b	.L272
.L223:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	and	r3, r3, #15
	str	r3, [r7, #60]
	ldr	r3, [r7, #64]
	lsrs	r3, r3, #4
	cmp	r3, #7
	bhi	.L225
	adr	r1, .L227
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L227:
	.word	.L226+1-.L227
	.word	.L232+1-.L227
	.word	.L229+1-.L227
	.word	.L230+1-.L227
	.word	.L232+1-.L227
	.word	.L232+1-.L227
	.word	.L233+1-.L227
	.word	.L234+1-.L227
.L226:
	movs	r3, #0
	str	r3, [r7, #88]
	b	.L235
.L232:
	ldr	r3, [r7, #60]
	str	r3, [r7, #92]
	movs	r3, #1
	str	r3, [r7, #88]
	b	.L235
.L229:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	bcc	.L236
	b	.L272
.L236:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	str	r3, [r7, #20]
	add	r3, r7, #40
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	movs	r3, #0
	str	r3, [r7, #88]
	b	.L235
.L230:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bcc	.L238
	b	.L272
.L238:
	ldr	r3, [r7, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
	add	r3, r7, #40
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	movs	r3, #0
	str	r3, [r7, #88]
	b	.L235
.L233:
	movw	r3, #2958
	str	r3, [r7, #92]
	movs	r3, #3
	str	r3, [r7, #88]
	b	.L235
.L234:
	movw	r3, #3627
	str	r3, [r7, #92]
	movs	r3, #3
	str	r3, [r7, #88]
	b	.L235
.L225:
	movs	r3, #4
	str	r3, [r7, #88]
	ldr	r3, [r7, #60]
	str	r3, [r7, #92]
.L235:
	add	r3, r7, #16
	str	r3, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L239
.L261:
	ldr	r3, [r7, #92]
	and	r3, r3, #3
	cmp	r3, #1
	beq	.L241
	cmp	r3, #1
	bcc	.L242
	cmp	r3, #2
	beq	.L243
	b	.L273
.L242:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L244
	b	.L272
.L244:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	bcc	.L245
	b	.L272
.L245:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #96]
	str	r2, [r3]
	b	.L246
.L241:
	ldr	r3, [r7, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L247
	b	.L272
.L247:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #96]
	str	r2, [r3]
	b	.L246
.L243:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L248
	b	.L272
.L248:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	str	r3, [r7, #52]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #96]
	str	r2, [r3]
	b	.L246
.L273:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #96]
	str	r2, [r3]
.L246:
	ldr	r3, [r7, #92]
	lsrs	r3, r3, #2
	and	r3, r3, #3
	cmp	r3, #1
	beq	.L250
	cmp	r3, #1
	bcc	.L251
	cmp	r3, #2
	beq	.L252
	b	.L274
.L251:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L253
	b	.L272
.L253:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bcc	.L254
	nop
	b	.L272
.L254:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #96]
	str	r2, [r3, #4]
	b	.L255
.L250:
	ldr	r3, [r7, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L256
	b	.L272
.L256:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #96]
	str	r2, [r3, #4]
	b	.L255
.L252:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L257
	b	.L272
.L257:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	str	r3, [r7, #52]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #96]
	str	r2, [r3, #4]
	b	.L255
.L274:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #96]
	str	r2, [r3, #4]
.L255:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L258
	ldr	r3, [r7, #88]
	cmp	r3, #4
	bne	.L258
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L259
	nop
	b	.L272
.L259:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	subs	r3, r3, #1
	str	r3, [r7, #88]
	b	.L260
.L258:
	ldr	r3, [r7, #92]
	lsrs	r3, r3, #4
	str	r3, [r7, #92]
.L260:
	ldr	r2, [r7, #96]
	add	r3, r7, #40
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #96]
	adds	r3, r3, #8
	str	r3, [r7, #96]
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L239:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bcc	.L261
	ldr	r3, [r7, #64]
	lsrs	r3, r3, #4
	cmp	r3, #5
	bhi	.L262
	adr	r1, .L264
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L264:
	.word	.L263+1-.L264
	.word	.L265+1-.L264
	.word	.L265+1-.L264
	.word	.L265+1-.L264
	.word	.L266+1-.L264
	.word	.L266+1-.L264
.L263:
	ldr	r0, [r7, #12]
	bl	pfr_glyph_end(PLT)
	b	.L213
.L265:
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	pfr_glyph_line_to(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	b	.L268
.L266:
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	pfr_glyph_move_to(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	b	.L268
.L262:
	add	r1, r7, #16
	add	r3, r7, #16
	add	r2, r3, #8
	add	r3, r7, #16
	adds	r3, r3, #16
	ldr	r0, [r7, #12]
	bl	pfr_glyph_curve_to(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
.L268:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L269
	b	.L213
.L269:
	b	.L270
.L213:
	ldr	r3, [r7, #48]
	b	.L275
.L203:
.L272:
	movs	r3, #8
	str	r3, [r7, #48]
	b	.L213
.L275:
	mov	r0, r3
	adds	r7, r7, #120
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_glyph_load_simple, .-pfr_glyph_load_simple
	.section	.text.pfr_glyph_load_compound,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_load_compound, %function
pfr_glyph_load_compound:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L277
	b	.L311
.L277:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	and	r3, r3, #128
	cmp	r3, #0
	bne	.L279
	b	.L311
.L279:
	ldr	r3, [r7, #36]
	and	r3, r3, #63
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L280
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	pfr_extra_items_skip(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L280
	b	.L281
.L280:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bls	.L282
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	adds	r3, r3, #3
	bic	r3, r3, #3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #64
	bls	.L283
	movs	r3, #8
	str	r3, [r7, #16]
	b	.L281
.L283:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	mov	r2, r3
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #24]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #24
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L284
	b	.L281
.L284:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #20]
.L282:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #24]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L285
.L309:
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L286
	b	.L311
.L286:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #20]
	ldr	r3, [r7, #60]
	mov	r2, #65536
	str	r2, [r3]
	ldr	r3, [r7, #20]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L287
	ldr	r3, [r7, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L288
	b	.L311
.L288:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	lsls	r2, r3, #4
	ldr	r3, [r7, #60]
	str	r2, [r3]
.L287:
	ldr	r3, [r7, #60]
	mov	r2, #65536
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L289
	ldr	r3, [r7, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L290
	b	.L311
.L290:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	lsls	r2, r3, #4
	ldr	r3, [r7, #60]
	str	r2, [r3, #4]
.L289:
	ldr	r3, [r7, #20]
	and	r3, r3, #3
	cmp	r3, #1
	beq	.L292
	cmp	r3, #2
	beq	.L293
	b	.L291
.L292:
	ldr	r3, [r7, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L294
	b	.L311
.L294:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #52]
	b	.L291
.L293:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L295
	b	.L311
.L295:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	nop
.L291:
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #2
	and	r3, r3, #3
	cmp	r3, #1
	beq	.L297
	cmp	r3, #2
	beq	.L298
	b	.L296
.L297:
	ldr	r3, [r7, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L299
	b	.L311
.L299:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #48]
	b	.L296
.L298:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L300
	b	.L311
.L300:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	nop
.L296:
	ldr	r3, [r7, #60]
	ldr	r2, [r7, #52]
	str	r2, [r3, #8]
	ldr	r3, [r7, #60]
	ldr	r2, [r7, #48]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L301
	ldr	r3, [r7, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L302
	b	.L311
.L302:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #60]
	str	r2, [r3, #20]
	b	.L303
.L301:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L304
	b	.L311
.L304:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #60]
	str	r2, [r3, #20]
.L303:
	ldr	r3, [r7, #20]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L305
	ldr	r3, [r7, #8]
	adds	r2, r3, #3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L306
	b	.L311
.L306:
	ldr	r3, [r7, #8]
	adds	r3, r3, #3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	str	r2, [r3, #16]
	b	.L307
.L305:
	ldr	r3, [r7, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L308
	b	.L311
.L308:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #60]
	str	r2, [r3, #16]
.L307:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #60]
	adds	r3, r3, #24
	str	r3, [r7, #60]
.L285:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L309
.L281:
	ldr	r3, [r7, #16]
	b	.L312
.L278:
.L311:
	movs	r3, #8
	str	r3, [r7, #16]
	b	.L281
.L312:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_glyph_load_compound, .-pfr_glyph_load_compound
	.section	.text.pfr_glyph_load_rec,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_load_rec, %function
pfr_glyph_load_rec:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L314
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #80]
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L314
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	str	r3, [r7, #48]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #80]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L315
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L315
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r3, r3, #20
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #32]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #44]
	bl	pfr_glyph_load_compound(PLT)
	str	r0, [r7, #68]
	ldr	r0, [r7, #8]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L316
	b	.L314
.L316:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L317
.L327:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #24]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #64]
	add	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #24]
	ldr	r2, [r2, #20]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	pfr_glyph_load_rec(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L318
	b	.L319
.L318:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #24]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #64]
	add	r2, r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	cmp	r3, #65536
	bne	.L320
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	cmp	r3, #65536
	beq	.L321
.L320:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L322
.L323:
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #4]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #56]
	adds	r3, r3, #8
	str	r3, [r7, #56]
.L322:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	blt	.L323
	b	.L324
.L321:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L325
.L326:
	ldr	r3, [r7, #52]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #52]
	str	r2, [r3, #4]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #52]
	adds	r3, r3, #8
	str	r3, [r7, #52]
.L325:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	blt	.L326
.L324:
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L317:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L327
.L319:
	b	.L314
.L315:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #44]
	bl	pfr_glyph_load_simple(PLT)
	str	r0, [r7, #68]
	ldr	r0, [r7, #8]
	bl	FT_Stream_ExitFrame(PLT)
.L314:
	ldr	r3, [r7, #68]
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_glyph_load_rec, .-pfr_glyph_load_rec
	.section	.text.pfr_glyph_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_glyph_load, %function
pfr_glyph_load:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	mov	r0, r3
	bl	FT_GlyphLoader_Rewind(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	pfr_glyph_load_rec(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_glyph_load, .-pfr_glyph_load
	.section	.text.pfr_cmap_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_cmap_init, %function
pfr_cmap_init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #416]
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	movs	r3, #1
	str	r3, [r7, #16]
	b	.L332
.L335:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, #268435456
	subs	r3, r3, #1
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #20]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L333
	movs	r3, #8
	str	r3, [r7, #20]
	b	.L334
.L333:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L332:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L335
.L334:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_cmap_init, .-pfr_cmap_init
	.section	.text.pfr_cmap_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_cmap_done, %function
pfr_cmap_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_cmap_done, .-pfr_cmap_done
	.section	.text.pfr_cmap_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_cmap_char_index, %function
pfr_cmap_char_index:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #16]
	b	.L339
.L343:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	lsrs	r2, r3, #1
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L340
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	b	.L341
.L340:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L342
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L339
.L342:
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
.L339:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L343
	movs	r3, #0
.L341:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_cmap_char_index, .-pfr_cmap_char_index
	.section	.text.pfr_cmap_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_cmap_char_next, %function
pfr_cmap_char_next:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L345:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #16]
	b	.L346
.L351:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	lsrs	r2, r3, #1
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L347
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L348
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	b	.L349
.L348:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L345
.L347:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcs	.L350
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L346
.L350:
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
.L346:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L351
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L349
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L349
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #24]
.L349:
	ldr	r3, [r7]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_cmap_char_next, .-pfr_cmap_char_next
	.global	pfr_cmap_class_rec
	.section	.data.rel.ro.local.pfr_cmap_class_rec,"aw",%progbits
	.align	2
	.type	pfr_cmap_class_rec, %object
	.size	pfr_cmap_class_rec, 40
pfr_cmap_class_rec:
	.word	24
	.word	pfr_cmap_init
	.word	pfr_cmap_done
	.word	pfr_cmap_char_index
	.word	pfr_cmap_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.FT_MulFix_arm,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FT_MulFix_arm, %function
FT_MulFix_arm:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
#APP
@ 86 "../../../libs/freetype/include/freetype/internal/ftcalc.h" 1
	smull  r0, r1, r2, r3
	mov    r3, r1, asr #31
	add    r3, r3, #0x8000
	adds   r0, r0, r3
	adc    r1, r1, #0
	mov    r3, r0, lsr #16
	orr    r3, r3, r1, lsl #16
	
@ 0 "" 2
	.thumb
	str	r3, [r7, #4]
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_MulFix_arm, .-FT_MulFix_arm
	.section	.text.pfr_face_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_face_done, %function
pfr_face_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L356
	b	.L355
.L356:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	add	r2, r3, #288
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	mov	r0, r2
	mov	r1, r3
	bl	pfr_phy_font_done(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
.L355:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_face_done, .-pfr_face_done
	.section	.text.pfr_face_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_face_init, %function
pfr_face_init:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r5, .L390
.LPIC2:
	add	r5, pc
	ldr	r3, [r7, #8]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r3, r3, #132
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	pfr_header_load(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L359
	b	.L360
.L359:
	ldr	r3, [r7, #48]
	adds	r3, r3, #132
	mov	r0, r3
	bl	pfr_header_check(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L361
	movs	r3, #2
	str	r3, [r7, #32]
	b	.L360
.L361:
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #152]
	add	r3, r7, #28
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	pfr_log_font_count(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L360
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L363
	b	.L360
.L363:
	ldr	r3, [r7, #4]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L364
	movs	r3, #6
	str	r3, [r7, #32]
	b	.L360
.L364:
	ldr	r3, [r7, #48]
	add	r1, r3, #240
	ldr	r3, [r7, #4]
	uxth	r2, r3
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #152]
	ldr	r0, [r7, #48]
	ldr	r0, [r0, #204]
	cmp	r0, #0
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	uxtb	r0, r0
	str	r0, [sp]
	mov	r0, r1
	ldr	r1, [r7, #12]
	bl	pfr_log_font_load(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L365
	b	.L360
.L365:
	ldr	r3, [r7, #48]
	add	r1, r3, #288
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #284]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #280]
	mov	r0, r1
	ldr	r1, [r7, #12]
	bl	pfr_phy_font_load(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L366
	b	.L360
.L366:
	ldr	r3, [r7, #48]
	add	r3, r3, #288
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #120]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L367
.L370:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L368
	b	.L369
.L368:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L367:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #120]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bhi	.L370
.L369:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #120]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bne	.L371
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L372
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #8]
	b	.L371
.L372:
	movs	r3, #3
	str	r3, [r7, #32]
	b	.L360
.L371:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #36]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L373
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #4
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L373:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #36]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L374
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #32
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
	b	.L375
.L374:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L375:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L376
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #2
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L376:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #132]
	cmp	r3, #0
	beq	.L377
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #64
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L377:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #8]
	str	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L378
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #8]
	str	r2, [r3, #20]
.L378:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #8]
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #44]
	add	r4, r2, #52
	adds	r3, r3, #20
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #12]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #68]	@ movhi
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #32]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #70]	@ movhi
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #24]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #72]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #68]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #74]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #74]
	sxth	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #70]
	sxth	r1, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #72]
	sxth	r3, r3
	subs	r3, r1, r3
	cmp	r2, r3
	bge	.L379
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #70]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #72]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #74]	@ movhi
.L379:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L380
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #92]
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #104]
	ldr	r3, [r3, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #32
	str	r2, [sp, #4]
	ldr	r0, [r7, #36]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L381
	b	.L360
.L381:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	str	r3, [r7, #68]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #100]
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L382
.L383:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	uxth	r2, r3
	ldr	r3, [r7, #68]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #68]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #68]
	str	r2, [r3, #4]
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #68]
	str	r2, [r3, #8]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #68]
	str	r2, [r3, #12]
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
	ldr	r3, [r7, #68]
	adds	r3, r3, #16
	str	r3, [r7, #68]
	ldr	r3, [r7, #64]
	adds	r3, r3, #36
	str	r3, [r7, #64]
.L382:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L383
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	str	r2, [r3, #28]
.L380:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #36]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L384
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #40]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #76]	@ movhi
	b	.L385
.L384:
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #120]
	str	r3, [r7, #56]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #128]
	str	r3, [r7, #52]
	b	.L386
.L388:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	ble	.L387
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
.L387:
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #52]
	adds	r3, r3, #16
	str	r3, [r7, #52]
.L386:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L388
	ldr	r3, [r7, #60]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #76]	@ movhi
.L385:
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #74]
	ldr	r3, [r7, #8]
	strh	r2, [r3, #78]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #68]
	negs	r2, r3
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #80]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #68]
	movw	r3, #34953
	movt	r3, 34952
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #4
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #82]	@ movhi
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	movs	r3, #3
	strh	r3, [r7, #24]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #26]	@ movhi
	movw	r3, #26979
	movt	r3, 30062
	str	r3, [r7, #20]
	add	r3, r7, #16
	ldr	r2, .L390+4
	ldr	r2, [r5, r2]
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #132]
	cmp	r3, #0
	beq	.L360
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #64
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L360:
	ldr	r3, [r7, #32]
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L391:
	.align	2
.L390:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	pfr_cmap_class_rec(GOT)
	.size	pfr_face_init, .-pfr_face_init
	.section	.text.pfr_slot_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_slot_init, %function
pfr_slot_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #160
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	pfr_glyph_init(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_slot_init, .-pfr_slot_init
	.section	.text.pfr_slot_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_slot_done, %function
pfr_slot_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #160
	mov	r0, r3
	bl	pfr_glyph_done(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_slot_done, .-pfr_slot_done
	.section	.text.pfr_slot_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_slot_load, %function
pfr_slot_load:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #104
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	str	r3, [r7, #76]
	ldr	r3, [r7, #8]
	str	r3, [r7, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	adds	r3, r3, #108
	str	r3, [r7, #64]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L396
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L396:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L397
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L398
.L397:
	movs	r3, #6
	str	r3, [r7, #92]
	b	.L399
.L398:
	ldr	r3, [r7]
	and	r3, r3, #9
	cmp	r3, #0
	bne	.L400
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #72]
	ldr	r2, [r7, #4]
	bl	pfr_slot_load_bitmap(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L400
	b	.L399
.L400:
	ldr	r3, [r7]
	and	r3, r3, #16384
	cmp	r3, #0
	beq	.L401
	movs	r3, #6
	str	r3, [r7, #92]
	b	.L399
.L401:
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #416]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r2, [r7, #12]
	movw	r3, #29804
	movt	r3, 28533
	str	r3, [r2, #72]
	ldr	r3, [r7, #64]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #64]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #188]
	str	r3, [r7, #56]
	ldr	r3, [r7, #76]
	add	r1, r3, #160
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #60]
	ldr	r0, [r0, #8]
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #56]
	bl	pfr_glyph_load(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L399
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	str	r3, [r7, #52]
	ldr	r3, [r7]
	and	r3, r3, #1
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #51]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #188]
	ldr	r2, [r7, #64]
	mov	r4, r2
	add	r5, r3, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	bic	r2, r3, #1
	ldr	r3, [r7, #64]
	str	r2, [r3, #16]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	orr	r2, r3, #4
	ldr	r3, [r7, #64]
	str	r2, [r3, #16]
	ldr	r3, [r7, #72]
	cmp	r3, #0
	beq	.L402
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #14]
	cmp	r3, #23
	bhi	.L402
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	orr	r2, r3, #256
	ldr	r3, [r7, #64]
	str	r2, [r3, #16]
.L402:
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	str	r3, [r7, #88]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #304]
	str	r3, [r7, #44]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #300]
	str	r3, [r7, #40]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	beq	.L403
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r0, [r7, #88]
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #88]
.L403:
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #324]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L404
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #88]
	str	r2, [r3, #28]
	b	.L405
.L404:
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #88]
	str	r2, [r3, #16]
.L405:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	str	r2, [r3, #56]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	str	r2, [r3, #60]
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3, #24]
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L406
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	str	r3, [r7, #32]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L407
.L408:
	ldr	r3, [r7, #80]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #80]
	str	r2, [r3]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #80]
	str	r2, [r3, #4]
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #80]
	adds	r3, r3, #8
	str	r3, [r7, #80]
.L407:
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bgt	.L408
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #16]
	mov	r0, r3
	ldr	r1, [r7, #36]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #52]
	str	r2, [r3, #16]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #52]
	str	r2, [r3, #28]
.L406:
	add	r3, r7, #16
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_Outline_Get_CBox(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	subs	r2, r2, r3
	ldr	r3, [r7, #52]
	str	r2, [r3]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #52]
	str	r2, [r3, #4]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #52]
	str	r2, [r3, #8]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #52]
	str	r2, [r3, #12]
.L399:
	ldr	r3, [r7, #92]
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	pfr_slot_load, .-pfr_slot_load
	.section	.text.pfr_face_get_kerning,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_face_get_kerning, %function
pfr_face_get_kerning:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #84]
	ldr	r3, [r7, #56]
	add	r3, r3, #288
	str	r3, [r7, #52]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L411
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L411:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L412
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L412:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #120]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L413
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #120]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L413
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	lsls	r2, r3, #16
	ldr	r3, [r7, #44]
	uxth	r3, r3
	orrs	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #136]
	str	r3, [r7, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	str	r3, [r7, #36]
	b	.L414
.L417:
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bhi	.L415
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L415
	nop
.L416:
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #36]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L413
	b	.L436
.L415:
	ldr	r3, [r7, #80]
	ldr	r3, [r3]
	str	r3, [r7, #80]
.L414:
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L417
	b	.L413
.L436:
	ldr	r3, [r7, #80]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	ldr	r2, [r7, #80]
	ldr	r2, [r2, #8]
	mul	r3, r2, r3
	ldr	r0, [r7, #36]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L413
	ldr	r3, [r7, #80]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	str	r3, [r7, #32]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	clz	r3, r3
	rsb	r3, r3, #31
	movs	r2, #1
	lsl	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	str	r3, [r7, #76]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #32]
	str	r3, [r7, #72]
	ldr	r3, [r7, #80]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #1
	strb	r3, [r7, #19]
	ldr	r3, [r7, #80]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	and	r3, r3, #2
	strb	r3, [r7, #18]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L418
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L419
	ldr	r3, [r7, #68]
	adds	r3, r3, #4
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #68]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #64]
	b	.L420
.L419:
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #64]
.L420:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bne	.L421
	b	.L422
.L421:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L418
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L423
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	b	.L424
.L423:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L424:
	ldr	r3, [r7, #68]
	str	r3, [r7, #72]
	b	.L425
.L418:
	b	.L425
.L429:
	ldr	r3, [r7, #76]
	lsrs	r3, r3, #1
	str	r3, [r7, #76]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L426
	ldr	r3, [r7, #68]
	adds	r3, r3, #4
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #68]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #64]
	b	.L427
.L426:
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #64]
.L427:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bne	.L428
	b	.L422
.L428:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L425
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #72]
.L425:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L429
	ldr	r3, [r7, #72]
	str	r3, [r7, #68]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L430
	ldr	r3, [r7, #68]
	adds	r3, r3, #4
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #68]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #64]
	b	.L431
.L430:
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #64]
.L431:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bne	.L432
.L422:
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L433
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #60]
	b	.L434
.L433:
	ldr	r3, [r7, #68]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #60]
.L434:
	ldr	r3, [r7, #80]
	ldrh	r3, [r3, #6]
	sxth	r2, r3
	ldr	r3, [r7, #60]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
.L432:
	ldr	r0, [r7, #36]
	bl	FT_Stream_ExitFrame(PLT)
.L413:
	ldr	r3, [r7, #84]
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_face_get_kerning, .-pfr_face_get_kerning
	.section	.text.pfr_get_kerning,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_get_kerning, %function
pfr_get_kerning:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	add	r3, r3, #288
	str	r3, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	pfr_face_get_kerning(PLT)
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	beq	.L438
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L439
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
.L439:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L438
	ldr	r3, [r7]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #4]
.L438:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_get_kerning, .-pfr_get_kerning
	.section	.text.pfr_get_advance,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_get_advance, %function
pfr_get_advance:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
	movs	r3, #6
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L442
	b	.L443
.L442:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L443
	ldr	r3, [r7, #24]
	add	r3, r3, #288
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #120]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L443
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #28]
.L443:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_get_advance, .-pfr_get_advance
	.section	.text.pfr_get_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_get_metrics, %function
pfr_get_metrics:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	add	r3, r3, #288
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #88]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L446
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L446:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L447
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L447:
	mov	r3, #65536
	str	r3, [r7, #36]
	mov	r3, #65536
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L448
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #12]
	lsls	r2, r3, #6
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #14]
	lsls	r2, r3, #6
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #32]
.L448:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L449
	ldr	r3, [r7]
	ldr	r2, [r7, #36]
	str	r2, [r3]
.L449:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L450
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #32]
	str	r2, [r3]
.L450:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_get_metrics, .-pfr_get_metrics
	.section	.data.rel.ro.local.pfr_metrics_service_rec,"aw",%progbits
	.align	2
	.type	pfr_metrics_service_rec, %object
	.size	pfr_metrics_service_rec, 12
pfr_metrics_service_rec:
	.word	pfr_get_metrics
	.word	pfr_face_get_kerning
	.word	pfr_get_advance
	.section	.rodata
	.align	2
.LC0:
	.ascii	"pfr-metrics\000"
	.align	2
.LC1:
	.ascii	"font-format\000"
	.align	2
.LC2:
	.ascii	"PFR\000"
	.section	.data.rel.ro.local.pfr_services,"aw",%progbits
	.align	2
	.type	pfr_services, %object
	.size	pfr_services, 24
pfr_services:
	.word	.LC0
	.word	pfr_metrics_service_rec
	.word	.LC1
	.word	.LC2
	.word	0
	.word	0
	.section	.text.pfr_get_service,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_get_service, %function
pfr_get_service:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L454
.LPIC3:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7]
	bl	ft_service_list_lookup(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L455:
	.align	2
.L454:
	.word	pfr_services-(.LPIC3+4)
	.size	pfr_get_service, .-pfr_get_service
	.global	pfr_driver_class
	.section	.rodata
	.align	2
.LC3:
	.ascii	"pfr\000"
	.section	.data.rel.ro.local.pfr_driver_class,"aw",%progbits
	.align	2
	.type	pfr_driver_class, %object
	.size	pfr_driver_class, 96
pfr_driver_class:
	.word	257
	.word	28
	.word	.LC3
	.word	65536
	.word	131072
	.word	0
	.word	0
	.word	0
	.word	pfr_get_service
	.word	440
	.word	44
	.word	196
	.word	pfr_face_init
	.word	pfr_face_done
	.word	0
	.word	0
	.word	pfr_slot_init
	.word	pfr_slot_done
	.word	pfr_slot_load
	.word	pfr_get_kerning
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.pfr_bitwriter_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_bitwriter_init, %function
pfr_bitwriter_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #12]
	mul	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L456
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r1, [r7, #8]
	ldr	r1, [r1]
	subs	r1, r1, #1
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L456:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_bitwriter_init, .-pfr_bitwriter_init
	.section	.text.pfr_bitwriter_decode_bytes,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_bitwriter_decode_bytes, %function
pfr_bitwriter_decode_bytes:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	movs	r3, #128
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	lsls	r3, r3, #3
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bcs	.L459
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #44]
.L459:
	ldr	r3, [r7, #44]
	and	r3, r3, #7
	str	r3, [r7, #20]
	b	.L460
.L465:
	ldr	r3, [r7, #44]
	and	r2, r3, #7
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L461
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #28]
.L461:
	ldr	r3, [r7, #28]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L462
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	orrs	r3, r3, r2
	str	r3, [r7, #24]
.L462:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	lsrs	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L463
	ldr	r3, [r7, #24]
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	movs	r3, #128
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L464
.L463:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L464
	ldr	r3, [r7, #24]
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
	movs	r3, #128
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L464:
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	str	r3, [r7, #44]
.L460:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L465
	ldr	r3, [r7, #32]
	cmp	r3, #128
	beq	.L458
	ldr	r3, [r7, #24]
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
.L458:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_bitwriter_decode_bytes, .-pfr_bitwriter_decode_bytes
	.section	.text.pfr_bitwriter_decode_rle1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_bitwriter_decode_rle1, %function
pfr_bitwriter_decode_rle1:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	movs	r3, #128
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #52]
	movs	r3, #1
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #1
	str	r3, [r7, #48]
	b	.L468
.L477:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L469
.L473:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L470
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L471
	b	.L469
.L471:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	asrs	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	and	r3, r3, #15
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #20]
	str	r3, [r7, #56]
	b	.L472
.L470:
	movs	r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #24]
	str	r3, [r7, #56]
.L472:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L473
.L469:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L474
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	orrs	r3, r3, r2
	str	r3, [r7, #32]
.L474:
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L475
	ldr	r3, [r7, #32]
	uxtb	r2, r3
	ldr	r3, [r7, #40]
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #44]
	movs	r3, #128
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L476
.L475:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L476
	ldr	r3, [r7, #32]
	uxtb	r2, r3
	ldr	r3, [r7, #40]
	strb	r2, [r3]
	movs	r3, #128
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L476:
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L468:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L477
	ldr	r3, [r7, #36]
	cmp	r3, #128
	beq	.L467
	ldr	r3, [r7, #32]
	uxtb	r2, r3
	ldr	r3, [r7, #40]
	strb	r2, [r3]
.L467:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_bitwriter_decode_rle1, .-pfr_bitwriter_decode_rle1
	.section	.text.pfr_bitwriter_decode_rle2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_bitwriter_decode_rle2, %function
pfr_bitwriter_decode_rle2:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	movs	r3, #128
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #36]
	movs	r3, #1
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #1
	str	r3, [r7, #32]
	b	.L480
.L487:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L481
.L483:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L482
	b	.L481
.L482:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	eor	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L483
.L481:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L484
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #16]
.L484:
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L485
	ldr	r3, [r7, #16]
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #128
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	b	.L486
.L485:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L486
	ldr	r3, [r7, #16]
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #128
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L486:
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L480:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L487
	ldr	r3, [r7, #20]
	cmp	r3, #128
	beq	.L479
	ldr	r3, [r7, #16]
	uxtb	r2, r3
	ldr	r3, [r7, #24]
	strb	r2, [r3]
.L479:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_bitwriter_decode_rle2, .-pfr_bitwriter_decode_rle2
	.section	.text.pfr_lookup_bitmap_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_lookup_bitmap_data, %function
pfr_lookup_bitmap_data:
	@ args = 12, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	uxtb	r3, r3
	and	r3, r3, #1
	strb	r3, [r7, #27]
	movs	r3, #4
	str	r3, [r7, #36]
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L490
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L490:
	ldr	r3, [r7]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L491
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L491:
	ldr	r3, [r7]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L492
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L492:
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	str	r3, [r7, #40]
	b	.L493
.L501:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L494
	b	.L495
.L494:
	ldrb	r3, [r7, #27]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L496
	ldr	r3, [r7, #32]
	adds	r3, r3, #2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	b	.L497
.L496:
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #28]
.L497:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bne	.L498
	nop
.L499:
	ldr	r3, [r7]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L503
	b	.L506
.L498:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcs	.L500
	ldr	r3, [r7, #20]
	str	r3, [r7, #44]
	b	.L493
.L500:
	ldr	r3, [r7, #20]
	str	r3, [r7, #40]
.L493:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L501
.L495:
	ldr	r3, [r7, #64]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r2, [r3]
	b	.L489
.L506:
	ldr	r3, [r7, #32]
	adds	r3, r3, #2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3]
	b	.L504
.L503:
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3]
.L504:
	ldr	r3, [r7]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L505
	ldr	r3, [r7, #32]
	adds	r3, r3, #3
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	str	r2, [r3]
	b	.L489
.L505:
	ldr	r3, [r7, #32]
	adds	r3, r3, #2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #60]
	str	r2, [r3]
.L489:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_lookup_bitmap_data, .-pfr_lookup_bitmap_data
	.section	.text.pfr_load_bitmap_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_load_bitmap_metrics, %function
pfr_load_bitmap_metrics:
	@ args = 20, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L508
	b	.L509
.L508:
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #3
	bhi	.L510
	adr	r1, .L512
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L512:
	.word	.L511+1-.L512
	.word	.L513+1-.L512
	.word	.L514+1-.L512
	.word	.L515+1-.L512
.L511:
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L516
	b	.L509
.L516:
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #18]
	ldrsb	r3, [r7, #18]
	asrs	r3, r3, #4
	uxtb	r3, r3
	sxtb	r3, r3
	str	r3, [r7, #36]
	ldrsb	r3, [r7, #18]
	lsls	r3, r3, #4
	uxtb	r3, r3
	sxtb	r3, r3
	asrs	r3, r3, #4
	uxtb	r3, r3
	sxtb	r3, r3
	str	r3, [r7, #32]
	b	.L510
.L513:
	ldr	r3, [r7, #40]
	adds	r2, r3, #2
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L517
	b	.L509
.L517:
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	str	r3, [r7, #32]
	b	.L510
.L514:
	ldr	r3, [r7, #40]
	adds	r2, r3, #4
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L518
	b	.L509
.L518:
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #32]
	b	.L510
.L515:
	ldr	r3, [r7, #40]
	adds	r2, r3, #6
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L519
	b	.L509
.L519:
	ldr	r3, [r7, #40]
	adds	r3, r3, #3
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	adds	r3, r3, #3
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	nop
.L510:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #3
	bhi	.L520
	adr	r1, .L522
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L522:
	.word	.L521+1-.L522
	.word	.L523+1-.L522
	.word	.L524+1-.L522
	.word	.L525+1-.L522
.L521:
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L520
.L523:
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L526
	b	.L509
.L526:
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]
	strb	r3, [r7, #17]
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #15
	str	r3, [r7, #24]
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	and	r3, r3, #15
	str	r3, [r7, #20]
	b	.L520
.L524:
	ldr	r3, [r7, #40]
	adds	r2, r3, #2
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L527
	b	.L509
.L527:
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #20]
	b	.L520
.L525:
	ldr	r3, [r7, #40]
	adds	r2, r3, #4
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L528
	b	.L509
.L528:
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #20]
	nop
.L520:
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	strb	r3, [r7, #19]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #3
	bhi	.L529
	adr	r1, .L531
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L531:
	.word	.L530+1-.L531
	.word	.L532+1-.L531
	.word	.L533+1-.L531
	.word	.L534+1-.L531
.L530:
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	b	.L529
.L532:
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L535
	b	.L509
.L535:
	ldr	r3, [r7, #40]
	adds	r2, r3, #1
	str	r2, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	lsls	r3, r3, #8
	str	r3, [r7, #28]
	b	.L529
.L533:
	ldr	r3, [r7, #40]
	adds	r2, r3, #2
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L536
	b	.L509
.L536:
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #28]
	b	.L529
.L534:
	ldr	r3, [r7, #40]
	adds	r2, r3, #3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L537
	b	.L509
.L537:
	ldr	r3, [r7, #40]
	adds	r3, r3, #3
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	nop
.L529:
	ldr	r3, [r7]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #60]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	lsrs	r3, r3, #2
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #72]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #40]
	str	r2, [r3]
.L538:
	ldr	r3, [r7, #44]
	b	.L540
.L509:
	movs	r3, #8
	str	r3, [r7, #44]
	b	.L538
.L540:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pfr_load_bitmap_metrics, .-pfr_load_bitmap_metrics
	.section	.text.pfr_load_bitmap_bits,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_load_bitmap_bits, %function
pfr_load_bitmap_bits:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L542
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L542
	add	r2, r7, #16
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	mov	r0, r2
	ldr	r1, [r7, #48]
	mov	r2, r3
	bl	pfr_bitwriter_init(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #1
	beq	.L543
	cmp	r3, #1
	bcc	.L544
	cmp	r3, #2
	beq	.L545
	b	.L542
.L544:
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	bl	pfr_bitwriter_decode_bytes(PLT)
	b	.L542
.L543:
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	bl	pfr_bitwriter_decode_rle1(PLT)
	b	.L542
.L545:
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	bl	pfr_bitwriter_decode_rle2(PLT)
	nop
.L542:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pfr_load_bitmap_bits, .-pfr_load_bitmap_bits
	.section	.text.pfr_slot_load_bitmap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pfr_slot_load_bitmap, %function
pfr_slot_load_bitmap:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #116
	add	r7, sp, #24
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #104]
	str	r3, [r7, #64]
	ldr	r3, [r7, #68]
	add	r3, r3, #288
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #100]
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L548
.L551:
	ldr	r3, [r7, #80]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #12]
	cmp	r2, r3
	bne	.L549
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #14]
	cmp	r2, r3
	bne	.L549
	nop
.L550:
	movs	r3, #4
	str	r3, [r7, #72]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L553
	b	.L573
.L549:
	ldr	r3, [r7, #80]
	adds	r3, r3, #36
	str	r3, [r7, #80]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L548:
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bhi	.L551
	movs	r3, #6
	b	.L572
.L573:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L553:
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L554
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L554:
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #8]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L555
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L555:
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #144]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #24]
	add	r3, r3, r2
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L556
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #72]
	mul	r3, r2, r3
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L556
	ldr	r3, [r7, #64]
	ldr	r0, [r3, #32]
	ldr	r3, [r7, #64]
	ldr	r1, [r3, #36]
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #8]
	ldr	r4, [r7, #56]
	ldr	r4, [r4]
	str	r4, [sp]
	add	r4, r7, #48
	str	r4, [sp, #4]
	add	r4, r7, #44
	str	r4, [sp, #8]
	bl	pfr_lookup_bitmap_data(PLT)
	ldr	r0, [r7, #64]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L557
	movs	r3, #6
	str	r3, [r7, #84]
	b	.L556
.L557:
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	beq	.L558
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	mov	r2, r3
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #16]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
.L558:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	str	r2, [r3, #56]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #12]
	lsls	r1, r3, #8
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #16]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #188]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L556
	ldr	r3, [r7, #44]
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L556
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #64]
	ldr	r1, [r3, #36]
	ldr	r2, [r7, #32]
	add	r0, r7, #16
	add	r3, r7, #40
	add	r4, r7, #36
	str	r4, [sp]
	add	r4, r7, #28
	str	r4, [sp, #4]
	add	r4, r7, #24
	str	r4, [sp, #8]
	add	r4, r7, #32
	str	r4, [sp, #12]
	add	r4, r7, #20
	str	r4, [sp, #16]
	bl	pfr_load_bitmap_metrics(PLT)
	str	r0, [r7, #84]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	beq	.L561
	cmp	r3, #1
	bcc	.L562
	cmp	r3, #2
	beq	.L563
	b	.L574
.L562:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	mul	r3, r2, r3
	adds	r3, r3, #7
	lsrs	r2, r3, #3
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bls	.L564
	movs	r3, #8
	str	r3, [r7, #84]
	b	.L565
.L564:
	b	.L565
.L561:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	mul	r1, r2, r3
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #4
	subs	r3, r3, r2
	cmp	r1, r3
	bls	.L566
	movs	r3, #8
	str	r3, [r7, #84]
	b	.L565
.L566:
	b	.L565
.L563:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	mul	r1, r2, r3
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	lsrs	r2, r3, #1
	mov	r3, r2
	lsls	r3, r3, #8
	subs	r3, r3, r2
	cmp	r1, r3
	bls	.L567
	movs	r3, #8
	str	r3, [r7, #84]
	b	.L565
.L567:
	b	.L565
.L574:
	movs	r3, #8
	str	r3, [r7, #84]
.L565:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L568
	b	.L556
.L568:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	blt	.L569
	ldr	r3, [r7, #24]
	mov	r2, r3
	movw	r3, #65535
	movt	r3, 32767
	subs	r3, r3, r2
	ldr	r2, [r7, #36]
	cmp	r3, r2
	bge	.L570
.L569:
	movs	r3, #23
	str	r3, [r7, #84]
.L570:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L571
	ldr	r2, [r7, #12]
	movw	r3, #29811
	movt	r3, 25193
	str	r3, [r2, #72]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	str	r2, [r3, #80]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #28]
	adds	r3, r3, #7
	asrs	r2, r3, #3
	ldr	r3, [r7, #12]
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #94]
	ldr	r3, [r7, #28]
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #24]
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #40]
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #36]
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #36]
	ldr	r3, [r7, #32]
	asrs	r3, r3, #2
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	negs	r3, r3
	asrs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #12]
	str	r2, [r3, #52]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #12]
	str	r2, [r3, #100]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #104]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	ldr	r2, [r7, #24]
	mul	r3, r2, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #52]
	bl	ft_glyphslot_alloc_bitmap(PLT)
	str	r0, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L571
	ldr	r0, [r7, #16]
	ldr	r3, [r7, #64]
	ldr	r1, [r3, #36]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #208]
	uxtb	r3, r3
	and	r3, r3, #2
	uxtb	r3, r3
	ldr	r4, [r7, #12]
	adds	r4, r4, #76
	str	r4, [sp]
	bl	pfr_load_bitmap_bits(PLT)
	str	r0, [r7, #84]
.L571:
	ldr	r0, [r7, #64]
	bl	FT_Stream_ExitFrame(PLT)
.L556:
	ldr	r3, [r7, #84]
.L572:
	mov	r0, r3
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	pfr_slot_load_bitmap, .-pfr_slot_load_bitmap
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
