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
	.section	.text.png_colorspace_endpoints_match,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_colorspace_endpoints_match, %function
png_colorspace_endpoints_match:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r1, #24]
	push	{r4, r5}
	ldr	r4, [r0, #24]
	subs	r5, r3, r2
	cmp	r4, r5
	blt	.L17
	add	r3, r3, r2
	cmp	r4, r3
	ble	.L20
.L17:
	movs	r0, #0
.L2:
	pop	{r4, r5}
	bx	lr
.L20:
	ldr	r4, [r1, #28]
	ldr	r3, [r0, #28]
	subs	r5, r4, r2
	cmp	r3, r5
	blt	.L17
	add	r4, r4, r2
	cmp	r3, r4
	bgt	.L17
	ldr	r4, [r1]
	ldr	r3, [r0]
	subs	r5, r4, r2
	cmp	r3, r5
	blt	.L17
	add	r4, r4, r2
	cmp	r3, r4
	bgt	.L17
	ldr	r4, [r1, #4]
	ldr	r3, [r0, #4]
	subs	r5, r4, r2
	cmp	r3, r5
	blt	.L17
	add	r4, r4, r2
	cmp	r3, r4
	bgt	.L17
	ldr	r4, [r1, #8]
	ldr	r3, [r0, #8]
	subs	r5, r4, r2
	cmp	r3, r5
	blt	.L17
	add	r4, r4, r2
	cmp	r3, r4
	bgt	.L17
	ldr	r4, [r1, #12]
	ldr	r3, [r0, #12]
	subs	r5, r4, r2
	cmp	r3, r5
	blt	.L17
	add	r4, r4, r2
	cmp	r3, r4
	bgt	.L17
	ldr	r4, [r1, #16]
	ldr	r3, [r0, #16]
	subs	r5, r4, r2
	cmp	r3, r5
	blt	.L17
	add	r4, r4, r2
	cmp	r3, r4
	bgt	.L17
	ldr	r1, [r1, #20]
	ldr	r3, [r0, #20]
	subs	r0, r1, r2
	cmp	r3, r0
	blt	.L17
	add	r2, r2, r1
	cmp	r3, r2
	ite	gt
	movgt	r0, #0
	movle	r0, #1
	b	.L2
	.size	png_colorspace_endpoints_match, .-png_colorspace_endpoints_match
	.global	__aeabi_uidiv
	.section	.text.png_zalloc,"ax",%progbits
	.align	2
	.global	png_zalloc
	.thumb
	.thumb_func
	.type	png_zalloc, %function
png_zalloc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r0, .L22
	mov	r5, r1
	mov	r0, #-1
	mov	r1, r2
	mov	r6, r2
	bl	__aeabi_uidiv(PLT)
	cmp	r0, r5
	mov	r0, r4
	bls	.L27
	mul	r1, r5, r6
	pop	{r4, r5, r6, lr}
	b	png_malloc_warn(PLT)
.L27:
	ldr	r1, .L28
.LPIC0:
	add	r1, pc
	bl	png_warning(PLT)
.L22:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L29:
	.align	2
.L28:
	.word	.LC1-(.LPIC0+4)
	.size	png_zalloc, .-png_zalloc
	.section	.text.png_zfree,"ax",%progbits
	.align	2
	.global	png_zfree
	.thumb
	.thumb_func
	.type	png_zfree, %function
png_zfree:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	png_free(PLT)
	.size	png_zfree, .-png_zfree
	.section	.text.png_image_free_function,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_image_free_function, %function
png_image_free_function:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r7, r0
	ldr	r6, [r0]
	sub	sp, sp, #24
	ldr	r3, [r6]
	cbz	r3, .L37
	ldrb	r2, [r6, #20]	@ zero_extendqisi2
	lsls	r1, r2, #30
	bmi	.L42
.L34:
	mov	r5, r6
	mov	r4, sp
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	str	sp, [r7]
	stmia	r4, {r0, r1}
	mov	r1, r6
	ldr	r0, [sp]
	bl	png_free(PLT)
	ldrb	r2, [sp, #20]	@ zero_extendqisi2
	mov	r0, sp
	add	r1, sp, #4
	ands	r2, r2, #1
	bne	.L43
	bl	png_destroy_read_struct(PLT)
	movs	r0, #1
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L42:
	ldr	r0, [r3, #428]
	bfc	r2, #1, #1
	strb	r2, [r6, #20]
	cmp	r0, #0
	beq	.L34
	movs	r2, #0
	str	r2, [r3, #428]
	bl	fclose(PLT)
	b	.L34
.L43:
	bl	png_destroy_write_struct(PLT)
	movs	r0, #1
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L37:
	mov	r0, r3
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
	.size	png_image_free_function, .-png_image_free_function
	.section	.text.png_icc_profile_error,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_icc_profile_error, %function
png_icc_profile_error:
	@ args = 4, pretend = 0, frame = 224
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #228
	mov	r5, r1
	mov	r9, r0
	mov	r8, r2
	mov	r7, r3
	ldr	r6, [sp, #256]
	cbz	r1, .L45
	ldrh	r3, [r1, #74]
	mvn	r3, r3, lsl #17
	mvn	r3, r3, lsr #17
	strh	r3, [r1, #74]	@ movhi
.L45:
	ldr	r3, .L67
	add	r4, sp, #28
	movs	r1, #196
	movs	r2, #0
	mov	r0, r4
.LPIC1:
	add	r3, pc
	bl	png_safecat(PLT)
	mov	r2, r0
	mov	r3, r8
	add	r1, r2, #79
	mov	r0, r4
	bl	png_safecat(PLT)
	ldr	r3, .L67+4
	mov	r2, r0
	movs	r1, #196
	mov	r0, r4
.LPIC2:
	add	r3, pc
	bl	png_safecat(PLT)
	lsrs	r1, r7, #24
	mov	r8, r0
	sub	r3, r1, #48
	cmp	r1, #32
	it	ne
	cmpne	r3, #9
	bls	.L46
	bic	r3, r1, #32
	subs	r3, r3, #65
	cmp	r3, #25
	bls	.L46
.L47:
	mov	r3, r7
	mov	r1, r4
	movs	r2, #3
	add	r0, sp, #4
	bl	png_format_number(PLT)
	mov	r2, r8
	mov	r3, r0
	movs	r1, #196
	mov	r0, r4
	bl	png_safecat(PLT)
	ldr	r3, .L67+8
	mov	r2, r0
	movs	r1, #196
	mov	r0, r4
.LPIC3:
	add	r3, pc
	bl	png_safecat(PLT)
	mov	r2, r0
.L57:
	mov	r3, r6
	mov	r0, r4
	movs	r1, #196
	bl	png_safecat(PLT)
	mov	r0, r9
	mov	r1, r4
	cmp	r5, #0
	ite	eq
	moveq	r2, #1
	movne	r2, #2
	bl	png_chunk_report(PLT)
	movs	r0, #0
	add	sp, sp, #228
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L46:
	lsrs	r3, r7, #16
	uxtb	r2, r3
	sub	r0, r2, #48
	cmp	r2, #32
	it	ne
	cmpne	r0, #9
	bls	.L48
	and	r3, r3, #223
	subs	r3, r3, #65
	cmp	r3, #25
	bhi	.L47
.L48:
	lsrs	r3, r7, #8
	uxtb	r0, r3
	sub	lr, r0, #48
	cmp	r0, #32
	it	ne
	cmpne	lr, #9
	bls	.L49
	and	r3, r3, #223
	subs	r3, r3, #65
	cmp	r3, #25
	bhi	.L47
.L49:
	uxtb	lr, r7
	sub	r3, lr, #48
	cmp	lr, #32
	it	ne
	cmpne	r3, #9
	bls	.L50
	and	r3, r7, #223
	subs	r3, r3, #65
	cmp	r3, #25
	bhi	.L47
.L50:
	sub	r7, r1, #32
	movs	r3, #39
	cmp	r7, #94
	strb	r3, [r4, r8]
	it	hi
	movhi	r7, #63
	add	r3, r4, r8
	bhi	.L56
	uxtb	r7, r1
.L56:
	sub	r1, r2, #32
	strb	r7, [r3, #1]
	cmp	r1, #94
	mov	r7, #39
	it	ls
	uxtbls	r1, r2
	sub	r2, r0, #32
	it	hi
	movhi	r1, #63
	strb	r7, [r3, #5]
	cmp	r2, #94
	sub	r2, lr, #32
	ite	ls
	uxtbls	r0, r0
	movhi	r0, #63
	cmp	r2, #94
	strb	r1, [r3, #2]
	it	ls
	uxtbls	lr, lr
	add	r1, sp, #224
	strb	r0, [r3, #3]
	it	hi
	movhi	lr, #63
	add	r2, r8, #8
	movs	r0, #58
	add	r8, r8, r1
	movs	r1, #32
	strb	lr, [r3, #4]
	strb	r0, [r8, #-190]
	strb	r1, [r8, #-189]
	b	.L57
.L68:
	.align	2
.L67:
	.word	.LC2-(.LPIC1+4)
	.word	.LC3-(.LPIC2+4)
	.word	.LC4-(.LPIC3+4)
	.size	png_icc_profile_error, .-png_icc_profile_error
	.section	.text.png_set_sig_bytes,"ax",%progbits
	.align	2
	.global	png_set_sig_bytes
	.thumb
	.thumb_func
	.type	png_set_sig_bytes, %function
png_set_sig_bytes:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L78
	cmp	r1, #8
	push	{r3, lr}
	bgt	.L79
	cmp	r1, #0
	ite	ge
	uxtbge	r1, r1
	movlt	r1, #0
	strb	r1, [r0, #681]
	pop	{r3, pc}
.L78:
	bx	lr
.L79:
	ldr	r1, .L80
.LPIC4:
	add	r1, pc
	bl	png_error(PLT)
.L81:
	.align	2
.L80:
	.word	.LC5-(.LPIC4+4)
	.size	png_set_sig_bytes, .-png_set_sig_bytes
	.section	.text.png_sig_cmp,"ax",%progbits
	.align	2
	.global	png_sig_cmp
	.thumb
	.thumb_func
	.type	png_sig_cmp, %function
png_sig_cmp:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r3, r1
	ldr	r5, .L90
	mov	r7, r0
	sub	sp, sp, #12
	cmp	r2, #8
	mov	r4, sp
	mov	r6, sp
.LPIC5:
	add	r5, pc
	ldr	r0, [r5]	@ unaligned
	ldr	r1, [r5, #4]	@ unaligned
	stmia	r4!, {r0, r1}
	bhi	.L86
	cbz	r2, .L88
.L83:
	cmp	r3, #7
	bhi	.L88
	adds	r1, r2, r3
	adds	r0, r7, r3
	cmp	r1, #8
	add	r1, r6, r3
	it	hi
	rsbhi	r2, r3, #8
	bl	memcmp(PLT)
.L84:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L86:
	movs	r2, #8
	b	.L83
.L88:
	mov	r0, #-1
	b	.L84
.L91:
	.align	2
.L90:
	.word	.LANCHOR0-(.LPIC5+4)
	.size	png_sig_cmp, .-png_sig_cmp
	.section	.text.png_reset_crc,"ax",%progbits
	.align	2
	.global	png_reset_crc
	.thumb
	.thumb_func
	.type	png_reset_crc, %function
png_reset_crc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	movs	r0, #0
	mov	r1, r0
	mov	r2, r0
	bl	crc32(PLT)
	str	r0, [r4, #652]
	pop	{r4, pc}
	.size	png_reset_crc, .-png_reset_crc
	.section	.text.png_calculate_crc,"ax",%progbits
	.align	2
	.global	png_calculate_crc
	.thumb
	.thumb_func
	.type	png_calculate_crc, %function
png_calculate_crc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #616]
	push	{r4, lr}
	mov	r4, r0
	tst	r3, #536870912
	ldr	r3, [r0, #452]
	beq	.L95
	and	r3, r3, #768
	cmp	r3, #768
	beq	.L106
.L97:
	cbz	r2, .L94
	ldr	r0, [r4, #652]
	bl	crc32(PLT)
	str	r0, [r4, #652]
.L94:
	pop	{r4, pc}
.L95:
	lsls	r3, r3, #20
	bpl	.L97
	pop	{r4, pc}
.L106:
	pop	{r4, pc}
	.size	png_calculate_crc, .-png_calculate_crc
	.section	.text.png_create_info_struct,"ax",%progbits
	.align	2
	.global	png_create_info_struct
	.thumb
	.thumb_func
	.type	png_create_info_struct, %function
png_create_info_struct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L109
	push	{r4, lr}
	mov	r1, #268
	bl	png_malloc_base(PLT)
	mov	r4, r0
	cbz	r0, .L110
	movs	r1, #0
	mov	r2, #268
	bl	memset(PLT)
	mov	r0, r4
	pop	{r4, pc}
.L110:
	pop	{r4, pc}
.L109:
	bx	lr
	.size	png_create_info_struct, .-png_create_info_struct
	.section	.text.png_info_init_3,"ax",%progbits
	.align	2
	.global	png_info_init_3
	.thumb
	.thumb_func
	.type	png_info_init_3, %function
png_info_init_3:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r0, [r0]
	cbz	r0, .L112
	cmp	r1, #268
	bcc	.L116
	movs	r1, #0
	mov	r2, #268
	pop	{r3, r4, r5, lr}
	b	memset(PLT)
.L116:
	movs	r5, #0
	str	r5, [r4]
	bl	free(PLT)
	mov	r0, r5
	mov	r1, #268
	bl	png_malloc_base(PLT)
	movs	r1, #0
	str	r0, [r4]
	mov	r2, #268
	pop	{r3, r4, r5, lr}
	b	memset(PLT)
.L112:
	pop	{r3, r4, r5, pc}
	.size	png_info_init_3, .-png_info_init_3
	.section	.text.png_data_freer,"ax",%progbits
	.align	2
	.global	png_data_freer
	.thumb
	.thumb_func
	.type	png_data_freer, %function
png_data_freer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	beq	.L122
	cmp	r2, #1
	push	{r3, lr}
	beq	.L123
	cmp	r2, #2
	bne	.L120
	ldr	r2, [r1, #232]
	bic	r3, r2, r3
	str	r3, [r1, #232]
	pop	{r3, pc}
.L122:
	bx	lr
.L123:
	ldr	r2, [r1, #232]
	orrs	r3, r3, r2
	str	r3, [r1, #232]
	pop	{r3, pc}
.L120:
	ldr	r1, .L124
.LPIC6:
	add	r1, pc
	bl	png_error(PLT)
.L125:
	.align	2
.L124:
	.word	.LC6-(.LPIC6+4)
	.size	png_data_freer, .-png_data_freer
	.section	.text.png_free_data,"ax",%progbits
	.align	2
	.global	png_free_data
	.thumb
	.thumb_func
	.type	png_free_data, %function
png_free_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r4, r1
	ite	eq
	moveq	r9, #1
	movne	r9, #0
	beq	.L126
	ldr	r5, [r1, #232]
	mov	r8, r3
	mov	r7, r2
	mov	r6, r0
	and	r3, r5, #16384
	tst	r3, r2
	beq	.L128
	cmp	r8, #-1
	beq	.L226
	ldr	r3, [r1, #136]
	cbz	r3, .L128
	rsb	r10, r8, r8, lsl #3
	lsl	r10, r10, #2
	add	r3, r3, r10
	ldr	r1, [r3, #4]
	cbz	r1, .L128
	bl	png_free(PLT)
	ldr	r3, [r4, #136]
	ldr	r5, [r4, #232]
	add	r3, r3, r10
	str	r9, [r3, #4]
.L128:
	and	r3, r7, #8192
	tst	r3, r5
	bne	.L227
	and	r3, r7, #256
	tst	r3, r5
	bne	.L228
.L134:
	and	r3, r7, #128
	tst	r3, r5
	bne	.L229
.L135:
	and	r3, r7, #16
	tst	r3, r5
	bne	.L230
.L140:
	and	r3, r7, #32
	tst	r3, r5
	beq	.L141
.L234:
	cmp	r8, #-1
	beq	.L142
	ldr	r3, [r4, #244]
	cbz	r3, .L143
	lsl	r9, r8, #4
	mov	r0, r6
	ldr	r1, [r3, r9]
	bl	png_free(PLT)
	ldr	r3, [r4, #244]
	mov	r0, r6
	add	r3, r3, r9
	ldr	r1, [r3, #8]
	bl	png_free(PLT)
	ldr	r2, [r4, #244]
	movs	r3, #0
	ldr	r5, [r4, #232]
	add	r1, r2, r9
	str	r3, [r2, r9]
	str	r3, [r1, #8]
.L143:
	and	r3, r7, #512
	tst	r3, r5
	bne	.L161
.L149:
	and	r3, r7, #8
	tst	r3, r5
	bne	.L231
.L153:
	and	r3, r7, #4096
	tst	r3, r5
	bne	.L232
.L154:
	and	r3, r7, #64
	tst	r3, r5
	beq	.L155
.L233:
	ldr	r1, [r4, #264]
	cbz	r1, .L156
	ldr	r3, [r4, #4]
	cbz	r3, .L157
	movs	r5, #0
	mov	r9, r5
.L159:
	ldr	r1, [r1, r5, lsl #2]
	mov	r0, r6
	bl	png_free(PLT)
	ldr	r3, [r4, #264]
	ldr	r2, [r4, #4]
	str	r9, [r3, r5, lsl #2]
	adds	r5, r5, #1
	cmp	r5, r2
	ldr	r1, [r4, #264]
	bcc	.L159
.L157:
	mov	r0, r6
	bl	png_free(PLT)
	ldr	r5, [r4, #232]
	movs	r3, #0
	str	r3, [r4, #264]
.L156:
	ldr	r3, [r4, #8]
	bic	r3, r3, #32768
	str	r3, [r4, #8]
.L155:
	cmp	r8, #-1
	itt	ne
	bicne	r7, r7, #16896
	bicne	r7, r7, #32
	bic	r5, r5, r7
	str	r5, [r4, #232]
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L141:
	and	r3, r7, #512
	tst	r3, r5
	beq	.L149
	cmp	r8, #-1
	beq	.L148
.L161:
	ldr	r3, [r4, #236]
	cmp	r3, #0
	beq	.L149
	add	r9, r8, r8, lsl #2
	mov	r0, r6
	lsl	r9, r9, #2
	add	r3, r3, r9
	ldr	r1, [r3, #8]
	bl	png_free(PLT)
	ldr	r3, [r4, #236]
	movs	r2, #0
	ldr	r5, [r4, #232]
	add	r3, r3, r9
	str	r2, [r3, #8]
	and	r3, r7, #8
	tst	r3, r5
	beq	.L153
	b	.L231
.L126:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L228:
	mov	r0, r6
	ldr	r1, [r4, #256]
	bl	png_free(PLT)
	mov	r0, r6
	ldr	r1, [r4, #260]
	bl	png_free(PLT)
	ldr	r5, [r4, #232]
	movs	r3, #0
	ldr	r2, [r4, #8]
	str	r3, [r4, #256]
	str	r3, [r4, #260]
	and	r3, r7, #128
	tst	r3, r5
	bic	r2, r2, #16384
	str	r2, [r4, #8]
	beq	.L135
.L229:
	mov	r0, r6
	ldr	r1, [r4, #208]
	bl	png_free(PLT)
	ldr	r1, [r4, #220]
	mov	r0, r6
	bl	png_free(PLT)
	ldr	r1, [r4, #224]
	movs	r5, #0
	str	r5, [r4, #208]
	str	r5, [r4, #220]
	cbz	r1, .L136
	ldrb	r3, [r4, #229]	@ zero_extendqisi2
	cbz	r3, .L137
	mov	r9, r5
.L139:
	ldr	r1, [r1, r5, lsl #2]
	mov	r0, r6
	bl	png_free(PLT)
	ldr	r3, [r4, #224]
	str	r9, [r3, r5, lsl #2]
	adds	r5, r5, #1
	ldrb	r3, [r4, #229]	@ zero_extendqisi2
	ldr	r1, [r4, #224]
	cmp	r5, r3
	bcc	.L139
.L137:
	mov	r0, r6
	bl	png_free(PLT)
	movs	r3, #0
	str	r3, [r4, #224]
.L136:
	ldr	r3, [r4, #8]
	ldr	r5, [r4, #232]
	bic	r3, r3, #1024
	str	r3, [r4, #8]
	and	r3, r7, #16
	tst	r3, r5
	beq	.L140
	b	.L230
.L231:
	mov	r0, r6
	ldr	r1, [r4, #204]
	bl	png_free(PLT)
	ldr	r3, [r4, #8]
	movs	r2, #0
	ldr	r5, [r4, #232]
	str	r2, [r4, #204]
	bic	r3, r3, #64
	str	r3, [r4, #8]
	and	r3, r7, #4096
	tst	r3, r5
	beq	.L154
	b	.L232
.L227:
	mov	r0, r6
	ldr	r1, [r4, #156]
	bl	png_free(PLT)
	ldr	r3, [r4, #8]
	movs	r2, #0
	ldr	r5, [r4, #232]
	str	r2, [r4, #156]
	bic	r3, r3, #16
	str	r3, [r4, #8]
	and	r3, r7, #256
	tst	r3, r5
	beq	.L134
	b	.L228
.L232:
	mov	r0, r6
	ldr	r1, [r4, #16]
	bl	png_free(PLT)
	ldr	r5, [r4, #232]
	movs	r3, #0
	ldr	r2, [r4, #8]
	str	r3, [r4, #16]
	strh	r3, [r4, #20]	@ movhi
	and	r3, r7, #64
	tst	r3, r5
	bic	r2, r2, #8
	str	r2, [r4, #8]
	beq	.L155
	b	.L233
.L230:
	mov	r0, r6
	ldr	r1, [r4, #116]
	bl	png_free(PLT)
	mov	r0, r6
	ldr	r1, [r4, #120]
	bl	png_free(PLT)
	ldr	r5, [r4, #232]
	movs	r3, #0
	ldr	r2, [r4, #8]
	str	r3, [r4, #116]
	str	r3, [r4, #120]
	and	r3, r7, #32
	tst	r3, r5
	bic	r2, r2, #4096
	str	r2, [r4, #8]
	beq	.L141
	b	.L234
.L142:
	ldr	r3, [r4, #248]
	cmp	r3, #0
	beq	.L144
	it	gt
	movgt	r5, #0
	ble	.L146
.L147:
	mov	r3, r5
	mov	r0, r6
	mov	r1, r4
	movs	r2, #32
	bl	png_free_data(PLT)
	ldr	r3, [r4, #248]
	adds	r5, r5, #1
	cmp	r5, r3
	blt	.L147
.L146:
	mov	r0, r6
	ldr	r1, [r4, #244]
	bl	png_free(PLT)
	ldr	r5, [r4, #232]
	movs	r3, #0
	str	r3, [r4, #244]
	str	r3, [r4, #248]
.L144:
	ldr	r3, [r4, #8]
	and	r2, r7, #512
	tst	r2, r5
	bic	r3, r3, #8192
	str	r3, [r4, #8]
	beq	.L149
.L148:
	ldr	r3, [r4, #240]
	cmp	r3, #0
	beq	.L149
	it	gt
	movgt	r5, #0
	ble	.L151
.L152:
	mov	r3, r5
	mov	r0, r6
	mov	r1, r4
	mov	r2, #512
	bl	png_free_data(PLT)
	ldr	r3, [r4, #240]
	adds	r5, r5, #1
	cmp	r5, r3
	blt	.L152
.L151:
	mov	r0, r6
	ldr	r1, [r4, #236]
	bl	png_free(PLT)
	movs	r3, #0
	ldr	r5, [r4, #232]
	str	r3, [r4, #236]
	str	r3, [r4, #240]
	b	.L149
.L226:
	ldr	r3, [r1, #128]
	cmp	r3, #0
	it	gt
	movgt	r5, r9
	ble	.L131
.L132:
	mov	r3, r5
	mov	r0, r6
	mov	r1, r4
	mov	r2, #16384
	bl	png_free_data(PLT)
	ldr	r3, [r4, #128]
	adds	r5, r5, #1
	cmp	r5, r3
	blt	.L132
.L131:
	mov	r0, r6
	ldr	r1, [r4, #136]
	bl	png_free(PLT)
	movs	r3, #0
	ldr	r5, [r4, #232]
	str	r3, [r4, #136]
	str	r3, [r4, #128]
	b	.L128
	.size	png_free_data, .-png_free_data
	.section	.text.png_destroy_info_struct,"ax",%progbits
	.align	2
	.global	png_destroy_info_struct
	.thumb
	.thumb_func
	.type	png_destroy_info_struct, %function
png_destroy_info_struct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L247
	mov	r3, r1
	cbz	r1, .L247
	push	{r4, r5, r6, lr}
	ldr	r4, [r1]
	cbz	r4, .L235
	movs	r5, #0
	mov	r1, r4
	str	r5, [r3]
	movw	r2, #32767
	mov	r3, #-1
	mov	r6, r0
	bl	png_free_data(PLT)
	mov	r1, r5
	mov	r0, r4
	mov	r2, #268
	bl	memset(PLT)
	mov	r0, r6
	mov	r1, r4
	pop	{r4, r5, r6, lr}
	b	png_free(PLT)
.L247:
	bx	lr
.L235:
	pop	{r4, r5, r6, pc}
	.size	png_destroy_info_struct, .-png_destroy_info_struct
	.section	.text.png_get_io_ptr,"ax",%progbits
	.align	2
	.global	png_get_io_ptr
	.thumb
	.thumb_func
	.type	png_get_io_ptr, %function
png_get_io_ptr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L249
	ldr	r0, [r0, #428]
.L249:
	bx	lr
	.size	png_get_io_ptr, .-png_get_io_ptr
	.section	.text.png_init_io,"ax",%progbits
	.align	2
	.global	png_init_io
	.thumb
	.thumb_func
	.type	png_init_io, %function
png_init_io:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L251
	str	r1, [r0, #428]
.L251:
	bx	lr
	.size	png_init_io, .-png_init_io
	.section	.text.png_save_int_32,"ax",%progbits
	.align	2
	.global	png_save_int_32
	.thumb
	.thumb_func
	.type	png_save_int_32, %function
png_save_int_32:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4}
	asrs	r2, r1, #16
	asrs	r4, r1, #24
	asrs	r3, r1, #8
	strb	r4, [r0]
	strb	r1, [r0, #3]
	strb	r2, [r0, #1]
	strb	r3, [r0, #2]
	ldr	r4, [sp], #4
	bx	lr
	.size	png_save_int_32, .-png_save_int_32
	.section	.text.png_convert_to_rfc1123_buffer,"ax",%progbits
	.align	2
	.global	png_convert_to_rfc1123_buffer
	.thumb
	.thumb_func
	.type	png_convert_to_rfc1123_buffer, %function
png_convert_to_rfc1123_buffer:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	sub	sp, sp, #8
	cmp	r0, #0
	beq	.L271
	ldrh	r2, [r1]
	movw	r3, #9999
	mov	r4, r1
	cmp	r2, r3
	bhi	.L271
	ldrb	r3, [r1, #2]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #11
	bhi	.L271
	ldrb	r3, [r1, #3]	@ zero_extendqisi2
	subs	r2, r3, #1
	cmp	r2, #30
	bhi	.L271
	ldrb	r2, [r1, #4]	@ zero_extendqisi2
	cmp	r2, #23
	bhi	.L271
	ldrb	r2, [r1, #5]	@ zero_extendqisi2
	cmp	r2, #59
	bhi	.L271
	ldrb	r2, [r1, #6]	@ zero_extendqisi2
	cmp	r2, #60
	bhi	.L271
	add	r6, sp, #5
	movs	r2, #1
	mov	r1, r6
	mov	r0, sp
	bl	png_format_number(PLT)
	movs	r1, #29
	mov	r3, r0
	movs	r2, #0
	mov	r0, r5
	bl	png_safecat(PLT)
	cmp	r0, #27
	mov	r2, r0
	ittt	ls
	movls	r3, #32
	addls	r2, r2, #1
	strbls	r3, [r5, r0]
	movs	r1, #29
	ldrb	lr, [r4, #2]	@ zero_extendqisi2
	mov	r0, r5
	ldr	r3, .L273
	add	lr, lr, #-1
.LPIC7:
	add	r3, pc
	add	r3, r3, lr, lsl #2
	bl	png_safecat(PLT)
	cmp	r0, #27
	mov	r8, r0
	ittt	ls
	movls	r3, #32
	addls	r8, r0, #1
	strbls	r3, [r5, r0]
	mov	r1, r6
	movs	r2, #1
	ldrh	r3, [r4]
	mov	r0, sp
	bl	png_format_number(PLT)
	mov	r2, r8
	mov	r3, r0
	movs	r1, #29
	mov	r0, r5
	bl	png_safecat(PLT)
	cmp	r0, #27
	mov	r8, r0
	ittt	ls
	movls	r3, #32
	addls	r8, r0, #1
	strbls	r3, [r5, r0]
	mov	r1, r6
	movs	r2, #2
	ldrb	r3, [r4, #4]	@ zero_extendqisi2
	mov	r0, sp
	bl	png_format_number(PLT)
	mov	r2, r8
	mov	r3, r0
	movs	r1, #29
	mov	r0, r5
	bl	png_safecat(PLT)
	cmp	r0, #27
	mov	r8, r0
	ittt	ls
	movls	r3, #58
	addls	r8, r0, #1
	strbls	r3, [r5, r0]
	mov	r1, r6
	movs	r2, #2
	ldrb	r3, [r4, #5]	@ zero_extendqisi2
	mov	r0, sp
	bl	png_format_number(PLT)
	mov	r2, r8
	mov	r3, r0
	movs	r1, #29
	mov	r0, r5
	bl	png_safecat(PLT)
	cmp	r0, #27
	mov	r8, r0
	ittt	ls
	movls	r3, #58
	addls	r8, r0, #1
	strbls	r3, [r5, r0]
	mov	r1, r6
	ldrb	r3, [r4, #6]	@ zero_extendqisi2
	movs	r2, #2
	mov	r0, sp
	bl	png_format_number(PLT)
	mov	r2, r8
	mov	r3, r0
	movs	r1, #29
	mov	r0, r5
	bl	png_safecat(PLT)
	ldr	r3, .L273+4
	mov	r2, r0
	movs	r1, #29
	mov	r0, r5
.LPIC8:
	add	r3, pc
	bl	png_safecat(PLT)
	movs	r0, #1
	b	.L259
.L271:
	movs	r0, #0
.L259:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L274:
	.align	2
.L273:
	.word	.LANCHOR1-(.LPIC7+4)
	.word	.LC7-(.LPIC8+4)
	.size	png_convert_to_rfc1123_buffer, .-png_convert_to_rfc1123_buffer
	.section	.text.png_convert_to_rfc1123,"ax",%progbits
	.align	2
	.global	png_convert_to_rfc1123
	.thumb
	.thumb_func
	.type	png_convert_to_rfc1123, %function
png_convert_to_rfc1123:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	cbz	r0, .L277
	addw	r5, r0, #885
	mov	r0, r5
	bl	png_convert_to_rfc1123_buffer(PLT)
	mov	r6, r0
	cbz	r0, .L280
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L277:
	pop	{r4, r5, r6, pc}
.L280:
	ldr	r1, .L281
	mov	r0, r4
.LPIC9:
	add	r1, pc
	bl	png_warning(PLT)
	mov	r0, r6
	pop	{r4, r5, r6, pc}
.L282:
	.align	2
.L281:
	.word	.LC8-(.LPIC9+4)
	.size	png_convert_to_rfc1123, .-png_convert_to_rfc1123
	.section	.text.png_get_copyright,"ax",%progbits
	.align	2
	.global	png_get_copyright
	.thumb
	.thumb_func
	.type	png_get_copyright, %function
png_get_copyright:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L284
.LPIC10:
	add	r0, pc
	bx	lr
.L285:
	.align	2
.L284:
	.word	.LC9-(.LPIC10+4)
	.size	png_get_copyright, .-png_get_copyright
	.section	.text.png_get_header_ver,"ax",%progbits
	.align	2
	.global	png_get_header_ver
	.thumb
	.thumb_func
	.type	png_get_header_ver, %function
png_get_header_ver:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L287
.LPIC11:
	add	r0, pc
	bx	lr
.L288:
	.align	2
.L287:
	.word	.LC10-(.LPIC11+4)
	.size	png_get_header_ver, .-png_get_header_ver
	.section	.text.png_user_version_check,"ax",%progbits
	.align	2
	.global	png_user_version_check
	.thumb
	.thumb_func
	.type	png_user_version_check, %function
png_user_version_check:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r8, r1
	sub	sp, sp, #128
	mov	r7, r0
	cbz	r1, .L290
	movs	r4, #0
.L293:
	movs	r0, #0
	ldrb	r6, [r8, r4]	@ zero_extendqisi2
	bl	png_get_header_ver(PLT)
	ldrb	r2, [r0, r4]	@ zero_extendqisi2
	mov	r5, r4
	movs	r0, #0
	adds	r4, r4, #1
	cmp	r2, r6
	ittt	ne
	ldrne	r2, [r7, #452]
	orrne	r2, r2, #131072
	strne	r2, [r7, #452]
	bl	png_get_header_ver(PLT)
	ldrb	r5, [r0, r5]	@ zero_extendqisi2
	cmp	r5, #0
	bne	.L293
	ldr	r3, [r7, #452]
	lsls	r3, r3, #14
	bpl	.L297
	mov	r0, r5
	ldrb	r4, [r8]	@ zero_extendqisi2
	bl	png_get_header_ver(PLT)
	ldrb	r3, [r0]	@ zero_extendqisi2
	cmp	r3, r4
	bne	.L294
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, #49
	beq	.L302
.L296:
	cmp	r3, #48
	beq	.L303
.L297:
	movs	r0, #1
	add	sp, sp, #128
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L290:
	ldr	r3, [r0, #452]
	orr	r3, r3, #131072
	str	r3, [r0, #452]
.L294:
	ldr	r3, .L304
	movs	r1, #128
	mov	r0, sp
	movs	r2, #0
.LPIC20:
	add	r3, pc
	bl	png_safecat(PLT)
	mov	r3, r8
	mov	r2, r0
	movs	r1, #128
	mov	r0, sp
	bl	png_safecat(PLT)
	ldr	r3, .L304+4
	mov	r2, r0
	movs	r1, #128
	mov	r0, sp
.LPIC21:
	add	r3, pc
	bl	png_safecat(PLT)
	mov	r5, r0
	movs	r0, #0
	bl	png_get_header_ver(PLT)
	mov	r2, r5
	mov	r3, r0
	movs	r1, #128
	mov	r0, sp
	bl	png_safecat(PLT)
	mov	r0, r7
	mov	r1, sp
	bl	png_warning(PLT)
	movs	r0, #0
	add	sp, sp, #128
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L303:
	ldrb	r3, [r8, #2]	@ zero_extendqisi2
	cmp	r3, #56
	bls	.L294
	b	.L297
.L302:
	mov	r0, r5
	ldrb	r4, [r8, #2]	@ zero_extendqisi2
	bl	png_get_header_ver(PLT)
	ldrb	r3, [r0, #2]	@ zero_extendqisi2
	cmp	r3, r4
	bne	.L294
	mov	r0, r5
	ldrb	r4, [r8, #3]	@ zero_extendqisi2
	bl	png_get_header_ver(PLT)
	ldrb	r3, [r0, #3]	@ zero_extendqisi2
	cmp	r3, r4
	bne	.L294
	ldrb	r3, [r8]	@ zero_extendqisi2
	b	.L296
.L305:
	.align	2
.L304:
	.word	.LC11-(.LPIC20+4)
	.word	.LC12-(.LPIC21+4)
	.size	png_user_version_check, .-png_user_version_check
	.section	.text.png_create_png_struct,"ax",%progbits
	.align	2
	.global	png_create_png_struct
	.thumb
	.thumb_func
	.type	png_create_png_struct, %function
png_create_png_struct:
	@ args = 12, pretend = 0, frame = 1552
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r3
	sub	sp, sp, #1552
	ldr	r3, .L312
	add	r4, sp, #400
	mov	r10, r1
	ldr	r5, [sp, #1592]
	mov	r9, r2
	ldr	r7, [sp, #1584]
.LPIC22:
	add	r3, pc
	ldr	r6, [sp, #1588]
	movs	r1, #0
	str	r0, [sp, #4]
	mov	r2, #1152
	mov	r0, r4
	str	r3, [sp]
	bl	memset(PLT)
	mov	r1, r7
	mov	r2, r6
	mov	r3, r5
	mov	r0, r4
	mvn	r5, #-2147483648
	str	r5, [r4, #988]
	str	r5, [r4, #992]
	bl	png_set_mem_fn(PLT)
	mov	r0, r4
	mov	r1, r10
	mov	r2, r9
	mov	r3, r8
	bl	png_set_error_fn(PLT)
	add	r0, sp, #8
	bl	_setjmp(PLT)
	mov	r5, r0
	cbnz	r0, .L309
	ldr	r3, .L312+4
	add	r2, sp, #8
	ldr	r7, [sp]
	add	r4, sp, #400
	str	r0, [sp, #800]
	mov	r0, r4
	str	r2, [sp, #796]
	ldr	r3, [r7, r3]
	ldr	r1, [sp, #4]
	str	r3, [sp, #792]
	bl	png_user_version_check(PLT)
	cbz	r0, .L309
	mov	r0, r4
	mov	r1, #1152
	bl	png_malloc_warn(PLT)
	mov	r6, r0
	cbz	r0, .L308
	ldr	lr, [sp]
	mov	r1, r4
	ldr	r3, .L312+8
	mov	r2, #1152
	ldr	r7, .L312+12
	ldr	r3, [lr, r3]
	str	r3, [r4, #496]
	ldr	r3, [lr, r7]
	str	r0, [r4, #504]
	str	r5, [r4, #396]
	str	r3, [r4, #500]
	str	r5, [r4, #400]
	str	r5, [r4, #392]
	bl	memcpy(PLT)
	mov	r0, r6
.L308:
	add	sp, sp, #1552
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L309:
	movs	r0, #0
	add	sp, sp, #1552
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L313:
	.align	2
.L312:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC22+4)
	.word	longjmp(GOT)
	.word	png_zalloc(GOT)
	.word	png_zfree(GOT)
	.size	png_create_png_struct, .-png_create_png_struct
	.section	.text.png_get_libpng_ver,"ax",%progbits
	.align	2
	.global	png_get_libpng_ver
	.thumb
	.thumb_func
	.type	png_get_libpng_ver, %function
png_get_libpng_ver:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	b	png_get_header_ver(PLT)
	.size	png_get_libpng_ver, .-png_get_libpng_ver
	.section	.text.png_get_header_version,"ax",%progbits
	.align	2
	.global	png_get_header_version
	.thumb
	.thumb_func
	.type	png_get_header_version, %function
png_get_header_version:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L316
.LPIC23:
	add	r0, pc
	bx	lr
.L317:
	.align	2
.L316:
	.word	.LC13-(.LPIC23+4)
	.size	png_get_header_version, .-png_get_header_version
	.section	.text.png_build_grayscale_palette,"ax",%progbits
	.align	2
	.global	png_build_grayscale_palette
	.thumb
	.thumb_func
	.type	png_build_grayscale_palette, %function
png_build_grayscale_palette:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	beq	.L327
	subs	r0, r0, #1
	cmp	r0, #7
	bhi	.L327
	ldr	r2, .L328
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #52
	ldr	r3, .L328+4
.LPIC24:
	add	r2, pc
	ldr	r5, [r2, r0, lsl #2]
.LPIC25:
	add	r3, pc
	ldr	r4, [r3, r0, lsl #2]
	cmp	r5, #0
	ble	.L318
	cmp	r5, #10
	sub	r3, r5, #9
	str	r3, [sp, #32]
	ble	.L324
	lsl	r8, r4, #1
	add	r3, r4, r4, lsl #2
	str	r5, [sp, #40]
	mov	r9, r8
	movs	r0, #0
	add	r9, r9, r4
	str	r8, [sp, #8]
	add	lr, r4, r9
	lsl	r8, r3, #1
	str	lr, [sp, #28]
	add	lr, lr, r4
	str	lr, [sp, #24]
	add	lr, lr, r4
	str	lr, [sp, #20]
	add	lr, lr, r4
	str	lr, [sp, #16]
	add	lr, lr, r4
	mov	fp, lr
	mov	r2, r0
	add	fp, fp, r4
	mov	r10, r0
	add	r6, r4, fp
	mov	r3, r1
	uxtb	r6, r6
	str	lr, [sp, #12]
	str	r1, [sp, #44]
	str	r6, [sp, #36]
	str	r8, [sp, #4]
.L322:
	ldr	r5, [sp, #8]
	uxtb	r7, r2
	add	r1, r0, r9
	ldr	ip, [sp, #28]
	adds	r6, r7, r4
	strb	r7, [r3]
	add	r5, r5, r7
	uxtb	r6, r6
	uxtb	r5, r5
	strb	r7, [r3, #1]
	strb	r7, [r3, #2]
	uxtb	r1, r1
	strb	r6, [r3, #3]
	add	ip, ip, r0
	strb	r6, [r3, #4]
	uxtb	ip, ip
	strb	r6, [r3, #5]
	add	r10, r10, #10
	strb	r5, [r3, #6]
	strb	r5, [r3, #7]
	strb	r5, [r3, #8]
	ldr	lr, [sp, #24]
	ldr	r7, [sp, #20]
	ldr	r6, [sp, #16]
	ldr	r5, [sp, #12]
	add	lr, lr, r0
	ldr	r8, [sp, #4]
	add	r7, r7, r0
	strb	r1, [r3, #9]
	add	r6, r6, r0
	strb	r1, [r3, #10]
	add	r5, r5, r0
	strb	r1, [r3, #11]
	add	r1, r0, fp
	uxtb	lr, lr
	uxtb	r1, r1
	uxtb	r7, r7
	uxtb	r6, r6
	uxtb	r5, r5
	strb	lr, [r3, #15]
	strb	lr, [r3, #16]
	add	r2, r2, r8
	strb	lr, [r3, #17]
	add	lr, r10, #1
	pld	[r3, #71]
	adds	r3, r3, #30
	ldr	r8, [sp, #36]
	strb	ip, [r3, #-18]
	strb	ip, [r3, #-17]
	strb	ip, [r3, #-16]
	add	r0, r0, r8
	strb	r7, [r3, #-12]
	uxtb	r0, r0
	strb	r7, [r3, #-11]
	strb	r7, [r3, #-10]
	strb	r6, [r3, #-9]
	strb	r6, [r3, #-8]
	strb	r6, [r3, #-7]
	strb	r5, [r3, #-6]
	strb	r1, [r3, #-3]
	strb	r1, [r3, #-2]
	strb	r1, [r3, #-1]
	ldr	r1, [sp, #32]
	strb	r5, [r3, #-5]
	strb	r5, [r3, #-4]
	cmp	r1, lr
	bgt	.L322
	ldr	r5, [sp, #40]
	mov	r8, lr
	ldr	r1, [sp, #44]
.L321:
	add	r10, r10, r10, lsl #1
	movs	r3, #0
	add	r1, r1, r10
.L323:
	uxtb	r0, r2
	cmp	r5, r8
	add	r6, r1, r3
	strb	r0, [r1, r3]
	add	r2, r2, r4
	strb	r0, [r6, #1]
	add	r3, r3, #3
	strb	r0, [r6, #2]
	add	r8, r8, #1
	bgt	.L323
.L318:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L327:
	bx	lr
.L324:
	movs	r2, #0
	mov	r8, #1
	mov	r10, r2
	b	.L321
.L329:
	.align	2
.L328:
	.word	.LANCHOR2-(.LPIC24+4)
	.word	.LANCHOR3-(.LPIC25+4)
	.size	png_build_grayscale_palette, .-png_build_grayscale_palette
	.section	.text.png_handle_as_unknown,"ax",%progbits
	.align	2
	.global	png_handle_as_unknown
	.thumb
	.thumb_func
	.type	png_handle_as_unknown, %function
png_handle_as_unknown:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	push	{r4, r5, r6, lr}
	mov	r5, r1
	beq	.L336
	ldr	r4, [r0, #932]
	cbz	r4, .L335
	ldr	r6, [r0, #936]
	add	r4, r4, r4, lsl #2
	add	r4, r4, r6
	b	.L333
.L332:
	cmp	r6, r4
	bcs	.L336
.L333:
	subs	r4, r4, #5
	mov	r0, r5
	mov	r1, r4
	movs	r2, #4
	bl	memcmp(PLT)
	cmp	r0, #0
	bne	.L332
	ldrb	r0, [r4, #4]	@ zero_extendqisi2
	pop	{r4, r5, r6, pc}
.L336:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L335:
	mov	r0, r4
	pop	{r4, r5, r6, pc}
	.size	png_handle_as_unknown, .-png_handle_as_unknown
	.section	.text.png_chunk_unknown_handling,"ax",%progbits
	.align	2
	.global	png_chunk_unknown_handling
	.thumb
	.thumb_func
	.type	png_chunk_unknown_handling, %function
png_chunk_unknown_handling:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	lsrs	r2, r1, #8
	sub	sp, sp, #12
	lsrs	r5, r1, #24
	lsrs	r4, r1, #16
	movs	r3, #0
	strb	r1, [sp, #3]
	mov	r1, sp
	strb	r5, [sp]
	strb	r4, [sp, #1]
	strb	r2, [sp, #2]
	strb	r3, [sp, #4]
	bl	png_handle_as_unknown(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
	.size	png_chunk_unknown_handling, .-png_chunk_unknown_handling
	.section	.text.png_reset_zstream,"ax",%progbits
	.align	2
	.global	png_reset_zstream
	.thumb
	.thumb_func
	.type	png_reset_zstream, %function
png_reset_zstream:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L341
	add	r0, r0, #464
	b	inflateReset(PLT)
.L341:
	mvn	r0, #1
	bx	lr
	.size	png_reset_zstream, .-png_reset_zstream
	.section	.text.png_access_version_number,"ax",%progbits
	.align	2
	.global	png_access_version_number
	.thumb
	.thumb_func
	.type	png_access_version_number, %function
png_access_version_number:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #10610
	bx	lr
	.size	png_access_version_number, .-png_access_version_number
	.section	.text.png_zstream_error,"ax",%progbits
	.align	2
	.global	png_zstream_error
	.thumb
	.thumb_func
	.type	png_zstream_error, %function
png_zstream_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #488]
	cbz	r3, .L356
.L343:
	bx	lr
.L356:
	adds	r1, r1, #7
	cmp	r1, #9
	bhi	.L345
	tbb	[pc, r1]
.L347:
	.byte	(.L346-.L347)/2
	.byte	(.L348-.L347)/2
	.byte	(.L349-.L347)/2
	.byte	(.L350-.L347)/2
	.byte	(.L351-.L347)/2
	.byte	(.L352-.L347)/2
	.byte	(.L353-.L347)/2
	.byte	(.L345-.L347)/2
	.byte	(.L354-.L347)/2
	.byte	(.L355-.L347)/2
	.align	1
.L355:
	ldr	r3, .L357
.LPIC28:
	add	r3, pc
	str	r3, [r0, #488]
	bx	lr
.L346:
	ldr	r3, .L357+4
.LPIC35:
	add	r3, pc
	str	r3, [r0, #488]
	b	.L343
.L348:
	ldr	r3, .L357+8
.LPIC34:
	add	r3, pc
	str	r3, [r0, #488]
	bx	lr
.L349:
	ldr	r3, .L357+12
.LPIC33:
	add	r3, pc
	str	r3, [r0, #488]
	bx	lr
.L350:
	ldr	r3, .L357+16
.LPIC32:
	add	r3, pc
	str	r3, [r0, #488]
	bx	lr
.L351:
	ldr	r3, .L357+20
.LPIC31:
	add	r3, pc
	str	r3, [r0, #488]
	bx	lr
.L352:
	ldr	r3, .L357+24
.LPIC30:
	add	r3, pc
	str	r3, [r0, #488]
	bx	lr
.L353:
	ldr	r3, .L357+28
.LPIC29:
	add	r3, pc
	str	r3, [r0, #488]
	bx	lr
.L354:
	ldr	r3, .L357+32
.LPIC27:
	add	r3, pc
	str	r3, [r0, #488]
	bx	lr
.L345:
	ldr	r3, .L357+36
.LPIC26:
	add	r3, pc
	str	r3, [r0, #488]
	bx	lr
.L358:
	.align	2
.L357:
	.word	.LC16-(.LPIC28+4)
	.word	.LC23-(.LPIC35+4)
	.word	.LC22-(.LPIC34+4)
	.word	.LC21-(.LPIC33+4)
	.word	.LC20-(.LPIC32+4)
	.word	.LC19-(.LPIC31+4)
	.word	.LC18-(.LPIC30+4)
	.word	.LC17-(.LPIC29+4)
	.word	.LC15-(.LPIC27+4)
	.word	.LC14-(.LPIC26+4)
	.size	png_zstream_error, .-png_zstream_error
	.section	.text.png_colorspace_sync_info,"ax",%progbits
	.align	2
	.global	png_colorspace_sync_info
	.thumb
	.thumb_func
	.type	png_colorspace_sync_info, %function
png_colorspace_sync_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrh	r3, [r1, #114]
	push	{r4, r5}
	mov	r4, r1
	lsls	r5, r3, #16
	bmi	.L368
	ldr	r2, [r1, #8]
	lsls	r0, r3, #24
	ite	mi
	orrmi	r2, r2, #2048
	bicpl	r2, r2, #2048
	lsls	r1, r3, #30
	ite	mi
	orrmi	r2, r2, #4
	bicpl	r2, r2, #4
	lsls	r3, r3, #31
	str	r2, [r4, #8]
	ite	mi
	orrmi	r2, r2, #1
	bicpl	r2, r2, #1
	str	r2, [r4, #8]
	pop	{r4, r5}
	bx	lr
.L368:
	ldr	r5, [r1, #8]
	movs	r2, #16
	mov	r3, #-1
	bic	r5, r5, #6144
	bic	r5, r5, #5
	str	r5, [r1, #8]
	pop	{r4, r5}
	b	png_free_data(PLT)
	.size	png_colorspace_sync_info, .-png_colorspace_sync_info
	.section	.text.png_colorspace_sync,"ax",%progbits
	.align	2
	.global	png_colorspace_sync
	.thumb
	.thumb_func
	.type	png_colorspace_sync, %function
png_colorspace_sync:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	cbz	r1, .L369
	mov	r5, r0
	movs	r2, #76
	add	r0, r1, #40
	add	r1, r5, #1064
	bl	memcpy(PLT)
	mov	r0, r5
	mov	r1, r4
	pop	{r3, r4, r5, lr}
	b	png_colorspace_sync_info(PLT)
.L369:
	pop	{r3, r4, r5, pc}
	.size	png_colorspace_sync, .-png_colorspace_sync
	.section	.text.png_icc_check_length,"ax",%progbits
	.align	2
	.global	png_icc_check_length
	.thumb
	.thumb_func
	.type	png_icc_check_length, %function
png_icc_check_length:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #131
	push	{r4, lr}
	mov	r4, r3
	sub	sp, sp, #8
	bls	.L377
	lsls	r4, r4, #30
	it	eq
	moveq	r0, #1
	bne	.L378
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L378:
	ldr	r4, .L379
.LPIC37:
	add	r4, pc
	str	r4, [sp]
	bl	png_icc_profile_error(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L377:
	ldr	r4, .L379+4
.LPIC36:
	add	r4, pc
	str	r4, [sp]
	bl	png_icc_profile_error(PLT)
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L380:
	.align	2
.L379:
	.word	.LC25-(.LPIC37+4)
	.word	.LC24-(.LPIC36+4)
	.size	png_icc_check_length, .-png_icc_check_length
	.section	.text.png_icc_check_header,"ax",%progbits
	.align	2
	.global	png_icc_check_header
	.thumb
	.thumb_func
	.type	png_icc_check_header, %function
png_icc_check_header:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #12
	ldr	r4, [sp, #48]
	ldr	r10, [sp, #52]
	ldrb	r5, [r4, #1]	@ zero_extendqisi2
	ldrb	ip, [r4]	@ zero_extendqisi2
	ldrb	lr, [r4, #3]	@ zero_extendqisi2
	ldrb	r6, [r4, #2]	@ zero_extendqisi2
	lsls	r5, r5, #16
	add	r5, r5, ip, lsl #24
	add	r5, r5, lr
	add	r5, r5, r6, lsl #8
	cmp	r5, r3
	bne	.L412
	ldrb	r3, [r4, #129]	@ zero_extendqisi2
	movw	r6, #21834
	ldrb	fp, [r4, #128]	@ zero_extendqisi2
	movt	r6, 5461
	ldrb	ip, [r4, #131]	@ zero_extendqisi2
	mov	r8, r0
	ldrb	lr, [r4, #130]	@ zero_extendqisi2
	mov	r9, r1
	lsls	r3, r3, #16
	mov	r7, r2
	add	r3, r3, fp, lsl #24
	add	r3, r3, ip
	add	r3, r3, lr, lsl #8
	cmp	r3, r6
	bhi	.L383
	add	r6, r3, r3, lsl #1
	lsls	r6, r6, #2
	adds	r6, r6, #132
	cmp	r5, r6
	bcc	.L383
	ldrb	r3, [r4, #65]	@ zero_extendqisi2
	movw	r5, #65534
	ldrb	ip, [r4, #64]	@ zero_extendqisi2
	ldrb	lr, [r4, #67]	@ zero_extendqisi2
	ldrb	r6, [r4, #66]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r3, r3, ip, lsl #24
	add	r3, r3, lr
	add	r3, r3, r6, lsl #8
	cmp	r3, r5
	bhi	.L413
	cmp	r3, #3
	bhi	.L414
.L386:
	ldrb	r3, [r4, #37]	@ zero_extendqisi2
	movw	r2, #29552
	ldrb	r5, [r4, #36]	@ zero_extendqisi2
	movt	r2, 24931
	ldrb	r0, [r4, #39]	@ zero_extendqisi2
	ldrb	r1, [r4, #38]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r3, r3, r5, lsl #24
	add	r3, r3, r0
	add	r3, r3, r1, lsl #8
	cmp	r3, r2
	bne	.L415
	ldr	r1, .L418
	add	r0, r4, #68
	movs	r2, #12
.LPIC43:
	add	r1, pc
	bl	memcmp(PLT)
	cmp	r0, #0
	bne	.L416
.L388:
	ldrb	r3, [r4, #17]	@ zero_extendqisi2
	movw	r2, #16729
	ldrb	r5, [r4, #16]	@ zero_extendqisi2
	movt	r2, 18258
	ldrb	r0, [r4, #19]	@ zero_extendqisi2
	ldrb	r1, [r4, #18]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r3, r3, r5, lsl #24
	add	r3, r3, r0
	add	r3, r3, r1, lsl #8
	cmp	r3, r2
	beq	.L390
	movw	r2, #16928
	movt	r2, 21063
	cmp	r3, r2
	bne	.L407
	tst	r10, #2
	beq	.L417
.L392:
	ldrb	r3, [r4, #13]	@ zero_extendqisi2
	movw	r2, #25452
	ldrb	r5, [r4, #12]	@ zero_extendqisi2
	movt	r2, 28269
	ldrb	r0, [r4, #15]	@ zero_extendqisi2
	ldrb	r1, [r4, #14]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r3, r3, r5, lsl #24
	add	r3, r3, r0
	add	r3, r3, r1, lsl #8
	cmp	r3, r2
	beq	.L394
	bhi	.L395
	movw	r2, #28267
	movt	r2, 27753
	cmp	r3, r2
	beq	.L396
	movw	r2, #29810
	movt	r2, 28014
	cmp	r3, r2
	beq	.L397
	movw	r2, #29556
	movt	r2, 24930
	cmp	r3, r2
	bne	.L393
	ldr	r4, .L418+4
.LPIC48:
	add	r4, pc
	b	.L411
.L383:
	ldr	r4, .L418+8
.LPIC39:
	add	r4, pc
.L411:
	mov	r0, r8
	mov	r1, r9
	mov	r2, r7
.L410:
	str	r4, [sp, #48]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_icc_profile_error(PLT)
.L412:
	ldr	r4, .L418+12
	mov	r3, r5
.LPIC38:
	add	r4, pc
	str	r4, [sp, #48]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_icc_profile_error(PLT)
.L415:
	ldr	r4, .L418+16
.LPIC42:
	add	r4, pc
	b	.L411
.L414:
	ldr	r5, .L418+20
	movs	r1, #0
.LPIC41:
	add	r5, pc
	str	r5, [sp]
	bl	png_icc_profile_error(PLT)
	b	.L386
.L413:
	ldr	r4, .L418+24
.LPIC40:
	add	r4, pc
	b	.L410
.L407:
	ldr	r4, .L418+28
.LPIC47:
	add	r4, pc
	b	.L411
.L390:
	tst	r10, #2
	beq	.L392
	ldr	r4, .L418+32
.LPIC46:
	add	r4, pc
	b	.L411
.L395:
	movw	r2, #28274
	movt	r2, 29539
	cmp	r3, r2
	beq	.L397
	movw	r2, #24931
	movt	r2, 29552
	cmp	r3, r2
	beq	.L397
	movw	r2, #29810
	movt	r2, 28786
	cmp	r3, r2
	beq	.L397
.L393:
	ldr	r5, .L418+36
.LPIC51:
	add	r5, pc
.L409:
	mov	r0, r8
	movs	r1, #0
	mov	r2, r7
	str	r5, [sp]
	bl	png_icc_profile_error(PLT)
.L397:
	ldrb	r3, [r4, #21]	@ zero_extendqisi2
	movw	r2, #25120
	ldrb	r5, [r4, #20]	@ zero_extendqisi2
	movt	r2, 19553
	ldrb	r0, [r4, #23]	@ zero_extendqisi2
	ldrb	r1, [r4, #22]	@ zero_extendqisi2
	lsls	r3, r3, #16
	add	r3, r3, r5, lsl #24
	add	r3, r3, r0
	add	r3, r3, r1, lsl #8
	cmp	r3, r2
	beq	.L400
	movw	r2, #23072
	movt	r2, 22617
	cmp	r3, r2
	beq	.L400
	ldr	r4, .L418+40
.LPIC52:
	add	r4, pc
	b	.L411
.L416:
	ldr	r5, .L418+44
	movs	r1, #0
	mov	r3, r1
	mov	r0, r8
	mov	r2, r7
.LPIC44:
	add	r5, pc
	str	r5, [sp]
	bl	png_icc_profile_error(PLT)
	b	.L388
.L400:
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L396:
	ldr	r4, .L418+48
.LPIC49:
	add	r4, pc
	b	.L411
.L394:
	ldr	r5, .L418+52
.LPIC50:
	add	r5, pc
	b	.L409
.L417:
	ldr	r4, .L418+56
.LPIC45:
	add	r4, pc
	b	.L411
.L419:
	.align	2
.L418:
	.word	.LANCHOR4-(.LPIC43+4)
	.word	.LC35-(.LPIC48+4)
	.word	.LC27-(.LPIC39+4)
	.word	.LC26-(.LPIC38+4)
	.word	.LC30-(.LPIC42+4)
	.word	.LC29-(.LPIC41+4)
	.word	.LC28-(.LPIC40+4)
	.word	.LC34-(.LPIC47+4)
	.word	.LC33-(.LPIC46+4)
	.word	.LC38-(.LPIC51+4)
	.word	.LC39-(.LPIC52+4)
	.word	.LC31-(.LPIC44+4)
	.word	.LC36-(.LPIC49+4)
	.word	.LC37-(.LPIC50+4)
	.word	.LC32-(.LPIC45+4)
	.size	png_icc_check_header, .-png_icc_check_header
	.section	.text.png_icc_check_tag_table,"ax",%progbits
	.align	2
	.global	png_icc_check_tag_table
	.thumb
	.thumb_func
	.type	png_icc_check_tag_table, %function
png_icc_check_tag_table:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #28
	ldr	r5, [sp, #64]
	mov	r7, r3
	str	r1, [sp, #20]
	ldrb	ip, [r5, #129]	@ zero_extendqisi2
	add	r4, r5, #132
	ldrb	r1, [r5, #128]	@ zero_extendqisi2
	str	r2, [sp, #12]
	ldrb	r3, [r5, #130]	@ zero_extendqisi2
	lsl	ip, ip, #16
	ldrb	r2, [r5, #131]	@ zero_extendqisi2
	add	ip, ip, r1, lsl #24
	add	ip, ip, r2
	adds	r10, ip, r3, lsl #8
	beq	.L422
	ldr	r3, .L432
	mov	fp, r0
	movs	r6, #0
.LPIC53:
	add	r3, pc
	str	r3, [sp, #16]
	b	.L427
.L423:
	cmp	r5, r7
	sub	r3, r7, r5
	bhi	.L425
.L424:
	cmp	r8, r3
	bhi	.L425
	cmp	r6, r10
	beq	.L422
.L427:
	ldrb	r5, [r4, #5]	@ zero_extendqisi2
	adds	r6, r6, #1
	ldrb	r3, [r4, #4]	@ zero_extendqisi2
	adds	r4, r4, #12
	ldrb	r9, [r4, #-11]	@ zero_extendqisi2
	ldrb	r8, [r4, #-3]	@ zero_extendqisi2
	lsls	r5, r5, #16
	ldrb	r1, [r4, #-12]	@ zero_extendqisi2
	ldrb	r0, [r4, #-5]	@ zero_extendqisi2
	add	r5, r5, r3, lsl #24
	ldrb	r3, [r4, #-6]	@ zero_extendqisi2
	ldrb	r2, [r4, #-4]	@ zero_extendqisi2
	lsl	r9, r9, #16
	add	r5, r5, r0
	lsl	r8, r8, #16
	add	r9, r9, r1, lsl #24
	ldrb	r1, [r4, #-1]	@ zero_extendqisi2
	add	r5, r5, r3, lsl #8
	ldrb	r3, [r4, #-2]	@ zero_extendqisi2
	add	r8, r8, r2, lsl #24
	ldrb	r0, [r4, #-9]	@ zero_extendqisi2
	ldrb	r2, [r4, #-10]	@ zero_extendqisi2
	add	r8, r8, r1
	add	r8, r8, r3, lsl #8
	lsls	r3, r5, #30
	add	r9, r9, r0
	add	r9, r9, r2, lsl #8
	beq	.L423
	ldr	r3, [sp, #16]
	mov	r0, fp
	movs	r1, #0
	ldr	r2, [sp, #12]
	str	r3, [sp]
	mov	r3, r9
	bl	png_icc_profile_error(PLT)
	cmp	r5, r7
	sub	r3, r7, r5
	bls	.L424
.L425:
	ldr	r4, .L432+4
	mov	r0, fp
	ldr	r1, [sp, #20]
	mov	r3, r9
	ldr	r2, [sp, #12]
.LPIC54:
	add	r4, pc
	str	r4, [sp, #64]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_icc_profile_error(PLT)
.L422:
	movs	r0, #1
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L433:
	.align	2
.L432:
	.word	.LC40-(.LPIC53+4)
	.word	.LC41-(.LPIC54+4)
	.size	png_icc_check_tag_table, .-png_icc_check_tag_table
	.section	.text.png_check_IHDR,"ax",%progbits
	.align	2
	.global	png_check_IHDR
	.thumb
	.thumb_func
	.type	png_check_IHDR, %function
png_check_IHDR:
	@ args = 16, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, fp, lr}
	mov	fp, r1
	mov	r9, r2
	mov	r8, r3
	mov	r4, r0
	movs	r6, #0
	ldr	r7, [sp, #32]
	ldr	r5, [sp, #44]
	cmp	r1, #0
	beq	.L488
	cmp	r9, #0
	beq	.L489
.L436:
	ldr	r3, [r4, #988]
	cmp	fp, r3
	bhi	.L490
.L437:
	ldr	r3, [r4, #992]
	cmp	r9, r3
	bhi	.L491
.L438:
	cmp	fp, #0
	blt	.L492
.L439:
	cmp	r9, #0
	blt	.L493
.L440:
	add	r3, r8, #-1
	cmp	r8, #4
	it	ne
	cmpne	r3, #1
	bls	.L441
	cmp	r8, #8
	it	ne
	cmpne	r8, #16
	bne	.L494
.L441:
	bic	fp, r7, #4
	cmp	fp, #1
	beq	.L442
	cmp	r7, #6
	bhi	.L442
.L443:
	cmp	r8, #8
	ite	le
	movle	r3, #0
	movgt	r3, #1
	cmp	r7, #3
	it	ne
	movne	r3, #0
	cmp	r3, #0
	bne	.L444
	cmp	r7, #4
	it	ne
	cmpne	fp, #2
	beq	.L495
.L445:
	ldr	r3, [sp, #36]
	cmp	r3, #1
	ble	.L446
	ldr	r1, .L500
	mov	r0, r4
	movs	r6, #1
.LPIC64:
	add	r1, pc
	bl	png_warning(PLT)
.L446:
	ldr	r3, [sp, #40]
	cmp	r3, #0
	bne	.L496
.L447:
	ldr	r3, [r4, #448]
	lsls	r0, r3, #19
	bpl	.L448
	ldr	r3, [r4, #948]
	cmp	r3, #0
	bne	.L497
.L448:
	cbz	r5, .L449
	ldr	r3, [r4, #948]
	lsls	r1, r3, #29
	bpl	.L450
	cmp	r5, #64
	beq	.L498
.L450:
	ldr	r1, .L500+4
	mov	r0, r4
.LPIC67:
	add	r1, pc
	bl	png_warning(PLT)
	ldr	r3, [r4, #448]
	lsls	r3, r3, #19
	bmi	.L499
.L451:
	ldr	r1, .L500+8
	mov	r0, r4
.LPIC69:
	add	r1, pc
	bl	png_error(PLT)
.L442:
	ldr	r1, .L500+12
	mov	r0, r4
	movs	r6, #1
.LPIC62:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L443
.L498:
	ldr	r3, [r4, #448]
	lsls	r2, r3, #19
	bmi	.L450
	cmp	fp, #2
	bne	.L450
.L449:
	cmp	r6, #0
	bne	.L451
	pop	{r4, r5, r6, r7, r8, r9, fp, pc}
.L495:
	cmp	r8, #7
	bgt	.L445
.L444:
	ldr	r1, .L500+16
	mov	r0, r4
	movs	r6, #1
.LPIC63:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L445
.L488:
	ldr	r1, .L500+20
	movs	r6, #1
.LPIC55:
	add	r1, pc
	bl	png_warning(PLT)
	cmp	r9, #0
	bne	.L436
.L489:
	ldr	r1, .L500+24
	mov	r0, r4
	movs	r6, #1
.LPIC56:
	add	r1, pc
	bl	png_warning(PLT)
	ldr	r3, [r4, #988]
	cmp	fp, r3
	bls	.L437
.L490:
	ldr	r1, .L500+28
	mov	r0, r4
	movs	r6, #1
.LPIC57:
	add	r1, pc
	bl	png_warning(PLT)
	ldr	r3, [r4, #992]
	cmp	r9, r3
	bls	.L438
.L491:
	ldr	r1, .L500+32
	mov	r0, r4
	movs	r6, #1
.LPIC58:
	add	r1, pc
	bl	png_warning(PLT)
	cmp	fp, #0
	bge	.L439
.L492:
	ldr	r1, .L500+36
	mov	r0, r4
	movs	r6, #1
.LPIC59:
	add	r1, pc
	bl	png_warning(PLT)
	cmp	r9, #0
	bge	.L440
.L493:
	ldr	r1, .L500+40
	mov	r0, r4
	movs	r6, #1
.LPIC60:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L440
.L496:
	ldr	r1, .L500+44
	mov	r0, r4
	movs	r6, #1
.LPIC65:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L447
.L497:
	ldr	r1, .L500+48
	mov	r0, r4
.LPIC66:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L448
.L494:
	ldr	r1, .L500+52
	mov	r0, r4
	movs	r6, #1
.LPIC61:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L441
.L499:
	ldr	r1, .L500+56
	mov	r0, r4
.LPIC68:
	add	r1, pc
	bl	png_warning(PLT)
	b	.L451
.L501:
	.align	2
.L500:
	.word	.LC51-(.LPIC64+4)
	.word	.LC54-(.LPIC67+4)
	.word	.LC56-(.LPIC69+4)
	.word	.LC49-(.LPIC62+4)
	.word	.LC50-(.LPIC63+4)
	.word	.LC42-(.LPIC55+4)
	.word	.LC43-(.LPIC56+4)
	.word	.LC44-(.LPIC57+4)
	.word	.LC45-(.LPIC58+4)
	.word	.LC46-(.LPIC59+4)
	.word	.LC47-(.LPIC60+4)
	.word	.LC52-(.LPIC65+4)
	.word	.LC53-(.LPIC66+4)
	.word	.LC48-(.LPIC61+4)
	.word	.LC55-(.LPIC68+4)
	.size	png_check_IHDR, .-png_check_IHDR
	.section	.text.png_check_fp_number,"ax",%progbits
	.align	2
	.global	png_check_fp_number
	.thumb
	.thumb_func
	.type	png_check_fp_number, %function
png_check_fp_number:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r5, [r3]
	ldr	r4, [r2]
	cmp	r5, r1
	bcs	.L546
.L530:
	ldrb	r6, [r0, r5]	@ zero_extendqisi2
	subs	r6, r6, #43
	cmp	r6, #58
	bhi	.L546
	tbb	[pc, r6]
.L507:
	.byte	(.L506-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L531-.L507)/2
	.byte	(.L509-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L510-.L507)/2
	.byte	(.L511-.L507)/2
	.byte	(.L511-.L507)/2
	.byte	(.L511-.L507)/2
	.byte	(.L511-.L507)/2
	.byte	(.L511-.L507)/2
	.byte	(.L511-.L507)/2
	.byte	(.L511-.L507)/2
	.byte	(.L511-.L507)/2
	.byte	(.L511-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L512-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L546-.L507)/2
	.byte	(.L512-.L507)/2
	.align	1
.L531:
	mov	ip, #196
	movs	r6, #4
	mov	lr, #132
.L508:
	and	r7, r4, #3
	add	r6, r6, r7
	subs	r6, r6, #4
	cmp	r6, #29
	bhi	.L546
	tbb	[pc, r6]
.L515:
	.byte	(.L514-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L516-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L517-.L515)/2
	.byte	(.L518-.L515)/2
	.byte	(.L519-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L520-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L546-.L515)/2
	.byte	(.L522-.L515)/2
	.byte	(.L522-.L515)/2
	.align	1
.L522:
	ands	r6, r4, #8
	beq	.L504
	and	r4, r4, #448
	orr	r4, r4, #2
.L524:
	adds	r5, r5, #1
	cmp	r1, r5
	bhi	.L530
.L546:
	and	r6, r4, #8
.L504:
	adds	r0, r6, #0
	str	r4, [r2]
	it	ne
	movne	r0, #1
	str	r5, [r3]
	pop	{r4, r5, r6, r7, r8, pc}
.L506:
	movs	r6, #4
	mov	ip, #68
	mov	lr, r6
	b	.L508
.L512:
	movs	r6, #32
	mov	ip, #96
	mov	lr, r6
	b	.L508
.L511:
	mov	ip, #328
	movs	r6, #8
	mov	lr, #264
	b	.L508
.L510:
	movs	r6, #8
	mov	ip, #72
	mov	lr, r6
	b	.L508
.L509:
	movs	r6, #16
	mov	ip, #80
	mov	lr, r6
	b	.L508
.L520:
	lsls	r6, r4, #27
	bmi	.L546
	lsls	r7, r4, #28
	itt	pl
	andpl	r4, r4, #448
	orrpl	r4, r4, #1
.L544:
	orr	r4, r4, lr
	b	.L524
.L519:
	orr	r4, r4, #72
	b	.L524
.L518:
	orr	r4, r4, #64
	orr	r4, r4, lr
	b	.L524
.L517:
	lsls	r6, r4, #27
	itt	mi
	andmi	r4, r4, #448
	orrmi	r4, r4, #17
	orr	r4, r4, ip
	b	.L524
.L516:
	tst	r4, #60
	bne	.L546
	orr	r4, r4, #4
	b	.L524
.L514:
	tst	r4, #60
	beq	.L544
	b	.L546
	.size	png_check_fp_number, .-png_check_fp_number
	.section	.text.png_check_fp_string,"ax",%progbits
	.align	2
	.global	png_check_fp_string
	.thumb
	.thumb_func
	.type	png_check_fp_string, %function
png_check_fp_string:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #16
	movs	r4, #0
	mov	r2, sp
	add	r3, sp, #8
	mov	r6, r0
	str	r4, [sp]
	mov	r5, r1
	str	r4, [sp, #8]
	bl	png_check_fp_number(PLT)
	cbz	r0, .L548
	ldr	r3, [sp, #8]
	cmp	r3, r5
	beq	.L549
	ldrb	r3, [r6, r3]	@ zero_extendqisi2
	mov	r0, r4
	cbnz	r3, .L548
.L549:
	ldr	r0, [sp]
.L548:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	png_check_fp_string, .-png_check_fp_string
	.section	.text.png_ascii_from_fp,"ax",%progbits
	.align	2
	.global	png_ascii_from_fp
	.thumb
	.thumb_func
	.type	png_ascii_from_fp, %function
png_ascii_from_fp:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r8, r1
	fstmfdd	sp!, {d8, d9}
	sub	sp, sp, #44
	mov	r10, r2
	str	r0, [sp, #12]
	fcpyd	d8, d0
	cmp	r3, #0
	beq	.L633
	cmp	r3, #16
	it	ls
	addls	r2, r3, #5
	bls	.L557
	movs	r2, #21
	movs	r3, #16
.L557:
	cmp	r10, r2
	bcc	.L558
	fldd	d17, .L723
	fcmpezd	d8
	fldd	d16, .L723+16
	fmstat
	itt	mi
	fnegdmi	d8, d8
	movmi	r2, #45
	fcmped	d8, d17
	ittt	mi
	addmi	r10, r10, #-1
	strbmi	r2, [r8]
	addmi	r8, r8, #1
	fmstat
	fcmped	d8, d16
	ite	ls
	movls	r5, #1
	movhi	r5, #0
	fmstat
	and	r5, r5, #1
	it	lt
	movlt	r5, #0
	cbnz	r5, .L709
	fcmpd	d8, d16
	fmstat
	iteee	lt
	movlt	r3, #48
	movge	r1, #105
	movge	r2, #110
	movge	r3, #102
	ittee	lt
	strblt	r5, [r8, #1]
	strblt	r3, [r8]
	strbge	r5, [r8, #3]
	strbge	r1, [r8]
	itt	ge
	strbge	r2, [r8, #1]
	strbge	r3, [r8, #2]
	add	sp, sp, #44
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L633:
	movs	r2, #20
	movs	r3, #15
	b	.L557
.L709:
	fcpyd	d0, d8
	add	r0, sp, #16
	str	r3, [sp, #4]
	bl	frexp(PLT)
	ldr	r2, [sp, #16]
	movs	r1, #77
	ldr	r3, [sp, #4]
	mul	r2, r1, r2
	asrs	r7, r2, #8
	cmp	r7, #0
	str	r7, [sp, #16]
	blt	.L710
	mov	r2, r7
	beq	.L635
	movs	r1, #0
.L565:
	fconstd	d16, #36
	fconstd	d0, #112
.L569:
	lsls	r0, r2, #31
	it	mi
	fmuldmi	d0, d0, d16
	asrs	r2, r2, #1
	fmuld	d16, d16, d16
	bne	.L569
	cmp	r1, #0
	bne	.L570
	fldd	d16, .L723+16
	fcmped	d0, d16
	fmstat
	ite	mi
	movmi	r2, #1
	movpl	r2, #0
.L566:
	fcmped	d8, d0
	fmstat
	it	gt
	orrgt	r2, r2, #1
	tst	r2, #255
	it	eq
	moveq	r6, r7
	beq	.L572
.L571:
	mov	r6, r7
	fconstd	d20, #112
	adds	r1, r6, #1
	mvns	r0, r7
	cmp	r1, #0
	fldd	d18, .L723
	fldd	d19, .L723+16
	blt	.L711
.L573:
	itt	ne
	movne	r2, r1
	movne	r4, #0
	beq	.L712
.L575:
	fconstd	d16, #36
	fconstd	d17, #112
.L578:
	tst	r2, #1
	it	ne
	fmuldne	d17, d17, d16
	asrs	r2, r2, #1
	fmuld	d16, d16, d16
	bne	.L578
	cbz	r4, .L579
	fdivd	d17, d20, d17
.L579:
	fcmped	d17, d18
	fmstat
	bhi	.L713
	fcmped	d8, d17
	fmstat
	fcmped	d17, d19
	ite	gt
	movgt	r2, #1
	movle	r2, #0
	fmstat
	fcpyd	d0, d17
	it	mi
	orrmi	r2, r2, #1
.L631:
	subs	r0, r0, #1
	mov	r6, r1
	cbz	r2, .L581
.L714:
	mov	r7, r1
	adds	r1, r6, #1
	cmp	r1, #0
	bge	.L573
.L711:
	cmn	r1, #308
	itt	gt
	movgt	r2, r0
	movgt	r4, #1
	bgt	.L575
	mov	r2, r5
	fldd	d0, .L723+24
	subs	r0, r0, #1
	mov	r6, r1
	cmp	r2, #0
	bne	.L714
.L581:
	str	r1, [sp, #16]
.L572:
	fdivd	d0, d8, d0
	fconstd	d16, #112
	fcmped	d0, d16
	fmstat
	blt	.L582
	fldd	d17, .L723+8
	adds	r6, r6, #1
.L586:
	fmuld	d0, d0, d17
	mov	r2, r6
	adds	r6, r6, #1
	fcmped	d0, d16
	fmstat
	bge	.L586
	mov	r6, r2
	str	r2, [sp, #16]
.L582:
	adds	r2, r6, #2
	fldd	d9, .L723+16
	cmp	r2, #1
	mov	r7, #0
	ittet	ls
	movls	r2, #0
	rsbls	r6, r6, #0
	movhi	r6, #0
	strls	r2, [sp, #16]
	mov	r0, r6
	mov	r2, r6
	fconstd	d8, #36
	mov	fp, #46
	mov	r9, #48
.L618:
	subs	r0, r0, r2
	fmuld	d0, d0, d8
	adds	r0, r0, #1
	cmp	r0, r3
	blt	.L715
	fconstd	d16, #96
	faddd	d0, d0, d16
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	bl	floor(PLT)
	fconstd	d16, #34
	fcmped	d0, d16
	fmstat
	fstd	d0, [sp, #24]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	ble	.L704
	cmp	r6, #0
	beq	.L716
	movs	r5, #0
	movs	r4, #0
	movt	r5, 16368
	subs	r6, r6, #1
	strd	r4, [sp, #24]
	cmp	r7, #0
	bne	.L594
	ldr	r0, [sp, #16]
	subs	r2, r2, #1
	mov	lr, r8
.L595:
	fldd	d0, .L723+24
	movs	r5, #49
.L632:
	subs	r2, r6, r2
	add	r7, r7, r2
	cbz	r6, .L606
	ldr	r4, [sp, #16]
.L610:
	adds	r1, r0, #1
	beq	.L607
	cbnz	r0, .L608
	strb	fp, [lr]
	add	r10, r10, #-1
	add	lr, lr, #1
.L608:
	subs	r0, r0, #1
	mov	r4, r0
.L607:
	subs	r6, r6, #1
	strb	r9, [lr]
	add	lr, lr, #1
	bne	.L610
	str	r4, [sp, #16]
.L606:
	adds	r2, r0, #1
	beq	.L611
	cbnz	r0, .L612
	strb	fp, [lr]
	add	r10, r10, #-1
	add	lr, lr, #1
.L612:
	subs	r0, r0, #1
	str	r0, [sp, #16]
.L611:
	movs	r2, #0
	adds	r7, r7, #1
	add	r8, lr, #1
	mov	r6, r2
	strb	r5, [lr]
.L605:
	adds	r0, r7, r6
	subs	r4, r0, r2
	cmp	r4, r3
	bge	.L616
	fcmped	d0, d9
	fmstat
	bgt	.L618
.L616:
	ldr	r2, [sp, #16]
	adds	r3, r2, #1
	cmp	r3, #3
	bhi	.L717
	cmp	r2, #0
	ble	.L626
	mov	r0, r8
	movs	r1, #48
	add	r8, r8, r2
	bl	memset(PLT)
.L626:
	movs	r3, #0
	strb	r3, [r8]
	add	sp, sp, #44
	@ sp needed
	fldmfdd	sp!, {d8-d9}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L635:
	fconstd	d0, #112
	b	.L566
.L712:
	fcmped	d8, d20
	fmstat
	ite	gt
	movgt	r2, #1
	movle	r2, #0
	fconstd	d0, #112
	b	.L631
.L704:
	fcpyd	d16, d0
	fldd	d0, .L723+24
.L589:
	fcmpzd	d16
	fmstat
	bne	.L604
.L718:
	adds	r6, r6, #1
	cmp	r7, #0
	bne	.L605
	adds	r2, r2, #1
	b	.L605
.L724:
	.align	3
.L723:
	.word	-1
	.word	2146435071
	.word	-1717986918
	.word	1069128089
	.word	0
	.word	1048576
	.word	0
	.word	0
.L715:
	add	r0, sp, #24
	str	r2, [sp, #8]
	str	r3, [sp, #4]
	bl	modf(PLT)
	fldd	d16, [sp, #24]
	ldr	r2, [sp, #8]
	ldr	r3, [sp, #4]
	fcmpzd	d16
	fmstat
	beq	.L718
.L604:
	ftosizd	s15, d16
	mov	lr, r8
	ldr	r0, [sp, #16]
	fmrs	r5, s15	@ int
	adds	r5, r5, #48
	uxtb	r5, r5
	b	.L632
.L594:
	ldr	r0, [sp, #16]
	mov	lr, r8
	b	.L595
.L716:
	cmp	r7, #0
	itt	le
	movle	lr, r8
	ldrle	r0, [sp, #16]
	ble	.L593
	ldr	r0, [sp, #16]
	fcpyd	d17, d16
	mov	r5, r0
	b	.L600
.L720:
	subs	r4, r4, #47
	subs	r7, r7, #1
	add	r0, r0, #1
	fmsr	s15, r4	@ int
	mov	r5, r0
	fsitod	d16, s15
	beq	.L598
.L721:
	fcmped	d16, d17
	fmstat
	ble	.L719
	mov	r8, lr
.L600:
	adds	r1, r0, #1
	add	lr, r8, #-1
	ldrb	r4, [r8, #-1]	@ zero_extendqisi2
	bne	.L720
	cmp	r4, #46
	itttt	eq
	ldrbeq	r4, [r8, #-2]	@ zero_extendqisi2
	moveq	r5, #1
	addeq	r10, r10, r5
	moveq	r0, r5
	it	eq
	subeq	lr, r8, #2
	subs	r7, r7, #1
	sub	r4, r4, #47
	fmsr	s15, r4	@ int
	fsitod	d16, s15
	bne	.L721
.L598:
	fconstd	d17, #34
	fcmped	d16, d17
	fmstat
	str	r5, [sp, #16]
	fstd	d16, [sp, #24]
	ble	.L705
.L593:
	adds	r4, r0, #1
	itt	ne
	addne	r0, r0, #1
	strne	r0, [sp, #16]
	beq	.L722
.L603:
	movs	r5, #0
	movs	r4, #0
	movt	r5, 16368
	strd	r4, [sp, #24]
	b	.L595
.L717:
	cmp	r2, #0
	mov	r3, #69
	rsb	r7, r7, r10
	strb	r3, [r8]
	blt	.L621
	add	r8, r8, #1
	subs	r7, r7, #1
.L622:
	movw	r3, #52429
	movt	r3, 52428
	umull	r1, r0, r3, r2
	lsrs	r0, r0, #3
	add	r1, r0, r0, lsl #2
	sub	r2, r2, r1, lsl #1
	adds	r2, r2, #48
	strb	r2, [sp, #24]
	cmp	r0, #0
	beq	.L645
	umull	r2, r1, r3, r0
	lsrs	r1, r1, #3
	add	r2, r1, r1, lsl #2
	sub	r2, r0, r2, lsl #1
	adds	r2, r2, #48
	strb	r2, [sp, #25]
	cmp	r1, #0
	beq	.L646
	umull	r0, r2, r3, r1
	lsrs	r2, r2, #3
	add	r0, r2, r2, lsl #2
	sub	r1, r1, r0, lsl #1
	adds	r1, r1, #48
	strb	r1, [sp, #26]
	cmp	r2, #0
	beq	.L647
	umull	r0, r1, r3, r2
	lsrs	r1, r1, #3
	add	r0, r1, r1, lsl #2
	sub	r2, r2, r0, lsl #1
	adds	r2, r2, #48
	strb	r2, [sp, #27]
	cmp	r1, #0
	beq	.L648
	umull	r0, r2, r3, r1
	lsrs	r2, r2, #3
	add	r0, r2, r2, lsl #2
	sub	r1, r1, r0, lsl #1
	adds	r1, r1, #48
	strb	r1, [sp, #28]
	cmp	r2, #0
	beq	.L649
	umull	r0, r1, r3, r2
	lsrs	r1, r1, #3
	add	r0, r1, r1, lsl #2
	sub	r2, r2, r0, lsl #1
	adds	r2, r2, #48
	strb	r2, [sp, #29]
	cmp	r1, #0
	beq	.L650
	umull	r0, r2, r3, r1
	lsrs	r2, r2, #3
	add	r0, r2, r2, lsl #2
	sub	r1, r1, r0, lsl #1
	adds	r1, r1, #48
	strb	r1, [sp, #30]
	cmp	r2, #0
	beq	.L651
	umull	r0, r1, r3, r2
	lsrs	r1, r1, #3
	add	r0, r1, r1, lsl #2
	sub	r2, r2, r0, lsl #1
	adds	r2, r2, #48
	strb	r2, [sp, #31]
	cmp	r1, #0
	beq	.L652
	umull	r0, r2, r3, r1
	lsrs	r2, r2, #3
	add	r0, r2, r2, lsl #2
	sub	r1, r1, r0, lsl #1
	adds	r1, r1, #48
	strb	r1, [sp, #32]
	cmp	r2, #0
	beq	.L653
	umull	r0, r1, r3, r2
	movs	r3, #10
	lsrs	r1, r1, #3
	add	r1, r1, r1, lsl #2
	sub	r2, r2, r1, lsl #1
	adds	r2, r2, #48
	strb	r2, [sp, #33]
.L624:
	cmp	r7, r3
	ble	.L558
	cmp	r3, #0
	beq	.L626
	subs	r2, r3, #1
	add	r1, sp, #40
	add	r1, r1, r2
	ldrb	r1, [r1, #-16]	@ zero_extendqisi2
	strb	r1, [r8]
	cmp	r2, #0
	beq	.L627
	subs	r2, r3, #2
	add	r1, sp, #40
	add	r1, r1, r2
	ldrb	r1, [r1, #-16]	@ zero_extendqisi2
	strb	r1, [r8, #1]
	cmp	r2, #0
	beq	.L627
	subs	r2, r3, #3
	add	r1, sp, #40
	add	r1, r1, r2
	ldrb	r1, [r1, #-16]	@ zero_extendqisi2
	strb	r1, [r8, #2]
	cbz	r2, .L627
	subs	r2, r3, #4
	add	r1, sp, #40
	add	r1, r1, r2
	ldrb	r1, [r1, #-16]	@ zero_extendqisi2
	strb	r1, [r8, #3]
	cbz	r2, .L627
	subs	r2, r3, #5
	add	r1, sp, #40
	add	r1, r1, r2
	ldrb	r1, [r1, #-16]	@ zero_extendqisi2
	strb	r1, [r8, #4]
	cbz	r2, .L627
	subs	r2, r3, #6
	add	r1, sp, #40
	add	r1, r1, r2
	ldrb	r1, [r1, #-16]	@ zero_extendqisi2
	strb	r1, [r8, #5]
	cbz	r2, .L627
	subs	r2, r3, #7
	add	r1, sp, #40
	add	r1, r1, r2
	ldrb	r1, [r1, #-16]	@ zero_extendqisi2
	strb	r1, [r8, #6]
	cbz	r2, .L627
	sub	r2, r3, #8
	add	r1, sp, #40
	add	r1, r1, r2
	ldrb	r1, [r1, #-16]	@ zero_extendqisi2
	strb	r1, [r8, #7]
	cbz	r2, .L627
	sub	r2, r3, #9
	add	r1, sp, #40
	add	r1, r1, r2
	ldrb	r1, [r1, #-16]	@ zero_extendqisi2
	strb	r1, [r8, #8]
	cbz	r2, .L627
	add	r2, sp, #40
	add	r2, r2, r3
	ldrb	r2, [r2, #-26]	@ zero_extendqisi2
	strb	r2, [r8, #9]
.L627:
	add	r8, r8, r3
	b	.L626
.L719:
	str	r5, [sp, #16]
	mov	r8, lr
	fstd	d16, [sp, #24]
	fldd	d0, .L723+24
	b	.L589
.L713:
	str	r7, [sp, #16]
	b	.L572
.L570:
	fconstd	d17, #112
	fldd	d16, .L723+16
	fdivd	d0, d17, d0
	fcmped	d0, d16
	fmstat
	ite	mi
	movmi	r2, #1
	movpl	r2, #0
	b	.L566
.L710:
	cmn	r7, #308
	itt	gt
	rsbgt	r2, r7, #0
	movgt	r1, #1
	bgt	.L565
	fldd	d0, .L723+24
	b	.L571
.L705:
	fldd	d0, .L723+24
	mov	r8, lr
	b	.L589
.L722:
	ldrb	r4, [lr, #-1]	@ zero_extendqisi2
	add	lr, lr, #-1
	cmp	r4, #46
	ittt	eq
	moveq	r0, #1
	addeq	r10, r10, r0
	streq	r0, [sp, #16]
	b	.L603
.L621:
	negs	r2, r2
	movs	r3, #45
	strb	r3, [r8, #1]
	subs	r7, r7, #2
	add	r8, r8, #2
	cmp	r2, #0
	bne	.L622
	cmp	r7, #0
	bgt	.L626
.L558:
	ldr	r1, .L725
	ldr	r0, [sp, #12]
.LPIC70:
	add	r1, pc
	bl	png_error(PLT)
.L653:
	movs	r3, #9
	b	.L624
.L652:
	movs	r3, #8
	b	.L624
.L651:
	movs	r3, #7
	b	.L624
.L650:
	movs	r3, #6
	b	.L624
.L649:
	movs	r3, #5
	b	.L624
.L648:
	movs	r3, #4
	b	.L624
.L647:
	movs	r3, #3
	b	.L624
.L646:
	movs	r3, #2
	b	.L624
.L645:
	movs	r3, #1
	b	.L624
.L726:
	.align	2
.L725:
	.word	.LC57-(.LPIC70+4)
	.size	png_ascii_from_fp, .-png_ascii_from_fp
	.section	.text.png_ascii_from_fixed,"ax",%progbits
	.align	2
	.global	png_ascii_from_fixed
	.thumb
	.thumb_func
	.type	png_ascii_from_fixed, %function
png_ascii_from_fixed:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #12
	push	{r4, r5, r6, lr}
	sub	sp, sp, #16
	bls	.L728
	cmp	r3, #0
	blt	.L763
.L730:
	cmp	r3, #0
	beq	.L731
	movw	r2, #52429
	movt	r2, 52428
	umull	r4, r0, r2, r3
	lsrs	r0, r0, #3
	add	r4, r0, r0, lsl #2
	sub	r4, r3, r4, lsl #1
	add	r3, r4, #48
	cmp	r4, #0
	ite	ne
	movne	r4, #1
	moveq	r4, #16
	strb	r3, [sp, #4]
	cmp	r0, #0
	beq	.L741
	umull	r5, r3, r2, r0
	lsrs	r3, r3, #3
	add	r5, r3, r3, lsl #2
	sub	r0, r0, r5, lsl #1
	add	r5, r0, #48
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	cmp	r4, #16
	it	ne
	movne	r0, #0
	strb	r5, [sp, #5]
	cmp	r0, #0
	it	ne
	movne	r4, #2
	cmp	r3, #0
	beq	.L742
	umull	r5, r0, r2, r3
	lsrs	r0, r0, #3
	add	r5, r0, r0, lsl #2
	sub	r3, r3, r5, lsl #1
	add	r5, r3, #48
	adds	r3, r3, #0
	it	ne
	movne	r3, #1
	cmp	r4, #16
	it	ne
	movne	r3, #0
	strb	r5, [sp, #6]
	cmp	r3, #0
	it	ne
	movne	r4, #3
	cmp	r0, #0
	beq	.L743
	umull	r5, r3, r2, r0
	lsrs	r3, r3, #3
	add	r5, r3, r3, lsl #2
	sub	r0, r0, r5, lsl #1
	add	r5, r0, #48
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	cmp	r4, #16
	it	ne
	movne	r0, #0
	strb	r5, [sp, #7]
	cmp	r0, #0
	it	ne
	movne	r4, #4
	cmp	r3, #0
	beq	.L744
	umull	r5, r0, r2, r3
	lsrs	r0, r0, #3
	add	r5, r0, r0, lsl #2
	sub	r3, r3, r5, lsl #1
	add	r5, r3, #48
	adds	r3, r3, #0
	it	ne
	movne	r3, #1
	cmp	r4, #16
	it	ne
	movne	r3, #0
	strb	r5, [sp, #8]
	cmp	r3, #0
	it	ne
	movne	r4, #5
	cmp	r0, #0
	beq	.L745
	umull	r5, r3, r2, r0
	lsrs	r3, r3, #3
	add	r5, r3, r3, lsl #2
	sub	r0, r0, r5, lsl #1
	add	r5, r0, #48
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	cmp	r4, #16
	it	ne
	movne	r0, #0
	strb	r5, [sp, #9]
	cmp	r0, #0
	it	ne
	movne	r4, #6
	cmp	r3, #0
	beq	.L746
	umull	r5, r0, r2, r3
	lsrs	r0, r0, #3
	add	r5, r0, r0, lsl #2
	sub	r3, r3, r5, lsl #1
	add	r5, r3, #48
	adds	r3, r3, #0
	it	ne
	movne	r3, #1
	cmp	r4, #16
	it	ne
	movne	r3, #0
	strb	r5, [sp, #10]
	cmp	r3, #0
	it	ne
	movne	r4, #7
	cmp	r0, #0
	beq	.L747
	umull	r5, r3, r2, r0
	lsrs	r3, r3, #3
	add	r5, r3, r3, lsl #2
	sub	r0, r0, r5, lsl #1
	add	r5, r0, #48
	adds	r0, r0, #0
	it	ne
	movne	r0, #1
	cmp	r4, #16
	it	ne
	movne	r0, #0
	strb	r5, [sp, #11]
	cmp	r0, #0
	it	ne
	movne	r4, #8
	cmp	r3, #0
	beq	.L748
	umull	r0, r2, r2, r3
	lsrs	r2, r2, #3
	add	r0, r2, r2, lsl #2
	sub	r3, r3, r0, lsl #1
	add	r0, r3, #48
	adds	r3, r3, #0
	it	ne
	movne	r3, #1
	cmp	r4, #16
	it	ne
	movne	r3, #0
	strb	r0, [sp, #12]
	cmp	r3, #0
	it	ne
	movne	r4, #9
	cmp	r2, #0
	beq	.L749
	cmp	r4, #16
	it	eq
	moveq	r4, #10
	movs	r3, #10
	adds	r2, r2, #48
	strb	r2, [sp, #13]
.L733:
	subs	r2, r3, #1
	add	r0, sp, #16
	add	r0, r0, r2
	cmp	r2, #5
	ldrb	r0, [r0, #-12]	@ zero_extendqisi2
	strb	r0, [r1]
	beq	.L734
	subs	r2, r3, #2
	add	r0, sp, #16
	add	r0, r0, r2
	cmp	r2, #5
	ldrb	r0, [r0, #-12]	@ zero_extendqisi2
	strb	r0, [r1, #1]
	beq	.L734
	subs	r2, r3, #3
	add	r0, sp, #16
	add	r0, r0, r2
	cmp	r2, #5
	ldrb	r0, [r0, #-12]	@ zero_extendqisi2
	strb	r0, [r1, #2]
	beq	.L734
	subs	r2, r3, #4
	add	r0, sp, #16
	add	r0, r0, r2
	cmp	r2, #6
	ldrb	r0, [r0, #-12]	@ zero_extendqisi2
	it	eq
	ldrbeq	r2, [sp, #9]	@ zero_extendqisi2
	strb	r0, [r1, #3]
	it	eq
	strbeq	r2, [r1, #4]
.L734:
	subs	r3, r3, #5
	movs	r6, #5
	add	r1, r1, r3
.L738:
	cmp	r4, #5
	it	hi
	movhi	r3, r1
	bhi	.L735
	cmp	r6, #5
	mov	r3, #46
	add	r5, r1, #1
	strb	r3, [r1]
	beq	.L736
	rsb	r3, r6, #5
	mov	r0, r5
	mov	r2, r3
	movs	r1, #48
	add	r5, r5, r3
	bl	memset(PLT)
	cmp	r6, r4
	bcc	.L751
.L736:
	subs	r2, r6, #1
	add	r1, sp, #16
	add	r1, r1, r2
	cmp	r2, r4
	ldrb	r1, [r1, #-12]	@ zero_extendqisi2
	add	r3, r5, #1
	strb	r1, [r5]
	bcc	.L735
	subs	r2, r6, #2
	add	r1, sp, #16
	add	r1, r1, r2
	cmp	r2, r4
	ldrb	r1, [r1, #-12]	@ zero_extendqisi2
	add	r3, r5, #2
	strb	r1, [r5, #1]
	bcc	.L735
	subs	r2, r6, #3
	add	r1, sp, #16
	add	r1, r1, r2
	cmp	r2, r4
	ldrb	r1, [r1, #-12]	@ zero_extendqisi2
	add	r3, r5, #3
	strb	r1, [r5, #2]
	bcc	.L735
	subs	r6, r6, #4
	add	r2, sp, #16
	add	r2, r2, r6
	cmp	r6, r4
	ldrb	r2, [r2, #-12]	@ zero_extendqisi2
	add	r3, r5, #4
	strb	r2, [r5, #3]
	bcc	.L735
	ldrb	r2, [sp, #4]	@ zero_extendqisi2
	adds	r3, r5, #5
	strb	r2, [r5, #4]
	movs	r2, #0
	strb	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L731:
	adds	r3, r1, #1
	movs	r2, #48
	strb	r2, [r1]
.L735:
	movs	r2, #0
	strb	r2, [r3]
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
.L763:
	negs	r3, r3
	movs	r2, #45
	cmp	r3, #-2147483648
	strb	r2, [r1]
	add	r1, r1, #1
	bls	.L730
.L728:
	ldr	r1, .L764
.LPIC71:
	add	r1, pc
	bl	png_error(PLT)
.L748:
	movs	r3, #8
	b	.L733
.L743:
	movs	r6, #3
	b	.L738
.L744:
	movs	r6, #4
	b	.L738
.L745:
	movs	r6, #5
	b	.L738
.L746:
	movs	r3, #6
	b	.L733
.L741:
	movs	r6, #1
	b	.L738
.L742:
	movs	r6, #2
	b	.L738
.L749:
	movs	r3, #9
	b	.L733
.L747:
	movs	r3, #7
	b	.L733
.L751:
	mov	r3, r5
	b	.L735
.L765:
	.align	2
.L764:
	.word	.LC57-(.LPIC71+4)
	.size	png_ascii_from_fixed, .-png_ascii_from_fixed
	.section	.text.png_fixed,"ax",%progbits
	.align	2
	.global	png_fixed
	.thumb
	.thumb_func
	.type	png_fixed, %function
png_fixed:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	fldd	d17, .L770
	fconstd	d16, #96
	fcpyd	d18, d16
	push	{r3, r4, r5, lr}
	mov	r5, r0
	fmacd	d18, d0, d17
	mov	r4, r1
	fcpyd	d0, d18
	bl	floor(PLT)
	fldd	d17, .L770+8
	fldd	d16, .L770+16
	fcmped	d0, d17
	fmstat
	fcmped	d0, d16
	ite	mi
	movmi	r3, #1
	movpl	r3, #0
	fmstat
	it	gt
	orrgt	r3, r3, #1
	cbnz	r3, .L769
	ftosizd	s15, d0
	fmrs	r0, s15	@ int
	pop	{r3, r4, r5, pc}
.L769:
	mov	r0, r5
	mov	r1, r4
	bl	png_fixed_error(PLT)
.L771:
	.align	3
.L770:
	.word	0
	.word	1090021888
	.word	0
	.word	-1042284544
	.word	-4194304
	.word	1105199103
	.size	png_fixed, .-png_fixed
	.section	.text.png_muldiv,"ax",%progbits
	.align	2
	.global	png_muldiv
	.thumb
	.thumb_func
	.type	png_muldiv, %function
png_muldiv:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r3, #0
	beq	.L776
	cmp	r2, #0
	it	ne
	cmpne	r1, #0
	push	{r4, lr}
	mov	r4, r0
	beq	.L780
	fmsr	s15, r1	@ int
	fsitod	d0, s15
	fmsr	s15, r2	@ int
	fsitod	d18, s15
	fmsr	s15, r3	@ int
	fsitod	d17, s15
	fconstd	d16, #96
	fmuld	d0, d0, d18
	fdivd	d0, d0, d17
	faddd	d0, d0, d16
	bl	floor(PLT)
	fldd	d17, .L781
	fldd	d16, .L781+8
	fcmped	d0, d17
	fmstat
	fcmped	d0, d16
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	fmstat
	and	r3, r3, #1
	it	hi
	movhi	r3, #0
	cbz	r3, .L777
	ftosizd	s0, d0
	movs	r0, #1
	fsts	s0, [r4]	@ int
	pop	{r4, pc}
.L780:
	movs	r2, #0
	movs	r0, #1
	str	r2, [r4]
	pop	{r4, pc}
.L776:
	mov	r0, r3
	bx	lr
.L777:
	mov	r0, r3
	pop	{r4, pc}
.L782:
	.align	3
.L781:
	.word	0
	.word	-1042284544
	.word	-4194304
	.word	1105199103
	.size	png_muldiv, .-png_muldiv
	.section	.text.png_colorspace_set_rgb_coefficients,"ax",%progbits
	.align	2
	.global	png_colorspace_set_rgb_coefficients
	.thumb
	.thumb_func
	.type	png_colorspace_set_rgb_coefficients, %function
png_colorspace_set_rgb_coefficients:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldrb	r3, [r0, #941]	@ zero_extendqisi2
	sub	sp, sp, #24
	cmp	r3, #0
	bne	.L783
	ldrh	r3, [r0, #1138]
	lsls	r3, r3, #30
	bpl	.L783
	ldr	r1, [r0, #1104]
	ldr	r2, [r0, #1116]
	ldr	r3, [r0, #1128]
	str	r1, [sp]
	adds	r5, r1, r2
	str	r2, [sp, #8]
	add	r5, r5, r3
	str	r3, [sp, #16]
	cmp	r5, #0
	ble	.L785
	cmp	r1, #0
	blt	.L785
	mov	r0, sp
	mov	r2, #32768
	mov	r3, r5
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L785
	ldr	r3, [sp]
	cmp	r3, #32768
	bhi	.L785
	ldr	r1, [sp, #8]
	cmp	r1, #0
	blt	.L785
	add	r0, sp, #8
	mov	r2, #32768
	mov	r3, r5
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L785
	ldr	r3, [sp, #8]
	cmp	r3, #32768
	bhi	.L785
	ldr	r1, [sp, #16]
	cmp	r1, #0
	blt	.L785
	mov	r3, r5
	add	r0, sp, #16
	mov	r2, #32768
	bl	png_muldiv(PLT)
	cbz	r0, .L785
	ldr	r1, [sp, #16]
	cmp	r1, #32768
	bhi	.L785
	ldr	r2, [sp]
	movw	r6, #32769
	ldr	r3, [sp, #8]
	adds	r0, r2, r3
	adds	r5, r1, r0
	cmp	r5, r6
	bgt	.L785
	beq	.L793
	cmp	r5, #32768
	beq	.L787
	cmp	r2, r3
	mov	r5, #1
	ble	.L791
.L792:
	cmp	r1, r2
	ble	.L809
.L790:
	add	r5, r5, r1
	mov	r1, r5
	str	r5, [sp, #16]
.L789:
	add	r0, r0, r1
	cmp	r0, #32768
	bne	.L810
.L787:
	strh	r2, [r4, #942]	@ movhi
	strh	r3, [r4, #944]	@ movhi
.L783:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, pc}
.L793:
	cmp	r2, r3
	mov	r5, #-1
	bgt	.L792
.L791:
	cmp	r1, r3
	bgt	.L788
	add	r3, r3, r5
	str	r3, [sp, #8]
	adds	r0, r2, r3
	b	.L789
.L788:
	cmp	r2, r3
	blt	.L790
	b	.L792
.L809:
	add	r2, r2, r5
	str	r2, [sp]
	adds	r0, r3, r2
	b	.L789
.L785:
	ldr	r1, .L811
	mov	r0, r4
.LPIC73:
	add	r1, pc
	bl	png_error(PLT)
.L810:
	ldr	r1, .L811+4
	mov	r0, r4
.LPIC72:
	add	r1, pc
	bl	png_error(PLT)
.L812:
	.align	2
.L811:
	.word	.LC59-(.LPIC73+4)
	.word	.LC58-(.LPIC72+4)
	.size	png_colorspace_set_rgb_coefficients, .-png_colorspace_set_rgb_coefficients
	.section	.text.png_muldiv_warn,"ax",%progbits
	.align	2
	.global	png_muldiv_warn
	.thumb
	.thumb_func
	.type	png_muldiv_warn, %function
png_muldiv_warn:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	mov	r5, r0
	mov	r0, sp
	bl	png_muldiv(PLT)
	mov	r4, r0
	cbz	r0, .L814
	ldr	r4, [sp]
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L814:
	ldr	r1, .L817
	mov	r0, r5
.LPIC74:
	add	r1, pc
	bl	png_warning(PLT)
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L818:
	.align	2
.L817:
	.word	.LC60-(.LPIC74+4)
	.size	png_muldiv_warn, .-png_muldiv_warn
	.section	.text.png_reciprocal,"ax",%progbits
	.align	2
	.global	png_reciprocal
	.thumb
	.thumb_func
	.type	png_reciprocal, %function
png_reciprocal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	fmsr	s15, r0	@ int
	fsitod	d17, s15
	fldd	d0, .L823
	fconstd	d16, #96
	push	{r3, lr}
	fdivd	d0, d0, d17
	faddd	d0, d0, d16
	bl	floor(PLT)
	fldd	d17, .L823+8
	fldd	d16, .L823+16
	fcmped	d0, d17
	fmstat
	fcmped	d0, d16
	ite	ge
	movge	r0, #1
	movlt	r0, #0
	fmstat
	and	r0, r0, #1
	it	hi
	movhi	r0, #0
	cbz	r0, .L820
	ftosizd	s15, d0
	fmrs	r0, s15	@ int
.L820:
	pop	{r3, pc}
.L824:
	.align	3
.L823:
	.word	536870912
	.word	1107468383
	.word	0
	.word	-1042284544
	.word	-4194304
	.word	1105199103
	.size	png_reciprocal, .-png_reciprocal
	.section	.text.png_colorspace_set_endpoints,"ax",%progbits
	.align	2
	.global	png_colorspace_set_endpoints
	.thumb
	.thumb_func
	.type	png_colorspace_set_endpoints, %function
png_colorspace_set_endpoints:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r6, r2
	mov	r8, r0
	mov	r4, r1
	mov	r10, r3
	sub	sp, sp, #204
	ldmia	r6!, {r0, r1, r2, r3}
	add	r9, sp, #120
	mov	r5, r9
	stmia	r5!, {r0, r1, r2, r3}
	ldr	r7, [sp, #124]
	ldmia	r6!, {r0, r1, r2, r3}
	cmp	r7, #0
	ldr	r6, [r6]
	stmia	r5!, {r0, r1, r2, r3}
	str	r6, [r5]
	blt	.L839
	ldr	r2, [sp, #136]
	cmp	r2, #0
	blt	.L839
	ldr	r3, [sp, #148]
	cmp	r3, #0
	blt	.L839
	ldr	r1, [sp, #120]
	cmp	r1, #0
	blt	.L839
	ldr	r5, [sp, #132]
	cmp	r5, #0
	blt	.L839
	ldr	r6, [sp, #144]
	cmp	r6, #0
	blt	.L839
	ldr	lr, [sp, #128]
	cmp	lr, #0
	blt	.L839
	ldr	r0, [sp, #140]
	cmp	r0, #0
	blt	.L839
	ldr	r0, [sp, #152]
	cmp	r0, #0
	blt	.L839
	movw	r0, #65535
	movt	r0, 32767
	subs	r0, r0, r7
	cmp	r5, r0
	bgt	.L839
	movw	r0, #65535
	add	r2, r2, r7
	movt	r0, 32767
	subs	r0, r0, r2
	cmp	r6, r0
	bgt	.L839
	movw	r5, #34464
	adds	r6, r3, r2
	movt	r5, 1
	cmp	r6, r5
	beq	.L850
	mov	r0, r9
	mov	r2, r5
	mov	r3, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	add	r0, sp, #124
	ldr	r1, [sp, #124]
	mov	r2, r5
	mov	r3, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	add	r0, sp, #128
	ldr	r1, [sp, #128]
	mov	r2, r5
	mov	r3, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	add	r0, sp, #132
	ldr	r1, [sp, #132]
	mov	r2, r5
	mov	r3, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	add	r0, r9, #16
	ldr	r1, [sp, #136]
	mov	r2, r5
	mov	r3, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	add	r0, r9, #20
	ldr	r1, [sp, #140]
	mov	r2, r5
	mov	r3, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	add	r0, r9, #24
	ldr	r1, [sp, #144]
	mov	r2, r5
	mov	r3, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	mov	r2, r5
	add	r0, r9, #28
	ldr	r1, [sp, #148]
	mov	r3, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	movw	r2, #34464
	mov	r3, r6
	movt	r2, 1
	add	r0, r9, #32
	ldr	r1, [sp, #152]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r1, [sp, #120]
	ldr	r7, [sp, #124]
	ldr	r3, [sp, #128]
.L827:
	add	r7, r7, r1
	movw	r6, #34464
	add	r7, r7, r3
	movt	r6, 1
	add	fp, sp, #56
	mov	r3, r7
	mov	r2, r6
	mov	r0, fp
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	add	r0, sp, #60
	ldr	r1, [sp, #124]
	mov	r2, r6
	mov	r3, r7
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r5, [sp, #120]
	add	r0, sp, #64
	ldr	r3, [sp, #132]
	mov	r2, r6
	str	r5, [sp, #12]
	ldr	r5, [sp, #136]
	mov	r1, r3
	add	r5, r5, r3
	ldr	r3, [sp, #124]
	str	r3, [sp, #16]
	ldr	r3, [sp, #140]
	add	r5, r5, r3
	mov	r3, r5
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	add	r0, sp, #68
	ldr	r1, [sp, #136]
	mov	r2, r6
	mov	r3, r5
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r3, [sp, #132]
	add	r0, sp, #72
	ldr	lr, [sp, #144]
	mov	r2, r6
	str	r3, [sp, #24]
	ldr	r3, [sp, #148]
	mov	r1, lr
	add	lr, lr, r3
	ldr	r3, [sp, #136]
	str	r3, [sp, #28]
	ldr	r3, [sp, #152]
	add	r3, r3, lr
	str	r3, [sp, #8]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	add	r0, sp, #76
	ldr	r1, [sp, #148]
	mov	r2, r6
	ldr	r3, [sp, #8]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	add	r7, r7, r5
	ldr	r3, [sp, #24]
	ldr	r5, [sp, #8]
	add	r0, sp, #80
	ldr	r1, [sp, #12]
	ldr	r2, [sp, #144]
	add	r5, r5, r7
	ldr	r7, [sp, #148]
	add	r1, r1, r3
	mov	r3, r5
	add	r1, r1, r2
	mov	r2, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r2, [sp, #28]
	mov	r3, r5
	ldr	r1, [sp, #16]
	add	r0, fp, #28
	add	r1, r1, r2
	mov	r2, r6
	add	r1, r1, r7
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	mov	lr, r9
	add	r7, sp, #160
	ldmia	lr!, {r0, r1, r2, r3}
	mov	ip, r7
	ldr	r5, [sp, #56]
	stmia	ip!, {r0, r1, r2, r3}
	cmp	r5, r6
	ldmia	lr!, {r0, r1, r2, r3}
	ldr	lr, [lr]
	stmia	ip!, {r0, r1, r2, r3}
	str	lr, [ip]
	bhi	.L839
	ldr	r2, [sp, #60]
	cmp	r2, #0
	blt	.L839
	rsb	r3, r5, #99840
	adds	r3, r3, #160
	cmp	r3, r2
	blt	.L839
	ldr	r1, [sp, #64]
	movw	r3, #34464
	movt	r3, 1
	cmp	r1, r3
	bhi	.L839
	ldr	r5, [sp, #68]
	cmp	r5, #0
	blt	.L839
	rsb	r0, r1, #99840
	adds	r0, r0, #160
	cmp	r0, r5
	blt	.L839
	ldr	r0, [sp, #72]
	cmp	r0, r3
	bhi	.L839
	ldr	r6, [sp, #76]
	cmp	r6, #0
	blt	.L839
	rsb	r5, r0, #99840
	adds	r5, r5, #160
	cmp	r5, r6
	blt	.L839
	ldr	r5, [sp, #80]
	cmp	r5, r3
	bhi	.L839
	ldr	r3, [sp, #84]
	cmp	r3, #0
	blt	.L839
	rsb	r5, r5, #99840
	adds	r5, r5, #160
	cmp	r5, r3
	blt	.L839
	add	r5, sp, #48
	subs	r1, r1, r0
	subs	r2, r2, r6
	mov	r0, r5
	movs	r3, #7
	str	r5, [sp, #16]
	bl	png_muldiv(PLT)
	cbnz	r0, .L989
.L938:
	ldrh	r3, [r4, #74]
	mov	r0, r8
	ldr	r1, .L991
	mvn	r3, r3, lsl #17
.LPIC78:
	add	r1, pc
	mvn	r3, r3, lsr #17
	strh	r3, [r4, #74]	@ movhi
	bl	png_error(PLT)
.L989:
	add	r5, sp, #88
	ldr	r6, [sp, #68]
	str	r5, [sp, #12]
	mov	r0, r5
	ldr	r1, [sp, #76]
	movs	r3, #7
	ldr	r5, [sp, #56]
	ldr	r2, [sp, #72]
	subs	r1, r6, r1
	subs	r2, r5, r2
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L938
	ldr	r6, [sp, #72]
	add	r0, sp, #48
	ldr	r5, [sp, #84]
	movs	r3, #7
	ldr	r1, [sp, #64]
	ldr	r2, [sp, #76]
	subs	r1, r1, r6
	ldr	r6, [sp, #48]
	subs	r2, r5, r2
	ldr	r5, [sp, #88]
	subs	r6, r6, r5
	str	r6, [sp, #8]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L938
	ldr	r5, [sp, #68]
	add	r0, sp, #88
	ldr	r1, [sp, #76]
	movs	r3, #7
	ldr	r6, [sp, #80]
	subs	r1, r5, r1
	ldr	r5, [sp, #72]
	subs	r2, r6, r5
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L938
	ldr	r6, [sp, #48]
	add	r0, sp, #32
	ldr	r3, [sp, #88]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #84]
	subs	r3, r6, r3
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r2, [sp, #84]
	ldr	r3, [sp, #32]
	cmp	r2, r3
	bge	.L839
	ldr	r1, [sp, #76]
	add	r0, sp, #48
	ldr	r6, [sp, #80]
	movs	r3, #7
	ldr	r2, [sp, #72]
	ldr	r5, [sp, #60]
	subs	r2, r6, r2
	subs	r1, r5, r1
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L938
	ldr	r5, [sp, #56]
	add	r0, sp, #88
	ldr	r1, [sp, #72]
	movs	r3, #7
	ldr	r6, [sp, #84]
	ldr	r2, [sp, #76]
	subs	r1, r5, r1
	subs	r2, r6, r2
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L938
	ldr	r6, [sp, #48]
	add	r0, sp, #40
	ldr	r3, [sp, #88]
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #84]
	subs	r3, r6, r3
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r0, [sp, #84]
	ldr	r3, [sp, #40]
	cmp	r0, r3
	bge	.L839
	bl	png_reciprocal(PLT)
	mov	r6, r0
	ldr	r0, [sp, #32]
	bl	png_reciprocal(PLT)
	subs	r6, r6, r0
	ldr	r0, [sp, #40]
	bl	png_reciprocal(PLT)
	subs	r6, r6, r0
	cmp	r6, #0
	ble	.L839
	movw	r2, #34464
	mov	r0, r7
	movt	r2, 1
	ldr	r1, [sp, #56]
	ldr	r3, [sp, #32]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	movw	r2, #34464
	adds	r0, r7, #4
	movt	r2, 1
	ldr	r1, [sp, #60]
	ldr	r3, [sp, #32]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r5, [sp, #56]
	movw	r2, #34464
	ldr	r1, [sp, #60]
	movt	r2, 1
	add	r0, r7, #8
	ldr	r3, [sp, #32]
	rsb	r5, r5, #99840
	adds	r5, r5, #160
	subs	r1, r5, r1
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	movw	r2, #34464
	add	r0, r7, #12
	movt	r2, 1
	ldr	r1, [sp, #64]
	ldr	r3, [sp, #40]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	movw	r2, #34464
	add	r0, r7, #16
	movt	r2, 1
	ldr	r1, [sp, #68]
	ldr	r3, [sp, #40]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r5, [sp, #64]
	movw	r2, #34464
	ldr	r1, [sp, #68]
	movt	r2, 1
	add	r0, r7, #20
	ldr	r3, [sp, #40]
	rsb	r5, r5, #99840
	adds	r5, r5, #160
	subs	r1, r5, r1
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	movw	r3, #34464
	add	r0, r7, #24
	movt	r3, 1
	ldr	r1, [sp, #72]
	mov	r2, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	movw	r3, #34464
	add	r0, r7, #28
	movt	r3, 1
	ldr	r1, [sp, #76]
	mov	r2, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r5, [sp, #72]
	movw	r3, #34464
	ldr	r1, [sp, #76]
	add	r0, r7, #32
	mov	r2, r6
	movt	r3, 1
	rsb	r5, r5, #99840
	adds	r5, r5, #160
	subs	r1, r5, r1
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r6, [sp, #160]
	movw	r2, #34464
	ldr	r5, [sp, #164]
	movt	r2, 1
	ldr	r3, [sp, #168]
	add	r0, sp, #88
	mov	r1, r6
	add	r6, r6, r5
	add	r6, r6, r3
	mov	r3, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	movw	r2, #34464
	add	r0, sp, #92
	movt	r2, 1
	ldr	r1, [sp, #164]
	mov	r3, r6
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r3, [sp, #160]
	movw	r2, #34464
	ldr	r7, [sp, #172]
	movt	r2, 1
	ldr	r5, [sp, #176]
	add	r0, sp, #96
	str	r3, [sp, #8]
	ldr	r3, [sp, #180]
	mov	r1, r7
	add	r7, r7, r5
	ldr	r5, [sp, #164]
	add	r7, r7, r3
	mov	r3, r7
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	movw	r2, #34464
	add	r0, sp, #100
	movt	r2, 1
	ldr	r1, [sp, #176]
	mov	r3, r7
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L839
	ldr	r3, [sp, #172]
	movw	r2, #34464
	ldr	lr, [sp, #184]
	movt	r2, 1
	ldr	ip, [sp, #192]
	add	r0, sp, #104
	str	r3, [sp, #16]
	ldr	r3, [sp, #188]
	mov	r1, lr
	add	lr, lr, r3
	ldr	r3, [sp, #176]
	add	ip, ip, lr
	str	ip, [sp, #4]
	str	r3, [sp, #20]
	mov	r3, ip
	bl	png_muldiv(PLT)
	ldr	ip, [sp, #4]
	cbz	r0, .L839
	movw	r2, #34464
	mov	r3, ip
	add	r0, sp, #108
	movt	r2, 1
	ldr	r1, [sp, #188]
	bl	png_muldiv(PLT)
	ldr	ip, [sp, #4]
	cbz	r0, .L839
	add	r6, r6, r7
	ldr	r0, [sp, #8]
	add	r7, r6, ip
	ldr	r6, [sp, #16]
	ldr	r1, [sp, #184]
	movw	r2, #34464
	mov	r3, r7
	movt	r2, 1
	add	r0, r0, r6
	ldr	r6, [sp, #188]
	add	r1, r1, r0
	add	r0, sp, #112
	bl	png_muldiv(PLT)
	cbz	r0, .L839
	ldr	r1, [sp, #20]
	movw	r2, #34464
	mov	r3, r7
	movt	r2, 1
	add	r0, sp, #116
	add	r1, r1, r5
	add	r1, r1, r6
	bl	png_muldiv(PLT)
	cbz	r0, .L839
	add	r1, sp, #88
	mov	r0, fp
	movs	r2, #5
	bl	png_colorspace_endpoints_match(PLT)
	clz	r5, r0
	lsrs	r5, r5, #5
	cbz	r5, .L838
	cmp	r5, #1
	bne	.L938
.L839:
	ldrh	r3, [r4, #74]
	mov	r0, r8
	ldr	r1, .L991+4
	movs	r5, #0
	mvn	r3, r3, lsl #17
.LPIC77:
	add	r1, pc
	mvn	r3, r3, lsr #17
	strh	r3, [r4, #74]	@ movhi
	bl	png_benign_error(PLT)
.L894:
	mov	r0, r5
	add	sp, sp, #204
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L850:
	mov	r3, lr
	b	.L827
.L838:
	ldrh	r7, [r4, #74]
	lsls	r2, r7, #16
	bmi	.L894
	cmp	r10, #1
	add	r6, r4, #4
	ble	.L983
.L841:
	mov	lr, fp
	add	r5, r4, #36
	ldmia	lr!, {r0, r1, r2, r3}
	orr	ip, r7, #2
	stmia	r6!, {r0, r1, r2, r3}
	ldmia	lr, {r0, r1, r2, r3}
	stmia	r6, {r0, r1, r2, r3}
	ldmia	r9!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r9!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	mov	r0, fp
	ldr	r6, [r9]
	mov	r2, #1000
	ldr	r1, .L991+8
	str	r6, [r5]
	strh	ip, [r4, #74]	@ movhi
.LPIC76:
	add	r1, pc
	bl	png_colorspace_endpoints_match(PLT)
	cbz	r0, .L843
	orr	r7, r7, #66
	movs	r5, #2
	mov	r0, r5
	strh	r7, [r4, #74]	@ movhi
	add	sp, sp, #204
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L843:
	movs	r5, #2
	bic	r7, r7, #64
	orrs	r7, r7, r5
	mov	r0, r5
	strh	r7, [r4, #74]	@ movhi
	add	sp, sp, #204
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L983:
	lsls	r3, r7, #30
	bpl	.L841
	mov	r0, fp
	mov	r1, r6
	movs	r2, #100
	bl	png_colorspace_endpoints_match(PLT)
	mov	r5, r0
	cbz	r0, .L990
	movs	r5, #1
	cmp	r10, #0
	bne	.L841
	b	.L894
.L990:
	mvn	r3, r7, lsl #17
	ldr	r1, .L991+12
	mov	r0, r8
	mvn	r3, r3, lsr #17
.LPIC75:
	add	r1, pc
	strh	r3, [r4, #74]	@ movhi
	bl	png_benign_error(PLT)
	b	.L894
.L992:
	.align	2
.L991:
	.word	.LC63-(.LPIC78+4)
	.word	.LC62-(.LPIC77+4)
	.word	.LANCHOR5-(.LPIC76+4)
	.word	.LC61-(.LPIC75+4)
	.size	png_colorspace_set_endpoints, .-png_colorspace_set_endpoints
	.section	.text.png_colorspace_set_chromaticities,"ax",%progbits
	.align	2
	.global	png_colorspace_set_chromaticities
	.thumb
	.thumb_func
	.type	png_colorspace_set_chromaticities, %function
png_colorspace_set_chromaticities:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movw	r5, #34464
	ldr	r6, [r2]
	movt	r5, 1
	sub	sp, sp, #124
	mov	r4, r2
	mov	r10, r0
	mov	r9, r1
	cmp	r6, r5
	bhi	.L1005
	mov	fp, r3
	ldr	r3, [r2, #4]
	cmp	r3, #0
	blt	.L1005
	rsb	r6, r6, #99840
	adds	r6, r6, #160
	cmp	r6, r3
	blt	.L1005
	ldr	r1, [r2, #8]
	cmp	r1, r5
	bhi	.L1005
	ldr	r0, [r2, #12]
	cmp	r0, #0
	blt	.L1005
	rsb	r2, r1, #99840
	adds	r2, r2, #160
	cmp	r2, r0
	blt	.L1005
	ldr	r0, [r4, #16]
	cmp	r0, r5
	bhi	.L1005
	ldr	r2, [r4, #20]
	cmp	r2, #0
	blt	.L1005
	rsb	r6, r0, #99840
	adds	r6, r6, #160
	cmp	r6, r2
	blt	.L1005
	ldr	r6, [r4, #24]
	cmp	r6, r5
	bhi	.L1005
	ldr	r5, [r4, #28]
	cmp	r5, #0
	blt	.L1005
	rsb	r6, r6, #99840
	adds	r6, r6, #160
	cmp	r6, r5
	blt	.L1005
	add	r5, sp, #40
	subs	r1, r1, r0
	subs	r2, r3, r2
	mov	r0, r5
	movs	r3, #7
	bl	png_muldiv(PLT)
	cbnz	r0, .L1097
.L1065:
	ldrh	r3, [r9, #74]
	mov	r0, r10
	ldr	r1, .L1100
	mvn	r3, r3, lsl #17
.LPIC82:
	add	r1, pc
	mvn	r3, r3, lsr #17
	strh	r3, [r9, #74]	@ movhi
	bl	png_error(PLT)
.L1097:
	add	r1, sp, #48
	ldr	r6, [r4, #12]
	str	r1, [sp, #20]
	add	r0, sp, #48
	ldr	r1, [r4, #20]
	movs	r3, #7
	ldr	r7, [r4]
	ldr	r2, [r4, #16]
	subs	r1, r6, r1
	subs	r2, r7, r2
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1065
	ldr	r6, [r4, #8]
	mov	r0, r5
	ldr	r1, [r4, #16]
	movs	r3, #7
	ldr	r2, [r4, #20]
	ldr	r8, [sp, #40]
	subs	r1, r6, r1
	ldr	r6, [r4, #28]
	ldr	r7, [sp, #48]
	subs	r2, r6, r2
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1065
	ldr	r6, [r4, #12]
	add	r0, sp, #48
	ldr	r1, [r4, #20]
	movs	r3, #7
	ldr	r2, [r4, #16]
	subs	r1, r6, r1
	ldr	r6, [r4, #24]
	subs	r2, r6, r2
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1065
	ldr	r3, [sp, #48]
	rsb	r7, r7, r8
	ldr	r6, [sp, #40]
	mov	r2, r7
	add	r0, sp, #24
	ldr	r1, [r4, #28]
	subs	r3, r6, r3
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	ldr	r2, [r4, #28]
	ldr	r3, [sp, #24]
	cmp	r2, r3
	bge	.L1005
	ldr	r6, [r4, #4]
	mov	r0, r5
	ldr	r1, [r4, #20]
	movs	r3, #7
	ldr	r5, [r4, #24]
	ldr	r2, [r4, #16]
	subs	r1, r6, r1
	subs	r2, r5, r2
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1065
	ldr	r1, [r4, #16]
	add	r0, sp, #48
	ldr	r6, [r4, #28]
	movs	r3, #7
	ldr	r2, [r4, #20]
	ldr	r5, [r4]
	subs	r2, r6, r2
	subs	r1, r5, r1
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1065
	ldr	r5, [sp, #40]
	mov	r2, r7
	ldr	r3, [sp, #48]
	add	r0, sp, #32
	ldr	r1, [r4, #28]
	subs	r3, r5, r3
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	ldr	r0, [r4, #28]
	ldr	r3, [sp, #32]
	cmp	r0, r3
	bge	.L1005
	bl	png_reciprocal(PLT)
	mov	r7, r0
	ldr	r0, [sp, #24]
	bl	png_reciprocal(PLT)
	subs	r7, r7, r0
	ldr	r0, [sp, #32]
	bl	png_reciprocal(PLT)
	subs	r7, r7, r0
	cmp	r7, #0
	ble	.L1005
	add	r6, sp, #80
	movw	r2, #34464
	mov	r0, r6
	movt	r2, 1
	ldr	r1, [r4]
	ldr	r3, [sp, #24]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	movw	r2, #34464
	adds	r0, r6, #4
	movt	r2, 1
	ldr	r1, [r4, #4]
	ldr	r3, [sp, #24]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	ldr	r5, [r4]
	movw	r2, #34464
	ldr	r1, [r4, #4]
	movt	r2, 1
	add	r0, r6, #8
	ldr	r3, [sp, #24]
	rsb	r5, r5, #99840
	adds	r5, r5, #160
	subs	r1, r5, r1
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	movw	r2, #34464
	add	r0, r6, #12
	movt	r2, 1
	ldr	r1, [r4, #8]
	ldr	r3, [sp, #32]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	movw	r2, #34464
	add	r0, r6, #16
	movt	r2, 1
	ldr	r1, [r4, #12]
	ldr	r3, [sp, #32]
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	ldr	r5, [r4, #8]
	movw	r2, #34464
	ldr	r1, [r4, #12]
	movt	r2, 1
	add	r0, r6, #20
	ldr	r3, [sp, #32]
	rsb	r5, r5, #99840
	adds	r5, r5, #160
	subs	r1, r5, r1
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	movw	r3, #34464
	add	r0, r6, #24
	movt	r3, 1
	ldr	r1, [r4, #16]
	mov	r2, r7
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	movw	r3, #34464
	add	r0, r6, #28
	movt	r3, 1
	ldr	r1, [r4, #20]
	mov	r2, r7
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	ldr	r5, [r4, #16]
	movw	r3, #34464
	ldr	r1, [r4, #20]
	mov	r2, r7
	movt	r3, 1
	add	r0, r6, #32
	rsb	r5, r5, #99840
	adds	r5, r5, #160
	subs	r1, r5, r1
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	ldr	r7, [sp, #80]
	movw	r2, #34464
	ldr	r5, [sp, #84]
	movt	r2, 1
	ldr	r3, [sp, #88]
	add	r0, sp, #48
	mov	r1, r7
	add	r7, r7, r5
	add	r7, r7, r3
	mov	r3, r7
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	movw	r2, #34464
	add	r0, sp, #52
	movt	r2, 1
	ldr	r1, [sp, #84]
	mov	r3, r7
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	ldr	r3, [sp, #92]
	movw	r2, #34464
	ldr	r8, [sp, #96]
	movt	r2, 1
	ldr	r5, [sp, #80]
	add	r0, sp, #56
	mov	r1, r3
	add	r8, r8, r3
	ldr	r3, [sp, #100]
	str	r5, [sp, #8]
	ldr	r5, [sp, #84]
	add	r8, r8, r3
	mov	r3, r8
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	movw	r2, #34464
	add	r0, sp, #60
	movt	r2, 1
	ldr	r1, [sp, #96]
	mov	r3, r8
	bl	png_muldiv(PLT)
	cmp	r0, #0
	beq	.L1005
	ldr	r3, [sp, #92]
	movw	r2, #34464
	ldr	lr, [sp, #104]
	movt	r2, 1
	add	r0, sp, #64
	str	r3, [sp, #12]
	ldr	r3, [sp, #108]
	mov	r1, lr
	add	lr, lr, r3
	ldr	r3, [sp, #96]
	str	r3, [sp, #16]
	ldr	r3, [sp, #112]
	add	r3, r3, lr
	str	r3, [sp, #4]
	bl	png_muldiv(PLT)
	cbz	r0, .L1005
	movw	r2, #34464
	add	r0, sp, #68
	movt	r2, 1
	ldr	r1, [sp, #108]
	ldr	r3, [sp, #4]
	bl	png_muldiv(PLT)
	cbz	r0, .L1005
	add	r7, r7, r8
	ldr	r2, [sp, #12]
	ldr	r8, [sp, #4]
	ldr	r0, [sp, #8]
	ldr	r1, [sp, #104]
	add	r8, r8, r7
	ldr	r7, [sp, #108]
	add	r0, r0, r2
	movw	r2, #34464
	add	r1, r1, r0
	mov	r3, r8
	movt	r2, 1
	add	r0, sp, #72
	bl	png_muldiv(PLT)
	cbz	r0, .L1005
	ldr	r1, [sp, #16]
	movw	r2, #34464
	mov	r3, r8
	movt	r2, 1
	add	r0, sp, #76
	add	r1, r1, r5
	add	r1, r1, r7
	bl	png_muldiv(PLT)
	cbz	r0, .L1005
	add	r1, sp, #48
	mov	r0, r4
	movs	r2, #5
	bl	png_colorspace_endpoints_match(PLT)
	clz	r5, r0
	lsrs	r5, r5, #5
	cbz	r5, .L1098
	cmp	r5, #1
	bne	.L1065
.L1005:
	ldrh	r3, [r9, #74]
	mov	r0, r10
	ldr	r1, .L1100+4
	movs	r5, #0
	mvn	r3, r3, lsl #17
.LPIC81:
	add	r1, pc
	mvn	r3, r3, lsr #17
	strh	r3, [r9, #74]	@ movhi
	bl	png_benign_error(PLT)
.L1038:
	mov	r0, r5
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1098:
	ldrh	r7, [r9, #74]
	lsls	r2, r7, #16
	bmi	.L1038
	cmp	fp, #1
	add	r8, r9, #4
	ble	.L1092
.L1007:
	mov	ip, r4
	mov	lr, r8
	ldmia	ip!, {r0, r1, r2, r3}
	add	r5, r9, #36
	orr	r8, r7, #2
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	ldmia	r6!, {r0, r1, r2, r3}
	stmia	r5!, {r0, r1, r2, r3}
	mov	r0, r4
	ldr	r6, [r6]
	mov	r2, #1000
	ldr	r1, .L1100+8
	str	r6, [r5]
	strh	r8, [r9, #74]	@ movhi
.LPIC80:
	add	r1, pc
	bl	png_colorspace_endpoints_match(PLT)
	cbz	r0, .L1009
	orr	r7, r7, #66
	movs	r5, #2
	mov	r0, r5
	strh	r7, [r9, #74]	@ movhi
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1009:
	movs	r5, #2
	bic	r7, r7, #64
	orrs	r7, r7, r5
	mov	r0, r5
	strh	r7, [r9, #74]	@ movhi
	add	sp, sp, #124
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1092:
	lsls	r3, r7, #30
	bpl	.L1007
	mov	r0, r4
	mov	r1, r8
	movs	r2, #100
	bl	png_colorspace_endpoints_match(PLT)
	mov	r5, r0
	cbz	r0, .L1099
	movs	r5, #1
	cmp	fp, #0
	bne	.L1007
	b	.L1038
.L1099:
	mvn	r3, r7, lsl #17
	ldr	r1, .L1100+12
	mov	r0, r10
	mvn	r3, r3, lsr #17
.LPIC79:
	add	r1, pc
	strh	r3, [r9, #74]	@ movhi
	bl	png_benign_error(PLT)
	b	.L1038
.L1101:
	.align	2
.L1100:
	.word	.LC63-(.LPIC82+4)
	.word	.LC64-(.LPIC81+4)
	.word	.LANCHOR5-(.LPIC80+4)
	.word	.LC61-(.LPIC79+4)
	.size	png_colorspace_set_chromaticities, .-png_colorspace_set_chromaticities
	.section	.text.png_gamma_significant,"ax",%progbits
	.align	2
	.global	png_gamma_significant
	.thumb
	.thumb_func
	.type	png_gamma_significant, %function
png_gamma_significant:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	r0, r0, #94720
	movw	r3, #10000
	sub	r0, r0, #280
	cmp	r0, r3
	ite	ls
	movls	r0, #0
	movhi	r0, #1
	bx	lr
	.size	png_gamma_significant, .-png_gamma_significant
	.section	.text.png_colorspace_set_gamma,"ax",%progbits
	.align	2
	.global	png_colorspace_set_gamma
	.thumb
	.thumb_func
	.type	png_colorspace_set_gamma, %function
png_colorspace_set_gamma:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movw	r5, #48688
	sub	r3, r2, #16
	movt	r5, 9536
	cmp	r3, r5
	sub	sp, sp, #12
	mov	r6, r2
	mov	r7, r0
	mov	r4, r1
	bhi	.L1104
	ldr	r3, [r0, #448]
	ldrh	r5, [r1, #74]
	lsls	r0, r3, #16
	bpl	.L1106
	lsls	r1, r5, #28
	bpl	.L1106
	ldr	r1, .L1123
.LPIC84:
	add	r1, pc
	b	.L1107
.L1106:
	lsls	r2, r5, #16
	bmi	.L1103
	lsls	r3, r5, #31
	ldr	r1, [r4]
	bmi	.L1121
.L1109:
	orr	r5, r5, #9
	str	r6, [r4]
	strh	r5, [r4, #74]	@ movhi
.L1103:
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1104:
	ldrh	r5, [r1, #74]
	ldr	r1, .L1123+4
.LPIC83:
	add	r1, pc
.L1107:
	mvn	r5, r5, lsl #17
	mov	r0, r7
	movs	r2, #1
	mvn	r5, r5, lsr #17
	strh	r5, [r4, #74]	@ movhi
	bl	png_chunk_report(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L1121:
	movw	r2, #34464
	mov	r0, sp
	movt	r2, 1
	mov	r3, r6
	bl	png_muldiv(PLT)
	cbnz	r0, .L1110
.L1113:
	ldrh	r2, [r4, #74]
	and	r2, r2, #32
	uxth	r2, r2
	cbnz	r2, .L1122
	ldr	r1, .L1123+8
	mov	r0, r7
.LPIC86:
	add	r1, pc
	bl	png_chunk_report(PLT)
.L1120:
	ldrh	r5, [r4, #74]
	b	.L1109
.L1110:
	ldr	r0, [sp]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L1113
	b	.L1120
.L1122:
	ldr	r1, .L1123+12
	mov	r0, r7
	movs	r2, #2
.LPIC85:
	add	r1, pc
	bl	png_chunk_report(PLT)
	b	.L1103
.L1124:
	.align	2
.L1123:
	.word	.LC66-(.LPIC84+4)
	.word	.LC65-(.LPIC83+4)
	.word	.LC68-(.LPIC86+4)
	.word	.LC67-(.LPIC85+4)
	.size	png_colorspace_set_gamma, .-png_colorspace_set_gamma
	.section	.text.png_build_16bit_table,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	png_build_16bit_table, %function
png_build_16bit_table:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	fstmfdd	sp!, {d8, d9, d10, d11, d12, d13, d14, d15}
	sub	sp, sp, #60
	str	r2, [sp, #16]
	movs	r2, #1
	ldr	r4, [sp, #16]
	str	r3, [sp, #8]
	str	r0, [sp, #12]
	rsb	r6, r4, #16
	rsb	r5, r4, #8
	lsl	r4, r2, r5
	lsl	lr, r2, r6
	ldr	r6, [sp, #16]
	str	r4, [sp, #4]
	mov	r4, r1
	rsb	r7, r6, #15
	ldr	r6, [sp, #4]
	lsl	r7, r2, r7
	lsls	r1, r6, #2
	add	r6, lr, #-1
	bl	png_calloc(PLT)
	str	r0, [r4]
	ldr	r4, [sp, #4]
	cmp	r4, #0
	beq	.L1125
	fmsr	s15, r6	@ int
	movs	r4, #3
	fuitod	d17, s15
	lsls	r4, r4, r5
	fconstd	d11, #112
	mov	lr, #2
	flds	s15, [sp, #8]	@ int
	movs	r1, #4
	fldd	d16, .L1170
	movs	r2, #5
	fdivd	d11, d11, d17
	movs	r3, #6
	fldd	d10, .L1170+8
	vmov.i32	q7, #8  @ v4si
	fsitod	d9, s15
	lsl	lr, lr, r5
	str	r4, [sp, #28]
	lsls	r1, r1, r5
	lsls	r2, r2, r5
	lsls	r3, r3, r5
	vdup.32	q6, r5
	fmuld	d9, d9, d16
	movs	r4, #0
	subs	r0, r0, #4
	str	lr, [sp, #24]
	str	r1, [sp, #32]
	str	r2, [sp, #36]
	str	r3, [sp, #20]
	str	r0, [sp]
.L1144:
	ldr	r0, [sp, #12]
	mov	r1, #512
	bl	png_malloc(PLT)
	ldr	r3, [sp]
	mov	r10, r0
	ldr	r0, [sp, #8]
	str	r10, [r3, #4]!
	str	r3, [sp]
	bl	png_gamma_significant(PLT)
	cbz	r0, .L1127
	sub	r10, r10, #2
	mov	r8, #0
	fconstd	d8, #96
.L1131:
	lsl	r3, r8, r5
	fcpyd	d1, d9
	add	r8, r8, #1
	add	r3, r3, r4
	fmsr	s15, r3	@ int
	fuitod	d0, s15
	fmuld	d0, d0, d11
	bl	pow(PLT)
	fcpyd	d16, d8
	fmacd	d16, d0, d10
	fcpyd	d0, d16
	bl	trunc(PLT)
	ftouizd	s0, d0
	cmp	r8, #256
	fmrs	r3, s0	@ int
	strh	r3, [r10, #2]!	@ movhi
	bne	.L1131
.L1139:
	ldr	r1, [sp, #4]
	adds	r4, r4, #1
	cmp	r4, r1
	bne	.L1144
.L1125:
	add	sp, sp, #60
	@ sp needed
	fldmfdd	sp!, {d8-d15}
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1127:
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.L1132
	ubfx	r2, r10, #1, #2
	negs	r2, r2
	ands	r2, r2, #7
	beq	.L1145
	cmp	r2, #1
	strh	r4, [r10]	@ movhi
	beq	.L1146
	ldr	r3, [sp, #4]
	cmp	r2, #2
	add	r3, r3, r4
	strh	r3, [r10, #2]	@ movhi
	beq	.L1147
	ldr	r3, [sp, #24]
	cmp	r2, #3
	add	r3, r3, r4
	strh	r3, [r10, #4]	@ movhi
	beq	.L1148
	ldr	r3, [sp, #28]
	cmp	r2, #4
	add	r3, r3, r4
	strh	r3, [r10, #6]	@ movhi
	beq	.L1149
	ldr	r3, [sp, #32]
	cmp	r2, #5
	add	r3, r3, r4
	strh	r3, [r10, #8]	@ movhi
	beq	.L1150
	ldr	r3, [sp, #36]
	cmp	r2, #7
	add	r3, r3, r4
	strh	r3, [r10, #10]	@ movhi
	bne	.L1151
	ldr	r3, [sp, #20]
	movs	r0, #249
	mov	r1, r2
	add	r3, r3, r4
	strh	r3, [r10, #12]	@ movhi
.L1133:
	rsb	lr, r2, #256
	add	r8, r1, #2
	lsr	r3, lr, #3
	add	ip, r1, #3
	add	r9, r1, #1
	str	r8, [sp, #48]
	str	ip, [sp, #52]
	add	r2, r10, r2, lsl #1
	str	r1, [sp, #40]
	lsl	r8, r3, #3
	str	r9, [sp, #44]
	mov	ip, #0
	vldr	d16, [sp, #40]
	vldr	d17, [sp, #48]
	vdup.32	q9, r4
.L1140:
	vmov.i32	q10, #4  @ v4si
	vshl.s32	q12, q8, q6
	add	ip, ip, #1
	vadd.i32	q11, q8, q10
	cmp	ip, r3
	vadd.i32	q12, q12, q9
	vadd.i32	q8, q8, q7
	vshl.s32	q11, q11, q6
	vadd.i32	q11, q11, q9
	vmovn.i32	d20, q12
	vmovn.i32	d21, q11
	vst1.64	{d20-d21}, [r2:64]!
	bcc	.L1140
	cmp	lr, r8
	add	r1, r1, r8
	rsb	r0, r8, r0
	beq	.L1139
	lsl	r2, r1, r5
	cmp	r0, #1
	add	r3, r1, #1
	add	r2, r2, r4
	strh	r2, [r10, r1, lsl #1]	@ movhi
	beq	.L1139
	lsl	lr, r3, r5
	cmp	r0, #2
	add	r2, r1, #2
	add	lr, lr, r4
	strh	lr, [r10, r3, lsl #1]	@ movhi
	beq	.L1139
	lsl	lr, r2, r5
	cmp	r0, #3
	add	r3, r1, #3
	add	lr, lr, r4
	strh	lr, [r10, r2, lsl #1]	@ movhi
	beq	.L1139
	lsl	lr, r3, r5
	cmp	r0, #4
	add	r2, r1, #4
	add	lr, lr, r4
	strh	lr, [r10, r3, lsl #1]	@ movhi
	beq	.L1139
	lsl	lr, r2, r5
	cmp	r0, #5
	add	r3, r1, #5
	add	lr, lr, r4
	strh	lr, [r10, r2, lsl #1]	@ movhi
	beq	.L1139
	lsl	r2, r3, r5
	cmp	r0, #6
	add	r1, r1, #6
	add	r2, r2, r4
	strh	r2, [r10, r3, lsl #1]	@ movhi
	itt	ne
	lslne	r3, r1, r5
	addne	r3, r3, r4
	add	r4, r4, #1
	it	ne
	strhne	r3, [r10, r1, lsl #1]	@ movhi
	ldr	r1, [sp, #4]
	cmp	r4, r1
	bne	.L1144
	b	.L1125
.L1132:
	mov	r9, r0
	mov	r8, r10
	b	.L1142
.L1171:
	.align	3
.L1170:
	.word	-1998362383
	.word	1055193269
	.word	0
	.word	1089470432
.L1169:
	mov	r9, fp
.L1142:
	lsl	r3, r9, r5
	mov	r1, r6
	pld	[r8, #20]
	add	fp, r9, #16
	add	r3, r3, r4
	add	r8, r8, #32
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #1
	strh	r0, [r8, #-32]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #2
	strh	r0, [r8, #-30]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #3
	strh	r0, [r8, #-28]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #4
	strh	r0, [r8, #-26]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #5
	strh	r0, [r8, #-24]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #6
	strh	r0, [r8, #-22]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #7
	strh	r0, [r8, #-20]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #8
	strh	r0, [r8, #-18]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #9
	strh	r0, [r8, #-16]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #10
	strh	r0, [r8, #-14]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #11
	strh	r0, [r8, #-12]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #12
	strh	r0, [r8, #-10]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #13
	strh	r0, [r8, #-8]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #14
	strh	r0, [r8, #-6]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	add	r3, r9, #15
	strh	r0, [r8, #-4]	@ movhi
	lsls	r3, r3, r5
	mov	r1, r6
	rsb	r9, r9, #240
	add	r3, r3, r4
	rsb	r0, r3, r3, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	cmp	fp, #240
	strh	r0, [r8, #-2]	@ movhi
	bne	.L1169
	add	r10, r10, #478
	add	r8, r9, #240
.L1143:
	lsl	r0, fp, r5
	mov	r1, r6
	add	fp, fp, #1
	add	r0, r0, r4
	rsb	r0, r0, r0, lsl #16
	add	r0, r0, r7
	bl	__aeabi_uidiv(PLT)
	cmp	fp, r8
	strh	r0, [r10, #2]!	@ movhi
	bne	.L1143
	ldr	r1, [sp, #4]
	adds	r4, r4, #1
	cmp	r4, r1
	bne	.L1144
	b	.L1125
.L1145:
	mov	r0, #256
	ldr	r1, [sp, #16]
	b	.L1133
.L1146:
	movs	r0, #255
	mov	r1, r2
	b	.L1133
.L1151:
	movs	r0, #250
	movs	r1, #6
	b	.L1133
.L1150:
	movs	r0, #251
	mov	r1, r2
	b	.L1133
.L1149:
	movs	r0, #252
	mov	r1, r2
	b	.L1133
.L1148:
	movs	r0, #253
	mov	r1, r2
	b	.L1133
.L1147:
	movs	r0, #254
	mov	r1, r2
	b	.L1133
	.size	png_build_16bit_table, .-png_build_16bit_table
	.section	.text.png_colorspace_set_sRGB,"ax",%progbits
	.align	2
	.global	png_colorspace_set_sRGB
	.thumb
	.thumb_func
	.type	png_colorspace_set_sRGB, %function
png_colorspace_set_sRGB:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r1
	ldrh	r7, [r1, #74]
	sub	sp, sp, #20
	lsls	r4, r7, #16
	it	mi
	movmi	r8, #0
	bmi	.L1173
	cmp	r2, #3
	mov	r4, r2
	bhi	.L1192
	lsls	r3, r7, #29
	mov	r5, r0
	bpl	.L1175
	ldrh	r3, [r1, #72]
	cmp	r3, r2
	bne	.L1193
.L1175:
	lsls	r1, r7, #26
	bmi	.L1194
	lsls	r2, r7, #30
	add	r8, r6, #4
	bpl	.L1177
	ldr	r0, .L1197
	mov	r1, r8
	movs	r2, #100
.LPIC116:
	add	r0, pc
	bl	png_colorspace_endpoints_match(PLT)
	cmp	r0, #0
	beq	.L1195
.L1177:
	lsls	r3, r7, #31
	ldr	r1, [r6]
	bmi	.L1196
.L1178:
	ldr	ip, .L1197+4
	mov	lr, r8
	strh	r4, [r6, #72]	@ movhi
	add	r4, r6, #36
	ldr	r5, .L1197+8
	mov	r8, #1
.LPIC119:
	add	ip, pc
	orr	r9, r7, #231
	ldmia	ip!, {r0, r1, r2, r3}
	movw	r7, #45455
.LPIC120:
	add	r5, pc
	stmia	lr!, {r0, r1, r2, r3}
	ldmia	ip, {r0, r1, r2, r3}
	stmia	lr, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	ldr	r5, [r5]
	stmia	r4!, {r0, r1, r2, r3}
	str	r5, [r4]
	strh	r9, [r6, #74]	@ movhi
	str	r7, [r6]
.L1173:
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L1193:
	ldr	r5, .L1197+12
	mov	r3, r2
	ldr	r2, .L1197+16
.LPIC114:
	add	r5, pc
.LPIC113:
	add	r2, pc
	str	r5, [sp]
	bl	png_icc_profile_error(PLT)
	mov	r8, r0
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L1194:
	ldr	r1, .L1197+20
	mov	r0, r5
	mov	r8, #0
.LPIC115:
	add	r1, pc
	bl	png_benign_error(PLT)
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L1195:
	ldr	r1, .L1197+24
	mov	r0, r5
	movs	r2, #2
.LPIC117:
	add	r1, pc
	bl	png_chunk_report(PLT)
	ldrh	r7, [r6, #74]
	b	.L1177
.L1192:
	ldr	r5, .L1197+28
	mov	r3, r2
	ldr	r2, .L1197+32
.LPIC112:
	add	r5, pc
.LPIC111:
	add	r2, pc
	str	r5, [sp]
	bl	png_icc_profile_error(PLT)
	mov	r8, r0
	mov	r0, r8
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L1196:
	movw	r2, #34464
	add	r0, sp, #8
	movt	r2, 1
	movw	r3, #45455
	bl	png_muldiv(PLT)
	cbnz	r0, .L1179
.L1180:
	ldr	r1, .L1197+36
	mov	r0, r5
	movs	r2, #2
.LPIC118:
	add	r1, pc
	bl	png_chunk_report(PLT)
	ldrh	r7, [r6, #74]
	b	.L1178
.L1179:
	ldr	r0, [sp, #8]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L1180
	ldrh	r7, [r6, #74]
	b	.L1178
.L1198:
	.align	2
.L1197:
	.word	.LANCHOR5-(.LPIC116+4)
	.word	.LANCHOR5-(.LPIC119+4)
	.word	.LANCHOR6-(.LPIC120+4)
	.word	.LC71-(.LPIC114+4)
	.word	.LC69-(.LPIC113+4)
	.word	.LC72-(.LPIC115+4)
	.word	.LC73-(.LPIC117+4)
	.word	.LC70-(.LPIC112+4)
	.word	.LC69-(.LPIC111+4)
	.word	.LC67-(.LPIC118+4)
	.size	png_colorspace_set_sRGB, .-png_colorspace_set_sRGB
	.section	.text.png_icc_set_sRGB,"ax",%progbits
	.align	2
	.global	png_icc_set_sRGB
	.thumb
	.thumb_func
	.type	png_icc_set_sRGB, %function
png_icc_set_sRGB:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r2
	ldrb	r2, [r2, #85]	@ zero_extendqisi2
	mov	r8, r0
	mov	r9, r1
	movs	r5, #0
	ldrb	r0, [r6, #84]	@ zero_extendqisi2
	ldrb	r1, [r6, #87]	@ zero_extendqisi2
	lsls	r2, r2, #16
	ldrb	r7, [r6, #86]	@ zero_extendqisi2
	ldr	r4, .L1213
	add	r0, r2, r0, lsl #24
	add	r1, r1, r0
.LPIC121:
	add	r4, pc
	add	r7, r1, r7, lsl #8
	b	.L1206
.L1200:
	adds	r5, r5, #1
	adds	r4, r4, #32
	cmp	r5, #7
	beq	.L1210
.L1206:
	ldr	r2, [r4, #12]
	cmp	r2, r7
	bne	.L1200
	ldrb	lr, [r6, #89]	@ zero_extendqisi2
	ldrb	r0, [r6, #88]	@ zero_extendqisi2
	ldrb	ip, [r6, #91]	@ zero_extendqisi2
	ldrb	r1, [r6, #90]	@ zero_extendqisi2
	lsl	lr, lr, #16
	ldr	r2, [r4, #16]
	add	lr, lr, r0, lsl #24
	add	lr, lr, ip
	add	lr, lr, r1, lsl #8
	cmp	lr, r2
	bne	.L1200
	ldrb	r1, [r6, #93]	@ zero_extendqisi2
	ldrb	ip, [r6, #92]	@ zero_extendqisi2
	ldrb	lr, [r6, #95]	@ zero_extendqisi2
	ldrb	r0, [r6, #94]	@ zero_extendqisi2
	lsls	r1, r1, #16
	ldr	r2, [r4, #20]
	add	r1, r1, ip, lsl #24
	add	r1, r1, lr
	add	r1, r1, r0, lsl #8
	cmp	r1, r2
	bne	.L1200
	ldrb	r1, [r6, #97]	@ zero_extendqisi2
	ldrb	ip, [r6, #96]	@ zero_extendqisi2
	ldrb	lr, [r6, #99]	@ zero_extendqisi2
	ldrb	r0, [r6, #98]	@ zero_extendqisi2
	lsls	r1, r1, #16
	ldr	r2, [r4, #24]
	add	r1, r1, ip, lsl #24
	add	r1, r1, lr
	add	r1, r1, r0, lsl #8
	cmp	r1, r2
	bne	.L1200
	ldrb	r1, [r6, #1]	@ zero_extendqisi2
	lsls	r5, r5, #5
	ldrb	r4, [r6]	@ zero_extendqisi2
	ldr	r2, .L1213+4
	ldrb	r0, [r6, #3]	@ zero_extendqisi2
	lsls	r1, r1, #16
	ldrb	r7, [r6, #2]	@ zero_extendqisi2
.LPIC122:
	add	r2, pc
	ldrb	lr, [r6, #64]	@ zero_extendqisi2
	add	r4, r1, r4, lsl #24
	add	r2, r2, r5
	ldr	r1, [r2, #8]
	add	r4, r4, r0
	ldrb	ip, [r6, #65]	@ zero_extendqisi2
	add	r4, r4, r7, lsl #8
	ldrb	r0, [r6, #66]	@ zero_extendqisi2
	ldrb	r7, [r6, #67]	@ zero_extendqisi2
	cmp	r4, r1
	bne	.L1201
	lsl	r1, ip, #16
	ldrh	r2, [r2, #30]
	add	r1, r1, lr, lsl #24
	add	r1, r1, r7
	add	r1, r1, r0, lsl #8
	cmp	r1, r2
	beq	.L1211
.L1201:
	ldr	r1, .L1213+8
	mov	r0, r8
	movs	r2, #0
	pop	{r3, r4, r5, r6, r7, r8, r9, lr}
.LPIC130:
	add	r1, pc
	b	png_chunk_report(PLT)
.L1210:
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L1211:
	cbnz	r3, .L1202
	mov	r1, r3
	mov	r2, r3
	mov	r0, r3
	bl	adler32(PLT)
	mov	r1, r6
	mov	r2, r4
	bl	adler32(PLT)
	mov	r3, r0
.L1202:
	ldr	r2, .L1213+12
.LPIC124:
	add	r2, pc
	ldr	r1, [r2, r5]
	add	r5, r5, r2
	cmp	r1, r3
	bne	.L1201
	movs	r0, #0
	mov	r1, r0
	mov	r2, r0
	bl	crc32(PLT)
	mov	r1, r6
	mov	r2, r4
	bl	crc32(PLT)
	ldr	r3, [r5, #4]
	cmp	r0, r3
	bne	.L1201
	adds	r5, r5, #24
	ldrb	r3, [r5, #5]	@ zero_extendqisi2
	cbnz	r3, .L1212
	ldrb	r2, [r5, #4]	@ zero_extendqisi2
	cbnz	r2, .L1204
	ldr	r1, .L1213+16
	mov	r0, r8
.LPIC129:
	add	r1, pc
	bl	png_chunk_report(PLT)
.L1204:
	ldrb	r4, [r6, #65]	@ zero_extendqisi2
	mov	r0, r8
	ldrb	r5, [r6, #64]	@ zero_extendqisi2
	mov	r1, r9
	ldrb	r3, [r6, #67]	@ zero_extendqisi2
	ldrb	r2, [r6, #66]	@ zero_extendqisi2
	lsls	r4, r4, #16
	add	r4, r4, r5, lsl #24
	add	r3, r3, r4
	add	r2, r3, r2, lsl #8
	pop	{r3, r4, r5, r6, r7, r8, r9, lr}
	b	png_colorspace_set_sRGB(PLT)
.L1212:
	ldr	r1, .L1213+20
	mov	r0, r8
	movs	r2, #2
.LPIC127:
	add	r1, pc
	bl	png_chunk_report(PLT)
	b	.L1204
.L1214:
	.align	2
.L1213:
	.word	.LANCHOR7-(.LPIC121+4)
	.word	.LANCHOR7-(.LPIC122+4)
	.word	.LC76-(.LPIC130+4)
	.word	.LANCHOR7-(.LPIC124+4)
	.word	.LC75-(.LPIC129+4)
	.word	.LC74-(.LPIC127+4)
	.size	png_icc_set_sRGB, .-png_icc_set_sRGB
	.section	.text.png_colorspace_set_ICC,"ax",%progbits
	.align	2
	.global	png_colorspace_set_ICC
	.thumb
	.thumb_func
	.type	png_colorspace_set_ICC, %function
png_colorspace_set_ICC:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r1
	ldrsh	r5, [r1, #74]
	sub	sp, sp, #8
	cmp	r5, #0
	blt	.L1218
	mov	r6, r0
	mov	r8, r2
	mov	r7, r3
	bl	png_icc_check_length(PLT)
	cbnz	r0, .L1229
.L1218:
	movs	r0, #0
.L1217:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L1229:
	ldr	r3, [sp, #32]
	mov	r0, r6
	ldr	r5, [sp, #36]
	mov	r1, r4
	mov	r2, r8
	str	r3, [sp]
	mov	r3, r7
	str	r5, [sp, #4]
	bl	png_icc_check_header(PLT)
	cmp	r0, #0
	beq	.L1218
	ldr	r3, [sp, #32]
	mov	r2, r8
	mov	r0, r6
	mov	r1, r4
	str	r3, [sp]
	mov	r3, r7
	bl	png_icc_check_tag_table(PLT)
	cmp	r0, #0
	beq	.L1218
	mov	r0, r6
	mov	r1, r4
	ldr	r2, [sp, #32]
	movs	r3, #0
	bl	png_icc_set_sRGB(PLT)
	movs	r0, #1
	b	.L1217
	.size	png_colorspace_set_ICC, .-png_colorspace_set_ICC
	.section	.text.png_reciprocal2,"ax",%progbits
	.align	2
	.global	png_reciprocal2
	.thumb
	.thumb_func
	.type	png_reciprocal2, %function
png_reciprocal2:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	fmsr	s15, r0	@ int
	fsitod	d18, s15
	fldd	d0, .L1234
	fmsr	s15, r1	@ int
	fsitod	d17, s15
	fconstd	d16, #96
	fdivd	d0, d0, d18
	push	{r3, lr}
	fdivd	d0, d0, d17
	faddd	d0, d0, d16
	bl	floor(PLT)
	fldd	d17, .L1234+8
	fldd	d16, .L1234+16
	fcmped	d0, d17
	fmstat
	fcmped	d0, d16
	ite	ge
	movge	r0, #1
	movlt	r0, #0
	fmstat
	and	r0, r0, #1
	it	hi
	movhi	r0, #0
	cbz	r0, .L1231
	ftosizd	s15, d0
	fmrs	r0, s15	@ int
.L1231:
	pop	{r3, pc}
.L1235:
	.align	3
.L1234:
	.word	640942080
	.word	1124887541
	.word	0
	.word	-1042284544
	.word	-4194304
	.word	1105199103
	.size	png_reciprocal2, .-png_reciprocal2
	.section	.text.png_gamma_8bit_correct,"ax",%progbits
	.align	2
	.global	png_gamma_8bit_correct
	.thumb
	.thumb_func
	.type	png_gamma_8bit_correct, %function
png_gamma_8bit_correct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	subs	r3, r0, #1
	cmp	r3, #253
	bls	.L1240
	uxtb	r0, r0
	pop	{r3, pc}
.L1240:
	fmsr	s15, r0	@ int
	fsitod	d0, s15
	fmsr	s15, r1	@ int
	fsitod	d1, s15
	fldd	d17, .L1241
	fldd	d16, .L1241+8
	fmuld	d0, d0, d17
	fmuld	d1, d1, d16
	bl	pow(PLT)
	fldd	d17, .L1241+16
	fconstd	d16, #96
	fcpyd	d18, d16
	fmacd	d18, d0, d17
	fcpyd	d0, d18
	bl	trunc(PLT)
	ftouizd	s0, d0
	fmrs	r0, s0	@ int
	uxtb	r0, r0
	pop	{r3, pc}
.L1242:
	.align	3
.L1241:
	.word	269488144
	.word	1064308752
	.word	-1998362383
	.word	1055193269
	.word	0
	.word	1081073664
	.size	png_gamma_8bit_correct, .-png_gamma_8bit_correct
	.section	.text.png_gamma_16bit_correct,"ax",%progbits
	.align	2
	.global	png_gamma_16bit_correct
	.thumb
	.thumb_func
	.type	png_gamma_16bit_correct, %function
png_gamma_16bit_correct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	subs	r2, r0, #1
	movw	r3, #65533
	cmp	r2, r3
	bls	.L1247
	uxth	r0, r0
	pop	{r3, pc}
.L1247:
	fmsr	s15, r0	@ int
	fsitod	d0, s15
	fmsr	s15, r1	@ int
	fsitod	d1, s15
	fldd	d17, .L1248
	fldd	d16, .L1248+8
	fmuld	d0, d0, d17
	fmuld	d1, d1, d16
	bl	pow(PLT)
	fldd	d17, .L1248+16
	fconstd	d16, #96
	fcpyd	d18, d16
	fmacd	d18, d0, d17
	fcpyd	d0, d18
	bl	trunc(PLT)
	ftouizd	s0, d0
	fmrs	r0, s0	@ int
	uxth	r0, r0
	pop	{r3, pc}
.L1249:
	.align	3
.L1248:
	.word	1048592
	.word	1055916048
	.word	-1998362383
	.word	1055193269
	.word	0
	.word	1089470432
	.size	png_gamma_16bit_correct, .-png_gamma_16bit_correct
	.section	.text.png_gamma_correct,"ax",%progbits
	.align	2
	.global	png_gamma_correct
	.thumb
	.thumb_func
	.type	png_gamma_correct, %function
png_gamma_correct:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldrb	r3, [r0, #676]	@ zero_extendqisi2
	mov	r0, r1
	mov	r1, r2
	cmp	r3, #8
	beq	.L1255
	pop	{r3, lr}
	b	png_gamma_16bit_correct(PLT)
.L1255:
	bl	png_gamma_8bit_correct(PLT)
	pop	{r3, pc}
	.size	png_gamma_correct, .-png_gamma_correct
	.section	.text.png_destroy_gamma_table,"ax",%progbits
	.align	2
	.global	png_destroy_gamma_table
	.thumb
	.thumb_func
	.type	png_destroy_gamma_table, %function
png_destroy_gamma_table:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	ldr	r1, [r0, #732]
	movs	r5, #0
	bl	png_free(PLT)
	ldr	r1, [r4, #736]
	str	r5, [r4, #732]
	cbz	r1, .L1257
	ldr	r3, [r4, #724]
	movs	r6, #1
	rsb	r3, r3, #8
	lsls	r6, r6, r3
	cmp	r6, r5
	ble	.L1258
.L1260:
	ldr	r1, [r1, r5, lsl #2]
	mov	r0, r4
	adds	r5, r5, #1
	bl	png_free(PLT)
	cmp	r5, r6
	ldr	r1, [r4, #736]
	bne	.L1260
.L1258:
	mov	r0, r4
	bl	png_free(PLT)
	movs	r3, #0
	str	r3, [r4, #736]
.L1257:
	mov	r0, r4
	ldr	r1, [r4, #740]
	movs	r5, #0
	bl	png_free(PLT)
	ldr	r1, [r4, #744]
	mov	r0, r4
	str	r5, [r4, #740]
	bl	png_free(PLT)
	ldr	r1, [r4, #748]
	str	r5, [r4, #744]
	cbz	r1, .L1261
	ldr	r3, [r4, #724]
	movs	r6, #1
	rsb	r3, r3, #8
	lsls	r6, r6, r3
	cmp	r6, r5
	ble	.L1262
.L1264:
	ldr	r1, [r1, r5, lsl #2]
	mov	r0, r4
	adds	r5, r5, #1
	bl	png_free(PLT)
	cmp	r5, r6
	ldr	r1, [r4, #748]
	bne	.L1264
.L1262:
	mov	r0, r4
	bl	png_free(PLT)
	movs	r3, #0
	str	r3, [r4, #748]
.L1261:
	ldr	r1, [r4, #752]
	cbz	r1, .L1256
	ldr	r3, [r4, #724]
	movs	r6, #1
	rsb	r3, r3, #8
	lsls	r6, r6, r3
	cmp	r6, #0
	ble	.L1266
	movs	r5, #0
.L1268:
	ldr	r1, [r1, r5, lsl #2]
	mov	r0, r4
	adds	r5, r5, #1
	bl	png_free(PLT)
	cmp	r5, r6
	ldr	r1, [r4, #752]
	bne	.L1268
.L1266:
	mov	r0, r4
	bl	png_free(PLT)
	movs	r3, #0
	str	r3, [r4, #752]
.L1256:
	pop	{r4, r5, r6, pc}
	.size	png_destroy_gamma_table, .-png_destroy_gamma_table
	.section	.text.png_build_gamma_table,"ax",%progbits
	.align	2
	.global	png_build_gamma_table
	.thumb
	.thumb_func
	.type	png_build_gamma_table, %function
png_build_gamma_table:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #732]
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	fp, r0
	sub	sp, sp, #76
	mov	r4, r1
	cmp	r3, #0
	beq	.L1536
.L1280:
	ldr	r1, .L1545+24
	mov	r0, fp
.LPIC139:
	add	r1, pc
	bl	png_warning(PLT)
	mov	r0, fp
	bl	png_destroy_gamma_table(PLT)
.L1281:
	cmp	r4, #8
	bgt	.L1282
	ldr	r1, [fp, #728]
	cmp	r1, #0
	itt	le
	movwle	r6, #34464
	movtle	r6, 1
	ble	.L1283
	ldr	r0, [fp, #1064]
	bl	png_reciprocal2(PLT)
	mov	r6, r0
.L1283:
	mov	r0, fp
	mov	r1, #256
	bl	png_malloc(PLT)
	mov	r5, r0
	mov	r0, r6
	str	r5, [fp, #732]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	beq	.L1284
	movs	r4, #0
.L1288:
	mov	r0, r4
	mov	r1, r6
	bl	png_gamma_8bit_correct(PLT)
	strb	r0, [r5, r4]
	adds	r4, r4, #1
	cmp	r4, #256
	bne	.L1288
.L1295:
	ldr	r2, [fp, #456]
	movs	r3, #128
	movt	r3, 96
	ands	r3, r3, r2
	cmp	r3, #0
	bne	.L1537
.L1279:
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1282:
	ldrb	r3, [fp, #675]	@ zero_extendqisi2
	lsls	r3, r3, #30
	bmi	.L1538
	ldrb	r3, [fp, #759]	@ zero_extendqisi2
	subs	r2, r3, #1
	cmp	r2, #14
	ldr	r2, [fp, #456]
	bls	.L1539
.L1323:
	ands	r2, r2, #67109888
	it	eq
	moveq	r3, r2
	bne	.L1325
.L1346:
	str	r3, [sp, #12]
	str	r3, [sp, #8]
	str	r3, [fp, #724]
	cmp	r2, #0
	bne	.L1540
.L1327:
	ldr	r1, [fp, #728]
	add	r4, fp, #736
	cmp	r1, #0
	itt	le
	movwle	r3, #34464
	movtle	r3, 1
	ble	.L1342
	ldr	r0, [fp, #1064]
	bl	png_reciprocal2(PLT)
	mov	r3, r0
.L1342:
	mov	r1, r4
	mov	r0, fp
	ldr	r2, [sp, #8]
	bl	png_build_16bit_table(PLT)
.L1339:
	ldr	r2, [fp, #456]
	movs	r3, #128
	movt	r3, 96
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L1279
	ldr	r0, [fp, #1064]
	add	r4, fp, #748
	bl	png_reciprocal(PLT)
	add	r1, fp, #752
	mov	r3, r0
	ldr	r2, [sp, #8]
	mov	r0, fp
	bl	png_build_16bit_table(PLT)
	ldr	r0, [fp, #728]
	cmp	r0, #0
	ble	.L1343
	bl	png_reciprocal(PLT)
	mov	r3, r0
.L1344:
	mov	r0, fp
	mov	r1, r4
	ldr	r2, [sp, #8]
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	png_build_16bit_table(PLT)
.L1538:
	ldrb	r3, [fp, #757]	@ zero_extendqisi2
	ldrb	r1, [fp, #756]	@ zero_extendqisi2
	ldrb	r2, [fp, #758]	@ zero_extendqisi2
	cmp	r3, r1
	it	cc
	movcc	r3, r1
	cmp	r3, r2
	it	cc
	movcc	r3, r2
	subs	r2, r3, #1
	cmp	r2, #14
	ldr	r2, [fp, #456]
	bhi	.L1323
.L1539:
	ands	r2, r2, #67109888
	rsb	r3, r3, #16
	uxtb	r3, r3
	bne	.L1541
.L1324:
	cmp	r3, #8
	ittt	hi
	movhi	r3, #8
	strhi	r3, [sp, #8]
	strhi	r3, [sp, #12]
	bls	.L1346
.L1326:
	str	r3, [fp, #724]
	cmp	r2, #0
	beq	.L1327
.L1540:
	ldr	r3, [fp, #728]
	cmp	r3, #0
	ble	.L1394
	ldr	r2, [fp, #1064]
	fmsr	s15, r3	@ int
	fsitod	d17, s15
	fldd	d16, .L1545
	fmsr	s15, r2	@ int
	fsitod	d18, s15
	fconstd	d0, #96
	fmuld	d17, d18, d17
	fmacd	d0, d17, d16
	bl	floor(PLT)
	fldd	d17, .L1545+8
	fldd	d16, .L1545+16
	fcmped	d0, d17
	fmstat
	fcmped	d0, d16
	ite	ge
	movge	r7, #1
	movlt	r7, #0
	fmstat
	and	r7, r7, #1
	it	hi
	movhi	r7, #0
	cbz	r7, .L1328
	ftosizd	s15, d0
	fmrs	r7, s15	@ int
.L1328:
	ldr	r2, [sp, #8]
	mov	r0, fp
	rsb	r10, r2, #8
	movs	r2, #1
	lsl	r3, r2, r10
	str	r3, [sp, #16]
	ldr	r3, [sp, #8]
	rsb	r1, r3, #16
	ldr	r3, [sp, #16]
	lsls	r2, r2, r1
	subs	r2, r2, #1
	sub	r8, r3, #7
	lsls	r1, r3, #2
	str	r2, [sp, #4]
	bl	png_calloc(PLT)
	ldr	r2, [sp, #16]
	mov	r6, r0
	str	r0, [fp, #736]
	cmp	r2, #8
	bls	.L1396
	add	r4, r0, #44
	movs	r5, #0
.L1331:
	mov	r1, #512
	mov	r0, fp
	bl	png_malloc(PLT)
	mov	r1, #512
	str	r0, [r4, #-44]
	mov	r0, fp
	pld	[r4]
	bl	png_malloc(PLT)
	mov	r1, #512
	str	r0, [r4, #-40]
	mov	r0, fp
	add	r9, r5, #8
	bl	png_malloc(PLT)
	mov	r1, #512
	str	r0, [r4, #-36]
	mov	r0, fp
	adds	r5, r5, #9
	bl	png_malloc(PLT)
	mov	r1, #512
	str	r0, [r4, #-32]
	mov	r0, fp
	adds	r4, r4, #32
	bl	png_malloc(PLT)
	mov	r1, #512
	str	r0, [r4, #-60]
	mov	r0, fp
	bl	png_malloc(PLT)
	mov	r1, #512
	str	r0, [r4, #-56]
	mov	r0, fp
	bl	png_malloc(PLT)
	mov	r1, #512
	str	r0, [r4, #-52]
	mov	r0, fp
	bl	png_malloc(PLT)
	cmp	r8, r5
	str	r0, [r4, #-48]
	mov	r5, r9
	bhi	.L1331
.L1330:
	add	r4, r9, #1073741824
	ldr	r5, [sp, #16]
	subs	r4, r4, #1
	add	r4, r6, r4, lsl #2
.L1333:
	add	r9, r9, #1
	mov	r0, fp
	mov	r1, #512
	bl	png_malloc(PLT)
	cmp	r5, r9
	str	r0, [r4, #4]!
	bhi	.L1333
	ldr	r3, [sp, #12]
	movs	r2, #255
	mov	r8, #128
	str	fp, [sp, #20]
	movs	r4, #0
	mov	fp, r8
	lsr	r9, r2, r3
	movs	r3, #127
	movt	r3, 1
	movw	r2, #32769
	mov	r8, r9
	mov	r9, r3
	movt	r2, 32768
	str	r2, [sp]
.L1337:
	mov	r0, fp
	mov	r1, r7
	bl	png_gamma_16bit_correct(PLT)
	ldr	r3, [sp, #4]
	sub	r5, fp, #128
	ldr	r2, [sp]
	uxth	r5, r5
	mul	r0, r3, r0
	add	lr, r0, #32768
	umull	r2, lr, r2, lr
	lsr	lr, lr, #15
	add	lr, lr, #1
	cmp	lr, r4
	bls	.L1397
.L1335:
	and	r3, r4, r8
	lsr	r2, r4, r10
	ldr	r3, [r6, r3, lsl #2]
	adds	r4, r4, #1
	cmp	lr, r4
	strh	r5, [r3, r2, lsl #1]	@ movhi
	bne	.L1335
	addw	fp, fp, #257
	cmp	fp, r9
	beq	.L1336
.L1542:
	mov	r4, lr
	b	.L1337
.L1284:
	and	r2, r5, #7
	negs	r2, r2
	ands	r2, r2, #15
	beq	.L1348
	cmp	r2, #1
	strb	r0, [r5]
	bls	.L1349
	cmp	r2, #2
	mov	r3, #1
	strb	r3, [r5, #1]
	bls	.L1350
	cmp	r2, #3
	mov	r3, #2
	strb	r3, [r5, #2]
	bls	.L1351
	cmp	r2, #4
	mov	r3, #3
	strb	r3, [r5, #3]
	bls	.L1352
	cmp	r2, #5
	mov	r3, #4
	strb	r3, [r5, #4]
	bls	.L1353
	cmp	r2, #6
	mov	r3, #5
	strb	r3, [r5, #5]
	bls	.L1354
	cmp	r2, #7
	mov	r3, #6
	strb	r3, [r5, #6]
	bls	.L1355
	cmp	r2, #8
	mov	r3, #7
	strb	r3, [r5, #7]
	bls	.L1356
	cmp	r2, #9
	mov	r3, #8
	strb	r3, [r5, #8]
	bls	.L1357
	cmp	r2, #10
	mov	r3, #9
	strb	r3, [r5, #9]
	bls	.L1358
	cmp	r2, #11
	mov	r3, #10
	strb	r3, [r5, #10]
	bls	.L1359
	cmp	r2, #12
	mov	r3, #11
	strb	r3, [r5, #11]
	bls	.L1360
	cmp	r2, #13
	mov	r3, #12
	strb	r3, [r5, #12]
	bls	.L1361
	cmp	r2, #14
	mov	r3, #13
	strb	r3, [r5, #13]
	bls	.L1362
	movs	r3, #14
	movs	r1, #241
	strb	r3, [r5, #14]
	movs	r3, #15
.L1289:
	rsb	r7, r2, #256
	adds	r4, r3, #1
	lsrs	r6, r7, #4
	adds	r0, r3, #3
	add	lr, r3, #2
	str	r4, [sp, #60]
	str	r0, [sp, #68]
	lsls	r4, r6, #4
	str	r3, [sp, #56]
	vmov.i32	q15, #16  @ v4si
	str	lr, [sp, #64]
	vmov.i32	q9, #4  @ v4si
	vldr	d16, [sp, #56]
	vldr	d17, [sp, #64]
	add	r2, r2, r5
	movs	r0, #0
.L1296:
	vadd.i32	q11, q8, q9
	adds	r0, r0, #1
	vadd.i32	q14, q8, q15
	cmp	r0, r6
	vadd.i32	q10, q11, q9
	vmovn.i32	d24, q8
	vmovn.i32	d25, q11
	vadd.i32	q13, q10, q9
	vmov	q8, q14  @ v4si
	vmovn.i32	d22, q10
	vmovn.i32	d23, q13
	vmovn.i16	d20, q12
	vmovn.i16	d21, q11
	vst1.64	{d20-d21}, [r2:64]!
	bcc	.L1296
	cmp	r7, r4
	add	r3, r3, r4
	sub	r1, r1, r4
	beq	.L1295
	cmp	r1, #1
	strb	r3, [r5, r3]
	add	r2, r3, #1
	beq	.L1295
	cmp	r1, #2
	strb	r2, [r5, r2]
	add	r2, r3, #2
	beq	.L1295
	cmp	r1, #3
	strb	r2, [r5, r2]
	add	r2, r3, #3
	beq	.L1295
	cmp	r1, #4
	strb	r2, [r5, r2]
	add	r2, r3, #4
	beq	.L1295
	cmp	r1, #5
	strb	r2, [r5, r2]
	add	r2, r3, #5
	beq	.L1295
	cmp	r1, #6
	strb	r2, [r5, r2]
	add	r2, r3, #6
	beq	.L1295
	cmp	r1, #7
	strb	r2, [r5, r2]
	add	r2, r3, #7
	beq	.L1295
	cmp	r1, #8
	strb	r2, [r5, r2]
	add	r2, r3, #8
	beq	.L1295
	cmp	r1, #9
	strb	r2, [r5, r2]
	add	r2, r3, #9
	beq	.L1295
	cmp	r1, #10
	strb	r2, [r5, r2]
	add	r2, r3, #10
	beq	.L1295
	cmp	r1, #11
	strb	r2, [r5, r2]
	add	r2, r3, #11
	beq	.L1295
	cmp	r1, #12
	strb	r2, [r5, r2]
	add	r2, r3, #12
	beq	.L1295
	cmp	r1, #13
	strb	r2, [r5, r2]
	add	r2, r3, #13
	beq	.L1295
	adds	r3, r3, #14
	cmp	r1, #14
	strb	r2, [r5, r2]
	it	ne
	strbne	r3, [r5, r3]
	b	.L1295
.L1536:
	ldr	r3, [r0, #736]
	cmp	r3, #0
	bne	.L1280
	b	.L1281
.L1541:
	cmp	r3, #4
	bhi	.L1324
.L1325:
	movs	r3, #5
	str	r3, [sp, #8]
	str	r3, [sp, #12]
	b	.L1326
.L1546:
	.align	3
.L1545:
	.word	-1998362383
	.word	1055193269
	.word	0
	.word	-1042284544
	.word	-4194304
	.word	1105199103
	.word	.LC77-(.LPIC139+4)
.L1397:
	addw	fp, fp, #257
	mov	lr, r4
	cmp	fp, r9
	bne	.L1542
.L1336:
	ldr	r3, [sp, #16]
	ldr	fp, [sp, #20]
	lsls	r0, r3, #8
	cmp	r0, lr
	bls	.L1339
	ldr	r2, [sp, #12]
	movs	r4, #255
	movw	r5, #65535
	asrs	r4, r4, r2
.L1341:
	and	r3, lr, r4
	lsr	r2, lr, r10
	ldr	r3, [r6, r3, lsl #2]
	add	lr, lr, #1
	cmp	lr, r0
	strh	r5, [r3, r2, lsl #1]	@ movhi
	bne	.L1341
	b	.L1339
.L1537:
	ldr	r0, [fp, #1064]
	bl	png_reciprocal(PLT)
	mov	r1, #256
	mov	r6, r0
	mov	r0, fp
	bl	png_malloc(PLT)
	mov	r5, r0
	mov	r0, r6
	str	r5, [fp, #744]
	bl	png_gamma_significant(PLT)
	cmp	r0, #0
	bne	.L1543
	and	r2, r5, #7
	negs	r2, r2
	ands	r2, r2, #15
	beq	.L1363
	cmp	r2, #1
	strb	r0, [r5]
	bls	.L1364
	cmp	r2, #2
	mov	r3, #1
	strb	r3, [r5, #1]
	bls	.L1365
	cmp	r2, #3
	mov	r3, #2
	strb	r3, [r5, #2]
	bls	.L1366
	cmp	r2, #4
	mov	r3, #3
	strb	r3, [r5, #3]
	bls	.L1367
	cmp	r2, #5
	mov	r3, #4
	strb	r3, [r5, #4]
	bls	.L1368
	cmp	r2, #6
	mov	r3, #5
	strb	r3, [r5, #5]
	bls	.L1369
	cmp	r2, #7
	mov	r3, #6
	strb	r3, [r5, #6]
	bls	.L1370
	cmp	r2, #8
	mov	r3, #7
	strb	r3, [r5, #7]
	bls	.L1371
	cmp	r2, #9
	mov	r3, #8
	strb	r3, [r5, #8]
	bls	.L1372
	cmp	r2, #10
	mov	r3, #9
	strb	r3, [r5, #9]
	bls	.L1373
	cmp	r2, #11
	mov	r3, #10
	strb	r3, [r5, #10]
	bls	.L1374
	cmp	r2, #12
	mov	r3, #11
	strb	r3, [r5, #11]
	bls	.L1375
	cmp	r2, #13
	mov	r3, #12
	strb	r3, [r5, #12]
	bls	.L1376
	cmp	r2, #14
	mov	r3, #13
	strb	r3, [r5, #13]
	bls	.L1377
	movs	r3, #14
	movs	r1, #241
	strb	r3, [r5, #14]
	movs	r3, #15
.L1303:
	rsb	r6, r2, #256
	adds	r0, r3, #1
	lsrs	r7, r6, #4
	adds	r4, r3, #3
	add	lr, r3, #2
	str	r0, [sp, #44]
	str	r4, [sp, #52]
	lsls	r0, r7, #4
	str	r3, [sp, #40]
	vmov.i32	q12, #16  @ v4si
	str	lr, [sp, #48]
	vmov.i32	q9, #4  @ v4si
	vldr	d16, [sp, #40]
	vldr	d17, [sp, #48]
	add	r2, r2, r5
	movs	r4, #0
.L1310:
	vadd.i32	q11, q8, q9
	adds	r4, r4, #1
	vadd.i32	q15, q8, q12
	cmp	r4, r7
	vadd.i32	q10, q11, q9
	vmovn.i32	d26, q8
	vmovn.i32	d27, q11
	vadd.i32	q14, q10, q9
	vmov	q8, q15  @ v4si
	vmovn.i32	d22, q10
	vmovn.i32	d23, q14
	vmovn.i16	d20, q13
	vmovn.i16	d21, q11
	vst1.64	{d20-d21}, [r2:64]!
	bcc	.L1310
	cmp	r6, r0
	add	r3, r3, r0
	sub	r1, r1, r0
	beq	.L1309
	cmp	r1, #1
	strb	r3, [r5, r3]
	add	r2, r3, #1
	beq	.L1309
	cmp	r1, #2
	strb	r2, [r5, r2]
	add	r2, r3, #2
	beq	.L1309
	cmp	r1, #3
	strb	r2, [r5, r2]
	add	r2, r3, #3
	beq	.L1309
	cmp	r1, #4
	strb	r2, [r5, r2]
	add	r2, r3, #4
	beq	.L1309
	cmp	r1, #5
	strb	r2, [r5, r2]
	add	r2, r3, #5
	beq	.L1309
	cmp	r1, #6
	strb	r2, [r5, r2]
	add	r2, r3, #6
	beq	.L1309
	cmp	r1, #7
	strb	r2, [r5, r2]
	add	r2, r3, #7
	beq	.L1309
	cmp	r1, #8
	strb	r2, [r5, r2]
	add	r2, r3, #8
	beq	.L1309
	cmp	r1, #9
	strb	r2, [r5, r2]
	add	r2, r3, #9
	beq	.L1309
	cmp	r1, #10
	strb	r2, [r5, r2]
	add	r2, r3, #10
	beq	.L1309
	cmp	r1, #11
	strb	r2, [r5, r2]
	add	r2, r3, #11
	beq	.L1309
	cmp	r1, #12
	strb	r2, [r5, r2]
	add	r2, r3, #12
	beq	.L1309
	cmp	r1, #13
	strb	r2, [r5, r2]
	add	r2, r3, #13
	beq	.L1309
	adds	r3, r3, #14
	cmp	r1, #14
	strb	r2, [r5, r2]
	it	ne
	strbne	r3, [r5, r3]
.L1309:
	ldr	r0, [fp, #728]
	cmp	r0, #0
	bgt	.L1300
.L1544:
	ldr	r6, [fp, #1064]
.L1311:
	mov	r0, fp
	mov	r1, #256
	bl	png_malloc(PLT)
	mov	r5, r0
	mov	r0, r6
	str	r5, [fp, #740]
	bl	png_gamma_significant(PLT)
	cbz	r0, .L1312
	movs	r4, #0
.L1313:
	mov	r0, r4
	mov	r1, r6
	bl	png_gamma_8bit_correct(PLT)
	strb	r0, [r5, r4]
	adds	r4, r4, #1
	cmp	r4, #256
	bne	.L1313
	add	sp, sp, #76
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L1543:
	movs	r4, #0
.L1302:
	mov	r0, r4
	mov	r1, r6
	bl	png_gamma_8bit_correct(PLT)
	strb	r0, [r5, r4]
	adds	r4, r4, #1
	cmp	r4, #256
	bne	.L1302
	ldr	r0, [fp, #728]
	cmp	r0, #0
	ble	.L1544
.L1300:
	bl	png_reciprocal(PLT)
	mov	r6, r0
	b	.L1311
.L1343:
	ldr	r3, [fp, #1064]
	b	.L1344
.L1348:
	mov	r1, #256
	mov	r3, r2
	b	.L1289
.L1312:
	and	r2, r5, #7
	negs	r2, r2
	ands	r2, r2, #15
	beq	.L1378
	cmp	r2, #1
	strb	r0, [r5]
	bls	.L1379
	cmp	r2, #2
	mov	r3, #1
	strb	r3, [r5, #1]
	bls	.L1380
	cmp	r2, #3
	mov	r3, #2
	strb	r3, [r5, #2]
	bls	.L1381
	cmp	r2, #4
	mov	r3, #3
	strb	r3, [r5, #3]
	bls	.L1382
	cmp	r2, #5
	mov	r3, #4
	strb	r3, [r5, #4]
	bls	.L1383
	cmp	r2, #6
	mov	r3, #5
	strb	r3, [r5, #5]
	bls	.L1384
	cmp	r2, #7
	mov	r3, #6
	strb	r3, [r5, #6]
	bls	.L1385
	cmp	r2, #8
	mov	r3, #7
	strb	r3, [r5, #7]
	bls	.L1386
	cmp	r2, #9
	mov	r3, #8
	strb	r3, [r5, #8]
	bls	.L1387
	cmp	r2, #10
	mov	r3, #9
	strb	r3, [r5, #9]
	bls	.L1388
	cmp	r2, #11
	mov	r3, #10
	strb	r3, [r5, #10]
	bls	.L1389
	cmp	r2, #12
	mov	r3, #11
	strb	r3, [r5, #11]
	bls	.L1390
	cmp	r2, #13
	mov	r3, #12
	strb	r3, [r5, #12]
	bls	.L1391
	cmp	r2, #14
	mov	r3, #13
	strb	r3, [r5, #13]
	bls	.L1392
	movs	r3, #14
	movs	r1, #241
	strb	r3, [r5, #14]
	movs	r3, #15
.L1314:
	rsb	r6, r2, #256
	adds	r0, r3, #1
	lsrs	r7, r6, #4
	adds	r4, r3, #3
	add	lr, r3, #2
	str	r0, [sp, #28]
	str	r4, [sp, #36]
	lsls	r0, r7, #4
	str	r3, [sp, #24]
	vmov.i32	q12, #16  @ v4si
	str	lr, [sp, #32]
	vmov.i32	q9, #4  @ v4si
	vldr	d16, [sp, #24]
	vldr	d17, [sp, #32]
	add	r2, r2, r5
	movs	r4, #0
.L1320:
	vadd.i32	q11, q8, q9
	adds	r4, r4, #1
	vadd.i32	q15, q8, q12
	cmp	r4, r7
	vadd.i32	q10, q11, q9
	vmovn.i32	d26, q8
	vmovn.i32	d27, q11
	vadd.i32	q14, q10, q9
	vmov	q8, q15  @ v4si
	vmovn.i32	d22, q10
	vmovn.i32	d23, q14
	vmovn.i16	d20, q13
	vmovn.i16	d21, q11
	vst1.64	{d20-d21}, [r2:64]!
	bcc	.L1320
	cmp	r0, r6
	add	r3, r3, r0
	sub	r1, r1, r0
	beq	.L1279
	cmp	r1, #1
	strb	r3, [r5, r3]
	add	r2, r3, #1
	beq	.L1279
	cmp	r1, #2
	strb	r2, [r5, r2]
	add	r2, r3, #2
	beq	.L1279
	cmp	r1, #3
	strb	r2, [r5, r2]
	add	r2, r3, #3
	beq	.L1279
	cmp	r1, #4
	strb	r2, [r5, r2]
	add	r2, r3, #4
	beq	.L1279
	cmp	r1, #5
	strb	r2, [r5, r2]
	add	r2, r3, #5
	beq	.L1279
	cmp	r1, #6
	strb	r2, [r5, r2]
	add	r2, r3, #6
	beq	.L1279
	cmp	r1, #7
	strb	r2, [r5, r2]
	add	r2, r3, #7
	beq	.L1279
	cmp	r1, #8
	strb	r2, [r5, r2]
	add	r2, r3, #8
	beq	.L1279
	cmp	r1, #9
	strb	r2, [r5, r2]
	add	r2, r3, #9
	beq	.L1279
	cmp	r1, #10
	strb	r2, [r5, r2]
	add	r2, r3, #10
	beq	.L1279
	cmp	r1, #11
	strb	r2, [r5, r2]
	add	r2, r3, #11
	beq	.L1279
	cmp	r1, #12
	strb	r2, [r5, r2]
	add	r2, r3, #12
	beq	.L1279
	cmp	r1, #13
	strb	r2, [r5, r2]
	add	r2, r3, #13
	beq	.L1279
	adds	r3, r3, #14
	cmp	r1, #14
	strb	r2, [r5, r2]
	it	ne
	strbne	r3, [r5, r3]
	b	.L1279
.L1394:
	movw	r7, #34464
	movt	r7, 1
	b	.L1328
.L1396:
	mov	r9, #0
	b	.L1330
.L1378:
	mov	r1, #256
	mov	r3, r2
	b	.L1314
.L1363:
	mov	r1, #256
	mov	r3, r2
	b	.L1303
.L1349:
	movs	r1, #255
	movs	r3, #1
	b	.L1289
.L1392:
	movs	r1, #242
	movs	r3, #14
	b	.L1314
.L1391:
	movs	r1, #243
	movs	r3, #13
	b	.L1314
.L1390:
	movs	r1, #244
	movs	r3, #12
	b	.L1314
.L1389:
	movs	r1, #245
	movs	r3, #11
	b	.L1314
.L1388:
	movs	r1, #246
	movs	r3, #10
	b	.L1314
.L1387:
	movs	r1, #247
	movs	r3, #9
	b	.L1314
.L1386:
	movs	r1, #248
	movs	r3, #8
	b	.L1314
.L1385:
	movs	r1, #249
	movs	r3, #7
	b	.L1314
.L1384:
	movs	r1, #250
	movs	r3, #6
	b	.L1314
.L1383:
	movs	r1, #251
	movs	r3, #5
	b	.L1314
.L1382:
	movs	r1, #252
	movs	r3, #4
	b	.L1314
.L1381:
	movs	r1, #253
	movs	r3, #3
	b	.L1314
.L1380:
	movs	r1, #254
	movs	r3, #2
	b	.L1314
.L1379:
	movs	r1, #255
	movs	r3, #1
	b	.L1314
.L1377:
	movs	r1, #242
	movs	r3, #14
	b	.L1303
.L1376:
	movs	r1, #243
	movs	r3, #13
	b	.L1303
.L1375:
	movs	r1, #244
	movs	r3, #12
	b	.L1303
.L1374:
	movs	r1, #245
	movs	r3, #11
	b	.L1303
.L1373:
	movs	r1, #246
	movs	r3, #10
	b	.L1303
.L1372:
	movs	r1, #247
	movs	r3, #9
	b	.L1303
.L1371:
	movs	r1, #248
	movs	r3, #8
	b	.L1303
.L1370:
	movs	r1, #249
	movs	r3, #7
	b	.L1303
.L1369:
	movs	r1, #250
	movs	r3, #6
	b	.L1303
.L1368:
	movs	r1, #251
	movs	r3, #5
	b	.L1303
.L1367:
	movs	r1, #252
	movs	r3, #4
	b	.L1303
.L1366:
	movs	r1, #253
	movs	r3, #3
	b	.L1303
.L1365:
	movs	r1, #254
	movs	r3, #2
	b	.L1303
.L1364:
	movs	r1, #255
	movs	r3, #1
	b	.L1303
.L1362:
	movs	r1, #242
	movs	r3, #14
	b	.L1289
.L1361:
	movs	r1, #243
	movs	r3, #13
	b	.L1289
.L1360:
	movs	r1, #244
	movs	r3, #12
	b	.L1289
.L1359:
	movs	r1, #245
	movs	r3, #11
	b	.L1289
.L1358:
	movs	r1, #246
	movs	r3, #10
	b	.L1289
.L1357:
	movs	r1, #247
	movs	r3, #9
	b	.L1289
.L1356:
	movs	r1, #248
	movs	r3, #8
	b	.L1289
.L1355:
	movs	r1, #249
	movs	r3, #7
	b	.L1289
.L1354:
	movs	r1, #250
	movs	r3, #6
	b	.L1289
.L1353:
	movs	r1, #251
	movs	r3, #5
	b	.L1289
.L1352:
	movs	r1, #252
	movs	r3, #4
	b	.L1289
.L1351:
	movs	r1, #253
	movs	r3, #3
	b	.L1289
.L1350:
	movs	r1, #254
	movs	r3, #2
	b	.L1289
	.size	png_build_gamma_table, .-png_build_gamma_table
	.section	.text.png_set_option,"ax",%progbits
	.align	2
	.global	png_set_option
	.thumb
	.thumb_func
	.type	png_set_option, %function
png_set_option:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, r0
	cbz	r0, .L1552
	cmp	r1, #3
	bhi	.L1552
	lsls	r0, r1, #31
	bmi	.L1552
	push	{r4, r5}
	movs	r0, #3
	movs	r4, #2
	lsls	r0, r0, r1
	lsls	r4, r4, r1
	cbnz	r2, .L1556
.L1549:
	ldrb	r2, [r3, #884]	@ zero_extendqisi2
	bic	r5, r2, r0
	ands	r0, r0, r2
	orrs	r4, r4, r5
	asrs	r0, r0, r1
	strb	r4, [r3, #884]
	pop	{r4, r5}
	bx	lr
.L1552:
	movs	r0, #1
	bx	lr
.L1556:
	mov	r4, r0
	b	.L1549
	.size	png_set_option, .-png_set_option
	.section	.text.png_image_free,"ax",%progbits
	.align	2
	.global	png_image_free
	.thumb
	.thumb_func
	.type	png_image_free, %function
png_image_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L1566
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0]
	cbz	r3, .L1557
	ldr	r5, [r3, #8]
	cbz	r5, .L1567
.L1557:
	pop	{r3, r4, r5, pc}
.L1566:
	bx	lr
.L1567:
	ldr	r1, .L1568
	mov	r2, r0
.LPIC140:
	add	r1, pc
	bl	png_safe_execute(PLT)
	str	r5, [r4]
	b	.L1557
.L1569:
	.align	2
.L1568:
	.word	png_image_free_function-(.LPIC140+4)
	.size	png_image_free, .-png_image_free
	.section	.text.png_image_error,"ax",%progbits
	.align	2
	.global	png_image_error
	.thumb
	.thumb_func
	.type	png_image_error, %function
png_image_error:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r3, r1
	mov	r4, r0
	movs	r1, #64
	movs	r2, #0
	adds	r0, r0, #32
	bl	png_safecat(PLT)
	ldr	r3, [r4, #28]
	mov	r0, r4
	orr	r3, r3, #2
	str	r3, [r4, #28]
	bl	png_image_free(PLT)
	movs	r0, #0
	pop	{r4, pc}
	.size	png_image_error, .-png_image_error
	.global	png_sRGB_delta
	.global	png_sRGB_base
	.global	png_sRGB_table
	.section	.rodata
	.align	2
.LANCHOR0 = . + 0
.LC0:
	.byte	-119
	.byte	80
	.byte	78
	.byte	71
	.byte	13
	.byte	10
	.byte	26
	.byte	10
	.section	.rodata.short_months.8848,"a",%progbits
	.align	3
.LANCHOR1 = . + 0
	.type	short_months.8848, %object
	.size	short_months.8848, 48
short_months.8848:
	.ascii	"Jan\000"
	.ascii	"Feb\000"
	.ascii	"Mar\000"
	.ascii	"Apr\000"
	.ascii	"May\000"
	.ascii	"Jun\000"
	.ascii	"Jul\000"
	.ascii	"Aug\000"
	.ascii	"Sep\000"
	.ascii	"Oct\000"
	.ascii	"Nov\000"
	.ascii	"Dec\000"
	.section	.rodata.sRGB_XYZ.9038,"a",%progbits
	.align	2
.LANCHOR6 = . + 0
	.type	sRGB_XYZ.9038, %object
	.size	sRGB_XYZ.9038, 36
sRGB_XYZ.9038:
	.word	41239
	.word	21264
	.word	1933
	.word	35758
	.word	71517
	.word	11919
	.word	18048
	.word	7219
	.word	95053
	.section	.rodata.D50_nCIEXYZ,"a",%progbits
	.align	3
.LANCHOR4 = . + 0
	.type	D50_nCIEXYZ, %object
	.size	D50_nCIEXYZ, 12
D50_nCIEXYZ:
	.byte	0
	.byte	0
	.byte	-10
	.byte	-42
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	-45
	.byte	45
	.section	.rodata.png_sRGB_base,"a",%progbits
	.align	3
	.type	png_sRGB_base, %object
	.size	png_sRGB_base, 1024
png_sRGB_base:
	.short	128
	.short	1782
	.short	3383
	.short	4644
	.short	5675
	.short	6564
	.short	7357
	.short	8074
	.short	8732
	.short	9346
	.short	9921
	.short	10463
	.short	10977
	.short	11466
	.short	11935
	.short	12384
	.short	12816
	.short	13233
	.short	13634
	.short	14024
	.short	14402
	.short	14769
	.short	15125
	.short	15473
	.short	15812
	.short	16142
	.short	16466
	.short	16781
	.short	17090
	.short	17393
	.short	17690
	.short	17981
	.short	18266
	.short	18546
	.short	18822
	.short	19093
	.short	19359
	.short	19621
	.short	19879
	.short	20133
	.short	20383
	.short	20630
	.short	20873
	.short	21113
	.short	21349
	.short	21583
	.short	21813
	.short	22041
	.short	22265
	.short	22487
	.short	22707
	.short	22923
	.short	23138
	.short	23350
	.short	23559
	.short	23767
	.short	23972
	.short	24175
	.short	24376
	.short	24575
	.short	24772
	.short	24967
	.short	25160
	.short	25352
	.short	25542
	.short	25730
	.short	25916
	.short	26101
	.short	26284
	.short	26465
	.short	26645
	.short	26823
	.short	27000
	.short	27176
	.short	27350
	.short	27523
	.short	27695
	.short	27865
	.short	28034
	.short	28201
	.short	28368
	.short	28533
	.short	28697
	.short	28860
	.short	29021
	.short	29182
	.short	29341
	.short	29500
	.short	29657
	.short	29813
	.short	29969
	.short	30123
	.short	30276
	.short	30429
	.short	30580
	.short	30730
	.short	30880
	.short	31028
	.short	31176
	.short	31323
	.short	31469
	.short	31614
	.short	31758
	.short	31902
	.short	32045
	.short	32186
	.short	32327
	.short	32468
	.short	32607
	.short	32746
	.short	-32652
	.short	-32515
	.short	-32378
	.short	-32242
	.short	-32107
	.short	-31972
	.short	-31839
	.short	-31705
	.short	-31573
	.short	-31441
	.short	-31310
	.short	-31179
	.short	-31050
	.short	-30920
	.short	-30792
	.short	-30663
	.short	-30536
	.short	-30409
	.short	-30283
	.short	-30157
	.short	-30032
	.short	-29907
	.short	-29783
	.short	-29660
	.short	-29537
	.short	-29414
	.short	-29292
	.short	-29171
	.short	-29050
	.short	-28930
	.short	-28810
	.short	-28691
	.short	-28572
	.short	-28453
	.short	-28335
	.short	-28218
	.short	-28101
	.short	-27985
	.short	-27868
	.short	-27753
	.short	-27638
	.short	-27523
	.short	-27409
	.short	-27295
	.short	-27182
	.short	-27069
	.short	-26956
	.short	-26844
	.short	-26733
	.short	-26621
	.short	-26510
	.short	-26400
	.short	-26290
	.short	-26180
	.short	-26071
	.short	-25962
	.short	-25854
	.short	-25746
	.short	-25638
	.short	-25531
	.short	-25424
	.short	-25317
	.short	-25211
	.short	-25105
	.short	-24999
	.short	-24894
	.short	-24789
	.short	-24685
	.short	-24581
	.short	-24477
	.short	-24373
	.short	-24270
	.short	-24167
	.short	-24065
	.short	-23963
	.short	-23861
	.short	-23759
	.short	-23658
	.short	-23557
	.short	-23457
	.short	-23357
	.short	-23257
	.short	-23157
	.short	-23058
	.short	-22959
	.short	-22860
	.short	-22761
	.short	-22663
	.short	-22565
	.short	-22468
	.short	-22371
	.short	-22274
	.short	-22177
	.short	-22080
	.short	-21984
	.short	-21888
	.short	-21793
	.short	-21697
	.short	-21602
	.short	-21508
	.short	-21413
	.short	-21319
	.short	-21225
	.short	-21131
	.short	-21037
	.short	-20944
	.short	-20851
	.short	-20758
	.short	-20666
	.short	-20574
	.short	-20482
	.short	-20390
	.short	-20298
	.short	-20207
	.short	-20116
	.short	-20025
	.short	-19935
	.short	-19844
	.short	-19754
	.short	-19664
	.short	-19575
	.short	-19485
	.short	-19396
	.short	-19307
	.short	-19218
	.short	-19130
	.short	-19042
	.short	-18953
	.short	-18866
	.short	-18778
	.short	-18690
	.short	-18603
	.short	-18516
	.short	-18429
	.short	-18343
	.short	-18256
	.short	-18170
	.short	-18084
	.short	-17998
	.short	-17913
	.short	-17827
	.short	-17742
	.short	-17657
	.short	-17572
	.short	-17488
	.short	-17403
	.short	-17319
	.short	-17235
	.short	-17151
	.short	-17068
	.short	-16984
	.short	-16901
	.short	-16818
	.short	-16735
	.short	-16652
	.short	-16570
	.short	-16488
	.short	-16405
	.short	-16323
	.short	-16242
	.short	-16160
	.short	-16078
	.short	-15997
	.short	-15916
	.short	-15835
	.short	-15754
	.short	-15674
	.short	-15593
	.short	-15513
	.short	-15433
	.short	-15353
	.short	-15273
	.short	-15194
	.short	-15114
	.short	-15035
	.short	-14956
	.short	-14877
	.short	-14798
	.short	-14720
	.short	-14641
	.short	-14563
	.short	-14485
	.short	-14407
	.short	-14329
	.short	-14251
	.short	-14174
	.short	-14097
	.short	-14019
	.short	-13942
	.short	-13865
	.short	-13789
	.short	-13712
	.short	-13636
	.short	-13559
	.short	-13483
	.short	-13407
	.short	-13331
	.short	-13256
	.short	-13180
	.short	-13104
	.short	-13029
	.short	-12954
	.short	-12879
	.short	-12804
	.short	-12729
	.short	-12655
	.short	-12580
	.short	-12506
	.short	-12432
	.short	-12358
	.short	-12284
	.short	-12210
	.short	-12136
	.short	-12063
	.short	-11990
	.short	-11916
	.short	-11843
	.short	-11770
	.short	-11697
	.short	-11625
	.short	-11552
	.short	-11480
	.short	-11407
	.short	-11335
	.short	-11263
	.short	-11191
	.short	-11119
	.short	-11047
	.short	-10976
	.short	-10904
	.short	-10833
	.short	-10762
	.short	-10691
	.short	-10620
	.short	-10549
	.short	-10478
	.short	-10407
	.short	-10337
	.short	-10267
	.short	-10196
	.short	-10126
	.short	-10056
	.short	-9986
	.short	-9916
	.short	-9847
	.short	-9777
	.short	-9708
	.short	-9638
	.short	-9569
	.short	-9500
	.short	-9431
	.short	-9362
	.short	-9293
	.short	-9225
	.short	-9156
	.short	-9088
	.short	-9019
	.short	-8951
	.short	-8883
	.short	-8815
	.short	-8747
	.short	-8679
	.short	-8612
	.short	-8544
	.short	-8477
	.short	-8409
	.short	-8342
	.short	-8275
	.short	-8208
	.short	-8141
	.short	-8074
	.short	-8007
	.short	-7941
	.short	-7874
	.short	-7808
	.short	-7741
	.short	-7675
	.short	-7609
	.short	-7543
	.short	-7477
	.short	-7411
	.short	-7345
	.short	-7280
	.short	-7214
	.short	-7149
	.short	-7083
	.short	-7018
	.short	-6953
	.short	-6888
	.short	-6823
	.short	-6758
	.short	-6693
	.short	-6628
	.short	-6564
	.short	-6499
	.short	-6435
	.short	-6371
	.short	-6306
	.short	-6242
	.short	-6178
	.short	-6114
	.short	-6050
	.short	-5987
	.short	-5923
	.short	-5859
	.short	-5796
	.short	-5732
	.short	-5669
	.short	-5606
	.short	-5543
	.short	-5480
	.short	-5417
	.short	-5354
	.short	-5291
	.short	-5228
	.short	-5166
	.short	-5103
	.short	-5041
	.short	-4978
	.short	-4916
	.short	-4854
	.short	-4792
	.short	-4730
	.short	-4668
	.short	-4606
	.short	-4544
	.short	-4482
	.short	-4421
	.short	-4359
	.short	-4298
	.short	-4236
	.short	-4175
	.short	-4114
	.short	-4053
	.short	-3992
	.short	-3931
	.short	-3870
	.short	-3809
	.short	-3748
	.short	-3688
	.short	-3627
	.short	-3567
	.short	-3506
	.short	-3446
	.short	-3386
	.short	-3325
	.short	-3265
	.short	-3205
	.short	-3145
	.short	-3086
	.short	-3026
	.short	-2966
	.short	-2906
	.short	-2847
	.short	-2787
	.short	-2728
	.short	-2669
	.short	-2609
	.short	-2550
	.short	-2491
	.short	-2432
	.short	-2373
	.short	-2314
	.short	-2255
	.short	-2196
	.short	-2138
	.short	-2079
	.short	-2021
	.short	-1962
	.short	-1904
	.short	-1845
	.short	-1787
	.short	-1729
	.short	-1671
	.short	-1613
	.short	-1555
	.short	-1497
	.short	-1439
	.short	-1381
	.short	-1324
	.short	-1266
	.short	-1208
	.short	-1151
	.short	-1093
	.short	-1036
	.short	-979
	.short	-922
	.short	-864
	.short	-807
	.short	-750
	.short	-693
	.short	-636
	.short	-580
	.short	-523
	.short	-466
	.short	-410
	.short	-353
	.short	-297
	.short	-240
	.short	-184
	.short	-127
	.short	-71
	.section	.rodata.CSWTCH.116,"a",%progbits
	.align	3
.LANCHOR2 = . + 0
	.type	CSWTCH.116, %object
	.size	CSWTCH.116, 32
CSWTCH.116:
	.word	2
	.word	4
	.word	0
	.word	16
	.word	0
	.word	0
	.word	0
	.word	256
	.section	.rodata.CSWTCH.117,"a",%progbits
	.align	3
.LANCHOR3 = . + 0
	.type	CSWTCH.117, %object
	.size	CSWTCH.117, 32
CSWTCH.117:
	.word	255
	.word	85
	.word	0
	.word	17
	.word	0
	.word	0
	.word	0
	.word	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC1:
	.ascii	"Potential overflow in png_zalloc()\000"
	.space	1
.LC2:
	.ascii	"profile '\000"
	.space	2
.LC3:
	.ascii	"': \000"
.LC4:
	.ascii	"h: \000"
.LC5:
	.ascii	"Too many bytes for PNG signature\000"
	.space	3
.LC6:
	.ascii	"Unknown freer parameter in png_data_freer\000"
	.space	2
.LC7:
	.ascii	" +0000\000"
	.space	1
.LC8:
	.ascii	"Ignoring invalid time value\000"
.LC9:
	.ascii	"\012libpng version 1.6.10 - March 6, 2014\012Copyri"
	.ascii	"ght (c) 1998-2014 Glenn Randers-Pehrson\012Copyrigh"
	.ascii	"t (c) 1996-1997 Andreas Dilger\012Copyright (c) 199"
	.ascii	"5-1996 Guy Eric Schalnat, Group 42, Inc.\012\000"
	.space	1
.LC10:
	.ascii	"1.6.10\000"
	.space	1
.LC11:
	.ascii	"Application built with libpng-\000"
	.space	1
.LC12:
	.ascii	" but running with \000"
	.space	1
.LC13:
	.ascii	" libpng version 1.6.10 - March 6, 2014\012\012\000"
	.space	3
.LC14:
	.ascii	"unexpected zlib return code\000"
.LC15:
	.ascii	"unexpected end of LZ stream\000"
.LC16:
	.ascii	"missing LZ dictionary\000"
	.space	2
.LC17:
	.ascii	"zlib IO error\000"
	.space	2
.LC18:
	.ascii	"bad parameters to zlib\000"
	.space	1
.LC19:
	.ascii	"damaged LZ stream\000"
	.space	2
.LC20:
	.ascii	"insufficient memory\000"
.LC21:
	.ascii	"truncated\000"
	.space	2
.LC22:
	.ascii	"unsupported zlib version\000"
	.space	3
.LC23:
	.ascii	"unexpected zlib return\000"
	.space	1
.LC24:
	.ascii	"too short\000"
	.space	2
.LC25:
	.ascii	"invalid length\000"
	.space	1
.LC26:
	.ascii	"length does not match profile\000"
	.space	2
.LC27:
	.ascii	"tag count too large\000"
.LC28:
	.ascii	"invalid rendering intent\000"
	.space	3
.LC29:
	.ascii	"intent outside defined range\000"
	.space	3
.LC30:
	.ascii	"invalid signature\000"
	.space	2
.LC31:
	.ascii	"PCS illuminant is not D50\000"
	.space	2
.LC32:
	.ascii	"RGB color space not permitted on grayscale PNG\000"
	.space	1
.LC33:
	.ascii	"Gray color space not permitted on RGB PNG\000"
	.space	2
.LC34:
	.ascii	"invalid ICC profile color space\000"
.LC35:
	.ascii	"invalid embedded Abstract ICC profile\000"
	.space	2
.LC36:
	.ascii	"unexpected DeviceLink ICC profile class\000"
.LC37:
	.ascii	"unexpected NamedColor ICC profile class\000"
.LC38:
	.ascii	"unrecognized ICC profile class\000"
	.space	1
.LC39:
	.ascii	"unexpected ICC PCS encoding\000"
.LC40:
	.ascii	"ICC profile tag start not a multiple of 4\000"
	.space	2
.LC41:
	.ascii	"ICC profile tag outside profile\000"
.LC42:
	.ascii	"Image width is zero in IHDR\000"
.LC43:
	.ascii	"Image height is zero in IHDR\000"
	.space	3
.LC44:
	.ascii	"Image width exceeds user limit in IHDR\000"
	.space	1
.LC45:
	.ascii	"Image height exceeds user limit in IHDR\000"
.LC46:
	.ascii	"Invalid image width in IHDR\000"
.LC47:
	.ascii	"Invalid image height in IHDR\000"
	.space	3
.LC48:
	.ascii	"Invalid bit depth in IHDR\000"
	.space	2
.LC49:
	.ascii	"Invalid color type in IHDR\000"
	.space	1
.LC50:
	.ascii	"Invalid color type/bit depth combination in IHDR\000"
	.space	3
.LC51:
	.ascii	"Unknown interlace method in IHDR\000"
	.space	3
.LC52:
	.ascii	"Unknown compression method in IHDR\000"
	.space	1
.LC53:
	.ascii	"MNG features are not allowed in a PNG datastream\000"
	.space	3
.LC54:
	.ascii	"Unknown filter method in IHDR\000"
	.space	2
.LC55:
	.ascii	"Invalid filter method in IHDR\000"
	.space	2
.LC56:
	.ascii	"Invalid IHDR data\000"
	.space	2
.LC57:
	.ascii	"ASCII conversion buffer too small\000"
	.space	2
.LC58:
	.ascii	"internal error handling cHRM coefficients\000"
	.space	2
.LC59:
	.ascii	"internal error handling cHRM->XYZ\000"
	.space	2
.LC60:
	.ascii	"fixed point overflow ignored\000"
	.space	3
.LC61:
	.ascii	"inconsistent chromaticities\000"
.LC62:
	.ascii	"invalid end points\000"
	.space	1
.LC63:
	.ascii	"internal error checking chromaticities\000"
	.space	1
.LC64:
	.ascii	"invalid chromaticities\000"
	.space	1
.LC65:
	.ascii	"gamma value out of range\000"
	.space	3
.LC66:
	.ascii	"duplicate\000"
	.space	2
.LC67:
	.ascii	"gamma value does not match sRGB\000"
.LC68:
	.ascii	"gamma value does not match libpng estimate\000"
	.space	1
.LC69:
	.ascii	"sRGB\000"
	.space	3
.LC70:
	.ascii	"invalid sRGB rendering intent\000"
	.space	2
.LC71:
	.ascii	"inconsistent rendering intents\000"
	.space	1
.LC72:
	.ascii	"duplicate sRGB information ignored\000"
	.space	1
.LC73:
	.ascii	"cHRM chunk does not match sRGB\000"
	.space	1
.LC74:
	.ascii	"known incorrect sRGB profile\000"
	.space	3
.LC75:
	.ascii	"out-of-date sRGB profile with no signature\000"
	.space	1
.LC76:
	.ascii	"Not recognizing known sRGB profile that has been ed"
	.ascii	"ited\000"
.LC77:
	.ascii	"gamma table being rebuilt\000"
	.section	.rodata.png_sRGB_delta,"a",%progbits
	.align	3
	.type	png_sRGB_delta, %object
	.size	png_sRGB_delta, 512
png_sRGB_delta:
	.byte	-49
	.byte	-55
	.byte	-98
	.byte	-127
	.byte	113
	.byte	100
	.byte	90
	.byte	82
	.byte	77
	.byte	72
	.byte	68
	.byte	64
	.byte	61
	.byte	59
	.byte	56
	.byte	54
	.byte	52
	.byte	50
	.byte	49
	.byte	47
	.byte	46
	.byte	45
	.byte	43
	.byte	42
	.byte	41
	.byte	40
	.byte	39
	.byte	39
	.byte	38
	.byte	37
	.byte	36
	.byte	36
	.byte	35
	.byte	34
	.byte	34
	.byte	33
	.byte	33
	.byte	32
	.byte	32
	.byte	31
	.byte	31
	.byte	30
	.byte	30
	.byte	30
	.byte	29
	.byte	29
	.byte	28
	.byte	28
	.byte	28
	.byte	27
	.byte	27
	.byte	27
	.byte	27
	.byte	26
	.byte	26
	.byte	26
	.byte	25
	.byte	25
	.byte	25
	.byte	25
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	23
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	22
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	21
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	20
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	19
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	18
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	17
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	16
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	15
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	14
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	13
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	12
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	11
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	10
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.section	.rodata.sRGB_xy,"a",%progbits
	.align	2
.LANCHOR5 = . + 0
	.type	sRGB_xy, %object
	.size	sRGB_xy, 32
sRGB_xy:
	.word	64000
	.word	33000
	.word	30000
	.word	60000
	.word	15000
	.word	6000
	.word	31270
	.word	32900
	.section	.rodata.png_sRGB_checks,"a",%progbits
	.align	2
.LANCHOR7 = . + 0
	.type	png_sRGB_checks, %object
	.size	png_sRGB_checks, 224
png_sRGB_checks:
	.word	171956726
	.word	998732473
	.word	3048
	.word	704134622
	.word	-1343072850
	.word	2017655524
	.word	-897369843
	.byte	1
	.byte	0
	.short	0
	.word	1225385441
	.word	1115601697
	.word	3052
	.word	-916728265
	.word	-379745733
	.word	234065817
	.word	-1053686903
	.byte	1
	.byte	0
	.short	1
	.word	-48151391
	.word	812636334
	.word	60988
	.word	-60411016
	.word	937592939
	.word	-42800765
	.word	-2111245896
	.byte	1
	.byte	0
	.short	0
	.word	547108306
	.word	-1141934062
	.word	60960
	.word	878062271
	.word	-1723020026
	.word	1831622433
	.word	-791245731
	.byte	1
	.byte	0
	.short	0
	.word	-1605052574
	.word	1565600206
	.word	3024
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	0
	.short	1
	.word	-142281733
	.word	405710162
	.word	3144
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	1
	.short	0
	.word	60355580
	.word	-224505235
	.word	3144
	.word	0
	.word	0
	.word	0
	.word	0
	.byte	0
	.byte	1
	.short	1
	.section	.rodata.png_sRGB_table,"a",%progbits
	.align	3
	.type	png_sRGB_table, %object
	.size	png_sRGB_table, 512
png_sRGB_table:
	.short	0
	.short	20
	.short	40
	.short	60
	.short	80
	.short	99
	.short	119
	.short	139
	.short	159
	.short	179
	.short	199
	.short	219
	.short	241
	.short	264
	.short	288
	.short	313
	.short	340
	.short	367
	.short	396
	.short	427
	.short	458
	.short	491
	.short	526
	.short	562
	.short	599
	.short	637
	.short	677
	.short	718
	.short	761
	.short	805
	.short	851
	.short	898
	.short	947
	.short	997
	.short	1048
	.short	1101
	.short	1156
	.short	1212
	.short	1270
	.short	1330
	.short	1391
	.short	1453
	.short	1517
	.short	1583
	.short	1651
	.short	1720
	.short	1790
	.short	1863
	.short	1937
	.short	2013
	.short	2090
	.short	2170
	.short	2250
	.short	2333
	.short	2418
	.short	2504
	.short	2592
	.short	2681
	.short	2773
	.short	2866
	.short	2961
	.short	3058
	.short	3157
	.short	3258
	.short	3360
	.short	3464
	.short	3570
	.short	3678
	.short	3788
	.short	3900
	.short	4014
	.short	4129
	.short	4247
	.short	4366
	.short	4488
	.short	4611
	.short	4736
	.short	4864
	.short	4993
	.short	5124
	.short	5257
	.short	5392
	.short	5530
	.short	5669
	.short	5810
	.short	5953
	.short	6099
	.short	6246
	.short	6395
	.short	6547
	.short	6700
	.short	6856
	.short	7014
	.short	7174
	.short	7335
	.short	7500
	.short	7666
	.short	7834
	.short	8004
	.short	8177
	.short	8352
	.short	8528
	.short	8708
	.short	8889
	.short	9072
	.short	9258
	.short	9445
	.short	9635
	.short	9828
	.short	10022
	.short	10219
	.short	10417
	.short	10619
	.short	10822
	.short	11028
	.short	11235
	.short	11446
	.short	11658
	.short	11873
	.short	12090
	.short	12309
	.short	12530
	.short	12754
	.short	12980
	.short	13209
	.short	13440
	.short	13673
	.short	13909
	.short	14146
	.short	14387
	.short	14629
	.short	14874
	.short	15122
	.short	15371
	.short	15623
	.short	15878
	.short	16135
	.short	16394
	.short	16656
	.short	16920
	.short	17187
	.short	17456
	.short	17727
	.short	18001
	.short	18277
	.short	18556
	.short	18837
	.short	19121
	.short	19407
	.short	19696
	.short	19987
	.short	20281
	.short	20577
	.short	20876
	.short	21177
	.short	21481
	.short	21787
	.short	22096
	.short	22407
	.short	22721
	.short	23038
	.short	23357
	.short	23678
	.short	24002
	.short	24329
	.short	24658
	.short	24990
	.short	25325
	.short	25662
	.short	26001
	.short	26344
	.short	26688
	.short	27036
	.short	27386
	.short	27739
	.short	28094
	.short	28452
	.short	28813
	.short	29176
	.short	29542
	.short	29911
	.short	30282
	.short	30656
	.short	31033
	.short	31412
	.short	31794
	.short	32179
	.short	32567
	.short	-32579
	.short	-32186
	.short	-31791
	.short	-31393
	.short	-30992
	.short	-30588
	.short	-30181
	.short	-29772
	.short	-29360
	.short	-28945
	.short	-28528
	.short	-28107
	.short	-27684
	.short	-27258
	.short	-26830
	.short	-26398
	.short	-25964
	.short	-25527
	.short	-25087
	.short	-24645
	.short	-24199
	.short	-23751
	.short	-23300
	.short	-22846
	.short	-22389
	.short	-21930
	.short	-21467
	.short	-21002
	.short	-20534
	.short	-20063
	.short	-19589
	.short	-19113
	.short	-18633
	.short	-18151
	.short	-17665
	.short	-17177
	.short	-16686
	.short	-16192
	.short	-15695
	.short	-15195
	.short	-14692
	.short	-14187
	.short	-13678
	.short	-13167
	.short	-12652
	.short	-12135
	.short	-11615
	.short	-11091
	.short	-10565
	.short	-10036
	.short	-9504
	.short	-8969
	.short	-8431
	.short	-7890
	.short	-7346
	.short	-6799
	.short	-6249
	.short	-5696
	.short	-5140
	.short	-4581
	.short	-4019
	.short	-3454
	.short	-2886
	.short	-2315
	.short	-1741
	.short	-1164
	.short	-584
	.short	-1
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
