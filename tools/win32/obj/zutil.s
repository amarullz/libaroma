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
	.file	"zutil.c"
	.section	.text.zlibVersion,"ax",%progbits
	.align	2
	.global	zlibVersion
	.thumb
	.thumb_func
	.type	zlibVersion, %function
zlibVersion:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r0, .L2
.LPIC0:
	add	r0, pc
	bx	lr
.L3:
	.align	2
.L2:
	.word	.LC0-(.LPIC0+4)
	.size	zlibVersion, .-zlibVersion
	.section	.text.zlibCompileFlags,"ax",%progbits
	.align	2
	.global	zlibCompileFlags
	.thumb
	.thumb_func
	.type	zlibCompileFlags, %function
zlibCompileFlags:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #85
	bx	lr
	.size	zlibCompileFlags, .-zlibCompileFlags
	.section	.text.zError,"ax",%progbits
	.align	2
	.global	zError
	.thumb
	.thumb_func
	.type	zError, %function
zError:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L6
	rsb	r0, r0, #2
	ldr	r2, .L6+4
.LPIC1:
	add	r3, pc
	ldr	r3, [r3, r2]
	ldr	r0, [r3, r0, lsl #2]
	bx	lr
.L7:
	.align	2
.L6:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	z_errmsg(GOT)
	.size	zError, .-zError
	.section	.text.zcalloc,"ax",%progbits
	.align	2
	.global	zcalloc
	.thumb
	.thumb_func
	.type	zcalloc, %function
zcalloc:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mul	r0, r2, r1
	b	malloc(PLT)
	.size	zcalloc, .-zcalloc
	.section	.text.zcfree,"ax",%progbits
	.align	2
	.global	zcfree
	.thumb
	.thumb_func
	.type	zcfree, %function
zcfree:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	mov	r0, r1
	b	free(PLT)
	.size	zcfree, .-zcfree
	.global	z_errmsg
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"1.2.8\000"
	.space	2
.LC1:
	.ascii	"need dictionary\000"
.LC2:
	.ascii	"stream end\000"
	.space	1
.LC3:
	.ascii	"\000"
	.space	3
.LC4:
	.ascii	"file error\000"
	.space	1
.LC5:
	.ascii	"stream error\000"
	.space	3
.LC6:
	.ascii	"data error\000"
	.space	1
.LC7:
	.ascii	"insufficient memory\000"
.LC8:
	.ascii	"buffer error\000"
	.space	3
.LC9:
	.ascii	"incompatible version\000"
	.section	.data.rel.ro.local.z_errmsg,"aw",%progbits
	.align	3
	.type	z_errmsg, %object
	.size	z_errmsg, 40
z_errmsg:
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC3
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
