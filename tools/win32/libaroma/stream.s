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
	.file	"stream.c"
	.section	.text.libaroma_stream_set_uri_callback,"ax",%progbits
	.align	2
	.global	libaroma_stream_set_uri_callback
	.thumb
	.thumb_func
	.type	libaroma_stream_set_uri_callback, %function
libaroma_stream_set_uri_callback:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L2
.LPIC0:
	add	r3, pc
	str	r0, [r3]
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	libaroma_stream_set_uri_callback, .-libaroma_stream_set_uri_callback
	.section	.text.libaroma_stream_file,"ax",%progbits
	.align	2
	.global	libaroma_stream_file
	.thumb
	.thumb_func
	.type	libaroma_stream_file, %function
libaroma_stream_file:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r0, #0
	beq	.L16
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	mov	r5, r0
	bl	libaroma_filesize(PLT)
	subs	r6, r0, #0
	blt	.L17
	movs	r1, #0
	mov	r0, r5
	mov	r2, r1
	bl	open(PLT)
	subs	r4, r0, #0
	blt	.L14
	movs	r3, #0
	movs	r2, #1
	mov	r0, r3
	str	r3, [sp, #4]
	mov	r1, r6
	mov	r3, r2
	str	r4, [sp]
	bl	mmap(PLT)
	mov	r7, r0
	mov	r0, r4
	bl	close(PLT)
	adds	r3, r7, #1
	beq	.L14
	mov	r0, #268
	bl	malloc(PLT)
	ldr	r2, .L18
	mov	r4, r0
	mov	r3, r5
	movs	r5, #1
	movs	r1, #255
	str	r7, [r4]
.LPIC3:
	add	r2, pc
	str	r6, [r4, #4]
	strb	r5, [r4, #8]
	adds	r0, r0, #10
	bl	snprintf(PLT)
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L17:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L18+4
	mov	r2, r0
	mov	r0, r4
.LPIC1:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L18+8
	mov	r2, r5
.LPIC2:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
.L14:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L16:
	movs	r0, #0
	bx	lr
.L19:
	.align	2
.L18:
	.word	.LC2-(.LPIC3+4)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.size	libaroma_stream_file, .-libaroma_stream_file
	.section	.text.libaroma_stream_shmem,"ax",%progbits
	.align	2
	.global	libaroma_stream_shmem
	.thumb
	.thumb_func
	.type	libaroma_stream_shmem, %function
libaroma_stream_shmem:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	sub	sp, sp, #264
	cmp	r0, #0
	beq	.L31
	ldrb	r3, [r0]	@ zero_extendqisi2
	add	r4, sp, #8
	cmp	r3, #64
	beq	.L32
	ldr	r2, .L34
	movs	r1, #255
	mov	r0, r4
	mov	r3, r5
.LPIC6:
	add	r2, pc
	bl	snprintf(PLT)
.L24:
	mov	r0, r4
	movs	r1, #2
	mov	r2, #438
	bl	open(PLT)
	subs	r4, r0, #0
	blt	.L31
	bl	libaroma_filesize_fd(PLT)
	subs	r7, r0, #0
	blt	.L33
	movs	r2, #1
	movs	r6, #0
	mov	r3, r2
	mov	r1, r7
	str	r4, [sp]
	mov	r0, r6
	str	r6, [sp, #4]
	bl	mmap(PLT)
	mov	r8, r0
	mov	r0, r4
	bl	close(PLT)
	cmp	r8, #-1
	beq	.L31
	mov	r0, #268
	bl	malloc(PLT)
	ldr	r2, .L34+4
	mov	r4, r0
	mov	r3, r5
	movs	r5, #1
	movs	r1, #255
	str	r8, [r4]
.LPIC7:
	add	r2, pc
	str	r7, [r4, #4]
	strb	r6, [r4, #9]
	adds	r0, r0, #10
	strb	r5, [r4, #8]
	bl	snprintf(PLT)
	mov	r0, r4
	add	sp, sp, #264
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L32:
	adds	r3, r0, #1
	ldr	r2, .L34+8
	str	r3, [sp]
	mov	r0, r4
	ldr	r3, .L34+12
	movs	r1, #255
.LPIC4:
	add	r2, pc
.LPIC5:
	add	r3, pc
	bl	snprintf(PLT)
	b	.L24
.L33:
	mov	r0, r4
	bl	close(PLT)
.L31:
	movs	r0, #0
	add	sp, sp, #264
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L35:
	.align	2
.L34:
	.word	.LC5-(.LPIC6+4)
	.word	.LC6-(.LPIC7+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LC4-(.LPIC5+4)
	.size	libaroma_stream_shmem, .-libaroma_stream_shmem
	.section	.text.libaroma_stream_mzip,"ax",%progbits
	.align	2
	.global	libaroma_stream_mzip
	.thumb
	.thumb_func
	.type	libaroma_stream_mzip, %function
libaroma_stream_mzip:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r1
	sub	sp, sp, #12
	ite	eq
	moveq	r6, #1
	movne	r6, #0
	beq	.L39
	mov	r1, sp
	mov	r2, r4
	movs	r3, #1
	bl	libaroma_zip_read(PLT)
	mov	r7, r0
	cbz	r0, .L39
	mov	r0, #268
	bl	malloc(PLT)
	ldr	r2, .L44
	mov	r3, r4
	ldr	r4, [sp]
	mov	r5, r0
	movs	r1, #255
	adds	r0, r0, #10
.LPIC8:
	add	r2, pc
	str	r7, [r5, #4]
	strb	r6, [r5, #8]
	strb	r6, [r5, #9]
	str	r4, [r5]
	bl	snprintf(PLT)
	mov	r0, r5
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L39:
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L45:
	.align	2
.L44:
	.word	.LC7-(.LPIC8+4)
	.size	libaroma_stream_mzip, .-libaroma_stream_mzip
	.section	.text.libaroma_stream_zip,"ax",%progbits
	.align	2
	.global	libaroma_stream_zip
	.thumb
	.thumb_func
	.type	libaroma_stream_zip, %function
libaroma_stream_zip:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r9, lr}
	mov	r4, r1
	sub	sp, sp, #16
	ite	eq
	moveq	r6, #1
	movne	r6, #0
	beq	.L49
	mov	r9, r0
	bl	libaroma_zip(PLT)
	mov	r5, r0
	cbz	r0, .L49
	add	r1, sp, #8
	mov	r2, r4
	movs	r3, #1
	bl	libaroma_zip_read(PLT)
	mov	r7, r0
	mov	r0, r5
	bl	libaroma_zip_release(PLT)
	cbz	r7, .L49
	mov	r0, #268
	bl	malloc(PLT)
	str	r4, [sp]
	mov	r5, r0
	ldr	r4, [sp, #8]
	mov	r3, r9
	ldr	r2, .L57
	movs	r1, #255
	str	r7, [r5, #4]
	adds	r0, r0, #10
	strb	r6, [r5, #8]
.LPIC9:
	add	r2, pc
	strb	r6, [r5, #9]
	str	r4, [r5]
	bl	snprintf(PLT)
	mov	r0, r5
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r9, pc}
.L49:
	movs	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r9, pc}
.L58:
	.align	2
.L57:
	.word	.LC8-(.LPIC9+4)
	.size	libaroma_stream_zip, .-libaroma_stream_zip
	.section	.text.libaroma_stream_mem,"ax",%progbits
	.align	2
	.global	libaroma_stream_mem
	.thumb
	.thumb_func
	.type	libaroma_stream_mem, %function
libaroma_stream_mem:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r0
	sub	sp, sp, #12
	mov	r5, r1
	itet	eq
	moveq	r7, #1
	movne	r7, #0
	moveq	r0, #0
	beq	.L60
	mov	r0, #268
	bl	malloc(PLT)
	ldr	r2, .L63
	mov	r4, r0
	mov	lr, #1
	str	r5, [sp]
	mov	r3, r6
	adds	r0, r0, #10
	movs	r1, #255
.LPIC10:
	add	r2, pc
	str	r6, [r4]
	str	r5, [r4, #4]
	strb	r7, [r4, #8]
	strb	lr, [r4, #9]
	bl	snprintf(PLT)
	mov	r0, r4
.L60:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L64:
	.align	2
.L63:
	.word	.LC9-(.LPIC10+4)
	.size	libaroma_stream_mem, .-libaroma_stream_mem
	.section	.text.libaroma_stream,"ax",%progbits
	.align	2
	.global	libaroma_stream
	.thumb
	.thumb_func
	.type	libaroma_stream, %function
libaroma_stream:
	@ args = 0, pretend = 0, frame = 528
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #532
	mov	r8, r0
	add	r4, sp, #4
	bl	strlen(PLT)
	movs	r3, #0
	mov	r6, r0
	mov	r1, r8
	mov	r7, r3
.L66:
	cmp	r3, #9
	it	le
	cmple	r3, r6
	bge	.L71
	ldrb	r2, [r1], #1	@ zero_extendqisi2
	strb	r2, [r4, r3]
	adds	r3, r3, #1
	subs	r5, r3, #1
	strb	r7, [r4, r3]
	cmp	r5, #1
	ble	.L66
	cmp	r2, #47
	bne	.L66
	ldrb	r2, [r1, #-2]	@ zero_extendqisi2
	cmp	r2, #47
	bne	.L66
.L71:
	ldr	r1, .L94
	mov	r0, r4
.LPIC19:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L90
	ldr	r1, .L94+4
	mov	r0, r4
.LPIC20:
	add	r1, pc
	bl	strcmp(PLT)
	cmp	r0, #0
	beq	.L91
	ldr	r1, .L94+8
	mov	r0, r4
.LPIC21:
	add	r1, pc
	bl	strcmp(PLT)
	mov	r5, r0
	cmp	r0, #0
	bne	.L74
	add	r9, sp, #16
	mov	r1, r0
	mov	r2, #256
	mov	r0, r9
	add	r7, sp, #272
	bl	memset(PLT)
	mov	r2, #256
	mov	r0, r7
	mov	r1, r5
	bl	memset(PLT)
	cmp	r6, #6
	itttt	gt
	movgt	r4, r5
	movgt	r3, #6
	movgt	r2, r4
	movgt	r0, r4
	bgt	.L79
	b	.L78
.L92:
	ldrb	r1, [r8, r3]	@ zero_extendqisi2
	movs	r4, #1
	strb	r1, [r7, r2]
	mov	r2, r5
	strb	r0, [r7, r5]
.L77:
	adds	r3, r3, #1
	cmp	r3, #254
	ite	le
	movle	r5, #1
	movgt	r5, #0
	cmp	r6, r3
	it	le
	movle	r5, #0
	cbz	r5, .L78
.L79:
	adds	r5, r2, #1
	cmp	r4, #0
	bne	.L92
	ldrb	r5, [r8, r3]	@ zero_extendqisi2
	adds	r1, r2, #1
	cmp	r5, #35
	itett	ne
	strbne	r5, [r9, r2]
	moveq	r4, #1
	movne	r2, r1
	strbne	r4, [r9, r1]
	it	eq
	moveq	r2, #0
	b	.L77
.L74:
	ldr	r1, .L94+12
	mov	r0, r4
.LPIC22:
	add	r1, pc
	bl	strcmp(PLT)
	mov	r4, r0
	cbz	r0, .L93
	ldr	r3, .L94+16
.LPIC24:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L84
	mov	r0, r8
	blx	r3
.L72:
	add	sp, sp, #532
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L78:
	mov	r0, r9
	mov	r1, r7
	bl	libaroma_stream_zip(PLT)
	add	sp, sp, #532
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L90:
	add	r0, r8, #7
	bl	libaroma_stream_file(PLT)
	add	sp, sp, #532
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L91:
	add	r0, r8, #8
	bl	libaroma_stream_shmem(PLT)
	add	sp, sp, #532
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L93:
	ldr	r1, .L94+20
	add	r6, sp, #16
	add	r5, sp, #272
	add	r0, r8, #6
	mov	r2, r6
	mov	r3, r5
.LPIC23:
	add	r1, pc
	bl	__isoc99_sscanf(PLT)
	cmp	r0, #2
	it	ne
	movne	r0, r4
	bne	.L72
	ldr	r0, [r6]
	ldr	r1, [r5]
	bl	libaroma_stream_mem(PLT)
	b	.L72
.L84:
	mov	r0, r3
	b	.L72
.L95:
	.align	2
.L94:
	.word	.LC10-(.LPIC19+4)
	.word	.LC11-(.LPIC20+4)
	.word	.LC12-(.LPIC21+4)
	.word	.LC13-(.LPIC22+4)
	.word	.LANCHOR0-(.LPIC24+4)
	.word	.LC14-(.LPIC23+4)
	.size	libaroma_stream, .-libaroma_stream
	.section	.text.libaroma_stream_close,"ax",%progbits
	.align	2
	.global	libaroma_stream_close
	.thumb
	.thumb_func
	.type	libaroma_stream_close, %function
libaroma_stream_close:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	cbz	r0, .L100
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	ldr	r0, [r0]
	cbnz	r3, .L105
	cbz	r0, .L99
	ldrb	r5, [r4, #9]	@ zero_extendqisi2
	cbz	r5, .L106
.L99:
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L105:
	ldr	r1, [r4, #4]
	bl	munmap(PLT)
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L106:
	bl	free(PLT)
	mov	r0, r4
	str	r5, [r4]
	bl	free(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L100:
	pop	{r3, r4, r5, pc}
	.size	libaroma_stream_close, .-libaroma_stream_close
	.section	.text.libaroma_stream_to_string,"ax",%progbits
	.align	2
	.global	libaroma_stream_to_string
	.thumb
	.thumb_func
	.type	libaroma_stream_to_string, %function
libaroma_stream_to_string:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	cbz	r0, .L109
	ldr	r5, [r0, #4]
	mov	r7, r1
	adds	r0, r5, #1
	bl	malloc(PLT)
	mov	r2, r5
	ldr	r1, [r4]
	mov	r6, r0
	bl	memcpy(PLT)
	ldr	r3, [r4, #4]
	movs	r2, #0
	strb	r2, [r6, r3]
	cbnz	r7, .L112
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L112:
	mov	r0, r4
	bl	libaroma_stream_close(PLT)
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L109:
	pop	{r3, r4, r5, r6, r7, pc}
	.size	libaroma_stream_to_string, .-libaroma_stream_to_string
	.section	.text.libaroma_shmem,"ax",%progbits
	.align	2
	.global	libaroma_shmem
	.thumb
	.thumb_func
	.type	libaroma_shmem, %function
libaroma_shmem:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r4, r1
	ldrb	r3, [r0]	@ zero_extendqisi2
	sub	sp, sp, #268
	cmp	r3, #64
	beq	.L132
	ldr	r2, .L134
	add	r6, sp, #8
	mov	r3, r0
	movs	r1, #255
	mov	r0, r6
.LPIC27:
	add	r2, pc
	bl	snprintf(PLT)
	cmp	r4, #0
	mov	r0, r6
	ble	.L133
.L116:
	movw	r1, #578
	mov	r2, #438
	bl	open(PLT)
	subs	r5, r0, #0
	blt	.L131
	mov	r1, r4
	bl	ftruncate(PLT)
	cmp	r0, #0
	bne	.L130
.L120:
	movs	r0, #0
	movs	r3, #1
	mov	r1, r4
	movs	r2, #3
	str	r5, [sp]
	str	r0, [sp, #4]
	bl	mmap(PLT)
	mov	r7, r0
	mov	r0, r5
	bl	close(PLT)
	adds	r3, r7, #1
	beq	.L131
	mov	r0, #264
	bl	malloc(PLT)
	ldr	r2, .L134+4
	mov	r5, r0
	mov	r3, r6
	movs	r1, #255
	str	r7, [r5]
	adds	r0, r0, #8
.LPIC28:
	add	r2, pc
	str	r4, [r5, #4]
	bl	snprintf(PLT)
	mov	r0, r5
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L132:
	ldr	r2, .L134+8
	adds	r0, r0, #1
	ldr	r3, .L134+12
	add	r6, sp, #8
	str	r0, [sp]
	movs	r1, #255
	mov	r0, r6
.LPIC25:
	add	r2, pc
.LPIC26:
	add	r3, pc
	bl	snprintf(PLT)
	cmp	r4, #0
	mov	r0, r6
	bgt	.L116
.L133:
	movs	r1, #2
	mov	r2, #438
	bl	open(PLT)
	subs	r5, r0, #0
	blt	.L131
	bl	libaroma_filesize_fd(PLT)
	cbnz	r4, .L130
	cmp	r0, #0
	it	gt
	movgt	r4, r0
	bgt	.L120
.L130:
	mov	r0, r5
	bl	close(PLT)
.L131:
	movs	r0, #0
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L135:
	.align	2
.L134:
	.word	.LC5-(.LPIC27+4)
	.word	.LC5-(.LPIC28+4)
	.word	.LC3-(.LPIC25+4)
	.word	.LC4-(.LPIC26+4)
	.size	libaroma_shmem, .-libaroma_shmem
	.section	.text.libaroma_shmem_close,"ax",%progbits
	.align	2
	.global	libaroma_shmem_close
	.thumb
	.thumb_func
	.type	libaroma_shmem_close, %function
libaroma_shmem_close:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	cbz	r0, .L140
	ldr	r0, [r0]
	mov	r5, r1
	cbz	r0, .L138
	ldr	r1, [r4, #4]
	bl	munmap(PLT)
.L138:
	cbnz	r5, .L148
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L148:
	add	r0, r4, #8
	bl	unlink(PLT)
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L140:
	pop	{r3, r4, r5, pc}
	.size	libaroma_shmem_close, .-libaroma_shmem_close
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"I/%s: \000"
	.space	1
.LC1:
	.ascii	"libaroma_stream_file (%s) not found\000"
.LC2:
	.ascii	"file://%s\000"
	.space	2
.LC3:
	.ascii	"%s%s\000"
	.space	3
.LC4:
	.ascii	"/tmp/.libaromashm-\000"
	.space	1
.LC5:
	.ascii	"%s\000"
	.space	1
.LC6:
	.ascii	"shmem://%s\000"
	.space	1
.LC7:
	.ascii	"memzip://[zip_resource]#%s\000"
	.space	1
.LC8:
	.ascii	"zip://%s#%s\000"
.LC9:
	.ascii	"mem://0x%x-0x%x\000"
.LC10:
	.ascii	"file://\000"
.LC11:
	.ascii	"shmem://\000"
	.space	3
.LC12:
	.ascii	"zip://\000"
	.space	1
.LC13:
	.ascii	"mem://\000"
	.space	1
.LC14:
	.ascii	"0x%x-0x%x\000"
	.section	.bss._libaroma_stream_uri_cb,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_stream_uri_cb, %object
	.size	_libaroma_stream_uri_cb, 4
_libaroma_stream_uri_cb:
	.space	4
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
