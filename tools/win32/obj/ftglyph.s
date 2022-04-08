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
	.file	"ftglyph.c"
	.section	.text.ft_bitmap_glyph_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_bitmap_glyph_init, %function
ft_bitmap_glyph_init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #72]
	movw	r3, #29811
	movt	r3, 25193
	cmp	r2, r3
	beq	.L2
	movs	r3, #18
	str	r3, [r7, #20]
	b	.L3
.L2:
	ldr	r3, [r7]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #16]
	str	r2, [r3, #20]
	ldr	r3, [r7]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #16]
	str	r2, [r3, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #156]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L4
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	add	r4, r2, #28
	add	r5, r3, #76
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r3, [r7]
	ldr	r3, [r3, #156]
	ldr	r2, [r7]
	ldr	r2, [r2, #156]
	ldr	r2, [r2, #4]
	bic	r2, r2, #1
	str	r2, [r3, #4]
	b	.L3
.L4:
	ldr	r3, [r7, #16]
	adds	r3, r3, #28
	mov	r0, r3
	bl	FT_Bitmap_Init(PLT)
	ldr	r3, [r7]
	add	r2, r3, #76
	ldr	r3, [r7, #16]
	adds	r3, r3, #28
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Bitmap_Copy(PLT)
	str	r0, [r7, #20]
.L3:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	ft_bitmap_glyph_init, .-ft_bitmap_glyph_init
	.section	.text.ft_bitmap_glyph_copy,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_bitmap_glyph_copy, %function
ft_bitmap_glyph_copy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #16]
	add	r2, r3, #28
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	FT_Bitmap_Copy(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_bitmap_glyph_copy, .-ft_bitmap_glyph_copy
	.section	.text.ft_bitmap_glyph_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_bitmap_glyph_done, %function
ft_bitmap_glyph_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	FT_Bitmap_Done(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_bitmap_glyph_done, .-ft_bitmap_glyph_done
	.section	.text.ft_bitmap_glyph_bbox,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_bitmap_glyph_bbox, %function
ft_bitmap_glyph_bbox:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	lsls	r2, r3, #6
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	lsls	r3, r3, #6
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	lsls	r2, r3, #6
	ldr	r3, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #28]
	lsls	r3, r3, #6
	subs	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3, #4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ft_bitmap_glyph_bbox, .-ft_bitmap_glyph_bbox
	.global	ft_bitmap_glyph_class
	.section	.data.rel.ro.local.ft_bitmap_glyph_class,"aw",%progbits
	.align	2
	.type	ft_bitmap_glyph_class, %object
	.size	ft_bitmap_glyph_class, 32
ft_bitmap_glyph_class:
	.word	52
	.word	1651078259
	.word	ft_bitmap_glyph_init
	.word	ft_bitmap_glyph_done
	.word	ft_bitmap_glyph_copy
	.word	0
	.word	ft_bitmap_glyph_bbox
	.word	0
	.section	.text.ft_outline_glyph_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_outline_glyph_init, %function
ft_outline_glyph_init:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	adds	r3, r3, #108
	str	r3, [r7, #16]
	ldr	r3, [r7, #24]
	adds	r3, r3, #20
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #72]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r2, r3
	beq	.L11
	movs	r3, #18
	str	r3, [r7, #28]
	b	.L12
.L11:
	ldr	r3, [r7, #16]
	ldrh	r3, [r3, #2]
	sxth	r1, r3
	ldr	r3, [r7, #16]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #24]
	adds	r3, r3, #20
	ldr	r0, [r7, #20]
	bl	FT_Outline_New(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L13
	b	.L12
.L13:
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #12]
	bl	FT_Outline_Copy(PLT)
.L12:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_outline_glyph_init, .-ft_outline_glyph_init
	.section	.text.ft_outline_glyph_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_outline_glyph_done, %function
ft_outline_glyph_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Done(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_outline_glyph_done, .-ft_outline_glyph_done
	.section	.text.ft_outline_glyph_copy,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_outline_glyph_copy, %function
ft_outline_glyph_copy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #22]
	sxth	r1, r3
	ldr	r3, [r7, #20]
	ldrh	r3, [r3, #20]
	sxth	r2, r3
	ldr	r3, [r7, #16]
	adds	r3, r3, #20
	ldr	r0, [r7, #12]
	bl	FT_Outline_New(PLT)
	str	r0, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L17
	ldr	r3, [r7, #20]
	add	r2, r3, #20
	ldr	r3, [r7, #16]
	adds	r3, r3, #20
	mov	r0, r2
	mov	r1, r3
	bl	FT_Outline_Copy(PLT)
.L17:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_outline_glyph_copy, .-ft_outline_glyph_copy
	.section	.text.ft_outline_glyph_transform,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_outline_glyph_transform, %function
ft_outline_glyph_transform:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L20
	ldr	r3, [r7, #20]
	adds	r3, r3, #20
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_Outline_Transform(PLT)
.L20:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L19
	ldr	r3, [r7, #20]
	add	r1, r3, #20
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Translate(PLT)
.L19:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_outline_glyph_transform, .-ft_outline_glyph_transform
	.section	.text.ft_outline_glyph_bbox,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_outline_glyph_bbox, %function
ft_outline_glyph_bbox:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #20
	mov	r0, r3
	ldr	r1, [r7]
	bl	FT_Outline_Get_CBox(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_outline_glyph_bbox, .-ft_outline_glyph_bbox
	.section	.text.ft_outline_glyph_prepare,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_outline_glyph_prepare, %function
ft_outline_glyph_prepare:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r2, [r7]
	movw	r3, #29804
	movt	r3, 28533
	str	r3, [r2, #72]
	ldr	r2, [r7]
	ldr	r3, [r7, #12]
	add	r4, r2, #108
	add	r5, r3, #20
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	ldr	r3, [r7]
	ldr	r3, [r3, #124]
	bic	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3, #124]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	ft_outline_glyph_prepare, .-ft_outline_glyph_prepare
	.global	ft_outline_glyph_class
	.section	.data.rel.ro.local.ft_outline_glyph_class,"aw",%progbits
	.align	2
	.type	ft_outline_glyph_class, %object
	.size	ft_outline_glyph_class, 32
ft_outline_glyph_class:
	.word	40
	.word	1869968492
	.word	ft_outline_glyph_init
	.word	ft_outline_glyph_done
	.word	ft_outline_glyph_copy
	.word	ft_outline_glyph_transform
	.word	ft_outline_glyph_bbox
	.word	ft_outline_glyph_prepare
	.section	.text.ft_new_glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_new_glyph, %function
ft_new_glyph:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	add	r3, r7, #20
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L26
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
.L26:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_new_glyph, .-ft_new_glyph
	.section	.text.FT_Glyph_Copy,"ax",%progbits
	.align	2
	.global	FT_Glyph_Copy
	.thumb
	.thumb_func
	.type	FT_Glyph_Copy, %function
FT_Glyph_Copy:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L29
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L30
.L29:
	movs	r3, #6
	str	r3, [r7, #20]
	b	.L31
.L30:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L32
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L33
.L32:
	movs	r3, #6
	str	r3, [r7, #20]
	b	.L31
.L33:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	add	r3, r7, #12
	mov	r0, r2
	ldr	r1, [r7, #16]
	mov	r2, r3
	bl	ft_new_glyph(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L34
	b	.L31
.L34:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	adds	r3, r3, #12
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L35
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	ldr	r0, [r7, #4]
	mov	r1, r2
	blx	r3
	str	r0, [r7, #20]
.L35:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L36
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	FT_Done_Glyph(PLT)
	b	.L31
.L36:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3]
.L31:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Glyph_Copy, .-FT_Glyph_Copy
	.section	.text.FT_Get_Glyph,"ax",%progbits
	.align	2
	.global	FT_Get_Glyph
	.thumb
	.thumb_func
	.type	FT_Get_Glyph, %function
FT_Get_Glyph:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, .L50
.LPIC0:
	add	r2, pc
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L39
	movs	r3, #37
	b	.L49
.L39:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L41
	movs	r3, #6
	b	.L49
.L41:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #72]
	movw	r3, #29811
	movt	r3, 25193
	cmp	r1, r3
	bne	.L42
	ldr	r3, .L50+4
	ldr	r3, [r2, r3]
	str	r3, [r7, #24]
	b	.L43
.L42:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #72]
	movw	r3, #29804
	movt	r3, 28533
	cmp	r1, r3
	bne	.L44
	ldr	r3, .L50+8
	ldr	r3, [r2, r3]
	str	r3, [r7, #24]
	b	.L43
.L44:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #72]
	ldr	r0, [r7, #20]
	mov	r1, r3
	movs	r2, #0
	bl	FT_Lookup_Renderer(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L43
	ldr	r3, [r7, #16]
	adds	r3, r3, #20
	str	r3, [r7, #24]
.L43:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L45
	movs	r3, #18
	str	r3, [r7, #28]
	b	.L46
.L45:
	add	r3, r7, #12
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #24]
	mov	r2, r3
	bl	ft_new_glyph(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L47
	b	.L46
.L47:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #64]
	lsls	r2, r2, #10
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #68]
	lsls	r2, r2, #10
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #12]
	mov	r0, r2
	ldr	r1, [r7, #4]
	blx	r3
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L48
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	FT_Done_Glyph(PLT)
	b	.L46
.L48:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3]
.L46:
	ldr	r3, [r7, #28]
.L49:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L51:
	.align	2
.L50:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	ft_bitmap_glyph_class(GOT)
	.word	ft_outline_glyph_class(GOT)
	.size	FT_Get_Glyph, .-FT_Get_Glyph
	.section	.text.FT_Glyph_Transform,"ax",%progbits
	.align	2
	.global	FT_Glyph_Transform
	.thumb
	.thumb_func
	.type	FT_Glyph_Transform, %function
FT_Glyph_Transform:
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
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L54
.L53:
	movs	r3, #6
	str	r3, [r7, #20]
	b	.L55
.L54:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	blx	r3
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_Vector_Transform(PLT)
	b	.L55
.L56:
	movs	r3, #18
	str	r3, [r7, #20]
.L55:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Glyph_Transform, .-FT_Glyph_Transform
	.section	.text.FT_Glyph_Get_CBox,"ax",%progbits
	.align	2
	.global	FT_Glyph_Get_CBox
	.thumb
	.thumb_func
	.type	FT_Glyph_Get_CBox, %function
FT_Glyph_Get_CBox:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L60
	b	.L59
.L60:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L62
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L63
.L62:
	b	.L59
.L63:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L64
	b	.L59
.L64:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	blx	r3
	ldr	r3, [r7, #8]
	cmp	r3, #1
	beq	.L65
	ldr	r3, [r7, #8]
	cmp	r3, #3
	bne	.L66
.L65:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	bic	r2, r3, #63
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	bic	r2, r3, #63
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #63
	bic	r2, r3, #63
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	adds	r3, r3, #63
	bic	r2, r3, #63
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L66:
	ldr	r3, [r7, #8]
	cmp	r3, #2
	beq	.L67
	ldr	r3, [r7, #8]
	cmp	r3, #3
	bne	.L59
.L67:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	asrs	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	asrs	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	asrs	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	asrs	r2, r3, #6
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L59:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Glyph_Get_CBox, .-FT_Glyph_Get_CBox
	.section	.text.FT_Glyph_To_Bitmap,"ax",%progbits
	.align	2
	.global	FT_Glyph_To_Bitmap
	.thumb
	.thumb_func
	.type	FT_Glyph_To_Bitmap, %function
FT_Glyph_To_Bitmap:
	@ args = 0, pretend = 0, frame = 248
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #252
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r4, .L85
.LPIC1:
	add	r4, pc
	movs	r3, #0
	str	r3, [r7, #244]
	movs	r3, #0
	str	r3, [r7, #240]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L69
	b	.L70
.L69:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #236]
	ldr	r3, [r7, #236]
	cmp	r3, #0
	bne	.L71
	b	.L70
.L71:
	ldr	r3, [r7, #236]
	ldr	r3, [r3, #4]
	str	r3, [r7, #232]
	ldr	r3, [r7, #236]
	ldr	r3, [r3]
	str	r3, [r7, #228]
	ldr	r3, [r7, #228]
	cmp	r3, #0
	beq	.L70
	ldr	r3, [r7, #232]
	cmp	r3, #0
	beq	.L70
	ldr	r2, [r7, #232]
	ldr	r3, .L85+4
	ldr	r3, [r4, r3]
	cmp	r2, r3
	bne	.L72
	b	.L73
.L72:
	ldr	r3, [r7, #232]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	bne	.L74
	b	.L70
.L74:
	add	r3, r7, #68
	mov	r0, r3
	movs	r1, #0
	movs	r2, #160
	bl	memset(PLT)
	add	r3, r7, #28
	mov	r0, r3
	movs	r1, #0
	movs	r2, #40
	bl	memset(PLT)
	add	r3, r7, #28
	str	r3, [r7, #224]
	ldr	r3, [r7, #228]
	str	r3, [r7, #68]
	ldr	r3, [r7, #232]
	ldr	r3, [r3, #4]
	str	r3, [r7, #140]
	add	r3, r7, #24
	ldr	r0, [r7, #228]
	ldr	r2, .L85+4
	ldr	r2, [r4, r2]
	mov	r1, r2
	mov	r2, r3
	bl	ft_new_glyph(PLT)
	str	r0, [r7, #244]
	ldr	r3, [r7, #244]
	cmp	r3, #0
	beq	.L75
	b	.L73
.L75:
	ldr	r3, [r7, #24]
	str	r3, [r7, #240]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L76
	ldr	r0, [r7, #236]
	movs	r1, #0
	ldr	r2, [r7, #4]
	bl	FT_Glyph_Transform(PLT)
.L76:
	ldr	r3, [r7, #232]
	ldr	r3, [r3, #28]
	add	r2, r7, #68
	ldr	r0, [r7, #236]
	mov	r1, r2
	blx	r3
	str	r0, [r7, #244]
	ldr	r3, [r7, #244]
	cmp	r3, #0
	bne	.L77
	ldr	r3, [r7, #236]
	ldr	r2, [r3]
	add	r3, r7, #68
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	FT_Render_Glyph_Internal(PLT)
	str	r0, [r7, #244]
.L77:
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L78
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L78
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	negs	r3, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	negs	r3, r3
	str	r3, [r7, #20]
	add	r3, r7, #16
	ldr	r0, [r7, #236]
	movs	r1, #0
	mov	r2, r3
	bl	FT_Glyph_Transform(PLT)
.L78:
	ldr	r3, [r7, #244]
	cmp	r3, #0
	beq	.L79
	b	.L73
.L79:
	add	r3, r7, #68
	ldr	r0, [r7, #240]
	mov	r1, r3
	bl	ft_bitmap_glyph_init(PLT)
	str	r0, [r7, #244]
	ldr	r3, [r7, #244]
	cmp	r3, #0
	beq	.L80
	b	.L73
.L80:
	ldr	r3, [r7, #240]
	ldr	r2, [r7, #236]
	adds	r3, r3, #12
	adds	r2, r2, #12
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L81
	ldr	r0, [r7, #236]
	bl	FT_Done_Glyph(PLT)
.L81:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #240]
	str	r2, [r3]
.L73:
	ldr	r3, [r7, #244]
	cmp	r3, #0
	beq	.L82
	ldr	r3, [r7, #240]
	cmp	r3, #0
	beq	.L82
	ldr	r0, [r7, #240]
	bl	FT_Done_Glyph(PLT)
.L82:
	ldr	r3, [r7, #244]
	b	.L84
.L70:
	movs	r3, #6
	str	r3, [r7, #244]
	b	.L73
.L84:
	mov	r0, r3
	adds	r7, r7, #252
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L86:
	.align	2
.L85:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	ft_bitmap_glyph_class(GOT)
	.size	FT_Glyph_To_Bitmap, .-FT_Glyph_To_Bitmap
	.section	.text.FT_Done_Glyph,"ax",%progbits
	.align	2
	.global	FT_Done_Glyph
	.thumb
	.thumb_func
	.type	FT_Done_Glyph, %function
FT_Done_Glyph:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L87
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L89
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #4]
	blx	r3
.L89:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
.L87:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Done_Glyph, .-FT_Done_Glyph
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
