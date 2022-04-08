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
	.file	"ftbase.c"
	.section	.text._ft_face_scale_advances,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ft_face_scale_advances, %function
_ft_face_scale_advances:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L2
	movs	r3, #0
	b	.L3
.L2:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	bne	.L4
	movs	r3, #36
	b	.L3
.L4:
	ldr	r3, [r7]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L5
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r3, [r3, #20]
	str	r3, [r7, #20]
	b	.L6
.L5:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
.L6:
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L7
.L8:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	adds	r4, r2, r3
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #20]
	movs	r2, #64
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L7:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L8
	movs	r3, #0
.L3:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	_ft_face_scale_advances, .-_ft_face_scale_advances
	.section	.text.FT_Get_Advance,"ax",%progbits
	.align	2
	.global	FT_Get_Advance
	.thumb
	.thumb_func
	.type	FT_Get_Advance, %function
FT_Get_Advance:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L10
	movs	r3, #35
	b	.L11
.L10:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L12
	movs	r3, #6
	b	.L11
.L12:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L13
	movs	r3, #16
	b	.L11
.L13:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #84]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7, #4]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L15
	ldr	r3, [r7, #4]
	asrs	r3, r3, #16
	and	r3, r3, #15
	cmp	r3, #1
	bne	.L14
.L15:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r4, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #1
	ldr	r3, [r7, #4]
	blx	r4
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L16
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	movs	r2, #1
	ldr	r3, [r7, #4]
	bl	_ft_face_scale_advances(PLT)
	mov	r3, r0
	b	.L11
.L16:
	ldr	r3, [r7, #16]
	uxtb	r3, r3
	cmp	r3, #7
	beq	.L14
	ldr	r3, [r7, #16]
	b	.L11
.L14:
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #1
	ldr	r3, [r7, #4]
	bl	FT_Get_Advances(PLT)
	mov	r3, r0
.L11:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Get_Advance, .-FT_Get_Advance
	.section	.text.FT_Get_Advances,"ax",%progbits
	.align	2
	.global	FT_Get_Advances
	.thumb
	.thumb_func
	.type	FT_Get_Advances, %function
FT_Get_Advances:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L18
	movs	r3, #35
	b	.L19
.L18:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L20
	movs	r3, #6
	b	.L19
.L20:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #28]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcs	.L21
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L21
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L22
.L21:
	movs	r3, #16
	b	.L19
.L22:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L23
	movs	r3, #0
	b	.L19
.L23:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #84]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7]
	and	r3, r3, #3
	cmp	r3, #0
	bne	.L25
	ldr	r3, [r7]
	asrs	r3, r3, #16
	and	r3, r3, #15
	cmp	r3, #1
	bne	.L24
.L25:
	ldr	r3, [r7, #56]
	str	r3, [sp]
	ldr	r4, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L26
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #56]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ft_face_scale_advances(PLT)
	mov	r3, r0
	b	.L19
.L26:
	ldr	r3, [r7, #32]
	uxtb	r3, r3
	cmp	r3, #7
	beq	.L24
	ldr	r3, [r7, #32]
	b	.L19
.L24:
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7]
	and	r3, r3, #536870912
	cmp	r3, #0
	beq	.L27
	movs	r3, #7
	b	.L19
.L27:
	ldr	r3, [r7]
	orr	r3, r3, #256
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L28
.L33:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7]
	bl	FT_Load_Glyph(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L29
	b	.L30
.L29:
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #56]
	add	r2, r2, r3
	ldr	r3, [r7]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L31
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	ldr	r3, [r3, #68]
	lsls	r3, r3, #10
	b	.L32
.L31:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	ldr	r3, [r3, #64]
	lsls	r3, r3, #10
.L32:
	str	r3, [r2]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L28:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L33
.L30:
	ldr	r3, [r7, #32]
.L19:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Get_Advances, .-FT_Get_Advances
	.section	.text.FT_MulFix_arm,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FT_MulFix_arm, %function
FT_MulFix_arm:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
#APP
@ 86 "../../../libs/freetype/include/freetype/internal/ftcalc.h" 1
	smull  r0, r1, r2, r3
	mov    r3, r1, asr #31
	add    r3, r3, #0x8000
	adds   r0, r0, r3
	adc    r1, r1, #0
	mov    r3, r0, lsr #16
	orr    r3, r3, r1, lsl #16
	
@ 0 "" 2
	.thumb
	str	r3, [r7, #4]
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_MulFix_arm, .-FT_MulFix_arm
	.section	.text.FT_RoundFix,"ax",%progbits
	.align	2
	.global	FT_RoundFix
	.thumb
	.thumb_func
	.type	FT_RoundFix, %function
FT_RoundFix:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #32768
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #31
	uxtb	r3, r3
	subs	r3, r2, r3
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_RoundFix, .-FT_RoundFix
	.section	.text.FT_CeilFix,"ax",%progbits
	.align	2
	.global	FT_CeilFix
	.thumb
	.thumb_func
	.type	FT_CeilFix, %function
FT_CeilFix:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r3, r3, #65280
	adds	r3, r3, #255
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_CeilFix, .-FT_CeilFix
	.section	.text.FT_FloorFix,"ax",%progbits
	.align	2
	.global	FT_FloorFix
	.thumb
	.thumb_func
	.type	FT_FloorFix, %function
FT_FloorFix:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #16
	lsls	r3, r3, #16
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_FloorFix, .-FT_FloorFix
	.section	.text.FT_Hypot,"ax",%progbits
	.align	2
	.global	FT_Hypot
	.thumb
	.thumb_func
	.type	FT_Hypot, %function
FT_Hypot:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7]
	str	r3, [r7, #12]
	add	r3, r7, #8
	mov	r0, r3
	bl	FT_Vector_Length(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Hypot, .-FT_Hypot
	.section	.text.ft_multo64,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_multo64, %function
ft_multo64:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	uxth	r3, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #16
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	uxth	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #16
	str	r3, [r7, #32]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #32]
	mul	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #40]
	mul	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #32]
	mul	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L45
	mov	r3, #65536
	b	.L46
.L45:
	movs	r3, #0
.L46:
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	lsrs	r3, r3, #16
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #16
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_multo64, .-ft_multo64
	.global	__aeabi_uidiv
	.section	.text.ft_div64by32,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_div64by32, %function
ft_div64by32:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L48
	mvn	r3, #-2147483648
	b	.L49
.L48:
	ldr	r3, [r7, #12]
	clz	r3, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	lsls	r2, r2, r3
	ldr	r3, [r7, #20]
	rsb	r3, r3, #32
	ldr	r1, [r7, #8]
	lsr	r3, r1, r3
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #4]
	mul	r3, r2, r3
	ldr	r2, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	rsb	r3, r3, #32
	str	r3, [r7, #20]
.L51:
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	lsls	r2, r3, #1
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #31
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L50
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	orr	r3, r3, #1
	str	r3, [r7, #24]
.L50:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L51
	ldr	r3, [r7, #24]
.L49:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_div64by32, .-ft_div64by32
	.section	.text.FT_Add64,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FT_Add64, %function
FT_Add64:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	cmp	r1, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Add64, .-FT_Add64
	.section	.text.FT_MulDiv,"ax",%progbits
	.align	2
	.global	FT_MulDiv
	.thumb
	.thumb_func
	.type	FT_MulDiv, %function
FT_MulDiv:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bge	.L54
	ldr	r3, [r7, #12]
	negs	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #44]
	negs	r3, r3
	str	r3, [r7, #44]
.L54:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L55
	ldr	r3, [r7, #8]
	negs	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #44]
	negs	r3, r3
	str	r3, [r7, #44]
.L55:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L56
	ldr	r3, [r7, #4]
	negs	r3, r3
	str	r3, [r7, #4]
	ldr	r3, [r7, #44]
	negs	r3, r3
	str	r3, [r7, #44]
.L56:
	ldr	r3, [r7, #12]
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L57
	mvn	r3, #-2147483648
	str	r3, [r7, #40]
	b	.L58
.L57:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	lsrs	r3, r3, #17
	rsb	r3, r3, #129536
	add	r3, r3, #358
	cmp	r2, r3
	bhi	.L59
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #36]
	mul	r2, r2, r3
	ldr	r3, [r7, #32]
	lsrs	r3, r3, #1
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	b	.L58
.L59:
	add	r3, r7, #24
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #36]
	mov	r2, r3
	bl	ft_multo64(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	lsrs	r3, r3, #1
	str	r3, [r7, #16]
	add	r1, r7, #24
	add	r2, r7, #16
	add	r3, r7, #24
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Add64(PLT)
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L60
	ldr	r3, [r7, #24]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	b	.L61
.L60:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #32]
	bl	ft_div64by32(PLT)
	mov	r3, r0
.L61:
	str	r3, [r7, #40]
.L58:
	ldr	r3, [r7, #40]
	str	r3, [r7, #12]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bge	.L62
	ldr	r3, [r7, #12]
	negs	r3, r3
	b	.L63
.L62:
	ldr	r3, [r7, #12]
.L63:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_MulDiv, .-FT_MulDiv
	.section	.text.FT_MulDiv_No_Round,"ax",%progbits
	.align	2
	.global	FT_MulDiv_No_Round
	.thumb
	.thumb_func
	.type	FT_MulDiv_No_Round, %function
FT_MulDiv_No_Round:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bge	.L66
	ldr	r3, [r7, #12]
	negs	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #36]
	negs	r3, r3
	str	r3, [r7, #36]
.L66:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L67
	ldr	r3, [r7, #8]
	negs	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #36]
	negs	r3, r3
	str	r3, [r7, #36]
.L67:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L68
	ldr	r3, [r7, #4]
	negs	r3, r3
	str	r3, [r7, #4]
	ldr	r3, [r7, #36]
	negs	r3, r3
	str	r3, [r7, #36]
.L68:
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L69
	mvn	r3, #-2147483648
	str	r3, [r7, #32]
	b	.L70
.L69:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	cmp	r3, #131072
	bcs	.L71
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #24]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	b	.L70
.L71:
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #28]
	mov	r2, r3
	bl	ft_multo64(PLT)
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L72
	ldr	r3, [r7, #16]
	mov	r0, r3
	ldr	r1, [r7, #24]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	b	.L73
.L72:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #24]
	bl	ft_div64by32(PLT)
	mov	r3, r0
.L73:
	str	r3, [r7, #32]
.L70:
	ldr	r3, [r7, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L74
	ldr	r3, [r7, #12]
	negs	r3, r3
	b	.L75
.L74:
	ldr	r3, [r7, #12]
.L75:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_MulDiv_No_Round, .-FT_MulDiv_No_Round
	.section	.text.FT_MulFix,"ax",%progbits
	.align	2
	.global	FT_MulFix
	.thumb
	.thumb_func
	.type	FT_MulFix, %function
FT_MulFix:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_MulFix, .-FT_MulFix
	.section	.text.FT_DivFix,"ax",%progbits
	.align	2
	.global	FT_DivFix
	.thumb
	.thumb_func
	.type	FT_DivFix, %function
FT_DivFix:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L80
	ldr	r3, [r7, #4]
	negs	r3, r3
	str	r3, [r7, #4]
	ldr	r3, [r7, #44]
	negs	r3, r3
	str	r3, [r7, #44]
.L80:
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L81
	ldr	r3, [r7]
	negs	r3, r3
	str	r3, [r7]
	ldr	r3, [r7, #44]
	negs	r3, r3
	str	r3, [r7, #44]
.L81:
	ldr	r3, [r7, #4]
	str	r3, [r7, #36]
	ldr	r3, [r7]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L82
	mvn	r3, #-2147483648
	str	r3, [r7, #40]
	b	.L83
.L82:
	ldr	r3, [r7, #32]
	lsrs	r3, r3, #17
	rsb	r3, r3, #65280
	adds	r3, r3, #255
	ldr	r2, [r7, #36]
	cmp	r3, r2
	bcc	.L84
	ldr	r3, [r7, #36]
	lsls	r2, r3, #16
	ldr	r3, [r7, #32]
	lsrs	r3, r3, #1
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	b	.L83
.L84:
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #16
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #16
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #32]
	lsrs	r3, r3, #1
	str	r3, [r7, #12]
	add	r1, r7, #20
	add	r2, r7, #12
	add	r3, r7, #20
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Add64(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #32]
	bl	ft_div64by32(PLT)
	str	r0, [r7, #40]
.L83:
	ldr	r3, [r7, #40]
	str	r3, [r7, #28]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bge	.L85
	ldr	r3, [r7, #28]
	negs	r3, r3
	b	.L86
.L85:
	ldr	r3, [r7, #28]
.L86:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_DivFix, .-FT_DivFix
	.section	.text.FT_Matrix_Multiply,"ax",%progbits
	.align	2
	.global	FT_Matrix_Multiply
	.thumb
	.thumb_func
	.type	FT_Matrix_Multiply, %function
FT_Matrix_Multiply:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L89
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L90
.L89:
	b	.L88
.L90:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
.L88:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Matrix_Multiply, .-FT_Matrix_Multiply
	.section	.text.FT_Matrix_Invert,"ax",%progbits
	.align	2
	.global	FT_Matrix_Invert
	.thumb
	.thumb_func
	.type	FT_Matrix_Invert, %function
FT_Matrix_Invert:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L93
	movs	r3, #6
	b	.L94
.L93:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	subs	r3, r4, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L95
	movs	r3, #6
	b	.L94
.L95:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	negs	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	FT_DivFix(PLT)
	mov	r3, r0
	negs	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #20]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	movs	r3, #0
.L94:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Matrix_Invert, .-FT_Matrix_Invert
	.section	.text.FT_Matrix_Multiply_Scaled,"ax",%progbits
	.align	2
	.global	FT_Matrix_Multiply_Scaled
	.thumb
	.thumb_func
	.type	FT_Matrix_Multiply_Scaled, %function
FT_Matrix_Multiply_Scaled:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #16
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L97
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L98
.L97:
	b	.L96
.L98:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #28]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
.L96:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Matrix_Multiply_Scaled, .-FT_Matrix_Multiply_Scaled
	.section	.text.FT_Vector_Transform_Scaled,"ax",%progbits
	.align	2
	.global	FT_Vector_Transform_Scaled
	.thumb
	.thumb_func
	.type	FT_Vector_Transform_Scaled, %function
FT_Vector_Transform_Scaled:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #16
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L101
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L102
.L101:
	b	.L100
.L102:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #28]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #28]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #28]
	bl	FT_MulDiv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #28]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
.L100:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Vector_Transform_Scaled, .-FT_Vector_Transform_Scaled
	.section	.text.FT_Vector_NormLen,"ax",%progbits
	.align	2
	.global	FT_Vector_NormLen
	.thumb
	.thumb_func
	.type	FT_Vector_NormLen, %function
FT_Vector_NormLen:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #60
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #48]
	movs	r3, #1
	str	r3, [r7, #28]
	movs	r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bge	.L105
	ldr	r3, [r7, #52]
	negs	r3, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #28]
.L105:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bge	.L106
	ldr	r3, [r7, #48]
	negs	r3, r3
	str	r3, [r7, #48]
	ldr	r3, [r7, #24]
	negs	r3, r3
	str	r3, [r7, #24]
.L106:
	ldr	r3, [r7, #52]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L107
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L108
	ldr	r3, [r7, #24]
	lsls	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L108:
	ldr	r3, [r7, #36]
	b	.L109
.L107:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L110
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L111
	ldr	r3, [r7, #28]
	lsls	r2, r3, #16
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L111:
	ldr	r3, [r7, #40]
	b	.L109
.L110:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L112
	ldr	r3, [r7, #36]
	lsrs	r2, r3, #1
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	b	.L113
.L112:
	ldr	r3, [r7, #40]
	lsrs	r2, r3, #1
	ldr	r3, [r7, #36]
	add	r3, r3, r2
.L113:
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	clz	r3, r3
	str	r3, [r7, #20]
	mov	r2, #-1431655766
	ldr	r3, [r7, #20]
	lsrs	r2, r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bhi	.L114
	movs	r3, #16
	b	.L115
.L114:
	movs	r3, #15
.L115:
	ldr	r2, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L116
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #20]
	lsl	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #20]
	lsl	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bls	.L117
	ldr	r3, [r7, #36]
	lsrs	r2, r3, #1
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	b	.L118
.L117:
	ldr	r3, [r7, #40]
	lsrs	r2, r3, #1
	ldr	r3, [r7, #36]
	add	r3, r3, r2
.L118:
	str	r3, [r7, #32]
	b	.L119
.L116:
	ldr	r3, [r7, #20]
	negs	r3, r3
	ldr	r2, [r7, #40]
	lsr	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #20]
	negs	r3, r3
	ldr	r2, [r7, #36]
	lsr	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	negs	r3, r3
	ldr	r2, [r7, #32]
	lsr	r3, r2, r3
	str	r3, [r7, #32]
.L119:
	ldr	r3, [r7, #32]
	rsb	r3, r3, #65536
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	str	r3, [r7, #52]
	ldr	r3, [r7, #36]
	str	r3, [r7, #48]
.L120:
	ldr	r3, [r7, #52]
	ldr	r2, [r7, #44]
	mul	r3, r2, r3
	asrs	r2, r3, #16
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #44]
	mul	r3, r2, r3
	asrs	r2, r3, #16
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #16]
	mul	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r7, #12]
	mul	r3, r1, r3
	add	r3, r3, r2
	negs	r3, r3
	addw	r2, r3, #511
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #9
	str	r3, [r7, #8]
	ldr	r3, [r7, #44]
	add	r3, r3, #65536
	asrs	r3, r3, #8
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	add	r2, r3, #65280
	adds	r2, r2, #255
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #16
	str	r3, [r7, #8]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bgt	.L120
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bge	.L121
	ldr	r3, [r7, #16]
	negs	r3, r3
	b	.L122
.L121:
	ldr	r3, [r7, #16]
.L122:
	ldr	r2, [r7, #4]
	str	r3, [r2]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L123
	ldr	r3, [r7, #12]
	negs	r3, r3
	b	.L124
.L123:
	ldr	r3, [r7, #12]
.L124:
	ldr	r2, [r7, #4]
	str	r3, [r2, #4]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #40]
	mul	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r1, [r7, #36]
	mul	r3, r1, r3
	add	r3, r3, r2
	add	r2, r3, #65280
	adds	r2, r2, #255
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #16
	add	r3, r3, #65536
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L125
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	movs	r2, #1
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #32]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	lsr	r3, r2, r3
	str	r3, [r7, #32]
	b	.L126
.L125:
	ldr	r3, [r7, #20]
	negs	r3, r3
	ldr	r2, [r7, #32]
	lsl	r3, r2, r3
	str	r3, [r7, #32]
.L126:
	ldr	r3, [r7, #32]
.L109:
	mov	r0, r3
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Vector_NormLen, .-FT_Vector_NormLen
	.section	.text.ft_corner_orientation,"ax",%progbits
	.align	2
	.global	ft_corner_orientation
	.thumb
	.thumb_func
	.type	ft_corner_orientation, %function
ft_corner_orientation:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	add	r3, r3, r2
	cmp	r3, #131072
	bcs	.L128
	ldr	r3, [r7, #8]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	mov	r2, r3
	ldr	r3, [r7, #4]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	add	r3, r3, r2
	cmp	r3, #131072
	bcs	.L128
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	mul	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #4]
	mul	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	ble	.L129
	movs	r3, #1
	str	r3, [r7, #44]
	b	.L130
.L129:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bge	.L131
	mov	r3, #-1
	str	r3, [r7, #44]
	b	.L130
.L131:
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L132
.L130:
	b	.L132
.L128:
	ldr	r1, [r7, #12]
	ldr	r2, [r7]
	add	r3, r7, #28
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	ft_multo64(PLT)
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	add	r3, r7, #20
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	ft_multo64(PLT)
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L133
	movs	r3, #1
	str	r3, [r7, #44]
	b	.L132
.L133:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcs	.L135
	mov	r3, #-1
	str	r3, [r7, #44]
	b	.L132
.L135:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bls	.L136
	movs	r3, #1
	str	r3, [r7, #44]
	b	.L132
.L136:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L137
	mov	r3, #-1
	str	r3, [r7, #44]
	b	.L132
.L137:
	movs	r3, #0
	str	r3, [r7, #44]
.L132:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_corner_orientation, .-ft_corner_orientation
	.section	.text.ft_corner_is_flat,"ax",%progbits
	.align	2
	.global	ft_corner_is_flat
	.thumb
	.thumb_func
	.type	ft_corner_is_flat, %function
ft_corner_is_flat:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L140
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	asrs	r2, r3, #3
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	b	.L141
.L140:
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	asrs	r2, r3, #3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
.L141:
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #4]
	ldr	r3, [r7]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	ble	.L142
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	asrs	r2, r3, #3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	b	.L143
.L142:
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	asrs	r2, r3, #3
	ldr	r3, [r7]
	add	r3, r3, r2
.L143:
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #32]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	ble	.L144
	ldr	r2, [r7, #32]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	asrs	r2, r3, #3
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	b	.L145
.L144:
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	asrs	r2, r3, #3
	ldr	r3, [r7, #32]
	add	r3, r3, r2
.L145:
	str	r3, [r7, #20]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	asrs	r3, r3, #4
	cmp	r2, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_corner_is_flat, .-ft_corner_is_flat
	.section	.text.FT_GlyphLoader_New,"ax",%progbits
	.align	2
	.global	FT_GlyphLoader_New
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_New, %function
FT_GlyphLoader_New:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #96
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L148
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L148:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_GlyphLoader_New, .-FT_GlyphLoader_New
	.section	.text.FT_GlyphLoader_Rewind,"ax",%progbits
	.align	2
	.global	FT_GlyphLoader_Rewind
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_Rewind, %function
FT_GlyphLoader_Rewind:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	FT_GlyphLoader_Rewind, .-FT_GlyphLoader_Rewind
	.section	.text.FT_GlyphLoader_Reset,"ax",%progbits
	.align	2
	.global	FT_GlyphLoader_Reset
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_Reset, %function
FT_GlyphLoader_Reset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #52]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	FT_GlyphLoader_Rewind(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_GlyphLoader_Reset, .-FT_GlyphLoader_Reset
	.section	.text.FT_GlyphLoader_Done,"ax",%progbits
	.align	2
	.global	FT_GlyphLoader_Done
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_Done, %function
FT_GlyphLoader_Done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L152
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	bl	FT_GlyphLoader_Reset(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
.L152:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_GlyphLoader_Done, .-FT_GlyphLoader_Done
	.section	.text.FT_GlyphLoader_Adjust_Points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_Adjust_Points, %function
FT_GlyphLoader_Adjust_Points:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	sxth	r3, r3
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L154
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #80]
.L154:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_GlyphLoader_Adjust_Points, .-FT_GlyphLoader_Adjust_Points
	.section	.text.FT_GlyphLoader_CreateExtra,"ax",%progbits
	.align	2
	.global	FT_GlyphLoader_CreateExtra
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_CreateExtra, %function
FT_GlyphLoader_CreateExtra:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #40]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L157
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #44]
	ldr	r0, [r7, #4]
	bl	FT_GlyphLoader_Adjust_Points(PLT)
.L157:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_GlyphLoader_CreateExtra, .-FT_GlyphLoader_CreateExtra
	.section	.text.FT_GlyphLoader_Adjust_Subglyphs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_Adjust_Subglyphs, %function
FT_GlyphLoader_Adjust_Subglyphs:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #5
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #32]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_GlyphLoader_Adjust_Subglyphs, .-FT_GlyphLoader_Adjust_Subglyphs
	.section	.text.FT_GlyphLoader_CheckPoints,"ax",%progbits
	.align	2
	.global	FT_GlyphLoader_CheckPoints
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_CheckPoints, %function
FT_GlyphLoader_CheckPoints:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	str	r3, [r7, #32]
	movs	r3, #0
	strb	r3, [r7, #47]
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L161
	ldr	r3, [r7, #28]
	adds	r3, r3, #7
	bic	r3, r3, #7
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #32768
	bcc	.L162
	movs	r3, #10
	b	.L171
.L162:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #36]
	ldr	r1, [r1, #4]
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #8
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L164
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #36]
	ldr	r1, [r1, #8]
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L164
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L165
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #40]
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #8
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #40]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L166
	b	.L164
.L166:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	adds	r1, r2, r3
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #44]
.L165:
	movs	r3, #1
	strb	r3, [r7, #47]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #4]
.L161:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #32]
	ldrh	r3, [r3]
	sxth	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L167
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	bic	r3, r3, #3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #32768
	bcc	.L168
	movs	r3, #10
	b	.L171
.L168:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #36]
	ldr	r1, [r1, #12]
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #40]
	movs	r1, #2
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L169
	b	.L164
.L169:
	movs	r3, #1
	strb	r3, [r7, #47]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #28]
	str	r2, [r3, #8]
.L167:
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L164
	ldr	r0, [r7, #12]
	bl	FT_GlyphLoader_Adjust_Points(PLT)
.L164:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L170
	ldr	r0, [r7, #12]
	bl	FT_GlyphLoader_Reset(PLT)
.L170:
	ldr	r3, [r7, #20]
.L171:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_GlyphLoader_CheckPoints, .-FT_GlyphLoader_CheckPoints
	.section	.text.FT_GlyphLoader_CheckSubGlyphs,"ax",%progbits
	.align	2
	.global	FT_GlyphLoader_CheckSubGlyphs
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_CheckSubGlyphs, %function
FT_GlyphLoader_CheckSubGlyphs:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #28]
	add	r2, r2, r3
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bls	.L173
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	bic	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r1, [r7, #24]
	ldr	r1, [r1, #32]
	str	r1, [sp]
	add	r1, r7, #8
	str	r1, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #32
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #32]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L174
	b	.L173
.L174:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	bl	FT_GlyphLoader_Adjust_Subglyphs(PLT)
.L173:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_GlyphLoader_CheckSubGlyphs, .-FT_GlyphLoader_CheckSubGlyphs
	.section	.text.FT_GlyphLoader_Prepare,"ax",%progbits
	.align	2
	.global	FT_GlyphLoader_Prepare
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_Prepare, %function
FT_GlyphLoader_Prepare:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r0, [r7, #4]
	bl	FT_GlyphLoader_Adjust_Points(PLT)
	ldr	r0, [r7, #4]
	bl	FT_GlyphLoader_Adjust_Subglyphs(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_GlyphLoader_Prepare, .-FT_GlyphLoader_Prepare
	.section	.text.FT_GlyphLoader_Add,"ax",%progbits
	.align	2
	.global	FT_GlyphLoader_Add
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_Add, %function
FT_GlyphLoader_Add:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L178
	b	.L177
.L178:
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	adds	r3, r3, #56
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #2]
	uxth	r2, r3
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #2]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #24]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #24]
	ldrh	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #20]
	ldrh	r3, [r3]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #24]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #28]
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #28]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L180
.L181:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	ldr	r1, [r2, #12]
	ldr	r2, [r7, #28]
	lsls	r2, r2, #1
	add	r2, r2, r1
	ldrh	r2, [r2]
	uxth	r1, r2
	ldr	r2, [r7, #12]
	uxth	r2, r2
	add	r2, r2, r1
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L180:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	blt	.L181
	ldr	r0, [r7, #4]
	bl	FT_GlyphLoader_Prepare(PLT)
.L177:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_GlyphLoader_Add, .-FT_GlyphLoader_Add
	.section	.text.FT_GlyphLoader_CopyPoints,"ax",%progbits
	.align	2
	.global	FT_GlyphLoader_CopyPoints
	.thumb
	.thumb_func
	.type	FT_GlyphLoader_CopyPoints, %function
FT_GlyphLoader_CopyPoints:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldrh	r3, [r3, #22]
	sxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldrh	r3, [r3, #20]
	sxth	r3, r3
	str	r3, [r7, #24]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #24]
	bl	FT_GlyphLoader_CheckPoints(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L183
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	str	r3, [r7, #16]
	ldr	r3, [r7]
	adds	r3, r3, #20
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #28]
	bl	memcpy(PLT)
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #1
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L184
	ldr	r3, [r7]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L184
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #40]
	ldr	r3, [r7]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #44]
	ldr	r3, [r7]
	ldr	r2, [r3, #44]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
.L184:
	ldr	r3, [r7, #28]
	uxth	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #24]
	uxth	r2, r3
	ldr	r3, [r7, #16]
	strh	r2, [r3]	@ movhi
	ldr	r0, [r7, #4]
	bl	FT_GlyphLoader_Adjust_Points(PLT)
.L183:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_GlyphLoader_CopyPoints, .-FT_GlyphLoader_CopyPoints
	.section	.text.ft_service_list_lookup,"ax",%progbits
	.align	2
	.global	ft_service_list_lookup
	.thumb
	.thumb_func
	.type	ft_service_list_lookup, %function
ft_service_list_lookup:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L187
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L187
	b	.L188
.L190:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L189
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	b	.L187
.L189:
	ldr	r3, [r7, #8]
	adds	r3, r3, #8
	str	r3, [r7, #8]
.L188:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L190
.L187:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_service_list_lookup, .-ft_service_list_lookup
	.section	.text.ft_validator_init,"ax",%progbits
	.align	2
	.global	ft_validator_init
	.thumb
	.thumb_func
	.type	ft_validator_init, %function
ft_validator_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #392]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #396]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #400]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #404]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_validator_init, .-ft_validator_init
	.section	.text.ft_validator_run,"ax",%progbits
	.align	2
	.global	ft_validator_run
	.thumb
	.thumb_func
	.type	ft_validator_run, %function
ft_validator_run:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, #-1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_validator_run, .-ft_validator_run
	.section	.text.ft_validator_error,"ax",%progbits
	.align	2
	.global	ft_validator_error
	.thumb
	.thumb_func
	.type	ft_validator_error, %function
ft_validator_error:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #404]
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	longjmp(PLT)
	.size	ft_validator_error, .-ft_validator_error
	.section	.text.FT_Stream_New,"ax",%progbits
	.align	2
	.global	FT_Stream_New
	.thumb
	.thumb_func
	.type	FT_Stream_New, %function
FT_Stream_New:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L197
	movs	r3, #33
	b	.L208
.L197:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L199
	movs	r3, #6
	b	.L208
.L199:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	add	r3, r7, #20
	ldr	r0, [r7, #24]
	movs	r1, #40
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L200
	b	.L201
.L200:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	str	r2, [r3, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L202
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_OpenMemory(PLT)
	b	.L203
.L202:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L204
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	FT_Stream_Open(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	str	r2, [r3, #16]
	b	.L203
.L204:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L205
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L205
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	str	r3, [r7, #28]
	b	.L203
.L205:
	movs	r3, #6
	str	r3, [r7, #20]
.L203:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L206
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #28]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L207
.L206:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	str	r2, [r3, #28]
.L207:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
.L201:
	ldr	r3, [r7, #20]
.L208:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stream_New, .-FT_Stream_New
	.section	.text.FT_Stream_Free,"ax",%progbits
	.align	2
	.global	FT_Stream_Free
	.thumb
	.thumb_func
	.type	FT_Stream_Free, %function
FT_Stream_Free:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L209
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	bl	FT_Stream_Close(PLT)
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L209
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
.L209:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stream_Free, .-FT_Stream_Free
	.section	.text.ft_glyphslot_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_glyphslot_init, %function
ft_glyphslot_init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #12]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r0, [r7, #20]
	movs	r1, #40
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L212
	b	.L213
.L212:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3, #156]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #512
	cmp	r3, #0
	bne	.L214
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	FT_GlyphLoader_New(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
.L214:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L213
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	beq	.L213
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #64]
	ldr	r0, [r7, #4]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #12]
.L213:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_glyphslot_init, .-ft_glyphslot_init
	.section	.text.ft_glyphslot_free_bitmap,"ax",%progbits
	.align	2
	.global	ft_glyphslot_free_bitmap
	.thumb
	.thumb_func
	.type	ft_glyphslot_free_bitmap, %function
ft_glyphslot_free_bitmap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	cmp	r3, #0
	beq	.L217
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L217
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #156]
	ldr	r2, [r2, #4]
	bic	r2, r2, #1
	str	r2, [r3, #4]
	b	.L216
.L217:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
.L216:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_glyphslot_free_bitmap, .-ft_glyphslot_free_bitmap
	.section	.text.ft_glyphslot_set_bitmap,"ax",%progbits
	.align	2
	.global	ft_glyphslot_set_bitmap
	.thumb
	.thumb_func
	.type	ft_glyphslot_set_bitmap, %function
ft_glyphslot_set_bitmap:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ft_glyphslot_free_bitmap(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #88]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_glyphslot_set_bitmap, .-ft_glyphslot_set_bitmap
	.section	.text.ft_glyphslot_alloc_bitmap,"ax",%progbits
	.align	2
	.global	ft_glyphslot_alloc_bitmap
	.thumb
	.thumb_func
	.type	ft_glyphslot_alloc_bitmap, %function
ft_glyphslot_alloc_bitmap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L221
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #88]
	b	.L222
.L221:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #156]
	ldr	r2, [r2, #4]
	orr	r2, r2, #1
	str	r2, [r3, #4]
.L222:
	ldr	r2, [r7]
	add	r3, r7, #8
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #88]
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_glyphslot_alloc_bitmap, .-ft_glyphslot_alloc_bitmap
	.section	.text.ft_glyphslot_clear,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_glyphslot_clear, %function
ft_glyphslot_clear:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	ft_glyphslot_free_bitmap(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	movs	r1, #0
	movs	r2, #32
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
	movs	r1, #0
	movs	r2, #20
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #80]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #76]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #84]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #94]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #100]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #104]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #128]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #132]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #136]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #152]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #72]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #60]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #144]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #148]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_glyphslot_clear, .-ft_glyphslot_clear
	.section	.text.ft_glyphslot_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_glyphslot_done, %function
ft_glyphslot_done:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L226
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #68]
	ldr	r0, [r7, #4]
	blx	r3
.L226:
	ldr	r0, [r7, #4]
	bl	ft_glyphslot_free_bitmap(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	cmp	r3, #0
	beq	.L225
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #512
	cmp	r3, #0
	bne	.L228
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_GlyphLoader_Done(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	movs	r2, #0
	str	r2, [r3]
.L228:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #156]
.L225:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_glyphslot_done, .-ft_glyphslot_done
	.section	.text.FT_New_GlyphSlot,"ax",%progbits
	.align	2
	.global	FT_New_GlyphSlot
	.thumb
	.thumb_func
	.type	FT_New_GlyphSlot, %function
FT_New_GlyphSlot:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L230
	movs	r3, #35
	b	.L237
.L230:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	bne	.L232
	movs	r3, #6
	b	.L237
.L232:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #44]
	add	r3, r7, #12
	ldr	r0, [r7, #16]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L233
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r0, [r7, #28]
	bl	ft_glyphslot_init(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L234
	ldr	r0, [r7, #28]
	bl	ft_glyphslot_done(PLT)
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #28]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L235
.L234:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3, #84]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L235
	ldr	r3, [r7]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	b	.L235
.L233:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L235
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
.L235:
	ldr	r3, [r7, #12]
.L237:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_New_GlyphSlot, .-FT_New_GlyphSlot
	.section	.text.FT_Done_GlyphSlot,"ax",%progbits
	.align	2
	.global	FT_Done_GlyphSlot
	.thumb
	.thumb_func
	.type	FT_Done_GlyphSlot, %function
FT_Done_GlyphSlot:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L238
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #84]
	str	r3, [r7, #16]
	b	.L240
.L245:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L241
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L242
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #8]
	str	r2, [r3, #84]
	b	.L243
.L242:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	str	r2, [r3, #8]
.L243:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L244
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #4]
	blx	r3
.L244:
	ldr	r0, [r7, #4]
	bl	ft_glyphslot_done(PLT)
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	b	.L238
.L241:
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
.L240:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L245
.L238:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Done_GlyphSlot, .-FT_Done_GlyphSlot
	.section	.text.FT_Set_Transform,"ax",%progbits
	.align	2
	.global	FT_Set_Transform
	.thumb
	.thumb_func
	.type	FT_Set_Transform, %function
FT_Set_Transform:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L247
	b	.L246
.L247:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L249
	ldr	r3, [r7, #20]
	mov	r2, #65536
	str	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	mov	r2, #65536
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	str	r3, [r7, #8]
	b	.L250
.L249:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	mov	r4, r2
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
.L250:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	orrs	r3, r3, r2
	cmp	r3, #0
	bne	.L251
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #65536
	bne	.L251
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	cmp	r3, #65536
	beq	.L252
.L251:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	orr	r2, r3, #1
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
.L252:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L253
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #16
	str	r3, [r7, #4]
	b	.L254
.L253:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	adds	r3, r3, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L254:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	orrs	r3, r3, r2
	cmp	r3, #0
	beq	.L246
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	orr	r2, r3, #2
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
.L246:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
	.size	FT_Set_Transform, .-FT_Set_Transform
	.section	.text.ft_glyphslot_grid_fit_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_glyphslot_grid_fit_metrics, %function
ft_glyphslot_grid_fit_metrics:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	str	r3, [r7, #20]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L256
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	adds	r3, r3, #63
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	add	r3, r3, r2
	adds	r3, r3, #63
	bic	r3, r3, #63
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	adds	r3, r3, #63
	bic	r3, r3, #63
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #16]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	ldr	r2, [r7, #12]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
	b	.L257
.L256:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	add	r3, r3, r2
	adds	r3, r3, #63
	bic	r3, r3, #63
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	bic	r3, r3, #63
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	adds	r3, r3, #63
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #16]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3, #4]
.L257:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #28]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	str	r2, [r3, #28]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_glyphslot_grid_fit_metrics, .-ft_glyphslot_grid_fit_metrics
	.section	.text.FT_Load_Glyph,"ax",%progbits
	.align	2
	.global	FT_Load_Glyph
	.thumb
	.thumb_func
	.type	FT_Load_Glyph, %function
FT_Load_Glyph:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #92
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #75]
	ldr	r3, [r7, #12]
	str	r3, [r7, #64]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L259
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	beq	.L259
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	bne	.L260
.L259:
	movs	r3, #35
	b	.L261
.L260:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #84]
	str	r3, [r7, #60]
	ldr	r0, [r7, #60]
	bl	ft_glyphslot_clear(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #160]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L262
	ldr	r3, [r7, #4]
	orr	r3, r3, #2048
	orr	r3, r3, #1
	str	r3, [r7, #4]
.L262:
	ldr	r3, [r7, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L263
	ldr	r3, [r7, #4]
	orr	r3, r3, #10
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	bic	r3, r3, #4
	str	r3, [r7, #4]
.L263:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L264
	ldr	r3, [r7, #4]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #4]
	and	r3, r3, #32768
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L264
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #512
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	and	r3, r3, #8192
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #4]
	and	r3, r3, #2048
	cmp	r3, #0
	bne	.L265
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L266
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L265
.L266:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L264
.L265:
	ldr	r3, [r7, #4]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L267
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #1024
	cmp	r3, #0
	bne	.L268
.L267:
	movs	r3, #1
	strb	r3, [r7, #75]
	b	.L264
.L268:
	ldr	r3, [r7, #4]
	asrs	r3, r3, #16
	and	r3, r3, #15
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #1
	bne	.L269
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #2048
	cmp	r3, #0
	beq	.L270
.L269:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldrb	r3, [r3, #52]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L270
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L264
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #696]
	cmp	r3, #0
	beq	.L264
	ldr	r3, [r7, #64]
	ldrh	r3, [r3, #286]
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #628]
	cmp	r3, #0
	bne	.L264
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #636]
	cmp	r3, #0
	bne	.L264
.L270:
	movs	r3, #1
	strb	r3, [r7, #75]
.L264:
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L271
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L272
	ldr	r3, [r7, #4]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L272
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	ldr	r4, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	orr	r3, r3, #16384
	ldr	r0, [r7, #60]
	mov	r1, r2
	ldr	r2, [r7, #8]
	blx	r4
	str	r0, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L272
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #72]
	movw	r3, #29811
	movt	r3, 25193
	cmp	r2, r3
	bne	.L272
	b	.L273
.L272:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #24]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r4, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #4]
	str	r2, [sp]
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #60]
	mov	r2, r3
	ldr	r3, [r7, #8]
	blx	r4
	str	r0, [r7, #76]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #36]
	str	r2, [r3, #24]
	b	.L273
.L271:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	ldr	r4, [r3, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r0, [r7, #60]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	str	r0, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L274
	b	.L275
.L274:
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #72]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r2, r3
	bne	.L273
	ldr	r3, [r7, #60]
	adds	r3, r3, #108
	mov	r0, r3
	bl	FT_Outline_Check(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L276
	b	.L275
.L276:
	ldr	r3, [r7, #4]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L273
	ldr	r3, [r7, #4]
	uxtb	r3, r3
	and	r3, r3, #16
	uxtb	r3, r3
	ldr	r0, [r7, #60]
	mov	r1, r3
	bl	ft_glyphslot_grid_fit_metrics(PLT)
.L273:
	ldr	r3, [r7, #4]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L277
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #60]
	str	r2, [r3, #68]
	b	.L278
.L277:
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #60]
	str	r2, [r3, #64]
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r2, [r3, #68]
.L278:
	ldr	r3, [r7, #4]
	and	r3, r3, #8192
	cmp	r3, #0
	bne	.L279
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L279
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	adds	r3, r3, #12
	str	r3, [r7, #28]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #56]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #64
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #60]
	str	r2, [r3, #56]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #64
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #60]
	str	r2, [r3, #60]
.L279:
	ldr	r3, [r7, #4]
	and	r3, r3, #2048
	cmp	r3, #0
	bne	.L280
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L280
	ldr	r0, [r7, #60]
	bl	ft_lookup_glyph_renderer(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L281
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldr	r4, [r3, #44]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #60]
	blx	r4
	str	r0, [r7, #76]
	b	.L282
.L281:
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #72]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r2, r3
	bne	.L282
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L283
	ldr	r3, [r7, #60]
	add	r2, r3, #108
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Transform(PLT)
.L283:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L282
	ldr	r3, [r7, #60]
	add	r1, r3, #108
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #20]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
.L282:
	ldr	r3, [r7, #60]
	add	r2, r3, #64
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Vector_Transform(PLT)
.L280:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L275
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #72]
	movw	r3, #29811
	movt	r3, 25193
	cmp	r2, r3
	beq	.L275
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #72]
	movw	r3, #28016
	movt	r3, 25455
	cmp	r2, r3
	beq	.L275
	ldr	r3, [r7, #4]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L275
	ldr	r3, [r7, #4]
	asrs	r3, r3, #16
	and	r3, r3, #15
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L284
	ldr	r3, [r7, #4]
	and	r3, r3, #4096
	cmp	r3, #0
	beq	.L284
	movs	r3, #2
	str	r3, [r7, #68]
.L284:
	ldr	r0, [r7, #60]
	ldr	r1, [r7, #68]
	bl	FT_Render_Glyph(PLT)
	str	r0, [r7, #76]
.L275:
	ldr	r3, [r7, #76]
.L261:
	mov	r0, r3
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Load_Glyph, .-FT_Load_Glyph
	.section	.text.FT_Load_Char,"ax",%progbits
	.align	2
	.global	FT_Load_Char
	.thumb
	.thumb_func
	.type	FT_Load_Char, %function
FT_Load_Char:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L286
	movs	r3, #35
	b	.L287
.L286:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L288
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	FT_Get_Char_Index(PLT)
	str	r0, [r7, #20]
.L288:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #4]
	bl	FT_Load_Glyph(PLT)
	mov	r3, r0
.L287:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Load_Char, .-FT_Load_Char
	.section	.text.destroy_size,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	destroy_size, %function
destroy_size:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L290
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #8]
	blx	r3
.L290:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #60]
	cmp	r3, #0
	beq	.L291
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #60]
	ldr	r0, [r7, #8]
	blx	r3
.L291:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #40]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #8]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	destroy_size, .-destroy_size
	.section	.text.destroy_charmaps,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	destroy_charmaps, %function
destroy_charmaps:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L293
	b	.L292
.L293:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L295
.L296:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r0, [r7, #8]
	bl	ft_cmap_done_internal(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L295:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L296
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #36]
.L292:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	destroy_charmaps, .-destroy_charmaps
	.section	.text.destroy_face,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	destroy_face, %function
destroy_face:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #120]
	cmp	r3, #0
	beq	.L298
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #120]
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #116]
	mov	r0, r2
	blx	r3
	b	.L299
.L298:
	b	.L299
.L300:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	mov	r0, r3
	bl	FT_Done_GlyphSlot(PLT)
.L299:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #84]
	cmp	r3, #0
	bne	.L300
	ldr	r3, [r7, #8]
	adds	r3, r3, #108
	mov	r0, r3
	ldr	r3, .L304
.LPIC0:
	add	r3, pc
	mov	r1, r3
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	bl	FT_List_Finalize(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #88]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L301
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #48]
	ldr	r0, [r7, #8]
	blx	r3
.L301:
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	destroy_charmaps(PLT)
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L302
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #52]
	ldr	r0, [r7, #8]
	blx	r3
.L302:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	and	r3, r3, #1024
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Stream_Free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #104]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	cmp	r3, #0
	beq	.L303
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #128]
.L303:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #8]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L305:
	.align	2
.L304:
	.word	destroy_size-(.LPIC0+4)
	.size	destroy_face, .-destroy_face
	.section	.text.Destroy_Driver,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Destroy_Driver, %function
Destroy_Driver:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r2
	ldr	r2, .L307
.LPIC1:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	FT_List_Finalize(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L308:
	.align	2
.L307:
	.word	destroy_face-(.LPIC1+4)
	.size	Destroy_Driver, .-Destroy_Driver
	.section	.text.find_unicode_charmap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	find_unicode_charmap, %function
find_unicode_charmap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L310
	movs	r3, #38
	b	.L311
.L310:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L312
.L315:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	movw	r3, #26979
	movt	r3, 30062
	cmp	r2, r3
	bne	.L312
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrh	r3, [r3, #8]
	cmp	r3, #3
	bne	.L313
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrh	r3, [r3, #10]
	cmp	r3, #10
	beq	.L314
.L313:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrh	r3, [r3, #8]
	cmp	r3, #0
	bne	.L312
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldrh	r3, [r3, #10]
	cmp	r3, #4
	bne	.L312
.L314:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
	movs	r3, #0
	b	.L311
.L312:
	ldr	r3, [r7, #12]
	subs	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L315
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L316
.L317:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	movw	r3, #26979
	movt	r3, 30062
	cmp	r2, r3
	bne	.L316
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
	movs	r3, #0
	b	.L311
.L316:
	ldr	r3, [r7, #12]
	subs	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L317
	movs	r3, #38
.L311:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	find_unicode_charmap, .-find_unicode_charmap
	.section	.text.find_variant_selector_charmap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	find_variant_selector_charmap, %function
find_variant_selector_charmap:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L319
	movs	r3, #0
	b	.L320
.L319:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	str	r3, [r7, #20]
	b	.L321
.L323:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldrh	r3, [r3, #8]
	cmp	r3, #0
	bne	.L322
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldrh	r3, [r3, #10]
	cmp	r3, #5
	bne	.L322
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_Get_CMap_Format(PLT)
	mov	r3, r0
	cmp	r3, #14
	bne	.L322
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	b	.L320
.L322:
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
.L321:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L323
	movs	r3, #0
.L320:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	find_variant_selector_charmap, .-find_variant_selector_charmap
	.section	.text.open_face,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	open_face, %function
open_face:
	@ args = 12, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #36]
	add	r3, r7, #20
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L325
	b	.L326
.L325:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #12]
	str	r2, [r3, #96]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #28]
	str	r2, [r3, #100]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	str	r2, [r3, #104]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L327
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #8]
	orr	r2, r3, #1024
	ldr	r3, [r7, #36]
	str	r2, [r3, #8]
.L327:
	add	r3, r7, #20
	ldr	r0, [r7, #28]
	movs	r1, #60
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L328
	b	.L326
.L328:
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #44]
	str	r2, [r3, #128]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #128]
	movs	r2, #0
	str	r2, [r3, #48]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L329
.L332:
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	ldr	r2, [r3]
	movw	r3, #25458
	movt	r3, 26990
	cmp	r2, r3
	bne	.L330
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #128]
	ldr	r2, [r7, #40]
	lsls	r2, r2, #3
	ldr	r1, [r7, #68]
	add	r2, r2, r1
	ldr	r2, [r2, #4]
	str	r2, [r3, #48]
.L330:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L329:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bge	.L331
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L332
.L331:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L333
	ldr	r3, [r7, #32]
	ldr	r4, [r3, #48]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r2, [r7, #68]
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #36]
	ldr	r2, [r7]
	ldr	r3, [r7, #64]
	blx	r4
	mov	r3, r0
	str	r3, [r7, #20]
.L333:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L334
	b	.L326
.L334:
	ldr	r0, [r7, #36]
	bl	find_unicode_charmap(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L335
	ldr	r3, [r7, #24]
	uxtb	r3, r3
	cmp	r3, #38
	beq	.L335
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	b	.L326
.L335:
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #36]
	str	r2, [r3]
.L326:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L336
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #28]
	bl	destroy_charmaps(PLT)
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L337
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #52]
	ldr	r0, [r7, #36]
	blx	r3
.L337:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #44]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #36]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #72]
	movs	r2, #0
	str	r2, [r3]
.L336:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	open_face, .-open_face
	.section	.text.FT_New_Face,"ax",%progbits
	.align	2
	.global	FT_New_Face
	.thumb
	.thumb_func
	.type	FT_New_Face, %function
FT_New_Face:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L340
	movs	r3, #6
	b	.L342
.L340:
	movs	r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	FT_Open_Face(PLT)
	mov	r3, r0
.L342:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_New_Face, .-FT_New_Face
	.section	.text.FT_New_Memory_Face,"ax",%progbits
	.align	2
	.global	FT_New_Memory_Face
	.thumb
	.thumb_func
	.type	FT_New_Memory_Face, %function
FT_New_Memory_Face:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L344
	movs	r3, #6
	b	.L346
.L344:
	movs	r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #32]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #56]
	bl	FT_Open_Face(PLT)
	mov	r3, r0
.L346:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_New_Memory_Face, .-FT_New_Memory_Face
	.section	.text.memory_stream_close,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	memory_stream_close, %function
memory_stream_close:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	memory_stream_close, .-memory_stream_close
	.section	.text.new_memory_stream,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	new_memory_stream, %function
new_memory_stream:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L349
	movs	r3, #33
	b	.L354
.L349:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L351
	movs	r3, #6
	b	.L354
.L351:
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	add	r3, r7, #20
	ldr	r0, [r7, #24]
	movs	r1, #40
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L352
	b	.L353
.L352:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	FT_Stream_OpenMemory(PLT)
	ldr	r3, [r7, #28]
	ldr	r2, [r7]
	str	r2, [r3, #24]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #28]
	str	r2, [r3]
.L353:
	ldr	r3, [r7, #20]
.L354:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	new_memory_stream, .-new_memory_stream
	.section	.text.open_face_from_buffer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	open_face_from_buffer, %function
open_face_from_buffer:
	@ args = 8, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	add	r3, r7, #20
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, .L362
.LPIC2:
	add	r3, pc
	bl	new_memory_stream(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L356
	ldr	r0, [r7, #60]
	ldr	r1, [r7, #8]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #56]
	b	.L361
.L356:
	movs	r3, #2
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #40]
	ldr	r3, [r7, #72]
	cmp	r3, #0
	beq	.L358
	ldr	r3, [r7, #24]
	orr	r3, r3, #8
	str	r3, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #72]
	bl	FT_Get_Module(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
.L358:
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7]
	ldr	r3, [r7, #76]
	bl	FT_Open_Face(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L359
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	ldr	r2, [r7, #76]
	ldr	r2, [r2]
	ldr	r2, [r2, #8]
	bic	r2, r2, #1024
	str	r2, [r3, #8]
	b	.L360
.L359:
	ldr	r3, [r7, #20]
	mov	r0, r3
	bl	FT_Stream_Close(PLT)
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #60]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
.L360:
	ldr	r3, [r7, #56]
.L361:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L363:
	.align	2
.L362:
	.word	memory_stream_close-(.LPIC2+4)
	.size	open_face_from_buffer, .-open_face_from_buffer
	.section	.text.ft_lookup_PS_in_sfnt_stream,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lookup_PS_in_sfnt_stream, %function
ft_lookup_PS_in_sfnt_stream:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #48]
	movs	r2, #0
	strb	r2, [r3]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L365
	ldr	r3, [r7, #20]
	b	.L377
.L365:
	ldr	r2, [r7, #28]
	movw	r3, #28721
	movt	r3, 29817
	cmp	r2, r3
	beq	.L367
	movs	r3, #2
	b	.L377
.L367:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L368
	ldr	r3, [r7, #20]
	b	.L377
.L368:
	ldr	r0, [r7, #12]
	movs	r1, #6
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L369
	ldr	r3, [r7, #20]
	b	.L377
.L369:
	mov	r3, #-1
	str	r3, [r7, #36]
	ldr	r3, [r7, #48]
	movs	r2, #0
	strb	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L370
.L376:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L371
	ldr	r0, [r7, #12]
	movs	r1, #4
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L371
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L371
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L372
.L371:
	ldr	r3, [r7, #20]
	b	.L377
.L372:
	ldr	r2, [r7, #28]
	movw	r3, #17440
	movt	r3, 17225
	cmp	r2, r3
	bne	.L373
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r3, #22
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	sub	r2, r3, #22
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L374
	movs	r3, #0
	b	.L377
.L373:
	ldr	r2, [r7, #28]
	movw	r3, #20529
	movt	r3, 21593
	cmp	r2, r3
	bne	.L374
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	sub	r2, r3, #24
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L374
	movs	r3, #0
	b	.L377
.L374:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L375
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L375
	movs	r3, #0
	b	.L377
.L375:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L370:
	ldrh	r2, [r7, #26]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bgt	.L376
	movs	r3, #142
.L377:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lookup_PS_in_sfnt_stream, .-ft_lookup_PS_in_sfnt_stream
	.section	.rodata
	.align	2
.LC0:
	.ascii	"cid\000"
	.align	2
.LC1:
	.ascii	"type1\000"
	.section	.text.open_face_PS_from_sfnt_stream,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	open_face_PS_from_sfnt_stream, %function
open_face_PS_from_sfnt_stream:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ble	.L379
	ldr	r3, [r7, #4]
	uxth	r3, r3
	str	r3, [r7, #4]
.L379:
	ldr	r0, [r7, #8]
	bl	FT_Stream_Pos(PLT)
	str	r0, [r7, #36]
	add	r2, r7, #24
	add	r3, r7, #20
	add	r1, r7, #19
	str	r1, [sp]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #4]
	bl	ft_lookup_PS_in_sfnt_stream(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L380
	b	.L381
.L380:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L382
	b	.L381
.L382:
	ldr	r3, [r7, #20]
	mov	r2, r3
	add	r3, r7, #28
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #40]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L383
	b	.L381
.L383:
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #40]
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L384
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #40]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L381
.L384:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	and	r4, r3, r3, asr #31
	ldrb	r3, [r7, #19]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L385
	ldr	r3, .L390
.LPIC3:
	add	r3, pc
	b	.L386
.L385:
	ldr	r3, .L390+4
.LPIC4:
	add	r3, pc
.L386:
	str	r3, [sp]
	ldr	r3, [r7, #68]
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #40]
	mov	r3, r4
	bl	open_face_from_buffer(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
.L381:
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L387
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #36]
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L387
	ldr	r3, [r7, #32]
	b	.L389
.L387:
	ldr	r3, [r7, #28]
.L389:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L391:
	.align	2
.L390:
	.word	.LC0-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.size	open_face_PS_from_sfnt_stream, .-open_face_PS_from_sfnt_stream
	.section	.text.Mac_Read_POST_Resource,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Mac_Read_POST_Resource, %function
Mac_Read_POST_Resource:
	@ args = 8, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #72]
	cmp	r3, #-1
	bne	.L393
	movs	r3, #0
	str	r3, [r7, #72]
.L393:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	beq	.L394
	ldr	r3, [r7, #16]
	b	.L427
.L394:
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L396
.L402:
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L397
	b	.L398
.L397:
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L399
	b	.L398
.L399:
	ldr	r3, [r7, #24]
	cmp	r3, #16777216
	bcs	.L400
	ldr	r3, [r7, #24]
	rsb	r3, r3, #16711935
	add	r3, r3, #65280
	ldr	r2, [r7, #48]
	adds	r2, r2, #6
	cmp	r3, r2
	bcs	.L401
.L400:
	movs	r3, #9
	str	r3, [r7, #16]
	b	.L398
.L401:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	adds	r3, r3, #6
	str	r3, [r7, #48]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L396:
	ldr	r2, [r7, #60]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L402
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	cmp	r3, #5
	bhi	.L403
	movs	r3, #10
	str	r3, [r7, #16]
	b	.L398
.L403:
	ldr	r3, [r7, #48]
	adds	r2, r3, #2
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L404
	b	.L398
.L404:
	ldr	r3, [r7, #28]
	movs	r2, #128
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #3
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #5
	movs	r2, #0
	strb	r2, [r3]
	movs	r3, #6
	str	r3, [r7, #44]
	movs	r3, #2
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #1
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L405
.L422:
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L406
	b	.L407
.L406:
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L408
	b	.L407
.L408:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L409
	movs	r3, #9
	str	r3, [r7, #16]
	b	.L407
.L409:
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L410
	b	.L407
.L410:
	movs	r3, #10
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	asrs	r3, r3, #8
	cmp	r3, #0
	bne	.L411
	b	.L412
.L411:
	ldr	r3, [r7, #36]
	cmp	r3, #2
	bls	.L413
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	str	r3, [r7, #36]
	b	.L414
.L413:
	movs	r3, #0
	str	r3, [r7, #36]
.L414:
	ldr	r3, [r7, #20]
	asrs	r2, r3, #8
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bne	.L415
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L416
.L415:
	ldr	r3, [r7, #40]
	adds	r2, r3, #3
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	cmp	r2, r3
	bls	.L417
	b	.L407
.L417:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r3, r3, #3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	lsrs	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	asrs	r3, r3, #8
	cmp	r3, #5
	bne	.L418
	b	.L419
.L418:
	ldr	r3, [r7, #44]
	adds	r2, r3, #6
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	cmp	r2, r3
	bls	.L420
	b	.L407
.L420:
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	movs	r2, #128
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	asrs	r3, r3, #8
	str	r3, [r7, #56]
	ldr	r3, [r7, #36]
	str	r3, [r7, #52]
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #56]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L416:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L407
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bhi	.L407
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	ldr	r2, [r7, #36]
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L421
	b	.L407
.L421:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #44]
.L412:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L405:
	ldr	r2, [r7, #60]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L422
.L419:
	movs	r3, #10
	str	r3, [r7, #16]
	ldr	r3, [r7, #44]
	adds	r2, r3, #2
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	cmp	r2, r3
	bls	.L423
	b	.L407
.L423:
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	movs	r2, #128
	strb	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r2, r3, #1
	str	r2, [r7, #44]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	movs	r2, #3
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r2, r3, #3
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	cmp	r2, r3
	bls	.L424
	b	.L407
.L424:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r3, r3, #2
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r3, r3, #3
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #52]
	lsrs	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, .L428
.LPIC5:
	add	r3, pc
	str	r3, [sp]
	ldr	r3, [r7, #76]
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #72]
	bl	open_face_from_buffer(PLT)
	mov	r3, r0
	b	.L427
.L407:
	ldr	r3, [r7, #16]
	cmp	r3, #10
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L426
	movs	r3, #1
	str	r3, [r7, #16]
.L426:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #28]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
.L398:
	ldr	r3, [r7, #16]
.L427:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L429:
	.align	2
.L428:
	.word	.LC1-(.LPIC5+4)
	.size	Mac_Read_POST_Resource, .-Mac_Read_POST_Resource
	.section	.rodata
	.align	2
.LC2:
	.ascii	"OTTO\000"
	.align	2
.LC3:
	.ascii	"cff\000"
	.align	2
.LC4:
	.ascii	"truetype\000"
	.section	.text.Mac_Read_sfnt_Resource,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Mac_Read_sfnt_Resource, %function
Mac_Read_sfnt_Resource:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r3, [r7, #56]
	cmp	r3, #-1
	bne	.L431
	movs	r3, #0
	str	r3, [r7, #56]
.L431:
	ldr	r2, [r7, #56]
	ldr	r3, [r7]
	cmp	r2, r3
	blt	.L432
	movs	r3, #1
	b	.L447
.L432:
	ldr	r3, [r7, #56]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #32]
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L434
	b	.L435
.L434:
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L436
	b	.L435
.L436:
	ldr	r3, [r7, #28]
	cmp	r3, #-1
	bne	.L437
	movs	r3, #1
	b	.L447
.L437:
	ldr	r3, [r7, #28]
	cmp	r3, #16777216
	bcc	.L438
	movs	r3, #9
	b	.L447
.L438:
	movs	r3, #0
	str	r3, [sp]
	ldr	r3, [r7, #60]
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #56]
	movs	r3, #0
	bl	open_face_PS_from_sfnt_stream(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L439
	b	.L435
.L439:
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L440
	b	.L435
.L440:
	add	r3, r7, #20
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #28]
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #40]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L441
	ldr	r3, [r7, #20]
	b	.L447
.L441:
	ldr	r3, [r7, #28]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #40]
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L442
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #40]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L435
.L442:
	ldr	r3, [r7, #28]
	cmp	r3, #4
	ble	.L443
	ldr	r0, [r7, #40]
	ldr	r3, .L448
.LPIC6:
	add	r3, pc
	mov	r1, r3
	movs	r2, #4
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L443
	movs	r3, #1
	b	.L444
.L443:
	movs	r3, #0
.L444:
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L445
	ldr	r3, .L448+4
.LPIC7:
	add	r3, pc
	b	.L446
.L445:
	ldr	r3, .L448+8
.LPIC8:
	add	r3, pc
.L446:
	str	r3, [sp]
	ldr	r3, [r7, #60]
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #40]
	ldr	r3, [r7, #36]
	bl	open_face_from_buffer(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
.L435:
	ldr	r3, [r7, #20]
.L447:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L449:
	.align	2
.L448:
	.word	.LC2-(.LPIC6+4)
	.word	.LC3-(.LPIC7+4)
	.word	.LC4-(.LPIC8+4)
	.size	Mac_Read_sfnt_Resource, .-Mac_Read_sfnt_Resource
	.global	__aeabi_idivmod
	.section	.text.IsMacResource,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	IsMacResource, %function
IsMacResource:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	add	r3, r7, #32
	add	r2, r7, #28
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	FT_Raccess_Get_HeaderInfo(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L451
	ldr	r3, [r7, #44]
	b	.L456
.L451:
	ldr	r2, [r7, #32]
	ldr	r4, [r7, #28]
	movw	r3, #21332
	movt	r3, 20559
	str	r3, [sp]
	movs	r3, #1
	str	r3, [sp, #4]
	add	r3, r7, #24
	str	r3, [sp, #8]
	add	r3, r7, #20
	str	r3, [sp, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r3, r4
	bl	FT_Raccess_Get_DataOffsets(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L453
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r1, [r7]
	str	r1, [sp]
	ldr	r1, [r7, #64]
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	Mac_Read_POST_Resource(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L454
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	movs	r2, #1
	str	r2, [r3]
.L454:
	ldr	r3, [r7, #44]
	b	.L456
.L453:
	ldr	r2, [r7, #32]
	ldr	r4, [r7, #28]
	movw	r3, #28276
	movt	r3, 29542
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	add	r3, r7, #24
	str	r3, [sp, #8]
	add	r3, r7, #20
	str	r3, [sp, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r3, r4
	bl	FT_Raccess_Get_DataOffsets(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L455
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	str	r3, [r7, #36]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	ldr	r1, [r7, #36]
	str	r1, [sp]
	ldr	r1, [r7, #64]
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	Mac_Read_sfnt_Resource(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L455
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L455:
	ldr	r3, [r7, #44]
.L456:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	IsMacResource, .-IsMacResource
	.section	.text.IsMacBinary,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	IsMacBinary, %function
IsMacBinary:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #168
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L458
	movs	r3, #85
	b	.L465
.L458:
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	str	r0, [r7, #156]
	ldr	r3, [r7, #156]
	cmp	r3, #0
	beq	.L460
	b	.L461
.L460:
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	movs	r2, #128
	bl	FT_Stream_Read(PLT)
	str	r0, [r7, #156]
	ldr	r3, [r7, #156]
	cmp	r3, #0
	beq	.L462
	b	.L461
.L462:
	ldrb	r3, [r7, #20]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L463
	ldrb	r3, [r7, #94]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L463
	ldrb	r3, [r7, #102]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L463
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L463
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	cmp	r3, #33
	bhi	.L463
	ldrb	r3, [r7, #83]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L463
	ldrb	r3, [r7, #21]	@ zero_extendqisi2
	adds	r3, r3, #2
	add	r2, r7, #160
	add	r3, r3, r2
	ldrb	r3, [r3, #-140]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L463
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L464
.L463:
	movs	r3, #2
	b	.L465
.L464:
	ldrb	r3, [r7, #103]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldrb	r3, [r7, #104]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldrb	r3, [r7, #105]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldrb	r3, [r7, #106]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #152]
	ldr	r3, [r7, #152]
	adds	r3, r3, #127
	bic	r3, r3, #127
	adds	r3, r3, #128
	str	r3, [r7, #148]
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #4]
	bl	IsMacResource(PLT)
	mov	r3, r0
	b	.L465
.L461:
	ldr	r3, [r7, #156]
.L465:
	mov	r0, r3
	adds	r7, r7, #160
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	IsMacBinary, .-IsMacBinary
	.section	.text.load_face_in_embedded_rfork,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	load_face_in_embedded_rfork, %function
load_face_in_embedded_rfork:
	@ args = 4, pretend = 0, frame = 184
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #192
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #168]
	movs	r3, #2
	str	r3, [r7, #180]
	movs	r3, #0
	strb	r3, [r7, #175]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #192]
	ldr	r2, [r3, #12]
	add	r3, r7, #128
	add	r1, r7, #92
	str	r1, [sp]
	add	r1, r7, #56
	str	r1, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	FT_Raccess_Guess(PLT)
	movs	r3, #0
	str	r3, [r7, #176]
	b	.L467
.L477:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #176]
	bl	ft_raccess_rule_by_darwin_vfs(PLT)
	mov	r3, r0
	strb	r3, [r7, #167]
	ldrb	r3, [r7, #167]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L468
	ldrb	r3, [r7, #175]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L468
	b	.L469
.L468:
	ldr	r3, [r7, #176]
	lsls	r3, r3, #2
	add	r1, r7, #184
	add	r3, r3, r1
	ldr	r3, [r3, #-128]
	cmp	r3, #0
	beq	.L470
	b	.L469
.L470:
	movs	r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #176]
	lsls	r3, r3, #2
	add	r2, r7, #184
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	cmp	r3, #0
	beq	.L471
	ldr	r3, [r7, #176]
	lsls	r3, r3, #2
	add	r1, r7, #184
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	b	.L472
.L471:
	ldr	r3, [r7, #192]
	ldr	r3, [r3, #12]
.L472:
	str	r3, [r7, #36]
	add	r2, r7, #24
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_New(PLT)
	str	r0, [r7, #180]
	ldrb	r3, [r7, #167]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L473
	ldr	r3, [r7, #180]
	uxtb	r3, r3
	cmp	r3, #81
	bne	.L473
	movs	r3, #1
	strb	r3, [r7, #175]
.L473:
	ldr	r3, [r7, #180]
	cmp	r3, #0
	beq	.L474
	b	.L469
.L474:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #176]
	lsls	r3, r3, #2
	add	r1, r7, #184
	add	r3, r3, r1
	ldr	r3, [r3, #-92]
	ldr	r1, [r7]
	str	r1, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	IsMacResource(PLT)
	str	r0, [r7, #180]
	ldr	r3, [r7, #20]
	mov	r0, r3
	movs	r1, #0
	bl	FT_Stream_Free(PLT)
	ldr	r3, [r7, #180]
	cmp	r3, #0
	bne	.L475
	b	.L476
.L475:
	ldrb	r3, [r7, #167]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L469
	movs	r3, #1
	strb	r3, [r7, #175]
.L469:
	ldr	r3, [r7, #176]
	adds	r3, r3, #1
	str	r3, [r7, #176]
.L467:
	ldr	r3, [r7, #176]
	cmp	r3, #8
	bls	.L477
.L476:
	movs	r3, #0
	str	r3, [r7, #176]
	b	.L478
.L480:
	ldr	r3, [r7, #176]
	lsls	r3, r3, #2
	add	r2, r7, #184
	add	r3, r3, r2
	ldr	r3, [r3, #-56]
	cmp	r3, #0
	beq	.L479
	ldr	r3, [r7, #176]
	lsls	r3, r3, #2
	add	r1, r7, #184
	add	r3, r3, r1
	ldr	r3, [r3, #-56]
	ldr	r0, [r7, #168]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #176]
	lsls	r3, r3, #2
	add	r2, r7, #184
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3, #-56]
.L479:
	ldr	r3, [r7, #176]
	adds	r3, r3, #1
	str	r3, [r7, #176]
.L478:
	ldr	r3, [r7, #176]
	cmp	r3, #8
	bls	.L480
	ldr	r3, [r7, #180]
	cmp	r3, #0
	beq	.L481
	movs	r3, #2
	str	r3, [r7, #180]
.L481:
	ldr	r3, [r7, #180]
	mov	r0, r3
	adds	r7, r7, #184
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	load_face_in_embedded_rfork, .-load_face_in_embedded_rfork
	.section	.text.load_mac_face,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	load_mac_face, %function
load_mac_face:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	IsMacBinary(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	uxtb	r3, r3
	cmp	r3, #2
	bne	.L484
	ldr	r3, [r7]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #0
	ldr	r3, [r7, #4]
	bl	IsMacResource(PLT)
	str	r0, [r7, #20]
.L484:
	ldr	r3, [r7, #20]
	uxtb	r3, r3
	cmp	r3, #2
	beq	.L485
	ldr	r3, [r7, #20]
	uxtb	r3, r3
	cmp	r3, #85
	bne	.L486
.L485:
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L486
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	load_face_in_embedded_rfork(PLT)
	str	r0, [r7, #20]
.L486:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	load_mac_face, .-load_mac_face
	.section	.text.FT_Open_Face,"ax",%progbits
	.align	2
	.global	FT_Open_Face
	.thumb
	.thumb_func
	.type	FT_Open_Face, %function
FT_Open_Face:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #104
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #76]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L489
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L490
.L489:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L491
.L490:
	movs	r3, #6
	b	.L531
.L491:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L493
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L493
	movs	r3, #1
	b	.L494
.L493:
	movs	r3, #0
.L494:
	strb	r3, [r7, #51]
	add	r3, r7, #28
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	FT_Stream_New(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L495
	b	.L496
.L495:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #80]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L497
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L497
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L498
	movs	r3, #0
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L499
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	str	r3, [r7, #68]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	str	r3, [r7, #64]
.L499:
	add	r2, r7, #28
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	ldr	r1, [r7, #68]
	str	r1, [sp]
	ldr	r1, [r7, #64]
	str	r1, [sp, #4]
	add	r1, r7, #24
	str	r1, [sp, #8]
	ldr	r0, [r7, #84]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	open_face(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L500
	b	.L501
.L500:
	b	.L502
.L498:
	movs	r3, #32
	str	r3, [r7, #32]
.L502:
	ldr	r2, [r7, #28]
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	FT_Stream_Free(PLT)
	b	.L503
.L497:
	movs	r3, #11
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	str	r3, [r7, #72]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	str	r3, [r7, #44]
	b	.L504
.L510:
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L505
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	str	r3, [r7, #84]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L506
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	str	r3, [r7, #60]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	str	r3, [r7, #56]
.L506:
	add	r2, r7, #28
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	ldr	r1, [r7, #60]
	str	r1, [sp]
	ldr	r1, [r7, #56]
	str	r1, [sp, #4]
	add	r1, r7, #24
	str	r1, [sp, #8]
	ldr	r0, [r7, #84]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	bl	open_face(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L507
	b	.L501
.L507:
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r3, .L532
.LPIC9:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L508
	ldr	r3, [r7, #32]
	uxtb	r3, r3
	cmp	r3, #142
	bne	.L508
	ldr	r3, [r7, #28]
	mov	r0, r3
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L509
	b	.L496
.L509:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #56]
	str	r2, [sp]
	ldr	r2, [r7]
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #60]
	bl	open_face_PS_from_sfnt_stream(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L508
	ldr	r2, [r7, #28]
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	FT_Stream_Free(PLT)
	ldr	r3, [r7, #32]
	b	.L531
.L508:
	ldr	r3, [r7, #32]
	uxtb	r3, r3
	cmp	r3, #2
	beq	.L505
	b	.L496
.L505:
	ldr	r3, [r7, #72]
	adds	r3, r3, #4
	str	r3, [r7, #72]
.L504:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bcc	.L510
.L496:
	ldr	r3, [r7, #32]
	uxtb	r3, r3
	cmp	r3, #81
	beq	.L511
	ldr	r3, [r7, #32]
	uxtb	r3, r3
	cmp	r3, #2
	beq	.L511
	ldr	r3, [r7, #32]
	uxtb	r3, r3
	cmp	r3, #85
	beq	.L511
	b	.L512
.L511:
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #8]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	load_mac_face(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L513
	ldr	r2, [r7, #28]
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	FT_Stream_Free(PLT)
	ldr	r3, [r7, #32]
	b	.L531
.L513:
	ldr	r3, [r7, #32]
	uxtb	r3, r3
	cmp	r3, #2
	beq	.L514
	b	.L512
.L514:
	movs	r3, #2
	str	r3, [r7, #32]
.L512:
	ldr	r2, [r7, #28]
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	mov	r0, r2
	mov	r1, r3
	bl	FT_Stream_Free(PLT)
	b	.L503
.L501:
	add	r3, r7, #32
	ldr	r0, [r7, #80]
	movs	r1, #12
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L515
	b	.L503
.L515:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #76]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #96]
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #76]
	bl	FT_List_Add(PLT)
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.L516
	ldr	r3, [r7, #24]
	mov	r0, r3
	movs	r1, #0
	bl	FT_New_GlyphSlot(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L517
	b	.L503
.L517:
	ldr	r2, [r7, #24]
	add	r3, r7, #20
	mov	r0, r2
	mov	r1, r3
	bl	FT_New_Size(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L503
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #20]
	str	r2, [r3, #88]
.L516:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L519
	ldr	r3, [r7, #24]
	ldrh	r3, [r3, #74]
	sxth	r3, r3
	cmp	r3, #0
	bge	.L520
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldrh	r2, [r2, #74]
	uxth	r2, r2
	negs	r2, r2
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3, #74]	@ movhi
.L520:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L519
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldrh	r2, [r2, #74]
	strh	r2, [r3, #78]	@ movhi
.L519:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L521
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L522
.L526:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #0
	bge	.L523
	ldr	r3, [r7, #40]
	ldrh	r3, [r3]
	uxth	r3, r3
	negs	r3, r3
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #40]
	strh	r2, [r3]	@ movhi
.L523:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L524
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #8]
	uxth	r3, r3
	negs	r3, r3
	uxth	r3, r3
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #8]
.L524:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bge	.L525
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	negs	r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
.L525:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L522:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bgt	.L526
.L521:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #128]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	mov	r2, #65536
	str	r2, [r3]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #36]
	mov	r2, #65536
	str	r2, [r3, #12]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #36]
	movs	r2, #1
	str	r2, [r3, #56]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L527
	ldr	r2, [r7, #24]
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L529
.L527:
	ldr	r3, [r7, #24]
	mov	r0, r3
	bl	FT_Done_Face(PLT)
	b	.L529
.L503:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	beq	.L530
	ldr	r3, [r7, #24]
	mov	r0, r3
	bl	FT_Done_Face(PLT)
	b	.L529
.L530:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L529
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #80]
	mov	r1, r3
	ldr	r2, [r7, #84]
	bl	destroy_face(PLT)
.L529:
	ldr	r3, [r7, #32]
.L531:
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L533:
	.align	2
.L532:
	.word	.LC4-(.LPIC9+4)
	.size	FT_Open_Face, .-FT_Open_Face
	.section	.text.FT_Attach_File,"ax",%progbits
	.align	2
	.global	FT_Attach_File
	.thumb
	.thumb_func
	.type	FT_Attach_File, %function
FT_Attach_File:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L535
	movs	r3, #6
	b	.L537
.L535:
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #4
	str	r3, [r7, #8]
	ldr	r3, [r7]
	str	r3, [r7, #20]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Attach_Stream(PLT)
	mov	r3, r0
.L537:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Attach_File, .-FT_Attach_File
	.section	.text.FT_Attach_Stream,"ax",%progbits
	.align	2
	.global	FT_Attach_Stream
	.thumb
	.thumb_func
	.type	FT_Attach_Stream, %function
FT_Attach_Stream:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L539
	movs	r3, #35
	b	.L547
.L539:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L541
	movs	r3, #34
	b	.L547
.L541:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	add	r3, r7, #8
	mov	r0, r2
	ldr	r1, [r7]
	mov	r2, r3
	bl	FT_Stream_New(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L542
	b	.L543
.L542:
	movs	r3, #7
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	cmp	r3, #0
	beq	.L544
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #80]
	ldr	r2, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r2
	blx	r3
	str	r0, [r7, #20]
.L544:
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L545
	ldr	r3, [r7]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L545
	movs	r3, #1
	b	.L546
.L545:
	movs	r3, #0
.L546:
	uxtb	r3, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Stream_Free(PLT)
.L543:
	ldr	r3, [r7, #20]
.L547:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Attach_Stream, .-FT_Attach_Stream
	.section	.text.FT_Reference_Face,"ax",%progbits
	.align	2
	.global	FT_Reference_Face
	.thumb
	.thumb_func
	.type	FT_Reference_Face, %function
FT_Reference_Face:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L549
	movs	r3, #35
	b	.L550
.L549:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r2, [r3, #56]
	adds	r2, r2, #1
	str	r2, [r3, #56]
	movs	r3, #0
.L550:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Reference_Face, .-FT_Reference_Face
	.section	.text.FT_Done_Face,"ax",%progbits
	.align	2
	.global	FT_Done_Face
	.thumb
	.thumb_func
	.type	FT_Done_Face, %function
FT_Done_Face:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #35
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L552
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	beq	.L552
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r2, [r3, #56]
	subs	r2, r2, #1
	str	r2, [r3, #56]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	ble	.L553
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L552
.L553:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	FT_List_Find(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L552
	ldr	r3, [r7, #16]
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_List_Remove(PLT)
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #16]
	bl	destroy_face(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
.L552:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Done_Face, .-FT_Done_Face
	.section	.text.FT_New_Size,"ax",%progbits
	.align	2
	.global	FT_New_Size
	.thumb
	.thumb_func
	.type	FT_New_Size, %function
FT_New_Size:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L556
	movs	r3, #35
	b	.L563
.L556:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L558
	movs	r3, #6
	b	.L563
.L558:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	bne	.L559
	movs	r3, #34
	b	.L563
.L559:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #40]
	add	r3, r7, #8
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L560
	add	r3, r7, #8
	ldr	r0, [r7, #12]
	movs	r1, #12
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L560
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #56]
	cmp	r3, #0
	beq	.L561
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #56]
	ldr	r0, [r7, #24]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #8]
.L561:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L560
	ldr	r3, [r7]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	FT_List_Add(PLT)
.L560:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L562
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #24]
.L562:
	ldr	r3, [r7, #8]
.L563:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_New_Size, .-FT_New_Size
	.section	.text.FT_Done_Size,"ax",%progbits
	.align	2
	.global	FT_Done_Size
	.thumb
	.thumb_func
	.type	FT_Done_Size, %function
FT_Done_Size:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L565
	movs	r3, #36
	b	.L566
.L565:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L567
	movs	r3, #35
	b	.L566
.L567:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #96]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L568
	movs	r3, #34
	b	.L566
.L568:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	adds	r3, r3, #108
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	FT_List_Find(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L569
	ldr	r3, [r7, #24]
	adds	r3, r3, #108
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	FT_List_Remove(PLT)
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L570
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #88]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #108]
	cmp	r3, #0
	beq	.L570
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #108]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	str	r2, [r3, #88]
.L570:
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #20]
	bl	destroy_size(PLT)
	b	.L571
.L569:
	movs	r3, #36
	str	r3, [r7, #28]
.L571:
	ldr	r3, [r7, #28]
.L566:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Done_Size, .-FT_Done_Size
	.section	.text.FT_Match_Size,"ax",%progbits
	.align	2
	.global	FT_Match_Size
	.thumb
	.thumb_func
	.type	FT_Match_Size, %function
FT_Match_Size:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r3, [r7]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L573
	movs	r3, #35
	b	.L574
.L573:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L575
	movs	r3, #7
	b	.L574
.L575:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L576
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #12]
	mul	r3, r2, r3
	add	r2, r3, #36
	movw	r3, #36409
	movt	r3, 14563
	smull	r1, r3, r3, r2
	asrs	r1, r3, #4
	asrs	r3, r2, #31
	subs	r3, r1, r3
	b	.L577
.L576:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
.L577:
	str	r3, [r7, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L578
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #16]
	mul	r3, r2, r3
	add	r2, r3, #36
	movw	r3, #36409
	movt	r3, 14563
	smull	r1, r3, r3, r2
	asrs	r1, r3, #4
	asrs	r3, r2, #31
	subs	r3, r1, r3
	b	.L579
.L578:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
.L579:
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L580
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L580
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	b	.L581
.L580:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L581
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L581
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
.L581:
	ldr	r3, [r7, #24]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L582
.L587:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #20]
	cmp	r2, r3
	beq	.L583
	b	.L584
.L583:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #24]
	cmp	r2, r3
	beq	.L585
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L584
.L585:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L586
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	str	r2, [r3]
.L586:
	movs	r3, #0
	b	.L574
.L584:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L582:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L587
	movs	r3, #23
.L574:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Match_Size, .-FT_Match_Size
	.section	.text.ft_synthesize_vertical_metrics,"ax",%progbits
	.align	2
	.global	ft_synthesize_vertical_metrics
	.thumb
	.thumb_func
	.type	ft_synthesize_vertical_metrics, %function
ft_synthesize_vertical_metrics:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bge	.L589
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L591
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	b	.L591
.L589:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	ble	.L591
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #12]
	subs	r3, r2, r3
	str	r3, [r7, #12]
.L591:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L592
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7]
.L592:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	subs	r3, r2, r3
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #28]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_synthesize_vertical_metrics, .-ft_synthesize_vertical_metrics
	.section	.text.ft_recompute_scaled_metrics,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_recompute_scaled_metrics, %function
ft_recompute_scaled_metrics:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #70]
	sxth	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	adds	r3, r3, #63
	bic	r2, r3, #63
	ldr	r3, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #72]
	sxth	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	bic	r2, r3, #63
	ldr	r3, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #74]
	sxth	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #76]
	sxth	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7]
	str	r2, [r3, #24]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_recompute_scaled_metrics, .-ft_recompute_scaled_metrics
	.section	.text.FT_Select_Metrics,"ax",%progbits
	.align	2
	.global	FT_Select_Metrics
	.thumb
	.thumb_func
	.type	FT_Select_Metrics, %function
FT_Select_Metrics:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	adds	r3, r3, #12
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	adds	r3, r3, #32
	asrs	r3, r3, #6
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	adds	r3, r3, #32
	asrs	r3, r3, #6
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L595
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #68]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #68]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	ft_recompute_scaled_metrics(PLT)
	b	.L594
.L595:
	ldr	r3, [r7, #12]
	mov	r2, #65536
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	mov	r2, #65536
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	sxth	r3, r3
	lsls	r2, r3, #6
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
.L594:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Select_Metrics, .-FT_Select_Metrics
	.section	.text.FT_Request_Metrics,"ax",%progbits
	.align	2
	.global	FT_Request_Metrics
	.thumb
	.thumb_func
	.type	FT_Request_Metrics, %function
FT_Request_Metrics:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #88]
	adds	r3, r3, #12
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L598
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #5
	bhi	.L599
	adr	r1, .L601
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L601:
	.word	.L600+1-.L601
	.word	.L602+1-.L601
	.word	.L603+1-.L601
	.word	.L604+1-.L601
	.word	.L605+1-.L601
	.word	.L599+1-.L601
.L600:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #68]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	b	.L599
.L602:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #70]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #72]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	b	.L599
.L603:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #52]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	b	.L599
.L604:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #76]
	sxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #70]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #72]
	sxth	r3, r3
	subs	r3, r2, r3
	str	r3, [r7, #24]
	b	.L599
.L605:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L607
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	b	.L608
.L607:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L608
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	b	.L609
.L608:
	b	.L609
.L599:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bge	.L610
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #28]
.L610:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L611
	ldr	r3, [r7, #24]
	negs	r3, r3
	str	r3, [r7, #24]
.L611:
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L612
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r2, [r7]
	ldr	r2, [r2, #12]
	mul	r3, r2, r3
	add	r2, r3, #36
	movw	r3, #36409
	movt	r3, 14563
	smull	r1, r3, r3, r2
	asrs	r1, r3, #4
	asrs	r3, r2, #31
	subs	r3, r1, r3
	b	.L613
.L612:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
.L613:
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L614
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ldr	r2, [r7]
	ldr	r2, [r2, #16]
	mul	r3, r2, r3
	add	r2, r3, #36
	movw	r3, #36409
	movt	r3, 14563
	smull	r1, r3, r3, r2
	asrs	r1, r3, #4
	asrs	r3, r2, #31
	subs	r3, r1, r3
	b	.L615
.L614:
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
.L615:
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L616
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #28]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L617
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #24]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #3
	bne	.L609
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	ble	.L619
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	b	.L609
.L619:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	b	.L609
.L617:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #28]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #16]
	b	.L609
.L616:
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #24]
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #24]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #20]
.L609:
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L621
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #68]
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #68]
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	str	r0, [r7, #16]
.L621:
	ldr	r3, [r7, #20]
	adds	r3, r3, #32
	asrs	r3, r3, #6
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #16]
	adds	r3, r3, #32
	asrs	r3, r3, #6
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3, #2]	@ movhi
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	ft_recompute_scaled_metrics(PLT)
	b	.L597
.L598:
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #28
	bl	memset(PLT)
	ldr	r3, [r7, #12]
	mov	r2, #65536
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	mov	r2, #65536
	str	r2, [r3, #8]
.L597:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Request_Metrics, .-FT_Request_Metrics
	.section	.text.FT_Select_Size,"ax",%progbits
	.align	2
	.global	FT_Select_Size
	.thumb
	.thumb_func
	.type	FT_Select_Size, %function
FT_Select_Size:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L624
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	bne	.L625
.L624:
	movs	r3, #35
	b	.L626
.L625:
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L627
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L628
.L627:
	movs	r3, #6
	b	.L626
.L628:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L629
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #88]
	ldr	r2, [r7]
	mov	r0, r1
	mov	r1, r2
	blx	r3
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	b	.L626
.L629:
	ldr	r3, [r7]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Select_Metrics(PLT)
	movs	r3, #0
.L626:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Select_Size, .-FT_Select_Size
	.section	.text.FT_Request_Size,"ax",%progbits
	.align	2
	.global	FT_Request_Size
	.thumb
	.thumb_func
	.type	FT_Request_Size, %function
FT_Request_Size:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L631
	movs	r3, #35
	b	.L638
.L631:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L633
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	blt	.L633
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	blt	.L633
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #4
	bls	.L634
.L633:
	movs	r3, #6
	b	.L638
.L634:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #88]
	cmp	r3, #0
	beq	.L635
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #88]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #88]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	b	.L638
.L635:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L636
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L636
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #0
	bl	FT_Match_Size(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L637
	ldr	r3, [r7, #12]
	b	.L638
.L637:
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Select_Size(PLT)
	mov	r3, r0
	b	.L638
.L636:
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	FT_Request_Metrics(PLT)
	movs	r3, #0
.L638:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Request_Size, .-FT_Request_Size
	.section	.text.FT_Set_Char_Size,"ax",%progbits
	.align	2
	.global	FT_Set_Char_Size
	.thumb
	.thumb_func
	.type	FT_Set_Char_Size, %function
FT_Set_Char_Size:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L640
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	b	.L641
.L640:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L641
	ldr	r3, [r7, #8]
	str	r3, [r7, #4]
.L641:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L642
	ldr	r3, [r7, #48]
	str	r3, [r7]
	b	.L643
.L642:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L643
	ldr	r3, [r7]
	str	r3, [r7, #48]
.L643:
	ldr	r3, [r7, #8]
	cmp	r3, #63
	bgt	.L644
	movs	r3, #64
	str	r3, [r7, #8]
.L644:
	ldr	r3, [r7, #4]
	cmp	r3, #63
	bgt	.L645
	movs	r3, #64
	str	r3, [r7, #4]
.L645:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L646
	movs	r3, #72
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	str	r3, [r7]
.L646:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	str	r3, [r7, #32]
	ldr	r3, [r7, #48]
	str	r3, [r7, #36]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Request_Size(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Set_Char_Size, .-FT_Set_Char_Size
	.section	.text.FT_Set_Pixel_Sizes,"ax",%progbits
	.align	2
	.global	FT_Set_Pixel_Sizes
	.thumb
	.thumb_func
	.type	FT_Set_Pixel_Sizes, %function
FT_Set_Pixel_Sizes:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L649
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	b	.L650
.L649:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L650
	ldr	r3, [r7, #8]
	str	r3, [r7, #4]
.L650:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L651
	movs	r3, #1
	str	r3, [r7, #8]
.L651:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L652
	movs	r3, #1
	str	r3, [r7, #4]
.L652:
	ldr	r2, [r7, #8]
	movw	r3, #65534
	cmp	r2, r3
	bls	.L653
	movw	r3, #65535
	str	r3, [r7, #8]
.L653:
	ldr	r2, [r7, #4]
	movw	r3, #65534
	cmp	r2, r3
	bls	.L654
	movw	r3, #65535
	str	r3, [r7, #4]
.L654:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #6
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #6
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #36]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Request_Size(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Set_Pixel_Sizes, .-FT_Set_Pixel_Sizes
	.section	.text.FT_Get_Kerning,"ax",%progbits
	.align	2
	.global	FT_Get_Kerning
	.thumb
	.thumb_func
	.type	FT_Get_Kerning, %function
FT_Get_Kerning:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L657
	movs	r3, #35
	b	.L658
.L657:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L659
	movs	r3, #6
	b	.L658
.L659:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	str	r3, [r7, #24]
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #48]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #76]
	cmp	r3, #0
	beq	.L660
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #12]
	ldr	r4, [r3, #76]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #48]
	blx	r4
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L660
	ldr	r3, [r7]
	cmp	r3, #2
	beq	.L660
	ldr	r3, [r7, #48]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r3, [r3, #16]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldr	r3, [r3, #20]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r3, #1
	beq	.L660
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldrh	r3, [r3, #12]
	cmp	r3, #24
	bhi	.L661
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldrh	r3, [r3, #12]
	ldr	r0, [r7, #20]
	mov	r1, r3
	movs	r2, #25
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3]
.L661:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldrh	r3, [r3, #14]
	cmp	r3, #24
	bhi	.L662
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #88]
	ldrh	r3, [r3, #14]
	ldr	r0, [r7, #16]
	mov	r1, r3
	movs	r2, #25
	bl	FT_MulDiv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	str	r2, [r3, #4]
.L662:
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #48]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #4]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #48]
	str	r2, [r3, #4]
.L660:
	ldr	r3, [r7, #28]
.L658:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Get_Kerning, .-FT_Get_Kerning
	.section	.rodata
	.align	2
.LC5:
	.ascii	"kerning\000"
	.section	.text.FT_Get_Track_Kerning,"ax",%progbits
	.align	2
	.global	FT_Get_Track_Kerning
	.thumb
	.thumb_func
	.type	FT_Get_Track_Kerning, %function
FT_Get_Track_Kerning:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L664
	movs	r3, #35
	b	.L665
.L664:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L666
	movs	r3, #6
	b	.L665
.L666:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L667
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #20]
	ldr	r2, .L669
.LPIC10:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #28]
.L667:
	ldr	r3, [r7, #28]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L668
	movs	r3, #7
	b	.L665
.L668:
	ldr	r3, [r7, #16]
	ldr	r4, [r3]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
.L665:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L670:
	.align	2
.L669:
	.word	.LC5-(.LPIC10+4)
	.size	FT_Get_Track_Kerning, .-FT_Get_Track_Kerning
	.section	.text.FT_Select_Charmap,"ax",%progbits
	.align	2
	.global	FT_Select_Charmap
	.thumb
	.thumb_func
	.type	FT_Select_Charmap, %function
FT_Select_Charmap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L672
	movs	r3, #35
	b	.L673
.L672:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L674
	movs	r3, #6
	b	.L673
.L674:
	ldr	r2, [r7]
	movw	r3, #26979
	movt	r3, 30062
	cmp	r2, r3
	bne	.L675
	ldr	r0, [r7, #4]
	bl	find_unicode_charmap(PLT)
	mov	r3, r0
	b	.L673
.L675:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L676
	movs	r3, #38
	b	.L673
.L676:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	b	.L677
.L679:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L678
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
	movs	r3, #0
	b	.L673
.L678:
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L677:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L679
	movs	r3, #6
.L673:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Select_Charmap, .-FT_Select_Charmap
	.section	.text.FT_Set_Charmap,"ax",%progbits
	.align	2
	.global	FT_Set_Charmap
	.thumb
	.thumb_func
	.type	FT_Set_Charmap, %function
FT_Set_Charmap:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L681
	movs	r3, #35
	b	.L682
.L681:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #40]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L683
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L684
.L683:
	movs	r3, #38
	b	.L682
.L684:
	ldr	r0, [r7]
	bl	FT_Get_CMap_Format(PLT)
	mov	r3, r0
	cmp	r3, #14
	bne	.L685
	movs	r3, #6
	b	.L682
.L685:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	b	.L686
.L688:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L687
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #92]
	movs	r3, #0
	b	.L682
.L687:
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L686:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L688
	movs	r3, #6
.L682:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Set_Charmap, .-FT_Set_Charmap
	.section	.text.FT_Get_Charmap_Index,"ax",%progbits
	.align	2
	.global	FT_Get_Charmap_Index
	.thumb
	.thumb_func
	.type	FT_Get_Charmap_Index, %function
FT_Get_Charmap_Index:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L690
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L691
.L690:
	mov	r3, #-1
	b	.L692
.L691:
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L693
.L696:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L694
	b	.L695
.L694:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L693:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bgt	.L696
.L695:
	ldr	r3, [r7, #12]
.L692:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Get_Charmap_Index, .-FT_Get_Charmap_Index
	.section	.text.ft_cmap_done_internal,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_cmap_done_internal, %function
ft_cmap_done_internal:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #100]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L698
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	blx	r3
.L698:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_cmap_done_internal, .-ft_cmap_done_internal
	.section	.text.FT_CMap_Done,"ax",%progbits
	.align	2
	.global	FT_CMap_Done
	.thumb
	.thumb_func
	.type	FT_CMap_Done, %function
FT_CMap_Done:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L699
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L701
.L711:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L702
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #36]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #36]
	subs	r3, r3, #1
	ldr	r1, [r7, #20]
	ldr	r1, [r1, #40]
	str	r1, [sp]
	add	r1, r7, #8
	str	r1, [sp, #4]
	ldr	r0, [r7, #16]
	movs	r1, #4
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #20]
	str	r2, [r3, #40]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L703
	b	.L699
.L703:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L705
.L708:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #36]
	subs	r2, r3, #1
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L706
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #24]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	str	r2, [r3]
	b	.L707
.L706:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #24]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	ldr	r1, [r2, #40]
	ldr	r2, [r7, #24]
	lsls	r2, r2, #2
	add	r2, r2, r1
	ldr	r2, [r2]
	str	r2, [r3]
.L707:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L705:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L708
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #36]
	subs	r2, r3, #1
	ldr	r3, [r7, #20]
	str	r2, [r3, #36]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L709
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #92]
.L709:
	ldr	r0, [r7, #4]
	bl	ft_cmap_done_internal(PLT)
	nop
	b	.L699
.L702:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L701:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L711
.L699:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_CMap_Done, .-FT_CMap_Done
	.section	.text.FT_CMap_New,"ax",%progbits
	.align	2
	.global	FT_CMap_New
	.thumb
	.thumb_func
	.type	FT_CMap_New, %function
FT_CMap_New:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L713
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L713
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L714
.L713:
	movs	r3, #6
	b	.L721
.L714:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #100]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r2, r3
	add	r3, r7, #16
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L716
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #4]
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L717
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #8]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L717
	b	.L718
.L717:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #36]
	adds	r3, r3, #1
	ldr	r1, [r7, #24]
	ldr	r1, [r1, #40]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #20]
	movs	r1, #4
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #24]
	str	r2, [r3, #40]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L719
	b	.L718
.L719:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #36]
	adds	r0, r3, #1
	ldr	r1, [r7, #24]
	str	r0, [r1, #36]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	str	r2, [r3]
.L716:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L720
	ldr	r3, [r7]
	ldr	r2, [r7, #28]
	str	r2, [r3]
.L720:
	ldr	r3, [r7, #16]
	b	.L721
.L718:
	ldr	r0, [r7, #28]
	bl	ft_cmap_done_internal(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L716
.L721:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_CMap_New, .-FT_CMap_New
	.section	.text.FT_Get_Char_Index,"ax",%progbits
	.align	2
	.global	FT_Get_Char_Index
	.thumb
	.thumb_func
	.type	FT_Get_Char_Index, %function
FT_Get_Char_Index:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L723
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L723
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	blx	r3
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L723
	movs	r3, #0
	str	r3, [r7, #12]
.L723:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Get_Char_Index, .-FT_Get_Char_Index
	.section	.text.FT_Get_First_Char,"ax",%progbits
	.align	2
	.global	FT_Get_First_Char
	.thumb
	.thumb_func
	.type	FT_Get_First_Char, %function
FT_Get_First_Char:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L726
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L726
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L726
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	FT_Get_Char_Index(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L726
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #0
	mov	r2, r3
	bl	FT_Get_Next_Char(PLT)
	str	r0, [r7, #12]
.L726:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L727
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	str	r2, [r3]
.L727:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Get_First_Char, .-FT_Get_First_Char
	.section	.text.FT_Get_Next_Char,"ax",%progbits
	.align	2
	.global	FT_Get_Next_Char
	.thumb
	.thumb_func
	.type	FT_Get_Next_Char, %function
FT_Get_Next_Char:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L730
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L730
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L730
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	str	r3, [r7, #20]
.L731:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #16]
	add	r2, r7, #16
	ldr	r0, [r7, #20]
	mov	r1, r2
	blx	r3
	str	r0, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L731
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L732
	ldr	r3, [r7, #16]
	b	.L733
.L732:
	movs	r3, #0
.L733:
	str	r3, [r7, #28]
.L730:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L734
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
.L734:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Get_Next_Char, .-FT_Get_Next_Char
	.section	.text.FT_Face_GetCharVariantIndex,"ax",%progbits
	.align	2
	.global	FT_Face_GetCharVariantIndex
	.thumb
	.thumb_func
	.type	FT_Face_GetCharVariantIndex, %function
FT_Face_GetCharVariantIndex:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L737
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	cmp	r3, #0
	beq	.L737
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	ldr	r2, [r3, #4]
	movw	r3, #26979
	movt	r3, 30062
	cmp	r2, r3
	bne	.L737
	ldr	r0, [r7, #12]
	bl	find_variant_selector_charmap(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #92]
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L737
	ldr	r3, [r7, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	ldr	r4, [r3, #20]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	str	r0, [r7, #28]
.L737:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Face_GetCharVariantIndex, .-FT_Face_GetCharVariantIndex
	.section	.text.FT_Face_GetCharVariantIsDefault,"ax",%progbits
	.align	2
	.global	FT_Face_GetCharVariantIsDefault
	.thumb
	.thumb_func
	.type	FT_Face_GetCharVariantIsDefault, %function
FT_Face_GetCharVariantIsDefault:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	mov	r3, #-1
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L740
	ldr	r0, [r7, #12]
	bl	find_variant_selector_charmap(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L740
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #28]
.L740:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Face_GetCharVariantIsDefault, .-FT_Face_GetCharVariantIsDefault
	.section	.text.FT_Face_GetVariantSelectors,"ax",%progbits
	.align	2
	.global	FT_Face_GetVariantSelectors
	.thumb
	.thumb_func
	.type	FT_Face_GetVariantSelectors, %function
FT_Face_GetVariantSelectors:
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
	beq	.L743
	ldr	r0, [r7, #4]
	bl	find_variant_selector_charmap(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L743
	ldr	r3, [r7, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	blx	r3
	str	r0, [r7, #20]
.L743:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Face_GetVariantSelectors, .-FT_Face_GetVariantSelectors
	.section	.text.FT_Face_GetVariantsOfChar,"ax",%progbits
	.align	2
	.global	FT_Face_GetVariantsOfChar
	.thumb
	.thumb_func
	.type	FT_Face_GetVariantsOfChar, %function
FT_Face_GetVariantsOfChar:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L746
	ldr	r0, [r7, #4]
	bl	find_variant_selector_charmap(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L746
	ldr	r3, [r7, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	blx	r3
	str	r0, [r7, #20]
.L746:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Face_GetVariantsOfChar, .-FT_Face_GetVariantsOfChar
	.section	.text.FT_Face_GetCharsOfVariant,"ax",%progbits
	.align	2
	.global	FT_Face_GetCharsOfVariant
	.thumb
	.thumb_func
	.type	FT_Face_GetCharsOfVariant, %function
FT_Face_GetCharsOfVariant:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L749
	ldr	r0, [r7, #4]
	bl	find_variant_selector_charmap(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L749
	ldr	r3, [r7, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #100]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #36]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7]
	blx	r3
	str	r0, [r7, #20]
.L749:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Face_GetCharsOfVariant, .-FT_Face_GetCharsOfVariant
	.section	.rodata
	.align	2
.LC6:
	.ascii	"glyph-dict\000"
	.section	.text.FT_Get_Name_Index,"ax",%progbits
	.align	2
	.global	FT_Get_Name_Index
	.thumb
	.thumb_func
	.type	FT_Get_Name_Index, %function
FT_Get_Name_Index:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L752
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L752
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L752
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #36]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmn	r3, #2
	bne	.L753
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L754
.L753:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L754
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L755
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #16]
	ldr	r2, .L759
.LPIC11:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #20]
.L755:
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L756
	ldr	r3, [r7, #24]
	b	.L757
.L756:
	mvn	r3, #1
.L757:
	str	r3, [r2, #36]
.L754:
	ldr	r3, [r7, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L752
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L752
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	str	r0, [r7, #28]
.L752:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L760:
	.align	2
.L759:
	.word	.LC6-(.LPIC11+4)
	.size	FT_Get_Name_Index, .-FT_Get_Name_Index
	.section	.text.FT_Get_Glyph_Name,"ax",%progbits
	.align	2
	.global	FT_Get_Glyph_Name
	.thumb
	.thumb_func
	.type	FT_Get_Glyph_Name, %function
FT_Get_Glyph_Name:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L762
	movs	r3, #35
	b	.L763
.L762:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L764
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L765
.L764:
	movs	r3, #6
	b	.L763
.L765:
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	blt	.L766
	movs	r3, #16
	b	.L763
.L766:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	and	r3, r3, #512
	cmp	r3, #0
	bne	.L767
	movs	r3, #6
	b	.L763
.L767:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #36]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmn	r3, #2
	bne	.L768
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L769
.L768:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L769
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L770
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #24]
	ldr	r2, .L775
.LPIC12:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #28]
.L770:
	ldr	r3, [r7, #28]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L771
	ldr	r3, [r7, #32]
	b	.L772
.L771:
	mvn	r3, #1
.L772:
	str	r3, [r2, #36]
.L769:
	ldr	r3, [r7, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L773
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L773
	ldr	r3, [r7, #20]
	ldr	r4, [r3]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
	str	r0, [r7, #36]
	b	.L774
.L773:
	movs	r3, #6
	str	r3, [r7, #36]
.L774:
	ldr	r3, [r7, #36]
.L763:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L776:
	.align	2
.L775:
	.word	.LC6-(.LPIC12+4)
	.size	FT_Get_Glyph_Name, .-FT_Get_Glyph_Name
	.section	.rodata
	.align	2
.LC7:
	.ascii	"postscript-font-name\000"
	.section	.text.FT_Get_Postscript_Name,"ax",%progbits
	.align	2
	.global	FT_Get_Postscript_Name
	.thumb
	.thumb_func
	.type	FT_Get_Postscript_Name, %function
FT_Get_Postscript_Name:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L778
	b	.L779
.L778:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L779
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmn	r3, #2
	bne	.L780
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L781
.L780:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L781
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L782
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #16]
	ldr	r2, .L786
.LPIC13:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #20]
.L782:
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L783
	ldr	r3, [r7, #24]
	b	.L784
.L783:
	mvn	r3, #1
.L784:
	str	r3, [r2, #28]
.L781:
	ldr	r3, [r7, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L779
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L779
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	blx	r3
	str	r0, [r7, #28]
.L779:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L787:
	.align	2
.L786:
	.word	.LC7-(.LPIC13+4)
	.size	FT_Get_Postscript_Name, .-FT_Get_Postscript_Name
	.section	.rodata
	.align	2
.LC8:
	.ascii	"sfnt-table\000"
	.section	.text.FT_Get_Sfnt_Table,"ax",%progbits
	.align	2
	.global	FT_Get_Sfnt_Table
	.thumb
	.thumb_func
	.type	FT_Get_Sfnt_Table, %function
FT_Get_Sfnt_Table:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L789
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L789
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #96]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L790
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #12]
	ldr	r2, .L792
.LPIC14:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #16]
.L790:
	ldr	r3, [r7, #16]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L789
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	str	r0, [r7, #20]
.L789:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L793:
	.align	2
.L792:
	.word	.LC8-(.LPIC14+4)
	.size	FT_Get_Sfnt_Table, .-FT_Get_Sfnt_Table
	.section	.text.FT_Load_Sfnt_Table,"ax",%progbits
	.align	2
	.global	FT_Load_Sfnt_Table
	.thumb
	.thumb_func
	.type	FT_Load_Sfnt_Table, %function
FT_Load_Sfnt_Table:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L795
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L796
.L795:
	movs	r3, #35
	b	.L797
.L796:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L798
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #24]
	ldr	r2, .L800
.LPIC15:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #28]
.L798:
	ldr	r3, [r7, #28]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L799
	movs	r3, #7
	b	.L797
.L799:
	ldr	r3, [r7, #20]
	ldr	r4, [r3]
	ldr	r3, [r7, #48]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
	mov	r3, r0
.L797:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L801:
	.align	2
.L800:
	.word	.LC8-(.LPIC15+4)
	.size	FT_Load_Sfnt_Table, .-FT_Load_Sfnt_Table
	.section	.text.FT_Sfnt_Table_Info,"ax",%progbits
	.align	2
	.global	FT_Sfnt_Table_Info
	.thumb
	.thumb_func
	.type	FT_Sfnt_Table_Info, %function
FT_Sfnt_Table_Info:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L803
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L804
.L803:
	movs	r3, #35
	b	.L808
.L804:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L806
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #24]
	ldr	r2, .L809
.LPIC16:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #28]
.L806:
	ldr	r3, [r7, #28]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L807
	movs	r3, #7
	b	.L808
.L807:
	ldr	r3, [r7, #20]
	ldr	r4, [r3, #8]
	add	r3, r7, #16
	ldr	r2, [r7]
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	blx	r4
	mov	r3, r0
.L808:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L810:
	.align	2
.L809:
	.word	.LC8-(.LPIC16+4)
	.size	FT_Sfnt_Table_Info, .-FT_Sfnt_Table_Info
	.section	.rodata
	.align	2
.LC9:
	.ascii	"tt-cmaps\000"
	.section	.text.FT_Get_CMap_Language_ID,"ax",%progbits
	.align	2
	.global	FT_Get_CMap_Language_ID
	.thumb
	.thumb_func
	.type	FT_Get_CMap_Language_ID, %function
FT_Get_CMap_Language_ID:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L812
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L813
.L812:
	movs	r3, #0
	b	.L818
.L813:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #96]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L815
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #20]
	ldr	r2, .L819
.LPIC17:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #28]
.L815:
	ldr	r3, [r7, #28]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L816
	movs	r3, #0
	b	.L818
.L816:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	add	r2, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L817
	movs	r3, #0
	b	.L818
.L817:
	ldr	r3, [r7, #8]
.L818:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L820:
	.align	2
.L819:
	.word	.LC9-(.LPIC17+4)
	.size	FT_Get_CMap_Language_ID, .-FT_Get_CMap_Language_ID
	.section	.text.FT_Get_CMap_Format,"ax",%progbits
	.align	2
	.global	FT_Get_CMap_Format
	.thumb
	.thumb_func
	.type	FT_Get_CMap_Format, %function
FT_Get_CMap_Format:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L822
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L823
.L822:
	mov	r3, #-1
	b	.L828
.L823:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #96]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L825
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #20]
	ldr	r2, .L829
.LPIC18:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #28]
.L825:
	ldr	r3, [r7, #28]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L826
	mov	r3, #-1
	b	.L828
.L826:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	add	r2, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L827
	mov	r3, #-1
	b	.L828
.L827:
	ldr	r3, [r7, #12]
.L828:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L830:
	.align	2
.L829:
	.word	.LC9-(.LPIC18+4)
	.size	FT_Get_CMap_Format, .-FT_Get_CMap_Format
	.section	.text.FT_Activate_Size,"ax",%progbits
	.align	2
	.global	FT_Activate_Size
	.thumb
	.thumb_func
	.type	FT_Activate_Size, %function
FT_Activate_Size:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L832
	movs	r3, #36
	b	.L833
.L832:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L834
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #96]
	cmp	r3, #0
	bne	.L835
.L834:
	movs	r3, #35
	b	.L833
.L835:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #88]
	movs	r3, #0
.L833:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Activate_Size, .-FT_Activate_Size
	.section	.text.FT_Lookup_Renderer,"ax",%progbits
	.align	2
	.global	FT_Lookup_Renderer
	.thumb
	.thumb_func
	.type	FT_Lookup_Renderer, %function
FT_Lookup_Renderer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L837
	b	.L838
.L837:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L839
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L840
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
.L840:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	b	.L841
.L839:
	b	.L841
.L844:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L842
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L843
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
.L843:
	ldr	r3, [r7, #20]
	str	r3, [r7, #24]
	b	.L838
.L842:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
.L841:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L844
.L838:
	ldr	r3, [r7, #24]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Lookup_Renderer, .-FT_Lookup_Renderer
	.section	.text.ft_lookup_glyph_renderer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_lookup_glyph_renderer, %function
ft_lookup_glyph_renderer:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #156]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L847
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	cmp	r2, r3
	beq	.L848
.L847:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #0
	bl	FT_Lookup_Renderer(PLT)
	str	r0, [r7, #20]
.L848:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_lookup_glyph_renderer, .-ft_lookup_glyph_renderer
	.section	.text.ft_set_current_renderer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_set_current_renderer, %function
ft_set_current_renderer:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movw	r1, #29804
	movt	r1, 28533
	movs	r2, #0
	bl	FT_Lookup_Renderer(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #156]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_set_current_renderer, .-ft_set_current_renderer
	.section	.text.ft_add_renderer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_add_renderer, %function
ft_add_renderer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #8
	ldr	r0, [r7, #24]
	movs	r1, #12
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L852
	b	.L853
.L852:
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #16]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #36]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r2, r3
	bne	.L854
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L854
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #16]
	adds	r2, r2, #52
	ldr	r0, [r7, #24]
	mov	r1, r2
	blx	r3
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L855
	b	.L856
.L855:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #16]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #16]
	str	r2, [r3, #60]
.L854:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	adds	r3, r3, #148
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	FT_List_Add(PLT)
	ldr	r0, [r7, #28]
	bl	ft_set_current_renderer(PLT)
.L856:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L853
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #20]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #20]
.L853:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_add_renderer, .-ft_add_renderer
	.section	.text.ft_remove_renderer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_remove_renderer, %function
ft_remove_renderer:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L859
	b	.L858
.L859:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #148
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	FT_List_Find(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L858
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #36]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r2, r3
	bne	.L861
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L861
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #8]
	ldr	r2, [r2, #52]
	mov	r0, r2
	blx	r3
.L861:
	ldr	r3, [r7, #20]
	adds	r3, r3, #148
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	FT_List_Remove(PLT)
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r0, [r7, #20]
	bl	ft_set_current_renderer(PLT)
.L858:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_remove_renderer, .-ft_remove_renderer
	.section	.text.FT_Get_Renderer,"ax",%progbits
	.align	2
	.global	FT_Get_Renderer
	.thumb
	.thumb_func
	.type	FT_Get_Renderer, %function
FT_Get_Renderer:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #0
	bl	FT_Lookup_Renderer(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Get_Renderer, .-FT_Get_Renderer
	.section	.text.FT_Set_Renderer,"ax",%progbits
	.align	2
	.global	FT_Set_Renderer
	.thumb
	.thumb_func
	.type	FT_Set_Renderer, %function
FT_Set_Renderer:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L865
	movs	r3, #33
	str	r3, [r7, #28]
	b	.L866
.L865:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L867
	movs	r3, #6
	str	r3, [r7, #28]
	b	.L866
.L867:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L868
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L868
	movs	r3, #6
	str	r3, [r7, #28]
	b	.L866
.L868:
	ldr	r3, [r7, #12]
	adds	r3, r3, #148
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_List_Find(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L869
	movs	r3, #6
	str	r3, [r7, #28]
	b	.L866
.L869:
	ldr	r3, [r7, #12]
	adds	r3, r3, #148
	mov	r0, r3
	ldr	r1, [r7, #24]
	bl	FT_List_Up(PLT)
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r2, r3
	bne	.L870
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #156]
.L870:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #52]
	str	r3, [r7, #20]
	b	.L871
.L873:
	ldr	r3, [r7]
	ldr	r1, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #8]
	blx	r3
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L872
	b	.L866
.L872:
	ldr	r3, [r7]
	adds	r3, r3, #8
	str	r3, [r7]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L871:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L873
.L866:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Set_Renderer, .-FT_Set_Renderer
	.section	.text.FT_Render_Glyph_Internal,"ax",%progbits
	.align	2
	.global	FT_Render_Glyph_Internal
	.thumb
	.thumb_func
	.type	FT_Render_Glyph_Internal, %function
FT_Render_Glyph_Internal:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #72]
	movw	r3, #29811
	movt	r3, 25193
	cmp	r2, r3
	beq	.L885
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #72]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r2, r3
	bne	.L879
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #156]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	str	r3, [r7, #20]
	b	.L880
.L879:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #72]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Lookup_Renderer(PLT)
	str	r0, [r7, #24]
.L880:
	movs	r3, #7
	str	r3, [r7, #28]
	b	.L881
.L883:
	ldr	r3, [r7, #24]
	ldr	r4, [r3, #60]
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r3, #0
	blx	r4
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L878
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	cmp	r3, #19
	bne	.L878
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #72]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Lookup_Renderer(PLT)
	str	r0, [r7, #24]
.L881:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L883
	b	.L878
.L885:
	nop
.L878:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Render_Glyph_Internal, .-FT_Render_Glyph_Internal
	.section	.text.FT_Render_Glyph,"ax",%progbits
	.align	2
	.global	FT_Render_Glyph
	.thumb
	.thumb_func
	.type	FT_Render_Glyph, %function
FT_Render_Glyph:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L887
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L888
.L887:
	movs	r3, #6
	b	.L889
.L888:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #96]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	FT_Render_Glyph_Internal(PLT)
	mov	r3, r0
.L889:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Render_Glyph, .-FT_Render_Glyph
	.section	.text.Destroy_Module,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	Destroy_Module, %function
Destroy_Module:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L891
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #160]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L891
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #160]
.L891:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L892
	ldr	r0, [r7, #4]
	bl	ft_remove_renderer(PLT)
.L892:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L893
	ldr	r0, [r7, #4]
	bl	Destroy_Driver(PLT)
.L893:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L894
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #4]
	blx	r3
.L894:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	Destroy_Module, .-Destroy_Module
	.section	.text.FT_Add_Module,"ax",%progbits
	.align	2
	.global	FT_Add_Module
	.thumb
	.thumb_func
	.type	FT_Add_Module, %function
FT_Add_Module:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L896
	movs	r3, #33
	b	.L914
.L896:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L898
	movs	r3, #6
	b	.L914
.L898:
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	movs	r3, #6
	movt	r3, 2
	cmp	r2, r3
	ble	.L899
	movs	r3, #4
	b	.L914
.L899:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L900
.L904:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L901
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bgt	.L902
	movs	r3, #5
	b	.L914
.L902:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #24]
	bl	FT_Remove_Module(PLT)
	b	.L903
.L901:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L900:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L904
.L903:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #31
	bls	.L905
	movs	r3, #48
	str	r3, [r7, #8]
	b	.L906
.L905:
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	add	r3, r7, #8
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L907
	b	.L906
.L907:
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	ldr	r3, [r7, #24]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L908
	ldr	r0, [r7, #24]
	bl	ft_add_renderer(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L908
	b	.L909
.L908:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L910
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3, #160]
.L910:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L911
	ldr	r3, [r7, #24]
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3, #12]
.L911:
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L912
	ldr	r3, [r7]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #24]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L912
	b	.L909
.L912:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #16]
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3, #4]
.L906:
	ldr	r3, [r7, #8]
	b	.L914
.L909:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L913
	ldr	r3, [r7, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L913
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #36]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r2, r3
	bne	.L913
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #52]
	cmp	r3, #0
	beq	.L913
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #56]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #52]
	mov	r0, r2
	blx	r3
.L913:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #24]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L906
.L914:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Add_Module, .-FT_Add_Module
	.section	.text.FT_Get_Module,"ax",%progbits
	.align	2
	.global	FT_Get_Module
	.thumb
	.thumb_func
	.type	FT_Get_Module, %function
FT_Get_Module:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L916
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L917
.L916:
	ldr	r3, [r7, #20]
	b	.L918
.L917:
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L919
.L922:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r1, [r7]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L920
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	b	.L921
.L920:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
.L919:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L922
.L921:
	ldr	r3, [r7, #20]
.L918:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Get_Module, .-FT_Get_Module
	.section	.text.FT_Get_Module_Interface,"ax",%progbits
	.align	2
	.global	FT_Get_Module_Interface
	.thumb
	.thumb_func
	.type	FT_Get_Module_Interface, %function
FT_Get_Module_Interface:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L924
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r3, [r3, #20]
	b	.L925
.L924:
	movs	r3, #0
.L925:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Get_Module_Interface, .-FT_Get_Module_Interface
	.section	.text.ft_module_get_service,"ax",%progbits
	.align	2
	.global	ft_module_get_service
	.thumb
	.thumb_func
	.type	ft_module_get_service, %function
ft_module_get_service:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L928
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L929
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	str	r0, [r7, #20]
.L929:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L928
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #8]
	b	.L930
.L932:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	beq	.L931
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L931
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #16]
	ldr	r2, [r2]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L931
	b	.L928
.L931:
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #16]
.L930:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L932
.L928:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_module_get_service, .-ft_module_get_service
	.section	.text.FT_Remove_Module,"ax",%progbits
	.align	2
	.global	FT_Remove_Module
	.thumb
	.thumb_func
	.type	FT_Remove_Module, %function
FT_Remove_Module:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L935
	movs	r3, #33
	b	.L936
.L935:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L937
	ldr	r3, [r7, #4]
	adds	r3, r3, #20
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	b	.L938
.L942:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L939
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	subs	r3, r3, #4
	str	r3, [r7, #8]
	b	.L940
.L941:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L940:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L941
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3]
	ldr	r0, [r7]
	bl	Destroy_Module(PLT)
	movs	r3, #0
	b	.L936
.L939:
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	str	r3, [r7, #12]
.L938:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L942
.L937:
	movs	r3, #34
.L936:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Remove_Module, .-FT_Remove_Module
	.section	.rodata
	.align	2
.LC10:
	.ascii	"properties\000"
	.section	.text.ft_property_do,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_property_do, %function
ft_property_do:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L944
	movs	r3, #33
	b	.L945
.L944:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L946
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L946
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L947
.L946:
	movs	r3, #6
	b	.L945
.L947:
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #28]
	b	.L948
.L951:
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L949
	b	.L950
.L949:
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
.L948:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bcc	.L951
.L950:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L952
	movs	r3, #11
	b	.L945
.L952:
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	bne	.L953
	movs	r3, #7
	b	.L945
.L953:
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #36]
	ldr	r2, [r2]
	mov	r0, r2
	ldr	r2, .L960
.LPIC19:
	add	r2, pc
	mov	r1, r2
	blx	r3
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L954
	movs	r3, #7
	b	.L945
.L954:
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	ldrb	r3, [r7, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L955
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #35]
	b	.L956
.L955:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #35]
.L956:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L957
	movs	r3, #7
	b	.L945
.L957:
	ldrb	r3, [r7, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L958
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	ldr	r2, [r2]
	mov	r0, r2
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	blx	r3
	mov	r3, r0
	b	.L959
.L958:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #36]
	ldr	r2, [r2]
	mov	r0, r2
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	blx	r3
	mov	r3, r0
.L959:
.L945:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L961:
	.align	2
.L960:
	.word	.LC10-(.LPIC19+4)
	.size	ft_property_do, .-ft_property_do
	.section	.text.FT_Property_Set,"ax",%progbits
	.align	2
	.global	FT_Property_Set
	.thumb
	.thumb_func
	.type	FT_Property_Set, %function
FT_Property_Set:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #1
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	ft_property_do(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Property_Set, .-FT_Property_Set
	.section	.text.FT_Property_Get,"ax",%progbits
	.align	2
	.global	FT_Property_Get
	.thumb
	.thumb_func
	.type	FT_Property_Get, %function
FT_Property_Get:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	ft_property_do(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Property_Get, .-FT_Property_Get
	.section	.text.FT_Reference_Library,"ax",%progbits
	.align	2
	.global	FT_Reference_Library
	.thumb
	.thumb_func
	.type	FT_Reference_Library, %function
FT_Reference_Library:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L967
	movs	r3, #33
	b	.L968
.L967:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #208]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #208]
	movs	r3, #0
.L968:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Reference_Library, .-FT_Reference_Library
	.section	.text.FT_New_Library,"ax",%progbits
	.align	2
	.global	FT_New_Library
	.thumb
	.thumb_func
	.type	FT_New_Library, %function
FT_New_Library:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L970
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L971
.L970:
	movs	r3, #6
	b	.L974
.L971:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #212
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L973
	ldr	r3, [r7, #8]
	b	.L974
.L973:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #168]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #164]
	ldr	r3, [r7, #12]
	movs	r2, #2
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #6
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #208]
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	movs	r3, #0
.L974:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_New_Library, .-FT_New_Library
	.section	.text.FT_Library_Version,"ax",%progbits
	.align	2
	.global	FT_Library_Version
	.thumb
	.thumb_func
	.type	FT_Library_Version, %function
FT_Library_Version:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L976
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
.L976:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L977
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #28]
	str	r2, [r3]
.L977:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L978
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
.L978:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L975
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L975:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Library_Version, .-FT_Library_Version
	.section	.rodata
	.align	2
.LC11:
	.ascii	"type42\000"
	.section	.text.FT_Done_Library,"ax",%progbits
	.align	2
	.global	FT_Done_Library
	.thumb
	.thumb_func
	.type	FT_Done_Library, %function
FT_Done_Library:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L981
	movs	r3, #33
	b	.L982
.L981:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #208]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #208]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #208]
	cmp	r3, #0
	ble	.L983
	b	.L984
.L983:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, .L996
.LPIC20:
	add	r3, pc
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L985
.L993:
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L986
.L992:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r2, r7, #40
	add	r3, r3, r2
	ldr	r3, [r3, #-32]
	cmp	r3, #0
	beq	.L987
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r2, r7, #40
	add	r3, r3, r2
	ldr	r3, [r3, #-32]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L987
	b	.L988
.L987:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r3, [r3]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L989
	b	.L988
.L989:
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	str	r3, [r7, #16]
	b	.L990
.L991:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	FT_Done_Face(PLT)
.L990:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L991
.L988:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L986:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bhi	.L992
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L985:
	ldr	r3, [r7, #36]
	cmp	r3, #1
	bls	.L993
	b	.L994
.L995:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r3, r3, #1
	ldr	r2, [r7, #4]
	adds	r3, r3, #4
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Remove_Module(PLT)
.L994:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L995
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
.L984:
	movs	r3, #0
.L982:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L997:
	.align	2
.L996:
	.word	.LC11-(.LPIC20+4)
	.size	FT_Done_Library, .-FT_Done_Library
	.section	.text.FT_Set_Debug_Hook,"ax",%progbits
	.align	2
	.global	FT_Set_Debug_Hook
	.thumb
	.thumb_func
	.type	FT_Set_Debug_Hook, %function
FT_Set_Debug_Hook:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L998
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L998
	ldr	r3, [r7, #8]
	cmp	r3, #3
	bhi	.L998
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #42
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
.L998:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Set_Debug_Hook, .-FT_Set_Debug_Hook
	.section	.rodata
	.align	2
.LC12:
	.ascii	"truetype-engine\000"
	.section	.text.FT_Get_TrueType_Engine_Type,"ax",%progbits
	.align	2
	.global	FT_Get_TrueType_Engine_Type
	.thumb
	.thumb_func
	.type	FT_Get_TrueType_Engine_Type, %function
FT_Get_TrueType_Engine_Type:
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
	beq	.L1001
	ldr	r0, [r7, #4]
	ldr	r3, .L1003
.LPIC21:
	add	r3, pc
	mov	r1, r3
	bl	FT_Get_Module(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1001
	ldr	r0, [r7, #16]
	ldr	r3, .L1003+4
.LPIC22:
	add	r3, pc
	mov	r1, r3
	bl	ft_module_get_service(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1001
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #20]
.L1001:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1004:
	.align	2
.L1003:
	.word	.LC4-(.LPIC21+4)
	.word	.LC12-(.LPIC22+4)
	.size	FT_Get_TrueType_Engine_Type, .-FT_Get_TrueType_Engine_Type
	.section	.text.FT_Get_SubGlyph_Info,"ax",%progbits
	.align	2
	.global	FT_Get_SubGlyph_Info
	.thumb
	.thumb_func
	.type	FT_Get_SubGlyph_Info, %function
FT_Get_SubGlyph_Info:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #6
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1006
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #132]
	cmp	r3, #0
	beq	.L1006
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #72]
	movw	r3, #28016
	movt	r3, 25455
	cmp	r2, r3
	bne	.L1006
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #128]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L1006
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #132]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #5
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #36]
	str	r2, [r3]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #16]
	mov	r4, r2
	adds	r3, r3, #16
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	movs	r3, #0
	str	r3, [r7, #20]
.L1006:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
	.size	FT_Get_SubGlyph_Info, .-FT_Get_SubGlyph_Info
	.section	.rodata.null_outline,"a",%progbits
	.align	2
	.type	null_outline, %object
	.size	null_outline, 20
null_outline:
	.space	20
	.section	.text.FT_Outline_Decompose,"ax",%progbits
	.align	2
	.global	FT_Outline_Decompose
	.thumb
	.thumb_func
	.type	FT_Outline_Decompose, %function
FT_Outline_Decompose:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #132
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1009
	movs	r3, #20
	b	.L1072
.L1009:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1011
	movs	r3, #6
	b	.L1072
.L1011:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	str	r3, [r7, #100]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #20]
	str	r3, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #104]
	movs	r3, #0
	str	r3, [r7, #108]
	b	.L1012
.L1071:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #108]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bge	.L1013
	b	.L1014
.L1013:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #92]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #120]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #64
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bge	.L1015
	ldr	r3, [r7, #64]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1016
.L1015:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1016:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bge	.L1017
	ldr	r3, [r7, #68]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1018
.L1017:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1018:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #92]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #80
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bge	.L1019
	ldr	r3, [r7, #80]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1020
.L1019:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1020:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #80]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bge	.L1021
	ldr	r3, [r7, #84]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1022
.L1021:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1022:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #84]
	add	r3, r7, #72
	add	r2, r7, #64
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #104]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #124]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #104]
	add	r3, r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #116]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #2
	bne	.L1023
	b	.L1014
.L1023:
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bne	.L1024
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L1025
	add	r3, r7, #64
	add	r2, r7, #80
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #120]
	subs	r3, r3, #8
	str	r3, [r7, #120]
	b	.L1026
.L1025:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #80]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #64]
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #68]
.L1026:
	ldr	r3, [r7, #124]
	subs	r3, r3, #8
	str	r3, [r7, #124]
	ldr	r3, [r7, #116]
	subs	r3, r3, #1
	str	r3, [r7, #116]
.L1024:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	add	r2, r7, #64
	mov	r0, r2
	ldr	r1, [r7, #4]
	blx	r3
	str	r0, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L1027
	b	.L1028
.L1027:
	b	.L1029
.L1069:
	ldr	r3, [r7, #124]
	adds	r3, r3, #8
	str	r3, [r7, #124]
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	str	r3, [r7, #116]
	ldr	r3, [r7, #116]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L1031
	cmp	r3, #1
	bne	.L1073
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L1033
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1034
.L1033:
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1034:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L1035
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1036
.L1035:
	ldr	r3, [r7, #124]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1036:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	add	r2, r7, #56
	mov	r0, r2
	ldr	r1, [r7, #4]
	blx	r3
	str	r0, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L1029
	b	.L1028
.L1031:
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L1038
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1039
.L1038:
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1039:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #72]
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L1040
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1041
.L1040:
	ldr	r3, [r7, #124]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1041:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #76]
.L1042:
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bcs	.L1043
	ldr	r3, [r7, #124]
	adds	r3, r3, #8
	str	r3, [r7, #124]
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	str	r3, [r7, #116]
	ldr	r3, [r7, #116]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	str	r3, [r7, #88]
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L1044
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1045
.L1044:
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1045:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L1046
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1047
.L1046:
	ldr	r3, [r7, #124]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1047:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #88]
	cmp	r3, #1
	bne	.L1048
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	add	r1, r7, #72
	add	r2, r7, #48
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #4]
	blx	r3
	str	r0, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L1029
	b	.L1028
.L1048:
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bne	.L1014
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	add	r1, r7, #72
	add	r2, r7, #40
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #4]
	blx	r3
	str	r0, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L1052
	nop
	b	.L1028
.L1052:
	add	r3, r7, #72
	add	r2, r7, #48
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L1042
.L1043:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	add	r1, r7, #72
	add	r2, r7, #64
	mov	r0, r1
	mov	r1, r2
	ldr	r2, [r7, #4]
	blx	r3
	str	r0, [r7, #112]
	b	.L1053
.L1073:
	ldr	r3, [r7, #124]
	add	r2, r3, #8
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bhi	.L1014
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #2
	bne	.L1014
	ldr	r3, [r7, #124]
	adds	r3, r3, #16
	str	r3, [r7, #124]
	ldr	r3, [r7, #116]
	adds	r3, r3, #2
	str	r3, [r7, #116]
	ldr	r3, [r7, #124]
	subs	r3, r3, #16
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L1055
	ldr	r3, [r7, #124]
	subs	r3, r3, #16
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1056
.L1055:
	ldr	r3, [r7, #124]
	subs	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1056:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #124]
	subs	r3, r3, #16
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L1057
	ldr	r3, [r7, #124]
	subs	r3, r3, #16
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1058
.L1057:
	ldr	r3, [r7, #124]
	subs	r3, r3, #16
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1058:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #124]
	subs	r3, r3, #8
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L1059
	ldr	r3, [r7, #124]
	subs	r3, r3, #8
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1060
.L1059:
	ldr	r3, [r7, #124]
	subs	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1060:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #124]
	subs	r3, r3, #8
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L1061
	ldr	r3, [r7, #124]
	subs	r3, r3, #8
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1062
.L1061:
	ldr	r3, [r7, #124]
	subs	r3, r3, #8
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1062:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bhi	.L1063
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L1064
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1065
.L1064:
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1065:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bge	.L1066
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	negs	r2, r3
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
	negs	r3, r3
	b	.L1067
.L1066:
	ldr	r3, [r7, #124]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #100]
	lsl	r3, r2, r3
.L1067:
	ldr	r2, [r7, #96]
	subs	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #12]
	add	r1, r7, #32
	add	r2, r7, #24
	add	r3, r7, #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	blx	r4
	str	r0, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L1029
	b	.L1028
.L1063:
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #12]
	add	r1, r7, #32
	add	r2, r7, #24
	add	r3, r7, #64
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #4]
	blx	r4
	str	r0, [r7, #112]
	b	.L1053
.L1029:
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bcc	.L1069
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	add	r2, r7, #64
	mov	r0, r2
	ldr	r1, [r7, #4]
	blx	r3
	str	r0, [r7, #112]
.L1053:
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L1070
	b	.L1028
.L1070:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #104]
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
.L1012:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #108]
	cmp	r2, r3
	bgt	.L1071
	movs	r3, #0
	b	.L1072
.L1028:
	ldr	r3, [r7, #112]
	b	.L1072
.L1014:
	movs	r3, #20
.L1072:
	mov	r0, r3
	adds	r7, r7, #132
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Outline_Decompose, .-FT_Outline_Decompose
	.section	.text.FT_Outline_New_Internal,"ax",%progbits
	.align	2
	.global	FT_Outline_New_Internal
	.thumb
	.thumb_func
	.type	FT_Outline_New_Internal, %function
FT_Outline_New_Internal:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1075
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1076
.L1075:
	movs	r3, #6
	b	.L1082
.L1076:
	ldr	r3, [r7]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.L1078
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L1079
.L1078:
	movs	r3, #6
	b	.L1082
.L1079:
	ldr	r3, [r7, #8]
	cmp	r3, #32768
	bcc	.L1080
	movs	r3, #10
	b	.L1082
.L1080:
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1081
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1081
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #20
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #2
	movs	r2, #0
	ldr	r3, [r7, #4]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1081
	ldr	r3, [r7, #8]
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #4]
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	orr	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3, #16]
	movs	r3, #0
	b	.L1082
.L1081:
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	orr	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3, #16]
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	FT_Outline_Done_Internal(PLT)
	ldr	r3, [r7, #20]
.L1082:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_New_Internal, .-FT_Outline_New_Internal
	.section	.text.FT_Outline_New,"ax",%progbits
	.align	2
	.global	FT_Outline_New
	.thumb
	.thumb_func
	.type	FT_Outline_New, %function
FT_Outline_New:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1084
	movs	r3, #33
	b	.L1085
.L1084:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	FT_Outline_New_Internal(PLT)
	mov	r3, r0
.L1085:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_New, .-FT_Outline_New
	.section	.text.FT_Outline_Check,"ax",%progbits
	.align	2
	.global	FT_Outline_Check
	.thumb
	.thumb_func
	.type	FT_Outline_Check, %function
FT_Outline_Check:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1087
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1088
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1088
	movs	r3, #0
	b	.L1089
.L1088:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ble	.L1087
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ble	.L1087
	mov	r3, #-1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L1090
.L1091:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L1087
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bge	.L1087
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1090:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	blt	.L1091
	ldr	r3, [r7, #16]
	subs	r2, r3, #1
	ldr	r3, [r7, #24]
	cmp	r2, r3
	beq	.L1092
	b	.L1087
.L1092:
	movs	r3, #0
	b	.L1089
.L1087:
	movs	r3, #6
.L1089:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Outline_Check, .-FT_Outline_Check
	.section	.text.FT_Outline_Copy,"ax",%progbits
	.align	2
	.global	FT_Outline_Copy
	.thumb
	.thumb_func
	.type	FT_Outline_Copy, %function
FT_Outline_Copy:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1094
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1095
.L1094:
	movs	r3, #20
	b	.L1096
.L1095:
	ldr	r3, [r7, #4]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	bne	.L1097
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3]
	sxth	r2, r2
	sxth	r3, r3
	cmp	r2, r3
	beq	.L1098
.L1097:
	movs	r3, #6
	b	.L1096
.L1098:
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L1099
	movs	r3, #0
	b	.L1096
.L1099:
	ldr	r3, [r7]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	sxth	r3, r3
	lsls	r3, r3, #1
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	bic	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	orrs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #16]
	movs	r3, #0
.L1096:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_Copy, .-FT_Outline_Copy
	.section	.text.FT_Outline_Done_Internal,"ax",%progbits
	.align	2
	.global	FT_Outline_Done_Internal
	.thumb
	.thumb_func
	.type	FT_Outline_Done_Internal, %function
FT_Outline_Done_Internal:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1101
	movs	r3, #20
	b	.L1102
.L1101:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1103
	movs	r3, #6
	b	.L1102
.L1103:
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1104
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #12]
.L1104:
	ldr	r3, [r7]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #16]
	movs	r3, #0
.L1102:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_Done_Internal, .-FT_Outline_Done_Internal
	.section	.text.FT_Outline_Done,"ax",%progbits
	.align	2
	.global	FT_Outline_Done
	.thumb
	.thumb_func
	.type	FT_Outline_Done, %function
FT_Outline_Done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1106
	movs	r3, #33
	b	.L1107
.L1106:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Outline_Done_Internal(PLT)
	mov	r3, r0
.L1107:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_Done, .-FT_Outline_Done
	.section	.text.FT_Outline_Get_CBox,"ax",%progbits
	.align	2
	.global	FT_Outline_Get_CBox
	.thumb
	.thumb_func
	.type	FT_Outline_Get_CBox, %function
FT_Outline_Get_CBox:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1108
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1108
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	bne	.L1110
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L1111
.L1110:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	str	r3, [r7, #20]
	b	.L1112
.L1117:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bge	.L1113
	ldr	r3, [r7, #12]
	str	r3, [r7, #36]
.L1113:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L1114
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
.L1114:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bge	.L1115
	ldr	r3, [r7, #8]
	str	r3, [r7, #32]
.L1115:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ble	.L1116
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
.L1116:
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	str	r3, [r7, #20]
.L1112:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L1117
.L1111:
	ldr	r3, [r7]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #28]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r7, #32]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r7, #24]
	str	r2, [r3, #12]
.L1108:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Outline_Get_CBox, .-FT_Outline_Get_CBox
	.section	.text.FT_Outline_Translate,"ax",%progbits
	.align	2
	.global	FT_Outline_Translate
	.thumb
	.thumb_func
	.type	FT_Outline_Translate, %function
FT_Outline_Translate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1119
	b	.L1118
.L1119:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	movs	r3, #0
	strh	r3, [r7, #22]	@ movhi
	b	.L1121
.L1122:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	adds	r3, r3, #8
	str	r3, [r7, #16]
	ldrh	r3, [r7, #22]
	adds	r3, r3, #1
	strh	r3, [r7, #22]	@ movhi
.L1121:
	ldrh	r2, [r7, #22]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	cmp	r2, r3
	blt	.L1122
.L1118:
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Outline_Translate, .-FT_Outline_Translate
	.section	.text.FT_Outline_Reverse,"ax",%progbits
	.align	2
	.global	FT_Outline_Reverse
	.thumb
	.thumb_func
	.type	FT_Outline_Reverse, %function
FT_Outline_Reverse:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1124
	b	.L1123
.L1124:
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #0
	strh	r3, [r7, #46]	@ movhi
	b	.L1126
.L1131:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldrh	r3, [r7, #46]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #32]
	b	.L1127
.L1128:
	ldr	r2, [r7, #36]
	add	r3, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #32]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #32]
	add	r2, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	subs	r3, r3, #8
	str	r3, [r7, #32]
.L1127:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L1128
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #24]
	b	.L1129
.L1130:
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]
	strb	r3, [r7, #19]
	ldr	r3, [r7, #24]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #28]
	strb	r2, [r3]
	ldr	r3, [r7, #24]
	ldrb	r2, [r7, #19]
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
.L1129:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L1130
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldrh	r3, [r7, #46]
	adds	r3, r3, #1
	strh	r3, [r7, #46]	@ movhi
.L1126:
	ldrh	r2, [r7, #46]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r2, r3
	blt	.L1131
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	eor	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
.L1123:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Outline_Reverse, .-FT_Outline_Reverse
	.section	.text.FT_Outline_Render,"ax",%progbits
	.align	2
	.global	FT_Outline_Render
	.thumb
	.thumb_func
	.type	FT_Outline_Render, %function
FT_Outline_Render:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1133
	movs	r3, #33
	b	.L1140
.L1133:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1135
	movs	r3, #20
	b	.L1140
.L1135:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1136
	movs	r3, #6
	b	.L1140
.L1136:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #156]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #148]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	movs	r3, #19
	str	r3, [r7, #28]
	b	.L1137
.L1139:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #56]
	ldr	r2, [r7, #24]
	ldr	r2, [r2, #52]
	mov	r0, r2
	ldr	r1, [r7, #4]
	blx	r3
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L1138
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	cmp	r3, #19
	bne	.L1138
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	movw	r1, #29804
	movt	r1, 28533
	mov	r2, r3
	bl	FT_Lookup_Renderer(PLT)
	str	r0, [r7, #24]
.L1137:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1139
.L1138:
	ldr	r3, [r7, #28]
.L1140:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_Render, .-FT_Outline_Render
	.section	.text.FT_Outline_Get_Bitmap,"ax",%progbits
	.align	2
	.global	FT_Outline_Get_Bitmap
	.thumb
	.thumb_func
	.type	FT_Outline_Get_Bitmap, %function
FT_Outline_Get_Bitmap:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1142
	movs	r3, #6
	b	.L1146
.L1142:
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L1144
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #5
	beq	.L1144
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #6
	bne	.L1145
.L1144:
	ldr	r3, [r7, #24]
	orr	r3, r3, #1
	str	r3, [r7, #24]
.L1145:
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	FT_Outline_Render(PLT)
	mov	r3, r0
.L1146:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_Get_Bitmap, .-FT_Outline_Get_Bitmap
	.section	.text.FT_Vector_Transform,"ax",%progbits
	.align	2
	.global	FT_Vector_Transform
	.thumb
	.thumb_func
	.type	FT_Vector_Transform, %function
FT_Vector_Transform:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1148
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1149
.L1148:
	b	.L1147
.L1149:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L1147:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Vector_Transform, .-FT_Vector_Transform
	.section	.text.FT_Outline_Transform,"ax",%progbits
	.align	2
	.global	FT_Outline_Transform
	.thumb
	.thumb_func
	.type	FT_Outline_Transform, %function
FT_Outline_Transform:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1152
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1153
.L1152:
	b	.L1151
.L1153:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	b	.L1155
.L1156:
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	bl	FT_Vector_Transform(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	str	r3, [r7, #12]
.L1155:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L1156
.L1151:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_Transform, .-FT_Outline_Transform
	.section	.text.FT_Outline_Embolden,"ax",%progbits
	.align	2
	.global	FT_Outline_Embolden
	.thumb
	.thumb_func
	.type	FT_Outline_Embolden, %function
FT_Outline_Embolden:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	ldr	r2, [r7]
	bl	FT_Outline_EmboldenXY(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_Embolden, .-FT_Outline_Embolden
	.section	.text.FT_Outline_EmboldenXY,"ax",%progbits
	.align	2
	.global	FT_Outline_EmboldenXY
	.thumb
	.thumb_func
	.type	FT_Outline_EmboldenXY, %function
FT_Outline_EmboldenXY:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #108
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1160
	movs	r3, #20
	b	.L1161
.L1160:
	ldr	r3, [r7, #8]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1162
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1162
	movs	r3, #0
	b	.L1161
.L1162:
	ldr	r0, [r7, #12]
	bl	FT_Outline_Get_Orientation(PLT)
	mov	r3, r0
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #2
	bne	.L1163
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1164
	movs	r3, #6
	b	.L1161
.L1164:
	movs	r3, #0
	b	.L1161
.L1163:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #100]
	b	.L1165
.L1190:
	movs	r3, #0
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #100]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	str	r3, [r7, #40]
	ldr	r3, [r7, #56]
	str	r3, [r7, #76]
	ldr	r3, [r7, #96]
	str	r3, [r7, #72]
	mov	r3, #-1
	str	r3, [r7, #68]
	b	.L1166
.L1189:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	beq	.L1167
	ldr	r3, [r7, #72]
	lsls	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	ldr	r1, [r7, #60]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #72]
	lsls	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	ldr	r1, [r7, #60]
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	add	r3, r7, #32
	mov	r0, r3
	bl	FT_Vector_NormLen(PLT)
	mov	r3, r0
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bne	.L1168
	b	.L1169
.L1167:
	add	r3, r7, #32
	add	r2, r7, #24
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #84]
	str	r3, [r7, #88]
.L1168:
	ldr	r3, [r7, #92]
	cmp	r3, #0
	beq	.L1170
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bge	.L1171
	ldr	r3, [r7, #76]
	str	r3, [r7, #68]
	add	r3, r7, #24
	add	r2, r7, #40
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #92]
	str	r3, [r7, #84]
.L1171:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #32]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #36]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmn	r3, #61440
	ble	.L1172
	ldr	r3, [r7, #52]
	add	r3, r3, #65536
	str	r3, [r7, #52]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L1173
	ldr	r3, [r7, #16]
	negs	r3, r3
	str	r3, [r7, #16]
	b	.L1174
.L1173:
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #20]
.L1174:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #44]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	subs	r3, r4, r3
	str	r3, [r7, #80]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L1175
	ldr	r3, [r7, #80]
	negs	r3, r3
	str	r3, [r7, #80]
.L1175:
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #92]
	cmp	r3, r2
	it	ge
	movge	r3, r2
	str	r3, [r7, #48]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #80]
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #52]
	bl	FT_MulFix(PLT)
	mov	r3, r0
	cmp	r4, r3
	bgt	.L1176
	ldr	r3, [r7, #16]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #52]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	b	.L1177
.L1176:
	ldr	r3, [r7, #16]
	mov	r0, r3
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #80]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
.L1177:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #80]
	bl	FT_MulFix(PLT)
	mov	r4, r0
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #52]
	bl	FT_MulFix(PLT)
	mov	r3, r0
	cmp	r4, r3
	bgt	.L1178
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #52]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	b	.L1181
.L1178:
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #80]
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	b	.L1181
.L1172:
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	b	.L1181
.L1184:
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	ldr	r2, [r7, #76]
	lsls	r2, r2, #3
	ldr	r1, [r7, #60]
	add	r2, r2, r1
	ldr	r1, [r2]
	ldr	r0, [r7, #16]
	ldr	r2, [r7, #8]
	add	r2, r2, r0
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	ldr	r2, [r7, #76]
	lsls	r2, r2, #3
	ldr	r1, [r7, #60]
	add	r2, r2, r1
	ldr	r1, [r2, #4]
	ldr	r0, [r7, #20]
	ldr	r2, [r7, #4]
	add	r2, r2, r0
	add	r2, r2, r1
	str	r2, [r3, #4]
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bge	.L1182
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	b	.L1183
.L1182:
	ldr	r3, [r7, #96]
.L1183:
	str	r3, [r7, #76]
.L1181:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bne	.L1184
	b	.L1185
.L1170:
	ldr	r3, [r7, #72]
	str	r3, [r7, #76]
.L1185:
	add	r3, r7, #40
	add	r2, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #88]
	str	r3, [r7, #92]
.L1169:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bge	.L1186
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	b	.L1187
.L1186:
	ldr	r3, [r7, #96]
.L1187:
	str	r3, [r7, #72]
.L1166:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	beq	.L1188
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bne	.L1189
.L1188:
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #96]
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
.L1165:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bgt	.L1190
	movs	r3, #0
.L1161:
	mov	r0, r3
	adds	r7, r7, #108
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Outline_EmboldenXY, .-FT_Outline_EmboldenXY
	.section	.text.FT_Outline_Get_Orientation,"ax",%progbits
	.align	2
	.global	FT_Outline_Get_Orientation
	.thumb
	.thumb_func
	.type	FT_Outline_Get_Orientation, %function
FT_Outline_Get_Orientation:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1192
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	cmp	r3, #0
	bgt	.L1193
.L1192:
	movs	r3, #0
	b	.L1203
.L1193:
	add	r3, r7, #24
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Outline_Get_CBox(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	beq	.L1195
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bne	.L1196
.L1195:
	movs	r3, #2
	b	.L1203
.L1196:
	ldr	r3, [r7, #32]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #24]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	orrs	r3, r3, r2
	clz	r3, r3
	rsb	r3, r3, #17
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	bic	r3, r3, r3, asr #31
	str	r3, [r7, #52]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	clz	r3, r3
	rsb	r3, r3, #17
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	bic	r3, r3, r3, asr #31
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L1197
.L1200:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #68]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	asr	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #48]
	asr	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #60]
	str	r3, [r7, #64]
	b	.L1198
.L1199:
	ldr	r3, [r7, #64]
	lsls	r3, r3, #3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	asr	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #48]
	asr	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #16]
	add	r2, r2, r1
	mul	r3, r2, r3
	ldr	r2, [r7, #56]
	add	r3, r3, r2
	str	r3, [r7, #56]
	add	r3, r7, #16
	add	r2, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L1198:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	ble	.L1199
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L1197:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bgt	.L1200
	ldr	r3, [r7, #56]
	cmp	r3, #0
	ble	.L1201
	movs	r3, #1
	b	.L1203
.L1201:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bge	.L1202
	movs	r3, #0
	b	.L1203
.L1202:
	movs	r3, #2
.L1203:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_Get_Orientation, .-FT_Outline_Get_Orientation
	.section	.text.FT_Raccess_Get_HeaderInfo,"ax",%progbits
	.align	2
	.global	FT_Raccess_Get_HeaderInfo
	.thumb
	.thumb_func
	.type	FT_Raccess_Get_HeaderInfo, %function
FT_Raccess_Get_HeaderInfo:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L1205
	ldr	r3, [r7, #52]
	b	.L1224
.L1205:
	add	r3, r7, #36
	ldr	r0, [r7, #8]
	mov	r1, r3
	movs	r2, #16
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L1207
	ldr	r3, [r7, #52]
	b	.L1224
.L1207:
	ldrb	r3, [r7, #36]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L1208
	ldrb	r3, [r7, #40]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L1208
	ldrb	r3, [r7, #44]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	cmp	r3, #0
	bge	.L1209
.L1208:
	movs	r3, #2
	b	.L1224
.L1209:
	ldrb	r3, [r7, #36]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldrb	r3, [r7, #37]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldrb	r3, [r7, #38]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldrb	r3, [r7, #39]	@ zero_extendqisi2
	orrs	r2, r2, r3
	ldr	r3, [r7, #88]
	str	r2, [r3]
	ldrb	r3, [r7, #40]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldrb	r3, [r7, #41]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldrb	r3, [r7, #42]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #64]
	ldrb	r3, [r7, #44]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldrb	r3, [r7, #45]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldrb	r3, [r7, #46]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #88]
	ldr	r2, [r3]
	ldr	r1, [r7, #64]
	ldr	r3, [r7, #60]
	subs	r3, r1, r3
	cmp	r2, r3
	bne	.L1210
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L1211
.L1210:
	movs	r3, #2
	b	.L1224
.L1211:
	ldr	r2, [r7, #4]
	movw	r3, #65535
	movt	r3, 32767
	subs	r3, r3, r2
	ldr	r2, [r7, #88]
	ldr	r2, [r2]
	cmp	r3, r2
	blt	.L1212
	ldr	r2, [r7, #4]
	movw	r3, #65535
	movt	r3, 32767
	subs	r3, r3, r2
	ldr	r2, [r7, #64]
	cmp	r3, r2
	bge	.L1213
.L1212:
	movs	r3, #2
	b	.L1224
.L1213:
	ldr	r3, [r7, #88]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #88]
	str	r2, [r3]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L1214
	ldr	r3, [r7, #52]
	b	.L1224
.L1214:
	ldrb	r3, [r7, #51]	@ zero_extendqisi2
	adds	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [r7, #35]
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	movs	r2, #16
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L1215
	ldr	r3, [r7, #52]
	b	.L1224
.L1215:
	movs	r3, #1
	str	r3, [r7, #76]
	movs	r3, #1
	str	r3, [r7, #72]
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L1216
.L1219:
	add	r2, r7, #20
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1217
	movs	r3, #0
	str	r3, [r7, #76]
.L1217:
	add	r2, r7, #20
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	add	r1, r7, #36
	ldr	r3, [r7, #68]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L1218
	movs	r3, #0
	str	r3, [r7, #72]
.L1218:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L1216:
	ldr	r3, [r7, #68]
	cmp	r3, #15
	ble	.L1219
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L1220
	ldr	r3, [r7, #72]
	cmp	r3, #0
	bne	.L1220
	movs	r3, #2
	b	.L1224
.L1220:
	ldr	r0, [r7, #8]
	movs	r1, #8
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	add	r3, r7, #52
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L1221
	ldr	r3, [r7, #52]
	b	.L1224
.L1221:
	ldr	r3, [r7, #56]
	cmp	r3, #-1
	bne	.L1222
	movs	r3, #2
	b	.L1224
.L1222:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #56]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L1223
	ldr	r3, [r7, #52]
	b	.L1224
.L1223:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #56]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
.L1224:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Raccess_Get_HeaderInfo, .-FT_Raccess_Get_HeaderInfo
	.section	.text.ft_raccess_sort_ref_by_id,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_raccess_sort_ref_by_id, %function
ft_raccess_sort_ref_by_id:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r2, r3
	bcs	.L1226
	mov	r3, #-1
	b	.L1227
.L1226:
	ldr	r3, [r7, #4]
	ldrh	r2, [r3]
	ldr	r3, [r7]
	ldrh	r3, [r3]
	cmp	r2, r3
	bls	.L1228
	movs	r3, #1
	b	.L1227
.L1228:
	movs	r3, #0
.L1227:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_raccess_sort_ref_by_id, .-ft_raccess_sort_ref_by_id
	.section	.text.FT_Raccess_Get_DataOffsets,"ax",%progbits
	.align	2
	.global	FT_Raccess_Get_DataOffsets
	.thumb
	.thumb_func
	.type	FT_Raccess_Get_DataOffsets, %function
FT_Raccess_Get_DataOffsets:
	@ args = 16, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1230
	ldr	r3, [r7, #20]
	b	.L1253
.L1230:
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #40]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1232
	ldr	r3, [r7, #20]
	b	.L1253
.L1232:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L1233
.L1252:
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1234
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1234
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1235
.L1234:
	ldr	r3, [r7, #20]
	b	.L1253
.L1235:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bne	.L1236
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	ldr	r3, [r7, #92]
	str	r2, [r3]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1237
	ldr	r3, [r7, #20]
	b	.L1253
.L1237:
	ldr	r3, [r7, #92]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #52]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1238
	ldr	r3, [r7, #20]
	b	.L1253
.L1238:
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L1239
.L1245:
	ldr	r3, [r7, #56]
	lsls	r3, r3, #3
	ldr	r2, [r7, #44]
	adds	r4, r2, r3
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r4]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1240
	b	.L1241
.L1240:
	ldr	r0, [r7, #8]
	movs	r1, #2
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1242
	b	.L1241
.L1242:
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1243
	b	.L1241
.L1243:
	ldr	r0, [r7, #8]
	movs	r1, #4
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1244
	b	.L1241
.L1244:
	ldr	r3, [r7, #56]
	lsls	r3, r3, #3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	bic	r2, r2, #-16777216
	str	r2, [r3, #4]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L1239:
	ldr	r3, [r7, #92]
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bgt	.L1245
	ldrb	r3, [r7, #84]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1246
	ldr	r3, [r7, #92]
	ldr	r3, [r3]
	ldr	r0, [r7, #44]
	mov	r1, r3
	movs	r2, #8
	ldr	r3, .L1254
.LPIC23:
	add	r3, pc
	bl	qsort(PLT)
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L1247
.L1248:
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L1247:
	ldr	r3, [r7, #92]
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bgt	.L1248
.L1246:
	ldr	r3, [r7, #92]
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #52]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1249
	b	.L1241
.L1249:
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L1250
.L1251:
	ldr	r3, [r7, #56]
	lsls	r3, r3, #2
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	ldr	r2, [r7, #56]
	lsls	r2, r2, #3
	ldr	r1, [r7, #44]
	add	r2, r2, r1
	ldr	r1, [r2, #4]
	ldr	r2, [r7]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L1250:
	ldr	r3, [r7, #92]
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bgt	.L1251
	ldr	r3, [r7, #88]
	ldr	r2, [r7, #48]
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #20]
.L1241:
	ldr	r0, [r7, #52]
	ldr	r1, [r7, #44]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #20]
	b	.L1253
.L1236:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L1233:
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	blt	.L1252
	movs	r3, #1
.L1253:
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L1255:
	.align	2
.L1254:
	.word	ft_raccess_sort_ref_by_id-(.LPIC23+4)
	.size	FT_Raccess_Get_DataOffsets, .-FT_Raccess_Get_DataOffsets
	.section	.data.rel.ro.local.ft_raccess_guess_table,"aw",%progbits
	.align	2
	.type	ft_raccess_guess_table, %object
	.size	ft_raccess_guess_table, 72
ft_raccess_guess_table:
	.word	raccess_guess_apple_double
	.word	0
	.word	raccess_guess_apple_single
	.word	1
	.word	raccess_guess_darwin_ufs_export
	.word	2
	.word	raccess_guess_darwin_newvfs
	.word	3
	.word	raccess_guess_darwin_hfsplus
	.word	4
	.word	raccess_guess_vfat
	.word	5
	.word	raccess_guess_linux_cap
	.word	6
	.word	raccess_guess_linux_double
	.word	7
	.word	raccess_guess_linux_netatalk
	.word	8
	.section	.text.FT_Raccess_Guess,"ax",%progbits
	.align	2
	.global	FT_Raccess_Guess
	.thumb
	.thumb_func
	.type	FT_Raccess_Guess, %function
FT_Raccess_Guess:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L1257
.L1262:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1258
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r4, r2, r3
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r4]
	b	.L1259
.L1258:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
.L1259:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1260
	b	.L1261
.L1260:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #44]
	adds	r4, r2, r3
	ldr	r3, .L1264
.LPIC24:
	add	r3, pc
	ldr	r2, [r7, #20]
	ldr	r5, [r3, r2, lsl #3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	lsls	r2, r2, #2
	ldr	r1, [r7, #40]
	add	r2, r2, r1
	str	r2, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	blx	r5
	mov	r3, r0
	str	r3, [r4]
.L1261:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L1257:
	ldr	r3, [r7, #20]
	cmp	r3, #8
	ble	.L1262
	nop
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L1265:
	.align	2
.L1264:
	.word	ft_raccess_guess_table-(.LPIC24+4)
	.size	FT_Raccess_Guess, .-FT_Raccess_Guess
	.section	.text.raccess_get_rule_type_from_rule_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_get_rule_type_from_rule_index, %function
raccess_get_rule_type_from_rule_index:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #8
	bls	.L1267
	mvn	r3, #1
	b	.L1268
.L1267:
	ldr	r3, .L1269
.LPIC25:
	add	r3, pc
	mov	r2, r3
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
.L1268:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L1270:
	.align	2
.L1269:
	.word	ft_raccess_guess_table-(.LPIC25+4)
	.size	raccess_get_rule_type_from_rule_index, .-raccess_get_rule_type_from_rule_index
	.section	.text.ft_raccess_rule_by_darwin_vfs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_raccess_rule_by_darwin_vfs, %function
ft_raccess_rule_by_darwin_vfs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	raccess_get_rule_type_from_rule_index(PLT)
	mov	r3, r0
	subs	r3, r3, #3
	cmp	r3, #1
	bhi	.L1272
	movs	r3, #1
	b	.L1274
.L1272:
	movs	r3, #0
.L1274:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_raccess_rule_by_darwin_vfs, .-ft_raccess_rule_by_darwin_vfs
	.section	.text.raccess_guess_apple_double,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_apple_double, %function
raccess_guess_apple_double:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movw	r3, #5639
	movt	r3, 5
	str	r3, [r7, #20]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1276
	movs	r3, #81
	b	.L1277
.L1276:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	bl	raccess_guess_apple_generic(PLT)
	mov	r3, r0
.L1277:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	raccess_guess_apple_double, .-raccess_guess_apple_double
	.section	.text.raccess_guess_apple_single,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_apple_single, %function
raccess_guess_apple_single:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, #5632
	movt	r3, 5
	str	r3, [r7, #20]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1279
	movs	r3, #81
	b	.L1280
.L1279:
	ldr	r3, [r7, #32]
	str	r3, [sp]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	bl	raccess_guess_apple_generic(PLT)
	mov	r3, r0
.L1280:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	raccess_guess_apple_single, .-raccess_guess_apple_single
	.section	.rodata
	.align	2
.LC13:
	.ascii	"._\000"
	.section	.text.raccess_guess_darwin_ufs_export,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_darwin_ufs_export, %function
raccess_guess_darwin_ufs_export:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r3, .L1286
.LPIC26:
	add	r3, pc
	mov	r2, r3
	bl	raccess_make_file_name(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1282
	movs	r3, #64
	b	.L1283
.L1282:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #40]
	bl	raccess_guess_linux_double_from_file_name(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1284
	ldr	r3, [r7]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	b	.L1285
.L1284:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #24]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #24]
.L1285:
	ldr	r3, [r7, #20]
.L1283:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1287:
	.align	2
.L1286:
	.word	.LC13-(.LPIC26+4)
	.size	raccess_guess_darwin_ufs_export, .-raccess_guess_darwin_ufs_export
	.section	.rodata
	.align	2
.LC14:
	.ascii	"/rsrc\000"
	.section	.text.raccess_guess_darwin_hfsplus,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_darwin_hfsplus, %function
raccess_guess_darwin_hfsplus:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r0, [r7, #4]
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	adds	r2, r3, #6
	add	r3, r7, #16
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1289
	ldr	r3, [r7, #16]
	b	.L1291
.L1289:
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r3, .L1292
.LPIC27:
	add	r3, pc
	mov	r1, r3
	movs	r2, #6
	bl	memcpy(PLT)
	ldr	r3, [r7]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
.L1291:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1293:
	.align	2
.L1292:
	.word	.LC14-(.LPIC27+4)
	.size	raccess_guess_darwin_hfsplus, .-raccess_guess_darwin_hfsplus
	.section	.rodata
	.align	2
.LC15:
	.ascii	"/..namedfork/rsrc\000"
	.section	.text.raccess_guess_darwin_newvfs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_darwin_newvfs, %function
raccess_guess_darwin_newvfs:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r0, [r7, #4]
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	add	r2, r3, #18
	add	r3, r7, #16
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L1295
	ldr	r3, [r7, #16]
	b	.L1297
.L1295:
	ldr	r3, [r7, #24]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r3, .L1298
.LPIC28:
	add	r3, pc
	mov	r1, r3
	movs	r2, #18
	bl	memcpy(PLT)
	ldr	r3, [r7]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #40]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
.L1297:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1299:
	.align	2
.L1298:
	.word	.LC15-(.LPIC28+4)
	.size	raccess_guess_darwin_newvfs, .-raccess_guess_darwin_newvfs
	.section	.rodata
	.align	2
.LC16:
	.ascii	"resource.frk/\000"
	.section	.text.raccess_guess_vfat,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_vfat, %function
raccess_guess_vfat:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r3, .L1303
.LPIC29:
	add	r3, pc
	mov	r2, r3
	bl	raccess_make_file_name(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1301
	movs	r3, #64
	b	.L1302
.L1301:
	ldr	r3, [r7]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
.L1302:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1304:
	.align	2
.L1303:
	.word	.LC16-(.LPIC29+4)
	.size	raccess_guess_vfat, .-raccess_guess_vfat
	.section	.rodata
	.align	2
.LC17:
	.ascii	".resource/\000"
	.section	.text.raccess_guess_linux_cap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_linux_cap, %function
raccess_guess_linux_cap:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	ldr	r3, .L1308
.LPIC30:
	add	r3, pc
	mov	r2, r3
	bl	raccess_make_file_name(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1306
	movs	r3, #64
	b	.L1307
.L1306:
	ldr	r3, [r7]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
.L1307:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1309:
	.align	2
.L1308:
	.word	.LC17-(.LPIC30+4)
	.size	raccess_guess_linux_cap, .-raccess_guess_linux_cap
	.section	.rodata
	.align	2
.LC18:
	.ascii	"%\000"
	.section	.text.raccess_guess_linux_double,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_linux_double, %function
raccess_guess_linux_double:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r3, .L1315
.LPIC31:
	add	r3, pc
	mov	r2, r3
	bl	raccess_make_file_name(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1311
	movs	r3, #64
	b	.L1312
.L1311:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #40]
	bl	raccess_guess_linux_double_from_file_name(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1313
	ldr	r3, [r7]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	b	.L1314
.L1313:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #24]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #24]
.L1314:
	ldr	r3, [r7, #20]
.L1312:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1316:
	.align	2
.L1315:
	.word	.LC18-(.LPIC31+4)
	.size	raccess_guess_linux_double, .-raccess_guess_linux_double
	.section	.rodata
	.align	2
.LC19:
	.ascii	".AppleDouble/\000"
	.section	.text.raccess_guess_linux_netatalk,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_linux_netatalk, %function
raccess_guess_linux_netatalk:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r3, .L1322
.LPIC32:
	add	r3, pc
	mov	r2, r3
	bl	raccess_make_file_name(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1318
	movs	r3, #64
	b	.L1319
.L1318:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #40]
	bl	raccess_guess_linux_double_from_file_name(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1320
	ldr	r3, [r7]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	b	.L1321
.L1320:
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #24]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #24]
.L1321:
	ldr	r3, [r7, #20]
.L1319:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L1323:
	.align	2
.L1322:
	.word	.LC19-(.LPIC32+4)
	.size	raccess_guess_linux_netatalk, .-raccess_guess_linux_netatalk
	.section	.text.raccess_guess_apple_generic,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_apple_generic, %function
raccess_guess_apple_generic:
	@ args = 4, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #2
	str	r3, [r7, #40]
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1325
	ldr	r3, [r7, #20]
	b	.L1339
.L1325:
	ldr	r2, [r7, #36]
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L1327
	movs	r3, #2
	b	.L1339
.L1327:
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	str	r3, [r7, #48]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1328
	ldr	r3, [r7, #20]
	b	.L1339
.L1328:
	ldr	r0, [r7, #8]
	movs	r1, #16
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1329
	ldr	r3, [r7, #20]
	b	.L1339
.L1329:
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadUShort(PLT)
	mov	r3, r0
	strh	r3, [r7, #34]	@ movhi
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1330
	ldr	r3, [r7, #20]
	b	.L1339
.L1330:
	ldrh	r3, [r7, #34]
	cmp	r3, #0
	bne	.L1331
	movs	r3, #2
	b	.L1339
.L1331:
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L1332
.L1338:
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1333
	ldr	r3, [r7, #20]
	b	.L1339
.L1333:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bne	.L1334
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1335
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Stream_ReadULong(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1336
.L1335:
	b	.L1337
.L1336:
	ldr	r3, [r7, #64]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	movs	r3, #0
	b	.L1339
.L1334:
	ldr	r0, [r7, #8]
	movs	r1, #8
	bl	FT_Stream_Skip(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1337
	ldr	r3, [r7, #20]
	b	.L1339
.L1337:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L1332:
	ldrh	r2, [r7, #34]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bgt	.L1338
	movs	r3, #2
.L1339:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	raccess_guess_apple_generic, .-raccess_guess_apple_generic
	.section	.text.raccess_guess_linux_double_from_file_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_guess_linux_double_from_file_name, %function
raccess_guess_linux_double_from_file_name:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	str	r3, [r7, #40]
	add	r2, r7, #28
	add	r3, r7, #24
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_New(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L1341
	ldr	r3, [r7, #60]
	b	.L1343
.L1341:
	ldr	r2, [r7, #24]
	add	r3, r7, #20
	ldr	r1, [r7, #4]
	str	r1, [sp]
	ldr	r0, [r7, #12]
	mov	r1, r2
	ldr	r2, [r7, #8]
	bl	raccess_guess_apple_double(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #24]
	mov	r0, r3
	movs	r1, #0
	bl	FT_Stream_Free(PLT)
	ldr	r3, [r7, #60]
.L1343:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	raccess_guess_linux_double_from_file_name, .-raccess_guess_linux_double_from_file_name
	.section	.text.raccess_make_file_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	raccess_make_file_name, %function
raccess_make_file_name:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #20]
	ldr	r0, [r7, #8]
	bl	strlen(PLT)
	mov	r4, r0
	ldr	r0, [r7, #4]
	bl	strlen(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1345
	movs	r3, #0
	b	.L1349
.L1345:
	ldr	r0, [r7, #8]
	movs	r1, #47
	bl	strrchr(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L1347
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	adds	r3, r3, #1
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	strncpy(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	adds	r3, r3, #1
	ldr	r2, [r7, #32]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	b	.L1348
.L1347:
	ldr	r3, [r7, #8]
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	movs	r2, #0
	strb	r2, [r3]
.L1348:
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #4]
	bl	strcat(PLT)
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #36]
	bl	strcat(PLT)
	ldr	r3, [r7, #32]
.L1349:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	raccess_make_file_name, .-raccess_make_file_name
	.section	.text.FT_Get_Sfnt_Name_Count,"ax",%progbits
	.align	2
	.global	FT_Get_Sfnt_Name_Count
	.thumb
	.thumb_func
	.type	FT_Get_Sfnt_Name_Count, %function
FT_Get_Sfnt_Name_Count:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1351
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L1351
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #340]
	b	.L1352
.L1351:
	movs	r3, #0
.L1352:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Get_Sfnt_Name_Count, .-FT_Get_Sfnt_Name_Count
	.section	.text.FT_Get_Sfnt_Name,"ax",%progbits
	.align	2
	.global	FT_Get_Sfnt_Name
	.thumb
	.thumb_func
	.type	FT_Get_Sfnt_Name, %function
FT_Get_Sfnt_Name:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #6
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1355
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1355
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L1355
	ldr	r3, [r7, #12]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldrh	r3, [r3, #340]
	mov	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L1355
	ldr	r3, [r7, #36]
	ldr	r1, [r3, #356]
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #8]
	cmp	r3, #0
	beq	.L1356
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L1356
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #104]
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #8]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #28]
	movs	r1, #1
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1357
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1357
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #8]
	ldr	r0, [r7, #24]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stream_Read(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1356
.L1357:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #16]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #32]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #32]
	movs	r2, #0
	strh	r2, [r3, #8]	@ movhi
.L1356:
	ldr	r3, [r7, #32]
	ldrh	r2, [r3]
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #32]
	ldrh	r2, [r3, #2]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #32]
	ldrh	r2, [r3, #4]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #32]
	ldrh	r2, [r3, #6]
	ldr	r3, [r7, #4]
	strh	r2, [r3, #6]	@ movhi
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #32]
	ldrh	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	movs	r3, #0
	str	r3, [r7, #20]
.L1355:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Get_Sfnt_Name, .-FT_Get_Sfnt_Name
	.section	.text.FT_Stream_OpenMemory,"ax",%progbits
	.align	2
	.global	FT_Stream_OpenMemory
	.thumb
	.thumb_func
	.type	FT_Stream_OpenMemory, %function
FT_Stream_OpenMemory:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Stream_OpenMemory, .-FT_Stream_OpenMemory
	.section	.text.FT_Stream_Close,"ax",%progbits
	.align	2
	.global	FT_Stream_Close
	.thumb
	.thumb_func
	.type	FT_Stream_Close, %function
FT_Stream_Close:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1360
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L1360
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #4]
	blx	r3
.L1360:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stream_Close, .-FT_Stream_Close
	.section	.text.FT_Stream_Seek,"ax",%progbits
	.align	2
	.global	FT_Stream_Seek
	.thumb
	.thumb_func
	.type	FT_Stream_Seek, %function
FT_Stream_Seek:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1363
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #20]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #0
	movs	r3, #0
	blx	r4
	mov	r3, r0
	cmp	r3, #0
	beq	.L1365
	movs	r3, #85
	str	r3, [r7, #12]
	b	.L1365
.L1363:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L1365
	movs	r3, #85
	str	r3, [r7, #12]
.L1365:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1366
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
.L1366:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stream_Seek, .-FT_Stream_Seek
	.section	.text.FT_Stream_Skip,"ax",%progbits
	.align	2
	.global	FT_Stream_Skip
	.thumb
	.thumb_func
	.type	FT_Stream_Skip, %function
FT_Stream_Skip:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L1369
	movs	r3, #85
	b	.L1370
.L1369:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stream_Seek(PLT)
	mov	r3, r0
.L1370:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stream_Skip, .-FT_Stream_Skip
	.section	.text.FT_Stream_Pos,"ax",%progbits
	.align	2
	.global	FT_Stream_Pos
	.thumb
	.thumb_func
	.type	FT_Stream_Pos, %function
FT_Stream_Pos:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Stream_Pos, .-FT_Stream_Pos
	.section	.text.FT_Stream_Read,"ax",%progbits
	.align	2
	.global	FT_Stream_Read
	.thumb
	.thumb_func
	.type	FT_Stream_Read, %function
FT_Stream_Read:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	FT_Stream_ReadAt(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stream_Read, .-FT_Stream_Read
	.section	.text.FT_Stream_ReadAt,"ax",%progbits
	.align	2
	.global	FT_Stream_ReadAt
	.thumb
	.thumb_func
	.type	FT_Stream_ReadAt, %function
FT_Stream_ReadAt:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L1376
	movs	r3, #85
	b	.L1377
.L1376:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1378
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #20]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	blx	r4
	str	r0, [r7, #16]
	b	.L1379
.L1378:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L1380
	ldr	r3, [r7]
	str	r3, [r7, #16]
.L1380:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7, #16]
	bl	memcpy(PLT)
.L1379:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L1381
	movs	r3, #85
	str	r3, [r7, #20]
.L1381:
	ldr	r3, [r7, #20]
.L1377:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stream_ReadAt, .-FT_Stream_ReadAt
	.section	.text.FT_Stream_TryRead,"ax",%progbits
	.align	2
	.global	FT_Stream_TryRead
	.thumb
	.thumb_func
	.type	FT_Stream_TryRead, %function
FT_Stream_TryRead:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcc	.L1383
	b	.L1384
.L1383:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1385
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	blx	r4
	str	r0, [r7, #20]
	b	.L1386
.L1385:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L1387
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
.L1387:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	ldr	r0, [r7, #8]
	mov	r1, r3
	ldr	r2, [r7, #20]
	bl	memcpy(PLT)
.L1386:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
.L1384:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stream_TryRead, .-FT_Stream_TryRead
	.section	.text.FT_Stream_ExtractFrame,"ax",%progbits
	.align	2
	.global	FT_Stream_ExtractFrame
	.thumb
	.thumb_func
	.type	FT_Stream_ExtractFrame, %function
FT_Stream_ExtractFrame:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1390
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
.L1390:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stream_ExtractFrame, .-FT_Stream_ExtractFrame
	.section	.text.FT_Stream_ReleaseFrame,"ax",%progbits
	.align	2
	.global	FT_Stream_ReleaseFrame
	.thumb
	.thumb_func
	.type	FT_Stream_ReleaseFrame, %function
FT_Stream_ReleaseFrame:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1393
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1393
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
.L1393:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stream_ReleaseFrame, .-FT_Stream_ReleaseFrame
	.section	.text.FT_Stream_EnterFrame,"ax",%progbits
	.align	2
	.global	FT_Stream_EnterFrame
	.thumb
	.thumb_func
	.type	FT_Stream_EnterFrame, %function
FT_Stream_EnterFrame:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1395
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L1396
	movs	r3, #85
	str	r3, [r7, #12]
	b	.L1397
.L1396:
	ldr	r2, [r7]
	add	r3, r7, #12
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_qalloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1398
	b	.L1397
.L1398:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7]
	blx	r4
	str	r0, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L1399
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #85
	str	r3, [r7, #12]
.L1399:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	b	.L1397
.L1395:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L1400
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	subs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L1401
.L1400:
	movs	r3, #85
	str	r3, [r7, #12]
	b	.L1397
.L1401:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L1397:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stream_EnterFrame, .-FT_Stream_EnterFrame
	.section	.text.FT_Stream_ExitFrame,"ax",%progbits
	.align	2
	.global	FT_Stream_ExitFrame
	.thumb
	.thumb_func
	.type	FT_Stream_ExitFrame, %function
FT_Stream_ExitFrame:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1404
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
.L1404:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #36]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stream_ExitFrame, .-FT_Stream_ExitFrame
	.section	.text.FT_Stream_GetChar,"ax",%progbits
	.align	2
	.global	FT_Stream_GetChar
	.thumb
	.thumb_func
	.type	FT_Stream_GetChar, %function
FT_Stream_GetChar:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcs	.L1406
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #15]
.L1406:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	sxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Stream_GetChar, .-FT_Stream_GetChar
	.section	.text.FT_Stream_GetUShort,"ax",%progbits
	.align	2
	.global	FT_Stream_GetUShort
	.thumb
	.thumb_func
	.type	FT_Stream_GetUShort, %function
FT_Stream_GetUShort:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcs	.L1409
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
.L1409:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #32]
	ldrh	r3, [r7, #10]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Stream_GetUShort, .-FT_Stream_GetUShort
	.section	.text.FT_Stream_GetUShortLE,"ax",%progbits
	.align	2
	.global	FT_Stream_GetUShortLE
	.thumb
	.thumb_func
	.type	FT_Stream_GetUShortLE, %function
FT_Stream_GetUShortLE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcs	.L1412
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
.L1412:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #32]
	ldrh	r3, [r7, #10]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Stream_GetUShortLE, .-FT_Stream_GetUShortLE
	.section	.text.FT_Stream_GetUOffset,"ax",%progbits
	.align	2
	.global	FT_Stream_GetUOffset
	.thumb
	.thumb_func
	.type	FT_Stream_GetUOffset, %function
FT_Stream_GetUOffset:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcs	.L1415
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #8]
.L1415:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Stream_GetUOffset, .-FT_Stream_GetUOffset
	.section	.text.FT_Stream_GetULong,"ax",%progbits
	.align	2
	.global	FT_Stream_GetULong
	.thumb
	.thumb_func
	.type	FT_Stream_GetULong, %function
FT_Stream_GetULong:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r2, r3, #3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcs	.L1418
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #12]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #8]
.L1418:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Stream_GetULong, .-FT_Stream_GetULong
	.section	.text.FT_Stream_GetULongLE,"ax",%progbits
	.align	2
	.global	FT_Stream_GetULongLE
	.thumb
	.thumb_func
	.type	FT_Stream_GetULongLE, %function
FT_Stream_GetULongLE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r2, r3, #3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bcs	.L1421
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #8]
.L1421:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #32]
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Stream_GetULongLE, .-FT_Stream_GetULongLE
	.section	.text.FT_Stream_ReadChar,"ax",%progbits
	.align	2
	.global	FT_Stream_ReadChar
	.thumb
	.thumb_func
	.type	FT_Stream_ReadChar, %function
FT_Stream_ReadChar:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	strb	r3, [r7, #15]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1424
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	add	r3, r7, #15
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #1
	blx	r4
	mov	r3, r0
	cmp	r3, #1
	beq	.L1425
	b	.L1426
.L1424:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L1427
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r7, #15]
	b	.L1425
.L1427:
	b	.L1426
.L1425:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	uxtb	r3, r3
	b	.L1429
.L1426:
	ldr	r3, [r7]
	movs	r2, #85
	str	r2, [r3]
	movs	r3, #0
.L1429:
	sxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stream_ReadChar, .-FT_Stream_ReadChar
	.section	.text.FT_Stream_ReadUShort,"ax",%progbits
	.align	2
	.global	FT_Stream_ReadUShort
	.thumb
	.thumb_func
	.type	FT_Stream_ReadUShort, %function
FT_Stream_ReadUShort:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L1431
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1432
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #2
	blx	r4
	mov	r3, r0
	cmp	r3, #2
	beq	.L1433
	b	.L1434
.L1433:
	add	r3, r7, #8
	str	r3, [r7, #12]
	b	.L1435
.L1432:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #12]
.L1435:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1437
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	b	.L1437
.L1431:
	b	.L1434
.L1437:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldrh	r3, [r7, #10]
	b	.L1439
.L1434:
	ldr	r3, [r7]
	movs	r2, #85
	str	r2, [r3]
	movs	r3, #0
.L1439:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stream_ReadUShort, .-FT_Stream_ReadUShort
	.section	.text.FT_Stream_ReadUShortLE,"ax",%progbits
	.align	2
	.global	FT_Stream_ReadUShortLE
	.thumb
	.thumb_func
	.type	FT_Stream_ReadUShortLE, %function
FT_Stream_ReadUShortLE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	strh	r3, [r7, #10]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L1441
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1442
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #2
	blx	r4
	mov	r3, r0
	cmp	r3, #2
	beq	.L1443
	b	.L1444
.L1443:
	add	r3, r7, #8
	str	r3, [r7, #12]
	b	.L1445
.L1442:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #12]
.L1445:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1447
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #12]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #10]	@ movhi
	b	.L1447
.L1441:
	b	.L1444
.L1447:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldrh	r3, [r7, #10]
	b	.L1449
.L1444:
	ldr	r3, [r7]
	movs	r2, #85
	str	r2, [r3]
	movs	r3, #0
.L1449:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stream_ReadUShortLE, .-FT_Stream_ReadUShortLE
	.section	.text.FT_Stream_ReadUOffset,"ax",%progbits
	.align	2
	.global	FT_Stream_ReadUOffset
	.thumb
	.thumb_func
	.type	FT_Stream_ReadUOffset, %function
FT_Stream_ReadUOffset:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #2
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L1451
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1452
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #3
	blx	r4
	mov	r3, r0
	cmp	r3, #3
	beq	.L1453
	b	.L1454
.L1453:
	add	r3, r7, #12
	str	r3, [r7, #20]
	b	.L1455
.L1452:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
.L1455:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1457
	ldr	r3, [r7, #20]
	adds	r3, r3, #3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	b	.L1457
.L1451:
	b	.L1454
.L1457:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	b	.L1459
.L1454:
	ldr	r3, [r7]
	movs	r2, #85
	str	r2, [r3]
	movs	r3, #0
.L1459:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stream_ReadUOffset, .-FT_Stream_ReadUOffset
	.section	.text.FT_Stream_ReadULong,"ax",%progbits
	.align	2
	.global	FT_Stream_ReadULong
	.thumb
	.thumb_func
	.type	FT_Stream_ReadULong, %function
FT_Stream_ReadULong:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L1461
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1462
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #4
	blx	r4
	mov	r3, r0
	cmp	r3, #4
	beq	.L1463
	b	.L1464
.L1463:
	add	r3, r7, #12
	str	r3, [r7, #20]
	b	.L1465
.L1462:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
.L1465:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1467
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	b	.L1467
.L1461:
	b	.L1464
.L1467:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	b	.L1469
.L1464:
	ldr	r3, [r7]
	movs	r2, #85
	str	r2, [r3]
	movs	r3, #0
.L1469:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stream_ReadULong, .-FT_Stream_ReadULong
	.section	.text.FT_Stream_ReadULongLE,"ax",%progbits
	.align	2
	.global	FT_Stream_ReadULongLE
	.thumb
	.thumb_func
	.type	FT_Stream_ReadULongLE, %function
FT_Stream_ReadULongLE:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L1471
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L1472
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	movs	r3, #4
	blx	r4
	mov	r3, r0
	cmp	r3, #4
	beq	.L1473
	b	.L1474
.L1473:
	add	r3, r7, #12
	str	r3, [r7, #20]
	b	.L1475
.L1472:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
.L1475:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L1477
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #20]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #16]
	b	.L1477
.L1471:
	b	.L1474
.L1477:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r2, r3, #4
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	b	.L1479
.L1474:
	ldr	r3, [r7]
	movs	r2, #85
	str	r2, [r3]
	movs	r3, #0
.L1479:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stream_ReadULongLE, .-FT_Stream_ReadULongLE
	.section	.text.FT_Stream_ReadFields,"ax",%progbits
	.align	2
	.global	FT_Stream_ReadFields
	.thumb
	.thumb_func
	.type	FT_Stream_ReadFields, %function
FT_Stream_ReadFields:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	strb	r3, [r7, #43]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1481
	movs	r3, #6
	b	.L1482
.L1481:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1483
	movs	r3, #40
	b	.L1482
.L1483:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #44]
.L1507:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #4
	cmp	r3, #21
	bhi	.L1484
	adr	r1, .L1486
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L1486:
	.word	.L1485+1-.L1486
	.word	.L1484+1-.L1486
	.word	.L1484+1-.L1486
	.word	.L1484+1-.L1486
	.word	.L1487+1-.L1486
	.word	.L1487+1-.L1486
	.word	.L1484+1-.L1486
	.word	.L1484+1-.L1486
	.word	.L1488+1-.L1486
	.word	.L1488+1-.L1486
	.word	.L1489+1-.L1486
	.word	.L1489+1-.L1486
	.word	.L1490+1-.L1486
	.word	.L1490+1-.L1486
	.word	.L1491+1-.L1486
	.word	.L1491+1-.L1486
	.word	.L1492+1-.L1486
	.word	.L1492+1-.L1486
	.word	.L1493+1-.L1486
	.word	.L1493+1-.L1486
	.word	.L1494+1-.L1486
	.word	.L1494+1-.L1486
.L1485:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #2]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stream_EnterFrame(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L1495
	b	.L1496
.L1495:
	movs	r3, #1
	strb	r3, [r7, #43]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #8]
	b	.L1497
.L1494:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #36]
	cmp	r2, r3
	bls	.L1498
	movs	r3, #85
	str	r3, [r7, #44]
	b	.L1496
.L1498:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #24
	bne	.L1499
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #2]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #24]
	bl	memcpy(PLT)
.L1499:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #8]
	b	.L1497
.L1487:
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #32]
	movs	r3, #24
	str	r3, [r7, #28]
	b	.L1500
.L1488:
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #32]
	movs	r3, #16
	str	r3, [r7, #28]
	b	.L1500
.L1489:
	ldr	r3, [r7, #36]
	adds	r3, r3, #2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r3, r3
	str	r3, [r7, #32]
	movs	r3, #16
	str	r3, [r7, #28]
	b	.L1500
.L1490:
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L1500
.L1491:
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L1500
.L1492:
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	movs	r3, #8
	str	r3, [r7, #28]
	b	.L1500
.L1493:
	ldr	r3, [r7, #36]
	adds	r3, r3, #3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #16
	ldr	r3, [r7, #36]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #36]
	subs	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #32]
	movs	r3, #8
	str	r3, [r7, #28]
	b	.L1500
.L1484:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #32]
	b	.L1496
.L1500:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1501
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #28]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #28]
	asr	r3, r2, r3
	str	r3, [r7, #32]
.L1501:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #2]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L1503
	cmp	r3, #4
	beq	.L1504
	cmp	r3, #1
	bne	.L1509
	ldr	r3, [r7, #32]
	uxtb	r2, r3
	ldr	r3, [r7, #20]
	strb	r2, [r3]
	b	.L1506
.L1503:
	ldr	r3, [r7, #32]
	uxth	r2, r3
	ldr	r3, [r7, #20]
	strh	r2, [r3]	@ movhi
	b	.L1506
.L1504:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #32]
	str	r2, [r3]
	b	.L1506
.L1509:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #32]
	str	r2, [r3]
.L1506:
	ldr	r3, [r7, #8]
	adds	r3, r3, #4
	str	r3, [r7, #8]
	b	.L1507
.L1497:
	b	.L1507
.L1496:
	ldrb	r3, [r7, #43]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1508
	ldr	r0, [r7, #12]
	bl	FT_Stream_ExitFrame(PLT)
.L1508:
	ldr	r3, [r7, #44]
.L1482:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stream_ReadFields, .-FT_Stream_ReadFields
	.section	.rodata.ft_trig_arctan_table,"a",%progbits
	.align	2
	.type	ft_trig_arctan_table, %object
	.size	ft_trig_arctan_table, 88
ft_trig_arctan_table:
	.word	1740967
	.word	919879
	.word	466945
	.word	234379
	.word	117304
	.word	58666
	.word	29335
	.word	14668
	.word	7334
	.word	3667
	.word	1833
	.word	917
	.word	458
	.word	229
	.word	115
	.word	57
	.word	29
	.word	14
	.word	7
	.word	4
	.word	2
	.word	1
	.section	.text.ft_trig_downscale,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_trig_downscale, %function
ft_trig_downscale:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L1511
	ldr	r3, [r7, #4]
	negs	r3, r3
	str	r3, [r7, #4]
	mov	r3, #-1
	str	r3, [r7, #44]
.L1511:
	ldr	r3, [r7, #4]
	uxth	r3, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #16
	str	r3, [r7, #36]
	movw	r3, #23318
	str	r3, [r7, #32]
	movw	r3, #56281
	str	r3, [r7, #28]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #32]
	mul	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #36]
	mul	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #28]
	mul	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L1512
	mov	r3, #65536
	b	.L1513
.L1512:
	movs	r3, #0
.L1513:
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	lsrs	r3, r3, #16
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #16
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ite	cc
	movcc	r3, #1
	movcs	r3, #0
	uxtb	r3, r3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	add	r3, r3, #1073741824
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	mvn	r3, #-1073741824
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #4]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bge	.L1514
	ldr	r3, [r7, #4]
	negs	r3, r3
	b	.L1515
.L1514:
	ldr	r3, [r7, #4]
.L1515:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_trig_downscale, .-ft_trig_downscale
	.section	.text.ft_trig_prenorm,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_trig_prenorm, %function
ft_trig_prenorm:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #12]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	orrs	r3, r3, r2
	clz	r3, r3
	rsb	r3, r3, #31
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #29
	bgt	.L1518
	ldr	r3, [r7, #20]
	rsb	r3, r3, #29
	str	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L1519
.L1518:
	ldr	r3, [r7, #20]
	subs	r3, r3, #29
	str	r3, [r7, #20]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	asrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	asrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #20]
.L1519:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_trig_prenorm, .-ft_trig_prenorm
	.section	.text.ft_trig_pseudo_rotate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_trig_pseudo_rotate, %function
ft_trig_pseudo_rotate:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	b	.L1522
.L1523:
	ldr	r3, [r7, #20]
	str	r3, [r7, #8]
	ldr	r3, [r7, #24]
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	add	r3, r3, #5898240
	str	r3, [r7]
.L1522:
	ldr	r3, [r7]
	cmn	r3, #2949120
	blt	.L1523
	b	.L1524
.L1525:
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	sub	r3, r3, #5898240
	str	r3, [r7]
.L1524:
	ldr	r3, [r7]
	cmp	r3, #2949120
	bgt	.L1525
	ldr	r3, .L1530
.LPIC33:
	add	r3, pc
	str	r3, [r7, #12]
	movs	r3, #1
	str	r3, [r7, #28]
	movs	r3, #1
	str	r3, [r7, #16]
	b	.L1526
.L1529:
	ldr	r3, [r7]
	cmp	r3, #0
	bge	.L1527
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	asrs	r2, r2, r3
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	asr	r3, r2, r3
	ldr	r2, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	str	r2, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7]
	add	r3, r3, r2
	str	r3, [r7]
	b	.L1528
.L1527:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	asr	r3, r2, r3
	ldr	r2, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	asr	r3, r2, r3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	str	r2, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7]
	subs	r3, r2, r3
	str	r3, [r7]
.L1528:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L1526:
	ldr	r3, [r7, #28]
	cmp	r3, #22
	ble	.L1529
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L1531:
	.align	2
.L1530:
	.word	ft_trig_arctan_table-(.LPIC33+4)
	.size	ft_trig_pseudo_rotate, .-ft_trig_pseudo_rotate
	.section	.text.ft_trig_pseudo_polarize,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_trig_pseudo_polarize, %function
ft_trig_pseudo_polarize:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L1533
	ldr	r3, [r7, #28]
	negs	r2, r3
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bge	.L1534
	mov	r3, #5898240
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	b	.L1538
.L1534:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	ble	.L1536
	mov	r3, #11796480
	b	.L1537
.L1536:
	movs	r3, #0
	movt	r3, 65356
.L1537:
	str	r3, [r7, #36]
	ldr	r3, [r7, #28]
	negs	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	negs	r3, r3
	str	r3, [r7, #24]
	b	.L1538
.L1533:
	ldr	r3, [r7, #28]
	negs	r2, r3
	ldr	r3, [r7, #24]
	cmp	r2, r3
	ble	.L1539
	movs	r3, #0
	movt	r3, 65446
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	negs	r3, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	b	.L1538
.L1539:
	movs	r3, #0
	str	r3, [r7, #36]
.L1538:
	ldr	r3, .L1546
.LPIC34:
	add	r3, pc
	str	r3, [r7, #16]
	movs	r3, #1
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L1540
.L1543:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	ble	.L1541
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	asrs	r2, r2, r3
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	asr	r3, r2, r3
	ldr	r2, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	str	r2, [r7, #16]
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L1542
.L1541:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	asr	r3, r2, r3
	ldr	r2, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	asr	r3, r2, r3
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	adds	r2, r3, #4
	str	r2, [r7, #16]
	ldr	r3, [r3]
	ldr	r2, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #36]
.L1542:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L1540:
	ldr	r3, [r7, #32]
	cmp	r3, #22
	ble	.L1543
	ldr	r3, [r7, #36]
	cmp	r3, #0
	blt	.L1544
	ldr	r3, [r7, #36]
	adds	r3, r3, #8
	bic	r3, r3, #15
	str	r3, [r7, #36]
	b	.L1545
.L1544:
	ldr	r3, [r7, #36]
	rsb	r3, r3, #8
	bic	r3, r3, #15
	negs	r3, r3
	str	r3, [r7, #36]
.L1545:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r3, #4]
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L1547:
	.align	2
.L1546:
	.word	ft_trig_arctan_table-(.LPIC34+4)
	.size	ft_trig_pseudo_polarize, .-ft_trig_pseudo_polarize
	.section	.text.FT_Cos,"ax",%progbits
	.align	2
	.global	FT_Cos
	.thumb
	.thumb_func
	.type	FT_Cos, %function
FT_Cos:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	FT_Vector_Unit(PLT)
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Cos, .-FT_Cos
	.section	.text.FT_Sin,"ax",%progbits
	.align	2
	.global	FT_Sin
	.thumb
	.thumb_func
	.type	FT_Sin, %function
FT_Sin:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	FT_Vector_Unit(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Sin, .-FT_Sin
	.section	.text.FT_Tan,"ax",%progbits
	.align	2
	.global	FT_Tan
	.thumb
	.thumb_func
	.type	FT_Tan, %function
FT_Tan:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	FT_Vector_Unit(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Tan, .-FT_Tan
	.section	.text.FT_Atan2,"ax",%progbits
	.align	2
	.global	FT_Atan2
	.thumb
	.thumb_func
	.type	FT_Atan2, %function
FT_Atan2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1555
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1555
	movs	r3, #0
	b	.L1557
.L1555:
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7]
	str	r3, [r7, #12]
	add	r3, r7, #8
	mov	r0, r3
	bl	ft_trig_prenorm(PLT)
	add	r3, r7, #8
	mov	r0, r3
	bl	ft_trig_pseudo_polarize(PLT)
	ldr	r3, [r7, #12]
.L1557:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Atan2, .-FT_Atan2
	.section	.text.FT_Vector_Unit,"ax",%progbits
	.align	2
	.global	FT_Vector_Unit
	.thumb
	.thumb_func
	.type	FT_Vector_Unit, %function
FT_Vector_Unit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1559
	b	.L1558
.L1559:
	ldr	r2, [r7, #4]
	movw	r3, #55643
	movt	r3, 219
	str	r3, [r2]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	ft_trig_pseudo_rotate(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r3, r3, #128
	asrs	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #128
	asrs	r2, r3, #8
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L1558:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Vector_Unit, .-FT_Vector_Unit
	.section	.text.FT_Vector_Rotate,"ax",%progbits
	.align	2
	.global	FT_Vector_Rotate
	.thumb
	.thumb_func
	.type	FT_Vector_Rotate, %function
FT_Vector_Rotate:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1562
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1563
.L1562:
	b	.L1561
.L1563:
	ldr	r2, [r7, #4]
	add	r3, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1565
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1565
	b	.L1561
.L1565:
	add	r3, r7, #8
	mov	r0, r3
	bl	ft_trig_prenorm(PLT)
	str	r0, [r7, #20]
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	ft_trig_pseudo_rotate(PLT)
	ldr	r3, [r7, #8]
	mov	r0, r3
	bl	ft_trig_downscale(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	ft_trig_downscale(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L1566
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	movs	r2, #1
	lsl	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	asrs	r3, r3, #31
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	asrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	asrs	r3, r3, #31
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	asrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	b	.L1561
.L1566:
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	mov	r2, r3
	ldr	r3, [r7, #20]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r2, r3
	ldr	r3, [r7, #20]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L1561:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Vector_Rotate, .-FT_Vector_Rotate
	.section	.text.FT_Vector_Length,"ax",%progbits
	.align	2
	.global	FT_Vector_Length
	.thumb
	.thumb_func
	.type	FT_Vector_Length, %function
FT_Vector_Length:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1570
	movs	r3, #0
	b	.L1575
.L1570:
	ldr	r2, [r7, #4]
	add	r3, r7, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1572
	ldr	r3, [r7, #16]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	b	.L1575
.L1572:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1573
	ldr	r3, [r7, #12]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	b	.L1575
.L1573:
	add	r3, r7, #12
	mov	r0, r3
	bl	ft_trig_prenorm(PLT)
	str	r0, [r7, #20]
	add	r3, r7, #12
	mov	r0, r3
	bl	ft_trig_pseudo_polarize(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	ft_trig_downscale(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	ble	.L1574
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	movs	r1, #1
	lsl	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	asr	r3, r2, r3
	b	.L1575
.L1574:
	ldr	r3, [r7, #12]
	mov	r2, r3
	ldr	r3, [r7, #20]
	negs	r3, r3
	lsl	r3, r2, r3
.L1575:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Vector_Length, .-FT_Vector_Length
	.section	.text.FT_Vector_Polarize,"ax",%progbits
	.align	2
	.global	FT_Vector_Polarize
	.thumb
	.thumb_func
	.type	FT_Vector_Polarize, %function
FT_Vector_Polarize:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1577
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1577
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1578
.L1577:
	b	.L1576
.L1578:
	ldr	r2, [r7, #12]
	add	r3, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1580
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L1580
	b	.L1576
.L1580:
	add	r3, r7, #20
	mov	r0, r3
	bl	ft_trig_prenorm(PLT)
	str	r0, [r7, #28]
	add	r3, r7, #20
	mov	r0, r3
	bl	ft_trig_pseudo_polarize(PLT)
	ldr	r3, [r7, #20]
	mov	r0, r3
	bl	ft_trig_downscale(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L1581
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #28]
	asr	r3, r2, r3
	b	.L1582
.L1581:
	ldr	r3, [r7, #20]
	mov	r2, r3
	ldr	r3, [r7, #28]
	negs	r3, r3
	lsl	r3, r2, r3
.L1582:
	ldr	r2, [r7, #8]
	str	r3, [r2]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L1576:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Vector_Polarize, .-FT_Vector_Polarize
	.section	.text.FT_Vector_From_Polar,"ax",%progbits
	.align	2
	.global	FT_Vector_From_Polar
	.thumb
	.thumb_func
	.type	FT_Vector_From_Polar, %function
FT_Vector_From_Polar:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1585
	b	.L1584
.L1585:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	FT_Vector_Rotate(PLT)
.L1584:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Vector_From_Polar, .-FT_Vector_From_Polar
	.section	.text.FT_Angle_Diff,"ax",%progbits
	.align	2
	.global	FT_Angle_Diff
	.thumb
	.thumb_func
	.type	FT_Angle_Diff, %function
FT_Angle_Diff:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	b	.L1588
.L1589:
	ldr	r3, [r7, #12]
	add	r3, r3, #23592960
	str	r3, [r7, #12]
.L1588:
	ldr	r3, [r7, #12]
	cmn	r3, #11796480
	ble	.L1589
	b	.L1590
.L1591:
	ldr	r3, [r7, #12]
	sub	r3, r3, #23592960
	str	r3, [r7, #12]
.L1590:
	ldr	r3, [r7, #12]
	cmp	r3, #11796480
	bgt	.L1591
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Angle_Diff, .-FT_Angle_Diff
	.section	.text.ft_mem_alloc,"ax",%progbits
	.align	2
	.global	ft_mem_alloc
	.thumb
	.thumb_func
	.type	ft_mem_alloc, %function
ft_mem_alloc:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	ft_mem_qalloc(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1594
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L1594
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #20]
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
.L1594:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_mem_alloc, .-ft_mem_alloc
	.section	.text.ft_mem_qalloc,"ax",%progbits
	.align	2
	.global	ft_mem_qalloc
	.thumb
	.thumb_func
	.type	ft_mem_qalloc, %function
ft_mem_qalloc:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ble	.L1597
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	blx	r3
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1599
	movs	r3, #64
	str	r3, [r7, #20]
	b	.L1599
.L1597:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L1599
	movs	r3, #6
	str	r3, [r7, #20]
.L1599:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_mem_qalloc, .-ft_mem_qalloc
	.section	.text.ft_mem_realloc,"ax",%progbits
	.align	2
	.global	ft_mem_realloc
	.thumb
	.thumb_func
	.type	ft_mem_realloc, %function
ft_mem_realloc:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	str	r3, [sp]
	add	r3, r7, #20
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	ft_mem_qrealloc(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1602
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L1602
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	ldr	r2, [r7, #32]
	add	r2, r2, r3
	ldr	r1, [r7]
	ldr	r3, [r7, #4]
	subs	r3, r1, r3
	ldr	r1, [r7, #8]
	mul	r3, r1, r3
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
.L1602:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_mem_realloc, .-ft_mem_realloc
	.global	__aeabi_idiv
	.section	.text.ft_mem_qrealloc,"ax",%progbits
	.align	2
	.global	ft_mem_qrealloc
	.thumb
	.thumb_func
	.type	ft_mem_qrealloc, %function
ft_mem_qrealloc:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.L1605
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L1605
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L1606
.L1605:
	movs	r3, #6
	str	r3, [r7, #16]
	b	.L1607
.L1606:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1608
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1609
.L1608:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #48]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L1607
.L1609:
	mvn	r0, #-2147483648
	ldr	r1, [r7, #8]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L1610
	movs	r3, #10
	str	r3, [r7, #16]
	b	.L1607
.L1610:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1611
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	mul	r2, r2, r3
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #48]
	b	.L1607
.L1611:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	mul	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #48]
	blx	r4
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L1612
	movs	r3, #64
	str	r3, [r7, #16]
	b	.L1607
.L1612:
	ldr	r3, [r7, #20]
	str	r3, [r7, #48]
.L1607:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #48]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ft_mem_qrealloc, .-ft_mem_qrealloc
	.section	.text.ft_mem_free,"ax",%progbits
	.align	2
	.global	ft_mem_free
	.thumb
	.thumb_func
	.type	ft_mem_free, %function
ft_mem_free:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L1614
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
.L1614:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_mem_free, .-ft_mem_free
	.section	.text.ft_mem_dup,"ax",%progbits
	.align	2
	.global	ft_mem_dup
	.thumb
	.thumb_func
	.type	ft_mem_dup, %function
ft_mem_dup:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #4]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_qalloc(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L1617
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1617
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	memcpy(PLT)
.L1617:
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_mem_dup, .-ft_mem_dup
	.section	.text.ft_mem_strdup,"ax",%progbits
	.align	2
	.global	ft_mem_strdup
	.thumb
	.thumb_func
	.type	ft_mem_strdup, %function
ft_mem_strdup:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1620
	ldr	r0, [r7, #8]
	bl	strlen(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	b	.L1621
.L1620:
	movs	r3, #0
.L1621:
	str	r3, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	bl	ft_mem_dup(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_mem_strdup, .-ft_mem_strdup
	.section	.text.ft_mem_strcpyn,"ax",%progbits
	.align	2
	.global	ft_mem_strcpyn
	.thumb
	.thumb_func
	.type	ft_mem_strcpyn, %function
ft_mem_strcpyn:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	b	.L1624
.L1626:
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldr	r2, [r7, #8]
	adds	r1, r2, #1
	str	r1, [r7, #8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L1624:
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bls	.L1625
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1626
.L1625:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_mem_strcpyn, .-ft_mem_strcpyn
	.section	.text.FT_List_Find,"ax",%progbits
	.align	2
	.global	FT_List_Find
	.thumb
	.thumb_func
	.type	FT_List_Find, %function
FT_List_Find:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1629
	movs	r3, #0
	b	.L1630
.L1629:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	b	.L1631
.L1633:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L1632
	ldr	r3, [r7, #12]
	b	.L1630
.L1632:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
.L1631:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1633
	movs	r3, #0
.L1630:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_List_Find, .-FT_List_Find
	.section	.text.FT_List_Add,"ax",%progbits
	.align	2
	.global	FT_List_Add
	.thumb
	.thumb_func
	.type	FT_List_Add, %function
FT_List_Add:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1635
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1636
.L1635:
	b	.L1634
.L1636:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1638
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	b	.L1639
.L1638:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
.L1639:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
.L1634:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_List_Add, .-FT_List_Add
	.section	.text.FT_List_Insert,"ax",%progbits
	.align	2
	.global	FT_List_Insert
	.thumb
	.thumb_func
	.type	FT_List_Insert, %function
FT_List_Insert:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1641
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1642
.L1641:
	b	.L1640
.L1642:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1644
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	b	.L1645
.L1644:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3]
.L1645:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
.L1640:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_List_Insert, .-FT_List_Insert
	.section	.text.FT_List_Remove,"ax",%progbits
	.align	2
	.global	FT_List_Remove
	.thumb
	.thumb_func
	.type	FT_List_Remove, %function
FT_List_Remove:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1647
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1648
.L1647:
	b	.L1646
.L1648:
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1650
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	b	.L1651
.L1650:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3]
.L1651:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1652
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	b	.L1646
.L1652:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
.L1646:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_List_Remove, .-FT_List_Remove
	.section	.text.FT_List_Up,"ax",%progbits
	.align	2
	.global	FT_List_Up
	.thumb
	.thumb_func
	.type	FT_List_Up, %function
FT_List_Up:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1654
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L1655
.L1654:
	b	.L1653
.L1655:
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L1657
	b	.L1653
.L1657:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1658
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	b	.L1659
.L1658:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
.L1659:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
.L1653:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_List_Up, .-FT_List_Up
	.section	.text.FT_List_Iterate,"ax",%progbits
	.align	2
	.global	FT_List_Iterate
	.thumb
	.thumb_func
	.type	FT_List_Iterate, %function
FT_List_Iterate:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1661
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L1662
.L1661:
	movs	r3, #6
	b	.L1663
.L1662:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	b	.L1664
.L1667:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #4]
	blx	r3
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L1665
	b	.L1666
.L1665:
	ldr	r3, [r7, #20]
	str	r3, [r7, #28]
.L1664:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L1667
.L1666:
	ldr	r3, [r7, #24]
.L1663:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_List_Iterate, .-FT_List_Iterate
	.section	.text.FT_List_Finalize,"ax",%progbits
	.align	2
	.global	FT_List_Finalize
	.thumb
	.thumb_func
	.type	FT_List_Finalize, %function
FT_List_Finalize:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L1669
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L1670
.L1669:
	b	.L1668
.L1670:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	b	.L1672
.L1674:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L1673
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	ldr	r2, [r7]
	blx	r3
.L1673:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
.L1672:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L1674
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
.L1668:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_List_Finalize, .-FT_List_Finalize
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
