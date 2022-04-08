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
	.file	"ftbitmap.c"
	.section	.rodata.null_bitmap,"a",%progbits
	.align	2
	.type	null_bitmap, %object
	.size	null_bitmap, 24
null_bitmap:
	.space	24
	.section	.text.FT_Bitmap_Init,"ax",%progbits
	.align	2
	.global	FT_Bitmap_Init
	.thumb
	.thumb_func
	.type	FT_Bitmap_Init, %function
FT_Bitmap_Init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L1
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #18]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #19]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
.L1:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Bitmap_Init, .-FT_Bitmap_Init
	.section	.text.FT_Bitmap_New,"ax",%progbits
	.align	2
	.global	FT_Bitmap_New
	.thumb
	.thumb_func
	.type	FT_Bitmap_New, %function
FT_Bitmap_New:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L3
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #18]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #19]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
.L3:
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	FT_Bitmap_New, .-FT_Bitmap_New
	.section	.text.FT_Bitmap_Copy,"ax",%progbits
	.align	2
	.global	FT_Bitmap_Copy
	.thumb
	.thumb_func
	.type	FT_Bitmap_Copy, %function
FT_Bitmap_Copy:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L6
	movs	r3, #33
	b	.L26
.L6:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L8
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L9
.L8:
	movs	r3, #6
	b	.L26
.L9:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L10
	movs	r3, #0
	b	.L26
.L10:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L11
	mov	r3, #-1
	b	.L12
.L11:
	movs	r3, #1
.L12:
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L13
	mov	r3, #-1
	b	.L14
.L13:
	movs	r3, #1
.L14:
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L15
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	beq	.L16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	negs	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L16:
	movs	r3, #0
	b	.L26
