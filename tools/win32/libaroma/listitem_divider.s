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
	.file	"listitem_divider.c"
	.section	.text._libaroma_listitem_divider_message,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_divider_message
	.thumb
	.thumb_func
	.type	_libaroma_listitem_divider_message, %function
_libaroma_listitem_divider_message:
	@ args = 8, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	bx	lr
	.size	_libaroma_listitem_divider_message, .-_libaroma_listitem_divider_message
	.section	.text._libaroma_listitem_divider_destroy,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_divider_destroy
	.thumb
	.thumb_func
	.type	_libaroma_listitem_divider_destroy, %function
_libaroma_listitem_divider_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_libaroma_listitem_divider_destroy, .-_libaroma_listitem_divider_destroy
	.section	.text._libaroma_listitem_divider_draw,"ax",%progbits
	.align	2
	.global	_libaroma_listitem_divider_draw
	.thumb
	.thumb_func
	.type	_libaroma_listitem_divider_draw, %function
_libaroma_listitem_divider_draw:
	@ args = 4, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #44
	ldr	r5, .L17
	ldr	r4, [r1, #20]
.LPIC0:
	add	r5, pc
	ldrb	r7, [sp, #72]	@ zero_extendqisi2
	cmp	r4, r5
	beq	.L14
.L3:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L14:
	mov	r0, r3
	and	r7, r7, #16
	ldrh	r4, [r1, #16]
	mov	r6, r2
	str	r3, [sp, #36]
	and	r5, r7, #255
	bl	libaroma_color_isdark(PLT)
	movw	r1, #57083
	movw	r2, #21162
	cmp	r0, #0
	ite	eq
	moveq	r8, r1
	movne	r8, r2
	ldr	r3, [sp, #36]
	cmp	r7, #0
	bne	.L3
	lsls	r2, r4, #23
	bmi	.L15
	and	r4, r4, #8
	uxth	r4, r4
	cmp	r4, #0
	bne	.L16
.L9:
	ldr	r3, [r6, #4]
	movs	r0, #1
	movs	r5, #255
	asr	r9, r3, r0
	bl	libaroma_dp(PLT)
	ldr	r3, [r6]
	sub	r9, r9, r0, asr #1
	movs	r0, #1
	subs	r7, r3, r4
	bl	libaroma_dp(PLT)
	mov	r2, r9
	str	r0, [sp]
	mov	r3, r7
	str	r8, [sp, #4]
	mov	r0, r6
	mov	r1, r4
	str	r5, [sp, #8]
	bl	libaroma_draw_rect(PLT)
	b	.L3
.L15:
	mov	r1, r3
	mov	r0, r8
	movs	r2, #30
	movs	r4, #255
	bl	libaroma_alpha(PLT)
	ldr	r7, [r6, #4]
	mov	r8, r0
	ldr	r3, [r6]
	mov	r1, r5
	mov	r2, r5
	mov	r0, r6
	str	r7, [sp]
	str	r8, [sp, #4]
	str	r4, [sp, #8]
	bl	libaroma_draw_rect(PLT)
	ldr	r9, [r6, #4]
	movs	r0, #1
	bl	libaroma_dp(PLT)
	ldr	r7, [r6]
	rsb	r9, r0, r9
	movs	r0, #1
	bl	libaroma_dp(PLT)
	movs	r1, #20
	mov	r3, r7
	mov	r2, r9
	str	r0, [sp]
	str	r1, [sp, #8]
	mov	r0, r6
	mov	r1, r5
	str	r5, [sp, #4]
	bl	libaroma_draw_rect(PLT)
	ldr	r7, [r6]
	movs	r0, #4
	bl	libaroma_dp(PLT)
	mov	r1, r5
	mov	r9, r0
	movs	r2, #40
	mov	r0, r8
	bl	libaroma_alpha(PLT)
	mov	r1, r5
	str	r0, [sp, #4]
	str	r9, [sp]
	mov	r3, r7
	str	r8, [sp, #8]
	mov	r0, r6
	str	r4, [sp, #20]
	mov	r2, r5
	str	r4, [sp, #24]
	str	r5, [sp, #12]
	str	r5, [sp, #16]
	str	r5, [sp, #28]
	bl	libaroma_gradient_ex1(PLT)
	b	.L3
.L16:
	movs	r0, #72
	bl	libaroma_dp(PLT)
	mov	r4, r0
	b	.L9
.L18:
	.align	2
.L17:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	_libaroma_listitem_divider_draw, .-_libaroma_listitem_divider_draw
	.section	.text.libaroma_listitem_isdivider,"ax",%progbits
	.align	2
	.global	libaroma_listitem_isdivider
	.thumb
	.thumb_func
	.type	libaroma_listitem_isdivider, %function
libaroma_listitem_isdivider:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L20
	ldr	r3, .L22
	ldr	r0, [r0, #20]
.LPIC1:
	add	r3, pc
	subs	r0, r0, r3
	clz	r0, r0
	lsrs	r0, r0, #5
.L20:
	bx	lr
.L23:
	.align	2
.L22:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	libaroma_listitem_isdivider, .-libaroma_listitem_isdivider
	.section	.text.libaroma_listitem_divider,"ax",%progbits
	.align	2
	.global	libaroma_listitem_divider
	.thumb
	.thumb_func
	.type	libaroma_listitem_divider, %function
libaroma_listitem_divider:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #16
	mov	r6, r1
	mov	r5, r2
	mov	r7, r3
	mov	r8, r0
	bl	libaroma_ctl_list_is_valid(PLT)
	cbz	r0, .L25
	movs	r0, #8
	movs	r4, #0
	bl	libaroma_dp(PLT)
	ldr	lr, .L28
	movw	r3, #65534
	mov	r2, r0
	str	r7, [sp, #8]
	mov	r0, r8
	mov	r1, r6
.LPIC2:
	add	lr, pc
	ands	r3, r3, r5
	str	lr, [sp, #4]
	str	r4, [sp]
	bl	libaroma_ctl_list_add_item_internal(PLT)
.L25:
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L29:
	.align	2
.L28:
	.word	.LANCHOR0-(.LPIC2+4)
	.size	libaroma_listitem_divider, .-libaroma_listitem_divider
	.section	.data.rel._libaroma_listitem_divider_handler,"aw",%progbits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_listitem_divider_handler, %object
	.size	_libaroma_listitem_divider_handler, 12
_libaroma_listitem_divider_handler:
	.word	_libaroma_listitem_divider_message
	.word	_libaroma_listitem_divider_draw
	.word	_libaroma_listitem_divider_destroy
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
