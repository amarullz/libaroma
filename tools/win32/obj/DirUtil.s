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
	.file	"DirUtil.c"
	.section	.text.getPathDirStatus,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	getPathDirStatus, %function
getPathDirStatus:
	@ args = 0, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #104
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	stat(PLT)
	str	r0, [r7, #100]
	ldr	r3, [r7, #100]
	cmp	r3, #0
	bne	.L2
	ldr	r3, [r7, #24]
	and	r3, r3, #61440
	cmp	r3, #16384
	bne	.L3
	movs	r3, #1
	b	.L6
.L3:
	bl	__errno_location(PLT)
	mov	r3, r0
	movs	r2, #20
	str	r2, [r3]
	movs	r3, #2
	b	.L6
.L2:
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #2
	beq	.L5
	movs	r3, #2
	b	.L6
.L5:
	movs	r3, #0
.L6:
	mov	r0, r3
	adds	r7, r7, #104
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	getPathDirStatus, .-getPathDirStatus
	.section	.text.dirCreateHierarchy,"ax",%progbits
	.align	2
	.global	dirCreateHierarchy
	.thumb
	.thumb_func
	.type	dirCreateHierarchy, %function
dirCreateHierarchy:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #40
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	strb	r3, [r7, #3]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L8
	bl	__errno_location(PLT)
	mov	r3, r0
	movs	r2, #2
	str	r2, [r3]
	mov	r3, #-1
	b	.L9
.L8:
	ldr	r0, [r7, #12]
	bl	strlen(PLT)
	str	r0, [r7, #28]
	ldr	r3, [r7, #28]
	adds	r3, r3, #2
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L10
	bl	__errno_location(PLT)
	mov	r3, r0
	movs	r2, #12
	str	r2, [r3]
	mov	r3, #-1
	b	.L9
.L10:
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #28]
	bl	memcpy(PLT)
	ldrb	r3, [r7, #3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L11
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	str	r3, [r7, #36]
	b	.L12
.L14:
	ldr	r3, [r7, #36]
	subs	r3, r3, #1
	str	r3, [r7, #36]
.L12:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	beq	.L13
	ldr	r3, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L14
.L13:
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bne	.L15
	bl	__errno_location(PLT)
	mov	r3, r0
	movs	r2, #2
	str	r2, [r3]
	ldr	r0, [r7, #24]
	bl	free(PLT)
	mov	r3, #-1
	b	.L9
.L15:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	movs	r2, #0
	strb	r2, [r3]
	b	.L16
.L11:
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #28]
	add	r3, r3, r2
	movs	r2, #47
	strb	r2, [r3]
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	ldr	r2, [r7, #24]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
.L16:
	ldr	r0, [r7, #24]
	bl	getPathDirStatus(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #1
	bne	.L17
	movs	r3, #0
	b	.L9
.L17:
	ldr	r3, [r7, #20]
	cmp	r3, #2
	bne	.L18
	mov	r3, #-1
	b	.L9
.L18:
	ldr	r3, [r7, #24]
	str	r3, [r7, #32]
	b	.L19
.L30:
	b	.L20
.L22:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L20:
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L21
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	beq	.L22
.L21:
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L23
	b	.L24
.L23:
	b	.L25
.L26:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L25:
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #47
	bne	.L26
	ldr	r3, [r7, #32]
	movs	r2, #0
	strb	r2, [r3]
	ldr	r0, [r7, #24]
	bl	getPathDirStatus(PLT)
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #2
	bne	.L27
	ldr	r0, [r7, #24]
	bl	free(PLT)
	mov	r3, #-1
	b	.L9
.L27:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L28
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #24]
	mov	r1, r3
	bl	mkdir(PLT)
	str	r0, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L29
	ldr	r0, [r7, #24]
	bl	free(PLT)
	mov	r3, #-1
	b	.L9
.L29:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	beq	.L28
	ldr	r0, [r7, #24]
	ldr	r1, [r7, #4]
	bl	utime(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L28
	ldr	r0, [r7, #24]
	bl	free(PLT)
	mov	r3, #-1
	b	.L9
.L28:
	ldr	r3, [r7, #32]
	movs	r2, #47
	strb	r2, [r3]
.L19:
	ldr	r3, [r7, #32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L30
.L24:
	ldr	r0, [r7, #24]
	bl	free(PLT)
	movs	r3, #0
.L9:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	dirCreateHierarchy, .-dirCreateHierarchy
	.section	.rodata
	.align	2
.LC0:
	.ascii	"..\000"
	.align	2
.LC1:
	.ascii	".\000"
	.align	2
.LC2:
	.ascii	"%s/%s\000"
	.section	.text.dirUnlinkHierarchy,"ax",%progbits
	.align	2
	.global	dirUnlinkHierarchy
	.thumb
	.thumb_func
	.type	dirUnlinkHierarchy, %function
dirUnlinkHierarchy:
	@ args = 0, pretend = 0, frame = 4208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #4192
	sub	sp, sp, #24
	add	r7, sp, #8
	add	r3, r7, #16
	subs	r3, r3, #12
	str	r0, [r3]
	movs	r3, #0
	add	r1, r7, #4192
	add	r1, r1, #12
	str	r3, [r1]
	add	r3, r7, #16
	subs	r3, r3, #12
	add	r2, r7, #4096
	add	r2, r2, #8
	ldr	r0, [r3]
	mov	r1, r2
	bl	lstat(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L32
	mov	r3, #-1
	b	.L45
.L32:
	add	r2, r7, #4096
	add	r2, r2, #24
	ldr	r3, [r2]
	and	r3, r3, #61440
	cmp	r3, #16384
	beq	.L34
	add	r3, r7, #16
	subs	r3, r3, #12
	ldr	r0, [r3]
	bl	unlink(PLT)
	mov	r3, r0
	b	.L45
.L34:
	add	r3, r7, #16
	subs	r3, r3, #12
	ldr	r0, [r3]
	bl	opendir(PLT)
	add	r3, r7, #4192
	add	r3, r3, #8
	str	r0, [r3]
	add	r1, r7, #4192
	add	r1, r1, #8
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L35
	mov	r3, #-1
	b	.L45
.L35:
	bl	__errno_location(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [r3]
	b	.L36
.L41:
	add	r2, r7, #4192
	add	r2, r2, #4
	ldr	r3, [r2]
	adds	r3, r3, #11
	mov	r0, r3
	ldr	r3, .L46
.LPIC0:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L36
	add	r1, r7, #4192
	add	r1, r1, #4
	ldr	r3, [r1]
	adds	r3, r3, #11
	mov	r0, r3
	ldr	r3, .L46+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L36
	add	r2, r7, #4192
	add	r2, r2, #4
	ldr	r3, [r2]
	add	r1, r3, #11
	add	r2, r7, #16
	subs	r2, r2, #8
	add	r3, r7, #16
	subs	r3, r3, #12
	str	r1, [sp]
	mov	r0, r2
	mov	r1, #4096
	ldr	r2, .L46+8
.LPIC2:
	add	r2, pc
	ldr	r3, [r3]
	bl	snprintf(PLT)
	add	r3, r7, #16
	subs	r3, r3, #8
	mov	r0, r3
	bl	dirUnlinkHierarchy(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L39
	movs	r3, #1
	add	r1, r7, #4192
	add	r1, r1, #12
	str	r3, [r1]
	b	.L40
.L39:
	bl	__errno_location(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [r3]
.L36:
	add	r2, r7, #4192
	add	r2, r2, #8
	ldr	r0, [r2]
	bl	readdir(PLT)
	add	r3, r7, #4192
	add	r3, r3, #4
	str	r0, [r3]
	add	r1, r7, #4192
	add	r1, r1, #4
	ldr	r3, [r1]
	cmp	r3, #0
	bne	.L41
.L40:
	add	r2, r7, #4192
	add	r2, r2, #12
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L42
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L43
.L42:
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	add	r1, r7, #4192
	str	r3, [r1]
	add	r2, r7, #4192
	add	r2, r2, #8
	ldr	r0, [r2]
	bl	closedir(PLT)
	bl	__errno_location(PLT)
	mov	r3, r0
	add	r1, r7, #4192
	ldr	r2, [r1]
	str	r2, [r3]
	mov	r3, #-1
	b	.L45
.L43:
	add	r2, r7, #4192
	add	r2, r2, #8
	ldr	r0, [r2]
	bl	closedir(PLT)
	mov	r3, r0
	cmp	r3, #0
	bge	.L44
	mov	r3, #-1
	b	.L45
.L44:
	add	r3, r7, #16
	subs	r3, r3, #12
	ldr	r0, [r3]
	bl	rmdir(PLT)
	mov	r3, r0
.L45:
	mov	r0, r3
	add	r7, r7, #4192
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L47:
	.align	2
.L46:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	.LC2-(.LPIC2+4)
	.size	dirUnlinkHierarchy, .-dirUnlinkHierarchy
	.section	.text.dirSetHierarchyPermissions,"ax",%progbits
	.align	2
	.global	dirSetHierarchyPermissions
	.thumb
	.thumb_func
	.type	dirSetHierarchyPermissions, %function
dirSetHierarchyPermissions:
	@ args = 4, pretend = 0, frame = 4216
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #4224
	sub	sp, sp, #4
	add	r7, sp, #8
	add	r4, r7, #24
	subs	r4, r4, #12
	str	r0, [r4]
	add	r0, r7, #24
	subs	r0, r0, #16
	str	r1, [r0]
	add	r1, r7, #24
	subs	r1, r1, #20
	str	r2, [r1]
	add	r2, r7, #24
	subs	r2, r2, #24
	str	r3, [r2]
	add	r3, r7, #24
	subs	r3, r3, #12
	add	r2, r7, #4096
	add	r2, r2, #16
	ldr	r0, [r3]
	mov	r1, r2
	bl	lstat(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L49
	mov	r3, #-1
	b	.L66
.L49:
	add	r1, r7, #4128
	ldr	r3, [r1]
	and	r3, r3, #61440
	cmp	r3, #40960
	bne	.L51
	movs	r3, #0
	b	.L66
.L51:
	add	r3, r7, #24
	subs	r3, r3, #16
	ldr	r1, [r3]
	add	r3, r7, #24
	subs	r3, r3, #20
	ldr	r2, [r3]
	add	r3, r7, #24
	subs	r3, r3, #12
	ldr	r0, [r3]
	bl	chown(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L52
	add	r2, r7, #4128
	ldr	r3, [r2]
	and	r3, r3, #61440
	cmp	r3, #16384
	bne	.L53
	add	r3, r7, #24
	subs	r3, r3, #24
	ldr	r2, [r3]
	b	.L54
.L53:
	add	r3, r7, #4224
	add	r3, r3, #8
	ldr	r2, [r3]
.L54:
	add	r3, r7, #24
	subs	r3, r3, #12
	ldr	r0, [r3]
	mov	r1, r2
	bl	chmod(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L55
.L52:
	mov	r3, #-1
	b	.L66
.L55:
	add	ip, r7, #4128
	ldr	r3, [ip]
	and	r3, r3, #61440
	cmp	r3, #16384
	bne	.L56
	add	r3, r7, #24
	subs	r3, r3, #12
	ldr	r0, [r3]
	bl	opendir(PLT)
	add	r1, r7, #4192
	add	r1, r1, #20
	str	r0, [r1]
	add	r2, r7, #4192
	add	r2, r2, #20
	ldr	r3, [r2]
	cmp	r3, #0
	bne	.L57
	mov	r3, #-1
	b	.L66
.L57:
	bl	__errno_location(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [r3]
	b	.L58
.L64:
	add	ip, r7, #4192
	add	ip, ip, #16
	ldr	r3, [ip]
	adds	r3, r3, #11
	mov	r0, r3
	ldr	r3, .L67
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L58
	add	r1, r7, #4192
	add	r1, r1, #16
	ldr	r3, [r1]
	adds	r3, r3, #11
	mov	r0, r3
	ldr	r3, .L67+4
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	strcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L58
	add	r2, r7, #4192
	add	r2, r2, #16
	ldr	r3, [r2]
	add	r1, r3, #11
	add	r2, r7, #24
	subs	r2, r2, #8
	add	r3, r7, #24
	subs	r3, r3, #12
	str	r1, [sp]
	mov	r0, r2
	mov	r1, #4096
	ldr	r2, .L67+8
.LPIC5:
	add	r2, pc
	ldr	r3, [r3]
	bl	snprintf(PLT)
	add	r0, r7, #24
	subs	r0, r0, #8
	add	r1, r7, #24
	subs	r1, r1, #16
	add	r2, r7, #24
	subs	r2, r2, #20
	add	r3, r7, #24
	subs	r3, r3, #24
	add	ip, r7, #4224
	add	ip, ip, #8
	ldr	r4, [ip]
	str	r4, [sp]
	ldr	r1, [r1]
	ldr	r2, [r2]
	ldr	r3, [r3]
	bl	dirSetHierarchyPermissions(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L61
	bl	__errno_location(PLT)
	mov	r3, r0
	movs	r2, #0
	str	r2, [r3]
	b	.L58
.L61:
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L58
	bl	__errno_location(PLT)
	mov	r3, r0
	mov	r2, #-1
	str	r2, [r3]
.L58:
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L63
	add	r1, r7, #4192
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	readdir(PLT)
	add	r2, r7, #4192
	add	r2, r2, #16
	str	r0, [r2]
	add	ip, r7, #4192
	add	ip, ip, #16
	ldr	r3, [ip]
	cmp	r3, #0
	bne	.L64
.L63:
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L65
	bl	__errno_location(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	add	r1, r7, #4192
	add	r1, r1, #12
	str	r3, [r1]
	add	r2, r7, #4192
	add	r2, r2, #20
	ldr	r0, [r2]
	bl	closedir(PLT)
	bl	__errno_location(PLT)
	mov	r3, r0
	add	ip, r7, #4192
	add	ip, ip, #12
	ldr	r2, [ip]
	str	r2, [r3]
	mov	r3, #-1
	b	.L66
.L65:
	add	r1, r7, #4192
	add	r1, r1, #20
	ldr	r0, [r1]
	bl	closedir(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L56
	mov	r3, #-1
	b	.L66
.L56:
	movs	r3, #0
.L66:
	mov	r0, r3
	add	r7, r7, #4192
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L68:
	.align	2
.L67:
	.word	.LC0-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.word	.LC2-(.LPIC5+4)
	.size	dirSetHierarchyPermissions, .-dirSetHierarchyPermissions
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
