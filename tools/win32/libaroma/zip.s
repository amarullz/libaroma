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
	.file	"zip.c"
	.section	.text.libaroma_zip,"ax",%progbits
	.align	2
	.global	libaroma_zip
	.thumb
	.thumb_func
	.type	libaroma_zip, %function
libaroma_zip:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, lr}
	mov	r5, r0
	movs	r0, #32
	bl	malloc(PLT)
	mov	r4, r0
	mov	r0, r5
	mov	r1, r4
	bl	mzOpenZipArchive(PLT)
	cbnz	r0, .L6
	mov	r0, r4
	pop	{r3, r4, r5, pc}
.L6:
	mov	r0, r4
	bl	free(PLT)
	movs	r0, #0
	pop	{r3, r4, r5, pc}
	.size	libaroma_zip, .-libaroma_zip
	.section	.text.libaroma_zip_release,"ax",%progbits
	.align	2
	.global	libaroma_zip_release
	.thumb
	.thumb_func
	.type	libaroma_zip_release, %function
libaroma_zip_release:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	mov	r4, r0
	bl	mzCloseZipArchive(PLT)
	mov	r0, r4
	pop	{r4, lr}
	b	free(PLT)
	.size	libaroma_zip_release, .-libaroma_zip_release
	.section	.text.libaroma_zip_extract,"ax",%progbits
	.align	2
	.global	libaroma_zip_extract
	.thumb
	.thumb_func
	.type	libaroma_zip_extract, %function
libaroma_zip_extract:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	mov	r4, r2
	mov	r6, r0
	bl	mzFindZipEntry(PLT)
	mov	r5, r0
	cbz	r0, .L12
	mov	r0, r4
	bl	unlink(PLT)
	mov	r0, r4
	movw	r1, #493
	bl	creat(PLT)
	subs	r4, r0, #0
	blt	.L12
	mov	r1, r5
	mov	r2, r4
	mov	r0, r6
	bl	mzExtractZipEntryToFile(PLT)
	mov	r5, r0
	mov	r0, r4
	bl	close(PLT)
	mov	r0, r5
	pop	{r4, r5, r6, pc}
.L12:
	movs	r0, #0
	pop	{r4, r5, r6, pc}
	.size	libaroma_zip_extract, .-libaroma_zip_extract
	.section	.text.libaroma_zip_read,"ax",%progbits
	.align	2
	.global	libaroma_zip_read
	.thumb
	.thumb_func
	.type	libaroma_zip_read, %function
libaroma_zip_read:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, lr}
	mov	r10, r1
	mov	r1, r2
	mov	r5, r3
	mov	r9, r0
	bl	mzFindZipEntry(PLT)
	mov	r4, r0
	cbz	r0, .L18
	ldr	r7, [r0, #16]
	clz	r5, r5
	lsrs	r5, r5, #5
	add	r8, r7, r5
	mov	r0, r8
	bl	malloc(PLT)
	mov	r6, r0
	mov	r3, r7
	mov	r0, r9
	mov	r1, r4
	mov	r2, r6
	bl	mzReadZipEntry(PLT)
	mov	r7, r0
	cbz	r0, .L23
	cbz	r5, .L17
	ldr	r3, [r4, #16]
	movs	r2, #0
	strb	r2, [r6, r3]
.L17:
	str	r6, [r10]
	mov	r0, r8
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L18:
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
.L23:
	mov	r0, r6
	bl	free(PLT)
	mov	r0, r7
	pop	{r4, r5, r6, r7, r8, r9, r10, pc}
	.size	libaroma_zip_read, .-libaroma_zip_read
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
