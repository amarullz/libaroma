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
	.file	"sqstate.cpp"
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
	.section	.text._ZN12SQRefCountedC2Ev,"axG",%progbits,_ZN12SQRefCountedC5Ev,comdat
	.align	2
	.weak	_ZN12SQRefCountedC2Ev
	.thumb
	.thumb_func
	.type	_ZN12SQRefCountedC2Ev, %function
_ZN12SQRefCountedC2Ev:
	.fnstart
.LFB35:
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
.L8:
	.align	2
.L7:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC0+4)
	.word	_ZTV12SQRefCounted(GOT)
	.cantunwind
	.fnend
	.size	_ZN12SQRefCountedC2Ev, .-_ZN12SQRefCountedC2Ev
	.weak	_ZN12SQRefCountedC1Ev
	.thumb_set _ZN12SQRefCountedC1Ev,_ZN12SQRefCountedC2Ev
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
	beq	.L16
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L16:
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
	beq	.L19
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L19:
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
	beq	.L22
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L22
	movs	r3, #1
	b	.L23
.L22:
	movs	r3, #0
.L23:
	cmp	r3, #0
	beq	.L24
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L24:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP7SQTable, .-_ZN11SQObjectPtraSEP7SQTable
	.section	.rodata
	.align	2
.LC0:
	.ascii	"_unVal.pTable\000"
	.align	2
.LC1:
	.ascii	"../../../libs/squirrel/squirrel/sqobject.h\000"
	.section	.text._ZN11SQObjectPtrC2EP7SQArray,"axG",%progbits,_ZN11SQObjectPtrC5EP7SQArray,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP7SQArray
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP7SQArray, %function
_ZN11SQObjectPtrC2EP7SQArray:
	.fnstart
.LFB62:
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
	movs	r3, #64
	movt	r3, 2048
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L27
	ldr	r3, .L30
.LPIC1:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L30+4
.LPIC2:
	add	r3, pc
	mov	r1, r3
	movs	r2, #229
	ldr	r3, .L30+8
.LPIC3:
	add	r3, pc
	bl	__assert_fail(PLT)
.L27:
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
.L31:
	.align	2
