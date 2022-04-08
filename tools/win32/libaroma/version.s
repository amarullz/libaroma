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
	.file	"version.c"
	.section	.text._libaroma_version,"ax",%progbits
	.align	2
	.global	_libaroma_version
	.thumb
	.thumb_func
	.type	_libaroma_version, %function
_libaroma_version:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r0, .L5
	push	{lr}
	sub	sp, sp, #12
.LPIC0:
	add	r0, pc
	ldrb	r3, [r0]	@ zero_extendqisi2
	cbnz	r3, .L2
	ldr	r2, .L5+4
	movs	r1, #50
	str	r3, [sp]
	str	r3, [sp, #4]
	movs	r3, #1
.LPIC2:
	add	r2, pc
	bl	snprintf(PLT)
.L2:
	ldr	r0, .L5+8
.LPIC3:
	add	r0, pc
	add	sp, sp, #12
	@ sp needed
	ldr	pc, [sp], #4
.L6:
	.align	2
.L5:
	.word	.LANCHOR0-(.LPIC0+4)
	.word	.LC0-(.LPIC2+4)
	.word	.LANCHOR0-(.LPIC3+4)
	.size	_libaroma_version, .-_libaroma_version
	.section	.text._libaroma_version_fullver,"ax",%progbits
	.align	2
	.global	_libaroma_version_fullver
	.thumb
	.thumb_func
	.type	_libaroma_version_fullver, %function
_libaroma_version_fullver:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, lr}
	sub	sp, sp, #20
	ldr	r4, .L10
.LPIC4:
	add	r4, pc
	ldrb	r3, [r4]	@ zero_extendqisi2
	cbnz	r3, .L8
	bl	_libaroma_version(PLT)
	ldr	r2, .L10+4
	mov	r3, r0
	ldr	r5, .L10+8
	mov	r0, r4
	ldr	r4, .L10+12
	movs	r1, #50
.LPIC9:
	add	r2, pc
	str	r2, [sp, #8]
.LPIC7:
	add	r5, pc
	ldr	r2, .L10+16
.LPIC8:
	add	r4, pc
	str	r5, [sp]
	str	r4, [sp, #4]
.LPIC6:
	add	r2, pc
	bl	snprintf(PLT)
.L8:
	ldr	r0, .L10+20
.LPIC10:
	add	r0, pc
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, pc}
.L11:
	.align	2
.L10:
	.word	.LANCHOR1-(.LPIC4+4)
	.word	.LC4-(.LPIC9+4)
	.word	.LC2-(.LPIC7+4)
	.word	.LC3-(.LPIC8+4)
	.word	.LC1-(.LPIC6+4)
	.word	.LANCHOR1-(.LPIC10+4)
	.size	_libaroma_version_fullver, .-_libaroma_version_fullver
	.section	.text._libaroma_version_signature,"ax",%progbits
	.align	2
	.global	_libaroma_version_signature
	.thumb
	.thumb_func
	.type	_libaroma_version_signature, %function
_libaroma_version_signature:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	sub	sp, sp, #8
	ldr	r4, .L15
.LPIC11:
	add	r4, pc
	ldrb	r3, [r4]	@ zero_extendqisi2
	cbnz	r3, .L13
	bl	_libaroma_version_fullver(PLT)
	ldr	r2, .L15+4
	movs	r1, #80
	ldr	r3, .L15+8
	str	r0, [sp]
	mov	r0, r4
.LPIC13:
	add	r2, pc
.LPIC14:
	add	r3, pc
	bl	snprintf(PLT)
.L13:
	ldr	r0, .L15+12
.LPIC15:
	add	r0, pc
	add	sp, sp, #8
	@ sp needed
	pop	{r4, pc}
.L16:
	.align	2
.L15:
	.word	.LANCHOR2-(.LPIC11+4)
	.word	.LC5-(.LPIC13+4)
	.word	.LC6-(.LPIC14+4)
	.word	.LANCHOR2-(.LPIC15+4)
	.size	_libaroma_version_signature, .-_libaroma_version_signature
	.section	.text.libaroma_info,"ax",%progbits
	.align	2
	.global	libaroma_info
	.thumb
	.thumb_func
	.type	libaroma_info, %function
libaroma_info:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	subs	r0, r0, #1
	cmp	r0, #7
	bhi	.L18
	tbb	[pc, r0]
.L20:
	.byte	(.L19-.L20)/2
	.byte	(.L21-.L20)/2
	.byte	(.L28-.L20)/2
	.byte	(.L23-.L20)/2
	.byte	(.L24-.L20)/2
	.byte	(.L25-.L20)/2
	.byte	(.L26-.L20)/2
	.byte	(.L27-.L20)/2
	.align	1
.L28:
	ldr	r0, .L29
.LPIC17:
	add	r0, pc
	bx	lr
.L23:
	ldr	r0, .L29+4
.LPIC16:
	add	r0, pc
	bx	lr
.L24:
	ldr	r0, .L29+8
.LPIC18:
	add	r0, pc
	bx	lr
.L25:
	b	_libaroma_version_fullver(PLT)
.L26:
	ldr	r0, .L29+12
.LPIC20:
	add	r0, pc
	bx	lr
.L27:
	b	_libaroma_version_signature(PLT)
.L19:
	b	_libaroma_version(PLT)
.L21:
	ldr	r0, .L29+16
.LPIC19:
	add	r0, pc
	bx	lr
.L18:
	ldr	r0, .L29+20
.LPIC21:
	add	r0, pc
	bx	lr
.L30:
	.align	2
.L29:
	.word	.LC7-(.LPIC17+4)
	.word	.LC3-(.LPIC16+4)
	.word	.LC4-(.LPIC18+4)
	.word	.LC8-(.LPIC20+4)
	.word	.LC2-(.LPIC19+4)
	.word	.LC6-(.LPIC21+4)
	.size	libaroma_info, .-libaroma_info
	.section	.bss._LIBAROMA_VERSION,"aw",%nobits
	.align	3
.LANCHOR0 = . + 0
	.type	_LIBAROMA_VERSION, %object
	.size	_LIBAROMA_VERSION, 50
_LIBAROMA_VERSION:
	.space	50
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"%i.%i.%i\000"
	.space	3
.LC1:
	.ascii	"%s (%s;%s;%s)\000"
	.space	2
.LC2:
	.ascii	"150204\000"
	.space	1
.LC3:
	.ascii	"linux/android\000"
	.space	2
.LC4:
	.ascii	"Asmarandana\000"
.LC5:
	.ascii	"%s Version %s\000"
	.space	2
.LC6:
	.ascii	"libaroma\000"
	.space	3
.LC7:
	.ascii	"Ahmad Amarullah\000"
.LC8:
	.ascii	"Copyright (c) 2011-2015 Ahmad Amarullah\000"
	.section	.bss._LIBAROMA_VERSION_FULLVER,"aw",%nobits
	.align	3
.LANCHOR1 = . + 0
	.type	_LIBAROMA_VERSION_FULLVER, %object
	.size	_LIBAROMA_VERSION_FULLVER, 50
_LIBAROMA_VERSION_FULLVER:
	.space	50
	.section	.bss._LIBAROMA_VERSION_SIGNATURE,"aw",%nobits
	.align	3
.LANCHOR2 = . + 0
	.type	_LIBAROMA_VERSION_SIGNATURE, %object
	.size	_LIBAROMA_VERSION_SIGNATURE, 80
_LIBAROMA_VERSION_SIGNATURE:
	.space	80
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
