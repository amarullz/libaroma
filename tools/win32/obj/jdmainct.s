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
	.file	"jdmainct.c"
	.section	.text.process_data_simple_main,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	process_data_simple_main, %function
process_data_simple_main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	ldr	r4, [r0, #436]
	sub	sp, sp, #20
	mov	r8, r1
	mov	r7, r2
	mov	r9, r3
	ldr	r6, [r4, #48]
	cbz	r6, .L2
	add	r6, r4, #8
.L3:
	ldr	lr, [r5, #444]
	mov	r1, r6
	ldr	r6, [r5, #328]
	mov	r0, r5
	str	r8, [sp]
	add	r2, r4, #52
	str	r7, [sp, #4]
	str	r9, [sp, #8]
	mov	r3, r6
	ldr	r5, [lr, #4]
	blx	r5
	ldr	r3, [r4, #52]
	cmp	r6, r3
	ittt	ls
	movls	r3, #0
	strls	r3, [r4, #48]
	strls	r3, [r4, #52]
.L1:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L2:
	ldr	r2, [r0, #440]
	add	r6, r4, #8
	mov	r1, r6
	ldr	r3, [r2, #16]
	blx	r3
	cmp	r0, #0
	beq	.L1
	movs	r3, #1
	str	r3, [r4, #48]
	b	.L3
	.size	process_data_simple_main, .-process_data_simple_main
	.global	__aeabi_idiv
	.global	__aeabi_uidivmod
	.section	.text.process_data_context_main,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	process_data_context_main, %function
process_data_context_main:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	ldr	r4, [r0, #436]
	mov	r6, r0
	mov	r10, r2
	str	r3, [sp, #16]
	ldr	r3, [r4, #48]
	str	r1, [sp, #24]
	cbz	r3, .L55
	ldr	r3, [r4, #68]
	cmp	r3, #1
	beq	.L13
.L57:
	cmp	r3, #2
	beq	.L14
	cmp	r3, #0
	beq	.L56
.L9:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L14:
	ldr	r1, [r4, #64]
	add	r5, r4, #52
	ldr	r7, [sp, #24]
	mov	r2, r5
	ldr	r3, [r4, #72]
	mov	r0, r6
	adds	r1, r1, #14
	str	r5, [sp, #28]
	ldr	r1, [r4, r1, lsl #2]
	ldr	r5, [r6, #444]
	stmia	sp, {r7, r10}
	ldr	r7, [sp, #16]
	str	r7, [sp, #8]
	ldr	r5, [r5, #4]
	blx	r5
	ldr	r2, [r4, #52]
	ldr	r3, [r4, #72]
	cmp	r2, r3
	bcc	.L9
	movs	r3, #0
	str	r3, [r4, #68]
	ldr	r3, [r10]
	cmp	r7, r3
	bhi	.L17
	b	.L9
.L55:
	ldr	r2, [r4, #64]
	ldr	r3, [r0, #440]
	adds	r2, r2, #14
	ldr	r1, [r4, r2, lsl #2]
	ldr	r3, [r3, #16]
	blx	r3
	cmp	r0, #0
	beq	.L9
	ldr	r3, [r4, #76]
	movs	r2, #1
	str	r2, [r4, #48]
	add	r3, r3, r2
	str	r3, [r4, #76]
	ldr	r3, [r4, #68]
	cmp	r3, #1
	bne	.L57
.L13:
	add	r5, r4, #52
	ldr	r3, [r4, #72]
	str	r5, [sp, #28]
	mov	r2, r5
	b	.L16
.L56:
	add	r7, r4, #52
	str	r7, [sp, #28]
.L17:
	ldr	r2, [r6, #328]
	ldr	r0, [r6, #332]
	ldr	r1, [r4, #76]
	str	r2, [sp, #32]
	movs	r2, #0
	ldr	r5, [sp, #32]
	cmp	r1, r0
	str	r2, [r4, #52]
	add	r3, r5, #-1
	str	r3, [r4, #72]
	beq	.L58
.L19:
	movs	r2, #1
	str	r2, [r4, #68]
	ldr	r2, [sp, #28]
.L16:
	ldr	r1, [r4, #64]
	mov	r0, r6
	ldr	r7, [sp, #24]
	ldr	r5, [r6, #444]
	adds	r1, r1, #14
	ldr	r1, [r4, r1, lsl #2]
	stmia	sp, {r7, r10}
	ldr	r7, [sp, #16]
	str	r7, [sp, #8]
	ldr	r5, [r5, #4]
	blx	r5
	ldr	r2, [r4, #52]
	ldr	r3, [r4, #72]
	cmp	r2, r3
	bcc	.L9
	ldr	r3, [r4, #76]
	cmp	r3, #1
	beq	.L37
	ldr	r3, [r6, #328]
	adds	r2, r3, #1
	adds	r3, r3, #2
	mov	r5, r2
	mov	r7, r3
	str	r2, [sp, #24]
	str	r3, [sp, #28]
.L38:
	ldr	r3, [r4, #64]
	movs	r1, #0
	movs	r2, #2
	str	r5, [r4, #52]
	str	r7, [r4, #72]
	eor	r3, r3, #1
	str	r1, [r4, #48]
	str	r3, [r4, #64]
	str	r2, [r4, #68]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L37:
	ldr	r3, [r6, #40]
	ldr	r5, [r6, #328]
	ldr	r10, [r6, #436]
	cmp	r3, #0
	ldr	r9, [r6, #224]
	str	r5, [sp, #32]
	ble	.L59
	mov	r2, r5
	ldr	r5, [sp, #32]
	mov	r8, #0
	mov	r7, r3
	adds	r2, r2, #1
	str	r4, [sp, #20]
	adds	r5, r5, #2
	str	r2, [sp, #24]
	str	r5, [sp, #28]
.L44:
	ldr	r3, [r9, #12]
	ldr	r0, [r9, #36]
	ldr	r1, [sp, #32]
	pld	[r9, #348]
	mul	r0, r0, r3
	bl	__aeabi_idiv(PLT)
	ldr	r2, [r10, #56]
	subs	r5, r0, #0
	ldr	r3, [r10, #60]
	ldr	r1, [r2, r8, lsl #2]
	ldr	r2, [r3, r8, lsl #2]
	ble	.L42
	ldr	r4, [sp, #24]
	rsb	r0, r5, r5, lsl #30
	lsl	fp, r5, #2
	movs	r3, #0
	lsls	r0, r0, #2
	str	r7, [sp, #16]
	mul	r4, r4, r5
	add	ip, r1, r0
	add	r0, r0, r2
	add	r5, r5, r4
	lsls	r4, r4, #2
	lsls	r5, r5, #2
	add	lr, r1, r4
	adds	r6, r1, r5
	add	r4, r4, r2
	add	r5, r5, r2
.L43:
	ldr	r7, [lr, r3]
	str	r7, [ip, r3]
	ldr	r7, [r4, r3]
	str	r7, [r0, r3]
	ldr	r7, [r1, r3]
	str	r7, [r6, r3]
	ldr	r7, [r2, r3]
	str	r7, [r5, r3]
	adds	r3, r3, #4
	cmp	r3, fp
	bne	.L43
	ldr	r7, [sp, #16]
.L42:
	add	r8, r8, #1
	add	r9, r9, #84
	cmp	r8, r7
	bne	.L44
	add	r4, sp, #20
	ldmia	r4, {r4, r5, r7}
	b	.L38
.L58:
	ldr	ip, [r6, #40]
	ldr	r5, [r6, #436]
	ldr	r8, [r6, #224]
	cmp	ip, r2
	ble	.L19
	ldr	r3, [r5, #64]
	mov	r9, r2
	str	r6, [sp, #40]
	mov	r6, ip
	str	r4, [sp, #36]
	adds	r3, r3, #14
	str	r10, [sp, #44]
	mov	r7, r3
	b	.L36
.L61:
	lsr	r10, r0, #2
	mov	lr, #0
	lsl	fp, r10, #2
.L31:
	vld1.32	{d16[], d17[]}, [r3]
	add	lr, lr, #1
	cmp	r10, lr
	vst1.32	{q8}, [ip]!
	bhi	.L31
	cmp	r0, fp
	beq	.L30
	add	ip, fp, #1
	ldr	r3, [r2, r1, lsl #2]
	cmp	ip, r0
	add	lr, r4, fp
	str	r3, [r2, lr, lsl #2]
	bge	.L30
	add	fp, fp, #2
	ldr	r3, [r2, r1, lsl #2]
	cmp	r0, fp
	add	ip, ip, r4
	str	r3, [r2, ip, lsl #2]
	ble	.L30
	ldr	r3, [r2, r1, lsl #2]
	add	fp, fp, r4
	str	r3, [r2, fp, lsl #2]
.L30:
	add	r9, r9, #1
	add	r8, r8, #84
	cmp	r9, r6
	beq	.L60
.L36:
	ldr	r3, [r8, #12]
	ldr	r4, [r8, #36]
	ldr	r1, [sp, #32]
	pld	[r8, #180]
	mul	r4, r4, r3
	mov	r0, r4
	bl	__aeabi_idiv(PLT)
	mov	r1, r4
	mov	r10, r0
	ldr	r0, [r8, #44]
	bl	__aeabi_uidivmod(PLT)
	cmp	r1, #0
	it	ne
	movne	r4, r1
	cmp	r9, #0
	bne	.L21
	subs	r0, r4, #1
	mov	r1, r10
	bl	__aeabi_idiv(PLT)
	adds	r0, r0, #1
	str	r0, [r5, #72]
.L21:
	lsl	r0, r10, #1
	ldr	r3, [r5, r7, lsl #2]
	cmp	r0, #0
	ldr	r2, [r3, r9, lsl #2]
	ble	.L30
	add	r1, r4, #1073741824
	cmp	r0, #8
	add	r1, r1, #-1
	it	ls
	movls	r10, #0
	lsl	lr, r1, #2
	it	hi
	movhi	r10, #1
	add	ip, lr, #4
	add	r3, r2, lr
	add	ip, ip, r2
	cmp	r10, #0
	bne	.L61
	cmp	r0, #8
	ble	.L32
	sub	r1, r0, #9
	add	lr, lr, #104
	bic	r1, r1, #7
	add	lr, lr, r2
	adds	r1, r1, #8
	mov	ip, r2
.L33:
	ldr	r2, [r3]
	add	r10, r10, #8
	cmp	r10, r1
	pld	[lr]
	add	lr, lr, #32
	str	r2, [lr, #-132]
	ldr	r2, [r3]
	str	r2, [lr, #-128]
	ldr	r2, [r3]
	str	r2, [lr, #-124]
	ldr	r2, [r3]
	str	r2, [lr, #-120]
	ldr	r2, [r3]
	str	r2, [lr, #-116]
	ldr	r2, [r3]
	str	r2, [lr, #-112]
	ldr	r2, [r3]
	str	r2, [lr, #-108]
	ldr	r2, [r3]
	str	r2, [lr, #-104]
	bne	.L33
	mov	r2, ip
.L32:
	add	r1, r4, r10
	add	r1, r1, #1073741824
	subs	r1, r1, #1
	add	r2, r2, r1, lsl #2
.L35:
	ldr	r1, [r3]
	add	r10, r10, #1
	cmp	r0, r10
	str	r1, [r2, #4]!
	bgt	.L35
	b	.L30
.L60:
	add	r4, sp, #36
	ldmia	r4, {r4, r6, r10}
	ldr	r3, [r4, #72]
	b	.L19
.L59:
	mov	r7, r5
	adds	r5, r5, #1
	adds	r7, r7, #2
	str	r5, [sp, #24]
	str	r7, [sp, #28]
	b	.L38
	.size	process_data_context_main, .-process_data_context_main
	.section	.text.process_data_crank_post,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	process_data_crank_post, %function
process_data_crank_post:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #16
	ldr	r4, [r0, #444]
	str	r1, [sp]
	movs	r1, #0
	str	r2, [sp, #4]
	mov	r2, r1
	str	r3, [sp, #8]
	mov	r3, r1
	ldr	r4, [r4, #4]
	blx	r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
	.size	process_data_crank_post, .-process_data_crank_post
	.section	.text.start_pass_main,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_main, %function
start_pass_main:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #436]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	str	r2, [sp, #16]
	cbz	r1, .L66
	cmp	r1, #2
	bne	.L125
	ldr	r3, .L128
	ldr	r7, [sp, #16]
.LPIC10:
	add	r3, pc
	str	r3, [r7, #4]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L125:
	ldr	r3, [r0]
	movs	r2, #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	bx	r3	@ indirect register sibling call
.L66:
	ldr	r2, [r0, #464]
	ldr	r2, [r2, #8]
	cbnz	r2, .L126
	ldr	r5, [sp, #16]
	ldr	r3, .L128+4
	mov	r6, r5
.LPIC9:
	add	r3, pc
	str	r3, [r5, #4]
.L70:
	movs	r3, #0
	str	r3, [r6, #48]
	str	r3, [r6, #52]
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L126:
	ldr	r4, [r0, #40]
	ldr	r2, .L128+8
	ldr	r5, [r0, #328]
	ldr	r6, [sp, #16]
	cmp	r4, #0
.LPIC8:
	add	r2, pc
	str	r4, [sp, #36]
	str	r5, [sp, #40]
	str	r2, [r6, #4]
	ldr	r3, [r0, #224]
	ble	.L98
	add	r10, r3, #96
	ldr	r3, [sp, #16]
	mov	r2, r5
	str	r1, [sp, #8]
	adds	r2, r2, #2
	mov	r9, r10
	str	r2, [sp, #44]
	str	r3, [sp, #28]
	b	.L109
.L127:
	lsr	r8, lr, #2
	mov	ip, r1
	mov	r7, r2
	lsl	r5, r8, #2
	mov	r6, r3
	movs	r4, #0
.L80:
	adds	r4, r4, #1
	vld1.32	{q8}, [ip]!
	cmp	r8, r4
	vst1.32	{q8}, [r7]!
	vst1.32	{q8}, [r6]!
	bhi	.L80
	cmp	lr, r5
	beq	.L79
	ldr	r6, [r1, r5, lsl #2]
	adds	r4, r5, #1
	cmp	lr, r4
	str	r6, [r2, r5, lsl #2]
	str	r6, [r3, r5, lsl #2]
	ble	.L79
	ldr	r6, [r1, r4, lsl #2]
	adds	r5, r5, #2
	cmp	lr, r5
	str	r6, [r2, r4, lsl #2]
	str	r6, [r3, r4, lsl #2]
	ble	.L79
	ldr	r4, [r1, r5, lsl #2]
	str	r4, [r2, r5, lsl #2]
	str	r4, [r3, r5, lsl #2]
.L79:
	lsls	r4, r0, #1
	cmp	r4, #0
	ble	.L73
	sub	lr, lr, r0, lsl #2
	str	lr, [sp, #12]
	add	lr, lr, r4
	ldr	r8, [sp, #12]
	lsl	r10, lr, #2
	str	lr, [sp, #20]
	mov	lr, r10
	mov	r5, r10
	add	lr, lr, r1
	add	r5, r5, r2
	lsl	r8, r8, #2
	add	fp, lr, #16
	add	ip, r5, #16
	str	r10, [sp, #24]
	mov	r6, r8
	str	r8, [sp, #32]
	add	r6, r6, r2
	ldr	r7, [sp, #32]
	add	r8, r6, #16
	cmp	r6, fp
	it	cc
	cmpcc	lr, r8
	ite	cs
	movcs	r10, #1
	movcc	r10, #0
	cmp	r5, fp
	it	cc
	cmpcc	lr, ip
	add	r7, r7, r1
	ite	cs
	movcs	fp, #1
	movcc	fp, #0
	and	fp, r10, fp
	add	r10, r7, #16
	cmp	r4, #6
	ite	ls
	movls	fp, #0
	andhi	fp, fp, #1
	cmp	r7, r8
	it	cc
	cmpcc	r6, r10
	str	r10, [sp, #4]
	ite	cs
	movcs	r10, #1
	movcc	r10, #0
	cmp	r5, r8
	it	cc
	cmpcc	r6, ip
	and	r10, fp, r10
	ldr	fp, [sp, #4]
	ite	cs
	movcs	r8, #1
	movcc	r8, #0
	and	r10, r10, r8
	cmp	r5, fp
	it	cc
	cmpcc	r7, ip
	ite	cs
	movcs	ip, #1
	movcc	ip, #0
	ands	r10, r10, ip
	beq	.L87
	lsr	r10, r4, #2
	mov	ip, #0
	lsl	r8, r10, #2
.L92:
	add	ip, ip, #1
	vld1.32	{q8}, [lr]!
	cmp	r10, ip
	vst1.32	{q8}, [r6]!
	vld1.32	{q8}, [r7]!
	vst1.32	{q8}, [r5]!
	bhi	.L92
	cmp	r4, r8
	beq	.L73
	ldr	lr, [sp, #20]
	add	r5, r8, #1
	ldr	r7, [sp, #12]
	cmp	r5, r4
	add	lr, lr, r8
	ldr	r6, [r1, lr, lsl #2]
	add	r7, r7, r8
	str	r6, [r2, r7, lsl #2]
	ldr	r7, [r1, r7, lsl #2]
	str	r7, [r2, lr, lsl #2]
	bge	.L73
	ldr	r6, [sp, #20]
	add	r8, r8, #2
	ldr	r7, [sp, #12]
	cmp	r4, r8
	add	r6, r6, r5
	add	r5, r5, r7
	ldr	r7, [r1, r6, lsl #2]
	str	r7, [r2, r5, lsl #2]
	ldr	r5, [r1, r5, lsl #2]
	str	r5, [r2, r6, lsl #2]
	ble	.L73
	ldr	r4, [sp, #20]
	ldr	ip, [sp, #12]
	add	r4, r4, r8
	ldr	r5, [r1, r4, lsl #2]
	add	r8, r8, ip
	str	r5, [r2, r8, lsl #2]
	ldr	r1, [r1, r8, lsl #2]
	str	r1, [r2, r4, lsl #2]
.L73:
	cmp	r0, #0
	ble	.L86
	rsb	r1, r0, r0, lsl #30
	adds	r4, r3, #4
	lsls	r1, r1, #2
	adds	r2, r3, r1
	add	r5, r2, r0, lsl #2
	cmp	r2, r4
	it	cc
	cmpcc	r3, r5
	ite	cs
	movcs	r4, #1
	movcc	r4, #0
	cmp	r0, #8
	ite	ls
	movls	r4, #0
	andhi	r4, r4, #1
	cmp	r4, #0
	beq	.L99
	lsrs	r5, r0, #2
	mov	r1, r2
	movs	r2, #0
	lsls	r4, r5, #2
.L104:
	vld1.32	{d16[], d17[]}, [r3]
	adds	r2, r2, #1
	cmp	r5, r2
	vst1.32	{q8}, [r1]!
	bhi	.L104
	cmp	r0, r4
	beq	.L86
	ldr	r2, [r3]
	adds	r1, r4, #1
	cmp	r0, r1
	sub	r5, r4, r0
	str	r2, [r3, r5, lsl #2]
	ble	.L86
	ldr	r2, [r3]
	adds	r4, r4, #2
	cmp	r0, r4
	sub	r1, r1, r0
	str	r2, [r3, r1, lsl #2]
	ble	.L86
	ldr	r2, [r3]
	subs	r4, r4, r0
	str	r2, [r3, r4, lsl #2]
.L86:
	ldr	r2, [sp, #8]
	add	r9, r9, #84
	ldr	r4, [sp, #36]
	ldr	r3, [sp, #28]
	adds	r2, r2, #1
	cmp	r2, r4
	str	r2, [sp, #8]
	add	r3, r3, #4
	str	r3, [sp, #28]
	beq	.L98
.L109:
	ldr	r3, [r9, #-84]
	ldr	r0, [r9, #-60]
	ldr	r1, [sp, #40]
	pld	[r9]
	mul	r0, r0, r3
	bl	__aeabi_idiv(PLT)
	ldr	r4, [sp, #44]
	ldr	r5, [sp, #16]
	ldr	r7, [sp, #8]
	ldr	r6, [sp, #28]
	mul	lr, r4, r0
	ldr	r3, [r5, #56]
	ldr	r2, [r5, #60]
	ldr	r1, [r6, #8]
	ldr	r3, [r3, r7, lsl #2]
	cmp	lr, #0
	ldr	r2, [r2, r7, lsl #2]
	ble	.L79
	add	r5, r1, #16
	add	r4, r2, #16
	cmp	r2, r5
	it	cc
	cmpcc	r1, r4
	add	r7, r3, #16
	ite	cs
	movcs	r6, #1
	movcc	r6, #0
	cmp	r3, r5
	it	cc
	cmpcc	r1, r7
	ite	cs
	movcs	r5, #1
	movcc	r5, #0
	ands	r5, r5, r6
	cmp	r3, r4
	it	cc
	cmpcc	r2, r7
	ite	cs
	movcs	r4, #1
	movcc	r4, #0
	cmp	lr, #6
	ite	ls
	movls	r5, #0
	andhi	r5, r5, #1
	ands	r7, r5, r4
	bne	.L127
	cmp	lr, #8
	ble	.L81
	sub	r8, lr, #9
	mov	r4, r1
	bic	r8, r8, #7
	mov	r6, r2
	add	r8, r8, #8
	mov	r5, r3
	mov	ip, r3
.L82:
	ldr	r3, [r4]
	adds	r7, r7, #8
	pld	[r4, #80]
	cmp	r7, r8
	add	r4, r4, #32
	add	r6, r6, #32
	str	r3, [r6, #-32]
	add	r5, r5, #32
	str	r3, [r5, #-32]
	ldr	r3, [r4, #-28]
	str	r3, [r6, #-28]
	str	r3, [r5, #-28]
	ldr	r3, [r4, #-24]
	str	r3, [r6, #-24]
	str	r3, [r5, #-24]
	ldr	r3, [r4, #-20]
	str	r3, [r6, #-20]
	str	r3, [r5, #-20]
	ldr	r3, [r4, #-16]
	str	r3, [r6, #-16]
	str	r3, [r5, #-16]
	ldr	r3, [r4, #-12]
	str	r3, [r6, #-12]
	str	r3, [r5, #-12]
	ldr	r3, [r4, #-8]
	str	r3, [r6, #-8]
	str	r3, [r5, #-8]
	ldr	r3, [r4, #-4]
	str	r3, [r6, #-4]
	str	r3, [r5, #-4]
	bne	.L82
	mov	r3, ip
.L81:
	lsls	r6, r7, #2
	movs	r4, #0
	add	r8, r1, r6
	add	ip, r2, r6
	add	r6, r6, r3
.L84:
	ldr	r5, [r8, r4]
	adds	r7, r7, #1
	cmp	lr, r7
	str	r5, [ip, r4]
	str	r5, [r6, r4]
	add	r4, r4, #4
	bgt	.L84
	b	.L79
.L87:
	cmp	r4, #8
	ble	.L93
	sub	ip, r4, #9
	bic	fp, ip, #7
	mov	ip, r3
	add	fp, fp, #8
.L94:
	ldr	r3, [lr]
	add	r10, r10, #8
	pld	[lr, #56]
	cmp	r10, fp
	pld	[r6, #56]
	add	lr, lr, #32
	str	r3, [r6]
	add	r7, r7, #32
	ldr	r3, [r7, #-32]
	add	r6, r6, #32
	add	r5, r5, #32
	str	r3, [r5, #-32]
	ldr	r3, [lr, #-28]
	str	r3, [r6, #-28]
	ldr	r3, [r7, #-28]
	str	r3, [r5, #-28]
	ldr	r3, [lr, #-24]
	str	r3, [r6, #-24]
	ldr	r3, [r7, #-24]
	str	r3, [r5, #-24]
	ldr	r3, [lr, #-20]
	str	r3, [r6, #-20]
	ldr	r3, [r7, #-20]
	str	r3, [r5, #-20]
	ldr	r3, [lr, #-16]
	str	r3, [r6, #-16]
	ldr	r3, [r7, #-16]
	str	r3, [r5, #-16]
	ldr	r3, [lr, #-12]
	str	r3, [r6, #-12]
	ldr	r3, [r7, #-12]
	str	r3, [r5, #-12]
	ldr	r3, [lr, #-8]
	str	r3, [r6, #-8]
	ldr	r3, [r7, #-8]
	str	r3, [r5, #-8]
	ldr	r3, [lr, #-4]
	str	r3, [r6, #-4]
	ldr	r3, [r7, #-4]
	str	r3, [r5, #-4]
	bne	.L94
	mov	r3, ip
.L93:
	ldr	r8, [sp, #20]
	ldr	r5, [sp, #20]
	ldr	r6, [sp, #12]
	ldr	fp, [sp, #12]
	add	r5, r5, r10
	rsb	r7, r8, r8, lsl #30
	add	r6, r6, r10
	ldr	ip, [sp, #24]
	add	r5, r5, #1073741824
	add	r6, r6, #1073741824
	rsb	lr, fp, fp, lsl #30
	subs	r5, r5, #1
	subs	r6, r6, #1
	ldr	r8, [sp, #32]
	lsls	r7, r7, #2
	add	r1, r1, r5, lsl #2
	add	r6, r2, r6, lsl #2
	lsl	lr, lr, #2
.L96:
	ldr	r5, [r1, #4]!
	add	r10, r10, #1
	cmp	r4, r10
	str	r5, [r6, #4]!
	add	r2, r1, r8
	ldr	r5, [r2, r7]
	add	r2, ip, r6
	str	r5, [r2, lr]
	bgt	.L96
	b	.L73
.L99:
	cmp	r0, #8
	ble	.L105
	sub	r5, r0, #9
	adds	r1, r1, #100
	bic	r5, r5, #7
	add	r1, r1, r3
	adds	r5, r5, #8
.L106:
	ldr	r2, [r3]
	adds	r4, r4, #8
	cmp	r4, r5
	pld	[r1]
	add	r1, r1, #32
	str	r2, [r1, #-132]
	ldr	r2, [r3]
	str	r2, [r1, #-128]
	ldr	r2, [r3]
	str	r2, [r1, #-124]
	ldr	r2, [r3]
	str	r2, [r1, #-120]
	ldr	r2, [r3]
	str	r2, [r1, #-116]
	ldr	r2, [r3]
	str	r2, [r1, #-112]
	ldr	r2, [r3]
	str	r2, [r1, #-108]
	ldr	r2, [r3]
	str	r2, [r1, #-104]
	bne	.L106
.L105:
	subs	r1, r4, r0
	add	r1, r1, #1073741824
	subs	r1, r1, #1
	add	r1, r3, r1, lsl #2
.L108:
	ldr	r2, [r3]
	adds	r4, r4, #1
	cmp	r0, r4
	str	r2, [r1, #4]!
	bgt	.L108
	b	.L86
.L98:
	ldr	r7, [sp, #16]
	movs	r3, #0
	str	r3, [r7, #64]
	mov	r6, r7
	str	r3, [r7, #68]
	str	r3, [r7, #76]
	b	.L70
.L129:
	.align	2
.L128:
	.word	process_data_crank_post-(.LPIC10+4)
	.word	process_data_simple_main-(.LPIC9+4)
	.word	process_data_context_main-(.LPIC8+4)
	.size	start_pass_main, .-start_pass_main
	.section	.text.jinit_d_main_controller,"ax",%progbits
	.align	2
	.global	jinit_d_main_controller
	.thumb
	.thumb_func
	.type	jinit_d_main_controller, %function
jinit_d_main_controller:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r2, #80
	ldr	r3, [r0, #4]
	mov	r5, r1
	movs	r1, #1
	mov	r4, r0
	ldr	r3, [r3]
	blx	r3
	ldr	r3, .L148
	mov	r7, r0
	str	r0, [r4, #436]
.LPIC11:
	add	r3, pc
	str	r3, [r0]
	cmp	r5, #0
	bne	.L145
.L131:
	ldr	r3, [r4, #464]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L132
	ldr	r10, [r4, #328]
	cmp	r10, #1
	ble	.L146
.L133:
	ldr	r2, [r4, #40]
	mov	r0, r4
	ldr	r3, [r4, #4]
	movs	r1, #1
	ldr	fp, [r4, #436]
	lsls	r2, r2, #3
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r4, #40]
	ldr	r6, [r4, #224]
	str	r0, [fp, #56]
	cmp	r2, #0
	add	r0, r0, r2, lsl #2
	mov	r5, r6
	str	r0, [fp, #60]
	ble	.L134
	add	r10, r10, #4
	movs	r5, #0
.L135:
	ldr	r3, [r6, #12]
	ldr	r0, [r6, #36]
	ldr	r1, [r4, #328]
	pld	[r6, #348]
	adds	r6, r6, #84
	mul	r0, r0, r3
	bl	__aeabi_idiv(PLT)
	mov	r9, r0
	ldr	r3, [r4, #4]
	mul	r8, r10, r9
	movs	r1, #1
	mov	r0, r4
	ldr	r3, [r3]
	lsl	r2, r8, #3
	blx	r3
	ldr	r3, [fp, #56]
	add	r0, r0, r9, lsl #2
	ldr	r2, [r4, #40]
	add	r1, r0, r8, lsl #2
	str	r0, [r3, r5, lsl #2]
	ldr	r3, [fp, #60]
	str	r1, [r3, r5, lsl #2]
	adds	r5, r5, #1
	cmp	r5, r2
	blt	.L135
	ldr	r5, [r4, #224]
.L134:
	ldr	r1, [r4, #328]
	add	r8, r1, #2
.L136:
	cmp	r2, #0
	ble	.L130
	movs	r6, #0
	b	.L139
.L147:
	ldr	r1, [r4, #328]
.L139:
	ldr	r3, [r5, #36]
	adds	r6, r6, #1
	ldr	r2, [r5, #28]
	adds	r7, r7, #4
	ldr	r0, [r5, #12]
	adds	r5, r5, #84
	ldr	r9, [r4, #4]
	mul	r10, r2, r3
	mul	r0, r0, r3
	bl	__aeabi_idiv(PLT)
	mov	r2, r10
	mul	r3, r8, r0
	ldr	ip, [r9, #8]
	mov	r0, r4
	movs	r1, #1
	blx	ip
	str	r0, [r7, #4]
	ldr	r3, [r4, #40]
	cmp	r3, r6
	bgt	.L147
.L130:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L132:
	ldr	r8, [r4, #328]
	ldr	r2, [r4, #40]
	ldr	r5, [r4, #224]
	mov	r1, r8
	b	.L136
.L145:
	ldr	r3, [r4]
	movs	r2, #4
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L131
.L146:
	ldr	r3, [r4]
	movs	r2, #47
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r10, [r4, #328]
	b	.L133
.L149:
	.align	2
.L148:
	.word	start_pass_main-(.LPIC11+4)
	.size	jinit_d_main_controller, .-jinit_d_main_controller
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
