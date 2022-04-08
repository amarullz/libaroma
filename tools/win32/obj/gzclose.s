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
	.file	"gzclose.c"
	.section	.text.gzclose,"ax",%progbits
	.align	2
	.global	gzclose
	.thumb
	.thumb_func
	.type	gzclose, %function
gzclose:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	cbz	r0, .L2
	ldr	r2, [r0, #12]
	movw	r3, #7247
	cmp	r2, r3
	beq	.L5
	b	gzclose_w(PLT)
.L5:
	b	gzclose_r(PLT)
.L2:
	mvn	r0, #1
	bx	lr
	.size	gzclose, .-gzclose
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
