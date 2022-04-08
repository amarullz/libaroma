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
	.file	"aromart_sysui.c"
	.section	.text._lart_sysui_killpid_thread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_lart_sysui_killpid_thread, %function
_lart_sysui_killpid_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	movs	r4, #39
	ldr	r5, [r0]
	bl	free(PLT)
	b	.L4
.L9:
	movw	r0, #34464
	movt	r0, 1
	bl	usleep(PLT)
	subs	r4, r4, #1
	beq	.L8
.L4:
	mov	r0, r5
	movs	r1, #0
	bl	kill(PLT)
	cmp	r0, #0
	beq	.L9
.L2:
	ldr	r3, .L10
	movs	r0, #0
.LPIC0:
	add	r3, pc
	ldr	r2, [r3]
	subs	r2, r2, #1
	str	r2, [r3]
	pop	{r3, r4, r5, pc}
.L8:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L10+4
	mov	r2, r0
	mov	r0, r4
.LPIC2:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L10+8
	mov	r2, r5
	movs	r3, #40
.LPIC3:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	mov	r0, r5
	movs	r1, #9
	bl	kill(PLT)
	b	.L2
.L11:
	.align	2
.L10:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LC0-(.LPIC2+4)
	.word	.LC1-(.LPIC3+4)
	.size	_lart_sysui_killpid_thread, .-_lart_sysui_killpid_thread
	.section	.text._lart_sysui_msg_handler,"ax",%progbits
	.align	2
	.global	_lart_sysui_msg_handler
	.thumb
	.thumb_func
	.type	_lart_sysui_msg_handler, %function
_lart_sysui_msg_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L32
	push	{r4, r5, r6, r7, lr}
	mov	r5, r1
	ldr	r6, .L32+4
	sub	sp, sp, #12
.LPIC4:
	add	r3, pc
	ldr	r3, [r3]
.LPIC6:
	add	r6, pc
	cbz	r3, .L17
	mov	r0, r1
	blx	r3
	cmp	r0, #1
	mov	r4, r0
	beq	.L16
.L17:
	ldrb	r4, [r5]	@ zero_extendqisi2
	cmp	r4, #6
	beq	.L30
	cmp	r4, #65
	beq	.L31
.L21:
	movs	r4, #0
