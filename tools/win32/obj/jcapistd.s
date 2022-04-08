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
	.file	"jcapistd.c"
	.section	.text.jpeg_start_compress,"ax",%progbits
	.align	2
	.global	jpeg_start_compress
	.thumb
	.thumb_func
	.type	jpeg_start_compress, %function
jpeg_start_compress:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r0
	ldr	r3, [r0, #20]
	mov	r5, r1
	cmp	r3, #100
	beq	.L2
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L2:
	cbnz	r5, .L14
.L3:
	ldr	r3, [r4]
	mov	r0, r4
	ldr	r3, [r3, #16]
	blx	r3
	ldr	r3, [r4, #24]
	mov	r0, r4
	ldr	r3, [r3, #8]
	blx	r3
	mov	r0, r4
	bl	jinit_compress_master(PLT)
	ldr	r3, [r4, #332]
	mov	r0, r4
	ldr	r3, [r3]
	blx	r3
	ldr	r3, [r4, #176]
	movs	r2, #0
	str	r2, [r4, #224]
	cmp	r3, r2
	ite	eq
	moveq	r3, #101
	movne	r3, #102
	str	r3, [r4, #20]
	pop	{r3, r4, r5, pc}
.L14:
	mov	r0, r4
	movs	r1, #0
	bl	jpeg_suppress_tables(PLT)
	b	.L3
	.size	jpeg_start_compress, .-jpeg_start_compress
	.section	.text.jpeg_write_scanlines,"ax",%progbits
	.align	2
	.global	jpeg_write_scanlines
	.thumb
	.thumb_func
	.type	jpeg_write_scanlines, %function
jpeg_write_scanlines:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #20]
	push	{r4, r5, r6, r7, r8, r9, lr}
	mov	r4, r0
	sub	sp, sp, #12
	mov	r9, r1
	cmp	r3, #101
	mov	r8, r2
	beq	.L16
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L16:
	ldr	r2, [r4, #224]
	ldr	r3, [r4, #32]
	cmp	r2, r3
	bcs	.L30
.L17:
	ldr	r5, [r4, #8]
	cbz	r5, .L18
	ldr	r2, [r4, #224]
	mov	r0, r4
	ldr	r3, [r4, #32]
	ldr	r1, [r5]
	str	r2, [r5, #4]
	str	r3, [r5, #8]
	blx	r1
.L18:
	ldr	r3, [r4, #332]
	ldr	r2, [r3, #12]
	cbnz	r2, .L31
.L19:
	ldr	r7, [r4, #32]
	add	r2, sp, #8
	ldr	r6, [r4, #224]
	movs	r3, #0
	ldr	r5, [r4, #336]
	mov	r0, r4
	str	r3, [r2, #-8]!
	mov	r1, r9
	subs	r3, r7, r6
	mov	r2, sp
	cmp	r3, r8
	ldr	r5, [r5, #4]
	it	cs
	movcs	r3, r8
	blx	r5
	ldr	r3, [sp]
	ldr	r2, [r4, #224]
	mov	r0, r3
	add	r3, r3, r2
	str	r3, [r4, #224]
	add	sp, sp, #12
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, pc}
.L30:
	ldr	r3, [r4]
	movs	r2, #123
	mov	r0, r4
	mov	r1, #-1
	str	r2, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	b	.L17
.L31:
	ldr	r3, [r3, #4]
	mov	r0, r4
	blx	r3
	b	.L19
	.size	jpeg_write_scanlines, .-jpeg_write_scanlines
	.section	.text.jpeg_write_raw_data,"ax",%progbits
	.align	2
	.global	jpeg_write_raw_data
	.thumb
	.thumb_func
	.type	jpeg_write_raw_data, %function
jpeg_write_raw_data:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r0
	ldr	r3, [r0, #20]
	mov	r6, r1
	mov	r7, r2
	cmp	r3, #102
	beq	.L33
	ldr	r2, [r0]
	movs	r1, #20
	str	r3, [r2, #24]
	ldr	r3, [r0]
	str	r1, [r2, #20]
	ldr	r3, [r3]
	blx	r3
.L33:
	ldr	r0, [r4, #224]
	ldr	r5, [r4, #32]
	cmp	r0, r5
	bcs	.L50
	ldr	r3, [r4, #8]
	cbz	r3, .L36
	str	r0, [r3, #4]
	mov	r0, r4
	str	r5, [r3, #8]
	ldr	r3, [r3]
	blx	r3
.L36:
	ldr	r3, [r4, #332]
	ldr	r2, [r3, #12]
	cbnz	r2, .L51
.L37:
	ldr	r5, [r4, #236]
	lsls	r5, r5, #3
	cmp	r5, r7
	bhi	.L52
.L38:
	ldr	r3, [r4, #344]
	mov	r1, r6
	mov	r0, r4
	ldr	r3, [r3, #4]
	blx	r3
	cbz	r0, .L35
	ldr	r3, [r4, #224]
	mov	r0, r5
	add	r5, r5, r3
	str	r5, [r4, #224]
.L35:
	pop	{r3, r4, r5, r6, r7, pc}
.L52:
	ldr	r3, [r4]
	movs	r2, #23
	mov	r0, r4
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L38
.L51:
	ldr	r3, [r3, #4]
	mov	r0, r4
	blx	r3
	b	.L37
.L50:
	ldr	r3, [r4]
	movs	r2, #123
	mov	r0, r4
	mov	r1, #-1
	str	r2, [r3, #20]
	ldr	r3, [r3, #4]
	blx	r3
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7, pc}
	.size	jpeg_write_raw_data, .-jpeg_write_raw_data
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
