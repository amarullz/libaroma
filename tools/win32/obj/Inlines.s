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
	.file	"Inlines.c"
	.section	.text.get1,"ax",%progbits
	.align	2
	.global	get1
	.thumb
	.thumb_func
	.type	get1, %function
get1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	get1, .-get1
	.section	.text.get2BE,"ax",%progbits
	.align	2
	.global	get2BE
	.thumb
	.thumb_func
	.type	get2BE, %function
get2BE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	get2BE, .-get2BE
	.section	.text.get4BE,"ax",%progbits
	.align	2
	.global	get4BE
	.thumb
	.thumb_func
	.type	get4BE, %function
get4BE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #24
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	get4BE, .-get4BE
	.section	.text.get8BE,"ax",%progbits
	.align	2
	.global	get8BE
	.thumb
	.thumb_func
	.type	get8BE, %function
get8BE:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #36]
	ldr	r2, [r7, #36]
	adds	r3, r2, #1
	str	r3, [r7, #36]
	ldrb	r3, [r2]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r0, r2, #24
	str	r0, [r7, #4]
	movs	r1, #0
	str	r1, [r7]
	ldrd	r2, [r7]
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r0, r2, #16
	str	r0, [r7, #28]
	movs	r1, #0
	str	r1, [r7, #24]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #24]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r1, r2, #8
	str	r1, [r7, #20]
	movs	r2, #0
	str	r2, [r7, #16]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #16]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	movs	r1, r2
	str	r1, [r7, #12]
	movs	r2, #0
	str	r2, [r7, #8]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #8]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsl	fp, r3, #24
	orr	fp, fp, r2, lsr #8
	lsl	r10, r2, #24
	ldrd	r2, [r7, #40]
	orr	r2, r2, r10
	orr	r3, r3, fp
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsl	r9, r3, #16
	orr	r9, r9, r2, lsr #16
	lsl	r8, r2, #16
	ldrd	r2, [r7, #40]
	orr	r2, r2, r8
	orr	r3, r3, r9
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r5, r3, #8
	orr	r5, r5, r2, lsr #24
	lsls	r4, r2, #8
	ldrd	r2, [r7, #40]
	orr	r2, r2, r4
	orr	r3, r3, r5
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	ldrd	r0, [r7, #40]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldrd	r2, [r7, #40]
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	get8BE, .-get8BE
	.section	.text.get2LE,"ax",%progbits
	.align	2
	.global	get2LE
	.thumb
	.thumb_func
	.type	get2LE, %function
get2LE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	get2LE, .-get2LE
	.section	.text.get4LE,"ax",%progbits
	.align	2
	.global	get4LE
	.thumb
	.thumb_func
	.type	get4LE, %function
get4LE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #24
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	get4LE, .-get4LE
	.section	.text.get8LE,"ax",%progbits
	.align	2
	.global	get8LE
	.thumb
	.thumb_func
	.type	get8LE, %function
get8LE:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #36]
	ldr	r2, [r7, #36]
	adds	r3, r2, #1
	str	r3, [r7, #36]
	ldrb	r3, [r2]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	strd	r2, [r7, #40]
	ldr	r2, [r7, #36]
	adds	r3, r2, #1
	str	r3, [r7, #36]
	ldrb	r3, [r2]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r5, r3, #8
	orr	r5, r5, r2, lsr #24
	lsls	r4, r2, #8
	ldrd	r2, [r7, #40]
	orr	r2, r2, r4
	orr	r3, r3, r5
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsl	fp, r3, #16
	orr	fp, fp, r2, lsr #16
	lsl	r10, r2, #16
	ldrd	r2, [r7, #40]
	orr	r2, r2, r10
	orr	r3, r3, fp
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsl	r9, r3, #24
	orr	r9, r9, r2, lsr #8
	lsl	r8, r2, #24
	ldrd	r2, [r7, #40]
	orr	r2, r2, r8
	orr	r3, r3, r9
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	movs	r0, r2
	str	r0, [r7, #28]
	movs	r1, #0
	str	r1, [r7, #24]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #24]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r1, r2, #8
	str	r1, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #16]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r1, r2, #16
	str	r1, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #8]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	adds	r2, r3, #1
	str	r2, [r7, #36]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r1, r2, #24
	str	r1, [r7, #4]
	movs	r3, #0
	str	r3, [r7]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldrd	r2, [r7, #40]
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	get8LE, .-get8LE
	.section	.text.read1,"ax",%progbits
	.align	2
	.global	read1
	.thumb
	.thumb_func
	.type	read1, %function
read1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	read1, .-read1
	.section	.text.read2BE,"ax",%progbits
	.align	2
	.global	read2BE
	.thumb
	.thumb_func
	.type	read2BE, %function
read2BE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldrh	r3, [r7, #14]	@ movhi
	orrs	r3, r3, r2
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	read2BE, .-read2BE
	.section	.text.read4BE,"ax",%progbits
	.align	2
	.global	read4BE
	.thumb
	.thumb_func
	.type	read4BE, %function
read4BE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #24
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	read4BE, .-read4BE
	.section	.text.read8BE,"ax",%progbits
	.align	2
	.global	read8BE
	.thumb
	.thumb_func
	.type	read8BE, %function
read8BE:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r1, [r3]
	adds	r2, r1, #1
	ldr	r3, [r7, #36]
	str	r2, [r3]
	ldrb	r3, [r1]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r0, r2, #24
	str	r0, [r7, #4]
	movs	r1, #0
	str	r1, [r7]
	ldrd	r2, [r7]
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	adds	r1, r2, #1
	ldr	r3, [r7, #36]
	str	r1, [r3]
	ldrb	r3, [r2]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r0, r2, #16
	str	r0, [r7, #28]
	movs	r1, #0
	str	r1, [r7, #24]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #24]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r1, r2, #8
	str	r1, [r7, #20]
	movs	r2, #0
	str	r2, [r7, #16]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #16]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	movs	r1, r2
	str	r1, [r7, #12]
	movs	r2, #0
	str	r2, [r7, #8]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #8]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsl	fp, r3, #24
	orr	fp, fp, r2, lsr #8
	lsl	r10, r2, #24
	ldrd	r2, [r7, #40]
	orr	r2, r2, r10
	orr	r3, r3, fp
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsl	r9, r3, #16
	orr	r9, r9, r2, lsr #16
	lsl	r8, r2, #16
	ldrd	r2, [r7, #40]
	orr	r2, r2, r8
	orr	r3, r3, r9
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r5, r3, #8
	orr	r5, r5, r2, lsr #24
	lsls	r4, r2, #8
	ldrd	r2, [r7, #40]
	orr	r2, r2, r4
	orr	r3, r3, r5
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	ldrd	r0, [r7, #40]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldrd	r2, [r7, #40]
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	read8BE, .-read8BE
	.section	.text.read2LE,"ax",%progbits
	.align	2
	.global	read2LE
	.thumb
	.thumb_func
	.type	read2LE, %function
read2LE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strh	r3, [r7, #14]	@ movhi
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	uxth	r2, r3
	ldrh	r3, [r7, #14]
	orrs	r3, r3, r2
	uxth	r3, r3
	strh	r3, [r7, #14]	@ movhi
	ldrh	r3, [r7, #14]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	read2LE, .-read2LE
	.section	.text.read4LE,"ax",%progbits
	.align	2
	.global	read4LE
	.thumb
	.thumb_func
	.type	read4LE, %function
read4LE:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #8
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #16
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #4]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsls	r3, r3, #24
	ldr	r2, [r7, #12]
	orrs	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	read4LE, .-read4LE
	.section	.text.read8LE,"ax",%progbits
	.align	2
	.global	read8LE
	.thumb
	.thumb_func
	.type	read8LE, %function
read8LE:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #36]
	ldr	r3, [r7, #36]
	ldr	r1, [r3]
	adds	r2, r1, #1
	ldr	r3, [r7, #36]
	str	r2, [r3]
	ldrb	r3, [r1]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r1, [r3]
	adds	r2, r1, #1
	ldr	r3, [r7, #36]
	str	r2, [r3]
	ldrb	r3, [r1]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r5, r3, #8
	orr	r5, r5, r2, lsr #24
	lsls	r4, r2, #8
	ldrd	r2, [r7, #40]
	orr	r2, r2, r4
	orr	r3, r3, r5
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	adds	r1, r2, #1
	ldr	r3, [r7, #36]
	str	r1, [r3]
	ldrb	r3, [r2]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsl	fp, r3, #16
	orr	fp, fp, r2, lsr #16
	lsl	r10, r2, #16
	ldrd	r2, [r7, #40]
	orr	r2, r2, r10
	orr	r3, r3, fp
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsl	r9, r3, #24
	orr	r9, r9, r2, lsr #8
	lsl	r8, r2, #24
	ldrd	r2, [r7, #40]
	orr	r2, r2, r8
	orr	r3, r3, r9
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	movs	r0, r2
	str	r0, [r7, #28]
	movs	r1, #0
	str	r1, [r7, #24]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #24]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r1, r2, #8
	str	r1, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #16]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r1, r2, #16
	str	r1, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7, #8]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	adds	r1, r3, #1
	ldr	r2, [r7, #36]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxtb	r2, r3
	mov	r3, #0
	lsls	r1, r2, #24
	str	r1, [r7, #4]
	movs	r3, #0
	str	r3, [r7]
	ldrd	r2, [r7, #40]
	ldrd	r0, [r7]
	orr	r2, r2, r0
	orr	r3, r3, r1
	strd	r2, [r7, #40]
	ldrd	r2, [r7, #40]
	mov	r0, r2
	mov	r1, r3
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	read8LE, .-read8LE
	.section	.text.skipUtf8String,"ax",%progbits
	.align	2
	.global	skipUtf8String
	.thumb
	.thumb_func
	.type	skipUtf8String, %function
skipUtf8String:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	read4BE(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	skipUtf8String, .-skipUtf8String
	.section	.text.readUtf8String,"ax",%progbits
	.align	2
	.global	readUtf8String
	.thumb
	.thumb_func
	.type	readUtf8String, %function
readUtf8String:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	bl	read4BE(PLT)
	str	r0, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bcc	.L31
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	b	.L32
.L31:
	ldr	r3, [r7, #20]
.L32:
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	ldr	r2, [r7, #16]
	bl	memcpy(PLT)
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	readUtf8String, .-readUtf8String
	.section	.text.readNewUtf8String,"ax",%progbits
	.align	2
	.global	readNewUtf8String
	.thumb
	.thumb_func
	.type	readNewUtf8String, %function
readNewUtf8String:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	read4BE(PLT)
	str	r0, [r7, #12]
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	mov	r0, r3
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #8]
	mov	r1, r3
	ldr	r2, [r7, #12]
	bl	memcpy(PLT)
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #8]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	readNewUtf8String, .-readNewUtf8String
	.section	.text.set1,"ax",%progbits
	.align	2
	.global	set1
	.thumb
	.thumb_func
	.type	set1, %function
set1:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strb	r3, [r7, #3]
	ldr	r3, [r7, #4]
	ldrb	r2, [r7, #3]
	strb	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	set1, .-set1
	.section	.text.set2BE,"ax",%progbits
	.align	2
	.global	set2BE
	.thumb
	.thumb_func
	.type	set2BE, %function
set2BE:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrh	r2, [r7, #2]
	lsrs	r2, r2, #8
	uxth	r2, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldrh	r3, [r7, #2]	@ movhi
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	set2BE, .-set2BE
	.section	.text.set4BE,"ax",%progbits
	.align	2
	.global	set4BE
	.thumb
	.thumb_func
	.type	set4BE, %function
set4BE:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldr	r2, [r7]
	lsrs	r2, r2, #24
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldr	r2, [r7]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldr	r2, [r7]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7]
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	set4BE, .-set4BE
	.section	.text.set8BE,"ax",%progbits
	.align	2
	.global	set8BE
	.thumb
	.thumb_func
	.type	set8BE, %function
set8BE:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #44]
	strd	r2, [r7, #32]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsrs	r0, r3, #24
	str	r0, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsrs	r0, r3, #16
	str	r0, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldrb	r3, [r7, #16]	@ zero_extendqisi2
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsrs	r0, r3, #8
	str	r0, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	movs	r0, r3
	str	r0, [r7]
	movs	r3, #0
	str	r3, [r7, #4]
	ldrb	r3, [r7]	@ zero_extendqisi2
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsr	r10, r2, #24
	orr	r10, r10, r3, lsl #8
	lsr	fp, r3, #24
	uxtb	r3, r10
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsr	r8, r2, #16
	orr	r8, r8, r3, lsl #16
	lsr	r9, r3, #16
	uxtb	r3, r8
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsrs	r4, r2, #8
	orr	r4, r4, r3, lsl #24
	lsrs	r5, r3, #8
	uxtb	r3, r4
	strb	r3, [r1]
	ldrb	r2, [r7, #32]	@ zero_extendqisi2
	ldr	r3, [r7, #44]
	strb	r2, [r3]
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	set8BE, .-set8BE
	.section	.text.set2LE,"ax",%progbits
	.align	2
	.global	set2LE
	.thumb
	.thumb_func
	.type	set2LE, %function
set2LE:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	mov	r3, r1
	strh	r3, [r7, #2]	@ movhi
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldrh	r2, [r7, #2]	@ movhi
	uxtb	r2, r2
	strb	r2, [r3]
	ldrh	r3, [r7, #2]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	set2LE, .-set2LE
	.section	.text.set4LE,"ax",%progbits
	.align	2
	.global	set4LE
	.thumb
	.thumb_func
	.type	set4LE, %function
set4LE:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldr	r2, [r7]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldr	r2, [r7]
	lsrs	r2, r2, #8
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r2, r3, #1
	str	r2, [r7, #4]
	ldr	r2, [r7]
	lsrs	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [r7]
	lsrs	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [r7, #4]
	strb	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	set4LE, .-set4LE
	.section	.text.set8LE,"ax",%progbits
	.align	2
	.global	set8LE
	.thumb
	.thumb_func
	.type	set8LE, %function
set8LE:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r5, r7, r8, r9, r10, fp}
	sub	sp, sp, #52
	add	r7, sp, #0
	str	r0, [r7, #44]
	strd	r2, [r7, #32]
	ldr	r2, [r7, #44]
	adds	r3, r2, #1
	str	r3, [r7, #44]
	ldrb	r3, [r7, #32]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsrs	r4, r2, #8
	orr	r4, r4, r3, lsl #24
	lsrs	r5, r3, #8
	uxtb	r3, r4
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsr	r10, r2, #16
	orr	r10, r10, r3, lsl #16
	lsr	fp, r3, #16
	uxtb	r3, r10
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsr	r8, r2, #24
	orr	r8, r8, r3, lsl #8
	lsr	r9, r3, #24
	uxtb	r3, r8
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	movs	r0, r3
	str	r0, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #28]
	ldrb	r3, [r7, #24]	@ zero_extendqisi2
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsrs	r0, r3, #8
	str	r0, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #20]
	ldrb	r3, [r7, #16]	@ zero_extendqisi2
	strb	r3, [r1]
	ldr	r1, [r7, #44]
	adds	r3, r1, #1
	str	r3, [r7, #44]
	ldrd	r2, [r7, #32]
	lsrs	r0, r3, #16
	str	r0, [r7, #8]
	movs	r3, #0
	str	r3, [r7, #12]
	ldrb	r3, [r7, #8]	@ zero_extendqisi2
	strb	r3, [r1]
	ldrd	r2, [r7, #32]
	lsrs	r0, r3, #24
	str	r0, [r7]
	movs	r1, #0
	str	r1, [r7, #4]
	ldrb	r2, [r7]	@ zero_extendqisi2
	ldr	r3, [r7, #44]
	strb	r2, [r3]
	adds	r7, r7, #52
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, r8, r9, r10, fp}
	bx	lr
	.size	set8LE, .-set8LE
	.section	.text.setUtf8String,"ax",%progbits
	.align	2
	.global	setUtf8String
	.thumb
	.thumb_func
	.type	setUtf8String, %function
setUtf8String:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7]
	bl	strlen(PLT)
	str	r0, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	set4BE(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	ldr	r2, [r7, #12]
	bl	memcpy(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	setUtf8String, .-setUtf8String
	.section	.text.mzHashTableNumEntries,"ax",%progbits
	.align	2
	.global	mzHashTableNumEntries
	.thumb
	.thumb_func
	.type	mzHashTableNumEntries, %function
mzHashTableNumEntries:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzHashTableNumEntries, .-mzHashTableNumEntries
	.section	.text.mzHashTableMemUsage,"ax",%progbits
	.align	2
	.global	mzHashTableMemUsage
	.thumb
	.thumb_func
	.type	mzHashTableMemUsage, %function
mzHashTableMemUsage:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	adds	r3, r3, #20
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzHashTableMemUsage, .-mzHashTableMemUsage
	.section	.text.mzHashIterNext,"ax",%progbits
	.align	2
	.global	mzHashIterNext
	.thumb
	.thumb_func
	.type	mzHashIterNext, %function
mzHashIterNext:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	b	.L49
.L52:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L50
	ldr	r2, [r7, #12]
	movw	r3, #52429
	movt	r3, 52170
	cmp	r2, r3
	beq	.L50
	b	.L51
.L50:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L49:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	blt	.L52
.L51:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #8]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzHashIterNext, .-mzHashIterNext
	.section	.text.mzHashIterBegin,"ax",%progbits
	.align	2
	.global	mzHashIterBegin
	.thumb
	.thumb_func
	.type	mzHashIterBegin, %function
mzHashIterBegin:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	mov	r2, #-1
	str	r2, [r3, #8]
	ldr	r0, [r7]
	bl	mzHashIterNext(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	mzHashIterBegin, .-mzHashIterBegin
	.section	.text.mzHashIterDone,"ax",%progbits
	.align	2
	.global	mzHashIterDone
	.thumb
	.thumb_func
	.type	mzHashIterDone, %function
mzHashIterDone:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	ite	ge
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzHashIterDone, .-mzHashIterDone
	.section	.rodata
	.align	2
.LC0:
	.ascii	"pIter->idx >= 0 && pIter->idx < pIter->pHashTable->"
	.ascii	"tableSize\000"
	.align	2
.LC1:
	.ascii	"../../../libs/minzip/Hash.h\000"
	.section	.text.mzHashIterData,"ax",%progbits
	.align	2
	.global	mzHashIterData
	.thumb
	.thumb_func
	.type	mzHashIterData, %function
mzHashIterData:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	blt	.L57
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L58
.L57:
	ldr	r3, .L60
.LPIC0:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L60+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #175
	ldr	r3, .L60+8
.LPIC2:
	add	r3, pc
	bl	__assert_fail(PLT)
.L58:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L61:
	.align	2
.L60:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	__PRETTY_FUNCTION__.5032-(.LPIC2+4)
	.size	mzHashIterData, .-mzHashIterData
	.section	.text.sysCopyMap,"ax",%progbits
	.align	2
	.global	sysCopyMap
	.thumb
	.thumb_func
	.type	sysCopyMap, %function
sysCopyMap:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r4, r7}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	mov	r4, r2
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r7}
	bx	lr
	.size	sysCopyMap, .-sysCopyMap
	.section	.text.mzZipEntryCount,"ax",%progbits
	.align	2
	.global	mzZipEntryCount
	.thumb
	.thumb_func
	.type	mzZipEntryCount, %function
mzZipEntryCount:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzZipEntryCount, .-mzZipEntryCount
	.section	.text.mzGetZipEntryAt,"ax",%progbits
	.align	2
	.global	mzGetZipEntryAt
	.thumb
	.thumb_func
	.type	mzGetZipEntryAt, %function
mzGetZipEntryAt:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bls	.L66
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #8]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #3
	add	r3, r3, r1
	b	.L67
.L66:
	movs	r3, #0
.L67:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzGetZipEntryAt, .-mzGetZipEntryAt
	.section	.text.mzGetZipEntryIndex,"ax",%progbits
	.align	2
	.global	mzGetZipEntryIndex
	.thumb
	.thumb_func
	.type	mzGetZipEntryIndex, %function
mzGetZipEntryIndex:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	subs	r3, r2, r3
	asrs	r2, r3, #3
	movw	r3, #52429
	movt	r3, 52428
	mul	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzGetZipEntryIndex, .-mzGetZipEntryIndex
	.section	.text.mzGetZipEntryFileName,"ax",%progbits
	.align	2
	.global	mzGetZipEntryFileName
	.thumb
	.thumb_func
	.type	mzGetZipEntryFileName, %function
mzGetZipEntryFileName:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	add	r2, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r0, [r7, #4]
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzGetZipEntryFileName, .-mzGetZipEntryFileName
	.section	.text.mzGetZipEntryOffset,"ax",%progbits
	.align	2
	.global	mzGetZipEntryOffset
	.thumb
	.thumb_func
	.type	mzGetZipEntryOffset, %function
mzGetZipEntryOffset:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzGetZipEntryOffset, .-mzGetZipEntryOffset
	.section	.text.mzGetZipEntryUncompLen,"ax",%progbits
	.align	2
	.global	mzGetZipEntryUncompLen
	.thumb
	.thumb_func
	.type	mzGetZipEntryUncompLen, %function
mzGetZipEntryUncompLen:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzGetZipEntryUncompLen, .-mzGetZipEntryUncompLen
	.section	.text.mzGetZipEntryModTime,"ax",%progbits
	.align	2
	.global	mzGetZipEntryModTime
	.thumb
	.thumb_func
	.type	mzGetZipEntryModTime, %function
mzGetZipEntryModTime:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #24]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzGetZipEntryModTime, .-mzGetZipEntryModTime
	.section	.text.mzGetZipEntryCrc32,"ax",%progbits
	.align	2
	.global	mzGetZipEntryCrc32
	.thumb
	.thumb_func
	.type	mzGetZipEntryCrc32, %function
mzGetZipEntryCrc32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzGetZipEntryCrc32, .-mzGetZipEntryCrc32
	.section	.rodata.__PRETTY_FUNCTION__.5032,"a",%progbits
	.align	2
	.type	__PRETTY_FUNCTION__.5032, %object
	.size	__PRETTY_FUNCTION__.5032, 15
__PRETTY_FUNCTION__.5032:
	.ascii	"mzHashIterData\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
