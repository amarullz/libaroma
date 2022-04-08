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
	.file	"jcomapi.c"
	.section	.text.jpeg_abort,"ax",%progbits
	.align	2
	.global	jpeg_abort
	.thumb
	.thumb_func
	.type	jpeg_abort, %function
jpeg_abort:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r4, lr}
	mov	r4, r0
	cbz	r3, .L1
	ldr	r3, [r3, #36]
	movs	r1, #1
	blx	r3
	ldr	r3, [r4, #16]
	cbnz	r3, .L9
	movs	r3, #100
	str	r3, [r4, #20]
.L1:
	pop	{r4, pc}
.L9:
	movs	r2, #200
	movs	r3, #0
	str	r2, [r4, #20]
	str	r3, [r4, #316]
	pop	{r4, pc}
	.size	jpeg_abort, .-jpeg_abort
	.section	.text.jpeg_destroy,"ax",%progbits
	.align	2
	.global	jpeg_destroy
	.thumb
	.thumb_func
	.type	jpeg_destroy, %function
jpeg_destroy:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	push	{r4, lr}
	mov	r4, r0
	cbz	r3, .L11
	ldr	r3, [r3, #40]
	blx	r3
.L11:
	movs	r3, #0
	str	r3, [r4, #4]
	str	r3, [r4, #20]
	pop	{r4, pc}
	.size	jpeg_destroy, .-jpeg_destroy
	.section	.text.jpeg_alloc_quant_table,"ax",%progbits
	.align	2
	.global	jpeg_alloc_quant_table
	.thumb
	.thumb_func
	.type	jpeg_alloc_quant_table, %function
jpeg_alloc_quant_table:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r1, #0
	ldr	r3, [r0, #4]
	movs	r2, #132
	ldr	r3, [r3]
	blx	r3
	movs	r2, #0
	str	r2, [r0, #128]
	pop	{r3, pc}
	.size	jpeg_alloc_quant_table, .-jpeg_alloc_quant_table
	.section	.text.jpeg_alloc_huff_table,"ax",%progbits
	.align	2
	.global	jpeg_alloc_huff_table
	.thumb
	.thumb_func
	.type	jpeg_alloc_huff_table, %function
jpeg_alloc_huff_table:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, lr}
	movs	r1, #0
	ldr	r3, [r0, #4]
	mov	r2, #280
	ldr	r3, [r3]
	blx	r3
	movs	r2, #0
	str	r2, [r0, #276]
	pop	{r3, pc}
	.size	jpeg_alloc_huff_table, .-jpeg_alloc_huff_table
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
