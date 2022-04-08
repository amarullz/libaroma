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
	.file	"pngwutil.c"
	.section	.text.png_image_size,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_size, %function
png_image_size:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #604]
	ldr	r2, [r0, #592]
	cmp	r3, #32768
	bcc	.L12
.L6:
	mov	r0, #-1
	bx	lr
.L12:
	cmp	r2, #32768
	bcs	.L6
	ldrb	r1, [r0, #672]	@ zero_extendqisi2
	cmp	r1, #0
	beq	.L3
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r3, #0
	ldrb	ip, [r0, #678]	@ zero_extendqisi2
	sub	sp, sp, #12
	movs	r5, #1
	ldr	r0, [r0, #588]
	lsr	r1, ip, #3
	str	r0, [sp]
	mov	r0, r3
	str	r1, [sp, #4]
.L4:
	rsb	r4, r3, #7
	asrs	r6, r5, #1
	asrs	r4, r4, #1
	and	r1, r3, #1
	mov	lr, #1
	asrs	r7, r3, #1
	rsb	r6, r6, #3
	lsl	r8, lr, r4
	lsl	r6, r1, r6
	cmp	r3, #1
	add	r8, r8, #-1
	and	r6, r6, #7
	it	le
	movle	r4, #3
	rsb	r8, r6, r8
	rsb	lr, r6, #7
	ldr	r6, [sp]
	eor	r10, r1, #1
	mov	r1, #1
	add	r5, r5, #1
	add	lr, lr, r6
	add	r8, r8, r6
	it	le
	movle	r8, lr
	rsb	lr, r3, #8
	lsr	r8, r8, r4
	asr	lr, lr, #1
	cmp	ip, #7
	rsb	r4, r7, #3
	lsl	fp, r1, lr
	ite	ls
	movls	r7, #0
	movhi	r7, #1
	lsl	r10, r10, r4
	adds	r1, r8, #0
	mul	r9, ip, r8
	it	ne
	movne	r1, #1
	eor	r4, r7, #1
	ands	r7, r7, r1
	ands	r1, r1, r4
	ldr	r4, [sp, #4]
	cmp	r3, #2
	and	r10, r10, #7
	add	fp, fp, #-1
	orr	r1, r1, r7
	rsb	fp, r10, fp
	add	r9, r9, #7
	mul	r8, r4, r8
	ite	le
	movle	r4, #0
	movgt	r4, #1
	rsb	r10, r10, #7
	ands	r6, r1, r4
	lsr	r9, r9, #3
	add	fp, fp, r2
	add	r10, r10, r2
	it	ne
	movne	r10, fp
	cmp	r6, #0
	it	eq
	moveq	lr, #3
	add	r9, r9, #1
	lsr	r10, r10, lr
	add	lr, r8, #1
	cmp	r7, #0
	it	eq
	moveq	lr, r9
	mla	lr, lr, r10, r0
	eor	r4, r4, #1
	ands	r1, r1, r4
	adds	r3, r3, #1
	orrs	r1, r6, r1
	it	ne
	movne	r0, lr
	cmp	r3, #7
	bne	.L4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L3:
	mla	r0, r3, r2, r2
	bx	lr
	.size	png_image_size, .-png_image_size
	.section	.text.png_deflate_claim,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_deflate_claim, %function
png_deflate_claim:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r6, [r0, #460]
	sub	sp, sp, #92
	mov	r5, r1
	mov	r7, r2
	cmp	r6, #0
	bne	.L38
.L14:
	movw	r2, #16724
	ldr	r9, [r4, #528]
	movt	r2, 18756
	ldr	r10, [r4, #532]
	cmp	r5, r2
	ldr	r8, [r4, #536]
	ldr	r3, [r4, #540]
	beq	.L39
	ldr	r9, [r4, #548]
	ldr	r10, [r4, #552]
	ldr	r8, [r4, #556]
	ldr	r3, [r4, #560]
	ldr	fp, [r4, #564]
	ldr	r2, [r4, #452]
.L19:
	cmp	r7, #16384
	bhi	.L20
	add	r6, r8, #-1
	movs	r0, #1
	lsls	r0, r0, r6
	add	r7, r7, #262
	cmp	r7, r0
	bhi	.L20
.L21:
	lsrs	r0, r0, #1
	mov	r8, r6
	subs	r6, r6, #1
	cmp	r7, r0
	bls	.L21
.L20:
	ands	r2, r2, #2
	bne	.L22
	add	r6, r4, #464
	str	r2, [r4, #464]
	str	r2, [r4, #468]
	str	r2, [r4, #476]
	str	r2, [r4, #480]
.L23:
	ldr	lr, .L42
	movs	r7, #56
	str	r3, [sp]
	mov	r0, r6
	str	fp, [sp, #4]
	mov	r1, r9
.LPIC3:
	add	lr, pc
	mov	r2, r10
	mov	r3, r8
	str	lr, [sp, #8]
	str	r7, [sp, #12]
	bl	deflateInit2_(PLT)
	mov	r6, r0
	cmp	r0, #0
	bne	.L26
	ldr	r3, [r4, #452]
	orr	r3, r3, #2
	str	r3, [r4, #452]
.L25:
	movs	r0, #0
	str	r5, [r4, #460]
.L16:
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L22:
	ldr	r2, [r4, #568]
	cmp	r2, r9
	bne	.L24
	ldr	r2, [r4, #572]
	cmp	r2, r10
	beq	.L40
.L24:
	add	r6, r4, #464
	str	r3, [sp, #20]
	mov	r0, r6
	bl	deflateEnd(PLT)
	ldr	r3, [sp, #20]
	cmp	r0, #0
	bne	.L41
.L27:
	ldr	r1, [r4, #452]
	movs	r2, #0
	str	r2, [r4, #464]
	str	r2, [r4, #468]
	bic	r1, r1, #2
	str	r2, [r4, #476]
	str	r1, [r4, #452]
	str	r2, [r4, #480]
	b	.L23
.L38:
	ldr	r3, .L42+4
	lsrs	r1, r1, #24
	lsrs	r2, r5, #16
	lsr	ip, r6, #8
	lsr	r10, r6, #24
	lsr	r9, r6, #16
	lsr	fp, r5, #8
	strb	r6, [sp, #33]
	add	r8, sp, #24
	strb	r1, [sp, #24]
.LPIC0:
	add	r3, pc
	mov	lr, #58
	movs	r1, #64
	strb	r2, [sp, #25]
	mov	r0, r8
	movs	r2, #10
	movs	r6, #32
	strb	ip, [sp, #32]
	strb	lr, [sp, #28]
	strb	r5, [sp, #27]
	strb	fp, [sp, #26]
	strb	r10, [sp, #30]
	strb	r9, [sp, #31]
	strb	r6, [sp, #29]
	bl	png_safecat(PLT)
	mov	r0, r4
	mov	r1, r8
	bl	png_warning(PLT)
	ldr	r2, [r4, #460]
	movw	r3, #16724
	movt	r3, 18756
	cmp	r2, r3
	itt	ne
	movne	r3, #0
	strne	r3, [r4, #460]
	bne	.L14
	ldr	r3, .L42+8
	mvn	r0, #1
.LPIC1:
	add	r3, pc
	str	r3, [r4, #488]
	b	.L16
.L40:
	ldr	r2, [r4, #576]
	cmp	r2, r8
	bne	.L24
	ldr	r2, [r4, #580]
	cmp	r2, r3
	bne	.L24
	ldr	r2, [r4, #584]
	cmp	r2, fp
	bne	.L24
	movs	r3, #0
	add	r0, r4, #464
	str	r3, [r4, #464]
	str	r3, [r4, #468]
	str	r3, [r4, #476]
	str	r3, [r4, #480]
	bl	deflateReset(PLT)
	mov	r6, r0
	cmp	r0, #0
	beq	.L25
.L26:
	mov	r0, r4
	mov	r1, r6
	bl	png_zstream_error(PLT)
	mov	r0, r6
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L39:
	ldr	r2, [r4, #452]
	lsls	r1, r2, #31
	bpl	.L18
	ldr	fp, [r4, #544]
	b	.L19
.L18:
	ldrb	fp, [r4, #674]	@ zero_extendqisi2
	subs	fp, fp, #8
	it	ne
	movne	fp, #1
	b	.L19
.L41:
	ldr	r1, .L42+12
	mov	r0, r4
.LPIC2:
	add	r1, pc
	bl	png_warning(PLT)
	ldr	r3, [sp, #20]
	b	.L27
.L43:
	.align	2
.L42:
	.word	.LC4-(.LPIC3+4)
	.word	.LC1-(.LPIC0+4)
	.word	.LC2-(.LPIC1+4)
	.word	.LC3-(.LPIC2+4)
	.size	png_deflate_claim, .-png_deflate_claim
	.section	.text.png_check_keyword,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_check_keyword, %function
png_check_keyword:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	beq	.L45
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r9, #0
	mov	r8, r0
	sub	sp, sp, #260
	mov	r5, r1
	mov	r6, r9
	movs	r3, #1
	movs	r0, #32
.L46:
	mov	lr, r5
	ldrb	r4, [r5], #1	@ zero_extendqisi2
	sub	r7, r4, #33
	cbz	r4, .L55
.L51:
	cmp	r6, #78
	bhi	.L55
	cmp	r4, #160
	ite	ls
	movls	lr, #0
	movhi	lr, #1
	cmp	r7, #93
	ite	hi
	movhi	r7, lr
	orrls	r7, lr, #1
	cbz	r7, .L48
	strb	r4, [r2]
	mov	lr, r5
	ldrb	r4, [r5], #1	@ zero_extendqisi2
	adds	r6, r6, #1
	adds	r2, r2, #1
	movs	r3, #0
	sub	r7, r4, #33
	cmp	r4, #0
	bne	.L51
.L55:
	cmp	r6, #0
	ite	eq
	moveq	r3, #0
	andne	r3, r3, #1
	cbnz	r3, .L52
.L53:
	movs	r3, #0
	strb	r3, [r2]
	cbz	r6, .L61
	ldrb	r3, [lr]	@ zero_extendqisi2
	cbnz	r3, .L63
	cmp	r9, #0
	bne	.L64
.L61:
	mov	r0, r6
	add	sp, sp, #260
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L48:
	cbnz	r3, .L50
	strb	r0, [r2]
	adds	r6, r6, #1
	cmp	r4, #32
	it	ne
	movne	r9, r4
	adds	r2, r2, #1
	movs	r3, #1
	b	.L46
.L50:
	movs	r3, #1
	cmp	r9, #0
	bne	.L46
	mov	r9, r4
	b	.L46
.L52:
	subs	r6, r6, #1
	subs	r2, r2, #1
	cmp	r9, #0
	it	eq
	moveq	r9, #32
	b	.L53
.L63:
	ldr	r1, .L65
	mov	r0, r8
.LPIC12:
	add	r1, pc
	bl	png_warning(PLT)
	mov	r0, r6
	add	sp, sp, #260
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L64:
	mov	r2, r1
	mov	r0, sp
	movs	r1, #1
	bl	png_warning_parameter(PLT)
	mov	r0, sp
	mov	r3, r9
	movs	r1, #2
	movs	r2, #4
	bl	png_warning_parameter_signed(PLT)
	ldr	r2, .L65+4
	mov	r0, r8
	mov	r1, sp
.LPIC13:
	add	r2, pc
	bl	png_formatted_warning(PLT)
	mov	r0, r6
	add	sp, sp, #260
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L45:
	strb	r1, [r2]
	mov	r0, r1
	bx	lr
.L66:
	.align	2
.L65:
	.word	.LC5-(.LPIC12+4)
	.word	.LC6-(.LPIC13+4)
	.size	png_check_keyword, .-png_check_keyword
	.section	.text.png_text_compress,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_text_compress, %function
png_text_compress:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r2
	sub	sp, sp, #12
	ldr	r2, [r2, #4]
	mov	r10, r3
	mov	r4, r0
	bl	png_deflate_claim(PLT)
	cmp	r0, #0
	bne	.L86
	mov	r1, fp
	mov	r2, #1024
	ldr	r3, [r1], #12
	mov	r5, r2
	mov	r9, r0
	mov	r6, r2
	add	r7, r4, #520
	add	r8, r4, #464
	str	r3, [r4, #464]
	ldr	r3, [fp, #4]
	str	r1, [r4, #476]
	str	r2, [r4, #480]
	b	.L78
.L71:
	ldr	r3, [r4, #524]
	mov	r7, r0
	adds	r2, r0, #4
	str	r2, [r4, #476]
	add	r6, r6, r3
	str	r3, [r4, #480]
.L69:
	mov	r0, r8
	movs	r1, #4
	bl	deflate(PLT)
	ldr	r3, [r4, #468]
	mov	r2, r0
	str	r9, [r4, #468]
	ldr	r5, [r4, #480]
	cbnz	r0, .L70
.L78:
	str	r3, [r4, #468]
	cmp	r5, #0
	bne	.L69
	cmn	r6, r10
	bmi	.L80
	ldr	r0, [r7]
	cmp	r0, #0
	bne	.L71
	ldr	r1, [r4, #524]
	mov	r0, r4
	adds	r1, r1, #4
	bl	png_malloc_base(PLT)
	cmp	r0, #0
	beq	.L88
	str	r5, [r0]
	str	r0, [r7]
	b	.L71
.L80:
	mov	r3, r5
	mvn	r2, #3
.L70:
	subs	r5, r6, r5
	movw	r1, #65534
	add	r10, r10, r5
	movt	r1, 32767
	cmp	r10, r1
	mov	r7, #0
	str	r7, [r4, #480]
	str	r5, [fp, #8]
	bhi	.L89
	mov	r0, r4
	mov	r1, r2
	stmia	sp, {r2, r3}
	bl	png_zstream_error(PLT)
	ldmia	sp, {r2, r3}
	str	r7, [r4, #460]
	cmp	r3, #0
	it	eq
	cmpeq	r2, #1
	it	ne
	movne	r0, r2
	bne	.L86
	ldr	r3, [fp, #4]
	cmp	r3, #16384
	bls	.L90
.L85:
	mov	r0, r7
.L86:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L89:
	ldr	r3, .L91
	mvn	r0, #3
	str	r7, [r4, #460]
.LPIC14:
	add	r3, pc
	str	r3, [r4, #488]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L90:
	ldrb	r2, [fp, #12]	@ zero_extendqisi2
	and	r1, r2, #15
	cmp	r1, #8
	bne	.L85
	and	r1, r2, #240
	cmp	r1, #112
	bhi	.L85
	lsrs	r2, r2, #4
	movs	r0, #1
	adds	r1, r2, #7
	lsl	r1, r0, r1
	cmp	r3, r1
	bhi	.L85
.L76:
	subs	r2, r2, #1
	lsr	r1, r1, #1
	ite	ne
	movne	r0, #1
	moveq	r0, #0
	cmp	r3, r1
	ite	hi
	movhi	r0, #0
	andls	r0, r0, #1
	cmp	r0, #0
	bne	.L76
	ldrb	r1, [fp, #13]	@ zero_extendqisi2
	lsls	r2, r2, #4
	movw	r3, #4229
	orr	r2, r2, #8
	movt	r3, 2114
	and	r1, r1, #224
	strb	r2, [fp, #12]
	add	r2, r1, r2, lsl #8
	adds	r1, r1, #31
	umull	r4, r3, r3, r2
	subs	r4, r2, r3
	add	r3, r3, r4, lsr #1
	lsrs	r3, r3, #4
	rsb	r3, r3, r3, lsl #5
	subs	r3, r2, r3
	subs	r3, r1, r3
	strb	r3, [fp, #13]
	b	.L86
.L88:
	mov	r3, r0
	ldr	r5, [r4, #480]
	mvn	r2, #3
	b	.L70
.L92:
	.align	2
.L91:
	.word	.LC7-(.LPIC14+4)
	.size	png_text_compress, .-png_text_compress
	.section	.text.png_save_uint_32,"ax",%progbits
	.align	2
	.global	png_save_uint_32
	.thumb
	.thumb_func
	.type	png_save_uint_32, %function
png_save_uint_32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	lsrs	r2, r1, #16
	lsrs	r4, r1, #24
	lsrs	r3, r1, #8
	strb	r4, [r0]
	strb	r1, [r0, #3]
	strb	r2, [r0, #1]
	strb	r3, [r0, #2]
	ldr	r4, [sp], #4
	bx	lr
	.size	png_save_uint_32, .-png_save_uint_32
	.section	.text.png_save_uint_16,"ax",%progbits
	.align	2
	.global	png_save_uint_16
	.thumb
	.thumb_func
	.type	png_save_uint_16, %function
png_save_uint_16:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	lsrs	r3, r1, #8
	strb	r1, [r0, #1]
	strb	r3, [r0]
	bx	lr
	.size	png_save_uint_16, .-png_save_uint_16
	.section	.text.png_write_sig,"ax",%progbits
	.align	2
	.global	png_write_sig
	.thumb
	.thumb_func
	.type	png_write_sig, %function
png_write_sig:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L99
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldrb	r5, [r0, #681]	@ zero_extendqisi2
	sub	sp, sp, #8
.LPIC15:
	add	r2, pc
	mov	r3, sp
	ldr	r0, [r2]	@ unaligned
	movs	r6, #18
	ldr	r1, [r2, #4]	@ unaligned
	rsb	r2, r5, #8
	str	r6, [r4, #1040]
	stmia	r3!, {r0, r1}
	mov	r1, sp
	add	r1, r1, r5
	mov	r0, r4
	bl	png_write_data(PLT)
	ldrb	r3, [r4, #681]	@ zero_extendqisi2
	cmp	r3, #2
	ittt	ls
	ldrls	r3, [r4, #448]
	orrls	r3, r3, #4096
	strls	r3, [r4, #448]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L100:
	.align	2
.L99:
	.word	.LANCHOR0-(.LPIC15+4)
	.size	png_write_sig, .-png_write_sig
	.section	.text.png_write_chunk_start,"ax",%progbits
	.align	2
	.global	png_write_chunk_start
	.thumb
	.thumb_func
	.type	png_write_chunk_start, %function
png_write_chunk_start:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldrb	r3, [r1, #1]	@ zero_extendqisi2
	sub	sp, sp, #12
	ldrb	r5, [r1]	@ zero_extendqisi2
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	ldrb	r0, [r1, #2]	@ zero_extendqisi2
	orr	r5, r3, r5, lsl #24
	orrs	r5, r5, r6
	orr	r5, r5, r0, lsl #8
	cbz	r4, .L101
	movs	r3, #34
	mov	r1, r2
	str	r3, [r4, #1040]
	mov	r0, sp
	add	r6, sp, #4
	bl	png_save_uint_32(PLT)
	mov	r0, r6
	mov	r1, r5
	bl	png_save_uint_32(PLT)
	mov	r1, sp
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r6
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	str	r3, [r4, #1040]
.L101:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	png_write_chunk_start, .-png_write_chunk_start
	.section	.text.png_write_chunk_data,"ax",%progbits
	.align	2
	.global	png_write_chunk_data
	.thumb
	.thumb_func
	.type	png_write_chunk_data, %function
png_write_chunk_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L116
	cmp	r1, #0
	it	ne
	cmpne	r2, #0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	mov	r4, r2
	bne	.L117
	pop	{r4, r5, r6, pc}
.L117:
	mov	r6, r0
	bl	png_write_data(PLT)
	mov	r0, r6
	mov	r1, r5
	mov	r2, r4
	pop	{r4, r5, r6, lr}
	b	png_calculate_crc(PLT)
.L116:
	bx	lr
	.size	png_write_chunk_data, .-png_write_chunk_data
	.section	.text.png_write_chunk_end,"ax",%progbits
	.align	2
	.global	png_write_chunk_end
	.thumb
	.thumb_func
	.type	png_write_chunk_end, %function
png_write_chunk_end:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	sub	sp, sp, #12
	cbz	r0, .L118
	movs	r3, #130
	add	r5, sp, #4
	str	r3, [r0, #1040]
	mov	r0, r5
	ldr	r1, [r4, #652]
	bl	png_save_uint_32(PLT)
	mov	r0, r4
	mov	r1, r5
	movs	r2, #4
	bl	png_write_data(PLT)
.L118:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
	.size	png_write_chunk_end, .-png_write_chunk_end
	.section	.text.png_write_chunk,"ax",%progbits
	.align	2
	.global	png_write_chunk
	.thumb
	.thumb_func
	.type	png_write_chunk, %function
png_write_chunk:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r9, r2
	mov	r5, r3
	sub	sp, sp, #12
	ldrb	r7, [r1]	@ zero_extendqisi2
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	ldrb	r2, [r1, #3]	@ zero_extendqisi2
	cbz	r0, .L124
	cmp	r5, #0
	blt	.L131
	lsls	r6, r6, #16
	movs	r1, #34
	mov	r4, r0
	str	r1, [r0, #1040]
	orr	r6, r6, r7, lsl #24
	mov	r0, sp
	mov	r1, r5
	orrs	r6, r6, r2
	add	r7, sp, #4
	orr	r6, r6, r3, lsl #8
	bl	png_save_uint_32(PLT)
	mov	r1, r6
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, sp
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r6, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	mov	r1, r9
	mov	r2, r5
	str	r3, [r4, #1040]
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
.L124:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L131:
	ldr	r1, .L132
.LPIC16:
	add	r1, pc
	bl	png_error(PLT)
.L133:
	.align	2
.L132:
	.word	.LC8-(.LPIC16+4)
	.size	png_write_chunk, .-png_write_chunk
	.section	.text.png_free_buffer_list,"ax",%progbits
	.align	2
	.global	png_free_buffer_list
	.thumb
	.thumb_func
	.type	png_free_buffer_list, %function
png_free_buffer_list:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r3, r1
	ldr	r1, [r1]
	cbz	r1, .L134
	mov	r5, r0
	movs	r2, #0
	str	r2, [r3]
.L137:
	ldr	r4, [r1]
	mov	r0, r5
	bl	png_free(PLT)
	mov	r1, r4
	cmp	r4, #0
	bne	.L137
.L134:
	pop	{r3, r4, r5, pc}
	.size	png_free_buffer_list, .-png_free_buffer_list
	.section	.text.png_write_IHDR,"ax",%progbits
	.align	2
	.global	png_write_IHDR
	.thumb
	.thumb_func
	.type	png_write_IHDR, %function
png_write_IHDR:
	@ args = 16, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	ldr	r6, [sp, #64]
	mov	r4, r0
	mov	r5, r1
	mov	fp, r2
	mov	r7, r3
	ldr	r10, [sp, #72]
	ldr	r9, [sp, #76]
	cmp	r6, #6
	bhi	.L143
	tbh	[pc, r6, lsl #1]
.L145:
	.2byte	(.L144-.L145)/2
	.2byte	(.L143-.L145)/2
	.2byte	(.L146-.L145)/2
	.2byte	(.L147-.L145)/2
	.2byte	(.L148-.L145)/2
	.2byte	(.L143-.L145)/2
	.2byte	(.L149-.L145)/2
.L149:
	cmp	r7, #16
	it	ne
	cmpne	r7, #8
	itt	eq
	moveq	r3, #4
	strbeq	r3, [r0, #679]
	bne	.L185
.L151:
	ldr	r2, [sp, #68]
	cmp	r2, #0
	bne	.L186
.L156:
	ldr	r3, [r4, #948]
	lsls	r2, r3, #29
	bpl	.L157
	ldr	r3, [r4, #448]
	lsls	r3, r3, #19
	bmi	.L157
	bic	r3, r6, #4
	cmp	r3, #2
	bne	.L157
	cmp	r10, #64
	beq	.L158
.L157:
	cmp	r10, #0
	bne	.L187
.L158:
	cmp	r9, #1
	it	ls
	uxtbls	r9, r9
	bls	.L160
	ldr	r1, .L188
	mov	r0, r4
	mov	r9, #1
.LPIC25:
	add	r1, pc
	bl	png_warning(PLT)
.L160:
	ldrb	r3, [r4, #679]	@ zero_extendqisi2
	uxtb	r8, r7
	uxtb	r6, r6
	movs	r2, #0
	strb	r2, [r4, #984]
	mov	r1, r5
	strb	r3, [r4, #680]
	smulbb	r7, r7, r3
	strb	r6, [r4, #675]
	str	r5, [r4, #588]
	str	r5, [r4, #600]
	uxtb	r7, r7
	strb	r9, [r4, #672]
	strb	r10, [r4, #952]
	cmp	r7, #7
	strb	r7, [r4, #678]
	ite	ls
	mulls	r7, r5, r7
	lsrhi	r7, r7, #3
	str	fp, [r4, #592]
	it	hi
	mulhi	r7, r5, r7
	strb	r8, [r4, #676]
	strb	r8, [r4, #677]
	movw	r5, #17490
	itt	ls
	addls	r7, r7, #7
	lsrls	r7, r7, #3
	movt	r5, 18760
	str	r7, [r4, #604]
	add	r7, sp, #8
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, fp
	add	r0, sp, #12
	bl	png_save_uint_32(PLT)
	movs	r3, #34
	mov	r0, sp
	str	r3, [r4, #1040]
	movs	r1, #13
	movs	r3, #0
	strb	r6, [sp, #17]
	add	r6, sp, #4
	strb	r3, [sp, #18]
	strb	r8, [sp, #16]
	strb	r10, [sp, #19]
	strb	r9, [sp, #20]
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r6
	bl	png_save_uint_32(PLT)
	mov	r1, sp
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r6
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r1, r7
	str	r3, [r4, #1040]
	mov	r0, r4
	movs	r2, #13
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	ldrb	r3, [r4, #674]	@ zero_extendqisi2
	cbnz	r3, .L163
	ldrb	r3, [r4, #675]	@ zero_extendqisi2
	cmp	r3, #3
	beq	.L164
	ldrb	r3, [r4, #676]	@ zero_extendqisi2
	cmp	r3, #7
	itt	hi
	movhi	r3, #248
	strbhi	r3, [r4, #674]
	bls	.L164
.L163:
	movs	r3, #1
	str	r3, [r4, #448]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L144:
	subs	r1, r7, #1
	cmp	r1, #15
	bhi	.L150
	movs	r2, #1
	movw	r3, #32907
	lsl	r1, r2, r1
	ands	r3, r3, r1
	cmp	r3, #0
	beq	.L150
	strb	r2, [r0, #679]
	ldr	r2, [sp, #68]
	cmp	r2, #0
	beq	.L156
.L186:
	ldr	r1, .L188+4
	mov	r0, r4
.LPIC23:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L156
.L147:
	subs	r2, r7, #1
	cmp	r2, #7
	bhi	.L153
	movs	r3, #1
	lsl	r2, r3, r2
	tst	r2, #139
	beq	.L153
.L184:
	strb	r3, [r4, #679]
	b	.L151
.L148:
	cmp	r7, #16
	it	ne
	cmpne	r7, #8
	it	eq
	moveq	r3, #2
	beq	.L184
	ldr	r1, .L188+8
.LPIC20:
	add	r1, pc
	bl	png_error(PLT)
.L146:
	cmp	r7, #16
	it	ne
	cmpne	r7, #8
	itt	eq
	moveq	r3, #3
	strbeq	r3, [r0, #679]
	beq	.L151
	ldr	r1, .L188+12
.LPIC18:
	add	r1, pc
	bl	png_error(PLT)
.L143:
	ldr	r1, .L188+16
.LPIC22:
	add	r1, pc
	bl	png_error(PLT)
.L164:
	movs	r3, #8
	strb	r3, [r4, #674]
	movs	r3, #1
	str	r3, [r4, #448]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L187:
	ldr	r1, .L188+20
	mov	r0, r4
	mov	r10, #0
.LPIC24:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L158
.L153:
	ldr	r1, .L188+24
	mov	r0, r4
.LPIC19:
	add	r1, pc
	bl	png_error(PLT)
.L150:
	ldr	r1, .L188+28
	mov	r0, r4
.LPIC17:
	add	r1, pc
	bl	png_error(PLT)
.L185:
	ldr	r1, .L188+32
.LPIC21:
	add	r1, pc
	bl	png_error(PLT)
.L189:
	.align	2
.L188:
	.word	.LC17-(.LPIC25+4)
	.word	.LC15-(.LPIC23+4)
	.word	.LC12-(.LPIC20+4)
	.word	.LC10-(.LPIC18+4)
	.word	.LC14-(.LPIC22+4)
	.word	.LC16-(.LPIC24+4)
	.word	.LC11-(.LPIC19+4)
	.word	.LC9-(.LPIC17+4)
	.word	.LC13-(.LPIC21+4)
	.size	png_write_IHDR, .-png_write_IHDR
	.section	.text.png_write_PLTE,"ax",%progbits
	.align	2
	.global	png_write_PLTE
	.thumb
	.thumb_func
	.type	png_write_PLTE, %function
png_write_PLTE:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #948]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0
	sub	sp, sp, #8
	mov	r6, r2
	and	r3, r3, #1
	orrs	r3, r2, r3
	ldrb	r3, [r0, #675]	@ zero_extendqisi2
	beq	.L191
	cmp	r2, #256
	bls	.L192
.L191:
	cmp	r3, #3
	mov	r0, r5
	beq	.L204
	ldr	r1, .L206
.LPIC27:
	add	r1, pc
	bl	png_warning(PLT)
.L190:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L192:
	lsls	r3, r3, #30
	bpl	.L205
	add	r9, r2, r2, lsl #1
	movs	r3, #34
	movw	r7, #21573
	strh	r2, [r5, #660]	@ movhi
	mov	r4, r1
	str	r3, [r0, #1040]
	mov	r1, r9
	mov	r0, sp
	movt	r7, 20556
	add	r10, sp, #4
	bl	png_save_uint_32(PLT)
	mov	r1, r7
	mov	r0, r10
	bl	png_save_uint_32(PLT)
	mov	r1, sp
	movs	r2, #8
	mov	r0, r5
	adds	r4, r4, #3
	bl	png_write_data(PLT)
	mov	r0, r5
	str	r7, [r5, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r5
	mov	r1, r10
	movs	r2, #4
	add	r9, r9, r4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	str	r3, [r5, #1040]
	cbz	r6, .L198
.L199:
	ldrb	r7, [r4, #-3]	@ zero_extendqisi2
	movs	r2, #3
	ldrb	r6, [r4, #-2]	@ zero_extendqisi2
	mov	r0, r5
	ldrb	r3, [r4, #-1]	@ zero_extendqisi2
	mov	r1, sp
	add	r4, r4, r2
	strb	r7, [sp]
	strb	r6, [sp, #1]
	strb	r3, [sp, #2]
	bl	png_write_chunk_data(PLT)
	cmp	r4, r9
	bne	.L199
.L198:
	mov	r0, r5
	bl	png_write_chunk_end(PLT)
	ldr	r3, [r5, #448]
	orr	r3, r3, #2
	str	r3, [r5, #448]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L205:
	ldr	r1, .L206+4
.LPIC28:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L190
.L204:
	ldr	r1, .L206+8
.LPIC26:
	add	r1, pc
	bl	png_error(PLT)
.L207:
	.align	2
.L206:
	.word	.LC18-(.LPIC27+4)
	.word	.LC19-(.LPIC28+4)
	.word	.LC18-(.LPIC26+4)
	.size	png_write_PLTE, .-png_write_PLTE
	.section	.text.png_compress_IDAT,"ax",%progbits
	.align	2
	.global	png_compress_IDAT
	.thumb
	.thumb_func
	.type	png_compress_IDAT, %function
png_compress_IDAT:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r3
	ldr	r3, [r0, #460]
	movw	r5, #16724
	movt	r5, 18756
	sub	sp, sp, #28
	mov	r4, r0
	mov	r9, r1
	cmp	r3, r5
	mov	r7, r2
	beq	.L209
	ldr	r5, [r0, #520]
	cmp	r5, #0
	beq	.L230
	mov	r1, r5
	bl	png_free_buffer_list(PLT)
.L211:
	mov	r0, r4
	bl	png_image_size(PLT)
	movw	r1, #16724
	mov	r2, r0
	movt	r1, 18756
	mov	r0, r4
	bl	png_deflate_claim(PLT)
	cmp	r0, #0
	bne	.L229
	ldr	r2, [r4, #520]
	ldr	r3, [r4, #524]
	adds	r2, r2, #4
	str	r2, [r4, #476]
	str	r3, [r4, #480]
.L209:
	movw	r3, #16724
	str	r7, [r4, #468]
	movt	r3, 18756
	add	r8, r4, #464
	str	r3, [sp, #8]
	movw	r3, #4229
	movt	r3, 2114
	movs	r7, #0
	str	r3, [sp, #12]
	add	r3, sp, #16
	str	r3, [sp]
	add	r3, sp, #20
	str	r9, [r4, #464]
	str	r3, [sp, #4]
.L213:
	mov	r0, r8
	mov	r1, r6
	bl	deflate(PLT)
	ldr	r3, [r4, #480]
	mov	r10, r0
	ldr	r5, [r4, #468]
	str	r7, [r4, #468]
	cmp	r3, #0
	bne	.L214
	ldr	r2, [r4, #448]
	ldr	r9, [r4, #520]
	ldr	fp, [r4, #524]
	lsls	r2, r2, #29
	bmi	.L215
	ldrb	r2, [r4, #984]	@ zero_extendqisi2
	cbnz	r2, .L215
	mov	r0, r4
	bl	png_image_size(PLT)
	cmp	r0, #16384
	bls	.L231
.L215:
	cmp	fp, #0
	blt	.L226
	movs	r0, #34
	mov	r1, fp
	str	r0, [r4, #1040]
	add	r0, sp, #16
	bl	png_save_uint_32(PLT)
	movw	r1, #16724
	add	r0, sp, #20
	movt	r1, 18756
	add	r9, r9, #4
	bl	png_save_uint_32(PLT)
	add	r1, sp, #16
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	ldr	r3, [sp, #8]
	mov	r0, r4
	str	r3, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	add	r1, sp, #20
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r2, #66
	mov	r1, r9
	str	r2, [r4, #1040]
	mov	r0, r4
	mov	r2, fp
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	clz	r1, r10
	ldr	r2, [r4, #448]
	lsrs	r1, r1, #5
	cmp	r6, #0
	str	r9, [r4, #476]
	it	eq
	moveq	r1, #0
	str	fp, [r4, #480]
	orr	r2, r2, #4
	str	r2, [r4, #448]
	cbnz	r1, .L227
	mov	r3, fp
.L214:
	cmp	r10, #0
	bne	.L220
	cmp	r5, #0
	beq	.L232
.L227:
	str	r5, [r4, #468]
	b	.L213
.L231:
	ldrb	r2, [r9, #4]	@ zero_extendqisi2
	and	r1, r2, #15
	cmp	r1, #8
	bne	.L215
	and	r1, r2, #240
	cmp	r1, #112
	bhi	.L215
	lsrs	r2, r2, #4
	mov	lr, #1
	adds	r1, r2, #7
	lsl	r1, lr, r1
	cmp	r0, r1
	bhi	.L215
.L217:
	subs	r2, r2, #1
	lsr	r1, r1, #1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	cmp	r0, r1
	ite	hi
	movhi	r3, #0
	andls	r3, r3, #1
	cmp	r3, #0
	bne	.L217
	ldrb	lr, [r9, #5]	@ zero_extendqisi2
	lsls	r2, r2, #4
	ldr	r3, [sp, #12]
	orr	r2, r2, #8
	and	lr, lr, #224
	strb	r2, [r9, #4]
	add	r2, lr, r2, lsl #8
	add	lr, lr, #31
	umull	r3, r1, r3, r2
	subs	r0, r2, r1
	add	r1, r1, r0, lsr #1
	lsrs	r1, r1, #4
	rsb	r1, r1, r1, lsl #5
	subs	r1, r2, r1
	rsb	r1, r1, lr
	strb	r1, [r9, #5]
	b	.L215
.L220:
	cmp	r10, #1
	it	eq
	cmpeq	r6, #4
	mov	r2, r3
	bne	.L222
	ldr	r3, [r4, #448]
	ldr	r5, [r4, #524]
	ldr	r8, [r4, #520]
	lsls	r3, r3, #29
	sub	r5, r5, r2
	bmi	.L223
	ldrb	r3, [r4, #984]	@ zero_extendqisi2
	cbnz	r3, .L223
	mov	r0, r4
	bl	png_image_size(PLT)
	cmp	r0, #16384
	bhi	.L223
	ldrb	r3, [r8, #4]	@ zero_extendqisi2
	and	r2, r3, #15
	cmp	r2, #8
	beq	.L233
.L223:
	cmp	r5, #0
	blt	.L226
	movs	r3, #34
	add	r9, sp, #16
	movw	r6, #16724
	str	r3, [r4, #1040]
	mov	r0, r9
	mov	r1, r5
	movt	r6, 18756
	add	r7, sp, #20
	bl	png_save_uint_32(PLT)
	mov	r1, r6
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r9
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r6, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r2, r5
	str	r3, [r4, #1040]
	add	r1, r8, #4
	mov	r0, r4
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	ldr	r2, [r4, #448]
	movs	r3, #0
	str	r3, [r4, #480]
	str	r3, [r4, #476]
	orr	r2, r2, #12
	str	r3, [r4, #460]
	str	r2, [r4, #448]
.L208:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L232:
	cmp	r6, #4
	bne	.L208
	ldr	r1, .L234
	mov	r0, r4
.LPIC30:
	add	r1, pc
	bl	png_error(PLT)
.L230:
	ldr	r1, [r0, #524]
	adds	r1, r1, #4
	bl	png_malloc(PLT)
	str	r0, [r4, #520]
	str	r5, [r0]
	b	.L211
.L233:
	and	r2, r3, #240
	cmp	r2, #112
	bhi	.L223
	lsrs	r3, r3, #4
	movs	r1, #1
	adds	r2, r3, #7
	lsl	r2, r1, r2
	cmp	r0, r2
	bhi	.L223
.L225:
	subs	r3, r3, #1
	lsr	r2, r2, #1
	ite	ne
	movne	r1, #1
	moveq	r1, #0
	cmp	r0, r2
	ite	hi
	movhi	r1, #0
	andls	r1, r1, #1
	cmp	r1, #0
	bne	.L225
	ldrb	r1, [r8, #5]	@ zero_extendqisi2
	lsls	r2, r3, #4
	movw	r3, #4229
	orr	r2, r2, #8
	movt	r3, 2114
	and	r1, r1, #224
	strb	r2, [r8, #4]
	add	r2, r1, r2, lsl #8
	adds	r1, r1, #31
	umull	r6, r3, r3, r2
	subs	r0, r2, r3
	add	r3, r3, r0, lsr #1
	lsrs	r3, r3, #4
	rsb	r3, r3, r3, lsl #5
	subs	r3, r2, r3
	subs	r3, r1, r3
	strb	r3, [r8, #5]
	b	.L223
.L226:
	ldr	r1, .L234+4
	mov	r0, r4
.LPIC29:
	add	r1, pc
	bl	png_error(PLT)
.L222:
	mov	r1, r10
	mov	r0, r4
	bl	png_zstream_error(PLT)
.L229:
	mov	r0, r4
	ldr	r1, [r4, #488]
	bl	png_error(PLT)
.L235:
	.align	2
.L234:
	.word	.LC20-(.LPIC30+4)
	.word	.LC8-(.LPIC29+4)
	.size	png_compress_IDAT, .-png_compress_IDAT
	.section	.text.png_write_IEND,"ax",%progbits
	.align	2
	.global	png_write_IEND
	.thumb
	.thumb_func
	.type	png_write_IEND, %function
png_write_IEND:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #12
	cbz	r0, .L237
	movs	r3, #34
	movw	r5, #20036
	str	r3, [r0, #1040]
	movs	r1, #0
	mov	r0, sp
	movt	r5, 18757
	add	r6, sp, #4
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r6
	bl	png_save_uint_32(PLT)
	mov	r1, sp
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r6
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	movs	r1, #0
	mov	r0, r4
	str	r3, [r4, #1040]
	mov	r2, r1
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
.L237:
	ldr	r3, [r4, #448]
	orr	r3, r3, #16
	str	r3, [r4, #448]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	png_write_IEND, .-png_write_IEND
	.section	.text.png_write_gAMA_fixed,"ax",%progbits
	.align	2
	.global	png_write_gAMA_fixed
	.thumb
	.thumb_func
	.type	png_write_gAMA_fixed, %function
png_write_gAMA_fixed:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	mov	r4, r0
	add	r5, sp, #4
	mov	r0, r5
	bl	png_save_uint_32(PLT)
	cbz	r4, .L242
	movs	r3, #34
	add	r8, sp, #8
	movw	r6, #19777
	str	r3, [r4, #1040]
	mov	r0, r8
	movs	r1, #4
	movt	r6, 26433
	add	r7, sp, #12
	bl	png_save_uint_32(PLT)
	mov	r1, r6
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r8
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r6, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	mov	r1, r5
	str	r3, [r4, #1040]
	movs	r2, #4
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
.L242:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	png_write_gAMA_fixed, .-png_write_gAMA_fixed
	.section	.text.png_write_sRGB,"ax",%progbits
	.align	2
	.global	png_write_sRGB
	.thumb
	.thumb_func
	.type	png_write_sRGB, %function
png_write_sRGB:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #3
	push	{r4, r5, r6, r7, lr}
	mov	r5, r1
	sub	sp, sp, #20
	mov	r4, r0
	ble	.L249
	ldr	r1, .L255
.LPIC31:
	add	r1, pc
	bl	png_warning(PLT)
.L249:
	strb	r5, [sp]
	cbz	r4, .L248
	movs	r3, #34
	add	r7, sp, #8
	movw	r5, #18242
	str	r3, [r4, #1040]
	mov	r0, r7
	movs	r1, #1
	movt	r5, 29522
	add	r6, sp, #12
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r6
	bl	png_save_uint_32(PLT)
	mov	r1, r7
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r6
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	str	r3, [r4, #1040]
	mov	r1, sp
	movs	r2, #1
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
.L248:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L256:
	.align	2
.L255:
	.word	.LC21-(.LPIC31+4)
	.size	png_write_sRGB, .-png_write_sRGB
	.section	.text.png_write_iCCP,"ax",%progbits
	.align	2
	.global	png_write_iCCP
	.thumb
	.thumb_func
	.type	png_write_iCCP, %function
png_write_iCCP:
	@ args = 0, pretend = 0, frame = 1136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r2
	subw	sp, sp, #1140
	cmp	r2, #0
	beq	.L271
	ldrb	r6, [r2, #1]	@ zero_extendqisi2
	ldrb	r4, [r2]	@ zero_extendqisi2
	ldrb	r3, [r5, #2]	@ zero_extendqisi2
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	lsls	r6, r6, #16
	add	r6, r6, r4, lsl #24
	add	r6, r6, r2
	add	r6, r6, r3, lsl #8
	cmp	r6, #131
	bls	.L272
	ands	fp, r6, #3
	bne	.L273
	add	r9, sp, #12
	mov	r7, r0
	mov	r2, r9
	bl	png_check_keyword(PLT)
	cmp	r0, #0
	beq	.L274
	movw	r8, #17232
	add	r10, r0, #2
	add	r4, sp, #96
	movt	r8, 26947
	add	lr, r9, r0
	mov	r1, r8
	mov	r3, r10
	mov	r2, r4
	mov	r0, r7
	strb	fp, [lr, #1]
	stmia	r4, {r5, r6, fp}
	bl	png_text_compress(PLT)
	cmp	r0, #0
	bne	.L275
	ldr	r1, [r4, #8]
	add	r1, r1, r10
	cbz	r7, .L263
	movs	r3, #34
	add	r6, sp, #4
	str	r3, [r7, #1040]
	mov	r0, r6
	add	r5, sp, #8
	bl	png_save_uint_32(PLT)
	mov	r0, r5
	mov	r1, r8
	bl	png_save_uint_32(PLT)
	mov	r1, r6
	movs	r2, #8
	mov	r0, r7
	bl	png_write_data(PLT)
	mov	r0, r7
	str	r8, [r7, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r7
	mov	r1, r5
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	str	r3, [r7, #1040]
.L263:
	mov	r1, r9
	mov	r2, r10
	mov	r0, r7
	mov	r5, #1024
	bl	png_write_chunk_data(PLT)
	ldr	r4, [r4, #8]
	add	r1, sp, #108
	ldr	r6, [r7, #520]
	b	.L265
.L276:
	adds	r1, r6, #4
	ldr	r5, [r7, #524]
	ldr	r6, [r6]
.L265:
	cmp	r5, r4
	mov	r0, r7
	it	cs
	movcs	r5, r4
	mov	r2, r5
	bl	png_write_chunk_data(PLT)
	subs	r4, r4, r5
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	cmp	r6, #0
	it	eq
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L276
	mov	r0, r7
	cbnz	r4, .L277
	bl	png_write_chunk_end(PLT)
	addw	sp, sp, #1140
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L271:
	ldr	r1, .L278
.LPIC32:
	add	r1, pc
	bl	png_error(PLT)
.L277:
	ldr	r1, .L278+4
.LPIC36:
	add	r1, pc
	bl	png_error(PLT)
.L275:
	mov	r0, r7
	ldr	r1, [r7, #488]
	bl	png_error(PLT)
.L274:
	ldr	r1, .L278+8
	mov	r0, r7
.LPIC35:
	add	r1, pc
	bl	png_error(PLT)
.L273:
	ldr	r1, .L278+12
.LPIC34:
	add	r1, pc
	bl	png_error(PLT)
.L272:
	ldr	r1, .L278+16
.LPIC33:
	add	r1, pc
	bl	png_error(PLT)
.L279:
	.align	2
.L278:
	.word	.LC22-(.LPIC32+4)
	.word	.LC26-(.LPIC36+4)
	.word	.LC25-(.LPIC35+4)
	.word	.LC24-(.LPIC34+4)
	.word	.LC23-(.LPIC33+4)
	.size	png_write_iCCP, .-png_write_iCCP
	.section	.text.png_write_sPLT,"ax",%progbits
	.align	2
	.global	png_write_sPLT
	.thumb
	.thumb_func
	.type	png_write_sPLT, %function
png_write_sPLT:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #108
	ldrb	r8, [r1, #4]	@ zero_extendqisi2
	add	r9, sp, #24
	mov	fp, r1
	mov	r2, r9
	ldr	r1, [r1]
	mov	r6, r0
	ldr	r7, [fp, #12]
	cmp	r8, #8
	ite	ne
	movne	r8, #10
	moveq	r8, #6
	bl	png_check_keyword(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L295
	cbz	r6, .L283
	movs	r2, #34
	add	r5, sp, #8
	adds	r1, r0, #2
	movw	r10, #19540
	str	r2, [r6, #1040]
	mla	r1, r7, r8, r1
	mov	r0, r5
	movt	r10, 29520
	add	r7, sp, #12
	bl	png_save_uint_32(PLT)
	mov	r1, r10
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	movs	r2, #8
	mov	r0, r6
	bl	png_write_data(PLT)
	mov	r0, r6
	str	r10, [r6, #616]
	bl	png_reset_crc(PLT)
	movs	r2, #4
	mov	r0, r6
	mov	r1, r7
	bl	png_calculate_crc(PLT)
	movs	r2, #66
	str	r2, [r6, #1040]
.L283:
	adds	r2, r4, #1
	mov	r1, r9
	mov	r0, r6
	bl	png_write_chunk_data(PLT)
	movs	r2, #1
	mov	r0, r6
	add	r1, fp, #4
	bl	png_write_chunk_data(PLT)
	ldr	r2, [fp, #12]
	ldr	r4, [fp, #8]
	add	r2, r2, r2, lsl #2
	add	r2, r4, r2, lsl #1
	cmp	r4, r2
	bcs	.L287
	add	r3, sp, #10
	adds	r4, r4, #10
	add	r5, sp, #8
	add	r7, sp, #12
	str	r3, [sp, #4]
	add	r10, sp, #14
	add	r9, sp, #16
	b	.L288
.L285:
	mov	r0, r5
	ldrh	r1, [r4, #-10]
	bl	png_save_uint_16(PLT)
	add	r0, sp, #10
	ldrh	r1, [r4, #-8]
	bl	png_save_uint_16(PLT)
	mov	r0, r7
	ldrh	r1, [r4, #-6]
	bl	png_save_uint_16(PLT)
	mov	r0, r10
	ldrh	r1, [r4, #-4]
	bl	png_save_uint_16(PLT)
	mov	r0, r9
	ldrh	r1, [r4, #-2]
	bl	png_save_uint_16(PLT)
.L286:
	mov	r1, r5
	mov	r2, r8
	mov	r0, r6
	bl	png_write_chunk_data(PLT)
	ldr	r2, [fp, #12]
	ldr	r1, [fp, #8]
	add	r2, r2, r2, lsl #2
	add	r1, r1, r2, lsl #1
	cmp	r4, r1
	add	r4, r4, #10
	bcs	.L287
.L288:
	ldrb	r2, [fp, #4]	@ zero_extendqisi2
	cmp	r2, #8
	bne	.L285
	ldrh	r2, [r4, #-10]
	mov	r0, r7
	strb	r2, [sp, #8]
	ldrh	r2, [r4, #-8]
	strb	r2, [sp, #9]
	ldrh	r2, [r4, #-6]
	strb	r2, [sp, #10]
	ldrh	r2, [r4, #-4]
	strb	r2, [sp, #11]
	ldrh	r1, [r4, #-2]
	bl	png_save_uint_16(PLT)
	b	.L286
.L287:
	mov	r0, r6
	bl	png_write_chunk_end(PLT)
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L295:
	ldr	r1, .L296
	mov	r0, r6
.LPIC45:
	add	r1, pc
	bl	png_error(PLT)
.L297:
	.align	2
.L296:
	.word	.LC27-(.LPIC45+4)
	.size	png_write_sPLT, .-png_write_sPLT
	.section	.text.png_write_sBIT,"ax",%progbits
	.align	2
	.global	png_write_sBIT
	.thumb
	.thumb_func
	.type	png_write_sBIT, %function
png_write_sBIT:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	lsls	r0, r2, #30
	sub	sp, sp, #16
	bpl	.L299
	ldrb	r3, [r1]	@ zero_extendqisi2
	cmp	r2, #3
	ite	ne
	ldrbne	r0, [r4, #677]	@ zero_extendqisi2
	moveq	r0, #8
	cbz	r3, .L303
	cmp	r0, r3
	bcs	.L325
.L303:
	ldr	r1, .L326
	mov	r0, r4
.LPIC46:
	add	r1, pc
	bl	png_warning(PLT)
.L298:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L299:
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L303
	ldrb	r0, [r4, #677]	@ zero_extendqisi2
	cmp	r0, r3
	bcc	.L303
	movs	r0, #2
	movs	r5, #1
	strb	r3, [sp]
.L304:
	lsls	r3, r2, #29
	bpl	.L305
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L303
	ldrb	r2, [r4, #677]	@ zero_extendqisi2
	cmp	r2, r3
	bcc	.L303
	add	r2, sp, #16
	add	r2, r2, r5
	mov	r5, r0
	strb	r3, [r2, #-16]
.L306:
	movs	r3, #34
	add	r8, sp, #8
	movw	r6, #18772
	str	r3, [r4, #1040]
	mov	r0, r8
	mov	r1, r5
	movt	r6, 29506
	add	r7, sp, #12
	bl	png_save_uint_32(PLT)
	mov	r1, r6
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r8
	mov	r0, r4
	movs	r2, #8
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r6, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	mov	r2, r5
	str	r3, [r4, #1040]
	mov	r1, sp
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	b	.L298
.L325:
	ldrb	r5, [r1, #1]	@ zero_extendqisi2
	cmp	r5, #0
	beq	.L303
	cmp	r0, r5
	bcc	.L303
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	cmp	r6, #0
	beq	.L303
	cmp	r0, r6
	bcc	.L303
	strb	r5, [sp, #1]
	movs	r0, #4
	strb	r3, [sp]
	movs	r5, #3
	strb	r6, [sp, #2]
	b	.L304
.L305:
	cmp	r4, #0
	bne	.L306
	b	.L298
.L327:
	.align	2
.L326:
	.word	.LC28-(.LPIC46+4)
	.size	png_write_sBIT, .-png_write_sBIT
	.section	.text.png_write_cHRM_fixed,"ax",%progbits
	.align	2
	.global	png_write_cHRM_fixed
	.thumb
	.thumb_func
	.type	png_write_cHRM_fixed, %function
png_write_cHRM_fixed:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #40
	add	r6, sp, #8
	mov	r4, r1
	mov	r5, r0
	mov	r0, r6
	ldr	r1, [r1, #24]
	bl	png_save_int_32(PLT)
	ldr	r1, [r4, #28]
	add	r0, sp, #12
	bl	png_save_int_32(PLT)
	ldr	r1, [r4]
	add	r0, sp, #16
	bl	png_save_int_32(PLT)
	ldr	r1, [r4, #4]
	add	r0, sp, #20
	bl	png_save_int_32(PLT)
	ldr	r1, [r4, #8]
	add	r0, sp, #24
	bl	png_save_int_32(PLT)
	ldr	r1, [r4, #12]
	add	r0, sp, #28
	bl	png_save_int_32(PLT)
	ldr	r1, [r4, #16]
	add	r0, sp, #32
	bl	png_save_int_32(PLT)
	ldr	r1, [r4, #20]
	add	r0, sp, #36
	bl	png_save_int_32(PLT)
	cbz	r5, .L328
	movs	r3, #34
	movw	r4, #21069
	str	r3, [r5, #1040]
	mov	r0, sp
	movs	r1, #32
	movt	r4, 25416
	add	r7, sp, #4
	bl	png_save_uint_32(PLT)
	mov	r1, r4
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, sp
	movs	r2, #8
	mov	r0, r5
	bl	png_write_data(PLT)
	mov	r0, r5
	str	r4, [r5, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r5
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r5
	mov	r1, r6
	str	r3, [r5, #1040]
	movs	r2, #32
	bl	png_write_chunk_data(PLT)
	mov	r0, r5
	bl	png_write_chunk_end(PLT)
.L328:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	png_write_cHRM_fixed, .-png_write_cHRM_fixed
	.section	.text.png_write_tRNS,"ax",%progbits
	.align	2
	.global	png_write_tRNS
	.thumb
	.thumb_func
	.type	png_write_tRNS, %function
png_write_tRNS:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #24
	ldr	r5, [sp, #48]
	mov	r4, r0
	cmp	r5, #3
	beq	.L349
	cbz	r5, .L350
	cmp	r5, #2
	beq	.L351
	ldr	r1, .L353
.LPIC50:
	add	r1, pc
	bl	png_app_warning(PLT)
.L334:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L350:
	ldrb	r3, [r0, #676]	@ zero_extendqisi2
	movs	r5, #1
	ldrh	r1, [r2, #8]
	lsl	r3, r5, r3
	cmp	r1, r3
	blt	.L341
	ldr	r1, .L353+4
.LPIC48:
	add	r1, pc
	bl	png_app_warning(PLT)
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L349:
	cmp	r3, #0
	ble	.L336
	ldrh	r2, [r0, #660]
	cmp	r3, r2
	ble	.L337
.L336:
	ldr	r1, .L353+8
	mov	r0, r4
.LPIC47:
	add	r1, pc
	bl	png_app_warning(PLT)
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L341:
	add	r6, sp, #8
	add	r8, sp, #16
	mov	r0, r6
	movw	r5, #20051
	bl	png_save_uint_16(PLT)
	movs	r3, #34
	mov	r0, r8
	str	r3, [r4, #1040]
	movt	r5, 29778
	add	r7, sp, #20
	movs	r1, #2
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r8
	mov	r0, r4
	movs	r2, #8
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r1, r6
	str	r3, [r4, #1040]
	mov	r0, r4
	movs	r2, #2
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L337:
	movs	r2, #34
	add	r8, sp, #16
	movw	r5, #20051
	str	r2, [r0, #1040]
	mov	r6, r1
	mov	r0, r8
	mov	r1, r3
	movt	r5, 29778
	add	r7, sp, #20
	str	r3, [sp, #4]
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r8
	mov	r0, r4
	movs	r2, #8
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	ldr	r3, [sp, #4]
	movs	r0, #66
	str	r0, [r4, #1040]
	mov	r1, r6
	mov	r0, r4
	mov	r2, r3
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	b	.L334
.L351:
	add	r5, sp, #8
	ldrh	r1, [r2, #2]
	mov	r0, r5
	str	r2, [sp, #4]
	bl	png_save_uint_16(PLT)
	ldr	r2, [sp, #4]
	add	r0, sp, #10
	ldrh	r1, [r2, #4]
	bl	png_save_uint_16(PLT)
	ldr	r2, [sp, #4]
	add	r0, sp, #12
	ldrh	r1, [r2, #6]
	bl	png_save_uint_16(PLT)
	ldrb	r3, [r4, #676]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L352
.L343:
	movs	r3, #34
	add	r8, sp, #16
	movw	r6, #20051
	str	r3, [r4, #1040]
	mov	r0, r8
	movt	r6, 29778
	add	r7, sp, #20
	movs	r1, #6
	bl	png_save_uint_32(PLT)
	mov	r1, r6
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r8
	mov	r0, r4
	movs	r2, #8
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r6, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	mov	r1, r5
	str	r3, [r4, #1040]
	movs	r2, #6
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	b	.L334
.L352:
	ldrb	r1, [sp, #10]	@ zero_extendqisi2
	ldrb	r2, [sp, #8]	@ zero_extendqisi2
	ldrb	r3, [sp, #12]	@ zero_extendqisi2
	orrs	r2, r2, r1
	orrs	r3, r2, r3
	beq	.L343
	ldr	r1, .L353+12
	mov	r0, r4
.LPIC49:
	add	r1, pc
	bl	png_app_warning(PLT)
	b	.L334
.L354:
	.align	2
.L353:
	.word	.LC32-(.LPIC50+4)
	.word	.LC30-(.LPIC48+4)
	.word	.LC29-(.LPIC47+4)
	.word	.LC31-(.LPIC49+4)
	.size	png_write_tRNS, .-png_write_tRNS
	.section	.text.png_write_bKGD,"ax",%progbits
	.align	2
	.global	png_write_bKGD
	.thumb
	.thumb_func
	.type	png_write_bKGD, %function
png_write_bKGD:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #3
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r1
	sub	sp, sp, #16
	mov	r4, r0
	beq	.L376
	lsls	r3, r2, #30
	bmi	.L377
	ldrb	r3, [r0, #676]	@ zero_extendqisi2
	movs	r2, #1
	ldrh	r1, [r1, #8]
	lsl	r3, r2, r3
	cmp	r1, r3
	bge	.L378
	mov	r0, sp
	add	r8, sp, #8
	bl	png_save_uint_16(PLT)
	movw	r5, #18244
	movs	r3, #34
	str	r3, [r4, #1040]
	mov	r0, r8
	movs	r1, #2
	movt	r5, 25163
	add	r7, sp, #12
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r8
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	mov	r1, sp
	str	r3, [r4, #1040]
	movs	r2, #2
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
.L355:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L378:
	ldr	r1, .L382
.LPIC53:
	add	r1, pc
	bl	png_warning(PLT)
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L376:
	ldrh	r3, [r0, #660]
	cmp	r3, #0
	beq	.L379
	ldrb	r2, [r1]	@ zero_extendqisi2
	cmp	r3, r2
	bls	.L358
.L360:
	movs	r3, #34
	add	r7, sp, #8
	movw	r5, #18244
	str	r3, [r4, #1040]
	mov	r0, r7
	movt	r5, 25163
	add	r6, sp, #12
	movs	r1, #1
	strb	r2, [sp]
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r6
	bl	png_save_uint_32(PLT)
	mov	r1, r7
	mov	r0, r4
	movs	r2, #8
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r6
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	str	r3, [r4, #1040]
	mov	r1, sp
	movs	r2, #1
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L377:
	ldrh	r1, [r1, #2]
	mov	r0, sp
	bl	png_save_uint_16(PLT)
	add	r0, sp, #2
	ldrh	r1, [r5, #4]
	bl	png_save_uint_16(PLT)
	ldrh	r1, [r5, #6]
	add	r0, sp, #4
	bl	png_save_uint_16(PLT)
	ldrb	r3, [r4, #676]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L380
.L364:
	movs	r3, #34
	add	r8, sp, #8
	movw	r5, #18244
	str	r3, [r4, #1040]
	mov	r0, r8
	movt	r5, 25163
	add	r7, sp, #12
	movs	r1, #6
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r8
	mov	r0, r4
	movs	r2, #8
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	str	r3, [r4, #1040]
	mov	r1, sp
	movs	r2, #6
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L379:
	ldr	r3, [r0, #948]
	lsls	r2, r3, #31
	bmi	.L381
.L358:
	ldr	r1, .L382+4
	mov	r0, r4
.LPIC51:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L355
.L380:
	ldrb	r1, [sp, #2]	@ zero_extendqisi2
	ldrb	r2, [sp]	@ zero_extendqisi2
	ldrb	r3, [sp, #4]	@ zero_extendqisi2
	orrs	r2, r2, r1
	orrs	r3, r2, r3
	beq	.L364
	ldr	r1, .L382+8
	mov	r0, r4
.LPIC52:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L355
.L381:
	ldrb	r2, [r1]	@ zero_extendqisi2
	b	.L360
.L383:
	.align	2
.L382:
	.word	.LC35-(.LPIC53+4)
	.word	.LC33-(.LPIC51+4)
	.word	.LC34-(.LPIC52+4)
	.size	png_write_bKGD, .-png_write_bKGD
	.section	.text.png_write_hIST,"ax",%progbits
	.align	2
	.global	png_write_hIST
	.thumb
	.thumb_func
	.type	png_write_hIST, %function
png_write_hIST:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrh	r3, [r0, #660]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r6, r0
	sub	sp, sp, #8
	mov	r8, r2
	cmp	r3, r2
	blt	.L391
	lsl	r10, r2, #1
	movs	r3, #34
	movw	r7, #21332
	str	r3, [r0, #1040]
	movt	r7, 26697
	mov	r4, r1
	mov	r0, sp
	mov	r1, r10
	add	r9, sp, #4
	bl	png_save_uint_32(PLT)
	mov	r1, r7
	mov	r0, r9
	bl	png_save_uint_32(PLT)
	mov	r1, sp
	movs	r2, #8
	mov	r0, r6
	bl	png_write_data(PLT)
	str	r7, [r6, #616]
	mov	r0, r6
	bl	png_reset_crc(PLT)
	mov	r0, r6
	mov	r1, r9
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	cmp	r8, #0
	mov	r3, #66
	str	r3, [r6, #1040]
	it	gt
	addgt	r7, r4, r10
	ble	.L388
.L389:
	ldrh	r1, [r4], #2
	mov	r0, sp
	bl	png_save_uint_16(PLT)
	mov	r0, r6
	mov	r1, sp
	movs	r2, #2
	bl	png_write_chunk_data(PLT)
	cmp	r4, r7
	bne	.L389
.L388:
	mov	r0, r6
	bl	png_write_chunk_end(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L391:
	ldr	r1, .L392
.LPIC54:
	add	r1, pc
	bl	png_warning(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L393:
	.align	2
.L392:
	.word	.LC36-(.LPIC54+4)
	.size	png_write_hIST, .-png_write_hIST
	.section	.text.png_write_tEXt,"ax",%progbits
	.align	2
	.global	png_write_tEXt
	.thumb
	.thumb_func
	.type	png_write_tEXt, %function
png_write_tEXt:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #92
	add	r8, sp, #8
	mov	r5, r2
	mov	r2, r8
	mov	r4, r0
	bl	png_check_keyword(PLT)
	mov	r7, r0
	cmp	r0, #0
	beq	.L408
	cmp	r5, #0
	beq	.L399
	ldrb	r6, [r5]	@ zero_extendqisi2
	cbnz	r6, .L409
.L396:
	add	r9, r7, #1
	cbz	r4, .L397
	movs	r3, #34
	movw	r7, #22644
	str	r3, [r4, #1040]
	mov	r0, sp
	add	r1, r6, r9
	movt	r7, 29765
	add	r10, sp, #4
	bl	png_save_uint_32(PLT)
	mov	r1, r7
	mov	r0, r10
	bl	png_save_uint_32(PLT)
	mov	r1, sp
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r7, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r10
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	str	r3, [r4, #1040]
.L397:
	mov	r1, r8
	mov	r2, r9
	mov	r0, r4
	bl	png_write_chunk_data(PLT)
	cbz	r6, .L398
	mov	r1, r5
	mov	r2, r6
	mov	r0, r4
	bl	png_write_chunk_data(PLT)
.L398:
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	add	sp, sp, #92
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L409:
	mov	r0, r5
	bl	strlen(PLT)
	movw	r3, #65534
	mov	r6, r0
	movt	r3, 32767
	subs	r3, r3, r7
	cmp	r0, r3
	bls	.L396
	ldr	r1, .L410
	mov	r0, r4
.LPIC56:
	add	r1, pc
	bl	png_error(PLT)
.L399:
	mov	r6, r5
	b	.L396
.L408:
	ldr	r1, .L410+4
	mov	r0, r4
.LPIC55:
	add	r1, pc
	bl	png_error(PLT)
.L411:
	.align	2
.L410:
	.word	.LC38-(.LPIC56+4)
	.word	.LC37-(.LPIC55+4)
	.size	png_write_tEXt, .-png_write_tEXt
	.section	.text.png_write_zTXt,"ax",%progbits
	.align	2
	.global	png_write_zTXt
	.thumb
	.thumb_func
	.type	png_write_zTXt, %function
png_write_zTXt:
	@ args = 4, pretend = 0, frame = 1136
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #1136
	ldr	r4, [sp, #1168]
	adds	r3, r4, #1
	beq	.L428
	cmp	r4, #0
	bne	.L429
	add	r8, sp, #12
	mov	r6, r2
	mov	r2, r8
	mov	r7, r0
	bl	png_check_keyword(PLT)
	cmp	r0, #0
	beq	.L430
	add	r3, r8, r0
	add	r9, r0, #2
	strb	r4, [r3, #1]
	mov	ip, r6
	cbz	r6, .L417
	mov	r0, r6
	bl	strlen(PLT)
	mov	ip, r0
.L417:
	movw	r5, #22644
	add	r4, sp, #96
	movt	r5, 31316
	mov	lr, #0
	mov	r1, r5
	mov	r2, r4
	mov	r0, r7
	mov	r3, r9
	stmia	r4, {r6, ip, lr}
	bl	png_text_compress(PLT)
	cmp	r0, #0
	bne	.L431
	ldr	r1, [r4, #8]
	cbz	r7, .L419
	movs	r3, #34
	add	r10, sp, #4
	str	r3, [r7, #1040]
	add	r1, r1, r9
	mov	r0, r10
	add	r6, sp, #8
	bl	png_save_uint_32(PLT)
	mov	r0, r6
	mov	r1, r5
	bl	png_save_uint_32(PLT)
	mov	r1, r10
	movs	r2, #8
	mov	r0, r7
	bl	png_write_data(PLT)
	mov	r0, r7
	str	r5, [r7, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r7
	mov	r1, r6
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	str	r3, [r7, #1040]
.L419:
	mov	r1, r8
	mov	r2, r9
	mov	r0, r7
	mov	r5, #1024
	bl	png_write_chunk_data(PLT)
	ldr	r4, [r4, #8]
	add	r1, sp, #108
	ldr	r6, [r7, #520]
	b	.L421
.L432:
	adds	r1, r6, #4
	ldr	r5, [r7, #524]
	ldr	r6, [r6]
.L421:
	cmp	r5, r4
	mov	r0, r7
	it	cs
	movcs	r5, r4
	mov	r2, r5
	bl	png_write_chunk_data(PLT)
	subs	r4, r4, r5
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	cmp	r6, #0
	it	eq
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L432
	mov	r0, r7
	cbnz	r4, .L433
	bl	png_write_chunk_end(PLT)
.L412:
	add	sp, sp, #1136
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L428:
	movs	r3, #0
	bl	png_write_tEXt(PLT)
	b	.L412
.L429:
	ldr	r1, .L434
.LPIC57:
	add	r1, pc
	bl	png_error(PLT)
.L433:
	ldr	r1, .L434+4
.LPIC59:
	add	r1, pc
	bl	png_error(PLT)
.L431:
	mov	r0, r7
	ldr	r1, [r7, #488]
	bl	png_error(PLT)
.L430:
	ldr	r1, .L434+8
	mov	r0, r7
.LPIC58:
	add	r1, pc
	bl	png_error(PLT)
.L435:
	.align	2
.L434:
	.word	.LC39-(.LPIC57+4)
	.word	.LC26-(.LPIC59+4)
	.word	.LC40-(.LPIC58+4)
	.size	png_write_zTXt, .-png_write_zTXt
	.section	.text.png_write_iTXt,"ax",%progbits
	.align	2
	.global	png_write_iTXt
	.thumb
	.thumb_func
	.type	png_write_iTXt, %function
png_write_iTXt:
	@ args = 8, pretend = 0, frame = 1152
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	subw	sp, sp, #1156
	add	r6, sp, #28
	mov	r5, r1
	mov	r1, r2
	mov	r2, r6
	mov	r7, r3
	mov	r4, r0
	bl	png_check_keyword(PLT)
	cmp	r0, #0
	beq	.L469
	adds	r1, r5, #1
	cmp	r1, #3
	bhi	.L438
	tbb	[pc, r1]
.L440:
	.byte	(.L439-.L440)/2
	.byte	(.L441-.L440)/2
	.byte	(.L439-.L440)/2
	.byte	(.L441-.L440)/2
	.align	1
.L441:
	adds	r5, r0, #1
	mov	r10, #1
	strb	r10, [r6, r5]
.L442:
	movs	r2, #0
	adds	r3, r6, r5
	strb	r2, [r3, #1]
	adds	r2, r5, #2
	str	r2, [sp, #12]
	cmp	r7, #0
	beq	.L457
	mov	r0, r7
	bl	strlen(PLT)
	add	r9, r0, #1
.L443:
	ldr	r3, [sp, #1192]
	cmp	r3, #0
	beq	.L458
	mov	r0, r3
	bl	strlen(PLT)
	add	r8, r0, #1
.L444:
	ldr	r3, [sp, #1196]
	mov	r0, r3
	cmp	r3, #0
	beq	.L459
	bl	strlen(PLT)
.L445:
	movw	r3, #65533
	ldr	r2, [sp, #1196]
	movt	r3, 32767
	subs	r3, r3, r5
	add	r5, sp, #112
	cmp	r3, r9
	str	r2, [r5]
	ittte	cs
	ldrcs	ip, [sp, #12]
	movwcs	r3, #65535
	movtcs	r3, 32767
	movcc	r3, #0
	it	cc
	mvncc	ip, #-2147483648
	str	r0, [r5, #4]
	itt	cs
	addcs	ip, ip, r9
	rsbcs	r3, ip, r3
	cmp	r8, r3
	mov	r3, #0
	ite	ls
	addls	ip, ip, r8
	mvnhi	ip, #-2147483648
	str	r3, [r5, #8]
	cmp	r10, #0
	bne	.L470
	movw	r3, #65535
	movt	r3, 32767
	rsb	r3, ip, r3
	cmp	r3, r0
	it	cs
	strcs	r0, [r5, #8]
	bcc	.L471
.L450:
	cbz	r4, .L452
	movs	r2, #34
	add	r1, r0, ip
	str	r2, [r4, #1040]
	add	r2, sp, #20
	mov	r0, r2
	movw	fp, #22644
	str	r2, [sp, #8]
	movt	fp, 26964
	bl	png_save_uint_32(PLT)
	add	ip, sp, #24
	mov	r1, fp
	mov	r0, ip
	str	ip, [sp, #4]
	bl	png_save_uint_32(PLT)
	ldr	r2, [sp, #8]
	mov	r0, r4
	mov	r1, r2
	movs	r2, #8
	bl	png_write_data(PLT)
	mov	r0, r4
	str	fp, [r4, #616]
	bl	png_reset_crc(PLT)
	ldr	ip, [sp, #4]
	mov	r0, r4
	movs	r2, #4
	mov	r1, ip
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	str	r3, [r4, #1040]
.L452:
	mov	r1, r6
	ldr	r2, [sp, #12]
	mov	r0, r4
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	mov	r1, r7
	mov	r2, r9
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	ldr	r1, [sp, #1192]
	mov	r2, r8
	bl	png_write_chunk_data(PLT)
	cmp	r10, #0
	bne	.L472
	ldr	r1, [sp, #1196]
	mov	r0, r4
	ldr	r2, [r5, #4]
	bl	png_write_chunk_data(PLT)
.L456:
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
	addw	sp, sp, #1156
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L439:
	adds	r5, r0, #1
	mov	r10, #0
	strb	r10, [r6, r5]
	b	.L442
.L438:
	ldr	r1, .L474
	mov	r0, r4
.LPIC64:
	add	r1, pc
	bl	png_error(PLT)
.L472:
	ldr	r5, [r5, #8]
	mov	r6, #1024
	ldr	r7, [r4, #520]
	add	r1, sp, #124
	b	.L455
.L473:
	adds	r1, r7, #4
	ldr	r6, [r4, #524]
	ldr	r7, [r7]
.L455:
	cmp	r6, r5
	mov	r0, r4
	it	cs
	movcs	r6, r5
	mov	r2, r6
	bl	png_write_chunk_data(PLT)
	subs	r5, r5, r6
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	cmp	r7, #0
	it	eq
	orreq	r3, r3, #1
	cmp	r3, #0
	beq	.L473
	cmp	r5, #0
	beq	.L456
	ldr	r1, .L474+4
	mov	r0, r4
.LPIC66:
	add	r1, pc
	bl	png_error(PLT)
.L470:
	movw	r1, #22644
	mov	r3, ip
	mov	r0, r4
	movt	r1, 26964
	mov	r2, r5
	str	ip, [sp, #4]
	bl	png_text_compress(PLT)
	ldr	ip, [sp, #4]
	cbnz	r0, .L449
	ldr	r0, [r5, #8]
	b	.L450
.L459:
	ldr	r2, .L474+8
.LPIC62:
	add	r2, pc
	str	r2, [sp, #1196]
	b	.L445
.L458:
	ldr	r2, .L474+12
	mov	r8, #1
.LPIC61:
	add	r2, pc
	str	r2, [sp, #1192]
	b	.L444
.L457:
	ldr	r7, .L474+16
	mov	r9, #1
.LPIC60:
	add	r7, pc
	b	.L443
.L471:
	ldr	r1, .L474+20
	mov	r0, r4
.LPIC65:
	add	r1, pc
	bl	png_error(PLT)
.L469:
	ldr	r1, .L474+24
	mov	r0, r4
.LPIC63:
	add	r1, pc
	bl	png_error(PLT)
.L449:
	mov	r0, r4
	ldr	r1, [r4, #488]
	bl	png_error(PLT)
.L475:
	.align	2
.L474:
	.word	.LC43-(.LPIC64+4)
	.word	.LC26-(.LPIC66+4)
	.word	.LC41-(.LPIC62+4)
	.word	.LC41-(.LPIC61+4)
	.word	.LC41-(.LPIC60+4)
	.word	.LC44-(.LPIC65+4)
	.word	.LC42-(.LPIC63+4)
	.size	png_write_iTXt, .-png_write_iTXt
	.section	.text.png_write_oFFs,"ax",%progbits
	.align	2
	.global	png_write_oFFs
	.thumb
	.thumb_func
	.type	png_write_oFFs, %function
png_write_oFFs:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #1
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r3
	sub	sp, sp, #24
	mov	r8, r1
	mov	r7, r2
	mov	r4, r0
	ble	.L477
	ldr	r1, .L483
.LPIC67:
	add	r1, pc
	bl	png_warning(PLT)
.L477:
	add	r6, sp, #12
	mov	r1, r8
	mov	r0, r6
	bl	png_save_int_32(PLT)
	mov	r1, r7
	add	r0, sp, #16
	bl	png_save_int_32(PLT)
	strb	r5, [sp, #20]
	cbz	r4, .L476
	movs	r3, #34
	add	r8, sp, #4
	movw	r5, #18035
	str	r3, [r4, #1040]
	mov	r0, r8
	movs	r1, #9
	movt	r5, 28486
	add	r7, sp, #8
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r8
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	mov	r1, r6
	str	r3, [r4, #1040]
	movs	r2, #9
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
.L476:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L484:
	.align	2
.L483:
	.word	.LC45-(.LPIC67+4)
	.size	png_write_oFFs, .-png_write_oFFs
	.section	.text.png_write_pCAL,"ax",%progbits
	.align	2
	.global	png_write_pCAL
	.thumb
	.thumb_func
	.type	png_write_pCAL, %function
png_write_pCAL:
	@ args = 16, pretend = 0, frame = 144
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #148
	ldr	r4, [sp, #184]
	str	r2, [sp, #36]
	cmp	r4, #3
	str	r3, [sp, #40]
	bgt	.L505
	add	r3, sp, #64
	mov	r5, r0
	mov	r2, r3
	str	r3, [sp, #28]
	bl	png_check_keyword(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L506
	adds	r3, r4, #1
	ldr	r0, [sp, #192]
	str	r3, [sp, #32]
	adds	r4, r4, #11
	bl	strlen(PLT)
	ldr	r3, [sp, #188]
	cmp	r3, #0
	it	ne
	addne	r0, r0, #1
	str	r0, [sp, #24]
	lsls	r1, r3, #2
	ldr	r3, [sp, #24]
	mov	r0, r5
	add	r3, r3, r4
	str	r3, [sp, #12]
	bl	png_malloc(PLT)
	ldr	r4, [sp, #188]
	str	r0, [sp, #20]
	cmp	r4, #0
	ble	.L488
	cmp	r4, #8
	add	r8, r4, #-1
	ble	.L498
	ldr	r7, [sp, #196]
	sub	r3, r4, #9
	bic	r3, r3, #7
	mov	r6, r0
	movs	r4, #0
	adds	r3, r3, #8
	str	r3, [sp, #16]
	str	r5, [sp, #44]
.L490:
	ldr	r0, [r7]
	add	r10, r4, #4
	bl	strlen(PLT)
	cmp	r4, r8
	ite	eq
	moveq	r2, r0
	addne	r2, r0, #1
	pld	[r7, #36]
	ldr	r0, [r7, #4]
	add	r9, r4, #5
	str	r2, [r6]
	adds	r5, r4, #6
	str	r2, [sp]
	adds	r7, r7, #32
	bl	strlen(PLT)
	add	ip, r4, #1
	pld	[r6, #36]
	cmp	ip, r8
	ite	eq
	moveq	ip, r0
	addne	ip, r0, #1
	ldr	r0, [r7, #-24]
	str	ip, [r6, #4]
	adds	r6, r6, #32
	str	ip, [sp, #4]
	bl	strlen(PLT)
	adds	r1, r4, #2
	cmp	r8, r1
	ite	eq
	moveq	r1, r0
	addne	r1, r0, #1
	ldr	r0, [r7, #-20]
	str	r1, [r6, #-24]
	str	r1, [sp, #8]
	bl	strlen(PLT)
	adds	r3, r4, #3
	cmp	r8, r3
	ite	eq
	moveq	fp, r0
	addne	fp, r0, #1
	ldr	r0, [r7, #-16]
	str	fp, [r6, #-20]
	bl	strlen(PLT)
	cmp	r8, r10
	ite	eq
	moveq	r10, r0
	addne	r10, r0, #1
	ldr	r0, [r7, #-12]
	str	r10, [r6, #-16]
	bl	strlen(PLT)
	cmp	r8, r9
	ite	eq
	moveq	r9, r0
	addne	r9, r0, #1
	ldr	r0, [r7, #-8]
	str	r9, [r6, #-12]
	bl	strlen(PLT)
	cmp	r8, r5
	ite	eq
	moveq	r5, r0
	addne	r5, r0, #1
	ldr	r0, [r7, #-4]
	str	r5, [r6, #-8]
	bl	strlen(PLT)
	ldr	r1, [sp, #8]
	add	lr, r4, #7
	ldr	ip, [sp, #4]
	cmp	r8, lr
	it	ne
	addne	r0, r0, #1
	ldr	r2, [sp]
	adds	r4, r4, #8
	ldr	r3, [sp, #16]
	add	r1, r1, ip
	str	r0, [r6, #-4]
	add	r1, r1, r2
	ldr	r2, [sp, #12]
	add	r1, r1, fp
	cmp	r4, r3
	add	r10, r10, r1
	add	r9, r9, r10
	add	r5, r5, r9
	add	r0, r0, r5
	add	r2, r2, r0
	str	r2, [sp, #12]
	bne	.L490
	ldr	r5, [sp, #44]
.L489:
	ldr	r7, [sp, #196]
	lsls	r6, r4, #2
	ldr	r3, [sp, #20]
	mov	r9, #0
	ldr	r10, [sp, #12]
	ldr	fp, [sp, #188]
	add	r7, r7, r6
	add	r6, r6, r3
.L491:
	ldr	r0, [r7, r9]
	bl	strlen(PLT)
	cmp	r4, r8
	it	ne
	addne	r0, r0, #1
	adds	r4, r4, #1
	cmp	fp, r4
	str	r0, [r6, r9]
	add	r10, r10, r0
	add	r9, r9, #4
	bgt	.L491
	str	r10, [sp, #12]
.L488:
	add	r4, sp, #52
	add	r6, sp, #56
	cbz	r5, .L492
	movs	r3, #34
	add	r4, sp, #52
	movw	r7, #16716
	str	r3, [r5, #1040]
	ldr	r1, [sp, #12]
	mov	r0, r4
	movt	r7, 28739
	add	r6, sp, #56
	bl	png_save_uint_32(PLT)
	mov	r1, r7
	mov	r0, r6
	bl	png_save_uint_32(PLT)
	mov	r1, r4
	movs	r2, #8
	mov	r0, r5
	bl	png_write_data(PLT)
	mov	r0, r5
	str	r7, [r5, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r5
	mov	r1, r6
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	str	r3, [r5, #1040]
.L492:
	ldr	r2, [sp, #32]
	add	r1, sp, #64
	mov	r0, r5
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	ldr	r1, [sp, #36]
	bl	png_save_int_32(PLT)
	mov	r0, r6
	ldr	r1, [sp, #40]
	bl	png_save_int_32(PLT)
	mov	r1, r4
	ldr	r3, [sp, #188]
	ldr	r4, [sp, #184]
	mov	r0, r5
	movs	r2, #10
	strb	r3, [sp, #61]
	strb	r4, [sp, #60]
	bl	png_write_chunk_data(PLT)
	mov	r0, r5
	ldr	r1, [sp, #192]
	ldr	r2, [sp, #24]
	bl	png_write_chunk_data(PLT)
	ldr	r4, [sp, #188]
	cmp	r4, #0
	ble	.L496
	cmp	r4, #8
	ble	.L499
	sub	r8, r4, #9
	ldr	r6, [sp, #196]
	ldr	r4, [sp, #20]
	bic	r8, r8, #7
	add	r8, r8, #8
	movs	r7, #0
	adds	r6, r6, #40
	adds	r4, r4, #40
.L495:
	ldr	r1, [r6, #-40]
	mov	r0, r5
	ldr	r2, [r4, #-40]
	adds	r7, r7, #8
	pld	[r6]
	adds	r6, r6, #32
	pld	[r4]
	adds	r4, r4, #32
	bl	png_write_chunk_data(PLT)
	ldr	r1, [r6, #-68]
	mov	r0, r5
	ldr	r2, [r4, #-68]
	bl	png_write_chunk_data(PLT)
	ldr	r1, [r6, #-64]
	mov	r0, r5
	ldr	r2, [r4, #-64]
	bl	png_write_chunk_data(PLT)
	ldr	r1, [r6, #-60]
	mov	r0, r5
	ldr	r2, [r4, #-60]
	bl	png_write_chunk_data(PLT)
	ldr	r1, [r6, #-56]
	mov	r0, r5
	ldr	r2, [r4, #-56]
	bl	png_write_chunk_data(PLT)
	ldr	r1, [r6, #-52]
	mov	r0, r5
	ldr	r2, [r4, #-52]
	bl	png_write_chunk_data(PLT)
	ldr	r1, [r6, #-48]
	mov	r0, r5
	ldr	r2, [r4, #-48]
	bl	png_write_chunk_data(PLT)
	ldr	r1, [r6, #-44]
	mov	r0, r5
	ldr	r2, [r4, #-44]
	bl	png_write_chunk_data(PLT)
	cmp	r7, r8
	bne	.L495
.L494:
	ldr	r8, [sp, #196]
	lsls	r6, r7, #2
	ldr	r3, [sp, #20]
	movs	r4, #0
	ldr	r9, [sp, #188]
	add	r8, r8, r6
	add	r6, r6, r3
.L497:
	ldr	r1, [r8, r4]
	adds	r7, r7, #1
	ldr	r2, [r6, r4]
	mov	r0, r5
	bl	png_write_chunk_data(PLT)
	cmp	r9, r7
	add	r4, r4, #4
	bgt	.L497
.L496:
	ldr	r1, [sp, #20]
	mov	r0, r5
	bl	png_free(PLT)
	mov	r0, r5
	bl	png_write_chunk_end(PLT)
	add	sp, sp, #148
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L498:
	movs	r4, #0
	b	.L489
.L499:
	movs	r7, #0
	b	.L494
.L505:
	ldr	r1, .L507
.LPIC76:
	add	r1, pc
	bl	png_error(PLT)
.L506:
	ldr	r1, .L507+4
	mov	r0, r5
.LPIC77:
	add	r1, pc
	bl	png_error(PLT)
.L508:
	.align	2
.L507:
	.word	.LC46-(.LPIC76+4)
	.word	.LC47-(.LPIC77+4)
	.size	png_write_pCAL, .-png_write_pCAL
	.section	.text.png_write_sCAL_s,"ax",%progbits
	.align	2
	.global	png_write_sCAL_s
	.thumb
	.thumb_func
	.type	png_write_sCAL_s, %function
png_write_sCAL_s:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r3
	sub	sp, sp, #72
	mov	r4, r0
	mov	r0, r2
	mov	r7, r2
	mov	r10, r1
	bl	strlen(PLT)
	mov	r5, r0
	mov	r0, r8
	bl	strlen(PLT)
	adds	r6, r5, r0
	mov	r9, r0
	adds	r6, r6, #2
	cmp	r6, #64
	bhi	.L517
	mov	r1, r7
	adds	r2, r5, #1
	add	r7, sp, #72
	add	r0, sp, #9
	strb	r10, [r7, #-64]!
	bl	memcpy(PLT)
	adds	r0, r5, #2
	mov	r1, r8
	add	r0, r0, r7
	mov	r2, r9
	bl	memcpy(PLT)
	cbz	r4, .L509
	movs	r3, #34
	movw	r5, #16716
	str	r3, [r4, #1040]
	mov	r0, sp
	mov	r1, r6
	movt	r5, 29507
	add	r8, sp, #4
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r8
	bl	png_save_uint_32(PLT)
	mov	r1, sp
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r8
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	mov	r1, r7
	mov	r2, r6
	str	r3, [r4, #1040]
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
.L509:
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L517:
	ldr	r1, .L518
	mov	r0, r4
.LPIC78:
	add	r1, pc
	bl	png_warning(PLT)
	add	sp, sp, #72
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L519:
	.align	2
.L518:
	.word	.LC48-(.LPIC78+4)
	.size	png_write_sCAL_s, .-png_write_sCAL_s
	.section	.text.png_write_pHYs,"ax",%progbits
	.align	2
	.global	png_write_pHYs
	.thumb
	.thumb_func
	.type	png_write_pHYs, %function
png_write_pHYs:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #1
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r3
	sub	sp, sp, #24
	mov	r8, r1
	mov	r7, r2
	mov	r4, r0
	ble	.L521
	ldr	r1, .L527
.LPIC79:
	add	r1, pc
	bl	png_warning(PLT)
.L521:
	add	r6, sp, #12
	mov	r1, r8
	mov	r0, r6
	bl	png_save_uint_32(PLT)
	mov	r1, r7
	add	r0, sp, #16
	bl	png_save_uint_32(PLT)
	strb	r5, [sp, #20]
	cbz	r4, .L520
	movs	r3, #34
	add	r8, sp, #4
	movw	r5, #22899
	str	r3, [r4, #1040]
	mov	r0, r8
	movs	r1, #9
	movt	r5, 28744
	add	r7, sp, #8
	bl	png_save_uint_32(PLT)
	mov	r1, r5
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r8
	movs	r2, #8
	mov	r0, r4
	bl	png_write_data(PLT)
	mov	r0, r4
	str	r5, [r4, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r4
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r4
	mov	r1, r6
	str	r3, [r4, #1040]
	movs	r2, #9
	bl	png_write_chunk_data(PLT)
	mov	r0, r4
	bl	png_write_chunk_end(PLT)
.L520:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L528:
	.align	2
.L527:
	.word	.LC49-(.LPIC79+4)
	.size	png_write_pHYs, .-png_write_pHYs
	.section	.text.png_write_tIME,"ax",%progbits
	.align	2
	.global	png_write_tIME
	.thumb
	.thumb_func
	.type	png_write_tIME, %function
png_write_tIME:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	sub	sp, sp, #16
	mov	r5, r0
	subs	r3, r3, #1
	cmp	r3, #11
	bhi	.L530
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #30
	bhi	.L530
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	cmp	r3, #23
	bhi	.L530
	ldrb	r3, [r1, #6]	@ zero_extendqisi2
	cmp	r3, #60
	bhi	.L530
	ldrh	r1, [r1]
	mov	r0, sp
	bl	png_save_uint_16(PLT)
	ldrb	r7, [r4, #2]	@ zero_extendqisi2
	ldrb	r0, [r4, #3]	@ zero_extendqisi2
	ldrb	r1, [r4, #4]	@ zero_extendqisi2
	ldrb	r2, [r4, #5]	@ zero_extendqisi2
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	strb	r7, [sp, #2]
	strb	r0, [sp, #3]
	strb	r1, [sp, #4]
	strb	r2, [sp, #5]
	strb	r3, [sp, #6]
	cbz	r5, .L529
	movs	r3, #34
	add	r8, sp, #8
	movw	r4, #19781
	str	r3, [r5, #1040]
	mov	r0, r8
	movt	r4, 29769
	add	r7, sp, #12
	movs	r1, #7
	bl	png_save_uint_32(PLT)
	mov	r1, r4
	mov	r0, r7
	bl	png_save_uint_32(PLT)
	mov	r1, r8
	mov	r0, r5
	movs	r2, #8
	bl	png_write_data(PLT)
	mov	r0, r5
	str	r4, [r5, #616]
	bl	png_reset_crc(PLT)
	mov	r0, r5
	mov	r1, r7
	movs	r2, #4
	bl	png_calculate_crc(PLT)
	movs	r3, #66
	mov	r0, r5
	mov	r1, sp
	str	r3, [r5, #1040]
	movs	r2, #7
	bl	png_write_chunk_data(PLT)
	mov	r0, r5
	bl	png_write_chunk_end(PLT)
	b	.L529
.L530:
	ldr	r1, .L538
	mov	r0, r5
.LPIC80:
	add	r1, pc
	bl	png_warning(PLT)
.L529:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L539:
	.align	2
.L538:
	.word	.LC50-(.LPIC80+4)
	.size	png_write_tIME, .-png_write_tIME
	.section	.text.png_write_start_row,"ax",%progbits
	.align	2
	.global	png_write_start_row
	.thumb
	.thumb_func
	.type	png_write_start_row, %function
png_write_start_row:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldrb	r2, [r0, #680]	@ zero_extendqisi2
	ldrb	r3, [r0, #677]	@ zero_extendqisi2
	smulbb	r3, r2, r3
	cmp	r3, #7
	iteet	le
	ldrle	r5, [r0, #588]
	lsrgt	r5, r3, #3
	ldrgt	r2, [r0, #588]
	mulle	r5, r5, r3
	it	gt
	mulgt	r5, r2, r5
	ldrb	r2, [r0, #678]	@ zero_extendqisi2
	strb	r3, [r4, #682]
	itt	le
	addle	r5, r5, #7
	lsrle	r5, r5, #3
	strb	r2, [r4, #683]
	adds	r5, r5, #1
	mov	r1, r5
	bl	png_malloc(PLT)
	ldrb	r3, [r4, #674]	@ zero_extendqisi2
	movs	r2, #0
	strb	r2, [r0]
	str	r0, [r4, #624]
	lsls	r2, r3, #27
	bmi	.L564
.L543:
	tst	r3, #224
	bne	.L565
.L545:
	ldrb	r3, [r4, #672]	@ zero_extendqisi2
	cbz	r3, .L549
	ldr	r3, [r4, #456]
	lsls	r3, r3, #30
	bmi	.L549
	ldr	r2, [r4, #592]
	ldr	r3, [r4, #588]
	adds	r2, r2, #7
	adds	r3, r3, #7
	lsrs	r2, r2, #3
	lsrs	r3, r3, #3
	str	r2, [r4, #596]
	str	r3, [r4, #600]
	pop	{r3, r4, r5, pc}
.L549:
	ldr	r2, [r4, #592]
	ldr	r3, [r4, #588]
	str	r2, [r4, #596]
	str	r3, [r4, #600]
	pop	{r3, r4, r5, pc}
.L565:
	mov	r1, r5
	mov	r0, r4
	bl	png_calloc(PLT)
	ldrb	r3, [r4, #674]	@ zero_extendqisi2
	str	r0, [r4, #620]
	lsls	r0, r3, #26
	bmi	.L566
.L546:
	lsls	r1, r3, #25
	bmi	.L567
.L547:
	lsls	r2, r3, #24
	bpl	.L545
	ldr	r1, [r4, #604]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_malloc(PLT)
	movs	r3, #4
	str	r0, [r4, #640]
	strb	r3, [r0]
	b	.L545
.L564:
	ldr	r1, [r4, #604]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_malloc(PLT)
	movs	r2, #1
	ldrb	r3, [r4, #674]	@ zero_extendqisi2
	str	r0, [r4, #628]
	strb	r2, [r0]
	b	.L543
.L567:
	ldr	r1, [r4, #604]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_malloc(PLT)
	movs	r2, #3
	ldrb	r3, [r4, #674]	@ zero_extendqisi2
	str	r0, [r4, #636]
	strb	r2, [r0]
	b	.L547
.L566:
	ldr	r1, [r4, #604]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_malloc(PLT)
	movs	r2, #2
	ldrb	r3, [r4, #674]	@ zero_extendqisi2
	str	r0, [r4, #632]
	strb	r2, [r0]
	b	.L546
	.size	png_write_start_row, .-png_write_start_row
	.global	__aeabi_uidiv
	.section	.text.png_write_finish_row,"ax",%progbits
	.align	2
	.global	png_write_finish_row
	.thumb
	.thumb_func
	.type	png_write_finish_row, %function
png_write_finish_row:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #612]
	ldr	r2, [r0, #596]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0
	adds	r3, r3, #1
	cmp	r3, r2
	str	r3, [r0, #612]
	bcc	.L568
	ldrb	r3, [r0, #672]	@ zero_extendqisi2
	cbz	r3, .L571
	ldr	r3, [r0, #456]
	movs	r2, #0
	str	r2, [r0, #612]
	lsls	r3, r3, #30
	bpl	.L572
	ldrb	r3, [r0, #673]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #6
	strb	r3, [r0, #673]
	bhi	.L571
.L573:
	ldr	r0, [r5, #620]
	cbz	r0, .L568
	ldrb	r2, [r5, #680]	@ zero_extendqisi2
	movs	r1, #0
	ldrb	r3, [r5, #677]	@ zero_extendqisi2
	smulbb	r3, r2, r3
	ldr	r2, [r5, #588]
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	cmp	r3, #7
	iteet	le
	mulle	r2, r2, r3
	lsrgt	r3, r3, #3
	mulgt	r2, r2, r3
	addle	r2, r2, #7
	it	le
	lsrle	r2, r2, #3
	adds	r2, r2, #1
	b	memset(PLT)
.L593:
	strb	r4, [r5, #673]
.L571:
	movs	r1, #0
	mov	r0, r5
	mov	r2, r1
	movs	r3, #4
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	png_compress_IDAT(PLT)
.L568:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L572:
	ldr	r10, .L594
	ldr	r9, .L594+4
	ldr	r8, .L594+8
	ldr	r7, .L594+12
.LPIC81:
	add	r10, pc
	ldrb	r4, [r0, #673]	@ zero_extendqisi2
.LPIC82:
	add	r9, pc
.LPIC83:
	add	r8, pc
.LPIC84:
	add	r7, pc
.L574:
	adds	r4, r4, #1
	uxtb	r4, r4
	cmp	r4, #6
	bhi	.L593
	ldr	r3, [r5, #588]
	ldrb	r1, [r10, r4]	@ zero_extendqisi2
	ldrb	r0, [r9, r4]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	r3, r3, r1
	subs	r0, r3, r0
	bl	__aeabi_uidiv(PLT)
	ldr	r3, [r5, #592]
	mov	r6, r0
	ldrb	r1, [r8, r4]	@ zero_extendqisi2
	ldrb	r0, [r7, r4]	@ zero_extendqisi2
	subs	r3, r3, #1
	str	r6, [r5, #600]
	add	r3, r3, r1
	subs	r0, r3, r0
	bl	__aeabi_uidiv(PLT)
	str	r0, [r5, #596]
	cmp	r6, #0
	beq	.L574
	cmp	r0, #0
	beq	.L574
	strb	r4, [r5, #673]
	b	.L573
.L595:
	.align	2
.L594:
	.word	.LANCHOR1-(.LPIC81+4)
	.word	.LANCHOR2-(.LPIC82+4)
	.word	.LANCHOR3-(.LPIC83+4)
	.word	.LANCHOR4-(.LPIC84+4)
	.size	png_write_finish_row, .-png_write_finish_row
	.section	.text.png_do_write_interlace,"ax",%progbits
	.align	2
	.global	png_do_write_interlace
	.thumb
	.thumb_func
	.type	png_do_write_interlace, %function
png_do_write_interlace:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #5
	bgt	.L632
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	ldrb	r6, [r0, #11]	@ zero_extendqisi2
	sub	sp, sp, #12
	mov	r4, r1
	cmp	r6, #2
	beq	.L599
	cmp	r6, #4
	beq	.L600
	cmp	r6, #1
	beq	.L636
	ldr	r1, .L647
	lsr	r10, r6, #3
	ldr	r9, [r0]
.LPIC94:
	add	r1, pc
	ldrb	r1, [r1, r2]	@ zero_extendqisi2
	cmp	r9, r1
	str	r1, [sp, #4]
	bls	.L637
	mov	r3, r1
	ldr	r1, .L647+4
	mla	r6, r10, r3, r4
.LPIC96:
	add	r1, pc
	ldrb	r5, [r1, r2]	@ zero_extendqisi2
	mov	r8, r3
	add	r8, r8, r5
	smulbb	fp, r5, r10
.L626:
	cmp	r4, r6
	mov	r1, r6
	mov	r0, r4
	add	r6, r6, fp
	add	r4, r4, r10
	mov	r2, r10
	beq	.L624
	bl	memcpy(PLT)
.L624:
	cmp	r8, r9
	add	r2, r8, r5
	mov	r8, r2
	bcc	.L626
	ldr	r3, [r7]
	ldr	r0, [sp, #4]
	ldrb	r6, [r7, #11]	@ zero_extendqisi2
.L609:
	add	r9, r5, r3
	mov	r1, r5
	add	r9, r9, #-1
	rsb	r0, r0, r9
	bl	__aeabi_uidiv(PLT)
	cmp	r6, #7
	str	r0, [r7]
	mov	r1, r0
	bls	.L627
	lsrs	r6, r6, #3
	mul	r0, r6, r0
	str	r0, [r7, #4]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L632:
	bx	lr
.L599:
	ldr	r3, .L647+8
	ldr	r0, [r0]
.LPIC88:
	add	r3, pc
	ldrb	r10, [r3, r2]	@ zero_extendqisi2
	cmp	r0, r10
	bls	.L638
	ldr	r5, .L647+12
	mov	lr, r1
	mov	r3, r10
	movs	r6, #0
	movs	r1, #6
.LPIC90:
	add	r5, pc
	ldrb	r5, [r5, r2]	@ zero_extendqisi2
	b	.L614
.L640:
	add	r3, r3, r5
	strb	r6, [lr]
	cmp	r0, r3
	mov	r6, r1
	add	lr, lr, #1
	mov	r1, #6
	bls	.L639
.L614:
	lsr	ip, r3, #2
	mvns	r2, r3
	and	r2, r2, #3
	ldrb	ip, [r4, ip]	@ zero_extendqisi2
	lsls	r2, r2, #1
	asr	r2, ip, r2
	and	r2, r2, #3
	lsls	r2, r2, r1
	orrs	r6, r6, r2
	cmp	r1, #0
	beq	.L640
	add	r3, r3, r5
	subs	r1, r1, #2
	cmp	r0, r3
	bhi	.L614
.L639:
	cmp	r1, #6
	bne	.L622
	b	.L635
.L638:
	ldr	r3, .L647+16
.LPIC89:
	add	r3, pc
	ldrb	r1, [r3, r2]	@ zero_extendqisi2
.L603:
	add	r0, r0, r1
	subs	r0, r0, #1
	rsb	r0, r10, r0
	bl	__aeabi_uidiv(PLT)
	mov	r1, r0
	str	r0, [r7]
.L627:
	mul	r1, r6, r1
	adds	r0, r1, #7
	lsrs	r0, r0, #3
	str	r0, [r7, #4]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L636:
	ldr	r3, .L647+20
	ldr	r0, [r0]
.LPIC85:
	add	r3, pc
	ldrb	r10, [r3, r2]	@ zero_extendqisi2
	cmp	r0, r10
	bls	.L641
	ldr	r5, .L647+24
	mov	lr, r1
	mov	r3, r10
	movs	r6, #0
	movs	r1, #7
.LPIC87:
	add	r5, pc
	ldrb	r5, [r5, r2]	@ zero_extendqisi2
	b	.L607
.L643:
	add	r3, r3, r5
	strb	r6, [lr]
	cmp	r0, r3
	mov	r6, r1
	add	lr, lr, #1
	mov	r1, #7
	bls	.L642
.L607:
	lsr	ip, r3, #3
	mvns	r2, r3
	and	r2, r2, #7
	ldrb	ip, [r4, ip]	@ zero_extendqisi2
	asr	r2, ip, r2
	and	r2, r2, #1
	lsls	r2, r2, r1
	orrs	r6, r6, r2
	cmp	r1, #0
	beq	.L643
	add	r3, r3, r5
	subs	r1, r1, #1
	cmp	r0, r3
	bhi	.L607
.L642:
	cmp	r1, #7
	bne	.L622
	b	.L635
.L600:
	ldr	r3, .L647+28
	ldr	r0, [r0]
.LPIC91:
	add	r3, pc
	ldrb	r10, [r3, r2]	@ zero_extendqisi2
	cmp	r0, r10
	bls	.L644
	ldr	r5, .L647+32
	mov	r1, r6
	mov	r3, r10
	mov	lr, r4
	movs	r6, #0
.LPIC93:
	add	r5, pc
	ldrb	r5, [r5, r2]	@ zero_extendqisi2
	b	.L621
.L646:
	add	r3, r3, r5
	strb	r6, [lr]
	cmp	r0, r3
	mov	r6, r1
	add	lr, lr, #1
	mov	r1, #4
	bls	.L645
.L621:
	lsr	ip, r3, #1
	tst	r3, #1
	it	ne
	movne	r2, #0
	ldrb	ip, [r4, ip]	@ zero_extendqisi2
	it	eq
	moveq	r2, #4
	asr	r2, ip, r2
	and	r2, r2, #15
	lsls	r2, r2, r1
	orrs	r6, r6, r2
	cmp	r1, #0
	beq	.L646
	add	r3, r3, r5
	subs	r1, r1, #4
	cmp	r0, r3
	bhi	.L621
.L645:
	cmp	r1, #4
	beq	.L635
.L622:
	strb	r6, [lr]
.L635:
	mov	r0, r10
	ldr	r3, [r7]
	ldrb	r6, [r7, #11]	@ zero_extendqisi2
	b	.L609
.L637:
	mov	r0, r1
	ldr	r1, .L647+36
	mov	r3, r9
.LPIC95:
	add	r1, pc
	ldrb	r5, [r1, r2]	@ zero_extendqisi2
	b	.L609
.L644:
	ldr	r3, .L647+40
.LPIC92:
	add	r3, pc
	ldrb	r1, [r3, r2]	@ zero_extendqisi2
	b	.L603
.L641:
	ldr	r3, .L647+44
.LPIC86:
	add	r3, pc
	ldrb	r1, [r3, r2]	@ zero_extendqisi2
	b	.L603
.L648:
	.align	2
.L647:
	.word	.LANCHOR5-(.LPIC94+4)
	.word	.LANCHOR6-(.LPIC96+4)
	.word	.LANCHOR5-(.LPIC88+4)
	.word	.LANCHOR6-(.LPIC90+4)
	.word	.LANCHOR6-(.LPIC89+4)
	.word	.LANCHOR5-(.LPIC85+4)
	.word	.LANCHOR6-(.LPIC87+4)
	.word	.LANCHOR5-(.LPIC91+4)
	.word	.LANCHOR6-(.LPIC93+4)
	.word	.LANCHOR6-(.LPIC95+4)
	.word	.LANCHOR6-(.LPIC92+4)
	.word	.LANCHOR6-(.LPIC86+4)
	.size	png_do_write_interlace, .-png_do_write_interlace
	.section	.text.png_write_find_filter,"ax",%progbits
	.align	2
	.global	png_write_find_filter
	.thumb
	.thumb_func
	.type	png_write_find_filter, %function
png_write_find_filter:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r6, [r4, #620]
	sub	sp, sp, #52
	ldrb	r0, [r0, #674]	@ zero_extendqisi2
	ldrb	r2, [r1, #11]	@ zero_extendqisi2
	ldrb	r5, [r4, #861]	@ zero_extendqisi2
	str	r6, [sp, #8]
	lsls	r6, r0, #28
	add	r2, r2, #7
	str	r1, [sp, #20]
	str	r0, [sp, #4]
	asr	r2, r2, #3
	ldr	fp, [r1, #4]
	str	r5, [sp, #12]
	ldr	r10, [r4, #624]
	bpl	.L822
	cmp	r0, #8
	beq	.L823
	add	r3, r10, #1
	cmp	fp, #0
	beq	.L824
	and	r0, r3, #7
	negs	r0, r0
	and	r0, r0, #15
	cmp	r0, fp
	it	cs
	movcs	r0, fp
	cmp	fp, #16
	it	ls
	movls	r0, fp
	bhi	.L972
.L653:
	ldrb	r1, [r10, #1]	@ zero_extendqisi2
	add	r3, r10, #2
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #1
	str	r1, [sp]
	bls	.L827
	mov	r7, r1
	ldrb	r1, [r10, #2]	@ zero_extendqisi2
	add	r3, r10, #3
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #2
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L828
	ldrb	r1, [r10, #3]	@ zero_extendqisi2
	add	r3, r10, #4
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #3
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L829
	ldrb	r1, [r10, #4]	@ zero_extendqisi2
	add	r3, r10, #5
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #4
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L830
	ldrb	r1, [r10, #5]	@ zero_extendqisi2
	add	r3, r10, #6
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #5
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L831
	ldrb	r1, [r10, #6]	@ zero_extendqisi2
	add	r3, r10, #7
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #6
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L832
	ldrb	r1, [r10, #7]	@ zero_extendqisi2
	add	r3, r10, #8
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #7
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L833
	ldrb	r1, [r10, #8]	@ zero_extendqisi2
	add	r3, r10, #9
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #8
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L834
	ldrb	r1, [r10, #9]	@ zero_extendqisi2
	add	r3, r10, #10
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #9
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L835
	ldrb	r1, [r10, #10]	@ zero_extendqisi2
	add	r3, r10, #11
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #10
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L836
	ldrb	r1, [r10, #11]	@ zero_extendqisi2
	add	r3, r10, #12
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #11
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L837
	ldrb	r1, [r10, #12]	@ zero_extendqisi2
	add	r3, r10, #13
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #12
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L838
	ldrb	r1, [r10, #13]	@ zero_extendqisi2
	add	r3, r10, #14
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #13
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L839
	ldrb	r1, [r10, #14]	@ zero_extendqisi2
	add	r3, r10, #15
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #14
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L840
	ldrb	r1, [r10, #15]	@ zero_extendqisi2
	add	r3, r10, #16
	rsb	r5, r1, #256
	cmp	r1, #127
	it	gt
	movgt	r1, r5
	cmp	r0, #15
	add	r7, r7, r1
	str	r7, [sp]
	bls	.L841
	ldrb	r5, [r10, #16]	@ zero_extendqisi2
	add	r3, r10, #17
	movs	r1, #16
	rsb	r6, r5, #256
	cmp	r5, #127
	it	gt
	movgt	r5, r6
	add	r7, r7, r5
	str	r7, [sp]
.L655:
	cmp	fp, r0
	beq	.L652
	rsb	r8, r0, fp
	lsr	r6, r8, #4
	lsl	ip, r6, #4
	cmp	r6, #0
	beq	.L657
.L986:
	cmp	r6, #2
	add	r0, r0, #1
	add	r0, r0, r10
	bls	.L842
	sub	lr, r6, #3
	vmov.i32	q10, #0  @ v4si
	bic	lr, lr, #1
	vmov.i32	q9, #256  @ v4si
	vmov.i32	q8, #127  @ v4si
	adds	r0, r0, #32
	add	lr, lr, #2
	movs	r5, #0
.L663:
	vldr	d28, [r0, #-32]
	vldr	d29, [r0, #-24]
	adds	r5, r5, #2
	cmp	r5, lr
	pld	[r0, #80]
	vmovl.u8 q2, d28
	mov	r7, r0
	vmovl.u8 q14, d29
	add	r0, r0, #32
	vldr	d24, [r0, #-48]
	vldr	d25, [r0, #-40]
	vmovl.u16 q13, d4
	vmovl.u16 q2, d5
	vmovl.u16 q1, d28
	vcge.s32	q3, q8, q13
	vsub.i32	q0, q9, q13
	vmovl.u8 q15, d24
	vcge.s32	q11, q8, q2
	vbsl	q3, q13, q0
	vmovl.u16 q14, d29
	vsub.i32	q0, q9, q2
	vcge.s32	q13, q8, q1
	vbsl	q11, q2, q0
	vmovl.u16 q2, d30
	vsub.i32	q0, q9, q1
	vadd.i32	q10, q3, q10
	vmovl.u8 q12, d25
	vcge.s32	q3, q8, q14
	vmovl.u16 q15, d31
	vbsl	q13, q1, q0
	vsub.i32	q1, q9, q14
	vadd.i32	q10, q11, q10
	vcge.s32	q11, q8, q2
	vbsl	q3, q14, q1
	vmovl.u16 q14, d24
	vsub.i32	q1, q9, q2
	vadd.i32	q10, q13, q10
	vcge.s32	q13, q8, q15
	vbsl	q11, q2, q1
	vmovl.u16 q12, d25
	vsub.i32	q2, q9, q15
	vadd.i32	q3, q3, q10
	vcge.s32	q10, q8, q14
	vbsl	q13, q15, q2
	vsub.i32	q15, q9, q14
	vadd.i32	q3, q3, q11
	vcge.s32	q11, q8, q12
	vbsl	q10, q14, q15
	vsub.i32	q14, q9, q12
	vadd.i32	q13, q13, q3
	vbsl	q11, q12, q14
	vadd.i32	q10, q10, q13
	vadd.i32	q10, q11, q10
	bne	.L663
.L658:
	vmov.i32	q9, #256  @ v4si
	vmov.i32	q8, #127  @ v4si
.L665:
	vld1.64	{d26-d27}, [r7:64]!
	adds	r5, r5, #1
	cmp	r5, r6
	vmovl.u8 q3, d26
	vmovl.u8 q13, d27
	vmovl.u16 q12, d6
	vmovl.u16 q3, d7
	vmovl.u16 q15, d26
	vcge.s32	q11, q8, q12
	vsub.i32	q2, q9, q12
	vcge.s32	q14, q8, q3
	vbsl	q11, q12, q2
	vmovl.u16 q13, d27
	vsub.i32	q2, q9, q3
	vcge.s32	q12, q8, q15
	vbsl	q14, q3, q2
	vsub.i32	q3, q9, q15
	vadd.i32	q10, q11, q10
	vcge.s32	q11, q8, q13
	vbsl	q12, q15, q3
	vsub.i32	q15, q9, q13
	vadd.i32	q10, q14, q10
	vbsl	q11, q13, q15
	vadd.i32	q10, q12, q10
	vadd.i32	q10, q11, q10
	bcc	.L665
	vadd.i32	d20, d20, d21
	vmov.i32	q8, #0  @ v4si
	ldr	lr, [sp]
	cmp	r8, ip
	add	r3, r3, ip
	add	r1, r1, ip
	vpadd.i32	d16, d20, d20
	vmov.32	r0, d16[0]
	add	lr, lr, r0
	str	lr, [sp]
	beq	.L652
.L657:
	ldrb	r0, [r3]	@ zero_extendqisi2
	adds	r5, r1, #1
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	ldr	r6, [sp]
	cmp	fp, r5
	add	r6, r6, r0
	str	r6, [sp]
	bls	.L652
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	mov	r7, r6
	adds	r5, r1, #2
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	adds	r5, r1, #3
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #3]	@ zero_extendqisi2
	adds	r5, r1, #4
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	adds	r5, r1, #5
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #5]	@ zero_extendqisi2
	adds	r5, r1, #6
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #6]	@ zero_extendqisi2
	adds	r5, r1, #7
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #7]	@ zero_extendqisi2
	add	r5, r1, #8
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #8]	@ zero_extendqisi2
	add	r5, r1, #9
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #9]	@ zero_extendqisi2
	add	r5, r1, #10
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #10]	@ zero_extendqisi2
	add	r5, r1, #11
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #11]	@ zero_extendqisi2
	add	r5, r1, #12
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #12]	@ zero_extendqisi2
	add	r5, r1, #13
	rsb	r6, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	cmp	fp, r5
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r0, [r3, #13]	@ zero_extendqisi2
	adds	r1, r1, #14
	rsb	r5, r0, #256
	cmp	r0, #127
	it	gt
	movgt	r0, r5
	cmp	fp, r1
	add	r7, r7, r0
	str	r7, [sp]
	bls	.L652
	ldrb	r3, [r3, #14]	@ zero_extendqisi2
	mov	r8, r7
	rsb	r1, r3, #256
	cmp	r3, #127
	it	gt
	movgt	r3, r1
	add	r8, r8, r3
	str	r8, [sp]
.L652:
	ldrb	r3, [r4, #860]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L650
	ldr	r8, [sp]
	movw	r0, #65472
	ldr	r6, [sp, #12]
	movt	r0, 63
	lsr	r3, r8, #10
	uxth	r5, r8
	ands	r0, r0, r3
	cbz	r6, .L666
	mov	lr, r6
	ldr	r6, [r4, #864]
	movs	r1, #0
.L668:
	ldrb	r3, [r6, r1]	@ zero_extendqisi2
	cbnz	r3, .L667
	ldr	r7, [r4, #868]
	ldrh	r3, [r7, r1, lsl #1]
	mul	r5, r5, r3
	mul	r0, r0, r3
	lsrs	r5, r5, #8
	lsrs	r0, r0, #8
.L667:
	adds	r1, r1, #1
	cmp	lr, r1
	bgt	.L668
.L666:
	ldr	r3, [r4, #876]
	movw	r1, #65472
	movt	r1, 63
	ldrh	r6, [r3]
	mul	r3, r6, r0
	lsrs	r3, r3, #3
	cmp	r3, r1
	itt	hi
	mvnhi	r8, #-2147483648
	strhi	r8, [sp]
	bhi	.L650
	mul	r1, r6, r5
	lsrs	r1, r1, #3
	add	r1, r1, r3, lsl #10
	str	r1, [sp]
	b	.L650
.L822:
	mvn	r7, #-2147483648
	str	r7, [sp]
.L650:
	ldr	r0, [sp, #4]
	cmp	r0, #16
	beq	.L973
	lsls	r5, r0, #27
	bpl	.L850
	ldrb	r3, [r4, #860]	@ zero_extendqisi2
	cmp	r3, #2
	it	ne
	ldrne	r1, [sp]
	beq	.L974
.L691:
	ldr	r6, [r4, #628]
	add	r8, r10, #1
	add	r9, r6, #1
	cmp	r2, #0
	beq	.L848
	add	r3, r6, #17
	add	r0, r10, #17
	cmp	r9, r0
	it	cc
	cmpcc	r8, r3
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	cmp	r2, #15
	ite	ls
	movls	r3, #0
	andhi	r3, r3, #1
	cmp	r3, #0
	beq	.L696
	lsrs	r3, r2, #4
	vmov.i32	q8, #0  @ v4si
	vmov.i32	q10, #256  @ v4si
	mov	r6, r8
	lsls	r0, r3, #4
	vmov.i32	q9, #127  @ v4si
	mov	r7, r9
	movs	r5, #0
.L697:
	vld1.8	{q11}, [r6]!
	adds	r5, r5, #1
	vmovl.u8 q3, d22
	cmp	r3, r5
	vmovl.u8 q13, d23
	vst1.8	{q11}, [r7]!
	vmovl.u16 q12, d6
	vmovl.u16 q3, d7
	vmovl.u16 q15, d26
	vcge.s32	q11, q9, q12
	vsub.i32	q2, q10, q12
	vcge.s32	q14, q9, q3
	vbsl	q11, q12, q2
	vmovl.u16 q13, d27
	vsub.i32	q2, q10, q3
	vcge.s32	q12, q9, q15
	vbsl	q14, q3, q2
	vsub.i32	q3, q10, q15
	vadd.i32	q8, q11, q8
	vcge.s32	q11, q9, q13
	vbsl	q12, q15, q3
	vsub.i32	q15, q10, q13
	vadd.i32	q8, q14, q8
	vbsl	q11, q13, q15
	vadd.i32	q8, q12, q8
	vadd.i32	q8, q11, q8
	bhi	.L697
	vadd.i32	d16, d16, d17
	vmov.i32	q9, #0  @ v4si
	cmp	r2, r0
	add	r6, r8, r0
	add	r5, r9, r0
	vpadd.i32	d18, d16, d16
	vmov.32	r3, d18[0]
	beq	.L702
	ldrb	r7, [r8, r0]	@ zero_extendqisi2
	add	lr, r0, #1
	rsb	ip, r7, #256
	strb	r7, [r9, r0]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #1]	@ zero_extendqisi2
	add	lr, r0, #2
	rsb	ip, r7, #256
	strb	r7, [r5, #1]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #2]	@ zero_extendqisi2
	add	lr, r0, #3
	rsb	ip, r7, #256
	strb	r7, [r5, #2]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #3]	@ zero_extendqisi2
	add	lr, r0, #4
	rsb	ip, r7, #256
	strb	r7, [r5, #3]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #4]	@ zero_extendqisi2
	add	lr, r0, #5
	rsb	ip, r7, #256
	strb	r7, [r5, #4]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #5]	@ zero_extendqisi2
	add	lr, r0, #6
	rsb	ip, r7, #256
	strb	r7, [r5, #5]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #6]	@ zero_extendqisi2
	add	lr, r0, #7
	rsb	ip, r7, #256
	strb	r7, [r5, #6]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #7]	@ zero_extendqisi2
	add	lr, r0, #8
	rsb	ip, r7, #256
	strb	r7, [r5, #7]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #8]	@ zero_extendqisi2
	add	lr, r0, #9
	rsb	ip, r7, #256
	strb	r7, [r5, #8]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #9]	@ zero_extendqisi2
	add	lr, r0, #10
	rsb	ip, r7, #256
	strb	r7, [r5, #9]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #10]	@ zero_extendqisi2
	add	lr, r0, #11
	rsb	ip, r7, #256
	strb	r7, [r5, #10]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #11]	@ zero_extendqisi2
	add	lr, r0, #12
	rsb	ip, r7, #256
	strb	r7, [r5, #11]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #12]	@ zero_extendqisi2
	add	lr, r0, #13
	rsb	ip, r7, #256
	strb	r7, [r5, #12]
	cmp	r7, #127
	it	gt
	movgt	r7, ip
	cmp	r2, lr
	add	r3, r3, r7
	bls	.L702
	ldrb	r7, [r6, #13]	@ zero_extendqisi2
	adds	r0, r0, #14
	rsb	lr, r7, #256
	strb	r7, [r5, #13]
	cmp	r7, #127
	it	gt
	movgt	r7, lr
	cmp	r2, r0
	add	r3, r3, r7
	bls	.L702
	ldrb	r0, [r6, #14]	@ zero_extendqisi2
	rsb	r6, r0, #256
	strb	r0, [r5, #14]
	cmp	r0, #127
	it	gt
	movgt	r0, r6
	add	r3, r3, r0
.L702:
	add	r8, r8, r2
	add	r9, r9, r2
.L695:
	cmp	fp, r2
	bls	.L704
	negs	r5, r2
	mov	r6, r10
	add	r8, r8, r5
	add	r9, r9, r5
	mov	r0, r2
	b	.L707
.L975:
	cmp	fp, r0
	bls	.L704
.L707:
	ldrb	r7, [r8, r0]	@ zero_extendqisi2
	ldrb	r5, [r6, #1]!	@ zero_extendqisi2
	subs	r5, r7, r5
	uxtb	r5, r5
	cmp	r5, #127
	rsb	r7, r5, #256
	it	le
	movle	r7, r5
	strb	r5, [r9, r0]
	add	r3, r3, r7
	adds	r0, r0, #1
	cmp	r1, r3
	bcs	.L975
.L704:
	ldrb	r1, [r4, #860]	@ zero_extendqisi2
	cmp	r1, #2
	beq	.L976
.L708:
	ldr	r7, [sp]
	cmp	r7, r3
	bls	.L850
	ldr	r7, [sp, #4]
	ldr	r5, [r4, #628]
	str	r3, [sp]
	cmp	r7, #32
	str	r5, [sp, #16]
	bne	.L712
.L977:
	ldr	r2, [r4, #632]
	add	r7, r10, #1
	ldr	r6, [sp, #8]
	adds	r5, r2, #1
	adds	r6, r6, #1
	cmp	fp, #0
	beq	.L851
	ldr	r0, [sp, #8]
	add	r3, r2, #17
	add	r1, r10, #17
	cmp	r5, r1
	it	cc
	cmpcc	r7, r3
	add	r0, r0, #17
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	cmp	r5, r0
	it	cc
	cmpcc	r6, r3
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	ands	r3, r3, r1
	cmp	fp, #15
	ite	ls
	movls	r3, #0
	andhi	r3, r3, #1
	cmp	r3, #0
	beq	.L714
	lsr	r2, fp, #4
	mov	ip, r7
	mov	lr, r6
	lsls	r3, r2, #4
	mov	r0, r5
	movs	r1, #0
.L719:
	vld1.8	{q9}, [ip]!
	adds	r1, r1, #1
	cmp	r1, r2
	vld1.8	{q8}, [lr]!
	vsub.i8	q8, q9, q8
	vst1.8	{q8}, [r0]!
	bcc	.L719
	cmp	fp, r3
	add	r0, r7, r3
	add	r2, r5, r3
	add	r1, r6, r3
	beq	.L720
	ldrb	lr, [r7, r3]	@ zero_extendqisi2
	adds	r7, r3, #1
	ldrb	r6, [r6, r3]	@ zero_extendqisi2
	cmp	fp, r7
	rsb	r6, r6, lr
	strb	r6, [r5, r3]
	bls	.L720
	ldrb	r7, [r0, #1]	@ zero_extendqisi2
	adds	r5, r3, #2
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #1]
	bls	.L720
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	adds	r5, r3, #3
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #2]
	bls	.L720
	ldrb	r7, [r0, #3]	@ zero_extendqisi2
	adds	r5, r3, #4
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #3]
	bls	.L720
	ldrb	r7, [r0, #4]	@ zero_extendqisi2
	adds	r5, r3, #5
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #4]
	bls	.L720
	ldrb	r7, [r0, #5]	@ zero_extendqisi2
	adds	r5, r3, #6
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #5]
	bls	.L720
	ldrb	r7, [r0, #6]	@ zero_extendqisi2
	adds	r5, r3, #7
	ldrb	r6, [r1, #6]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #6]
	bls	.L720
	ldrb	r7, [r0, #7]	@ zero_extendqisi2
	add	r5, r3, #8
	ldrb	r6, [r1, #7]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #7]
	bls	.L720
	ldrb	r7, [r0, #8]	@ zero_extendqisi2
	add	r5, r3, #9
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #8]
	bls	.L720
	ldrb	r7, [r0, #9]	@ zero_extendqisi2
	add	r5, r3, #10
	ldrb	r6, [r1, #9]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #9]
	bls	.L720
	ldrb	r7, [r0, #10]	@ zero_extendqisi2
	add	r5, r3, #11
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #10]
	bls	.L720
	ldrb	r7, [r0, #11]	@ zero_extendqisi2
	add	r5, r3, #12
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #11]
	bls	.L720
	ldrb	r7, [r0, #12]	@ zero_extendqisi2
	add	r5, r3, #13
	ldrb	r6, [r1, #12]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r2, #12]
	bls	.L720
	ldrb	r6, [r0, #13]	@ zero_extendqisi2
	adds	r3, r3, #14
	ldrb	r5, [r1, #13]	@ zero_extendqisi2
	cmp	fp, r3
	sub	r5, r6, r5
	strb	r5, [r2, #13]
	bls	.L720
	ldrb	r0, [r0, #14]	@ zero_extendqisi2
	ldrb	r3, [r1, #14]	@ zero_extendqisi2
	subs	r3, r0, r3
	strb	r3, [r2, #14]
.L720:
	ldr	r5, [r4, #632]
	str	r5, [sp, #16]
.L722:
	ldr	r6, [sp, #20]
	movs	r3, #0
	mov	r0, r4
	ldr	r1, [sp, #16]
	ldr	r2, [r6, #4]
	adds	r2, r2, #1
	bl	png_compress_IDAT(PLT)
	ldr	r3, [r4, #620]
	cbz	r3, .L816
	ldr	r2, [r4, #624]
	str	r3, [r4, #624]
	str	r2, [r4, #620]
.L816:
	mov	r0, r4
	bl	png_write_finish_row(PLT)
	ldr	r2, [r4, #720]
	ldr	r3, [r4, #716]
	adds	r2, r2, #1
	str	r2, [r4, #720]
	cbz	r3, .L817
	cmp	r2, r3
	bcc	.L817
	mov	r0, r4
	bl	png_write_flush(PLT)
.L817:
	ldrb	r3, [r4, #861]	@ zero_extendqisi2
	cbz	r3, .L649
	ldr	r5, [sp, #12]
	cmp	r5, #1
	ble	.L869
	movs	r3, #1
	mov	r0, r5
.L821:
	ldr	r2, [r4, #864]
	adds	r1, r2, r3
	ldrb	r1, [r1, #-1]	@ zero_extendqisi2
	strb	r1, [r2, r3]
	adds	r3, r3, #1
	cmp	r0, r3
	bgt	.L821
	ldr	r1, [sp, #12]
.L819:
	ldr	r6, [sp, #16]
	ldr	r3, [r4, #864]
	ldrb	r2, [r6]	@ zero_extendqisi2
	strb	r2, [r3, r1]
.L649:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L850:
	ldr	r7, [sp, #4]
	str	r10, [sp, #16]
	cmp	r7, #32
	beq	.L977
.L712:
	ldr	r6, [sp, #4]
	lsls	r0, r6, #26
	bpl	.L723
	ldrb	r5, [r4, #860]	@ zero_extendqisi2
	cmp	r5, #2
	it	ne
	ldrne	lr, [sp]
	beq	.L978
.L724:
	ldr	r6, [sp, #8]
	add	r0, r10, #1
	ldr	r7, [r4, #632]
	adds	r6, r6, #1
	cmp	fp, #0
	beq	.L854
	add	ip, fp, #1
	movs	r1, #0
	add	ip, ip, r10
	b	.L733
.L731:
	cmp	r0, ip
	beq	.L970
.L733:
	ldrb	r5, [r0], #1	@ zero_extendqisi2
	ldrb	r3, [r6], #1	@ zero_extendqisi2
	subs	r3, r5, r3
	uxtb	r3, r3
	cmp	r3, #127
	rsb	r5, r3, #256
	it	le
	movle	r5, r3
	strb	r3, [r7, #1]!
	add	r1, r1, r5
	cmp	lr, r1
	bcs	.L731
.L970:
	ldrb	r5, [r4, #860]	@ zero_extendqisi2
.L728:
	cmp	r5, #2
	beq	.L979
.L734:
	ldr	r7, [sp]
	cmp	r7, r1
	ittt	hi
	ldrhi	r5, [r4, #632]
	strhi	r1, [sp]
	strhi	r5, [sp, #16]
.L723:
	ldr	r6, [sp, #4]
	cmp	r6, #64
	bne	.L738
	ldr	r7, [r4, #636]
	add	r1, r10, #1
	ldr	r3, [sp, #8]
	adds	r5, r7, #1
	adds	r3, r3, #1
	cmp	r2, #0
	beq	.L856
	ldr	r0, [sp, #8]
	add	ip, r7, #17
	add	r6, r10, #17
	add	lr, r0, #17
	mov	r0, ip
	cmp	r1, r0
	it	cc
	cmpcc	r5, r6
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	cmp	r3, r0
	it	cc
	cmpcc	r5, lr
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	ands	r0, r0, r6
	cmp	r2, #15
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	beq	.L740
	lsrs	r6, r2, #4
	mov	r8, r5
	mov	ip, r3
	lsls	r0, r6, #4
	mov	lr, r1
	movs	r7, #0
.L745:
	vld1.8	{q8}, [ip]!
	adds	r7, r7, #1
	vshr.u8	q8, q8, #1
	cmp	r7, r6
	vld1.8	{q9}, [lr]!
	vsub.i8	q8, q9, q8
	vst1.8	{q8}, [r8]!
	bcc	.L745
	cmp	r2, r0
	add	r7, r1, r0
	add	r8, r5, r0
	add	r6, r3, r0
	beq	.L746
	rsb	r8, r0, r8
.L744:
	ldrb	lr, [r6], #1	@ zero_extendqisi2
	ldrb	ip, [r7], #1	@ zero_extendqisi2
	sub	lr, ip, lr, lsr #1
	strb	lr, [r8, r0]
	adds	r0, r0, #1
	cmp	r2, r0
	bhi	.L744
.L746:
	add	r5, r5, r2
	add	r3, r3, r2
	adds	r0, r1, r2
.L739:
	cmp	fp, r2
	bls	.L755
	add	r6, r5, #16
	add	r10, r10, #17
	cmp	r5, r10
	it	cc
	cmpcc	r1, r6
	add	r7, r3, #16
	ite	cs
	movcs	r10, #1
	movcc	r10, #0
	cmp	r3, r6
	it	cc
	cmpcc	r5, r7
	add	lr, r0, #16
	ite	cs
	movcs	r7, #1
	movcc	r7, #0
	rsb	r8, r2, fp
	cmp	r0, r6
	it	cc
	cmpcc	r5, lr
	and	r7, r10, r7
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	cmp	r8, #15
	ite	ls
	movls	r7, #0
	andhi	r7, r7, #1
	tst	r7, r6
	str	r8, [sp, #4]
	beq	.L749
	lsr	r6, r8, #4
	str	r6, [sp]
	lsl	r10, r6, #4
	cmp	r6, #0
	beq	.L750
	cmp	r6, #2
	bls	.L857
	subs	r6, r6, #3
	mov	ip, r1
	bic	r6, r6, #1
	str	r2, [sp, #24]
	adds	r6, r6, #2
	mov	r2, r3
	str	r6, [sp, #8]
	mov	r9, #0
	str	r1, [sp, #32]
	mov	r6, r0
	str	r3, [sp, #36]
	mov	r1, r5
	mov	r3, ip
	str	fp, [sp, #16]
	str	r5, [sp, #28]
	str	r0, [sp, #40]
	str	r4, [sp, #44]
.L756:
	mov	r8, r2
	mov	ip, r3
	mov	lr, r6
	mov	r7, r1
	vld1.8	{q9}, [r8]!
	add	r9, r9, #2
	vmovl.u8 q11, d18
	add	r0, r2, #32
	vld1.8	{q8}, [ip]!
	add	r5, r3, #32
	vmovl.u8 q10, d16
	add	r4, r1, #32
	vmovl.u8 q9, d19
	add	fp, r6, #32
	vmovl.u8 q8, d17
	mov	r2, r0
	vmovl.u16 q15, d22
	mov	r3, r5
	vmovl.u16 q14, d18
	mov	r1, r4
	vmovl.u16 q11, d23
	vmovl.u16 q13, d20
	vmovl.u16 q9, d19
	vmovl.u16 q12, d16
	vmovl.u16 q10, d21
	vmovl.u16 q8, d17
	vadd.i32	q13, q15, q13
	vadd.i32	q10, q11, q10
	vadd.i32	q12, q14, q12
	vadd.i32	q8, q9, q8
	vshr.s32	q13, q13, #1
	vshr.s32	q10, q10, #1
	vshr.s32	q12, q12, #1
	vshr.s32	q8, q8, #1
	vmovn.i32	d22, q13
	vmovn.i32	d23, q10
	vld1.8	{q9}, [lr]!
	pld	[r6, #96]
	mov	r6, fp
	vmovn.i32	d20, q12
	vmovn.i32	d21, q8
	vmovn.i16	d16, q11
	vmovn.i16	d17, q10
	vsub.i8	q8, q9, q8
	vst1.8	{q8}, [r7]!
	vld1.8	{q9}, [r8]
	vmovl.u8 q11, d18
	vld1.8	{q8}, [ip]
	vmovl.u8 q9, d19
	vmovl.u8 q10, d16
	vmovl.u8 q8, d17
	vmovl.u16 q15, d22
	vmovl.u16 q13, d20
	vmovl.u16 q11, d23
	vmovl.u16 q14, d18
	vmovl.u16 q12, d16
	vmovl.u16 q9, d19
	vmovl.u16 q10, d21
	vmovl.u16 q8, d17
	vadd.i32	q10, q11, q10
	vadd.i32	q8, q9, q8
	vadd.i32	q13, q15, q13
	vadd.i32	q12, q14, q12
	vshr.s32	q10, q10, #1
	vshr.s32	q8, q8, #1
	vshr.s32	q13, q13, #1
	vshr.s32	q12, q12, #1
	vld1.8	{q9}, [lr]
	vmovn.i32	d22, q13
	vmovn.i32	d23, q10
	vmovn.i32	d20, q12
	vmovn.i32	d21, q8
	vmovn.i16	d16, q11
	vmovn.i16	d17, q10
	vsub.i8	q8, q9, q8
	vst1.8	{q8}, [r7]
	ldr	r7, [sp, #8]
	cmp	r9, r7
	bne	.L756
	mov	ip, r0
	mov	lr, r5
	mov	r8, fp
	mov	r6, r4
	ldr	r2, [sp, #24]
	mov	r7, lr
	ldr	r1, [sp, #32]
	mov	lr, ip
	ldr	r3, [sp, #36]
	mov	ip, r8
	ldr	r0, [sp, #40]
	ldr	fp, [sp, #16]
	ldr	r5, [sp, #28]
	ldr	r4, [sp, #44]
.L751:
	mov	r8, r7
	mov	r7, r9
	mov	r9, r3
	ldr	r3, [sp]
.L758:
	vld1.8	{q9}, [lr]!
	adds	r7, r7, #1
	vmovl.u8 q11, d18
	cmp	r3, r7
	vmovl.u8 q9, d19
	vld1.8	{q8}, [r8]!
	vmovl.u8 q10, d16
	vmovl.u8 q8, d17
	vmovl.u16 q2, d22
	vmovl.u16 q15, d21
	vmovl.u16 q11, d23
	vmovl.u16 q14, d18
	vmovl.u16 q13, d19
	vmovl.u16 q12, d16
	vmovl.u16 q3, d20
	vmovl.u16 q8, d17
	vadd.i32	q9, q11, q15
	vadd.i32	q10, q2, q3
	vadd.i32	q12, q14, q12
	vadd.i32	q8, q13, q8
	vshr.s32	q10, q10, #1
	vshr.s32	q9, q9, #1
	vshr.s32	q8, q8, #1
	vshr.s32	q12, q12, #1
	vmovn.i32	d22, q10
	vmovn.i32	d23, q9
	vld1.8	{q9}, [ip]!
	vmovn.i32	d20, q12
	vmovn.i32	d21, q8
	vmovn.i16	d16, q11
	vmovn.i16	d17, q10
	vsub.i8	q8, q9, q8
	vst1.8	{q8}, [r6]!
	bhi	.L758
	ldr	r8, [sp, #4]
	mov	r3, r9
	add	r0, r0, r10
	add	r5, r5, r10
	add	r3, r3, r10
	add	r1, r1, r10
	cmp	r10, r8
	add	r2, r2, r10
	beq	.L755
.L750:
	subs	r5, r5, r2
.L754:
	ldrb	lr, [r3], #1	@ zero_extendqisi2
	ldrb	r6, [r1], #1	@ zero_extendqisi2
	ldrb	r7, [r0], #1	@ zero_extendqisi2
	add	r6, r6, lr
	sub	r6, r7, r6, lsr #1
	strb	r6, [r5, r2]
	adds	r2, r2, #1
	cmp	fp, r2
	bhi	.L754
.L755:
	ldr	r7, [r4, #636]
	str	r7, [sp, #16]
	b	.L722
.L973:
	ldr	r5, [r4, #628]
	add	r1, r10, #1
	adds	r3, r5, #1
	cmp	r2, #0
	beq	.L844
	add	r0, r5, #17
	add	r6, r10, #17
	cmp	r3, r6
	it	cc
	cmpcc	r1, r0
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	cmp	r2, #15
	ite	ls
	movls	r0, #0
	andhi	r0, r0, #1
	cmp	r0, #0
	beq	.L671
	lsrs	r5, r2, #4
	mov	lr, r1
	mov	r7, r3
	lsls	r0, r5, #4
	movs	r6, #0
.L676:
	adds	r6, r6, #1
	vld1.8	{q8}, [lr]!
	cmp	r6, r5
	vst1.8	{q8}, [r7]!
	bcc	.L676
	cmp	r2, r0
	add	r6, r1, r0
	add	r5, r3, r0
	beq	.L677
	ldrb	lr, [r1, r0]	@ zero_extendqisi2
	adds	r7, r0, #1
	cmp	r2, r7
	strb	lr, [r3, r0]
	bls	.L677
	ldrb	lr, [r6, #1]	@ zero_extendqisi2
	adds	r7, r0, #2
	cmp	r2, r7
	strb	lr, [r5, #1]
	bls	.L677
	ldrb	lr, [r6, #2]	@ zero_extendqisi2
	adds	r7, r0, #3
	cmp	r2, r7
	strb	lr, [r5, #2]
	bls	.L677
	ldrb	lr, [r6, #3]	@ zero_extendqisi2
	adds	r7, r0, #4
	cmp	r2, r7
	strb	lr, [r5, #3]
	bls	.L677
	ldrb	lr, [r6, #4]	@ zero_extendqisi2
	adds	r7, r0, #5
	cmp	r2, r7
	strb	lr, [r5, #4]
	bls	.L677
	ldrb	lr, [r6, #5]	@ zero_extendqisi2
	adds	r7, r0, #6
	cmp	r2, r7
	strb	lr, [r5, #5]
	bls	.L677
	ldrb	lr, [r6, #6]	@ zero_extendqisi2
	adds	r7, r0, #7
	cmp	r2, r7
	strb	lr, [r5, #6]
	bls	.L677
	ldrb	lr, [r6, #7]	@ zero_extendqisi2
	add	r7, r0, #8
	cmp	r2, r7
	strb	lr, [r5, #7]
	bls	.L677
	ldrb	lr, [r6, #8]	@ zero_extendqisi2
	add	r7, r0, #9
	cmp	r2, r7
	strb	lr, [r5, #8]
	bls	.L677
	ldrb	lr, [r6, #9]	@ zero_extendqisi2
	add	r7, r0, #10
	cmp	r2, r7
	strb	lr, [r5, #9]
	bls	.L677
	ldrb	lr, [r6, #10]	@ zero_extendqisi2
	add	r7, r0, #11
	cmp	r2, r7
	strb	lr, [r5, #10]
	bls	.L677
	ldrb	lr, [r6, #11]	@ zero_extendqisi2
	add	r7, r0, #12
	cmp	r2, r7
	strb	lr, [r5, #11]
	bls	.L677
	ldrb	lr, [r6, #12]	@ zero_extendqisi2
	add	r7, r0, #13
	cmp	r2, r7
	strb	lr, [r5, #12]
	bls	.L677
	ldrb	r7, [r6, #13]	@ zero_extendqisi2
	adds	r0, r0, #14
	cmp	r2, r0
	strb	r7, [r5, #13]
	itt	hi
	ldrbhi	r0, [r6, #14]	@ zero_extendqisi2
	strbhi	r0, [r5, #14]
.L677:
	add	r3, r3, r2
	adds	r0, r1, r2
	mov	lr, r2
.L670:
	cmp	fp, r2
	bls	.L687
	add	r5, r3, #16
	add	r7, r0, #16
	cmp	r3, r7
	it	cc
	cmpcc	r0, r5
	add	r6, r10, #17
	ite	cs
	movcs	r7, #1
	movcc	r7, #0
	cmp	r3, r6
	it	cc
	cmpcc	r1, r5
	rsb	r6, r2, fp
	ite	cs
	movcs	r5, #1
	movcc	r5, #0
	ands	r5, r5, r7
	cmp	r6, #15
	ite	ls
	movls	r5, #0
	andhi	r5, r5, #1
	cmp	r5, #0
	beq	.L681
	lsrs	r7, r6, #4
	lsls	r5, r7, #4
	cbz	r7, .L682
	mov	r9, r0
	mov	r8, r1
	mov	ip, r3
	mov	lr, #0
.L688:
	vld1.8	{q9}, [r9]!
	add	lr, lr, #1
	cmp	lr, r7
	vld1.8	{q8}, [r8]!
	vsub.i8	q8, q9, q8
	vst1.8	{q8}, [ip]!
	bcc	.L688
	cmp	r6, r5
	add	r0, r0, r5
	add	r1, r1, r5
	add	r3, r3, r5
	add	lr, r2, r5
	beq	.L687
.L682:
	ldrb	r7, [r0]	@ zero_extendqisi2
	add	r5, lr, #1
	ldrb	r6, [r1]	@ zero_extendqisi2
	cmp	r5, fp
	sub	r6, r7, r6
	strb	r6, [r3]
	bcs	.L687
	ldrb	r7, [r0, #1]	@ zero_extendqisi2
	add	r5, lr, #2
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #1]
	bls	.L687
	ldrb	r7, [r0, #2]	@ zero_extendqisi2
	add	r5, lr, #3
	ldrb	r6, [r1, #2]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #2]
	bls	.L687
	ldrb	r7, [r0, #3]	@ zero_extendqisi2
	add	r5, lr, #4
	ldrb	r6, [r1, #3]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #3]
	bls	.L687
	ldrb	r7, [r0, #4]	@ zero_extendqisi2
	add	r5, lr, #5
	ldrb	r6, [r1, #4]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #4]
	bls	.L687
	ldrb	r7, [r0, #5]	@ zero_extendqisi2
	add	r5, lr, #6
	ldrb	r6, [r1, #5]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #5]
	bls	.L687
	ldrb	r7, [r0, #6]	@ zero_extendqisi2
	add	r5, lr, #7
	ldrb	r6, [r1, #6]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #6]
	bls	.L687
	ldrb	r7, [r0, #7]	@ zero_extendqisi2
	add	r5, lr, #8
	ldrb	r6, [r1, #7]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #7]
	bls	.L687
	ldrb	r7, [r0, #8]	@ zero_extendqisi2
	add	r5, lr, #9
	ldrb	r6, [r1, #8]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #8]
	bls	.L687
	ldrb	r7, [r0, #9]	@ zero_extendqisi2
	add	r5, lr, #10
	ldrb	r6, [r1, #9]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #9]
	bls	.L687
	ldrb	r7, [r0, #10]	@ zero_extendqisi2
	add	r5, lr, #11
	ldrb	r6, [r1, #10]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #10]
	bls	.L687
	ldrb	r7, [r0, #11]	@ zero_extendqisi2
	add	r5, lr, #12
	ldrb	r6, [r1, #11]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #11]
	bls	.L687
	ldrb	r7, [r0, #12]	@ zero_extendqisi2
	add	r5, lr, #13
	ldrb	r6, [r1, #12]	@ zero_extendqisi2
	cmp	fp, r5
	sub	r6, r7, r6
	strb	r6, [r3, #12]
	bls	.L687
	ldrb	r5, [r0, #13]	@ zero_extendqisi2
	add	lr, lr, #14
	ldrb	r6, [r1, #13]	@ zero_extendqisi2
	cmp	fp, lr
	sub	r5, r5, r6
	strb	r5, [r3, #13]
	bls	.L687
	ldrb	r0, [r0, #14]	@ zero_extendqisi2
	ldrb	r1, [r1, #14]	@ zero_extendqisi2
	subs	r1, r0, r1
	strb	r1, [r3, #14]
.L687:
	ldr	r6, [sp, #4]
	ldr	r5, [r4, #628]
	str	r5, [sp, #16]
.L781:
	lsls	r3, r6, #24
	bpl	.L722
	ldrb	r3, [r4, #860]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L980
	ldr	r7, [sp]
	str	r7, [sp, #4]
.L795:
	ldr	r6, [r4, #640]
	add	r8, r10, #1
	ldr	r0, [sp, #8]
	adds	r1, r6, #1
	add	ip, r0, #1
	str	r1, [sp, #24]
	cmp	r2, #0
	beq	.L866
	add	r3, r6, #17
	add	r10, r10, #17
	mov	r5, r1
	mov	r1, r0
	cmp	r8, r3
	it	cc
	cmpcc	r5, r10
	add	r1, r1, #17
	ite	cs
	movcs	r10, #1
	movcc	r10, #0
	cmp	ip, r3
	it	cc
	cmpcc	r5, r1
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	and	r3, r10, r3
	cmp	r2, #15
	ite	ls
	movls	r3, #0
	andhi	r3, r3, #1
	cmp	r3, #0
	beq	.L800
	lsrs	r3, r2, #4
	vmov.i32	q8, #0  @ v4si
	vmov.i32	q10, #256  @ v4si
	mov	r6, r5
	lsls	r0, r3, #4
	vmov.i32	q9, #127  @ v4si
	mov	r7, r8
	mov	r5, ip
	movs	r1, #0
.L801:
	vld1.8	{q12}, [r7]!
	adds	r1, r1, #1
	cmp	r3, r1
	vld1.8	{q11}, [r5]!
	vsub.i8	q11, q12, q11
	vmovl.u8 q3, d22
	vmovl.u8 q13, d23
	vst1.8	{q11}, [r6]!
	vmovl.u16 q12, d6
	vmovl.u16 q3, d7
	vmovl.u16 q15, d26
	vcge.s32	q11, q9, q12
	vsub.i32	q2, q10, q12
	vcge.s32	q14, q9, q3
	vbsl	q11, q12, q2
	vmovl.u16 q13, d27
	vsub.i32	q2, q10, q3
	vcge.s32	q12, q9, q15
	vbsl	q14, q3, q2
	vsub.i32	q3, q10, q15
	vadd.i32	q8, q11, q8
	vcge.s32	q11, q9, q13
	vbsl	q12, q15, q3
	vsub.i32	q15, q10, q13
	vadd.i32	q8, q14, q8
	vbsl	q11, q13, q15
	vadd.i32	q8, q12, q8
	vadd.i32	q8, q11, q8
	bhi	.L801
	vadd.i32	d16, d16, d17
	vmov.i32	q9, #0  @ v4si
	ldr	lr, [sp, #24]
	cmp	r2, r0
	add	r6, r8, r0
	add	r5, ip, r0
	vpadd.i32	d18, d16, d16
	add	lr, lr, r0
	vmov.32	r3, d18[0]
	beq	.L805
	rsb	lr, r0, lr
.L803:
	ldrb	r7, [r6], #1	@ zero_extendqisi2
	ldrb	r1, [r5], #1	@ zero_extendqisi2
	subs	r1, r7, r1
	uxtb	r1, r1
	strb	r1, [lr, r0]
	rsb	r7, r1, #256
	adds	r0, r0, #1
	cmp	r1, #127
	it	gt
	movgt	r1, r7
	cmp	r2, r0
	add	r3, r3, r1
	bhi	.L803
.L805:
	ldr	r1, [sp, #24]
	add	r10, r8, r2
	add	r9, ip, r2
	add	r1, r1, r2
	str	r1, [sp, #24]
.L799:
	cmp	fp, r2
	bls	.L807
	ldr	r5, [sp, #24]
	str	r4, [sp, #8]
	rsb	lr, r2, r5
	b	.L811
.L981:
	cmp	fp, r2
	bls	.L967
.L811:
	ldrb	r0, [ip], #1	@ zero_extendqisi2
	ldrb	r7, [r9], #1	@ zero_extendqisi2
	ldrb	r1, [r8], #1	@ zero_extendqisi2
	subs	r6, r7, r0
	eor	r4, r6, r6, asr #31
	subs	r5, r1, r0
	cmp	r5, #0
	sub	r4, r4, r6, asr #31
	add	r6, r6, r5
	it	lt
	rsblt	r5, r5, #0
	cmp	r6, #0
	it	lt
	rsblt	r6, r6, #0
	cmp	r4, r5
	it	le
	cmple	r4, r6
	ble	.L808
	cmp	r5, r6
	ite	gt
	movgt	r1, r0
	movle	r1, r7
.L808:
	ldrb	r0, [r10], #1	@ zero_extendqisi2
	ldr	r6, [sp, #4]
	subs	r1, r0, r1
	uxtb	r1, r1
	cmp	r1, #127
	rsb	r0, r1, #256
	it	le
	movle	r0, r1
	strb	r1, [lr, r2]
	add	r3, r3, r0
	adds	r2, r2, #1
	cmp	r6, r3
	bcs	.L981
.L967:
	ldr	r4, [sp, #8]
.L807:
	ldrb	r2, [r4, #860]	@ zero_extendqisi2
	cmp	r2, #2
	beq	.L982
.L812:
	ldr	r7, [sp]
	cmp	r7, r3
	bls	.L722
.L971:
	ldr	r5, [r4, #640]
	str	r5, [sp, #16]
	b	.L722
.L823:
	mvn	r6, #-2147483648
	str	r10, [sp, #16]
	str	r6, [sp]
	b	.L712
.L738:
	lsls	r1, r6, #25
	bpl	.L680
	ldrb	r3, [r4, #860]	@ zero_extendqisi2
	cmp	r3, #2
	it	ne
	ldrne	ip, [sp]
	beq	.L983
.L761:
	ldr	r1, [r4, #636]
	add	r6, r10, #1
	ldr	r0, [sp, #8]
	adds	r7, r1, #1
	adds	r0, r0, #1
	str	r7, [sp, #24]
	cmp	r2, #0
	beq	.L860
	add	r3, r1, #17
	ldr	r5, [sp, #8]
	cmp	r3, r6
	mov	r8, r7
	ite	hi
	movhi	r7, #0
	movls	r7, #1
	cmp	r3, r0
	add	lr, r10, #17
	ite	hi
	movhi	r3, #0
	movls	r3, #1
	adds	r5, r5, #17
	cmp	r8, lr
	it	cs
	orrcs	r7, r7, #1
	cmp	r8, r5
	it	cs
	orrcs	r3, r3, #1
	ands	r3, r3, r7
	cmp	r2, #15
	ite	ls
	movls	r3, #0
	andhi	r3, r3, #1
	cmp	r3, #0
	beq	.L766
	lsrs	r3, r2, #4
	vmov.i32	q8, #0  @ v4si
	vmov.i32	q10, #256  @ v4si
	mov	r7, r8
	lsls	r5, r3, #4
	vmov.i32	q9, #127  @ v4si
	mov	lr, r6
	mov	r8, r0
	movs	r1, #0
.L767:
	vld1.8	{q11}, [r8]!
	adds	r1, r1, #1
	vshr.u8	q11, q11, #1
	cmp	r3, r1
	vld1.8	{q12}, [lr]!
	vsub.i8	q11, q12, q11
	vmovl.u8 q3, d22
	vmovl.u8 q13, d23
	vst1.8	{q11}, [r7]!
	vmovl.u16 q12, d6
	vmovl.u16 q3, d7
	vmovl.u16 q15, d26
	vcge.s32	q11, q9, q12
	vsub.i32	q2, q10, q12
	vcge.s32	q14, q9, q3
	vbsl	q11, q12, q2
	vmovl.u16 q13, d27
	vsub.i32	q2, q10, q3
	vcge.s32	q12, q9, q15
	vbsl	q14, q3, q2
	vsub.i32	q3, q10, q15
	vadd.i32	q8, q11, q8
	vcge.s32	q11, q9, q13
	vbsl	q12, q15, q3
	vsub.i32	q15, q10, q13
	vadd.i32	q8, q14, q8
	vbsl	q11, q13, q15
	vadd.i32	q8, q12, q8
	vadd.i32	q8, q11, q8
	bhi	.L767
	vadd.i32	d16, d16, d17
	vmov.i32	q9, #0  @ v4si
	ldr	r9, [sp, #24]
	cmp	r5, r2
	add	lr, r6, r5
	add	r7, r0, r5
	vpadd.i32	d18, d16, d16
	add	r9, r9, r5
	vmov.32	r3, d18[0]
	beq	.L771
	rsb	r9, r5, r9
.L769:
	ldrb	r8, [lr], #1	@ zero_extendqisi2
	ldrb	r1, [r7], #1	@ zero_extendqisi2
	sub	r1, r8, r1, lsr #1
	uxtb	r1, r1
	strb	r1, [r9, r5]
	rsb	r8, r1, #256
	adds	r5, r5, #1
	cmp	r1, #127
	it	gt
	movgt	r1, r8
	cmp	r2, r5
	add	r3, r3, r1
	bhi	.L769
.L771:
	ldr	r5, [sp, #24]
	add	r0, r0, r2
	add	r5, r5, r2
	str	r5, [sp, #24]
	adds	r5, r6, r2
.L765:
	cmp	fp, r2
	bls	.L773
	ldr	r7, [sp, #24]
	mov	r1, r2
	rsb	r9, r2, r7
	b	.L776
.L984:
	cmp	fp, r1
	bls	.L773
.L776:
	ldrb	lr, [r5], #1	@ zero_extendqisi2
	ldrb	r8, [r0], #1	@ zero_extendqisi2
	ldrb	r7, [r6], #1	@ zero_extendqisi2
	add	r7, r7, r8
	sub	r7, lr, r7, lsr #1
	uxtb	r7, r7
	cmp	r7, #127
	rsb	lr, r7, #256
	it	le
	movle	lr, r7
	strb	r7, [r9, r1]
	add	r3, r3, lr
	adds	r1, r1, #1
	cmp	ip, r3
	bcs	.L984
.L773:
	ldrb	r1, [r4, #860]	@ zero_extendqisi2
	cmp	r1, #2
	beq	.L985
.L777:
	ldr	r7, [sp]
	cmp	r7, r3
	ittt	hi
	ldrhi	r5, [r4, #636]
	strhi	r3, [sp]
	strhi	r5, [sp, #16]
.L680:
	ldr	r6, [sp, #4]
	cmp	r6, #128
	bne	.L781
	ldr	r0, [r4, #640]
	add	ip, r10, #1
	ldr	r1, [sp, #8]
	adds	r7, r0, #1
	add	lr, r1, #1
	cmp	r2, #0
	beq	.L862
	add	r3, r0, #17
	add	r10, r10, #17
	cmp	ip, r3
	it	cc
	cmpcc	r7, r10
	add	r1, r1, #17
	ite	cs
	movcs	r10, #1
	movcc	r10, #0
	cmp	lr, r3
	it	cc
	cmpcc	r7, r1
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	and	r3, r10, r3
	cmp	r2, #15
	ite	ls
	movls	r3, #0
	andhi	r3, r3, #1
	cmp	r3, #0
	beq	.L783
	lsrs	r1, r2, #4
	mov	r8, r7
	mov	r6, lr
	lsls	r3, r1, #4
	mov	r5, ip
	movs	r0, #0
.L788:
	vld1.8	{q9}, [r5]!
	adds	r0, r0, #1
	cmp	r1, r0
	vld1.8	{q8}, [r6]!
	vsub.i8	q8, q9, q8
	vst1.8	{q8}, [r8]!
	bhi	.L788
	cmp	r2, r3
	add	r5, ip, r3
	add	r1, r7, r3
	add	r0, lr, r3
	beq	.L789
	ldrb	r9, [ip, r3]	@ zero_extendqisi2
	adds	r6, r3, #1
	ldrb	r8, [lr, r3]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r7, r3]
	bls	.L789
	ldrb	r9, [r5, #1]	@ zero_extendqisi2
	adds	r6, r3, #2
	ldrb	r8, [r0, #1]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #1]
	bls	.L789
	ldrb	r9, [r5, #2]	@ zero_extendqisi2
	adds	r6, r3, #3
	ldrb	r8, [r0, #2]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #2]
	bls	.L789
	ldrb	r9, [r5, #3]	@ zero_extendqisi2
	adds	r6, r3, #4
	ldrb	r8, [r0, #3]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #3]
	bls	.L789
	ldrb	r9, [r5, #4]	@ zero_extendqisi2
	adds	r6, r3, #5
	ldrb	r8, [r0, #4]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #4]
	bls	.L789
	ldrb	r9, [r5, #5]	@ zero_extendqisi2
	adds	r6, r3, #6
	ldrb	r8, [r0, #5]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #5]
	bls	.L789
	ldrb	r9, [r5, #6]	@ zero_extendqisi2
	adds	r6, r3, #7
	ldrb	r8, [r0, #6]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #6]
	bls	.L789
	ldrb	r9, [r5, #7]	@ zero_extendqisi2
	add	r6, r3, #8
	ldrb	r8, [r0, #7]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #7]
	bls	.L789
	ldrb	r9, [r5, #8]	@ zero_extendqisi2
	add	r6, r3, #9
	ldrb	r8, [r0, #8]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #8]
	bls	.L789
	ldrb	r9, [r5, #9]	@ zero_extendqisi2
	add	r6, r3, #10
	ldrb	r8, [r0, #9]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #9]
	bls	.L789
	ldrb	r9, [r5, #10]	@ zero_extendqisi2
	add	r6, r3, #11
	ldrb	r8, [r0, #10]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #10]
	bls	.L789
	ldrb	r9, [r5, #11]	@ zero_extendqisi2
	add	r6, r3, #12
	ldrb	r8, [r0, #11]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #11]
	bls	.L789
	ldrb	r9, [r5, #12]	@ zero_extendqisi2
	add	r6, r3, #13
	ldrb	r8, [r0, #12]	@ zero_extendqisi2
	cmp	r2, r6
	rsb	r8, r8, r9
	strb	r8, [r1, #12]
	bls	.L789
	ldrb	r6, [r5, #13]	@ zero_extendqisi2
	adds	r3, r3, #14
	ldrb	r8, [r0, #13]	@ zero_extendqisi2
	cmp	r2, r3
	rsb	r6, r8, r6
	strb	r6, [r1, #13]
	bls	.L789
	ldrb	r5, [r5, #14]	@ zero_extendqisi2
	ldrb	r3, [r0, #14]	@ zero_extendqisi2
	subs	r3, r5, r3
	strb	r3, [r1, #14]
.L789:
	add	r7, r7, r2
	add	r0, ip, r2
	add	r9, lr, r2
.L782:
	cmp	fp, r2
	itt	hi
	rsbhi	r2, r2, fp
	addhi	r2, r2, r0
	bls	.L971
.L794:
	ldrb	r1, [lr], #1	@ zero_extendqisi2
	ldrb	r10, [r9], #1	@ zero_extendqisi2
	ldrb	r3, [ip], #1	@ zero_extendqisi2
	rsb	r8, r1, r10
	eor	r5, r8, r8, asr #31
	subs	r6, r3, r1
	cmp	r6, #0
	sub	r5, r5, r8, asr #31
	add	r8, r8, r6
	it	lt
	rsblt	r6, r6, #0
	cmp	r8, #0
	it	lt
	rsblt	r8, r8, #0
	cmp	r5, r6
	it	le
	cmple	r5, r8
	ble	.L792
	cmp	r6, r8
	ite	gt
	movgt	r3, r1
	movle	r3, r10
.L792:
	ldrb	r1, [r0], #1	@ zero_extendqisi2
	cmp	r0, r2
	sub	r3, r1, r3
	strb	r3, [r7], #1
	bne	.L794
	b	.L971
.L972:
	cmp	r0, #0
	bne	.L653
	rsb	r8, r0, fp
	mov	r1, r0
	lsr	r6, r8, #4
	str	r0, [sp]
	lsl	ip, r6, #4
	cmp	r6, #0
	bne	.L986
	b	.L657
.L976:
	ldr	r6, [sp, #12]
	lsrs	r1, r3, #10
	movw	r5, #65472
	uxth	r3, r3
	movt	r5, 63
	ands	r5, r5, r1
	cbz	r6, .L709
	mov	r7, r6
	movs	r0, #0
	ldr	r6, [r4, #864]
	b	.L711
.L710:
	adds	r0, r0, #1
	cmp	r7, r0
	ble	.L709
.L711:
	ldrb	r1, [r6, r0]	@ zero_extendqisi2
	cmp	r1, #1
	bne	.L710
	ldr	r1, [r4, #872]
	ldrh	r1, [r1, r0, lsl #1]
	mul	r3, r3, r1
	mul	r5, r5, r1
	lsrs	r3, r3, #8
	lsrs	r5, r5, #8
	b	.L710
.L709:
	ldr	r1, [r4, #880]
	movw	r0, #65472
	movt	r0, 63
	ldrh	r6, [r1, #2]
	mul	r1, r6, r5
	lsrs	r1, r1, #3
	cmp	r1, r0
	itett	ls
	mulls	r3, r6, r3
	mvnhi	r3, #-2147483648
	lsrls	r3, r3, #3
	addls	r3, r3, r1, lsl #10
	b	.L708
.L983:
	ldr	r6, [sp]
	movw	r0, #65472
	movt	r0, 63
	lsrs	r3, r6, #10
	uxth	r5, r6
	ldr	r6, [sp, #12]
	ands	r0, r0, r3
	cbz	r6, .L762
	mov	r7, r6
	movs	r1, #0
	ldr	r6, [r4, #864]
	b	.L764
.L763:
	adds	r1, r1, #1
	cmp	r7, r1
	ble	.L762
.L764:
	ldrb	r3, [r6, r1]	@ zero_extendqisi2
	cmp	r3, #3
	bne	.L763
	ldr	r3, [r4, #872]
	ldrh	r3, [r3, r1, lsl #1]
	mul	r5, r5, r3
	mul	r0, r0, r3
	lsrs	r5, r5, #8
	lsrs	r0, r0, #8
	b	.L763
.L762:
	ldr	r3, [r4, #880]
	movw	r1, #65472
	movt	r1, 63
	ldrh	r3, [r3, #6]
	mul	r0, r3, r0
	lsrs	r0, r0, #3
	cmp	r0, r1
	itett	ls
	mulls	r3, r3, r5
	mvnhi	ip, #-2147483648
	lsrls	ip, r3, #3
	addls	ip, ip, r0, lsl #10
	b	.L761
.L979:
	ldr	r6, [sp, #12]
	lsrs	r3, r1, #10
	movw	r5, #65472
	uxth	r1, r1
	movt	r5, 63
	ands	r5, r5, r3
	cbz	r6, .L735
	mov	r7, r6
	movs	r0, #0
	ldr	r6, [r4, #864]
	b	.L737
.L736:
	adds	r0, r0, #1
	cmp	r7, r0
	ble	.L735
.L737:
	ldrb	r3, [r6, r0]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L736
	ldr	r3, [r4, #868]
	ldrh	r3, [r3, r0, lsl #1]
	mul	r1, r1, r3
	mul	r5, r5, r3
	lsrs	r1, r1, #8
	lsrs	r5, r5, #8
	b	.L736
.L735:
	ldr	r3, [r4, #876]
	movw	r0, #65472
	movt	r0, 63
	ldrh	r3, [r3, #4]
	mul	r5, r3, r5
	lsrs	r5, r5, #3
	cmp	r5, r0
	itett	ls
	mulls	r1, r3, r1
	mvnhi	r1, #-2147483648
	lsrls	r1, r1, #3
	addls	r1, r1, r5, lsl #10
	b	.L734
.L985:
	ldr	r6, [sp, #12]
	lsrs	r1, r3, #10
	movw	r5, #65472
	uxth	r3, r3
	movt	r5, 63
	ands	r5, r5, r1
	cbz	r6, .L778
	mov	lr, r6
	ldr	r6, [r4, #864]
	movs	r0, #0
.L780:
	ldrb	r1, [r6, r0]	@ zero_extendqisi2
	cbnz	r1, .L779
	ldr	r7, [r4, #868]
	ldrh	r1, [r7, r0, lsl #1]
	mul	r3, r3, r1
	mul	r5, r5, r1
	lsrs	r3, r3, #8
	lsrs	r5, r5, #8
.L779:
	adds	r0, r0, #1
	cmp	lr, r0
	bgt	.L780
.L778:
	ldr	r1, [r4, #876]
	movw	r0, #65472
	movt	r0, 63
	ldrh	r1, [r1, #6]
	mul	r5, r1, r5
	lsrs	r5, r5, #3
	cmp	r5, r0
	itett	ls
	mulls	r3, r1, r3
	mvnhi	r3, #-2147483648
	lsrls	r3, r3, #3
	addls	r3, r3, r5, lsl #10
	b	.L777
.L974:
	ldr	r7, [sp]
	movw	r0, #65472
	ldr	r6, [sp, #12]
	movt	r0, 63
	lsrs	r3, r7, #10
	uxth	r5, r7
	ands	r0, r0, r3
	cbz	r6, .L692
	mov	r7, r6
	movs	r1, #0
	ldr	r6, [r4, #864]
	b	.L694
.L693:
	adds	r1, r1, #1
	cmp	r7, r1
	ble	.L692
.L694:
	ldrb	r3, [r6, r1]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L693
	ldr	r3, [r4, #872]
	ldrh	r3, [r3, r1, lsl #1]
	mul	r5, r5, r3
	mul	r0, r0, r3
	lsrs	r5, r5, #8
	lsrs	r0, r0, #8
	b	.L693
.L692:
	ldr	r3, [r4, #880]
	movw	r6, #65472
	movt	r6, 63
	ldrh	r1, [r3, #2]
	mul	r3, r1, r0
	lsrs	r3, r3, #3
	cmp	r3, r6
	itett	ls
	mulls	r1, r1, r5
	mvnhi	r1, #-2147483648
	lsrls	r1, r1, #3
	addls	r1, r1, r3, lsl #10
	b	.L691
.L978:
	ldr	r7, [sp]
	movw	r0, #65472
	ldr	r1, [sp, #12]
	movt	r0, 63
	lsrs	r3, r7, #10
	uxth	r6, r7
	ands	r0, r0, r3
	cbz	r1, .L725
	mov	lr, r1
	ldr	r7, [r4, #864]
	movs	r1, #0
	b	.L727
.L726:
	adds	r1, r1, #1
	cmp	lr, r1
	ble	.L725
.L727:
	ldrb	r3, [r7, r1]	@ zero_extendqisi2
	cmp	r3, #2
	bne	.L726
	ldr	r3, [r4, #872]
	ldrh	r3, [r3, r1, lsl #1]
	mul	r6, r6, r3
	mul	r0, r0, r3
	lsrs	r6, r6, #8
	lsrs	r0, r0, #8
	b	.L726
.L725:
	ldr	r3, [r4, #880]
	movw	r1, #65472
	movt	r1, 63
	ldrh	r3, [r3, #4]
	mul	r0, r3, r0
	lsrs	r0, r0, #3
	cmp	r0, r1
	itett	ls
	mulls	r3, r3, r6
	mvnhi	lr, #-2147483648
	lsrls	lr, r3, #3
	addls	lr, lr, r0, lsl #10
	b	.L724
.L696:
	mov	r5, r10
	add	lr, r2, r10
.L703:
	ldrb	r0, [r5, #1]!	@ zero_extendqisi2
	rsb	r7, r0, #256
	strb	r0, [r6, #1]!
	cmp	r0, #127
	it	gt
	movgt	r0, r7
	cmp	r5, lr
	add	r3, r3, r0
	bne	.L703
	b	.L702
.L766:
	mov	lr, r1
	ldr	r1, [sp, #8]
	add	r9, r2, #1
	mov	r5, r0
	mov	r7, r6
	add	r9, r9, r1
.L772:
	ldrb	r1, [r5], #1	@ zero_extendqisi2
	ldrb	r8, [r7], #1	@ zero_extendqisi2
	sub	r1, r8, r1, lsr #1
	uxtb	r1, r1
	rsb	r8, r1, #256
	strb	r1, [lr, #1]!
	cmp	r1, #127
	it	gt
	movgt	r1, r8
	cmp	r5, r9
	add	r3, r3, r1
	bne	.L772
	b	.L771
.L869:
	movs	r1, #1
	b	.L819
.L982:
	ldr	r6, [sp, #12]
	lsrs	r2, r3, #10
	movw	r5, #65472
	uxth	r3, r3
	movt	r5, 63
	ands	r5, r5, r2
	cbz	r6, .L813
	ldr	r0, [r4, #864]
	movs	r2, #0
	b	.L815
.L814:
	adds	r2, r2, #1
	cmp	r6, r2
	ble	.L813
.L815:
	ldrb	r1, [r0, r2]	@ zero_extendqisi2
	cmp	r1, #4
	bne	.L814
	ldr	r7, [r4, #868]
	ldrh	r1, [r7, r2, lsl #1]
	mul	r3, r3, r1
	mul	r5, r5, r1
	lsrs	r3, r3, #8
	lsrs	r5, r5, #8
	b	.L814
.L813:
	ldr	r2, [r4, #876]
	movw	r1, #65472
	movt	r1, 63
	ldrh	r0, [r2, #8]
	mul	r2, r0, r5
	lsrs	r2, r2, #3
	cmp	r2, r1
	itett	ls
	mulls	r3, r0, r3
	mvnhi	r3, #-2147483648
	lsrls	r3, r3, #3
	addls	r3, r3, r2, lsl #10
	b	.L812
.L980:
	ldr	r7, [sp]
	movw	r0, #65472
	ldr	r6, [sp, #12]
	movt	r0, 63
	lsrs	r3, r7, #10
	uxth	r5, r7
	ands	r0, r0, r3
	cbz	r6, .L796
	mov	r7, r6
	movs	r1, #0
	ldr	r6, [r4, #864]
	b	.L798
.L797:
	adds	r1, r1, #1
	cmp	r7, r1
	ble	.L796
.L798:
	ldrb	r3, [r6, r1]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L797
	ldr	r3, [r4, #872]
	ldrh	r3, [r3, r1, lsl #1]
	mul	r5, r5, r3
	mul	r0, r0, r3
	lsrs	r5, r5, #8
	lsrs	r0, r0, #8
	b	.L797
.L796:
	ldr	r3, [r4, #880]
	movw	r1, #65472
	movt	r1, 63
	ldrh	r6, [r3, #8]
	mul	r3, r6, r0
	lsrs	r3, r3, #3
	cmp	r3, r1
	itt	hi
	mvnhi	r8, #-2147483648
	strhi	r8, [sp, #4]
	bhi	.L795
	mul	r1, r6, r5
	lsrs	r1, r1, #3
	add	r1, r1, r3, lsl #10
	str	r1, [sp, #4]
	b	.L795
.L749:
	mov	lr, r8
	add	lr, lr, r3
.L760:
	ldrb	r7, [r3], #1	@ zero_extendqisi2
	ldrb	r2, [r1], #1	@ zero_extendqisi2
	ldrb	r6, [r0], #1	@ zero_extendqisi2
	cmp	r3, lr
	add	r2, r2, r7
	sub	r2, r6, r2, lsr #1
	strb	r2, [r5], #1
	bne	.L760
	b	.L755
.L681:
	negs	r5, r2
	mov	r6, r10
	add	r3, r3, r5
	add	r0, r0, r5
	mov	r1, r2
.L690:
	ldrb	r7, [r0, r1]	@ zero_extendqisi2
	ldrb	r5, [r6, #1]!	@ zero_extendqisi2
	subs	r5, r7, r5
	strb	r5, [r3, r1]
	adds	r1, r1, #1
	cmp	r1, fp
	bne	.L690
	b	.L687
.L740:
	ldr	r6, [sp, #8]
	add	r8, r2, #1
	mov	r0, r3
	add	r8, r8, r6
	mov	r6, r1
.L747:
	ldrb	lr, [r0], #1	@ zero_extendqisi2
	ldrb	ip, [r6], #1	@ zero_extendqisi2
	cmp	r0, r8
	sub	lr, ip, lr, lsr #1
	strb	lr, [r7, #1]!
	bne	.L747
	b	.L746
.L783:
	ldr	r3, [sp, #8]
	adds	r6, r2, #1
	mov	r1, ip
	add	r6, r6, r3
	mov	r3, lr
.L790:
	ldrb	r5, [r3], #1	@ zero_extendqisi2
	ldrb	r8, [r1], #1	@ zero_extendqisi2
	cmp	r3, r6
	rsb	r5, r5, r8
	strb	r5, [r0, #1]!
	bne	.L790
	b	.L789
.L671:
	mov	r0, r10
	add	r7, r2, r10
.L678:
	ldrb	r6, [r0, #1]!	@ zero_extendqisi2
	cmp	r0, r7
	strb	r6, [r5, #1]!
	bne	.L678
	b	.L677
.L714:
	ldr	r6, [sp, #8]
	add	r5, fp, #1
	movs	r3, #1
.L721:
	ldrb	r0, [r10, r3]	@ zero_extendqisi2
	ldrb	r1, [r6, r3]	@ zero_extendqisi2
	subs	r1, r0, r1
	strb	r1, [r2, r3]
	adds	r3, r3, #1
	cmp	r3, r5
	bne	.L721
	b	.L720
.L828:
	movs	r1, #2
	b	.L655
.L829:
	movs	r1, #3
	b	.L655
.L830:
	movs	r1, #4
	b	.L655
.L831:
	movs	r1, #5
	b	.L655
.L832:
	movs	r1, #6
	b	.L655
.L833:
	movs	r1, #7
	b	.L655
.L834:
	movs	r1, #8
	b	.L655
.L835:
	movs	r1, #9
	b	.L655
.L836:
	movs	r1, #10
	b	.L655
.L837:
	movs	r1, #11
	b	.L655
.L838:
	movs	r1, #12
	b	.L655
.L839:
	movs	r1, #13
	b	.L655
.L840:
	movs	r1, #14
	b	.L655
.L841:
	movs	r1, #15
	b	.L655
.L827:
	movs	r1, #1
	b	.L655
.L800:
	ldr	r0, [sp, #8]
	add	lr, r2, #1
	mov	r5, r8
	add	lr, lr, r0
	mov	r0, ip
.L806:
	ldrb	r7, [r5], #1	@ zero_extendqisi2
	ldrb	r1, [r0], #1	@ zero_extendqisi2
	subs	r1, r7, r1
	uxtb	r1, r1
	rsb	r7, r1, #256
	strb	r1, [r6, #1]!
	cmp	r1, #127
	it	gt
	movgt	r1, r7
	cmp	r0, lr
	add	r3, r3, r1
	bne	.L806
	b	.L805
.L860:
	mov	r5, r6
	mov	r3, r2
	b	.L765
.L824:
	str	fp, [sp]
	b	.L652
.L848:
	mov	r3, r2
	b	.L695
.L862:
	mov	r9, lr
	mov	r0, ip
	b	.L782
.L856:
	mov	r0, r1
	b	.L739
.L844:
	mov	lr, r2
	mov	r0, r1
	b	.L670
.L851:
	str	r2, [sp, #16]
	b	.L722
.L866:
	mov	r9, ip
	mov	r10, r8
	mov	r3, r2
	b	.L799
.L842:
	vmov.i32	q10, #0  @ v4si
	mov	r7, r0
	movs	r5, #0
	b	.L658
.L854:
	mov	r1, fp
	b	.L728
.L857:
	mov	r6, r5
	mov	r7, r1
	mov	lr, r3
	mov	ip, r0
	mov	r9, #0
	b	.L751
	.size	png_write_find_filter, .-png_write_find_filter
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
.LC0:
	.byte	-119
	.byte	80
	.byte	78
	.byte	71
	.byte	13
	.byte	10
	.byte	26
	.byte	10
	.section	.rodata.png_pass_start.9102,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	png_pass_start.9102, %object
	.size	png_pass_start.9102, 7
png_pass_start.9102:
	.byte	0
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.section	.rodata.png_pass_ystart.9104,"a",%progbits
	.align	3
.LANCHOR4 = . + 0
	.type	png_pass_ystart.9104, %object
	.size	png_pass_ystart.9104, 7
png_pass_ystart.9104:
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.section	.rodata.png_pass_start.9113,"a",%progbits
	.align	3
.LANCHOR5 = . + 0
	.type	png_pass_start.9113, %object
	.size	png_pass_start.9113, 7
png_pass_start.9113:
	.byte	0
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.section	.rodata.png_pass_yinc.9105,"a",%progbits
	.align	3
.LANCHOR3 = . + 0
	.type	png_pass_yinc.9105, %object
	.size	png_pass_yinc.9105, 7
png_pass_yinc.9105:
	.byte	8
	.byte	8
	.byte	8
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.section	.rodata.png_pass_inc.9103,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	png_pass_inc.9103, %object
	.size	png_pass_inc.9103, 7
png_pass_inc.9103:
	.byte	8
	.byte	8
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	" using zstream\000"
	.space	1
.LC2:
	.ascii	"in use by IDAT\000"
	.space	1
.LC3:
	.ascii	"deflateEnd failed (ignored)\000"
.LC4:
	.ascii	"1.2.8\000"
	.space	2
.LC5:
	.ascii	"keyword truncated\000"
	.space	2
.LC6:
	.ascii	"keyword \"@1\": bad character '0x@2'\000"
	.space	1
.LC7:
	.ascii	"compressed data too long\000"
	.space	3
.LC8:
	.ascii	"length exceeds PNG maxima\000"
	.space	2
.LC9:
	.ascii	"Invalid bit depth for grayscale image\000"
	.space	2
.LC10:
	.ascii	"Invalid bit depth for RGB image\000"
.LC11:
	.ascii	"Invalid bit depth for paletted image\000"
	.space	3
.LC12:
	.ascii	"Invalid bit depth for grayscale+alpha image\000"
.LC13:
	.ascii	"Invalid bit depth for RGBA image\000"
	.space	3
.LC14:
	.ascii	"Invalid image color type specified\000"
	.space	1
.LC15:
	.ascii	"Invalid compression type specified\000"
	.space	1
.LC16:
	.ascii	"Invalid filter type specified\000"
	.space	2
.LC17:
	.ascii	"Invalid interlace type specified\000"
	.space	3
.LC18:
	.ascii	"Invalid number of colors in palette\000"
.LC19:
	.ascii	"Ignoring request to write a PLTE chunk in grayscale"
	.ascii	" PNG\000"
.LC20:
	.ascii	"Z_OK on Z_FINISH with output space\000"
	.space	1
.LC21:
	.ascii	"Invalid sRGB rendering intent specified\000"
.LC22:
	.ascii	"No profile for iCCP chunk\000"
	.space	2
.LC23:
	.ascii	"ICC profile too short\000"
	.space	2
.LC24:
	.ascii	"ICC profile length invalid (not a multiple of 4)\000"
	.space	3
.LC25:
	.ascii	"iCCP: invalid keyword\000"
	.space	2
.LC26:
	.ascii	"error writing ancillary chunked compressed data\000"
.LC27:
	.ascii	"sPLT: invalid keyword\000"
	.space	2
.LC28:
	.ascii	"Invalid sBIT depth specified\000"
	.space	3
.LC29:
	.ascii	"Invalid number of transparent colors specified\000"
	.space	1
.LC30:
	.ascii	"Ignoring attempt to write tRNS chunk out-of-range f"
	.ascii	"or bit_depth\000"
.LC31:
	.ascii	"Ignoring attempt to write 16-bit tRNS chunk when bi"
	.ascii	"t_depth is 8\000"
.LC32:
	.ascii	"Can't write tRNS with an alpha channel\000"
	.space	1
.LC33:
	.ascii	"Invalid background palette index\000"
	.space	3
.LC34:
	.ascii	"Ignoring attempt to write 16-bit bKGD chunk when bi"
	.ascii	"t_depth is 8\000"
.LC35:
	.ascii	"Ignoring attempt to write bKGD chunk out-of-range f"
	.ascii	"or bit_depth\000"
.LC36:
	.ascii	"Invalid number of histogram entries specified\000"
	.space	2
.LC37:
	.ascii	"tEXt: invalid keyword\000"
	.space	2
.LC38:
	.ascii	"tEXt: text too long\000"
.LC39:
	.ascii	"zTXt: invalid compression type\000"
	.space	1
.LC40:
	.ascii	"zTXt: invalid keyword\000"
	.space	2
.LC41:
	.ascii	"\000"
	.space	3
.LC42:
	.ascii	"iTXt: invalid keyword\000"
	.space	2
.LC43:
	.ascii	"iTXt: invalid compression\000"
	.space	2
.LC44:
	.ascii	"iTXt: uncompressed text too long\000"
	.space	3
.LC45:
	.ascii	"Unrecognized unit type for oFFs chunk\000"
	.space	2
.LC46:
	.ascii	"Unrecognized equation type for pCAL chunk\000"
	.space	2
.LC47:
	.ascii	"pCAL: invalid keyword\000"
	.space	2
.LC48:
	.ascii	"Can't write sCAL (buffer too small)\000"
.LC49:
	.ascii	"Unrecognized unit type for pHYs chunk\000"
	.space	2
.LC50:
	.ascii	"Invalid time specified for tIME chunk\000"
	.section	.rodata.png_pass_inc.9114,"a",%progbits
	.align	3
.LANCHOR6 = . + 0
	.type	png_pass_inc.9114, %object
	.size	png_pass_inc.9114, 7
png_pass_inc.9114:
	.byte	8
	.byte	8
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	1
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
