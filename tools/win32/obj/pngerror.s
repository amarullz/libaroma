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
	.file	"pngerror.c"
	.section	.text.png_format_buffer.isra.0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_format_buffer.isra.0, %function
png_format_buffer.isra.0:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	lsrs	r4, r0, #24
	uxtb	r3, r4
	sub	r5, r3, #91
	sub	r6, r3, #65
	cmp	r5, #5
	ite	hi
	movhi	r5, #0
	movls	r5, #1
	cmp	r6, #57
	it	hi
	orrhi	r5, r5, #1
	cmp	r5, #0
	bne	.L2
	strb	r3, [r1]
	movs	r3, #1
.L3:
	lsrs	r5, r0, #16
	uxtb	r4, r5
	sub	r6, r4, #65
	sub	r7, r4, #91
	cmp	r6, #57
	ite	ls
	movls	r6, #0
	movhi	r6, #1
	cmp	r7, #5
	it	ls
	orrls	r6, r6, #1
	cmp	r6, #0
	bne	.L4
	strb	r4, [r1, r3]
	adds	r4, r3, #1
.L5:
	lsrs	r5, r0, #8
	uxtb	r3, r5
	sub	r6, r3, #65
	sub	r7, r3, #91
	cmp	r6, #57
	ite	ls
	movls	r6, #0
	movhi	r6, #1
	cmp	r7, #5
	it	ls
	orrls	r6, r6, #1
	cmp	r6, #0
	bne	.L6
	strb	r3, [r1, r4]
	adds	r3, r4, #1
.L7:
	uxtb	r4, r0
	sub	r5, r4, #65
	sub	r6, r4, #91
	cmp	r5, #57
	ite	ls
	movls	r5, #0
	movhi	r5, #1
	cmp	r6, #5
	it	ls
	orrls	r5, r5, #1
	cbz	r5, .L8
	ldr	r6, .L19
	ubfx	r5, r0, #4, #4
	and	r0, r0, #15
	adds	r4, r1, r3
	mov	ip, #91
	movs	r7, #93
