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
	.file	"ftfstype.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"postscript-info\000"
	.section	.text.FT_Get_FSType_Flags,"ax",%progbits
	.align	2
	.global	FT_Get_FSType_Flags
	.thumb
	.thumb_func
	.type	FT_Get_FSType_Flags, %function
FT_Get_FSType_Flags:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L2
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #20]
	ldr	r2, .L7
.LPIC0:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #28]
.L3:
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L2
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	add	r2, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L2
	ldrh	r3, [r7, #12]
	cmp	r3, #0
	beq	.L2
	ldrh	r3, [r7, #12]
	b	.L5
.L2:
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	FT_Get_Sfnt_Table(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L6
	ldr	r3, [r7, #16]
	ldrh	r2, [r3]
	movw	r3, #65535
	cmp	r2, r3
	beq	.L6
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #8]
	b	.L5
.L6:
	movs	r3, #0
.L5:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L8:
	.align	2
.L7:
	.word	.LC0-(.LPIC0+4)
	.size	FT_Get_FSType_Flags, .-FT_Get_FSType_Flags
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
