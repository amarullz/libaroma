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
	.file	"sqstdblob.cpp"
	.section	.text._ZnwjPv,"axG",%progbits,_ZnwjPv,comdat
	.align	2
	.weak	_ZnwjPv
	.thumb
	.thumb_func
	.type	_ZnwjPv, %function
_ZnwjPv:
	.fnstart
.LFB10:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZnwjPv, .-_ZnwjPv
	.section	.text._ZdlPvS_,"axG",%progbits,_ZdlPvS_,comdat
	.align	2
	.weak	_ZdlPvS_
	.thumb
	.thumb_func
	.type	_ZdlPvS_, %function
_ZdlPvS_:
	.fnstart
.LFB12:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZdlPvS_, .-_ZdlPvS_
	.section	.text._ZN8SQStreamC2Ev,"axG",%progbits,_ZN8SQStreamC5Ev,comdat
	.align	2
	.weak	_ZN8SQStreamC2Ev
	.thumb
	.thumb_func
	.type	_ZN8SQStreamC2Ev, %function
_ZN8SQStreamC2Ev:
	.fnstart
.LFB16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L7
.LPIC0:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L7+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
.L8:
	.align	2
.L7:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	_ZTV8SQStream(GOT)
	.cantunwind
	.fnend
	.size	_ZN8SQStreamC2Ev, .-_ZN8SQStreamC2Ev
	.weak	_ZN8SQStreamC1Ev
	.thumb_set _ZN8SQStreamC1Ev,_ZN8SQStreamC2Ev
	.section	.text._ZN6SQBlobC2Ei,"axG",%progbits,_ZN6SQBlobC5Ei,comdat
	.align	2
	.weak	_ZN6SQBlobC2Ei
	.thumb
	.thumb_func
	.type	_ZN6SQBlobC2Ei, %function
_ZN6SQBlobC2Ei:
	.fnstart
.LFB18:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #12
	sub	sp, sp, #12
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r4, .L12
.LPIC1:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN8SQStreamC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L12+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	mov	r0, r3
	bl	sq_malloc(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #20]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L13:
	.align	2
.L12:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC1+4)
	.word	_ZTV6SQBlob(GOT)
	.fnend
	.size	_ZN6SQBlobC2Ei, .-_ZN6SQBlobC2Ei
	.weak	_ZN6SQBlobC1Ei
	.thumb_set _ZN6SQBlobC1Ei,_ZN6SQBlobC2Ei
	.section	.text._ZN6SQBlobD2Ev,"axG",%progbits,_ZN6SQBlobD5Ev,comdat
	.align	2
	.weak	_ZN6SQBlobD2Ev
	.thumb
	.thumb_func
	.type	_ZN6SQBlobD2Ev, %function
_ZN6SQBlobD2Ev:
	.fnstart
.LFB21:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L18
.LPIC2:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L18+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	sq_free(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L16
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L16:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L19:
	.align	2
.L18:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC2+4)
	.word	_ZTV6SQBlob(GOT)
	.fnend
	.size	_ZN6SQBlobD2Ev, .-_ZN6SQBlobD2Ev
	.weak	_ZN6SQBlobD1Ev
	.thumb_set _ZN6SQBlobD1Ev,_ZN6SQBlobD2Ev
	.section	.text._ZN6SQBlobD0Ev,"axG",%progbits,_ZN6SQBlobD0Ev,comdat
	.align	2
	.weak	_ZN6SQBlobD0Ev
	.thumb
	.thumb_func
	.type	_ZN6SQBlobD0Ev, %function
_ZN6SQBlobD0Ev:
	.fnstart
.LFB23:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZN6SQBlobD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQBlobD0Ev, .-_ZN6SQBlobD0Ev
	.section	.text._ZN6SQBlob5WriteEPvi,"axG",%progbits,_ZN6SQBlob5WriteEPvi,comdat
	.align	2
	.weak	_ZN6SQBlob5WriteEPvi
	.thumb
	.thumb_func
	.type	_ZN6SQBlob5WriteEPvi, %function
_ZN6SQBlob5WriteEPvi:
	.fnstart
.LFB24:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN6SQBlob10CanAdvanceEi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r3, r2, r3
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN6SQBlob9GrowBufOfEi(PLT)
.L24:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	mov	r0, r2
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQBlob5WriteEPvi, .-_ZN6SQBlob5WriteEPvi
	.section	.text._ZN6SQBlob4ReadEPvi,"axG",%progbits,_ZN6SQBlob4ReadEPvi,comdat
	.align	2
	.weak	_ZN6SQBlob4ReadEPvi
	.thumb
	.thumb_func
	.type	_ZN6SQBlob4ReadEPvi, %function
_ZN6SQBlob4ReadEPvi:
	.fnstart
