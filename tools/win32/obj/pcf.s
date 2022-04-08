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
	.file	"pcf.c"
	.section	.text.BitOrderInvert,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BitOrderInvert, %function
BitOrderInvert:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	b	.L2
.L3:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #1
	and	r2, r3, #85
	ldr	r3, [r7, #12]
	lsls	r3, r3, #1
	and	r3, r3, #170
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #2
	and	r2, r3, #51
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	and	r3, r3, #204
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #4
	and	r2, r3, #15
	ldr	r3, [r7, #12]
	lsls	r3, r3, #4
	uxtb	r3, r3
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L2:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	BitOrderInvert, .-BitOrderInvert
	.section	.text.TwoByteSwap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	TwoByteSwap, %function
TwoByteSwap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	b	.L5
.L6:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r2, [r7, #15]
	strb	r2, [r3]
	ldr	r3, [r7]
	subs	r3, r3, #2
	str	r3, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	str	r3, [r7, #4]
.L5:
	ldr	r3, [r7]
	cmp	r3, #1
	bhi	.L6
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	TwoByteSwap, .-TwoByteSwap
	.section	.text.FourByteSwap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FourByteSwap, %function
FourByteSwap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	b	.L8
.L9:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r2, [r7, #15]
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #1]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldr	r2, [r7, #4]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r2, [r7, #15]
	strb	r2, [r3]
	ldr	r3, [r7]
	subs	r3, r3, #4
	str	r3, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	str	r3, [r7, #4]
.L8:
	ldr	r3, [r7]
	cmp	r3, #3
	bhi	.L9
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FourByteSwap, .-FourByteSwap
	.section	.rodata.pcf_toc_header,"a",%progbits
	.align	2
	.type	pcf_toc_header, %object
	.size	pcf_toc_header, 16
pcf_toc_header:
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
	.section	.rodata.pcf_table_header,"a",%progbits
	.align	2
	.type	pcf_table_header, %object
	.size	pcf_table_header, 24
pcf_table_header:
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
	.section	.text.pcf_read_TOC,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_read_TOC, %function
pcf_read_TOC:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	adds	r3, r3, #184
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r3, [r3, #100]
	str	r3, [r7, #32]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L11
	ldr	r0, [r7, #4]
	ldr	r3, .L39
.LPIC0:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L12
.L11:
	movs	r3, #1
	b	.L38
.L12:
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	movw	r3, #26113
	movt	r3, 28771
	cmp	r2, r3
	bne	.L14
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L15
.L14:
	movs	r3, #3
	b	.L38
.L15:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #15
	bhi	.L16
	movs	r3, #3
	b	.L38
.L16:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #4
	cmp	r2, r3
	bls	.L17
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsrs	r2, r3, #4
	ldr	r3, [r7, #36]
	str	r2, [r3, #4]
.L17:
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #24
	str	r2, [sp, #4]
	ldr	r0, [r7, #32]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #192]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L18
	movs	r3, #64
	b	.L38
.L18:
	ldr	r3, [r7]
	ldr	r3, [r3, #192]
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L19
.L22:
	ldr	r0, [r7, #4]
	ldr	r3, .L39+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #52]
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L20
	b	.L21
.L20:
	ldr	r3, [r7, #52]
	adds	r3, r3, #16
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L19:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L22
	ldr	r3, [r7]
	ldr	r3, [r3, #192]
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L23
.L31:
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L24
.L28:
	ldr	r3, [r7, #44]
	lsls	r3, r3, #4
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	lsls	r3, r3, #4
	ldr	r1, [r7, #52]
	add	r3, r3, r1
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bls	.L25
	ldr	r3, [r7, #44]
	lsls	r3, r3, #4
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	add	r4, r7, #8
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #44]
	lsls	r3, r3, #4
	ldr	r2, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	lsls	r3, r3, #4
	ldr	r1, [r7, #52]
	add	r3, r3, r1
	mov	r4, r2
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	lsls	r3, r3, #4
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	mov	r4, r3
	add	r3, r7, #8
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	movs	r3, #1
	str	r3, [r7, #40]
.L25:
	ldr	r3, [r7, #44]
	lsls	r3, r3, #4
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	lsls	r3, r3, #4
	ldr	r1, [r7, #52]
	add	r3, r3, r1
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bhi	.L26
	ldr	r3, [r7, #44]
	lsls	r3, r3, #4
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	lsls	r3, r3, #4
	ldr	r1, [r7, #52]
	add	r3, r3, r1
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #4
	ldr	r0, [r7, #52]
	add	r3, r3, r0
	ldr	r3, [r3, #8]
	subs	r3, r1, r3
	cmp	r2, r3
	bls	.L27
.L26:
	movs	r3, #9
	str	r3, [r7, #24]
	b	.L21
.L27:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L24:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	subs	r2, r3, #1
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bhi	.L28
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L29
	b	.L30
.L29:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L23:
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L31
.L30:
	ldr	r3, [r7]
	ldr	r3, [r3, #192]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L32
.L35:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L33
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldr	r1, [r7, #28]
	subs	r3, r1, r3
	cmp	r2, r3
	bls	.L34
.L33:
	movs	r3, #8
	str	r3, [r7, #24]
	b	.L21
.L34:
	ldr	r3, [r7, #52]
	adds	r3, r3, #16
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L32:
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L35
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L36
	movs	r3, #8
	str	r3, [r7, #24]
	b	.L21
.L36:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	ldr	r1, [r7, #28]
	subs	r3, r1, r3
	cmp	r2, r3
	bls	.L37
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #28]
	subs	r2, r2, r3
	ldr	r3, [r7, #52]
	str	r2, [r3, #8]
.L37:
	movs	r3, #0
	b	.L38
.L21:
	ldr	r3, [r7]
	ldr	r3, [r3, #192]
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #192]
	ldr	r3, [r7, #24]
.L38:
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L40:
	.align	2
.L39:
	.word	pcf_toc_header-(.LPIC0+4)
	.word	pcf_table_header-(.LPIC1+4)
	.size	pcf_read_TOC, .-pcf_read_TOC
	.section	.rodata.pcf_metric_header,"a",%progbits
	.align	2
	.type	pcf_metric_header, %object
	.size	pcf_metric_header, 32
pcf_metric_header:
	.byte	4
	.byte	0
	.short	12
	.byte	15
	.byte	2
	.short	0
	.byte	15
	.byte	2
	.short	2
	.byte	15
	.byte	2
	.short	4
	.byte	15
	.byte	2
	.short	6
	.byte	15
	.byte	2
	.short	8
	.byte	15
	.byte	2
	.short	10
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.pcf_metric_msb_header,"a",%progbits
	.align	2
	.type	pcf_metric_msb_header, %object
	.size	pcf_metric_msb_header, 32
pcf_metric_msb_header:
	.byte	4
	.byte	0
	.short	12
	.byte	13
	.byte	2
	.short	0
	.byte	13
	.byte	2
	.short	2
	.byte	13
	.byte	2
	.short	4
	.byte	13
	.byte	2
	.short	6
	.byte	13
	.byte	2
	.short	8
	.byte	13
	.byte	2
	.short	10
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.pcf_compressed_metric_header,"a",%progbits
	.align	2
	.type	pcf_compressed_metric_header, %object
	.size	pcf_compressed_metric_header, 28
pcf_compressed_metric_header:
	.byte	4
	.byte	0
	.short	5
	.byte	8
	.byte	1
	.short	0
	.byte	8
	.byte	1
	.short	1
	.byte	8
	.byte	1
	.short	2
	.byte	8
	.byte	1
	.short	3
	.byte	8
	.byte	1
	.short	4
	.byte	0
	.byte	0
	.short	0
	.section	.text.pcf_get_metric,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_get_metric, %function
pcf_get_metric:
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
	ldr	r3, [r7, #8]
	bic	r3, r3, #255
	cmp	r3, #0
	bne	.L42
	ldr	r3, [r7, #8]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L43
	ldr	r3, .L48
.LPIC2:
	add	r3, pc
	b	.L44
.L43:
	ldr	r3, .L48+4
.LPIC3:
	add	r3, pc
.L44:
	str	r3, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #4]
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #28]
	b	.L45
.L42:
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r2, .L48+8
.LPIC4:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L45
	ldrb	r3, [r7, #16]	@ zero_extendqisi2
	subs	r3, r3, #128
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldrb	r3, [r7, #17]	@ zero_extendqisi2
	subs	r3, r3, #128
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #2]	@ movhi
	ldrb	r3, [r7, #18]	@ zero_extendqisi2
	subs	r3, r3, #128
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	subs	r3, r3, #128
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #6]	@ movhi
	ldrb	r3, [r7, #20]	@ zero_extendqisi2
	subs	r3, r3, #128
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3, #8]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #10]	@ movhi
.L45:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L49:
	.align	2
.L48:
	.word	pcf_metric_msb_header-(.LPIC2+4)
	.word	pcf_metric_header-(.LPIC3+4)
	.word	pcf_compressed_metric_header-(.LPIC4+4)
	.size	pcf_get_metric, .-pcf_get_metric
	.section	.text.pcf_seek_to_table_type,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_seek_to_table_type, %function
pcf_seek_to_table_type:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #3
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L51
.L57:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L52
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bls	.L53
	movs	r3, #83
	str	r3, [r7, #20]
	b	.L54
.L53:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_Skip(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L55
	movs	r3, #83
	str	r3, [r7, #20]
	b	.L54
.L55:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #4
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	str	r2, [r3]
	movs	r3, #0
	b	.L56
.L52:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L51:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L57
.L54:
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #20]
.L56:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pcf_seek_to_table_type, .-pcf_seek_to_table_type
	.section	.text.pcf_has_table_type,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_has_table_type, %function
pcf_has_table_type:
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
	b	.L59
.L62:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #4
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L60
	movs	r3, #1
	b	.L61
.L60:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L59:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L62
	movs	r3, #0
.L61:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pcf_has_table_type, .-pcf_has_table_type
	.section	.rodata.pcf_property_header,"a",%progbits
	.align	2
	.type	pcf_property_header, %object
	.size	pcf_property_header, 20
pcf_property_header:
	.byte	4
	.byte	0
	.short	9
	.byte	19
	.byte	4
	.short	0
	.byte	8
	.byte	1
	.short	4
	.byte	19
	.byte	4
	.short	8
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.pcf_property_msb_header,"a",%progbits
	.align	2
	.type	pcf_property_msb_header, %object
	.size	pcf_property_msb_header, 20
pcf_property_msb_header:
	.byte	4
	.byte	0
	.short	9
	.byte	17
	.byte	4
	.short	0
	.byte	8
	.byte	1
	.short	4
	.byte	17
	.byte	4
	.short	8
	.byte	0
	.byte	0
	.short	0
	.section	.text.pcf_find_property,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_find_property, %function
pcf_find_property:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #284]
	str	r3, [r7, #12]
	movs	r3, #0
	strb	r3, [r7, #23]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L64
.L67:
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L65
	movs	r3, #1
	strb	r3, [r7, #23]
.L65:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L64:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #280]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L66
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L67
.L66:
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L68
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #12
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	b	.L69
.L68:
	movs	r3, #0
.L69:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pcf_find_property, .-pcf_find_property
	.section	.text.pcf_get_properties,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_get_properties, %function
pcf_get_properties:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #100]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r2, [r3, #192]
	ldr	r3, [r7]
	ldr	r3, [r3, #188]
	add	r1, r7, #16
	str	r1, [sp]
	add	r1, r7, #12
	str	r1, [sp, #4]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #1
	bl	pcf_seek_to_table_type(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L71
	b	.L72
.L71:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULongLE(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L73
	b	.L72
.L73:
	ldr	r3, [r7, #16]
	bic	r3, r3, #255
	cmp	r3, #0
	beq	.L74
	b	.L72
.L74:
	ldr	r3, [r7, #16]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L75
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	str	r0, [r7, #48]
	b	.L76
.L75:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULongLE(PLT)
	str	r0, [r7, #48]
.L76:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L77
	b	.L72
.L77:
	ldr	r2, [r7, #12]
	movw	r3, #36409
	movt	r3, 14563
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #1
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcs	.L78
	movs	r3, #8
	str	r3, [r7, #8]
	b	.L72
.L78:
	ldr	r2, [r7, #48]
	ldr	r3, [r7]
	str	r2, [r3, #280]
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #12
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L79
	b	.L72
.L79:
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L80
.L83:
	ldr	r3, [r7, #16]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L81
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	ldr	r2, .L103
.LPIC5:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L82
	b	.L72
.L81:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	ldr	r2, .L103+4
.LPIC6:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L82
	b	.L72
.L82:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L80:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L83
	ldr	r3, [r7, #48]
	and	r3, r3, #3
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #48]
	and	r3, r3, #3
	rsb	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L84
	movs	r3, #83
	str	r3, [r7, #8]
	b	.L72
.L84:
	ldr	r3, [r7, #16]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L85
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	str	r0, [r7, #40]
	b	.L86
.L85:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULongLE(PLT)
	str	r0, [r7, #40]
.L86:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L87
	b	.L72
.L87:
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	subs	r2, r1, r3
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L88
	movs	r3, #8
	str	r3, [r7, #8]
	b	.L72
.L88:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L89
	b	.L72
.L89:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #40]
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L90
	b	.L72
.L90:
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #12
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L91
	b	.L72
.L91:
	ldr	r3, [r7]
	ldr	r2, [r7, #32]
	str	r2, [r3, #284]
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L92
.L101:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	blt	.L93
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bls	.L94
.L93:
	movs	r3, #9
	str	r3, [r7, #8]
	b	.L72
.L94:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	adds	r4, r2, r3
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #36]
	add	r2, r2, r3
	add	r3, r7, #8
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L95
	b	.L72
.L95:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	adds	r1, r2, r3
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	strb	r3, [r1, #4]
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L96
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	blt	.L97
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bls	.L98
.L97:
	movs	r3, #9
	str	r3, [r7, #8]
	b	.L72
.L98:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	adds	r4, r2, r3
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #36]
	add	r2, r2, r3
	add	r3, r7, #8
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	mov	r3, r0
	str	r3, [r4, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L99
	b	.L72
.L99:
	b	.L100
.L96:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #32]
	adds	r1, r2, r3
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	ldr	r3, [r3, #8]
	str	r3, [r1, #8]
.L100:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L92:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bcc	.L101
	movs	r3, #0
	str	r3, [r7, #8]
.L72:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #52]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L104:
	.align	2
.L103:
	.word	pcf_property_msb_header-(.LPIC5+4)
	.word	pcf_property_header-(.LPIC6+4)
	.size	pcf_get_properties, .-pcf_get_properties
	.section	.text.pcf_get_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_get_metrics, %function
pcf_get_metrics:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7]
	ldr	r2, [r3, #192]
	ldr	r3, [r7]
	ldr	r3, [r3, #188]
	add	r1, r7, #16
	str	r1, [sp]
	add	r1, r7, #12
	str	r1, [sp, #4]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #4
	bl	pcf_seek_to_table_type(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L106
	ldr	r3, [r7, #20]
	b	.L127
.L106:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULongLE(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L108
	b	.L109
.L108:
	ldr	r3, [r7, #16]
	bic	r3, r3, #255
	cmp	r3, #0
	beq	.L110
	ldr	r3, [r7, #16]
	bic	r3, r3, #255
	cmp	r3, #256
	beq	.L110
	movs	r3, #3
	b	.L127
.L110:
	ldr	r3, [r7, #16]
	bic	r3, r3, #255
	cmp	r3, #0
	bne	.L111
	ldr	r3, [r7, #16]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L112
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	str	r0, [r7, #32]
	b	.L114
.L112:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULongLE(PLT)
	str	r0, [r7, #32]
	b	.L114
.L111:
	ldr	r3, [r7, #16]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L115
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	b	.L114
.L115:
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadUShortLE(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
.L114:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L116
	movs	r3, #3
	b	.L127
.L116:
	ldr	r3, [r7]
	ldr	r2, [r7, #32]
	str	r2, [r3, #288]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L117
	movs	r3, #8
	b	.L127
.L117:
	ldr	r3, [r7, #16]
	bic	r3, r3, #255
	cmp	r3, #0
	bne	.L118
	ldr	r2, [r7, #12]
	movw	r3, #43691
	movt	r3, 43690
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcs	.L119
	movs	r3, #8
	b	.L127
.L118:
	ldr	r2, [r7, #12]
	movw	r3, #52429
	movt	r3, 52428
	umull	r1, r3, r3, r2
	lsrs	r2, r3, #2
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcs	.L119
	movs	r3, #8
	b	.L127
.L119:
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #292]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L120
	movs	r3, #64
	b	.L127
.L120:
	ldr	r3, [r7]
	ldr	r3, [r3, #292]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L121
.L126:
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	pcf_get_metric(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L122
	b	.L123
.L122:
	ldr	r3, [r7, #36]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #36]
	ldrh	r3, [r3]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	blt	.L124
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #6]
	sxth	r2, r3
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #8]
	sxth	r3, r3
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L125
.L124:
	ldr	r3, [r7, #36]
	movs	r2, #0
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #36]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #36]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #36]
	movs	r2, #0
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #36]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
.L125:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	adds	r3, r3, #16
	str	r3, [r7, #36]
.L121:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L126
.L123:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L109
	ldr	r3, [r7]
	ldr	r3, [r3, #292]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #292]
.L109:
	ldr	r3, [r7, #20]
.L127:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pcf_get_metrics, .-pcf_get_metrics
	.section	.text.pcf_get_bitmaps,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_get_bitmaps, %function
pcf_get_bitmaps:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #100]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7]
	ldr	r2, [r3, #192]
	ldr	r3, [r7]
	ldr	r3, [r3, #188]
	add	r1, r7, #12
	str	r1, [sp]
	add	r1, r7, #8
	str	r1, [sp, #4]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #8
	bl	pcf_seek_to_table_type(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L129
	ldr	r3, [r7, #32]
	b	.L151
.L129:
	ldr	r0, [r7, #4]
	movs	r1, #8
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L131
	ldr	r3, [r7, #32]
	b	.L151
.L131:
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULongLE(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L132
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULong(PLT)
	str	r0, [r7, #52]
	b	.L133
.L132:
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULongLE(PLT)
	str	r0, [r7, #52]
.L133:
	ldr	r0, [r7, #4]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #12]
	bic	r3, r3, #255
	cmp	r3, #0
	beq	.L134
	movs	r3, #3
	b	.L151
.L134:
	ldr	r3, [r7]
	ldr	r2, [r3, #288]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	beq	.L135
	movs	r3, #3
	b	.L151
.L135:
	ldr	r3, [r7, #52]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #32
	str	r2, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L136
	ldr	r3, [r7, #32]
	b	.L151
.L136:
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L137
.L140:
	ldr	r3, [r7, #12]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L138
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	adds	r4, r2, r3
	add	r3, r7, #32
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	str	r3, [r4]
	b	.L139
.L138:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	adds	r4, r2, r3
	add	r3, r7, #32
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULongLE(PLT)
	mov	r3, r0
	str	r3, [r4]
.L139:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L137:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L140
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L141
	b	.L142
.L141:
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L143
.L147:
	ldr	r3, [r7, #12]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L144
	add	r3, r7, #32
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	add	r1, r7, #56
	add	r3, r3, r1
	str	r2, [r3, #-40]
	b	.L145
.L144:
	add	r3, r7, #32
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULongLE(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	add	r1, r7, #56
	add	r3, r3, r1
	str	r2, [r3, #-40]
.L145:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L146
	b	.L142
.L146:
	ldr	r3, [r7, #12]
	and	r3, r3, #3
	lsls	r3, r3, #2
	add	r2, r7, #56
	add	r3, r3, r2
	ldr	r3, [r3, #-40]
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L143:
	ldr	r3, [r7, #48]
	cmp	r3, #3
	bls	.L147
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L148
.L150:
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L149
	ldr	r3, [r7, #48]
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L149
	ldr	r3, [r7]
	ldr	r2, [r3, #292]
	ldr	r3, [r7, #48]
	lsls	r3, r3, #4
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #48]
	lsls	r2, r2, #2
	ldr	r0, [r7, #36]
	add	r2, r2, r0
	ldr	r2, [r2]
	add	r2, r2, r1
	str	r2, [r3, #12]
.L149:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L148:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bcc	.L150
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3, #308]
.L142:
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
.L151:
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	pcf_get_bitmaps, .-pcf_get_bitmaps
	.section	.text.pcf_get_encodings,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_get_encodings, %function
pcf_get_encodings:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #100]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r2, [r3, #192]
	ldr	r3, [r7]
	ldr	r3, [r3, #188]
	add	r1, r7, #12
	str	r1, [sp]
	add	r1, r7, #8
	str	r1, [sp, #4]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #32
	bl	pcf_seek_to_table_type(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L153
	ldr	r3, [r7, #16]
	b	.L172
.L153:
	ldr	r0, [r7, #4]
	movs	r1, #14
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L155
	ldr	r3, [r7, #16]
	b	.L172
.L155:
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetULongLE(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L156
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #60]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #56]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #52]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #48]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #304]	@ movhi
	b	.L157
.L156:
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #60]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #56]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #52]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #48]
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #304]	@ movhi
.L157:
	ldr	r0, [r7, #4]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r3, [r7, #12]
	bic	r3, r3, #255
	cmp	r3, #0
	beq	.L158
	movs	r3, #3
	b	.L172
.L158:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	blt	.L159
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bgt	.L159
	ldr	r3, [r7, #56]
	cmp	r3, #255
	bgt	.L159
	ldr	r3, [r7, #52]
	cmp	r3, #0
	blt	.L159
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bgt	.L159
	ldr	r3, [r7, #48]
	cmp	r3, #255
	ble	.L160
.L159:
	movs	r3, #8
	b	.L172
.L160:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	adds	r3, r3, #1
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #52]
	subs	r2, r1, r2
	adds	r2, r2, #1
	mul	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L161
	movs	r3, #64
	b	.L172
.L161:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L162
	b	.L163
.L162:
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #52]
	str	r3, [r7, #40]
	b	.L164
.L170:
	ldr	r3, [r7, #60]
	str	r3, [r7, #36]
	b	.L165
.L169:
	ldr	r3, [r7, #12]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L166
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShort(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #44]
	b	.L167
.L166:
	ldr	r0, [r7, #4]
	bl	FT_Stream_GetUShortLE(PLT)
	mov	r3, r0
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #44]
.L167:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	blt	.L168
	ldr	r3, [r7, #32]
	lsls	r3, r3, #3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #40]
	lsls	r1, r2, #8
	ldr	r2, [r7, #36]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #44]
	uxth	r2, r2
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L168:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L165:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	ble	.L169
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L164:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	ble	.L170
	ldr	r0, [r7, #4]
	bl	FT_Stream_ExitFrame(PLT)
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #32]
	ldr	r1, [r7, #28]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #24]
	movs	r1, #8
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L171
	b	.L163
.L171:
	ldr	r3, [r7]
	ldr	r2, [r7, #32]
	str	r2, [r3, #296]
	ldr	r3, [r7]
	ldr	r2, [r7, #28]
	str	r2, [r3, #300]
	ldr	r3, [r7, #16]
	b	.L172
.L163:
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
.L172:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pcf_get_encodings, .-pcf_get_encodings
	.section	.rodata.pcf_accel_header,"a",%progbits
	.align	2
	.type	pcf_accel_header, %object
	.size	pcf_accel_header, 52
pcf_accel_header:
	.byte	4
	.byte	0
	.short	20
	.byte	8
	.byte	1
	.short	0
	.byte	8
	.byte	1
	.short	1
	.byte	8
	.byte	1
	.short	2
	.byte	8
	.byte	1
	.short	3
	.byte	8
	.byte	1
	.short	4
	.byte	8
	.byte	1
	.short	5
	.byte	8
	.byte	1
	.short	6
	.byte	25
	.byte	1
	.short	0
	.byte	19
	.byte	4
	.short	8
	.byte	19
	.byte	4
	.short	12
	.byte	19
	.byte	4
	.short	16
	.byte	0
	.byte	0
	.short	0
	.section	.rodata.pcf_accel_msb_header,"a",%progbits
	.align	2
	.type	pcf_accel_msb_header, %object
	.size	pcf_accel_msb_header, 52
pcf_accel_msb_header:
	.byte	4
	.byte	0
	.short	20
	.byte	8
	.byte	1
	.short	0
	.byte	8
	.byte	1
	.short	1
	.byte	8
	.byte	1
	.short	2
	.byte	8
	.byte	1
	.short	3
	.byte	8
	.byte	1
	.short	4
	.byte	8
	.byte	1
	.short	5
	.byte	8
	.byte	1
	.short	6
	.byte	25
	.byte	1
	.short	0
	.byte	17
	.byte	4
	.short	8
	.byte	17
	.byte	4
	.short	12
	.byte	17
	.byte	4
	.short	16
	.byte	0
	.byte	0
	.short	0
	.section	.text.pcf_get_accel,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_get_accel, %function
pcf_get_accel:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #196
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #192]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #188]
	add	r1, r7, #24
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	pcf_seek_to_table_type(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L174
	b	.L175
.L174:
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadULongLE(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L176
	b	.L175
.L176:
	ldr	r3, [r7, #24]
	bic	r3, r3, #255
	cmp	r3, #0
	beq	.L177
	ldr	r3, [r7, #24]
	bic	r3, r3, #255
	cmp	r3, #256
	beq	.L177
	b	.L175
.L177:
	ldr	r3, [r7, #24]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L178
	ldr	r0, [r7, #12]
	ldr	r3, .L185
.LPIC7:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #28]
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L179
	b	.L175
.L178:
	ldr	r0, [r7, #12]
	ldr	r3, .L185+4
.LPIC8:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #28]
	bl	FT_Stream_ReadFields(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L179
	b	.L175
.L179:
	ldr	r3, [r7, #24]
	uxtb	r2, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #20
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	pcf_get_metric(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L180
	b	.L175
.L180:
	ldr	r3, [r7, #24]
	uxtb	r2, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #36
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	pcf_get_metric(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L181
	b	.L175
.L181:
	ldr	r3, [r7, #24]
	bic	r3, r3, #255
	cmp	r3, #256
	bne	.L182
	ldr	r3, [r7, #24]
	uxtb	r2, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #52
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	pcf_get_metric(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L183
	b	.L175
.L183:
	ldr	r3, [r7, #24]
	uxtb	r2, r3
	ldr	r3, [r7, #28]
	adds	r3, r3, #68
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	pcf_get_metric(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L175
	b	.L175
.L182:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #28]
	add	r4, r2, #52
	adds	r3, r3, #20
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #28]
	add	r4, r2, #68
	adds	r3, r3, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
.L175:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L186:
	.align	2
.L185:
	.word	pcf_accel_msb_header-(.LPIC7+4)
	.word	pcf_accel_header-(.LPIC8+4)
	.size	pcf_get_accel, .-pcf_get_accel
	.section	.rodata
	.align	2
.LC0:
	.ascii	"SLANT\000"
	.align	2
.LC1:
	.ascii	"Oblique\000"
	.align	2
.LC2:
	.ascii	"Italic\000"
	.align	2
.LC3:
	.ascii	"WEIGHT_NAME\000"
	.align	2
.LC4:
	.ascii	"Bold\000"
	.align	2
.LC5:
	.ascii	"SETWIDTH_NAME\000"
	.align	2
.LC6:
	.ascii	"ADD_STYLE_NAME\000"
	.align	2
.LC7:
	.ascii	"Regular\000"
	.section	.text.pcf_interpret_style,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_interpret_style, %function
pcf_interpret_style:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #100]
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	ldr	r3, .L214
.LPIC9:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L188
	ldr	r3, [r7, #52]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L188
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #79
	beq	.L189
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #111
	beq	.L189
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #73
	beq	.L189
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #105
	bne	.L188
.L189:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	orr	r2, r3, #1
	ldr	r3, [r7, #60]
	str	r2, [r3, #12]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #79
	beq	.L190
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #111
	bne	.L191
.L190:
	ldr	r3, .L214+4
.LPIC10:
	add	r3, pc
	b	.L192
.L191:
	ldr	r3, .L214+8
.LPIC11:
	add	r3, pc
.L192:
	str	r3, [r7, #36]
.L188:
	ldr	r0, [r7, #4]
	ldr	r3, .L214+12
.LPIC12:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L193
	ldr	r3, [r7, #52]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L193
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #66
	beq	.L194
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L193
.L194:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #12]
	orr	r2, r3, #2
	ldr	r3, [r7, #60]
	str	r2, [r3, #12]
	ldr	r3, .L214+16
.LPIC13:
	add	r3, pc
	str	r3, [r7, #32]
.L193:
	ldr	r0, [r7, #4]
	ldr	r3, .L214+20
.LPIC14:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L195
	ldr	r3, [r7, #52]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L195
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L195
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #78
	beq	.L195
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #110
	beq	.L195
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
.L195:
	ldr	r0, [r7, #4]
	ldr	r3, .L214+24
.LPIC15:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L196
	ldr	r3, [r7, #52]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L196
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L196
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #78
	beq	.L196
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #110
	beq	.L196
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
.L196:
	movs	r3, #0
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L197
.L199:
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r1, r7, #80
	add	r3, r3, r1
	movs	r2, #0
	str	r2, [r3, #-68]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r2, r7, #80
	add	r3, r3, r2
	ldr	r3, [r3, #-52]
	cmp	r3, #0
	beq	.L198
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r1, r7, #80
	add	r3, r3, r1
	ldr	r3, [r3, #-52]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r2, r0
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r1, r7, #80
	add	r3, r3, r1
	str	r2, [r3, #-68]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r2, r7, #80
	add	r3, r3, r2
	ldr	r2, [r3, #-68]
	ldr	r3, [r7, #72]
	add	r3, r3, r2
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L198:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L197:
	ldr	r3, [r7, #76]
	cmp	r3, #3
	bls	.L199
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L200
	ldr	r3, .L214+28
.LPIC16:
	add	r3, pc
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	mov	r0, r3
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L200:
	ldr	r2, [r7, #72]
	add	r3, r7, #44
	ldr	r0, [r7, #56]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #60]
	str	r2, [r3, #24]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L201
	ldr	r3, [r7, #44]
	b	.L213
.L201:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #24]
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L203
.L212:
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r1, r7, #80
	add	r3, r3, r1
	ldr	r3, [r3, #-52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	add	r2, r7, #80
	add	r3, r3, r2
	ldr	r3, [r3, #-68]
	str	r3, [r7, #72]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L204
	b	.L205
.L204:
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	beq	.L206
	ldr	r3, [r7, #68]
	adds	r2, r3, #1
	str	r2, [r7, #68]
	movs	r2, #32
	strb	r2, [r3]
.L206:
	ldr	r0, [r7, #68]
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #72]
	bl	memcpy(PLT)
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L207
	ldr	r3, [r7, #76]
	cmp	r3, #3
	bne	.L208
.L207:
	movs	r3, #0
	str	r3, [r7, #64]
	b	.L209
.L211:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	bne	.L210
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	movs	r2, #45
	strb	r2, [r3]
.L210:
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L209:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bcc	.L211
.L208:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #68]
.L205:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L203:
	ldr	r3, [r7, #76]
	cmp	r3, #3
	bls	.L212
	ldr	r3, [r7, #68]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #44]
.L213:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L215:
	.align	2
.L214:
	.word	.LC0-(.LPIC9+4)
	.word	.LC1-(.LPIC10+4)
	.word	.LC2-(.LPIC11+4)
	.word	.LC3-(.LPIC12+4)
	.word	.LC4-(.LPIC13+4)
	.word	.LC5-(.LPIC14+4)
	.word	.LC6-(.LPIC15+4)
	.word	.LC7-(.LPIC16+4)
	.size	pcf_interpret_style, .-pcf_interpret_style
	.section	.rodata
	.align	2
.LC8:
	.ascii	"FAMILY_NAME\000"
	.align	2
.LC9:
	.ascii	"AVERAGE_WIDTH\000"
	.align	2
.LC10:
	.ascii	"POINT_SIZE\000"
	.align	2
.LC11:
	.ascii	"PIXEL_SIZE\000"
	.align	2
.LC12:
	.ascii	"RESOLUTION_X\000"
	.align	2
.LC13:
	.ascii	"RESOLUTION_Y\000"
	.align	2
.LC14:
	.ascii	"CHARSET_REGISTRY\000"
	.align	2
.LC15:
	.ascii	"CHARSET_ENCODING\000"
	.section	.text.pcf_load_font,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_load_font, %function
pcf_load_font:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #100]
	str	r3, [r7, #44]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	pcf_read_TOC(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L217
	b	.L218
.L217:
	ldr	r3, [r7, #48]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L219
	movs	r3, #0
	b	.L245
.L219:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	pcf_get_properties(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L221
	b	.L218
.L221:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #192]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #188]
	mov	r0, r2
	mov	r1, r3
	mov	r2, #256
	bl	pcf_has_table_type(PLT)
	mov	r3, r0
	strb	r3, [r7, #43]
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L222
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #2
	bl	pcf_get_accel(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L222
	b	.L218
.L222:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	pcf_get_metrics(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L223
	b	.L218
.L223:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	pcf_get_bitmaps(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L224
	b	.L218
.L224:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	pcf_get_encodings(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L225
	b	.L218
.L225:
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L226
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, #256
	bl	pcf_get_accel(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L226
	b	.L218
.L226:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	orr	r2, r3, #146
	ldr	r3, [r7, #48]
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #199]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L227
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	orr	r2, r3, #4
	ldr	r3, [r7, #48]
	str	r2, [r3, #8]
.L227:
	ldr	r0, [r7, #8]
	bl	pcf_interpret_style(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L228
	b	.L218
.L228:
	ldr	r0, [r7, #8]
	ldr	r3, .L246
.LPIC17:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L229
	ldr	r3, [r7, #36]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L229
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #8]
	add	r3, r7, #20
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L230
	b	.L218
.L230:
	b	.L231
.L229:
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [r3, #20]
.L231:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #288]
	adds	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #48]
	str	r2, [r3, #16]
	ldr	r3, [r7, #48]
	movs	r2, #1
	str	r2, [r3, #28]
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #20
	str	r3, [sp, #4]
	ldr	r0, [r7, #44]
	movs	r1, #16
	movs	r2, #0
	movs	r3, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #32]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L232
	b	.L218
.L232:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	str	r3, [r7, #32]
	movs	r3, #0
	strh	r3, [r7, #54]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #52]	@ movhi
	ldr	r0, [r7, #32]
	movs	r1, #0
	movs	r2, #16
	bl	memset(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #204]
	uxth	r2, r3
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #208]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	sxth	r3, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	uxth	r2, r3
	ldr	r3, [r7, #32]
	strh	r2, [r3]	@ movhi
	ldr	r0, [r7, #8]
	ldr	r3, .L246+4
.LPIC18:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L233
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	adds	r3, r3, #5
	uxth	r3, r3
	uxth	r3, r3
	sxth	r3, r3
	cmn	r3, #9
	bge	.L234
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	adds	r3, r3, #5
	uxth	r3, r3
	uxth	r3, r3
	sxth	r2, r3
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	uxth	r3, r3
	uxth	r3, r3
	negs	r3, r3
	uxth	r3, r3
	uxth	r3, r3
	b	.L235
.L234:
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	adds	r3, r3, #5
	uxth	r3, r3
	uxth	r3, r3
	sxth	r2, r3
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	uxth	r3, r3
.L235:
	ldr	r2, [r7, #32]
	strh	r3, [r2, #2]	@ movhi
	b	.L236
.L233:
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	sxth	r3, r3
	mov	r0, r3
	movs	r1, #2
	movs	r2, #3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [r7, #32]
	strh	r2, [r3, #2]	@ movhi
.L236:
	ldr	r0, [r7, #8]
	ldr	r3, .L246+8
.LPIC19:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L237
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	mov	r0, r3
	mov	r1, #460800
	movw	r2, #6734
	movt	r2, 1
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	str	r2, [r3, #4]
.L237:
	ldr	r0, [r7, #8]
	ldr	r3, .L246+12
.LPIC20:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L238
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	sxth	r3, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	lsls	r2, r3, #6
	ldr	r3, [r7, #32]
	str	r2, [r3, #12]
.L238:
	ldr	r0, [r7, #8]
	ldr	r3, .L246+16
.LPIC21:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L239
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	sxth	r3, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	strh	r3, [r7, #54]	@ movhi
.L239:
	ldr	r0, [r7, #8]
	ldr	r3, .L246+20
.LPIC22:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L240
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	sxth	r3, r3
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	strh	r3, [r7, #52]	@ movhi
.L240:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L241
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	str	r2, [r3, #12]
	ldrsh	r3, [r7, #52]
	cmp	r3, #0
	beq	.L241
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #12]
	ldrsh	r3, [r7, #52]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #72
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	str	r2, [r3, #12]
.L241:
	ldrsh	r3, [r7, #54]
	cmp	r3, #0
	beq	.L242
	ldrsh	r3, [r7, #52]
	cmp	r3, #0
	beq	.L242
	ldr	r3, [r7, #32]
	ldr	r1, [r3, #12]
	ldrsh	r2, [r7, #54]
	ldrsh	r3, [r7, #52]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	str	r2, [r3, #8]
	b	.L243
.L242:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #32]
	str	r2, [r3, #8]
.L243:
	ldr	r0, [r7, #8]
	ldr	r3, .L246+24
.LPIC23:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #28]
	ldr	r0, [r7, #8]
	ldr	r3, .L246+28
.LPIC24:
	add	r3, pc
	mov	r1, r3
	bl	pcf_find_property(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L218
	ldr	r3, [r7, #28]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L218
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L218
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L218
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #8]
	add	r3, r7, #20
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3, #176]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L218
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	add	r3, r7, #20
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_strdup(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3, #180]
.L218:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L244
	movs	r3, #3
	str	r3, [r7, #20]
.L244:
	ldr	r3, [r7, #20]
.L245:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L247:
	.align	2
.L246:
	.word	.LC8-(.LPIC17+4)
	.word	.LC9-(.LPIC18+4)
	.word	.LC10-(.LPIC19+4)
	.word	.LC11-(.LPIC20+4)
	.word	.LC12-(.LPIC21+4)
	.word	.LC13-(.LPIC22+4)
	.word	.LC14-(.LPIC23+4)
	.word	.LC15-(.LPIC24+4)
	.size	pcf_load_font, .-pcf_load_font
	.section	.text.pcf_cmap_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_cmap_init, %function
pcf_cmap_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #296]
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #300]
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pcf_cmap_init, .-pcf_cmap_init
	.section	.text.pcf_cmap_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_cmap_done, %function
pcf_cmap_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pcf_cmap_done, .-pcf_cmap_done
	.section	.text.pcf_cmap_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_cmap_char_index, %function
pcf_cmap_char_index:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	str	r3, [r7, #32]
	b	.L252
.L256:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L253
	ldr	r3, [r7, #16]
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldrh	r3, [r3, #4]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	b	.L254
.L253:
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L255
	ldr	r3, [r7, #16]
	str	r3, [r7, #32]
	b	.L252
.L255:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L252:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L256
.L254:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pcf_cmap_char_index, .-pcf_cmap_char_index
	.section	.text.pcf_cmap_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_cmap_char_next, %function
pcf_cmap_char_next:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	str	r3, [r7, #32]
	b	.L259
.L263:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	lsrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L260
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrh	r3, [r3, #4]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L261
.L260:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L262
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
	b	.L259
.L262:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L259:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L263
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L261
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldrh	r3, [r3, #4]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L261:
	ldr	r3, [r7]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pcf_cmap_char_next, .-pcf_cmap_char_next
	.section	.data.rel.ro.local.pcf_cmap_class,"aw",%progbits
	.align	2
	.type	pcf_cmap_class, %object
	.size	pcf_cmap_class, 40
pcf_cmap_class:
	.word	24
	.word	pcf_cmap_init
	.word	pcf_cmap_done
	.word	pcf_cmap_char_index
	.word	pcf_cmap_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.PCF_Face_Done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	PCF_Face_Done, %function
PCF_Face_Done:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L266
	b	.L265
.L266:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #300]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #300]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #292]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #292]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #284]
	cmp	r3, #0
	beq	.L268
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L269
.L271:
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #284]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L270
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L270
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #8]
.L270:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L269:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #280]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L271
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #284]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #284]
.L268:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #192]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #192]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #176]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #176]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #180]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #180]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #16]
	adds	r3, r3, #132
	cmp	r2, r3
	bne	.L265
	ldr	r3, [r7, #16]
	adds	r3, r3, #132
	mov	r0, r3
	bl	FT_Stream_Close(PLT)
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #172]
	ldr	r3, [r7, #4]
	str	r2, [r3, #104]
.L265:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	PCF_Face_Done, .-PCF_Face_Done
	.section	.rodata
	.align	2
.LC16:
	.ascii	"10646\000"
	.align	2
.LC17:
	.ascii	"8859\000"
	.align	2
.LC18:
	.ascii	"1\000"
	.section	.text.PCF_Face_Init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	PCF_Face_Init, %function
PCF_Face_Init:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	str	r3, [r7, #52]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r2, [r7, #4]
	bl	pcf_load_font(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L273
	ldr	r0, [r7, #8]
	bl	PCF_Face_Done(PLT)
	ldr	r3, [r7, #52]
	adds	r3, r3, #132
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	FT_Stream_OpenGzip(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	uxtb	r3, r3
	cmp	r3, #7
	bne	.L274
	b	.L275
.L274:
	ldr	r3, [r7, #48]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L276
	ldr	r3, [r7, #52]
	adds	r3, r3, #132
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	FT_Stream_OpenLZW(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	uxtb	r3, r3
	cmp	r3, #7
	bne	.L277
	b	.L275
.L277:
	ldr	r3, [r7, #44]
	str	r3, [r7, #60]
.L276:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L278
	b	.L275
.L278:
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #12]
	str	r2, [r3, #172]
	ldr	r3, [r7, #52]
	add	r2, r3, #132
	ldr	r3, [r7, #8]
	str	r2, [r3, #104]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #104]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #52]
	ldr	r2, [r7, #4]
	bl	pcf_load_font(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L273
	b	.L275
.L273:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L279
	b	.L280
.L279:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ble	.L281
	ldr	r3, [r7, #4]
	uxth	r3, r3
	cmp	r3, #0
	ble	.L281
	ldr	r0, [r7, #8]
	bl	PCF_Face_Done(PLT)
	movs	r3, #6
	b	.L282
.L281:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #180]
	str	r3, [r7, #40]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #176]
	str	r3, [r7, #36]
	movs	r3, #0
	strb	r3, [r7, #59]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L283
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L283
	ldr	r3, [r7, #40]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #105
	beq	.L284
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #73
	bne	.L283
.L284:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #115
	beq	.L285
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #83
	bne	.L283
.L285:
	ldr	r3, [r7, #32]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #111
	beq	.L286
	ldr	r3, [r7, #32]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #79
	bne	.L283
.L286:
	ldr	r3, [r7, #32]
	adds	r3, r3, #3
	str	r3, [r7, #32]
	ldr	r0, [r7, #32]
	ldr	r3, .L289
.LPIC25:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L287
	ldr	r0, [r7, #32]
	ldr	r3, .L289+4
.LPIC26:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L283
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #176]
	mov	r0, r3
	ldr	r3, .L289+8
.LPIC27:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L283
.L287:
	movs	r3, #1
	strb	r3, [r7, #59]
.L283:
	ldr	r3, [r7, #52]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	strh	r3, [r7, #28]	@ movhi
	movs	r3, #0
	strh	r3, [r7, #30]	@ movhi
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L288
	movw	r3, #26979
	movt	r3, 30062
	str	r3, [r7, #24]
	movs	r3, #3
	strh	r3, [r7, #28]	@ movhi
	movs	r3, #1
	strh	r3, [r7, #30]	@ movhi
.L288:
	add	r3, r7, #20
	ldr	r2, .L289+12
.LPIC28:
	add	r2, pc
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	movs	r3, #0
	bl	FT_CMap_New(PLT)
	str	r0, [r7, #60]
.L280:
	ldr	r3, [r7, #60]
	b	.L282
.L275:
	ldr	r0, [r7, #8]
	bl	PCF_Face_Done(PLT)
	movs	r3, #2
	str	r3, [r7, #60]
	b	.L280
.L282:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L290:
	.align	2
.L289:
	.word	.LC16-(.LPIC25+4)
	.word	.LC17-(.LPIC26+4)
	.word	.LC18-(.LPIC27+4)
	.word	pcf_cmap_class-(.LPIC28+4)
	.size	PCF_Face_Init, .-PCF_Face_Init
	.section	.text.PCF_Size_Select,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	PCF_Size_Select, %function
PCF_Size_Select:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #196
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Select_Metrics(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	mov	r3, r2
	lsls	r3, r3, #26
	subs	r3, r3, r2
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #40]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	PCF_Size_Select, .-PCF_Size_Select
	.section	.text.PCF_Size_Request,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	PCF_Size_Request, %function
PCF_Size_Request:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	movs	r3, #23
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L294
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
	b	.L295
.L294:
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
.L295:
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	adds	r3, r3, #32
	asrs	r3, r3, #6
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L297
	cmp	r3, #1
	beq	.L298
	b	.L304
.L297:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	adds	r3, r3, #32
	asrs	r2, r3, #6
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L299
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L300
.L299:
	b	.L300
.L298:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #204]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #208]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L301
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L300
.L301:
	b	.L300
.L304:
	movs	r3, #7
	str	r3, [r7, #20]
	nop
.L300:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L302
	ldr	r3, [r7, #20]
	b	.L303
.L302:
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	PCF_Size_Select(PLT)
	mov	r3, r0
.L303:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	PCF_Size_Request, .-PCF_Size_Request
	.section	.text.PCF_Glyph_Load,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	PCF_Glyph_Load, %function
PCF_Glyph_Load:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	adds	r3, r3, #76
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L306
	movs	r3, #35
	str	r3, [r7, #36]
	b	.L307
.L306:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bhi	.L308
	movs	r3, #6
	str	r3, [r7, #36]
	b	.L307
.L308:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #104]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L309
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L309:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #292]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #6]
	sxth	r2, r3
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #8]
	sxth	r3, r3
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	sxth	r3, r3
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	movs	r2, #1
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #28]
	movs	r2, #1
	strb	r2, [r3, #18]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #308]
	and	r3, r3, #3
	movs	r2, #1
	lsl	r3, r2, r3
	subs	r3, r3, #1
	cmp	r3, #7
	bhi	.L310
	adr	r1, .L312
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L312:
	.word	.L311+1-.L312
	.word	.L313+1-.L312
	.word	.L310+1-.L312
	.word	.L314+1-.L312
	.word	.L310+1-.L312
	.word	.L310+1-.L312
	.word	.L310+1-.L312
	.word	.L315+1-.L312
.L311:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	mov	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	b	.L316
.L313:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	adds	r3, r3, #15
	lsrs	r3, r3, #4
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	b	.L316
.L314:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	adds	r3, r3, #31
	lsrs	r3, r3, #5
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	b	.L316
.L315:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	adds	r3, r3, #63
	lsrs	r3, r3, #6
	lsls	r3, r3, #3
	mov	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	b	.L316
.L310:
	movs	r3, #3
	b	.L317
.L316:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #28]
	ldr	r2, [r2]
	mul	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #16]
	bl	ft_glyphslot_alloc_bitmap(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L318
	b	.L307
.L318:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L307
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #24]
	mov	r1, r3
	ldr	r2, [r7, #16]
	bl	FT_Stream_Read(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L307
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #308]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L319
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	BitOrderInvert(PLT)
.L319:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #308]
	and	r3, r3, #4
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r2, r3
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #308]
	and	r3, r3, #8
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	eors	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L320
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #308]
	and	r3, r3, #48
	lsrs	r3, r3, #4
	movs	r2, #1
	lsl	r3, r2, r3
	cmp	r3, #2
	beq	.L321
	cmp	r3, #4
	beq	.L322
	cmp	r3, #1
	b	.L320
.L321:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	TwoByteSwap(PLT)
	b	.L320
.L322:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	FourByteSwap(PLT)
	nop
.L320:
	ldr	r2, [r7, #12]
	movw	r3, #29811
	movt	r3, 25193
	str	r3, [r2, #72]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #100]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #6]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #104]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #4]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #6]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #36]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	sxth	r3, r3
	subs	r3, r2, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	lsls	r3, r3, #6
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	ldr	r3, [r7, #32]
	ldr	r1, [r3, #204]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #208]
	add	r3, r3, r1
	lsls	r3, r3, #6
	mov	r0, r2
	mov	r1, r3
	bl	ft_synthesize_vertical_metrics(PLT)
.L307:
	ldr	r3, [r7, #36]
.L317:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	PCF_Glyph_Load, .-PCF_Glyph_Load
	.section	.text.pcf_get_bdf_property,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_get_bdf_property, %function
pcf_get_bdf_property:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	pcf_find_property(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L325
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L326
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L327
.L326:
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L327:
	movs	r3, #0
	b	.L328
.L325:
	movs	r3, #6
.L328:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	pcf_get_bdf_property, .-pcf_get_bdf_property
	.section	.text.pcf_get_charset_id,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_get_charset_id, %function
pcf_get_charset_id:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #176]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #180]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pcf_get_charset_id, .-pcf_get_charset_id
	.section	.data.rel.ro.local.pcf_service_bdf,"aw",%progbits
	.align	2
	.type	pcf_service_bdf, %object
	.size	pcf_service_bdf, 8
pcf_service_bdf:
	.word	pcf_get_charset_id
	.word	pcf_get_bdf_property
	.section	.rodata
	.align	2
.LC19:
	.ascii	"bdf\000"
	.align	2
.LC20:
	.ascii	"font-format\000"
	.align	2
.LC21:
	.ascii	"PCF\000"
	.section	.data.rel.ro.local.pcf_services,"aw",%progbits
	.align	2
	.type	pcf_services, %object
	.size	pcf_services, 24
pcf_services:
	.word	.LC19
	.word	pcf_service_bdf
	.word	.LC20
	.word	.LC21
	.word	0
	.word	0
	.section	.text.pcf_driver_requester,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pcf_driver_requester, %function
pcf_driver_requester:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L333
.LPIC29:
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
.L334:
	.align	2
.L333:
	.word	pcf_services-(.LPIC29+4)
	.size	pcf_driver_requester, .-pcf_driver_requester
	.global	pcf_driver_class
	.section	.rodata
	.align	2
.LC22:
	.ascii	"pcf\000"
	.section	.data.rel.ro.local.pcf_driver_class,"aw",%progbits
	.align	2
	.type	pcf_driver_class, %object
	.size	pcf_driver_class, 96
pcf_driver_class:
	.word	513
	.word	28
	.word	.LC22
	.word	65536
	.word	131072
	.word	0
	.word	0
	.word	0
	.word	pcf_driver_requester
	.word	328
	.word	44
	.word	160
	.word	PCF_Face_Init
	.word	PCF_Face_Done
	.word	0
	.word	0
	.word	0
	.word	0
	.word	PCF_Glyph_Load
	.word	0
	.word	0
	.word	0
	.word	PCF_Size_Request
	.word	PCF_Size_Select
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
