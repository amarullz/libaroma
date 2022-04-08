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
	.file	"dialog.c"
	.section	.text._libaroma_dialog_list_simple_option_cb,"ax",%progbits
	.align	2
	.global	_libaroma_dialog_list_simple_option_cb
	.thumb
	.thumb_func
	.type	_libaroma_dialog_list_simple_option_cb, %function
_libaroma_dialog_list_simple_option_cb:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	ldrb	r4, [sp, #20]	@ zero_extendqisi2
	cmp	r4, #1
	beq	.L10
	cbnz	r4, .L6
	ldr	r3, [sp, #16]
	ldr	r0, [r3]
	subs	r0, r1, r0
	it	ne
	movne	r0, #1
	pop	{r3, r4, r5, pc}
.L10:
	ldr	r3, [sp, #16]
	ldr	r1, [r3]
	cbz	r1, .L8
	cmp	r1, r5
	bne	.L11
.L6:
	movs	r0, #0
	pop	{r3, r4, r5, pc}
.L11:
	ldr	r3, [sp, #16]
	movs	r2, #0
	str	r2, [r3]
	bl	libaroma_listitem_set_selected(PLT)
	ldr	r3, [sp, #16]
.L8:
	str	r5, [r3]
	mov	r0, r4
	pop	{r3, r4, r5, pc}
	.size	_libaroma_dialog_list_simple_option_cb, .-_libaroma_dialog_list_simple_option_cb
	.section	.text.libaroma_dialog_data,"ax",%progbits
	.align	2
	.global	libaroma_dialog_data
	.thumb
	.thumb_func
	.type	libaroma_dialog_data, %function
libaroma_dialog_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r0, #360]
	bx	lr
	.size	libaroma_dialog_data, .-libaroma_dialog_data
	.section	.text.libaroma_dialog_updatebg,"ax",%progbits
	.align	2
	.global	libaroma_dialog_updatebg
	.thumb
	.thumb_func
	.type	libaroma_dialog_updatebg, %function
libaroma_dialog_updatebg:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #44
	mov	r8, r1
	mov	r9, r0
	bl	libaroma_dialog_data(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L13
	ldr	r6, [r0, #20]
	movs	r5, #0
	str	r5, [sp]
	mov	lr, #255
	str	r5, [sp, #4]
	mov	r3, r5
	ldr	r7, [r6]
	mov	r1, r6
	mov	r2, r5
	mov	r0, r8
	str	r7, [sp, #8]
	ldr	r6, [r6, #4]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r6, [sp, #12]
	str	r5, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	ldrb	r3, [r4, #16]	@ zero_extendqisi2
	lsls	r3, r3, #30
	bmi	.L23
.L15:
	mov	r1, r9
	movs	r0, #0
	bl	libaroma_colorget(PLT)
	ldr	r10, [r4]
	ldrh	r5, [r0, #22]
	movs	r0, #2
	ldr	r9, [r4, #4]
	ldr	r6, [r4, #8]
	ldr	r7, [r4, #12]
	movs	r4, #255
	bl	libaroma_dp(PLT)
	movw	ip, #4369
	mov	lr, #0
	str	r0, [sp, #12]
	mov	r1, r10
	str	r5, [sp, #4]
	mov	r2, r9
	str	r5, [sp, #8]
	mov	r3, r6
	str	r7, [sp]
	mov	r0, r8
	str	ip, [sp, #16]
	str	r4, [sp, #20]
	str	r4, [sp, #24]
	str	lr, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
.L13:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L23:
	ldr	r7, [r4]
	movs	r0, #2
	bl	libaroma_dp(PLT)
	ldr	r6, [r4, #4]
	adds	r1, r7, r0
	movs	r0, #24
	str	r1, [sp, #32]
	bl	libaroma_dp(PLT)
	ldr	r7, [r4, #8]
	add	fp, r6, r0
	movs	r0, #4
	bl	libaroma_dp(PLT)
	ldr	r6, [r4, #12]
	rsb	r10, r0, r7
	movs	r0, #26
	movs	r7, #64
	bl	libaroma_dp(PLT)
	subs	r3, r6, r0
	movs	r0, #24
	str	r3, [sp, #36]
	bl	libaroma_dp(PLT)
	mov	r6, r0
	movs	r0, #32
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #36]
	mov	r2, fp
	str	r0, [sp, #8]
	mov	r0, r8
	ldr	r1, [sp, #32]
	str	r3, [sp]
	mov	r3, r10
	str	r6, [sp, #4]
	str	r5, [sp, #16]
	str	r7, [sp, #12]
	bl	libaroma_draw_shadow(PLT)
	b	.L15
	.size	libaroma_dialog_updatebg, .-libaroma_dialog_updatebg
	.section	.text.libaroma_dialog_window,"ax",%progbits
	.align	2
	.global	libaroma_dialog_window
	.thumb
	.thumb_func
	.type	libaroma_dialog_window, %function
libaroma_dialog_window:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r7, r0
	sub	sp, sp, #40
	movs	r0, #72
	mov	r6, r1
	mov	r10, r2
	mov	r9, r3
	ldr	r8, .L39
	bl	libaroma_dp(PLT)
	mov	r4, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	add	r7, r7, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	add	r6, r6, r0
.LPIC0:
	add	r8, pc
	cmp	r7, r4
	it	ge
	cmpge	r6, r4
	blt	.L29
	bl	libaroma_wm(PLT)
	ldr	r3, [r0, #56]
	cmp	r7, r3
	bgt	.L36
.L27:
	bl	libaroma_wm(PLT)
	ldr	r3, [r0, #60]
	cmp	r6, r3
	bgt	.L37
.L28:
	movs	r0, #24
	movs	r1, #1
	bl	calloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L29
	movs	r0, #16
	movs	r5, #0
	bl	libaroma_dp(PLT)
	subs	r7, r7, r0
	movs	r0, #16
	str	r7, [r4, #8]
	bl	libaroma_dp(PLT)
	subs	r0, r6, r0
	str	r0, [r4, #12]
	bl	libaroma_wm(PLT)
	ldr	r3, [r4, #8]
	ldr	r2, [r0, #56]
	asrs	r3, r3, #1
	rsb	r3, r3, r2, asr #1
	str	r3, [r4]
	bl	libaroma_fb(PLT)
	ldr	r3, [r4, #12]
	ldr	r6, [r0, #4]
	asrs	r3, r3, #1
	rsb	r6, r3, r6, asr #1
	bl	libaroma_wm(PLT)
	ldr	r3, [r0, #52]
	strb	r10, [r4, #16]
	subs	r6, r6, r3
	str	r6, [r4, #4]
	bl	libaroma_wm(PLT)
	ldr	r6, [r0, #56]
	bl	libaroma_wm(PLT)
	mov	r2, r5
	ldr	r1, [r0, #60]
	mov	r3, r5
	mov	r0, r6
	str	r5, [sp]
	bl	libaroma_canvas_new_ex(PLT)
	str	r0, [r4, #20]
	bl	libaroma_wm(PLT)
	ldr	r6, [r0, #56]
	bl	libaroma_wm(PLT)
	mov	r1, r5
	ldr	r3, [r0, #60]
	mov	r2, r6
	mov	r0, r5
	bl	libaroma_wm_canvas(PLT)
	ands	r6, r10, #1
	mov	r7, r0
	str	r0, [sp, #32]
	ldr	r0, [r4, #20]
	bne	.L38
	str	r6, [sp]
	mov	r1, r7
	str	r6, [sp, #4]
	mov	lr, #255
	ldr	r5, [r7]
	mov	r2, r6
	mov	r3, r6
	str	r5, [sp, #8]
	ldr	r7, [r7, #4]
	str	r6, [sp, #16]
	str	r6, [sp, #24]
	str	r7, [sp, #12]
	str	r6, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
.L31:
	movs	r1, #0
	add	r0, sp, #32
	bl	libaroma_canvas_free_ex1(PLT)
	bl	libaroma_wm(PLT)
	ldr	r6, [r0, #56]
	bl	libaroma_wm(PLT)
	ldr	r5, [r0, #60]
	movs	r0, #0
	mov	r3, r6
	mov	r1, r0
	mov	r2, r0
	str	r5, [sp]
	bl	libaroma_window(PLT)
	ldr	r2, .L39+4
	mov	r3, r0
	str	r9, [r3]
	str	r4, [r3, #360]
	ldr	r2, [r8, r2]
	str	r2, [r3, #348]
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L38:
	str	r5, [sp]
	mov	r1, r7
	str	r5, [sp, #4]
	mov	lr, #143
	ldr	r6, [r7]
	mov	r2, r5
	mov	r3, r5
	str	r6, [sp, #8]
	ldr	r7, [r7, #4]
	str	r5, [sp, #16]
	str	r5, [sp, #24]
	str	r7, [sp, #12]
	str	r5, [sp, #28]
	str	lr, [sp, #20]
	bl	libaroma_draw_ex2(PLT)
	b	.L31
.L29:
	movs	r0, #0
	add	sp, sp, #40
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L37:
	bl	libaroma_wm(PLT)
	ldr	r6, [r0, #60]
	b	.L28
.L36:
	bl	libaroma_wm(PLT)
	ldr	r7, [r0, #56]
	b	.L27
.L40:
	.align	2
.L39:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	libaroma_dialog_updatebg(GOT)
	.size	libaroma_dialog_window, .-libaroma_dialog_window
	.section	.text.libaroma_dialog_free,"ax",%progbits
	.align	2
	.global	libaroma_dialog_free
	.thumb
	.thumb_func
	.type	libaroma_dialog_free, %function
libaroma_dialog_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cbz	r0, .L48
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #360]
	cbz	r0, .L43
	adds	r0, r0, #20
	movs	r1, #0
	bl	libaroma_canvas_free_ex1(PLT)
	ldr	r0, [r4, #360]
	bl	free(PLT)
	movs	r3, #0
	str	r3, [r4, #360]
.L43:
	mov	r0, r4
	pop	{r4, lr}
	b	libaroma_window_free(PLT)
.L48:
	bx	lr
	.size	libaroma_dialog_free, .-libaroma_dialog_free
	.section	.text.libaroma_dialog_confirm,"ax",%progbits
	.align	2
	.global	libaroma_dialog_confirm
	.thumb
	.thumb_func
	.type	libaroma_dialog_confirm, %function
libaroma_dialog_confirm:
	@ args = 8, pretend = 0, frame = 64
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #108
	mov	r6, r1
	str	r2, [sp, #48]
	mov	r7, r0
	str	r3, [sp, #56]
	mov	r9, r7
	ldr	r4, [sp, #144]
	ldrb	fp, [sp, #148]	@ zero_extendqisi2
	bl	libaroma_wm(PLT)
	ldr	r5, [r0, #56]
	movs	r0, #58
	bl	libaroma_dp(PLT)
	subs	r5, r5, r0
	movs	r0, #48
	bl	libaroma_dp(PLT)
	rsb	r8, r0, r5
	cbz	r7, .L50
	mov	r2, #9437184
	movs	r3, #100
	str	r2, [sp]
	mov	r0, r7
	str	r3, [sp, #4]
	mov	r1, r8
	movs	r2, #0
	movs	r3, #6
	bl	libaroma_ctl_label_height(PLT)
	mov	r9, r0
.L50:
	cmp	r6, #0
	beq	.L69
	mov	r2, #9437184
	movs	r3, #120
	str	r2, [sp]
	mov	r0, r6
	str	r3, [sp, #4]
	mov	r1, r8
	movs	r2, #0
	movs	r3, #4
	bl	libaroma_ctl_label_height(PLT)
	str	r0, [sp, #52]
.L51:
	movs	r0, #120
	bl	libaroma_dp(PLT)
	add	r1, r0, r9
	ldr	r0, [sp, #52]
	mov	r3, r4
	mov	r2, fp
	add	r1, r1, r0
	mov	r0, r5
	bl	libaroma_dialog_window(PLT)
	mov	r4, r0
	bl	libaroma_dialog_data(PLT)
	mov	r1, r4
	mov	r5, r0
	movs	r0, #0
	bl	libaroma_colorget(PLT)
	ldrh	r0, [r0, #24]
	mov	r1, r4
	str	r0, [sp, #68]
	movs	r0, #0
	bl	libaroma_colorget(PLT)
	ldrh	r0, [r0, #26]
	mov	r1, r4
	str	r0, [sp, #72]
	movs	r0, #0
	bl	libaroma_colorget(PLT)
	ldrh	r0, [r0, #24]
	and	r3, fp, #4
	and	r2, r3, #255
	str	r0, [sp, #60]
	cmp	r3, #0
	bne	.L95
	str	r2, [sp, #64]
.L52:
	cbz	r7, .L53
	ldr	r0, [r5]
	bl	libaroma_px(PLT)
	mov	r2, r0
	ldr	r0, [r5, #4]
	str	r2, [sp, #44]
	bl	libaroma_px(PLT)
	mov	r10, r0
	mov	r0, r8
	bl	libaroma_px(PLT)
	str	r0, [sp, #76]
	add	r0, r9, #10
	bl	libaroma_px(PLT)
	ldr	r2, [sp, #44]
	add	r3, r10, #24
	ldr	r1, [sp, #76]
	mov	lr, #10
	str	r3, [sp]
	mov	r10, #9437184
	add	r3, r2, #24
	ldr	r2, [sp, #68]
	str	r0, [sp, #8]
	movs	r0, #0
	mov	ip, #100
	str	r0, [sp, #16]
	movs	r0, #6
	str	r1, [sp, #4]
	str	r2, [sp, #12]
	mov	r1, lr
	str	r0, [sp, #20]
	mov	r2, r7
	mov	r0, r4
	str	r10, [sp, #24]
	str	ip, [sp, #28]
	str	lr, [sp, #32]
	bl	libaroma_ctl_label_valign(PLT)
.L53:
	cbz	r6, .L54
	ldr	r0, [r5]
	bl	libaroma_px(PLT)
	mov	r10, r0
	ldr	r0, [r5, #4]
	bl	libaroma_px(PLT)
	mov	r7, r0
	mov	r0, r9
	adds	r7, r7, #44
	bl	libaroma_px(PLT)
	add	r9, r7, r0
	mov	r0, r8
	bl	libaroma_px(PLT)
	mov	r7, r0
	ldr	r0, [sp, #52]
	mov	r8, #0
	adds	r0, r0, #10
	bl	libaroma_px(PLT)
	ldr	r2, [sp, #72]
	mov	r1, #9437184
	mov	ip, #4
	mov	lr, #120
	str	r7, [sp, #4]
	movs	r7, #10
	str	r0, [sp, #8]
	add	r3, r10, #24
	str	r2, [sp, #12]
	mov	r0, r4
	str	r1, [sp, #24]
	mov	r2, r6
	str	r9, [sp]
	movs	r1, #11
	str	r8, [sp, #16]
	str	ip, [sp, #20]
	str	lr, [sp, #28]
	str	r7, [sp, #32]
	bl	libaroma_ctl_label_valign(PLT)
.L54:
	ldr	r3, [r5, #12]
	ldr	r0, [r5, #4]
	add	r0, r0, r3
	bl	libaroma_px(PLT)
	ldr	r3, [sp, #48]
	mov	r6, r0
	cmp	r3, #0
	beq	.L56
	mov	r0, r3
	subs	r6, r6, #52
	bl	libaroma_ctl_button_width(PLT)
	ldr	r2, [r5]
	mov	r9, r0
	ldr	r3, [r5, #8]
	movs	r7, #36
	adds	r0, r2, r3
	rsb	r0, r9, r0
	bl	libaroma_px(PLT)
	sub	r8, r0, #16
	mov	r0, r9
	bl	libaroma_px(PLT)
	ldr	r1, [sp, #48]
	mov	r2, r8
	str	r0, [sp]
	mov	r3, r6
	ldr	r0, [sp, #64]
	str	r1, [sp, #8]
	ldr	r1, [sp, #60]
	str	r0, [sp, #12]
	mov	r0, r4
	str	r7, [sp, #4]
	str	r1, [sp, #16]
	movs	r1, #1
	bl	libaroma_ctl_button(PLT)
	ldr	r2, [sp, #56]
	cbz	r2, .L56
	mov	r0, r2
	bl	libaroma_ctl_button_width(PLT)
	mov	r9, r0
	bl	libaroma_px(PLT)
	rsb	r8, r0, r8
	mov	r0, r9
	bl	libaroma_px(PLT)
	mov	r3, r6
	ldr	r6, [sp, #56]
	stmia	sp, {r0, r7}
	mov	r2, r8
	mov	r0, r4
	movs	r1, #2
	str	r6, [sp, #8]
	ldr	r6, [sp, #64]
	str	r6, [sp, #12]
	ldr	r6, [sp, #60]
	str	r6, [sp, #16]
	bl	libaroma_ctl_button(PLT)
.L56:
	mov	r0, r4
	movs	r1, #7
	movs	r2, #200
	add	r6, sp, #80
	bl	libaroma_window_anishow(PLT)
	tst	fp, #8
	bne	.L59
.L63:
	mov	r0, r4
	mov	r1, r6
	bl	libaroma_window_pool(PLT)
	ldrb	r3, [sp, #80]	@ zero_extendqisi2
	lsrs	r2, r0, #24
	cmp	r3, #67
	beq	.L63
	cmp	r2, #1
	bne	.L63
	uxth	r0, r0
	cmp	r0, #1
	beq	.L61
	cmp	r0, #2
	bne	.L63
.L62:
	movw	r0, #37856
	movs	r5, #2
	movt	r0, 4
	bl	usleep(PLT)
	mov	r0, r4
	bl	libaroma_dialog_free(PLT)
	mov	r0, r5
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L96:
	uxth	r0, r0
	cmp	r0, #1
	beq	.L61
	cmp	r0, #2
	beq	.L62
.L59:
	mov	r0, r4
	mov	r1, r6
	bl	libaroma_window_pool(PLT)
	ldrb	r3, [sp, #80]	@ zero_extendqisi2
	lsrs	r2, r0, #24
	cmp	r3, #67
	beq	.L74
	cmp	r2, #1
	beq	.L96
	cmp	r3, #6
	bne	.L59
	ldrb	r3, [sp, #81]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L59
	ldr	r1, [sp, #88]
	ldr	r0, [r5]
	cmp	r1, r0
	blt	.L74
	ldr	r3, [sp, #92]
	ldr	r2, [r5, #4]
	cmp	r3, r2
	blt	.L74
	ldr	r7, [r5, #12]
	add	r2, r2, r7
	cmp	r3, r2
	ble	.L97
.L74:
	mov	r5, #-1
	mov	r0, r4
	bl	libaroma_dialog_free(PLT)
	mov	r0, r5
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L61:
	movw	r0, #37856
	movs	r5, #1
	movt	r0, 4
	bl	usleep(PLT)
	mov	r0, r4
	bl	libaroma_dialog_free(PLT)
	mov	r0, r5
	add	sp, sp, #108
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L69:
	str	r6, [sp, #52]
	b	.L51
.L95:
	mov	r1, r4
	movs	r0, #0
	bl	libaroma_colorget(PLT)
	ldrh	r0, [r0, #8]
	movs	r1, #2
	str	r1, [sp, #64]
	str	r0, [sp, #60]
	b	.L52
.L97:
	ldr	r3, [r5, #8]
	add	r3, r3, r0
	cmp	r1, r3
	ble	.L59
	b	.L74
	.size	libaroma_dialog_confirm, .-libaroma_dialog_confirm
	.section	.text.libaroma_dialog_list,"ax",%progbits
	.align	2
	.global	libaroma_dialog_list
	.thumb
	.thumb_func
	.type	libaroma_dialog_list, %function
libaroma_dialog_list:
	@ args = 4, pretend = 0, frame = 160
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	sub	sp, sp, #204
	ldrb	r4, [sp, #240]	@ zero_extendqisi2
	mov	r5, r3
	str	r1, [sp, #64]
	str	r2, [sp, #68]
	str	r4, [sp, #60]
	str	r0, [sp, #56]
	bl	libaroma_wm(PLT)
	ldr	r4, [r0, #56]
	movs	r0, #58
	bl	libaroma_dp(PLT)
	ldr	r9, .L157
	subs	r4, r4, r0
	movs	r0, #48
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #56]
	subs	r0, r4, r0
.LPIC2:
	add	r9, pc
	str	r0, [sp, #76]
	cmp	r1, #0
	beq	.L120
	mov	r2, #9437184
	movs	r3, #100
	str	r2, [sp]
	mov	r0, r1
	str	r3, [sp, #4]
	movs	r2, #0
	ldr	r1, [sp, #76]
	movs	r3, #6
	bl	libaroma_ctl_label_height(PLT)
	str	r0, [sp, #52]
.L99:
	movs	r0, #100
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #52]
	mov	r3, r5
	ldr	r2, [sp, #60]
	add	r1, r1, r0
	mov	r0, r4
	adds	r1, r1, #10
	bl	libaroma_dialog_window(PLT)
	str	r0, [sp, #44]
	bl	libaroma_dialog_data(PLT)
	ldr	r1, [sp, #44]
	str	r0, [sp, #48]
	movs	r0, #0
	bl	libaroma_colorget(PLT)
	ldrh	r0, [r0, #24]
	ldr	r1, [sp, #44]
	str	r0, [sp, #84]
	movs	r0, #0
	bl	libaroma_colorget(PLT)
	ldr	r4, [sp, #60]
	ldrh	r0, [r0, #24]
	and	r3, r4, #4
	str	r0, [sp, #72]
	and	r2, r3, #255
	cmp	r3, #0
	bne	.L150
	str	r2, [sp, #80]
.L100:
	ldr	r4, [sp, #48]
	movs	r6, #0
	movs	r7, #10
	add	r10, sp, #96
	mov	fp, #24576
	ldr	r0, [r4]
	bl	libaroma_px(PLT)
	mov	r5, r0
	ldr	r0, [r4, #4]
	bl	libaroma_px(PLT)
	mov	r8, r0
	ldr	r0, [sp, #52]
	add	r8, r8, #44
	bl	libaroma_px(PLT)
	add	r8, r8, r0
	ldr	r0, [r4, #8]
	bl	libaroma_px(PLT)
	ldr	r1, [sp, #44]
	mov	r4, r0
	mov	r0, r6
	bl	libaroma_colorget(PLT)
	str	r4, [sp]
	mov	r2, r5
	str	r7, [sp, #4]
	movs	r4, #128
	str	r6, [sp, #8]
	mov	r3, r8
	str	r6, [sp, #12]
	movw	r1, #999
	ldrh	r5, [r0, #14]
	add	r8, sp, #88
	str	r4, [sp, #20]
	mov	r4, #-1
	ldr	r0, [sp, #44]
	str	r5, [sp, #16]
	bl	libaroma_ctl_list(PLT)
	ldr	r2, .L157+4
	mov	r5, r0
	movs	r1, #100
	mov	r0, r10
	movs	r3, #1
	str	r6, [sp, #88]
.LPIC1:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r1, r7
	mov	r2, r6
	mov	r3, r10
	str	r4, [sp, #12]
	str	r6, [sp]
	mov	r0, r5
	str	r6, [sp, #4]
	mov	r7, r4
	str	fp, [sp, #8]
	movs	r4, #1
	bl	libaroma_listitem_check(PLT)
	ldr	r2, .L157+8
	mov	r1, r0
	mov	r3, r8
	mov	r0, r5
	ldr	r2, [r9, r2]
	ldr	r9, .L157+12
	str	r2, [sp, #40]
.LPIC3:
	add	r9, pc
	bl	libaroma_listitem_check_set_cb(PLT)
	b	.L101
.L103:
	adds	r4, r4, #1
	movs	r1, #100
	mov	r3, r4
	mov	r2, r9
	mov	r0, r10
	bl	snprintf(PLT)
	mov	r2, #24576
	add	r1, r4, #9
	str	r2, [sp, #8]
	mov	r3, r10
	movs	r2, #0
	str	r6, [sp]
	str	r6, [sp, #4]
	mov	r0, r5
	str	r7, [sp, #12]
	bl	libaroma_listitem_check(PLT)
	mov	fp, r0
	ldr	r2, [sp, #40]
	mov	r0, r5
	mov	r1, fp
	mov	r3, r8
	bl	libaroma_listitem_check_set_cb(PLT)
	cmp	r4, #16
	beq	.L151
.L101:
	cmp	r4, #24
	bne	.L103
	mov	r0, r5
	bl	libaroma_ctl_scroll_get_height(PLT)
	mov	r4, r0
	bl	libaroma_wm(PLT)
	ldr	r6, [r0, #60]
	movs	r0, #160
	bl	libaroma_dp(PLT)
	ldr	r3, [sp, #52]
	add	r0, r0, r3
	subs	r6, r6, r0
	cmp	r4, r6
	bgt	.L152
.L104:
	movs	r0, #100
	bl	libaroma_dp(PLT)
	ldr	r2, [sp, #52]
	ldr	r1, [sp, #48]
	add	r0, r0, r2
	adds	r3, r0, r4
	str	r3, [r1, #12]
	bl	libaroma_wm(PLT)
	ldr	r2, [sp, #48]
	ldr	r1, [sp, #48]
	ldr	r3, [r2, #12]
	ldr	r2, [r0, #60]
	ldr	r0, [r1]
	asrs	r3, r3, #1
	rsb	r3, r3, r2, asr #1
	str	r3, [r1, #4]
	bl	libaroma_px(PLT)
	ldr	r2, [sp, #48]
	mov	r7, r0
	ldr	r0, [r2, #4]
	bl	libaroma_px(PLT)
	mov	r8, r0
	ldr	r0, [sp, #52]
	bl	libaroma_px(PLT)
	ldr	r3, [sp, #48]
	add	r8, r8, #44
	add	r8, r8, r0
	ldr	r0, [r3, #8]
	bl	libaroma_px(PLT)
	mov	r6, r0
	adds	r0, r4, #5
	bl	libaroma_px(PLT)
	mov	r2, r8
	str	r0, [sp]
	mov	r1, r7
	mov	r3, r6
	mov	r0, r5
	bl	libaroma_control_resize(PLT)
	ldr	r4, [sp, #56]
	cbz	r4, .L105
	ldr	r4, [sp, #48]
	mov	r7, #9437184
	ldr	r0, [r4]
	bl	libaroma_px(PLT)
	mov	r8, r0
	ldr	r0, [r4, #4]
	bl	libaroma_px(PLT)
	mov	r6, r0
	ldr	r0, [sp, #76]
	bl	libaroma_px(PLT)
	mov	r4, r0
	ldr	r0, [sp, #52]
	adds	r6, r6, #24
	adds	r0, r0, #10
	bl	libaroma_px(PLT)
	str	r4, [sp, #4]
	movs	r1, #0
	ldr	r4, [sp, #84]
	add	r3, r8, #24
	str	r0, [sp, #8]
	movs	r0, #6
	str	r6, [sp]
	movs	r6, #100
	str	r4, [sp, #12]
	movs	r4, #10
	str	r1, [sp, #16]
	mov	r1, r4
	str	r0, [sp, #20]
	ldr	r2, [sp, #56]
	ldr	r0, [sp, #44]
	str	r7, [sp, #24]
	str	r6, [sp, #28]
	str	r4, [sp, #32]
	bl	libaroma_ctl_label_valign(PLT)
.L105:
	ldr	r4, [sp, #48]
	ldr	r0, [r4, #4]
	ldr	r3, [r4, #12]
	add	r0, r0, r3
	bl	libaroma_px(PLT)
	ldr	r1, [sp, #64]
	mov	r4, r0
	cmp	r1, #0
	beq	.L107
	mov	r0, r1
	subs	r4, r4, #52
	bl	libaroma_ctl_button_width(PLT)
	ldr	r3, [sp, #48]
	mov	r8, r0
	movs	r6, #36
	ldr	r2, [r3]
	ldr	r3, [r3, #8]
	adds	r0, r2, r3
	rsb	r0, r8, r0
	bl	libaroma_px(PLT)
	sub	r7, r0, #16
	mov	r0, r8
	bl	libaroma_px(PLT)
	ldr	r1, [sp, #64]
	mov	r2, r7
	str	r0, [sp]
	mov	r3, r4
	ldr	r0, [sp, #44]
	str	r1, [sp, #8]
	ldr	r1, [sp, #80]
	str	r6, [sp, #4]
	str	r1, [sp, #12]
	ldr	r1, [sp, #72]
	str	r1, [sp, #16]
	movs	r1, #1
	bl	libaroma_ctl_button(PLT)
	ldr	r2, [sp, #68]
	cbz	r2, .L107
	mov	r0, r2
	bl	libaroma_ctl_button_width(PLT)
	mov	r8, r0
	bl	libaroma_px(PLT)
	subs	r7, r7, r0
	mov	r0, r8
	bl	libaroma_px(PLT)
	mov	r3, r4
	ldr	r4, [sp, #68]
	stmia	sp, {r0, r6}
	mov	r2, r7
	ldr	r0, [sp, #44]
	movs	r1, #2
	str	r4, [sp, #8]
	ldr	r4, [sp, #80]
	str	r4, [sp, #12]
	ldr	r4, [sp, #72]
	str	r4, [sp, #16]
	bl	libaroma_ctl_button(PLT)
.L107:
	movs	r1, #0
	ldr	r0, [sp, #44]
	mov	r2, r1
	bl	libaroma_window_anishow(PLT)
	ldr	r1, [sp, #88]
	cmp	r1, #0
	beq	.L109
	mov	r0, r5
	movs	r2, #0
	bl	libaroma_ctl_list_scroll_to_item(PLT)
	ldr	r5, [sp, #60]
	lsls	r2, r5, #28
	bpl	.L115
.L111:
	ldr	r0, [sp, #44]
	mov	r1, r10
	bl	libaroma_window_pool(PLT)
	ldrb	r3, [sp, #96]	@ zero_extendqisi2
	lsrs	r2, r0, #24
	cmp	r3, #67
	beq	.L128
	cmp	r2, #1
	beq	.L153
	cmp	r3, #6
	bne	.L111
	ldrb	r3, [sp, #97]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L111
	ldr	r4, [sp, #48]
	ldr	r1, [sp, #104]
	ldr	r0, [r4]
	cmp	r1, r0
	blt	.L128
	ldr	r3, [sp, #108]
	ldr	r2, [r4, #4]
	cmp	r3, r2
	blt	.L128
	ldr	r4, [r4, #12]
	add	r2, r2, r4
	cmp	r3, r2
	ble	.L154
.L128:
	mov	r4, #-1
	b	.L114
.L156:
	uxth	r0, r0
	cmp	r0, #1
	beq	.L113
	cmp	r0, #2
	beq	.L128
.L115:
	ldr	r0, [sp, #44]
	mov	r1, r10
	bl	libaroma_window_pool(PLT)
	ldrb	r3, [sp, #96]	@ zero_extendqisi2
	lsrs	r2, r0, #24
	cmp	r3, #67
	beq	.L115
	cmp	r2, #1
	bne	.L115
	b	.L156
.L113:
	ldr	r3, [sp, #88]
	cmp	r3, #0
	beq	.L128
	ldr	r4, [r3, #8]
	subs	r4, r4, #10
.L114:
	ldr	r0, [sp, #44]
	bl	libaroma_dialog_free(PLT)
	mov	r0, r4
	add	sp, sp, #204
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L153:
	uxth	r0, r0
	cmp	r0, #1
	beq	.L113
	cmp	r0, #2
	bne	.L111
	b	.L128
.L120:
	str	r1, [sp, #52]
	b	.L99
.L150:
	movs	r0, #0
	ldr	r1, [sp, #44]
	bl	libaroma_colorget(PLT)
	ldrh	r0, [r0, #8]
	movs	r5, #2
	str	r5, [sp, #80]
	str	r0, [sp, #72]
	b	.L100
.L152:
	bl	libaroma_wm(PLT)
	ldr	r4, [r0, #60]
	movs	r0, #160
	bl	libaroma_dp(PLT)
	ldr	r1, [sp, #52]
	add	r0, r0, r1
	subs	r4, r4, r0
	b	.L104
.L154:
	ldr	r5, [sp, #48]
	ldr	r3, [r5, #8]
	add	r3, r3, r0
	cmp	r1, r3
	ble	.L111
	b	.L128
.L151:
	mov	r1, fp
	mov	r0, r5
	movs	r2, #1
	bl	libaroma_listitem_set_selected(PLT)
	b	.L103
.L109:
	ldr	r4, [sp, #60]
	lsls	r3, r4, #28
	bmi	.L111
	b	.L115
.L158:
	.align	2
.L157:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	.LC0-(.LPIC1+4)
	.word	_libaroma_dialog_list_simple_option_cb(GOT)
	.word	.LC0-(.LPIC3+4)
	.size	libaroma_dialog_list, .-libaroma_dialog_list
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"Checkbox Number %i\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