.LFB25:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	str	r3, [r7, #20]
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #4]
	bl	_ZN6SQBlob10CanAdvanceEi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L27
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	cmp	r3, #0
	ble	.L28
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	subs	r3, r2, r3
	str	r3, [r7, #20]
	b	.L27
.L28:
	movs	r3, #0
	b	.L29
.L27:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	add	r2, r2, r3
	ldr	r3, [r7, #20]
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #20]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
.L29:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQBlob4ReadEPvi, .-_ZN6SQBlob4ReadEPvi
	.section	.text._ZN6SQBlob6ResizeEi,"axG",%progbits,_ZN6SQBlob6ResizeEi,comdat
	.align	2
	.weak	_ZN6SQBlob6ResizeEi
	.thumb
	.thumb_func
	.type	_ZN6SQBlob6ResizeEi, %function
_ZN6SQBlob6ResizeEi:
	.fnstart
.LFB26:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #20]	@ zero_extendqisi2
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L31
	movs	r3, #0
	b	.L32
.L31:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	cmp	r2, r3
	beq	.L33
	ldr	r3, [r7]
	mov	r0, r3
	bl	sq_malloc(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldr	r0, [r7, #12]
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	cmp	r2, r3
	ble	.L34
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
	b	.L35
.L34:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #12]
	mov	r1, r2
	mov	r2, r3
	bl	memcpy(PLT)
.L35:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	mov	r0, r2
	mov	r1, r3
	bl	sq_free(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ble	.L36
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
.L36:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ble	.L37
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
.L37:
.L33:
	movs	r3, #1
.L32:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQBlob6ResizeEi, .-_ZN6SQBlob6ResizeEi
	.section	.text._ZN6SQBlob9GrowBufOfEi,"axG",%progbits,_ZN6SQBlob9GrowBufOfEi,comdat
	.align	2
	.weak	_ZN6SQBlob9GrowBufOfEi
	.thumb
	.thumb_func
	.type	_ZN6SQBlob9GrowBufOfEi, %function
_ZN6SQBlob9GrowBufOfEi:
	.fnstart
.LFB27:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #1
	strb	r3, [r7, #15]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ble	.L39
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	cmp	r2, r3
	ble	.L40
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	add	r3, r3, r2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN6SQBlob6ResizeEi(PLT)
	mov	r3, r0
	strb	r3, [r7, #15]
	b	.L39
.L40:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN6SQBlob6ResizeEi(PLT)
	mov	r3, r0
	strb	r3, [r7, #15]
.L39:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldrb	r3, [r7, #15]	@ zero_extendqisi2
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN6SQBlob9GrowBufOfEi, .-_ZN6SQBlob9GrowBufOfEi
	.section	.text._ZN6SQBlob10CanAdvanceEi,"axG",%progbits,_ZN6SQBlob10CanAdvanceEi,comdat
	.align	2
	.weak	_ZN6SQBlob10CanAdvanceEi
	.thumb
	.thumb_func
	.type	_ZN6SQBlob10CanAdvanceEi, %function
_ZN6SQBlob10CanAdvanceEi:
	.fnstart
.LFB28:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7]
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	ble	.L44
	movs	r3, #0
	b	.L45
.L44:
	movs	r3, #1
.L45:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN6SQBlob10CanAdvanceEi, .-_ZN6SQBlob10CanAdvanceEi
	.section	.text._ZN6SQBlob4SeekEii,"axG",%progbits,_ZN6SQBlob4SeekEii,comdat
	.align	2
	.weak	_ZN6SQBlob4SeekEii
	.thumb
	.thumb_func
	.type	_ZN6SQBlob4SeekEii, %function
_ZN6SQBlob4SeekEii:
	.fnstart
.LFB29:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #1
	beq	.L48
	cmp	r3, #2
	beq	.L49
	cmp	r3, #0
	beq	.L50
	b	.L59
.L49:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	blt	.L51
	ldr	r3, [r7, #8]
	cmp	r3, #0
	bge	.L52
.L51:
	mov	r3, #-1
	b	.L53
.L52:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
	b	.L54
.L50:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bgt	.L55
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L56
.L55:
	mov	r3, #-1
	b	.L53
.L56:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	b	.L54
.L48:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bgt	.L57
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	cmp	r3, #0
	bge	.L58
.L57:
	mov	r3, #-1
	b	.L53
.L58:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	add	r2, r2, r3
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	b	.L54
.L59:
	mov	r3, #-1
	b	.L53
.L54:
	movs	r3, #0
.L53:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN6SQBlob4SeekEii, .-_ZN6SQBlob4SeekEii
	.section	.text._ZN6SQBlob7IsValidEv,"axG",%progbits,_ZN6SQBlob7IsValidEv,comdat
	.align	2
	.weak	_ZN6SQBlob7IsValidEv
	.thumb
	.thumb_func
	.type	_ZN6SQBlob7IsValidEv, %function
_ZN6SQBlob7IsValidEv:
	.fnstart
.LFB30:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN6SQBlob7IsValidEv, .-_ZN6SQBlob7IsValidEv
	.section	.text._ZN6SQBlob3EOSEv,"axG",%progbits,_ZN6SQBlob3EOSEv,comdat
	.align	2
	.weak	_ZN6SQBlob3EOSEv
	.thumb
	.thumb_func
	.type	_ZN6SQBlob3EOSEv, %function
_ZN6SQBlob3EOSEv:
	.fnstart
.LFB31:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN6SQBlob3EOSEv, .-_ZN6SQBlob3EOSEv
	.section	.text._ZN6SQBlob5FlushEv,"axG",%progbits,_ZN6SQBlob5FlushEv,comdat
	.align	2
	.weak	_ZN6SQBlob5FlushEv
	.thumb
	.thumb_func
	.type	_ZN6SQBlob5FlushEv, %function
_ZN6SQBlob5FlushEv:
	.fnstart
.LFB32:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN6SQBlob5FlushEv, .-_ZN6SQBlob5FlushEv
	.section	.text._ZN6SQBlob4TellEv,"axG",%progbits,_ZN6SQBlob4TellEv,comdat
	.align	2
	.weak	_ZN6SQBlob4TellEv
	.thumb
	.thumb_func
	.type	_ZN6SQBlob4TellEv, %function
_ZN6SQBlob4TellEv:
	.fnstart
.LFB33:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN6SQBlob4TellEv, .-_ZN6SQBlob4TellEv
	.section	.text._ZN6SQBlob3LenEv,"axG",%progbits,_ZN6SQBlob3LenEv,comdat
	.align	2
	.weak	_ZN6SQBlob3LenEv
	.thumb
	.thumb_func
	.type	_ZN6SQBlob3LenEv, %function
_ZN6SQBlob3LenEv:
	.fnstart
.LFB34:
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
	.cantunwind
	.fnend
	.size	_ZN6SQBlob3LenEv, .-_ZN6SQBlob3LenEv
	.section	.text._ZN6SQBlob6GetBufEv,"axG",%progbits,_ZN6SQBlob6GetBufEv,comdat
	.align	2
	.weak	_ZN6SQBlob6GetBufEv
	.thumb
	.thumb_func
	.type	_ZN6SQBlob6GetBufEv, %function
_ZN6SQBlob6GetBufEv:
	.fnstart
.LFB35:
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
	.cantunwind
	.fnend
	.size	_ZN6SQBlob6GetBufEv, .-_ZN6SQBlob6GetBufEv
	.section	.rodata
	.align	2
.LC0:
	.ascii	"invalid type tag\000"
	.align	2
.LC1:
	.ascii	"the blob is invalid\000"
	.align	2
.LC2:
	.ascii	"resize failed\000"
	.section	.text._ZL12_blob_resizeP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12_blob_resizeP4SQVM, %function
_ZL12_blob_resizeP4SQVM:
	.fnstart
.LFB36:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	movs	r3, #2
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L73
	ldr	r0, [r7, #4]
	ldr	r3, .L81
.LPIC3:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L80
.L73:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L75
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L76
.L75:
	movs	r3, #1
	b	.L77
.L76:
	movs	r3, #0
.L77:
	cmp	r3, #0
	beq	.L78
	ldr	r0, [r7, #4]
	ldr	r3, .L81+4
.LPIC4:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L80
.L78:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r2, [r7, #12]
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN6SQBlob6ResizeEi(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L79
	ldr	r0, [r7, #4]
	ldr	r3, .L81+8
.LPIC5:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L80
.L79:
	movs	r3, #0
.L80:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L82:
	.align	2
.L81:
	.word	.LC0-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.word	.LC2-(.LPIC5+4)
	.fnend
	.size	_ZL12_blob_resizeP4SQVM, .-_ZL12_blob_resizeP4SQVM
	.section	.text._ZL12__swap_dwordPj,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12__swap_dwordPj, %function
_ZL12__swap_dwordPj:
	.fnstart
.LFB37:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsrs	r2, r3, #24
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #16711680
	lsrs	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #65280
	lsls	r3, r3, #8
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #24
	orrs	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL12__swap_dwordPj, .-_ZL12__swap_dwordPj
	.section	.text._ZL11__swap_wordPt,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11__swap_wordPt, %function
_ZL11__swap_wordPt:
	.fnstart
.LFB38:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	lsrs	r3, r3, #8
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	ldrh	r3, [r3]
	lsls	r3, r3, #8
	uxth	r3, r3
	orrs	r3, r3, r2
	uxth	r3, r3
	uxth	r2, r3
	ldr	r3, [r7, #4]
	strh	r2, [r3]	@ movhi
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZL11__swap_wordPt, .-_ZL11__swap_wordPt
	.section	.text._ZL11_blob_swap4P4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11_blob_swap4P4SQVM, %function
_ZL11_blob_swap4P4SQVM:
	.fnstart
.LFB39:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	movs	r3, #2
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L86
	ldr	r0, [r7, #4]
	ldr	r3, .L95
.LPIC6:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L94
.L86:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L88
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L89
.L88:
	movs	r3, #1
	b	.L90
.L89:
	movs	r3, #0
.L90:
	cmp	r3, #0
	beq	.L91
	ldr	r0, [r7, #4]
	ldr	r3, .L95+4
.LPIC7:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L94
.L91:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
	mov	r4, r0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
	mov	r2, r0
	asrs	r3, r2, #31
	lsrs	r3, r3, #30
	add	r2, r2, r3
	and	r2, r2, #3
	subs	r3, r2, r3
	subs	r3, r4, r3
	asrs	r3, r3, #2
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	mov	r0, r3
	bl	_ZN6SQBlob6GetBufEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L92
.L93:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL12__swap_dwordPj(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L92:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	blt	.L93
	movs	r3, #0
.L94:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L96:
	.align	2
.L95:
	.word	.LC0-(.LPIC6+4)
	.word	.LC1-(.LPIC7+4)
	.fnend
	.size	_ZL11_blob_swap4P4SQVM, .-_ZL11_blob_swap4P4SQVM
	.section	.text._ZL11_blob_swap2P4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL11_blob_swap2P4SQVM, %function
_ZL11_blob_swap2P4SQVM:
	.fnstart
.LFB40:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	movs	r3, #2
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L98
	ldr	r0, [r7, #4]
	ldr	r3, .L107
.LPIC8:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L106
.L98:
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L100
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L101
.L100:
	movs	r3, #1
	b	.L102
.L101:
	movs	r3, #0
.L102:
	cmp	r3, #0
	beq	.L103
	ldr	r0, [r7, #4]
	ldr	r3, .L107+4
.LPIC9:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L106
.L103:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
	mov	r4, r0
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
	mov	r2, r0
	asrs	r3, r2, #31
	lsrs	r3, r3, #31
	add	r2, r2, r3
	and	r2, r2, #1
	subs	r3, r2, r3
	subs	r3, r4, r3
	asrs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #8]
	mov	r0, r3
	bl	_ZN6SQBlob6GetBufEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L104
.L105:
	ldr	r3, [r7, #20]
	lsls	r3, r3, #1
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZL11__swap_wordPt(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L104:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #16]
	cmp	r2, r3
	blt	.L105
	movs	r3, #0
.L106:
	mov	r0, r3
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L108:
	.align	2
.L107:
	.word	.LC0-(.LPIC8+4)
	.word	.LC1-(.LPIC9+4)
	.fnend
	.size	_ZL11_blob_swap2P4SQVM, .-_ZL11_blob_swap2P4SQVM
	.section	.rodata
	.align	2
.LC3:
	.ascii	"index out of range\000"
	.section	.text._ZL10_blob__setP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10_blob__setP4SQVM, %function
_ZL10_blob__setP4SQVM:
	.fnstart
.LFB41:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #20]
	add	r3, r7, #20
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	movs	r3, #2
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L110
	ldr	r0, [r7, #4]
	ldr	r3, .L121
.LPIC10:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L120
.L110:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L112
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L113
.L112:
	movs	r3, #1
	b	.L114
.L113:
	movs	r3, #0
.L114:
	cmp	r3, #0
	beq	.L115
	ldr	r0, [r7, #4]
	ldr	r3, .L121+4
.LPIC11:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L120
.L115:
	add	r3, r7, #16
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #3
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #16]
	cmp	r3, #0
	blt	.L116
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #20]
	mov	r0, r2
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bgt	.L117
.L116:
	movs	r3, #1
	b	.L118
.L117:
	movs	r3, #0
.L118:
	cmp	r3, #0
	beq	.L119
	ldr	r0, [r7, #4]
	ldr	r3, .L121+8
.LPIC12:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L120
.L119:
	ldr	r3, [r7, #20]
	mov	r0, r3
	bl	_ZN6SQBlob6GetBufEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #16]
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r0, [r7, #4]
	movs	r1, #3
	bl	sq_push(PLT)
	movs	r3, #1
.L120:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L122:
	.align	2
.L121:
	.word	.LC0-(.LPIC10+4)
	.word	.LC1-(.LPIC11+4)
	.word	.LC3-(.LPIC12+4)
	.fnend
	.size	_ZL10_blob__setP4SQVM, .-_ZL10_blob__setP4SQVM
	.section	.text._ZL10_blob__getP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL10_blob__getP4SQVM, %function
_ZL10_blob__getP4SQVM:
	.fnstart
.LFB42:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	movs	r3, #2
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L124
	ldr	r0, [r7, #4]
	ldr	r3, .L135
.LPIC13:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L134
.L124:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L126
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L127
.L126:
	movs	r3, #1
	b	.L128
.L127:
	movs	r3, #0
.L128:
	cmp	r3, #0
	beq	.L129
	ldr	r0, [r7, #4]
	ldr	r3, .L135+4
.LPIC14:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L134
.L129:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #8]
	cmp	r3, #0
	blt	.L130
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r2, r0
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bgt	.L131
.L130:
	movs	r3, #1
	b	.L132
.L131:
	movs	r3, #0
.L132:
	cmp	r3, #0
	beq	.L133
	ldr	r0, [r7, #4]
	ldr	r3, .L135+8
.LPIC15:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L134
.L133:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN6SQBlob6GetBufEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
.L134:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L136:
	.align	2
.L135:
	.word	.LC0-(.LPIC13+4)
	.word	.LC1-(.LPIC14+4)
	.word	.LC3-(.LPIC15+4)
	.fnend
	.size	_ZL10_blob__getP4SQVM, .-_ZL10_blob__getP4SQVM
	.section	.rodata
	.align	2
.LC4:
	.ascii	"internal error (_nexti) wrong argument type\000"
	.section	.text._ZL12_blob__nextiP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL12_blob__nextiP4SQVM, %function
_ZL12_blob__nextiP4SQVM:
	.fnstart
.LFB43:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #12]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #1
	mov	r2, r3
	movs	r3, #2
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L138
	ldr	r0, [r7, #4]
	ldr	r3, .L148
.LPIC16:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L147
.L138:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L140
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #24
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L141
.L140:
	movs	r3, #1
	b	.L142
.L141:
	movs	r3, #0
.L142:
	cmp	r3, #0
	beq	.L143
	ldr	r0, [r7, #4]
	ldr	r3, .L148+4
.LPIC17:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L147
.L143:
	ldr	r0, [r7, #4]
	movs	r1, #2
	bl	sq_gettype(PLT)
	mov	r2, r0
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L144
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	sq_pushinteger(PLT)
	movs	r3, #1
	b	.L147
.L144:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L145
	ldr	r3, [r7, #8]
	adds	r4, r3, #1
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r4, r3
	ite	lt
	movlt	r3, #1
	movge	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L146
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
	b	.L147
.L146:
	ldr	r0, [r7, #4]
	bl	sq_pushnull(PLT)
	movs	r3, #1
	b	.L147
.L145:
	ldr	r0, [r7, #4]
	ldr	r3, .L148+8
.LPIC18:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
.L147:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L149:
	.align	2
.L148:
	.word	.LC0-(.LPIC16+4)
	.word	.LC1-(.LPIC17+4)
	.word	.LC4-(.LPIC18+4)
	.fnend
	.size	_ZL12_blob__nextiP4SQVM, .-_ZL12_blob__nextiP4SQVM
	.section	.rodata
	.align	2
.LC5:
	.ascii	"blob\000"
	.section	.text._ZL13_blob__typeofP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_blob__typeofP4SQVM, %function
_ZL13_blob__typeofP4SQVM:
	.fnstart
.LFB44:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	ldr	r3, .L152
.LPIC19:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L153:
	.align	2
.L152:
	.word	.LC5-(.LPIC19+4)
	.fnend
	.size	_ZL13_blob__typeofP4SQVM, .-_ZL13_blob__typeofP4SQVM
	.section	.text._ZL17_blob_releasehookPvi,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17_blob_releasehookPvi, %function
_ZL17_blob_releasehookPvi:
	.fnstart
.LFB45:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #32
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	blx	r3
	ldr	r0, [r7, #12]
	movs	r1, #24
	bl	sq_free(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17_blob_releasehookPvi, .-_ZL17_blob_releasehookPvi
	.section	.rodata
	.align	2
.LC6:
	.ascii	"cannot create blob with negative size\000"
	.align	2
.LC7:
	.ascii	"cannot create blob\000"
	.section	.text._ZL17_blob_constructorP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17_blob_constructorP4SQVM, %function
_ZL17_blob_constructorP4SQVM:
	.fnstart
.LFB46:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
.LEHB0:
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #20]
	cmp	r3, #2
	bne	.L157
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
.L157:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bge	.L158
	ldr	r0, [r7, #4]
	ldr	r3, .L167
.LPIC20:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L166
.L158:
	movs	r0, #24
	bl	sq_malloc(PLT)
.LEHE0:
	mov	r5, r0
	movs	r0, #24
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L160
	ldr	r3, [r7, #12]
	mov	r0, r4
	mov	r1, r3
.LEHB1:
	bl	_ZN6SQBlobC1Ei(PLT)
.LEHE1:
	mov	r3, r4
	b	.L161
.L160:
	mov	r3, r4
.L161:
	str	r3, [r7, #16]
	ldr	r0, [r7, #4]
	movs	r1, #1
	ldr	r2, [r7, #16]
.LEHB2:
	bl	sq_setinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L162
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	adds	r3, r3, #32
	ldr	r3, [r3]
	ldr	r0, [r7, #16]
	blx	r3
	ldr	r0, [r7, #16]
	movs	r1, #24
	bl	sq_free(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L167+4
.LPIC21:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L166
.L162:
	ldr	r0, [r7, #4]
	movs	r1, #1
	ldr	r3, .L167+8
.LPIC22:
	add	r3, pc
	mov	r2, r3
	bl	sq_setreleasehook(PLT)
	movs	r3, #0
	b	.L166
.L165:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
	bl	__cxa_end_cleanup(PLT)
.LEHE2:
.L166:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L168:
	.align	2
.L167:
	.word	.LC6-(.LPIC20+4)
	.word	.LC7-(.LPIC21+4)
	.word	_ZL17_blob_releasehookPvi-(.LPIC22+4)
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA46:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE46-.LLSDACSB46
.LLSDACSB46:
	.uleb128 .LEHB0-.LFB46
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB46
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L165-.LFB46
	.uleb128 0
	.uleb128 .LEHB2-.LFB46
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE46:
	.section	.text._ZL17_blob_constructorP4SQVM
	.fnend
	.size	_ZL17_blob_constructorP4SQVM, .-_ZL17_blob_constructorP4SQVM
	.section	.rodata
	.align	2
.LC8:
	.ascii	"cannot clone blob\000"
	.section	.text._ZL13_blob__clonedP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_blob__clonedP4SQVM, %function
_ZL13_blob__clonedP4SQVM:
	.fnstart
.LFB47:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	movs	r3, #0
	str	r3, [r7, #8]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	movs	r3, #2
	movt	r3, 32768
.LEHB3:
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L170
	mov	r3, #-1
	b	.L178
.L170:
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
	mov	r6, r0
	movs	r0, #24
	bl	sq_malloc(PLT)
.LEHE3:
	mov	r5, r0
	movs	r0, #24
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L172
	mov	r0, r4
	mov	r1, r6
.LEHB4:
	bl	_ZN6SQBlobC1Ei(PLT)
.LEHE4:
	mov	r3, r4
	b	.L173
.L172:
	mov	r3, r4
.L173:
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_ZN6SQBlob6GetBufEv(PLT)
	mov	r5, r0
	ldr	r3, [r7, #8]
	mov	r0, r3
	bl	_ZN6SQBlob6GetBufEv(PLT)
	mov	r4, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
.LEHB5:
	blx	r3
	mov	r3, r0
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	ldr	r2, [r7, #12]
	bl	sq_setinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L174
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #32
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	blx	r3
	ldr	r0, [r7, #12]
	movs	r1, #24
	bl	sq_free(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L179
.LPIC23:
	add	r3, pc
	mov	r1, r3
	bl	sq_throwerror(PLT)
	mov	r3, r0
	b	.L178
.L174:
	ldr	r0, [r7, #4]
	movs	r1, #1
	ldr	r3, .L179+4
.LPIC24:
	add	r3, pc
	mov	r2, r3
	bl	sq_setreleasehook(PLT)
	movs	r3, #0
	b	.L178
.L177:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
	bl	__cxa_end_cleanup(PLT)
.LEHE5:
.L178:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L180:
	.align	2
.L179:
	.word	.LC8-(.LPIC23+4)
	.word	_ZL17_blob_releasehookPvi-(.LPIC24+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA47:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE47-.LLSDACSB47
.LLSDACSB47:
	.uleb128 .LEHB3-.LFB47
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB47
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L177-.LFB47
	.uleb128 0
	.uleb128 .LEHB5-.LFB47
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE47:
	.section	.text._ZL13_blob__clonedP4SQVM
	.fnend
	.size	_ZL13_blob__clonedP4SQVM, .-_ZL13_blob__clonedP4SQVM
	.section	.rodata
	.align	2
.LC9:
	.ascii	"constructor\000"
	.align	2
.LC10:
	.ascii	"xn\000"
	.align	2
.LC11:
	.ascii	"resize\000"
	.align	2
.LC12:
	.ascii	"swap2\000"
	.align	2
.LC13:
	.ascii	"x\000"
	.align	2
.LC14:
	.ascii	"swap4\000"
	.align	2
.LC15:
	.ascii	"_set\000"
	.align	2
.LC16:
	.ascii	"xnn\000"
	.align	2
.LC17:
	.ascii	"_get\000"
	.align	2
.LC18:
	.ascii	"_typeof\000"
	.align	2
.LC19:
	.ascii	"_nexti\000"
	.align	2
.LC20:
	.ascii	"_cloned\000"
	.align	2
.LC21:
	.ascii	"xx\000"
	.section	.data.rel.local._ZL13_blob_methods,"aw",%progbits
	.align	2
	.type	_ZL13_blob_methods, %object
	.size	_ZL13_blob_methods, 160
_ZL13_blob_methods:
	.word	.LC9
	.word	_ZL17_blob_constructorP4SQVM
	.word	-1
	.word	.LC10
	.word	.LC11
	.word	_ZL12_blob_resizeP4SQVM
	.word	2
	.word	.LC10
	.word	.LC12
	.word	_ZL11_blob_swap2P4SQVM
	.word	1
	.word	.LC13
	.word	.LC14
	.word	_ZL11_blob_swap4P4SQVM
	.word	1
	.word	.LC13
	.word	.LC15
	.word	_ZL10_blob__setP4SQVM
	.word	3
	.word	.LC16
	.word	.LC17
	.word	_ZL10_blob__getP4SQVM
	.word	2
	.word	.LC10
	.word	.LC18
	.word	_ZL13_blob__typeofP4SQVM
	.word	1
	.word	.LC13
	.word	.LC19
	.word	_ZL12_blob__nextiP4SQVM
	.word	2
	.word	.LC13
	.word	.LC20
	.word	_ZL13_blob__clonedP4SQVM
	.word	2
	.word	.LC21
	.word	0
	.word	0
	.word	0
	.word	0
	.section	.text._ZL15_g_blob_casti2fP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15_g_blob_casti2fP4SQVM, %function
_ZL15_g_blob_casti2fP4SQVM:
	.fnstart
.LFB48:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	add	r3, r7, #12
	flds	s15, [r3]
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15_g_blob_casti2fP4SQVM, .-_ZL15_g_blob_casti2fP4SQVM
	.section	.text._ZL15_g_blob_castf2iP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL15_g_blob_castf2iP4SQVM, %function
_ZL15_g_blob_castf2iP4SQVM:
	.fnstart
.LFB49:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	add	r3, r7, #12
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL15_g_blob_castf2iP4SQVM, .-_ZL15_g_blob_castf2iP4SQVM
	.section	.text._ZL13_g_blob_swap2P4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_g_blob_swap2P4SQVM, %function
_ZL13_g_blob_swap2P4SQVM:
	.fnstart
.LFB50:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #8]
	strh	r3, [r7, #14]	@ movhi
	ldrsh	r3, [r7, #14]
	lsls	r2, r3, #8
	ldrsh	r3, [r7, #14]
	asrs	r3, r3, #8
	uxtb	r3, r3
	orrs	r3, r3, r2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13_g_blob_swap2P4SQVM, .-_ZL13_g_blob_swap2P4SQVM
	.section	.text._ZL13_g_blob_swap4P4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL13_g_blob_swap4P4SQVM, %function
_ZL13_g_blob_swap4P4SQVM:
	.fnstart
.LFB51:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getinteger(PLT)
	ldr	r3, [r7, #12]
	str	r3, [r7, #8]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZL12__swap_dwordPj(PLT)
	ldr	r3, [r7, #8]
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	sq_pushinteger(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL13_g_blob_swap4P4SQVM, .-_ZL13_g_blob_swap4P4SQVM
	.section	.text._ZL17_g_blob_swapfloatP4SQVM,"ax",%progbits
	.align	2
	.thumb
	.thumb_func
	.type	_ZL17_g_blob_swapfloatP4SQVM, %function
_ZL17_g_blob_swapfloatP4SQVM:
	.fnstart
.LFB52:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	movs	r1, #2
	mov	r2, r3
	bl	sq_getfloat(PLT)
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZL12__swap_dwordPj(PLT)
	flds	s15, [r7, #12]
	ldr	r0, [r7, #4]
	fcpys	s0, s15
	bl	sq_pushfloat(PLT)
	movs	r3, #1
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZL17_g_blob_swapfloatP4SQVM, .-_ZL17_g_blob_swapfloatP4SQVM
	.section	.rodata
	.align	2
.LC22:
	.ascii	"casti2f\000"
	.align	2
.LC23:
	.ascii	".n\000"
	.align	2
.LC24:
	.ascii	"castf2i\000"
	.align	2
.LC25:
	.ascii	"swapfloat\000"
	.section	.data.rel.local._ZL13bloblib_funcs,"aw",%progbits
	.align	2
	.type	_ZL13bloblib_funcs, %object
	.size	_ZL13bloblib_funcs, 96
_ZL13bloblib_funcs:
	.word	.LC22
	.word	_ZL15_g_blob_casti2fP4SQVM
	.word	2
	.word	.LC23
	.word	.LC24
	.word	_ZL15_g_blob_castf2iP4SQVM
	.word	2
	.word	.LC23
	.word	.LC12
	.word	_ZL13_g_blob_swap2P4SQVM
	.word	2
	.word	.LC23
	.word	.LC14
	.word	_ZL13_g_blob_swap4P4SQVM
	.word	2
	.word	.LC23
	.word	.LC25
	.word	_ZL17_g_blob_swapfloatP4SQVM
	.word	2
	.word	.LC23
	.word	0
	.word	0
	.space	8
	.section	.text.sqstd_getblob,"ax",%progbits
	.align	2
	.global	sqstd_getblob
	.thumb
	.thumb_func
	.type	sqstd_getblob, %function
sqstd_getblob:
	.fnstart
.LFB53:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	add	r3, r7, #20
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	mov	r2, r3
	movs	r3, #2
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L192
	mov	r3, #-1
	b	.L194
.L192:
	ldr	r3, [r7, #20]
	mov	r0, r3
	bl	_ZN6SQBlob6GetBufEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	movs	r3, #0
.L194:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_getblob, .-sqstd_getblob
	.section	.text.sqstd_getblobsize,"ax",%progbits
	.align	2
	.global	sqstd_getblobsize
	.thumb
	.thumb_func
	.type	sqstd_getblobsize, %function
sqstd_getblobsize:
	.fnstart
.LFB54:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r3, r7, #12
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, r3
	movs	r3, #2
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L196
	mov	r3, #-1
	b	.L198
.L196:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #12]
	mov	r0, r2
	blx	r3
	mov	r3, r0
.L198:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	sqstd_getblobsize, .-sqstd_getblobsize
	.section	.rodata
	.align	2
.LC26:
	.ascii	"std_blob\000"
	.section	.text.sqstd_createblob,"ax",%progbits
	.align	2
	.global	sqstd_createblob
	.thumb
	.thumb_func
	.type	sqstd_createblob, %function
sqstd_createblob:
	.fnstart
.LFB55:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	bl	sq_gettop(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	bl	sq_pushregistrytable(PLT)
	ldr	r0, [r7, #4]
	ldr	r3, .L205
.LPIC25:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	sq_pushstring(PLT)
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	sq_get(PLT)
	mov	r3, r0
	mvns	r3, r3
	lsrs	r3, r3, #31
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L200
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	sq_remove(PLT)
	ldr	r0, [r7, #4]
	movs	r1, #1
	bl	sq_push(PLT)
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	sq_pushinteger(PLT)
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r0, [r7, #4]
	movs	r1, #2
	movs	r2, #1
	movs	r3, #0
	bl	sq_call(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L201
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, #-1
	mov	r2, r3
	movs	r3, #2
	movt	r3, 32768
	bl	sq_getinstanceup(PLT)
	mov	r3, r0
	cmp	r3, #0
	blt	.L201
	movs	r3, #1
	b	.L202
.L201:
	movs	r3, #0
.L202:
	cmp	r3, #0
	beq	.L203
	ldr	r0, [r7, #4]
	mvn	r1, #1
	bl	sq_remove(PLT)
	ldr	r3, [r7, #8]
	mov	r0, r3
	bl	_ZN6SQBlob6GetBufEv(PLT)
	mov	r3, r0
	b	.L204
.L203:
.L200:
	ldr	r0, [r7, #4]
	ldr	r1, [r7, #12]
	bl	sq_settop(PLT)
	movs	r3, #0
.L204:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L206:
	.align	2
.L205:
	.word	.LC26-(.LPIC25+4)
	.fnend
	.size	sqstd_createblob, .-sqstd_createblob
	.section	.text.sqstd_register_bloblib,"ax",%progbits
	.align	2
	.global	sqstd_register_bloblib
	.thumb
	.thumb_func
	.type	sqstd_register_bloblib, %function
sqstd_register_bloblib:
	.fnstart
.LFB56:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	ldr	r3, .L209
.LPIC26:
	add	r3, pc
	str	r3, [sp]
	ldr	r3, .L209+4
.LPIC27:
	add	r3, pc
	str	r3, [sp, #4]
	ldr	r0, [r7, #4]
	ldr	r3, .L209+8
.LPIC28:
	add	r3, pc
	mov	r1, r3
	movs	r2, #2
	movt	r2, 32768
	ldr	r3, .L209+12
.LPIC29:
	add	r3, pc
	bl	_Z14declare_streamP4SQVMPKcPvS2_P16tagSQRegFunctionS5_(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L210:
	.align	2
.L209:
	.word	_ZL13_blob_methods-(.LPIC26+4)
	.word	_ZL13bloblib_funcs-(.LPIC27+4)
	.word	.LC5-(.LPIC28+4)
	.word	.LC26-(.LPIC29+4)
	.fnend
	.size	sqstd_register_bloblib, .-sqstd_register_bloblib
	.weak	_ZTV6SQBlob
	.section	.data.rel.ro._ZTV6SQBlob,"awG",%progbits,_ZTV6SQBlob,comdat
	.align	3
	.type	_ZTV6SQBlob, %object
	.size	_ZTV6SQBlob, 48
_ZTV6SQBlob:
	.word	0
	.word	_ZTI6SQBlob
	.word	_ZN6SQBlob4ReadEPvi
	.word	_ZN6SQBlob5WriteEPvi
	.word	_ZN6SQBlob5FlushEv
	.word	_ZN6SQBlob4TellEv
	.word	_ZN6SQBlob3LenEv
	.word	_ZN6SQBlob4SeekEii
	.word	_ZN6SQBlob7IsValidEv
	.word	_ZN6SQBlob3EOSEv
	.word	_ZN6SQBlobD1Ev
	.word	_ZN6SQBlobD0Ev
	.weak	_ZTV8SQStream
	.section	.data.rel.ro._ZTV8SQStream,"awG",%progbits,_ZTV8SQStream,comdat
	.align	3
	.type	_ZTV8SQStream, %object
	.size	_ZTV8SQStream, 40
_ZTV8SQStream:
	.word	0
	.word	_ZTI8SQStream
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.weak	_ZTS6SQBlob
	.section	.rodata._ZTS6SQBlob,"aG",%progbits,_ZTS6SQBlob,comdat
	.align	2
	.type	_ZTS6SQBlob, %object
	.size	_ZTS6SQBlob, 8
_ZTS6SQBlob:
	.ascii	"6SQBlob\000"
	.weak	_ZTI6SQBlob
	.section	.data.rel.ro._ZTI6SQBlob,"awG",%progbits,_ZTI6SQBlob,comdat
	.align	2
	.type	_ZTI6SQBlob, %object
	.size	_ZTI6SQBlob, 12
_ZTI6SQBlob:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS6SQBlob
	.word	_ZTI8SQStream
	.weak	_ZTS8SQStream
	.section	.rodata._ZTS8SQStream,"aG",%progbits,_ZTS8SQStream,comdat
	.align	2
	.type	_ZTS8SQStream, %object
	.size	_ZTS8SQStream, 10
_ZTS8SQStream:
	.ascii	"8SQStream\000"
	.weak	_ZTI8SQStream
	.section	.data.rel.ro._ZTI8SQStream,"awG",%progbits,_ZTI8SQStream,comdat
	.align	2
	.type	_ZTI8SQStream, %object
	.size	_ZTI8SQStream, 8
_ZTI8SQStream:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS8SQStream
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
