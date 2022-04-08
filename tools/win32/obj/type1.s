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
	.file	"type1.c"
	.section	.text.read_pfb_tag,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	read_pfb_tag, %function
read_pfb_tag:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L2
	ldrh	r2, [r7, #30]
	movw	r3, #32769
	cmp	r2, r3
	beq	.L3
	ldrh	r2, [r7, #30]
	movw	r3, #32770
	cmp	r2, r3
	bne	.L4
.L3:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadULongLE(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
.L4:
	ldr	r3, [r7, #8]
	ldrh	r2, [r7, #30]	@ movhi
	strh	r2, [r3]	@ movhi
.L2:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	read_pfb_tag, .-read_pfb_tag
	.section	.text.check_type1_format,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	check_type1_format, %function
check_type1_format:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L7
	b	.L8
.L7:
	add	r2, r7, #26
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	read_pfb_tag(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L9
	b	.L8
.L9:
	ldrh	r2, [r7, #26]
	movw	r3, #32769
	cmp	r2, r3
	beq	.L10
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L10
	b	.L8
.L10:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L8
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L11
	movs	r3, #2
	str	r3, [r7, #28]
.L11:
	ldr	r0, [r7, #12]
	bl	FT_Stream_ExitFrame(PLT)
.L8:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	check_type1_format, .-check_type1_format
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%!PS-AdobeFont\000"
	.align	2
.LC2:
	.ascii	"%!FontType\000"
	.section	.text.T1_New_Parser,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_New_Parser, %function
T1_New_Parser:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r4, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #0
	ldr	r3, [r7, #4]
	blx	r4
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #72]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #80]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #88]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #92]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #93]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #94]
	ldr	r0, [r7, #8]
	ldr	r3, .L26
.LPIC0:
	add	r3, pc
	mov	r1, r3
	movs	r2, #14
	bl	check_type1_format(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	cmp	r3, #2
	beq	.L15
	b	.L16
.L15:
	ldr	r0, [r7, #8]
	ldr	r3, .L26+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #10
	bl	check_type1_format(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L14
	b	.L16
.L14:
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L17
	b	.L16
.L17:
	add	r2, r7, #26
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	read_pfb_tag(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L18
	b	.L16
.L18:
	ldrh	r2, [r7, #26]
	movw	r3, #32769
	cmp	r2, r3
	beq	.L19
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L20
	b	.L16
.L20:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	b	.L21
.L19:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #92]
.L21:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L22
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	str	r2, [r3, #80]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #93]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L23
	b	.L16
.L22:
	ldr	r3, [r7, #20]
	mov	r2, r3
	add	r3, r7, #28
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L16
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L16
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	str	r2, [r3, #80]
.L23:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
.L16:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #93]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L24
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #76]
.L24:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L27:
	.align	2
.L26:
	.word	.LC1-(.LPIC0+4)
	.word	.LC2-(.LPIC1+4)
	.size	T1_New_Parser, .-T1_New_Parser
	.section	.text.T1_Finalize_Parser,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Finalize_Parser, %function
T1_Finalize_Parser:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #93]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L29
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
.L29:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #4]
	mov	r0, r2
	blx	r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T1_Finalize_Parser, .-T1_Finalize_Parser
	.section	.text.T1_Get_Private_Dict,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Get_Private_Dict, %function
T1_Get_Private_Dict:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #92]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L31
	ldr	r0, [r7, #44]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
.L37:
	add	r2, r7, #18
	add	r3, r7, #20
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	read_pfb_tag(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L32
	b	.L78
.L32:
	ldrh	r2, [r7, #18]
	movw	r3, #32770
	cmp	r2, r3
	beq	.L34
	nop
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L38
	b	.L76
.L34:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L36
	b	.L74
.L36:
	b	.L37
.L76:
	movs	r3, #3
	str	r3, [r7, #24]
	b	.L74
.L38:
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #36]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L78
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	mov	r2, r3
	add	r3, r7, #24
	ldr	r0, [r7, #40]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L78
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
.L43:
	add	r2, r7, #18
	add	r3, r7, #20
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	read_pfb_tag(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L39
	ldrh	r2, [r7, #18]
	movw	r3, #32770
	cmp	r2, r3
	beq	.L40
.L39:
	movs	r3, #0
	str	r3, [r7, #24]
	nop
	b	.L44
.L40:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L42
	nop
	b	.L74
.L42:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	b	.L43
.L31:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #48]
.L46:
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L47
	ldr	r3, [r7, #52]
	add	r2, r3, #9
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L47
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L47
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #120
	bne	.L47
	ldr	r3, [r7, #52]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L47
	ldr	r3, [r7, #52]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L47
	nop
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #52]
	add	r2, r3, #10
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #48]
	b	.L50
.L47:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L49
	movs	r3, #3
	str	r3, [r7, #24]
	b	.L74
.L49:
	b	.L46
.L55:
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L51
	ldr	r3, [r7, #52]
	adds	r2, r3, #5
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L51
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L51
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #120
	bne	.L51
	ldr	r3, [r7, #52]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L51
	ldr	r3, [r7, #52]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L51
	nop
.L52:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #4]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #48]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	ldr	r0, [r7, #52]
	movs	r1, #10
	mov	r2, r3
	bl	memchr(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L57
	b	.L77
.L51:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #4]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L53
	b	.L54
.L53:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #4]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #52]
.L50:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L55
.L54:
	ldr	r3, [r7, #48]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #80]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L56
	movs	r3, #3
	str	r3, [r7, #24]
	b	.L74
.L56:
	b	.L46
.L77:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	ldr	r0, [r7, #52]
	movs	r1, #13
	mov	r2, r3
	bl	memchr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcs	.L58
.L57:
	movs	r3, #1
	b	.L59
.L58:
	movs	r3, #0
.L59:
	strb	r3, [r7, #31]
	b	.L60
.L62:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L60:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L61
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L62
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L62
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L62
.L63:
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L62
.L61:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L64
	movs	r3, #3
	str	r3, [r7, #24]
	b	.L74
.L64:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	mov	r1, r3
	ldr	r3, [r7, #52]
	subs	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #93]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L65
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #24
	ldr	r0, [r7, #40]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L66
	b	.L74
.L66:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	b	.L67
.L65:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #94]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #4]
	str	r2, [r3, #84]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #80]
.L67:
	ldr	r3, [r7, #52]
	adds	r2, r3, #3
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L68
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L69
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #97
	cmp	r3, #5
	bls	.L69
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #65
	cmp	r3, #5
	bhi	.L68
.L69:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L70
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #97
	cmp	r3, #5
	bls	.L70
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #65
	cmp	r3, #5
	bhi	.L68
.L70:
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L71
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #97
	cmp	r3, #5
	bls	.L71
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #65
	cmp	r3, #5
	bhi	.L68
.L71:
	ldr	r3, [r7, #52]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L72
	ldr	r3, [r7, #52]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #97
	cmp	r3, #5
	bls	.L72
	ldr	r3, [r7, #52]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #65
	cmp	r3, #5
	bhi	.L68
.L72:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r4, [r3, #24]
	ldr	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #84]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	add	r3, r7, #12
	movs	r5, #0
	str	r5, [sp]
	blx	r4
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	b	.L44
.L68:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #20]
	mov	r0, r2
	ldr	r1, [r7, #52]
	mov	r2, r3
	bl	memmove(PLT)
.L44:
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #84]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #88]
	mov	r0, r1
	mov	r1, r2
	movw	r2, #55665
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	cmp	r3, #3
	bhi	.L73
	movs	r3, #3
	str	r3, [r7, #24]
	b	.L74
.L73:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	movs	r2, #32
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	adds	r3, r3, #1
	movs	r2, #32
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	adds	r3, r3, #2
	movs	r2, #32
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	adds	r3, r3, #3
	movs	r2, #32
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L74
.L45:
.L78:
	nop
.L74:
	ldr	r3, [r7, #24]
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	T1_Get_Private_Dict, .-T1_Get_Private_Dict
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
	.section	.text.t1_allocate_blend,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_allocate_blend, %function
t1_allocate_blend:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #528]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L82
	add	r3, r7, #20
	ldr	r0, [r7, #24]
	mov	r1, #420
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L83
	b	.L84
.L83:
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #416]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #528]
.L82:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L85
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L86
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #32
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #148]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #196
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #216]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #288]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #136]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #136]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #140]
	ldr	r3, [r7, #12]
	add	r2, r3, #132
	ldr	r3, [r7, #36]
	str	r2, [r3, #144]
	ldr	r3, [r7, #12]
	add	r2, r3, #168
	ldr	r3, [r7, #36]
	str	r2, [r3, #212]
	ldr	r3, [r7, #12]
	add	r2, r3, #460
	ldr	r3, [r7, #36]
	str	r2, [r3, #284]
	movs	r3, #2
	str	r3, [r7, #32]
	b	.L87
.L88:
	ldr	r3, [r7, #32]
	subs	r2, r3, #1
	ldr	r3, [r7, #36]
	adds	r2, r2, #36
	ldr	r3, [r3, r2, lsl #2]
	add	r1, r3, #32
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #32]
	adds	r2, r2, #36
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldr	r2, [r7, #36]
	adds	r3, r3, #52
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	add	r2, r3, #196
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #52
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldr	r2, [r7, #36]
	adds	r3, r3, #70
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	add	r2, r3, #16
	ldr	r1, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #70
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r2, [r3, #4]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L87:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L88
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	b	.L85
.L86:
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L85
	b	.L89
.L85:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L90
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L91
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	beq	.L91
	b	.L89
.L91:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
.L90:
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L84
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	mul	r3, r2, r3
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L92
	b	.L84
.L92:
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L93
.L94:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r1, [r7, #28]
	mul	r3, r1, r3
	lsls	r3, r3, #2
	adds	r1, r2, r3
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #28]
	adds	r2, r2, #6
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L93:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L94
.L84:
	ldr	r3, [r7, #20]
	b	.L96
.L89:
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L84
.L96:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_allocate_blend, .-t1_allocate_blend
	.section	.text.T1_Get_Multi_Master,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Get_Multi_Master, %function
T1_Get_Multi_Master:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	str	r3, [r7, #20]
	movs	r3, #6
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L98
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L99
.L100:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #8
	ldr	r2, [r7]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #88
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #28]
	adds	r2, r2, #2
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L99:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L100
	movs	r3, #0
	str	r3, [r7, #24]
.L98:
	ldr	r3, [r7, #24]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	T1_Get_Multi_Master, .-T1_Get_Multi_Master
	.section	.text.mm_axis_unmap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	mm_axis_unmap, %function
mm_axis_unmap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L103
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	b	.L104
.L103:
	movs	r3, #1
	str	r3, [r7, #12]
	b	.L105
.L107:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L106
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	lsls	r4, r3, #16
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r5, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r0
	ldr	r3, [r3]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r3, r0
	mul	r3, r3, r5
	add	r3, r3, r4
	b	.L104
.L106:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L105:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L107
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	lsls	r3, r3, #16
.L104:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	mm_axis_unmap, .-mm_axis_unmap
	.section	.text.mm_weights_unmap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	mm_weights_unmap, %function
mm_weights_unmap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L109
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	b	.L108
.L109:
	ldr	r3, [r7, #4]
	cmp	r3, #2
	bne	.L111
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	adds	r2, r2, #8
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	b	.L108
.L111:
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bne	.L112
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	ldr	r2, [r7, #12]
	adds	r2, r2, #28
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	adds	r2, r2, #24
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #8
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #8
	ldr	r2, [r7, #12]
	adds	r2, r2, #28
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	adds	r2, r2, #24
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #20
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #16
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	b	.L108
.L112:
	ldr	r3, [r7, #12]
	adds	r3, r3, #60
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #52
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #36
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	ldr	r2, [r7, #12]
	adds	r2, r2, #60
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	adds	r2, r2, #56
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #44
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #40
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #28
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #24
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #12
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #8
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #8
	ldr	r2, [r7, #12]
	adds	r2, r2, #60
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	adds	r2, r2, #56
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #52
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #48
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #28
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #24
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #20
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #16
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #12
	ldr	r2, [r7, #12]
	adds	r2, r2, #60
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	adds	r2, r2, #56
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #52
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #48
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #44
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #40
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #36
	ldr	r2, [r2]
	add	r1, r1, r2
	ldr	r2, [r7, #12]
	adds	r2, r2, #32
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3]
.L108:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mm_weights_unmap, .-mm_weights_unmap
	.section	.rodata
	.align	2
.LC3:
	.ascii	"Weight\000"
	.align	2
.LC4:
	.ascii	"Width\000"
	.align	2
.LC5:
	.ascii	"OpticalSize\000"
	.section	.text.T1_Get_MM_Var,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Get_MM_Var, %function
T1_Get_MM_Var:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #108
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	str	r3, [r7, #88]
	add	r3, r7, #32
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	T1_Get_Multi_Master(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L114
	b	.L115
.L114:
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r3, #20
	mov	r2, r3
	add	r3, r7, #28
	ldr	r0, [r7, #96]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L116
	b	.L115
.L116:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #92]
	str	r2, [r3]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #92]
	str	r2, [r3, #4]
	ldr	r3, [r7, #92]
	mov	r2, #-1
	str	r2, [r3, #8]
	ldr	r3, [r7, #92]
	add	r2, r3, #20
	ldr	r3, [r7, #92]
	str	r2, [r3, #12]
	ldr	r3, [r7, #92]
	movs	r2, #0
	str	r2, [r3, #16]
	movs	r3, #0
	str	r3, [r7, #100]
	b	.L117
.L122:
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r1, r1, r3
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	subs	r3, r3, #64
	ldr	r3, [r3]
	str	r3, [r1]
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r1, r1, r3
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	subs	r3, r3, #64
	ldr	r3, [r3, #4]
	lsls	r3, r3, #16
	str	r3, [r1, #4]
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r1, r1, r3
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r7, #104
	add	r3, r3, r2
	subs	r3, r3, #56
	ldr	r3, [r3]
	lsls	r3, r3, #16
	str	r3, [r1, #12]
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r1, r1, r3
	ldr	r3, [r7, #92]
	ldr	r0, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r0
	ldr	r0, [r3, #4]
	ldr	r3, [r7, #92]
	ldr	r4, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r4
	ldr	r3, [r3, #12]
	add	r3, r3, r0
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r1, #8]
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r2, #-1
	str	r2, [r3, #20]
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	mov	r2, #-1
	str	r2, [r3, #16]
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L118
	b	.L119
.L118:
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L127
.LPIC2:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L120
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	adds	r2, r1, r3
	movw	r3, #26740
	movt	r3, 30567
	str	r3, [r2, #16]
	b	.L119
.L120:
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L127+4
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L121
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	adds	r2, r1, r3
	movw	r3, #29800
	movt	r3, 30564
	str	r3, [r2, #16]
	b	.L119
.L121:
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L127+8
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L119
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	adds	r2, r1, r3
	movw	r3, #29562
	movt	r3, 28528
	str	r3, [r2, #16]
.L119:
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
.L117:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bhi	.L122
	ldr	r3, [r7, #88]
	ldr	r2, [r3]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #4]
	movs	r1, #1
	lsl	r3, r1, r3
	cmp	r2, r3
	bne	.L123
	ldr	r3, [r7, #88]
	ldr	r1, [r3, #140]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #4]
	add	r2, r7, #12
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	mm_weights_unmap(PLT)
	movs	r3, #0
	str	r3, [r7, #100]
	b	.L124
.L125:
	ldr	r3, [r7, #92]
	ldr	r1, [r3, #12]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	adds	r4, r1, r3
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #88
	ldr	r2, [r7, #88]
	add	r2, r2, r3
	ldr	r3, [r7, #100]
	lsls	r3, r3, #2
	add	r1, r7, #104
	add	r3, r3, r1
	ldr	r3, [r3, #-92]
	mov	r0, r2
	mov	r1, r3
	bl	mm_axis_unmap(PLT)
	mov	r3, r0
	str	r3, [r4, #8]
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
.L124:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bhi	.L125
.L123:
	ldr	r3, [r7]
	ldr	r2, [r7, #92]
	str	r2, [r3]
.L115:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #108
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L128:
	.align	2
.L127:
	.word	.LC3-(.LPIC2+4)
	.word	.LC4-(.LPIC3+4)
	.word	.LC5-(.LPIC4+4)
	.size	T1_Get_MM_Var, .-T1_Get_MM_Var
	.section	.text.T1_Set_MM_Blend,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Set_MM_Blend, %function
T1_Set_MM_Blend:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #528]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L130
	movs	r3, #6
	b	.L131
.L130:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L132
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
.L132:
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L133
.L141:
	mov	r3, #65536
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L134
.L140:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L135
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	b	.L136
.L135:
	mov	r3, #32768
.L136:
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L137
	movs	r3, #0
	str	r3, [r7, #24]
.L137:
	ldr	r3, [r7, #24]
	cmp	r3, #65536
	ble	.L138
	mov	r3, #65536
	str	r3, [r7, #24]
.L138:
	ldr	r3, [r7, #32]
	movs	r2, #1
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #36]
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L139
	ldr	r3, [r7, #24]
	rsb	r3, r3, #65536
	str	r3, [r7, #24]
.L139:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #24]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L134:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bhi	.L140
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #136]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L133:
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L141
	movs	r3, #0
.L131:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T1_Set_MM_Blend, .-T1_Set_MM_Blend
	.section	.text.T1_Set_MM_Design,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Set_MM_Design, %function
T1_Set_MM_Design:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #132
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #528]
	str	r3, [r7, #100]
	ldr	r3, [r7, #100]
	cmp	r3, #0
	bne	.L143
	movs	r3, #6
	b	.L158
.L143:
	ldr	r3, [r7, #100]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L145
	ldr	r3, [r7, #100]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
.L145:
	movs	r3, #0
	str	r3, [r7, #124]
	b	.L146
.L157:
	ldr	r2, [r7, #124]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #88
	ldr	r2, [r7, #100]
	add	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #4]
	str	r3, [r7, #92]
	ldr	r3, [r7, #96]
	ldr	r3, [r3, #8]
	str	r3, [r7, #88]
	mov	r3, #-1
	str	r3, [r7, #108]
	mov	r3, #-1
	str	r3, [r7, #104]
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L147
	ldr	r3, [r7, #124]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #116]
	b	.L148
.L147:
	ldr	r3, [r7, #96]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #92]
	ldr	r3, [r3]
	subs	r3, r2, r3
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #116]
.L148:
	movs	r3, #0
	str	r3, [r7, #120]
	b	.L149
.L154:
	ldr	r3, [r7, #120]
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #84]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bne	.L150
	ldr	r3, [r7, #120]
	lsls	r3, r3, #2
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #112]
	b	.L151
.L150:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bge	.L152
	ldr	r3, [r7, #120]
	str	r3, [r7, #104]
	b	.L153
.L152:
	ldr	r3, [r7, #120]
	str	r3, [r7, #108]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
.L149:
	ldr	r3, [r7, #96]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bhi	.L154
.L153:
	ldr	r3, [r7, #108]
	cmp	r3, #0
	bge	.L155
	ldr	r3, [r7, #88]
	ldr	r3, [r3]
	str	r3, [r7, #112]
	b	.L151
.L155:
	ldr	r3, [r7, #104]
	cmp	r3, #0
	bge	.L156
	ldr	r3, [r7, #96]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #112]
	b	.L151
.L156:
	ldr	r3, [r7, #108]
	lsls	r3, r3, #2
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #116]
	subs	r1, r2, r3
	ldr	r3, [r7, #104]
	lsls	r3, r3, #2
	ldr	r2, [r7, #88]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #108]
	lsls	r3, r3, #2
	ldr	r0, [r7, #88]
	add	r3, r3, r0
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #104]
	lsls	r3, r3, #2
	ldr	r0, [r7, #92]
	add	r3, r3, r0
	ldr	r0, [r3]
	ldr	r3, [r7, #108]
	lsls	r3, r3, #2
	ldr	r4, [r7, #92]
	add	r3, r3, r4
	ldr	r3, [r3]
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #112]
.L151:
	ldr	r3, [r7, #124]
	lsls	r3, r3, #2
	add	r2, r7, #128
	add	r3, r3, r2
	ldr	r2, [r7, #112]
	str	r2, [r3, #-108]
	ldr	r3, [r7, #124]
	adds	r3, r3, #1
	str	r3, [r7, #124]
.L146:
	ldr	r3, [r7, #100]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #124]
	cmp	r2, r3
	bhi	.L157
	ldr	r3, [r7, #100]
	ldr	r2, [r3, #4]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	T1_Set_MM_Blend(PLT)
	mov	r3, r0
.L158:
	mov	r0, r3
	adds	r7, r7, #132
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	T1_Set_MM_Design, .-T1_Set_MM_Design
	.section	.text.T1_Set_Var_Design,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Set_Var_Design, %function
T1_Set_Var_Design:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #4
	bls	.L160
	movs	r3, #4
	str	r3, [r7, #8]
.L160:
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L161
.L162:
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r1, r7, #40
	add	r3, r3, r1
	str	r2, [r3, #-20]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L161:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L162
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	T1_Set_MM_Design(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T1_Set_Var_Design, .-T1_Set_Var_Design
	.section	.text.T1_Done_Blend,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Done_Blend, %function
T1_Done_Blend:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L164
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #24]
	movs	r3, #1
	str	r3, [r7, #28]
	b	.L166
.L167:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #28]
	adds	r2, r2, #6
	movs	r1, #0
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L166:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L167
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #216]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #216]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #148]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #148]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #288]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #288]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L168
.L169:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	adds	r3, r3, #52
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #28]
	adds	r2, r2, #36
	movs	r1, #0
	str	r1, [r3, r2, lsl #2]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	adds	r3, r3, #70
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L168:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L169
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #136]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #140]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L170
.L171:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #28]
	adds	r2, r2, #2
	ldr	r3, [r3, r2, lsl #2]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #28]
	adds	r2, r2, #2
	movs	r1, #0
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L170:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L171
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L172
.L173:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #88
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L172:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L173
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #528]
.L164:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T1_Done_Blend, .-T1_Done_Blend
	.section	.text.parse_blend_axis_types,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_blend_axis_types, %function
parse_blend_axis_types:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r4, [r3, #60]
	ldr	r1, [r7]
	add	r2, r7, #16
	add	r3, r7, #12
	mov	r0, r1
	mov	r1, r2
	movs	r2, #4
	blx	r4
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bge	.L175
	movs	r3, #162
	str	r3, [r7, #8]
	b	.L176
.L175:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L177
	ldr	r3, [r7, #12]
	cmp	r3, #4
	ble	.L178
.L177:
	movs	r3, #3
	str	r3, [r7, #8]
	b	.L176
.L178:
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #4]
	movs	r1, #0
	mov	r2, r3
	bl	t1_allocate_blend(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L179
	b	.L176
.L179:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	str	r3, [r7, #80]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L180
.L185:
	ldr	r2, [r7, #84]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r7, #16
	add	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L181
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #72]
	str	r2, [r3]
.L181:
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L182
	movs	r3, #3
	str	r3, [r7, #8]
	b	.L176
.L182:
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #84]
	adds	r2, r2, #2
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L183
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #64]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #64]
.L183:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #8
	ldr	r0, [r7, #76]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r1, r0
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #84]
	adds	r2, r2, #2
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L184
	b	.L176
.L184:
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #84]
	adds	r2, r2, #2
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #64]
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	ldr	r0, [r7, #64]
	mov	r1, r3
	ldr	r2, [r7, #68]
	bl	memcpy(PLT)
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L180:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #84]
	cmp	r2, r3
	blt	.L185
.L176:
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	str	r2, [r3, #12]
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	parse_blend_axis_types, .-parse_blend_axis_types
	.section	.text.parse_blend_design_positions,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_blend_design_positions, %function
parse_blend_design_positions:
	@ args = 0, pretend = 0, frame = 296
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #300
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r3, r7
	str	r1, [r3]
	mov	r3, r7
	ldr	r3, [r3]
	str	r3, [r7, #272]
	movs	r3, #0
	str	r3, [r7, #288]
	ldr	r3, [r7, #272]
	ldr	r4, [r3, #60]
	ldr	r1, [r7, #272]
	add	r2, r7, #64
	add	r3, r7, #60
	mov	r0, r1
	mov	r1, r2
	movs	r2, #16
	blx	r4
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bge	.L187
	movs	r3, #162
	str	r3, [r7, #288]
	b	.L188
.L187:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L189
	ldr	r3, [r7, #60]
	cmp	r3, #16
	ble	.L190
.L189:
	movs	r3, #3
	str	r3, [r7, #288]
	b	.L188
.L190:
	ldr	r3, [r7, #272]
	ldr	r3, [r3]
	str	r3, [r7, #268]
	ldr	r3, [r7, #272]
	ldr	r3, [r3, #8]
	str	r3, [r7, #264]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	str	r3, [r7, #284]
	movs	r3, #0
	str	r3, [r7, #292]
	movs	r3, #0
	str	r3, [r7, #280]
	b	.L191
.L200:
	ldr	r2, [r7, #280]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r7, #64
	add	r3, r3, r2
	str	r3, [r7, #260]
	ldr	r3, [r7, #260]
	ldr	r2, [r3]
	ldr	r3, [r7, #272]
	str	r2, [r3]
	ldr	r3, [r7, #260]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #272]
	str	r2, [r3, #8]
	ldr	r3, [r7, #272]
	ldr	r4, [r3, #60]
	ldr	r1, [r7, #272]
	add	r2, r7, #8
	add	r3, r7, #56
	mov	r0, r1
	mov	r1, r2
	movs	r2, #4
	blx	r4
	ldr	r3, [r7, #280]
	cmp	r3, #0
	bne	.L192
	ldr	r3, [r7, #56]
	cmp	r3, #0
	ble	.L193
	ldr	r3, [r7, #56]
	cmp	r3, #4
	ble	.L194
.L193:
	movs	r3, #3
	str	r3, [r7, #288]
	b	.L188
.L194:
	ldr	r3, [r7, #56]
	str	r3, [r7, #292]
	ldr	r3, [r7, #60]
	mov	r2, r3
	ldr	r3, [r7, #292]
	adds	r1, r7, #4
	ldr	r0, [r1]
	mov	r1, r2
	mov	r2, r3
	bl	t1_allocate_blend(PLT)
	str	r0, [r7, #288]
	ldr	r3, [r7, #288]
	cmp	r3, #0
	beq	.L196
	b	.L188
.L196:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	str	r3, [r7, #284]
	b	.L197
.L192:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #292]
	cmp	r2, r3
	beq	.L197
	movs	r3, #3
	str	r3, [r7, #288]
	nop
	b	.L188
.L197:
	movs	r3, #0
	str	r3, [r7, #276]
	b	.L198
.L199:
	ldr	r2, [r7, #276]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r7, #8
	add	r3, r3, r2
	str	r3, [r7, #256]
	ldr	r3, [r7, #256]
	ldr	r2, [r3]
	ldr	r3, [r7, #272]
	str	r2, [r3]
	ldr	r3, [r7, #256]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #272]
	str	r2, [r3, #8]
	ldr	r3, [r7, #284]
	ldr	r2, [r7, #280]
	adds	r2, r2, #6
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [r7, #276]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r3, [r7, #272]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #272]
	mov	r0, r2
	movs	r1, #0
	blx	r3
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #276]
	adds	r3, r3, #1
	str	r3, [r7, #276]
.L198:
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #276]
	cmp	r2, r3
	blt	.L199
	ldr	r3, [r7, #280]
	adds	r3, r3, #1
	str	r3, [r7, #280]
.L191:
	ldr	r3, [r7, #60]
	ldr	r2, [r7, #280]
	cmp	r2, r3
	blt	.L200
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r2, [r7, #268]
	str	r2, [r3]
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r2, [r7, #264]
	str	r2, [r3, #8]
.L188:
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r2, [r7, #288]
	str	r2, [r3, #12]
	add	r7, r7, #300
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	parse_blend_design_positions, .-parse_blend_design_positions
	.section	.text.parse_blend_design_map,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_blend_design_map, %function
parse_blend_design_map:
	@ args = 0, pretend = 0, frame = 352
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #364
	add	r7, sp, #8
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r3, r7
	str	r1, [r3]
	movs	r3, #0
	str	r3, [r7, #308]
	mov	r3, r7
	ldr	r3, [r3]
	str	r3, [r7, #340]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #100]
	str	r3, [r7, #336]
	ldr	r3, [r7, #340]
	ldr	r4, [r3, #60]
	ldr	r1, [r7, #340]
	add	r2, r7, #260
	add	r3, r7, #256
	mov	r0, r1
	mov	r1, r2
	movs	r2, #4
	blx	r4
	ldr	r3, [r7, #256]
	cmp	r3, #0
	bge	.L202
	movs	r3, #162
	str	r3, [r7, #308]
	b	.L203
.L202:
	ldr	r3, [r7, #256]
	cmp	r3, #0
	beq	.L204
	ldr	r3, [r7, #256]
	cmp	r3, #4
	ble	.L205
.L204:
	movs	r3, #3
	str	r3, [r7, #308]
	b	.L203
.L205:
	ldr	r3, [r7, #340]
	ldr	r3, [r3]
	str	r3, [r7, #332]
	ldr	r3, [r7, #340]
	ldr	r3, [r3, #8]
	str	r3, [r7, #328]
	ldr	r3, [r7, #256]
	adds	r2, r7, #4
	ldr	r0, [r2]
	movs	r1, #0
	mov	r2, r3
	bl	t1_allocate_blend(PLT)
	mov	r3, r0
	str	r3, [r7, #308]
	ldr	r3, [r7, #308]
	cmp	r3, #0
	beq	.L206
	b	.L203
.L206:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	str	r3, [r7, #324]
	movs	r3, #0
	str	r3, [r7, #348]
	b	.L207
.L215:
	ldr	r2, [r7, #348]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #88
	ldr	r2, [r7, #324]
	add	r3, r3, r2
	str	r3, [r7, #320]
	ldr	r2, [r7, #348]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r7, #260
	add	r3, r3, r2
	str	r3, [r7, #316]
	ldr	r3, [r7, #316]
	ldr	r2, [r3]
	ldr	r3, [r7, #340]
	str	r2, [r3]
	ldr	r3, [r7, #316]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #340]
	str	r2, [r3, #8]
	ldr	r3, [r7, #340]
	ldr	r4, [r3, #60]
	ldr	r1, [r7, #340]
	add	r2, r7, #12
	add	r3, r7, #252
	mov	r0, r1
	mov	r1, r2
	movs	r2, #20
	blx	r4
	ldr	r3, [r7, #252]
	cmp	r3, #0
	ble	.L208
	ldr	r3, [r7, #252]
	cmp	r3, #20
	ble	.L209
.L208:
	movs	r3, #3
	str	r3, [r7, #308]
	b	.L203
.L209:
	ldr	r3, [r7, #320]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L211
	movs	r3, #3
	str	r3, [r7, #308]
	b	.L203
.L211:
	ldr	r3, [r7, #252]
	lsls	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #308
	str	r2, [sp, #4]
	ldr	r0, [r7, #336]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #320]
	str	r2, [r3, #4]
	ldr	r3, [r7, #308]
	cmp	r3, #0
	beq	.L212
	nop
	b	.L203
.L212:
	ldr	r3, [r7, #320]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #252]
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #320]
	str	r2, [r3, #8]
	ldr	r3, [r7, #252]
	uxtb	r2, r3
	ldr	r3, [r7, #320]
	strb	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #344]
	b	.L213
.L214:
	ldr	r2, [r7, #344]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r7, #12
	add	r3, r3, r2
	str	r3, [r7, #312]
	ldr	r3, [r7, #312]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #340]
	str	r2, [r3]
	ldr	r3, [r7, #312]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #340]
	str	r2, [r3, #8]
	ldr	r3, [r7, #320]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #344]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r3, [r7, #340]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #340]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #320]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #344]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r3, [r7, #340]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #340]
	mov	r0, r2
	movs	r1, #0
	blx	r3
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #344]
	adds	r3, r3, #1
	str	r3, [r7, #344]
.L213:
	ldr	r3, [r7, #252]
	ldr	r2, [r7, #344]
	cmp	r2, r3
	blt	.L214
	ldr	r3, [r7, #348]
	adds	r3, r3, #1
	str	r3, [r7, #348]
.L207:
	ldr	r3, [r7, #256]
	ldr	r2, [r7, #348]
	cmp	r2, r3
	blt	.L215
	ldr	r3, [r7, #340]
	ldr	r2, [r7, #332]
	str	r2, [r3]
	ldr	r3, [r7, #340]
	ldr	r2, [r7, #328]
	str	r2, [r3, #8]
.L203:
	ldr	r2, [r7, #308]
	ldr	r3, [r7, #340]
	str	r2, [r3, #12]
	add	r7, r7, #356
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	parse_blend_design_map, .-parse_blend_design_map
	.section	.text.parse_weight_vector,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_weight_vector, %function
parse_weight_vector:
	@ args = 0, pretend = 0, frame = 232
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #232
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #228]
	ldr	r3, [r7]
	str	r3, [r7, #216]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	str	r3, [r7, #224]
	ldr	r3, [r7, #216]
	ldr	r4, [r3, #60]
	ldr	r1, [r7, #216]
	add	r2, r7, #12
	add	r3, r7, #8
	mov	r0, r1
	mov	r1, r2
	movs	r2, #16
	blx	r4
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L217
	movs	r3, #162
	str	r3, [r7, #228]
	b	.L218
.L217:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L219
	ldr	r3, [r7, #8]
	cmp	r3, #16
	ble	.L220
.L219:
	movs	r3, #3
	str	r3, [r7, #228]
	b	.L218
.L220:
	ldr	r3, [r7, #224]
	cmp	r3, #0
	beq	.L221
	ldr	r3, [r7, #224]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L222
.L221:
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	t1_allocate_blend(PLT)
	str	r0, [r7, #228]
	ldr	r3, [r7, #228]
	cmp	r3, #0
	beq	.L223
	b	.L218
.L223:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #528]
	str	r3, [r7, #224]
	b	.L224
.L222:
	ldr	r3, [r7, #224]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L224
	movs	r3, #3
	str	r3, [r7, #228]
	b	.L218
.L224:
	ldr	r3, [r7, #216]
	ldr	r3, [r3]
	str	r3, [r7, #212]
	ldr	r3, [r7, #216]
	ldr	r3, [r3, #8]
	str	r3, [r7, #208]
	movs	r3, #0
	str	r3, [r7, #220]
	b	.L225
.L226:
	ldr	r2, [r7, #220]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r7, #12
	add	r3, r3, r2
	str	r3, [r7, #204]
	ldr	r3, [r7, #204]
	ldr	r2, [r3]
	ldr	r3, [r7, #216]
	str	r2, [r3]
	ldr	r3, [r7, #204]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #216]
	str	r2, [r3, #8]
	ldr	r3, [r7, #224]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #220]
	lsls	r3, r3, #2
	adds	r5, r2, r3
	ldr	r3, [r7, #224]
	ldr	r2, [r3, #136]
	ldr	r3, [r7, #220]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r3, [r7, #216]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #216]
	mov	r0, r2
	movs	r1, #0
	blx	r3
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r4]
	str	r3, [r5]
	ldr	r3, [r7, #220]
	adds	r3, r3, #1
	str	r3, [r7, #220]
.L225:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #220]
	cmp	r2, r3
	blt	.L226
	ldr	r3, [r7, #216]
	ldr	r2, [r7, #212]
	str	r2, [r3]
	ldr	r3, [r7, #216]
	ldr	r2, [r7, #208]
	str	r2, [r3, #8]
.L218:
	ldr	r3, [r7, #216]
	ldr	r2, [r7, #228]
	str	r2, [r3, #12]
	adds	r7, r7, #232
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	parse_weight_vector, .-parse_weight_vector
	.section	.text.parse_buildchar,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_buildchar, %function
parse_buildchar:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r4, [r3, #52]
	ldr	r3, [r7]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #0
	movs	r3, #0
	blx	r4
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #540]
	nop
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	parse_buildchar, .-parse_buildchar
	.section	.text.t1_load_keyword,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_load_keyword, %function
t1_load_keyword:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #528]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L230
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L230
	movs	r3, #0
	str	r3, [r7, #24]
.L230:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #11
	bne	.L231
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	blx	r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #36]
	b	.L232
.L231:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r3, r3, #2
	cmp	r3, #6
	bhi	.L233
	adr	r1, .L235
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L235:
	.word	.L234+1-.L235
	.word	.L236+1-.L235
	.word	.L237+1-.L235
	.word	.L238+1-.L235
	.word	.L239+1-.L235
	.word	.L240+1-.L235
	.word	.L241+1-.L235
.L236:
	ldr	r3, [r7, #12]
	adds	r3, r3, #132
	str	r3, [r7, #20]
	add	r3, r7, #20
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L242
	ldr	r3, [r7, #24]
	adds	r3, r3, #144
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	b	.L243
.L242:
	b	.L243
.L234:
	ldr	r3, [r7, #12]
	adds	r3, r3, #164
	str	r3, [r7, #20]
	add	r3, r7, #20
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L243
.L237:
	ldr	r3, [r7, #12]
	adds	r3, r3, #168
	str	r3, [r7, #20]
	add	r3, r7, #20
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L244
	ldr	r3, [r7, #24]
	adds	r3, r3, #212
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	b	.L243
.L244:
	b	.L243
.L238:
	ldr	r3, [r7, #12]
	add	r3, r3, #460
	str	r3, [r7, #20]
	add	r3, r7, #20
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L245
	ldr	r3, [r7, #24]
	add	r3, r3, #284
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	b	.L243
.L245:
	b	.L243
.L239:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	add	r3, r7, #20
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L243
.L240:
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	add	r3, r7, #20
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L243
.L241:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #528]
	str	r3, [r7, #20]
	add	r3, r7, #20
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L243
.L233:
	ldr	r3, [r7, #12]
	adds	r3, r3, #132
	str	r3, [r7, #20]
	add	r3, r7, #20
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
.L243:
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L246
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #9
	beq	.L247
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #10
	bne	.L248
.L247:
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #68]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	blx	r4
	str	r0, [r7, #36]
	b	.L232
.L248:
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #64]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	blx	r4
	str	r0, [r7, #36]
	b	.L232
.L246:
	movs	r3, #0
	str	r3, [r7, #36]
.L232:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	t1_load_keyword, .-t1_load_keyword
	.section	.text.parse_private,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_private, %function
parse_private:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #372]
	orr	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3, #372]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	parse_private, .-parse_private
	.section	.text.read_binary_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	read_binary_data, %function
read_binary_data:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L253
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bhi	.L253
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	blt	.L253
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L253
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L254
.L253:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L255
	ldr	r3, [r7, #12]
	movs	r2, #3
	str	r2, [r3, #12]
.L255:
	movs	r3, #0
.L254:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	read_binary_data, .-read_binary_data
	.section	.text.t1_parse_font_matrix,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_parse_font_matrix, %function
t1_parse_font_matrix:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	add	r3, r3, #436
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	add	r3, r3, #452
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	str	r3, [r7, #40]
	ldr	r3, [r7, #52]
	ldr	r4, [r3, #52]
	ldr	r2, [r7, #52]
	add	r3, r7, #8
	mov	r0, r2
	movs	r1, #6
	mov	r2, r3
	movs	r3, #3
	blx	r4
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #5
	bgt	.L257
	ldr	r3, [r7, #52]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L256
.L257:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L259
	ldr	r3, [r7, #52]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L256
.L259:
	ldr	r3, [r7, #32]
	cmp	r3, #65536
	beq	.L260
	mov	r0, #1000
	ldr	r1, [r7, #32]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7, #40]
	strh	r2, [r3, #68]	@ movhi
	ldr	r3, [r7, #8]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L261
	movs	r3, #0
	movt	r3, 65535
	b	.L262
.L261:
	mov	r3, #65536
.L262:
	str	r3, [r7, #20]
.L260:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #48]
	str	r2, [r3]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #48]
	str	r2, [r3, #8]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #48]
	str	r2, [r3, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #48]
	str	r2, [r3, #12]
	ldr	r3, [r7, #24]
	asrs	r2, r3, #16
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	asrs	r2, r3, #16
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
.L256:
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	t1_parse_font_matrix, .-t1_parse_font_matrix
	.section	.rodata
	.align	2
.LC6:
	.ascii	".notdef\000"
	.align	2
.LC7:
	.ascii	"StandardEncoding\000"
	.align	2
.LC8:
	.ascii	"ExpertEncoding\000"
	.align	2
.LC9:
	.ascii	"ISOLatin1Encoding\000"
	.section	.text.parse_encoding,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_encoding, %function
parse_encoding:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #488]
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L265
	ldr	r3, [r7, #40]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L264
.L265:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L267
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	bne	.L268
.L267:
	ldr	r3, [r7, #4]
	add	r3, r3, #372
	str	r3, [r7, #28]
	ldr	r3, [r7]
	adds	r3, r3, #100
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	movs	r3, #0
	strb	r3, [r7, #51]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	bne	.L269
	mov	r3, #256
	str	r3, [r7, #56]
	movs	r3, #1
	strb	r3, [r7, #51]
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #40]
	str	r2, [r3]
	b	.L270
.L269:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #56]
.L270:
	ldr	r3, [r7, #56]
	cmp	r3, #256
	ble	.L271
	ldr	r3, [r7, #40]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L264
.L271:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L273
	b	.L264
.L273:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L274
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L274
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #48]
	ldr	r0, [r7, #24]
	blx	r3
.L274:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3, #96]
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #8
	str	r3, [sp, #4]
	ldr	r0, [r7, #20]
	movs	r1, #2
	movs	r2, #0
	ldr	r3, [r7, #56]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L275
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #8
	str	r3, [sp, #4]
	ldr	r0, [r7, #20]
	movs	r1, #4
	movs	r2, #0
	ldr	r3, [r7, #56]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L275
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #20]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L276
.L275:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	b	.L264
.L276:
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L277
.L278:
	ldr	r3, .L298
.LPIC5:
	add	r3, pc
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldr	r4, [r3, #44]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #52]
	ldr	r2, [r7, #16]
	movs	r3, #8
	blx	r4
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L277:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	blt	.L278
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	b	.L279
.L294:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L280
	ldr	r3, [r7, #60]
	adds	r2, r3, #3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L280
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L280
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #102
	bne	.L280
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #40
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #41
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #123
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #125
	beq	.L281
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L280
.L281:
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	str	r3, [r7, #60]
	b	.L282
.L280:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	bne	.L283
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	b	.L282
.L283:
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bls	.L284
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L285
.L284:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L286
	ldr	r3, [r7, #52]
	str	r3, [r7, #44]
	b	.L287
.L286:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #44]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bne	.L287
	ldr	r3, [r7, #40]
	movs	r2, #2
	str	r2, [r3, #12]
	b	.L264
.L287:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r2, r3, #2
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L288
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L288
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bge	.L288
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L289
	b	.L264
.L289:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L290
	b	.L264
.L290:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #44]
	ldr	r2, [r7, #60]
	blx	r4
	mov	r2, r0
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L291
	b	.L264
.L291:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	b	.L292
.L288:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L292
	ldr	r3, [r7, #40]
	movs	r2, #2
	str	r2, [r3, #12]
	b	.L264
.L292:
	b	.L293
.L285:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L293
	nop
	b	.L264
.L293:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
.L279:
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L294
.L282:
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #368]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #60]
	str	r2, [r3]
	b	.L264
.L268:
	ldr	r3, [r7, #60]
	add	r2, r3, #17
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L295
	ldr	r0, [r7, #60]
	ldr	r3, .L298+4
.LPIC6:
	add	r3, pc
	mov	r1, r3
	movs	r2, #16
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L295
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #368]
	b	.L264
.L295:
	ldr	r3, [r7, #60]
	add	r2, r3, #15
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L296
	ldr	r0, [r7, #60]
	ldr	r3, .L298+8
.LPIC7:
	add	r3, pc
	mov	r1, r3
	movs	r2, #14
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L296
	ldr	r3, [r7, #4]
	movs	r2, #4
	str	r2, [r3, #368]
	b	.L264
.L296:
	ldr	r3, [r7, #60]
	add	r2, r3, #18
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L297
	ldr	r0, [r7, #60]
	ldr	r3, .L298+12
.LPIC8:
	add	r3, pc
	mov	r1, r3
	movs	r2, #17
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L297
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3, #368]
	b	.L264
.L297:
	ldr	r3, [r7, #40]
	movs	r2, #162
	str	r2, [r3, #12]
.L264:
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L299:
	.align	2
.L298:
	.word	.LC6-(.LPIC5+4)
	.word	.LC7-(.LPIC6+4)
	.word	.LC8-(.LPIC7+4)
	.word	.LC9-(.LPIC8+4)
	.size	parse_encoding, .-parse_encoding
	.section	.rodata
	.align	2
.LC10:
	.ascii	"dup\000"
	.align	2
.LC11:
	.ascii	"put\000"
	.section	.text.parse_subrs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_subrs, %function
parse_subrs:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #40]
	ldr	r3, [r7]
	add	r3, r3, #316
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #16]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #488]
	str	r3, [r7, #28]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcs	.L301
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	bne	.L301
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcs	.L302
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	beq	.L303
.L302:
	ldr	r3, [r7, #40]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L300
.L303:
	b	.L300
.L301:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bge	.L305
	ldr	r3, [r7, #40]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L300
.L305:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	subs	r3, r2, r3
	asrs	r2, r3, #3
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bge	.L306
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	subs	r3, r2, r3
	asrs	r3, r3, #3
	str	r3, [r7, #44]
.L306:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L307
	b	.L300
.L307:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7]
	ldr	r3, [r3, #312]
	cmp	r3, #0
	bne	.L308
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #44]
	ldr	r2, [r7, #32]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L308
	b	.L309
.L308:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	adds	r2, r3, #4
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcs	.L310
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L326
.LPIC9:
	add	r3, pc
	mov	r1, r3
	movs	r2, #3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L310
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	add	r1, r7, #12
	add	r2, r7, #8
	ldr	r0, [r7, #40]
	bl	read_binary_data(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L311
	b	.L300
.L311:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L313
	nop
	b	.L300
.L313:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	adds	r2, r3, #4
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcs	.L314
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, .L326+4
.LPIC10:
	add	r3, pc
	mov	r1, r3
	movs	r2, #3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L314
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #40]
	mov	r0, r2
	blx	r3
.L314:
	ldr	r3, [r7]
	ldr	r3, [r3, #312]
	cmp	r3, #0
	beq	.L315
	b	.L308
.L315:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	cmp	r3, #0
	blt	.L317
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L318
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L309
.L318:
	ldr	r3, [r7, #12]
	mov	r2, r3
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L320
	b	.L309
.L320:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #20]
	mov	r1, r2
	movw	r2, #4330
	blx	r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #36]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	ldr	r2, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #24]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #20]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L321
.L317:
	ldr	r3, [r7, #36]
	ldr	r4, [r3, #44]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #24]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #16]
.L321:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L316
	nop
	b	.L309
.L310:
	ldr	r3, [r7]
	ldr	r3, [r3, #312]
	cmp	r3, #0
	beq	.L323
	b	.L300
.L316:
	b	.L308
.L323:
	ldr	r3, [r7]
	ldr	r2, [r7, #44]
	str	r2, [r3, #312]
	b	.L300
.L309:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
.L300:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L327:
	.align	2
.L326:
	.word	.LC10-(.LPIC9+4)
	.word	.LC11-(.LPIC10+4)
	.size	parse_subrs, .-parse_subrs
	.section	.rodata
	.align	2
.LC0:
	.byte	-117
	.byte	-9
	.byte	-31
	.byte	13
	.byte	14
	.section	.text.parse_charstrings,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_charstrings, %function
parse_charstrings:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #68]
	ldr	r3, [r7]
	adds	r3, r3, #208
	str	r3, [r7, #64]
	ldr	r3, [r7]
	adds	r3, r3, #156
	str	r3, [r7, #60]
	ldr	r3, [r7]
	add	r3, r3, #260
	str	r3, [r7, #56]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #488]
	str	r3, [r7, #48]
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #76]
	movs	r3, #0
	strb	r3, [r7, #75]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #36]
	ldr	r2, [r7, #68]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bge	.L329
	movs	r3, #3
	str	r3, [r7, #24]
	b	.L330
.L329:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	asrs	r2, r3, #3
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bge	.L331
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	asrs	r3, r3, #3
	str	r3, [r7, #80]
.L331:
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L332
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L333
.L332:
	b	.L328
.L333:
	ldr	r3, [r7]
	ldr	r3, [r3, #152]
	cmp	r3, #0
	bne	.L335
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #80]
	adds	r2, r2, #6
	ldr	r0, [r7, #64]
	mov	r1, r2
	ldr	r2, [r7, #52]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L336
	b	.L330
.L336:
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #80]
	adds	r2, r2, #6
	ldr	r0, [r7, #60]
	mov	r1, r2
	ldr	r2, [r7, #52]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L337
	b	.L330
.L337:
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #56]
	movs	r1, #4
	ldr	r2, [r7, #52]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L335
	b	.L330
.L335:
	movs	r3, #0
	str	r3, [r7, #84]
.L361:
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #68]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L338
	b	.L339
.L338:
	ldr	r3, [r7, #44]
	adds	r2, r3, #3
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L340
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #40
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #41
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #123
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #125
	beq	.L341
	ldr	r3, [r7, #44]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L340
.L341:
	ldr	r3, [r7, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L342
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L342
	ldr	r3, [r7, #44]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #102
	bne	.L342
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L342
	b	.L339
.L342:
	ldr	r3, [r7, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L340
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #110
	bne	.L340
	ldr	r3, [r7, #44]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L340
	b	.L339
.L340:
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #68]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #68]
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L343
	movs	r3, #3
	str	r3, [r7, #24]
	b	.L330
.L343:
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L345
	b	.L328
.L345:
	ldr	r3, [r7, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L351
	ldr	r3, [r7, #44]
	adds	r2, r3, #2
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L348
	movs	r3, #3
	str	r3, [r7, #24]
	b	.L330
.L348:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	add	r1, r7, #20
	add	r2, r7, #16
	ldr	r0, [r7, #68]
	bl	read_binary_data(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L349
	nop
	b	.L328
.L349:
	ldr	r3, [r7]
	ldr	r3, [r3, #152]
	cmp	r3, #0
	beq	.L350
	b	.L361
.L350:
	ldr	r3, [r7, #60]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldr	r0, [r7, #60]
	ldr	r1, [r7, #84]
	ldr	r2, [r7, #44]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L352
	b	.L330
.L352:
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #84]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #46
	bne	.L353
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #84]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, .L380
.LPIC11:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L353
	ldr	r3, [r7, #84]
	str	r3, [r7, #76]
	movs	r3, #1
	strb	r3, [r7, #75]
.L353:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	cmp	r3, #0
	blt	.L354
	ldr	r3, [r7, #80]
	adds	r2, r3, #5
	ldr	r3, [r7, #84]
	cmp	r2, r3
	ble	.L354
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L355
	movs	r3, #3
	str	r3, [r7, #24]
	b	.L330
.L355:
	ldr	r3, [r7, #20]
	mov	r2, r3
	add	r3, r7, #24
	ldr	r0, [r7, #52]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L356
	b	.L330
.L356:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #32]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #20]
	ldr	r0, [r7, #32]
	mov	r1, r2
	movw	r2, #4330
	blx	r3
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #64]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #172]
	ldr	r2, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #64]
	ldr	r1, [r7, #84]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r0, [r7, #52]
	ldr	r1, [r7, #32]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L357
.L354:
	ldr	r3, [r7, #64]
	ldr	r4, [r3, #44]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #64]
	ldr	r1, [r7, #84]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
.L357:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L358
	nop
	b	.L330
.L358:
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	b	.L361
.L339:
	ldr	r3, [r7]
	ldr	r2, [r7, #84]
	str	r2, [r3, #152]
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L359
	b	.L360
.L351:
	b	.L361
.L359:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #24]
	ldr	r3, [r3]
	ldr	r2, .L380+4
.LPIC12:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L360
	ldr	r3, [r7, #56]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	ldr	r0, [r7, #56]
	movs	r1, #0
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L362
	b	.L330
.L362:
	ldr	r3, [r7, #56]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	ldr	r0, [r7, #56]
	movs	r1, #1
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L363
	b	.L330
.L363:
	ldr	r3, [r7, #56]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	ldr	r0, [r7, #56]
	movs	r1, #2
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L364
	b	.L330
.L364:
	ldr	r3, [r7, #56]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r1, [r3, #28]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	ldr	r0, [r7, #56]
	movs	r1, #3
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L365
	b	.L330
.L365:
	ldr	r3, [r7, #60]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	ldr	r0, [r7, #60]
	ldr	r1, [r7, #76]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L366
	b	.L330
.L366:
	ldr	r3, [r7, #64]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #24]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [r7, #64]
	ldr	r1, [r7, #76]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L367
	b	.L330
.L367:
	ldr	r3, [r7, #60]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #24]
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r0, [r7, #60]
	movs	r1, #0
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L368
	b	.L330
.L368:
	ldr	r3, [r7, #64]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #24]
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r0, [r7, #64]
	movs	r1, #0
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L369
	b	.L330
.L369:
	b	.L370
.L360:
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L379
	ldr	r3, .L380+8
.LPIC13:
	add	r3, pc
	mov	r2, r3
	add	r3, r7, #8
	ldr	r0, [r2]	@ unaligned
	str	r0, [r3]	@ unaligned
	ldrb	r2, [r2, #4]
	strb	r2, [r3, #4]
	ldr	r3, .L380+12
.LPIC14:
	add	r3, pc
	str	r3, [r7, #28]
	ldr	r3, [r7, #56]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	ldr	r0, [r7, #56]
	movs	r1, #0
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L371
	b	.L330
.L371:
	ldr	r3, [r7, #56]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	ldr	r0, [r7, #56]
	movs	r1, #1
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L373
	b	.L330
.L373:
	ldr	r3, [r7, #60]
	ldr	r4, [r3, #44]
	ldr	r0, [r7, #60]
	movs	r1, #0
	ldr	r2, [r7, #28]
	movs	r3, #8
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L374
	b	.L330
.L374:
	ldr	r3, [r7, #64]
	ldr	r4, [r3, #44]
	add	r3, r7, #8
	ldr	r0, [r7, #64]
	movs	r1, #0
	mov	r2, r3
	movs	r3, #5
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L375
	b	.L330
.L375:
	ldr	r3, [r7, #60]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	ldr	r3, [r3]
	ldr	r0, [r7, #60]
	ldr	r1, [r7, #84]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L376
	b	.L330
.L376:
	ldr	r3, [r7, #64]
	ldr	r4, [r3, #44]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #24]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r0, [r7, #64]
	ldr	r1, [r7, #84]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L377
	nop
	b	.L330
.L377:
	ldr	r3, [r7]
	ldr	r3, [r3, #152]
	adds	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3, #152]
.L370:
	b	.L379
.L330:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #68]
	str	r2, [r3, #12]
	b	.L328
.L379:
	nop
.L328:
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L381:
	.align	2
.L380:
	.word	.LC6-(.LPIC11+4)
	.word	.LC6-(.LPIC12+4)
	.word	.LC0-(.LPIC13+4)
	.word	.LC6-(.LPIC14+4)
	.size	parse_charstrings, .-parse_charstrings
	.section	.rodata
	.align	2
.LC12:
	.ascii	"version\000"
	.align	2
.LC13:
	.ascii	"Notice\000"
	.align	2
.LC14:
	.ascii	"FullName\000"
	.align	2
.LC15:
	.ascii	"FamilyName\000"
	.align	2
.LC16:
	.ascii	"ItalicAngle\000"
	.align	2
.LC17:
	.ascii	"isFixedPitch\000"
	.align	2
.LC18:
	.ascii	"UnderlinePosition\000"
	.align	2
.LC19:
	.ascii	"UnderlineThickness\000"
	.align	2
.LC20:
	.ascii	"FSType\000"
	.align	2
.LC21:
	.ascii	"UniqueID\000"
	.align	2
.LC22:
	.ascii	"lenIV\000"
	.align	2
.LC23:
	.ascii	"LanguageGroup\000"
	.align	2
.LC24:
	.ascii	"password\000"
	.align	2
.LC25:
	.ascii	"BlueScale\000"
	.align	2
.LC26:
	.ascii	"BlueShift\000"
	.align	2
.LC27:
	.ascii	"BlueFuzz\000"
	.align	2
.LC28:
	.ascii	"BlueValues\000"
	.align	2
.LC29:
	.ascii	"OtherBlues\000"
	.align	2
.LC30:
	.ascii	"FamilyBlues\000"
	.align	2
.LC31:
	.ascii	"FamilyOtherBlues\000"
	.align	2
.LC32:
	.ascii	"StdHW\000"
	.align	2
.LC33:
	.ascii	"StdVW\000"
	.align	2
.LC34:
	.ascii	"MinFeature\000"
	.align	2
.LC35:
	.ascii	"StemSnapH\000"
	.align	2
.LC36:
	.ascii	"StemSnapV\000"
	.align	2
.LC37:
	.ascii	"ExpansionFactor\000"
	.align	2
.LC38:
	.ascii	"ForceBold\000"
	.align	2
.LC39:
	.ascii	"FontName\000"
	.align	2
.LC40:
	.ascii	"PaintType\000"
	.align	2
.LC41:
	.ascii	"FontType\000"
	.align	2
.LC42:
	.ascii	"StrokeWidth\000"
	.align	2
.LC43:
	.ascii	"FontBBox\000"
	.align	2
.LC44:
	.ascii	"NDV\000"
	.align	2
.LC45:
	.ascii	"CDV\000"
	.align	2
.LC46:
	.ascii	"DesignVector\000"
	.align	2
.LC47:
	.ascii	"FontMatrix\000"
	.align	2
.LC48:
	.ascii	"Encoding\000"
	.align	2
.LC49:
	.ascii	"Subrs\000"
	.align	2
.LC50:
	.ascii	"CharStrings\000"
	.align	2
.LC51:
	.ascii	"Private\000"
	.align	2
.LC52:
	.ascii	"BlendDesignPositions\000"
	.align	2
.LC53:
	.ascii	"BlendDesignMap\000"
	.align	2
.LC54:
	.ascii	"BlendAxisTypes\000"
	.align	2
.LC55:
	.ascii	"WeightVector\000"
	.align	2
.LC56:
	.ascii	"BuildCharArray\000"
	.section	.data.rel.ro.local.t1_keywords,"aw",%progbits
	.align	2
	.type	t1_keywords, %object
	.size	t1_keywords, 1692
t1_keywords:
	.word	.LC12
	.word	3
	.word	5
	.word	0
	.word	0
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC13
	.word	3
	.word	5
	.word	0
	.word	4
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC14
	.word	3
	.word	5
	.word	0
	.word	8
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC15
	.word	3
	.word	5
	.word	0
	.word	12
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC3
	.word	3
	.word	5
	.word	0
	.word	16
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC16
	.word	3
	.word	2
	.word	0
	.word	20
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC17
	.word	3
	.word	1
	.word	0
	.word	24
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC18
	.word	3
	.word	2
	.word	0
	.word	26
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC19
	.word	3
	.word	2
	.word	0
	.word	28
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC20
	.word	2
	.word	2
	.word	0
	.word	0
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC21
	.word	4
	.word	2
	.word	0
	.word	0
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	3
	.word	.LC22
	.word	4
	.word	2
	.word	0
	.word	4
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC23
	.word	4
	.word	2
	.word	0
	.word	184
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC24
	.word	4
	.word	2
	.word	0
	.word	188
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC25
	.word	4
	.word	4
	.word	0
	.word	108
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC26
	.word	4
	.word	2
	.word	0
	.word	112
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC27
	.word	4
	.word	2
	.word	0
	.word	116
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC28
	.word	4
	.word	9
	.word	0
	.word	12
	.byte	2
	.space	3
	.word	14
	.word	8
	.word	2
	.word	.LC29
	.word	4
	.word	9
	.word	0
	.word	40
	.byte	2
	.space	3
	.word	10
	.word	9
	.word	2
	.word	.LC30
	.word	4
	.word	9
	.word	0
	.word	60
	.byte	2
	.space	3
	.word	14
	.word	10
	.word	2
	.word	.LC31
	.word	4
	.word	9
	.word	0
	.word	88
	.byte	2
	.space	3
	.word	10
	.word	11
	.word	2
	.word	.LC32
	.word	4
	.word	9
	.word	0
	.word	120
	.byte	2
	.space	3
	.word	1
	.word	0
	.word	2
	.word	.LC33
	.word	4
	.word	9
	.word	0
	.word	122
	.byte	2
	.space	3
	.word	1
	.word	0
	.word	2
	.word	.LC34
	.word	4
	.word	9
	.word	0
	.word	192
	.byte	2
	.space	3
	.word	2
	.word	0
	.word	2
	.word	.LC35
	.word	4
	.word	9
	.word	0
	.word	128
	.byte	2
	.space	3
	.word	12
	.word	124
	.word	2
	.word	.LC36
	.word	4
	.word	9
	.word	0
	.word	154
	.byte	2
	.space	3
	.word	12
	.word	125
	.word	2
	.word	.LC37
	.word	4
	.word	3
	.word	0
	.word	180
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC38
	.word	4
	.word	1
	.word	0
	.word	126
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC39
	.word	1
	.word	6
	.word	0
	.word	232
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC40
	.word	1
	.word	2
	.word	0
	.word	300
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC41
	.word	1
	.word	2
	.word	0
	.word	301
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC42
	.word	1
	.word	3
	.word	0
	.word	348
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC43
	.word	5
	.word	7
	.word	0
	.word	0
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC44
	.word	7
	.word	2
	.word	0
	.word	532
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC45
	.word	7
	.word	2
	.word	0
	.word	536
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC46
	.word	8
	.word	9
	.word	0
	.word	352
	.byte	4
	.space	3
	.word	16
	.word	416
	.word	1
	.word	.LC47
	.word	8
	.word	11
	.word	t1_parse_font_matrix
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC48
	.word	8
	.word	11
	.word	parse_encoding
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC49
	.word	8
	.word	11
	.word	parse_subrs
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC50
	.word	8
	.word	11
	.word	parse_charstrings
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	2
	.word	.LC51
	.word	8
	.word	11
	.word	parse_private
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC52
	.word	8
	.word	11
	.word	parse_blend_design_positions
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC53
	.word	8
	.word	11
	.word	parse_blend_design_map
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC54
	.word	8
	.word	11
	.word	parse_blend_axis_types
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC55
	.word	8
	.word	11
	.word	parse_weight_vector
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	1
	.word	.LC56
	.word	8
	.word	11
	.word	parse_buildchar
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	2
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	0
	.section	.rodata
	.align	2
.LC57:
	.ascii	"eexec\000"
	.align	2
.LC58:
	.ascii	"closefile\000"
	.align	2
.LC59:
	.ascii	"FontDirectory\000"
	.section	.text.parse_dict,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_dict, %function
parse_dict:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #68]
	movs	r3, #0
	strb	r3, [r7, #67]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #8]
	ldr	r3, [r7, #56]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #8]
	str	r3, [r7, #52]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #56]
	mov	r0, r2
	blx	r3
	b	.L383
.L413:
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldrb	r2, [r3]	@ zero_extendqisi2
	movs	r3, #101
	cmp	r2, r3
	bne	.L384
	ldr	r3, [r7, #48]
	adds	r2, r3, #6
	ldr	r3, [r7, #52]
	cmp	r2, r3
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r2, r3, #6
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L384
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #40
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #41
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #123
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #125
	beq	.L385
	ldr	r3, [r7, #48]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L384
.L385:
	ldr	r0, [r7, #48]
	ldr	r3, .L414
.LPIC15:
	add	r3, pc
	mov	r1, r3
	movs	r2, #5
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L386
.L384:
	ldr	r3, [r7, #48]
	ldrb	r2, [r3]	@ zero_extendqisi2
	movs	r3, #99
	cmp	r2, r3
	bne	.L387
	ldr	r3, [r7, #48]
	add	r2, r3, #10
	ldr	r3, [r7, #52]
	cmp	r2, r3
	beq	.L388
	ldr	r3, [r7, #48]
	add	r2, r3, #10
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L387
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #40
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #41
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #123
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #125
	beq	.L388
	ldr	r3, [r7, #48]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L387
.L388:
	ldr	r0, [r7, #48]
	ldr	r3, .L414+4
.LPIC16:
	add	r3, pc
	mov	r1, r3
	movs	r2, #9
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L386
.L387:
	ldr	r3, [r7, #48]
	ldrb	r2, [r3]	@ zero_extendqisi2
	movs	r3, #70
	cmp	r2, r3
	bne	.L389
	ldr	r3, [r7, #48]
	add	r2, r3, #14
	ldr	r3, [r7, #52]
	cmp	r2, r3
	beq	.L390
	ldr	r3, [r7, #48]
	add	r2, r3, #14
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L389
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #40
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #41
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #123
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #125
	beq	.L390
	ldr	r3, [r7, #48]
	adds	r3, r3, #13
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L389
.L390:
	ldr	r0, [r7, #48]
	ldr	r3, .L414+8
.LPIC17:
	add	r3, pc
	mov	r1, r3
	movs	r2, #13
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L389
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #372]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L391
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #372]
	orr	r2, r3, #2
	ldr	r3, [r7, #8]
	str	r2, [r3, #372]
.L391:
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	add	r2, r3, #13
	ldr	r3, [r7, #56]
	str	r2, [r3]
	b	.L392
.L389:
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bhi	.L393
	ldr	r3, [r7, #48]
	str	r3, [r7, #68]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #56]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L394
	b	.L386
.L394:
	movs	r3, #1
	strb	r3, [r7, #67]
	b	.L392
.L393:
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #82
	bne	.L395
	ldr	r3, [r7, #48]
	adds	r2, r3, #6
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L395
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #68
	bne	.L395
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L395
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #68]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	add	r1, r7, #32
	add	r2, r7, #28
	ldr	r0, [r7, #56]
	bl	read_binary_data(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L396
	movs	r3, #3
	b	.L397
.L396:
	movs	r3, #0
	strb	r3, [r7, #67]
	b	.L392
.L395:
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L398
	ldr	r3, [r7, #48]
	adds	r2, r3, #6
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L398
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #124
	bne	.L398
	ldrb	r3, [r7, #67]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L398
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #68]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	add	r1, r7, #24
	add	r2, r7, #20
	ldr	r0, [r7, #56]
	bl	read_binary_data(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L399
	movs	r3, #3
	b	.L397
.L399:
	movs	r3, #0
	strb	r3, [r7, #67]
	b	.L392
.L398:
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L400
	ldr	r3, [r7, #48]
	adds	r2, r3, #2
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L400
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #48]
	str	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #56]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L401
	b	.L386
.L401:
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L402
	ldr	r3, [r7, #44]
	cmp	r3, #21
	bhi	.L402
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L402
	ldr	r3, .L414+12
.LPIC18:
	add	r3, pc
	str	r3, [r7, #60]
.L411:
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L403
	b	.L402
.L403:
	ldr	r3, [r7, #48]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L404
	ldr	r0, [r7, #40]
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bne	.L404
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #40]
	ldr	r2, [r7, #44]
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L404
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #372]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L405
	movs	r3, #2
	b	.L406
.L405:
	movs	r3, #1
.L406:
	str	r3, [r7, #36]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #36]
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L407
	b	.L402
.L407:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #372]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L408
	ldr	r0, [r7, #40]
	ldr	r3, .L414+16
.LPIC19:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L409
.L408:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #60]
	bl	t1_load_keyword(PLT)
	mov	r2, r0
	ldr	r3, [r7, #56]
	str	r2, [r3, #12]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L409
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	uxtb	r3, r3
	cmp	r3, #162
	bne	.L410
	ldr	r3, [r7, #56]
	movs	r2, #0
	str	r2, [r3, #12]
	b	.L409
.L410:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	b	.L397
.L409:
	b	.L402
.L404:
	ldr	r3, [r7, #60]
	adds	r3, r3, #36
	str	r3, [r7, #60]
	b	.L411
.L402:
	movs	r3, #0
	strb	r3, [r7, #67]
	b	.L392
.L400:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #56]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L412
	b	.L386
.L412:
	movs	r3, #0
	strb	r3, [r7, #67]
.L392:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #56]
	mov	r0, r2
	blx	r3
.L383:
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L413
.L386:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
.L397:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L415:
	.align	2
.L414:
	.word	.LC57-(.LPIC15+4)
	.word	.LC58-(.LPIC16+4)
	.word	.LC59-(.LPIC17+4)
	.word	t1_keywords-(.LPIC18+4)
	.word	.LC50-(.LPIC19+4)
	.size	parse_dict, .-parse_dict
	.section	.text.t1_init_loader,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_init_loader, %function
t1_init_loader:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	mov	r2, #376
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #152]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #96]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #112]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #220]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #168]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #328]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #272]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #368]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #372]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_init_loader, .-t1_init_loader
	.section	.text.t1_done_loader,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_done_loader, %function
t1_done_loader:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #148]
	cmp	r3, #0
	beq	.L418
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #148]
	ldr	r2, [r7, #4]
	adds	r2, r2, #100
	mov	r0, r2
	blx	r3
.L418:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #256]
	cmp	r3, #0
	beq	.L419
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #256]
	ldr	r2, [r7, #4]
	adds	r2, r2, #208
	mov	r0, r2
	blx	r3
.L419:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #204]
	cmp	r3, #0
	beq	.L420
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #204]
	ldr	r2, [r7, #4]
	adds	r2, r2, #156
	mov	r0, r2
	blx	r3
.L420:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #308]
	cmp	r3, #0
	beq	.L421
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #308]
	ldr	r2, [r7, #4]
	add	r2, r2, #260
	mov	r0, r2
	blx	r3
.L421:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #364]
	cmp	r3, #0
	beq	.L422
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #364]
	ldr	r2, [r7, #4]
	add	r2, r2, #316
	mov	r0, r2
	blx	r3
.L422:
	ldr	r0, [r7, #12]
	bl	T1_Finalize_Parser(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_done_loader, .-t1_done_loader
	.section	.text.T1_Open_Face,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Open_Face, %function
T1_Open_Face:
	@ args = 0, pretend = 0, frame = 440
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #448
	add	r7, sp, #8
	adds	r3, r7, #4
	str	r0, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r3, r3, #132
	str	r3, [r7, #416]
	ldr	r3, [r7, #416]
	adds	r3, r3, #36
	str	r3, [r7, #412]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #488]
	str	r3, [r7, #408]
	add	r2, r7, #16
	adds	r3, r7, #4
	mov	r0, r2
	ldr	r1, [r3]
	bl	t1_init_loader(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	mov	r2, #-1
	str	r2, [r3, #532]
	adds	r3, r7, #4
	ldr	r3, [r3]
	mov	r2, #-1
	str	r2, [r3, #536]
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #540]
	ldr	r3, [r7, #412]
	movs	r2, #7
	str	r2, [r3, #112]
	ldr	r3, [r7, #412]
	movs	r2, #1
	str	r2, [r3, #116]
	ldr	r3, [r7, #412]
	movs	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [r7, #412]
	movw	r2, #3932
	str	r2, [r3, #180]
	ldr	r2, [r7, #412]
	mov	r3, #40960
	movt	r3, 39
	str	r3, [r2, #108]
	add	r3, r7, #16
	str	r3, [r7, #404]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #104]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #100]
	ldr	r0, [r7, #404]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #408]
	bl	T1_New_Parser(PLT)
	mov	r2, r0
	add	r3, r7, #12
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L424
	b	.L425
.L424:
	ldr	r3, [r7, #404]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #404]
	ldr	r3, [r3, #80]
	adds	r0, r7, #4
	add	r1, r7, #16
	ldr	r0, [r0]
	bl	parse_dict(PLT)
	mov	r2, r0
	add	r3, r7, #12
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L426
	b	.L425
.L426:
	ldr	r0, [r7, #404]
	ldr	r1, [r7, #408]
	bl	T1_Get_Private_Dict(PLT)
	mov	r2, r0
	add	r3, r7, #12
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L427
	b	.L425
.L427:
	ldr	r3, [r7, #404]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #404]
	ldr	r3, [r3, #88]
	adds	r0, r7, #4
	add	r1, r7, #16
	ldr	r0, [r0]
	bl	parse_dict(PLT)
	mov	r2, r0
	add	r3, r7, #12
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L428
	b	.L425
.L428:
	ldr	r3, [r7, #412]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	bic	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [r7, #412]
	strb	r2, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	cmp	r3, #0
	beq	.L429
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	ldr	r3, [r3, #416]
	cmp	r3, #0
	beq	.L429
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	ldr	r2, [r3, #416]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	beq	.L429
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	movs	r2, #0
	str	r2, [r3, #416]
.L429:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	cmp	r3, #0
	beq	.L430
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L431
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L430
.L431:
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	T1_Done_Blend(PLT)
.L430:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	cmp	r3, #0
	beq	.L432
	movs	r3, #0
	str	r3, [r7, #436]
	b	.L433
.L435:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, [r3, #528]
	ldr	r2, [r7, #436]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	adds	r3, r3, #88
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L434
	adds	r3, r7, #4
	ldr	r0, [r3]
	bl	T1_Done_Blend(PLT)
	b	.L432
.L434:
	ldr	r3, [r7, #436]
	adds	r3, r3, #1
	str	r3, [r7, #436]
.L433:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #436]
	cmp	r2, r3
	bhi	.L435
.L432:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #528]
	cmp	r3, #0
	beq	.L436
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #540]
	cmp	r3, #0
	beq	.L437
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #100]
	str	r3, [r7, #400]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #540]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #12
	str	r2, [sp, #4]
	ldr	r0, [r7, #400]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #544]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L437
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #540]
	b	.L425
.L437:
	b	.L438
.L436:
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #540]
.L438:
	add	r3, r7, #16
	ldr	r2, [r3, #152]
	ldr	r3, [r7, #416]
	str	r2, [r3, #284]
	add	r3, r7, #16
	ldr	r3, [r3, #328]
	cmp	r3, #0
	beq	.L439
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3, #328]
	add	r3, r7, #16
	ldr	r2, [r3, #312]
	ldr	r3, [r7, #416]
	str	r2, [r3, #272]
	add	r3, r7, #16
	ldr	r2, [r3, #316]
	ldr	r3, [r7, #416]
	str	r2, [r3, #260]
	add	r3, r7, #16
	ldr	r2, [r3, #340]
	ldr	r3, [r7, #416]
	str	r2, [r3, #276]
	add	r3, r7, #16
	ldr	r2, [r3, #344]
	ldr	r3, [r7, #416]
	str	r2, [r3, #280]
.L439:
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L440
	add	r3, r7, #16
	ldr	r3, [r3, #220]
	cmp	r3, #0
	bne	.L440
	add	r3, r7, #12
	movs	r2, #3
	str	r2, [r3]
.L440:
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3, #220]
	add	r3, r7, #16
	ldr	r2, [r3, #208]
	ldr	r3, [r7, #416]
	str	r2, [r3, #264]
	add	r3, r7, #16
	ldr	r2, [r3, #232]
	ldr	r3, [r7, #416]
	str	r2, [r3, #292]
	add	r3, r7, #16
	ldr	r2, [r3, #236]
	ldr	r3, [r7, #416]
	str	r2, [r3, #296]
	add	r3, r7, #16
	ldr	r2, [r3, #156]
	ldr	r3, [r7, #416]
	str	r2, [r3, #268]
	add	r3, r7, #16
	ldr	r2, [r3, #180]
	ldr	r3, [r7, #416]
	str	r2, [r3, #288]
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3, #156]
	add	r3, r7, #16
	movs	r2, #0
	str	r2, [r3, #180]
	ldr	r3, [r7, #416]
	ldr	r3, [r3, #236]
	cmp	r3, #1
	bne	.L425
	movs	r3, #0
	str	r3, [r7, #424]
	movs	r3, #0
	str	r3, [r7, #420]
	movs	r3, #0
	str	r3, [r7, #432]
	b	.L441
.L448:
	ldr	r3, [r7, #416]
	ldr	r2, [r3, #252]
	ldr	r3, [r7, #432]
	lsls	r3, r3, #1
	add	r3, r3, r2
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #416]
	ldr	r2, [r3, #256]
	ldr	r3, [r7, #432]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, .L450
.LPIC20:
	add	r2, pc
	str	r2, [r3]
	add	r3, r7, #16
	ldr	r2, [r3, #124]
	ldr	r3, [r7, #432]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #396]
	ldr	r3, [r7, #396]
	cmp	r3, #0
	beq	.L442
	movs	r3, #0
	str	r3, [r7, #428]
	b	.L443
.L447:
	ldr	r3, [r7, #416]
	ldr	r2, [r3, #288]
	ldr	r3, [r7, #428]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #392]
	ldr	r0, [r7, #396]
	ldr	r1, [r7, #392]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L444
	ldr	r3, [r7, #416]
	ldr	r2, [r3, #252]
	ldr	r3, [r7, #432]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #428]
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #416]
	ldr	r2, [r3, #256]
	ldr	r3, [r7, #432]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #392]
	str	r2, [r3]
	ldr	r3, .L450+4
.LPIC21:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #392]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L445
	ldr	r2, [r7, #432]
	ldr	r3, [r7, #424]
	cmp	r2, r3
	bge	.L446
	ldr	r3, [r7, #432]
	str	r3, [r7, #424]
.L446:
	ldr	r2, [r7, #432]
	ldr	r3, [r7, #420]
	cmp	r2, r3
	blt	.L445
	ldr	r3, [r7, #432]
	adds	r3, r3, #1
	str	r3, [r7, #420]
	b	.L442
.L445:
	b	.L442
.L444:
	ldr	r3, [r7, #428]
	adds	r3, r3, #1
	str	r3, [r7, #428]
.L443:
	ldr	r3, [r7, #416]
	ldr	r2, [r3, #284]
	ldr	r3, [r7, #428]
	cmp	r2, r3
	bgt	.L447
.L442:
	ldr	r3, [r7, #432]
	adds	r3, r3, #1
	str	r3, [r7, #432]
.L441:
	add	r3, r7, #16
	ldr	r2, [r3, #116]
	ldr	r3, [r7, #432]
	cmp	r2, r3
	bgt	.L448
	ldr	r3, [r7, #416]
	ldr	r2, [r7, #424]
	str	r2, [r3, #244]
	ldr	r3, [r7, #416]
	ldr	r2, [r7, #420]
	str	r2, [r3, #248]
	add	r3, r7, #16
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #416]
	str	r2, [r3, #240]
.L425:
	add	r3, r7, #16
	mov	r0, r3
	bl	t1_done_loader(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r0, r3
	add	r7, r7, #440
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L451:
	.align	2
.L450:
	.word	.LC6-(.LPIC20+4)
	.word	.LC6-(.LPIC21+4)
	.size	T1_Open_Face, .-T1_Open_Face
	.section	.rodata
	.align	2
.LC60:
	.ascii	"pshinter\000"
	.section	.text.T1_Size_Get_Globals_Funcs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Size_Get_Globals_Funcs, %function
T1_Size_Get_Globals_Funcs:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #548]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L456
.LPIC22:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L453
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L453
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L453
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	b	.L454
.L453:
	movs	r3, #0
.L454:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L457:
	.align	2
.L456:
	.word	.LC60-(.LPIC22+4)
	.size	T1_Size_Get_Globals_Funcs, .-T1_Size_Get_Globals_Funcs
	.section	.text.T1_Size_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Size_Done, %function
T1_Size_Done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L458
	ldr	r0, [r7, #12]
	bl	T1_Size_Get_Globals_Funcs(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L460
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #40]
	mov	r0, r2
	blx	r3
.L460:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #40]
.L458:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T1_Size_Done, .-T1_Size_Done
	.section	.text.T1_Size_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Size_Init, %function
T1_Size_Init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r0, [r7, #24]
	bl	T1_Size_Get_Globals_Funcs(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L462
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	ldr	r2, [r2]
	ldr	r0, [r2, #100]
	ldr	r2, [r7, #16]
	add	r1, r2, #168
	add	r2, r7, #12
	blx	r3
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L462
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #24]
	str	r2, [r3, #40]
.L462:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T1_Size_Init, .-T1_Size_Init
	.section	.text.T1_Size_Request,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Size_Request, %function
T1_Size_Request:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	T1_Size_Get_Globals_Funcs(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Request_Metrics(PLT)
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L466
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	movs	r0, #0
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	blx	r4
.L466:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	T1_Size_Request, .-T1_Size_Request
	.section	.text.T1_GlyphSlot_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_GlyphSlot_Done, %function
T1_GlyphSlot_Done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	movs	r2, #0
	str	r2, [r3, #36]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	T1_GlyphSlot_Done, .-T1_GlyphSlot_Done
	.section	.text.T1_GlyphSlot_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_GlyphSlot_Init, %function
T1_GlyphSlot_Init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #548]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L470
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L472
.LPIC23:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L470
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	blx	r3
	str	r0, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #8]
	str	r2, [r3, #36]
.L470:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L473:
	.align	2
.L472:
	.word	.LC60-(.LPIC23+4)
	.size	T1_GlyphSlot_Init, .-T1_GlyphSlot_Init
	.section	.text.T1_Face_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Face_Done, %function
T1_Face_Done:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L475
	b	.L474
.L475:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #132
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #544]
	cmp	r3, #0
	beq	.L477
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #544]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #544]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #544]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #540]
.L477:
	ldr	r0, [r7, #20]
	bl	T1_Done_Blend(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #528]
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #296]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #296]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #292]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #292]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #288]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #288]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #276]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #276]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #280]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #280]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #260]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #260]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #264]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #264]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #268]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #268]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #252]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #252]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #256]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #256]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #232]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #232]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #492]
	cmp	r3, #0
	beq	.L478
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #492]
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	T1_Done_Metrics(PLT)
.L478:
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #24]
.L474:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T1_Face_Done, .-T1_Face_Done
	.section	.rodata
	.align	2
.LC61:
	.ascii	"postscript-cmaps\000"
	.align	2
.LC62:
	.ascii	"psaux\000"
	.align	2
.LC63:
	.ascii	"Regular\000"
	.align	2
.LC64:
	.ascii	"Bold\000"
	.align	2
.LC65:
	.ascii	"Black\000"
	.section	.text.T1_Face_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Face_Init, %function
T1_Face_Init:
	@ args = 4, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #96
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	adds	r3, r3, #132
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	str	r3, [r7, #64]
	ldr	r3, [r7, #72]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #96]
	str	r3, [r7, #60]
	ldr	r0, [r7, #60]
	ldr	r3, .L517
.LPIC24:
	add	r3, pc
	mov	r1, r3
	bl	ft_module_get_service(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	str	r3, [r7, #52]
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #52]
	str	r2, [r3, #484]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L517+4
.LPIC25:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module_Interface(PLT)
	mov	r2, r0
	ldr	r3, [r7, #72]
	str	r2, [r3, #488]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #488]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L480
	movs	r3, #11
	str	r3, [r7, #92]
	b	.L481
.L480:
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L517+8
.LPIC26:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module_Interface(PLT)
	mov	r2, r0
	ldr	r3, [r7, #72]
	str	r2, [r3, #548]
	ldr	r0, [r7, #72]
	bl	T1_Open_Face(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	beq	.L482
	b	.L481
.L482:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L483
	b	.L481
.L483:
	ldr	r3, [r7, #4]
	uxth	r3, r3
	cmp	r3, #0
	ble	.L484
	movs	r3, #6
	str	r3, [r7, #92]
	b	.L481
.L484:
	ldr	r3, [r7, #72]
	str	r3, [r7, #44]
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #284]
	ldr	r3, [r7, #44]
	str	r2, [r3, #16]
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	orr	r3, r3, #2576
	orr	r3, r3, #1
	ldr	r2, [r7, #44]
	str	r3, [r2, #8]
	ldr	r3, [r7, #64]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L485
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	orr	r2, r3, #4
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
.L485:
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #528]
	cmp	r3, #0
	beq	.L486
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	orr	r2, r3, #256
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
.L486:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #44]
	str	r2, [r3, #20]
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L487
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #8]
	str	r3, [r7, #88]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L488
	movs	r3, #1
	strb	r3, [r7, #83]
	b	.L489
.L497:
	ldr	r3, [r7, #88]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L490
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
	b	.L489
.L490:
	ldr	r3, [r7, #88]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L491
	ldr	r3, [r7, #88]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L492
.L491:
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
	b	.L489
.L492:
	ldr	r3, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L493
	ldr	r3, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L494
.L493:
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
	b	.L489
.L494:
	movs	r3, #0
	strb	r3, [r7, #83]
	ldr	r3, [r7, #84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L495
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #88]
	str	r2, [r3, #24]
	b	.L496
.L495:
	b	.L496
.L489:
	ldr	r3, [r7, #88]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L497
.L496:
	ldrb	r3, [r7, #83]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L488
	ldr	r3, [r7, #44]
	ldr	r2, .L517+12
.LPIC27:
	add	r2, pc
	str	r2, [r3, #24]
	b	.L498
.L488:
	b	.L498
.L487:
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #232]
	cmp	r3, #0
	beq	.L498
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #232]
	ldr	r3, [r7, #44]
	str	r2, [r3, #20]
.L498:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L499
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L500
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #44]
	str	r2, [r3, #24]
	b	.L499
.L500:
	ldr	r3, [r7, #44]
	ldr	r2, .L517+16
.LPIC28:
	add	r2, pc
	str	r2, [r3, #24]
.L499:
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L501
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #12]
	orr	r2, r3, #1
	ldr	r3, [r7, #44]
	str	r2, [r3, #12]
.L501:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L502
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	mov	r0, r3
	ldr	r3, .L517+20
.LPIC29:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L503
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #16]
	mov	r0, r3
	ldr	r3, .L517+24
.LPIC30:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L502
.L503:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #12]
	orr	r2, r3, #2
	ldr	r3, [r7, #44]
	str	r2, [r3, #12]
.L502:
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #328]
	asrs	r2, r3, #16
	ldr	r3, [r7, #44]
	str	r2, [r3, #52]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #332]
	asrs	r2, r3, #16
	ldr	r3, [r7, #44]
	str	r2, [r3, #56]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #336]
	add	r3, r3, #65280
	adds	r3, r3, #255
	asrs	r2, r3, #16
	ldr	r3, [r7, #44]
	str	r2, [r3, #60]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #340]
	add	r3, r3, #65280
	adds	r3, r3, #255
	asrs	r2, r3, #16
	ldr	r3, [r7, #44]
	str	r2, [r3, #64]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #68]
	cmp	r3, #0
	bne	.L504
	ldr	r3, [r7, #44]
	mov	r2, #1000
	strh	r2, [r3, #68]	@ movhi
.L504:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #64]
	uxth	r2, r3
	ldr	r3, [r7, #44]
	strh	r2, [r3, #70]	@ movhi
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #56]
	uxth	r2, r3
	ldr	r3, [r7, #44]
	strh	r2, [r3, #72]	@ movhi
	ldr	r3, [r7, #44]
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
	ldr	r3, [r7, #44]
	strh	r2, [r3, #74]	@ movhi
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #74]
	sxth	r2, r3
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #70]
	sxth	r1, r3
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #72]
	sxth	r3, r3
	subs	r3, r1, r3
	cmp	r2, r3
	bge	.L505
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #70]
	uxth	r2, r3
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #72]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #44]
	strh	r2, [r3, #74]	@ movhi
.L505:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #60]
	uxth	r2, r3
	ldr	r3, [r7, #44]
	strh	r2, [r3, #76]	@ movhi
	add	r3, r7, #32
	ldr	r0, [r7, #72]
	mov	r1, r3
	bl	T1_Compute_Max_Advance(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L506
	ldr	r3, [r7, #32]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #44]
	strh	r2, [r3, #76]	@ movhi
	b	.L507
.L506:
	movs	r3, #0
	str	r3, [r7, #92]
.L507:
	ldr	r3, [r7, #44]
	ldrh	r2, [r3, #74]
	ldr	r3, [r7, #44]
	strh	r2, [r3, #78]	@ movhi
	ldr	r3, [r7, #64]
	ldrh	r2, [r3, #26]
	ldr	r3, [r7, #44]
	strh	r2, [r3, #80]	@ movhi
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #28]
	uxth	r2, r3
	ldr	r3, [r7, #44]
	strh	r2, [r3, #82]	@ movhi
	ldr	r3, [r7, #72]
	str	r3, [r7, #40]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L481
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #20]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	str	r3, [r7, #20]
	movs	r3, #3
	strh	r3, [r7, #28]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #30]	@ movhi
	movw	r3, #26979
	movt	r3, 30062
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #12]
	add	r3, r7, #20
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	beq	.L508
	ldr	r3, [r7, #92]
	uxtb	r3, r3
	cmp	r3, #163
	bne	.L481
.L508:
	movs	r3, #0
	str	r3, [r7, #92]
	movs	r3, #7
	strh	r3, [r7, #28]	@ movhi
	movs	r3, #0
	str	r3, [r7, #76]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #236]
	subs	r3, r3, #1
	cmp	r3, #3
	bhi	.L509
	adr	r2, .L511
	ldr	r1, [r2, r3, lsl #2]
	add	r2, r2, r1
	bx	r2
	.p2align 2
.L511:
	.word	.L510+1-.L511
	.word	.L512+1-.L511
	.word	.L513+1-.L511
	.word	.L514+1-.L511
.L512:
	movw	r3, #20290
	movt	r3, 16708
	str	r3, [r7, #24]
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	str	r3, [r7, #76]
	b	.L509
.L514:
	movw	r3, #16965
	movt	r3, 16708
	str	r3, [r7, #24]
	movs	r3, #1
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	str	r3, [r7, #76]
	b	.L509
.L510:
	movw	r3, #16963
	movt	r3, 16708
	str	r3, [r7, #24]
	movs	r3, #2
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	str	r3, [r7, #76]
	b	.L509
.L513:
	movw	r3, #29745
	movt	r3, 27745
	str	r3, [r7, #24]
	movs	r3, #3
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #12]
	str	r3, [r7, #76]
	nop
.L509:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L481
	add	r3, r7, #20
	ldr	r0, [r7, #76]
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	str	r0, [r7, #92]
.L481:
	ldr	r3, [r7, #92]
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L518:
	.align	2
.L517:
	.word	.LC61-(.LPIC24+4)
	.word	.LC62-(.LPIC25+4)
	.word	.LC60-(.LPIC26+4)
	.word	.LC63-(.LPIC27+4)
	.word	.LC63-(.LPIC28+4)
	.word	.LC64-(.LPIC29+4)
	.word	.LC65-(.LPIC30+4)
	.size	T1_Face_Init, .-T1_Face_Init
	.section	.text.T1_Driver_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Driver_Init, %function
T1_Driver_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	T1_Driver_Init, .-T1_Driver_Init
	.section	.text.T1_Driver_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Driver_Done, %function
T1_Driver_Done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	T1_Driver_Done, .-T1_Driver_Done
	.section	.text.t1_get_glyph_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_get_glyph_name, %function
t1_get_glyph_name:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #420]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7]
	bl	ft_mem_strcpyn(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_get_glyph_name, .-t1_get_glyph_name
	.section	.text.t1_get_name_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_get_name_index, %function
t1_get_name_index:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L525
.L528:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #420]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r0, [r7]
	ldr	r1, [r7, #8]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L526
	ldr	r3, [r7, #12]
	b	.L527
.L526:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L525:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #416]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L528
	movs	r3, #0
.L527:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_get_name_index, .-t1_get_name_index
	.section	.data.rel.ro.local.t1_service_glyph_dict,"aw",%progbits
	.align	2
	.type	t1_service_glyph_dict, %object
	.size	t1_service_glyph_dict, 8
t1_service_glyph_dict:
	.word	t1_get_glyph_name
	.word	t1_get_name_index
	.section	.text.t1_get_ps_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_get_ps_name, %function
t1_get_ps_name:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #364]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t1_get_ps_name, .-t1_get_ps_name
	.section	.data.rel.ro.local.t1_service_ps_name,"aw",%progbits
	.align	2
	.type	t1_service_ps_name, %object
	.size	t1_service_ps_name, 4
t1_service_ps_name:
	.word	t1_get_ps_name
	.section	.data.rel.ro.local.t1_service_multi_masters,"aw",%progbits
	.align	2
	.type	t1_service_multi_masters, %object
	.size	t1_service_multi_masters, 20
t1_service_multi_masters:
	.word	T1_Get_Multi_Master
	.word	T1_Set_MM_Design
	.word	T1_Set_MM_Blend
	.word	T1_Get_MM_Var
	.word	T1_Set_Var_Design
	.section	.text.t1_ps_get_font_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_ps_get_font_info, %function
t1_ps_get_font_info:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r4, r2
	add	r5, r3, #132
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	t1_ps_get_font_info, .-t1_ps_get_font_info
	.section	.text.t1_ps_get_font_extra,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_ps_get_font_extra, %function
t1_ps_get_font_extra:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldrh	r2, [r2, #164]	@ movhi
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t1_ps_get_font_extra, .-t1_ps_get_font_extra
	.section	.text.t1_ps_has_glyph_names,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_ps_has_glyph_names, %function
t1_ps_has_glyph_names:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t1_ps_has_glyph_names, .-t1_ps_has_glyph_names
	.section	.text.t1_ps_get_font_private,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_ps_get_font_private, %function
t1_ps_get_font_private:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	mov	r1, r2
	add	r2, r3, #168
	movs	r3, #196
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_ps_get_font_private, .-t1_ps_get_font_private
	.section	.text.t1_ps_get_font_value,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_ps_get_font_value, %function
t1_ps_get_font_value:
	@ args = 4, pretend = 0, frame = 40
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
	ldr	r3, [r7, #48]
	bic	r3, r3, r3, asr #31
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #132
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r3, #45
	bhi	.L540
	adr	r1, .L542
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L542:
	.word	.L541+1-.L542
	.word	.L543+1-.L542
	.word	.L544+1-.L542
	.word	.L545+1-.L542
	.word	.L546+1-.L542
	.word	.L547+1-.L542
	.word	.L548+1-.L542
	.word	.L549+1-.L542
	.word	.L550+1-.L542
	.word	.L551+1-.L542
	.word	.L552+1-.L542
	.word	.L553+1-.L542
	.word	.L554+1-.L542
	.word	.L555+1-.L542
	.word	.L556+1-.L542
	.word	.L557+1-.L542
	.word	.L558+1-.L542
	.word	.L559+1-.L542
	.word	.L560+1-.L542
	.word	.L561+1-.L542
	.word	.L562+1-.L542
	.word	.L563+1-.L542
	.word	.L564+1-.L542
	.word	.L565+1-.L542
	.word	.L566+1-.L542
	.word	.L567+1-.L542
	.word	.L568+1-.L542
	.word	.L569+1-.L542
	.word	.L570+1-.L542
	.word	.L571+1-.L542
	.word	.L572+1-.L542
	.word	.L573+1-.L542
	.word	.L574+1-.L542
	.word	.L575+1-.L542
	.word	.L576+1-.L542
	.word	.L577+1-.L542
	.word	.L578+1-.L542
	.word	.L579+1-.L542
	.word	.L580+1-.L542
	.word	.L581+1-.L542
	.word	.L582+1-.L542
	.word	.L583+1-.L542
	.word	.L584+1-.L542
	.word	.L585+1-.L542
	.word	.L586+1-.L542
	.word	.L587+1-.L542
.L541:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L588
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L588
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #301]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L588:
	b	.L540
.L543:
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L589
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L589
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L589
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L590
	adr	r1, .L592
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L592:
	.word	.L591+1-.L592
	.word	.L593+1-.L592
	.word	.L594+1-.L592
	.word	.L595+1-.L592
.L591:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #304]
	str	r3, [r7, #32]
	b	.L590
.L593:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #308]
	str	r3, [r7, #32]
	b	.L590
.L594:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #312]
	str	r3, [r7, #32]
	b	.L590
.L595:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #316]
	str	r3, [r7, #32]
	nop
.L590:
	ldr	r3, [r7]
	ldr	r2, [r7, #32]
	str	r2, [r3]
	b	.L540
.L589:
	b	.L540
.L544:
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L596
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L596
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L596
	ldr	r3, [r7, #4]
	cmp	r3, #3
	bhi	.L597
	adr	r1, .L599
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L599:
	.word	.L598+1-.L599
	.word	.L600+1-.L599
	.word	.L601+1-.L599
	.word	.L602+1-.L599
.L598:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #328]
	str	r3, [r7, #28]
	b	.L597
.L600:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #332]
	str	r3, [r7, #28]
	b	.L597
.L601:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #336]
	str	r3, [r7, #28]
	b	.L597
.L602:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #340]
	str	r3, [r7, #28]
	nop
.L597:
	ldr	r3, [r7]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	b	.L540
.L596:
	b	.L540
.L545:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L603
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L603
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #300]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L603:
	b	.L540
.L546:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #232]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L604
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L604
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #232]
	ldr	r0, [r7]
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	memcpy(PLT)
	b	.L540
.L604:
	b	.L540
.L547:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L605
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L605
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #36]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L605:
	b	.L540
.L548:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L606
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L606
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #284]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L606:
	b	.L540
.L549:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #284]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L607
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #288]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L607
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L607
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #288]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7]
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	memcpy(PLT)
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	b	.L540
.L607:
	b	.L540
.L550:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #284]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L608
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #296]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L608
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L608
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #292]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	b	.L540
.L608:
	b	.L540
.L551:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L609
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L609
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #236]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L609:
	b	.L540
.L552:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #236]
	cmp	r3, #1
	bne	.L610
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #240]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L610
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #256]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L610
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L610
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #256]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	b	.L540
.L610:
	b	.L540
.L553:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L611
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L611
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #272]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L611:
	b	.L540
.L554:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #272]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L612
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #280]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L612
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L612
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #276]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldr	r2, [r7]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	b	.L540
.L612:
	b	.L540
.L555:
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L613
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L613
	ldr	r3, [r7, #16]
	ldrh	r2, [r3, #156]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L613:
	b	.L540
.L556:
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L614
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L614
	ldr	r3, [r7, #16]
	ldrh	r2, [r3, #158]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L614:
	b	.L540
.L557:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L615
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L615
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #44]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L615:
	b	.L540
.L558:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #44]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L616
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L616
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L616
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3, #8]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L616:
	b	.L540
.L566:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L617
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L617
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #144]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L617:
	b	.L540
.L559:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L618
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L618
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #152]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L618:
	b	.L540
.L567:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L619
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L619
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #148]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L619:
	b	.L540
.L560:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L620
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L620
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #45]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L620:
	b	.L540
.L561:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #45]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L621
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L621
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L621
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #36
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L621:
	b	.L540
.L562:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L622
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L622
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #46]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L622:
	b	.L540
.L563:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #46]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L623
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L623
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L623
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3, #8]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L623:
	b	.L540
.L564:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L624
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L624
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #47]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L624:
	b	.L540
.L565:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #47]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L625
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L625
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L625
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L625:
	b	.L540
.L568:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L626
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L626
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #160]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L626:
	b	.L540
.L569:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #160]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L627
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L627
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L627
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L627:
	b	.L540
.L570:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L628
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L628
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #161]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L628:
	b	.L540
.L571:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #161]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L629
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L629
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L629
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #92
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3, #6]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L629:
	b	.L540
.L573:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L630
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L630
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #163]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L630:
	b	.L540
.L572:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L631
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L631
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #162]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L631:
	b	.L540
.L574:
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bhi	.L632
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L632
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L632
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r2, [r3, #4]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L632:
	b	.L540
.L575:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L633
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L633
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #40]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L633:
	b	.L540
.L576:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L634
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L634
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #224]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L634:
	b	.L540
.L577:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L635
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L635
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #220]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L635:
	b	.L540
.L583:
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L636
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L636
	ldr	r3, [r7, #16]
	ldrb	r2, [r3, #24]	@ zero_extendqisi2
	ldr	r3, [r7]
	strb	r2, [r3]
	b	.L540
.L636:
	b	.L540
.L584:
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L637
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L637
	ldr	r3, [r7, #16]
	ldrh	r2, [r3, #26]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L637:
	b	.L540
.L585:
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L638
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L638
	ldr	r3, [r7, #16]
	ldrh	r2, [r3, #28]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L638:
	b	.L540
.L586:
	movs	r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L639
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L639
	ldr	r3, [r7, #16]
	ldrh	r2, [r3, #32]
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L540
.L639:
	b	.L540
.L578:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L640
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L640
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r0, [r7]
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	memcpy(PLT)
	b	.L540
.L640:
	b	.L540
.L579:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L641
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L641
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r0, [r7]
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	memcpy(PLT)
	b	.L540
.L641:
	b	.L540
.L580:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L642
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L642
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	ldr	r0, [r7]
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	memcpy(PLT)
	b	.L540
.L642:
	b	.L540
.L581:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L643
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L643
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	ldr	r0, [r7]
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	memcpy(PLT)
	b	.L540
.L643:
	b	.L540
.L582:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L644
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L644
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	ldr	r0, [r7]
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	memcpy(PLT)
	b	.L540
.L644:
	b	.L540
.L587:
	movs	r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L645
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L645
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L649
.L645:
.L649:
	nop
.L540:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L646
	ldr	r3, [r7, #36]
	b	.L647
.L646:
	mov	r3, #-1
.L647:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_ps_get_font_value, .-t1_ps_get_font_value
	.section	.data.rel.ro.local.t1_service_ps_info,"aw",%progbits
	.align	2
	.type	t1_service_ps_info, %object
	.size	t1_service_ps_info, 20
t1_service_ps_info:
	.word	t1_ps_get_font_info
	.word	t1_ps_get_font_extra
	.word	t1_ps_has_glyph_names
	.word	t1_ps_get_font_private
	.word	t1_ps_get_font_value
	.section	.data.rel.ro.local.t1_service_kerning,"aw",%progbits
	.align	2
	.type	t1_service_kerning, %object
	.size	t1_service_kerning, 4
t1_service_kerning:
	.word	T1_Get_Track_Kerning
	.section	.rodata
	.align	2
.LC66:
	.ascii	"postscript-font-name\000"
	.align	2
.LC67:
	.ascii	"glyph-dict\000"
	.align	2
.LC68:
	.ascii	"font-format\000"
	.align	2
.LC69:
	.ascii	"Type 1\000"
	.align	2
.LC70:
	.ascii	"postscript-info\000"
	.align	2
.LC71:
	.ascii	"kerning\000"
	.align	2
.LC72:
	.ascii	"multi-masters\000"
	.section	.data.rel.ro.local.t1_services,"aw",%progbits
	.align	2
	.type	t1_services, %object
	.size	t1_services, 56
t1_services:
	.word	.LC66
	.word	t1_service_ps_name
	.word	.LC67
	.word	t1_service_glyph_dict
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	t1_service_ps_info
	.word	.LC71
	.word	t1_service_kerning
	.word	.LC72
	.word	t1_service_multi_masters
	.word	0
	.word	0
	.section	.text.Get_Interface,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Get_Interface, %function
Get_Interface:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L652
.LPIC31:
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
.L653:
	.align	2
.L652:
	.word	t1_services-(.LPIC31+4)
	.size	Get_Interface, .-Get_Interface
	.section	.text.Get_Kerning,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Get_Kerning, %function
Get_Kerning:
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
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #492]
	cmp	r3, #0
	beq	.L655
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #492]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	T1_Get_Kerning(PLT)
.L655:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Get_Kerning, .-Get_Kerning
	.global	t1_driver_class
	.section	.rodata
	.align	2
.LC73:
	.ascii	"type1\000"
	.section	.data.rel.ro.local.t1_driver_class,"aw",%progbits
	.align	2
	.type	t1_driver_class, %object
	.size	t1_driver_class, 96
t1_driver_class:
	.word	1281
	.word	28
	.word	.LC73
	.word	65536
	.word	131072
	.word	0
	.word	T1_Driver_Init
	.word	T1_Driver_Done
	.word	Get_Interface
	.word	552
	.word	44
	.word	180
	.word	T1_Face_Init
	.word	T1_Face_Done
	.word	T1_Size_Init
	.word	T1_Size_Done
	.word	T1_GlyphSlot_Init
	.word	T1_GlyphSlot_Done
	.word	T1_Load_Glyph
	.word	Get_Kerning
	.word	T1_Read_Metrics
	.word	T1_Get_Advances
	.word	T1_Size_Request
	.word	0
	.section	.text.T1_Parse_Glyph_And_Get_Char_String,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Parse_Glyph_And_Get_Char_String, %function
T1_Parse_Glyph_And_Get_Char_String:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r3, r3, #132
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	str	r3, [r7, #32]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #36]
	add	r4, r2, #1376
	add	r3, r3, #304
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	add	r3, r3, #1392
	add	r2, r2, #320
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L658
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #32]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	blx	r3
	str	r0, [r7, #44]
	b	.L659
.L658:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #292]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #296]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L659:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L660
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1484]
	ldr	r2, [r7, #4]
	ldr	r1, [r2]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	ldr	r0, [r7, #12]
	blx	r3
	str	r0, [r7, #44]
.L660:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L661
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L661
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L661
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #8]
	movs	r2, #0
	blx	r4
	str	r0, [r7, #44]
	ldr	r3, [r7, #16]
	lsls	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #24]
	lsls	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r3, [r7, #28]
	lsls	r2, r3, #16
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
.L661:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	T1_Parse_Glyph_And_Get_Char_String, .-T1_Parse_Glyph_And_Get_Char_String
	.section	.text.T1_Parse_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Parse_Glyph, %function
T1_Parse_Glyph:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, r3
	bl	T1_Parse_Glyph_And_Get_Char_String(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L664
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L664
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #128]
	ldr	r2, [r2, #48]
	ldr	r1, [r2, #4]
	add	r2, r7, #8
	mov	r0, r1
	mov	r1, r2
	blx	r3
.L664:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T1_Parse_Glyph, .-T1_Parse_Glyph
	.section	.text.T1_Compute_Max_Advance,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Compute_Max_Advance, %function
T1_Compute_Max_Advance:
	@ args = 0, pretend = 0, frame = 1528
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	subw	sp, sp, #1556
	add	r7, sp, #24
	adds	r3, r7, #4
	str	r0, [r3]
	mov	r3, r7
	str	r1, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r3, r3, #132
	str	r3, [r7, #1520]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #488]
	str	r3, [r7, #1516]
	mov	r3, r7
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #1516]
	ldr	r3, [r3, #12]
	ldr	r4, [r3]
	ldr	r3, [r7, #1520]
	ldr	r0, [r3, #288]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r1, [r3, #528]
	add	r2, r7, #12
	adds	r3, r7, #4
	str	r0, [sp]
	str	r1, [sp, #4]
	movs	r1, #0
	str	r1, [sp, #8]
	movs	r1, #0
	str	r1, [sp, #12]
	ldr	r1, .L674
.LPIC32:
	add	r1, pc
	str	r1, [sp, #16]
	mov	r0, r2
	ldr	r1, [r3]
	movs	r2, #0
	movs	r3, #0
	blx	r4
	str	r0, [r7, #1512]
	ldr	r3, [r7, #1512]
	cmp	r3, #0
	beq	.L667
	ldr	r3, [r7, #1512]
	b	.L673
.L667:
	add	r3, r7, #12
	movs	r2, #1
	strb	r2, [r3, #70]
	add	r3, r7, #12
	movs	r2, #0
	strb	r2, [r3, #68]
	ldr	r3, [r7, #1520]
	ldr	r2, [r3, #272]
	add	r3, r7, #12
	str	r2, [r3, #1364]
	ldr	r3, [r7, #1520]
	ldr	r2, [r3, #276]
	add	r3, r7, #12
	str	r2, [r3, #1368]
	ldr	r3, [r7, #1520]
	ldr	r2, [r3, #280]
	add	r3, r7, #12
	str	r2, [r3, #1372]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #544]
	add	r3, r7, #12
	str	r2, [r3, #1488]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #540]
	add	r3, r7, #12
	str	r2, [r3, #1492]
	mov	r3, r7
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #1524]
	b	.L669
.L672:
	ldr	r3, [r7, #1524]
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	T1_Parse_Glyph(PLT)
	ldr	r3, [r7, #1524]
	cmp	r3, #0
	beq	.L670
	add	r3, r7, #12
	ldr	r2, [r3, #40]
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L671
.L670:
	add	r3, r7, #12
	ldr	r2, [r3, #40]
	mov	r3, r7
	ldr	r3, [r3]
	str	r2, [r3]
.L671:
	ldr	r3, [r7, #1524]
	adds	r3, r3, #1
	str	r3, [r7, #1524]
.L669:
	ldr	r3, [r7, #1520]
	ldr	r2, [r3, #284]
	ldr	r3, [r7, #1524]
	cmp	r2, r3
	bgt	.L672
	ldr	r3, [r7, #1516]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #4]
	add	r2, r7, #12
	mov	r0, r2
	blx	r3
	movs	r3, #0
.L673:
	mov	r0, r3
	addw	r7, r7, #1532
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L675:
	.align	2
.L674:
	.word	T1_Parse_Glyph-(.LPIC32+4)
	.size	T1_Compute_Max_Advance, .-T1_Compute_Max_Advance
	.section	.text.T1_Get_Advances,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Get_Advances, %function
T1_Get_Advances:
	@ args = 4, pretend = 0, frame = 1536
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	subw	sp, sp, #1564
	add	r7, sp, #24
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r3, [r7, #1528]
	ldr	r3, [r7, #1528]
	adds	r3, r3, #132
	str	r3, [r7, #1524]
	ldr	r3, [r7, #1528]
	ldr	r3, [r3, #488]
	str	r3, [r7, #1520]
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L677
	movs	r3, #0
	str	r3, [r7, #1532]
	b	.L678
.L679:
	ldr	r3, [r7, #1532]
	lsls	r3, r3, #2
	ldr	r2, [r7, #1552]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #1532]
	adds	r3, r3, #1
	str	r3, [r7, #1532]
.L678:
	adds	r3, r7, #4
	ldr	r2, [r7, #1532]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L679
	movs	r3, #0
	b	.L686
.L677:
	ldr	r3, [r7, #1520]
	ldr	r3, [r3, #12]
	ldr	r4, [r3]
	ldr	r3, [r7, #1524]
	ldr	r1, [r3, #288]
	ldr	r3, [r7, #1528]
	ldr	r2, [r3, #528]
	add	r3, r7, #16
	str	r1, [sp]
	str	r2, [sp, #4]
	movs	r2, #0
	str	r2, [sp, #8]
	movs	r2, #0
	str	r2, [sp, #12]
	ldr	r2, .L687
.LPIC33:
	add	r2, pc
	str	r2, [sp, #16]
	mov	r0, r3
	ldr	r1, [r7, #1528]
	movs	r2, #0
	movs	r3, #0
	blx	r4
	str	r0, [r7, #1516]
	ldr	r3, [r7, #1516]
	cmp	r3, #0
	beq	.L681
	ldr	r3, [r7, #1516]
	b	.L686
.L681:
	add	r3, r7, #16
	movs	r2, #1
	strb	r2, [r3, #70]
	add	r3, r7, #16
	movs	r2, #0
	strb	r2, [r3, #68]
	ldr	r3, [r7, #1524]
	ldr	r2, [r3, #272]
	add	r3, r7, #16
	str	r2, [r3, #1364]
	ldr	r3, [r7, #1524]
	ldr	r2, [r3, #276]
	add	r3, r7, #16
	str	r2, [r3, #1368]
	ldr	r3, [r7, #1524]
	ldr	r2, [r3, #280]
	add	r3, r7, #16
	str	r2, [r3, #1372]
	ldr	r3, [r7, #1528]
	ldr	r2, [r3, #544]
	add	r3, r7, #16
	str	r2, [r3, #1488]
	ldr	r3, [r7, #1528]
	ldr	r2, [r3, #540]
	add	r3, r7, #16
	str	r2, [r3, #1492]
	movs	r3, #0
	str	r3, [r7, #1532]
	b	.L682
.L685:
	add	r3, r7, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #1532]
	add	r3, r3, r2
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	T1_Parse_Glyph(PLT)
	str	r0, [r7, #1516]
	ldr	r3, [r7, #1516]
	cmp	r3, #0
	bne	.L683
	ldr	r3, [r7, #1532]
	lsls	r3, r3, #2
	ldr	r2, [r7, #1552]
	adds	r4, r2, r3
	add	r3, r7, #16
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	str	r3, [r4]
	b	.L684
.L683:
	ldr	r3, [r7, #1532]
	lsls	r3, r3, #2
	ldr	r2, [r7, #1552]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
.L684:
	ldr	r3, [r7, #1532]
	adds	r3, r3, #1
	str	r3, [r7, #1532]
.L682:
	adds	r3, r7, #4
	ldr	r2, [r7, #1532]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L685
	movs	r3, #0
.L686:
	mov	r0, r3
	addw	r7, r7, #1540
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L688:
	.align	2
.L687:
	.word	T1_Parse_Glyph-(.LPIC33+4)
	.size	T1_Get_Advances, .-T1_Get_Advances
	.section	.text.T1_Load_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Load_Glyph, %function
T1_Load_Glyph:
	@ args = 0, pretend = 0, frame = 1624
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	subw	sp, sp, #1652
	add	r7, sp, #24
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r3, [r7, #1604]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #1600]
	ldr	r3, [r7, #1600]
	adds	r3, r3, #132
	str	r3, [r7, #1596]
	ldr	r3, [r7, #1600]
	ldr	r3, [r3, #488]
	str	r3, [r7, #1592]
	ldr	r3, [r7, #1592]
	ldr	r3, [r3, #12]
	str	r3, [r7, #1588]
	movs	r3, #0
	strb	r3, [r7, #1619]
	movs	r3, #0
	strb	r3, [r7, #1618]
	ldr	r3, [r7, #1600]
	ldr	r3, [r3, #16]
	mov	r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r2, r3
	bhi	.L690
	ldr	r3, [r7, #1600]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L690
	movs	r3, #6
	str	r3, [r7, #1620]
	b	.L691
.L690:
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L692
	mov	r3, r7
	mov	r2, r7
	ldr	r2, [r2]
	orr	r2, r2, #3
	str	r2, [r3]
.L692:
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L693
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #1604]
	str	r2, [r3, #172]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #1604]
	str	r2, [r3, #176]
	b	.L694
.L693:
	ldr	r3, [r7, #1604]
	mov	r2, #65536
	str	r2, [r3, #172]
	ldr	r3, [r7, #1604]
	mov	r2, #65536
	str	r2, [r3, #176]
.L694:
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	strh	r2, [r3, #110]	@ movhi
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	strh	r2, [r3, #108]	@ movhi
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L695
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L695
	movs	r3, #1
	b	.L696
.L695:
	movs	r3, #0
.L696:
	strb	r3, [r7, #1587]
	add	r3, r7, #12
	ldr	r2, [r3]
	movw	r3, #29804
	movt	r3, 28533
	str	r3, [r2, #72]
	ldr	r3, [r7, #1588]
	ldr	r4, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #1596]
	ldr	lr, [r3, #288]
	ldr	r3, [r7, #1600]
	ldr	r6, [r3, #528]
	mov	r3, r7
	ldr	r3, [r3]
	asrs	r3, r3, #16
	and	r3, r3, #15
	mov	r5, r3
	add	r0, r7, #64
	add	r2, r7, #8
	add	r3, r7, #12
	str	lr, [sp]
	str	r6, [sp, #4]
	ldrb	r6, [r7, #1587]	@ zero_extendqisi2
	str	r6, [sp, #8]
	str	r5, [sp, #12]
	ldr	r5, .L717
.LPIC34:
	add	r5, pc
	str	r5, [sp, #16]
	ldr	r2, [r2]
	ldr	r3, [r3]
	blx	r4
	str	r0, [r7, #1620]
	ldr	r3, [r7, #1620]
	cmp	r3, #0
	beq	.L697
	b	.L691
.L697:
	movs	r3, #1
	strb	r3, [r7, #1619]
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	add	r3, r7, #64
	strb	r2, [r3, #69]
	ldr	r3, [r7, #1596]
	ldr	r2, [r3, #272]
	add	r3, r7, #64
	str	r2, [r3, #1364]
	ldr	r3, [r7, #1596]
	ldr	r2, [r3, #276]
	add	r3, r7, #64
	str	r2, [r3, #1368]
	ldr	r3, [r7, #1596]
	ldr	r2, [r3, #280]
	add	r3, r7, #64
	str	r2, [r3, #1372]
	ldr	r3, [r7, #1600]
	ldr	r2, [r3, #544]
	add	r3, r7, #64
	str	r2, [r3, #1488]
	ldr	r3, [r7, #1600]
	ldr	r2, [r3, #540]
	add	r3, r7, #64
	str	r2, [r3, #1492]
	add	r1, r7, #64
	adds	r2, r7, #4
	add	r3, r7, #32
	mov	r0, r1
	ldr	r1, [r2]
	mov	r2, r3
	bl	T1_Parse_Glyph_And_Get_Char_String(PLT)
	str	r0, [r7, #1620]
	ldr	r3, [r7, #1620]
	cmp	r3, #0
	beq	.L698
	b	.L691
.L698:
	movs	r3, #1
	strb	r3, [r7, #1618]
	add	r2, r7, #48
	add	r3, r7, #64
	mov	r4, r2
	add	r3, r3, #1376
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	add	r3, r7, #40
	add	r2, r7, #64
	add	r2, r2, #1392
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #1588]
	ldr	r3, [r3, #4]
	add	r2, r7, #64
	mov	r0, r2
	blx	r3
	movs	r3, #0
	strb	r3, [r7, #1619]
	ldr	r3, [r7, #1620]
	cmp	r3, #0
	bne	.L691
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #124]
	and	r2, r3, #1
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #124]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #124]
	orr	r2, r3, #4
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #124]
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L699
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #156]
	str	r3, [r7, #1580]
	add	r3, r7, #64
	ldr	r3, [r3, #32]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #32]
	add	r3, r7, #64
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #40]
	ldr	r2, [r7, #1580]
	add	r3, r7, #48
	add	r4, r2, #12
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #1580]
	add	r2, r7, #40
	adds	r3, r3, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #1580]
	movs	r2, #1
	strb	r2, [r3, #8]
	b	.L700
.L699:
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #24
	str	r3, [r7, #1576]
	add	r3, r7, #64
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	ldr	r3, [r7, #1576]
	str	r2, [r3, #16]
	add	r3, r7, #64
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #56]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #156]
	movs	r2, #0
	strb	r2, [r3, #8]
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L701
	ldr	r3, [r7, #1600]
	ldr	r2, [r3, #472]
	ldr	r3, [r7, #1600]
	ldr	r3, [r3, #464]
	subs	r3, r2, r3
	asrs	r2, r3, #16
	ldr	r3, [r7, #1576]
	str	r2, [r3, #28]
	ldr	r3, [r7, #1576]
	ldr	r2, [r3, #28]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #60]
	b	.L702
.L701:
	add	r3, r7, #64
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	ldr	r3, [r7, #1576]
	str	r2, [r3, #28]
	add	r3, r7, #64
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #60]
.L702:
	add	r3, r7, #12
	ldr	r2, [r3]
	movw	r3, #29804
	movt	r3, 28533
	str	r3, [r2, #72]
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L703
	add	r3, r7, #8
	ldr	r3, [r3]
	ldrh	r3, [r3, #14]
	cmp	r3, #23
	bhi	.L703
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #124]
	orr	r2, r3, #256
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #124]
.L703:
	add	r3, r7, #48
	ldr	r3, [r3]
	cmp	r3, #65536
	bne	.L704
	add	r3, r7, #48
	ldr	r3, [r3, #12]
	cmp	r3, #65536
	bne	.L704
	add	r3, r7, #48
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L704
	add	r3, r7, #48
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L705
.L704:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #108
	add	r3, r7, #48
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Transform(PLT)
	ldr	r3, [r7, #1576]
	ldr	r2, [r3, #16]
	add	r3, r7, #48
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1576]
	str	r2, [r3, #16]
	ldr	r3, [r7, #1576]
	ldr	r2, [r3, #28]
	add	r3, r7, #48
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1576]
	str	r2, [r3, #28]
.L705:
	add	r3, r7, #40
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L706
	add	r3, r7, #40
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L707
.L706:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r1, r3, #108
	add	r3, r7, #40
	ldr	r2, [r3]
	add	r3, r7, #40
	ldr	r3, [r3, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
	ldr	r3, [r7, #1576]
	ldr	r2, [r3, #16]
	add	r3, r7, #40
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #1576]
	str	r2, [r3, #16]
	ldr	r3, [r7, #1576]
	ldr	r2, [r3, #28]
	add	r3, r7, #40
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #1576]
	str	r2, [r3, #28]
.L707:
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L708
	add	r3, r7, #64
	ldr	r3, [r3, #16]
	str	r3, [r7, #1572]
	ldr	r3, [r7, #1572]
	ldr	r3, [r3, #4]
	str	r3, [r7, #1608]
	ldr	r3, [r7, #1604]
	ldr	r3, [r3, #172]
	str	r3, [r7, #1568]
	ldr	r3, [r7, #1604]
	ldr	r3, [r3, #176]
	str	r3, [r7, #1564]
	ldrb	r3, [r7, #1587]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L709
	add	r3, r7, #64
	ldr	r3, [r3, #72]
	cmp	r3, #0
	bne	.L710
.L709:
	ldr	r3, [r7, #1572]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	str	r3, [r7, #1612]
	b	.L711
.L712:
	ldr	r3, [r7, #1608]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #1568]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1608]
	str	r2, [r3]
	ldr	r3, [r7, #1608]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #1564]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1608]
	str	r2, [r3, #4]
	ldr	r3, [r7, #1612]
	subs	r3, r3, #1
	str	r3, [r7, #1612]
	ldr	r3, [r7, #1608]
	adds	r3, r3, #8
	str	r3, [r7, #1608]
.L711:
	ldr	r3, [r7, #1612]
	cmp	r3, #0
	bgt	.L712
.L710:
	ldr	r3, [r7, #1576]
	ldr	r3, [r3, #16]
	mov	r0, r3
	ldr	r1, [r7, #1568]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1576]
	str	r2, [r3, #16]
	ldr	r3, [r7, #1576]
	ldr	r3, [r3, #28]
	mov	r0, r3
	ldr	r1, [r7, #1564]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1576]
	str	r2, [r3, #28]
.L708:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #108
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Get_CBox(PLT)
	add	r3, r7, #16
	ldr	r2, [r3, #8]
	add	r3, r7, #16
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #1576]
	str	r2, [r3]
	add	r3, r7, #16
	ldr	r2, [r3, #12]
	add	r3, r7, #16
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #1576]
	str	r2, [r3, #4]
	add	r3, r7, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #1576]
	str	r2, [r3, #8]
	add	r3, r7, #16
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #1576]
	str	r2, [r3, #12]
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L700
	ldr	r3, [r7, #1576]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #1576]
	mov	r1, r3
	bl	ft_synthesize_vertical_metrics(PLT)
.L700:
	add	r3, r7, #32
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #136]
	add	r3, r7, #32
	ldr	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #140]
.L691:
	ldrb	r3, [r7, #1618]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L714
	ldr	r3, [r7, #1600]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L714
	ldr	r3, [r7, #1600]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #1600]
	ldr	r2, [r2, #128]
	ldr	r2, [r2, #48]
	ldr	r1, [r2, #4]
	add	r2, r7, #32
	mov	r0, r1
	mov	r1, r2
	blx	r3
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #136]
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #140]
.L714:
	ldrb	r3, [r7, #1619]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L715
	ldr	r3, [r7, #1588]
	ldr	r3, [r3, #4]
	add	r2, r7, #64
	mov	r0, r2
	blx	r3
.L715:
	ldr	r3, [r7, #1620]
	mov	r0, r3
	addw	r7, r7, #1628
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L718:
	.align	2
.L717:
	.word	T1_Parse_Glyph-(.LPIC34+4)
	.size	T1_Load_Glyph, .-T1_Load_Glyph
	.section	.text.T1_Done_Metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Done_Metrics, %function
T1_Done_Metrics:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T1_Done_Metrics, .-T1_Done_Metrics
	.section	.text.t1_get_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_get_index, %function
t1_get_index:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r3, #65536
	bcc	.L721
	movs	r3, #0
	b	.L722
.L721:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L723
.L725:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #288]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L724
	ldr	r3, [r7, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L724
	ldr	r0, [r7, #20]
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L724
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L724
	ldr	r3, [r7, #28]
	b	.L722
.L724:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L723:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #284]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L725
	movs	r3, #0
.L722:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_get_index, .-t1_get_index
	.section	.text.compare_kern_pairs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	compare_kern_pairs, %function
compare_kern_pairs:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	lsls	r2, r3, #16
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L727
	movs	r3, #1
	b	.L728
.L727:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L729
	mov	r3, #-1
	b	.L728
.L729:
	movs	r3, #0
.L728:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	compare_kern_pairs, .-compare_kern_pairs
	.section	.text.T1_Read_PFM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Read_PFM, %function
T1_Read_PFM:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #36]
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	adds	r3, r3, #99
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	adds	r2, r3, #2
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L731
	movs	r3, #2
	str	r3, [r7, #16]
	b	.L732
.L731:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r3, r3, #18
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	add	r2, r3, #18
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bhi	.L732
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	cmp	r3, #17
	bls	.L732
	ldr	r3, [r7, #52]
	adds	r3, r3, #14
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bne	.L733
	b	.L732
.L733:
	ldr	r3, [r7, #52]
	adds	r2, r3, #2
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L734
	movs	r3, #2
	str	r3, [r7, #16]
	b	.L732
.L734:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L735
	movs	r3, #2
	str	r3, [r7, #16]
	b	.L732
.L735:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	bne	.L736
	b	.L732
.L736:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L737
	b	.L732
.L737:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L738
.L742:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #8]
	cmp	r3, #7
	bne	.L739
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	bl	FT_Set_Charmap(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L740
	b	.L732
.L740:
	b	.L741
.L739:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L738:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bgt	.L742
.L741:
	b	.L743
.L744:
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Get_Char_Index(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Get_Char_Index(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #4]
	ldr	r3, [r7, #52]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #48]
	str	r2, [r3, #8]
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #48]
	adds	r3, r3, #16
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	adds	r3, r3, #4
	str	r3, [r7, #52]
.L743:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L744
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L745
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	bl	FT_Set_Charmap(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
.L745:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L746
	b	.L732
.L746:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #16
	ldr	r3, .L749
.LPIC35:
	add	r3, pc
	bl	qsort(PLT)
.L732:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L747
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
.L747:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L750:
	.align	2
.L749:
	.word	compare_kern_pairs-(.LPIC35+4)
	.size	T1_Read_PFM, .-T1_Read_PFM
	.section	.text.T1_Read_Metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Read_Metrics, %function
T1_Read_Metrics:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	adds	r3, r3, #132
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #492]
	cmp	r3, #0
	beq	.L752
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #492]
	ldr	r0, [r7, #48]
	mov	r1, r3
	bl	T1_Done_Metrics(PLT)
.L752:
	add	r3, r7, #8
	ldr	r0, [r7, #48]
	movs	r1, #44
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L753
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L753
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #40]
	adds	r4, r2, #4
	add	r3, r3, #328
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #340]
	ldr	r3, [r7, #52]
	str	r2, [r3, #20]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #332]
	ldr	r3, [r7, #52]
	str	r2, [r3, #24]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #488]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L754
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #24]
	ldr	r4, [r3]
	ldr	r3, [r7]
	ldr	r1, [r3, #28]
	ldr	r3, [r7]
	ldr	r2, [r3, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	add	r0, r7, #12
	blx	r4
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L754
	ldr	r3, [r7, #52]
	str	r3, [r7, #20]
	ldr	r3, .L759
.LPIC36:
	add	r3, pc
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #8]
	add	r2, r7, #12
	mov	r0, r2
	blx	r3
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #24]
	ldr	r3, [r3, #4]
	add	r2, r7, #12
	mov	r0, r2
	blx	r3
.L754:
	ldr	r3, [r7, #8]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L755
	ldr	r3, [r7]
	ldr	r3, [r3, #32]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #6
	bls	.L755
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #3
	bhi	.L755
	ldr	r3, [r7, #32]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L755
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7, #52]
	bl	T1_Read_PFM(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
.L755:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L756
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #52]
	add	r4, r2, #328
	adds	r3, r3, #4
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	asrs	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #52]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	asrs	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #56]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	add	r3, r3, #65280
	adds	r3, r3, #255
	asrs	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #16]
	add	r3, r3, #65280
	adds	r3, r3, #255
	asrs	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #64]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #20]
	add	r3, r3, #32768
	asrs	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #70]	@ movhi
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #24]
	add	r3, r3, #32768
	asrs	r3, r3, #16
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #72]	@ movhi
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L756
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	orr	r2, r3, #64
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #52]
	str	r2, [r3, #492]
	movs	r3, #0
	str	r3, [r7, #52]
.L756:
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
.L753:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L757
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #52]
	bl	T1_Done_Metrics(PLT)
.L757:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L760:
	.align	2
.L759:
	.word	t1_get_index-(.LPIC36+4)
	.size	T1_Read_Metrics, .-T1_Read_Metrics
	.section	.text.T1_Get_Kerning,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Get_Kerning, %function
T1_Get_Kerning:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	lsls	r2, r3, #16
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	add	r3, r3, #268435456
	subs	r3, r3, #1
	lsls	r3, r3, #4
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #32]
	b	.L762
.L766:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	asrs	r3, r3, #4
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	lsls	r3, r3, #4
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	lsls	r2, r3, #16
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L763
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	b	.L761
.L763:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L765
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	str	r3, [r7, #36]
	b	.L762
.L765:
	ldr	r3, [r7, #24]
	subs	r3, r3, #16
	str	r3, [r7, #32]
.L762:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L766
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
.L761:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	T1_Get_Kerning, .-T1_Get_Kerning
	.section	.text.T1_Get_Track_Kerning,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	T1_Get_Track_Kerning, %function
T1_Get_Track_Kerning:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #492]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L768
	movs	r3, #6
	b	.L769
.L768:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L770
.L775:
	ldr	r3, [r7, #24]
	ldr	r1, [r3, #28]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	beq	.L771
	b	.L772
.L771:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L773
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L772
.L773:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bge	.L774
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L772
.L774:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #8]
	subs	r1, r2, r3
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	ldr	r0, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
.L772:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L770:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L775
	movs	r3, #0
.L769:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	T1_Get_Track_Kerning, .-T1_Get_Track_Kerning
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
