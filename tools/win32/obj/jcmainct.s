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
	.file	"jcmainct.c"
	.section	.text.process_data_simple_main,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	process_data_simple_main, %function
process_data_simple_main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	mov	r7, r2
	ldr	r4, [r0, #336]
	mov	r10, r3
	sub	sp, sp, #28
	mov	r5, r0
	ldr	r2, [r0, #240]
	ldr	r3, [r4, #8]
	cmp	r3, r2
	bcs	.L1
	ldr	r3, [r4, #12]
	add	r2, r4, #12
	mov	r9, r1
	add	r8, r4, #24
	str	r2, [sp, #20]
	mov	fp, #8
	cmp	r3, #7
	mov	r6, #0
	bls	.L12
	cmp	r3, #8
	bne	.L1
.L16:
	ldr	r3, [r5, #344]
	mov	r0, r5
	mov	r1, r8
	ldr	r3, [r3, #4]
	blx	r3
	ldr	r3, [r4, #16]
	cbz	r0, .L15
	cbz	r3, .L7
	ldr	r3, [r7]
	adds	r3, r3, #1
	str	r3, [r7]
	str	r6, [r4, #16]
.L7:
	ldr	r3, [r4, #8]
	ldr	r2, [r5, #240]
	str	r6, [r4, #12]
	adds	r3, r3, #1
	cmp	r2, r3
	str	r3, [r4, #8]
	bls	.L1
.L12:
	ldr	lr, [r5, #340]
	mov	r0, r5
	ldr	r3, [sp, #20]
	mov	r1, r9
	str	r8, [sp]
	mov	r2, r7
	str	fp, [sp, #8]
	str	r3, [sp, #4]
	mov	r3, r10
	ldr	ip, [lr, #4]
	blx	ip
	ldr	r3, [r4, #12]
	cmp	r3, #8
	beq	.L16
.L1:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
.L15:
	cmp	r3, #0
	bne	.L1
	ldr	r3, [r7]
	movs	r2, #1
	subs	r3, r3, #1
	str	r3, [r7]
	str	r2, [r4, #16]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.size	process_data_simple_main, .-process_data_simple_main
	.section	.text.start_pass_main,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_main, %function
start_pass_main:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #176]
	push	{r4}
	ldr	r2, [r0, #336]
	cbnz	r3, .L17
	str	r3, [r2, #8]
	str	r3, [r2, #12]
	str	r3, [r2, #16]
	str	r1, [r2, #20]
	cbnz	r1, .L21
	ldr	r3, .L23
.LPIC0:
	add	r3, pc
	str	r3, [r2, #4]
.L17:
	ldr	r4, [sp], #4
	bx	lr
.L21:
	ldr	r3, [r0]
	movs	r2, #4
	ldr	r4, [sp], #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L24:
	.align	2
.L23:
	.word	process_data_simple_main-(.LPIC0+4)
	.size	start_pass_main, .-start_pass_main
	.section	.text.jinit_c_main_controller,"ax",%progbits
	.align	2
	.global	jinit_c_main_controller
	.thumb
	.thumb_func
	.type	jinit_c_main_controller, %function
jinit_c_main_controller:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r2, #64
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r0
	mov	r6, r1
	movs	r1, #1
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r5, #176]
	ldr	r2, .L33
	str	r0, [r5, #336]
.LPIC9:
	add	r2, pc
	str	r2, [r0]
	cbnz	r3, .L25
	cbnz	r6, .L32
	ldr	r3, [r5, #60]
	ldr	r4, [r5, #68]
	cmp	r3, #0
	ble	.L25
	mov	r8, r0
.L30:
	ldr	r2, [r4, #28]
	movs	r1, #1
	ldr	r3, [r4, #12]
	mov	r0, r5
	ldr	r7, [r5, #4]
	add	r6, r6, r1
	adds	r4, r4, #84
	add	r8, r8, #4
	lsls	r2, r2, #3
	lsls	r3, r3, #3
	ldr	r7, [r7, #8]
	blx	r7
	str	r0, [r8, #20]
	ldr	r3, [r5, #60]
	cmp	r3, r6
	bgt	.L30
.L25:
	pop	{r4, r5, r6, r7, r8, pc}
.L32:
	ldr	r3, [r5]
	movs	r2, #4
	mov	r0, r5
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L34:
	.align	2
.L33:
	.word	start_pass_main-(.LPIC9+4)
	.size	jinit_c_main_controller, .-jinit_c_main_controller
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