.L15:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bge	.L17
	ldr	r3, [r7, #60]
	negs	r3, r3
	str	r3, [r7, #60]
.L17:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	ldr	r2, [r7, #60]
	mul	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L18
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bge	.L19
	ldr	r3, [r7, #56]
	negs	r3, r3
	str	r3, [r7, #56]
.L19:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #56]
	mul	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	beq	.L20
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #12]
	str	r1, [sp]
	add	r1, r7, #16
	str	r1, [sp, #4]
	ldr	r0, [r7, #32]
	movs	r1, #1
	bl	ft_mem_qrealloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	b	.L21
.L20:
	b	.L21
.L18:
	ldr	r2, [r7, #28]
	add	r3, r7, #16
	ldr	r0, [r7, #32]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_qalloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L21:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L22
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bne	.L23
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #28]
	bl	memcpy(PLT)
	b	.L22
.L23:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #48]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r3, #1
	ldr	r2, [r7, #60]
	mul	r3, r2, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	b	.L24
.L25:
	ldr	r3, [r7, #60]
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #48]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #60]
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #60]
	negs	r3, r3
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L24:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L25
.L22:
	ldr	r3, [r7, #16]
.L26:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	FT_Bitmap_Copy, .-FT_Bitmap_Copy
	.section	.text.ft_bitmap_assure_buffer,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_bitmap_assure_buffer, %function
ft_bitmap_assure_buffer:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #96
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bge	.L28
	ldr	r3, [r7, #84]
	negs	r3, r3
	str	r3, [r7, #84]
.L28:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #5
	bhi	.L29
	adr	r1, .L31
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L31:
	.word	.L30+1-.L31
	.word	.L32+1-.L31
	.word	.L33+1-.L31
	.word	.L34+1-.L31
	.word	.L32+1-.L31
	.word	.L32+1-.L31
.L30:
	movs	r3, #1
	str	r3, [r7, #76]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	str	r3, [r7, #80]
	b	.L35
.L33:
	movs	r3, #2
	str	r3, [r7, #76]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #3
	lsrs	r3, r3, #2
	str	r3, [r7, #80]
	b	.L35
.L34:
	movs	r3, #4
	str	r3, [r7, #76]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #1
	lsrs	r3, r3, #1
	str	r3, [r7, #80]
	b	.L35
.L32:
	movs	r3, #8
	str	r3, [r7, #76]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #80]
	b	.L35
.L29:
	movs	r3, #18
	b	.L51
.L35:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L37
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bgt	.L37
	ldr	r3, [r7, #84]
	lsls	r3, r3, #3
	str	r3, [r7, #40]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #76]
	mul	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L38
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #36]
	lsrs	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #84]
	add	r3, r3, r2
	str	r3, [r7, #64]
	ldr	r3, [r7, #36]
	and	r3, r3, #7
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	mov	r2, #65280
	lsr	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #44]
	str	r3, [r7, #60]
	b	.L39
.L42:
	ldr	r3, [r7, #68]
	str	r3, [r7, #56]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L40
	ldr	r3, [r7, #56]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #28]
	uxtb	r3, r3
	ands	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #56]
	strb	r2, [r3]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L40:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	bcs	.L41
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #56]
	subs	r3, r2, r3
	ldr	r0, [r7, #56]
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
.L41:
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #68]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #64]
	add	r3, r3, r2
	str	r3, [r7, #64]
.L39:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L42
.L38:
	movs	r3, #0
	b	.L51
.L37:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	movs	r2, #0
	ldr	r3, [r7, #80]
	bl	ft_mem_qrealloc(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L43
	ldr	r3, [r7, #16]
	b	.L51
.L43:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ble	.L44
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #76]
	mul	r3, r2, r3
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L45
.L46:
	ldr	r2, [r7]
	ldr	r3, [r7, #72]
	add	r3, r3, r2
	ldr	r2, [r7, #80]
	mul	r3, r2, r3
	ldr	r2, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #84]
	ldr	r0, [r7, #72]
	mul	r3, r0, r3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #24]
	bl	memcpy(PLT)
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L45:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bhi	.L46
	b	.L47
.L44:
	ldr	r3, [r7, #48]
	ldr	r2, [r7, #76]
	mul	r3, r2, r3
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L48
.L49:
	ldr	r3, [r7, #80]
	ldr	r2, [r7, #72]
	mul	r3, r2, r3
	ldr	r2, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	ldr	r1, [r3, #12]
	ldr	r3, [r7, #84]
	ldr	r0, [r7, #72]
	mul	r3, r0, r3
	add	r3, r3, r1
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #20]
	bl	memcpy(PLT)
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L48:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bhi	.L49
.L47:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #8]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #52]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L50
	ldr	r3, [r7, #80]
	negs	r3, r3
	str	r3, [r7, #80]
.L50:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #80]
	str	r2, [r3, #8]
	movs	r3, #0
.L51:
	mov	r0, r3
	adds	r7, r7, #88
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ft_bitmap_assure_buffer, .-ft_bitmap_assure_buffer
	.section	.text.FT_Bitmap_Embolden,"ax",%progbits
	.align	2
	.global	FT_Bitmap_Embolden
	.thumb
	.thumb_func
	.type	FT_Bitmap_Embolden, %function
FT_Bitmap_Embolden:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L53
	movs	r3, #33
	b	.L54
.L53:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L56
.L55:
	movs	r3, #6
	b	.L54
.L56:
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	asrs	r3, r3, #6
	str	r3, [r7, #56]
	ldr	r3, [r7]
	adds	r3, r3, #32
	asrs	r3, r3, #6
	str	r3, [r7, #52]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L57
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L57
	movs	r3, #0
	b	.L54
.L57:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	blt	.L58
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bge	.L59
.L58:
	movs	r3, #6
	b	.L54
.L59:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #6
	bhi	.L60
	adr	r1, .L62
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L62:
	.word	.L61+1-.L62
	.word	.L60+1-.L62
	.word	.L63+1-.L62
	.word	.L63+1-.L62
	.word	.L64+1-.L62
	.word	.L65+1-.L62
	.word	.L66+1-.L62
.L63:
	add	r3, r7, #16
	mov	r0, r3
	bl	FT_Bitmap_Init(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	movs	r3, #1
	bl	FT_Bitmap_Convert(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L67
	ldr	r3, [r7, #48]
	b	.L54
.L67:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	FT_Bitmap_Done(PLT)
	ldr	r3, [r7, #8]
	mov	r4, r3
	add	r5, r7, #16
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	b	.L60
.L61:
	ldr	r3, [r7, #56]
	cmp	r3, #8
	ble	.L68
	movs	r3, #8
	str	r3, [r7, #56]
	b	.L60
.L68:
	b	.L60
.L64:
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #56]
	b	.L60
.L65:
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #52]
	b	.L60
.L66:
	movs	r3, #0
	b	.L54
.L60:
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	mov	r0, r1
	ldr	r1, [r7, #8]
	bl	ft_bitmap_assure_buffer(PLT)
	str	r0, [r7, #48]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L69
	ldr	r3, [r7, #48]
	b	.L54
.L69:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	ble	.L70
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #64]
	ldr	r1, [r7, #52]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #76]
	b	.L71
.L70:
	ldr	r3, [r7, #64]
	negs	r3, r3
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	subs	r3, r3, #1
	ldr	r1, [r7, #64]
	mul	r3, r1, r3
	add	r3, r3, r2
	str	r3, [r7, #76]
.L71:
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L72
.L87:
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	str	r3, [r7, #68]
	b	.L73
.L82:
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [r7, #47]
	movs	r3, #1
	str	r3, [r7, #72]
	b	.L74
.L81:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L75
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	ldr	r1, [r7, #76]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	uxtb	r1, r2
	ldrb	r0, [r7, #47]	@ zero_extendqisi2
	ldr	r2, [r7, #72]
	asr	r2, r0, r2
	uxtb	r2, r2
	orrs	r2, r2, r1
	uxtb	r2, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	ble	.L77
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	ldr	r1, [r7, #76]
	add	r2, r2, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	uxtb	r1, r2
	ldr	r2, [r7, #68]
	subs	r2, r2, #1
	ldr	r0, [r7, #76]
	add	r2, r2, r0
	ldrb	r2, [r2]	@ zero_extendqisi2
	mov	r0, r2
	ldr	r2, [r7, #72]
	rsb	r2, r2, #8
	lsl	r2, r0, r2
	uxtb	r2, r2
	orrs	r2, r2, r1
	uxtb	r2, r2
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L77
.L75:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #72]
	subs	r3, r2, r3
	cmp	r3, #0
	blt	.L78
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r1, [r7, #68]
	ldr	r3, [r7, #72]
	subs	r3, r1, r3
	ldr	r1, [r7, #76]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #16]
	subs	r3, r3, #1
	cmp	r2, r3
	ble	.L79
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldr	r2, [r7, #8]
	ldrh	r2, [r2, #16]
	uxtb	r2, r2
	subs	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L80
.L79:
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldr	r2, [r7, #68]
	ldr	r1, [r7, #76]
	add	r2, r2, r1
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r0, [r7, #68]
	ldr	r2, [r7, #72]
	subs	r2, r0, r2
	ldr	r0, [r7, #76]
	add	r2, r2, r0
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #68]
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #16]
	subs	r3, r3, #1
	cmp	r2, r3
	bne	.L77
	b	.L80
.L78:
	b	.L80
.L77:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L74:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	ble	.L81
.L80:
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	str	r3, [r7, #68]
.L73:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bge	.L82
	movs	r3, #1
	str	r3, [r7, #68]
	b	.L83
.L86:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #68]
	mul	r3, r2, r3
	negs	r3, r3
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #40]
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L84
.L85:
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #40]
	add	r3, r3, r2
	ldr	r2, [r7, #72]
	ldr	r1, [r7, #40]
	add	r2, r2, r1
	ldrb	r1, [r2]	@ zero_extendqisi2
	ldr	r2, [r7, #72]
	ldr	r0, [r7, #76]
	add	r2, r2, r0
	ldrb	r2, [r2]	@ zero_extendqisi2
	orrs	r2, r2, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L84:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	blt	.L85
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
.L83:
	ldr	r2, [r7, #68]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	ble	.L86
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #76]
	add	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L72:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L87
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #56]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	str	r2, [r3]
	movs	r3, #0
.L54:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	FT_Bitmap_Embolden, .-FT_Bitmap_Embolden
	.global	__aeabi_uidiv
	.section	.text.ft_gray_for_premultiplied_srgb_bgra,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ft_gray_for_premultiplied_srgb_bgra, %function
ft_gray_for_premultiplied_srgb_bgra:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L89
	movs	r3, #0
	b	.L90
.L89:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #4]
	ldrb	r2, [r2]	@ zero_extendqisi2
	mul	r3, r2, r3
	movw	r2, #4732
	mul	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	adds	r1, r1, #1
	ldrb	r1, [r1]	@ zero_extendqisi2
	mul	r3, r1, r3
	movw	r1, #46871
	mul	r3, r1, r3
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r1, [r7, #4]
	adds	r1, r1, #2
	ldrb	r1, [r1]	@ zero_extendqisi2
	mul	r3, r1, r3
	movw	r1, #13933
	mul	r3, r1, r3
	add	r3, r3, r2
	lsrs	r3, r3, #16
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	uxtb	r4, r3
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	uxtb	r3, r3
	subs	r3, r4, r3
	uxtb	r3, r3
.L90:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ft_gray_for_premultiplied_srgb_bgra, .-ft_gray_for_premultiplied_srgb_bgra
	.global	__aeabi_idivmod
	.section	.text.FT_Bitmap_Convert,"ax",%progbits
	.align	2
	.global	FT_Bitmap_Convert
	.thumb
	.thumb_func
	.type	FT_Bitmap_Convert, %function
FT_Bitmap_Convert:
	@ args = 0, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #156
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L92
	movs	r3, #33
	b	.L139
.L92:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L94
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L95
.L94:
	movs	r3, #6
	b	.L139
.L95:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #6
	bhi	.L96
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #128]
	ldr	r3, [r7, #128]
	cmp	r3, #0
	bge	.L98
	ldr	r3, [r7, #128]
	negs	r3, r3
	str	r3, [r7, #128]
.L98:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #128]
	mul	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #4]
	movs	r2, #2
	strb	r2, [r3, #18]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #132]
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.L99
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	str	r3, [r7, #132]
	ldr	r3, [r7, #132]
	cmp	r3, #0
	beq	.L99
	ldr	r2, [r7]
	ldr	r3, [r7, #132]
	subs	r3, r2, r3
	str	r3, [r7, #132]
.L99:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #132]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	ble	.L100
	ldr	r3, [r7, #4]
	ldr	r4, [r3]
	ldr	r3, [r7, #40]
	mov	r0, #-1
	mov	r1, r3
	bl	__aeabi_uidiv(PLT)
	mov	r3, r0
	cmp	r4, r3
	bls	.L100
	movs	r3, #6
	b	.L139
.L100:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7, #40]
	mul	r2, r2, r3
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bls	.L101
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r1, [r7, #40]
	mul	r3, r1, r3
	ldr	r1, [r7, #4]
	ldr	r1, [r1, #12]
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #48]
	movs	r1, #1
	bl	ft_mem_qrealloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L101
	ldr	r3, [r7, #20]
	b	.L139
.L101:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L102
	ldr	r3, [r7, #40]
	negs	r3, r3
	b	.L103
.L102:
	ldr	r3, [r7, #40]
.L103:
	ldr	r2, [r7, #4]
	str	r3, [r2, #8]
	b	.L104
.L96:
	movs	r3, #6
	str	r3, [r7, #20]
.L104:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	str	r3, [r7, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #136]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L105
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #8]
	ldr	r2, [r2]
	subs	r2, r2, #1
	mul	r3, r2, r3
	negs	r3, r3
	ldr	r2, [r7, #140]
	add	r3, r3, r2
	str	r3, [r7, #140]
.L105:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bge	.L106
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #4]
	ldr	r2, [r2]
	subs	r2, r2, #1
	mul	r3, r2, r3
	negs	r3, r3
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	str	r3, [r7, #136]
.L106:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #18]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #6
	bhi	.L107
	adr	r1, .L109
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L109:
	.word	.L108+1-.L109
	.word	.L110+1-.L109
	.word	.L111+1-.L109
	.word	.L112+1-.L109
	.word	.L110+1-.L109
	.word	.L110+1-.L109
	.word	.L113+1-.L109
.L108:
	ldr	r3, [r7, #4]
	movs	r2, #2
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #124]
	b	.L114
.L120:
	ldr	r3, [r7, #140]
	str	r3, [r7, #120]
	ldr	r3, [r7, #136]
	str	r3, [r7, #116]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #3
	str	r3, [r7, #112]
	b	.L115
.L116:
	ldr	r3, [r7, #120]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	and	r3, r3, #128
	asrs	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [r7, #116]
	strb	r2, [r3]
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	ldr	r2, [r7, #36]
	and	r2, r2, #64
	asrs	r2, r2, #6
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #116]
	adds	r3, r3, #2
	ldr	r2, [r7, #36]
	and	r2, r2, #32
	asrs	r2, r2, #5
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #116]
	adds	r3, r3, #3
	ldr	r2, [r7, #36]
	and	r2, r2, #16
	asrs	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #116]
	adds	r3, r3, #4
	ldr	r2, [r7, #36]
	and	r2, r2, #8
	asrs	r2, r2, #3
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #116]
	adds	r3, r3, #5
	ldr	r2, [r7, #36]
	and	r2, r2, #4
	asrs	r2, r2, #2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #116]
	adds	r3, r3, #6
	ldr	r2, [r7, #36]
	and	r2, r2, #2
	asrs	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #116]
	adds	r3, r3, #7
	ldr	r2, [r7, #36]
	uxtb	r2, r2
	and	r2, r2, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #116]
	adds	r3, r3, #8
	str	r3, [r7, #116]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
	ldr	r3, [r7, #112]
	subs	r3, r3, #1
	str	r3, [r7, #112]
.L115:
	ldr	r3, [r7, #112]
	cmp	r3, #0
	bne	.L116
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	and	r3, r3, #7
	str	r3, [r7, #112]
	ldr	r3, [r7, #112]
	cmp	r3, #0
	beq	.L117
	ldr	r3, [r7, #120]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #108]
	b	.L118
.L119:
	ldr	r3, [r7, #108]
	and	r3, r3, #128
	asrs	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [r7, #116]
	strb	r2, [r3]
	ldr	r3, [r7, #108]
	lsls	r3, r3, #1
	str	r3, [r7, #108]
	ldr	r3, [r7, #116]
	adds	r3, r3, #1
	str	r3, [r7, #116]
	ldr	r3, [r7, #112]
	subs	r3, r3, #1
	str	r3, [r7, #112]
.L118:
	ldr	r3, [r7, #112]
	cmp	r3, #0
	bne	.L119
.L117:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #140]
	add	r3, r3, r2
	str	r3, [r7, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	str	r3, [r7, #136]
	ldr	r3, [r7, #124]
	subs	r3, r3, #1
	str	r3, [r7, #124]
.L114:
	ldr	r3, [r7, #124]
	cmp	r3, #0
	bne	.L120
	b	.L107
.L110:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	mov	r2, #256
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #104]
	b	.L121
.L122:
	ldr	r0, [r7, #136]
	ldr	r1, [r7, #140]
	ldr	r2, [r7, #32]
	bl	memcpy(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #140]
	add	r3, r3, r2
	str	r3, [r7, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	str	r3, [r7, #136]
	ldr	r3, [r7, #104]
	subs	r3, r3, #1
	str	r3, [r7, #104]
.L121:
	ldr	r3, [r7, #104]
	cmp	r3, #0
	bne	.L122
	b	.L107
.L111:
	ldr	r3, [r7, #4]
	movs	r2, #4
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #100]
	b	.L123
.L129:
	ldr	r3, [r7, #140]
	str	r3, [r7, #96]
	ldr	r3, [r7, #136]
	str	r3, [r7, #92]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #2
	str	r3, [r7, #88]
	b	.L124
.L125:
	ldr	r3, [r7, #96]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	and	r3, r3, #192
	asrs	r3, r3, #6
	uxtb	r2, r3
	ldr	r3, [r7, #92]
	strb	r2, [r3]
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	ldr	r2, [r7, #28]
	and	r2, r2, #48
	asrs	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #92]
	adds	r3, r3, #2
	ldr	r2, [r7, #28]
	and	r2, r2, #12
	asrs	r2, r2, #2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #92]
	adds	r3, r3, #3
	ldr	r2, [r7, #28]
	uxtb	r2, r2
	and	r2, r2, #3
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #96]
	adds	r3, r3, #1
	str	r3, [r7, #96]
	ldr	r3, [r7, #92]
	adds	r3, r3, #4
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	subs	r3, r3, #1
	str	r3, [r7, #88]
.L124:
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bne	.L125
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	and	r3, r3, #3
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L126
	ldr	r3, [r7, #96]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #84]
	b	.L127
.L128:
	ldr	r3, [r7, #84]
	and	r3, r3, #192
	asrs	r3, r3, #6
	uxtb	r2, r3
	ldr	r3, [r7, #92]
	strb	r2, [r3]
	ldr	r3, [r7, #84]
	lsls	r3, r3, #2
	str	r3, [r7, #84]
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	subs	r3, r3, #1
	str	r3, [r7, #88]
.L127:
	ldr	r3, [r7, #88]
	cmp	r3, #0
	bne	.L128
.L126:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #140]
	add	r3, r3, r2
	str	r3, [r7, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	str	r3, [r7, #136]
	ldr	r3, [r7, #100]
	subs	r3, r3, #1
	str	r3, [r7, #100]
.L123:
	ldr	r3, [r7, #100]
	cmp	r3, #0
	bne	.L129
	b	.L107
.L112:
	ldr	r3, [r7, #4]
	movs	r2, #16
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #80]
	b	.L130
.L134:
	ldr	r3, [r7, #140]
	str	r3, [r7, #76]
	ldr	r3, [r7, #136]
	str	r3, [r7, #72]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	lsrs	r3, r3, #1
	str	r3, [r7, #68]
	b	.L131
.L132:
	ldr	r3, [r7, #76]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	and	r3, r3, #240
	asrs	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #72]
	strb	r2, [r3]
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	ldr	r2, [r7, #24]
	uxtb	r2, r2
	and	r2, r2, #15
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	adds	r3, r3, #2
	str	r3, [r7, #72]
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	str	r3, [r7, #68]
.L131:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L132
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L133
	ldr	r3, [r7, #76]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsrs	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [r7, #72]
	strb	r2, [r3]
.L133:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #140]
	add	r3, r3, r2
	str	r3, [r7, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	str	r3, [r7, #136]
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	str	r3, [r7, #80]
.L130:
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bne	.L134
	b	.L107
.L113:
	ldr	r3, [r7, #4]
	mov	r2, #256
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #64]
	b	.L135
.L138:
	ldr	r3, [r7, #140]
	str	r3, [r7, #60]
	ldr	r3, [r7, #136]
	str	r3, [r7, #56]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #52]
	b	.L136
.L137:
	ldr	r0, [r7, #60]
	bl	ft_gray_for_premultiplied_srgb_bgra(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #56]
	strb	r2, [r3]
	ldr	r3, [r7, #60]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L136:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L137
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #140]
	add	r3, r3, r2
	str	r3, [r7, #140]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #136]
	add	r3, r3, r2
	str	r3, [r7, #136]
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	str	r3, [r7, #64]
.L135:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L138
	nop
.L107:
	ldr	r3, [r7, #20]
.L139:
	mov	r0, r3
	adds	r7, r7, #148
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	FT_Bitmap_Convert, .-FT_Bitmap_Convert
	.section	.text.FT_GlyphSlot_Own_Bitmap,"ax",%progbits
	.align	2
	.global	FT_GlyphSlot_Own_Bitmap
	.thumb
	.thumb_func
	.type	FT_GlyphSlot_Own_Bitmap, %function
FT_GlyphSlot_Own_Bitmap:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L141
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #72]
	movw	r3, #29811
	movt	r3, 25193
	cmp	r2, r3
	bne	.L141
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r3, [r3, #4]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L141
	add	r3, r7, #12
	mov	r0, r3
	bl	FT_Bitmap_Init(PLT)
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	add	r2, r3, #76
	add	r3, r7, #12
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_Bitmap_Copy(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L142
	ldr	r3, [r7, #36]
	b	.L143
.L142:
	ldr	r3, [r7, #4]
	add	r4, r3, #76
	add	r5, r7, #12
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1}
	stmia	r4, {r0, r1}
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #156]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #156]
	ldr	r2, [r2, #4]
	orr	r2, r2, #1
	str	r2, [r3, #4]
.L141:
	movs	r3, #0
.L143:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	FT_GlyphSlot_Own_Bitmap, .-FT_GlyphSlot_Own_Bitmap
	.section	.text.FT_Bitmap_Done,"ax",%progbits
	.align	2
	.global	FT_Bitmap_Done
	.thumb
	.thumb_func
	.type	FT_Bitmap_Done, %function
FT_Bitmap_Done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L145
	movs	r3, #33
	b	.L146
.L145:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L147
	movs	r3, #6
	b	.L146
.L147:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
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
	strh	r2, [r3, #16]	@ movhi
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3, #18]
	ldr	r3, [r7]
	movs	r2, #0
	strb	r2, [r3, #19]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #20]
	movs	r3, #0
.L146:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	FT_Bitmap_Done, .-FT_Bitmap_Done
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
