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
	.file	"png.c"
	.section	.text._libaroma_png_reader,"ax",%progbits
	.align	2
	.global	_libaroma_png_reader
	.thumb
	.thumb_func
	.type	_libaroma_png_reader, %function
_libaroma_png_reader:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r2
	mov	r7, r1
	bl	png_get_io_ptr(PLT)
	ldr	r3, [r0, #8]
	mov	r5, r0
	ldr	r2, [r0, #4]
	adds	r6, r3, r4
	cmp	r6, r2
	it	ge
	subge	r4, r2, r3
	cbz	r4, .L1
	ldr	r1, [r0]
	mov	r2, r4
	mov	r0, r7
	add	r1, r1, r3
	bl	memcpy(PLT)
	ldr	r3, [r5, #8]
	add	r4, r4, r3
	str	r4, [r5, #8]
.L1:
	pop	{r3, r4, r5, r6, r7, pc}
	.size	_libaroma_png_reader, .-_libaroma_png_reader
	.section	.text.libaroma_png_ex,"ax",%progbits
	.align	2
	.global	libaroma_png_ex
	.thumb
	.thumb_func
	.type	libaroma_png_ex, %function
libaroma_png_ex:
	@ args = 0, pretend = 0, frame = 216
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #228
	str	r0, [sp, #12]
	str	r1, [sp, #20]
	ldr	r0, .L108
	ldr	r1, [sp, #12]
	str	r2, [sp, #24]
.LPIC25:
	add	r0, pc
	str	r0, [sp, #16]
	cmp	r1, #0
	beq	.L13
	movs	r0, #12
	bl	malloc(PLT)
	str	r0, [sp, #8]
	cbz	r0, .L100
	ldr	r3, [sp, #12]
	mov	r6, r0
	ldr	r4, [sp, #12]
	movs	r5, #8
	mov	r2, r5
	ldr	r0, [r3]
	movs	r3, #0
	ldr	r1, [r4, #4]
	add	r4, sp, #216
	str	r3, [r6, #8]
	str	r0, [r6]
	str	r1, [r6, #4]
	str	r3, [sp, #200]
	ldr	r1, [r0, #4]	@ unaligned
	str	r3, [sp, #208]
	ldr	r0, [r0]	@ unaligned
	str	r5, [r6, #8]
	str	r3, [sp, #212]
	stmia	r4!, {r0, r1}
	mov	r1, r3
	add	r0, sp, #216
	bl	png_sig_cmp(PLT)
	cbz	r0, .L101
.L15:
	add	r1, sp, #208
	add	r0, sp, #200
	movs	r2, #0
	bl	png_destroy_read_struct(PLT)
	ldr	r1, [sp, #20]
	cbnz	r1, .L102
.L85:
	ldr	r0, [sp, #8]
	bl	free(PLT)
	ldr	r0, [sp, #212]
.L11:
	add	sp, sp, #228
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L100:
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.L103
.L13:
	movs	r0, #0
	add	sp, sp, #228
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L102:
	ldr	r0, [sp, #12]
	bl	libaroma_stream_close(PLT)
	b	.L85
.L101:
	mov	r1, r0
	ldr	r0, .L108+4
	mov	r2, r1
	mov	r3, r1
.LPIC24:
	add	r0, pc
	bl	png_create_read_struct(PLT)
	str	r0, [sp, #200]
	cmp	r0, #0
	beq	.L15
	bl	png_create_info_struct(PLT)
	str	r0, [sp, #208]
	cmp	r0, #0
	beq	.L15
	ldr	r3, .L108+8
	mov	r2, #392
	ldr	r7, [sp, #16]
	ldr	r0, [sp, #200]
	ldr	r1, [r7, r3]
	bl	png_set_longjmp_fn(PLT)
	bl	_setjmp(PLT)
	cmp	r0, #0
	bne	.L15
	ldr	r3, .L108+12
	ldr	lr, [sp, #16]
	ldr	r1, [sp, #8]
	ldr	r0, [sp, #200]
	ldr	r2, [lr, r3]
	bl	png_set_read_fn(PLT)
	ldr	r0, [sp, #200]
	movs	r1, #8
	bl	png_set_sig_bytes(PLT)
	ldr	r0, [sp, #200]
	ldr	r1, [sp, #208]
	bl	png_read_info(PLT)
	ldr	r1, [sp, #208]
	ldr	r0, [sp, #200]
	bl	png_get_bit_depth(PLT)
	ldr	r1, [sp, #208]
	mov	r5, r0
	ldr	r0, [sp, #200]
	bl	png_get_color_type(PLT)
	ldr	r1, [sp, #208]
	mov	r4, r0
	ldr	r0, [sp, #200]
	bl	png_get_channels(PLT)
	tst	r4, #251
	beq	.L104
	cmp	r4, #3
	beq	.L105
	cmp	r5, #8
	bne	.L15
	cmp	r0, #3
	it	eq
	cmpeq	r4, #2
	beq	.L18
	cmp	r0, #4
	it	eq
	cmpeq	r4, #6
	bne	.L15
.L18:
	ldr	r1, [sp, #208]
	movs	r6, #0
	ldr	r0, [sp, #200]
	bl	png_get_image_width(PLT)
	ldr	r1, [sp, #208]
	mov	r9, r0
	ldr	r0, [sp, #200]
	bl	png_get_image_height(PLT)
	ldr	r1, [sp, #208]
	str	r0, [sp, #28]
	ldr	r0, [sp, #200]
	bl	png_get_channels(PLT)
	mov	r4, r0
	ldr	r3, [sp, #24]
	sub	r5, r4, #4
	clz	r5, r5
	lsrs	r5, r5, #5
	mov	r0, r9
	ldr	r1, [sp, #28]
	mov	r2, r5
	str	r6, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #212]
	ldr	r3, [sp, #212]
	cmp	r3, #0
	beq	.L15
	ldr	r0, [sp, #200]
	cmp	r5, #0
	bne	.L106
	ldr	r1, [sp, #208]
	bl	png_get_rowbytes(PLT)
	cmp	r4, #3
	bne	.L15
	bl	malloc(PLT)
	ldr	r6, [sp, #24]
	mov	r4, r0
	cmp	r6, #0
	bne	.L66
	ldr	r6, [sp, #28]
	cmp	r6, #0
	ble	.L68
	ldr	r5, [sp, #24]
	mov	r8, r6
	mov	r7, r5
.L84:
	ldr	r3, [sp, #212]
	mov	r1, r4
	ldr	r6, [sp, #212]
	mov	r2, r7
	ldr	r0, [sp, #200]
	ldr	r3, [r3, #16]
	ldr	r6, [r6, #8]
	mul	r6, r6, r5
	add	r6, r3, r6, lsl #1
	bl	png_read_row(PLT)
	mov	r0, r5
	mov	r1, r9
	mov	r2, r6
	mov	r3, r4
	adds	r5, r5, #1
	bl	libaroma_dither_24to16(PLT)
	cmp	r8, r5
	bne	.L84
.L68:
	mov	r0, r4
	bl	free(PLT)
	b	.L15
.L103:
	ldr	r0, [sp, #12]
	bl	libaroma_stream_close(PLT)
	ldr	r0, [sp, #8]
	b	.L11
.L104:
	ldr	r0, [sp, #200]
	bl	png_set_gray_to_rgb(PLT)
	ldr	r0, [sp, #200]
	ldr	r1, [sp, #208]
	bl	png_read_update_info(PLT)
	b	.L18
.L105:
	ldr	r0, [sp, #200]
	bl	png_set_palette_to_rgb(PLT)
	ldr	r0, [sp, #200]
	ldr	r1, [sp, #208]
	bl	png_read_update_info(PLT)
	b	.L18
.L106:
	bl	png_set_bgr(PLT)
	ldr	r1, [sp, #208]
	ldr	r0, [sp, #200]
	bl	png_get_rowbytes(PLT)
	bl	malloc(PLT)
	mov	r10, r0
	ldr	r0, [sp, #24]
	cmp	r0, #0
	beq	.L107
	ldr	r4, [sp, #28]
	cmp	r4, #0
	ble	.L25
	lsl	fp, r9, #2
	mov	r9, r6
	vmov.i32	q4, #3  @ v4si
	add	r3, fp, #-1
	lsrs	r3, r3, #2
	adds	r3, r3, #1
	lsrs	r6, r3, #4
	add	r7, r10, r3, lsl #2
	str	r3, [sp, #40]
	lsls	r3, r3, #1
	str	r6, [sp, #92]
	lsls	r4, r6, #4
	str	r3, [sp, #104]
	subs	r3, r6, #3
	bic	r3, r3, #1
	str	r7, [sp, #32]
	adds	r3, r3, #2
	ldr	r7, [sp, #92]
	str	r3, [sp, #120]
	lsls	r6, r6, #6
	ldr	r3, [sp, #40]
	str	r4, [sp, #44]
	lsls	r7, r7, #5
	str	r6, [sp, #184]
	cmp	r3, #15
	ite	ls
	movls	r3, #0
	movhi	r3, #1
	str	r7, [sp, #172]
	str	r3, [sp, #108]
.L40:
	ldr	r3, [sp, #212]
	mov	r1, r10
	ldr	r5, [sp, #212]
	movs	r2, #0
	ldr	r4, [sp, #212]
	ldr	r3, [r3, #8]
	ldr	r0, [sp, #212]
	ldr	r6, [r5, #16]
	ldr	r5, [r4, #20]
	mul	r3, r3, r9
	ldr	r4, [r0, #24]
	ldr	r0, [sp, #200]
	add	r6, r6, r3, lsl #1
	add	r5, r5, r3
	add	r4, r4, r3
	bl	png_read_row(PLT)
	cmp	fp, #0
	ble	.L34
	ldr	r3, [sp, #40]
	add	r0, r4, #16
	ldr	r7, [sp, #32]
	add	r2, r5, #16
	ldr	lr, [sp, #32]
	add	r3, r3, r5
	cmp	r5, r7
	it	cc
	cmpcc	r10, r3
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	cmp	r4, r2
	it	cc
	cmpcc	r5, r0
	ldr	r2, [sp, #40]
	ite	cs
	movcs	r7, #1
	movcc	r7, #0
	ands	r7, r7, r1
	ldr	r1, [sp, #108]
	add	r2, r2, r4
	cmp	r4, lr
	it	cc
	cmpcc	r10, r2
	and	r7, r7, r1
	ldr	r1, [sp, #104]
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	ands	r0, r0, r7
	add	r1, r1, r6
	cmp	r6, r3
	it	cc
	cmpcc	r5, r1
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	cmp	r6, r2
	it	cc
	cmpcc	r4, r1
	and	r0, r0, r3
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	cmp	r6, lr
	it	cc
	cmpcc	r10, r1
	and	r3, r3, r0
	ite	cs
	movcs	r1, #1
	movcc	r1, #0
	tst	r3, r1
	beq	.L28
	ldr	r3, [sp, #44]
	cmp	r3, #0
	beq	.L86
	ldr	r7, [sp, #92]
	mov	ip, r5
	mov	r0, r4
	mov	r3, r6
	mov	r2, r10
	movs	r1, #0
	cmp	r7, #2
	bls	.L30
	mov	lr, r5
	str	r10, [sp, #144]
	str	r9, [sp, #148]
.L35:
	mov	r9, r2
	vmov.i8	q3, #248  @ v16qi
	vmov.i8	q12, #252  @ v16qi
	mov	r7, r0
	vld4.8	{d16, d18, d20, d22}, [r9]!
	add	ip, r2, #64
	add	r10, r3, #16
	add	r8, r0, #32
	mov	r0, lr
	add	lr, lr, #32
	pld	[r3, #80]
	adds	r1, r1, #2
	pld	[r3, #112]
	vld4.8	{d17, d19, d21, d23}, [r9]
	add	r9, r2, #96
	pld	[r8]
	adds	r2, r2, #128
	pld	[lr]
	str	r2, [sp, #60]
	add	r2, r3, #48
	vand	q2, q3, q10
	vand	q13, q12, q9
	vmovl.u8 q12, d20
	vmovl.u8 q14, d4
	vmovl.u8 q3, d21
	vmovl.u16 q7, d24
	vmovl.u16 q0, d28
	vmovl.u16 q1, d29
	vmovl.u16 q6, d25
	vmovl.u8 q2, d5
	vsub.i32	q7, q7, q0
	vsub.i32	q6, q6, q1
	vmovl.u8 q15, d26
	vmovl.u8 q14, d18
	vmovl.u16 q0, d6
	vmovl.u16 q1, d4
	vshl.i32	q7, q7, #5
	vmovl.u16 q2, d5
	vshl.i32	q6, q6, #5
	vmovl.u16 q3, d7
	vmovl.u8 q12, d19
	vmovn.i32	d10, q7
	vmovn.i32	d11, q6
	vmovl.u8 q13, d27
	vsub.i32	q7, q3, q2
	vmovl.u16 q2, d28
	vmovl.u16 q3, d30
	vmovl.u16 q14, d29
	vmovl.u16 q15, d31
	vmovl.u16 q6, d24
	vmovl.u16 q12, d25
	vsub.i32	q14, q14, q15
	vmovl.u16 q15, d26
	vmovl.u16 q13, d27
	vsub.i32	q1, q0, q1
	vsub.i32	q3, q2, q3
	vsub.i32	q0, q12, q13
	vmov.i8	q12, #248  @ v16qi
	vand	q3, q3, q4
	vand	q2, q12, q8
	vand	q12, q14, q4
	vsub.i32	q6, q6, q15
	vshl.i32	q14, q7, #5
	vshl.i32	q1, q1, #5
	vshl.i32	q3, q3, #3
	vshl.i32	q12, q12, #3
	vand	q6, q6, q4
	vmovn.i32	d26, q1
	vmovn.i32	d27, q14
	vand	q0, q0, q4
	vmovn.i16	d2, q5
	vmovn.i16	d3, q13
	vshr.u8	q14, q10, #3
	vmovn.i32	d30, q3
	vmovn.i32	d31, q12
	vsub.i8	q2, q8, q2
	vmov.i8	q3, #7  @ v16qi
	vshl.i32	q6, q6, #3
	vshl.i32	q0, q0, #3
	vshr.u8	q13, q9, #2
	vshr.u8	q12, q8, #3
	vand	q2, q2, q3
	vmovl.u8 q5, d29
	vmovl.u8 q3, d28
	vmovn.i32	d28, q6
	vmovn.i32	d29, q0
	vorr	q1, q1, q2
	vmovn.i16	d4, q15
	vmovn.i16	d5, q14
	vshll.u8 q0, d26, #5
	vshll.u8 q15, d27, #5
	vmovl.u8 q14, d24
	vmovl.u8 q12, d25
	vshl.i16	q3, q3, #11
	vorr	q15, q12, q15
	vshl.i16	q13, q5, #11
	vorr	q14, q14, q0
	vorr	q12, q1, q2
	vorr	q14, q14, q3
	vmov.i8	q3, #252  @ v16qi
	vorr	q13, q15, q13
	vst1.16	{q14}, [r3]
	vst1.16	{q13}, [r10]
	vst1.8	{q12}, [r7]!
	vmov.i8	q12, #248  @ v16qi
	vst1.8	{q11}, [r0]!
	vld4.8	{d16, d18, d20, d22}, [ip]
	add	ip, r3, #32
	adds	r3, r3, #64
	vld4.8	{d17, d19, d21, d23}, [r9]
	vand	q2, q12, q10
	vmovl.u8 q12, d20
	vand	q13, q3, q9
	vmovl.u8 q14, d4
	vmovl.u16 q7, d24
	vmovl.u16 q6, d25
	vmovl.u16 q0, d28
	vmovl.u16 q1, d29
	vmovl.u8 q2, d5
	vmovl.u8 q3, d21
	vsub.i32	q7, q7, q0
	vsub.i32	q6, q6, q1
	vmovl.u8 q15, d26
	vmovl.u16 q0, d6
	vmovl.u8 q14, d18
	vmovl.u16 q1, d4
	vshl.i32	q7, q7, #5
	vmovl.u16 q2, d5
	vshl.i32	q6, q6, #5
	vmovl.u16 q3, d7
	vmovl.u8 q13, d27
	vmovn.i32	d10, q7
	vmovn.i32	d11, q6
	vmovl.u8 q12, d19
	vsub.i32	q7, q3, q2
	vmovl.u16 q2, d28
	vmovl.u16 q3, d30
	vmovl.u16 q14, d29
	vmovl.u16 q15, d31
	vmovl.u16 q6, d24
	vmovl.u16 q12, d25
	vsub.i32	q14, q14, q15
	vmovl.u16 q15, d26
	vmovl.u16 q13, d27
	vsub.i32	q1, q0, q1
	vsub.i32	q3, q2, q3
	vsub.i32	q0, q12, q13
	vmov.i8	q12, #248  @ v16qi
	vand	q3, q3, q4
	vand	q2, q12, q8
	vand	q12, q14, q4
	vsub.i32	q6, q6, q15
	vshl.i32	q1, q1, #5
	vshl.i32	q14, q7, #5
	vshl.i32	q3, q3, #3
	vshl.i32	q12, q12, #3
	vand	q6, q6, q4
	vmovn.i32	d26, q1
	vmovn.i32	d27, q14
	vand	q0, q0, q4
	vmovn.i16	d2, q5
	vmovn.i16	d3, q13
	vmovn.i32	d30, q3
	vmovn.i32	d31, q12
	vshr.u8	q14, q10, #3
	vmov.i8	q3, #7  @ v16qi
	vsub.i8	q2, q8, q2
	vshl.i32	q0, q0, #3
	vshl.i32	q6, q6, #3
	vshr.u8	q13, q9, #2
	vshr.u8	q12, q8, #3
	vand	q2, q2, q3
	vmovl.u8 q5, d29
	vmovl.u8 q3, d28
	vmovn.i32	d28, q6
	vmovn.i32	d29, q0
	vorr	q1, q1, q2
	vmovn.i16	d4, q15
	vmovn.i16	d5, q14
	vshll.u8 q0, d26, #5
	vshll.u8 q15, d27, #5
	vmovl.u8 q14, d24
	vmovl.u8 q12, d25
	vshl.i16	q3, q3, #11
	vorr	q15, q12, q15
	vshl.i16	q13, q5, #11
	vorr	q14, q14, q0
	vorr	q12, q1, q2
	vorr	q14, q14, q3
	vorr	q13, q15, q13
	vst1.16	{q14}, [ip]
	vst1.16	{q13}, [r2]
	vst1.8	{q12}, [r7]
	ldr	r7, [sp, #120]
	vst1.8	{q11}, [r0]
	cmp	r1, r7
	bne	.L31
	ldr	r10, [sp, #144]
	mov	ip, lr
	ldr	r9, [sp, #148]
	mov	r0, r8
	ldr	r2, [sp, #60]
.L30:
	mov	lr, r0
.L37:
	mov	r7, r2
	vmov.i8	q3, #248  @ v16qi
	vmov.i8	q12, #252  @ v16qi
	adds	r1, r1, #1
	vld4.8	{d16, d18, d20, d22}, [r7]!
	mov	r0, r3
	adds	r2, r2, #64
	adds	r3, r3, #32
	vld4.8	{d17, d19, d21, d23}, [r7]
	ldr	r7, [sp, #92]
	vand	q2, q3, q10
	cmp	r7, r1
	vand	q13, q12, q9
	vmovl.u8 q12, d20
	vmovl.u8 q14, d4
	vmovl.u8 q3, d21
	vmovl.u16 q7, d24
	vmovl.u16 q0, d28
	vmovl.u16 q1, d29
	vmovl.u16 q6, d25
	vmovl.u8 q2, d5
	vsub.i32	q7, q7, q0
	vsub.i32	q6, q6, q1
	vmovl.u8 q15, d26
	vmovl.u16 q0, d6
	vmovl.u8 q14, d18
	vmovl.u16 q1, d4
	vshl.i32	q7, q7, #5
	vmovl.u16 q2, d5
	vshl.i32	q6, q6, #5
	vmovl.u16 q3, d7
	vmovl.u8 q13, d27
	vmovn.i32	d10, q7
	vmovn.i32	d11, q6
	vmovl.u8 q12, d19
	vsub.i32	q7, q3, q2
	vmovl.u16 q2, d28
	vmovl.u16 q3, d30
	vmovl.u16 q14, d29
	vmovl.u16 q15, d31
	vmovl.u16 q6, d24
	vmovl.u16 q12, d25
	vsub.i32	q14, q14, q15
	vmovl.u16 q15, d26
	vmovl.u16 q13, d27
	vsub.i32	q1, q0, q1
	vsub.i32	q3, q2, q3
	vsub.i32	q0, q12, q13
	vmov.i8	q12, #248  @ v16qi
	vand	q3, q3, q4
	vand	q2, q12, q8
	vand	q12, q14, q4
	vsub.i32	q6, q6, q15
	vshl.i32	q1, q1, #5
	vshl.i32	q14, q7, #5
	vshl.i32	q3, q3, #3
	vshl.i32	q12, q12, #3
	vand	q6, q6, q4
	vmovn.i32	d26, q1
	vmovn.i32	d27, q14
	vand	q0, q0, q4
	vmovn.i16	d2, q5
	vmovn.i16	d3, q13
	vmovn.i32	d30, q3
	vmovn.i32	d31, q12
	vshr.u8	q14, q10, #3
	vmov.i8	q3, #7  @ v16qi
	vsub.i8	q2, q8, q2
	vshl.i32	q0, q0, #3
	vshl.i32	q6, q6, #3
	vshr.u8	q13, q9, #2
	vshr.u8	q12, q8, #3
	vand	q2, q2, q3
	vmovl.u8 q5, d29
	vmovl.u8 q3, d28
	vmovn.i32	d28, q6
	vmovn.i32	d29, q0
	vorr	q1, q1, q2
	vmovn.i16	d4, q15
	vmovn.i16	d5, q14
	vshll.u8 q0, d26, #5
	vshll.u8 q15, d27, #5
	vmovl.u8 q14, d24
	vmovl.u8 q12, d25
	vshl.i16	q3, q3, #11
	vorr	q15, q12, q15
	vshl.i16	q13, q5, #11
	vorr	q14, q14, q0
	vorr	q12, q1, q2
	vorr	q14, q14, q3
	vorr	q13, q15, q13
	vst1.16	{q14}, [r0]!
	vst1.16	{q13}, [r0]
	vst1.8	{q12}, [lr]!
	vst1.8	{q11}, [ip]!
	bhi	.L37
	ldr	r3, [sp, #172]
	ldr	r7, [sp, #44]
	add	r6, r6, r3
	ldr	r3, [sp, #40]
	add	r5, r5, r7
	add	r4, r4, r7
	cmp	r3, r7
	beq	.L34
	ldr	r2, [sp, #184]
.L29:
	add	r3, r10, r2
.L33:
	ldrb	r1, [r3, #1]	@ zero_extendqisi2
	adds	r3, r3, #4
	ldrb	r7, [r3, #-2]	@ zero_extendqisi2
	ldrb	r0, [r10, r2]	@ zero_extendqisi2
	lsrs	r1, r1, #2
	lsrs	r7, r7, #3
	lsls	r1, r1, #5
	orr	r1, r1, r7, lsl #11
	orr	r1, r1, r0, lsr #3
	strh	r1, [r6], #2	@ movhi
	ldrb	r7, [r3, #-2]	@ zero_extendqisi2
	ldrb	r0, [r10, r2]	@ zero_extendqisi2
	adds	r2, r2, #4
	ldrb	r1, [r3, #-3]	@ zero_extendqisi2
	cmp	fp, r2
	and	r7, r7, #7
	and	r0, r0, #7
	orr	r0, r0, r7, lsl #5
	and	r1, r1, #3
	orr	r1, r0, r1, lsl #3
	strb	r1, [r4], #1
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2
	strb	r1, [r5], #1
	bgt	.L33
.L34:
	ldr	r4, [sp, #28]
	add	r9, r9, #1
	cmp	r4, r9
	bne	.L40
.L25:
	mov	r0, r10
	bl	free(PLT)
	b	.L15
.L31:
	ldr	r2, [sp, #60]
	mov	r0, r8
	b	.L35
.L86:
	mov	r2, r3
	b	.L29
.L28:
	add	r3, r10, #3
.L39:
	ldrb	r1, [r3, #-1]	@ zero_extendqisi2
	ldrb	r7, [r3, #-2]	@ zero_extendqisi2
	ldrb	r0, [r3, #-3]	@ zero_extendqisi2
	lsrs	r1, r1, #3
	lsrs	r7, r7, #2
	lsls	r1, r1, #11
	orr	r1, r1, r7, lsl #5
	orr	r1, r1, r0, lsr #3
	strh	r1, [r6], #2	@ movhi
	ldrb	r7, [r3, #-1]	@ zero_extendqisi2
	ldrb	r0, [r3, #-3]	@ zero_extendqisi2
	ldrb	r1, [r3, #-2]	@ zero_extendqisi2
	and	r7, r7, #7
	and	r0, r0, #7
	orr	r0, r0, r7, lsl #5
	and	r1, r1, #3
	orr	r1, r0, r1, lsl #3
	strb	r1, [r4], #1
	cmp	r2, r4
	ldrb	r1, [r3], #4	@ zero_extendqisi2
	strb	r1, [r5], #1
	bne	.L39
	b	.L34
.L107:
	ldr	r4, [sp, #28]
	cmp	r4, #0
	ble	.L25
	asr	r3, r9, #31
	lsl	r4, r9, #2
	ldr	r5, [sp, #24]
	vmov.i16	q4, #255  @ v8hi
	lsrs	r3, r3, #29
	movs	r1, #7
	subs	r2, r4, #1
	str	r4, [sp, #48]
	add	r0, r9, r3
	lsrs	r6, r2, #6
	ands	r0, r0, r1
	lsrs	r2, r2, #2
	subs	r0, r0, r3
	str	r6, [sp, #100]
	rsb	r3, r0, r9
	subs	r4, r6, #3
	str	r3, [sp, #64]
	add	r6, r10, #3
	str	r6, [sp, #96]
	adds	r2, r2, #1
	ldr	r6, [sp, #64]
	bic	r4, r4, #1
	ldr	r7, [sp, #64]
	adds	r4, r4, #2
	str	r2, [sp, #68]
	movt	r1, 32768
	ldr	r3, [sp, #48]
	add	r6, r10, r6, lsl #2
	ldr	r2, [sp, #64]
	lsls	r7, r7, #1
	str	r0, [sp, #88]
	str	r6, [sp, #152]
	sub	r0, r3, #33
	str	r7, [sp, #156]
	sub	r3, r9, #7
	ldr	r7, [sp, #68]
	adds	r2, r2, #1
	ldr	r6, [sp, #96]
	cmp	r2, r3
	str	r4, [sp, #180]
	bic	r0, r0, #31
	ldr	r4, [sp, #68]
	add	r0, r0, #32
	str	r3, [sp, #164]
	add	r6, r6, r7, lsl #2
	ldr	r7, [sp, #100]
	ldr	r3, [sp, #64]
	str	r6, [sp, #112]
	ldr	r6, [sp, #100]
	lsl	r7, r7, #6
	str	r2, [sp, #160]
	str	r3, [sp, #140]
	str	r7, [sp, #188]
	lsl	r6, r6, #4
	str	r0, [sp, #196]
	str	r6, [sp, #56]
	ite	lt
	movlt	r6, #1
	movge	r6, #0
	cmp	r9, r1
	it	lt
	movlt	r6, #0
	cmp	r4, #15
	str	r6, [sp, #132]
	it	ls
	movls	r4, #0
	ldr	r6, [sp, #96]
	it	hi
	movhi	r4, #1
	str	r4, [sp, #52]
	str	r6, [sp, #168]
.L65:
	ldr	r3, [sp, #212]
	mov	r1, r10
	ldr	r4, [sp, #212]
	movs	r2, #0
	ldr	r0, [sp, #212]
	ldr	r3, [r3, #8]
	ldr	r6, [r4, #16]
	ldr	r4, [r0, #20]
	ldr	r0, [sp, #200]
	mul	r3, r3, r5
	add	r6, r6, r3, lsl #1
	add	r8, r4, r3
	str	r6, [sp, #36]
	bl	png_read_row(PLT)
	cmp	r9, #7
	bgt	.L41
.L44:
	ldr	r7, [sp, #88]
	cmp	r7, #0
	ble	.L43
	ldr	r6, [sp, #64]
	cmp	r9, r6
	ble	.L43
	ldr	r7, [sp, #132]
	cmp	r7, #0
	beq	.L88
	ldr	fp, [sp, #160]
	ldr	r7, [sp, #36]
	ldr	r3, [sp, #156]
	str	r8, [sp, #84]
	mov	r8, fp
	ldr	r6, [sp, #152]
	ldr	r4, [sp, #140]
	add	r7, r7, r3
	ldr	fp, [sp, #164]
.L49:
	ldr	r2, [r6]
	mov	r0, r4
	mov	r1, r5
	pld	[r6, #36]
	bl	libaroma_dither(PLT)
	ldr	r2, [r6, #4]
	mov	r1, r5
	strh	r0, [r7]	@ movhi
	mov	r0, r8
	pld	[r7, #18]
	add	r8, r8, #8
	bl	libaroma_dither(PLT)
	ldr	r2, [r6, #8]
	mov	r1, r5
	strh	r0, [r7, #2]	@ movhi
	adds	r0, r4, #2
	bl	libaroma_dither(PLT)
	ldr	r2, [r6, #12]
	mov	r1, r5
	strh	r0, [r7, #4]	@ movhi
	adds	r0, r4, #3
	bl	libaroma_dither(PLT)
	ldr	r2, [r6, #16]
	mov	r1, r5
	strh	r0, [r7, #6]	@ movhi
	adds	r0, r4, #4
	bl	libaroma_dither(PLT)
	ldr	r2, [r6, #20]
	mov	r1, r5
	strh	r0, [r7, #8]	@ movhi
	adds	r0, r4, #5
	bl	libaroma_dither(PLT)
	ldr	r2, [r6, #24]
	mov	r1, r5
	strh	r0, [r7, #10]	@ movhi
	adds	r0, r4, #6
	bl	libaroma_dither(PLT)
	ldr	r2, [r6, #28]
	mov	r1, r5
	strh	r0, [r7, #12]	@ movhi
	adds	r0, r4, #7
	bl	libaroma_dither(PLT)
	cmp	fp, r8
	strh	r0, [r7, #14]	@ movhi
	add	r4, r4, #8
	add	r6, r6, #32
	add	r7, r7, #16
	bgt	.L49
	ldr	r8, [sp, #84]
.L48:
	ldr	r3, [sp, #36]
	add	r7, r4, #1073741824
	add	r6, r4, #-2147483648
	subs	r7, r7, #1
	subs	r6, r6, #1
	add	r7, r10, r7, lsl #2
	add	r6, r3, r6, lsl #1
.L50:
	mov	r0, r4
	mov	r1, r5
	adds	r4, r4, #1
	ldr	r2, [r7, #4]!
	bl	libaroma_dither(PLT)
	cmp	r9, r4
	strh	r0, [r6, #2]!	@ movhi
	bgt	.L50
.L43:
	ldr	r4, [sp, #48]
	cmp	r4, #0
	ble	.L47
	ldr	r3, [sp, #68]
	ldr	r6, [sp, #96]
	ldr	r7, [sp, #112]
	add	r3, r3, r8
	ldr	r4, [sp, #52]
	cmp	r8, r7
	it	cc
	cmpcc	r6, r3
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	ands	r3, r4, r3
	beq	.L52
	ldr	r6, [sp, #56]
	cmp	r6, #0
	beq	.L89
	ldr	r7, [sp, #100]
	cmp	r7, #2
	bls	.L90
	ldr	r3, [sp, #168]
	mov	r2, r8
	ldr	fp, [sp, #180]
	movs	r1, #0
.L58:
	mov	r4, r3
	mov	r0, r2
	add	ip, r3, #64
	pld	[r2, #112]
	vld4.8	{d16, d18, d20, d22}, [r4]!
	add	lr, r3, #96
	adds	r1, r1, #2
	add	r7, r2, #32
	cmp	r1, fp
	add	r6, r3, #128
	mov	r2, r7
	mov	r3, r6
	vld4.8	{d17, d19, d21, d23}, [r4]
	vst1.8	{q8}, [r0]!
	vld4.8	{d16, d18, d20, d22}, [ip]
	vld4.8	{d17, d19, d21, d23}, [lr]
	vst1.8	{q8}, [r0]
	bne	.L58
.L60:
	mov	r3, r6
	adds	r1, r1, #1
	adds	r6, r6, #64
	vld4.8	{d16, d18, d20, d22}, [r3]!
	vld4.8	{d17, d19, d21, d23}, [r3]
	ldr	r3, [sp, #100]
	cmp	r3, r1
	vst1.8	{q8}, [r7]!
	bhi	.L60
	ldr	r3, [sp, #56]
	ldr	r4, [sp, #68]
	add	r8, r8, r3
	cmp	r4, r3
	beq	.L47
	ldr	r3, [sp, #188]
	ldr	r1, [sp, #48]
.L57:
	add	r2, r10, r3
	adds	r3, r3, #4
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	cmp	r1, r3
	strb	r2, [r8], #1
	bgt	.L57
.L47:
	ldr	r4, [sp, #28]
	adds	r5, r5, #1
	cmp	r4, r5
	bne	.L65
	b	.L25
.L41:
	and	r4, r5, #7
	lsls	r4, r4, #3
	bl	libaroma_dither_table_r(PLT)
	add	r0, r0, r4
	vld1.8	{d10}, [r0]
	bl	libaroma_dither_table_g(PLT)
	add	r0, r0, r4
	vld1.8	{d11}, [r0]
	bl	libaroma_dither_table_b(PLT)
	ldr	r3, [sp, #64]
	add	r0, r0, r4
	vld1.8	{d20}, [r0]
	cmp	r3, #0
	ble	.L44
	ldr	r2, [sp, #36]
	mov	r0, r3
	mov	r1, r10
	movs	r3, #0
.L45:
	vld4.8	{d16-d19}, [r1:64]!
	adds	r3, r3, #8
	cmp	r3, r0
	vaddl.u8	q11, d18, d10
	vaddl.u8	q12, d17, d11
	vaddl.u8	q9, d16, d20
	vmin.u16	q11, q11, q4
	vmin.u16	q8, q12, q4
	vmin.u16	q9, q9, q4
	vshr.u16	q11, q11, #3
	vshr.u16	q8, q8, #2
	vshr.u16	q9, q9, #3
	vqshl.u16	q11, q11, #11
	vqshl.u16	q8, q8, #5
	vorr	q8, q11, q8
	vorr	q8, q8, q9
	vst1.16	{d16-d17}, [r2]!
	blt	.L45
	b	.L44
.L89:
	mov	r3, r6
	ldr	r1, [sp, #48]
	b	.L57
.L52:
	ldr	r4, [sp, #48]
	cmp	r4, #32
	ble	.L91
	ldr	r4, [sp, #196]
	add	r1, r8, #8
	add	r2, r10, #103
.L62:
	ldrb	r0, [r2, #-100]	@ zero_extendqisi2
	adds	r3, r3, #32
	pld	[r2]
	cmp	r3, r4
	mov	r8, r1
	add	r2, r2, #32
	strb	r0, [r1, #-8]
	add	r1, r1, #8
	ldrb	r0, [r2, #-128]	@ zero_extendqisi2
	strb	r0, [r1, #-15]
	ldrb	r0, [r2, #-124]	@ zero_extendqisi2
	strb	r0, [r1, #-14]
	ldrb	r0, [r2, #-120]	@ zero_extendqisi2
	strb	r0, [r1, #-13]
	ldrb	r0, [r2, #-116]	@ zero_extendqisi2
	strb	r0, [r1, #-12]
	ldrb	r0, [r2, #-112]	@ zero_extendqisi2
	strb	r0, [r1, #-11]
	ldrb	r0, [r2, #-108]	@ zero_extendqisi2
	strb	r0, [r1, #-10]
	ldrb	r0, [r2, #-104]	@ zero_extendqisi2
	strb	r0, [r1, #-9]
	bne	.L62
.L91:
	ldr	r1, [sp, #48]
.L64:
	add	r2, r10, r3
	adds	r3, r3, #4
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	cmp	r1, r3
	strb	r2, [r8], #1
	bgt	.L64
	b	.L47
.L109:
	.align	2
.L108:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC25+4)
	.word	.LC0-(.LPIC24+4)
	.word	longjmp(GOT)
	.word	_libaroma_png_reader(GOT)
.L66:
	ldr	r6, [sp, #28]
	cmp	r6, #0
	ble	.L68
	add	r9, r9, r9, lsl #1
	movw	r3, #43691
	movt	r3, 43690
	vmov.i8	q5, #248  @ v16qi
	add	r2, r9, #-1
	vmov.i8	q6, #252  @ v16qi
	umull	r7, r3, r3, r2
	vmov.i32	q4, #3  @ v4si
	mov	fp, r5
	lsrs	r3, r3, #1
	adds	r3, r3, #1
	str	r3, [sp, #72]
	lsrs	r3, r3, #4
	ldr	r6, [sp, #72]
	str	r3, [sp, #116]
	ldr	r7, [sp, #116]
	mov	r1, r6
	lsls	r3, r6, #1
	subs	r0, r7, #3
	lsl	r10, r7, #4
	lsls	r2, r7, #5
	ldr	r7, [sp, #72]
	bic	r0, r0, #1
	add	r1, r1, r3
	adds	r0, r0, #2
	add	r6, r2, r10
	cmp	r7, #15
	add	r1, r4, r1
	ite	ls
	movls	r7, #0
	movhi	r7, #1
	str	r7, [sp, #124]
	mov	r7, r10
	str	r0, [sp, #136]
	str	r6, [sp, #192]
	str	r2, [sp, #176]
	str	r1, [sp, #76]
	str	r3, [sp, #128]
.L83:
	ldr	r5, [sp, #212]
	mov	r1, r4
	ldr	r0, [sp, #212]
	movs	r2, #0
	ldr	r3, [sp, #212]
	ldr	r5, [r5, #16]
	ldr	r6, [r0, #8]
	ldr	r0, [sp, #212]
	ldr	r3, [r3, #24]
	mul	lr, r6, fp
	ldr	r6, [r0, #8]
	ldr	r0, [sp, #200]
	add	r5, r5, lr, lsl #1
	mla	r6, r6, fp, r3
	bl	png_read_row(PLT)
	cmp	r9, #0
	ble	.L77
	ldr	r1, [sp, #72]
	ldr	lr, [sp, #76]
	ldr	r3, [sp, #128]
	add	r1, r1, r6
	ldr	r2, [sp, #124]
	cmp	r6, lr
	it	cc
	cmpcc	r4, r1
	add	r3, r3, r5
	ite	cs
	movcs	r0, #1
	movcc	r0, #0
	cmp	r5, lr
	it	cc
	cmpcc	r4, r3
	ite	cs
	movcs	ip, #1
	movcc	ip, #0
	ands	r0, r0, r2
	cmp	r5, r1
	it	cc
	cmpcc	r6, r3
	ite	cs
	movcs	r3, #1
	movcc	r3, #0
	and	r2, ip, r0
	ands	r2, r2, r3
	beq	.L71
	cmp	r7, #0
	beq	.L92
	ldr	r3, [sp, #116]
	mov	lr, r6
	mov	r2, r4
	movs	r1, #0
	cmp	r3, #2
	mov	r3, r5
	bls	.L80
.L78:
	mov	ip, r2
	mov	r0, lr
	add	r8, r2, #48
	add	r10, r3, #16
	vld3.8	{d16, d18, d20}, [ip]!
	add	lr, lr, #32
	pld	[r3, #80]
	adds	r1, r1, #2
	pld	[r3, #112]
	pld	[lr]
	vld3.8	{d17, d19, d21}, [ip]
	add	ip, r2, #72
	adds	r2, r2, #96
	str	r2, [sp, #80]
	add	r2, r3, #32
	vand	q15, q5, q10
	vmovl.u8 q3, d20
	vand	q12, q6, q9
	vmovl.u8 q13, d30
	vmovl.u8 q7, d21
	vmovl.u16 q1, d6
	vmovl.u8 q15, d31
	vmovl.u16 q2, d26
	vmovl.u16 q3, d7
	vmovl.u16 q13, d27
	vmovl.u8 q14, d24
	vmovl.u8 q0, d18
	vsub.i32	q2, q1, q2
	vsub.i32	q3, q3, q13
	vmovl.u16 q1, d14
	vmovl.u16 q13, d30
	vmovl.u16 q7, d15
	vmovl.u16 q15, d31
	vmovl.u8 q11, d19
	vmovl.u8 q12, d25
	vsub.i32	q7, q7, q15
	vshl.i32	q2, q2, #5
	vsub.i32	q13, q1, q13
	vmovl.u16 q15, d28
	vmovl.u16 q1, d0
	vmovl.u16 q14, d29
	vshl.i32	q3, q3, #5
	vmovl.u16 q0, d1
	vsub.i32	q15, q1, q15
	vmovn.i32	d2, q2
	vmovn.i32	d3, q3
	vmovl.u16 q3, d22
	vsub.i32	q0, q0, q14
	vmovl.u16 q11, d23
	vmovl.u16 q14, d24
	vmovl.u16 q12, d25
	vshl.i32	q13, q13, #5
	vsub.i32	q2, q3, q14
	vsub.i32	q11, q11, q12
	vand	q14, q5, q8
	vand	q3, q11, q4
	vand	q2, q2, q4
	vshl.i32	q11, q7, #5
	vshr.u8	q12, q8, #3
	vand	q15, q15, q4
	vand	q0, q0, q4
	vmovn.i32	d14, q13
	vmovn.i32	d15, q11
	vsub.i8	q14, q8, q14
	vmovn.i16	d26, q1
	vmovn.i16	d27, q7
	vshr.u8	q11, q9, #2
	vshr.u8	q8, q10, #3
	vshl.i32	q2, q2, #3
	vshl.i32	q3, q3, #3
	vshl.i32	q15, q15, #3
	vshl.i32	q0, q0, #3
	vmovl.u8 q10, d24
	vmovn.i32	d2, q2
	vmovn.i32	d3, q3
	vmovl.u8 q9, d25
	vmov.i8	q12, #7  @ v16qi
	vshll.u8 q3, d22, #5
	vmovn.i32	d14, q15
	vmovn.i32	d15, q0
	vand	q14, q14, q12
	vmovn.i16	d30, q7
	vmovn.i16	d31, q1
	vmovl.u8 q12, d16
	vshll.u8 q11, d23, #5
	vmovl.u8 q8, d17
	vorr	q13, q13, q14
	vorr	q12, q12, q3
	vorr	q11, q8, q11
	vshl.i16	q10, q10, #11
	vshl.i16	q9, q9, #11
	vorr	q8, q13, q15
	vorr	q10, q12, q10
	vorr	q9, q11, q9
	vst1.16	{q10}, [r3]
	vst1.16	{q9}, [r10]
	vst1.8	{q8}, [r0]!
	vld3.8	{d16, d18, d20}, [r8]
	add	r8, r3, #48
	adds	r3, r3, #64
	vld3.8	{d17, d19, d21}, [ip]
	vand	q15, q5, q10
	vmovl.u8 q3, d20
	vand	q12, q6, q9
	vmovl.u8 q13, d30
	vmovl.u8 q7, d21
	vmovl.u16 q1, d6
	vmovl.u8 q15, d31
	vmovl.u16 q2, d26
	vmovl.u16 q3, d7
	vmovl.u16 q13, d27
	vmovl.u8 q14, d24
	vmovl.u8 q0, d18
	vsub.i32	q2, q1, q2
	vsub.i32	q3, q3, q13
	vmovl.u16 q1, d14
	vmovl.u16 q13, d30
	vmovl.u16 q7, d15
	vmovl.u16 q15, d31
	vmovl.u8 q11, d19
	vmovl.u8 q12, d25
	vsub.i32	q7, q7, q15
	vshl.i32	q2, q2, #5
	vsub.i32	q13, q1, q13
	vmovl.u16 q15, d28
	vmovl.u16 q1, d0
	vmovl.u16 q14, d29
	vshl.i32	q3, q3, #5
	vmovl.u16 q0, d1
	vsub.i32	q15, q1, q15
	vmovn.i32	d2, q2
	vmovn.i32	d3, q3
	vmovl.u16 q3, d22
	vsub.i32	q0, q0, q14
	vmovl.u16 q11, d23
	vmovl.u16 q14, d24
	vmovl.u16 q12, d25
	vshl.i32	q13, q13, #5
	vsub.i32	q2, q3, q14
	vsub.i32	q11, q11, q12
	vand	q14, q5, q8
	vand	q3, q11, q4
	vand	q2, q2, q4
	vshl.i32	q11, q7, #5
	vshr.u8	q12, q8, #3
	vand	q15, q15, q4
	vand	q0, q0, q4
	vmovn.i32	d14, q13
	vmovn.i32	d15, q11
	vsub.i8	q14, q8, q14
	vmovn.i16	d26, q1
	vmovn.i16	d27, q7
	vshr.u8	q11, q9, #2
	vshr.u8	q8, q10, #3
	vshl.i32	q3, q3, #3
	vshl.i32	q2, q2, #3
	vshl.i32	q15, q15, #3
	vmovl.u8 q10, d24
	vmovl.u8 q9, d25
	vmov.i8	q12, #7  @ v16qi
	vshl.i32	q0, q0, #3
	vmovn.i32	d2, q2
	vmovn.i32	d3, q3
	vand	q14, q14, q12
	vshll.u8 q3, d22, #5
	vmovl.u8 q12, d16
	vmovn.i32	d14, q15
	vmovn.i32	d15, q0
	vmovl.u8 q8, d17
	vmovn.i16	d30, q7
	vmovn.i16	d31, q1
	vshll.u8 q11, d23, #5
	vorr	q13, q13, q14
	vorr	q11, q8, q11
	vshl.i16	q10, q10, #11
	vshl.i16	q9, q9, #11
	vorr	q12, q12, q3
	vorr	q8, q13, q15
	vorr	q10, q12, q10
	vorr	q9, q11, q9
	vst1.16	{q10}, [r2]
	ldr	r2, [sp, #80]
	vst1.16	{q9}, [r8]
	vst1.8	{q8}, [r0]
	ldr	r0, [sp, #136]
	cmp	r1, r0
	bne	.L78
.L80:
	mov	ip, r2
	mov	r0, r3
	adds	r1, r1, #1
	adds	r2, r2, #48
	vld3.8	{d16, d18, d20}, [ip]!
	adds	r3, r3, #32
	vld3.8	{d17, d19, d21}, [ip]
	vand	q15, q5, q10
	vmovl.u8 q3, d20
	vand	q12, q6, q9
	vmovl.u8 q13, d30
	vmovl.u8 q7, d21
	vmovl.u16 q1, d6
	vmovl.u8 q15, d31
	vmovl.u16 q2, d26
	vmovl.u16 q3, d7
	vmovl.u16 q13, d27
	vmovl.u8 q14, d24
	vmovl.u8 q0, d18
	vsub.i32	q2, q1, q2
	vsub.i32	q3, q3, q13
	vmovl.u16 q1, d14
	vmovl.u16 q13, d30
	vmovl.u16 q7, d15
	vmovl.u16 q15, d31
	vmovl.u8 q11, d19
	vmovl.u8 q12, d25
	vsub.i32	q7, q7, q15
	vshl.i32	q2, q2, #5
	vsub.i32	q13, q1, q13
	vmovl.u16 q15, d28
	vmovl.u16 q1, d0
	vmovl.u16 q14, d29
	vshl.i32	q3, q3, #5
	vmovl.u16 q0, d1
	vsub.i32	q15, q1, q15
	vmovn.i32	d2, q2
	vmovn.i32	d3, q3
	vmovl.u16 q3, d22
	vsub.i32	q0, q0, q14
	vmovl.u16 q11, d23
	vmovl.u16 q14, d24
	vmovl.u16 q12, d25
	vshl.i32	q13, q13, #5
	vsub.i32	q2, q3, q14
	vsub.i32	q11, q11, q12
	vand	q14, q5, q8
	vand	q3, q11, q4
	vand	q2, q2, q4
	vshl.i32	q11, q7, #5
	vshr.u8	q12, q8, #3
	vsub.i8	q14, q8, q14
	vmovn.i32	d14, q13
	vmovn.i32	d15, q11
	vshr.u8	q8, q10, #3
	vshr.u8	q11, q9, #2
	vmovn.i16	d26, q1
	vmovn.i16	d27, q7
	vshl.i32	q3, q3, #3
	vshl.i32	q2, q2, #3
	vmovl.u8 q10, d24
	vmovl.u8 q9, d25
	vmov.i8	q12, #7  @ v16qi
	vmovn.i32	d2, q2
	vmovn.i32	d3, q3
	vand	q15, q15, q4
	vand	q14, q14, q12
	vshll.u8 q3, d22, #5
	vmovl.u8 q12, d16
	vand	q0, q0, q4
	vmovl.u8 q8, d17
	vshll.u8 q11, d23, #5
	vshl.i16	q10, q10, #11
	vorr	q11, q8, q11
	vshl.i16	q9, q9, #11
	vorr	q12, q12, q3
	vshl.i32	q15, q15, #3
	vshl.i32	q0, q0, #3
	vorr	q10, q12, q10
	vorr	q9, q11, q9
	vmovn.i32	d14, q15
	vmovn.i32	d15, q0
	vorr	q13, q13, q14
	vst1.16	{q10}, [r0]!
	vmovn.i16	d30, q7
	vmovn.i16	d31, q1
	vst1.16	{q9}, [r0]
	ldr	r0, [sp, #116]
	vorr	q8, q13, q15
	cmp	r0, r1
	vst1.8	{q8}, [lr]!
	bhi	.L80
	ldr	r3, [sp, #176]
	add	r6, r6, r7
	add	r5, r5, r3
	ldr	r3, [sp, #72]
	cmp	r3, r7
	beq	.L77
	ldr	r2, [sp, #192]
.L72:
	adds	r3, r4, r2
.L76:
	ldrb	r1, [r3, #1]	@ zero_extendqisi2
	adds	r3, r3, #3
	ldrb	lr, [r4, r2]	@ zero_extendqisi2
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	lsrs	r1, r1, #2
	lsr	lr, lr, #3
	lsls	r1, r1, #5
	orr	r1, r1, lr, lsl #11
	orr	r1, r1, r0, lsr #3
	strh	r1, [r5], #2	@ movhi
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2
	ldrb	r0, [r4, r2]	@ zero_extendqisi2
	adds	r2, r2, #3
	ldrb	r1, [r3, #-2]	@ zero_extendqisi2
	cmp	r9, r2
	and	lr, lr, #7
	and	r0, r0, #7
	orr	r0, r0, lr, lsl #5
	and	r1, r1, #3
	orr	r1, r0, r1, lsl #3
	strb	r1, [r6], #1
	bgt	.L76
.L77:
	ldr	r6, [sp, #28]
	add	fp, fp, #1
	cmp	r6, fp
	bne	.L83
	b	.L68
.L92:
	mov	r2, r7
	b	.L72
.L71:
	mov	r3, r4
.L82:
	ldrb	r1, [r3, #1]	@ zero_extendqisi2
	adds	r3, r3, #3
	ldrb	lr, [r4, r2]	@ zero_extendqisi2
	ldrb	r0, [r3, #-1]	@ zero_extendqisi2
	lsrs	r1, r1, #2
	lsr	lr, lr, #3
	lsls	r1, r1, #5
	orr	r1, r1, lr, lsl #11
	orr	r1, r1, r0, lsr #3
	strh	r1, [r5], #2	@ movhi
	ldrb	lr, [r3, #-1]	@ zero_extendqisi2
	ldrb	r0, [r4, r2]	@ zero_extendqisi2
	adds	r2, r2, #3
	ldrb	r1, [r3, #-2]	@ zero_extendqisi2
	cmp	r9, r2
	and	lr, lr, #7
	and	r0, r0, #7
	orr	r0, r0, lr, lsl #5
	and	r1, r1, #3
	orr	r1, r0, r1, lsl #3
	strb	r1, [r6], #1
	bgt	.L82
	b	.L77
.L88:
	ldr	r4, [sp, #140]
	b	.L48
.L90:
	mov	r7, r8
	ldr	r6, [sp, #168]
	movs	r1, #0
	b	.L60
	.size	libaroma_png_ex, .-libaroma_png_ex
	.section	.text.libaroma_png9p,"ax",%progbits
	.align	2
	.global	libaroma_png9p
	.thumb
	.thumb_func
	.type	libaroma_png9p, %function
libaroma_png9p:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
	cmp	r0, #0
	beq	.L111
	ldr	r0, [r0, #20]
	cmp	r0, #0
	beq	.L111
	mov	r0, r1
	mov	r5, r1
	mov	r8, r2
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
	ldr	ip, [r7]
	ldr	lr, [r7, #20]
	add	r6, ip, #-1
	cmp	r6, #1
	ble	.L118
	movs	r3, #1
	ldr	r0, [r5]
	mov	r9, r3
	mov	r4, lr
	b	.L119
.L115:
	cbnz	r0, .L118
.L117:
	adds	r3, r3, #1
	cmp	r6, r3
	beq	.L118
.L119:
	ldrb	r2, [r4, #1]!	@ zero_extendqisi2
	cmp	r2, #255
	bne	.L115
	cmp	r0, #0
	bne	.L116
	str	r3, [r5]
	mov	r0, r3
	adds	r3, r3, #1
	str	r9, [r5, #8]
	cmp	r6, r3
	bne	.L119
.L118:
	ldr	r9, [r7, #4]
	add	r1, r9, #-1
	cmp	r1, #1
	ble	.L114
	movs	r3, #1
	ldr	r10, [r7, #8]
	ldr	r2, [r5, #4]
	mov	fp, r3
	mov	r4, lr
	b	.L124
.L121:
	cbnz	r2, .L114
.L123:
	adds	r3, r3, #1
	cmp	r1, r3
	beq	.L114
.L124:
	add	r4, r4, r10
	ldrb	r0, [r4]	@ zero_extendqisi2
	cmp	r0, #255
	bne	.L121
	cmp	r2, #0
	bne	.L122
	str	r3, [r5, #4]
	mov	r2, r3
	adds	r3, r3, #1
	str	fp, [r5, #12]
	cmp	r1, r3
	bne	.L124
.L114:
	cmp	r8, #0
	beq	.L152
	ldr	r7, [r7, #8]
	cmp	r6, #1
	ldr	r4, [r5, #16]
	it	gt
	movgt	r2, #1
	mla	r3, r7, r1, lr
	bgt	.L130
	b	.L150
.L127:
	cmp	r4, #0
	bne	.L153
.L128:
	adds	r2, r2, #1
	cmp	r6, r2
	beq	.L150
.L130:
	ldrb	r0, [r3, #1]!	@ zero_extendqisi2
	cmp	r0, #255
	bne	.L127
	cmp	r4, #0
	bne	.L128
	str	r2, [r5, #16]
	mov	r4, r2
	adds	r2, r2, #1
	cmp	r6, r2
	bne	.L130
.L150:
	ldr	ip, [r5, #24]
.L126:
	cmp	r1, #1
	add	r6, r6, lr
	ldr	r2, [r5, #20]
	it	gt
	movgt	r3, #1
	bgt	.L136
	b	.L151
.L133:
	cbnz	r2, .L154
.L134:
	adds	r3, r3, #1
	cmp	r1, r3
	beq	.L151
.L136:
	add	r6, r6, r7
	ldrb	r0, [r6]	@ zero_extendqisi2
	cmp	r0, #255
	bne	.L133
	cmp	r2, #0
	bne	.L134
	str	r3, [r5, #20]
	mov	r2, r3
	adds	r3, r3, #1
	cmp	r1, r3
	bne	.L136
.L151:
	ldr	r3, [r5, #28]
.L132:
	subs	r4, r4, #1
	subs	r2, r2, #1
	add	ip, ip, #-1
	subs	r3, r3, #1
	rsb	r1, r4, ip
	subs	r3, r3, r2
	str	r1, [r5, #24]
	movs	r0, #1
	str	r3, [r5, #28]
	str	r4, [r5, #16]
	str	r2, [r5, #20]
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L116:
	ldr	r1, [r5, #8]
	adds	r1, r1, #1
	str	r1, [r5, #8]
	b	.L117
.L111:
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L122:
	ldr	r0, [r5, #12]
	adds	r0, r0, #1
	str	r0, [r5, #12]
	b	.L123
.L152:
	movs	r0, #1
	pop	{r3, r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L153:
	rsb	ip, r2, ip
	str	ip, [r5, #24]
	b	.L126
.L154:
	rsb	r3, r3, r9
	b	.L132
	.size	libaroma_png9p, .-libaroma_png9p
	.global	__aeabi_idiv
	.section	.text.libaroma_png9p_draw,"ax",%progbits
	.align	2
	.global	libaroma_png9p_draw
	.thumb
	.thumb_func
	.type	libaroma_png9p_draw, %function
libaroma_png9p_draw:
	@ args = 16, pretend = 0, frame = 80
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #108
	mov	r4, r1
	str	r3, [sp, #28]
	cmp	r1, #0
	beq	.L159
	mov	r5, r0
	mov	r6, r2
	cmp	r0, #0
	beq	.L170
.L158:
	ldr	r0, [sp, #144]
	ldr	r7, [sp, #148]
	cmp	r0, #2
	it	gt
	cmpgt	r7, #2
	it	le
	movle	r0, #1
	bgt	.L171
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L171:
	ldr	r1, [sp, #156]
	mov	r0, r4
	adds	r10, r1, #0
	add	r1, sp, #72
	it	ne
	movne	r10, #1
	mov	r2, r10
	bl	libaroma_png9p(PLT)
	cmp	r0, #0
	beq	.L159
	ldr	r2, [sp, #152]
	cmp	r2, #0
	beq	.L172
.L160:
	bl	libaroma_fb(PLT)
	ldr	r0, [r0, #44]
	ldr	r1, [sp, #152]
	lsls	r0, r0, #8
	bl	__aeabi_idiv(PLT)
	ldr	r7, [sp, #144]
	mov	r8, r0
	subs	r3, r7, #2
	asrs	r3, r3, #1
	fmsr	s0, r3	@ int
	fsitod	d0, s0
	bl	floor(PLT)
	ldr	r7, [sp, #148]
	ftosizd	s0, d0
	subs	r3, r7, #2
	asrs	r3, r3, #1
	fmrs	r0, s0	@ int
	fmsr	s0, r3	@ int
	str	r0, [sp, #32]
	fsitod	d0, s0
	bl	floor(PLT)
	add	r2, sp, #72
	ftosizd	s0, d0
	ldmia	r2, {r2, r3, r7}
	ldr	r0, [sp, #32]
	adds	r7, r2, r7
	add	lr, r2, #-1
	str	r7, [sp, #64]
	add	r9, r3, #-1
	ldmia	r4, {r1, r7}
	mul	r9, r8, r9
	add	ip, r1, #-1
	ldr	r1, [sp, #64]
	subs	r7, r7, #1
	asr	r9, r9, #8
	rsb	r1, r1, ip
	str	r1, [sp, #48]
	ldr	r1, [sp, #84]
	ldr	ip, [sp, #48]
	add	r1, r1, r3
	subs	r7, r7, r1
	add	ip, ip, r2
	mov	fp, r7
	str	r7, [sp, #52]
	mul	r7, r8, r7
	str	r1, [sp, #68]
	add	fp, fp, r3
	mul	ip, r8, ip
	str	r7, [sp, #36]
	mul	r7, r8, lr
	ldr	r1, [sp, #36]
	asr	ip, ip, #8
	mul	fp, r8, fp
	fmrs	lr, s0	@ int
	cmp	ip, r0
	asr	r7, r7, #8
	asr	r1, r1, #8
	it	ge
	movge	ip, r0
	asr	fp, fp, #8
	str	r7, [sp, #36]
	cmp	r1, lr
	fmrs	r7, s0	@ int
	it	ge
	movge	r1, lr
	cmp	fp, r7
	str	r1, [sp, #60]
	it	ge
	movge	fp, r7
	ldr	r1, [sp, #48]
	ldr	r7, [sp, #36]
	mul	lr, r8, r1
	cmp	r7, r0
	it	ge
	movge	r7, r0
	cmp	r9, r0
	str	r7, [sp, #36]
	it	ge
	movge	r9, r0
	asr	r7, lr, #8
	cmp	r7, r0
	it	ge
	movge	r7, r0
	str	r7, [sp, #56]
	cmp	r10, #0
	beq	.L161
	vldr	d16, [sp, #88]
	vldr	d17, [sp, #96]
	ldr	lr, [sp, #156]
	vdup.32	q9, r8
	vmul.i32	q8, q9, q8
	vshr.s32	q8, q8, #8
	vst1.32	{q8}, [lr]
.L161:
	ldr	r7, [sp, #36]
	mov	r8, #1
	str	r2, [sp, #16]
	mov	r1, r4
	str	r3, [sp, #20]
	mov	r2, r6
	stmia	sp, {r7, r9}
	mov	r0, r5
	ldr	r7, [sp, #144]
	ldr	r3, [sp, #28]
	str	r8, [sp, #8]
	rsb	r7, ip, r7
	str	r8, [sp, #12]
	str	r7, [sp, #40]
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r7, [sp, #148]
	mov	r0, r5
	ldr	r10, [sp, #36]
	ldr	r1, [sp, #72]
	rsb	fp, fp, r7
	ldr	r7, [sp, #40]
	ldr	r3, [sp, #80]
	add	r10, r10, r6
	mov	r2, r10
	str	r9, [sp, #4]
	str	r7, [sp]
	ldr	r7, [sp, #76]
	str	r1, [sp, #8]
	mov	r1, r4
	str	r3, [sp, #16]
	str	r7, [sp, #20]
	ldr	r7, [sp, #40]
	ldr	r3, [sp, #28]
	str	r8, [sp, #12]
	add	r7, r7, r10
	str	r7, [sp, #44]
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r3, [sp, #28]
	mov	r1, r4
	ldr	r7, [sp, #56]
	mov	r0, r5
	ldr	r2, [sp, #44]
	str	r9, [sp, #4]
	str	r7, [sp]
	mov	r7, r3
	add	r7, r7, r9
	str	r8, [sp, #12]
	str	r7, [sp, #28]
	ldr	r7, [sp, #64]
	ldr	r9, [sp, #28]
	str	r7, [sp, #8]
	ldr	r7, [sp, #48]
	add	r9, r9, fp
	str	r7, [sp, #16]
	ldr	r7, [sp, #76]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r2, [sp, #72]
	mov	r0, r5
	ldr	r1, [sp, #76]
	ldr	r7, [sp, #36]
	str	r2, [sp, #16]
	ldr	r2, [sp, #84]
	ldr	r3, [sp, #28]
	str	r7, [sp]
	str	r1, [sp, #12]
	mov	r1, r4
	str	r2, [sp, #20]
	mov	r2, r6
	str	fp, [sp, #4]
	str	r8, [sp, #8]
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r0, [sp, #72]
	mov	r2, r10
	ldr	r7, [sp, #40]
	ldr	r1, [sp, #76]
	str	r0, [sp, #8]
	stmia	sp, {r7, fp}
	ldr	r0, [sp, #80]
	ldr	r7, [sp, #84]
	ldr	r3, [sp, #28]
	str	r1, [sp, #12]
	mov	r1, r4
	str	r0, [sp, #16]
	mov	r0, r5
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r7, [sp, #56]
	mov	r1, r4
	ldr	r3, [sp, #28]
	mov	r0, r5
	ldr	r2, [sp, #44]
	str	r7, [sp]
	ldr	r7, [sp, #64]
	str	fp, [sp, #4]
	str	r7, [sp, #8]
	ldr	r7, [sp, #48]
	str	r7, [sp, #16]
	ldr	r7, [sp, #76]
	str	r7, [sp, #12]
	ldr	r7, [sp, #84]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	mov	r2, r6
	ldr	r6, [sp, #36]
	ldr	r7, [sp, #72]
	mov	r3, r9
	mov	r1, r4
	str	r8, [sp, #8]
	str	r6, [sp]
	mov	r0, r5
	ldr	r6, [sp, #60]
	str	r7, [sp, #16]
	str	r6, [sp, #4]
	ldr	r6, [sp, #68]
	str	r6, [sp, #12]
	ldr	r6, [sp, #52]
	str	r6, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r7, [sp, #40]
	mov	r2, r10
	ldr	r6, [sp, #72]
	mov	r3, r9
	mov	r1, r4
	mov	r0, r5
	str	r7, [sp]
	ldr	r7, [sp, #60]
	str	r6, [sp, #8]
	ldr	r6, [sp, #80]
	str	r7, [sp, #4]
	ldr	r7, [sp, #68]
	str	r6, [sp, #16]
	str	r7, [sp, #12]
	ldr	r7, [sp, #52]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	ldr	r7, [sp, #56]
	mov	r1, r4
	ldr	r6, [sp, #60]
	mov	r3, r9
	ldr	r4, [sp, #68]
	mov	r0, r5
	str	r7, [sp]
	ldr	r7, [sp, #64]
	str	r6, [sp, #4]
	ldr	r6, [sp, #48]
	str	r7, [sp, #8]
	ldr	r7, [sp, #52]
	ldr	r2, [sp, #44]
	str	r4, [sp, #12]
	str	r6, [sp, #16]
	str	r7, [sp, #20]
	bl	libaroma_draw_scale_smooth(PLT)
	mov	r0, r8
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L159:
	movs	r0, #0
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L172:
	bl	libaroma_fb(PLT)
	ldr	r0, [r0, #44]
	str	r0, [sp, #152]
	b	.L160
.L170:
	bl	libaroma_fb(PLT)
	ldr	r5, [r0, #52]
	b	.L158
	.size	libaroma_png9p_draw, .-libaroma_png9p_draw
	.section	.text.libaroma_png_save,"ax",%progbits
	.align	2
	.global	libaroma_png_save
	.thumb
	.thumb_func
	.type	libaroma_png_save, %function
libaroma_png_save:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13}
	sub	sp, sp, #196
	str	r0, [sp, #120]
	ldr	r3, [sp, #120]
	ldr	r5, .L231+16
	str	r1, [sp, #48]
.LPIC28:
	add	r5, pc
	cmp	r3, #0
	beq	.L225
.L174:
	ldr	r1, .L231+20
	movs	r4, #0
	ldr	r0, [sp, #48]
	str	r4, [sp, #124]
.LPIC26:
	add	r1, pc
	str	r4, [sp, #128]
	str	r4, [sp, #112]
	str	r4, [sp, #132]
	bl	fopen(PLT)
	str	r0, [sp, #44]
	cbz	r0, .L176
	ldr	r0, .L231+24
	mov	r1, r4
	mov	r2, r4
	mov	r3, r4
.LPIC27:
	add	r0, pc
	bl	png_create_write_struct(PLT)
	str	r0, [sp, #112]
	cbz	r0, .L183
	bl	png_create_info_struct(PLT)
	str	r0, [sp, #128]
	ldr	r3, [sp, #128]
	cbz	r3, .L183
	ldr	r3, .L231+28
	mov	r2, #392
	ldr	r0, [sp, #112]
	ldr	r1, [r5, r3]
	bl	png_set_longjmp_fn(PLT)
	bl	_setjmp(PLT)
	mov	r4, r0
	cbz	r0, .L226
.L183:
	ldr	r0, [sp, #44]
	bl	fclose(PLT)
	ldr	r3, [sp, #124]
	cbz	r3, .L227
.L176:
	ldr	r3, [sp, #128]
	cbz	r3, .L211
	ldr	r1, [sp, #128]
	movw	r2, #32767
	ldr	r0, [sp, #112]
	mov	r3, #-1
	bl	png_free_data(PLT)
.L211:
	ldr	r3, [sp, #112]
	cbz	r3, .L212
	add	r0, sp, #112
	movs	r1, #0
	bl	png_destroy_write_struct(PLT)
.L212:
	ldr	r3, [sp, #132]
	cbz	r3, .L213
	ldr	r0, [sp, #132]
	bl	free(PLT)
.L213:
	ldr	r0, [sp, #124]
	uxtb	r0, r0
	add	sp, sp, #196
	@ sp needed
	fldmfdd	sp!, {d8-d13}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L227:
	ldr	r0, [sp, #48]
	bl	unlink(PLT)
	b	.L176
.L226:
	ldr	r0, [sp, #112]
	movs	r5, #8
	ldr	r1, [sp, #44]
	bl	png_init_io(PLT)
	ldr	r6, [sp, #120]
	ldr	r1, [sp, #128]
	ldr	r2, [sp, #120]
	ldr	r3, [sp, #120]
	ldr	r0, [sp, #120]
	ldr	r6, [r6, #20]
	ldr	r2, [r2]
	ldr	r7, [r0, #20]
	ldr	r3, [r3, #4]
	cmp	r6, #0
	ite	eq
	moveq	r6, #3
	movne	r6, #4
	ldr	r0, [sp, #112]
	cmp	r7, #0
	ite	eq
	moveq	r7, #2
	movne	r7, #6
	str	r4, [sp, #8]
	str	r7, [sp, #4]
	str	r4, [sp, #12]
	str	r4, [sp, #16]
	add	r4, sp, #164
	str	r5, [sp]
	ldr	r7, .L231+32
	str	r6, [sp, #52]
	bl	png_set_IHDR(PLT)
	ldr	r6, [sp, #48]
	mov	lr, #-1
	ldr	r1, [sp, #128]
	mov	r2, r4
.LPIC29:
	add	r7, pc
	ldr	r0, [sp, #112]
	movs	r3, #1
	str	lr, [sp, #164]
	str	r6, [sp, #172]
	str	r7, [sp, #168]
	bl	png_set_text(PLT)
	ldr	r3, .L231+36
	movs	r0, #3
	ldr	r7, .L231+40
	ldr	r6, .L231+44
.LPIC30:
	add	r3, pc
	str	r3, [sp, #168]
.LPIC31:
	add	r7, pc
	bl	libaroma_info(PLT)
	ldr	r1, [sp, #128]
	mov	r2, r4
	str	r0, [sp, #172]
	movs	r3, #1
	ldr	r0, [sp, #112]
.LPIC32:
	add	r6, pc
	bl	png_set_text(PLT)
	ldr	r1, [sp, #128]
	mov	r2, r4
	movs	r3, #1
	ldr	r0, [sp, #112]
	str	r7, [sp, #168]
	str	r6, [sp, #172]
	bl	png_set_text(PLT)
	ldr	r3, .L231+48
	movs	r0, #7
.LPIC33:
	add	r3, pc
	str	r3, [sp, #168]
	bl	libaroma_info(PLT)
	ldr	r1, [sp, #128]
	mov	r2, r4
	str	r0, [sp, #172]
	movs	r3, #1
	ldr	r0, [sp, #112]
	bl	png_set_text(PLT)
	ldr	r3, .L231+52
	mov	r0, r5
.LPIC34:
	add	r3, pc
	str	r3, [sp, #168]
	bl	libaroma_info(PLT)
	mov	r2, r4
	movs	r3, #1
	ldr	r1, [sp, #128]
	str	r0, [sp, #172]
	ldr	r0, [sp, #112]
	bl	png_set_text(PLT)
	ldr	r1, [sp, #128]
	ldr	r0, [sp, #112]
	bl	png_write_info(PLT)
	ldr	r3, [sp, #120]
	ldr	r7, [sp, #52]
	ldr	r0, [r3]
	mul	r0, r0, r7
	bl	malloc(PLT)
	str	r0, [sp, #132]
	ldr	r3, [sp, #120]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L228
.L180:
	ldr	r3, [sp, #120]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	itt	gt
	movgt	ip, #0
	strgt	ip, [sp, #40]
	ble	.L184
.L210:
	ldr	r2, [sp, #120]
	ldr	r3, [sp, #120]
	ldr	r6, [sp, #40]
	ldr	r2, [r2, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	mul	r2, r2, r6
	ble	.L208
	ldr	r9, [sp, #52]
	movs	r1, #0
	str	r2, [sp, #32]
	lsls	r4, r2, #1
	movs	r6, #2
	str	r9, [sp, #36]
	movs	r5, #1
	mov	r3, r1
	b	.L209
.L229:
	ldr	r0, [sp, #120]
	and	lr, r2, #63488
	ldr	ip, [sp, #132]
	and	fp, r2, #2016
	ldr	r0, [r0, #24]
	ldrb	r0, [r0, r7]	@ zero_extendqisi2
	ldr	r7, [sp, #132]
	ubfx	r10, r0, #3, #2
	lsr	r8, r0, #5
	and	r0, r0, #7
	add	r0, r0, r2, lsl #3
	ldr	r2, [sp, #132]
	add	r10, r10, fp, lsr #3
	add	r8, r8, lr, lsr #8
	strb	r8, [ip, r1]
	strb	r10, [r7, r5]
	strb	r0, [r2, r6]
.L206:
	ldr	r2, [sp, #120]
	adds	r3, r3, #1
	ldr	r8, [sp, #36]
	adds	r4, r4, #2
	add	r6, r6, r9
	ldr	r2, [r2, #20]
	add	r5, r5, r8
	cbz	r2, .L207
	ldr	r2, [sp, #132]
	ldr	r0, [sp, #120]
	ldr	fp, [sp, #24]
	add	r2, r2, r1
	ldr	r0, [r0, #20]
	ldrb	r0, [r0, fp]	@ zero_extendqisi2
	strb	r0, [r2, #3]
.L207:
	ldr	r2, [sp, #120]
	add	r1, r1, r9
	ldr	r2, [r2]
	cmp	r2, r3
	ble	.L208
.L209:
	ldr	r2, [sp, #120]
	ldr	r0, [sp, #120]
	ldr	r7, [sp, #32]
	ldr	r2, [r2, #16]
	ldr	r0, [r0, #24]
	add	r7, r7, r3
	str	r7, [sp, #24]
	ldrh	r2, [r2, r4]
	cmp	r0, #0
	bne	.L229
	and	lr, r2, #63488
	ldr	ip, [sp, #132]
	lsr	lr, lr, #8
	and	r0, r2, #2016
	lsls	r2, r2, #3
	lsrs	r0, r0, #3
	orr	lr, lr, lr, lsr #5
	uxtb	r2, r2
	orr	r8, r0, r0, lsr #6
	strb	lr, [ip, r1]
	ldr	r0, [sp, #132]
	orr	r2, r2, r2, lsr #5
	ldr	lr, [sp, #132]
	strb	r8, [r0, r5]
	strb	r2, [lr, r6]
	b	.L206
.L208:
	ldr	r7, [sp, #40]
	ldr	r1, [sp, #132]
	ldr	r0, [sp, #112]
	adds	r7, r7, #1
	str	r7, [sp, #40]
	bl	png_write_row(PLT)
	ldr	r3, [sp, #120]
	ldr	r3, [r3, #4]
	cmp	r3, r7
	bgt	.L210
.L184:
	movs	r1, #0
	ldr	r0, [sp, #112]
	bl	png_write_end(PLT)
	movs	r3, #1
	str	r3, [sp, #124]
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L231+56
	mov	r2, r0
	mov	r0, r4
.LPIC35:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L231+60
	ldr	r2, [sp, #48]
.LPIC36:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	b	.L183
.L225:
	bl	libaroma_fb(PLT)
	ldr	r3, [r0, #52]
	str	r3, [sp, #120]
	b	.L174
.L228:
	ldr	r3, [sp, #120]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	bne	.L180
	ldr	r2, [sp, #120]
	ldr	r2, [r2, #4]
	cmp	r2, #0
	ble	.L184
	vmov.i16	q5, #63488  @ v8hi
	mov	r8, #9
	vmov.i16	q6, #31  @ v8hi
	vldr	d8, .L231
	vldr	d9, .L231+8
	mov	r4, r3
	movt	r8, 32768
	str	r8, [sp, #108]
.L202:
	ldr	r6, [sp, #132]
	ldr	r1, [sp, #120]
	ldr	r3, [sp, #120]
	ldr	r2, [sp, #120]
	ldr	ip, [r1, #16]
	ldr	r3, [r3, #8]
	ldr	r1, [r2]
	mul	r8, r3, r4
	cmp	r1, #7
	asr	r3, r1, #31
	lsr	r3, r3, #29
	add	r7, ip, r8, lsl #1
	add	r2, r1, r3
	and	r2, r2, #7
	sub	r3, r2, r3
	bgt	.L185
.L188:
	cmp	r3, #0
	ble	.L187
	subs	r3, r1, r3
	lsls	r0, r3, #1
	cmp	r1, r3
	add	r5, r0, r3
	ble	.L187
	rsb	lr, r3, r1
	add	r8, r8, r3
	lsl	r9, lr, #1
	add	ip, ip, r8, lsl #1
	adds	r2, r6, r5
	add	r8, r9, lr
	add	r8, r8, r2
	add	r9, r9, ip
	cmp	ip, r8
	it	cc
	cmpcc	r2, r9
	ite	cs
	movcs	r8, #1
	movcc	r8, #0
	cmp	lr, #15
	ite	ls
	movls	r8, #0
	andhi	r8, r8, #1
	cmp	r8, #0
	beq	.L191
	lsr	r9, lr, #4
	lsl	r8, r9, #4
	cmp	r9, #0
	beq	.L192
	mov	r0, ip
	mov	ip, #0
.L197:
	add	r10, r0, #16
	vld1.16	{q8}, [r0]
	vand	q10, q8, q5
	add	fp, sp, #56
	vld1.16	{q9}, [r10]
	vmovn.i16	d24, q8
	vmovn.i16	d25, q9
	vand	q11, q9, q5
	add	ip, ip, #1
	vand	q9, q9, q4
	mov	r10, r2
	vand	q8, q8, q4
	cmp	r9, ip
	vmovl.u16 q2, d22
	add	r2, r2, #48
	vmovl.u16 q15, d23
	vmovl.u16 q3, d20
	vmovl.u16 q10, d21
	vmovl.u16 q13, d18
	vmovl.u16 q11, d16
	vshr.s32	q15, q15, #8
	vmovl.u16 q8, d17
	vshr.s32	q10, q10, #8
	vmovl.u16 q9, d19
	vshr.s32	q2, q2, #8
	vshr.s32	q3, q3, #8
	vshr.s32	q9, q9, #3
	vmovn.i32	d28, q2
	vmovn.i32	d29, q15
	vshr.s32	q13, q13, #3
	vmovn.i32	d30, q3
	vmovn.i32	d31, q10
	vshr.s32	q11, q11, #3
	vshr.s32	q10, q8, #3
	vmovn.i16	d16, q15
	vmovn.i16	d17, q14
	pld	[r0, #144]
	add	r0, r0, #32
	vstr	d16, [sp, #56]
	vstr	d17, [sp, #64]
	vmovn.i32	d16, q13
	vmovn.i32	d17, q9
	vmovn.i32	d18, q11
	vmovn.i32	d19, q10
	vmovn.i16	d20, q9
	vmovn.i16	d21, q8
	vshl.i8	q8, q12, #3
	vstr	d20, [sp, #72]
	vstr	d21, [sp, #80]
	vstr	d16, [sp, #88]
	vstr	d17, [sp, #96]
	vldmia	fp, {d16-d21}
	vst3.8	{d16, d18, d20}, [r10]!
	vst3.8	{d17, d19, d21}, [r10]
	bhi	.L197
	add	r2, r8, r8, lsl #1
	cmp	lr, r8
	add	r3, r3, r8
	add	r5, r5, r2
	beq	.L187
.L192:
	add	r2, r3, #-2147483648
	add	r5, r5, r6
	subs	r2, r2, #1
	add	r7, r7, r2, lsl #1
.L196:
	ldrh	r2, [r7, #2]!
	adds	r3, r3, #1
	cmp	r1, r3
	add	r5, r5, #3
	and	r6, r2, #63488
	and	r0, r2, #2016
	asr	r6, r6, #8
	asr	r0, r0, #3
	lsl	r2, r2, #3
	strb	r6, [r5, #-3]
	strb	r0, [r5, #-2]
	strb	r2, [r5, #-1]
	bgt	.L196
.L187:
	ldr	r1, [sp, #132]
	adds	r4, r4, #1
	ldr	r0, [sp, #112]
	bl	png_write_row(PLT)
	ldr	r3, [sp, #120]
	ldr	r3, [r3, #4]
	cmp	r3, r4
	bgt	.L202
	b	.L184
.L185:
	rsb	lr, r3, r1
	add	r2, r6, #24
	add	lr, lr, #-1
	mov	r5, r7
	lsr	lr, lr, #3
	mov	r0, r6
	add	lr, lr, lr, lsl #1
	add	lr, r2, lr, lsl #3
.L189:
	vld1.16	{d16-d17}, [r5]!
	add	r2, sp, #136
	vand	q9, q8, q6
	vand	q10, q8, q5
	vand	q8, q8, q4
	vshl.i16	q9, q9, #3
	vshrn.i16	d20, q10, #8
	vshrn.i16	d16, q8, #3
	vmovn.i16	d18, q9
	vstr	d20, [sp, #136]
	vstr	d16, [sp, #144]
	vstr	d18, [sp, #152]
	vld1.64	{d16-d18}, [r2:64]
	vst3.8	{d16-d18}, [r0]!
	cmp	r0, lr
	bne	.L189
	b	.L188
.L191:
	ldr	r8, [sp, #108]
	add	lr, r3, #1
	sub	ip, r1, #9
	cmp	lr, ip
	str	ip, [sp, #104]
	ite	lt
	movlt	lr, #1
	movge	lr, #0
	cmp	r1, r8
	it	lt
	movlt	lr, #0
	cmp	lr, #0
	beq	.L198
	add	lr, r5, #30
	add	r0, r0, r7
	b	.L199
.L232:
	.align	3
.L231:
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.short	2016
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC28+4)
	.word	.LC1-(.LPIC26+4)
	.word	.LC0-(.LPIC27+4)
	.word	longjmp(GOT)
	.word	.LC2-(.LPIC29+4)
	.word	.LC3-(.LPIC30+4)
	.word	.LC4-(.LPIC31+4)
	.word	.LC5-(.LPIC32+4)
	.word	.LC6-(.LPIC33+4)
	.word	.LC7-(.LPIC34+4)
	.word	.LC8-(.LPIC35+4)
	.word	.LC9-(.LPIC36+4)
.L230:
	mov	r0, r8
.L199:
	ldrh	ip, [r0]
	mov	r5, r2
	add	r8, r0, #20
	pld	[r6, lr]
	pld	[r8]
	adds	r3, r3, #10
	and	r9, ip, #63488
	and	r10, ip, #2016
	asr	r9, r9, #8
	asr	r10, r10, #3
	lsl	ip, ip, #3
	pld	[r2, #32]
	strb	r9, [r5], #31
	add	r9, r3, #1
	pld	[r5]
	adds	r2, r2, #30
	strb	r10, [r2, #-29]
	mov	r5, lr
	strb	ip, [r2, #-28]
	add	lr, lr, #30
	ldrh	ip, [r0, #2]
	and	fp, ip, #63488
	and	r10, ip, #2016
	asr	fp, fp, #8
	asr	r10, r10, #3
	lsl	ip, ip, #3
	strb	fp, [r2, #-27]
	strb	r10, [r2, #-26]
	strb	ip, [r2, #-25]
	ldrh	ip, [r0, #4]
	and	fp, ip, #63488
	and	r10, ip, #2016
	asr	fp, fp, #8
	asr	r10, r10, #3
	lsl	ip, ip, #3
	strb	fp, [r2, #-24]
	strb	r10, [r2, #-23]
	strb	ip, [r2, #-22]
	ldrh	ip, [r0, #6]
	and	fp, ip, #63488
	and	r10, ip, #2016
	asr	fp, fp, #8
	asr	r10, r10, #3
	lsl	ip, ip, #3
	strb	fp, [r2, #-21]
	strb	r10, [r2, #-20]
	strb	ip, [r2, #-19]
	ldrh	ip, [r0, #8]
	and	fp, ip, #63488
	and	r10, ip, #2016
	asr	fp, fp, #8
	asr	r10, r10, #3
	lsl	ip, ip, #3
	strb	fp, [r2, #-18]
	strb	r10, [r2, #-17]
	strb	ip, [r2, #-16]
	ldrh	ip, [r0, #10]
	and	fp, ip, #63488
	and	r10, ip, #2016
	asr	fp, fp, #8
	asr	r10, r10, #3
	lsl	ip, ip, #3
	strb	fp, [r2, #-15]
	strb	r10, [r2, #-14]
	strb	ip, [r2, #-13]
	ldrh	ip, [r0, #12]
	and	fp, ip, #63488
	and	r10, ip, #2016
	asr	fp, fp, #8
	asr	r10, r10, #3
	lsl	ip, ip, #3
	strb	fp, [r2, #-12]
	strb	r10, [r2, #-11]
	strb	ip, [r2, #-10]
	ldrh	ip, [r0, #14]
	and	fp, ip, #63488
	and	r10, ip, #2016
	asr	fp, fp, #8
	asr	r10, r10, #3
	lsl	ip, ip, #3
	strb	fp, [r2, #-9]
	strb	r10, [r2, #-8]
	strb	ip, [r2, #-7]
	ldrh	ip, [r0, #16]
	and	fp, ip, #63488
	and	r10, ip, #2016
	asr	fp, fp, #8
	asr	r10, r10, #3
	lsl	ip, ip, #3
	strb	fp, [r2, #-6]
	strb	r10, [r2, #-5]
	strb	ip, [r2, #-4]
	ldrh	r0, [r0, #18]
	ldr	fp, [sp, #104]
	and	r10, r0, #63488
	and	ip, r0, #2016
	asr	r10, r10, #8
	asr	ip, ip, #3
	lsls	r0, r0, #3
	cmp	fp, r9
	strb	r10, [r2, #-3]
	strb	ip, [r2, #-2]
	strb	r0, [r2, #-1]
	bgt	.L230
.L198:
	add	r2, r3, #-2147483648
	add	r5, r5, r6
	subs	r2, r2, #1
	add	r7, r7, r2, lsl #1
.L201:
	ldrh	r2, [r7, #2]!
	adds	r3, r3, #1
	cmp	r1, r3
	add	r5, r5, #3
	and	r6, r2, #63488
	and	r0, r2, #2016
	asr	r6, r6, #8
	asr	r0, r0, #3
	lsl	r2, r2, #3
	strb	r6, [r5, #-3]
	strb	r0, [r5, #-2]
	strb	r2, [r5, #-1]
	bgt	.L201
	b	.L187
	.size	libaroma_png_save, .-libaroma_png_save
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"1.6.10\000"
	.space	1
.LC1:
	.ascii	"wb\000"
	.space	1
.LC2:
	.ascii	"Title\000"
	.space	2
.LC3:
	.ascii	"Author\000"
	.space	1
.LC4:
	.ascii	"Description\000"
.LC5:
	.ascii	"captured from libaroma canvas\000"
	.space	2
.LC6:
	.ascii	"Copyright\000"
	.space	2
.LC7:
	.ascii	"Software\000"
	.space	3
.LC8:
	.ascii	"N/%s: \000"
	.space	1
.LC9:
	.ascii	"libaroma_png_save \"%s\"\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
