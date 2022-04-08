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
	.file	"ftsystem.c"
	.section	.text.ft_alloc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_alloc, %function
ft_alloc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_alloc, .-ft_alloc
	.section	.text.ft_realloc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_realloc, %function
ft_realloc:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r0, [r7]
	mov	r1, r3
	bl	realloc(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_realloc, .-ft_realloc
	.section	.text.ft_free,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_free, %function
ft_free:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7]
	bl	free(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_free, .-ft_free
	.section	.text.ft_ansi_stream_close,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_ansi_stream_close, %function
ft_ansi_stream_close:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	fclose(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_ansi_stream_close, .-ft_ansi_stream_close
	.section	.text.ft_ansi_stream_io,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_ansi_stream_io, %function
ft_ansi_stream_io:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L8
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L8
	movs	r3, #1
	b	.L9
.L8:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L10
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #20]
	mov	r1, r3
	movs	r2, #0
	bl	fseek(PLT)
.L10:
	ldr	r0, [r7, #4]
	movs	r1, #1
	ldr	r2, [r7]
	ldr	r3, [r7, #20]
	bl	fread(PLT)
	mov	r3, r0
.L9:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_ansi_stream_io, .-ft_ansi_stream_io
	.section	.rodata
	.align	2
.LC0:
	.ascii	"rb\000"
	.section	.text.FT_Stream_Open,"ax",%progbits
	.align	2
	.global	FT_Stream_Open
	.thumb
	.thumb_func
	.type	FT_Stream_Open, %function
FT_Stream_Open:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L12
	movs	r3, #40
	b	.L13
.L12:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r0, [r7]
	ldr	r3, .L16
.LPIC0:
	add	r3, pc
	mov	r1, r3
	bl	fopen(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L14
	movs	r3, #1
	b	.L13
.L14:
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #2
	bl	fseek(PLT)
	ldr	r0, [r7, #12]
	bl	ftell(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L15
	ldr	r0, [r7, #12]
	bl	fclose(PLT)
	movs	r3, #81
	b	.L13
.L15:
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #0
	bl	fseek(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, .L16+4
.LPIC1:
	add	r2, pc
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L16+8
.LPIC2:
	add	r2, pc
	str	r2, [r3, #24]
	movs	r3, #0
.L13:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L17:
	.align	2
.L16:
	.word	.LC0-(.LPIC0+4)
	.word	ft_ansi_stream_io-(.LPIC1+4)
	.word	ft_ansi_stream_close-(.LPIC2+4)
	.size	FT_Stream_Open, .-FT_Stream_Open
	.section	.text.FT_New_Memory,"ax",%progbits
	.align	2
	.global	FT_New_Memory
	.thumb
	.thumb_func
	.type	FT_New_Memory, %function
FT_New_Memory:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	movs	r0, #16
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, .L21
.LPIC3:
	add	r2, pc
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L21+4
.LPIC4:
	add	r2, pc
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, .L21+8
.LPIC5:
	add	r2, pc
	str	r2, [r3, #8]
.L19:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L22:
	.align	2
.L21:
	.word	ft_alloc-(.LPIC3+4)
	.word	ft_realloc-(.LPIC4+4)
	.word	ft_free-(.LPIC5+4)
	.size	FT_New_Memory, .-FT_New_Memory
	.section	.text.FT_Done_Memory,"ax",%progbits
	.align	2
	.global	FT_Done_Memory
	.thumb
	.thumb_func
	.type	FT_Done_Memory, %function
FT_Done_Memory:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	free(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Done_Memory, .-FT_Done_Memory
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
