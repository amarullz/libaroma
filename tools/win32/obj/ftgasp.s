	.syntax unified
	.arch armv7-a
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfpv3-d16
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.thumb
	.file	"ftgasp.c"
	.section	.text.FT_Get_Gasp,"ax",%progbits
	.align	2
	.global	FT_Get_Gasp
	.thumb
	.thumb_func
	.type	FT_Get_Gasp, %function
FT_Get_Gasp:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r3, #-1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #542]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #544]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #542]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #8]
	b	.L3
.L4:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L3
	b	.L2
.L3:
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L4
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #2]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #540]
	cmp	r3, #0
	bne	.L2
	ldr	r3, [r7, #20]
	and	r3, r3, #3
	str	r3, [r7, #20]
.L2:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Get_Gasp, .-FT_Get_Gasp
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
