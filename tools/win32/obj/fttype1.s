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
	.file	"fttype1.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"postscript-info\000"
	.section	.text.FT_Get_PS_Font_Info,"ax",%progbits
	.align	2
	.global	FT_Get_PS_Font_Info
	.thumb
	.thumb_func
	.type	FT_Get_PS_Font_Info, %function
FT_Get_PS_Font_Info:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L2
	movs	r3, #35
	b	.L3
.L2:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L4
	movs	r3, #6
	b	.L3
.L4:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L5
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #12]
	ldr	r2, .L8
.LPIC0:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #16]
.L5:
	ldr	r3, [r7, #16]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L6
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L6
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	str	r0, [r7, #20]
	b	.L7
.L6:
	movs	r3, #6
	str	r3, [r7, #20]
.L7:
	ldr	r3, [r7, #20]
.L3:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L9:
	.align	2
.L8:
	.word	.LC0-(.LPIC0+4)
	.size	FT_Get_PS_Font_Info, .-FT_Get_PS_Font_Info
	.section	.text.FT_Has_PS_Glyph_Names,"ax",%progbits
	.align	2
	.global	FT_Has_PS_Glyph_Names
	.thumb
	.thumb_func
	.type	FT_Has_PS_Glyph_Names, %function
FT_Has_PS_Glyph_Names:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L11
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #12]
	ldr	r2, .L14
.LPIC1:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #16]
.L12:
	ldr	r3, [r7, #16]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L11
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L11
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #20]
.L11:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L15:
	.align	2
.L14:
	.word	.LC0-(.LPIC1+4)
	.size	FT_Has_PS_Glyph_Names, .-FT_Has_PS_Glyph_Names
	.section	.text.FT_Get_PS_Font_Private,"ax",%progbits
	.align	2
	.global	FT_Get_PS_Font_Private
	.thumb
	.thumb_func
	.type	FT_Get_PS_Font_Private, %function
FT_Get_PS_Font_Private:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L17
	movs	r3, #35
	b	.L18
.L17:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L19
	movs	r3, #6
	b	.L18
.L19:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #12]
	ldr	r2, .L23
.LPIC2:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #16]
.L20:
	ldr	r3, [r7, #16]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	str	r0, [r7, #20]
	b	.L22
.L21:
	movs	r3, #6
	str	r3, [r7, #20]
.L22:
	ldr	r3, [r7, #20]
.L18:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L24:
	.align	2
.L23:
	.word	.LC0-(.LPIC2+4)
	.size	FT_Get_PS_Font_Private, .-FT_Get_PS_Font_Private
	.section	.text.FT_Get_PS_Font_Value,"ax",%progbits
	.align	2
	.global	FT_Get_PS_Font_Value
	.thumb
	.thumb_func
	.type	FT_Get_PS_Font_Value, %function
FT_Get_PS_Font_Value:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #16]
	ldr	r2, .L29
.LPIC3:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #24]
.L27:
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [r7, #20]
	ldr	r4, [r3, #16]
	ldr	r3, [r7, #48]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
	str	r0, [r7, #28]
.L26:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L30:
	.align	2
.L29:
	.word	.LC0-(.LPIC3+4)
	.size	FT_Get_PS_Font_Value, .-FT_Get_PS_Font_Value
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
