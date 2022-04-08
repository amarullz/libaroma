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
	.file	"gzlib.c"
	.section	.text.gzbuffer,"ax",%progbits
	.align	2
	.global	gzbuffer
	.thumb
	.thumb_func
	.type	gzbuffer, %function
gzbuffer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	cbz	r0, .L4
	ldr	r2, [r0, #12]
	movw	r0, #7247
	push	{r4}
	movw	r4, #31153
	cmp	r2, r4
	it	ne
	cmpne	r2, r0
	bne	.L6
	ldr	r0, [r3, #24]
	cbnz	r0, .L6
	cmp	r1, #1
	it	ls
	movls	r1, #2
	str	r1, [r3, #28]
.L2:
	ldr	r4, [sp], #4
	bx	lr
.L6:
	mov	r0, #-1
	b	.L2
.L4:
	mov	r0, #-1
	bx	lr
	.size	gzbuffer, .-gzbuffer
	.section	.text.gztell64,"ax",%progbits
	.align	2
	.global	gztell64
	.thumb
	.thumb_func
	.type	gztell64, %function
gztell64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L14
	ldr	r3, [r0, #12]
	movw	r1, #31153
	movw	r2, #7247
	cmp	r3, r1
	it	ne
	cmpne	r3, r2
	bne	.L14
	ldr	r3, [r0, #72]
	ldr	r2, [r0, #8]
	cbz	r3, .L12
	ldr	r3, [r0, #68]
.L12:
	adds	r0, r2, r3
	bx	lr
.L14:
	mov	r0, #-1
	bx	lr
	.size	gztell64, .-gztell64
	.section	.text.gztell,"ax",%progbits
	.align	2
	.global	gztell
	.thumb
	.thumb_func
	.type	gztell, %function
gztell:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	gztell64(PLT)
	.size	gztell, .-gztell
	.section	.text.gzoffset64,"ax",%progbits
	.align	2
	.global	gzoffset64
	.thumb
	.thumb_func
	.type	gzoffset64, %function
gzoffset64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	cbz	r0, .L20
	ldr	r1, [r0, #12]
	movw	r3, #31153
	movw	r5, #7247
	cmp	r1, r3
	it	ne
	cmpne	r1, r5
	ite	ne
	movne	r1, #1
	moveq	r1, #0
	bne	.L20
	ldr	r0, [r0, #16]
	movs	r2, #1
	bl	lseek(PLT)
	adds	r3, r0, #1
	beq	.L20
	ldr	r3, [r4, #12]
	cmp	r3, r5
	itt	eq
	ldreq	r3, [r4, #88]
	subeq	r0, r0, r3
	pop	{r3, r4, r5, pc}
.L20:
	mov	r0, #-1
	pop	{r3, r4, r5, pc}
	.size	gzoffset64, .-gzoffset64
	.section	.text.gzoffset,"ax",%progbits
	.align	2
	.global	gzoffset
	.thumb
	.thumb_func
	.type	gzoffset, %function
gzoffset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	gzoffset64(PLT)
	.size	gzoffset, .-gzoffset
	.section	.text.gzeof,"ax",%progbits
	.align	2
	.global	gzeof
	.thumb
	.thumb_func
	.type	gzeof, %function
gzeof:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L28
	ldr	r3, [r0, #12]
	movw	r2, #7247
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L31
.L28:
	bx	lr
.L31:
	ldr	r0, [r0, #56]
	bx	lr
	.size	gzeof, .-gzeof
	.section	.text.gzerror,"ax",%progbits
	.align	2
	.global	gzerror
	.thumb
	.thumb_func
	.type	gzerror, %function
gzerror:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L44
	ldr	r3, [r0, #12]
	movw	r2, #7247
	push	{r4}
	movw	r4, #31153
	cmp	r3, r4
	it	ne
	cmpne	r3, r2
	bne	.L36
	cbz	r1, .L34
	ldr	r3, [r0, #76]
	str	r3, [r1]
.L34:
	ldr	r3, [r0, #76]
	adds	r3, r3, #4
	beq	.L37
	ldr	r0, [r0, #80]
	cbz	r0, .L45
.L33:
	ldr	r4, [sp], #4
.L44:
	bx	lr
.L37:
	ldr	r0, .L46
.LPIC0:
	add	r0, pc
	b	.L33
.L36:
	movs	r0, #0
	b	.L33
.L45:
	ldr	r0, .L46+4
.LPIC1:
	add	r0, pc
	b	.L33
.L47:
	.align	2
.L46:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.size	gzerror, .-gzerror
	.section	.text.gz_error,"ax",%progbits
	.align	2
	.global	gz_error
	.thumb
	.thumb_func
	.type	gz_error, %function
gz_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r0, [r0, #80]
	sub	sp, sp, #12
	mov	r5, r1
	mov	r6, r2
	cbz	r0, .L49
	ldr	r3, [r4, #76]
	adds	r3, r3, #4
	beq	.L50
	bl	free(PLT)
.L50:
	movs	r3, #0
	str	r3, [r4, #80]
.L49:
	cmp	r5, #0
	it	ne
	cmnne	r5, #5
	str	r5, [r4, #76]
	itt	ne
	movne	r3, #0
	strne	r3, [r4]
	cbz	r6, .L48
	adds	r5, r5, #4
	beq	.L48
	ldr	r7, [r4, #20]
	mov	r0, r7
	bl	strlen(PLT)
	mov	r5, r0
	mov	r0, r6
	bl	strlen(PLT)
	add	r0, r0, r5
	adds	r0, r0, #3
	bl	malloc(PLT)
	mov	r5, r0
	str	r0, [r4, #80]
	cbz	r0, .L70
	mov	r0, r7
	bl	strlen(PLT)
	mov	r4, r0
	mov	r0, r6
	bl	strlen(PLT)
	ldr	r2, .L71
	adds	r1, r4, r0
	adds	r1, r1, #3
	str	r6, [sp, #4]
	mov	r0, r5
	mov	r3, r7
.LPIC3:
	add	r2, pc
	str	r2, [sp]
	ldr	r2, .L71+4
.LPIC2:
	add	r2, pc
	bl	snprintf(PLT)
.L48:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L70:
	mvn	r3, #3
	str	r3, [r4, #76]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L72:
	.align	2
.L71:
	.word	.LC3-(.LPIC3+4)
	.word	.LC2-(.LPIC2+4)
	.size	gz_error, .-gz_error
	.section	.text.gz_open,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	gz_open, %function
gz_open:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r0
	cmp	r0, #0
	beq	.L124
	movs	r0, #140
	mov	r9, r1
	mov	r5, r2
	bl	malloc(PLT)
	mov	r6, r0
	cmp	r0, #0
	beq	.L124
	movs	r3, #0
	mov	r1, #8192
	mov	r2, #-1
	str	r3, [r0, #24]
	str	r3, [r0, #80]
	str	r3, [r0, #12]
	str	r3, [r0, #64]
	str	r3, [r0, #40]
	str	r1, [r0, #28]
	str	r2, [r0, #60]
	ldrb	r4, [r5]	@ zero_extendqisi2
	cmp	r4, #0
	beq	.L123
	mov	fp, r3
	mov	r10, r3
	mov	r2, r5
	movs	r3, #1
	mov	ip, #4
	mov	lr, #3
	movs	r0, #2
	movw	r1, #31153
.L93:
	sub	r5, r4, #48
	uxtb	r7, r5
	cmp	r7, #9
	it	ls
	strls	r5, [r6, #60]
	bls	.L79
	subs	r4, r4, #43
	cmp	r4, #77
	bhi	.L79
	tbb	[pc, r4]
.L82:
	.byte	(.L123-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L83-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L84-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L85-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L86-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L110-.L82)/2
	.byte	(.L87-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L88-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L89-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L79-.L82)/2
	.byte	(.L90-.L82)/2
	.byte	(.L91-.L82)/2
	.align	1
.L83:
	str	ip, [r6, #64]
.L79:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L93
.L127:
	ldr	r3, [r6, #12]
	cmp	r3, #0
	beq	.L123
	movw	r2, #7247
	cmp	r3, r2
	bne	.L95
	ldr	r3, [r6, #40]
	cmp	r3, #0
	bne	.L123
	movs	r3, #1
	str	r3, [r6, #40]
.L95:
	mov	r0, r8
	bl	strlen(PLT)
	adds	r5, r0, #1
	mov	r0, r5
	bl	malloc(PLT)
	str	r0, [r6, #20]
	cmp	r0, #0
	beq	.L123
	ldr	r2, .L128
	mov	r1, r5
	mov	r3, r8
	lsl	r10, r10, #19
.LPIC12:
	add	r2, pc
	bl	snprintf(PLT)
	ldr	r3, [r6, #12]
	movw	r0, #7247
	cmp	r3, r0
	it	eq
	moveq	r1, r10
	beq	.L99
	cmp	fp, #0
	movw	r0, #1089
	movw	r4, #577
	movw	r1, #705
	movw	r2, #1217
	itt	eq
	moveq	r1, r4
	moveq	r2, r0
	movw	r0, #31153
	cmp	r3, r0
	it	eq
	moveq	r2, r1
	orr	r1, r2, r10
.L99:
	cmp	r9, #0
	itt	ge
	strge	r9, [r6, #16]
	movge	r0, r9
	blt	.L125
.L109:
	cmp	r3, #1
	itt	eq
	movweq	r3, #31153
	streq	r3, [r6, #12]
	beq	.L105
	movw	r2, #7247
	cmp	r3, r2
	beq	.L126
.L105:
	movs	r3, #0
	str	r3, [r6]
.L108:
	movs	r4, #0
	mov	r0, r6
	str	r4, [r6, #72]
	mov	r1, r4
	mov	r2, r4
	bl	gz_error(PLT)
	str	r4, [r6, #8]
	mov	r0, r6
	str	r4, [r6, #88]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L125:
	mov	r0, r8
	mov	r2, #438
	bl	open(PLT)
	adds	r3, r0, #1
	str	r0, [r6, #16]
	it	ne
	ldrne	r3, [r6, #12]
	bne	.L109
	ldr	r0, [r6, #20]
	bl	free(PLT)
.L123:
	mov	r0, r6
	bl	free(PLT)
.L124:
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L110:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	mov	r10, #1
	cmp	r4, #0
	bne	.L93
	b	.L127
.L90:
	str	r1, [r6, #12]
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L93
	b	.L127
.L89:
	movw	r4, #7247
	str	r4, [r6, #12]
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L93
	b	.L127
.L91:
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	mov	fp, #1
	cmp	r4, #0
	bne	.L93
	b	.L127
.L88:
	str	r0, [r6, #64]
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L93
	b	.L127
.L87:
	str	r3, [r6, #64]
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L93
	b	.L127
.L86:
	str	r3, [r6, #12]
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L93
	b	.L127
.L85:
	str	r3, [r6, #40]
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L93
	b	.L127
.L84:
	str	lr, [r6, #64]
	ldrb	r4, [r2, #1]!	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L93
	b	.L127
.L126:
	movs	r1, #0
	movs	r2, #1
	bl	lseek(PLT)
	ldr	r1, [r6, #12]
	movw	r2, #7247
	str	r0, [r6, #48]
	adds	r0, r0, #1
	itt	eq
	moveq	r3, #0
	streq	r3, [r6, #48]
	movs	r3, #0
	cmp	r1, r2
	str	r3, [r6]
	ittt	eq
	streq	r3, [r6, #52]
	streq	r3, [r6, #56]
	streq	r3, [r6, #44]
	b	.L108
.L129:
	.align	2
.L128:
	.word	.LC4-(.LPIC12+4)
	.size	gz_open, .-gz_open
	.section	.text.gzopen,"ax",%progbits
	.align	2
	.global	gzopen
	.thumb
	.thumb_func
	.type	gzopen, %function
gzopen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r1
	mov	r1, #-1
	b	gz_open(PLT)
	.size	gzopen, .-gzopen
	.section	.text.gzopen64,"ax",%progbits
	.align	2
	.global	gzopen64
	.thumb
	.thumb_func
	.type	gzopen64, %function
gzopen64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r1
	mov	r1, #-1
	b	gz_open(PLT)
	.size	gzopen64, .-gzopen64
	.section	.text.gzdopen,"ax",%progbits
	.align	2
	.global	gzdopen
	.thumb
	.thumb_func
	.type	gzdopen, %function
gzdopen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	adds	r3, r0, #1
	push	{r4, r5, r6, lr}
	mov	r4, r0
	beq	.L135
	movs	r0, #19
	mov	r6, r1
	bl	malloc(PLT)
	mov	r5, r0
	cbz	r0, .L135
	ldr	r2, .L140
	mov	r3, r4
	movs	r1, #19
.LPIC13:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r1, r4
	mov	r2, r6
	mov	r0, r5
	bl	gz_open(PLT)
	mov	r4, r0
	mov	r0, r5
	bl	free(PLT)
	mov	r0, r4
	pop	{r4, r5, r6, pc}
.L135:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L141:
	.align	2
.L140:
	.word	.LC5-(.LPIC13+4)
	.size	gzdopen, .-gzdopen
	.section	.text.gzclearerr,"ax",%progbits
	.align	2
	.global	gzclearerr
	.thumb
	.thumb_func
	.type	gzclearerr, %function
gzclearerr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L142
	ldr	r3, [r0, #12]
	movw	r1, #31153
	movw	r2, #7247
	cmp	r3, r1
	it	ne
	cmpne	r3, r2
	ite	ne
	movne	r1, #1
	moveq	r1, #0
	bne	.L142
	cmp	r3, r2
	itt	eq
	streq	r1, [r0, #52]
	streq	r1, [r0, #56]
	movs	r1, #0
	mov	r2, r1
	b	gz_error(PLT)
.L142:
	bx	lr
	.size	gzclearerr, .-gzclearerr
	.section	.text.gzrewind,"ax",%progbits
	.align	2
	.global	gzrewind
	.thumb
	.thumb_func
	.type	gzrewind, %function
gzrewind:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r0, .L151
	ldr	r6, [r0, #12]
	movw	r3, #7247
	cmp	r6, r3
	bne	.L151
	ldr	r2, [r0, #76]
	cmp	r2, #0
	it	ne
	cmnne	r2, #5
	ite	ne
	movne	r5, #1
	moveq	r5, #0
	bne	.L151
	ldr	r0, [r0, #16]
	mov	r2, r5
	ldr	r1, [r4, #48]
	bl	lseek(PLT)
	adds	r0, r0, #1
	beq	.L151
	ldr	r3, [r4, #12]
	mov	r0, r4
	str	r5, [r4]
	cmp	r3, r6
	ittt	eq
	streq	r5, [r4, #52]
	streq	r5, [r4, #56]
	streq	r5, [r4, #44]
	movs	r5, #0
	str	r5, [r4, #72]
	mov	r1, r5
	mov	r2, r5
	bl	gz_error(PLT)
	mov	r0, r5
	str	r5, [r4, #8]
	str	r5, [r4, #88]
	pop	{r4, r5, r6, pc}
.L151:
	mov	r0, #-1
	pop	{r4, r5, r6, pc}
	.size	gzrewind, .-gzrewind
	.section	.text.gzseek64,"ax",%progbits
	.align	2
	.global	gzseek64
	.thumb
	.thumb_func
	.type	gzseek64, %function
gzseek64:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	cmp	r0, #0
	beq	.L160
	ldr	r3, [r0, #12]
	mov	r5, r1
	movw	r1, #7247
	movw	r0, #31153
	subs	r7, r3, r1
	it	ne
	movne	r7, #1
	cmp	r3, r0
	it	ne
	cmpne	r3, r1
	bne	.L160
	ldr	r1, [r4, #76]
	cmp	r1, #0
	it	ne
	cmnne	r1, #5
	bne	.L160
	cmp	r2, #1
	bhi	.L160
	cbz	r2, .L189
	ldr	r2, [r4, #72]
	cbz	r2, .L162
	ldr	r2, [r4, #68]
	add	r5, r5, r2
.L162:
	movw	r2, #7247
	movs	r6, #0
	cmp	r3, r2
	str	r6, [r4, #72]
	beq	.L190
.L163:
	cmp	r5, #0
	blt	.L191
.L165:
	ldr	r0, [r4, #8]
.L167:
	cbz	r5, .L170
	movs	r3, #1
	str	r5, [r4, #68]
	str	r3, [r4, #72]
.L170:
	add	r0, r0, r5
	pop	{r3, r4, r5, r6, r7, pc}
.L189:
	ldr	r0, [r4, #8]
	movw	r2, #7247
	cmp	r3, r2
	mov	r6, #0
	str	r6, [r4, #72]
	sub	r5, r5, r0
	bne	.L163
.L190:
	ldr	r2, [r4, #44]
	ldr	r0, [r4, #8]
	cmp	r2, #1
	beq	.L187
.L164:
	cmp	r5, #0
	bge	.L166
	b	.L171
.L191:
	cbnz	r7, .L160
	ldr	r0, [r4, #8]
.L171:
	adds	r5, r5, r0
	bmi	.L160
	mov	r0, r4
	bl	gzrewind(PLT)
	adds	r0, r0, #1
	beq	.L160
	ldr	r3, [r4, #12]
	movw	r2, #7247
	cmp	r3, r2
	bne	.L165
	ldr	r0, [r4, #8]
.L166:
	ldr	r3, [r4]
	cmp	r3, #0
	blt	.L168
	cmp	r3, r5
	bgt	.L168
	subs	r5, r5, r3
	mov	r2, r3
	movs	r3, #0
.L169:
	ldr	r1, [r4, #4]
	add	r0, r0, r2
	str	r0, [r4, #8]
	str	r3, [r4]
	add	r2, r2, r1
	str	r2, [r4, #4]
	b	.L167
.L160:
	mov	r0, #-1
	pop	{r3, r4, r5, r6, r7, pc}
.L187:
	cmn	r5, r0
	bmi	.L164
	ldr	r1, [r4]
	ldr	r0, [r4, #16]
	subs	r1, r5, r1
	bl	lseek(PLT)
	adds	r0, r0, #1
	beq	.L160
	mov	r0, r4
	str	r6, [r4]
	str	r6, [r4, #52]
	mov	r1, r6
	str	r6, [r4, #56]
	mov	r2, r6
	str	r6, [r4, #72]
	bl	gz_error(PLT)
	ldr	r0, [r4, #8]
	str	r6, [r4, #88]
	add	r0, r0, r5
	str	r0, [r4, #8]
	pop	{r3, r4, r5, r6, r7, pc}
.L168:
	mov	r2, r5
	movs	r5, #0
	subs	r3, r3, r2
	b	.L169
	.size	gzseek64, .-gzseek64
	.section	.text.gzseek,"ax",%progbits
	.align	2
	.global	gzseek
	.thumb
	.thumb_func
	.type	gzseek, %function
gzseek:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	gzseek64(PLT)
	.size	gzseek, .-gzseek
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"out of memory\000"
	.space	2
.LC1:
	.ascii	"\000"
	.space	3
.LC2:
	.ascii	"%s%s%s\000"
	.space	1
.LC3:
	.ascii	": \000"
	.space	1
.LC4:
	.ascii	"%s\000"
	.space	1
.LC5:
	.ascii	"<fd:%d>\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
