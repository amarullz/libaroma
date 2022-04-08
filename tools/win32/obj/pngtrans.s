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
	.file	"pngtrans.c"
	.section	.text.png_set_bgr,"ax",%progbits
	.align	2
	.global	png_set_bgr
	.thumb
	.thumb_func
	.type	png_set_bgr, %function
png_set_bgr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L1
	ldr	r3, [r0, #456]
	orr	r3, r3, #1
	str	r3, [r0, #456]
.L1:
	bx	lr
	.size	png_set_bgr, .-png_set_bgr
	.section	.text.png_set_swap,"ax",%progbits
	.align	2
	.global	png_set_swap
	.thumb
	.thumb_func
	.type	png_set_swap, %function
png_set_swap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L7
	ldrb	r3, [r0, #676]	@ zero_extendqisi2
	cmp	r3, #16
	ittt	eq
	ldreq	r3, [r0, #456]
	orreq	r3, r3, #16
	streq	r3, [r0, #456]
.L7:
	bx	lr
	.size	png_set_swap, .-png_set_swap
	.section	.text.png_set_packing,"ax",%progbits
	.align	2
	.global	png_set_packing
	.thumb
	.thumb_func
	.type	png_set_packing, %function
png_set_packing:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L12
	ldrb	r3, [r0, #676]	@ zero_extendqisi2
	cmp	r3, #7
	itttt	ls
	ldrls	r3, [r0, #456]
	movls	r2, #8
	strbls	r2, [r0, #677]
	orrls	r3, r3, #4
	it	ls
	strls	r3, [r0, #456]
.L12:
	bx	lr
	.size	png_set_packing, .-png_set_packing
	.section	.text.png_set_packswap,"ax",%progbits
	.align	2
	.global	png_set_packswap
	.thumb
	.thumb_func
	.type	png_set_packswap, %function
png_set_packswap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L17
	ldrb	r3, [r0, #676]	@ zero_extendqisi2
	cmp	r3, #7
	ittt	ls
	ldrls	r3, [r0, #456]
	orrls	r3, r3, #65536
	strls	r3, [r0, #456]
.L17:
	bx	lr
	.size	png_set_packswap, .-png_set_packswap
	.section	.text.png_set_shift,"ax",%progbits
	.align	2
	.global	png_set_shift
	.thumb
	.thumb_func
	.type	png_set_shift, %function
png_set_shift:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L22
	ldr	r3, [r0, #456]
	orr	r3, r3, #8
	str	r3, [r0, #456]
	ldr	r3, [r1]	@ unaligned
	str	r3, [r0, #761]	@ unaligned
	ldrb	r3, [r1, #4]	@ zero_extendqisi2
	strb	r3, [r0, #765]
.L22:
	bx	lr
	.size	png_set_shift, .-png_set_shift
	.section	.text.png_set_interlace_handling,"ax",%progbits
	.align	2
	.global	png_set_interlace_handling
	.thumb
	.thumb_func
	.type	png_set_interlace_handling, %function
png_set_interlace_handling:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	cbz	r0, .L30
	ldrb	r2, [r0, #672]	@ zero_extendqisi2
	cbz	r2, .L30
	ldr	r2, [r0, #456]
	movs	r0, #7
	orr	r2, r2, #2
	str	r2, [r3, #456]
	bx	lr
.L30:
	movs	r0, #1
	bx	lr
	.size	png_set_interlace_handling, .-png_set_interlace_handling
	.section	.text.png_set_filler,"ax",%progbits
	.align	2
	.global	png_set_filler
	.thumb
	.thumb_func
	.type	png_set_filler, %function
png_set_filler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L46
	push	{r4}
	mov	r3, r0
	ldr	r4, [r0, #448]
	lsls	r4, r4, #16
	it	mi
	strhmi	r1, [r0, #684]	@ movhi
	bmi	.L34
	ldrb	r1, [r0, #675]	@ zero_extendqisi2
	cbz	r1, .L36
	cmp	r1, #2
	itt	eq
	moveq	r1, #4
	strbeq	r1, [r0, #680]
	bne	.L47
.L34:
	cmp	r2, #1
	ldr	r1, [r3, #456]
	ldr	r2, [r3, #452]
	ldr	r4, [sp], #4
	orr	r1, r1, #32768
	ite	eq
	orreq	r2, r2, #128
	bicne	r2, r2, #128
	str	r1, [r3, #456]
	str	r2, [r3, #452]
.L46:
	bx	lr
.L47:
	ldr	r1, .L48
	ldr	r4, [sp], #4
.LPIC1:
	add	r1, pc
	b	png_app_error(PLT)
.L36:
	ldrb	r1, [r0, #676]	@ zero_extendqisi2
	cmp	r1, #7
	bls	.L38
	movs	r1, #2
	strb	r1, [r0, #680]
	b	.L34
.L38:
	ldr	r1, .L48+4
	ldr	r4, [sp], #4
.LPIC0:
	add	r1, pc
	b	png_app_error(PLT)
.L49:
	.align	2
.L48:
	.word	.LC1-(.LPIC1+4)
	.word	.LC0-(.LPIC0+4)
	.size	png_set_filler, .-png_set_filler
	.section	.text.png_set_add_alpha,"ax",%progbits
	.align	2
	.global	png_set_add_alpha
	.thumb
	.thumb_func
	.type	png_set_add_alpha, %function
png_set_add_alpha:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L58
	push	{r4, lr}
	mov	r4, r0
	bl	png_set_filler(PLT)
	ldr	r3, [r4, #456]
	lsls	r2, r3, #16
	itt	mi
	orrmi	r3, r3, #16777216
	strmi	r3, [r4, #456]
	pop	{r4, pc}
.L58:
	bx	lr
	.size	png_set_add_alpha, .-png_set_add_alpha
	.section	.text.png_set_swap_alpha,"ax",%progbits
	.align	2
	.global	png_set_swap_alpha
	.thumb
	.thumb_func
	.type	png_set_swap_alpha, %function
png_set_swap_alpha:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L59
	ldr	r3, [r0, #456]
	orr	r3, r3, #131072
	str	r3, [r0, #456]
.L59:
	bx	lr
	.size	png_set_swap_alpha, .-png_set_swap_alpha
	.section	.text.png_set_invert_alpha,"ax",%progbits
	.align	2
	.global	png_set_invert_alpha
	.thumb
	.thumb_func
	.type	png_set_invert_alpha, %function
png_set_invert_alpha:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L64
	ldr	r3, [r0, #456]
	orr	r3, r3, #524288
	str	r3, [r0, #456]
.L64:
	bx	lr
	.size	png_set_invert_alpha, .-png_set_invert_alpha
	.section	.text.png_set_invert_mono,"ax",%progbits
	.align	2
	.global	png_set_invert_mono
	.thumb
	.thumb_func
	.type	png_set_invert_mono, %function
png_set_invert_mono:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L69
	ldr	r3, [r0, #456]
	orr	r3, r3, #32
	str	r3, [r0, #456]
.L69:
	bx	lr
	.size	png_set_invert_mono, .-png_set_invert_mono
	.section	.text.png_do_invert,"ax",%progbits
	.align	2
	.global	png_do_invert
	.thumb
	.thumb_func
	.type	png_do_invert, %function
png_do_invert:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L75
	ldr	r2, [r0, #4]
	cmp	r2, #0
	beq	.L74
	and	r0, r1, #7
	negs	r0, r0
	and	r0, r0, #15
	cmp	r0, r2
	it	cs
	movcs	r0, r2
	cmp	r2, #16
	it	ls
	movls	r0, r2
	bhi	.L119
.L77:
	ldrb	r4, [r1]	@ zero_extendqisi2
	cmp	r0, #1
	mov	r3, r1
	mvn	r4, r4
	strb	r4, [r3], #1
	bls	.L93
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	cmp	r0, #2
	add	r3, r1, #2
	mvn	r4, r4
	strb	r4, [r1, #1]
	bls	.L94
	ldrb	r4, [r1, #2]	@ zero_extendqisi2
	cmp	r0, #3
	add	r3, r1, #3
	mvn	r4, r4
	strb	r4, [r1, #2]
	bls	.L95
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	cmp	r0, #4
	add	r3, r1, #4
	mvn	r4, r4
	strb	r4, [r1, #3]
	bls	.L96
	ldrb	r4, [r1, #4]	@ zero_extendqisi2
	cmp	r0, #5
	add	r3, r1, #5
	mvn	r4, r4
	strb	r4, [r1, #4]
	bls	.L97
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	cmp	r0, #6
	add	r3, r1, #6
	mvn	r4, r4
	strb	r4, [r1, #5]
	bls	.L98
	ldrb	r4, [r1, #6]	@ zero_extendqisi2
	cmp	r0, #7
	add	r3, r1, #7
	mvn	r4, r4
	strb	r4, [r1, #6]
	bls	.L99
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	cmp	r0, #8
	add	r3, r1, #8
	mvn	r4, r4
	strb	r4, [r1, #7]
	bls	.L100
	ldrb	r4, [r1, #8]	@ zero_extendqisi2
	cmp	r0, #9
	add	r3, r1, #9
	mvn	r4, r4
	strb	r4, [r1, #8]
	bls	.L101
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	cmp	r0, #10
	add	r3, r1, #10
	mvn	r4, r4
	strb	r4, [r1, #9]
	bls	.L102
	ldrb	r4, [r1, #10]	@ zero_extendqisi2
	cmp	r0, #11
	add	r3, r1, #11
	mvn	r4, r4
	strb	r4, [r1, #10]
	bls	.L103
	ldrb	r4, [r1, #11]	@ zero_extendqisi2
	cmp	r0, #12
	add	r3, r1, #12
	mvn	r4, r4
	strb	r4, [r1, #11]
	bls	.L104
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	cmp	r0, #13
	add	r3, r1, #13
	mvn	r4, r4
	strb	r4, [r1, #12]
	bls	.L105
	ldrb	r4, [r1, #13]	@ zero_extendqisi2
	cmp	r0, #14
	add	r3, r1, #14
	mvn	r4, r4
	strb	r4, [r1, #13]
	bls	.L106
	ldrb	r4, [r1, #14]	@ zero_extendqisi2
	cmp	r0, #15
	add	r3, r1, #15
	mvn	r4, r4
	strb	r4, [r1, #14]
	bls	.L107
	ldrb	r5, [r1, #15]	@ zero_extendqisi2
	add	r3, r1, #16
	movs	r4, #16
	mvns	r5, r5
	strb	r5, [r1, #15]
.L79:
	cmp	r2, r0
	beq	.L120
.L78:
	subs	r7, r2, r0
	lsrs	r5, r7, #4
	lsls	r6, r5, #4
	cbz	r5, .L81
	add	r1, r1, r0
	movs	r0, #0
	mov	lr, r1
.L87:
	vld1.64	{d16-d17}, [r1:64]!
	adds	r0, r0, #1
	cmp	r5, r0
	vmvn	q8, q8
	vst1.64	{d16-d17}, [lr:64]!
	bhi	.L87
	cmp	r7, r6
	add	r3, r3, r6
	add	r4, r4, r6
	beq	.L74
.L81:
	ldrb	r0, [r3]	@ zero_extendqisi2
	adds	r1, r4, #1
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3]
	bls	.L74
	ldrb	r0, [r3, #1]	@ zero_extendqisi2
	adds	r1, r4, #2
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #1]
	bls	.L74
	ldrb	r0, [r3, #2]	@ zero_extendqisi2
	adds	r1, r4, #3
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #2]
	bls	.L74
	ldrb	r0, [r3, #3]	@ zero_extendqisi2
	adds	r1, r4, #4
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #3]
	bls	.L74
	ldrb	r0, [r3, #4]	@ zero_extendqisi2
	adds	r1, r4, #5
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #4]
	bls	.L74
	ldrb	r0, [r3, #5]	@ zero_extendqisi2
	adds	r1, r4, #6
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #5]
	bls	.L74
	ldrb	r0, [r3, #6]	@ zero_extendqisi2
	adds	r1, r4, #7
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #6]
	bls	.L74
	ldrb	r0, [r3, #7]	@ zero_extendqisi2
	add	r1, r4, #8
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #7]
	bls	.L74
	ldrb	r0, [r3, #8]	@ zero_extendqisi2
	add	r1, r4, #9
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #8]
	bls	.L74
	ldrb	r0, [r3, #9]	@ zero_extendqisi2
	add	r1, r4, #10
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #9]
	bls	.L74
	ldrb	r0, [r3, #10]	@ zero_extendqisi2
	add	r1, r4, #11
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #10]
	bls	.L74
	ldrb	r0, [r3, #11]	@ zero_extendqisi2
	add	r1, r4, #12
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #11]
	bls	.L74
	ldrb	r0, [r3, #12]	@ zero_extendqisi2
	add	r1, r4, #13
	cmp	r2, r1
	mvn	r0, r0
	strb	r0, [r3, #12]
	bls	.L74
	ldrb	r1, [r3, #13]	@ zero_extendqisi2
	adds	r4, r4, #14
	cmp	r2, r4
	mvn	r1, r1
	strb	r1, [r3, #13]
	bls	.L121
	ldrb	r2, [r3, #14]	@ zero_extendqisi2
	mvns	r2, r2
	strb	r2, [r3, #14]
	pop	{r4, r5, r6, r7, pc}
.L75:
	ldrh	r3, [r0, #8]
	movw	r2, #2052
	cmp	r3, r2
	beq	.L122
	movw	r2, #4100
	cmp	r3, r2
	beq	.L123
.L74:
	pop	{r4, r5, r6, r7, pc}
.L122:
	ldr	r0, [r0, #4]
	cmp	r0, #0
	beq	.L74
	movs	r3, #0
.L89:
	ldrb	r2, [r1, r3]	@ zero_extendqisi2
	mvns	r2, r2
	strb	r2, [r1, r3]
	adds	r3, r3, #2
	cmp	r0, r3
	bhi	.L89
	pop	{r4, r5, r6, r7, pc}
.L123:
	ldr	r4, [r0, #4]
	cmp	r4, #0
	beq	.L74
	adds	r1, r1, #4
	movs	r3, #0
.L90:
	ldrb	r0, [r1, #-4]	@ zero_extendqisi2
	adds	r3, r3, #4
	ldrb	r2, [r1, #-3]	@ zero_extendqisi2
	cmp	r4, r3
	add	r1, r1, #4
	mvn	r0, r0
	mvn	r2, r2
	strb	r0, [r1, #-8]
	strb	r2, [r1, #-7]
	bhi	.L90
	pop	{r4, r5, r6, r7, pc}
.L119:
	mov	r3, r1
	mov	r4, r0
	cmp	r0, #0
	beq	.L78
	b	.L77
.L120:
	pop	{r4, r5, r6, r7, pc}
.L107:
	movs	r4, #15
	b	.L79
.L99:
	movs	r4, #7
	b	.L79
.L100:
	movs	r4, #8
	b	.L79
.L101:
	movs	r4, #9
	b	.L79
.L102:
	movs	r4, #10
	b	.L79
.L103:
	movs	r4, #11
	b	.L79
.L104:
	movs	r4, #12
	b	.L79
.L105:
	movs	r4, #13
	b	.L79
.L106:
	movs	r4, #14
	b	.L79
.L95:
	movs	r4, #3
	b	.L79
.L96:
	movs	r4, #4
	b	.L79
.L97:
	movs	r4, #5
	b	.L79
.L98:
	movs	r4, #6
	b	.L79
.L93:
	movs	r4, #1
	b	.L79
.L94:
	movs	r4, #2
	b	.L79
.L121:
	pop	{r4, r5, r6, r7, pc}
	.size	png_do_invert, .-png_do_invert
	.section	.text.png_do_swap,"ax",%progbits
	.align	2
	.global	png_do_swap
	.thumb
	.thumb_func
	.type	png_do_swap, %function
png_do_swap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r3, #16
	beq	.L141
.L140:
	bx	lr
.L141:
	ldrb	r3, [r0, #10]	@ zero_extendqisi2
	ldr	r2, [r0]
	mul	r3, r2, r3
	cmp	r3, #0
	beq	.L140
	lsrs	r0, r3, #4
	push	{r4, r5}
	cmp	r0, #0
	it	ne
	cmpne	r3, #15
	lsl	r2, r0, #4
	ite	ls
	movls	r5, #1
	movhi	r5, #0
	bls	.L133
	mov	r4, r1
.L132:
	vld2.8	{d20-d23}, [r4]
	adds	r5, r5, #1
	cmp	r0, r5
	vmov	q8, q11  @ v16qi
	vmov	q9, q10  @ v16qi
	vst2.8	{d16-d19}, [r4]!
	bhi	.L132
	cmp	r2, r3
	add	r1, r1, r2, lsl #1
	beq	.L124
.L127:
	ldrb	r5, [r1]	@ zero_extendqisi2
	adds	r0, r2, #1
	ldrb	r4, [r1, #1]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #1]
	strb	r4, [r1]
	bls	.L124
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	adds	r0, r2, #2
	ldrb	r4, [r1, #3]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #3]
	strb	r4, [r1, #2]
	bls	.L124
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	adds	r0, r2, #3
	ldrb	r4, [r1, #5]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #5]
	strb	r4, [r1, #4]
	bls	.L124
	ldrb	r5, [r1, #6]	@ zero_extendqisi2
	adds	r0, r2, #4
	ldrb	r4, [r1, #7]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #7]
	strb	r4, [r1, #6]
	bls	.L124
	ldrb	r5, [r1, #8]	@ zero_extendqisi2
	adds	r0, r2, #5
	ldrb	r4, [r1, #9]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #9]
	strb	r4, [r1, #8]
	bls	.L124
	ldrb	r5, [r1, #10]	@ zero_extendqisi2
	adds	r0, r2, #6
	ldrb	r4, [r1, #11]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #11]
	strb	r4, [r1, #10]
	bls	.L124
	ldrb	r5, [r1, #12]	@ zero_extendqisi2
	adds	r0, r2, #7
	ldrb	r4, [r1, #13]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #13]
	strb	r4, [r1, #12]
	bls	.L124
	ldrb	r5, [r1, #14]	@ zero_extendqisi2
	add	r0, r2, #8
	ldrb	r4, [r1, #15]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #15]
	strb	r4, [r1, #14]
	bls	.L124
	ldrb	r5, [r1, #16]	@ zero_extendqisi2
	add	r0, r2, #9
	ldrb	r4, [r1, #17]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #17]
	strb	r4, [r1, #16]
	bls	.L124
	ldrb	r5, [r1, #18]	@ zero_extendqisi2
	add	r0, r2, #10
	ldrb	r4, [r1, #19]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #19]
	strb	r4, [r1, #18]
	bls	.L124
	ldrb	r5, [r1, #20]	@ zero_extendqisi2
	add	r0, r2, #11
	ldrb	r4, [r1, #21]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #21]
	strb	r4, [r1, #20]
	bls	.L124
	ldrb	r5, [r1, #22]	@ zero_extendqisi2
	add	r0, r2, #12
	ldrb	r4, [r1, #23]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #23]
	strb	r4, [r1, #22]
	bls	.L124
	ldrb	r5, [r1, #24]	@ zero_extendqisi2
	add	r0, r2, #13
	ldrb	r4, [r1, #25]	@ zero_extendqisi2
	cmp	r3, r0
	strb	r5, [r1, #25]
	strb	r4, [r1, #24]
	bls	.L124
	ldrb	r4, [r1, #26]	@ zero_extendqisi2
	adds	r2, r2, #14
	ldrb	r0, [r1, #27]	@ zero_extendqisi2
	cmp	r3, r2
	strb	r4, [r1, #27]
	strb	r0, [r1, #26]
	bls	.L124
	ldrb	r2, [r1, #28]	@ zero_extendqisi2
	ldrb	r3, [r1, #29]	@ zero_extendqisi2
	strb	r2, [r1, #29]
	strb	r3, [r1, #28]
.L124:
	pop	{r4, r5}
	bx	lr
.L133:
	movs	r2, #0
	b	.L127
	.size	png_do_swap, .-png_do_swap
	.section	.text.png_do_packswap,"ax",%progbits
	.align	2
	.global	png_do_packswap
	.thumb
	.thumb_func
	.type	png_do_packswap, %function
png_do_packswap:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r3, #7
	bhi	.L142
	cmp	r3, #1
	ldr	r2, [r0, #4]
	beq	.L147
	cmp	r3, #2
	beq	.L148
	ldr	r0, .L150
	cmp	r3, #4
.LPIC20:
	add	r0, pc
	beq	.L144
.L142:
	bx	lr
.L148:
	ldr	r0, .L150+4
.LPIC19:
	add	r0, pc
.L144:
	add	r2, r2, r1
	cmp	r1, r2
	bcs	.L142
.L146:
	ldrb	r3, [r1]	@ zero_extendqisi2
	ldrb	r3, [r0, r3]	@ zero_extendqisi2
	strb	r3, [r1], #1
	cmp	r1, r2
	bne	.L146
	bx	lr
.L147:
	ldr	r0, .L150+8
.LPIC18:
	add	r0, pc
	b	.L144
.L151:
	.align	2
.L150:
	.word	.LANCHOR2-(.LPIC20+4)
	.word	.LANCHOR1-(.LPIC19+4)
	.word	.LANCHOR0-(.LPIC18+4)
	.size	png_do_packswap, .-png_do_packswap
	.section	.text.png_do_strip_channel,"ax",%progbits
	.align	2
	.global	png_do_strip_channel
	.thumb
	.thumb_func
	.type	png_do_strip_channel, %function
png_do_strip_channel:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldrb	r3, [r0, #10]	@ zero_extendqisi2
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	ldr	r4, [r0, #4]
	cmp	r3, #2
	fstmfdd	sp!, {d8, d9}
	sub	sp, sp, #20
	add	r4, r4, r1
	beq	.L235
	cmp	r3, #4
	beq	.L236
.L152:
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L236:
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L237
	cmp	r3, #16
	bne	.L152
	adds	r7, r1, #2
	mov	r5, r1
	cmp	r2, #0
	beq	.L238
.L201:
	cmp	r4, r7
	bls	.L202
	mov	r2, r5
	mov	r3, r7
.L204:
	ldrb	r6, [r3]	@ zero_extendqisi2
	adds	r3, r3, #8
	adds	r2, r2, #6
	strb	r6, [r2, #-6]
	ldrb	r6, [r3, #-7]	@ zero_extendqisi2
	strb	r6, [r2, #-5]
	ldrb	r6, [r3, #-6]	@ zero_extendqisi2
	strb	r6, [r2, #-4]
	ldrb	r6, [r3, #-5]	@ zero_extendqisi2
	strb	r6, [r2, #-3]
	ldrb	r6, [r3, #-4]	@ zero_extendqisi2
	strb	r6, [r2, #-2]
	ldrb	r6, [r3, #-3]	@ zero_extendqisi2
	cmp	r4, r3
	strb	r6, [r2, #-1]
	bhi	.L204
	mvns	r7, r7
	add	r4, r4, r7
	lsrs	r4, r4, #3
	adds	r4, r4, #1
	add	r4, r4, r4, lsl #1
	add	r5, r5, r4, lsl #1
.L202:
	movs	r3, #48
	strb	r3, [r0, #11]
	b	.L199
.L235:
	ldrb	r3, [r0, #9]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L239
	cmp	r3, #16
	bne	.L152
	cmp	r2, #0
	bne	.L240
	adds	r2, r1, #4
	adds	r6, r1, #2
.L174:
	cmp	r4, r2
	bls	.L207
	add	lr, r4, #3
	adds	r3, r2, #4
	rsb	lr, r3, lr
	lsr	r7, lr, #2
	adds	r7, r7, #1
	add	ip, r2, r7, lsl #2
	add	r5, r6, r7, lsl #1
	cmp	r6, ip
	it	cc
	cmpcc	r2, r5
	ite	cs
	movcs	ip, #1
	movcc	ip, #0
	cmp	r7, #15
	ite	ls
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L176
	lsr	lr, lr, #6
	lsl	ip, lr, #4
	cmp	lr, #0
	beq	.L177
	mov	r8, r2
	mov	r10, r6
	movs	r3, #0
.L182:
	mov	r9, r8
	adds	r3, r3, #1
	cmp	lr, r3
	add	r8, r8, #64
	vld4.8	{d16, d18, d20, d22}, [r9]!
	vld4.8	{d17, d19, d21, d23}, [r9]
	vmov	q12, q8  @ v16qi
	vmov	q13, q9  @ v16qi
	vst2.8	{d24-d27}, [r10]!
	bhi	.L182
	cmp	r7, ip
	add	r2, r2, ip, lsl #2
	add	r6, r6, ip, lsl #1
	beq	.L175
	adds	r3, r2, #4
.L177:
	adds	r6, r6, #2
.L181:
	ldrb	r7, [r2]	@ zero_extendqisi2
	cmp	r4, r3
	add	r6, r6, #2
	strb	r7, [r6, #-4]
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r3, #4
	strb	r7, [r6, #-3]
	bhi	.L181
.L175:
	movs	r3, #16
	strb	r3, [r0, #11]
	b	.L171
.L237:
	adds	r3, r1, #1
	mov	r6, r1
	cmp	r2, #0
	beq	.L241
.L188:
	cmp	r4, r3
	bls	.L208
	add	lr, r4, #3
	adds	r2, r3, #4
	rsb	lr, r2, lr
	lsr	r7, lr, #2
	adds	r7, r7, #1
	add	r5, r7, r7, lsl #1
	add	ip, r3, r7, lsl #2
	add	r5, r5, r6
	cmp	r6, ip
	it	cc
	cmpcc	r3, r5
	ite	cs
	movcs	ip, #1
	movcc	ip, #0
	cmp	r7, #15
	ite	ls
	movls	ip, #0
	andhi	ip, ip, #1
	cmp	ip, #0
	beq	.L198
	lsr	ip, lr, #6
	lsl	lr, ip, #4
	cmp	ip, #0
	beq	.L195
	mov	r9, r3
	mov	r8, r6
	movs	r2, #0
.L196:
	mov	fp, r9
	adds	r2, r2, #1
	mov	r10, r8
	cmp	ip, r2
	vld4.8	{d16, d18, d20, d22}, [fp]!
	add	r9, r9, #64
	add	r8, r8, #48
	vld4.8	{d17, d19, d21, d23}, [fp]
	vmov	q2, q8  @ v16qi
	vmov	q3, q9  @ v16qi
	vmov	q4, q10  @ v16qi
	vst3.8	{d4, d6, d8}, [r10]!
	vst3.8	{d5, d7, d9}, [r10]
	bhi	.L196
	add	r2, lr, lr, lsl #1
	add	r3, r3, lr, lsl #2
	cmp	r7, lr
	add	r6, r6, r2
	it	ne
	addne	r2, r3, #4
	beq	.L189
.L195:
	ldrb	r7, [r3]	@ zero_extendqisi2
	cmp	r4, r2
	add	r6, r6, #3
	strb	r7, [r6, #-3]
	ldrb	r7, [r3, #1]	@ zero_extendqisi2
	strb	r7, [r6, #-2]
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	mov	r3, r2
	add	r2, r2, #4
	strb	r7, [r6, #-1]
	bhi	.L195
.L189:
	movs	r3, #24
	strb	r3, [r0, #11]
.L199:
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	movs	r2, #3
	strb	r2, [r0, #10]
	cmp	r3, #6
	itt	eq
	moveq	r3, #2
	strbeq	r3, [r0, #8]
.L185:
	subs	r1, r5, r1
	str	r1, [r0, #4]
	add	sp, sp, #20
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L198:
	ldrb	r7, [r3]	@ zero_extendqisi2
	cmp	r4, r2
	add	r6, r6, #3
	strb	r7, [r6, #-3]
	ldrb	r7, [r3, #1]	@ zero_extendqisi2
	strb	r7, [r6, #-2]
	ldrb	r7, [r3, #2]	@ zero_extendqisi2
	mov	r3, r2
	add	r2, r2, #4
	strb	r7, [r6, #-1]
	bhi	.L198
	b	.L189
.L239:
	cmp	r2, #0
	bne	.L242
	adds	r3, r1, #2
	adds	r2, r1, #1
.L156:
	cmp	r4, r3
	bls	.L205
	adds	r7, r3, #2
	add	r9, r4, #1
	rsb	r9, r7, r9
	lsr	r6, r9, #1
	adds	r6, r6, #1
	add	lr, r3, r6, lsl #1
	adds	r5, r2, r6
	cmp	r3, r5
	it	cc
	cmpcc	r2, lr
	ite	cs
	movcs	lr, #1
	movcc	lr, #0
	cmp	r6, #15
	ite	ls
	movls	lr, #0
	andhi	lr, lr, #1
	cmp	lr, #0
	beq	.L158
	lsr	r9, r9, #5
	lsl	ip, r9, #4
	str	ip, [sp, #4]
	cmp	r9, #0
	beq	.L163
	cmp	r9, #2
	bls	.L206
	sub	lr, r9, #3
	mov	r7, r2
	bic	lr, lr, #1
	mov	r10, r3
	add	lr, lr, #2
	str	r3, [sp, #12]
	str	lr, [sp, #8]
	mov	lr, #0
.L164:
	mov	r8, r10
	mov	ip, r7
	pld	[r7, #112]
	add	lr, lr, #2
	vld2.8	{d16-d19}, [r8]!
	add	r3, r10, #64
	add	fp, r7, #32
	mov	r10, r3
	vst1.8	{q8}, [ip]!
	mov	r7, fp
	vld2.8	{d16-d19}, [r8]
	vst1.8	{q8}, [ip]
	ldr	ip, [sp, #8]
	cmp	lr, ip
	bne	.L164
	ldr	r3, [sp, #12]
	mov	r7, r10
.L166:
	add	lr, lr, #1
	vld2.8	{d16-d19}, [r7]!
	cmp	r9, lr
	vst1.8	{q8}, [fp]!
	bhi	.L166
	ldr	lr, [sp, #4]
	cmp	lr, r6
	add	r2, r2, lr
	add	r3, r3, lr, lsl #1
	it	ne
	addne	r7, r3, #2
	beq	.L157
.L163:
	ldrb	r6, [r3]	@ zero_extendqisi2
	cmp	r4, r7
	mov	r3, r7
	add	r7, r7, #2
	strb	r6, [r2], #1
	bhi	.L163
.L157:
	movs	r3, #8
	strb	r3, [r0, #11]
.L171:
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	movs	r2, #1
	strb	r2, [r0, #10]
	cmp	r3, #4
	itt	eq
	moveq	r3, #0
	strbeq	r3, [r0, #8]
	b	.L185
.L242:
	adds	r3, r1, #1
	mov	r2, r1
	b	.L156
.L240:
	adds	r2, r1, #2
	mov	r6, r1
	b	.L174
.L241:
	adds	r3, r1, #4
	adds	r6, r1, #3
	b	.L188
.L238:
	add	r7, r1, #8
	adds	r5, r1, #6
	b	.L201
.L158:
	sub	r8, r4, #62
	cmp	r7, r8
	ite	cs
	movcs	r6, #0
	movcc	r6, #1
	cmp	r4, #61
	it	ls
	movls	r6, #0
	cmp	r6, #0
	beq	.L170
	add	r6, r2, #32
	add	lr, r3, #64
.L168:
	ldrb	ip, [lr, #-64]	@ zero_extendqisi2
	mov	r3, lr
	pld	[lr, #4]
	adds	r7, r3, #2
	pld	[lr, #36]
	cmp	r8, r7
	strb	ip, [r6, #-32]
	mov	r2, r6
	ldrb	ip, [r3, #-62]	@ zero_extendqisi2
	add	lr, lr, #64
	pld	[r6, #2]
	add	r6, r6, #32
	strb	ip, [r6, #-63]
	ldrb	ip, [r3, #-60]	@ zero_extendqisi2
	strb	ip, [r6, #-62]
	ldrb	ip, [r3, #-58]	@ zero_extendqisi2
	strb	ip, [r6, #-61]
	ldrb	ip, [r3, #-56]	@ zero_extendqisi2
	strb	ip, [r6, #-60]
	ldrb	ip, [r3, #-54]	@ zero_extendqisi2
	strb	ip, [r6, #-59]
	ldrb	ip, [r3, #-52]	@ zero_extendqisi2
	strb	ip, [r6, #-58]
	ldrb	ip, [r3, #-50]	@ zero_extendqisi2
	strb	ip, [r6, #-57]
	ldrb	ip, [r3, #-48]	@ zero_extendqisi2
	strb	ip, [r6, #-56]
	ldrb	ip, [r3, #-46]	@ zero_extendqisi2
	strb	ip, [r6, #-55]
	ldrb	ip, [r3, #-44]	@ zero_extendqisi2
	strb	ip, [r6, #-54]
	ldrb	ip, [r3, #-42]	@ zero_extendqisi2
	strb	ip, [r6, #-53]
	ldrb	ip, [r3, #-40]	@ zero_extendqisi2
	strb	ip, [r6, #-52]
	ldrb	ip, [r3, #-38]	@ zero_extendqisi2
	strb	ip, [r6, #-51]
	ldrb	ip, [r3, #-36]	@ zero_extendqisi2
	strb	ip, [r6, #-50]
	ldrb	ip, [r3, #-34]	@ zero_extendqisi2
	strb	ip, [r6, #-49]
	ldrb	ip, [r3, #-32]	@ zero_extendqisi2
	strb	ip, [r6, #-48]
	ldrb	ip, [r3, #-30]	@ zero_extendqisi2
	strb	ip, [r6, #-47]
	ldrb	ip, [r3, #-28]	@ zero_extendqisi2
	strb	ip, [r6, #-46]
	ldrb	ip, [r3, #-26]	@ zero_extendqisi2
	strb	ip, [r6, #-45]
	ldrb	ip, [r3, #-24]	@ zero_extendqisi2
	strb	ip, [r6, #-44]
	ldrb	ip, [r3, #-22]	@ zero_extendqisi2
	strb	ip, [r6, #-43]
	ldrb	ip, [r3, #-20]	@ zero_extendqisi2
	strb	ip, [r6, #-42]
	ldrb	ip, [r3, #-18]	@ zero_extendqisi2
	strb	ip, [r6, #-41]
	ldrb	ip, [r3, #-16]	@ zero_extendqisi2
	strb	ip, [r6, #-40]
	ldrb	ip, [r3, #-14]	@ zero_extendqisi2
	strb	ip, [r6, #-39]
	ldrb	ip, [r3, #-12]	@ zero_extendqisi2
	strb	ip, [r6, #-38]
	ldrb	ip, [r3, #-10]	@ zero_extendqisi2
	strb	ip, [r6, #-37]
	ldrb	ip, [r3, #-8]	@ zero_extendqisi2
	strb	ip, [r6, #-36]
	ldrb	ip, [r3, #-6]	@ zero_extendqisi2
	strb	ip, [r6, #-35]
	ldrb	ip, [r3, #-4]	@ zero_extendqisi2
	strb	ip, [r6, #-34]
	ldrb	ip, [r3, #-2]	@ zero_extendqisi2
	strb	ip, [r6, #-33]
	bhi	.L168
.L170:
	ldrb	r6, [r3]	@ zero_extendqisi2
	cmp	r4, r7
	mov	r3, r7
	add	r7, r7, #2
	strb	r6, [r2], #1
	bhi	.L170
	b	.L157
.L176:
	adds	r6, r6, #2
.L184:
	ldrb	r7, [r2]	@ zero_extendqisi2
	cmp	r4, r3
	add	r6, r6, #2
	strb	r7, [r6, #-4]
	ldrb	r7, [r2, #1]	@ zero_extendqisi2
	mov	r2, r3
	add	r3, r3, #4
	strb	r7, [r6, #-3]
	bhi	.L184
	b	.L175
.L205:
	mov	r5, r2
	b	.L157
.L207:
	mov	r5, r6
	b	.L175
.L208:
	mov	r5, r6
	b	.L189
.L206:
	mov	fp, r2
	mov	r7, r3
	mov	lr, #0
	b	.L166
	.size	png_do_strip_channel, .-png_do_strip_channel
	.section	.text.png_do_bgr,"ax",%progbits
	.align	2
	.global	png_do_bgr
	.thumb
	.thumb_func
	.type	png_do_bgr, %function
png_do_bgr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	r3, [r0, #8]	@ zero_extendqisi2
	lsls	r2, r3, #30
	bpl	.L271
	push	{r4, r5, r6, r7}
	ldrb	r4, [r0, #9]	@ zero_extendqisi2
	ldr	r2, [r0]
	cmp	r4, #8
	beq	.L272
	cmp	r4, #16
	beq	.L273
.L243:
	pop	{r4, r5, r6, r7}
.L271:
	bx	lr
.L272:
	cmp	r3, #2
	beq	.L274
	cmp	r3, #6
	bne	.L243
	cmp	r2, #0
	beq	.L243
	adds	r1, r1, #4
	movs	r3, #0
.L249:
	ldrb	r4, [r1, #-4]	@ zero_extendqisi2
	adds	r3, r3, #1
	ldrb	r0, [r1, #-2]	@ zero_extendqisi2
	cmp	r3, r2
	add	r1, r1, #4
	strb	r4, [r1, #-6]
	strb	r0, [r1, #-8]
	bne	.L249
	b	.L243
.L273:
	cmp	r3, #2
	beq	.L275
	cmp	r3, #6
	bne	.L243
	cmp	r2, #0
	beq	.L243
	add	r0, r1, #8
	movs	r4, #0
	mov	r3, r0
.L252:
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	adds	r4, r4, #1
	ldrb	r7, [r3, #-8]	@ zero_extendqisi2
	cmp	r4, r2
	add	r3, r3, #8
	strb	r5, [r3, #-16]
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	strb	r7, [r1, #4]
	strb	r6, [r1, #5]
	strb	r5, [r1, #1]
	mov	r1, r0
	add	r0, r0, #8
	bne	.L252
	b	.L243
.L274:
	cmp	r2, #0
	beq	.L243
	add	r2, r2, r2, lsl #1
	adds	r3, r1, #3
	mov	r0, r3
	add	r2, r2, r1
.L248:
	ldrb	r4, [r0, #-3]	@ zero_extendqisi2
	cmp	r3, r2
	ldrb	r5, [r1, #2]	@ zero_extendqisi2
	add	r0, r0, #3
	strb	r5, [r0, #-6]
	strb	r4, [r1, #2]
	mov	r1, r3
	add	r3, r3, #3
	bne	.L248
	b	.L243
.L275:
	cmp	r2, #0
	beq	.L243
	adds	r0, r1, #6
	movs	r4, #0
	mov	r3, r0
.L251:
	ldrb	r5, [r1, #4]	@ zero_extendqisi2
	adds	r4, r4, #1
	ldrb	r7, [r3, #-6]	@ zero_extendqisi2
	cmp	r4, r2
	add	r3, r3, #6
	strb	r5, [r3, #-12]
	ldrb	r6, [r1, #1]	@ zero_extendqisi2
	ldrb	r5, [r1, #5]	@ zero_extendqisi2
	strb	r7, [r1, #4]
	strb	r6, [r1, #5]
	strb	r5, [r1, #1]
	mov	r1, r0
	add	r0, r0, #6
	bne	.L251
	b	.L243
	.size	png_do_bgr, .-png_do_bgr
	.section	.text.png_do_check_palette_indexes,"ax",%progbits
	.align	2
	.global	png_do_check_palette_indexes
	.thumb
	.thumb_func
	.type	png_do_check_palette_indexes, %function
png_do_check_palette_indexes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6}
	movs	r4, #1
	ldrb	r2, [r1, #9]	@ zero_extendqisi2
	ldrh	r3, [r0, #660]
	lsls	r4, r4, r2
	cmp	r3, r4
	bge	.L276
	cbz	r3, .L276
	ldrb	r3, [r1, #11]	@ zero_extendqisi2
	subs	r2, r2, #1
	ldr	r6, [r1]
	ldr	r4, [r1, #4]
	negs	r3, r3
	ldr	r5, [r0, #624]
	mul	r3, r6, r3
	add	r4, r4, r5
	and	r3, r3, #7
	cmp	r2, #7
	bhi	.L276
	tbb	[pc, r2]
.L281:
	.byte	(.L280-.L281)/2
	.byte	(.L282-.L281)/2
	.byte	(.L276-.L281)/2
	.byte	(.L283-.L281)/2
	.byte	(.L276-.L281)/2
	.byte	(.L276-.L281)/2
	.byte	(.L276-.L281)/2
	.byte	(.L284-.L281)/2
	.align	1
.L284:
	cmp	r5, r4
	bcs	.L276
	ldr	r2, [r0, #664]
	adds	r4, r4, #1
	adds	r5, r5, #1
.L299:
	ldrb	r3, [r4, #-1]!	@ zero_extendqisi2
	cmp	r3, r2
	itt	gt
	movgt	r2, r3
	strgt	r3, [r0, #664]
	cmp	r4, r5
	bne	.L299
.L276:
	pop	{r4, r5, r6}
	bx	lr
.L283:
	cmp	r5, r4
	it	cc
	ldrcc	r1, [r0, #664]
	bcs	.L276
.L297:
	ldrb	r2, [r4], #-1	@ zero_extendqisi2
	asrs	r2, r2, r3
	and	r6, r2, #15
	cmp	r6, r1
	itttt	gt
	strgt	r6, [r0, #664]
	movgt	r1, r6
	ldrbgt	r2, [r4, #1]	@ zero_extendqisi2
	asrgt	r2, r2, r3
	movs	r3, #0
	asrs	r2, r2, #4
	cmp	r2, r1
	itt	gt
	movgt	r1, r2
	strgt	r2, [r0, #664]
	cmp	r4, r5
	bne	.L297
	b	.L276
.L282:
	cmp	r5, r4
	it	cc
	ldrcc	r1, [r0, #664]
	bcs	.L276
.L294:
	ldrb	r2, [r4], #-1	@ zero_extendqisi2
	asrs	r2, r2, r3
	and	r6, r2, #3
	cmp	r6, r1
	itttt	gt
	strgt	r6, [r0, #664]
	movgt	r1, r6
	ldrbgt	r2, [r4, #1]	@ zero_extendqisi2
	asrgt	r2, r2, r3
	ubfx	r6, r2, #2, #2
	cmp	r6, r1
	itttt	gt
	strgt	r6, [r0, #664]
	movgt	r1, r6
	ldrbgt	r2, [r4, #1]	@ zero_extendqisi2
	asrgt	r2, r2, r3
	ubfx	r6, r2, #4, #2
	cmp	r6, r1
	itttt	gt
	strgt	r6, [r0, #664]
	movgt	r1, r6
	ldrbgt	r2, [r4, #1]	@ zero_extendqisi2
	asrgt	r2, r2, r3
	movs	r3, #0
	asrs	r2, r2, #6
	cmp	r2, r1
	itt	gt
	movgt	r1, r2
	strgt	r2, [r0, #664]
	cmp	r4, r5
	bne	.L294
	b	.L276
.L280:
	cmp	r5, r4
	bcs	.L276
	adds	r4, r4, #1
	adds	r5, r5, #1
	movs	r1, #1
.L289:
	ldrb	r2, [r4, #-1]!	@ zero_extendqisi2
	asrs	r2, r2, r3
	mov	r3, #0
	it	ne
	strne	r1, [r0, #664]
	cmp	r4, r5
	bne	.L289
	b	.L276
	.size	png_do_check_palette_indexes, .-png_do_check_palette_indexes
	.section	.text.png_set_user_transform_info,"ax",%progbits
	.align	2
	.global	png_set_user_transform_info
	.thumb
	.thumb_func
	.type	png_set_user_transform_info, %function
png_set_user_transform_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L325
	push	{r4, r5}
	mov	r4, r0
	ldr	r5, [r0, #448]
	lsls	r5, r5, #16
	bmi	.L326
.L313:
	str	r1, [r4, #440]
	strb	r2, [r4, #444]
	strb	r3, [r4, #445]
	pop	{r4, r5}
.L325:
	bx	lr
.L326:
	ldr	r5, [r0, #452]
	lsls	r5, r5, #25
	bpl	.L313
	ldr	r1, .L327
	pop	{r4, r5}
.LPIC21:
	add	r1, pc
	b	png_app_error(PLT)
.L328:
	.align	2
.L327:
	.word	.LC2-(.LPIC21+4)
	.size	png_set_user_transform_info, .-png_set_user_transform_info
	.section	.text.png_get_user_transform_ptr,"ax",%progbits
	.align	2
	.global	png_get_user_transform_ptr
	.thumb
	.thumb_func
	.type	png_get_user_transform_ptr, %function
png_get_user_transform_ptr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L330
	ldr	r0, [r0, #440]
.L330:
	bx	lr
	.size	png_get_user_transform_ptr, .-png_get_user_transform_ptr
	.section	.text.png_get_current_row_number,"ax",%progbits
	.align	2
	.global	png_get_current_row_number
	.thumb
	.thumb_func
	.type	png_get_current_row_number, %function
png_get_current_row_number:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L334
	ldr	r0, [r0, #612]
	bx	lr
.L334:
	mov	r0, #-1
	bx	lr
	.size	png_get_current_row_number, .-png_get_current_row_number
	.section	.text.png_get_current_pass_number,"ax",%progbits
	.align	2
	.global	png_get_current_pass_number
	.thumb
	.thumb_func
	.type	png_get_current_pass_number, %function
png_get_current_pass_number:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L337
	ldrb	r0, [r0, #673]	@ zero_extendqisi2
	bx	lr
.L337:
	movs	r0, #8
	bx	lr
	.size	png_get_current_pass_number, .-png_get_current_pass_number
	.section	.rodata.twobppswaptable,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	twobppswaptable, %object
	.size	twobppswaptable, 256
twobppswaptable:
	.byte	0
	.byte	64
	.byte	-128
	.byte	-64
	.byte	16
	.byte	80
	.byte	-112
	.byte	-48
	.byte	32
	.byte	96
	.byte	-96
	.byte	-32
	.byte	48
	.byte	112
	.byte	-80
	.byte	-16
	.byte	4
	.byte	68
	.byte	-124
	.byte	-60
	.byte	20
	.byte	84
	.byte	-108
	.byte	-44
	.byte	36
	.byte	100
	.byte	-92
	.byte	-28
	.byte	52
	.byte	116
	.byte	-76
	.byte	-12
	.byte	8
	.byte	72
	.byte	-120
	.byte	-56
	.byte	24
	.byte	88
	.byte	-104
	.byte	-40
	.byte	40
	.byte	104
	.byte	-88
	.byte	-24
	.byte	56
	.byte	120
	.byte	-72
	.byte	-8
	.byte	12
	.byte	76
	.byte	-116
	.byte	-52
	.byte	28
	.byte	92
	.byte	-100
	.byte	-36
	.byte	44
	.byte	108
	.byte	-84
	.byte	-20
	.byte	60
	.byte	124
	.byte	-68
	.byte	-4
	.byte	1
	.byte	65
	.byte	-127
	.byte	-63
	.byte	17
	.byte	81
	.byte	-111
	.byte	-47
	.byte	33
	.byte	97
	.byte	-95
	.byte	-31
	.byte	49
	.byte	113
	.byte	-79
	.byte	-15
	.byte	5
	.byte	69
	.byte	-123
	.byte	-59
	.byte	21
	.byte	85
	.byte	-107
	.byte	-43
	.byte	37
	.byte	101
	.byte	-91
	.byte	-27
	.byte	53
	.byte	117
	.byte	-75
	.byte	-11
	.byte	9
	.byte	73
	.byte	-119
	.byte	-55
	.byte	25
	.byte	89
	.byte	-103
	.byte	-39
	.byte	41
	.byte	105
	.byte	-87
	.byte	-23
	.byte	57
	.byte	121
	.byte	-71
	.byte	-7
	.byte	13
	.byte	77
	.byte	-115
	.byte	-51
	.byte	29
	.byte	93
	.byte	-99
	.byte	-35
	.byte	45
	.byte	109
	.byte	-83
	.byte	-19
	.byte	61
	.byte	125
	.byte	-67
	.byte	-3
	.byte	2
	.byte	66
	.byte	-126
	.byte	-62
	.byte	18
	.byte	82
	.byte	-110
	.byte	-46
	.byte	34
	.byte	98
	.byte	-94
	.byte	-30
	.byte	50
	.byte	114
	.byte	-78
	.byte	-14
	.byte	6
	.byte	70
	.byte	-122
	.byte	-58
	.byte	22
	.byte	86
	.byte	-106
	.byte	-42
	.byte	38
	.byte	102
	.byte	-90
	.byte	-26
	.byte	54
	.byte	118
	.byte	-74
	.byte	-10
	.byte	10
	.byte	74
	.byte	-118
	.byte	-54
	.byte	26
	.byte	90
	.byte	-102
	.byte	-38
	.byte	42
	.byte	106
	.byte	-86
	.byte	-22
	.byte	58
	.byte	122
	.byte	-70
	.byte	-6
	.byte	14
	.byte	78
	.byte	-114
	.byte	-50
	.byte	30
	.byte	94
	.byte	-98
	.byte	-34
	.byte	46
	.byte	110
	.byte	-82
	.byte	-18
	.byte	62
	.byte	126
	.byte	-66
	.byte	-2
	.byte	3
	.byte	67
	.byte	-125
	.byte	-61
	.byte	19
	.byte	83
	.byte	-109
	.byte	-45
	.byte	35
	.byte	99
	.byte	-93
	.byte	-29
	.byte	51
	.byte	115
	.byte	-77
	.byte	-13
	.byte	7
	.byte	71
	.byte	-121
	.byte	-57
	.byte	23
	.byte	87
	.byte	-105
	.byte	-41
	.byte	39
	.byte	103
	.byte	-89
	.byte	-25
	.byte	55
	.byte	119
	.byte	-73
	.byte	-9
	.byte	11
	.byte	75
	.byte	-117
	.byte	-53
	.byte	27
	.byte	91
	.byte	-101
	.byte	-37
	.byte	43
	.byte	107
	.byte	-85
	.byte	-21
	.byte	59
	.byte	123
	.byte	-69
	.byte	-5
	.byte	15
	.byte	79
	.byte	-113
	.byte	-49
	.byte	31
	.byte	95
	.byte	-97
	.byte	-33
	.byte	47
	.byte	111
	.byte	-81
	.byte	-17
	.byte	63
	.byte	127
	.byte	-65
	.byte	-1
	.section	.rodata.onebppswaptable,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	onebppswaptable, %object
	.size	onebppswaptable, 256
onebppswaptable:
	.byte	0
	.byte	-128
	.byte	64
	.byte	-64
	.byte	32
	.byte	-96
	.byte	96
	.byte	-32
	.byte	16
	.byte	-112
	.byte	80
	.byte	-48
	.byte	48
	.byte	-80
	.byte	112
	.byte	-16
	.byte	8
	.byte	-120
	.byte	72
	.byte	-56
	.byte	40
	.byte	-88
	.byte	104
	.byte	-24
	.byte	24
	.byte	-104
	.byte	88
	.byte	-40
	.byte	56
	.byte	-72
	.byte	120
	.byte	-8
	.byte	4
	.byte	-124
	.byte	68
	.byte	-60
	.byte	36
	.byte	-92
	.byte	100
	.byte	-28
	.byte	20
	.byte	-108
	.byte	84
	.byte	-44
	.byte	52
	.byte	-76
	.byte	116
	.byte	-12
	.byte	12
	.byte	-116
	.byte	76
	.byte	-52
	.byte	44
	.byte	-84
	.byte	108
	.byte	-20
	.byte	28
	.byte	-100
	.byte	92
	.byte	-36
	.byte	60
	.byte	-68
	.byte	124
	.byte	-4
	.byte	2
	.byte	-126
	.byte	66
	.byte	-62
	.byte	34
	.byte	-94
	.byte	98
	.byte	-30
	.byte	18
	.byte	-110
	.byte	82
	.byte	-46
	.byte	50
	.byte	-78
	.byte	114
	.byte	-14
	.byte	10
	.byte	-118
	.byte	74
	.byte	-54
	.byte	42
	.byte	-86
	.byte	106
	.byte	-22
	.byte	26
	.byte	-102
	.byte	90
	.byte	-38
	.byte	58
	.byte	-70
	.byte	122
	.byte	-6
	.byte	6
	.byte	-122
	.byte	70
	.byte	-58
	.byte	38
	.byte	-90
	.byte	102
	.byte	-26
	.byte	22
	.byte	-106
	.byte	86
	.byte	-42
	.byte	54
	.byte	-74
	.byte	118
	.byte	-10
	.byte	14
	.byte	-114
	.byte	78
	.byte	-50
	.byte	46
	.byte	-82
	.byte	110
	.byte	-18
	.byte	30
	.byte	-98
	.byte	94
	.byte	-34
	.byte	62
	.byte	-66
	.byte	126
	.byte	-2
	.byte	1
	.byte	-127
	.byte	65
	.byte	-63
	.byte	33
	.byte	-95
	.byte	97
	.byte	-31
	.byte	17
	.byte	-111
	.byte	81
	.byte	-47
	.byte	49
	.byte	-79
	.byte	113
	.byte	-15
	.byte	9
	.byte	-119
	.byte	73
	.byte	-55
	.byte	41
	.byte	-87
	.byte	105
	.byte	-23
	.byte	25
	.byte	-103
	.byte	89
	.byte	-39
	.byte	57
	.byte	-71
	.byte	121
	.byte	-7
	.byte	5
	.byte	-123
	.byte	69
	.byte	-59
	.byte	37
	.byte	-91
	.byte	101
	.byte	-27
	.byte	21
	.byte	-107
	.byte	85
	.byte	-43
	.byte	53
	.byte	-75
	.byte	117
	.byte	-11
	.byte	13
	.byte	-115
	.byte	77
	.byte	-51
	.byte	45
	.byte	-83
	.byte	109
	.byte	-19
	.byte	29
	.byte	-99
	.byte	93
	.byte	-35
	.byte	61
	.byte	-67
	.byte	125
	.byte	-3
	.byte	3
	.byte	-125
	.byte	67
	.byte	-61
	.byte	35
	.byte	-93
	.byte	99
	.byte	-29
	.byte	19
	.byte	-109
	.byte	83
	.byte	-45
	.byte	51
	.byte	-77
	.byte	115
	.byte	-13
	.byte	11
	.byte	-117
	.byte	75
	.byte	-53
	.byte	43
	.byte	-85
	.byte	107
	.byte	-21
	.byte	27
	.byte	-101
	.byte	91
	.byte	-37
	.byte	59
	.byte	-69
	.byte	123
	.byte	-5
	.byte	7
	.byte	-121
	.byte	71
	.byte	-57
	.byte	39
	.byte	-89
	.byte	103
	.byte	-25
	.byte	23
	.byte	-105
	.byte	87
	.byte	-41
	.byte	55
	.byte	-73
	.byte	119
	.byte	-9
	.byte	15
	.byte	-113
	.byte	79
	.byte	-49
	.byte	47
	.byte	-81
	.byte	111
	.byte	-17
	.byte	31
	.byte	-97
	.byte	95
	.byte	-33
	.byte	63
	.byte	-65
	.byte	127
	.byte	-1
	.section	.rodata.fourbppswaptable,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	fourbppswaptable, %object
	.size	fourbppswaptable, 256
fourbppswaptable:
	.byte	0
	.byte	16
	.byte	32
	.byte	48
	.byte	64
	.byte	80
	.byte	96
	.byte	112
	.byte	-128
	.byte	-112
	.byte	-96
	.byte	-80
	.byte	-64
	.byte	-48
	.byte	-32
	.byte	-16
	.byte	1
	.byte	17
	.byte	33
	.byte	49
	.byte	65
	.byte	81
	.byte	97
	.byte	113
	.byte	-127
	.byte	-111
	.byte	-95
	.byte	-79
	.byte	-63
	.byte	-47
	.byte	-31
	.byte	-15
	.byte	2
	.byte	18
	.byte	34
	.byte	50
	.byte	66
	.byte	82
	.byte	98
	.byte	114
	.byte	-126
	.byte	-110
	.byte	-94
	.byte	-78
	.byte	-62
	.byte	-46
	.byte	-30
	.byte	-14
	.byte	3
	.byte	19
	.byte	35
	.byte	51
	.byte	67
	.byte	83
	.byte	99
	.byte	115
	.byte	-125
	.byte	-109
	.byte	-93
	.byte	-77
	.byte	-61
	.byte	-45
	.byte	-29
	.byte	-13
	.byte	4
	.byte	20
	.byte	36
	.byte	52
	.byte	68
	.byte	84
	.byte	100
	.byte	116
	.byte	-124
	.byte	-108
	.byte	-92
	.byte	-76
	.byte	-60
	.byte	-44
	.byte	-28
	.byte	-12
	.byte	5
	.byte	21
	.byte	37
	.byte	53
	.byte	69
	.byte	85
	.byte	101
	.byte	117
	.byte	-123
	.byte	-107
	.byte	-91
	.byte	-75
	.byte	-59
	.byte	-43
	.byte	-27
	.byte	-11
	.byte	6
	.byte	22
	.byte	38
	.byte	54
	.byte	70
	.byte	86
	.byte	102
	.byte	118
	.byte	-122
	.byte	-106
	.byte	-90
	.byte	-74
	.byte	-58
	.byte	-42
	.byte	-26
	.byte	-10
	.byte	7
	.byte	23
	.byte	39
	.byte	55
	.byte	71
	.byte	87
	.byte	103
	.byte	119
	.byte	-121
	.byte	-105
	.byte	-89
	.byte	-73
	.byte	-57
	.byte	-41
	.byte	-25
	.byte	-9
	.byte	8
	.byte	24
	.byte	40
	.byte	56
	.byte	72
	.byte	88
	.byte	104
	.byte	120
	.byte	-120
	.byte	-104
	.byte	-88
	.byte	-72
	.byte	-56
	.byte	-40
	.byte	-24
	.byte	-8
	.byte	9
	.byte	25
	.byte	41
	.byte	57
	.byte	73
	.byte	89
	.byte	105
	.byte	121
	.byte	-119
	.byte	-103
	.byte	-87
	.byte	-71
	.byte	-55
	.byte	-39
	.byte	-23
	.byte	-7
	.byte	10
	.byte	26
	.byte	42
	.byte	58
	.byte	74
	.byte	90
	.byte	106
	.byte	122
	.byte	-118
	.byte	-102
	.byte	-86
	.byte	-70
	.byte	-54
	.byte	-38
	.byte	-22
	.byte	-6
	.byte	11
	.byte	27
	.byte	43
	.byte	59
	.byte	75
	.byte	91
	.byte	107
	.byte	123
	.byte	-117
	.byte	-101
	.byte	-85
	.byte	-69
	.byte	-53
	.byte	-37
	.byte	-21
	.byte	-5
	.byte	12
	.byte	28
	.byte	44
	.byte	60
	.byte	76
	.byte	92
	.byte	108
	.byte	124
	.byte	-116
	.byte	-100
	.byte	-84
	.byte	-68
	.byte	-52
	.byte	-36
	.byte	-20
	.byte	-4
	.byte	13
	.byte	29
	.byte	45
	.byte	61
	.byte	77
	.byte	93
	.byte	109
	.byte	125
	.byte	-115
	.byte	-99
	.byte	-83
	.byte	-67
	.byte	-51
	.byte	-35
	.byte	-19
	.byte	-3
	.byte	14
	.byte	30
	.byte	46
	.byte	62
	.byte	78
	.byte	94
	.byte	110
	.byte	126
	.byte	-114
	.byte	-98
	.byte	-82
	.byte	-66
	.byte	-50
	.byte	-34
	.byte	-18
	.byte	-2
	.byte	15
	.byte	31
	.byte	47
	.byte	63
	.byte	79
	.byte	95
	.byte	111
	.byte	127
	.byte	-113
	.byte	-97
	.byte	-81
	.byte	-65
	.byte	-49
	.byte	-33
	.byte	-17
	.byte	-1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"png_set_filler is invalid for low bit depth gray ou"
	.ascii	"tput\000"
.LC1:
	.ascii	"png_set_filler: inappropriate color type\000"
	.space	3
.LC2:
	.ascii	"info change after png_start_read_image or png_read_"
	.ascii	"update_info\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
