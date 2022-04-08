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
	.file	"color_manager.c"
	.section	.text.libaroma_colorset,"ax",%progbits
	.align	2
	.global	libaroma_colorset
	.thumb
	.thumb_func
	.type	libaroma_colorset, %function
libaroma_colorset:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r3, r0
	cbz	r0, .L3
	push	{r4, r5, r6, r7, lr}
	movw	r2, #65535
	movw	r1, #8452
	movw	r4, #29582
	movw	r0, #9406
	movw	lr, #48895
	movw	r7, #11238
	movw	r6, #59164
	movw	r5, #46518
	strh	r0, [r3]	@ movhi
	strh	r2, [r3, #2]	@ movhi
	movs	r0, #1
	strh	r2, [r3, #4]	@ movhi
	strh	r2, [r3, #14]	@ movhi
	strh	r2, [r3, #22]	@ movhi
	strh	lr, [r3, #6]	@ movhi
	strh	r7, [r3, #8]	@ movhi
	strh	r6, [r3, #10]	@ movhi
	strh	r1, [r3, #12]	@ movhi
	strh	r1, [r3, #16]	@ movhi
	strh	r1, [r3, #24]	@ movhi
	strh	r4, [r3, #18]	@ movhi
	strh	r4, [r3, #26]	@ movhi
	strh	r5, [r3, #20]	@ movhi
	pop	{r4, r5, r6, r7, pc}
.L3:
	bx	lr
	.size	libaroma_colorset, .-libaroma_colorset
	.section	.text.libaroma_colorget,"ax",%progbits
	.align	2
	.global	libaroma_colorget
	.thumb
	.thumb_func
	.type	libaroma_colorget, %function
libaroma_colorget:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	mov	r3, r0
	cbz	r0, .L8
	ldr	r0, [r0, #12]
	cbz	r0, .L19
.L9:
	pop	{r3, pc}
.L19:
	ldr	r1, [r3, #8]
.L8:
	cbz	r1, .L10
	ldr	r0, [r1]
	cmp	r0, #0
	bne	.L9
.L10:
	bl	libaroma_wm(PLT)
	cbz	r0, .L11
	bl	libaroma_wm(PLT)
	pop	{r3, pc}
.L11:
	ldr	r0, .L20
.LPIC0:
	add	r0, pc
	b	.L9
.L21:
	.align	2
.L20:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	libaroma_colorget, .-libaroma_colorget
	.section	.bss.__libaroma_fallback_colorset,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	__libaroma_fallback_colorset, %object
	.size	__libaroma_fallback_colorset, 28
__libaroma_fallback_colorset:
	.space	28
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
