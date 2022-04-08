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
	.file	"jdapistd.c"
	.section	.text.output_pass_setup,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	output_pass_setup, %function
output_pass_setup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	cmp	r3, #204
	beq	.L2
	ldr	r3, [r0, #432]
	ldr	r3, [r3]
	blx	r3
	movs	r2, #0
	movs	r3, #204
	str	r2, [r4, #148]
	str	r3, [r4, #20]
.L2:
	ldr	r3, [r4, #432]
	ldr	r3, [r3, #8]
	cbz	r3, .L10
	mov	r6, r4
	mov	r8, #0
	ldr	r3, [r6, #148]!
	b	.L8
.L9:
	ldr	r1, [r4, #8]
	mov	r7, r3
	cbz	r1, .L6
	str	r3, [r1, #4]
	str	r5, [r1, #8]
	ldr	r3, [r1]
	blx	r3
	ldr	r7, [r4, #148]
.L6:
	ldr	r5, [r4, #436]
	movs	r1, #0
	mov	r3, r1
	mov	r0, r4
	mov	r2, r6
	ldr	r5, [r5, #4]
	blx	r5
	ldr	r3, [r4, #148]
	cmp	r3, r7
	beq	.L22
.L8:
	ldr	r5, [r4, #124]
	mov	r0, r4
	cmp	r5, r3
	bhi	.L9
	ldr	r3, [r4, #432]
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r4, #432]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r4, #432]
	movs	r3, #0
	str	r8, [r4, #148]
	ldr	r2, [r2, #8]
	cmp	r2, #0
	bne	.L8
.L10:
	ldr	r3, [r4, #76]
	movs	r0, #1
	cmp	r3, #0
	ite	ne
	movne	r3, #206
	moveq	r3, #205
	str	r3, [r4, #20]
	pop	{r4, r5, r6, r7, r8, pc}
.L22:
	movs	r0, #0
	pop	{r4, r5, r6, r7, r8, pc}
	.size	output_pass_setup, .-output_pass_setup
	.section	.text.jpeg_start_decompress,"ax",%progbits
	.align	2
	.global	jpeg_start_decompress
	.thumb
	.thumb_func
	.type	jpeg_start_decompress, %function
jpeg_start_decompress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, lr}
	mov	r4, r0
	cmp	r3, #202
	beq	.L52
	cmp	r3, #203
	beq	.L27
	cmp	r3, #204
	beq	.L34
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L34:
	mov	r0, r4
	pop	{r4, lr}
	b	output_pass_setup(PLT)
.L52:
	bl	jinit_master_decompress(PLT)
	ldr	r3, [r4, #72]
	cbnz	r3, .L53
	movs	r3, #203
	str	r3, [r4, #20]
.L27:
	ldr	r3, [r4, #448]
	ldr	r3, [r3, #24]
	cbz	r3, .L29
	ldr	r3, [r4, #8]
.L30:
	cbz	r3, .L31
	ldr	r3, [r3]
	mov	r0, r4
	blx	r3
.L31:
	ldr	r3, [r4, #448]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	cbz	r0, .L26
	cmp	r0, #2
	beq	.L29
	ldr	r3, [r4, #8]
	cmp	r3, #0
	beq	.L31
	bic	r0, r0, #2
	cmp	r0, #1
	bne	.L30
	ldr	r2, [r3, #4]
	ldr	r1, [r3, #8]
	adds	r2, r2, #1
	cmp	r2, r1
	str	r2, [r3, #4]
	blt	.L30
	ldr	r2, [r4, #332]
	add	r1, r1, r2
	str	r1, [r3, #8]
	b	.L30
.L29:
	ldr	r3, [r4, #152]
	mov	r0, r4
	str	r3, [r4, #160]
	pop	{r4, lr}
	b	output_pass_setup(PLT)
.L26:
	pop	{r4, pc}
.L53:
	movs	r3, #207
	movs	r0, #1
	str	r3, [r4, #20]
	pop	{r4, pc}
	.size	jpeg_start_decompress, .-jpeg_start_decompress
	.section	.text.jpeg_start_tile_decompress,"ax",%progbits
	.align	2
	.global	jpeg_start_tile_decompress
	.thumb
	.thumb_func
	.type	jpeg_start_tile_decompress, %function
jpeg_start_tile_decompress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0, #20]
	cmp	r3, #202
	beq	.L67
	cmp	r3, #203
	beq	.L58
	cmp	r3, #204
	beq	.L60
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L60:
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	output_pass_setup(PLT)
.L67:
	movs	r5, #1
	str	r5, [r0, #228]
	bl	jinit_master_decompress(PLT)
	ldr	r3, [r4, #72]
	cbnz	r3, .L65
	movs	r3, #203
	str	r3, [r4, #20]
.L58:
	ldr	r3, [r4, #152]
	mov	r0, r4
	str	r3, [r4, #160]
	pop	{r3, r4, r5, lr}
	b	output_pass_setup(PLT)
.L65:
	movs	r3, #207
	mov	r0, r5
	str	r3, [r4, #20]
	pop	{r3, r4, r5, pc}
	.size	jpeg_start_tile_decompress, .-jpeg_start_tile_decompress
	.section	.text.jpeg_read_scanlines,"ax",%progbits
	.align	2
	.global	jpeg_read_scanlines
	.thumb
	.thumb_func
	.type	jpeg_read_scanlines, %function
jpeg_read_scanlines:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	ldr	r5, [r0, #20]
	sub	sp, sp, #8
	mov	r8, r1
	mov	r7, r2
	cmp	r5, #205
	beq	.L69
	ldr	r3, [r0]
	movs	r1, #20
	str	r5, [r3, #24]
	ldr	r2, [r0]
	str	r1, [r3, #20]
	ldr	r3, [r2]
	blx	r3
.L69:
	ldr	r0, [r4, #148]
	ldr	r6, [r4, #124]
	cmp	r0, r6
	bcs	.L80
	ldr	r5, [r4, #8]
	cbz	r5, .L72
	str	r0, [r5, #4]
	mov	r0, r4
	str	r6, [r5, #8]
	ldr	r3, [r5]
	blx	r3
.L72:
	ldr	r0, [r4, #436]
	add	r2, sp, #8
	movs	r5, #0
	mov	r3, r7
	str	r5, [r2, #-8]!
	mov	r1, r8
	ldr	r5, [r0, #4]
	mov	r2, sp
	mov	r0, r4
	blx	r5
	ldr	r3, [sp]
	ldr	r2, [r4, #148]
	mov	r0, r3
	add	r3, r3, r2
	str	r3, [r4, #148]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L80:
	ldr	r3, [r4]
	movs	r2, #123
	mov	r0, r4
	mov	r1, #-1
	str	r2, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	jpeg_read_scanlines, .-jpeg_read_scanlines
	.global	__aeabi_idiv
	.section	.text.jpeg_init_read_tile_scanline,"ax",%progbits
	.align	2
	.global	jpeg_init_read_tile_scanline
	.thumb
	.thumb_func
	.type	jpeg_init_read_tile_scanline, %function
jpeg_init_read_tile_scanline:
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r0
	ldr	r5, [r0, #324]
	sub	sp, sp, #12
	mov	fp, r2
	mov	r9, r1
	ldr	r6, [r0, #320]
	ldr	r0, [r3]
	lsl	r10, r5, #3
	str	r3, [sp]
	mov	r1, r10
	lsls	r6, r6, #3
	bl	__aeabi_idiv(PLT)
	ldr	r8, [fp]
	mov	r5, r0
	ldr	r7, [r9]
	mov	r1, r6
	mul	r10, r10, r0
	mov	r0, r8
	bl	__aeabi_idiv(PLT)
	mov	r1, r7
	bl	__aeabi_idiv(PLT)
	ldr	r1, [sp, #48]
	mul	r7, r0, r7
	ldr	r2, [r1]
	mov	r1, r6
	add	r0, r8, r2
	bl	jdiv_round_up(PLT)
	ldr	r2, [r4, #440]
	mov	r1, r6
	mov	r8, r0
	ldr	r0, [fp]
	str	r2, [sp, #4]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [sp]
	mul	r1, r6, r8
	ldr	r2, [sp, #4]
	subs	r0, r0, r7
	mul	ip, r6, r7
	ldr	r6, [sp, #52]
	str	r0, [r2, #40]
	ldr	r0, [r3]
	ldr	r2, [r6]
	rsb	r0, r10, r0
	add	r2, r2, r0
	str	r2, [r6]
	str	ip, [fp]
	str	r10, [r3]
	ldr	r0, [r4, #28]
	str	ip, [sp, #4]
	bl	jmin(PLT)
	ldr	ip, [sp, #4]
	str	r5, [r4, #156]
	str	r5, [r4, #164]
	rsb	r0, ip, r0
	str	r0, [r4, #32]
	mov	r0, r4
	bl	jinit_color_deconverter(PLT)
	mov	r0, r4
	bl	jpeg_calc_output_dimensions(PLT)
	mov	r0, r4
	bl	jinit_upsampler(PLT)
	ldr	r3, [r4, #432]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #232]
	cmp	r3, #0
	bne	.L85
	mov	r0, r4
	bl	jpeg_decompress_per_scan_setup(PLT)
.L83:
	ldr	r1, [r4, #328]
	movs	r0, #8
	bl	__aeabi_idiv(PLT)
	ldr	r2, [sp, #52]
	mov	r6, r0
	mov	r1, r6
	ldr	r0, [r2]
	bl	jdiv_round_up(PLT)
	ldr	r3, [sp, #52]
	mov	r1, r6
	ldr	r6, [sp, #48]
	str	r0, [r3]
	mov	r0, r10
	ldr	r3, [r4, #120]
	str	r3, [r6]
	bl	__aeabi_idiv(PLT)
	ldr	r6, [r4, #440]
	ldr	r10, [r9]
	ldr	r3, [r4, #448]
	ldr	r2, [r4, #456]
	ldr	lr, [r6, #4]
	ldr	r1, [r6, #8]
	str	r0, [r4, #148]
	mov	r0, r7
	str	lr, [r3]
	str	r1, [r3, #4]
	mov	r1, r10
	str	r9, [r2, #24]
	str	r5, [r4, #156]
	str	r5, [r4, #164]
	str	r7, [r6, #32]
	str	r8, [r6, #36]
	bl	__aeabi_idiv(PLT)
	mov	r1, r10
	str	r0, [r6, #24]
	mov	r0, r8
	bl	jdiv_round_up(PLT)
	str	r0, [r6, #28]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L85:
	ldr	r3, [r4, #456]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	b	.L83
	.size	jpeg_init_read_tile_scanline, .-jpeg_init_read_tile_scanline
	.global	__aeabi_uidivmod
	.global	__aeabi_uidiv
	.section	.text.jpeg_read_tile_scanline,"ax",%progbits
	.align	2
	.global	jpeg_read_tile_scanline
	.thumb
	.thumb_func
	.type	jpeg_read_tile_scanline, %function
jpeg_read_tile_scanline:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #324]
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	sub	sp, sp, #36
	mov	r8, r1
	movs	r0, #8
	mov	r7, r2
	ldr	r1, [r4, #328]
	lsl	r9, r3, #3
	movs	r6, #0
	bl	__aeabi_idiv(PLT)
	ldr	r5, [r4, #232]
	str	r6, [sp, #8]
	cbnz	r5, .L89
	ldr	r5, [r4, #148]
	mov	r1, r0
	mov	r0, r9
	bl	__aeabi_idiv(PLT)
	mov	r6, r0
	mov	r0, r5
	mov	r1, r6
	bl	__aeabi_uidivmod(PLT)
	cbz	r1, .L91
.L89:
	ldr	r5, [r4, #436]
	mov	r0, r4
	add	r2, sp, #8
	mov	r1, r7
	movs	r3, #1
	ldr	r5, [r5, #4]
	blx	r5
	ldr	r3, [sp, #8]
	ldr	r2, [r4, #148]
	mov	r0, r3
	add	r3, r3, r2
	str	r3, [r4, #148]
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L91:
	ldr	r9, [r8, #16]
	mov	r1, r6
	mov	r0, r5
	bl	__aeabi_uidiv(PLT)
	ldr	r3, [r4, #440]
	mov	r6, r0
	ldr	r5, [r9, #36]
	ldr	r1, [r8]
	ldr	r0, [r3, #32]
	bl	__aeabi_idiv(PLT)
	ldr	r3, [r5, r6, lsl #2]
	add	r0, r0, r0, lsl #2
	add	r5, sp, #12
	ldr	lr, [r4, #456]
	add	r6, r3, r0, lsl #2
	ldmia	r6!, {r0, r1, r2, r3}
	ldr	r6, [r6]
	stmia	r5!, {r0, r1, r2, r3}
	add	r3, sp, #32
	str	r6, [r5]
	ldmdb	r3, {r0, r1}
	add	r3, sp, #12
	stmia	sp, {r0, r1}
	mov	r0, r4
	ldr	r5, [lr, #12]
	ldmia	r3, {r1, r2, r3}
	blx	r5
	b	.L89
	.size	jpeg_read_tile_scanline, .-jpeg_read_tile_scanline
	.section	.text.jpeg_read_raw_data,"ax",%progbits
	.align	2
	.global	jpeg_read_raw_data
	.thumb
	.thumb_func
	.type	jpeg_read_raw_data, %function
jpeg_read_raw_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, [r0, #20]
	mov	r6, r1
	mov	r7, r2
	cmp	r3, #206
	beq	.L93
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L93:
	ldr	r0, [r4, #148]
	ldr	r5, [r4, #124]
	cmp	r0, r5
	bcs	.L106
	ldr	r3, [r4, #8]
	cbz	r3, .L96
	str	r0, [r3, #4]
	mov	r0, r4
	str	r5, [r3, #8]
	ldr	r3, [r3]
	blx	r3
.L96:
	ldr	r3, [r4, #324]
	ldr	r5, [r4, #328]
	mul	r5, r5, r3
	cmp	r5, r7
	bhi	.L107
.L97:
	ldr	r3, [r4, #440]
	mov	r1, r6
	mov	r0, r4
	ldr	r3, [r3, #16]
	blx	r3
	cbz	r0, .L95
	ldr	r3, [r4, #148]
	mov	r0, r5
	add	r5, r5, r3
	str	r5, [r4, #148]
.L95:
	pop	{r3, r4, r5, r6, r7, pc}
.L107:
	ldr	r3, [r4]
	movs	r2, #23
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L97
.L106:
	ldr	r3, [r4]
	movs	r2, #123
	mov	r0, r4
	mov	r1, #-1
	str	r2, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
	.size	jpeg_read_raw_data, .-jpeg_read_raw_data
	.section	.text.jpeg_start_output,"ax",%progbits
	.align	2
	.global	jpeg_start_output
	.thumb
	.thumb_func
	.type	jpeg_start_output, %function
jpeg_start_output:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0, #20]
	mov	r5, r1
	cmp	r3, #204
	it	ne
	cmpne	r3, #207
	bne	.L120
.L109:
	ldr	r3, [r4, #448]
	cmp	r5, #1
	it	lt
	movlt	r5, #1
	ldr	r3, [r3, #28]
	cbz	r3, .L111
	ldr	r3, [r4, #152]
	cmp	r5, r3
	it	ge
	movge	r5, r3
.L111:
	str	r5, [r4, #160]
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	output_pass_setup(PLT)
.L120:
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L109
	.size	jpeg_start_output, .-jpeg_start_output
	.section	.text.jpeg_finish_output,"ax",%progbits
	.align	2
	.global	jpeg_finish_output
	.thumb
	.thumb_func
	.type	jpeg_finish_output, %function
jpeg_finish_output:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, lr}
	mov	r4, r0
	sub	r2, r3, #205
	cmp	r2, #1
	bls	.L139
	cmp	r3, #208
	beq	.L126
.L123:
	ldr	r2, [r4]
	movs	r1, #20
	mov	r0, r4
	str	r3, [r2, #24]
	ldr	r3, [r4]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
	ldr	r2, [r4, #152]
	mov	r0, r4
	ldr	r3, [r4, #160]
	cmp	r2, r3
	bgt	.L127
.L140:
	ldr	r3, [r4, #448]
	ldr	r2, [r3, #28]
	cbnz	r2, .L127
	ldr	r3, [r3]
	blx	r3
	cbz	r0, .L125
.L126:
	ldr	r2, [r4, #152]
	mov	r0, r4
	ldr	r3, [r4, #160]
	cmp	r2, r3
	ble	.L140
.L127:
	movs	r0, #1
	movs	r3, #207
	str	r3, [r4, #20]
.L125:
	pop	{r4, pc}
.L139:
	ldr	r2, [r0, #72]
	cmp	r2, #0
	beq	.L123
	ldr	r3, [r0, #432]
	ldr	r3, [r3, #4]
	blx	r3
	movs	r3, #208
	str	r3, [r4, #20]
	b	.L126
	.size	jpeg_finish_output, .-jpeg_finish_output
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
