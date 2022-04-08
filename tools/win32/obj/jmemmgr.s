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
	.file	"jmemmgr.c"
	.section	.text.alloc_small,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	alloc_small, %function
alloc_small:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r4, #51696
	movt	r4, 15258
	mov	r5, r2
	cmp	r2, r4
	mov	r10, r0
	mov	r9, r1
	ldr	r7, [r0, #4]
	bhi	.L24
.L2:
	ands	r2, r5, #7
	itt	ne
	addne	r5, r5, #8
	subne	r5, r5, r2
	cmp	r9, #1
	bls	.L4
	ldr	r2, [r10]
	movs	r4, #14
	mov	r0, r10
	str	r9, [r2, #24]
	ldr	r1, [r10]
	str	r4, [r2, #20]
	ldr	r2, [r1]
	blx	r2
.L4:
	add	r8, r7, r9, lsl #2
	ldr	r4, [r8, #52]
	cmp	r4, #0
	beq	.L5
	ldr	r6, [r4, #8]
	cmp	r5, r6
	bhi	.L7
	b	.L28
.L8:
	ldr	r6, [r0, #8]
	mov	r4, r0
	cmp	r5, r6
	bls	.L6
.L7:
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.L8
	ldr	r2, .L29
	add	r6, r5, #16
.LPIC0:
	add	r2, pc
	ldr	r2, [r2, r9, lsl #2]
.L15:
	movw	fp, #51696
	movt	fp, 15258
	rsb	fp, r5, fp
	cmp	fp, r2
	it	cs
	movcs	fp, r2
.L10:
	add	r9, fp, r6
	mov	r0, r10
	mov	r1, r9
	bl	jpeg_get_small(PLT)
	cbnz	r0, .L11
.L26:
	lsr	fp, fp, #1
	cmp	fp, #49
	bhi	.L10
	ldr	r2, [r10]
	movs	r3, #2
	mov	r0, r10
	add	r9, fp, r6
	str	r3, [r2, #24]
	movs	r3, #54
	ldr	r1, [r10]
	str	r3, [r2, #20]
	ldr	r2, [r1]
	blx	r2
	mov	r0, r10
	mov	r1, r9
	bl	jpeg_get_small(PLT)
	cmp	r0, #0
	beq	.L26
.L11:
	ldr	r3, [r7, #76]
	movs	r1, #0
	add	r6, fp, r5
	add	r3, r3, r9
	str	r3, [r7, #76]
	str	r6, [r0, #8]
	str	r1, [r0]
	str	r1, [r0, #4]
	cbz	r4, .L27
	mov	r3, r1
	str	r0, [r4]
	b	.L14
.L28:
	mov	r0, r4
.L6:
	ldr	r3, [r0, #4]
.L14:
	subs	r6, r6, r5
	add	r2, r0, #16
	add	r5, r5, r3
	str	r6, [r0, #8]
	str	r5, [r0, #4]
	adds	r0, r2, r3
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L24:
	ldr	r2, [r0]
	movs	r1, #1
	movs	r4, #54
	str	r1, [r2, #24]
	ldr	r1, [r0]
	str	r4, [r2, #20]
	ldr	r2, [r1]
	blx	r2
	b	.L2
.L27:
	str	r0, [r8, #52]
	mov	r3, r4
	b	.L14
.L5:
	ldr	r2, .L29+4
	add	r6, r5, #16
.LPIC1:
	add	r2, pc
	ldr	r2, [r2, r9, lsl #2]
	b	.L15
.L30:
	.align	2
.L29:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LANCHOR1-(.LPIC1+4)
	.size	alloc_small, .-alloc_small
	.section	.text.free_pool,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	free_pool, %function
free_pool:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #1
	push	{r4, r5, r6, r7, r8, lr}
	mov	r6, r1
	mov	r7, r0
	ldr	r4, [r0, #4]
	bls	.L32
	ldr	r3, [r0]
	movs	r1, #14
	str	r6, [r3, #24]
	ldr	r2, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L33:
	add	r8, r4, r6, lsl #2
	movs	r2, #0
	ldr	r3, [r8, #60]
	str	r2, [r8, #60]
	cbz	r3, .L45
.L46:
	ldr	r2, [r3, #8]
	mov	r1, r3
	ldr	r6, [r3, #4]
	mov	r0, r7
	ldr	r5, [r3]
	add	r6, r6, r2
	adds	r6, r6, #16
	mov	r2, r6
	bl	jpeg_free_large(PLT)
	ldr	r2, [r4, #76]
	mov	r3, r5
	subs	r6, r2, r6
	str	r6, [r4, #76]
	cmp	r5, #0
	bne	.L46
.L45:
	ldr	r3, [r8, #52]
	movs	r2, #0
	str	r2, [r8, #52]
	cmp	r3, #0
	beq	.L67
.L47:
	ldr	r2, [r3, #8]
	mov	r1, r3
	ldr	r6, [r3, #4]
	mov	r0, r7
	ldr	r5, [r3]
	add	r6, r6, r2
	adds	r6, r6, #16
	mov	r2, r6
	bl	jpeg_free_small(PLT)
	ldr	r2, [r4, #76]
	mov	r3, r5
	subs	r6, r2, r6
	str	r6, [r4, #76]
	cmp	r5, #0
	bne	.L47
	pop	{r4, r5, r6, r7, r8, pc}
.L32:
	bne	.L33
	ldr	r5, [r4, #68]
	mov	r8, #0
	cbnz	r5, .L39
	b	.L38
.L37:
	ldr	r5, [r5, #44]
	cbz	r5, .L38
.L39:
	ldr	r3, [r5, #40]
	cmp	r3, #0
	beq	.L37
	str	r8, [r5, #40]
	add	r1, r5, #48
	ldr	r3, [r5, #56]
	mov	r0, r7
	blx	r3
	ldr	r5, [r5, #44]
	cmp	r5, #0
	bne	.L39
.L38:
	ldr	r5, [r4, #72]
	movs	r3, #0
	str	r3, [r4, #68]
	mov	r8, r3
	cbnz	r5, .L41
	b	.L36
.L40:
	ldr	r5, [r5, #44]
	cbz	r5, .L36
.L41:
	ldr	r3, [r5, #40]
	cmp	r3, #0
	beq	.L40
	str	r8, [r5, #40]
	add	r1, r5, #48
	ldr	r3, [r5, #56]
	mov	r0, r7
	blx	r3
	ldr	r5, [r5, #44]
	cmp	r5, #0
	bne	.L41
.L36:
	movs	r3, #0
	str	r3, [r4, #72]
	b	.L33
.L67:
	pop	{r4, r5, r6, r7, r8, pc}
	.size	free_pool, .-free_pool
	.section	.text.self_destruct,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	self_destruct, %function
self_destruct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r1, #1
	mov	r4, r0
	bl	free_pool(PLT)
	mov	r0, r4
	movs	r1, #0
	bl	free_pool(PLT)
	mov	r0, r4
	ldr	r1, [r4, #4]
	movs	r2, #84
	bl	jpeg_free_small(PLT)
	movs	r3, #0
	mov	r0, r4
	str	r3, [r4, #4]
	pop	{r4, lr}
	b	jpeg_mem_term(PLT)
	.size	self_destruct, .-self_destruct
	.section	.text.alloc_large,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	alloc_large, %function
alloc_large:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movw	r3, #51696
	push	{r4, r5, r6, r7, r8, lr}
	movt	r3, 15258
	mov	r4, r2
	cmp	r2, r3
	mov	r6, r0
	mov	r8, r1
	ldr	r7, [r0, #4]
	bhi	.L79
.L71:
	ands	r3, r4, #7
	itt	ne
	addne	r4, r4, #8
	subne	r4, r4, r3
	cmp	r8, #1
	bls	.L73
	ldr	r3, [r6]
	movs	r1, #14
	mov	r0, r6
	str	r8, [r3, #24]
	ldr	r2, [r6]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L73:
	mov	r0, r6
	add	r1, r4, #16
	bl	jpeg_get_large(PLT)
	mov	r5, r0
	cbz	r0, .L80
.L74:
	ldr	r3, [r7, #76]
	add	r8, r7, r8, lsl #2
	movs	r2, #0
	add	r0, r5, #16
	adds	r3, r3, #16
	add	r3, r3, r4
	str	r3, [r7, #76]
	ldr	r3, [r8, #60]
	str	r4, [r5, #4]
	str	r2, [r5, #8]
	str	r3, [r5]
	str	r5, [r8, #60]
	pop	{r4, r5, r6, r7, r8, pc}
.L79:
	ldr	r3, [r0]
	movs	r2, #3
	movs	r1, #54
	str	r2, [r3, #24]
	ldr	r2, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L71
.L80:
	ldr	r3, [r6]
	movs	r2, #4
	movs	r1, #54
	mov	r0, r6
	str	r2, [r3, #24]
	ldr	r2, [r6]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L74
	.size	alloc_large, .-alloc_large
	.section	.text.access_virt_barray,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	access_virt_barray, %function
access_virt_barray:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r2
	ldr	r2, [r1, #4]
	add	r9, r8, r3
	sub	sp, sp, #20
	mov	r4, r1
	mov	r6, r0
	cmp	r9, r2
	bhi	.L82
	ldr	r2, [r1, #12]
	cmp	r3, r2
	bls	.L123
.L82:
	ldr	r3, [r6]
	movs	r2, #22
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L83:
	ldr	r3, [r4, #24]
	cmp	r8, r3
	bcc	.L84
	ldr	r2, [r4, #16]
	add	r2, r2, r3
	cmp	r9, r2
	bls	.L122
.L84:
	ldr	r2, [r4, #40]
	cmp	r2, #0
	beq	.L124
.L86:
	ldr	r2, [r4, #36]
	ldr	r7, [r4, #8]
	ldr	r0, [r4, #16]
	cmp	r2, #0
	bne	.L87
	ldr	ip, [r4, #28]
	lsls	r7, r7, #7
.L88:
	cmp	r8, r3
	itete	ls
	rsbls	r3, r0, r9
	movhi	r1, r8
	bicls	r3, r3, r3, asr #31
	strhi	r8, [r4, #24]
	itt	ls
	movls	r1, r3
	strls	r3, [r4, #24]
	cmp	r0, #0
	mul	r10, r7, r1
	ble	.L112
	ldr	r3, [r4, #20]
	rsb	r5, r1, ip
	ldr	r2, [r4, #4]
	cmp	r3, r0
	it	ge
	movge	r3, r0
	subs	r2, r2, r1
	cmp	r3, r2
	it	ge
	movge	r3, r2
	cmp	r3, r5
	it	ge
	movge	r3, r5
	cmp	r3, #0
	ble	.L112
	add	fp, r4, #48
	movs	r5, #0
	mov	r2, r3
	b	.L96
.L97:
	ldr	r3, [r4, #24]
	cmp	r2, r1
	ldr	r0, [r4, #28]
	it	ge
	movge	r2, r1
	ldr	r1, [r4, #4]
	add	r3, r3, r5
	rsb	lr, r3, r0
	cmp	r2, lr
	sub	r3, r1, r3
	it	ge
	movge	r2, lr
	cmp	r2, r3
	it	ge
	movge	r2, r3
	cmp	r2, #0
	ble	.L85
.L96:
	mul	lr, r7, r2
	ldr	r3, [r4]
	ldr	ip, [r4, #48]
	mov	r1, fp
	mov	r0, r6
	ldr	r2, [r3, r5, lsl #2]
	mov	r3, r10
	str	lr, [sp]
	add	r10, r10, lr
	blx	ip
	ldr	r1, [r4, #20]
	ldr	r3, [r4, #16]
	add	r5, r5, r1
	cmp	r3, r5
	sub	r2, r3, r5
	bgt	.L97
.L122:
	ldr	r0, [r4, #28]
.L85:
	cmp	r9, r0
	bls	.L98
	cmp	r8, r0
	ldr	r7, [sp, #56]
	bls	.L99
	mov	r0, r8
	cbnz	r7, .L125
.L100:
	ldr	r3, [r4, #32]
	cbnz	r3, .L107
	ldr	r3, [r6]
	movs	r2, #22
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #24]
	b	.L106
.L125:
	ldr	r3, [r6]
	movs	r2, #22
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	mov	r0, r8
.L101:
	ldr	r3, [r4, #32]
	str	r9, [r4, #28]
	cmp	r3, #0
	beq	.L126
.L107:
	ldr	r3, [r4, #24]
	ldr	r7, [r4, #8]
	subs	r5, r0, r3
	rsb	r9, r3, r9
	cmp	r5, r9
	lsl	r7, r7, #7
	bcs	.L102
	lsls	r6, r5, #2
.L104:
	ldr	r3, [r4]
	adds	r5, r5, #1
	mov	r1, r7
	ldr	r0, [r3, r6]
	adds	r6, r6, #4
	bl	jzero_far(PLT)
	cmp	r9, r5
	bhi	.L104
.L98:
	ldr	r3, [r4, #24]
.L102:
	ldr	r7, [sp, #56]
	cbz	r7, .L106
.L105:
	movs	r2, #1
	str	r2, [r4, #36]
.L106:
	ldr	r2, [r4]
	rsb	r8, r3, r8
	add	r0, r2, r8, lsl #2
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L123:
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L83
	b	.L82
.L99:
	cmp	r7, #0
	bne	.L101
	b	.L100
.L87:
	lsls	r7, r7, #7
	cmp	r0, #0
	it	le
	ldrle	ip, [r4, #28]
	mul	r10, r7, r3
	ble	.L90
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #4]
	ldr	ip, [r4, #28]
	cmp	r1, r0
	it	ge
	movge	r1, r0
	subs	r2, r2, r3
	cmp	r1, r2
	it	ge
	movge	r1, r2
	rsb	r2, r3, ip
	cmp	r1, r2
	it	ge
	movge	r1, r2
	cmp	r1, #0
	ble	.L90
	add	ip, r4, #48
	mov	fp, r9
	movs	r5, #0
	mov	r2, r1
	mov	r9, ip
	str	r7, [sp, #12]
	b	.L91
.L93:
	ldr	r3, [r4, #24]
	cmp	r2, r1
	ldr	ip, [r4, #28]
	it	ge
	movge	r2, r1
	ldr	r7, [r4, #4]
	adds	r1, r3, r5
	rsb	lr, r1, ip
	cmp	r2, lr
	sub	r1, r7, r1
	it	ge
	movge	r2, lr
	cmp	r2, r1
	it	ge
	movge	r2, r1
	cmp	r2, #0
	ble	.L127
.L91:
	ldr	r1, [sp, #12]
	mov	r0, r6
	ldr	r3, [r4]
	ldr	ip, [r4, #52]
	mul	lr, r2, r1
	ldr	r2, [r3, r5, lsl #2]
	mov	r1, r9
	mov	r3, r10
	str	lr, [sp]
	add	r10, r10, lr
	blx	ip
	ldr	r1, [r4, #20]
	ldr	r0, [r4, #16]
	add	r5, r5, r1
	cmp	r0, r5
	sub	r2, r0, r5
	bgt	.L93
	ldr	r7, [r4, #8]
	mov	r9, fp
	ldr	r3, [r4, #24]
	ldr	ip, [r4, #28]
	lsls	r7, r7, #7
.L90:
	movs	r2, #0
	str	r2, [r4, #36]
	b	.L88
.L124:
	ldr	r3, [r6]
	movs	r2, #69
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #24]
	b	.L86
.L126:
	ldr	r3, [r4, #24]
	b	.L105
.L127:
	ldr	r7, [r4, #8]
	mov	r9, fp
	lsls	r7, r7, #7
	b	.L90
.L112:
	mov	r0, ip
	b	.L85
	.size	access_virt_barray, .-access_virt_barray
	.section	.text.access_virt_sarray,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	access_virt_sarray, %function
access_virt_sarray:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r2
	ldr	r2, [r1, #4]
	add	r9, r8, r3
	sub	sp, sp, #20
	mov	r4, r1
	mov	r6, r0
	cmp	r9, r2
	bhi	.L129
	ldr	r2, [r1, #12]
	cmp	r3, r2
	bls	.L171
.L129:
	ldr	r3, [r6]
	movs	r2, #22
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L130:
	ldr	r3, [r4, #24]
	cmp	r8, r3
	bcc	.L131
	ldr	r2, [r4, #16]
	add	r2, r2, r3
	cmp	r9, r2
	bls	.L170
.L131:
	ldr	r2, [r4, #40]
	cmp	r2, #0
	beq	.L172
.L133:
	ldr	r2, [r4, #36]
	cmp	r2, #0
	bne	.L134
	ldr	r0, [r4, #16]
	ldr	r7, [r4, #8]
	ldr	ip, [r4, #28]
.L135:
	cmp	r8, r3
	itete	ls
	rsbls	r3, r0, r9
	movhi	r1, r8
	bicls	r3, r3, r3, asr #31
	strhi	r8, [r4, #24]
	itt	ls
	movls	r1, r3
	strls	r3, [r4, #24]
	cmp	r0, #0
	mul	r10, r7, r1
	ble	.L159
	ldr	r3, [r4, #20]
	rsb	r5, r1, ip
	ldr	r2, [r4, #4]
	cmp	r3, r0
	it	ge
	movge	r3, r0
	subs	r2, r2, r1
	cmp	r3, r2
	it	ge
	movge	r3, r2
	cmp	r3, r5
	it	ge
	movge	r3, r5
	cmp	r3, #0
	ble	.L159
	add	fp, r4, #48
	movs	r5, #0
	mov	r2, r3
	b	.L143
.L144:
	ldr	r3, [r4, #24]
	cmp	r2, r1
	ldr	r0, [r4, #28]
	it	ge
	movge	r2, r1
	ldr	r1, [r4, #4]
	add	r3, r3, r5
	rsb	lr, r3, r0
	cmp	r2, lr
	sub	r3, r1, r3
	it	ge
	movge	r2, lr
	cmp	r2, r3
	it	ge
	movge	r2, r3
	cmp	r2, #0
	ble	.L132
.L143:
	mul	lr, r7, r2
	ldr	r3, [r4]
	ldr	ip, [r4, #48]
	mov	r1, fp
	mov	r0, r6
	ldr	r2, [r3, r5, lsl #2]
	mov	r3, r10
	str	lr, [sp]
	add	r10, r10, lr
	blx	ip
	ldr	r1, [r4, #20]
	ldr	r3, [r4, #16]
	add	r5, r5, r1
	cmp	r3, r5
	sub	r2, r3, r5
	bgt	.L144
.L170:
	ldr	r0, [r4, #28]
.L132:
	cmp	r9, r0
	bls	.L145
	cmp	r8, r0
	ldr	r7, [sp, #56]
	bls	.L146
	mov	r0, r8
	cbnz	r7, .L173
.L147:
	ldr	r3, [r4, #32]
	cbnz	r3, .L154
	ldr	r3, [r6]
	movs	r2, #22
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #24]
	b	.L153
.L173:
	ldr	r3, [r6]
	movs	r2, #22
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	mov	r0, r8
.L148:
	ldr	r3, [r4, #32]
	str	r9, [r4, #28]
	cmp	r3, #0
	beq	.L174
.L154:
	ldr	r3, [r4, #24]
	ldr	r7, [r4, #8]
	subs	r5, r0, r3
	rsb	r9, r3, r9
	cmp	r5, r9
	bcs	.L149
	lsls	r6, r5, #2
.L151:
	ldr	r3, [r4]
	adds	r5, r5, #1
	mov	r1, r7
	ldr	r0, [r3, r6]
	adds	r6, r6, #4
	bl	jzero_far(PLT)
	cmp	r9, r5
	bhi	.L151
.L145:
	ldr	r3, [r4, #24]
.L149:
	ldr	r7, [sp, #56]
	cbz	r7, .L153
.L152:
	movs	r2, #1
	str	r2, [r4, #36]
.L153:
	ldr	r2, [r4]
	rsb	r8, r3, r8
	add	r0, r2, r8, lsl #2
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L171:
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L130
	b	.L129
.L146:
	cmp	r7, #0
	bne	.L148
	b	.L147
.L134:
	ldr	r0, [r4, #16]
	ldr	r7, [r4, #8]
	cmp	r0, #0
	mul	r10, r7, r3
	ble	.L169
	ldr	r1, [r4, #20]
	ldr	r2, [r4, #4]
	ldr	ip, [r4, #28]
	cmp	r1, r0
	it	ge
	movge	r1, r0
	subs	r2, r2, r3
	cmp	r1, r2
	it	ge
	movge	r1, r2
	rsb	r2, r3, ip
	cmp	r1, r2
	it	ge
	movge	r1, r2
	cmp	r1, #0
	ble	.L137
	add	ip, r4, #48
	mov	fp, r9
	movs	r5, #0
	mov	r2, r1
	mov	r9, ip
	str	r7, [sp, #12]
	b	.L138
.L140:
	ldr	r3, [r4, #24]
	cmp	r2, r1
	ldr	ip, [r4, #28]
	it	ge
	movge	r2, r1
	ldr	r7, [r4, #4]
	adds	r1, r3, r5
	rsb	lr, r1, ip
	cmp	r2, lr
	sub	r1, r7, r1
	it	ge
	movge	r2, lr
	cmp	r2, r1
	it	ge
	movge	r2, r1
	cmp	r2, #0
	ble	.L175
.L138:
	ldr	r1, [sp, #12]
	mov	r0, r6
	ldr	r3, [r4]
	ldr	ip, [r4, #52]
	mul	lr, r2, r1
	ldr	r2, [r3, r5, lsl #2]
	mov	r1, r9
	mov	r3, r10
	str	lr, [sp]
	add	r10, r10, lr
	blx	ip
	ldr	r1, [r4, #20]
	ldr	r0, [r4, #16]
	add	r5, r5, r1
	cmp	r0, r5
	sub	r2, r0, r5
	bgt	.L140
	ldr	r3, [r4, #24]
	mov	r9, fp
	ldr	r7, [r4, #8]
.L169:
	ldr	ip, [r4, #28]
.L137:
	movs	r2, #0
	str	r2, [r4, #36]
	b	.L135
.L172:
	ldr	r3, [r6]
	movs	r2, #69
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #24]
	b	.L133
.L174:
	ldr	r3, [r4, #24]
	b	.L152
.L175:
	mov	r9, fp
	ldr	r7, [r4, #8]
	b	.L137
.L159:
	mov	r0, ip
	b	.L132
	.size	access_virt_sarray, .-access_virt_sarray
	.global	__aeabi_uidiv
	.section	.text.alloc_sarray,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	alloc_sarray, %function
alloc_sarray:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	str	r0, [sp, #12]
	mov	r5, r2
	movw	r0, #51696
	str	r1, [sp, #28]
	mov	r1, r2
	ldr	r2, [sp, #12]
	movt	r0, 15258
	str	r3, [sp, #24]
	ldr	r4, [r2, #4]
	bl	__aeabi_uidiv(PLT)
	mov	r6, r0
	cmp	r0, #0
	beq	.L204
.L177:
	ldr	r3, [sp, #24]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #28]
	cmp	r6, r3
	it	ge
	movge	r6, r3
	lsls	r2, r3, #2
	str	r6, [r4, #80]
	bl	alloc_small(PLT)
	ldr	r3, [sp, #24]
	str	r0, [sp, #20]
	cmp	r3, #0
	beq	.L195
	lsl	fp, r5, #1
	ldr	r1, [sp, #28]
	lsl	r8, r5, #2
	lsl	r9, r5, #3
	add	r10, fp, r5
	movs	r7, #0
	lsl	r2, r10, #1
	lsls	r1, r1, #2
	str	r2, [sp, #16]
	add	r2, r8, r5
	str	r2, [sp, #48]
	movw	r2, #51696
	rsb	r3, r5, r9
	movt	r2, 15258
	str	r1, [sp, #44]
	str	r3, [sp, #52]
	str	r2, [sp, #40]
.L190:
	ldr	r1, [sp, #24]
	ldr	lr, [sp, #12]
	subs	r3, r1, r7
	cmp	r6, r3
	ldr	r2, [lr, #4]
	it	cs
	movcs	r6, r3
	ldr	r3, [sp, #40]
	mul	r4, r5, r6
	cmp	r4, r3
	bhi	.L205
.L180:
	ands	r3, r4, #7
	itt	ne
	addne	r4, r4, #8
	subne	r4, r4, r3
	ldr	r3, [sp, #28]
	cmp	r3, #1
	bls	.L182
	ldr	lr, [sp, #12]
	mov	r1, r3
	ldr	r3, [lr]
	mov	r0, lr
	str	r1, [r3, #24]
	movs	r1, #14
	ldr	ip, [lr]
	str	r1, [r3, #20]
	ldr	r3, [ip]
	str	r2, [sp, #4]
	blx	r3
	ldr	r2, [sp, #4]
.L182:
	ldr	r0, [sp, #12]
	add	r1, r4, #16
	str	r2, [sp, #4]
	bl	jpeg_get_large(PLT)
	ldr	r2, [sp, #4]
	mov	ip, r0
	cmp	r0, #0
	beq	.L206
.L183:
	ldr	r1, [r2, #76]
	add	r3, ip, #16
	ldr	r0, [sp, #44]
	adds	r1, r1, #16
	add	r0, r0, r2
	add	r1, r1, r4
	str	r1, [r2, #76]
	movs	r1, #0
	ldr	r2, [r0, #60]
	str	r4, [ip, #4]
	str	r1, [ip, #8]
	str	r2, [ip]
	str	ip, [r0, #60]
	cmp	r6, #0
	beq	.L184
	subs	r2, r6, #1
	cmp	r2, #7
	bls	.L192
	ldr	lr, [sp, #20]
	mov	r0, r7
	str	r7, [sp, #36]
	mov	r1, r6
	ldr	ip, [sp, #52]
	str	r6, [sp, #32]
	add	r2, lr, r7, lsl #2
	ldr	r7, [sp, #48]
	mov	lr, r5
.L186:
	add	r5, r10, r3
	add	r4, r3, lr
	str	r5, [r2, #12]
	add	r6, fp, r3
	ldr	r5, [sp, #16]
	adds	r0, r0, #8
	str	r4, [r2, #4]
	add	r4, r3, r8
	str	r4, [r2, #16]
	add	r4, r3, ip
	add	r5, r5, r3
	str	r6, [r2, #8]
	str	r5, [r2, #24]
	sub	r5, r1, #9
	cmp	r5, #7
	add	r6, r3, r7
	str	r4, [r2, #28]
	sub	r4, r1, #8
	str	r3, [r2]
	mov	r1, r4
	pld	[r2, #100]
	add	r3, r3, r9
	str	r6, [r2, #20]
	add	r2, r2, #32
	bhi	.L186
	ldr	r6, [sp, #32]
	mov	r5, lr
	ldr	r7, [sp, #36]
.L185:
	ldr	r2, [sp, #20]
	add	r4, r4, r0
	add	r4, r2, r4, lsl #2
	add	r0, r2, r0, lsl #2
.L188:
	str	r3, [r0], #4
	cmp	r0, r4
	add	r3, r3, r5
	bne	.L188
	add	r7, r7, r6
.L184:
	ldr	r3, [sp, #24]
	cmp	r3, r7
	bhi	.L190
.L195:
	ldr	r0, [sp, #20]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L205:
	ldr	r3, [lr]
	movs	r1, #3
	mov	r0, lr
	str	r1, [r3, #24]
	movs	r1, #54
	ldr	ip, [lr]
	str	r1, [r3, #20]
	ldr	r3, [ip]
	str	r2, [sp, #4]
	blx	r3
	ldr	r2, [sp, #4]
	b	.L180
.L206:
	ldr	lr, [sp, #12]
	movs	r1, #4
	ldr	r3, [lr]
	mov	r0, lr
	str	r1, [r3, #24]
	ldr	r1, [lr]
	str	r1, [sp, #32]
	movs	r1, #54
	ldr	lr, [sp, #32]
	str	r1, [r3, #20]
	ldr	r3, [lr]
	str	r2, [sp, #4]
	str	ip, [sp, #8]
	blx	r3
	ldr	ip, [sp, #8]
	ldr	r2, [sp, #4]
	b	.L183
.L192:
	mov	r4, r6
	mov	r0, r7
	b	.L185
.L204:
	ldr	lr, [sp, #12]
	movs	r2, #70
	ldr	r3, [lr]
	mov	r0, lr
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L177
	.size	alloc_sarray, .-alloc_sarray
	.section	.text.alloc_barray,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	alloc_barray, %function
alloc_barray:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #60
	str	r0, [sp, #12]
	lsls	r5, r2, #7
	movw	r0, #51696
	ldr	r2, [sp, #12]
	movt	r0, 15258
	str	r1, [sp, #28]
	mov	r1, r5
	str	r3, [sp, #24]
	ldr	r4, [r2, #4]
	bl	__aeabi_uidiv(PLT)
	mov	r6, r0
	cmp	r0, #0
	beq	.L231
.L208:
	ldr	r3, [sp, #24]
	ldr	r0, [sp, #12]
	ldr	r1, [sp, #28]
	cmp	r6, r3
	it	ge
	movge	r6, r3
	lsls	r2, r3, #2
	str	r6, [r4, #80]
	bl	alloc_small(PLT)
	ldr	r3, [sp, #24]
	str	r0, [sp, #20]
	cmp	r3, #0
	beq	.L224
	lsl	fp, r5, #1
	ldr	r1, [sp, #28]
	lsl	r8, r5, #2
	lsl	r9, r5, #3
	add	r10, fp, r5
	movs	r7, #0
	lsl	r2, r10, #1
	lsls	r1, r1, #2
	str	r2, [sp, #16]
	add	r2, r8, r5
	str	r2, [sp, #48]
	movw	r2, #51696
	rsb	r3, r5, r9
	movt	r2, 15258
	str	r1, [sp, #44]
	str	r3, [sp, #52]
	str	r2, [sp, #40]
.L220:
	ldr	r1, [sp, #24]
	ldr	lr, [sp, #12]
	subs	r3, r1, r7
	cmp	r6, r3
	ldr	r2, [lr, #4]
	it	cs
	movcs	r6, r3
	ldr	r3, [sp, #40]
	mul	r4, r5, r6
	cmp	r4, r3
	bhi	.L232
.L211:
	ldr	r3, [sp, #28]
	cmp	r3, #1
	bls	.L212
	ldr	lr, [sp, #12]
	mov	r1, r3
	ldr	r3, [lr]
	mov	r0, lr
	str	r1, [r3, #24]
	movs	r1, #14
	ldr	ip, [lr]
	str	r1, [r3, #20]
	ldr	r3, [ip]
	str	r2, [sp, #4]
	blx	r3
	ldr	r2, [sp, #4]
.L212:
	ldr	r0, [sp, #12]
	add	r1, r4, #16
	str	r2, [sp, #4]
	bl	jpeg_get_large(PLT)
	ldr	r2, [sp, #4]
	mov	ip, r0
	cmp	r0, #0
	beq	.L233
.L213:
	ldr	r1, [r2, #76]
	add	r3, ip, #16
	ldr	r0, [sp, #44]
	adds	r1, r1, #16
	add	r0, r0, r2
	add	r1, r1, r4
	str	r1, [r2, #76]
	movs	r1, #0
	ldr	r2, [r0, #60]
	str	r4, [ip, #4]
	str	r1, [ip, #8]
	str	r2, [ip]
	str	ip, [r0, #60]
	cmp	r6, #0
	beq	.L214
	subs	r2, r6, #1
	cmp	r2, #7
	bls	.L222
	ldr	lr, [sp, #20]
	mov	r0, r7
	str	r7, [sp, #36]
	mov	r1, r6
	ldr	ip, [sp, #52]
	str	r6, [sp, #32]
	add	r2, lr, r7, lsl #2
	ldr	r7, [sp, #48]
	mov	lr, r5
.L216:
	add	r5, r10, r3
	add	r4, r3, lr
	str	r5, [r2, #12]
	add	r6, fp, r3
	ldr	r5, [sp, #16]
	adds	r0, r0, #8
	str	r4, [r2, #4]
	add	r4, r3, r8
	str	r4, [r2, #16]
	add	r4, r3, ip
	add	r5, r5, r3
	str	r6, [r2, #8]
	str	r5, [r2, #24]
	sub	r5, r1, #9
	cmp	r5, #7
	add	r6, r3, r7
	str	r4, [r2, #28]
	sub	r4, r1, #8
	str	r3, [r2]
	mov	r1, r4
	pld	[r2, #100]
	add	r3, r3, r9
	str	r6, [r2, #20]
	add	r2, r2, #32
	bhi	.L216
	ldr	r6, [sp, #32]
	mov	r5, lr
	ldr	r7, [sp, #36]
.L215:
	ldr	r2, [sp, #20]
	add	r4, r4, r0
	add	r4, r2, r4, lsl #2
	add	r0, r2, r0, lsl #2
.L218:
	str	r3, [r0], #4
	cmp	r0, r4
	add	r3, r3, r5
	bne	.L218
	add	r7, r7, r6
.L214:
	ldr	r3, [sp, #24]
	cmp	r3, r7
	bhi	.L220
.L224:
	ldr	r0, [sp, #20]
	add	sp, sp, #60
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L232:
	ldr	r3, [lr]
	movs	r1, #3
	mov	r0, lr
	str	r1, [r3, #24]
	movs	r1, #54
	ldr	ip, [lr]
	str	r1, [r3, #20]
	ldr	r3, [ip]
	str	r2, [sp, #4]
	blx	r3
	ldr	r2, [sp, #4]
	b	.L211
.L233:
	ldr	lr, [sp, #12]
	movs	r1, #4
	ldr	r3, [lr]
	mov	r0, lr
	str	r1, [r3, #24]
	ldr	r1, [lr]
	str	r1, [sp, #32]
	movs	r1, #54
	ldr	lr, [sp, #32]
	str	r1, [r3, #20]
	ldr	r3, [lr]
	str	r2, [sp, #4]
	str	ip, [sp, #8]
	blx	r3
	ldr	ip, [sp, #8]
	ldr	r2, [sp, #4]
	b	.L213
.L222:
	mov	r4, r6
	mov	r0, r7
	b	.L215
.L231:
	ldr	lr, [sp, #12]
	movs	r2, #70
	ldr	r3, [lr]
	mov	r0, lr
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L208
	.size	alloc_barray, .-alloc_barray
	.global	__aeabi_idiv
	.section	.text.realize_virt_arrays,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	realize_virt_arrays, %function
realize_virt_arrays:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r0
	ldr	r5, [r0, #4]
	ldr	r3, [r5, #68]
	cmp	r3, #0
	beq	.L255
	movs	r7, #0
	mov	r8, r7
	b	.L237
.L236:
	ldr	r3, [r3, #44]
	cbz	r3, .L235
.L237:
	ldr	r4, [r3]
	cmp	r4, #0
	bne	.L236
	ldr	r2, [r3, #8]
	ldr	r0, [r3, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r3, #44]
	mla	r8, r0, r2, r8
	mla	r7, r1, r2, r7
	cmp	r3, #0
	bne	.L237
.L235:
	ldr	r3, [r5, #72]
	cbnz	r3, .L240
	b	.L238
.L239:
	ldr	r3, [r3, #44]
	cbz	r3, .L238
.L240:
	ldr	r4, [r3]
	cmp	r4, #0
	bne	.L239
	ldr	r2, [r3, #8]
	ldr	r0, [r3, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r3, #44]
	mul	r0, r0, r2
	mul	r2, r1, r2
	add	r8, r8, r0, lsl #7
	add	r7, r7, r2, lsl #7
	cmp	r3, #0
	bne	.L240
.L238:
	cmp	r8, #0
	ble	.L234
	mov	r1, r8
	mov	r0, r6
	mov	r2, r7
	ldr	r3, [r5, #76]
	bl	jpeg_mem_available(PLT)
	cmp	r0, r7
	itt	ge
	movge	r8, #51712
	movtge	r8, 15258
	blt	.L274
.L242:
	ldr	r4, [r5, #68]
	mov	r10, #1
	mov	r9, #0
	cbnz	r4, .L250
	b	.L249
.L246:
	ldr	r4, [r4, #44]
	cbz	r4, .L249
.L250:
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L246
	ldr	r7, [r4, #4]
	ldr	fp, [r4, #12]
	subs	r0, r7, #1
	mov	r1, fp
	bl	__aeabi_uidiv(PLT)
	adds	r0, r0, #1
	cmp	r8, r0
	it	ge
	strge	r7, [r4, #16]
	blt	.L275
.L248:
	mov	r3, r7
	ldr	r2, [r4, #8]
	mov	r0, r6
	movs	r1, #1
	bl	alloc_sarray(PLT)
	ldr	r3, [r5, #80]
	str	r0, [r4]
	str	r9, [r4, #24]
	str	r3, [r4, #20]
	str	r9, [r4, #28]
	str	r9, [r4, #36]
	ldr	r4, [r4, #44]
	cmp	r4, #0
	bne	.L250
.L249:
	ldr	r4, [r5, #72]
	mov	r10, #1
	mov	r9, #0
	cbnz	r4, .L254
	b	.L278
.L251:
	ldr	r4, [r4, #44]
	cbz	r4, .L234
.L254:
	ldr	r3, [r4]
	cmp	r3, #0
	bne	.L251
	ldr	r7, [r4, #4]
	ldr	fp, [r4, #12]
	subs	r0, r7, #1
	mov	r1, fp
	bl	__aeabi_uidiv(PLT)
	adds	r0, r0, #1
	cmp	r8, r0
	it	ge
	strge	r7, [r4, #16]
	blt	.L277
.L253:
	mov	r3, r7
	ldr	r2, [r4, #8]
	mov	r0, r6
	movs	r1, #1
	bl	alloc_barray(PLT)
	ldr	r3, [r5, #80]
	str	r0, [r4]
	str	r9, [r4, #24]
	str	r3, [r4, #20]
	str	r9, [r4, #28]
	str	r9, [r4, #36]
	ldr	r4, [r4, #44]
	cmp	r4, #0
	bne	.L254
.L234:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L274:
	mov	r1, r8
	mov	r8, #1
	bl	__aeabi_idiv(PLT)
	cmp	r8, r0
	it	lt
	movlt	r8, r0
	b	.L242
.L277:
	ldr	r3, [r4, #8]
	mul	r2, fp, r8
	mov	r0, r6
	add	r1, r4, #48
	mul	r3, r3, r7
	str	r2, [r4, #16]
	lsls	r2, r3, #7
	bl	jpeg_open_backing_store(PLT)
	ldr	r7, [r4, #16]
	str	r10, [r4, #40]
	b	.L253
.L275:
	mul	r3, fp, r8
	ldr	r2, [r4, #8]
	mov	r0, r6
	add	r1, r4, #48
	mul	r2, r2, r7
	str	r3, [r4, #16]
	bl	jpeg_open_backing_store(PLT)
	ldr	r7, [r4, #16]
	str	r10, [r4, #40]
	b	.L248
.L255:
	mov	r7, r3
	mov	r8, r3
	b	.L235
.L278:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	realize_virt_arrays, .-realize_virt_arrays
	.section	.text.request_virt_sarray,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	request_virt_sarray, %function
request_virt_sarray:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r1, #1
	ldr	r5, [r0, #4]
	sub	sp, sp, #12
	mov	r10, r1
	mov	fp, r0
	str	r2, [sp, #4]
	mov	r9, r3
	it	eq
	moveq	r6, r5
	beq	.L280
	ldr	r3, [r0]
	movs	r4, #14
	str	r1, [r3, #24]
	ldr	r2, [r0]
	str	r4, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	cmp	r10, #1
	ldr	r6, [fp, #4]
	bls	.L280
	ldr	r3, [fp]
	mov	r0, fp
	str	r10, [r3, #24]
	ldr	r2, [fp]
	str	r4, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L280:
	add	r7, r6, r10, lsl #2
	ldr	r4, [r7, #52]
	cmp	r4, #0
	beq	.L281
	ldr	r3, [r4, #8]
	cmp	r3, #127
	bls	.L283
	b	.L302
.L284:
	ldr	r3, [r0, #8]
	mov	r4, r0
	cmp	r3, #127
	bhi	.L282
.L283:
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.L284
	ldr	r3, .L303
.LPIC11:
	add	r3, pc
	ldr	r2, [r3, r10, lsl #2]
.L291:
	movw	r8, #51568
	movt	r8, 15258
	cmp	r8, r2
	it	cs
	movcs	r8, r2
.L286:
	add	r10, r8, #144
	mov	r0, fp
	mov	r1, r10
	bl	jpeg_get_small(PLT)
	cbnz	r0, .L287
.L300:
	lsr	r8, r8, #1
	cmp	r8, #49
	bhi	.L286
	ldr	r3, [fp]
	movs	r1, #2
	mov	r0, fp
	add	r10, r8, #144
	str	r1, [r3, #24]
	movs	r1, #54
	ldr	r2, [fp]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	mov	r0, fp
	mov	r1, r10
	bl	jpeg_get_small(PLT)
	cmp	r0, #0
	beq	.L300
.L287:
	ldr	r2, [r6, #76]
	movs	r1, #0
	add	r3, r8, #128
	add	r2, r2, r10
	str	r2, [r6, #76]
	str	r3, [r0, #8]
	str	r1, [r0]
	str	r1, [r0, #4]
	cbz	r4, .L301
	mov	r2, r1
	str	r0, [r4]
	movs	r1, #128
	b	.L290
.L302:
	mov	r0, r4
.L282:
	ldr	r2, [r0, #4]
	add	r1, r2, #128
.L290:
	subs	r3, r3, #128
	str	r1, [r0, #4]
	str	r3, [r0, #8]
	add	r1, r0, #16
	movs	r3, #0
	adds	r0, r1, r2
	ldr	r4, [r5, #68]
	str	r3, [r1, r2]
	ldr	r2, [sp, #48]
	str	r4, [r0, #44]
	str	r9, [r0, #8]
	str	r2, [r0, #4]
	ldr	r2, [sp, #52]
	str	r3, [r0, #40]
	str	r2, [r0, #12]
	ldr	r2, [sp, #4]
	str	r2, [r0, #32]
	str	r0, [r5, #68]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L301:
	str	r0, [r7, #52]
	mov	r2, r4
	movs	r1, #128
	b	.L290
.L281:
	ldr	r3, .L303+4
.LPIC10:
	add	r3, pc
	ldr	r2, [r3, r10, lsl #2]
	b	.L291
.L304:
	.align	2
.L303:
	.word	.LANCHOR0-(.LPIC11+4)
	.word	.LANCHOR1-(.LPIC10+4)
	.size	request_virt_sarray, .-request_virt_sarray
	.section	.text.request_virt_barray,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	request_virt_barray, %function
request_virt_barray:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	cmp	r1, #1
	ldr	r5, [r0, #4]
	sub	sp, sp, #12
	mov	r10, r1
	mov	fp, r0
	str	r2, [sp, #4]
	mov	r9, r3
	it	eq
	moveq	r6, r5
	beq	.L306
	ldr	r3, [r0]
	movs	r4, #14
	str	r1, [r3, #24]
	ldr	r2, [r0]
	str	r4, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	cmp	r10, #1
	ldr	r6, [fp, #4]
	bls	.L306
	ldr	r3, [fp]
	mov	r0, fp
	str	r10, [r3, #24]
	ldr	r2, [fp]
	str	r4, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L306:
	add	r7, r6, r10, lsl #2
	ldr	r4, [r7, #52]
	cmp	r4, #0
	beq	.L307
	ldr	r3, [r4, #8]
	cmp	r3, #127
	bls	.L309
	b	.L328
.L310:
	ldr	r3, [r0, #8]
	mov	r4, r0
	cmp	r3, #127
	bhi	.L308
.L309:
	ldr	r0, [r4]
	cmp	r0, #0
	bne	.L310
	ldr	r3, .L329
.LPIC13:
	add	r3, pc
	ldr	r2, [r3, r10, lsl #2]
.L317:
	movw	r8, #51568
	movt	r8, 15258
	cmp	r8, r2
	it	cs
	movcs	r8, r2
.L312:
	add	r10, r8, #144
	mov	r0, fp
	mov	r1, r10
	bl	jpeg_get_small(PLT)
	cbnz	r0, .L313
.L326:
	lsr	r8, r8, #1
	cmp	r8, #49
	bhi	.L312
	ldr	r3, [fp]
	movs	r1, #2
	mov	r0, fp
	add	r10, r8, #144
	str	r1, [r3, #24]
	movs	r1, #54
	ldr	r2, [fp]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	mov	r0, fp
	mov	r1, r10
	bl	jpeg_get_small(PLT)
	cmp	r0, #0
	beq	.L326
.L313:
	ldr	r2, [r6, #76]
	movs	r1, #0
	add	r3, r8, #128
	add	r2, r2, r10
	str	r2, [r6, #76]
	str	r3, [r0, #8]
	str	r1, [r0]
	str	r1, [r0, #4]
	cbz	r4, .L327
	mov	r2, r1
	str	r0, [r4]
	movs	r1, #128
	b	.L316
.L328:
	mov	r0, r4
.L308:
	ldr	r2, [r0, #4]
	add	r1, r2, #128
.L316:
	subs	r3, r3, #128
	str	r1, [r0, #4]
	str	r3, [r0, #8]
	add	r1, r0, #16
	movs	r3, #0
	adds	r0, r1, r2
	ldr	r4, [r5, #72]
	str	r3, [r1, r2]
	ldr	r2, [sp, #48]
	str	r4, [r0, #44]
	str	r9, [r0, #8]
	str	r2, [r0, #4]
	ldr	r2, [sp, #52]
	str	r3, [r0, #40]
	str	r2, [r0, #12]
	ldr	r2, [sp, #4]
	str	r2, [r0, #32]
	str	r0, [r5, #72]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L327:
	str	r0, [r7, #52]
	mov	r2, r4
	movs	r1, #128
	b	.L316
.L307:
	ldr	r3, .L329+4
.LPIC12:
	add	r3, pc
	ldr	r2, [r3, r10, lsl #2]
	b	.L317
.L330:
	.align	2
.L329:
	.word	.LANCHOR0-(.LPIC13+4)
	.word	.LANCHOR1-(.LPIC12+4)
	.size	request_virt_barray, .-request_virt_barray
	.section	.text.jinit_memory_mgr,"ax",%progbits
	.align	2
	.global	jinit_memory_mgr
	.thumb
	.thumb_func
	.type	jinit_memory_mgr, %function
jinit_memory_mgr:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r5, r0
	sub	sp, sp, #28
	str	r3, [r0, #4]
	bl	jpeg_mem_init(PLT)
	movs	r1, #84
	str	r0, [sp, #16]
	mov	r0, r5
	bl	jpeg_get_small(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L341
.L332:
	mov	r2, #51712
	ldr	r0, .L342
	movt	r2, 15258
	ldr	fp, .L342+4
	str	r2, [r4, #48]
	movs	r3, #0
	ldr	r2, .L342+8
.LPIC22:
	add	r0, pc
	ldr	r10, .L342+12
.LPIC14:
	add	fp, pc
	ldr	r9, .L342+16
.LPIC24:
	add	r2, pc
	ldr	r8, .L342+20
	ldr	ip, .L342+24
.LPIC15:
	add	r10, pc
	ldr	lr, .L342+28
.LPIC16:
	add	r9, pc
	ldr	r7, .L342+32
.LPIC17:
	add	r8, pc
	ldr	r6, .L342+36
.LPIC18:
	add	ip, pc
	ldr	r1, .L342+40
.LPIC19:
	add	lr, pc
	str	r0, [r4, #32]
.LPIC20:
	add	r7, pc
	str	r2, [r4, #40]
.LPIC21:
	add	r6, pc
	ldr	r2, [sp, #16]
.LPIC23:
	add	r1, pc
	ldr	r0, .L342+44
	str	r3, [r4, #56]
	str	r3, [r4, #64]
	str	r3, [r4, #52]
.LPIC25:
	add	r0, pc
	str	r3, [r4, #60]
	str	r3, [r4, #68]
	str	r3, [r4, #72]
	movs	r3, #84
	str	fp, [r4]
	str	r10, [r4, #4]
	str	r9, [r4, #8]
	str	r8, [r4, #12]
	str	ip, [r4, #16]
	str	lr, [r4, #20]
	str	r7, [r4, #24]
	str	r6, [r4, #28]
	str	r1, [r4, #36]
	str	r2, [r4, #44]
	str	r3, [r4, #76]
	str	r4, [r5, #4]
	str	r1, [sp, #4]
	bl	getenv(PLT)
	cbz	r0, .L331
	ldr	r1, .L342+48
	movs	r5, #120
	add	r2, sp, #16
	add	r3, sp, #8
	strb	r5, [sp, #8]
.LPIC26:
	add	r1, pc
	bl	__isoc99_sscanf(PLT)
	cmp	r0, #0
	ble	.L331
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	and	r3, r3, #223
	cmp	r3, #77
	ldr	r3, [sp, #16]
	itt	eq
	moveq	r2, #1000
	muleq	r3, r2, r3
	mov	r2, #1000
	mul	r3, r2, r3
	str	r3, [r4, #44]
.L331:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L341:
	mov	r0, r5
	bl	jpeg_mem_term(PLT)
	ldr	r3, [r5]
	movs	r1, #54
	mov	r0, r5
	str	r4, [r3, #24]
	ldr	r2, [r5]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
	b	.L332
.L343:
	.align	2
.L342:
	.word	access_virt_barray-(.LPIC22+4)
	.word	alloc_small-(.LPIC14+4)
	.word	self_destruct-(.LPIC24+4)
	.word	alloc_large-(.LPIC15+4)
	.word	alloc_sarray-(.LPIC16+4)
	.word	alloc_barray-(.LPIC17+4)
	.word	request_virt_sarray-(.LPIC18+4)
	.word	request_virt_barray-(.LPIC19+4)
	.word	realize_virt_arrays-(.LPIC20+4)
	.word	access_virt_sarray-(.LPIC21+4)
	.word	free_pool-(.LPIC23+4)
	.word	.LC0-(.LPIC25+4)
	.word	.LC1-(.LPIC26+4)
	.size	jinit_memory_mgr, .-jinit_memory_mgr
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"JPEGMEM\000"
.LC1:
	.ascii	"%ld%c\000"
	.section	.rodata.extra_pool_slop,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	extra_pool_slop, %object
	.size	extra_pool_slop, 8
extra_pool_slop:
	.word	0
	.word	5000
	.section	.rodata.first_pool_slop,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	first_pool_slop, %object
	.size	first_pool_slop, 8
first_pool_slop:
	.word	1600
	.word	16000
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
