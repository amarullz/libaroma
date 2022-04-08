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
	.file	"ftgzip.c"
	.section	.text.ft_gzip_alloc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_alloc, %function
ft_gzip_alloc:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_alloc, .-ft_gzip_alloc
	.section	.text.ft_gzip_free,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_free, %function
ft_gzip_free:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_free, .-ft_gzip_free
	.section	.text.ft_gzip_check_header,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_check_header, %function
ft_gzip_check_header:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L5
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #4
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L5
	ldrb	r3, [r7, #12]	@ zero_extendqisi2
	cmp	r3, #31
	bne	.L6
	ldrb	r3, [r7, #13]	@ zero_extendqisi2
	cmp	r3, #139
	bne	.L6
	ldrb	r3, [r7, #14]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L6
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	and	r3, r3, #224
	cmp	r3, #0
	beq	.L7
.L6:
	movs	r3, #3
	str	r3, [r7, #16]
	b	.L5
.L7:
	ldr	r0, [r7, #4]
	movs	r1, #6
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L8
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadUShortLE(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L5
	ldr	r3, [r7, #28]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L5
.L8:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L9
.L12:
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L10
	b	.L5
.L10:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L11
	b	.L9
.L11:
	b	.L12
.L9:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L13
.L16:
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadChar(PLT)
	mov	r3, r0
	uxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L14
	b	.L5
.L14:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L15
	b	.L13
.L15:
	b	.L16
.L13:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L5
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L5
	nop
.L5:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_check_header, .-ft_gzip_check_header
	.section	.rodata
	.align	2
.LC0:
	.ascii	"1.2.8\000"
	.section	.text.ft_gzip_file_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_file_init, %function
ft_gzip_file_init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	add	r2, r3, #8256
	adds	r2, r2, #8
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #16
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #12
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #8
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r0, [r7, #8]
	bl	ft_gzip_check_header(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L19
	b	.L20
.L19:
	ldr	r0, [r7, #8]
	bl	FT_Stream_Pos(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #68]
	ldr	r3, [r7, #16]
	ldr	r2, .L23
.LPIC0:
	add	r2, pc
	str	r2, [r3, #32]
	ldr	r3, [r7, #16]
	ldr	r2, .L23+4
.LPIC1:
	add	r2, pc
	str	r2, [r3, #36]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #16]
	str	r2, [r3, #40]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	add	r3, r3, #4160
	adds	r3, r3, #8
	ldr	r2, [r7, #16]
	str	r3, [r2]
	ldr	r0, [r7, #16]
	mvn	r1, #14
	ldr	r3, .L23+8
.LPIC2:
	add	r3, pc
	mov	r2, r3
	movs	r3, #56
	bl	inflateInit2_(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L21
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L20
.L21:
	movs	r3, #3
	str	r3, [r7, #20]
.L20:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	ft_gzip_alloc-(.LPIC0+4)
	.word	ft_gzip_free-(.LPIC1+4)
	.word	.LC0-(.LPIC2+4)
	.size	ft_gzip_file_init, .-ft_gzip_file_init
	.section	.text.ft_gzip_file_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_file_done, %function
ft_gzip_file_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	inflateEnd(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_file_done, .-ft_gzip_file_done
	.section	.text.ft_gzip_file_reset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_file_reset, %function
ft_gzip_file_reset:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L27
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	inflateReset(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #72
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	add	r3, r3, #4160
	adds	r3, r3, #8
	ldr	r2, [r7, #12]
	str	r3, [r2, #12]
	ldr	r3, [r7, #4]
	add	r2, r3, #8256
	adds	r2, r2, #8
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #16
	str	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #12
	str	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #8
	movs	r2, #0
	str	r2, [r3]
.L27:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_file_reset, .-ft_gzip_file_reset
	.section	.text.ft_gzip_file_fill_input,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_file_fill_input, %function
ft_gzip_file_fill_input:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L30
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	mov	r3, #4096
	blx	r4
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L31
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #16
	str	r2, [r3]
	movs	r3, #85
	b	.L32
.L30:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #4096
	bls	.L33
	mov	r3, #4096
	str	r3, [r7, #20]
.L33:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L34
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #16
	str	r2, [r3]
	movs	r3, #85
	b	.L32
.L34:
	ldr	r3, [r7, #4]
	add	r2, r3, #72
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #20]
	bl	memcpy(PLT)
.L31:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	add	r2, r3, #72
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	movs	r3, #0
.L32:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ft_gzip_file_fill_input, .-ft_gzip_file_fill_input
	.section	.text.ft_gzip_file_fill_output,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_file_fill_output, %function
ft_gzip_file_fill_output:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #4160
	adds	r2, r2, #8
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #12
	str	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	mov	r2, #4096
	str	r2, [r3, #16]
	b	.L36
.L41:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L37
	ldr	r0, [r7, #4]
	bl	ft_gzip_file_fill_input(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L37
	b	.L38
.L37:
	ldr	r0, [r7, #16]
	movs	r1, #0
	bl	inflate(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #1
	bne	.L39
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #16
	str	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #12
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L40
	movs	r3, #85
	str	r3, [r7, #20]
	b	.L38
.L40:
	b	.L38
.L39:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #16
	str	r2, [r3]
	movs	r3, #85
	str	r3, [r7, #20]
	b	.L38
.L36:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L41
.L38:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_file_fill_output, .-ft_gzip_file_fill_output
	.section	.text.ft_gzip_file_skip_output,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_file_skip_output, %function
ft_gzip_file_skip_output:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
.L48:
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #16
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #12
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L44
	ldr	r3, [r7]
	str	r3, [r7, #8]
.L44:
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #12
	str	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #8256
	adds	r3, r3, #8
	str	r2, [r3]
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L45
	b	.L46
.L45:
	ldr	r0, [r7, #4]
	bl	ft_gzip_file_fill_output(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L47
	b	.L46
.L47:
	b	.L48
.L46:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_file_skip_output, .-ft_gzip_file_skip_output
	.section	.text.ft_gzip_file_io,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_file_io, %function
ft_gzip_file_io:
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
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L51
	ldr	r0, [r7, #12]
	bl	ft_gzip_file_reset(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L51
	b	.L52
.L51:
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L53
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_gzip_file_skip_output(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L53
	b	.L52
.L53:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L54
	b	.L52
.L54:
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #16
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #12
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L55
	ldr	r3, [r7]
	str	r3, [r7, #24]
.L55:
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #24]
	bl	memcpy(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #12
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #12
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #8256
	adds	r3, r3, #8
	str	r2, [r3]
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L56
	b	.L52
.L56:
	ldr	r0, [r7, #12]
	bl	ft_gzip_file_fill_output(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L57
	b	.L52
.L57:
	b	.L54
.L52:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_file_io, .-ft_gzip_file_io
	.section	.text.ft_gzip_stream_close,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_stream_close, %function
ft_gzip_stream_close:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L60
	ldr	r0, [r7, #12]
	bl	ft_gzip_file_done(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
.L60:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L59
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
.L59:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_stream_close, .-ft_gzip_stream_close
	.section	.text.ft_gzip_stream_io,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_stream_io, %function
ft_gzip_stream_io:
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
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	ft_gzip_file_io(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_stream_io, .-ft_gzip_stream_io
	.section	.text.ft_gzip_get_uncompressed_size,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gzip_get_uncompressed_size, %function
ft_gzip_get_uncompressed_size:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r3, r3, #4
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L65
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_ReadULongLE(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L66
	movs	r3, #0
	str	r3, [r7, #20]
.L66:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #16]
	bl	FT_Stream_Seek(PLT)
.L65:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_gzip_get_uncompressed_size, .-ft_gzip_get_uncompressed_size
	.section	.text.FT_Stream_OpenGzip,"ax",%progbits
	.align	2
	.global	FT_Stream_OpenGzip
	.thumb
	.thumb_func
	.type	FT_Stream_OpenGzip, %function
FT_Stream_OpenGzip:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L69
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L70
.L69:
	movs	r3, #40
	str	r3, [r7, #8]
	b	.L71
.L70:
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r0, [r7]
	bl	ft_gzip_check_header(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L72
	b	.L71
.L72:
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3, #28]
	add	r3, r7, #8
	ldr	r0, [r7, #24]
	movw	r1, #8276
	mov	r2, r3
	bl	ft_mem_qalloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L73
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	ft_gzip_file_init(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L74
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L71
.L74:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3, #12]
.L73:
	ldr	r0, [r7]
	bl	ft_gzip_get_uncompressed_size(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L75
	ldr	r3, [r7, #20]
	cmp	r3, #40960
	bcs	.L75
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	add	r3, r7, #8
	ldr	r0, [r7, #24]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L76
	ldr	r0, [r7, #28]
	movs	r1, #0
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	bl	ft_gzip_file_io(PLT)
	str	r0, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L77
	ldr	r0, [r7, #28]
	bl	ft_gzip_file_done(PLT)
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L81
.LPIC3:
	add	r2, pc
	str	r2, [r3, #24]
	b	.L71
.L77:
	ldr	r0, [r7, #28]
	movs	r1, #0
	movs	r2, #0
	movs	r3, #0
	bl	ft_gzip_file_io(PLT)
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #16]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #16]
.L76:
	movs	r3, #0
	str	r3, [r7, #8]
.L75:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L78
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	b	.L79
.L78:
	ldr	r3, [r7, #4]
	mvn	r2, #-2147483648
	str	r2, [r3, #4]
.L79:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, .L81+4
.LPIC4:
	add	r2, pc
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L81+8
.LPIC5:
	add	r2, pc
	str	r2, [r3, #24]
.L71:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L82:
	.align	2
.L81:
	.word	ft_gzip_stream_close-(.LPIC3+4)
	.word	ft_gzip_stream_io-(.LPIC4+4)
	.word	ft_gzip_stream_close-(.LPIC5+4)
	.size	FT_Stream_OpenGzip, .-FT_Stream_OpenGzip
	.section	.text.FT_Gzip_Uncompress,"ax",%progbits
	.align	2
	.global	FT_Gzip_Uncompress
	.thumb
	.thumb_func
	.type	FT_Gzip_Uncompress, %function
FT_Gzip_Uncompress:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L85
.L84:
	movs	r3, #6
	b	.L94
.L85:
	ldr	r3, [r7]
	str	r3, [r7, #20]
	ldr	r3, [r7, #88]
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, .L95
.LPIC6:
	add	r3, pc
	str	r3, [r7, #52]
	ldr	r3, .L95+4
.LPIC7:
	add	r3, pc
	str	r3, [r7, #56]
	ldr	r3, [r7, #12]
	str	r3, [r7, #60]
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #15
	ldr	r3, .L95+8
.LPIC8:
	add	r3, pc
	mov	r2, r3
	movs	r3, #56
	bl	inflateInit2_(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L87
	movs	r3, #6
	b	.L94
.L87:
	add	r3, r7, #20
	mov	r0, r3
	movs	r1, #4
	bl	inflate(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #1
	beq	.L88
	add	r3, r7, #20
	mov	r0, r3
	bl	inflateEnd(PLT)
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L90
	mvn	r3, #4
	str	r3, [r7, #76]
	b	.L90
.L88:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	add	r3, r7, #20
	mov	r0, r3
	bl	inflateEnd(PLT)
	str	r0, [r7, #76]
.L90:
	ldr	r3, [r7, #76]
	cmn	r3, #4
	bne	.L91
	movs	r3, #64
	b	.L94
.L91:
	ldr	r3, [r7, #76]
	cmn	r3, #5
	bne	.L92
	movs	r3, #10
	b	.L94
.L92:
	ldr	r3, [r7, #76]
	cmn	r3, #3
	bne	.L93
	movs	r3, #8
	b	.L94
.L93:
	movs	r3, #0
.L94:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L96:
	.align	2
.L95:
	.word	ft_gzip_alloc-(.LPIC6+4)
	.word	ft_gzip_free-(.LPIC7+4)
	.word	.LC0-(.LPIC8+4)
	.size	FT_Gzip_Uncompress, .-FT_Gzip_Uncompress
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
