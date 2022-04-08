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
	.file	"sqfuncstate.cpp"
	.section	.text._ZnwjPv,"axG",%progbits,_ZnwjPv,comdat
	.align	2
	.weak	_ZnwjPv
	.thumb
	.thumb_func
	.type	_ZnwjPv, %function
_ZnwjPv:
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
.LFB14:
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
	.section	.text._ZN11tagSQObjectC2Ev,"axG",%progbits,_ZN11tagSQObjectC5Ev,comdat
	.align	2
	.weak	_ZN11tagSQObjectC2Ev
	.thumb
	.thumb_func
	.type	_ZN11tagSQObjectC2Ev, %function
_ZN11tagSQObjectC2Ev:
	.fnstart
.LFB39:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN11tagSQObjectC2Ev, .-_ZN11tagSQObjectC2Ev
	.weak	_ZN11tagSQObjectC1Ev
	.thumb_set _ZN11tagSQObjectC1Ev,_ZN11tagSQObjectC2Ev
	.section	.text._ZN11SQObjectPtrC2Ev,"axG",%progbits,_ZN11SQObjectPtrC5Ev,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2Ev, %function
_ZN11SQObjectPtrC2Ev:
	.fnstart
.LFB41:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r2, [r7, #4]
	movs	r3, #1
	movt	r3, 256
	str	r3, [r2]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2Ev, .-_ZN11SQObjectPtrC2Ev
	.weak	_ZN11SQObjectPtrC1Ev
	.thumb_set _ZN11SQObjectPtrC1Ev,_ZN11SQObjectPtrC2Ev
	.section	.text._ZN11SQObjectPtrC2ERKS_,"axG",%progbits,_ZN11SQObjectPtrC5ERKS_,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2ERKS_
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2ERKS_, %function
_ZN11SQObjectPtrC2ERKS_:
	.fnstart
.LFB44:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L11
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L11:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2ERKS_, .-_ZN11SQObjectPtrC2ERKS_
	.weak	_ZN11SQObjectPtrC1ERKS_
	.thumb_set _ZN11SQObjectPtrC1ERKS_,_ZN11SQObjectPtrC2ERKS_
	.section	.text._ZN11SQObjectPtrC2ERK11tagSQObject,"axG",%progbits,_ZN11SQObjectPtrC5ERK11tagSQObject,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2ERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2ERK11tagSQObject, %function
_ZN11SQObjectPtrC2ERK11tagSQObject:
	.fnstart
.LFB47:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L14
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L14:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2ERK11tagSQObject, .-_ZN11SQObjectPtrC2ERK11tagSQObject
	.weak	_ZN11SQObjectPtrC1ERK11tagSQObject
	.thumb_set _ZN11SQObjectPtrC1ERK11tagSQObject,_ZN11SQObjectPtrC2ERK11tagSQObject
	.section	.rodata
	.align	2
.LC0:
	.ascii	"_unVal.pTable\000"
	.align	2
.LC1:
	.ascii	"../../../libs/squirrel/squirrel/sqobject.h\000"
	.section	.text._ZN11SQObjectPtrC2EP7SQTable,"axG",%progbits,_ZN11SQObjectPtrC5EP7SQTable,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP7SQTable
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP7SQTable, %function
_ZN11SQObjectPtrC2EP7SQTable:
	.fnstart
.LFB50:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r2, [r7, #4]
	movs	r3, #32
	movt	r3, 2560
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L17
	ldr	r3, .L20
.LPIC0:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L20+4
.LPIC1:
	add	r3, pc
	mov	r1, r3
	movs	r2, #226
	ldr	r3, .L20+8
.LPIC2:
	add	r3, pc
	bl	__assert_fail(PLT)
.L17:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L21:
	.align	2
.L20:
	.word	.LC0-(.LPIC0+4)
	.word	.LC1-(.LPIC1+4)
	.word	_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__-(.LPIC2+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP7SQTable, .-_ZN11SQObjectPtrC2EP7SQTable
	.weak	_ZN11SQObjectPtrC1EP7SQTable
	.thumb_set _ZN11SQObjectPtrC1EP7SQTable,_ZN11SQObjectPtrC2EP7SQTable
	.section	.text._ZN11SQObjectPtraSEP7SQTable,"axG",%progbits,_ZN11SQObjectPtraSEP7SQTable,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEP7SQTable
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEP7SQTable, %function
_ZN11SQObjectPtraSEP7SQTable:
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
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r3, #32
	movt	r3, 2560
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L23
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L23
	movs	r3, #1
	b	.L24
.L23:
	movs	r3, #0
.L24:
	cmp	r3, #0
	beq	.L25
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L25:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP7SQTable, .-_ZN11SQObjectPtraSEP7SQTable
	.section	.text._ZN11SQObjectPtrC2EP8SQString,"axG",%progbits,_ZN11SQObjectPtrC5EP8SQString,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP8SQString
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP8SQString, %function
_ZN11SQObjectPtrC2EP8SQString:
	.fnstart
.LFB82:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r2, [r7, #4]
	movs	r3, #16
	movt	r3, 2048
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L28
	ldr	r3, .L31
.LPIC3:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L31+4
.LPIC4:
	add	r3, pc
	mov	r1, r3
	movs	r2, #234
	ldr	r3, .L31+8
.LPIC5:
	add	r3, pc
	bl	__assert_fail(PLT)
.L28:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L32:
	.align	2
.L31:
	.word	.LC0-(.LPIC3+4)
	.word	.LC1-(.LPIC4+4)
	.word	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__-(.LPIC5+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP8SQString, .-_ZN11SQObjectPtrC2EP8SQString
	.weak	_ZN11SQObjectPtrC1EP8SQString
	.thumb_set _ZN11SQObjectPtrC1EP8SQString,_ZN11SQObjectPtrC2EP8SQString
	.section	.text._ZN11SQObjectPtrC2Ei,"axG",%progbits,_ZN11SQObjectPtrC5Ei,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2Ei
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2Ei, %function
_ZN11SQObjectPtrC2Ei:
	.fnstart
.LFB102:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r2, [r7, #4]
	movs	r3, #2
	movt	r3, 1280
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2Ei, .-_ZN11SQObjectPtrC2Ei
	.weak	_ZN11SQObjectPtrC1Ei
	.thumb_set _ZN11SQObjectPtrC1Ei,_ZN11SQObjectPtrC2Ei
	.section	.text._ZN11SQObjectPtraSEi,"axG",%progbits,_ZN11SQObjectPtraSEi,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEi
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEi, %function
_ZN11SQObjectPtraSEi:
	.fnstart
.LFB104:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L37
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L37
	movs	r3, #1
	b	.L38
.L37:
	movs	r3, #0
.L38:
	cmp	r3, #0
	beq	.L39
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L39:
	ldr	r2, [r7, #4]
	movs	r3, #2
	movt	r3, 1280
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEi, .-_ZN11SQObjectPtraSEi
	.section	.text._ZN11SQObjectPtrC2Ef,"axG",%progbits,_ZN11SQObjectPtrC5Ef,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2Ef
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2Ef, %function
_ZN11SQObjectPtrC2Ef:
	.fnstart
.LFB106:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	fsts	s0, [r7]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11tagSQObjectC2Ev(PLT)
	ldr	r2, [r7, #4]
	movs	r3, #4
	movt	r3, 1280
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]	@ float
	str	r2, [r3, #4]	@ float
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2Ef, .-_ZN11SQObjectPtrC2Ef
	.weak	_ZN11SQObjectPtrC1Ef
	.thumb_set _ZN11SQObjectPtrC1Ef,_ZN11SQObjectPtrC2Ef
	.section	.text._ZN11SQObjectPtrD2Ev,"axG",%progbits,_ZN11SQObjectPtrD5Ev,comdat
	.align	2
	.weak	_ZN11SQObjectPtrD2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrD2Ev, %function
_ZN11SQObjectPtrD2Ev:
	.fnstart
.LFB118:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L45
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L45
	movs	r3, #1
	b	.L46
.L45:
	movs	r3, #0
.L46:
	cmp	r3, #0
	beq	.L47
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L47:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtrD2Ev, .-_ZN11SQObjectPtrD2Ev
	.weak	_ZN11SQObjectPtrD1Ev
	.thumb_set _ZN11SQObjectPtrD1Ev,_ZN11SQObjectPtrD2Ev
	.section	.text._ZN11SQObjectPtraSERKS_,"axG",%progbits,_ZN11SQObjectPtraSERKS_,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSERKS_
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSERKS_, %function
_ZN11SQObjectPtraSERKS_:
	.fnstart
.LFB120:
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
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L50
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L50:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L51
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L51
	movs	r3, #1
	b	.L52
.L51:
	movs	r3, #0
.L52:
	cmp	r3, #0
	beq	.L53
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L53:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSERKS_, .-_ZN11SQObjectPtraSERKS_
	.section	.text._ZN11SQObjectPtraSERK11tagSQObject,"axG",%progbits,_ZN11SQObjectPtraSERK11tagSQObject,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSERK11tagSQObject, %function
_ZN11SQObjectPtraSERK11tagSQObject:
	.fnstart
.LFB121:
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
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	ldr	r2, [r2, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L56
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L56:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L57
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L57
	movs	r3, #1
	b	.L58
.L57:
	movs	r3, #0
.L58:
	cmp	r3, #0
	beq	.L59
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L59:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSERK11tagSQObject, .-_ZN11SQObjectPtraSERK11tagSQObject
	.section	.text._ZN13SQInstructionC2E8SQOpcodeiiii,"axG",%progbits,_ZN13SQInstructionC5E8SQOpcodeiiii,comdat
	.align	2
	.weak	_ZN13SQInstructionC2E8SQOpcodeiiii
	.thumb
	.thumb_func
	.type	_ZN13SQInstructionC2E8SQOpcodeiiii, %function
_ZN13SQInstructionC2E8SQOpcodeiiii:
	.fnstart
.LFB139:
	@ args = 8, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #4]
	ldr	r3, [r7, #4]
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #5]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #24]
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #6]
	ldr	r3, [r7, #28]
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #7]
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN13SQInstructionC2E8SQOpcodeiiii, .-_ZN13SQInstructionC2E8SQOpcodeiiii
	.weak	_ZN13SQInstructionC1E8SQOpcodeiiii
	.thumb_set _ZN13SQInstructionC1E8SQOpcodeiiii,_ZN13SQInstructionC2E8SQOpcodeiiii
	.section	.text._ZN10SQOuterVarC2Ev,"axG",%progbits,_ZN10SQOuterVarC5Ev,comdat
	.align	2
	.weak	_ZN10SQOuterVarC2Ev
	.thumb
	.thumb_func
	.type	_ZN10SQOuterVarC2Ev, %function
_ZN10SQOuterVarC2Ev:
	.fnstart
.LFB142:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN10SQOuterVarC2Ev, .-_ZN10SQOuterVarC2Ev
	.weak	_ZN10SQOuterVarC1Ev
	.thumb_set _ZN10SQOuterVarC1Ev,_ZN10SQOuterVarC2Ev
	.section	.text._ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType,"axG",%progbits,_ZN10SQOuterVarC5ERK11SQObjectPtrS2_11SQOuterType,comdat
	.align	2
	.weak	_ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType
	.thumb
	.thumb_func
	.type	_ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType, %function
_ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType:
	.fnstart
.LFB145:
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
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #8]
.LEHB0:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE0:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	b	.L72
.L71:
	ldr	r3, [r7, #12]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB1:
	bl	__cxa_end_cleanup(PLT)
.LEHE1:
.L72:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA145:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE145-.LLSDACSB145
.LLSDACSB145:
	.uleb128 .LEHB0-.LFB145
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L71-.LFB145
	.uleb128 0
	.uleb128 .LEHB1-.LFB145
	.uleb128 .LEHE1-.LEHB1
	.uleb128 0
	.uleb128 0
.LLSDACSE145:
	.section	.text._ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType,"axG",%progbits,_ZN10SQOuterVarC5ERK11SQObjectPtrS2_11SQOuterType,comdat
	.fnend
	.size	_ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType, .-_ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType
	.weak	_ZN10SQOuterVarC1ERK11SQObjectPtrS2_11SQOuterType
	.thumb_set _ZN10SQOuterVarC1ERK11SQObjectPtrS2_11SQOuterType,_ZN10SQOuterVarC2ERK11SQObjectPtrS2_11SQOuterType
	.section	.text._ZN10SQOuterVarC2ERKS_,"axG",%progbits,_ZN10SQOuterVarC5ERKS_,comdat
	.align	2
	.weak	_ZN10SQOuterVarC2ERKS_
	.thumb
	.thumb_func
	.type	_ZN10SQOuterVarC2ERKS_, %function
_ZN10SQOuterVarC2ERKS_:
	.fnstart
.LFB148:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	ldr	r3, [r7]
	adds	r3, r3, #12
	mov	r0, r2
	mov	r1, r3
.LEHB2:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldr	r3, [r7]
	adds	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE2:
	ldr	r3, [r7, #4]
	b	.L78
.L77:
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB3:
	bl	__cxa_end_cleanup(PLT)
.LEHE3:
.L78:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA148:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE148-.LLSDACSB148
.LLSDACSB148:
	.uleb128 .LEHB2-.LFB148
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L77-.LFB148
	.uleb128 0
	.uleb128 .LEHB3-.LFB148
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
.LLSDACSE148:
	.section	.text._ZN10SQOuterVarC2ERKS_,"axG",%progbits,_ZN10SQOuterVarC5ERKS_,comdat
	.fnend
	.size	_ZN10SQOuterVarC2ERKS_, .-_ZN10SQOuterVarC2ERKS_
	.weak	_ZN10SQOuterVarC1ERKS_
	.thumb_set _ZN10SQOuterVarC1ERKS_,_ZN10SQOuterVarC2ERKS_
	.section	.text._ZN14SQLocalVarInfoC2Ev,"axG",%progbits,_ZN14SQLocalVarInfoC5Ev,comdat
	.align	2
	.weak	_ZN14SQLocalVarInfoC2Ev
	.thumb
	.thumb_func
	.type	_ZN14SQLocalVarInfoC2Ev, %function
_ZN14SQLocalVarInfoC2Ev:
	.fnstart
.LFB151:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	sub	sp, sp, #8
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.cantunwind
	.fnend
	.size	_ZN14SQLocalVarInfoC2Ev, .-_ZN14SQLocalVarInfoC2Ev
	.weak	_ZN14SQLocalVarInfoC1Ev
	.thumb_set _ZN14SQLocalVarInfoC1Ev,_ZN14SQLocalVarInfoC2Ev
	.section	.text._ZN14SQLocalVarInfoC2ERKS_,"axG",%progbits,_ZN14SQLocalVarInfoC5ERKS_,comdat
	.align	2
	.weak	_ZN14SQLocalVarInfoC2ERKS_
	.thumb
	.thumb_func
	.type	_ZN14SQLocalVarInfoC2ERKS_, %function
_ZN14SQLocalVarInfoC2ERKS_:
	.fnstart
.LFB154:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
.LEHB4:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
.LEHE4:
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	b	.L87
.L86:
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB5:
	bl	__cxa_end_cleanup(PLT)
.LEHE5:
.L87:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA154:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE154-.LLSDACSB154
.LLSDACSB154:
	.uleb128 .LEHB4-.LFB154
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L86-.LFB154
	.uleb128 0
	.uleb128 .LEHB5-.LFB154
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE154:
	.section	.text._ZN14SQLocalVarInfoC2ERKS_,"axG",%progbits,_ZN14SQLocalVarInfoC5ERKS_,comdat
	.fnend
	.size	_ZN14SQLocalVarInfoC2ERKS_, .-_ZN14SQLocalVarInfoC2ERKS_
	.weak	_ZN14SQLocalVarInfoC1ERKS_
	.thumb_set _ZN14SQLocalVarInfoC1ERKS_,_ZN14SQLocalVarInfoC2ERKS_
	.section	.text._ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii,"axG",%progbits,_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii,comdat
	.align	2
	.weak	_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii
	.thumb
	.thumb_func
	.type	_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii, %function
_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii:
	.fnstart
.LFB156:
	@ args = 20, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #4]
	lsls	r2, r3, #3
	ldr	r3, [r7, #8]
	subs	r3, r3, #1
	lsls	r3, r3, #3
	add	r3, r3, r2
	add	r2, r3, #120
	ldr	r3, [r7, #56]
	lsls	r1, r3, #3
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r3, r3, r1
	adds	r1, r2, r3
	ldr	r3, [r7, #64]
	lsls	r0, r3, #3
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	add	r1, r1, r3
	ldr	r3, [r7, #72]
	lsls	r0, r3, #2
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r0
	add	r3, r3, r1
	mov	r0, r3
.LEHB6:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE6:
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r5, [r7, #16]
	movs	r0, #120
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L90
	mov	r0, r4
	ldr	r1, [r7, #12]
.LEHB7:
	bl	_ZN15SQFunctionProtoC1EP13SQSharedState(PLT)
.LEHE7:
.L90:
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #8]
	str	r2, [r3, #108]
	ldr	r3, [r7, #8]
	adds	r3, r3, #14
	lsls	r3, r3, #3
	ldr	r2, [r7, #16]
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #72]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	str	r2, [r3, #68]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #80]
	ldr	r3, [r7, #16]
	ldr	r2, [r7]
	str	r2, [r3, #76]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #80]
	ldr	r3, [r7]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #88]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #56]
	str	r2, [r3, #84]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #96]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #60]
	str	r2, [r3, #92]
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #60]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r2, r1, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #64]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #64]
	str	r2, [r3, #60]
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #64]
	lsls	r3, r3, #3
	add	r2, r2, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #56]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #68]
	str	r2, [r3, #52]
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #56]
	ldr	r2, [r7, #68]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r2, r1, r3
	ldr	r3, [r7, #16]
	str	r2, [r3, #104]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #72]
	str	r2, [r3, #100]
	movs	r3, #0
	str	r3, [r7, #36]
	b	.L91
.L94:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L93
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L93:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L91:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #36]
	cmp	r2, r3
	bgt	.L94
	movs	r3, #0
	str	r3, [r7, #32]
	b	.L95
.L98:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #32]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L97
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L97:
	ldr	r3, [r7, #32]
	adds	r3, r3, #1
	str	r3, [r7, #32]
.L95:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #76]
	ldr	r3, [r7, #32]
	cmp	r2, r3
	bgt	.L98
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L99
.L102:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L101
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L101:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L99:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #84]
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L102
	movs	r3, #0
	str	r3, [r7, #24]
	b	.L103
.L106:
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #24]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	movs	r0, #20
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L105
	mov	r0, r3
	bl	_ZN10SQOuterVarC1Ev(PLT)
.L105:
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L103:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #92]
	ldr	r3, [r7, #24]
	cmp	r2, r3
	bgt	.L106
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L107
.L110:
	ldr	r3, [r7, #16]
	ldr	r1, [r3, #56]
	ldr	r2, [r7, #20]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	movs	r0, #20
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L109
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoC1Ev(PLT)
.L109:
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L107:
	ldr	r3, [r7, #16]
	ldr	r2, [r3, #52]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bgt	.L110
	ldr	r3, [r7, #16]
	b	.L114
.L113:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB8:
	bl	__cxa_end_cleanup(PLT)
.LEHE8:
.L114:
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA156:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE156-.LLSDACSB156
.LLSDACSB156:
	.uleb128 .LEHB6-.LFB156
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB156
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L113-.LFB156
	.uleb128 0
	.uleb128 .LEHB8-.LFB156
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE156:
	.section	.text._ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii,"axG",%progbits,_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii,comdat
	.fnend
	.size	_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii, .-_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii
	.section	.text._ZN10SQOuterVarD2Ev,"axG",%progbits,_ZN10SQOuterVarD5Ev,comdat
	.align	2
	.weak	_ZN10SQOuterVarD2Ev
	.thumb
	.thumb_func
	.type	_ZN10SQOuterVarD2Ev, %function
_ZN10SQOuterVarD2Ev:
	.fnstart
.LFB159:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #12
	mov	r0, r3
.LEHB9:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE9:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
.LEHB10:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE10:
	ldr	r3, [r7, #4]
	b	.L120
.L119:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB11:
	bl	__cxa_end_cleanup(PLT)
.LEHE11:
.L120:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA159:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE159-.LLSDACSB159
.LLSDACSB159:
	.uleb128 .LEHB9-.LFB159
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L119-.LFB159
	.uleb128 0
	.uleb128 .LEHB10-.LFB159
	.uleb128 .LEHE10-.LEHB10
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB11-.LFB159
	.uleb128 .LEHE11-.LEHB11
	.uleb128 0
	.uleb128 0
.LLSDACSE159:
	.section	.text._ZN10SQOuterVarD2Ev,"axG",%progbits,_ZN10SQOuterVarD5Ev,comdat
	.fnend
	.size	_ZN10SQOuterVarD2Ev, .-_ZN10SQOuterVarD2Ev
	.weak	_ZN10SQOuterVarD1Ev
	.thumb_set _ZN10SQOuterVarD1Ev,_ZN10SQOuterVarD2Ev
	.section	.text._ZN14SQLocalVarInfoD2Ev,"axG",%progbits,_ZN14SQLocalVarInfoD5Ev,comdat
	.align	2
	.weak	_ZN14SQLocalVarInfoD2Ev
	.thumb
	.thumb_func
	.type	_ZN14SQLocalVarInfoD2Ev, %function
_ZN14SQLocalVarInfoD2Ev:
	.fnstart
.LFB162:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN14SQLocalVarInfoD2Ev, .-_ZN14SQLocalVarInfoD2Ev
	.weak	_ZN14SQLocalVarInfoD1Ev
	.thumb_set _ZN14SQLocalVarInfoD1Ev,_ZN14SQLocalVarInfoD2Ev
	.section	.text._ZN7SQTable6CreateEP13SQSharedStatei,"axG",%progbits,_ZN7SQTable6CreateEP13SQSharedStatei,comdat
	.align	2
	.weak	_ZN7SQTable6CreateEP13SQSharedStatei
	.thumb
	.thumb_func
	.type	_ZN7SQTable6CreateEP13SQSharedStatei, %function
_ZN7SQTable6CreateEP13SQSharedStatei:
	.fnstart
.LFB170:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r0, #44
.LEHB12:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE12:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #44
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L126
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB13:
	bl	_ZN7SQTableC1EP13SQSharedStatei(PLT)
.LEHE13:
.L126:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L130
.L129:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB14:
	bl	__cxa_end_cleanup(PLT)
.LEHE14:
.L130:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA170:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE170-.LLSDACSB170
.LLSDACSB170:
	.uleb128 .LEHB12-.LFB170
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB13-.LFB170
	.uleb128 .LEHE13-.LEHB13
	.uleb128 .L129-.LFB170
	.uleb128 0
	.uleb128 .LEHB14-.LFB170
	.uleb128 .LEHE14-.LEHB14
	.uleb128 0
	.uleb128 0
.LLSDACSE170:
	.section	.text._ZN7SQTable6CreateEP13SQSharedStatei,"axG",%progbits,_ZN7SQTable6CreateEP13SQSharedStatei,comdat
	.fnend
	.size	_ZN7SQTable6CreateEP13SQSharedStatei, .-_ZN7SQTable6CreateEP13SQSharedStatei
	.section	.text._ZN11SQFuncState14AddInstructionE8SQOpcodeiiii,"axG",%progbits,_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii,comdat
	.align	2
	.weak	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii, %function
_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii:
	.fnstart
.LFB190:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #16
	ldr	r2, [r7, #32]
	str	r2, [sp]
	ldr	r2, [r7, #36]
	str	r2, [sp, #4]
	mov	r0, r3
	ldr	r1, [r7, #8]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	bl	_ZN13SQInstructionC1E8SQOpcodeiiii(PLT)
	add	r3, r7, #16
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN11SQFuncState14AddInstructionER13SQInstruction(PLT)
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii, .-_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii
	.section	.text._ZN11SQFuncState13GetCurrentPosEv,"axG",%progbits,_ZN11SQFuncState13GetCurrentPosEv,comdat
	.align	2
	.weak	_ZN11SQFuncState13GetCurrentPosEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState13GetCurrentPosEv, %function
_ZN11SQFuncState13GetCurrentPosEv:
	.fnstart
.LFB196:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQInstructionE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState13GetCurrentPosEv, .-_ZN11SQFuncState13GetCurrentPosEv
	.section	.rodata
	.align	2
.LC2:
	.ascii	"\"%s\"\000"
	.align	2
.LC3:
	.ascii	"{%f}\000"
	.align	2
.LC4:
	.ascii	"{%d}\000"
	.align	2
.LC5:
	.ascii	"true\000"
	.align	2
.LC6:
	.ascii	"false\000"
	.align	2
.LC7:
	.ascii	"%s\000"
	.align	2
.LC8:
	.ascii	"(%s %p)\000"
	.section	.text._Z11DumpLiteralR11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_Z11DumpLiteralR11SQObjectPtr
	.thumb
	.thumb_func
	.type	_Z11DumpLiteralR11SQObjectPtr, %function
_Z11DumpLiteralR11SQObjectPtr:
	.fnstart
.LFB197:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L136
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	bgt	.L137
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L138
	b	.L135
.L137:
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L139
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bne	.L135
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r3, r3, #28
	ldr	r2, .L144
.LPIC6:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	bl	printf(PLT)
	b	.L134
.L139:
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	fcvtds	d7, s15
	ldr	r3, .L144+4
.LPIC7:
	add	r3, pc
	mov	r0, r3
	fmrrd	r2, r3, d7
	bl	printf(PLT)
	b	.L134
.L136:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, .L144+8
.LPIC8:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	bl	printf(PLT)
	b	.L134
.L138:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L142
	ldr	r3, .L144+12
.LPIC9:
	add	r3, pc
	b	.L143
.L142:
	ldr	r3, .L144+16
.LPIC10:
	add	r3, pc
.L143:
	ldr	r2, .L144+20
.LPIC11:
	add	r2, pc
	mov	r0, r2
	mov	r1, r3
	bl	printf(PLT)
	b	.L134
.L135:
	ldr	r0, [r7, #4]
	bl	_Z11GetTypeNameRK11SQObjectPtr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r1, .L144+24
.LPIC12:
	add	r1, pc
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	printf(PLT)
	nop
.L134:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L145:
	.align	2
.L144:
	.word	.LC2-(.LPIC6+4)
	.word	.LC3-(.LPIC7+4)
	.word	.LC4-(.LPIC8+4)
	.word	.LC5-(.LPIC9+4)
	.word	.LC6-(.LPIC10+4)
	.word	.LC7-(.LPIC11+4)
	.word	.LC8-(.LPIC12+4)
	.fnend
	.size	_Z11DumpLiteralR11SQObjectPtr, .-_Z11DumpLiteralR11SQObjectPtr
	.section	.text._ZN11SQFuncStateC2EP13SQSharedStatePS_PFvPvPKcES3_,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncStateC2EP13SQSharedStatePS_PFvPvPKcES3_
	.thumb
	.thumb_func
	.type	_ZN11SQFuncStateC2EP13SQSharedStatePS_PFvPvPKcES3_, %function
_ZN11SQFuncStateC2EP13SQSharedStatePS_PFvPvPKcES3_:
	.fnstart
.LFB199:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
.LEHB15:
	bl	_ZN8sqvectorI14SQLocalVarInfoEC1Ev(PLT)
.LEHE15:
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	mov	r0, r3
.LEHB16:
	bl	_ZN8sqvectorIiEC1Ev(PLT)
.LEHE16:
	ldr	r3, [r7, #12]
	adds	r3, r3, #36
	mov	r0, r3
.LEHB17:
	bl	_ZN8sqvectorIiEC1Ev(PLT)
.LEHE17:
	ldr	r3, [r7, #12]
	adds	r3, r3, #48
	mov	r0, r3
.LEHB18:
	bl	_ZN8sqvectorIiEC1Ev(PLT)
.LEHE18:
	ldr	r3, [r7, #12]
	adds	r3, r3, #60
	mov	r0, r3
.LEHB19:
	bl	_ZN8sqvectorI11SQObjectPtrEC1Ev(PLT)
.LEHE19:
	ldr	r3, [r7, #12]
	adds	r3, r3, #72
	mov	r0, r3
.LEHB20:
	bl	_ZN8sqvectorI11SQObjectPtrEC1Ev(PLT)
.LEHE20:
	ldr	r3, [r7, #12]
	adds	r3, r3, #84
	mov	r0, r3
.LEHB21:
	bl	_ZN8sqvectorI10SQOuterVarEC1Ev(PLT)
.LEHE21:
	ldr	r3, [r7, #12]
	adds	r3, r3, #96
	mov	r0, r3
.LEHB22:
	bl	_ZN8sqvectorI13SQInstructionEC1Ev(PLT)
.LEHE22:
	ldr	r3, [r7, #12]
	adds	r3, r3, #108
	mov	r0, r3
.LEHB23:
	bl	_ZN8sqvectorI14SQLocalVarInfoEC1Ev(PLT)
.LEHE23:
	ldr	r3, [r7, #12]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #128
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #136
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #144
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #156
	mov	r0, r3
.LEHB24:
	bl	_ZN8sqvectorI10SQLineInfoEC1Ev(PLT)
.LEHE24:
	ldr	r3, [r7, #12]
	adds	r3, r3, #172
	mov	r0, r3
.LEHB25:
	bl	_ZN8sqvectorIiEC1Ev(PLT)
.LEHE25:
	ldr	r3, [r7, #12]
	adds	r3, r3, #184
	mov	r0, r3
.LEHB26:
	bl	_ZN8sqvectorIiEC1Ev(PLT)
.LEHE26:
	ldr	r3, [r7, #12]
	adds	r3, r3, #196
	mov	r0, r3
.LEHB27:
	bl	_ZN8sqvectorIiEC1Ev(PLT)
.LEHE27:
	ldr	r3, [r7, #12]
	adds	r3, r3, #208
	mov	r0, r3
.LEHB28:
	bl	_ZN8sqvectorIiEC1Ev(PLT)
.LEHE28:
	ldr	r3, [r7, #12]
	adds	r3, r3, #240
	mov	r0, r3
.LEHB29:
	bl	_ZN8sqvectorIP11SQFuncStateEC1Ev(PLT)
.LEHE29:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #152]
	ldr	r3, [r7, #12]
	add	r4, r3, #120
	ldr	r0, [r7, #8]
	movs	r1, #0
.LEHB30:
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	ldr	r3, [r7, #12]
	add	r4, r3, #128
	ldr	r0, [r7, #8]
	movs	r1, #0
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
.LEHE30:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #236]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #220]
	ldr	r3, [r7, #12]
	movs	r2, #1
	strb	r2, [r3, #232]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #168]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #28]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #224]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #32]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	str	r2, [r3, #252]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #32]
	str	r2, [r3, #256]
	ldr	r3, [r7, #12]
	movs	r2, #0
	strb	r2, [r3, #33]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #228]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #260]
	ldr	r3, [r7, #12]
	b	.L179
.L178:
	ldr	r3, [r7, #12]
	adds	r3, r3, #240
	mov	r0, r3
	bl	_ZN8sqvectorIP11SQFuncStateED1Ev(PLT)
	b	.L150
.L177:
.L150:
	ldr	r3, [r7, #12]
	adds	r3, r3, #208
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L151
.L176:
.L151:
	ldr	r3, [r7, #12]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L152
.L175:
.L152:
	ldr	r3, [r7, #12]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L153
.L174:
.L153:
	ldr	r3, [r7, #12]
	adds	r3, r3, #172
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L154
.L173:
.L154:
	ldr	r3, [r7, #12]
	adds	r3, r3, #156
	mov	r0, r3
	bl	_ZN8sqvectorI10SQLineInfoED1Ev(PLT)
	b	.L155
.L172:
.L155:
	ldr	r3, [r7, #12]
	adds	r3, r3, #144
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #136
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #128
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #108
	mov	r0, r3
	bl	_ZN8sqvectorI14SQLocalVarInfoED1Ev(PLT)
	b	.L156
.L171:
.L156:
	ldr	r3, [r7, #12]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZN8sqvectorI13SQInstructionED1Ev(PLT)
	b	.L157
.L170:
.L157:
	ldr	r3, [r7, #12]
	adds	r3, r3, #84
	mov	r0, r3
	bl	_ZN8sqvectorI10SQOuterVarED1Ev(PLT)
	b	.L158
.L169:
.L158:
	ldr	r3, [r7, #12]
	adds	r3, r3, #72
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L159
.L168:
.L159:
	ldr	r3, [r7, #12]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L160
.L167:
.L160:
	ldr	r3, [r7, #12]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L161
.L166:
.L161:
	ldr	r3, [r7, #12]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L162
.L165:
.L162:
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L163
.L164:
.L163:
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN8sqvectorI14SQLocalVarInfoED1Ev(PLT)
.LEHB31:
	bl	__cxa_end_cleanup(PLT)
.LEHE31:
.L179:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA199:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE199-.LLSDACSB199
.LLSDACSB199:
	.uleb128 .LEHB15-.LFB199
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB16-.LFB199
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L164-.LFB199
	.uleb128 0
	.uleb128 .LEHB17-.LFB199
	.uleb128 .LEHE17-.LEHB17
	.uleb128 .L165-.LFB199
	.uleb128 0
	.uleb128 .LEHB18-.LFB199
	.uleb128 .LEHE18-.LEHB18
	.uleb128 .L166-.LFB199
	.uleb128 0
	.uleb128 .LEHB19-.LFB199
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L167-.LFB199
	.uleb128 0
	.uleb128 .LEHB20-.LFB199
	.uleb128 .LEHE20-.LEHB20
	.uleb128 .L168-.LFB199
	.uleb128 0
	.uleb128 .LEHB21-.LFB199
	.uleb128 .LEHE21-.LEHB21
	.uleb128 .L169-.LFB199
	.uleb128 0
	.uleb128 .LEHB22-.LFB199
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L170-.LFB199
	.uleb128 0
	.uleb128 .LEHB23-.LFB199
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L171-.LFB199
	.uleb128 0
	.uleb128 .LEHB24-.LFB199
	.uleb128 .LEHE24-.LEHB24
	.uleb128 .L172-.LFB199
	.uleb128 0
	.uleb128 .LEHB25-.LFB199
	.uleb128 .LEHE25-.LEHB25
	.uleb128 .L173-.LFB199
	.uleb128 0
	.uleb128 .LEHB26-.LFB199
	.uleb128 .LEHE26-.LEHB26
	.uleb128 .L174-.LFB199
	.uleb128 0
	.uleb128 .LEHB27-.LFB199
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L175-.LFB199
	.uleb128 0
	.uleb128 .LEHB28-.LFB199
	.uleb128 .LEHE28-.LEHB28
	.uleb128 .L176-.LFB199
	.uleb128 0
	.uleb128 .LEHB29-.LFB199
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L177-.LFB199
	.uleb128 0
	.uleb128 .LEHB30-.LFB199
	.uleb128 .LEHE30-.LEHB30
	.uleb128 .L178-.LFB199
	.uleb128 0
	.uleb128 .LEHB31-.LFB199
	.uleb128 .LEHE31-.LEHB31
	.uleb128 0
	.uleb128 0
.LLSDACSE199:
	.section	.text._ZN11SQFuncStateC2EP13SQSharedStatePS_PFvPvPKcES3_
	.fnend
	.size	_ZN11SQFuncStateC2EP13SQSharedStatePS_PFvPvPKcES3_, .-_ZN11SQFuncStateC2EP13SQSharedStatePS_PFvPvPKcES3_
	.global	_ZN11SQFuncStateC1EP13SQSharedStatePS_PFvPvPKcES3_
	.thumb_set _ZN11SQFuncStateC1EP13SQSharedStatePS_PFvPvPKcES3_,_ZN11SQFuncStateC2EP13SQSharedStatePS_PFvPvPKcES3_
	.section	.text._ZN11SQFuncState5ErrorEPKc,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState5ErrorEPKc
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState5ErrorEPKc, %function
_ZN11SQFuncState5ErrorEPKc:
	.fnstart
.LFB201:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #252]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #256]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState5ErrorEPKc, .-_ZN11SQFuncState5ErrorEPKc
	.section	.text._ZN11SQFuncState18GetNumericConstantEi,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState18GetNumericConstantEi
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState18GetNumericConstantEi, %function
_ZN11SQFuncState18GetNumericConstantEi:
	.fnstart
.LFB202:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB32:
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
.LEHE32:
	mov	r4, r0
	add	r3, r7, #8
	mov	r0, r3
.LEHB33:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE33:
	mov	r3, r4
	b	.L185
.L184:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB34:
	bl	__cxa_end_cleanup(PLT)
.LEHE34:
.L185:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA202:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE202-.LLSDACSB202
.LLSDACSB202:
	.uleb128 .LEHB32-.LFB202
	.uleb128 .LEHE32-.LEHB32
	.uleb128 .L184-.LFB202
	.uleb128 0
	.uleb128 .LEHB33-.LFB202
	.uleb128 .LEHE33-.LEHB33
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB34-.LFB202
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
.LLSDACSE202:
	.section	.text._ZN11SQFuncState18GetNumericConstantEi
	.fnend
	.size	_ZN11SQFuncState18GetNumericConstantEi, .-_ZN11SQFuncState18GetNumericConstantEi
	.section	.text._ZN11SQFuncState18GetNumericConstantEf,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState18GetNumericConstantEf
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState18GetNumericConstantEf, %function
_ZN11SQFuncState18GetNumericConstantEf:
	.fnstart
.LFB203:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	fsts	s0, [r7]
	add	r3, r7, #8
	mov	r0, r3
	flds	s0, [r7]
	bl	_ZN11SQObjectPtrC1Ef(PLT)
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB35:
	bl	_ZN11SQFuncState11GetConstantERK11tagSQObject(PLT)
.LEHE35:
	mov	r4, r0
	add	r3, r7, #8
	mov	r0, r3
.LEHB36:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE36:
	mov	r3, r4
	b	.L190
.L189:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB37:
	bl	__cxa_end_cleanup(PLT)
.LEHE37:
.L190:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA203:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE203-.LLSDACSB203
.LLSDACSB203:
	.uleb128 .LEHB35-.LFB203
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L189-.LFB203
	.uleb128 0
	.uleb128 .LEHB36-.LFB203
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB203
	.uleb128 .LEHE37-.LEHB37
	.uleb128 0
	.uleb128 0
.LLSDACSE203:
	.section	.text._ZN11SQFuncState18GetNumericConstantEf
	.fnend
	.size	_ZN11SQFuncState18GetNumericConstantEf, .-_ZN11SQFuncState18GetNumericConstantEf
	.section	.text._ZN11SQFuncState11GetConstantERK11tagSQObject,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState11GetConstantERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState11GetConstantERK11tagSQObject, %function
_ZN11SQFuncState11GetConstantERK11tagSQObject:
	.fnstart
.LFB204:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #124]
	add	r3, r7, #16
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r2, r7, #16
	add	r3, r7, #8
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB38:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
.LEHE38:
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r4, r3
	add	r3, r7, #16
	mov	r0, r3
.LEHB39:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	cmp	r4, #0
	beq	.L192
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #152]
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEi(PLT)
.LEHE39:
	ldr	r3, [r7, #4]
	ldr	r4, [r3, #124]
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r2, r7, #24
	add	r3, r7, #8
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB40:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE40:
	add	r3, r7, #24
	mov	r0, r3
.LEHB41:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE41:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #152]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #152]
.L192:
	ldr	r4, [r7, #12]
	add	r3, r7, #8
	mov	r0, r3
.LEHB42:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE42:
	mov	r3, r4
	b	.L200
.L198:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L195
.L199:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L195
.L197:
.L195:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB43:
	bl	__cxa_end_cleanup(PLT)
.LEHE43:
.L200:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA204:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE204-.LLSDACSB204
.LLSDACSB204:
	.uleb128 .LEHB38-.LFB204
	.uleb128 .LEHE38-.LEHB38
	.uleb128 .L198-.LFB204
	.uleb128 0
	.uleb128 .LEHB39-.LFB204
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L197-.LFB204
	.uleb128 0
	.uleb128 .LEHB40-.LFB204
	.uleb128 .LEHE40-.LEHB40
	.uleb128 .L199-.LFB204
	.uleb128 0
	.uleb128 .LEHB41-.LFB204
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L197-.LFB204
	.uleb128 0
	.uleb128 .LEHB42-.LFB204
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB204
	.uleb128 .LEHE43-.LEHB43
	.uleb128 0
	.uleb128 0
.LLSDACSE204:
	.section	.text._ZN11SQFuncState11GetConstantERK11tagSQObject
	.fnend
	.size	_ZN11SQFuncState11GetConstantERK11tagSQObject, .-_ZN11SQFuncState11GetConstantERK11tagSQObject
	.section	.text._ZN11SQFuncState19SetIntructionParamsEiiiii,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState19SetIntructionParamsEiiiii
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState19SetIntructionParamsEiiiii, %function
_ZN11SQFuncState19SetIntructionParamsEiiiii:
	.fnstart
.LFB205:
	@ args = 8, pretend = 0, frame = 16
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
	str	r3, [r7]
	ldr	r3, [r7, #12]
	add	r2, r3, #96
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	adds	r2, r7, #4
	ldr	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3, #5]
	ldr	r3, [r7, #12]
	add	r2, r3, #96
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	mov	r2, r7
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	add	r2, r3, #96
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	add	r2, r7, #24
	ldr	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3, #6]
	ldr	r3, [r7, #12]
	add	r2, r3, #96
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	add	r2, r7, #28
	ldr	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3, #7]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState19SetIntructionParamsEiiiii, .-_ZN11SQFuncState19SetIntructionParamsEiiiii
	.section	.text._ZN11SQFuncState18SetIntructionParamEiii,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState18SetIntructionParamEiii
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState18SetIntructionParamEiii, %function
_ZN11SQFuncState18SetIntructionParamEiii:
	.fnstart
.LFB206:
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
	str	r3, [r7]
	ldr	r3, [r7, #4]
	cmp	r3, #4
	bhi	.L202
	adr	r1, .L205
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L205:
	.word	.L204+1-.L205
	.word	.L206+1-.L205
	.word	.L207+1-.L205
	.word	.L208+1-.L205
	.word	.L206+1-.L205
.L204:
	ldr	r3, [r7, #12]
	add	r2, r3, #96
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	mov	r2, r7
	ldr	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3, #5]
	b	.L202
.L206:
	ldr	r3, [r7, #12]
	add	r2, r3, #96
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	mov	r2, r7
	ldr	r2, [r2]
	str	r2, [r3]
	b	.L202
.L207:
	ldr	r3, [r7, #12]
	add	r2, r3, #96
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	mov	r2, r7
	ldr	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3, #6]
	b	.L202
.L208:
	ldr	r3, [r7, #12]
	add	r2, r3, #96
	ldr	r3, [r7, #8]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	mov	r2, r7
	ldr	r2, [r2]
	uxtb	r2, r2
	strb	r2, [r3, #7]
	nop
.L202:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState18SetIntructionParamEiii, .-_ZN11SQFuncState18SetIntructionParamEiii
	.section	.rodata
	.align	2
.LC9:
	.ascii	"internal compiler error: too many locals\000"
	.section	.text._ZN11SQFuncState13AllocStackPosEv,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState13AllocStackPosEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState13AllocStackPosEv, %function
_ZN11SQFuncState13AllocStackPosEv:
	.fnstart
.LFB207:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
.LEHB44:
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
.LEHE44:
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	adds	r4, r3, #4
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoC1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r4
	mov	r1, r3
.LEHB45:
	bl	_ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_(PLT)
.LEHE45:
	add	r3, r7, #8
	mov	r0, r3
.LEHB46:
	bl	_ZN14SQLocalVarInfoD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L210
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r3, #255
	ble	.L211
	ldr	r0, [r7, #4]
	ldr	r3, .L216
.LPIC13:
	add	r3, pc
	mov	r1, r3
	bl	_ZN11SQFuncState5ErrorEPKc(PLT)
.L211:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
.LEHE46:
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
.L210:
	ldr	r3, [r7, #28]
	b	.L215
.L214:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoD1Ev(PLT)
.LEHB47:
	bl	__cxa_end_cleanup(PLT)
.LEHE47:
.L215:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L217:
	.align	2
.L216:
	.word	.LC9-(.LPIC13+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA207:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE207-.LLSDACSB207
.LLSDACSB207:
	.uleb128 .LEHB44-.LFB207
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB207
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L214-.LFB207
	.uleb128 0
	.uleb128 .LEHB46-.LFB207
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB207
	.uleb128 .LEHE47-.LEHB47
	.uleb128 0
	.uleb128 0
.LLSDACSE207:
	.section	.text._ZN11SQFuncState13AllocStackPosEv
	.fnend
	.size	_ZN11SQFuncState13AllocStackPosEv, .-_ZN11SQFuncState13AllocStackPosEv
	.section	.text._ZN11SQFuncState10PushTargetEi,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState10PushTargetEi
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState10PushTargetEi, %function
_ZN11SQFuncState10PushTargetEi:
	.fnstart
.LFB208:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #-1
	beq	.L219
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	mov	r3, r7
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r3, [r7]
	b	.L220
.L219:
	ldr	r0, [r7, #4]
	bl	_ZN11SQFuncState13AllocStackPosEv(PLT)
	mov	r3, r0
	str	r3, [r7]
	ldr	r3, [r7, #4]
	add	r2, r3, #16
	mov	r3, r7
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r3, [r7]
.L220:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState10PushTargetEi, .-_ZN11SQFuncState10PushTargetEi
	.section	.text._ZN11SQFuncState11GetUpTargetEi,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState11GetUpTargetEi
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState11GetUpTargetEi, %function
_ZN11SQFuncState11GetUpTargetEi:
	.fnstart
.LFB209:
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
	ldr	r3, [r7, #4]
	add	r4, r3, #16
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	subs	r3, r2, r3
	subs	r3, r3, #1
	mov	r0, r4
	mov	r1, r3
	bl	_ZNK8sqvectorIiEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN11SQFuncState11GetUpTargetEi, .-_ZN11SQFuncState11GetUpTargetEi
	.section	.text._ZN11SQFuncState9TopTargetEv,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState9TopTargetEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState9TopTargetEv, %function
_ZN11SQFuncState9TopTargetEv:
	.fnstart
.LFB210:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4backEv(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState9TopTargetEv, .-_ZN11SQFuncState9TopTargetEv
	.section	.rodata
	.align	2
.LC10:
	.ascii	"npos < _vlocals.size()\000"
	.align	2
.LC11:
	.ascii	"../../../libs/squirrel/squirrel/sqfuncstate.cpp\000"
	.section	.text._ZN11SQFuncState9PopTargetEv,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState9PopTargetEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState9PopTargetEv, %function
_ZN11SQFuncState9PopTargetEv:
	.fnstart
.LFB211:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4backEv(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L226
	ldr	r3, .L229
.LPIC14:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L229+4
.LPIC15:
	add	r3, pc
	mov	r1, r3
	mov	r2, #292
	ldr	r3, .L229+8
.LPIC16:
	add	r3, pc
	bl	__assert_fail(PLT)
.L226:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #12]
	bl	_ZNK8sqvectorI14SQLocalVarInfoEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	bne	.L227
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN8sqvectorI14SQLocalVarInfoE8pop_backEv(PLT)
.L227:
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	bl	_ZN8sqvectorIiE8pop_backEv(PLT)
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L230:
	.align	2
.L229:
	.word	.LC10-(.LPIC14+4)
	.word	.LC11-(.LPIC15+4)
	.word	_ZZN11SQFuncState9PopTargetEvE19__PRETTY_FUNCTION__-(.LPIC16+4)
	.fnend
	.size	_ZN11SQFuncState9PopTargetEv, .-_ZN11SQFuncState9PopTargetEv
	.section	.text._ZN11SQFuncState12GetStackSizeEv,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState12GetStackSizeEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState12GetStackSizeEv, %function
_ZN11SQFuncState12GetStackSizeEv:
	.fnstart
.LFB212:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r3, r0
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState12GetStackSizeEv, .-_ZN11SQFuncState12GetStackSizeEv
	.section	.text._ZN11SQFuncState11CountOutersEi,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState11CountOutersEi
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState11CountOutersEi, %function
_ZN11SQFuncState11CountOutersEi:
	.fnstart
.LFB213:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	str	r3, [r7, #16]
	b	.L234
.L235:
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldr	r3, [r7, #16]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #-1
	bne	.L234
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L234:
	ldr	r2, [r7, #16]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L235
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState11CountOutersEi, .-_ZN11SQFuncState11CountOutersEi
	.section	.text._ZN11SQFuncState12SetStackSizeEi,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState12SetStackSizeEi
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState12SetStackSizeEi, %function
_ZN11SQFuncState12SetStackSizeEi:
	.fnstart
.LFB214:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
.LEHB48:
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	b	.L238
.L241:
	ldr	r3, [r7, #28]
	subs	r3, r3, #1
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4backEv(PLT)
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN14SQLocalVarInfoC1ERKS_(PLT)
.LEHE48:
	ldr	r2, [r7, #8]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L239
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	bne	.L240
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #228]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #228]
.L240:
	ldr	r0, [r7, #4]
.LEHB49:
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	add	r2, r3, #108
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_(PLT)
.L239:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN8sqvectorI14SQLocalVarInfoE8pop_backEv(PLT)
.LEHE49:
	add	r3, r7, #8
	mov	r0, r3
.LEHB50:
	bl	_ZN14SQLocalVarInfoD1Ev(PLT)
.LEHE50:
.L238:
	ldr	r2, [r7, #28]
	ldr	r3, [r7]
	cmp	r2, r3
	bgt	.L241
	b	.L244
.L243:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoD1Ev(PLT)
.LEHB51:
	bl	__cxa_end_cleanup(PLT)
.LEHE51:
.L244:
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA214:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE214-.LLSDACSB214
.LLSDACSB214:
	.uleb128 .LEHB48-.LFB214
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB214
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L243-.LFB214
	.uleb128 0
	.uleb128 .LEHB50-.LFB214
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB214
	.uleb128 .LEHE51-.LEHB51
	.uleb128 0
	.uleb128 0
.LLSDACSE214:
	.section	.text._ZN11SQFuncState12SetStackSizeEi
	.fnend
	.size	_ZN11SQFuncState12SetStackSizeEi, .-_ZN11SQFuncState12SetStackSizeEi
	.section	.text._ZN11SQFuncState10IsConstantERK11tagSQObjectRS0_,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState10IsConstantERK11tagSQObjectRS0_
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState10IsConstantERK11tagSQObjectRS0_, %function
_ZN11SQFuncState10IsConstantERK11tagSQObjectRS0_:
	.fnstart
.LFB215:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #236]
	ldr	r4, [r3, #56]
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r2, r7, #24
	add	r3, r7, #16
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB52:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
.LEHE52:
	mov	r3, r0
	mov	r4, r3
	add	r3, r7, #24
	mov	r0, r3
.LEHB53:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE53:
	cmp	r4, #0
	beq	.L246
	ldr	r3, [r7, #4]
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	movs	r4, #1
	b	.L247
.L246:
	movs	r4, #0
.L247:
	add	r3, r7, #16
	mov	r0, r3
.LEHB54:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE54:
	mov	r3, r4
	b	.L253
.L252:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L250
.L251:
.L250:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB55:
	bl	__cxa_end_cleanup(PLT)
.LEHE55:
.L253:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA215:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE215-.LLSDACSB215
.LLSDACSB215:
	.uleb128 .LEHB52-.LFB215
	.uleb128 .LEHE52-.LEHB52
	.uleb128 .L252-.LFB215
	.uleb128 0
	.uleb128 .LEHB53-.LFB215
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L251-.LFB215
	.uleb128 0
	.uleb128 .LEHB54-.LFB215
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB215
	.uleb128 .LEHE55-.LEHB55
	.uleb128 0
	.uleb128 0
.LLSDACSE215:
	.section	.text._ZN11SQFuncState10IsConstantERK11tagSQObjectRS0_
	.fnend
	.size	_ZN11SQFuncState10IsConstantERK11tagSQObjectRS0_, .-_ZN11SQFuncState10IsConstantERK11tagSQObjectRS0_
	.section	.text._ZN11SQFuncState7IsLocalEj,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState7IsLocalEj
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState7IsLocalEj, %function
_ZN11SQFuncState7IsLocalEj:
	.fnstart
.LFB216:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7]
	cmp	r2, r3
	ite	ls
	movls	r3, #1
	movhi	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L255
	movs	r3, #0
	b	.L256
.L255:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZNK8sqvectorI14SQLocalVarInfoEixEj(PLT)
	mov	r3, r0
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L257
	movs	r3, #1
	b	.L256
.L257:
	movs	r3, #0
.L256:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState7IsLocalEj, .-_ZN11SQFuncState7IsLocalEj
	.section	.text._ZN11SQFuncState17PushLocalVariableERK11tagSQObject,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState17PushLocalVariableERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState17PushLocalVariableERK11tagSQObject, %function
_ZN11SQFuncState17PushLocalVariableERK11tagSQObject:
	.fnstart
.LFB217:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
.LEHB56:
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
.LEHE56:
	mov	r3, r0
	str	r3, [r7, #28]
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoC1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7]
.LEHB57:
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	ldr	r0, [r7, #4]
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	add	r3, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #28]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L259
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
.LEHE57:
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3, #28]
.L259:
	ldr	r4, [r7, #28]
	add	r3, r7, #8
	mov	r0, r3
.LEHB58:
	bl	_ZN14SQLocalVarInfoD1Ev(PLT)
.LEHE58:
	mov	r3, r4
	b	.L263
.L262:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoD1Ev(PLT)
.LEHB59:
	bl	__cxa_end_cleanup(PLT)
.LEHE59:
.L263:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA217:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE217-.LLSDACSB217
.LLSDACSB217:
	.uleb128 .LEHB56-.LFB217
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB217
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L262-.LFB217
	.uleb128 0
	.uleb128 .LEHB58-.LFB217
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LFB217
	.uleb128 .LEHE59-.LEHB59
	.uleb128 0
	.uleb128 0
.LLSDACSE217:
	.section	.text._ZN11SQFuncState17PushLocalVariableERK11tagSQObject
	.fnend
	.size	_ZN11SQFuncState17PushLocalVariableERK11tagSQObject, .-_ZN11SQFuncState17PushLocalVariableERK11tagSQObject
	.section	.text._ZN11SQFuncState16GetLocalVariableERK11tagSQObject,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState16GetLocalVariableERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState16GetLocalVariableERK11tagSQObject, %function
_ZN11SQFuncState16GetLocalVariableERK11tagSQObject:
	.fnstart
.LFB218:
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
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	b	.L265
.L268:
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	ldr	r2, [r3]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	bne	.L266
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L266
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	b	.L267
.L266:
	ldr	r3, [r7, #12]
	subs	r3, r3, #1
	str	r3, [r7, #12]
.L265:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bgt	.L268
	mov	r3, #-1
.L267:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState16GetLocalVariableERK11tagSQObject, .-_ZN11SQFuncState16GetLocalVariableERK11tagSQObject
	.section	.text._ZN11SQFuncState16MarkLocalAsOuterEi,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState16MarkLocalAsOuterEi
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState16MarkLocalAsOuterEi, %function
_ZN11SQFuncState16MarkLocalAsOuterEi:
	.fnstart
.LFB219:
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
	adds	r2, r3, #4
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	mov	r2, #-1
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #228]
	adds	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #228]
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState16MarkLocalAsOuterEi, .-_ZN11SQFuncState16MarkLocalAsOuterEi
	.section	.text._ZN11SQFuncState16GetOuterVariableERK11tagSQObject,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState16GetOuterVariableERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState16GetOuterVariableERK11tagSQObject, %function
_ZN11SQFuncState16GetOuterVariableERK11tagSQObject:
	.fnstart
.LFB220:
	@ args = 0, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #100
	sub	sp, sp, #100
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	mov	r0, r3
.LEHB60:
	bl	_ZNK8sqvectorI10SQOuterVarE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #88]
	movs	r3, #0
	str	r3, [r7, #92]
	b	.L271
.L274:
	ldr	r3, [r7, #4]
	add	r2, r3, #84
	ldr	r3, [r7, #92]
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI10SQOuterVarEixEj(PLT)
	mov	r3, r0
	ldr	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L272
	ldr	r3, [r7, #92]
	b	.L289
.L272:
	ldr	r3, [r7, #92]
	adds	r3, r3, #1
	str	r3, [r7, #92]
.L271:
	ldr	r2, [r7, #92]
	ldr	r3, [r7, #88]
	cmp	r2, r3
	blt	.L274
	mov	r3, #-1
	str	r3, [r7, #84]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	cmp	r3, #0
	beq	.L275
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQFuncState16GetLocalVariableERK11tagSQObject(PLT)
	mov	r3, r0
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #-1
	bne	.L276
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQFuncState16GetOuterVariableERK11tagSQObject(PLT)
.LEHE60:
	mov	r3, r0
	str	r3, [r7, #84]
	ldr	r3, [r7, #84]
	cmp	r3, #-1
	beq	.L275
	ldr	r3, [r7, #4]
	add	r4, r3, #84
	add	r3, r7, #32
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #40
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r1, r7, #12
	add	r2, r7, #32
	add	r3, r7, #40
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	movs	r3, #1
.LEHB61:
	bl	_ZN10SQOuterVarC1ERK11SQObjectPtrS2_11SQOuterType(PLT)
.LEHE61:
	add	r3, r7, #12
	mov	r0, r4
	mov	r1, r3
.LEHB62:
	bl	_ZN8sqvectorI10SQOuterVarE9push_backERKS0_(PLT)
.LEHE62:
	add	r3, r7, #12
	mov	r0, r3
.LEHB63:
	bl	_ZN10SQOuterVarD1Ev(PLT)
.LEHE63:
	add	r3, r7, #40
	mov	r0, r3
.LEHB64:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE64:
	add	r3, r7, #32
	mov	r0, r3
.LEHB65:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	mov	r0, r3
	bl	_ZNK8sqvectorI10SQOuterVarE4sizeEv(PLT)
	mov	r3, r0
	subs	r3, r3, #1
	b	.L289
.L276:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	_ZN11SQFuncState16MarkLocalAsOuterEi(PLT)
.LEHE65:
	ldr	r3, [r7, #4]
	add	r4, r3, #84
	add	r3, r7, #68
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #76
	mov	r0, r3
	ldr	r1, [r7, #84]
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r1, r7, #48
	add	r2, r7, #68
	add	r3, r7, #76
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	movs	r3, #0
.LEHB66:
	bl	_ZN10SQOuterVarC1ERK11SQObjectPtrS2_11SQOuterType(PLT)
.LEHE66:
	add	r3, r7, #48
	mov	r0, r4
	mov	r1, r3
.LEHB67:
	bl	_ZN8sqvectorI10SQOuterVarE9push_backERKS0_(PLT)
.LEHE67:
	add	r3, r7, #48
	mov	r0, r3
.LEHB68:
	bl	_ZN10SQOuterVarD1Ev(PLT)
.LEHE68:
	add	r3, r7, #76
	mov	r0, r3
.LEHB69:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE69:
	add	r3, r7, #68
	mov	r0, r3
.LEHB70:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	mov	r0, r3
	bl	_ZNK8sqvectorI10SQOuterVarE4sizeEv(PLT)
.LEHE70:
	mov	r3, r0
	subs	r3, r3, #1
	b	.L289
.L275:
	mov	r3, #-1
	b	.L289
.L285:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN10SQOuterVarD1Ev(PLT)
	b	.L278
.L284:
.L278:
	add	r3, r7, #40
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L279
.L283:
.L279:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB71:
	bl	__cxa_end_cleanup(PLT)
.LEHE71:
.L288:
	add	r3, r7, #48
	mov	r0, r3
	bl	_ZN10SQOuterVarD1Ev(PLT)
	b	.L281
.L287:
.L281:
	add	r3, r7, #76
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L282
.L286:
.L282:
	add	r3, r7, #68
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB72:
	bl	__cxa_end_cleanup(PLT)
.LEHE72:
.L289:
	mov	r0, r3
	adds	r7, r7, #100
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA220:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE220-.LLSDACSB220
.LLSDACSB220:
	.uleb128 .LEHB60-.LFB220
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB61-.LFB220
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L284-.LFB220
	.uleb128 0
	.uleb128 .LEHB62-.LFB220
	.uleb128 .LEHE62-.LEHB62
	.uleb128 .L285-.LFB220
	.uleb128 0
	.uleb128 .LEHB63-.LFB220
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L284-.LFB220
	.uleb128 0
	.uleb128 .LEHB64-.LFB220
	.uleb128 .LEHE64-.LEHB64
	.uleb128 .L283-.LFB220
	.uleb128 0
	.uleb128 .LEHB65-.LFB220
	.uleb128 .LEHE65-.LEHB65
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB66-.LFB220
	.uleb128 .LEHE66-.LEHB66
	.uleb128 .L287-.LFB220
	.uleb128 0
	.uleb128 .LEHB67-.LFB220
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L288-.LFB220
	.uleb128 0
	.uleb128 .LEHB68-.LFB220
	.uleb128 .LEHE68-.LEHB68
	.uleb128 .L287-.LFB220
	.uleb128 0
	.uleb128 .LEHB69-.LFB220
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L286-.LFB220
	.uleb128 0
	.uleb128 .LEHB70-.LFB220
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB71-.LFB220
	.uleb128 .LEHE71-.LEHB71
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB72-.LFB220
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
.LLSDACSE220:
	.section	.text._ZN11SQFuncState16GetOuterVariableERK11tagSQObject
	.fnend
	.size	_ZN11SQFuncState16GetOuterVariableERK11tagSQObject, .-_ZN11SQFuncState16GetOuterVariableERK11tagSQObject
	.section	.text._ZN11SQFuncState12AddParameterERK11tagSQObject,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState12AddParameterERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState12AddParameterERK11tagSQObject, %function
_ZN11SQFuncState12AddParameterERK11tagSQObject:
	.fnstart
.LFB221:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #20
	sub	sp, sp, #20
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
.LEHB73:
	bl	_ZN11SQFuncState17PushLocalVariableERK11tagSQObject(PLT)
.LEHE73:
	ldr	r3, [r7, #4]
	add	r4, r3, #72
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #8
	mov	r0, r4
	mov	r1, r3
.LEHB74:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE74:
	add	r3, r7, #8
	mov	r0, r3
.LEHB75:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE75:
	b	.L293
.L292:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB76:
	bl	__cxa_end_cleanup(PLT)
.LEHE76:
.L293:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA221:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE221-.LLSDACSB221
.LLSDACSB221:
	.uleb128 .LEHB73-.LFB221
	.uleb128 .LEHE73-.LEHB73
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB74-.LFB221
	.uleb128 .LEHE74-.LEHB74
	.uleb128 .L292-.LFB221
	.uleb128 0
	.uleb128 .LEHB75-.LFB221
	.uleb128 .LEHE75-.LEHB75
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB76-.LFB221
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
.LLSDACSE221:
	.section	.text._ZN11SQFuncState12AddParameterERK11tagSQObject
	.fnend
	.size	_ZN11SQFuncState12AddParameterERK11tagSQObject, .-_ZN11SQFuncState12AddParameterERK11tagSQObject
	.section	.text._ZN11SQFuncState12AddLineInfosEibb,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState12AddLineInfosEibb
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState12AddLineInfosEibb, %function
_ZN11SQFuncState12AddLineInfosEibb:
	.fnstart
.LFB222:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	strb	r2, [r7, #7]
	strb	r3, [r7, #6]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #220]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bne	.L295
	ldrb	r3, [r7, #6]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L294
.L295:
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	ldr	r0, [r7, #12]
	bl	_ZN11SQFuncState13GetCurrentPosEv(PLT)
	mov	r3, r0
	adds	r3, r3, #1
	str	r3, [r7, #20]
	ldrb	r3, [r7, #7]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L297
	movs	r3, #0
	str	r3, [sp]
	movs	r3, #0
	str	r3, [sp, #4]
	ldr	r0, [r7, #12]
	movs	r1, #0
	movs	r2, #0
	ldr	r3, [r7, #8]
	bl	_ZN11SQFuncState14AddInstructionE8SQOpcodeiiii(PLT)
.L297:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #220]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	beq	.L298
	ldr	r3, [r7, #12]
	add	r2, r3, #156
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN8sqvectorI10SQLineInfoE9push_backERKS0_(PLT)
.L298:
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #220]
.L294:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState12AddLineInfosEibb, .-_ZN11SQFuncState12AddLineInfosEibb
	.section	.text._ZN11SQFuncState13DiscardTargetEv,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState13DiscardTargetEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState13DiscardTargetEv, %function
_ZN11SQFuncState13DiscardTargetEv:
	.fnstart
.LFB223:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r0, [r7, #4]
	bl	_ZN11SQFuncState9PopTargetEv(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQInstructionE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ble	.L299
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #232]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L299
	ldr	r3, [r7, #4]
	add	r2, r3, #96
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	subs	r3, r3, #6
	cmp	r3, #25
	bhi	.L299
	adr	r1, .L303
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L303:
	.word	.L302+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L302+1-.L303
	.word	.L299+1-.L303
	.word	.L302+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L299+1-.L303
	.word	.L302+1-.L303
.L302:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bne	.L301
	ldr	r3, [r7, #12]
	movs	r2, #255
	strb	r2, [r3, #5]
.L301:
.L299:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState13DiscardTargetEv, .-_ZN11SQFuncState13DiscardTargetEv
	.section	.text._ZN11SQFuncState14AddInstructionER13SQInstruction,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState14AddInstructionER13SQInstruction
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState14AddInstructionER13SQInstruction, %function
_ZN11SQFuncState14AddInstructionER13SQInstruction:
	.fnstart
.LFB224:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQInstructionE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	ble	.L305
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #232]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L305
	ldr	r3, [r7, #4]
	add	r2, r3, #96
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	mov	r0, r2
	mov	r1, r3
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #34
	bhi	.L305
	adr	r1, .L308
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L308:
	.word	.L307+1-.L308
	.word	.L309+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L310+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L311+1-.L308
	.word	.L312+1-.L308
	.word	.L305+1-.L308
	.word	.L312+1-.L308
	.word	.L313+1-.L308
	.word	.L314+1-.L308
	.word	.L314+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L315+1-.L308
	.word	.L316+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L317+1-.L308
	.word	.L318+1-.L308
	.word	.L305+1-.L308
	.word	.L305+1-.L308
	.word	.L319+1-.L308
.L317:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #40
	bne	.L312
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	cmp	r3, #254
	bgt	.L312
	ldr	r3, [r7, #12]
	movs	r2, #29
	strb	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #5]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	b	.L304
.L312:
	ldr	r3, [r7]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldrb	r3, [r3, #7]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L321
	ldr	r3, [r7]
	movs	r2, #255
	strb	r2, [r3, #5]
.L321:
	b	.L306
.L318:
	ldr	r3, [r7]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L322
	ldr	r3, [r7]
	movs	r2, #255
	strb	r2, [r3, #5]
.L322:
	b	.L306
.L315:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #168]
	cmp	r3, #0
	beq	.L323
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L323
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #6
	bne	.L323
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	subs	r3, r3, #1
	cmp	r2, r3
	bge	.L323
	ldr	r3, [r7, #12]
	movs	r2, #5
	strb	r2, [r3, #4]
	b	.L324
.L323:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #60
	bne	.L324
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	b	.L304
.L324:
	b	.L306
.L313:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L325
	ldr	r3, [r7, #12]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7]
	ldrb	r3, [r3, #6]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L325
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQFuncState7IsLocalEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L325
	movs	r3, #1
	b	.L326
.L325:
	movs	r3, #0
.L326:
	cmp	r3, #0
	beq	.L327
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #6]
	ldr	r3, [r7, #12]
	movs	r2, #9
	strb	r2, [r3, #4]
	ldr	r3, [r7]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #5]
	b	.L304
.L327:
	b	.L306
.L310:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L328
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L328
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQFuncState7IsLocalEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L328
	movs	r3, #1
	b	.L329
.L328:
	movs	r3, #0
.L329:
	cmp	r3, #0
	beq	.L330
	ldr	r3, [r7, #12]
	movs	r2, #8
	strb	r2, [r3, #4]
	ldr	r3, [r7]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #5]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7]
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #6]
	ldr	r3, [r7]
	ldrb	r2, [r3, #7]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #7]
	b	.L304
.L330:
	b	.L306
.L319:
	mov	r3, #-1
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #25
	bhi	.L351
	adr	r1, .L333
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L333:
	.word	.L332+1-.L333
	.word	.L334+1-.L333
	.word	.L335+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L351+1-.L333
	.word	.L336+1-.L333
.L332:
	movs	r3, #1
	str	r3, [r7, #20]
	b	.L337
.L334:
	movs	r3, #2
	str	r3, [r7, #20]
	b	.L337
.L336:
	movs	r3, #4
	str	r3, [r7, #20]
	b	.L337
.L335:
	movs	r3, #3
	str	r3, [r7, #20]
	b	.L337
.L351:
	nop
.L337:
	ldr	r3, [r7, #20]
	cmp	r3, #-1
	beq	.L338
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L338
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQFuncState7IsLocalEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L338
	movs	r3, #1
	b	.L339
.L338:
	movs	r3, #0
.L339:
	cmp	r3, #0
	beq	.L340
	ldr	r3, [r7, #12]
	movs	r2, #34
	strb	r2, [r3, #4]
	ldr	r3, [r7]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #5]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #20]
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #6]
	ldr	r3, [r7, #12]
	movs	r2, #255
	strb	r2, [r3, #7]
	b	.L304
.L340:
	b	.L306
.L311:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	subs	r3, r3, #1
	cmp	r3, #25
	bhi	.L341
	adr	r1, .L343
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L343:
	.word	.L342+1-.L343
	.word	.L342+1-.L343
	.word	.L342+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L342+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L342+1-.L343
	.word	.L342+1-.L343
	.word	.L342+1-.L343
	.word	.L342+1-.L343
	.word	.L342+1-.L343
	.word	.L342+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L341+1-.L343
	.word	.L342+1-.L343
.L342:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L341
	ldr	r3, [r7]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #5]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #232]
	b	.L304
.L341:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L344
	ldr	r3, [r7, #12]
	movs	r2, #27
	strb	r2, [r3, #4]
	ldr	r3, [r7]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #6]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #7]
	b	.L304
.L344:
	b	.L306
.L309:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L345
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r3, #255
	bgt	.L345
	ldr	r3, [r7, #12]
	movs	r2, #4
	strb	r2, [r3, #4]
	ldr	r3, [r7]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #6]
	ldr	r3, [r7]
	ldr	r3, [r3]
	uxtb	r2, r3
	ldr	r3, [r7, #12]
	strb	r2, [r3, #7]
	b	.L304
.L345:
	b	.L306
.L314:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #1
	bne	.L346
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L346
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN11SQFuncState7IsLocalEj(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L346
	movs	r3, #1
	b	.L347
.L346:
	movs	r3, #0
.L347:
	cmp	r3, #0
	beq	.L348
	ldr	r3, [r7]
	ldrb	r2, [r3, #4]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #4]
	ldr	r3, [r7]
	ldrb	r2, [r3, #5]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #5]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7]
	ldrb	r2, [r3, #6]	@ zero_extendqisi2
	ldr	r3, [r7, #12]
	strb	r2, [r3, #6]
	ldr	r3, [r7, #12]
	movs	r2, #255
	strb	r2, [r3, #7]
	b	.L304
.L348:
	b	.L306
.L316:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #24
	bne	.L349
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	add	r2, r2, r3
	ldr	r3, [r7]
	ldrb	r3, [r3, #5]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L349
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	movs	r2, #24
	strb	r2, [r3, #4]
	b	.L304
.L349:
	b	.L306
.L307:
	ldr	r3, [r7, #12]
	ldrb	r3, [r3, #4]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L350
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZN8sqvectorI13SQInstructionE8pop_backEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #156
	mov	r0, r3
	bl	_ZN8sqvectorI10SQLineInfoE8pop_backEv(PLT)
.L350:
	nop
.L306:
.L305:
	ldr	r3, [r7, #4]
	movs	r2, #1
	strb	r2, [r3, #232]
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN8sqvectorI13SQInstructionE9push_backERKS0_(PLT)
.L304:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState14AddInstructionER13SQInstruction, .-_ZN11SQFuncState14AddInstructionER13SQInstruction
	.section	.text._ZN11SQFuncState12CreateStringEPKci,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState12CreateStringEPKci
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState12CreateStringEPKci, %function
_ZN11SQFuncState12CreateStringEPKci:
	.fnstart
.LFB225:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #36
	sub	sp, sp, #36
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #236]
	mov	r0, r3
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB77:
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE77:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	ldr	r3, [r7, #8]
	ldr	r4, [r3, #132]
	add	r3, r7, #24
	mov	r0, r3
	movs	r1, #1
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #16
	add	r3, r7, #24
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB78:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE78:
	add	r3, r7, #24
	mov	r0, r3
.LEHB79:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE79:
	ldr	r3, [r7, #12]
	add	r2, r7, #16
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #16
	mov	r0, r3
.LEHB80:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE80:
	b	.L358
.L357:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L355
.L356:
.L355:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB81:
	bl	__cxa_end_cleanup(PLT)
.LEHE81:
.L358:
	ldr	r0, [r7, #12]
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA225:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE225-.LLSDACSB225
.LLSDACSB225:
	.uleb128 .LEHB77-.LFB225
	.uleb128 .LEHE77-.LEHB77
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB78-.LFB225
	.uleb128 .LEHE78-.LEHB78
	.uleb128 .L357-.LFB225
	.uleb128 0
	.uleb128 .LEHB79-.LFB225
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L356-.LFB225
	.uleb128 0
	.uleb128 .LEHB80-.LFB225
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB225
	.uleb128 .LEHE81-.LEHB81
	.uleb128 0
	.uleb128 0
.LLSDACSE225:
	.section	.text._ZN11SQFuncState12CreateStringEPKci
	.fnend
	.size	_ZN11SQFuncState12CreateStringEPKci, .-_ZN11SQFuncState12CreateStringEPKci
	.section	.text._ZN11SQFuncState11CreateTableEv,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState11CreateTableEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState11CreateTableEv, %function
_ZN11SQFuncState11CreateTableEv:
	.fnstart
.LFB226:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #28
	sub	sp, sp, #28
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #236]
	mov	r0, r3
	movs	r1, #0
.LEHB82:
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
.LEHE82:
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP7SQTable(PLT)
	ldr	r3, [r7]
	ldr	r4, [r3, #132]
	add	r3, r7, #16
	mov	r0, r3
	movs	r1, #1
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r2, r7, #8
	add	r3, r7, #16
	mov	r0, r4
	mov	r1, r2
	mov	r2, r3
.LEHB83:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE83:
	add	r3, r7, #16
	mov	r0, r3
.LEHB84:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE84:
	ldr	r3, [r7, #4]
	add	r2, r7, #8
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	add	r3, r7, #8
	mov	r0, r3
.LEHB85:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE85:
	b	.L365
.L364:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L362
.L363:
.L362:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB86:
	bl	__cxa_end_cleanup(PLT)
.LEHE86:
.L365:
	ldr	r0, [r7, #4]
	adds	r7, r7, #28
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA226:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE226-.LLSDACSB226
.LLSDACSB226:
	.uleb128 .LEHB82-.LFB226
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LFB226
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L364-.LFB226
	.uleb128 0
	.uleb128 .LEHB84-.LFB226
	.uleb128 .LEHE84-.LEHB84
	.uleb128 .L363-.LFB226
	.uleb128 0
	.uleb128 .LEHB85-.LFB226
	.uleb128 .LEHE85-.LEHB85
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB86-.LFB226
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
.LLSDACSE226:
	.section	.text._ZN11SQFuncState11CreateTableEv
	.fnend
	.size	_ZN11SQFuncState11CreateTableEv, .-_ZN11SQFuncState11CreateTableEv
	.section	.text._ZN10SQOuterVaraSERKS_,"axG",%progbits,_ZN10SQOuterVaraSERKS_,comdat
	.align	2
	.weak	_ZN10SQOuterVaraSERKS_
	.thumb
	.thumb_func
	.type	_ZN10SQOuterVaraSERKS_, %function
_ZN10SQOuterVaraSERKS_:
	.fnstart
.LFB228:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	adds	r2, r3, #4
	ldr	r3, [r7]
	adds	r3, r3, #4
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #4]
	add	r2, r3, #12
	ldr	r3, [r7]
	adds	r3, r3, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN10SQOuterVaraSERKS_, .-_ZN10SQOuterVaraSERKS_
	.section	.text._ZN14SQLocalVarInfoaSERKS_,"axG",%progbits,_ZN14SQLocalVarInfoaSERKS_,comdat
	.align	2
	.weak	_ZN14SQLocalVarInfoaSERKS_
	.thumb
	.thumb_func
	.type	_ZN14SQLocalVarInfoaSERKS_, %function
_ZN14SQLocalVarInfoaSERKS_:
	.fnstart
.LFB229:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r2, [r7, #4]
	ldr	r3, [r7]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3, #12]
	ldr	r3, [r7]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN14SQLocalVarInfoaSERKS_, .-_ZN14SQLocalVarInfoaSERKS_
	.section	.text._ZN11SQFuncState10BuildProtoEv,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState10BuildProtoEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState10BuildProtoEv, %function
_ZN11SQFuncState10BuildProtoEv:
	.fnstart
.LFB227:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.save {r4, r5, r6, r7, r8, r9, r10, fp, lr}
	.pad #92
	sub	sp, sp, #92
	.setfp r7, sp, #24
	add	r7, sp, #24
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r8, [r3, #260]
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
.LEHB87:
	bl	_ZNK8sqvectorI13SQInstructionE4sizeEv(PLT)
	mov	r3, r0
	mov	r6, r3
	ldr	r3, [r7, #4]
	ldr	r5, [r3, #152]
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	mov	r4, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r3, r0
	str	r3, [r7]
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	mov	r0, r3
	bl	_ZNK8sqvectorI10SQOuterVarE4sizeEv(PLT)
	mov	r3, r0
	mov	fp, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #156
	mov	r0, r3
	bl	_ZNK8sqvectorI10SQLineInfoE4sizeEv(PLT)
	mov	r3, r0
	mov	r10, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r3, r0
	mov	r9, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #208
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r3, r0
	ldr	r2, [r7]
	str	r2, [sp]
	str	fp, [sp, #4]
	str	r10, [sp, #8]
	str	r9, [sp, #12]
	str	r3, [sp, #16]
	mov	r0, r8
	mov	r1, r6
	mov	r2, r5
	mov	r3, r4
	bl	_ZN15SQFunctionProto6CreateEP13SQSharedStateiiiiiiii(PLT)
.LEHE87:
	mov	r3, r0
	str	r3, [r7, #36]
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #28]
	ldr	r3, [r7, #36]
	str	r2, [r3, #40]
	ldr	r3, [r7, #36]
	add	r2, r3, #24
	ldr	r3, [r7, #4]
	adds	r3, r3, #144
	mov	r0, r2
	mov	r1, r3
.LEHB88:
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #4]
	ldrb	r2, [r3, #33]	@ zero_extendqisi2
	ldr	r3, [r7, #36]
	strb	r2, [r3, #44]
	ldr	r3, [r7, #36]
	add	r2, r3, #32
	ldr	r3, [r7, #4]
	adds	r3, r3, #136
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	b	.L371
.L372:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #72]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r2, r2, r3
	add	r3, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	add	r3, r7, #24
	mov	r0, r3
	ldr	r1, [r7, #32]
	bl	_ZN11SQObjectPtraSEi(PLT)
.L371:
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #124]
	add	r2, r7, #24
	add	r3, r7, #16
	add	r0, r7, #8
	str	r0, [sp]
	mov	r0, r1
	movs	r1, #0
	bl	_ZN7SQTable4NextEbRK11SQObjectPtrRS0_S3_(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r3, [r7, #32]
	cmp	r3, #-1
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L372
	movs	r3, #0
	str	r3, [r7, #60]
	b	.L373
.L374:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #88]
	ldr	r3, [r7, #60]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	ldr	r1, [r7, #60]
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #60]
	adds	r3, r3, #1
	str	r3, [r7, #60]
.L373:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #60]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L374
	movs	r3, #0
	str	r3, [r7, #56]
	b	.L375
.L376:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #80]
	ldr	r3, [r7, #56]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	mov	r0, r3
	ldr	r1, [r7, #56]
	bl	_ZNK8sqvectorI11SQObjectPtrEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSERKS_(PLT)
	ldr	r3, [r7, #56]
	adds	r3, r3, #1
	str	r3, [r7, #56]
.L375:
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #56]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L376
	movs	r3, #0
	str	r3, [r7, #52]
	b	.L377
.L378:
	ldr	r3, [r7, #36]
	ldr	r1, [r3, #96]
	ldr	r2, [r7, #52]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r4, r1, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	mov	r0, r3
	ldr	r1, [r7, #52]
	bl	_ZNK8sqvectorI10SQOuterVarEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN10SQOuterVaraSERKS_(PLT)
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L377:
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	mov	r0, r3
	bl	_ZNK8sqvectorI10SQOuterVarE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #52]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L378
	movs	r3, #0
	str	r3, [r7, #48]
	b	.L379
.L380:
	ldr	r3, [r7, #36]
	ldr	r1, [r3, #56]
	ldr	r2, [r7, #48]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r4, r1, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
	ldr	r1, [r7, #48]
	bl	_ZNK8sqvectorI14SQLocalVarInfoEixEj(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN14SQLocalVarInfoaSERKS_(PLT)
	ldr	r3, [r7, #48]
	adds	r3, r3, #1
	str	r3, [r7, #48]
.L379:
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
	bl	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #48]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L380
	movs	r3, #0
	str	r3, [r7, #44]
	b	.L381
.L382:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #64]
	ldr	r3, [r7, #44]
	lsls	r3, r3, #3
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #156
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	_ZNK8sqvectorI10SQLineInfoEixEj(PLT)
	mov	r2, r0
	mov	r3, r4
	ldmia	r2, {r0, r1}
	stmia	r3, {r0, r1}
	ldr	r3, [r7, #44]
	adds	r3, r3, #1
	str	r3, [r7, #44]
.L381:
	ldr	r3, [r7, #4]
	adds	r3, r3, #156
	mov	r0, r3
	bl	_ZNK8sqvectorI10SQLineInfoE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #44]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L382
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L383
.L384:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #104]
	ldr	r3, [r7, #40]
	lsls	r3, r3, #2
	adds	r4, r2, r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #208
	mov	r0, r3
	ldr	r1, [r7, #40]
	bl	_ZNK8sqvectorIiEixEj(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r4]
	ldr	r3, [r7, #40]
	adds	r3, r3, #1
	str	r3, [r7, #40]
.L383:
	ldr	r3, [r7, #4]
	adds	r3, r3, #208
	mov	r0, r3
	bl	_ZNK8sqvectorIiE4sizeEv(PLT)
	mov	r2, r0
	ldr	r3, [r7, #40]
	cmp	r2, r3
	ite	hi
	movhi	r3, #1
	movls	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L384
	ldr	r3, [r7, #36]
	add	r5, r3, #112
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	movs	r1, #0
	bl	_ZNK8sqvectorI13SQInstructionEixEj(PLT)
	mov	r4, r0
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZNK8sqvectorI13SQInstructionE4sizeEv(PLT)
.LEHE88:
	mov	r3, r0
	lsls	r3, r3, #3
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r3, [r7, #4]
	ldrb	r3, [r3, #32]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [r7, #36]
	str	r2, [r3, #48]
	ldr	r4, [r7, #36]
	add	r3, r7, #8
	mov	r0, r3
.LEHB89:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE89:
	add	r3, r7, #16
	mov	r0, r3
.LEHB90:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE90:
	add	r3, r7, #24
	mov	r0, r3
.LEHB91:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE91:
	mov	r3, r4
	b	.L392
.L391:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L387
.L390:
.L387:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L388
.L389:
.L388:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB92:
	bl	__cxa_end_cleanup(PLT)
.LEHE92:
.L392:
	mov	r0, r3
	adds	r7, r7, #68
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, r8, r9, r10, fp, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA227:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE227-.LLSDACSB227
.LLSDACSB227:
	.uleb128 .LEHB87-.LFB227
	.uleb128 .LEHE87-.LEHB87
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB88-.LFB227
	.uleb128 .LEHE88-.LEHB88
	.uleb128 .L391-.LFB227
	.uleb128 0
	.uleb128 .LEHB89-.LFB227
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L390-.LFB227
	.uleb128 0
	.uleb128 .LEHB90-.LFB227
	.uleb128 .LEHE90-.LEHB90
	.uleb128 .L389-.LFB227
	.uleb128 0
	.uleb128 .LEHB91-.LFB227
	.uleb128 .LEHE91-.LEHB91
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB92-.LFB227
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
.LLSDACSE227:
	.section	.text._ZN11SQFuncState10BuildProtoEv
	.fnend
	.size	_ZN11SQFuncState10BuildProtoEv, .-_ZN11SQFuncState10BuildProtoEv
	.section	.text._ZN11SQFuncState14PushChildStateEP13SQSharedState,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState14PushChildStateEP13SQSharedState
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState14PushChildStateEP13SQSharedState, %function
_ZN11SQFuncState14PushChildStateEP13SQSharedState:
	.fnstart
.LFB230:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	mov	r0, #264
.LEHB93:
	bl	sq_malloc(PLT)
.LEHE93:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	mov	r0, #264
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L395
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #252]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #256]
	str	r2, [sp]
	mov	r0, r4
	ldr	r1, [r7]
	ldr	r2, [r7, #4]
.LEHB94:
	bl	_ZN11SQFuncStateC1EP13SQSharedStatePS_PFvPvPKcES3_(PLT)
.LEHE94:
.L395:
	ldr	r3, [r7, #4]
	add	r2, r3, #240
	add	r3, r7, #12
	mov	r0, r2
	mov	r1, r3
.LEHB95:
	bl	_ZN8sqvectorIP11SQFuncStateE9push_backERKS1_(PLT)
	ldr	r3, [r7, #12]
	b	.L399
.L398:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
	bl	__cxa_end_cleanup(PLT)
.LEHE95:
.L399:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA230:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE230-.LLSDACSB230
.LLSDACSB230:
	.uleb128 .LEHB93-.LFB230
	.uleb128 .LEHE93-.LEHB93
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB94-.LFB230
	.uleb128 .LEHE94-.LEHB94
	.uleb128 .L398-.LFB230
	.uleb128 0
	.uleb128 .LEHB95-.LFB230
	.uleb128 .LEHE95-.LEHB95
	.uleb128 0
	.uleb128 0
.LLSDACSE230:
	.section	.text._ZN11SQFuncState14PushChildStateEP13SQSharedState
	.fnend
	.size	_ZN11SQFuncState14PushChildStateEP13SQSharedState, .-_ZN11SQFuncState14PushChildStateEP13SQSharedState
	.section	.text._ZN11SQFuncState13PopChildStateEv,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncState13PopChildStateEv
	.thumb
	.thumb_func
	.type	_ZN11SQFuncState13PopChildStateEv, %function
_ZN11SQFuncState13PopChildStateEv:
	.fnstart
.LFB231:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	adds	r3, r3, #240
	mov	r0, r3
	bl	_ZNK8sqvectorIP11SQFuncStateE4backEv(PLT)
	mov	r3, r0
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r0, [r7, #12]
	bl	_ZN11SQFuncStateD1Ev(PLT)
	ldr	r0, [r7, #12]
	mov	r1, #264
	bl	_Z10sq_vm_freePvj(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #240
	mov	r0, r3
	bl	_ZN8sqvectorIP11SQFuncStateE8pop_backEv(PLT)
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQFuncState13PopChildStateEv, .-_ZN11SQFuncState13PopChildStateEv
	.section	.text._ZN11SQFuncStateD2Ev,"ax",%progbits
	.align	2
	.global	_ZN11SQFuncStateD2Ev
	.thumb
	.thumb_func
	.type	_ZN11SQFuncStateD2Ev, %function
_ZN11SQFuncStateD2Ev:
	.fnstart
.LFB233:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	b	.L402
.L403:
	ldr	r0, [r7, #4]
.LEHB96:
	bl	_ZN11SQFuncState13PopChildStateEv(PLT)
.L402:
	ldr	r3, [r7, #4]
	adds	r3, r3, #240
	mov	r0, r3
	bl	_ZNK8sqvectorIP11SQFuncStateE4sizeEv(PLT)
.LEHE96:
	mov	r3, r0
	cmp	r3, #0
	ite	ne
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L403
	ldr	r3, [r7, #4]
	adds	r3, r3, #240
	mov	r0, r3
.LEHB97:
	bl	_ZN8sqvectorIP11SQFuncStateED1Ev(PLT)
.LEHE97:
	ldr	r3, [r7, #4]
	adds	r3, r3, #208
	mov	r0, r3
.LEHB98:
	bl	_ZN8sqvectorIiED1Ev(PLT)
.LEHE98:
	ldr	r3, [r7, #4]
	adds	r3, r3, #196
	mov	r0, r3
.LEHB99:
	bl	_ZN8sqvectorIiED1Ev(PLT)
.LEHE99:
	ldr	r3, [r7, #4]
	adds	r3, r3, #184
	mov	r0, r3
.LEHB100:
	bl	_ZN8sqvectorIiED1Ev(PLT)
.LEHE100:
	ldr	r3, [r7, #4]
	adds	r3, r3, #172
	mov	r0, r3
.LEHB101:
	bl	_ZN8sqvectorIiED1Ev(PLT)
.LEHE101:
	ldr	r3, [r7, #4]
	adds	r3, r3, #156
	mov	r0, r3
.LEHB102:
	bl	_ZN8sqvectorI10SQLineInfoED1Ev(PLT)
.LEHE102:
	ldr	r3, [r7, #4]
	adds	r3, r3, #144
	mov	r0, r3
.LEHB103:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE103:
	ldr	r3, [r7, #4]
	adds	r3, r3, #136
	mov	r0, r3
.LEHB104:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE104:
	ldr	r3, [r7, #4]
	adds	r3, r3, #128
	mov	r0, r3
.LEHB105:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE105:
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	mov	r0, r3
.LEHB106:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE106:
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
.LEHB107:
	bl	_ZN8sqvectorI14SQLocalVarInfoED1Ev(PLT)
.LEHE107:
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
.LEHB108:
	bl	_ZN8sqvectorI13SQInstructionED1Ev(PLT)
.LEHE108:
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	mov	r0, r3
.LEHB109:
	bl	_ZN8sqvectorI10SQOuterVarED1Ev(PLT)
.LEHE109:
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	mov	r0, r3
.LEHB110:
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
.LEHE110:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
.LEHB111:
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
.LEHE111:
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
.LEHB112:
	bl	_ZN8sqvectorIiED1Ev(PLT)
.LEHE112:
	ldr	r3, [r7, #4]
	adds	r3, r3, #36
	mov	r0, r3
.LEHB113:
	bl	_ZN8sqvectorIiED1Ev(PLT)
.LEHE113:
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
.LEHB114:
	bl	_ZN8sqvectorIiED1Ev(PLT)
.LEHE114:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
.LEHB115:
	bl	_ZN8sqvectorI14SQLocalVarInfoED1Ev(PLT)
.LEHE115:
	ldr	r3, [r7, #4]
	b	.L444
.L425:
	ldr	r3, [r7, #4]
	adds	r3, r3, #240
	mov	r0, r3
	bl	_ZN8sqvectorIP11SQFuncStateED1Ev(PLT)
	b	.L407
.L426:
.L407:
	ldr	r3, [r7, #4]
	adds	r3, r3, #208
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L408
.L427:
.L408:
	ldr	r3, [r7, #4]
	adds	r3, r3, #196
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L409
.L428:
.L409:
	ldr	r3, [r7, #4]
	adds	r3, r3, #184
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L410
.L429:
.L410:
	ldr	r3, [r7, #4]
	adds	r3, r3, #172
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L411
.L430:
.L411:
	ldr	r3, [r7, #4]
	adds	r3, r3, #156
	mov	r0, r3
	bl	_ZN8sqvectorI10SQLineInfoED1Ev(PLT)
	b	.L412
.L431:
.L412:
	ldr	r3, [r7, #4]
	adds	r3, r3, #144
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L413
.L432:
.L413:
	ldr	r3, [r7, #4]
	adds	r3, r3, #136
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L414
.L433:
.L414:
	ldr	r3, [r7, #4]
	adds	r3, r3, #128
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L415
.L434:
.L415:
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L416
.L435:
.L416:
	ldr	r3, [r7, #4]
	adds	r3, r3, #108
	mov	r0, r3
	bl	_ZN8sqvectorI14SQLocalVarInfoED1Ev(PLT)
	b	.L417
.L436:
.L417:
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZN8sqvectorI13SQInstructionED1Ev(PLT)
	b	.L418
.L437:
.L418:
	ldr	r3, [r7, #4]
	adds	r3, r3, #84
	mov	r0, r3
	bl	_ZN8sqvectorI10SQOuterVarED1Ev(PLT)
	b	.L419
.L438:
.L419:
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L420
.L439:
.L420:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L421
.L440:
.L421:
	ldr	r3, [r7, #4]
	adds	r3, r3, #48
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L422
.L441:
.L422:
	ldr	r3, [r7, #4]
	adds	r3, r3, #36
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L423
.L442:
.L423:
	ldr	r3, [r7, #4]
	adds	r3, r3, #16
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L424
.L443:
.L424:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN8sqvectorI14SQLocalVarInfoED1Ev(PLT)
.LEHB116:
	bl	__cxa_end_cleanup(PLT)
.LEHE116:
.L444:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA233:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE233-.LLSDACSB233
.LLSDACSB233:
	.uleb128 .LEHB96-.LFB233
	.uleb128 .LEHE96-.LEHB96
	.uleb128 .L425-.LFB233
	.uleb128 0
	.uleb128 .LEHB97-.LFB233
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L426-.LFB233
	.uleb128 0
	.uleb128 .LEHB98-.LFB233
	.uleb128 .LEHE98-.LEHB98
	.uleb128 .L427-.LFB233
	.uleb128 0
	.uleb128 .LEHB99-.LFB233
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L428-.LFB233
	.uleb128 0
	.uleb128 .LEHB100-.LFB233
	.uleb128 .LEHE100-.LEHB100
	.uleb128 .L429-.LFB233
	.uleb128 0
	.uleb128 .LEHB101-.LFB233
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L430-.LFB233
	.uleb128 0
	.uleb128 .LEHB102-.LFB233
	.uleb128 .LEHE102-.LEHB102
	.uleb128 .L431-.LFB233
	.uleb128 0
	.uleb128 .LEHB103-.LFB233
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L432-.LFB233
	.uleb128 0
	.uleb128 .LEHB104-.LFB233
	.uleb128 .LEHE104-.LEHB104
	.uleb128 .L433-.LFB233
	.uleb128 0
	.uleb128 .LEHB105-.LFB233
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L434-.LFB233
	.uleb128 0
	.uleb128 .LEHB106-.LFB233
	.uleb128 .LEHE106-.LEHB106
	.uleb128 .L435-.LFB233
	.uleb128 0
	.uleb128 .LEHB107-.LFB233
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L436-.LFB233
	.uleb128 0
	.uleb128 .LEHB108-.LFB233
	.uleb128 .LEHE108-.LEHB108
	.uleb128 .L437-.LFB233
	.uleb128 0
	.uleb128 .LEHB109-.LFB233
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L438-.LFB233
	.uleb128 0
	.uleb128 .LEHB110-.LFB233
	.uleb128 .LEHE110-.LEHB110
	.uleb128 .L439-.LFB233
	.uleb128 0
	.uleb128 .LEHB111-.LFB233
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L440-.LFB233
	.uleb128 0
	.uleb128 .LEHB112-.LFB233
	.uleb128 .LEHE112-.LEHB112
	.uleb128 .L441-.LFB233
	.uleb128 0
	.uleb128 .LEHB113-.LFB233
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L442-.LFB233
	.uleb128 0
	.uleb128 .LEHB114-.LFB233
	.uleb128 .LEHE114-.LEHB114
	.uleb128 .L443-.LFB233
	.uleb128 0
	.uleb128 .LEHB115-.LFB233
	.uleb128 .LEHE115-.LEHB115
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB116-.LFB233
	.uleb128 .LEHE116-.LEHB116
	.uleb128 0
	.uleb128 0
.LLSDACSE233:
	.section	.text._ZN11SQFuncStateD2Ev
	.fnend
	.size	_ZN11SQFuncStateD2Ev, .-_ZN11SQFuncStateD2Ev
	.global	_ZN11SQFuncStateD1Ev
	.thumb_set _ZN11SQFuncStateD1Ev,_ZN11SQFuncStateD2Ev
	.section	.text._ZNK8sqvectorI13SQInstructionEixEj,"axG",%progbits,_ZNK8sqvectorI13SQInstructionEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorI13SQInstructionEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI13SQInstructionEixEj, %function
_ZNK8sqvectorI13SQInstructionEixEj:
	.fnstart
.LFB235:
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
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorI13SQInstructionEixEj, .-_ZNK8sqvectorI13SQInstructionEixEj
	.section	.text._ZN8sqvectorI13SQInstructionE8pop_backEv,"axG",%progbits,_ZN8sqvectorI13SQInstructionE8pop_backEv,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQInstructionE8pop_backEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQInstructionE8pop_backEv, %function
_ZN8sqvectorI13SQInstructionE8pop_backEv:
	.fnstart
.LFB236:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorI13SQInstructionE8pop_backEv, .-_ZN8sqvectorI13SQInstructionE8pop_backEv
	.section	.text._ZN8sqvectorIiE9push_backERKi,"axG",%progbits,_ZN8sqvectorIiE9push_backERKi,comdat
	.align	2
	.weak	_ZN8sqvectorIiE9push_backERKi
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiE9push_backERKi, %function
_ZN8sqvectorIiE9push_backERKi:
	.fnstart
.LFB237:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L449
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorIiE8_reallocEj(PLT)
.L449:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r0, #4
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L451
	ldr	r2, [r7]
	ldr	r2, [r2]
	str	r2, [r3]
.L451:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIiE9push_backERKi, .-_ZN8sqvectorIiE9push_backERKi
	.section	.text._ZNK8sqvectorIiE4sizeEv,"axG",%progbits,_ZNK8sqvectorIiE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIiE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIiE4sizeEv, %function
_ZNK8sqvectorIiE4sizeEv:
	.fnstart
.LFB238:
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
	.size	_ZNK8sqvectorIiE4sizeEv, .-_ZNK8sqvectorIiE4sizeEv
	.section	.text._ZNK8sqvectorI13SQInstructionE4sizeEv,"axG",%progbits,_ZNK8sqvectorI13SQInstructionE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI13SQInstructionE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI13SQInstructionE4sizeEv, %function
_ZNK8sqvectorI13SQInstructionE4sizeEv:
	.fnstart
.LFB239:
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
	.size	_ZNK8sqvectorI13SQInstructionE4sizeEv, .-_ZNK8sqvectorI13SQInstructionE4sizeEv
	.section	.text._ZN8sqvectorI14SQLocalVarInfoEC2Ev,"axG",%progbits,_ZN8sqvectorI14SQLocalVarInfoEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI14SQLocalVarInfoEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI14SQLocalVarInfoEC2Ev, %function
_ZN8sqvectorI14SQLocalVarInfoEC2Ev:
	.fnstart
.LFB241:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorI14SQLocalVarInfoEC2Ev, .-_ZN8sqvectorI14SQLocalVarInfoEC2Ev
	.weak	_ZN8sqvectorI14SQLocalVarInfoEC1Ev
	.thumb_set _ZN8sqvectorI14SQLocalVarInfoEC1Ev,_ZN8sqvectorI14SQLocalVarInfoEC2Ev
	.section	.text._ZN8sqvectorI14SQLocalVarInfoED2Ev,"axG",%progbits,_ZN8sqvectorI14SQLocalVarInfoED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI14SQLocalVarInfoED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI14SQLocalVarInfoED2Ev, %function
_ZN8sqvectorI14SQLocalVarInfoED2Ev:
	.fnstart
.LFB244:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L461
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L462
.L463:
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L462:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L463
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L461:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI14SQLocalVarInfoED2Ev, .-_ZN8sqvectorI14SQLocalVarInfoED2Ev
	.weak	_ZN8sqvectorI14SQLocalVarInfoED1Ev
	.thumb_set _ZN8sqvectorI14SQLocalVarInfoED1Ev,_ZN8sqvectorI14SQLocalVarInfoED2Ev
	.section	.text._ZN8sqvectorIiEC2Ev,"axG",%progbits,_ZN8sqvectorIiEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIiEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiEC2Ev, %function
_ZN8sqvectorIiEC2Ev:
	.fnstart
.LFB247:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorIiEC2Ev, .-_ZN8sqvectorIiEC2Ev
	.weak	_ZN8sqvectorIiEC1Ev
	.thumb_set _ZN8sqvectorIiEC1Ev,_ZN8sqvectorIiEC2Ev
	.section	.text._ZN8sqvectorIiED2Ev,"axG",%progbits,_ZN8sqvectorIiED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIiED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiED2Ev, %function
_ZN8sqvectorIiED2Ev:
	.fnstart
.LFB250:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L469
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L470
.L471:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L470:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L471
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #2
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L469:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIiED2Ev, .-_ZN8sqvectorIiED2Ev
	.weak	_ZN8sqvectorIiED1Ev
	.thumb_set _ZN8sqvectorIiED1Ev,_ZN8sqvectorIiED2Ev
	.section	.text._ZN8sqvectorI11SQObjectPtrEC2Ev,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrEC2Ev, %function
_ZN8sqvectorI11SQObjectPtrEC2Ev:
	.fnstart
.LFB253:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrEC2Ev, .-_ZN8sqvectorI11SQObjectPtrEC2Ev
	.weak	_ZN8sqvectorI11SQObjectPtrEC1Ev
	.thumb_set _ZN8sqvectorI11SQObjectPtrEC1Ev,_ZN8sqvectorI11SQObjectPtrEC2Ev
	.section	.text._ZN8sqvectorI11SQObjectPtrED2Ev,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrED2Ev, %function
_ZN8sqvectorI11SQObjectPtrED2Ev:
	.fnstart
.LFB256:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L477
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L478
.L479:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L478:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L479
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L477:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrED2Ev, .-_ZN8sqvectorI11SQObjectPtrED2Ev
	.weak	_ZN8sqvectorI11SQObjectPtrED1Ev
	.thumb_set _ZN8sqvectorI11SQObjectPtrED1Ev,_ZN8sqvectorI11SQObjectPtrED2Ev
	.section	.text._ZN8sqvectorI10SQOuterVarEC2Ev,"axG",%progbits,_ZN8sqvectorI10SQOuterVarEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI10SQOuterVarEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI10SQOuterVarEC2Ev, %function
_ZN8sqvectorI10SQOuterVarEC2Ev:
	.fnstart
.LFB259:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorI10SQOuterVarEC2Ev, .-_ZN8sqvectorI10SQOuterVarEC2Ev
	.weak	_ZN8sqvectorI10SQOuterVarEC1Ev
	.thumb_set _ZN8sqvectorI10SQOuterVarEC1Ev,_ZN8sqvectorI10SQOuterVarEC2Ev
	.section	.text._ZN8sqvectorI10SQOuterVarED2Ev,"axG",%progbits,_ZN8sqvectorI10SQOuterVarED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI10SQOuterVarED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI10SQOuterVarED2Ev, %function
_ZN8sqvectorI10SQOuterVarED2Ev:
	.fnstart
.LFB262:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L485
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L486
.L487:
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZN10SQOuterVarD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L486:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L487
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L485:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI10SQOuterVarED2Ev, .-_ZN8sqvectorI10SQOuterVarED2Ev
	.weak	_ZN8sqvectorI10SQOuterVarED1Ev
	.thumb_set _ZN8sqvectorI10SQOuterVarED1Ev,_ZN8sqvectorI10SQOuterVarED2Ev
	.section	.text._ZN8sqvectorI13SQInstructionEC2Ev,"axG",%progbits,_ZN8sqvectorI13SQInstructionEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQInstructionEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQInstructionEC2Ev, %function
_ZN8sqvectorI13SQInstructionEC2Ev:
	.fnstart
.LFB265:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorI13SQInstructionEC2Ev, .-_ZN8sqvectorI13SQInstructionEC2Ev
	.weak	_ZN8sqvectorI13SQInstructionEC1Ev
	.thumb_set _ZN8sqvectorI13SQInstructionEC1Ev,_ZN8sqvectorI13SQInstructionEC2Ev
	.section	.text._ZN8sqvectorI13SQInstructionED2Ev,"axG",%progbits,_ZN8sqvectorI13SQInstructionED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQInstructionED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQInstructionED2Ev, %function
_ZN8sqvectorI13SQInstructionED2Ev:
	.fnstart
.LFB268:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L493
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L494
.L495:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L494:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L495
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L493:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI13SQInstructionED2Ev, .-_ZN8sqvectorI13SQInstructionED2Ev
	.weak	_ZN8sqvectorI13SQInstructionED1Ev
	.thumb_set _ZN8sqvectorI13SQInstructionED1Ev,_ZN8sqvectorI13SQInstructionED2Ev
	.section	.text._ZN8sqvectorI10SQLineInfoEC2Ev,"axG",%progbits,_ZN8sqvectorI10SQLineInfoEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI10SQLineInfoEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI10SQLineInfoEC2Ev, %function
_ZN8sqvectorI10SQLineInfoEC2Ev:
	.fnstart
.LFB271:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorI10SQLineInfoEC2Ev, .-_ZN8sqvectorI10SQLineInfoEC2Ev
	.weak	_ZN8sqvectorI10SQLineInfoEC1Ev
	.thumb_set _ZN8sqvectorI10SQLineInfoEC1Ev,_ZN8sqvectorI10SQLineInfoEC2Ev
	.section	.text._ZN8sqvectorI10SQLineInfoED2Ev,"axG",%progbits,_ZN8sqvectorI10SQLineInfoED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI10SQLineInfoED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI10SQLineInfoED2Ev, %function
_ZN8sqvectorI10SQLineInfoED2Ev:
	.fnstart
.LFB274:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L501
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L502
.L503:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L502:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L503
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L501:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI10SQLineInfoED2Ev, .-_ZN8sqvectorI10SQLineInfoED2Ev
	.weak	_ZN8sqvectorI10SQLineInfoED1Ev
	.thumb_set _ZN8sqvectorI10SQLineInfoED1Ev,_ZN8sqvectorI10SQLineInfoED2Ev
	.section	.text._ZN8sqvectorIP11SQFuncStateEC2Ev,"axG",%progbits,_ZN8sqvectorIP11SQFuncStateEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIP11SQFuncStateEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIP11SQFuncStateEC2Ev, %function
_ZN8sqvectorIP11SQFuncStateEC2Ev:
	.fnstart
.LFB277:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorIP11SQFuncStateEC2Ev, .-_ZN8sqvectorIP11SQFuncStateEC2Ev
	.weak	_ZN8sqvectorIP11SQFuncStateEC1Ev
	.thumb_set _ZN8sqvectorIP11SQFuncStateEC1Ev,_ZN8sqvectorIP11SQFuncStateEC2Ev
	.section	.text._ZN8sqvectorIP11SQFuncStateED2Ev,"axG",%progbits,_ZN8sqvectorIP11SQFuncStateED5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIP11SQFuncStateED2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIP11SQFuncStateED2Ev, %function
_ZN8sqvectorIP11SQFuncStateED2Ev:
	.fnstart
.LFB280:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #16
	sub	sp, sp, #16
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L509
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L510
.L511:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L510:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L511
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #2
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L509:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIP11SQFuncStateED2Ev, .-_ZN8sqvectorIP11SQFuncStateED2Ev
	.weak	_ZN8sqvectorIP11SQFuncStateED1Ev
	.thumb_set _ZN8sqvectorIP11SQFuncStateED1Ev,_ZN8sqvectorIP11SQFuncStateED2Ev
	.section	.text._ZNK8sqvectorI14SQLocalVarInfoE4sizeEv,"axG",%progbits,_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv, %function
_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv:
	.fnstart
.LFB282:
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
	.size	_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv, .-_ZNK8sqvectorI14SQLocalVarInfoE4sizeEv
	.section	.text._ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_, %function
_ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_:
	.fnstart
.LFB283:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L516
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB117:
	bl	_ZN8sqvectorI14SQLocalVarInfoE8_reallocEj(PLT)
.LEHE117:
.L516:
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	adds	r0, r2, #1
	ldr	r3, [r7, #4]
	str	r0, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r5, r1, r3
	movs	r0, #20
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L517
	mov	r0, r4
	ldr	r1, [r7]
.LEHB118:
	bl	_ZN14SQLocalVarInfoC1ERKS_(PLT)
.LEHE118:
	mov	r3, r4
	b	.L522
.L517:
	mov	r3, r4
	b	.L522
.L521:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB119:
	bl	__cxa_end_cleanup(PLT)
.LEHE119:
.L522:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA283:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE283-.LLSDACSB283
.LLSDACSB283:
	.uleb128 .LEHB117-.LFB283
	.uleb128 .LEHE117-.LEHB117
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB118-.LFB283
	.uleb128 .LEHE118-.LEHB118
	.uleb128 .L521-.LFB283
	.uleb128 0
	.uleb128 .LEHB119-.LFB283
	.uleb128 .LEHE119-.LEHB119
	.uleb128 0
	.uleb128 0
.LLSDACSE283:
	.section	.text._ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_,comdat
	.fnend
	.size	_ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_, .-_ZN8sqvectorI14SQLocalVarInfoE9push_backERKS0_
	.section	.text._ZNK8sqvectorIiEixEj,"axG",%progbits,_ZNK8sqvectorIiEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorIiEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIiEixEj, %function
_ZNK8sqvectorIiEixEj:
	.fnstart
.LFB284:
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
	lsls	r3, r3, #2
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorIiEixEj, .-_ZNK8sqvectorIiEixEj
	.section	.text._ZNK8sqvectorIiE4backEv,"axG",%progbits,_ZNK8sqvectorIiE4backEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIiE4backEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIiE4backEv, %function
_ZNK8sqvectorIiE4backEv:
	.fnstart
.LFB285:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorIiE4backEv, .-_ZNK8sqvectorIiE4backEv
	.section	.text._ZNK8sqvectorI14SQLocalVarInfoEixEj,"axG",%progbits,_ZNK8sqvectorI14SQLocalVarInfoEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorI14SQLocalVarInfoEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI14SQLocalVarInfoEixEj, %function
_ZNK8sqvectorI14SQLocalVarInfoEixEj:
	.fnstart
.LFB286:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorI14SQLocalVarInfoEixEj, .-_ZNK8sqvectorI14SQLocalVarInfoEixEj
	.section	.text._ZN8sqvectorI14SQLocalVarInfoE8pop_backEv,"axG",%progbits,_ZN8sqvectorI14SQLocalVarInfoE8pop_backEv,comdat
	.align	2
	.weak	_ZN8sqvectorI14SQLocalVarInfoE8pop_backEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI14SQLocalVarInfoE8pop_backEv, %function
_ZN8sqvectorI14SQLocalVarInfoE8pop_backEv:
	.fnstart
.LFB287:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	bl	_ZN14SQLocalVarInfoD1Ev(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI14SQLocalVarInfoE8pop_backEv, .-_ZN8sqvectorI14SQLocalVarInfoE8pop_backEv
	.section	.text._ZN8sqvectorIiE8pop_backEv,"axG",%progbits,_ZN8sqvectorIiE8pop_backEv,comdat
	.align	2
	.weak	_ZN8sqvectorIiE8pop_backEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiE8pop_backEv, %function
_ZN8sqvectorIiE8pop_backEv:
	.fnstart
.LFB288:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorIiE8pop_backEv, .-_ZN8sqvectorIiE8pop_backEv
	.section	.text._ZNK8sqvectorI14SQLocalVarInfoE4backEv,"axG",%progbits,_ZNK8sqvectorI14SQLocalVarInfoE4backEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI14SQLocalVarInfoE4backEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI14SQLocalVarInfoE4backEv, %function
_ZNK8sqvectorI14SQLocalVarInfoE4backEv:
	.fnstart
.LFB289:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	subs	r3, r3, #20
	add	r3, r3, r1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorI14SQLocalVarInfoE4backEv, .-_ZNK8sqvectorI14SQLocalVarInfoE4backEv
	.section	.text._ZNK8sqvectorI10SQOuterVarE4sizeEv,"axG",%progbits,_ZNK8sqvectorI10SQOuterVarE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI10SQOuterVarE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI10SQOuterVarE4sizeEv, %function
_ZNK8sqvectorI10SQOuterVarE4sizeEv:
	.fnstart
.LFB290:
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
	.size	_ZNK8sqvectorI10SQOuterVarE4sizeEv, .-_ZNK8sqvectorI10SQOuterVarE4sizeEv
	.section	.text._ZNK8sqvectorI10SQOuterVarEixEj,"axG",%progbits,_ZNK8sqvectorI10SQOuterVarEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorI10SQOuterVarEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI10SQOuterVarEixEj, %function
_ZNK8sqvectorI10SQOuterVarEixEj:
	.fnstart
.LFB291:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r1
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorI10SQOuterVarEixEj, .-_ZNK8sqvectorI10SQOuterVarEixEj
	.section	.text._ZN8sqvectorI10SQOuterVarE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI10SQOuterVarE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI10SQOuterVarE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI10SQOuterVarE9push_backERKS0_, %function
_ZN8sqvectorI10SQOuterVarE9push_backERKS0_:
	.fnstart
.LFB292:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L538
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
.LEHB120:
	bl	_ZN8sqvectorI10SQOuterVarE8_reallocEj(PLT)
.LEHE120:
.L538:
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	adds	r0, r2, #1
	ldr	r3, [r7, #4]
	str	r0, [r3, #4]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	adds	r5, r1, r3
	movs	r0, #20
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L539
	mov	r0, r4
	ldr	r1, [r7]
.LEHB121:
	bl	_ZN10SQOuterVarC1ERKS_(PLT)
.LEHE121:
	mov	r3, r4
	b	.L544
.L539:
	mov	r3, r4
	b	.L544
.L543:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB122:
	bl	__cxa_end_cleanup(PLT)
.LEHE122:
.L544:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA292:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE292-.LLSDACSB292
.LLSDACSB292:
	.uleb128 .LEHB120-.LFB292
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB121-.LFB292
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L543-.LFB292
	.uleb128 0
	.uleb128 .LEHB122-.LFB292
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
.LLSDACSE292:
	.section	.text._ZN8sqvectorI10SQOuterVarE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI10SQOuterVarE9push_backERKS0_,comdat
	.fnend
	.size	_ZN8sqvectorI10SQOuterVarE9push_backERKS0_, .-_ZN8sqvectorI10SQOuterVarE9push_backERKS0_
	.section	.text._ZN8sqvectorI11SQObjectPtrE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_, %function
_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_:
	.fnstart
.LFB293:
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
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L546
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L546:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L547
	mov	r0, r4
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	mov	r3, r4
	b	.L548
.L547:
	mov	r3, r4
.L548:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_, .-_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_
	.section	.text._ZN8sqvectorI10SQLineInfoE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI10SQLineInfoE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI10SQLineInfoE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI10SQLineInfoE9push_backERKS0_, %function
_ZN8sqvectorI10SQLineInfoE9push_backERKS0_:
	.fnstart
.LFB294:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L551
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI10SQLineInfoE8_reallocEj(PLT)
.L551:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L553
	ldr	r1, [r7]
	mov	r2, r3
	ldmia	r1, {r0, r1}
	stmia	r2, {r0, r1}
.L553:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI10SQLineInfoE9push_backERKS0_, .-_ZN8sqvectorI10SQLineInfoE9push_backERKS0_
	.section	.text._ZN8sqvectorI10SQLineInfoE8pop_backEv,"axG",%progbits,_ZN8sqvectorI10SQLineInfoE8pop_backEv,comdat
	.align	2
	.weak	_ZN8sqvectorI10SQLineInfoE8pop_backEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI10SQLineInfoE8pop_backEv, %function
_ZN8sqvectorI10SQLineInfoE8pop_backEv:
	.fnstart
.LFB295:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorI10SQLineInfoE8pop_backEv, .-_ZN8sqvectorI10SQLineInfoE8pop_backEv
	.section	.text._ZN8sqvectorI13SQInstructionE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI13SQInstructionE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQInstructionE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQInstructionE9push_backERKS0_, %function
_ZN8sqvectorI13SQInstructionE9push_backERKS0_:
	.fnstart
.LFB296:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L557
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI13SQInstructionE8_reallocEj(PLT)
.L557:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L559
	ldr	r1, [r7]
	mov	r2, r3
	ldmia	r1, {r0, r1}
	stmia	r2, {r0, r1}
.L559:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI13SQInstructionE9push_backERKS0_, .-_ZN8sqvectorI13SQInstructionE9push_backERKS0_
	.section	.text._ZNK8sqvectorI11SQObjectPtrE4sizeEv,"axG",%progbits,_ZNK8sqvectorI11SQObjectPtrE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI11SQObjectPtrE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI11SQObjectPtrE4sizeEv, %function
_ZNK8sqvectorI11SQObjectPtrE4sizeEv:
	.fnstart
.LFB297:
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
	.size	_ZNK8sqvectorI11SQObjectPtrE4sizeEv, .-_ZNK8sqvectorI11SQObjectPtrE4sizeEv
	.section	.text._ZNK8sqvectorI10SQLineInfoE4sizeEv,"axG",%progbits,_ZNK8sqvectorI10SQLineInfoE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI10SQLineInfoE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI10SQLineInfoE4sizeEv, %function
_ZNK8sqvectorI10SQLineInfoE4sizeEv:
	.fnstart
.LFB298:
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
	.size	_ZNK8sqvectorI10SQLineInfoE4sizeEv, .-_ZNK8sqvectorI10SQLineInfoE4sizeEv
	.section	.text._ZNK8sqvectorI11SQObjectPtrEixEj,"axG",%progbits,_ZNK8sqvectorI11SQObjectPtrEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorI11SQObjectPtrEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI11SQObjectPtrEixEj, %function
_ZNK8sqvectorI11SQObjectPtrEixEj:
	.fnstart
.LFB299:
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
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorI11SQObjectPtrEixEj, .-_ZNK8sqvectorI11SQObjectPtrEixEj
	.section	.text._ZNK8sqvectorI10SQLineInfoEixEj,"axG",%progbits,_ZNK8sqvectorI10SQLineInfoEixEj,comdat
	.align	2
	.weak	_ZNK8sqvectorI10SQLineInfoEixEj
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI10SQLineInfoEixEj, %function
_ZNK8sqvectorI10SQLineInfoEixEj:
	.fnstart
.LFB300:
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
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorI10SQLineInfoEixEj, .-_ZNK8sqvectorI10SQLineInfoEixEj
	.section	.text._ZN8sqvectorIP11SQFuncStateE9push_backERKS1_,"axG",%progbits,_ZN8sqvectorIP11SQFuncStateE9push_backERKS1_,comdat
	.align	2
	.weak	_ZN8sqvectorIP11SQFuncStateE9push_backERKS1_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIP11SQFuncStateE9push_backERKS1_, %function
_ZN8sqvectorIP11SQFuncStateE9push_backERKS1_:
	.fnstart
.LFB301:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bhi	.L570
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorIP11SQFuncStateE8_reallocEj(PLT)
.L570:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	adds	r0, r3, #1
	ldr	r1, [r7, #4]
	str	r0, [r1, #4]
	lsls	r3, r3, #2
	add	r3, r3, r2
	movs	r0, #4
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L572
	ldr	r2, [r7]
	ldr	r2, [r2]
	str	r2, [r3]
.L572:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIP11SQFuncStateE9push_backERKS1_, .-_ZN8sqvectorIP11SQFuncStateE9push_backERKS1_
	.section	.text._ZNK8sqvectorIP11SQFuncStateE4backEv,"axG",%progbits,_ZNK8sqvectorIP11SQFuncStateE4backEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIP11SQFuncStateE4backEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIP11SQFuncStateE4backEv, %function
_ZNK8sqvectorIP11SQFuncStateE4backEv:
	.fnstart
.LFB302:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	add	r3, r3, #1073741824
	subs	r3, r3, #1
	lsls	r3, r3, #2
	add	r3, r3, r2
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZNK8sqvectorIP11SQFuncStateE4backEv, .-_ZNK8sqvectorIP11SQFuncStateE4backEv
	.section	.text._ZN8sqvectorIP11SQFuncStateE8pop_backEv,"axG",%progbits,_ZN8sqvectorIP11SQFuncStateE8pop_backEv,comdat
	.align	2
	.weak	_ZN8sqvectorIP11SQFuncStateE8pop_backEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIP11SQFuncStateE8pop_backEv, %function
_ZN8sqvectorIP11SQFuncStateE8pop_backEv:
	.fnstart
.LFB303:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN8sqvectorIP11SQFuncStateE8pop_backEv, .-_ZN8sqvectorIP11SQFuncStateE8pop_backEv
	.section	.text._ZNK8sqvectorIP11SQFuncStateE4sizeEv,"axG",%progbits,_ZNK8sqvectorIP11SQFuncStateE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorIP11SQFuncStateE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorIP11SQFuncStateE4sizeEv, %function
_ZNK8sqvectorIP11SQFuncStateE4sizeEv:
	.fnstart
.LFB304:
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
	.size	_ZNK8sqvectorIP11SQFuncStateE4sizeEv, .-_ZNK8sqvectorIP11SQFuncStateE4sizeEv
	.section	.text._ZN8sqvectorIiE8_reallocEj,"axG",%progbits,_ZN8sqvectorIiE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorIiE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiE8_reallocEj, %function
_ZN8sqvectorIiE8_reallocEj:
	.fnstart
.LFB305:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L580
	ldr	r3, [r7]
	b	.L581
.L580:
	movs	r3, #4
.L581:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r2, r3, #2
	ldr	r3, [r7]
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIiE8_reallocEj, .-_ZN8sqvectorIiE8_reallocEj
	.section	.text._ZN8sqvectorI14SQLocalVarInfoE8_reallocEj,"axG",%progbits,_ZN8sqvectorI14SQLocalVarInfoE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI14SQLocalVarInfoE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI14SQLocalVarInfoE8_reallocEj, %function
_ZN8sqvectorI14SQLocalVarInfoE8_reallocEj:
	.fnstart
.LFB306:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L583
	ldr	r3, [r7]
	b	.L584
.L583:
	movs	r3, #4
.L584:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r1, r3
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI14SQLocalVarInfoE8_reallocEj, .-_ZN8sqvectorI14SQLocalVarInfoE8_reallocEj
	.section	.text._ZN8sqvectorI10SQOuterVarE8_reallocEj,"axG",%progbits,_ZN8sqvectorI10SQOuterVarE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI10SQOuterVarE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI10SQOuterVarE8_reallocEj, %function
_ZN8sqvectorI10SQOuterVarE8_reallocEj:
	.fnstart
.LFB307:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L586
	ldr	r3, [r7]
	b	.L587
.L586:
	movs	r3, #4
.L587:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r0, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r1, r3
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r2, r3
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI10SQOuterVarE8_reallocEj, .-_ZN8sqvectorI10SQOuterVarE8_reallocEj
	.section	.text._ZN8sqvectorI11SQObjectPtrE8_reallocEj,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE8_reallocEj, %function
_ZN8sqvectorI11SQObjectPtrE8_reallocEj:
	.fnstart
.LFB308:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L589
	ldr	r3, [r7]
	b	.L590
.L589:
	movs	r3, #4
.L590:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r2, r3, #3
	ldr	r3, [r7]
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE8_reallocEj, .-_ZN8sqvectorI11SQObjectPtrE8_reallocEj
	.section	.text._ZN8sqvectorI10SQLineInfoE8_reallocEj,"axG",%progbits,_ZN8sqvectorI10SQLineInfoE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI10SQLineInfoE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI10SQLineInfoE8_reallocEj, %function
_ZN8sqvectorI10SQLineInfoE8_reallocEj:
	.fnstart
.LFB309:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L592
	ldr	r3, [r7]
	b	.L593
.L592:
	movs	r3, #4
.L593:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r2, r3, #3
	ldr	r3, [r7]
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI10SQLineInfoE8_reallocEj, .-_ZN8sqvectorI10SQLineInfoE8_reallocEj
	.section	.text._ZN8sqvectorI13SQInstructionE8_reallocEj,"axG",%progbits,_ZN8sqvectorI13SQInstructionE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI13SQInstructionE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI13SQInstructionE8_reallocEj, %function
_ZN8sqvectorI13SQInstructionE8_reallocEj:
	.fnstart
.LFB310:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L595
	ldr	r3, [r7]
	b	.L596
.L595:
	movs	r3, #4
.L596:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r2, r3, #3
	ldr	r3, [r7]
	lsls	r3, r3, #3
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI13SQInstructionE8_reallocEj, .-_ZN8sqvectorI13SQInstructionE8_reallocEj
	.section	.text._ZN8sqvectorIP11SQFuncStateE8_reallocEj,"axG",%progbits,_ZN8sqvectorIP11SQFuncStateE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorIP11SQFuncStateE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIP11SQFuncStateE8_reallocEj, %function
_ZN8sqvectorIP11SQFuncStateE8_reallocEj:
	.fnstart
.LFB311:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	cmp	r3, #0
	beq	.L598
	ldr	r3, [r7]
	b	.L599
.L598:
	movs	r3, #4
.L599:
	str	r3, [r7]
	ldr	r3, [r7, #4]
	ldr	r1, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r2, r3, #2
	ldr	r3, [r7]
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #8]
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIP11SQFuncStateE8_reallocEj, .-_ZN8sqvectorIP11SQFuncStateE8_reallocEj
	.section	.rodata._ZZN11SQFuncState9PopTargetEvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQFuncState9PopTargetEvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQFuncState9PopTargetEvE19__PRETTY_FUNCTION__, 35
_ZZN11SQFuncState9PopTargetEvE19__PRETTY_FUNCTION__:
	.ascii	"SQInteger SQFuncState::PopTarget()\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__, 36
_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQString*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__, 35
_ZZN11SQObjectPtrC1EP7SQTableE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQTable*)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
