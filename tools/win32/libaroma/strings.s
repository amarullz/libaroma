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
	.file	"strings.c"
	.section	.text.libaroma_hash,"ax",%progbits
	.align	2
	.global	libaroma_hash
	.thumb
	.thumb_func
	.type	libaroma_hash, %function
libaroma_hash:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	strlen(PLT)
	mov	r1, r4
	mov	r2, r0
	pop	{r4, lr}
	movs	r0, #0
	b	adler32(PLT)
	.size	libaroma_hash, .-libaroma_hash
	.section	.text.libaroma_stristr,"ax",%progbits
	.align	2
	.global	libaroma_stristr
	.thumb
	.thumb_func
	.type	libaroma_stristr, %function
libaroma_stristr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	subs	r9, r2, #0
	ble	.L11
	mov	r4, r0
	movs	r6, #0
	mov	r8, r1
	add	r9, r9, r4
	bl	__ctype_tolower_loc(PLT)
	mov	r5, r6
	ldr	r7, [r0]
	b	.L7
.L5:
	cmp	r4, r9
	beq	.L11
.L7:
	ldrb	r3, [r8, r5]	@ zero_extendqisi2
	mov	r1, r4
	ldrb	r2, [r4], #1	@ zero_extendqisi2
	ldr	r3, [r7, r3, lsl #2]
	ldr	r2, [r7, r2, lsl #2]
	cmp	r2, r3
	itt	ne
	movne	r6, #0
	movne	r5, r6
	bne	.L5
	adds	r5, r5, #1
	mov	r0, r8
	cmp	r6, #0
	it	eq
	moveq	r6, r1
	bl	strlen(PLT)
	cmp	r5, r0
	bne	.L5
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L11:
	movs	r6, #0
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
	.size	libaroma_stristr, .-libaroma_stristr
	.section	.text.libaroma_lang_init,"ax",%progbits
	.align	2
	.global	libaroma_lang_init
	.thumb
	.thumb_func
	.type	libaroma_lang_init, %function
libaroma_lang_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r3, #0
	ldr	r4, .L19
.LPIC8:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L18
	mov	r0, r3
	pop	{r4, pc}
.L18:
	bl	libaroma_sarray(PLT)
	movs	r3, #1
	str	r0, [r4]
	mov	r0, r3
	pop	{r4, pc}
.L20:
	.align	2
.L19:
	.word	.LANCHOR0-(.LPIC8+4)
	.size	libaroma_lang_init, .-libaroma_lang_init
	.section	.text.libaroma_lang_release,"ax",%progbits
	.align	2
	.global	libaroma_lang_release
	.thumb
	.thumb_func
	.type	libaroma_lang_release, %function
libaroma_lang_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r4, .L25
.LPIC10:
	add	r4, pc
	ldr	r0, [r4]
	cbz	r0, .L22
	bl	libaroma_sarray_free(PLT)
	movs	r0, #1
	movs	r3, #0
	str	r3, [r4]
.L22:
	pop	{r4, pc}
.L26:
	.align	2
.L25:
	.word	.LANCHOR0-(.LPIC10+4)
	.size	libaroma_lang_release, .-libaroma_lang_release
	.section	.text.libaroma_lang_get,"ax",%progbits
	.align	2
	.global	libaroma_lang_get
	.thumb
	.thumb_func
	.type	libaroma_lang_get, %function
libaroma_lang_get:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L29
	mov	r1, r0
.LPIC12:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L28
	b	libaroma_sarray_get_string(PLT)
.L28:
	bx	lr
.L30:
	.align	2
.L29:
	.word	.LANCHOR0-(.LPIC12+4)
	.size	libaroma_lang_get, .-libaroma_lang_get
	.section	.text.libaroma_lang_set,"ax",%progbits
	.align	2
	.global	libaroma_lang_set
	.thumb
	.thumb_func
	.type	libaroma_lang_set, %function
libaroma_lang_set:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L34
	push	{r4}
	mov	r4, r0
.LPIC13:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L32
	mov	r2, r1
	mov	r1, r4
	ldr	r4, [sp], #4
	b	libaroma_sarray_set_string(PLT)
.L32:
	ldr	r4, [sp], #4
	bx	lr
.L35:
	.align	2
.L34:
	.word	.LANCHOR0-(.LPIC13+4)
	.size	libaroma_lang_set, .-libaroma_lang_set
	.section	.text.libaroma_lang_delete,"ax",%progbits
	.align	2
	.global	libaroma_lang_delete
	.thumb
	.thumb_func
	.type	libaroma_lang_delete, %function
libaroma_lang_delete:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L38
	mov	r1, r0
.LPIC14:
	add	r3, pc
	ldr	r0, [r3]
	cbz	r0, .L37
	b	libaroma_sarray_delete(PLT)
.L37:
	bx	lr
.L39:
	.align	2
.L38:
	.word	.LANCHOR0-(.LPIC14+4)
	.size	libaroma_lang_delete, .-libaroma_lang_delete
	.section	.text.libaroma_lang_cleanup,"ax",%progbits
	.align	2
	.global	libaroma_lang_cleanup
	.thumb
	.thumb_func
	.type	libaroma_lang_cleanup, %function
libaroma_lang_cleanup:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	bl	libaroma_lang_release(PLT)
	pop	{r3, lr}
	b	libaroma_lang_init(PLT)
	.size	libaroma_lang_cleanup, .-libaroma_lang_cleanup
	.section	.bss._libaroma_language,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_libaroma_language, %object
	.size	_libaroma_language, 4
_libaroma_language:
	.space	4
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
