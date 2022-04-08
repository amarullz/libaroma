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
	.file	"fb.c"
	.section	.text.libaroma_fb_set_initializer,"ax",%progbits
	.align	2
	.global	libaroma_fb_set_initializer
	.thumb
	.thumb_func
	.type	libaroma_fb_set_initializer, %function
libaroma_fb_set_initializer:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L7
.LPIC0:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L2
	push	{r4, lr}
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L7+4
	mov	r2, r0
	mov	r0, r4
.LPIC1:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L7+8
	movs	r1, #1
	movs	r2, #59
.LPIC2:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L7+12
	ldr	r2, .L7+16
.LPIC3:
	add	r1, pc
.LPIC4:
	add	r2, pc
	bl	fprintf(PLT)
	movs	r3, #0
	mov	r0, r3
	pop	{r4, pc}
.L2:
	ldr	r2, .L7+20
	adds	r3, r0, #0
	it	ne
	movne	r3, #1
.LPIC5:
	add	r2, pc
	str	r0, [r2]
	mov	r0, r3
	bx	lr
.L8:
	.align	2
.L7:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LANCHOR1-(.LPIC5+4)
	.size	libaroma_fb_set_initializer, .-libaroma_fb_set_initializer
	.section	.text.libaroma_fb,"ax",%progbits
	.align	2
	.global	libaroma_fb
	.thumb
	.thumb_func
	.type	libaroma_fb, %function
libaroma_fb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L10
.LPIC6:
	add	r3, pc
	ldr	r0, [r3]
	bx	lr
.L11:
	.align	2
.L10:
	.word	.LANCHOR0-(.LPIC6+4)
	.size	libaroma_fb, .-libaroma_fb
	.section	.text.libaroma_fb_start_post,"ax",%progbits
	.align	2
	.global	libaroma_fb_start_post
	.thumb
	.thumb_func
	.type	libaroma_fb_start_post, %function
libaroma_fb_start_post:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r4, .L17
.LPIC7:
	add	r4, pc
	ldr	r5, [r4]
	cbz	r5, .L13
	ldr	r6, .L17+4
