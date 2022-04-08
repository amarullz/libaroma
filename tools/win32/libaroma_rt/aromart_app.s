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
	.file	"aromart_app.c"
	.section	.text._lart_app_stream_uri_cb,"ax",%progbits
	.align	2
	.global	_lart_app_stream_uri_cb
	.thumb
	.thumb_func
	.type	_lart_app_stream_uri_cb, %function
_lart_app_stream_uri_cb:
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
.L2:
	cmp	r2, #9
	it	le
	cmple	r2, r0
	bge	.L7
	ldrb	r1, [r4], #1	@ zero_extendqisi2
	strb	r1, [r5, r2]
	adds	r2, r2, #1
	subs	r6, r2, #1
	strb	r7, [r5, r2]
	cmp	r6, #1
	ble	.L2
	cmp	r1, #47
	bne	.L2
	ldrb	r3, [r4, #-2]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L2
.L7:
	ldr	r1, .L17
	mov	r0, r5
.LPIC8:
	add	r1, pc
	bl	strcmp(PLT)
	cbnz	r0, .L5
	ldr	r3, .L17+4
.LPIC9:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L5
	add	r1, r8, #7
	bl	libaroma_stream_mzip(PLT)
	mov	r4, r0
	cbz	r0, .L11
	ldr	r2, .L17+8
	mov	r3, r8
	movs	r1, #255
	adds	r0, r0, #9
.LPIC10:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L5:
	ldr	r1, .L17+12
	mov	r0, r5
.LPIC11:
	add	r1, pc
	bl	strcmp(PLT)
	cbnz	r0, .L10
	ldr	r3, .L17+16
	add	r1, r8, #7
.LPIC12:
	add	r3, pc
	ldr	r0, [r3]
	bl	libaroma_stream_mzip(PLT)
	mov	r4, r0
	cbz	r0, .L11
	ldr	r2, .L17+20
	mov	r3, r8
	adds	r0, r0, #9
	movs	r1, #255
.LPIC13:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r0, r4
.L8:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L10:
	movs	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L11:
	mov	r0, r4
	b	.L8
.L18:
	.align	2
.L17:
	.word	.LC0-(.LPIC8+4)
	.word	.LANCHOR0-(.LPIC9+4)
	.word	.LC1-(.LPIC10+4)
	.word	.LC2-(.LPIC11+4)
	.word	.LANCHOR1-(.LPIC12+4)
	.word	.LC1-(.LPIC13+4)
	.size	_lart_app_stream_uri_cb, .-_lart_app_stream_uri_cb
	.section	.text._lart_app_eventthread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_lart_app_eventthread, %function
_lart_app_eventthread:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L46
	mov	r2, r0
	mov	r0, r4
	ldr	r8, .L46+4
.LPIC14:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L46+8
	movs	r1, #1
	movs	r2, #30
.LPIC16:
	add	r8, pc
.LPIC15:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldrb	r3, [r8]	@ zero_extendqisi2
	cbz	r3, .L29
	ldr	r9, .L46+12
	add	r7, sp, #32
	ldr	r10, .L46+16
	add	r6, sp, #16
	ldr	fp, .L46+20
	movs	r4, #0
	ldr	r5, .L46+24
.LPIC17:
	add	r9, pc
.LPIC19:
	add	r10, pc
.LPIC20:
	add	fp, pc
.LPIC18:
	add	r5, pc
	str	r5, [sp, #12]
	add	r5, sp, #24
	str	r5, [sp, #8]
.L30:
	ldr	r0, [r9]
	mov	r1, r7
	ldr	r3, [sp, #8]
	mov	r2, r6
	str	r4, [sp, #16]
	ldr	r0, [r0, #16]
	str	r4, [sp, #24]
	str	r4, [sp, #32]
	bl	lart_recv(PLT)
	cmp	r0, #2
	mov	r3, r0
	beq	.L22
	cmp	r0, #204
	beq	.L23
	cmp	r0, #1
	beq	.L24
.L44:
	ldr	r3, [sp, #24]
.L25:
	cbnz	r3, .L45
.L27:
	ldrb	r3, [r8]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L30
.L29:
	movs	r4, #0
	movs	r5, #204
	mov	r0, r4
	str	r4, [sp]
	mov	r1, r4
	mov	r2, r4
	mov	r3, r4
	str	r5, [sp, #4]
	bl	lart_hid_post(PLT)
	mov	r0, r4
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L45:
	ldr	r0, [sp, #16]
.L26:
	cmp	r0, #0
	beq	.L27
	bl	free(PLT)
	b	.L27
.L24:
	ldr	r5, [sp, #12]
	ldr	r3, [sp, #24]
	strb	r0, [r5]
	b	.L25
.L22:
	ldr	r3, [sp, #24]
	cmp	r3, #24
	bne	.L25
	ldr	lr, [sp, #32]
	ldr	r3, [sp, #16]
	cmp	lr, #6
	it	ne
	movne	r0, r3
	bne	.L26
	ldr	ip, [r3, #8]
	ldr	r1, [r3, #4]
	ldrb	r2, [r3, #1]	@ zero_extendqisi2
	ldr	r3, [r3, #12]
	stmia	sp, {r3, lr}
	mov	r3, ip
	bl	lart_hid_post(PLT)
	b	.L44
.L23:
	movs	r0, #0
	str	r3, [sp, #4]
	mov	r1, r0
	mov	r3, r0
	mov	r2, r0
	str	r4, [sp]
	bl	lart_hid_post(PLT)
	mov	r0, r10
	bl	pthread_mutex_lock(PLT)
	mov	r0, r10
	strb	r4, [fp]
	bl	pthread_mutex_unlock(PLT)
	ldr	r3, [sp, #24]
	b	.L25
.L47:
	.align	2
.L46:
	.word	.LC3-(.LPIC14+4)
	.word	.LANCHOR2-(.LPIC16+4)
	.word	.LC4-(.LPIC15+4)
	.word	.LANCHOR3-(.LPIC17+4)
	.word	.LANCHOR5-(.LPIC19+4)
	.word	.LANCHOR2-(.LPIC20+4)
	.word	.LANCHOR4-(.LPIC18+4)
	.size	_lart_app_eventthread, .-_lart_app_eventthread
	.section	.text._lart_app_manager_waitforpid_thread,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_lart_app_manager_waitforpid_thread, %function
_lart_app_manager_waitforpid_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, [r0]
	bl	free(PLT)
	movs	r1, #0
	mov	r0, r4
	mov	r2, r1
	bl	waitpid(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L50
	mov	r2, r0
	mov	r0, r5
.LPIC23:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L50+4
	mov	r2, r4
.LPIC24:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L51:
	.align	2
.L50:
	.word	.LC5-(.LPIC23+4)
	.word	.LC6-(.LPIC24+4)
	.size	_lart_app_manager_waitforpid_thread, .-_lart_app_manager_waitforpid_thread
	.section	.text._lart_app_ui_thread,"ax",%progbits
	.align	2
	.global	_lart_app_ui_thread
	.thumb
	.thumb_func
	.type	_lart_app_ui_thread, %function
_lart_app_ui_thread:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r4, .L56
.LPIC25:
	add	r4, pc
	ldrb	r0, [r4]	@ zero_extendqisi2
	cbz	r0, .L53
	movs	r6, #0
	movs	r5, #1
	mov	r0, r6
	str	r5, [sp]
	mov	r1, r6
	mov	r2, r6
	mov	r3, r6
	strb	r6, [r4]
	bl	libaroma_wm_updatesync(PLT)
	mov	r0, r5
.L53:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L57:
	.align	2
.L56:
	.word	.LANCHOR4-(.LPIC25+4)
	.size	_lart_app_ui_thread, .-_lart_app_ui_thread
	.section	.text.lart_app,"ax",%progbits
	.align	2
	.global	lart_app
	.thumb
	.thumb_func
	.type	lart_app, %function
lart_app:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L59
.LPIC27:
	add	r3, pc
	ldr	r0, [r3]
	bx	lr
.L60:
	.align	2
.L59:
	.word	.LANCHOR3-(.LPIC27+4)
	.size	lart_app, .-lart_app
	.section	.text.lart_application_syncfb,"ax",%progbits
	.align	2
	.global	lart_application_syncfb
	.thumb
	.thumb_func
	.type	lart_application_syncfb, %function
lart_application_syncfb:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L62
	movs	r3, #1
	mov	r0, r3
.LPIC28:
	add	r2, pc
	strb	r3, [r2]
	bx	lr
.L63:
	.align	2
.L62:
	.word	.LANCHOR4-(.LPIC28+4)
	.size	lart_application_syncfb, .-lart_application_syncfb
	.section	.text.lart_application_set_process_name,"ax",%progbits
	.align	2
	.global	lart_application_set_process_name
	.thumb
	.thumb_func
	.type	lart_application_set_process_name, %function
lart_application_set_process_name:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L68
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r4, .L68+4
.LPIC32:
	add	r3, pc
	ldr	r3, [r3]
.LPIC33:
	add	r4, pc
	ldr	r3, [r3]
	cbz	r0, .L66
	ldr	r5, .L68+8
.LPIC29:
	add	r5, pc
.L65:
	ldr	r6, .L68+12
	mov	r1, #256
	ldr	r2, .L68+16
	ldr	r4, [r4, r6]
.LPIC34:
	add	r2, pc
	str	r0, [sp, #4]
	str	r5, [sp]
	mov	r0, r4
	bl	snprintf(PLT)
	mov	r0, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	lart_set_process_name(PLT)
.L66:
	ldr	r5, .L68+20
.LPIC30:
	add	r5, pc
	mov	r0, r5
	b	.L65
.L69:
	.align	2
.L68:
	.word	.LANCHOR3-(.LPIC32+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC33+4)
	.word	.LC7-(.LPIC29+4)
	.word	_lart_app_process_name(GOT)
	.word	.LC9-(.LPIC34+4)
	.word	.LC8-(.LPIC30+4)
	.size	lart_application_set_process_name, .-lart_application_set_process_name
	.section	.text.lart_application_set_resource_zip,"ax",%progbits
	.align	2
	.global	lart_application_set_resource_zip
	.thumb
	.thumb_func
	.type	lart_application_set_resource_zip, %function
lart_application_set_resource_zip:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L71
.LPIC35:
	add	r3, pc
	str	r0, [r3]
	bx	lr
.L72:
	.align	2
.L71:
	.word	.LANCHOR0-(.LPIC35+4)
	.size	lart_application_set_resource_zip, .-lart_application_set_resource_zip
	.section	.text.lart_application_is_run,"ax",%progbits
	.align	2
	.global	lart_application_is_run
	.thumb
	.thumb_func
	.type	lart_application_is_run, %function
lart_application_is_run:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L74
.LPIC36:
	add	r3, pc
	ldrb	r0, [r3]	@ zero_extendqisi2
	bx	lr
.L75:
	.align	2
.L74:
	.word	.LANCHOR2-(.LPIC36+4)
	.size	lart_application_is_run, .-lart_application_is_run
	.section	.text.lart_app_run,"ax",%progbits
	.align	2
	.global	lart_app_run
	.thumb
	.thumb_func
	.type	lart_app_run, %function
lart_app_run:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r1
	mov	r5, r0
	ldr	r7, .L80
	bl	libaroma_debug_output(PLT)
	mov	r6, r0
.LPIC39:
	add	r7, pc
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L80+4
	mov	r2, r0
	mov	r0, r6
	ldr	r6, .L80+8
.LPIC37:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L80+12
	mov	r3, r4
	mov	r2, r5
.LPIC44:
	add	r6, pc
.LPIC38:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, [r7]
	cbz	r3, .L77
	ldr	r9, .L80+16
	movs	r1, #0
	ldr	r8, .L80+20
	mov	lr, #1
	ldr	r2, .L80+24
	mov	r3, r1
.LPIC41:
	add	r9, pc
.LPIC40:
	add	r8, pc
	mov	r0, r9
.LPIC42:
	add	r2, pc
	strb	lr, [r8]
	bl	pthread_create(PLT)
	ldr	r0, [r9]
	bl	pthread_detach(PLT)
	ldr	r3, .L80+28
	ldr	r0, [r6, r3]
	bl	libaroma_wm_set_ui_thread(PLT)
	ldr	r3, [r7]
	mov	r1, r4
	mov	r0, r5
	blx	r3
	mov	r4, r0
	movs	r0, #0
	bl	libaroma_wm_set_ui_thread(PLT)
	movs	r3, #0
	mov	r0, r4
	strb	r3, [r8]
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L77:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L80+32
	mov	r2, r0
	mov	r0, r4
.LPIC47:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L80+36
	movs	r2, #26
	movs	r1, #1
.LPIC48:
	add	r0, pc
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	mov	r0, #-1
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L81:
	.align	2
.L80:
	.word	.LANCHOR6-(.LPIC39+4)
	.word	.LC3-(.LPIC37+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC44+4)
	.word	.LC10-(.LPIC38+4)
	.word	.LANCHOR7-(.LPIC41+4)
	.word	.LANCHOR2-(.LPIC40+4)
	.word	_lart_app_eventthread-(.LPIC42+4)
	.word	_lart_app_ui_thread(GOT)
	.word	.LC11-(.LPIC47+4)
	.word	.LC12-(.LPIC48+4)
	.size	lart_app_run, .-lart_app_run
	.section	.text.lart_app_command,"ax",%progbits
	.align	2
	.global	lart_app_command
	.thumb
	.thumb_func
	.type	lart_app_command, %function
lart_app_command:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #28
	mov	r8, r0
	mov	r5, r1
	mov	r7, r2
	mov	r6, r3
	bl	lart_app(PLT)
	cbz	r0, .L83
	ldr	r4, .L86
.LPIC49:
	add	r4, pc
	mov	r0, r4
	bl	pthread_mutex_lock(PLT)
	bl	lart_app(PLT)
	ldr	r9, [r0, #8]
	bl	lart_app(PLT)
	mov	r3, r5
	ldr	r5, [sp, #56]
	ldr	r1, [r0, #12]
	mov	r2, r8
	mov	r0, r9
	str	r7, [sp]
	str	r5, [sp, #8]
	ldr	r5, [sp, #60]
	str	r6, [sp, #4]
	str	r5, [sp, #12]
	ldr	r5, [sp, #64]
	str	r5, [sp, #16]
	bl	lart_command(PLT)
	mov	r5, r0
	mov	r0, r4
	bl	pthread_mutex_unlock(PLT)
	mov	r0, r5
.L83:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L87:
	.align	2
.L86:
	.word	.LANCHOR5-(.LPIC49+4)
	.size	lart_app_command, .-lart_app_command
	.section	.text.lart_application_set_foreground,"ax",%progbits
	.align	2
	.global	lart_application_set_foreground
	.thumb
	.thumb_func
	.type	lart_application_set_foreground, %function
lart_application_set_foreground:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r3, #0
	sub	sp, sp, #16
	mov	r1, r3
	mov	r2, r3
	movs	r0, #4
	str	r3, [sp]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	bl	lart_app_command(PLT)
	mov	r4, r0
	bl	lart_application_syncfb(PLT)
	mov	r0, r4
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
	.size	lart_application_set_foreground, .-lart_application_set_foreground
	.section	.text.lart_application_set_primary_color,"ax",%progbits
	.align	2
	.global	lart_application_set_primary_color
	.thumb
	.thumb_func
	.type	lart_application_set_primary_color, %function
lart_application_set_primary_color:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, #0
	sub	sp, sp, #16
	mov	r1, r0
	mov	r2, r4
	mov	r3, r4
	str	r4, [sp]
	movs	r0, #2
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	bl	lart_app_command(PLT)
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
	.size	lart_application_set_primary_color, .-lart_application_set_primary_color
	.section	.text.lart_application_set_drawer_overlay,"ax",%progbits
	.align	2
	.global	lart_application_set_drawer_overlay
	.thumb
	.thumb_func
	.type	lart_application_set_drawer_overlay, %function
lart_application_set_drawer_overlay:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #28
	movs	r3, #0
	add	r2, sp, #24
	str	r1, [r2, #-4]!
	mov	r1, r0
	str	r3, [sp]
	movs	r0, #3
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	movs	r3, #4
	bl	lart_app_command(PLT)
	add	sp, sp, #28
	@ sp needed
	ldr	pc, [sp], #4
	.size	lart_application_set_drawer_overlay, .-lart_application_set_drawer_overlay
	.section	.text._lart_app_manager_waitforpid,"ax",%progbits
	.align	2
	.global	_lart_app_manager_waitforpid
	.thumb
	.thumb_func
	.type	_lart_app_manager_waitforpid, %function
_lart_app_manager_waitforpid:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	movs	r1, #1
	sub	sp, sp, #12
	mov	r5, r0
	movs	r0, #4
	bl	calloc(PLT)
	ldr	r2, .L96
	mov	r4, r0
	mov	r3, r4
	movs	r1, #0
	add	r0, sp, #4
	str	r5, [r4]
.LPIC51:
	add	r2, pc
	bl	pthread_create(PLT)
	ldr	r0, [sp, #4]
	bl	pthread_detach(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, pc}
.L97:
	.align	2
.L96:
	.word	_lart_app_manager_waitforpid_thread-(.LPIC51+4)
	.size	_lart_app_manager_waitforpid, .-_lart_app_manager_waitforpid
	.section	.text.lart_app_create,"ax",%progbits
	.align	2
	.global	lart_app_create
	.thumb
	.thumb_func
	.type	lart_app_create, %function
lart_app_create:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #284
	ldr	r5, .L138
	mov	r7, r0
	mov	r6, r1
	mov	r8, r2
	mov	r9, r3
	bl	fork(PLT)
	subs	r4, r0, #0
.LPIC72:
	add	r5, pc
	beq	.L134
	ble	.L111
	bl	_lart_app_manager_waitforpid(PLT)
.L111:
	mov	r0, r4
	add	sp, sp, #284
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L134:
	bl	lart(PLT)
	ldr	r0, [r0, #8]
	mov	r10, #-1
	bl	close(PLT)
	ldr	fp, .L138+4
	bl	lart(PLT)
	ldr	r0, [r0, #12]
	bl	close(PLT)
	bl	lart(PLT)
	str	r10, [r0, #8]
.LPIC54:
	add	fp, pc
	bl	lart(PLT)
	movs	r1, #1
	str	r10, [r0, #12]
	movs	r0, #32
	add	r10, sp, #24
	bl	calloc(PLT)
	str	r7, [r0]
	str	r0, [fp]
	str	r0, [sp, #20]
	bl	getpid(PLT)
	ldr	ip, [sp, #20]
	mov	r3, r7
	ldr	r2, .L138+8
	mov	r1, #256
	str	r0, [ip, #4]
	mov	r0, r10
	str	r9, [ip, #28]
.LPIC55:
	add	r2, pc
	bl	snprintf(PLT)
	movw	r1, #4353
	mov	r0, r10
	movt	r1, 16
	ldr	r9, [fp]
	bl	open(PLT)
	ldr	r2, .L138+12
	mov	r3, r7
	str	r0, [r9, #8]
	mov	r1, #256
	mov	r0, r10
.LPIC57:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r1, #4352
	mov	r0, r10
	movt	r1, 16
	ldr	r9, [fp]
	bl	open(PLT)
	ldr	r2, .L138+16
	mov	r3, r7
	str	r0, [r9, #12]
	mov	r1, #256
	mov	r0, r10
.LPIC59:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r1, #4352
	mov	r0, r10
	movt	r1, 16
	ldr	r9, [fp]
	bl	open(PLT)
	ldr	r2, .L138+20
	mov	r3, r7
	str	r0, [r9, #16]
	mov	r1, #256
	mov	r0, r10
.LPIC61:
	add	r2, pc
	bl	snprintf(PLT)
	ldr	r9, [fp]
	mov	r1, r4
	mov	r2, r4
	mov	r3, r4
	mov	r0, r4
	str	r10, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	ldr	r2, .L138+24
	mov	r3, r7
	str	r0, [r9, #20]
	mov	r1, #256
	mov	r0, r10
.LPIC63:
	add	r2, pc
	bl	snprintf(PLT)
	ldr	r7, [fp]
	mov	r2, r4
	mov	r3, r4
	mov	r1, r4
	mov	r0, r4
	str	r10, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r7, #24]
	mov	r0, r4
	bl	lart_application_set_process_name(PLT)
	ldr	r3, [fp]
	ldr	r2, [r3, #20]
	cmp	r2, #0
	beq	.L100
	ldr	r2, [r3, #24]
	cmp	r2, #0
	beq	.L100
	ldr	r2, [r3, #8]
	cmp	r2, #0
	ble	.L100
	ldr	r2, [r3, #12]
	cmp	r2, #0
	ble	.L100
	ldr	r3, [r3, #16]
	cmp	r3, #0
	ble	.L100
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L138+28
	mov	r2, r0
	mov	r0, r4
.LPIC66:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r3, [fp]
	ldmia	r3, {r2, r3}
	cmp	r6, #0
	beq	.L135
	mov	r1, r6
.L101:
	str	r1, [sp]
	movs	r4, #0
	ldr	r1, .L138+32
.LPIC68:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r0, .L138+36
.LPIC69:
	add	r0, pc
	bl	libaroma_zip(PLT)
	ldr	r2, .L138+40
	ldr	r3, .L138+44
.LPIC70:
	add	r2, pc
.LPIC71:
	add	r3, pc
	str	r0, [r2]
	str	r4, [r3]
	bl	lart_libaroma_start(PLT)
	cmp	r0, #0
	bne	.L136
	mov	r5, #-1
.L102:
	ldr	r4, .L138+48
	bl	lart_libaroma_end(PLT)
.LPIC74:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L103
	bl	libaroma_zip_release(PLT)
	movs	r3, #0
	str	r3, [r4]
.L103:
	ldr	r4, .L138+52
.LPIC76:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L104
	bl	libaroma_zip_release(PLT)
	movs	r3, #0
	str	r3, [r4]
.L104:
	movs	r4, #0
	movs	r0, #204
	mov	r3, r4
	str	r4, [sp]
	mov	r1, r4
	str	r4, [sp, #4]
	mov	r2, r4
	str	r4, [sp, #8]
	bl	lart_app_command(PLT)
	ldr	r3, .L138+56
.LPIC81:
	add	r3, pc
	ldr	r0, [r3]
	ldr	r3, [r0, #20]
	cbz	r3, .L106
	adds	r0, r0, #20
	mov	r1, r4
	bl	libaroma_canvas_free_ex1(PLT)
.L106:
	ldr	r3, .L138+60
.LPIC82:
	add	r3, pc
	ldr	r0, [r3]
	ldr	r3, [r0, #24]
	cbz	r3, .L107
	adds	r0, r0, #24
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
.L107:
	ldr	r3, .L138+64
.LPIC83:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r0, [r3, #8]
	cmp	r0, #0
	ble	.L108
	bl	close(PLT)
.L108:
	ldr	r3, .L138+68
.LPIC84:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r0, [r3, #12]
	cmp	r0, #0
	ble	.L109
	bl	close(PLT)
.L109:
	ldr	r3, .L138+72
.LPIC85:
	add	r3, pc
	ldr	r3, [r3]
	ldr	r0, [r3, #16]
	cmp	r0, #0
	ble	.L110
	bl	close(PLT)
.L110:
	bl	libaroma_debug_output(PLT)
	ldr	r4, .L138+76
	mov	r7, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L138+80
	mov	r2, r0
.LPIC87:
	add	r4, pc
	mov	r0, r7
.LPIC86:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r3, [r4]
	ldr	r1, .L138+84
	str	r6, [sp]
	ldmia	r3, {r2, r3}
.LPIC88:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r0, [r4]
	bl	free(PLT)
	movs	r3, #0
	mov	r0, r5
	str	r3, [r4]
	bl	exit(PLT)
.L100:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L138+88
	mov	r2, r0
	mov	r0, r4
.LPIC78:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r3, .L138+92
.LPIC79:
	add	r3, pc
	ldr	r3, [r3]
	ldmia	r3, {r2, r3}
	cbz	r6, .L137
	mov	r1, r6
.L105:
	str	r1, [sp]
	mov	r5, #-1
	ldr	r1, .L138+96
.LPIC80:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	b	.L104
.L136:
	ldr	r3, .L138+100
	ldr	r0, [r5, r3]
	bl	libaroma_stream_set_uri_callback(PLT)
	ldr	r0, .L138+104
.LPIC73:
	add	r0, pc
	bl	libaroma_stream(PLT)
	mov	r1, r0
	mov	r0, r4
	bl	libaroma_font(PLT)
	mov	r0, r6
	mov	r1, r8
	bl	lart_app_run(PLT)
	mov	r5, r0
	b	.L102
.L135:
	ldr	r1, .L138+108
.LPIC52:
	add	r1, pc
	b	.L101
.L137:
	ldr	r1, .L138+112
.LPIC53:
	add	r1, pc
	b	.L105
.L139:
	.align	2
.L138:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC72+4)
	.word	.LANCHOR3-(.LPIC54+4)
	.word	.LC13-(.LPIC55+4)
	.word	.LC14-(.LPIC57+4)
	.word	.LC15-(.LPIC59+4)
	.word	.LC16-(.LPIC61+4)
	.word	.LC17-(.LPIC63+4)
	.word	.LC5-(.LPIC66+4)
	.word	.LC18-(.LPIC68+4)
	.word	.LC19-(.LPIC69+4)
	.word	.LANCHOR1-(.LPIC70+4)
	.word	.LANCHOR0-(.LPIC71+4)
	.word	.LANCHOR1-(.LPIC74+4)
	.word	.LANCHOR0-(.LPIC76+4)
	.word	.LANCHOR3-(.LPIC81+4)
	.word	.LANCHOR3-(.LPIC82+4)
	.word	.LANCHOR3-(.LPIC83+4)
	.word	.LANCHOR3-(.LPIC84+4)
	.word	.LANCHOR3-(.LPIC85+4)
	.word	.LANCHOR3-(.LPIC87+4)
	.word	.LC5-(.LPIC86+4)
	.word	.LC22-(.LPIC88+4)
	.word	.LC11-(.LPIC78+4)
	.word	.LANCHOR3-(.LPIC79+4)
	.word	.LC21-(.LPIC80+4)
	.word	_lart_app_stream_uri_cb(GOT)
	.word	.LC20-(.LPIC73+4)
	.word	.LC8-(.LPIC52+4)
	.word	.LC8-(.LPIC53+4)
	.size	lart_app_create, .-lart_app_create
	.section	.text.lart_app_manager,"ax",%progbits
	.align	2
	.global	lart_app_manager
	.thumb
	.thumb_func
	.type	lart_app_manager, %function
lart_app_manager:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L160
	ldr	r2, .L160+4
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #68
.LPIC91:
	add	r3, pc
	ldr	r9, .L160+8
.LPIC95:
	add	r2, pc
	mov	r8, #0
	str	r0, [r3]
	mov	r4, r8
	str	r2, [sp, #16]
.LPIC94:
	add	r9, pc
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	add	r7, sp, #32
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L160+12
	mov	r2, r0
	mov	r0, r5
	add	r6, sp, #40
	add	r5, sp, #48
.LPIC92:
	add	r1, pc
	bl	fprintf(PLT)
	ldr	r3, .L160+16
.LPIC98:
	add	r3, pc
	str	r3, [sp, #20]
	bl	libaroma_debug_output(PLT)
	ldr	r2, .L160+20
	mov	r3, r0
	ldr	r0, .L160+24
	movs	r1, #1
.LPIC99:
	add	r2, pc
	str	r2, [sp, #24]
.LPIC93:
	add	r0, pc
	ldr	r2, .L160+28
.LPIC97:
	add	r2, pc
	str	r2, [sp, #28]
	movs	r2, #28
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
.L148:
	str	r4, [sp, #32]
	str	r4, [sp, #40]
	str	r4, [sp, #48]
	bl	lart(PLT)
	mov	r1, r7
	ldr	r0, [r0, #8]
	mov	r2, r6
	mov	r3, r5
	bl	lart_recv(PLT)
	cmp	r0, #1
	mov	fp, r0
	beq	.L142
	cmp	r0, #238
	bne	.L156
	ldr	r8, [sp, #32]
	mov	fp, #0
.L141:
	ldr	r3, [sp, #48]
	cbnz	r3, .L158
	cmp	fp, #0
	bne	.L148
.L159:
	bl	libaroma_debug_output(PLT)
	mov	r4, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L160+32
	mov	r2, r0
	mov	r0, r4
.LPIC100:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r1, .L160+36
	mov	r2, r8
.LPIC101:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	movs	r0, #2
	bl	sleep(PLT)
	mov	r0, r8
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L158:
	ldr	r0, [sp, #40]
	bl	free(PLT)
	cmp	fp, #0
	bne	.L148
	b	.L159
.L142:
	bl	libaroma_debug_output(PLT)
	mov	r10, r0
	bl	libaroma_debug_tag(PLT)
	mov	r1, r9
	mov	r2, r0
	mov	r0, r10
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	ldr	r2, [sp, #48]
	ldr	r1, [sp, #16]
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, [sp, #48]
	mov	r2, #-1
	str	r4, [sp, #56]
	str	r2, [sp, #60]
	cmp	r3, #520
	bne	.L144
	ldr	r3, [sp, #40]
	cbz	r3, .L144
	bl	libaroma_debug_output(PLT)
	str	r0, [sp, #12]
	bl	libaroma_debug_tag(PLT)
	ldr	r3, [sp, #12]
	mov	r2, r0
	mov	r1, r9
	mov	r0, r3
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	movs	r2, #22
	mov	r3, r0
	mov	r1, fp
	ldr	r0, [sp, #28]
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	ldr	r3, [sp, #40]
	mov	r1, r3
	add	r2, r3, #264
	ldr	lr, [r1], #8
	ldr	r3, [r3, #4]
	mov	r0, lr
	str	lr, [sp, #56]
	bl	lart_app_create(PLT)
	str	r0, [sp, #60]
	bl	lart(PLT)
	movs	r3, #8
	ldr	r0, [r0, #12]
	mov	r2, fp
	str	r3, [sp]
	movs	r1, #2
	add	r3, sp, #56
	bl	lart_send(PLT)
.L156:
	mov	fp, #1
	b	.L141
.L144:
	bl	libaroma_debug_output(PLT)
	mov	fp, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, [sp, #20]
	mov	r2, r0
	mov	r0, fp
	mov	fp, #1
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	movs	r2, #25
	mov	r3, r0
	movs	r1, #1
	ldr	r0, [sp, #24]
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
	bl	lart(PLT)
	movs	r2, #0
	ldr	r0, [r0, #12]
	mov	r3, r2
	str	r4, [sp]
	movs	r1, #2
	bl	lart_send(PLT)
	b	.L141
.L161:
	.align	2
.L160:
	.word	.LANCHOR6-(.LPIC91+4)
	.word	.LC25-(.LPIC95+4)
	.word	.LC23-(.LPIC94+4)
	.word	.LC23-(.LPIC92+4)
	.word	.LC23-(.LPIC98+4)
	.word	.LC27-(.LPIC99+4)
	.word	.LC24-(.LPIC93+4)
	.word	.LC26-(.LPIC97+4)
	.word	.LC23-(.LPIC100+4)
	.word	.LC28-(.LPIC101+4)
	.size	lart_app_manager, .-lart_app_manager
	.comm	_lart_app_process_name,256,4
	.section	.bss._lart_app_sys_zip,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	_lart_app_sys_zip, %object
	.size	_lart_app_sys_zip, 4
_lart_app_sys_zip:
	.space	4
	.section	.bss._lart_app_zip,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_lart_app_zip, %object
	.size	_lart_app_zip, 4
_lart_app_zip:
	.space	4
	.section	.bss._lart_app,"aw",%nobits
	.align	2
.LANCHOR3 = . + 0
	.type	_lart_app, %object
	.size	_lart_app, 4
_lart_app:
	.space	4
	.section	.bss._lart_app_needsync,"aw",%nobits
.LANCHOR4 = . + 0
	.type	_lart_app_needsync, %object
	.size	_lart_app_needsync, 1
_lart_app_needsync:
	.space	1
	.section	.bss._lart_app_run_cb,"aw",%nobits
	.align	2
.LANCHOR6 = . + 0
	.type	_lart_app_run_cb, %object
	.size	_lart_app_run_cb, 4
_lart_app_run_cb:
	.space	4
	.section	.bss._lart_app_isrun,"aw",%nobits
.LANCHOR2 = . + 0
	.type	_lart_app_isrun, %object
	.size	_lart_app_isrun, 1
_lart_app_isrun:
	.space	1
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"res://\000"
	.space	1
.LC1:
	.ascii	"%s\000"
	.space	1
.LC2:
	.ascii	"sys://\000"
	.space	1
.LC3:
	.ascii	"N/%s: RUNTIME: \000"
.LC4:
	.ascii	"Starting _lart_app_eventthread\000"
	.space	1
.LC5:
	.ascii	"D/%s: RUNTIME: \000"
.LC6:
	.ascii	"** WAITPID(%i) Returned\000"
.LC7:
	.ascii	"-\000"
	.space	2
.LC8:
	.ascii	"\000"
	.space	3
.LC9:
	.ascii	"aroma.app.%i%s%s\000"
	.space	3
.LC10:
	.ascii	"lart_app_run(%s,%s)\000"
.LC11:
	.ascii	"E/%s: RUNTIME: \000"
.LC12:
	.ascii	"No Application Callback...\000"
	.space	1
.LC13:
	.ascii	"/tmp/.aromart-wfd-%i\000"
	.space	3
.LC14:
	.ascii	"/tmp/.aromart-rfd-%i\000"
	.space	3
.LC15:
	.ascii	"/tmp/.aromart-efd-%i\000"
	.space	3
.LC16:
	.ascii	"@aromart-fb-%i\000"
	.space	1
.LC17:
	.ascii	"@aromart-sb-%i\000"
	.space	1
.LC18:
	.ascii	"INIT NEW APPLICATION (id:%i,pid:%i,program:%s)\000"
	.space	1
.LC19:
	.ascii	"/sdcard/recovery.zip\000"
	.space	3
.LC20:
	.ascii	"sys:///fonts/Roboto-Regular.ttf\000"
.LC21:
	.ascii	"NEW APPLICATION ERROR (id:%i,pid:%i,program:%s)\000"
.LC22:
	.ascii	"APPLICATION EXITED (id:%i,pid:%i,path:%s)\000"
	.space	2
.LC23:
	.ascii	"I/%s: RUNTIME: \000"
.LC24:
	.ascii	"Starting application manager\000"
	.space	3
.LC25:
	.ascii	"Create APP Command Received len=%i\000"
	.space	1
.LC26:
	.ascii	"LART_NEW_APP_DATA Init\000"
	.space	1
.LC27:
	.ascii	"LART_NEW_APP_DATA Corrupt\000"
	.space	2
.LC28:
	.ascii	"Application manager stopped: %i\000"
	.section	.bss._lart_app_mutex,"aw",%nobits
	.align	2
.LANCHOR5 = . + 0
	.type	_lart_app_mutex, %object
	.size	_lart_app_mutex, 24
_lart_app_mutex:
	.space	24
	.section	.bss._lart_app_eventthread_t,"aw",%nobits
	.align	2
.LANCHOR7 = . + 0
	.type	_lart_app_eventthread_t, %object
	.size	_lart_app_eventthread_t, 4
_lart_app_eventthread_t:
	.space	4
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
