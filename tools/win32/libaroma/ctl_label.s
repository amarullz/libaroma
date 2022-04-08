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
	.file	"ctl_label.c"
	.section	.text._libaroma_ctl_label_thread,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_label_thread
	.thumb
	.thumb_func
	.type	_libaroma_ctl_label_thread, %function
_libaroma_ctl_label_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L11
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #72]
.LPIC0:
	add	r2, pc
	cmp	r3, r2
	it	ne
	movne	r0, #0
	beq	.L10
.L2:
	pop	{r3, r4, r5, pc}
.L10:
	ldr	r4, [r0, #4]
	ldrb	r0, [r4, #12]	@ zero_extendqisi2
	cmp	r0, #0
	beq	.L2
	add	r5, r4, #28
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	movs	r3, #0
	mov	r0, r5
	strb	r3, [r4, #12]
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	pop	{r3, r4, r5, pc}
.L12:
	.align	2
.L11:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_ctl_label_thread, .-_libaroma_ctl_label_thread
	.section	.text._libaroma_ctl_label_msg,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_label_msg
	.thumb
	.thumb_func
	.type	_libaroma_ctl_label_msg, %function
_libaroma_ctl_label_msg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L22
	ldr	r3, [r0, #72]
.LPIC1:
	add	r2, pc
	cmp	r3, r2
	beq	.L20
	movs	r0, #0
	bx	lr
.L20:
	ldrb	r3, [r1]	@ zero_extendqisi2
	push	{r4, r5, r6, lr}
	ldr	r5, [r0, #4]
	adds	r3, r3, #127
	uxtb	r3, r3
	cmp	r3, #3
	bhi	.L14
	movs	r4, #1
	lsl	r3, r4, r3
	tst	r3, #11
	bne	.L21
.L14:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
.L21:
	add	r6, r5, #28
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	mov	r0, r6
	strb	r4, [r5, #12]
	bl	omp_unset_nest_lock(PLT)
	b	.L14
.L23:
	.align	2
.L22:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	_libaroma_ctl_label_msg, .-_libaroma_ctl_label_msg
	.section	.text._libaroma_ctl_label_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_label_destroy
	.thumb
	.thumb_func
	.type	_libaroma_ctl_label_destroy, %function
_libaroma_ctl_label_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L32
	push	{r3, r4, r5, lr}
	ldr	r3, [r0, #72]
.LPIC2:
	add	r2, pc
	cmp	r3, r2
	beq	.L31
	pop	{r3, r4, r5, pc}
.L31:
	ldr	r4, [r0, #4]
	add	r5, r4, #28
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r4]
	cbz	r0, .L26
	bl	free(PLT)
.L26:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, lr}
	b	free(PLT)
.L33:
	.align	2
.L32:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_ctl_label_destroy, .-_libaroma_ctl_label_destroy
	.section	.text._libaroma_ctl_label_draw,"ax",%progbits
	.align	2
	.global	_libaroma_ctl_label_draw
	.thumb
	.thumb_func
	.type	_libaroma_ctl_label_draw, %function
_libaroma_ctl_label_draw:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #40
	ldr	r4, .L52
	ldr	r2, [r0, #72]
.LPIC3:
	add	r4, pc
	cmp	r2, r4
	beq	.L49
.L34:
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L49:
	ldr	r4, [r0, #4]
	mov	r5, r1
	ldrb	r3, [r4, #18]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L50
	bl	libaroma_control_erasebg(PLT)
.L38:
	ldrb	r6, [r4, #24]	@ zero_extendqisi2
	cmp	r6, #0
	bne	.L34
	add	r8, r4, #28
	mov	r0, r8
	bl	omp_set_nest_lock(PLT)
	ldrb	r7, [r4, #14]	@ zero_extendqisi2
	cmp	r7, #0
	beq	.L40
	ldrb	lr, [r4, #6]	@ zero_extendqisi2
	ldrb	ip, [r4, #7]	@ zero_extendqisi2
	ldr	r3, [r4, #8]
	ldrb	r7, [r4, #13]	@ zero_extendqisi2
	lsl	lr, lr, #4
	and	ip, ip, #15
	ldr	r0, [r4]
	uxtb	lr, lr
	ldrh	r1, [r4, #4]
	ldr	r2, [r5]
	orr	lr, lr, ip
	str	r7, [sp]
	orr	r3, lr, r3
	bl	libaroma_text(PLT)
	mov	r7, r0
	cmp	r0, #0
	beq	.L41
	bl	libaroma_text_height(PLT)
	ldrb	r2, [r4, #14]	@ zero_extendqisi2
	mov	r3, r0
	cmp	r2, #1
	beq	.L51
	ldr	r4, [r5, #4]
	mov	r2, r6
	mov	r0, r5
	mov	r1, r7
	str	r6, [sp]
	str	r6, [sp, #4]
	sub	r3, r4, r3, asr #1
	str	r6, [sp, #8]
	str	r6, [sp, #12]
	str	r6, [sp, #16]
.L48:
	str	r6, [sp, #20]
	str	r6, [sp, #24]
	str	r6, [sp, #28]
	str	r6, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	mov	r0, r7
	bl	libaroma_text_free(PLT)
	b	.L41
.L50:
	ldr	r6, [r1, #4]
	movs	r7, #255
	ldr	r3, [r1]
	movs	r1, #0
	mov	r2, r1
	mov	r0, r5
	str	r6, [sp]
	ldrh	r6, [r4, #16]
	str	r7, [sp, #8]
	str	r6, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	b	.L38
.L40:
	ldrh	r6, [r4, #4]
	mov	r0, r5
	ldr	r5, [r5]
	mov	r2, r7
	ldr	r1, [r4]
	ldr	r3, [r4, #20]
	str	r6, [sp]
	str	r5, [sp, #4]
	ldrb	r6, [r4, #6]	@ zero_extendqisi2
	ldrb	lr, [r4, #7]	@ zero_extendqisi2
	ldr	r5, [r4, #8]
	lsls	r6, r6, #4
	and	lr, lr, #15
	uxtb	r6, r6
	orr	r6, r6, lr
	orrs	r5, r5, r6
	str	r5, [sp, #8]
	ldrb	r4, [r4, #13]	@ zero_extendqisi2
	str	r7, [sp, #16]
	str	r7, [sp, #20]
	str	r4, [sp, #12]
	str	r7, [sp, #24]
	str	r7, [sp, #28]
	str	r7, [sp, #32]
	str	r7, [sp, #36]
	bl	libaroma_draw_text_ex(PLT)
.L41:
	mov	r0, r8
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	omp_unset_nest_lock(PLT)
.L51:
	ldr	lr, [r5, #4]
	asrs	r3, r0, #1
	ldr	r4, [r4, #20]
	mov	r2, r6
	str	r6, [sp]
	mov	r0, r5
	str	r6, [sp, #4]
	mov	r1, r7
	rsb	r3, r3, lr, asr #1
	str	r6, [sp, #8]
	str	r6, [sp, #12]
	str	r6, [sp, #16]
	add	r3, r3, r4
	b	.L48
.L53:
	.align	2
.L52:
	.word	.LANCHOR0-(.LPIC3+4)
	.size	_libaroma_ctl_label_draw, .-_libaroma_ctl_label_draw
	.section	.text.libaroma_ctl_label_hidden,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_hidden
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_hidden, %function
libaroma_ctl_label_hidden:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L60
	ldr	r3, [r0, #72]
.LPIC4:
	add	r2, pc
	cmp	r3, r2
	beq	.L59
	movs	r0, #0
	bx	lr
.L59:
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r4, [r0, #4]
	movs	r5, #1
	str	r1, [sp, #4]
	add	r6, r4, #28
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	mov	r0, r6
	strb	r5, [r4, #12]
	strb	r1, [r4, #24]
	bl	omp_unset_nest_lock(PLT)
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L61:
	.align	2
.L60:
	.word	.LANCHOR0-(.LPIC4+4)
	.size	libaroma_ctl_label_hidden, .-libaroma_ctl_label_hidden
	.section	.text.libaroma_ctl_label_get_text,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_get_text
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_get_text, %function
libaroma_ctl_label_get_text:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L65
	ldr	r3, [r0, #72]
.LPIC5:
	add	r2, pc
	cmp	r3, r2
	itte	eq
	ldreq	r3, [r0, #4]
	ldreq	r0, [r3]
	movne	r0, #0
	bx	lr
.L66:
	.align	2
.L65:
	.word	.LANCHOR0-(.LPIC5+4)
	.size	libaroma_ctl_label_get_text, .-libaroma_ctl_label_get_text
	.section	.text.libaroma_ctl_label_set_text,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_set_text
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_set_text, %function
libaroma_ctl_label_set_text:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r4, .L77
	ldr	r3, [r0, #72]
.LPIC6:
	add	r4, pc
	cmp	r3, r4
	it	ne
	movne	r0, #0
	beq	.L76
.L68:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L76:
	ldr	r4, [r0, #4]
	mov	r5, r2
	str	r1, [sp, #4]
	add	r6, r4, #28
	mov	r0, r6
	bl	omp_set_nest_lock(PLT)
	ldr	r0, [r4]
	ldr	r1, [sp, #4]
	cbz	r0, .L69
	bl	free(PLT)
	ldr	r1, [sp, #4]
.L69:
	mov	r0, r1
	bl	__strdup(PLT)
	str	r0, [r4]
	mov	r0, r6
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	cmp	r5, #0
	beq	.L68
	strb	r0, [r4, #12]
	b	.L68
.L78:
	.align	2
.L77:
	.word	.LANCHOR0-(.LPIC6+4)
	.size	libaroma_ctl_label_set_text, .-libaroma_ctl_label_set_text
	.section	.text.libaroma_ctl_label_set_color,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_set_color
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_set_color, %function
libaroma_ctl_label_set_color:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, .L88
	ldr	r3, [r0, #72]
.LPIC7:
	add	r4, pc
	cmp	r3, r4
	it	ne
	movne	r0, #0
	beq	.L87
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L87:
	ldr	r4, [r0, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r5, r4, #28
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	strh	r1, [r4, #4]	@ movhi
	cbz	r2, .L81
	movs	r3, #1
	strb	r3, [r4, #12]
.L81:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L89:
	.align	2
.L88:
	.word	.LANCHOR0-(.LPIC7+4)
	.size	libaroma_ctl_label_set_color, .-libaroma_ctl_label_set_color
	.section	.text.libaroma_ctl_label_set_size,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_set_size
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_set_size, %function
libaroma_ctl_label_set_size:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, .L99
	ldr	r3, [r0, #72]
.LPIC8:
	add	r4, pc
	cmp	r3, r4
	it	ne
	movne	r0, #0
	beq	.L98
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L98:
	ldr	r4, [r0, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r5, r4, #28
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	strb	r1, [r4, #6]
	ldr	r2, [sp]
	cbz	r2, .L92
	movs	r3, #1
	strb	r3, [r4, #12]
.L92:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L100:
	.align	2
.L99:
	.word	.LANCHOR0-(.LPIC8+4)
	.size	libaroma_ctl_label_set_size, .-libaroma_ctl_label_set_size
	.section	.text.libaroma_ctl_label_set_fontid,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_set_fontid
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_set_fontid, %function
libaroma_ctl_label_set_fontid:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, .L110
	ldr	r3, [r0, #72]
.LPIC9:
	add	r4, pc
	cmp	r3, r4
	it	ne
	movne	r0, #0
	beq	.L109
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L109:
	ldr	r4, [r0, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r5, r4, #28
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	strb	r1, [r4, #7]
	ldr	r2, [sp]
	cbz	r2, .L103
	movs	r3, #1
	strb	r3, [r4, #12]
.L103:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L111:
	.align	2
.L110:
	.word	.LANCHOR0-(.LPIC9+4)
	.size	libaroma_ctl_label_set_fontid, .-libaroma_ctl_label_set_fontid
	.section	.text.libaroma_ctl_label_set_flags,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_set_flags
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_set_flags, %function
libaroma_ctl_label_set_flags:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, .L121
	ldr	r3, [r0, #72]
.LPIC10:
	add	r4, pc
	cmp	r3, r4
	it	ne
	movne	r0, #0
	beq	.L120
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L120:
	ldr	r4, [r0, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r5, r4, #28
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	str	r1, [r4, #8]
	cbz	r2, .L114
	movs	r3, #1
	strb	r3, [r4, #12]
.L114:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L122:
	.align	2
.L121:
	.word	.LANCHOR0-(.LPIC10+4)
	.size	libaroma_ctl_label_set_flags, .-libaroma_ctl_label_set_flags
	.section	.text.libaroma_ctl_label_set_lineheight,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_set_lineheight
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_set_lineheight, %function
libaroma_ctl_label_set_lineheight:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, .L134
	ldr	r3, [r0, #72]
.LPIC11:
	add	r4, pc
	cmp	r3, r4
	it	ne
	movne	r0, #0
	beq	.L133
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L133:
	ldr	r4, [r0, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r5, r4, #28
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	ldr	r2, [sp]
	cbz	r1, .L125
	strb	r1, [r4, #13]
.L126:
	cbz	r2, .L127
	movs	r3, #1
	strb	r3, [r4, #12]
.L127:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L125:
	movs	r3, #100
	strb	r3, [r4, #13]
	b	.L126
.L135:
	.align	2
.L134:
	.word	.LANCHOR0-(.LPIC11+4)
	.size	libaroma_ctl_label_set_lineheight, .-libaroma_ctl_label_set_lineheight
	.section	.text.libaroma_ctl_label_set_valign,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_set_valign
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_set_valign, %function
libaroma_ctl_label_set_valign:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, .L145
	ldr	r3, [r0, #72]
.LPIC12:
	add	r4, pc
	cmp	r3, r4
	it	ne
	movne	r0, #0
	beq	.L144
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L144:
	ldr	r4, [r0, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r5, r4, #28
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r1, [sp, #4]
	strb	r1, [r4, #14]
	ldr	r2, [sp]
	cbz	r2, .L138
	movs	r3, #1
	strb	r3, [r4, #12]
.L138:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L146:
	.align	2
.L145:
	.word	.LANCHOR0-(.LPIC12+4)
	.size	libaroma_ctl_label_set_valign, .-libaroma_ctl_label_set_valign
	.section	.text.libaroma_ctl_label_set_vpos,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_set_vpos
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_set_vpos, %function
libaroma_ctl_label_set_vpos:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #12
	ldr	r4, .L156
	ldr	r3, [r0, #72]
.LPIC13:
	add	r4, pc
	cmp	r3, r4
	it	ne
	movne	r0, #0
	beq	.L155
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L155:
	ldr	r4, [r0, #4]
	str	r1, [sp, #4]
	str	r2, [sp]
	add	r5, r4, #28
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r2, [sp]
	ldr	r1, [sp, #4]
	str	r1, [r4, #20]
	cbz	r2, .L149
	movs	r3, #1
	strb	r3, [r4, #12]
.L149:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L157:
	.align	2
.L156:
	.word	.LANCHOR0-(.LPIC13+4)
	.size	libaroma_ctl_label_set_vpos, .-libaroma_ctl_label_set_vpos
	.section	.text.libaroma_ctl_label_set_bgcolor,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_set_bgcolor
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_set_bgcolor, %function
libaroma_ctl_label_set_bgcolor:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #20
	ldr	r5, .L167
	ldr	r4, [r0, #72]
.LPIC14:
	add	r5, pc
	cmp	r4, r5
	it	ne
	movne	r0, #0
	beq	.L166
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L166:
	ldr	r4, [r0, #4]
	str	r1, [sp, #12]
	str	r2, [sp, #8]
	add	r5, r4, #28
	str	r3, [sp, #4]
	mov	r0, r5
	bl	omp_set_nest_lock(PLT)
	ldr	r2, [sp, #8]
	ldr	r1, [sp, #12]
	strb	r2, [r4, #18]
	ldr	r3, [sp, #4]
	strh	r1, [r4, #16]	@ movhi
	cbz	r3, .L160
	movs	r3, #1
	strb	r3, [r4, #12]
.L160:
	mov	r0, r5
	bl	omp_unset_nest_lock(PLT)
	movs	r0, #1
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L168:
	.align	2
.L167:
	.word	.LANCHOR0-(.LPIC14+4)
	.size	libaroma_ctl_label_set_bgcolor, .-libaroma_ctl_label_set_bgcolor
	.section	.text.libaroma_ctl_label_height,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_height
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_height, %function
libaroma_ctl_label_height:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	lsls	r3, r3, #4
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	uxtb	r3, r3
	and	r6, r2, #15
	ldr	r4, [sp, #24]
	mov	r2, r1
	ldrb	r5, [sp, #28]	@ zero_extendqisi2
	orrs	r3, r3, r6
	movs	r1, #0
	orrs	r3, r3, r4
	str	r5, [sp]
	bl	libaroma_text(PLT)
	mov	r4, r0
	cbz	r0, .L171
	bl	libaroma_text_height(PLT)
	mov	r5, r0
	mov	r0, r4
	bl	libaroma_text_free(PLT)
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L171:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	libaroma_ctl_label_height, .-libaroma_ctl_label_height
	.section	.text.libaroma_ctl_label_valign,"ax",%progbits
	.align	2
	.global	libaroma_ctl_label_valign
	.thumb
	.thumb_func
	.type	libaroma_ctl_label_valign, %function
libaroma_ctl_label_valign:
	@ args = 36, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #36
	str	r0, [sp, #28]
	mov	r7, r1
	movs	r0, #40
	movs	r1, #1
	str	r2, [sp, #24]
	mov	r8, r3
	ldrh	fp, [sp, #84]
	ldrb	r9, [sp, #88]	@ zero_extendqisi2
	ldrb	r10, [sp, #92]	@ zero_extendqisi2
	ldrb	r5, [sp, #100]	@ zero_extendqisi2
	ldrb	r4, [sp, #104]	@ zero_extendqisi2
	bl	calloc(PLT)
	ldr	r2, [sp, #24]
	mov	r6, r0
	cmp	r0, #0
	beq	.L174
	mov	r0, r2
	bl	__strdup(PLT)
	str	r0, [r6]
	cmp	r4, #9
	ldr	r0, [sp, #96]
	mov	r3, #0
	strh	fp, [r6, #4]	@ movhi
	strb	r10, [r6, #6]
	strb	r9, [r6, #7]
	str	r0, [r6, #8]
	strb	r5, [r6, #13]
	strh	r3, [r6, #16]	@ movhi
	strb	r3, [r6, #18]
	it	ls
	strls	r3, [r6, #20]
	bhi	.L185
.L176:
	strb	r4, [r6, #14]
	cbz	r5, .L186
.L177:
	movs	r3, #1
	add	r4, r6, #28
	strb	r3, [r6, #12]
	mov	r0, r4
	bl	omp_init_nest_lock(PLT)
	movs	r0, #10
	ldr	r5, .L188
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #10
	bl	libaroma_dp(PLT)
	str	r0, [sp, #8]
.LPIC15:
	add	r5, pc
	ldr	r0, [sp, #80]
	mov	r1, r8
	str	r9, [sp, #4]
	ldr	r2, [sp, #72]
	str	r0, [sp]
	mov	r0, r7
	ldr	r7, [sp, #28]
	ldr	r3, [sp, #76]
	str	r6, [sp, #12]
	str	r7, [sp, #20]
	str	r5, [sp, #16]
	bl	libaroma_control_new(PLT)
	cbz	r0, .L187
.L174:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L186:
	movs	r3, #100
	strb	r3, [r6, #13]
	b	.L177
.L185:
	movs	r0, #2
	subs	r4, r4, #10
	bl	libaroma_dp(PLT)
	negs	r0, r0
	uxtb	r4, r4
	ldrb	r5, [r6, #13]	@ zero_extendqisi2
	str	r0, [r6, #20]
	b	.L176
.L187:
	ldr	r0, [r6]
	cbz	r0, .L178
	bl	free(PLT)
.L178:
	mov	r0, r4
	bl	omp_destroy_nest_lock(PLT)
	mov	r0, r6
	bl	free(PLT)
	movs	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L189:
	.align	2
.L188:
	.word	.LANCHOR0-(.LPIC15+4)
	.size	libaroma_ctl_label_valign, .-libaroma_ctl_label_valign
	.section	.data.rel._libaroma_ctl_label_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_ctl_label_handler, %object
	.size	_libaroma_ctl_label_handler, 20
_libaroma_ctl_label_handler:
	.word	_libaroma_ctl_label_msg
	.word	_libaroma_ctl_label_draw
	.word	0
	.word	_libaroma_ctl_label_destroy
	.word	_libaroma_ctl_label_thread
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