.LPIC8:
	add	r6, pc
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r4]
	ldr	r3, [r0, #32]
	blx	r3
	mov	r5, r0
	cbz	r0, .L14
	movs	r3, #1
	ldr	r2, [r4]
	mov	r5, r3
	strb	r3, [r2, #49]
.L13:
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L14:
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L18:
	.align	2
.L17:
	.word	.LANCHOR0-(.LPIC7+4)
	.word	.LANCHOR2-(.LPIC8+4)
	.size	libaroma_fb_start_post, .-libaroma_fb_start_post
	.section	.text.libaroma_fb_end_post,"ax",%progbits
	.align	2
	.global	libaroma_fb_end_post
	.thumb
	.thumb_func
	.type	libaroma_fb_end_post, %function
libaroma_fb_end_post:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L27
.LPIC12:
	add	r4, pc
	ldr	r3, [r4]
	cbz	r3, .L21
	ldrb	r0, [r3, #49]	@ zero_extendqisi2
	cbnz	r0, .L26
	pop	{r4, pc}
.L26:
	ldr	r2, [r3, #40]
	mov	r0, r3
	blx	r2
	ldr	r3, [r4]
	movs	r2, #0
	ldr	r0, .L27+4
	strb	r2, [r3, #49]
.LPIC14:
	add	r0, pc
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r4, pc}
.L21:
	mov	r0, r3
	pop	{r4, pc}
.L28:
	.align	2
.L27:
	.word	.LANCHOR0-(.LPIC12+4)
	.word	.LANCHOR2-(.LPIC14+4)
	.size	libaroma_fb_end_post, .-libaroma_fb_end_post
	.section	.text.libaroma_fb_post,"ax",%progbits
	.align	2
	.global	libaroma_fb_post
	.thumb
	.thumb_func
	.type	libaroma_fb_post, %function
libaroma_fb_post:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #24
	ldr	r4, .L47
.LPIC15:
	add	r4, pc
	ldr	r4, [r4]
	cmp	r4, #0
	beq	.L35
	mov	r5, r0
	ldrb	r0, [r4, #49]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L30
	mov	r6, r3
	ldr	r3, [r5]
	cmp	r3, r6
	blt	.L40
	ldr	lr, [r5, #4]
	ldr	r0, [sp, #48]
	cmp	lr, r0
	blt	.L40
	mov	r7, r2
	ldr	r2, [r4]
	cmp	r2, r1
	blt	.L40
	ldr	r0, [r4, #4]
	cmp	r0, r7
	blt	.L40
	ldr	r8, [sp, #48]
	lsr	ip, r8, #31
	orrs	ip, ip, r6, lsr #31
	bne	.L40
	orrs	r8, r1, r7
	it	mi
	movmi	r0, ip
	bmi	.L30
	ldr	ip, [sp, #52]
	add	ip, ip, r6
	cmp	r3, ip
	ldr	ip, [sp, #56]
	itt	lt
	sublt	r3, r3, r6
	strlt	r3, [sp, #52]
	ldr	r3, [sp, #48]
	add	r3, r3, ip
	cmp	lr, r3
	ittt	lt
	ldrlt	r3, [sp, #48]
	rsblt	r3, r3, lr
	strlt	r3, [sp, #56]
	ldr	r3, [sp, #52]
	add	r3, r3, r1
	cmp	r2, r3
	ldr	r3, [sp, #56]
	itt	lt
	sublt	r2, r2, r1
	strlt	r2, [sp, #52]
	add	r3, r3, r7
	ldr	r2, [sp, #52]
	cmp	r0, r3
	itt	lt
	sublt	r0, r0, r7
	strlt	r0, [sp, #56]
	ldr	r0, [sp, #56]
	cmp	r2, #0
	it	gt
	cmpgt	r0, #0
	it	le
	movle	r0, #1
	ble	.L30
	ldr	ip, [r5, #8]
	mov	r2, r1
	ldr	r1, [r5, #16]
	mov	r3, r7
	ldr	r5, [sp, #52]
	mov	r0, r4
	str	r6, [sp, #8]
	str	lr, [sp, #20]
	str	r5, [sp]
	ldr	r5, [sp, #56]
	str	ip, [sp, #16]
	str	r5, [sp, #4]
	ldr	r5, [sp, #48]
	str	r5, [sp, #12]
	ldr	r4, [r4, #36]
	blx	r4
	b	.L30
.L40:
	movs	r0, #0
.L30:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L35:
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L48:
	.align	2
.L47:
	.word	.LANCHOR0-(.LPIC15+4)
	.size	libaroma_fb_post, .-libaroma_fb_post
	.section	.text.libaroma_fb_release,"ax",%progbits
	.align	2
	.global	libaroma_fb_release
	.thumb
	.thumb_func
	.type	libaroma_fb_release, %function
libaroma_fb_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L59
.LPIC16:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L50
	ldrb	r3, [r0, #56]	@ zero_extendqisi2
	cbz	r3, .L57
.L51:
	ldr	r3, [r0, #20]
	blx	r3
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L59+4
	mov	r2, r0
	mov	r0, r4
	ldr	r4, .L59+8
.LPIC18:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L59+12
	movs	r2, #20
	movs	r1, #1
.LPIC20:
	add	r4, pc
.LPIC19:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, [r4]
	ldrb	r2, [r3, #49]	@ zero_extendqisi2
	cbnz	r2, .L58
.L52:
	ldr	r4, .L59+16
	movs	r5, #0
	ldr	r0, .L59+20
	strb	r5, [r3, #49]
.LPIC23:
	add	r4, pc
.LPIC22:
	add	r0, pc
	bl	omp_destroy_nest_lock(PLT)
	ldr	r0, [r4]
	bl	free(PLT)
	movs	r0, #1
	str	r5, [r4]
.L50:
	pop	{r3, r4, r5, pc}
.L57:
	adds	r0, r0, #52
	movs	r1, #1
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [r4]
	b	.L51
.L58:
	bl	libaroma_fb_end_post(PLT)
	ldr	r3, [r4]
	b	.L52
.L60:
	.align	2
.L59:
	.word	.LANCHOR0-(.LPIC16+4)
	.word	.LC4-(.LPIC18+4)
	.word	.LANCHOR0-(.LPIC20+4)
	.word	.LC5-(.LPIC19+4)
	.word	.LANCHOR0-(.LPIC23+4)
	.word	.LANCHOR2-(.LPIC22+4)
	.size	libaroma_fb_release, .-libaroma_fb_release
	.section	.text.libaroma_fb_sync,"ax",%progbits
	.align	2
	.global	libaroma_fb_sync
	.thumb
	.thumb_func
	.type	libaroma_fb_sync, %function
libaroma_fb_sync:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #28
	ldr	r4, .L70
.LPIC25:
	add	r4, pc
	ldr	r3, [r4]
	cbz	r3, .L64
	bl	libaroma_fb_start_post(PLT)
	cbnz	r0, .L69
.L64:
	movs	r4, #0
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L69:
	ldr	r4, [r4]
	movs	r5, #0
	mov	r2, r5
	mov	r3, r5
	ldr	r1, [r4, #52]
	mov	r0, r4
	ldr	r7, [r4]
	ldr	r6, [r4, #4]
	ldr	r1, [r1, #16]
	str	r7, [sp]
	str	r6, [sp, #4]
	str	r7, [sp, #16]
	str	r6, [sp, #20]
	str	r5, [sp, #8]
	str	r5, [sp, #12]
	ldr	r4, [r4, #36]
	blx	r4
	subs	r4, r0, r5
	it	ne
	movne	r4, #1
	bl	libaroma_fb_end_post(PLT)
	mov	r0, r4
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L71:
	.align	2
.L70:
	.word	.LANCHOR0-(.LPIC25+4)
	.size	libaroma_fb_sync, .-libaroma_fb_sync
	.section	.text.libaroma_fb_sync_area,"ax",%progbits
	.align	2
	.global	libaroma_fb_sync_area
	.thumb
	.thumb_func
	.type	libaroma_fb_sync_area, %function
libaroma_fb_sync_area:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #24
	ldr	r4, .L87
.LPIC27:
	add	r4, pc
	ldr	r4, [r4]
	cbz	r4, .L80
	mov	r6, r3
	ldrb	r3, [r4, #12]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L85
	cmp	r0, #0
	mov	r5, r0
	it	lt
	movlt	r5, r3
	ldr	r3, [r4]
	mov	r7, r2
	it	lt
	sublt	r7, r2, r0
	adds	r2, r5, r7
	cmp	r1, #0
	it	lt
	sublt	r6, r6, r1
	mov	r8, r1
	it	lt
	movlt	r8, #0
	cmp	r2, r3
	it	gt
	subgt	r7, r3, r5
	ldr	r3, [r4, #4]
	add	r2, r8, r6
	cmp	r2, r3
	it	gt
	subgt	r6, r3, r5
	cmp	r7, #0
	it	gt
	cmpgt	r6, #0
	bgt	.L86
.L80:
	movs	r4, #0
.L74:
	mov	r0, r4
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L86:
	bl	libaroma_fb_start_post(PLT)
	cmp	r0, #0
	beq	.L80
	ldr	r1, .L87+4
	mov	r2, r5
	mov	r3, r8
.LPIC28:
	add	r1, pc
	ldr	r4, [r1]
	ldr	r1, [r4, #52]
	mov	r0, r4
	ldr	r1, [r1, #16]
	str	r7, [sp]
	str	r6, [sp, #4]
	str	r5, [sp, #8]
	str	r8, [sp, #12]
	ldr	r5, [r4]
	str	r5, [sp, #16]
	ldr	r5, [r4, #4]
	str	r5, [sp, #20]
	ldr	r4, [r4, #36]
	blx	r4
	adds	r4, r0, #0
	it	ne
	movne	r4, #1
	bl	libaroma_fb_end_post(PLT)
	b	.L74
.L85:
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	libaroma_fb_sync(PLT)
.L88:
	.align	2
.L87:
	.word	.LANCHOR0-(.LPIC27+4)
	.word	.LANCHOR0-(.LPIC28+4)
	.size	libaroma_fb_sync_area, .-libaroma_fb_sync_area
	.section	.text.libaroma_fb_config,"ax",%progbits
	.align	2
	.global	libaroma_fb_config
	.thumb
	.thumb_func
	.type	libaroma_fb_config, %function
libaroma_fb_config:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	mov	r7, r0
	ldr	r4, .L96
.LPIC29:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L90
	ldr	r5, [r0, #28]
	cbz	r5, .L90
	mov	r6, r1
	mov	r3, r2
	mov	r1, r7
	mov	r2, r6
	mov	ip, r5
	pop	{r4, r5, r6, r7}
	bx	ip
.L90:
	movs	r0, #0
	pop	{r4, r5, r6, r7}
	bx	lr
.L97:
	.align	2
.L96:
	.word	.LANCHOR0-(.LPIC29+4)
	.size	libaroma_fb_config, .-libaroma_fb_config
	.section	.text.libaroma_fb_is_landscape,"ax",%progbits
	.align	2
	.global	libaroma_fb_is_landscape
	.thumb
	.thumb_func
	.type	libaroma_fb_is_landscape, %function
libaroma_fb_is_landscape:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L101
.LPIC30:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L100
	ldmia	r3, {r0, r3}
	cmp	r0, r3
	ite	le
	movle	r0, #0
	movgt	r0, #1
	bx	lr
.L100:
	mov	r0, r3
	bx	lr
.L102:
	.align	2
.L101:
	.word	.LANCHOR0-(.LPIC30+4)
	.size	libaroma_fb_is_landscape, .-libaroma_fb_is_landscape
	.section	.text.libaroma_dp,"ax",%progbits
	.align	2
	.global	libaroma_dp
	.thumb
	.thumb_func
	.type	libaroma_dp, %function
libaroma_dp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L106
.LPIC31:
	add	r2, pc
	ldr	r3, [r2]
	cbz	r3, .L105
	ldr	r2, [r3, #44]
	movw	r3, #26215
	movt	r3, 26214
	mul	r0, r2, r0
	smull	r2, r3, r3, r0
	asrs	r0, r0, #31
	rsb	r0, r0, r3, asr #6
	bx	lr
.L105:
	mov	r0, r3
	bx	lr
.L107:
	.align	2
.L106:
	.word	.LANCHOR0-(.LPIC31+4)
	.size	libaroma_dp, .-libaroma_dp
	.global	__aeabi_idiv
	.section	.text.libaroma_px,"ax",%progbits
	.align	2
	.global	libaroma_px
	.thumb
	.thumb_func
	.type	libaroma_px, %function
libaroma_px:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, .L112
.LPIC32:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L110
	add	r0, r0, r0, lsl #2
	ldr	r1, [r3, #44]
	lsls	r0, r0, #5
	bl	__aeabi_idiv(PLT)
	pop	{r3, pc}
.L110:
	mov	r0, r3
	pop	{r3, pc}
.L113:
	.align	2
.L112:
	.word	.LANCHOR0-(.LPIC32+4)
	.size	libaroma_px, .-libaroma_px
	.section	.text.libaroma_width_dp,"ax",%progbits
	.align	2
	.global	libaroma_width_dp
	.thumb
	.thumb_func
	.type	libaroma_width_dp, %function
libaroma_width_dp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L116
.LPIC33:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L115
	ldr	r0, [r0]
	b	libaroma_px(PLT)
.L115:
	bx	lr
.L117:
	.align	2
.L116:
	.word	.LANCHOR0-(.LPIC33+4)
	.size	libaroma_width_dp, .-libaroma_width_dp
	.section	.text.libaroma_height_dp,"ax",%progbits
	.align	2
	.global	libaroma_height_dp
	.thumb
	.thumb_func
	.type	libaroma_height_dp, %function
libaroma_height_dp:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L120
.LPIC34:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L119
	ldr	r0, [r0, #4]
	b	libaroma_px(PLT)
.L119:
	bx	lr
.L121:
	.align	2
.L120:
	.word	.LANCHOR0-(.LPIC34+4)
	.size	libaroma_height_dp, .-libaroma_height_dp
	.section	.text.libaroma_fb_snapshoot,"ax",%progbits
	.align	2
	.global	libaroma_fb_snapshoot
	.thumb
	.thumb_func
	.type	libaroma_fb_snapshoot, %function
libaroma_fb_snapshoot:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L128
.LPIC35:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L123
	ldr	r3, [r0, #24]
	cbz	r3, .L123
	ldr	r2, [r0, #52]
	ldr	r1, [r2, #16]
	bx	r3
.L123:
	movs	r0, #0
	bx	lr
.L129:
	.align	2
.L128:
	.word	.LANCHOR0-(.LPIC35+4)
	.size	libaroma_fb_snapshoot, .-libaroma_fb_snapshoot
	.section	.text.libaroma_fb_init,"ax",%progbits
	.align	2
	.global	libaroma_fb_init
	.thumb
	.thumb_func
	.type	libaroma_fb_init, %function
libaroma_fb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r5, .L170+8
.LPIC38:
	add	r5, pc
	ldr	r3, [r5]
	cbz	r3, .L131
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L170+12
	mov	r2, r0
	mov	r0, r4
	movs	r4, #0
.LPIC39:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L170+16
	movs	r1, #1
	movs	r2, #48
.LPIC40:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L170+20
	ldr	r2, .L170+24
.LPIC41:
	add	r1, pc
.LPIC42:
	add	r2, pc
	bl	fprintf(PLT)
.L132:
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L131:
	movs	r0, #60
	movs	r1, #1
	bl	calloc(PLT)
	mov	r4, r0
	str	r0, [r5]
	cmp	r0, #0
	beq	.L167
	ldr	r3, .L170+28
.LPIC48:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L134
	blx	r3
	mov	r4, r0
	cmp	r0, #0
	beq	.L168
.L135:
	ldr	r3, .L170+32
.LPIC61:
	add	r3, pc
	ldr	r4, [r3]
	ldr	r3, [r4, #20]
	cmp	r3, #0
	beq	.L136
	ldr	r3, [r4, #32]
	cmp	r3, #0
	beq	.L136
	ldr	r3, [r4, #40]
	cmp	r3, #0
	beq	.L136
	ldr	r3, [r4, #36]
	cmp	r3, #0
	beq	.L136
	ldr	r3, [r4, #44]
	subs	r3, r3, #160
	cmp	r3, #800
	bls	.L139
	ldr	r3, [r4]
	movw	r2, #26215
	ldr	r1, [r4, #4]
	movt	r2, 26214
	cmp	r3, r1
	it	ge
	movge	r3, r1
	smull	r1, r2, r2, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r2, asr #6
	fmsr	s0, r3	@ int
	fsitod	d0, s0
	bl	floor(PLT)
	fldd	d16, .L170
	fmuld	d0, d0, d16
	ftosizd	s15, d0
	fmrs	r3, s15	@ int
	sub	r2, r3, #160
	cmp	r2, #800
	it	hi
	movhi	r3, #160
	str	r3, [r4, #44]
.L139:
	bl	libaroma_width_dp(PLT)
	mov	r4, r0
	bl	libaroma_height_dp(PLT)
	cmp	r4, r0
	bge	.L142
	bl	libaroma_width_dp(PLT)
.L143:
	ldr	r3, .L170+36
	cmp	r0, #600
	ite	lt
	movlt	r0, #0
	movge	r0, #1
.LPIC67:
	add	r3, pc
	ldr	r4, [r3]
	ldrb	r3, [r4, #56]	@ zero_extendqisi2
	strb	r0, [r4, #48]
	cmp	r3, #0
	beq	.L144
	ldr	r3, [r4, #52]
	cmp	r3, #0
	beq	.L144
.L145:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L170+40
	mov	r2, r0
	mov	r0, r4
.LPIC68:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r3, .L170+44
.LPIC69:
	add	r3, pc
	ldr	r1, [r3]
	ldrb	r4, [r1, #12]	@ zero_extendqisi2
	ldmia	r1, {r2, r3}
	ldr	r1, [r1, #44]
	cbz	r4, .L151
	ldr	r4, .L170+48
.LPIC36:
	add	r4, pc
.L147:
	stmia	sp, {r1, r4}
	ldr	r1, .L170+52
.LPIC70:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	bl	libaroma_config(PLT)
	ldrb	r3, [r0, #64]	@ zero_extendqisi2
	cbnz	r3, .L148
	ldr	r3, .L170+56
.LPIC71:
	add	r3, pc
	ldr	r2, [r3]
.L149:
	ldr	r0, .L170+60
	movs	r3, #0
	movs	r4, #1
	strb	r3, [r2, #49]
.LPIC74:
	add	r0, pc
	bl	omp_init_nest_lock(PLT)
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L148:
	ldr	r4, .L170+64
.LPIC72:
	add	r4, pc
	ldr	r2, [r4]
	ldr	r3, [r2, #24]
	cmp	r3, #0
	beq	.L149
	bl	libaroma_fb_snapshoot(PLT)
	ldr	r2, [r4]
	b	.L149
.L151:
	ldr	r4, .L170+68
.LPIC37:
	add	r4, pc
	b	.L147
.L142:
	bl	libaroma_height_dp(PLT)
	b	.L143
.L136:
	mov	r0, r4
	movs	r5, #0
	bl	free(PLT)
	ldr	r3, .L170+72
	mov	r4, r5
.LPIC62:
	add	r3, pc
	str	r5, [r3]
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L170+76
	mov	r2, r0
	mov	r0, r5
.LPIC63:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L170+80
	movs	r1, #1
	movs	r2, #49
.LPIC64:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L170+84
	ldr	r2, .L170+88
.LPIC65:
	add	r1, pc
.LPIC66:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L132
.L134:
	bl	libaroma_fb_driver_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	bne	.L135
	ldr	r0, [r5]
	bl	free(PLT)
	str	r4, [r5]
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L170+92
	mov	r2, r0
	mov	r0, r5
.LPIC57:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L170+96
	movs	r1, #1
	movs	r2, #29
.LPIC58:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L170+100
	ldr	r2, .L170+104
.LPIC59:
	add	r1, pc
.LPIC60:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L132
.L144:
	movs	r3, #0
	ldr	r6, [r4]
	strb	r3, [r4, #56]
	ldr	r5, [r4, #4]
	bl	libaroma_config(PLT)
	ldrb	r3, [r0]	@ zero_extendqisi2
	mov	r0, r3
	cbnz	r3, .L169
.L146:
	movs	r2, #0
	str	r0, [sp]
	mov	r1, r5
	mov	r0, r6
	mov	r3, r2
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r4, #52]
	b	.L145
.L168:
	ldr	r0, [r5]
	bl	free(PLT)
	str	r4, [r5]
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L170+108
	mov	r2, r0
	mov	r0, r5
.LPIC51:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L170+112
	movs	r1, #1
	movs	r2, #29
.LPIC52:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L170+116
	ldr	r2, .L170+120
.LPIC53:
	add	r1, pc
.LPIC54:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L132
.L169:
	bl	libaroma_config(PLT)
	b	.L146
.L167:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L170+124
	mov	r2, r0
	mov	r0, r5
.LPIC44:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L170+128
	movs	r1, #1
	movs	r2, #55
.LPIC45:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L170+132
	ldr	r2, .L170+136
.LPIC46:
	add	r1, pc
.LPIC47:
	add	r2, pc
	bl	fprintf(PLT)
	b	.L132
.L171:
	.align	3
.L170:
	.word	0
	.word	1079246848
	.word	.LANCHOR0-(.LPIC38+4)
	.word	.LC0-(.LPIC39+4)
	.word	.LC8-(.LPIC40+4)
	.word	.LC2-(.LPIC41+4)
	.word	.LC3-(.LPIC42+4)
	.word	.LANCHOR1-(.LPIC48+4)
	.word	.LANCHOR0-(.LPIC61+4)
	.word	.LANCHOR0-(.LPIC67+4)
	.word	.LC12-(.LPIC68+4)
	.word	.LANCHOR0-(.LPIC69+4)
	.word	.LC6-(.LPIC36+4)
	.word	.LC13-(.LPIC70+4)
	.word	.LANCHOR0-(.LPIC71+4)
	.word	.LANCHOR2-(.LPIC74+4)
	.word	.LANCHOR0-(.LPIC72+4)
	.word	.LC7-(.LPIC37+4)
	.word	.LANCHOR0-(.LPIC62+4)
	.word	.LC0-(.LPIC63+4)
	.word	.LC11-(.LPIC64+4)
	.word	.LC2-(.LPIC65+4)
	.word	.LC3-(.LPIC66+4)
	.word	.LC0-(.LPIC57+4)
	.word	.LC10-(.LPIC58+4)
	.word	.LC2-(.LPIC59+4)
	.word	.LC3-(.LPIC60+4)
	.word	.LC0-(.LPIC51+4)
	.word	.LC10-(.LPIC52+4)
	.word	.LC2-(.LPIC53+4)
	.word	.LC3-(.LPIC54+4)
	.word	.LC0-(.LPIC44+4)
	.word	.LC9-(.LPIC45+4)
	.word	.LC2-(.LPIC46+4)
	.word	.LC3-(.LPIC47+4)
	.size	libaroma_fb_init, .-libaroma_fb_init
	.section	.text.libaroma_fb_snapshoot_canvas,"ax",%progbits
	.align	2
	.global	libaroma_fb_snapshoot_canvas
	.thumb
	.thumb_func
	.type	libaroma_fb_snapshoot_canvas, %function
libaroma_fb_snapshoot_canvas:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #20
	ldr	r4, .L184
.LPIC75:
	add	r4, pc
	ldr	r3, [r4]
	cbz	r3, .L175
	ldr	r2, [r3, #24]
	cbz	r2, .L175
	movs	r5, #0
	ldr	r0, [r3]
	ldr	r1, [r3, #4]
	mov	r2, r5
	str	r5, [sp]
	mov	r3, r5
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [sp, #8]
	cbz	r0, .L175
	ldr	r3, [r4]
	ldr	r1, [r0, #16]
	ldr	r2, [r3, #24]
	mov	r0, r3
	blx	r2
	mov	r4, r0
	cbz	r0, .L176
	ldr	r0, [sp, #8]
.L174:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L175:
	movs	r0, #0
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L176:
	add	r0, sp, #8
	mov	r1, r4
	bl	libaroma_canvas_free_ex1(PLT)
	mov	r0, r4
	b	.L174
.L185:
	.align	2
.L184:
	.word	.LANCHOR0-(.LPIC75+4)
	.size	libaroma_fb_snapshoot_canvas, .-libaroma_fb_snapshoot_canvas
	.section	.bss._libaroma_fb_initializer,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	_libaroma_fb_initializer, %object
	.size	_libaroma_fb_initializer, 4
_libaroma_fb_initializer:
	.space	4
	.section	.bss._libaroma_fb,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_fb, %object
	.size	_libaroma_fb, 4
_libaroma_fb:
	.space	4
	.section	.bss._libaroma_fb_onpost_mutex,"aw",%nobits
	.align	2
.LANCHOR2 = . + 0
	.type	_libaroma_fb_onpost_mutex, %object
	.size	_libaroma_fb_onpost_mutex, 12
_libaroma_fb_onpost_mutex:
	.space	12
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"E/%s: \000"
	.space	1
.LC1:
	.ascii	"libaroma_fb_set_initializer framebuffer already ini"
	.ascii	"tialized\000"
.LC2:
	.ascii	"%s\012\000"
.LC3:
	.ascii	"\000"
	.space	3
.LC4:
	.ascii	"N/%s: \000"
	.space	1
.LC5:
	.ascii	"Framebuffer Released\000"
	.space	3
.LC6:
	.ascii	"Double Buffer\000"
	.space	2
.LC7:
	.ascii	"Single Buffer\000"
	.space	2
.LC8:
	.ascii	"libaroma_fb_init framebuffer already initialized\000"
	.space	3
.LC9:
	.ascii	"libaroma_fb_init allocating framebuffer instance fa"
	.ascii	"iled\000"
.LC10:
	.ascii	"libaroma_fb_init driver error\000"
	.space	2
.LC11:
	.ascii	"libaroma_fb_init driver doesn't set the callbacks\000"
	.space	2
.LC12:
	.ascii	"I/%s: \000"
	.space	1
.LC13:
	.ascii	"Framebuffer Initialized (%ix%ipx - %i dpi - %s)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
