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
	.file	"type1cid.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%!PS-Adobe-3.0 Resource-CIDFont\000"
	.align	2
.LC1:
	.ascii	"StartData\000"
	.align	2
.LC2:
	.ascii	"/sfnts\000"
	.align	2
.LC3:
	.ascii	"(Hex)\000"
	.section	.text.cid_parser_new,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_parser_new, %function
cid_parser_new:
	@ args = 0, pretend = 0, frame = 336
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #340
	add	r7, sp, #0
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	add	r3, r7, #12
	ldr	r0, [r3]
	movs	r1, #0
	movs	r2, #100
	bl	memset(PLT)
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r4, [r3]
	add	r3, r7, #12
	ldr	r2, [r3]
	adds	r3, r7, #4
	mov	r0, r2
	movs	r1, #0
	movs	r2, #0
	ldr	r3, [r3]
	blx	r4
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r7, #8
	ldr	r2, [r2]
	str	r2, [r3, #72]
	add	r3, r7, #8
	ldr	r0, [r3]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #304]
	add	r3, r7, #8
	ldr	r0, [r3]
	movs	r1, #31
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #332]
	ldr	r3, [r7, #332]
	cmp	r3, #0
	beq	.L2
	b	.L3
.L2:
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	mov	r0, r3
	ldr	r3, .L25
.LPIC0:
	add	r3, pc
	mov	r1, r3
	movs	r2, #31
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L4
	movs	r3, #2
	str	r3, [r7, #332]
.L4:
	add	r3, r7, #8
	ldr	r0, [r3]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #332]
	cmp	r3, #0
	beq	.L5
	b	.L3
.L5:
	mov	r3, #266
	str	r3, [r7, #312]
	add	r3, r7, #20
	str	r3, [r7, #308]
	add	r3, r7, #8
	ldr	r0, [r3]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #328]
.L15:
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r4, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r3]
	bl	FT_Stream_Pos(PLT)
	mov	r3, r0
	subs	r3, r4, r3
	str	r3, [r7, #300]
	ldr	r3, [r7, #300]
	cmp	r3, #0
	bne	.L6
	movs	r3, #3
	str	r3, [r7, #332]
	b	.L3
.L6:
	ldr	r2, [r7, #312]
	ldr	r3, [r7, #300]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	str	r3, [r7, #312]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r1, [r7, #308]
	ldr	r2, [r7, #312]
	bl	FT_Stream_Read(PLT)
	str	r0, [r7, #332]
	ldr	r3, [r7, #332]
	cmp	r3, #0
	beq	.L8
	nop
	b	.L3
.L8:
	ldr	r3, [r7, #312]
	cmp	r3, #255
	bhi	.L9
	ldr	r2, [r7, #308]
	ldr	r3, [r7, #312]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L9:
	ldr	r3, [r7, #312]
	subs	r3, r3, #10
	ldr	r2, [r7, #308]
	add	r3, r3, r2
	str	r3, [r7, #296]
	add	r3, r7, #20
	str	r3, [r7, #308]
	b	.L10
.L14:
	ldr	r3, [r7, #308]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #83
	bne	.L11
	ldr	r0, [r7, #308]
	ldr	r3, .L25+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #9
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L11
	ldr	r2, [r7, #308]
	add	r3, r7, #20
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #328]
	add	r3, r3, r2
	adds	r3, r3, #10
	str	r3, [r7, #328]
	b	.L16
.L11:
	ldr	r3, [r7, #308]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L13
	ldr	r0, [r7, #308]
	ldr	r3, .L25+8
.LPIC2:
	add	r3, pc
	mov	r1, r3
	movs	r2, #6
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L13
	ldr	r2, [r7, #308]
	add	r3, r7, #20
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #328]
	add	r3, r3, r2
	adds	r3, r3, #7
	str	r3, [r7, #328]
	b	.L16
.L13:
	ldr	r3, [r7, #308]
	adds	r3, r3, #1
	str	r3, [r7, #308]
.L10:
	ldr	r2, [r7, #308]
	ldr	r3, [r7, #296]
	cmp	r2, r3
	bcc	.L14
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #308]
	movs	r2, #10
	bl	memmove(PLT)
	mov	r3, #256
	str	r3, [r7, #312]
	add	r3, r7, #20
	adds	r3, r3, #10
	str	r3, [r7, #308]
	ldr	r3, [r7, #328]
	add	r3, r3, #256
	str	r3, [r7, #328]
	b	.L15
.L16:
	ldr	r2, [r7, #328]
	ldr	r3, [r7, #304]
	subs	r3, r2, r3
	str	r3, [r7, #292]
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r1, [r7, #304]
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #332]
	ldr	r3, [r7, #332]
	cmp	r3, #0
	bne	.L3
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #76
	add	r2, r7, #8
	ldr	r0, [r2]
	ldr	r1, [r7, #292]
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #332]
	ldr	r3, [r7, #332]
	cmp	r3, #0
	bne	.L3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #328]
	str	r2, [r3, #84]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #292]
	str	r2, [r3, #80]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #76]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #76]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [r7, #292]
	add	r2, r2, r3
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #8]
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r2, #-1
	str	r2, [r3, #96]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #320]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	add	r2, r7, #12
	ldr	r2, [r2]
	mov	r0, r2
	blx	r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	add	r2, r7, #12
	ldr	r2, [r2]
	mov	r0, r2
	blx	r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #316]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	add	r2, r7, #12
	ldr	r2, [r2]
	mov	r0, r2
	blx	r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	add	r2, r7, #12
	ldr	r2, [r2]
	mov	r0, r2
	blx	r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #296]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #324]
	b	.L17
.L23:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L18
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	str	r3, [r7, #332]
	b	.L3
.L18:
	ldr	r3, [r7, #324]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #83
	bne	.L19
	ldr	r0, [r7, #324]
	ldr	r3, .L25+12
.LPIC3:
	add	r3, pc
	mov	r1, r3
	movs	r2, #9
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L19
	ldr	r0, [r7, #320]
	ldr	r3, .L25+16
.LPIC4:
	add	r3, pc
	mov	r1, r3
	movs	r2, #5
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L20
	ldr	r0, [r7, #316]
	bl	atol(PLT)
	str	r0, [r7, #288]
	ldr	r3, [r7, #288]
	cmp	r3, #0
	bge	.L21
	movs	r3, #3
	str	r3, [r7, #332]
	b	.L20
.L21:
	ldr	r2, [r7, #288]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #88]
	b	.L3
.L20:
	b	.L3
.L19:
	ldr	r3, [r7, #324]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L22
	ldr	r0, [r7, #324]
	ldr	r3, .L25+20
.LPIC5:
	add	r3, pc
	mov	r1, r3
	movs	r2, #6
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L22
	movs	r3, #2
	str	r3, [r7, #332]
	b	.L3
.L22:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	add	r2, r7, #12
	ldr	r2, [r2]
	mov	r0, r2
	blx	r3
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	add	r2, r7, #12
	ldr	r2, [r2]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #316]
	str	r3, [r7, #320]
	ldr	r3, [r7, #324]
	str	r3, [r7, #316]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #324]
.L17:
	ldr	r2, [r7, #324]
	ldr	r3, [r7, #296]
	cmp	r2, r3
	bcc	.L23
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #76
	add	r2, r7, #8
	ldr	r0, [r2]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
	add	r3, r7, #8
	ldr	r0, [r3]
	ldr	r1, [r7, #328]
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #332]
	ldr	r3, [r7, #332]
	cmp	r3, #0
	bne	.L3
	b	.L5
.L3:
	ldr	r3, [r7, #332]
	mov	r0, r3
	add	r7, r7, #340
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L26:
	.align	2
.L25:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	.LC1-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LC2-(.LPIC5+4)
	.size	cid_parser_new, .-cid_parser_new
	.section	.text.cid_parser_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_parser_done, %function
cid_parser_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L28
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #76
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
.L28:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #4]
	mov	r0, r2
	blx	r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cid_parser_done, .-cid_parser_done
	.section	.text.cid_get_offset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_get_offset, %function
cid_get_offset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L30
.L31:
	ldr	r3, [r7, #12]
	lsls	r3, r3, #8
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	str	r2, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	subs	r3, r3, #1
	strb	r3, [r7, #3]
.L30:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L31
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cid_get_offset, .-cid_get_offset
	.section	.text.cid_load_keyword,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_load_keyword, %function
cid_load_keyword:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	adds	r3, r3, #140
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #11
	bne	.L34
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	blx	r3
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	str	r3, [r7, #36]
	b	.L35
.L34:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #5
	bhi	.L36
	adr	r1, .L38
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L38:
	.word	.L37+1-.L38
	.word	.L36+1-.L38
	.word	.L39+1-.L38
	.word	.L40+1-.L38
	.word	.L36+1-.L38
	.word	.L41+1-.L38
.L37:
	ldr	r3, [r7, #24]
	str	r3, [r7, #32]
	b	.L42
.L40:
	ldr	r3, [r7, #24]
	adds	r3, r3, #24
	str	r3, [r7, #32]
	b	.L42
.L39:
	ldr	r3, [r7, #12]
	add	r3, r3, #312
	str	r3, [r7, #32]
	b	.L42
.L41:
	ldr	r3, [r7, #24]
	adds	r3, r3, #56
	str	r3, [r7, #32]
	b	.L42
.L36:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	blt	.L43
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #160]
	cmp	r2, r3
	blt	.L44
.L43:
	movs	r3, #160
	str	r3, [r7, #36]
	b	.L35
.L44:
	ldr	r3, [r7, #24]
	ldr	r1, [r3, #164]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #96]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #6
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #4
	bne	.L50
	ldr	r3, [r7, #20]
	str	r3, [r7, #32]
	b	.L42
.L50:
	ldr	r3, [r7, #20]
	str	r3, [r7, #32]
.L42:
	ldr	r3, [r7, #32]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #9
	beq	.L47
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #10
	bne	.L48
.L47:
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #68]
	ldr	r2, [r7, #8]
	add	r3, r7, #16
	movs	r1, #0
	str	r1, [sp]
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
	movs	r3, #0
	blx	r4
	str	r0, [r7, #36]
	b	.L35
.L48:
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #64]
	ldr	r2, [r7, #8]
	add	r3, r7, #16
	movs	r1, #0
	str	r1, [sp]
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
	movs	r3, #0
	blx	r4
	str	r0, [r7, #36]
.L35:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cid_load_keyword, .-cid_load_keyword
	.section	.text.cid_parse_font_matrix,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_parse_font_matrix, %function
cid_parse_font_matrix:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #52]
	ldr	r3, [r7]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	blt	.L52
	ldr	r3, [r7]
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #300]
	cmp	r2, r3
	bge	.L52
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #304]
	ldr	r3, [r7]
	ldr	r3, [r3, #96]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #6
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	adds	r3, r3, #216
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	adds	r3, r3, #232
	str	r3, [r7, #40]
	ldr	r3, [r7]
	ldr	r4, [r3, #52]
	ldr	r2, [r7]
	add	r3, r7, #8
	mov	r0, r2
	movs	r1, #6
	mov	r2, r3
	movs	r3, #3
	blx	r4
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #5
	bgt	.L53
	movs	r3, #3
	b	.L59
.L53:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L55
	movs	r3, #3
	b	.L59
.L55:
	ldr	r3, [r7, #32]
	cmp	r3, #65536
	beq	.L56
	mov	r0, #1000
	ldr	r1, [r7, #32]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7, #52]
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
	bge	.L57
	movs	r3, #0
	movt	r3, 65535
	b	.L58
.L57:
	mov	r3, #65536
.L58:
	str	r3, [r7, #20]
.L56:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #44]
	str	r2, [r3, #12]
	ldr	r3, [r7, #24]
	asrs	r2, r3, #16
	ldr	r3, [r7, #40]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	asrs	r2, r3, #16
	ldr	r3, [r7, #40]
	str	r2, [r3, #4]
.L52:
	movs	r3, #0
.L59:
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cid_parse_font_matrix, .-cid_parse_font_matrix
	.section	.text.parse_fd_array,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_fd_array, %function
parse_fd_array:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #140
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #72]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #36]
	ldr	r2, [r7]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L61
	movs	r3, #3
	str	r3, [r7, #12]
	b	.L62
.L61:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	ldr	r1, [r3, #4]
	movw	r3, #34079
	movt	r3, 20971
	umull	r0, r3, r3, r1
	lsrs	r3, r3, #5
	cmp	r2, r3
	bls	.L63
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	movw	r3, #34079
	movt	r3, 20971
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #5
	str	r3, [r7, #36]
.L63:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #164]
	cmp	r3, #0
	bne	.L62
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #12
	str	r3, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #252
	movs	r2, #0
	ldr	r3, [r7, #36]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3, #164]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L64
	b	.L62
.L64:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #36]
	str	r2, [r3, #160]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L65
.L66:
	ldr	r3, [r7, #28]
	ldr	r1, [r3, #164]
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #6
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	movs	r2, #4
	str	r2, [r3, #4]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L65:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bgt	.L66
.L62:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	parse_fd_array, .-parse_fd_array
	.section	.text.parse_expansion_factor,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	parse_expansion_factor, %function
parse_expansion_factor:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	blt	.L69
	ldr	r3, [r7]
	ldr	r2, [r3, #96]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #300]
	cmp	r2, r3
	bge	.L69
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #304]
	ldr	r3, [r7]
	ldr	r3, [r3, #96]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #6
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #40]
	ldr	r2, [r7]
	mov	r0, r2
	movs	r1, #0
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #208]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #208]
	ldr	r3, [r7, #12]
	str	r2, [r3, #180]
.L69:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	parse_expansion_factor, .-parse_expansion_factor
	.section	.rodata
	.align	2
.LC4:
	.ascii	"CIDFontName\000"
	.align	2
.LC5:
	.ascii	"CIDFontVersion\000"
	.align	2
.LC6:
	.ascii	"CIDFontType\000"
	.align	2
.LC7:
	.ascii	"Registry\000"
	.align	2
.LC8:
	.ascii	"Ordering\000"
	.align	2
.LC9:
	.ascii	"Supplement\000"
	.align	2
.LC10:
	.ascii	"UIDBase\000"
	.align	2
.LC11:
	.ascii	"CIDMapOffset\000"
	.align	2
.LC12:
	.ascii	"FDBytes\000"
	.align	2
.LC13:
	.ascii	"GDBytes\000"
	.align	2
.LC14:
	.ascii	"CIDCount\000"
	.align	2
.LC15:
	.ascii	"version\000"
	.align	2
.LC16:
	.ascii	"Notice\000"
	.align	2
.LC17:
	.ascii	"FullName\000"
	.align	2
.LC18:
	.ascii	"FamilyName\000"
	.align	2
.LC19:
	.ascii	"Weight\000"
	.align	2
.LC20:
	.ascii	"ItalicAngle\000"
	.align	2
.LC21:
	.ascii	"isFixedPitch\000"
	.align	2
.LC22:
	.ascii	"UnderlinePosition\000"
	.align	2
.LC23:
	.ascii	"UnderlineThickness\000"
	.align	2
.LC24:
	.ascii	"FSType\000"
	.align	2
.LC25:
	.ascii	"PaintType\000"
	.align	2
.LC26:
	.ascii	"FontType\000"
	.align	2
.LC27:
	.ascii	"SubrMapOffset\000"
	.align	2
.LC28:
	.ascii	"SDBytes\000"
	.align	2
.LC29:
	.ascii	"SubrCount\000"
	.align	2
.LC30:
	.ascii	"lenBuildCharArray\000"
	.align	2
.LC31:
	.ascii	"ForceBoldThreshold\000"
	.align	2
.LC32:
	.ascii	"StrokeWidth\000"
	.align	2
.LC33:
	.ascii	"UniqueID\000"
	.align	2
.LC34:
	.ascii	"lenIV\000"
	.align	2
.LC35:
	.ascii	"LanguageGroup\000"
	.align	2
.LC36:
	.ascii	"password\000"
	.align	2
.LC37:
	.ascii	"BlueScale\000"
	.align	2
.LC38:
	.ascii	"BlueShift\000"
	.align	2
.LC39:
	.ascii	"BlueFuzz\000"
	.align	2
.LC40:
	.ascii	"BlueValues\000"
	.align	2
.LC41:
	.ascii	"OtherBlues\000"
	.align	2
.LC42:
	.ascii	"FamilyBlues\000"
	.align	2
.LC43:
	.ascii	"FamilyOtherBlues\000"
	.align	2
.LC44:
	.ascii	"StdHW\000"
	.align	2
.LC45:
	.ascii	"StdVW\000"
	.align	2
.LC46:
	.ascii	"MinFeature\000"
	.align	2
.LC47:
	.ascii	"StemSnapH\000"
	.align	2
.LC48:
	.ascii	"StemSnapV\000"
	.align	2
.LC49:
	.ascii	"ForceBold\000"
	.align	2
.LC50:
	.ascii	"FontBBox\000"
	.align	2
.LC51:
	.ascii	"FDArray\000"
	.align	2
.LC52:
	.ascii	"FontMatrix\000"
	.align	2
.LC53:
	.ascii	"ExpansionFactor\000"
	.section	.data.rel.ro.local.cid_field_records,"aw",%progbits
	.align	2
	.type	cid_field_records, %object
	.size	cid_field_records, 1836
cid_field_records:
	.word	.LC4
	.word	0
	.word	6
	.word	0
	.word	0
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC5
	.word	0
	.word	3
	.word	0
	.word	4
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC6
	.word	0
	.word	2
	.word	0
	.word	8
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC7
	.word	0
	.word	5
	.word	0
	.word	12
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC8
	.word	0
	.word	5
	.word	0
	.word	16
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC9
	.word	0
	.word	2
	.word	0
	.word	20
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC10
	.word	0
	.word	2
	.word	0
	.word	72
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC11
	.word	0
	.word	2
	.word	0
	.word	144
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC12
	.word	0
	.word	2
	.word	0
	.word	148
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC13
	.word	0
	.word	2
	.word	0
	.word	152
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC14
	.word	0
	.word	2
	.word	0
	.word	156
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC15
	.word	3
	.word	5
	.word	0
	.word	0
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC16
	.word	3
	.word	5
	.word	0
	.word	4
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC17
	.word	3
	.word	5
	.word	0
	.word	8
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC18
	.word	3
	.word	5
	.word	0
	.word	12
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC19
	.word	3
	.word	5
	.word	0
	.word	16
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC20
	.word	3
	.word	2
	.word	0
	.word	20
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC21
	.word	3
	.word	1
	.word	0
	.word	24
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC22
	.word	3
	.word	2
	.word	0
	.word	26
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC23
	.word	3
	.word	2
	.word	0
	.word	28
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC24
	.word	2
	.word	2
	.word	0
	.word	0
	.byte	2
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC25
	.word	1
	.word	2
	.word	0
	.word	212
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC26
	.word	1
	.word	2
	.word	0
	.word	213
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC27
	.word	1
	.word	2
	.word	0
	.word	244
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC28
	.word	1
	.word	2
	.word	0
	.word	248
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC29
	.word	1
	.word	2
	.word	0
	.word	240
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC30
	.word	1
	.word	2
	.word	0
	.word	196
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC31
	.word	1
	.word	3
	.word	0
	.word	200
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC32
	.word	1
	.word	3
	.word	0
	.word	204
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC33
	.word	4
	.word	2
	.word	0
	.word	0
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC34
	.word	4
	.word	2
	.word	0
	.word	4
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC35
	.word	4
	.word	2
	.word	0
	.word	184
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC36
	.word	4
	.word	2
	.word	0
	.word	188
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC37
	.word	4
	.word	4
	.word	0
	.word	108
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC38
	.word	4
	.word	2
	.word	0
	.word	112
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC39
	.word	4
	.word	2
	.word	0
	.word	116
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC40
	.word	4
	.word	9
	.word	0
	.word	12
	.byte	2
	.space	3
	.word	14
	.word	8
	.word	0
	.word	.LC41
	.word	4
	.word	9
	.word	0
	.word	40
	.byte	2
	.space	3
	.word	10
	.word	9
	.word	0
	.word	.LC42
	.word	4
	.word	9
	.word	0
	.word	60
	.byte	2
	.space	3
	.word	14
	.word	10
	.word	0
	.word	.LC43
	.word	4
	.word	9
	.word	0
	.word	88
	.byte	2
	.space	3
	.word	10
	.word	11
	.word	0
	.word	.LC44
	.word	4
	.word	9
	.word	0
	.word	120
	.byte	2
	.space	3
	.word	1
	.word	0
	.word	0
	.word	.LC45
	.word	4
	.word	9
	.word	0
	.word	122
	.byte	2
	.space	3
	.word	1
	.word	0
	.word	0
	.word	.LC46
	.word	4
	.word	9
	.word	0
	.word	192
	.byte	2
	.space	3
	.word	2
	.word	0
	.word	0
	.word	.LC47
	.word	4
	.word	9
	.word	0
	.word	128
	.byte	2
	.space	3
	.word	12
	.word	124
	.word	0
	.word	.LC48
	.word	4
	.word	9
	.word	0
	.word	154
	.byte	2
	.space	3
	.word	12
	.word	125
	.word	0
	.word	.LC49
	.word	4
	.word	1
	.word	0
	.word	126
	.byte	1
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC50
	.word	5
	.word	7
	.word	0
	.word	0
	.byte	4
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC51
	.word	5
	.word	11
	.word	parse_fd_array
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC52
	.word	5
	.word	11
	.word	cid_parse_font_matrix
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	0
	.word	.LC53
	.word	5
	.word	11
	.word	parse_expansion_factor
	.word	0
	.byte	0
	.space	3
	.word	0
	.word	0
	.word	0
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
.LC54:
	.ascii	"%ADOBeginFontDict\000"
	.section	.text.cid_parse_dict,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_parse_dict, %function
cid_parse_dict:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #24]
.L89:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #28]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L72
	ldr	r3, [r7, #24]
	subs	r3, r3, #18
	str	r3, [r7, #40]
	b	.L74
.L72:
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	subs	r3, r3, #17
	str	r3, [r7, #40]
	b	.L74
.L76:
	ldr	r3, [r7, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L75
	ldr	r0, [r7, #44]
	ldr	r3, .L91
.LPIC6:
	add	r3, pc
	mov	r1, r3
	movs	r2, #17
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L75
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #300]
	cmp	r3, #0
	ble	.L75
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #96]
	adds	r2, r3, #1
	ldr	r3, [r7, #28]
	str	r2, [r3, #96]
.L75:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L74:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L76
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L77
	b	.L78
.L77:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #28]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcs	.L78
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L78
	ldr	r3, [r7, #44]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L79
	ldr	r3, [r7, #44]
	adds	r2, r3, #2
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcs	.L79
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L79
	ldr	r3, [r7, #20]
	cmp	r3, #21
	bhi	.L79
	ldr	r3, .L91+4
.LPIC7:
	add	r3, pc
	str	r3, [r7, #36]
.L88:
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L80
	b	.L79
.L80:
	ldr	r3, [r7, #44]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L81
	ldr	r0, [r7, #16]
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L81
	movs	r3, #1
	str	r3, [r7, #32]
	b	.L82
.L85:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #16]
	ldr	r3, [r7, #32]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L83
	b	.L84
.L83:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L82:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L85
.L84:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L81
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #36]
	bl	cid_load_keyword(PLT)
	mov	r2, r0
	ldr	r3, [r7, #28]
	str	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L86
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	b	.L87
.L86:
	b	.L79
.L81:
	ldr	r3, [r7, #36]
	adds	r3, r3, #36
	str	r3, [r7, #36]
	b	.L88
.L79:
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	b	.L89
.L78:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #300]
	cmp	r3, #0
	bne	.L90
	movs	r3, #3
	b	.L87
.L90:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
.L87:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L92:
	.align	2
.L91:
	.word	.LC54-(.LPIC6+4)
	.word	cid_field_records-(.LPIC7+4)
	.size	cid_parse_dict, .-cid_parse_dict
	.section	.text.cid_read_subrs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_read_subrs, %function
cid_read_subrs:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #140
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #328]
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #136]
	str	r3, [r7, #44]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #160]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #12
	str	r2, [sp, #4]
	ldr	r0, [r7, #52]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #316]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L94
	b	.L95
.L94:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #316]
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L96
.L113:
	ldr	r3, [r7, #56]
	ldr	r1, [r3, #164]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #6
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #240]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bls	.L97
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	bic	r3, r3, #3
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L98
	movs	r3, #160
	str	r3, [r7, #12]
	b	.L112
.L98:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #64]
	str	r1, [sp]
	add	r1, r7, #12
	str	r1, [sp, #4]
	ldr	r0, [r7, #52]
	movs	r1, #4
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L100
	b	.L112
.L100:
	ldr	r3, [r7, #28]
	str	r3, [r7, #68]
.L97:
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #244]
	add	r3, r3, r2
	ldr	r0, [r7, #48]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L120
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	ldr	r2, [r7, #40]
	ldr	r2, [r2, #248]
	mul	r3, r2, r3
	ldr	r0, [r7, #48]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L120
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L101
.L102:
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	adds	r4, r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #248]
	uxtb	r3, r3
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	cid_get_offset(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L101:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L102
	ldr	r0, [r7, #48]
	bl	FT_Stream_ExitFrame(PLT)
	movs	r3, #1
	str	r3, [r7, #60]
	b	.L103
.L105:
	ldr	r3, [r7, #60]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	ldr	r1, [r7, #64]
	add	r3, r3, r1
	ldr	r3, [r3]
	cmp	r2, r3
	bls	.L104
	movs	r3, #3
	str	r3, [r7, #12]
	b	.L112
.L104:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L103:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L105
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #168]
	subs	r3, r1, r3
	cmp	r2, r3
	bls	.L106
	movs	r3, #3
	str	r3, [r7, #12]
	nop
	b	.L112
.L106:
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #12
	str	r2, [sp, #4]
	ldr	r0, [r7, #52]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #72]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L120
	ldr	r3, [r7, #72]
	ldr	r4, [r3, #4]
	ldr	r2, [r7, #24]
	add	r3, r7, #12
	ldr	r0, [r7, #52]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L120
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	add	r3, r3, r2
	ldr	r0, [r7, #48]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L120
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #48]
	mov	r1, r3
	ldr	r2, [r7, #24]
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L120
	movs	r3, #1
	str	r3, [r7, #60]
	b	.L107
.L108:
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r1, [r7, #64]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #72]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #60]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	str	r3, [r2]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L107:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L108
	ldr	r3, [r7, #36]
	cmp	r3, #0
	blt	.L109
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L110
.L111:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	ldr	r1, [r7, #64]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #72]
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #60]
	lsls	r2, r2, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	mov	r0, r2
	ldr	r1, [r7, #16]
	movw	r2, #4330
	blx	r3
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L110:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L111
.L109:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #72]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	adds	r3, r3, #8
	str	r3, [r7, #72]
.L96:
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bgt	.L113
.L95:
	ldr	r0, [r7, #52]
	ldr	r1, [r7, #64]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #12]
	b	.L119
.L120:
	nop
.L112:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #316]
	cmp	r3, #0
	beq	.L115
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L116
.L118:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #316]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #316]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #316]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [r3]
.L117:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #316]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #316]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L116:
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bgt	.L118
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #316]
	ldr	r0, [r7, #52]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #316]
	b	.L95
.L115:
	b	.L95
.L119:
	mov	r0, r3
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cid_read_subrs, .-cid_read_subrs
	.section	.text.cid_init_loader,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_init_loader, %function
cid_init_loader:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #104
	bl	memset(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cid_init_loader, .-cid_init_loader
	.section	.text.cid_done_loader,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_done_loader, %function
cid_done_loader:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	cid_parser_done(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cid_done_loader, .-cid_done_loader
	.section	.text.cid_hex_to_binary,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_hex_to_binary, %function
cid_hex_to_binary:
	@ args = 0, pretend = 0, frame = 312
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #316
	add	r7, sp, #0
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3, #104]
	str	r3, [r7, #288]
	adds	r3, r7, #4
	ldr	r0, [r7, #288]
	ldr	r1, [r3]
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #308]
	ldr	r3, [r7, #308]
	cmp	r3, #0
	beq	.L124
	b	.L125
.L124:
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r3, [r7, #296]
	add	r3, r7, #8
	ldr	r2, [r7, #296]
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #284]
	add	r3, r7, #20
	str	r3, [r7, #304]
	ldr	r3, [r7, #304]
	str	r3, [r7, #300]
	movs	r3, #1
	strb	r3, [r7, #294]
	movs	r3, #0
	strb	r3, [r7, #293]
	b	.L126
.L141:
	ldr	r2, [r7, #304]
	ldr	r3, [r7, #300]
	cmp	r2, r3
	bcc	.L127
	ldr	r0, [r7, #288]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #280]
	ldr	r3, [r7, #288]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #280]
	subs	r3, r2, r3
	str	r3, [r7, #276]
	ldr	r3, [r7, #276]
	cmp	r3, #0
	bne	.L128
	movs	r3, #160
	str	r3, [r7, #308]
	b	.L125
.L128:
	ldr	r3, [r7, #276]
	cmp	r3, #256
	it	cs
	movcs	r3, #256
	add	r2, r7, #20
	ldr	r0, [r7, #288]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	str	r0, [r7, #308]
	ldr	r3, [r7, #308]
	cmp	r3, #0
	beq	.L129
	b	.L125
.L129:
	add	r3, r7, #20
	str	r3, [r7, #304]
	ldr	r0, [r7, #288]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #280]
	subs	r3, r2, r3
	ldr	r2, [r7, #304]
	add	r3, r3, r2
	str	r3, [r7, #300]
.L127:
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	cmp	r3, #9
	bhi	.L130
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #48
	strb	r3, [r7, #295]
	b	.L131
.L130:
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L132
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #102
	bhi	.L132
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #97
	strb	r3, [r7, #295]
	b	.L131
.L132:
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L133
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #70
	bhi	.L133
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #55
	strb	r3, [r7, #295]
	b	.L131
.L133:
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L134
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L134
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L134
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L134
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L134
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L135
.L134:
	ldr	r3, [r7, #304]
	adds	r3, r3, #1
	str	r3, [r7, #304]
	b	.L126
.L135:
	ldr	r3, [r7, #304]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	bne	.L136
	movs	r3, #0
	strb	r3, [r7, #295]
	movs	r3, #1
	strb	r3, [r7, #293]
	b	.L131
.L136:
	movs	r3, #160
	str	r3, [r7, #308]
	b	.L125
.L131:
	ldrb	r3, [r7, #294]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L137
	ldrb	r3, [r7, #295]
	lsls	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #296]
	strb	r2, [r3]
	b	.L138
.L137:
	ldr	r3, [r7, #296]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldrb	r3, [r7, #295]
	add	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #296]
	strb	r2, [r3]
	ldr	r3, [r7, #296]
	adds	r3, r3, #1
	str	r3, [r7, #296]
.L138:
	ldrb	r3, [r7, #294]
	rsb	r3, r3, #1
	strb	r3, [r7, #294]
	ldrb	r3, [r7, #293]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L139
	b	.L140
.L139:
	ldr	r3, [r7, #304]
	adds	r3, r3, #1
	str	r3, [r7, #304]
.L126:
	ldr	r2, [r7, #296]
	ldr	r3, [r7, #284]
	cmp	r2, r3
	bcc	.L141
.L140:
	movs	r3, #0
	str	r3, [r7, #308]
.L125:
	ldr	r3, [r7, #308]
	mov	r0, r3
	add	r7, r7, #316
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cid_hex_to_binary, .-cid_hex_to_binary
	.global	__aeabi_uidiv
	.section	.text.cid_face_open,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_face_open, %function
cid_face_open:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #144
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #136]
	ldr	r3, [r7, #4]
	adds	r3, r3, #140
	str	r3, [r7, #132]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	cid_init_loader(PLT)
	add	r3, r7, #12
	str	r3, [r7, #128]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #104]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #136]
	ldr	r0, [r7, #128]
	bl	cid_parser_new(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L144
	b	.L145
.L144:
	ldr	r3, [r7, #128]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #128]
	ldr	r3, [r3, #80]
	add	r1, r7, #12
	ldr	r0, [r7, #4]
	bl	cid_parse_dict(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L146
	b	.L145
.L146:
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L147
	b	.L145
.L147:
	add	r3, r7, #8
	ldr	r0, [r7, #136]
	movs	r1, #40
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #328]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L148
	b	.L145
.L148:
	ldr	r3, [r7, #128]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	beq	.L149
	ldr	r3, [r7, #128]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #128]
	ldr	r3, [r3, #84]
	subs	r3, r1, r3
	cmp	r2, r3
	bls	.L150
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #128]
	ldr	r3, [r3, #84]
	subs	r2, r2, r3
	ldr	r3, [r7, #128]
	str	r2, [r3, #88]
.L150:
	ldr	r3, [r7, #128]
	ldr	r3, [r3, #88]
	mov	r2, r3
	add	r3, r7, #8
	ldr	r0, [r7, #136]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #324]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L145
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #324]
	ldr	r3, [r7, #128]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #128]
	ldr	r3, [r3, #84]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	cid_hex_to_binary(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L145
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #328]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #324]
	ldr	r3, [r7, #128]
	ldr	r3, [r3, #88]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_OpenMemory(PLT)
	ldr	r3, [r7, #132]
	movs	r2, #0
	str	r2, [r3, #168]
	b	.L151
.L149:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #328]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #132]
	str	r2, [r3, #168]
.L151:
	ldr	r3, [r7, #132]
	ldr	r3, [r3, #148]
	cmp	r3, #0
	blt	.L152
	ldr	r3, [r7, #132]
	ldr	r3, [r3, #152]
	cmp	r3, #0
	bgt	.L153
.L152:
	movs	r3, #3
	str	r3, [r7, #8]
	b	.L145
.L153:
	ldr	r3, [r7, #132]
	ldr	r3, [r3, #148]
	cmp	r3, #4
	bgt	.L154
	ldr	r3, [r7, #132]
	ldr	r3, [r3, #152]
	cmp	r3, #4
	ble	.L155
.L154:
	movs	r3, #3
	str	r3, [r7, #8]
	b	.L145
.L155:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #328]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #132]
	ldr	r3, [r3, #168]
	subs	r3, r2, r3
	str	r3, [r7, #124]
	ldr	r3, [r7, #132]
	ldr	r2, [r3, #148]
	ldr	r3, [r7, #132]
	ldr	r3, [r3, #152]
	add	r3, r3, r2
	str	r3, [r7, #120]
	movs	r3, #0
	str	r3, [r7, #140]
	b	.L156
.L162:
	ldr	r3, [r7, #132]
	ldr	r1, [r3, #164]
	ldr	r2, [r7, #140]
	mov	r3, r2
	lsls	r3, r3, #6
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #116]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #248]
	cmp	r3, #0
	bge	.L157
	movs	r3, #3
	str	r3, [r7, #8]
	b	.L145
.L157:
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #248]
	cmp	r3, #4
	ble	.L158
	movs	r3, #3
	str	r3, [r7, #8]
	b	.L145
.L158:
	ldr	r3, [r7, #116]
	ldr	r2, [r3, #244]
	ldr	r3, [r7, #124]
	cmp	r2, r3
	bls	.L159
	movs	r3, #3
	str	r3, [r7, #8]
	b	.L145
.L159:
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #240]
	cmp	r3, #0
	blt	.L160
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #248]
	cmp	r3, #0
	beq	.L161
	ldr	r3, [r7, #116]
	ldr	r4, [r3, #240]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #244]
	ldr	r2, [r7, #124]
	subs	r2, r2, r3
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #248]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	cmp	r4, r3
	bls	.L161
.L160:
	movs	r3, #3
	str	r3, [r7, #8]
	b	.L145
.L161:
	ldr	r3, [r7, #140]
	adds	r3, r3, #1
	str	r3, [r7, #140]
.L156:
	ldr	r3, [r7, #132]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #140]
	cmp	r2, r3
	bgt	.L162
	ldr	r3, [r7, #132]
	ldr	r2, [r3, #144]
	ldr	r3, [r7, #124]
	cmp	r2, r3
	bls	.L163
	movs	r3, #3
	str	r3, [r7, #8]
	b	.L145
.L163:
	ldr	r3, [r7, #120]
	cmp	r3, #0
	beq	.L164
	ldr	r3, [r7, #132]
	ldr	r4, [r3, #156]
	ldr	r3, [r7, #132]
	ldr	r3, [r3, #144]
	ldr	r2, [r7, #124]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #120]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	cmp	r4, r3
	bls	.L164
	movs	r3, #3
	str	r3, [r7, #8]
	b	.L145
.L164:
	ldr	r0, [r7, #4]
	bl	cid_read_subrs(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
.L145:
	add	r3, r7, #12
	mov	r0, r3
	bl	cid_done_loader(PLT)
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #144
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	cid_face_open, .-cid_face_open
	.section	.text.cid_slot_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_slot_done, %function
cid_slot_done:
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
	.size	cid_slot_done, .-cid_slot_done
	.section	.rodata
	.align	2
.LC55:
	.ascii	"pshinter\000"
	.section	.text.cid_slot_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_slot_init, %function
cid_slot_init:
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
	ldr	r3, [r3, #320]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L168
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L170
.LPIC8:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L168
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	blx	r3
	str	r0, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #8]
	str	r2, [r3, #36]
.L168:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L171:
	.align	2
.L170:
	.word	.LC55-(.LPIC8+4)
	.size	cid_slot_init, .-cid_slot_init
	.section	.text.cid_size_get_globals_funcs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_size_get_globals_funcs, %function
cid_size_get_globals_funcs:
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
	ldr	r3, [r3, #320]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L176
.LPIC9:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L173
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L173
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L173
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	blx	r3
	mov	r3, r0
	b	.L174
.L173:
	movs	r3, #0
.L174:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L177:
	.align	2
.L176:
	.word	.LC55-(.LPIC9+4)
	.size	cid_size_get_globals_funcs, .-cid_size_get_globals_funcs
	.section	.text.cid_size_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_size_done, %function
cid_size_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L178
	ldr	r0, [r7, #12]
	bl	cid_size_get_globals_funcs(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L180
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #40]
	mov	r0, r2
	blx	r3
.L180:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
.L178:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cid_size_done, .-cid_size_done
	.section	.text.cid_size_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_size_init, %function
cid_size_init:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r0, [r7, #32]
	bl	cid_size_get_globals_funcs(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L182
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r1, [r3, #304]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	mov	r2, r3
	mov	r3, r2
	lsls	r3, r3, #6
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	ldr	r1, [r2, #100]
	add	r2, r7, #12
	mov	r0, r1
	ldr	r1, [r7, #16]
	blx	r3
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L182
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
.L182:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cid_size_init, .-cid_size_init
	.section	.text.cid_size_request,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_size_request, %function
cid_size_request:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Request_Metrics(PLT)
	ldr	r0, [r7, #4]
	bl	cid_size_get_globals_funcs(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L186
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	movs	r0, #0
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
	blx	r4
.L186:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cid_size_request, .-cid_size_request
	.section	.text.cid_face_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_face_done, %function
cid_face_done:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L189
	b	.L188
.L189:
	ldr	r3, [r7, #24]
	adds	r3, r3, #140
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #24
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #316]
	cmp	r3, #0
	beq	.L191
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L192
.L194:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #316]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L193
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #4]
.L193:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L192:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L194
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #316]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #316]
.L191:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #164]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #164]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #160]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #324]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #324]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #328]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #328]
.L188:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	cid_face_done, .-cid_face_done
	.section	.rodata
	.align	2
.LC56:
	.ascii	"psaux\000"
	.align	2
.LC57:
	.ascii	"Regular\000"
	.align	2
.LC58:
	.ascii	"Bold\000"
	.align	2
.LC59:
	.ascii	"Black\000"
	.section	.text.cid_face_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_face_init, %function
cid_face_init:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #136]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L196
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L222
.LPIC10:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module_Interface(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L197
	movs	r3, #11
	str	r3, [r7, #44]
	b	.L198
.L197:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	str	r2, [r3, #136]
.L196:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #320]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L199
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r3, .L222+4
.LPIC11:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module_Interface(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #24]
	str	r2, [r3, #320]
.L199:
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L200
	b	.L198
.L200:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #4]
	bl	cid_face_open(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L201
	b	.L198
.L201:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L202
	b	.L198
.L202:
	ldr	r3, [r7, #4]
	uxth	r3, r3
	cmp	r3, #0
	beq	.L203
	movs	r3, #6
	str	r3, [r7, #44]
	b	.L198
.L203:
	ldr	r3, [r7, #32]
	adds	r3, r3, #140
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #24
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #156]
	mov	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r3, r3, #2064
	orr	r3, r3, #1
	ldr	r2, [r7, #8]
	str	r3, [r2, #8]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3, #24]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L204
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orr	r2, r3, #4
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
.L204:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	str	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r2, .L222+8
.LPIC12:
	add	r2, pc
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L205
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L206
	b	.L207
.L214:
	ldr	r3, [r7, #40]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L208
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	b	.L207
.L208:
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L209
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L210
.L209:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	b	.L207
.L210:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L211
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	bne	.L212
.L211:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	b	.L207
.L212:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L213
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #40]
	str	r2, [r3, #24]
	b	.L206
.L213:
	b	.L206
.L207:
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L214
.L206:
	b	.L215
.L205:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L215
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3, #20]
.L215:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L216
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	orr	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3, #12]
.L216:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L217
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	ldr	r3, .L222+12
.LPIC13:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L218
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	mov	r0, r3
	ldr	r3, .L222+16
.LPIC14:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L217
.L218:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	orr	r2, r3, #2
	ldr	r3, [r7, #8]
	str	r2, [r3, #12]
.L217:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #56]
	asrs	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #52]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #60]
	asrs	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #56]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #64]
	add	r3, r3, #65280
	adds	r3, r3, #255
	asrs	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #60]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #68]
	add	r3, r3, #65280
	adds	r3, r3, #255
	asrs	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #64]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #68]
	cmp	r3, #0
	bne	.L219
	ldr	r3, [r7, #8]
	mov	r2, #1000
	strh	r2, [r3, #68]	@ movhi
.L219:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #64]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #70]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #56]
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
	bge	.L220
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
.L220:
	ldr	r3, [r7, #16]
	ldrh	r2, [r3, #26]
	ldr	r3, [r7, #8]
	strh	r2, [r3, #80]	@ movhi
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #28]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	strh	r2, [r3, #82]	@ movhi
.L198:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L223:
	.align	2
.L222:
	.word	.LC56-(.LPIC10+4)
	.word	.LC55-(.LPIC11+4)
	.word	.LC57-(.LPIC12+4)
	.word	.LC58-(.LPIC13+4)
	.word	.LC59-(.LPIC14+4)
	.size	cid_face_init, .-cid_face_init
	.section	.text.cid_driver_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_driver_init, %function
cid_driver_init:
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
	.size	cid_driver_init, .-cid_driver_init
	.section	.text.cid_driver_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_driver_done, %function
cid_driver_done:
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
	.size	cid_driver_done, .-cid_driver_done
	.section	.text.cid_get_postscript_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_get_postscript_name, %function
cid_get_postscript_name:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #140]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L228
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L228
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L228:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cid_get_postscript_name, .-cid_get_postscript_name
	.section	.data.rel.ro.local.cid_service_ps_name,"aw",%progbits
	.align	2
	.type	cid_service_ps_name, %object
	.size	cid_service_ps_name, 4
cid_service_ps_name:
	.word	cid_get_postscript_name
	.section	.text.cid_ps_get_font_info,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_ps_get_font_info, %function
cid_ps_get_font_info:
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
	add	r5, r3, #164
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
	.size	cid_ps_get_font_info, .-cid_ps_get_font_info
	.section	.text.cid_ps_get_font_extra,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_ps_get_font_extra, %function
cid_ps_get_font_extra:
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
	ldrh	r2, [r2, #312]	@ movhi
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cid_ps_get_font_extra, .-cid_ps_get_font_extra
	.section	.data.rel.ro.local.cid_service_ps_info,"aw",%progbits
	.align	2
	.type	cid_service_ps_info, %object
	.size	cid_service_ps_info, 20
cid_service_ps_info:
	.word	cid_ps_get_font_info
	.word	cid_ps_get_font_extra
	.word	0
	.word	0
	.word	0
	.section	.text.cid_get_ros,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_get_ros, %function
cid_get_ros:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r3, r3, #140
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L235
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	str	r2, [r3]
.L235:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L236
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L236:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L237
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	str	r2, [r3]
.L237:
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cid_get_ros, .-cid_get_ros
	.section	.text.cid_get_is_cid,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_get_is_cid, %function
cid_get_is_cid:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L240
	ldr	r3, [r7]
	movs	r2, #1
	strb	r2, [r3]
.L240:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cid_get_is_cid, .-cid_get_is_cid
	.section	.text.cid_get_cid_from_glyph_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_get_cid_from_glyph_index, %function
cid_get_cid_from_glyph_index:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L243
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3]
.L243:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cid_get_cid_from_glyph_index, .-cid_get_cid_from_glyph_index
	.section	.data.rel.ro.local.cid_service_cid_info,"aw",%progbits
	.align	2
	.type	cid_service_cid_info, %object
	.size	cid_service_cid_info, 12
cid_service_cid_info:
	.word	cid_get_ros
	.word	cid_get_is_cid
	.word	cid_get_cid_from_glyph_index
	.section	.rodata
	.align	2
.LC60:
	.ascii	"font-format\000"
	.align	2
.LC61:
	.ascii	"CID Type 1\000"
	.align	2
.LC62:
	.ascii	"postscript-font-name\000"
	.align	2
.LC63:
	.ascii	"postscript-info\000"
	.align	2
.LC64:
	.ascii	"CID\000"
	.section	.data.rel.ro.local.cid_services,"aw",%progbits
	.align	2
	.type	cid_services, %object
	.size	cid_services, 40
cid_services:
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	cid_service_ps_name
	.word	.LC63
	.word	cid_service_ps_info
	.word	.LC64
	.word	cid_service_cid_info
	.word	0
	.word	0
	.section	.text.cid_get_interface,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_get_interface, %function
cid_get_interface:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L247
.LPIC15:
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
.L248:
	.align	2
.L247:
	.word	cid_services-(.LPIC15+4)
	.size	cid_get_interface, .-cid_get_interface
	.global	t1cid_driver_class
	.section	.rodata
	.align	2
.LC65:
	.ascii	"t1cid\000"
	.section	.data.rel.ro.local.t1cid_driver_class,"aw",%progbits
	.align	2
	.type	t1cid_driver_class, %object
	.size	t1cid_driver_class, 96
t1cid_driver_class:
	.word	1281
	.word	28
	.word	.LC65
	.word	65536
	.word	131072
	.word	0
	.word	cid_driver_init
	.word	cid_driver_done
	.word	cid_get_interface
	.word	332
	.word	48
	.word	172
	.word	cid_face_init
	.word	cid_face_done
	.word	cid_size_init
	.word	cid_size_done
	.word	cid_slot_init
	.word	cid_slot_done
	.word	cid_slot_load_glyph
	.word	0
	.word	0
	.word	0
	.word	cid_size_request
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
	.section	.text.cid_load_glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_load_glyph, %function
cid_load_glyph:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #108
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	adds	r3, r3, #140
	str	r3, [r7, #84]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #328]
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #96]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #100]
	str	r3, [r7, #76]
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #136]
	str	r3, [r7, #72]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L252
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [r7, #68]
	ldr	r1, [r2, #4]
	add	r2, r7, #28
	mov	r0, r1
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L253
	b	.L258
.L253:
	ldr	r3, [r7, #28]
	str	r3, [r7, #40]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #148]
	uxtb	r3, r3
	add	r2, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	cid_get_offset(PLT)
	str	r0, [r7, #100]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L255
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #148]
	subs	r3, r2, r3
	str	r3, [r7, #92]
	ldr	r2, [r7, #92]
	add	r3, r7, #36
	ldr	r0, [r7, #76]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #96]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L255
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #148]
	add	r3, r3, r2
	ldr	r0, [r7, #96]
	mov	r1, r3
	ldr	r2, [r7, #92]
	bl	memcpy(PLT)
.L255:
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #68]
	ldr	r1, [r2, #4]
	add	r2, r7, #28
	mov	r0, r1
	mov	r1, r2
	blx	r3
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L256
	nop
	b	.L258
.L256:
	b	.L257
.L252:
	ldr	r3, [r7, #84]
	ldr	r2, [r3, #148]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #152]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #84]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #144]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r1, [r7, #64]
	mul	r3, r1, r3
	add	r3, r3, r2
	ldr	r0, [r7, #80]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L258
	ldr	r3, [r7, #64]
	lsls	r3, r3, #1
	ldr	r0, [r7, #80]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L258
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #32]
	str	r3, [r7, #40]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #148]
	uxtb	r3, r3
	add	r2, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	cid_get_offset(PLT)
	str	r0, [r7, #100]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #152]
	uxtb	r3, r3
	add	r2, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	cid_get_offset(PLT)
	str	r0, [r7, #60]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #148]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #152]
	uxtb	r3, r3
	add	r2, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	cid_get_offset(PLT)
	str	r0, [r7, #56]
	ldr	r0, [r7, #80]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #160]
	mov	r2, r3
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bls	.L259
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L259
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bls	.L260
.L259:
	movs	r3, #9
	str	r3, [r7, #36]
	b	.L258
.L260:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L261
	b	.L258
.L261:
	ldr	r2, [r7, #92]
	add	r3, r7, #36
	ldr	r0, [r7, #76]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #96]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L262
	b	.L258
.L262:
	ldr	r3, [r7, #84]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	ldr	r0, [r7, #80]
	mov	r1, r3
	ldr	r2, [r7, #96]
	ldr	r3, [r7, #92]
	bl	FT_Stream_ReadAt(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L257
	b	.L258
.L257:
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #316]
	ldr	r3, [r7, #100]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #1364]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #1368]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1372]
	ldr	r3, [r7, #84]
	ldr	r1, [r3, #164]
	ldr	r2, [r7, #100]
	mov	r3, r2
	lsls	r3, r3, #6
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #48]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #48]
	add	r4, r2, #1376
	adds	r3, r3, #216
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #48]
	add	r3, r3, #1392
	adds	r2, r2, #232
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #1360]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1360]
	bic	r3, r3, r3, asr #31
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #92]
	cmp	r2, r3
	bls	.L263
	movs	r3, #9
	str	r3, [r7, #36]
	b	.L258
.L263:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1360]
	cmp	r3, #0
	blt	.L264
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #96]
	ldr	r1, [r7, #92]
	movw	r2, #4330
	blx	r3
.L264:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1484]
	ldr	r1, [r7, #96]
	ldr	r2, [r7, #44]
	add	r1, r1, r2
	ldr	r0, [r7, #92]
	ldr	r2, [r7, #44]
	subs	r2, r0, r2
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L258
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L258
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L258
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #44]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	str	r3, [r7, #24]
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #4]
	add	r3, r7, #12
	mov	r0, r2
	ldr	r1, [r7]
	movs	r2, #0
	blx	r4
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	lsls	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #20]
	lsls	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #24]
	lsls	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
.L258:
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #96]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #96]
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #108
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	cid_load_glyph, .-cid_load_glyph
	.section	.text.cid_slot_load_glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cid_slot_load_glyph, %function
cid_slot_load_glyph:
	@ args = 0, pretend = 0, frame = 1608
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	subw	sp, sp, #1636
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
	str	r3, [r7, #1592]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #1588]
	ldr	r3, [r7, #1588]
	ldr	r3, [r3, #136]
	str	r3, [r7, #1584]
	ldr	r3, [r7, #1588]
	ldr	r3, [r3, #16]
	mov	r2, r3
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r2, r3
	bhi	.L267
	movs	r3, #6
	str	r3, [r7, #1604]
	b	.L268
.L267:
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L269
	mov	r3, r7
	mov	r2, r7
	ldr	r2, [r2]
	orr	r2, r2, #3
	str	r2, [r3]
.L269:
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #1592]
	str	r2, [r3, #164]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #1592]
	str	r2, [r3, #168]
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
	bne	.L270
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L270
	movs	r3, #1
	b	.L271
.L270:
	movs	r3, #0
.L271:
	strb	r3, [r7, #1583]
	add	r3, r7, #12
	ldr	r2, [r3]
	movw	r3, #29804
	movt	r3, 28533
	str	r3, [r2, #72]
	ldr	r3, [r7, #1584]
	ldr	r3, [r3, #12]
	ldr	r4, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r1, [r3, #4]
	mov	r3, r7
	ldr	r3, [r3]
	asrs	r3, r3, #16
	and	r3, r3, #15
	mov	r5, r3
	add	r0, r7, #60
	add	r2, r7, #8
	add	r3, r7, #12
	movs	r6, #0
	str	r6, [sp]
	movs	r6, #0
	str	r6, [sp, #4]
	ldrb	r6, [r7, #1583]	@ zero_extendqisi2
	str	r6, [sp, #8]
	str	r5, [sp, #12]
	ldr	r5, .L287
.LPIC16:
	add	r5, pc
	str	r5, [sp, #16]
	ldr	r2, [r2]
	ldr	r3, [r3]
	blx	r4
	str	r0, [r7, #1604]
	ldr	r3, [r7, #1604]
	cmp	r3, #0
	beq	.L272
	b	.L268
.L272:
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	add	r3, r7, #60
	strb	r2, [r3, #69]
	add	r2, r7, #60
	adds	r3, r7, #4
	mov	r0, r2
	ldr	r1, [r3]
	bl	cid_load_glyph(PLT)
	str	r0, [r7, #1604]
	ldr	r3, [r7, #1604]
	cmp	r3, #0
	beq	.L273
	b	.L268
.L273:
	add	r2, r7, #44
	add	r3, r7, #60
	mov	r4, r2
	add	r3, r3, #1376
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	add	r3, r7, #36
	add	r2, r7, #60
	add	r2, r2, #1392
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #1584]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #4]
	add	r2, r7, #60
	mov	r0, r2
	blx	r3
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
	beq	.L274
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #156]
	str	r3, [r7, #1576]
	add	r3, r7, #60
	ldr	r3, [r3, #32]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #32]
	add	r3, r7, #60
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #40]
	ldr	r2, [r7, #1576]
	add	r3, r7, #44
	add	r4, r2, #12
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #1576]
	add	r2, r7, #36
	adds	r3, r3, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #1576]
	movs	r2, #1
	strb	r2, [r3, #8]
	b	.L268
.L274:
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #24
	str	r3, [r7, #1572]
	add	r3, r7, #60
	ldr	r3, [r3, #40]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	ldr	r3, [r7, #1572]
	str	r2, [r3, #16]
	add	r3, r7, #60
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
	ldr	r3, [r7, #1588]
	ldr	r2, [r3, #208]
	ldr	r3, [r7, #1588]
	ldr	r3, [r3, #200]
	subs	r3, r2, r3
	asrs	r2, r3, #16
	ldr	r3, [r7, #1572]
	str	r2, [r3, #28]
	ldr	r3, [r7, #1572]
	ldr	r2, [r3, #28]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #60]
	add	r3, r7, #12
	ldr	r2, [r3]
	movw	r3, #29804
	movt	r3, 28533
	str	r3, [r2, #72]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldrh	r3, [r3, #14]
	cmp	r3, #23
	bhi	.L275
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #124]
	orr	r2, r3, #256
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #124]
.L275:
	add	r3, r7, #44
	ldr	r3, [r3]
	cmp	r3, #65536
	bne	.L276
	add	r3, r7, #44
	ldr	r3, [r3, #12]
	cmp	r3, #65536
	bne	.L276
	add	r3, r7, #44
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L276
	add	r3, r7, #44
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L277
.L276:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #108
	add	r3, r7, #44
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Transform(PLT)
	ldr	r3, [r7, #1572]
	ldr	r2, [r3, #16]
	add	r3, r7, #44
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1572]
	str	r2, [r3, #16]
	ldr	r3, [r7, #1572]
	ldr	r2, [r3, #28]
	add	r3, r7, #44
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1572]
	str	r2, [r3, #28]
.L277:
	add	r3, r7, #36
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L278
	add	r3, r7, #36
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L279
.L278:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r1, r3, #108
	add	r3, r7, #36
	ldr	r2, [r3]
	add	r3, r7, #36
	ldr	r3, [r3, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
	ldr	r3, [r7, #1572]
	ldr	r2, [r3, #16]
	add	r3, r7, #36
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #1572]
	str	r2, [r3, #16]
	ldr	r3, [r7, #1572]
	ldr	r2, [r3, #28]
	add	r3, r7, #36
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #1572]
	str	r2, [r3, #28]
.L279:
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L280
	add	r3, r7, #60
	ldr	r3, [r3, #16]
	str	r3, [r7, #1568]
	ldr	r3, [r7, #1568]
	ldr	r3, [r3, #4]
	str	r3, [r7, #1596]
	ldr	r3, [r7, #1592]
	ldr	r3, [r3, #164]
	str	r3, [r7, #1564]
	ldr	r3, [r7, #1592]
	ldr	r3, [r3, #168]
	str	r3, [r7, #1560]
	ldrb	r3, [r7, #1583]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L281
	add	r3, r7, #60
	ldr	r3, [r3, #72]
	cmp	r3, #0
	bne	.L282
.L281:
	ldr	r3, [r7, #1568]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	str	r3, [r7, #1600]
	b	.L283
.L284:
	ldr	r3, [r7, #1596]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #1564]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1596]
	str	r2, [r3]
	ldr	r3, [r7, #1596]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #1560]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1596]
	str	r2, [r3, #4]
	ldr	r3, [r7, #1600]
	subs	r3, r3, #1
	str	r3, [r7, #1600]
	ldr	r3, [r7, #1596]
	adds	r3, r3, #8
	str	r3, [r7, #1596]
.L283:
	ldr	r3, [r7, #1600]
	cmp	r3, #0
	bgt	.L284
.L282:
	ldr	r3, [r7, #1572]
	ldr	r3, [r3, #16]
	mov	r0, r3
	ldr	r1, [r7, #1564]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1572]
	str	r2, [r3, #16]
	ldr	r3, [r7, #1572]
	ldr	r3, [r3, #28]
	mov	r0, r3
	ldr	r1, [r7, #1560]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #1572]
	str	r2, [r3, #28]
.L280:
	add	r3, r7, #12
	ldr	r3, [r3]
	add	r2, r3, #108
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Get_CBox(PLT)
	add	r3, r7, #20
	ldr	r2, [r3, #8]
	add	r3, r7, #20
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #1572]
	str	r2, [r3]
	add	r3, r7, #20
	ldr	r2, [r3, #12]
	add	r3, r7, #20
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #1572]
	str	r2, [r3, #4]
	add	r3, r7, #20
	ldr	r2, [r3]
	ldr	r3, [r7, #1572]
	str	r2, [r3, #8]
	add	r3, r7, #20
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #1572]
	str	r2, [r3, #12]
	mov	r3, r7
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L268
	ldr	r3, [r7, #1572]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #1572]
	mov	r1, r3
	bl	ft_synthesize_vertical_metrics(PLT)
.L268:
	ldr	r3, [r7, #1604]
	mov	r0, r3
	addw	r7, r7, #1612
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L288:
	.align	2
.L287:
	.word	cid_load_glyph-(.LPIC16+4)
	.size	cid_slot_load_glyph, .-cid_slot_load_glyph
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
