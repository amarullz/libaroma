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
	.file	"gzwrite.c"
	.section	.text.gz_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gz_init, %function
gz_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r6, [r0, #28]
	sub	sp, sp, #20
	mov	r0, r6
	bl	malloc(PLT)
	mov	r5, r0
	str	r0, [r4, #32]
	cmp	r0, #0
	beq	.L11
	ldr	r7, [r4, #40]
	cbz	r7, .L12
	movs	r0, #0
	str	r6, [r4, #24]
.L8:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L12:
	mov	r0, r6
	bl	malloc(PLT)
	str	r0, [r4, #36]
	cmp	r0, #0
	beq	.L13
	ldr	ip, .L15
	movs	r5, #8
	ldr	r6, [r4, #64]
	mov	lr, #56
	ldr	r1, [r4, #60]
	movs	r3, #31
.LPIC2:
	add	ip, pc
	str	r7, [r4, #116]
	str	r7, [r4, #120]
	mov	r2, r5
	str	r7, [r4, #124]
	add	r0, r4, #84
	str	r6, [sp, #4]
	str	ip, [sp, #8]
	str	r5, [sp]
	str	lr, [sp, #12]
	bl	deflateInit2_(PLT)
	mov	r3, r0
	cbnz	r0, .L6
	ldr	r0, [r4, #40]
	ldr	r2, [r4, #28]
	str	r2, [r4, #24]
	cbnz	r0, .L14
	ldr	r3, [r4, #36]
	str	r2, [r4, #100]
	str	r3, [r4, #96]
	str	r3, [r4, #4]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L6:
	ldr	r0, [r4, #36]
	bl	free(PLT)
	ldr	r0, [r4, #32]
	bl	free(PLT)
	ldr	r2, .L15+4
	mov	r0, r4
	mvn	r1, #3
.LPIC3:
	add	r2, pc
	bl	gz_error(PLT)
	mov	r0, #-1
	b	.L8
.L11:
	ldr	r2, .L15+8
	mov	r0, r4
	mvn	r1, #3
.LPIC0:
	add	r2, pc
	bl	gz_error(PLT)
	mov	r0, #-1
	b	.L8
.L13:
	mov	r0, r5
	bl	free(PLT)
	ldr	r2, .L15+12
	mov	r0, r4
	mvn	r1, #3
.LPIC1:
	add	r2, pc
	bl	gz_error(PLT)
	mov	r0, #-1
	b	.L8
.L14:
	mov	r0, r3
	b	.L8
.L16:
	.align	2
.L15:
	.word	.LC1-(.LPIC2+4)
	.word	.LC0-(.LPIC3+4)
	.word	.LC0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.size	gz_init, .-gz_init
	.section	.text.gz_comp,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gz_comp, %function
gz_comp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	ldr	r3, [r0, #24]
	mov	r9, r1
	cmp	r3, #0
	beq	.L18
	ldr	r7, [r4, #40]
	cmp	r7, #0
	bne	.L62
.L58:
	add	r6, r4, #84
	ldr	r5, [r4, #100]
	cmp	r9, #0
	bne	.L25
.L33:
	cbnz	r5, .L26
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #96]
	subs	r5, r2, r1
	bne	.L63
.L28:
	ldr	r5, [r4, #24]
	ldr	r3, [r4, #36]
	str	r5, [r4, #100]
	str	r3, [r4, #96]
.L29:
	str	r3, [r4, #4]
.L26:
	mov	r0, r6
	movs	r1, #0
	bl	deflate(PLT)
	adds	r0, r0, #2
	beq	.L32
	ldr	r3, [r4, #100]
	cmp	r3, r5
	beq	.L21
	mov	r5, r3
	b	.L33
.L63:
	ldr	r0, [r4, #16]
	mov	r2, r5
	bl	write(PLT)
	cmp	r0, #0
	blt	.L30
	cmp	r0, r5
	bne	.L30
	ldr	r5, [r4, #100]
	cmp	r5, #0
	beq	.L28
	ldr	r3, [r4, #96]
	b	.L29
.L25:
	mov	r0, r7
.L41:
	cbz	r5, .L34
	sub	r3, r0, #1
	clz	r3, r3
	lsrs	r3, r3, #5
	cmp	r9, #4
	it	ne
	orrne	r3, r3, #1
	cbnz	r3, .L34
	mov	r0, r6
	mov	r1, r9
	bl	deflate(PLT)
	adds	r3, r0, #2
	mov	r8, r5
	beq	.L32
.L39:
	ldr	r5, [r4, #100]
	cmp	r5, r8
	bne	.L41
	cmp	r9, #4
	bne	.L21
	mov	r0, r6
	bl	deflateReset(PLT)
.L21:
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L34:
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #96]
	subs	r8, r2, r1
	bne	.L64
	cbz	r5, .L37
.L65:
	ldr	r3, [r4, #96]
	mov	r8, r5
.L38:
	str	r3, [r4, #4]
	mov	r0, r6
	mov	r1, r9
	bl	deflate(PLT)
	adds	r3, r0, #2
	bne	.L39
.L32:
	ldr	r2, .L66
	mov	r0, r4
	mvn	r1, #1
	mov	r7, #-1
.LPIC4:
	add	r2, pc
	bl	gz_error(PLT)
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L64:
	ldr	r0, [r4, #16]
	mov	r2, r8
	bl	write(PLT)
	cmp	r0, #0
	blt	.L30
	cmp	r0, r8
	bne	.L30
	ldr	r5, [r4, #100]
	cmp	r5, #0
	bne	.L65
.L37:
	ldr	r8, [r4, #24]
	ldr	r3, [r4, #36]
	str	r8, [r4, #100]
	str	r3, [r4, #96]
	b	.L38
.L18:
	bl	gz_init(PLT)
	adds	r2, r0, #1
	mov	r7, r0
	beq	.L21
	ldr	r7, [r4, #40]
	cmp	r7, #0
	beq	.L58
.L62:
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #84]
	ldr	r2, [r4, #88]
	bl	write(PLT)
	cmp	r0, #0
	blt	.L30
	ldr	r3, [r4, #88]
	cmp	r0, r3
	itt	eq
	moveq	r7, #0
	streq	r7, [r4, #88]
	beq	.L21
.L30:
	bl	__errno_location(PLT)
	mov	r7, #-1
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, r7
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L67:
	.align	2
.L66:
	.word	.LC2-(.LPIC4+4)
	.size	gz_comp, .-gz_comp
	.section	.text.gz_comp.constprop.1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gz_comp.constprop.1, %function
gz_comp.constprop.1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, [r0, #24]
	cmp	r3, #0
	beq	.L69
	ldr	r7, [r4, #40]
	cmp	r7, #0
	bne	.L93
.L90:
	ldr	r5, [r4, #100]
	add	r6, r4, #84
.L83:
	cbnz	r5, .L76
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #96]
	subs	r5, r2, r1
	bne	.L77
.L81:
	ldr	r5, [r4, #24]
	ldr	r3, [r4, #36]
	str	r5, [r4, #100]
	str	r3, [r4, #96]
.L78:
	str	r3, [r4, #4]
.L76:
	movs	r1, #0
	mov	r0, r6
	bl	deflate(PLT)
	adds	r3, r0, #2
	mov	r1, r0
	beq	.L94
	ldr	r3, [r4, #100]
	cmp	r3, r5
	beq	.L72
	mov	r5, r3
	b	.L83
.L77:
	ldr	r0, [r4, #16]
	mov	r2, r5
	bl	write(PLT)
	cmp	r0, #0
	blt	.L79
	cmp	r5, r0
	bne	.L79
	ldr	r5, [r4, #100]
	cmp	r5, #0
	beq	.L81
	ldr	r3, [r4, #96]
	b	.L78
.L94:
	ldr	r2, .L95
	mov	r0, r4
	mov	r7, #-1
.LPIC5:
	add	r2, pc
	bl	gz_error(PLT)
.L72:
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, pc}
.L69:
	bl	gz_init(PLT)
	adds	r2, r0, #1
	mov	r7, r0
	beq	.L72
	ldr	r7, [r4, #40]
	cmp	r7, #0
	beq	.L90
.L93:
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #84]
	ldr	r2, [r4, #88]
	bl	write(PLT)
	cmp	r0, #0
	blt	.L79
	ldr	r3, [r4, #88]
	cmp	r0, r3
	itt	eq
	moveq	r7, #0
	streq	r7, [r4, #88]
	beq	.L72
.L79:
	bl	__errno_location(PLT)
	mov	r7, #-1
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, r7
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, pc}
.L96:
	.align	2
.L95:
	.word	.LC2-(.LPIC5+4)
	.size	gz_comp.constprop.1, .-gz_comp.constprop.1
	.section	.text.gzwrite,"ax",%progbits
	.align	2
	.global	gzwrite
	.thumb
	.thumb_func
	.type	gzwrite, %function
gzwrite:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	str	r1, [sp, #4]
	mov	fp, r0
	cmp	r0, #0
	beq	.L137
	mov	r4, r2
	ldr	r2, [r0, #12]
	movw	r1, #31153
	cmp	r2, r1
	beq	.L169
.L139:
	movs	r6, #0
.L151:
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L169:
	ldr	r6, [r0, #76]
	cmp	r6, #0
	bne	.L139
	cmp	r4, #0
	mov	r10, r4
	blt	.L170
	beq	.L151
	ldr	r2, [r0, #24]
	cmp	r2, #0
	beq	.L102
.L106:
	ldr	r2, [fp, #72]
	cmp	r2, #0
	bne	.L171
.L104:
	ldr	r5, [fp, #24]
	cmp	r4, r5
	bcs	.L130
.L133:
	ldr	r1, [fp, #88]
	ldr	r2, [fp, #32]
	cbz	r1, .L131
	ldr	r0, [fp, #84]
.L132:
	add	r0, r0, r1
	ldr	r1, [sp, #4]
	subs	r0, r0, r2
	subs	r5, r5, r0
	add	r0, r0, r2
	cmp	r5, r4
	it	cs
	movcs	r5, r4
	mov	r2, r5
	bl	memcpy(PLT)
	ldr	r1, [fp, #88]
	subs	r4, r4, r5
	ldr	r2, [fp, #8]
	add	r1, r1, r5
	add	r2, r2, r5
	str	r1, [fp, #88]
	str	r2, [fp, #8]
	bne	.L172
	mov	r6, r10
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L130:
	ldr	r2, [fp, #88]
	cbz	r2, .L135
	mov	r0, fp
	bl	gz_comp.constprop.1(PLT)
	adds	r0, r0, #1
	beq	.L151
.L135:
	ldr	r2, [fp, #8]
	mov	r0, fp
	ldr	r3, [sp, #4]
	str	r4, [fp, #88]
	add	r2, r2, r4
	str	r3, [fp, #84]
	str	r2, [fp, #8]
	bl	gz_comp.constprop.1(PLT)
	cmp	r0, #-1
	ite	ne
	movne	r6, r4
	moveq	r6, #0
	b	.L151
.L131:
	mov	r0, r2
	str	r2, [fp, #84]
	b	.L132
.L172:
	ldr	r3, [sp, #4]
	mov	r0, fp
	add	r3, r3, r5
	str	r3, [sp, #4]
	bl	gz_comp.constprop.1(PLT)
	adds	r0, r0, #1
	beq	.L151
	ldr	r5, [fp, #24]
	b	.L133
.L137:
	mov	r6, r0
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L170:
	ldr	r2, .L176
	mvn	r1, #2
.LPIC6:
	add	r2, pc
	bl	gz_error(PLT)
	b	.L151
.L102:
	bl	gz_init(PLT)
	adds	r0, r0, #1
	bne	.L106
	b	.L151
.L171:
	ldr	r2, [fp, #88]
	movs	r1, #0
	str	r1, [fp, #72]
	ldr	r9, [fp, #68]
	cmp	r2, #0
	bne	.L107
.L110:
	add	r5, fp, #84
	movs	r1, #1
	cmp	r9, #0
	beq	.L104
.L136:
	ldr	r2, [fp, #24]
	cmp	r2, #0
	blt	.L111
	cmp	r2, r9
	it	le
	movle	r8, r2
	bgt	.L111
.L112:
	cmp	r1, #0
	bne	.L173
.L113:
	ldr	r0, [fp, #8]
	ldr	r1, [fp, #32]
	str	r8, [fp, #88]
	add	r0, r0, r8
	str	r0, [fp, #8]
	str	r1, [fp, #84]
	cmp	r2, #0
	beq	.L114
.L118:
	ldr	r2, [fp, #40]
	cbnz	r2, .L174
	ldr	r7, [fp, #100]
.L129:
	cbnz	r7, .L122
	ldr	r1, [fp, #4]
	ldr	r2, [fp, #96]
	subs	r7, r2, r1
	bne	.L123
.L127:
	ldr	r7, [fp, #24]
	ldr	r1, [fp, #36]
	str	r7, [fp, #100]
	str	r1, [fp, #96]
.L124:
	str	r1, [fp, #4]
.L122:
	movs	r1, #0
	mov	r0, r5
	bl	deflate(PLT)
	adds	r3, r0, #2
	mov	r1, r0
	beq	.L175
	ldr	r1, [fp, #100]
	cmp	r1, r7
	beq	.L121
	mov	r7, r1
	b	.L129
.L111:
	mov	r8, r9
	b	.L112
.L123:
	ldr	r0, [fp, #16]
	mov	r2, r7
	bl	write(PLT)
	cmp	r0, #0
	blt	.L125
	cmp	r7, r0
	bne	.L125
	ldr	r7, [fp, #100]
	cmp	r7, #0
	beq	.L127
	ldr	r1, [fp, #96]
	b	.L124
.L174:
	ldr	r0, [fp, #16]
	ldr	r1, [fp, #84]
	ldr	r2, [fp, #88]
	bl	write(PLT)
	cmp	r0, #0
	blt	.L125
	ldr	r2, [fp, #88]
	cmp	r0, r2
	bne	.L125
	movs	r3, #0
	str	r3, [fp, #88]
.L121:
	subs	r9, r9, r8
	beq	.L104
	movs	r1, #0
	b	.L136
.L175:
	ldr	r2, .L176+4
	mov	r0, fp
.LPIC7:
	add	r2, pc
	bl	gz_error(PLT)
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L114:
	mov	r0, fp
	bl	gz_init(PLT)
	adds	r0, r0, #1
	bne	.L118
	b	.L151
.L173:
	mov	r2, r8
	ldr	r0, [fp, #32]
	movs	r1, #0
	bl	memset(PLT)
	ldr	r2, [fp, #24]
	b	.L113
.L125:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, #-1
	mov	r2, r0
	mov	r0, fp
	bl	gz_error(PLT)
	b	.L151
.L107:
	mov	r0, fp
	bl	gz_comp.constprop.1(PLT)
	adds	r0, r0, #1
	bne	.L110
	b	.L151
.L177:
	.align	2
.L176:
	.word	.LC3-(.LPIC6+4)
	.word	.LC2-(.LPIC7+4)
	.size	gzwrite, .-gzwrite
	.section	.text.gzputc,"ax",%progbits
	.align	2
	.global	gzputc
	.thumb
	.thumb_func
	.type	gzputc, %function
gzputc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L234
	ldr	r3, [r0, #12]
	movw	r2, #31153
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	sub	sp, sp, #8
	cmp	r3, r2
	bne	.L185
	ldr	r3, [r0, #76]
	cmp	r3, #0
	bne	.L185
	ldr	r2, [r0, #72]
	mov	r9, r1
	cmp	r2, #0
	bne	.L235
.L182:
	ldr	r2, [r4, #24]
	cbz	r2, .L206
	ldr	r1, [r4, #88]
	ldr	r3, [r4, #32]
	cbz	r1, .L207
	ldr	r0, [r4, #84]
.L208:
	add	r1, r1, r0
	subs	r1, r1, r3
	cmp	r2, r1
	bls	.L206
	strb	r9, [r3, r1]
	uxtb	r0, r9
	ldr	r2, [r4, #88]
	ldr	r3, [r4, #8]
	adds	r2, r2, #1
	adds	r3, r3, #1
	str	r2, [r4, #88]
	str	r3, [r4, #8]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L206:
	add	r1, sp, #8
	mov	r0, r4
	strb	r9, [r1, #-8]!
	movs	r2, #1
	mov	r1, sp
	bl	gzwrite(PLT)
	cmp	r0, #1
	bne	.L185
	uxtb	r0, r9
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L201:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, #-1
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
.L185:
	mov	r0, #-1
.L239:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L207:
	mov	r0, r3
	str	r3, [r4, #84]
	b	.L208
.L235:
	ldr	r2, [r0, #88]
	str	r3, [r0, #72]
	ldr	r8, [r0, #68]
	cmp	r2, #0
	bne	.L183
.L186:
	add	r6, r4, #84
	movs	r2, #1
	mov	r10, #0
	cmp	r8, #0
	beq	.L182
.L209:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	blt	.L187
	cmp	r3, r8
	it	le
	movle	r7, r3
	bgt	.L187
	cbnz	r2, .L236
.L189:
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #32]
	str	r7, [r4, #88]
	add	r1, r1, r7
	str	r1, [r4, #8]
	str	r2, [r4, #84]
	cmp	r3, #0
	beq	.L190
.L194:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L237
	ldr	r5, [r4, #100]
.L205:
	cbnz	r5, .L198
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #96]
	subs	r5, r2, r1
	bne	.L199
.L203:
	ldr	r5, [r4, #24]
	ldr	r3, [r4, #36]
	str	r5, [r4, #100]
	str	r3, [r4, #96]
.L200:
	str	r3, [r4, #4]
.L198:
	movs	r1, #0
	mov	r0, r6
	bl	deflate(PLT)
	adds	r3, r0, #2
	mov	r1, r0
	beq	.L238
	ldr	r3, [r4, #100]
	cmp	r3, r5
	beq	.L197
	mov	r5, r3
	b	.L205
.L187:
	mov	r7, r8
	cmp	r2, #0
	beq	.L189
.L236:
	ldr	r0, [r4, #32]
	movs	r1, #0
	mov	r2, r7
	bl	memset(PLT)
	ldr	r3, [r4, #24]
	b	.L189
.L199:
	ldr	r0, [r4, #16]
	mov	r2, r5
	bl	write(PLT)
	cmp	r0, #0
	blt	.L201
	cmp	r5, r0
	bne	.L201
	ldr	r5, [r4, #100]
	cmp	r5, #0
	beq	.L203
	ldr	r3, [r4, #96]
	b	.L200
.L237:
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #84]
	ldr	r2, [r4, #88]
	bl	write(PLT)
	cmp	r0, #0
	blt	.L201
	ldr	r3, [r4, #88]
	cmp	r0, r3
	bne	.L201
	str	r10, [r4, #88]
.L197:
	subs	r8, r8, r7
	beq	.L182
	movs	r2, #0
	b	.L209
.L238:
	ldr	r2, .L240
	mov	r0, r4
.LPIC8:
	add	r2, pc
	bl	gz_error(PLT)
	mov	r0, #-1
	b	.L239
.L190:
	mov	r0, r4
	bl	gz_init(PLT)
	adds	r0, r0, #1
	bne	.L194
	b	.L185
.L183:
	bl	gz_comp.constprop.1(PLT)
	adds	r0, r0, #1
	bne	.L186
	b	.L185
.L234:
	mov	r0, #-1
	bx	lr
.L241:
	.align	2
.L240:
	.word	.LC2-(.LPIC8+4)
	.size	gzputc, .-gzputc
	.section	.text.gzputs,"ax",%progbits
	.align	2
	.global	gzputs
	.thumb
	.thumb_func
	.type	gzputs, %function
gzputs:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r6, r0
	mov	r0, r1
	mov	r5, r1
	bl	strlen(PLT)
	mov	r4, r0
	mov	r1, r5
	mov	r2, r4
	mov	r0, r6
	bl	gzwrite(PLT)
	adds	r3, r0, #0
	it	ne
	movne	r3, #1
	cmp	r4, #0
	ite	ne
	movne	r4, r3
	orreq	r4, r3, #1
	cmp	r4, #0
	it	eq
	moveq	r0, #-1
	pop	{r4, r5, r6, pc}
	.size	gzputs, .-gzputs
	.section	.text.gzvprintf,"ax",%progbits
	.align	2
	.global	gzvprintf
	.thumb
	.thumb_func
	.type	gzvprintf, %function
gzvprintf:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	cmp	r0, #0
	beq	.L281
	ldr	r3, [r0, #12]
	mov	r10, r2
	movw	r2, #31153
	mov	r4, r0
	cmp	r3, r2
	beq	.L248
.L249:
	movs	r6, #0
.L290:
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L248:
	ldr	r6, [r0, #76]
	cmp	r6, #0
	bne	.L249
	ldr	r3, [r0, #24]
	mov	r9, r1
	cmp	r3, #0
	beq	.L250
.L253:
	ldr	r3, [r4, #72]
	cmp	r3, #0
	bne	.L306
.L252:
	ldr	r3, [r4, #88]
	cbz	r3, .L279
	mov	r0, r4
	bl	gz_comp.constprop.1(PLT)
	adds	r0, r0, #1
	beq	.L249
.L279:
	ldr	r5, [r4, #24]
	movs	r7, #0
	ldr	r0, [r4, #32]
	mov	r3, r10
	mov	r2, r9
	subs	r6, r5, #1
	mov	r1, r5
	strb	r7, [r0, r6]
	ldr	r0, [r4, #32]
	bl	vsnprintf(PLT)
	cmp	r0, r7
	ite	gt
	movgt	r3, #0
	movle	r3, #1
	cmp	r0, r5
	ite	lt
	movlt	r5, r3
	orrge	r5, r3, #1
	cmp	r5, #0
	bne	.L249
	ldr	r3, [r4, #32]
	ldrb	r2, [r3, r6]	@ zero_extendqisi2
	cmp	r2, #0
	bne	.L249
	ldr	r2, [r4, #8]
	mov	r6, r0
	str	r0, [r4, #88]
	str	r3, [r4, #84]
	add	r2, r2, r0
	str	r2, [r4, #8]
	b	.L290
.L250:
	bl	gz_init(PLT)
	adds	r0, r0, #1
	bne	.L253
	b	.L249
.L306:
	ldr	r3, [r4, #88]
	movs	r2, #0
	str	r2, [r4, #72]
	ldr	r8, [r4, #68]
	cmp	r3, #0
	bne	.L254
.L257:
	add	r5, r4, #84
	movs	r2, #1
	mov	fp, #0
	cmp	r8, #0
	beq	.L252
.L280:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	blt	.L258
	cmp	r3, r8
	it	le
	strle	r3, [sp, #4]
	ble	.L259
.L258:
	str	r8, [sp, #4]
.L259:
	cmp	r2, #0
	bne	.L307
.L260:
	ldr	r1, [r4, #8]
	ldr	r0, [sp, #4]
	ldr	r2, [r4, #32]
	add	r1, r1, r0
	str	r0, [r4, #88]
	str	r1, [r4, #8]
	str	r2, [r4, #84]
	cmp	r3, #0
	beq	.L261
.L265:
	ldr	r3, [r4, #40]
	cbnz	r3, .L308
	ldr	r7, [r4, #100]
.L276:
	cbnz	r7, .L269
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #96]
	subs	r7, r2, r1
	bne	.L270
.L274:
	ldr	r7, [r4, #24]
	ldr	r2, [r4, #36]
	str	r7, [r4, #100]
	str	r2, [r4, #96]
.L271:
	str	r2, [r4, #4]
.L269:
	movs	r1, #0
	mov	r0, r5
	bl	deflate(PLT)
	adds	r3, r0, #2
	mov	r1, r0
	beq	.L309
	ldr	r2, [r4, #100]
	cmp	r2, r7
	beq	.L268
	mov	r7, r2
	b	.L276
.L270:
	ldr	r0, [r4, #16]
	mov	r2, r7
	bl	write(PLT)
	cmp	r0, #0
	blt	.L272
	cmp	r7, r0
	bne	.L272
	ldr	r7, [r4, #100]
	cmp	r7, #0
	beq	.L274
	ldr	r2, [r4, #96]
	b	.L271
.L308:
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #84]
	ldr	r2, [r4, #88]
	bl	write(PLT)
	cmp	r0, #0
	blt	.L272
	ldr	r3, [r4, #88]
	cmp	r0, r3
	bne	.L272
	str	fp, [r4, #88]
.L268:
	ldr	r3, [sp, #4]
	subs	r8, r8, r3
	beq	.L252
	movs	r2, #0
	b	.L280
.L309:
	ldr	r2, .L310
	mov	r0, r4
.LPIC9:
	add	r2, pc
	bl	gz_error(PLT)
	mov	r0, r6
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L261:
	mov	r0, r4
	bl	gz_init(PLT)
	adds	r0, r0, #1
	bne	.L265
	b	.L290
.L307:
	ldr	r0, [r4, #32]
	movs	r1, #0
	ldr	r2, [sp, #4]
	bl	memset(PLT)
	ldr	r3, [r4, #24]
	b	.L260
.L272:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, #-1
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
	b	.L290
.L254:
	mov	r0, r4
	bl	gz_comp.constprop.1(PLT)
	adds	r0, r0, #1
	bne	.L257
	b	.L290
.L281:
	mov	r6, #-1
	b	.L290
.L311:
	.align	2
.L310:
	.word	.LC2-(.LPIC9+4)
	.size	gzvprintf, .-gzvprintf
	.section	.text.gzprintf,"ax",%progbits
	.align	2
	.global	gzprintf
	.thumb
	.thumb_func
	.type	gzprintf, %function
gzprintf:
	@ args = 4, pretend = 12, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 1
	push	{r1, r2, r3}
	push	{lr}
	sub	sp, sp, #8
	add	r3, sp, #12
	ldr	r1, [r3], #4
	mov	r2, r3
	str	r3, [sp, #4]
	bl	gzvprintf(PLT)
	add	sp, sp, #8
	@ sp needed
	ldr	lr, [sp], #4
	add	sp, sp, #12
	bx	lr
	.size	gzprintf, .-gzprintf
	.section	.text.gzflush,"ax",%progbits
	.align	2
	.global	gzflush
	.thumb
	.thumb_func
	.type	gzflush, %function
gzflush:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L341
	ldr	r3, [r0, #12]
	movw	r2, #31153
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	cmp	r3, r2
	bne	.L344
	ldr	r3, [r0, #76]
	cmp	r3, #0
	bne	.L344
	cmp	r1, #4
	mov	r9, r1
	bhi	.L344
	ldr	r2, [r0, #72]
	cmp	r2, #0
	beq	.L316
	ldr	r2, [r0, #88]
	str	r3, [r0, #72]
	ldr	r8, [r0, #68]
	cmp	r2, #0
	bne	.L317
.L320:
	add	r6, r4, #84
	movs	r2, #1
	mov	r10, #0
	cmp	r8, #0
	beq	.L316
.L340:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	blt	.L321
	cmp	r3, r8
	it	le
	movle	r7, r3
	bgt	.L321
	cmp	r2, #0
	bne	.L365
.L323:
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #32]
	str	r7, [r4, #88]
	add	r1, r1, r7
	str	r1, [r4, #8]
	str	r2, [r4, #84]
	cmp	r3, #0
	beq	.L324
.L328:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L366
	ldr	r5, [r4, #100]
.L339:
	cbnz	r5, .L332
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #96]
	subs	r5, r2, r1
	bne	.L333
.L337:
	ldr	r5, [r4, #24]
	ldr	r3, [r4, #36]
	str	r5, [r4, #100]
	str	r3, [r4, #96]
.L334:
	str	r3, [r4, #4]
.L332:
	movs	r1, #0
	mov	r0, r6
	bl	deflate(PLT)
	adds	r3, r0, #2
	mov	r1, r0
	beq	.L367
	ldr	r3, [r4, #100]
	cmp	r3, r5
	beq	.L331
	mov	r5, r3
	b	.L339
.L316:
	mov	r1, r9
	mov	r0, r4
	bl	gz_comp(PLT)
	ldr	r0, [r4, #76]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L321:
	mov	r7, r8
	cmp	r2, #0
	beq	.L323
.L365:
	ldr	r0, [r4, #32]
	movs	r1, #0
	mov	r2, r7
	bl	memset(PLT)
	ldr	r3, [r4, #24]
	b	.L323
.L333:
	ldr	r0, [r4, #16]
	mov	r2, r5
	bl	write(PLT)
	cmp	r0, #0
	blt	.L335
	cmp	r5, r0
	bne	.L335
	ldr	r5, [r4, #100]
	cmp	r5, #0
	beq	.L337
	ldr	r3, [r4, #96]
	b	.L334
.L366:
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #84]
	ldr	r2, [r4, #88]
	bl	write(PLT)
	cmp	r0, #0
	blt	.L335
	ldr	r3, [r4, #88]
	cmp	r0, r3
	bne	.L335
	str	r10, [r4, #88]
.L331:
	subs	r8, r8, r7
	beq	.L316
	movs	r2, #0
	b	.L340
.L367:
	ldr	r2, .L368
	mov	r0, r4
.LPIC10:
	add	r2, pc
	bl	gz_error(PLT)
.L319:
	mov	r0, #-1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L324:
	mov	r0, r4
	bl	gz_init(PLT)
	adds	r0, r0, #1
	bne	.L328
	b	.L319
.L335:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, #-1
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
	mov	r0, #-1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L344:
	mvn	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L317:
	bl	gz_comp.constprop.1(PLT)
	adds	r0, r0, #1
	bne	.L320
	b	.L319
.L341:
	mov	r0, #-1
	bx	lr
.L369:
	.align	2
.L368:
	.word	.LC2-(.LPIC10+4)
	.size	gzflush, .-gzflush
	.section	.text.gzsetparams,"ax",%progbits
	.align	2
	.global	gzsetparams
	.thumb
	.thumb_func
	.type	gzsetparams, %function
gzsetparams:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #12
	cmp	r0, #0
	beq	.L402
	ldr	r3, [r0, #12]
	mov	r10, r2
	movw	r2, #31153
	add	r5, r0, #84
	cmp	r3, r2
	bne	.L402
	ldr	r8, [r0, #76]
	cmp	r8, #0
	bne	.L402
	ldr	r3, [r0, #60]
	mov	r9, r1
	cmp	r3, r1
	beq	.L429
	ldr	r3, [r4, #72]
	cbnz	r3, .L430
.L373:
	ldr	r3, [r4, #24]
	cbz	r3, .L397
	ldr	r3, [r4, #88]
	cbz	r3, .L398
	mov	r0, r4
	movs	r1, #1
	bl	gz_comp(PLT)
	adds	r0, r0, #1
	it	eq
	ldreq	r8, [r4, #76]
	beq	.L412
.L398:
	mov	r0, r5
	mov	r1, r9
	mov	r2, r10
	bl	deflateParams(PLT)
.L397:
	str	r9, [r4, #60]
	str	r10, [r4, #64]
.L412:
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L429:
	ldr	r3, [r0, #64]
	cmp	r3, r10
	beq	.L412
	ldr	r3, [r4, #72]
	cmp	r3, #0
	beq	.L373
.L430:
	ldr	r3, [r4, #88]
	movs	r2, #0
	ldr	r1, [r4, #68]
	str	r2, [r4, #72]
	str	r1, [sp, #4]
	cmp	r3, #0
	bne	.L374
.L377:
	ldr	r3, [sp, #4]
	movs	r2, #1
	mov	fp, #0
	cmp	r3, #0
	beq	.L373
.L399:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	blt	.L378
	ldr	r1, [sp, #4]
	cmp	r3, r1
	it	le
	movle	r6, r3
	ble	.L379
.L378:
	ldr	r6, [sp, #4]
.L379:
	cmp	r2, #0
	bne	.L431
.L380:
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #32]
	str	r6, [r4, #88]
	add	r1, r1, r6
	str	r1, [r4, #8]
	str	r2, [r4, #84]
	cmp	r3, #0
	beq	.L381
.L385:
	ldr	r3, [r4, #40]
	cbnz	r3, .L432
	ldr	r7, [r4, #100]
.L396:
	cbnz	r7, .L389
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #96]
	subs	r7, r2, r1
	bne	.L390
.L394:
	ldr	r7, [r4, #24]
	ldr	r2, [r4, #36]
	str	r7, [r4, #100]
	str	r2, [r4, #96]
.L391:
	str	r2, [r4, #4]
.L389:
	movs	r1, #0
	mov	r0, r5
	bl	deflate(PLT)
	adds	r3, r0, #2
	mov	r1, r0
	beq	.L433
	ldr	r2, [r4, #100]
	cmp	r2, r7
	beq	.L388
	mov	r7, r2
	b	.L396
.L390:
	ldr	r0, [r4, #16]
	mov	r2, r7
	bl	write(PLT)
	cmp	r0, #0
	blt	.L392
	cmp	r7, r0
	bne	.L392
	ldr	r7, [r4, #100]
	cmp	r7, #0
	beq	.L394
	ldr	r2, [r4, #96]
	b	.L391
.L432:
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #84]
	ldr	r2, [r4, #88]
	bl	write(PLT)
	cmp	r0, #0
	blt	.L392
	ldr	r3, [r4, #88]
	cmp	r0, r3
	bne	.L392
	str	fp, [r4, #88]
.L388:
	ldr	r3, [sp, #4]
	subs	r3, r3, r6
	str	r3, [sp, #4]
	beq	.L373
	movs	r2, #0
	b	.L399
.L433:
	ldr	r2, .L434
	mov	r0, r4
.LPIC11:
	add	r2, pc
	bl	gz_error(PLT)
.L376:
	mov	r8, #-1
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L381:
	mov	r0, r4
	bl	gz_init(PLT)
	adds	r0, r0, #1
	bne	.L385
	b	.L376
.L431:
	ldr	r0, [r4, #32]
	movs	r1, #0
	mov	r2, r6
	bl	memset(PLT)
	ldr	r3, [r4, #24]
	b	.L380
.L392:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, #-1
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
	b	.L376
.L374:
	mov	r0, r4
	bl	gz_comp.constprop.1(PLT)
	adds	r0, r0, #1
	bne	.L377
	b	.L376
.L402:
	mvn	r8, #1
	mov	r0, r8
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L435:
	.align	2
.L434:
	.word	.LC2-(.LPIC11+4)
	.size	gzsetparams, .-gzsetparams
	.section	.text.gzclose_w,"ax",%progbits
	.align	2
	.global	gzclose_w
	.thumb
	.thumb_func
	.type	gzclose_w, %function
gzclose_w:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L485
	ldr	r3, [r0, #12]
	movw	r2, #31153
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r0
	cmp	r3, r2
	bne	.L486
	ldr	r3, [r0, #72]
	add	r6, r0, #84
	cmp	r3, #0
	bne	.L519
.L438:
	ldr	r3, [r4, #24]
	mov	r7, r6
	movs	r6, #0
	cmp	r3, #0
	beq	.L462
.L466:
	ldr	r0, [r4, #40]
	cmp	r0, #0
	bne	.L520
	ldr	r3, [r4, #100]
.L478:
	cbz	r3, .L470
	cmp	r0, #1
	beq	.L470
	mov	r0, r7
	movs	r1, #4
	mov	r5, r3
	bl	deflate(PLT)
	adds	r3, r0, #2
	beq	.L521
.L476:
	ldr	r3, [r4, #100]
	cmp	r5, r3
	bne	.L478
	mov	r0, r7
	bl	deflateReset(PLT)
.L484:
	ldr	r3, [r4, #24]
	cbz	r3, .L479
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L522
.L480:
	ldr	r0, [r4, #32]
	bl	free(PLT)
.L479:
	movs	r1, #0
	mov	r0, r4
	mov	r2, r1
	bl	gz_error(PLT)
	ldr	r0, [r4, #20]
	bl	free(PLT)
	ldr	r0, [r4, #16]
	bl	close(PLT)
	cmp	r0, #-1
	it	eq
	moveq	r6, #-1
	mov	r0, r4
	bl	free(PLT)
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L470:
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #96]
	subs	r5, r2, r1
	bne	.L523
	cbz	r3, .L474
.L524:
	mov	r5, r3
	ldr	r3, [r4, #96]
.L475:
	str	r3, [r4, #4]
	mov	r0, r7
	movs	r1, #4
	bl	deflate(PLT)
	adds	r3, r0, #2
	bne	.L476
.L521:
	ldr	r2, .L528
	mov	r1, r0
	mov	r0, r4
.LPIC13:
	add	r2, pc
	bl	gz_error(PLT)
.L465:
	ldr	r6, [r4, #76]
	b	.L484
.L523:
	ldr	r0, [r4, #16]
	mov	r2, r5
	bl	write(PLT)
	cmp	r0, #0
	blt	.L473
	cmp	r5, r0
	bne	.L473
	ldr	r3, [r4, #100]
	cmp	r3, #0
	bne	.L524
.L474:
	ldr	r5, [r4, #24]
	ldr	r3, [r4, #36]
	str	r5, [r4, #100]
	str	r3, [r4, #96]
	b	.L475
.L520:
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #84]
	ldr	r2, [r4, #88]
	bl	write(PLT)
	cmp	r0, #0
	blt	.L473
	ldr	r3, [r4, #88]
	cmp	r0, r3
	itt	eq
	moveq	r3, #0
	streq	r3, [r4, #88]
	beq	.L484
.L473:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, #-1
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
	b	.L465
.L519:
	ldr	r3, [r0, #88]
	movs	r2, #0
	str	r2, [r0, #72]
	ldr	r9, [r0, #68]
	cmp	r3, #0
	bne	.L439
.L441:
	add	r6, r4, #84
	movs	r2, #1
	mov	r7, r6
	mov	r10, #0
	cmp	r9, #0
	beq	.L438
.L482:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	blt	.L443
	cmp	r3, r9
	it	le
	movle	r8, r3
	bgt	.L443
	cbnz	r2, .L525
.L445:
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #32]
	str	r8, [r4, #88]
	add	r1, r1, r8
	str	r1, [r4, #8]
	str	r2, [r4, #84]
	cmp	r3, #0
	beq	.L446
.L450:
	ldr	r3, [r4, #40]
	cmp	r3, #0
	bne	.L526
	ldr	r5, [r4, #100]
.L461:
	cbnz	r5, .L454
	ldr	r1, [r4, #4]
	ldr	r2, [r4, #96]
	subs	r5, r2, r1
	bne	.L455
.L459:
	ldr	r5, [r4, #24]
	ldr	r3, [r4, #36]
	str	r5, [r4, #100]
	str	r3, [r4, #96]
.L456:
	str	r3, [r4, #4]
.L454:
	mov	r0, r6
	movs	r1, #0
	bl	deflate(PLT)
	adds	r2, r0, #2
	beq	.L527
	ldr	r3, [r4, #100]
	cmp	r3, r5
	beq	.L453
	mov	r5, r3
	b	.L461
.L443:
	mov	r8, r9
	cmp	r2, #0
	beq	.L445
.L525:
	ldr	r0, [r4, #32]
	movs	r1, #0
	mov	r2, r8
	bl	memset(PLT)
	ldr	r3, [r4, #24]
	b	.L445
.L455:
	ldr	r0, [r4, #16]
	mov	r2, r5
	bl	write(PLT)
	cmp	r0, #0
	blt	.L458
	cmp	r5, r0
	bne	.L458
	ldr	r5, [r4, #100]
	cmp	r5, #0
	beq	.L459
	ldr	r3, [r4, #96]
	b	.L456
.L526:
	ldr	r0, [r4, #16]
	ldr	r1, [r4, #84]
	ldr	r2, [r4, #88]
	bl	write(PLT)
	cmp	r0, #0
	blt	.L458
	ldr	r3, [r4, #88]
	cmp	r0, r3
	bne	.L458
	str	r10, [r4, #88]
.L453:
	subs	r9, r9, r8
	beq	.L438
	movs	r2, #0
	b	.L482
.L527:
	ldr	r2, .L528+4
	mov	r1, r0
	mov	r0, r4
.LPIC12:
	add	r2, pc
	bl	gz_error(PLT)
.L442:
	ldr	r3, [r4, #24]
	ldr	r6, [r4, #76]
	cmp	r3, #0
	bne	.L466
.L462:
	mov	r0, r4
	bl	gz_init(PLT)
	adds	r0, r0, #1
	bne	.L466
	b	.L465
.L446:
	mov	r0, r4
	bl	gz_init(PLT)
	adds	r0, r0, #1
	bne	.L450
	b	.L442
.L458:
	bl	__errno_location(PLT)
	ldr	r0, [r0]
	bl	strerror(PLT)
	mov	r1, #-1
	mov	r2, r0
	mov	r0, r4
	bl	gz_error(PLT)
	b	.L442
.L439:
	bl	gz_comp.constprop.1(PLT)
	adds	r0, r0, #1
	it	eq
	addeq	r7, r4, #84
	bne	.L441
	b	.L442
.L522:
	mov	r0, r7
	bl	deflateEnd(PLT)
	ldr	r0, [r4, #36]
	bl	free(PLT)
	b	.L480
.L486:
	mvn	r0, #1
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L485:
	mvn	r0, #1
	bx	lr
.L529:
	.align	2
.L528:
	.word	.LC2-(.LPIC13+4)
	.word	.LC2-(.LPIC12+4)
	.size	gzclose_w, .-gzclose_w
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"out of memory\000"
	.space	2
.LC1:
	.ascii	"1.2.8\000"
	.space	2
.LC2:
	.ascii	"internal error: deflate stream corrupt\000"
	.space	1
.LC3:
	.ascii	"requested length does not fit in int\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
