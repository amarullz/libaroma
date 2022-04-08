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
	.file	"psaux.c"
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
	.section	.text.ps_table_new,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_table_new, %function
ps_table_new:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, .L7
.LPIC0:
	add	r4, pc
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #32]
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #20
	str	r3, [sp, #4]
	ldr	r0, [r7, #4]
	movs	r1, #4
	movs	r2, #0
	ldr	r3, [r7, #8]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L4
	movs	r3, #0
	str	r3, [sp]
	add	r3, r7, #20
	str	r3, [sp, #4]
	ldr	r0, [r7, #4]
	movs	r1, #4
	movs	r2, #0
	ldr	r3, [r7, #8]
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	str	r2, [r3, #28]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L4
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #16]
	ldr	r2, [r7, #12]
	movw	r3, #48879
	movt	r3, 57005
	str	r3, [r2, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r2, [r7, #12]
	ldr	r3, .L7+4
	ldr	r3, [r4, r3]
	add	r4, r2, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
.L4:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L5
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #24]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
.L5:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L8:
	.align	2
.L7:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	ps_table_funcs(GOT)
	.size	ps_table_new, .-ps_table_new
	.section	.text.shift_elements,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	shift_elements, %function
shift_elements:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7]
	subs	r3, r2, r3
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #12]
	b	.L10
.L12:
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L11
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	str	r2, [r3]
.L11:
	ldr	r3, [r7, #20]
	adds	r3, r3, #4
	str	r3, [r7, #20]
.L10:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L12
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	shift_elements, .-shift_elements
	.section	.text.reallocate_t1_table,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	reallocate_t1_table, %function
reallocate_t1_table:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r2, [r7]
	add	r3, r7, #12
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	b	.L17
.L14:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L16
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r2
	ldr	r1, [r7, #16]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #16]
	bl	shift_elements(PLT)
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #16]
.L16:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	movs	r3, #0
.L17:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	reallocate_t1_table, .-reallocate_t1_table
	.section	.text.ps_table_add,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_table_add, %function
ps_table_add:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L19
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bgt	.L20
.L19:
	movs	r3, #6
	b	.L21
.L20:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L22
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r2, r3
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	blt	.L23
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcc	.L24
.L23:
	mov	r3, #-1
	str	r3, [r7, #24]
	b	.L25
.L24:
	b	.L25
.L26:
	ldr	r3, [r7, #28]
	lsrs	r2, r3, #2
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	addw	r3, r3, #1023
	bic	r3, r3, #1020
	bic	r3, r3, #3
	str	r3, [r7, #28]
.L25:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bhi	.L26
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	bl	reallocate_t1_table(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #20]
	b	.L21
.L27:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	blt	.L22
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #4]
.L22:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldr	r1, [r2]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #4]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	add	r3, r3, r2
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	memcpy(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	movs	r3, #0
.L21:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_table_add, .-ps_table_add
	.section	.text.ps_table_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_table_done, %function
ps_table_done:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L29
	b	.L28
.L29:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r2, r3
	add	r3, r7, #12
	ldr	r0, [r7, #20]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L31
	b	.L28
.L31:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	ldr	r1, [r7, #16]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #16]
	bl	shift_elements(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #16]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	str	r3, [r7, #12]
.L28:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_table_done, .-ps_table_done
	.section	.text.ps_table_release,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_table_release, %function
ps_table_release:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #32]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	movw	r3, #48879
	movt	r3, 57005
	cmp	r2, r3
	bne	.L33
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
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
	movs	r2, #0
	str	r2, [r3, #12]
.L33:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_table_release, .-ps_table_release
	.section	.text.skip_comment,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	skip_comment, %function
skip_comment:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	b	.L36
.L38:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L37
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L37
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L36:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L38
.L37:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	skip_comment, .-skip_comment
	.section	.text.skip_spaces,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	skip_spaces, %function
skip_spaces:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	b	.L40
.L44:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L41
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L41
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L41
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L41
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L41
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L41
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	bne	.L42
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7]
	bl	skip_comment(PLT)
	b	.L41
.L42:
	b	.L43
.L41:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L40:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L44
.L43:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	skip_spaces, .-skip_spaces
	.section	.text.skip_literal_string,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	skip_literal_string, %function
skip_literal_string:
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
	str	r3, [r7, #28]
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L46
.L57:
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]
	strb	r3, [r7, #15]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #92
	bne	.L47
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L48
	b	.L49
.L48:
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #40
	cmp	r3, #76
	bhi	.L50
	adr	r1, .L52
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L52:
	.word	.L51+1-.L52
	.word	.L51+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L51+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L51+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L51+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L51+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L50+1-.L52
	.word	.L51+1-.L52
	.word	.L50+1-.L52
	.word	.L51+1-.L52
.L51:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	nop
	b	.L46
.L50:
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L54
.L55:
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L46
	ldr	r3, [r7, #28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #55
	bhi	.L46
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L54:
	ldr	r3, [r7, #16]
	cmp	r3, #2
	bhi	.L46
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L55
	b	.L46
.L47:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #40
	bne	.L56
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L46
.L56:
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	cmp	r3, #41
	bne	.L46
	ldr	r3, [r7, #24]
	subs	r3, r3, #1
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L46
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L49
.L46:
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L57
.L49:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	skip_literal_string, .-skip_literal_string
	.section	.text.skip_string,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	skip_string, %function
skip_string:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L60
.L65:
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	skip_spaces(PLT)
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L61
	b	.L62
.L61:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L63
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #57
	bls	.L60
.L63:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #64
	bls	.L64
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #70
	bls	.L60
.L64:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #96
	bls	.L62
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #102
	bhi	.L62
.L60:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L65
.L62:
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L66
	ldr	r3, [r7, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	beq	.L66
	movs	r3, #3
	str	r3, [r7, #12]
	b	.L67
.L66:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L67:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	skip_string, .-skip_string
	.section	.text.skip_procedure,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	skip_procedure, %function
skip_procedure:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	b	.L70
.L80:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	beq	.L72
	cmp	r3, #60
	bgt	.L73
	cmp	r3, #37
	beq	.L74
	cmp	r3, #40
	beq	.L75
	b	.L71
.L73:
	cmp	r3, #123
	beq	.L76
	cmp	r3, #125
	beq	.L77
	b	.L71
.L76:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L71
.L77:
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L78
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L79
.L78:
	b	.L71
.L75:
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7]
	bl	skip_literal_string(PLT)
	str	r0, [r7, #16]
	b	.L71
.L72:
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7]
	bl	skip_string(PLT)
	str	r0, [r7, #16]
	b	.L71
.L74:
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7]
	bl	skip_comment(PLT)
	nop
.L71:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L70:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L79
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L80
.L79:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L81
	movs	r3, #3
	str	r3, [r7, #16]
.L81:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	skip_procedure, .-skip_procedure
	.section	.text.ps_parser_skip_PS_token,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_skip_PS_token, %function
ps_parser_skip_PS_token:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	skip_spaces(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L84
	b	.L85
.L84:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	beq	.L86
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	bne	.L87
.L86:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L85
.L87:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #123
	bne	.L88
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	skip_procedure(PLT)
	str	r0, [r7, #20]
	b	.L85
.L88:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #40
	bne	.L89
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	skip_literal_string(PLT)
	str	r0, [r7, #20]
	b	.L85
.L89:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	bne	.L90
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L91
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	bne	.L91
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L85
.L91:
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	skip_string(PLT)
	str	r0, [r7, #20]
	b	.L85
.L90:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	bne	.L93
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L94
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	beq	.L95
.L94:
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L85
.L95:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L85
.L93:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L96
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L97
.L96:
	b	.L97
.L98:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #40
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #41
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #123
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #125
	beq	.L85
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #37
	beq	.L85
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L97:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcc	.L98
.L85:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L99
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bne	.L99
	movs	r3, #3
	str	r3, [r7, #20]
.L99:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bls	.L100
	ldr	r3, [r7, #16]
	str	r3, [r7, #12]
.L100:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_parser_skip_PS_token, .-ps_parser_skip_PS_token
	.section	.text.ps_parser_skip_spaces,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_skip_spaces, %function
ps_parser_skip_spaces:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	skip_spaces(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_parser_skip_spaces, .-ps_parser_skip_spaces
	.section	.text.ps_parser_to_token,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_to_token, %function
ps_parser_to_token:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r0, [r7, #4]
	bl	ps_parser_skip_spaces(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #16]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L102
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	beq	.L106
	cmp	r3, #123
	beq	.L107
	cmp	r3, #40
	bne	.L120
	ldr	r3, [r7]
	movs	r2, #2
	str	r2, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	skip_literal_string(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L109
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	b	.L110
.L109:
	b	.L110
.L107:
	ldr	r3, [r7]
	movs	r2, #3
	str	r2, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #16]
	bl	skip_procedure(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L111
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	b	.L110
.L111:
	b	.L110
.L106:
	ldr	r3, [r7]
	movs	r2, #3
	str	r2, [r3, #8]
	movs	r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	adds	r2, r3, #1
	str	r2, [r7, #12]
	ldr	r2, [r7]
	str	r3, [r2]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	ps_parser_skip_spaces(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	b	.L112
.L116:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #91
	bne	.L113
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	b	.L114
.L113:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #93
	bne	.L114
	ldr	r3, [r7, #20]
	subs	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bgt	.L114
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	b	.L115
.L114:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	ps_parser_skip_PS_token(PLT)
	ldr	r0, [r7, #4]
	bl	ps_parser_skip_spaces(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
.L112:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bcs	.L115
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L116
.L115:
	b	.L110
.L120:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L117
	movs	r3, #4
	b	.L118
.L117:
	movs	r3, #1
.L118:
	ldr	r2, [r7]
	str	r3, [r2, #8]
	ldr	r0, [r7, #4]
	bl	ps_parser_skip_PS_token(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L110
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3, #4]
.L110:
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L119
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #8]
.L119:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L102:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_parser_to_token, .-ps_parser_to_token
	.section	.text.ps_parser_to_token_array,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_to_token_array, %function
ps_parser_to_token_array:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #56
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	mov	r2, #-1
	str	r2, [r3]
	add	r3, r7, #28
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ps_parser_to_token(PLT)
	ldr	r3, [r7, #36]
	cmp	r3, #3
	bne	.L121
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #8]
	str	r3, [r7, #52]
	ldr	r2, [r7, #4]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #52]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #28]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	b	.L123
.L127:
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ps_parser_to_token(PLT)
	ldr	r3, [r7, #24]
	cmp	r3, #0
	beq	.L125
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L126
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bcs	.L126
	ldr	r3, [r7, #52]
	add	r2, r7, #16
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
.L126:
	ldr	r3, [r7, #52]
	adds	r3, r3, #12
	str	r3, [r7, #52]
.L123:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcc	.L127
.L125:
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	asrs	r2, r3, #2
	movw	r3, #43691
	movt	r3, 43690
	mul	r3, r3, r2
	mov	r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #48]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #44]
	str	r2, [r3, #8]
.L121:
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_parser_to_token_array, .-ps_parser_to_token_array
	.section	.text.ps_tocoordarray,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_tocoordarray, %function
ps_tocoordarray:
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
	ldr	r3, [r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L129
	b	.L130
.L129:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]
	strb	r3, [r7, #34]
	movs	r3, #0
	strb	r3, [r7, #35]
	ldrb	r3, [r7, #34]	@ zero_extendqisi2
	cmp	r3, #91
	bne	.L131
	movs	r3, #93
	strb	r3, [r7, #35]
	b	.L132
.L131:
	ldrb	r3, [r7, #34]	@ zero_extendqisi2
	cmp	r3, #123
	bne	.L132
	movs	r3, #125
	strb	r3, [r7, #35]
.L132:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L133
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L134
.L133:
	b	.L134
.L144:
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	skip_spaces(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L135
	b	.L130
.L135:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #35]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L137
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L130
.L137:
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L139
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L139
	b	.L130
.L139:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L140
	ldr	r3, [r7, #36]
	lsls	r3, r3, #1
	ldr	r2, [r7]
	adds	r4, r2, r3
	b	.L141
.L140:
	add	r4, r7, #22
.L141:
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #8]
	movs	r2, #0
	bl	PS_Conv_ToFixed(PLT)
	mov	r3, r0
	asrs	r3, r3, #16
	uxth	r3, r3
	strh	r3, [r4]	@ movhi
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bne	.L142
	mov	r3, #-1
	str	r3, [r7, #36]
	nop
	b	.L130
.L142:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L134
	nop
	b	.L130
.L134:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L144
.L130:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ps_tocoordarray, .-ps_tocoordarray
	.section	.text.ps_tofixedarray,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_tofixedarray, %function
ps_tofixedarray:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L147
	b	.L148
.L147:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]
	strb	r3, [r7, #34]
	movs	r3, #0
	strb	r3, [r7, #35]
	ldrb	r3, [r7, #34]	@ zero_extendqisi2
	cmp	r3, #91
	bne	.L149
	movs	r3, #93
	strb	r3, [r7, #35]
	b	.L150
.L149:
	ldrb	r3, [r7, #34]	@ zero_extendqisi2
	cmp	r3, #123
	bne	.L150
	movs	r3, #125
	strb	r3, [r7, #35]
.L150:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L151
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L152
.L151:
	b	.L152
.L162:
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	skip_spaces(PLT)
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L153
	b	.L148
.L153:
	ldr	r3, [r7, #24]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [r7, #35]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L155
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
	b	.L148
.L155:
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L157
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L157
	b	.L148
.L157:
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L158
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	ldr	r2, [r7]
	adds	r4, r2, r3
	b	.L159
.L158:
	add	r4, r7, #20
.L159:
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #56]
	bl	PS_Conv_ToFixed(PLT)
	mov	r3, r0
	str	r3, [r4]
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bne	.L160
	mov	r3, #-1
	str	r3, [r7, #36]
	nop
	b	.L148
.L160:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L152
	nop
	b	.L148
.L152:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L162
.L148:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	ps_tofixedarray, .-ps_tofixedarray
	.section	.text.ps_tobool,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_tobool, %function
ps_tobool:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	movs	r3, #0
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	adds	r2, r3, #3
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L165
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #116
	bne	.L165
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L165
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #117
	bne	.L165
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L165
	movs	r3, #1
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	adds	r3, r3, #5
	str	r3, [r7, #12]
	b	.L166
.L165:
	ldr	r3, [r7, #12]
	adds	r2, r3, #4
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L166
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #102
	bne	.L166
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bne	.L166
	ldr	r3, [r7, #12]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #108
	bne	.L166
	ldr	r3, [r7, #12]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L166
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	bne	.L166
	movs	r3, #0
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	adds	r3, r3, #6
	str	r3, [r7, #12]
.L166:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ps_tobool, .-ps_tobool
	.section	.text.ps_parser_load_field,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_load_field, %function
ps_parser_load_field:
	@ args = 4, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #144
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #52
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ps_parser_to_token(PLT)
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L169
	b	.L170
.L169:
	movs	r3, #1
	str	r3, [r7, #128]
	movs	r3, #0
	str	r3, [r7, #124]
	ldr	r3, [r7, #52]
	str	r3, [r7, #48]
	ldr	r3, [r7, #56]
	str	r3, [r7, #132]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	str	r3, [r7, #120]
	ldr	r3, [r7, #120]
	cmp	r3, #7
	bne	.L171
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #104]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #100]
	ldr	r3, [r7, #52]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #56]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	add	r3, r7, #32
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ps_parser_to_token(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #104]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #100]
	str	r2, [r3, #8]
	ldr	r3, [r7, #40]
	cmp	r3, #3
	bne	.L172
	movs	r3, #8
	str	r3, [r7, #120]
	b	.L173
.L172:
	b	.L174
.L171:
	ldr	r3, [r7, #60]
	cmp	r3, #3
	bne	.L174
	ldr	r3, [r7]
	str	r3, [r7, #128]
.L173:
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L175
	b	.L170
.L175:
	movs	r3, #1
	str	r3, [r7, #124]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r3, [r7, #132]
	subs	r3, r3, #1
	str	r3, [r7, #132]
	b	.L176
.L174:
	b	.L176
.L208:
	ldr	r3, [r7, #124]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	add	r3, r3, r2
	str	r3, [r7, #96]
	add	r3, r7, #48
	mov	r0, r3
	ldr	r1, [r7, #132]
	bl	skip_spaces(PLT)
	ldr	r3, [r7, #120]
	subs	r3, r3, #1
	cmp	r3, #7
	bhi	.L212
	adr	r1, .L179
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L179:
	.word	.L178+1-.L179
	.word	.L180+1-.L179
	.word	.L181+1-.L179
	.word	.L182+1-.L179
	.word	.L183+1-.L179
	.word	.L183+1-.L179
	.word	.L184+1-.L179
	.word	.L185+1-.L179
.L178:
	add	r3, r7, #48
	mov	r0, r3
	ldr	r1, [r7, #132]
	bl	ps_tobool(PLT)
	str	r0, [r7, #116]
	b	.L186
.L181:
	add	r3, r7, #48
	mov	r0, r3
	ldr	r1, [r7, #132]
	movs	r2, #0
	bl	PS_Conv_ToFixed(PLT)
	str	r0, [r7, #116]
	b	.L186
.L182:
	add	r3, r7, #48
	mov	r0, r3
	ldr	r1, [r7, #132]
	movs	r2, #3
	bl	PS_Conv_ToFixed(PLT)
	str	r0, [r7, #116]
	b	.L186
.L180:
	add	r3, r7, #48
	mov	r0, r3
	ldr	r1, [r7, #132]
	bl	PS_Conv_ToInt(PLT)
	str	r0, [r7, #116]
.L186:
	ldr	r3, [r7, #8]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	cmp	r3, #2
	beq	.L188
	cmp	r3, #4
	beq	.L189
	cmp	r3, #1
	bne	.L210
	ldr	r3, [r7, #116]
	uxtb	r2, r3
	ldr	r3, [r7, #96]
	strb	r2, [r3]
	b	.L191
.L188:
	ldr	r3, [r7, #116]
	uxth	r2, r3
	ldr	r3, [r7, #96]
	strh	r2, [r3]	@ movhi
	b	.L191
.L189:
	ldr	r2, [r7, #116]
	ldr	r3, [r7, #96]
	str	r2, [r3]
	b	.L191
.L210:
	ldr	r3, [r7, #96]
	ldr	r2, [r7, #116]
	str	r2, [r3]
	b	.L192
.L191:
	b	.L192
.L183:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #92]
	ldr	r2, [r7, #132]
	ldr	r3, [r7, #48]
	subs	r3, r2, r3
	str	r3, [r7, #112]
	ldr	r2, [r7, #48]
	ldr	r3, [r7, #132]
	cmp	r2, r3
	bcc	.L193
	b	.L192
.L193:
	ldr	r3, [r7, #60]
	cmp	r3, #4
	bne	.L194
	ldr	r3, [r7, #112]
	subs	r3, r3, #1
	str	r3, [r7, #112]
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
	b	.L195
.L194:
	ldr	r3, [r7, #60]
	cmp	r3, #2
	bne	.L196
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
	ldr	r3, [r7, #112]
	subs	r3, r3, #2
	str	r3, [r7, #112]
	b	.L195
.L196:
	movs	r3, #3
	str	r3, [r7, #44]
	b	.L197
.L195:
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L198
	ldr	r3, [r7, #96]
	ldr	r3, [r3]
	ldr	r0, [r7, #92]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #96]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #96]
	movs	r2, #0
	str	r2, [r3]
.L198:
	ldr	r3, [r7, #112]
	adds	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #44
	ldr	r0, [r7, #92]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #88]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L199
	b	.L197
.L199:
	ldr	r3, [r7, #48]
	ldr	r0, [r7, #88]
	mov	r1, r3
	ldr	r2, [r7, #112]
	bl	memcpy(PLT)
	ldr	r2, [r7, #88]
	ldr	r3, [r7, #112]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #96]
	ldr	r2, [r7, #88]
	str	r2, [r3]
	b	.L192
.L184:
	ldr	r3, [r7, #96]
	str	r3, [r7, #84]
	add	r2, r7, #48
	add	r3, r7, #16
	movs	r1, #0
	str	r1, [sp]
	mov	r0, r2
	ldr	r1, [r7, #132]
	movs	r2, #4
	bl	ps_tofixedarray(PLT)
	str	r0, [r7, #80]
	ldr	r3, [r7, #80]
	cmp	r3, #3
	bgt	.L200
	movs	r3, #3
	str	r3, [r7, #44]
	b	.L197
.L200:
	ldr	r3, [r7, #16]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #84]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #84]
	str	r2, [r3, #4]
	ldr	r3, [r7, #24]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #84]
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #84]
	str	r2, [r3, #12]
	b	.L192
.L185:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #16]
	str	r3, [r7, #76]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #44
	str	r2, [sp, #4]
	ldr	r0, [r7, #76]
	movs	r1, #4
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	str	r0, [r7, #72]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L201
	b	.L197
.L201:
	movs	r3, #0
	str	r3, [r7, #108]
	b	.L202
.L205:
	ldr	r2, [r7]
	ldr	r3, [r7, #108]
	ldr	r1, [r7]
	mul	r3, r1, r3
	lsls	r3, r3, #2
	ldr	r1, [r7, #72]
	add	r3, r3, r1
	add	r1, r7, #48
	movs	r0, #0
	str	r0, [sp]
	mov	r0, r1
	ldr	r1, [r7, #132]
	bl	ps_tofixedarray(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	blt	.L203
	ldr	r2, [r7, #68]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L204
.L203:
	movs	r3, #3
	str	r3, [r7, #44]
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #72]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #72]
	b	.L197
.L204:
	add	r3, r7, #48
	mov	r0, r3
	ldr	r1, [r7, #132]
	bl	skip_spaces(PLT)
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
.L202:
	ldr	r3, [r7, #108]
	cmp	r3, #3
	bls	.L205
	movs	r3, #0
	str	r3, [r7, #108]
	b	.L206
.L207:
	ldr	r3, [r7, #108]
	lsls	r3, r3, #2
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #64]
	ldr	r3, [r7, #108]
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #64]
	str	r2, [r3]
	ldr	r2, [r7, #108]
	ldr	r3, [r7]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #64]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	lsls	r2, r3, #1
	ldr	r3, [r7, #108]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #64]
	str	r2, [r3, #8]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [r7, #108]
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r2, [r7, #72]
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #64]
	str	r2, [r3, #12]
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
.L206:
	ldr	r2, [r7, #108]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L207
	ldr	r0, [r7, #76]
	ldr	r1, [r7, #72]
	bl	ft_mem_free(PLT)
	movs	r3, #0
	str	r3, [r7, #72]
	nop
.L192:
	ldr	r3, [r7, #128]
	subs	r3, r3, #1
	str	r3, [r7, #128]
	ldr	r3, [r7, #124]
	adds	r3, r3, #1
	str	r3, [r7, #124]
.L176:
	ldr	r3, [r7, #128]
	cmp	r3, #0
	bne	.L208
	movs	r3, #0
	str	r3, [r7, #44]
.L197:
	ldr	r3, [r7, #44]
	b	.L211
.L212:
	nop
.L170:
	movs	r3, #3
	str	r3, [r7, #44]
	b	.L197
.L211:
	mov	r0, r3
	adds	r7, r7, #136
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_parser_load_field, .-ps_parser_load_field
	.section	.text.ps_parser_load_field_table,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_load_field_table, %function
ps_parser_load_field_table:
	@ args = 4, pretend = 0, frame = 456
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #464
	add	r7, sp, #8
	add	r4, r7, #12
	str	r0, [r4]
	add	r0, r7, #8
	str	r1, [r0]
	adds	r1, r7, #4
	str	r2, [r1]
	mov	r2, r7
	str	r3, [r2]
	movs	r3, #0
	str	r3, [r7, #448]
	add	r2, r7, #16
	add	r3, r7, #8
	ldr	r3, [r3]
	mov	r4, r2
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
	add	r3, r7, #16
	movs	r2, #2
	str	r2, [r3, #8]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #10
	beq	.L214
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #7
	bne	.L215
.L214:
	add	r3, r7, #16
	movs	r2, #3
	str	r2, [r3, #8]
.L215:
	add	r1, r7, #12
	add	r2, r7, #56
	add	r3, r7, #52
	ldr	r0, [r1]
	mov	r1, r2
	movs	r2, #32
	bl	ps_parser_to_token_array(PLT)
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L216
	movs	r3, #162
	str	r3, [r7, #448]
	b	.L217
.L216:
	add	r3, r7, #52
	ldr	r3, [r3]
	mov	r2, r3
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	cmp	r2, r3
	bls	.L218
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #24]
	mov	r2, r3
	add	r3, r7, #52
	str	r2, [r3]
.L218:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3]
	str	r3, [r7, #444]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [r7, #440]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #7
	beq	.L219
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	beq	.L219
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r2, [r3]
	add	r3, r7, #8
	ldr	r3, [r3]
	ldr	r3, [r3, #28]
	add	r3, r3, r2
	add	r2, r7, #52
	ldr	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3]
.L219:
	add	r3, r7, #56
	str	r3, [r7, #452]
	b	.L220
.L223:
	ldr	r3, [r7, #452]
	ldr	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3]
	ldr	r3, [r7, #452]
	ldr	r2, [r3, #4]
	add	r3, r7, #12
	ldr	r3, [r3]
	str	r2, [r3, #8]
	add	r0, r7, #12
	add	r1, r7, #16
	adds	r2, r7, #4
	mov	r3, r7
	movs	r4, #0
	str	r4, [sp]
	ldr	r0, [r0]
	ldr	r2, [r2]
	ldr	r3, [r3]
	bl	ps_parser_load_field(PLT)
	str	r0, [r7, #448]
	ldr	r3, [r7, #448]
	cmp	r3, #0
	beq	.L221
	b	.L222
.L221:
	add	r3, r7, #16
	ldr	r2, [r3, #16]
	add	r3, r7, #16
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	add	r2, r2, r3
	add	r3, r7, #16
	str	r2, [r3, #16]
	add	r3, r7, #52
	ldr	r3, [r3]
	subs	r2, r3, #1
	add	r3, r7, #52
	str	r2, [r3]
	ldr	r3, [r7, #452]
	adds	r3, r3, #12
	str	r3, [r7, #452]
.L220:
	add	r3, r7, #52
	ldr	r3, [r3]
	cmp	r3, #0
	bgt	.L223
.L222:
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #444]
	str	r2, [r3]
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #440]
	str	r2, [r3, #8]
.L217:
	ldr	r3, [r7, #448]
	mov	r0, r3
	add	r7, r7, #456
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	ps_parser_load_field_table, .-ps_parser_load_field_table
	.section	.text.ps_parser_to_int,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_to_int, %function
ps_parser_to_int:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	ps_parser_skip_spaces(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	PS_Conv_ToInt(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_parser_to_int, .-ps_parser_to_int
	.section	.text.ps_parser_to_bytes,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_to_bytes, %function
ps_parser_to_bytes:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r0, [r7, #12]
	bl	ps_parser_skip_spaces(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L228
	b	.L229
.L228:
	ldrb	r3, [r7, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L230
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #60
	beq	.L231
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L229
.L231:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L230:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	PS_Conv_ASCIIHexDecode(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	str	r2, [r3]
	ldrb	r3, [r7, #32]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L232
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bls	.L233
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #62
	beq	.L233
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L229
.L233:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L232:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	str	r2, [r3]
.L229:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_parser_to_bytes, .-ps_parser_to_bytes
	.section	.text.ps_parser_to_fixed,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_to_fixed, %function
ps_parser_to_fixed:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	ps_parser_skip_spaces(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7]
	bl	PS_Conv_ToFixed(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_parser_to_fixed, .-ps_parser_to_fixed
	.section	.text.ps_parser_to_coord_array,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_to_coord_array, %function
ps_parser_to_coord_array:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	bl	ps_parser_skip_spaces(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	ps_tocoordarray(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_parser_to_coord_array, .-ps_parser_to_coord_array
	.section	.text.ps_parser_to_fixed_array,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_to_fixed_array, %function
ps_parser_to_fixed_array:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r0, [r7, #12]
	bl	ps_parser_skip_spaces(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	ldr	r1, [r7]
	str	r1, [sp]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	bl	ps_tofixedarray(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	ps_parser_to_fixed_array, .-ps_parser_to_fixed_array
	.section	.text.ps_parser_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_init, %function
ps_parser_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r1, .L242
.LPIC1:
	add	r1, pc
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	ldr	r2, [r7, #12]
	ldr	r3, .L242+4
	ldr	r3, [r1, r3]
	add	r4, r2, #20
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
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
.L243:
	.align	2
.L242:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	ps_parser_funcs(GOT)
	.size	ps_parser_init, .-ps_parser_init
	.section	.text.ps_parser_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	ps_parser_done, %function
ps_parser_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	ps_parser_done, .-ps_parser_done
	.section	.text.t1_builder_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_builder_init, %function
t1_builder_init:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r4, .L247
.LPIC2:
	add	r4, pc
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #68]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #100]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L246
	ldr	r3, [r7]
	ldr	r3, [r3, #156]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	add	r2, r3, #20
	ldr	r3, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #20]
	add	r2, r3, #56
	ldr	r3, [r7, #12]
	str	r2, [r3, #20]
	ldr	r0, [r7, #20]
	bl	FT_GlyphLoader_Rewind(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #12]
	str	r2, [r3, #76]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #72]
	ldrb	r3, [r7, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L246
	ldr	r3, [r7]
	ldr	r3, [r3, #156]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #12]
	str	r2, [r3, #72]
.L246:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r2, [r7, #12]
	ldr	r3, .L247+4
	ldr	r3, [r4, r3]
	add	r4, r2, #80
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldmia	r5, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L248:
	.align	2
.L247:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	t1_builder_funcs(GOT)
	.size	t1_builder_init, .-t1_builder_init
	.section	.text.t1_builder_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_builder_done, %function
t1_builder_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L249
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	add	r4, r2, #108
	mov	r5, r3
	ldmia	r5!, {r0, r1, r2, r3}
	stmia	r4!, {r0, r1, r2, r3}
	ldr	r3, [r5]
	str	r3, [r4]
.L249:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7}
	bx	lr
	.size	t1_builder_done, .-t1_builder_done
	.section	.text.t1_builder_check_points,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_builder_check_points, %function
t1_builder_check_points:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L252
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #22]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #58]
	sxth	r3, r3
	add	r2, r2, r3
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L252
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	bl	FT_GlyphLoader_CheckPoints(PLT)
	mov	r3, r0
	b	.L253
.L252:
	movs	r3, #0
.L253:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_builder_check_points, .-t1_builder_check_points
	.section	.text.t1_builder_add_point,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_builder_add_point, %function
t1_builder_add_point:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L256
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r0, [r7, #8]
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	ldr	r3, [r7, #24]
	str	r2, [r3]
	ldr	r0, [r7, #4]
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	ldr	r3, [r7, #24]
	str	r2, [r3, #4]
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L257
	movs	r3, #1
	b	.L258
.L257:
	movs	r3, #2
.L258:
	ldr	r2, [r7, #20]
	strb	r3, [r2]
.L256:
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #28]
	strh	r2, [r3, #2]	@ movhi
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_builder_add_point, .-t1_builder_add_point
	.section	.text.t1_builder_add_point1,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_builder_add_point1, %function
t1_builder_add_point1:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	movs	r1, #1
	bl	t1_builder_check_points(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L260
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r3, #1
	bl	t1_builder_add_point(PLT)
.L260:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_builder_add_point1, .-t1_builder_add_point1
	.section	.text.t1_builder_add_contour,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_builder_add_contour, %function
t1_builder_add_contour:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L263
	movs	r3, #3
	b	.L264
.L263:
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #68]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L265
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3]	@ movhi
	movs	r3, #0
	b	.L264
.L265:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #20]
	sxth	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldrh	r3, [r3, #56]
	sxth	r3, r3
	add	r3, r3, r2
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bls	.L266
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #0
	movs	r2, #1
	bl	FT_GlyphLoader_CheckPoints(PLT)
	mov	r3, r0
	b	.L267
.L266:
	movs	r3, #0
.L267:
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L268
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L269
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	sxth	r3, r3
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	ldrh	r2, [r2, #2]
	uxth	r2, r2
	subs	r2, r2, #1
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L269:
	ldr	r3, [r7, #12]
	ldrh	r3, [r3]
	uxth	r3, r3
	adds	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #12]
	strh	r2, [r3]	@ movhi
.L268:
	ldr	r3, [r7, #8]
.L264:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_builder_add_contour, .-t1_builder_add_contour
	.section	.text.t1_builder_start_point,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_builder_start_point, %function
t1_builder_start_point:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #3
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #64]
	cmp	r3, #3
	bne	.L271
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L272
.L271:
	ldr	r3, [r7, #12]
	movs	r2, #3
	str	r2, [r3, #64]
	ldr	r0, [r7, #12]
	bl	t1_builder_add_contour(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L272
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	t1_builder_add_point1(PLT)
	str	r0, [r7, #20]
.L272:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_builder_start_point, .-t1_builder_start_point
	.section	.text.t1_builder_close_contour,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_builder_close_contour, %function
t1_builder_close_contour:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #36
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L275
	b	.L274
.L275:
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #1
	ble	.L277
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	sxth	r3, r3
	add	r3, r3, #-2147483648
	subs	r3, r3, #2
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	sxth	r3, r3
	adds	r3, r3, #1
	b	.L278
.L277:
	movs	r3, #0
.L278:
	str	r3, [r7, #24]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	cmp	r3, #1
	ble	.L279
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	add	r3, r3, #536870912
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #16]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r3, r3, #1
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L279
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L279
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L279
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #28]
	strh	r2, [r3, #2]	@ movhi
.L279:
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #0
	ble	.L274
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	subs	r2, r3, #1
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L280
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #28]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #28]
	ldrh	r3, [r3, #2]
	uxth	r3, r3
	subs	r3, r3, #1
	uxth	r2, r3
	ldr	r3, [r7, #28]
	strh	r2, [r3, #2]	@ movhi
	b	.L274
.L280:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	ldrh	r3, [r3]
	sxth	r3, r3
	add	r3, r3, #-2147483648
	subs	r3, r3, #1
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	ldrh	r2, [r2, #2]
	uxth	r2, r2
	subs	r2, r2, #1
	uxth	r2, r2
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L274:
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t1_builder_close_contour, .-t1_builder_close_contour
	.section	.text.t1_decrypt,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_decrypt, %function
t1_decrypt:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	mov	r3, r2
	strh	r3, [r7, #6]	@ movhi
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	add	r1, r7, #12
	adds	r0, r7, #6
	str	r0, [sp]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	ldr	r3, [r7, #8]
	bl	PS_Conv_EexecDecode(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_decrypt, .-t1_decrypt
	.global	ps_table_funcs
	.section	.data.rel.ro.local.ps_table_funcs,"aw",%progbits
	.align	2
	.type	ps_table_funcs, %object
	.size	ps_table_funcs, 16
ps_table_funcs:
	.word	ps_table_new
	.word	ps_table_done
	.word	ps_table_add
	.word	ps_table_release
	.global	ps_parser_funcs
	.section	.data.rel.ro.local.ps_parser_funcs,"aw",%progbits
	.align	2
	.type	ps_parser_funcs, %object
	.size	ps_parser_funcs, 52
ps_parser_funcs:
	.word	ps_parser_init
	.word	ps_parser_done
	.word	ps_parser_skip_spaces
	.word	ps_parser_skip_PS_token
	.word	ps_parser_to_int
	.word	ps_parser_to_fixed
	.word	ps_parser_to_bytes
	.word	ps_parser_to_coord_array
	.word	ps_parser_to_fixed_array
	.word	ps_parser_to_token
	.word	ps_parser_to_token_array
	.word	ps_parser_load_field
	.word	ps_parser_load_field_table
	.global	t1_builder_funcs
	.section	.data.rel.ro.local.t1_builder_funcs,"aw",%progbits
	.align	2
	.type	t1_builder_funcs, %object
	.size	t1_builder_funcs, 32
t1_builder_funcs:
	.word	t1_builder_init
	.word	t1_builder_done
	.word	t1_builder_check_points
	.word	t1_builder_add_point
	.word	t1_builder_add_point1
	.word	t1_builder_add_contour
	.word	t1_builder_start_point
	.word	t1_builder_close_contour
	.global	t1_decoder_funcs
	.section	.data.rel.ro.local.t1_decoder_funcs,"aw",%progbits
	.align	2
	.type	t1_decoder_funcs, %object
	.size	t1_decoder_funcs, 12
t1_decoder_funcs:
	.word	t1_decoder_init
	.word	t1_decoder_done
	.word	t1_decoder_parse_charstrings
	.global	afm_parser_funcs
	.section	.data.rel.ro.local.afm_parser_funcs,"aw",%progbits
	.align	2
	.type	afm_parser_funcs, %object
	.size	afm_parser_funcs, 12
afm_parser_funcs:
	.word	afm_parser_init
	.word	afm_parser_done
	.word	afm_parser_parse
	.global	t1_cmap_classes
	.section	.data.rel.ro.t1_cmap_classes,"aw",%progbits
	.align	2
	.type	t1_cmap_classes, %object
	.size	t1_cmap_classes, 16
t1_cmap_classes:
	.word	t1_cmap_standard_class_rec
	.word	t1_cmap_expert_class_rec
	.word	t1_cmap_custom_class_rec
	.word	t1_cmap_unicode_class_rec
	.section	.data.rel.ro.psaux_interface,"aw",%progbits
	.align	2
	.type	psaux_interface, %object
	.size	psaux_interface, 28
psaux_interface:
	.word	ps_table_funcs
	.word	ps_parser_funcs
	.word	t1_builder_funcs
	.word	t1_decoder_funcs
	.word	t1_decrypt
	.word	t1_cmap_classes
	.word	afm_parser_funcs
	.global	psaux_module_class
	.section	.rodata
	.align	2
.LC0:
	.ascii	"psaux\000"
	.section	.data.rel.ro.local.psaux_module_class,"aw",%progbits
	.align	2
	.type	psaux_module_class, %object
	.size	psaux_module_class, 36
psaux_module_class:
	.word	0
	.word	12
	.word	.LC0
	.word	131072
	.word	131072
	.word	psaux_interface
	.word	0
	.word	0
	.word	0
	.section	.rodata.t1_args_count,"a",%progbits
	.align	2
	.type	t1_args_count, %object
	.size	t1_args_count, 108
t1_args_count:
	.word	0
	.word	0
	.word	2
	.word	5
	.word	4
	.word	0
	.word	1
	.word	1
	.word	4
	.word	2
	.word	2
	.word	6
	.word	4
	.word	1
	.word	1
	.word	0
	.word	2
	.word	6
	.word	2
	.word	6
	.word	2
	.word	-1
	.word	1
	.word	0
	.word	0
	.word	2
	.word	2
	.section	.text.t1_lookup_glyph_by_stdcharcode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_lookup_glyph_by_stdcharcode, %function
t1_lookup_glyph_by_stdcharcode:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1348]
	str	r3, [r7, #16]
	ldr	r3, [r7]
	cmp	r3, #0
	blt	.L283
	ldr	r3, [r7]
	cmp	r3, #255
	ble	.L284
.L283:
	mov	r3, #-1
	b	.L285
.L284:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #16]
	ldr	r1, [r2, #24]
	ldr	r2, [r7]
	lsls	r2, r2, #1
	add	r2, r2, r1
	ldrh	r2, [r2]
	mov	r0, r2
	blx	r3
	str	r0, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L286
.L288:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #1356]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L287
	ldr	r3, [r7, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L287
	ldr	r0, [r7, #8]
	ldr	r1, [r7, #12]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L287
	ldr	r3, [r7, #20]
	b	.L285
.L287:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L286:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #1352]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L288
	mov	r3, #-1
.L285:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_lookup_glyph_by_stdcharcode, .-t1_lookup_glyph_by_stdcharcode
	.section	.text.t1operator_seac,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1operator_seac, %function
t1operator_seac:
	@ args = 8, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #64
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #48]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #1496]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L290
	movs	r3, #160
	b	.L303
.L290:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #70]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L292
	movs	r3, #160
	b	.L303
.L292:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #32]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1356]
	cmp	r3, #0
	bne	.L293
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	bne	.L293
	movs	r3, #160
	b	.L303
.L293:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #128]
	ldr	r3, [r3, #48]
	cmp	r3, #0
	beq	.L294
	ldr	r3, [r7, #72]
	str	r3, [r7, #56]
	ldr	r3, [r7, #76]
	str	r3, [r7, #52]
	b	.L295
.L294:
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #72]
	bl	t1_lookup_glyph_by_stdcharcode(PLT)
	str	r0, [r7, #56]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #76]
	bl	t1_lookup_glyph_by_stdcharcode(PLT)
	str	r0, [r7, #52]
.L295:
	ldr	r3, [r7, #56]
	cmp	r3, #0
	blt	.L296
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bge	.L297
.L296:
	movs	r3, #160
	b	.L303
.L297:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #69]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L298
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	ldr	r3, [r3, #156]
	ldr	r3, [r3]
	str	r3, [r7, #40]
	ldr	r0, [r7, #40]
	movs	r1, #2
	bl	FT_GlyphLoader_CheckSubGlyphs(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L299
	b	.L300
.L299:
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #88]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #56]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	movw	r2, #514
	strh	r2, [r3, #4]	@ movhi
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #36]
	adds	r3, r3, #32
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #52]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	movs	r2, #2
	strh	r2, [r3, #4]	@ movhi
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	mov	r0, r3
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	ldr	r3, [r7, #36]
	str	r2, [r3, #8]
	ldr	r0, [r7]
	bl	FT_RoundFix(PLT)
	mov	r3, r0
	asrs	r2, r3, #16
	ldr	r3, [r7, #36]
	str	r2, [r3, #12]
	ldr	r3, [r7, #44]
	movs	r2, #2
	str	r2, [r3, #128]
	ldr	r3, [r7, #40]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #44]
	str	r2, [r3, #132]
	ldr	r2, [r7, #44]
	movw	r3, #28016
	movt	r3, 25455
	str	r3, [r2, #72]
	ldr	r3, [r7, #40]
	movs	r2, #2
	str	r2, [r3, #84]
	b	.L300
.L298:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	FT_GlyphLoader_Prepare(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #1496]
	ldr	r3, [r7, #56]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	t1_decoder_parse_glyph(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #1496]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L301
	b	.L300
.L301:
	ldr	r2, [r7, #12]
	add	r3, r7, #28
	adds	r2, r2, #32
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r2, [r7, #12]
	add	r3, r7, #20
	adds	r2, r2, #40
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #1496]
	ldr	r3, [r7, #52]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	t1_decoder_parse_glyph(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #1496]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	beq	.L302
	b	.L300
.L302:
	ldr	r3, [r7, #12]
	adds	r3, r3, #32
	add	r2, r7, #28
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	adds	r3, r3, #40
	add	r2, r7, #20
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
.L300:
	ldr	r3, [r7, #60]
.L303:
	mov	r0, r3
	adds	r7, r7, #64
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1operator_seac, .-t1operator_seac
	.section	.text.t1_decoder_parse_charstrings,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_decoder_parse_charstrings, %function
t1_decoder_parse_charstrings:
	@ args = 0, pretend = 0, frame = 168
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #176
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	str	r3, [r7, #88]
	movs	r3, #0
	str	r3, [r7, #136]
	movs	r3, #0
	str	r3, [r7, #132]
	add	r2, r7, #20
	add	r3, r7, #12
	eors	r2, r2, r3
	add	r3, r7, #8
	eors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	asrs	r2, r3, #10
	ldr	r3, [r7, #20]
	eors	r2, r2, r3
	ldr	r3, [r7, #20]
	asrs	r3, r3, #20
	eors	r3, r3, r2
	uxth	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L305
	movw	r3, #29572
	str	r3, [r7, #20]
.L305:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #12]
	adds	r2, r2, #112
	str	r2, [r3, #1136]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #12]
	addw	r2, r2, #1140
	str	r2, [r3, #1344]
	ldr	r3, [r7, #12]
	addw	r3, r3, #1140
	str	r3, [r7, #160]
	ldr	r3, [r7, #88]
	movs	r2, #0
	str	r2, [r3, #64]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #72]
	str	r3, [r7, #84]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1488]
	cmp	r3, #0
	beq	.L306
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1492]
	cmp	r3, #0
	beq	.L306
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #1488]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1492]
	lsls	r3, r3, #2
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
.L306:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #160]
	str	r2, [r3, #4]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #160]
	str	r2, [r3, #8]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #8]
	str	r3, [r7, #152]
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #160]
	str	r2, [r3]
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	str	r3, [r7, #156]
	movs	r3, #0
	str	r3, [r7, #164]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #24]
	str	r3, [r7, #140]
	ldr	r3, [r7, #140]
	str	r3, [r7, #148]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #28]
	str	r3, [r7, #80]
	ldr	r3, [r7, #80]
	str	r3, [r7, #144]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L307
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #4]
	ldr	r2, [r7, #84]
	ldr	r2, [r2]
	mov	r0, r2
	blx	r3
.L307:
	movs	r3, #0
	strb	r3, [r7, #131]
	b	.L308
.L472:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1136]
	str	r3, [r7, #124]
	movs	r3, #0
	str	r3, [r7, #120]
	movs	r3, #0
	str	r3, [r7, #116]
	ldr	r3, [r7, #156]
	adds	r2, r3, #1
	str	r2, [r7, #156]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #11
	beq	.L310
	cmp	r3, #11
	bgt	.L311
	cmp	r3, #6
	beq	.L312
	cmp	r3, #6
	bgt	.L313
	cmp	r3, #3
	beq	.L314
	cmp	r3, #3
	bgt	.L315
	cmp	r3, #1
	beq	.L316
	b	.L309
.L315:
	cmp	r3, #4
	beq	.L317
	cmp	r3, #5
	beq	.L318
	b	.L309
.L313:
	cmp	r3, #8
	beq	.L319
	cmp	r3, #8
	blt	.L320
	cmp	r3, #9
	beq	.L321
	cmp	r3, #10
	beq	.L322
	b	.L309
.L311:
	cmp	r3, #21
	beq	.L323
	cmp	r3, #21
	bgt	.L324
	cmp	r3, #13
	beq	.L325
	cmp	r3, #13
	blt	.L326
	cmp	r3, #14
	beq	.L327
	cmp	r3, #15
	beq	.L328
	b	.L309
.L324:
	cmp	r3, #30
	beq	.L329
	cmp	r3, #30
	bgt	.L330
	cmp	r3, #22
	beq	.L331
	b	.L309
.L330:
	cmp	r3, #31
	beq	.L332
	cmp	r3, #255
	beq	.L333
	b	.L309
.L316:
	movs	r3, #16
	str	r3, [r7, #120]
	b	.L334
.L314:
	movs	r3, #18
	str	r3, [r7, #120]
	b	.L334
.L317:
	movs	r3, #14
	str	r3, [r7, #120]
	b	.L334
.L318:
	movs	r3, #9
	str	r3, [r7, #120]
	b	.L334
.L312:
	movs	r3, #6
	str	r3, [r7, #120]
	b	.L334
.L320:
	movs	r3, #13
	str	r3, [r7, #120]
	b	.L334
.L319:
	movs	r3, #11
	str	r3, [r7, #120]
	b	.L334
.L321:
	movs	r3, #5
	str	r3, [r7, #120]
	b	.L334
.L322:
	movs	r3, #22
	str	r3, [r7, #120]
	b	.L334
.L310:
	movs	r3, #24
	str	r3, [r7, #120]
	b	.L334
.L325:
	movs	r3, #2
	str	r3, [r7, #120]
	b	.L334
.L327:
	movs	r3, #1
	str	r3, [r7, #120]
	b	.L334
.L328:
	movs	r3, #26
	str	r3, [r7, #120]
	b	.L334
.L323:
	movs	r3, #10
	str	r3, [r7, #120]
	b	.L334
.L331:
	movs	r3, #7
	str	r3, [r7, #120]
	b	.L334
.L329:
	movs	r3, #12
	str	r3, [r7, #120]
	b	.L334
.L332:
	movs	r3, #8
	str	r3, [r7, #120]
	b	.L334
.L326:
	ldr	r2, [r7, #156]
	ldr	r3, [r7, #152]
	cmp	r2, r3
	bcc	.L335
	b	.L336
.L335:
	ldr	r3, [r7, #156]
	adds	r2, r3, #1
	str	r2, [r7, #156]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #33
	bhi	.L474
	adr	r1, .L339
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L339:
	.word	.L338+1-.L339
	.word	.L340+1-.L339
	.word	.L341+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L342+1-.L339
	.word	.L343+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L344+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L345+1-.L339
	.word	.L346+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L474+1-.L339
	.word	.L347+1-.L339
.L338:
	movs	r3, #15
	str	r3, [r7, #120]
	b	.L348
.L340:
	movs	r3, #19
	str	r3, [r7, #120]
	b	.L348
.L341:
	movs	r3, #17
	str	r3, [r7, #120]
	b	.L348
.L342:
	movs	r3, #3
	str	r3, [r7, #120]
	b	.L348
.L343:
	movs	r3, #4
	str	r3, [r7, #120]
	b	.L348
.L344:
	movs	r3, #20
	str	r3, [r7, #120]
	b	.L348
.L345:
	movs	r3, #21
	str	r3, [r7, #120]
	b	.L348
.L346:
	movs	r3, #23
	str	r3, [r7, #120]
	b	.L348
.L347:
	movs	r3, #25
	str	r3, [r7, #120]
	nop
.L348:
	b	.L334
.L333:
	ldr	r3, [r7, #156]
	adds	r2, r3, #4
	ldr	r3, [r7, #152]
	cmp	r2, r3
	bls	.L349
	b	.L336
.L349:
	ldr	r3, [r7, #156]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r2, r3, #24
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	orrs	r2, r2, r3
	ldr	r3, [r7, #156]
	adds	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #156]
	adds	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	orrs	r3, r3, r2
	str	r3, [r7, #116]
	ldr	r3, [r7, #156]
	adds	r3, r3, #4
	str	r3, [r7, #156]
	ldr	r3, [r7, #116]
	cmp	r3, #32000
	bgt	.L350
	ldr	r3, [r7, #116]
	cmn	r3, #32000
	bge	.L351
.L350:
	ldrb	r3, [r7, #131]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L352
	movs	r3, #1
	strb	r3, [r7, #131]
	b	.L353
.L352:
	b	.L353
.L351:
	ldrb	r3, [r7, #131]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L353
	ldr	r3, [r7, #116]
	lsls	r3, r3, #16
	str	r3, [r7, #116]
	b	.L334
.L353:
	b	.L334
.L309:
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #31
	bls	.L354
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #246
	bhi	.L355
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #139
	str	r3, [r7, #116]
	b	.L356
.L355:
	ldr	r3, [r7, #156]
	adds	r3, r3, #1
	str	r3, [r7, #156]
	ldr	r2, [r7, #156]
	ldr	r3, [r7, #152]
	cmp	r2, r3
	bls	.L357
	b	.L336
.L357:
	ldr	r3, [r7, #156]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #250
	bhi	.L358
	ldr	r3, [r7, #156]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #247
	lsls	r2, r3, #8
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	adds	r3, r3, #108
	str	r3, [r7, #116]
	b	.L356
.L358:
	ldr	r3, [r7, #156]
	subs	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	rsb	r3, r3, #251
	lsls	r2, r3, #8
	ldr	r3, [r7, #156]
	subs	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r2, r3
	subs	r3, r3, #108
	str	r3, [r7, #116]
.L356:
	ldrb	r3, [r7, #131]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L334
	ldr	r3, [r7, #116]
	lsls	r3, r3, #16
	str	r3, [r7, #116]
	b	.L334
.L354:
	b	.L336
.L334:
	ldr	r3, [r7, #132]
	cmp	r3, #0
	ble	.L360
	ldr	r3, [r7, #120]
	cmp	r3, #0
	beq	.L475
	subs	r3, r3, #22
	cmp	r3, #2
	bls	.L475
	movs	r3, #0
	str	r3, [r7, #132]
	b	.L360
.L475:
	nop
.L360:
	ldrb	r3, [r7, #131]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L363
	ldr	r3, [r7, #120]
	cmp	r3, #0
	beq	.L363
	ldr	r3, [r7, #120]
	cmp	r3, #20
	beq	.L363
	movs	r3, #0
	strb	r3, [r7, #131]
.L363:
	ldr	r3, [r7, #120]
	cmp	r3, #0
	bne	.L364
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #12]
	adds	r3, r3, #112
	subs	r3, r2, r3
	cmp	r3, #1024
	blt	.L365
	b	.L336
.L365:
	ldr	r3, [r7, #124]
	adds	r2, r3, #4
	str	r2, [r7, #124]
	ldr	r2, [r7, #116]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #124]
	str	r2, [r3, #1136]
	b	.L308
.L364:
	ldr	r3, [r7, #120]
	cmp	r3, #21
	bne	.L366
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #12]
	adds	r3, r3, #112
	subs	r3, r2, r3
	cmp	r3, #7
	bgt	.L367
	b	.L368
.L367:
	ldr	r3, [r7, #124]
	subs	r3, r3, #8
	str	r3, [r7, #124]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	asrs	r3, r3, #16
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #76]
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	asrs	r3, r3, #16
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #72]
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #12]
	adds	r3, r3, #112
	subs	r3, r2, r3
	asrs	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #72]
	cmp	r2, r3
	bge	.L369
	b	.L368
.L369:
	ldr	r3, [r7, #72]
	lsls	r3, r3, #2
	negs	r3, r3
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	str	r3, [r7, #124]
	movs	r3, #0
	str	r3, [r7, #136]
	movs	r3, #0
	str	r3, [r7, #132]
	ldr	r3, [r7, #76]
	cmp	r3, #28
	bhi	.L370
	adr	r1, .L372
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L372:
	.word	.L371+1-.L372
	.word	.L373+1-.L372
	.word	.L374+1-.L372
	.word	.L375+1-.L372
	.word	.L370+1-.L372
	.word	.L370+1-.L372
	.word	.L370+1-.L372
	.word	.L370+1-.L372
	.word	.L370+1-.L372
	.word	.L370+1-.L372
	.word	.L370+1-.L372
	.word	.L370+1-.L372
	.word	.L376+1-.L372
	.word	.L376+1-.L372
	.word	.L377+1-.L372
	.word	.L377+1-.L372
	.word	.L377+1-.L372
	.word	.L377+1-.L372
	.word	.L377+1-.L372
	.word	.L378+1-.L372
	.word	.L379+1-.L372
	.word	.L380+1-.L372
	.word	.L381+1-.L372
	.word	.L382+1-.L372
	.word	.L383+1-.L372
	.word	.L384+1-.L372
	.word	.L370+1-.L372
	.word	.L385+1-.L372
	.word	.L386+1-.L372
.L371:
	ldr	r3, [r7, #72]
	cmp	r3, #3
	beq	.L387
	b	.L388
.L387:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1400]
	cmp	r3, #0
	beq	.L336
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1404]
	cmp	r3, #7
	bne	.L336
	ldr	r3, [r7, #124]
	ldr	r2, [r7, #148]
	str	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r2, [r7, #144]
	str	r2, [r3]
	movs	r3, #2
	str	r3, [r7, #136]
	b	.L389
.L373:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	beq	.L390
	b	.L388
.L390:
	ldr	r3, [r7, #12]
	movs	r2, #1
	str	r2, [r3, #1400]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #1404]
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	bl	t1_builder_start_point(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	bne	.L391
	ldr	r0, [r7, #88]
	movs	r1, #6
	bl	t1_builder_check_points(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	bne	.L391
	b	.L389
.L374:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	beq	.L392
	b	.L388
.L392:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1400]
	cmp	r3, #0
	bne	.L393
	b	.L336
.L393:
	ldr	r2, [r7, #12]
	ldr	r3, [r2, #1404]
	adds	r1, r3, #1
	str	r1, [r2, #1404]
	str	r3, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	ble	.L394
	ldr	r3, [r7, #68]
	cmp	r3, #6
	bgt	.L394
	ldr	r3, [r7, #68]
	cmp	r3, #3
	beq	.L395
	ldr	r3, [r7, #68]
	cmp	r3, #6
	bne	.L396
.L395:
	movs	r3, #1
	b	.L397
.L396:
	movs	r3, #0
.L397:
	uxtb	r3, r3
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	bl	t1_builder_add_point(PLT)
	b	.L389
.L394:
	b	.L389
.L375:
	ldr	r3, [r7, #72]
	cmp	r3, #1
	beq	.L398
	b	.L388
.L398:
	movs	r3, #1
	str	r3, [r7, #136]
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L399
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #20]
	ldr	r2, [r7, #84]
	ldr	r1, [r2]
	ldr	r2, [r7, #88]
	ldr	r2, [r2, #20]
	ldrh	r2, [r2, #2]
	sxth	r2, r2
	mov	r0, r1
	mov	r1, r2
	blx	r3
	b	.L389
.L399:
	b	.L389
.L376:
	ldr	r3, [r7, #12]
	adds	r3, r3, #112
	str	r3, [r7, #124]
	b	.L389
.L377:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1464]
	str	r3, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L400
	b	.L336
.L400:
	ldr	r3, [r7, #76]
	cmp	r3, #18
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [r7, #76]
	add	r3, r3, r2
	subs	r3, r3, #13
	str	r3, [r7, #60]
	ldr	r3, [r7, #64]
	ldr	r3, [r3]
	ldr	r2, [r7, #60]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7, #72]
	cmp	r2, r3
	beq	.L401
	b	.L336
.L401:
	ldr	r3, [r7, #60]
	lsls	r3, r3, #2
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	str	r3, [r7, #104]
	ldr	r3, [r7, #124]
	str	r3, [r7, #100]
	movs	r3, #0
	str	r3, [r7, #112]
	b	.L402
.L405:
	ldr	r3, [r7, #100]
	ldr	r3, [r3]
	str	r3, [r7, #96]
	movs	r3, #1
	str	r3, [r7, #108]
	b	.L403
.L404:
	ldr	r3, [r7, #104]
	adds	r2, r3, #4
	str	r2, [r7, #104]
	ldr	r2, [r3]
	ldr	r3, [r7, #64]
	ldr	r1, [r3, #136]
	ldr	r3, [r7, #108]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	ldr	r2, [r7, #96]
	add	r3, r3, r2
	str	r3, [r7, #96]
	ldr	r3, [r7, #108]
	adds	r3, r3, #1
	str	r3, [r7, #108]
.L403:
	ldr	r3, [r7, #64]
	ldr	r2, [r3]
	ldr	r3, [r7, #108]
	cmp	r2, r3
	bhi	.L404
	ldr	r3, [r7, #100]
	adds	r2, r3, #4
	str	r2, [r7, #100]
	ldr	r2, [r7, #96]
	str	r2, [r3]
	ldr	r3, [r7, #112]
	adds	r3, r3, #1
	str	r3, [r7, #112]
.L402:
	ldr	r2, [r7, #112]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	bcc	.L405
	ldr	r3, [r7, #60]
	str	r3, [r7, #136]
	b	.L389
.L378:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1464]
	str	r3, [r7, #56]
	ldr	r3, [r7, #72]
	cmp	r3, #1
	bne	.L388
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L388
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	asrs	r3, r3, #16
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #0
	blt	.L388
	ldr	r3, [r7, #56]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1492]
	cmp	r2, r3
	bhi	.L388
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #1488]
	ldr	r3, [r7, #52]
	lsls	r3, r3, #2
	adds	r1, r2, r3
	ldr	r3, [r7, #56]
	ldr	r2, [r3, #136]
	ldr	r3, [r7, #56]
	ldr	r3, [r3]
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L389
.L379:
	ldr	r3, [r7, #72]
	cmp	r3, #2
	beq	.L406
	b	.L388
.L406:
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #124]
	str	r2, [r3]
	movs	r3, #1
	str	r3, [r7, #136]
	b	.L389
.L380:
	ldr	r3, [r7, #72]
	cmp	r3, #2
	beq	.L407
	b	.L388
.L407:
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	subs	r2, r2, r3
	ldr	r3, [r7, #124]
	str	r2, [r3]
	movs	r3, #1
	str	r3, [r7, #136]
	b	.L389
.L381:
	ldr	r3, [r7, #72]
	cmp	r3, #2
	beq	.L408
	b	.L388
.L408:
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r2, r0
	ldr	r3, [r7, #124]
	str	r2, [r3]
	movs	r3, #1
	str	r3, [r7, #136]
	b	.L389
.L382:
	ldr	r3, [r7, #72]
	cmp	r3, #2
	bne	.L388
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L388
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #124]
	str	r2, [r3]
	movs	r3, #1
	str	r3, [r7, #136]
	b	.L389
.L383:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1464]
	str	r3, [r7, #48]
	ldr	r3, [r7, #72]
	cmp	r3, #2
	bne	.L388
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L388
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	asrs	r3, r3, #16
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	blt	.L388
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1492]
	cmp	r2, r3
	bcs	.L388
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #1488]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #124]
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L389
.L384:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1464]
	str	r3, [r7, #40]
	ldr	r3, [r7, #72]
	cmp	r3, #1
	bne	.L388
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L388
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	asrs	r3, r3, #16
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	blt	.L388
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1492]
	cmp	r2, r3
	bcs	.L388
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #1488]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #124]
	str	r2, [r3]
	movs	r3, #1
	str	r3, [r7, #136]
	b	.L389
.L385:
	ldr	r3, [r7, #72]
	cmp	r3, #4
	beq	.L409
	b	.L388
.L409:
	ldr	r3, [r7, #124]
	adds	r3, r3, #8
	ldr	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #12
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L410
	ldr	r3, [r7, #124]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #124]
	str	r2, [r3]
.L410:
	movs	r3, #1
	str	r3, [r7, #136]
	b	.L389
.L386:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	beq	.L411
	b	.L388
.L411:
	ldr	r3, [r7, #20]
	str	r3, [r7, #92]
	ldr	r3, [r7, #92]
	cmp	r3, #32768
	blt	.L412
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L412:
	ldr	r3, [r7, #124]
	ldr	r2, [r7, #92]
	str	r2, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #20]
	rsb	r3, r3, #65536
	mov	r0, r2
	mov	r1, r3
	bl	FT_MulFix_arm(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L413
	ldr	r3, [r7, #20]
	add	r3, r3, #10304
	adds	r3, r3, #51
	str	r3, [r7, #20]
.L413:
	movs	r3, #1
	str	r3, [r7, #136]
	b	.L389
.L370:
	ldr	r3, [r7, #72]
	cmp	r3, #0
	blt	.L388
	ldr	r3, [r7, #76]
	cmp	r3, #0
	blt	.L388
	ldr	r3, [r7, #72]
	str	r3, [r7, #132]
	b	.L389
.L388:
	b	.L336
.L389:
	ldr	r3, [r7, #136]
	lsls	r3, r3, #2
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	str	r3, [r7, #124]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #124]
	str	r2, [r3, #1136]
	b	.L308
.L366:
	ldr	r3, .L478
.LPIC3:
	add	r3, pc
	ldr	r2, [r7, #120]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [r7, #32]
	ldr	r2, [r7, #124]
	ldr	r3, [r7, #12]
	adds	r3, r3, #112
	subs	r3, r2, r3
	asrs	r3, r3, #2
	mov	r2, r3
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bge	.L414
	b	.L368
.L414:
	ldr	r3, [r7, #32]
	lsls	r3, r3, #2
	negs	r3, r3
	ldr	r2, [r7, #124]
	add	r3, r3, r2
	str	r3, [r7, #124]
	ldr	r3, [r7, #120]
	subs	r3, r3, #1
	cmp	r3, #25
	bhi	.L476
	adr	r1, .L417
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L417:
	.word	.L416+1-.L417
	.word	.L418+1-.L417
	.word	.L419+1-.L417
	.word	.L420+1-.L417
	.word	.L421+1-.L417
	.word	.L422+1-.L417
	.word	.L423+1-.L417
	.word	.L424+1-.L417
	.word	.L425+1-.L417
	.word	.L426+1-.L417
	.word	.L427+1-.L417
	.word	.L428+1-.L417
	.word	.L429+1-.L417
	.word	.L430+1-.L417
	.word	.L477+1-.L417
	.word	.L432+1-.L417
	.word	.L433+1-.L417
	.word	.L434+1-.L417
	.word	.L435+1-.L417
	.word	.L436+1-.L417
	.word	.L476+1-.L417
	.word	.L437+1-.L417
	.word	.L438+1-.L417
	.word	.L439+1-.L417
	.word	.L440+1-.L417
	.word	.L477+1-.L417
.L416:
	ldr	r0, [r7, #88]
	bl	t1_builder_close_contour(PLT)
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L442
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #8]
	ldr	r2, [r7, #84]
	ldr	r1, [r2]
	ldr	r2, [r7, #88]
	ldr	r2, [r2, #20]
	ldrh	r2, [r2, #2]
	sxth	r2, r2
	mov	r0, r1
	mov	r1, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	beq	.L443
	b	.L336
.L443:
	ldr	r3, [r7, #84]
	ldr	r4, [r3, #24]
	ldr	r3, [r7, #84]
	ldr	r0, [r3]
	ldr	r3, [r7, #88]
	ldr	r1, [r3, #20]
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1468]
	blx	r4
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L442
	b	.L391
.L442:
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	FT_GlyphLoader_Add(PLT)
	movs	r3, #0
	b	.L473
.L418:
	ldr	r3, [r7, #88]
	movs	r2, #1
	str	r2, [r3, #64]
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #88]
	str	r2, [r3, #32]
	ldr	r3, [r7, #124]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #88]
	str	r2, [r3, #40]
	ldr	r3, [r7, #88]
	movs	r2, #0
	str	r2, [r3, #44]
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #148]
	str	r3, [r7, #140]
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #28]
	str	r3, [r7, #144]
	ldr	r3, [r7, #144]
	str	r3, [r7, #80]
	ldr	r3, [r7, #88]
	ldrb	r3, [r3, #70]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L445
	movs	r3, #0
	b	.L473
.L445:
	b	.L446
.L419:
	ldr	r0, [r7, #12]
	ldr	r3, [r7, #124]
	ldr	r1, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r4, [r7, #124]
	adds	r4, r4, #12
	ldr	r4, [r4]
	asrs	r4, r4, #16
	uxth	r4, r4
	sxth	r5, r4
	ldr	r4, [r7, #124]
	adds	r4, r4, #16
	ldr	r4, [r4]
	asrs	r4, r4, #16
	uxth	r4, r4
	sxth	r4, r4
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	t1operator_seac(PLT)
	mov	r3, r0
	b	.L473
.L420:
	ldr	r3, [r7, #88]
	movs	r2, #1
	str	r2, [r3, #64]
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #32]
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #88]
	str	r2, [r3, #32]
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #88]
	str	r2, [r3, #36]
	ldr	r3, [r7, #124]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #88]
	str	r2, [r3, #40]
	ldr	r3, [r7, #124]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #88]
	str	r2, [r3, #44]
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #88]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	add	r3, r3, r2
	str	r3, [r7, #144]
	ldr	r3, [r7, #88]
	ldrb	r3, [r3, #70]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L447
	movs	r3, #0
	b	.L473
.L447:
	b	.L446
.L421:
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #64]
	cmp	r3, #3
	beq	.L448
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #64]
	cmp	r3, #2
	bne	.L449
.L448:
	ldr	r0, [r7, #88]
	bl	t1_builder_close_contour(PLT)
.L449:
	ldr	r3, [r7, #88]
	movs	r2, #1
	str	r2, [r3, #64]
	b	.L446
.L422:
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	bl	t1_builder_start_point(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L450
	b	.L391
.L450:
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	b	.L451
.L423:
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1400]
	cmp	r3, #0
	bne	.L452
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L453
	b	.L336
.L453:
	ldr	r3, [r7, #88]
	movs	r2, #2
	str	r2, [r3, #64]
	b	.L446
.L452:
	b	.L446
.L424:
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	bl	t1_builder_start_point(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	bne	.L391
	ldr	r0, [r7, #88]
	movs	r1, #3
	bl	t1_builder_check_points(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	bne	.L391
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	movs	r3, #0
	bl	t1_builder_add_point(PLT)
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #124]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	movs	r3, #0
	bl	t1_builder_add_point(PLT)
	ldr	r3, [r7, #124]
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	movs	r3, #1
	bl	t1_builder_add_point(PLT)
	b	.L446
.L425:
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	bl	t1_builder_start_point(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L454
	b	.L391
.L454:
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
.L451:
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	bl	t1_builder_add_point1(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L455
	b	.L391
.L455:
	b	.L446
.L426:
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1400]
	cmp	r3, #0
	bne	.L456
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L457
	b	.L336
.L457:
	ldr	r3, [r7, #88]
	movs	r2, #2
	str	r2, [r3, #64]
	b	.L446
.L456:
	b	.L446
.L427:
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	bl	t1_builder_start_point(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	bne	.L391
	ldr	r0, [r7, #88]
	movs	r1, #3
	bl	t1_builder_check_points(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	bne	.L391
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	movs	r3, #0
	bl	t1_builder_add_point(PLT)
	ldr	r3, [r7, #124]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #124]
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	movs	r3, #0
	bl	t1_builder_add_point(PLT)
	ldr	r3, [r7, #124]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #124]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	movs	r3, #1
	bl	t1_builder_add_point(PLT)
	b	.L446
.L428:
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	bl	t1_builder_start_point(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	bne	.L391
	ldr	r0, [r7, #88]
	movs	r1, #3
	bl	t1_builder_check_points(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	bne	.L391
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	movs	r3, #0
	bl	t1_builder_add_point(PLT)
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r3, [r7, #124]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	movs	r3, #0
	bl	t1_builder_add_point(PLT)
	ldr	r3, [r7, #124]
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r2, [r7, #148]
	add	r3, r3, r2
	str	r3, [r7, #148]
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	movs	r3, #1
	bl	t1_builder_add_point(PLT)
	b	.L446
.L429:
	ldr	r0, [r7, #88]
	ldr	r1, [r7, #148]
	ldr	r2, [r7, #144]
	bl	t1_builder_start_point(PLT)
	str	r0, [r7, #164]
	ldr	r3, [r7, #164]
	cmp	r3, #0
	beq	.L458
	b	.L391
.L458:
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
	b	.L451
.L430:
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	ldr	r2, [r7, #144]
	add	r3, r3, r2
	str	r3, [r7, #144]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1400]
	cmp	r3, #0
	bne	.L459
	ldr	r3, [r7, #88]
	ldr	r3, [r3, #64]
	cmp	r3, #0
	bne	.L460
	b	.L336
.L460:
	ldr	r3, [r7, #88]
	movs	r2, #2
	str	r2, [r3, #64]
	b	.L446
.L459:
	b	.L446
.L436:
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	ldr	r3, [r3]
	mov	r0, r2
	mov	r1, r3
	bl	FT_DivFix(PLT)
	mov	r2, r0
	ldr	r3, [r7, #124]
	str	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	str	r3, [r7, #124]
	movs	r3, #0
	strb	r3, [r7, #131]
	b	.L446
.L437:
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	asrs	r3, r3, #16
	uxth	r3, r3
	sxth	r3, r3
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	blt	.L336
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #1364]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	ble	.L336
	ldr	r2, [r7, #160]
	ldr	r3, [r7, #12]
	addw	r3, r3, #1140
	subs	r3, r2, r3
	cmp	r3, #191
	ble	.L461
	b	.L336
.L461:
	ldr	r3, [r7, #160]
	ldr	r2, [r7, #156]
	str	r2, [r3]
	ldr	r3, [r7, #160]
	adds	r3, r3, #12
	str	r3, [r7, #160]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #1368]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #160]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1372]
	cmp	r3, #0
	beq	.L462
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #1372]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	add	r3, r3, r1
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7, #160]
	str	r2, [r3, #8]
	b	.L463
.L462:
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #1360]
	bic	r3, r3, r3, asr #31
	add	r2, r2, r3
	ldr	r3, [r7, #160]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #1368]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #160]
	str	r2, [r3, #8]
.L463:
	ldr	r3, [r7, #160]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #160]
	str	r2, [r3]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L464
	b	.L336
.L464:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #160]
	str	r2, [r3, #1344]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #4]
	str	r3, [r7, #156]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #8]
	str	r3, [r7, #152]
	b	.L446
.L438:
	ldr	r3, [r7, #136]
	cmp	r3, #0
	ble	.L465
	ldr	r3, [r7, #136]
	subs	r3, r3, #1
	str	r3, [r7, #136]
	b	.L446
.L465:
	ldr	r3, [r7, #132]
	cmp	r3, #0
	bne	.L466
	b	.L336
.L466:
	ldr	r3, [r7, #132]
	subs	r3, r3, #1
	str	r3, [r7, #132]
	ldr	r3, [r7, #124]
	adds	r3, r3, #4
	str	r3, [r7, #124]
	b	.L446
.L439:
	ldr	r3, [r7, #12]
	addw	r2, r3, #1140
	ldr	r3, [r7, #160]
	cmp	r2, r3
	bcc	.L467
	b	.L336
.L467:
	ldr	r3, [r7, #160]
	subs	r3, r3, #12
	str	r3, [r7, #160]
	ldr	r3, [r7, #160]
	ldr	r3, [r3]
	str	r3, [r7, #156]
	ldr	r3, [r7, #160]
	ldr	r3, [r3, #8]
	str	r3, [r7, #152]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #160]
	str	r2, [r3, #1344]
	b	.L446
.L432:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L468
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #84]
	ldr	r2, [r2]
	mov	r0, r2
	movs	r1, #1
	ldr	r2, [r7, #124]
	blx	r3
	b	.L446
.L468:
	b	.L446
.L433:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L469
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #84]
	ldr	r2, [r2]
	mov	r0, r2
	movs	r1, #1
	ldr	r2, [r7, #124]
	blx	r3
	b	.L446
.L469:
	b	.L446
.L434:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L470
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #140]
	add	r2, r2, r3
	ldr	r3, [r7, #124]
	str	r2, [r3]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #12]
	ldr	r2, [r7, #84]
	ldr	r2, [r2]
	mov	r0, r2
	movs	r1, #0
	ldr	r2, [r7, #124]
	blx	r3
	b	.L446
.L470:
	b	.L446
.L435:
	ldr	r3, [r7, #84]
	cmp	r3, #0
	beq	.L471
	ldr	r3, [r7, #140]
	str	r3, [r7, #24]
	ldr	r3, [r7, #124]
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7, #124]
	str	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #8
	ldr	r2, [r7, #124]
	adds	r2, r2, #8
	ldr	r1, [r2]
	ldr	r2, [r7, #24]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #124]
	adds	r3, r3, #16
	ldr	r2, [r7, #124]
	adds	r2, r2, #16
	ldr	r1, [r2]
	ldr	r2, [r7, #24]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [r7, #84]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #84]
	ldr	r2, [r2]
	mov	r0, r2
	movs	r1, #0
	ldr	r2, [r7, #124]
	blx	r3
	b	.L446
.L471:
	b	.L446
.L440:
	ldr	r3, [r7, #124]
	ldr	r3, [r3]
	str	r3, [r7, #148]
	ldr	r3, [r7, #124]
	ldr	r3, [r3, #4]
	str	r3, [r7, #144]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #1400]
	b	.L446
.L477:
	nop
.L446:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #124]
	str	r2, [r3, #1136]
.L308:
	ldr	r2, [r7, #156]
	ldr	r3, [r7, #152]
	cmp	r2, r3
	bcc	.L472
.L391:
	ldr	r3, [r7, #164]
	b	.L473
.L474:
	nop
	b	.L336
.L476:
	nop
.L336:
	movs	r3, #160
	b	.L473
.L368:
	movs	r3, #161
.L473:
	mov	r0, r3
	adds	r7, r7, #168
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L479:
	.align	2
.L478:
	.word	t1_args_count-(.LPIC3+4)
	.size	t1_decoder_parse_charstrings, .-t1_decoder_parse_charstrings
	.section	.text.t1_decoder_parse_glyph,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_decoder_parse_glyph, %function
t1_decoder_parse_glyph:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #1472]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_decoder_parse_glyph, .-t1_decoder_parse_glyph
	.section	.rodata
	.align	2
.LC1:
	.ascii	"postscript-cmaps\000"
	.section	.text.t1_decoder_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_decoder_init, %function
t1_decoder_init:
	@ args = 20, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #44
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r4, .L485
.LPIC5:
	add	r4, pc
	ldr	r0, [r7, #12]
	movs	r1, #0
	movw	r2, #1500
	bl	memset(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #96]
	str	r3, [r7, #28]
	ldr	r0, [r7, #28]
	ldr	r3, .L485+4
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	ft_module_get_service(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L483
	movs	r3, #7
	b	.L484
.L483:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #1348]
	ldr	r3, [r7, #12]
	ldrb	r2, [r7, #56]	@ zero_extendqisi2
	str	r2, [sp]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	t1_builder_init(PLT)
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #16]
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #1352]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #48]
	str	r2, [r3, #1356]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #60]
	str	r2, [r3, #1468]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #52]
	str	r2, [r3, #1464]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #64]
	str	r2, [r3, #1472]
	ldr	r3, [r7, #12]
	ldr	r2, .L485+8
	ldr	r2, [r4, r2]
	addw	r3, r3, #1476
	ldmia	r2, {r0, r1, r2}
	stmia	r3, {r0, r1, r2}
	movs	r3, #0
.L484:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L486:
	.align	2
.L485:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC5+4)
	.word	.LC1-(.LPIC4+4)
	.word	t1_decoder_funcs(GOT)
	.size	t1_decoder_init, .-t1_decoder_init
	.section	.text.t1_decoder_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_decoder_done, %function
t1_decoder_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	t1_builder_done(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_decoder_done, .-t1_decoder_done
	.section	.text.t1_cmap_std_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_std_init, %function
t1_cmap_std_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #484]
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #416]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #420]
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L489
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #28]
	b	.L490
.L489:
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #24]
.L490:
	ldr	r2, [r7, #4]
	str	r3, [r2, #16]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t1_cmap_std_init, .-t1_cmap_std_init
	.section	.text.t1_cmap_std_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_std_done, %function
t1_cmap_std_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t1_cmap_std_done, .-t1_cmap_std_done
	.section	.text.t1_cmap_std_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_std_char_index, %function
t1_cmap_std_char_index:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #28]
	ldr	r3, [r7]
	cmp	r3, #255
	bhi	.L493
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #20]
	blx	r3
	str	r0, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L494
.L496:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L495
	ldr	r3, [r7, #12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L495
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #16]
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L495
	ldr	r3, [r7, #24]
	str	r3, [r7, #28]
	b	.L493
.L495:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L494:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bhi	.L496
.L493:
	ldr	r3, [r7, #28]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_cmap_std_char_index, .-t1_cmap_std_char_index
	.section	.text.t1_cmap_std_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_std_char_next, %function
t1_cmap_std_char_next:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	b	.L499
.L502:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #8]
	bl	t1_cmap_std_char_index(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L500
	b	.L501
.L500:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L499:
	ldr	r3, [r7, #8]
	cmp	r3, #255
	bls	.L502
	movs	r3, #0
	str	r3, [r7, #8]
.L501:
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_cmap_std_char_next, .-t1_cmap_std_char_next
	.section	.text.t1_cmap_standard_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_standard_init, %function
t1_cmap_standard_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	t1_cmap_std_init(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_cmap_standard_init, .-t1_cmap_standard_init
	.global	t1_cmap_standard_class_rec
	.section	.data.rel.ro.local.t1_cmap_standard_class_rec,"aw",%progbits
	.align	2
	.type	t1_cmap_standard_class_rec, %object
	.size	t1_cmap_standard_class_rec, 40
t1_cmap_standard_class_rec:
	.word	32
	.word	t1_cmap_standard_init
	.word	t1_cmap_std_done
	.word	t1_cmap_std_char_index
	.word	t1_cmap_std_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.t1_cmap_expert_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_expert_init, %function
t1_cmap_expert_init:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	t1_cmap_std_init(PLT)
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_cmap_expert_init, .-t1_cmap_expert_init
	.global	t1_cmap_expert_class_rec
	.section	.data.rel.ro.local.t1_cmap_expert_class_rec,"aw",%progbits
	.align	2
	.type	t1_cmap_expert_class_rec, %object
	.size	t1_cmap_expert_class_rec, 40
t1_cmap_expert_class_rec:
	.word	32
	.word	t1_cmap_expert_init
	.word	t1_cmap_std_done
	.word	t1_cmap_std_char_index
	.word	t1_cmap_std_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.t1_cmap_custom_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_custom_init, %function
t1_cmap_custom_init:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	add	r3, r3, #372
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	subs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #24]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t1_cmap_custom_init, .-t1_cmap_custom_init
	.section	.text.t1_cmap_custom_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_custom_done, %function
t1_cmap_custom_done:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t1_cmap_custom_done, .-t1_cmap_custom_done
	.section	.text.t1_cmap_custom_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_custom_char_index, %function
t1_cmap_custom_char_index:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	cmp	r2, r3
	bhi	.L512
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L512
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #12]
.L512:
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t1_cmap_custom_char_index, .-t1_cmap_custom_char_index
	.section	.text.t1_cmap_custom_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_custom_char_next, %function
t1_cmap_custom_char_next:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L515
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	str	r3, [r7, #8]
	b	.L516
.L515:
	b	.L516
.L519:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L517
	b	.L518
.L517:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L516:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L519
	movs	r3, #0
	str	r3, [r7, #8]
.L518:
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	t1_cmap_custom_char_next, .-t1_cmap_custom_char_next
	.global	t1_cmap_custom_class_rec
	.section	.data.rel.ro.local.t1_cmap_custom_class_rec,"aw",%progbits
	.align	2
	.type	t1_cmap_custom_class_rec, %object
	.size	t1_cmap_custom_class_rec, 40
t1_cmap_custom_class_rec:
	.word	28
	.word	t1_cmap_custom_init
	.word	t1_cmap_custom_done
	.word	t1_cmap_custom_char_index
	.word	t1_cmap_custom_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.psaux_get_glyph_name,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	psaux_get_glyph_name, %function
psaux_get_glyph_name:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #420]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	psaux_get_glyph_name, .-psaux_get_glyph_name
	.section	.text.t1_cmap_unicode_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_unicode_init, %function
t1_cmap_unicode_init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #36
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #100]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #484]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r4, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #416]
	movs	r2, #0
	str	r2, [sp]
	ldr	r2, [r7, #20]
	str	r2, [sp, #4]
	ldr	r0, [r7, #16]
	ldr	r1, [r7, #4]
	mov	r2, r3
	ldr	r3, .L525
.LPIC6:
	add	r3, pc
	blx	r4
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L526:
	.align	2
.L525:
	.word	psaux_get_glyph_name-(.LPIC6+4)
	.size	t1_cmap_unicode_init, .-t1_cmap_unicode_init
	.section	.text.t1_cmap_unicode_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_unicode_done, %function
t1_cmap_unicode_done:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #100]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #20]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_cmap_unicode_done, .-t1_cmap_unicode_done
	.section	.text.t1_cmap_unicode_char_index,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_unicode_char_index, %function
t1_cmap_unicode_char_index:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #484]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_cmap_unicode_char_index, .-t1_cmap_unicode_char_index
	.section	.text.t1_cmap_unicode_char_next,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	t1_cmap_unicode_char_next, %function
t1_cmap_unicode_char_next:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #484]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	blx	r3
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	t1_cmap_unicode_char_next, .-t1_cmap_unicode_char_next
	.global	t1_cmap_unicode_class_rec
	.section	.data.rel.ro.local.t1_cmap_unicode_class_rec,"aw",%progbits
	.align	2
	.type	t1_cmap_unicode_class_rec, %object
	.size	t1_cmap_unicode_class_rec, 40
t1_cmap_unicode_class_rec:
	.word	24
	.word	t1_cmap_unicode_init
	.word	t1_cmap_unicode_done
	.word	t1_cmap_unicode_char_index
	.word	t1_cmap_unicode_char_next
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text.afm_stream_skip_spaces,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_stream_skip_spaces, %function
afm_stream_skip_spaces:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	ble	.L533
	movs	r3, #59
	b	.L534
.L533:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcs	.L535
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L536
.L535:
	mov	r3, #-1
.L536:
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #32
	beq	.L537
	ldr	r3, [r7, #12]
	cmp	r3, #9
	beq	.L537
	nop
	ldr	r3, [r7, #12]
	cmp	r3, #13
	beq	.L539
	b	.L544
.L537:
	b	.L533
.L544:
	ldr	r3, [r7, #12]
	cmp	r3, #10
	bne	.L540
.L539:
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #12]
	b	.L541
.L540:
	ldr	r3, [r7, #12]
	cmp	r3, #59
	bne	.L542
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #12]
	b	.L541
.L542:
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	beq	.L543
	ldr	r3, [r7, #12]
	cmp	r3, #26
	bne	.L541
.L543:
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3, #12]
.L541:
	ldr	r3, [r7, #12]
.L534:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	afm_stream_skip_spaces, .-afm_stream_skip_spaces
	.section	.text.afm_stream_read_one,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_stream_read_one, %function
afm_stream_read_one:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	afm_stream_skip_spaces(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	ble	.L546
	movs	r3, #0
	b	.L547
.L546:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L556:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcs	.L548
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L549
.L548:
	mov	r3, #-1
.L549:
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #32
	beq	.L550
	ldr	r3, [r7, #8]
	cmp	r3, #9
	beq	.L550
	ldr	r3, [r7, #8]
	cmp	r3, #13
	beq	.L551
	ldr	r3, [r7, #8]
	cmp	r3, #10
	bne	.L552
.L551:
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #12]
	b	.L550
.L552:
	ldr	r3, [r7, #8]
	cmp	r3, #59
	bne	.L553
	ldr	r3, [r7, #4]
	movs	r2, #1
	str	r2, [r3, #12]
	b	.L550
.L553:
	ldr	r3, [r7, #8]
	cmp	r3, #-1
	beq	.L554
	ldr	r3, [r7, #8]
	cmp	r3, #26
	bne	.L555
.L554:
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L550
.L555:
	b	.L556
.L550:
	ldr	r3, [r7, #12]
.L547:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	afm_stream_read_one, .-afm_stream_read_one
	.section	.text.afm_stream_read_string,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_stream_read_string, %function
afm_stream_read_string:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	afm_stream_skip_spaces(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #1
	ble	.L558
	movs	r3, #0
	b	.L559
.L558:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L567:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bcs	.L560
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L561
.L560:
	mov	r3, #-1
.L561:
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #13
	beq	.L562
	ldr	r3, [r7, #8]
	cmp	r3, #10
	bne	.L563
.L562:
	ldr	r3, [r7, #4]
	movs	r2, #2
	str	r2, [r3, #12]
	b	.L564
.L563:
	ldr	r3, [r7, #8]
	cmp	r3, #-1
	beq	.L565
	ldr	r3, [r7, #8]
	cmp	r3, #26
	bne	.L566
.L565:
	ldr	r3, [r7, #4]
	movs	r2, #3
	str	r2, [r3, #12]
	b	.L564
.L566:
	b	.L567
.L564:
	ldr	r3, [r7, #12]
.L559:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	afm_stream_read_string, .-afm_stream_read_string
	.section	.rodata
	.align	2
.LC2:
	.ascii	"Ascender\000"
	.align	2
.LC3:
	.ascii	"AxisLabel\000"
	.align	2
.LC4:
	.ascii	"AxisType\000"
	.align	2
.LC5:
	.ascii	"B\000"
	.align	2
.LC6:
	.ascii	"BlendAxisTypes\000"
	.align	2
.LC7:
	.ascii	"BlendDesignMap\000"
	.align	2
.LC8:
	.ascii	"BlendDesignPositions\000"
	.align	2
.LC9:
	.ascii	"C\000"
	.align	2
.LC10:
	.ascii	"CC\000"
	.align	2
.LC11:
	.ascii	"CH\000"
	.align	2
.LC12:
	.ascii	"CapHeight\000"
	.align	2
.LC13:
	.ascii	"CharWidth\000"
	.align	2
.LC14:
	.ascii	"CharacterSet\000"
	.align	2
.LC15:
	.ascii	"Characters\000"
	.align	2
.LC16:
	.ascii	"Descender\000"
	.align	2
.LC17:
	.ascii	"EncodingScheme\000"
	.align	2
.LC18:
	.ascii	"EndAxis\000"
	.align	2
.LC19:
	.ascii	"EndCharMetrics\000"
	.align	2
.LC20:
	.ascii	"EndComposites\000"
	.align	2
.LC21:
	.ascii	"EndDirection\000"
	.align	2
.LC22:
	.ascii	"EndFontMetrics\000"
	.align	2
.LC23:
	.ascii	"EndKernData\000"
	.align	2
.LC24:
	.ascii	"EndKernPairs\000"
	.align	2
.LC25:
	.ascii	"EndTrackKern\000"
	.align	2
.LC26:
	.ascii	"EscChar\000"
	.align	2
.LC27:
	.ascii	"FamilyName\000"
	.align	2
.LC28:
	.ascii	"FontBBox\000"
	.align	2
.LC29:
	.ascii	"FontName\000"
	.align	2
.LC30:
	.ascii	"FullName\000"
	.align	2
.LC31:
	.ascii	"IsBaseFont\000"
	.align	2
.LC32:
	.ascii	"IsCIDFont\000"
	.align	2
.LC33:
	.ascii	"IsFixedPitch\000"
	.align	2
.LC34:
	.ascii	"IsFixedV\000"
	.align	2
.LC35:
	.ascii	"ItalicAngle\000"
	.align	2
.LC36:
	.ascii	"KP\000"
	.align	2
.LC37:
	.ascii	"KPH\000"
	.align	2
.LC38:
	.ascii	"KPX\000"
	.align	2
.LC39:
	.ascii	"KPY\000"
	.align	2
.LC40:
	.ascii	"L\000"
	.align	2
.LC41:
	.ascii	"MappingScheme\000"
	.align	2
.LC42:
	.ascii	"MetricsSets\000"
	.align	2
.LC43:
	.ascii	"N\000"
	.align	2
.LC44:
	.ascii	"Notice\000"
	.align	2
.LC45:
	.ascii	"PCC\000"
	.align	2
.LC46:
	.ascii	"StartAxis\000"
	.align	2
.LC47:
	.ascii	"StartCharMetrics\000"
	.align	2
.LC48:
	.ascii	"StartComposites\000"
	.align	2
.LC49:
	.ascii	"StartDirection\000"
	.align	2
.LC50:
	.ascii	"StartFontMetrics\000"
	.align	2
.LC51:
	.ascii	"StartKernData\000"
	.align	2
.LC52:
	.ascii	"StartKernPairs\000"
	.align	2
.LC53:
	.ascii	"StartKernPairs0\000"
	.align	2
.LC54:
	.ascii	"StartKernPairs1\000"
	.align	2
.LC55:
	.ascii	"StartTrackKern\000"
	.align	2
.LC56:
	.ascii	"StdHW\000"
	.align	2
.LC57:
	.ascii	"StdVW\000"
	.align	2
.LC58:
	.ascii	"TrackKern\000"
	.align	2
.LC59:
	.ascii	"UnderlinePosition\000"
	.align	2
.LC60:
	.ascii	"UnderlineThickness\000"
	.align	2
.LC61:
	.ascii	"VV\000"
	.align	2
.LC62:
	.ascii	"VVector\000"
	.align	2
.LC63:
	.ascii	"Version\000"
	.align	2
.LC64:
	.ascii	"W\000"
	.align	2
.LC65:
	.ascii	"W0\000"
	.align	2
.LC66:
	.ascii	"W0X\000"
	.align	2
.LC67:
	.ascii	"W0Y\000"
	.align	2
.LC68:
	.ascii	"W1\000"
	.align	2
.LC69:
	.ascii	"W1X\000"
	.align	2
.LC70:
	.ascii	"W1Y\000"
	.align	2
.LC71:
	.ascii	"WX\000"
	.align	2
.LC72:
	.ascii	"WY\000"
	.align	2
.LC73:
	.ascii	"Weight\000"
	.align	2
.LC74:
	.ascii	"WeightVector\000"
	.align	2
.LC75:
	.ascii	"XHeight\000"
	.section	.data.rel.ro.local.afm_key_table,"aw",%progbits
	.align	2
	.type	afm_key_table, %object
	.size	afm_key_table, 296
afm_key_table:
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.word	.LC23
	.word	.LC24
	.word	.LC25
	.word	.LC26
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.word	.LC52
	.word	.LC53
	.word	.LC54
	.word	.LC55
	.word	.LC56
	.word	.LC57
	.word	.LC58
	.word	.LC59
	.word	.LC60
	.word	.LC61
	.word	.LC62
	.word	.LC63
	.word	.LC64
	.word	.LC65
	.word	.LC66
	.word	.LC67
	.word	.LC68
	.word	.LC69
	.word	.LC70
	.word	.LC71
	.word	.LC72
	.word	.LC73
	.word	.LC74
	.word	.LC75
	.section	.rodata
	.align	2
.LC76:
	.ascii	"true\000"
	.section	.text.afm_parser_read_vals,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_parser_read_vals, %function
afm_parser_read_vals:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #40]
	ldr	r3, [r7, #4]
	cmp	r3, #5
	ble	.L569
	movs	r3, #0
	b	.L589
.L569:
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L571
.L588:
	ldr	r3, [r7, #44]
	lsls	r3, r3, #3
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L572
	ldr	r0, [r7, #40]
	bl	afm_stream_read_string(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	b	.L573
.L572:
	ldr	r0, [r7, #40]
	bl	afm_stream_read_one(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
.L573:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L574
	b	.L575
.L574:
	ldr	r3, [r7, #40]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	subs	r3, r3, #1
	str	r3, [r7, #32]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	cmp	r3, #5
	bhi	.L576
	adr	r1, .L578
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L578:
	.word	.L577+1-.L578
	.word	.L577+1-.L578
	.word	.L579+1-.L578
	.word	.L580+1-.L578
	.word	.L581+1-.L578
	.word	.L582+1-.L578
.L577:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	mov	r2, r3
	add	r3, r7, #20
	ldr	r0, [r7, #28]
	mov	r1, r2
	mov	r2, r3
	bl	ft_mem_qalloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L583
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #24]
	mov	r0, r2
	mov	r1, r3
	ldr	r2, [r7, #32]
	bl	memcpy(PLT)
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	b	.L576
.L583:
	b	.L576
.L579:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	movs	r2, #0
	bl	PS_Conv_ToFixed(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #4]
	b	.L576
.L580:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	PS_Conv_ToInt(PLT)
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #4]
	b	.L576
.L581:
	ldr	r3, [r7, #32]
	cmp	r3, #4
	bne	.L584
	ldr	r3, [r7, #24]
	mov	r0, r3
	ldr	r3, .L591
.LPIC7:
	add	r3, pc
	mov	r1, r3
	movs	r2, #4
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L584
	movs	r3, #1
	b	.L585
.L584:
	movs	r3, #0
.L585:
	uxtb	r2, r3
	ldr	r3, [r7, #36]
	strb	r2, [r3, #4]
	b	.L576
.L582:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L586
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r1, [r7, #24]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #16]
	mov	r0, r1
	ldr	r1, [r7, #32]
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #36]
	str	r2, [r3, #4]
	b	.L590
.L586:
	ldr	r3, [r7, #36]
	movs	r2, #0
	str	r2, [r3, #4]
.L590:
	nop
.L576:
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L571:
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L588
.L575:
	ldr	r3, [r7, #44]
.L589:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L592:
	.align	2
.L591:
	.word	.LC76-(.LPIC7+4)
	.size	afm_parser_read_vals, .-afm_parser_read_vals
	.section	.text.afm_parser_next_key,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_parser_next_key, %function
afm_parser_next_key:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	mov	r3, r1
	str	r2, [r7, #4]
	strb	r3, [r7, #11]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldrb	r3, [r7, #11]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L594
.L597:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	cmp	r3, #1
	bgt	.L595
	ldr	r0, [r7, #16]
	bl	afm_stream_read_string(PLT)
.L595:
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r0, [r7, #16]
	bl	afm_stream_read_one(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L596
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	cmp	r3, #2
	bgt	.L596
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	cmp	r3, #1
	ble	.L596
	b	.L597
.L596:
	nop
	b	.L598
.L594:
	b	.L599
.L600:
	ldr	r0, [r7, #16]
	bl	afm_stream_read_one(PLT)
.L599:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	ble	.L600
	ldr	r3, [r7, #16]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r0, [r7, #16]
	bl	afm_stream_read_one(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L601
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	cmp	r3, #2
	bgt	.L601
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	ble	.L601
	b	.L594
.L601:
	nop
.L598:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L602
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L603
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [r7, #20]
	subs	r3, r2, r3
	subs	r3, r3, #1
	b	.L604
.L603:
	movs	r3, #0
.L604:
	ldr	r2, [r7, #4]
	str	r3, [r2]
.L602:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	afm_parser_next_key, .-afm_parser_next_key
	.section	.text.afm_tokenize,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_tokenize, %function
afm_tokenize:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L607
.L614:
	ldr	r3, .L615
.LPIC8:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r3, [r3, r2, lsl #2]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L608
	b	.L609
.L613:
	ldr	r3, .L615+4
.LPIC9:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r3, [r3, r2, lsl #2]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L610
	movs	r3, #75
	b	.L611
.L610:
	ldr	r3, .L615+8
.LPIC10:
	add	r3, pc
	ldr	r2, [r7, #12]
	ldr	r3, [r3, r2, lsl #2]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L612
	ldr	r3, [r7, #12]
	b	.L611
.L612:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L609:
	ldr	r3, [r7, #12]
	cmp	r3, #73
	ble	.L613
.L608:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L607:
	ldr	r3, [r7, #12]
	cmp	r3, #73
	ble	.L614
	movs	r3, #75
.L611:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L616:
	.align	2
.L615:
	.word	afm_key_table-(.LPIC8+4)
	.word	afm_key_table-(.LPIC9+4)
	.word	afm_key_table-(.LPIC10+4)
	.size	afm_tokenize, .-afm_tokenize
	.section	.text.afm_parser_init,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_parser_init, %function
afm_parser_init:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #16
	ldr	r0, [r7, #8]
	movs	r1, #16
	mov	r2, r3
	bl	ft_mem_alloc(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L618
	ldr	r3, [r7, #16]
	b	.L620
.L618:
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	movs	r2, #2
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #20]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	movs	r3, #0
.L620:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	afm_parser_init, .-afm_parser_init
	.section	.text.afm_parser_done,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_parser_done, %function
afm_parser_done:
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
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	afm_parser_done, .-afm_parser_done
	.section	.text.afm_parser_read_int,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_parser_read_int, %function
afm_parser_read_int:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #3
	str	r3, [r7, #8]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #1
	bl	afm_parser_read_vals(PLT)
	mov	r3, r0
	cmp	r3, #1
	bne	.L623
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3]
	movs	r3, #0
	b	.L625
.L623:
	movs	r3, #160
.L625:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	afm_parser_read_int, .-afm_parser_read_int
	.section	.text.afm_parse_track_kern,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_parse_track_kern, %function
afm_parse_track_kern:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #72]
	mov	r3, #-1
	str	r3, [r7, #76]
	add	r3, r7, #52
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	afm_parser_read_int(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L627
	b	.L628
.L627:
	ldr	r3, [r7, #52]
	cmp	r3, #0
	bge	.L629
	b	.L628
.L629:
	ldr	r3, [r7, #52]
	mov	r2, r3
	ldr	r3, [r7, #72]
	str	r2, [r3, #32]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L633
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #68]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #32]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #48
	str	r2, [sp, #4]
	ldr	r0, [r7, #68]
	movs	r1, #20
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #72]
	str	r2, [r3, #28]
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L630
	ldr	r3, [r7, #48]
	b	.L644
.L630:
	b	.L633
.L643:
	ldr	r3, [r7, #56]
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	afm_tokenize(PLT)
	mov	r3, r0
	cmp	r3, #23
	beq	.L635
	cmp	r3, #23
	bhi	.L636
	subs	r3, r3, #20
	cmp	r3, #1
	bhi	.L645
	b	.L635
.L636:
	cmp	r3, #56
	beq	.L637
	cmp	r3, #75
	beq	.L646
	b	.L645
.L637:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #32]
	mov	r2, r3
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bgt	.L639
	b	.L628
.L639:
	ldr	r3, [r7, #72]
	ldr	r1, [r3, #28]
	ldr	r2, [r7, #76]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	str	r3, [r7, #60]
	movs	r3, #3
	str	r3, [r7, #8]
	movs	r3, #2
	str	r3, [r7, #16]
	movs	r3, #2
	str	r3, [r7, #24]
	movs	r3, #2
	str	r3, [r7, #32]
	movs	r3, #2
	str	r3, [r7, #40]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #5
	bl	afm_parser_read_vals(PLT)
	mov	r3, r0
	cmp	r3, #5
	beq	.L641
	nop
	b	.L628
.L641:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #60]
	str	r2, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #60]
	str	r2, [r3, #4]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #60]
	str	r2, [r3, #8]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #60]
	str	r2, [r3, #12]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #60]
	str	r2, [r3, #16]
	b	.L642
.L635:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #72]
	str	r2, [r3, #32]
	movs	r3, #0
	b	.L644
.L646:
	nop
.L642:
.L633:
	add	r3, r7, #56
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	bl	afm_parser_next_key(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L643
	b	.L628
.L645:
	nop
.L628:
	movs	r3, #160
.L644:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	afm_parse_track_kern, .-afm_parse_track_kern
	.section	.text.afm_compare_kern_pairs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_compare_kern_pairs, %function
afm_compare_kern_pairs:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	lsls	r2, r3, #16
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	lsls	r2, r3, #16
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bls	.L648
	movs	r3, #1
	b	.L649
.L648:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L650
	mov	r3, #-1
	b	.L649
.L650:
	movs	r3, #0
.L649:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	afm_compare_kern_pairs, .-afm_compare_kern_pairs
	.section	.text.afm_parse_kern_pairs,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_parse_kern_pairs, %function
afm_parse_kern_pairs:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #88
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #72]
	mov	r3, #-1
	str	r3, [r7, #76]
	add	r3, r7, #44
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	afm_parser_read_int(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L652
	b	.L653
.L652:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bge	.L654
	b	.L653
.L654:
	ldr	r3, [r7, #44]
	mov	r2, r3
	ldr	r3, [r7, #72]
	str	r2, [r3, #40]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #40]
	cmp	r3, #0
	beq	.L658
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #68]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #40]
	movs	r2, #0
	str	r2, [sp]
	add	r2, r7, #40
	str	r2, [sp, #4]
	ldr	r0, [r7, #68]
	movs	r1, #16
	movs	r2, #0
	bl	ft_mem_realloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #72]
	str	r2, [r3, #36]
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L655
	ldr	r3, [r7, #40]
	b	.L672
.L655:
	b	.L658
.L671:
	ldr	r3, [r7, #48]
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	afm_tokenize(PLT)
	str	r0, [r7, #60]
	ldr	r3, [r7, #60]
	subs	r3, r3, #20
	cmp	r3, #55
	bhi	.L673
	adr	r1, .L661
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L661:
	.word	.L660+1-.L661
	.word	.L660+1-.L661
	.word	.L660+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L662+1-.L661
	.word	.L673+1-.L661
	.word	.L662+1-.L661
	.word	.L662+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L673+1-.L661
	.word	.L674+1-.L661
.L662:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	str	r3, [r7, #76]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #40]
	mov	r2, r3
	ldr	r3, [r7, #76]
	cmp	r2, r3
	bgt	.L664
	b	.L653
.L664:
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #76]
	lsls	r3, r3, #4
	add	r3, r3, r2
	str	r3, [r7, #56]
	movs	r3, #5
	str	r3, [r7, #8]
	movs	r3, #5
	str	r3, [r7, #16]
	movs	r3, #3
	str	r3, [r7, #24]
	movs	r3, #3
	str	r3, [r7, #32]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #4
	bl	afm_parser_read_vals(PLT)
	str	r0, [r7, #52]
	ldr	r3, [r7, #52]
	cmp	r3, #2
	bgt	.L666
	nop
	b	.L653
.L666:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #56]
	str	r2, [r3]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #56]
	str	r2, [r3, #4]
	ldr	r3, [r7, #60]
	cmp	r3, #37
	bne	.L667
	ldr	r3, [r7, #56]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #56]
	str	r2, [r3, #12]
	b	.L658
.L667:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #56]
	str	r2, [r3, #8]
	ldr	r3, [r7, #60]
	cmp	r3, #34
	bne	.L669
	ldr	r3, [r7, #52]
	cmp	r3, #4
	bne	.L669
	ldr	r3, [r7, #36]
	b	.L670
.L669:
	movs	r3, #0
.L670:
	ldr	r2, [r7, #56]
	str	r3, [r2, #12]
	b	.L658
.L660:
	ldr	r3, [r7, #76]
	adds	r3, r3, #1
	mov	r2, r3
	ldr	r3, [r7, #72]
	str	r2, [r3, #40]
	ldr	r3, [r7, #72]
	ldr	r2, [r3, #36]
	ldr	r3, [r7, #72]
	ldr	r3, [r3, #40]
	mov	r0, r2
	mov	r1, r3
	movs	r2, #16
	ldr	r3, .L675
.LPIC11:
	add	r3, pc
	bl	qsort(PLT)
	movs	r3, #0
	b	.L672
.L674:
	nop
.L658:
	add	r3, r7, #48
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	bl	afm_parser_next_key(PLT)
	str	r0, [r7, #64]
	ldr	r3, [r7, #64]
	cmp	r3, #0
	bne	.L671
	b	.L653
.L673:
	nop
.L653:
	movs	r3, #160
.L672:
	mov	r0, r3
	adds	r7, r7, #80
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L676:
	.align	2
.L675:
	.word	afm_compare_kern_pairs-(.LPIC11+4)
	.size	afm_parse_kern_pairs, .-afm_parse_kern_pairs
	.section	.text.afm_parse_kern_data,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_parse_kern_data, %function
afm_parse_kern_data:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	b	.L678
.L689:
	ldr	r3, [r7, #12]
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	afm_tokenize(PLT)
	mov	r3, r0
	subs	r3, r3, #20
	cmp	r3, #55
	bhi	.L691
	adr	r1, .L681
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L681:
	.word	.L680+1-.L681
	.word	.L680+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L682+1-.L681
	.word	.L682+1-.L681
	.word	.L691+1-.L681
	.word	.L683+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L691+1-.L681
	.word	.L692+1-.L681
.L683:
	ldr	r0, [r7, #4]
	bl	afm_parse_track_kern(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L685
	ldr	r3, [r7, #16]
	b	.L690
.L685:
	b	.L678
.L682:
	ldr	r0, [r7, #4]
	bl	afm_parse_kern_pairs(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L687
	ldr	r3, [r7, #16]
	b	.L690
.L687:
	b	.L678
.L680:
	movs	r3, #0
	b	.L690
.L692:
	nop
.L678:
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	bl	afm_parser_next_key(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L689
	b	.L688
.L691:
	nop
.L688:
	movs	r3, #160
.L690:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	afm_parse_kern_data, .-afm_parse_kern_data
	.section	.text.afm_parser_skip_section,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_parser_skip_section, %function
afm_parser_skip_section:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	b	.L694
.L696:
	ldr	r0, [r7, #12]
	movs	r1, #1
	movs	r2, #0
	bl	afm_parser_next_key(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L694
	b	.L695
.L694:
	ldr	r3, [r7, #8]
	subs	r2, r3, #1
	str	r2, [r7, #8]
	cmp	r3, #0
	bgt	.L696
	b	.L697
.L700:
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #28]
	mov	r1, r3
	bl	afm_tokenize(PLT)
	str	r0, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	beq	.L698
	ldr	r3, [r7, #24]
	cmp	r3, #20
	bne	.L697
.L698:
	movs	r3, #0
	b	.L701
.L697:
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	movs	r1, #1
	mov	r2, r3
	bl	afm_parser_next_key(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L700
.L695:
	movs	r3, #160
.L701:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	afm_parser_skip_section, .-afm_parser_skip_section
	.section	.text.afm_parser_parse,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	afm_parser_parse, %function
afm_parser_parse:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #64]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #60]
	movs	r3, #160
	str	r3, [r7, #68]
	movs	r3, #0
	str	r3, [r7, #48]
	ldr	r3, [r7, #60]
	cmp	r3, #0
	bne	.L703
	movs	r3, #6
	b	.L731
.L703:
	add	r3, r7, #52
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	bl	afm_parser_next_key(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	beq	.L705
	ldr	r3, [r7, #52]
	cmp	r3, #16
	bne	.L705
	ldr	r0, [r7, #56]
	ldr	r3, .L733
.LPIC12:
	add	r3, pc
	mov	r1, r3
	movs	r2, #16
	bl	strncmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L706
.L705:
	movs	r3, #2
	b	.L731
.L706:
	b	.L707
.L730:
	ldr	r3, [r7, #52]
	ldr	r0, [r7, #56]
	mov	r1, r3
	bl	afm_tokenize(PLT)
	mov	r3, r0
	cmp	r3, #49
	bhi	.L732
	adr	r1, .L710
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L710:
	.word	.L709+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L711+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L712+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L713+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L714+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L715+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L716+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L732+1-.L710
	.word	.L717+1-.L710
.L715:
	add	r3, r7, #48
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	afm_parser_read_int(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L718
	b	.L729
.L718:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	beq	.L720
	ldr	r3, [r7, #48]
	cmp	r3, #2
	beq	.L720
	movs	r3, #7
	str	r3, [r7, #68]
	b	.L729
.L720:
	b	.L721
.L714:
	movs	r3, #4
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #1
	bl	afm_parser_read_vals(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L722
	b	.L729
.L722:
	ldrb	r2, [r7, #16]	@ zero_extendqisi2
	ldr	r3, [r7, #60]
	strb	r2, [r3]
	b	.L721
.L713:
	movs	r3, #2
	str	r3, [r7, #12]
	movs	r3, #2
	str	r3, [r7, #20]
	movs	r3, #2
	str	r3, [r7, #28]
	movs	r3, #2
	str	r3, [r7, #36]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #4
	bl	afm_parser_read_vals(PLT)
	mov	r3, r0
	cmp	r3, #4
	beq	.L723
	b	.L729
.L723:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #60]
	str	r2, [r3, #4]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #60]
	str	r2, [r3, #8]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #60]
	str	r2, [r3, #12]
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #60]
	str	r2, [r3, #16]
	b	.L721
.L709:
	movs	r3, #2
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #1
	bl	afm_parser_read_vals(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L724
	b	.L729
.L724:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #60]
	str	r2, [r3, #20]
	b	.L721
.L711:
	movs	r3, #2
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #1
	bl	afm_parser_read_vals(PLT)
	mov	r3, r0
	cmp	r3, #1
	beq	.L725
	b	.L729
.L725:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #60]
	str	r2, [r3, #24]
	b	.L721
.L716:
	movs	r3, #0
	str	r3, [r7, #44]
	add	r3, r7, #44
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	afm_parser_read_int(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L726
	b	.L729
.L726:
	ldr	r3, [r7, #44]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #17
	bl	afm_parser_skip_section(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L727
	ldr	r3, [r7, #68]
	b	.L731
.L727:
	b	.L721
.L717:
	ldr	r0, [r7, #4]
	bl	afm_parse_kern_data(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L712
	nop
	b	.L729
.L712:
	movs	r3, #0
	b	.L731
.L732:
	nop
.L721:
.L707:
	add	r3, r7, #52
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	bl	afm_parser_next_key(PLT)
	str	r0, [r7, #56]
	ldr	r3, [r7, #56]
	cmp	r3, #0
	bne	.L730
.L729:
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #28]
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [r7, #60]
	ldr	r3, [r3, #36]
	ldr	r0, [r7, #64]
	mov	r1, r3
	bl	ft_mem_free(PLT)
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r2, [r3, #36]
	ldr	r3, [r7, #60]
	movs	r2, #0
	str	r2, [r3, #40]
	ldr	r3, [r7, #60]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #68]
.L731:
	mov	r0, r3
	adds	r7, r7, #72
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L734:
	.align	2
.L733:
	.word	.LC50-(.LPIC12+4)
	.size	afm_parser_parse, .-afm_parser_parse
	.section	.rodata.ft_char_table,"a",%progbits
	.align	2
	.type	ft_char_table, %object
	.size	ft_char_table, 128
ft_char_table:
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	10
	.byte	11
	.byte	12
	.byte	13
	.byte	14
	.byte	15
	.byte	16
	.byte	17
	.byte	18
	.byte	19
	.byte	20
	.byte	21
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	27
	.byte	28
	.byte	29
	.byte	30
	.byte	31
	.byte	32
	.byte	33
	.byte	34
	.byte	35
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.byte	-1
	.global	__aeabi_idiv
	.global	__aeabi_idivmod
	.section	.text.PS_Conv_Strtol,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	PS_Conv_Strtol, %function
PS_Conv_Strtol:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #0
	strb	r3, [r7, #31]
	movs	r3, #0
	strb	r3, [r7, #30]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L736
	b	.L737
.L736:
	ldr	r3, [r7, #4]
	cmp	r3, #1
	ble	.L738
	ldr	r3, [r7, #4]
	cmp	r3, #36
	ble	.L739
.L738:
	movs	r3, #0
	b	.L740
.L739:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	beq	.L741
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L742
.L741:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #31]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L742
	b	.L737
.L742:
	mvn	r0, #-2147483648
	ldr	r1, [r7, #4]
	bl	__aeabi_idiv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	mvn	r3, #-2147483648
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	__aeabi_idivmod(PLT)
	mov	r3, r1
	strb	r3, [r7, #23]
	b	.L743
.L748:
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L744
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L744
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L744
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L744
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L744
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L744
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L744
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #127
	ldr	r2, .L751
.LPIC13:
	add	r2, pc
	ldrb	r3, [r2, r3]
	strb	r3, [r7, #22]
	ldrsb	r3, [r7, #22]
	cmp	r3, #0
	blt	.L744
	ldrsb	r2, [r7, #22]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bge	.L744
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L745
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L746
	ldrsb	r2, [r7, #22]
	ldrsb	r3, [r7, #23]
	cmp	r2, r3
	ble	.L746
.L745:
	movs	r3, #1
	strb	r3, [r7, #30]
	b	.L747
.L746:
	ldr	r3, [r7, #32]
	ldr	r2, [r7, #4]
	mul	r2, r2, r3
	ldrsb	r3, [r7, #22]
	add	r3, r3, r2
	str	r3, [r7, #32]
.L747:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L743:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L748
.L744:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldrb	r3, [r7, #30]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L749
	mvn	r3, #-2147483648
	str	r3, [r7, #32]
.L749:
	ldrb	r3, [r7, #31]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L750
	ldr	r3, [r7, #32]
	negs	r3, r3
	str	r3, [r7, #32]
.L750:
	ldr	r3, [r7, #32]
	b	.L740
.L737:
	movs	r3, #0
.L740:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L752:
	.align	2
.L751:
	.word	ft_char_table-(.LPIC13+4)
	.size	PS_Conv_Strtol, .-PS_Conv_Strtol
	.section	.text.PS_Conv_ToInt,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	PS_Conv_ToInt, %function
PS_Conv_ToInt:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7]
	movs	r2, #10
	bl	PS_Conv_Strtol(PLT)
	str	r0, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L754
	movs	r3, #0
	b	.L757
.L754:
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L756
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #35
	bne	.L756
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7]
	ldr	r2, [r7, #20]
	bl	PS_Conv_Strtol(PLT)
	str	r0, [r7, #20]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L756
	movs	r3, #0
	b	.L757
.L756:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #20]
.L757:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	PS_Conv_ToInt, .-PS_Conv_ToInt
	.section	.text.PS_Conv_ToFixed,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	PS_Conv_ToFixed, %function
PS_Conv_ToFixed:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #48
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	movs	r3, #1
	str	r3, [r7, #36]
	movs	r3, #0
	strb	r3, [r7, #35]
	movs	r3, #0
	strb	r3, [r7, #34]
	movs	r3, #0
	strb	r3, [r7, #33]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L759
	b	.L760
.L759:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	beq	.L761
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #43
	bne	.L762
.L761:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #45
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	strb	r3, [r7, #35]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L762
	b	.L760
.L762:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #46
	beq	.L763
	ldr	r3, [r7, #16]
	str	r3, [r7, #28]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	PS_Conv_ToInt(PLT)
	str	r0, [r7, #44]
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bne	.L764
	movs	r3, #0
	b	.L795
.L764:
	ldr	r3, [r7, #44]
	cmp	r3, #32768
	blt	.L766
	movs	r3, #1
	strb	r3, [r7, #34]
	b	.L763
.L766:
	ldr	r3, [r7, #44]
	lsls	r3, r3, #16
	str	r3, [r7, #44]
.L763:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L767
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #46
	bne	.L767
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	b	.L768
.L771:
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L767
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	beq	.L767
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L767
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L767
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L767
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L767
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r3, r3
	sxtb	r3, r3
	cmp	r3, #0
	blt	.L767
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #127
	ldr	r2, .L796
.LPIC14:
	add	r2, pc
	ldrb	r3, [r2, r3]
	strb	r3, [r7, #27]
	ldrsb	r3, [r7, #27]
	cmp	r3, #0
	blt	.L767
	ldrsb	r3, [r7, #27]
	cmp	r3, #9
	bgt	.L767
	ldr	r2, [r7, #36]
	movw	r3, #52427
	movt	r3, 3276
	cmp	r2, r3
	bgt	.L769
	ldr	r2, [r7, #40]
	movw	r3, #52427
	movt	r3, 3276
	cmp	r2, r3
	bgt	.L769
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	mov	r2, r3
	ldrsb	r3, [r7, #27]
	add	r3, r3, r2
	str	r3, [r7, #40]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L770
	ldr	r3, [r7, #4]
	cmp	r3, #0
	ble	.L770
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	b	.L769
.L770:
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	str	r3, [r7, #36]
.L769:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L768:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L771
.L767:
	ldr	r3, [r7, #16]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L772
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #101
	beq	.L773
	ldr	r3, [r7, #16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #69
	bne	.L772
.L773:
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	str	r3, [r7, #28]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	PS_Conv_ToInt(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #28]
	cmp	r2, r3
	bne	.L774
	movs	r3, #0
	b	.L795
.L774:
	ldr	r3, [r7, #20]
	cmp	r3, #1000
	ble	.L775
	movs	r3, #1
	strb	r3, [r7, #34]
	b	.L772
.L775:
	ldr	r3, [r7, #20]
	cmn	r3, #1000
	bge	.L776
	movs	r3, #1
	strb	r3, [r7, #33]
	b	.L772
.L776:
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	add	r3, r3, r2
	str	r3, [r7, #4]
.L772:
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L777
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L777
	movs	r3, #0
	b	.L795
.L777:
	ldrb	r3, [r7, #34]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L778
	b	.L779
.L778:
	ldrb	r3, [r7, #33]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L780
	b	.L781
.L780:
	b	.L782
.L787:
	ldr	r2, [r7, #44]
	movw	r3, #52427
	movt	r3, 3276
	cmp	r2, r3
	ble	.L783
	b	.L779
.L783:
	ldr	r2, [r7, #44]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	str	r3, [r7, #44]
	ldr	r2, [r7, #40]
	movw	r3, #52427
	movt	r3, 3276
	cmp	r2, r3
	ble	.L784
	ldr	r3, [r7, #36]
	cmp	r3, #1
	bne	.L785
	b	.L779
.L785:
	ldr	r2, [r7, #36]
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #36]
	b	.L786
.L784:
	ldr	r2, [r7, #40]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	str	r3, [r7, #40]
.L786:
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
.L782:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L787
	b	.L788
.L792:
	ldr	r2, [r7, #44]
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #44]
	ldr	r2, [r7, #36]
	movw	r3, #52427
	movt	r3, 3276
	cmp	r2, r3
	bgt	.L789
	ldr	r2, [r7, #36]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #1
	str	r3, [r7, #36]
	b	.L790
.L789:
	ldr	r2, [r7, #40]
	movw	r3, #26215
	movt	r3, 26214
	smull	r1, r3, r3, r2
	asrs	r1, r3, #2
	asrs	r3, r2, #31
	subs	r3, r1, r3
	str	r3, [r7, #40]
.L790:
	ldr	r3, [r7, #44]
	cmp	r3, #0
	bne	.L791
	ldr	r3, [r7, #40]
	cmp	r3, #0
	bne	.L791
	b	.L781
.L791:
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
.L788:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	blt	.L792
	ldr	r3, [r7, #40]
	cmp	r3, #0
	beq	.L793
	ldr	r0, [r7, #40]
	ldr	r1, [r7, #36]
	bl	FT_DivFix(PLT)
	str	r0, [r7, #40]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	add	r3, r3, r2
	str	r3, [r7, #44]
.L793:
	ldrb	r3, [r7, #35]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L794
	ldr	r3, [r7, #44]
	negs	r3, r3
	str	r3, [r7, #44]
.L794:
	ldr	r3, [r7, #44]
	b	.L795
.L760:
	movs	r3, #0
	b	.L795
.L779:
	mvn	r3, #-2147483648
	str	r3, [r7, #44]
	b	.L793
.L781:
	movs	r3, #0
.L795:
	mov	r0, r3
	adds	r7, r7, #48
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L797:
	.align	2
.L796:
	.word	ft_char_table-(.LPIC14+4)
	.size	PS_Conv_ToFixed, .-PS_Conv_ToFixed
	.section	.text.PS_Conv_ASCIIHexDecode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	PS_Conv_ASCIIHexDecode, %function
PS_Conv_ASCIIHexDecode:
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
	movs	r3, #0
	str	r3, [r7, #36]
	movs	r3, #0
	str	r3, [r7, #32]
	movs	r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7]
	lsls	r3, r3, #1
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #24]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L799
	movs	r3, #0
	b	.L800
.L799:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L801
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #24]
	subs	r3, r2, r3
	str	r3, [r7]
	b	.L802
.L801:
	b	.L802
.L809:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #32
	beq	.L803
	ldr	r3, [r7, #20]
	cmp	r3, #13
	beq	.L803
	ldr	r3, [r7, #20]
	cmp	r3, #10
	beq	.L803
	ldr	r3, [r7, #20]
	cmp	r3, #9
	beq	.L803
	ldr	r3, [r7, #20]
	cmp	r3, #12
	beq	.L803
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L804
.L803:
	b	.L805
.L804:
	ldr	r3, [r7, #20]
	cmp	r3, #127
	bls	.L806
	b	.L807
.L806:
	ldr	r3, [r7, #20]
	and	r3, r3, #127
	ldr	r2, .L811
.LPIC15:
	add	r2, pc
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	sxtb	r3, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #15
	bls	.L808
	b	.L807
.L808:
	ldr	r3, [r7, #28]
	lsls	r2, r3, #4
	ldr	r3, [r7, #20]
	orrs	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	and	r3, r3, #256
	cmp	r3, #0
	beq	.L805
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	uxtb	r2, r2
	strb	r2, [r3]
	movs	r3, #1
	str	r3, [r7, #28]
.L805:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L802:
	ldr	r2, [r7, #36]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L809
.L807:
	ldr	r3, [r7, #28]
	cmp	r3, #1
	beq	.L810
	ldr	r3, [r7, #32]
	adds	r2, r3, #1
	str	r2, [r7, #32]
	ldr	r2, [r7, #4]
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	uxtb	r2, r2
	lsls	r2, r2, #4
	uxtb	r2, r2
	strb	r2, [r3]
.L810:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #36]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #32]
.L800:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L812:
	.align	2
.L811:
	.word	ft_char_table-(.LPIC15+4)
	.size	PS_Conv_ASCIIHexDecode, .-PS_Conv_ASCIIHexDecode
	.section	.text.PS_Conv_EexecDecode,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	PS_Conv_EexecDecode, %function
PS_Conv_EexecDecode:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #44
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #48]
	ldrh	r3, [r3]
	str	r3, [r7, #32]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L814
	movs	r3, #0
	b	.L815
.L814:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	mov	r2, r3
	ldr	r3, [r7]
	cmp	r2, r3
	bcs	.L816
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7]
.L816:
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L817
.L818:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #24]
	ldr	r3, [r7, #32]
	lsrs	r2, r3, #8
	ldr	r3, [r7, #24]
	eors	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	movw	r2, #52845
	mul	r3, r2, r3
	add	r3, r3, #22656
	adds	r3, r3, #63
	uxth	r3, r3
	str	r3, [r7, #32]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L817:
	ldr	r2, [r7, #36]
	ldr	r3, [r7]
	cmp	r2, r3
	bcc	.L818
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #32]
	uxth	r2, r3
	ldr	r3, [r7, #48]
	strh	r2, [r3]	@ movhi
	ldr	r3, [r7, #36]
.L815:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	PS_Conv_EexecDecode, .-PS_Conv_EexecDecode
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
