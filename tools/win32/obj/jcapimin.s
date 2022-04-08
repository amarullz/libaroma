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
	.file	"jcapimin.c"
	.section	.text.jpeg_CreateCompress,"ax",%progbits
	.align	2
	.global	jpeg_CreateCompress
	.thumb
	.thumb_func
	.type	jpeg_CreateCompress, %function
jpeg_CreateCompress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #62
	push	{r3, r4, r5, r6, r7, lr}
	mov	r3, #0
	mov	r4, r0
	mov	r5, r2
	str	r3, [r0, #4]
	beq	.L2
	ldr	r3, [r0]
	movs	r2, #62
	movs	r6, #12
	str	r2, [r3, #24]
	ldr	r2, [r0]
	str	r6, [r3, #20]
	str	r1, [r2, #28]
	ldr	r3, [r0]
	ldr	r3, [r3]
	blx	r3
.L2:
	cmp	r5, #376
	beq	.L3
	ldr	r3, [r4]
	mov	r2, #376
	movs	r1, #21
	mov	r0, r4
	str	r2, [r3, #24]
	ldr	r2, [r4]
	str	r1, [r3, #20]
	str	r5, [r2, #28]
	ldr	r3, [r4]
	ldr	r3, [r3]
	blx	r3
.L3:
	ldr	r7, [r4]
	movs	r1, #0
	ldr	r6, [r4, #12]
	mov	r2, #376
	mov	r0, r4
	mov	r5, r1
	bl	memset(PLT)
	mov	r0, r4
	str	r7, [r4]
	str	r6, [r4, #12]
	bl	jinit_memory_mgr(PLT)
	mov	r1, r5
	movs	r2, #16
	str	r5, [r4, #8]
	add	r0, r4, #88
	str	r5, [r4, #24]
	str	r5, [r4, #68]
	str	r5, [r4, #72]
	str	r5, [r4, #76]
	str	r5, [r4, #80]
	str	r5, [r4, #84]
	bl	memset(PLT)
	mov	r1, r5
	movs	r2, #16
	add	r0, r4, #104
	bl	memset(PLT)
	movs	r3, #0
	movs	r2, #0
	movt	r3, 16368
	movs	r1, #100
	str	r5, [r4, #368]
	strd	r2, [r4, #48]
	str	r1, [r4, #20]
	pop	{r3, r4, r5, r6, r7, pc}
	.size	jpeg_CreateCompress, .-jpeg_CreateCompress
	.section	.text.jpeg_destroy_compress,"ax",%progbits
	.align	2
	.global	jpeg_destroy_compress
	.thumb
	.thumb_func
	.type	jpeg_destroy_compress, %function
jpeg_destroy_compress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	jpeg_destroy(PLT)
	.size	jpeg_destroy_compress, .-jpeg_destroy_compress
	.section	.text.jpeg_abort_compress,"ax",%progbits
	.align	2
	.global	jpeg_abort_compress
	.thumb
	.thumb_func
	.type	jpeg_abort_compress, %function
jpeg_abort_compress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	jpeg_abort(PLT)
	.size	jpeg_abort_compress, .-jpeg_abort_compress
	.section	.text.jpeg_suppress_tables,"ax",%progbits
	.align	2
	.global	jpeg_suppress_tables
	.thumb
	.thumb_func
	.type	jpeg_suppress_tables, %function
jpeg_suppress_tables:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #72]
	cbz	r3, .L15
	str	r1, [r3, #128]
.L15:
	ldr	r3, [r0, #76]
	cbz	r3, .L16
	str	r1, [r3, #128]
.L16:
	ldr	r3, [r0, #80]
	cbz	r3, .L17
	str	r1, [r3, #128]
.L17:
	ldr	r3, [r0, #84]
	cbz	r3, .L18
	str	r1, [r3, #128]
.L18:
	ldr	r3, [r0, #88]
	cbz	r3, .L19
	str	r1, [r3, #276]
.L19:
	ldr	r3, [r0, #104]
	cbz	r3, .L20
	str	r1, [r3, #276]
.L20:
	ldr	r3, [r0, #92]
	cbz	r3, .L21
	str	r1, [r3, #276]
.L21:
	ldr	r3, [r0, #108]
	cbz	r3, .L22
	str	r1, [r3, #276]
.L22:
	ldr	r3, [r0, #96]
	cbz	r3, .L23
	str	r1, [r3, #276]
.L23:
	ldr	r3, [r0, #112]
	cbz	r3, .L24
	str	r1, [r3, #276]
.L24:
	ldr	r3, [r0, #100]
	cbz	r3, .L25
	str	r1, [r3, #276]
.L25:
	ldr	r3, [r0, #116]
	cbz	r3, .L14
	str	r1, [r3, #276]
.L14:
	bx	lr
	.size	jpeg_suppress_tables, .-jpeg_suppress_tables
	.section	.text.jpeg_finish_compress,"ax",%progbits
	.align	2
	.global	jpeg_finish_compress
	.thumb
	.thumb_func
	.type	jpeg_finish_compress, %function
jpeg_finish_compress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	sub	r2, r3, #101
	cmp	r2, #1
	bls	.L84
	cmp	r3, #103
	beq	.L67
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L67:
	ldr	r3, [r4, #332]
	movs	r6, #24
	ldr	r2, [r3, #16]
	cmp	r2, #0
	bne	.L70
.L75:
	ldr	r3, [r3]
	mov	r0, r4
	blx	r3
	ldr	r2, [r4, #240]
	movs	r5, #0
	cbnz	r2, .L74
	b	.L73
.L72:
	ldr	r2, [r4, #240]
	cmp	r2, r5
	bls	.L73
.L74:
	ldr	r3, [r4, #8]
	mov	r0, r4
	cbz	r3, .L71
	str	r5, [r3, #4]
	str	r2, [r3, #8]
	ldr	r3, [r3]
	blx	r3
.L71:
	ldr	r3, [r4, #344]
	mov	r0, r4
	movs	r1, #0
	adds	r5, r5, #1
	ldr	r3, [r3, #4]
	blx	r3
	cmp	r0, #0
	bne	.L72
	ldr	r3, [r4]
	mov	r0, r4
	str	r6, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r4, #240]
	cmp	r2, r5
	bhi	.L74
.L73:
	ldr	r3, [r4, #332]
	mov	r0, r4
	ldr	r3, [r3, #8]
	blx	r3
	ldr	r3, [r4, #332]
	ldr	r2, [r3, #16]
	cmp	r2, #0
	beq	.L75
.L70:
	ldr	r3, [r4, #348]
	mov	r0, r4
	ldr	r3, [r3, #12]
	blx	r3
	ldr	r3, [r4, #24]
	mov	r0, r4
	ldr	r3, [r3, #16]
	blx	r3
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	b	jpeg_abort(PLT)
.L84:
	ldr	r2, [r0, #224]
	ldr	r3, [r0, #32]
	cmp	r2, r3
	bcc	.L85
.L65:
	ldr	r3, [r4, #332]
	mov	r0, r4
	ldr	r3, [r3, #8]
	blx	r3
	b	.L67
.L85:
	ldr	r3, [r0]
	movs	r2, #67
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L65
	.size	jpeg_finish_compress, .-jpeg_finish_compress
	.section	.text.jpeg_write_marker,"ax",%progbits
	.align	2
	.global	jpeg_write_marker
	.thumb
	.thumb_func
	.type	jpeg_write_marker, %function
jpeg_write_marker:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	ldr	r0, [r0, #224]
	mov	r4, r3
	mov	r7, r1
	mov	r5, r2
	ldr	r3, [r6, #20]
	cbnz	r0, .L88
	sub	r2, r3, #101
	cmp	r2, #2
	bhi	.L88
.L89:
	ldr	r3, [r6, #348]
	mov	r1, r7
	mov	r0, r6
	mov	r2, r4
	ldr	r3, [r3, #20]
	blx	r3
	ldr	r3, [r6, #348]
	ldr	r7, [r3, #24]
	cbz	r4, .L86
.L92:
	mov	r0, r6
	ldrb	r1, [r5], #1	@ zero_extendqisi2
	blx	r7
	subs	r4, r4, #1
	bne	.L92
.L86:
	pop	{r3, r4, r5, r6, r7, pc}
.L88:
	ldr	r2, [r6]
	movs	r1, #20
	mov	r0, r6
	str	r3, [r2, #24]
	ldr	r3, [r6]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L89
	.size	jpeg_write_marker, .-jpeg_write_marker
	.section	.text.jpeg_write_m_header,"ax",%progbits
	.align	2
	.global	jpeg_write_m_header
	.thumb
	.thumb_func
	.type	jpeg_write_m_header, %function
jpeg_write_m_header:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #224]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	mov	r7, r1
	mov	r6, r2
	cbnz	r3, .L102
	ldr	r3, [r0, #20]
	sub	r2, r3, #101
	cmp	r2, #2
	bls	.L100
.L99:
	ldr	r5, [r4]
	movs	r2, #20
	mov	r0, r4
	str	r3, [r5, #24]
	ldr	r3, [r4]
	str	r2, [r5, #20]
	ldr	r3, [r3]
	blx	r3
.L100:
	ldr	r3, [r4, #348]
	mov	r1, r7
	mov	r2, r6
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, lr}
	ldr	r3, [r3, #20]
	bx	r3	@ indirect register sibling call
.L102:
	ldr	r3, [r0, #20]
	b	.L99
	.size	jpeg_write_m_header, .-jpeg_write_m_header
	.section	.text.jpeg_write_m_byte,"ax",%progbits
	.align	2
	.global	jpeg_write_m_byte
	.thumb
	.thumb_func
	.type	jpeg_write_m_byte, %function
jpeg_write_m_byte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #348]
	ldr	r3, [r3, #24]
	bx	r3	@ indirect register sibling call
	.size	jpeg_write_m_byte, .-jpeg_write_m_byte
	.section	.text.jpeg_write_tables,"ax",%progbits
	.align	2
	.global	jpeg_write_tables
	.thumb
	.thumb_func
	.type	jpeg_write_tables, %function
jpeg_write_tables:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, lr}
	mov	r4, r0
	cmp	r3, #100
	beq	.L105
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L105:
	ldr	r3, [r4]
	mov	r0, r4
	ldr	r3, [r3, #16]
	blx	r3
	ldr	r3, [r4, #24]
	mov	r0, r4
	ldr	r3, [r3, #8]
	blx	r3
	mov	r0, r4
	bl	jinit_marker_writer(PLT)
	ldr	r3, [r4, #348]
	mov	r0, r4
	ldr	r3, [r3, #16]
	blx	r3
	ldr	r3, [r4, #24]
	mov	r0, r4
	pop	{r4, lr}
	ldr	r3, [r3, #16]
	bx	r3	@ indirect register sibling call
	.size	jpeg_write_tables, .-jpeg_write_tables
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
