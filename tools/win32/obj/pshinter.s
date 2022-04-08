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
	.file	"pshinter.c"
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
	.section	.text.ps_hint_table_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hint_table_done, %function
ps_hint_table_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hint_table_done, .-ps_hint_table_done
	.section	.text.ps_hint_table_ensure,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hint_table_ensure, %function
ps_hint_table_ensure:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L5
	ldr	r3, [r7, #24]
	adds	r3, r3, #7
	bic	r3, r3, #7
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #8]
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #4]
	movs	r1, #12
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L5
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #4]
.L5:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hint_table_ensure, .-ps_hint_table_ensure
	.section	.text.ps_hint_table_alloc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hint_table_alloc, %function
ps_hint_table_alloc:
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
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L8
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #8]
	bl	ps_hint_table_ensure(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L8
	b	.L9
.L8:
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #12
	add	r3, r3, r1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L9:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hint_table_alloc, .-ps_hint_table_alloc
	.section	.text.ps_mask_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_done, %function
ps_mask_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_mask_done, .-ps_mask_done
	.section	.text.ps_mask_ensure,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_ensure, %function
ps_mask_ensure:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L13
	ldr	r3, [r7, #24]
	adds	r3, r3, #7
	bic	r3, r3, #7
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #8]
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L13
	ldr	r3, [r7, #24]
	lsls	r2, r3, #3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L13:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_mask_ensure, .-ps_mask_ensure
	.section	.text.ps_mask_test_bit,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_test_bit, %function
ps_mask_test_bit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	bcc	.L16
	movs	r3, #0
	b	.L17
.L16:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	asrs	r3, r3, #3
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	and	r3, r3, #7
	movs	r1, #128
	asr	r3, r1, r3
	ands	r3, r3, r2
.L17:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ps_mask_test_bit, .-ps_mask_test_bit
	.section	.text.ps_mask_clear_bit,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_clear_bit, %function
ps_mask_clear_bit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L19
	b	.L18
.L19:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	lsrs	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	ldr	r3, [r7]
	and	r3, r3, #7
	movs	r1, #128
	asr	r3, r1, r3
	uxtb	r3, r3
	mvns	r3, r3
	uxtb	r3, r3
	ands	r3, r3, r2
	uxtb	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3]
.L18:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ps_mask_clear_bit, .-ps_mask_clear_bit
	.section	.text.ps_mask_set_bit,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_set_bit, %function
ps_mask_set_bit:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L22
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #4]
	bl	ps_mask_ensure(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L23
	b	.L24
.L23:
	ldr	r3, [r7, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L22:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	lsrs	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	ldr	r3, [r7, #8]
	and	r3, r3, #7
	movs	r1, #128
	asr	r3, r1, r3
	uxtb	r3, r3
	orrs	r3, r3, r2
	uxtb	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #16]
	strb	r2, [r3]
.L24:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_mask_set_bit, .-ps_mask_set_bit
	.section	.text.ps_mask_table_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_table_done, %function
ps_mask_table_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	b	.L27
.L28:
	ldr	r0, [r7, #8]
	ldr	r1, [r7]
	bl	ps_mask_done(PLT)
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #16
	str	r3, [r7, #8]
.L27:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L28
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_mask_table_done, .-ps_mask_table_done
	.section	.text.ps_mask_table_ensure,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_table_ensure, %function
ps_mask_table_ensure:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
	ldr	r3, [r7, #8]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bls	.L30
	ldr	r3, [r7, #24]
	adds	r3, r3, #7
	bic	r3, r3, #7
	str	r3, [r7, #24]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	ldr	r1, [r7, #12]
	ldr	r1, [r1, #8]
	str	r1, [sp]
	add	r1, r7, #20
	str	r1, [sp, #4]
	ldr	r0, [r7, #4]
	movs	r1, #16
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L30
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #24]
	str	r2, [r3, #4]
.L30:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_mask_table_ensure, .-ps_mask_table_ensure
	.section	.text.ps_mask_table_alloc,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_table_alloc, %function
ps_mask_table_alloc:
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
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bcs	.L33
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #8]
	bl	ps_mask_table_ensure(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L33
	b	.L34
.L33:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, #268435456
	subs	r3, r3, #1
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #24]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3]
.L34:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_mask_table_alloc, .-ps_mask_table_alloc
	.section	.text.ps_mask_table_last,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_table_last, %function
ps_mask_table_last:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L37
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	ps_mask_table_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L38
	b	.L38
.L37:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	add	r3, r3, #268435456
	subs	r3, r3, #1
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #20]
.L38:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_mask_table_last, .-ps_mask_table_last
	.section	.text.ps_mask_table_set_bits,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_table_set_bits, %function
ps_mask_table_set_bits:
	@ args = 4, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #56]
	mov	r2, r3
	bl	ps_mask_table_last(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L41
	b	.L42
.L41:
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7]
	ldr	r2, [r7, #56]
	bl	ps_mask_ensure(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L43
	b	.L42
.L43:
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	and	r3, r3, #7
	movs	r2, #128
	asr	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #32]
	movs	r3, #128
	str	r3, [r7, #28]
	b	.L44
.L48:
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #28]
	mvns	r3, r3
	ands	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #36]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L45
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	orrs	r3, r3, r2
	str	r3, [r7, #24]
.L45:
	ldr	r3, [r7, #24]
	uxtb	r2, r3
	ldr	r3, [r7, #32]
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	asrs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L46
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	movs	r3, #128
	str	r3, [r7, #36]
.L46:
	ldr	r3, [r7, #28]
	asrs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L47
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
	movs	r3, #128
	str	r3, [r7, #28]
.L47:
	ldr	r3, [r7]
	subs	r3, r3, #1
	str	r3, [r7]
.L44:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L48
.L42:
	ldr	r3, [r7, #44]
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_mask_table_set_bits, .-ps_mask_table_set_bits
	.section	.text.ps_mask_table_test_intersect,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_table_test_intersect, %function
ps_mask_table_test_intersect:
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
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	str	r3, [r7, #40]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	str	r3, [r7, #36]
	b	.L51
.L54:
	ldr	r3, [r7, #44]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ands	r3, r3, r2
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L52
	movs	r3, #1
	b	.L53
.L52:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #36]
	subs	r3, r3, #8
	str	r3, [r7, #36]
.L51:
	ldr	r3, [r7, #36]
	cmp	r3, #7
	bhi	.L54
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L55
	movs	r3, #0
	b	.L53
.L55:
	ldr	r3, [r7, #44]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #40]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ands	r3, r3, r2
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #36]
	movs	r1, #255
	asr	r3, r1, r3
	mvns	r3, r3
	ands	r3, r3, r2
.L53:
	mov	r0, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ps_mask_table_test_intersect, .-ps_mask_table_test_intersect
	.section	.text.ps_mask_table_merge,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_table_merge, %function
ps_mask_table_merge:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #76
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #68]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L57
	ldr	r3, [r7, #8]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #52]
	str	r3, [r7, #4]
.L57:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcs	.L58
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bls	.L58
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L59
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bls	.L60
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #36]
	ldr	r2, [r7]
	bl	ps_mask_ensure(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L61
	b	.L58
.L61:
	ldr	r3, [r7, #40]
	str	r3, [r7, #64]
	b	.L62
.L63:
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #64]
	bl	ps_mask_clear_bit(PLT)
	ldr	r3, [r7, #64]
	adds	r3, r3, #1
	str	r3, [r7, #64]
.L62:
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L63
.L60:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	str	r3, [r7, #60]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #8]
	str	r3, [r7, #56]
	ldr	r3, [r7, #36]
	adds	r3, r3, #7
	lsrs	r3, r3, #3
	str	r3, [r7, #64]
	b	.L64
.L65:
	ldr	r3, [r7, #56]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	uxtb	r2, r3
	ldr	r3, [r7, #56]
	strb	r2, [r3]
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	str	r3, [r7, #64]
.L64:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L65
.L59:
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #44]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	subs	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	ble	.L66
	ldr	r3, [r7, #44]
	add	r4, r7, #16
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #44]
	add	r2, r3, #16
	ldr	r3, [r7, #32]
	lsls	r3, r3, #4
	ldr	r0, [r7, #44]
	mov	r1, r2
	mov	r2, r3
	bl	memmove(PLT)
	ldr	r3, [r7, #32]
	lsls	r3, r3, #4
	ldr	r2, [r7, #44]
	add	r3, r3, r2
	mov	r4, r3
	add	r3, r7, #16
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
.L66:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L58:
	ldr	r3, [r7, #68]
	mov	r0, r3
	adds	r7, r7, #76
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ps_mask_table_merge, .-ps_mask_table_merge
	.section	.text.ps_mask_table_merge_all,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_mask_table_merge_all, %function
ps_mask_table_merge_all:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	b	.L69
.L76:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L70
.L75:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	ps_mask_table_test_intersect(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L71
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7]
	bl	ps_mask_table_merge(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L72
	b	.L73
.L72:
	b	.L74
.L71:
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
.L70:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L75
.L74:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
.L69:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bgt	.L76
.L73:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_mask_table_merge_all, .-ps_mask_table_merge_all
	.section	.text.ps_dimension_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_dimension_done, %function
ps_dimension_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7]
	bl	ps_mask_table_done(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	ldr	r1, [r7]
	bl	ps_mask_table_done(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	ldr	r1, [r7]
	bl	ps_hint_table_done(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_dimension_done, .-ps_dimension_done
	.section	.text.ps_dimension_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_dimension_init, %function
ps_dimension_init:
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
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ps_dimension_init, .-ps_dimension_init
	.section	.text.ps_dimension_end_mask,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_dimension_end_mask, %function
ps_dimension_end_mask:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L80
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #12]
	add	r3, r3, #268435456
	subs	r3, r3, #1
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r7]
	str	r2, [r3, #12]
.L80:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ps_dimension_end_mask, .-ps_dimension_end_mask
	.section	.text.ps_dimension_reset_mask,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_dimension_reset_mask, %function
ps_dimension_reset_mask:
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
	bl	ps_dimension_end_mask(PLT)
	ldr	r3, [r7, #12]
	add	r2, r3, #12
	add	r3, r7, #20
	mov	r0, r2
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	ps_mask_table_alloc(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_dimension_reset_mask, .-ps_dimension_reset_mask
	.section	.text.ps_dimension_set_mask_bits,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_dimension_set_mask_bits, %function
ps_dimension_set_mask_bits:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #36]
	bl	ps_dimension_reset_mask(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L85
	b	.L86
.L85:
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	ldr	r2, [r7, #36]
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	ps_mask_table_set_bits(PLT)
	str	r0, [r7, #20]
.L86:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_dimension_set_mask_bits, .-ps_dimension_set_mask_bits
	.section	.text.ps_dimension_add_t1stem,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_dimension_add_t1stem, %function
ps_dimension_add_t1stem:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L89
	ldr	r3, [r7, #32]
	orr	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #4]
	cmn	r3, #21
	bne	.L90
	ldr	r3, [r7, #32]
	orr	r3, r3, #2
	str	r3, [r7, #32]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #8]
.L90:
	movs	r3, #0
	str	r3, [r7, #4]
.L89:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L91
	ldr	r3, [r7, #48]
	mov	r2, #-1
	str	r2, [r3]
.L91:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L92
.L95:
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L93
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L93
	b	.L94
.L93:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	adds	r3, r3, #12
	str	r3, [r7, #16]
.L92:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L95
.L94:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bcc	.L96
	ldr	r2, [r7, #12]
	add	r3, r7, #16
	mov	r0, r2
	ldr	r1, [r7]
	mov	r2, r3
	bl	ps_hint_table_alloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L97
	b	.L102
.L97:
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #32]
	str	r2, [r3, #8]
.L96:
	ldr	r3, [r7, #12]
	add	r2, r3, #12
	add	r3, r7, #20
	mov	r0, r2
	ldr	r1, [r7]
	mov	r2, r3
	bl	ps_mask_table_last(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L99
	b	.L102
.L99:
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #28]
	ldr	r2, [r7]
	bl	ps_mask_set_bit(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L100
	b	.L102
.L100:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L102
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #48]
	str	r2, [r3]
.L102:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_dimension_add_t1stem, .-ps_dimension_add_t1stem
	.section	.text.ps_dimension_add_counter,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_dimension_add_counter, %function
ps_dimension_add_counter:
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
	ldr	r3, [r3, #24]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	b	.L105
.L107:
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	ps_mask_test_bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L106
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	ps_mask_test_bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L106
	ldr	r3, [r7, #20]
	mov	r0, r3
	ldr	r1, [r7]
	bl	ps_mask_test_bit(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L106
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	adds	r3, r3, #16
	str	r3, [r7, #20]
.L105:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L107
.L106:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L108
	ldr	r3, [r7, #12]
	add	r2, r3, #24
	add	r3, r7, #20
	mov	r0, r2
	ldr	r1, [r7, #40]
	mov	r2, r3
	bl	ps_mask_table_alloc(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L108
	b	.L109
.L108:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L110
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #40]
	bl	ps_mask_set_bit(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L110
	b	.L109
.L110:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.L111
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #40]
	bl	ps_mask_set_bit(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L111
	b	.L109
.L111:
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L109
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #40]
	bl	ps_mask_set_bit(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L109
	nop
.L109:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_dimension_add_counter, .-ps_dimension_add_counter
	.section	.text.ps_dimension_end,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_dimension_end, %function
ps_dimension_end:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	ps_dimension_end_mask(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	ps_mask_table_merge_all(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_dimension_end, .-ps_dimension_end
	.section	.text.ps_hints_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hints_done, %function
ps_hints_done:
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
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	ps_dimension_done(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #52
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	ps_dimension_done(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hints_done, .-ps_hints_done
	.section	.text.ps_hints_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hints_init, %function
ps_hints_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #88
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hints_init, .-ps_hints_init
	.section	.text.ps_hints_open,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hints_open, %function
ps_hints_open:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	bl	ps_dimension_init(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #52
	mov	r0, r3
	bl	ps_dimension_init(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hints_open, .-ps_hints_open
	.section	.text.ps_hints_stem,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hints_stem, %function
ps_hints_stem:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L119
	b	.L118
.L119:
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bls	.L121
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
.L121:
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #16
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #28]
	b	.L122
.L124:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	adds	r3, r3, #4
	ldr	r3, [r3]
	movs	r1, #0
	str	r1, [sp]
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #24]
	bl	ps_dimension_add_t1stem(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L123
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	b	.L118
.L123:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7]
	adds	r3, r3, #8
	str	r3, [r7]
.L122:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L124
.L118:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hints_stem, .-ps_hints_stem
	.section	.text.ps_hints_t1stem3,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hints_t1stem3, %function
ps_hints_t1stem3:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #60
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L136
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bls	.L127
	ldr	r3, [r7, #8]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [r7, #8]
.L127:
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r3, r3, #16
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #1
	bne	.L128
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L129
.L132:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r4, r3, #16
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	add	r1, r7, #20
	ldr	r2, [r7, #40]
	lsls	r2, r2, #2
	add	r2, r2, r1
	str	r2, [sp]
	ldr	r0, [r7, #32]
	mov	r1, r4
	mov	r2, r3
	ldr	r3, [r7, #36]
	bl	ps_dimension_add_t1stem(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L130
	b	.L134
.L130:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	str	r3, [r7, #4]
.L129:
	ldr	r3, [r7, #40]
	cmp	r3, #2
	ble	.L132
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r0, [r7, #36]
	str	r0, [sp]
	ldr	r0, [r7, #32]
	bl	ps_dimension_add_counter(PLT)
	str	r0, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L126
	b	.L134
.L128:
	movs	r3, #6
	str	r3, [r7, #44]
	nop
	b	.L134
.L126:
	b	.L136
.L134:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #44]
	str	r2, [r3, #4]
	b	.L125
.L136:
	nop
.L125:
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ps_hints_t1stem3, .-ps_hints_t1stem3
	.section	.text.ps_hints_t1reset,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hints_t1reset, %function
ps_hints_t1reset:
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
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L138
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #1
	bne	.L139
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	ldr	r1, [r7]
	ldr	r2, [r7, #8]
	bl	ps_dimension_reset_mask(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L140
	b	.L141
.L140:
	ldr	r3, [r7, #4]
	adds	r3, r3, #52
	mov	r0, r3
	ldr	r1, [r7]
	ldr	r2, [r7, #8]
	bl	ps_dimension_reset_mask(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L138
	b	.L141
.L139:
	movs	r3, #6
	str	r3, [r7, #12]
	b	.L141
.L138:
	b	.L137
.L141:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #4]
.L137:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hints_t1reset, .-ps_hints_t1reset
	.section	.text.ps_hints_t2mask,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hints_t2mask, %function
ps_hints_t2mask:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L144
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	adds	r3, r3, #36
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	beq	.L145
	b	.L143
.L145:
	ldr	r3, [r7, #8]
	str	r3, [sp]
	ldr	r3, [r7, #28]
	str	r3, [sp, #4]
	ldr	r0, [r7, #32]
	ldr	r1, [r7]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #24]
	bl	ps_dimension_set_mask_bits(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L147
	b	.L148
.L147:
	ldr	r3, [r7, #32]
	adds	r3, r3, #36
	ldr	r2, [r7, #8]
	str	r2, [sp]
	ldr	r2, [r7, #28]
	str	r2, [sp, #4]
	mov	r0, r3
	ldr	r1, [r7]
	movs	r2, #0
	ldr	r3, [r7, #20]
	bl	ps_dimension_set_mask_bits(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L144
	b	.L148
.L144:
	b	.L143
.L148:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #4]
.L143:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hints_t2mask, .-ps_hints_t2mask
	.section	.text.ps_hints_t2counter,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hints_t2counter, %function
ps_hints_t2counter:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L150
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	adds	r3, r3, #36
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L151
	b	.L149
.L151:
	movs	r3, #0
	str	r3, [sp]
	ldr	r3, [r7, #28]
	str	r3, [sp, #4]
	ldr	r0, [r7, #32]
	ldr	r1, [r7, #4]
	movs	r2, #0
	ldr	r3, [r7, #24]
	bl	ps_dimension_set_mask_bits(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L153
	b	.L154
.L153:
	ldr	r3, [r7, #32]
	adds	r3, r3, #36
	movs	r2, #0
	str	r2, [sp]
	ldr	r2, [r7, #28]
	str	r2, [sp, #4]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #20]
	bl	ps_dimension_set_mask_bits(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L150
	b	.L154
.L150:
	b	.L149
.L154:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3, #4]
.L149:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hints_t2counter, .-ps_hints_t2counter
	.section	.text.ps_hints_close,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hints_close, %function
ps_hints_close:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L156
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	ldr	r1, [r7]
	ldr	r2, [r7, #16]
	bl	ps_dimension_end(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L156
	ldr	r3, [r7, #12]
	adds	r3, r3, #36
	mov	r0, r3
	ldr	r1, [r7]
	ldr	r2, [r7, #16]
	bl	ps_dimension_end(PLT)
	str	r0, [r7, #20]
.L156:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hints_close, .-ps_hints_close
	.section	.text.t1_hints_open,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_hints_open, %function
t1_hints_open:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	ps_hints_open(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_hints_open, .-t1_hints_open
	.section	.text.t1_hints_stem,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_hints_stem, %function
t1_hints_stem:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	str	r3, [r7, #20]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	movs	r2, #1
	bl	ps_hints_stem(PLT)
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_hints_stem, .-t1_hints_stem
	.section	.text.t1_hints_funcs_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_hints_funcs_init, %function
t1_hints_funcs_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L161
.LPIC5:
	add	r4, pc
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #28
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L161+4
.LPIC0:
	add	r2, pc
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L161+8
.LPIC1:
	add	r2, pc
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, .L161+12
.LPIC2:
	add	r2, pc
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, .L161+16
.LPIC3:
	add	r2, pc
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, .L161+20
.LPIC4:
	add	r2, pc
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L161+24
	ldr	r2, [r4, r2]
	str	r2, [r3, #24]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L162:
	.align	2
.L161:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	t1_hints_open-(.LPIC0+4)
	.word	ps_hints_close-(.LPIC1+4)
	.word	t1_hints_stem-(.LPIC2+4)
	.word	ps_hints_t1stem3-(.LPIC3+4)
	.word	ps_hints_t1reset-(.LPIC4+4)
	.word	ps_hints_apply(GOT)
	.size	t1_hints_funcs_init, .-t1_hints_funcs_init
	.section	.text.t2_hints_open,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t2_hints_open, %function
t2_hints_open:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	ps_hints_open(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t2_hints_open, .-t2_hints_open
	.section	.text.t2_hints_stems,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t2_hints_stems, %function
t2_hints_stems:
	@ args = 0, pretend = 0, frame = 160
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #160
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #152]
	movs	r3, #0
	str	r3, [r7, #156]
	b	.L165
.L171:
	ldr	r3, [r7, #152]
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #16
	ble	.L166
	movs	r3, #16
	str	r3, [r7, #4]
.L166:
	movs	r3, #0
	str	r3, [r7, #148]
	b	.L167
.L168:
	ldr	r3, [r7, #148]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r7, #156]
	add	r3, r3, r2
	str	r3, [r7, #156]
	ldr	r0, [r7, #156]
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	ldr	r3, [r7, #148]
	lsls	r3, r3, #2
	add	r0, r7, #160
	add	r3, r3, r0
	str	r2, [r3, #-140]
	ldr	r3, [r7, #148]
	adds	r3, r3, #1
	str	r3, [r7, #148]
.L167:
	ldr	r3, [r7, #4]
	lsls	r2, r3, #1
	ldr	r3, [r7, #148]
	cmp	r2, r3
	bgt	.L168
	movs	r3, #0
	str	r3, [r7, #148]
	b	.L169
.L170:
	ldr	r3, [r7, #148]
	adds	r1, r3, #1
	ldr	r3, [r7, #148]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r2, r7, #160
	add	r3, r3, r2
	ldr	r2, [r3, #-140]
	ldr	r3, [r7, #148]
	lsls	r3, r3, #2
	add	r0, r7, #160
	add	r3, r3, r0
	ldr	r3, [r3, #-140]
	subs	r2, r2, r3
	lsls	r3, r1, #2
	add	r1, r7, #160
	add	r3, r3, r1
	str	r2, [r3, #-140]
	ldr	r3, [r7, #148]
	adds	r3, r3, #2
	str	r3, [r7, #148]
.L169:
	ldr	r3, [r7, #4]
	lsls	r2, r3, #1
	ldr	r3, [r7, #148]
	cmp	r2, r3
	bgt	.L170
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	ps_hints_stem(PLT)
	ldr	r2, [r7, #152]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #152]
.L165:
	ldr	r3, [r7, #152]
	cmp	r3, #0
	bgt	.L171
	adds	r7, r7, #160
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t2_hints_stems, .-t2_hints_stems
	.section	.text.t2_hints_funcs_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t2_hints_funcs_init, %function
t2_hints_funcs_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L173
.LPIC11:
	add	r4, pc
	ldr	r0, [r7, #4]
	movs	r1, #0
	movs	r2, #28
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L173+4
.LPIC6:
	add	r2, pc
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L173+8
.LPIC7:
	add	r2, pc
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, .L173+12
.LPIC8:
	add	r2, pc
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, .L173+16
.LPIC9:
	add	r2, pc
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, .L173+20
.LPIC10:
	add	r2, pc
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	ldr	r2, .L173+24
	ldr	r2, [r4, r2]
	str	r2, [r3, #24]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L174:
	.align	2
.L173:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.word	t2_hints_open-(.LPIC6+4)
	.word	ps_hints_close-(.LPIC7+4)
	.word	t2_hints_stems-(.LPIC8+4)
	.word	ps_hints_t2mask-(.LPIC9+4)
	.word	ps_hints_t2counter-(.LPIC10+4)
	.word	ps_hints_apply(GOT)
	.size	t2_hints_funcs_init, .-t2_hints_funcs_init
	.section	.text.psh_globals_scale_widths,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_globals_scale_widths, %function
psh_globals_scale_widths:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movs	r2, #204
	mul	r3, r2, r3
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #196]
	str	r3, [r7, #8]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L175
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #32]
	str	r2, [r3, #4]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #32]
	str	r2, [r3, #8]
	ldr	r3, [r7, #32]
	adds	r3, r3, #12
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	b	.L177
.L180:
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bge	.L178
	ldr	r3, [r7, #24]
	negs	r3, r3
	str	r3, [r7, #24]
.L178:
	ldr	r3, [r7, #24]
	cmp	r3, #127
	bgt	.L179
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #28]
.L179:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #28]
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #32]
	str	r2, [r3, #8]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #12
	str	r3, [r7, #32]
.L177:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L180
.L175:
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_globals_scale_widths, .-psh_globals_scale_widths
	.section	.text.psh_blues_set_zones_0,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_blues_set_zones_0, %function
psh_blues_set_zones_0:
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #60
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r2, [r7, #4]
	str	r3, [r7]
	mov	r3, r1
	strb	r3, [r7, #11]
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	str	r3, [r7, #48]
	movs	r3, #1
	strb	r3, [r7, #47]
	b	.L182
.L198:
	movs	r3, #0
	strb	r3, [r7, #23]
	ldrb	r3, [r7, #47]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L183
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L184
.L183:
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #40]
	ldr	r3, [r7]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #76]
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #48]
	str	r3, [r7, #32]
	movs	r3, #0
	strb	r3, [r7, #47]
	b	.L185
.L184:
	ldr	r3, [r7]
	ldrh	r3, [r3]
	sxth	r3, r3
	str	r3, [r7, #40]
	ldr	r3, [r7]
	adds	r3, r3, #2
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #72]
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #52]
	str	r3, [r7, #32]
	movs	r3, #1
	strb	r3, [r7, #23]
.L185:
	ldr	r3, [r7, #28]
	str	r3, [r7, #24]
	b	.L186
.L194:
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	ble	.L187
	b	.L188
.L187:
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bne	.L189
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L190
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bge	.L192
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #36]
	str	r2, [r3, #4]
	b	.L193
.L190:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L192
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #36]
	str	r2, [r3, #4]
	b	.L193
.L192:
	b	.L193
.L189:
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	adds	r3, r3, #32
	str	r3, [r7, #24]
.L186:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L194
.L188:
	b	.L195
.L196:
	ldr	r3, [r7, #32]
	lsls	r3, r3, #5
	ldr	r2, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #32]
	add	r3, r3, #134217728
	subs	r3, r3, #1
	lsls	r3, r3, #5
	ldr	r1, [r7, #24]
	add	r3, r3, r1
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
.L195:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L196
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #40]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #36]
	str	r2, [r3, #4]
	ldrb	r3, [r7, #23]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L197
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	b	.L193
.L197:
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L193:
	ldr	r3, [r7]
	adds	r3, r3, #4
	str	r3, [r7]
	ldr	r3, [r7, #4]
	subs	r3, r3, #2
	str	r3, [r7, #4]
.L182:
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bhi	.L198
	ldr	r3, [r7, #72]
	ldr	r2, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #48]
	str	r2, [r3]
	adds	r7, r7, #60
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	psh_blues_set_zones_0, .-psh_blues_set_zones_0
	.section	.text.psh_blues_set_zones,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_blues_set_zones, %function
psh_blues_set_zones:
	@ args = 12, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #88]
	cmp	r3, #0
	beq	.L200
	ldr	r3, [r7, #12]
	add	r3, r3, #1032
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	addw	r3, r3, #1548
	str	r3, [r7, #64]
	b	.L201
.L200:
	ldr	r3, [r7, #12]
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	add	r3, r3, #516
	str	r3, [r7, #64]
.L201:
	ldr	r3, [r7, #68]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #64]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #68]
	str	r3, [sp]
	ldr	r3, [r7, #64]
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #0
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	psh_blues_set_zones_0(PLT)
	ldr	r3, [r7, #68]
	str	r3, [sp]
	ldr	r3, [r7, #64]
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #1
	ldr	r2, [r7]
	ldr	r3, [r7, #80]
	bl	psh_blues_set_zones_0(PLT)
	ldr	r3, [r7, #68]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L202
	ldr	r3, [r7, #68]
	adds	r3, r3, #4
	str	r3, [r7, #60]
	ldr	r3, [r7, #40]
	str	r3, [r7, #8]
	b	.L203
.L205:
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bls	.L204
	ldr	r3, [r7, #60]
	adds	r3, r3, #32
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	ble	.L204
	ldr	r3, [r7, #60]
	ldr	r2, [r7, #32]
	str	r2, [r3, #4]
.L204:
	ldr	r3, [r7, #60]
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	str	r2, [r3, #12]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #60]
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #60]
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #60]
	adds	r3, r3, #32
	str	r3, [r7, #60]
.L203:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L205
.L202:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L206
	ldr	r3, [r7, #64]
	adds	r3, r3, #4
	str	r3, [r7, #56]
	ldr	r3, [r7, #36]
	str	r3, [r7, #8]
	b	.L207
.L209:
	ldr	r3, [r7, #8]
	cmp	r3, #1
	bls	.L208
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	adds	r3, r3, #32
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bge	.L208
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #28]
	str	r2, [r3, #4]
.L208:
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	str	r2, [r3, #8]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #12]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #56]
	adds	r3, r3, #32
	str	r3, [r7, #56]
.L207:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L209
.L206:
	ldr	r3, [r7, #68]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #40]
	str	r3, [r7, #8]
	movs	r3, #1
	str	r3, [r7, #52]
	b	.L210
.L216:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L211
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #84]
	subs	r2, r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #12]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
	b	.L212
.L215:
	ldr	r3, [r7, #44]
	adds	r3, r3, #32
	ldr	r3, [r3, #12]
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bge	.L213
	ldr	r3, [r7, #44]
	adds	r3, r3, #32
	ldr	r2, [r7, #20]
	lsrs	r1, r2, #31
	add	r2, r2, r1
	asrs	r2, r2, #1
	mov	r1, r2
	ldr	r2, [r7, #48]
	add	r2, r2, r1
	str	r2, [r3, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
	b	.L214
.L213:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
	ldr	r3, [r7, #44]
	adds	r3, r3, #32
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #84]
	subs	r2, r1, r2
	str	r2, [r3, #12]
.L214:
	ldr	r3, [r7, #44]
	adds	r3, r3, #32
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	str	r3, [r7, #8]
.L212:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L215
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #84]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #8]
.L211:
	ldr	r3, [r7, #64]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #36]
	str	r3, [r7, #8]
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L210:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bge	.L216
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_blues_set_zones, .-psh_blues_set_zones
	.section	.text.psh_blues_scale_zones,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_blues_scale_zones, %function
psh_blues_scale_zones:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #52]
	ldr	r2, [r7, #8]
	movw	r3, #18873
	movt	r3, 524
	cmp	r2, r3
	ble	.L218
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2064]
	lsls	r2, r3, #3
	movw	r3, #19923
	movt	r3, 4194
	smull	r1, r3, r3, r2
	asrs	r1, r3, #3
	asrs	r3, r2, #31
	subs	r2, r1, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #2080]
	b	.L219
.L218:
	ldr	r2, [r7, #8]
	mov	r3, r2
	lsls	r3, r3, #5
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2064]
	lsls	r3, r3, #3
	cmp	r2, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #2080]
.L219:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2068]
	str	r3, [r7, #48]
	b	.L220
.L222:
	ldr	r3, [r7, #48]
	subs	r3, r3, #1
	str	r3, [r7, #48]
.L220:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	ble	.L221
	ldr	r0, [r7, #48]
	ldr	r1, [r7, #8]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	cmp	r3, #32
	bgt	.L222
.L221:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #48]
	str	r2, [r3, #2072]
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L223
.L231:
	ldr	r3, [r7, #56]
	cmp	r3, #1
	beq	.L225
	cmp	r3, #1
	bcc	.L226
	cmp	r3, #2
	beq	.L227
	b	.L244
.L226:
	ldr	r3, [r7, #12]
	str	r3, [r7, #52]
	b	.L228
.L225:
	ldr	r3, [r7, #12]
	add	r3, r3, #516
	str	r3, [r7, #52]
	b	.L228
.L227:
	ldr	r3, [r7, #12]
	add	r3, r3, #1032
	str	r3, [r7, #52]
	b	.L228
.L244:
	ldr	r3, [r7, #12]
	addw	r3, r3, #1548
	str	r3, [r7, #52]
	nop
.L228:
	ldr	r3, [r7, #52]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #52]
	ldr	r3, [r3]
	str	r3, [r7, #60]
	b	.L229
.L230:
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #8]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #28]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #12]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #24]
	ldr	r3, [r7, #44]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3, #16]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	str	r2, [r3, #20]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #16]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #44]
	str	r2, [r3, #16]
	ldr	r3, [r7, #60]
	subs	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #44]
	adds	r3, r3, #32
	str	r3, [r7, #44]
.L229:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L230
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L223:
	ldr	r3, [r7, #56]
	cmp	r3, #3
	bls	.L231
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L232
.L243:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L245
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	add	r3, r3, #1032
	str	r3, [r7, #20]
	b	.L235
.L245:
	ldr	r3, [r7, #12]
	add	r3, r3, #516
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	addw	r3, r3, #1548
	str	r3, [r7, #20]
.L235:
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	str	r3, [r7, #40]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	b	.L236
.L242:
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	b	.L237
.L241:
	ldr	r3, [r7, #40]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bge	.L238
	ldr	r3, [r7, #16]
	negs	r3, r3
	str	r3, [r7, #16]
.L238:
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #8]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	cmp	r3, #63
	bgt	.L239
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #40]
	str	r2, [r3, #28]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #40]
	str	r2, [r3, #24]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #40]
	str	r2, [r3, #16]
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #40]
	str	r2, [r3, #20]
	b	.L240
.L239:
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	adds	r3, r3, #32
	str	r3, [r7, #36]
.L237:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L241
.L240:
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #40]
	adds	r3, r3, #32
	str	r3, [r7, #40]
.L236:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L242
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L232:
	ldr	r3, [r7, #56]
	cmp	r3, #1
	bls	.L243
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_blues_scale_zones, .-psh_blues_scale_zones
	.section	.text.psh_calc_max_height,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_calc_max_height, %function
psh_calc_max_height:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L247
.L249:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	lsls	r3, r3, #1
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	ldrh	r3, [r3]
	uxth	r2, r3
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r1, [r7, #8]
	add	r3, r3, r1
	ldrh	r3, [r3]
	uxth	r3, r3
	subs	r3, r2, r3
	uxth	r3, r3
	strh	r3, [r7, #18]	@ movhi
	ldrsh	r2, [r7, #18]
	ldrsh	r3, [r7, #6]
	cmp	r2, r3
	ble	.L248
	ldrh	r3, [r7, #18]	@ movhi
	strh	r3, [r7, #6]	@ movhi
.L248:
	ldr	r3, [r7, #20]
	adds	r3, r3, #2
	str	r3, [r7, #20]
.L247:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L249
	ldrh	r3, [r7, #6]
	sxth	r3, r3
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_calc_max_height, .-psh_calc_max_height
	.section	.text.psh_blues_snap_stem,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_blues_snap_stem, %function
psh_blues_snap_stem:
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
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #2080]	@ zero_extendqisi2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	adds	r3, r3, #4
	str	r3, [r7, #32]
	b	.L252
.L258:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2076]
	negs	r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L253
	b	.L254
.L253:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2076]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	blt	.L255
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L256
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #2072]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	blt	.L257
.L256:
	ldr	r3, [r7]
	ldr	r3, [r3]
	orr	r2, r3, #1
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	b	.L254
.L257:
	b	.L254
.L255:
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #32
	str	r3, [r7, #32]
.L252:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L258
.L254:
	ldr	r3, [r7, #12]
	add	r3, r3, #516
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	lsls	r3, r3, #5
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #32]
	b	.L259
.L265:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2076]
	negs	r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L260
	b	.L251
.L260:
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #2076]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bgt	.L262
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L263
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #2072]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	ble	.L264
.L263:
	ldr	r3, [r7]
	ldr	r3, [r3]
	orr	r2, r3, #2
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	str	r2, [r3, #8]
	b	.L251
.L264:
	b	.L251
.L262:
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	subs	r3, r3, #32
	str	r3, [r7, #32]
.L259:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L265
.L251:
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_blues_snap_stem, .-psh_blues_snap_stem
	.section	.text.psh_globals_destroy,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_globals_destroy, %function
psh_globals_destroy:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L266
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #208]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #412]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #928]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1444]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #1960]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #4]
.L266:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_globals_destroy, .-psh_globals_destroy
	.section	.text.psh_globals_new,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_globals_new, %function
psh_globals_new:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #36]
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, #2496
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L269
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #208
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #120]
	mov	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r3, r3, #12
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	adds	r3, r3, #128
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #124]	@ zero_extendqisi2
	str	r3, [r7, #52]
	b	.L270
.L271:
	ldr	r3, [r7, #48]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #44]
	str	r2, [r3]
	ldr	r3, [r7, #44]
	adds	r3, r3, #12
	str	r3, [r7, #44]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L270:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L271
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #124]	@ zero_extendqisi2
	adds	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #4
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r3, r3, #4
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #122]
	mov	r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r3, r3, #12
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	adds	r3, r3, #154
	str	r3, [r7, #48]
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #125]	@ zero_extendqisi2
	str	r3, [r7, #52]
	b	.L272
.L273:
	ldr	r3, [r7, #48]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #40]
	str	r2, [r3]
	ldr	r3, [r7, #40]
	adds	r3, r3, #12
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	adds	r3, r3, #2
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
.L272:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L273
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #125]	@ zero_extendqisi2
	adds	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	add	r0, r3, #412
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r2, r3, #12
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	ldr	r4, [r7, #8]
	add	r5, r4, #40
	ldr	r4, [r7, #8]
	ldr	r4, [r4, #116]
	str	r5, [sp]
	str	r4, [sp, #4]
	movs	r4, #0
	str	r4, [sp, #8]
	bl	psh_blues_set_zones(PLT)
	ldr	r3, [r7, #36]
	add	r0, r3, #412
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r2, r3, #60
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	ldr	r4, [r7, #8]
	add	r5, r4, #88
	ldr	r4, [r7, #8]
	ldr	r4, [r4, #116]
	str	r5, [sp]
	str	r4, [sp, #4]
	movs	r4, #1
	str	r4, [sp, #8]
	bl	psh_blues_set_zones(PLT)
	movs	r3, #1
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #8]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r2, r3, #12
	ldrsh	r3, [r7, #26]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	psh_calc_max_height(PLT)
	mov	r3, r0
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #9]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r2, r3, #40
	ldrsh	r3, [r7, #26]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	psh_calc_max_height(PLT)
	mov	r3, r0
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #10]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r2, r3, #60
	ldrsh	r3, [r7, #26]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	psh_calc_max_height(PLT)
	mov	r3, r0
	strh	r3, [r7, #26]	@ movhi
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #11]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [r7, #8]
	add	r2, r3, #88
	ldrsh	r3, [r7, #26]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	psh_calc_max_height(PLT)
	mov	r3, r0
	strh	r3, [r7, #26]	@ movhi
	ldrsh	r3, [r7, #26]
	mov	r0, #1000
	mov	r1, r3
	bl	FT_DivFix(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #108]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	it	ge
	movge	r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #2476]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #112]
	ldr	r3, [r7, #36]
	str	r2, [r3, #2480]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #116]
	ldr	r3, [r7, #36]
	str	r2, [r3, #2488]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #200]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #204]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #404]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #408]
.L269:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	psh_globals_new, .-psh_globals_new
	.section	.text.psh_globals_set_scale,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_globals_set_scale, %function
psh_globals_set_scale:
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
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #196]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L276
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #200]
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L277
.L276:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #8]
	str	r2, [r3, #196]
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3, #200]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	psh_globals_scale_widths(PLT)
.L277:
	ldr	r3, [r7, #12]
	adds	r3, r3, #208
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #196]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L278
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #200]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	beq	.L275
.L278:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #196]
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #32]
	str	r2, [r3, #200]
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	psh_globals_scale_widths(PLT)
	ldr	r3, [r7, #12]
	add	r3, r3, #412
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7, #32]
	bl	psh_blues_scale_zones(PLT)
.L275:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_globals_set_scale, .-psh_globals_set_scale
	.section	.text.psh_globals_funcs_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_globals_funcs_init, %function
psh_globals_funcs_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L281
.LPIC12:
	add	r2, pc
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, .L281+4
.LPIC13:
	add	r2, pc
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, .L281+8
.LPIC14:
	add	r2, pc
	str	r2, [r3, #8]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L282:
	.align	2
.L281:
	.word	psh_globals_new-(.LPIC12+4)
	.word	psh_globals_set_scale-(.LPIC13+4)
	.word	psh_globals_destroy-(.LPIC14+4)
	.size	psh_globals_funcs_init, .-psh_globals_funcs_init
	.section	.text.psh_hint_overlap,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_overlap, %function
psh_hint_overlap:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L284
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L284
	movs	r3, #1
	b	.L285
.L284:
	movs	r3, #0
.L285:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_hint_overlap, .-psh_hint_overlap
	.section	.text.psh_hint_table_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_table_done, %function
psh_hint_table_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r0, [r7]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_hint_table_done, .-psh_hint_table_done
	.section	.text.psh_hint_table_deactivate,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_table_deactivate, %function
psh_hint_table_deactivate:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	b	.L289
.L290:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	bic	r2, r3, #4
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	mov	r2, #-1
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #28
	str	r3, [r7, #8]
.L289:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L290
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_hint_table_deactivate, .-psh_hint_table_deactivate
	.section	.text.psh_hint_table_record,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_table_record, %function
psh_hint_table_record:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L292
	b	.L291
.L292:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	and	r3, r3, #4
	cmp	r3, #0
	beq	.L294
	b	.L291
.L294:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	orr	r2, r3, #4
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	b	.L295
.L298:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	psh_hint_overlap(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L296
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #20]
	b	.L297
.L296:
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
.L295:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L298
.L297:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	bcs	.L291
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	str	r2, [r3]
.L291:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_hint_table_record, .-psh_hint_table_record
	.section	.text.psh_hint_table_record_mask,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_table_record_mask, %function
psh_hint_table_record_mask:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L300
.L303:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L301
	ldr	r3, [r7, #20]
	adds	r2, r3, #1
	str	r2, [r7, #20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #24]
	movs	r3, #128
	str	r3, [r7, #28]
.L301:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L302
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #16]
	bl	psh_hint_table_record(PLT)
.L302:
	ldr	r3, [r7, #28]
	asrs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L300:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L303
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_hint_table_record_mask, .-psh_hint_table_record_mask
	.section	.text.psh_hint_table_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_table_init, %function
psh_hint_table_init:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #48]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L305
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #48]
	movs	r1, #28
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L305
	ldr	r3, [r7, #36]
	lsls	r3, r3, #1
	adds	r3, r3, #1
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #16
	str	r2, [sp, #4]
	ldr	r0, [r7, #48]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L305
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	b	.L306
.L307:
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #32]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #32]
	str	r2, [r3, #16]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #32]
	adds	r3, r3, #28
	str	r3, [r7, #32]
	ldr	r3, [r7, #28]
	adds	r3, r3, #12
	str	r3, [r7, #28]
.L306:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L307
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L308
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #32]
	b	.L309
.L310:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #24]
	bl	psh_hint_table_record_mask(PLT)
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r3, [r7, #24]
	adds	r3, r3, #16
	str	r3, [r7, #24]
.L309:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L310
.L308:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L305
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L311
.L312:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #20]
	bl	psh_hint_table_record(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L311:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bcc	.L312
.L305:
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_hint_table_init, .-psh_hint_table_init
	.section	.text.psh_hint_table_activate_mask,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_table_activate_mask, %function
psh_hint_table_activate_mask:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #56]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	str	r3, [r7, #52]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r0, [r7, #4]
	bl	psh_hint_table_deactivate(PLT)
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L315
.L318:
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L316
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	str	r2, [r7, #52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #56]
	movs	r3, #128
	str	r3, [r7, #60]
.L316:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #60]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L317
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L317
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L317
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	orr	r2, r3, #4
	ldr	r3, [r7, #28]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bls	.L317
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #44]
	adds	r1, r3, #1
	str	r1, [r7, #44]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	str	r2, [r3]
.L317:
	ldr	r3, [r7, #60]
	asrs	r3, r3, #1
	str	r3, [r7, #60]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L315:
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bcc	.L318
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #44]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
	movs	r3, #1
	str	r3, [r7, #40]
	b	.L319
.L324:
	ldr	r3, [r7, #40]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #40]
	subs	r3, r3, #1
	str	r3, [r7, #36]
	b	.L320
.L323:
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L321
	b	.L322
.L321:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L320:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bge	.L323
.L322:
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L319:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bgt	.L324
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_hint_table_activate_mask, .-psh_hint_table_activate_mask
	.section	.text.psh_dimension_quantize_len,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_dimension_quantize_len, %function
psh_dimension_quantize_len:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strb	r3, [r7, #7]
	ldr	r3, [r7, #8]
	cmp	r3, #64
	bgt	.L326
	movs	r3, #64
	str	r3, [r7, #8]
	b	.L327
.L326:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bge	.L328
	ldr	r3, [r7, #20]
	negs	r3, r3
	str	r3, [r7, #20]
.L328:
	ldr	r3, [r7, #20]
	cmp	r3, #39
	bgt	.L329
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #47
	bgt	.L329
	movs	r3, #48
	str	r3, [r7, #8]
.L329:
	ldr	r3, [r7, #8]
	cmp	r3, #191
	bgt	.L330
	ldr	r3, [r7, #8]
	and	r3, r3, #63
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	bic	r3, r3, #63
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #9
	bgt	.L331
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #8]
	b	.L327
.L331:
	ldr	r3, [r7, #20]
	cmp	r3, #31
	bgt	.L333
	ldr	r3, [r7, #8]
	adds	r3, r3, #10
	str	r3, [r7, #8]
	b	.L327
.L333:
	ldr	r3, [r7, #20]
	cmp	r3, #53
	bgt	.L334
	ldr	r3, [r7, #8]
	adds	r3, r3, #54
	str	r3, [r7, #8]
	b	.L327
.L334:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #8]
	b	.L327
.L330:
	ldr	r3, [r7, #8]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #8]
.L327:
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L335
	ldr	r3, [r7, #8]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #8]
.L335:
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_dimension_quantize_len, .-psh_dimension_quantize_len
	.section	.text.psh_hint_snap_stem_side_delta,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_snap_stem_side_delta, %function
psh_hint_snap_stem_side_delta:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #4]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r3, r3, r2
	adds	r3, r3, #32
	bic	r2, r3, #63
	ldr	r3, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #8]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	cmp	r2, r3
	bgt	.L338
	ldr	r3, [r7, #12]
	b	.L339
.L338:
	ldr	r3, [r7, #8]
.L339:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_hint_snap_stem_side_delta, .-psh_hint_snap_stem_side_delta
	.section	.text.psh_hint_align,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_align, %function
psh_hint_align:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #96
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	movs	r2, #204
	mul	r3, r2, r3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #196]
	str	r3, [r7, #72]
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #200]
	str	r3, [r7, #68]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L340
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	str	r3, [r7, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L342
	ldr	r3, [r7]
	ldrb	r3, [r3, #120]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L343
.L342:
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L344
	ldr	r3, [r7]
	ldrb	r3, [r3, #121]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L344
.L343:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #92]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #88]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	orr	r2, r3, #8
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	b	.L340
.L344:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L345
	ldr	r3, [r7]
	ldrb	r3, [r3, #122]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L346
.L345:
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L347
	ldr	r3, [r7]
	ldrb	r3, [r3, #123]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L347
.L346:
	movs	r3, #1
	b	.L348
.L347:
	movs	r3, #0
.L348:
	str	r3, [r7, #64]
	ldr	r3, [r7, #88]
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #60]
	str	r2, [r3, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	bne	.L349
	ldr	r3, [r7, #8]
	add	r0, r3, #412
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r1, r2, r3
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	add	r3, r7, #20
	bl	psh_blues_snap_stem(PLT)
.L349:
	ldr	r3, [r7, #20]
	cmp	r3, #2
	beq	.L351
	cmp	r3, #3
	beq	.L352
	cmp	r3, #1
	bne	.L375
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #60]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	b	.L354
.L351:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	b	.L354
.L352:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	b	.L354
.L375:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L355
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #16]
	and	r3, r3, #8
	cmp	r3, #0
	bne	.L356
	ldr	r0, [r7, #56]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	psh_hint_align(PLT)
.L356:
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	asrs	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #52]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	asrs	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	asrs	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #72]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #40]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #40]
	add	r2, r2, r3
	ldr	r3, [r7, #88]
	asrs	r3, r3, #1
	subs	r3, r2, r3
	str	r3, [r7, #92]
.L355:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #92]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #60]
	str	r2, [r3, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #124]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L357
	ldr	r3, [r7, #88]
	cmp	r3, #64
	bgt	.L358
	ldr	r3, [r7, #88]
	cmp	r3, #31
	ble	.L359
	ldr	r3, [r7, #88]
	asrs	r2, r3, #1
	ldr	r3, [r7, #92]
	add	r3, r3, r2
	bic	r3, r3, #63
	str	r3, [r7, #92]
	movs	r3, #64
	str	r3, [r7, #88]
	b	.L357
.L359:
	ldr	r3, [r7, #88]
	cmp	r3, #0
	ble	.L361
	ldr	r3, [r7, #92]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #36]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #88]
	add	r3, r3, r2
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #32]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #92]
	subs	r3, r2, r3
	str	r3, [r7, #84]
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #88]
	add	r3, r3, r2
	ldr	r2, [r7, #32]
	subs	r3, r2, r3
	str	r3, [r7, #80]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	bge	.L362
	ldr	r3, [r7, #84]
	negs	r3, r3
	str	r3, [r7, #84]
.L362:
	ldr	r3, [r7, #80]
	cmp	r3, #0
	bge	.L363
	ldr	r3, [r7, #80]
	negs	r3, r3
	str	r3, [r7, #80]
.L363:
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #80]
	cmp	r2, r3
	bgt	.L364
	ldr	r3, [r7, #36]
	str	r3, [r7, #92]
	b	.L357
.L364:
	ldr	r3, [r7, #32]
	str	r3, [r7, #92]
	b	.L357
.L361:
	ldr	r3, [r7, #92]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #92]
	b	.L357
.L358:
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #88]
	movs	r2, #0
	bl	psh_dimension_quantize_len(PLT)
	str	r0, [r7, #88]
.L357:
	ldr	r0, [r7, #92]
	ldr	r1, [r7, #88]
	bl	psh_hint_snap_stem_side_delta(PLT)
	mov	r2, r0
	ldr	r3, [r7, #92]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #88]
	str	r2, [r3, #12]
.L354:
	ldr	r3, [r7, #64]
	cmp	r3, #0
	beq	.L366
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #88]
	ldr	r3, [r7, #88]
	cmp	r3, #63
	bgt	.L367
	movs	r3, #64
	str	r3, [r7, #88]
	b	.L368
.L367:
	ldr	r3, [r7, #88]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #88]
.L368:
	ldr	r3, [r7, #20]
	cmp	r3, #2
	beq	.L370
	cmp	r3, #3
	beq	.L377
	cmp	r3, #1
	bne	.L376
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #88]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #88]
	str	r2, [r3, #12]
	b	.L366
.L370:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #88]
	str	r2, [r3, #12]
	b	.L366
.L376:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #88]
	str	r2, [r3, #12]
	ldr	r3, [r7, #88]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L373
	ldr	r3, [r7, #88]
	asrs	r2, r3, #1
	ldr	r3, [r7, #92]
	add	r3, r3, r2
	bic	r3, r3, #63
	adds	r3, r3, #32
	str	r3, [r7, #92]
	b	.L374
.L373:
	ldr	r3, [r7, #88]
	asrs	r2, r3, #1
	ldr	r3, [r7, #92]
	add	r3, r3, r2
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #92]
.L374:
	ldr	r3, [r7, #88]
	asrs	r3, r3, #1
	ldr	r2, [r7, #92]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #88]
	str	r2, [r3, #12]
	b	.L366
.L377:
	nop
.L366:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	orr	r2, r3, #8
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
.L340:
	adds	r7, r7, #96
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_hint_align, .-psh_hint_align
	.section	.text.psh_hint_table_align_hints,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_table_align_hints, %function
psh_hint_table_align_hints:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	b	.L379
.L380:
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	psh_hint_align(PLT)
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #28
	str	r3, [r7, #20]
.L379:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L380
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_hint_table_align_hints, .-psh_hint_table_align_hints
	.section	.text.psh_glyph_compute_inflections,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_compute_inflections, %function
psh_glyph_compute_inflections:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L382
.L397:
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #3
	bhi	.L383
	b	.L384
.L383:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	str	r3, [r7, #56]
.L387:
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #4]
	str	r3, [r7, #52]
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L385
	b	.L384
.L385:
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	subs	r3, r2, r3
	str	r3, [r7, #40]
	ldr	r3, [r7, #52]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #32]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L386
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L387
.L386:
	ldr	r3, [r7, #56]
	str	r3, [r7, #48]
.L390:
	ldr	r3, [r7, #48]
	str	r3, [r7, #56]
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L388
	b	.L384
.L388:
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #28]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #32]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L389
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L390
.L389:
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	bl	ft_corner_orientation(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #0
	beq	.L390
	ldr	r3, [r7, #56]
	str	r3, [r7, #24]
	ldr	r3, [r7, #20]
	str	r3, [r7, #40]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
.L396:
	ldr	r3, [r7, #52]
	str	r3, [r7, #44]
.L393:
	ldr	r3, [r7, #44]
	str	r3, [r7, #52]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #4]
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L391
	movs	r3, #1
	str	r3, [r7, #28]
.L391:
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #28]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #44]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #52]
	ldr	r3, [r3, #32]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L392
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L393
.L392:
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #36]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	bl	ft_corner_orientation(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L393
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #32]
	eors	r3, r3, r2
	cmp	r3, #0
	bge	.L394
.L395:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	orr	r2, r3, #4
	ldr	r3, [r7, #56]
	str	r2, [r3, #12]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	str	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bne	.L395
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #12]
	orr	r2, r3, #4
	ldr	r3, [r7, #56]
	str	r2, [r3, #12]
.L394:
	ldr	r3, [r7, #52]
	str	r3, [r7, #56]
	ldr	r3, [r7, #44]
	str	r3, [r7, #52]
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
	ldr	r3, [r7, #20]
	str	r3, [r7, #40]
	ldr	r3, [r7, #16]
	str	r3, [r7, #36]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L396
.L384:
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L382:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bhi	.L397
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_glyph_compute_inflections, .-psh_glyph_compute_inflections
	.section	.text.psh_glyph_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_done, %function
psh_glyph_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #68
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	psh_hint_table_done(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #28
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	psh_hint_table_done(PLT)
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
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_glyph_done, .-psh_glyph_done
	.section	.text.psh_compute_dir,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_compute_dir, %function
psh_compute_dir:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bge	.L400
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.L401
	movs	r3, #2
	b	.L402
.L401:
	mvn	r3, #1
.L402:
	str	r3, [r7, #20]
	b	.L403
.L400:
	ldr	r2, [r7, #16]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bge	.L403
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L404
	mov	r3, #-1
	b	.L405
.L404:
	movs	r3, #1
.L405:
	str	r3, [r7, #20]
.L403:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_compute_dir, .-psh_compute_dir
	.section	.text.psh_glyph_load_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_load_points, %function
psh_glyph_load_points:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	b	.L408
.L411:
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L409
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3, #28]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	str	r2, [r3, #32]
	b	.L410
.L409:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	str	r2, [r3, #28]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3, #32]
.L410:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	adds	r3, r3, #40
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	str	r3, [r7, #20]
.L408:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L411
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_glyph_load_points, .-psh_glyph_load_points
	.section	.text.psh_glyph_save_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_save_points, %function
psh_glyph_save_points:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r3, [r3, #8]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L413
.L419:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L414
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #36]
	str	r2, [r3]
	b	.L415
.L414:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	ldr	r2, [r2, #36]
	str	r2, [r3, #4]
.L415:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #16]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L416
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r1, [r7, #8]
	ldr	r3, [r7, #20]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r1, r3
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L417
	movs	r3, #32
	b	.L418
.L417:
	movs	r3, #64
.L418:
	orrs	r3, r3, r1
	uxtb	r3, r3
	uxtb	r3, r3
	strb	r3, [r2]
.L416:
	ldr	r3, [r7, #16]
	adds	r3, r3, #40
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L413:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L419
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_glyph_save_points, .-psh_glyph_save_points
	.section	.text.psh_glyph_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_init, %function
psh_glyph_init:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #108
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #128
	bl	memset(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #64]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #64]
	movs	r1, #40
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L421
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	sxth	r3, r3
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #20
	str	r2, [sp, #4]
	ldr	r0, [r7, #64]
	movs	r1, #8
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L421
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #2]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	sxth	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	movs	r3, #0
	str	r3, [r7, #92]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #84]
	movs	r3, #0
	str	r3, [r7, #88]
	b	.L422
.L426:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #88]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	adds	r3, r3, #1
	str	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #92]
	subs	r3, r2, r3
	str	r3, [r7, #80]
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r2, r2, r3
	ldr	r3, [r7, #84]
	str	r2, [r3]
	ldr	r3, [r7, #84]
	ldr	r2, [r7, #80]
	str	r2, [r3, #4]
	ldr	r3, [r7, #80]
	cmp	r3, #0
	beq	.L423
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	str	r3, [r7, #76]
	ldr	r2, [r7, #56]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	subs	r3, r3, #40
	ldr	r2, [r7, #60]
	add	r2, r2, r3
	ldr	r3, [r7, #76]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #84]
	str	r2, [r3, #8]
	b	.L424
.L425:
	ldr	r3, [r7, #76]
	add	r2, r3, #40
	ldr	r3, [r7, #76]
	str	r2, [r3, #4]
	ldr	r3, [r7, #76]
	adds	r3, r3, #40
	ldr	r2, [r7, #76]
	str	r2, [r3]
	ldr	r3, [r7, #76]
	adds	r3, r3, #40
	str	r3, [r7, #76]
	ldr	r3, [r7, #76]
	ldr	r2, [r7, #84]
	str	r2, [r3, #8]
	ldr	r3, [r7, #80]
	subs	r3, r3, #1
	str	r3, [r7, #80]
.L424:
	ldr	r3, [r7, #80]
	cmp	r3, #1
	bhi	.L425
	ldr	r2, [r7, #92]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #60]
	add	r2, r2, r3
	ldr	r3, [r7, #76]
	str	r2, [r3, #4]
.L423:
	ldr	r3, [r7, #84]
	adds	r3, r3, #8
	str	r3, [r7, #84]
	ldr	r3, [r7, #56]
	str	r3, [r7, #92]
	ldr	r3, [r7, #88]
	adds	r3, r3, #1
	str	r3, [r7, #88]
.L422:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bhi	.L426
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	str	r3, [r7, #72]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	str	r3, [r7, #48]
	movs	r3, #0
	str	r3, [r7, #68]
	b	.L427
.L432:
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	asrs	r2, r3, #3
	movw	r3, #52429
	movt	r3, 52428
	mul	r3, r3, r2
	str	r3, [r7, #44]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #52]
	subs	r3, r2, r3
	asrs	r2, r3, #3
	movw	r3, #52429
	movt	r3, 52428
	mul	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #68]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L428
	ldr	r3, [r7, #72]
	movs	r2, #1
	str	r2, [r3, #12]
.L428:
	ldr	r3, [r7, #68]
	lsls	r3, r3, #3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #3
	ldr	r1, [r7, #48]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #68]
	lsls	r3, r3, #3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #3
	ldr	r1, [r7, #48]
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #32]
	bl	psh_compute_dir(PLT)
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [r7, #72]
	strb	r2, [r3, #20]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	lsls	r3, r3, #3
	ldr	r1, [r7, #48]
	add	r3, r3, r1
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #3
	ldr	r2, [r7, #48]
	add	r3, r3, r2
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #68]
	lsls	r3, r3, #3
	ldr	r1, [r7, #48]
	add	r3, r3, r1
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r0, [r7, #28]
	ldr	r1, [r7, #24]
	bl	psh_compute_dir(PLT)
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [r7, #72]
	strb	r2, [r3, #21]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #12]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L429
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #12]
	orr	r2, r3, #2
	ldr	r3, [r7, #72]
	str	r2, [r3, #12]
	b	.L430
.L429:
	ldr	r3, [r7, #72]
	ldrb	r2, [r3, #20]	@ zero_extendqisi2
	ldr	r3, [r7, #72]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	sxtb	r2, r2
	sxtb	r3, r3
	cmp	r2, r3
	bne	.L430
	ldr	r3, [r7, #72]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #4
	bne	.L431
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #32]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #24]
	bl	ft_corner_is_flat(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L430
.L431:
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #12]
	orr	r2, r3, #2
	ldr	r3, [r7, #72]
	str	r2, [r3, #12]
.L430:
	ldr	r3, [r7, #68]
	adds	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #72]
	adds	r3, r3, #40
	str	r3, [r7, #72]
.L427:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	cmp	r2, r3
	bhi	.L432
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #24]
	ldr	r0, [r7, #12]
	movs	r1, #0
	bl	psh_glyph_load_points(PLT)
	ldr	r0, [r7, #12]
	bl	psh_glyph_compute_inflections(PLT)
	ldr	r3, [r7, #12]
	add	r0, r3, #28
	ldr	r3, [r7, #4]
	add	r1, r3, #16
	ldr	r3, [r7, #4]
	add	r2, r3, #28
	ldr	r3, [r7, #4]
	adds	r3, r3, #40
	ldr	r4, [r7, #64]
	str	r4, [sp]
	bl	psh_hint_table_init(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L433
	b	.L421
.L433:
	ldr	r3, [r7, #12]
	add	r0, r3, #68
	ldr	r3, [r7, #4]
	add	r1, r3, #52
	ldr	r3, [r7, #4]
	add	r2, r3, #64
	ldr	r3, [r7, #4]
	adds	r3, r3, #76
	ldr	r4, [r7, #64]
	str	r4, [sp]
	bl	psh_hint_table_init(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L421
	nop
.L421:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	psh_glyph_init, .-psh_glyph_init
	.section	.text.psh_glyph_compute_extrema,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_compute_extrema, %function
psh_glyph_compute_extrema:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L436
.L448:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L437
	b	.L438
.L437:
	ldr	r3, [r7, #12]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	str	r3, [r7, #28]
.L441:
	ldr	r3, [r7, #28]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L439
	b	.L440
.L439:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	beq	.L441
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	str	r3, [r7, #12]
.L447:
	ldr	r3, [r7, #32]
	str	r3, [r7, #24]
.L443:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L442
	b	.L438
.L442:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	beq	.L443
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	bge	.L444
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	bge	.L445
	b	.L446
.L444:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	ble	.L445
.L446:
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #16]
	orr	r2, r3, #64
	ldr	r3, [r7, #32]
	str	r2, [r3, #16]
	ldr	r3, [r7, #32]
	ldr	r3, [r3, #4]
	str	r3, [r7, #32]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L446
.L445:
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	str	r3, [r7, #32]
	b	.L447
.L438:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L436:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L448
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L449
.L456:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L450
.L452:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L451
	b	.L440
.L451:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	beq	.L452
.L454:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L453
	b	.L440
.L453:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	beq	.L454
.L450:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	bge	.L455
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	ble	.L455
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	orr	r2, r3, #128
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	b	.L440
.L455:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	ble	.L440
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #32]
	cmp	r2, r3
	bge	.L440
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	orr	r2, r3, #256
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
.L440:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L449:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bhi	.L456
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_glyph_compute_extrema, .-psh_glyph_compute_extrema
	.section	.text.psh_hint_table_find_strong_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_hint_table_find_strong_points, %function
psh_hint_table_find_strong_points:
	@ args = 4, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #92
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #60]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #56]
	b	.L458
.L489:
	movs	r3, #0
	str	r3, [r7, #84]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	str	r3, [r7, #52]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L459
	b	.L460
.L459:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #96]
	cmp	r2, r3
	beq	.L461
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #96]
	negs	r3, r3
	cmp	r2, r3
	bne	.L462
.L461:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sxtb	r3, r3
	str	r3, [r7, #84]
	b	.L463
.L462:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #96]
	cmp	r2, r3
	beq	.L464
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	sxtb	r2, r3
	ldr	r3, [r7, #96]
	negs	r3, r3
	cmp	r2, r3
	bne	.L463
.L464:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	sxtb	r3, r3
	str	r3, [r7, #84]
.L463:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L465
	ldr	r2, [r7, #84]
	ldr	r3, [r7, #96]
	cmp	r2, r3
	bne	.L466
	movs	r3, #0
	str	r3, [r7, #80]
	b	.L467
.L470:
	ldr	r3, [r7, #80]
	lsls	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	ldr	r2, [r7, #52]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r2, [r7, #44]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L468
	ldr	r3, [r7, #44]
	negs	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L468
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	orr	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	orr	r2, r3, #512
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #48]
	str	r2, [r3, #24]
	b	.L469
.L468:
	ldr	r3, [r7, #80]
	adds	r3, r3, #1
	str	r3, [r7, #80]
.L467:
	ldr	r2, [r7, #80]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L470
.L469:
	b	.L460
.L466:
	ldr	r3, [r7, #96]
	negs	r2, r3
	ldr	r3, [r7, #84]
	cmp	r2, r3
	bne	.L471
	movs	r3, #0
	str	r3, [r7, #76]
	b	.L472
.L474:
	ldr	r3, [r7, #76]
	lsls	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	ldr	r2, [r7, #52]
	subs	r2, r2, r3
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L473
	ldr	r3, [r7, #36]
	negs	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L473
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	orr	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	orr	r2, r3, #1024
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #40]
	str	r2, [r3, #24]
	b	.L471
.L473:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
.L472:
	ldr	r2, [r7, #76]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L474
.L471:
	b	.L460
.L465:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L460
	ldr	r3, [r7, #96]
	cmp	r3, #2
	bne	.L475
	movs	r3, #128
	str	r3, [r7, #68]
	mov	r3, #256
	str	r3, [r7, #64]
	b	.L476
.L475:
	mov	r3, #256
	str	r3, [r7, #68]
	movs	r3, #128
	str	r3, [r7, #64]
.L476:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #68]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L477
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L478
.L481:
	ldr	r3, [r7, #72]
	lsls	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	ldr	r3, [r3]
	ldr	r2, [r7, #52]
	subs	r3, r2, r3
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L479
	ldr	r3, [r7, #28]
	negs	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L479
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	orr	r2, r3, #512
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #32]
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	orr	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	nop
	b	.L482
.L479:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L478:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L481
	b	.L482
.L477:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #64]
	ands	r3, r3, r2
	cmp	r3, #0
	beq	.L482
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L483
.L485:
	ldr	r3, [r7, #72]
	lsls	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3]
	ldr	r2, [r7, #52]
	subs	r2, r2, r3
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L484
	ldr	r3, [r7, #20]
	negs	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L484
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	orr	r2, r3, #1024
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #24]
	str	r2, [r3, #24]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	orr	r2, r3, #16
	ldr	r3, [r7, #8]
	str	r2, [r3, #16]
	b	.L482
.L484:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L483:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L485
.L482:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	bne	.L460
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L486
.L488:
	ldr	r3, [r7, #72]
	lsls	r3, r3, #2
	ldr	r2, [r7, #60]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bgt	.L487
	ldr	r3, [r7, #16]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #52]
	cmp	r2, r3
	blt	.L487
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #16]
	str	r2, [r3, #24]
	b	.L460
.L487:
	ldr	r3, [r7, #72]
	adds	r3, r3, #1
	str	r3, [r7, #72]
.L486:
	ldr	r2, [r7, #72]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bcc	.L488
.L460:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	adds	r3, r3, #40
	str	r3, [r7, #8]
.L458:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L489
	adds	r7, r7, #92
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_hint_table_find_strong_points, .-psh_hint_table_find_strong_points
	.section	.text.psh_glyph_find_strong_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_find_strong_points, %function
psh_glyph_find_strong_points:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #80
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r3, #24
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #8]
	str	r3, [r7, #68]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #32]
	ldr	r3, [r3]
	str	r3, [r7, #64]
	movs	r3, #0
	str	r3, [r7, #60]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L491
	movs	r3, #1
	b	.L492
.L491:
	movs	r3, #2
.L492:
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	movs	r1, #204
	mul	r3, r1, r3
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #196]
	str	r3, [r7, #32]
	movs	r0, #32
	ldr	r1, [r7, #32]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #30
	ble	.L493
	movs	r3, #30
	str	r3, [r7, #56]
.L493:
	ldr	r3, [r7, #64]
	cmp	r3, #1
	bls	.L494
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L494
	ldr	r3, [r7, #68]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	str	r3, [r7, #60]
	ldr	r3, [r7, #68]
	adds	r3, r3, #16
	str	r3, [r7, #68]
	b	.L495
.L497:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #68]
	ldr	r3, [r3, #12]
	cmp	r3, r2
	it	cs
	movcs	r3, r2
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bls	.L496
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #60]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	str	r3, [r7, #20]
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #68]
	bl	psh_hint_table_activate_mask(PLT)
	ldr	r3, [r7, #40]
	str	r3, [sp]
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #56]
	bl	psh_hint_table_find_strong_points(PLT)
.L496:
	ldr	r3, [r7, #28]
	str	r3, [r7, #60]
	ldr	r3, [r7, #64]
	subs	r3, r3, #1
	str	r3, [r7, #64]
	ldr	r3, [r7, #68]
	adds	r3, r3, #16
	str	r3, [r7, #68]
.L495:
	ldr	r3, [r7, #64]
	cmp	r3, #1
	bhi	.L497
.L494:
	ldr	r3, [r7, #64]
	cmp	r3, #1
	bne	.L498
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #32]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	psh_hint_table_activate_mask(PLT)
	ldr	r3, [r7, #40]
	str	r3, [sp]
	ldr	r0, [r7, #44]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #56]
	bl	psh_hint_table_find_strong_points(PLT)
.L498:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #52]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #48]
	b	.L499
.L501:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	beq	.L500
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #16]
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L500
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #16]
	orr	r2, r3, #16
	ldr	r3, [r7, #48]
	str	r2, [r3, #16]
.L500:
	ldr	r3, [r7, #52]
	subs	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r3, [r7, #48]
	adds	r3, r3, #40
	str	r3, [r7, #48]
.L499:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bne	.L501
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	psh_glyph_find_strong_points, .-psh_glyph_find_strong_points
	.section	.text.psh_glyph_find_blue_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_find_blue_points, %function
psh_glyph_find_blue_points:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	b	.L503
.L518:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #2
	beq	.L504
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sxtb	r3, r3
	cmn	r3, #2
	beq	.L504
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #2
	beq	.L504
	ldr	r3, [r7, #24]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	sxtb	r3, r3
	cmn	r3, #2
	beq	.L504
	b	.L505
.L504:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L506
	b	.L505
.L506:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #28]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	adds	r3, r3, #4
	str	r3, [r7, #36]
	b	.L507
.L512:
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2076]
	negs	r2, r3
	ldr	r3, [r7, #12]
	cmp	r2, r3
	ble	.L508
	b	.L509
.L508:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2076]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	blt	.L510
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2080]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L511
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #2072]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	blt	.L510
.L511:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #24]
	str	r2, [r3, #36]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	orr	r2, r3, #16
	ldr	r3, [r7, #24]
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	orr	r2, r3, #32
	ldr	r3, [r7, #24]
	str	r2, [r3, #16]
.L510:
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	adds	r3, r3, #32
	str	r3, [r7, #36]
.L507:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L512
.L509:
	ldr	r3, [r7, #4]
	add	r3, r3, #516
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	lsls	r3, r3, #5
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #36]
	b	.L513
.L517:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2076]
	negs	r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L514
	b	.L505
.L514:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #2076]
	subs	r2, r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L515
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #2080]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L516
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #2072]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L515
.L516:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #24]
	str	r2, [r3, #36]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	orr	r2, r3, #16
	ldr	r3, [r7, #24]
	str	r2, [r3, #16]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	orr	r2, r3, #32
	ldr	r3, [r7, #24]
	str	r2, [r3, #16]
.L515:
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	subs	r3, r3, #32
	str	r3, [r7, #36]
.L513:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L517
.L505:
	ldr	r3, [r7, #32]
	subs	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #24]
	adds	r3, r3, #40
	str	r3, [r7, #24]
.L503:
	ldr	r3, [r7, #32]
	cmp	r3, #0
	bne	.L518
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psh_glyph_find_blue_points, .-psh_glyph_find_blue_points
	.section	.text.psh_glyph_interpolate_strong_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_interpolate_strong_points, %function
psh_glyph_interpolate_strong_points:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	movs	r1, #204
	mul	r3, r1, r3
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #196]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #24]
	b	.L520
.L527:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #24]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L521
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	and	r3, r3, #512
	cmp	r3, #0
	beq	.L522
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #24]
	str	r2, [r3, #36]
	b	.L523
.L522:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	and	r3, r3, #1024
	cmp	r3, #0
	beq	.L524
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #36]
	b	.L523
.L524:
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bgt	.L525
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #8]
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #16]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #36]
	b	.L523
.L525:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bgt	.L526
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	adds	r4, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #8]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #36]
	b	.L523
.L526:
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #24]
	str	r2, [r3, #36]
.L523:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	orr	r2, r3, #32
	ldr	r3, [r7, #24]
	str	r2, [r3, #16]
.L521:
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #24]
	adds	r3, r3, #40
	str	r3, [r7, #24]
.L520:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L527
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	psh_glyph_interpolate_strong_points, .-psh_glyph_interpolate_strong_points
	.section	.text.psh_glyph_interpolate_normal_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_interpolate_normal_points, %function
psh_glyph_interpolate_normal_points:
	@ args = 0, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #140
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	movs	r1, #204
	mul	r3, r1, r3
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #104]
	ldr	r3, [r7, #104]
	ldr	r3, [r3, #196]
	str	r3, [r7, #100]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #96]
	movs	r3, #0
	str	r3, [r7, #124]
	movs	r3, #0
	str	r3, [r7, #120]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #92]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #92]
	add	r3, r3, r2
	str	r3, [r7, #88]
	ldr	r3, [r7, #92]
	str	r3, [r7, #116]
	b	.L529
.L531:
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #16]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L530
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
.L530:
	ldr	r3, [r7, #116]
	adds	r3, r3, #40
	str	r3, [r7, #116]
.L529:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bcc	.L531
	ldr	r3, [r7, #120]
	cmp	r3, #0
	bne	.L532
	b	.L528
.L532:
	ldr	r3, [r7, #120]
	cmp	r3, #16
	bhi	.L534
	add	r3, r7, #12
	str	r3, [r7, #124]
	b	.L535
.L534:
	ldr	r3, [r7, #120]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #8
	str	r2, [sp, #4]
	ldr	r0, [r7, #96]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #124]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L528
.L535:
	movs	r3, #0
	str	r3, [r7, #120]
	ldr	r3, [r7, #92]
	str	r3, [r7, #116]
	b	.L537
.L544:
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #16]
	and	r3, r3, #16
	cmp	r3, #0
	bne	.L538
	b	.L539
.L538:
	ldr	r3, [r7, #120]
	lsls	r3, r3, #2
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	str	r3, [r7, #112]
	b	.L540
.L543:
	ldr	r3, [r7, #112]
	subs	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	bgt	.L541
	b	.L542
.L541:
	ldr	r3, [r7, #112]
	ldr	r2, [r3, #-4]
	ldr	r3, [r7, #112]
	str	r2, [r3]
	ldr	r3, [r7, #112]
	subs	r3, r3, #4
	str	r3, [r7, #112]
.L540:
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #124]
	cmp	r2, r3
	bhi	.L543
.L542:
	ldr	r3, [r7, #112]
	ldr	r2, [r7, #116]
	str	r2, [r3]
	ldr	r3, [r7, #120]
	adds	r3, r3, #1
	str	r3, [r7, #120]
.L539:
	ldr	r3, [r7, #116]
	adds	r3, r3, #40
	str	r3, [r7, #116]
.L537:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bcc	.L544
	ldr	r3, [r7, #92]
	str	r3, [r7, #116]
	b	.L545
.L565:
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #16]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L546
	b	.L547
.L546:
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #12]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L548
	ldr	r3, [r7, #116]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	sxtb	r3, r3
	cmp	r3, #4
	beq	.L549
	ldr	r3, [r7, #116]
	ldrb	r2, [r3, #20]	@ zero_extendqisi2
	ldr	r3, [r7, #116]
	ldrb	r3, [r3, #21]	@ zero_extendqisi2
	sxtb	r2, r2
	sxtb	r3, r3
	cmp	r2, r3
	beq	.L550
.L549:
	b	.L547
.L550:
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #16]
	and	r3, r3, #64
	cmp	r3, #0
	bne	.L551
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #12]
	and	r3, r3, #4
	cmp	r3, #0
	bne	.L551
	b	.L547
.L551:
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #12]
	bic	r2, r3, #2
	ldr	r3, [r7, #116]
	str	r2, [r3, #12]
.L548:
	movs	r3, #0
	str	r3, [r7, #108]
	b	.L552
.L555:
	ldr	r3, [r7, #108]
	lsls	r3, r3, #2
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	ble	.L553
	b	.L554
.L553:
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
.L552:
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bcc	.L555
.L554:
	ldr	r3, [r7, #108]
	cmp	r3, #0
	bne	.L556
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	ldr	r4, [r3, #36]
	ldr	r3, [r7, #116]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #28]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #116]
	str	r2, [r3, #36]
	b	.L557
.L556:
	ldr	r3, [r7, #108]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #80]
	ldr	r3, [r7, #120]
	str	r3, [r7, #108]
	b	.L558
.L561:
	ldr	r3, [r7, #108]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	bge	.L559
	b	.L560
.L559:
	ldr	r3, [r7, #108]
	subs	r3, r3, #1
	str	r3, [r7, #108]
.L558:
	ldr	r3, [r7, #108]
	cmp	r3, #0
	bne	.L561
.L560:
	ldr	r2, [r7, #108]
	ldr	r3, [r7, #120]
	cmp	r2, r3
	bne	.L562
	ldr	r3, [r7, #108]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	ldr	r4, [r3, #36]
	ldr	r3, [r7, #116]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #28]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #100]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #116]
	str	r2, [r3, #36]
	b	.L557
.L562:
	ldr	r3, [r7, #108]
	lsls	r3, r3, #2
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #84]
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #28]
	str	r3, [r7, #76]
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bne	.L563
	ldr	r3, [r7, #80]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #116]
	str	r2, [r3, #36]
	b	.L557
.L563:
	ldr	r3, [r7, #84]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bne	.L564
	ldr	r3, [r7, #84]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #116]
	str	r2, [r3, #36]
	b	.L557
.L564:
	ldr	r3, [r7, #80]
	ldr	r4, [r3, #36]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #28]
	ldr	r2, [r7, #76]
	subs	r1, r2, r3
	ldr	r3, [r7, #84]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #36]
	subs	r2, r2, r3
	ldr	r3, [r7, #84]
	ldr	r0, [r3, #28]
	ldr	r3, [r7, #80]
	ldr	r3, [r3, #28]
	subs	r3, r0, r3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #116]
	str	r2, [r3, #36]
.L557:
	ldr	r3, [r7, #116]
	ldr	r3, [r3, #16]
	orr	r2, r3, #32
	ldr	r3, [r7, #116]
	str	r2, [r3, #16]
.L547:
	ldr	r3, [r7, #116]
	adds	r3, r3, #40
	str	r3, [r7, #116]
.L545:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	bcc	.L565
	add	r3, r7, #12
	ldr	r2, [r7, #124]
	cmp	r2, r3
	beq	.L528
	ldr	r0, [r7, #96]
	ldr	r1, [r7, #124]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #124]
.L528:
	adds	r7, r7, #132
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	psh_glyph_interpolate_normal_points, .-psh_glyph_interpolate_normal_points
	.section	.text.psh_glyph_interpolate_other_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psh_glyph_interpolate_other_points, %function
psh_glyph_interpolate_other_points:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	movs	r1, #204
	mul	r3, r1, r3
	add	r3, r3, r2
	adds	r3, r3, #4
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #196]
	str	r3, [r7, #20]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #200]
	str	r3, [r7, #76]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #72]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #68]
	b	.L569
.L593:
	ldr	r3, [r7, #72]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	str	r3, [r7, #60]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #64]
	ldr	r3, [r7, #16]
	str	r3, [r7, #56]
	b	.L570
.L573:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #16]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L571
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L572
	ldr	r3, [r7, #56]
	str	r3, [r7, #64]
.L572:
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L571:
	ldr	r3, [r7, #56]
	adds	r3, r3, #40
	str	r3, [r7, #56]
.L570:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bcc	.L573
	ldr	r3, [r7, #52]
	cmp	r3, #1
	bhi	.L574
	ldr	r3, [r7, #52]
	cmp	r3, #1
	bne	.L575
	ldr	r3, [r7, #64]
	ldr	r4, [r3, #36]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #28]
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	subs	r3, r4, r3
	str	r3, [r7, #76]
.L575:
	ldr	r3, [r7, #16]
	str	r3, [r7, #56]
	b	.L576
.L578:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	beq	.L577
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #76]
	add	r2, r2, r3
	ldr	r3, [r7, #56]
	str	r2, [r3, #36]
.L577:
	ldr	r3, [r7, #56]
	adds	r3, r3, #40
	str	r3, [r7, #56]
.L576:
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bcc	.L578
	b	.L579
.L574:
	ldr	r3, [r7, #64]
	str	r3, [r7, #16]
.L583:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L580
	b	.L579
.L580:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #16]
	and	r3, r3, #32
	cmp	r3, #0
	bne	.L581
	b	.L582
.L581:
	ldr	r3, [r7, #60]
	str	r3, [r7, #64]
	b	.L583
.L582:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #4]
	str	r3, [r7, #60]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #16]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L584
	nop
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	bgt	.L586
	b	.L594
.L584:
	b	.L582
.L594:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #28]
	str	r3, [r7, #48]
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #36]
	str	r3, [r7, #40]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #60]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	str	r3, [r7, #36]
	b	.L587
.L586:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #28]
	str	r3, [r7, #48]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #36]
	str	r3, [r7, #40]
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #64]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #40]
	subs	r3, r2, r3
	str	r3, [r7, #36]
.L587:
	mov	r3, #65536
	str	r3, [r7, #28]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	ble	.L588
	ldr	r0, [r7, #36]
	ldr	r1, [r7, #44]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #28]
.L588:
	ldr	r3, [r7, #64]
	ldr	r3, [r3, #4]
	str	r3, [r7, #56]
.L592:
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #28]
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bgt	.L589
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #20]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #32]
	b	.L590
.L589:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	blt	.L591
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r4, r2, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #44]
	subs	r3, r2, r3
	mov	r0, r3
	ldr	r1, [r7, #20]
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	add	r3, r3, r4
	str	r3, [r7, #32]
	b	.L590
.L591:
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #28]
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #32]
.L590:
	ldr	r3, [r7, #56]
	ldr	r2, [r7, #32]
	str	r2, [r3, #36]
	ldr	r3, [r7, #56]
	ldr	r3, [r3, #4]
	str	r3, [r7, #56]
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bne	.L592
	ldr	r3, [r7, #60]
	str	r3, [r7, #64]
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L583
.L579:
	ldr	r3, [r7, #68]
	subs	r3, r3, #1
	str	r3, [r7, #68]
	ldr	r3, [r7, #72]
	adds	r3, r3, #8
	str	r3, [r7, #72]
.L569:
	ldr	r3, [r7, #68]
	cmp	r3, #0
	bne	.L593
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	psh_glyph_interpolate_other_points, .-psh_glyph_interpolate_other_points
	.section	.text.ps_hints_apply,"ax",%progbits
	.align	2
	.global	ps_hints_apply
	.thumb
	.thumb_func
	.type	ps_hints_apply, %function
ps_hints_apply:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #200
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #16
	str	r3, [r7, #176]
	ldr	r3, [r7, #8]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	beq	.L596
	ldr	r3, [r7, #8]
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L597
.L596:
	movs	r3, #0
	b	.L613
.L597:
	ldr	r0, [r7, #176]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	bl	psh_glyph_init(PLT)
	str	r0, [r7, #172]
	ldr	r3, [r7, #172]
	cmp	r3, #0
	beq	.L599
	b	.L600
.L599:
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #24]
	adds	r3, r3, #4
	str	r3, [r7, #168]
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #24]
	adds	r3, r3, #208
	str	r3, [r7, #164]
	ldr	r3, [r7, #168]
	ldr	r3, [r3, #196]
	str	r3, [r7, #184]
	ldr	r3, [r7, #164]
	ldr	r3, [r3, #196]
	str	r3, [r7, #160]
	ldr	r3, [r7, #184]
	str	r3, [r7, #156]
	ldr	r3, [r7, #160]
	str	r3, [r7, #152]
	movs	r3, #0
	strb	r3, [r7, #183]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #416]
	mov	r0, r3
	ldr	r1, [r7, #160]
	bl	FT_MulFix_arm(PLT)
	str	r0, [r7, #148]
	ldr	r3, [r7, #148]
	adds	r3, r3, #32
	bic	r3, r3, #63
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	cmp	r3, #0
	beq	.L601
	ldr	r2, [r7, #148]
	ldr	r3, [r7, #144]
	cmp	r2, r3
	beq	.L601
	movs	r3, #1
	strb	r3, [r7, #183]
	ldr	r0, [r7, #160]
	ldr	r1, [r7, #144]
	ldr	r2, [r7, #148]
	bl	FT_MulDiv(PLT)
	str	r0, [r7, #160]
	ldr	r2, [r7, #144]
	ldr	r3, [r7, #148]
	cmp	r2, r3
	bge	.L602
	ldr	r2, [r7, #184]
	movw	r3, #34079
	movt	r3, 20971
	smull	r1, r3, r3, r2
	asrs	r1, r3, #4
	asrs	r3, r2, #31
	subs	r3, r1, r3
	ldr	r2, [r7, #184]
	subs	r3, r2, r3
	str	r3, [r7, #184]
.L602:
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #24]
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #184]
	ldr	r2, [r7, #160]
	movs	r3, #0
	bl	psh_globals_set_scale(PLT)
.L601:
	ldr	r3, [r7, #176]
	movs	r2, #1
	strb	r2, [r3, #120]
	ldr	r3, [r7, #176]
	movs	r2, #1
	strb	r2, [r3, #121]
	ldr	r3, [r7]
	cmp	r3, #2
	beq	.L603
	ldr	r3, [r7]
	cmp	r3, #3
	bne	.L604
.L603:
	movs	r3, #1
	b	.L605
.L604:
	movs	r3, #0
.L605:
	uxtb	r2, r3
	ldr	r3, [r7, #176]
	strb	r2, [r3, #122]
	ldr	r3, [r7]
	cmp	r3, #2
	beq	.L606
	ldr	r3, [r7]
	cmp	r3, #4
	bne	.L607
.L606:
	movs	r3, #1
	b	.L608
.L607:
	movs	r3, #0
.L608:
	uxtb	r2, r3
	ldr	r3, [r7, #176]
	strb	r2, [r3, #123]
	ldr	r3, [r7]
	cmp	r3, #1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #176]
	strb	r2, [r3, #124]
	movs	r3, #0
	str	r3, [r7, #188]
	b	.L609
.L612:
	ldr	r0, [r7, #176]
	ldr	r1, [r7, #188]
	bl	psh_glyph_load_points(PLT)
	ldr	r0, [r7, #176]
	bl	psh_glyph_compute_extrema(PLT)
	ldr	r2, [r7, #188]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	adds	r3, r3, #24
	ldr	r2, [r7, #176]
	add	r3, r3, r2
	adds	r2, r3, #4
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #24]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #188]
	ldr	r3, [r7, #176]
	bl	psh_hint_table_align_hints(PLT)
	ldr	r0, [r7, #176]
	ldr	r1, [r7, #188]
	bl	psh_glyph_find_strong_points(PLT)
	ldr	r3, [r7, #188]
	cmp	r3, #1
	bne	.L610
	ldr	r3, [r7, #4]
	add	r3, r3, #412
	mov	r0, r3
	ldr	r1, [r7, #176]
	bl	psh_glyph_find_blue_points(PLT)
.L610:
	ldr	r0, [r7, #176]
	ldr	r1, [r7, #188]
	bl	psh_glyph_interpolate_strong_points(PLT)
	ldr	r0, [r7, #176]
	ldr	r1, [r7, #188]
	bl	psh_glyph_interpolate_normal_points(PLT)
	ldr	r0, [r7, #176]
	ldr	r1, [r7, #188]
	bl	psh_glyph_interpolate_other_points(PLT)
	ldr	r0, [r7, #176]
	ldr	r1, [r7, #188]
	bl	psh_glyph_save_points(PLT)
	ldrb	r3, [r7, #183]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L611
	ldr	r3, [r7, #176]
	ldr	r3, [r3, #24]
	movs	r2, #0
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #156]
	ldr	r2, [r7, #152]
	movs	r3, #0
	bl	psh_globals_set_scale(PLT)
.L611:
	ldr	r3, [r7, #188]
	adds	r3, r3, #1
	str	r3, [r7, #188]
.L609:
	ldr	r3, [r7, #188]
	cmp	r3, #1
	ble	.L612
.L600:
	ldr	r0, [r7, #176]
	bl	psh_glyph_done(PLT)
	ldr	r3, [r7, #172]
.L613:
	mov	r0, r3
	adds	r7, r7, #192
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hints_apply, .-ps_hints_apply
	.section	.text.ps_hinter_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hinter_done, %function
ps_hinter_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #112]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #140]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	ps_hints_done(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hinter_done, .-ps_hinter_done
	.section	.text.ps_hinter_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_hinter_init, %function
ps_hinter_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	ps_hints_init(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #100
	mov	r0, r3
	bl	psh_globals_funcs_init(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	mov	r0, r3
	bl	t1_hints_funcs_init(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #112]
	ldr	r3, [r7, #4]
	adds	r3, r3, #140
	mov	r0, r3
	bl	t2_hints_funcs_init(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #140]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_hinter_init, .-ps_hinter_init
	.section	.text.pshinter_get_globals_funcs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pshinter_get_globals_funcs, %function
pshinter_get_globals_funcs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #100
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pshinter_get_globals_funcs, .-pshinter_get_globals_funcs
	.section	.text.pshinter_get_t1_funcs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pshinter_get_t1_funcs, %function
pshinter_get_t1_funcs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pshinter_get_t1_funcs, .-pshinter_get_t1_funcs
	.section	.text.pshinter_get_t2_funcs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	pshinter_get_t2_funcs, %function
pshinter_get_t2_funcs:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #140
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	pshinter_get_t2_funcs, .-pshinter_get_t2_funcs
	.section	.data.rel.ro.local.pshinter_interface,"aw",%progbits
	.align	2
	.type	pshinter_interface, %object
	.size	pshinter_interface, 12
pshinter_interface:
	.word	pshinter_get_globals_funcs
	.word	pshinter_get_t1_funcs
	.word	pshinter_get_t2_funcs
	.global	pshinter_module_class
	.section	.rodata
	.align	2
.LC0:
	.ascii	"pshinter\000"
	.section	.data.rel.ro.local.pshinter_module_class,"aw",%progbits
	.align	2
	.type	pshinter_module_class, %object
	.size	pshinter_module_class, 36
pshinter_module_class:
	.word	0
	.word	168
	.word	.LC0
	.word	65536
	.word	131072
	.word	pshinter_interface
	.word	ps_hinter_init
	.word	ps_hinter_done
	.word	0
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
