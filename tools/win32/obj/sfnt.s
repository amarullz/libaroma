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
	.file	"sfnt.c"
	.section	.text.tt_face_lookup_table,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_lookup_table, %function
tt_face_lookup_table:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	lsls	r3, r3, #4
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	b	.L2
.L5:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [r7, #12]
	b	.L4
.L3:
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	str	r3, [r7, #12]
.L2:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L5
	movs	r3, #0
.L4:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_face_lookup_table, .-tt_face_lookup_table
	.section	.text.tt_face_goto_table,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_goto_table, %function
tt_face_goto_table:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	tt_face_lookup_table(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L7
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L8
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	str	r2, [r3]
.L8:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L9
	b	.L9
.L7:
	movs	r3, #142
	str	r3, [r7, #20]
.L9:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_goto_table, .-tt_face_goto_table
	.section	.text.check_table_dir,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	check_table_dir, %function
check_table_dir:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strh	r3, [r7, #60]	@ movhi
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	adds	r3, r3, #12
	str	r3, [r7, #44]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #44]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L12
	b	.L13
.L12:
	movs	r3, #0
	strh	r3, [r7, #62]	@ movhi
	b	.L14
.L31:
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	ldr	r2, .L37
.LPIC0:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L15
	ldrh	r3, [r7, #62]
	subs	r3, r3, #1
	strh	r3, [r7, #62]	@ movhi
	ldr	r3, [r7, #12]
	ldrh	r2, [r7, #62]	@ movhi
	strh	r2, [r3, #4]	@ movhi
	b	.L16
.L15:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L17
	b	.L30
.L17:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #28]
	subs	r3, r1, r3
	cmp	r2, r3
	bls	.L19
	ldr	r2, [r7, #20]
	movw	r3, #29816
	movt	r3, 26733
	cmp	r2, r3
	beq	.L20
	ldr	r2, [r7, #20]
	movw	r3, #29816
	movt	r3, 30317
	cmp	r2, r3
	bne	.L21
.L20:
	ldrh	r3, [r7, #60]
	adds	r3, r3, #1
	strh	r3, [r7, #60]	@ movhi
	b	.L22
.L21:
	nop
	b	.L30
.L19:
	ldrh	r3, [r7, #60]
	adds	r3, r3, #1
	strh	r3, [r7, #60]	@ movhi
.L22:
	ldr	r2, [r7, #20]
	movw	r3, #24932
	movt	r3, 26725
	cmp	r2, r3
	beq	.L23
	ldr	r2, [r7, #20]
	movw	r3, #25956
	movt	r3, 25192
	cmp	r2, r3
	bne	.L24
.L23:
	movs	r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #32]
	cmp	r3, #53
	bhi	.L25
	movs	r3, #142
	str	r3, [r7, #36]
	b	.L13
.L25:
	ldr	r3, [r7, #28]
	adds	r3, r3, #12
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L36
	add	r3, r7, #36
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	str	r0, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L36
	ldrh	r3, [r7, #62]
	adds	r3, r3, #1
	lsls	r3, r3, #4
	mov	r2, r3
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L27
	nop
	b	.L13
.L27:
	nop
	b	.L30
.L24:
	ldr	r2, [r7, #20]
	movw	r3, #20039
	movt	r3, 21321
	cmp	r2, r3
	bne	.L29
	movs	r3, #1
	str	r3, [r7, #52]
	b	.L30
.L29:
	ldr	r2, [r7, #20]
	movw	r3, #21569
	movt	r3, 19781
	cmp	r2, r3
	bne	.L30
	movs	r3, #1
	str	r3, [r7, #48]
.L30:
	ldrh	r3, [r7, #62]
	adds	r3, r3, #1
	strh	r3, [r7, #62]	@ movhi
.L14:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #4]
	ldrh	r2, [r7, #62]
	cmp	r2, r3
	bcc	.L31
.L16:
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #60]	@ movhi
	strh	r2, [r3]	@ movhi
	ldrh	r3, [r7, #60]
	cmp	r3, #0
	bne	.L32
	movs	r3, #2
	str	r3, [r7, #36]
	b	.L13
.L32:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L33
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L34
.L33:
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L13
.L34:
	movs	r3, #142
	str	r3, [r7, #36]
	b	.L13
.L36:
	nop
.L13:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L38:
	.align	2
.L37:
	.word	table_dir_entry_fields.7554-(.LPIC0+4)
	.size	check_table_dir, .-check_table_dir
	.section	.text.tt_face_load_font_dir,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_font_dir, %function
tt_face_load_font_dir:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #52]
	ldr	r0, [r7]
	bl	FT_Stream_Pos(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	add	r3, r7, #32
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L40
	add	r3, r7, #36
	ldr	r0, [r7]
	ldr	r2, .L58
.LPIC1:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L40
	ldr	r2, [r7, #36]
	movw	r3, #21583
	movt	r3, 20308
	cmp	r2, r3
	beq	.L41
	add	r2, r7, #36
	add	r3, r7, #30
	mov	r0, r2
	ldr	r1, [r7]
	mov	r2, r3
	bl	check_table_dir(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L42
	b	.L40
.L41:
	ldrh	r3, [r7, #40]
	strh	r3, [r7, #30]	@ movhi
.L42:
	ldrh	r2, [r7, #30]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #152]	@ movhi
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	str	r2, [r3, #148]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #152]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #32
	str	r2, [sp, #4]
	ldr	r0, [r7, #52]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #156]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L43
	b	.L40
.L43:
	ldr	r3, [r7, #48]
	adds	r3, r3, #12
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L40
	ldrh	r3, [r7, #40]
	lsls	r3, r3, #4
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L40
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #62]	@ movhi
	b	.L44
.L56:
	ldr	r0, [r7]
	bl	FT_Stream_GetULong(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7]
	bl	FT_Stream_GetULong(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r0, [r7]
	bl	FT_Stream_GetULong(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r0, [r7]
	bl	FT_Stream_GetULong(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L45
	b	.L55
.L45:
	ldr	r2, [r7, #24]
	ldr	r3, [r7]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #20]
	subs	r3, r1, r3
	cmp	r2, r3
	bls	.L47
	ldr	r2, [r7, #12]
	movw	r3, #29816
	movt	r3, 26733
	cmp	r2, r3
	beq	.L48
	ldr	r2, [r7, #12]
	movw	r3, #29816
	movt	r3, 30317
	cmp	r2, r3
	bne	.L49
.L48:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	bic	r3, r3, #3
	str	r3, [r7, #24]
	b	.L47
.L49:
	b	.L55
.L47:
	movs	r3, #0
	strb	r3, [r7, #59]
	movs	r3, #0
	strh	r3, [r7, #60]	@ movhi
	b	.L50
.L53:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #156]
	ldrh	r3, [r7, #60]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L51
	movs	r3, #1
	strb	r3, [r7, #59]
	b	.L52
.L51:
	ldrh	r3, [r7, #60]
	adds	r3, r3, #1
	strh	r3, [r7, #60]	@ movhi
.L50:
	ldrh	r3, [r7, #30]
	ldrh	r2, [r7, #60]
	cmp	r2, r3
	bcc	.L53
.L52:
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L54
	b	.L55
.L54:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #156]
	ldrh	r3, [r7, #30]
	adds	r1, r3, #1
	uxth	r1, r1
	strh	r1, [r7, #30]	@ movhi
	lsls	r3, r3, #4
	add	r3, r3, r2
	mov	r4, r3
	add	r3, r7, #12
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
.L55:
	ldrh	r3, [r7, #62]
	adds	r3, r3, #1
	strh	r3, [r7, #62]	@ movhi
.L44:
	ldrh	r3, [r7, #40]
	ldrh	r2, [r7, #62]
	cmp	r2, r3
	bcc	.L56
	ldrh	r2, [r7, #30]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #152]	@ movhi
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
.L40:
	ldr	r3, [r7, #32]
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L59:
	.align	2
.L58:
	.word	offset_table_fields.7571-(.LPIC1+4)
	.size	tt_face_load_font_dir, .-tt_face_load_font_dir
	.section	.text.tt_face_load_any,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_any, %function
tt_face_load_any:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L61
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	tt_face_lookup_table(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L62
	movs	r3, #142
	str	r3, [r7, #28]
	b	.L63
.L62:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	str	r3, [r7, #24]
	b	.L64
.L61:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
.L64:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L65
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L65
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	movs	r3, #0
	b	.L66
.L65:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #24]
.L67:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #16]
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	bl	FT_Stream_ReadAt(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L63
	nop
.L63:
	ldr	r3, [r7, #28]
.L66:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_load_any, .-tt_face_load_any
	.section	.text.tt_face_load_generic_header,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_generic_header, %function
tt_face_load_generic_header:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #508]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #8]
	movs	r3, #0
	blx	r4
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L69
	b	.L70
.L69:
	ldr	r3, [r7, #12]
	adds	r3, r3, #160
	str	r3, [r7, #16]
	ldr	r0, [r7, #8]
	ldr	r3, .L72
.LPIC2:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #16]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L70
	nop
.L70:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L73:
	.align	2
.L72:
	.word	header_fields.7602-(.LPIC2+4)
	.size	tt_face_load_generic_header, .-tt_face_load_generic_header
	.section	.text.tt_face_load_head,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_head, %function
tt_face_load_head:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movw	r2, #24932
	movt	r2, 26725
	bl	tt_face_load_generic_header(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_load_head, .-tt_face_load_head
	.section	.text.tt_face_load_bhed,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_bhed, %function
tt_face_load_bhed:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movw	r2, #25956
	movt	r2, 25192
	bl	tt_face_load_generic_header(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_load_bhed, .-tt_face_load_bhed
	.section	.text.tt_face_load_maxp,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_maxp, %function
tt_face_load_maxp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r3, r3, #260
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	ldr	r0, [r7, #4]
	movw	r1, #30832
	movt	r1, 28001
	ldr	r2, [r7]
	movs	r3, #0
	blx	r4
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L79
	b	.L80
.L79:
	ldr	r0, [r7]
	ldr	r3, .L86
.LPIC3:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L81
	b	.L80
.L81:
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #18]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #20]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #22]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #24]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #26]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #28]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #30]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #65536
	blt	.L80
	ldr	r0, [r7]
	ldr	r3, .L86+4
.LPIC4:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L82
	b	.L80
.L82:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #20]
	cmp	r3, #63
	bhi	.L83
	ldr	r3, [r7, #8]
	movs	r2, #64
	strh	r2, [r3, #20]	@ movhi
.L83:
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #16]
	movw	r3, #65531
	cmp	r2, r3
	bls	.L84
	ldr	r3, [r7, #8]
	movw	r2, #65531
	strh	r2, [r3, #16]	@ movhi
.L84:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #30]
	cmp	r3, #100
	bls	.L80
	ldr	r3, [r7, #8]
	movs	r2, #100
	strh	r2, [r3, #30]	@ movhi
.L80:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L87:
	.align	2
.L86:
	.word	maxp_fields.7618-(.LPIC3+4)
	.word	maxp_fields_extra.7619-(.LPIC4+4)
	.size	tt_face_load_maxp, .-tt_face_load_maxp
	.section	.text.tt_face_load_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_name, %function
tt_face_load_name:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	add	r3, r3, #344
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movw	r1, #28005
	movt	r1, 28257
	ldr	r2, [r7]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L89
	b	.L90
.L89:
	ldr	r0, [r7]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #28]
	ldr	r0, [r7]
	ldr	r3, .L101
.LPIC5:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #32]
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L91
	b	.L90
.L91:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #6
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L92
	movs	r3, #145
	str	r3, [r7, #16]
	b	.L90
.L92:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #36]
	movs	r1, #20
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L90
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L90
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #12]
	str	r3, [r7, #40]
	b	.L93
.L99:
	ldr	r0, [r7]
	ldr	r3, .L101+4
.LPIC6:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #40]
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L94
	b	.L95
.L94:
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #8]
	cmp	r3, #0
	bne	.L96
	b	.L95
.L96:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #32]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L97
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L98
.L97:
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	b	.L95
.L98:
	ldr	r3, [r7, #40]
	adds	r3, r3, #20
	str	r3, [r7, #40]
.L95:
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	str	r3, [r7, #44]
.L93:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L99
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	asrs	r2, r3, #2
	movw	r3, #52429
	movt	r3, 52428
	mul	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3, #4]
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #340]	@ movhi
.L90:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L102:
	.align	2
.L101:
	.word	name_table_fields.7633-(.LPIC5+4)
	.word	name_record_fields.7634-(.LPIC6+4)
	.size	tt_face_load_name, .-tt_face_load_name
	.section	.text.tt_face_free_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_free_name, %function
tt_face_free_name:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #344
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L104
	b	.L105
.L106:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #20
	str	r3, [r7, #20]
.L105:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L106
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #12]
.L104:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #8]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_free_name, .-tt_face_free_name
	.section	.text.tt_face_load_cmap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_cmap, %function
tt_face_load_cmap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	ldr	r3, [r7, #4]
	add	r3, r3, #504
	ldr	r0, [r7, #4]
	movw	r1, #24944
	movt	r1, 25453
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L108
	b	.L109
.L108:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #504]
	ldr	r3, [r7, #4]
	add	r3, r3, #500
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L109
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #504]
.L109:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_cmap, .-tt_face_load_cmap
	.section	.text.tt_face_load_os2,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_os2, %function
tt_face_load_os2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	ldr	r0, [r7, #4]
	movw	r1, #12082
	movt	r1, 20307
	ldr	r2, [r7]
	movs	r3, #0
	blx	r4
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L112
	b	.L113
.L112:
	ldr	r3, [r7, #4]
	add	r3, r3, #364
	str	r3, [r7, #8]
	ldr	r0, [r7]
	ldr	r3, .L118
.LPIC7:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L114
	b	.L113
.L114:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #80]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #88]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #90]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #92]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #94]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #96]	@ movhi
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #98]	@ movhi
	ldr	r3, [r7, #8]
	movw	r2, #65535
	strh	r2, [r3, #100]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L113
	ldr	r0, [r7]
	ldr	r3, .L118+4
.LPIC8:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L115
	b	.L113
.L115:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	cmp	r3, #1
	bls	.L113
	ldr	r0, [r7]
	ldr	r3, .L118+8
.LPIC9:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L116
	b	.L113
.L116:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	cmp	r3, #4
	bls	.L113
	ldr	r0, [r7]
	ldr	r3, .L118+12
.LPIC10:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L113
	nop
.L113:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L119:
	.align	2
.L118:
	.word	os2_fields.7663-(.LPIC7+4)
	.word	os2_fields_extra1.7664-(.LPIC8+4)
	.word	os2_fields_extra2.7665-(.LPIC9+4)
	.word	os2_fields_extra5.7666-(.LPIC10+4)
	.size	tt_face_load_os2, .-tt_face_load_os2
	.section	.text.tt_face_load_post,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_post, %function
tt_face_load_post:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r3, r3, #468
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	ldr	r0, [r7, #4]
	movw	r1, #29556
	movt	r1, 28783
	ldr	r2, [r7]
	movs	r3, #0
	blx	r4
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L121
	ldr	r3, [r7, #8]
	b	.L122
.L121:
	ldr	r0, [r7]
	ldr	r3, .L124
.LPIC11:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L123
	ldr	r3, [r7, #8]
	b	.L122
.L123:
	movs	r3, #0
.L122:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L125:
	.align	2
.L124:
	.word	post_fields.7674-(.LPIC11+4)
	.size	tt_face_load_post, .-tt_face_load_post
	.section	.text.tt_face_load_pclt,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_pclt, %function
tt_face_load_pclt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r3, r3, #548
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	ldr	r0, [r7, #4]
	movw	r1, #19540
	movt	r1, 20547
	ldr	r2, [r7]
	movs	r3, #0
	blx	r4
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L127
	b	.L128
.L127:
	ldr	r0, [r7]
	ldr	r3, .L130
.LPIC12:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L128
	nop
.L128:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L131:
	.align	2
.L130:
	.word	pclt_fields.7679-(.LPIC12+4)
	.size	tt_face_load_pclt, .-tt_face_load_pclt
	.section	.text.tt_face_load_gasp,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_gasp, %function
tt_face_load_gasp:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	ldr	r0, [r7, #4]
	movw	r1, #29552
	movt	r1, 26465
	ldr	r2, [r7]
	movs	r3, #0
	blx	r4
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L133
	b	.L134
.L133:
	ldr	r0, [r7]
	movs	r1, #4
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L135
	b	.L134
.L135:
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #540]	@ movhi
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #542]	@ movhi
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #540]
	cmp	r3, #1
	bls	.L136
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #542]	@ movhi
	movs	r3, #8
	str	r3, [r7, #12]
	b	.L134
.L136:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #542]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #12
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #544]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L134
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L134
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L137
.L138:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	adds	r4, r2, r3
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	strh	r3, [r4]	@ movhi
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	adds	r4, r2, r3
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	strh	r3, [r4, #2]	@ movhi
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L137:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L138
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
.L134:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_gasp, .-tt_face_load_gasp
	.section	.text.tt_face_load_hmtx,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_hmtx, %function
tt_face_load_hmtx:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L141
	movw	r3, #29816
	movt	r3, 30317
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	add	r3, r3, #788
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	add	r3, r3, #692
	str	r3, [r7, #28]
	b	.L142
.L141:
	movw	r3, #29816
	movt	r3, 26733
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	add	r3, r3, #784
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	add	r3, r3, #684
	str	r3, [r7, #28]
.L142:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #508]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #8]
	blx	r4
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L143
	b	.L144
.L143:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	str	r2, [r3]
	ldr	r0, [r7, #8]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	str	r2, [r3]
.L144:
	ldr	r3, [r7, #24]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_hmtx, .-tt_face_load_hmtx
	.section	.text.tt_face_load_hhea,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_hhea, %function
tt_face_load_hhea:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L147
	ldr	r3, [r7, #12]
	add	r3, r3, #296
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #508]
	ldr	r0, [r7, #12]
	movw	r1, #25953
	movt	r1, 30312
	ldr	r2, [r7, #8]
	movs	r3, #0
	blx	r4
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L148
	b	.L149
.L148:
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
	b	.L150
.L147:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #508]
	ldr	r0, [r7, #12]
	movw	r1, #25953
	movt	r1, 26728
	ldr	r2, [r7, #8]
	movs	r3, #0
	blx	r4
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L151
	b	.L149
.L151:
	ldr	r3, [r7, #12]
	adds	r3, r3, #216
	str	r3, [r7, #24]
.L150:
	ldr	r0, [r7, #8]
	ldr	r3, .L154
.LPIC13:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #24]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L152
	b	.L149
.L152:
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #40]
.L149:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L155:
	.align	2
.L154:
	.word	metrics_header_fields.7728-(.LPIC13+4)
	.size	tt_face_load_hhea, .-tt_face_load_hhea
	.section	.text.tt_face_get_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_get_metrics, %function
tt_face_get_metrics:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	str	r3, [r7, #32]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L157
	ldr	r3, [r7, #12]
	add	r3, r3, #296
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #788]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #692]
	str	r3, [r7, #36]
	b	.L158
.L157:
	ldr	r3, [r7, #12]
	adds	r3, r3, #216
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #784]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #684]
	str	r3, [r7, #36]
.L158:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #34]	@ movhi
	strh	r3, [r7, #22]	@ movhi
	ldrh	r3, [r7, #22]
	cmp	r3, #0
	beq	.L159
	ldrh	r2, [r7, #22]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L160
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #4
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L161
	b	.L159
.L161:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #40]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L159
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L159
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L159
	b	.L156
.L160:
	ldrh	r3, [r7, #22]
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #4
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L163
	b	.L159
.L163:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #40]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L159
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #56]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L159
	ldrh	r3, [r7, #22]
	ldr	r2, [r7, #4]
	subs	r3, r2, r3
	adds	r3, r3, #2
	lsls	r3, r3, #1
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	adds	r2, r3, #2
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L164
	ldr	r3, [r7]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	b	.L156
.L164:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #40]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L156
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	b	.L156
.L159:
	ldr	r3, [r7]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #56]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
.L156:
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_get_metrics, .-tt_face_get_metrics
	.section	.text.tt_cmap_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap_init, %function
tt_cmap_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap_init, .-tt_cmap_init
	.section	.text.tt_cmap0_validate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap0_validate, %function
tt_cmap0_validate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L169
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L169:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bhi	.L170
	ldr	r3, [r7, #12]
	cmp	r3, #262
	bcs	.L171
.L170:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L171:
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L172
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L173
.L175:
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L174
	ldr	r0, [r7]
	movs	r1, #16
	bl	ft_validator_error(PLT)
.L174:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L173:
	ldr	r3, [r7, #16]
	cmp	r3, #255
	bls	.L175
.L172:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap0_validate, .-tt_cmap0_validate
	.section	.text.tt_cmap0_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap0_char_index, %function
tt_cmap0_char_index:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	cmp	r3, #255
	bhi	.L178
	ldr	r3, [r7]
	adds	r3, r3, #6
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L179
.L178:
	movs	r3, #0
.L179:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap0_char_index, .-tt_cmap0_char_index
	.section	.text.tt_cmap0_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap0_char_next, %function
tt_cmap0_char_next:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #6
	str	r3, [r7, #8]
	b	.L182
.L184:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L182
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	b	.L183
.L182:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #255
	bls	.L184
.L183:
	ldr	r3, [r7]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap0_char_next, .-tt_cmap0_char_next
	.section	.text.tt_cmap0_get_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap0_get_info, %function
tt_cmap0_get_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap0_get_info, .-tt_cmap0_get_info
	.global	tt_cmap0_class_rec
	.section	.data.rel.ro.local.tt_cmap0_class_rec,"aw",%progbits
	.align	2
	.type	tt_cmap0_class_rec, %object
	.size	tt_cmap0_class_rec, 52
tt_cmap0_class_rec:
	.word	24
	.word	tt_cmap_init
	.word	0
	.word	tt_cmap0_char_index
	.word	tt_cmap0_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	tt_cmap0_validate
	.word	tt_cmap0_get_info
	.section	.text.tt_cmap2_validate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap2_validate, %function
tt_cmap2_validate:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L189
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L189:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #56]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #56]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bhi	.L190
	ldr	r2, [r7, #56]
	movw	r3, #517
	cmp	r2, r3
	bhi	.L191
.L190:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L191:
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L192
.L195:
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #48]
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #1
	bls	.L193
	ldr	r3, [r7, #48]
	and	r3, r3, #7
	cmp	r3, #0
	beq	.L193
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L193:
	ldr	r3, [r7, #48]
	lsrs	r3, r3, #3
	str	r3, [r7, #48]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bls	.L194
	ldr	r3, [r7, #48]
	str	r3, [r7, #60]
.L194:
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L192:
	ldr	r3, [r7, #64]
	cmp	r3, #255
	bls	.L195
	ldr	r3, [r7, #68]
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	lsls	r3, r3, #3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7]
	ldr	r2, [r3, #396]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L196
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L196:
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L197
.L206:
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L198
	b	.L199
.L198:
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #1
	bls	.L200
	ldr	r3, [r7, #36]
	cmp	r3, #255
	bhi	.L201
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	cmp	r3, #256
	bls	.L200
.L201:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L200:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L199
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L202
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	ldr	r2, [r7, #20]
	add	r2, r2, r3
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #56]
	add	r3, r3, r1
	cmp	r2, r3
	bls	.L203
.L202:
	ldr	r0, [r7]
	movs	r1, #9
	bl	ft_validator_error(PLT)
.L203:
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L199
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #16]
	b	.L204
.L205:
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L204
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L204
	ldr	r0, [r7]
	movs	r1, #16
	bl	ft_validator_error(PLT)
.L204:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L205
.L199:
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L197:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bls	.L206
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap2_validate, .-tt_cmap2_validate
	.section	.text.tt_cmap2_get_subheader,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap2_get_subheader, %function
tt_cmap2_get_subheader:
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
	cmp	r3, #65536
	bcs	.L209
	ldr	r3, [r7]
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7]
	lsrs	r3, r3, #8
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	addw	r3, r3, #518
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L210
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	beq	.L211
	b	.L209
.L210:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	bic	r3, r3, #7
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L211
	b	.L209
.L211:
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
.L209:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap2_get_subheader, .-tt_cmap2_get_subheader
	.section	.text.tt_cmap2_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap2_char_index, %function
tt_cmap2_char_index:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r0, [r7, #40]
	ldr	r1, [r7]
	bl	tt_cmap2_get_subheader(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L214
	ldr	r3, [r7, #36]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	uxtb	r3, r3
	str	r3, [r7, #28]
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
	str	r3, [r7, #24]
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
	str	r3, [r7, #20]
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
	sxth	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L214
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L214
	ldr	r3, [r7, #28]
	lsls	r2, r3, #1
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L214
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #44]
.L214:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap2_char_index, .-tt_cmap2_char_index
	.section	.text.tt_cmap2_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap2_char_next, %function
tt_cmap2_char_next:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	b	.L217
.L226:
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #52]
	bl	tt_cmap2_get_subheader(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L218
	ldr	r3, [r7, #32]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #52]
	uxtb	r3, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L219
	b	.L218
.L219:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L220
	ldr	r3, [r7, #28]
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L221
.L220:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #40]
.L221:
	ldr	r3, [r7, #40]
	lsls	r2, r3, #1
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	bic	r2, r3, #255
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L222
.L225:
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L223
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L223
	ldr	r3, [r7, #52]
	str	r3, [r7, #56]
	b	.L224
.L223:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L222:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L225
.L218:
	ldr	r3, [r7, #52]
	bic	r3, r3, #255
	add	r3, r3, #256
	str	r3, [r7, #52]
.L217:
	ldr	r3, [r7, #52]
	cmp	r3, #65536
	bcc	.L226
.L224:
	ldr	r3, [r7]
	ldr	r2, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #60]
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap2_char_next, .-tt_cmap2_char_next
	.section	.text.tt_cmap2_get_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap2_get_info, %function
tt_cmap2_get_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap2_get_info, .-tt_cmap2_get_info
	.global	tt_cmap2_class_rec
	.section	.data.rel.ro.local.tt_cmap2_class_rec,"aw",%progbits
	.align	2
	.type	tt_cmap2_class_rec, %object
	.size	tt_cmap2_class_rec, 52
tt_cmap2_class_rec:
	.word	24
	.word	tt_cmap_init
	.word	0
	.word	tt_cmap2_char_index
	.word	tt_cmap2_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	2
	.word	tt_cmap2_validate
	.word	tt_cmap2_get_info
	.section	.text.tt_cmap4_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap4_init, %function
tt_cmap4_init:
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
	str	r2, [r3, #16]
	ldr	r3, [r7]
	adds	r3, r3, #6
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	lsrs	r3, r3, #1
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap4_init, .-tt_cmap4_init
	.section	.text.tt_cmap4_set_range,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap4_set_range, %function
tt_cmap4_set_range:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	b	.L233
.L239:
	ldr	r3, [r7]
	adds	r3, r3, #7
	lsls	r3, r3, #1
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #48]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	subs	r2, r3, #1
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L234
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L234
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #44]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L234
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #500]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #504]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L234
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L234
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #48]
	movs	r3, #0
	str	r3, [r7, #28]
.L234:
	ldr	r2, [r7, #28]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L235
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L236
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	b	.L237
.L236:
	movs	r3, #0
.L237:
	ldr	r2, [r7, #4]
	str	r3, [r2, #52]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #36]
	movs	r3, #0
	b	.L238
.L235:
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
.L233:
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L239
	mov	r3, #-1
.L238:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap4_set_range, .-tt_cmap4_set_range
	.section	.text.tt_cmap4_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap4_next, %function
tt_cmap4_next:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	movw	r3, #65534
	cmp	r2, r3
	bls	.L241
	b	.L242
.L241:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L243
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #36]
.L243:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	str	r3, [r7, #20]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L244
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L245
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	ldr	r2, [r7, #36]
	subs	r3, r2, r3
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #32]
.L248:
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
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L246
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L246
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #28]
	b	.L240
.L246:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L248
	b	.L244
.L245:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L249
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #28]
	b	.L240
.L249:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L245
.L244:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	adds	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	tt_cmap4_set_range(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L250
	b	.L242
.L250:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L251
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #36]
	b	.L243
.L251:
	b	.L243
.L242:
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
.L240:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap4_next, .-tt_cmap4_next
	.section	.text.tt_cmap4_validate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap4_validate, %function
tt_cmap4_validate:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #112
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #100]
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L253
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L253:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	adds	r3, r3, #2
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #108]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #104]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #104]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L254
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L255
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L255:
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	mov	r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #104]
.L254:
	ldr	r3, [r7, #104]
	cmp	r3, #15
	bhi	.L256
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L256:
	ldr	r3, [r7, #4]
	adds	r3, r3, #6
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	adds	r3, r3, #2
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #108]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #64]
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #1
	bls	.L257
	ldr	r3, [r7, #64]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L257
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L257:
	ldr	r3, [r7, #64]
	lsrs	r3, r3, #1
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	lsls	r2, r3, #3
	ldr	r3, [r7, #104]
	cmp	r2, r3
	bls	.L258
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L258:
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #1
	bls	.L259
	ldr	r3, [r7, #108]
	adds	r3, r3, #2
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #108]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #108]
	adds	r3, r3, #2
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #108]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #108]
	adds	r3, r3, #2
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #108]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #52]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #52]
	orrs	r3, r3, r2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L260
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L260:
	ldr	r3, [r7, #60]
	lsrs	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #52]
	lsrs	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bhi	.L261
	ldr	r3, [r7, #60]
	lsls	r2, r3, #1
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcc	.L261
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bne	.L261
	ldr	r3, [r7, #56]
	movs	r2, #1
	lsls	r2, r2, r3
	ldr	r3, [r7, #60]
	cmp	r2, r3
	beq	.L259
.L261:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L259:
	ldr	r3, [r7, #4]
	adds	r3, r3, #14
	str	r3, [r7, #48]
	ldr	r3, [r7, #64]
	adds	r3, r3, #8
	lsls	r3, r3, #1
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #1
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #1
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #1
	bls	.L262
	ldr	r3, [r7, #64]
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	cmp	r3, #-1
	beq	.L262
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L262:
	movs	r3, #0
	str	r3, [r7, #92]
	movs	r3, #0
	str	r3, [r7, #88]
	ldr	r3, [r7, #44]
	str	r3, [r7, #84]
	ldr	r3, [r7, #48]
	str	r3, [r7, #80]
	ldr	r3, [r7, #40]
	str	r3, [r7, #76]
	ldr	r3, [r7, #36]
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #96]
	b	.L263
.L282:
	ldr	r3, [r7, #72]
	str	r3, [r7, #108]
	ldr	r3, [r7, #84]
	adds	r3, r3, #2
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #80]
	adds	r3, r3, #2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #76]
	adds	r3, r3, #2
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #20]
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
	str	r3, [r7, #16]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L264
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L264:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bhi	.L265
	ldr	r3, [r7, #96]
	cmp	r3, #0
	beq	.L265
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L266
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
	b	.L265
.L266:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L267
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L268
.L267:
	ldr	r3, [r7, #100]
	orr	r3, r3, #1
	str	r3, [r7, #100]
	b	.L265
.L268:
	ldr	r3, [r7, #100]
	orr	r3, r3, #2
	str	r3, [r7, #100]
.L265:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L269
	ldr	r2, [r7, #16]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L269
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L270
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L271
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #108]
	add	r2, r2, r3
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #104]
	add	r3, r3, r1
	cmp	r2, r3
	bls	.L273
.L271:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
	b	.L273
.L270:
	ldr	r3, [r7, #64]
	subs	r2, r3, #1
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bne	.L274
	ldr	r2, [r7, #28]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L274
	ldr	r2, [r7, #24]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L273
.L274:
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L275
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #108]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L273
.L275:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L273:
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L276
	ldr	r3, [r7, #28]
	str	r3, [r7, #68]
	b	.L277
.L279:
	ldr	r3, [r7, #108]
	adds	r3, r3, #2
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #108]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L278
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L278
	ldr	r0, [r7]
	movs	r1, #16
	bl	ft_validator_error(PLT)
.L278:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L277:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L279
.L276:
	b	.L280
.L269:
	ldr	r2, [r7, #16]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L280
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #1
	bhi	.L281
	ldr	r3, [r7, #64]
	subs	r2, r3, #1
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bne	.L281
	ldr	r2, [r7, #28]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L281
	ldr	r2, [r7, #24]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L280
.L281:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L280:
	ldr	r3, [r7, #28]
	str	r3, [r7, #92]
	ldr	r3, [r7, #24]
	str	r3, [r7, #88]
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L263:
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcc	.L282
	ldr	r3, [r7, #100]
	mov	r0, r3
	adds	r7, r7, #112
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap4_validate, .-tt_cmap4_validate
	.section	.text.tt_cmap4_char_map_linear,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap4_char_map_linear, %function
tt_cmap4_char_map_linear:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #76
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #500]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #504]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r3, r3, #6
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	bic	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	lsrs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L285
	movs	r3, #0
	b	.L286
.L285:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L287
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L287:
	ldr	r3, [r7, #56]
	cmp	r3, #65536
	bcc	.L288
	movs	r3, #0
	b	.L286
.L288:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r3, r3, #14
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #32]
	adds	r3, r3, #16
	add	r3, r3, r2
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L289
.L304:
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #44]
	adds	r3, r3, #2
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L290
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L291
	ldr	r3, [r7, #20]
	str	r3, [r7, #56]
	b	.L290
.L291:
	b	.L292
.L290:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L293
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #64]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #68]
	ldr	r3, [r7, #28]
	subs	r2, r3, #1
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L294
	ldr	r2, [r7, #20]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L294
	ldr	r2, [r7, #24]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L294
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L294
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L294
	movs	r3, #1
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #68]
.L294:
	ldr	r2, [r7, #68]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L295
	b	.L293
.L295:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L296
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	lsls	r2, r3, #1
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L297
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L297
	b	.L293
.L297:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L299
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bhi	.L299
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L299
.L296:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #52]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L299
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bhi	.L299
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L300
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	cmp	r3, #0
	blt	.L300
	ldr	r3, [r7, #64]
	negs	r3, r3
	str	r3, [r7, #56]
	b	.L299
.L300:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	cmp	r3, #65536
	bge	.L301
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	cmp	r3, #65536
	blt	.L301
	ldr	r3, [r7, #64]
	rsb	r3, r3, #65536
	str	r3, [r7, #56]
	b	.L299
.L301:
	b	.L293
.L299:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L302
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L302
	ldr	r2, [r7, #56]
	movw	r3, #65534
	cmp	r2, r3
	bls	.L303
	b	.L292
.L303:
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	b	.L290
.L302:
	b	.L292
.L293:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L289:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L304
.L292:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L305
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #56]
	str	r2, [r3]
.L305:
	ldr	r3, [r7, #52]
.L286:
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap4_char_map_linear, .-tt_cmap4_char_map_linear
	.section	.text.tt_cmap4_char_map_binary,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap4_char_map_binary, %function
tt_cmap4_char_map_binary:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #96
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r3, r3, #6
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	bic	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L307
	movs	r3, #0
	b	.L308
.L307:
	ldr	r3, [r7, #48]
	lsrs	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	str	r3, [r7, #68]
	movw	r3, #65535
	str	r3, [r7, #88]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L309
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L309:
	movs	r3, #0
	str	r3, [r7, #72]
	ldr	r3, [r7, #44]
	str	r3, [r7, #76]
	b	.L310
.L334:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #68]
	adds	r3, r3, #7
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #88]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #92]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bcs	.L311
	ldr	r3, [r7, #68]
	str	r3, [r7, #76]
	b	.L310
.L311:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bls	.L312
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #72]
	b	.L310
.L312:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #80]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #84]
	ldr	r3, [r7, #44]
	subs	r2, r3, #1
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L313
	ldr	r2, [r7, #92]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L313
	ldr	r2, [r7, #88]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L313
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #500]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #504]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L313
	ldr	r3, [r7, #84]
	adds	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r2, r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L313
	movs	r3, #1
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #84]
.L313:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L314
	ldr	r3, [r7, #68]
	str	r3, [r7, #76]
	ldr	r2, [r7, #84]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L315
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L315:
	ldr	r3, [r7, #76]
	str	r3, [r7, #52]
	b	.L316
.L320:
	ldr	r3, [r7, #56]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #52]
	adds	r3, r3, #6
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L317
	ldr	r3, [r7, #32]
	str	r3, [r7, #56]
	b	.L318
.L317:
	ldr	r3, [r7, #28]
	str	r3, [r7, #88]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #92]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #80]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #84]
	ldr	r2, [r7, #84]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L319
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #68]
.L319:
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L316:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L320
.L318:
	ldr	r3, [r7, #76]
	adds	r2, r3, #1
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bne	.L321
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	beq	.L322
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #76]
	adds	r3, r3, #7
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #88]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #92]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #80]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #84]
.L322:
	ldr	r3, [r7, #76]
	str	r3, [r7, #68]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	b	.L323
.L327:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #52]
	adds	r3, r3, #7
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L324
	b	.L325
.L324:
	ldr	r3, [r7, #24]
	str	r3, [r7, #88]
	ldr	r3, [r7, #20]
	str	r3, [r7, #92]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #80]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #84]
	ldr	r2, [r7, #84]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L326
	ldr	r3, [r7, #52]
	str	r3, [r7, #68]
.L326:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L323:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bcc	.L327
.L325:
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bne	.L321
	ldr	r3, [r7, #52]
	str	r3, [r7, #68]
	b	.L328
.L321:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	beq	.L329
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #68]
	adds	r3, r3, #7
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #88]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #92]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #80]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #84]
	b	.L330
.L329:
	b	.L330
.L314:
	ldr	r2, [r7, #84]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L330
	b	.L328
.L330:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L331
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #92]
	subs	r3, r2, r3
	lsls	r2, r3, #1
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L333
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #80]
	add	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #60]
	b	.L328
.L331:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #80]
	add	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #60]
	b	.L328
.L333:
	b	.L328
.L310:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bcc	.L334
.L328:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L335
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bls	.L336
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bne	.L336
	movs	r3, #0
	b	.L308
.L336:
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #68]
	bl	tt_cmap4_set_range(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L337
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L335
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #64]
	str	r2, [r3]
	b	.L335
.L337:
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #64]
	str	r2, [r3, #24]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L339
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #60]
	str	r2, [r3, #28]
	b	.L340
.L339:
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #64]
	str	r2, [r3, #24]
	ldr	r0, [r7, #16]
	bl	tt_cmap4_next(PLT)
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	str	r3, [r7, #60]
.L340:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L335
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L335:
	ldr	r3, [r7, #60]
.L308:
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap4_char_map_binary, .-tt_cmap4_char_map_binary
	.section	.text.tt_cmap4_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap4_char_index, %function
tt_cmap4_char_index:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #65536
	bcc	.L342
	movs	r3, #0
	b	.L343
.L342:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L344
	mov	r3, r7
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	tt_cmap4_char_map_linear(PLT)
	mov	r3, r0
	b	.L343
.L344:
	mov	r3, r7
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	tt_cmap4_char_map_binary(PLT)
	mov	r3, r0
.L343:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap4_char_index, .-tt_cmap4_char_index
	.section	.text.tt_cmap4_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap4_char_next, %function
tt_cmap4_char_next:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]
	movw	r3, #65534
	cmp	r2, r3
	bls	.L346
	movs	r3, #0
	b	.L347
.L346:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L348
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #1
	bl	tt_cmap4_char_map_linear(PLT)
	str	r0, [r7, #12]
	b	.L349
.L348:
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	cmp	r2, r3
	bne	.L350
	ldr	r0, [r7, #8]
	bl	tt_cmap4_next(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L349
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L349
.L350:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #1
	bl	tt_cmap4_char_map_binary(PLT)
	str	r0, [r7, #12]
.L349:
	ldr	r3, [r7, #12]
.L347:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap4_char_next, .-tt_cmap4_char_next
	.section	.text.tt_cmap4_get_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap4_get_info, %function
tt_cmap4_get_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap4_get_info, .-tt_cmap4_get_info
	.global	tt_cmap4_class_rec
	.section	.data.rel.ro.local.tt_cmap4_class_rec,"aw",%progbits
	.align	2
	.type	tt_cmap4_class_rec, %object
	.size	tt_cmap4_class_rec, 52
tt_cmap4_class_rec:
	.word	56
	.word	tt_cmap4_init
	.word	0
	.word	tt_cmap4_char_index
	.word	tt_cmap4_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	4
	.word	tt_cmap4_validate
	.word	tt_cmap4_get_info
	.section	.text.tt_cmap6_validate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap6_validate, %function
tt_cmap6_validate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r2, r3, #10
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L355
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L355:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bhi	.L356
	ldr	r3, [r7, #16]
	adds	r3, r3, #5
	lsls	r2, r3, #1
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L357
.L356:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L357:
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L358
	b	.L359
.L361:
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L360
	ldr	r0, [r7]
	movs	r1, #16
	bl	ft_validator_error(PLT)
.L360:
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L359:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L361
.L358:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap6_validate, .-tt_cmap6_validate
	.section	.text.tt_cmap6_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap6_char_index, %function
tt_cmap6_char_index:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	adds	r3, r3, #6
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L364
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
.L364:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap6_char_index, .-tt_cmap6_char_index
	.section	.text.tt_cmap6_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap6_char_next, %function
tt_cmap6_char_next:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	adds	r3, r3, #6
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #32]
	cmp	r3, #65536
	bcc	.L367
	movs	r3, #0
	b	.L368
.L367:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L369
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
.L369:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #24]
	b	.L370
.L374:
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L371
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	b	.L372
.L371:
	ldr	r2, [r7, #32]
	movw	r3, #65534
	cmp	r2, r3
	bls	.L373
	movs	r3, #0
	b	.L368
.L373:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L370:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L374
.L372:
	ldr	r3, [r7]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #28]
.L368:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap6_char_next, .-tt_cmap6_char_next
	.section	.text.tt_cmap6_get_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap6_get_info, %function
tt_cmap6_get_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #6
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap6_get_info, .-tt_cmap6_get_info
	.global	tt_cmap6_class_rec
	.section	.data.rel.ro.local.tt_cmap6_class_rec,"aw",%progbits
	.align	2
	.type	tt_cmap6_class_rec, %object
	.size	tt_cmap6_class_rec, 52
tt_cmap6_class_rec:
	.word	24
	.word	tt_cmap_init
	.word	0
	.word	tt_cmap6_char_index
	.word	tt_cmap6_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	6
	.word	tt_cmap6_validate
	.word	tt_cmap6_get_info
	.section	.text.tt_cmap8_validate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap8_validate, %function
tt_cmap8_validate:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	add	r3, r3, #8192
	adds	r3, r3, #16
	ldr	r2, [r7]
	ldr	r2, [r2, #396]
	cmp	r3, r2
	bls	.L378
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L378:
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #60]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	mov	r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L379
	ldr	r2, [r7, #40]
	movw	r3, #8207
	cmp	r2, r3
	bhi	.L380
.L379:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L380:
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	add	r3, r3, #8192
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #60]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	mov	r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	mov	r2, r3
	movw	r3, #43691
	movt	r3, 43690
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcs	.L381
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L381:
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L382
.L397:
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #60]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #60]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #60]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L383
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L383:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L384
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L384
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L384:
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L385
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L386
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L387
.L386:
	ldr	r0, [r7]
	movs	r1, #16
	bl	ft_validator_error(PLT)
.L387:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	adds	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	cmp	r3, #0
	beq	.L388
	b	.L389
.L392:
	ldr	r3, [r7, #52]
	lsrs	r3, r3, #16
	str	r3, [r7, #16]
	ldr	r3, [r7, #52]
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #16]
	and	r3, r3, #7
	movs	r1, #128
	asr	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L390
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L390:
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	and	r3, r3, #7
	movs	r1, #128
	asr	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L391
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L391:
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L389:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L392
	b	.L385
.L388:
	ldr	r3, [r7, #28]
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	cmp	r3, #0
	beq	.L393
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
	b	.L394
.L393:
	b	.L394
.L396:
	ldr	r3, [r7, #52]
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #3
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	and	r3, r3, #7
	movs	r1, #128
	asr	r3, r1, r3
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L395
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L395:
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L394:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L396
.L385:
	ldr	r3, [r7, #28]
	str	r3, [r7, #44]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L382:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L397
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap8_validate, .-tt_cmap8_validate
	.section	.text.tt_cmap8_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap8_char_index, %function
tt_cmap8_char_index:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	add	r3, r3, #8192
	adds	r3, r3, #12
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	b	.L400
.L406:
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L401
	b	.L402
.L401:
	ldr	r2, [r7]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L403
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L404
	movs	r3, #0
	b	.L405
.L404:
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L402
.L403:
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L400:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L406
.L402:
	ldr	r3, [r7, #36]
.L405:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap8_char_index, .-tt_cmap8_char_index
	.section	.text.tt_cmap8_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap8_char_next, %function
tt_cmap8_char_next:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	add	r3, r3, #8192
	adds	r3, r3, #12
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #-1
	bne	.L408
	movs	r3, #0
	b	.L409
.L408:
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #20]
	add	r3, r3, #8192
	adds	r3, r3, #16
	str	r3, [r7, #32]
	b	.L410
.L418:
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L411
	ldr	r3, [r7, #16]
	str	r3, [r7, #40]
.L411:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L412
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L413
	b	.L412
.L413:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #16]
	subs	r2, r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L414
	ldr	r3, [r7, #40]
	cmp	r3, #-1
	bne	.L415
	b	.L416
.L415:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	b	.L411
.L414:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L417
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L412
.L417:
	ldr	r3, [r7, #40]
	str	r3, [r7, #44]
	b	.L416
.L412:
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
.L410:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L418
.L416:
	ldr	r3, [r7]
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #36]
.L409:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap8_char_next, .-tt_cmap8_char_next
	.section	.text.tt_cmap8_get_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap8_get_info, %function
tt_cmap8_get_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #8
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap8_get_info, .-tt_cmap8_get_info
	.global	tt_cmap8_class_rec
	.section	.data.rel.ro.local.tt_cmap8_class_rec,"aw",%progbits
	.align	2
	.type	tt_cmap8_class_rec, %object
	.size	tt_cmap8_class_rec, 52
tt_cmap8_class_rec:
	.word	24
	.word	tt_cmap_init
	.word	0
	.word	tt_cmap8_char_index
	.word	tt_cmap8_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	8
	.word	tt_cmap8_validate
	.word	tt_cmap8_get_info
	.section	.text.tt_cmap10_validate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap10_validate, %function
tt_cmap10_validate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #20
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L422
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L422:
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	mov	r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L423
	ldr	r3, [r7, #12]
	cmp	r3, #19
	bls	.L423
	ldr	r3, [r7, #12]
	subs	r3, r3, #20
	lsrs	r2, r3, #1
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L424
.L423:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L424:
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L425
	b	.L426
.L428:
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L427
	ldr	r0, [r7]
	movs	r1, #16
	bl	ft_validator_error(PLT)
.L427:
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L426:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L428
.L425:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap10_validate, .-tt_cmap10_validate
	.section	.text.tt_cmap10_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap10_char_index, %function
tt_cmap10_char_index:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	adds	r3, r3, #12
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L431
	movs	r3, #0
	b	.L432
.L431:
	ldr	r2, [r7]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L433
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
.L433:
	ldr	r3, [r7, #28]
.L432:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap10_char_index, .-tt_cmap10_char_index
	.section	.text.tt_cmap10_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap10_char_next, %function
tt_cmap10_char_next:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	adds	r3, r3, #12
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #-1
	bne	.L435
	movs	r3, #0
	b	.L436
.L435:
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L437
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
.L437:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #28]
	b	.L438
.L442:
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
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L439
	b	.L440
.L439:
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	bne	.L441
	movs	r3, #0
	b	.L436
.L441:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L438:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L442
.L440:
	ldr	r3, [r7]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #32]
.L436:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap10_char_next, .-tt_cmap10_char_next
	.section	.text.tt_cmap10_get_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap10_get_info, %function
tt_cmap10_get_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #10
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap10_get_info, .-tt_cmap10_get_info
	.global	tt_cmap10_class_rec
	.section	.data.rel.ro.local.tt_cmap10_class_rec,"aw",%progbits
	.align	2
	.type	tt_cmap10_class_rec, %object
	.size	tt_cmap10_class_rec, 52
tt_cmap10_class_rec:
	.word	24
	.word	tt_cmap_init
	.word	0
	.word	tt_cmap10_char_index
	.word	tt_cmap10_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	10
	.word	tt_cmap10_validate
	.word	tt_cmap10_get_info
	.section	.text.tt_cmap12_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap12_init, %function
tt_cmap12_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7]
	adds	r3, r3, #12
	str	r3, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #24]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap12_init, .-tt_cmap12_init
	.section	.text.tt_cmap12_validate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap12_validate, %function
tt_cmap12_validate:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L448
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L448:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #44]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #44]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	mov	r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L449
	ldr	r3, [r7, #32]
	cmp	r3, #15
	bls	.L449
	ldr	r3, [r7, #32]
	sub	r2, r3, #16
	movw	r3, #43691
	movt	r3, 43690
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L450
.L449:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L450:
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L451
.L456:
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #44]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #44]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #44]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L452
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L452:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L453
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L453
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L453:
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L454
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L455
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #12]
	subs	r2, r2, r3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L454
.L455:
	ldr	r0, [r7]
	movs	r1, #16
	bl	ft_validator_error(PLT)
.L454:
	ldr	r3, [r7, #20]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L451:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L456
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap12_validate, .-tt_cmap12_validate
	.section	.text.tt_cmap12_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap12_next, %function
tt_cmap12_next:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #-1
	bne	.L459
	b	.L460
.L459:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	str	r3, [r7, #32]
	b	.L461
.L469:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #16]
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #16
	add	r3, r3, r1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L462
	ldr	r3, [r7, #20]
	str	r3, [r7, #36]
.L462:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L463
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L464
	b	.L463
.L464:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L465
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	bne	.L466
	b	.L460
.L466:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	b	.L462
.L465:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L467
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L463
.L467:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [r3, #36]
	b	.L458
.L463:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L461:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bhi	.L469
.L460:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #24]
.L458:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap12_next, .-tt_cmap12_next
	.section	.text.tt_cmap12_char_map_binary,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap12_char_map_binary, %function
tt_cmap12_char_map_binary:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r3, r3, #12
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L471
	movs	r3, #0
	b	.L472
.L471:
	ldr	r3, [r7, #32]
	str	r3, [r7, #40]
	mov	r3, #-1
	str	r3, [r7, #52]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L473
	ldr	r3, [r7, #56]
	cmp	r3, #-1
	bne	.L474
	movs	r3, #0
	b	.L472
.L474:
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L473:
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #32]
	str	r3, [r7, #48]
	b	.L475
.L481:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #16]
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #16
	add	r3, r3, r1
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L476
	ldr	r3, [r7, #40]
	str	r3, [r7, #48]
	b	.L475
.L476:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L477
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	b	.L475
.L477:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	mvns	r2, r3
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcs	.L478
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L480
.L478:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #28]
	subs	r2, r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #60]
	b	.L480
.L475:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L481
.L480:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L482
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L483
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L483
	movs	r3, #0
	b	.L472
.L483:
	ldr	r3, [r7, #16]
	movs	r2, #1
	strb	r2, [r3, #24]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #56]
	str	r2, [r3, #28]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #40]
	str	r2, [r3, #36]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L484
	movs	r3, #0
	str	r3, [r7, #60]
.L484:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L485
	ldr	r0, [r7, #16]
	bl	tt_cmap12_next(PLT)
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L487
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #32]
	str	r3, [r7, #60]
	b	.L487
.L485:
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #60]
	str	r2, [r3, #32]
.L487:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L482:
	ldr	r3, [r7, #60]
.L472:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap12_char_map_binary, .-tt_cmap12_char_map_binary
	.section	.text.tt_cmap12_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap12_char_index, %function
tt_cmap12_char_index:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r3, r7
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	tt_cmap12_char_map_binary(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap12_char_index, .-tt_cmap12_char_index
	.section	.text.tt_cmap12_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap12_char_next, %function
tt_cmap12_char_next:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L491
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L491
	ldr	r0, [r7, #8]
	bl	tt_cmap12_next(PLT)
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L492
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L494
.L492:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L494
.L491:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #1
	bl	tt_cmap12_char_map_binary(PLT)
	str	r0, [r7, #12]
.L494:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap12_char_next, .-tt_cmap12_char_next
	.section	.text.tt_cmap12_get_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap12_get_info, %function
tt_cmap12_get_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #12
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap12_get_info, .-tt_cmap12_get_info
	.global	tt_cmap12_class_rec
	.section	.data.rel.ro.local.tt_cmap12_class_rec,"aw",%progbits
	.align	2
	.type	tt_cmap12_class_rec, %object
	.size	tt_cmap12_class_rec, 52
tt_cmap12_class_rec:
	.word	44
	.word	tt_cmap12_init
	.word	0
	.word	tt_cmap12_char_index
	.word	tt_cmap12_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	12
	.word	tt_cmap12_validate
	.word	tt_cmap12_get_info
	.section	.text.tt_cmap13_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap13_init, %function
tt_cmap13_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7]
	adds	r3, r3, #12
	str	r3, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #24]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap13_init, .-tt_cmap13_init
	.section	.text.tt_cmap13_validate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap13_validate, %function
tt_cmap13_validate:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L501
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L501:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	mov	r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L502
	ldr	r3, [r7, #24]
	cmp	r3, #15
	bls	.L502
	ldr	r3, [r7, #24]
	sub	r2, r3, #16
	movw	r3, #43691
	movt	r3, 43690
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L503
.L502:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L503:
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L504
.L508:
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L505
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L505:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L506
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L506
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L506:
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L507
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L507
	ldr	r0, [r7]
	movs	r1, #16
	bl	ft_validator_error(PLT)
.L507:
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L504:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L508
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap13_validate, .-tt_cmap13_validate
	.section	.text.tt_cmap13_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap13_next, %function
tt_cmap13_next:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #-1
	bne	.L511
	b	.L512
.L511:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	str	r3, [r7, #32]
	b	.L513
.L517:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #16]
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #16
	add	r3, r3, r1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L514
	ldr	r3, [r7, #20]
	str	r3, [r7, #36]
.L514:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L515
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L515
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L515
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [r3, #36]
	b	.L510
.L515:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L513:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bhi	.L517
.L512:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #24]
.L510:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap13_next, .-tt_cmap13_next
	.section	.text.tt_cmap13_char_map_binary,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap13_char_map_binary, %function
tt_cmap13_char_map_binary:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r3, r3, #12
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L519
	movs	r3, #0
	b	.L520
.L519:
	ldr	r3, [r7, #32]
	str	r3, [r7, #40]
	mov	r3, #-1
	str	r3, [r7, #52]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L521
	ldr	r3, [r7, #56]
	cmp	r3, #-1
	bne	.L522
	movs	r3, #0
	b	.L520
.L522:
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L521:
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #32]
	str	r3, [r7, #48]
	b	.L523
.L527:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #16]
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #16
	add	r3, r3, r1
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L524
	ldr	r3, [r7, #40]
	str	r3, [r7, #48]
	b	.L523
.L524:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L525
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	b	.L523
.L525:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #60]
	b	.L526
.L523:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L527
.L526:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L528
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L529
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L529
	movs	r3, #0
	b	.L520
.L529:
	ldr	r3, [r7, #20]
	movs	r2, #1
	strb	r2, [r3, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #56]
	str	r2, [r3, #28]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #40]
	str	r2, [r3, #36]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L530
	movs	r3, #0
	str	r3, [r7, #60]
.L530:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L531
	ldr	r0, [r7, #20]
	bl	tt_cmap13_next(PLT)
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L533
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #32]
	str	r3, [r7, #60]
	b	.L533
.L531:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #60]
	str	r2, [r3, #32]
.L533:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L528:
	ldr	r3, [r7, #60]
.L520:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap13_char_map_binary, .-tt_cmap13_char_map_binary
	.section	.text.tt_cmap13_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap13_char_index, %function
tt_cmap13_char_index:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r3, r7
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	tt_cmap13_char_map_binary(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap13_char_index, .-tt_cmap13_char_index
	.section	.text.tt_cmap13_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap13_char_next, %function
tt_cmap13_char_next:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L537
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L537
	ldr	r0, [r7, #8]
	bl	tt_cmap13_next(PLT)
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L538
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L540
.L538:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L540
.L537:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #1
	bl	tt_cmap13_char_map_binary(PLT)
	str	r0, [r7, #12]
.L540:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap13_char_next, .-tt_cmap13_char_next
	.section	.text.tt_cmap13_get_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap13_get_info, %function
tt_cmap13_get_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #13
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap13_get_info, .-tt_cmap13_get_info
	.global	tt_cmap13_class_rec
	.section	.data.rel.ro.local.tt_cmap13_class_rec,"aw",%progbits
	.align	2
	.type	tt_cmap13_class_rec, %object
	.size	tt_cmap13_class_rec, 52
tt_cmap13_class_rec:
	.word	44
	.word	tt_cmap13_init
	.word	0
	.word	tt_cmap13_char_index
	.word	tt_cmap13_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	13
	.word	tt_cmap13_validate
	.word	tt_cmap13_get_info
	.section	.text.tt_cmap14_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_done, %function
tt_cmap14_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L544
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L544
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
.L544:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap14_done, .-tt_cmap14_done
	.section	.text.tt_cmap14_ensure,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_ensure, %function
tt_cmap14_ensure:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L547
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #32]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #4]
	movs	r1, #4
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L548
	ldr	r3, [r7, #16]
	b	.L550
.L548:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #28]
.L547:
	ldr	r3, [r7, #16]
.L550:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap14_ensure, .-tt_cmap14_ensure
	.section	.text.tt_cmap14_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_init, %function
tt_cmap14_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7]
	adds	r3, r3, #6
	str	r3, [r7]
	ldr	r3, [r7]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap14_init, .-tt_cmap14_init
	.section	.text.tt_cmap14_validate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_validate, %function
tt_cmap14_validate:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r2, r3, #10
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L554
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L554:
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	adds	r3, r3, #4
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #84]
	adds	r3, r3, #4
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	mov	r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L555
	ldr	r3, [r7, #48]
	cmp	r3, #9
	bls	.L555
	ldr	r3, [r7, #48]
	sub	r2, r3, #10
	movw	r3, #35747
	movt	r3, 47662
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #3
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bcs	.L556
.L555:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L556:
	movs	r3, #1
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L557
.L576:
	ldr	r3, [r7, #84]
	adds	r3, r3, #3
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #84]
	adds	r3, r3, #4
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #84]
	adds	r3, r3, #4
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #84]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #84]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L558
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L559
.L558:
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L559:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bcs	.L560
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L560:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L561
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #72]
	adds	r2, r3, #4
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L562
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L562:
	ldr	r3, [r7, #72]
	adds	r3, r3, #4
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #72]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #72]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #72]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	mov	r2, r3
	ldr	r3, [r7, #72]
	subs	r3, r2, r3
	lsrs	r2, r3, #2
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L563
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L563:
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L564
.L567:
	ldr	r3, [r7, #72]
	adds	r3, r3, #3
	str	r3, [r7, #72]
	ldr	r3, [r7, #72]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #72]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #72]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #72]
	adds	r2, r3, #1
	str	r2, [r7, #72]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	cmp	r3, #1114112
	bcc	.L565
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L565:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcs	.L566
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L566:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	adds	r3, r3, #1
	str	r3, [r7, #64]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L564:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L567
.L561:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L568
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	adds	r2, r3, #4
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	cmp	r2, r3
	bls	.L569
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L569:
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #60]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #396]
	mov	r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	mov	r2, r3
	movw	r3, #52429
	movt	r3, 52428
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #2
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L570
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L570:
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L571
.L575:
	ldr	r3, [r7, #60]
	adds	r3, r3, #3
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #60]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #60]
	adds	r3, r3, #2
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #1114112
	bcc	.L572
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L572:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L573
	ldr	r0, [r7]
	movs	r1, #8
	bl	ft_validator_error(PLT)
.L573:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r3, [r7]
	ldr	r3, [r3, #400]
	cmp	r3, #0
	beq	.L574
	ldr	r3, [r7]
	ldr	r2, [r3, #408]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L574
	ldr	r0, [r7]
	movs	r1, #16
	bl	ft_validator_error(PLT)
.L574:
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L571:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L575
.L568:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L557:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bcc	.L576
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap14_validate, .-tt_cmap14_validate
	.section	.text.tt_cmap14_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_char_index, %function
tt_cmap14_char_index:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap14_char_index, .-tt_cmap14_char_index
	.section	.text.tt_cmap14_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_char_next, %function
tt_cmap14_char_next:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap14_char_next, .-tt_cmap14_char_next
	.section	.text.tt_cmap14_get_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_get_info, %function
tt_cmap14_get_info:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movs	r2, #14
	str	r2, [r3, #4]
	ldr	r3, [r7]
	mov	r2, #-1
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap14_get_info, .-tt_cmap14_get_info
	.section	.text.tt_cmap14_char_map_def_binary,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_char_map_def_binary, %function
tt_cmap14_char_map_def_binary:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #4]
	b	.L585
.L589:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L586
	ldr	r3, [r7, #24]
	str	r3, [r7, #36]
	b	.L585
.L586:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L587
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	b	.L585
.L587:
	movs	r3, #1
	b	.L588
.L585:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L589
	movs	r3, #0
.L588:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap14_char_map_def_binary, .-tt_cmap14_char_map_def_binary
	.section	.text.tt_cmap14_char_map_nondef_binary,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_char_map_nondef_binary, %function
tt_cmap14_char_map_nondef_binary:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #4]
	b	.L591
.L595:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #12]
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
	str	r3, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L592
	ldr	r3, [r7, #16]
	str	r3, [r7, #28]
	b	.L591
.L592:
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L593
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L591
.L593:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	b	.L594
.L591:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L595
	movs	r3, #0
.L594:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap14_char_map_nondef_binary, .-tt_cmap14_char_map_nondef_binary
	.section	.text.tt_cmap14_find_variant,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_find_variant, %function
tt_cmap14_find_variant:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #4]
	b	.L597
.L601:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #12]
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
	str	r3, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L598
	ldr	r3, [r7, #16]
	str	r3, [r7, #28]
	b	.L597
.L598:
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L599
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L597
.L599:
	ldr	r3, [r7, #12]
	b	.L600
.L597:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L601
	movs	r3, #0
.L600:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap14_find_variant, .-tt_cmap14_find_variant
	.section	.text.tt_cmap14_char_var_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_char_var_index, %function
tt_cmap14_char_var_index:
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
	ldr	r3, [r3, #16]
	adds	r3, r3, #6
	mov	r0, r3
	ldr	r1, [r7]
	bl	tt_cmap14_find_variant(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L603
	movs	r3, #0
	b	.L604
.L603:
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L605
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	tt_cmap14_char_map_def_binary(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L605
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #8]
	mov	r0, r2
	ldr	r1, [r7, #4]
	blx	r3
	mov	r3, r0
	b	.L604
.L605:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L606
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	tt_cmap14_char_map_nondef_binary(PLT)
	mov	r3, r0
	b	.L604
.L606:
	movs	r3, #0
.L604:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap14_char_var_index, .-tt_cmap14_char_var_index
	.section	.text.tt_cmap14_char_var_isdefault,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_char_var_isdefault, %function
tt_cmap14_char_var_isdefault:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r3, r3, #6
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	tt_cmap14_find_variant(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L608
	mov	r3, #-1
	b	.L609
.L608:
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #28]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L610
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	tt_cmap14_char_map_def_binary(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L610
	movs	r3, #1
	b	.L609
.L610:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L611
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	tt_cmap14_char_map_nondef_binary(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L611
	movs	r3, #0
	b	.L609
.L611:
	mov	r3, #-1
.L609:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap14_char_var_isdefault, .-tt_cmap14_char_var_isdefault
	.section	.text.tt_cmap14_variants,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_variants, %function
tt_cmap14_variants:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r3, r3, #10
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldr	r0, [r7, #20]
	mov	r1, r3
	ldr	r2, [r7]
	bl	tt_cmap14_ensure(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L613
	movs	r3, #0
	b	.L614
.L613:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L615
.L616:
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	subs	r2, r2, #3
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #16
	ldr	r2, [r7, #28]
	subs	r2, r2, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r2, r2, #8
	orrs	r1, r1, r2
	ldr	r2, [r7, #28]
	subs	r2, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L615:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L616
	ldr	r3, [r7, #24]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
.L614:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap14_variants, .-tt_cmap14_variants
	.section	.text.tt_cmap14_char_variants,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_char_variants, %function
tt_cmap14_char_variants:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #24]
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r3, r3, #10
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	ldr	r0, [r7, #32]
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	tt_cmap14_ensure(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L618
	movs	r3, #0
	b	.L619
.L618:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #32]
	str	r3, [r7, #36]
	b	.L620
.L624:
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
	ldr	r3, [r7, #40]
	adds	r3, r3, #4
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #40]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	adds	r3, r3, #4
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #40]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L621
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	tt_cmap14_char_map_def_binary(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L622
.L621:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L623
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	tt_cmap14_char_map_nondef_binary(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L623
.L622:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
.L623:
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	str	r3, [r7, #44]
.L620:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L624
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #32]
.L619:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap14_char_variants, .-tt_cmap14_char_variants
	.section	.text.tt_cmap14_def_char_count,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_def_char_count, %function
tt_cmap14_def_char_count:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #4]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	str	r3, [r7, #4]
	b	.L626
.L627:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L626:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L627
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_cmap14_def_char_count, .-tt_cmap14_def_char_count
	.section	.text.tt_cmap14_get_def_chars,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_get_def_chars, %function
tt_cmap14_get_def_chars:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	ldr	r0, [r7, #8]
	bl	tt_cmap14_def_char_count(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #8]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	ldr	r0, [r7, #20]
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	tt_cmap14_ensure(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L630
	movs	r3, #0
	b	.L631
.L630:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #32]
	str	r3, [r7, #28]
	b	.L632
.L634:
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
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L633:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L633
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L632:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L634
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #32]
.L631:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap14_get_def_chars, .-tt_cmap14_get_def_chars
	.section	.text.tt_cmap14_get_nondef_chars,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_get_nondef_chars, %function
tt_cmap14_get_nondef_chars:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #8]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	ldr	r0, [r7, #24]
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	tt_cmap14_ensure(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L636
	movs	r3, #0
	b	.L637
.L636:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L638
.L639:
	ldr	r3, [r7, #8]
	adds	r3, r3, #3
	str	r3, [r7, #8]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	subs	r2, r2, #3
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #16
	ldr	r2, [r7, #8]
	subs	r2, r2, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r2, r2, #8
	orrs	r1, r1, r2
	ldr	r2, [r7, #8]
	subs	r2, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L638:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L639
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #16]
.L637:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap14_get_nondef_chars, .-tt_cmap14_get_nondef_chars
	.section	.text.tt_cmap14_variant_chars,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_cmap14_variant_chars, %function
tt_cmap14_variant_chars:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	adds	r3, r3, #6
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	tt_cmap14_find_variant(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L641
	movs	r3, #0
	b	.L642
.L641:
	ldr	r3, [r7, #76]
	adds	r3, r3, #4
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #76]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #76]
	adds	r3, r3, #4
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #76]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L643
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L643
	movs	r3, #0
	b	.L642
.L643:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L644
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	tt_cmap14_get_nondef_chars(PLT)
	mov	r3, r0
	b	.L642
.L644:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L645
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	tt_cmap14_get_def_chars(PLT)
	mov	r3, r0
	b	.L642
.L645:
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #76]
	adds	r3, r3, #4
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #76]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r0, [r7, #56]
	bl	tt_cmap14_def_char_count(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #56]
	adds	r3, r3, #4
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #56]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #56]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L646
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	tt_cmap14_get_def_chars(PLT)
	mov	r3, r0
	b	.L642
.L646:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L647
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	tt_cmap14_get_nondef_chars(PLT)
	mov	r3, r0
	b	.L642
.L647:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #1
	ldr	r0, [r7, #32]
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	tt_cmap14_ensure(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L648
	movs	r3, #0
	b	.L642
.L648:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #56]
	adds	r3, r3, #3
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #56]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #56]
	adds	r2, r3, #1
	str	r2, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #64]
	movs	r3, #1
	str	r3, [r7, #52]
	ldr	r3, [r7, #76]
	adds	r3, r3, #3
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #76]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #76]
	adds	r3, r3, #2
	str	r3, [r7, #76]
	movs	r3, #1
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #72]
.L657:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	add	r2, r2, r3
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bcs	.L649
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L650
.L651:
	ldr	r3, [r7, #72]
	adds	r2, r3, #1
	str	r2, [r7, #72]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r1, [r7, #68]
	ldr	r2, [r7, #44]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L650:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L651
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L652
	b	.L653
.L652:
	ldr	r3, [r7, #56]
	adds	r3, r3, #3
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #56]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #56]
	adds	r2, r3, #1
	str	r2, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #64]
	b	.L657
.L649:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bcs	.L655
	ldr	r3, [r7, #72]
	adds	r2, r3, #1
	str	r2, [r7, #72]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #60]
	str	r2, [r3]
.L655:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L656
	b	.L653
.L656:
	ldr	r3, [r7, #76]
	adds	r3, r3, #3
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #76]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #76]
	adds	r3, r3, #2
	str	r3, [r7, #76]
	b	.L657
.L653:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L658
	ldr	r3, [r7, #72]
	adds	r2, r3, #1
	str	r2, [r7, #72]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #60]
	str	r2, [r3]
	b	.L659
.L660:
	ldr	r3, [r7, #76]
	adds	r3, r3, #3
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	adds	r2, r3, #1
	str	r2, [r7, #72]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #76]
	subs	r2, r2, #3
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r1, r2, #16
	ldr	r2, [r7, #76]
	subs	r2, r2, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	lsls	r2, r2, #8
	orrs	r1, r1, r2
	ldr	r2, [r7, #76]
	subs	r2, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #2
	str	r3, [r7, #76]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L659:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L660
	b	.L661
.L658:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L661
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L662
.L663:
	ldr	r3, [r7, #72]
	adds	r2, r3, #1
	str	r2, [r7, #72]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r1, [r7, #68]
	ldr	r2, [r7, #44]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L662:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L663
	b	.L664
.L667:
	ldr	r3, [r7, #56]
	adds	r3, r3, #3
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #56]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #56]
	adds	r2, r3, #1
	str	r2, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L665
.L666:
	ldr	r3, [r7, #72]
	adds	r2, r3, #1
	str	r2, [r7, #72]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r1, [r7, #68]
	ldr	r2, [r7, #44]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L665:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L666
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L664:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L667
.L661:
	ldr	r3, [r7, #72]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #20]
.L642:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_cmap14_variant_chars, .-tt_cmap14_variant_chars
	.global	tt_cmap14_class_rec
	.section	.data.rel.ro.local.tt_cmap14_class_rec,"aw",%progbits
	.align	2
	.type	tt_cmap14_class_rec, %object
	.size	tt_cmap14_class_rec, 52
tt_cmap14_class_rec:
	.word	40
	.word	tt_cmap14_init
	.word	tt_cmap14_done
	.word	tt_cmap14_char_index
	.word	tt_cmap14_char_next
	.word	tt_cmap14_char_var_index
	.word	tt_cmap14_char_var_isdefault
	.word	tt_cmap14_variants
	.word	tt_cmap14_char_variants
	.word	tt_cmap14_variant_chars
	.word	14
	.word	tt_cmap14_validate
	.word	tt_cmap14_get_info
	.section	.data.rel.ro.tt_cmap_classes,"aw",%progbits
	.align	2
	.type	tt_cmap_classes, %object
	.size	tt_cmap_classes, 40
tt_cmap_classes:
	.word	tt_cmap0_class_rec
	.word	tt_cmap2_class_rec
	.word	tt_cmap4_class_rec
	.word	tt_cmap6_class_rec
	.word	tt_cmap8_class_rec
	.word	tt_cmap10_class_rec
	.word	tt_cmap12_class_rec
	.word	tt_cmap13_class_rec
	.word	tt_cmap14_class_rec
	.word	0
	.section	.text.tt_face_build_cmaps,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_build_cmaps, %function
tt_face_build_cmaps:
	@ args = 0, pretend = 0, frame = 488
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #488
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #500]
	str	r3, [r7, #484]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #504]
	ldr	r2, [r7, #484]
	add	r3, r3, r2
	str	r3, [r7, #480]
	ldr	r3, [r7, #484]
	str	r3, [r7, #464]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	str	r3, [r7, #476]
	ldr	r3, [r7, #464]
	cmp	r3, #0
	beq	.L669
	ldr	r3, [r7, #464]
	adds	r2, r3, #4
	ldr	r3, [r7, #480]
	cmp	r2, r3
	bls	.L670
.L669:
	movs	r3, #8
	b	.L671
.L670:
	ldr	r3, [r7, #464]
	adds	r3, r3, #2
	str	r3, [r7, #464]
	ldr	r3, [r7, #464]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #464]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	cmp	r3, #0
	beq	.L672
	movs	r3, #8
	b	.L671
.L672:
	ldr	r3, [r7, #464]
	adds	r3, r3, #2
	str	r3, [r7, #464]
	ldr	r3, [r7, #464]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #464]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #468]
	b	.L673
.L683:
	ldr	r3, [r7, #464]
	adds	r3, r3, #2
	str	r3, [r7, #464]
	ldr	r3, [r7, #464]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #464]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	strh	r3, [r7, #460]	@ movhi
	ldr	r3, [r7, #464]
	adds	r3, r3, #2
	str	r3, [r7, #464]
	ldr	r3, [r7, #464]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #464]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	strh	r3, [r7, #462]	@ movhi
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r3, [r7, #452]
	movs	r3, #0
	str	r3, [r7, #456]
	ldr	r3, [r7, #464]
	adds	r3, r3, #4
	str	r3, [r7, #464]
	ldr	r3, [r7, #464]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #464]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #464]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #464]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #472]
	ldr	r3, [r7, #472]
	cmp	r3, #0
	beq	.L674
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #504]
	subs	r2, r3, #2
	ldr	r3, [r7, #472]
	cmp	r2, r3
	bcc	.L674
	ldr	r2, [r7, #484]
	ldr	r3, [r7, #472]
	add	r3, r3, r2
	str	r3, [r7, #448]
	ldr	r3, [r7, #448]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #448]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #444]
	ldr	r3, .L684
.LPIC14:
	add	r3, pc
	str	r3, [r7, #440]
	b	.L675
.L681:
	ldr	r3, [r7, #440]
	ldr	r3, [r3]
	str	r3, [r7, #436]
	ldr	r3, [r7, #436]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #444]
	cmp	r2, r3
	bne	.L676
	movs	r3, #0
	str	r3, [r7, #432]
	ldr	r3, [r7, #448]
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #480]
	movs	r3, #0
	bl	ft_validator_init(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldrh	r3, [r3, #264]
	mov	r2, r3
	add	r3, r7, #8
	str	r2, [r3, #408]
	add	r3, r7, #8
	mov	r0, r3
	bl	_setjmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L677
	ldr	r3, [r7, #436]
	ldr	r3, [r3, #44]
	ldr	r1, [r7, #448]
	add	r2, r7, #8
	mov	r0, r1
	mov	r1, r2
	blx	r3
	mov	r3, r0
	str	r3, [r7, #432]
.L677:
	add	r3, r7, #8
	ldr	r3, [r3, #404]
	cmp	r3, #0
	bne	.L678
	ldr	r0, [r7, #436]
	ldr	r1, [r7, #448]
	add	r2, r7, #452
	add	r3, r7, #428
	bl	FT_CMap_New(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L679
	ldr	r3, [r7, #428]
	ldr	r2, [r7, #432]
	str	r2, [r3, #20]
	b	.L678
.L679:
.L678:
	b	.L680
.L676:
	ldr	r3, [r7, #440]
	adds	r3, r3, #4
	str	r3, [r7, #440]
.L675:
	ldr	r3, [r7, #440]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L681
.L680:
	ldr	r3, [r7, #440]
.L674:
	ldr	r3, [r7, #468]
	subs	r3, r3, #1
	str	r3, [r7, #468]
.L673:
	ldr	r3, [r7, #468]
	cmp	r3, #0
	beq	.L682
	ldr	r3, [r7, #464]
	add	r2, r3, #8
	ldr	r3, [r7, #480]
	cmp	r2, r3
	bls	.L683
.L682:
	movs	r3, #0
.L671:
	mov	r0, r3
	add	r7, r7, #488
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L685:
	.align	2
.L684:
	.word	tt_cmap_classes-(.LPIC14+4)
	.size	tt_face_build_cmaps, .-tt_face_build_cmaps
	.section	.text.tt_get_cmap_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_get_cmap_info, %function
tt_get_cmap_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #48]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_get_cmap_info, .-tt_get_cmap_info
	.section	.text.tt_face_load_kern,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_kern, %function
tt_face_load_kern:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movw	r1, #29294
	movt	r1, 27493
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L689
	b	.L690
.L689:
	ldr	r3, [r7, #8]
	cmp	r3, #3
	bhi	.L691
	movs	r3, #142
	str	r3, [r7, #68]
	b	.L690
.L691:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, #740
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L692
	b	.L690
.L692:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #744]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #740]
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #32
	bls	.L693
	movs	r3, #32
	str	r3, [r7, #56]
.L693:
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L694
.L705:
	ldr	r3, [r7, #60]
	movs	r2, #1
	lsl	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #64]
	adds	r2, r3, #6
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L695
	b	.L696
.L695:
	ldr	r3, [r7, #64]
	str	r3, [r7, #40]
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #14
	bhi	.L697
	b	.L696
.L697:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L698
	ldr	r3, [r7, #28]
	str	r3, [r7, #40]
.L698:
	ldr	r3, [r7, #16]
	bic	r3, r3, #8
	cmp	r3, #1
	bne	.L699
	ldr	r3, [r7, #64]
	add	r2, r3, #8
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L699
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #64]
	adds	r3, r3, #6
	str	r3, [r7, #64]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #64]
	subs	r1, r2, r3
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	cmp	r1, r3
	bge	.L700
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #64]
	subs	r2, r2, r3
	movw	r3, #43691
	movt	r3, 10922
	smull	r0, r1, r3, r2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #44]
.L700:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #24]
	orrs	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L699
	ldr	r3, [r7, #64]
	adds	r3, r3, #4
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #64]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #64]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	str	r3, [r7, #64]
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	b	.L701
.L704:
	ldr	r3, [r7, #64]
	adds	r3, r3, #4
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #64]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #64]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bhi	.L702
	b	.L703
.L702:
	ldr	r3, [r7, #64]
	adds	r3, r3, #2
	str	r3, [r7, #64]
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L701:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L704
.L703:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L699
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #24]
	orrs	r3, r3, r2
	str	r3, [r7, #48]
.L699:
	ldr	r3, [r7, #40]
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L694:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L705
.L696:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #60]
	str	r2, [r3, #748]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #52]
	str	r2, [r3, #752]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #48]
	str	r2, [r3, #756]
.L690:
	ldr	r3, [r7, #68]
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_kern, .-tt_face_load_kern
	.section	.text.tt_face_done_kern,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_done_kern, %function
tt_face_done_kern:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #740
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #744]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #748]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #752]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #756]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_done_kern, .-tt_face_done_kern
	.section	.text.tt_face_get_kerning,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_get_kerning, %function
tt_face_get_kerning:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #100
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #740]
	str	r3, [r7, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #744]
	ldr	r2, [r7, #80]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #80]
	adds	r3, r3, #4
	str	r3, [r7, #80]
	movs	r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #748]
	str	r3, [r7, #88]
	b	.L709
.L729:
	ldr	r3, [r7, #80]
	str	r3, [r7, #48]
	ldr	r3, [r7, #80]
	adds	r3, r3, #2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #80]
	adds	r3, r3, #2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #80]
	adds	r3, r3, #2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L710
	ldr	r3, [r7, #52]
	str	r3, [r7, #76]
.L710:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #752]
	ldr	r3, [r7, #84]
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L711
	b	.L712
.L711:
	ldr	r3, [r7, #80]
	add	r2, r3, #8
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bls	.L713
	b	.L712
.L713:
	ldr	r3, [r7, #80]
	adds	r3, r3, #2
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #72]
	ldr	r3, [r7, #80]
	adds	r3, r3, #6
	str	r3, [r7, #80]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #80]
	subs	r1, r2, r3
	ldr	r2, [r7, #72]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	cmp	r1, r3
	bge	.L714
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #80]
	subs	r2, r2, r3
	movw	r3, #43691
	movt	r3, 10922
	smull	r0, r1, r3, r2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #72]
.L714:
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #8
	cmp	r3, #0
	beq	.L716
	b	.L712
.L716:
	ldr	r3, [r7, #8]
	lsls	r2, r3, #16
	ldr	r3, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #756]
	ldr	r3, [r7, #84]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L717
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #72]
	str	r3, [r7, #60]
	b	.L718
.L722:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #80]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #24]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L719
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #68]
	b	.L720
.L719:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcs	.L721
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #64]
	b	.L718
.L721:
	ldr	r3, [r7, #28]
	str	r3, [r7, #60]
.L718:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bcc	.L722
	b	.L723
.L717:
	ldr	r3, [r7, #72]
	str	r3, [r7, #56]
	b	.L724
.L726:
	ldr	r3, [r7, #80]
	adds	r3, r3, #4
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #80]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #80]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L725
	ldr	r3, [r7, #80]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #68]
	b	.L720
.L725:
	ldr	r3, [r7, #80]
	adds	r3, r3, #2
	str	r3, [r7, #80]
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	str	r3, [r7, #56]
.L724:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L726
.L723:
	nop
	b	.L712
.L720:
	ldr	r3, [r7, #36]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L727
	ldr	r3, [r7, #68]
	str	r3, [r7, #92]
	b	.L712
.L727:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #92]
.L712:
	ldr	r3, [r7, #76]
	str	r3, [r7, #80]
	ldr	r3, [r7, #88]
	subs	r3, r3, #1
	str	r3, [r7, #88]
	ldr	r3, [r7, #84]
	lsls	r3, r3, #1
	str	r3, [r7, #84]
.L709:
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L728
	ldr	r3, [r7, #80]
	adds	r2, r3, #6
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bls	.L729
.L728:
	ldr	r3, [r7, #92]
	mov	r0, r3
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_face_get_kerning, .-tt_face_get_kerning
	.section	.text.tt_name_entry_ascii_from_utf16,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_name_entry_ascii_from_utf16, %function
tt_name_entry_ascii_from_utf16:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	lsrs	r3, r3, #1
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L732
	movs	r3, #0
	b	.L740
.L732:
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L734
.L739:
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L735
	b	.L736
.L735:
	ldr	r3, [r7, #28]
	cmp	r3, #31
	bls	.L737
	ldr	r3, [r7, #28]
	cmp	r3, #127
	bls	.L738
.L737:
	movs	r3, #63
	str	r3, [r7, #28]
.L738:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L734:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L739
.L736:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #16]
.L740:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_name_entry_ascii_from_utf16, .-tt_name_entry_ascii_from_utf16
	.section	.text.tt_name_entry_ascii_from_other,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_name_entry_ascii_from_other, %function
tt_name_entry_ascii_from_other:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L742
	movs	r3, #0
	b	.L750
.L742:
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L744
.L749:
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L745
	b	.L746
.L745:
	ldr	r3, [r7, #28]
	cmp	r3, #31
	bls	.L747
	ldr	r3, [r7, #28]
	cmp	r3, #127
	bls	.L748
.L747:
	movs	r3, #63
	str	r3, [r7, #28]
.L748:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L744:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L749
.L746:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #16]
.L750:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_name_entry_ascii_from_other, .-tt_name_entry_ascii_from_other
	.section	.text.tt_face_get_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_get_name, %function
tt_face_get_name:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #8
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #68]
	mov	r3, #-1
	str	r3, [r7, #56]
	mov	r3, #-1
	str	r3, [r7, #52]
	mov	r3, #-1
	str	r3, [r7, #48]
	mov	r3, #-1
	str	r3, [r7, #44]
	mov	r3, #-1
	str	r3, [r7, #40]
	movs	r3, #0
	strb	r3, [r7, #39]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #356]
	str	r3, [r7, #60]
	movs	r3, #0
	strh	r3, [r7, #66]	@ movhi
	b	.L752
.L763:
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #6]
	ldrh	r2, [r7, #10]
	cmp	r2, r3
	bne	.L753
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #8]
	cmp	r3, #0
	beq	.L753
	ldr	r3, [r7, #60]
	ldrh	r3, [r3]
	cmp	r3, #3
	bhi	.L753
	adr	r1, .L755
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L755:
	.word	.L754+1-.L755
	.word	.L756+1-.L755
	.word	.L754+1-.L755
	.word	.L757+1-.L755
.L754:
	ldrh	r3, [r7, #66]
	str	r3, [r7, #40]
	b	.L753
.L756:
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	bne	.L758
	ldrh	r3, [r7, #66]
	str	r3, [r7, #48]
	b	.L759
.L758:
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L759
	ldrh	r3, [r7, #66]
	str	r3, [r7, #52]
	b	.L753
.L759:
	b	.L753
.L757:
	ldr	r3, [r7, #44]
	cmp	r3, #-1
	beq	.L760
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #4]
	ubfx	r3, r3, #0, #10
	cmp	r3, #9
	bne	.L761
.L760:
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	blt	.L776
	cmp	r3, #1
	ble	.L762
	cmp	r3, #10
	beq	.L762
	b	.L776
.L762:
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #4]
	ubfx	r3, r3, #0, #10
	cmp	r3, #9
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #39]
	ldrh	r3, [r7, #66]
	str	r3, [r7, #44]
	nop
.L761:
.L776:
	nop
.L753:
	ldrh	r3, [r7, #66]
	adds	r3, r3, #1
	strh	r3, [r7, #66]	@ movhi
	ldr	r3, [r7, #60]
	adds	r3, r3, #20
	str	r3, [r7, #60]
.L752:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #340]
	ldrh	r2, [r7, #66]
	cmp	r2, r3
	bcc	.L763
	ldr	r3, [r7, #52]
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	blt	.L764
	ldr	r3, [r7, #48]
	str	r3, [r7, #56]
.L764:
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	blt	.L765
	ldr	r3, [r7, #56]
	cmp	r3, #0
	blt	.L766
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L765
.L766:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #356]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	blt	.L777
	cmp	r3, #1
	ble	.L768
	cmp	r3, #10
	beq	.L769
	b	.L777
.L768:
	ldr	r3, .L778
.LPIC15:
	add	r3, pc
	str	r3, [r7, #32]
	b	.L767
.L769:
	ldr	r3, .L778+4
.LPIC16:
	add	r3, pc
	str	r3, [r7, #32]
	nop
.L767:
	b	.L777
.L765:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	blt	.L771
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #356]
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #60]
	ldr	r3, .L778+8
.LPIC17:
	add	r3, pc
	str	r3, [r7, #32]
	b	.L770
.L771:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	blt	.L770
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #356]
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #60]
	ldr	r3, .L778+12
.LPIC18:
	add	r3, pc
	str	r3, [r7, #32]
	b	.L770
.L777:
	nop
.L770:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L772
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L772
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L773
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #360]
	str	r3, [r7, #24]
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #60]
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L774
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L774
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #8]
	ldr	r0, [r7, #24]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L773
.L774:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #60]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L772
.L773:
	ldr	r3, [r7, #32]
	ldr	r0, [r7, #60]
	ldr	r1, [r7, #28]
	blx	r3
	str	r0, [r7, #68]
.L772:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #68]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L779:
	.align	2
.L778:
	.word	tt_name_entry_ascii_from_utf16-(.LPIC15+4)
	.word	tt_name_entry_ascii_from_utf16-(.LPIC16+4)
	.word	tt_name_entry_ascii_from_other-(.LPIC17+4)
	.word	tt_name_entry_ascii_from_utf16-(.LPIC18+4)
	.size	tt_face_get_name, .-tt_face_get_name
	.section	.text.sfnt_find_encoding,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_find_encoding, %function
sfnt_find_encoding:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L786
.LPIC19:
	add	r3, pc
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #132
	str	r3, [r7, #8]
	b	.L781
.L785:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L782
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L783
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #-1
	bne	.L782
.L783:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	b	.L784
.L782:
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	str	r3, [r7, #12]
.L781:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L785
	movs	r3, #0
.L784:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L787:
	.align	2
.L786:
	.word	tt_encodings.9026-(.LPIC19+4)
	.size	sfnt_find_encoding, .-sfnt_find_encoding
	.section	.text.sfnt_stream_close,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_stream_close, %function
sfnt_stream_close:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	sfnt_stream_close, .-sfnt_stream_close
	.section	.text.compare_offsets,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	compare_offsets, %function
compare_offsets:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L790
	movs	r3, #1
	b	.L791
.L790:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L792
	mov	r3, #-1
	b	.L791
.L792:
	movs	r3, #0
.L791:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	compare_offsets, .-compare_offsets
	.section	.text.woff_open_font,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	woff_open_font, %function
woff_open_font:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #136
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #124]
	movs	r3, #0
	str	r3, [r7, #120]
	movs	r3, #0
	str	r3, [r7, #112]
	movs	r3, #0
	str	r3, [r7, #108]
	movs	r3, #0
	str	r3, [r7, #92]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r2, .L833
.LPIC20:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L794
	ldr	r3, [r7, #56]
	b	.L832
.L794:
	ldr	r2, [r7, #16]
	movw	r3, #17990
	movt	r3, 30543
	cmp	r2, r3
	beq	.L796
	ldr	r2, [r7, #16]
	movw	r3, #25446
	movt	r3, 29812
	cmp	r2, r3
	bne	.L797
.L796:
	movs	r3, #8
	b	.L832
.L797:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L798
	ldrh	r3, [r7, #24]
	cmp	r3, #0
	beq	.L798
	ldrh	r3, [r7, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r3, #44
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L798
	ldrh	r3, [r7, #24]
	lsls	r3, r3, #4
	add	r2, r3, #12
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L798
	ldr	r3, [r7, #28]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L798
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L799
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L798
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L798
.L799:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L800
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L798
.L800:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L801
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L801
.L798:
	movs	r3, #8
	b	.L832
.L801:
	ldrh	r3, [r7, #24]
	lsls	r3, r3, #4
	adds	r3, r3, #12
	mov	r2, r3
	add	r3, r7, #56
	ldr	r0, [r7, #80]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #112]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L802
	add	r3, r7, #56
	ldr	r0, [r7, #80]
	movs	r1, #40
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #108]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L802
	ldr	r3, [r7, #112]
	str	r3, [r7, #104]
	ldrh	r3, [r7, #24]
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #88]
	b	.L803
.L804:
	ldr	r3, [r7, #84]
	lsrs	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
.L803:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L804
	ldr	r3, [r7, #88]
	subs	r3, r3, #1
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	movs	r2, #16
	lsl	r3, r2, r3
	str	r3, [r7, #76]
	ldrh	r3, [r7, #24]
	lsls	r3, r3, #4
	mov	r2, r3
	ldr	r3, [r7, #76]
	subs	r3, r2, r3
	str	r3, [r7, #72]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #16]
	lsrs	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #16]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #16]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #16]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldrh	r2, [r7, #24]
	lsrs	r2, r2, #8
	uxth	r2, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldrh	r2, [r7, #24]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #76]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #76]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #88]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #88]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #72]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #72]
	uxtb	r2, r2
	strb	r2, [r3]
	ldrh	r3, [r7, #24]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #56
	str	r2, [sp, #4]
	ldr	r0, [r7, #80]
	movs	r1, #24
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #124]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L802
	ldrh	r3, [r7, #24]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #56
	str	r2, [sp, #4]
	ldr	r0, [r7, #80]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #120]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L802
	ldrh	r3, [r7, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L805
	b	.L802
.L805:
	movs	r3, #0
	str	r3, [r7, #96]
	b	.L806
.L808:
	ldr	r2, [r7, #96]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULong(PLT)
	mov	r2, r0
	ldr	r3, [r7, #68]
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULong(PLT)
	mov	r2, r0
	ldr	r3, [r7, #68]
	str	r2, [r3, #4]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULong(PLT)
	mov	r2, r0
	ldr	r3, [r7, #68]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULong(PLT)
	mov	r2, r0
	ldr	r3, [r7, #68]
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULong(PLT)
	mov	r2, r0
	ldr	r3, [r7, #68]
	str	r2, [r3, #16]
	ldr	r3, [r7, #68]
	ldr	r2, [r3]
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bhi	.L807
	ldr	r0, [r7, #4]
	bl	FT_Stream_ExitFrame(PLT)
	movs	r3, #8
	str	r3, [r7, #56]
	b	.L802
.L807:
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	str	r3, [r7, #92]
	ldr	r3, [r7, #96]
	lsls	r3, r3, #2
	ldr	r2, [r7, #120]
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	str	r2, [r3]
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L806:
	ldrh	r3, [r7, #24]
	mov	r2, r3
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bgt	.L808
	ldr	r0, [r7, #4]
	bl	FT_Stream_ExitFrame(PLT)
	ldrh	r3, [r7, #24]
	ldr	r0, [r7, #120]
	mov	r1, r3
	movs	r2, #4
	ldr	r3, .L833+4
.LPIC21:
	add	r3, pc
	bl	qsort(PLT)
	ldrh	r3, [r7, #24]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #44
	str	r3, [r7, #116]
	ldrh	r3, [r7, #24]
	lsls	r3, r3, #4
	adds	r3, r3, #12
	str	r3, [r7, #100]
	movs	r3, #0
	str	r3, [r7, #96]
	b	.L809
.L812:
	ldr	r3, [r7, #96]
	lsls	r3, r3, #2
	ldr	r2, [r7, #120]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	bne	.L810
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L810
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #4]
	ldr	r1, [r7, #20]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #8]
	subs	r3, r1, r3
	cmp	r2, r3
	bhi	.L810
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L810
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #12]
	subs	r2, r2, r3
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bcc	.L810
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bls	.L811
.L810:
	movs	r3, #8
	str	r3, [r7, #56]
	b	.L802
.L811:
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #100]
	str	r2, [r3, #20]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #8]
	adds	r3, r3, #3
	bic	r3, r3, #3
	ldr	r2, [r7, #116]
	add	r3, r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #12]
	adds	r3, r3, #3
	bic	r3, r3, #3
	ldr	r2, [r7, #100]
	add	r3, r3, r2
	str	r3, [r7, #100]
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L809:
	ldrh	r3, [r7, #24]
	mov	r2, r3
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bgt	.L812
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L813
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	bne	.L814
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L815
.L814:
	movs	r3, #8
	str	r3, [r7, #56]
	b	.L802
.L815:
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #116]
	add	r3, r3, r2
	str	r3, [r7, #116]
.L813:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L816
	ldr	r3, [r7, #116]
	adds	r3, r3, #3
	bic	r3, r3, #3
	str	r3, [r7, #116]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	bne	.L817
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L818
.L817:
	movs	r3, #8
	str	r3, [r7, #56]
	b	.L802
.L818:
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #116]
	add	r3, r3, r2
	str	r3, [r7, #116]
.L816:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bne	.L819
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #116]
	cmp	r2, r3
	beq	.L820
.L819:
	movs	r3, #8
	str	r3, [r7, #56]
	b	.L802
.L820:
	ldrh	r3, [r7, #24]
	lsls	r3, r3, #4
	adds	r3, r3, #12
	mov	r2, r3
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #112]
	str	r1, [sp]
	add	r1, r7, #56
	str	r1, [sp, #4]
	ldr	r0, [r7, #80]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #112]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L821
	b	.L802
.L821:
	ldr	r3, [r7, #112]
	adds	r3, r3, #12
	str	r3, [r7, #104]
	movs	r3, #0
	str	r3, [r7, #96]
	b	.L822
.L830:
	ldr	r2, [r7, #96]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2]
	lsrs	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #16]
	lsrs	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #16]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #16]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #16]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #20]
	lsrs	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #20]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #20]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #20]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #12]
	lsrs	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #12]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #12]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #104]
	adds	r2, r3, #1
	str	r2, [r7, #104]
	ldr	r2, [r7, #60]
	ldr	r2, [r2, #12]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L802
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L802
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bne	.L823
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #112]
	adds	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L824
.L823:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #112]
	adds	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #60]
	ldr	r0, [r2, #8]
	add	r2, r7, #8
	str	r0, [sp]
	ldr	r0, [r7, #80]
	bl	FT_Gzip_Uncompress(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L825
	b	.L802
.L825:
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L824
	movs	r3, #8
	str	r3, [r7, #56]
	nop
	b	.L802
.L824:
	ldr	r0, [r7, #4]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #100]
	b	.L828
.L829:
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #100]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
.L828:
	ldr	r3, [r7, #100]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L829
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L822:
	ldrh	r3, [r7, #24]
	mov	r2, r3
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bgt	.L830
	ldr	r3, [r7, #28]
	ldr	r0, [r7, #108]
	ldr	r1, [r7, #112]
	mov	r2, r3
	bl	FT_Stream_OpenMemory(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #108]
	str	r2, [r3, #28]
	ldr	r3, [r7, #108]
	ldr	r2, .L833+8
.LPIC22:
	add	r2, pc
	str	r2, [r3, #24]
	ldr	r3, [r7]
	ldr	r2, [r3, #104]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	and	r3, r3, #1024
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Stream_Free(PLT)
	ldr	r3, [r7]
	ldr	r2, [r7, #108]
	str	r2, [r3, #104]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	bic	r2, r3, #1024
	ldr	r3, [r7]
	str	r2, [r3, #8]
.L802:
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #124]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #124]
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #120]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #120]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L831
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #112]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #112]
	ldr	r0, [r7, #108]
	bl	FT_Stream_Close(PLT)
	ldr	r0, [r7, #80]
	ldr	r1, [r7, #108]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #108]
.L831:
	ldr	r3, [r7, #56]
.L832:
	mov	r0, r3
	adds	r7, r7, #128
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L834:
	.align	2
.L833:
	.word	woff_header_fields.9060-(.LPIC20+4)
	.word	compare_offsets-(.LPIC21+4)
	.word	sfnt_stream_close-(.LPIC22+4)
	.size	woff_open_font, .-woff_open_font
	.section	.text.sfnt_open_font,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_open_font, %function
sfnt_open_font:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #132]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #140]
.L836:
	ldr	r0, [r7, #4]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #20]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L837
	ldr	r3, [r7, #12]
	b	.L853
.L837:
	ldr	r2, [r7, #16]
	movw	r3, #17990
	movt	r3, 30543
	cmp	r2, r3
	bne	.L839
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L840
	ldr	r3, [r7, #12]
	b	.L853
.L840:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	woff_open_font(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L841
	ldr	r3, [r7, #12]
	b	.L853
.L841:
	ldr	r3, [r7]
	ldr	r3, [r3, #104]
	str	r3, [r7, #4]
	b	.L836
.L839:
	ldr	r3, [r7, #16]
	cmp	r3, #65536
	beq	.L842
	ldr	r2, [r7, #16]
	movw	r3, #25446
	movt	r3, 29812
	cmp	r2, r3
	beq	.L842
	ldr	r2, [r7, #16]
	movw	r3, #21583
	movt	r3, 20308
	cmp	r2, r3
	beq	.L842
	ldr	r2, [r7, #16]
	movw	r3, #30053
	movt	r3, 29810
	cmp	r2, r3
	beq	.L842
	ldr	r2, [r7, #16]
	movw	r3, #28721
	movt	r3, 29817
	cmp	r2, r3
	beq	.L842
	ldr	r3, [r7, #16]
	cmp	r3, #131072
	beq	.L842
	movs	r3, #2
	b	.L853
.L842:
	ldr	r2, [r7]
	movw	r3, #25446
	movt	r3, 29812
	str	r3, [r2, #132]
	ldr	r2, [r7, #16]
	movw	r3, #25446
	movt	r3, 29812
	cmp	r2, r3
	bne	.L843
	ldr	r3, [r7]
	adds	r3, r3, #132
	ldr	r0, [r7, #4]
	ldr	r2, .L854
.LPIC23:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L844
	ldr	r3, [r7, #12]
	b	.L853
.L844:
	ldr	r3, [r7]
	ldr	r3, [r3, #140]
	cmp	r3, #0
	bne	.L845
	movs	r3, #8
	b	.L853
.L845:
	ldr	r3, [r7]
	ldr	r3, [r3, #140]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #5
	cmp	r2, r3
	bls	.L846
	movs	r3, #10
	b	.L853
.L846:
	ldr	r3, [r7]
	ldr	r3, [r3, #140]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #12
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #144]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L847
	ldr	r3, [r7, #12]
	b	.L853
.L847:
	ldr	r3, [r7]
	ldr	r3, [r3, #140]
	lsls	r3, r3, #2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L848
	ldr	r3, [r7, #12]
	b	.L853
.L848:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L849
.L850:
	ldr	r3, [r7]
	ldr	r2, [r3, #144]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULong(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L849:
	ldr	r3, [r7]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L850
	ldr	r0, [r7, #4]
	bl	FT_Stream_ExitFrame(PLT)
	b	.L851
.L843:
	ldr	r3, [r7]
	mov	r2, #65536
	str	r2, [r3, #136]
	ldr	r3, [r7]
	movs	r2, #1
	str	r2, [r3, #140]
	add	r3, r7, #12
	ldr	r0, [r7, #24]
	movs	r1, #4
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #144]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L852
	ldr	r3, [r7, #12]
	b	.L853
.L852:
	ldr	r3, [r7]
	ldr	r3, [r3, #144]
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L851:
	ldr	r3, [r7, #12]
.L853:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L855:
	.align	2
.L854:
	.word	ttc_header_fields.9093-(.LPIC23+4)
	.size	sfnt_open_font, .-sfnt_open_font
	.section	.rodata
	.align	2
.LC0:
	.ascii	"sfnt\000"
	.align	2
.LC1:
	.ascii	"postscript-cmaps\000"
	.section	.text.sfnt_init_face,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_init_face, %function
sfnt_init_face:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #532]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L857
	ldr	r0, [r7, #36]
	ldr	r3, .L875
.LPIC24:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module_Interface(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L858
	movs	r3, #11
	b	.L874
.L858:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #60]
	str	r2, [r3, #532]
	ldr	r3, [r7, #60]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3, #508]
.L857:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #96]
	str	r3, [r7, #32]
	ldr	r0, [r7, #32]
	ldr	r3, .L875+4
.LPIC25:
	add	r3, pc
	mov	r1, r3
	bl	ft_module_get_service(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #28]
	str	r2, [r3, #536]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	sfnt_open_font(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L860
	ldr	r3, [r7, #20]
	b	.L874
.L860:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #104]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	uxth	r3, r3
	str	r3, [r7, #56]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bgt	.L861
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.L862
	movs	r3, #6
	b	.L874
.L862:
	movs	r3, #0
	str	r3, [r7, #56]
.L861:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #144]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L863
	ldr	r3, [r7, #20]
	b	.L874
.L863:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #88]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L864
	ldr	r3, [r7, #20]
	b	.L874
.L864:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	asrs	r3, r3, #16
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #508]
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	movw	r1, #24946
	movt	r1, 26230
	ldr	r2, [r7, #12]
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	bne	.L865
	ldr	r3, [r7, #16]
	cmp	r3, #19
	bls	.L865
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L865
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L865
	ldr	r0, [r7, #12]
	movs	r1, #2
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L865
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #46]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L865
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #44]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L865
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #42]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L865
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #40]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L866
.L865:
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	strh	r3, [r7, #46]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #44]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #42]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #40]	@ movhi
.L866:
	ldr	r3, [r7, #52]
	cmp	r3, #65536
	bne	.L867
	ldrh	r3, [r7, #44]
	cmp	r3, #20
	bne	.L867
	ldrh	r2, [r7, #46]
	movw	r3, #16382
	cmp	r2, r3
	bhi	.L867
	ldrh	r2, [r7, #40]
	ldrh	r3, [r7, #46]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	cmp	r2, r3
	bne	.L867
	ldrh	r3, [r7, #42]
	cmp	r3, #32512
	bcs	.L867
	ldrh	r3, [r7, #44]
	ldrh	r2, [r7, #46]
	mul	r3, r2, r3
	mov	r2, r3
	ldrh	r3, [r7, #40]
	ldrh	r1, [r7, #42]
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #48]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bls	.L868
.L867:
	movs	r3, #0
	strh	r3, [r7, #42]	@ movhi
.L868:
	ldrh	r2, [r7, #42]
	movw	r3, #32766
	cmp	r2, r3
	bls	.L869
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.L870
	movs	r3, #6
	b	.L874
.L870:
	movs	r3, #0
	strh	r3, [r7, #42]	@ movhi
.L869:
	ldrh	r2, [r7, #42]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bge	.L872
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.L873
	movs	r3, #6
	b	.L874
.L873:
	movs	r3, #0
	strh	r3, [r7, #42]	@ movhi
.L872:
	ldrh	r3, [r7, #42]
	lsls	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #140]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #56]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
.L874:
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L876:
	.align	2
.L875:
	.word	.LC0-(.LPIC24+4)
	.word	.LC1-(.LPIC25+4)
	.size	sfnt_init_face, .-sfnt_init_face
	.global	__aeabi_idiv
	.section	.text.sfnt_load_face,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_load_face, %function
sfnt_load_face:
	@ args = 4, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #116
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	strb	r3, [r7, #101]
	movs	r3, #0
	strb	r3, [r7, #100]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #532]
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #96]
	b	.L878
.L881:
	ldr	r3, [r7, #96]
	lsls	r3, r3, #3
	ldr	r2, [r7, #120]
	add	r3, r3, r2
	ldr	r2, [r3]
	movw	r3, #28774
	movt	r3, 26983
	cmp	r2, r3
	bne	.L879
	movs	r3, #1
	strb	r3, [r7, #101]
	b	.L880
.L879:
	ldr	r3, [r7, #96]
	lsls	r3, r3, #3
	ldr	r2, [r7, #120]
	add	r3, r3, r2
	ldr	r2, [r3]
	movw	r3, #28787
	movt	r3, 26983
	cmp	r2, r3
	bne	.L880
	movs	r3, #1
	strb	r3, [r7, #100]
.L880:
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L878:
	ldr	r2, [r7, #96]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L881
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L882
	ldr	r0, [r7, #8]
	movw	r1, #31078
	movt	r1, 26476
	bl	tt_face_lookup_table(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L882
	ldr	r0, [r7, #8]
	movw	r1, #17952
	movt	r1, 17222
	bl	tt_face_lookup_table(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L883
.L882:
	movs	r3, #1
	b	.L884
.L883:
	movs	r3, #0
.L884:
	strb	r3, [r7, #103]
	movs	r3, #0
	strb	r3, [r7, #102]
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #508]
	ldr	r0, [r7, #8]
	movw	r1, #27000
	movt	r1, 29538
	ldr	r2, [r7, #12]
	movs	r3, #0
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #75]
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L885
	movs	r3, #0
	strb	r3, [r7, #103]
.L885:
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L886
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L886
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #68]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #102]
.L886:
	ldrb	r3, [r7, #102]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L887
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L888
.L887:
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L888
	b	.L889
.L888:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #178]
	cmp	r3, #0
	bne	.L890
	movs	r3, #8
	str	r3, [r7, #44]
	b	.L889
.L890:
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #36]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #48]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #44]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	str	r3, [r7, #68]
	ldrb	r3, [r7, #102]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L891
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	movs	r2, #0
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L892
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #92]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	movs	r2, #0
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	cmp	r3, #142
	bne	.L894
	movs	r3, #147
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L894
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L894
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #250]	@ movhi
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L894
.L892:
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	cmp	r3, #142
	bne	.L894
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #148]
	movw	r3, #30053
	movt	r3, 29810
	cmp	r2, r3
	bne	.L895
	movs	r3, #0
	strb	r3, [r7, #103]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L894
.L895:
	movs	r3, #143
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L894
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L894
	ldr	r3, [r7, #8]
	movs	r2, #0
	strh	r2, [r3, #250]	@ movhi
	movs	r3, #0
	str	r3, [r7, #44]
.L894:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L896
	b	.L889
.L896:
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	movs	r2, #1
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L897
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #92]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	movs	r2, #1
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L897
	ldr	r3, [r7, #8]
	movs	r2, #1
	strb	r2, [r3, #292]
.L897:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L898
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	cmp	r3, #142
	beq	.L898
	b	.L889
.L898:
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #40]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L891
	ldr	r3, [r7, #8]
	movw	r2, #65535
	strh	r2, [r3, #364]	@ movhi
.L891:
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	beq	.L899
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #96]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L899
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	cmp	r3, #142
	bne	.L900
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L899
.L900:
	b	.L889
.L899:
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #64]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L901
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	cmp	r3, #142
	beq	.L902
	b	.L889
.L902:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #548]
.L901:
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #60]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #56]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #264]
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #364]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L903
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #428]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L903
	ldrb	r3, [r7, #101]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L904
	ldr	r3, [r7, #8]
	adds	r3, r3, #20
	ldr	r0, [r7, #8]
	movs	r1, #16
	mov	r2, r3
	bl	tt_face_get_name(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L904
	b	.L889
.L904:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L905
	ldr	r3, [r7, #8]
	adds	r3, r3, #20
	ldr	r0, [r7, #8]
	movs	r1, #1
	mov	r2, r3
	bl	tt_face_get_name(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L905
	b	.L889
.L905:
	ldrb	r3, [r7, #100]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L906
	ldr	r3, [r7, #8]
	adds	r3, r3, #24
	ldr	r0, [r7, #8]
	movs	r1, #17
	mov	r2, r3
	bl	tt_face_get_name(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L906
	b	.L889
.L906:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L907
	ldr	r3, [r7, #8]
	adds	r3, r3, #24
	ldr	r0, [r7, #8]
	movs	r1, #2
	mov	r2, r3
	bl	tt_face_get_name(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L907
	b	.L889
.L907:
	b	.L908
.L903:
	ldr	r3, [r7, #8]
	adds	r3, r3, #20
	ldr	r0, [r7, #8]
	movs	r1, #21
	mov	r2, r3
	bl	tt_face_get_name(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L909
	b	.L889
.L909:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L910
	ldrb	r3, [r7, #101]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L910
	ldr	r3, [r7, #8]
	adds	r3, r3, #20
	ldr	r0, [r7, #8]
	movs	r1, #16
	mov	r2, r3
	bl	tt_face_get_name(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L910
	b	.L889
.L910:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L911
	ldr	r3, [r7, #8]
	adds	r3, r3, #20
	ldr	r0, [r7, #8]
	movs	r1, #1
	mov	r2, r3
	bl	tt_face_get_name(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L911
	b	.L889
.L911:
	ldr	r3, [r7, #8]
	adds	r3, r3, #24
	ldr	r0, [r7, #8]
	movs	r1, #22
	mov	r2, r3
	bl	tt_face_get_name(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L912
	b	.L889
.L912:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L913
	ldrb	r3, [r7, #100]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L913
	ldr	r3, [r7, #8]
	adds	r3, r3, #24
	ldr	r0, [r7, #8]
	movs	r1, #17
	mov	r2, r3
	bl	tt_face_get_name(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L913
	b	.L889
.L913:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L908
	ldr	r3, [r7, #8]
	adds	r3, r3, #24
	ldr	r0, [r7, #8]
	movs	r1, #2
	mov	r2, r3
	bl	tt_face_get_name(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L908
	b	.L889
.L908:
	ldr	r3, [r7, #8]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #8]
	str	r3, [r7, #92]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #732]
	cmp	r3, #2
	beq	.L914
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #732]
	cmp	r3, #3
	bne	.L915
.L914:
	ldr	r3, [r7, #92]
	orr	r3, r3, #16384
	str	r3, [r7, #92]
.L915:
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L916
	ldr	r3, [r7, #92]
	orr	r3, r3, #1
	str	r3, [r7, #92]
.L916:
	ldr	r3, [r7, #92]
	orr	r3, r3, #24
	str	r3, [r7, #92]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L917
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #468]
	cmp	r3, #196608
	beq	.L917
	ldr	r3, [r7, #92]
	orr	r3, r3, #512
	str	r3, [r7, #92]
.L917:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #480]
	cmp	r3, #0
	beq	.L918
	ldr	r3, [r7, #92]
	orr	r3, r3, #4
	str	r3, [r7, #92]
.L918:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #292]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L919
	ldr	r3, [r7, #92]
	orr	r3, r3, #32
	str	r3, [r7, #92]
.L919:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #752]
	cmp	r3, #0
	beq	.L920
	ldr	r3, [r7, #92]
	orr	r3, r3, #64
	str	r3, [r7, #92]
.L920:
	ldr	r0, [r7, #8]
	movw	r1, #31078
	movt	r1, 26476
	bl	tt_face_lookup_table(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L921
	ldr	r0, [r7, #8]
	movw	r1, #24946
	movt	r1, 26230
	bl	tt_face_lookup_table(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L921
	ldr	r0, [r7, #8]
	movw	r1, #24946
	movt	r1, 26486
	bl	tt_face_lookup_table(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L921
	ldr	r3, [r7, #92]
	orr	r3, r3, #256
	str	r3, [r7, #92]
.L921:
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #92]
	str	r2, [r3, #8]
	movs	r3, #0
	str	r3, [r7, #92]
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L922
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #364]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L922
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #428]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L923
	ldr	r3, [r7, #92]
	orr	r3, r3, #1
	str	r3, [r7, #92]
	b	.L924
.L923:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #428]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L924
	ldr	r3, [r7, #92]
	orr	r3, r3, #1
	str	r3, [r7, #92]
.L924:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #428]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L925
	ldr	r3, [r7, #92]
	orr	r3, r3, #2
	str	r3, [r7, #92]
	b	.L926
.L925:
	b	.L926
.L922:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #204]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L927
	ldr	r3, [r7, #92]
	orr	r3, r3, #2
	str	r3, [r7, #92]
.L927:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #204]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L926
	ldr	r3, [r7, #92]
	orr	r3, r3, #1
	str	r3, [r7, #92]
.L926:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #92]
	orrs	r2, r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3, #12]
	ldr	r0, [r7, #8]
	bl	tt_face_build_cmaps(PLT)
	movs	r3, #0
	str	r3, [r7, #88]
	b	.L928
.L929:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #88]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #60]
	ldrh	r3, [r3, #10]
	mov	r0, r2
	mov	r1, r3
	bl	sfnt_find_encoding(PLT)
	mov	r2, r0
	ldr	r3, [r7, #60]
	str	r2, [r3, #4]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
.L928:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bgt	.L929
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #736]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L930
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #104]
	ldr	r3, [r3, #28]
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #178]	@ movhi
	strh	r3, [r7, #82]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #366]	@ movhi
	strh	r3, [r7, #80]	@ movhi
	ldrh	r3, [r7, #82]
	cmp	r3, #0
	beq	.L931
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #364]
	movw	r3, #65535
	cmp	r2, r3
	bne	.L932
.L931:
	movs	r3, #1
	strh	r3, [r7, #80]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #82]	@ movhi
.L932:
	ldr	r3, [r7, #56]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #44
	str	r2, [sp, #4]
	ldr	r0, [r7, #52]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #64]
	str	r2, [r3, #32]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L933
	b	.L889
.L933:
	movs	r3, #0
	str	r3, [r7, #84]
	b	.L935
.L937:
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #84]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #108]
	add	r2, r7, #16
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #84]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L936
	nop
	b	.L889
.L936:
	ldr	r3, [r7, #36]
	asrs	r3, r3, #6
	uxth	r2, r3
	ldr	r3, [r7, #48]
	strh	r2, [r3]	@ movhi
	ldrsh	r3, [r7, #80]
	ldrh	r2, [r7, #16]
	mul	r2, r2, r3
	ldrh	r3, [r7, #82]
	lsrs	r3, r3, #1
	uxth	r3, r3
	add	r2, r2, r3
	ldrh	r3, [r7, #82]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7, #48]
	strh	r2, [r3, #2]	@ movhi
	ldrh	r3, [r7, #16]
	lsls	r2, r3, #6
	ldr	r3, [r7, #48]
	str	r2, [r3, #8]
	ldrh	r3, [r7, #18]
	lsls	r2, r3, #6
	ldr	r3, [r7, #48]
	str	r2, [r3, #12]
	ldrh	r3, [r7, #18]
	lsls	r2, r3, #6
	ldr	r3, [r7, #48]
	str	r2, [r3, #4]
	ldr	r3, [r7, #84]
	adds	r3, r3, #1
	str	r3, [r7, #84]
.L935:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L937
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #8]
	orr	r2, r3, #2
	ldr	r3, [r7, #64]
	str	r2, [r3, #8]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #64]
	str	r2, [r3, #28]
.L930:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L938
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L938
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #8]
	orr	r2, r3, #1
	ldr	r3, [r7, #64]
	str	r2, [r3, #8]
.L938:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L889
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #196]
	sxth	r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3, #52]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #198]
	sxth	r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3, #56]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #200]
	sxth	r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3, #60]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #202]
	sxth	r2, r3
	ldr	r3, [r7, #64]
	str	r2, [r3, #64]
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #178]
	ldr	r3, [r7, #64]
	strh	r2, [r3, #68]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #220]
	ldr	r3, [r7, #64]
	strh	r2, [r3, #70]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #222]
	ldr	r3, [r7, #64]
	strh	r2, [r3, #72]	@ movhi
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #70]
	uxth	r2, r3
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #72]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #224]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #64]
	strh	r2, [r3, #74]	@ movhi
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #70]
	cmp	r3, #0
	bne	.L939
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #72]
	cmp	r3, #0
	bne	.L939
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #364]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L939
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #434]
	cmp	r3, #0
	bne	.L940
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #436]
	cmp	r3, #0
	beq	.L941
.L940:
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #434]
	ldr	r3, [r7, #64]
	strh	r2, [r3, #70]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #436]
	ldr	r3, [r7, #64]
	strh	r2, [r3, #72]	@ movhi
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #70]
	uxth	r2, r3
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #72]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #438]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #64]
	strh	r2, [r3, #74]	@ movhi
	b	.L939
.L941:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #440]
	uxth	r2, r3
	ldr	r3, [r7, #64]
	strh	r2, [r3, #70]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #442]
	negs	r3, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #64]
	strh	r2, [r3, #72]	@ movhi
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #70]
	uxth	r2, r3
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #72]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #64]
	strh	r2, [r3, #74]	@ movhi
.L939:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #226]
	uxth	r2, r3
	ldr	r3, [r7, #64]
	strh	r2, [r3, #76]	@ movhi
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #292]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L942
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #306]
	uxth	r3, r3
	b	.L943
.L942:
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #74]
.L943:
	ldr	r2, [r7, #64]
	strh	r3, [r2, #78]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #476]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #478]
	sxth	r3, r3
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	uxth	r3, r3
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #64]
	strh	r2, [r3, #80]	@ movhi
	ldr	r3, [r7, #8]
	ldrh	r2, [r3, #478]
	ldr	r3, [r7, #64]
	strh	r2, [r3, #82]	@ movhi
.L889:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #108
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	sfnt_load_face, .-sfnt_load_face
	.section	.text.sfnt_done_face,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_done_face, %function
sfnt_done_face:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L946
	b	.L945
.L946:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #532]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L948
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L949
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #80]
	ldr	r0, [r7, #4]
	blx	r3
.L949:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #100]
	cmp	r3, #0
	beq	.L948
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #100]
	ldr	r0, [r7, #4]
	blx	r3
.L948:
	ldr	r0, [r7, #4]
	bl	tt_face_free_bdf_props(PLT)
	ldr	r0, [r7, #4]
	bl	tt_face_done_kern(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #144]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #144]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #156]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #152]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #500
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #504]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, #680
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	ldr	r3, [r7, #4]
	add	r3, r3, #688
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #684]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #692]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #292]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L950
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #332]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #332]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #336]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #336]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #292]
.L950:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #544]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #544]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #542]	@ movhi
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L951
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #52]
	ldr	r0, [r7, #4]
	blx	r3
.L951:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #664]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #664]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #532]
.L945:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	sfnt_done_face, .-sfnt_done_face
	.section	.text.get_sfnt_table,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	get_sfnt_table, %function
get_sfnt_table:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #6
	bhi	.L953
	adr	r1, .L955
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L955:
	.word	.L954+1-.L955
	.word	.L956+1-.L955
	.word	.L957+1-.L955
	.word	.L958+1-.L955
	.word	.L959+1-.L955
	.word	.L960+1-.L955
	.word	.L961+1-.L955
.L954:
	ldr	r3, [r7, #4]
	adds	r3, r3, #160
	str	r3, [r7, #12]
	b	.L962
.L958:
	ldr	r3, [r7, #4]
	adds	r3, r3, #216
	str	r3, [r7, #12]
	b	.L962
.L959:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #292]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L963
	ldr	r3, [r7, #4]
	add	r3, r3, #296
	b	.L964
.L963:
	movs	r3, #0
.L964:
	str	r3, [r7, #12]
	b	.L962
.L957:
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #364]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L965
	ldr	r3, [r7, #4]
	add	r3, r3, #364
	b	.L966
.L965:
	movs	r3, #0
.L966:
	str	r3, [r7, #12]
	b	.L962
.L960:
	ldr	r3, [r7, #4]
	add	r3, r3, #468
	str	r3, [r7, #12]
	b	.L962
.L956:
	ldr	r3, [r7, #4]
	add	r3, r3, #260
	str	r3, [r7, #12]
	b	.L962
.L961:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #548]
	cmp	r3, #0
	beq	.L967
	ldr	r3, [r7, #4]
	add	r3, r3, #548
	b	.L968
.L967:
	movs	r3, #0
.L968:
	str	r3, [r7, #12]
	b	.L962
.L953:
	movs	r3, #0
	str	r3, [r7, #12]
.L962:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	get_sfnt_table, .-get_sfnt_table
	.section	.text.sfnt_table_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_table_info, %function
sfnt_table_info:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L971
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L972
.L971:
	movs	r3, #6
	b	.L973
.L972:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L974
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #152]
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3]
	b	.L975
.L974:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #152]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L976
	movs	r3, #142
	b	.L973
.L976:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #156]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #156]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #156]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #24]
	str	r2, [r3]
.L975:
	movs	r3, #0
.L973:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	sfnt_table_info, .-sfnt_table_info
	.section	.data.rel.ro.local.sfnt_service_sfnt_table,"aw",%progbits
	.align	2
	.type	sfnt_service_sfnt_table, %object
	.size	sfnt_service_sfnt_table, 12
sfnt_service_sfnt_table:
	.word	tt_face_load_any
	.word	get_sfnt_table
	.word	sfnt_table_info
	.section	.text.sfnt_get_glyph_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_get_glyph_name, %function
sfnt_get_glyph_name:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	tt_face_get_ps_name(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L978
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7]
	bl	ft_mem_strcpyn(PLT)
.L978:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	sfnt_get_glyph_name, .-sfnt_get_glyph_name
	.section	.text.sfnt_get_name_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_get_name_index, %function
sfnt_get_name_index:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	mov	r3, #-1
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bge	.L981
	movs	r3, #0
	b	.L982
.L981:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	cmp	r3, #-1
	beq	.L983
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	str	r3, [r7, #24]
.L983:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L984
.L988:
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	mov	r2, r3
	bl	tt_face_get_ps_name(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L986
	ldr	r3, [r7, #12]
	ldr	r0, [r7]
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L986
	ldr	r3, [r7, #28]
	b	.L982
.L986:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L984:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L988
	movs	r3, #0
.L982:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	sfnt_get_name_index, .-sfnt_get_name_index
	.section	.data.rel.ro.local.sfnt_service_glyph_dict,"aw",%progbits
	.align	2
	.type	sfnt_service_glyph_dict, %object
	.size	sfnt_service_glyph_dict, 8
sfnt_service_glyph_dict:
	.word	sfnt_get_glyph_name
	.word	sfnt_get_name_index
	.section	.text.sfnt_get_ps_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_get_ps_name, %function
sfnt_get_ps_name:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #664]
	cmp	r3, #0
	beq	.L990
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #664]
	b	.L991
.L990:
	mov	r3, #-1
	str	r3, [r7, #72]
	mov	r3, #-1
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L992
.L995:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #356]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #6]
	cmp	r3, #6
	bne	.L993
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #8]
	cmp	r3, #0
	beq	.L993
	ldr	r3, [r7, #48]
	ldrh	r3, [r3]
	cmp	r3, #3
	bne	.L994
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #2]
	cmp	r3, #1
	bne	.L994
	ldr	r3, [r7, #48]
	ldrh	r2, [r3, #4]
	movw	r3, #1033
	cmp	r2, r3
	bne	.L994
	ldr	r3, [r7, #76]
	str	r3, [r7, #72]
.L994:
	ldr	r3, [r7, #48]
	ldrh	r3, [r3]
	cmp	r3, #1
	bne	.L993
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L993
	ldr	r3, [r7, #48]
	ldrh	r3, [r3, #4]
	cmp	r3, #0
	bne	.L993
	ldr	r3, [r7, #76]
	str	r3, [r7, #68]
.L993:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L992:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #340]
	mov	r2, r3
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bgt	.L995
	ldr	r3, [r7, #72]
	cmp	r3, #-1
	beq	.L996
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #356]
	ldr	r2, [r7, #72]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #8]
	lsrs	r3, r3, #1
	uxth	r3, r3
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #16]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #8]
	adds	r2, r3, #1
	add	r3, r7, #16
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L997
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	str	r3, [r7, #36]
	ldr	r3, [r7, #64]
	str	r3, [r7, #56]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #36]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L998
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #8]
	ldr	r0, [r7, #36]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L999
.L998:
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #64]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #40]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [r3, #16]
	b	.L1004
.L999:
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #32]
	str	r3, [r7, #52]
	b	.L1001
.L1003:
	ldr	r3, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1002
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #31
	ble	.L1002
	ldr	r3, [r7, #56]
	adds	r2, r3, #1
	str	r2, [r7, #56]
	ldr	r2, [r7, #52]
	adds	r2, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	uxtb	r2, r2
	strb	r2, [r3]
.L1002:
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #52]
	adds	r3, r3, #2
	str	r3, [r7, #52]
.L1001:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L1003
	ldr	r3, [r7, #56]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r0, [r7, #36]
	bl	FT_Stream_ExitFrame(PLT)
	b	.L1004
.L997:
	nop
	b	.L1004
.L996:
	ldr	r3, [r7, #68]
	cmp	r3, #-1
	beq	.L1004
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #356]
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #8]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #12
	ldr	r0, [r7, #32]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1004
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #360]
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1006
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #64]
	ldr	r2, [r7, #24]
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1007
.L1006:
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #28]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #64]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L1004
.L1007:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L1004:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #64]
	str	r2, [r3, #664]
	ldr	r3, [r7, #64]
.L991:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	sfnt_get_ps_name, .-sfnt_get_ps_name
	.section	.data.rel.ro.local.sfnt_service_ps_name,"aw",%progbits
	.align	2
	.type	sfnt_service_ps_name, %object
	.size	sfnt_service_ps_name, 4
sfnt_service_ps_name:
	.word	sfnt_get_ps_name
	.section	.data.rel.ro.local.tt_service_get_cmap_info,"aw",%progbits
	.align	2
	.type	tt_service_get_cmap_info, %object
	.size	tt_service_get_cmap_info, 4
tt_service_get_cmap_info:
	.word	tt_get_cmap_info
	.section	.rodata
	.align	2
.LC2:
	.ascii	"CHARSET_REGISTRY\000"
	.align	2
.LC3:
	.ascii	"CHARSET_ENCODING\000"
	.section	.text.sfnt_get_charset_id,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_get_charset_id, %function
sfnt_get_charset_id:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r2, .L1013
.LPIC26:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	tt_face_find_bdf_prop(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L1010
	add	r3, r7, #28
	ldr	r0, [r7, #12]
	ldr	r2, .L1013+4
.LPIC27:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	tt_face_find_bdf_prop(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L1010
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L1011
	ldr	r3, [r7, #28]
	cmp	r3, #1
	bne	.L1011
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L1010
.L1011:
	movs	r3, #6
	str	r3, [r7, #36]
.L1010:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1014:
	.align	2
.L1013:
	.word	.LC2-(.LPIC26+4)
	.word	.LC3-(.LPIC27+4)
	.size	sfnt_get_charset_id, .-sfnt_get_charset_id
	.section	.data.rel.ro.local.sfnt_service_bdf,"aw",%progbits
	.align	2
	.type	sfnt_service_bdf, %object
	.size	sfnt_service_bdf, 8
sfnt_service_bdf:
	.word	sfnt_get_charset_id
	.word	tt_face_find_bdf_prop
	.section	.rodata
	.align	2
.LC4:
	.ascii	"sfnt-table\000"
	.align	2
.LC5:
	.ascii	"postscript-font-name\000"
	.align	2
.LC6:
	.ascii	"glyph-dict\000"
	.align	2
.LC7:
	.ascii	"bdf\000"
	.align	2
.LC8:
	.ascii	"tt-cmaps\000"
	.section	.data.rel.ro.local.sfnt_services,"aw",%progbits
	.align	2
	.type	sfnt_services, %object
	.size	sfnt_services, 48
sfnt_services:
	.word	.LC4
	.word	sfnt_service_sfnt_table
	.word	.LC5
	.word	sfnt_service_ps_name
	.word	.LC6
	.word	sfnt_service_glyph_dict
	.word	.LC7
	.word	sfnt_service_bdf
	.word	.LC8
	.word	tt_service_get_cmap_info
	.word	0
	.word	0
	.section	.text.sfnt_get_interface,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sfnt_get_interface, %function
sfnt_get_interface:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L1017
.LPIC28:
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
.L1018:
	.align	2
.L1017:
	.word	sfnt_services-(.LPIC28+4)
	.size	sfnt_get_interface, .-sfnt_get_interface
	.section	.data.rel.ro.local.sfnt_interface,"aw",%progbits
	.align	2
	.type	sfnt_interface, %object
	.size	sfnt_interface, 120
sfnt_interface:
	.word	tt_face_goto_table
	.word	sfnt_init_face
	.word	sfnt_load_face
	.word	sfnt_done_face
	.word	sfnt_get_interface
	.word	tt_face_load_any
	.word	tt_face_load_head
	.word	tt_face_load_hhea
	.word	tt_face_load_cmap
	.word	tt_face_load_maxp
	.word	tt_face_load_os2
	.word	tt_face_load_post
	.word	tt_face_load_name
	.word	tt_face_free_name
	.word	tt_face_load_kern
	.word	tt_face_load_gasp
	.word	tt_face_load_pclt
	.word	tt_face_load_bhed
	.word	tt_face_load_sbit_image
	.word	tt_face_get_ps_name
	.word	tt_face_free_ps_names
	.word	tt_face_get_kerning
	.word	tt_face_load_font_dir
	.word	tt_face_load_hmtx
	.word	tt_face_load_sbit
	.word	tt_face_free_sbit
	.word	tt_face_set_sbit_strike
	.word	tt_face_load_strike_metrics
	.word	tt_face_get_metrics
	.word	tt_face_get_name
	.global	sfnt_module_class
	.section	.data.rel.ro.local.sfnt_module_class,"aw",%progbits
	.align	2
	.type	sfnt_module_class, %object
	.size	sfnt_module_class, 36
sfnt_module_class:
	.word	0
	.word	12
	.word	.LC0
	.word	65536
	.word	131072
	.word	sfnt_interface
	.word	0
	.word	0
	.word	sfnt_get_interface
	.section	.text.tt_face_load_sbit,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_sbit, %function
tt_face_load_sbit:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #724]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #728]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #732]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #736]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movw	r1, #19523
	movt	r1, 17218
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L1020
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #732]
	b	.L1021
.L1020:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movw	r1, #19523
	movt	r1, 17730
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1022
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movw	r1, #28515
	movt	r1, 25196
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #44]
.L1022:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L1021
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #732]
.L1021:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1023
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movw	r1, #27000
	movt	r1, 29538
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L1023
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3, #732]
.L1023:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1024
	b	.L1025
.L1024:
	ldr	r3, [r7, #12]
	cmp	r3, #7
	bhi	.L1026
	movs	r3, #3
	str	r3, [r7, #44]
	b	.L1025
.L1026:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #732]
	cmp	r3, #1
	bcc	.L1027
	cmp	r3, #2
	bls	.L1028
	cmp	r3, #3
	beq	.L1029
	b	.L1027
.L1028:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #724
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1030
	b	.L1025
.L1030:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #728]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #724]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #32]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	cmp	r3, #131072
	beq	.L1031
	ldr	r3, [r7, #28]
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	cmp	r3, #196608
	beq	.L1031
	movs	r3, #2
	str	r3, [r7, #44]
	b	.L1025
.L1031:
	ldr	r3, [r7, #24]
	cmp	r3, #65536
	bcc	.L1032
	movs	r3, #3
	str	r3, [r7, #44]
	b	.L1025
.L1032:
	ldr	r3, [r7, #24]
	str	r3, [r7, #40]
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	add	r2, r3, #8
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L1033
	ldr	r3, [r7, #12]
	sub	r2, r3, #8
	movw	r3, #43691
	movt	r3, 43690
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #5
	str	r3, [r7, #40]
.L1033:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #40]
	str	r2, [r3, #736]
	b	.L1034
.L1029:
	ldr	r0, [r7]
	movs	r1, #8
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1035
	b	.L1025
.L1035:
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #22]	@ movhi
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #20]	@ movhi
	ldr	r0, [r7]
	bl	FT_Stream_GetULong(PLT)
	str	r0, [r7, #16]
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
	ldrh	r3, [r7, #22]
	cmp	r3, #0
	bne	.L1036
	movs	r3, #2
	str	r3, [r7, #44]
	b	.L1025
.L1036:
	ldrh	r3, [r7, #20]
	cmp	r3, #1
	beq	.L1037
	ldrh	r3, [r7, #20]
	cmp	r3, #3
	bne	.L1038
.L1037:
	ldr	r3, [r7, #16]
	cmp	r3, #65536
	bcc	.L1039
.L1038:
	movs	r3, #3
	str	r3, [r7, #44]
	b	.L1025
.L1039:
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	lsls	r2, r3, #2
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L1040
	ldr	r3, [r7, #12]
	subs	r3, r3, #8
	lsrs	r3, r3, #2
	str	r3, [r7, #36]
.L1040:
	ldr	r0, [r7]
	bl	FT_Stream_Pos(PLT)
	mov	r3, r0
	subs	r3, r3, #8
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1041
	b	.L1025
.L1041:
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	lsls	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #728]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #728]
	ldr	r3, [r7, #4]
	add	r3, r3, #724
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1042
	b	.L1025
.L1042:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r3, #736]
	b	.L1034
.L1027:
	movs	r3, #2
	str	r3, [r7, #44]
	nop
.L1034:
	movs	r3, #0
	b	.L1046
.L1025:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1044
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #724]
	cmp	r3, #0
	beq	.L1045
	ldr	r3, [r7, #4]
	add	r3, r3, #724
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
.L1045:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #728]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #732]
.L1044:
	ldr	r3, [r7, #44]
.L1046:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_sbit, .-tt_face_load_sbit
	.section	.text.tt_face_free_sbit,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_free_sbit, %function
tt_face_free_sbit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #724
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #728]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #732]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #736]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_free_sbit, .-tt_face_free_sbit
	.section	.text.tt_face_set_sbit_strike,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_set_sbit_strike, %function
tt_face_set_sbit_strike:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #0
	ldr	r3, [r7, #4]
	bl	FT_Match_Size(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_set_sbit_strike, .-tt_face_set_sbit_strike
	.section	.text.tt_face_load_strike_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_strike_metrics, %function
tt_face_load_strike_metrics:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #736]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L1051
	movs	r3, #6
	b	.L1052
.L1051:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #732]
	cmp	r3, #1
	bcc	.L1053
	cmp	r3, #2
	bls	.L1054
	cmp	r3, #3
	beq	.L1055
	b	.L1053
.L1054:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #724]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	adds	r3, r3, #8
	add	r3, r3, r1
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	adds	r3, r3, #44
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #56]
	adds	r3, r3, #45
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #56]
	adds	r3, r3, #16
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #56]
	adds	r3, r3, #17
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #56]
	adds	r3, r3, #24
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #55]
	ldr	r3, [r7, #56]
	adds	r3, r3, #25
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #54]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	ble	.L1056
	ldrsb	r3, [r7, #54]
	cmp	r3, #0
	bge	.L1058
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	negs	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	b	.L1058
.L1056:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L1058
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L1058
	ldrsb	r3, [r7, #55]
	cmp	r3, #0
	bne	.L1059
	ldrsb	r3, [r7, #54]
	cmp	r3, #0
	beq	.L1060
.L1059:
	ldrsb	r3, [r7, #55]
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldrsb	r3, [r7, #54]
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	b	.L1058
.L1060:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
.L1058:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L1061
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
.L1061:
	ldr	r3, [r7, #56]
	adds	r3, r3, #22
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #18
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #23
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	add	r3, r3, r2
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	movs	r3, #0
	b	.L1052
.L1055:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #724]
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #44]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #508]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	movw	r1, #27000
	movt	r1, 29538
	ldr	r2, [r7, #48]
	blx	r4
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L1062
	ldr	r3, [r7, #60]
	b	.L1052
.L1062:
	ldr	r3, [r7, #40]
	adds	r2, r3, #4
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L1064
	movs	r3, #3
	b	.L1052
.L1064:
	ldr	r0, [r7, #48]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldr	r0, [r7, #48]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L1065
	ldr	r0, [r7, #48]
	movs	r1, #4
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L1066
.L1065:
	ldr	r3, [r7, #60]
	b	.L1052
.L1066:
	ldr	r0, [r7, #48]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #38]	@ movhi
	ldr	r0, [r7, #48]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #36]	@ movhi
	ldr	r0, [r7, #48]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #178]	@ movhi
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7, #12]
	adds	r3, r3, #216
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #38]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #4]
	ldrh	r2, [r7, #38]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	ldrh	r3, [r7, #38]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #4]
	sxth	r1, r3
	ldr	r3, [r7, #24]
	lsls	r2, r3, #6
	ldrh	r3, [r7, #34]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #6]
	sxth	r1, r3
	ldr	r3, [r7, #24]
	lsls	r2, r3, #6
	ldrh	r3, [r7, #34]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #4]
	sxth	r2, r3
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #6]
	sxth	r3, r3
	subs	r2, r2, r3
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #8]
	sxth	r3, r3
	adds	r1, r2, r3
	ldr	r3, [r7, #24]
	lsls	r2, r3, #6
	ldrh	r3, [r7, #34]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #10]
	mov	r1, r3
	ldr	r3, [r7, #24]
	lsls	r2, r3, #6
	ldrh	r3, [r7, #34]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #60]
	b	.L1052
.L1053:
	movs	r3, #2
.L1052:
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_strike_metrics, .-tt_face_load_strike_metrics
	.section	.text.tt_sbit_decoder_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_sbit_decoder_init, %function
tt_sbit_decoder_init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #104]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #508]
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	movw	r1, #17492
	movt	r1, 17218
	ldr	r2, [r7, #24]
	blx	r4
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L1068
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #508]
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	movw	r1, #17492
	movt	r1, 17730
	ldr	r2, [r7, #24]
	blx	r4
	str	r0, [r7, #28]
.L1068:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L1069
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #508]
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	movw	r1, #24948
	movt	r1, 25188
	ldr	r2, [r7, #24]
	blx	r4
	str	r0, [r7, #28]
.L1069:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L1070
	b	.L1071
.L1070:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	add	r2, r3, #76
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #16]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #17]
	ldr	r0, [r7, #24]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #724]
	ldr	r3, [r7, #12]
	str	r2, [r3, #36]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #724]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #728]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	add	r2, r3, #55
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #728]
	cmp	r2, r3
	bls	.L1072
	movs	r3, #3
	str	r3, [r7, #28]
	b	.L1071
.L1072:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #36]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #4
	adds	r3, r3, #8
	add	r3, r3, r1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #20]
	adds	r3, r3, #34
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #18]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #728]
	cmp	r2, r3
	bhi	.L1073
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #728]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	subs	r3, r1, r3
	lsrs	r3, r3, #3
	cmp	r2, r3
	bls	.L1071
.L1073:
	movs	r3, #3
	str	r3, [r7, #28]
.L1071:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_sbit_decoder_init, .-tt_sbit_decoder_init
	.section	.text.tt_sbit_decoder_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_sbit_decoder_done, %function
tt_sbit_decoder_done:
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
	.size	tt_sbit_decoder_done, .-tt_sbit_decoder_done
	.section	.text.tt_sbit_decoder_alloc_bitmap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_sbit_decoder_alloc_bitmap, %function
tt_sbit_decoder_alloc_bitmap:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1077
	movs	r3, #6
	str	r3, [r7, #28]
	b	.L1078
.L1077:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #2]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #31
	bhi	.L1079
	adr	r1, .L1081
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L1081:
	.word	.L1080+1-.L1081
	.word	.L1082+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1083+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1084+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1079+1-.L1081
	.word	.L1085+1-.L1081
.L1080:
	ldr	r3, [r7, #24]
	movs	r2, #1
	strb	r2, [r3, #18]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	movs	r2, #2
	strh	r2, [r3, #16]	@ movhi
	b	.L1086
.L1082:
	ldr	r3, [r7, #24]
	movs	r2, #3
	strb	r2, [r3, #18]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	movs	r2, #4
	strh	r2, [r3, #16]	@ movhi
	b	.L1086
.L1083:
	ldr	r3, [r7, #24]
	movs	r2, #4
	strb	r2, [r3, #18]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	adds	r3, r3, #1
	lsrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	movs	r2, #16
	strh	r2, [r3, #16]	@ movhi
	b	.L1086
.L1084:
	ldr	r3, [r7, #24]
	movs	r2, #2
	strb	r2, [r3, #18]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	mov	r2, #256
	strh	r2, [r3, #16]	@ movhi
	b	.L1086
.L1085:
	ldr	r3, [r7, #24]
	movs	r2, #7
	strb	r2, [r3, #18]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	mov	r2, #256
	strh	r2, [r3, #16]	@ movhi
	b	.L1086
.L1079:
	movs	r3, #3
	str	r3, [r7, #28]
	b	.L1078
.L1086:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r2, [r7, #24]
	ldr	r2, [r2, #8]
	mul	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1087
	b	.L1078
.L1087:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #84]
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	ft_glyphslot_alloc_bitmap(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L1088
	b	.L1078
.L1088:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #17]
.L1078:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_sbit_decoder_alloc_bitmap, .-tt_sbit_decoder_alloc_bitmap
	.section	.text.tt_sbit_decoder_load_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_sbit_decoder_load_metrics, %function
tt_sbit_decoder_load_metrics:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r2, r3, #5
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1091
	b	.L1092
.L1091:
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #5
	str	r3, [r7, #20]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1093
	ldr	r3, [r7, #20]
	adds	r2, r3, #3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1094
	b	.L1092
.L1094:
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r7, #20]
	adds	r3, r3, #3
	str	r3, [r7, #20]
	b	.L1095
.L1093:
	ldr	r3, [r7, #16]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #16]
	movs	r2, #0
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #16]
	movs	r2, #0
	strh	r2, [r3, #14]	@ movhi
.L1095:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	movs	r3, #0
	b	.L1096
.L1092:
	movs	r3, #6
.L1096:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_sbit_decoder_load_metrics, .-tt_sbit_decoder_load_metrics
	.section	.text.tt_sbit_decoder_load_byte_aligned,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_sbit_decoder_load_byte_aligned, %function
tt_sbit_decoder_load_byte_aligned:
	@ args = 8, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #84
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	str	r3, [r7, #32]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #12]
	str	r3, [r7, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #2]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L1098
	ldr	r2, [r7]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bhi	.L1098
	ldr	r3, [r7, #88]
	cmp	r3, #0
	blt	.L1098
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L1099
.L1098:
	movs	r3, #3
	str	r3, [r7, #76]
	b	.L1100
.L1099:
	ldr	r3, [r7, #20]
	adds	r3, r3, #7
	asrs	r3, r3, #3
	ldr	r2, [r7, #24]
	mul	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1101
	movs	r3, #3
	str	r3, [r7, #76]
	b	.L1100
.L1101:
	ldr	r3, [r7, #88]
	ldr	r2, [r7, #32]
	mul	r2, r2, r3
	ldr	r3, [r7]
	asrs	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7]
	and	r3, r3, #7
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1102
	ldr	r3, [r7, #24]
	str	r3, [r7, #68]
	b	.L1103
.L1107:
	ldr	r3, [r7, #72]
	str	r3, [r7, #64]
	ldr	r3, [r7, #20]
	str	r3, [r7, #60]
	b	.L1104
.L1105:
	ldr	r3, [r7, #64]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	adds	r1, r3, #1
	str	r1, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #64]
	strb	r2, [r3]
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
	ldr	r3, [r7, #60]
	subs	r3, r3, #8
	str	r3, [r7, #60]
.L1104:
	ldr	r3, [r7, #60]
	cmp	r3, #7
	bgt	.L1105
	ldr	r3, [r7, #60]
	cmp	r3, #0
	ble	.L1106
	ldr	r3, [r7, #64]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #8]
	adds	r1, r3, #1
	str	r1, [r7, #8]
	ldrb	r1, [r3]	@ zero_extendqisi2
	mov	r0, #65280
	ldr	r3, [r7, #60]
	lsr	r3, r0, r3
	uxtb	r3, r3
	ands	r3, r3, r1
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #64]
	strb	r2, [r3]
.L1106:
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #72]
.L1103:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bgt	.L1107
	b	.L1100
.L1102:
	ldr	r3, [r7, #24]
	str	r3, [r7, #68]
	b	.L1108
.L1113:
	ldr	r3, [r7, #72]
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r3, [r7, #20]
	str	r3, [r7, #52]
	b	.L1109
.L1110:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #48]
	orrs	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #56]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #48]
	ldr	r3, [r7]
	lsr	r3, r1, r3
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #56]
	strb	r2, [r3]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	lsls	r3, r3, #8
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	subs	r3, r3, #8
	str	r3, [r7, #52]
.L1109:
	ldr	r3, [r7, #52]
	cmp	r3, #7
	bgt	.L1110
	ldr	r3, [r7, #52]
	cmp	r3, #0
	ble	.L1111
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r1, #65280
	ldr	r3, [r7, #52]
	lsr	r3, r1, r3
	ands	r3, r3, r2
	ldr	r2, [r7, #48]
	orrs	r3, r3, r2
	str	r3, [r7, #48]
.L1111:
	ldr	r3, [r7, #56]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #48]
	ldr	r3, [r7]
	lsr	r3, r1, r3
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #56]
	strb	r2, [r3]
	ldr	r2, [r7]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	cmp	r3, #8
	ble	.L1112
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	lsls	r3, r3, #8
	str	r3, [r7, #48]
	ldr	r3, [r7, #56]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #48]
	ldr	r3, [r7]
	lsr	r3, r1, r3
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #56]
	strb	r2, [r3]
.L1112:
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #72]
.L1108:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bgt	.L1113
.L1100:
	ldr	r3, [r7, #76]
	mov	r0, r3
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	tt_sbit_decoder_load_byte_aligned, .-tt_sbit_decoder_load_byte_aligned
	.section	.text.tt_sbit_decoder_load_bit_aligned,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_sbit_decoder_load_bit_aligned, %function
tt_sbit_decoder_load_bit_aligned:
	@ args = 8, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #76
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	str	r3, [r7, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #2]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	ldr	r2, [r7, #24]
	mul	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L1116
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L1116
	ldr	r3, [r7, #88]
	cmp	r3, #0
	blt	.L1116
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L1117
.L1116:
	movs	r3, #3
	str	r3, [r7, #68]
	b	.L1118
.L1117:
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	mul	r3, r2, r3
	adds	r3, r3, #7
	asrs	r3, r3, #3
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1119
	movs	r3, #3
	str	r3, [r7, #68]
	b	.L1118
.L1119:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1118
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1118
	ldr	r3, [r7, #88]
	ldr	r2, [r7, #28]
	mul	r2, r2, r3
	ldr	r3, [r7]
	asrs	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7]
	and	r3, r3, #7
	str	r3, [r7]
	movs	r3, #0
	strh	r3, [r7, #54]	@ movhi
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7, #20]
	str	r3, [r7, #60]
	b	.L1120
.L1131:
	ldr	r3, [r7, #64]
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	str	r3, [r7, #44]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1121
	ldr	r3, [r7]
	rsb	r2, r3, #8
	ldr	r3, [r7, #16]
	cmp	r3, r2
	it	ge
	movge	r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L1122
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strh	r3, [r7, #54]	@ movhi
	ldr	r3, [r7]
	str	r3, [r7, #56]
	b	.L1123
.L1122:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bge	.L1124
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L1125
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldrh	r3, [r7, #54]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #54]	@ movhi
.L1125:
	ldr	r3, [r7, #44]
	rsb	r3, r3, #8
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	b	.L1123
.L1124:
	ldrh	r3, [r7, #54]
	lsrs	r3, r3, #8
	strh	r3, [r7, #54]	@ movhi
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #56]
.L1123:
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r2, [r3]	@ zero_extendqisi2
	uxtb	r1, r2
	ldrh	r0, [r7, #54]
	ldr	r2, [r7, #56]
	asr	r2, r0, r2
	uxtb	r0, r2
	movs	r4, #255
	ldr	r2, [r7, #44]
	lsl	r2, r4, r2
	mvns	r4, r2
	ldr	r2, [r7, #44]
	rsb	r5, r2, #8
	ldr	r2, [r7]
	subs	r2, r5, r2
	lsl	r2, r4, r2
	uxtb	r2, r2
	ands	r2, r2, r0
	uxtb	r2, r2
	orrs	r2, r2, r1
	uxtb	r2, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldrh	r3, [r7, #54]	@ movhi
	lsls	r3, r3, #8
	strh	r3, [r7, #54]	@ movhi
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	b	.L1126
.L1121:
	b	.L1126
.L1127:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldrh	r3, [r7, #54]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #54]	@ movhi
	ldr	r3, [r7, #48]
	adds	r2, r3, #1
	str	r2, [r7, #48]
	ldrb	r2, [r3]	@ zero_extendqisi2
	uxtb	r1, r2
	ldrh	r0, [r7, #54]
	ldr	r2, [r7, #56]
	asr	r2, r0, r2
	uxtb	r2, r2
	orrs	r2, r2, r1
	uxtb	r2, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldrh	r3, [r7, #54]	@ movhi
	lsls	r3, r3, #8
	strh	r3, [r7, #54]	@ movhi
	ldr	r3, [r7, #44]
	subs	r3, r3, #8
	str	r3, [r7, #44]
.L1126:
	ldr	r3, [r7, #44]
	cmp	r3, #7
	bgt	.L1127
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ble	.L1128
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bge	.L1129
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L1130
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldrh	r3, [r7, #54]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #54]	@ movhi
.L1130:
	ldr	r3, [r7, #48]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrh	r1, [r7, #54]
	ldr	r3, [r7, #56]
	asr	r3, r1, r3
	uxtb	r1, r3
	mov	r0, #65280
	ldr	r3, [r7, #44]
	lsr	r3, r0, r3
	uxtb	r3, r3
	ands	r3, r3, r1
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #48]
	strb	r2, [r3]
	ldr	r3, [r7, #44]
	rsb	r3, r3, #8
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldrh	r3, [r7, #54]	@ movhi
	lsls	r3, r3, #8
	strh	r3, [r7, #54]	@ movhi
	b	.L1128
.L1129:
	ldr	r3, [r7, #48]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrh	r1, [r7, #54]
	ldr	r3, [r7, #56]
	asr	r3, r1, r3
	uxtb	r1, r3
	mov	r0, #65280
	ldr	r3, [r7, #44]
	lsr	r3, r0, r3
	uxtb	r3, r3
	ands	r3, r3, r1
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #48]
	strb	r2, [r3]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #56]
.L1128:
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
.L1120:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bgt	.L1131
.L1118:
	ldr	r3, [r7, #68]
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	tt_sbit_decoder_load_bit_aligned, .-tt_sbit_decoder_load_bit_aligned
	.section	.text.tt_sbit_decoder_load_compound,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_sbit_decoder_load_compound, %function
tt_sbit_decoder_load_compound:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #4]
	strb	r3, [r7, #39]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #6]
	strb	r3, [r7, #38]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #8]
	strb	r3, [r7, #37]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #10]
	strb	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #12]
	strb	r3, [r7, #35]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #14]
	strb	r3, [r7, #34]
	ldr	r3, [r7, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1134
	b	.L1135
.L1134:
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
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1136
	b	.L1135
.L1136:
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L1137
.L1140:
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
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]
	strb	r3, [r7, #23]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]
	strb	r3, [r7, #22]
	ldrb	r2, [r7, #23]	@ zero_extendqisi2
	ldr	r3, [r7]
	add	r2, r2, r3
	ldrb	r1, [r7, #22]	@ zero_extendqisi2
	ldr	r3, [r7, #56]
	add	r3, r3, r1
	ldr	r1, [r7, #60]
	adds	r1, r1, #1
	str	r1, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	bl	tt_sbit_decoder_load_image(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1138
	b	.L1139
.L1138:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L1137:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L1140
.L1139:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrsb	r2, [r7, #39]
	uxth	r2, r2
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrsb	r2, [r7, #38]
	uxth	r2, r2
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #37]	@ zero_extendqisi2
	uxth	r2, r2
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrsb	r2, [r7, #36]
	uxth	r2, r2
	strh	r2, [r3, #10]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrsb	r2, [r7, #35]
	uxth	r2, r2
	strh	r2, [r3, #12]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrb	r2, [r7, #34]	@ zero_extendqisi2
	uxth	r2, r2
	strh	r2, [r3, #14]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	ldr	r2, [r2, #4]
	uxtb	r2, r2
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #8]
	ldr	r2, [r2]
	uxtb	r2, r2
	strh	r2, [r3]	@ movhi
.L1141:
	ldr	r3, [r7, #44]
	b	.L1143
.L1135:
	movs	r3, #3
	str	r3, [r7, #44]
	b	.L1141
.L1143:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_sbit_decoder_load_compound, .-tt_sbit_decoder_load_compound
	.section	.text.tt_sbit_decoder_load_bitmap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_sbit_decoder_load_bitmap, %function
tt_sbit_decoder_load_bitmap:
	@ args = 12, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #44]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1145
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	cmp	r2, r3
	bls	.L1146
.L1145:
	movs	r3, #6
	str	r3, [r7, #52]
	b	.L1147
.L1146:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L1147
	add	r3, r7, #16
	ldr	r0, [r7, #44]
	ldr	r1, [r7]
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L1147
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	cmp	r3, #17
	bhi	.L1148
	adr	r1, .L1150
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L1150:
	.word	.L1149+1-.L1150
	.word	.L1149+1-.L1150
	.word	.L1148+1-.L1150
	.word	.L1148+1-.L1150
	.word	.L1148+1-.L1150
	.word	.L1151+1-.L1150
	.word	.L1151+1-.L1150
	.word	.L1149+1-.L1150
	.word	.L1151+1-.L1150
	.word	.L1148+1-.L1150
	.word	.L1148+1-.L1150
	.word	.L1148+1-.L1150
	.word	.L1148+1-.L1150
	.word	.L1148+1-.L1150
	.word	.L1148+1-.L1150
	.word	.L1148+1-.L1150
	.word	.L1149+1-.L1150
	.word	.L1151+1-.L1150
.L1149:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #40]
	movs	r3, #0
	bl	tt_sbit_decoder_load_metrics(PLT)
	str	r0, [r7, #52]
	b	.L1152
.L1151:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #40]
	movs	r3, #1
	bl	tt_sbit_decoder_load_metrics(PLT)
	str	r0, [r7, #52]
	b	.L1152
.L1148:
	movs	r3, #0
	str	r3, [r7, #52]
.L1152:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L1153
	b	.L1154
.L1153:
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	cmp	r3, #18
	bhi	.L1155
	adr	r1, .L1157
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L1157:
	.word	.L1156+1-.L1157
	.word	.L1158+1-.L1157
	.word	.L1155+1-.L1157
	.word	.L1155+1-.L1157
	.word	.L1159+1-.L1157
	.word	.L1156+1-.L1157
	.word	.L1158+1-.L1157
	.word	.L1160+1-.L1157
	.word	.L1161+1-.L1157
	.word	.L1155+1-.L1157
	.word	.L1155+1-.L1157
	.word	.L1155+1-.L1157
	.word	.L1155+1-.L1157
	.word	.L1155+1-.L1157
	.word	.L1155+1-.L1157
	.word	.L1155+1-.L1157
	.word	.L1162+1-.L1157
	.word	.L1162+1-.L1157
	.word	.L1162+1-.L1157
.L1156:
	ldr	r3, .L1169
.LPIC29:
	add	r3, pc
	str	r3, [r7, #48]
	b	.L1163
.L1158:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #2]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #32]
	mul	r3, r2, r3
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	ldr	r2, [r7, #32]
	mul	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcs	.L1164
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L1164
	ldr	r3, .L1169+4
.LPIC30:
	add	r3, pc
	str	r3, [r7, #48]
	b	.L1163
.L1164:
	ldr	r3, .L1169+8
.LPIC31:
	add	r3, pc
	str	r3, [r7, #48]
	b	.L1163
.L1159:
	ldr	r3, .L1169+12
.LPIC32:
	add	r3, pc
	str	r3, [r7, #48]
	b	.L1163
.L1160:
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bls	.L1166
	b	.L1154
.L1166:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1161:
	ldr	r3, .L1169+16
.LPIC33:
	add	r3, pc
	str	r3, [r7, #48]
	b	.L1163
.L1162:
	movs	r3, #7
	str	r3, [r7, #52]
	b	.L1154
.L1155:
	movs	r3, #8
	str	r3, [r7, #52]
	b	.L1154
.L1163:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #17]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1167
	ldr	r0, [r7, #12]
	bl	tt_sbit_decoder_alloc_bitmap(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L1167
	b	.L1154
.L1167:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #76]
	str	r2, [sp]
	ldr	r2, [r7, #80]
	str	r2, [sp, #4]
	ldr	r4, [r7, #48]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #72]
	blx	r4
	str	r0, [r7, #52]
.L1154:
	add	r3, r7, #16
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
.L1147:
	ldr	r3, [r7, #52]
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1170:
	.align	2
.L1169:
	.word	tt_sbit_decoder_load_byte_aligned-(.LPIC29+4)
	.word	tt_sbit_decoder_load_byte_aligned-(.LPIC30+4)
	.word	tt_sbit_decoder_load_bit_aligned-(.LPIC31+4)
	.word	tt_sbit_decoder_load_bit_aligned-(.LPIC32+4)
	.word	tt_sbit_decoder_load_compound-(.LPIC33+4)
	.size	tt_sbit_decoder_load_bitmap, .-tt_sbit_decoder_load_bitmap
	.section	.text.tt_sbit_decoder_load_image,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_sbit_decoder_load_image, %function
tt_sbit_decoder_load_image:
	@ args = 4, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #104
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	str	r3, [r7, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #76]
	ldr	r3, [r7, #96]
	cmp	r3, #100
	bls	.L1172
	b	.L1173
.L1172:
	b	.L1174
.L1177:
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
	str	r3, [r7, #60]
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
	str	r3, [r7, #56]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bcc	.L1175
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bhi	.L1175
	nop
.L1176:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcs	.L1179
	b	.L1212
.L1175:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #84]
	subs	r3, r3, #1
	str	r3, [r7, #84]
.L1174:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bne	.L1177
	b	.L1178
.L1212:
	b	.L1173
.L1179:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	add	r2, r3, #8
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L1180
	b	.L1178
.L1180:
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
	str	r3, [r7, #48]
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
	str	r3, [r7, #44]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	cmp	r3, #18
	bhi	.L1213
	adr	r1, .L1183
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L1183:
	.word	.L1182+1-.L1183
	.word	.L1184+1-.L1183
	.word	.L1185+1-.L1183
	.word	.L1186+1-.L1183
	.word	.L1187+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1213+1-.L1183
	.word	.L1187+1-.L1183
.L1182:
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #60]
	subs	r3, r1, r3
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	add	r2, r3, #8
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L1188
	b	.L1178
.L1188:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
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
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bne	.L1189
	b	.L1178
.L1189:
	b	.L1190
.L1184:
	ldr	r3, [r7, #16]
	add	r2, r3, #12
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L1191
	b	.L1178
.L1191:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #40]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #64]
	movs	r3, #1
	bl	tt_sbit_decoder_load_metrics(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1192
	b	.L1178
.L1192:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	ldr	r2, [r7, #40]
	mul	r3, r2, r3
	str	r3, [r7, #80]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #76]
	b	.L1190
.L1185:
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #60]
	subs	r3, r1, r3
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L1193
	b	.L1178
.L1193:
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
	str	r3, [r7, #80]
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
	str	r3, [r7, #76]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bne	.L1194
	b	.L1178
.L1194:
	b	.L1190
.L1186:
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L1195
	b	.L1178
.L1195:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bhi	.L1178
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	asrs	r3, r3, #2
	subs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L1178
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L1196
.L1199:
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
	str	r3, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L1197
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
	str	r3, [r7, #80]
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #76]
	b	.L1198
.L1197:
	ldr	r3, [r7, #16]
	adds	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L1196:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L1199
.L1198:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L1200
	b	.L1178
.L1200:
	b	.L1190
.L1187:
	ldr	r3, [r7, #16]
	add	r2, r3, #16
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bls	.L1201
	b	.L1178
.L1201:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #64]
	movs	r3, #1
	bl	tt_sbit_decoder_load_metrics(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1202
	b	.L1178
.L1202:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #16]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcs	.L1203
	b	.L1178
.L1203:
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L1204
.L1207:
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
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L1205
	b	.L1206
.L1205:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L1204:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L1207
.L1206:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L1208
	b	.L1178
.L1208:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #68]
	mul	r3, r2, r3
	str	r3, [r7, #80]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #76]
	nop
.L1190:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bls	.L1209
	b	.L1178
.L1209:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #80]
	subs	r3, r2, r3
	str	r3, [r7, #76]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #4]
	str	r3, [sp]
	ldr	r3, [r7]
	str	r3, [sp, #4]
	ldr	r3, [r7, #96]
	str	r3, [sp, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #44]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #76]
	bl	tt_sbit_decoder_load_bitmap(PLT)
	mov	r3, r0
	b	.L1211
.L1173:
	movs	r3, #8
	b	.L1211
.L1213:
	nop
.L1178:
	movs	r3, #6
.L1211:
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_sbit_decoder_load_image, .-tt_sbit_decoder_load_image
	.section	.text.tt_face_load_sbix_image,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_sbix_image, %function
tt_face_load_sbix_image:
	@ args = 8, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #84]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #84]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #724]
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	lsls	r3, r3, #2
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	adds	r3, r3, #4
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #52]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #52]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #508]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	movw	r1, #27000
	movt	r1, 29538
	ldr	r2, [r7]
	blx	r4
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L1215
	ldr	r3, [r7, #56]
	b	.L1236
.L1215:
	ldr	r0, [r7]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #44]
.L1217:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L1218
	movs	r3, #6
	b	.L1236
.L1218:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #48]
	cmp	r2, r3
	bcs	.L1219
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #48]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	lsls	r3, r3, #2
	cmp	r2, r3
	bcs	.L1220
.L1219:
	movs	r3, #3
	b	.L1236
.L1220:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #48]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	adds	r3, r3, #4
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L1221
	ldr	r0, [r7]
	movs	r1, #8
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L1222
.L1221:
	ldr	r3, [r7, #56]
	b	.L1236
.L1222:
	ldr	r0, [r7]
	bl	FT_Stream_GetULong(PLT)
	str	r0, [r7, #40]
	ldr	r0, [r7]
	bl	FT_Stream_GetULong(PLT)
	str	r0, [r7, #36]
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bne	.L1223
	movs	r3, #6
	b	.L1236
.L1223:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L1224
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	cmp	r3, #7
	bls	.L1224
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #48]
	subs	r2, r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcs	.L1225
.L1224:
	movs	r3, #3
	b	.L1236
.L1225:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #48]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L1226
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L1227
.L1226:
	ldr	r3, [r7, #56]
	b	.L1236
.L1227:
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #32]
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #28]
	ldr	r0, [r7]
	bl	FT_Stream_GetULong(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	movw	r2, #26400
	movt	r2, 28782
	cmp	r3, r2
	beq	.L1229
	movw	r2, #26400
	movt	r2, 28782
	cmp	r3, r2
	bhi	.L1230
	movw	r2, #28773
	movt	r2, 25717
	cmp	r3, r2
	beq	.L1231
	movw	r2, #26400
	movt	r2, 27248
	cmp	r3, r2
	beq	.L1232
	b	.L1228
.L1230:
	movw	r2, #25196
	movt	r2, 29287
	cmp	r3, r2
	beq	.L1232
	movw	r2, #26214
	movt	r2, 29801
	cmp	r3, r2
	beq	.L1232
	b	.L1228
.L1231:
	ldr	r3, [r7, #60]
	cmp	r3, #3
	bgt	.L1233
	ldr	r0, [r7]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	b	.L1217
.L1233:
	movs	r3, #3
	str	r3, [r7, #56]
	b	.L1234
.L1229:
	movs	r3, #7
	str	r3, [r7, #56]
	b	.L1234
.L1232:
	movs	r3, #2
	str	r3, [r7, #56]
	b	.L1234
.L1228:
	movs	r3, #7
	str	r3, [r7, #56]
	nop
.L1234:
	ldr	r0, [r7]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L1235
	add	r3, r7, #18
	add	r2, r7, #16
	str	r2, [sp]
	ldr	r0, [r7, #12]
	movs	r1, #0
	ldr	r2, [r7, #4]
	bl	tt_face_get_metrics(PLT)
	ldr	r3, [r7, #32]
	uxth	r2, r3
	ldr	r3, [r7, #84]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #84]
	ldrh	r2, [r3]
	ldr	r3, [r7, #28]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #84]
	strh	r2, [r3, #6]	@ movhi
	ldrh	r3, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #88]
	ldrh	r2, [r2, #12]
	mul	r2, r2, r3
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #178]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7, #84]
	strh	r2, [r3, #8]	@ movhi
.L1235:
	ldr	r3, [r7, #56]
.L1236:
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	tt_face_load_sbix_image, .-tt_face_load_sbix_image
	.section	.text.tt_face_load_sbit_image,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_sbit_image, %function
tt_face_load_sbit_image:
	@ args = 12, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #104
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #732]
	cmp	r3, #1
	bcc	.L1238
	cmp	r3, #2
	bls	.L1239
	cmp	r3, #3
	beq	.L1240
	b	.L1238
.L1239:
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #112]
	bl	tt_sbit_decoder_init(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L1241
	add	r3, r7, #20
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #4]
	movs	r2, #0
	movs	r3, #0
	bl	tt_sbit_decoder_load_image(PLT)
	str	r0, [r7, #92]
	add	r3, r7, #20
	mov	r0, r3
	bl	tt_sbit_decoder_done(PLT)
	b	.L1242
.L1241:
	b	.L1242
.L1240:
	ldr	r3, [r7, #108]
	str	r3, [sp]
	ldr	r3, [r7, #112]
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #104]
	bl	tt_face_load_sbix_image(PLT)
	str	r0, [r7, #92]
	b	.L1242
.L1238:
	movs	r3, #2
	str	r3, [r7, #92]
	nop
.L1242:
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L1243
	ldr	r3, [r7]
	and	r3, r3, #1048576
	cmp	r3, #0
	bne	.L1243
	ldr	r3, [r7, #108]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #7
	bne	.L1243
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	ldr	r3, [r3]
	str	r3, [r7, #88]
	add	r3, r7, #64
	mov	r0, r3
	bl	FT_Bitmap_Init(PLT)
	add	r3, r7, #64
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #108]
	mov	r2, r3
	movs	r3, #1
	bl	FT_Bitmap_Convert(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	beq	.L1244
	add	r3, r7, #64
	ldr	r0, [r7, #88]
	mov	r1, r3
	bl	FT_Bitmap_Done(PLT)
	b	.L1243
.L1244:
	ldrb	r2, [r7, #82]	@ zero_extendqisi2
	ldr	r3, [r7, #108]
	strb	r2, [r3, #18]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #108]
	str	r2, [r3, #8]
	ldrh	r2, [r7, #80]
	ldr	r3, [r7, #108]
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #76]
	mov	r0, r2
	mov	r1, r3
	bl	ft_glyphslot_set_bitmap(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #84]
	ldr	r2, [r2, #156]
	ldr	r2, [r2, #4]
	orr	r2, r2, #1
	str	r2, [r3, #4]
.L1243:
	ldr	r3, [r7, #92]
	mov	r0, r3
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_load_sbit_image, .-tt_face_load_sbit_image
	.section	.text.load_format_20,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	load_format_20, %function
load_format_20:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #64]
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1248
	b	.L1249
.L1248:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #264]
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bge	.L1250
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L1249
.L1250:
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #16
	str	r3, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #2
	movs	r2, #0
	ldr	r3, [r7, #32]
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1251
	ldr	r3, [r7, #32]
	lsls	r3, r3, #1
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1251
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L1252
.L1253:
	ldr	r3, [r7, #60]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	adds	r4, r2, r3
	ldr	r0, [r7, #8]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	strh	r3, [r4]	@ movhi
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L1252:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L1253
	ldr	r0, [r7, #8]
	bl	FT_Stream_ExitFrame(PLT)
	movs	r3, #0
	strh	r3, [r7, #70]	@ movhi
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L1254
.L1256:
	ldr	r3, [r7, #56]
	lsls	r3, r3, #1
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #258
	blt	.L1255
	ldr	r3, [r7, #28]
	subw	r3, r3, #257
	str	r3, [r7, #28]
	ldrh	r2, [r7, #70]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bge	.L1255
	ldr	r3, [r7, #28]
	strh	r3, [r7, #70]	@ movhi
.L1255:
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L1254:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L1256
	ldrh	r3, [r7, #70]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1257
	b	.L1251
.L1257:
	movs	r3, #0
	strh	r3, [r7, #54]	@ movhi
	b	.L1258
.L1265:
	ldr	r0, [r7, #8]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L1259
	b	.L1260
.L1259:
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1261
	b	.L1262
.L1261:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L1263
	ldr	r0, [r7, #8]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r1, [r7, #4]
	ldr	r3, [r7, #48]
	subs	r3, r1, r3
	cmp	r2, r3
	bls	.L1264
.L1263:
	ldr	r4, [r7, #4]
	ldr	r0, [r7, #8]
	bl	FT_Stream_Pos(PLT)
	mov	r3, r0
	subs	r3, r4, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	bic	r3, r3, r3, asr #31
	str	r3, [r7, #48]
.L1264:
	ldrh	r3, [r7, #54]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	adds	r4, r2, r3
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1262
	ldrh	r3, [r7, #54]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	ldr	r2, [r7, #48]
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1262
	ldrh	r3, [r7, #54]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldrh	r3, [r7, #54]
	adds	r3, r3, #1
	strh	r3, [r7, #54]	@ movhi
.L1258:
	ldrh	r2, [r7, #54]
	ldrh	r3, [r7, #70]
	cmp	r2, r3
	bcc	.L1265
.L1260:
	ldrh	r2, [r7, #54]
	ldrh	r3, [r7, #70]
	cmp	r2, r3
	bcs	.L1266
	b	.L1267
.L1269:
	ldrh	r3, [r7, #54]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	adds	r4, r2, r3
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #16
	str	r3, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #1
	movs	r2, #0
	movs	r3, #1
	bl	ft_mem_realloc(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1268
	b	.L1262
.L1268:
	ldrh	r3, [r7, #54]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r3, [r3]
	movs	r2, #0
	strb	r2, [r3]
	ldrh	r3, [r7, #54]
	adds	r3, r3, #1
	strh	r3, [r7, #54]	@ movhi
.L1267:
	ldrh	r2, [r7, #54]
	ldrh	r3, [r7, #70]
	cmp	r2, r3
	bcc	.L1269
.L1266:
	ldr	r3, [r7, #12]
	add	r3, r3, #616
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	uxth	r2, r3
	ldr	r3, [r7, #20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #20]
	ldrh	r2, [r7, #70]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #36]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #64]
	str	r2, [r3, #8]
	movs	r3, #0
	b	.L1273
.L1262:
	movs	r3, #0
	strh	r3, [r7, #46]	@ movhi
	b	.L1271
.L1272:
	ldrh	r3, [r7, #46]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldrh	r3, [r7, #46]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldrh	r3, [r7, #46]
	adds	r3, r3, #1
	strh	r3, [r7, #46]	@ movhi
.L1271:
	ldrh	r2, [r7, #46]
	ldrh	r3, [r7, #70]
	cmp	r2, r3
	bcc	.L1272
.L1251:
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #64]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
.L1249:
	ldr	r3, [r7, #16]
.L1273:
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	load_format_20, .-load_format_20
	.section	.text.load_format_25,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	load_format_25, %function
load_format_25:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1275
	b	.L1276
.L1275:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #264]
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L1277
	ldr	r3, [r7, #32]
	cmp	r3, #258
	ble	.L1278
.L1277:
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L1276
.L1278:
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #20
	str	r3, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #1
	movs	r2, #0
	ldr	r3, [r7, #32]
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1279
	ldr	r3, [r7, #32]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #36]
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1279
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L1280
.L1283:
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L1281
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	ble	.L1282
.L1281:
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L1279
.L1282:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L1280:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	blt	.L1283
	ldr	r3, [r7, #12]
	add	r3, r3, #616
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	uxth	r2, r3
	ldr	r3, [r7, #24]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #36]
	str	r2, [r3, #4]
	movs	r3, #0
	b	.L1285
.L1279:
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
.L1276:
	ldr	r3, [r7, #20]
.L1285:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	load_format_25, .-load_format_25
	.section	.text.load_post_names,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	load_post_names, %function
load_post_names:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #508]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movw	r1, #29556
	movt	r1, 28783
	ldr	r2, [r7, #24]
	blx	r4
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L1287
	b	.L1288
.L1287:
	ldr	r0, [r7, #24]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #468]
	str	r3, [r7, #16]
	ldr	r0, [r7, #24]
	movs	r1, #32
	bl	FT_Stream_Skip(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L1289
	b	.L1288
.L1289:
	ldr	r3, [r7, #16]
	cmp	r3, #131072
	bne	.L1290
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #20]
	bl	load_format_20(PLT)
	str	r0, [r7, #28]
	b	.L1291
.L1290:
	ldr	r3, [r7, #16]
	cmp	r3, #163840
	bne	.L1292
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #20]
	bl	load_format_25(PLT)
	str	r0, [r7, #28]
	b	.L1291
.L1292:
	movs	r3, #3
	str	r3, [r7, #28]
.L1291:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #612]
.L1288:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	load_post_names, .-load_post_names
	.section	.text.tt_face_free_ps_names,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_free_ps_names, %function
tt_face_free_ps_names:
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
	add	r3, r3, #612
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1295
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #468]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #131072
	bne	.L1296
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	b	.L1297
.L1298:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldrh	r3, [r7, #30]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldrh	r3, [r7, #30]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldrh	r3, [r7, #30]
	adds	r3, r3, #1
	strh	r3, [r7, #30]	@ movhi
.L1297:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	ldrh	r2, [r7, #30]
	cmp	r2, r3
	bcc	.L1298
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	b	.L1295
.L1296:
	ldr	r3, [r7, #16]
	cmp	r3, #163840
	bne	.L1295
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
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
	strh	r2, [r3]	@ movhi
.L1295:
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3]
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_free_ps_names, .-tt_face_free_ps_names
	.section	.text.tt_face_get_ps_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_get_ps_name, %function
tt_face_get_ps_name:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1300
	movs	r3, #35
	b	.L1301
.L1300:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #264]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L1302
	movs	r3, #16
	b	.L1301
.L1302:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #536]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L1303
	movs	r3, #7
	b	.L1301
.L1303:
	ldr	r3, [r7, #12]
	add	r3, r3, #612
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #16]
	movs	r0, #0
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #468]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #65536
	bne	.L1304
	ldr	r3, [r7, #8]
	cmp	r3, #258
	bcs	.L1306
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #8]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L1306
.L1304:
	ldr	r3, [r7, #36]
	cmp	r3, #131072
	bne	.L1307
	ldr	r3, [r7, #40]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1308
	ldr	r0, [r7, #12]
	bl	load_post_names(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L1308
	b	.L1306
.L1308:
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L1309
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]	@ movhi
	strh	r3, [r7, #26]	@ movhi
	ldrh	r3, [r7, #26]
	cmp	r3, #258
	bcs	.L1310
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #16]
	ldrh	r2, [r7, #26]
	mov	r0, r2
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L1309
.L1310:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldrh	r3, [r7, #26]
	add	r3, r3, #1073741824
	sub	r3, r3, #258
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L1306
.L1309:
	b	.L1306
.L1307:
	ldr	r3, [r7, #36]
	cmp	r3, #163840
	bne	.L1306
	ldr	r3, [r7, #40]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1311
	ldr	r0, [r7, #12]
	bl	load_post_names(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L1311
	b	.L1306
.L1311:
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L1306
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #20]
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #8]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	sxtb	r1, r2
	ldr	r2, [r7, #8]
	add	r2, r2, r1
	mov	r0, r2
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L1306:
	movs	r3, #0
.L1301:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_get_ps_name, .-tt_face_get_ps_name
	.section	.text.tt_face_free_bdf_props,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_free_bdf_props, %function
tt_face_free_bdf_props:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #760
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1312
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1314
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
.L1314:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
.L1312:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_free_bdf_props, .-tt_face_free_bdf_props
	.section	.text.tt_face_load_bdf_props,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_load_bdf_props, %function
tt_face_load_bdf_props:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	add	r3, r3, #760
	str	r3, [r7, #28]
	ldr	r0, [r7, #28]
	movs	r1, #0
	movs	r2, #24
	bl	memset(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movw	r1, #17952
	movt	r1, 16964
	ldr	r2, [r7]
	bl	tt_face_goto_table(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L1316
	ldr	r3, [r7, #8]
	cmp	r3, #7
	bls	.L1316
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #28]
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1317
.L1316:
	movs	r3, #8
	str	r3, [r7, #44]
	b	.L1318
.L1317:
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #40]
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
	ldr	r3, [r7, #40]
	adds	r3, r3, #4
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #40]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bne	.L1319
	ldr	r3, [r7, #16]
	cmp	r3, #7
	bls	.L1319
	ldr	r3, [r7, #16]
	subs	r3, r3, #8
	lsrs	r2, r3, #2
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L1319
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L1319
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #20]
	str	r2, [r3, #16]
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	subs	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	str	r3, [r7, #36]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	adds	r3, r3, #8
	str	r3, [r7, #40]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #32]
	b	.L1320
.L1321:
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #40]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	adds	r3, r3, #4
	str	r3, [r7, #40]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L1320:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L1321
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcs	.L1322
	b	.L1319
.L1322:
	ldr	r3, [r7, #28]
	movs	r2, #1
	strb	r2, [r3, #20]
.L1318:
	ldr	r3, [r7, #44]
	b	.L1324
.L1319:
	ldr	r3, [r7, #28]
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	ldr	r0, [r7, #28]
	movs	r1, #0
	movs	r2, #24
	bl	memset(PLT)
	movs	r3, #8
	str	r3, [r7, #44]
	b	.L1318
.L1324:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_load_bdf_props, .-tt_face_load_bdf_props
	.section	.text.tt_face_find_bdf_prop,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	tt_face_find_bdf_prop, %function
tt_face_find_bdf_prop:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, #760
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1326
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	tt_face_load_bdf_props(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L1326
	b	.L1327
.L1326:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #16]
	str	r3, [r7, #52]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	adds	r3, r3, #8
	str	r3, [r7, #56]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #48]
	movs	r3, #6
	str	r3, [r7, #60]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L1327
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1327
	ldr	r0, [r7, #8]
	bl	strlen(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L1328
	b	.L1327
.L1328:
	b	.L1329
.L1332:
	ldr	r3, [r7, #56]
	adds	r3, r3, #2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #56]
	adds	r3, r3, #2
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #14]
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bne	.L1330
	ldr	r3, [r7, #28]
	str	r3, [r7, #52]
	nop
.L1331:
	ldr	r3, [r7, #48]
	str	r3, [r7, #56]
	b	.L1333
.L1330:
	ldr	r2, [r7, #28]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L1329:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L1332
	b	.L1327
.L1340:
	ldr	r3, [r7, #56]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #5
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L1334
	ldr	r3, [r7, #56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #56]
	adds	r3, r3, #6
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #56]
	adds	r3, r3, #7
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #8
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #56]
	adds	r3, r3, #9
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L1334
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L1334
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #20]
	subs	r3, r1, r3
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L1334
	ldr	r3, [r7, #24]
	and	r3, r3, #15
	cmp	r3, #3
	bhi	.L1334
	adr	r1, .L1336
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L1336:
	.word	.L1335+1-.L1336
	.word	.L1335+1-.L1336
	.word	.L1337+1-.L1336
	.word	.L1338+1-.L1336
.L1335:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bls	.L1339
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #12]
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	memchr(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L1339
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L1327
.L1339:
	b	.L1334
.L1337:
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L1327
.L1338:
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L1327
.L1334:
	ldr	r3, [r7, #56]
	adds	r3, r3, #10
	str	r3, [r7, #56]
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L1333:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L1340
.L1327:
	ldr	r3, [r7, #60]
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	tt_face_find_bdf_prop, .-tt_face_find_bdf_prop
	.section	.rodata.table_dir_entry_fields.7554,"a",%progbits
	.align	2
	.type	table_dir_entry_fields.7554, %object
	.size	table_dir_entry_fields.7554, 24
table_dir_entry_fields.7554:
	.byte	4
	.byte	0
	.short	16
	.byte	16
	.byte	4
	.short	0
	.byte	16
	.byte	4
	.short	4
	.byte	16
	.byte	4
	.short	8
	.byte	16
	.byte	4
	.short	12
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.offset_table_fields.7571,"a",%progbits
	.align	2
	.type	offset_table_fields.7571, %object
	.size	offset_table_fields.7571, 24
offset_table_fields.7571:
	.byte	4
	.byte	0
	.short	8
	.byte	12
	.byte	2
	.short	4
	.byte	12
	.byte	2
	.short	6
	.byte	12
	.byte	2
	.short	8
	.byte	12
	.byte	2
	.short	10
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.header_fields.7602,"a",%progbits
	.align	2
	.type	header_fields.7602, %object
	.size	header_fields.7602, 84
header_fields.7602:
	.byte	4
	.byte	0
	.short	54
	.byte	16
	.byte	4
	.short	0
	.byte	16
	.byte	4
	.short	4
	.byte	17
	.byte	4
	.short	8
	.byte	17
	.byte	4
	.short	12
	.byte	12
	.byte	2
	.short	16
	.byte	12
	.byte	2
	.short	18
	.byte	17
	.byte	4
	.short	20
	.byte	17
	.byte	4
	.short	24
	.byte	17
	.byte	4
	.short	28
	.byte	17
	.byte	4
	.short	32
	.byte	13
	.byte	2
	.short	36
	.byte	13
	.byte	2
	.short	38
	.byte	13
	.byte	2
	.short	40
	.byte	13
	.byte	2
	.short	42
	.byte	12
	.byte	2
	.short	44
	.byte	12
	.byte	2
	.short	46
	.byte	13
	.byte	2
	.short	48
	.byte	13
	.byte	2
	.short	50
	.byte	13
	.byte	2
	.short	52
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.maxp_fields.7618,"a",%progbits
	.align	2
	.type	maxp_fields.7618, %object
	.size	maxp_fields.7618, 16
maxp_fields.7618:
	.byte	4
	.byte	0
	.short	6
	.byte	17
	.byte	4
	.short	0
	.byte	12
	.byte	2
	.short	4
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.maxp_fields_extra.7619,"a",%progbits
	.align	2
	.type	maxp_fields_extra.7619, %object
	.size	maxp_fields_extra.7619, 60
maxp_fields_extra.7619:
	.byte	4
	.byte	0
	.short	26
	.byte	12
	.byte	2
	.short	6
	.byte	12
	.byte	2
	.short	8
	.byte	12
	.byte	2
	.short	10
	.byte	12
	.byte	2
	.short	12
	.byte	12
	.byte	2
	.short	14
	.byte	12
	.byte	2
	.short	16
	.byte	12
	.byte	2
	.short	18
	.byte	12
	.byte	2
	.short	20
	.byte	12
	.byte	2
	.short	22
	.byte	12
	.byte	2
	.short	24
	.byte	12
	.byte	2
	.short	26
	.byte	12
	.byte	2
	.short	28
	.byte	12
	.byte	2
	.short	30
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.name_table_fields.7633,"a",%progbits
	.align	2
	.type	name_table_fields.7633, %object
	.size	name_table_fields.7633, 20
name_table_fields.7633:
	.byte	4
	.byte	0
	.short	6
	.byte	12
	.byte	2
	.short	0
	.byte	12
	.byte	4
	.short	4
	.byte	12
	.byte	4
	.short	8
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.name_record_fields.7634,"a",%progbits
	.align	2
	.type	name_record_fields.7634, %object
	.size	name_record_fields.7634, 28
name_record_fields.7634:
	.byte	12
	.byte	2
	.short	0
	.byte	12
	.byte	2
	.short	2
	.byte	12
	.byte	2
	.short	4
	.byte	12
	.byte	2
	.short	6
	.byte	12
	.byte	2
	.short	8
	.byte	12
	.byte	4
	.short	12
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.os2_fields.7663,"a",%progbits
	.align	2
	.type	os2_fields.7663, %object
	.size	os2_fields.7663, 176
os2_fields.7663:
	.byte	4
	.byte	0
	.short	78
	.byte	12
	.byte	2
	.short	0
	.byte	13
	.byte	2
	.short	2
	.byte	12
	.byte	2
	.short	4
	.byte	12
	.byte	2
	.short	6
	.byte	13
	.byte	2
	.short	8
	.byte	13
	.byte	2
	.short	10
	.byte	13
	.byte	2
	.short	12
	.byte	13
	.byte	2
	.short	14
	.byte	13
	.byte	2
	.short	16
	.byte	13
	.byte	2
	.short	18
	.byte	13
	.byte	2
	.short	20
	.byte	13
	.byte	2
	.short	22
	.byte	13
	.byte	2
	.short	24
	.byte	13
	.byte	2
	.short	26
	.byte	13
	.byte	2
	.short	28
	.byte	13
	.byte	2
	.short	30
	.byte	8
	.byte	1
	.short	32
	.byte	8
	.byte	1
	.short	33
	.byte	8
	.byte	1
	.short	34
	.byte	8
	.byte	1
	.short	35
	.byte	8
	.byte	1
	.short	36
	.byte	8
	.byte	1
	.short	37
	.byte	8
	.byte	1
	.short	38
	.byte	8
	.byte	1
	.short	39
	.byte	8
	.byte	1
	.short	40
	.byte	8
	.byte	1
	.short	41
	.byte	16
	.byte	4
	.short	44
	.byte	16
	.byte	4
	.short	48
	.byte	16
	.byte	4
	.short	52
	.byte	16
	.byte	4
	.short	56
	.byte	8
	.byte	1
	.short	60
	.byte	8
	.byte	1
	.short	61
	.byte	8
	.byte	1
	.short	62
	.byte	8
	.byte	1
	.short	63
	.byte	12
	.byte	2
	.short	64
	.byte	12
	.byte	2
	.short	66
	.byte	12
	.byte	2
	.short	68
	.byte	13
	.byte	2
	.short	70
	.byte	13
	.byte	2
	.short	72
	.byte	13
	.byte	2
	.short	74
	.byte	12
	.byte	2
	.short	76
	.byte	12
	.byte	2
	.short	78
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.os2_fields_extra1.7664,"a",%progbits
	.align	2
	.type	os2_fields_extra1.7664, %object
	.size	os2_fields_extra1.7664, 16
os2_fields_extra1.7664:
	.byte	4
	.byte	0
	.short	8
	.byte	16
	.byte	4
	.short	80
	.byte	16
	.byte	4
	.short	84
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.os2_fields_extra2.7665,"a",%progbits
	.align	2
	.type	os2_fields_extra2.7665, %object
	.size	os2_fields_extra2.7665, 28
os2_fields_extra2.7665:
	.byte	4
	.byte	0
	.short	10
	.byte	13
	.byte	2
	.short	88
	.byte	13
	.byte	2
	.short	90
	.byte	12
	.byte	2
	.short	92
	.byte	12
	.byte	2
	.short	94
	.byte	12
	.byte	2
	.short	96
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.os2_fields_extra5.7666,"a",%progbits
	.align	2
	.type	os2_fields_extra5.7666, %object
	.size	os2_fields_extra5.7666, 16
os2_fields_extra5.7666:
	.byte	4
	.byte	0
	.short	4
	.byte	12
	.byte	2
	.short	98
	.byte	12
	.byte	2
	.short	100
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.post_fields.7674,"a",%progbits
	.align	2
	.type	post_fields.7674, %object
	.size	post_fields.7674, 44
post_fields.7674:
	.byte	4
	.byte	0
	.short	32
	.byte	16
	.byte	4
	.short	0
	.byte	16
	.byte	4
	.short	4
	.byte	13
	.byte	2
	.short	8
	.byte	13
	.byte	2
	.short	10
	.byte	16
	.byte	4
	.short	12
	.byte	16
	.byte	4
	.short	16
	.byte	16
	.byte	4
	.short	20
	.byte	16
	.byte	4
	.short	24
	.byte	16
	.byte	4
	.short	28
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.pclt_fields.7679,"a",%progbits
	.align	2
	.type	pclt_fields.7679, %object
	.size	pclt_fields.7679, 68
pclt_fields.7679:
	.byte	4
	.byte	0
	.short	54
	.byte	16
	.byte	4
	.short	0
	.byte	16
	.byte	4
	.short	4
	.byte	12
	.byte	2
	.short	8
	.byte	12
	.byte	2
	.short	10
	.byte	12
	.byte	2
	.short	12
	.byte	12
	.byte	2
	.short	14
	.byte	12
	.byte	2
	.short	16
	.byte	12
	.byte	2
	.short	18
	.byte	24
	.byte	16
	.short	20
	.byte	24
	.byte	8
	.short	36
	.byte	24
	.byte	6
	.short	44
	.byte	9
	.byte	1
	.short	50
	.byte	9
	.byte	1
	.short	51
	.byte	8
	.byte	1
	.short	52
	.byte	8
	.byte	1
	.short	53
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.metrics_header_fields.7728,"a",%progbits
	.align	2
	.type	metrics_header_fields.7728, %object
	.size	metrics_header_fields.7728, 76
metrics_header_fields.7728:
	.byte	4
	.byte	0
	.short	36
	.byte	16
	.byte	4
	.short	0
	.byte	13
	.byte	2
	.short	4
	.byte	13
	.byte	2
	.short	6
	.byte	13
	.byte	2
	.short	8
	.byte	12
	.byte	2
	.short	10
	.byte	13
	.byte	2
	.short	12
	.byte	13
	.byte	2
	.short	14
	.byte	13
	.byte	2
	.short	16
	.byte	13
	.byte	2
	.short	18
	.byte	13
	.byte	2
	.short	20
	.byte	13
	.byte	2
	.short	22
	.byte	13
	.byte	2
	.short	24
	.byte	13
	.byte	2
	.short	26
	.byte	13
	.byte	2
	.short	28
	.byte	13
	.byte	2
	.short	30
	.byte	13
	.byte	2
	.short	32
	.byte	12
	.byte	2
	.short	34
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.tt_encodings.9026,"a",%progbits
	.align	2
	.type	tt_encodings.9026, %object
	.size	tt_encodings.9026, 132
tt_encodings.9026:
	.word	2
	.word	-1
	.word	1970170211
	.word	0
	.word	-1
	.word	1970170211
	.word	1
	.word	0
	.word	1634889070
	.word	3
	.word	0
	.word	1937337698
	.word	3
	.word	10
	.word	1970170211
	.word	3
	.word	1
	.word	1970170211
	.word	3
	.word	2
	.word	1936353651
	.word	3
	.word	3
	.word	1734484000
	.word	3
	.word	4
	.word	1651074869
	.word	3
	.word	5
	.word	2002873971
	.word	3
	.word	6
	.word	1785686113
	.section	.rodata.woff_header_fields.9060,"a",%progbits
	.align	2
	.type	woff_header_fields.9060, %object
	.size	woff_header_fields.9060, 60
woff_header_fields.9060:
	.byte	4
	.byte	0
	.short	44
	.byte	16
	.byte	4
	.short	0
	.byte	16
	.byte	4
	.short	4
	.byte	16
	.byte	4
	.short	8
	.byte	12
	.byte	2
	.short	12
	.byte	12
	.byte	2
	.short	14
	.byte	16
	.byte	4
	.short	16
	.byte	12
	.byte	2
	.short	20
	.byte	12
	.byte	2
	.short	22
	.byte	16
	.byte	4
	.short	24
	.byte	16
	.byte	4
	.short	28
	.byte	16
	.byte	4
	.short	32
	.byte	16
	.byte	4
	.short	36
	.byte	16
	.byte	4
	.short	40
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.ttc_header_fields.9093,"a",%progbits
	.align	2
	.type	ttc_header_fields.9093, %object
	.size	ttc_header_fields.9093, 16
ttc_header_fields.9093:
	.byte	4
	.byte	0
	.short	8
	.byte	17
	.byte	4
	.short	4
	.byte	17
	.byte	4
	.short	8
	.byte	0
	.byte	0
	.short	0
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
