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
	.file	"aromart_messaging.c"
	.section	.text.lart_send,"ax",%progbits
	.align	2
	.global	lart_send
	.thumb
	.thumb_func
	.type	lart_send, %function
lart_send:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	sub	sp, sp, #16
	ldr	r5, [sp, #32]
	mov	r4, r3
	mov	r6, r0
	strb	r1, [sp]
	mov	r1, sp
	str	r2, [sp, #4]
	cmp	r3, #0
	it	eq
	moveq	r5, #0
	movs	r2, #12
	str	r5, [sp, #8]
	bl	write(PLT)
	ldr	r2, [sp, #8]
	cbz	r2, .L3
	mov	r0, r6
	mov	r1, r4
	bl	write(PLT)
.L3:
	movs	r0, #1
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, pc}
	.size	lart_send, .-lart_send
	.section	.text.lart_recv,"ax",%progbits
	.align	2
	.global	lart_recv
	.thumb
	.thumb_func
	.type	lart_recv, %function
lart_recv:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	sub	sp, sp, #16
	movs	r4, #0
	mov	r5, r1
	mov	r8, r2
	mov	r1, sp
	movs	r2, #12
	mov	r6, r3
	str	r4, [sp]
	mov	r9, r0
	str	r4, [sp, #4]
	str	r4, [sp, #8]
	bl	read(PLT)
	cmp	r0, #12
	it	ne
	movne	r0, r4
	beq	.L29
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L29:
	ldr	r7, [sp, #8]
	cbnz	r7, .L30
.L12:
	cbz	r6, .L15
	str	r7, [r6]
.L15:
	cbz	r5, .L16
	ldr	r3, [sp, #4]
	str	r3, [r5]
.L16:
	ldrb	r0, [sp]	@ zero_extendqisi2
	add	sp, sp, #16
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L30:
	mov	r0, r7
	movs	r1, #1
	bl	calloc(PLT)
	mov	r10, r0
	mov	r2, r7
	mov	r0, r9
	mov	r1, r10
	bl	read(PLT)
	ldr	r7, [sp, #8]
	cmp	r0, r7
	bne	.L13
	cmp	r8, #0
	beq	.L14
	str	r10, [r8]
	b	.L12
.L13:
	mov	r0, r10
	mov	r7, r8
	bl	free(PLT)
	cmp	r8, #0
	beq	.L12
	str	r4, [r8]
	mov	r7, r4
	b	.L12
.L14:
	mov	r0, r10
	bl	free(PLT)
	b	.L12
	.size	lart_recv, .-lart_recv
	.section	.text.lart_command,"ax",%progbits
	.align	2
	.global	lart_command
	.thumb
	.thumb_func
	.type	lart_command, %function
lart_command:
	@ args = 20, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	sub	sp, sp, #8
	ldr	r4, [sp, #36]
	mov	r8, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r5, [sp, #32]
	ldr	r7, [sp, #40]
	ldr	r6, [sp, #44]
	str	r4, [sp]
	mov	r3, r5
	ldr	r4, [sp, #48]
	bl	lart_send(PLT)
	mov	r0, r8
	mov	r1, r7
	mov	r2, r6
	mov	r3, r4
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, lr}
	b	lart_recv(PLT)
	.size	lart_command, .-lart_command
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