.LPIC14:
	add	r6, pc
	strb	ip, [r1, r3]
	ldrb	lr, [r6, r5]	@ zero_extendqisi2
	adds	r5, r3, #4
	ldrb	r0, [r6, r0]	@ zero_extendqisi2
	strb	r7, [r4, #3]
	strb	lr, [r4, #1]
	strb	r0, [r4, #2]
	cbz	r2, .L18
.L10:
	movs	r3, #58
	adds	r0, r1, r5
	movs	r4, #32
	strb	r3, [r1, r5]
	subs	r2, r2, r5
	adds	r3, r5, #2
	strb	r4, [r0, #1]
	adds	r5, r5, #197
	b	.L12
.L14:
	adds	r3, r3, #1
	cmp	r3, r5
	add	r4, r1, r3
	strb	r0, [r4, #-1]
	beq	.L13
.L12:
	adds	r0, r2, r3
	ldrb	r0, [r0, #-2]	@ zero_extendqisi2
	cmp	r0, #0
	bne	.L14
.L13:
	movs	r2, #0
	strb	r2, [r1, r3]
	pop	{r4, r5, r6, r7, r8, pc}
.L8:
	adds	r5, r3, #1
	strb	r4, [r1, r3]
	cmp	r2, #0
	bne	.L10
.L18:
	strb	r2, [r1, r5]
	pop	{r4, r5, r6, r7, r8, pc}
.L6:
	ldr	r7, .L19+4
	ubfx	lr, r5, #4, #4
	and	r5, r5, #15
	adds	r6, r1, r4
	mov	r8, #91
	adds	r3, r4, #4
.LPIC12:
	add	r7, pc
	strb	r8, [r1, r4]
	ldrb	ip, [r7, lr]	@ zero_extendqisi2
	mov	lr, #93
	ldrb	r5, [r7, r5]	@ zero_extendqisi2
	strb	lr, [r6, #3]
	strb	ip, [r6, #1]
	strb	r5, [r6, #2]
	b	.L7
.L4:
	ldr	r7, .L19+8
	ubfx	lr, r5, #4, #4
	and	r5, r5, #15
	adds	r6, r1, r3
	mov	r8, #91
	adds	r4, r3, #4
.LPIC10:
	add	r7, pc
	strb	r8, [r1, r3]
	ldrb	ip, [r7, lr]	@ zero_extendqisi2
	mov	lr, #93
	ldrb	r5, [r7, r5]	@ zero_extendqisi2
	strb	lr, [r6, #3]
	strb	ip, [r6, #1]
	strb	r5, [r6, #2]
	b	.L5
.L2:
	ldr	r5, .L19+12
	lsrs	r6, r4, #4
	and	r4, r4, #15
	mov	lr, #91
	movs	r3, #4
.LPIC8:
	add	r5, pc
	strb	lr, [r1]
	ldrb	r7, [r5, r6]	@ zero_extendqisi2
	movs	r6, #93
	ldrb	r4, [r5, r4]	@ zero_extendqisi2
	strb	r6, [r1, #3]
	strb	r7, [r1, #1]
	strb	r4, [r1, #2]
	b	.L3
.L20:
	.align	2
.L19:
	.word	.LANCHOR0-(.LPIC14+4)
	.word	.LANCHOR0-(.LPIC12+4)
	.word	.LANCHOR0-(.LPIC10+4)
	.word	.LANCHOR0-(.LPIC8+4)
	.size	png_format_buffer.isra.0, .-png_format_buffer.isra.0
	.section	.text.png_safecat,"ax",%progbits
	.align	2
	.global	png_safecat
	.thumb
	.thumb_func
	.type	png_safecat, %function
png_safecat:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r0, #0
	it	ne
	cmpne	r2, r1
	bcs	.L40
	cbz	r3, .L39
	push	{r4, r5}
	ldrb	r4, [r3]	@ zero_extendqisi2
	cbz	r4, .L23
	subs	r1, r1, #1
	b	.L41
.L42:
	adds	r2, r2, #1
	adds	r5, r0, r2
	strb	r4, [r5, #-1]
	ldrb	r4, [r3, #1]!	@ zero_extendqisi2
	cbz	r4, .L23
.L41:
	cmp	r2, r1
	bcc	.L42
.L23:
	movs	r3, #0
	strb	r3, [r0, r2]
	mov	r0, r2
	pop	{r4, r5}
	bx	lr
.L39:
	movs	r3, #0
	strb	r3, [r0, r2]
.L40:
	mov	r0, r2
	bx	lr
	.size	png_safecat, .-png_safecat
	.section	.text.png_format_number,"ax",%progbits
	.align	2
	.global	png_format_number
	.thumb
	.thumb_func
	.type	png_format_number, %function
png_format_number:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	subs	r0, r1, #1
	mov	r8, #0
	cmp	r0, r7
	strb	r8, [r1, #-1]
	bls	.L44
	ldr	r10, .L72
	movw	lr, #52429
	ldr	r9, .L72+4
	mov	r1, r8
	ldr	fp, .L72+8
	movt	lr, 52428
.LPIC18:
	add	r10, pc
	movs	r5, #1
.LPIC17:
	add	r9, pc
	subs	r4, r2, #1
.LPIC16:
	add	fp, pc
.L59:
	cmp	r4, #4
	bhi	.L60
	tbb	[pc, r4]
.L47:
	.byte	(.L48-.L47)/2
	.byte	(.L61-.L47)/2
	.byte	(.L50-.L47)/2
	.byte	(.L62-.L47)/2
	.byte	(.L51-.L47)/2
	.align	1
.L62:
	movs	r5, #2
.L50:
	and	r6, r3, #15
	lsrs	r3, r3, #4
	ldrb	r6, [r10, r6]	@ zero_extendqisi2
	subs	r0, r0, #1
	strb	r6, [r0]
.L45:
	cmp	r2, #5
	add	r1, r1, #1
	beq	.L55
.L56:
	cmp	r7, r0
	bcs	.L44
	cmp	r1, r5
	it	ge
	cmpge	r3, #0
	bne	.L59
.L44:
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L61:
	movs	r5, #2
.L48:
	umull	ip, r6, lr, r3
	subs	r0, r0, #1
	lsrs	r6, r6, #3
	add	ip, r6, r6, lsl #2
	sub	ip, r3, ip, lsl #1
	mov	r3, r6
	ldrb	r6, [r9, ip]	@ zero_extendqisi2
	strb	r6, [r0]
	b	.L45
.L51:
	cmp	r8, #0
	beq	.L52
	umull	r6, r5, lr, r3
	lsrs	r5, r5, #3
	add	r5, r5, r5, lsl #2
	sub	r5, r3, r5, lsl #1
.L53:
	ldrb	r5, [fp, r5]	@ zero_extendqisi2
	mov	r8, #1
	subs	r0, r0, #1
	strb	r5, [r0]
.L54:
	umull	r5, r3, lr, r3
	adds	r1, r1, #1
	movs	r5, #5
	lsrs	r3, r3, #3
.L55:
	cmp	r1, #5
	bne	.L56
	cmp	r7, r0
	bcs	.L44
	cmp	r8, #0
	beq	.L57
	mov	r6, #46
	subs	r0, r0, #1
	strb	r6, [r0]
	b	.L56
.L52:
	umull	ip, r5, lr, r3
	lsrs	r5, r5, #3
	add	r5, r5, r5, lsl #2
	subs	r5, r3, r5, lsl #1
	beq	.L54
	b	.L53
.L57:
	cmp	r3, #0
	bne	.L59
	mov	ip, #48
	subs	r0, r0, #1
	strb	ip, [r0]
	b	.L56
.L60:
	movs	r3, #0
	b	.L45
.L73:
	.align	2
.L72:
	.word	.LANCHOR1-(.LPIC18+4)
	.word	.LANCHOR1-(.LPIC17+4)
	.word	.LANCHOR1-(.LPIC16+4)
	.size	png_format_number, .-png_format_number
	.section	.text.png_warning,"ax",%progbits
	.align	2
	.global	png_warning
	.thumb
	.thumb_func
	.type	png_warning, %function
png_warning:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L123
	push	{r4, lr}
.LPIC19:
	add	r3, pc
	cbz	r0, .L80
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r2, #35
	it	ne
	movne	r2, r1
	beq	.L122
.L76:
	ldr	r4, [r0, #408]
	cbz	r4, .L75
	mov	r3, r4
	mov	r1, r2
	pop	{r4, lr}
	bx	r3	@ indirect register sibling call
.L80:
	mov	r2, r1
.L75:
	ldr	r0, .L123+4
	ldr	r1, .L123+8
	ldr	r4, [r3, r0]
.LPIC20:
	add	r1, pc
	ldr	r0, [r4]
	bl	fprintf(PLT)
	ldr	r1, [r4]
	movs	r0, #10
	pop	{r4, lr}
	b	fputc(PLT)
.L122:
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	adds	r2, r1, #1
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	adds	r2, r1, #2
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	adds	r2, r1, #3
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	adds	r2, r1, #4
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	adds	r2, r1, #5
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #6]	@ zero_extendqisi2
	adds	r2, r1, #6
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	adds	r2, r1, #7
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #8]	@ zero_extendqisi2
	add	r2, r1, #8
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	add	r2, r1, #9
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	add	r2, r1, #10
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #11]	@ zero_extendqisi2
	add	r2, r1, #11
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	add	r2, r1, #12
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #13]	@ zero_extendqisi2
	add	r2, r1, #13
	cmp	r4, #32
	beq	.L76
	ldrb	r4, [r1, #14]	@ zero_extendqisi2
	add	r2, r1, #14
	cmp	r4, #32
	beq	.L76
	add	r2, r1, #15
	b	.L76
.L124:
	.align	2
.L123:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC19+4)
	.word	stderr(GOT)
	.word	.LC0-(.LPIC20+4)
	.size	png_warning, .-png_warning
	.section	.text.png_warning_parameter,"ax",%progbits
	.align	2
	.global	png_warning_parameter
	.thumb
	.thumb_func
	.type	png_warning_parameter, %function
png_warning_parameter:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	subs	r4, r1, #1
	cmp	r4, #7
	bls	.L128
	ldr	r4, [sp], #4
	bx	lr
.L128:
	add	r4, r1, #134217728
	mov	r3, r2
	subs	r4, r4, #1
	movs	r1, #32
	add	r0, r0, r4, lsl #5
	movs	r2, #0
	ldr	r4, [sp], #4
	b	png_safecat(PLT)
	.size	png_warning_parameter, .-png_warning_parameter
	.section	.text.png_warning_parameter_unsigned,"ax",%progbits
	.align	2
	.global	png_warning_parameter_unsigned
	.thumb
	.thumb_func
	.type	png_warning_parameter_unsigned, %function
png_warning_parameter_unsigned:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #28
	mov	r5, r0
	mov	r4, r1
	mov	r0, sp
	add	r1, sp, #24
	bl	png_format_number(PLT)
	mov	r1, r4
	mov	r2, r0
	mov	r0, r5
	bl	png_warning_parameter(PLT)
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
	.size	png_warning_parameter_unsigned, .-png_warning_parameter_unsigned
	.section	.text.png_warning_parameter_signed,"ax",%progbits
	.align	2
	.global	png_warning_parameter_signed
	.thumb
	.thumb_func
	.type	png_warning_parameter_signed, %function
png_warning_parameter_signed:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	subs	r1, r3, #0
	sub	sp, sp, #24
	mov	r4, r0
	blt	.L137
	add	r1, sp, #24
	mov	r0, sp
	bl	png_format_number(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r4
	bl	png_warning_parameter(PLT)
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L137:
	negs	r3, r1
	mov	r6, sp
	add	r1, sp, #24
	mov	r0, sp
	bl	png_format_number(PLT)
	cmp	r0, r6
	mov	r1, r5
	ittte	hi
	movhi	r3, #45
	addhi	r2, r0, #-1
	strbhi	r3, [r0, #-1]
	movls	r2, r0
	mov	r0, r4
	bl	png_warning_parameter(PLT)
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	png_warning_parameter_signed, .-png_warning_parameter_signed
	.section	.text.png_formatted_warning,"ax",%progbits
	.align	2
	.global	png_formatted_warning
	.thumb
	.thumb_func
	.type	png_formatted_warning, %function
png_formatted_warning:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #196
	movs	r3, #0
	mov	lr, sp
	b	.L139
.L140:
	add	r5, sp, #192
	adds	r2, r2, #1
	add	r5, r5, r3
	adds	r3, r3, #1
	strb	r4, [r5, #-192]
.L144:
	cmp	r3, #190
	bhi	.L145
.L139:
	ldrb	r4, [r2]	@ zero_extendqisi2
	cbz	r4, .L145
	cmp	r1, #0
	beq	.L140
	cmp	r4, #64
	bne	.L140
	ldrb	r5, [r2, #1]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L140
	cmp	r5, #49
	add	r6, r2, #1
	beq	.L151
	cmp	r5, #50
	beq	.L152
	cmp	r5, #51
	beq	.L153
	cmp	r5, #52
	beq	.L154
	cmp	r5, #53
	beq	.L155
	cmp	r5, #54
	beq	.L156
	cmp	r5, #55
	beq	.L157
	cmp	r5, #56
	itt	eq
	moveq	r4, #256
	moveq	r5, #224
	beq	.L141
	mov	r4, r5
	mov	r2, r6
	b	.L140
.L145:
	add	r2, sp, #192
	mov	r1, sp
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3, #-192]
	bl	png_warning(PLT)
	add	sp, sp, #196
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L154:
	movs	r4, #128
	movs	r5, #96
.L141:
	add	r5, r5, r1
	add	r4, r4, r1
	subs	r5, r5, #1
.L147:
	ldrb	r6, [r5, #1]!	@ zero_extendqisi2
	adds	r7, r3, #1
	cbz	r6, .L142
	cmp	r5, r4
	bcs	.L142
	cmp	r7, #191
	strb	r6, [lr, r3]
	mov	r3, r7
	bne	.L147
	mov	r3, r7
.L142:
	adds	r2, r2, #2
	b	.L144
.L157:
	movs	r4, #224
	movs	r5, #192
	b	.L141
.L151:
	movs	r4, #32
	movs	r5, #0
	b	.L141
.L152:
	movs	r5, #32
	b	.L141
.L153:
	mov	r5, r4
	movs	r4, #96
	b	.L141
.L155:
	movs	r4, #160
	movs	r5, #128
	b	.L141
.L156:
	movs	r4, #192
	movs	r5, #160
	b	.L141
	.size	png_formatted_warning, .-png_formatted_warning
	.section	.text.png_chunk_warning,"ax",%progbits
	.align	2
	.global	png_chunk_warning
	.thumb
	.thumb_func
	.type	png_chunk_warning, %function
png_chunk_warning:
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #220
	cbz	r0, .L170
	mov	r2, r1
	mov	r4, r0
	mov	r1, sp
	ldr	r0, [r0, #616]
	bl	png_format_buffer.isra.0(PLT)
	mov	r0, r4
	mov	r1, sp
.L170:
	bl	png_warning(PLT)
	add	sp, sp, #220
	@ sp needed
	pop	{r4, r5, pc}
	.size	png_chunk_warning, .-png_chunk_warning
	.section	.text.png_free_jmpbuf,"ax",%progbits
	.align	2
	.global	png_free_jmpbuf
	.thumb
	.thumb_func
	.type	png_free_jmpbuf, %function
png_free_jmpbuf:
	@ args = 0, pretend = 0, frame = 408
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #412
	str	r0, [sp, #4]
	ldr	r2, [sp, #4]
	ldr	r0, .L177
.LPIC21:
	add	r0, pc
	str	r0, [sp, #12]
	cbz	r2, .L171
	ldr	r3, [r2, #396]
	str	r3, [sp, #8]
	cbz	r3, .L173
	ldr	r3, [r2, #400]
	cbz	r3, .L173
	ldr	r0, [sp, #8]
	cmp	r2, r0
	beq	.L173
	add	r0, sp, #16
	bl	_setjmp(PLT)
	cbz	r0, .L176
.L173:
	ldr	r0, [sp, #4]
	movs	r3, #0
	str	r3, [r0, #400]
	str	r3, [r0, #396]
	str	r3, [r0, #392]
.L171:
	add	sp, sp, #412
	@ sp needed
	ldr	pc, [sp], #4
.L176:
	ldr	r2, [sp, #4]
	ldr	r3, .L177+4
	ldr	r1, [sp, #8]
	str	r0, [r2, #400]
	add	r2, sp, #16
	ldr	r0, [sp, #4]
	str	r2, [r0, #396]
	ldr	r2, [sp, #12]
	ldr	r3, [r2, r3]
	str	r3, [r0, #392]
	bl	png_free(PLT)
	b	.L173
.L178:
	.align	2
.L177:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC21+4)
	.word	longjmp(GOT)
	.size	png_free_jmpbuf, .-png_free_jmpbuf
	.section	.text.png_longjmp,"ax",%progbits
	.align	2
	.global	png_longjmp
	.thumb
	.thumb_func
	.type	png_longjmp, %function
png_longjmp:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	cbz	r0, .L180
	ldr	r3, [r0, #392]
	cbz	r3, .L180
	ldr	r0, [r0, #396]
	cbz	r0, .L180
	blx	r3
.L180:
	bl	abort(PLT)
	.size	png_longjmp, .-png_longjmp
	.section	.text.png_error,"ax",%progbits
	.align	2
	.global	png_error
	.thumb
	.thumb_func
	.type	png_error, %function
png_error:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r4, .L203
	mov	r6, r1
	push	{r3, lr}
	mov	r5, r0
.LPIC23:
	add	r4, pc
	cbz	r0, .L192
	ldr	r3, [r0, #404]
	cbz	r3, .L192
	blx	r3
.L192:
	ldr	r3, .L203+4
	mov	r2, r6
	ldr	r4, [r4, r3]
	ldr	r0, [r4]
	cbz	r6, .L202
.L193:
	ldr	r1, .L203+8
.LPIC24:
	add	r1, pc
	bl	fprintf(PLT)
	ldr	r1, [r4]
	movs	r0, #10
	bl	fputc(PLT)
	mov	r0, r5
	movs	r1, #1
	bl	png_longjmp(PLT)
.L202:
	ldr	r2, .L203+12
.LPIC22:
	add	r2, pc
	b	.L193
.L204:
	.align	2
.L203:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC23+4)
	.word	stderr(GOT)
	.word	.LC2-(.LPIC24+4)
	.word	.LC1-(.LPIC22+4)
	.size	png_error, .-png_error
	.section	.text.png_app_warning,"ax",%progbits
	.align	2
	.global	png_app_warning
	.thumb
	.thumb_func
	.type	png_app_warning, %function
png_app_warning:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, [r0, #452]
	lsls	r3, r3, #10
	bpl	.L206
	pop	{r3, lr}
	b	png_warning(PLT)
.L206:
	bl	png_error(PLT)
	.size	png_app_warning, .-png_app_warning
	.section	.text.png_app_error,"ax",%progbits
	.align	2
	.global	png_app_error
	.thumb
	.thumb_func
	.type	png_app_error, %function
png_app_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, [r0, #452]
	lsls	r3, r3, #9
	bpl	.L209
	pop	{r3, lr}
	b	png_warning(PLT)
.L209:
	bl	png_error(PLT)
	.size	png_app_error, .-png_app_error
	.section	.text.png_chunk_error,"ax",%progbits
	.align	2
	.global	png_chunk_error
	.thumb
	.thumb_func
	.type	png_chunk_error, %function
png_chunk_error:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #220
	cbz	r0, .L214
	mov	r2, r1
	mov	r4, r0
	mov	r1, sp
	ldr	r0, [r0, #616]
	bl	png_format_buffer.isra.0(PLT)
	mov	r0, r4
	mov	r1, sp
.L214:
	bl	png_error(PLT)
	.size	png_chunk_error, .-png_chunk_error
	.section	.text.png_chunk_benign_error,"ax",%progbits
	.align	2
	.global	png_chunk_benign_error
	.thumb
	.thumb_func
	.type	png_chunk_benign_error, %function
png_chunk_benign_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, [r0, #452]
	lsls	r3, r3, #11
	bpl	.L216
	pop	{r3, lr}
	b	png_chunk_warning(PLT)
.L216:
	bl	png_chunk_error(PLT)
	.size	png_chunk_benign_error, .-png_chunk_benign_error
	.section	.text.png_chunk_report,"ax",%progbits
	.align	2
	.global	png_chunk_report
	.thumb
	.thumb_func
	.type	png_chunk_report, %function
png_chunk_report:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #448]
	lsls	r3, r3, #16
	bmi	.L222
	cmp	r2, #0
	ble	.L223
	b	png_app_error(PLT)
.L222:
	cmp	r2, #1
	ble	.L224
	b	png_chunk_benign_error(PLT)
.L224:
	b	png_chunk_warning(PLT)
.L223:
	b	png_app_warning(PLT)
	.size	png_chunk_report, .-png_chunk_report
	.section	.text.png_benign_error,"ax",%progbits
	.align	2
	.global	png_benign_error
	.thumb
	.thumb_func
	.type	png_benign_error, %function
png_benign_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #452]
	mov	r3, r0
	push	{r4, lr}
	mov	r4, r1
	tst	r2, #1048576
	ldr	r2, [r0, #448]
	beq	.L226
	lsls	r2, r2, #16
	bpl	.L227
	ldr	r2, [r0, #616]
	cbnz	r2, .L242
.L227:
	mov	r1, r4
	mov	r0, r3
	pop	{r4, lr}
	b	png_warning(PLT)
.L226:
	lsls	r2, r2, #16
	bpl	.L228
	ldr	r2, [r0, #616]
	cbnz	r2, .L243
.L228:
	mov	r0, r3
	mov	r1, r4
	bl	png_error(PLT)
.L243:
	bl	png_chunk_error(PLT)
.L242:
	pop	{r4, lr}
	b	png_chunk_warning(PLT)
	.size	png_benign_error, .-png_benign_error
	.section	.text.png_fixed_error,"ax",%progbits
	.align	2
	.global	png_fixed_error
	.thumb
	.thumb_func
	.type	png_fixed_error, %function
png_fixed_error:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r7, lr}
	mov	r6, r1
	ldr	r7, .L254
	mov	lr, r0
	sub	sp, sp, #224
	add	r5, sp, #4
.LPIC25:
	add	r7, pc
	mov	r4, r5
	ldmia	r7!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	movs	r3, #0
	ldmia	r7, {r0, r1}
	stmia	r4, {r0, r1}
	cbnz	r6, .L246
	b	.L253
.L247:
	adds	r4, r5, r3
	adds	r3, r3, #1
	cmp	r3, #195
	strb	r2, [r4, #24]
	beq	.L245
.L246:
	ldrb	r2, [r6, r3]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L247
.L245:
	add	r2, sp, #224
	mov	r0, lr
	add	r3, r3, r2
	mov	r1, r5
	movs	r2, #0
	strb	r2, [r3, #-196]
	bl	png_error(PLT)
.L253:
	mov	r3, r6
	b	.L245
.L255:
	.align	2
.L254:
	.word	.LC3-(.LPIC25+4)
	.size	png_fixed_error, .-png_fixed_error
	.section	.text.png_set_longjmp_fn,"ax",%progbits
	.align	2
	.global	png_set_longjmp_fn
	.thumb
	.thumb_func
	.type	png_set_longjmp_fn, %function
png_set_longjmp_fn:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L271
	ldr	r3, [r0, #396]
	push	{r4, r5, r6, lr}
	mov	r6, r1
	sub	sp, sp, #8
	mov	r4, r0
	cbz	r3, .L272
	ldr	r5, [r0, #400]
	cbz	r5, .L273
.L263:
	cmp	r5, r2
	bne	.L274
.L261:
	str	r6, [r4, #392]
.L258:
	mov	r0, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L273:
	cmp	r3, r0
	it	eq
	moveq	r5, #392
	beq	.L263
	ldr	r1, .L275
.LPIC26:
	add	r1, pc
	bl	png_error(PLT)
.L272:
	cmp	r2, #392
	str	r3, [r0, #400]
	bhi	.L260
	str	r0, [r4, #396]
	mov	r3, r0
	b	.L261
.L274:
	ldr	r1, .L275+4
	mov	r0, r4
.LPIC27:
	add	r1, pc
	bl	png_warning(PLT)
.L270:
	movs	r3, #0
	b	.L258
.L260:
	mov	r1, r2
	str	r2, [sp, #4]
	bl	png_malloc_warn(PLT)
	ldr	r2, [sp, #4]
	str	r0, [r4, #396]
	cmp	r0, #0
	beq	.L270
	str	r2, [r4, #400]
	mov	r3, r0
	b	.L261
.L271:
	movs	r3, #0
	mov	r0, r3
	bx	lr
.L276:
	.align	2
.L275:
	.word	.LC4-(.LPIC26+4)
	.word	.LC5-(.LPIC27+4)
	.size	png_set_longjmp_fn, .-png_set_longjmp_fn
	.section	.text.png_set_error_fn,"ax",%progbits
	.align	2
	.global	png_set_error_fn
	.thumb
	.thumb_func
	.type	png_set_error_fn, %function
png_set_error_fn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L277
	str	r1, [r0, #412]
	str	r2, [r0, #404]
	str	r3, [r0, #408]
.L277:
	bx	lr
	.size	png_set_error_fn, .-png_set_error_fn
	.section	.text.png_get_error_ptr,"ax",%progbits
	.align	2
	.global	png_get_error_ptr
	.thumb
	.thumb_func
	.type	png_get_error_ptr, %function
png_get_error_ptr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L283
	ldr	r0, [r0, #412]
.L283:
	bx	lr
	.size	png_get_error_ptr, .-png_get_error_ptr
	.section	.text.png_safe_error,"ax",%progbits
	.align	2
	.global	png_safe_error
	.thumb
	.thumb_func
	.type	png_safe_error, %function
png_safe_error:
	@ Volatile: function does not return.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r4, [r0, #412]
	push	{r3, lr}
	cbz	r4, .L286
	mov	r6, r1
	add	r5, r4, #32
	movs	r2, #0
	mov	r3, r6
	movs	r1, #64
	mov	r0, r5
	bl	png_safecat(PLT)
	ldr	r3, [r4, #28]
	ldr	r2, [r4]
	orr	r3, r3, #2
	str	r3, [r4, #28]
	cbz	r2, .L287
	ldr	r0, [r2, #8]
	cbz	r0, .L287
	movs	r1, #1
	bl	longjmp(PLT)
.L287:
	ldr	r3, .L298
	movs	r1, #64
	movs	r2, #0
	mov	r0, r5
.LPIC28:
	add	r3, pc
	bl	png_safecat(PLT)
	mov	r3, r6
	mov	r2, r0
	movs	r1, #64
	mov	r0, r5
	bl	png_safecat(PLT)
.L286:
	bl	abort(PLT)
.L299:
	.align	2
.L298:
	.word	.LC6-(.LPIC28+4)
	.size	png_safe_error, .-png_safe_error
	.section	.text.png_safe_warning,"ax",%progbits
	.align	2
	.global	png_safe_warning
	.thumb
	.thumb_func
	.type	png_safe_warning, %function
png_safe_warning:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, [r0, #412]
	ldr	r2, [r4, #28]
	cbnz	r2, .L300
	mov	r3, r1
	add	r0, r4, #32
	movs	r1, #64
	bl	png_safecat(PLT)
	ldr	r3, [r4, #28]
	orr	r3, r3, #1
	str	r3, [r4, #28]
.L300:
	pop	{r4, pc}
	.size	png_safe_warning, .-png_safe_warning
	.section	.text.png_safe_execute,"ax",%progbits
	.align	2
	.global	png_safe_execute
	.thumb
	.thumb_func
	.type	png_safe_execute, %function
png_safe_execute:
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #416
	str	r0, [sp, #12]
	add	r0, sp, #24
	ldr	r3, [sp, #12]
	stmia	sp, {r1, r2}
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	str	r2, [sp, #20]
	bl	_setjmp(PLT)
	clz	r0, r0
	lsrs	r0, r0, #5
	add	r4, sp, #16
	str	r0, [sp, #16]
	ldr	r3, [sp, #16]
	cbnz	r3, .L307
.L304:
	ldr	r1, [sp, #12]
	ldr	r0, [sp, #20]
	ldr	r2, [sp, #16]
	ldr	r1, [r1]
	str	r0, [r1, #8]
	cbnz	r2, .L305
	ldr	r0, [sp, #12]
	bl	png_image_free(PLT)
.L305:
	ldr	r0, [sp, #16]
	add	sp, sp, #416
	@ sp needed
	pop	{r4, pc}
.L307:
	ldr	r3, [sp, #12]
	add	r2, sp, #24
	ldr	r0, [sp, #4]
	ldr	r3, [r3]
	str	r2, [r3, #8]
	ldr	r3, [sp]
	blx	r3
	str	r0, [r4]
	b	.L304
	.size	png_safe_execute, .-png_safe_execute
	.section	.rodata.png_digit,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	png_digit, %object
	.size	png_digit, 16
png_digit:
	.byte	48
	.byte	49
	.byte	50
	.byte	51
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	65
	.byte	66
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.section	.rodata.digits.8760,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	digits.8760, %object
	.size	digits.8760, 17
digits.8760:
	.ascii	"0123456789ABCDEF\000"
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"libpng warning: %s\000"
	.space	1
.LC1:
	.ascii	"undefined\000"
	.space	2
.LC2:
	.ascii	"libpng error: %s\000"
	.space	3
.LC3:
	.ascii	"fixed point overflow in \000"
	.space	3
.LC4:
	.ascii	"Libpng jmp_buf still allocated\000"
	.space	1
.LC5:
	.ascii	"Application jmp_buf size changed\000"
	.space	3
.LC6:
	.ascii	"bad longjmp: \000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
