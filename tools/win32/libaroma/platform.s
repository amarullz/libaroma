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
	.file	"platform.c"
	.section	.text.libaroma_cond_init,"ax",%progbits
	.align	2
	.global	libaroma_cond_init
	.thumb
	.thumb_func
	.type	libaroma_cond_init, %function
libaroma_cond_init:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	mov	r0, r1
	movs	r1, #0
	bl	pthread_mutex_init(PLT)
	mov	r0, r4
	movs	r1, #0
	pop	{r4, lr}
	b	pthread_cond_init(PLT)
	.size	libaroma_cond_init, .-libaroma_cond_init
	.section	.text.libaroma_cond_free,"ax",%progbits
	.align	2
	.global	libaroma_cond_free
	.thumb
	.thumb_func
	.type	libaroma_cond_free, %function
libaroma_cond_free:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r1
	bl	pthread_cond_destroy(PLT)
	mov	r0, r4
	pop	{r4, lr}
	b	pthread_mutex_destroy(PLT)
	.size	libaroma_cond_free, .-libaroma_cond_free
	.section	.text.libaroma_filesize,"ax",%progbits
	.align	2
	.global	libaroma_filesize
	.thumb
	.thumb_func
	.type	libaroma_filesize, %function
libaroma_filesize:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #92
	mov	r1, r0
	mov	r2, sp
	movs	r0, #3
	bl	__xstat(PLT)
	cmp	r0, #0
	ite	ge
	ldrge	r0, [sp, #44]
	movlt	r0, #-1
	add	sp, sp, #92
	@ sp needed
	ldr	pc, [sp], #4
	.size	libaroma_filesize, .-libaroma_filesize
	.section	.text.libaroma_filesize_fd,"ax",%progbits
	.align	2
	.global	libaroma_filesize_fd
	.thumb
	.thumb_func
	.type	libaroma_filesize_fd, %function
libaroma_filesize_fd:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #92
	mov	r1, r0
	mov	r2, sp
	movs	r0, #3
	bl	__fxstat(PLT)
	cmp	r0, #0
	ite	ge
	ldrge	r0, [sp, #44]
	movlt	r0, #-1
	add	sp, sp, #92
	@ sp needed
	ldr	pc, [sp], #4
	.size	libaroma_filesize_fd, .-libaroma_filesize_fd
	.section	.text.libaroma_file_exists,"ax",%progbits
	.align	2
	.global	libaroma_file_exists
	.thumb
	.thumb_func
	.type	libaroma_file_exists, %function
libaroma_file_exists:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{lr}
	sub	sp, sp, #92
	mov	r1, r0
	mov	r2, sp
	movs	r0, #3
	bl	__xstat(PLT)
	mvns	r0, r0
	lsrs	r0, r0, #31
	add	sp, sp, #92
	@ sp needed
	ldr	pc, [sp], #4
	.size	libaroma_file_exists, .-libaroma_file_exists
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
