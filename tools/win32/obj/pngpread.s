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
	.file	"pngpread.c"
	.section	.text.png_push_fill_buffer,"ax",%progbits
	.align	2
	.global	png_push_fill_buffer
	.thumb
	.thumb_func
	.type	png_push_fill_buffer, %function
png_push_fill_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r0, .L1
	ldr	r6, [r0, #828]
	mov	r3, r1
	mov	r5, r2
	cbnz	r6, .L17
.L4:
	cbz	r5, .L1
	ldr	r2, [r4, #840]
	cbz	r2, .L1
	cmp	r5, r2
	mov	r0, r3
	it	cs
	movcs	r5, r2
	ldr	r1, [r4, #812]
	mov	r2, r5
	bl	memcpy(PLT)
	ldr	r1, [r4, #836]
	ldr	r2, [r4, #840]
	ldr	r3, [r4, #812]
	subs	r1, r1, r5
	subs	r2, r2, r5
	str	r1, [r4, #836]
	add	r5, r5, r3
	str	r2, [r4, #840]
	str	r5, [r4, #812]
.L1:
	pop	{r4, r5, r6, pc}
.L17:
	cmp	r6, r2
	mov	r0, r1
	it	cs
	movcs	r6, r2
	ldr	r1, [r4, #804]
	mov	r2, r6
	subs	r5, r5, r6
	bl	memcpy(PLT)
	ldr	r1, [r4, #828]
	mov	r3, r0
	ldr	r2, [r4, #804]
	add	r3, r3, r6
	ldr	r0, [r4, #836]
	subs	r1, r1, r6
	str	r1, [r4, #828]
	subs	r0, r0, r6
	add	r6, r6, r2
	str	r0, [r4, #836]
	str	r6, [r4, #804]
	b	.L4
	.size	png_push_fill_buffer, .-png_push_fill_buffer
	.section	.text.png_process_data_skip,"ax",%progbits
	.align	2
	.global	png_process_data_skip
	.thumb
	.thumb_func
	.type	png_process_data_skip, %function
png_process_data_skip:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r3, r0
	cbz	r0, .L22
	ldr	r2, [r0, #844]
	cmp	r2, #3
	it	ne
	movne	r2, #0
	beq	.L28
.L19:
	mov	r0, r2
	pop	{r3, pc}
.L28:
	ldr	r2, [r0, #824]
	cmp	r2, #0
	beq	.L19
	ldr	r1, [r0, #836]
	cbnz	r1, .L29
	ldr	r1, [r0, #828]
	cbnz	r1, .L30
	movs	r0, #1
	str	r1, [r3, #824]
	str	r0, [r3, #844]
	mov	r0, r2
	pop	{r3, pc}
.L22:
	mov	r2, r0
	mov	r0, r2
	pop	{r3, pc}
.L30:
	ldr	r1, .L31
.LPIC1:
	add	r1, pc
	bl	png_error(PLT)
.L29:
	ldr	r1, .L31+4
.LPIC0:
	add	r1, pc
	bl	png_error(PLT)
.L32:
	.align	2
.L31:
	.word	.LC1-(.LPIC1+4)
	.word	.LC0-(.LPIC0+4)
	.size	png_process_data_skip, .-png_process_data_skip
	.section	.text.png_push_read_sig,"ax",%progbits
	.align	2
	.global	png_push_read_sig
	.thumb
	.thumb_func
	.type	png_push_read_sig, %function
png_push_read_sig:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r0
	ldrb	r6, [r0, #681]	@ zero_extendqisi2
	add	r7, r1, #32
	ldr	r3, [r0, #836]
	rsb	r4, r6, #8
	add	r2, r6, #32
	add	r1, r1, r2
	cmp	r4, r3
	it	cs
	movcs	r4, r3
	mov	r2, r4
	bl	png_push_fill_buffer(PLT)
	ldrb	r3, [r5, #681]	@ zero_extendqisi2
	mov	r2, r4
	mov	r0, r7
	mov	r1, r6
	add	r3, r3, r4
	strb	r3, [r5, #681]
	bl	png_sig_cmp(PLT)
	cbz	r0, .L34
	cmp	r6, #3
	bhi	.L35
	mov	r0, r7
	mov	r1, r6
	subs	r2, r4, #4
	bl	png_sig_cmp(PLT)
	cbnz	r0, .L41
.L35:
	ldr	r1, .L42
	mov	r0, r5
.LPIC3:
	add	r1, pc
	bl	png_error(PLT)
.L34:
	ldrb	r3, [r5, #681]	@ zero_extendqisi2
	cmp	r3, #7
	itt	hi
	movhi	r3, #1
	strhi	r3, [r5, #844]
	pop	{r3, r4, r5, r6, r7, pc}
.L41:
	ldr	r1, .L42+4
	mov	r0, r5
.LPIC2:
	add	r1, pc
	bl	png_error(PLT)
.L43:
	.align	2
.L42:
	.word	.LC3-(.LPIC3+4)
	.word	.LC2-(.LPIC2+4)
	.size	png_push_read_sig, .-png_push_read_sig
	.section	.text.png_push_crc_skip,"ax",%progbits
	.align	2
	.global	png_push_crc_skip
	.thumb
	.thumb_func
	.type	png_push_crc_skip, %function
png_push_crc_skip:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #3
	str	r1, [r0, #824]
	str	r3, [r0, #844]
	bx	lr
	.size	png_push_crc_skip, .-png_push_crc_skip
	.section	.text.png_push_save_buffer,"ax",%progbits
	.align	2
	.global	png_push_save_buffer
	.thumb
	.thumb_func
	.type	png_push_save_buffer, %function
png_push_save_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, [r0, #828]
	cmp	r3, #0
	beq	.L46
	ldr	r6, [r0, #804]
	ldr	r2, [r0, #808]
	cmp	r6, r2
	beq	.L46
	add	r1, r6, #16
	add	r0, r2, #16
	cmp	r6, r0
	it	cc
	cmpcc	r2, r1
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	cmp	r3, #15
	ite	ls
	movls	r1, #0
	andhi	r1, r1, #1
	cmp	r1, #0
	beq	.L47
	lsrs	r0, r3, #4
	mov	lr, r6
	mov	r7, r2
	lsls	r1, r0, #4
	movs	r5, #0
.L52:
	adds	r5, r5, #1
	vld1.8	{q8}, [lr]!
	cmp	r5, r0
	vst1.8	{q8}, [r7]!
	bcc	.L52
	cmp	r3, r1
	add	r5, r6, r1
	add	r0, r2, r1
	beq	.L53
	ldrb	r7, [r6, r1]	@ zero_extendqisi2
	adds	r6, r1, #1
	cmp	r3, r6
	strb	r7, [r2, r1]
	bls	.L53
	ldrb	r6, [r5, #1]	@ zero_extendqisi2
	adds	r2, r1, #2
	cmp	r3, r2
	strb	r6, [r0, #1]
	bls	.L53
	ldrb	r6, [r5, #2]	@ zero_extendqisi2
	adds	r2, r1, #3
	cmp	r3, r2
	strb	r6, [r0, #2]
	bls	.L53
	ldrb	r6, [r5, #3]	@ zero_extendqisi2
	adds	r2, r1, #4
	cmp	r3, r2
	strb	r6, [r0, #3]
	bls	.L53
	ldrb	r6, [r5, #4]	@ zero_extendqisi2
	adds	r2, r1, #5
	cmp	r3, r2
	strb	r6, [r0, #4]
	bls	.L53
	ldrb	r6, [r5, #5]	@ zero_extendqisi2
	adds	r2, r1, #6
	cmp	r3, r2
	strb	r6, [r0, #5]
	bls	.L53
	ldrb	r6, [r5, #6]	@ zero_extendqisi2
	adds	r2, r1, #7
	cmp	r3, r2
	strb	r6, [r0, #6]
	bls	.L53
	ldrb	r6, [r5, #7]	@ zero_extendqisi2
	add	r2, r1, #8
	cmp	r3, r2
	strb	r6, [r0, #7]
	bls	.L53
	ldrb	r6, [r5, #8]	@ zero_extendqisi2
	add	r2, r1, #9
	cmp	r3, r2
	strb	r6, [r0, #8]
	bls	.L53
	ldrb	r6, [r5, #9]	@ zero_extendqisi2
	add	r2, r1, #10
	cmp	r3, r2
	strb	r6, [r0, #9]
	bls	.L53
	ldrb	r6, [r5, #10]	@ zero_extendqisi2
	add	r2, r1, #11
	cmp	r3, r2
	strb	r6, [r0, #10]
	bls	.L53
	ldrb	r6, [r5, #11]	@ zero_extendqisi2
	add	r2, r1, #12
	cmp	r3, r2
	strb	r6, [r0, #11]
	bls	.L53
	ldrb	r6, [r5, #12]	@ zero_extendqisi2
	add	r2, r1, #13
	cmp	r3, r2
	strb	r6, [r0, #12]
	bls	.L53
	ldrb	r2, [r5, #13]	@ zero_extendqisi2
	adds	r1, r1, #14
	cmp	r3, r1
	strb	r2, [r0, #13]
	itt	hi
	ldrbhi	r3, [r5, #14]	@ zero_extendqisi2
	strbhi	r3, [r0, #14]
.L53:
	ldr	r3, [r4, #828]
.L46:
	ldr	r2, [r4, #840]
	ldr	r0, [r4, #832]
	adds	r1, r3, r2
	cmp	r1, r0
	bls	.L55
	add	r2, r2, #256
	mvns	r2, r2
	cmp	r2, r3
	bcc	.L68
	ldr	r5, [r4, #808]
	add	r6, r1, #256
	mov	r1, r6
	mov	r0, r4
	bl	png_malloc_warn(PLT)
	mov	r1, r5
	str	r0, [r4, #808]
	cbz	r0, .L69
	ldr	r2, [r4, #828]
	bl	memcpy(PLT)
	mov	r0, r4
	mov	r1, r5
	bl	png_free(PLT)
	ldr	r2, [r4, #840]
	str	r6, [r4, #832]
.L55:
	cbz	r2, .L58
	ldr	r3, [r4, #828]
	ldr	r0, [r4, #808]
	ldr	r1, [r4, #812]
	add	r0, r0, r3
	bl	memcpy(PLT)
	ldr	r3, [r4, #828]
	movs	r1, #0
	ldr	r2, [r4, #840]
	str	r1, [r4, #840]
	add	r3, r3, r2
	str	r3, [r4, #828]
.L58:
	ldr	r3, [r4, #808]
	movs	r2, #0
	str	r2, [r4, #836]
	str	r3, [r4, #804]
	pop	{r3, r4, r5, r6, r7, pc}
.L47:
	subs	r6, r6, #1
	add	r3, r3, r2
.L54:
	ldrb	r1, [r6, #1]!	@ zero_extendqisi2
	strb	r1, [r2], #1
	cmp	r2, r3
	bne	.L54
	b	.L53
.L68:
	ldr	r1, .L70
	mov	r0, r4
.LPIC12:
	add	r1, pc
	bl	png_error(PLT)
.L69:
	mov	r0, r4
	bl	png_free(PLT)
	ldr	r1, .L70+4
	mov	r0, r4
.LPIC13:
	add	r1, pc
	bl	png_error(PLT)
.L71:
	.align	2
.L70:
	.word	.LC4-(.LPIC12+4)
	.word	.LC5-(.LPIC13+4)
	.size	png_push_save_buffer, .-png_push_save_buffer
	.section	.text.png_process_data_pause,"ax",%progbits
	.align	2
	.global	png_process_data_pause
	.thumb
	.thumb_func
	.type	png_process_data_pause, %function
png_process_data_pause:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L80
	push	{r3, lr}
	cbnz	r1, .L81
	mov	r3, r0
	ldr	r2, [r3, #828]
	ldr	r0, [r0, #836]
	str	r1, [r3, #836]
	cmp	r0, r2
	bls	.L79
	subs	r0, r0, r2
	pop	{r3, pc}
.L81:
	bl	png_push_save_buffer(PLT)
.L79:
	movs	r0, #0
	pop	{r3, pc}
.L80:
	movs	r0, #0
	bx	lr
	.size	png_process_data_pause, .-png_process_data_pause
	.section	.text.png_push_crc_finish,"ax",%progbits
	.align	2
	.global	png_push_crc_finish
	.thumb
	.thumb_func
	.type	png_push_crc_finish, %function
png_push_crc_finish:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0, #824]
	cbnz	r3, .L98
	ldr	r1, [r0, #836]
.L89:
	cmp	r1, #3
	mov	r0, r4
	bls	.L101
	movs	r1, #0
	bl	png_crc_finish(PLT)
	movs	r3, #1
	str	r3, [r4, #844]
.L82:
	pop	{r3, r4, r5, pc}
.L98:
	ldr	r5, [r0, #828]
	cbz	r5, .L84
	cmp	r5, r3
	ldr	r1, [r0, #804]
	it	cs
	movcs	r5, r3
	mov	r2, r5
	bl	png_calculate_crc(PLT)
	ldr	r3, [r4, #824]
	ldr	r1, [r4, #836]
	ldr	r0, [r4, #828]
	ldr	r2, [r4, #804]
	subs	r3, r3, r5
	subs	r1, r1, r5
	str	r3, [r4, #824]
	subs	r0, r0, r5
	str	r1, [r4, #836]
	add	r5, r5, r2
	str	r0, [r4, #828]
	str	r5, [r4, #804]
	cmp	r3, #0
	beq	.L89
.L84:
	ldr	r5, [r4, #840]
	cmp	r5, #0
	beq	.L82
	cmp	r5, r3
	mov	r0, r4
	it	cs
	movcs	r5, r3
	ldr	r1, [r4, #812]
	mov	r2, r5
	bl	png_calculate_crc(PLT)
	ldr	r2, [r4, #824]
	ldr	r1, [r4, #836]
	ldr	r0, [r4, #840]
	ldr	r3, [r4, #812]
	subs	r2, r2, r5
	subs	r1, r1, r5
	str	r2, [r4, #824]
	subs	r0, r0, r5
	str	r1, [r4, #836]
	add	r3, r3, r5
	str	r0, [r4, #840]
	str	r3, [r4, #812]
	cmp	r2, #0
	beq	.L89
	pop	{r3, r4, r5, pc}
.L101:
	pop	{r3, r4, r5, lr}
	b	png_push_save_buffer(PLT)
	.size	png_push_crc_finish, .-png_push_crc_finish
	.section	.text.png_push_restore_buffer,"ax",%progbits
	.align	2
	.global	png_push_restore_buffer
	.thumb
	.thumb_func
	.type	png_push_restore_buffer, %function
png_push_restore_buffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #828]
	str	r2, [r0, #840]
	str	r1, [r0, #816]
	add	r2, r2, r3
	str	r1, [r0, #812]
	str	r2, [r0, #836]
	bx	lr
	.size	png_push_restore_buffer, .-png_push_restore_buffer
	.global	__aeabi_uidiv
	.section	.text.png_read_push_finish_row,"ax",%progbits
	.align	2
	.global	png_read_push_finish_row
	.thumb
	.thumb_func
	.type	png_read_push_finish_row, %function
png_read_push_finish_row:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #612]
	ldr	r2, [r0, #596]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r5, r0
	adds	r3, r3, #1
	cmp	r3, r2
	str	r3, [r0, #612]
	bcc	.L103
	ldrb	r3, [r0, #672]	@ zero_extendqisi2
	cbnz	r3, .L129
.L103:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L129:
	ldr	r2, [r0, #604]
	movs	r1, #0
	str	r1, [r0, #612]
	ldr	r8, .L134
	adds	r2, r2, #1
	ldr	r0, [r0, #620]
	ldr	r7, .L134+4
	ldr	r10, .L134+8
.LPIC14:
	add	r8, pc
	ldr	r9, .L134+12
	bl	memset(PLT)
	ldrb	r2, [r5, #673]	@ zero_extendqisi2
.LPIC15:
	add	r7, pc
.LPIC16:
	add	r10, pc
.LPIC17:
	add	r9, pc
.L106:
	adds	r4, r2, #1
	uxtb	r4, r4
	cmp	r4, #1
	beq	.L130
	cmp	r4, #3
	beq	.L131
	cmp	r4, #5
	beq	.L132
	cmp	r4, #7
	bls	.L113
.L133:
	subs	r4, r4, #1
	uxtb	r4, r4
.L128:
	strb	r4, [r5, #673]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L130:
	ldr	r3, [r5, #588]
	cmp	r3, #4
	bhi	.L109
.L108:
	adds	r4, r2, #2
	uxtb	r4, r4
	cmp	r4, #7
	bhi	.L133
.L113:
	cmp	r4, #6
	bhi	.L128
	ldr	r3, [r5, #588]
.L109:
	ldrb	r1, [r8, r4]	@ zero_extendqisi2
	subs	r3, r3, #1
	ldrb	r0, [r7, r4]	@ zero_extendqisi2
	add	r3, r3, r1
	subs	r0, r3, r0
	bl	__aeabi_uidiv(PLT)
	ldr	r3, [r5, #456]
	mov	r6, r0
	str	r0, [r5, #608]
	lsls	r3, r3, #30
	bmi	.L128
	ldr	r3, [r5, #592]
	ldrb	r1, [r10, r4]	@ zero_extendqisi2
	ldrb	r0, [r9, r4]	@ zero_extendqisi2
	subs	r3, r3, #1
	add	r3, r3, r1
	subs	r0, r3, r0
	bl	__aeabi_uidiv(PLT)
	str	r0, [r5, #596]
	cbz	r6, .L116
	cmp	r0, #0
	bne	.L128
.L116:
	mov	r2, r4
	b	.L106
.L131:
	ldr	r3, [r5, #588]
	cmp	r3, #2
	bls	.L108
	b	.L109
.L132:
	ldr	r3, [r5, #588]
	cmp	r3, #1
	bhi	.L109
	b	.L108
.L135:
	.align	2
.L134:
	.word	.LANCHOR0-(.LPIC14+4)
	.word	.LANCHOR1-(.LPIC15+4)
	.word	.LANCHOR2-(.LPIC16+4)
	.word	.LANCHOR3-(.LPIC17+4)
	.size	png_read_push_finish_row, .-png_read_push_finish_row
	.section	.text.png_push_have_info,"ax",%progbits
	.align	2
	.global	png_push_have_info
	.thumb
	.thumb_func
	.type	png_push_have_info, %function
png_push_have_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #792]
	cbz	r3, .L136
	bx	r3	@ indirect register sibling call
.L136:
	bx	lr
	.size	png_push_have_info, .-png_push_have_info
	.section	.text.png_push_have_end,"ax",%progbits
	.align	2
	.global	png_push_have_end
	.thumb
	.thumb_func
	.type	png_push_have_end, %function
png_push_have_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #800]
	cbz	r3, .L138
	bx	r3	@ indirect register sibling call
.L138:
	bx	lr
	.size	png_push_have_end, .-png_push_have_end
	.section	.text.png_push_read_chunk,"ax",%progbits
	.align	2
	.global	png_push_read_chunk
	.thumb
	.thumb_func
	.type	png_push_read_chunk, %function
png_push_read_chunk:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	sub	sp, sp, #12
	mov	r7, r1
	lsls	r2, r3, #23
	bmi	.L141
	ldr	r3, [r0, #836]
	cmp	r3, #7
	bls	.L191
	movs	r2, #4
	mov	r1, sp
	bl	png_push_fill_buffer(PLT)
	mov	r1, sp
	mov	r0, r4
	bl	png_get_uint_31(PLT)
	str	r0, [r4, #820]
	mov	r0, r4
	bl	png_reset_crc(PLT)
	mov	r0, r4
	add	r1, sp, #4
	movs	r2, #4
	bl	png_crc_read(PLT)
	ldrb	r1, [sp, #5]	@ zero_extendqisi2
	mov	r0, r4
	ldrb	r5, [sp, #4]	@ zero_extendqisi2
	ldrb	r3, [sp, #6]	@ zero_extendqisi2
	ldrb	r2, [sp, #7]	@ zero_extendqisi2
	lsls	r1, r1, #16
	orr	r1, r1, r5, lsl #24
	orrs	r1, r1, r2
	orr	r1, r1, r3, lsl #8
	str	r1, [r4, #616]
	bl	png_check_chunk_name(PLT)
	ldr	r3, [r4, #448]
	orr	r3, r3, #256
	str	r3, [r4, #448]
.L141:
	ldr	r5, [r4, #616]
	movw	r6, #16724
	movt	r6, 18756
	cmp	r5, r6
	beq	.L192
	movw	r3, #17490
	movt	r3, 18760
	cmp	r5, r3
	beq	.L193
	movw	r3, #20036
	movt	r3, 18757
	cmp	r5, r3
	bne	.L154
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r0, r4
	mov	r1, r7
	bl	png_handle_IEND(PLT)
	movs	r3, #6
	mov	r1, r7
	str	r3, [r4, #844]
	mov	r0, r4
	bl	png_push_have_end(PLT)
	ldr	r3, [r4, #448]
.L153:
	bic	r3, r3, #256
	str	r3, [r4, #448]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L193:
	ldr	r2, [r4, #820]
	cmp	r2, #13
	bne	.L194
	ldr	r3, [r4, #836]
	cmp	r3, #16
	bls	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_IHDR(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L155:
	mov	r0, r4
.L191:
	bl	png_push_save_buffer(PLT)
.L140:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L154:
	mov	r0, r4
	mov	r1, r5
	bl	png_chunk_unknown_handling(PLT)
	cmp	r0, #0
	bne	.L179
	movw	r3, #21573
	movt	r3, 20556
	cmp	r5, r3
	beq	.L195
	cmp	r5, r6
	beq	.L180
	ldr	r3, [r4, #616]
	movw	r2, #19777
	movt	r2, 26433
	cmp	r3, r2
	beq	.L196
	movw	r2, #18772
	movt	r2, 29506
	cmp	r3, r2
	beq	.L197
	movw	r2, #21069
	movt	r2, 25416
	cmp	r3, r2
	beq	.L198
	movw	r2, #18242
	movt	r2, 29522
	cmp	r5, r2
	beq	.L199
	movw	r2, #17232
	movt	r2, 26947
	cmp	r3, r2
	beq	.L200
	movw	r3, #19540
	movt	r3, 29520
	cmp	r5, r3
	beq	.L201
	movw	r3, #20051
	movt	r3, 29778
	cmp	r5, r3
	beq	.L202
	movw	r3, #18244
	movt	r3, 25163
	cmp	r5, r3
	beq	.L203
	movw	r3, #21332
	movt	r3, 26697
	cmp	r5, r3
	beq	.L204
	movw	r3, #22899
	movt	r3, 28744
	cmp	r5, r3
	beq	.L205
	movw	r3, #18035
	movt	r3, 28486
	cmp	r5, r3
	beq	.L206
	movw	r3, #16716
	movt	r3, 28739
	cmp	r5, r3
	beq	.L207
	movw	r3, #16716
	movt	r3, 29507
	cmp	r5, r3
	beq	.L208
	movw	r3, #19781
	movt	r3, 29769
	cmp	r5, r3
	beq	.L209
	movw	r3, #22644
	movt	r3, 29765
	cmp	r5, r3
	beq	.L210
	movw	r3, #22644
	movt	r3, 31316
	cmp	r5, r3
	beq	.L211
	movw	r3, #22644
	ldr	r2, [r4, #820]
	movt	r3, 26964
	cmp	r5, r3
	ldr	r3, [r4, #836]
	add	r1, r2, #4
	beq	.L212
	cmp	r1, r3
	bhi	.L155
	movs	r3, #0
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_unknown(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L192:
	lsls	r6, r3, #28
	itt	mi
	orrmi	r3, r3, #8192
	strmi	r3, [r4, #448]
	lsls	r0, r3, #31
	bpl	.L213
	ldrb	r2, [r4, #675]	@ zero_extendqisi2
	cmp	r2, #3
	beq	.L214
.L147:
	movs	r2, #2
	orr	r1, r3, #4
	str	r2, [r4, #844]
	lsls	r2, r3, #18
	str	r1, [r4, #448]
	bpl	.L215
.L148:
	lsls	r3, r3, #28
	bmi	.L216
.L149:
	mov	r0, r4
	mov	r1, r5
	bl	png_chunk_unknown_handling(PLT)
	cbnz	r0, .L179
.L180:
	ldr	r3, [r4, #820]
	movs	r2, #2
	str	r2, [r4, #844]
	mov	r1, r7
	mov	r0, r4
	str	r3, [r4, #648]
	bl	png_push_have_info(PLT)
	ldrb	r3, [r4, #678]	@ zero_extendqisi2
	ldr	r2, [r4, #608]
	cmp	r3, #7
	itet	hi
	lsrhi	r3, r3, #3
	mulls	r2, r2, r3
	mulhi	r2, r2, r3
	ldr	r3, [r4, #624]
	itt	ls
	addls	r2, r2, #7
	lsrls	r2, r2, #3
	str	r3, [r4, #476]
	adds	r2, r2, #1
	str	r2, [r4, #480]
	b	.L140
.L179:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r3, r0
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_unknown(PLT)
	movw	r3, #21573
	movt	r3, 20556
	cmp	r5, r3
	ldr	r3, [r4, #448]
	it	eq
	orreq	r3, r3, #2
	b	.L153
.L215:
	ldr	r2, [r4, #820]
	cmp	r2, #0
	bne	.L148
	b	.L140
.L214:
	lsls	r1, r3, #30
	bmi	.L147
	ldr	r1, .L217
	mov	r0, r4
.LPIC19:
	add	r1, pc
	bl	png_error(PLT)
.L216:
	ldr	r1, .L217+4
	mov	r0, r4
.LPIC20:
	add	r1, pc
	bl	png_benign_error(PLT)
	b	.L149
.L197:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_sBIT(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L195:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_PLTE(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L196:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_gAMA(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L198:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_cHRM(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L199:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_sRGB(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L200:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_iCCP(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L201:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_sPLT(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L202:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_tRNS(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L203:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_bKGD(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L204:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_hIST(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L205:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_pHYs(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L206:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_oFFs(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L207:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_pCAL(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L208:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_sCAL(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L209:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_tIME(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L211:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_zTXt(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L210:
	ldr	r2, [r4, #820]
	ldr	r3, [r4, #836]
	adds	r1, r2, #4
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_tEXt(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L213:
	ldr	r1, .L217+8
	mov	r0, r4
.LPIC18:
	add	r1, pc
	bl	png_error(PLT)
.L194:
	ldr	r1, .L217+12
	mov	r0, r4
.LPIC21:
	add	r1, pc
	bl	png_error(PLT)
.L212:
	cmp	r1, r3
	bhi	.L155
	mov	r1, r7
	mov	r0, r4
	bl	png_handle_iTXt(PLT)
	ldr	r3, [r4, #448]
	b	.L153
.L218:
	.align	2
.L217:
	.word	.LC7-(.LPIC19+4)
	.word	.LC8-(.LPIC20+4)
	.word	.LC6-(.LPIC18+4)
	.word	.LC9-(.LPIC21+4)
	.size	png_push_read_chunk, .-png_push_read_chunk
	.section	.text.png_push_have_row,"ax",%progbits
	.align	2
	.global	png_push_have_row
	.thumb
	.thumb_func
	.type	png_push_have_row, %function
png_push_have_row:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	ldr	r4, [r0, #796]
	cbz	r4, .L219
	mov	ip, r4
	ldr	r2, [r0, #612]
	ldrb	r3, [r0, #673]	@ zero_extendqisi2
	ldr	r4, [sp], #4
	bx	ip	@ indirect register sibling call
.L219:
	ldr	r4, [sp], #4
	bx	lr
	.size	png_push_have_row, .-png_push_have_row
	.section	.text.png_push_process_row,"ax",%progbits
	.align	2
	.global	png_push_process_row
	.thumb
	.thumb_func
	.type	png_push_process_row, %function
png_push_process_row:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	ldr	r2, [r0, #608]
	sub	sp, sp, #28
	ldrb	r3, [r4, #678]	@ zero_extendqisi2
	str	r2, [sp, #8]
	ldrb	r1, [r4, #679]	@ zero_extendqisi2
	cmp	r3, #7
	strb	r3, [sp, #19]
	ite	ls
	mulls	r2, r2, r3
	lsrhi	r3, r3, #3
	ldrb	r5, [r0, #675]	@ zero_extendqisi2
	it	hi
	mulhi	r2, r2, r3
	ldrb	r0, [r0, #676]	@ zero_extendqisi2
	strb	r1, [sp, #18]
	it	ls
	addls	r2, r2, #7
	ldr	r1, [r4, #624]
	it	ls
	lsrls	r2, r2, #3
	strb	r5, [sp, #16]
	strb	r0, [sp, #17]
	str	r2, [sp, #12]
	ldrb	r0, [r1]	@ zero_extendqisi2
	cbz	r0, .L225
	cmp	r0, #4
	bhi	.L226
	ldr	r3, [r4, #620]
	adds	r2, r1, #1
	str	r0, [sp]
	add	r1, sp, #8
	mov	r0, r4
	adds	r3, r3, #1
	bl	png_read_filter_row(PLT)
	ldr	r1, [r4, #624]
	ldr	r2, [sp, #12]
.L225:
	adds	r2, r2, #1
	ldr	r0, [r4, #620]
	bl	memcpy(PLT)
	ldr	r3, [r4, #456]
	cbnz	r3, .L295
.L227:
	ldrb	r3, [r4, #683]	@ zero_extendqisi2
	cbz	r3, .L296
	ldrb	r2, [sp, #19]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L297
.L229:
	ldrb	r3, [r4, #672]	@ zero_extendqisi2
	cbz	r3, .L230
	ldr	r3, [r4, #456]
	lsls	r2, r3, #30
	bpl	.L230
	ldrb	r2, [r4, #673]	@ zero_extendqisi2
	cmp	r2, #5
	bls	.L298
.L231:
	cmp	r2, #5
	bhi	.L289
	tbb	[pc, r2]
.L234:
	.byte	(.L233-.L234)/2
	.byte	(.L235-.L234)/2
	.byte	(.L236-.L234)/2
	.byte	(.L237-.L234)/2
	.byte	(.L238-.L234)/2
	.byte	(.L239-.L234)/2
	.align	1
.L296:
	ldrb	r3, [sp, #19]	@ zero_extendqisi2
	ldrb	r2, [r4, #682]	@ zero_extendqisi2
	strb	r3, [r4, #683]
	cmp	r2, r3
	bcs	.L229
	ldr	r1, .L301
	mov	r0, r4
.LPIC23:
	add	r1, pc
	bl	png_error(PLT)
.L230:
	ldr	r1, [r4, #624]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
.L222:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, pc}
.L295:
	mov	r0, r4
	add	r1, sp, #8
	bl	png_do_read_transformations(PLT)
	b	.L227
.L239:
	ldr	r1, [r4, #624]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #5
	bne	.L267
.L289:
	ldr	r1, [r4, #624]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
.L267:
	cmp	r3, #6
	bne	.L222
.L291:
	mov	r0, r4
	movs	r1, #0
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	b	.L222
.L238:
	ldr	r1, [r4, #624]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L267
	ldr	r1, [r4, #624]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L267
	mov	r0, r4
	movs	r1, #0
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L267
	mov	r0, r4
	movs	r1, #0
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	b	.L267
.L237:
	movs	r5, #4
.L263:
	ldr	r1, [r4, #624]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	subs	r5, r5, #1
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	beq	.L262
	cmp	r3, #3
	beq	.L263
.L262:
	cmp	r3, #4
	bne	.L222
	mov	r0, r4
	movs	r1, #0
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #4
	beq	.L291
	b	.L222
.L236:
	movs	r5, #4
.L257:
	ldr	r1, [r4, #624]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	subs	r5, r5, #1
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	beq	.L256
	cmp	r3, #2
	beq	.L257
.L256:
	movs	r5, #4
.L255:
	cmp	r3, #2
	bne	.L262
	mov	r0, r4
	movs	r1, #0
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	subs	r5, r5, #1
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	bne	.L255
	b	.L262
.L233:
	movs	r5, #8
	b	.L242
.L240:
	cbnz	r3, .L241
.L242:
	ldr	r1, [r4, #624]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	subs	r5, r5, #1
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	bne	.L240
.L241:
	cmp	r3, #2
	beq	.L299
.L243:
	cmp	r3, #4
	beq	.L300
.L246:
	cmp	r3, #6
	bne	.L222
	ldr	r3, [r4, #592]
	cmp	r3, #4
	bhi	.L222
	b	.L291
.L235:
	movs	r5, #8
	b	.L252
.L250:
	cmp	r3, #1
	bne	.L251
.L252:
	ldr	r1, [r4, #624]
	mov	r0, r4
	adds	r1, r1, #1
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	subs	r5, r5, #1
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	bne	.L250
.L251:
	cmp	r3, #2
	bne	.L222
	movs	r5, #4
.L253:
	mov	r0, r4
	movs	r1, #0
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	subs	r5, r5, #1
	beq	.L222
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L253
	b	.L222
.L298:
	ldr	r1, [r4, #624]
	add	r0, sp, #8
	adds	r1, r1, #1
	bl	png_do_read_interlace(PLT)
	ldrb	r2, [r4, #673]	@ zero_extendqisi2
	b	.L231
.L299:
	movs	r5, #4
.L245:
	mov	r0, r4
	movs	r1, #0
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	subs	r5, r5, #1
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	beq	.L243
	cmp	r3, #2
	beq	.L245
	b	.L243
.L300:
	ldr	r3, [r4, #592]
	cmp	r3, #4
	bhi	.L222
	mov	r0, r4
	movs	r1, #0
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #4
	bne	.L246
	mov	r0, r4
	movs	r1, #0
	bl	png_push_have_row(PLT)
	mov	r0, r4
	bl	png_read_push_finish_row(PLT)
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	b	.L246
.L226:
	ldr	r1, .L301+4
	mov	r0, r4
.LPIC22:
	add	r1, pc
	bl	png_error(PLT)
.L297:
	ldr	r1, .L301+8
	mov	r0, r4
.LPIC24:
	add	r1, pc
	bl	png_error(PLT)
.L302:
	.align	2
.L301:
	.word	.LC11-(.LPIC23+4)
	.word	.LC10-(.LPIC22+4)
	.word	.LC12-(.LPIC24+4)
	.size	png_push_process_row, .-png_push_process_row
	.section	.text.png_process_IDAT_data,"ax",%progbits
	.align	2
	.global	png_process_IDAT_data
	.thumb
	.thumb_func
	.type	png_process_IDAT_data, %function
png_process_IDAT_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r2, #0
	push	{r4, r5, r6, lr}
	beq	.L324
	mov	r3, r2
	mov	r4, r0
	str	r1, [r0, #464]
	add	r6, r0, #464
	str	r2, [r0, #468]
	cmp	r3, #0
	beq	.L303
.L328:
	ldr	r3, [r4, #452]
	lsls	r3, r3, #28
	bmi	.L325
	ldr	r3, [r4, #480]
	cbnz	r3, .L306
	ldrb	r3, [r4, #678]	@ zero_extendqisi2
	ldr	r2, [r4, #608]
	cmp	r3, #7
	itet	hi
	lsrhi	r3, r3, #3
	mulls	r3, r2, r3
	mulhi	r3, r2, r3
	ldr	r2, [r4, #624]
	itt	ls
	addls	r3, r3, #7
	lsrls	r3, r3, #3
	str	r2, [r4, #476]
	adds	r3, r3, #1
	str	r3, [r4, #480]
.L306:
	mov	r0, r6
	movs	r1, #2
	bl	inflate(PLT)
	cmp	r0, #1
	mov	r5, r0
	bhi	.L326
	ldr	r2, [r4, #476]
	ldr	r3, [r4, #624]
	cmp	r2, r3
	beq	.L312
	ldr	r2, [r4, #612]
	ldr	r3, [r4, #596]
	cmp	r2, r3
	bcs	.L313
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #6
	bhi	.L313
	ldr	r3, [r4, #480]
	cbz	r3, .L327
.L312:
	cmp	r5, #1
	itett	eq
	ldreq	r2, [r4, #452]
	ldrne	r3, [r4, #468]
	ldreq	r3, [r4, #468]
	orreq	r2, r2, #8
	it	eq
	streq	r2, [r4, #452]
	cmp	r3, #0
	bne	.L328
.L303:
	pop	{r4, r5, r6, pc}
.L327:
	mov	r0, r4
	bl	png_push_process_row(PLT)
	b	.L312
.L313:
	ldr	r1, .L329
	mov	r0, r4
.LPIC28:
	add	r1, pc
	bl	png_warning(PLT)
	ldr	r3, [r4, #452]
	movs	r2, #0
	str	r2, [r4, #460]
	orr	r3, r3, #8
	str	r3, [r4, #452]
	pop	{r4, r5, r6, pc}
.L325:
	ldr	r1, .L329+4
	mov	r0, r4
	pop	{r4, r5, r6, lr}
.LPIC29:
	add	r1, pc
	b	png_warning(PLT)
.L326:
	ldr	r2, [r4, #612]
	movs	r0, #0
	ldr	r3, [r4, #596]
	ldr	r1, [r4, #452]
	str	r0, [r4, #460]
	mov	r0, r4
	cmp	r2, r3
	orr	r1, r1, #8
	str	r1, [r4, #452]
	bcs	.L310
	ldrb	r3, [r4, #673]	@ zero_extendqisi2
	cmp	r3, #6
	bls	.L311
.L310:
	ldr	r1, .L329+8
	pop	{r4, r5, r6, lr}
.LPIC26:
	add	r1, pc
	b	png_warning(PLT)
.L311:
	ldr	r1, .L329+12
.LPIC27:
	add	r1, pc
	bl	png_error(PLT)
.L324:
	ldr	r1, .L329+16
.LPIC25:
	add	r1, pc
	bl	png_error(PLT)
.L330:
	.align	2
.L329:
	.word	.LC16-(.LPIC28+4)
	.word	.LC17-(.LPIC29+4)
	.word	.LC14-(.LPIC26+4)
	.word	.LC15-(.LPIC27+4)
	.word	.LC13-(.LPIC25+4)
	.size	png_process_IDAT_data, .-png_process_IDAT_data
	.section	.text.png_push_read_IDAT,"ax",%progbits
	.align	2
	.global	png_push_read_IDAT
	.thumb
	.thumb_func
	.type	png_push_read_IDAT, %function
png_push_read_IDAT:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #448]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	sub	sp, sp, #8
	lsls	r2, r3, #23
	bmi	.L332
	ldr	r3, [r0, #836]
	cmp	r3, #7
	bhi	.L333
.L354:
	bl	png_push_save_buffer(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L332:
	ldr	r3, [r0, #648]
	cbnz	r3, .L352
.L355:
	ldr	r1, [r4, #836]
.L343:
	cmp	r1, #3
	mov	r0, r4
	bls	.L354
	movs	r1, #0
	bl	png_crc_finish(PLT)
	ldr	r3, [r4, #448]
	movs	r2, #0
	str	r2, [r4, #460]
	bic	r3, r3, #256
	orr	r3, r3, #8
	str	r3, [r4, #448]
.L331:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L352:
	ldr	r5, [r4, #828]
	cbz	r5, .L339
	cmp	r5, r3
	mov	r0, r4
	it	cs
	movcs	r5, r3
	ldr	r1, [r4, #804]
	mov	r2, r5
	bl	png_calculate_crc(PLT)
	mov	r2, r5
	mov	r0, r4
	ldr	r1, [r4, #804]
	bl	png_process_IDAT_data(PLT)
	ldr	r3, [r4, #648]
	ldr	r1, [r4, #836]
	ldr	r0, [r4, #828]
	ldr	r2, [r4, #804]
	subs	r3, r3, r5
	subs	r1, r1, r5
	str	r3, [r4, #648]
	subs	r0, r0, r5
	str	r1, [r4, #836]
	add	r5, r5, r2
	str	r0, [r4, #828]
	str	r5, [r4, #804]
	cmp	r3, #0
	beq	.L343
.L339:
	ldr	r5, [r4, #840]
	cmp	r5, #0
	beq	.L331
	cmp	r5, r3
	mov	r0, r4
	it	cs
	movcs	r5, r3
	ldr	r1, [r4, #812]
	mov	r2, r5
	bl	png_calculate_crc(PLT)
	mov	r0, r4
	mov	r2, r5
	ldr	r1, [r4, #812]
	bl	png_process_IDAT_data(PLT)
	ldr	r2, [r4, #648]
	ldr	r1, [r4, #836]
	ldr	r0, [r4, #840]
	ldr	r3, [r4, #812]
	subs	r2, r2, r5
	subs	r1, r1, r5
	str	r2, [r4, #648]
	subs	r0, r0, r5
	str	r1, [r4, #836]
	add	r3, r3, r5
	str	r0, [r4, #840]
	str	r3, [r4, #812]
	cmp	r2, #0
	bne	.L331
	b	.L343
.L333:
	movs	r2, #4
	mov	r1, sp
	bl	png_push_fill_buffer(PLT)
	mov	r1, sp
	mov	r0, r4
	bl	png_get_uint_31(PLT)
	str	r0, [r4, #820]
	mov	r0, r4
	bl	png_reset_crc(PLT)
	mov	r0, r4
	add	r1, sp, #4
	movs	r2, #4
	bl	png_crc_read(PLT)
	ldrb	r2, [sp, #5]	@ zero_extendqisi2
	movw	r3, #16724
	ldrb	r6, [sp, #4]	@ zero_extendqisi2
	movt	r3, 18756
	ldrb	r5, [sp, #7]	@ zero_extendqisi2
	ldrb	r0, [sp, #6]	@ zero_extendqisi2
	lsls	r2, r2, #16
	ldr	r1, [r4, #448]
	orr	r2, r2, r6, lsl #24
	orr	r1, r1, #256
	orrs	r2, r2, r5
	str	r1, [r4, #448]
	orr	r2, r2, r0, lsl #8
	cmp	r2, r3
	str	r2, [r4, #616]
	beq	.L335
	ldr	r3, [r4, #452]
	movs	r2, #1
	str	r2, [r4, #844]
	lsls	r3, r3, #28
	bmi	.L331
	ldr	r1, .L356
	mov	r0, r4
.LPIC30:
	add	r1, pc
	bl	png_error(PLT)
.L335:
	ldr	r3, [r4, #820]
	str	r3, [r4, #648]
	cmp	r3, #0
	bne	.L352
	b	.L355
.L357:
	.align	2
.L356:
	.word	.LC18-(.LPIC30+4)
	.size	png_push_read_IDAT, .-png_push_read_IDAT
	.section	.text.png_process_some_data,"ax",%progbits
	.align	2
	.global	png_process_some_data
	.thumb
	.thumb_func
	.type	png_process_some_data, %function
png_process_some_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L371
	ldr	r3, [r0, #844]
	push	{r4}
	cmp	r3, #3
	bhi	.L360
	tbb	[pc, r3]
.L362:
	.byte	(.L361-.L362)/2
	.byte	(.L363-.L362)/2
	.byte	(.L364-.L362)/2
	.byte	(.L365-.L362)/2
	.align	1
.L365:
	ldr	r4, [sp], #4
	b	png_push_crc_finish(PLT)
.L361:
	ldr	r4, [sp], #4
	b	png_push_read_sig(PLT)
.L363:
	ldr	r4, [sp], #4
	b	png_push_read_chunk(PLT)
.L364:
	ldr	r4, [sp], #4
	b	png_push_read_IDAT(PLT)
.L360:
	ldr	r4, [sp], #4
	movs	r3, #0
	str	r3, [r0, #836]
.L371:
	bx	lr
	.size	png_process_some_data, .-png_process_some_data
	.section	.text.png_process_data,"ax",%progbits
	.align	2
	.global	png_process_data
	.thumb
	.thumb_func
	.type	png_process_data, %function
png_process_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	bne	.L383
.L372:
	pop	{r3, r4, r5, pc}
.L383:
	mov	r4, r0
	mov	r1, r2
	mov	r2, r3
	bl	png_push_restore_buffer(PLT)
	ldr	r3, [r4, #836]
	cmp	r3, #0
	beq	.L372
.L375:
	mov	r0, r4
	mov	r1, r5
	bl	png_process_some_data(PLT)
	ldr	r3, [r4, #836]
	cmp	r3, #0
	bne	.L375
	pop	{r3, r4, r5, pc}
	.size	png_process_data, .-png_process_data
	.section	.text.png_progressive_combine_row,"ax",%progbits
	.align	2
	.global	png_progressive_combine_row
	.thumb
	.thumb_func
	.type	png_progressive_combine_row, %function
png_progressive_combine_row:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L384
	cbz	r2, .L384
	movs	r2, #1
	b	png_combine_row(PLT)
.L384:
	bx	lr
	.size	png_progressive_combine_row, .-png_progressive_combine_row
	.section	.text.png_set_progressive_read_fn,"ax",%progbits
	.align	2
	.global	png_set_progressive_read_fn
	.thumb
	.thumb_func
	.type	png_set_progressive_read_fn, %function
png_set_progressive_read_fn:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	ldr	r5, .L395
	ldr	r6, [sp, #16]
.LPIC31:
	add	r5, pc
	cbz	r0, .L392
	ldr	r7, .L395+4
	str	r6, [r0, #800]
	str	r2, [r0, #792]
	str	r3, [r0, #796]
	ldr	r2, [r5, r7]
	pop	{r4, r5, r6, r7}
	b	png_set_read_fn(PLT)
.L392:
	pop	{r4, r5, r6, r7}
	bx	lr
.L396:
	.align	2
.L395:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC31+4)
	.word	png_push_fill_buffer(GOT)
	.size	png_set_progressive_read_fn, .-png_set_progressive_read_fn
	.section	.text.png_get_progressive_ptr,"ax",%progbits
	.align	2
	.global	png_get_progressive_ptr
	.thumb
	.thumb_func
	.type	png_get_progressive_ptr, %function
png_get_progressive_ptr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L398
	ldr	r0, [r0, #428]
.L398:
	bx	lr
	.size	png_get_progressive_ptr, .-png_get_progressive_ptr
	.section	.rodata.png_pass_ystart.8891,"a",%progbits
	.align	3
.LANCHOR3 = . + 0
	.type	png_pass_ystart.8891, %object
	.size	png_pass_ystart.8891, 7
png_pass_ystart.8891:
	.byte	0
	.byte	0
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.section	.rodata.png_pass_start.8889,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	png_pass_start.8889, %object
	.size	png_pass_start.8889, 7
png_pass_start.8889:
	.byte	0
	.byte	4
	.byte	0
	.byte	2
	.byte	0
	.byte	1
	.byte	0
	.section	.rodata.png_pass_yinc.8892,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	png_pass_yinc.8892, %object
	.size	png_pass_yinc.8892, 7
png_pass_yinc.8892:
	.byte	8
	.byte	8
	.byte	8
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.section	.rodata.png_pass_inc.8890,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	png_pass_inc.8890, %object
	.size	png_pass_inc.8890, 7
png_pass_inc.8890:
	.byte	8
	.byte	8
	.byte	4
	.byte	4
	.byte	2
	.byte	2
	.byte	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"png_process_data_skip called inside png_process_dat"
	.ascii	"a\000"
	.space	3
.LC1:
	.ascii	"png_process_data_skip called with saved data\000"
	.space	3
.LC2:
	.ascii	"Not a PNG file\000"
	.space	1
.LC3:
	.ascii	"PNG file corrupted by ASCII conversion\000"
	.space	1
.LC4:
	.ascii	"Potential overflow of save_buffer\000"
	.space	2
.LC5:
	.ascii	"Insufficient memory for save_buffer\000"
.LC6:
	.ascii	"Missing IHDR before IDAT\000"
	.space	3
.LC7:
	.ascii	"Missing PLTE before IDAT\000"
	.space	3
.LC8:
	.ascii	"Too many IDATs found\000"
	.space	3
.LC9:
	.ascii	"Invalid IHDR length\000"
.LC10:
	.ascii	"bad adaptive filter value\000"
	.space	2
.LC11:
	.ascii	"progressive row overflow\000"
	.space	3
.LC12:
	.ascii	"internal progressive row size calculation error\000"
.LC13:
	.ascii	"No IDAT data (internal error)\000"
	.space	2
.LC14:
	.ascii	"Truncated compressed data in IDAT\000"
	.space	2
.LC15:
	.ascii	"Decompression error in IDAT\000"
.LC16:
	.ascii	"Extra compressed data in IDAT\000"
	.space	2
.LC17:
	.ascii	"Extra compression data in IDAT\000"
	.space	1
.LC18:
	.ascii	"Not enough compressed data\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
