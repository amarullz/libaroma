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
	.file	"SysUtil.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"minzip: mmap(%d, RW, SHARED|ANON) failed: %s\012\000"
	.section	.text.sysCreateAnonShmem,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	sysCreateAnonShmem, %function
sysCreateAnonShmem:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #8
	str	r0, [r7, #4]
	mov	r3, #-1
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	movs	r0, #0
	ldr	r1, [r7, #4]
	movs	r2, #3
	movs	r3, #33
	bl	mmap(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #-1
	bne	.L2
	ldr	r4, [r7, #4]
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	strerror(PLT)
	mov	r3, r0
	ldr	r2, .L4
.LPIC0:
	add	r2, pc
	mov	r0, r2
	mov	r1, r4
	mov	r2, r3
	bl	printf(PLT)
	movs	r3, #0
	b	.L3
.L2:
	ldr	r3, [r7, #12]
.L3:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L5:
	.align	2
.L4:
	.word	.LC0-(.LPIC0+4)
	.size	sysCreateAnonShmem, .-sysCreateAnonShmem
	.section	.rodata
	.align	2
.LC1:
	.ascii	"start_ != ((void *)0)\000"
	.align	2
.LC2:
	.ascii	"../../../libs/minzip/SysUtil.c\000"
	.align	2
.LC3:
	.ascii	"length_ != ((void *)0)\000"
	.align	2
.LC4:
	.ascii	"minzip: could not determine length of file\000"
	.align	2
.LC5:
	.ascii	"minzip: file is empty\000"
	.section	.text.getFileStartAndLength,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	getFileStartAndLength, %function
getFileStartAndLength:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bne	.L7
	ldr	r3, .L13
.LPIC1:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L13+4
.LPIC2:
	add	r3, pc
	mov	r1, r3
	movs	r2, #49
	ldr	r3, .L13+8
.LPIC3:
	add	r3, pc
	bl	__assert_fail(PLT)
.L7:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L8
	ldr	r3, .L13+12
.LPIC4:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L13+16
.LPIC5:
	add	r3, pc
	mov	r1, r3
	movs	r2, #50
	ldr	r3, .L13+20
.LPIC6:
	add	r3, pc
	bl	__assert_fail(PLT)
.L8:
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #1
	bl	lseek(PLT)
	str	r0, [r7, #28]
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #2
	bl	lseek(PLT)
	str	r0, [r7, #24]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #28]
	movs	r2, #0
	bl	lseek(PLT)
	ldr	r3, [r7, #28]
	cmp	r3, #-1
	beq	.L9
	ldr	r3, [r7, #24]
	cmp	r3, #-1
	bne	.L10
.L9:
	ldr	r3, .L13+24
.LPIC7:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r3, #-1
	b	.L11
.L10:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L12
	ldr	r3, .L13+28
.LPIC8:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	mov	r3, #-1
	b	.L11
.L12:
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #28]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	movs	r3, #0
.L11:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L14:
	.align	2
.L13:
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.word	__PRETTY_FUNCTION__.5935-(.LPIC3+4)
	.word	.LC3-(.LPIC4+4)
	.word	.LC2-(.LPIC5+4)
	.word	__PRETTY_FUNCTION__.5935-(.LPIC6+4)
	.word	.LC4-(.LPIC7+4)
	.word	.LC5-(.LPIC8+4)
	.size	getFileStartAndLength, .-getFileStartAndLength
	.section	.rodata
	.align	2
.LC6:
	.ascii	"pMap != ((void *)0)\000"
	.align	2
.LC7:
	.ascii	"minzip: only read %d of %d bytes\012\000"
	.section	.text.sysLoadFileInShmem,"ax",%progbits
	.align	2
	.global	sysLoadFileInShmem
	.thumb
	.thumb_func
	.type	sysLoadFileInShmem, %function
sysLoadFileInShmem:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L16
	ldr	r3, .L22
.LPIC9:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L22+4
.LPIC10:
	add	r3, pc
	mov	r1, r3
	movs	r2, #83
	ldr	r3, .L22+8
.LPIC11:
	add	r3, pc
	bl	__assert_fail(PLT)
.L16:
	add	r2, r7, #12
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	getFileStartAndLength(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L17
	mov	r3, #-1
	b	.L21
.L17:
	ldr	r3, [r7, #8]
	mov	r0, r3
	bl	sysCreateAnonShmem(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L19
	mov	r3, #-1
	b	.L21
.L19:
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #20]
	mov	r2, r3
	bl	read(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	ldr	r2, [r7, #16]
	cmp	r2, r3
	beq	.L20
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #8]
	ldr	r1, .L22+12
.LPIC12:
	add	r1, pc
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	printf(PLT)
	ldr	r0, [r7]
	bl	sysReleaseShmem(PLT)
	mov	r3, #-1
	b	.L21
.L20:
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3, #8]
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	str	r2, [r3, #12]
	movs	r3, #0
.L21:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L23:
	.align	2
.L22:
	.word	.LC6-(.LPIC9+4)
	.word	.LC2-(.LPIC10+4)
	.word	__PRETTY_FUNCTION__.5944-(.LPIC11+4)
	.word	.LC7-(.LPIC12+4)
	.size	sysLoadFileInShmem, .-sysLoadFileInShmem
	.section	.rodata
	.align	2
.LC8:
	.ascii	"minzip: mmap(%d, R, FILE|SHARED, %d, %d) failed: %s"
	.ascii	"\012\000"
	.section	.text.sysMapFileInShmem,"ax",%progbits
	.align	2
	.global	sysMapFileInShmem
	.thumb
	.thumb_func
	.type	sysMapFileInShmem, %function
sysMapFileInShmem:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L25
	ldr	r3, .L30
.LPIC13:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L30+4
.LPIC14:
	add	r3, pc
	mov	r1, r3
	movs	r2, #119
	ldr	r3, .L30+8
.LPIC15:
	add	r3, pc
	bl	__assert_fail(PLT)
.L25:
	add	r2, r7, #16
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	getFileStartAndLength(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L26
	mov	r3, #-1
	b	.L29
.L26:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #16]
	ldr	r1, [r7, #4]
	str	r1, [sp]
	str	r2, [sp, #4]
	movs	r0, #0
	mov	r1, r3
	movs	r2, #1
	movs	r3, #1
	bl	mmap(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L28
	ldr	r3, [r7, #12]
	mov	r5, r3
	ldr	r4, [r7, #16]
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	strerror(PLT)
	mov	r3, r0
	str	r3, [sp]
	ldr	r3, .L30+12
.LPIC16:
	add	r3, pc
	mov	r0, r3
	mov	r1, r5
	ldr	r2, [r7, #4]
	mov	r3, r4
	bl	printf(PLT)
	mov	r3, #-1
	b	.L29
.L28:
	ldr	r3, [r7]
	ldr	r2, [r7, #20]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	str	r2, [r3, #12]
	movs	r3, #0
.L29:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L31:
	.align	2
.L30:
	.word	.LC6-(.LPIC13+4)
	.word	.LC2-(.LPIC14+4)
	.word	__PRETTY_FUNCTION__.5952-(.LPIC15+4)
	.word	.LC8-(.LPIC16+4)
	.size	sysMapFileInShmem, .-sysMapFileInShmem
	.section	.rodata
	.align	2
.LC9:
	.ascii	"minzip: bad segment: st=%d len=%ld flen=%d\012\000"
	.section	.text.sysMapFileSegmentInShmem,"ax",%progbits
	.align	2
	.global	sysMapFileSegmentInShmem
	.thumb
	.thumb_func
	.type	sysMapFileSegmentInShmem, %function
sysMapFileSegmentInShmem:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #52
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L33
	ldr	r3, .L39
.LPIC17:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L39+4
.LPIC18:
	add	r3, pc
	mov	r1, r3
	movs	r2, #152
	ldr	r3, .L39+8
.LPIC19:
	add	r3, pc
	bl	__assert_fail(PLT)
.L33:
	add	r2, r7, #20
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	getFileStartAndLength(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L34
	mov	r3, #-1
	b	.L38
.L34:
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	cmp	r2, r3
	ble	.L36
	ldr	r3, [r7, #16]
	ldr	r2, .L39+12
.LPIC20:
	add	r2, pc
	mov	r0, r2
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	bl	printf(PLT)
	mov	r3, #-1
	b	.L38
.L36:
	ldr	r2, [r7, #8]
	asrs	r3, r2, #31
	lsrs	r3, r3, #20
	add	r2, r2, r3
	ubfx	r2, r2, #0, #12
	subs	r3, r2, r3
	str	r3, [r7, #36]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #36]
	subs	r3, r2, r3
	str	r3, [r7, #32]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #36]
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	str	r3, [sp]
	ldr	r3, [r7, #32]
	str	r3, [sp, #4]
	movs	r0, #0
	ldr	r1, [r7, #28]
	movs	r2, #1
	movs	r3, #1
	bl	mmap(PLT)
	str	r0, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #-1
	bne	.L37
	ldr	r4, [r7, #28]
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	strerror(PLT)
	mov	r3, r0
	str	r3, [sp]
	ldr	r3, .L39+16
.LPIC21:
	add	r3, pc
	mov	r0, r3
	mov	r1, r4
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #32]
	bl	printf(PLT)
	mov	r3, #-1
	b	.L38
.L37:
	ldr	r3, [r7]
	ldr	r2, [r7, #24]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r7, #28]
	str	r2, [r3, #12]
	ldr	r3, [r7, #36]
	ldr	r2, [r7, #24]
	add	r2, r2, r3
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	movs	r3, #0
.L38:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L40:
	.align	2
.L39:
	.word	.LC6-(.LPIC17+4)
	.word	.LC2-(.LPIC18+4)
	.word	__PRETTY_FUNCTION__.5965-(.LPIC19+4)
	.word	.LC9-(.LPIC20+4)
	.word	.LC8-(.LPIC21+4)
	.size	sysMapFileSegmentInShmem, .-sysMapFileSegmentInShmem
	.section	.rodata
	.align	2
.LC10:
	.ascii	"minzip: munmap(%p, %d) failed: %s\012\000"
	.section	.text.sysReleaseShmem,"ax",%progbits
	.align	2
	.global	sysReleaseShmem
	.thumb
	.thumb_func
	.type	sysReleaseShmem, %function
sysReleaseShmem:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L42
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L42
	b	.L41
.L42:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	munmap(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L44
	ldr	r3, [r7, #4]
	ldr	r5, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r4, r3
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	bl	strerror(PLT)
	mov	r3, r0
	ldr	r2, .L45
.LPIC22:
	add	r2, pc
	mov	r0, r2
	mov	r1, r5
	mov	r2, r4
	bl	printf(PLT)
	b	.L41
.L44:
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
.L41:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L46:
	.align	2
.L45:
	.word	.LC10-(.LPIC22+4)
	.size	sysReleaseShmem, .-sysReleaseShmem
	.section	.rodata.__PRETTY_FUNCTION__.5935,"a",%progbits
	.align	2
	.type	__PRETTY_FUNCTION__.5935, %object
	.size	__PRETTY_FUNCTION__.5935, 22
__PRETTY_FUNCTION__.5935:
	.ascii	"getFileStartAndLength\000"
	.section	.rodata.__PRETTY_FUNCTION__.5944,"a",%progbits
	.align	2
	.type	__PRETTY_FUNCTION__.5944, %object
	.size	__PRETTY_FUNCTION__.5944, 19
__PRETTY_FUNCTION__.5944:
	.ascii	"sysLoadFileInShmem\000"
	.section	.rodata.__PRETTY_FUNCTION__.5952,"a",%progbits
	.align	2
	.type	__PRETTY_FUNCTION__.5952, %object
	.size	__PRETTY_FUNCTION__.5952, 18
__PRETTY_FUNCTION__.5952:
	.ascii	"sysMapFileInShmem\000"
	.section	.rodata.__PRETTY_FUNCTION__.5965,"a",%progbits
	.align	2
	.type	__PRETTY_FUNCTION__.5965, %object
	.size	__PRETTY_FUNCTION__.5965, 25
__PRETTY_FUNCTION__.5965:
	.ascii	"sysMapFileSegmentInShmem\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
