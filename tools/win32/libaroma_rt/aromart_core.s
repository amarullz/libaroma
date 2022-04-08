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
	.file	"aromart_core.c"
	.section	.text.lart,"ax",%progbits
	.align	2
	.global	lart
	.thumb
	.thumb_func
	.type	lart, %function
lart:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L2
.LPIC0:
	add	r0, pc
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	lart, .-lart
	.section	.text.lart_init_runtime,"ax",%progbits
	.align	2
	.global	lart_init_runtime
	.thumb
	.thumb_func
	.type	lart_init_runtime, %function
lart_init_runtime:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L10
	push	{r4, lr}
	sub	sp, sp, #16
.LPIC1:
	add	r0, pc
	bl	system(PLT)
	ldr	r0, .L10+4
.LPIC2:
	add	r0, pc
	bl	system(PLT)
	mov	r0, sp
	bl	pipe(PLT)
	add	r0, sp, #8
	bl	pipe(PLT)
	bl	lart(PLT)
	mov	r4, r0
	bl	getpid(PLT)
	str	r0, [r4, #4]
	bl	fork(PLT)
	mov	r4, r0
	cbz	r0, .L9
	bl	lart(PLT)
	str	r4, [r0]
	bl	lart(PLT)
	ldr	r3, [sp]
	str	r3, [r0, #8]
	bl	lart(PLT)
	ldr	r3, [sp, #12]
	str	r3, [r0, #12]
	ldr	r0, [sp, #4]
	bl	close(PLT)
	ldr	r0, [sp, #8]
	bl	close(PLT)
	movs	r0, #1
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L9:
	bl	lart(PLT)
	mov	r4, r0
	bl	getpid(PLT)
	str	r0, [r4]
	bl	lart(PLT)
	ldr	r3, [sp, #8]
	str	r3, [r0, #8]
	bl	lart(PLT)
	ldr	r3, [sp, #4]
	str	r3, [r0, #12]
	ldr	r0, [sp, #12]
	bl	close(PLT)
	ldr	r0, [sp]
	bl	close(PLT)
	movs	r0, #2
	add	sp, sp, #16
	@ sp needed
	pop	{r4, pc}
.L11:
	.align	2
.L10:
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.size	lart_init_runtime, .-lart_init_runtime
	.section	.text.lart_set_process_name,"ax",%progbits
	.align	2
	.global	lart_set_process_name
	.thumb
	.thumb_func
	.type	lart_set_process_name, %function
lart_set_process_name:
	@ args = 0, pretend = 0, frame = 256
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r0
	sub	sp, sp, #264
	cbz	r0, .L12
	ldr	r5, .L21
.LPIC3:
	add	r5, pc
	ldr	r3, [r5]
	cbz	r3, .L12
	bl	getpid(PLT)
	ldr	r2, .L21+4
	add	r6, sp, #8
	mov	r3, r4
	mov	r1, #256
	str	r0, [sp]
	mov	r0, r6
.LPIC4:
	add	r2, pc
	bl	snprintf(PLT)
	mov	r0, r6
	bl	libaroma_debug_set_tag(PLT)
	ldr	r0, [r5]
	mov	r3, r4
	ldr	r2, .L21+8
	movs	r1, #255
	movs	r4, #0
	ldr	r0, [r0]
.LPIC6:
	add	r2, pc
	bl	snprintf(PLT)
	ldr	r1, [r5]
	mov	r2, r4
	movs	r0, #15
	mov	r3, r4
	ldr	r1, [r1]
	str	r4, [sp]
	bl	prctl(PLT)
.L12:
	add	sp, sp, #264
	@ sp needed
	pop	{r4, r5, r6, pc}
.L22:
	.align	2
.L21:
	.word	.LANCHOR1-(.LPIC3+4)
	.word	.LC2-(.LPIC4+4)
	.word	.LC3-(.LPIC6+4)
	.size	lart_set_process_name, .-lart_set_process_name
	.section	.text.lart_start,"ax",%progbits
	.align	2
	.global	lart_start
	.thumb
	.thumb_func
	.type	lart_start, %function
lart_start:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r5, r1
	ldr	r4, .L29
	mov	r7, r2
	mov	r6, r3
.LPIC8:
	add	r4, pc
	str	r0, [r4]
	bl	lart_init_runtime(PLT)
	cmp	r0, #2
	beq	.L27
	cmp	r0, #1
	beq	.L28
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
.L28:
	ldr	r0, .L29+4
.LPIC10:
	add	r0, pc
	bl	lart_set_process_name(PLT)
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, lr}
	b	lart_app_manager(PLT)
.L27:
	ldr	r0, .L29+8
.LPIC9:
	add	r0, pc
	bl	lart_set_process_name(PLT)
	mov	r1, r6
	mov	r0, r7
	bl	lart_sysui(PLT)
	bl	exit(PLT)
.L30:
	.align	2
.L29:
	.word	.LANCHOR1-(.LPIC8+4)
	.word	.LC5-(.LPIC10+4)
	.word	.LC4-(.LPIC9+4)
	.size	lart_start, .-lart_start
	.section	.bss._lart,"aw",%nobits
	.align	2
.LANCHOR0 = . + 0
	.type	_lart, %object
	.size	_lart, 16
_lart:
	.space	16
	.section	.bss._lart_process_argv,"aw",%nobits
	.align	2
.LANCHOR1 = . + 0
	.type	_lart_process_argv, %object
	.size	_lart_process_argv, 4
_lart_process_argv:
	.space	4
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"rm /tmp/.libaromashm*\000"
	.space	2
.LC1:
	.ascii	"rm /tmp/.aromart*\000"
	.space	2
.LC2:
	.ascii	"%s(%i)\000"
	.space	1
.LC3:
	.ascii	"%s\000"
	.space	1
.LC4:
	.ascii	"aroma.runtime.systemui\000"
	.space	1
.LC5:
	.ascii	"aroma.runtime.manager\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
