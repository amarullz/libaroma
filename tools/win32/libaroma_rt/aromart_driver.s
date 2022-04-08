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
	.file	"aromart_driver.c"
	.section	.text.lart_fb_release,"ax",%progbits
	.align	2
	.global	lart_fb_release
	.thumb
	.thumb_func
	.type	lart_fb_release, %function
lart_fb_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	lart_fb_release, .-lart_fb_release
	.section	.text.lart_fb_start_post,"ax",%progbits
	.align	2
	.global	lart_fb_start_post
	.thumb
	.thumb_func
	.type	lart_fb_start_post, %function
lart_fb_start_post:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	bx	lr
	.size	lart_fb_start_post, .-lart_fb_start_post
	.section	.text.lart_fb_post,"ax",%progbits
	.align	2
	.global	lart_fb_post
	.thumb
	.thumb_func
	.type	lart_fb_post, %function
lart_fb_post:
	@ args = 24, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #1
	bx	lr
	.size	lart_fb_post, .-lart_fb_post
	.section	.text.lart_fb_end_post,"ax",%progbits
	.align	2
	.global	lart_fb_end_post
	.thumb
	.thumb_func
	.type	lart_fb_end_post, %function
lart_fb_end_post:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{lr}
	sub	sp, sp, #20
	mov	r1, r3
	mov	r2, r3
	movs	r0, #1
	str	r3, [sp]
	str	r3, [sp, #4]
	str	r3, [sp, #8]
	bl	lart_app_command(PLT)
	add	sp, sp, #20
	@ sp needed
	ldr	pc, [sp], #4
	.size	lart_fb_end_post, .-lart_fb_end_post
	.section	.text.lart_fb_init,"ax",%progbits
	.align	2
	.global	lart_fb_init
	.thumb
	.thumb_func
	.type	lart_fb_init, %function
lart_fb_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r7, #0
	ldr	r5, .L8
	mov	r4, r0
	movs	r6, #1
	ldr	r3, .L8+4
.LPIC0:
	add	r5, pc
	str	r7, [r0, #16]
	ldr	r3, [r5, r3]
	str	r3, [r0, #20]
	bl	lart_app(PLT)
	ldr	r3, [r0, #20]
	ldr	r3, [r3]
	str	r3, [r4]
	bl	lart_app(PLT)
	ldr	r3, [r0, #20]
	ldr	r2, [r4]
	ldr	lr, .L8+8
	ldr	r3, [r3, #4]
	ldr	r0, .L8+12
	ldr	r1, .L8+16
	str	r3, [r4, #4]
	mul	r3, r2, r3
	str	r3, [r4, #8]
	ldr	r3, [r5, lr]
	str	r3, [r4, #32]
	ldr	r3, [r5, r0]
	str	r3, [r4, #40]
	ldr	r3, [r5, r1]
	str	r7, [r4, #24]
	str	r7, [r4, #28]
	str	r3, [r4, #36]
	bl	lart_app(PLT)
	ldr	r3, [r0, #28]
	strb	r6, [r4, #12]
	strb	r6, [r4, #56]
	str	r3, [r4, #44]
	bl	lart_app(PLT)
	ldr	r3, [r0, #20]
	mov	r0, r6
	str	r3, [r4, #52]
	pop	{r3, r4, r5, r6, r7, pc}
.L9:
	.align	2
.L8:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	lart_fb_release(GOT)
	.word	lart_fb_start_post(GOT)
	.word	lart_fb_end_post(GOT)
	.word	lart_fb_post(GOT)
	.size	lart_fb_init, .-lart_fb_init
	.section	.text.lart_hid_getinput,"ax",%progbits
	.align	2
	.global	lart_hid_getinput
	.thumb
	.thumb_func
	.type	lart_hid_getinput, %function
lart_hid_getinput:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #28
	mov	r7, r1
	bl	lart_application_is_run(PLT)
	cbz	r0, .L20
	ldr	r5, .L22
	ldr	r6, .L22+4
.LPIC3:
	add	r5, pc
.LPIC1:
	add	r6, pc
	b	.L14
.L16:
	ldr	r0, [r6]
	bl	read(PLT)
	cmp	r0, #24
	beq	.L21
.L14:
	ldr	r3, [r5]
	mov	r1, sp
	movs	r2, #24
	cmp	r3, #0
	bne	.L16
.L17:
	ldr	r3, .L22+8
.LPIC2:
	add	r3, pc
	ldr	r0, [r3]
	bl	close(PLT)
	movs	r0, #204
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L20:
	movw	r0, #10000
	bl	usleep(PLT)
	movs	r0, #204
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L21:
	ldrb	r0, [sp, #20]	@ zero_extendqisi2
	cmp	r0, #204
	beq	.L17
	ldrb	r5, [sp]	@ zero_extendqisi2
	ldr	r1, [sp, #4]
	ldrb	r4, [sp, #8]	@ zero_extendqisi2
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #16]
	strb	r5, [r7]
	str	r1, [r7, #4]
	strb	r4, [r7, #8]
	str	r2, [r7, #12]
	str	r3, [r7, #16]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L23:
	.align	2
.L22:
	.word	.LANCHOR1-(.LPIC3+4)
	.word	.LANCHOR0-(.LPIC1+4)
	.word	.LANCHOR0-(.LPIC2+4)
	.size	lart_hid_getinput, .-lart_hid_getinput
	.section	.text.lart_hid_init,"ax",%progbits
	.align	2
	.global	lart_hid_init
	.thumb
	.thumb_func
	.type	lart_hid_init, %function
lart_hid_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #12
	ldr	r5, .L29
	ldr	r4, .L29+4
.LPIC4:
	add	r5, pc
	ldr	r6, [r5]
.LPIC5:
	add	r4, pc
	cbz	r6, .L28
	movs	r0, #0
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L28:
	mov	r7, r0
	mov	r0, sp
	bl	pipe(PLT)
	ldr	r2, .L29+8
	movs	r3, #1
	str	r6, [r7]
	mov	r0, r3
	ldr	r1, .L29+12
	ldr	r2, [r4, r2]
	ldr	ip, .L29+16
	ldr	lr, .L29+20
	str	r2, [r7, #4]
	ldr	r6, [sp]
.LPIC6:
	add	ip, pc
	ldr	r1, [r4, r1]
.LPIC7:
	add	lr, pc
	ldr	r2, [sp, #4]
	str	r6, [ip]
	str	r1, [r7, #8]
	str	r2, [lr]
	str	r3, [r5]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L30:
	.align	2
.L29:
	.word	.LANCHOR1-(.LPIC4+4)
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	lart_hid_release(GOT)
	.word	lart_hid_getinput(GOT)
	.word	.LANCHOR0-(.LPIC6+4)
	.word	.LANCHOR2-(.LPIC7+4)
	.size	lart_hid_init, .-lart_hid_init
	.section	.text.lart_hid_post,"ax",%progbits
	.align	2
	.global	lart_hid_post
	.thumb
	.thumb_func
	.type	lart_hid_post, %function
lart_hid_post:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #28
	ldr	r4, .L37
	ldrb	r7, [sp, #52]	@ zero_extendqisi2
.LPIC9:
	add	r4, pc
	ldr	r4, [r4]
	cbz	r4, .L31
	ldr	lr, .L37+4
	mov	r6, r0
	str	r3, [sp, #12]
	mov	r0, r1
	ldr	r3, [sp, #48]
	movs	r4, #0
.LPIC10:
	add	lr, pc
	mov	r5, r2
	str	r0, [sp, #4]
	mov	r1, sp
	movs	r2, #24
	ldr	r0, [lr]
	str	r4, [sp]
	str	r4, [sp, #8]
	str	r4, [sp, #20]
	str	r3, [sp, #16]
	strb	r6, [sp]
	strb	r5, [sp, #8]
	strb	r7, [sp, #20]
	bl	write(PLT)
.L31:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L38:
	.align	2
.L37:
	.word	.LANCHOR1-(.LPIC9+4)
	.word	.LANCHOR2-(.LPIC10+4)
	.size	lart_hid_post, .-lart_hid_post
	.section	.text.lart_hid_release,"ax",%progbits
	.align	2
	.global	lart_hid_release
	.thumb
	.thumb_func
	.type	lart_hid_release, %function
lart_hid_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #8
	ldr	r4, .L43
.LPIC11:
	add	r4, pc
	ldr	r3, [r4]
	cbnz	r3, .L42
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L42:
	movs	r5, #0
	movs	r6, #204
	mov	r0, r5
	str	r5, [sp]
	mov	r3, r5
	str	r6, [sp, #4]
	mov	r1, r5
	mov	r2, r5
	str	r5, [r4]
	bl	lart_hid_post(PLT)
	ldr	r3, .L43+4
.LPIC13:
	add	r3, pc
	ldr	r0, [r3]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, lr}
	b	close(PLT)
.L44:
	.align	2
.L43:
	.word	.LANCHOR1-(.LPIC11+4)
	.word	.LANCHOR2-(.LPIC13+4)
	.size	lart_hid_release, .-lart_hid_release
	.section	.text.lart_libaroma_start,"ax",%progbits
	.align	2
	.global	lart_libaroma_start
	.thumb
	.thumb_func
	.type	lart_libaroma_start, %function
lart_libaroma_start:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	ldr	r4, .L63
	ldr	r3, .L63+4
.LPIC14:
	add	r4, pc
	ldr	r0, [r4, r3]
	bl	libaroma_fb_set_initializer(PLT)
	ldr	r3, .L63+8
	ldr	r0, [r4, r3]
	bl	libaroma_hid_set_initializer(PLT)
	bl	libaroma_fb_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L56
	bl	libaroma_font_init(PLT)
	mov	r4, r0
	cbz	r0, .L57
	bl	libaroma_hid_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L58
	bl	libaroma_msg_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L59
	bl	libaroma_lang_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L60
	bl	libaroma_timer_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L61
	bl	libaroma_wm_init(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L62
	movs	r4, #1
	b	.L47
.L57:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L63+12
	mov	r2, r0
	mov	r0, r5
.LPIC17:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L63+16
	movs	r1, #1
	movs	r2, #47
.LPIC18:
	add	r0, pc
.L55:
	bl	fwrite(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r1, r0
	movs	r0, #10
	bl	fputc(PLT)
.L47:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L56:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L63+20
	mov	r2, r0
	mov	r0, r5
.LPIC15:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L63+24
	movs	r1, #1
	movs	r2, #47
.LPIC16:
	add	r0, pc
	b	.L55
.L59:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L63+28
	mov	r2, r0
	mov	r0, r5
.LPIC21:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L63+32
	movs	r1, #1
	movs	r2, #49
.LPIC22:
	add	r0, pc
	b	.L55
.L58:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L63+36
	mov	r2, r0
	mov	r0, r5
.LPIC19:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L63+40
	movs	r1, #1
	movs	r2, #46
.LPIC20:
	add	r0, pc
	b	.L55
.L60:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L63+44
	mov	r2, r0
	mov	r0, r5
.LPIC23:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L63+48
	movs	r1, #1
	movs	r2, #51
.LPIC24:
	add	r0, pc
	b	.L55
.L62:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L63+52
	mov	r2, r0
	mov	r0, r5
.LPIC27:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L63+56
	movs	r1, #1
	movs	r2, #50
.LPIC28:
	add	r0, pc
	b	.L55
.L61:
	bl	libaroma_debug_output(PLT)
	mov	r5, r0
	bl	libaroma_debug_tag(PLT)
	ldr	r1, .L63+60
	mov	r2, r0
	mov	r0, r5
.LPIC25:
	add	r1, pc
	bl	fprintf(PLT)
	bl	libaroma_debug_output(PLT)
	mov	r3, r0
	ldr	r0, .L63+64
	movs	r1, #1
	movs	r2, #48
.LPIC26:
	add	r0, pc
	b	.L55
.L64:
	.align	2
.L63:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+4)
	.word	lart_fb_init(GOT)
	.word	lart_hid_init(GOT)
	.word	.LC0-(.LPIC17+4)
	.word	.LC2-(.LPIC18+4)
	.word	.LC0-(.LPIC15+4)
	.word	.LC1-(.LPIC16+4)
	.word	.LC0-(.LPIC21+4)
	.word	.LC4-(.LPIC22+4)
	.word	.LC0-(.LPIC19+4)
	.word	.LC3-(.LPIC20+4)
	.word	.LC0-(.LPIC23+4)
	.word	.LC5-(.LPIC24+4)
	.word	.LC0-(.LPIC27+4)
	.word	.LC7-(.LPIC28+4)
	.word	.LC0-(.LPIC25+4)
	.word	.LC6-(.LPIC26+4)
	.size	lart_libaroma_start, .-lart_libaroma_start
	.section	.text.lart_libaroma_end,"ax",%progbits
	.align	2
	.global	lart_libaroma_end
	.thumb
	.thumb_func
	.type	lart_libaroma_end, %function
lart_libaroma_end:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	libaroma_wm_release(PLT)
	bl	libaroma_timer_release(PLT)
	bl	libaroma_lang_release(PLT)
	bl	libaroma_msg_release(PLT)
	bl	libaroma_hid_release(PLT)
	bl	libaroma_font_release(PLT)
	pop	{r3, lr}
	b	libaroma_fb_release(PLT)
	.size	lart_libaroma_end, .-lart_libaroma_end
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"E/%s: RUNTIME: \000"
.LC1:
	.ascii	"lart_libaroma_start cannot start framebuffer...\000"
.LC2:
	.ascii	"lart_libaroma_start cannot start font engine...\000"
.LC3:
	.ascii	"lart_libaroma_start cannot start hid engine...\000"
	.space	1
.LC4:
	.ascii	"lart_libaroma_start cannot start message queue...\000"
	.space	2
.LC5:
	.ascii	"lart_libaroma_start cannot start language engine..."
	.ascii	"\000"
.LC6:
	.ascii	"lart_libaroma_start cannot start timer engine...\000"
	.space	3
.LC7:
	.ascii	"lart_libaroma_start cannot start window manager...\000"
	.section	.bss._lart_hid_active,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	_lart_hid_active, %object
	.size	_lart_hid_active, 4
_lart_hid_active:
	.space	4
	.section	.bss._lart_hid_rfd,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_lart_hid_rfd, %object
	.size	_lart_hid_rfd, 4
_lart_hid_rfd:
	.space	4
	.section	.bss._lart_hid_wfd,"aw",%nobits
	.align	2
.LANCHOR2 = . + 0
	.type	_lart_hid_wfd, %object
	.size	_lart_hid_wfd, 4
_lart_hid_wfd:
	.space	4
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
