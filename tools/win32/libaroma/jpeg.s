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
	.file	"jpeg.c"
	.section	.text._libaroma_jpeg_mem_source,"ax",%progbits
	.align	2
	.global	_libaroma_jpeg_mem_source
	.thumb
	.thumb_func
	.type	_libaroma_jpeg_mem_source, %function
_libaroma_jpeg_mem_source:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_libaroma_jpeg_mem_source, .-_libaroma_jpeg_mem_source
	.section	.text._libaroma_jpeg_mem_fill_input_buffer,"ax",%progbits
	.align	2
	.global	_libaroma_jpeg_mem_fill_input_buffer
	.thumb
	.thumb_func
	.type	_libaroma_jpeg_mem_fill_input_buffer, %function
_libaroma_jpeg_mem_fill_input_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r5, #120
	ldr	r3, [r0]
	mov	r1, #-1
	ldr	r4, [r0, #24]
	ldr	r2, [r3, #4]
	str	r5, [r3, #20]
	blx	r2
	movs	r0, #255
	movs	r1, #217
	add	r2, r4, #40
	movs	r3, #2
	strb	r0, [r4, #40]
	movs	r0, #1
	strb	r1, [r4, #41]
	str	r2, [r4]
	str	r3, [r4, #8]
	pop	{r3, r4, r5, pc}
	.size	_libaroma_jpeg_mem_fill_input_buffer, .-_libaroma_jpeg_mem_fill_input_buffer
	.section	.text._libaroma_jpeg_mem_skip_input_data,"ax",%progbits
	.align	2
	.global	_libaroma_jpeg_mem_skip_input_data
	.thumb
	.thumb_func
	.type	_libaroma_jpeg_mem_skip_input_data, %function
_libaroma_jpeg_mem_skip_input_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	subs	r4, r1, #0
	mov	r6, r0
	ldr	r5, [r0, #24]
	ble	.L4
	ldr	r3, [r5, #8]
	cmp	r4, r3
	ble	.L6
.L7:
	mov	r0, r6
	subs	r4, r4, r3
	bl	_libaroma_jpeg_mem_fill_input_buffer(PLT)
	ldr	r3, [r5, #8]
	cmp	r3, r4
	blt	.L7
.L6:
	ldr	r2, [r5]
	subs	r3, r3, r4
	str	r3, [r5, #8]
	add	r4, r4, r2
	str	r4, [r5]
.L4:
	pop	{r4, r5, r6, pc}
	.size	_libaroma_jpeg_mem_skip_input_data, .-_libaroma_jpeg_mem_skip_input_data
	.section	.text._libaroma_jpeg_error_exit,"ax",%progbits
	.align	2
	.global	_libaroma_jpeg_error_exit
	.thumb
	.thumb_func
	.type	_libaroma_jpeg_error_exit, %function
_libaroma_jpeg_error_exit:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #200
	ldr	r4, [r0]
	mov	r1, sp
	ldr	r3, [r4, #12]
	blx	r3
	add	r0, r4, #136
	movs	r1, #1
	bl	longjmp(PLT)
	.size	_libaroma_jpeg_error_exit, .-_libaroma_jpeg_error_exit
	.section	.text._libaroma_jpeg_mem_src,"ax",%progbits
	.align	2
	.global	_libaroma_jpeg_mem_src
	.thumb
	.thumb_func
	.type	_libaroma_jpeg_mem_src, %function
_libaroma_jpeg_mem_src:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	ldr	r3, [r0, #24]
	mov	r7, r1
	mov	r6, r2
	ldr	r4, .L16
.LPIC0:
	add	r4, pc
	cbz	r3, .L15
.L13:
	ldr	r2, .L16+4
	ldr	r5, .L16+8
	ldr	r1, .L16+12
	ldr	r0, [r4, r2]
	ldr	r2, .L16+16
	str	r0, [r3, #16]
	ldr	r5, [r4, r5]
	str	r5, [r3, #20]
	ldr	r5, [r4, r1]
	str	r5, [r3, #24]
	ldr	r4, [r4, r2]
	str	r0, [r3, #32]
	str	r7, [r3]
	str	r4, [r3, #28]
	str	r6, [r3, #8]
	pop	{r3, r4, r5, r6, r7, pc}
.L15:
	ldr	lr, [r0, #4]
	mov	r1, r3
	movs	r2, #44
	ldr	r3, [lr]
	blx	r3
	mov	r3, r0
	str	r0, [r5, #24]
	b	.L13
.L17:
	.align	2
.L16:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	_libaroma_jpeg_mem_source(GOT)
	.word	_libaroma_jpeg_mem_fill_input_buffer(GOT)
	.word	_libaroma_jpeg_mem_skip_input_data(GOT)
	.word	jpeg_resync_to_restart(GOT)
	.size	_libaroma_jpeg_mem_src, .-_libaroma_jpeg_mem_src
	.section	.text.libaroma_jpeg_ex,"ax",%progbits
	.align	2
	.global	libaroma_jpeg_ex
	.thumb
	.thumb_func
	.type	libaroma_jpeg_ex, %function
libaroma_jpeg_ex:
	@ args = 0, pretend = 0, frame = 1032
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r3, #0
	ldr	r4, .L41
	subw	sp, sp, #1044
	str	r0, [sp, #12]
	str	r1, [sp, #20]
.LPIC17:
	add	r4, pc
	str	r2, [sp, #16]
	str	r3, [sp, #28]
	cbz	r0, .L19
	add	r5, sp, #512
	mov	r0, r5
	bl	jpeg_std_error(PLT)
	ldr	r3, .L41+4
	str	r0, [sp, #32]
	add	r0, sp, #648
	ldr	r3, [r4, r3]
	str	r3, [r5]
	bl	_setjmp(PLT)
	mov	r4, r0
	cbz	r0, .L20
	add	r0, sp, #32
	bl	jpeg_destroy_decompress(PLT)
.L21:
	ldr	r3, [sp, #20]
	cmp	r3, #0
	bne	.L39
.L34:
	ldr	r0, [sp, #28]
.L19:
	addw	sp, sp, #1044
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L20:
	add	fp, sp, #32
	movs	r1, #62
	mov	r0, fp
	mov	r2, #480
	bl	jpeg_CreateDecompress(PLT)
	ldr	r3, [sp, #12]
	mov	r0, fp
	add	r10, sp, #28
	ldr	r1, [r3]
	ldr	r2, [r3, #4]
	bl	_libaroma_jpeg_mem_src(PLT)
	movs	r1, #1
	mov	r0, fp
	bl	jpeg_read_header(PLT)
	mov	r0, fp
	bl	jpeg_start_decompress(PLT)
	ldr	r5, [fp, #120]
	mov	r2, r4
	ldr	r1, [fp, #124]
	ldr	r3, [sp, #16]
	str	r4, [sp]
	mov	r0, r5
	ldr	r7, [fp, #132]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r10]
	ldr	r3, [r10]
	cmp	r3, #0
	beq	.L40
	mul	r7, r7, r5
	add	r8, sp, #24
	mov	r0, r7
	bl	malloc(PLT)
	ldr	r3, [sp, #16]
	str	r0, [r8]
	cmp	r3, #0
	bne	.L23
	ldr	r2, [fp, #148]
	ldr	r3, [fp, #124]
	cmp	r2, r3
	itt	cc
	ldrcc	r4, [sp, #16]
	movcc	r6, #1
	bcs	.L25
.L33:
	ldr	r3, [r10]
	mov	r1, r8
	ldr	lr, [r10]
	mov	r2, r6
	mov	r0, fp
	adds	r7, r4, #1
	ldr	r3, [r3, #16]
	ldr	r9, [lr, #8]
	mul	r9, r9, r4
	add	r9, r3, r9, lsl #1
	bl	jpeg_read_scanlines(PLT)
	mov	r2, r9
	mov	r0, r4
	ldr	r3, [r8]
	mov	r1, r5
	bl	libaroma_dither_24to16(PLT)
	ldr	r2, [fp, #148]
	mov	r4, r7
	ldr	r3, [fp, #124]
	cmp	r2, r3
	bcc	.L33
	ldr	r0, [r8]
.L25:
	add	r4, sp, #32
	bl	free(PLT)
	mov	r0, r4
	bl	jpeg_finish_decompress(PLT)
	mov	r0, r4
	bl	jpeg_destroy_decompress(PLT)
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L34
.L39:
	ldr	r0, [sp, #12]
	bl	libaroma_stream_close(PLT)
	b	.L34
.L23:
	ldr	r2, [fp, #124]
	ldr	r3, [fp, #148]
	cmp	r2, r3
	bls	.L25
	mov	r9, r4
.L31:
	ldr	r4, [r10]
	mov	r0, fp
	ldr	r5, [r10]
	mov	r1, r8
	ldr	r3, [r10]
	movs	r2, #1
	ldr	r6, [r10]
	ldr	r5, [r5, #8]
	ldr	r3, [r3, #24]
	ldr	r6, [r6, #8]
	ldr	r4, [r4, #16]
	mul	r5, r5, r9
	mla	r6, r6, r9, r3
	add	r5, r4, r5, lsl #1
	bl	jpeg_read_scanlines(PLT)
	cmp	r7, #0
	it	gt
	movgt	r3, #0
	ble	.L29
.L30:
	ldr	r2, [r8]
	adds	r1, r3, #1
	adds	r0, r3, #2
	ldrb	ip, [r2, r3]	@ zero_extendqisi2
	ldrb	r4, [r2, r0]	@ zero_extendqisi2
	ldrb	lr, [r2, r1]	@ zero_extendqisi2
	lsr	ip, ip, #3
	lsl	ip, ip, #11
	lsr	lr, lr, #2
	orr	r4, ip, r4, lsr #3
	orr	r4, r4, lr, lsl #5
	strh	r4, [r5], #2	@ movhi
	ldrb	r4, [r2, r3]	@ zero_extendqisi2
	adds	r3, r3, #3
	ldrb	r0, [r2, r0]	@ zero_extendqisi2
	cmp	r7, r3
	ldrb	r2, [r2, r1]	@ zero_extendqisi2
	and	r1, r4, #7
	and	r0, r0, #7
	orr	r1, r0, r1, lsl #5
	and	r2, r2, #3
	orr	r2, r1, r2, lsl #3
	strb	r2, [r6], #1
	bgt	.L30
.L29:
	ldr	r2, [fp, #148]
	add	r9, r9, #1
	ldr	r3, [fp, #124]
	cmp	r2, r3
	bcc	.L31
	ldr	r0, [sp, #24]
	b	.L25
.L40:
	mov	r0, fp
	bl	jpeg_finish_decompress(PLT)
	mov	r0, fp
	bl	jpeg_destroy_decompress(PLT)
	b	.L21
.L42:
	.align	2
.L41:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC17+4)
	.word	_libaroma_jpeg_error_exit(GOT)
	.size	libaroma_jpeg_ex, .-libaroma_jpeg_ex
	.section	.text.libaroma_jpeg_draw,"ax",%progbits
	.align	2
	.global	libaroma_jpeg_draw
	.thumb
	.thumb_func
	.type	libaroma_jpeg_draw, %function
libaroma_jpeg_draw:
	@ args = 16, pretend = 0, frame = 1056
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subw	sp, sp, #1084
	str	r3, [sp, #44]
	movs	r4, #0
	ldrb	r3, [sp, #1132]	@ zero_extendqisi2
	str	r0, [sp, #28]
	strb	r4, [sp, #55]
	str	r3, [sp, #40]
	ldr	r3, [sp, #28]
	ldr	r4, .L73
	str	r1, [sp, #36]
	str	r2, [sp, #32]
.LPIC18:
	add	r4, pc
	cbz	r3, .L66
	cbz	r2, .L46
	add	r5, sp, #552
	mov	r0, r5
	bl	jpeg_std_error(PLT)
	ldr	r3, .L73+4
	str	r0, [sp, #72]
	add	r0, sp, #688
	ldr	r3, [r4, r3]
	str	r3, [r5]
	bl	_setjmp(PLT)
	mov	r5, r0
	cbz	r0, .L47
	add	r0, sp, #72
	bl	jpeg_destroy_decompress(PLT)
.L46:
	ldr	r3, [sp, #36]
	cmp	r3, #0
	bne	.L68
.L66:
	ldrb	r0, [sp, #55]	@ zero_extendqisi2
	uxtb	r0, r0
	addw	sp, sp, #1084
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L47:
	add	r4, sp, #72
	movs	r1, #62
	mov	r0, r4
	mov	r2, #480
	bl	jpeg_CreateDecompress(PLT)
	ldr	r3, [sp, #28]
	mov	r0, r4
	ldmia	r3, {r1, r2}
	bl	_libaroma_jpeg_mem_src(PLT)
	movs	r1, #1
	mov	r0, r4
	bl	jpeg_read_header(PLT)
	mov	r0, r4
	bl	jpeg_start_decompress(PLT)
	ldr	r7, [r4, #120]
	ldr	r3, [sp, #1124]
	ldr	r6, [r4, #124]
	cmp	r7, r3
	beq	.L69
.L49:
	movs	r4, #0
	mov	r1, r6
	str	r4, [sp]
	mov	r0, r7
	mov	r2, r4
	mov	r3, r4
	add	r5, sp, #72
	add	r8, sp, #56
	ldr	r9, [r5, #132]
	bl	libaroma_canvas_new_ex(PLT)
	mov	r6, r0
	str	r0, [r8]
	cmp	r0, #0
	beq	.L70
	mul	r0, r9, r7
	add	r9, sp, #64
	bl	malloc(PLT)
	ldr	r2, [r5, #124]
	ldr	r3, [r5, #148]
	str	r0, [r9]
	cmp	r2, r3
	bls	.L57
	ldr	r3, [sp, #40]
	cmp	r3, #0
	bne	.L58
	mov	r4, r3
	mov	r10, #1
	b	.L60
.L71:
	ldr	r6, [r8]
.L60:
	ldr	lr, [r6, #8]
	mov	r1, r9
	ldr	r3, [r6, #16]
	mov	r2, r10
	mov	r0, r5
	mul	r6, lr, r4
	adds	r4, r4, #1
	add	r6, r3, r6, lsl #1
	bl	jpeg_read_scanlines(PLT)
	mov	r2, r7
	mov	r0, r6
	ldr	r1, [r9]
	bl	libaroma_color_24to16(PLT)
	ldr	r2, [r5, #124]
	ldr	r3, [r5, #148]
	cmp	r2, r3
	bhi	.L71
	ldr	r0, [sp, #64]
.L57:
	bl	free(PLT)
	ldr	r3, [sp, #1124]
	add	r6, sp, #56
	ldr	r5, [r6]
	movs	r4, #0
	str	r4, [sp, #8]
	str	r3, [sp]
	ldr	r3, [sp, #1128]
	mov	r1, r5
	str	r4, [sp, #12]
	ldr	r2, [sp, #44]
	str	r3, [sp, #4]
	ldr	r7, [r5]
	ldr	r3, [sp, #1120]
	ldr	r0, [sp, #32]
	str	r7, [sp, #16]
	ldr	r5, [r5, #4]
	str	r5, [sp, #20]
	bl	libaroma_draw_scale_nearest(PLT)
	mov	r0, r6
	mov	r1, r4
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r2, #1
	strb	r2, [sp, #55]
.L55:
	add	r4, sp, #72
	mov	r0, r4
	bl	jpeg_finish_decompress(PLT)
	mov	r0, r4
	bl	jpeg_destroy_decompress(PLT)
	ldr	r3, [sp, #36]
	cmp	r3, #0
	beq	.L66
.L68:
	ldr	r0, [sp, #28]
	bl	libaroma_stream_close(PLT)
	ldrb	r0, [sp, #55]	@ zero_extendqisi2
	uxtb	r0, r0
	addw	sp, sp, #1084
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L69:
	ldr	r3, [sp, #1128]
	cmp	r6, r3
	bne	.L49
	ldr	r3, [sp, #1124]
	add	r8, sp, #64
	ldr	r0, [r4, #132]
	mul	r0, r0, r3
	bl	malloc(PLT)
	ldr	r3, [r4, #148]
	str	r0, [r8]
	cmp	r6, r3
	bls	.L50
	ldr	r3, [sp, #40]
	ldr	r7, [sp, #44]
	cmp	r3, #0
	bne	.L51
	ldr	r5, [sp, #1120]
	mov	r9, #1
	ldr	r10, [sp, #32]
.L53:
	ldr	r3, [r10, #8]
	mov	r1, r8
	mov	r2, r9
	mov	r0, r4
	mla	fp, r3, r5, r7
	ldr	r3, [r10, #16]
	adds	r5, r5, #1
	add	fp, r3, fp, lsl #1
	bl	jpeg_read_scanlines(PLT)
	mov	r0, fp
	ldr	r1, [r8]
	ldr	r2, [sp, #1124]
	bl	libaroma_color_24to16(PLT)
	ldr	r3, [r4, #148]
	cmp	r6, r3
	bhi	.L53
.L52:
	ldr	r0, [sp, #64]
.L50:
	bl	free(PLT)
	movs	r2, #1
	strb	r2, [sp, #55]
	b	.L55
.L58:
	mov	r10, #1
	b	.L61
.L72:
	ldr	r6, [r8]
.L61:
	ldr	lr, [r6, #8]
	mov	r1, r9
	ldr	r3, [r6, #16]
	mov	r2, r10
	mov	r0, r5
	mul	r6, lr, r4
	add	r6, r3, r6, lsl #1
	bl	jpeg_read_scanlines(PLT)
	mov	r0, r4
	mov	r2, r6
	ldr	r3, [r9]
	mov	r1, r7
	bl	libaroma_dither_24to16(PLT)
	ldr	r2, [r5, #148]
	adds	r4, r4, #1
	ldr	r3, [r5, #124]
	cmp	r2, r3
	bcc	.L72
	ldr	r0, [sp, #64]
	b	.L57
.L70:
	mov	r0, r5
	bl	jpeg_finish_decompress(PLT)
	mov	r0, r5
	bl	jpeg_destroy_decompress(PLT)
	b	.L46
.L51:
	ldr	r10, [sp, #32]
	mov	r9, #1
.L54:
	ldr	r3, [r10, #8]
	mov	r1, r8
	ldr	fp, [sp, #1120]
	mov	r2, r9
	mov	r0, r4
	add	fp, fp, r5
	mla	fp, r3, fp, r7
	ldr	r3, [r10, #16]
	add	fp, r3, fp, lsl #1
	bl	jpeg_read_scanlines(PLT)
	mov	r0, r5
	ldr	r3, [r8]
	ldr	r1, [sp, #1124]
	mov	r2, fp
	bl	libaroma_dither_24to16(PLT)
	ldr	r3, [r4, #148]
	adds	r5, r5, #1
	cmp	r6, r3
	bhi	.L54
	b	.L52
.L74:
	.align	2
.L73:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC18+4)
	.word	_libaroma_jpeg_error_exit(GOT)
	.size	libaroma_jpeg_draw, .-libaroma_jpeg_draw
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