.L30:
	.word	.LC0-(.LPIC1+4)
	.word	.LC1-(.LPIC2+4)
	.word	_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__-(.LPIC3+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP7SQArray, .-_ZN11SQObjectPtrC2EP7SQArray
	.weak	_ZN11SQObjectPtrC1EP7SQArray
	.thumb_set _ZN11SQObjectPtrC1EP7SQArray,_ZN11SQObjectPtrC2EP7SQArray
	.section	.text._ZN11SQObjectPtrC2EP15SQNativeClosure,"axG",%progbits,_ZN11SQObjectPtrC5EP15SQNativeClosure,comdat
	.align	2
	.weak	_ZN11SQObjectPtrC2EP15SQNativeClosure
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtrC2EP15SQNativeClosure, %function
_ZN11SQObjectPtrC2EP15SQNativeClosure:
	.fnstart
.LFB70:
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
	mov	r3, #512
	movt	r3, 2048
	str	r3, [r2]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L33
	ldr	r3, .L36
.LPIC4:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L36+4
.LPIC5:
	add	r3, pc
	mov	r1, r3
	movs	r2, #231
	ldr	r3, .L36+8
.LPIC6:
	add	r3, pc
	bl	__assert_fail(PLT)
.L33:
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
.L37:
	.align	2
.L36:
	.word	.LC0-(.LPIC4+4)
	.word	.LC1-(.LPIC5+4)
	.word	_ZZN11SQObjectPtrC1EP15SQNativeClosureE19__PRETTY_FUNCTION__-(.LPIC6+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP15SQNativeClosure, .-_ZN11SQObjectPtrC2EP15SQNativeClosure
	.weak	_ZN11SQObjectPtrC1EP15SQNativeClosure
	.thumb_set _ZN11SQObjectPtrC1EP15SQNativeClosure,_ZN11SQObjectPtrC2EP15SQNativeClosure
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
	bne	.L39
	ldr	r3, .L42
.LPIC7:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L42+4
.LPIC8:
	add	r3, pc
	mov	r1, r3
	movs	r2, #234
	ldr	r3, .L42+8
.LPIC9:
	add	r3, pc
	bl	__assert_fail(PLT)
.L39:
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
.L43:
	.align	2
.L42:
	.word	.LC0-(.LPIC7+4)
	.word	.LC1-(.LPIC8+4)
	.word	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__-(.LPIC9+4)
	.cantunwind
	.fnend
	.size	_ZN11SQObjectPtrC2EP8SQString, .-_ZN11SQObjectPtrC2EP8SQString
	.weak	_ZN11SQObjectPtrC1EP8SQString
	.thumb_set _ZN11SQObjectPtrC1EP8SQString,_ZN11SQObjectPtrC2EP8SQString
	.section	.text._ZN11SQObjectPtraSEP8SQString,"axG",%progbits,_ZN11SQObjectPtraSEP8SQString,comdat
	.align	2
	.weak	_ZN11SQObjectPtraSEP8SQString
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtraSEP8SQString, %function
_ZN11SQObjectPtraSEP8SQString:
	.fnstart
.LFB84:
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
	movs	r3, #16
	movt	r3, 2048
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
	beq	.L45
	ldr	r3, [r7, #8]
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
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L47:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSEP8SQString, .-_ZN11SQObjectPtraSEP8SQString
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
	beq	.L53
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L53
	movs	r3, #1
	b	.L54
.L53:
	movs	r3, #0
.L54:
	cmp	r3, #0
	beq	.L55
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	blx	r3
.L55:
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
	beq	.L58
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
.L58:
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L59
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L59
	movs	r3, #1
	b	.L60
.L59:
	movs	r3, #0
.L60:
	cmp	r3, #0
	beq	.L61
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L61:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtraSERK11tagSQObject, .-_ZN11SQObjectPtraSERK11tagSQObject
	.section	.text._ZN11SQObjectPtr4NullEv,"axG",%progbits,_ZN11SQObjectPtr4NullEv,comdat
	.align	2
	.weak	_ZN11SQObjectPtr4NullEv
	.thumb
	.thumb_func
	.type	_ZN11SQObjectPtr4NullEv, %function
_ZN11SQObjectPtr4NullEv:
	.fnstart
.LFB122:
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
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	str	r3, [r7, #8]
	ldr	r2, [r7, #4]
	movs	r3, #1
	movt	r3, 256
	str	r3, [r2]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	and	r3, r3, #134217728
	cmp	r3, #0
	beq	.L64
	ldr	r3, [r7, #8]
	ldr	r2, [r3, #4]
	subs	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L64
	movs	r3, #1
	b	.L65
.L64:
	movs	r3, #0
.L65:
	cmp	r3, #0
	beq	.L63
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #8]
	mov	r0, r2
	blx	r3
.L63:
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN11SQObjectPtr4NullEv, .-_ZN11SQObjectPtr4NullEv
	.section	.text._ZN13SQCollectableC2Ev,"axG",%progbits,_ZN13SQCollectableC5Ev,comdat
	.align	2
	.weak	_ZN13SQCollectableC2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQCollectableC2Ev, %function
_ZN13SQCollectableC2Ev:
	.fnstart
.LFB185:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L70
.LPIC10:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L70+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L71:
	.align	2
.L70:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC10+4)
	.word	_ZTV13SQCollectable(GOT)
	.cantunwind
	.fnend
	.size	_ZN13SQCollectableC2Ev, .-_ZN13SQCollectableC2Ev
	.weak	_ZN13SQCollectableC1Ev
	.thumb_set _ZN13SQCollectableC1Ev,_ZN13SQCollectableC2Ev
	.section	.text._ZN13SQCollectableD2Ev,"axG",%progbits,_ZN13SQCollectableD5Ev,comdat
	.align	2
	.weak	_ZN13SQCollectableD2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQCollectableD2Ev, %function
_ZN13SQCollectableD2Ev:
	.fnstart
.LFB188:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #8
	sub	sp, sp, #8
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r1, .L76
.LPIC11:
	add	r1, pc
	ldr	r3, [r7, #4]
	ldr	r2, .L76+4
	ldr	r2, [r1, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedD2Ev(PLT)
	movs	r3, #0
	cmp	r3, #0
	beq	.L74
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
.L74:
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L77:
	.align	2
.L76:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC11+4)
	.word	_ZTV13SQCollectable(GOT)
	.fnend
	.size	_ZN13SQCollectableD2Ev, .-_ZN13SQCollectableD2Ev
	.weak	_ZN13SQCollectableD1Ev
	.thumb_set _ZN13SQCollectableD1Ev,_ZN13SQCollectableD2Ev
	.section	.text._ZN13SQCollectableD0Ev,"axG",%progbits,_ZN13SQCollectableD0Ev,comdat
	.align	2
	.weak	_ZN13SQCollectableD0Ev
	.thumb
	.thumb_func
	.type	_ZN13SQCollectableD0Ev, %function
_ZN13SQCollectableD0Ev:
	.fnstart
.LFB190:
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
	bl	_ZN13SQCollectableD1Ev(PLT)
	ldr	r0, [r7, #4]
	bl	_ZdlPv(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQCollectableD0Ev, .-_ZN13SQCollectableD0Ev
	.section	.text._ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME,"axG",%progbits,_ZN15SQNativeClosureC5EP13SQSharedStatePFiP4SQVME,comdat
	.align	2
	.weak	_ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME
	.thumb
	.thumb_func
	.type	_ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME, %function
_ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME:
	.fnstart
.LFB222:
	@ args = 0, pretend = 0, frame = 16
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
	ldr	r4, .L89
.LPIC12:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L89+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	mov	r0, r3
.LEHB0:
	bl	_ZN8sqvectorIiEC1Ev(PLT)
.LEHE0:
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #4]
	str	r2, [r3, #52]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #12]
	mov	r0, r2
	mov	r1, r3
.LEHB1:
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE1:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #48]
	ldr	r3, [r7, #12]
	b	.L88
.L87:
	ldr	r3, [r7, #12]
	adds	r3, r3, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #28
	mov	r0, r3
	bl	_ZN8sqvectorIiED1Ev(PLT)
	b	.L85
.L86:
.L85:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB2:
	bl	__cxa_end_cleanup(PLT)
.LEHE2:
.L88:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L90:
	.align	2
.L89:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC12+4)
	.word	_ZTV15SQNativeClosure(GOT)
	.global	__gxx_personality_v0
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA222:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE222-.LLSDACSB222
.LLSDACSB222:
	.uleb128 .LEHB0-.LFB222
	.uleb128 .LEHE0-.LEHB0
	.uleb128 .L86-.LFB222
	.uleb128 0
	.uleb128 .LEHB1-.LFB222
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L87-.LFB222
	.uleb128 0
	.uleb128 .LEHB2-.LFB222
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
.LLSDACSE222:
	.section	.text._ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME,"axG",%progbits,_ZN15SQNativeClosureC5EP13SQSharedStatePFiP4SQVME,comdat
	.fnend
	.size	_ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME, .-_ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME
	.weak	_ZN15SQNativeClosureC1EP13SQSharedStatePFiP4SQVME
	.thumb_set _ZN15SQNativeClosureC1EP13SQSharedStatePFiP4SQVME,_ZN15SQNativeClosureC2EP13SQSharedStatePFiP4SQVME
	.section	.text._ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi,"axG",%progbits,_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi,comdat
	.align	2
	.weak	_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi
	.thumb
	.thumb_func
	.type	_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi, %function
_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi:
	.fnstart
.LFB224:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	lsls	r3, r3, #3
	adds	r3, r3, #64
	str	r3, [r7, #24]
	ldr	r3, [r7, #24]
	mov	r0, r3
.LEHB3:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE3:
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r5, [r7, #20]
	movs	r0, #64
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L93
	mov	r0, r4
	ldr	r1, [r7, #12]
	ldr	r2, [r7, #8]
.LEHB4:
	bl	_ZN15SQNativeClosureC1EP13SQSharedStatePFiP4SQVME(PLT)
.LEHE4:
.L93:
	ldr	r3, [r7, #20]
	add	r2, r3, #64
	ldr	r3, [r7, #20]
	str	r2, [r3, #40]
	ldr	r2, [r7, #4]
	ldr	r3, [r7, #20]
	str	r2, [r3, #44]
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L94
.L97:
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #40]
	ldr	r3, [r7, #28]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L96
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L96:
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L94:
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #44]
	mov	r2, r3
	ldr	r3, [r7, #28]
	cmp	r2, r3
	bgt	.L97
	ldr	r3, [r7, #20]
	b	.L101
.L100:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB5:
	bl	__cxa_end_cleanup(PLT)
.LEHE5:
.L101:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA224:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE224-.LLSDACSB224
.LLSDACSB224:
	.uleb128 .LEHB3-.LFB224
	.uleb128 .LEHE3-.LEHB3
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB4-.LFB224
	.uleb128 .LEHE4-.LEHB4
	.uleb128 .L100-.LFB224
	.uleb128 0
	.uleb128 .LEHB5-.LFB224
	.uleb128 .LEHE5-.LEHB5
	.uleb128 0
	.uleb128 0
.LLSDACSE224:
	.section	.text._ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi,"axG",%progbits,_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi,comdat
	.fnend
	.size	_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi, .-_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi
	.section	.text._Z8_hashstrPKcj,"axG",%progbits,_Z8_hashstrPKcj,comdat
	.align	2
	.weak	_Z8_hashstrPKcj
	.thumb
	.thumb_func
	.type	_Z8_hashstrPKcj, %function
_Z8_hashstrPKcj:
	.fnstart
.LFB233:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #20
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	str	r3, [r7, #12]
	ldr	r3, [r7]
	lsrs	r3, r3, #5
	orr	r3, r3, #1
	str	r3, [r7, #8]
	b	.L103
.L104:
	ldr	r3, [r7, #12]
	lsls	r2, r3, #5
	ldr	r3, [r7, #12]
	lsrs	r3, r3, #2
	add	r2, r2, r3
	ldr	r3, [r7, #4]
	adds	r1, r3, #1
	str	r1, [r7, #4]
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, r2
	ldr	r2, [r7, #12]
	eors	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	subs	r3, r2, r3
	str	r3, [r7]
.L103:
	ldr	r2, [r7]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L104
	ldr	r3, [r7, #12]
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z8_hashstrPKcj, .-_Z8_hashstrPKcj
	.section	.text._ZN8SQStringC2Ev,"axG",%progbits,_ZN8SQStringC5Ev,comdat
	.align	2
	.weak	_ZN8SQStringC2Ev
	.thumb
	.thumb_func
	.type	_ZN8SQStringC2Ev, %function
_ZN8SQStringC2Ev:
	.fnstart
.LFB235:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r4, .L109
.LPIC13:
	add	r4, pc
	ldr	r3, [r7, #4]
	mov	r0, r3
	bl	_ZN12SQRefCountedC2Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, .L109+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L110:
	.align	2
.L109:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC13+4)
	.word	_ZTV8SQString(GOT)
	.cantunwind
	.fnend
	.size	_ZN8SQStringC2Ev, .-_ZN8SQStringC2Ev
	.weak	_ZN8SQStringC1Ev
	.thumb_set _ZN8SQStringC1Ev,_ZN8SQStringC2Ev
	.section	.text._Z7HashObjRK11SQObjectPtr,"axG",%progbits,_Z7HashObjRK11SQObjectPtr,comdat
	.align	2
	.weak	_Z7HashObjRK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_Z7HashObjRK11SQObjectPtr, %function
_Z7HashObjRK11SQObjectPtr:
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
	ldr	r3, [r3]
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	beq	.L113
	movs	r2, #2
	movt	r2, 1280
	cmp	r3, r2
	bgt	.L114
	movs	r2, #8
	movt	r2, 256
	cmp	r3, r2
	beq	.L113
	b	.L112
.L114:
	movs	r2, #4
	movt	r2, 1280
	cmp	r3, r2
	beq	.L115
	movs	r2, #16
	movt	r2, 2048
	cmp	r3, r2
	bne	.L112
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3, #24]
	b	.L117
.L115:
	ldr	r3, [r7, #4]
	flds	s15, [r3, #4]
	ftosizs	s15, s15
	fmrs	r3, s15	@ int
	b	.L117
.L113:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	b	.L117
.L112:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	asrs	r3, r3, #3
.L117:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_Z7HashObjRK11SQObjectPtr, .-_Z7HashObjRK11SQObjectPtr
	.section	.text._ZN7SQTable6CreateEP13SQSharedStatei,"axG",%progbits,_ZN7SQTable6CreateEP13SQSharedStatei,comdat
	.align	2
	.weak	_ZN7SQTable6CreateEP13SQSharedStatei
	.thumb
	.thumb_func
	.type	_ZN7SQTable6CreateEP13SQSharedStatei, %function
_ZN7SQTable6CreateEP13SQSharedStatei:
	.fnstart
.LFB245:
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
.LEHB6:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE6:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #44
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L120
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB7:
	bl	_ZN7SQTableC1EP13SQSharedStatei(PLT)
.LEHE7:
.L120:
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	b	.L124
.L123:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB8:
	bl	__cxa_end_cleanup(PLT)
.LEHE8:
.L124:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA245:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE245-.LLSDACSB245
.LLSDACSB245:
	.uleb128 .LEHB6-.LFB245
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB7-.LFB245
	.uleb128 .LEHE7-.LEHB7
	.uleb128 .L123-.LFB245
	.uleb128 0
	.uleb128 .LEHB8-.LFB245
	.uleb128 .LEHE8-.LEHB8
	.uleb128 0
	.uleb128 0
.LLSDACSE245:
	.section	.text._ZN7SQTable6CreateEP13SQSharedStatei,"axG",%progbits,_ZN7SQTable6CreateEP13SQSharedStatei,comdat
	.fnend
	.size	_ZN7SQTable6CreateEP13SQSharedStatei, .-_ZN7SQTable6CreateEP13SQSharedStatei
	.section	.text._ZN7SQArrayC2EP13SQSharedStatei,"axG",%progbits,_ZN7SQArrayC5EP13SQSharedStatei,comdat
	.align	2
	.weak	_ZN7SQArrayC2EP13SQSharedStatei
	.thumb
	.thumb_func
	.type	_ZN7SQArrayC2EP13SQSharedStatei, %function
_ZN7SQArrayC2EP13SQSharedStatei:
	.fnstart
.LFB262:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r7, lr}
	.save {r4, r5, r7, lr}
	.pad #24
	sub	sp, sp, #24
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r4, .L135
.LPIC14:
	add	r4, pc
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableC2Ev(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, .L135+4
	ldr	r2, [r4, r2]
	adds	r2, r2, #8
	str	r2, [r3]
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB9:
	bl	_ZN8sqvectorI11SQObjectPtrEC1Ev(PLT)
.LEHE9:
	ldr	r3, [r7, #12]
	add	r5, r3, #24
	ldr	r4, [r7, #4]
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	add	r3, r7, #16
	mov	r0, r5
	mov	r1, r4
	mov	r2, r3
.LEHB10:
	bl	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_(PLT)
.LEHE10:
	add	r3, r7, #16
	mov	r0, r3
.LEHB11:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #12]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #20]
	add	r2, r3, #68
	ldr	r3, [r7, #12]
	mov	r0, r2
	mov	r1, r3
	bl	_ZN13SQCollectable10AddToChainEPPS_S0_(PLT)
.LEHE11:
	ldr	r3, [r7, #12]
	b	.L134
.L133:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L129
.L132:
.L129:
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	b	.L130
.L131:
.L130:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN13SQCollectableD2Ev(PLT)
.LEHB12:
	bl	__cxa_end_cleanup(PLT)
.LEHE12:
.L134:
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
.L136:
	.align	2
.L135:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC14+4)
	.word	_ZTV7SQArray(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA262:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE262-.LLSDACSB262
.LLSDACSB262:
	.uleb128 .LEHB9-.LFB262
	.uleb128 .LEHE9-.LEHB9
	.uleb128 .L131-.LFB262
	.uleb128 0
	.uleb128 .LEHB10-.LFB262
	.uleb128 .LEHE10-.LEHB10
	.uleb128 .L133-.LFB262
	.uleb128 0
	.uleb128 .LEHB11-.LFB262
	.uleb128 .LEHE11-.LEHB11
	.uleb128 .L132-.LFB262
	.uleb128 0
	.uleb128 .LEHB12-.LFB262
	.uleb128 .LEHE12-.LEHB12
	.uleb128 0
	.uleb128 0
.LLSDACSE262:
	.section	.text._ZN7SQArrayC2EP13SQSharedStatei,"axG",%progbits,_ZN7SQArrayC5EP13SQSharedStatei,comdat
	.fnend
	.size	_ZN7SQArrayC2EP13SQSharedStatei, .-_ZN7SQArrayC2EP13SQSharedStatei
	.weak	_ZN7SQArrayC1EP13SQSharedStatei
	.thumb_set _ZN7SQArrayC1EP13SQSharedStatei,_ZN7SQArrayC2EP13SQSharedStatei
	.section	.text._ZN7SQArray6CreateEP13SQSharedStatei,"axG",%progbits,_ZN7SQArray6CreateEP13SQSharedStatei,comdat
	.align	2
	.weak	_ZN7SQArray6CreateEP13SQSharedStatei
	.thumb
	.thumb_func
	.type	_ZN7SQArray6CreateEP13SQSharedStatei, %function
_ZN7SQArray6CreateEP13SQSharedStatei:
	.fnstart
.LFB268:
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
	movs	r0, #36
.LEHB13:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE13:
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r5, [r7, #12]
	movs	r0, #36
	mov	r1, r5
	bl	_ZnwjPv(PLT)
	mov	r4, r0
	cmp	r4, #0
	beq	.L139
	mov	r0, r4
	ldr	r1, [r7, #4]
	ldr	r2, [r7]
.LEHB14:
	bl	_ZN7SQArrayC1EP13SQSharedStatei(PLT)
.LEHE14:
.L139:
	ldr	r3, [r7, #12]
	b	.L143
.L142:
	mov	r0, r4
	mov	r1, r5
	bl	_ZdlPvS_(PLT)
.LEHB15:
	bl	__cxa_end_cleanup(PLT)
.LEHE15:
.L143:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA268:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE268-.LLSDACSB268
.LLSDACSB268:
	.uleb128 .LEHB13-.LFB268
	.uleb128 .LEHE13-.LEHB13
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB14-.LFB268
	.uleb128 .LEHE14-.LEHB14
	.uleb128 .L142-.LFB268
	.uleb128 0
	.uleb128 .LEHB15-.LFB268
	.uleb128 .LEHE15-.LEHB15
	.uleb128 0
	.uleb128 0
.LLSDACSE268:
	.section	.text._ZN7SQArray6CreateEP13SQSharedStatei,"axG",%progbits,_ZN7SQArray6CreateEP13SQSharedStatei,comdat
	.fnend
	.size	_ZN7SQArray6CreateEP13SQSharedStatei, .-_ZN7SQArray6CreateEP13SQSharedStatei
	.section	.text._ZN7SQArray6AppendERK11tagSQObject,"axG",%progbits,_ZN7SQArray6AppendERK11tagSQObject,comdat
	.align	2
	.weak	_ZN7SQArray6AppendERK11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN7SQArray6AppendERK11tagSQObject, %function
_ZN7SQArray6AppendERK11tagSQObject:
	.fnstart
.LFB279:
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
	ldr	r3, [r7, #4]
	add	r4, r3, #24
	add	r3, r7, #8
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #8
	mov	r0, r4
	mov	r1, r3
.LEHB16:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE16:
	add	r3, r7, #8
	mov	r0, r3
.LEHB17:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE17:
	b	.L147
.L146:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB18:
	bl	__cxa_end_cleanup(PLT)
.LEHE18:
.L147:
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA279:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE279-.LLSDACSB279
.LLSDACSB279:
	.uleb128 .LEHB16-.LFB279
	.uleb128 .LEHE16-.LEHB16
	.uleb128 .L146-.LFB279
	.uleb128 0
	.uleb128 .LEHB17-.LFB279
	.uleb128 .LEHE17-.LEHB17
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB18-.LFB279
	.uleb128 .LEHE18-.LEHB18
	.uleb128 0
	.uleb128 0
.LLSDACSE279:
	.section	.text._ZN7SQArray6AppendERK11tagSQObject,"axG",%progbits,_ZN7SQArray6AppendERK11tagSQObject,comdat
	.fnend
	.size	_ZN7SQArray6AppendERK11tagSQObject, .-_ZN7SQArray6AppendERK11tagSQObject
	.section	.text._ZN13SQSharedStateC2Ev,"ax",%progbits
	.align	2
	.global	_ZN13SQSharedStateC2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQSharedStateC2Ev, %function
_ZN13SQSharedStateC2Ev:
	.fnstart
.LFB314:
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
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB19:
	bl	_ZN8RefTableC1Ev(PLT)
.LEHE19:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #52
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #104
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #128
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #136
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #144
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #152
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #160]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #164]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #168]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #172]
	ldr	r3, [r7, #4]
	movs	r2, #0
	strb	r2, [r3, #173]
	ldr	r3, [r7, #4]
	b	.L153
.L152:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB20:
	bl	__cxa_end_cleanup(PLT)
.LEHE20:
.L153:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA314:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE314-.LLSDACSB314
.LLSDACSB314:
	.uleb128 .LEHB19-.LFB314
	.uleb128 .LEHE19-.LEHB19
	.uleb128 .L152-.LFB314
	.uleb128 0
	.uleb128 .LEHB20-.LFB314
	.uleb128 .LEHE20-.LEHB20
	.uleb128 0
	.uleb128 0
.LLSDACSE314:
	.section	.text._ZN13SQSharedStateC2Ev
	.fnend
	.size	_ZN13SQSharedStateC2Ev, .-_ZN13SQSharedStateC2Ev
	.global	_ZN13SQSharedStateC1Ev
	.thumb_set _ZN13SQSharedStateC1Ev,_ZN13SQSharedStateC2Ev
	.section	.text._Z15CompileTypemaskR8sqvectorIiEPKc,"ax",%progbits
	.align	2
	.global	_Z15CompileTypemaskR8sqvectorIiEPKc
	.thumb
	.thumb_func
	.type	_Z15CompileTypemaskR8sqvectorIiEPKc, %function
_Z15CompileTypemaskR8sqvectorIiEPKc:
	.fnstart
.LFB316:
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
	movs	r3, #0
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L155
.L180:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	subs	r3, r3, #32
	cmp	r3, #89
	bhi	.L156
	adr	r1, .L158
	ldr	r2, [r1, r3, lsl #2]
	add	r1, r1, r2
	bx	r1
	.p2align 2
.L158:
	.word	.L157+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L159+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L160+1-.L158
	.word	.L161+1-.L158
	.word	.L162+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L163+1-.L158
	.word	.L164+1-.L158
	.word	.L156+1-.L158
	.word	.L165+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L156+1-.L158
	.word	.L166+1-.L158
	.word	.L167+1-.L158
	.word	.L168+1-.L158
	.word	.L156+1-.L158
	.word	.L169+1-.L158
	.word	.L170+1-.L158
	.word	.L171+1-.L158
	.word	.L172+1-.L158
	.word	.L173+1-.L158
	.word	.L156+1-.L158
	.word	.L174+1-.L158
	.word	.L175+1-.L158
.L167:
	ldr	r3, [r7, #8]
	orr	r3, r3, #1
	str	r3, [r7, #8]
	b	.L176
.L165:
	ldr	r3, [r7, #8]
	orr	r3, r3, #2
	str	r3, [r7, #8]
	b	.L176
.L163:
	ldr	r3, [r7, #8]
	orr	r3, r3, #4
	str	r3, [r7, #8]
	b	.L176
.L166:
	ldr	r3, [r7, #8]
	orr	r3, r3, #6
	str	r3, [r7, #8]
	b	.L176
.L170:
	ldr	r3, [r7, #8]
	orr	r3, r3, #16
	str	r3, [r7, #8]
	b	.L176
.L171:
	ldr	r3, [r7, #8]
	orr	r3, r3, #32
	str	r3, [r7, #8]
	b	.L176
.L160:
	ldr	r3, [r7, #8]
	orr	r3, r3, #64
	str	r3, [r7, #8]
	b	.L176
.L172:
	ldr	r3, [r7, #8]
	orr	r3, r3, #128
	str	r3, [r7, #8]
	b	.L176
.L162:
	ldr	r3, [r7, #8]
	orr	r3, r3, #768
	str	r3, [r7, #8]
	b	.L176
.L161:
	ldr	r3, [r7, #8]
	orr	r3, r3, #8
	str	r3, [r7, #8]
	b	.L176
.L164:
	ldr	r3, [r7, #8]
	orr	r3, r3, #1024
	str	r3, [r7, #8]
	b	.L176
.L168:
	ldr	r3, [r7, #8]
	orr	r3, r3, #2048
	str	r3, [r7, #8]
	b	.L176
.L173:
	ldr	r3, [r7, #8]
	orr	r3, r3, #4096
	str	r3, [r7, #8]
	b	.L176
.L174:
	ldr	r3, [r7, #8]
	orr	r3, r3, #32768
	str	r3, [r7, #8]
	b	.L176
.L175:
	ldr	r3, [r7, #8]
	orr	r3, r3, #16384
	str	r3, [r7, #8]
	b	.L176
.L169:
	ldr	r3, [r7, #8]
	orr	r3, r3, #65536
	str	r3, [r7, #8]
	b	.L176
.L159:
	mov	r3, #-1
	str	r3, [r7, #8]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L155
.L157:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	b	.L155
.L156:
	movs	r3, #0
	b	.L181
.L176:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #124
	bne	.L178
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L179
	movs	r3, #0
	b	.L181
.L179:
	b	.L155
.L178:
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorIiE9push_backERKi(PLT)
	movs	r3, #0
	str	r3, [r7, #8]
.L155:
	ldr	r3, [r7, #12]
	ldr	r2, [r7]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L180
	movs	r3, #1
.L181:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_Z15CompileTypemaskR8sqvectorIiEPKc, .-_Z15CompileTypemaskR8sqvectorIiEPKc
	.section	.text._Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction,"ax",%progbits
	.align	2
	.global	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction
	.thumb
	.thumb_func
	.type	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction, %function
_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction:
	.fnstart
.LFB317:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #36]
	ldr	r0, [r7, #4]
	movs	r1, #0
.LEHB21:
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	str	r3, [r7, #32]
	b	.L183
.L188:
	ldr	r3, [r7, #36]
	lsls	r3, r3, #4
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3, #4]
	ldr	r0, [r7, #4]
	mov	r1, r3
	movs	r2, #0
	bl	_ZN15SQNativeClosure6CreateEP13SQSharedStatePFiP4SQVMEi(PLT)
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #36]
	lsls	r3, r3, #4
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #28]
	str	r2, [r3, #24]
	ldr	r3, [r7, #28]
	add	r4, r3, #56
	ldr	r3, [r7, #36]
	lsls	r3, r3, #4
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	mov	r0, r4
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
	ldr	r3, [r7, #36]
	lsls	r3, r3, #4
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L184
	ldr	r3, [r7, #28]
	add	r2, r3, #28
	ldr	r3, [r7, #36]
	lsls	r3, r3, #4
	ldr	r1, [r7]
	add	r3, r3, r1
	ldr	r3, [r3, #12]
	mov	r0, r2
	mov	r1, r3
	bl	_Z15CompileTypemaskR8sqvectorIiEPKc(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L184
	movs	r3, #1
	b	.L185
.L184:
	movs	r3, #0
.L185:
	cmp	r3, #0
	beq	.L186
	movs	r3, #0
	b	.L193
.L186:
	ldr	r3, [r7, #36]
	lsls	r3, r3, #4
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3]
	ldr	r0, [r7, #4]
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE21:
	mov	r3, r0
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #28]
	bl	_ZN11SQObjectPtrC1EP15SQNativeClosure(PLT)
	add	r2, r7, #12
	add	r3, r7, #20
	ldr	r0, [r7, #32]
	mov	r1, r2
	mov	r2, r3
.LEHB22:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE22:
	add	r3, r7, #20
	mov	r0, r3
.LEHB23:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE23:
	add	r3, r7, #12
	mov	r0, r3
.LEHB24:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE24:
	ldr	r3, [r7, #36]
	adds	r3, r3, #1
	str	r3, [r7, #36]
.L183:
	ldr	r3, [r7, #36]
	lsls	r3, r3, #4
	ldr	r2, [r7]
	add	r3, r3, r2
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L188
	ldr	r3, [r7, #32]
	b	.L193
.L192:
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L190
.L191:
.L190:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB25:
	bl	__cxa_end_cleanup(PLT)
.LEHE25:
.L193:
	mov	r0, r3
	adds	r7, r7, #44
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA317:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE317-.LLSDACSB317
.LLSDACSB317:
	.uleb128 .LEHB21-.LFB317
	.uleb128 .LEHE21-.LEHB21
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB22-.LFB317
	.uleb128 .LEHE22-.LEHB22
	.uleb128 .L192-.LFB317
	.uleb128 0
	.uleb128 .LEHB23-.LFB317
	.uleb128 .LEHE23-.LEHB23
	.uleb128 .L191-.LFB317
	.uleb128 0
	.uleb128 .LEHB24-.LFB317
	.uleb128 .LEHE24-.LEHB24
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB25-.LFB317
	.uleb128 .LEHE25-.LEHB25
	.uleb128 0
	.uleb128 0
.LLSDACSE317:
	.section	.text._Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction
	.fnend
	.size	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction, .-_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction
	.section	.rodata
	.align	2
.LC2:
	.ascii	"null\000"
	.align	2
.LC3:
	.ascii	"table\000"
	.align	2
.LC4:
	.ascii	"array\000"
	.align	2
.LC5:
	.ascii	"closure\000"
	.align	2
.LC6:
	.ascii	"string\000"
	.align	2
.LC7:
	.ascii	"userdata\000"
	.align	2
.LC8:
	.ascii	"integer\000"
	.align	2
.LC9:
	.ascii	"float\000"
	.align	2
.LC10:
	.ascii	"userpointer\000"
	.align	2
.LC11:
	.ascii	"function\000"
	.align	2
.LC12:
	.ascii	"generator\000"
	.align	2
.LC13:
	.ascii	"thread\000"
	.align	2
.LC14:
	.ascii	"class\000"
	.align	2
.LC15:
	.ascii	"instance\000"
	.align	2
.LC16:
	.ascii	"bool\000"
	.align	2
.LC17:
	.ascii	"_add\000"
	.align	2
.LC18:
	.ascii	"_sub\000"
	.align	2
.LC19:
	.ascii	"_mul\000"
	.align	2
.LC20:
	.ascii	"_div\000"
	.align	2
.LC21:
	.ascii	"_unm\000"
	.align	2
.LC22:
	.ascii	"_modulo\000"
	.align	2
.LC23:
	.ascii	"_set\000"
	.align	2
.LC24:
	.ascii	"_get\000"
	.align	2
.LC25:
	.ascii	"_typeof\000"
	.align	2
.LC26:
	.ascii	"_nexti\000"
	.align	2
.LC27:
	.ascii	"_cmp\000"
	.align	2
.LC28:
	.ascii	"_call\000"
	.align	2
.LC29:
	.ascii	"_cloned\000"
	.align	2
.LC30:
	.ascii	"_newslot\000"
	.align	2
.LC31:
	.ascii	"_delslot\000"
	.align	2
.LC32:
	.ascii	"_tostring\000"
	.align	2
.LC33:
	.ascii	"_newmember\000"
	.align	2
.LC34:
	.ascii	"_inherited\000"
	.align	2
.LC35:
	.ascii	"constructor\000"
	.section	.text._ZN13SQSharedState4InitEv,"ax",%progbits
	.align	2
	.global	_ZN13SQSharedState4InitEv
	.thumb
	.thumb_func
	.type	_ZN13SQSharedState4InitEv, %function
_ZN13SQSharedState4InitEv:
	.fnstart
.LFB318:
	@ args = 0, pretend = 0, frame = 416
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	.save {r4, r5, r6, r7, lr}
	.pad #420
	sub	sp, sp, #420
	.setfp r7, sp, #0
	add	r7, sp, #0
	adds	r3, r7, #4
	str	r0, [r3]
	ldr	r4, .L314
.LPIC49:
	add	r4, pc
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #176]
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #180]
	adds	r3, r7, #4
	ldr	r3, [r3]
	movs	r2, #0
	str	r2, [r3, #68]
	movs	r0, #16
.LEHB26:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE26:
	mov	r2, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #20]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #20]
	movs	r0, #16
	mov	r1, r6
	bl	_ZnwjPv(PLT)
	mov	r5, r0
	cmp	r5, #0
	beq	.L196
	adds	r3, r7, #4
	mov	r0, r5
	ldr	r1, [r3]
.LEHB27:
	bl	_ZN13SQStringTableC1EP13SQSharedState(PLT)
.LEHE27:
.L196:
	movs	r0, #12
.LEHB28:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE28:
	mov	r2, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3]
	movs	r0, #12
	mov	r1, r6
	bl	_ZnwjPv(PLT)
	mov	r5, r0
	cmp	r5, #0
	beq	.L198
	mov	r0, r5
.LEHB29:
	bl	_ZN8sqvectorI11SQObjectPtrEC1Ev(PLT)
.LEHE29:
.L198:
	movs	r0, #12
.LEHB30:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE30:
	mov	r2, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #12]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #12]
	movs	r0, #12
	mov	r1, r6
	bl	_ZnwjPv(PLT)
	mov	r5, r0
	cmp	r5, #0
	beq	.L200
	mov	r0, r5
.LEHB31:
	bl	_ZN8sqvectorI11SQObjectPtrEC1Ev(PLT)
.LEHE31:
.L200:
	movs	r0, #12
.LEHB32:
	bl	_Z12sq_vm_mallocj(PLT)
.LEHE32:
	mov	r2, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	str	r2, [r3, #16]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #16]
	movs	r0, #12
	mov	r1, r6
	bl	_ZnwjPv(PLT)
	mov	r5, r0
	cmp	r5, #0
	beq	.L202
	mov	r0, r5
.LEHB33:
	bl	_ZN8sqvectorI11SQObjectPtrEC1Ev(PLT)
.LEHE33:
.L202:
	adds	r3, r7, #4
	ldr	r3, [r3]
	adds	r5, r3, #4
	adds	r3, r7, #4
	ldr	r0, [r3]
	movs	r1, #17
.LEHB34:
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+4
.LPIC15:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE34:
	mov	r3, r0
	add	r2, r7, #8
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #8
	mov	r0, r5
	mov	r1, r3
.LEHB35:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE35:
	add	r3, r7, #8
	mov	r0, r3
.LEHB36:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+8
.LPIC16:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE36:
	mov	r3, r0
	add	r2, r7, #16
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #16
	mov	r0, r5
	mov	r1, r3
.LEHB37:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE37:
	add	r3, r7, #16
	mov	r0, r3
.LEHB38:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+12
.LPIC17:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE38:
	mov	r3, r0
	add	r2, r7, #24
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #24
	mov	r0, r5
	mov	r1, r3
.LEHB39:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE39:
	add	r3, r7, #24
	mov	r0, r3
.LEHB40:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+16
.LPIC18:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE40:
	mov	r3, r0
	add	r2, r7, #32
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #32
	mov	r0, r5
	mov	r1, r3
.LEHB41:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE41:
	add	r3, r7, #32
	mov	r0, r3
.LEHB42:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+20
.LPIC19:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE42:
	mov	r3, r0
	add	r2, r7, #40
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #40
	mov	r0, r5
	mov	r1, r3
.LEHB43:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE43:
	add	r3, r7, #40
	mov	r0, r3
.LEHB44:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+24
.LPIC20:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE44:
	mov	r3, r0
	add	r2, r7, #48
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #48
	mov	r0, r5
	mov	r1, r3
.LEHB45:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE45:
	add	r3, r7, #48
	mov	r0, r3
.LEHB46:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+28
.LPIC21:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE46:
	mov	r3, r0
	add	r2, r7, #56
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #56
	mov	r0, r5
	mov	r1, r3
.LEHB47:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE47:
	add	r3, r7, #56
	mov	r0, r3
.LEHB48:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+32
.LPIC22:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE48:
	mov	r3, r0
	add	r2, r7, #64
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #64
	mov	r0, r5
	mov	r1, r3
.LEHB49:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE49:
	add	r3, r7, #64
	mov	r0, r3
.LEHB50:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+36
.LPIC23:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE50:
	mov	r3, r0
	add	r2, r7, #72
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #72
	mov	r0, r5
	mov	r1, r3
.LEHB51:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE51:
	add	r3, r7, #72
	mov	r0, r3
.LEHB52:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+40
.LPIC24:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE52:
	mov	r3, r0
	add	r2, r7, #80
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #80
	mov	r0, r5
	mov	r1, r3
.LEHB53:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE53:
	add	r3, r7, #80
	mov	r0, r3
.LEHB54:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+44
.LPIC25:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE54:
	mov	r3, r0
	add	r2, r7, #88
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #88
	mov	r0, r5
	mov	r1, r3
.LEHB55:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE55:
	add	r3, r7, #88
	mov	r0, r3
.LEHB56:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+48
.LPIC26:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE56:
	mov	r3, r0
	add	r2, r7, #96
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #96
	mov	r0, r5
	mov	r1, r3
.LEHB57:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE57:
	add	r3, r7, #96
	mov	r0, r3
.LEHB58:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+52
.LPIC27:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE58:
	mov	r3, r0
	add	r2, r7, #104
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #104
	mov	r0, r5
	mov	r1, r3
.LEHB59:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE59:
	add	r3, r7, #104
	mov	r0, r3
.LEHB60:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+56
.LPIC28:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE60:
	mov	r3, r0
	add	r2, r7, #112
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #112
	mov	r0, r5
	mov	r1, r3
.LEHB61:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE61:
	add	r3, r7, #112
	mov	r0, r3
.LEHB62:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3, #12]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+60
.LPIC29:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE62:
	mov	r3, r0
	add	r2, r7, #120
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #120
	mov	r0, r5
	mov	r1, r3
.LEHB63:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE63:
	add	r3, r7, #120
	mov	r0, r3
.LEHB64:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+64
.LPIC30:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE64:
	mov	r3, r0
	add	r2, r7, #128
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #128
	mov	r0, r5
	mov	r1, r3
.LEHB65:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE65:
	add	r3, r7, #128
	mov	r0, r3
.LEHB66:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE66:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #136
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #136
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB67:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE67:
	add	r3, r7, #136
	mov	r0, r3
.LEHB68:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+68
.LPIC31:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE68:
	mov	r3, r0
	add	r2, r7, #144
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #144
	mov	r0, r5
	mov	r1, r3
.LEHB69:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE69:
	add	r3, r7, #144
	mov	r0, r3
.LEHB70:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE70:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #152
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #152
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB71:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE71:
	add	r3, r7, #152
	mov	r0, r3
.LEHB72:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+72
.LPIC32:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE72:
	mov	r3, r0
	add	r2, r7, #160
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #160
	mov	r0, r5
	mov	r1, r3
.LEHB73:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE73:
	add	r3, r7, #160
	mov	r0, r3
.LEHB74:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE74:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #168
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #168
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB75:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE75:
	add	r3, r7, #168
	mov	r0, r3
.LEHB76:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+76
.LPIC33:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE76:
	mov	r3, r0
	add	r2, r7, #176
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #176
	mov	r0, r5
	mov	r1, r3
.LEHB77:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE77:
	add	r3, r7, #176
	mov	r0, r3
.LEHB78:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE78:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #184
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #184
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB79:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE79:
	add	r3, r7, #184
	mov	r0, r3
.LEHB80:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+80
.LPIC34:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE80:
	mov	r3, r0
	add	r2, r7, #192
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #192
	mov	r0, r5
	mov	r1, r3
.LEHB81:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE81:
	add	r3, r7, #192
	mov	r0, r3
.LEHB82:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE82:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #200
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #200
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB83:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE83:
	add	r3, r7, #200
	mov	r0, r3
.LEHB84:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+84
.LPIC35:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE84:
	mov	r3, r0
	add	r2, r7, #208
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #208
	mov	r0, r5
	mov	r1, r3
.LEHB85:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE85:
	add	r3, r7, #208
	mov	r0, r3
.LEHB86:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE86:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #216
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #216
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB87:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE87:
	add	r3, r7, #216
	mov	r0, r3
.LEHB88:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+88
.LPIC36:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE88:
	mov	r3, r0
	add	r2, r7, #224
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #224
	mov	r0, r5
	mov	r1, r3
.LEHB89:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE89:
	add	r3, r7, #224
	mov	r0, r3
.LEHB90:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE90:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #232
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #232
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB91:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE91:
	add	r3, r7, #232
	mov	r0, r3
.LEHB92:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+92
.LPIC37:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE92:
	mov	r3, r0
	add	r2, r7, #240
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #240
	mov	r0, r5
	mov	r1, r3
.LEHB93:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE93:
	add	r3, r7, #240
	mov	r0, r3
.LEHB94:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE94:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #248
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #248
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB95:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE95:
	add	r3, r7, #248
	mov	r0, r3
.LEHB96:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+96
.LPIC38:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE96:
	mov	r3, r0
	add	r2, r7, #256
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #256
	mov	r0, r5
	mov	r1, r3
.LEHB97:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE97:
	add	r3, r7, #256
	mov	r0, r3
.LEHB98:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE98:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #264
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #264
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB99:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE99:
	add	r3, r7, #264
	mov	r0, r3
.LEHB100:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+100
.LPIC39:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE100:
	mov	r3, r0
	add	r2, r7, #272
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #272
	mov	r0, r5
	mov	r1, r3
.LEHB101:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE101:
	add	r3, r7, #272
	mov	r0, r3
.LEHB102:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE102:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #280
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #280
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB103:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE103:
	add	r3, r7, #280
	mov	r0, r3
.LEHB104:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+104
.LPIC40:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE104:
	mov	r3, r0
	add	r2, r7, #288
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #288
	mov	r0, r5
	mov	r1, r3
.LEHB105:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE105:
	add	r3, r7, #288
	mov	r0, r3
.LEHB106:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE106:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #296
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #296
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB107:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE107:
	add	r3, r7, #296
	mov	r0, r3
.LEHB108:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+108
.LPIC41:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE108:
	mov	r3, r0
	add	r2, r7, #304
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #304
	mov	r0, r5
	mov	r1, r3
.LEHB109:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE109:
	add	r3, r7, #304
	mov	r0, r3
.LEHB110:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE110:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #312
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #312
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB111:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE111:
	add	r3, r7, #312
	mov	r0, r3
.LEHB112:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+112
.LPIC42:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE112:
	mov	r3, r0
	add	r2, r7, #320
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #320
	mov	r0, r5
	mov	r1, r3
.LEHB113:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE113:
	add	r3, r7, #320
	mov	r0, r3
.LEHB114:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE114:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #328
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #328
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB115:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE115:
	add	r3, r7, #328
	mov	r0, r3
.LEHB116:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+116
.LPIC43:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE116:
	mov	r3, r0
	add	r2, r7, #336
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #336
	mov	r0, r5
	mov	r1, r3
.LEHB117:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE117:
	add	r3, r7, #336
	mov	r0, r3
.LEHB118:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE118:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #344
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #344
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB119:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE119:
	add	r3, r7, #344
	mov	r0, r3
.LEHB120:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+120
.LPIC44:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE120:
	mov	r3, r0
	add	r2, r7, #352
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #352
	mov	r0, r5
	mov	r1, r3
.LEHB121:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE121:
	add	r3, r7, #352
	mov	r0, r3
.LEHB122:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE122:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #360
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #360
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB123:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE123:
	add	r3, r7, #360
	mov	r0, r3
.LEHB124:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+124
.LPIC45:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE124:
	mov	r3, r0
	add	r2, r7, #368
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #368
	mov	r0, r5
	mov	r1, r3
.LEHB125:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE125:
	add	r3, r7, #368
	mov	r0, r3
.LEHB126:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE126:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #376
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #376
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB127:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE127:
	add	r3, r7, #376
	mov	r0, r3
.LEHB128:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+128
.LPIC46:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE128:
	mov	r3, r0
	add	r2, r7, #384
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #384
	mov	r0, r5
	mov	r1, r3
.LEHB129:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE129:
	add	r3, r7, #384
	mov	r0, r3
.LEHB130:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE130:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #392
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #392
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB131:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE131:
	add	r3, r7, #392
	mov	r0, r3
.LEHB132:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r5, [r3]
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+132
.LPIC47:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
.LEHE132:
	mov	r3, r0
	add	r2, r7, #400
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1EP8SQString(PLT)
	add	r3, r7, #400
	mov	r0, r5
	mov	r1, r3
.LEHB133:
	bl	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_(PLT)
.LEHE133:
	add	r3, r7, #400
	mov	r0, r3
.LEHB134:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r6, [r3, #8]
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r5, r0
	adds	r3, r7, #4
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4sizeEv(PLT)
.LEHE134:
	mov	r3, r0
	subs	r3, r3, #1
	add	r2, r7, #408
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1Ei(PLT)
	add	r3, r7, #408
	mov	r0, r6
	mov	r1, r5
	mov	r2, r3
.LEHB135:
	bl	_ZN7SQTable7NewSlotERK11SQObjectPtrS2_(PLT)
.LEHE135:
	add	r3, r7, #408
	mov	r0, r3
.LEHB136:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #60
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L314+136
.LPIC48:
	add	r3, pc
	mov	r1, r3
	mov	r2, #-1
	bl	_ZN8SQString6CreateEP13SQSharedStatePKci(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP8SQString(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #44
	adds	r3, r7, #4
	ldr	r0, [r3]
	b	.L315
.L316:
	.align	2
.L314:
	.word	_GLOBAL_OFFSET_TABLE_-(.LPIC49+4)
	.word	.LC2-(.LPIC15+4)
	.word	.LC3-(.LPIC16+4)
	.word	.LC4-(.LPIC17+4)
	.word	.LC5-(.LPIC18+4)
	.word	.LC6-(.LPIC19+4)
	.word	.LC7-(.LPIC20+4)
	.word	.LC8-(.LPIC21+4)
	.word	.LC9-(.LPIC22+4)
	.word	.LC10-(.LPIC23+4)
	.word	.LC11-(.LPIC24+4)
	.word	.LC12-(.LPIC25+4)
	.word	.LC13-(.LPIC26+4)
	.word	.LC14-(.LPIC27+4)
	.word	.LC15-(.LPIC28+4)
	.word	.LC16-(.LPIC29+4)
	.word	.LC17-(.LPIC30+4)
	.word	.LC18-(.LPIC31+4)
	.word	.LC19-(.LPIC32+4)
	.word	.LC20-(.LPIC33+4)
	.word	.LC21-(.LPIC34+4)
	.word	.LC22-(.LPIC35+4)
	.word	.LC23-(.LPIC36+4)
	.word	.LC24-(.LPIC37+4)
	.word	.LC25-(.LPIC38+4)
	.word	.LC26-(.LPIC39+4)
	.word	.LC27-(.LPIC40+4)
	.word	.LC28-(.LPIC41+4)
	.word	.LC29-(.LPIC42+4)
	.word	.LC30-(.LPIC43+4)
	.word	.LC31-(.LPIC44+4)
	.word	.LC32-(.LPIC45+4)
	.word	.LC33-(.LPIC46+4)
	.word	.LC34-(.LPIC47+4)
	.word	.LC35-(.LPIC48+4)
.L315:
	movs	r1, #0
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #52
	adds	r3, r7, #4
	ldr	r0, [r3]
	movs	r1, #0
	bl	_ZN7SQTable6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #80
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L317
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #88
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L317+4
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #96
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L317+8
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #104
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L317+12
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #120
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L317+16
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #112
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L317+20
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #128
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L317+24
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #136
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L317+28
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #144
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L317+32
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	adds	r3, r7, #4
	ldr	r3, [r3]
	add	r5, r3, #152
	adds	r3, r7, #4
	ldr	r0, [r3]
	ldr	r3, .L317+36
	ldr	r3, [r4, r3]
	mov	r1, r3
	bl	_Z21CreateDefaultDelegateP13SQSharedStateP16tagSQRegFunction(PLT)
	mov	r3, r0
	mov	r0, r5
	mov	r1, r3
	bl	_ZN11SQObjectPtraSEP7SQTable(PLT)
	b	.L313
.L258:
	mov	r0, r5
	mov	r1, r6
	bl	_ZdlPvS_(PLT)
	bl	__cxa_end_cleanup(PLT)
.L259:
	mov	r0, r5
	mov	r1, r6
	bl	_ZdlPvS_(PLT)
	bl	__cxa_end_cleanup(PLT)
.L260:
	mov	r0, r5
	mov	r1, r6
	bl	_ZdlPvS_(PLT)
	bl	__cxa_end_cleanup(PLT)
.L261:
	mov	r0, r5
	mov	r1, r6
	bl	_ZdlPvS_(PLT)
	bl	__cxa_end_cleanup(PLT)
.LEHE136:
.L262:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB137:
	bl	__cxa_end_cleanup(PLT)
.LEHE137:
.L263:
	add	r3, r7, #16
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB138:
	bl	__cxa_end_cleanup(PLT)
.LEHE138:
.L264:
	add	r3, r7, #24
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB139:
	bl	__cxa_end_cleanup(PLT)
.LEHE139:
.L265:
	add	r3, r7, #32
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB140:
	bl	__cxa_end_cleanup(PLT)
.LEHE140:
.L266:
	add	r3, r7, #40
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB141:
	bl	__cxa_end_cleanup(PLT)
.LEHE141:
.L267:
	add	r3, r7, #48
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB142:
	bl	__cxa_end_cleanup(PLT)
.LEHE142:
.L268:
	add	r3, r7, #56
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB143:
	bl	__cxa_end_cleanup(PLT)
.LEHE143:
.L269:
	add	r3, r7, #64
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB144:
	bl	__cxa_end_cleanup(PLT)
.LEHE144:
.L270:
	add	r3, r7, #72
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB145:
	bl	__cxa_end_cleanup(PLT)
.LEHE145:
.L271:
	add	r3, r7, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB146:
	bl	__cxa_end_cleanup(PLT)
.LEHE146:
.L272:
	add	r3, r7, #88
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB147:
	bl	__cxa_end_cleanup(PLT)
.LEHE147:
.L273:
	add	r3, r7, #96
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB148:
	bl	__cxa_end_cleanup(PLT)
.LEHE148:
.L274:
	add	r3, r7, #104
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB149:
	bl	__cxa_end_cleanup(PLT)
.LEHE149:
.L275:
	add	r3, r7, #112
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB150:
	bl	__cxa_end_cleanup(PLT)
.LEHE150:
.L276:
	add	r3, r7, #120
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB151:
	bl	__cxa_end_cleanup(PLT)
.LEHE151:
.L277:
	add	r3, r7, #128
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB152:
	bl	__cxa_end_cleanup(PLT)
.LEHE152:
.L278:
	add	r3, r7, #136
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB153:
	bl	__cxa_end_cleanup(PLT)
.LEHE153:
.L279:
	add	r3, r7, #144
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB154:
	bl	__cxa_end_cleanup(PLT)
.LEHE154:
.L280:
	add	r3, r7, #152
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB155:
	bl	__cxa_end_cleanup(PLT)
.LEHE155:
.L281:
	add	r3, r7, #160
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB156:
	bl	__cxa_end_cleanup(PLT)
.LEHE156:
.L282:
	add	r3, r7, #168
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB157:
	bl	__cxa_end_cleanup(PLT)
.LEHE157:
.L283:
	add	r3, r7, #176
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB158:
	bl	__cxa_end_cleanup(PLT)
.LEHE158:
.L284:
	add	r3, r7, #184
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB159:
	bl	__cxa_end_cleanup(PLT)
.LEHE159:
.L285:
	add	r3, r7, #192
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB160:
	bl	__cxa_end_cleanup(PLT)
.LEHE160:
.L286:
	add	r3, r7, #200
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB161:
	bl	__cxa_end_cleanup(PLT)
.LEHE161:
.L287:
	add	r3, r7, #208
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB162:
	bl	__cxa_end_cleanup(PLT)
.LEHE162:
.L288:
	add	r3, r7, #216
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB163:
	bl	__cxa_end_cleanup(PLT)
.LEHE163:
.L289:
	add	r3, r7, #224
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB164:
	bl	__cxa_end_cleanup(PLT)
.LEHE164:
.L290:
	add	r3, r7, #232
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB165:
	bl	__cxa_end_cleanup(PLT)
.LEHE165:
.L291:
	add	r3, r7, #240
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB166:
	bl	__cxa_end_cleanup(PLT)
.LEHE166:
.L292:
	add	r3, r7, #248
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB167:
	bl	__cxa_end_cleanup(PLT)
.LEHE167:
.L293:
	add	r3, r7, #256
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB168:
	bl	__cxa_end_cleanup(PLT)
.LEHE168:
.L294:
	add	r3, r7, #264
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB169:
	bl	__cxa_end_cleanup(PLT)
.LEHE169:
.L295:
	add	r3, r7, #272
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB170:
	bl	__cxa_end_cleanup(PLT)
.LEHE170:
.L296:
	add	r3, r7, #280
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB171:
	bl	__cxa_end_cleanup(PLT)
.LEHE171:
.L297:
	add	r3, r7, #288
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB172:
	bl	__cxa_end_cleanup(PLT)
.LEHE172:
.L298:
	add	r3, r7, #296
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB173:
	bl	__cxa_end_cleanup(PLT)
.LEHE173:
.L299:
	add	r3, r7, #304
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB174:
	bl	__cxa_end_cleanup(PLT)
.LEHE174:
.L300:
	add	r3, r7, #312
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB175:
	bl	__cxa_end_cleanup(PLT)
.LEHE175:
.L301:
	add	r3, r7, #320
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB176:
	bl	__cxa_end_cleanup(PLT)
.LEHE176:
.L302:
	add	r3, r7, #328
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB177:
	bl	__cxa_end_cleanup(PLT)
.LEHE177:
.L303:
	add	r3, r7, #336
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB178:
	bl	__cxa_end_cleanup(PLT)
.LEHE178:
.L304:
	add	r3, r7, #344
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB179:
	bl	__cxa_end_cleanup(PLT)
.LEHE179:
.L305:
	add	r3, r7, #352
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB180:
	bl	__cxa_end_cleanup(PLT)
.LEHE180:
.L306:
	add	r3, r7, #360
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB181:
	bl	__cxa_end_cleanup(PLT)
.LEHE181:
.L307:
	add	r3, r7, #368
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB182:
	bl	__cxa_end_cleanup(PLT)
.LEHE182:
.L308:
	add	r3, r7, #376
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB183:
	bl	__cxa_end_cleanup(PLT)
.LEHE183:
.L309:
	add	r3, r7, #384
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB184:
	bl	__cxa_end_cleanup(PLT)
.LEHE184:
.L310:
	add	r3, r7, #392
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB185:
	bl	__cxa_end_cleanup(PLT)
.LEHE185:
.L311:
	add	r3, r7, #400
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB186:
	bl	__cxa_end_cleanup(PLT)
.LEHE186:
.L312:
	add	r3, r7, #408
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB187:
	bl	__cxa_end_cleanup(PLT)
.LEHE187:
.L313:
	add	r7, r7, #420
	mov	sp, r7
	@ sp needed
	pop	{r4, r5, r6, r7, pc}
.L318:
	.align	2
.L317:
	.word	_ZN13SQSharedState29_table_default_delegate_funczE(GOT)
	.word	_ZN13SQSharedState29_array_default_delegate_funczE(GOT)
	.word	_ZN13SQSharedState30_string_default_delegate_funczE(GOT)
	.word	_ZN13SQSharedState30_number_default_delegate_funczE(GOT)
	.word	_ZN13SQSharedState31_closure_default_delegate_funczE(GOT)
	.word	_ZN13SQSharedState33_generator_default_delegate_funczE(GOT)
	.word	_ZN13SQSharedState30_thread_default_delegate_funczE(GOT)
	.word	_ZN13SQSharedState29_class_default_delegate_funczE(GOT)
	.word	_ZN13SQSharedState32_instance_default_delegate_funczE(GOT)
	.word	_ZN13SQSharedState31_weakref_default_delegate_funczE(GOT)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA318:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE318-.LLSDACSB318
.LLSDACSB318:
	.uleb128 .LEHB26-.LFB318
	.uleb128 .LEHE26-.LEHB26
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB27-.LFB318
	.uleb128 .LEHE27-.LEHB27
	.uleb128 .L258-.LFB318
	.uleb128 0
	.uleb128 .LEHB28-.LFB318
	.uleb128 .LEHE28-.LEHB28
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB29-.LFB318
	.uleb128 .LEHE29-.LEHB29
	.uleb128 .L259-.LFB318
	.uleb128 0
	.uleb128 .LEHB30-.LFB318
	.uleb128 .LEHE30-.LEHB30
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB31-.LFB318
	.uleb128 .LEHE31-.LEHB31
	.uleb128 .L260-.LFB318
	.uleb128 0
	.uleb128 .LEHB32-.LFB318
	.uleb128 .LEHE32-.LEHB32
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB33-.LFB318
	.uleb128 .LEHE33-.LEHB33
	.uleb128 .L261-.LFB318
	.uleb128 0
	.uleb128 .LEHB34-.LFB318
	.uleb128 .LEHE34-.LEHB34
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB35-.LFB318
	.uleb128 .LEHE35-.LEHB35
	.uleb128 .L262-.LFB318
	.uleb128 0
	.uleb128 .LEHB36-.LFB318
	.uleb128 .LEHE36-.LEHB36
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB37-.LFB318
	.uleb128 .LEHE37-.LEHB37
	.uleb128 .L263-.LFB318
	.uleb128 0
	.uleb128 .LEHB38-.LFB318
	.uleb128 .LEHE38-.LEHB38
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB39-.LFB318
	.uleb128 .LEHE39-.LEHB39
	.uleb128 .L264-.LFB318
	.uleb128 0
	.uleb128 .LEHB40-.LFB318
	.uleb128 .LEHE40-.LEHB40
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB41-.LFB318
	.uleb128 .LEHE41-.LEHB41
	.uleb128 .L265-.LFB318
	.uleb128 0
	.uleb128 .LEHB42-.LFB318
	.uleb128 .LEHE42-.LEHB42
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB43-.LFB318
	.uleb128 .LEHE43-.LEHB43
	.uleb128 .L266-.LFB318
	.uleb128 0
	.uleb128 .LEHB44-.LFB318
	.uleb128 .LEHE44-.LEHB44
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB45-.LFB318
	.uleb128 .LEHE45-.LEHB45
	.uleb128 .L267-.LFB318
	.uleb128 0
	.uleb128 .LEHB46-.LFB318
	.uleb128 .LEHE46-.LEHB46
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB47-.LFB318
	.uleb128 .LEHE47-.LEHB47
	.uleb128 .L268-.LFB318
	.uleb128 0
	.uleb128 .LEHB48-.LFB318
	.uleb128 .LEHE48-.LEHB48
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB49-.LFB318
	.uleb128 .LEHE49-.LEHB49
	.uleb128 .L269-.LFB318
	.uleb128 0
	.uleb128 .LEHB50-.LFB318
	.uleb128 .LEHE50-.LEHB50
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB51-.LFB318
	.uleb128 .LEHE51-.LEHB51
	.uleb128 .L270-.LFB318
	.uleb128 0
	.uleb128 .LEHB52-.LFB318
	.uleb128 .LEHE52-.LEHB52
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB53-.LFB318
	.uleb128 .LEHE53-.LEHB53
	.uleb128 .L271-.LFB318
	.uleb128 0
	.uleb128 .LEHB54-.LFB318
	.uleb128 .LEHE54-.LEHB54
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB55-.LFB318
	.uleb128 .LEHE55-.LEHB55
	.uleb128 .L272-.LFB318
	.uleb128 0
	.uleb128 .LEHB56-.LFB318
	.uleb128 .LEHE56-.LEHB56
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB57-.LFB318
	.uleb128 .LEHE57-.LEHB57
	.uleb128 .L273-.LFB318
	.uleb128 0
	.uleb128 .LEHB58-.LFB318
	.uleb128 .LEHE58-.LEHB58
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB59-.LFB318
	.uleb128 .LEHE59-.LEHB59
	.uleb128 .L274-.LFB318
	.uleb128 0
	.uleb128 .LEHB60-.LFB318
	.uleb128 .LEHE60-.LEHB60
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB61-.LFB318
	.uleb128 .LEHE61-.LEHB61
	.uleb128 .L275-.LFB318
	.uleb128 0
	.uleb128 .LEHB62-.LFB318
	.uleb128 .LEHE62-.LEHB62
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB63-.LFB318
	.uleb128 .LEHE63-.LEHB63
	.uleb128 .L276-.LFB318
	.uleb128 0
	.uleb128 .LEHB64-.LFB318
	.uleb128 .LEHE64-.LEHB64
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB65-.LFB318
	.uleb128 .LEHE65-.LEHB65
	.uleb128 .L277-.LFB318
	.uleb128 0
	.uleb128 .LEHB66-.LFB318
	.uleb128 .LEHE66-.LEHB66
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB67-.LFB318
	.uleb128 .LEHE67-.LEHB67
	.uleb128 .L278-.LFB318
	.uleb128 0
	.uleb128 .LEHB68-.LFB318
	.uleb128 .LEHE68-.LEHB68
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB69-.LFB318
	.uleb128 .LEHE69-.LEHB69
	.uleb128 .L279-.LFB318
	.uleb128 0
	.uleb128 .LEHB70-.LFB318
	.uleb128 .LEHE70-.LEHB70
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB71-.LFB318
	.uleb128 .LEHE71-.LEHB71
	.uleb128 .L280-.LFB318
	.uleb128 0
	.uleb128 .LEHB72-.LFB318
	.uleb128 .LEHE72-.LEHB72
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB73-.LFB318
	.uleb128 .LEHE73-.LEHB73
	.uleb128 .L281-.LFB318
	.uleb128 0
	.uleb128 .LEHB74-.LFB318
	.uleb128 .LEHE74-.LEHB74
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB75-.LFB318
	.uleb128 .LEHE75-.LEHB75
	.uleb128 .L282-.LFB318
	.uleb128 0
	.uleb128 .LEHB76-.LFB318
	.uleb128 .LEHE76-.LEHB76
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB77-.LFB318
	.uleb128 .LEHE77-.LEHB77
	.uleb128 .L283-.LFB318
	.uleb128 0
	.uleb128 .LEHB78-.LFB318
	.uleb128 .LEHE78-.LEHB78
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB79-.LFB318
	.uleb128 .LEHE79-.LEHB79
	.uleb128 .L284-.LFB318
	.uleb128 0
	.uleb128 .LEHB80-.LFB318
	.uleb128 .LEHE80-.LEHB80
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB81-.LFB318
	.uleb128 .LEHE81-.LEHB81
	.uleb128 .L285-.LFB318
	.uleb128 0
	.uleb128 .LEHB82-.LFB318
	.uleb128 .LEHE82-.LEHB82
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB83-.LFB318
	.uleb128 .LEHE83-.LEHB83
	.uleb128 .L286-.LFB318
	.uleb128 0
	.uleb128 .LEHB84-.LFB318
	.uleb128 .LEHE84-.LEHB84
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB85-.LFB318
	.uleb128 .LEHE85-.LEHB85
	.uleb128 .L287-.LFB318
	.uleb128 0
	.uleb128 .LEHB86-.LFB318
	.uleb128 .LEHE86-.LEHB86
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB87-.LFB318
	.uleb128 .LEHE87-.LEHB87
	.uleb128 .L288-.LFB318
	.uleb128 0
	.uleb128 .LEHB88-.LFB318
	.uleb128 .LEHE88-.LEHB88
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB89-.LFB318
	.uleb128 .LEHE89-.LEHB89
	.uleb128 .L289-.LFB318
	.uleb128 0
	.uleb128 .LEHB90-.LFB318
	.uleb128 .LEHE90-.LEHB90
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB91-.LFB318
	.uleb128 .LEHE91-.LEHB91
	.uleb128 .L290-.LFB318
	.uleb128 0
	.uleb128 .LEHB92-.LFB318
	.uleb128 .LEHE92-.LEHB92
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB93-.LFB318
	.uleb128 .LEHE93-.LEHB93
	.uleb128 .L291-.LFB318
	.uleb128 0
	.uleb128 .LEHB94-.LFB318
	.uleb128 .LEHE94-.LEHB94
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB95-.LFB318
	.uleb128 .LEHE95-.LEHB95
	.uleb128 .L292-.LFB318
	.uleb128 0
	.uleb128 .LEHB96-.LFB318
	.uleb128 .LEHE96-.LEHB96
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB97-.LFB318
	.uleb128 .LEHE97-.LEHB97
	.uleb128 .L293-.LFB318
	.uleb128 0
	.uleb128 .LEHB98-.LFB318
	.uleb128 .LEHE98-.LEHB98
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB99-.LFB318
	.uleb128 .LEHE99-.LEHB99
	.uleb128 .L294-.LFB318
	.uleb128 0
	.uleb128 .LEHB100-.LFB318
	.uleb128 .LEHE100-.LEHB100
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB101-.LFB318
	.uleb128 .LEHE101-.LEHB101
	.uleb128 .L295-.LFB318
	.uleb128 0
	.uleb128 .LEHB102-.LFB318
	.uleb128 .LEHE102-.LEHB102
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB103-.LFB318
	.uleb128 .LEHE103-.LEHB103
	.uleb128 .L296-.LFB318
	.uleb128 0
	.uleb128 .LEHB104-.LFB318
	.uleb128 .LEHE104-.LEHB104
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB105-.LFB318
	.uleb128 .LEHE105-.LEHB105
	.uleb128 .L297-.LFB318
	.uleb128 0
	.uleb128 .LEHB106-.LFB318
	.uleb128 .LEHE106-.LEHB106
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB107-.LFB318
	.uleb128 .LEHE107-.LEHB107
	.uleb128 .L298-.LFB318
	.uleb128 0
	.uleb128 .LEHB108-.LFB318
	.uleb128 .LEHE108-.LEHB108
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB109-.LFB318
	.uleb128 .LEHE109-.LEHB109
	.uleb128 .L299-.LFB318
	.uleb128 0
	.uleb128 .LEHB110-.LFB318
	.uleb128 .LEHE110-.LEHB110
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB111-.LFB318
	.uleb128 .LEHE111-.LEHB111
	.uleb128 .L300-.LFB318
	.uleb128 0
	.uleb128 .LEHB112-.LFB318
	.uleb128 .LEHE112-.LEHB112
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB113-.LFB318
	.uleb128 .LEHE113-.LEHB113
	.uleb128 .L301-.LFB318
	.uleb128 0
	.uleb128 .LEHB114-.LFB318
	.uleb128 .LEHE114-.LEHB114
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB115-.LFB318
	.uleb128 .LEHE115-.LEHB115
	.uleb128 .L302-.LFB318
	.uleb128 0
	.uleb128 .LEHB116-.LFB318
	.uleb128 .LEHE116-.LEHB116
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB117-.LFB318
	.uleb128 .LEHE117-.LEHB117
	.uleb128 .L303-.LFB318
	.uleb128 0
	.uleb128 .LEHB118-.LFB318
	.uleb128 .LEHE118-.LEHB118
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB119-.LFB318
	.uleb128 .LEHE119-.LEHB119
	.uleb128 .L304-.LFB318
	.uleb128 0
	.uleb128 .LEHB120-.LFB318
	.uleb128 .LEHE120-.LEHB120
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB121-.LFB318
	.uleb128 .LEHE121-.LEHB121
	.uleb128 .L305-.LFB318
	.uleb128 0
	.uleb128 .LEHB122-.LFB318
	.uleb128 .LEHE122-.LEHB122
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB123-.LFB318
	.uleb128 .LEHE123-.LEHB123
	.uleb128 .L306-.LFB318
	.uleb128 0
	.uleb128 .LEHB124-.LFB318
	.uleb128 .LEHE124-.LEHB124
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB125-.LFB318
	.uleb128 .LEHE125-.LEHB125
	.uleb128 .L307-.LFB318
	.uleb128 0
	.uleb128 .LEHB126-.LFB318
	.uleb128 .LEHE126-.LEHB126
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB127-.LFB318
	.uleb128 .LEHE127-.LEHB127
	.uleb128 .L308-.LFB318
	.uleb128 0
	.uleb128 .LEHB128-.LFB318
	.uleb128 .LEHE128-.LEHB128
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB129-.LFB318
	.uleb128 .LEHE129-.LEHB129
	.uleb128 .L309-.LFB318
	.uleb128 0
	.uleb128 .LEHB130-.LFB318
	.uleb128 .LEHE130-.LEHB130
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB131-.LFB318
	.uleb128 .LEHE131-.LEHB131
	.uleb128 .L310-.LFB318
	.uleb128 0
	.uleb128 .LEHB132-.LFB318
	.uleb128 .LEHE132-.LEHB132
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB133-.LFB318
	.uleb128 .LEHE133-.LEHB133
	.uleb128 .L311-.LFB318
	.uleb128 0
	.uleb128 .LEHB134-.LFB318
	.uleb128 .LEHE134-.LEHB134
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB135-.LFB318
	.uleb128 .LEHE135-.LEHB135
	.uleb128 .L312-.LFB318
	.uleb128 0
	.uleb128 .LEHB136-.LFB318
	.uleb128 .LEHE136-.LEHB136
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB137-.LFB318
	.uleb128 .LEHE137-.LEHB137
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB138-.LFB318
	.uleb128 .LEHE138-.LEHB138
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB139-.LFB318
	.uleb128 .LEHE139-.LEHB139
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB140-.LFB318
	.uleb128 .LEHE140-.LEHB140
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB141-.LFB318
	.uleb128 .LEHE141-.LEHB141
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB142-.LFB318
	.uleb128 .LEHE142-.LEHB142
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB143-.LFB318
	.uleb128 .LEHE143-.LEHB143
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB144-.LFB318
	.uleb128 .LEHE144-.LEHB144
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB145-.LFB318
	.uleb128 .LEHE145-.LEHB145
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB146-.LFB318
	.uleb128 .LEHE146-.LEHB146
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB147-.LFB318
	.uleb128 .LEHE147-.LEHB147
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB148-.LFB318
	.uleb128 .LEHE148-.LEHB148
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB149-.LFB318
	.uleb128 .LEHE149-.LEHB149
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB150-.LFB318
	.uleb128 .LEHE150-.LEHB150
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB151-.LFB318
	.uleb128 .LEHE151-.LEHB151
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB152-.LFB318
	.uleb128 .LEHE152-.LEHB152
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB153-.LFB318
	.uleb128 .LEHE153-.LEHB153
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB154-.LFB318
	.uleb128 .LEHE154-.LEHB154
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB155-.LFB318
	.uleb128 .LEHE155-.LEHB155
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB156-.LFB318
	.uleb128 .LEHE156-.LEHB156
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB157-.LFB318
	.uleb128 .LEHE157-.LEHB157
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB158-.LFB318
	.uleb128 .LEHE158-.LEHB158
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB159-.LFB318
	.uleb128 .LEHE159-.LEHB159
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB160-.LFB318
	.uleb128 .LEHE160-.LEHB160
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB161-.LFB318
	.uleb128 .LEHE161-.LEHB161
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB162-.LFB318
	.uleb128 .LEHE162-.LEHB162
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB163-.LFB318
	.uleb128 .LEHE163-.LEHB163
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB164-.LFB318
	.uleb128 .LEHE164-.LEHB164
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB165-.LFB318
	.uleb128 .LEHE165-.LEHB165
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB166-.LFB318
	.uleb128 .LEHE166-.LEHB166
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB167-.LFB318
	.uleb128 .LEHE167-.LEHB167
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB168-.LFB318
	.uleb128 .LEHE168-.LEHB168
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB169-.LFB318
	.uleb128 .LEHE169-.LEHB169
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB170-.LFB318
	.uleb128 .LEHE170-.LEHB170
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB171-.LFB318
	.uleb128 .LEHE171-.LEHB171
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB172-.LFB318
	.uleb128 .LEHE172-.LEHB172
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB173-.LFB318
	.uleb128 .LEHE173-.LEHB173
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB174-.LFB318
	.uleb128 .LEHE174-.LEHB174
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB175-.LFB318
	.uleb128 .LEHE175-.LEHB175
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB176-.LFB318
	.uleb128 .LEHE176-.LEHB176
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB177-.LFB318
	.uleb128 .LEHE177-.LEHB177
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB178-.LFB318
	.uleb128 .LEHE178-.LEHB178
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB179-.LFB318
	.uleb128 .LEHE179-.LEHB179
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB180-.LFB318
	.uleb128 .LEHE180-.LEHB180
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB181-.LFB318
	.uleb128 .LEHE181-.LEHB181
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB182-.LFB318
	.uleb128 .LEHE182-.LEHB182
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB183-.LFB318
	.uleb128 .LEHE183-.LEHB183
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB184-.LFB318
	.uleb128 .LEHE184-.LEHB184
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB185-.LFB318
	.uleb128 .LEHE185-.LEHB185
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB186-.LFB318
	.uleb128 .LEHE186-.LEHB186
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB187-.LFB318
	.uleb128 .LEHE187-.LEHB187
	.uleb128 0
	.uleb128 0
.LLSDACSE318:
	.section	.text._ZN13SQSharedState4InitEv
	.fnend
	.size	_ZN13SQSharedState4InitEv, .-_ZN13SQSharedState4InitEv
	.section	.rodata
	.align	2
.LC36:
	.ascii	"_gc_chain==__null\000"
	.align	2
.LC37:
	.ascii	"../../../libs/squirrel/squirrel/sqstate.cpp\000"
	.section	.text._ZN13SQSharedStateD2Ev,"ax",%progbits
	.align	2
	.global	_ZN13SQSharedStateD2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQSharedStateD2Ev, %function
_ZN13SQSharedStateD2Ev:
	.fnstart
.LFB320:
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
	adds	r3, r3, #60
	mov	r0, r3
.LEHB188:
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #48]
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #48]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #56]
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #56]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #8]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #52
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	b	.L320
.L321:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE4backEv(PLT)
	mov	r3, r0
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8pop_backEv(PLT)
.L320:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZNK8sqvectorI11SQObjectPtrE5emptyEv(PLT)
	mov	r3, r0
	eor	r3, r3, #1
	uxtb	r3, r3
	cmp	r3, #0
	bne	.L321
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #76]
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #76]
	mov	r0, r2
	blx	r3
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #104
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #128
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #136
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #144
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #152
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8RefTable8FinalizeEv(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L322
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	b	.L323
.L326:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	blx	r3
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	cmp	r3, #0
	beq	.L324
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #8]
	str	r2, [r3, #4]
.L324:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L325
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	blx	r3
.L325:
	ldr	r3, [r7, #8]
	str	r3, [r7, #12]
.L323:
	ldr	r3, [r7, #12]
	cmp	r3, #0
	bne	.L326
.L322:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L327
	ldr	r3, .L366
.LPIC50:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L366+4
.LPIC51:
	add	r3, pc
	mov	r1, r3
	movs	r2, #204
	ldr	r3, .L366+8
.LPIC52:
	add	r3, pc
	bl	__assert_fail(PLT)
.L327:
	b	.L328
.L329:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	ldr	r2, [r3, #4]
	adds	r2, r2, #1
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #68]
	mov	r0, r2
	blx	r3
.L328:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	bne	.L329
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #16]
	mov	r0, r3
	movs	r1, #12
	bl	_Z10sq_vm_freePvj(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #12]
	mov	r0, r3
	movs	r1, #12
	bl	_Z10sq_vm_freePvj(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	bl	_ZN8sqvectorI11SQObjectPtrED1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	mov	r0, r3
	movs	r1, #12
	bl	_Z10sq_vm_freePvj(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	bl	_ZN13SQStringTableD1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #20]
	mov	r0, r3
	movs	r1, #16
	bl	_Z10sq_vm_freePvj(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #176]
	cmp	r3, #0
	beq	.L330
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #176]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #180]
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.LEHE188:
.L330:
	ldr	r3, [r7, #4]
	adds	r3, r3, #152
	mov	r0, r3
.LEHB189:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE189:
	ldr	r3, [r7, #4]
	adds	r3, r3, #144
	mov	r0, r3
.LEHB190:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE190:
	ldr	r3, [r7, #4]
	adds	r3, r3, #136
	mov	r0, r3
.LEHB191:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE191:
	ldr	r3, [r7, #4]
	adds	r3, r3, #128
	mov	r0, r3
.LEHB192:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE192:
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	mov	r0, r3
.LEHB193:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE193:
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	mov	r0, r3
.LEHB194:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE194:
	ldr	r3, [r7, #4]
	adds	r3, r3, #104
	mov	r0, r3
.LEHB195:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE195:
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
.LEHB196:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE196:
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
.LEHB197:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE197:
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
.LEHB198:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE198:
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	mov	r0, r3
.LEHB199:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE199:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
.LEHB200:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE200:
	ldr	r3, [r7, #4]
	adds	r3, r3, #52
	mov	r0, r3
.LEHB201:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE201:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
.LEHB202:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE202:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
.LEHB203:
	bl	_ZN8RefTableD1Ev(PLT)
.LEHE203:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
.LEHB204:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE204:
	ldr	r3, [r7, #4]
	b	.L365
.L349:
	ldr	r3, [r7, #4]
	adds	r3, r3, #152
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L334
.L350:
.L334:
	ldr	r3, [r7, #4]
	adds	r3, r3, #144
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L335
.L351:
.L335:
	ldr	r3, [r7, #4]
	adds	r3, r3, #136
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L336
.L352:
.L336:
	ldr	r3, [r7, #4]
	adds	r3, r3, #128
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L337
.L353:
.L337:
	ldr	r3, [r7, #4]
	adds	r3, r3, #120
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L338
.L354:
.L338:
	ldr	r3, [r7, #4]
	adds	r3, r3, #112
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L339
.L355:
.L339:
	ldr	r3, [r7, #4]
	adds	r3, r3, #104
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L340
.L356:
.L340:
	ldr	r3, [r7, #4]
	adds	r3, r3, #96
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L341
.L357:
.L341:
	ldr	r3, [r7, #4]
	adds	r3, r3, #88
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L342
.L358:
.L342:
	ldr	r3, [r7, #4]
	adds	r3, r3, #80
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L343
.L359:
.L343:
	ldr	r3, [r7, #4]
	adds	r3, r3, #72
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L344
.L360:
.L344:
	ldr	r3, [r7, #4]
	adds	r3, r3, #60
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L345
.L361:
.L345:
	ldr	r3, [r7, #4]
	adds	r3, r3, #52
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L346
.L362:
.L346:
	ldr	r3, [r7, #4]
	adds	r3, r3, #44
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L347
.L363:
.L347:
	ldr	r3, [r7, #4]
	adds	r3, r3, #24
	mov	r0, r3
	bl	_ZN8RefTableD1Ev(PLT)
	b	.L348
.L364:
.L348:
	ldr	r3, [r7, #4]
	adds	r3, r3, #4
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB205:
	bl	__cxa_end_cleanup(PLT)
.LEHE205:
.L365:
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L367:
	.align	2
.L366:
	.word	.LC36-(.LPIC50+4)
	.word	.LC37-(.LPIC51+4)
	.word	_ZZN13SQSharedStateD1EvE19__PRETTY_FUNCTION__-(.LPIC52+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA320:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE320-.LLSDACSB320
.LLSDACSB320:
	.uleb128 .LEHB188-.LFB320
	.uleb128 .LEHE188-.LEHB188
	.uleb128 .L349-.LFB320
	.uleb128 0
	.uleb128 .LEHB189-.LFB320
	.uleb128 .LEHE189-.LEHB189
	.uleb128 .L350-.LFB320
	.uleb128 0
	.uleb128 .LEHB190-.LFB320
	.uleb128 .LEHE190-.LEHB190
	.uleb128 .L351-.LFB320
	.uleb128 0
	.uleb128 .LEHB191-.LFB320
	.uleb128 .LEHE191-.LEHB191
	.uleb128 .L352-.LFB320
	.uleb128 0
	.uleb128 .LEHB192-.LFB320
	.uleb128 .LEHE192-.LEHB192
	.uleb128 .L353-.LFB320
	.uleb128 0
	.uleb128 .LEHB193-.LFB320
	.uleb128 .LEHE193-.LEHB193
	.uleb128 .L354-.LFB320
	.uleb128 0
	.uleb128 .LEHB194-.LFB320
	.uleb128 .LEHE194-.LEHB194
	.uleb128 .L355-.LFB320
	.uleb128 0
	.uleb128 .LEHB195-.LFB320
	.uleb128 .LEHE195-.LEHB195
	.uleb128 .L356-.LFB320
	.uleb128 0
	.uleb128 .LEHB196-.LFB320
	.uleb128 .LEHE196-.LEHB196
	.uleb128 .L357-.LFB320
	.uleb128 0
	.uleb128 .LEHB197-.LFB320
	.uleb128 .LEHE197-.LEHB197
	.uleb128 .L358-.LFB320
	.uleb128 0
	.uleb128 .LEHB198-.LFB320
	.uleb128 .LEHE198-.LEHB198
	.uleb128 .L359-.LFB320
	.uleb128 0
	.uleb128 .LEHB199-.LFB320
	.uleb128 .LEHE199-.LEHB199
	.uleb128 .L360-.LFB320
	.uleb128 0
	.uleb128 .LEHB200-.LFB320
	.uleb128 .LEHE200-.LEHB200
	.uleb128 .L361-.LFB320
	.uleb128 0
	.uleb128 .LEHB201-.LFB320
	.uleb128 .LEHE201-.LEHB201
	.uleb128 .L362-.LFB320
	.uleb128 0
	.uleb128 .LEHB202-.LFB320
	.uleb128 .LEHE202-.LEHB202
	.uleb128 .L363-.LFB320
	.uleb128 0
	.uleb128 .LEHB203-.LFB320
	.uleb128 .LEHE203-.LEHB203
	.uleb128 .L364-.LFB320
	.uleb128 0
	.uleb128 .LEHB204-.LFB320
	.uleb128 .LEHE204-.LEHB204
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB205-.LFB320
	.uleb128 .LEHE205-.LEHB205
	.uleb128 0
	.uleb128 0
.LLSDACSE320:
	.section	.text._ZN13SQSharedStateD2Ev
	.fnend
	.size	_ZN13SQSharedStateD2Ev, .-_ZN13SQSharedStateD2Ev
	.global	_ZN13SQSharedStateD1Ev
	.thumb_set _ZN13SQSharedStateD1Ev,_ZN13SQSharedStateD2Ev
	.section	.text._ZN13SQSharedState22GetMetaMethodIdxByNameERK11SQObjectPtr,"ax",%progbits
	.align	2
	.global	_ZN13SQSharedState22GetMetaMethodIdxByNameERK11SQObjectPtr
	.thumb
	.thumb_func
	.type	_ZN13SQSharedState22GetMetaMethodIdxByNameERK11SQObjectPtr, %function
_ZN13SQSharedState22GetMetaMethodIdxByNameERK11SQObjectPtr:
	.fnstart
.LFB322:
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
	ldr	r3, [r7]
	ldr	r2, [r3]
	movs	r3, #16
	movt	r3, 2048
	cmp	r2, r3
	beq	.L369
	mov	r4, #-1
	b	.L373
.L369:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #8]
	add	r3, r7, #8
	mov	r0, r2
	ldr	r1, [r7]
	mov	r2, r3
.LEHB206:
	bl	_ZN7SQTable3GetERK11SQObjectPtrRS0_(PLT)
.LEHE206:
	mov	r3, r0
	cmp	r3, #0
	beq	.L371
	ldr	r4, [r7, #12]
	b	.L372
.L371:
	mov	r4, #-1
.L372:
	add	r3, r7, #8
	mov	r0, r3
.LEHB207:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE207:
.L373:
	mov	r3, r4
	b	.L376
.L375:
	add	r3, r7, #8
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB208:
	bl	__cxa_end_cleanup(PLT)
.LEHE208:
.L376:
	mov	r0, r3
	adds	r7, r7, #20
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA322:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE322-.LLSDACSB322
.LLSDACSB322:
	.uleb128 .LEHB206-.LFB322
	.uleb128 .LEHE206-.LEHB206
	.uleb128 .L375-.LFB322
	.uleb128 0
	.uleb128 .LEHB207-.LFB322
	.uleb128 .LEHE207-.LEHB207
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB208-.LFB322
	.uleb128 .LEHE208-.LEHB208
	.uleb128 0
	.uleb128 0
.LLSDACSE322:
	.section	.text._ZN13SQSharedState22GetMetaMethodIdxByNameERK11SQObjectPtr
	.fnend
	.size	_ZN13SQSharedState22GetMetaMethodIdxByNameERK11SQObjectPtr, .-_ZN13SQSharedState22GetMetaMethodIdxByNameERK11SQObjectPtr
	.section	.text._ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable, %function
_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable:
	.fnstart
.LFB323:
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
	mov	r2, #8192
	movt	r2, 2048
	cmp	r3, r2
	beq	.L379
	mov	r2, #8192
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L380
	mov	r2, #512
	movt	r2, 2048
	cmp	r3, r2
	beq	.L381
	mov	r2, #512
	movt	r2, 2048
	cmp	r3, r2
	bgt	.L382
	movs	r2, #64
	movt	r2, 2048
	cmp	r3, r2
	beq	.L383
	mov	r2, #256
	movt	r2, 2048
	cmp	r3, r2
	beq	.L384
	b	.L377
.L382:
	mov	r2, #1024
	movt	r2, 2048
	cmp	r3, r2
	beq	.L385
	mov	r2, #4096
	movt	r2, 2048
	cmp	r3, r2
	beq	.L386
	b	.L377
.L380:
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	beq	.L387
	movs	r2, #32
	movt	r2, 2560
	cmp	r3, r2
	bgt	.L388
	mov	r2, #16384
	movt	r2, 2048
	cmp	r3, r2
	beq	.L389
	movs	r2, #0
	movt	r2, 2050
	cmp	r3, r2
	beq	.L390
	b	.L377
.L388:
	movs	r2, #128
	movt	r2, 2560
	cmp	r3, r2
	beq	.L391
	mov	r2, #32768
	movt	r2, 2560
	cmp	r3, r2
	beq	.L392
	b	.L377
.L387:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	b	.L377
.L383:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	b	.L377
.L391:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	b	.L377
.L384:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	b	.L377
.L381:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	b	.L377
.L385:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	b	.L377
.L386:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	b	.L377
.L389:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	b	.L377
.L392:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	b	.L377
.L390:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	b	.L377
.L379:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r2, [r7, #4]
	ldr	r2, [r2, #4]
	mov	r0, r2
	ldr	r1, [r7]
	blx	r3
	nop
.L377:
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable, .-_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable
	.section	.text._ZN13SQSharedState7RunMarkEP4SQVMPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN13SQSharedState7RunMarkEP4SQVMPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN13SQSharedState7RunMarkEP4SQVMPP13SQCollectable, %function
_ZN13SQSharedState7RunMarkEP4SQVMPP13SQCollectable:
	.fnstart
.LFB324:
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
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #76]
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	adds	r3, r3, #16
	ldr	r3, [r3]
	ldr	r0, [r7, #20]
	ldr	r1, [r7, #4]
	blx	r3
	ldr	r3, [r7, #12]
	adds	r3, r3, #24
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN8RefTable4MarkEPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #44
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #52
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #4
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #80
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #88
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #96
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #104
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #112
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #128
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #120
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #136
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #144
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #152
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQSharedState7RunMarkEP4SQVMPP13SQCollectable, .-_ZN13SQSharedState7RunMarkEP4SQVMPP13SQCollectable
	.section	.rodata
	.align	2
.LC38:
	.ascii	"rlast->_next == __null\000"
	.section	.text._ZN13SQSharedState20ResurrectUnreachableEP4SQVM,"ax",%progbits
	.align	2
	.global	_ZN13SQSharedState20ResurrectUnreachableEP4SQVM
	.thumb
	.thumb_func
	.type	_ZN13SQSharedState20ResurrectUnreachableEP4SQVM, %function
_ZN13SQSharedState20ResurrectUnreachableEP4SQVM:
	.fnstart
.LFB325:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #56
	sub	sp, sp, #56
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	movs	r3, #0
	str	r3, [r7, #52]
	movs	r3, #0
	str	r3, [r7, #28]
	add	r3, r7, #28
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, r3
.LEHB209:
	bl	_ZN13SQSharedState7RunMarkEP4SQVMPP13SQCollectable(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	str	r3, [r7, #36]
	ldr	r3, [r7, #36]
	str	r3, [r7, #48]
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #4]
	str	r2, [r3, #68]
	movs	r3, #0
	str	r3, [r7, #44]
	ldr	r3, [r7, #36]
	cmp	r3, #0
	beq	.L396
	ldr	r0, [r7, #4]
	movs	r1, #0
	bl	_ZN7SQArray6CreateEP13SQSharedStatei(PLT)
	mov	r3, r0
	str	r3, [r7, #44]
	movs	r3, #0
	str	r3, [r7, #40]
	b	.L397
.L399:
	ldr	r3, [r7, #48]
	str	r3, [r7, #40]
	ldr	r3, [r7, #48]
	ldr	r3, [r3]
	adds	r3, r3, #12
	ldr	r3, [r3]
	ldr	r0, [r7, #48]
	blx	r3
	mov	r3, r0
	str	r3, [r7, #32]
	ldr	r2, [r7, #32]
	mov	r3, #8192
	movt	r3, 2048
	cmp	r2, r3
	beq	.L398
	ldr	r2, [r7, #32]
	movs	r3, #0
	movt	r3, 2050
	cmp	r2, r3
	beq	.L398
	ldr	r3, [r7, #32]
	str	r3, [r7, #20]
	ldr	r3, [r7, #48]
	str	r3, [r7, #24]
	add	r3, r7, #20
	ldr	r0, [r7, #44]
	mov	r1, r3
	bl	_ZN7SQArray6AppendERK11tagSQObject(PLT)
.L398:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	str	r3, [r7, #48]
	ldr	r3, [r7, #52]
	adds	r3, r3, #1
	str	r3, [r7, #52]
.L397:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L399
	ldr	r3, [r7, #40]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L400
	ldr	r3, .L410
.LPIC53:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L410+4
.LPIC54:
	add	r3, pc
	mov	r1, r3
	mov	r2, #304
	ldr	r3, .L410+8
.LPIC55:
	add	r3, pc
	bl	__assert_fail(PLT)
.L400:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #68]
	ldr	r3, [r7, #40]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	cmp	r3, #0
	beq	.L401
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	ldr	r2, [r7, #40]
	str	r2, [r3, #16]
.L401:
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #36]
	str	r2, [r3, #68]
.L396:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	str	r3, [r7, #48]
	b	.L402
.L403:
	ldr	r0, [r7, #48]
	bl	_ZN13SQCollectable6UnMarkEv(PLT)
.LEHE209:
	ldr	r3, [r7, #48]
	ldr	r3, [r3, #12]
	str	r3, [r7, #48]
.L402:
	ldr	r3, [r7, #48]
	cmp	r3, #0
	bne	.L403
	ldr	r3, [r7, #44]
	cmp	r3, #0
	beq	.L404
	add	r3, r7, #12
	mov	r0, r3
	ldr	r1, [r7, #44]
	bl	_ZN11SQObjectPtrC1EP7SQArray(PLT)
	add	r3, r7, #12
	ldr	r0, [r7]
	mov	r1, r3
.LEHB210:
	bl	_ZN4SQVM4PushERK11SQObjectPtr(PLT)
.LEHE210:
	add	r3, r7, #12
	mov	r0, r3
.LEHB211:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	b	.L405
.L404:
	ldr	r0, [r7]
	bl	_ZN4SQVM8PushNullEv(PLT)
.LEHE211:
.L405:
	ldr	r3, [r7, #52]
	b	.L409
.L408:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB212:
	bl	__cxa_end_cleanup(PLT)
.LEHE212:
.L409:
	mov	r0, r3
	adds	r7, r7, #56
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L411:
	.align	2
.L410:
	.word	.LC38-(.LPIC53+4)
	.word	.LC37-(.LPIC54+4)
	.word	_ZZN13SQSharedState20ResurrectUnreachableEP4SQVME19__PRETTY_FUNCTION__-(.LPIC55+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA325:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE325-.LLSDACSB325
.LLSDACSB325:
	.uleb128 .LEHB209-.LFB325
	.uleb128 .LEHE209-.LEHB209
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB210-.LFB325
	.uleb128 .LEHE210-.LEHB210
	.uleb128 .L408-.LFB325
	.uleb128 0
	.uleb128 .LEHB211-.LFB325
	.uleb128 .LEHE211-.LEHB211
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB212-.LFB325
	.uleb128 .LEHE212-.LEHB212
	.uleb128 0
	.uleb128 0
.LLSDACSE325:
	.section	.text._ZN13SQSharedState20ResurrectUnreachableEP4SQVM
	.fnend
	.size	_ZN13SQSharedState20ResurrectUnreachableEP4SQVM, .-_ZN13SQSharedState20ResurrectUnreachableEP4SQVM
	.section	.text._ZN13SQSharedState14CollectGarbageEP4SQVM,"ax",%progbits
	.align	2
	.global	_ZN13SQSharedState14CollectGarbageEP4SQVM
	.thumb
	.thumb_func
	.type	_ZN13SQSharedState14CollectGarbageEP4SQVM, %function
_ZN13SQSharedState14CollectGarbageEP4SQVM:
	.fnstart
.LFB326:
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
	movs	r3, #0
	str	r3, [r7, #8]
	add	r3, r7, #8
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	mov	r2, r3
	bl	_ZN13SQSharedState7RunMarkEP4SQVMPP13SQCollectable(PLT)
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #68]
	str	r3, [r7, #16]
	movs	r3, #0
	str	r3, [r7, #12]
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L413
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #16]
	str	r2, [r3, #4]
	b	.L414
.L417:
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	adds	r3, r3, #20
	ldr	r3, [r3]
	ldr	r0, [r7, #16]
	blx	r3
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	str	r3, [r7, #12]
	ldr	r3, [r7, #12]
	cmp	r3, #0
	beq	.L415
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L415:
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #16]
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L416
	ldr	r3, [r7, #16]
	ldr	r3, [r3]
	adds	r3, r3, #8
	ldr	r3, [r3]
	ldr	r0, [r7, #16]
	blx	r3
.L416:
	ldr	r3, [r7, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L414:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L417
.L413:
	ldr	r3, [r7, #8]
	str	r3, [r7, #16]
	b	.L418
.L419:
	ldr	r0, [r7, #16]
	bl	_ZN13SQCollectable6UnMarkEv(PLT)
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
.L418:
	ldr	r3, [r7, #16]
	cmp	r3, #0
	bne	.L419
	ldr	r2, [r7, #8]
	ldr	r3, [r7, #4]
	str	r2, [r3, #68]
	ldr	r3, [r7, #20]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQSharedState14CollectGarbageEP4SQVM, .-_ZN13SQSharedState14CollectGarbageEP4SQVM
	.section	.text._ZN13SQCollectable10AddToChainEPPS_S0_,"ax",%progbits
	.align	2
	.global	_ZN13SQCollectable10AddToChainEPPS_S0_
	.thumb
	.thumb_func
	.type	_ZN13SQCollectable10AddToChainEPPS_S0_, %function
_ZN13SQCollectable10AddToChainEPPS_S0_:
	.fnstart
.LFB327:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L422
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r2, [r7]
	str	r2, [r3, #16]
.L422:
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN13SQCollectable10AddToChainEPPS_S0_, .-_ZN13SQCollectable10AddToChainEPPS_S0_
	.section	.text._ZN13SQCollectable15RemoveFromChainEPPS_S0_,"ax",%progbits
	.align	2
	.global	_ZN13SQCollectable15RemoveFromChainEPPS_S0_
	.thumb
	.thumb_func
	.type	_ZN13SQCollectable15RemoveFromChainEPPS_S0_, %function
_ZN13SQCollectable15RemoveFromChainEPPS_S0_:
	.fnstart
.LFB328:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	str	r1, [r7]
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L424
	ldr	r3, [r7]
	ldr	r3, [r3, #16]
	ldr	r2, [r7]
	ldr	r2, [r2, #12]
	str	r2, [r3, #12]
	b	.L425
.L424:
	ldr	r3, [r7]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #4]
	str	r2, [r3]
.L425:
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L426
	ldr	r3, [r7]
	ldr	r3, [r3, #12]
	ldr	r2, [r7]
	ldr	r2, [r2, #16]
	str	r2, [r3, #16]
.L426:
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3, #16]
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	ldr	r7, [sp], #4
	bx	lr
	.cantunwind
	.fnend
	.size	_ZN13SQCollectable15RemoveFromChainEPPS_S0_, .-_ZN13SQCollectable15RemoveFromChainEPPS_S0_
	.section	.text._ZN13SQSharedState13GetScratchPadEi,"ax",%progbits
	.align	2
	.global	_ZN13SQSharedState13GetScratchPadEi
	.thumb
	.thumb_func
	.type	_ZN13SQSharedState13GetScratchPadEi, %function
_ZN13SQSharedState13GetScratchPadEi:
	.fnstart
.LFB329:
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
	ldr	r3, [r7]
	cmp	r3, #0
	ble	.L428
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #180]
	ldr	r3, [r7]
	cmp	r2, r3
	bge	.L429
	ldr	r3, [r7]
	asrs	r2, r3, #1
	ldr	r3, [r7]
	add	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #176]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #180]
	mov	r2, r3
	ldr	r3, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #176]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #180]
	b	.L428
.L429:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #180]
	ldr	r3, [r7]
	lsls	r3, r3, #5
	cmp	r2, r3
	blt	.L428
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #180]
	asrs	r3, r3, #1
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r1, [r3, #176]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #180]
	mov	r2, r3
	ldr	r3, [r7, #12]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	bl	_Z13sq_vm_reallocPvjj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3, #176]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #180]
.L428:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #176]
	mov	r0, r3
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQSharedState13GetScratchPadEi, .-_ZN13SQSharedState13GetScratchPadEi
	.section	.text._ZN8RefTableC2Ev,"ax",%progbits
	.align	2
	.global	_ZN8RefTableC2Ev
	.thumb
	.thumb_func
	.type	_ZN8RefTableC2Ev, %function
_ZN8RefTableC2Ev:
	.fnstart
.LFB331:
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
	movs	r1, #4
	bl	_ZN8RefTable10AllocNodesEj(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8RefTableC2Ev, .-_ZN8RefTableC2Ev
	.global	_ZN8RefTableC1Ev
	.thumb_set _ZN8RefTableC1Ev,_ZN8RefTableC2Ev
	.section	.text._ZN8RefTable8FinalizeEv,"ax",%progbits
	.align	2
	.global	_ZN8RefTable8FinalizeEv
	.thumb
	.thumb_func
	.type	_ZN8RefTable8FinalizeEv, %function
_ZN8RefTable8FinalizeEv:
	.fnstart
.LFB333:
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
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L435
.L436:
	ldr	r3, [r7, #12]
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L435:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L436
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8RefTable8FinalizeEv, .-_ZN8RefTable8FinalizeEv
	.section	.text._ZN8RefTableD2Ev,"ax",%progbits
	.align	2
	.global	_ZN8RefTableD2Ev
	.thumb
	.thumb_func
	.type	_ZN8RefTableD2Ev, %function
_ZN8RefTableD2Ev:
	.fnstart
.LFB335:
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
	ldr	r1, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r1
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8RefTableD2Ev, .-_ZN8RefTableD2Ev
	.global	_ZN8RefTableD1Ev
	.thumb_set _ZN8RefTableD1Ev,_ZN8RefTableD2Ev
	.section	.text._ZN8RefTable4MarkEPP13SQCollectable,"ax",%progbits
	.align	2
	.global	_ZN8RefTable4MarkEPP13SQCollectable
	.thumb
	.thumb_func
	.type	_ZN8RefTable4MarkEPP13SQCollectable, %function
_ZN8RefTable4MarkEPP13SQCollectable:
	.fnstart
.LFB337:
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
	ldr	r3, [r3, #8]
	str	r3, [r7, #12]
	movs	r3, #0
	str	r3, [r7, #8]
	b	.L441
.L443:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L442
	ldr	r3, [r7, #12]
	mov	r0, r3
	ldr	r1, [r7]
	bl	_ZN13SQSharedState10MarkObjectER11SQObjectPtrPP13SQCollectable(PLT)
.L442:
	ldr	r3, [r7, #12]
	adds	r3, r3, #16
	str	r3, [r7, #12]
	ldr	r3, [r7, #8]
	adds	r3, r3, #1
	str	r3, [r7, #8]
.L441:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bhi	.L443
	adds	r7, r7, #16
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8RefTable4MarkEPP13SQCollectable, .-_ZN8RefTable4MarkEPP13SQCollectable
	.section	.text._ZN8RefTable6AddRefER11tagSQObject,"ax",%progbits
	.align	2
	.global	_ZN8RefTable6AddRefER11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN8RefTable6AddRefER11tagSQObject, %function
_ZN8RefTable6AddRefER11tagSQObject:
	.fnstart
.LFB338:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r2, r7, #16
	add	r3, r7, #12
	movs	r1, #1
	str	r1, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEb(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #20]
	str	r2, [r3, #8]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8RefTable6AddRefER11tagSQObject, .-_ZN8RefTable6AddRefER11tagSQObject
	.section	.text._ZN8RefTable11GetRefCountER11tagSQObject,"ax",%progbits
	.align	2
	.global	_ZN8RefTable11GetRefCountER11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN8RefTable11GetRefCountER11tagSQObject, %function
_ZN8RefTable11GetRefCountER11tagSQObject:
	.fnstart
.LFB339:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r2, r7, #16
	add	r3, r7, #12
	movs	r1, #1
	str	r1, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEb(PLT)
	mov	r3, r0
	str	r3, [r7, #20]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #8]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8RefTable11GetRefCountER11tagSQObject, .-_ZN8RefTable11GetRefCountER11tagSQObject
	.section	.rodata
	.align	2
.LC39:
	.ascii	"0\000"
	.section	.text._ZN8RefTable7ReleaseER11tagSQObject,"ax",%progbits
	.align	2
	.global	_ZN8RefTable7ReleaseER11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN8RefTable7ReleaseER11tagSQObject, %function
_ZN8RefTable7ReleaseER11tagSQObject:
	.fnstart
.LFB340:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r7, lr}
	.save {r4, r7, lr}
	.pad #44
	sub	sp, sp, #44
	.setfp r7, sp, #8
	add	r7, sp, #8
	str	r0, [r7, #4]
	str	r1, [r7]
	add	r2, r7, #24
	add	r3, r7, #20
	movs	r1, #0
	str	r1, [sp]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
.LEHB213:
	bl	_ZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEb(PLT)
.LEHE213:
	mov	r3, r0
	str	r3, [r7, #28]
	ldr	r3, [r7, #28]
	cmp	r3, #0
	beq	.L448
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	subs	r2, r3, #1
	ldr	r3, [r7, #28]
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	ite	eq
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	cmp	r3, #0
	beq	.L449
	ldr	r3, [r7, #28]
	add	r2, r7, #12
	mov	r0, r2
	mov	r1, r3
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	ldr	r3, [r7, #20]
	cmp	r3, #0
	beq	.L450
	ldr	r3, [r7, #20]
	ldr	r2, [r7, #28]
	ldr	r2, [r2, #12]
	str	r2, [r3, #12]
	b	.L451
.L450:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #24]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #28]
	ldr	r2, [r2, #12]
	str	r2, [r3]
.L451:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #28]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #28]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #28]
	mov	r0, r3
.LEHB214:
	bl	_ZN11SQObjectPtr4NullEv(PLT)
.LEHE214:
	movs	r4, #1
	add	r3, r7, #12
	mov	r0, r3
.LEHB215:
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHE215:
	b	.L454
.L449:
	movs	r4, #0
	b	.L454
.L448:
	ldr	r3, .L458
.LPIC56:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L458+4
.LPIC57:
	add	r3, pc
	mov	r1, r3
	mov	r2, #472
	ldr	r3, .L458+8
.LPIC58:
	add	r3, pc
	bl	__assert_fail(PLT)
.L454:
	mov	r3, r4
	b	.L457
.L456:
	add	r3, r7, #12
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.LEHB216:
	bl	__cxa_end_cleanup(PLT)
.LEHE216:
.L457:
	mov	r0, r3
	adds	r7, r7, #36
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
.L459:
	.align	2
.L458:
	.word	.LC39-(.LPIC56+4)
	.word	.LC37-(.LPIC57+4)
	.word	_ZZN8RefTable7ReleaseER11tagSQObjectE19__PRETTY_FUNCTION__-(.LPIC58+4)
	.personality	__gxx_personality_v0
	.handlerdata
.LLSDA340:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE340-.LLSDACSB340
.LLSDACSB340:
	.uleb128 .LEHB213-.LFB340
	.uleb128 .LEHE213-.LEHB213
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB214-.LFB340
	.uleb128 .LEHE214-.LEHB214
	.uleb128 .L456-.LFB340
	.uleb128 0
	.uleb128 .LEHB215-.LFB340
	.uleb128 .LEHE215-.LEHB215
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB216-.LFB340
	.uleb128 .LEHE216-.LEHB216
	.uleb128 0
	.uleb128 0
.LLSDACSE340:
	.section	.text._ZN8RefTable7ReleaseER11tagSQObject
	.fnend
	.size	_ZN8RefTable7ReleaseER11tagSQObject, .-_ZN8RefTable7ReleaseER11tagSQObject
	.section	.rodata
	.align	2
.LC40:
	.ascii	"t->refs != 0\000"
	.align	2
.LC41:
	.ascii	"nfound == oldnumofslots\000"
	.section	.text._ZN8RefTable6ResizeEj,"ax",%progbits
	.align	2
	.global	_ZN8RefTable6ResizeEj
	.thumb
	.thumb_func
	.type	_ZN8RefTable6ResizeEj, %function
_ZN8RefTable6ResizeEj:
	.fnstart
.LFB341:
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
	ldr	r3, [r3, #16]
	str	r3, [r7, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	str	r3, [r7, #28]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #12]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN8RefTable10AllocNodesEj(PLT)
	movs	r3, #0
	str	r3, [r7, #24]
	movs	r3, #0
	str	r3, [r7, #20]
	b	.L461
.L464:
	ldr	r3, [r7, #28]
	ldr	r2, [r3]
	movs	r3, #1
	movt	r3, 256
	cmp	r2, r3
	beq	.L462
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L463
	ldr	r3, .L466
.LPIC59:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L466+4
.LPIC60:
	add	r3, pc
	mov	r1, r3
	mov	r2, #488
	ldr	r3, .L466+8
.LPIC61:
	add	r3, pc
	bl	__assert_fail(PLT)
.L463:
	ldr	r3, [r7, #28]
	mov	r0, r3
	bl	_Z7HashObjRK11SQObjectPtr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	subs	r3, r3, #1
	ands	r2, r2, r3
	ldr	r3, [r7, #28]
	ldr	r0, [r7, #4]
	mov	r1, r2
	mov	r2, r3
	bl	_ZN8RefTable3AddEjR11tagSQObject(PLT)
	mov	r3, r0
	str	r3, [r7, #8]
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #28]
	mov	r0, r3
	bl	_ZN11SQObjectPtr4NullEv(PLT)
	ldr	r3, [r7, #24]
	adds	r3, r3, #1
	str	r3, [r7, #24]
.L462:
	ldr	r3, [r7, #28]
	adds	r3, r3, #16
	str	r3, [r7, #28]
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L461:
	ldr	r2, [r7, #20]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bcc	.L464
	ldr	r2, [r7, #24]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	beq	.L465
	ldr	r3, .L466+12
.LPIC62:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L466+16
.LPIC63:
	add	r3, pc
	mov	r1, r3
	mov	r2, #496
	ldr	r3, .L466+20
.LPIC64:
	add	r3, pc
	bl	__assert_fail(PLT)
.L465:
	ldr	r2, [r7, #12]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L467:
	.align	2
.L466:
	.word	.LC40-(.LPIC59+4)
	.word	.LC37-(.LPIC60+4)
	.word	_ZZN8RefTable6ResizeEjE19__PRETTY_FUNCTION__-(.LPIC61+4)
	.word	.LC41-(.LPIC62+4)
	.word	.LC37-(.LPIC63+4)
	.word	_ZZN8RefTable6ResizeEjE19__PRETTY_FUNCTION__-(.LPIC64+4)
	.fnend
	.size	_ZN8RefTable6ResizeEj, .-_ZN8RefTable6ResizeEj
	.section	.rodata
	.align	2
.LC42:
	.ascii	"newnode->refs == 0\000"
	.section	.text._ZN8RefTable3AddEjR11tagSQObject,"ax",%progbits
	.align	2
	.global	_ZN8RefTable3AddEjR11tagSQObject
	.thumb
	.thumb_func
	.type	_ZN8RefTable3AddEjR11tagSQObject, %function
_ZN8RefTable3AddEjR11tagSQObject:
	.fnstart
.LFB342:
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
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtraSERK11tagSQObject(PLT)
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #12]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L469
	ldr	r3, .L471
.LPIC65:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L471+4
.LPIC66:
	add	r3, pc
	mov	r1, r3
	mov	r2, #508
	ldr	r3, .L471+8
.LPIC67:
	add	r3, pc
	bl	__assert_fail(PLT)
.L469:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
	ldr	r3, [r7, #16]
	mov	r0, r3
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L472:
	.align	2
.L471:
	.word	.LC42-(.LPIC65+4)
	.word	.LC37-(.LPIC66+4)
	.word	_ZZN8RefTable3AddEjR11tagSQObjectE19__PRETTY_FUNCTION__-(.LPIC67+4)
	.fnend
	.size	_ZN8RefTable3AddEjR11tagSQObject, .-_ZN8RefTable3AddEjR11tagSQObject
	.section	.rodata
	.align	2
.LC43:
	.ascii	"_freelist == 0\000"
	.section	.text._ZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEb,"ax",%progbits
	.align	2
	.global	_ZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEb
	.thumb
	.thumb_func
	.type	_ZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEb, %function
_ZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEb:
	.fnstart
.LFB343:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #40
	sub	sp, sp, #40
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	str	r3, [r7]
	add	r3, r7, #20
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #20
	mov	r0, r3
	bl	_Z7HashObjRK11SQObjectPtr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r3, #1
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	add	r3, r7, #20
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #36]
	b	.L474
.L477:
	ldr	r3, [r7, #36]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L475
	ldr	r3, [r7, #36]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L475
	b	.L476
.L475:
	ldr	r3, [r7]
	ldr	r2, [r7, #36]
	str	r2, [r3]
	ldr	r3, [r7, #36]
	ldr	r3, [r3, #12]
	str	r3, [r7, #36]
.L474:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L477
.L476:
	ldr	r3, [r7, #36]
	cmp	r3, #0
	bne	.L478
	ldrb	r3, [r7, #48]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L478
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bne	.L479
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L480
	ldr	r3, .L482
.LPIC68:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L482+4
.LPIC69:
	add	r3, pc
	mov	r1, r3
	movw	r2, #526
	ldr	r3, .L482+8
.LPIC70:
	add	r3, pc
	bl	__assert_fail(PLT)
.L480:
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	lsls	r3, r3, #1
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN8RefTable6ResizeEj(PLT)
	add	r3, r7, #28
	mov	r0, r3
	ldr	r1, [r7, #8]
	bl	_ZN11SQObjectPtrC1ERK11tagSQObject(PLT)
	add	r3, r7, #28
	mov	r0, r3
	bl	_Z7HashObjRK11SQObjectPtr(PLT)
	mov	r2, r0
	ldr	r3, [r7, #12]
	ldr	r3, [r3]
	subs	r3, r3, #1
	ands	r2, r2, r3
	ldr	r3, [r7, #4]
	str	r2, [r3]
	add	r3, r7, #28
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
.L479:
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	ldr	r0, [r7, #12]
	mov	r1, r3
	ldr	r2, [r7, #8]
	bl	_ZN8RefTable3AddEjR11tagSQObject(PLT)
	mov	r3, r0
	str	r3, [r7, #36]
.L478:
	ldr	r3, [r7, #36]
	mov	r0, r3
	adds	r7, r7, #40
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L483:
	.align	2
.L482:
	.word	.LC43-(.LPIC68+4)
	.word	.LC37-(.LPIC69+4)
	.word	_ZZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEbE19__PRETTY_FUNCTION__-(.LPIC70+4)
	.fnend
	.size	_ZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEb, .-_ZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEb
	.section	.text._ZN8RefTable10AllocNodesEj,"ax",%progbits
	.align	2
	.global	_ZN8RefTable10AllocNodesEj
	.thumb
	.thumb_func
	.type	_ZN8RefTable10AllocNodesEj, %function
_ZN8RefTable10AllocNodesEj:
	.fnstart
.LFB344:
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
	ldr	r2, [r7]
	mov	r3, r2
	lsls	r3, r3, #2
	add	r3, r3, r2
	lsls	r3, r3, #2
	mov	r0, r3
	bl	_Z12sq_vm_mallocj(PLT)
	mov	r3, r0
	str	r3, [r7, #12]
	ldr	r3, [r7]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	movs	r3, #0
	str	r3, [r7, #16]
	b	.L485
.L488:
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L487
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L487:
	ldr	r3, [r7, #20]
	add	r2, r3, #16
	ldr	r3, [r7, #20]
	str	r2, [r3, #12]
	ldr	r3, [r7, #20]
	adds	r3, r3, #16
	str	r3, [r7, #20]
	ldr	r3, [r7, #16]
	adds	r3, r3, #1
	str	r3, [r7, #16]
.L485:
	ldr	r3, [r7]
	subs	r2, r3, #1
	ldr	r3, [r7, #16]
	cmp	r2, r3
	bhi	.L488
	ldr	r3, [r7, #16]
	lsls	r3, r3, #2
	ldr	r2, [r7, #12]
	add	r3, r3, r2
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L490
	mov	r0, r3
	bl	_ZN11SQObjectPtrC1Ev(PLT)
.L490:
	ldr	r3, [r7, #20]
	movs	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #8]
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r7, #12]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r2, [r7]
	str	r2, [r3]
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8RefTable10AllocNodesEj, .-_ZN8RefTable10AllocNodesEj
	.section	.text._ZN13SQStringTableC2EP13SQSharedState,"ax",%progbits
	.align	2
	.global	_ZN13SQStringTableC2EP13SQSharedState
	.thumb
	.thumb_func
	.type	_ZN13SQStringTableC2EP13SQSharedState, %function
_ZN13SQStringTableC2EP13SQSharedState:
	.fnstart
.LFB346:
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
	ldr	r2, [r7]
	str	r2, [r3, #12]
	ldr	r0, [r7, #4]
	movs	r1, #4
	bl	_ZN13SQStringTable10AllocNodesEi(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQStringTableC2EP13SQSharedState, .-_ZN13SQStringTableC2EP13SQSharedState
	.global	_ZN13SQStringTableC1EP13SQSharedState
	.thumb_set _ZN13SQStringTableC1EP13SQSharedState,_ZN13SQStringTableC2EP13SQSharedState
	.section	.text._ZN13SQStringTableD2Ev,"ax",%progbits
	.align	2
	.global	_ZN13SQStringTableD2Ev
	.thumb
	.thumb_func
	.type	_ZN13SQStringTableD2Ev, %function
_ZN13SQStringTableD2Ev:
	.fnstart
.LFB349:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
	ldr	r3, [r7, #4]
	movs	r2, #0
	str	r2, [r3]
	ldr	r3, [r7, #4]
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQStringTableD2Ev, .-_ZN13SQStringTableD2Ev
	.global	_ZN13SQStringTableD1Ev
	.thumb_set _ZN13SQStringTableD1Ev,_ZN13SQStringTableD2Ev
	.section	.text._ZN13SQStringTable10AllocNodesEi,"ax",%progbits
	.align	2
	.global	_ZN13SQStringTable10AllocNodesEi
	.thumb
	.thumb_func
	.type	_ZN13SQStringTable10AllocNodesEi, %function
_ZN13SQStringTable10AllocNodesEi:
	.fnstart
.LFB351:
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
	ldr	r2, [r7]
	ldr	r3, [r7, #4]
	str	r2, [r3, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	mov	r0, r3
	bl	_Z12sq_vm_mallocj(PLT)
	mov	r2, r0
	ldr	r3, [r7, #4]
	str	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #2
	mov	r0, r2
	movs	r1, #0
	mov	r2, r3
	bl	memset(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQStringTable10AllocNodesEi, .-_ZN13SQStringTable10AllocNodesEi
	.section	.text._ZN13SQStringTable3AddEPKci,"ax",%progbits
	.align	2
	.global	_ZN13SQStringTable3AddEPKci
	.thumb
	.thumb_func
	.type	_ZN13SQStringTable3AddEPKci, %function
_ZN13SQStringTable3AddEPKci:
	.fnstart
.LFB352:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r7, lr}
	.save {r7, lr}
	.pad #32
	sub	sp, sp, #32
	.setfp r7, sp, #0
	add	r7, sp, #0
	str	r0, [r7, #12]
	str	r1, [r7, #8]
	str	r2, [r7, #4]
	ldr	r3, [r7, #4]
	cmp	r3, #0
	bge	.L499
	ldr	r0, [r7, #8]
	bl	strlen(PLT)
	mov	r3, r0
	str	r3, [r7, #4]
.L499:
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #8]
	mov	r1, r3
	bl	_Z8_hashstrPKcj(PLT)
	mov	r3, r0
	str	r3, [r7, #24]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	subs	r2, r3, #1
	ldr	r3, [r7, #24]
	ands	r3, r3, r2
	str	r3, [r7, #20]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #28]
	b	.L500
.L503:
	ldr	r3, [r7, #28]
	ldr	r2, [r3, #20]
	ldr	r3, [r7, #4]
	cmp	r2, r3
	bne	.L501
	ldr	r3, [r7, #28]
	add	r2, r3, #28
	ldr	r3, [r7, #4]
	ldr	r0, [r7, #8]
	mov	r1, r2
	mov	r2, r3
	bl	memcmp(PLT)
	mov	r3, r0
	cmp	r3, #0
	bne	.L501
	ldr	r3, [r7, #28]
	b	.L502
.L501:
	ldr	r3, [r7, #28]
	ldr	r3, [r3, #16]
	str	r3, [r7, #28]
.L500:
	ldr	r3, [r7, #28]
	cmp	r3, #0
	bne	.L503
	ldr	r3, [r7, #4]
	adds	r3, r3, #32
	mov	r0, r3
	bl	_Z12sq_vm_mallocj(PLT)
	mov	r3, r0
	str	r3, [r7, #16]
	ldr	r3, [r7, #16]
	movs	r0, #32
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L505
	mov	r0, r3
	bl	_ZN8SQStringC1Ev(PLT)
.L505:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #12]
	ldr	r3, [r7, #16]
	str	r2, [r3, #12]
	ldr	r3, [r7, #16]
	add	r2, r3, #28
	ldr	r3, [r7, #4]
	mov	r0, r2
	ldr	r1, [r7, #8]
	mov	r2, r3
	bl	memcpy(PLT)
	ldr	r2, [r7, #16]
	ldr	r3, [r7, #4]
	add	r3, r3, r2
	adds	r3, r3, #24
	movs	r2, #0
	strb	r2, [r3, #4]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #4]
	str	r2, [r3, #20]
	ldr	r3, [r7, #16]
	ldr	r2, [r7, #24]
	str	r2, [r3, #24]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #16]
	str	r2, [r3, #16]
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #16]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #8]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L506
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #12]
	mov	r1, r3
	bl	_ZN13SQStringTable6ResizeEi(PLT)
.L506:
	ldr	r3, [r7, #16]
.L502:
	mov	r0, r3
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQStringTable3AddEPKci, .-_ZN13SQStringTable3AddEPKci
	.section	.text._ZN13SQStringTable6ResizeEi,"ax",%progbits
	.align	2
	.global	_ZN13SQStringTable6ResizeEi
	.thumb
	.thumb_func
	.type	_ZN13SQStringTable6ResizeEi, %function
_ZN13SQStringTable6ResizeEi:
	.fnstart
.LFB353:
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
	ldr	r3, [r3, #4]
	str	r3, [r7, #20]
	ldr	r3, [r7, #4]
	ldr	r3, [r3]
	str	r3, [r7, #16]
	ldr	r0, [r7, #4]
	ldr	r1, [r7]
	bl	_ZN13SQStringTable10AllocNodesEi(PLT)
	movs	r3, #0
	str	r3, [r7, #28]
	b	.L508
.L511:
	ldr	r3, [r7, #28]
	lsls	r3, r3, #2
	ldr	r2, [r7, #16]
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #24]
	b	.L509
.L510:
	ldr	r3, [r7, #24]
	ldr	r3, [r3, #16]
	str	r3, [r7, #12]
	ldr	r3, [r7, #24]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r3, r3, #1
	ands	r3, r3, r2
	str	r3, [r7, #8]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r3]
	ldr	r3, [r7, #24]
	str	r2, [r3, #16]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #8]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #24]
	str	r2, [r3]
	ldr	r3, [r7, #12]
	str	r3, [r7, #24]
.L509:
	ldr	r3, [r7, #24]
	cmp	r3, #0
	bne	.L510
	ldr	r3, [r7, #28]
	adds	r3, r3, #1
	str	r3, [r7, #28]
.L508:
	ldr	r2, [r7, #28]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	blt	.L511
	ldr	r3, [r7, #20]
	lsls	r3, r3, #2
	ldr	r0, [r7, #16]
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
	adds	r7, r7, #32
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN13SQStringTable6ResizeEi, .-_ZN13SQStringTable6ResizeEi
	.section	.text._ZN13SQStringTable6RemoveEP8SQString,"ax",%progbits
	.align	2
	.global	_ZN13SQStringTable6RemoveEP8SQString
	.thumb
	.thumb_func
	.type	_ZN13SQStringTable6RemoveEP8SQString, %function
_ZN13SQStringTable6RemoveEP8SQString:
	.fnstart
.LFB354:
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
	str	r3, [r7, #16]
	ldr	r3, [r7]
	ldr	r2, [r3, #24]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	subs	r3, r3, #1
	ands	r3, r3, r2
	str	r3, [r7, #12]
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r3, [r3]
	str	r3, [r7, #20]
	b	.L513
.L518:
	ldr	r2, [r7, #20]
	ldr	r3, [r7]
	cmp	r2, r3
	bne	.L514
	ldr	r3, [r7, #16]
	cmp	r3, #0
	beq	.L515
	ldr	r3, [r7, #20]
	ldr	r2, [r3, #16]
	ldr	r3, [r7, #16]
	str	r2, [r3, #16]
	b	.L516
.L515:
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	lsls	r3, r3, #2
	add	r3, r3, r2
	ldr	r2, [r7, #20]
	ldr	r2, [r2, #16]
	str	r2, [r3]
.L516:
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	subs	r2, r3, #1
	ldr	r3, [r7, #4]
	str	r2, [r3, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #20]
	str	r3, [r7, #8]
	ldr	r3, [r7, #20]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r0, [r7, #20]
	blx	r3
	ldr	r3, [r7, #8]
	adds	r3, r3, #32
	ldr	r0, [r7, #20]
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
	b	.L519
.L514:
	ldr	r3, [r7, #20]
	str	r3, [r7, #16]
	ldr	r3, [r7, #20]
	ldr	r3, [r3, #16]
	str	r3, [r7, #20]
.L513:
	ldr	r3, [r7, #20]
	cmp	r3, #0
	bne	.L518
	ldr	r3, .L520
.LPIC71:
	add	r3, pc
	mov	r0, r3
	ldr	r3, .L520+4
.LPIC72:
	add	r3, pc
	mov	r1, r3
	movw	r2, #654
	ldr	r3, .L520+8
.LPIC73:
	add	r3, pc
	bl	__assert_fail(PLT)
.L519:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
.L521:
	.align	2
.L520:
	.word	.LC39-(.LPIC71+4)
	.word	.LC37-(.LPIC72+4)
	.word	_ZZN13SQStringTable6RemoveEP8SQStringE19__PRETTY_FUNCTION__-(.LPIC73+4)
	.fnend
	.size	_ZN13SQStringTable6RemoveEP8SQString, .-_ZN13SQStringTable6RemoveEP8SQString
	.section	.text._ZN8sqvectorI11SQObjectPtrEC2Ev,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrEC2Ev, %function
_ZN8sqvectorI11SQObjectPtrEC2Ev:
	.fnstart
.LFB361:
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
.LFB364:
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
	beq	.L526
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L527
.L528:
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
.L527:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L528
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #3
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L526:
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
	.section	.text._ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_, %function
_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_:
	.fnstart
.LFB372:
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
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #8]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L531
	ldr	r0, [r7, #12]
	ldr	r1, [r7, #8]
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
.L531:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcs	.L532
	b	.L533
.L536:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	movs	r0, #8
	mov	r1, r3
	bl	_ZnwjPv(PLT)
	mov	r3, r0
	cmp	r3, #0
	beq	.L535
	mov	r0, r3
	ldr	r1, [r7, #4]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
.L535:
	ldr	r3, [r7, #12]
	ldr	r3, [r3, #4]
	adds	r2, r3, #1
	ldr	r3, [r7, #12]
	str	r2, [r3, #4]
.L533:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #8]
	cmp	r2, r3
	bcc	.L536
	b	.L530
.L532:
	ldr	r3, [r7, #8]
	str	r3, [r7, #20]
	b	.L538
.L539:
	ldr	r3, [r7, #12]
	ldr	r2, [r3]
	ldr	r3, [r7, #20]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	ldr	r3, [r7, #20]
	adds	r3, r3, #1
	str	r3, [r7, #20]
.L538:
	ldr	r3, [r7, #12]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #20]
	cmp	r2, r3
	bhi	.L539
	ldr	r3, [r7, #12]
	ldr	r2, [r7, #8]
	str	r2, [r3, #4]
.L530:
	adds	r7, r7, #24
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_, .-_ZN8sqvectorI11SQObjectPtrE6resizeEjRKS0_
	.section	.text._ZN8sqvectorIiEC2Ev,"axG",%progbits,_ZN8sqvectorIiEC5Ev,comdat
	.align	2
	.weak	_ZN8sqvectorIiEC2Ev
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiEC2Ev, %function
_ZN8sqvectorIiEC2Ev:
	.fnstart
.LFB374:
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
.LFB377:
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
	beq	.L544
	movs	r3, #0
	str	r3, [r7, #12]
	b	.L545
.L546:
	ldr	r3, [r7, #12]
	adds	r3, r3, #1
	str	r3, [r7, #12]
.L545:
	ldr	r3, [r7, #4]
	ldr	r2, [r3, #4]
	ldr	r3, [r7, #12]
	cmp	r2, r3
	bhi	.L546
	ldr	r3, [r7, #4]
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #8]
	lsls	r3, r3, #2
	mov	r0, r2
	mov	r1, r3
	bl	_Z10sq_vm_freePvj(PLT)
.L544:
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
	.section	.text._ZNK8sqvectorI11SQObjectPtrE4sizeEv,"axG",%progbits,_ZNK8sqvectorI11SQObjectPtrE4sizeEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI11SQObjectPtrE4sizeEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI11SQObjectPtrE4sizeEv, %function
_ZNK8sqvectorI11SQObjectPtrE4sizeEv:
	.fnstart
.LFB380:
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
	.section	.text._ZN8sqvectorI11SQObjectPtrE9push_backERKS0_,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_, %function
_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_:
	.fnstart
.LFB384:
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
	bhi	.L551
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #1
	ldr	r0, [r7, #4]
	mov	r1, r3
	bl	_ZN8sqvectorI11SQObjectPtrE8_reallocEj(PLT)
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
	mov	r4, r0
	cmp	r4, #0
	beq	.L552
	mov	r0, r4
	ldr	r1, [r7]
	bl	_ZN11SQObjectPtrC1ERKS_(PLT)
	mov	r3, r4
	b	.L553
.L552:
	mov	r3, r4
.L553:
	mov	r0, r3
	adds	r7, r7, #12
	mov	sp, r7
	@ sp needed
	pop	{r4, r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_, .-_ZN8sqvectorI11SQObjectPtrE9push_backERKS0_
	.section	.text._ZN8sqvectorI11SQObjectPtrE8pop_backEv,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE8pop_backEv,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE8pop_backEv
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE8pop_backEv, %function
_ZN8sqvectorI11SQObjectPtrE8pop_backEv:
	.fnstart
.LFB386:
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
	ldr	r2, [r3]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	lsls	r3, r3, #3
	add	r3, r3, r2
	mov	r0, r3
	bl	_ZN11SQObjectPtrD1Ev(PLT)
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorI11SQObjectPtrE8pop_backEv, .-_ZN8sqvectorI11SQObjectPtrE8pop_backEv
	.section	.text._ZN8sqvectorIiE9push_backERKi,"axG",%progbits,_ZN8sqvectorIiE9push_backERKi,comdat
	.align	2
	.weak	_ZN8sqvectorIiE9push_backERKi
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiE9push_backERKi, %function
_ZN8sqvectorIiE9push_backERKi:
	.fnstart
.LFB393:
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
	bl	_ZN8sqvectorIiE8_reallocEj(PLT)
.L557:
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
	beq	.L559
	ldr	r2, [r7]
	ldr	r2, [r2]
	str	r2, [r3]
.L559:
	mov	r0, r3
	adds	r7, r7, #8
	mov	sp, r7
	@ sp needed
	pop	{r7, pc}
	.fnend
	.size	_ZN8sqvectorIiE9push_backERKi, .-_ZN8sqvectorIiE9push_backERKi
	.section	.text._ZNK8sqvectorI11SQObjectPtrE4backEv,"axG",%progbits,_ZNK8sqvectorI11SQObjectPtrE4backEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI11SQObjectPtrE4backEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI11SQObjectPtrE4backEv, %function
_ZNK8sqvectorI11SQObjectPtrE4backEv:
	.fnstart
.LFB394:
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
	add	r3, r3, #536870912
	subs	r3, r3, #1
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
	.size	_ZNK8sqvectorI11SQObjectPtrE4backEv, .-_ZNK8sqvectorI11SQObjectPtrE4backEv
	.section	.text._ZNK8sqvectorI11SQObjectPtrE5emptyEv,"axG",%progbits,_ZNK8sqvectorI11SQObjectPtrE5emptyEv,comdat
	.align	2
	.weak	_ZNK8sqvectorI11SQObjectPtrE5emptyEv
	.thumb
	.thumb_func
	.type	_ZNK8sqvectorI11SQObjectPtrE5emptyEv, %function
_ZNK8sqvectorI11SQObjectPtrE5emptyEv:
	.fnstart
.LFB395:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	push	{r7}
	sub	sp, sp, #12
	add	r7, sp, #0
	str	r0, [r7, #4]
	ldr	r3, [r7, #4]
	ldr	r3, [r3, #4]
	cmp	r3, #0
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
	.size	_ZNK8sqvectorI11SQObjectPtrE5emptyEv, .-_ZNK8sqvectorI11SQObjectPtrE5emptyEv
	.section	.text._ZN8sqvectorI11SQObjectPtrE8_reallocEj,"axG",%progbits,_ZN8sqvectorI11SQObjectPtrE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorI11SQObjectPtrE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorI11SQObjectPtrE8_reallocEj, %function
_ZN8sqvectorI11SQObjectPtrE8_reallocEj:
	.fnstart
.LFB397:
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
	beq	.L566
	ldr	r3, [r7]
	b	.L567
.L566:
	movs	r3, #4
.L567:
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
	.section	.text._ZN8sqvectorIiE8_reallocEj,"axG",%progbits,_ZN8sqvectorIiE8_reallocEj,comdat
	.align	2
	.weak	_ZN8sqvectorIiE8_reallocEj
	.thumb
	.thumb_func
	.type	_ZN8sqvectorIiE8_reallocEj, %function
_ZN8sqvectorIiE8_reallocEj:
	.fnstart
.LFB399:
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
	beq	.L569
	ldr	r3, [r7]
	b	.L570
.L569:
	movs	r3, #4
.L570:
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
	.weak	_ZTV13SQCollectable
	.section	.data.rel.ro._ZTV13SQCollectable,"awG",%progbits,_ZTV13SQCollectable,comdat
	.align	3
	.type	_ZTV13SQCollectable, %object
	.size	_ZTV13SQCollectable, 32
_ZTV13SQCollectable:
	.word	0
	.word	_ZTI13SQCollectable
	.word	_ZN13SQCollectableD1Ev
	.word	_ZN13SQCollectableD0Ev
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.weak	_ZTS13SQCollectable
	.section	.rodata._ZTS13SQCollectable,"aG",%progbits,_ZTS13SQCollectable,comdat
	.align	2
	.type	_ZTS13SQCollectable, %object
	.size	_ZTS13SQCollectable, 16
_ZTS13SQCollectable:
	.ascii	"13SQCollectable\000"
	.weak	_ZTI13SQCollectable
	.section	.data.rel.ro._ZTI13SQCollectable,"awG",%progbits,_ZTI13SQCollectable,comdat
	.align	2
	.type	_ZTI13SQCollectable, %object
	.size	_ZTI13SQCollectable, 12
_ZTI13SQCollectable:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS13SQCollectable
	.word	_ZTI12SQRefCounted
	.section	.rodata._ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__, 36
_ZZN11SQObjectPtrC1EP8SQStringE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQString*)\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP15SQNativeClosureE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP15SQNativeClosureE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP15SQNativeClosureE19__PRETTY_FUNCTION__, 43
_ZZN11SQObjectPtrC1EP15SQNativeClosureE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQNativeClosure*)\000"
	.section	.rodata._ZZN13SQSharedStateD1EvE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN13SQSharedStateD1EvE19__PRETTY_FUNCTION__, %object
	.size	_ZZN13SQSharedStateD1EvE19__PRETTY_FUNCTION__, 32
_ZZN13SQSharedStateD1EvE19__PRETTY_FUNCTION__:
	.ascii	"SQSharedState::~SQSharedState()\000"
	.section	.rodata._ZZN13SQSharedState20ResurrectUnreachableEP4SQVME19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN13SQSharedState20ResurrectUnreachableEP4SQVME19__PRETTY_FUNCTION__, %object
	.size	_ZZN13SQSharedState20ResurrectUnreachableEP4SQVME19__PRETTY_FUNCTION__, 53
_ZZN13SQSharedState20ResurrectUnreachableEP4SQVME19__PRETTY_FUNCTION__:
	.ascii	"SQInteger SQSharedState::ResurrectUnreachable(SQVM*"
	.ascii	")\000"
	.section	.rodata._ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__, %object
	.size	_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__, 35
_ZZN11SQObjectPtrC1EP7SQArrayE19__PRETTY_FUNCTION__:
	.ascii	"SQObjectPtr::SQObjectPtr(SQArray*)\000"
	.section	.rodata._ZZN8RefTable7ReleaseER11tagSQObjectE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN8RefTable7ReleaseER11tagSQObjectE19__PRETTY_FUNCTION__, %object
	.size	_ZZN8RefTable7ReleaseER11tagSQObjectE19__PRETTY_FUNCTION__, 36
_ZZN8RefTable7ReleaseER11tagSQObjectE19__PRETTY_FUNCTION__:
	.ascii	"SQBool RefTable::Release(SQObject&)\000"
	.section	.rodata._ZZN8RefTable6ResizeEjE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN8RefTable6ResizeEjE19__PRETTY_FUNCTION__, %object
	.size	_ZZN8RefTable6ResizeEjE19__PRETTY_FUNCTION__, 41
_ZZN8RefTable6ResizeEjE19__PRETTY_FUNCTION__:
	.ascii	"void RefTable::Resize(SQUnsignedInteger)\000"
	.section	.rodata._ZZN8RefTable3AddEjR11tagSQObjectE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN8RefTable3AddEjR11tagSQObjectE19__PRETTY_FUNCTION__, %object
	.size	_ZZN8RefTable3AddEjR11tagSQObjectE19__PRETTY_FUNCTION__, 52
_ZZN8RefTable3AddEjR11tagSQObjectE19__PRETTY_FUNCTION__:
	.ascii	"RefTable::RefNode* RefTable::Add(SQHash, SQObject&)"
	.ascii	"\000"
	.section	.rodata._ZZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEbE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEbE19__PRETTY_FUNCTION__, %object
	.size	_ZZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEbE19__PRETTY_FUNCTION__, 80
_ZZN8RefTable3GetER11tagSQObjectRjPPNS_7RefNodeEbE19__PRETTY_FUNCTION__:
	.ascii	"RefTable::RefNode* RefTable::Get(SQObject&, SQHash&"
	.ascii	", RefTable::RefNode**, bool)\000"
	.section	.rodata._ZZN13SQStringTable6RemoveEP8SQStringE19__PRETTY_FUNCTION__,"a",%progbits
	.align	2
	.type	_ZZN13SQStringTable6RemoveEP8SQStringE19__PRETTY_FUNCTION__, %object
	.size	_ZZN13SQStringTable6RemoveEP8SQStringE19__PRETTY_FUNCTION__, 38
_ZZN13SQStringTable6RemoveEP8SQStringE19__PRETTY_FUNCTION__:
	.ascii	"void SQStringTable::Remove(SQString*)\000"
	.ident	"GCC: (crosstool-NG linaro-1.13.1-4.8-2014.04 - Linaro GCC 4.8-2014.04) 4.8.3 20140401 (prerelease)"
	.section	.note.GNU-stack,"",%progbits
