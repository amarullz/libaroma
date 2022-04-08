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
	.file	"messages.c"
	.section	.text.libaroma_msg_init,"ax",%progbits
	.align	2
	.global	libaroma_msg_init
	.thumb
	.thumb_func
	.type	libaroma_msg_init, %function
libaroma_msg_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r5, .L6
.LPIC0:
	add	r5, pc
	ldr	r4, [r5]
	cbz	r4, .L2
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L6+4
	mov	r2, r0
	mov	r0, r4
.LPIC1:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L6+8
	movs	r1, #1
	movs	r2, #36
.LPIC2:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L6+12
	ldr	r2, .L6+16
.LPIC3:
	add	r1, pc
.LPIC4:
	add	r2, pc
	bl	fprintf(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L2:
	ldr	r0, .L6+20
	movs	r6, #1
	ldr	r1, .L6+24
.LPIC5:
	add	r0, pc
.LPIC6:
	add	r1, pc
	bl	libaroma_cond_init(PLT)
	mov	r1, r6
	movs	r0, #12
	bl	calloc(PLT)
	mov	r7, r0
	mov	r0, r4
	str	r7, [r5]
	bl	libaroma_stack(PLT)
	str	r0, [r7, #4]
	mov	r0, r4
	ldr	r7, [r5]
	bl	libaroma_stack(PLT)
	mov	r1, r4
	ldr	r5, [r5]
	ldr	r4, .L6+28
	mov	r3, r1
	ldr	r2, .L6+32
	str	r0, [r7]
	add	r0, r5, #8
.LPIC9:
	add	r4, pc
.LPIC11:
	add	r2, pc
	strb	r6, [r4]
	bl	pthread_create(PLT)
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L7:
	.align	2
.L6:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	.LC2-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LANCHOR1-(.LPIC5+4)
	.word	.LANCHOR2-(.LPIC6+4)
	.word	.LANCHOR3-(.LPIC9+4)
	.word	_libaroma_msgqueue_hid_thread-(.LPIC11+4)
	.size	libaroma_msg_init, .-libaroma_msg_init
	.section	.text.libaroma_msg_clean_hid,"ax",%progbits
	.align	2
	.global	libaroma_msg_clean_hid
	.thumb
	.thumb_func
	.type	libaroma_msg_clean_hid, %function
libaroma_msg_clean_hid:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L12
.LPIC12:
	add	r4, pc
	ldr	r3, [r4]
	cbz	r3, .L11
	ldr	r5, .L12+4
.LPIC17:
	add	r5, pc
	mov	r0, r5
	bl	pthread_mutex_lock(PLT)
	ldr	r3, [r4]
	ldr	r0, [r3]
	bl	libaroma_stack_free(PLT)
	ldr	r4, [r4]
	movs	r0, #0
	bl	libaroma_stack(PLT)
	str	r0, [r4]
	mov	r0, r5
	pop	{r3, r4, r5, lr}
	b	pthread_mutex_unlock(PLT)
.L11:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L12+8
	mov	r2, r0
	mov	r0, r4
.LPIC13:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L12+12
	movs	r1, #1
	movs	r2, #30
.LPIC14:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L12+16
	ldr	r2, .L12+20
	pop	{r3, r4, r5, lr}
.LPIC15:
	add	r1, pc
.LPIC16:
	add	r2, pc
	b	fprintf(PLT)
.L13:
	.align	2
.L12:
	.word	.LANCHOR0-(.LPIC12+4)
	.word	.LANCHOR2-(.LPIC17+4)
	.word	.LC0-(.LPIC13+4)
	.word	.LC4-(.LPIC14+4)
	.word	.LC2-(.LPIC15+4)
	.word	.LC3-(.LPIC16+4)
	.size	libaroma_msg_clean_hid, .-libaroma_msg_clean_hid
	.section	.text.libaroma_msg_clean_queue,"ax",%progbits
	.align	2
	.global	libaroma_msg_clean_queue
	.thumb
	.thumb_func
	.type	libaroma_msg_clean_queue, %function
libaroma_msg_clean_queue:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L18
.LPIC21:
	add	r4, pc
	ldr	r3, [r4]
	cbz	r3, .L17
	ldr	r5, .L18+4
.LPIC26:
	add	r5, pc
	mov	r0, r5
	bl	pthread_mutex_lock(PLT)
	ldr	r3, [r4]
	ldr	r0, [r3, #4]
	bl	libaroma_stack_free(PLT)
	ldr	r4, [r4]
	movs	r0, #0
	bl	libaroma_stack(PLT)
	str	r0, [r4, #4]
	mov	r0, r5
	pop	{r3, r4, r5, lr}
	b	pthread_mutex_unlock(PLT)
.L17:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L18+8
	mov	r2, r0
	mov	r0, r4
.LPIC22:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L18+12
	movs	r1, #1
	movs	r2, #30
.LPIC23:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L18+16
	ldr	r2, .L18+20
	pop	{r3, r4, r5, lr}
.LPIC24:
	add	r1, pc
.LPIC25:
	add	r2, pc
	b	fprintf(PLT)
.L19:
	.align	2
.L18:
	.word	.LANCHOR0-(.LPIC21+4)
	.word	.LANCHOR2-(.LPIC26+4)
	.word	.LC0-(.LPIC22+4)
	.word	.LC4-(.LPIC23+4)
	.word	.LC2-(.LPIC24+4)
	.word	.LC3-(.LPIC25+4)
	.size	libaroma_msg_clean_queue, .-libaroma_msg_clean_queue
	.section	.text.libaroma_msg_start,"ax",%progbits
	.align	2
	.global	libaroma_msg_start
	.thumb
	.thumb_func
	.type	libaroma_msg_start, %function
libaroma_msg_start:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L24
.LPIC30:
	add	r4, pc
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L23
	pop	{r4, pc}
.L23:
	bl	libaroma_msg_clean_hid(PLT)
	bl	libaroma_msg_clean_queue(PLT)
	movs	r3, #2
	strb	r3, [r4]
	pop	{r4, pc}
.L25:
	.align	2
.L24:
	.word	.LANCHOR3-(.LPIC30+4)
	.size	libaroma_msg_start, .-libaroma_msg_start
	.section	.text.libaroma_msg_stop,"ax",%progbits
	.align	2
	.global	libaroma_msg_stop
	.thumb
	.thumb_func
	.type	libaroma_msg_stop, %function
libaroma_msg_stop:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	ldr	r3, .L30
.LPIC32:
	add	r3, pc
	ldrb	r2, [r3]	@ zero_extendqisi2
	cmp	r2, #2
	beq	.L29
	pop	{r3, pc}
.L29:
	movs	r2, #1
	strb	r2, [r3]
	bl	libaroma_msg_clean_hid(PLT)
	pop	{r3, lr}
	b	libaroma_msg_clean_queue(PLT)
.L31:
	.align	2
.L30:
	.word	.LANCHOR3-(.LPIC32+4)
	.size	libaroma_msg_stop, .-libaroma_msg_stop
	.section	.text.libaroma_msg_release,"ax",%progbits
	.align	2
	.global	libaroma_msg_release
	.thumb
	.thumb_func
	.type	libaroma_msg_release, %function
libaroma_msg_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	ldr	r4, .L36
.LPIC34:
	add	r4, pc
	ldr	r3, [r4]
	cbz	r3, .L35
	ldr	r6, .L36+4
	movs	r5, #0
	ldr	r3, .L36+8
	ldr	r7, .L36+12
.LPIC40:
	add	r6, pc
.LPIC39:
	add	r3, pc
	mov	r0, r6
.LPIC41:
	add	r7, pc
	strb	r5, [r3]
	bl	pthread_mutex_lock(PLT)
	mov	r0, r7
	bl	pthread_cond_signal(PLT)
	mov	r0, r6
	bl	pthread_mutex_unlock(PLT)
	ldr	r8, [r4]
	mov	r1, r5
	ldr	r0, [r8, #8]
	bl	pthread_kill(PLT)
	ldr	r0, [r8]
	bl	libaroma_stack_free(PLT)
	ldr	r3, [r4]
	ldr	r0, [r3, #4]
	bl	libaroma_stack_free(PLT)
	ldr	r0, [r4]
	bl	free(PLT)
	mov	r0, r7
	mov	r1, r6
	str	r5, [r4]
	pop	{r4, r5, r6, r7, r8, lr}
	b	libaroma_cond_free(PLT)
.L35:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L36+16
	mov	r2, r0
	mov	r0, r4
.LPIC35:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L36+20
	movs	r1, #1
	movs	r2, #30
.LPIC36:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L36+24
	ldr	r2, .L36+28
	pop	{r4, r5, r6, r7, r8, lr}
.LPIC37:
	add	r1, pc
.LPIC38:
	add	r2, pc
	b	fprintf(PLT)
.L37:
	.align	2
.L36:
	.word	.LANCHOR0-(.LPIC34+4)
	.word	.LANCHOR2-(.LPIC40+4)
	.word	.LANCHOR3-(.LPIC39+4)
	.word	.LANCHOR1-(.LPIC41+4)
	.word	.LC0-(.LPIC35+4)
	.word	.LC4-(.LPIC36+4)
	.word	.LC2-(.LPIC37+4)
	.word	.LC3-(.LPIC38+4)
	.size	libaroma_msg_release, .-libaroma_msg_release
	.section	.text.libaroma_msg_runstate,"ax",%progbits
	.align	2
	.global	libaroma_msg_runstate
	.thumb
	.thumb_func
	.type	libaroma_msg_runstate, %function
libaroma_msg_runstate:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L39
.LPIC49:
	add	r3, pc
	ldrb	r0, [r3]	@ zero_extendqisi2
	bx	lr
.L40:
	.align	2
.L39:
	.word	.LANCHOR3-(.LPIC49+4)
	.size	libaroma_msg_runstate, .-libaroma_msg_runstate
	.section	.text.libaroma_msg_post,"ax",%progbits
	.align	2
	.global	libaroma_msg_post
	.thumb
	.thumb_func
	.type	libaroma_msg_post, %function
libaroma_msg_post:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #32
	ldr	r4, .L53
.LPIC50:
	add	r4, pc
	ldrb	r4, [r4]	@ zero_extendqisi2
	cmp	r4, #2
	it	ne
	movne	r0, #0
	beq	.L51
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, pc}
.L51:
	str	r3, [sp, #16]
	mov	r6, r0
	ldr	r3, [sp, #48]
	mov	r5, r1
	ldr	r4, [sp, #52]
	movs	r0, #1
	mov	r1, sp
	strb	r6, [sp, #8]
	str	r3, [sp, #20]
	strb	r5, [sp, #9]
	str	r2, [sp, #12]
	str	r4, [sp, #24]
	bl	clock_gettime(PLT)
	movs	r3, #0
	cbnz	r0, .L43
	ldr	r2, [sp, #4]
	movw	r1, #56963
	movt	r1, 17179
	ldr	r0, [sp]
	mov	r3, #1000
	smull	r4, r1, r1, r2
	asrs	r2, r2, #31
	rsb	r2, r2, r1, asr #18
	mla	r3, r3, r0, r2
.L43:
	ldr	r0, .L53+4
	str	r3, [sp, #28]
.LPIC51:
	add	r0, pc
	bl	pthread_mutex_lock(PLT)
	ldr	r3, .L53+8
	add	r1, sp, #8
	movs	r2, #24
.LPIC52:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r0, [r3, #4]
	bl	libaroma_stack_push(PLT)
	mov	r4, r0
	cbnz	r0, .L52
.L44:
	ldr	r0, .L53+12
.LPIC54:
	add	r0, pc
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, pc}
.L52:
	ldr	r0, .L53+16
.LPIC53:
	add	r0, pc
	bl	pthread_cond_signal(PLT)
	b	.L44
.L54:
	.align	2
.L53:
	.word	.LANCHOR3-(.LPIC50+4)
	.word	.LANCHOR2-(.LPIC51+4)
	.word	.LANCHOR0-(.LPIC52+4)
	.word	.LANCHOR2-(.LPIC54+4)
	.word	.LANCHOR1-(.LPIC53+4)
	.size	libaroma_msg_post, .-libaroma_msg_post
	.section	.text.libaroma_msg_post_hid,"ax",%progbits
	.align	2
	.global	libaroma_msg_post_hid
	.thumb
	.thumb_func
	.type	libaroma_msg_post_hid, %function
libaroma_msg_post_hid:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #32
	ldr	r4, .L67
.LPIC55:
	add	r4, pc
	ldrb	r4, [r4]	@ zero_extendqisi2
	cmp	r4, #2
	it	ne
	movne	r0, #0
	beq	.L65
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, pc}
.L65:
	str	r3, [sp, #16]
	mov	r6, r0
	ldr	r3, [sp, #48]
	mov	r5, r1
	movs	r4, #0
	movs	r0, #1
	mov	r1, sp
	strb	r6, [sp, #8]
	strb	r5, [sp, #9]
	str	r2, [sp, #12]
	str	r3, [sp, #20]
	str	r4, [sp, #24]
	bl	clock_gettime(PLT)
	cbnz	r0, .L57
	ldr	r3, [sp, #4]
	movw	r2, #56963
	movt	r2, 17179
	ldr	r1, [sp]
	mov	r4, #1000
	smull	r0, r2, r2, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r2, asr #18
	mla	r4, r4, r1, r3
.L57:
	ldr	r0, .L67+4
	str	r4, [sp, #28]
.LPIC56:
	add	r0, pc
	bl	pthread_mutex_lock(PLT)
	ldr	r3, .L67+8
	add	r1, sp, #8
	movs	r2, #24
.LPIC57:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r0, [r3]
	bl	libaroma_stack_push(PLT)
	mov	r4, r0
	cbnz	r0, .L66
.L58:
	ldr	r0, .L67+12
.LPIC59:
	add	r0, pc
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r4
	add	sp, sp, #32
	@ sp needed
	pop	{r4, r5, r6, pc}
.L66:
	ldr	r0, .L67+16
.LPIC58:
	add	r0, pc
	bl	pthread_cond_signal(PLT)
	b	.L58
.L68:
	.align	2
.L67:
	.word	.LANCHOR3-(.LPIC55+4)
	.word	.LANCHOR2-(.LPIC56+4)
	.word	.LANCHOR0-(.LPIC57+4)
	.word	.LANCHOR2-(.LPIC59+4)
	.word	.LANCHOR1-(.LPIC58+4)
	.size	libaroma_msg_post_hid, .-libaroma_msg_post_hid
	.section	.text._libaroma_msgqueue_hid_thread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_libaroma_msgqueue_hid_thread, %function
_libaroma_msgqueue_hid_thread:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #36
	ldr	r4, .L87
.LPIC60:
	add	r4, pc
	ldrb	r3, [r4]	@ zero_extendqisi2
	cbz	r3, .L82
	add	r5, sp, #8
	movs	r6, #0
.L77:
	mov	r0, r5
	bl	libaroma_hid_get(PLT)
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L86
	cmp	r3, #0
	bne	.L77
.L82:
	movs	r0, #0
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L86:
	ldrb	r3, [sp, #8]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L73
	cmp	r3, #204
	beq	.L74
	cmp	r3, #1
	bne	.L77
	orr	r0, r0, #64
	ldrb	r1, [sp, #16]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	uxtb	r0, r0
.L85:
	ldr	r7, [sp, #24]
	ldr	r3, [sp, #20]
	str	r7, [sp]
	bl	libaroma_msg_post_hid(PLT)
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L77
	b	.L82
.L74:
	movs	r1, #0
	str	r6, [sp]
	mov	r3, r1
	mov	r2, r1
	movs	r0, #1
	bl	libaroma_msg_post_hid(PLT)
	ldrb	r3, [r4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L77
	b	.L82
.L73:
	ldrb	r1, [sp, #16]	@ zero_extendqisi2
	movs	r0, #6
	ldr	r2, [sp, #12]
	b	.L85
.L88:
	.align	2
.L87:
	.word	.LANCHOR3-(.LPIC60+4)
	.size	_libaroma_msgqueue_hid_thread, .-_libaroma_msgqueue_hid_thread
	.section	.text.libaroma_msg,"ax",%progbits
	.align	2
	.global	libaroma_msg
	.thumb
	.thumb_func
	.type	libaroma_msg, %function
libaroma_msg:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r8, r0
	ldr	r0, .L99
	ldr	r9, .L99+4
	ldr	r6, .L99+8
.LPIC65:
	add	r0, pc
	ldr	r5, .L99+12
	ldr	r7, .L99+16
.LPIC70:
	add	r9, pc
	bl	pthread_mutex_lock(PLT)
.LPIC66:
	add	r6, pc
.LPIC67:
	add	r5, pc
.LPIC68:
	add	r7, pc
	b	.L90
.L93:
	bl	pthread_cond_wait(PLT)
	ldrb	r4, [r7]	@ zero_extendqisi2
	cbz	r4, .L98
.L90:
	ldr	r3, [r9]
	mov	r0, r6
	mov	r1, r5
	ldr	r2, [r3, #4]
	ldr	r3, [r3]
	ldr	lr, [r2]
	ldr	r4, [r3]
	add	r4, r4, lr
	cmp	r4, #0
	ble	.L93
	cmp	lr, #0
	ite	gt
	movgt	r0, r2
	movle	r0, r3
	bl	libaroma_stack_shift(PLT)
	mov	r4, r0
	cbz	r0, .L95
	ldr	r2, [r0]	@ unaligned
	ldr	r3, [r0, #4]	@ unaligned
	ldr	r5, [r0, #8]	@ unaligned
	ldr	r1, [r0, #12]	@ unaligned
	str	r2, [r8]	@ unaligned
	str	r3, [r8, #4]	@ unaligned
	str	r5, [r8, #8]	@ unaligned
	str	r1, [r8, #12]	@ unaligned
	ldr	r2, [r0, #16]	@ unaligned
	ldr	r3, [r0, #20]	@ unaligned
	str	r2, [r8, #16]	@ unaligned
	str	r3, [r8, #20]	@ unaligned
	ldrb	r4, [r0]	@ zero_extendqisi2
	bl	free(PLT)
.L95:
	ldr	r0, .L99+20
.LPIC71:
	add	r0, pc
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L98:
	mov	r0, r5
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L100:
	.align	2
.L99:
	.word	.LANCHOR2-(.LPIC65+4)
	.word	.LANCHOR0-(.LPIC70+4)
	.word	.LANCHOR1-(.LPIC66+4)
	.word	.LANCHOR2-(.LPIC67+4)
	.word	.LANCHOR3-(.LPIC68+4)
	.word	.LANCHOR2-(.LPIC71+4)
	.size	libaroma_msg, .-libaroma_msg
	.section	.bss._libaroma_msgqueue_isrun,"aw",%nobits
.LANCHOR3 = . + 0
	.type	_libaroma_msgqueue_isrun, %object
	.size	_libaroma_msgqueue_isrun, 1
_libaroma_msgqueue_isrun:
	.space	1
	.section	.bss._libaroma_msgqueue,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_msgqueue, %object
	.size	_libaroma_msgqueue, 4
_libaroma_msgqueue:
	.space	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"E/%s: \000"
	.space	1
.LC1:
	.ascii	"message instance already initialized\000"
	.space	3
.LC2:
	.ascii	"%s\012\000"
.LC3:
	.ascii	"\000"
	.space	3
.LC4:
	.ascii	"message instance uninitialized\000"
	.section	.bss._libaroma_msgqueue_mutex,"aw",%nobits
	.align	2
.LANCHOR2 = . + 0
	.type	_libaroma_msgqueue_mutex, %object
	.size	_libaroma_msgqueue_mutex, 24
_libaroma_msgqueue_mutex:
	.space	24
	.section	.bss._libaroma_msgqueue_cond,"aw",%nobits
	.align	3
.LANCHOR1 = . + 0
	.type	_libaroma_msgqueue_cond, %object
	.size	_libaroma_msgqueue_cond, 48
_libaroma_msgqueue_cond:
	.space	48
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
