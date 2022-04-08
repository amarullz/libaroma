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
	.file	"Hash.c"
	.section	.text.mzHashSize,"ax",%progbits
	.align	2
	.global	mzHashSize
	.thumb
	.thumb_func
	.type	mzHashSize, %function
mzHashSize:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	lsls	r2, r3, #3
	movw	r3, #52429
	movt	r3, 52428
	umull	r1, r3, r3, r2
	lsrs	r3, r3, #2
	adds	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzHashSize, .-mzHashSize
	.section	.text.roundUpPower2,"ax",%progbits
	.align	2
	.global	roundUpPower2
	.thumb
	.thumb_func
	.type	roundUpPower2, %function
roundUpPower2:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	subs	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #1
	ldr	r2, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #2
	ldr	r2, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #4
	ldr	r2, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #8
	ldr	r2, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	lsrs	r3, r3, #16
	ldr	r2, [r7, #4]
	orrs	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #1
	str	r3, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	roundUpPower2, .-roundUpPower2
	.section	.text.mzHashTableCreate,"ax",%progbits
	.align	2
	.global	mzHashTableCreate
	.thumb
	.thumb_func
	.type	mzHashTableCreate, %function
mzHashTableCreate:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r0, #20
	bl	malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L6
	movs	r3, #0
	b	.L7
.L6:
	ldr	r0, [r7, #4]
	bl	roundUpPower2(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #20
	bl	calloc(PLT)
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L8
	ldr	r0, [r7, #12]
	bl	free(PLT)
	movs	r3, #0
	b	.L7
.L8:
	ldr	r3, [r7, #12]
.L7:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	mzHashTableCreate, .-mzHashTableCreate
	.section	.text.mzHashTableClear,"ax",%progbits
	.align	2
	.global	mzHashTableClear
	.thumb
	.thumb_func
	.type	mzHashTableClear, %function
mzHashTableClear:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L10
.L14:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	movw	r3, #52429
	movt	r3, 52170
	cmp	r2, r3
	bne	.L11
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
	b	.L12
.L11:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L12
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L13
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	ldr	r2, [r7, #12]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L13:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #4]
.L12:
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	adds	r3, r3, #8
	str	r3, [r7, #12]
.L10:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bgt	.L14
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	mzHashTableClear, .-mzHashTableClear
	.section	.text.mzHashTableFree,"ax",%progbits
	.align	2
	.global	mzHashTableFree
	.thumb
	.thumb_func
	.type	mzHashTableFree, %function
mzHashTableFree:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L16
	b	.L15
.L16:
	ldr	r0, [r7, #4]
	bl	mzHashTableClear(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	free(PLT)
	ldr	r0, [r7, #4]
	bl	free(PLT)
.L15:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	mzHashTableFree, .-mzHashTableFree
	.section	.text.resizeHash,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	resizeHash, %function
resizeHash:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	mov	r0, r3
	movs	r1, #20
	bl	calloc(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L19
	movs	r3, #0
	b	.L20
.L19:
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L21
.L25:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L22
	ldr	r2, [r7, #16]
	movw	r3, #52429
	movt	r3, 52170
	cmp	r2, r3
	beq	.L22
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	ands	r3, r3, r2
	str	r3, [r7, #24]
	b	.L23
.L24:
	ldr	r3, [r7, #24]
	adds	r2, r3, #1
	ldr	r3, [r7]
	subs	r3, r3, #1
	ands	r3, r3, r2
	str	r3, [r7, #24]
.L23:
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L24
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #3
	ldr	r2, [r7, #20]
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	str	r2, [r3, #4]
.L22:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L21:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L25
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	free(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	movs	r3, #1
.L20:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	resizeHash, .-resizeHash
	.section	.rodata
	.align	2
.LC0:
	.ascii	"minzip: Dalvik hash resize failure\000"
	.section	.text.mzHashTableLookup,"ax",%progbits
	.align	2
	.global	mzHashTableLookup
	.thumb
	.thumb_func
	.type	mzHashTableLookup, %function
mzHashTableLookup:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r3, #1
	mov	r1, r3
	ldr	r3, [r7, #8]
	ands	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #20]
	b	.L27
.L31:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	movw	r3, #52429
	movt	r3, 52170
	cmp	r2, r3
	beq	.L28
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L28
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	mov	r0, r2
	ldr	r1, [r7, #4]
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L28
	b	.L29
.L28:
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L27
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L30
	b	.L29
.L30:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #28]
.L27:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L31
.L29:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L32
	ldrb	r3, [r7, #40]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L33
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #8]
	str	r2, [r3]
	ldr	r3, [r7, #28]
	ldr	r2, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	add	r3, r3, r2
	lsls	r1, r3, #3
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	cmp	r1, r3
	ble	.L34
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	lsls	r3, r3, #1
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	resizeHash(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L34
	ldr	r3, .L36
.LPIC0:
	add	r3, pc
	mov	r0, r3
	bl	puts(PLT)
	bl	abort(PLT)
.L34:
	ldr	r3, [r7, #4]
	str	r3, [r7, #24]
	b	.L33
.L32:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	str	r3, [r7, #24]
.L33:
	ldr	r3, [r7, #24]
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L37:
	.align	2
.L36:
	.word	.LC0-(.LPIC0+4)
	.size	mzHashTableLookup, .-mzHashTableLookup
	.section	.text.mzHashTableRemove,"ax",%progbits
	.align	2
	.global	mzHashTableRemove
	.thumb
	.thumb_func
	.type	mzHashTableRemove, %function
mzHashTableRemove:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r3, #1
	mov	r1, r3
	ldr	r3, [r7, #8]
	ands	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #16]
	b	.L39
.L44:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L40
	ldr	r2, [r7, #20]
	movw	r3, #52429
	movt	r3, 52170
	str	r3, [r2, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	movs	r3, #1
	b	.L41
.L40:
	ldr	r3, [r7, #20]
	adds	r3, r3, #8
	str	r3, [r7, #20]
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bne	.L39
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L42
	b	.L43
.L42:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #20]
.L39:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L44
.L43:
	movs	r3, #0
.L41:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	mzHashTableRemove, .-mzHashTableRemove
	.section	.text.mzHashForeach,"ax",%progbits
	.align	2
	.global	mzHashForeach
	.thumb
	.thumb_func
	.type	mzHashForeach, %function
mzHashForeach:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L46
.L49:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	movw	r3, #52429
	movt	r3, 52170
	cmp	r2, r3
	beq	.L47
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	mov	r0, r2
	ldr	r1, [r7, #4]
	blx	r3
	str	r0, [r7, #20]
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #20]
	b	.L48
.L47:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L46:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L49
	movs	r3, #0
.L48:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	mzHashForeach, .-mzHashForeach
	.section	.text.countProbes,"ax",%progbits
	.align	2
	.global	countProbes
	.thumb
	.thumb_func
	.type	countProbes, %function
countProbes:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #32
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r3, #1
	mov	r1, r3
	ldr	r3, [r7, #8]
	ands	r3, r3, r1
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #28]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	lsls	r3, r3, #3
	add	r3, r3, r2
	str	r3, [r7, #20]
	b	.L51
.L56:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	movw	r3, #52429
	movt	r3, 52170
	cmp	r2, r3
	beq	.L52
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L52
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	mov	r0, r2
	ldr	r1, [r7, #4]
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L52
	b	.L53
.L52:
	ldr	r3, [r7, #28]
	adds	r3, r3, #8
	str	r3, [r7, #28]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L54
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L55
	b	.L53
.L55:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #28]
.L54:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L51:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L56
.L53:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L57
	mov	r3, #-1
	b	.L58
.L57:
	ldr	r3, [r7, #24]
.L58:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	countProbes, .-countProbes
	.section	.rodata
	.align	2
.LC1:
	.ascii	"minzip: Probe: min=%d max=%d, total=%d in %d (%d), "
	.ascii	"avg=%.3f\012\000"
	.section	.text.mzHashTableProbeCount,"ax",%progbits
	.align	2
	.global	mzHashTableProbeCount
	.thumb
	.thumb_func
	.type	mzHashTableProbeCount, %function
mzHashTableProbeCount:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #72
	add	r7, sp, #16
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #40]
	ldr	r3, [r7, #40]
	str	r3, [r7, #44]
	ldr	r3, [r7, #44]
	str	r3, [r7, #52]
	movs	r3, #0
	movt	r3, 32767
	str	r3, [r7, #48]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	mzHashIterBegin(PLT)
	b	.L60
.L63:
	add	r3, r7, #20
	mov	r0, r3
	bl	mzHashIterData(PLT)
	str	r0, [r7, #36]
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #36]
	blx	r3
	mov	r3, r0
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #36]
	ldr	r3, [r7, #4]
	bl	countProbes(PLT)
	str	r0, [r7, #32]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	bge	.L61
	ldr	r3, [r7, #32]
	str	r3, [r7, #48]
.L61:
	ldr	r2, [r7, #32]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	ble	.L62
	ldr	r3, [r7, #32]
	str	r3, [r7, #44]
.L62:
	ldr	r2, [r7, #40]
	ldr	r3, [r7, #32]
	add	r3, r3, r2
	str	r3, [r7, #40]
	add	r3, r7, #20
	mov	r0, r3
	bl	mzHashIterNext(PLT)
.L60:
	add	r3, r7, #20
	mov	r0, r3
	bl	mzHashIterDone(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L63
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	ldr	r2, [r7, #40]
	fmsr	s13, r2	@ int
	fsitos	s14, s13
	ldr	r2, [r7, #52]
	fmsr	s13, r2	@ int
	fsitos	s15, s13
	fdivs	s15, s14, s15
	fcvtds	d7, s15
	ldr	r2, [r7, #52]
	str	r2, [sp]
	str	r3, [sp, #4]
	fstd	d7, [sp, #8]
	ldr	r3, .L64
.LPIC1:
	add	r3, pc
	mov	r0, r3
	ldr	r1, [r7, #48]
	ldr	r2, [r7, #44]
	ldr	r3, [r7, #40]
	bl	printf(PLT)
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L65:
	.align	2
.L64:
	.word	.LC1-(.LPIC1+4)
	.size	mzHashTableProbeCount, .-mzHashTableProbeCount
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
