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
	.file	"ftbbox.c"
	.section	.text.BBox_Move_To,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BBox_Move_To, %function
BBox_Move_To:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bge	.L2
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3, #8]
.L2:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	ble	.L3
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3, #16]
.L3:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bge	.L4
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	str	r2, [r3, #12]
.L4:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	ble	.L5
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	str	r2, [r3, #20]
.L5:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	BBox_Move_To, .-BBox_Move_To
	.section	.text.BBox_Line_To,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BBox_Line_To, %function
BBox_Line_To:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	BBox_Line_To, .-BBox_Line_To
	.section	.text.BBox_Conic_Check,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BBox_Conic_Check, %function
BBox_Conic_Check:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7, #4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	mov	r2, r3
	bl	FT_MulDiv(PLT)
	mov	r3, r0
	ldr	r2, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	ble	.L10
	ldr	r3, [r7]
	ldr	r2, [r7, #8]
	str	r2, [r3]
.L10:
	ldr	r3, [r7, #24]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bge	.L9
	ldr	r3, [r7, #24]
	ldr	r2, [r7, #8]
	str	r2, [r3]
.L9:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.size	BBox_Conic_Check, .-BBox_Conic_Check
	.section	.text.BBox_Conic_To,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BBox_Conic_To, %function
BBox_Conic_To:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #28
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	bge	.L13
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
.L13:
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	ble	.L14
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
.L14:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	bge	.L15
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L15:
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	ble	.L16
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	str	r2, [r3, #20]
.L16:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	blt	.L17
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	ble	.L18
.L17:
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r3, r3, #8
	ldr	r4, [r7, #4]
	adds	r4, r4, #16
	str	r4, [sp]
	bl	BBox_Conic_Check(PLT)
.L18:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	blt	.L19
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	ble	.L20
.L19:
	ldr	r3, [r7, #4]
	ldr	r0, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	ldr	r4, [r7, #4]
	adds	r4, r4, #20
	str	r4, [sp]
	bl	BBox_Conic_Check(PLT)
.L20:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.size	BBox_Conic_To, .-BBox_Conic_To
	.section	.text.cubic_peak,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	cubic_peak, %function
cubic_peak:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #28
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	eor	r2, r3, r3, asr #31
	sub	r2, r2, r3, asr #31
	ldr	r3, [r7, #8]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	orrs	r2, r2, r3
	ldr	r3, [r7]
	cmp	r3, #0
	it	lt
	rsblt	r3, r3, #0
	orrs	r3, r3, r2
	clz	r3, r3
	subs	r3, r3, #4
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ble	.L23
	ldr	r3, [r7, #16]
	cmp	r3, #2
	ble	.L24
	movs	r3, #2
	str	r3, [r7, #16]
.L24:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #16]
	lsl	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #16]
	lsl	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #16]
	lsl	r3, r2, r3
	str	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #16]
	lsl	r3, r2, r3
	str	r3, [r7]
	b	.L26
.L23:
	ldr	r3, [r7, #16]
	negs	r3, r3
	ldr	r2, [r7, #12]
	asr	r3, r2, r3
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	negs	r3, r3
	ldr	r2, [r7, #8]
	asr	r3, r2, r3
	str	r3, [r7, #8]
	ldr	r3, [r7, #16]
	negs	r3, r3
	ldr	r2, [r7, #4]
	asr	r3, r2, r3
	str	r3, [r7, #4]
	ldr	r3, [r7, #16]
	negs	r3, r3
	ldr	r2, [r7]
	asr	r3, r2, r3
	str	r3, [r7]
	b	.L26
.L31:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r1, [r7, #4]
	ldr	r3, [r7]
	add	r3, r3, r1
	cmp	r2, r3
	ble	.L27
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r2, r3, #7
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #3
	str	r3, [r7]
	ldr	r3, [r7, #4]
	adds	r2, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #2
	str	r3, [r7, #4]
	ldr	r3, [r7, #8]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #8]
	b	.L28
.L27:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #4]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	adds	r2, r3, #7
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #3
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r2, r3, #3
	cmp	r3, #0
	ite	lt
	movlt	r3, r2
	movge	r3, r3
	asrs	r3, r3, #2
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	lsrs	r2, r3, #31
	add	r3, r3, r2
	asrs	r3, r3, #1
	str	r3, [r7, #4]
.L28:
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L29
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	blt	.L29
	ldr	r3, [r7, #12]
	str	r3, [r7, #20]
	b	.L30
.L29:
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L26
	ldr	r2, [r7, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L26
	ldr	r3, [r7]
	str	r3, [r7, #20]
	b	.L30
.L26:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bgt	.L31
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bgt	.L31
.L30:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ble	.L32
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	asr	r3, r2, r3
	str	r3, [r7, #20]
	b	.L33
.L32:
	ldr	r3, [r7, #16]
	negs	r3, r3
	ldr	r2, [r7, #20]
	lsl	r3, r2, r3
	str	r3, [r7, #20]
.L33:
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.size	cubic_peak, .-cubic_peak
	.section	.text.BBox_Cubic_Check,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BBox_Cubic_Check, %function
BBox_Cubic_Check:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #16
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	blt	.L36
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bge	.L37
.L36:
	ldr	r3, [r7, #36]
	ldr	r4, [r3]
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	subs	r0, r2, r3
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	subs	r1, r2, r3
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #36]
	ldr	r3, [r3]
	ldr	r5, [r7]
	subs	r3, r5, r3
	bl	cubic_peak(PLT)
	mov	r3, r0
	adds	r2, r4, r3
	ldr	r3, [r7, #36]
	str	r2, [r3]
.L37:
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bgt	.L38
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	ble	.L35
.L38:
	ldr	r3, [r7, #32]
	ldr	r4, [r3]
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	subs	r0, r2, r3
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	subs	r1, r2, r3
	ldr	r3, [r7, #32]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	subs	r2, r2, r3
	ldr	r3, [r7, #32]
	ldr	r5, [r3]
	ldr	r3, [r7]
	subs	r3, r5, r3
	bl	cubic_peak(PLT)
	mov	r3, r0
	subs	r2, r4, r3
	ldr	r3, [r7, #32]
	str	r2, [r3]
.L35:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	BBox_Cubic_Check, .-BBox_Cubic_Check
	.section	.text.BBox_Cubic_To,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	BBox_Cubic_To, %function
BBox_Cubic_To:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	sub	sp, sp, #24
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	blt	.L41
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	bgt	.L41
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	blt	.L41
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	ble	.L42
.L41:
	ldr	r3, [r7]
	ldr	r0, [r3]
	ldr	r3, [r7, #12]
	ldr	r1, [r3]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r4, [r7]
	add	r5, r4, #8
	ldr	r4, [r7]
	adds	r4, r4, #16
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	BBox_Cubic_Check(PLT)
.L42:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	blt	.L43
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bgt	.L43
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cmp	r2, r3
	blt	.L43
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	ble	.L44
.L43:
	ldr	r3, [r7]
	ldr	r0, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r1, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r4, [r7]
	add	r5, r4, #12
	ldr	r4, [r7]
	adds	r4, r4, #20
	str	r5, [sp]
	str	r4, [sp, #4]
	bl	BBox_Cubic_Check(PLT)
.L44:
	ldr	r3, [r7]
	ldr	r2, [r7, #4]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.size	BBox_Cubic_To, .-BBox_Cubic_To
	.section	.data.rel.ro.local.bbox_interface,"aw",%progbits
	.align	2
	.type	bbox_interface, %object
	.size	bbox_interface, 24
bbox_interface:
	.word	BBox_Move_To
	.word	BBox_Line_To
	.word	BBox_Conic_To
	.word	BBox_Cubic_To
	.word	0
	.word	0
	.section	.rodata
	.align	2
.LC0:
	.word	2147483647
	.word	2147483647
	.word	-2147483647
	.word	-2147483647
	.section	.text.FT_Outline_Get_BBox,"ax",%progbits
	.align	2
	.global	FT_Outline_Get_BBox
	.thumb
	.thumb_func
	.type	FT_Outline_Get_BBox, %function
FT_Outline_Get_BBox:
	@ args = 0, pretend = 0, frame = 80
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #84
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, .L67
.LPIC0:
	add	r3, pc
	add	r4, r7, #52
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, .L67+4
.LPIC1:
	add	r3, pc
	add	r4, r7, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	ldr	r3, [r7]
	cmp	r3, #0
	bne	.L47
	movs	r3, #6
	b	.L66
.L47:
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bne	.L49
	movs	r3, #20
	b	.L66
.L49:
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	sxth	r3, r3
	cmp	r3, #0
	bgt	.L51
.L50:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	str	r2, [r3]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	str	r2, [r3, #4]
	movs	r3, #0
	b	.L66
.L51:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #76]
	movs	r3, #0
	strh	r3, [r7, #74]	@ movhi
	b	.L52
.L61:
	ldr	r3, [r7, #76]
	ldr	r2, [r3]
	ldr	r3, [r7, #52]
	cmp	r2, r3
	bge	.L53
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	str	r3, [r7, #52]
.L53:
	ldr	r3, [r7, #76]
	ldr	r2, [r3]
	ldr	r3, [r7, #60]
	cmp	r2, r3
	ble	.L54
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	str	r3, [r7, #60]
.L54:
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #56]
	cmp	r2, r3
	bge	.L55
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	str	r3, [r7, #56]
.L55:
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #64]
	cmp	r2, r3
	ble	.L56
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	str	r3, [r7, #64]
.L56:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldrh	r3, [r7, #74]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	cmp	r3, #1
	bne	.L57
	ldr	r3, [r7, #76]
	ldr	r2, [r3]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bge	.L58
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	str	r3, [r7, #36]
.L58:
	ldr	r3, [r7, #76]
	ldr	r2, [r3]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	ble	.L59
	ldr	r3, [r7, #76]
	ldr	r3, [r3]
	str	r3, [r7, #44]
.L59:
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	bge	.L60
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	str	r3, [r7, #40]
.L60:
	ldr	r3, [r7, #76]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	ble	.L57
	ldr	r3, [r7, #76]
	ldr	r3, [r3, #4]
	str	r3, [r7, #48]
.L57:
	ldr	r3, [r7, #76]
	adds	r3, r3, #8
	str	r3, [r7, #76]
	ldrh	r3, [r7, #74]
	adds	r3, r3, #1
	strh	r3, [r7, #74]	@ movhi
.L52:
	ldrh	r2, [r7, #74]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3, #2]
	sxth	r3, r3
	cmp	r2, r3
	blt	.L61
	ldr	r2, [r7, #52]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	blt	.L62
	ldr	r2, [r7, #60]
	ldr	r3, [r7, #44]
	cmp	r2, r3
	bgt	.L62
	ldr	r2, [r7, #56]
	ldr	r3, [r7, #40]
	cmp	r2, r3
	blt	.L62
	ldr	r2, [r7, #64]
	ldr	r3, [r7, #48]
	cmp	r2, r3
	ble	.L63
.L62:
	add	r4, r7, #20
	add	r3, r7, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r2, .L67+8
.LPIC2:
	add	r2, pc
	mov	r1, r2
	mov	r2, r3
	bl	FT_Outline_Decompose(PLT)
	str	r0, [r7, #68]
	ldr	r3, [r7, #68]
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7, #68]
	b	.L66
.L64:
	ldr	r3, [r7]
	mov	r4, r3
	add	r3, r7, #20
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
	b	.L65
.L63:
	ldr	r3, [r7]
	mov	r4, r3
	add	r3, r7, #36
	ldmia	r3, {r0, r1, r2, r3}
	stmia	r4, {r0, r1, r2, r3}
.L65:
	movs	r3, #0
.L66:
	mov	r0, r3
	adds	r7, r7, #84
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L68:
	.align	2
.L67:
	.word	.LC0-(.LPIC0+4)
	.word	.LC0-(.LPIC1+4)
	.word	bbox_interface-(.LPIC2+4)
	.size	FT_Outline_Get_BBox, .-FT_Outline_Get_BBox
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
