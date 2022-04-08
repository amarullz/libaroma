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
	.file	"minutf8.c"
	.section	.text.libaroma_utf8_len,"ax",%progbits
	.align	2
	.global	libaroma_utf8_len
	.thumb
	.thumb_func
	.type	libaroma_utf8_len, %function
libaroma_utf8_len:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r2, r0, #1
	movs	r0, #0
	b	.L2
.L4:
	cmp	r1, #128
	it	ne
	addne	r0, r0, #1
.L2:
	ldrb	r3, [r2, #1]!	@ zero_extendqisi2
	and	r1, r3, #192
	cmp	r3, #0
	bne	.L4
	bx	lr
	.size	libaroma_utf8_len, .-libaroma_utf8_len
	.section	.text.libaroma_utf8c,"ax",%progbits
	.align	2
	.global	libaroma_utf8c
	.thumb
	.thumb_func
	.type	libaroma_utf8c, %function
libaroma_utf8c:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r6, #0
	ldr	lr, .L26
	mov	r7, r6
	movs	r4, #9
.LPIC8:
	add	lr, pc
	b	.L10
.L14:
	ldrb	r5, [lr, r3]	@ zero_extendqisi2
	adds	r6, r6, #1
	add	r4, r4, r5, lsr #4
	eor	r3, r3, r5, lsl #4
	ldrb	r4, [lr, r4]	@ zero_extendqisi2
	uxtb	r3, r3
	orr	r7, r3, r7, lsl #6
	cbz	r4, .L25
.L10:
	ldrb	r3, [r0], #1	@ zero_extendqisi2
	lsls	r4, r4, #4
	add	r4, r4, #256
	cmp	r3, #0
	bne	.L14
	cbz	r1, .L15
	str	r0, [r1]
.L15:
	cbz	r2, .L17
	str	r6, [r2]
	movs	r0, #0
	pop	{r4, r5, r6, r7, pc}
.L25:
	cbz	r1, .L12
	str	r0, [r1]
.L12:
	cbz	r2, .L16
	str	r6, [r2]
	mov	r0, r7
	pop	{r4, r5, r6, r7, pc}
.L17:
	mov	r0, r2
	pop	{r4, r5, r6, r7, pc}
.L16:
	mov	r0, r7
	pop	{r4, r5, r6, r7, pc}
.L27:
	.align	2
.L26:
	.word	.LANCHOR0-(.LPIC8+4)
	.size	libaroma_utf8c, .-libaroma_utf8c
	.section	.text.libaroma_utf8_dec_ex,"ax",%progbits
	.align	2
	.global	libaroma_utf8_dec_ex
	.thumb
	.thumb_func
	.type	libaroma_utf8_dec_ex, %function
libaroma_utf8_dec_ex:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r6, r7}
	add	r1, r0, r1, lsl #2
	ldr	r7, .L35
	movs	r5, #0
	movs	r4, #9
.LPIC10:
	add	r7, pc
.L29:
	ldrb	r3, [r2], #1	@ zero_extendqisi2
	lsls	r4, r4, #4
	add	r4, r4, #256
	cbz	r3, .L28
.L33:
	ldrb	r6, [r7, r3]	@ zero_extendqisi2
	add	r4, r4, r6, lsr #4
	eor	r3, r3, r6, lsl #4
	ldrb	r4, [r7, r4]	@ zero_extendqisi2
	uxtb	r3, r3
	orr	r5, r3, r5, lsl #6
	cmp	r4, #0
	bne	.L29
	cmp	r0, r1
	bcs	.L31
	str	r5, [r0]
	mov	r5, r4
	ldrb	r3, [r2], #1	@ zero_extendqisi2
	lsls	r4, r4, #4
	adds	r0, r0, #4
	add	r4, r4, #256
	cmp	r3, #0
	bne	.L33
.L28:
	pop	{r4, r5, r6, r7}
	bx	lr
.L31:
	str	r4, [r0]
	pop	{r4, r5, r6, r7}
	bx	lr
.L36:
	.align	2
.L35:
	.word	.LANCHOR0-(.LPIC10+4)
	.size	libaroma_utf8_dec_ex, .-libaroma_utf8_dec_ex
	.section	.text.libaroma_utf8_dec,"ax",%progbits
	.align	2
	.global	libaroma_utf8_dec
	.thumb
	.thumb_func
	.type	libaroma_utf8_dec, %function
libaroma_utf8_dec:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r7, r0
	cbz	r0, .L39
	bl	libaroma_utf8_len(PLT)
	adds	r4, r0, #1
	lsls	r5, r4, #2
	mov	r0, r5
	bl	malloc(PLT)
	mov	r6, r0
	cbz	r0, .L40
	mov	r2, r5
	movs	r1, #0
	bl	memset(PLT)
	mov	r0, r6
	mov	r1, r4
	mov	r2, r7
	bl	libaroma_utf8_dec_ex(PLT)
	mov	r0, r6
	pop	{r3, r4, r5, r6, r7, pc}
.L40:
	pop	{r3, r4, r5, r6, r7, pc}
.L39:
	pop	{r3, r4, r5, r6, r7, pc}
	.size	libaroma_utf8_dec, .-libaroma_utf8_dec
	.section	.rodata._libaroma_utf8d,"a",%progbits
	.align	3
.LANCHOR0 = . + 0
	.type	_libaroma_utf8d, %object
	.size	_libaroma_utf8d, 416
_libaroma_utf8d:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	56
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	40
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	24
	.byte	-52
	.byte	-52
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-68
	.byte	-82
	.byte	-98
	.byte	-98
	.byte	-98
	.byte	-98
	.byte	-98
	.byte	-98
	.byte	-98
	.byte	-98
	.byte	-98
	.byte	-98
	.byte	-98
	.byte	-98
	.byte	-114
	.byte	126
	.byte	126
	.byte	111
	.byte	95
	.byte	95
	.byte	95
	.byte	79
	.byte	-49
	.byte	-49
	.byte	-49
	.byte	-49
	.byte	-49
	.byte	-49
	.byte	-49
	.byte	-49
	.byte	-49
	.byte	-49
	.byte	-49
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	8
	.byte	7
	.byte	6
	.byte	4
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	4
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	4
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	8
	.byte	7
	.byte	6
	.byte	4
	.byte	5
	.byte	4
	.byte	3
	.byte	2
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
