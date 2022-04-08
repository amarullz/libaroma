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
	.file	"jdapimin.c"
	.section	.text.jpeg_CreateDecompress,"ax",%progbits
	.align	2
	.global	jpeg_CreateDecompress
	.thumb
	.thumb_func
	.type	jpeg_CreateDecompress, %function
jpeg_CreateDecompress:
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
	cmp	r5, #480
	beq	.L3
	ldr	r3, [r4]
	mov	r2, #480
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
	mov	r2, #480
	mov	r0, r4
	mov	r5, r1
	bl	memset(PLT)
	movs	r3, #1
	mov	r0, r4
	str	r3, [r4, #16]
	str	r7, [r4]
	str	r6, [r4, #12]
	bl	jinit_memory_mgr(PLT)
	mov	r1, r5
	movs	r2, #16
	str	r5, [r4, #8]
	add	r0, r4, #188
	str	r5, [r4, #24]
	str	r5, [r4, #172]
	str	r5, [r4, #176]
	str	r5, [r4, #180]
	str	r5, [r4, #184]
	bl	memset(PLT)
	mov	r1, r5
	movs	r2, #16
	add	r0, r4, #204
	bl	memset(PLT)
	mov	r0, r4
	str	r5, [r4, #316]
	bl	jinit_marker_reader(PLT)
	mov	r0, r4
	bl	jinit_input_controller(PLT)
	movs	r3, #200
	str	r3, [r4, #20]
	pop	{r3, r4, r5, r6, r7, pc}
	.size	jpeg_CreateDecompress, .-jpeg_CreateDecompress
	.section	.text.jpeg_destroy_decompress,"ax",%progbits
	.align	2
	.global	jpeg_destroy_decompress
	.thumb
	.thumb_func
	.type	jpeg_destroy_decompress, %function
jpeg_destroy_decompress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	jpeg_destroy(PLT)
	.size	jpeg_destroy_decompress, .-jpeg_destroy_decompress
	.section	.text.jpeg_abort_decompress,"ax",%progbits
	.align	2
	.global	jpeg_abort_decompress
	.thumb
	.thumb_func
	.type	jpeg_abort_decompress, %function
jpeg_abort_decompress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	jpeg_abort(PLT)
	.size	jpeg_abort_decompress, .-jpeg_abort_decompress
	.section	.text.jpeg_consume_input,"ax",%progbits
	.align	2
	.global	jpeg_consume_input
	.thumb
	.thumb_func
	.type	jpeg_consume_input, %function
jpeg_consume_input:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #20]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	r3, r2, #200
	cmp	r3, #10
	bhi	.L15
	tbb	[pc, r3]
.L17:
	.byte	(.L16-.L17)/2
	.byte	(.L18-.L17)/2
	.byte	(.L40-.L17)/2
	.byte	(.L20-.L17)/2
	.byte	(.L20-.L17)/2
	.byte	(.L20-.L17)/2
	.byte	(.L20-.L17)/2
	.byte	(.L20-.L17)/2
	.byte	(.L20-.L17)/2
	.byte	(.L15-.L17)/2
	.byte	(.L20-.L17)/2
	.align	1
.L16:
	ldr	r3, [r4, #448]
	mov	r0, r4
	ldr	r3, [r3, #12]
	blx	r3
	ldr	r3, [r4, #24]
	mov	r0, r4
	ldr	r3, [r3, #16]
	blx	r3
	movs	r3, #201
	str	r3, [r4, #20]
.L18:
	ldr	r3, [r4, #448]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	cmp	r0, #1
	mov	r5, r0
	beq	.L58
.L19:
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.L40:
	movs	r5, #1
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.L20:
	ldr	r3, [r4, #448]
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, lr}
	ldr	r3, [r3]
	bx	r3
.L15:
	ldr	r3, [r4]
	movs	r1, #20
	mov	r0, r4
	movs	r5, #0
	str	r2, [r3, #24]
	ldr	r2, [r4]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, pc}
.L58:
	ldr	r6, [r4, #40]
	cmp	r6, #3
	beq	.L22
	cmp	r6, #4
	beq	.L23
	cmp	r6, #1
	itt	eq
	streq	r0, [r4, #44]
	streq	r0, [r4, #48]
	beq	.L25
	movs	r3, #0
	str	r3, [r4, #44]
	str	r3, [r4, #48]
.L25:
	movs	r3, #0
	movs	r1, #0
	movs	r0, #1
	movs	r2, #0
	movt	r3, 16368
	mov	lr, #2
	mov	r7, #256
	movs	r6, #202
	strd	r2, [r4, #64]
	str	r0, [r4, #52]
	str	r0, [r4, #56]
	str	r0, [r4, #84]
	str	r0, [r4, #88]
	str	r0, [r4, #100]
	str	r1, [r4, #72]
	str	r1, [r4, #76]
	str	r1, [r4, #80]
	str	r1, [r4, #92]
	str	r1, [r4, #144]
	str	r1, [r4, #108]
	str	r1, [r4, #112]
	str	r1, [r4, #116]
	str	lr, [r4, #96]
	str	r7, [r4, #104]
	str	r6, [r4, #20]
	b	.L19
.L22:
	ldr	r3, [r4, #292]
	cmp	r3, #0
	bne	.L54
	ldr	r3, [r4, #304]
	cmp	r3, #0
	beq	.L28
	ldrb	r3, [r4, #308]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L55
	cmp	r3, #1
	beq	.L56
	ldr	r3, [r4]
	movs	r2, #114
	mov	r0, r4
	mov	r1, #-1
	str	r2, [r3, #20]
	ldrb	r2, [r4, #308]	@ zero_extendqisi2
	str	r2, [r3, #24]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	blx	r3
.L56:
	str	r6, [r4, #44]
.L27:
	movs	r3, #2
	str	r3, [r4, #48]
	b	.L25
.L23:
	ldr	r3, [r4, #304]
	cmp	r3, #0
	beq	.L35
	ldrb	r3, [r4, #308]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L35
	cmp	r3, #2
	beq	.L57
	ldr	r3, [r4]
	movs	r2, #114
	mov	r0, r4
	mov	r1, #-1
	str	r2, [r3, #20]
	ldrb	r2, [r4, #308]	@ zero_extendqisi2
	str	r2, [r3, #24]
	ldr	r3, [r4]
	ldr	r3, [r3, #4]
	blx	r3
.L57:
	movs	r3, #5
	str	r3, [r4, #44]
.L39:
	movs	r3, #4
	str	r3, [r4, #48]
	b	.L25
.L28:
	ldr	r3, [r4, #224]
	ldr	r6, [r3]
	ldr	r2, [r3, #84]
	ldr	r7, [r3, #168]
	cmp	r6, #1
	it	eq
	cmpeq	r2, #2
	bne	.L32
	cmp	r7, #3
	beq	.L54
.L32:
	cmp	r6, #82
	it	eq
	cmpeq	r2, #71
	bne	.L34
	cmp	r7, #66
	beq	.L55
.L34:
	ldr	r3, [r4]
	mov	lr, #111
	mov	r0, r4
	movs	r1, #1
	str	r6, [r3, #24]
	str	r2, [r3, #28]
	str	r7, [r3, #32]
	str	lr, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
.L54:
	movs	r3, #3
	str	r3, [r4, #44]
	b	.L27
.L35:
	str	r6, [r4, #44]
	b	.L39
.L55:
	movs	r3, #2
	str	r3, [r4, #44]
	b	.L27
	.size	jpeg_consume_input, .-jpeg_consume_input
	.section	.text.jpeg_read_header,"ax",%progbits
	.align	2
	.global	jpeg_read_header
	.thumb
	.thumb_func
	.type	jpeg_read_header, %function
jpeg_read_header:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	mov	r6, r1
	sub	r2, r3, #200
	cmp	r2, #1
	bls	.L60
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L60:
	mov	r0, r4
	bl	jpeg_consume_input(PLT)
	cmp	r0, #2
	mov	r5, r0
	beq	.L68
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L68:
	cbnz	r6, .L69
.L63:
	mov	r0, r4
	bl	jpeg_abort(PLT)
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L69:
	ldr	r3, [r4]
	movs	r2, #51
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L63
	.size	jpeg_read_header, .-jpeg_read_header
	.section	.text.jpeg_input_complete,"ax",%progbits
	.align	2
	.global	jpeg_input_complete
	.thumb
	.thumb_func
	.type	jpeg_input_complete, %function
jpeg_input_complete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, lr}
	mov	r4, r0
	sub	r2, r3, #200
	cmp	r2, #10
	bls	.L71
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L71:
	ldr	r3, [r4, #448]
	ldr	r0, [r3, #28]
	pop	{r4, pc}
	.size	jpeg_input_complete, .-jpeg_input_complete
	.section	.text.jpeg_has_multiple_scans,"ax",%progbits
	.align	2
	.global	jpeg_has_multiple_scans
	.thumb
	.thumb_func
	.type	jpeg_has_multiple_scans, %function
jpeg_has_multiple_scans:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, lr}
	mov	r4, r0
	sub	r2, r3, #202
	cmp	r2, #8
	bls	.L74
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L74:
	ldr	r3, [r4, #448]
	ldr	r0, [r3, #24]
	pop	{r4, pc}
	.size	jpeg_has_multiple_scans, .-jpeg_has_multiple_scans
	.section	.text.jpeg_finish_decompress,"ax",%progbits
	.align	2
	.global	jpeg_finish_decompress
	.thumb
	.thumb_func
	.type	jpeg_finish_decompress, %function
jpeg_finish_decompress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, lr}
	mov	r4, r0
	sub	r2, r3, #205
	cmp	r2, #1
	bls	.L85
	cmp	r3, #207
	itt	eq
	moveq	r3, #210
	streq	r3, [r0, #20]
	beq	.L79
	cmp	r3, #210
	bne	.L78
.L79:
	ldr	r3, [r4, #24]
	mov	r0, r4
	ldr	r3, [r3, #32]
	blx	r3
	mov	r0, r4
	bl	jpeg_abort(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L85:
	ldr	r2, [r0, #72]
	cbz	r2, .L86
.L78:
	ldr	r2, [r4]
	movs	r1, #20
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L79
.L86:
	ldr	r2, [r0, #124]
	ldr	r3, [r0, #432]
	str	r2, [r0, #148]
	ldr	r3, [r3, #4]
	blx	r3
	movs	r3, #210
	str	r3, [r4, #20]
	b	.L79
	.size	jpeg_finish_decompress, .-jpeg_finish_decompress
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
