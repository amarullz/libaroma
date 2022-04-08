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
	.file	"winfnt.c"
	.section	.rodata.winmz_header_fields,"a",%progbits
	.align	2
	.type	winmz_header_fields, %object
	.size	winmz_header_fields, 20
winmz_header_fields:
	.byte	4
	.byte	0
	.short	64
	.byte	14
	.byte	2
	.short	0
	.byte	25
	.byte	58
	.short	0
	.byte	18
	.byte	2
	.short	2
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.winne_header_fields,"a",%progbits
	.align	2
	.type	winne_header_fields, %object
	.size	winne_header_fields, 24
winne_header_fields:
	.byte	4
	.byte	0
	.short	40
	.byte	14
	.byte	2
	.short	0
	.byte	25
	.byte	34
	.short	0
	.byte	14
	.byte	2
	.short	2
	.byte	14
	.byte	2
	.short	4
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.winpe32_header_fields,"a",%progbits
	.align	2
	.type	winpe32_header_fields, %object
	.size	winpe32_header_fields, 52
winpe32_header_fields:
	.byte	4
	.byte	0
	.short	248
	.byte	18
	.byte	4
	.short	0
	.byte	14
	.byte	2
	.short	4
	.byte	14
	.byte	2
	.short	6
	.byte	25
	.byte	12
	.short	0
	.byte	14
	.byte	2
	.short	8
	.byte	25
	.byte	2
	.short	0
	.byte	14
	.byte	2
	.short	10
	.byte	25
	.byte	110
	.short	0
	.byte	18
	.byte	4
	.short	12
	.byte	18
	.byte	4
	.short	16
	.byte	25
	.byte	104
	.short	0
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.winpe32_section_fields,"a",%progbits
	.align	2
	.type	winpe32_section_fields, %object
	.size	winpe32_section_fields, 32
winpe32_section_fields:
	.byte	4
	.byte	0
	.short	40
	.byte	24
	.byte	8
	.short	0
	.byte	25
	.byte	4
	.short	0
	.byte	18
	.byte	4
	.short	8
	.byte	18
	.byte	4
	.short	12
	.byte	18
	.byte	4
	.short	16
	.byte	25
	.byte	16
	.short	0
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.winpe_rsrc_dir_fields,"a",%progbits
	.align	2
	.type	winpe_rsrc_dir_fields, %object
	.size	winpe_rsrc_dir_fields, 32
winpe_rsrc_dir_fields:
	.byte	4
	.byte	0
	.short	16
	.byte	18
	.byte	4
	.short	0
	.byte	18
	.byte	4
	.short	4
	.byte	14
	.byte	2
	.short	8
	.byte	14
	.byte	2
	.short	10
	.byte	14
	.byte	2
	.short	12
	.byte	14
	.byte	2
	.short	14
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.winpe_rsrc_dir_entry_fields,"a",%progbits
	.align	2
	.type	winpe_rsrc_dir_entry_fields, %object
	.size	winpe_rsrc_dir_entry_fields, 16
winpe_rsrc_dir_entry_fields:
	.byte	4
	.byte	0
	.short	8
	.byte	18
	.byte	4
	.short	0
	.byte	18
	.byte	4
	.short	4
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.winpe_rsrc_data_entry_fields,"a",%progbits
	.align	2
	.type	winpe_rsrc_data_entry_fields, %object
	.size	winpe_rsrc_data_entry_fields, 24
winpe_rsrc_data_entry_fields:
	.byte	4
	.byte	0
	.short	16
	.byte	18
	.byte	4
	.short	0
	.byte	18
	.byte	4
	.short	4
	.byte	18
	.byte	4
	.short	8
	.byte	18
	.byte	4
	.short	12
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.winfnt_header_fields,"a",%progbits
	.align	2
	.type	winfnt_header_fields, %object
	.size	winfnt_header_fields, 152
