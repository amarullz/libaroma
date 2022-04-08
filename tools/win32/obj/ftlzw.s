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
	.file	"ftlzw.c"
	.section	.text.ft_lzw_check_header,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzw_check_header, %function
ft_lzw_check_header:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L2
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #2
	bl	FT_Stream_Read(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L2
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	cmp	r3, #31
	bne	.L3
	ldrb	r3, [r7, #9]	@ zero_extendqisi2
	cmp	r3, #157
	beq	.L2
.L3:
	movs	r3, #3
	str	r3, [r7, #12]
.L2:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzw_check_header, .-ft_lzw_check_header
	.section	.text.ft_lzw_file_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzw_file_init, %function
ft_lzw_file_init:
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
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r2, [r7, #12]
	add	r2, r2, #4288
	str	r3, [r2]
	ldr	r3, [r7, #12]
	add	r3, r3, #4288
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #28
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #24
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	ft_lzw_check_header(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L6
	b	.L7
.L6:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	bl	ft_lzwstate_init(PLT)
.L7:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzw_file_init, .-ft_lzw_file_init
	.section	.text.ft_lzw_file_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzw_file_done, %function
ft_lzw_file_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	ft_lzwstate_done(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzw_file_done, .-ft_lzw_file_done
	.section	.text.ft_lzw_file_reset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzw_file_reset, %function
ft_lzw_file_reset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L11
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	ft_lzwstate_reset(PLT)
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r2, [r7, #4]
	add	r2, r2, #4288
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r3, r3, #4288
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #28
	str	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #24
	movs	r2, #0
	str	r2, [r3]
.L11:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzw_file_reset, .-ft_lzw_file_reset
	.section	.text.ft_lzw_file_fill_output,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzw_file_fill_output, %function
ft_lzw_file_fill_output:
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
	add	r2, r3, #184
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #28
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #184
	ldr	r0, [r7, #16]
	mov	r1, r3
	mov	r2, #4096
	bl	ft_lzwstate_io(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #28
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #4288
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L14
	movs	r3, #85
	str	r3, [r7, #20]
.L14:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzw_file_fill_output, .-ft_lzw_file_fill_output
	.section	.text.ft_lzw_file_skip_output,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzw_file_skip_output, %function
ft_lzw_file_skip_output:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r3, r3, #4288
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #28
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L17
	ldr	r3, [r7]
	str	r3, [r7, #16]
.L17:
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #28
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #28
	str	r2, [r3]
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #24
	str	r2, [r3]
	ldr	r2, [r7]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7]
	b	.L18
.L22:
	mov	r3, #4096
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L19
	ldr	r3, [r7]
	str	r3, [r7, #12]
.L19:
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	movs	r1, #0
	ldr	r2, [r7, #12]
	bl	ft_lzwstate_io(PLT)
	str	r0, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcs	.L20
	movs	r3, #85
	str	r3, [r7, #20]
	b	.L21
.L20:
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, #4256
	adds	r3, r3, #24
	str	r2, [r3]
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7]
.L18:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L22
.L21:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzw_file_skip_output, .-ft_lzw_file_skip_output
	.section	.text.ft_lzw_file_io,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzw_file_io, %function
ft_lzw_file_io:
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
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L25
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #28
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #184
	subs	r3, r1, r3
	cmp	r2, r3
	bhi	.L26
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #28
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r1, [r7, #8]
	subs	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #28
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r2, [r7, #8]
	str	r2, [r3]
	b	.L25
.L26:
	ldr	r0, [r7, #12]
	bl	ft_lzw_file_reset(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L25
	b	.L27
.L25:
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L28
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_lzw_file_skip_output(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L28
	b	.L27
.L28:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L29
	b	.L27
.L29:
	ldr	r3, [r7, #12]
	add	r3, r3, #4288
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #28
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L30
	ldr	r3, [r7]
	str	r3, [r7, #24]
.L30:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #28
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #24]
	bl	memcpy(PLT)
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #28
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #28
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #24
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r3, r3, #4256
	adds	r3, r3, #24
	str	r2, [r3]
	ldr	r2, [r7]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L31
	b	.L27
.L31:
	ldr	r0, [r7, #12]
	bl	ft_lzw_file_fill_output(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L32
	b	.L27
.L32:
	b	.L29
.L27:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzw_file_io, .-ft_lzw_file_io
	.section	.text.ft_lzw_stream_close,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzw_stream_close, %function
ft_lzw_stream_close:
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
	beq	.L34
	ldr	r0, [r7, #12]
	bl	ft_lzw_file_done(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
.L34:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzw_stream_close, .-ft_lzw_stream_close
	.section	.text.ft_lzw_stream_io,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzw_stream_io, %function
ft_lzw_stream_io:
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
	bl	ft_lzw_file_io(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzw_stream_io, .-ft_lzw_stream_io
	.section	.text.FT_Stream_OpenLZW,"ax",%progbits
	.align	2
	.global	FT_Stream_OpenLZW
	.thumb
	.thumb_func
	.type	FT_Stream_OpenLZW, %function
FT_Stream_OpenLZW:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L40
.L39:
	movs	r3, #40
	str	r3, [r7, #12]
	b	.L41
.L40:
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	str	r3, [r7, #16]
	ldr	r0, [r7]
	bl	ft_lzw_check_header(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L42
	b	.L41
.L42:
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #28]
	add	r3, r7, #12
	ldr	r0, [r7, #16]
	movw	r1, #4292
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L43
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	ft_lzw_file_init(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L44
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #20]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L41
.L44:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
.L43:
	ldr	r3, [r7, #4]
	mvn	r2, #-2147483648
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, .L46
.LPIC0:
	add	r2, pc
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L46+4
.LPIC1:
	add	r2, pc
	str	r2, [r3, #24]
.L41:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	ft_lzw_stream_io-(.LPIC0+4)
	.word	ft_lzw_stream_close-(.LPIC1+4)
	.size	FT_Stream_OpenLZW, .-FT_Stream_OpenLZW
	.section	.text.ft_lzwstate_refill,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzwstate_refill, %function
ft_lzwstate_refill:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L49
	mov	r3, #-1
	b	.L50
.L49:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #164]
	ldr	r3, [r7, #4]
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_TryRead(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	lsls	r2, r3, #3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	subs	r3, r2, r3
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L51
	mov	r3, #-1
	b	.L50
.L51:
	movs	r3, #0
.L50:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzwstate_refill, .-ft_lzwstate_refill
	.section	.text.ft_lzwstate_get_code,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzwstate_get_code, %function
ft_lzwstate_get_code:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L53
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bls	.L53
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r2, r3
	bcc	.L54
.L53:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	cmp	r2, r3
	bcc	.L55
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	cmp	r2, r3
	bcs	.L56
	ldr	r3, [r7, #20]
	movs	r2, #1
	lsl	r3, r2, r3
	sub	r3, r3, #256
	b	.L57
.L56:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	adds	r3, r3, #1
.L57:
	ldr	r2, [r7, #4]
	str	r3, [r2, #60]
.L55:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L58
	movs	r3, #9
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #52]
	ldr	r3, [r7, #20]
	movs	r2, #1
	lsl	r3, r2, r3
	sub	r2, r3, #256
	ldr	r3, [r7, #4]
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #32]
.L58:
	ldr	r0, [r7, #4]
	bl	ft_lzwstate_refill(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L59
	mov	r3, #-1
	b	.L60
.L59:
	movs	r3, #0
	str	r3, [r7, #16]
.L54:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #3
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	and	r3, r3, #7
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #16]
	asr	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	rsb	r3, r3, #8
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #7
	bls	.L61
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #16]
	lsl	r3, r2, r3
	ldr	r2, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	subs	r3, r3, #8
	str	r3, [r7, #20]
.L61:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	movs	r1, #1
	lsl	r3, r1, r3
	subs	r3, r3, #1
	ands	r2, r2, r3
	ldr	r3, [r7, #16]
	lsls	r2, r2, r3
	ldr	r3, [r7, #8]
	orrs	r3, r3, r2
	str	r3, [r7, #8]
.L62:
	ldr	r3, [r7, #8]
.L60:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzwstate_get_code, .-ft_lzwstate_get_code
	.section	.text.ft_lzwstate_stack_grow,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzwstate_stack_grow, %function
ft_lzwstate_stack_grow:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	cmp	r2, r3
	bcc	.L64
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	lsrs	r2, r3, #1
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	adds	r3, r3, #100
	cmp	r2, r3
	bne	.L65
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
	movs	r3, #0
	str	r3, [r7, #20]
.L65:
	ldr	r3, [r7, #16]
	cmp	r3, #65536
	bls	.L66
	mov	r3, #65536
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L66
	mov	r3, #-1
	b	.L69
.L66:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #88]
	str	r1, [sp]
	add	r1, r7, #8
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L68
	mov	r3, #-1
	b	.L69
.L68:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #96]
.L64:
	movs	r3, #0
.L69:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzwstate_stack_grow, .-ft_lzwstate_stack_grow
	.section	.text.ft_lzwstate_prefix_grow,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lzwstate_prefix_grow, %function
ft_lzwstate_prefix_grow:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #84]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L71
	mov	r3, #512
	str	r3, [r7, #20]
	b	.L72
.L71:
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
.L72:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #76]
	str	r1, [sp]
	add	r1, r7, #8
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #3
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L73
	mov	r3, #-1
	b	.L75
.L73:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #80]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #76]
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #16]
	bl	memmove(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #84]
	movs	r3, #0
.L75:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzwstate_prefix_grow, .-ft_lzwstate_prefix_grow
	.section	.text.ft_lzwstate_reset,"ax",%progbits
	.align	2
	.global	ft_lzwstate_reset
	.thumb
	.thumb_func
	.type	ft_lzwstate_reset, %function
ft_lzwstate_reset:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #92]
	ldr	r3, [r7, #4]
	movs	r2, #9
	str	r2, [r3, #52]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_lzwstate_reset, .-ft_lzwstate_reset
	.section	.text.ft_lzwstate_init,"ax",%progbits
	.align	2
	.global	ft_lzwstate_init
	.thumb
	.thumb_func
	.type	ft_lzwstate_init, %function
ft_lzwstate_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #172
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #164]
	ldr	r3, [r7]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #168]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #80]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	add	r2, r3, #100
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	movs	r2, #64
	str	r2, [r3, #96]
	ldr	r0, [r7, #4]
	bl	ft_lzwstate_reset(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzwstate_init, .-ft_lzwstate_init
	.section	.text.ft_lzwstate_done,"ax",%progbits
	.align	2
	.global	ft_lzwstate_done
	.thumb
	.thumb_func
	.type	ft_lzwstate_done, %function
ft_lzwstate_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	bl	ft_lzwstate_reset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	adds	r3, r3, #100
	cmp	r2, r3
	beq	.L79
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
.L79:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #80]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #172
	bl	memset(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzwstate_done, .-ft_lzwstate_done
	.section	.text.ft_lzwstate_io,"ax",%progbits
	.align	2
	.global	ft_lzwstate_io
	.thumb
	.thumb_func
	.type	ft_lzwstate_io, %function
ft_lzwstate_io:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #68]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #72]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L81
	b	.L82
.L81:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #1
	beq	.L83
	cmp	r3, #1
	bcc	.L84
	cmp	r3, #2
	beq	.L111
	b	.L82
.L84:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #164]
	mov	r0, r3
	movs	r1, #2
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L92
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #164]
	add	r3, r7, #19
	mov	r0, r2
	mov	r1, r3
	movs	r2, #1
	bl	FT_Stream_TryRead(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L92
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	and	r2, r3, #31
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	and	r2, r3, #128
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	movs	r2, #1
	lsl	r3, r2, r3
	sub	r2, r3, #256
	ldr	r3, [r7, #12]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r3, #16
	bls	.L87
	nop
	b	.L92
.L87:
	ldr	r3, [r7, #12]
	movs	r2, #9
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #56]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #40]
	cmp	r2, r3
	bcs	.L88
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	movs	r2, #1
	lsl	r3, r2, r3
	sub	r3, r3, #256
	b	.L89
.L88:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	adds	r3, r3, #1
.L89:
	ldr	r2, [r7, #12]
	str	r3, [r2, #60]
	ldr	r0, [r7, #12]
	bl	ft_lzwstate_get_code(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	blt	.L92
	ldr	r3, [r7, #24]
	cmp	r3, #255
	bgt	.L92
	ldr	r3, [r7, #24]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L90
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	ldr	r2, [r7, #40]
	uxtb	r2, r2
	strb	r2, [r3]
.L90:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L82
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3]
.L83:
	ldr	r0, [r7, #12]
	bl	ft_lzwstate_get_code(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L93
	b	.L92
.L93:
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #256
	bne	.L94
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	beq	.L94
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L83
.L94:
	ldr	r3, [r7, #28]
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	cmp	r3, #255
	bls	.L95
	ldr	r3, [r7, #28]
	sub	r2, r3, #256
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r2, r3
	bcc	.L96
	ldr	r3, [r7, #28]
	sub	r2, r3, #256
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r2, r3
	bls	.L97
	b	.L92
.L97:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	cmp	r2, r3
	bcc	.L98
	ldr	r0, [r7, #12]
	bl	ft_lzwstate_stack_grow(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L98
	b	.L92
.L98:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	adds	r0, r3, #1
	ldr	r1, [r7, #12]
	str	r0, [r1, #92]
	add	r3, r3, r2
	ldr	r2, [r7, #40]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	str	r3, [r7, #28]
	b	.L99
.L96:
	b	.L99
.L102:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	bne	.L100
	b	.L92
.L100:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	cmp	r2, r3
	bcc	.L101
	ldr	r0, [r7, #12]
	bl	ft_lzwstate_stack_grow(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L101
	b	.L92
.L101:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	adds	r0, r3, #1
	ldr	r1, [r7, #12]
	str	r0, [r1, #92]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #80]
	ldr	r2, [r7, #28]
	sub	r2, r2, #256
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #28]
	add	r3, r3, #-2147483648
	sub	r3, r3, #256
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #28]
.L99:
	ldr	r3, [r7, #28]
	cmp	r3, #255
	bhi	.L102
.L95:
	ldr	r3, [r7, #28]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	cmp	r2, r3
	bcc	.L103
	ldr	r0, [r7, #12]
	bl	ft_lzwstate_stack_grow(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L103
	b	.L92
.L103:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	adds	r0, r3, #1
	ldr	r1, [r7, #12]
	str	r0, [r1, #92]
	add	r3, r3, r2
	ldr	r2, [r7, #40]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #2
	str	r2, [r3]
	b	.L111
.L106:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #92]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L105
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2, #88]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #92]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L105:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L104
	b	.L82
.L111:
	nop
.L104:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	bne	.L106
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r2, r3
	bcs	.L107
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	cmp	r2, r3
	bcc	.L108
	ldr	r0, [r7, #12]
	bl	ft_lzwstate_prefix_grow(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L108
	b	.L92
.L108:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #36]
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	add	r3, r3, r2
	ldr	r2, [r7, #40]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #56]
.L107:
	ldr	r3, [r7, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3]
	b	.L83
.L82:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #40]
	str	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #72]
	ldr	r3, [r7, #44]
	b	.L110
.L92:
	ldr	r3, [r7, #12]
	movs	r2, #3
	str	r2, [r3]
	b	.L82
.L110:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lzwstate_io, .-ft_lzwstate_io
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
