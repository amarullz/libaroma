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
	.file	"listitem_caption.c"
	.section	.text._libaroma_listitem_caption_message,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_caption_message
	.thumb
	.thumb_func
	.type	_libaroma_listitem_caption_message, %function
_libaroma_listitem_caption_message:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_libaroma_listitem_caption_message, .-_libaroma_listitem_caption_message
	.section	.text._libaroma_listitem_caption_draw,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_caption_draw
	.thumb
	.thumb_func
	.type	_libaroma_listitem_caption_draw, %function
_libaroma_listitem_caption_draw:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r4, r1
	ldr	r1, .L14
	sub	sp, sp, #68
	mov	r5, r2
	ldr	r3, [r4, #20]
.LPIC0:
	add	r1, pc
	ldrb	r2, [sp, #104]	@ zero_extendqisi2
	cmp	r3, r1
	beq	.L13
.L2:
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L13:
	and	r2, r2, #16
	ldr	r8, [r4, #12]
	and	ip, r2, #255
	cmp	r2, #0
	bne	.L2
	mov	r6, r0
	movs	r0, #12
	ldrh	fp, [r8]
	str	ip, [sp, #44]
	bl	libaroma_dp(PLT)
	ldr	r7, [r5]
	str	r0, [sp, #52]
	movs	r0, #52
	str	r7, [sp, #56]
	bl	libaroma_dp(PLT)
	mov	r9, r0
	movs	r0, #16
	bl	libaroma_dp(PLT)
	str	r0, [sp, #60]
	movs	r0, #12
	bl	libaroma_dp(PLT)
	mov	r10, r0
	ldr	r0, [r8, #4]
	cmp	r0, #0
	beq	.L6
	mov	lr, #137
	mov	r3, #1072
	rsb	r2, r9, r7
	mov	r1, fp
	movt	r3, 145
	str	lr, [sp]
	bl	libaroma_text(PLT)
	mov	r9, r0
	bl	libaroma_text_height(PLT)
	mov	fp, r0
	movs	r0, #12
	add	r10, r10, fp
	bl	libaroma_dp(PLT)
	add	r10, r10, r0
	movs	r0, #2
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #52]
	add	fp, r0, fp, asr #1
	movs	r0, #2
	cmp	r10, r7
	it	lt
	movlt	r10, r7
	rsb	fp, fp, r10, asr #1
	bl	libaroma_dp(PLT)
	ldr	ip, [sp, #44]
	add	r3, fp, r0
	cmp	r9, #0
	beq	.L7
	str	ip, [sp]
	mov	r0, r5
	str	ip, [sp, #4]
	mov	r1, r9
	ldr	r2, [sp, #60]
	str	ip, [sp, #8]
	str	ip, [sp, #12]
	str	ip, [sp, #16]
	str	ip, [sp, #20]
	str	ip, [sp, #24]
	str	ip, [sp, #28]
	str	ip, [sp, #32]
	bl	libaroma_text_draw_ex(PLT)
	mov	r0, r9
	bl	libaroma_text_free(PLT)
.L7:
	ldr	r3, [r8, #8]
	cmp	r10, r3
	beq	.L2
	str	r10, [r8, #8]
	mov	r0, r6
	mov	r1, r4
	mov	r2, r10
	add	sp, sp, #68
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	b	libaroma_ctl_list_item_setheight(PLT)
.L6:
	movs	r0, #12
	bl	libaroma_dp(PLT)
	add	r10, r10, r0
	movs	r0, #2
	bl	libaroma_dp(PLT)
	ldr	r7, [sp, #52]
	movs	r0, #2
	cmp	r10, r7
	it	lt
	movlt	r10, r7
	bl	libaroma_dp(PLT)
	b	.L7
.L15:
	.align	2
.L14:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_listitem_caption_draw, .-_libaroma_listitem_caption_draw
	.section	.text.libaroma_listitem_iscaption,"ax",%progbits
	.align	2
	.global	libaroma_listitem_iscaption
	.thumb
	.thumb_func
	.type	libaroma_listitem_iscaption, %function
libaroma_listitem_iscaption:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L17
	ldr	r3, .L19
	ldr	r0, [r0, #20]
.LPIC1:
	add	r3, pc
	subs	r0, r0, r3
	clz	r0, r0
	lsrs	r0, r0, #5
.L17:
	bx	lr
.L20:
	.align	2
.L19:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	libaroma_listitem_iscaption, .-libaroma_listitem_iscaption
	.section	.text._libaroma_listitem_caption_release_internal,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_caption_release_internal
	.thumb
	.thumb_func
	.type	_libaroma_listitem_caption_release_internal, %function
_libaroma_listitem_caption_release_internal:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	ldr	r0, [r0, #4]
	cbz	r0, .L22
	bl	free(PLT)
.L22:
	mov	r0, r4
	pop	{r4, lr}
	b	free(PLT)
	.size	_libaroma_listitem_caption_release_internal, .-_libaroma_listitem_caption_release_internal
	.section	.text._libaroma_listitem_caption_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_caption_destroy
	.thumb
	.thumb_func
	.type	_libaroma_listitem_caption_destroy, %function
_libaroma_listitem_caption_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L30
	ldr	r3, [r1, #20]
.LPIC2:
	add	r2, pc
	cmp	r3, r2
	beq	.L29
	bx	lr
.L29:
	ldr	r0, [r1, #12]
	b	_libaroma_listitem_caption_release_internal(PLT)
.L31:
	.align	2
.L30:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	_libaroma_listitem_caption_destroy, .-_libaroma_listitem_caption_destroy
	.section	.text.libaroma_listitem_caption_color,"ax",%progbits
	.align	2
	.global	libaroma_listitem_caption_color
	.thumb
	.thumb_func
	.type	libaroma_listitem_caption_color, %function
libaroma_listitem_caption_color:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	mov	r8, r1
	mov	r6, r2
	mov	r7, r3
	mov	r5, r0
	bl	libaroma_ctl_list_is_valid(PLT)
	cmp	r0, #0
	beq	.L35
	movs	r0, #12
	movs	r1, #1
	bl	calloc(PLT)
	mov	r4, r0
	cmp	r0, #0
	beq	.L35
	strh	r7, [r0]	@ movhi
	cbz	r6, .L36
	mov	r0, r6
	bl	__strdup(PLT)
	mov	r6, r0
.L36:
	ldr	r7, [r5, #24]
	movs	r0, #52
	str	r6, [r4, #4]
	bl	libaroma_dp(PLT)
	subs	r7, r7, r0
	movs	r0, #12
	bl	libaroma_dp(PLT)
	cmp	r7, #0
	mov	r6, r0
	ble	.L37
	ldr	r0, [r4, #4]
	cbz	r0, .L37
	movs	r1, #137
	mov	r3, #1072
	mov	r2, r7
	str	r1, [sp]
	movt	r3, 145
	movs	r1, #0
	bl	libaroma_text(PLT)
	mov	r7, r0
	bl	libaroma_text_height(PLT)
	add	r6, r6, r0
	mov	r0, r7
	bl	libaroma_text_free(PLT)
.L37:
	movs	r0, #12
	bl	libaroma_dp(PLT)
	ldr	r3, .L48
	cmp	r6, #0
	ite	ge
	addge	r2, r0, r6
	addlt	r2, r0, #0
	ldr	r1, [sp, #40]
	mov	r0, r5
	str	r2, [r4, #8]
.LPIC3:
	add	r3, pc
	str	r4, [sp]
	str	r1, [sp, #8]
	mov	r1, r8
	str	r3, [sp, #4]
	movs	r3, #0
	bl	libaroma_ctl_list_add_item_internal(PLT)
	mov	r5, r0
	cbz	r5, .L47
.L34:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L35:
	movs	r0, #0
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L47:
	mov	r0, r4
	bl	_libaroma_listitem_caption_release_internal(PLT)
	mov	r0, r5
	b	.L34
.L49:
	.align	2
.L48:
	.word	.LANCHOR0-(.LPIC3+4)
	.size	libaroma_listitem_caption_color, .-libaroma_listitem_caption_color
	.section	.text.libaroma_listitem_caption,"ax",%progbits
	.align	2
	.global	libaroma_listitem_caption
	.thumb
	.thumb_func
	.type	libaroma_listitem_caption, %function
libaroma_listitem_caption:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	mov	r6, r3
	sub	sp, sp, #12
	mov	r4, r1
	mov	r5, r2
	mov	r7, r0
	movs	r1, #0
	bl	libaroma_colorget(PLT)
	mov	r1, r4
	ldrh	r3, [r0, #8]
	mov	r2, r5
	str	r6, [sp]
	mov	r0, r7
	bl	libaroma_listitem_caption_color(PLT)
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
	.size	libaroma_listitem_caption, .-libaroma_listitem_caption
	.section	.data.rel._libaroma_listitem_caption_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_listitem_caption_handler, %object
	.size	_libaroma_listitem_caption_handler, 12
_libaroma_listitem_caption_handler:
	.word	_libaroma_listitem_caption_message
	.word	_libaroma_listitem_caption_draw
	.word	_libaroma_listitem_caption_destroy
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