.L16:
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L31:
	ldrb	r4, [r5, #1]	@ zero_extendqisi2
	cmp	r4, #0
	bne	.L21
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L32+8
	mov	r2, r0
	mov	r0, r5
.LPIC10:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L32+12
	movs	r1, #1
	movs	r2, #16
.LPIC11:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, .L32+16
.LPIC12:
	add	r3, pc
	ldr	r3, [r3]
	strb	r4, [r3, #16]
	b	.L16
.L30:
	ldr	r7, .L32+20
	ldr	r2, [r5, #12]
.LPIC5:
	add	r7, pc
	ldr	r3, [r7]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	ble	.L18
	ldr	r1, .L32+24
	subs	r3, r2, r3
	str	r3, [r5, #12]
	ldr	r6, [r6, r1]
	mov	r0, r6
	bl	pthread_mutex_lock(PLT)
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cbz	r3, .L19
	movs	r1, #24
	ldr	r0, [r3, #16]
	mov	r2, r4
	str	r1, [sp]
	mov	r3, r5
	movs	r1, #2
	bl	lart_send(PLT)
.L19:
	mov	r0, r6
	movs	r4, #1
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r4
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L18:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L32+28
	mov	r2, r0
	mov	r0, r4
	movs	r4, #0
.LPIC8:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldrb	r2, [r5, #1]	@ zero_extendqisi2
	ldr	r3, [r5, #8]
	ldr	r1, .L32+32
	ldr	r5, [r5, #12]
.LPIC9:
	add	r1, pc
	str	r5, [sp]
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	b	.L16
.L33:
	.align	2
.L32:
	.word	.LANCHOR1-(.LPIC4+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC6+4)
	.word	.LC0-(.LPIC10+4)
	.word	.LC3-(.LPIC11+4)
	.word	.LANCHOR2-(.LPIC12+4)
	.word	.LANCHOR2-(.LPIC5+4)
	.word	_lart_sysui_mutex(GOT)
	.word	.LC0-(.LPIC8+4)
	.word	.LC2-(.LPIC9+4)
	.size	_lart_sysui_msg_handler, .-_lart_sysui_msg_handler
	.section	.text._lart_sysui_stream_uri_cb,"ax",%progbits
	.align	2
	.global	_lart_sysui_stream_uri_cb
	.thumb
	.thumb_func
	.type	_lart_sysui_stream_uri_cb, %function
_lart_sysui_stream_uri_cb:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	mov	r8, r0
	add	r5, sp, #4
	mov	r4, r8
	bl	strlen(PLT)
	movs	r2, #0
	mov	r7, r2
.L35:
	cmp	r2, #9
	it	le
	cmple	r2, r0
	bge	.L40
	ldrb	r1, [r4], #1	@ zero_extendqisi2
	strb	r1, [r5, r2]
	adds	r2, r2, #1
	subs	r6, r2, #1
	strb	r7, [r5, r2]
	cmp	r6, #1
	ble	.L35
	cmp	r1, #47
	bne	.L35
	ldrb	r3, [r4, #-2]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L35
.L40:
	ldr	r1, .L44
	mov	r0, r5
.LPIC21:
	add	r1, pc
	bl	strcmp(PLT)
	cbnz	r0, .L43
	ldr	r3, .L44+4
	add	r1, r8, #7
.LPIC22:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r0, [r3, #24]
	bl	libaroma_stream_mzip(PLT)
	mov	r4, r0
	cbz	r0, .L38
	ldr	r2, .L44+8
	mov	r3, r8
	adds	r0, r0, #9
	movs	r1, #255
.LPIC23:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r0, r4
.L38:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L43:
	movs	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L45:
	.align	2
.L44:
	.word	.LC4-(.LPIC21+4)
	.word	.LANCHOR2-(.LPIC22+4)
	.word	.LC5-(.LPIC23+4)
	.size	_lart_sysui_stream_uri_cb, .-_lart_sysui_stream_uri_cb
	.section	.text.lart_sysui_print_running_apps,"ax",%progbits
	.align	2
	.global	lart_sysui_print_running_apps
	.thumb
	.thumb_func
	.type	lart_sysui_print_running_apps, %function
lart_sysui_print_running_apps:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	lart_sysui_print_running_apps, .-lart_sysui_print_running_apps
	.section	.text._lart_sysui_killpid,"ax",%progbits
	.align	2
	.global	_lart_sysui_killpid
	.thumb
	.thumb_func
	.type	_lart_sysui_killpid, %function
_lart_sysui_killpid:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L49
	movs	r1, #1
	push	{r4, r5, lr}
	mov	r5, r0
	sub	sp, sp, #12
	movs	r0, #4
.LPIC24:
	add	r3, pc
	ldr	r2, [r3]
	add	r2, r2, r1
	str	r2, [r3]
	bl	calloc(PLT)
	ldr	r2, .L49+4
	mov	r4, r0
	mov	r3, r4
	movs	r1, #0
	add	r0, sp, #4
	str	r5, [r4]
.LPIC26:
	add	r2, pc
	bl	pthread_create(PLT)
	ldr	r0, [sp, #4]
	bl	pthread_detach(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L50:
	.align	2
.L49:
	.word	.LANCHOR0-(.LPIC24+4)
	.word	_lart_sysui_killpid_thread-(.LPIC26+4)
	.size	_lart_sysui_killpid, .-_lart_sysui_killpid
	.section	.text._lart_sysui_makefifo,"ax",%progbits
	.align	2
	.global	_lart_sysui_makefifo
	.thumb
	.thumb_func
	.type	_lart_sysui_makefifo, %function
_lart_sysui_makefifo:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	bl	unlink(PLT)
	mov	r0, r4
	mov	r1, #438
	bl	mkfifo(PLT)
	cbnz	r0, .L53
	mov	r0, r4
	movs	r1, #2
	bl	open(PLT)
	subs	r5, r0, #0
	blt	.L55
.L52:
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.L55:
	mov	r0, r4
	bl	unlink(PLT)
	mov	r0, r5
	pop	{r3, r4, r5, pc}
.L53:
	mov	r5, #-1
	b	.L52
	.size	_lart_sysui_makefifo, .-_lart_sysui_makefifo
	.section	.text.lart_sysui_app_free,"ax",%progbits
	.align	2
	.global	lart_sysui_app_free
	.thumb
	.thumb_func
	.type	lart_sysui_app_free, %function
lart_sysui_app_free:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	sub	sp, sp, #268
	cmp	r4, #0
	beq	.L57
	movs	r5, #0
	ldr	r0, [r4, #16]
	mov	r3, r5
	str	r5, [sp]
	mov	r2, r5
	movs	r1, #204
	bl	lart_send(PLT)
	ldr	r3, .L80
.LPIC27:
	add	r3, pc
	ldr	r6, [r3]
	ldr	r7, [r6, #4]
	cmp	r7, #1
	beq	.L78
	add	r9, r7, #-1
	movs	r0, #4
	mov	r1, r9
	bl	calloc(PLT)
	cmp	r7, #0
	mov	r8, r0
	it	gt
	movgt	r3, r5
	ldr	r0, [r6]
	it	gt
	movgt	r5, r3
	ble	.L61
.L63:
	ldr	r2, [r0, r3, lsl #2]
	adds	r3, r3, #1
	cmp	r2, r4
	ittt	ne
	strne	r2, [r8, r5, lsl #2]
	addne	r5, r5, #1
	ldrne	r0, [r6]
	cmp	r3, r7
	bne	.L63
.L61:
	str	r9, [r6, #4]
	bl	free(PLT)
	str	r8, [r6]
	b	.L59
.L78:
	ldr	r0, [r6]
	ldr	r3, [r0]
	cmp	r3, r4
	beq	.L79
.L59:
	mov	r0, #3392
	movt	r0, 3
	bl	usleep(PLT)
	ldr	r0, [r4, #8]
	ldr	r5, [r4]
	cmp	r0, #0
	ble	.L64
	bl	close(PLT)
	ldr	r2, .L80+4
	mov	r3, #-1
	add	r6, sp, #8
	str	r3, [r4, #8]
	mov	r0, r6
	mov	r1, #256
.LPIC28:
	add	r2, pc
	mov	r3, r5
	bl	snprintf(PLT)
	mov	r0, r6
	bl	unlink(PLT)
.L64:
	ldr	r0, [r4, #12]
	cmp	r0, #0
	ble	.L65
	bl	close(PLT)
	ldr	r2, .L80+8
	mov	r3, #-1
	add	r6, sp, #8
	str	r3, [r4, #12]
	mov	r0, r6
	mov	r1, #256
.LPIC29:
	add	r2, pc
	mov	r3, r5
	bl	snprintf(PLT)
	mov	r0, r6
	bl	unlink(PLT)
.L65:
	ldr	r0, [r4, #16]
	cmp	r0, #0
	ble	.L66
	bl	close(PLT)
	mov	r2, #-1
	mov	r3, r5
	str	r2, [r4, #16]
	add	r5, sp, #8
	ldr	r2, .L80+12
	mov	r0, r5
	mov	r1, #256
.LPIC30:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r0, r5
	bl	unlink(PLT)
.L66:
	ldr	r3, [r4, #24]
	cbz	r3, .L67
	add	r0, r4, #24
	movs	r1, #1
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #24]
.L67:
	ldr	r3, [r4, #20]
	cbz	r3, .L68
	add	r0, r4, #20
	movs	r1, #1
	bl	libaroma_canvas_free_ex1(PLT)
	movs	r3, #0
	str	r3, [r4, #20]
.L68:
	ldr	r0, [r4, #4]
	bl	_lart_sysui_killpid(PLT)
	movs	r0, #1
.L57:
	add	sp, sp, #268
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L79:
	str	r5, [r6, #4]
	bl	free(PLT)
	str	r5, [r6]
	b	.L59
.L81:
	.align	2
.L80:
	.word	.LANCHOR2-(.LPIC27+4)
	.word	.LC6-(.LPIC28+4)
	.word	.LC7-(.LPIC29+4)
	.word	.LC8-(.LPIC30+4)
	.size	lart_sysui_app_free, .-lart_sysui_app_free
	.section	.text.lart_sysui_req_new_app,"ax",%progbits
	.align	2
	.global	lart_sysui_req_new_app
	.thumb
	.thumb_func
	.type	lart_sysui_req_new_app, %function
lart_sysui_req_new_app:
	@ args = 0, pretend = 0, frame = 856
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r2, .L138
	ldr	r3, .L138+4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r0
.LPIC33:
	add	r2, pc
	sub	sp, sp, #884
	mov	r6, r1
	ldr	r3, [r2, r3]
	mov	r0, r3
	str	r3, [sp, #32]
	bl	pthread_mutex_lock(PLT)
	ldr	r3, .L138+8
.LPIC34:
	add	r3, pc
	ldr	r2, [r3]
	cmp	r2, #0
	beq	.L135
	ldrb	r3, [r2, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L136
	ldr	r3, [r2, #20]
	add	r5, sp, #360
	ldr	r4, [r2, #8]
	str	r3, [r5, #4]
	ldr	r3, .L138+12
	adds	r4, r4, #1
	str	r4, [r2, #8]
	str	r4, [r5]
.LPIC31:
	add	r3, pc
	cbz	r7, .L86
	mov	r3, r7
.L86:
	ldr	r2, .L138+16
	add	r0, sp, #368
	mov	r1, #256
.LPIC39:
	add	r2, pc
	bl	snprintf(PLT)
	ldr	r3, .L138+20
.LPIC32:
	add	r3, pc
	cbz	r6, .L87
	mov	r3, r6
.L87:
	ldr	r2, .L138+24
	mov	r1, #256
	add	r6, sp, #64
	add	r0, sp, #624
	str	r6, [sp, #24]
	add	r4, sp, #104
.LPIC40:
	add	r2, pc
	movs	r6, #0
	bl	snprintf(PLT)
	ldr	r2, .L138+28
	mov	r1, #256
	ldr	r3, [r5]
	add	r8, sp, #72
	mov	r0, r4
	str	r6, [sp, #64]
.LPIC41:
	add	r2, pc
	str	r6, [r8]
	bl	snprintf(PLT)
	mov	r0, r4
	ldr	r9, .L138+32
	bl	_lart_sysui_makefifo(PLT)
	ldr	r2, .L138+36
	mov	r1, #256
	ldr	r3, [r5]
.LPIC45:
	add	r9, pc
	str	r0, [sp, #40]
	mov	r0, r4
.LPIC42:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r0, r4
	bl	_lart_sysui_makefifo(PLT)
	str	r0, [sp, #44]
	mov	r1, #256
	ldr	r7, [sp, #44]
	mov	r0, r4
	ldr	r2, .L138+40
	ldr	r3, [r5]
	cmp	r7, r6
	ite	le
	movle	r7, #0
	movgt	r7, #1
.LPIC43:
	add	r2, pc
	str	r7, [sp, #36]
	bl	snprintf(PLT)
	mov	r0, r4
	bl	_lart_sysui_makefifo(PLT)
	ldr	r2, .L138+44
	mov	r1, #256
	ldr	r3, [r5]
	mov	r10, r0
	mov	r0, r4
.LPIC44:
	add	r2, pc
	bl	snprintf(PLT)
	bl	libaroma_fb(PLT)
	ldr	fp, [r0]
	bl	libaroma_fb(PLT)
	ldr	r3, [r9]
	mov	r2, r6
	ldr	r1, [r0, #4]
	mov	r0, fp
	ldr	lr, [r3, #28]
	mov	r3, r6
	str	r4, [sp]
	rsb	r1, lr, r1
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r2, .L138+48
	mov	r1, #256
	ldr	r3, [r5]
	str	r0, [sp, #64]
	mov	r0, r4
.LPIC46:
	add	r2, pc
	bl	snprintf(PLT)
	bl	libaroma_fb(PLT)
	ldr	r1, [r9]
	mov	r3, r6
	ldr	r0, [r0]
	mov	r2, r6
	ldr	r1, [r1, #28]
	str	r4, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r7, [sp, #40]
	str	r0, [r8]
	cmp	r7, r6
	ldr	r7, [sp, #36]
	ite	le
	movle	r3, #0
	movgt	r3, #1
	tst	r3, r7
	beq	.L88
	ldr	r3, [sp, #64]
	cmp	r3, r6
	it	ne
	cmpne	r10, r6
	ble	.L109
	cmp	r0, #0
	beq	.L109
	mov	r2, #4352
	movs	r1, #4
	movt	r2, 16
	ldr	r0, [sp, #44]
	bl	fcntl(PLT)
	movw	r2, #4353
	movs	r1, #4
	movt	r2, 16
	ldr	r0, [sp, #40]
	bl	fcntl(PLT)
	add	r3, sp, #88
	movw	r2, #4353
	str	r3, [sp, #52]
	movs	r1, #4
	ldr	r3, .L138+52
	movt	r2, 16
	add	r7, sp, #80
	add	fp, sp, #96
	mov	r0, r10
.LPIC48:
	add	r3, pc
	str	r3, [sp, #60]
	bl	fcntl(PLT)
	str	r6, [r7]
	str	r6, [sp, #88]
	str	r6, [fp]
	bl	lart(PLT)
	ldr	r3, [r0, #12]
	str	r3, [sp, #28]
	bl	lart(PLT)
	ldr	r3, [sp, #28]
	mov	lr, #520
	add	r2, sp, #88
	ldr	r1, [r0, #8]
	str	lr, [sp, #4]
	mov	r0, r3
	str	r2, [sp, #12]
	mov	r3, r6
	movs	r2, #1
	str	r7, [sp, #8]
	str	fp, [sp, #16]
	str	r5, [sp]
	bl	lart_command(PLT)
	str	r0, [sp, #56]
	bl	libaroma_debug_output(PLT)
	str	r0, [sp, #28]
	bl	libaroma_debug_tag(PLT)
	ldr	r3, [sp, #28]
	mov	r2, r0
	ldr	r1, [sp, #60]
	mov	r0, r3
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L138+56
	ldr	r3, [r7]
	ldr	r2, [sp, #56]
.LPIC49:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, [sp, #56]
	cmp	r3, #2
	bne	.L90
	ldr	r3, [fp]
	cmp	r3, #8
	bne	.L91
	ldr	r7, [r7]
	cmp	r7, #1
	beq	.L137
.L91:
	bl	libaroma_debug_output(PLT)
	mov	r6, r0
	mov	r9, #-1
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L138+60
	mov	r2, r0
	mov	r0, r6
	movs	r6, #0
.LPIC58:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L138+64
	ldr	r2, [r5]
.LPIC59:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
.L93:
	ldr	r3, [fp]
	cbz	r3, .L97
	ldr	r0, [sp, #88]
	cbz	r0, .L97
	bl	free(PLT)
.L97:
	cmp	r6, #0
	bne	.L134
	b	.L105
.L109:
	mov	r9, #-1
.L105:
	ldr	r0, [sp, #40]
	bl	close(PLT)
	ldr	r2, .L138+68
	mov	r0, r4
	mov	r1, #256
	ldr	r3, [r5]
.LPIC62:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r0, r4
	bl	unlink(PLT)
.L100:
	ldr	r7, [sp, #36]
	cbz	r7, .L101
	ldr	r0, [sp, #44]
	bl	close(PLT)
	ldr	r2, .L138+72
	mov	r0, r4
	mov	r1, #256
	ldr	r3, [r5]
.LPIC63:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r0, r4
	bl	unlink(PLT)
.L101:
	cmp	r10, #0
	ble	.L102
	mov	r0, r10
	bl	close(PLT)
	ldr	r2, .L138+76
	mov	r0, r4
	ldr	r3, [r5]
	mov	r1, #256
.LPIC64:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r0, r4
	bl	unlink(PLT)
.L102:
	ldr	r3, [r8]
	cbz	r3, .L103
	mov	r0, r8
	movs	r1, #1
	bl	libaroma_canvas_free_ex1(PLT)
.L103:
	ldr	r3, [sp, #64]
	cbz	r3, .L104
	add	r0, sp, #64
	movs	r1, #1
	bl	libaroma_canvas_free_ex1(PLT)
.L104:
	ldr	r3, .L138+80
.LPIC65:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	subs	r2, r2, #1
	str	r2, [r3, #8]
.L134:
	ldr	r0, [sp, #32]
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r9
	add	sp, sp, #884
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L88:
	mov	r9, #-1
	cmp	r3, #0
	beq	.L100
	b	.L105
.L90:
	bl	libaroma_debug_output(PLT)
	mov	r9, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L138+84
	mov	r2, r0
	mov	r0, r9
.LPIC60:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L138+88
.LPIC61:
	add	r1, pc
.L132:
	ldr	r2, [r5]
	mov	r9, #-1
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	b	.L93
.L137:
	ldr	r2, [sp, #88]
	ldr	r3, [r2, #4]
	str	r2, [sp, #56]
	cmp	r3, r6
	ble	.L92
	bl	libaroma_debug_output(PLT)
	mov	r6, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, [sp, #60]
	mov	r2, r0
	mov	r0, r6
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r6, [sp, #56]
	ldr	r1, .L138+92
	ldr	r2, [r5]
	ldr	r3, [r6, #4]
.LPIC51:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	movs	r0, #36
	mov	r1, r7
	bl	calloc(PLT)
	mov	ip, r0
	cmp	r0, #0
	beq	.L110
	ldr	r9, [r9]
	ldr	r2, [r6, #4]
	ldr	r6, [sp, #40]
	ldr	r3, [r9, #4]
	ldr	r0, [r5]
	ldr	r1, [sp, #64]
	str	r2, [ip, #4]
	str	r6, [ip, #8]
	ldr	r2, [r8]
	ldr	r6, [sp, #44]
	str	r10, [ip, #16]
	str	r0, [ip]
	str	r6, [ip, #12]
	str	r1, [ip, #20]
	str	r2, [ip, #24]
	cmp	r3, #0
	bne	.L94
	movs	r0, #4
	mov	r1, r7
	str	ip, [sp, #28]
	bl	calloc(PLT)
	ldr	ip, [sp, #28]
	mov	r6, r0
	str	r7, [r9, #4]
.L95:
	cmp	r6, #0
	beq	.L96
	ldr	r3, [r9, #4]
	add	r0, ip, #28
	ldr	r2, .L138+96
	movs	r1, #0
	add	r3, r3, #1073741824
	subs	r3, r3, #1
.LPIC53:
	add	r2, pc
	str	ip, [r6, r3, lsl #2]
	mov	r3, ip
	str	r6, [r9]
	movs	r6, #1
	ldr	r9, [r5]
	str	ip, [sp, #28]
	bl	pthread_create(PLT)
	ldr	ip, [sp, #28]
	ldr	r0, [ip, #28]
	bl	pthread_detach(PLT)
	b	.L93
.L136:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L138+100
	mov	r2, r0
	mov	r0, r4
.LPIC37:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L138+104
	movs	r1, #1
	movs	r2, #44
.LPIC38:
	add	r0, pc
.L133:
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	mov	r9, #-1
	bl	fputc(PLT)
	b	.L134
.L94:
	adds	r1, r3, #1
	ldr	r0, [r9]
	str	r1, [r9, #4]
	lsls	r1, r1, #2
	str	ip, [sp, #28]
	bl	realloc(PLT)
	ldr	ip, [sp, #28]
	mov	r6, r0
	b	.L95
.L92:
	bl	libaroma_debug_output(PLT)
	mov	r9, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, [sp, #60]
	mov	r2, r0
	mov	r0, r9
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L138+108
.LPIC57:
	add	r1, pc
	b	.L132
.L135:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L138+112
	mov	r2, r0
	mov	r0, r4
.LPIC35:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L138+116
	movs	r1, #1
	movs	r2, #49
.LPIC36:
	add	r0, pc
	b	.L133
.L110:
	mov	r6, r0
	mov	r9, #-1
	b	.L93
.L96:
	str	ip, [sp, #28]
	bl	libaroma_debug_output(PLT)
	mov	r9, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L138+120
	mov	r2, r0
	mov	r0, r9
	mov	r9, #-1
.LPIC54:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L138+124
	ldr	r2, [r5]
.LPIC55:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	ip, [sp, #28]
	mov	r0, ip
	bl	free(PLT)
	b	.L93
.L139:
	.align	2
.L138:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+4)
	.word	_lart_sysui_mutex(GOT)
	.word	.LANCHOR2-(.LPIC34+4)
	.word	.LC9-(.LPIC31+4)
	.word	.LC5-(.LPIC39+4)
	.word	.LC9-(.LPIC32+4)
	.word	.LC5-(.LPIC40+4)
	.word	.LC7-(.LPIC41+4)
	.word	.LANCHOR2-(.LPIC45+4)
	.word	.LC6-(.LPIC42+4)
	.word	.LC8-(.LPIC43+4)
	.word	.LC13-(.LPIC44+4)
	.word	.LC14-(.LPIC46+4)
	.word	.LC0-(.LPIC48+4)
	.word	.LC15-(.LPIC49+4)
	.word	.LC0-(.LPIC58+4)
	.word	.LC19-(.LPIC59+4)
	.word	.LC6-(.LPIC62+4)
	.word	.LC7-(.LPIC63+4)
	.word	.LC8-(.LPIC64+4)
	.word	.LANCHOR2-(.LPIC65+4)
	.word	.LC10-(.LPIC60+4)
	.word	.LC20-(.LPIC61+4)
	.word	.LC16-(.LPIC51+4)
	.word	_lart_sysui_appthread-(.LPIC53+4)
	.word	.LC10-(.LPIC37+4)
	.word	.LC12-(.LPIC38+4)
	.word	.LC18-(.LPIC57+4)
	.word	.LC10-(.LPIC35+4)
	.word	.LC11-(.LPIC36+4)
	.word	.LC0-(.LPIC54+4)
	.word	.LC17-(.LPIC55+4)
	.size	lart_sysui_req_new_app, .-lart_sysui_req_new_app
	.section	.text.lart_application_start,"ax",%progbits
	.align	2
	.global	lart_application_start
	.thumb
	.thumb_func
	.type	lart_application_start, %function
lart_application_start:
	@ args = 0, pretend = 0, frame = 512
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #528
	mov	r5, r0
	mov	r4, r1
	bl	lart_app(PLT)
	cbz	r0, .L141
	ldr	r6, .L145
	mov	r3, r5
	add	r5, sp, #16
	mov	r1, #256
	mov	r0, r5
.LPIC66:
	add	r6, pc
	mov	r2, r6
	bl	snprintf(PLT)
	mov	r2, r6
	mov	r3, r4
	mov	r1, #256
	add	r0, sp, #272
	bl	snprintf(PLT)
	movs	r3, #0
	mov	r2, r5
	str	r3, [sp]
	mov	r1, r3
	str	r3, [sp, #4]
	movs	r0, #16
	str	r3, [sp, #8]
	mov	r3, #512
	bl	lart_app_command(PLT)
.L142:
	add	sp, sp, #528
	@ sp needed
	pop	{r4, r5, r6, pc}
.L141:
	ldr	r3, .L145+4
.LPIC68:
	add	r3, pc
	ldr	r3, [r3]
	cbz	r3, .L143
	mov	r0, r5
	mov	r1, r4
	bl	lart_sysui_req_new_app(PLT)
	add	sp, sp, #528
	@ sp needed
	pop	{r4, r5, r6, pc}
.L143:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L145+8
	mov	r2, r0
	mov	r0, r4
.LPIC69:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L145+12
	movs	r1, #1
	movs	r2, #40
.LPIC70:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	mov	r0, #-1
	b	.L142
.L146:
	.align	2
.L145:
	.word	.LC5-(.LPIC66+4)
	.word	.LANCHOR2-(.LPIC68+4)
	.word	.LC10-(.LPIC69+4)
	.word	.LC21-(.LPIC70+4)
	.size	lart_application_start, .-lart_application_start
	.section	.text._lart_sysui_sb_update,"ax",%progbits
	.align	2
	.global	_lart_sysui_sb_update
	.thumb
	.thumb_func
	.type	_lart_sysui_sb_update, %function
_lart_sysui_sb_update:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	movs	r1, #0
	ldr	r4, .L158
	sub	sp, sp, #44
	ldr	r6, .L158+4
.LPIC71:
	add	r4, pc
	ldr	r3, [r4]
.LPIC80:
	add	r6, pc
	ldrb	r2, [r3, #53]	@ zero_extendqisi2
	ldrh	r0, [r3, #44]
	adds	r2, r2, #51
	uxtb	r2, r2
	bl	libaroma_alpha(PLT)
	mov	r5, r0
	bl	libaroma_color_isdark(PLT)
	ldr	r3, [r4]
	adds	r0, r0, #0
	it	ne
	movne	r0, #-1
	mov	r1, r5
	uxth	r8, r0
	ldr	r0, [r3, #36]
	bl	libaroma_canvas_fillcolor(PLT)
	ldr	r2, [r4]
	ldr	r3, [r2, #60]
	cbz	r3, .L153
	ldr	r1, [r2, #56]
	ldr	r0, [r2, #36]
	cmp	r1, #0
	beq	.L149
	ldr	r7, [r0, #4]
	movs	r5, #0
	mov	lr, #255
	mov	r1, r5
	mov	r2, r5
	str	lr, [sp, #8]
	str	r7, [sp]
	str	r5, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	ldr	r1, [r4]
	mov	ip, #204
	mov	r3, r5
	mov	r2, r5
	ldr	r7, [r1, #56]
	ldr	lr, [r1, #60]
	ldr	r0, [r1, #36]
	ldr	r9, [r7]
	mov	r1, r7
	str	lr, [sp, #8]
	str	r5, [sp, #4]
	rsb	lr, lr, r9
	str	lr, [sp]
	ldr	r7, [r7, #4]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r7, [sp, #12]
	str	r5, [sp, #28]
	str	ip, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldr	r3, [r4]
	b	.L148
.L153:
	mov	r3, r2
.L148:
	ldr	r2, [r3, #32]
	cbz	r2, .L150
	ldr	r0, [r3, #36]
	mov	r1, r8
	blx	r2
	ldr	r3, .L158+8
.LPIC77:
	add	r3, pc
	ldr	r3, [r3]
.L150:
	ldr	r0, [r3, #36]
	movs	r3, #48
	str	r8, [sp]
	movs	r4, #0
	movt	r3, 288
	movs	r5, #140
	ldr	r1, [r0]
	mov	r2, r4
	str	r3, [sp, #8]
	mov	r3, r4
	str	r5, [sp, #12]
	str	r1, [sp, #4]
	ldr	r1, .L158+12
	str	r4, [sp, #16]
	str	r4, [sp, #20]
	str	r4, [sp, #24]
.LPIC78:
	add	r1, pc
	str	r4, [sp, #28]
	str	r4, [sp, #32]
	str	r4, [sp, #36]
	bl	libaroma_draw_text_ex(PLT)
	ldr	r3, .L158+16
.LPIC79:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	cbz	r3, .L151
	ldr	r0, [r3, #16]
	mov	r2, r4
	str	r4, [sp]
	mov	r3, r4
	movs	r1, #1
	bl	lart_send(PLT)
.L152:
	ldr	r3, .L158+20
	ldr	r0, [r6, r3]
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, lr}
	b	pthread_mutex_unlock(PLT)
.L151:
	bl	libaroma_fb_sync(PLT)
	b	.L152
.L149:
	ldr	r5, [r0, #4]
	movw	lr, #52857
	movs	r7, #255
	mov	r2, r1
	str	r7, [sp, #8]
	stmia	sp, {r5, lr}
	bl	libaroma_draw_rect(PLT)
	ldr	r3, [r4]
	b	.L148
.L159:
	.align	2
.L158:
	.word	.LANCHOR2-(.LPIC71+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC80+4)
	.word	.LANCHOR2-(.LPIC77+4)
	.word	.LC22-(.LPIC78+4)
	.word	.LANCHOR2-(.LPIC79+4)
	.word	_lart_sysui_mutex(GOT)
	.size	_lart_sysui_sb_update, .-_lart_sysui_sb_update
	.section	.text._lart_sysui_ui_thread,"ax",%progbits
	.align	2
	.global	_lart_sysui_ui_thread
	.thumb
	.thumb_func
	.type	_lart_sysui_ui_thread, %function
_lart_sysui_ui_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r3, .L176+16
.LPIC81:
	add	r3, pc
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L173
	blx	r3
	cbnz	r0, .L163
	ldr	r3, .L176+20
.LPIC83:
	add	r3, pc
	ldr	r3, [r3]
.L162:
	ldr	r0, [r3, #48]
	cbnz	r0, .L164
.L174:
	ldrb	r2, [r3, #52]	@ zero_extendqisi2
	cbnz	r2, .L165
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L163:
	ldr	r3, .L176+24
	movs	r1, #1
.LPIC84:
	add	r3, pc
	ldr	r2, [r3]
	mov	r3, r2
	strb	r1, [r2, #52]
	ldr	r0, [r3, #48]
	cmp	r0, #0
	beq	.L174
.L164:
	movs	r1, #200
	bl	libaroma_duration_state(PLT)
	flds	s1, .L176
	fcpys	s4, s0
	flds	s2, .L176+4
	flds	s0, .L176+8
	fconsts	s3, #112
	bl	libaroma_cubic_bezier(PLT)
	fconsts	s15, #112
	fcmpes	s0, s15
	fmstat
	bmi	.L175
	ldr	r3, .L176+28
	movs	r0, #0
.LPIC87:
	add	r3, pc
	ldr	r2, [r3]
	ldrh	r1, [r2, #42]
	mov	r3, r2
	str	r0, [r2, #48]
	strh	r1, [r2, #44]	@ movhi
.L169:
	movs	r2, #1
	strb	r2, [r3, #52]
.L165:
	movs	r2, #0
	strb	r2, [r3, #52]
	bl	_lart_sysui_sb_update(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L173:
	ldr	r3, .L176+32
.LPIC82:
	add	r3, pc
	ldr	r3, [r3]
	b	.L162
.L175:
	flds	s15, .L176+12
	ldr	r5, .L176+36
	fmuls	s0, s0, s15
.LPIC85:
	add	r5, pc
	ldr	r4, [r5]
	ftouizs	s0, s0
	ldrh	r0, [r4, #40]
	ldrh	r1, [r4, #42]
	fmrs	r2, s0	@ int
	uxtb	r2, r2
	bl	libaroma_alpha(PLT)
	ldr	r3, [r5]
	strh	r0, [r4, #44]	@ movhi
	b	.L169
.L177:
	.align	2
.L176:
	.word	0
	.word	1046938544
	.word	1053699762
	.word	1132396544
	.word	.LANCHOR3-(.LPIC81+4)
	.word	.LANCHOR2-(.LPIC83+4)
	.word	.LANCHOR2-(.LPIC84+4)
	.word	.LANCHOR2-(.LPIC87+4)
	.word	.LANCHOR2-(.LPIC82+4)
	.word	.LANCHOR2-(.LPIC85+4)
	.size	_lart_sysui_ui_thread, .-_lart_sysui_ui_thread
	.section	.text.lart_sysui_set_ui_thread,"ax",%progbits
	.align	2
	.global	lart_sysui_set_ui_thread
	.thumb
	.thumb_func
	.type	lart_sysui_set_ui_thread, %function
lart_sysui_set_ui_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L179
.LPIC88:
	add	r3, pc
	str	r0, [r3]
	bx	lr
.L180:
	.align	2
.L179:
	.word	.LANCHOR3-(.LPIC88+4)
	.size	lart_sysui_set_ui_thread, .-lart_sysui_set_ui_thread
	.section	.text.lart_sysui_set_message_handler,"ax",%progbits
	.align	2
	.global	lart_sysui_set_message_handler
	.thumb
	.thumb_func
	.type	lart_sysui_set_message_handler, %function
lart_sysui_set_message_handler:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L182
.LPIC89:
	add	r3, pc
	str	r0, [r3]
	bx	lr
.L183:
	.align	2
.L182:
	.word	.LANCHOR1-(.LPIC89+4)
	.size	lart_sysui_set_message_handler, .-lart_sysui_set_message_handler
	.section	.text._lart_sysui_sb_setcolor,"ax",%progbits
	.align	2
	.global	_lart_sysui_sb_setcolor
	.thumb
	.thumb_func
	.type	_lart_sysui_sb_setcolor, %function
_lart_sysui_sb_setcolor:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L187
	push	{r4, lr}
.LPIC90:
	add	r3, pc
	ldr	r4, [r3]
	ldrh	r3, [r4, #44]
	strh	r0, [r4, #42]	@ movhi
	cmp	r0, r3
	beq	.L184
	strh	r3, [r4, #40]	@ movhi
	bl	libaroma_extern_tick(PLT)
	str	r0, [r4, #48]
.L184:
	pop	{r4, pc}
.L188:
	.align	2
.L187:
	.word	.LANCHOR2-(.LPIC90+4)
	.size	_lart_sysui_sb_setcolor, .-_lart_sysui_sb_setcolor
	.global	__aeabi_idiv
	.section	.text._lart_sysui_appthread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_lart_sysui_appthread, %function
_lart_sysui_appthread:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	movs	r2, #1
	ldr	fp, .L261
	sub	sp, sp, #84
	mov	r4, r0
	strb	r2, [r0, #32]
.LPIC99:
	add	fp, pc
	ldr	r3, .L261+4
	ldr	r2, [fp]
.LPIC100:
	add	r3, pc
	ldrb	r2, [r2, #16]	@ zero_extendqisi2
	cmp	r2, #0
	beq	.L249
	ldr	r7, .L261+8
	add	r10, sp, #72
	ldr	r2, .L261+12
	add	r9, sp, #56
	add	r8, sp, #64
.LPIC106:
	add	r7, pc
	str	r7, [sp, #44]
	ldr	r7, .L261+16
	ldr	r6, [r3, r2]
.LPIC125:
	add	r7, pc
	str	r7, [sp, #48]
	ldr	r7, .L261+20
.LPIC107:
	add	r7, pc
	str	r7, [sp, #52]
	ldr	r7, .L261+24
.LPIC102:
	add	r7, pc
	str	r7, [sp, #36]
	ldr	r7, .L261+28
.LPIC103:
	add	r7, pc
	str	r7, [sp, #40]
	b	.L230
.L196:
	cmp	r5, #16
	beq	.L199
	cmp	r5, #204
	beq	.L200
	cmp	r5, #4
	beq	.L257
.L194:
	ldr	r3, [sp, #64]
	cbz	r3, .L226
	ldr	r0, [sp, #56]
	cbz	r0, .L226
	bl	free(PLT)
.L226:
	ldr	r3, .L261+32
.LPIC124:
	add	r3, pc
	ldr	r3, [r3]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L249
	cmp	r4, #0
	beq	.L249
	ldrb	r3, [r4, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L249
.L230:
	movs	r5, #0
	mov	r1, r10
	mov	r3, r8
	mov	r2, r9
	ldr	r0, [r4, #12]
	str	r5, [sp, #56]
	str	r5, [sp, #64]
	str	r5, [sp, #72]
	bl	lart_recv(PLT)
	mov	r5, r0
	mov	r0, r6
	bl	pthread_mutex_lock(PLT)
	ldr	r3, [fp]
	ldr	r1, [r3, #12]
	mov	r7, r1
	cbz	r1, .L193
	ldr	r7, [r1]
	ldr	r3, [r4]
	subs	r7, r7, r3
	clz	r7, r7
	lsrs	r7, r7, #5
.L193:
	mov	r0, r6
	bl	pthread_mutex_unlock(PLT)
	cmp	r5, #3
	beq	.L195
	bhi	.L196
	cmp	r5, #1
	beq	.L197
	cmp	r5, #2
	bne	.L194
	cmp	r7, #0
	beq	.L205
	mov	r0, r6
	bl	pthread_mutex_lock(PLT)
	ldrh	r0, [sp, #72]
	strh	r0, [r4, #34]	@ movhi
	bl	_lart_sysui_sb_setcolor(PLT)
.L212:
	mov	r0, r6
	bl	pthread_mutex_unlock(PLT)
	movs	r3, #0
	movs	r1, #1
	ldr	r0, [r4, #8]
	mov	r2, r1
	str	r3, [sp]
	bl	lart_send(PLT)
	b	.L194
.L249:
	movs	r0, #0
	add	sp, sp, #84
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L199:
	ldr	r3, [sp, #64]
	cmp	r3, #512
	beq	.L258
	movs	r3, #0
	ldr	r0, [r4, #8]
	mov	r1, r3
	str	r3, [sp]
	mov	r2, r3
	bl	lart_send(PLT)
.L203:
	movs	r3, #0
	ldr	r0, [r4, #16]
	mov	r2, r3
	str	r3, [sp]
	movs	r1, #1
	bl	lart_send(PLT)
	b	.L194
.L195:
	cmp	r7, #0
	beq	.L206
	ldr	r3, [sp, #64]
	ldr	r5, [sp, #72]
	cmp	r3, #4
	beq	.L259
	movs	r3, #0
	ldr	r0, [r4, #8]
	mov	r1, r3
	str	r3, [sp]
	movs	r2, #1
	bl	lart_send(PLT)
	b	.L194
.L257:
	ldr	r5, .L261+36
	mov	r0, r6
	bl	pthread_mutex_lock(PLT)
.LPIC118:
	add	r5, pc
	ldr	r2, [r5]
	ldr	r3, [r2, #12]
	cmp	r3, r4
	beq	.L223
	cbz	r3, .L224
	ldr	r0, [r3, #16]
	movs	r3, #0
	mov	r2, r3
	str	r3, [sp]
	movs	r1, #3
	bl	lart_send(PLT)
	ldr	r2, [r5]
.L224:
	str	r4, [r2, #12]
	movs	r5, #0
	bl	libaroma_debug_output(PLT)
	mov	r7, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L261+40
	mov	r2, r0
	mov	r0, r7
.LPIC120:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L261+44
	ldr	r2, [r4]
.LPIC121:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r0, [r4, #16]
	mov	r2, r5
	mov	r3, r5
	movs	r1, #1
	str	r5, [sp]
	bl	lart_send(PLT)
	movs	r1, #1
	ldr	r0, [r4, #8]
	mov	r3, r5
	str	r5, [sp]
	mov	r2, r1
	bl	lart_send(PLT)
.L225:
	mov	r0, r6
	bl	pthread_mutex_unlock(PLT)
	b	.L194
.L197:
	cmp	r7, #0
	beq	.L206
	ldr	ip, .L261+48
.LPIC104:
	add	ip, pc
	str	ip, [sp, #32]
	bl	libaroma_fb_start_post(PLT)
	ldr	ip, [sp, #32]
	movs	r1, #0
	mov	r2, r1
	mov	r3, r1
	ldr	r0, [ip]
	ldr	lr, [r0, #36]
	str	r1, [sp]
	ldr	r7, [lr]
	mov	r0, lr
	str	r7, [sp, #4]
	ldr	r7, [lr, #4]
	str	r7, [sp, #8]
	bl	libaroma_fb_post(PLT)
	ldr	ip, [sp, #32]
	movs	r1, #0
	ldr	lr, [r4, #20]
	mov	r3, r1
	ldr	r2, [ip]
	mov	r0, lr
	ldr	r2, [r2, #36]
	ldr	r2, [r2, #4]
	str	r1, [sp]
	ldr	r7, [lr]
	str	r7, [sp, #4]
	ldr	r7, [lr, #4]
	str	r7, [sp, #8]
	bl	libaroma_fb_post(PLT)
	movs	r2, #0
	ldr	r0, [r4, #8]
	mov	r3, r2
	mov	r1, r5
	str	r2, [sp]
	mov	r2, r5
	bl	lart_send(PLT)
	bl	libaroma_fb_end_post(PLT)
	b	.L194
.L200:
	cmp	r7, #0
	bne	.L260
.L213:
	movs	r1, #1
	movs	r5, #0
	mov	r3, r5
	mov	r2, r1
	ldr	r0, [r4, #8]
	ldr	r7, .L261+52
	str	r5, [sp]
	bl	lart_send(PLT)
	mov	r0, r6
.LPIC115:
	add	r7, pc
	bl	pthread_mutex_lock(PLT)
	strb	r5, [r4, #32]
	mov	r0, r4
	bl	lart_sysui_app_free(PLT)
	mov	r0, r4
	bl	free(PLT)
	ldr	r3, [r7]
	ldr	r0, [r3, #12]
	cmp	r0, #0
	beq	.L221
	ldrh	r0, [r0, #34]
	bl	_lart_sysui_sb_setcolor(PLT)
	ldr	r0, [r7]
	movs	r1, #4
	mov	r2, r5
	mov	r3, r5
	ldr	r0, [r0, #12]
	ldr	r0, [r0, #16]
	str	r5, [sp]
	bl	lart_send(PLT)
	ldr	r0, [r7]
	mov	r2, r5
	mov	r3, r5
	movs	r1, #1
	ldr	r0, [r0, #12]
	ldr	r0, [r0, #16]
	str	r5, [sp]
	bl	lart_send(PLT)
.L222:
	mov	r0, r6
	movs	r4, #0
	bl	pthread_mutex_unlock(PLT)
	b	.L194
.L206:
	ldr	r0, [r4, #8]
	mov	r1, r7
	str	r7, [sp]
	mov	r2, r7
	mov	r3, r7
	bl	lart_send(PLT)
	b	.L194
.L205:
	ldr	r1, [sp, #72]
	mov	r2, r7
	ldr	r0, [r4, #8]
	mov	r3, r7
	strh	r1, [r4, #34]	@ movhi
	movs	r1, #1
	str	r7, [sp]
	bl	lart_send(PLT)
	b	.L194
.L260:
	mov	r0, r6
	bl	pthread_mutex_lock(PLT)
	ldr	r3, .L261+56
.LPIC108:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r0, [r3, #4]
	cmp	r0, #0
	ble	.L214
	ldr	r2, [r3]
	movs	r1, #0
	mov	r5, r0
	ldr	r7, [r3, #12]
	mov	r0, r1
	mov	r3, r1
	subs	r2, r2, #4
	mov	lr, r5
	b	.L219
.L215:
	cbnz	r0, .L218
	adds	r3, r3, #1
	mov	r1, r5
	cmp	r3, lr
	beq	.L218
.L219:
	ldr	r5, [r2, #4]!
	cmp	r7, r5
	bne	.L215
	mov	r5, r1
	cbnz	r1, .L216
	adds	r3, r3, #1
	movs	r0, #1
	cmp	r3, lr
	mov	r1, r5
	bne	.L219
.L218:
	cmp	r5, #0
	beq	.L214
.L216:
	bl	libaroma_debug_output(PLT)
	mov	r7, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L261+60
	mov	r2, r0
	mov	r0, r7
.LPIC109:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L261+64
	ldr	r2, [r5]
.LPIC110:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, .L261+68
.LPIC111:
	add	r3, pc
	ldr	r3, [r3]
.L220:
	str	r5, [r3, #12]
	mov	r0, r6
	bl	pthread_mutex_unlock(PLT)
	b	.L213
.L258:
	ldr	r5, [sp, #56]
	add	r1, r5, #256
	mov	r0, r5
	bl	lart_sysui_req_new_app(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r7, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, [sp, #36]
	mov	r2, r0
	mov	r0, r7
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r2, r5
	ldr	r1, [sp, #40]
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	movs	r3, #0
	movs	r1, #1
	ldr	r0, [r4, #8]
	mov	r2, r1
	str	r3, [sp]
	bl	lart_send(PLT)
	b	.L203
.L259:
	mov	r0, r6
	bl	pthread_mutex_lock(PLT)
	ldr	r2, [sp, #56]
	add	r0, r5, r5, lsl #2
	ldr	r7, [sp, #44]
	movs	r1, #1
	add	r0, r0, r0, lsl #5
	ldr	r3, [r7]
	ldr	r7, [r2]
	strb	r1, [r3, #52]
	str	r5, [r3, #60]
	mov	r1, r7
	str	r3, [sp, #32]
	bl	__aeabi_idiv(PLT)
	cmp	r0, #0
	ldr	r3, [sp, #32]
	it	lt
	movlt	r1, #0
	blt	.L209
	cmp	r0, #165
	ite	le
	uxtble	r1, r0
	movgt	r1, #165
.L209:
	ldr	r2, [r3, #56]
	strb	r1, [r3, #53]
	cmp	r2, #0
	beq	.L236
	ldr	r2, [r2]
	cmp	r2, r7
	beq	.L212
	add	r0, r3, #56
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [sp, #52]
	movs	r2, #0
	ldr	r3, [r0]
	mov	ip, r3
	str	r2, [r3, #56]
.L210:
	movs	r5, #0
	ldr	r1, [ip, #28]
	mov	r3, r5
	str	r5, [sp]
	mov	r2, r5
	mov	r0, r7
	str	ip, [sp, #32]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r1, [sp, #48]
	ldr	ip, [sp, #32]
	ldr	r3, [r1]
	str	r0, [ip, #56]
	ldr	r0, [r3, #56]
	cmp	r0, #0
	beq	.L212
	ldr	r1, [r4, #24]
	mov	r2, r5
	str	r7, [sp, #8]
	movs	r7, #255
	str	r5, [sp]
	str	r5, [sp, #4]
	ldr	r3, [r3, #28]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r3, [sp, #12]
	mov	r3, r5
	str	r5, [sp, #28]
	str	r7, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L212
.L221:
	bl	_lart_sysui_sb_setcolor(PLT)
	bl	libaroma_fb_sync(PLT)
	b	.L222
.L223:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L261+72
	mov	r2, r0
	mov	r0, r5
.LPIC122:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L261+76
	ldr	r2, [r4]
.LPIC123:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	movs	r3, #0
	ldr	r0, [r4, #8]
	mov	r2, r3
	str	r3, [sp]
	movs	r1, #1
	bl	lart_send(PLT)
	b	.L225
.L214:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L261+80
	mov	r2, r0
	mov	r0, r5
.LPIC112:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L261+84
	movs	r2, #50
	movs	r1, #1
.LPIC113:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, .L261+88
	movs	r1, #0
	mov	r5, r1
.LPIC114:
	add	r3, pc
	ldr	r2, [r3]
	mov	r3, r2
	strb	r1, [r2, #16]
	b	.L220
.L236:
	mov	ip, r3
	b	.L210
.L262:
	.align	2
.L261:
	.word	.LANCHOR2-(.LPIC99+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC100+4)
	.word	.LANCHOR2-(.LPIC106+4)
	.word	_lart_sysui_mutex(GOT)
	.word	.LANCHOR2-(.LPIC125+4)
	.word	.LANCHOR2-(.LPIC107+4)
	.word	.LC0-(.LPIC102+4)
	.word	.LC23-(.LPIC103+4)
	.word	.LANCHOR2-(.LPIC124+4)
	.word	.LANCHOR2-(.LPIC118+4)
	.word	.LC0-(.LPIC120+4)
	.word	.LC26-(.LPIC121+4)
	.word	.LANCHOR2-(.LPIC104+4)
	.word	.LANCHOR2-(.LPIC115+4)
	.word	.LANCHOR2-(.LPIC108+4)
	.word	.LC0-(.LPIC109+4)
	.word	.LC24-(.LPIC110+4)
	.word	.LANCHOR2-(.LPIC111+4)
	.word	.LC0-(.LPIC122+4)
	.word	.LC27-(.LPIC123+4)
	.word	.LC0-(.LPIC112+4)
	.word	.LC25-(.LPIC113+4)
	.word	.LANCHOR2-(.LPIC114+4)
	.size	_lart_sysui_appthread, .-_lart_sysui_appthread
	.section	.text.lart_sysui_isactive,"ax",%progbits
	.align	2
	.global	lart_sysui_isactive
	.thumb
	.thumb_func
	.type	lart_sysui_isactive, %function
lart_sysui_isactive:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L264
.LPIC126:
	add	r3, pc
	ldr	r3, [r3]
	ldrb	r0, [r3, #16]	@ zero_extendqisi2
	bx	lr
.L265:
	.align	2
.L264:
	.word	.LANCHOR2-(.LPIC126+4)
	.size	lart_sysui_isactive, .-lart_sysui_isactive
	.section	.text.lart_sysui,"ax",%progbits
	.align	2
	.global	lart_sysui
	.thumb
	.thumb_func
	.type	lart_sysui, %function
lart_sysui:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r8, r0
	ldr	r6, .L300
	sub	sp, sp, #8
	mov	r9, r1
	ldr	r3, .L300+4
.LPIC127:
	add	r6, pc
	ldr	r5, .L300+8
	ldr	r4, [r6, r3]
.LPIC130:
	add	r5, pc
	mov	r0, r4
	bl	pthread_mutex_lock(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r7, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L300+12
	mov	r2, r0
	mov	r0, r7
.LPIC128:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L300+16
	movs	r2, #18
	movs	r1, #1
.LPIC129:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	movs	r0, #64
	movs	r1, #1
	bl	calloc(PLT)
	str	r0, [r5]
	cmp	r0, #0
	beq	.L267
	str	r9, [r0, #32]
	bl	libaroma_start(PLT)
	cmp	r0, #0
	bne	.L299
.L268:
	ldr	r5, .L300+20
.LPIC159:
	add	r5, pc
	ldr	r0, [r5]
	ldr	r3, [r0, #36]
	cbz	r3, .L282
	adds	r0, r0, #36
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [r5]
	movs	r3, #0
	str	r3, [r0, #36]
.L282:
	ldr	r3, [r0, #56]
	cbz	r3, .L283
	adds	r0, r0, #56
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r3, .L300+24
	movs	r2, #0
.LPIC161:
	add	r3, pc
	ldr	r3, [r3]
	mov	r0, r3
	str	r2, [r3, #56]
.L283:
	ldr	r0, [r0, #24]
	cbz	r0, .L284
	bl	libaroma_zip_release(PLT)
	ldr	r3, .L300+28
	movs	r2, #0
.LPIC162:
	add	r3, pc
	ldr	r3, [r3]
	str	r2, [r3, #24]
.L284:
	ldr	r8, .L300+32
	movs	r7, #0
	bl	libaroma_end(PLT)
	mov	r6, r7
	mov	r5, r7
.LPIC163:
	add	r8, pc
	ldr	r0, [r8]
	bl	free(PLT)
	mov	r0, r4
	str	r7, [r8]
	bl	pthread_mutex_unlock(PLT)
.L285:
	bl	libaroma_debug_output(PLT)
	mov	r7, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L300+36
	mov	r2, r0
	mov	r0, r7
.LPIC165:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L300+40
	mov	r2, r5
.LPIC166:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	mov	r0, r4
	bl	pthread_mutex_lock(PLT)
	bl	lart(PLT)
	movs	r3, #0
	mov	r2, r6
	movs	r1, #238
	ldr	r0, [r0, #12]
	str	r3, [sp]
	bl	lart_send(PLT)
	mov	r0, r4
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r5
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L267:
	movs	r6, #200
	mov	r0, r4
	mov	r5, r6
	bl	pthread_mutex_unlock(PLT)
	b	.L285
.L299:
	ldr	r9, [r5]
	movs	r0, #24
	bl	libaroma_dp(PLT)
	ldr	r7, [r5]
	str	r0, [r9, #28]
	bl	libaroma_fb(PLT)
	ldr	r3, [r0, #44]
	str	r3, [r7, #20]
	bl	libaroma_fb(PLT)
	ldr	r7, [r0]
	bl	libaroma_fb(PLT)
	ldr	r1, [r5]
	ldr	r3, [r0, #4]
	mov	r2, r7
	movs	r0, #0
	ldr	r1, [r1, #28]
	subs	r3, r3, r1
	bl	libaroma_wm_set_workspace(PLT)
	bl	libaroma_fb(PLT)
	ldr	r0, [r0, #52]
	bl	libaroma_canvas_blank(PLT)
	bl	libaroma_fb_sync(PLT)
	bl	libaroma_fb(PLT)
	ldr	r7, [r0, #52]
	bl	libaroma_fb(PLT)
	ldr	r9, [r5]
	movs	r1, #0
	ldr	r3, [r0]
	mov	r0, r7
	mov	r2, r1
	ldr	r7, [r9, #28]
	str	r7, [sp]
	bl	libaroma_canvas_area(PLT)
	ldr	r3, [r5]
	str	r0, [r9, #36]
	ldr	r3, [r3, #36]
	cmp	r3, #0
	beq	.L269
	ldr	r3, .L300+44
	ldr	r0, [r6, r3]
	bl	libaroma_wm_set_ui_thread(PLT)
	ldr	r3, .L300+48
	ldr	r0, [r6, r3]
	bl	libaroma_wm_set_message_handler(PLT)
	movs	r0, #0
	bl	_lart_sysui_sb_setcolor(PLT)
	ldr	r0, .L300+52
	ldr	r7, [r5]
.LPIC137:
	add	r0, pc
	bl	libaroma_zip(PLT)
	ldr	r3, [r5]
	str	r0, [r7, #24]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L270
	ldr	r3, .L300+56
	ldr	r0, [r6, r3]
	bl	libaroma_stream_set_uri_callback(PLT)
	ldr	r0, .L300+60
.LPIC139:
	add	r0, pc
	bl	libaroma_stream(PLT)
	mov	r1, r0
	movs	r0, #0
	bl	libaroma_font(PLT)
	ldr	r3, [r5]
	movs	r2, #1
	strb	r2, [r3, #16]
	cmp	r8, #0
	beq	.L271
	mov	r0, r4
	bl	pthread_mutex_unlock(PLT)
	blx	r8
	mov	r0, r4
	bl	pthread_mutex_lock(PLT)
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ble	.L272
	bl	libaroma_debug_output(PLT)
	mov	r6, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L300+64
	mov	r2, r0
	mov	r0, r6
.LPIC142:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r3, [r5]
	ldr	r1, .L300+68
	ldr	r2, [r3, #4]
.LPIC143:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r5, [r5]
	movs	r0, #4
	ldr	r8, [r5, #4]
	mov	r1, r8
	bl	calloc(PLT)
	ldr	r1, [r5]
	lsl	r2, r8, #2
	mov	r9, r0
	bl	memcpy(PLT)
	cmp	r8, #0
	ble	.L276
	cmp	r8, #8
	ble	.L287
	sub	r10, r8, #9
	add	r5, r9, #32
	bic	r10, r10, #7
	movs	r6, #0
	add	r10, r10, #8
.L275:
	ldr	r7, [r5, #-32]
	adds	r6, r6, #8
	pld	[r5]
	adds	r5, r5, #32
	mov	r0, r7
	bl	lart_sysui_app_free(PLT)
	mov	r0, r7
	bl	free(PLT)
	ldr	r7, [r5, #-60]
	mov	r0, r7
	bl	lart_sysui_app_free(PLT)
	mov	r0, r7
	bl	free(PLT)
	ldr	r7, [r5, #-56]
	mov	r0, r7
	bl	lart_sysui_app_free(PLT)
	mov	r0, r7
	bl	free(PLT)
	ldr	r7, [r5, #-52]
	mov	r0, r7
	bl	lart_sysui_app_free(PLT)
	mov	r0, r7
	bl	free(PLT)
	ldr	r7, [r5, #-48]
	mov	r0, r7
	bl	lart_sysui_app_free(PLT)
	mov	r0, r7
	bl	free(PLT)
	ldr	r7, [r5, #-44]
	mov	r0, r7
	bl	lart_sysui_app_free(PLT)
	mov	r0, r7
	bl	free(PLT)
	ldr	r7, [r5, #-40]
	mov	r0, r7
	bl	lart_sysui_app_free(PLT)
	mov	r0, r7
	bl	free(PLT)
	ldr	r7, [r5, #-36]
	mov	r0, r7
	bl	lart_sysui_app_free(PLT)
	mov	r0, r7
	bl	free(PLT)
	cmp	r6, r10
	bne	.L275
.L274:
	add	r7, r6, #1073741824
	subs	r7, r7, #1
	add	r7, r9, r7, lsl #2
.L277:
	ldr	r5, [r7, #4]!
	adds	r6, r6, #1
	mov	r0, r5
	bl	lart_sysui_app_free(PLT)
	mov	r0, r5
	bl	free(PLT)
	cmp	r8, r6
	bgt	.L277
.L276:
	mov	r0, r9
	bl	free(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L300+72
	mov	r2, r0
	mov	r0, r5
.LPIC146:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L300+76
	movs	r1, #1
	movs	r2, #21
.LPIC147:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
.L272:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L300+80
	mov	r2, r0
	mov	r0, r5
	ldr	r5, .L300+84
.LPIC148:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L300+88
	movs	r1, #1
	movs	r2, #18
.LPIC150:
	add	r5, pc
.LPIC149:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, [r5]
	cmp	r3, #0
	ble	.L279
.L280:
	movw	r0, #34464
	movt	r0, 1
	bl	usleep(PLT)
	ldr	r3, [r5]
	cmp	r3, #0
	bgt	.L280
.L279:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L300+92
	mov	r2, r0
	mov	r0, r5
.LPIC151:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L300+96
	movs	r1, #1
	movs	r2, #18
.LPIC152:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, .L300+100
.LPIC153:
	add	r3, pc
	ldr	r3, [r3]
.L271:
	movs	r2, #0
	strb	r2, [r3, #16]
.L281:
	movs	r0, #0
	bl	libaroma_wm_set_message_handler(PLT)
	movs	r0, #0
	bl	libaroma_wm_set_ui_thread(PLT)
	b	.L268
.L269:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L300+104
	mov	r2, r0
	mov	r0, r5
.LPIC157:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L300+108
	movs	r1, #1
	movs	r2, #34
.LPIC158:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	b	.L268
.L287:
	movs	r6, #0
	b	.L274
.L270:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L300+112
	mov	r2, r0
	mov	r0, r5
.LPIC155:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L300+116
	movs	r1, #1
	movs	r2, #28
.LPIC156:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	b	.L281
.L301:
	.align	2
.L300:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC127+4)
	.word	_lart_sysui_mutex(GOT)
	.word	.LANCHOR2-(.LPIC130+4)
	.word	.LC28-(.LPIC128+4)
	.word	.LC29-(.LPIC129+4)
	.word	.LANCHOR2-(.LPIC159+4)
	.word	.LANCHOR2-(.LPIC161+4)
	.word	.LANCHOR2-(.LPIC162+4)
	.word	.LANCHOR2-(.LPIC163+4)
	.word	.LC28-(.LPIC165+4)
	.word	.LC38-(.LPIC166+4)
	.word	_lart_sysui_ui_thread(GOT)
	.word	_lart_sysui_msg_handler(GOT)
	.word	.LC30-(.LPIC137+4)
	.word	_lart_sysui_stream_uri_cb(GOT)
	.word	.LC31-(.LPIC139+4)
	.word	.LC0-(.LPIC142+4)
	.word	.LC32-(.LPIC143+4)
	.word	.LC0-(.LPIC146+4)
	.word	.LC33-(.LPIC147+4)
	.word	.LC28-(.LPIC148+4)
	.word	.LANCHOR0-(.LPIC150+4)
	.word	.LC34-(.LPIC149+4)
	.word	.LC28-(.LPIC151+4)
	.word	.LC35-(.LPIC152+4)
	.word	.LANCHOR2-(.LPIC153+4)
	.word	.LC10-(.LPIC157+4)
	.word	.LC37-(.LPIC158+4)
	.word	.LC10-(.LPIC155+4)
	.word	.LC36-(.LPIC156+4)
	.size	lart_sysui, .-lart_sysui
	.global	_lart_sysui_mutex
	.section	.bss._lart_sysui_thread_handle,"aw",%nobits
	.align	2
.LANCHOR3 = . + 0
	.type	_lart_sysui_thread_handle, %object
	.size	_lart_sysui_thread_handle, 4
_lart_sysui_thread_handle:
	.space	4
	.section	.bss._lart_on_kill_apps,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_lart_on_kill_apps, %object
	.size	_lart_on_kill_apps, 4
_lart_on_kill_apps:
	.space	4
	.section	.bss._lart_sysui_message_handle,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	_lart_sysui_message_handle, %object
	.size	_lart_sysui_message_handle, 4
_lart_sysui_message_handle:
	.space	4
	.section	.bss._lart_sysui_mutex,"aw",%nobits
	.align	2
	.type	_lart_sysui_mutex, %object
	.size	_lart_sysui_mutex, 24
_lart_sysui_mutex:
	.space	24
	.section	.bss._lart_sysui,"aw",%nobits
	.align	2
.LANCHOR2 = . + 0
	.type	_lart_sysui, %object
	.size	_lart_sysui, 4
_lart_sysui:
	.space	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"D/%s: RUNTIME: \000"
.LC1:
	.ascii	"Force Destroy SIGKILL PID:%i after retry: %i\000"
	.space	3
.LC2:
	.ascii	"Touch On Statusbar: %i - %ix%i\000"
	.space	1
.LC3:
	.ascii	"Exit key pressed\000"
	.space	3
.LC4:
	.ascii	"res://\000"
	.space	1
.LC5:
	.ascii	"%s\000"
	.space	1
.LC6:
	.ascii	"/tmp/.aromart-wfd-%i\000"
	.space	3
.LC7:
	.ascii	"/tmp/.aromart-rfd-%i\000"
	.space	3
.LC8:
	.ascii	"/tmp/.aromart-efd-%i\000"
	.space	3
.LC9:
	.ascii	"\000"
	.space	3
.LC10:
	.ascii	"E/%s: RUNTIME: \000"
.LC11:
	.ascii	"lart_sysui_req_new_app: System UI not initialized\000"
	.space	2
.LC12:
	.ascii	"lart_sysui_req_new_app: System UI not Active\000"
	.space	3
.LC13:
	.ascii	"@aromart-fb-%i\000"
	.space	1
.LC14:
	.ascii	"@aromart-sb-%i\000"
	.space	1
.LC15:
	.ascii	"Create command status: %i -> param: %i\000"
	.space	1
.LC16:
	.ascii	"lart_sysui_req_new_app(%i): new app created at pid "
	.ascii	"#%i\000"
	.space	1
.LC17:
	.ascii	"lart_sysui_req_new_app(%i): realloc apps failed\000"
.LC18:
	.ascii	"lart_sysui_req_new_app(%i): appman failed to fork n"
	.ascii	"ew app\000"
	.space	2
.LC19:
	.ascii	"lart_sysui_req_new_app(%i): appman failed create ne"
	.ascii	"w app\000"
	.space	3
.LC20:
	.ascii	"lart_sysui_req_new_app(%i): appman respond status n"
	.ascii	"ot valid\000"
.LC21:
	.ascii	"Illegal scope for lart_application_start\000"
	.space	3
.LC22:
	.ascii	"AROMA Recovery\000"
	.space	1
.LC23:
	.ascii	"Application Request New App: %s\000"
.LC24:
	.ascii	"App Exited - back to appid : %i\000"
.LC25:
	.ascii	"App Exited - no more running apps - halted runtime\000"
	.space	1
.LC26:
	.ascii	"Change foreground to - appid: %i\000"
	.space	3
.LC27:
	.ascii	"App already foreground - appid: %i\000"
	.space	1
.LC28:
	.ascii	"I/%s: RUNTIME: \000"
.LC29:
	.ascii	"Starting System UI\000"
	.space	1
.LC30:
	.ascii	"/sdcard/recovery.zip\000"
	.space	3
.LC31:
	.ascii	"res:///fonts/Roboto-Regular.ttf\000"
.LC32:
	.ascii	"Destroy all running apps: %i apps\000"
	.space	2
.LC33:
	.ascii	"Destroy apps finished\000"
	.space	2
.LC34:
	.ascii	"Wait for destroyer\000"
	.space	1
.LC35:
	.ascii	"Destroyer Finished\000"
	.space	1
.LC36:
	.ascii	"_lart_sysui->zip init failed\000"
	.space	3
.LC37:
	.ascii	"_lart_sysui->sb_canvas init failed\000"
	.space	1
.LC38:
	.ascii	"System UI Ended: %i\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
