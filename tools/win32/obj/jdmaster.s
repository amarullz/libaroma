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
	.file	"jdmaster.c"
	.section	.text.prepare_for_output_pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	prepare_for_output_pass, %function
prepare_for_output_pass:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r5, [r0, #432]
	ldr	r3, [r5, #8]
	cmp	r3, #0
	bne	.L35
	ldr	r3, [r0, #92]
	cbz	r3, .L4
	ldr	r3, [r0, #144]
	cmp	r3, #0
	beq	.L36
.L4:
	ldr	r3, [r4, #460]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #440]
	mov	r0, r4
	ldr	r3, [r3, #12]
	blx	r3
	ldr	r3, [r4, #76]
	cbnz	r3, .L3
	ldr	r3, [r5, #16]
	cmp	r3, #0
	beq	.L37
.L7:
	ldr	r3, [r4, #464]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #92]
	cmp	r3, #0
	bne	.L38
.L8:
	ldr	r3, [r4, #444]
	mov	r0, r4
	ldr	r1, [r5, #8]
	ldr	r3, [r3]
	cmp	r1, #0
	ite	ne
	movne	r1, #3
	moveq	r1, #0
	blx	r3
	ldr	r3, [r4, #436]
	mov	r0, r4
	movs	r1, #0
	ldr	r3, [r3]
	blx	r3
.L3:
	ldr	r3, [r4, #8]
	cbz	r3, .L1
	ldr	r1, [r5, #8]
	ldr	r2, [r5, #12]
	ldr	r0, [r4, #72]
	cmp	r1, #0
	ite	eq
	moveq	r1, #1
	movne	r1, #2
	add	r1, r1, r2
	str	r2, [r3, #12]
	str	r1, [r3, #16]
	cbz	r0, .L1
	ldr	r2, [r4, #448]
	ldr	r2, [r2, #28]
	cbnz	r2, .L1
	ldr	r2, [r4, #116]
	cmp	r2, #0
	ite	eq
	moveq	r2, #1
	movne	r2, #2
	add	r1, r1, r2
	str	r1, [r3, #16]
.L1:
	pop	{r3, r4, r5, pc}
.L35:
	ldr	r3, [r0, #472]
	movs	r1, #0
	str	r1, [r5, #8]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #444]
	mov	r0, r4
	movs	r1, #2
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #436]
	mov	r0, r4
	movs	r1, #2
	ldr	r3, [r3]
	blx	r3
	b	.L3
.L36:
	ldr	r3, [r0, #100]
	cbz	r3, .L5
	ldr	r3, [r0, #116]
	cbz	r3, .L5
	ldr	r3, [r5, #24]
	movs	r2, #1
	str	r3, [r0, #472]
	str	r2, [r5, #8]
	b	.L4
.L38:
	ldr	r3, [r4, #472]
	mov	r0, r4
	ldr	r1, [r5, #8]
	ldr	r3, [r3]
	blx	r3
	b	.L8
.L37:
	ldr	r3, [r4, #468]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	b	.L7
.L5:
	ldr	r3, [r4, #108]
	cbz	r3, .L6
	ldr	r3, [r5, #20]
	str	r3, [r4, #472]
	b	.L4
.L6:
	ldr	r3, [r4]
	movs	r2, #46
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L4
	.size	prepare_for_output_pass, .-prepare_for_output_pass
	.section	.text.finish_output_pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	finish_output_pass, %function
finish_output_pass:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, [r0, #92]
	push	{r4, lr}
	ldr	r4, [r0, #432]
	cbz	r2, .L40
	ldr	r3, [r0, #472]
	ldr	r3, [r3, #8]
	blx	r3
.L40:
	ldr	r3, [r4, #12]
	adds	r3, r3, #1
	str	r3, [r4, #12]
	pop	{r4, pc}
	.size	finish_output_pass, .-finish_output_pass
	.section	.text.jpeg_calc_output_dimensions,"ax",%progbits
	.align	2
	.global	jpeg_calc_output_dimensions
	.thumb
	.thumb_func
	.type	jpeg_calc_output_dimensions, %function
jpeg_calc_output_dimensions:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #228]
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r0
	cbnz	r3, .L46
	ldr	r3, [r0, #20]
	cmp	r3, #202
	beq	.L46
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L46:
	ldr	r2, [r8, #52]
	ldr	r3, [r8, #56]
	cmp	r3, r2, lsl #3
	bcs	.L85
	cmp	r3, r2, lsl #2
	bcs	.L86
	cmp	r3, r2, lsl #1
	bcs	.L87
	movs	r3, #8
	vldr	d16, [r8, #32]
	mov	lr, r3
	str	r3, [r8, #328]
	vstr	d16, [r8, #120]
.L48:
	ldr	ip, [r8, #40]
	ldr	r9, [r8, #224]
	cmp	ip, #0
	ble	.L51
	mov	r0, r9
	mov	r10, #0
.L55:
	cmp	lr, #8
	beq	.L64
	ldr	r4, [r0, #8]
	ldr	r6, [r8, #320]
	pld	[r0, #596]
	mul	r3, r4, lr
	mul	r6, r6, lr
	cmp	r6, r3, lsl #1
	blt	.L64
	ldr	r5, [r0, #12]
	ldr	r7, [r8, #324]
	mul	r3, r5, lr
	mul	r7, r7, lr
	cmp	r7, r3, lsl #1
	mov	r3, lr
	bge	.L53
	b	.L52
.L88:
	cmp	r6, r2, lsl #1
	blt	.L52
	cmp	r7, r1, lsl #1
	blt	.L52
.L53:
	lsls	r3, r3, #1
	cmp	r3, #7
	mul	r2, r4, r3
	mul	r1, r5, r3
	ble	.L88
.L52:
	add	r10, r10, #1
	str	r3, [r0, #36]
	cmp	r10, ip
	add	r0, r0, #84
	bne	.L55
.L91:
	movs	r4, #0
.L56:
	ldr	r2, [r9, #8]
	adds	r4, r4, #1
	ldr	r0, [r9, #36]
	add	r9, r9, #84
	ldr	r3, [r8, #32]
	ldr	r1, [r8, #320]
	mul	r0, r0, r2
	lsls	r1, r1, #3
	mul	r0, r3, r0
	bl	jdiv_round_up(PLT)
	ldr	r2, [r9, #-72]
	ldr	r5, [r9, #-48]
	str	r0, [r9, #-44]
	ldr	r3, [r8, #36]
	ldr	r1, [r8, #324]
	mul	r0, r5, r2
	lsls	r1, r1, #3
	mul	r0, r3, r0
	bl	jdiv_round_up(PLT)
	str	r0, [r9, #-40]
	ldr	ip, [r8, #40]
	cmp	ip, r4
	bgt	.L56
.L51:
	ldr	r2, [r8, #48]
	subs	r3, r2, #1
	cmp	r3, #6
	bhi	.L57
	movs	r1, #1
	lsl	r3, r1, r3
	tst	r3, #70
	itt	ne
	movne	r3, #3
	strne	r3, [r8, #128]
	bne	.L60
	tst	r3, #56
	itt	ne
	movne	r3, #4
	strne	r3, [r8, #128]
	beq	.L89
.L60:
	ldr	r0, [r8, #92]
	ldr	r1, [r8, #84]
	cmp	r0, #0
	ite	eq
	moveq	r0, r3
	movne	r0, #1
	str	r0, [r8, #132]
	cbnz	r1, .L74
	ldr	r1, [r8, #312]
	cbnz	r1, .L74
	ldr	r1, [r8, #44]
	cmp	r1, #3
	beq	.L90
.L74:
	movs	r3, #1
.L62:
	str	r3, [r8, #136]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L64:
	add	r10, r10, #1
	mov	r3, lr
	cmp	r10, ip
	str	r3, [r0, #36]
	add	r0, r0, #84
	bne	.L55
	b	.L91
.L89:
	lsls	r3, r3, #31
	itt	mi
	strmi	r1, [r8, #128]
	movmi	r3, r1
	bmi	.L60
.L57:
	mov	r3, ip
	str	ip, [r8, #128]
	b	.L60
.L85:
	movs	r1, #8
	ldr	r0, [r8, #32]
	bl	jdiv_round_up(PLT)
	movs	r1, #8
	str	r0, [r8, #120]
	ldr	r0, [r8, #36]
	bl	jdiv_round_up(PLT)
	movs	r3, #1
	str	r0, [r8, #124]
	str	r3, [r8, #328]
	mov	lr, r3
	b	.L48
.L86:
	movs	r1, #4
	ldr	r0, [r8, #32]
	bl	jdiv_round_up(PLT)
	movs	r1, #4
	str	r0, [r8, #120]
	ldr	r0, [r8, #36]
	bl	jdiv_round_up(PLT)
	movs	r3, #2
	str	r0, [r8, #124]
	str	r3, [r8, #328]
	mov	lr, r3
	b	.L48
.L87:
	movs	r1, #2
	ldr	r0, [r8, #32]
	bl	jdiv_round_up(PLT)
	movs	r1, #2
	str	r0, [r8, #120]
	ldr	r0, [r8, #36]
	bl	jdiv_round_up(PLT)
	movs	r3, #4
	str	r0, [r8, #124]
	str	r3, [r8, #328]
	mov	lr, r3
	b	.L48
.L90:
	cmp	ip, #3
	bne	.L74
	cmp	r3, #3
	bne	.L74
	cmp	r2, #2
	it	ne
	cmpne	r2, #7
	bne	.L74
	ldr	r2, [r8, #224]
	ldr	r3, [r2, #8]
	cmp	r3, #2
	bne	.L74
	ldr	r1, [r2, #92]
	cmp	r1, #1
	bne	.L74
	ldr	r3, [r2, #176]
	cmp	r3, #1
	beq	.L92
.L76:
	mov	r3, r1
	b	.L62
.L92:
	ldr	r1, [r2, #12]
	cmp	r1, #2
	bgt	.L62
	ldr	r1, [r2, #96]
	cmp	r1, #1
	bne	.L62
	ldr	r3, [r2, #180]
	cmp	r3, #1
	bne	.L76
	ldr	r1, [r2, #36]
	ldr	r0, [r8, #328]
	cmp	r1, r0
	bne	.L62
	ldr	r0, [r2, #120]
	cmp	r1, r0
	bne	.L62
	ldr	r2, [r2, #204]
	cmp	r1, r2
	bne	.L62
	ldr	r3, [r8, #324]
	str	r3, [r8, #136]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	jpeg_calc_output_dimensions, .-jpeg_calc_output_dimensions
	.section	.text.jpeg_new_colormap,"ax",%progbits
	.align	2
	.global	jpeg_new_colormap
	.thumb
	.thumb_func
	.type	jpeg_new_colormap, %function
jpeg_new_colormap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r5, [r0, #432]
	cmp	r3, #207
	beq	.L94
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L94:
	ldr	r3, [r4, #92]
	cbz	r3, .L95
	ldr	r3, [r4, #112]
	cbz	r3, .L95
	ldr	r3, [r4, #144]
	cbz	r3, .L95
	ldr	r3, [r5, #24]
	mov	r0, r4
	str	r3, [r4, #472]
	ldr	r3, [r3, #12]
	blx	r3
	movs	r3, #0
	str	r3, [r5, #8]
	pop	{r4, r5, r6, pc}
.L95:
	ldr	r3, [r4]
	movs	r2, #46
	mov	r0, r4
	pop	{r4, r5, r6, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
	.size	jpeg_new_colormap, .-jpeg_new_colormap
	.section	.text.jinit_master_decompress,"ax",%progbits
	.align	2
	.global	jinit_master_decompress
	.thumb
	.thumb_func
	.type	jinit_master_decompress, %function
jinit_master_decompress:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r1, #1
	push	{r4, r5, r6, r7, r8, r9, lr}
	movs	r2, #28
	sub	sp, sp, #20
	mov	r4, r0
	mov	r8, #0
	ldr	r3, [r3]
	blx	r3
	ldr	r2, .L228
	mov	r7, r0
	ldr	r3, .L228+4
	mov	r0, r4
	str	r7, [r4, #432]
.LPIC16:
	add	r2, pc
.LPIC17:
	add	r3, pc
	stmia	r7, {r2, r3, r8}
	bl	jpeg_calc_output_dimensions(PLT)
	movs	r1, #1
	mov	r2, #1408
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	add	r6, r0, #256
	mov	r1, r8
	str	r6, [r4, #336]
	mov	r2, #256
	mov	r5, r0
	bl	memset(PLT)
	and	r3, r6, #7
	negs	r3, r3
	ands	r3, r3, #15
	beq	.L145
	cmp	r3, #1
	strb	r8, [r5, #256]
	bls	.L146
	cmp	r3, #2
	mov	r2, #1
	strb	r2, [r5, #257]
	bls	.L147
	cmp	r3, #3
	mov	r2, #2
	strb	r2, [r5, #258]
	bls	.L148
	cmp	r3, #4
	mov	r2, #3
	strb	r2, [r5, #259]
	bls	.L149
	cmp	r3, #5
	mov	r2, #4
	strb	r2, [r5, #260]
	bls	.L150
	cmp	r3, #6
	mov	r2, #5
	strb	r2, [r5, #261]
	bls	.L151
	cmp	r3, #7
	mov	r2, #6
	strb	r2, [r5, #262]
	bls	.L152
	cmp	r3, #8
	mov	r2, #7
	strb	r2, [r5, #263]
	bls	.L153
	cmp	r3, #9
	mov	r2, #8
	strb	r2, [r5, #264]
	bls	.L154
	cmp	r3, #10
	mov	r2, #9
	strb	r2, [r5, #265]
	bls	.L155
	cmp	r3, #11
	mov	r2, #10
	strb	r2, [r5, #266]
	bls	.L156
	cmp	r3, #12
	mov	r2, #11
	strb	r2, [r5, #267]
	bls	.L157
	cmp	r3, #13
	mov	r2, #12
	strb	r2, [r5, #268]
	bls	.L158
	cmp	r3, #14
	mov	r2, #13
	strb	r2, [r5, #269]
	bls	.L159
	movs	r2, #241
	movs	r0, #15
	movs	r1, #14
	strb	r1, [r5, #270]
.L112:
	rsb	r8, r3, #256
	add	ip, r0, #2
	lsr	lr, r8, #4
	adds	r1, r0, #3
	add	r3, r3, #256
	str	ip, [sp, #8]
	str	r1, [sp, #12]
	add	r9, r0, #1
	lsl	ip, lr, #4
	vmov.i32	q15, #16  @ v4si
	vmov.i32	q9, #4  @ v4si
	stmia	sp, {r0, r9}
	adds	r1, r5, r3
	vld1.64	{d16-d17}, [sp:64]
	movs	r3, #0
.L118:
	vadd.i32	q11, q8, q9
	adds	r3, r3, #1
	vadd.i32	q14, q8, q15
	cmp	lr, r3
	vadd.i32	q10, q11, q9
	vmovn.i32	d24, q8
	vmovn.i32	d25, q11
	vadd.i32	q13, q10, q9
	vmov	q8, q14  @ v4si
	vmovn.i32	d22, q10
	vmovn.i32	d23, q13
	vmovn.i16	d20, q12
	vmovn.i16	d21, q11
	vst1.64	{d20-d21}, [r1:64]!
	bhi	.L118
	cmp	r8, ip
	add	r3, r0, ip
	rsb	r2, ip, r2
	beq	.L116
	cmp	r2, #1
	strb	r3, [r6, r3]
	add	r1, r3, #1
	beq	.L116
	cmp	r2, #2
	strb	r1, [r6, r1]
	add	r1, r3, #2
	beq	.L116
	cmp	r2, #3
	strb	r1, [r6, r1]
	add	r1, r3, #3
	beq	.L116
	cmp	r2, #4
	strb	r1, [r6, r1]
	add	r1, r3, #4
	beq	.L116
	cmp	r2, #5
	strb	r1, [r6, r1]
	add	r1, r3, #5
	beq	.L116
	cmp	r2, #6
	strb	r1, [r6, r1]
	add	r1, r3, #6
	beq	.L116
	cmp	r2, #7
	strb	r1, [r6, r1]
	add	r1, r3, #7
	beq	.L116
	cmp	r2, #8
	strb	r1, [r6, r1]
	add	r1, r3, #8
	beq	.L116
	cmp	r2, #9
	strb	r1, [r6, r1]
	add	r1, r3, #9
	beq	.L116
	cmp	r2, #10
	strb	r1, [r6, r1]
	add	r1, r3, #10
	beq	.L116
	cmp	r2, #11
	strb	r1, [r6, r1]
	add	r1, r3, #11
	beq	.L116
	cmp	r2, #12
	strb	r1, [r6, r1]
	add	r1, r3, #12
	beq	.L116
	cmp	r2, #13
	strb	r1, [r6, r1]
	add	r1, r3, #13
	beq	.L116
	adds	r3, r3, #14
	cmp	r2, #14
	strb	r1, [r6, r1]
	it	ne
	strbne	r3, [r6, r3]
.L116:
	mov	r1, #-1
	mov	r2, #384
	add	r0, r5, #512
	bl	memset(PLT)
	movs	r1, #0
	mov	r2, #384
	add	r0, r5, #896
	bl	memset(PLT)
	ldr	r1, [r4, #336]
	add	r0, r5, #1280
	movs	r2, #128
	bl	memcpy(PLT)
	ldr	r3, [r4, #84]
	movs	r1, #0
	str	r1, [r7, #12]
	cbnz	r3, .L119
	ldr	r1, [r4, #312]
	cmp	r1, #0
	bne	.L161
	ldr	r3, [r4, #44]
	cmp	r3, #3
	beq	.L220
.L119:
	ldr	r3, [r4, #92]
	movs	r2, #0
	str	r1, [r7, #16]
	str	r2, [r7, #20]
	str	r2, [r7, #24]
	cmp	r3, #0
	beq	.L121
	ldr	r3, [r4, #72]
	cbnz	r3, .L144
	str	r3, [r4, #108]
	str	r3, [r4, #112]
	str	r3, [r4, #116]
.L144:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	bne	.L221
	ldr	r3, [r4, #128]
	cmp	r3, #3
	beq	.L124
.L227:
	movs	r3, #0
	movs	r2, #1
	str	r2, [r4, #108]
	str	r3, [r4, #112]
	str	r3, [r4, #116]
	str	r3, [r4, #144]
.L125:
	mov	r0, r4
	bl	jinit_1pass_quantizer(PLT)
	ldr	r3, [r4, #472]
	str	r3, [r7, #20]
.L129:
	ldr	r3, [r4, #116]
	cbnz	r3, .L130
	ldr	r3, [r4, #112]
	cmp	r3, #0
	beq	.L131
.L130:
	mov	r0, r4
	bl	jinit_2pass_quantizer(PLT)
	ldr	r3, [r4, #472]
	str	r3, [r7, #24]
	ldr	r3, [r4, #76]
	cmp	r3, #0
	beq	.L222
.L132:
	mov	r0, r4
	bl	jinit_inverse_dct(PLT)
	ldr	r3, [r4, #236]
	cmp	r3, #0
	bne	.L223
.L135:
	ldr	r3, [r4, #232]
	mov	r0, r4
	cmp	r3, #0
	beq	.L137
	bl	jinit_phuff_decoder(PLT)
.L136:
	ldr	r3, [r4, #448]
	movs	r1, #1
	ldr	r3, [r3, #24]
	cbnz	r3, .L138
	ldr	r1, [r4, #72]
	adds	r1, r1, #0
	it	ne
	movne	r1, #1
.L138:
	mov	r0, r4
	bl	jinit_d_coef_controller(PLT)
	ldr	r1, [r4, #76]
	cmp	r1, #0
	beq	.L224
.L139:
	ldr	r3, [r4, #4]
	mov	r0, r4
	ldr	r3, [r3, #24]
	blx	r3
	ldr	r3, [r4, #448]
	mov	r0, r4
	ldr	r3, [r3, #16]
	blx	r3
	ldr	r3, [r4, #8]
	cbz	r3, .L111
	ldr	r2, [r4, #72]
	cbnz	r2, .L111
	ldr	r2, [r4, #448]
	ldr	r2, [r2, #24]
	cbz	r2, .L111
	ldr	r2, [r4, #232]
	ldr	r5, [r4, #40]
	cmp	r2, #0
	bne	.L225
.L142:
	ldr	r0, [r4, #332]
	movs	r2, #0
	ldr	r4, [r4, #116]
	ldr	r1, [r7, #12]
	str	r2, [r3, #4]
	mul	r0, r5, r0
	cmp	r4, r2
	ite	eq
	moveq	r4, #2
	movne	r4, #3
	adds	r1, r1, #1
	str	r4, [r3, #16]
	str	r2, [r3, #12]
	str	r0, [r3, #8]
	str	r1, [r7, #12]
.L111:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L121:
	str	r3, [r4, #108]
	str	r3, [r4, #112]
	str	r3, [r4, #116]
.L131:
	ldr	r3, [r4, #76]
	cmp	r3, #0
	bne	.L132
.L222:
	ldr	r3, [r7, #16]
	mov	r0, r4
	cbnz	r3, .L226
	bl	jinit_color_deconverter(PLT)
	mov	r0, r4
	bl	jinit_upsampler(PLT)
.L134:
	mov	r0, r4
	ldr	r1, [r4, #116]
	bl	jinit_d_post_controller(PLT)
	mov	r0, r4
	bl	jinit_inverse_dct(PLT)
	ldr	r3, [r4, #236]
	cmp	r3, #0
	beq	.L135
.L223:
	ldr	r3, [r4]
	movs	r2, #1
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L136
.L137:
	bl	jinit_huff_decoder(PLT)
	b	.L136
.L226:
	bl	jinit_merged_upsampler(PLT)
	b	.L134
.L161:
	mov	r1, r3
	b	.L119
.L145:
	mov	r2, #256
	mov	r0, r3
	b	.L112
.L224:
	mov	r0, r4
	bl	jinit_d_main_controller(PLT)
	b	.L139
.L225:
	add	r5, r5, r5, lsl #1
	adds	r5, r5, #2
	b	.L142
.L221:
	ldr	r3, [r4]
	movs	r2, #47
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #128]
	cmp	r3, #3
	bne	.L227
	b	.L124
.L220:
	ldr	r3, [r4, #40]
	cmp	r3, #3
	bne	.L119
	ldr	r3, [r4, #128]
	cmp	r3, #3
	bne	.L119
	ldr	r3, [r4, #48]
	cmp	r3, #2
	it	ne
	cmpne	r3, #7
	bne	.L119
	ldr	r3, [r4, #224]
	ldr	r2, [r3, #8]
	cmp	r2, #2
	bne	.L119
	ldr	r2, [r3, #92]
	cmp	r2, #1
	bne	.L119
	ldr	r2, [r3, #176]
	cmp	r2, #1
	bne	.L119
	ldr	r2, [r3, #12]
	cmp	r2, #2
	bgt	.L119
	ldr	r2, [r3, #96]
	cmp	r2, #1
	bne	.L119
	ldr	r2, [r3, #180]
	cmp	r2, #1
	bne	.L119
	ldr	r2, [r3, #36]
	ldr	r0, [r4, #328]
	cmp	r2, r0
	bne	.L119
	ldr	r0, [r3, #120]
	cmp	r2, r0
	bne	.L119
	ldr	r1, [r3, #204]
	subs	r1, r2, r1
	clz	r1, r1
	lsrs	r1, r1, #5
	b	.L119
.L124:
	ldr	r3, [r4, #144]
	cbz	r3, .L126
	ldr	r3, [r4, #108]
	movs	r2, #1
	str	r2, [r4, #112]
	cmp	r3, #0
	beq	.L129
	b	.L125
.L159:
	movs	r2, #242
	movs	r0, #14
	b	.L112
.L158:
	movs	r2, #243
	movs	r0, #13
	b	.L112
.L157:
	movs	r2, #244
	movs	r0, #12
	b	.L112
.L156:
	movs	r2, #245
	movs	r0, #11
	b	.L112
.L155:
	movs	r2, #246
	movs	r0, #10
	b	.L112
.L154:
	movs	r2, #247
	movs	r0, #9
	b	.L112
.L153:
	movs	r2, #248
	movs	r0, #8
	b	.L112
.L152:
	movs	r2, #249
	movs	r0, #7
	b	.L112
.L151:
	movs	r2, #250
	movs	r0, #6
	b	.L112
.L150:
	movs	r2, #251
	movs	r0, #5
	b	.L112
.L149:
	movs	r2, #252
	movs	r0, #4
	b	.L112
.L148:
	movs	r2, #253
	movs	r0, #3
	b	.L112
.L147:
	movs	r2, #254
	movs	r0, #2
	b	.L112
.L146:
	movs	r2, #255
	movs	r0, #1
	b	.L112
.L126:
	ldr	r3, [r4, #100]
	cbz	r3, .L128
	ldr	r3, [r4, #108]
	movs	r2, #1
	str	r2, [r4, #116]
	cmp	r3, #0
	beq	.L129
	b	.L125
.L128:
	movs	r3, #1
	str	r3, [r4, #108]
	b	.L125
.L229:
	.align	2
.L228:
	.word	prepare_for_output_pass-(.LPIC16+4)
	.word	finish_output_pass-(.LPIC17+4)
	.size	jinit_master_decompress, .-jinit_master_decompress
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
