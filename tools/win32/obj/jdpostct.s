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
	.file	"jdpostct.c"
	.section	.text.start_pass_dpost,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	start_pass_dpost, %function
start_pass_dpost:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r1, #2
	push	{r4, r5, r6, lr}
	ldr	r4, [r0, #444]
	sub	sp, sp, #8
	beq	.L3
	cmp	r1, #3
	beq	.L4
	cbz	r1, .L13
	ldr	r3, [r0]
	movs	r2, #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
.L7:
	movs	r3, #0
	str	r3, [r4, #24]
	str	r3, [r4, #20]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, pc}
.L13:
	ldr	r2, [r0, #92]
	cbz	r2, .L6
	ldr	r1, .L16
	ldr	r2, [r4, #12]
.LPIC0:
	add	r1, pc
	str	r1, [r4, #4]
	cmp	r2, #0
	bne	.L7
	ldr	r5, [r0, #4]
	movs	r6, #1
	ldr	r1, [r4, #8]
	ldr	r3, [r4, #16]
	str	r6, [sp]
	ldr	r5, [r5, #28]
	blx	r5
	str	r0, [r4, #12]
	b	.L7
.L4:
	ldr	r2, [r4, #8]
	cbz	r2, .L14
.L8:
	ldr	r3, .L16+4
.LPIC1:
	add	r3, pc
	str	r3, [r4, #4]
	b	.L7
.L3:
	ldr	r2, [r4, #8]
	cbz	r2, .L15
.L9:
	ldr	r3, .L16+8
.LPIC2:
	add	r3, pc
	str	r3, [r4, #4]
	b	.L7
.L6:
	ldr	r3, [r0, #464]
	ldr	r3, [r3, #4]
	str	r3, [r4, #4]
	b	.L7
.L14:
	ldr	r3, [r0]
	movs	r2, #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L8
.L15:
	ldr	r3, [r0]
	movs	r2, #4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L9
.L17:
	.align	2
.L16:
	.word	post_process_1pass-(.LPIC0+4)
	.word	post_process_prepass-(.LPIC1+4)
	.word	post_process_2pass-(.LPIC2+4)
	.size	start_pass_dpost, .-start_pass_dpost
	.section	.text.post_process_1pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	post_process_1pass, %function
post_process_1pass:
	@ args = 12, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r10, fp, lr}
	sub	sp, sp, #24
	ldr	r4, [sp, #60]
	add	lr, sp, #24
	mov	fp, #0
	mov	r8, r0
	ldr	r5, [r0, #444]
	ldr	r6, [r4]
	ldr	r7, [sp, #64]
	ldr	ip, [r0, #464]
	ldr	r10, [r5, #12]
	subs	r6, r7, r6
	ldr	r7, [r5, #16]
	str	fp, [lr, #-8]!
	stmia	sp, {r10, lr}
	cmp	r6, r7
	it	cs
	movcs	r6, r7
	ldr	r7, [sp, #56]
	str	r6, [sp, #8]
	ldr	r6, [ip, #4]
	blx	r6
	ldr	r2, [r4]
	mov	r0, r8
	ldr	r6, [r8, #472]
	ldr	r1, [r5, #12]
	ldr	r3, [sp, #16]
	add	r2, r7, r2, lsl #2
	ldr	r5, [r6, #4]
	blx	r5
	ldr	r2, [r4]
	ldr	r3, [sp, #16]
	add	r3, r3, r2
	str	r3, [r4]
	add	sp, sp, #24
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r10, fp, pc}
	.size	post_process_1pass, .-post_process_1pass
	.section	.text.post_process_prepass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	post_process_prepass, %function
post_process_prepass:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r5, r0
	ldr	r4, [r0, #444]
	sub	sp, sp, #20
	mov	r7, r1
	mov	r9, r2
	mov	r8, r3
	ldr	r6, [r4, #24]
	cbz	r6, .L21
	ldr	r0, [r4, #12]
.L22:
	add	r3, r4, #24
	mov	r1, r7
	stmia	sp, {r0, r3}
	mov	r2, r9
	ldr	lr, [r5, #464]
	mov	r3, r8
	ldr	r7, [r4, #16]
	mov	r0, r5
	str	r7, [sp, #8]
	ldr	r7, [lr, #4]
	blx	r7
	ldr	r3, [r4, #24]
	cmp	r3, r6
	bhi	.L26
.L23:
	ldr	r2, [r4, #16]
	cmp	r2, r3
	itttt	ls
	ldrls	r3, [r4, #20]
	movls	r1, #0
	strls	r1, [r4, #24]
	addls	r2, r2, r3
	it	ls
	strls	r2, [r4, #20]
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L21:
	ldr	r6, [r0, #4]
	mov	lr, #1
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #20]
	ldr	r3, [r4, #16]
	str	lr, [sp]
	ldr	r6, [r6, #28]
	blx	r6
	ldr	r6, [r4, #24]
	str	r0, [r4, #12]
	b	.L22
.L26:
	ldr	r1, [r4, #12]
	subs	r7, r3, r6
	ldr	lr, [r5, #472]
	mov	r3, r7
	mov	r0, r5
	movs	r2, #0
	add	r1, r1, r6, lsl #2
	ldr	r5, [lr, #4]
	blx	r5
	ldr	r2, [sp, #52]
	ldr	r3, [r2]
	add	r3, r3, r7
	str	r3, [r2]
	ldr	r3, [r4, #24]
	b	.L23
	.size	post_process_prepass, .-post_process_prepass
	.section	.text.post_process_2pass,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	post_process_2pass, %function
post_process_2pass:
	@ args = 12, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, lr}
	sub	sp, sp, #12
	ldr	r4, [r0, #444]
	mov	r8, r0
	ldr	r9, [sp, #44]
	ldr	r3, [r4, #24]
	ldr	r6, [sp, #48]
	cmp	r3, #0
	beq	.L28
	ldr	r0, [r4, #12]
.L29:
	ldr	r2, [r9]
	add	r1, r0, r3, lsl #2
	ldr	r5, [sp, #40]
	mov	r0, r8
	ldr	r7, [r8, #124]
	subs	r6, r6, r2
	ldr	ip, [r8, #472]
	add	r2, r5, r2, lsl #2
	ldr	r5, [r4, #20]
	rsb	lr, r5, r7
	ldr	r5, [r4, #16]
	cmp	r6, lr
	it	cs
	movcs	r6, lr
	subs	r7, r5, r3
	ldr	r5, [ip, #4]
	cmp	r6, r7
	it	cs
	movcs	r6, r7
	mov	r3, r6
	blx	r5
	ldr	r3, [r9]
	add	r3, r3, r6
	str	r3, [r9]
	ldr	r2, [r4, #24]
	ldr	r3, [r4, #16]
	add	r6, r6, r2
	cmp	r6, r3
	str	r6, [r4, #24]
	itttt	cs
	ldrcs	r2, [r4, #20]
	movcs	r1, #0
	strcs	r1, [r4, #24]
	addcs	r3, r3, r2
	it	cs
	strcs	r3, [r4, #20]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L28:
	ldr	r5, [r4, #16]
	ldr	r7, [r0, #4]
	ldr	r1, [r4, #8]
	ldr	r2, [r4, #20]
	str	r3, [sp]
	mov	r3, r5
	ldr	r7, [r7, #28]
	blx	r7
	ldr	r3, [r4, #24]
	str	r0, [r4, #12]
	b	.L29
	.size	post_process_2pass, .-post_process_2pass
	.section	.text.jinit_d_post_controller,"ax",%progbits
	.align	2
	.global	jinit_d_post_controller
	.thumb
	.thumb_func
	.type	jinit_d_post_controller, %function
jinit_d_post_controller:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #4]
	movs	r2, #28
	push	{r4, r5, r6, r7, r8, lr}
	mov	r4, r0
	sub	sp, sp, #8
	mov	r7, r1
	movs	r1, #1
	movs	r6, #0
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #92]
	mov	r5, r0
	ldr	r2, .L40
	str	r0, [r4, #444]
	str	r6, [r0, #8]
.LPIC3:
	add	r2, pc
	str	r6, [r0, #12]
	str	r2, [r0]
	cbz	r3, .L32
	ldr	r3, [r4, #324]
	str	r3, [r0, #16]
	cbnz	r7, .L39
	ldr	r2, [r4, #128]
	mov	r0, r4
	ldr	r6, [r4, #120]
	movs	r1, #1
	ldr	r4, [r4, #4]
	mul	r2, r6, r2
	ldr	r4, [r4, #8]
	blx	r4
	str	r0, [r5, #12]
.L32:
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L39:
	ldr	r7, [r4, #128]
	mov	r1, r3
	ldr	r3, [r4, #120]
	ldr	r2, [r4, #4]
	ldr	r0, [r4, #124]
	mul	r7, r3, r7
	ldr	r8, [r2, #16]
	bl	jround_up(PLT)
	mov	r3, r7
	str	r0, [sp]
	ldr	r7, [r5, #16]
	mov	r0, r4
	mov	r2, r6
	movs	r1, #1
	str	r7, [sp, #4]
	blx	r8
	str	r0, [r5, #8]
	add	sp, sp, #8
	@ sp needed
	pop	{r4, r5, r6, r7, r8, pc}
.L41:
	.align	2
.L40:
	.word	start_pass_dpost-(.LPIC3+4)
	.size	jinit_d_post_controller, .-jinit_d_post_controller
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
