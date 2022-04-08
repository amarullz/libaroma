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
	.file	"canvas.c"
	.section	.text.libaroma_canvas_blank,"ax",%progbits
	.align	2
	.global	libaroma_canvas_blank
	.thumb
	.thumb_func
	.type	libaroma_canvas_blank, %function
libaroma_canvas_blank:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	cbz	r0, .L1
	ldr	r0, [r0, #8]
	ldr	r2, [r4]
	cmp	r0, r2
	beq	.L4
	ldr	r3, [r4, #4]
	cmp	r3, #0
	it	gt
	movgt	r5, #0
	bgt	.L10
	b	.L27
.L26:
	ldr	r0, [r4, #8]
	ldr	r2, [r4]
.L10:
	ldr	r3, [r4, #16]
	mul	r0, r0, r5
	movs	r1, #0
	lsls	r2, r2, #1
	add	r0, r3, r0, lsl #1
	bl	memset(PLT)
	ldr	r3, [r4, #20]
	movs	r1, #255
	cbz	r3, .L8
	ldr	r0, [r4, #8]
	ldr	r2, [r4]
	mla	r0, r0, r5, r3
	bl	memset(PLT)
.L8:
	ldr	r3, [r4, #24]
	movs	r1, #255
	cbz	r3, .L9
	ldr	r0, [r4, #8]
	ldr	r2, [r4]
	mla	r0, r0, r5, r3
	bl	memset(PLT)
.L9:
	ldr	r3, [r4, #4]
	adds	r5, r5, #1
	cmp	r3, r5
	bgt	.L26
.L1:
	pop	{r3, r4, r5, pc}
.L4:
	ldr	r2, [r4, #12]
	movs	r1, #0
	ldr	r0, [r4, #16]
	lsls	r2, r2, #1
	bl	memset(PLT)
	ldr	r0, [r4, #20]
	cbz	r0, .L7
	movs	r1, #255
	ldr	r2, [r4, #12]
	bl	memset(PLT)
.L7:
	ldr	r3, [r4, #24]
	cmp	r3, #0
	beq	.L1
	ldr	r0, [r4, #20]
	movs	r1, #0
	ldr	r2, [r4, #12]
	pop	{r3, r4, r5, lr}
	b	memset(PLT)
.L27:
	pop	{r3, r4, r5, pc}
	.size	libaroma_canvas_blank, .-libaroma_canvas_blank
	.section	.text.libaroma_canvas_setcolor,"ax",%progbits
	.align	2
	.global	libaroma_canvas_setcolor
	.thumb
	.thumb_func
	.type	libaroma_canvas_setcolor, %function
libaroma_canvas_setcolor:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #32
	cmp	r0, #0
	beq	.L28
	mov	r8, r2
	ldr	r5, [r0]
	ldr	r2, [r0, #8]
	mov	r9, r1
	cmp	r2, r5
	beq	.L31
	ldr	r3, [r0, #4]
	cmp	r3, #0
	ble	.L28
	vdup.16	q8, r1
	mov	r10, #0
	vst1.64	{d16-d17}, [sp:64]
	vstr	d16, [sp, #16]
	vstr	d17, [sp, #24]
.L69:
	asrs	r1, r5, #31
	mul	ip, r2, r10
	ldr	r2, [r7, #16]
	cmp	r5, #31
	lsr	r1, r1, #27
	add	r3, r5, r1
	and	r3, r3, #31
	add	r6, r2, ip, lsl #1
	sub	r3, r3, r1
	bgt	.L51
.L54:
	cmp	r3, #0
	ble	.L53
	subs	r3, r5, r3
	cmp	r3, r5
	bge	.L53
	add	ip, ip, r3
	subs	r1, r5, r3
	add	ip, r2, ip, lsl #1
	ubfx	r0, ip, #1, #2
	negs	r0, r0
	and	r0, r0, #7
	cmp	r0, r1
	it	cs
	movcs	r0, r1
	cmp	r1, #10
	ite	ls
	movls	r2, r1
	movhi	r2, r0
	cbz	r2, .L59
	cmp	r2, #1
	strh	r9, [r6, r3, lsl #1]	@ movhi
	add	r0, r3, #1
	bls	.L89
	cmp	r2, #2
	strh	r9, [r6, r0, lsl #1]	@ movhi
	add	r0, r3, #2
	beq	.L89
	cmp	r2, #3
	strh	r9, [r6, r0, lsl #1]	@ movhi
	add	r0, r3, #3
	beq	.L89
	cmp	r2, #4
	strh	r9, [r6, r0, lsl #1]	@ movhi
	add	r0, r3, #4
	beq	.L89
	cmp	r2, #5
	strh	r9, [r6, r0, lsl #1]	@ movhi
	add	r0, r3, #5
	beq	.L89
	cmp	r2, #6
	strh	r9, [r6, r0, lsl #1]	@ movhi
	add	r0, r3, #6
	beq	.L89
	cmp	r2, #7
	strh	r9, [r6, r0, lsl #1]	@ movhi
	add	r0, r3, #7
	beq	.L89
	cmp	r2, #8
	strh	r9, [r6, r0, lsl #1]	@ movhi
	add	r0, r3, #8
	beq	.L89
	cmp	r2, #9
	strh	r9, [r6, r0, lsl #1]	@ movhi
	add	r0, r3, #9
	beq	.L89
	adds	r3, r3, #10
	strh	r9, [r6, r0, lsl #1]	@ movhi
.L60:
	cmp	r1, r2
	beq	.L53
.L59:
	subs	r1, r1, r2
	lsrs	r0, r1, #3
	lsl	lr, r0, #3
	cbz	r0, .L62
	add	r2, ip, r2, lsl #1
	movs	r4, #0
	vldr	d16, [sp, #16]
	vldr	d17, [sp, #24]
.L67:
	adds	r4, r4, #1
	vst1.64	{d16-d17}, [r2:64]!
	cmp	r4, r0
	bcc	.L67
	cmp	r1, lr
	add	r3, r3, lr
	beq	.L53
.L62:
	adds	r2, r3, #1
	strh	r9, [r6, r3, lsl #1]	@ movhi
	cmp	r5, r2
	ble	.L53
	adds	r1, r3, #2
	strh	r9, [r6, r2, lsl #1]	@ movhi
	cmp	r5, r1
	ble	.L53
	adds	r2, r3, #3
	strh	r9, [r6, r1, lsl #1]	@ movhi
	cmp	r5, r2
	ble	.L53
	adds	r1, r3, #4
	strh	r9, [r6, r2, lsl #1]	@ movhi
	cmp	r5, r1
	ble	.L53
	adds	r2, r3, #5
	strh	r9, [r6, r1, lsl #1]	@ movhi
	cmp	r5, r2
	ble	.L53
	adds	r3, r3, #6
	strh	r9, [r6, r2, lsl #1]	@ movhi
	cmp	r5, r3
	it	gt
	strhgt	r9, [r6, r3, lsl #1]	@ movhi
.L53:
	ldr	r3, [r7, #20]
	cbz	r3, .L57
	ldr	r0, [r7, #8]
	mov	r1, r8
	ldr	r2, [r7]
	mla	r0, r0, r10, r3
	bl	memset(PLT)
.L57:
	ldr	r3, [r7, #24]
	cbz	r3, .L68
	ldr	r0, [r7, #8]
	movs	r1, #0
	ldr	r2, [r7]
	mla	r0, r0, r10, r3
	bl	memset(PLT)
.L68:
	ldr	r3, [r7, #4]
	add	r10, r10, #1
	cmp	r3, r10
	ble	.L28
	ldr	r2, [r7, #8]
	ldr	r5, [r7]
	b	.L69
.L89:
	mov	r3, r0
	b	.L60
.L51:
	subs	r1, r5, r3
	mov	lr, r6
	movs	r0, #0
	vld1.64	{d8-d9}, [sp:64]
.L55:
	vmov	q5, q4  @ v8hi
	adds	r0, r0, #32
	vmov	q6, q4  @ v8hi
	mov	r4, lr
	vmov	q7, q4  @ v8hi
	cmp	r0, r1
	add	lr, lr, #64
	vst4.16	{d8, d10, d12, d14}, [r4]!
	vst4.16	{d9, d11, d13, d15}, [r4]
	blt	.L55
	b	.L54
.L28:
	add	sp, sp, #32
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L31:
	ldr	r5, [r0, #12]
	ldr	r2, [r0, #16]
	cmp	r5, #31
	asr	r3, r5, #31
	lsr	r3, r3, #27
	add	r1, r5, r3
	and	r1, r1, #31
	sub	r3, r1, r3
	bgt	.L34
.L37:
	cmp	r3, #0
	ble	.L36
	subs	r3, r5, r3
	cmp	r5, r3
	ble	.L36
	lsls	r6, r3, #1
	subs	r0, r5, r3
	adds	r4, r2, r6
	ubfx	r1, r4, #1, #2
	negs	r1, r1
	and	r1, r1, #7
	cmp	r1, r0
	it	cs
	movcs	r1, r0
	cmp	r0, #10
	it	ls
	movls	r1, r0
	cbz	r1, .L42
	cmp	r1, #1
	strh	r9, [r2, r6]	@ movhi
	add	r6, r3, #1
	bls	.L79
	cmp	r1, #2
	strh	r9, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #2
	bls	.L79
	cmp	r1, #3
	strh	r9, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #3
	bls	.L79
	cmp	r1, #4
	strh	r9, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #4
	bls	.L79
	cmp	r1, #5
	strh	r9, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #5
	bls	.L79
	cmp	r1, #6
	strh	r9, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #6
	bls	.L79
	cmp	r1, #7
	strh	r9, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #7
	bls	.L79
	cmp	r1, #8
	strh	r9, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #8
	bls	.L79
	cmp	r1, #9
	strh	r9, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #9
	bls	.L79
	adds	r3, r3, #10
	strh	r9, [r2, r6, lsl #1]	@ movhi
.L43:
	cmp	r1, r0
	beq	.L36
.L42:
	subs	r0, r0, r1
	lsrs	r6, r0, #3
	lsl	lr, r6, #3
	cbz	r6, .L45
	add	r1, r4, r1, lsl #1
	vdup.16	q8, r9
	movs	r4, #0
.L50:
	adds	r4, r4, #1
	vst1.64	{d16-d17}, [r1:64]!
	cmp	r6, r4
	bhi	.L50
	cmp	lr, r0
	add	r3, r3, lr
	beq	.L36
.L45:
	adds	r1, r3, #1
	strh	r9, [r2, r3, lsl #1]	@ movhi
	cmp	r5, r1
	ble	.L36
	adds	r0, r3, #2
	strh	r9, [r2, r1, lsl #1]	@ movhi
	cmp	r5, r0
	ble	.L36
	adds	r1, r3, #3
	strh	r9, [r2, r0, lsl #1]	@ movhi
	cmp	r5, r1
	ble	.L36
	adds	r0, r3, #4
	strh	r9, [r2, r1, lsl #1]	@ movhi
	cmp	r5, r0
	ble	.L36
	adds	r1, r3, #5
	strh	r9, [r2, r0, lsl #1]	@ movhi
	cmp	r5, r1
	ble	.L36
	adds	r3, r3, #6
	strh	r9, [r2, r1, lsl #1]	@ movhi
	cmp	r5, r3
	it	gt
	strhgt	r9, [r2, r3, lsl #1]	@ movhi
.L36:
	ldr	r0, [r7, #20]
	cbz	r0, .L40
	mov	r1, r8
	ldr	r2, [r7, #12]
	bl	memset(PLT)
.L40:
	ldr	r0, [r7, #24]
	cmp	r0, #0
	beq	.L28
	ldr	r2, [r7, #12]
	movs	r1, #0
	add	sp, sp, #32
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	memset(PLT)
.L79:
	mov	r3, r6
	b	.L43
.L34:
	vdup.16	q12, r9
	subs	r6, r5, r3
	mov	r4, r2
	movs	r0, #0
.L38:
	vmov	q8, q12  @ v8hi
	adds	r0, r0, #32
	vmov	q9, q12  @ v8hi
	mov	r1, r4
	vmov	q10, q12  @ v8hi
	cmp	r0, r6
	vmov	q11, q12  @ v8hi
	add	r4, r4, #64
	vst4.16	{d16, d18, d20, d22}, [r1]!
	vst4.16	{d17, d19, d21, d23}, [r1]
	blt	.L38
	b	.L37
	.size	libaroma_canvas_setcolor, .-libaroma_canvas_setcolor
	.section	.text.libaroma_canvas_fillcolor,"ax",%progbits
	.align	2
	.global	libaroma_canvas_fillcolor
	.thumb
	.thumb_func
	.type	libaroma_canvas_fillcolor, %function
libaroma_canvas_fillcolor:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r9, r0
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #32
	cmp	r0, #0
	beq	.L111
	ldr	r2, [r0, #8]
	mov	r8, r1
	ldr	r4, [r0]
	cmp	r2, r4
	beq	.L114
	ldr	r3, [r0, #4]
	cmp	r3, #0
	ble	.L111
	vdup.16	q8, r1
	mov	r10, #0
	vst1.64	{d16-d17}, [sp:64]
	vstr	d16, [sp, #16]
	vstr	d17, [sp, #24]
.L150:
	asrs	r1, r4, #31
	mul	lr, r2, r10
	ldr	r0, [r9, #16]
	cmp	r4, #31
	lsr	r1, r1, #27
	add	r3, r4, r1
	and	r3, r3, #31
	add	r5, r0, lr, lsl #1
	sub	r3, r3, r1
	bgt	.L133
.L136:
	cmp	r3, #0
	ble	.L135
	subs	r3, r4, r3
	cmp	r3, r4
	bge	.L135
	add	lr, lr, r3
	subs	r1, r4, r3
	add	r0, r0, lr, lsl #1
	ubfx	r2, r0, #1, #2
	negs	r2, r2
	and	r2, r2, #7
	cmp	r2, r1
	it	cs
	movcs	r2, r1
	cmp	r1, #10
	it	ls
	movls	r2, r1
	cbz	r2, .L141
	cmp	r2, #1
	strh	r8, [r5, r3, lsl #1]	@ movhi
	add	r6, r3, #1
	bls	.L170
	cmp	r2, #2
	strh	r8, [r5, r6, lsl #1]	@ movhi
	add	r6, r3, #2
	beq	.L170
	cmp	r2, #3
	strh	r8, [r5, r6, lsl #1]	@ movhi
	add	r6, r3, #3
	beq	.L170
	cmp	r2, #4
	strh	r8, [r5, r6, lsl #1]	@ movhi
	add	r6, r3, #4
	beq	.L170
	cmp	r2, #5
	strh	r8, [r5, r6, lsl #1]	@ movhi
	add	r6, r3, #5
	beq	.L170
	cmp	r2, #6
	strh	r8, [r5, r6, lsl #1]	@ movhi
	add	r6, r3, #6
	beq	.L170
	cmp	r2, #7
	strh	r8, [r5, r6, lsl #1]	@ movhi
	add	r6, r3, #7
	beq	.L170
	cmp	r2, #8
	strh	r8, [r5, r6, lsl #1]	@ movhi
	add	r6, r3, #8
	beq	.L170
	cmp	r2, #9
	strh	r8, [r5, r6, lsl #1]	@ movhi
	add	r6, r3, #9
	beq	.L170
	adds	r3, r3, #10
	strh	r8, [r5, r6, lsl #1]	@ movhi
.L142:
	cmp	r1, r2
	beq	.L135
.L141:
	subs	r1, r1, r2
	lsrs	r6, r1, #3
	lsl	lr, r6, #3
	cbz	r6, .L144
	add	r0, r0, r2, lsl #1
	movs	r7, #0
	vldr	d16, [sp, #16]
	vldr	d17, [sp, #24]
.L149:
	adds	r7, r7, #1
	vst1.64	{d16-d17}, [r0:64]!
	cmp	r7, r6
	bcc	.L149
	cmp	r1, lr
	add	r3, r3, lr
	beq	.L135
.L144:
	adds	r2, r3, #1
	strh	r8, [r5, r3, lsl #1]	@ movhi
	cmp	r4, r2
	ble	.L135
	adds	r1, r3, #2
	strh	r8, [r5, r2, lsl #1]	@ movhi
	cmp	r4, r1
	ble	.L135
	adds	r2, r3, #3
	strh	r8, [r5, r1, lsl #1]	@ movhi
	cmp	r4, r2
	ble	.L135
	adds	r1, r3, #4
	strh	r8, [r5, r2, lsl #1]	@ movhi
	cmp	r4, r1
	ble	.L135
	adds	r2, r3, #5
	strh	r8, [r5, r1, lsl #1]	@ movhi
	cmp	r4, r2
	ble	.L135
	adds	r3, r3, #6
	strh	r8, [r5, r2, lsl #1]	@ movhi
	cmp	r4, r3
	it	gt
	strhgt	r8, [r5, r3, lsl #1]	@ movhi
.L135:
	ldr	r3, [r9, #24]
	cbz	r3, .L139
	ldr	r0, [r9, #8]
	movs	r1, #0
	ldr	r2, [r9]
	mla	r0, r0, r10, r3
	bl	memset(PLT)
.L139:
	ldr	r3, [r9, #4]
	add	r10, r10, #1
	cmp	r3, r10
	ble	.L111
	ldr	r2, [r9, #8]
	ldr	r4, [r9]
	b	.L150
.L170:
	mov	r3, r6
	b	.L142
.L133:
	subs	r1, r4, r3
	mov	r7, r5
	movs	r6, #0
	vld1.64	{d8-d9}, [sp:64]
.L137:
	vmov	q5, q4  @ v8hi
	adds	r6, r6, #32
	vmov	q6, q4  @ v8hi
	mov	r2, r7
	vmov	q7, q4  @ v8hi
	cmp	r6, r1
	add	r7, r7, #64
	vst4.16	{d8, d10, d12, d14}, [r2]!
	vst4.16	{d9, d11, d13, d15}, [r2]
	blt	.L137
	b	.L136
.L111:
	add	sp, sp, #32
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L114:
	ldr	r5, [r0, #12]
	ldr	r2, [r0, #16]
	cmp	r5, #31
	asr	r3, r5, #31
	lsr	r3, r3, #27
	add	r1, r5, r3
	and	r1, r1, #31
	sub	r3, r1, r3
	bgt	.L117
.L120:
	cmp	r3, #0
	ble	.L119
	subs	r3, r5, r3
	cmp	r5, r3
	ble	.L119
	lsls	r6, r3, #1
	subs	r0, r5, r3
	adds	r4, r2, r6
	ubfx	r1, r4, #1, #2
	negs	r1, r1
	and	r1, r1, #7
	cmp	r1, r0
	it	cs
	movcs	r1, r0
	cmp	r0, #10
	it	ls
	movls	r1, r0
	cbz	r1, .L124
	cmp	r1, #1
	strh	r8, [r2, r6]	@ movhi
	add	r6, r3, #1
	bls	.L160
	cmp	r1, #2
	strh	r8, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #2
	bls	.L160
	cmp	r1, #3
	strh	r8, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #3
	bls	.L160
	cmp	r1, #4
	strh	r8, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #4
	bls	.L160
	cmp	r1, #5
	strh	r8, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #5
	bls	.L160
	cmp	r1, #6
	strh	r8, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #6
	bls	.L160
	cmp	r1, #7
	strh	r8, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #7
	bls	.L160
	cmp	r1, #8
	strh	r8, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #8
	bls	.L160
	cmp	r1, #9
	strh	r8, [r2, r6, lsl #1]	@ movhi
	add	r6, r3, #9
	bls	.L160
	adds	r3, r3, #10
	strh	r8, [r2, r6, lsl #1]	@ movhi
.L125:
	cmp	r1, r0
	beq	.L119
.L124:
	subs	r0, r0, r1
	lsrs	r6, r0, #3
	lsls	r7, r6, #3
	cbz	r6, .L127
	add	r1, r4, r1, lsl #1
	vdup.16	q8, r8
	movs	r4, #0
.L132:
	adds	r4, r4, #1
	vst1.64	{d16-d17}, [r1:64]!
	cmp	r6, r4
	bhi	.L132
	cmp	r7, r0
	add	r3, r3, r7
	beq	.L119
.L127:
	adds	r1, r3, #1
	strh	r8, [r2, r3, lsl #1]	@ movhi
	cmp	r5, r1
	ble	.L119
	adds	r0, r3, #2
	strh	r8, [r2, r1, lsl #1]	@ movhi
	cmp	r5, r0
	ble	.L119
	adds	r1, r3, #3
	strh	r8, [r2, r0, lsl #1]	@ movhi
	cmp	r5, r1
	ble	.L119
	adds	r0, r3, #4
	strh	r8, [r2, r1, lsl #1]	@ movhi
	cmp	r5, r0
	ble	.L119
	adds	r1, r3, #5
	strh	r8, [r2, r0, lsl #1]	@ movhi
	cmp	r5, r1
	ble	.L119
	adds	r3, r3, #6
	strh	r8, [r2, r1, lsl #1]	@ movhi
	cmp	r5, r3
	it	gt
	strhgt	r8, [r2, r3, lsl #1]	@ movhi
.L119:
	ldr	r0, [r9, #24]
	cmp	r0, #0
	beq	.L111
	ldr	r2, [r9, #12]
	movs	r1, #0
	add	sp, sp, #32
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, lr}
	b	memset(PLT)
.L160:
	mov	r3, r6
	b	.L125
.L117:
	vdup.16	q12, r8
	subs	r6, r5, r3
	mov	r4, r2
	movs	r0, #0
.L121:
	vmov	q8, q12  @ v8hi
	adds	r0, r0, #32
	vmov	q9, q12  @ v8hi
	mov	r1, r4
	vmov	q10, q12  @ v8hi
	cmp	r0, r6
	vmov	q11, q12  @ v8hi
	add	r4, r4, #64
	vst4.16	{d16, d18, d20, d22}, [r1]!
	vst4.16	{d17, d19, d21, d23}, [r1]
	blt	.L121
	b	.L120
	.size	libaroma_canvas_fillcolor, .-libaroma_canvas_fillcolor
	.section	.text.libaroma_canvas_new_ex,"ax",%progbits
	.align	2
	.global	libaroma_canvas_new_ex
	.thumb
	.thumb_func
	.type	libaroma_canvas_new_ex, %function
libaroma_canvas_new_ex:
	@ args = 4, pretend = 0, frame = 272
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #284
	ldr	lr, [sp, #320]
	mov	r5, r0
	mov	r6, r1
	mov	r7, r2
	mov	r8, r3
	cmp	lr, #0
	beq	.L187
	ldrb	r3, [lr]	@ zero_extendqisi2
	cmp	r3, #64
	beq	.L243
	ldr	r2, .L253
	add	r4, sp, #24
	mov	r3, lr
	mov	r0, r4
	movs	r1, #255
.LPIC10:
	add	r2, pc
	bl	snprintf(PLT)
.L189:
	mov	r0, r4
	movs	r1, #2
	mov	r2, #438
	bl	open(PLT)
	subs	r10, r0, #0
	blt	.L244
	bl	libaroma_filesize_fd(PLT)
	subs	r5, r0, #0
	blt	.L245
	mov	r9, r5
	beq	.L246
	movs	r7, #0
	mov	r1, r5
	movs	r2, #3
	movs	r3, #1
	str	r10, [sp]
	mov	r0, r7
	str	r7, [sp, #4]
	bl	mmap(PLT)
	mov	fp, r0
	mov	r0, r10
	bl	close(PLT)
	cmp	fp, #-1
	beq	.L242
	ldr	r2, [fp, #4]
	ldr	r3, [fp]
	ldrb	r10, [fp, #8]	@ zero_extendqisi2
	ldrb	r1, [fp, #9]	@ zero_extendqisi2
	mul	r3, r2, r3
	lsl	ip, r3, #1
	cmp	r10, r7
	ite	ne
	movne	r10, r3
	moveq	r10, r7
	cmp	r1, r7
	it	eq
	moveq	r3, r7
	add	r8, ip, #12
	add	r2, r10, r8
	add	r3, r3, r2
	cmp	r3, r5
	beq	.L197
	mov	r0, fp
	mov	r1, r5
	bl	munmap(PLT)
	mov	r0, r7
	b	.L206
.L244:
	cmp	r6, #0
	it	gt
	cmpgt	r5, #0
	ite	le
	movle	fp, #1
	movgt	fp, #0
	bgt	.L191
.L242:
	movs	r0, #0
.L206:
	add	sp, sp, #284
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L243:
	add	r3, lr, #1
	ldr	r2, .L253+4
	str	r3, [sp]
	add	r4, sp, #24
	ldr	r3, .L253+8
	mov	r0, r4
	movs	r1, #255
.LPIC8:
	add	r2, pc
.LPIC9:
	add	r3, pc
	bl	snprintf(PLT)
	b	.L189
.L246:
	mov	r0, r10
	bl	close(PLT)
	mov	r0, r5
	add	sp, sp, #284
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L191:
	mov	r2, #438
	mov	r0, r4
	movw	r1, #578
	bl	open(PLT)
	subs	r2, r0, #0
	str	r2, [sp, #16]
	blt	.L242
	mul	r3, r6, r5
	lsl	ip, r3, #1
	cmp	r7, #0
	ite	ne
	movne	r10, r3
	moveq	r10, #0
	cmp	r8, #0
	it	eq
	moveq	r3, #0
	add	r2, ip, #12
	str	ip, [sp, #12]
	mov	r9, r2
	str	r2, [sp, #20]
	add	r9, r9, r10
	add	r9, r9, r3
	mov	r1, r9
	bl	ftruncate(PLT)
	ldr	ip, [sp, #12]
	cbz	r0, .L196
	ldr	r0, [sp, #16]
	bl	close(PLT)
	mov	r0, fp
	b	.L206
.L187:
	cmp	r1, #0
	it	gt
	cmpgt	r0, #0
	ble	.L242
	movs	r0, #32
	movs	r1, #1
	bl	calloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L242
	mul	r9, r6, r5
	str	r5, [r0]
	str	r5, [r0, #8]
	movs	r1, #2
	str	r6, [r0, #4]
	str	r9, [r0, #12]
	mov	r0, r9
	bl	calloc(PLT)
	mov	r5, r0
	str	r0, [r4, #16]
	cmp	r0, #0
	beq	.L247
	cmp	r7, #0
	bne	.L248
	str	r7, [r4, #20]
.L211:
	cmp	r8, #0
	bne	.L249
	str	r8, [r4, #24]
	mov	r0, r4
	b	.L206
.L196:
	ldr	r2, [sp, #16]
	mov	r1, r9
	movs	r3, #1
	str	r0, [sp, #4]
	str	ip, [sp, #12]
	str	r2, [sp]
	movs	r2, #3
	bl	mmap(PLT)
	mov	fp, r0
	ldr	r0, [sp, #16]
	bl	close(PLT)
	cmp	fp, #-1
	ldr	ip, [sp, #12]
	beq	.L242
	adds	r7, r7, #0
	stmia	fp, {r5, r6}
	it	ne
	movne	r7, #1
	adds	r3, r8, #0
	ldr	r8, [sp, #20]
	it	ne
	movne	r3, #1
	strb	r7, [fp, #8]
	movs	r7, #1
	strb	r3, [fp, #9]
.L197:
	movs	r1, #1
	mov	r0, #296
	str	ip, [sp, #12]
	bl	calloc(PLT)
	ldr	r2, .L253+12
	mov	r5, r0
	mov	r3, r4
	movs	r1, #255
	adds	r0, r0, #40
	str	fp, [r5, #32]
.LPIC11:
	add	r2, pc
	str	r9, [r5, #36]
	bl	snprintf(PLT)
	ldr	r2, [fp]
	movs	r0, #2
	ldr	r3, [fp, #4]
	add	r1, fp, #12
	strb	r0, [r5, #28]
	str	r2, [r5, #8]
	str	r2, [r5]
	mul	r2, r3, r2
	str	r3, [r5, #4]
	str	r1, [r5, #16]
	ldr	ip, [sp, #12]
	str	r2, [r5, #12]
	ldrb	r0, [fp, #8]	@ zero_extendqisi2
	cbz	r0, .L202
	add	r0, fp, r8
.L202:
	str	r0, [r5, #20]
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	cbz	r3, .L203
	add	r3, ip, r10
	adds	r3, r3, #12
	add	r3, r3, fp
.L203:
	str	r3, [r5, #24]
	cbz	r7, .L241
	ldrb	r3, [fp, #8]	@ zero_extendqisi2
	cbnz	r3, .L250
.L204:
	ldrb	r3, [fp, #9]	@ zero_extendqisi2
	cbnz	r3, .L251
.L205:
	lsls	r2, r2, #1
	ldr	r0, [r5, #16]
	movs	r1, #0
	bl	memset(PLT)
	mov	r0, r5
	b	.L206
.L247:
	mov	r0, r4
	bl	free(PLT)
.L241:
	mov	r0, r5
	b	.L206
.L245:
	mov	r0, r10
	bl	close(PLT)
	movs	r0, #0
	b	.L206
.L248:
	mov	r0, r9
	bl	malloc(PLT)
	mov	r7, r0
	str	r0, [r4, #20]
	cmp	r0, #0
	bne	.L211
	mov	r0, r5
	bl	free(PLT)
	mov	r0, r4
	bl	free(PLT)
	mov	r0, r7
	b	.L206
.L249:
	mov	r0, r9
	movs	r1, #1
	bl	calloc(PLT)
	str	r0, [r4, #24]
	cbz	r0, .L252
	mov	r0, r4
	b	.L206
.L250:
	movs	r1, #255
	bl	memset(PLT)
	ldr	r2, [r5, #12]
	b	.L204
.L251:
	ldr	r0, [r5, #24]
	movs	r1, #0
	bl	memset(PLT)
	ldr	r2, [r5, #12]
	b	.L205
.L252:
	cbz	r7, .L213
	mov	r0, r7
	bl	free(PLT)
.L213:
	ldr	r0, [r4, #16]
	bl	free(PLT)
	mov	r0, r4
	bl	free(PLT)
	b	.L242
.L254:
	.align	2
.L253:
	.word	.LC2-(.LPIC10+4)
	.word	.LC0-(.LPIC8+4)
	.word	.LC1-(.LPIC9+4)
	.word	.LC2-(.LPIC11+4)
	.size	libaroma_canvas_new_ex, .-libaroma_canvas_new_ex
	.section	.text.libaroma_canvas_area_update,"ax",%progbits
	.align	2
	.global	libaroma_canvas_area_update
	.thumb
	.thumb_func
	.type	libaroma_canvas_area_update, %function
libaroma_canvas_area_update:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	beq	.L266
	cmp	r0, #0
	beq	.L260
	push	{r4, r5, r6, r7, r8, lr}
	bic	r5, r2, r2, asr #31
	ldr	lr, [sp, #24]
	bic	r6, r3, r3, asr #31
	ldr	r7, [r1]
	add	r2, r2, lr
	ldr	lr, [sp, #28]
	ldr	r4, [r1, #4]
	cmp	r2, r7
	ite	le
	rsble	r2, r5, r2
	rsbgt	r2, r5, r7
	add	r3, r3, lr
	cmp	r3, r4
	ite	le
	rsble	r3, r6, r3
	rsbgt	r3, r6, r4
	cmp	r3, #0
	it	gt
	cmpgt	r2, #0
	it	le
	movle	r1, #0
	ble	.L256
	ldr	r7, [r1, #8]
	mul	r8, r3, r2
	ldr	lr, [r1, #16]
	mov	ip, #1
	ldr	r4, [r1, #20]
	str	r7, [r0, #8]
	ldr	r7, [r1, #8]
	str	r3, [r0, #4]
	str	r2, [r0]
	str	r8, [r0, #12]
	mla	r5, r7, r6, r5
	strb	ip, [r0, #28]
	add	r3, lr, r5, lsl #1
	str	r3, [r0, #16]
	cbz	r4, .L257
	add	r4, r4, r5
.L257:
	ldr	r6, [r1, #24]
	str	r4, [r0, #20]
	cbz	r6, .L258
	movs	r1, #1
	add	r5, r5, r6
	str	r5, [r0, #24]
.L256:
	mov	r0, r1
	pop	{r4, r5, r6, r7, r8, pc}
.L260:
	mov	r1, r0
.L266:
	mov	r0, r1
	bx	lr
.L258:
	movs	r1, #1
	str	r6, [r0, #24]
	mov	r0, r1
	pop	{r4, r5, r6, r7, r8, pc}
	.size	libaroma_canvas_area_update, .-libaroma_canvas_area_update
	.section	.text.libaroma_canvas_area,"ax",%progbits
	.align	2
	.global	libaroma_canvas_area
	.thumb
	.thumb_func
	.type	libaroma_canvas_area, %function
libaroma_canvas_area:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	sp, sp, #8
	cbz	r0, .L270
	mov	r6, r1
	movs	r0, #32
	movs	r1, #1
	mov	r5, r2
	mov	r7, r3
	bl	calloc(PLT)
	mov	r8, r0
	cbz	r0, .L270
	ldr	r3, [sp, #32]
	mov	r1, r4
	str	r7, [sp]
	mov	r2, r6
	str	r3, [sp, #4]
	mov	r3, r5
	bl	libaroma_canvas_area_update(PLT)
	mov	r4, r0
	mov	r0, r8
	cbz	r4, .L276
.L269:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L270:
	movs	r0, #0
	b	.L269
.L276:
	bl	free(PLT)
	mov	r0, r4
	b	.L269
	.size	libaroma_canvas_area, .-libaroma_canvas_area
	.section	.text.libaroma_canvas_dup,"ax",%progbits
	.align	2
	.global	libaroma_canvas_dup
	.thumb
	.thumb_func
	.type	libaroma_canvas_dup, %function
libaroma_canvas_dup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r0
	sub	sp, sp, #8
	cmp	r0, #0
	beq	.L280
	ldr	r2, [r0, #20]
	movs	r5, #0
	ldr	r3, [r0, #24]
	ldmia	r0, {r0, r1}
	subs	r7, r2, r5
	str	r5, [sp]
	it	ne
	movne	r7, #1
	subs	r8, r3, r5
	it	ne
	movne	r8, #1
	mov	r2, r7
	mov	r3, r8
	bl	libaroma_canvas_new_ex(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L280
	ldr	r3, [r6, #4]
	cmp	r3, r5
	ble	.L285
.L283:
	ldr	r2, [r4]
	ldr	r1, [r4, #8]
	ldr	r0, [r4, #16]
	mul	r3, r5, r2
	lsls	r2, r2, #1
	mul	r1, r1, r5
	adds	r5, r5, #1
	add	r0, r0, r3, lsl #1
	ldr	r3, [r6, #16]
	add	r1, r3, r1, lsl #1
	bl	memcpy(PLT)
	ldr	r3, [r6, #4]
	cmp	r3, r5
	bgt	.L283
	cbz	r7, .L284
	cmp	r3, #0
	ble	.L285
	movs	r5, #0
.L286:
	ldr	r7, [r4]
	ldr	r3, [r6, #20]
	ldr	r0, [r4, #20]
	ldr	r1, [r4, #8]
	mov	r2, r7
	mla	r0, r5, r7, r0
	mla	r1, r1, r5, r3
	adds	r5, r5, #1
	bl	memcpy(PLT)
	ldr	r3, [r6, #4]
	cmp	r3, r5
	bgt	.L286
.L284:
	cmp	r8, #0
	beq	.L285
	cmp	r3, #0
	ble	.L285
	movs	r5, #0
.L287:
	ldr	r3, [r4]
	ldr	r0, [r4, #24]
	ldr	r7, [r4, #8]
	ldr	r1, [r6, #24]
	mov	r2, r3
	mla	r0, r5, r3, r0
	mla	r1, r7, r5, r1
	adds	r5, r5, #1
	bl	memcpy(PLT)
	ldr	r3, [r6, #4]
	cmp	r3, r5
	bgt	.L287
.L285:
	mov	r0, r4
.L298:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L280:
	movs	r0, #0
	b	.L298
	.size	libaroma_canvas_dup, .-libaroma_canvas_dup
	.section	.text.libaroma_canvas_free_ex1,"ax",%progbits
	.align	2
	.global	libaroma_canvas_free_ex1
	.thumb
	.thumb_func
	.type	libaroma_canvas_free_ex1, %function
libaroma_canvas_free_ex1:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r0, .L300
	ldr	r5, [r0]
	cbz	r5, .L302
	ldrb	r3, [r5, #28]	@ zero_extendqisi2
	lsls	r2, r3, #31
	bmi	.L326
	lsls	r3, r3, #30
	bmi	.L327
	ldr	r0, [r5, #16]
	cbz	r0, .L307
	bl	free(PLT)
.L307:
	ldr	r0, [r5, #20]
	cbz	r0, .L308
	bl	free(PLT)
.L308:
	ldr	r0, [r5, #24]
	cbz	r0, .L306
	bl	free(PLT)
.L306:
	ldr	r0, [r4]
	bl	free(PLT)
.L302:
	movs	r3, #0
	str	r3, [r4]
.L300:
	pop	{r4, r5, r6, pc}
.L326:
	mov	r0, r5
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r4]
	b	.L300
.L327:
	mov	r6, r1
	ldr	r0, [r5, #32]
	ldr	r1, [r5, #36]
	bl	munmap(PLT)
	cmp	r6, #0
	beq	.L306
	add	r0, r5, #40
	bl	unlink(PLT)
	b	.L306
	.size	libaroma_canvas_free_ex1, .-libaroma_canvas_free_ex1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%s%s\000"
	.space	3
.LC1:
	.ascii	"/tmp/.libaromashm-\000"
	.space	1
.LC2:
	.ascii	"%s\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
