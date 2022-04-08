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
	.file	"jcmarker.c"
	.section	.text.write_marker_byte,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	write_marker_byte, %function
write_marker_byte:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r2, [r3]
	adds	r5, r2, #1
	str	r5, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L7
.L1:
	pop	{r4, r5, r6, pc}
.L7:
	ldr	r3, [r3, #12]
	blx	r3
	cmp	r0, #0
	bne	.L1
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
	.size	write_marker_byte, .-write_marker_byte
	.section	.text.write_file_trailer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	write_file_trailer, %function
write_file_trailer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	movs	r1, #255
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r2, [r3]
	adds	r5, r2, #1
	str	r5, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L16
.L10:
	ldr	r3, [r4, #24]
	movs	r1, #217
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L17
.L8:
	pop	{r4, r5, r6, pc}
.L16:
	ldr	r3, [r3, #12]
	blx	r3
	cmp	r0, #0
	bne	.L10
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L10
.L17:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L8
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
	.size	write_file_trailer, .-write_file_trailer
	.section	.text.write_marker_header,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	write_marker_header, %function
write_marker_header:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #65533
	push	{r4, r5, r6, lr}
	cmp	r2, r3
	mov	r5, r2
	mov	r6, r1
	mov	r4, r0
	bls	.L19
	ldr	r3, [r0]
	movs	r2, #11
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L19:
	ldr	r3, [r4, #24]
	movs	r1, #255
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L33
.L21:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r6, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L34
.L24:
	ldr	r3, [r4, #24]
	adds	r5, r5, #2
	ubfx	r1, r5, #8, #8
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L35
.L27:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r5, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L36
.L18:
	pop	{r4, r5, r6, pc}
.L33:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L21
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L21
.L36:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L18
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L35:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L27
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L27
.L34:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L24
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L24
	.size	write_marker_header, .-write_marker_header
	.section	.text.emit_sof,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	emit_sof, %function
emit_sof:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r6, #255
	ldr	r3, [r0, #24]
	mov	r5, r1
	mov	r4, r0
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r6, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L83
.L39:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r5, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L84
.L42:
	ldr	r5, [r4, #60]
	ldr	r3, [r4, #24]
	add	r5, r5, r5, lsl #1
	ldr	r2, [r3]
	adds	r5, r5, #8
	adds	r0, r2, #1
	ubfx	r1, r5, #8, #8
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L85
.L45:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r5, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L86
.L48:
	ldr	r3, [r4, #32]
	cmp	r3, #65536
	bge	.L50
	ldr	r3, [r4, #28]
	cmp	r3, #65536
	bge	.L50
.L51:
	ldr	r3, [r4, #24]
	ldr	r1, [r4, #56]
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L87
.L53:
	ldr	r3, [r4, #24]
	ldr	r5, [r4, #32]
	ldr	r2, [r3]
	ubfx	r1, r5, #8, #8
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L88
.L56:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r5, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L89
.L59:
	ldr	r3, [r4, #24]
	ldr	r5, [r4, #28]
	ldr	r2, [r3]
	ubfx	r1, r5, #8, #8
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L90
.L62:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r5, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L91
.L65:
	ldr	r3, [r4, #24]
	ldr	r1, [r4, #60]
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L92
.L68:
	ldr	r3, [r4, #60]
	ldr	r5, [r4, #68]
	cmp	r3, #0
	ble	.L37
	adds	r5, r5, #84
	movs	r6, #0
	movs	r7, #24
	b	.L81
.L72:
	ldr	r3, [r4, #24]
	ldr	r0, [r5, #-76]
	ldr	r1, [r5, #-72]
	ldr	r2, [r3]
	add	r1, r1, r0, lsl #4
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L93
.L75:
	ldr	r3, [r4, #24]
	adds	r5, r5, #84
	ldr	r1, [r5, #-152]
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L94
.L78:
	ldr	r3, [r4, #60]
	cmp	r3, r6
	ble	.L37
.L81:
	ldr	r3, [r4, #24]
	adds	r6, r6, #1
	ldr	r1, [r5, #-84]
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	bne	.L72
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L72
	ldr	r3, [r4]
	mov	r0, r4
	str	r7, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L72
.L50:
	ldr	r3, [r4]
	movw	r2, #65535
	movs	r1, #41
	mov	r0, r4
	str	r2, [r3, #24]
	ldr	r2, [r4]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L51
.L94:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L78
	ldr	r3, [r4]
	mov	r0, r4
	str	r7, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #60]
	cmp	r3, r6
	bgt	.L81
.L37:
	pop	{r3, r4, r5, r6, r7, pc}
.L93:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L75
	ldr	r3, [r4]
	mov	r0, r4
	str	r7, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L75
.L83:
	ldr	r3, [r3, #12]
	blx	r3
	cmp	r0, #0
	bne	.L39
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L39
.L92:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L68
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L68
.L91:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L65
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L65
.L90:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L62
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L62
.L89:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L59
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L59
.L88:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L56
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L56
.L87:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L53
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L53
.L86:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L48
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L48
.L85:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L45
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L45
.L84:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L42
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L42
	.size	emit_sof, .-emit_sof
	.section	.text.write_file_header,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	write_file_header, %function
write_file_header:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	movs	r1, #255
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, [r0, #348]
	ldr	r2, [r3]
	adds	r6, r2, #1
	str	r6, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L217
.L97:
	ldr	r3, [r4, #24]
	movs	r1, #216
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L218
.L100:
	ldr	r3, [r4, #208]
	movs	r2, #0
	str	r2, [r5, #28]
	cmp	r3, #0
	bne	.L219
.L103:
	ldr	r3, [r4, #220]
	cbnz	r3, .L220
.L95:
	pop	{r4, r5, r6, pc}
.L217:
	ldr	r3, [r3, #12]
	blx	r3
	cmp	r0, #0
	bne	.L97
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L97
.L220:
	ldr	r3, [r4, #24]
	movs	r1, #255
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L221
.L159:
	ldr	r3, [r4, #24]
	movs	r1, #238
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L222
.L162:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L223
.L165:
	ldr	r3, [r4, #24]
	movs	r1, #14
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L224
.L168:
	ldr	r3, [r4, #24]
	movs	r1, #65
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L225
.L171:
	ldr	r3, [r4, #24]
	movs	r1, #100
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L226
.L174:
	ldr	r3, [r4, #24]
	movs	r1, #111
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L227
.L177:
	ldr	r3, [r4, #24]
	movs	r1, #98
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L228
.L180:
	ldr	r3, [r4, #24]
	movs	r1, #101
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L229
.L183:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L230
.L186:
	ldr	r3, [r4, #24]
	movs	r1, #100
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L231
.L189:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L232
.L192:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L233
.L195:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L234
.L198:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L235
.L201:
	ldr	r3, [r4, #64]
	cmp	r3, #3
	beq	.L204
	cmp	r3, #5
	bne	.L236
	ldr	r3, [r4, #24]
	movs	r1, #2
.L216:
	ldr	r2, [r3]
	adds	r0, r2, #1
.L214:
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	bne	.L95
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L95
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L218:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L100
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #208]
	movs	r2, #0
	str	r2, [r5, #28]
	cmp	r3, #0
	beq	.L103
.L219:
	ldr	r3, [r4, #24]
	movs	r1, #255
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L237
.L105:
	ldr	r3, [r4, #24]
	movs	r1, #224
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L238
.L108:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L239
.L111:
	ldr	r3, [r4, #24]
	movs	r1, #16
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L240
.L114:
	ldr	r3, [r4, #24]
	movs	r1, #74
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L241
.L117:
	ldr	r3, [r4, #24]
	movs	r1, #70
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L242
.L120:
	ldr	r3, [r4, #24]
	movs	r1, #73
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L243
.L123:
	ldr	r3, [r4, #24]
	movs	r1, #70
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L244
.L126:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L245
.L129:
	ldr	r3, [r4, #24]
	ldrb	r1, [r4, #212]	@ zero_extendqisi2
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L246
.L132:
	ldr	r3, [r4, #24]
	ldrb	r1, [r4, #213]	@ zero_extendqisi2
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L247
.L135:
	ldr	r3, [r4, #24]
	ldrb	r1, [r4, #214]	@ zero_extendqisi2
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L248
.L138:
	ldr	r3, [r4, #24]
	ldrh	r5, [r4, #216]
	ldr	r2, [r3]
	asrs	r1, r5, #8
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L249
.L141:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r5, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L250
.L144:
	ldr	r3, [r4, #24]
	ldrh	r5, [r4, #218]
	ldr	r2, [r3]
	asrs	r1, r5, #8
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L251
.L147:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r5, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L252
.L150:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L253
.L153:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	bne	.L103
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L103
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L103
.L236:
	ldr	r3, [r4, #24]
	movs	r1, #0
	b	.L216
.L253:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L153
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L153
.L252:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L150
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L150
.L251:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L147
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L147
.L250:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L144
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L144
.L249:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L141
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L141
.L248:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L138
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L138
.L247:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L135
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L135
.L246:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L132
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L132
.L245:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L129
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L129
.L244:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L126
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L126
.L243:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L123
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L123
.L242:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L120
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L120
.L241:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L117
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L117
.L240:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L114
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L114
.L239:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L111
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L111
.L238:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L108
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L108
.L237:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L105
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L105
.L235:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L201
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L201
.L234:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L198
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L198
.L221:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L159
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L159
.L225:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L171
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L171
.L224:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L168
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L168
.L223:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L165
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L165
.L222:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L162
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L162
.L233:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L195
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L195
.L232:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L192
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L192
.L231:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L189
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L189
.L230:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L186
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L186
.L229:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L183
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L183
.L228:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L180
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L180
.L227:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L177
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L177
.L226:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L174
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L174
.L204:
	ldr	r3, [r4, #24]
	movs	r1, #1
	ldr	r2, [r3]
	adds	r0, r2, r1
	b	.L214
	.size	write_file_header, .-write_file_header
	.section	.text.emit_dht,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	emit_dht, %function
emit_dht:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	mov	r4, r1
	cbz	r2, .L255
	add	r3, r1, #26
	adds	r4, r4, #16
	ldr	r7, [r0, r3, lsl #2]
.L256:
	cmp	r7, #0
	beq	.L314
.L257:
	ldr	r3, [r7, #276]
	cbz	r3, .L315
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L255:
	add	r3, r1, #22
	ldr	r7, [r0, r3, lsl #2]
	b	.L256
.L315:
	ldr	r3, [r5, #24]
	movs	r1, #255
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L316
.L260:
	ldr	r3, [r5, #24]
	movs	r1, #196
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L317
.L263:
	mvns	r2, r7
	ands	r2, r2, #7
	beq	.L291
	cmp	r2, #1
	ldrb	r3, [r7, #1]	@ zero_extendqisi2
	bls	.L292
	ldrb	r1, [r7, #2]	@ zero_extendqisi2
	cmp	r2, #2
	add	r3, r3, r1
	bls	.L293
	ldrb	r1, [r7, #3]	@ zero_extendqisi2
	cmp	r2, #3
	add	r3, r3, r1
	bls	.L294
	ldrb	r1, [r7, #4]	@ zero_extendqisi2
	cmp	r2, #4
	add	r3, r3, r1
	bls	.L295
	ldrb	r1, [r7, #5]	@ zero_extendqisi2
	cmp	r2, #5
	add	r3, r3, r1
	bls	.L296
	ldrb	r1, [r7, #6]	@ zero_extendqisi2
	cmp	r2, #6
	add	r3, r3, r1
	bls	.L297
	ldrb	r6, [r7, #7]	@ zero_extendqisi2
	movs	r0, #9
	movs	r1, #8
	add	r3, r3, r6
.L265:
	add	ip, r2, #1
	rsb	r2, r2, #16
	add	ip, ip, r7
	lsrs	r6, r2, #3
	vld1.64	{d16}, [ip:64]
	cmp	r6, #1
	lsl	lr, r6, #3
	vmovl.u8 q8, d16
	vmovl.u16 q9, d16
	vmovl.u16 q8, d17
	vadd.i32	d18, d19, d18
	vadd.i32	d20, d18, d16
	vadd.i32	d20, d20, d17
	bls	.L267
	vldr	d16, [ip, #8]
	vmovl.u8 q8, d16
	vmovl.u16 q9, d16
	vmovl.u16 q8, d17
	vadd.i32	d20, d20, d18
	vadd.i32	d20, d20, d19
	vadd.i32	d20, d20, d16
	vadd.i32	d20, d20, d17
.L267:
	vpadd.i32	d20, d20, d20
	cmp	lr, r2
	add	r1, r1, lr
	rsb	r0, lr, r0
	vmov.32	r6, d20[0]
	add	r6, r6, r3
	beq	.L269
	ldrb	r2, [r7, r1]	@ zero_extendqisi2
	cmp	r0, #1
	add	r3, r1, #1
	add	r6, r6, r2
	beq	.L269
	ldrb	r2, [r7, r3]	@ zero_extendqisi2
	cmp	r0, #2
	add	r3, r1, #2
	add	r6, r6, r2
	beq	.L269
	ldrb	r2, [r7, r3]	@ zero_extendqisi2
	cmp	r0, #3
	add	r3, r1, #3
	add	r6, r6, r2
	beq	.L269
	ldrb	r2, [r7, r3]	@ zero_extendqisi2
	cmp	r0, #4
	add	r3, r1, #4
	add	r6, r6, r2
	beq	.L269
	ldrb	r2, [r7, r3]	@ zero_extendqisi2
	cmp	r0, #5
	add	r3, r1, #5
	add	r6, r6, r2
	beq	.L269
	ldrb	r3, [r7, r3]	@ zero_extendqisi2
	cmp	r0, #6
	add	r1, r1, #6
	add	r6, r6, r3
	beq	.L269
	ldrb	r3, [r7, r1]	@ zero_extendqisi2
	add	r6, r6, r3
.L269:
	ldr	r3, [r5, #24]
	add	r8, r6, #19
	ubfx	r1, r8, #8, #8
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L318
.L272:
	ldr	r3, [r5, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r8, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L319
.L275:
	ldr	r3, [r5, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r4, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L320
.L278:
	mov	r9, r7
	movs	r4, #1
	mov	r8, #24
	b	.L284
.L281:
	cmp	r4, #17
	beq	.L321
.L284:
	ldr	r3, [r5, #24]
	adds	r4, r4, #1
	ldrb	r1, [r9, #1]!	@ zero_extendqisi2
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	bne	.L281
	ldr	r3, [r3, #12]
	mov	r0, r5
	blx	r3
	cmp	r0, #0
	bne	.L281
	ldr	r3, [r5]
	mov	r0, r5
	str	r8, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	cmp	r4, #17
	bne	.L284
.L321:
	cmp	r6, #0
	ittt	gt
	addgt	r4, r7, #16
	movgt	r8, #24
	addgt	r6, r6, r4
	bgt	.L290
	b	.L289
.L287:
	cmp	r4, r6
	beq	.L289
.L290:
	ldr	r3, [r5, #24]
	ldrb	r1, [r4, #1]!	@ zero_extendqisi2
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	bne	.L287
	ldr	r3, [r3, #12]
	mov	r0, r5
	blx	r3
	cmp	r0, #0
	bne	.L287
	ldr	r3, [r5]
	mov	r0, r5
	str	r8, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	cmp	r4, r6
	bne	.L290
.L289:
	movs	r3, #1
	str	r3, [r7, #276]
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L318:
	ldr	r3, [r3, #12]
	mov	r0, r5
	blx	r3
	cmp	r0, #0
	bne	.L272
	ldr	r3, [r5]
	movs	r2, #24
	mov	r0, r5
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L272
.L317:
	ldr	r3, [r3, #12]
	mov	r0, r5
	blx	r3
	cmp	r0, #0
	bne	.L263
	ldr	r3, [r5]
	movs	r2, #24
	mov	r0, r5
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L263
.L316:
	ldr	r3, [r3, #12]
	mov	r0, r5
	blx	r3
	cmp	r0, #0
	bne	.L260
	ldr	r3, [r5]
	movs	r2, #24
	mov	r0, r5
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L260
.L320:
	ldr	r3, [r3, #12]
	mov	r0, r5
	blx	r3
	cmp	r0, #0
	bne	.L278
	ldr	r3, [r5]
	movs	r2, #24
	mov	r0, r5
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L278
.L319:
	ldr	r3, [r3, #12]
	mov	r0, r5
	blx	r3
	cmp	r0, #0
	bne	.L275
	ldr	r3, [r5]
	movs	r2, #24
	mov	r0, r5
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L275
.L291:
	movs	r0, #16
	movs	r1, #1
	mov	r3, r2
	b	.L265
.L314:
	ldr	r3, [r5]
	movs	r1, #50
	mov	r0, r5
	str	r4, [r3, #24]
	ldr	r2, [r5]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L257
.L293:
	movs	r0, #14
	movs	r1, #3
	b	.L265
.L294:
	movs	r0, #13
	movs	r1, #4
	b	.L265
.L295:
	movs	r0, #12
	movs	r1, #5
	b	.L265
.L296:
	movs	r0, #11
	movs	r1, #6
	b	.L265
.L297:
	movs	r0, #10
	movs	r1, #7
	b	.L265
.L292:
	movs	r0, #15
	movs	r1, #2
	b	.L265
	.size	emit_dht, .-emit_dht
	.section	.text.write_scan_header,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	write_scan_header, %function
write_scan_header:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #180]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r5, [r0, #348]
	cmp	r3, #0
	bne	.L326
	ldr	r3, [r0, #244]
	cmp	r3, #0
	ble	.L326
	ldr	r2, [r0, #228]
	ldr	r6, [r0, #248]
	cmp	r2, #0
	beq	.L397
	ldr	r2, [r0, #316]
	cmp	r2, #0
	bne	.L398
	ldr	r2, [r0, #324]
	cmp	r2, #0
	beq	.L399
.L328:
	cmp	r3, #1
	ble	.L326
	ldr	r2, [r4, #228]
	ldr	r6, [r4, #252]
	cmp	r2, #0
	beq	.L400
	ldr	r2, [r4, #316]
	cmp	r2, #0
	bne	.L401
	ldr	r2, [r4, #324]
	cmp	r2, #0
	beq	.L402
.L331:
	cmp	r3, #2
	ble	.L326
	ldr	r2, [r4, #228]
	ldr	r6, [r4, #256]
	cmp	r2, #0
	beq	.L403
	ldr	r2, [r4, #316]
	cmp	r2, #0
	bne	.L404
	ldr	r2, [r4, #324]
	cmp	r2, #0
	beq	.L405
.L334:
	cmp	r3, #3
	ble	.L326
	ldr	r2, [r4, #228]
	ldr	r6, [r4, #260]
	cmp	r2, #0
	beq	.L336
	ldr	r3, [r4, #316]
	cmp	r3, #0
	bne	.L337
	ldr	r2, [r4, #324]
	cmp	r2, #0
	beq	.L406
.L326:
	ldr	r2, [r4, #200]
	ldr	r3, [r5, #28]
	cmp	r2, r3
	beq	.L325
	ldr	r3, [r4, #24]
	movs	r1, #255
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L407
.L340:
	ldr	r3, [r4, #24]
	movs	r1, #221
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L408
.L343:
	ldr	r3, [r4, #24]
	movs	r1, #0
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L409
.L346:
	ldr	r3, [r4, #24]
	movs	r1, #4
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L410
.L349:
	ldr	r3, [r4, #24]
	ldr	r6, [r4, #200]
	ldr	r2, [r3]
	ubfx	r1, r6, #8, #8
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L411
.L352:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r6, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L412
.L355:
	ldr	r3, [r4, #200]
	str	r3, [r5, #28]
.L325:
	ldr	r3, [r4, #24]
	movs	r1, #255
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L413
.L358:
	ldr	r3, [r4, #24]
	movs	r1, #218
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L414
.L361:
	ldr	r3, [r4, #24]
	ldr	r5, [r4, #244]
	ldr	r2, [r3]
	adds	r5, r5, #3
	lsls	r5, r5, #1
	adds	r0, r2, #1
	ubfx	r1, r5, #8, #8
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L415
.L364:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r5, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L416
.L367:
	ldr	r3, [r4, #24]
	ldr	r1, [r4, #244]
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L417
.L370:
	ldr	r3, [r4, #244]
	cmp	r3, #0
	ittt	gt
	movgt	r7, r4
	movgt	r6, #0
	movgt	r8, #24
	ble	.L385
.L386:
	ldr	r3, [r4, #24]
	ldr	r5, [r7, #248]
	ldr	r2, [r3]
	ldr	r1, [r5]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L418
.L376:
	ldr	r3, [r4, #228]
	ldr	r2, [r5, #20]
	ldr	r1, [r5, #24]
	cmp	r3, #0
	bne	.L378
	add	r1, r1, r2, lsl #4
	uxtb	r1, r1
.L379:
	ldr	r3, [r4, #24]
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L419
.L383:
	ldr	r3, [r4, #244]
	adds	r6, r6, #1
	adds	r7, r7, #4
	cmp	r6, r3
	blt	.L386
.L385:
	ldr	r3, [r4, #24]
	ldr	r1, [r4, #316]
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L420
.L387:
	ldr	r3, [r4, #24]
	ldr	r1, [r4, #320]
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L421
.L389:
	ldr	r3, [r4, #24]
	ldr	r0, [r4, #324]
	ldr	r1, [r4, #328]
	ldr	r2, [r3]
	add	r1, r1, r0, lsl #4
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L422
.L322:
	pop	{r4, r5, r6, r7, r8, pc}
.L378:
	ldr	r3, [r4, #316]
	cbnz	r3, .L396
	ldr	r3, [r4, #324]
	cbnz	r3, .L381
	lsls	r1, r2, #4
.L396:
	uxtb	r1, r1
	b	.L379
.L419:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L383
	ldr	r3, [r4]
	mov	r0, r4
	str	r8, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L383
.L418:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L376
	ldr	r3, [r4]
	mov	r0, r4
	str	r8, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L376
.L381:
	ldr	r1, [r4, #180]
	cmp	r1, #0
	beq	.L379
	lsls	r2, r2, #4
	uxtb	r1, r2
	b	.L379
.L412:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L355
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L355
.L411:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L352
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L352
.L410:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L349
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L349
.L409:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L346
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L346
.L408:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L343
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L343
.L407:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L340
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L340
.L420:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L387
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L387
.L417:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L370
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L370
.L416:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L367
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L367
.L415:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L364
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L364
.L422:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L322
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L421:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L389
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L389
.L414:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L361
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L361
.L413:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L358
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L358
.L399:
	ldr	r1, [r6, #20]
	bl	emit_dht(PLT)
	ldr	r3, [r4, #244]
	b	.L328
.L406:
	ldr	r1, [r6, #20]
	mov	r0, r4
	bl	emit_dht(PLT)
	b	.L326
.L402:
	ldr	r1, [r6, #20]
	mov	r0, r4
	bl	emit_dht(PLT)
	ldr	r3, [r4, #244]
	b	.L331
.L405:
	ldr	r1, [r6, #20]
	mov	r0, r4
	bl	emit_dht(PLT)
	ldr	r3, [r4, #244]
	b	.L334
.L336:
	mov	r0, r4
	ldr	r1, [r6, #20]
	bl	emit_dht(PLT)
	mov	r0, r4
	ldr	r1, [r6, #24]
	movs	r2, #1
	bl	emit_dht(PLT)
	b	.L326
.L403:
	mov	r0, r4
	ldr	r1, [r6, #20]
	bl	emit_dht(PLT)
	mov	r0, r4
	ldr	r1, [r6, #24]
	movs	r2, #1
	bl	emit_dht(PLT)
	ldr	r3, [r4, #244]
	b	.L334
.L397:
	ldr	r1, [r6, #20]
	bl	emit_dht(PLT)
	mov	r0, r4
	ldr	r1, [r6, #24]
	movs	r2, #1
	bl	emit_dht(PLT)
	ldr	r3, [r4, #244]
	b	.L328
.L400:
	mov	r0, r4
	ldr	r1, [r6, #20]
	bl	emit_dht(PLT)
	mov	r0, r4
	ldr	r1, [r6, #24]
	movs	r2, #1
	bl	emit_dht(PLT)
	ldr	r3, [r4, #244]
	b	.L331
.L398:
	ldr	r1, [r6, #24]
	movs	r2, #1
	bl	emit_dht(PLT)
	ldr	r3, [r4, #244]
	b	.L328
.L337:
	ldr	r1, [r6, #24]
	mov	r0, r4
	movs	r2, #1
	bl	emit_dht(PLT)
	b	.L326
.L401:
	ldr	r1, [r6, #24]
	mov	r0, r4
	movs	r2, #1
	bl	emit_dht(PLT)
	ldr	r3, [r4, #244]
	b	.L331
.L404:
	ldr	r1, [r6, #24]
	mov	r0, r4
	movs	r2, #1
	bl	emit_dht(PLT)
	ldr	r3, [r4, #244]
	b	.L334
	.size	write_scan_header, .-write_scan_header
	.section	.text.emit_dqt,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	emit_dqt, %function
emit_dqt:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	add	r3, r1, #18
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	ldr	r5, [r0, r3, lsl #2]
	mov	r6, r1
	mov	r9, r0
	ldr	r7, .L464
.LPIC24:
	add	r7, pc
	cmp	r5, #0
	beq	.L455
.L424:
	movs	r3, #0
	mov	r4, r3
.L426:
	ldrh	r2, [r5, r3]
	adds	r3, r3, #2
	cmp	r2, #255
	it	hi
	movhi	r4, #1
	cmp	r3, #128
	bne	.L426
	ldr	r3, [r5, #128]
	cbz	r3, .L456
	mov	r0, r4
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L456:
	ldr	r3, [r9, #24]
	movs	r1, #255
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L457
.L429:
	ldr	r3, [r9, #24]
	movs	r1, #219
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L458
.L432:
	ldr	r3, [r9, #24]
	movs	r1, #0
	cmp	r4, r1
	ite	eq
	moveq	r8, #67
	movne	r8, #131
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L459
.L436:
	ldr	r3, [r9, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r8, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L460
.L439:
	ldr	r3, [r9, #24]
	add	r6, r6, r4, lsl #4
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r6, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L461
.L442:
	ldr	r3, .L464+4
	mov	r8, #24
	ldr	r7, [r7, r3]
	subs	r6, r7, #4
	adds	r7, r7, #252
	b	.L451
.L448:
	cmp	r6, r7
	beq	.L462
.L451:
	ldr	r3, [r6, #4]!
	ldrh	r10, [r5, r3, lsl #1]
	cbnz	r4, .L463
.L445:
	ldr	r3, [r9, #24]
	ldr	r2, [r3]
	adds	r1, r2, #1
	str	r1, [r3]
	strb	r10, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	bne	.L448
	ldr	r3, [r3, #12]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	bne	.L448
	ldr	r3, [r9]
	mov	r0, r9
	str	r8, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	cmp	r6, r7
	bne	.L451
.L462:
	movs	r3, #1
	mov	r0, r4
	str	r3, [r5, #128]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L463:
	ldr	r2, [r9, #24]
	lsr	r1, r10, #8
	ldr	r3, [r2]
	adds	r0, r3, #1
	str	r0, [r2]
	strb	r1, [r3]
	ldr	r3, [r2, #4]
	subs	r3, r3, #1
	str	r3, [r2, #4]
	cmp	r3, #0
	bne	.L445
	ldr	r3, [r2, #12]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	bne	.L445
	ldr	r3, [r9]
	mov	r0, r9
	str	r8, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L445
.L457:
	ldr	r3, [r3, #12]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	bne	.L429
	ldr	r3, [r9]
	movs	r2, #24
	mov	r0, r9
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L429
.L461:
	ldr	r3, [r3, #12]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	bne	.L442
	ldr	r3, [r9]
	movs	r2, #24
	mov	r0, r9
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L442
.L460:
	ldr	r3, [r3, #12]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	bne	.L439
	ldr	r3, [r9]
	movs	r2, #24
	mov	r0, r9
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L439
.L459:
	ldr	r3, [r3, #12]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	bne	.L436
	ldr	r3, [r9]
	movs	r2, #24
	mov	r0, r9
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L436
.L458:
	ldr	r3, [r3, #12]
	mov	r0, r9
	blx	r3
	cmp	r0, #0
	bne	.L432
	ldr	r3, [r9]
	movs	r2, #24
	mov	r0, r9
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L432
.L455:
	ldr	r3, [r0]
	movs	r1, #52
	str	r6, [r3, #24]
	ldr	r2, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L424
.L465:
	.align	2
.L464:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC24+4)
	.word	jpeg_natural_order(GOT)
	.size	emit_dqt, .-emit_dqt
	.section	.text.write_frame_header,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	write_frame_header, %function
write_frame_header:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r6, r0
	ldr	r3, [r0, #60]
	movs	r7, #0
	ldr	r4, [r0, #68]
	cmp	r3, #0
	ble	.L467
	mov	r5, r7
.L468:
	ldr	r1, [r4, #16]
	mov	r0, r6
	bl	emit_dqt(PLT)
	ldr	r3, [r6, #60]
	adds	r5, r5, #1
	add	r7, r7, r0
	adds	r4, r4, #84
	cmp	r3, r5
	bgt	.L468
.L467:
	ldr	r2, [r6, #180]
	cbz	r2, .L469
.L475:
	mov	r0, r6
	movs	r1, #201
	pop	{r3, r4, r5, r6, r7, lr}
	b	emit_sof(PLT)
.L469:
	ldr	r1, [r6, #228]
	cbz	r1, .L494
.L477:
	mov	r0, r6
	movs	r1, #194
	pop	{r3, r4, r5, r6, r7, lr}
	b	emit_sof(PLT)
.L494:
	ldr	r2, [r6, #56]
	cmp	r2, #8
	beq	.L495
.L476:
	mov	r0, r6
	movs	r1, #193
	pop	{r3, r4, r5, r6, r7, lr}
	b	emit_sof(PLT)
.L495:
	cmp	r3, #0
	ldr	r2, [r6, #68]
	ble	.L482
	movs	r0, #1
	b	.L474
.L472:
	adds	r1, r1, #1
	adds	r2, r2, #84
	cmp	r1, r3
	beq	.L496
.L474:
	ldr	r4, [r2, #20]
	cmp	r4, #1
	it	gt
	movgt	r0, #0
	bgt	.L472
	ldr	r4, [r2, #24]
	cmp	r4, #1
	it	gt
	movgt	r0, #0
	b	.L472
.L496:
	and	r3, r0, #1
.L471:
	cmp	r7, #0
	ite	eq
	moveq	r3, #0
	andne	r3, r3, #1
	cbnz	r3, .L497
	cmp	r0, #0
	beq	.L476
	mov	r0, r6
	movs	r1, #192
	pop	{r3, r4, r5, r6, r7, lr}
	b	emit_sof(PLT)
.L497:
	ldr	r3, [r6]
	movs	r2, #75
	mov	r0, r6
	movs	r1, #0
	str	r2, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r6, #180]
	cmp	r3, #0
	bne	.L475
	ldr	r3, [r6, #228]
	cmp	r3, #0
	beq	.L476
	b	.L477
.L482:
	movs	r3, #1
	mov	r0, r3
	b	.L471
	.size	write_frame_header, .-write_frame_header
	.section	.text.write_tables_only,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	write_tables_only, %function
write_tables_only:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #24]
	movs	r1, #255
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r2, [r3]
	adds	r5, r2, #1
	str	r5, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L532
.L500:
	ldr	r3, [r4, #24]
	movs	r1, #216
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cmp	r2, #0
	beq	.L533
.L503:
	mov	r6, r4
	movs	r5, #0
.L507:
	ldr	r3, [r6, #72]
	mov	r1, r5
	adds	r6, r6, #4
	adds	r5, r5, #1
	mov	r0, r4
	cbz	r3, .L505
	bl	emit_dqt(PLT)
.L505:
	cmp	r5, #4
	bne	.L507
	ldr	r5, [r4, #180]
	mov	r6, r4
	cbnz	r5, .L513
.L514:
	ldr	r3, [r6, #88]
	mov	r1, r5
	mov	r0, r4
	movs	r2, #0
	cbz	r3, .L511
	bl	emit_dht(PLT)
.L511:
	ldr	r3, [r6, #104]
	mov	r1, r5
	adds	r6, r6, #4
	adds	r5, r5, #1
	mov	r0, r4
	movs	r2, #1
	cbz	r3, .L512
	bl	emit_dht(PLT)
.L512:
	cmp	r5, #4
	bne	.L514
.L513:
	ldr	r3, [r4, #24]
	movs	r1, #255
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L534
.L515:
	ldr	r3, [r4, #24]
	movs	r1, #217
	ldr	r2, [r3]
	adds	r0, r2, #1
	str	r0, [r3]
	strb	r1, [r2]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	cbz	r2, .L535
.L498:
	pop	{r4, r5, r6, pc}
.L532:
	ldr	r3, [r3, #12]
	blx	r3
	cmp	r0, #0
	bne	.L500
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L500
.L535:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L498
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L534:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L515
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L515
.L533:
	ldr	r3, [r3, #12]
	mov	r0, r4
	blx	r3
	cmp	r0, #0
	bne	.L503
	ldr	r3, [r4]
	movs	r2, #24
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L503
	.size	write_tables_only, .-write_tables_only
	.section	.text.jinit_marker_writer,"ax",%progbits
	.align	2
	.global	jinit_marker_writer
	.thumb
	.thumb_func
	.type	jinit_marker_writer, %function
jinit_marker_writer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r1, #1
	ldr	r3, [r0, #4]
	movs	r2, #32
	mov	r4, r0
	ldr	r7, .L538
	ldr	r3, [r3]
	blx	r3
	ldr	r6, .L538+4
	movs	r3, #0
	ldr	ip, .L538+8
.LPIC27:
	add	r7, pc
	ldr	lr, .L538+12
	ldr	r5, .L538+16
.LPIC28:
	add	r6, pc
	ldr	r1, .L538+20
.LPIC25:
	add	ip, pc
	ldr	r2, .L538+24
.LPIC26:
	add	lr, pc
.LPIC29:
	add	r5, pc
	str	r0, [r4, #348]
.LPIC30:
	add	r1, pc
	str	ip, [r0]
.LPIC31:
	add	r2, pc
	str	lr, [r0, #4]
	str	r7, [r0, #8]
	str	r6, [r0, #12]
	str	r5, [r0, #16]
	str	r1, [r0, #20]
	str	r2, [r0, #24]
	str	r3, [r0, #28]
	pop	{r3, r4, r5, r6, r7, pc}
.L539:
	.align	2
.L538:
	.word	write_scan_header-(.LPIC27+4)
	.word	write_file_trailer-(.LPIC28+4)
	.word	write_file_header-(.LPIC25+4)
	.word	write_frame_header-(.LPIC26+4)
	.word	write_tables_only-(.LPIC29+4)
	.word	write_marker_header-(.LPIC30+4)
	.word	write_marker_byte-(.LPIC31+4)
	.size	jinit_marker_writer, .-jinit_marker_writer
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