winfnt_header_fields:
	.byte	4
	.byte	0
	.short	148
	.byte	14
	.byte	2
	.short	0
	.byte	18
	.byte	4
	.short	4
	.byte	24
	.byte	60
	.short	8
	.byte	14
	.byte	2
	.short	68
	.byte	14
	.byte	2
	.short	70
	.byte	14
	.byte	2
	.short	72
	.byte	14
	.byte	2
	.short	74
	.byte	14
	.byte	2
	.short	76
	.byte	14
	.byte	2
	.short	78
	.byte	14
	.byte	2
	.short	80
	.byte	8
	.byte	1
	.short	82
	.byte	8
	.byte	1
	.short	83
	.byte	8
	.byte	1
	.short	84
	.byte	14
	.byte	2
	.short	86
	.byte	8
	.byte	1
	.short	88
	.byte	14
	.byte	2
	.short	90
	.byte	14
	.byte	2
	.short	92
	.byte	8
	.byte	1
	.short	94
	.byte	14
	.byte	2
	.short	96
	.byte	14
	.byte	2
	.short	98
	.byte	8
	.byte	1
	.short	100
	.byte	8
	.byte	1
	.short	101
	.byte	8
	.byte	1
	.short	102
	.byte	8
	.byte	1
	.short	103
	.byte	14
	.byte	2
	.short	104
	.byte	18
	.byte	4
	.short	108
	.byte	18
	.byte	4
	.short	112
	.byte	18
	.byte	4
	.short	116
	.byte	18
	.byte	4
	.short	120
	.byte	8
	.byte	1
	.short	124
	.byte	18
	.byte	4
	.short	128
	.byte	14
	.byte	2
	.short	132
	.byte	14
	.byte	2
	.short	134
	.byte	14
	.byte	2
	.short	136
	.byte	18
	.byte	2
	.short	138
	.byte	24
	.byte	16
	.short	140
	.byte	0
	.byte	0
	.short	0
	.section	.text.fnt_font_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fnt_font_done, %function
fnt_font_done:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L2
	b	.L1
.L2:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #160]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [r7, #12]
	adds	r3, r3, #160
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	FT_Stream_ReleaseFrame(PLT)
.L4:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #168]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #168]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #12]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #132]
.L1:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	fnt_font_done, .-fnt_font_done
	.section	.text.fnt_font_load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fnt_font_load, %function
fnt_font_load:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L6
	ldr	r0, [r7]
	ldr	r3, .L14
