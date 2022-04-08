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
	.file	"gzread.c"
	.section	.text.gz_look,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gz_look, %function
gz_look:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	ldr	r6, [r0, #24]
	add	r8, r0, #84
	cbz	r6, .L42
.L2:
	ldr	r2, [r4, #88]
	cmp	r2, #1
	bls	.L43
.L8:
	ldr	r3, [r4, #84]
	ldrb	r1, [r3]	@ zero_extendqisi2
	cmp	r1, #31
	beq	.L44
.L15:
	ldr	r5, [r4, #40]
	cbz	r5, .L45
	ldr	r0, [r4, #36]
	movs	r5, #0
	ldr	r1, [r4, #84]
	str	r0, [r4, #4]
	bl	memcpy(PLT)
	ldr	r2, [r4, #88]
	movs	r3, #1
	str	r5, [r4, #88]
	str	r3, [r4, #44]
	str	r2, [r4]
	str	r3, [r4, #40]
.L27:
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L45:
	movs	r3, #1
	str	r5, [r4, #88]
	str	r5, [r4]
	mov	r0, r5
	str	r3, [r4, #52]
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L42:
	ldr	r5, [r0, #28]
	mov	r0, r5
	bl	malloc(PLT)
	mov	r7, r0
	lsls	r0, r5, #1
	str	r7, [r4, #32]
	bl	malloc(PLT)
	str	r0, [r4, #36]
	cmp	r7, #0
	beq	.L3
	cmp	r0, #0
	beq	.L46
	ldr	r2, .L49
	mov	r0, r8
	str	r5, [r4, #24]
	movs	r1, #31
	str	r6, [r4, #116]
	movs	r3, #56
	str	r6, [r4, #120]
.LPIC1:
	add	r2, pc
	str	r6, [r4, #124]
	str	r6, [r4, #88]
	str	r6, [r4, #84]
	bl	inflateInit2_(PLT)
	cmp	r0, #0
	beq	.L2
	ldr	r0, [r4, #36]
	mov	r5, #-1
	bl	free(PLT)
	ldr	r0, [r4, #32]
	bl	free(PLT)
	ldr	r2, .L49+4
	mov	r0, r4
	str	r6, [r4, #24]
	mvn	r1, #3
.LPIC2:
	add	r2, pc
	bl	gz_error(PLT)
	b	.L27
.L44:
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #139
	bne	.L15
	mov	r0, r8
	bl	inflateReset(PLT)
	movs	r3, #0
	movs	r2, #2
	str	r2, [r4, #44]
	mov	r5, r3
	str	r3, [r4, #40]
	b	.L27
.L43:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	it	ne
	cmnne	r3, #5
	bne	.L19
	ldr	r5, [r4, #52]
	cmp	r5, #0
	bne	.L9
	cbnz	r2, .L47
.L10:
	ldr	r3, [r4, #32]
	movs	r6, #0
	ldr	r7, [r4, #24]
	add	r9, r3, r2
	subs	r7, r7, r2
	b	.L13
.L48:
	add	r6, r6, r0
	cmp	r7, r6
	bls	.L12
.L13:
	ldr	r0, [r4, #16]
	add	r1, r9, r6
	subs	r2, r7, r6
	bl	read(PLT)
	cmp	r0, #0
	bgt	.L48
	itt	eq
	moveq	r3, #1
	streq	r3, [r4, #52]
	beq	.L12
	bl	__errno_location(PLT)
	mov	r5, #-1
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, r5
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
	b	.L27
.L12:
	ldr	r2, [r4, #88]
	ldr	r3, [r4, #32]
	add	r2, r2, r6
	str	r2, [r4, #88]
	str	r3, [r4, #84]
	cmp	r2, #0
	beq	.L27
	cmp	r2, #1
	bhi	.L8
.L20:
	movs	r2, #1
	b	.L15
.L47:
	ldr	r2, [r4, #84]
	ldr	r3, [r4, #32]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r2, [r4, #88]
	b	.L10
.L19:
	mov	r5, #-1
	b	.L27
.L46:
	mov	r0, r7
.L4:
	bl	free(PLT)
.L6:
	ldr	r2, .L49+8
	mov	r0, r4
	mvn	r1, #3
	mov	r5, #-1
.LPIC0:
	add	r2, pc
	bl	gz_error(PLT)
	b	.L27
.L3:
	cmp	r0, #0
	beq	.L6
	bl	free(PLT)
	ldr	r0, [r4, #32]
	cmp	r0, #0
	beq	.L6
	b	.L4
.L9:
	cmp	r2, #0
	bne	.L20
	mov	r5, r2
	b	.L27
.L50:
	.align	2
.L49:
	.word	.LC1-(.LPIC1+4)
	.word	.LC0-(.LPIC2+4)
	.word	.LC0-(.LPIC0+4)
	.size	gz_look, .-gz_look
	.section	.text.gz_decomp,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gz_decomp, %function
gz_decomp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	movs	r6, #0
	ldr	fp, [r0, #100]
	add	r9, r0, #84
	mov	r10, #1
	b	.L65
.L52:
	mov	r0, r9
	movs	r1, #0
	bl	inflate(PLT)
	cmn	r0, #2
	it	ne
	cmpne	r0, #2
	mov	r6, r0
	beq	.L78
	adds	r2, r0, #4
	beq	.L79
	adds	r3, r0, #3
	beq	.L80
	ldr	r3, [r5, #100]
	cbz	r3, .L59
	cmp	r0, #1
	beq	.L81
.L65:
	ldr	r3, [r5, #88]
	cmp	r3, #0
	bne	.L52
	ldr	r3, [r5, #76]
	cmp	r3, #0
	it	ne
	cmnne	r3, #5
	bne	.L67
	ldr	r4, [r5, #52]
	cbnz	r4, .L54
	ldr	r8, [r5, #32]
	ldr	r7, [r5, #24]
	b	.L57
.L82:
	add	r4, r4, r0
	cmp	r7, r4
	bls	.L56
.L57:
	ldr	r0, [r5, #16]
	add	r1, r8, r4
	subs	r2, r7, r4
	bl	read(PLT)
	cmp	r0, #0
	bgt	.L82
	bne	.L83
	str	r10, [r5, #52]
.L56:
	ldr	r2, [r5, #88]
	ldr	r3, [r5, #32]
	add	r4, r4, r2
	str	r4, [r5, #88]
	str	r3, [r5, #84]
	cmp	r4, #0
	bne	.L52
.L54:
	ldr	r2, .L85
	mov	r0, r5
	mvn	r1, #4
.LPIC4:
	add	r2, pc
	bl	gz_error(PLT)
	ldr	r3, [r5, #100]
.L59:
	ldr	r2, [r5, #96]
	rsb	r3, r3, fp
	cmp	r6, #1
	str	r3, [r5]
	sub	r3, r2, r3
	str	r3, [r5, #4]
	beq	.L66
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L81:
	ldr	r2, [r5, #96]
	rsb	r3, r3, fp
	str	r3, [r5]
	subs	r3, r2, r3
	str	r3, [r5, #4]
.L66:
	movs	r0, #0
	str	r0, [r5, #44]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L78:
	ldr	r2, .L85+4
	mov	r0, r5
	mvn	r1, #1
.LPIC5:
	add	r2, pc
	bl	gz_error(PLT)
	mov	r0, #-1
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L79:
	ldr	r2, .L85+8
	mov	r0, r5
	mov	r1, r6
.LPIC6:
	add	r2, pc
	bl	gz_error(PLT)
	mov	r0, #-1
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L80:
	ldr	r2, [r5, #108]
	cbz	r2, .L84
.L63:
	mov	r0, r5
	mvn	r1, #2
	bl	gz_error(PLT)
	mov	r0, #-1
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L67:
	mov	r0, #-1
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L84:
	ldr	r2, .L85+12
.LPIC3:
	add	r2, pc
	b	.L63
.L83:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, #-1
	mov	r2, r0
	mov	r0, r5
	bl	gz_error(PLT)
	mov	r0, #-1
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L86:
	.align	2
.L85:
	.word	.LC3-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.word	.LC0-(.LPIC6+4)
	.word	.LC2-(.LPIC3+4)
	.size	gz_decomp, .-gz_decomp
	.section	.text.gz_fetch,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gz_fetch, %function
gz_fetch:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
.L88:
	ldr	r3, [r4, #44]
	cmp	r3, #1
	beq	.L90
	cmp	r3, #2
	beq	.L91
	cbz	r3, .L115
.L89:
	ldr	r3, [r4]
	cbnz	r3, .L95
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L88
	ldr	r3, [r4, #88]
	cmp	r3, #0
	bne	.L88
.L95:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L90:
	ldr	r5, [r4, #24]
	movs	r3, #0
	ldr	r6, [r4, #36]
	mov	r2, r3
	str	r3, [r4]
	lsls	r5, r5, #1
	b	.L98
.L116:
	ldr	r2, [r4]
	add	r2, r2, r0
	cmp	r5, r2
	str	r2, [r4]
	bls	.L97
.L98:
	adds	r1, r6, r2
	ldr	r0, [r4, #16]
	subs	r2, r5, r2
	bl	read(PLT)
	cmp	r0, #0
	bgt	.L116
	itt	eq
	moveq	r3, #1
	streq	r3, [r4, #52]
	bne	.L117
.L97:
	ldr	r3, [r4, #36]
	movs	r0, #0
	str	r3, [r4, #4]
	pop	{r4, r5, r6, pc}
.L115:
	mov	r0, r4
	bl	gz_look(PLT)
	adds	r0, r0, #1
	beq	.L114
	ldr	r3, [r4, #44]
	cmp	r3, #0
	bne	.L89
	b	.L95
.L91:
	ldr	r2, [r4, #24]
	mov	r0, r4
	ldr	r3, [r4, #36]
	lsls	r2, r2, #1
	str	r3, [r4, #96]
	str	r2, [r4, #100]
	bl	gz_decomp(PLT)
	adds	r0, r0, #1
	bne	.L89
.L114:
	mov	r0, #-1
	pop	{r4, r5, r6, pc}
.L117:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, #-1
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
	b	.L114
	.size	gz_fetch, .-gz_fetch
	.section	.text.gzread,"ax",%progbits
	.align	2
	.global	gzread
	.thumb
	.thumb_func
	.type	gzread, %function
gzread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L179
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r2
	ldr	r3, [r0, #12]
	movw	r2, #7247
	mov	r4, r0
	cmp	r3, r2
	bne	.L177
	ldr	r3, [r0, #76]
	cmp	r3, #0
	it	ne
	cmnne	r3, #5
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	bne	.L177
	cmp	r6, #0
	blt	.L180
	beq	.L146
	ldr	r2, [r0, #72]
	mov	r7, r1
	cmp	r2, #0
	bne	.L123
	ldr	r5, [r0]
.L124:
	mov	r8, #0
	mov	r9, r8
	cbnz	r5, .L181
.L132:
	ldr	r3, [r4, #52]
	cbz	r3, .L134
	ldr	r3, [r4, #88]
	cmp	r3, #0
	beq	.L182
.L134:
	ldr	r3, [r4, #44]
	cbz	r3, .L136
	ldr	r2, [r4, #24]
	cmp	r6, r2, lsl #1
	bcc	.L136
	cmp	r3, #1
	beq	.L183
	str	r6, [r4, #100]
	mov	r0, r4
	str	r7, [r4, #96]
	bl	gz_decomp(PLT)
	adds	r0, r0, #1
	beq	.L177
	ldr	r5, [r4]
	str	r9, [r4]
	add	r7, r7, r5
	subs	r6, r6, r5
.L133:
	ldr	r3, [r4, #8]
	add	r8, r8, r5
	add	r5, r5, r3
	str	r5, [r4, #8]
.L138:
	cmp	r6, #0
	beq	.L135
	ldr	r5, [r4]
	cmp	r5, #0
	beq	.L132
.L181:
	cmp	r5, r6
	mov	r0, r7
	it	cs
	movcs	r5, r6
	ldr	r1, [r4, #4]
	mov	r2, r5
	subs	r6, r6, r5
	bl	memcpy(PLT)
	ldr	r2, [r4, #4]
	add	r7, r7, r5
	ldr	r3, [r4]
	add	r2, r2, r5
	subs	r3, r3, r5
	str	r2, [r4, #4]
	str	r3, [r4]
	b	.L133
.L136:
	mov	r0, r4
	bl	gz_fetch(PLT)
	adds	r0, r0, #1
	bne	.L138
.L177:
	mov	r0, #-1
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L183:
	movs	r5, #0
	b	.L142
.L185:
	add	r5, r5, r0
	cmp	r6, r5
	bls	.L184
.L142:
	add	fp, r7, r5
	rsb	r10, r5, r6
	mov	r1, fp
	mov	r2, r10
	ldr	r0, [r4, #16]
	bl	read(PLT)
	cmp	r0, #0
	bgt	.L185
	bne	.L186
	movs	r3, #1
	str	r3, [r4, #52]
.L144:
	mov	r7, fp
	mov	r6, r10
	b	.L133
.L184:
	rsb	r10, r5, r6
	add	fp, r7, r5
	b	.L144
.L182:
	movs	r3, #1
	str	r3, [r4, #56]
.L135:
	mov	r0, r8
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L146:
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L123:
	ldr	r8, [r0, #68]
	str	r3, [r0, #72]
	ldr	r5, [r0]
	cmp	r8, #0
	beq	.L124
	cmp	r5, #0
	beq	.L126
.L187:
	blt	.L127
	cmp	r5, r8
	bgt	.L127
	rsb	r8, r5, r8
	mov	r3, r5
	movs	r5, #0
.L128:
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #8]
	str	r5, [r4]
	add	r1, r1, r3
	add	r3, r3, r2
	str	r1, [r4, #4]
	str	r3, [r4, #8]
	cmp	r8, #0
	beq	.L124
.L178:
	cmp	r5, #0
	bne	.L187
.L126:
	ldr	r3, [r4, #52]
	cbz	r3, .L130
	ldr	r5, [r4, #88]
	cmp	r5, #0
	beq	.L124
.L130:
	mov	r0, r4
	bl	gz_fetch(PLT)
	adds	r0, r0, #1
	beq	.L177
	ldr	r5, [r4]
	cmp	r8, #0
	bne	.L178
	b	.L124
.L127:
	mov	r3, r8
	mov	r8, #0
	subs	r5, r5, r3
	b	.L128
.L179:
	mov	r0, #-1
	bx	lr
.L186:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, #-1
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
	b	.L177
.L180:
	ldr	r2, .L188
	mvn	r1, #2
.LPIC7:
	add	r2, pc
	bl	gz_error(PLT)
	mov	r0, #-1
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L189:
	.align	2
.L188:
	.word	.LC5-(.LPIC7+4)
	.size	gzread, .-gzread
	.section	.text.gzgetc,"ax",%progbits
	.align	2
	.global	gzgetc
	.thumb
	.thumb_func
	.type	gzgetc, %function
gzgetc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L196
	ldr	r2, [r0, #12]
	movw	r1, #7247
	mov	r3, r0
	cmp	r2, r1
	bne	.L196
	ldr	r2, [r0, #76]
	cmp	r2, #0
	it	ne
	cmnne	r2, #5
	bne	.L196
	ldr	r2, [r0]
	cbz	r2, .L194
	ldr	r0, [r0, #8]
	subs	r2, r2, #1
	ldr	r1, [r3, #4]
	str	r2, [r3]
	adds	r0, r0, #1
	adds	r2, r1, #1
	str	r0, [r3, #8]
	str	r2, [r3, #4]
	ldrb	r0, [r1]	@ zero_extendqisi2
	bx	lr
.L194:
	push	{lr}
	sub	sp, sp, #12
	mov	r1, sp
	movs	r2, #1
	bl	gzread(PLT)
	cmp	r0, #0
	ite	le
	movle	r0, #-1
	ldrbgt	r0, [sp]	@ zero_extendqisi2
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L196:
	mov	r0, #-1
	bx	lr
	.size	gzgetc, .-gzgetc
	.section	.text.gzgetc_,"ax",%progbits
	.align	2
	.global	gzgetc_
	.thumb
	.thumb_func
	.type	gzgetc_, %function
gzgetc_:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	gzgetc(PLT)
	.size	gzgetc_, .-gzgetc_
	.section	.text.gzungetc,"ax",%progbits
	.align	2
	.global	gzungetc
	.thumb
	.thumb_func
	.type	gzungetc, %function
gzungetc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r1
	cmp	r1, #0
	beq	.L236
	ldr	r3, [r1, #12]
	movw	r2, #7247
	cmp	r3, r2
	bne	.L236
	ldr	r3, [r1, #76]
	cmp	r3, #0
	it	ne
	cmnne	r3, #5
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	bne	.L236
	ldr	r2, [r1, #72]
	mov	r6, r0
	cbnz	r2, .L203
.L205:
	cmp	r6, #0
	blt	.L236
	ldr	r3, [r4]
	ldr	r2, [r4, #24]
	cbz	r3, .L237
	lsls	r2, r2, #1
	cmp	r3, r2
	beq	.L238
	ldr	r5, [r4, #4]
	ldr	r1, [r4, #36]
	cmp	r5, r1
	beq	.L239
.L214:
	subs	r2, r5, #1
	adds	r3, r3, #1
	str	r3, [r4]
	mov	r0, r6
	str	r2, [r4, #4]
	movs	r2, #0
	strb	r6, [r5, #-1]
	ldr	r3, [r4, #8]
	str	r2, [r4, #56]
	subs	r3, r3, #1
	str	r3, [r4, #8]
	pop	{r4, r5, r6, pc}
.L237:
	movs	r5, #1
	ldr	r1, [r4, #36]
	lsls	r2, r2, r5
	str	r5, [r4]
	mov	r0, r6
	subs	r2, r2, #1
	adds	r5, r1, r2
	str	r5, [r4, #4]
	strb	r6, [r1, r2]
	ldr	r2, [r4, #8]
	str	r3, [r4, #56]
	subs	r2, r2, #1
	str	r2, [r4, #8]
	pop	{r4, r5, r6, pc}
.L203:
	ldr	r5, [r1, #68]
	str	r3, [r1, #72]
.L235:
	cmp	r5, #0
	beq	.L205
	ldr	r3, [r4]
	mov	r0, r4
	cmp	r3, #0
	beq	.L206
	mov	r2, r5
	blt	.L207
	cmp	r3, r5
	mov	r1, #0
	bgt	.L207
	subs	r5, r5, r3
	mov	r2, r3
.L208:
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #8]
	str	r1, [r4]
	add	r0, r0, r2
	add	r2, r2, r3
	str	r0, [r4, #4]
	str	r2, [r4, #8]
	b	.L235
.L206:
	ldr	r3, [r4, #52]
	cbz	r3, .L210
	ldr	r3, [r4, #88]
	cmp	r3, #0
	beq	.L205
.L210:
	bl	gz_fetch(PLT)
	adds	r0, r0, #1
	bne	.L235
.L236:
	mov	r0, #-1
	pop	{r4, r5, r6, pc}
.L207:
	subs	r1, r3, r2
	movs	r5, #0
	b	.L208
.L239:
	adds	r1, r5, r3
	add	r2, r2, r5
	cmp	r5, r1
	bcs	.L215
	subs	r3, r2, #1
.L217:
	ldrb	r0, [r1, #-1]!	@ zero_extendqisi2
	mov	r2, r3
	subs	r3, r3, #1
	strb	r0, [r2]
	ldr	r0, [r4, #36]
	cmp	r0, r1
	bcc	.L217
	ldr	r3, [r4]
.L215:
	mov	r5, r2
	b	.L214
.L238:
	ldr	r2, .L240
	mov	r0, r4
	mvn	r1, #2
.LPIC16:
	add	r2, pc
	bl	gz_error(PLT)
	b	.L236
.L241:
	.align	2
.L240:
	.word	.LC6-(.LPIC16+4)
	.size	gzungetc, .-gzungetc
	.section	.text.gzgets,"ax",%progbits
	.align	2
	.global	gzgets
	.thumb
	.thumb_func
	.type	gzgets, %function
gzgets:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	mov	r10, r1
	beq	.L245
	cmp	r2, #0
	mov	r6, r2
	ble	.L245
	ldr	r3, [r0, #12]
	movw	r2, #7247
	cmp	r3, r2
	bne	.L245
	ldr	r3, [r0, #76]
	cmp	r3, #0
	it	ne
	cmnne	r3, #5
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	bne	.L245
	ldr	r2, [r0, #72]
	cmp	r2, #0
	bne	.L246
.L248:
	subs	r6, r6, #1
	beq	.L245
	ldr	r3, [r4]
	mov	r9, r10
.L258:
	cmp	r3, #0
	beq	.L285
.L255:
	ldr	r8, [r4, #4]
	cmp	r3, r6
	mov	r5, r3
	it	cs
	movcs	r5, r6
	movs	r1, #10
	mov	r2, r5
	mov	r0, r8
	bl	memchr(PLT)
	mov	r7, r0
	mov	r1, r8
	mov	r0, r9
	rsb	r8, r8, r7
	cbz	r7, .L257
	add	r5, r8, #1
.L257:
	mov	r2, r5
	add	r9, r9, r5
	bl	memcpy(PLT)
	subs	r6, r6, r5
	ldr	r3, [r4]
	ldr	r1, [r4, #4]
	it	ne
	movne	r0, #1
	ldr	r2, [r4, #8]
	it	eq
	moveq	r0, #0
	cmp	r7, #0
	ite	ne
	movne	r7, #0
	andeq	r7, r0, #1
	subs	r3, r3, r5
	add	r1, r1, r5
	str	r3, [r4]
	add	r5, r5, r2
	str	r1, [r4, #4]
	str	r5, [r4, #8]
	cmp	r7, #0
	bne	.L258
.L256:
	cmp	r9, r10
	beq	.L245
	movs	r3, #0
	mov	r0, r10
	strb	r3, [r9]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L249:
	ldr	r3, [r4, #52]
	cbz	r3, .L253
	ldr	r3, [r4, #88]
	cmp	r3, #0
	beq	.L248
.L253:
	bl	gz_fetch(PLT)
	adds	r0, r0, #1
	bne	.L284
.L245:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L285:
	mov	r0, r4
	bl	gz_fetch(PLT)
	adds	r0, r0, #1
	beq	.L245
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L255
	movs	r3, #1
	str	r3, [r4, #56]
	b	.L256
.L246:
	ldr	r5, [r0, #68]
	str	r3, [r0, #72]
.L284:
	cmp	r5, #0
	beq	.L248
	ldr	r3, [r4]
	mov	r0, r4
	cmp	r3, #0
	beq	.L249
	mov	r1, r5
	blt	.L250
	cmp	r3, r5
	mov	r0, #0
	bgt	.L250
	subs	r5, r5, r3
	mov	r1, r3
.L251:
	ldr	r2, [r4, #4]
	ldr	r3, [r4, #8]
	str	r0, [r4]
	add	r2, r2, r1
	add	r1, r1, r3
	str	r2, [r4, #4]
	str	r1, [r4, #8]
	b	.L284
.L250:
	subs	r0, r3, r1
	movs	r5, #0
	b	.L251
	.size	gzgets, .-gzgets
	.section	.text.gzdirect,"ax",%progbits
	.align	2
	.global	gzdirect
	.thumb
	.thumb_func
	.type	gzdirect, %function
gzdirect:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L289
	ldr	r3, [r0, #12]
	movw	r2, #7247
	cmp	r3, r2
	beq	.L291
.L288:
	ldr	r0, [r4, #40]
	pop	{r4, pc}
.L291:
	ldr	r3, [r0, #44]
	cmp	r3, #0
	bne	.L288
	ldr	r3, [r0]
	cmp	r3, #0
	bne	.L288
	bl	gz_look(PLT)
	b	.L288
.L289:
	pop	{r4, pc}
	.size	gzdirect, .-gzdirect
	.section	.text.gzclose_r,"ax",%progbits
	.align	2
	.global	gzclose_r
	.thumb
	.thumb_func
	.type	gzclose_r, %function
gzclose_r:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r0, .L297
	ldr	r3, [r0, #12]
	movw	r2, #7247
	cmp	r3, r2
	bne	.L297
	ldr	r3, [r0, #24]
	cbnz	r3, .L304
.L294:
	ldr	r3, [r4, #76]
	movs	r1, #0
	mov	r2, r1
	mov	r0, r4
	adds	r3, r3, #5
	ite	ne
	movne	r5, r1
	mvneq	r5, #4
	bl	gz_error(PLT)
	ldr	r0, [r4, #20]
	bl	free(PLT)
	ldr	r0, [r4, #16]
	bl	close(PLT)
	mov	r6, r0
	mov	r0, r4
	bl	free(PLT)
	cmp	r6, #0
	ite	eq
	moveq	r0, r5
	movne	r0, #-1
	pop	{r4, r5, r6, pc}
.L304:
	adds	r0, r0, #84
	bl	inflateEnd(PLT)
	ldr	r0, [r4, #36]
	bl	free(PLT)
	ldr	r0, [r4, #32]
	bl	free(PLT)
	b	.L294
.L297:
	mvn	r0, #1
	pop	{r4, r5, r6, pc}
	.size	gzclose_r, .-gzclose_r
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"out of memory\000"
	.space	2
.LC1:
	.ascii	"1.2.8\000"
	.space	2
.LC2:
	.ascii	"compressed data error\000"
	.space	2
.LC3:
	.ascii	"unexpected end of file\000"
	.space	1
.LC4:
	.ascii	"internal error: inflate stream corrupt\000"
	.space	1
.LC5:
	.ascii	"requested length does not fit in int\000"
	.space	3
.LC6:
	.ascii	"out of room to push characters\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
