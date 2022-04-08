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
	.file	"time.c"
	.section	.text.libaroma_timer_init,"ax",%progbits
	.align	2
	.global	libaroma_timer_init
	.thumb
	.thumb_func
	.type	libaroma_timer_init, %function
libaroma_timer_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, .L2
	movs	r3, #1
	mov	r0, r3
.LPIC0:
	add	r2, pc
	strb	r3, [r2]
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LANCHOR0-(.LPIC0+4)
	.size	libaroma_timer_init, .-libaroma_timer_init
	.section	.text.libaroma_timer_release,"ax",%progbits
	.align	2
	.global	libaroma_timer_release
	.thumb
	.thumb_func
	.type	libaroma_timer_release, %function
libaroma_timer_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L5
	movs	r2, #0
	movs	r0, #1
.LPIC1:
	add	r3, pc
	strb	r2, [r3]
	bx	lr
.L6:
	.align	2
.L5:
	.word	.LANCHOR0-(.LPIC1+4)
	.size	libaroma_timer_release, .-libaroma_timer_release
	.section	.text.libaroma_extern_tick,"ax",%progbits
	.align	2
	.global	libaroma_extern_tick
	.thumb
	.thumb_func
	.type	libaroma_extern_tick, %function
libaroma_extern_tick:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	movs	r0, #1
	mov	r1, sp
	bl	clock_gettime(PLT)
	cbnz	r0, .L9
	ldr	r3, [sp, #4]
	movw	r2, #56963
	movt	r2, 17179
	ldr	r1, [sp]
	mov	r0, #1000
	smull	r4, r2, r2, r3
	asrs	r3, r3, #31
	rsb	r3, r3, r2, asr #18
	mla	r0, r0, r1, r3
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L9:
	movs	r0, #0
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
	.size	libaroma_extern_tick, .-libaroma_extern_tick
	.section	.text.libaroma_extern_sleep,"ax",%progbits
	.align	2
	.global	libaroma_extern_sleep
	.thumb
	.thumb_func
	.type	libaroma_extern_sleep, %function
libaroma_extern_sleep:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r3, #1000
	mul	r0, r3, r0
	b	usleep(PLT)
	.size	libaroma_extern_sleep, .-libaroma_extern_sleep
	.section	.bss._libaroma_timer_active,"aw",%nobits
.LANCHOR0 = . + 0
	.type	_libaroma_timer_active, %object
	.size	_libaroma_timer_active, 1
_libaroma_timer_active:
	.space	1
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