.LPIC0:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #16]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L6
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	cmp	r3, #512
	beq	.L7
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	cmp	r3, #768
	beq	.L7
	movs	r3, #2
	str	r3, [r7, #20]
	b	.L6
.L7:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #4]
	cmp	r3, #768
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L8
	movs	r3, #148
	b	.L9
.L8:
	movs	r3, #118
.L9:
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L10
	movs	r3, #2
	str	r3, [r7, #20]
	b	.L6
.L10:
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	cmp	r3, #512
	bne	.L11
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #128]
	ldr	r3, [r7, #16]
	movs	r2, #0
	strh	r2, [r3, #132]	@ movhi
	ldr	r3, [r7, #16]
	movs	r2, #0
	strh	r2, [r3, #134]	@ movhi
	ldr	r3, [r7, #16]
	movs	r2, #0
	strh	r2, [r3, #136]	@ movhi
	ldr	r3, [r7, #16]
	movs	r2, #0
	strh	r2, [r3, #138]	@ movhi
.L11:
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #68]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L12
	movs	r3, #2
	str	r3, [r7, #20]
	b	.L6
.L12:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L6
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #160
	ldr	r0, [r7]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ExtractFrame(PLT)
	str	r0, [r7, #20]
.L6:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	winfnt_header_fields-(.LPIC0+4)
	.size	fnt_font_load, .-fnt_font_load
	.section	.text.fnt_face_get_dll_font,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fnt_face_get_dll_font, %function
fnt_face_get_dll_font:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #212
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #104]
	str	r3, [r7, #188]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #184]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #132]
	ldr	r3, [r7]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	uxth	r3, r3
	str	r3, [r7, #180]
	ldr	r0, [r7, #188]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	add	r3, r7, #148
	ldr	r0, [r7, #188]
	ldr	r2, .L57
.LPIC1:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	movs	r3, #2
	str	r3, [r7, #152]
	ldrh	r2, [r7, #148]
	movw	r3, #23117
	cmp	r2, r3
	bne	.L18
	ldrh	r3, [r7, #150]
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	add	r3, r7, #140
	ldr	r0, [r7, #188]
	ldr	r2, .L57+4
.LPIC2:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	movs	r3, #2
	str	r3, [r7, #152]
	ldrh	r2, [r7, #140]
	movw	r3, #17742
	cmp	r2, r3
	bne	.L20
	ldrh	r3, [r7, #150]
	mov	r2, r3
	ldrh	r3, [r7, #142]
	add	r3, r3, r2
	str	r3, [r7, #176]
	movs	r3, #0
	strh	r3, [r7, #206]	@ movhi
	movs	r3, #0
	str	r3, [r7, #200]
	ldr	r0, [r7, #188]
	ldr	r1, [r7, #176]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	ldrh	r3, [r7, #144]
	mov	r2, r3
	ldrh	r3, [r7, #142]
	subs	r3, r2, r3
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	ldr	r0, [r7, #188]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	strh	r3, [r7, #174]	@ movhi
	ldrh	r3, [r7, #174]
	cmp	r3, #16
	bls	.L21
	movs	r3, #3
	str	r3, [r7, #152]
	b	.L17
.L21:
	ldr	r0, [r7, #188]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	strh	r3, [r7, #172]	@ movhi
	ldrh	r3, [r7, #172]
	cmp	r3, #0
	bne	.L22
	b	.L23
.L22:
	ldr	r0, [r7, #188]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	strh	r3, [r7, #170]	@ movhi
	ldrh	r2, [r7, #172]
	movw	r3, #32776
	cmp	r2, r3
	bne	.L24
	ldrh	r3, [r7, #170]	@ movhi
	strh	r3, [r7, #206]	@ movhi
	ldr	r0, [r7, #188]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #32]
	mov	r1, r3
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #36]
	subs	r3, r1, r3
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #200]
	b	.L23
.L24:
	ldr	r3, [r7, #188]
	ldr	r1, [r3, #32]
	ldrh	r2, [r7, #170]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #4
	adds	r2, r1, r3
	ldr	r3, [r7, #188]
	str	r2, [r3, #32]
	b	.L21
.L23:
	ldr	r0, [r7, #188]
	bl	FT_Stream_ExitFrame(PLT)
	ldrh	r3, [r7, #206]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #200]
	cmp	r3, #0
	bne	.L26
.L25:
	movs	r3, #3
	str	r3, [r7, #152]
	b	.L17
.L26:
	ldrh	r3, [r7, #206]
	movs	r2, #118
	mul	r2, r2, r3
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L27
	movs	r3, #3
	str	r3, [r7, #152]
	b	.L17
.L27:
	ldrh	r2, [r7, #206]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L28
	b	.L17
.L28:
	ldrh	r2, [r7, #206]
	ldr	r3, [r7, #180]
	cmp	r2, r3
	bgt	.L29
	movs	r3, #6
	str	r3, [r7, #152]
	b	.L17
.L29:
	add	r3, r7, #152
	ldr	r0, [r7, #184]
	movs	r1, #172
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #132]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	beq	.L30
	b	.L17
.L30:
	ldr	r2, [r7, #180]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #200]
	add	r3, r3, r2
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L18
	ldr	r0, [r7, #188]
	movs	r1, #12
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L18
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #132]
	ldr	r0, [r7, #188]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldrh	r3, [r7, #174]
	lsl	r3, r2, r3
	str	r3, [r4]
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #132]
	ldr	r0, [r7, #188]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldrh	r3, [r7, #174]
	lsl	r3, r2, r3
	str	r3, [r4, #164]
	ldr	r3, [r7, #188]
	ldr	r3, [r3, #32]
	add	r2, r3, #8
	ldr	r3, [r7, #188]
	str	r2, [r3, #32]
	ldr	r0, [r7, #188]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	mov	r0, r3
	ldr	r1, [r7, #188]
	bl	fnt_font_load(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	b	.L32
.L20:
	ldrh	r2, [r7, #140]
	movw	r3, #17744
	cmp	r2, r3
	bne	.L32
	ldrh	r3, [r7, #150]
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	add	r3, r7, #120
	ldr	r0, [r7, #188]
	ldr	r2, .L57+8
.LPIC3:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	ldr	r2, [r7, #120]
	movw	r3, #17744
	cmp	r2, r3
	bne	.L34
	ldrh	r3, [r7, #124]
	cmp	r3, #332
	bne	.L34
	ldrh	r3, [r7, #128]
	cmp	r3, #224
	bne	.L34
	ldrh	r2, [r7, #130]
	movw	r3, #267
	cmp	r2, r3
	beq	.L35
.L34:
	movs	r3, #3
	str	r3, [r7, #152]
	b	.L33
.L35:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
	strh	r3, [r7, #198]	@ movhi
	b	.L36
.L40:
	add	r3, r7, #100
	ldr	r0, [r7, #188]
	ldr	r2, .L57+12
.LPIC4:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	beq	.L37
	b	.L33
.L37:
	ldr	r2, [r7, #132]
	ldr	r3, [r7, #108]
	cmp	r2, r3
	bne	.L38
	nop
.L39:
	ldr	r3, [r7, #116]
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	b	.L56
.L38:
	ldrh	r3, [r7, #198]
	adds	r3, r3, #1
	strh	r3, [r7, #198]	@ movhi
.L36:
	ldrh	r3, [r7, #126]
	ldrh	r2, [r7, #198]
	cmp	r2, r3
	bcc	.L40
	movs	r3, #3
	str	r3, [r7, #152]
	b	.L33
.L56:
	add	r3, r7, #84
	ldr	r0, [r7, #188]
	ldr	r2, .L57+16
.LPIC5:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	ldr	r3, [r7, #116]
	str	r3, [r7, #164]
	movs	r3, #0
	strh	r3, [r7, #198]	@ movhi
	b	.L41
.L52:
	ldrh	r3, [r7, #198]
	lsls	r3, r3, #3
	mov	r2, r3
	ldr	r3, [r7, #164]
	add	r3, r3, r2
	adds	r3, r3, #16
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	add	r3, r7, #44
	ldr	r0, [r7, #188]
	ldr	r2, .L57+20
.LPIC6:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	ldr	r3, [r7, #48]
	cmp	r3, #0
	blt	.L42
	movs	r3, #3
	str	r3, [r7, #152]
	b	.L33
.L42:
	ldr	r3, [r7, #48]
	bic	r3, r3, #-2147483648
	str	r3, [r7, #48]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #160]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	add	r3, r7, #68
	ldr	r0, [r7, #188]
	ldr	r2, .L57+24
.LPIC7:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	movs	r3, #0
	strh	r3, [r7, #196]	@ movhi
	b	.L43
.L51:
	ldrh	r3, [r7, #196]
	lsls	r3, r3, #3
	mov	r2, r3
	ldr	r3, [r7, #160]
	add	r3, r3, r2
	adds	r3, r3, #16
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	add	r3, r7, #36
	ldr	r0, [r7, #188]
	ldr	r2, .L57+28
.LPIC8:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	ldr	r3, [r7, #40]
	cmp	r3, #0
	blt	.L44
	movs	r3, #3
	str	r3, [r7, #152]
	b	.L33
.L44:
	ldr	r3, [r7, #40]
	bic	r3, r3, #-2147483648
	str	r3, [r7, #40]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #156]
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	add	r3, r7, #52
	ldr	r0, [r7, #188]
	ldr	r2, .L57+32
.LPIC9:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	movs	r3, #0
	strh	r3, [r7, #194]	@ movhi
	b	.L45
.L50:
	ldrh	r3, [r7, #194]
	lsls	r3, r3, #3
	mov	r2, r3
	ldr	r3, [r7, #156]
	add	r3, r3, r2
	adds	r3, r3, #16
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	add	r3, r7, #28
	ldr	r0, [r7, #188]
	ldr	r2, .L57+36
.LPIC10:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bge	.L46
	movs	r3, #3
	str	r3, [r7, #152]
	b	.L33
.L46:
	ldr	r3, [r7, #44]
	cmp	r3, #8
	bne	.L47
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #164]
	add	r3, r3, r2
	ldr	r0, [r7, #188]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	add	r3, r7, #12
	ldr	r0, [r7, #188]
	ldr	r2, .L57+40
.LPIC11:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L17
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #180]
	cmp	r2, r3
	bne	.L48
	add	r3, r7, #152
	ldr	r0, [r7, #184]
	movs	r1, #172
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #132]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	beq	.L49
	b	.L33
.L49:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	ldr	r1, [r7, #116]
	ldr	r2, [r7, #12]
	add	r1, r1, r2
	ldr	r2, [r7, #108]
	subs	r2, r1, r2
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	ldr	r2, [r7, #16]
	str	r2, [r3, #164]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	mov	r0, r3
	ldr	r1, [r7, #188]
	bl	fnt_font_load(PLT)
	mov	r3, r0
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bne	.L18
.L48:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L47:
	ldrh	r3, [r7, #194]
	adds	r3, r3, #1
	strh	r3, [r7, #194]	@ movhi
.L45:
	ldrh	r2, [r7, #194]
	ldrh	r3, [r7, #64]
	mov	r1, r3
	ldrh	r3, [r7, #66]
	add	r3, r3, r1
	cmp	r2, r3
	blt	.L50
	ldrh	r3, [r7, #196]
	adds	r3, r3, #1
	strh	r3, [r7, #196]	@ movhi
.L43:
	ldrh	r2, [r7, #196]
	ldrh	r3, [r7, #80]
	mov	r1, r3
	ldrh	r3, [r7, #82]
	add	r3, r3, r1
	cmp	r2, r3
	blt	.L51
	ldrh	r3, [r7, #198]
	adds	r3, r3, #1
	strh	r3, [r7, #198]	@ movhi
.L41:
	ldrh	r2, [r7, #198]
	ldrh	r3, [r7, #96]
	mov	r1, r3
	ldrh	r3, [r7, #98]
	add	r3, r3, r1
	cmp	r2, r3
	blt	.L52
	b	.L32
.L33:
	b	.L17
.L32:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L53
	movs	r3, #3
	str	r3, [r7, #152]
	b	.L17
.L53:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #180]
	cmp	r2, r3
	bgt	.L18
	movs	r3, #6
	str	r3, [r7, #152]
	nop
	b	.L17
.L18:
	ldr	r3, [r7, #152]
	cmp	r3, #0
	beq	.L17
	ldr	r0, [r7, #4]
	bl	fnt_font_done(PLT)
.L17:
	ldr	r3, [r7, #152]
	mov	r0, r3
	adds	r7, r7, #212
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L58:
	.align	2
.L57:
	.word	winmz_header_fields-(.LPIC1+4)
	.word	winne_header_fields-(.LPIC2+4)
	.word	winpe32_header_fields-(.LPIC3+4)
	.word	winpe32_section_fields-(.LPIC4+4)
	.word	winpe_rsrc_dir_fields-(.LPIC5+4)
	.word	winpe_rsrc_dir_entry_fields-(.LPIC6+4)
	.word	winpe_rsrc_dir_fields-(.LPIC7+4)
	.word	winpe_rsrc_dir_entry_fields-(.LPIC8+4)
	.word	winpe_rsrc_dir_fields-(.LPIC9+4)
	.word	winpe_rsrc_dir_entry_fields-(.LPIC10+4)
	.word	winpe_rsrc_data_entry_fields-(.LPIC11+4)
	.size	fnt_face_get_dll_font, .-fnt_face_get_dll_font
	.section	.text.fnt_cmap_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fnt_cmap_init, %function
fnt_cmap_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #104]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #105]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r3, r2, r3
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	fnt_cmap_init, .-fnt_cmap_init
	.section	.text.fnt_cmap_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fnt_cmap_char_index, %function
fnt_cmap_char_index:
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
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7]
	subs	r3, r2, r3
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L62
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L62:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	fnt_cmap_char_index, .-fnt_cmap_char_index
	.section	.text.fnt_cmap_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	fnt_cmap_char_next, %function
fnt_cmap_char_next:
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
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L65
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #16]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L66
.L65:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L66
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L66:
	ldr	r3, [r7]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	fnt_cmap_char_next, .-fnt_cmap_char_next
	.section	.data.rel.ro.local.fnt_cmap_class_rec,"aw",%progbits
	.align	2
	.type	fnt_cmap_class_rec, %object
	.size	fnt_cmap_class_rec, 40
fnt_cmap_class_rec:
	.word	24
	.word	fnt_cmap_init
	.word	0
	.word	fnt_cmap_char_index
	.word	fnt_cmap_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.data.rel.ro.local.fnt_cmap_class,"aw",%progbits
	.align	2
	.type	fnt_cmap_class, %object
	.size	fnt_cmap_class, 4
fnt_cmap_class:
	.word	fnt_cmap_class_rec
	.section	.text.FNT_Face_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FNT_Face_Done, %function
FNT_Face_Done:
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
	bne	.L69
	b	.L68
.L69:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #8]
	ldr	r0, [r7, #12]
	bl	fnt_font_done(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
.L68:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FNT_Face_Done, .-FNT_Face_Done
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Regular\000"
	.align	2
.LC1:
	.ascii	"Bold Italic\000"
	.align	2
.LC2:
	.ascii	"Bold\000"
	.align	2
.LC3:
	.ascii	"Italic\000"
	.section	.text.FNT_Face_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FNT_Face_Init, %function
FNT_Face_Init:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #100]
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	uxth	r3, r3
	str	r3, [r7, #56]
	ldr	r0, [r7, #64]
	ldr	r1, [r7, #4]
	bl	fnt_face_get_dll_font(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L72
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L72
	b	.L73
.L72:
	ldr	r3, [r7, #32]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L74
	add	r3, r7, #32
	ldr	r0, [r7, #60]
	movs	r1, #172
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #64]
	str	r2, [r3, #132]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L75
	b	.L73
.L75:
	ldr	r3, [r7, #8]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #132]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #52]
	str	r2, [r3, #164]
	ldr	r0, [r7, #52]
	ldr	r1, [r7, #12]
	bl	fnt_font_load(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L74
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L76
	b	.L73
.L76:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	ble	.L74
	movs	r3, #6
	str	r3, [r7, #32]
.L74:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L77
	b	.L78
.L77:
	ldr	r3, [r7, #64]
	str	r3, [r7, #48]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #132]
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #56]
	str	r2, [r3, #4]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	orr	r2, r3, #18
	ldr	r3, [r7, #48]
	str	r2, [r3, #8]
	ldr	r3, [r7, #44]
	ldrh	r2, [r3, #100]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #102]
	cmp	r2, r3
	bne	.L79
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	orr	r2, r3, #4
	ldr	r3, [r7, #48]
	str	r2, [r3, #8]
.L79:
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #86]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	orr	r2, r3, #1
	ldr	r3, [r7, #48]
	str	r2, [r3, #12]
.L80:
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #90]
	cmp	r3, #800
	bcc	.L81
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	orr	r2, r3, #2
	ldr	r3, [r7, #48]
	str	r2, [r3, #12]
.L81:
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #32
	str	r3, [sp, #4]
	ldr	r0, [r7, #60]
	movs	r1, #16
	movs	r2, #0
	movs	r3, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L82
	b	.L78
.L82:
	ldr	r3, [r7, #48]
	movs	r2, #1
	str	r2, [r3, #28]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #100]
	uxth	r2, r3
	ldr	r3, [r7, #40]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #44]
	ldrh	r2, [r3, #96]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #84]
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #40]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #74]
	lsls	r2, r3, #6
	ldr	r3, [r7, #40]
	str	r2, [r3, #4]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #78]	@ movhi
	strh	r3, [r7, #70]	@ movhi
	ldrh	r3, [r7, #70]
	cmp	r3, #0
	bne	.L83
	movs	r3, #72
	strh	r3, [r7, #70]	@ movhi
.L83:
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #76]	@ movhi
	strh	r3, [r7, #68]	@ movhi
	ldrh	r3, [r7, #68]
	cmp	r3, #0
	bne	.L84
	movs	r3, #72
	strh	r3, [r7, #68]	@ movhi
.L84:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldrh	r3, [r7, #68]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #72
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #96]
	lsls	r3, r3, #6
	cmp	r2, r3
	ble	.L85
	ldr	r3, [r7, #44]
	ldrh	r3, [r3, #96]
	lsls	r2, r3, #6
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #12]
	ldrh	r3, [r7, #68]
	mov	r0, r2
	movs	r1, #72
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #40]
	str	r2, [r3, #4]
.L85:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldrh	r3, [r7, #70]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #72
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #40]
	str	r2, [r3, #8]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #40]
	str	r2, [r3, #8]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	strh	r3, [r7, #28]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	ldr	r3, [r7, #48]
	str	r3, [r7, #20]
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #92]	@ zero_extendqisi2
	cmp	r3, #77
	bne	.L86
	movw	r3, #28014
	movt	r3, 24946
	str	r3, [r7, #24]
	movs	r3, #1
	strh	r3, [r7, #28]	@ movhi
.L86:
	ldr	r3, .L98
.LPIC12:
	add	r3, pc
	mov	r2, r3
	add	r3, r7, #20
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L78
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L88
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #48]
	str	r2, [r3, #92]
.L88:
	ldr	r3, [r7, #44]
	ldrb	r2, [r3, #105]	@ zero_extendqisi2
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #104]	@ zero_extendqisi2
	cmp	r2, r3
	bcs	.L89
	movs	r3, #3
	str	r3, [r7, #32]
	b	.L78
.L89:
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #105]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #44]
	ldrb	r3, [r3, #104]	@ zero_extendqisi2
	subs	r3, r2, r3
	adds	r2, r3, #2
	ldr	r3, [r7, #48]
	str	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #116]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcc	.L90
	movs	r3, #3
	str	r3, [r7, #32]
	b	.L78
.L90:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #116]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #32
	ldr	r0, [r7, #60]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3, #168]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L91
	b	.L78
.L91:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #44]
	ldr	r1, [r3, #160]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #116]
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	memcpy(PLT)
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r4, [r7, #36]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #168]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	ldr	r2, [r7, #44]
	ldr	r2, [r2, #168]
	str	r2, [sp]
	add	r2, r7, #32
	str	r2, [sp, #4]
	ldr	r0, [r7, #60]
	movs	r1, #1
	mov	r2, r4
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3, #168]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L92
	b	.L78
.L92:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #168]
	ldr	r3, [r7, #48]
	str	r2, [r3, #20]
	ldr	r3, [r7, #48]
	ldr	r2, .L98+4
.LPIC13:
	add	r2, pc
	str	r2, [r3, #24]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L93
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L94
	ldr	r3, [r7, #48]
	ldr	r2, .L98+8
.LPIC14:
	add	r2, pc
	str	r2, [r3, #24]
	b	.L96
.L94:
	ldr	r3, [r7, #48]
	ldr	r2, .L98+12
.LPIC15:
	add	r2, pc
	str	r2, [r3, #24]
	b	.L73
.L93:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r7, #48]
	ldr	r2, .L98+16
.LPIC16:
	add	r2, pc
	str	r2, [r3, #24]
	b	.L73
.L96:
	b	.L73
.L78:
	ldr	r0, [r7, #8]
	bl	FNT_Face_Done(PLT)
.L73:
	ldr	r3, [r7, #32]
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L99:
	.align	2
.L98:
	.word	fnt_cmap_class_rec-(.LPIC12+4)
	.word	.LC0-(.LPIC13+4)
	.word	.LC1-(.LPIC14+4)
	.word	.LC2-(.LPIC15+4)
	.word	.LC3-(.LPIC16+4)
	.size	FNT_Face_Init, .-FNT_Face_Init
	.section	.text.FNT_Size_Select,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FNT_Size_Select, %function
FNT_Size_Select:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	adds	r3, r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #0
	bl	FT_Select_Metrics(PLT)
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #76]
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #76]
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #92]
	subs	r3, r2, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #98]
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FNT_Size_Select, .-FNT_Size_Select
	.section	.text.FNT_Size_Request,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FNT_Size_Request, %function
FNT_Size_Request:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #132]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	str	r3, [r7, #16]
	movs	r3, #23
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L103
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ldr	r2, [r7]
	ldr	r2, [r2, #16]
	mul	r3, r2, r3
	add	r2, r3, #36
	movw	r3, #36409
	movt	r3, 14563
	smull	r1, r3, r3, r2
	asrs	r1, r3, #4
	asrs	r3, r2, #31
	subs	r3, r1, r3
	b	.L104
.L103:
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
.L104:
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	asrs	r3, r3, #6
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L106
	cmp	r3, #1
	beq	.L107
	b	.L113
.L106:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	adds	r3, r3, #32
	asrs	r2, r3, #6
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L108
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L109
.L108:
	b	.L109
.L107:
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #92]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L110
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L109
.L110:
	b	.L109
.L113:
	movs	r3, #7
	str	r3, [r7, #28]
	nop
.L109:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [r7, #28]
	b	.L112
.L111:
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	FNT_Size_Select(PLT)
	mov	r3, r0
.L112:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FNT_Size_Request, .-FNT_Size_Request
	.section	.text.FNT_Load_Glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FNT_Load_Glyph, %function
FNT_Load_Glyph:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	adds	r3, r3, #76
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L115
	movs	r3, #35
	str	r3, [r7, #20]
	b	.L116
.L115:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #132]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L118
.L117:
	movs	r3, #6
	str	r3, [r7, #20]
	b	.L116
.L118:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L119
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	b	.L120
.L119:
	ldr	r3, [r7, #40]
	ldrb	r3, [r3, #106]	@ zero_extendqisi2
	str	r3, [r7, #4]
.L120:
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #4]
	cmp	r3, #768
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #39]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L121
	movs	r3, #6
	b	.L122
.L121:
	movs	r3, #4
.L122:
	str	r3, [r7, #32]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L123
	movs	r3, #148
	b	.L124
.L123:
	movs	r3, #118
.L124:
	ldr	r2, [r7, #32]
	ldr	r1, [r7, #4]
	mul	r2, r1, r2
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L125
	movs	r3, #4
	b	.L126
.L125:
	movs	r3, #2
.L126:
	subs	r3, r2, r3
	subs	r2, r3, #2
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bhi	.L127
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L116
.L127:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #4]
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L128
	ldr	r3, [r7, #68]
	adds	r3, r3, #4
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #64]
	b	.L129
.L128:
	ldr	r3, [r7, #68]
	adds	r3, r3, #2
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #68]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #64]
.L129:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bhi	.L130
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L116
.L130:
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #28]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	str	r3, [r7, #60]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #96]
	mov	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #44]
	movs	r2, #1
	strb	r2, [r3, #18]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r2, [r7, #60]
	mul	r2, r2, r3
	ldr	r3, [r7, #64]
	add	r2, r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L131
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L116
.L131:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #60]
	movs	r1, #0
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #28]
	mov	r1, r2
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L132
	b	.L116
.L132:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #12]
	str	r3, [r7, #56]
	b	.L133
.L136:
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #56]
	str	r3, [r7, #52]
	b	.L134
.L135:
	ldr	r3, [r7, #68]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #52]
	strb	r2, [r3]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #52]
.L134:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L135
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L133:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L136
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #156]
	movs	r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #100]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3, #80]
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #104]
	ldr	r2, [r7, #12]
	movw	r3, #29811
	movt	r3, 25193
	str	r3, [r2, #72]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	lsls	r3, r3, #6
	mov	r0, r2
	mov	r1, r3
	bl	ft_synthesize_vertical_metrics(PLT)
.L116:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FNT_Load_Glyph, .-FNT_Load_Glyph
	.section	.text.winfnt_get_header,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	winfnt_get_header, %function
winfnt_get_header:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #132]
	str	r3, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	mov	r1, r2
	adds	r2, r3, #4
	movs	r3, #156
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	winfnt_get_header, .-winfnt_get_header
	.section	.data.rel.ro.local.winfnt_service_rec,"aw",%progbits
	.align	2
	.type	winfnt_service_rec, %object
	.size	winfnt_service_rec, 4
winfnt_service_rec:
	.word	winfnt_get_header
	.section	.rodata
	.align	2
.LC4:
	.ascii	"font-format\000"
	.align	2
.LC5:
	.ascii	"Windows FNT\000"
	.align	2
.LC6:
	.ascii	"winfonts\000"
	.section	.data.rel.ro.local.winfnt_services,"aw",%progbits
	.align	2
	.type	winfnt_services, %object
	.size	winfnt_services, 24
winfnt_services:
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	winfnt_service_rec
	.word	0
	.word	0
	.section	.text.winfnt_get_service,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	winfnt_get_service, %function
winfnt_get_service:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L142
.LPIC17:
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
.L143:
	.align	2
.L142:
	.word	winfnt_services-(.LPIC17+4)
	.size	winfnt_get_service, .-winfnt_get_service
	.global	winfnt_driver_class
	.section	.data.rel.ro.local.winfnt_driver_class,"aw",%progbits
	.align	2
	.type	winfnt_driver_class, %object
	.size	winfnt_driver_class, 96
winfnt_driver_class:
	.word	513
	.word	28
	.word	.LC6
	.word	65536
	.word	131072
	.word	0
	.word	0
	.word	0
	.word	winfnt_get_service
	.word	152
	.word	44
	.word	160
	.word	FNT_Face_Init
	.word	FNT_Face_Done
	.word	0
	.word	0
	.word	0
	.word	0
	.word	FNT_Load_Glyph
	.word	0
	.word	0
	.word	0
	.word	FNT_Size_Request
	.word	FNT_Size_Select
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
