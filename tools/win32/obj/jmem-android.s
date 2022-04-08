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
	.file	"jmem-android.c"
	.section	.text.close_backing_store,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	close_backing_store, %function
close_backing_store:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, [r1, #12]
	b	fclose(PLT)
	.size	close_backing_store, .-close_backing_store
	.section	.text.getTempFile,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	getTempFile, %function
getTempFile:
	@ args = 0, pretend = 0, frame = 1024
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	subw	sp, sp, #1028
	bl	getpid(PLT)
	movw	r1, #1023
	mov	r3, r0
	ldr	r2, .L4
	mov	r0, sp
.LPIC0:
	add	r2, pc
	bl	snprintf(PLT)
	ldr	r1, .L4+4
	mov	r0, sp
.LPIC1:
	add	r1, pc
	bl	fopen(PLT)
	mov	r5, r0
	mov	r0, sp
	bl	unlink(PLT)
	mov	r0, r5
	addw	sp, sp, #1028
	@ sp needed
	pop	{r4, r5, pc}
.L5:
	.align	2
.L4:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.size	getTempFile, .-getTempFile
	.section	.text.write_backing_store,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	write_backing_store, %function
write_backing_store:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r1
	mov	r6, r0
	mov	r7, r2
	mov	r1, r3
	movs	r2, #0
	ldr	r0, [r5, #12]
	ldr	r4, [sp, #24]
	bl	fseek(PLT)
	cbnz	r0, .L14
.L7:
	mov	r0, r7
	ldr	r3, [r5, #12]
	movs	r1, #1
	mov	r2, r4
	bl	fwrite(PLT)
	cmp	r4, r0
	beq	.L6
	ldr	r3, [r6]
	movs	r2, #66
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L6:
	pop	{r4, r5, r6, r7, r8, pc}
.L14:
	ldr	r3, [r6]
	movs	r2, #65
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L7
	.size	write_backing_store, .-write_backing_store
	.section	.text.read_backing_store,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	read_backing_store, %function
read_backing_store:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, lr}
	mov	r5, r1
	mov	r6, r0
	mov	r7, r2
	mov	r1, r3
	movs	r2, #0
	ldr	r0, [r5, #12]
	ldr	r4, [sp, #24]
	bl	fseek(PLT)
	cbnz	r0, .L22
.L16:
	mov	r0, r7
	ldr	r3, [r5, #12]
	movs	r1, #1
	mov	r2, r4
	bl	fread(PLT)
	cmp	r4, r0
	beq	.L15
	ldr	r3, [r6]
	movs	r2, #64
	mov	r0, r6
	pop	{r4, r5, r6, r7, r8, lr}
	str	r2, [r3, #20]
	ldr	r3, [r3]
	bx	r3	@ indirect register sibling call
.L15:
	pop	{r4, r5, r6, r7, r8, pc}
.L22:
	ldr	r3, [r6]
	movs	r2, #65
	mov	r0, r6
	str	r2, [r3, #20]
	ldr	r3, [r3]
	blx	r3
	b	.L16
	.size	read_backing_store, .-read_backing_store
	.section	.text.jpeg_get_small,"ax",%progbits
	.align	2
	.global	jpeg_get_small
	.thumb
	.thumb_func
	.type	jpeg_get_small, %function
jpeg_get_small:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r1
	b	malloc(PLT)
	.size	jpeg_get_small, .-jpeg_get_small
	.section	.text.jpeg_free_small,"ax",%progbits
	.align	2
	.global	jpeg_free_small
	.thumb
	.thumb_func
	.type	jpeg_free_small, %function
jpeg_free_small:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r1
	b	free(PLT)
	.size	jpeg_free_small, .-jpeg_free_small
	.section	.text.jpeg_get_large,"ax",%progbits
	.align	2
	.global	jpeg_get_large
	.thumb
	.thumb_func
	.type	jpeg_get_large, %function
jpeg_get_large:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r1
	b	malloc(PLT)
	.size	jpeg_get_large, .-jpeg_get_large
	.section	.text.jpeg_free_large,"ax",%progbits
	.align	2
	.global	jpeg_free_large
	.thumb
	.thumb_func
	.type	jpeg_free_large, %function
jpeg_free_large:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r1
	b	free(PLT)
	.size	jpeg_free_large, .-jpeg_free_large
	.section	.text.jpeg_mem_available,"ax",%progbits
	.align	2
	.global	jpeg_mem_available
	.thumb
	.thumb_func
	.type	jpeg_mem_available, %function
jpeg_mem_available:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r2, [r0, #4]
	ldr	r0, [r2, #44]
	subs	r0, r0, r3
	bx	lr
	.size	jpeg_mem_available, .-jpeg_mem_available
	.section	.text.jpeg_open_backing_store,"ax",%progbits
	.align	2
	.global	jpeg_open_backing_store
	.thumb
	.thumb_func
	.type	jpeg_open_backing_store, %function
jpeg_open_backing_store:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r4, r1
	mov	r5, r0
	bl	getTempFile(PLT)
	str	r0, [r4, #12]
	cbz	r0, .L31
.L29:
	ldr	r1, .L32
	ldr	r2, .L32+4
	ldr	r3, .L32+8
.LPIC3:
	add	r1, pc
.LPIC4:
	add	r2, pc
.LPIC5:
	add	r3, pc
	stmia	r4, {r1, r2, r3}
	pop	{r3, r4, r5, pc}
.L31:
	ldr	r0, [r5]
	movs	r3, #63
	ldr	r1, .L32+12
	movs	r2, #80
	str	r3, [r0, #20]
	adds	r0, r0, #24
.LPIC2:
	add	r1, pc
	bl	strncpy(PLT)
	ldr	r3, [r5]
	mov	r0, r5
	ldr	r3, [r3]
	blx	r3
	b	.L29
.L33:
	.align	2
.L32:
	.word	read_backing_store-(.LPIC3+4)
	.word	write_backing_store-(.LPIC4+4)
	.word	close_backing_store-(.LPIC5+4)
	.word	.LC2-(.LPIC2+4)
	.size	jpeg_open_backing_store, .-jpeg_open_backing_store
	.section	.text.jpeg_mem_init,"ax",%progbits
	.align	2
	.global	jpeg_mem_init
	.thumb
	.thumb_func
	.type	jpeg_mem_init, %function
jpeg_mem_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movw	r0, #38528
	movt	r0, 152
	bx	lr
	.size	jpeg_mem_init, .-jpeg_mem_init
	.section	.text.jpeg_mem_term,"ax",%progbits
	.align	2
	.global	jpeg_mem_term
	.thumb
	.thumb_func
	.type	jpeg_mem_term, %function
jpeg_mem_term:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	jpeg_mem_term, .-jpeg_mem_term
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"/sdcard/.%d.tmp\000"
.LC1:
	.ascii	"w+\000"
	.space	1
.LC2:
	.ascii	"\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
