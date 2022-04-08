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
	.file	"pngmem.c"
	.section	.text.png_malloc_base,"ax",%progbits
	.align	2
	.global	png_malloc_base
	.thumb
	.thumb_func
	.type	png_malloc_base, %function
png_malloc_base:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r2, r1
	cbz	r1, .L2
	cbz	r0, .L3
	ldr	r3, [r0, #960]
	cbz	r3, .L3
	bx	r3
.L3:
	mov	r0, r2
	b	malloc(PLT)
.L2:
	mov	r0, r1
	bx	lr
	.size	png_malloc_base, .-png_malloc_base
	.global	__aeabi_uidiv
	.section	.text.png_malloc_array,"ax",%progbits
	.align	2
	.global	png_malloc_array
	.thumb
	.thumb_func
	.type	png_malloc_array, %function
png_malloc_array:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	cmp	r2, #0
	it	ne
	cmpne	r1, #0
	push	{r3, r4, r5, r6, r7, lr}
	mov	r4, r1
	mov	r5, r2
	ite	le
	movle	r7, #1
	movgt	r7, #0
	ble	.L15
	mov	r6, r0
	mov	r1, r2
	mov	r0, #-1
	bl	__aeabi_uidiv(PLT)
	cmp	r4, r0
	bhi	.L13
	mov	r0, r6
	mul	r1, r5, r4
	pop	{r3, r4, r5, r6, r7, lr}
	b	png_malloc_base(PLT)
.L13:
	mov	r0, r7
	pop	{r3, r4, r5, r6, r7, pc}
.L15:
	ldr	r1, .L16
.LPIC0:
	add	r1, pc
	bl	png_error(PLT)
.L17:
	.align	2
.L16:
	.word	.LC0-(.LPIC0+4)
	.size	png_malloc_array, .-png_malloc_array
	.section	.text.png_realloc_array,"ax",%progbits
	.align	2
	.global	png_realloc_array
	.thumb
	.thumb_func
	.type	png_realloc_array, %function
png_realloc_array:
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, r8, r9, lr}
	mov	r6, r3
	ldr	r7, [sp, #32]
	mov	r9, r0
	cmp	r7, #0
	it	ne
	cmpne	r3, #0
	ble	.L19
	cmp	r2, #0
	mov	r4, r2
	blt	.L19
	ite	gt
	movgt	r3, #1
	movle	r3, #0
	cmp	r1, #0
	ite	ne
	movne	r3, #0
	andeq	r3, r3, #1
	mov	r8, r1
	cbnz	r3, .L19
	movw	r5, #65535
	movt	r5, 32767
	subs	r5, r5, r2
	cmp	r6, r5
	bgt	.L23
	adds	r5, r2, r6
	mov	r0, #-1
	mov	r1, r7
	bl	__aeabi_uidiv(PLT)
	cmp	r5, r0
	bls	.L30
.L23:
	movs	r5, #0
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L30:
	mul	r1, r7, r5
	mov	r0, r9
	bl	png_malloc_base(PLT)
	mov	r5, r0
	cmp	r0, #0
	beq	.L23
	cbz	r4, .L24
	mul	r4, r7, r4
	mov	r1, r8
	mov	r2, r4
	bl	memcpy(PLT)
.L24:
	adds	r0, r5, r4
	mul	r2, r7, r6
	movs	r1, #0
	bl	memset(PLT)
	mov	r0, r5
	pop	{r3, r4, r5, r6, r7, r8, r9, pc}
.L19:
	ldr	r1, .L31
	mov	r0, r9
.LPIC1:
	add	r1, pc
	bl	png_error(PLT)
.L32:
	.align	2
.L31:
	.word	.LC1-(.LPIC1+4)
	.size	png_realloc_array, .-png_realloc_array
	.section	.text.png_malloc,"ax",%progbits
	.align	2
	.global	png_malloc
	.thumb
	.thumb_func
	.type	png_malloc, %function
png_malloc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L34
	bl	png_malloc_base(PLT)
	cbz	r0, .L38
.L34:
	pop	{r4, pc}
.L38:
	ldr	r1, .L39
	mov	r0, r4
.LPIC2:
	add	r1, pc
	bl	png_error(PLT)
.L40:
	.align	2
.L39:
	.word	.LC2-(.LPIC2+4)
	.size	png_malloc, .-png_malloc
	.section	.text.png_calloc,"ax",%progbits
	.align	2
	.global	png_calloc
	.thumb
	.thumb_func
	.type	png_calloc, %function
png_calloc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r1
	bl	png_malloc(PLT)
	mov	r4, r0
	cbz	r0, .L42
	mov	r2, r5
	movs	r1, #0
	bl	memset(PLT)
.L42:
	mov	r0, r4
	pop	{r3, r4, r5, pc}
	.size	png_calloc, .-png_calloc
	.section	.text.png_malloc_default,"ax",%progbits
	.align	2
	.global	png_malloc_default
	.thumb
	.thumb_func
	.type	png_malloc_default, %function
png_malloc_default:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	cbz	r0, .L48
	movs	r0, #0
	bl	png_malloc_base(PLT)
	cbz	r0, .L52
.L48:
	pop	{r4, pc}
.L52:
	ldr	r1, .L53
	mov	r0, r4
.LPIC3:
	add	r1, pc
	bl	png_error(PLT)
.L54:
	.align	2
.L53:
	.word	.LC3-(.LPIC3+4)
	.size	png_malloc_default, .-png_malloc_default
	.section	.text.png_malloc_warn,"ax",%progbits
	.align	2
	.global	png_malloc_warn
	.thumb
	.thumb_func
	.type	png_malloc_warn, %function
png_malloc_warn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	cbz	r0, .L57
	bl	png_malloc_base(PLT)
	mov	r4, r0
	cbz	r0, .L60
	pop	{r3, r4, r5, pc}
.L57:
	pop	{r3, r4, r5, pc}
.L60:
	ldr	r1, .L61
	mov	r0, r5
.LPIC4:
	add	r1, pc
	bl	png_warning(PLT)
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L62:
	.align	2
.L61:
	.word	.LC2-(.LPIC4+4)
	.size	png_malloc_warn, .-png_malloc_warn
	.section	.text.png_free_default,"ax",%progbits
	.align	2
	.global	png_free_default
	.thumb
	.thumb_func
	.type	png_free_default, %function
png_free_default:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	bne	.L65
	bx	lr
.L65:
	mov	r0, r1
	b	free(PLT)
	.size	png_free_default, .-png_free_default
	.section	.text.png_free,"ax",%progbits
	.align	2
	.global	png_free
	.thumb
	.thumb_func
	.type	png_free, %function
png_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cmp	r1, #0
	it	ne
	cmpne	r0, #0
	beq	.L66
	ldr	r3, [r0, #964]
	cbz	r3, .L68
	bx	r3	@ indirect register sibling call
.L66:
	bx	lr
.L68:
	b	png_free_default(PLT)
	.size	png_free, .-png_free
	.section	.text.png_destroy_png_struct,"ax",%progbits
	.align	2
	.global	png_destroy_png_struct
	.thumb
	.thumb_func
	.type	png_destroy_png_struct, %function
png_destroy_png_struct:
	@ args = 0, pretend = 0, frame = 1152
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	mov	r4, r0
	subw	sp, sp, #1156
	cbz	r0, .L69
	mov	r1, r0
	mov	r2, #1152
	mov	r0, sp
	bl	memcpy(PLT)
	movs	r1, #0
	mov	r2, #1152
	mov	r0, r4
	bl	memset(PLT)
	mov	r0, sp
	mov	r1, r4
	bl	png_free(PLT)
	mov	r0, sp
	bl	png_free_jmpbuf(PLT)
.L69:
	addw	sp, sp, #1156
	@ sp needed
	pop	{r4, r5, pc}
	.size	png_destroy_png_struct, .-png_destroy_png_struct
	.section	.text.png_set_mem_fn,"ax",%progbits
	.align	2
	.global	png_set_mem_fn
	.thumb
	.thumb_func
	.type	png_set_mem_fn, %function
png_set_mem_fn:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L75
	str	r1, [r0, #956]
	str	r2, [r0, #960]
	str	r3, [r0, #964]
.L75:
	bx	lr
	.size	png_set_mem_fn, .-png_set_mem_fn
	.section	.text.png_get_mem_ptr,"ax",%progbits
	.align	2
	.global	png_get_mem_ptr
	.thumb
	.thumb_func
	.type	png_get_mem_ptr, %function
png_get_mem_ptr:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L81
	ldr	r0, [r0, #956]
.L81:
	bx	lr
	.size	png_get_mem_ptr, .-png_get_mem_ptr
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"internal error: array alloc\000"
.LC1:
	.ascii	"internal error: array realloc\000"
	.space	2
.LC2:
	.ascii	"Out of memory\000"
	.space	2
.LC3:
	.ascii	"Out of Memory\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
