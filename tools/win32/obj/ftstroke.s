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
	.file	"ftstroke.c"
	.section	.text.FT_Outline_GetInsideBorder,"ax",%progbits
	.align	2
	.global	FT_Outline_GetInsideBorder
	.thumb
	.thumb_func
	.type	FT_Outline_GetInsideBorder, %function
FT_Outline_GetInsideBorder:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	FT_Outline_Get_Orientation(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_GetInsideBorder, .-FT_Outline_GetInsideBorder
	.section	.text.FT_Outline_GetOutsideBorder,"ax",%progbits
	.align	2
	.global	FT_Outline_GetOutsideBorder
	.thumb
	.thumb_func
	.type	FT_Outline_GetOutsideBorder, %function
FT_Outline_GetOutsideBorder:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	FT_Outline_Get_Orientation(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Outline_GetOutsideBorder, .-FT_Outline_GetOutsideBorder
	.section	.text.ft_pos_abs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_pos_abs, %function
ft_pos_abs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_pos_abs, .-ft_pos_abs
	.section	.text.ft_conic_split,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_conic_split, %function
ft_conic_split:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	ldr	r2, [r7, #4]
	adds	r2, r2, #16
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r2, [r7, #4]
	adds	r2, r2, #16
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	lsrs	r1, r2, #31
	add	r2, r2, r1
	asrs	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	lsrs	r1, r2, #31
	add	r2, r2, r1
	asrs	r2, r2, #1
	str	r2, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r2]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	ldr	r2, [r7, #4]
	adds	r2, r2, #16
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r2, [r7, #4]
	adds	r2, r2, #16
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	lsrs	r1, r2, #31
	add	r2, r2, r1
	asrs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #4]
	ldr	r2, [r7, #12]
	add	r2, r2, r1
	lsrs	r1, r2, #31
	add	r2, r2, r1
	asrs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r2, #4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_conic_split, .-ft_conic_split
	.section	.text.ft_conic_is_small_enough,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_conic_is_small_enough, %function
ft_conic_is_small_enough:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r3, #-1
	blt	.L9
	ldr	r3, [r7, #28]
	cmp	r3, #1
	bgt	.L9
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	blt	.L9
	ldr	r3, [r7, #32]
	cmp	r3, #1
	bgt	.L9
	movs	r3, #1
	b	.L10
.L9:
	movs	r3, #0
.L10:
	str	r3, [r7, #44]
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	blt	.L11
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bgt	.L11
	ldr	r3, [r7, #24]
	cmp	r3, #-1
	blt	.L11
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bgt	.L11
	movs	r3, #1
	b	.L12
.L11:
	movs	r3, #0
.L12:
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L15
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	b	.L15
.L13:
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L16
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	b	.L15
.L16:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L15:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	str	r0, [r7, #36]
	ldr	r2, [r7, #36]
	movw	r3, #65535
	movt	r3, 29
	cmp	r2, r3
	ite	le
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_conic_is_small_enough, .-ft_conic_is_small_enough
	.section	.text.ft_cubic_split,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_cubic_split, %function
ft_cubic_split:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	ldr	r2, [r7, #4]
	adds	r2, r2, #24
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r2, r3, #40
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r1, [r3]
	ldr	r3, [r7, #16]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r2]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r2, r3, #32
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r2]
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r2]
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	ldr	r2, [r7, #4]
	adds	r2, r2, #24
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #40
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #16]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r2, #4]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #32
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r2, #4]
	ldr	r3, [r7, #4]
	add	r2, r3, #24
	ldr	r1, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r1
	lsrs	r1, r3, #31
	add	r3, r3, r1
	asrs	r3, r3, #1
	str	r3, [r2, #4]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_cubic_split, .-ft_cubic_split
	.section	.text.ft_angle_mean,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_angle_mean, %function
ft_angle_mean:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_angle_mean, .-ft_angle_mean
	.section	.text.ft_cubic_is_small_enough,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_cubic_is_small_enough, %function
ft_cubic_is_small_enough:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	cmp	r3, #-1
	blt	.L22
	ldr	r3, [r7, #36]
	cmp	r3, #1
	bgt	.L22
	ldr	r3, [r7, #40]
	cmp	r3, #-1
	blt	.L22
	ldr	r3, [r7, #40]
	cmp	r3, #1
	bgt	.L22
	movs	r3, #1
	b	.L23
.L22:
	movs	r3, #0
.L23:
	str	r3, [r7, #60]
	ldr	r3, [r7, #28]
	cmp	r3, #-1
	blt	.L24
	ldr	r3, [r7, #28]
	cmp	r3, #1
	bgt	.L24
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	blt	.L24
	ldr	r3, [r7, #32]
	cmp	r3, #1
	bgt	.L24
	movs	r3, #1
	b	.L25
.L24:
	movs	r3, #0
.L25:
	str	r3, [r7, #56]
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	blt	.L26
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bgt	.L26
	ldr	r3, [r7, #24]
	cmp	r3, #-1
	blt	.L26
	ldr	r3, [r7, #24]
	cmp	r3, #1
	bgt	.L26
	movs	r3, #1
	b	.L27
.L26:
	movs	r3, #0
.L27:
	str	r3, [r7, #52]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L28
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L33
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	b	.L33
.L29:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L32
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	b	.L33
.L32:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	b	.L33
.L28:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L34
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L35
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	str	r2, [r3]
	b	.L33
.L35:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	ft_angle_mean(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L33
.L34:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L37
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	b	.L33
.L37:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	str	r2, [r3]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #32]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
.L33:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #48]
	cmp	r3, #1474560
	bge	.L38
	ldr	r3, [r7, #44]
	cmp	r3, #1474560
	bge	.L38
	movs	r3, #1
	b	.L39
.L38:
	movs	r3, #0
.L39:
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_cubic_is_small_enough, .-ft_cubic_is_small_enough
	.section	.text.ft_stroke_border_grow,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_grow, %function
ft_stroke_border_grow:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bls	.L42
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #16]
	b	.L43
.L44:
	ldr	r3, [r7, #28]
	lsrs	r2, r3, #1
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #16
	str	r3, [r7, #28]
.L43:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcc	.L44
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #8]
	str	r1, [sp]
	add	r1, r7, #12
	str	r1, [sp, #4]
	ldr	r0, [r7, #16]
	movs	r1, #8
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L42
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #12]
	str	r1, [sp]
	add	r1, r7, #12
	str	r1, [sp, #4]
	ldr	r0, [r7, #16]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L42
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3, #4]
.L42:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroke_border_grow, .-ft_stroke_border_grow
	.section	.text.ft_stroke_border_close,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_close, %function
ft_stroke_border_close:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L47
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	b	.L48
.L47:
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #8]
	ldr	r2, [r7, #24]
	lsls	r2, r2, #3
	add	r2, r2, r1
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L49
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #40]
	b	.L50
.L51:
	ldr	r2, [r7, #44]
	add	r3, r7, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #44]
	ldr	r2, [r7, #40]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #40]
	add	r2, r7, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #44]
	adds	r3, r3, #8
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	subs	r3, r3, #8
	str	r3, [r7, #40]
.L50:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcc	.L51
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #32]
	b	.L52
.L53:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]
	strb	r3, [r7, #23]
	ldr	r3, [r7, #32]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #36]
	strb	r2, [r3]
	ldr	r3, [r7, #32]
	ldrb	r2, [r7, #23]
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
.L52:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L53
.L49:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #12]
	ldr	r2, [r7, #28]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #4]
	ldr	r1, [r2, #12]
	ldr	r2, [r7, #24]
	subs	r2, r2, #1
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	orr	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
.L48:
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #16]
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_stroke_border_close, .-ft_stroke_border_close
	.section	.text.ft_stroke_border_lineto,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_lineto, %function
ft_stroke_border_lineto:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L56
.L55:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L57
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L57
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L57
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L57
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L57
	ldr	r3, [r7, #28]
	b	.L58
.L57:
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	ft_stroke_border_grow(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L56
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #20]
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L56:
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #7]
	strb	r2, [r3, #16]
	ldr	r3, [r7, #28]
.L58:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroke_border_lineto, .-ft_stroke_border_lineto
	.section	.text.ft_stroke_border_conicto,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_conicto, %function
ft_stroke_border_conicto:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	movs	r1, #2
	bl	ft_stroke_border_grow(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L60
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #24]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #2
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L60:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #16]
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroke_border_conicto, .-ft_stroke_border_conicto
	.section	.text.ft_stroke_border_cubicto,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_cubicto, %function
ft_stroke_border_cubicto:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	movs	r1, #3
	bl	ft_stroke_border_grow(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L63
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #24]
	adds	r3, r3, #8
	ldr	r2, [r7, #4]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	ldr	r2, [r7]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #20]
	movs	r2, #2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	movs	r2, #2
	strb	r2, [r3]
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	movs	r2, #1
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #3
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L63:
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #16]
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroke_border_cubicto, .-ft_stroke_border_cubicto
	.section	.text.ft_stroke_border_arcto,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_arcto, %function
ft_stroke_border_arcto:
	@ args = 4, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #60]
	add	r3, r7, #40
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #96]
	str	r3, [r7, #76]
	ldr	r3, [r7]
	str	r3, [r7, #72]
	ldr	r3, [r7, #96]
	cmp	r3, #0
	blt	.L66
	mov	r3, #5898240
	b	.L67
.L66:
	movs	r3, #0
	movt	r3, 65446
.L67:
	str	r3, [r7, #56]
	b	.L68
.L74:
	ldr	r3, [r7, #76]
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #5898240
	ble	.L69
	mov	r3, #5898240
	str	r3, [r7, #68]
	b	.L70
.L69:
	ldr	r3, [r7, #68]
	cmn	r3, #5898240
	bge	.L70
	movs	r3, #0
	movt	r3, 65446
	str	r3, [r7, #68]
.L70:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #68]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bge	.L71
	ldr	r3, [r7, #64]
	negs	r3, r3
	str	r3, [r7, #64]
.L71:
	ldr	r3, [r7, #64]
	asrs	r3, r3, #1
	str	r3, [r7, #64]
	add	r3, r7, #32
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #52]
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r0, [r7, #64]
	bl	FT_Sin(PLT)
	mov	r3, r0
	lsls	r4, r3, #2
	ldr	r0, [r7, #64]
	bl	FT_Cos(PLT)
	mov	r3, r0
	add	r2, r3, #65536
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	mov	r1, r4
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #48]
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #56]
	add	r3, r3, r2
	add	r2, r7, #24
	mov	r0, r2
	ldr	r1, [r7, #48]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	add	r2, r7, #16
	mov	r0, r2
	ldr	r1, [r7, #48]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #20]
	add	r1, r7, #24
	add	r2, r7, #16
	add	r3, r7, #32
	ldr	r0, [r7, #12]
	bl	ft_stroke_border_cubicto(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L72
	b	.L73
.L72:
	add	r3, r7, #40
	add	r2, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #68]
	subs	r3, r2, r3
	str	r3, [r7, #76]
	ldr	r3, [r7, #52]
	str	r3, [r7, #72]
.L68:
	ldr	r3, [r7, #76]
	cmp	r3, #0
	bne	.L74
.L73:
	ldr	r3, [r7, #60]
	mov	r0, r3
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ft_stroke_border_arcto, .-ft_stroke_border_arcto
	.section	.text.ft_stroke_border_moveto,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_moveto, %function
ft_stroke_border_moveto:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	blt	.L77
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	ft_stroke_border_close(PLT)
.L77:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #16]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroke_border_moveto, .-ft_stroke_border_moveto
	.section	.text.ft_stroke_border_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_init, %function
ft_stroke_border_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #28]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_stroke_border_init, .-ft_stroke_border_init
	.section	.text.ft_stroke_border_reset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_reset, %function
ft_stroke_border_reset:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #28]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_stroke_border_reset, .-ft_stroke_border_reset
	.section	.text.ft_stroke_border_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_done, %function
ft_stroke_border_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r2, #-1
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #28]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroke_border_done, .-ft_stroke_border_done
	.section	.text.ft_stroke_border_get_counts,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_get_counts, %function
ft_stroke_border_get_counts:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L83
.L89:
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L84
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L85
	b	.L86
.L85:
	movs	r3, #1
	str	r3, [r7, #24]
	b	.L87
.L84:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L87
	b	.L86
.L87:
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L88
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L88:
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #32]
	adds	r3, r3, #8
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L83:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L89
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L90
	b	.L86
.L90:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #28]
.L91:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #40]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	b	.L93
.L86:
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L91
.L93:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_stroke_border_get_counts, .-ft_stroke_border_get_counts
	.section	.text.ft_stroke_border_export,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroke_border_export, %function
ft_stroke_border_export:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	adds	r1, r2, r3
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	add	r3, r3, r2
	str	r3, [r7, #28]
	b	.L95
.L99:
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r7, #28]
	movs	r2, #1
	strb	r2, [r3]
	b	.L97
.L96:
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L98
	ldr	r3, [r7, #28]
	movs	r2, #2
	strb	r2, [r3]
	b	.L97
.L98:
	ldr	r3, [r7, #28]
	movs	r2, #0
	strb	r2, [r3]
.L97:
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L95:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L99
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	ldrh	r3, [r3]
	sxth	r3, r3
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]	@ movhi
	strh	r3, [r7, #14]	@ movhi
	b	.L100
.L102:
	ldr	r3, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #8
	cmp	r3, #0
	beq	.L101
	ldr	r3, [r7, #16]
	adds	r2, r3, #2
	str	r2, [r7, #16]
	ldrh	r2, [r7, #14]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7]
	ldrh	r3, [r3]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3]	@ movhi
.L101:
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldrh	r3, [r7, #14]
	adds	r3, r3, #1
	strh	r3, [r7, #14]	@ movhi
.L100:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L102
	ldr	r3, [r7]
	ldrh	r3, [r3, #2]
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	uxth	r3, r3
	add	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7]
	strh	r2, [r3, #2]	@ movhi
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroke_border_export, .-ft_stroke_border_export
	.section	.text.FT_Stroker_New,"ax",%progbits
	.align	2
	.global	FT_Stroker_New
	.thumb
	.thumb_func
	.type	FT_Stroker_New, %function
FT_Stroker_New:
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
	bne	.L104
	movs	r3, #33
	b	.L108
.L104:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L106
	movs	r3, #6
	b	.L108
.L106:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	add	r3, r7, #12
	ldr	r0, [r7, #16]
	movs	r1, #132
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L107
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #128]
	ldr	r3, [r7, #20]
	adds	r3, r3, #64
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	ft_stroke_border_init(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #96
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	ft_stroke_border_init(PLT)
.L107:
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #12]
.L108:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_New, .-FT_Stroker_New
	.section	.text.FT_Stroker_Set,"ax",%progbits
	.align	2
	.global	FT_Stroker_Set
	.thumb
	.thumb_func
	.type	FT_Stroker_Set, %function
FT_Stroker_Set:
	@ args = 4, pretend = 0, frame = 16
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
	bne	.L110
	b	.L109
.L110:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #44]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #56]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	cmp	r3, #65536
	bge	.L112
	ldr	r3, [r7, #12]
	mov	r2, #65536
	str	r2, [r3, #56]
.L112:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #52]
	ldr	r0, [r7, #12]
	bl	FT_Stroker_Rewind(PLT)
.L109:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_Set, .-FT_Stroker_Set
	.section	.text.FT_Stroker_Rewind,"ax",%progbits
	.align	2
	.global	FT_Stroker_Rewind
	.thumb
	.thumb_func
	.type	FT_Stroker_Rewind, %function
FT_Stroker_Rewind:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L113
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	mov	r0, r3
	bl	ft_stroke_border_reset(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	ft_stroke_border_reset(PLT)
.L113:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_Rewind, .-FT_Stroker_Rewind
	.section	.text.FT_Stroker_Done,"ax",%progbits
	.align	2
	.global	FT_Stroker_Done
	.thumb
	.thumb_func
	.type	FT_Stroker_Done, %function
FT_Stroker_Done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L115
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #128]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	mov	r0, r3
	bl	ft_stroke_border_done(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	ft_stroke_border_done(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #128]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
.L115:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_Done, .-FT_Stroker_Done
	.section	.text.ft_stroker_arcto,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroker_arcto, %function
ft_stroker_arcto:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #60]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7]
	adds	r3, r3, #2
	lsls	r3, r3, #5
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7]
	movs	r3, #0
	movt	r3, 65356
	mul	r3, r3, r2
	add	r3, r3, #5898240
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #11796480
	bne	.L118
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #31
	subs	r3, r3, r2
	lsls	r3, r3, #1
	str	r3, [r7, #28]
.L118:
	ldr	r3, [r7, #4]
	add	r2, r3, #8
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #12]
	add	r3, r3, r1
	ldr	r1, [r7, #28]
	str	r1, [sp]
	ldr	r0, [r7, #16]
	mov	r1, r2
	ldr	r2, [r7, #24]
	bl	ft_stroke_border_arcto(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #16]
	movs	r2, #0
	strb	r2, [r3, #16]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroker_arcto, .-ft_stroker_arcto
	.section	.text.ft_stroker_cap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroker_cap, %function
ft_stroker_cap:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #1
	bne	.L121
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	add	r2, r3, #11796480
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	ft_stroker_arcto(PLT)
	str	r0, [r7, #68]
	b	.L122
.L121:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #2
	bne	.L123
	ldr	r2, [r7, #4]
	movs	r3, #0
	movt	r3, 65356
	mul	r3, r3, r2
	add	r3, r3, #5898240
	str	r3, [r7, #64]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #60]
	str	r3, [r7, #60]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	lsls	r3, r3, #5
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #56]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #64]
	add	r3, r3, r2
	add	r2, r7, #28
	mov	r0, r2
	ldr	r1, [r7, #60]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	add	r3, r7, #36
	mov	r0, r3
	ldr	r1, [r7, #60]
	ldr	r2, [r7, #8]
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #8]
	ldr	r3, [r7, #28]
	add	r3, r3, r1
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #32]
	add	r3, r3, r1
	add	r3, r3, r2
	str	r3, [r7, #40]
	add	r3, r7, #36
	ldr	r0, [r7, #56]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L122
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #64]
	subs	r3, r2, r3
	add	r2, r7, #28
	mov	r0, r2
	ldr	r1, [r7, #60]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	add	r3, r7, #36
	mov	r0, r3
	ldr	r1, [r7, #60]
	ldr	r2, [r7, #8]
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #36]
	ldr	r1, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r1
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r2, [r7, #40]
	ldr	r1, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r3, r3, r1
	add	r3, r3, r2
	str	r3, [r7, #40]
	add	r3, r7, #36
	ldr	r0, [r7, #56]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #68]
	b	.L122
.L123:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L122
	ldr	r2, [r7, #4]
	movs	r3, #0
	movt	r3, 65356
	mul	r3, r3, r2
	add	r3, r3, #5898240
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #60]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	lsls	r3, r3, #5
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #52]
	add	r3, r3, r2
	add	r2, r7, #20
	mov	r0, r2
	ldr	r1, [r7, #48]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #24]
	add	r3, r7, #20
	ldr	r0, [r7, #44]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L122
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	add	r2, r7, #20
	mov	r0, r2
	ldr	r1, [r7, #48]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #24]
	add	r3, r7, #20
	ldr	r0, [r7, #44]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #68]
.L122:
	ldr	r3, [r7, #68]
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroker_cap, .-ft_stroker_cap
	.section	.text.ft_stroker_inside,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroker_inside, %function
ft_stroker_inside:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #68
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	lsls	r3, r3, #5
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #56]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r2, [r7, #8]
	movs	r3, #0
	movt	r3, 65356
	mul	r3, r3, r2
	add	r3, r3, #5898240
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #56]
	ldrb	r3, [r3, #16]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L128
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L128
	ldr	r2, [r7, #44]
	mov	r3, #49152
	movt	r3, 89
	cmp	r2, r3
	bgt	.L128
	ldr	r2, [r7, #44]
	mov	r3, #16384
	movt	r3, 65446
	cmp	r2, r3
	bge	.L129
.L128:
	movs	r3, #0
	strb	r3, [r7, #63]
	b	.L130
.L129:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #60]
	ldr	r0, [r7, #44]
	bl	FT_Tan(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	str	r0, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L131
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	blt	.L131
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	blt	.L131
	movs	r3, #1
	b	.L132
.L131:
	movs	r3, #0
.L132:
	strb	r3, [r7, #63]
.L130:
	ldrb	r3, [r7, #63]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L133
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #48]
	add	r3, r3, r1
	add	r1, r7, #20
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #56]
	movs	r2, #0
	strb	r2, [r3, #16]
	b	.L134
.L133:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r0, [r7, #44]
	bl	FT_Cos(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #60]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #28]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #48]
	add	r3, r3, r2
	add	r2, r7, #20
	mov	r0, r2
	ldr	r1, [r7, #28]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #24]
.L134:
	add	r3, r7, #20
	ldr	r0, [r7, #56]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ft_stroker_inside, .-ft_stroker_inside
	.section	.text.ft_stroker_outside,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroker_outside, %function
ft_stroker_outside:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #100
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	lsls	r3, r3, #5
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L137
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	ft_stroker_arcto(PLT)
	str	r0, [r7, #92]
	b	.L138
.L137:
	movs	r3, #0
	str	r3, [r7, #88]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #60]
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #80]
	movs	r3, #0
	str	r3, [r7, #76]
	ldr	r2, [r7, #8]
	movs	r3, #0
	movt	r3, 65356
	mul	r3, r3, r2
	add	r3, r3, #5898240
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #1
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #75]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #2
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #59]
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L139
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	str	r0, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #11796480
	bne	.L140
	ldr	r3, [r7, #60]
	str	r3, [r7, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #80]
	b	.L141
.L140:
	ldr	r3, [r7, #84]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #84]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #84]
	add	r2, r2, r3
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #80]
.L141:
	ldr	r0, [r7, #84]
	bl	FT_Cos(PLT)
	str	r0, [r7, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	mov	r0, r3
	ldr	r1, [r7, #76]
	bl	FT_MulFix(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #65536
	bge	.L139
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L142
	ldr	r0, [r7, #84]
	bl	ft_pos_abs(PLT)
	mov	r3, r0
	cmp	r3, #57
	ble	.L139
.L142:
	movs	r3, #1
	strb	r3, [r7, #75]
.L139:
	ldrb	r3, [r7, #75]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L143
	ldrb	r3, [r7, #59]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L144
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	add	r2, r7, #40
	mov	r0, r2
	ldr	r1, [r7, #64]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #68]
	movs	r2, #0
	strb	r2, [r3, #16]
	add	r3, r7, #40
	ldr	r0, [r7, #68]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #92]
	b	.L138
.L144:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #56]
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	FT_MulFix(PLT)
	mov	r3, r0
	add	r2, r7, #32
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #80]
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #88]
	rsb	r4, r3, #65536
	ldr	r0, [r7, #84]
	bl	FT_Sin(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	mov	r3, r0
	ldr	r0, [r7, #64]
	mov	r1, r4
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #52]
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	add	r2, r7, #24
	mov	r0, r2
	ldr	r1, [r7, #52]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #28]
	add	r3, r7, #24
	ldr	r0, [r7, #68]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	beq	.L146
	b	.L138
.L146:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	add	r2, r7, #24
	mov	r0, r2
	ldr	r1, [r7, #52]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #28]
	add	r3, r7, #24
	ldr	r0, [r7, #68]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	beq	.L148
	nop
	b	.L138
.L148:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L145
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #60]
	add	r3, r3, r2
	add	r2, r7, #24
	mov	r0, r2
	ldr	r1, [r7, #64]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #28]
	add	r3, r7, #24
	ldr	r0, [r7, #68]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #92]
	b	.L138
.L145:
	b	.L138
.L143:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #60]
	mov	r0, r3
	ldr	r1, [r7, #76]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #48]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #80]
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #20]
	add	r3, r7, #16
	ldr	r0, [r7, #68]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #0
	bne	.L138
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L138
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #60]
	add	r3, r3, r1
	add	r1, r7, #16
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r3, r3, r2
	str	r3, [r7, #20]
	add	r3, r7, #16
	ldr	r0, [r7, #68]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #92]
.L138:
	ldr	r3, [r7, #92]
	mov	r0, r3
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ft_stroker_outside, .-ft_stroker_outside
	.section	.text.ft_stroker_process_corner,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroker_process_corner, %function
ft_stroker_process_corner:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L154
	b	.L155
.L154:
	ldr	r3, [r7, #16]
	lsrs	r3, r3, #31
	uxtb	r3, r3
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	ldr	r2, [r7]
	bl	ft_stroker_inside(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L156
	b	.L155
.L156:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	ldr	r0, [r7, #4]
	mov	r1, r3
	ldr	r2, [r7]
	bl	ft_stroker_outside(PLT)
	str	r0, [r7, #20]
.L155:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroker_process_corner, .-ft_stroker_process_corner
	.section	.text.ft_stroker_subpath_start,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroker_subpath_start, %function
ft_stroker_subpath_start:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #8]
	add	r3, r3, #5898240
	add	r1, r7, #24
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	adds	r3, r3, #64
	str	r3, [r7, #32]
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	ft_stroke_border_moveto(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L159
	b	.L160
.L159:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #32]
	adds	r3, r3, #32
	str	r3, [r7, #32]
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	mov	r1, r3
	bl	ft_stroke_border_moveto(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #36]
.L160:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroker_subpath_start, .-ft_stroker_subpath_start
	.section	.text.FT_Stroker_LineTo,"ax",%progbits
	.align	2
	.global	FT_Stroker_LineTo
	.thumb
	.thumb_func
	.type	FT_Stroker_LineTo, %function
FT_Stroker_LineTo:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L163
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L164
.L163:
	movs	r3, #6
	b	.L173
.L164:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L166
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L166
	b	.L167
.L166:
	add	r3, r7, #20
	mov	r0, r3
	bl	FT_Vector_Length(PLT)
	str	r0, [r7, #32]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #60]
	ldr	r3, [r7, #28]
	add	r3, r3, #5898240
	add	r1, r7, #20
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L168
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #28]
	ldr	r2, [r7, #32]
	bl	ft_stroker_subpath_start(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L169
	b	.L167
.L168:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3, #4]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #32]
	bl	ft_stroker_process_corner(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L169
	b	.L167
.L169:
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	str	r3, [r7, #40]
	movs	r3, #1
	str	r3, [r7, #36]
	b	.L170
.L172:
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #16]
	add	r3, r7, #12
	ldr	r0, [r7, #40]
	mov	r1, r3
	movs	r2, #1
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L167
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	negs	r3, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	adds	r3, r3, #32
	str	r3, [r7, #40]
.L170:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L172
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	adds	r3, r3, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #32]
	str	r2, [r3, #16]
.L167:
	ldr	r3, [r7, #44]
.L173:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_LineTo, .-FT_Stroker_LineTo
	.section	.text.FT_Stroker_ConicTo,"ax",%progbits
	.align	2
	.global	FT_Stroker_ConicTo
	.thumb
	.thumb_func
	.type	FT_Stroker_ConicTo, %function
FT_Stroker_ConicTo:
	@ args = 0, pretend = 0, frame = 408
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #412
	add	r7, sp, #0
	add	r3, r7, #12
	str	r0, [r3]
	add	r3, r7, #8
	str	r1, [r3]
	adds	r3, r7, #4
	str	r2, [r3]
	movs	r3, #0
	str	r3, [r7, #404]
	add	r3, r7, #64
	adds	r3, r3, #240
	str	r3, [r7, #380]
	movs	r3, #1
	strb	r3, [r7, #399]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L175
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L175
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L176
.L175:
	movs	r3, #6
	str	r3, [r7, #404]
	b	.L177
.L176:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L178
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L178
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L178
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L178
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L178
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L178
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L178
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L178
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r2, r7, #4
	ldr	r2, [r2]
	adds	r3, r3, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L177
.L178:
	add	r3, r7, #64
	str	r3, [r7, #400]
	ldr	r3, [r7, #400]
	adds	r2, r7, #4
	ldr	r2, [r2]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #400]
	adds	r3, r3, #8
	add	r2, r7, #8
	ldr	r2, [r2]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #400]
	adds	r3, r3, #16
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L179
.L200:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3]
	add	r3, r7, #56
	str	r2, [r3]
	add	r3, r7, #56
	ldr	r2, [r3]
	add	r3, r7, #60
	str	r2, [r3]
	ldr	r2, [r7, #400]
	ldr	r3, [r7, #380]
	cmp	r2, r3
	bcs	.L180
	add	r2, r7, #60
	add	r3, r7, #56
	ldr	r0, [r7, #400]
	mov	r1, r2
	mov	r2, r3
	bl	ft_conic_is_small_enough(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L180
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L181
	add	r3, r7, #60
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
.L181:
	ldr	r0, [r7, #400]
	bl	ft_conic_split(PLT)
	ldr	r3, [r7, #400]
	adds	r3, r3, #16
	str	r3, [r7, #400]
	b	.L179
.L180:
	ldrb	r3, [r7, #399]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L182
	movs	r3, #0
	strb	r3, [r7, #399]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L183
	add	r3, r7, #60
	ldr	r3, [r3]
	add	r2, r7, #12
	ldr	r0, [r2]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroker_subpath_start(PLT)
	str	r0, [r7, #404]
	b	.L185
.L183:
	add	r3, r7, #60
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r0, [r3]
	movs	r1, #0
	bl	ft_stroker_process_corner(PLT)
	str	r0, [r7, #404]
	b	.L185
.L182:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3]
	add	r3, r7, #60
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	mov	r3, r0
	cmp	r3, #491520
	ble	.L185
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #400]
	adds	r3, r3, #8
	adds	r2, r2, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #60
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #48]
	add	r3, r7, #12
	ldr	r0, [r3]
	movs	r1, #0
	bl	ft_stroker_process_corner(PLT)
	str	r0, [r7, #404]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #52]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #48]
.L185:
	ldr	r3, [r7, #404]
	cmp	r3, #0
	beq	.L186
	b	.L177
.L186:
	movs	r3, #0
	str	r3, [r7, #392]
	add	r3, r7, #60
	ldr	r2, [r3]
	add	r3, r7, #56
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #376]
	add	r3, r7, #60
	ldr	r2, [r3]
	ldr	r3, [r7, #376]
	add	r3, r3, r2
	str	r3, [r7, #372]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #60]
	ldr	r0, [r7, #376]
	bl	FT_Cos(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #368]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L188
	ldr	r3, [r7, #400]
	ldr	r2, [r3]
	ldr	r3, [r7, #400]
	adds	r3, r3, #16
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #400]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #400]
	adds	r3, r3, #16
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	str	r0, [r7, #392]
.L188:
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #64
	str	r3, [r7, #388]
	movs	r3, #0
	str	r3, [r7, #384]
	b	.L189
.L199:
	ldr	r2, [r7, #384]
	movs	r3, #0
	movt	r3, 65356
	mul	r3, r3, r2
	add	r3, r3, #5898240
	str	r3, [r7, #364]
	ldr	r2, [r7, #372]
	ldr	r3, [r7, #364]
	add	r3, r3, r2
	add	r2, r7, #48
	mov	r0, r2
	ldr	r1, [r7, #368]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	add	r3, r7, #48
	ldr	r2, [r3]
	ldr	r3, [r7, #400]
	adds	r3, r3, #8
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #48
	str	r2, [r3]
	add	r3, r7, #48
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #400]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	add	r3, r7, #48
	str	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #60]
	add	r3, r7, #56
	ldr	r1, [r3]
	ldr	r3, [r7, #364]
	add	r3, r3, r1
	add	r1, r7, #40
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	add	r3, r7, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #400]
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #40
	str	r2, [r3]
	add	r3, r7, #40
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #400]
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	add	r3, r7, #40
	str	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L190
	ldr	r3, [r7, #388]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #388]
	ldr	r3, [r3]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #40
	ldr	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	subs	r2, r2, r3
	add	r3, r7, #40
	ldr	r1, [r3, #4]
	add	r3, r7, #32
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	str	r0, [r7, #360]
	ldr	r0, [r7, #392]
	ldr	r1, [r7, #360]
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	mov	r3, r0
	cmp	r3, #5898240
	ble	.L190
	ldr	r3, [r7, #400]
	adds	r3, r3, #16
	ldr	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #400]
	adds	r3, r3, #16
	ldr	r1, [r3, #4]
	add	r3, r7, #32
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	str	r0, [r7, #356]
	ldr	r3, [r7, #400]
	ldr	r2, [r3]
	add	r3, r7, #40
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #400]
	ldr	r1, [r3, #4]
	add	r3, r7, #40
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	str	r0, [r7, #352]
	add	r3, r7, #40
	ldr	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	subs	r2, r2, r3
	add	r3, r7, #24
	str	r2, [r3]
	add	r3, r7, #40
	ldr	r2, [r3, #4]
	add	r3, r7, #32
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	add	r3, r7, #24
	str	r2, [r3, #4]
	add	r3, r7, #24
	mov	r0, r3
	bl	FT_Vector_Length(PLT)
	str	r0, [r7, #348]
	ldr	r2, [r7, #360]
	ldr	r3, [r7, #352]
	subs	r3, r2, r3
	mov	r0, r3
	bl	FT_Sin(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	str	r0, [r7, #344]
	ldr	r2, [r7, #356]
	ldr	r3, [r7, #352]
	subs	r3, r2, r3
	mov	r0, r3
	bl	FT_Sin(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	str	r0, [r7, #340]
	ldr	r0, [r7, #348]
	ldr	r1, [r7, #344]
	ldr	r2, [r7, #340]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #336]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #336]
	ldr	r2, [r7, #356]
	bl	FT_Vector_From_Polar(PLT)
	add	r3, r7, #16
	ldr	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #16
	str	r2, [r3]
	add	r3, r7, #16
	ldr	r2, [r3, #4]
	add	r3, r7, #32
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	add	r3, r7, #16
	str	r2, [r3, #4]
	ldr	r3, [r7, #388]
	movs	r2, #0
	strb	r2, [r3, #16]
	add	r3, r7, #16
	ldr	r0, [r7, #388]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #404]
	ldr	r3, [r7, #404]
	cmp	r3, #0
	beq	.L192
	b	.L193
.L192:
	add	r3, r7, #40
	ldr	r0, [r7, #388]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #404]
	ldr	r3, [r7, #404]
	cmp	r3, #0
	beq	.L194
	b	.L193
.L194:
	add	r2, r7, #48
	add	r3, r7, #32
	ldr	r0, [r7, #388]
	mov	r1, r2
	mov	r2, r3
	bl	ft_stroke_border_conicto(PLT)
	str	r0, [r7, #404]
	ldr	r3, [r7, #404]
	cmp	r3, #0
	beq	.L195
	b	.L193
.L195:
	add	r3, r7, #40
	ldr	r0, [r7, #388]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #404]
	ldr	r3, [r7, #404]
	cmp	r3, #0
	beq	.L197
	nop
.L193:
	b	.L177
.L190:
	add	r2, r7, #48
	add	r3, r7, #40
	ldr	r0, [r7, #388]
	mov	r1, r2
	mov	r2, r3
	bl	ft_stroke_border_conicto(PLT)
	str	r0, [r7, #404]
	ldr	r3, [r7, #404]
	cmp	r3, #0
	beq	.L197
	nop
	b	.L177
.L197:
	ldr	r3, [r7, #384]
	adds	r3, r3, #1
	str	r3, [r7, #384]
	ldr	r3, [r7, #388]
	adds	r3, r3, #32
	str	r3, [r7, #388]
.L189:
	ldr	r3, [r7, #384]
	cmp	r3, #1
	ble	.L199
	ldr	r3, [r7, #400]
	subs	r3, r3, #16
	str	r3, [r7, #400]
	add	r3, r7, #56
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
.L179:
	add	r3, r7, #64
	ldr	r2, [r7, #400]
	cmp	r2, r3
	bcs	.L200
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r2, r7, #4
	ldr	r2, [r2]
	adds	r3, r3, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L177:
	ldr	r3, [r7, #404]
	mov	r0, r3
	add	r7, r7, #412
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stroker_ConicTo, .-FT_Stroker_ConicTo
	.section	.text.FT_Stroker_CubicTo,"ax",%progbits
	.align	2
	.global	FT_Stroker_CubicTo
	.thumb
	.thumb_func
	.type	FT_Stroker_CubicTo, %function
FT_Stroker_CubicTo:
	@ args = 0, pretend = 0, frame = 456
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #460
	add	r7, sp, #0
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	movs	r3, #0
	str	r3, [r7, #452]
	add	r3, r7, #76
	add	r3, r3, #256
	str	r3, [r7, #428]
	movs	r3, #1
	strb	r3, [r7, #447]
	add	r3, r7, #12
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L203
	add	r3, r7, #8
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L203
	adds	r3, r7, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L203
	mov	r3, r7
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L204
.L203:
	movs	r3, #6
	str	r3, [r7, #452]
	b	.L205
.L204:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L206
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L206
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L206
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #12]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L206
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L206
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L206
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L206
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L206
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3]
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L206
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3]
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L206
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #-1
	blt	.L206
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	mov	r3, r7
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	cmp	r3, #1
	bgt	.L206
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r2, r7
	ldr	r2, [r2]
	adds	r3, r3, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L205
.L206:
	add	r3, r7, #76
	str	r3, [r7, #448]
	ldr	r3, [r7, #448]
	mov	r2, r7
	ldr	r2, [r2]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #448]
	adds	r3, r3, #8
	adds	r2, r7, #4
	ldr	r2, [r2]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #448]
	adds	r3, r3, #16
	add	r2, r7, #8
	ldr	r2, [r2]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #448]
	adds	r3, r3, #24
	add	r2, r7, #12
	ldr	r2, [r2]
	adds	r2, r2, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L207
.L228:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3]
	add	r3, r7, #68
	str	r2, [r3]
	add	r3, r7, #68
	ldr	r2, [r3]
	add	r3, r7, #64
	str	r2, [r3]
	add	r3, r7, #64
	ldr	r2, [r3]
	add	r3, r7, #72
	str	r2, [r3]
	ldr	r2, [r7, #448]
	ldr	r3, [r7, #428]
	cmp	r2, r3
	bcs	.L208
	add	r1, r7, #72
	add	r2, r7, #68
	add	r3, r7, #64
	ldr	r0, [r7, #448]
	bl	ft_cubic_is_small_enough(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L208
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L209
	add	r3, r7, #72
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
.L209:
	ldr	r0, [r7, #448]
	bl	ft_cubic_split(PLT)
	ldr	r3, [r7, #448]
	adds	r3, r3, #24
	str	r3, [r7, #448]
	b	.L207
.L208:
	ldrb	r3, [r7, #447]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L210
	movs	r3, #0
	strb	r3, [r7, #447]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L211
	add	r3, r7, #72
	ldr	r3, [r3]
	add	r2, r7, #12
	ldr	r0, [r2]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroker_subpath_start(PLT)
	str	r0, [r7, #452]
	b	.L213
.L211:
	add	r3, r7, #72
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r0, [r3]
	movs	r1, #0
	bl	ft_stroker_process_corner(PLT)
	str	r0, [r7, #452]
	b	.L213
.L210:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3]
	add	r3, r7, #72
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	mov	r3, r0
	cmp	r3, #368640
	ble	.L213
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #448]
	adds	r3, r3, #8
	adds	r2, r2, #24
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #72
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #48]
	add	r3, r7, #12
	ldr	r0, [r3]
	movs	r1, #0
	bl	ft_stroker_process_corner(PLT)
	str	r0, [r7, #452]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #52]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #48]
.L213:
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L214
	b	.L205
.L214:
	movs	r3, #0
	str	r3, [r7, #440]
	add	r3, r7, #72
	ldr	r2, [r3]
	add	r3, r7, #68
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #424]
	add	r3, r7, #68
	ldr	r2, [r3]
	add	r3, r7, #64
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #420]
	add	r3, r7, #72
	ldr	r2, [r3]
	add	r3, r7, #68
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	ft_angle_mean(PLT)
	str	r0, [r7, #416]
	add	r3, r7, #68
	ldr	r2, [r3]
	add	r3, r7, #64
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	ft_angle_mean(PLT)
	str	r0, [r7, #412]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #60]
	ldr	r0, [r7, #424]
	bl	FT_Cos(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #408]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r4, [r3, #60]
	ldr	r0, [r7, #420]
	bl	FT_Cos(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #404]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L216
	ldr	r3, [r7, #448]
	ldr	r2, [r3]
	ldr	r3, [r7, #448]
	adds	r3, r3, #24
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #448]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #448]
	adds	r3, r3, #24
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	str	r0, [r7, #440]
.L216:
	add	r3, r7, #12
	ldr	r3, [r3]
	adds	r3, r3, #64
	str	r3, [r7, #436]
	movs	r3, #0
	str	r3, [r7, #432]
	b	.L217
.L227:
	ldr	r2, [r7, #432]
	movs	r3, #0
	movt	r3, 65356
	mul	r3, r3, r2
	add	r3, r3, #5898240
	str	r3, [r7, #400]
	ldr	r2, [r7, #416]
	ldr	r3, [r7, #400]
	add	r3, r3, r2
	add	r2, r7, #56
	mov	r0, r2
	ldr	r1, [r7, #408]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	add	r3, r7, #56
	ldr	r2, [r3]
	ldr	r3, [r7, #448]
	adds	r3, r3, #16
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #56
	str	r2, [r3]
	add	r3, r7, #56
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #448]
	adds	r3, r3, #16
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	add	r3, r7, #56
	str	r2, [r3, #4]
	ldr	r2, [r7, #412]
	ldr	r3, [r7, #400]
	add	r3, r3, r2
	add	r2, r7, #48
	mov	r0, r2
	ldr	r1, [r7, #404]
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	add	r3, r7, #48
	ldr	r2, [r3]
	ldr	r3, [r7, #448]
	adds	r3, r3, #8
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #48
	str	r2, [r3]
	add	r3, r7, #48
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #448]
	adds	r3, r3, #8
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	add	r3, r7, #48
	str	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r3, #60]
	add	r3, r7, #64
	ldr	r1, [r3]
	ldr	r3, [r7, #400]
	add	r3, r3, r1
	add	r1, r7, #40
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Vector_From_Polar(PLT)
	add	r3, r7, #40
	ldr	r2, [r3]
	ldr	r3, [r7, #448]
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #40
	str	r2, [r3]
	add	r3, r7, #40
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #448]
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	add	r3, r7, #40
	str	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldrb	r3, [r3, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L218
	ldr	r3, [r7, #436]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #436]
	ldr	r3, [r3]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #40
	ldr	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	subs	r2, r2, r3
	add	r3, r7, #40
	ldr	r1, [r3, #4]
	add	r3, r7, #32
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	str	r0, [r7, #396]
	ldr	r0, [r7, #440]
	ldr	r1, [r7, #396]
	bl	FT_Angle_Diff(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	mov	r3, r0
	cmp	r3, #5898240
	ble	.L218
	ldr	r3, [r7, #448]
	adds	r3, r3, #24
	ldr	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #448]
	adds	r3, r3, #24
	ldr	r1, [r3, #4]
	add	r3, r7, #32
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	str	r0, [r7, #392]
	ldr	r3, [r7, #448]
	ldr	r2, [r3]
	add	r3, r7, #40
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #448]
	ldr	r1, [r3, #4]
	add	r3, r7, #40
	ldr	r3, [r3, #4]
	subs	r3, r1, r3
	mov	r0, r2
	mov	r1, r3
	bl	FT_Atan2(PLT)
	str	r0, [r7, #388]
	add	r3, r7, #40
	ldr	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	subs	r2, r2, r3
	add	r3, r7, #24
	str	r2, [r3]
	add	r3, r7, #40
	ldr	r2, [r3, #4]
	add	r3, r7, #32
	ldr	r3, [r3, #4]
	subs	r2, r2, r3
	add	r3, r7, #24
	str	r2, [r3, #4]
	add	r3, r7, #24
	mov	r0, r3
	bl	FT_Vector_Length(PLT)
	str	r0, [r7, #384]
	ldr	r2, [r7, #396]
	ldr	r3, [r7, #388]
	subs	r3, r2, r3
	mov	r0, r3
	bl	FT_Sin(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	str	r0, [r7, #380]
	ldr	r2, [r7, #392]
	ldr	r3, [r7, #388]
	subs	r3, r2, r3
	mov	r0, r3
	bl	FT_Sin(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	ft_pos_abs(PLT)
	str	r0, [r7, #376]
	ldr	r0, [r7, #384]
	ldr	r1, [r7, #380]
	ldr	r2, [r7, #376]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #372]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #372]
	ldr	r2, [r7, #392]
	bl	FT_Vector_From_Polar(PLT)
	add	r3, r7, #16
	ldr	r2, [r3]
	add	r3, r7, #32
	ldr	r3, [r3]
	add	r2, r2, r3
	add	r3, r7, #16
	str	r2, [r3]
	add	r3, r7, #16
	ldr	r2, [r3, #4]
	add	r3, r7, #32
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	add	r3, r7, #16
	str	r2, [r3, #4]
	ldr	r3, [r7, #436]
	movs	r2, #0
	strb	r2, [r3, #16]
	add	r3, r7, #16
	ldr	r0, [r7, #436]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L220
	b	.L221
.L220:
	add	r3, r7, #40
	ldr	r0, [r7, #436]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L222
	b	.L221
.L222:
	add	r1, r7, #48
	add	r2, r7, #56
	add	r3, r7, #32
	ldr	r0, [r7, #436]
	bl	ft_stroke_border_cubicto(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L223
	b	.L221
.L223:
	add	r3, r7, #40
	ldr	r0, [r7, #436]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroke_border_lineto(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L225
	nop
.L221:
	b	.L205
.L218:
	add	r1, r7, #56
	add	r2, r7, #48
	add	r3, r7, #40
	ldr	r0, [r7, #436]
	bl	ft_stroke_border_cubicto(PLT)
	str	r0, [r7, #452]
	ldr	r3, [r7, #452]
	cmp	r3, #0
	beq	.L225
	nop
	b	.L205
.L225:
	ldr	r3, [r7, #432]
	adds	r3, r3, #1
	str	r3, [r7, #432]
	ldr	r3, [r7, #436]
	adds	r3, r3, #32
	str	r3, [r7, #436]
.L217:
	ldr	r3, [r7, #432]
	cmp	r3, #1
	ble	.L227
	ldr	r3, [r7, #448]
	subs	r3, r3, #24
	str	r3, [r7, #448]
	add	r3, r7, #64
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
.L207:
	add	r3, r7, #76
	ldr	r2, [r7, #448]
	cmp	r2, r3
	bcs	.L228
	add	r3, r7, #12
	ldr	r3, [r3]
	mov	r2, r7
	ldr	r2, [r2]
	adds	r3, r3, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
.L205:
	ldr	r3, [r7, #452]
	mov	r0, r3
	add	r7, r7, #460
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Stroker_CubicTo, .-FT_Stroker_CubicTo
	.section	.text.FT_Stroker_BeginSubPath,"ax",%progbits
	.align	2
	.global	FT_Stroker_BeginSubPath
	.thumb
	.thumb_func
	.type	FT_Stroker_BeginSubPath, %function
FT_Stroker_BeginSubPath:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L231
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L232
.L231:
	movs	r3, #6
	b	.L233
.L232:
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	adds	r3, r3, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #7]
	strb	r2, [r3, #21]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L234
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L235
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #44]
	cmp	r3, #0
	bne	.L235
.L234:
	movs	r3, #1
	b	.L236
.L235:
	movs	r3, #0
.L236:
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #40]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	adds	r3, r3, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	movs	r3, #0
.L233:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Stroker_BeginSubPath, .-FT_Stroker_BeginSubPath
	.section	.text.ft_stroker_add_reverse_left,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_stroker_add_reverse_left, %function
ft_stroker_add_reverse_left:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ble	.L238
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	ft_stroke_border_grow(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L239
	b	.L238
.L239:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	subs	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #28]
	b	.L240
.L244:
	ldr	r3, [r7, #40]
	ldr	r2, [r7, #32]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #28]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #36]
	strb	r2, [r3]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L241
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	bic	r3, r3, #12
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
	b	.L242
.L241:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #12
	strb	r3, [r7, #15]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #4
	beq	.L243
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #8
	bne	.L242
.L243:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	eor	r3, r3, #12
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3]
.L242:
	ldr	r3, [r7, #32]
	subs	r3, r3, #8
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #40]
	adds	r3, r3, #8
	str	r3, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L240:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bls	.L244
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	mov	r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	movs	r2, #0
	strb	r2, [r3, #16]
	ldr	r3, [r7, #20]
	movs	r2, #0
	strb	r2, [r3, #16]
.L238:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_stroker_add_reverse_left, .-ft_stroker_add_reverse_left
	.section	.text.FT_Stroker_EndSubPath,"ax",%progbits
	.align	2
	.global	FT_Stroker_EndSubPath
	.thumb
	.thumb_func
	.type	FT_Stroker_EndSubPath, %function
FT_Stroker_EndSubPath:
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
	bne	.L247
	movs	r3, #6
	str	r3, [r7, #20]
	b	.L248
.L247:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L249
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroker_cap(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L250
	b	.L248
.L250:
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	ft_stroker_add_reverse_left(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L251
	b	.L248
.L251:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #4]
	adds	r3, r3, #8
	adds	r2, r2, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	add	r3, r3, #11796480
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	ft_stroker_cap(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L252
	b	.L248
.L252:
	ldr	r0, [r7, #16]
	movs	r1, #0
	bl	ft_stroke_border_close(PLT)
	b	.L248
.L249:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	bne	.L253
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	beq	.L254
.L253:
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	FT_Stroker_LineTo(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L254
	b	.L248
.L254:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	mov	r1, r3
	bl	FT_Angle_Diff(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L255
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #31
	uxtb	r3, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	ft_stroker_inside(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L256
	b	.L248
.L256:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #36]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	ft_stroker_outside(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L255
	b	.L248
.L255:
	ldr	r3, [r7, #4]
	adds	r3, r3, #64
	mov	r0, r3
	movs	r1, #0
	bl	ft_stroke_border_close(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	movs	r1, #1
	bl	ft_stroke_border_close(PLT)
.L248:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_EndSubPath, .-FT_Stroker_EndSubPath
	.section	.text.FT_Stroker_GetBorderCounts,"ax",%progbits
	.align	2
	.global	FT_Stroker_GetBorderCounts
	.thumb
	.thumb_func
	.type	FT_Stroker_GetBorderCounts, %function
FT_Stroker_GetBorderCounts:
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
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L259
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bls	.L260
.L259:
	movs	r3, #6
	str	r3, [r7, #28]
	b	.L261
.L260:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	lsls	r3, r3, #5
	ldr	r2, [r7, #12]
	adds	r1, r2, r3
	add	r2, r7, #24
	add	r3, r7, #20
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	ft_stroke_border_get_counts(PLT)
	str	r0, [r7, #28]
.L261:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L262
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L262:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L263
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	str	r2, [r3]
.L263:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_GetBorderCounts, .-FT_Stroker_GetBorderCounts
	.section	.text.FT_Stroker_GetCounts,"ax",%progbits
	.align	2
	.global	FT_Stroker_GetCounts
	.thumb
	.thumb_func
	.type	FT_Stroker_GetCounts, %function
FT_Stroker_GetCounts:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L266
	movs	r3, #6
	str	r3, [r7, #36]
	b	.L267
.L266:
	ldr	r3, [r7, #12]
	add	r1, r3, #64
	add	r2, r7, #32
	add	r3, r7, #28
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	ft_stroke_border_get_counts(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L268
	b	.L267
.L268:
	ldr	r3, [r7, #12]
	add	r1, r3, #96
	add	r2, r7, #24
	add	r3, r7, #20
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	ft_stroke_border_get_counts(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L269
	b	.L267
.L269:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #40]
.L267:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L270
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #44]
	str	r2, [r3]
.L270:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L271
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #40]
	str	r2, [r3]
.L271:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_GetCounts, .-FT_Stroker_GetCounts
	.section	.text.FT_Stroker_ExportBorder,"ax",%progbits
	.align	2
	.global	FT_Stroker_ExportBorder
	.thumb
	.thumb_func
	.type	FT_Stroker_ExportBorder, %function
FT_Stroker_ExportBorder:
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
	beq	.L274
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L275
.L274:
	b	.L273
.L275:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L277
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bne	.L273
.L277:
	ldr	r3, [r7, #8]
	adds	r3, r3, #2
	lsls	r3, r3, #5
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldrb	r3, [r3, #28]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L273
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	bl	ft_stroke_border_export(PLT)
.L273:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_ExportBorder, .-FT_Stroker_ExportBorder
	.section	.text.FT_Stroker_Export,"ax",%progbits
	.align	2
	.global	FT_Stroker_Export
	.thumb
	.thumb_func
	.type	FT_Stroker_Export, %function
FT_Stroker_Export:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	ldr	r2, [r7]
	bl	FT_Stroker_ExportBorder(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	ldr	r2, [r7]
	bl	FT_Stroker_ExportBorder(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_Export, .-FT_Stroker_Export
	.section	.text.FT_Stroker_ParseOutline,"ax",%progbits
	.align	2
	.global	FT_Stroker_ParseOutline
	.thumb
	.thumb_func
	.type	FT_Stroker_ParseOutline, %function
FT_Stroker_ParseOutline:
	@ args = 0, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #120
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L280
	movs	r3, #20
	b	.L313
.L280:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L282
	movs	r3, #6
	b	.L313
.L282:
	ldr	r0, [r7, #12]
	bl	FT_Stroker_Rewind(PLT)
	movs	r3, #0
	str	r3, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #100]
	b	.L283
.L312:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #100]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #92]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #92]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #112]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bhi	.L284
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #96]
	b	.L285
.L284:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #64
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #92]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #80
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #72
	add	r2, r7, #64
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #96]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #96]
	add	r3, r3, r2
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #2
	bne	.L286
	b	.L287
.L286:
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bne	.L288
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #92]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L289
	add	r3, r7, #64
	add	r2, r7, #80
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #112]
	subs	r3, r3, #8
	str	r3, [r7, #112]
	b	.L290
.L289:
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
.L290:
	ldr	r3, [r7, #116]
	subs	r3, r3, #8
	str	r3, [r7, #116]
	ldr	r3, [r7, #108]
	subs	r3, r3, #1
	str	r3, [r7, #108]
.L288:
	add	r2, r7, #64
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stroker_BeginSubPath(PLT)
	str	r0, [r7, #104]
	ldr	r3, [r7, #104]
	cmp	r3, #0
	beq	.L291
	b	.L292
.L291:
	b	.L293
.L309:
	ldr	r3, [r7, #116]
	adds	r3, r3, #8
	str	r3, [r7, #116]
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L295
	cmp	r3, #1
	bne	.L314
	ldr	r3, [r7, #116]
	ldr	r3, [r3]
	str	r3, [r7, #56]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
	add	r3, r7, #56
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	FT_Stroker_LineTo(PLT)
	str	r0, [r7, #104]
	ldr	r3, [r7, #104]
	cmp	r3, #0
	beq	.L293
	b	.L292
.L295:
	ldr	r3, [r7, #116]
	ldr	r3, [r3]
	str	r3, [r7, #72]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #4]
	str	r3, [r7, #76]
.L298:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bcs	.L299
	ldr	r3, [r7, #116]
	adds	r3, r3, #8
	str	r3, [r7, #116]
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
	ldr	r3, [r7, #108]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	str	r3, [r7, #88]
	ldr	r2, [r7, #116]
	add	r3, r7, #48
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #88]
	cmp	r3, #1
	bne	.L300
	add	r2, r7, #72
	add	r3, r7, #48
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stroker_ConicTo(PLT)
	str	r0, [r7, #104]
	ldr	r3, [r7, #104]
	cmp	r3, #0
	beq	.L293
	b	.L292
.L300:
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bne	.L287
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
	add	r2, r7, #72
	add	r3, r7, #40
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stroker_ConicTo(PLT)
	str	r0, [r7, #104]
	ldr	r3, [r7, #104]
	cmp	r3, #0
	beq	.L304
	nop
	b	.L292
.L304:
	add	r3, r7, #72
	add	r2, r7, #48
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L298
.L299:
	add	r2, r7, #72
	add	r3, r7, #64
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stroker_ConicTo(PLT)
	str	r0, [r7, #104]
	b	.L305
.L314:
	ldr	r3, [r7, #116]
	add	r2, r3, #8
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bhi	.L287
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #2
	bne	.L287
	ldr	r3, [r7, #116]
	adds	r3, r3, #16
	str	r3, [r7, #116]
	ldr	r3, [r7, #108]
	adds	r3, r3, #2
	str	r3, [r7, #108]
	ldr	r2, [r7, #116]
	add	r3, r7, #32
	subs	r2, r2, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #116]
	add	r3, r7, #24
	subs	r2, r2, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bhi	.L307
	ldr	r2, [r7, #116]
	add	r3, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r1, r7, #32
	add	r2, r7, #24
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	bl	FT_Stroker_CubicTo(PLT)
	str	r0, [r7, #104]
	ldr	r3, [r7, #104]
	cmp	r3, #0
	beq	.L293
	b	.L292
.L307:
	add	r1, r7, #32
	add	r2, r7, #24
	add	r3, r7, #64
	ldr	r0, [r7, #12]
	bl	FT_Stroker_CubicTo(PLT)
	str	r0, [r7, #104]
	b	.L305
.L293:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #112]
	cmp	r2, r3
	bcc	.L309
.L305:
	ldr	r3, [r7, #104]
	cmp	r3, #0
	beq	.L310
	b	.L292
.L310:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L311
	ldr	r0, [r7, #12]
	bl	FT_Stroker_EndSubPath(PLT)
	str	r0, [r7, #104]
	ldr	r3, [r7, #104]
	cmp	r3, #0
	beq	.L311
	b	.L292
.L311:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #96]
.L285:
	ldr	r3, [r7, #100]
	adds	r3, r3, #1
	str	r3, [r7, #100]
.L283:
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #100]
	cmp	r2, r3
	bgt	.L312
	movs	r3, #0
	b	.L313
.L292:
	ldr	r3, [r7, #104]
	b	.L313
.L287:
	movs	r3, #20
.L313:
	mov	r0, r3
	adds	r7, r7, #120
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Stroker_ParseOutline, .-FT_Stroker_ParseOutline
	.section	.text.FT_Glyph_Stroke,"ax",%progbits
	.align	2
	.global	FT_Glyph_Stroke
	.thumb
	.thumb_func
	.type	FT_Glyph_Stroke, %function
FT_Glyph_Stroke:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r1, .L326
.LPIC0:
	add	r1, pc
	movs	r3, #6
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L316
	b	.L317
.L316:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L317
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #4]
	ldr	r3, .L326+4
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L317
	add	r3, r7, #24
	ldr	r0, [r7, #40]
	mov	r1, r3
	bl	FT_Glyph_Copy(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L317
	ldr	r3, [r7, #24]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r3, r3, #20
	str	r3, [r7, #28]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #28]
	movs	r2, #0
	bl	FT_Stroker_ParseOutline(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L319
	b	.L324
.L319:
	add	r2, r7, #20
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Stroker_GetCounts(PLT)
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	FT_Outline_Done(PLT)
	ldr	r3, [r7, #40]
	ldr	r1, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #28]
	bl	FT_Outline_New(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L321
	nop
	b	.L324
.L321:
	ldr	r3, [r7, #28]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #28]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #28]
	bl	FT_Stroker_Export(PLT)
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L323
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_Done_Glyph(PLT)
.L323:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #40]
	str	r2, [r3]
	b	.L317
.L324:
	ldr	r0, [r7, #40]
	bl	FT_Done_Glyph(PLT)
	movs	r3, #0
	str	r3, [r7, #40]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L317
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
.L317:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L327:
	.align	2
.L326:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	ft_outline_glyph_class(GOT)
	.size	FT_Glyph_Stroke, .-FT_Glyph_Stroke
	.section	.text.FT_Glyph_StrokeBorder,"ax",%progbits
	.align	2
	.global	FT_Glyph_StrokeBorder
	.thumb
	.thumb_func
	.type	FT_Glyph_StrokeBorder, %function
FT_Glyph_StrokeBorder:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	strb	r2, [r7, #7]
	strb	r3, [r7, #6]
	ldr	r1, .L341
.LPIC1:
	add	r1, pc
	movs	r3, #6
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #128]
	str	r3, [r7, #40]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L329
	b	.L330
.L329:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L330
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #4]
	ldr	r3, .L341+4
	ldr	r3, [r1, r3]
	cmp	r2, r3
	bne	.L330
	add	r3, r7, #28
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	FT_Glyph_Copy(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L330
	ldr	r3, [r7, #28]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	adds	r3, r3, #20
	str	r3, [r7, #32]
	ldr	r0, [r7, #32]
	bl	FT_Outline_GetOutsideBorder(PLT)
	str	r0, [r7, #48]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L332
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L333
	movs	r3, #1
	str	r3, [r7, #48]
	b	.L332
.L333:
	movs	r3, #0
	str	r3, [r7, #48]
.L332:
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #32]
	movs	r2, #0
	bl	FT_Stroker_ParseOutline(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L334
	b	.L339
.L334:
	add	r2, r7, #24
	add	r3, r7, #20
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #48]
	bl	FT_Stroker_GetBorderCounts(PLT)
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	FT_Outline_Done(PLT)
	ldr	r3, [r7, #44]
	ldr	r1, [r3]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #32]
	bl	FT_Outline_New(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	beq	.L336
	nop
	b	.L339
.L336:
	ldr	r3, [r7, #32]
	movs	r2, #0
	strh	r2, [r3, #2]	@ movhi
	ldr	r3, [r7, #32]
	movs	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #32]
	bl	FT_Stroker_ExportBorder(PLT)
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L338
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_Done_Glyph(PLT)
.L338:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #44]
	str	r2, [r3]
	b	.L330
.L339:
	ldr	r0, [r7, #44]
	bl	FT_Done_Glyph(PLT)
	movs	r3, #0
	str	r3, [r7, #44]
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L330
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
.L330:
	ldr	r3, [r7, #52]
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L342:
	.align	2
.L341:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	ft_outline_glyph_class(GOT)
	.size	FT_Glyph_StrokeBorder, .-FT_Glyph_StrokeBorder
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
