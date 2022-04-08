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
	.file	"jcprepct.c"
	.section	.text.start_pass_prep,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_prep, %function
start_pass_prep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	ldr	r4, [r0, #340]
	cbz	r1, .L2
	ldr	r3, [r0]
	movs	r2, #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L2:
	ldr	r1, [r5, #236]
	movs	r3, #0
	ldr	r2, [r5, #32]
	str	r3, [r4, #52]
	str	r3, [r4, #56]
	lsls	r3, r1, #1
	str	r2, [r4, #48]
	str	r3, [r4, #60]
	pop	{r3, r4, r5, pc}
	.size	start_pass_prep, .-start_pass_prep
	.section	.text.pre_process_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pre_process_data, %function
pre_process_data:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r9, r0
	ldr	r10, [r0, #340]
	sub	sp, sp, #36
	mov	r8, #1
	str	r1, [sp, #28]
	add	r1, r10, #8
	str	r2, [sp, #12]
	str	r3, [sp, #20]
	str	r1, [sp, #24]
.L9:
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #20]
	ldr	r1, [r2]
	cmp	r1, r3
	bcs	.L8
	ldr	r2, [sp, #76]
	ldr	r3, [r2]
	ldr	r2, [sp, #80]
	cmp	r3, r2
	bcs	.L8
	ldr	r2, [sp, #20]
	mov	r0, r9
	ldr	r3, [sp, #28]
	ldr	r6, [r10, #52]
	subs	r4, r2, r1
	ldr	r2, [r9, #236]
	ldr	r5, [r9, #352]
	add	r1, r3, r1, lsl #2
	mov	r3, r6
	subs	r6, r2, r6
	ldr	r2, [sp, #24]
	cmp	r4, r6
	it	cs
	movcs	r4, r6
	str	r4, [sp]
	ldr	r5, [r5, #4]
	blx	r5
	ldr	r1, [sp, #12]
	ldr	r3, [r1]
	add	r3, r3, r4
	str	r3, [r1]
	ldr	r1, [r10, #48]
	ldr	r3, [r10, #52]
	ldr	r5, [r9, #236]
	subs	r1, r1, r4
	add	r3, r3, r4
	str	r1, [r10, #48]
	str	r3, [r10, #52]
	cbnz	r1, .L10
	cmp	r3, r5
	bge	.L10
	ldr	r2, [r9, #60]
	cmp	r2, #0
	ble	.L26
	mov	r4, r3
	mov	fp, r10
	mov	r3, r5
	str	r1, [sp, #8]
	str	r10, [sp, #16]
.L15:
	cmp	r4, r5
	ldr	r10, [fp, #8]
	ldr	r6, [r9, #28]
	bge	.L12
	subs	r7, r4, #1
.L14:
	mov	r3, r4
	str	r8, [sp]
	mov	r0, r10
	str	r6, [sp, #4]
	mov	r1, r7
	mov	r2, r10
	adds	r4, r4, #1
	bl	jcopy_sample_rows(PLT)
	cmp	r4, r5
	bne	.L14
	ldr	r5, [r9, #236]
	ldr	r2, [r9, #60]
	mov	r3, r5
.L12:
	ldr	r1, [sp, #8]
	add	fp, fp, #4
	adds	r1, r1, #1
	cmp	r2, r1
	str	r1, [sp, #8]
	ble	.L29
	ldr	r1, [sp, #16]
	ldr	r4, [r1, #52]
	b	.L15
.L29:
	ldr	r10, [sp, #16]
.L11:
	str	r5, [r10, #52]
.L10:
	cmp	r5, r3
	beq	.L31
.L16:
	ldr	r3, [r10, #48]
	cmp	r3, #0
	bne	.L9
	ldr	r2, [sp, #76]
	ldr	r1, [sp, #80]
	ldr	r4, [r2]
	cmp	r1, r4
	bls	.L9
	ldr	r2, [r9, #60]
	ldr	r10, [r9, #68]
	cmp	r2, #0
	ble	.L23
	ldr	r1, [sp, #72]
	mov	fp, r3
	mov	r8, #1
	str	r9, [sp, #12]
	subs	r1, r1, #4
	mov	r3, r1
	str	r1, [sp, #8]
.L24:
	ldr	r5, [r10, #12]
	ldr	r1, [sp, #80]
	ldr	r7, [r10, #28]
	ldr	r9, [r3, #4]!
	mul	r4, r4, r5
	pld	[r10, #532]
	mul	r5, r1, r5
	str	r3, [sp, #8]
	lsls	r7, r7, #3
	cmp	r4, r5
	bge	.L20
	subs	r6, r4, #1
.L22:
	mov	r3, r4
	str	r8, [sp]
	mov	r0, r9
	str	r7, [sp, #4]
	mov	r1, r6
	mov	r2, r9
	adds	r4, r4, #1
	bl	jcopy_sample_rows(PLT)
	cmp	r5, r4
	bne	.L22
	ldr	r3, [sp, #12]
	ldr	r2, [r3, #60]
.L20:
	add	fp, fp, #1
	add	r10, r10, #84
	cmp	fp, r2
	bge	.L23
	ldr	r1, [sp, #76]
	ldr	r3, [sp, #8]
	ldr	r4, [r1]
	b	.L24
.L31:
	ldr	r2, [sp, #76]
	mov	r0, r9
	ldr	r5, [r9, #356]
	ldr	r1, [sp, #24]
	ldr	r4, [r2]
	movs	r2, #0
	ldr	r3, [sp, #72]
	str	r4, [sp]
	ldr	r4, [r5, #4]
	blx	r4
	ldr	r1, [sp, #76]
	movs	r3, #0
	str	r3, [r10, #52]
	ldr	r3, [r1]
	adds	r3, r3, #1
	str	r3, [r1]
	b	.L16
.L23:
	ldr	r2, [sp, #80]
	ldr	r3, [sp, #76]
	str	r2, [r3]
.L8:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L26:
	mov	r3, r5
	b	.L11
	.size	pre_process_data, .-pre_process_data
	.section	.text.pre_process_context,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pre_process_context, %function
pre_process_context:
	@ args = 12, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	str	r1, [sp, #28]
	mov	r9, r0
	movs	r6, #1
	mov	fp, r2
	ldr	r1, [r0, #236]
	ldr	r10, [r0, #340]
	str	r2, [sp, #36]
	str	r3, [sp, #20]
	add	r1, r1, r1, lsl #1
	add	r7, r10, #8
	str	r7, [sp, #24]
	str	r1, [sp, #32]
.L33:
	ldr	r7, [sp, #84]
	ldr	r3, [r7]
	ldr	r7, [sp, #88]
	cmp	r7, r3
	bls	.L32
.L52:
	ldr	r1, [fp]
	ldr	r7, [sp, #20]
	cmp	r1, r7
	bcc	.L57
	ldr	r2, [r10, #48]
	cmp	r2, #0
	bne	.L32
	ldr	r4, [r10, #52]
	ldr	r5, [r10, #60]
	cmp	r4, r5
	bge	.L40
	ldr	r3, [r9, #60]
	cmp	r3, #0
	ble	.L42
	mov	fp, r2
	mov	r0, r9
	str	r10, [sp, #16]
	str	r9, [sp, #12]
.L46:
	cmp	r4, r5
	ldr	r9, [r10, #8]
	ldr	r7, [r0, #28]
	bge	.L43
	add	r8, r4, #-1
.L45:
	mov	r3, r4
	str	r6, [sp]
	mov	r0, r9
	str	r7, [sp, #4]
	mov	r1, r8
	mov	r2, r9
	adds	r4, r4, #1
	bl	jcopy_sample_rows(PLT)
	cmp	r4, r5
	bne	.L45
	ldr	r1, [sp, #16]
	ldr	r2, [sp, #12]
	ldr	r5, [r1, #60]
	ldr	r3, [r2, #60]
.L43:
	add	fp, fp, #1
	add	r10, r10, #4
	cmp	fp, r3
	bge	.L54
	ldr	r7, [sp, #16]
	ldr	r0, [sp, #12]
	ldr	r4, [r7, #52]
	b	.L46
.L57:
	ldr	r4, [r10, #52]
	rsb	r8, r1, r7
	ldr	r2, [r10, #60]
	mov	r0, r9
	ldr	r7, [sp, #28]
	ldr	r5, [r9, #352]
	mov	r3, r4
	subs	r4, r2, r4
	ldr	r2, [sp, #24]
	cmp	r8, r4
	it	cs
	movcs	r8, r4
	add	r1, r7, r1, lsl #2
	str	r8, [sp]
	ldr	r4, [r5, #4]
	blx	r4
	ldr	r2, [r10, #48]
	ldr	r3, [r9, #32]
	cmp	r2, r3
	beq	.L58
.L35:
	ldr	r3, [fp]
	ldr	r7, [sp, #84]
	add	r3, r3, r8
	str	r3, [fp]
	ldr	r4, [r10, #52]
	ldr	r3, [r10, #48]
	ldr	r5, [r10, #60]
	add	r4, r4, r8
	rsb	r3, r8, r3
	str	r4, [r10, #52]
	str	r3, [r10, #48]
	ldr	r3, [r7]
.L40:
	cmp	r4, r5
	beq	.L47
	ldr	r7, [sp, #88]
	cmp	r7, r3
	bhi	.L52
.L32:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L54:
	ldr	r10, [sp, #16]
	ldr	r9, [sp, #12]
.L42:
	ldr	r7, [sp, #84]
	str	r5, [r10, #52]
	ldr	r3, [r7]
.L47:
	ldr	r4, [r9, #356]
	mov	r0, r9
	ldr	r2, [r10, #56]
	ldr	r1, [sp, #24]
	str	r3, [sp]
	ldr	r3, [sp, #80]
	ldr	r4, [r4, #4]
	blx	r4
	ldr	r7, [sp, #84]
	ldr	fp, [sp, #36]
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
	ldr	r2, [r9, #236]
	ldr	r1, [r10, #56]
	ldr	r7, [sp, #32]
	ldr	r3, [r10, #52]
	add	r1, r1, r2
	cmp	r7, r1
	it	le
	movle	r1, #0
	cmp	r7, r3
	it	le
	movle	r3, #0
	str	r1, [r10, #56]
	it	le
	strle	r3, [r10, #52]
	add	r3, r3, r2
	str	r3, [r10, #60]
	b	.L33
.L58:
	ldr	r2, [r9, #60]
	cmp	r2, #0
	ble	.L35
	ldr	r3, [r9, #236]
	mov	r5, r10
	movs	r7, #0
.L36:
	cmp	r3, #0
	ble	.L38
	movs	r4, #1
	str	r7, [sp, #12]
.L39:
	ldr	r0, [r5, #8]
	negs	r3, r4
	ldr	r7, [r9, #28]
	movs	r1, #0
	str	r6, [sp]
	adds	r4, r4, #1
	mov	r2, r0
	str	r7, [sp, #4]
	bl	jcopy_sample_rows(PLT)
	ldr	r3, [r9, #236]
	cmp	r3, r4
	bge	.L39
	ldr	r7, [sp, #12]
	ldr	r2, [r9, #60]
.L38:
	adds	r7, r7, #1
	adds	r5, r5, #4
	cmp	r7, r2
	blt	.L36
	b	.L35
	.size	pre_process_context, .-pre_process_context
	.global	__aeabi_idiv
	.section	.text.jinit_c_prep_controller,"ax",%progbits
	.align	2
	.global	jinit_c_prep_controller
	.thumb
	.thumb_func
	.type	jinit_c_prep_controller, %function
jinit_c_prep_controller:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	sub	sp, sp, #100
	cmp	r1, #0
	bne	.L90
.L60:
	ldr	r3, [r4, #4]
	movs	r2, #64
	mov	r0, r4
	movs	r1, #1
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #356]
	mov	r6, r0
	ldr	r2, .L93
	str	r0, [r4, #340]
	ldr	r7, [r3, #8]
.LPIC8:
	add	r2, pc
	str	r2, [r6]
	cbnz	r7, .L91
	ldr	r3, [r4, #60]
	ldr	r2, .L93+4
	ldr	r5, [r4, #68]
	cmp	r3, #0
.LPIC10:
	add	r2, pc
	str	r2, [r0, #4]
	ble	.L59
.L79:
	ldr	r0, [r5, #28]
	adds	r7, r7, #1
	ldr	r3, [r4, #232]
	adds	r5, r5, #84
	ldr	r8, [r4, #4]
	adds	r6, r6, #4
	ldr	r1, [r5, #-76]
	lsls	r0, r0, #3
	mul	r0, r3, r0
	bl	__aeabi_idiv(PLT)
	ldr	r3, [r4, #236]
	mov	r2, r0
	ldr	ip, [r8, #8]
	mov	r0, r4
	movs	r1, #1
	blx	ip
	str	r0, [r6, #4]
	ldr	r3, [r4, #60]
	cmp	r3, r7
	bgt	.L79
.L59:
	add	sp, sp, #100
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L90:
	ldr	r3, [r0]
	movs	r2, #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L60
.L91:
	ldr	r3, [r4, #60]
	mov	r0, r4
	ldr	r7, [r4, #236]
	movs	r1, #1
	ldr	r2, .L93+8
	ldr	r5, [r4, #4]
	add	r3, r3, r3, lsl #2
.LPIC9:
	add	r2, pc
	str	r2, [r6, #4]
	mul	r2, r3, r7
	ldr	r3, [r5]
	lsls	r2, r2, #2
	blx	r3
	ldr	r3, [r4, #60]
	mov	r5, r0
	ldr	r8, [r4, #68]
	cmp	r3, #0
	ble	.L59
	lsrs	r0, r7, #2
	lsls	r3, r7, #4
	lsls	r1, r7, #2
	lsls	r2, r7, #1
	str	r3, [sp, #88]
	lsls	r3, r0, #2
	str	r1, [sp, #20]
	lsl	fp, r7, #3
	adds	r1, r3, #1
	lsl	lr, r3, #2
	str	r1, [sp, #48]
	adds	r1, r3, #2
	str	r1, [sp, #56]
	add	r1, r1, r2
	str	r0, [sp, #60]
	lsls	r1, r1, #2
	str	lr, [sp, #36]
	add	r8, r8, #112
	ldr	r0, [sp, #48]
	mov	r10, #0
	ldr	lr, [sp, #56]
	str	r1, [sp, #64]
	ldr	r1, [sp, #48]
	lsls	r0, r0, #2
	str	r3, [sp, #24]
	lsl	lr, lr, #2
	ldr	r9, [sp, #88]
	str	r0, [sp, #32]
	add	r1, r1, r2
	str	lr, [sp, #28]
	lsls	r1, r1, #2
	ldr	lr, [sp, #56]
	add	r9, r9, r5
	ldr	r0, [sp, #20]
	str	r1, [sp, #72]
	adds	r1, r2, r3
	lsls	r1, r1, #2
	add	r2, r2, r7
	add	r0, r0, lr
	ldr	lr, [sp, #48]
	lsls	r0, r0, #2
	str	r2, [sp, #40]
	str	r1, [sp, #80]
	lsls	r1, r2, #2
	str	r0, [sp, #68]
	ldr	r0, [sp, #20]
	str	r1, [sp, #44]
	str	r6, [sp, #8]
	add	r0, r0, lr
	lsls	r0, r0, #2
	str	r0, [sp, #76]
	ldr	r0, [sp, #20]
	mov	r2, r0
	add	r3, r3, r0
	add	r2, r2, r7
	lsls	r3, r3, #2
	lsls	r2, r2, #2
	str	r3, [sp, #84]
	sub	r3, r7, #9
	str	r2, [sp, #16]
	bic	r3, r3, #7
	ldr	r2, [sp, #88]
	adds	r3, r3, #8
	str	r3, [sp, #92]
	adds	r2, r2, #16
	str	r2, [sp, #52]
	b	.L78
.L92:
	ldr	r0, [sp, #24]
	cbz	r0, .L67
	ldr	ip, [sp, #60]
	mov	lr, r6
	mov	r0, r9
	mov	r1, r5
	movs	r2, #0
.L73:
	adds	r2, r2, #1
	vld1.32	{q8}, [r3]!
	cmp	ip, r2
	vst1.32	{q8}, [r1]!
	vld1.32	{q8}, [lr]!
	vst1.32	{q8}, [r0]!
	bhi	.L73
	ldr	r0, [sp, #24]
	cmp	r7, r0
	beq	.L72
.L67:
	ldr	r1, [sp, #80]
	ldr	r2, [sp, #36]
	ldr	r0, [sp, #48]
	ldr	r3, [r6, r1]
	ldr	lr, [sp, #84]
	cmp	r7, r0
	str	r3, [r5, r2]
	ldr	r3, [r6, r2]
	str	r3, [r5, lr]
	ble	.L72
	ldr	r1, [sp, #72]
	ldr	r2, [sp, #32]
	ldr	r0, [sp, #56]
	ldr	r3, [r6, r1]
	ldr	lr, [sp, #76]
	cmp	r7, r0
	str	r3, [r5, r2]
	ldr	r3, [r6, r2]
	str	r3, [r5, lr]
	ble	.L72
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #28]
	ldr	lr, [sp, #68]
	ldr	r3, [r6, r1]
	str	r3, [r5, r2]
	ldr	r3, [r6, r2]
	str	r3, [r5, lr]
.L72:
	ldr	r1, [sp, #8]
	add	r10, r10, #1
	ldr	r0, [sp, #12]
	add	r8, r8, #84
	ldr	r2, [sp, #16]
	adds	r1, r1, #4
	str	r0, [r1, #4]
	ldr	r3, [r4, #60]
	add	r5, r5, r2
	str	r1, [sp, #8]
	add	r9, r9, r2
	cmp	r10, r3
	bge	.L59
.L78:
	ldr	r3, [sp, #20]
	ldr	r2, [r8, #-84]
	ldr	r6, [r4, #4]
	add	r3, r3, r5
	ldr	r1, [r8, #-104]
	str	r3, [sp, #12]
	ldr	r3, [r4, #232]
	lsls	r0, r2, #3
	pld	[r8]
	pld	[r8, #-20]
	mul	r0, r3, r0
	bl	__aeabi_idiv(PLT)
	ldr	r6, [r6, #8]
	mov	r2, r0
	movs	r1, #1
	ldr	r3, [sp, #40]
	mov	r0, r4
	blx	r6
	mov	r6, r0
	ldr	r2, [sp, #44]
	ldr	r0, [sp, #12]
	mov	r1, r6
	bl	memcpy(PLT)
	cmp	r7, #0
	ble	.L72
	add	r3, r6, fp
	add	r0, r5, #16
	add	r1, r3, #16
	add	ip, r6, #16
	cmp	r5, r1
	it	cc
	cmpcc	r3, r0
	ite	cs
	movcs	r2, #1
	movcc	r2, #0
	cmp	r5, ip
	it	cc
	cmpcc	r6, r0
	ite	cs
	movcs	lr, #1
	movcc	lr, #0
	and	lr, lr, r2
	ldr	r2, [sp, #52]
	cmp	ip, r9
	ite	hi
	movhi	ip, #0
	movls	ip, #1
	add	r2, r2, r5
	cmp	r7, #6
	ite	ls
	movls	lr, #0
	andhi	lr, lr, #1
	cmp	r0, r9
	ite	hi
	movhi	r0, #0
	movls	r0, #1
	cmp	r6, r2
	it	cs
	orrcs	ip, ip, #1
	cmp	r1, r9
	ite	hi
	movhi	r1, #0
	movls	r1, #1
	and	ip, lr, ip
	cmp	r5, r2
	it	cs
	orrcs	r0, r0, #1
	cmp	r3, r2
	it	cs
	orrcs	r1, r1, #1
	and	ip, ip, r0
	ands	r2, ip, r1
	bne	.L92
	cmp	r7, #8
	ble	.L74
	ldr	r1, [sp, #92]
	mov	ip, r6
	mov	lr, r9
	mov	r0, r5
	str	r4, [sp, #4]
.L75:
	ldr	r4, [r3]
	adds	r2, r2, #8
	pld	[r3, #52]
	cmp	r2, r1
	pld	[r0, #52]
	add	r3, r3, #32
	str	r4, [r0]
	add	ip, ip, #32
	ldr	r4, [ip, #-32]
	add	r0, r0, #32
	add	lr, lr, #32
	str	r4, [lr, #-32]
	ldr	r4, [r3, #-28]
	str	r4, [r0, #-28]
	ldr	r4, [ip, #-28]
	str	r4, [lr, #-28]
	ldr	r4, [r3, #-24]
	str	r4, [r0, #-24]
	ldr	r4, [ip, #-24]
	str	r4, [lr, #-24]
	ldr	r4, [r3, #-20]
	str	r4, [r0, #-20]
	ldr	r4, [ip, #-20]
	str	r4, [lr, #-20]
	ldr	r4, [r3, #-16]
	str	r4, [r0, #-16]
	ldr	r4, [ip, #-16]
	str	r4, [lr, #-16]
	ldr	r4, [r3, #-12]
	str	r4, [r0, #-12]
	ldr	r4, [ip, #-12]
	str	r4, [lr, #-12]
	ldr	r4, [r3, #-8]
	str	r4, [r0, #-8]
	ldr	r4, [ip, #-8]
	str	r4, [lr, #-8]
	ldr	r4, [r3, #-4]
	str	r4, [r0, #-4]
	ldr	r4, [ip, #-4]
	str	r4, [lr, #-4]
	bne	.L75
	ldr	r4, [sp, #4]
.L74:
	add	r3, r2, #1073741824
	ldr	r0, [sp, #88]
	subs	r3, r3, #1
	lsls	r3, r3, #2
	adds	r1, r3, #4
	add	r3, r3, r5
	add	r6, r6, r1
.L77:
	ldr	r1, [r6, fp]
	adds	r2, r2, #1
	cmp	r7, r2
	str	r1, [r3, #4]!
	ldr	r1, [r6], #4
	str	r1, [r3, r0]
	bgt	.L77
	b	.L72
.L94:
	.align	2
.L93:
	.word	start_pass_prep-(.LPIC8+4)
	.word	pre_process_data-(.LPIC10+4)
	.word	pre_process_context-(.LPIC9+4)
	.size	jinit_c_prep_controller, .-jinit_c_prep_controller
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
